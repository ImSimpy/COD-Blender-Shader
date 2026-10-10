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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 07bf925f982ef89927808024bfd46b76
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
;                                   sampler      NA          NA      S7             s6     1
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
;                                   texture     f32          2d     T18             t1     1
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t57,space2     1
;                                   texture    byte         r/o     T21     t69,space1     1
;                                   texture     u32          2d     T22     t56,space2     1
;                                   texture     f32     2darray     T23     t35,space2     1
;                                   texture     f32          2d     T24     t34,space2     1
;                                   texture     f32          3d     T25     t31,space2     1
;                                   texture     f32          2d     T26      t2,space2     1
;                                   texture     f32          2d     T27      t3,space2     1
;                                   texture     f32          2d     T28      t4,space2     1
;                                   textureunorm_f32     2darray     T29     t80,space2     1
;                                   texture    byte         r/o     T30     t67,space1     1
;                                   texture     f32          2d     T31      t7,space2     1
;                                   texture     f32          2d     T32      t6,space2     1
;                                   texture     f32          2d     T33      t5,space2     1
;                                   texture     f32          2d     T34     t38,space2     1
;                                   texture     f32          1d     T35     t30,space2     1
;                                   texture     f32          3d     T36     t44,space2     1
;                                   texture     f32          3d     T37     t45,space2     1
;                                   texture     f32     2darray     T38     t47,space2     1
;                                   textureunorm_f32     2darray     T39     t85,space2     1
;                                   texture     f32          2d     T40     t83,space2     1
;                                   texture     f32          2d     T41     t86,space2     1
;
;
; ViewId state:
;
; Number of inputs: 44, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 7, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = alloca [4 x i32], align 4
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = alloca [12 x float], align 4
  %89 = alloca [12 x float], align 4
  %90 = alloca [4 x float], align 4
  %91 = alloca [4 x float], align 4
  %92 = alloca [4 x float], align 4
  %93 = alloca [3 x float], align 4
  %94 = alloca [3 x float], align 4
  %95 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %96 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = fmul fast float %98, %84
  %100 = fmul fast float %98, %85
  %101 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %102 = bitcast float %101 to i32
  %103 = ashr i32 %102, 1
  %104 = sub nsw i32 1597250115, %103
  %105 = bitcast i32 %104 to float
  %106 = fmul fast float %105, %75
  %107 = fmul fast float %105, %76
  %108 = fmul fast float %105, %77
  %109 = fmul fast float %76, %73
  %110 = fmul fast float %77, %72
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %77, %71
  %113 = fmul fast float %75, %73
  %114 = fsub fast float %112, %113
  %115 = fmul fast float %75, %72
  %116 = fmul fast float %76, %71
  %117 = fsub fast float %115, %116
  %118 = fmul fast float %111, %74
  %119 = fmul fast float %114, %74
  %120 = fmul fast float %117, %74
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %124 = fmul fast float %99, 2.000000e+00
  %125 = fmul fast float %124, %122
  %126 = fmul fast float %100, 2.000000e+00
  %127 = fmul fast float %126, %123
  %128 = fsub fast float 1.000000e+00, %125
  %129 = fsub fast float 1.000000e+00, %127
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fmul fast float %128, %131
  %135 = fmul fast float %128, %132
  %136 = fmul fast float %128, %133
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fmul fast float %129, %138
  %142 = fmul fast float %129, %139
  %143 = fmul fast float %129, %140
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = fadd fast float %141, %145
  %149 = fadd fast float %148, %134
  %150 = fadd fast float %142, %146
  %151 = fadd fast float %150, %135
  %152 = fadd fast float %143, %147
  %153 = fadd fast float %152, %136
  %154 = fmul fast float %149, %87
  %155 = fmul fast float %151, %87
  %156 = fmul fast float %153, %87
  %157 = add i32 %50, 360
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = extractvalue %dx.types.ResRet.i32 %158, 1
  %161 = extractvalue %dx.types.ResRet.i32 %158, 2
  %162 = extractvalue %dx.types.ResRet.i32 %158, 3
  %163 = bitcast i32 %159 to float
  %164 = bitcast i32 %160 to float
  %165 = bitcast i32 %161 to float
  %166 = bitcast i32 %162 to float
  %167 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %168 = call float @dx.op.unary.f32(i32 25, float %167)  ; Rsqrt(value)
  %169 = fmul fast float %168, %106
  %170 = fmul fast float %168, %107
  %171 = fmul fast float %168, %108
  %172 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %173 = call float @dx.op.unary.f32(i32 25, float %172)  ; Rsqrt(value)
  %174 = fmul fast float %173, %154
  %175 = fmul fast float %173, %155
  %176 = fmul fast float %173, %156
  %177 = call float @dx.op.dot3.f32(i32 55, float %174, float %175, float %176, float %169, float %170, float %171)  ; Dot3(ax,ay,az,bx,by,bz)
  %178 = fmul fast float %177, %177
  %179 = fmul fast float %178, %165
  %180 = fadd fast float %179, %166
  %181 = call float @dx.op.unary.f32(i32 7, float %180)  ; Saturate(value)
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 3
  %184 = fmul fast float %183, %172
  %185 = fsub fast float %163, %184
  %186 = fmul fast float %185, %164
  %187 = call float @dx.op.unary.f32(i32 7, float %186)  ; Saturate(value)
  %188 = fmul fast float %187, %181
  %189 = fmul fast float %99, 5.000000e-01
  %190 = fmul fast float %100, 5.000000e-01
  %191 = fptosi float %189 to i32
  %192 = fptosi float %190 to i32
  %193 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %191, i32 %192, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = lshr i32 %194, 18
  %196 = uitofp i32 %195 to float
  %197 = fmul fast float %196, 0x3F4C00EBA0000000
  %198 = call float @dx.op.unary.f32(i32 21, float %197)  ; Exp(value)
  %199 = fadd fast float %198, -1.000000e+00
  %200 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %20, i32 0)  ; GetDimensions(handle,mipLevel)
  %201 = extractvalue %dx.types.Dimensions %200, 0
  %202 = sitofp i32 %201 to float
  %203 = extractvalue %dx.types.Dimensions %200, 1
  %204 = sitofp i32 %203 to float
  %205 = fcmp fast oge float %189, %202
  %206 = fcmp fast oge float %190, %204
  %207 = or i1 %205, %206
  %208 = select i1 %207, float 0x4197782600000000, float %199
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %211 = extractvalue %dx.types.CBufRet.f32 %209, 3
  %212 = fmul fast float %210, %99
  %213 = fmul fast float %211, %100
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = and i32 %215, 114688
  %217 = icmp ne i32 %216, 0
  %218 = select i1 %217, float %212, float 0.000000e+00
  %219 = select i1 %217, float %213, float 0.000000e+00
  %220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %45, float %218, float %219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = fmul fast float %221, 2.550000e+02
  %223 = fptoui float %222 to i32
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.i32 %225, 3
  %227 = and i32 %226, 3
  %228 = icmp ne i32 %227, 0
  %229 = and i32 %226, 4
  %230 = icmp ne i32 %229, 0
  %231 = and i1 %228, %230
  br i1 %231, label %232, label %243

; <label>:232                                     ; preds = %0
  %233 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %234 = fmul fast float %233, %100
  %235 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %236 = fmul fast float %235, %99
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %44, float %236, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fsub fast float 1.000000e+00, %238
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %242 = fcmp fast olt float %239, %241
  br label %246

; <label>:243                                     ; preds = %0
  %244 = icmp eq i32 %229, 0
  %245 = and i1 %228, %244
  br label %246

; <label>:246                                     ; preds = %243, %232
  %247 = phi i1 [ %242, %232 ], [ %245, %243 ]
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %250 = fmul fast float %249, 0x3FE3C6EF40000000
  %251 = frem fast float %99, 2.560000e+02
  %252 = frem fast float %100, 2.560000e+02
  %253 = fptoui float %251 to i32
  %254 = fptoui float %252 to i32
  %255 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %253, i32 %254, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = extractvalue %dx.types.ResRet.f32 %255, 1
  %258 = fadd fast float %256, %250
  %259 = fadd fast float %257, %250
  %260 = call float @dx.op.unary.f32(i32 22, float %258)  ; Frc(value)
  %261 = call float @dx.op.unary.f32(i32 22, float %259)  ; Frc(value)
  %262 = add i32 %50, 156
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = shl i32 %264, 4
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %264, 7
  %269 = and i32 %268, 32752
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %264, 22
  %272 = shl nuw nsw i32 %271, 5
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = add i32 %50, 216
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = lshr i32 %276, 8
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = lshr i32 %276, 16
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = add i32 %50, 36
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %290, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %50, 288
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = fmul fast float %299, 0x3F50624DE0000000
  %303 = fmul fast float %301, 0x3F50624DE0000000
  %304 = add i32 %50, 172
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = shl i32 %306, 4
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %306, 7
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %306, 22
  %314 = shl nuw nsw i32 %313, 5
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %50, 232
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = lshr i32 %318, 8
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %318, 16
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = add i32 %50, 52
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %50, 304
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = fmul fast float %341, 0x3F50624DE0000000
  %345 = fmul fast float %343, 0x3F50624DE0000000
  %346 = add i32 %50, 188
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = shl i32 %348, 4
  %350 = and i32 %349, 32752
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %348, 7
  %353 = and i32 %352, 32752
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %348, 22
  %356 = shl nuw nsw i32 %355, 5
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = add i32 %50, 248
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = lshr i32 %360, 8
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F70101020000000
  %368 = lshr i32 %360, 16
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = add i32 %50, 68
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 65535
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %374, 16
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = add i32 %50, 320
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %381, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = fmul fast float %383, 0x3F50624DE0000000
  %387 = fmul fast float %385, 0x3F50624DE0000000
  %388 = add i32 %50, 204
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = shl i32 %390, 4
  %392 = and i32 %391, 32752
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %390, 7
  %395 = and i32 %394, 32752
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %390, 22
  %398 = shl nuw nsw i32 %397, 5
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = add i32 %50, 264
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 255
  %404 = uitofp i32 %403 to float
  %405 = fmul fast float %404, 0x3F70101020000000
  %406 = lshr i32 %402, 8
  %407 = and i32 %406, 255
  %408 = uitofp i32 %407 to float
  %409 = fmul fast float %408, 0x3F70101020000000
  %410 = lshr i32 %402, 16
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F70101020000000
  %414 = add i32 %50, 84
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 65535
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = lshr i32 %416, 16
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = add i32 %50, 336
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = fmul fast float %425, 0x3F50624DE0000000
  %429 = fmul fast float %427, 0x3F50624DE0000000
  %430 = add i32 %50, 348
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 32
  %434 = icmp eq i32 %433, 0
  %435 = and i32 %432, 64
  %436 = icmp eq i32 %435, 0
  %437 = and i32 %432, 128
  %438 = icmp eq i32 %437, 0
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 2
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %458, label %443

; <label>:443                                     ; preds = %246
  %444 = add i32 %50, 556
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = add i32 %446, 0
  %448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %447, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %449 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %448, %dx.types.Handle %96, float %78, float %79, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = extractvalue %dx.types.ResRet.f32 %449, 3
  %454 = fmul fast float %453, %80
  %455 = fmul fast float %450, %81
  %456 = fmul fast float %451, %82
  %457 = fmul fast float %452, %83
  br label %458

; <label>:458                                     ; preds = %443, %246
  %459 = phi float [ %83, %246 ], [ %457, %443 ]
  %460 = phi float [ %82, %246 ], [ %456, %443 ]
  %461 = phi float [ %81, %246 ], [ %455, %443 ]
  %462 = phi float [ %80, %246 ], [ %454, %443 ]
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = and i32 %464, 2
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %486, label %467

; <label>:467                                     ; preds = %458
  %468 = add i32 %50, 44
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = and i32 %470, 1
  %472 = icmp ne i32 %471, 0
  %473 = select i1 %472, float %461, float 1.000000e+00
  %474 = add i32 %50, 60
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 1
  %478 = icmp ne i32 %477, 0
  %479 = select i1 %478, float %460, float 1.000000e+00
  %480 = add i32 %50, 76
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 1
  %484 = icmp ne i32 %483, 0
  %485 = select i1 %484, float %459, float 1.000000e+00
  br label %486

; <label>:486                                     ; preds = %467, %458
  %487 = phi float [ %459, %458 ], [ %485, %467 ]
  %488 = phi float [ %460, %458 ], [ %479, %467 ]
  %489 = phi float [ %461, %458 ], [ %473, %467 ]
  %490 = lshr i32 %464, 20
  %491 = and i32 %490, 3
  %492 = add nuw nsw i32 %491, 1
  %493 = add i32 %50, 24
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = add i32 %50, 28
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = or i32 %498, %495
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %1261, label %501

; <label>:501                                     ; preds = %486
  %502 = and i32 %495, 262144
  %503 = icmp ne i32 %502, 0
  %504 = select i1 %503, float %53, float 1.000000e+00
  %505 = select i1 %503, float %54, float 0.000000e+00
  %506 = select i1 %503, float %55, float 0.000000e+00
  %507 = select i1 %503, float %56, float 1.000000e+00
  %508 = select i1 %503, float %57, float %78
  %509 = select i1 %503, float %58, float %79
  %510 = add i32 %50, 284
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = lshr i32 %512, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = fmul fast float %514, 0x3F50624DE0000000
  %516 = add i32 %50, 88
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = lshr i32 %518, 16
  %520 = and i32 %519, 255
  %521 = lshr i32 %518, 24
  %522 = add i32 %50, 292
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = and i32 %524, 65535
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = lshr i32 %524, 16
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = add i32 %50, 32
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %529, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = lshr i32 %531, 22
  %533 = shl nuw nsw i32 %532, 5
  %534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %533)  ; LegacyF16ToF32(value)
  %535 = shl i32 %531, 4
  %536 = and i32 %535, 32752
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = lshr i32 %531, 7
  %539 = and i32 %538, 32752
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 3
  %543 = fmul fast float %542, 1.000000e+03
  %544 = fmul fast float %302, %543
  %545 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %546 = fadd fast float %545, %292
  %547 = fmul fast float %303, %543
  %548 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %549 = fadd fast float %548, %294
  %550 = fmul fast float %515, %543
  %551 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %552 = fmul fast float %551, 0x401921FB60000000
  %553 = fadd fast float %552, %534
  %554 = call float @dx.op.unary.f32(i32 13, float %553)  ; Sin(value)
  %555 = call float @dx.op.unary.f32(i32 12, float %553)  ; Cos(value)
  %556 = fsub fast float -0.000000e+00, %554
  %557 = fadd fast float %508, -5.000000e-01
  %558 = fadd fast float %509, -5.000000e-01
  %559 = fmul fast float %526, %557
  %560 = fmul fast float %528, %558
  %561 = fadd fast float %559, 5.000000e-01
  %562 = fadd fast float %560, 5.000000e-01
  %563 = fmul fast float %537, %561
  %564 = fmul fast float %540, %562
  %565 = fmul fast float %555, %563
  %566 = call float @dx.op.tertiary.f32(i32 46, float %556, float %564, float %565)  ; FMad(a,b,c)
  %567 = fmul fast float %554, %563
  %568 = call float @dx.op.tertiary.f32(i32 46, float %555, float %564, float %567)  ; FMad(a,b,c)
  %569 = fadd fast float %546, %566
  %570 = fadd fast float %549, %568
  %571 = icmp ugt i32 %520, 1
  %572 = icmp ugt i32 %518, 33554431
  %573 = or i1 %572, %571
  br i1 %573, label %574, label %599

; <label>:574                                     ; preds = %501
  %575 = add i32 %50, 228
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = lshr i32 %577, 16
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = fmul fast float %542, %579
  %581 = call float @dx.op.unary.f32(i32 22, float %580)  ; Frc(value)
  %582 = mul nuw nsw i32 %520, %521
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %581, %583
  %585 = call float @dx.op.unary.f32(i32 27, float %584)  ; Round_ni(value)
  %586 = fptoui float %585 to i32
  %587 = urem i32 %586, %520
  %588 = udiv i32 %586, %521
  %589 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %590 = call float @dx.op.unary.f32(i32 22, float %570)  ; Frc(value)
  %591 = uitofp i32 %587 to float
  %592 = uitofp i32 %588 to float
  %593 = fadd fast float %589, %591
  %594 = fadd fast float %590, %592
  %595 = uitofp i32 %520 to float
  %596 = uitofp i32 %521 to float
  %597 = fdiv fast float %593, %595
  %598 = fdiv fast float %594, %596
  br label %599

; <label>:599                                     ; preds = %574, %501
  %600 = phi float [ %597, %574 ], [ %569, %501 ]
  %601 = phi float [ %598, %574 ], [ %570, %501 ]
  %602 = and i32 %495, 16777216
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %713, label %604

; <label>:604                                     ; preds = %599
  %605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %606 = extractvalue %dx.types.CBufRet.f32 %605, 0
  %607 = extractvalue %dx.types.CBufRet.f32 %605, 1
  %608 = extractvalue %dx.types.CBufRet.f32 %605, 2
  %609 = fadd fast float %606, %154
  %610 = fadd fast float %607, %155
  %611 = fadd fast float %608, %156
  %612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %613 = extractvalue %dx.types.CBufRet.f32 %612, 0
  %614 = call float @dx.op.unary.f32(i32 7, float %613)  ; Saturate(value)
  %615 = icmp eq i32 %51, 65535
  br i1 %615, label %710, label %616

; <label>:616                                     ; preds = %604
  %617 = lshr i32 %51, 1
  %618 = shl i32 %617, 2
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = and i32 %51, 1
  %622 = icmp ne i32 %621, 0
  %623 = lshr i32 %620, 16
  %624 = and i32 %620, 65535
  %625 = select i1 %622, i32 %623, i32 %624
  %626 = icmp eq i32 %625, 65535
  br i1 %626, label %706, label %627

; <label>:627                                     ; preds = %616
  %628 = mul nuw nsw i32 %625, 40
  %629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  %631 = extractvalue %dx.types.ResRet.f32 %629, 1
  %632 = extractvalue %dx.types.ResRet.f32 %629, 2
  %633 = add nuw nsw i32 %628, 12
  %634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  %636 = extractvalue %dx.types.ResRet.f32 %634, 1
  %637 = extractvalue %dx.types.ResRet.f32 %634, 2
  %638 = add nuw nsw i32 %628, 24
  %639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = add nuw nsw i32 %628, 36
  %644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = fsub fast float %609, %630
  %647 = fsub fast float %610, %631
  %648 = fsub fast float %611, %632
  %649 = fmul fast float %645, %646
  %650 = fmul fast float %645, %647
  %651 = fmul fast float %645, %648
  %652 = call float @dx.op.unary.f32(i32 27, float %649)  ; Round_ni(value)
  %653 = call float @dx.op.unary.f32(i32 27, float %650)  ; Round_ni(value)
  %654 = call float @dx.op.unary.f32(i32 27, float %651)  ; Round_ni(value)
  %655 = fadd fast float %652, 5.000000e-01
  %656 = fadd fast float %653, 5.000000e-01
  %657 = fadd fast float %654, 5.000000e-01
  %658 = fmul fast float %655, %635
  %659 = fmul fast float %656, %636
  %660 = fmul fast float %657, %637
  %661 = shl i32 %51, 2
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = add i32 %663, 0
  %665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %666 = call float @dx.op.unary.f32(i32 22, float %658)  ; Frc(value)
  %667 = call float @dx.op.unary.f32(i32 22, float %659)  ; Frc(value)
  %668 = call float @dx.op.unary.f32(i32 22, float %660)  ; Frc(value)
  %669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %665, %dx.types.Handle %45, float %666, float %667, float %668, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = extractvalue %dx.types.ResRet.f32 %669, 1
  %672 = extractvalue %dx.types.ResRet.f32 %669, 2
  %673 = fmul fast float %670, 1.023000e+03
  %674 = fmul fast float %671, 1.023000e+03
  %675 = fmul fast float %672, 1.023000e+03
  %676 = fadd fast float %673, 5.000000e-01
  %677 = fadd fast float %674, 5.000000e-01
  %678 = fadd fast float %675, 5.000000e-01
  %679 = call float @dx.op.unary.f32(i32 27, float %676)  ; Round_ni(value)
  %680 = call float @dx.op.unary.f32(i32 27, float %677)  ; Round_ni(value)
  %681 = call float @dx.op.unary.f32(i32 27, float %678)  ; Round_ni(value)
  %682 = fsub fast float %649, %652
  %683 = fsub fast float %650, %653
  %684 = fsub fast float %651, %654
  %685 = fmul fast float %682, 7.500000e-01
  %686 = fmul fast float %683, 7.500000e-01
  %687 = fmul fast float %684, 7.500000e-01
  %688 = fadd fast float %652, 1.250000e-01
  %689 = fadd fast float %688, %685
  %690 = fadd fast float %689, %679
  %691 = fadd fast float %653, 1.250000e-01
  %692 = fadd fast float %691, %686
  %693 = fadd fast float %692, %680
  %694 = fadd fast float %654, 1.250000e-01
  %695 = fadd fast float %694, %687
  %696 = fadd fast float %695, %681
  %697 = fmul fast float %690, %640
  %698 = fmul fast float %693, %641
  %699 = fmul fast float %696, %642
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = add i32 %701, 0
  %703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %703, %dx.types.Handle %43, float %697, float %698, float %699, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  br label %706

; <label>:706                                     ; preds = %627, %616
  %707 = phi float [ %705, %627 ], [ -1.000000e+00, %616 ]
  %708 = fadd fast float %707, %614
  %709 = call float @dx.op.unary.f32(i32 7, float %708)  ; Saturate(value)
  br label %710

; <label>:710                                     ; preds = %706, %604
  %711 = phi float [ %709, %706 ], [ %614, %604 ]
  %712 = fmul fast float %711, %462
  br label %713

; <label>:713                                     ; preds = %710, %599
  %714 = phi float [ %712, %710 ], [ %462, %599 ]
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = and i32 %716, 256
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %765, label %719

; <label>:719                                     ; preds = %713
  %720 = add i32 %50, 488
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = add i32 %722, 0
  %724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %723, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %725 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %724, %dx.types.Handle %96, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %726 = extractvalue %dx.types.ResRet.f32 %725, 0
  %727 = add i32 %50, 100
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = shl i32 %729, 4
  %731 = and i32 %730, 32752
  %732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %731)  ; LegacyF16ToF32(value)
  %733 = lshr i32 %729, 7
  %734 = and i32 %733, 32752
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = fsub fast float 1.000000e+00, %714
  %737 = call float @dx.op.binary.f32(i32 35, float %736, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %738 = bitcast float %714 to i32
  %739 = sitofp i32 %738 to float
  %740 = fadd fast float %739, 0xC1CFBF8940000000
  %741 = fmul fast float %735, %740
  %742 = fadd fast float %741, 0x41CFBF8940000000
  %743 = fptosi float %742 to i32
  %744 = bitcast i32 %743 to float
  %745 = bitcast float %737 to i32
  %746 = sitofp i32 %745 to float
  %747 = fadd fast float %746, 0xC1CFBF8940000000
  %748 = fmul fast float %747, %735
  %749 = fadd fast float %748, 0x41CFBF8940000000
  %750 = fptosi float %749 to i32
  %751 = bitcast i32 %750 to float
  %752 = fmul fast float %744, %732
  %753 = fmul fast float %751, %732
  %754 = fsub fast float %737, %752
  %755 = fadd fast float %753, %737
  %756 = call float @dx.op.unary.f32(i32 7, float %754)  ; Saturate(value)
  %757 = call float @dx.op.unary.f32(i32 7, float %755)  ; Saturate(value)
  %758 = fsub fast float %726, %756
  %759 = fsub fast float %757, %756
  %760 = bitcast float %759 to i32
  %761 = sub nsw i32 2129859010, %760
  %762 = bitcast i32 %761 to float
  %763 = fmul fast float %762, %758
  %764 = call float @dx.op.unary.f32(i32 7, float %763)  ; Saturate(value)
  br label %765

; <label>:765                                     ; preds = %719, %713
  %766 = phi float [ %764, %719 ], [ %714, %713 ]
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = and i32 %768, 128
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %787, label %771

; <label>:771                                     ; preds = %765
  %772 = add i32 %50, 472
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = add i32 %774, 0
  %776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %775, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %777 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %776, %dx.types.Handle %96, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = and i32 %780, 524288
  %782 = icmp ne i32 %781, 0
  %783 = fcmp fast ogt float %778, 0x3FE0101020000000
  %784 = select i1 %783, float 1.000000e+00, float 0.000000e+00
  %785 = select i1 %782, float %784, float %778
  %786 = fmul fast float %785, %766
  br label %787

; <label>:787                                     ; preds = %771, %765
  %788 = phi float [ %786, %771 ], [ %766, %765 ]
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = and i32 %790, 16
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %991, label %793

; <label>:793                                     ; preds = %787
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = add i32 %50, 424
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = add i32 %798, 0
  %800 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %799, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %801 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %800, %dx.types.Handle %95, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = extractvalue %dx.types.ResRet.f32 %801, 1
  %804 = extractvalue %dx.types.ResRet.f32 %801, 2
  %805 = extractvalue %dx.types.ResRet.f32 %801, 3
  %806 = and i32 %795, 255
  %807 = uitofp i32 %806 to float
  %808 = lshr i32 %795, 8
  %809 = and i32 %808, 255
  %810 = uitofp i32 %809 to float
  %811 = fmul fast float %805, %807
  %812 = fadd fast float %811, %810
  %813 = fmul fast float %812, 0x3F70101000000000
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 512
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %826, label %818

; <label>:818                                     ; preds = %793
  %819 = add i32 %50, 508
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = add i32 %821, 0
  %823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %824 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %823, %dx.types.Handle %96, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  br label %826

; <label>:826                                     ; preds = %818, %793
  %827 = phi float [ %825, %818 ], [ 1.000000e+00, %793 ]
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = and i32 %829, 33554432
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %938, label %832

; <label>:832                                     ; preds = %826
  %833 = add i32 %50, 224
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = and i32 %835, 65535
  %837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %836)  ; LegacyF16ToF32(value)
  %838 = lshr i32 %835, 16
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = add i32 %50, 228
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %840, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 65535
  %844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %843)  ; LegacyF16ToF32(value)
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = lshr i32 %846, 24
  %848 = uitofp i32 %847 to float
  %849 = fmul fast float %848, 0x3F70101020000000
  %850 = and i32 %846, 255
  %851 = uitofp i32 %850 to float
  %852 = fmul fast float %851, 0x3F70101020000000
  %853 = lshr i32 %846, 8
  %854 = and i32 %853, 255
  %855 = uitofp i32 %854 to float
  %856 = fmul fast float %855, 0x3F70101020000000
  %857 = lshr i32 %846, 16
  %858 = and i32 %857, 255
  %859 = uitofp i32 %858 to float
  %860 = fmul fast float %859, 0x3F70101020000000
  %861 = add i32 %50, 220
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %861, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = lshr i32 %863, 24
  %865 = uitofp i32 %864 to float
  %866 = fmul fast float %865, 0x3F70101020000000
  %867 = and i32 %863, 255
  %868 = uitofp i32 %867 to float
  %869 = fmul fast float %868, 0x3F70101020000000
  %870 = lshr i32 %863, 8
  %871 = and i32 %870, 255
  %872 = uitofp i32 %871 to float
  %873 = fmul fast float %872, 0x3F70101020000000
  %874 = lshr i32 %863, 16
  %875 = and i32 %874, 255
  %876 = uitofp i32 %875 to float
  %877 = fmul fast float %876, 0x3F70101020000000
  %878 = bitcast float %802 to i32
  %879 = ashr i32 %878, 1
  %880 = sub nsw i32 1597463174, %879
  %881 = bitcast i32 %880 to float
  %882 = fmul fast float %802, 5.000000e-01
  %883 = fmul fast float %881, %881
  %884 = fmul fast float %883, %882
  %885 = fsub fast float 1.500000e+00, %884
  %886 = fmul fast float %881, %802
  %887 = fmul fast float %886, %885
  %888 = bitcast float %803 to i32
  %889 = ashr i32 %888, 1
  %890 = sub nsw i32 1597463174, %889
  %891 = bitcast i32 %890 to float
  %892 = fmul fast float %803, 5.000000e-01
  %893 = fmul fast float %891, %891
  %894 = fmul fast float %893, %892
  %895 = fsub fast float 1.500000e+00, %894
  %896 = fmul fast float %891, %803
  %897 = fmul fast float %896, %895
  %898 = bitcast float %804 to i32
  %899 = ashr i32 %898, 1
  %900 = sub nsw i32 1597463174, %899
  %901 = bitcast i32 %900 to float
  %902 = fmul fast float %804, 5.000000e-01
  %903 = fmul fast float %901, %901
  %904 = fmul fast float %903, %902
  %905 = fsub fast float 1.500000e+00, %904
  %906 = fmul fast float %901, %804
  %907 = fmul fast float %906, %905
  %908 = fsub fast float %887, %869
  %909 = fsub fast float %897, %873
  %910 = fsub fast float %907, %877
  %911 = fmul fast float %908, %837
  %912 = fmul fast float %909, %839
  %913 = fmul fast float %910, %844
  %914 = fadd fast float %911, %852
  %915 = fadd fast float %912, %856
  %916 = fadd fast float %913, %860
  %917 = call float @dx.op.unary.f32(i32 7, float %914)  ; Saturate(value)
  %918 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  %919 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  %920 = fmul fast float %917, %917
  %921 = fmul fast float %918, %918
  %922 = fmul fast float %919, %919
  %923 = fsub fast float %920, %802
  %924 = fsub fast float %921, %803
  %925 = fsub fast float %922, %804
  %926 = fmul fast float %923, %827
  %927 = fmul fast float %924, %827
  %928 = fmul fast float %925, %827
  %929 = fadd fast float %926, %802
  %930 = fadd fast float %927, %803
  %931 = fadd fast float %928, %804
  %932 = fadd fast float %849, %813
  %933 = fsub fast float %932, %866
  %934 = call float @dx.op.unary.f32(i32 7, float %933)  ; Saturate(value)
  %935 = fsub fast float %934, %813
  %936 = fmul fast float %935, %827
  %937 = fadd fast float %936, %813
  br label %991

; <label>:938                                     ; preds = %826
  %939 = and i32 %829, 134217728
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %975, label %941

; <label>:941                                     ; preds = %938
  %942 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %943 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %944 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %945 = fadd fast float %942, -5.000000e-01
  %946 = fadd fast float %943, -5.000000e-01
  %947 = fadd fast float %944, -5.000000e-01
  %948 = fmul fast float %945, %827
  %949 = fmul fast float %946, %827
  %950 = fmul fast float %947, %827
  %951 = fadd fast float %948, 5.000000e-01
  %952 = fadd fast float %949, 5.000000e-01
  %953 = fadd fast float %950, 5.000000e-01
  %954 = call float @dx.op.unary.f32(i32 24, float %802)  ; Sqrt(value)
  %955 = call float @dx.op.unary.f32(i32 24, float %803)  ; Sqrt(value)
  %956 = call float @dx.op.unary.f32(i32 24, float %804)  ; Sqrt(value)
  %957 = fmul fast float %951, 2.000000e+00
  %958 = fsub fast float 1.000000e+00, %957
  %959 = fmul fast float %958, %954
  %960 = fadd fast float %959, %957
  %961 = fmul fast float %960, %954
  %962 = fmul fast float %952, 2.000000e+00
  %963 = fsub fast float 1.000000e+00, %962
  %964 = fmul fast float %963, %955
  %965 = fadd fast float %964, %962
  %966 = fmul fast float %965, %955
  %967 = fmul fast float %953, 2.000000e+00
  %968 = fsub fast float 1.000000e+00, %967
  %969 = fmul fast float %968, %956
  %970 = fadd fast float %969, %967
  %971 = fmul fast float %970, %956
  %972 = fmul fast float %961, %961
  %973 = fmul fast float %966, %966
  %974 = fmul fast float %971, %971
  br label %991

; <label>:975                                     ; preds = %938
  %976 = fmul fast float %279, %279
  %977 = fmul fast float %283, %283
  %978 = fmul fast float %287, %287
  %979 = fadd fast float %976, -1.000000e+00
  %980 = fadd fast float %977, -1.000000e+00
  %981 = fadd fast float %978, -1.000000e+00
  %982 = fmul fast float %827, %979
  %983 = fmul fast float %827, %980
  %984 = fmul fast float %827, %981
  %985 = fadd fast float %982, 1.000000e+00
  %986 = fadd fast float %983, 1.000000e+00
  %987 = fadd fast float %984, 1.000000e+00
  %988 = fmul fast float %985, %802
  %989 = fmul fast float %986, %803
  %990 = fmul fast float %987, %804
  br label %991

; <label>:991                                     ; preds = %975, %941, %832, %787
  %992 = phi float [ %937, %832 ], [ %813, %941 ], [ %813, %975 ], [ 0x3FA23C0BE0000000, %787 ]
  %993 = phi float [ %929, %832 ], [ %972, %941 ], [ %988, %975 ], [ 1.000000e+00, %787 ]
  %994 = phi float [ %930, %832 ], [ %973, %941 ], [ %989, %975 ], [ 1.000000e+00, %787 ]
  %995 = phi float [ %931, %832 ], [ %974, %941 ], [ %990, %975 ], [ 1.000000e+00, %787 ]
  %996 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.i32 %996, 1
  %998 = and i32 %997, 1
  %999 = icmp ne i32 %998, 0
  %1000 = add i32 %50, 356
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = and i32 %1002, 32
  %1004 = icmp ne i32 %1003, 0
  %1005 = and i1 %999, %1004
  %1006 = select i1 %1005, float 1.000000e+00, float %993
  %1007 = select i1 %1005, float 0x3FD3333340000000, float %994
  %1008 = select i1 %1005, float 0x3FD3333340000000, float %995
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = and i32 %1010, 32
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1085, label %1013

; <label>:1013                                    ; preds = %991
  %1014 = add i32 %50, 92
  %1015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.i32 %1015, 0
  %1017 = add i32 %50, 440
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = add i32 %1019, 0
  %1021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1021, %dx.types.Handle %95, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1023 = extractvalue %dx.types.ResRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.ResRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.ResRet.f32 %1022, 2
  %1026 = extractvalue %dx.types.ResRet.f32 %1022, 3
  %1027 = and i32 %1016, 255
  %1028 = uitofp i32 %1027 to float
  %1029 = lshr i32 %1016, 8
  %1030 = and i32 %1029, 255
  %1031 = uitofp i32 %1030 to float
  %1032 = lshr i32 %1016, 16
  %1033 = and i32 %1032, 255
  %1034 = uitofp i32 %1033 to float
  %1035 = fmul fast float %1034, 0x3F70101000000000
  %1036 = fmul fast float %1023, %1028
  %1037 = fadd fast float %1036, %1031
  %1038 = fmul fast float %1037, 0x3F70101000000000
  %1039 = fadd fast float %1024, -5.000000e-01
  %1040 = fadd fast float %1026, -5.000000e-01
  %1041 = fmul fast float %1039, %1035
  %1042 = fmul fast float %1040, %1035
  %1043 = fadd fast float %1041, 5.000000e-01
  %1044 = fadd fast float %1042, 5.000000e-01
  %1045 = fmul fast float %1043, 2.000000e+00
  %1046 = fadd fast float %1045, -1.000000e+00
  %1047 = fmul fast float %1044, 2.000000e+00
  %1048 = fadd fast float %1047, -1.000000e+00
  %1049 = fadd fast float %1046, %1048
  %1050 = fmul fast float %1049, 5.000000e-01
  %1051 = fsub fast float %1046, %1048
  %1052 = fmul fast float %1051, 5.000000e-01
  %1053 = call float @dx.op.unary.f32(i32 6, float %1050)  ; FAbs(value)
  %1054 = fsub fast float 1.000000e+00, %1053
  %1055 = call float @dx.op.unary.f32(i32 6, float %1052)  ; FAbs(value)
  %1056 = fsub fast float %1054, %1055
  %1057 = call float @dx.op.dot3.f32(i32 55, float %1050, float %1052, float %1056, float %1050, float %1052, float %1056)  ; Dot3(ax,ay,az,bx,by,bz)
  %1058 = call float @dx.op.unary.f32(i32 25, float %1057)  ; Rsqrt(value)
  %1059 = fmul fast float %1050, %1058
  %1060 = fmul fast float %1052, %1058
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = and i32 %1062, 67108864
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1081, label %1065

; <label>:1065                                    ; preds = %1013
  %1066 = add i32 %50, 280
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = and i32 %1068, 65535
  %1070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1069)  ; LegacyF16ToF32(value)
  %1071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.i32 %1071, 0
  %1073 = and i32 %1072, 65535
  %1074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1073)  ; LegacyF16ToF32(value)
  %1075 = lshr i32 %1068, 16
  %1076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1075)  ; LegacyF16ToF32(value)
  %1077 = fsub fast float %1038, %1076
  %1078 = fmul fast float %1077, %1070
  %1079 = fadd fast float %1078, %1074
  %1080 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  br label %1081

; <label>:1081                                    ; preds = %1065, %1013
  %1082 = phi float [ %1080, %1065 ], [ %1038, %1013 ]
  %1083 = call float @dx.op.dot2.f32(i32 54, float %1059, float %1060, float %504, float %505)  ; Dot2(ax,ay,bx,by)
  %1084 = call float @dx.op.dot2.f32(i32 54, float %1059, float %1060, float %506, float %507)  ; Dot2(ax,ay,bx,by)
  br label %1085

; <label>:1085                                    ; preds = %1081, %991
  %1086 = phi float [ %1082, %1081 ], [ 0x3FD6666660000000, %991 ]
  %1087 = phi float [ %1083, %1081 ], [ 0.000000e+00, %991 ]
  %1088 = phi float [ %1084, %1081 ], [ 0.000000e+00, %991 ]
  %1089 = phi float [ %1025, %1081 ], [ 1.000000e+00, %991 ]
  %1090 = add i32 %50, 160
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = lshr i32 %1092, 22
  %1094 = shl nuw nsw i32 %1093, 5
  %1095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1094)  ; LegacyF16ToF32(value)
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 64
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1133, label %1100

; <label>:1100                                    ; preds = %1085
  %1101 = add i32 %50, 456
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = add i32 %1103, 0
  %1105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = and i32 %1107, 131072
  %1109 = icmp eq i32 %1108, 0
  %1110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1105, %dx.types.Handle %95, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.ResRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.ResRet.f32 %1110, 2
  %1114 = fmul fast float %1111, %267
  %1115 = fmul fast float %1112, %270
  %1116 = fmul fast float %1113, %273
  br i1 %1109, label %1123, label %1117

; <label>:1117                                    ; preds = %1100
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 0
  %1120 = fmul fast float %1119, %1114
  %1121 = fmul fast float %1119, %1115
  %1122 = fmul fast float %1119, %1116
  br label %1123

; <label>:1123                                    ; preds = %1117, %1100
  %1124 = phi float [ %1120, %1117 ], [ %1114, %1100 ]
  %1125 = phi float [ %1121, %1117 ], [ %1115, %1100 ]
  %1126 = phi float [ %1122, %1117 ], [ %1116, %1100 ]
  %1127 = fmul fast float %1124, %1095
  %1128 = select i1 %247, float %1127, float %1124
  %1129 = call float @dx.op.dot3.f32(i32 55, float %1128, float %1125, float %1126, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1130 = select i1 %247, float 0.000000e+00, float %1124
  %1131 = select i1 %247, float %1129, float %1125
  %1132 = select i1 %247, float 0.000000e+00, float %1126
  br label %1133

; <label>:1133                                    ; preds = %1123, %1085
  %1134 = phi float [ %1130, %1123 ], [ 0.000000e+00, %1085 ]
  %1135 = phi float [ %1131, %1123 ], [ 0.000000e+00, %1085 ]
  %1136 = phi float [ %1132, %1123 ], [ 0.000000e+00, %1085 ]
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = and i32 %1138, 1024
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1171, label %1141

; <label>:1141                                    ; preds = %1133
  %1142 = add i32 %50, 152
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = and i32 %1144, 255
  %1146 = uitofp i32 %1145 to float
  %1147 = fmul fast float %1146, 0x3F70101020000000
  %1148 = lshr i32 %1144, 8
  %1149 = and i32 %1148, 255
  %1150 = uitofp i32 %1149 to float
  %1151 = fmul fast float %1150, 0x3F70101020000000
  %1152 = lshr i32 %1144, 16
  %1153 = and i32 %1152, 255
  %1154 = uitofp i32 %1153 to float
  %1155 = fmul fast float %1154, 0x3F70101020000000
  %1156 = fmul fast float %1147, %1147
  %1157 = fmul fast float %1151, %1151
  %1158 = fmul fast float %1155, %1155
  %1159 = add i32 %50, 524
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = add i32 %1161, 0
  %1163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1164 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1163, %dx.types.Handle %96, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1165 = extractvalue %dx.types.ResRet.f32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.f32 %1164, 1
  %1167 = extractvalue %dx.types.ResRet.f32 %1164, 2
  %1168 = fmul fast float %1156, %1165
  %1169 = fmul fast float %1157, %1166
  %1170 = fmul fast float %1158, %1167
  br label %1171

; <label>:1171                                    ; preds = %1141, %1133
  %1172 = phi float [ %1168, %1141 ], [ 0.000000e+00, %1133 ]
  %1173 = phi float [ %1169, %1141 ], [ 0.000000e+00, %1133 ]
  %1174 = phi float [ %1170, %1141 ], [ 0.000000e+00, %1133 ]
  %1175 = fcmp fast ogt float %1172, 0.000000e+00
  %1176 = fcmp fast ogt float %1173, 0.000000e+00
  %1177 = fcmp fast ogt float %1174, 0.000000e+00
  %1178 = call float @dx.op.unary.f32(i32 23, float %1172)  ; Log(value)
  %1179 = call float @dx.op.unary.f32(i32 23, float %1173)  ; Log(value)
  %1180 = call float @dx.op.unary.f32(i32 23, float %1174)  ; Log(value)
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = lshr i32 %1182, 7
  %1184 = and i32 %1183, 32752
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = fmul fast float %1178, 0xBFE62E4300000000
  %1187 = fmul fast float %1186, %1185
  %1188 = fmul fast float %1179, 0xBFE62E4300000000
  %1189 = fmul fast float %1188, %1185
  %1190 = fmul fast float %1180, 0xBFE62E4300000000
  %1191 = fmul fast float %1190, %1185
  %1192 = select i1 %1175, float %1187, float 1.270000e+02
  %1193 = select i1 %1176, float %1189, float 1.270000e+02
  %1194 = select i1 %1177, float %1191, float 1.270000e+02
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = and i32 %1196, 10240
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1243, label %1199

; <label>:1199                                    ; preds = %1171
  %1200 = add i32 %50, 540
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = add i32 %1202, 0
  %1204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1204, %dx.types.Handle %96, float %600, float %601, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 3
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = and i32 %1209, 1048576
  %1211 = icmp ne i32 %1210, 0
  %1212 = and i32 %1209, 8192
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1229, label %1214

; <label>:1214                                    ; preds = %1199
  %1215 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1216 = select i1 %1211, float %1215, float %1206
  %1217 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1218 = select i1 %1211, float %1217, float %1206
  %1219 = add i32 %50, 96
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = lshr i32 %1221, 16
  %1223 = and i32 %1222, 255
  %1224 = uitofp i32 %1223 to float
  %1225 = fmul fast float %1224, 0x3F80101020000000
  %1226 = fmul fast float %1225, %1218
  %1227 = fmul fast float %1225, %1206
  %1228 = fmul fast float %1225, %1216
  br label %1229

; <label>:1229                                    ; preds = %1214, %1199
  %1230 = phi float [ %1226, %1214 ], [ 0.000000e+00, %1199 ]
  %1231 = phi float [ %1227, %1214 ], [ 0.000000e+00, %1199 ]
  %1232 = phi float [ %1228, %1214 ], [ 0.000000e+00, %1199 ]
  %1233 = and i32 %1209, 2048
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %1243, label %1235

; <label>:1235                                    ; preds = %1229
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = shl i32 %1237, 4
  %1239 = and i32 %1238, 32752
  %1240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1239)  ; LegacyF16ToF32(value)
  %1241 = fmul fast float %1240, %1207
  %1242 = call float @dx.op.binary.f32(i32 35, float %1241, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1243

; <label>:1243                                    ; preds = %1235, %1229, %1171
  %1244 = phi float [ %1230, %1235 ], [ %1230, %1229 ], [ 0.000000e+00, %1171 ]
  %1245 = phi float [ %1231, %1235 ], [ %1231, %1229 ], [ 0.000000e+00, %1171 ]
  %1246 = phi float [ %1232, %1235 ], [ %1232, %1229 ], [ 0.000000e+00, %1171 ]
  %1247 = phi float [ %1242, %1235 ], [ 0x3F70101020000000, %1229 ], [ 0x3F70101020000000, %1171 ]
  %1248 = add i32 %50, 96
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = lshr i32 %1250, 8
  %1254 = and i32 %1253, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = call float @dx.op.dot3.f32(i32 55, float %1006, float %1007, float %1008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1257 = fmul fast float %1255, %1256
  %1258 = fadd fast float %1257, %1252
  %1259 = fmul fast float %1258, 0x3F70101020000000
  %1260 = call float @dx.op.unary.f32(i32 7, float %1259)  ; Saturate(value)
  br label %1261

; <label>:1261                                    ; preds = %1243, %486
  %1262 = phi float [ 0.000000e+00, %486 ], [ %1087, %1243 ]
  %1263 = phi float [ 0.000000e+00, %486 ], [ %1088, %1243 ]
  %1264 = phi float [ 0.000000e+00, %486 ], [ %1006, %1243 ]
  %1265 = phi float [ 0.000000e+00, %486 ], [ %1007, %1243 ]
  %1266 = phi float [ 0.000000e+00, %486 ], [ %1008, %1243 ]
  %1267 = phi float [ 0.000000e+00, %486 ], [ %1134, %1243 ]
  %1268 = phi float [ 0.000000e+00, %486 ], [ %1135, %1243 ]
  %1269 = phi float [ 0.000000e+00, %486 ], [ %1136, %1243 ]
  %1270 = phi float [ 0.000000e+00, %486 ], [ %1244, %1243 ]
  %1271 = phi float [ 0.000000e+00, %486 ], [ %1245, %1243 ]
  %1272 = phi float [ 0.000000e+00, %486 ], [ %1246, %1243 ]
  %1273 = phi float [ 0.000000e+00, %486 ], [ %1192, %1243 ]
  %1274 = phi float [ 0.000000e+00, %486 ], [ %1193, %1243 ]
  %1275 = phi float [ 0.000000e+00, %486 ], [ %1194, %1243 ]
  %1276 = phi float [ 0.000000e+00, %486 ], [ %992, %1243 ]
  %1277 = phi float [ 0.000000e+00, %486 ], [ %788, %1243 ]
  %1278 = phi float [ 0.000000e+00, %486 ], [ %1086, %1243 ]
  %1279 = phi float [ 0.000000e+00, %486 ], [ %1089, %1243 ]
  %1280 = phi float [ 0.000000e+00, %486 ], [ %1247, %1243 ]
  %1281 = phi float [ 0.000000e+00, %486 ], [ %1260, %1243 ]
  br i1 %434, label %2319, label %1282

; <label>:1282                                    ; preds = %1261
  %1283 = icmp ult i32 %492, 2
  %1284 = add i32 %50, 40
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = add i32 %50, 44
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = or i32 %1289, %1286
  %1291 = icmp eq i32 %1290, 0
  br i1 %1291, label %2319, label %1292

; <label>:1292                                    ; preds = %1282
  %1293 = and i32 %1286, 262144
  %1294 = icmp ne i32 %1293, 0
  %1295 = select i1 %1294, float %53, float 1.000000e+00
  %1296 = select i1 %1294, float %54, float 0.000000e+00
  %1297 = select i1 %1294, float %55, float 0.000000e+00
  %1298 = select i1 %1294, float %56, float 1.000000e+00
  %1299 = select i1 %1294, float %57, float %78
  %1300 = select i1 %1294, float %58, float %79
  %1301 = add i32 %50, 300
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = lshr i32 %1303, 16
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = fmul fast float %1305, 0x3F50624DE0000000
  %1307 = add i32 %50, 104
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = lshr i32 %1309, 16
  %1311 = and i32 %1310, 255
  %1312 = lshr i32 %1309, 24
  %1313 = add i32 %50, 308
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = and i32 %1315, 65535
  %1317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1316)  ; LegacyF16ToF32(value)
  %1318 = lshr i32 %1315, 16
  %1319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1318)  ; LegacyF16ToF32(value)
  %1320 = add i32 %50, 48
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = lshr i32 %1322, 22
  %1324 = shl nuw nsw i32 %1323, 5
  %1325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1324)  ; LegacyF16ToF32(value)
  %1326 = shl i32 %1322, 4
  %1327 = and i32 %1326, 32752
  %1328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1327)  ; LegacyF16ToF32(value)
  %1329 = lshr i32 %1322, 7
  %1330 = and i32 %1329, 32752
  %1331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1330)  ; LegacyF16ToF32(value)
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 3
  %1334 = fmul fast float %1333, 1.000000e+03
  %1335 = fmul fast float %344, %1334
  %1336 = call float @dx.op.unary.f32(i32 22, float %1335)  ; Frc(value)
  %1337 = fadd fast float %1336, %334
  %1338 = fmul fast float %345, %1334
  %1339 = call float @dx.op.unary.f32(i32 22, float %1338)  ; Frc(value)
  %1340 = fadd fast float %1339, %336
  %1341 = fmul fast float %1306, %1334
  %1342 = call float @dx.op.unary.f32(i32 22, float %1341)  ; Frc(value)
  %1343 = fmul fast float %1342, 0x401921FB60000000
  %1344 = fadd fast float %1343, %1325
  %1345 = call float @dx.op.unary.f32(i32 13, float %1344)  ; Sin(value)
  %1346 = call float @dx.op.unary.f32(i32 12, float %1344)  ; Cos(value)
  %1347 = fsub fast float -0.000000e+00, %1345
  %1348 = fadd fast float %1299, -5.000000e-01
  %1349 = fadd fast float %1300, -5.000000e-01
  %1350 = fmul fast float %1317, %1348
  %1351 = fmul fast float %1319, %1349
  %1352 = fadd fast float %1350, 5.000000e-01
  %1353 = fadd fast float %1351, 5.000000e-01
  %1354 = fmul fast float %1328, %1352
  %1355 = fmul fast float %1331, %1353
  %1356 = fmul fast float %1346, %1354
  %1357 = call float @dx.op.tertiary.f32(i32 46, float %1347, float %1355, float %1356)  ; FMad(a,b,c)
  %1358 = fmul fast float %1345, %1354
  %1359 = call float @dx.op.tertiary.f32(i32 46, float %1346, float %1355, float %1358)  ; FMad(a,b,c)
  %1360 = fadd fast float %1337, %1357
  %1361 = fadd fast float %1340, %1359
  %1362 = icmp ugt i32 %1311, 1
  %1363 = icmp ugt i32 %1309, 33554431
  %1364 = or i1 %1363, %1362
  br i1 %1364, label %1365, label %1390

; <label>:1365                                    ; preds = %1292
  %1366 = add i32 %50, 244
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = lshr i32 %1368, 16
  %1370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1369)  ; LegacyF16ToF32(value)
  %1371 = fmul fast float %1333, %1370
  %1372 = call float @dx.op.unary.f32(i32 22, float %1371)  ; Frc(value)
  %1373 = mul nuw nsw i32 %1311, %1312
  %1374 = uitofp i32 %1373 to float
  %1375 = fmul fast float %1372, %1374
  %1376 = call float @dx.op.unary.f32(i32 27, float %1375)  ; Round_ni(value)
  %1377 = fptoui float %1376 to i32
  %1378 = urem i32 %1377, %1311
  %1379 = udiv i32 %1377, %1312
  %1380 = call float @dx.op.unary.f32(i32 22, float %1360)  ; Frc(value)
  %1381 = call float @dx.op.unary.f32(i32 22, float %1361)  ; Frc(value)
  %1382 = uitofp i32 %1378 to float
  %1383 = uitofp i32 %1379 to float
  %1384 = fadd fast float %1380, %1382
  %1385 = fadd fast float %1381, %1383
  %1386 = uitofp i32 %1311 to float
  %1387 = uitofp i32 %1312 to float
  %1388 = fdiv fast float %1384, %1386
  %1389 = fdiv fast float %1385, %1387
  br label %1390

; <label>:1390                                    ; preds = %1365, %1292
  %1391 = phi float [ %1388, %1365 ], [ %1360, %1292 ]
  %1392 = phi float [ %1389, %1365 ], [ %1361, %1292 ]
  %1393 = and i32 %1286, 16777216
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1504, label %1395

; <label>:1395                                    ; preds = %1390
  %1396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1397 = extractvalue %dx.types.CBufRet.f32 %1396, 0
  %1398 = extractvalue %dx.types.CBufRet.f32 %1396, 1
  %1399 = extractvalue %dx.types.CBufRet.f32 %1396, 2
  %1400 = fadd fast float %1397, %154
  %1401 = fadd fast float %1398, %155
  %1402 = fadd fast float %1399, %156
  %1403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1404 = extractvalue %dx.types.CBufRet.f32 %1403, 0
  %1405 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  %1406 = icmp eq i32 %51, 65535
  br i1 %1406, label %1501, label %1407

; <label>:1407                                    ; preds = %1395
  %1408 = lshr i32 %51, 1
  %1409 = shl i32 %1408, 2
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = and i32 %51, 1
  %1413 = icmp ne i32 %1412, 0
  %1414 = lshr i32 %1411, 16
  %1415 = and i32 %1411, 65535
  %1416 = select i1 %1413, i32 %1414, i32 %1415
  %1417 = icmp eq i32 %1416, 65535
  br i1 %1417, label %1497, label %1418

; <label>:1418                                    ; preds = %1407
  %1419 = mul nuw nsw i32 %1416, 40
  %1420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.ResRet.f32 %1420, 1
  %1423 = extractvalue %dx.types.ResRet.f32 %1420, 2
  %1424 = add nuw nsw i32 %1419, 12
  %1425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.ResRet.f32 %1425, 1
  %1428 = extractvalue %dx.types.ResRet.f32 %1425, 2
  %1429 = add nuw nsw i32 %1419, 24
  %1430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1429, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = extractvalue %dx.types.ResRet.f32 %1430, 1
  %1433 = extractvalue %dx.types.ResRet.f32 %1430, 2
  %1434 = add nuw nsw i32 %1419, 36
  %1435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.f32 %1435, 0
  %1437 = fsub fast float %1400, %1421
  %1438 = fsub fast float %1401, %1422
  %1439 = fsub fast float %1402, %1423
  %1440 = fmul fast float %1436, %1437
  %1441 = fmul fast float %1436, %1438
  %1442 = fmul fast float %1436, %1439
  %1443 = call float @dx.op.unary.f32(i32 27, float %1440)  ; Round_ni(value)
  %1444 = call float @dx.op.unary.f32(i32 27, float %1441)  ; Round_ni(value)
  %1445 = call float @dx.op.unary.f32(i32 27, float %1442)  ; Round_ni(value)
  %1446 = fadd fast float %1443, 5.000000e-01
  %1447 = fadd fast float %1444, 5.000000e-01
  %1448 = fadd fast float %1445, 5.000000e-01
  %1449 = fmul fast float %1446, %1426
  %1450 = fmul fast float %1447, %1427
  %1451 = fmul fast float %1448, %1428
  %1452 = shl i32 %51, 2
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = add i32 %1454, 0
  %1456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1457 = call float @dx.op.unary.f32(i32 22, float %1449)  ; Frc(value)
  %1458 = call float @dx.op.unary.f32(i32 22, float %1450)  ; Frc(value)
  %1459 = call float @dx.op.unary.f32(i32 22, float %1451)  ; Frc(value)
  %1460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1456, %dx.types.Handle %45, float %1457, float %1458, float %1459, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1461 = extractvalue %dx.types.ResRet.f32 %1460, 0
  %1462 = extractvalue %dx.types.ResRet.f32 %1460, 1
  %1463 = extractvalue %dx.types.ResRet.f32 %1460, 2
  %1464 = fmul fast float %1461, 1.023000e+03
  %1465 = fmul fast float %1462, 1.023000e+03
  %1466 = fmul fast float %1463, 1.023000e+03
  %1467 = fadd fast float %1464, 5.000000e-01
  %1468 = fadd fast float %1465, 5.000000e-01
  %1469 = fadd fast float %1466, 5.000000e-01
  %1470 = call float @dx.op.unary.f32(i32 27, float %1467)  ; Round_ni(value)
  %1471 = call float @dx.op.unary.f32(i32 27, float %1468)  ; Round_ni(value)
  %1472 = call float @dx.op.unary.f32(i32 27, float %1469)  ; Round_ni(value)
  %1473 = fsub fast float %1440, %1443
  %1474 = fsub fast float %1441, %1444
  %1475 = fsub fast float %1442, %1445
  %1476 = fmul fast float %1473, 7.500000e-01
  %1477 = fmul fast float %1474, 7.500000e-01
  %1478 = fmul fast float %1475, 7.500000e-01
  %1479 = fadd fast float %1443, 1.250000e-01
  %1480 = fadd fast float %1479, %1476
  %1481 = fadd fast float %1480, %1470
  %1482 = fadd fast float %1444, 1.250000e-01
  %1483 = fadd fast float %1482, %1477
  %1484 = fadd fast float %1483, %1471
  %1485 = fadd fast float %1445, 1.250000e-01
  %1486 = fadd fast float %1485, %1478
  %1487 = fadd fast float %1486, %1472
  %1488 = fmul fast float %1481, %1431
  %1489 = fmul fast float %1484, %1432
  %1490 = fmul fast float %1487, %1433
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = add i32 %1492, 0
  %1494 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1493, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1494, %dx.types.Handle %43, float %1488, float %1489, float %1490, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1496 = extractvalue %dx.types.ResRet.f32 %1495, 0
  br label %1497

; <label>:1497                                    ; preds = %1418, %1407
  %1498 = phi float [ %1496, %1418 ], [ -1.000000e+00, %1407 ]
  %1499 = fadd fast float %1498, %1405
  %1500 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  br label %1501

; <label>:1501                                    ; preds = %1497, %1395
  %1502 = phi float [ %1500, %1497 ], [ %1405, %1395 ]
  %1503 = fmul fast float %1502, %489
  br label %1504

; <label>:1504                                    ; preds = %1501, %1390
  %1505 = phi float [ %1503, %1501 ], [ %489, %1390 ]
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 256
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1556, label %1510

; <label>:1510                                    ; preds = %1504
  %1511 = add i32 %50, 492
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = add i32 %1513, 0
  %1515 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1514, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1516 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1515, %dx.types.Handle %96, float %1391, float %1392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  %1518 = add i32 %50, 116
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = shl i32 %1520, 4
  %1522 = and i32 %1521, 32752
  %1523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1522)  ; LegacyF16ToF32(value)
  %1524 = lshr i32 %1520, 7
  %1525 = and i32 %1524, 32752
  %1526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1525)  ; LegacyF16ToF32(value)
  %1527 = fsub fast float 1.000000e+00, %1505
  %1528 = call float @dx.op.binary.f32(i32 35, float %1527, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1529 = bitcast float %1505 to i32
  %1530 = sitofp i32 %1529 to float
  %1531 = fadd fast float %1530, 0xC1CFBF8940000000
  %1532 = fmul fast float %1526, %1531
  %1533 = fadd fast float %1532, 0x41CFBF8940000000
  %1534 = fptosi float %1533 to i32
  %1535 = bitcast i32 %1534 to float
  %1536 = bitcast float %1528 to i32
  %1537 = sitofp i32 %1536 to float
  %1538 = fadd fast float %1537, 0xC1CFBF8940000000
  %1539 = fmul fast float %1538, %1526
  %1540 = fadd fast float %1539, 0x41CFBF8940000000
  %1541 = fptosi float %1540 to i32
  %1542 = bitcast i32 %1541 to float
  %1543 = fmul fast float %1535, %1523
  %1544 = fmul fast float %1542, %1523
  %1545 = fsub fast float %1528, %1543
  %1546 = fadd fast float %1544, %1528
  %1547 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1548 = call float @dx.op.unary.f32(i32 7, float %1546)  ; Saturate(value)
  %1549 = fsub fast float %1517, %1547
  %1550 = fsub fast float %1548, %1547
  %1551 = bitcast float %1550 to i32
  %1552 = sub nsw i32 2129859010, %1551
  %1553 = bitcast i32 %1552 to float
  %1554 = fmul fast float %1553, %1549
  %1555 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  br label %1556

; <label>:1556                                    ; preds = %1510, %1504
  %1557 = phi float [ %1555, %1510 ], [ %1505, %1504 ]
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 128
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1578, label %1562

; <label>:1562                                    ; preds = %1556
  %1563 = add i32 %50, 476
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = add i32 %1565, 0
  %1567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1567, %dx.types.Handle %96, float %1391, float %1392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1569 = extractvalue %dx.types.ResRet.f32 %1568, 0
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 524288
  %1573 = icmp ne i32 %1572, 0
  %1574 = fcmp fast ogt float %1569, 0x3FE0101020000000
  %1575 = select i1 %1574, float 1.000000e+00, float 0.000000e+00
  %1576 = select i1 %1573, float %1575, float %1569
  %1577 = fmul fast float %1576, %1557
  br label %1578

; <label>:1578                                    ; preds = %1562, %1556
  %1579 = phi float [ %1577, %1562 ], [ %1557, %1556 ]
  %1580 = fcmp fast ult float %1579, 0x3F70101020000000
  br i1 %1580, label %2319, label %1581

; <label>:1581                                    ; preds = %1578
  %1582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.i32 %1582, 0
  %1584 = and i32 %1583, 16
  %1585 = icmp eq i32 %1584, 0
  br i1 %1585, label %1784, label %1586

; <label>:1586                                    ; preds = %1581
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = add i32 %50, 428
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = add i32 %1591, 0
  %1593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1592, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1594 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1593, %dx.types.Handle %95, float %1391, float %1392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1595 = extractvalue %dx.types.ResRet.f32 %1594, 0
  %1596 = extractvalue %dx.types.ResRet.f32 %1594, 1
  %1597 = extractvalue %dx.types.ResRet.f32 %1594, 2
  %1598 = extractvalue %dx.types.ResRet.f32 %1594, 3
  %1599 = and i32 %1588, 255
  %1600 = uitofp i32 %1599 to float
  %1601 = lshr i32 %1588, 8
  %1602 = and i32 %1601, 255
  %1603 = uitofp i32 %1602 to float
  %1604 = fmul fast float %1598, %1600
  %1605 = fadd fast float %1604, %1603
  %1606 = fmul fast float %1605, 0x3F70101000000000
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = and i32 %1608, 512
  %1610 = icmp eq i32 %1609, 0
  br i1 %1610, label %1619, label %1611

; <label>:1611                                    ; preds = %1586
  %1612 = add i32 %50, 512
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1612, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = add i32 %1614, 0
  %1616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1615, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1616, %dx.types.Handle %96, float %1391, float %1392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1618 = extractvalue %dx.types.ResRet.f32 %1617, 0
  br label %1619

; <label>:1619                                    ; preds = %1611, %1586
  %1620 = phi float [ %1618, %1611 ], [ 1.000000e+00, %1586 ]
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = and i32 %1622, 33554432
  %1624 = icmp eq i32 %1623, 0
  br i1 %1624, label %1731, label %1625

; <label>:1625                                    ; preds = %1619
  %1626 = add i32 %50, 240
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = and i32 %1628, 65535
  %1630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1629)  ; LegacyF16ToF32(value)
  %1631 = lshr i32 %1628, 16
  %1632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1631)  ; LegacyF16ToF32(value)
  %1633 = add i32 %50, 244
  %1634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1633, i32 undef)  ; BufferLoad(srv,index,wot)
  %1635 = extractvalue %dx.types.ResRet.i32 %1634, 0
  %1636 = and i32 %1635, 65535
  %1637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1636)  ; LegacyF16ToF32(value)
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = lshr i32 %1639, 24
  %1641 = uitofp i32 %1640 to float
  %1642 = fmul fast float %1641, 0x3F70101020000000
  %1643 = and i32 %1639, 255
  %1644 = uitofp i32 %1643 to float
  %1645 = fmul fast float %1644, 0x3F70101020000000
  %1646 = lshr i32 %1639, 8
  %1647 = and i32 %1646, 255
  %1648 = uitofp i32 %1647 to float
  %1649 = fmul fast float %1648, 0x3F70101020000000
  %1650 = lshr i32 %1639, 16
  %1651 = and i32 %1650, 255
  %1652 = uitofp i32 %1651 to float
  %1653 = fmul fast float %1652, 0x3F70101020000000
  %1654 = add i32 %50, 236
  %1655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1654, i32 undef)  ; BufferLoad(srv,index,wot)
  %1656 = extractvalue %dx.types.ResRet.i32 %1655, 0
  %1657 = lshr i32 %1656, 24
  %1658 = uitofp i32 %1657 to float
  %1659 = fmul fast float %1658, 0x3F70101020000000
  %1660 = and i32 %1656, 255
  %1661 = uitofp i32 %1660 to float
  %1662 = fmul fast float %1661, 0x3F70101020000000
  %1663 = lshr i32 %1656, 8
  %1664 = and i32 %1663, 255
  %1665 = uitofp i32 %1664 to float
  %1666 = fmul fast float %1665, 0x3F70101020000000
  %1667 = lshr i32 %1656, 16
  %1668 = and i32 %1667, 255
  %1669 = uitofp i32 %1668 to float
  %1670 = fmul fast float %1669, 0x3F70101020000000
  %1671 = bitcast float %1595 to i32
  %1672 = ashr i32 %1671, 1
  %1673 = sub nsw i32 1597463174, %1672
  %1674 = bitcast i32 %1673 to float
  %1675 = fmul fast float %1595, 5.000000e-01
  %1676 = fmul fast float %1674, %1674
  %1677 = fmul fast float %1676, %1675
  %1678 = fsub fast float 1.500000e+00, %1677
  %1679 = fmul fast float %1674, %1595
  %1680 = fmul fast float %1679, %1678
  %1681 = bitcast float %1596 to i32
  %1682 = ashr i32 %1681, 1
  %1683 = sub nsw i32 1597463174, %1682
  %1684 = bitcast i32 %1683 to float
  %1685 = fmul fast float %1596, 5.000000e-01
  %1686 = fmul fast float %1684, %1684
  %1687 = fmul fast float %1686, %1685
  %1688 = fsub fast float 1.500000e+00, %1687
  %1689 = fmul fast float %1684, %1596
  %1690 = fmul fast float %1689, %1688
  %1691 = bitcast float %1597 to i32
  %1692 = ashr i32 %1691, 1
  %1693 = sub nsw i32 1597463174, %1692
  %1694 = bitcast i32 %1693 to float
  %1695 = fmul fast float %1597, 5.000000e-01
  %1696 = fmul fast float %1694, %1694
  %1697 = fmul fast float %1696, %1695
  %1698 = fsub fast float 1.500000e+00, %1697
  %1699 = fmul fast float %1694, %1597
  %1700 = fmul fast float %1699, %1698
  %1701 = fsub fast float %1680, %1662
  %1702 = fsub fast float %1690, %1666
  %1703 = fsub fast float %1700, %1670
  %1704 = fmul fast float %1701, %1630
  %1705 = fmul fast float %1702, %1632
  %1706 = fmul fast float %1703, %1637
  %1707 = fadd fast float %1704, %1645
  %1708 = fadd fast float %1705, %1649
  %1709 = fadd fast float %1706, %1653
  %1710 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1711 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1712 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1713 = fmul fast float %1710, %1710
  %1714 = fmul fast float %1711, %1711
  %1715 = fmul fast float %1712, %1712
  %1716 = fsub fast float %1713, %1595
  %1717 = fsub fast float %1714, %1596
  %1718 = fsub fast float %1715, %1597
  %1719 = fmul fast float %1716, %1620
  %1720 = fmul fast float %1717, %1620
  %1721 = fmul fast float %1718, %1620
  %1722 = fadd fast float %1719, %1595
  %1723 = fadd fast float %1720, %1596
  %1724 = fadd fast float %1721, %1597
  %1725 = fadd fast float %1642, %1606
  %1726 = fsub fast float %1725, %1659
  %1727 = call float @dx.op.unary.f32(i32 7, float %1726)  ; Saturate(value)
  %1728 = fsub fast float %1727, %1606
  %1729 = fmul fast float %1728, %1620
  %1730 = fadd fast float %1729, %1606
  br label %1784

; <label>:1731                                    ; preds = %1619
  %1732 = and i32 %1622, 134217728
  %1733 = icmp eq i32 %1732, 0
  br i1 %1733, label %1768, label %1734

; <label>:1734                                    ; preds = %1731
  %1735 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %1736 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %1737 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %1738 = fadd fast float %1735, -5.000000e-01
  %1739 = fadd fast float %1736, -5.000000e-01
  %1740 = fadd fast float %1737, -5.000000e-01
  %1741 = fmul fast float %1738, %1620
  %1742 = fmul fast float %1739, %1620
  %1743 = fmul fast float %1740, %1620
  %1744 = fadd fast float %1741, 5.000000e-01
  %1745 = fadd fast float %1742, 5.000000e-01
  %1746 = fadd fast float %1743, 5.000000e-01
  %1747 = call float @dx.op.unary.f32(i32 24, float %1595)  ; Sqrt(value)
  %1748 = call float @dx.op.unary.f32(i32 24, float %1596)  ; Sqrt(value)
  %1749 = call float @dx.op.unary.f32(i32 24, float %1597)  ; Sqrt(value)
  %1750 = fmul fast float %1744, 2.000000e+00
  %1751 = fsub fast float 1.000000e+00, %1750
  %1752 = fmul fast float %1751, %1747
  %1753 = fadd fast float %1752, %1750
  %1754 = fmul fast float %1753, %1747
  %1755 = fmul fast float %1745, 2.000000e+00
  %1756 = fsub fast float 1.000000e+00, %1755
  %1757 = fmul fast float %1756, %1748
  %1758 = fadd fast float %1757, %1755
  %1759 = fmul fast float %1758, %1748
  %1760 = fmul fast float %1746, 2.000000e+00
  %1761 = fsub fast float 1.000000e+00, %1760
  %1762 = fmul fast float %1761, %1749
  %1763 = fadd fast float %1762, %1760
  %1764 = fmul fast float %1763, %1749
  %1765 = fmul fast float %1754, %1754
  %1766 = fmul fast float %1759, %1759
  %1767 = fmul fast float %1764, %1764
  br label %1784

; <label>:1768                                    ; preds = %1731
  %1769 = fmul fast float %321, %321
  %1770 = fmul fast float %325, %325
  %1771 = fmul fast float %329, %329
  %1772 = fadd fast float %1769, -1.000000e+00
  %1773 = fadd fast float %1770, -1.000000e+00
  %1774 = fadd fast float %1771, -1.000000e+00
  %1775 = fmul fast float %1620, %1772
  %1776 = fmul fast float %1620, %1773
  %1777 = fmul fast float %1620, %1774
  %1778 = fadd fast float %1775, 1.000000e+00
  %1779 = fadd fast float %1776, 1.000000e+00
  %1780 = fadd fast float %1777, 1.000000e+00
  %1781 = fmul fast float %1778, %1595
  %1782 = fmul fast float %1779, %1596
  %1783 = fmul fast float %1780, %1597
  br label %1784

; <label>:1784                                    ; preds = %1768, %1734, %1625, %1581
  %1785 = phi float [ %1730, %1625 ], [ %1606, %1734 ], [ %1606, %1768 ], [ 0x3FA23C0BE0000000, %1581 ]
  %1786 = phi float [ %1722, %1625 ], [ %1765, %1734 ], [ %1781, %1768 ], [ 1.000000e+00, %1581 ]
  %1787 = phi float [ %1723, %1625 ], [ %1766, %1734 ], [ %1782, %1768 ], [ 1.000000e+00, %1581 ]
  %1788 = phi float [ %1724, %1625 ], [ %1767, %1734 ], [ %1783, %1768 ], [ 1.000000e+00, %1581 ]
  %1789 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.i32 %1789, 1
  %1791 = and i32 %1790, 1
  %1792 = icmp ne i32 %1791, 0
  %1793 = add i32 %50, 356
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = and i32 %1795, 32
  %1797 = icmp ne i32 %1796, 0
  %1798 = and i1 %1792, %1797
  %1799 = select i1 %1798, float 1.000000e+00, float %1786
  %1800 = select i1 %1798, float 0x3FD3333340000000, float %1787
  %1801 = select i1 %1798, float 0x3FD3333340000000, float %1788
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = and i32 %1803, 32
  %1805 = icmp eq i32 %1804, 0
  br i1 %1805, label %1878, label %1806

; <label>:1806                                    ; preds = %1784
  %1807 = add i32 %50, 108
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = add i32 %50, 444
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = add i32 %1812, 0
  %1814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1813, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1815 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1814, %dx.types.Handle %95, float %1391, float %1392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1816 = extractvalue %dx.types.ResRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.ResRet.f32 %1815, 1
  %1818 = extractvalue %dx.types.ResRet.f32 %1815, 2
  %1819 = extractvalue %dx.types.ResRet.f32 %1815, 3
  %1820 = and i32 %1809, 255
  %1821 = uitofp i32 %1820 to float
  %1822 = lshr i32 %1809, 8
  %1823 = and i32 %1822, 255
  %1824 = uitofp i32 %1823 to float
  %1825 = lshr i32 %1809, 16
  %1826 = and i32 %1825, 255
  %1827 = uitofp i32 %1826 to float
  %1828 = fmul fast float %1827, 0x3F70101000000000
  %1829 = fmul fast float %1816, %1821
  %1830 = fadd fast float %1829, %1824
  %1831 = fmul fast float %1830, 0x3F70101000000000
  %1832 = fadd fast float %1817, -5.000000e-01
  %1833 = fadd fast float %1819, -5.000000e-01
  %1834 = fmul fast float %1832, %1828
  %1835 = fmul fast float %1833, %1828
  %1836 = fadd fast float %1834, 5.000000e-01
  %1837 = fadd fast float %1835, 5.000000e-01
  %1838 = fmul fast float %1836, 2.000000e+00
  %1839 = fadd fast float %1838, -1.000000e+00
  %1840 = fmul fast float %1837, 2.000000e+00
  %1841 = fadd fast float %1840, -1.000000e+00
  %1842 = fadd fast float %1839, %1841
  %1843 = fmul fast float %1842, 5.000000e-01
  %1844 = fsub fast float %1839, %1841
  %1845 = fmul fast float %1844, 5.000000e-01
  %1846 = call float @dx.op.unary.f32(i32 6, float %1843)  ; FAbs(value)
  %1847 = fsub fast float 1.000000e+00, %1846
  %1848 = call float @dx.op.unary.f32(i32 6, float %1845)  ; FAbs(value)
  %1849 = fsub fast float %1847, %1848
  %1850 = call float @dx.op.dot3.f32(i32 55, float %1843, float %1845, float %1849, float %1843, float %1845, float %1849)  ; Dot3(ax,ay,az,bx,by,bz)
  %1851 = call float @dx.op.unary.f32(i32 25, float %1850)  ; Rsqrt(value)
  %1852 = fmul fast float %1843, %1851
  %1853 = fmul fast float %1845, %1851
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = and i32 %1855, 67108864
  %1857 = icmp eq i32 %1856, 0
  br i1 %1857, label %1874, label %1858

; <label>:1858                                    ; preds = %1806
  %1859 = add i32 %50, 296
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = and i32 %1861, 65535
  %1863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1862)  ; LegacyF16ToF32(value)
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %1865, 65535
  %1867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1866)  ; LegacyF16ToF32(value)
  %1868 = lshr i32 %1861, 16
  %1869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1868)  ; LegacyF16ToF32(value)
  %1870 = fsub fast float %1831, %1869
  %1871 = fmul fast float %1870, %1863
  %1872 = fadd fast float %1871, %1867
  %1873 = call float @dx.op.unary.f32(i32 7, float %1872)  ; Saturate(value)
  br label %1874

; <label>:1874                                    ; preds = %1858, %1806
  %1875 = phi float [ %1873, %1858 ], [ %1831, %1806 ]
  %1876 = call float @dx.op.dot2.f32(i32 54, float %1852, float %1853, float %1295, float %1296)  ; Dot2(ax,ay,bx,by)
  %1877 = call float @dx.op.dot2.f32(i32 54, float %1852, float %1853, float %1297, float %1298)  ; Dot2(ax,ay,bx,by)
  br label %1878

; <label>:1878                                    ; preds = %1874, %1784
  %1879 = phi float [ %1875, %1874 ], [ 0x3FD6666660000000, %1784 ]
  %1880 = phi float [ %1876, %1874 ], [ 0.000000e+00, %1784 ]
  %1881 = phi float [ %1877, %1874 ], [ 0.000000e+00, %1784 ]
  %1882 = phi float [ %1818, %1874 ], [ 1.000000e+00, %1784 ]
  %1883 = add i32 %50, 176
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = lshr i32 %1885, 22
  %1887 = shl nuw nsw i32 %1886, 5
  %1888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1887)  ; LegacyF16ToF32(value)
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = and i32 %1890, 64
  %1892 = icmp eq i32 %1891, 0
  br i1 %1892, label %1926, label %1893

; <label>:1893                                    ; preds = %1878
  %1894 = add i32 %50, 460
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = add i32 %1896, 0
  %1898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1897, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.i32 %1899, 0
  %1901 = and i32 %1900, 131072
  %1902 = icmp eq i32 %1901, 0
  %1903 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1898, %dx.types.Handle %95, float %1391, float %1392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1904 = extractvalue %dx.types.ResRet.f32 %1903, 0
  %1905 = extractvalue %dx.types.ResRet.f32 %1903, 1
  %1906 = extractvalue %dx.types.ResRet.f32 %1903, 2
  %1907 = fmul fast float %1904, %309
  %1908 = fmul fast float %1905, %312
  %1909 = fmul fast float %1906, %315
  br i1 %1902, label %1916, label %1910

; <label>:1910                                    ; preds = %1893
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 0
  %1913 = fmul fast float %1912, %1907
  %1914 = fmul fast float %1912, %1908
  %1915 = fmul fast float %1912, %1909
  br label %1916

; <label>:1916                                    ; preds = %1910, %1893
  %1917 = phi float [ %1913, %1910 ], [ %1907, %1893 ]
  %1918 = phi float [ %1914, %1910 ], [ %1908, %1893 ]
  %1919 = phi float [ %1915, %1910 ], [ %1909, %1893 ]
  %1920 = fmul fast float %1917, %1888
  %1921 = select i1 %247, float %1920, float %1917
  %1922 = call float @dx.op.dot3.f32(i32 55, float %1921, float %1918, float %1919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1923 = select i1 %247, float 0.000000e+00, float %1917
  %1924 = select i1 %247, float %1922, float %1918
  %1925 = select i1 %247, float 0.000000e+00, float %1919
  br label %1926

; <label>:1926                                    ; preds = %1916, %1878
  %1927 = phi float [ %1923, %1916 ], [ 0.000000e+00, %1878 ]
  %1928 = phi float [ %1924, %1916 ], [ 0.000000e+00, %1878 ]
  %1929 = phi float [ %1925, %1916 ], [ 0.000000e+00, %1878 ]
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = and i32 %1931, 1024
  %1933 = icmp eq i32 %1932, 0
  br i1 %1933, label %1964, label %1934

; <label>:1934                                    ; preds = %1926
  %1935 = add i32 %50, 168
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = and i32 %1937, 255
  %1939 = uitofp i32 %1938 to float
  %1940 = fmul fast float %1939, 0x3F70101020000000
  %1941 = lshr i32 %1937, 8
  %1942 = and i32 %1941, 255
  %1943 = uitofp i32 %1942 to float
  %1944 = fmul fast float %1943, 0x3F70101020000000
  %1945 = lshr i32 %1937, 16
  %1946 = and i32 %1945, 255
  %1947 = uitofp i32 %1946 to float
  %1948 = fmul fast float %1947, 0x3F70101020000000
  %1949 = fmul fast float %1940, %1940
  %1950 = fmul fast float %1944, %1944
  %1951 = fmul fast float %1948, %1948
  %1952 = add i32 %50, 528
  %1953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.i32 %1953, 0
  %1955 = add i32 %1954, 0
  %1956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1955, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1957 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1956, %dx.types.Handle %96, float %1391, float %1392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1958 = extractvalue %dx.types.ResRet.f32 %1957, 0
  %1959 = extractvalue %dx.types.ResRet.f32 %1957, 1
  %1960 = extractvalue %dx.types.ResRet.f32 %1957, 2
  %1961 = fmul fast float %1949, %1958
  %1962 = fmul fast float %1950, %1959
  %1963 = fmul fast float %1951, %1960
  br label %1964

; <label>:1964                                    ; preds = %1934, %1926
  %1965 = phi float [ %1961, %1934 ], [ 0.000000e+00, %1926 ]
  %1966 = phi float [ %1962, %1934 ], [ 0.000000e+00, %1926 ]
  %1967 = phi float [ %1963, %1934 ], [ 0.000000e+00, %1926 ]
  %1968 = fcmp fast ogt float %1965, 0.000000e+00
  %1969 = fcmp fast ogt float %1966, 0.000000e+00
  %1970 = fcmp fast ogt float %1967, 0.000000e+00
  %1971 = call float @dx.op.unary.f32(i32 23, float %1965)  ; Log(value)
  %1972 = call float @dx.op.unary.f32(i32 23, float %1966)  ; Log(value)
  %1973 = call float @dx.op.unary.f32(i32 23, float %1967)  ; Log(value)
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = lshr i32 %1975, 7
  %1977 = and i32 %1976, 32752
  %1978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1977)  ; LegacyF16ToF32(value)
  %1979 = fmul fast float %1971, 0xBFE62E4300000000
  %1980 = fmul fast float %1979, %1978
  %1981 = fmul fast float %1972, 0xBFE62E4300000000
  %1982 = fmul fast float %1981, %1978
  %1983 = fmul fast float %1973, 0xBFE62E4300000000
  %1984 = fmul fast float %1983, %1978
  %1985 = select i1 %1968, float %1980, float 1.270000e+02
  %1986 = select i1 %1969, float %1982, float 1.270000e+02
  %1987 = select i1 %1970, float %1984, float 1.270000e+02
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = and i32 %1989, 10240
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %2036, label %1992

; <label>:1992                                    ; preds = %1964
  %1993 = add i32 %50, 544
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = add i32 %1995, 0
  %1997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1998 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1997, %dx.types.Handle %96, float %1391, float %1392, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1999 = extractvalue %dx.types.ResRet.f32 %1998, 1
  %2000 = extractvalue %dx.types.ResRet.f32 %1998, 3
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = and i32 %2002, 1048576
  %2004 = icmp ne i32 %2003, 0
  %2005 = and i32 %2002, 8192
  %2006 = icmp eq i32 %2005, 0
  br i1 %2006, label %2022, label %2007

; <label>:2007                                    ; preds = %1992
  %2008 = extractvalue %dx.types.ResRet.f32 %1998, 2
  %2009 = select i1 %2004, float %2008, float %1999
  %2010 = extractvalue %dx.types.ResRet.f32 %1998, 0
  %2011 = select i1 %2004, float %2010, float %1999
  %2012 = add i32 %50, 112
  %2013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2012, i32 undef)  ; BufferLoad(srv,index,wot)
  %2014 = extractvalue %dx.types.ResRet.i32 %2013, 0
  %2015 = lshr i32 %2014, 16
  %2016 = and i32 %2015, 255
  %2017 = uitofp i32 %2016 to float
  %2018 = fmul fast float %2017, 0x3F80101020000000
  %2019 = fmul fast float %2018, %2011
  %2020 = fmul fast float %2018, %1999
  %2021 = fmul fast float %2018, %2009
  br label %2022

; <label>:2022                                    ; preds = %2007, %1992
  %2023 = phi float [ %2019, %2007 ], [ 0.000000e+00, %1992 ]
  %2024 = phi float [ %2020, %2007 ], [ 0.000000e+00, %1992 ]
  %2025 = phi float [ %2021, %2007 ], [ 0.000000e+00, %1992 ]
  %2026 = and i32 %2002, 2048
  %2027 = icmp eq i32 %2026, 0
  br i1 %2027, label %2036, label %2028

; <label>:2028                                    ; preds = %2022
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = shl i32 %2030, 4
  %2032 = and i32 %2031, 32752
  %2033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2032)  ; LegacyF16ToF32(value)
  %2034 = fmul fast float %2033, %2000
  %2035 = call float @dx.op.binary.f32(i32 35, float %2034, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2036

; <label>:2036                                    ; preds = %2028, %2022, %1964
  %2037 = phi float [ %2023, %2028 ], [ %2023, %2022 ], [ 0.000000e+00, %1964 ]
  %2038 = phi float [ %2024, %2028 ], [ %2024, %2022 ], [ 0.000000e+00, %1964 ]
  %2039 = phi float [ %2025, %2028 ], [ %2025, %2022 ], [ 0.000000e+00, %1964 ]
  %2040 = phi float [ %2035, %2028 ], [ 0x3F70101020000000, %2022 ], [ 0x3F70101020000000, %1964 ]
  %2041 = add i32 %50, 112
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = and i32 %2043, 255
  %2045 = uitofp i32 %2044 to float
  %2046 = lshr i32 %2043, 8
  %2047 = and i32 %2046, 255
  %2048 = uitofp i32 %2047 to float
  %2049 = call float @dx.op.dot3.f32(i32 55, float %1799, float %1800, float %1801, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2050 = fmul fast float %2048, %2049
  %2051 = fadd fast float %2050, %2045
  %2052 = fmul fast float %2051, 0x3F70101020000000
  %2053 = call float @dx.op.unary.f32(i32 7, float %2052)  ; Saturate(value)
  br i1 %1283, label %2054, label %2089

; <label>:2054                                    ; preds = %2036
  %2055 = fmul fast float %2040, 2.000000e+00
  %2056 = fcmp fast olt float %1985, 1.270000e+02
  %2057 = fcmp fast olt float %1986, 1.270000e+02
  %2058 = fcmp fast olt float %1987, 1.270000e+02
  %2059 = fmul fast float %1985, 0xBFF7154760000000
  %2060 = fmul fast float %2059, %2055
  %2061 = fmul fast float %1986, 0xBFF7154760000000
  %2062 = fmul fast float %2061, %2055
  %2063 = fmul fast float %1987, 0xBFF7154760000000
  %2064 = fmul fast float %2063, %2055
  %2065 = call float @dx.op.unary.f32(i32 21, float %2060)  ; Exp(value)
  %2066 = call float @dx.op.unary.f32(i32 21, float %2062)  ; Exp(value)
  %2067 = call float @dx.op.unary.f32(i32 21, float %2064)  ; Exp(value)
  %2068 = call float @dx.op.unary.f32(i32 7, float %2065)  ; Saturate(value)
  %2069 = call float @dx.op.unary.f32(i32 7, float %2066)  ; Saturate(value)
  %2070 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  %2071 = fadd fast float %2068, -1.000000e+00
  %2072 = select i1 %2056, float %2071, float -1.000000e+00
  %2073 = fadd fast float %2069, -1.000000e+00
  %2074 = select i1 %2057, float %2073, float -1.000000e+00
  %2075 = fadd fast float %2070, -1.000000e+00
  %2076 = select i1 %2058, float %2075, float -1.000000e+00
  %2077 = fmul fast float %2072, %1579
  %2078 = fmul fast float %2074, %1579
  %2079 = fmul fast float %2076, %1579
  %2080 = fadd fast float %2077, 1.000000e+00
  %2081 = fadd fast float %2078, 1.000000e+00
  %2082 = fadd fast float %2079, 1.000000e+00
  %2083 = fmul fast float %2080, %1264
  %2084 = fmul fast float %2081, %1265
  %2085 = fmul fast float %2082, %1266
  %2086 = fmul fast float %2080, %1267
  %2087 = fmul fast float %2081, %1268
  %2088 = fmul fast float %2082, %1269
  br label %2089

; <label>:2089                                    ; preds = %2054, %2036
  %2090 = phi float [ %2083, %2054 ], [ %1264, %2036 ]
  %2091 = phi float [ %2084, %2054 ], [ %1265, %2036 ]
  %2092 = phi float [ %2085, %2054 ], [ %1266, %2036 ]
  %2093 = phi float [ %2086, %2054 ], [ %1267, %2036 ]
  %2094 = phi float [ %2087, %2054 ], [ %1268, %2036 ]
  %2095 = phi float [ %2088, %2054 ], [ %1269, %2036 ]
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = and i32 %2097, 3
  %2099 = icmp eq i32 %2098, 3
  br i1 %2099, label %2178, label %2100

; <label>:2100                                    ; preds = %2089
  %2101 = and i32 %2097, 16
  %2102 = icmp ne i32 %2101, 0
  %2103 = select i1 %2102, float %1579, float 0.000000e+00
  %2104 = icmp eq i32 %2098, 0
  br i1 %2104, label %2105, label %2133

; <label>:2105                                    ; preds = %2100
  %2106 = and i32 %2097, 64
  %2107 = icmp ne i32 %2106, 0
  %2108 = select i1 %2107, float %1579, float 0.000000e+00
  %2109 = fsub fast float %1799, %2090
  %2110 = fsub fast float %1800, %2091
  %2111 = fsub fast float %1801, %2092
  %2112 = fmul fast float %2103, %2109
  %2113 = fmul fast float %2103, %2110
  %2114 = fmul fast float %2103, %2111
  %2115 = fadd fast float %2112, %2090
  %2116 = fadd fast float %2113, %2091
  %2117 = fadd fast float %2114, %2092
  %2118 = fsub fast float %1785, %1276
  %2119 = fmul fast float %2103, %2118
  %2120 = fadd fast float %2119, %1276
  %2121 = fsub fast float %1927, %2093
  %2122 = fsub fast float %1928, %2094
  %2123 = fsub fast float %1929, %2095
  %2124 = fmul fast float %2108, %2121
  %2125 = fmul fast float %2108, %2122
  %2126 = fmul fast float %2108, %2123
  %2127 = fadd fast float %2124, %2093
  %2128 = fadd fast float %2125, %2094
  %2129 = fadd fast float %2126, %2095
  %2130 = fsub fast float %2053, %1281
  %2131 = fmul fast float %2103, %2130
  %2132 = fadd fast float %2131, %1281
  br label %2178

; <label>:2133                                    ; preds = %2100
  %2134 = icmp eq i32 %2098, 1
  br i1 %2134, label %2135, label %2148

; <label>:2135                                    ; preds = %2133
  %2136 = fadd fast float %1799, -1.000000e+00
  %2137 = fadd fast float %1800, -1.000000e+00
  %2138 = fadd fast float %1801, -1.000000e+00
  %2139 = fmul fast float %2103, %2136
  %2140 = fmul fast float %2103, %2137
  %2141 = fmul fast float %2103, %2138
  %2142 = fadd fast float %2139, 1.000000e+00
  %2143 = fadd fast float %2140, 1.000000e+00
  %2144 = fadd fast float %2141, 1.000000e+00
  %2145 = fmul fast float %2142, %2090
  %2146 = fmul fast float %2143, %2091
  %2147 = fmul fast float %2144, %2092
  br label %2178

; <label>:2148                                    ; preds = %2133
  %2149 = icmp eq i32 %2098, 2
  br i1 %2149, label %2150, label %2178

; <label>:2150                                    ; preds = %2148
  %2151 = call float @dx.op.unary.f32(i32 24, float %1799)  ; Sqrt(value)
  %2152 = call float @dx.op.unary.f32(i32 24, float %1800)  ; Sqrt(value)
  %2153 = call float @dx.op.unary.f32(i32 24, float %1801)  ; Sqrt(value)
  %2154 = fadd fast float %2151, -5.000000e-01
  %2155 = fadd fast float %2152, -5.000000e-01
  %2156 = fadd fast float %2153, -5.000000e-01
  %2157 = fmul fast float %2154, %2103
  %2158 = fmul fast float %2155, %2103
  %2159 = fmul fast float %2156, %2103
  %2160 = fadd fast float %2157, 5.000000e-01
  %2161 = fadd fast float %2158, 5.000000e-01
  %2162 = fadd fast float %2159, 5.000000e-01
  %2163 = fmul fast float %2160, 2.000000e+00
  %2164 = fsub fast float 1.000000e+00, %2163
  %2165 = fmul fast float %2164, %2090
  %2166 = fadd fast float %2165, %2163
  %2167 = fmul fast float %2166, %2090
  %2168 = fmul fast float %2161, 2.000000e+00
  %2169 = fsub fast float 1.000000e+00, %2168
  %2170 = fmul fast float %2169, %2091
  %2171 = fadd fast float %2170, %2168
  %2172 = fmul fast float %2171, %2091
  %2173 = fmul fast float %2162, 2.000000e+00
  %2174 = fsub fast float 1.000000e+00, %2173
  %2175 = fmul fast float %2174, %2092
  %2176 = fadd fast float %2175, %2173
  %2177 = fmul fast float %2176, %2092
  br label %2178

; <label>:2178                                    ; preds = %2150, %2148, %2135, %2105, %2089
  %2179 = phi float [ %2090, %2089 ], [ %2167, %2150 ], [ %2090, %2148 ], [ %2145, %2135 ], [ %2115, %2105 ]
  %2180 = phi float [ %2091, %2089 ], [ %2172, %2150 ], [ %2091, %2148 ], [ %2146, %2135 ], [ %2116, %2105 ]
  %2181 = phi float [ %2092, %2089 ], [ %2177, %2150 ], [ %2092, %2148 ], [ %2147, %2135 ], [ %2117, %2105 ]
  %2182 = phi float [ %2093, %2089 ], [ %2093, %2150 ], [ %2093, %2148 ], [ %2093, %2135 ], [ %2127, %2105 ]
  %2183 = phi float [ %2094, %2089 ], [ %2094, %2150 ], [ %2094, %2148 ], [ %2094, %2135 ], [ %2128, %2105 ]
  %2184 = phi float [ %2095, %2089 ], [ %2095, %2150 ], [ %2095, %2148 ], [ %2095, %2135 ], [ %2129, %2105 ]
  %2185 = phi float [ %1276, %2089 ], [ %1276, %2150 ], [ %1276, %2148 ], [ %1276, %2135 ], [ %2120, %2105 ]
  %2186 = phi float [ %1281, %2089 ], [ %1281, %2150 ], [ %1281, %2148 ], [ %1281, %2135 ], [ %2132, %2105 ]
  %2187 = and i32 %2097, 12
  %2188 = icmp eq i32 %2187, 12
  br i1 %2188, label %2319, label %2189

; <label>:2189                                    ; preds = %2178
  %2190 = and i32 %2097, 2097184
  %2191 = icmp eq i32 %2190, 2097184
  %2192 = select i1 %2191, float %1579, float 0.000000e+00
  %2193 = and i32 %2097, 4194336
  %2194 = icmp eq i32 %2193, 4194336
  %2195 = select i1 %2194, float %1579, float 0.000000e+00
  %2196 = and i32 %2097, 8388640
  %2197 = icmp eq i32 %2196, 8388640
  %2198 = select i1 %2197, float %1579, float 0.000000e+00
  %2199 = and i32 %2097, 1024
  %2200 = icmp ne i32 %2199, 0
  %2201 = select i1 %2200, float %1579, float 0.000000e+00
  %2202 = and i32 %2097, 2048
  %2203 = icmp ne i32 %2202, 0
  %2204 = select i1 %2203, float %1579, float 0.000000e+00
  %2205 = and i32 %2097, 8192
  %2206 = icmp ne i32 %2205, 0
  %2207 = select i1 %2206, float %1579, float 0.000000e+00
  %2208 = icmp eq i32 %2187, 0
  br i1 %2208, label %2209, label %2243

; <label>:2209                                    ; preds = %2189
  %2210 = fsub fast float %1880, %1262
  %2211 = fsub fast float %1881, %1263
  %2212 = fmul fast float %2192, %2210
  %2213 = fmul fast float %2192, %2211
  %2214 = fadd fast float %2212, %1262
  %2215 = fadd fast float %2213, %1263
  %2216 = fsub fast float %1882, %1279
  %2217 = fmul fast float %2195, %2216
  %2218 = fadd fast float %2217, %1279
  %2219 = fsub fast float %1879, %1278
  %2220 = fmul fast float %2198, %2219
  %2221 = fadd fast float %2220, %1278
  %2222 = fsub fast float %1985, %1273
  %2223 = fsub fast float %1986, %1274
  %2224 = fsub fast float %1987, %1275
  %2225 = fmul fast float %2201, %2222
  %2226 = fmul fast float %2201, %2223
  %2227 = fmul fast float %2201, %2224
  %2228 = fadd fast float %2225, %1273
  %2229 = fadd fast float %2226, %1274
  %2230 = fadd fast float %2227, %1275
  %2231 = fsub fast float %2040, %1280
  %2232 = fmul fast float %2204, %2231
  %2233 = fadd fast float %2232, %1280
  %2234 = fsub fast float %2037, %1270
  %2235 = fsub fast float %2038, %1271
  %2236 = fsub fast float %2039, %1272
  %2237 = fmul fast float %2207, %2234
  %2238 = fmul fast float %2207, %2235
  %2239 = fmul fast float %2207, %2236
  %2240 = fadd fast float %2237, %1270
  %2241 = fadd fast float %2238, %1271
  %2242 = fadd fast float %2239, %1272
  br label %2319

; <label>:2243                                    ; preds = %2189
  %2244 = icmp eq i32 %2187, 4
  br i1 %2244, label %2245, label %2291

; <label>:2245                                    ; preds = %2243
  %2246 = fmul fast float %2192, %1880
  %2247 = fmul fast float %2192, %1881
  %2248 = fadd fast float %2246, %1262
  %2249 = fadd fast float %2247, %1263
  %2250 = call float @dx.op.binary.f32(i32 36, float %1279, float %1882)  ; FMin(a,b)
  %2251 = fsub fast float %2250, %1279
  %2252 = fmul fast float %2251, %2195
  %2253 = fadd fast float %2252, %1279
  %2254 = fadd fast float %1879, %1278
  %2255 = fmul fast float %2254, 0x3FF337FAE0000000
  %2256 = fmul fast float %1278, %1278
  %2257 = fmul fast float %1879, %1879
  %2258 = fadd fast float %2257, %2256
  %2259 = fmul fast float %2258, 0x3FE5152B00000000
  %2260 = fmul fast float %1278, 0xBFCC1F85E0000000
  %2261 = fmul fast float %2260, %1879
  %2262 = fadd fast float %2261, 0xBFE1363700000000
  %2263 = fadd fast float %2262, %2255
  %2264 = fsub fast float %2263, %2259
  %2265 = fmul fast float %2254, 0x3FBA6F0D00000000
  %2266 = fmul fast float %2258, 0x3FD0432880000000
  %2267 = fmul fast float %1278, 0xBFEF110800000000
  %2268 = fmul fast float %2267, %1879
  %2269 = fadd fast float %2268, 1.000000e+00
  %2270 = fsub fast float %2269, %2265
  %2271 = fadd fast float %2270, %2266
  %2272 = fdiv fast float %2264, %2271
  %2273 = call float @dx.op.unary.f32(i32 7, float %2272)  ; Saturate(value)
  %2274 = fsub fast float %2273, %1278
  %2275 = fmul fast float %2274, %2198
  %2276 = fadd fast float %2275, %1278
  %2277 = fmul fast float %2201, %1985
  %2278 = fmul fast float %2201, %1986
  %2279 = fmul fast float %2201, %1987
  %2280 = fadd fast float %2277, %1273
  %2281 = fadd fast float %2278, %1274
  %2282 = fadd fast float %2279, %1275
  %2283 = fmul fast float %2204, %2040
  %2284 = fadd fast float %2283, %1280
  %2285 = fmul fast float %2207, %2037
  %2286 = fmul fast float %2207, %2038
  %2287 = fmul fast float %2207, %2039
  %2288 = fadd fast float %2285, %1270
  %2289 = fadd fast float %2286, %1271
  %2290 = fadd fast float %2287, %1272
  br label %2319

; <label>:2291                                    ; preds = %2243
  %2292 = icmp eq i32 %2187, 8
  br i1 %2292, label %2293, label %2319

; <label>:2293                                    ; preds = %2291
  %2294 = fmul fast float %2192, %1880
  %2295 = fmul fast float %2192, %1881
  %2296 = fadd fast float %2294, %1262
  %2297 = fadd fast float %2295, %1263
  %2298 = call float @dx.op.binary.f32(i32 36, float %1279, float %1882)  ; FMin(a,b)
  %2299 = fsub fast float %2298, %1279
  %2300 = fmul fast float %2299, %2195
  %2301 = fadd fast float %2300, %1279
  %2302 = fsub fast float %1879, %1278
  %2303 = fmul fast float %2198, %2302
  %2304 = fadd fast float %2303, %1278
  %2305 = fmul fast float %2201, %1985
  %2306 = fmul fast float %2201, %1986
  %2307 = fmul fast float %2201, %1987
  %2308 = fadd fast float %2305, %1273
  %2309 = fadd fast float %2306, %1274
  %2310 = fadd fast float %2307, %1275
  %2311 = fmul fast float %2204, %2040
  %2312 = fadd fast float %2311, %1280
  %2313 = fmul fast float %2207, %2037
  %2314 = fmul fast float %2207, %2038
  %2315 = fmul fast float %2207, %2039
  %2316 = fadd fast float %2313, %1270
  %2317 = fadd fast float %2314, %1271
  %2318 = fadd fast float %2315, %1272
  br label %2319

; <label>:2319                                    ; preds = %2293, %2291, %2245, %2209, %2178, %1578, %1282, %1261
  %2320 = phi float [ %1262, %2178 ], [ %1262, %1578 ], [ %1262, %1261 ], [ %2296, %2293 ], [ %1262, %2291 ], [ %2248, %2245 ], [ %2214, %2209 ], [ %1262, %1282 ]
  %2321 = phi float [ %1263, %2178 ], [ %1263, %1578 ], [ %1263, %1261 ], [ %2297, %2293 ], [ %1263, %2291 ], [ %2249, %2245 ], [ %2215, %2209 ], [ %1263, %1282 ]
  %2322 = phi float [ %2179, %2178 ], [ %1264, %1578 ], [ %1264, %1261 ], [ %2179, %2293 ], [ %2179, %2291 ], [ %2179, %2245 ], [ %2179, %2209 ], [ %1264, %1282 ]
  %2323 = phi float [ %2180, %2178 ], [ %1265, %1578 ], [ %1265, %1261 ], [ %2180, %2293 ], [ %2180, %2291 ], [ %2180, %2245 ], [ %2180, %2209 ], [ %1265, %1282 ]
  %2324 = phi float [ %2181, %2178 ], [ %1266, %1578 ], [ %1266, %1261 ], [ %2181, %2293 ], [ %2181, %2291 ], [ %2181, %2245 ], [ %2181, %2209 ], [ %1266, %1282 ]
  %2325 = phi float [ %2182, %2178 ], [ %1267, %1578 ], [ %1267, %1261 ], [ %2182, %2293 ], [ %2182, %2291 ], [ %2182, %2245 ], [ %2182, %2209 ], [ %1267, %1282 ]
  %2326 = phi float [ %2183, %2178 ], [ %1268, %1578 ], [ %1268, %1261 ], [ %2183, %2293 ], [ %2183, %2291 ], [ %2183, %2245 ], [ %2183, %2209 ], [ %1268, %1282 ]
  %2327 = phi float [ %2184, %2178 ], [ %1269, %1578 ], [ %1269, %1261 ], [ %2184, %2293 ], [ %2184, %2291 ], [ %2184, %2245 ], [ %2184, %2209 ], [ %1269, %1282 ]
  %2328 = phi float [ %1270, %2178 ], [ %1270, %1578 ], [ %1270, %1261 ], [ %2316, %2293 ], [ %1270, %2291 ], [ %2288, %2245 ], [ %2240, %2209 ], [ %1270, %1282 ]
  %2329 = phi float [ %1271, %2178 ], [ %1271, %1578 ], [ %1271, %1261 ], [ %2317, %2293 ], [ %1271, %2291 ], [ %2289, %2245 ], [ %2241, %2209 ], [ %1271, %1282 ]
  %2330 = phi float [ %1272, %2178 ], [ %1272, %1578 ], [ %1272, %1261 ], [ %2318, %2293 ], [ %1272, %2291 ], [ %2290, %2245 ], [ %2242, %2209 ], [ %1272, %1282 ]
  %2331 = phi float [ %1273, %2178 ], [ %1273, %1578 ], [ %1273, %1261 ], [ %2308, %2293 ], [ %1273, %2291 ], [ %2280, %2245 ], [ %2228, %2209 ], [ %1273, %1282 ]
  %2332 = phi float [ %1274, %2178 ], [ %1274, %1578 ], [ %1274, %1261 ], [ %2309, %2293 ], [ %1274, %2291 ], [ %2281, %2245 ], [ %2229, %2209 ], [ %1274, %1282 ]
  %2333 = phi float [ %1275, %2178 ], [ %1275, %1578 ], [ %1275, %1261 ], [ %2310, %2293 ], [ %1275, %2291 ], [ %2282, %2245 ], [ %2230, %2209 ], [ %1275, %1282 ]
  %2334 = phi float [ %2185, %2178 ], [ %1276, %1578 ], [ %1276, %1261 ], [ %2185, %2293 ], [ %2185, %2291 ], [ %2185, %2245 ], [ %2185, %2209 ], [ %1276, %1282 ]
  %2335 = phi float [ %1278, %2178 ], [ %1278, %1578 ], [ %1278, %1261 ], [ %2304, %2293 ], [ %1278, %2291 ], [ %2276, %2245 ], [ %2221, %2209 ], [ %1278, %1282 ]
  %2336 = phi float [ %1279, %2178 ], [ %1279, %1578 ], [ %1279, %1261 ], [ %2301, %2293 ], [ %1279, %2291 ], [ %2253, %2245 ], [ %2218, %2209 ], [ %1279, %1282 ]
  %2337 = phi float [ %1280, %2178 ], [ %1280, %1578 ], [ %1280, %1261 ], [ %2312, %2293 ], [ %1280, %2291 ], [ %2284, %2245 ], [ %2233, %2209 ], [ %1280, %1282 ]
  %2338 = phi float [ %2186, %2178 ], [ %1281, %1578 ], [ %1281, %1261 ], [ %2186, %2293 ], [ %2186, %2291 ], [ %2186, %2245 ], [ %2186, %2209 ], [ %1281, %1282 ]
  br i1 %436, label %3376, label %2339

; <label>:2339                                    ; preds = %2319
  %2340 = icmp ult i32 %492, 3
  %2341 = add i32 %50, 56
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = add i32 %50, 60
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = or i32 %2346, %2343
  %2348 = icmp eq i32 %2347, 0
  br i1 %2348, label %3376, label %2349

; <label>:2349                                    ; preds = %2339
  %2350 = and i32 %2343, 262144
  %2351 = icmp ne i32 %2350, 0
  %2352 = select i1 %2351, float %53, float 1.000000e+00
  %2353 = select i1 %2351, float %54, float 0.000000e+00
  %2354 = select i1 %2351, float %55, float 0.000000e+00
  %2355 = select i1 %2351, float %56, float 1.000000e+00
  %2356 = select i1 %2351, float %57, float %78
  %2357 = select i1 %2351, float %58, float %79
  %2358 = add i32 %50, 316
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = lshr i32 %2360, 16
  %2362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2361)  ; LegacyF16ToF32(value)
  %2363 = fmul fast float %2362, 0x3F50624DE0000000
  %2364 = add i32 %50, 120
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = lshr i32 %2366, 16
  %2368 = and i32 %2367, 255
  %2369 = lshr i32 %2366, 24
  %2370 = add i32 %50, 324
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = and i32 %2372, 65535
  %2374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2373)  ; LegacyF16ToF32(value)
  %2375 = lshr i32 %2372, 16
  %2376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2375)  ; LegacyF16ToF32(value)
  %2377 = add i32 %50, 64
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = lshr i32 %2379, 22
  %2381 = shl nuw nsw i32 %2380, 5
  %2382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2381)  ; LegacyF16ToF32(value)
  %2383 = shl i32 %2379, 4
  %2384 = and i32 %2383, 32752
  %2385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2384)  ; LegacyF16ToF32(value)
  %2386 = lshr i32 %2379, 7
  %2387 = and i32 %2386, 32752
  %2388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2387)  ; LegacyF16ToF32(value)
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 3
  %2391 = fmul fast float %2390, 1.000000e+03
  %2392 = fmul fast float %386, %2391
  %2393 = call float @dx.op.unary.f32(i32 22, float %2392)  ; Frc(value)
  %2394 = fadd fast float %2393, %376
  %2395 = fmul fast float %387, %2391
  %2396 = call float @dx.op.unary.f32(i32 22, float %2395)  ; Frc(value)
  %2397 = fadd fast float %2396, %378
  %2398 = fmul fast float %2363, %2391
  %2399 = call float @dx.op.unary.f32(i32 22, float %2398)  ; Frc(value)
  %2400 = fmul fast float %2399, 0x401921FB60000000
  %2401 = fadd fast float %2400, %2382
  %2402 = call float @dx.op.unary.f32(i32 13, float %2401)  ; Sin(value)
  %2403 = call float @dx.op.unary.f32(i32 12, float %2401)  ; Cos(value)
  %2404 = fsub fast float -0.000000e+00, %2402
  %2405 = fadd fast float %2356, -5.000000e-01
  %2406 = fadd fast float %2357, -5.000000e-01
  %2407 = fmul fast float %2374, %2405
  %2408 = fmul fast float %2376, %2406
  %2409 = fadd fast float %2407, 5.000000e-01
  %2410 = fadd fast float %2408, 5.000000e-01
  %2411 = fmul fast float %2385, %2409
  %2412 = fmul fast float %2388, %2410
  %2413 = fmul fast float %2403, %2411
  %2414 = call float @dx.op.tertiary.f32(i32 46, float %2404, float %2412, float %2413)  ; FMad(a,b,c)
  %2415 = fmul fast float %2402, %2411
  %2416 = call float @dx.op.tertiary.f32(i32 46, float %2403, float %2412, float %2415)  ; FMad(a,b,c)
  %2417 = fadd fast float %2394, %2414
  %2418 = fadd fast float %2397, %2416
  %2419 = icmp ugt i32 %2368, 1
  %2420 = icmp ugt i32 %2366, 33554431
  %2421 = or i1 %2420, %2419
  br i1 %2421, label %2422, label %2447

; <label>:2422                                    ; preds = %2349
  %2423 = add i32 %50, 260
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = lshr i32 %2425, 16
  %2427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2426)  ; LegacyF16ToF32(value)
  %2428 = fmul fast float %2390, %2427
  %2429 = call float @dx.op.unary.f32(i32 22, float %2428)  ; Frc(value)
  %2430 = mul nuw nsw i32 %2368, %2369
  %2431 = uitofp i32 %2430 to float
  %2432 = fmul fast float %2429, %2431
  %2433 = call float @dx.op.unary.f32(i32 27, float %2432)  ; Round_ni(value)
  %2434 = fptoui float %2433 to i32
  %2435 = urem i32 %2434, %2368
  %2436 = udiv i32 %2434, %2369
  %2437 = call float @dx.op.unary.f32(i32 22, float %2417)  ; Frc(value)
  %2438 = call float @dx.op.unary.f32(i32 22, float %2418)  ; Frc(value)
  %2439 = uitofp i32 %2435 to float
  %2440 = uitofp i32 %2436 to float
  %2441 = fadd fast float %2437, %2439
  %2442 = fadd fast float %2438, %2440
  %2443 = uitofp i32 %2368 to float
  %2444 = uitofp i32 %2369 to float
  %2445 = fdiv fast float %2441, %2443
  %2446 = fdiv fast float %2442, %2444
  br label %2447

; <label>:2447                                    ; preds = %2422, %2349
  %2448 = phi float [ %2445, %2422 ], [ %2417, %2349 ]
  %2449 = phi float [ %2446, %2422 ], [ %2418, %2349 ]
  %2450 = and i32 %2343, 16777216
  %2451 = icmp eq i32 %2450, 0
  br i1 %2451, label %2561, label %2452

; <label>:2452                                    ; preds = %2447
  %2453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2454 = extractvalue %dx.types.CBufRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.CBufRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.CBufRet.f32 %2453, 2
  %2457 = fadd fast float %2454, %154
  %2458 = fadd fast float %2455, %155
  %2459 = fadd fast float %2456, %156
  %2460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2461 = extractvalue %dx.types.CBufRet.f32 %2460, 0
  %2462 = call float @dx.op.unary.f32(i32 7, float %2461)  ; Saturate(value)
  %2463 = icmp eq i32 %51, 65535
  br i1 %2463, label %2558, label %2464

; <label>:2464                                    ; preds = %2452
  %2465 = lshr i32 %51, 1
  %2466 = shl i32 %2465, 2
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = and i32 %51, 1
  %2470 = icmp ne i32 %2469, 0
  %2471 = lshr i32 %2468, 16
  %2472 = and i32 %2468, 65535
  %2473 = select i1 %2470, i32 %2471, i32 %2472
  %2474 = icmp eq i32 %2473, 65535
  br i1 %2474, label %2554, label %2475

; <label>:2475                                    ; preds = %2464
  %2476 = mul nuw nsw i32 %2473, 40
  %2477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.f32 %2477, 0
  %2479 = extractvalue %dx.types.ResRet.f32 %2477, 1
  %2480 = extractvalue %dx.types.ResRet.f32 %2477, 2
  %2481 = add nuw nsw i32 %2476, 12
  %2482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.f32 %2482, 0
  %2484 = extractvalue %dx.types.ResRet.f32 %2482, 1
  %2485 = extractvalue %dx.types.ResRet.f32 %2482, 2
  %2486 = add nuw nsw i32 %2476, 24
  %2487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.f32 %2487, 0
  %2489 = extractvalue %dx.types.ResRet.f32 %2487, 1
  %2490 = extractvalue %dx.types.ResRet.f32 %2487, 2
  %2491 = add nuw nsw i32 %2476, 36
  %2492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2491, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.f32 %2492, 0
  %2494 = fsub fast float %2457, %2478
  %2495 = fsub fast float %2458, %2479
  %2496 = fsub fast float %2459, %2480
  %2497 = fmul fast float %2493, %2494
  %2498 = fmul fast float %2493, %2495
  %2499 = fmul fast float %2493, %2496
  %2500 = call float @dx.op.unary.f32(i32 27, float %2497)  ; Round_ni(value)
  %2501 = call float @dx.op.unary.f32(i32 27, float %2498)  ; Round_ni(value)
  %2502 = call float @dx.op.unary.f32(i32 27, float %2499)  ; Round_ni(value)
  %2503 = fadd fast float %2500, 5.000000e-01
  %2504 = fadd fast float %2501, 5.000000e-01
  %2505 = fadd fast float %2502, 5.000000e-01
  %2506 = fmul fast float %2503, %2483
  %2507 = fmul fast float %2504, %2484
  %2508 = fmul fast float %2505, %2485
  %2509 = shl i32 %51, 2
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = add i32 %2511, 0
  %2513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2514 = call float @dx.op.unary.f32(i32 22, float %2506)  ; Frc(value)
  %2515 = call float @dx.op.unary.f32(i32 22, float %2507)  ; Frc(value)
  %2516 = call float @dx.op.unary.f32(i32 22, float %2508)  ; Frc(value)
  %2517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2513, %dx.types.Handle %45, float %2514, float %2515, float %2516, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2518 = extractvalue %dx.types.ResRet.f32 %2517, 0
  %2519 = extractvalue %dx.types.ResRet.f32 %2517, 1
  %2520 = extractvalue %dx.types.ResRet.f32 %2517, 2
  %2521 = fmul fast float %2518, 1.023000e+03
  %2522 = fmul fast float %2519, 1.023000e+03
  %2523 = fmul fast float %2520, 1.023000e+03
  %2524 = fadd fast float %2521, 5.000000e-01
  %2525 = fadd fast float %2522, 5.000000e-01
  %2526 = fadd fast float %2523, 5.000000e-01
  %2527 = call float @dx.op.unary.f32(i32 27, float %2524)  ; Round_ni(value)
  %2528 = call float @dx.op.unary.f32(i32 27, float %2525)  ; Round_ni(value)
  %2529 = call float @dx.op.unary.f32(i32 27, float %2526)  ; Round_ni(value)
  %2530 = fsub fast float %2497, %2500
  %2531 = fsub fast float %2498, %2501
  %2532 = fsub fast float %2499, %2502
  %2533 = fmul fast float %2530, 7.500000e-01
  %2534 = fmul fast float %2531, 7.500000e-01
  %2535 = fmul fast float %2532, 7.500000e-01
  %2536 = fadd fast float %2500, 1.250000e-01
  %2537 = fadd fast float %2536, %2533
  %2538 = fadd fast float %2537, %2527
  %2539 = fadd fast float %2501, 1.250000e-01
  %2540 = fadd fast float %2539, %2534
  %2541 = fadd fast float %2540, %2528
  %2542 = fadd fast float %2502, 1.250000e-01
  %2543 = fadd fast float %2542, %2535
  %2544 = fadd fast float %2543, %2529
  %2545 = fmul fast float %2538, %2488
  %2546 = fmul fast float %2541, %2489
  %2547 = fmul fast float %2544, %2490
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = add i32 %2549, 0
  %2551 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2550, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2551, %dx.types.Handle %43, float %2545, float %2546, float %2547, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2553 = extractvalue %dx.types.ResRet.f32 %2552, 0
  br label %2554

; <label>:2554                                    ; preds = %2475, %2464
  %2555 = phi float [ %2553, %2475 ], [ -1.000000e+00, %2464 ]
  %2556 = fadd fast float %2555, %2462
  %2557 = call float @dx.op.unary.f32(i32 7, float %2556)  ; Saturate(value)
  br label %2558

; <label>:2558                                    ; preds = %2554, %2452
  %2559 = phi float [ %2557, %2554 ], [ %2462, %2452 ]
  %2560 = fmul fast float %2559, %488
  br label %2561

; <label>:2561                                    ; preds = %2558, %2447
  %2562 = phi float [ %2560, %2558 ], [ %488, %2447 ]
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = and i32 %2564, 256
  %2566 = icmp eq i32 %2565, 0
  br i1 %2566, label %2613, label %2567

; <label>:2567                                    ; preds = %2561
  %2568 = add i32 %50, 496
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = add i32 %2570, 0
  %2572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2571, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2573 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2572, %dx.types.Handle %96, float %2448, float %2449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2574 = extractvalue %dx.types.ResRet.f32 %2573, 0
  %2575 = add i32 %50, 132
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = shl i32 %2577, 4
  %2579 = and i32 %2578, 32752
  %2580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2579)  ; LegacyF16ToF32(value)
  %2581 = lshr i32 %2577, 7
  %2582 = and i32 %2581, 32752
  %2583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2582)  ; LegacyF16ToF32(value)
  %2584 = fsub fast float 1.000000e+00, %2562
  %2585 = call float @dx.op.binary.f32(i32 35, float %2584, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2586 = bitcast float %2562 to i32
  %2587 = sitofp i32 %2586 to float
  %2588 = fadd fast float %2587, 0xC1CFBF8940000000
  %2589 = fmul fast float %2583, %2588
  %2590 = fadd fast float %2589, 0x41CFBF8940000000
  %2591 = fptosi float %2590 to i32
  %2592 = bitcast i32 %2591 to float
  %2593 = bitcast float %2585 to i32
  %2594 = sitofp i32 %2593 to float
  %2595 = fadd fast float %2594, 0xC1CFBF8940000000
  %2596 = fmul fast float %2595, %2583
  %2597 = fadd fast float %2596, 0x41CFBF8940000000
  %2598 = fptosi float %2597 to i32
  %2599 = bitcast i32 %2598 to float
  %2600 = fmul fast float %2592, %2580
  %2601 = fmul fast float %2599, %2580
  %2602 = fsub fast float %2585, %2600
  %2603 = fadd fast float %2601, %2585
  %2604 = call float @dx.op.unary.f32(i32 7, float %2602)  ; Saturate(value)
  %2605 = call float @dx.op.unary.f32(i32 7, float %2603)  ; Saturate(value)
  %2606 = fsub fast float %2574, %2604
  %2607 = fsub fast float %2605, %2604
  %2608 = bitcast float %2607 to i32
  %2609 = sub nsw i32 2129859010, %2608
  %2610 = bitcast i32 %2609 to float
  %2611 = fmul fast float %2610, %2606
  %2612 = call float @dx.op.unary.f32(i32 7, float %2611)  ; Saturate(value)
  br label %2613

; <label>:2613                                    ; preds = %2567, %2561
  %2614 = phi float [ %2612, %2567 ], [ %2562, %2561 ]
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = and i32 %2616, 128
  %2618 = icmp eq i32 %2617, 0
  br i1 %2618, label %2635, label %2619

; <label>:2619                                    ; preds = %2613
  %2620 = add i32 %50, 480
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = add i32 %2622, 0
  %2624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2624, %dx.types.Handle %96, float %2448, float %2449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2626 = extractvalue %dx.types.ResRet.f32 %2625, 0
  %2627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2628 = extractvalue %dx.types.ResRet.i32 %2627, 0
  %2629 = and i32 %2628, 524288
  %2630 = icmp ne i32 %2629, 0
  %2631 = fcmp fast ogt float %2626, 0x3FE0101020000000
  %2632 = select i1 %2631, float 1.000000e+00, float 0.000000e+00
  %2633 = select i1 %2630, float %2632, float %2626
  %2634 = fmul fast float %2633, %2614
  br label %2635

; <label>:2635                                    ; preds = %2619, %2613
  %2636 = phi float [ %2634, %2619 ], [ %2614, %2613 ]
  %2637 = fcmp fast ult float %2636, 0x3F70101020000000
  br i1 %2637, label %3376, label %2638

; <label>:2638                                    ; preds = %2635
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = and i32 %2640, 16
  %2642 = icmp eq i32 %2641, 0
  br i1 %2642, label %2841, label %2643

; <label>:2643                                    ; preds = %2638
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = add i32 %50, 432
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = add i32 %2648, 0
  %2650 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2649, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2651 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2650, %dx.types.Handle %95, float %2448, float %2449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2652 = extractvalue %dx.types.ResRet.f32 %2651, 0
  %2653 = extractvalue %dx.types.ResRet.f32 %2651, 1
  %2654 = extractvalue %dx.types.ResRet.f32 %2651, 2
  %2655 = extractvalue %dx.types.ResRet.f32 %2651, 3
  %2656 = and i32 %2645, 255
  %2657 = uitofp i32 %2656 to float
  %2658 = lshr i32 %2645, 8
  %2659 = and i32 %2658, 255
  %2660 = uitofp i32 %2659 to float
  %2661 = fmul fast float %2655, %2657
  %2662 = fadd fast float %2661, %2660
  %2663 = fmul fast float %2662, 0x3F70101000000000
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = and i32 %2665, 512
  %2667 = icmp eq i32 %2666, 0
  br i1 %2667, label %2676, label %2668

; <label>:2668                                    ; preds = %2643
  %2669 = add i32 %50, 516
  %2670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2669, i32 undef)  ; BufferLoad(srv,index,wot)
  %2671 = extractvalue %dx.types.ResRet.i32 %2670, 0
  %2672 = add i32 %2671, 0
  %2673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2673, %dx.types.Handle %96, float %2448, float %2449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2675 = extractvalue %dx.types.ResRet.f32 %2674, 0
  br label %2676

; <label>:2676                                    ; preds = %2668, %2643
  %2677 = phi float [ %2675, %2668 ], [ 1.000000e+00, %2643 ]
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = and i32 %2679, 33554432
  %2681 = icmp eq i32 %2680, 0
  br i1 %2681, label %2788, label %2682

; <label>:2682                                    ; preds = %2676
  %2683 = add i32 %50, 256
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = and i32 %2685, 65535
  %2687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2686)  ; LegacyF16ToF32(value)
  %2688 = lshr i32 %2685, 16
  %2689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2688)  ; LegacyF16ToF32(value)
  %2690 = add i32 %50, 260
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2690, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = and i32 %2692, 65535
  %2694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2693)  ; LegacyF16ToF32(value)
  %2695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2696 = extractvalue %dx.types.ResRet.i32 %2695, 0
  %2697 = lshr i32 %2696, 24
  %2698 = uitofp i32 %2697 to float
  %2699 = fmul fast float %2698, 0x3F70101020000000
  %2700 = and i32 %2696, 255
  %2701 = uitofp i32 %2700 to float
  %2702 = fmul fast float %2701, 0x3F70101020000000
  %2703 = lshr i32 %2696, 8
  %2704 = and i32 %2703, 255
  %2705 = uitofp i32 %2704 to float
  %2706 = fmul fast float %2705, 0x3F70101020000000
  %2707 = lshr i32 %2696, 16
  %2708 = and i32 %2707, 255
  %2709 = uitofp i32 %2708 to float
  %2710 = fmul fast float %2709, 0x3F70101020000000
  %2711 = add i32 %50, 252
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = lshr i32 %2713, 24
  %2715 = uitofp i32 %2714 to float
  %2716 = fmul fast float %2715, 0x3F70101020000000
  %2717 = and i32 %2713, 255
  %2718 = uitofp i32 %2717 to float
  %2719 = fmul fast float %2718, 0x3F70101020000000
  %2720 = lshr i32 %2713, 8
  %2721 = and i32 %2720, 255
  %2722 = uitofp i32 %2721 to float
  %2723 = fmul fast float %2722, 0x3F70101020000000
  %2724 = lshr i32 %2713, 16
  %2725 = and i32 %2724, 255
  %2726 = uitofp i32 %2725 to float
  %2727 = fmul fast float %2726, 0x3F70101020000000
  %2728 = bitcast float %2652 to i32
  %2729 = ashr i32 %2728, 1
  %2730 = sub nsw i32 1597463174, %2729
  %2731 = bitcast i32 %2730 to float
  %2732 = fmul fast float %2652, 5.000000e-01
  %2733 = fmul fast float %2731, %2731
  %2734 = fmul fast float %2733, %2732
  %2735 = fsub fast float 1.500000e+00, %2734
  %2736 = fmul fast float %2731, %2652
  %2737 = fmul fast float %2736, %2735
  %2738 = bitcast float %2653 to i32
  %2739 = ashr i32 %2738, 1
  %2740 = sub nsw i32 1597463174, %2739
  %2741 = bitcast i32 %2740 to float
  %2742 = fmul fast float %2653, 5.000000e-01
  %2743 = fmul fast float %2741, %2741
  %2744 = fmul fast float %2743, %2742
  %2745 = fsub fast float 1.500000e+00, %2744
  %2746 = fmul fast float %2741, %2653
  %2747 = fmul fast float %2746, %2745
  %2748 = bitcast float %2654 to i32
  %2749 = ashr i32 %2748, 1
  %2750 = sub nsw i32 1597463174, %2749
  %2751 = bitcast i32 %2750 to float
  %2752 = fmul fast float %2654, 5.000000e-01
  %2753 = fmul fast float %2751, %2751
  %2754 = fmul fast float %2753, %2752
  %2755 = fsub fast float 1.500000e+00, %2754
  %2756 = fmul fast float %2751, %2654
  %2757 = fmul fast float %2756, %2755
  %2758 = fsub fast float %2737, %2719
  %2759 = fsub fast float %2747, %2723
  %2760 = fsub fast float %2757, %2727
  %2761 = fmul fast float %2758, %2687
  %2762 = fmul fast float %2759, %2689
  %2763 = fmul fast float %2760, %2694
  %2764 = fadd fast float %2761, %2702
  %2765 = fadd fast float %2762, %2706
  %2766 = fadd fast float %2763, %2710
  %2767 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  %2768 = call float @dx.op.unary.f32(i32 7, float %2765)  ; Saturate(value)
  %2769 = call float @dx.op.unary.f32(i32 7, float %2766)  ; Saturate(value)
  %2770 = fmul fast float %2767, %2767
  %2771 = fmul fast float %2768, %2768
  %2772 = fmul fast float %2769, %2769
  %2773 = fsub fast float %2770, %2652
  %2774 = fsub fast float %2771, %2653
  %2775 = fsub fast float %2772, %2654
  %2776 = fmul fast float %2773, %2677
  %2777 = fmul fast float %2774, %2677
  %2778 = fmul fast float %2775, %2677
  %2779 = fadd fast float %2776, %2652
  %2780 = fadd fast float %2777, %2653
  %2781 = fadd fast float %2778, %2654
  %2782 = fadd fast float %2699, %2663
  %2783 = fsub fast float %2782, %2716
  %2784 = call float @dx.op.unary.f32(i32 7, float %2783)  ; Saturate(value)
  %2785 = fsub fast float %2784, %2663
  %2786 = fmul fast float %2785, %2677
  %2787 = fadd fast float %2786, %2663
  br label %2841

; <label>:2788                                    ; preds = %2676
  %2789 = and i32 %2679, 134217728
  %2790 = icmp eq i32 %2789, 0
  br i1 %2790, label %2825, label %2791

; <label>:2791                                    ; preds = %2788
  %2792 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %2793 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %2794 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %2795 = fadd fast float %2792, -5.000000e-01
  %2796 = fadd fast float %2793, -5.000000e-01
  %2797 = fadd fast float %2794, -5.000000e-01
  %2798 = fmul fast float %2795, %2677
  %2799 = fmul fast float %2796, %2677
  %2800 = fmul fast float %2797, %2677
  %2801 = fadd fast float %2798, 5.000000e-01
  %2802 = fadd fast float %2799, 5.000000e-01
  %2803 = fadd fast float %2800, 5.000000e-01
  %2804 = call float @dx.op.unary.f32(i32 24, float %2652)  ; Sqrt(value)
  %2805 = call float @dx.op.unary.f32(i32 24, float %2653)  ; Sqrt(value)
  %2806 = call float @dx.op.unary.f32(i32 24, float %2654)  ; Sqrt(value)
  %2807 = fmul fast float %2801, 2.000000e+00
  %2808 = fsub fast float 1.000000e+00, %2807
  %2809 = fmul fast float %2808, %2804
  %2810 = fadd fast float %2809, %2807
  %2811 = fmul fast float %2810, %2804
  %2812 = fmul fast float %2802, 2.000000e+00
  %2813 = fsub fast float 1.000000e+00, %2812
  %2814 = fmul fast float %2813, %2805
  %2815 = fadd fast float %2814, %2812
  %2816 = fmul fast float %2815, %2805
  %2817 = fmul fast float %2803, 2.000000e+00
  %2818 = fsub fast float 1.000000e+00, %2817
  %2819 = fmul fast float %2818, %2806
  %2820 = fadd fast float %2819, %2817
  %2821 = fmul fast float %2820, %2806
  %2822 = fmul fast float %2811, %2811
  %2823 = fmul fast float %2816, %2816
  %2824 = fmul fast float %2821, %2821
  br label %2841

; <label>:2825                                    ; preds = %2788
  %2826 = fmul fast float %363, %363
  %2827 = fmul fast float %367, %367
  %2828 = fmul fast float %371, %371
  %2829 = fadd fast float %2826, -1.000000e+00
  %2830 = fadd fast float %2827, -1.000000e+00
  %2831 = fadd fast float %2828, -1.000000e+00
  %2832 = fmul fast float %2677, %2829
  %2833 = fmul fast float %2677, %2830
  %2834 = fmul fast float %2677, %2831
  %2835 = fadd fast float %2832, 1.000000e+00
  %2836 = fadd fast float %2833, 1.000000e+00
  %2837 = fadd fast float %2834, 1.000000e+00
  %2838 = fmul fast float %2835, %2652
  %2839 = fmul fast float %2836, %2653
  %2840 = fmul fast float %2837, %2654
  br label %2841

; <label>:2841                                    ; preds = %2825, %2791, %2682, %2638
  %2842 = phi float [ %2787, %2682 ], [ %2663, %2791 ], [ %2663, %2825 ], [ 0x3FA23C0BE0000000, %2638 ]
  %2843 = phi float [ %2779, %2682 ], [ %2822, %2791 ], [ %2838, %2825 ], [ 1.000000e+00, %2638 ]
  %2844 = phi float [ %2780, %2682 ], [ %2823, %2791 ], [ %2839, %2825 ], [ 1.000000e+00, %2638 ]
  %2845 = phi float [ %2781, %2682 ], [ %2824, %2791 ], [ %2840, %2825 ], [ 1.000000e+00, %2638 ]
  %2846 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2847 = extractvalue %dx.types.CBufRet.i32 %2846, 1
  %2848 = and i32 %2847, 1
  %2849 = icmp ne i32 %2848, 0
  %2850 = add i32 %50, 356
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = and i32 %2852, 32
  %2854 = icmp ne i32 %2853, 0
  %2855 = and i1 %2849, %2854
  %2856 = select i1 %2855, float 1.000000e+00, float %2843
  %2857 = select i1 %2855, float 0x3FD3333340000000, float %2844
  %2858 = select i1 %2855, float 0x3FD3333340000000, float %2845
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = and i32 %2860, 32
  %2862 = icmp eq i32 %2861, 0
  br i1 %2862, label %2935, label %2863

; <label>:2863                                    ; preds = %2841
  %2864 = add i32 %50, 124
  %2865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2866 = extractvalue %dx.types.ResRet.i32 %2865, 0
  %2867 = add i32 %50, 448
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = add i32 %2869, 0
  %2871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2872 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2871, %dx.types.Handle %95, float %2448, float %2449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2873 = extractvalue %dx.types.ResRet.f32 %2872, 0
  %2874 = extractvalue %dx.types.ResRet.f32 %2872, 1
  %2875 = extractvalue %dx.types.ResRet.f32 %2872, 2
  %2876 = extractvalue %dx.types.ResRet.f32 %2872, 3
  %2877 = and i32 %2866, 255
  %2878 = uitofp i32 %2877 to float
  %2879 = lshr i32 %2866, 8
  %2880 = and i32 %2879, 255
  %2881 = uitofp i32 %2880 to float
  %2882 = lshr i32 %2866, 16
  %2883 = and i32 %2882, 255
  %2884 = uitofp i32 %2883 to float
  %2885 = fmul fast float %2884, 0x3F70101000000000
  %2886 = fmul fast float %2873, %2878
  %2887 = fadd fast float %2886, %2881
  %2888 = fmul fast float %2887, 0x3F70101000000000
  %2889 = fadd fast float %2874, -5.000000e-01
  %2890 = fadd fast float %2876, -5.000000e-01
  %2891 = fmul fast float %2889, %2885
  %2892 = fmul fast float %2890, %2885
  %2893 = fadd fast float %2891, 5.000000e-01
  %2894 = fadd fast float %2892, 5.000000e-01
  %2895 = fmul fast float %2893, 2.000000e+00
  %2896 = fadd fast float %2895, -1.000000e+00
  %2897 = fmul fast float %2894, 2.000000e+00
  %2898 = fadd fast float %2897, -1.000000e+00
  %2899 = fadd fast float %2896, %2898
  %2900 = fmul fast float %2899, 5.000000e-01
  %2901 = fsub fast float %2896, %2898
  %2902 = fmul fast float %2901, 5.000000e-01
  %2903 = call float @dx.op.unary.f32(i32 6, float %2900)  ; FAbs(value)
  %2904 = fsub fast float 1.000000e+00, %2903
  %2905 = call float @dx.op.unary.f32(i32 6, float %2902)  ; FAbs(value)
  %2906 = fsub fast float %2904, %2905
  %2907 = call float @dx.op.dot3.f32(i32 55, float %2900, float %2902, float %2906, float %2900, float %2902, float %2906)  ; Dot3(ax,ay,az,bx,by,bz)
  %2908 = call float @dx.op.unary.f32(i32 25, float %2907)  ; Rsqrt(value)
  %2909 = fmul fast float %2900, %2908
  %2910 = fmul fast float %2902, %2908
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = and i32 %2912, 67108864
  %2914 = icmp eq i32 %2913, 0
  br i1 %2914, label %2931, label %2915

; <label>:2915                                    ; preds = %2863
  %2916 = add i32 %50, 312
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2916, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = and i32 %2918, 65535
  %2920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2919)  ; LegacyF16ToF32(value)
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = and i32 %2922, 65535
  %2924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2923)  ; LegacyF16ToF32(value)
  %2925 = lshr i32 %2918, 16
  %2926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2925)  ; LegacyF16ToF32(value)
  %2927 = fsub fast float %2888, %2926
  %2928 = fmul fast float %2927, %2920
  %2929 = fadd fast float %2928, %2924
  %2930 = call float @dx.op.unary.f32(i32 7, float %2929)  ; Saturate(value)
  br label %2931

; <label>:2931                                    ; preds = %2915, %2863
  %2932 = phi float [ %2930, %2915 ], [ %2888, %2863 ]
  %2933 = call float @dx.op.dot2.f32(i32 54, float %2909, float %2910, float %2352, float %2353)  ; Dot2(ax,ay,bx,by)
  %2934 = call float @dx.op.dot2.f32(i32 54, float %2909, float %2910, float %2354, float %2355)  ; Dot2(ax,ay,bx,by)
  br label %2935

; <label>:2935                                    ; preds = %2931, %2841
  %2936 = phi float [ %2932, %2931 ], [ 0x3FD6666660000000, %2841 ]
  %2937 = phi float [ %2933, %2931 ], [ 0.000000e+00, %2841 ]
  %2938 = phi float [ %2934, %2931 ], [ 0.000000e+00, %2841 ]
  %2939 = phi float [ %2875, %2931 ], [ 1.000000e+00, %2841 ]
  %2940 = add i32 %50, 192
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = lshr i32 %2942, 22
  %2944 = shl nuw nsw i32 %2943, 5
  %2945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2944)  ; LegacyF16ToF32(value)
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = and i32 %2947, 64
  %2949 = icmp eq i32 %2948, 0
  br i1 %2949, label %2983, label %2950

; <label>:2950                                    ; preds = %2935
  %2951 = add i32 %50, 464
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = add i32 %2953, 0
  %2955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2954, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = and i32 %2957, 131072
  %2959 = icmp eq i32 %2958, 0
  %2960 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2955, %dx.types.Handle %95, float %2448, float %2449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2961 = extractvalue %dx.types.ResRet.f32 %2960, 0
  %2962 = extractvalue %dx.types.ResRet.f32 %2960, 1
  %2963 = extractvalue %dx.types.ResRet.f32 %2960, 2
  %2964 = fmul fast float %2961, %351
  %2965 = fmul fast float %2962, %354
  %2966 = fmul fast float %2963, %357
  br i1 %2959, label %2973, label %2967

; <label>:2967                                    ; preds = %2950
  %2968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2969 = extractvalue %dx.types.CBufRet.f32 %2968, 0
  %2970 = fmul fast float %2969, %2964
  %2971 = fmul fast float %2969, %2965
  %2972 = fmul fast float %2969, %2966
  br label %2973

; <label>:2973                                    ; preds = %2967, %2950
  %2974 = phi float [ %2970, %2967 ], [ %2964, %2950 ]
  %2975 = phi float [ %2971, %2967 ], [ %2965, %2950 ]
  %2976 = phi float [ %2972, %2967 ], [ %2966, %2950 ]
  %2977 = fmul fast float %2974, %2945
  %2978 = select i1 %247, float %2977, float %2974
  %2979 = call float @dx.op.dot3.f32(i32 55, float %2978, float %2975, float %2976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2980 = select i1 %247, float 0.000000e+00, float %2974
  %2981 = select i1 %247, float %2979, float %2975
  %2982 = select i1 %247, float 0.000000e+00, float %2976
  br label %2983

; <label>:2983                                    ; preds = %2973, %2935
  %2984 = phi float [ %2980, %2973 ], [ 0.000000e+00, %2935 ]
  %2985 = phi float [ %2981, %2973 ], [ 0.000000e+00, %2935 ]
  %2986 = phi float [ %2982, %2973 ], [ 0.000000e+00, %2935 ]
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = and i32 %2988, 1024
  %2990 = icmp eq i32 %2989, 0
  br i1 %2990, label %3021, label %2991

; <label>:2991                                    ; preds = %2983
  %2992 = add i32 %50, 184
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = and i32 %2994, 255
  %2996 = uitofp i32 %2995 to float
  %2997 = fmul fast float %2996, 0x3F70101020000000
  %2998 = lshr i32 %2994, 8
  %2999 = and i32 %2998, 255
  %3000 = uitofp i32 %2999 to float
  %3001 = fmul fast float %3000, 0x3F70101020000000
  %3002 = lshr i32 %2994, 16
  %3003 = and i32 %3002, 255
  %3004 = uitofp i32 %3003 to float
  %3005 = fmul fast float %3004, 0x3F70101020000000
  %3006 = fmul fast float %2997, %2997
  %3007 = fmul fast float %3001, %3001
  %3008 = fmul fast float %3005, %3005
  %3009 = add i32 %50, 532
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = add i32 %3011, 0
  %3013 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3012, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3014 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3013, %dx.types.Handle %96, float %2448, float %2449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3015 = extractvalue %dx.types.ResRet.f32 %3014, 0
  %3016 = extractvalue %dx.types.ResRet.f32 %3014, 1
  %3017 = extractvalue %dx.types.ResRet.f32 %3014, 2
  %3018 = fmul fast float %3006, %3015
  %3019 = fmul fast float %3007, %3016
  %3020 = fmul fast float %3008, %3017
  br label %3021

; <label>:3021                                    ; preds = %2991, %2983
  %3022 = phi float [ %3018, %2991 ], [ 0.000000e+00, %2983 ]
  %3023 = phi float [ %3019, %2991 ], [ 0.000000e+00, %2983 ]
  %3024 = phi float [ %3020, %2991 ], [ 0.000000e+00, %2983 ]
  %3025 = fcmp fast ogt float %3022, 0.000000e+00
  %3026 = fcmp fast ogt float %3023, 0.000000e+00
  %3027 = fcmp fast ogt float %3024, 0.000000e+00
  %3028 = call float @dx.op.unary.f32(i32 23, float %3022)  ; Log(value)
  %3029 = call float @dx.op.unary.f32(i32 23, float %3023)  ; Log(value)
  %3030 = call float @dx.op.unary.f32(i32 23, float %3024)  ; Log(value)
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = lshr i32 %3032, 7
  %3034 = and i32 %3033, 32752
  %3035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3034)  ; LegacyF16ToF32(value)
  %3036 = fmul fast float %3028, 0xBFE62E4300000000
  %3037 = fmul fast float %3036, %3035
  %3038 = fmul fast float %3029, 0xBFE62E4300000000
  %3039 = fmul fast float %3038, %3035
  %3040 = fmul fast float %3030, 0xBFE62E4300000000
  %3041 = fmul fast float %3040, %3035
  %3042 = select i1 %3025, float %3037, float 1.270000e+02
  %3043 = select i1 %3026, float %3039, float 1.270000e+02
  %3044 = select i1 %3027, float %3041, float 1.270000e+02
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = and i32 %3046, 10240
  %3048 = icmp eq i32 %3047, 0
  br i1 %3048, label %3093, label %3049

; <label>:3049                                    ; preds = %3021
  %3050 = add i32 %50, 548
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = add i32 %3052, 0
  %3054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3053, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3055 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3054, %dx.types.Handle %96, float %2448, float %2449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3056 = extractvalue %dx.types.ResRet.f32 %3055, 1
  %3057 = extractvalue %dx.types.ResRet.f32 %3055, 3
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = and i32 %3059, 1048576
  %3061 = icmp ne i32 %3060, 0
  %3062 = and i32 %3059, 8192
  %3063 = icmp eq i32 %3062, 0
  br i1 %3063, label %3079, label %3064

; <label>:3064                                    ; preds = %3049
  %3065 = extractvalue %dx.types.ResRet.f32 %3055, 2
  %3066 = select i1 %3061, float %3065, float %3056
  %3067 = extractvalue %dx.types.ResRet.f32 %3055, 0
  %3068 = select i1 %3061, float %3067, float %3056
  %3069 = add i32 %50, 128
  %3070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3069, i32 undef)  ; BufferLoad(srv,index,wot)
  %3071 = extractvalue %dx.types.ResRet.i32 %3070, 0
  %3072 = lshr i32 %3071, 16
  %3073 = and i32 %3072, 255
  %3074 = uitofp i32 %3073 to float
  %3075 = fmul fast float %3074, 0x3F80101020000000
  %3076 = fmul fast float %3075, %3068
  %3077 = fmul fast float %3075, %3056
  %3078 = fmul fast float %3075, %3066
  br label %3079

; <label>:3079                                    ; preds = %3064, %3049
  %3080 = phi float [ %3076, %3064 ], [ 0.000000e+00, %3049 ]
  %3081 = phi float [ %3077, %3064 ], [ 0.000000e+00, %3049 ]
  %3082 = phi float [ %3078, %3064 ], [ 0.000000e+00, %3049 ]
  %3083 = and i32 %3059, 2048
  %3084 = icmp eq i32 %3083, 0
  br i1 %3084, label %3093, label %3085

; <label>:3085                                    ; preds = %3079
  %3086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3087 = extractvalue %dx.types.ResRet.i32 %3086, 0
  %3088 = shl i32 %3087, 4
  %3089 = and i32 %3088, 32752
  %3090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3089)  ; LegacyF16ToF32(value)
  %3091 = fmul fast float %3090, %3057
  %3092 = call float @dx.op.binary.f32(i32 35, float %3091, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3093

; <label>:3093                                    ; preds = %3085, %3079, %3021
  %3094 = phi float [ %3080, %3085 ], [ %3080, %3079 ], [ 0.000000e+00, %3021 ]
  %3095 = phi float [ %3081, %3085 ], [ %3081, %3079 ], [ 0.000000e+00, %3021 ]
  %3096 = phi float [ %3082, %3085 ], [ %3082, %3079 ], [ 0.000000e+00, %3021 ]
  %3097 = phi float [ %3092, %3085 ], [ 0x3F70101020000000, %3079 ], [ 0x3F70101020000000, %3021 ]
  %3098 = add i32 %50, 128
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3098, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = and i32 %3100, 255
  %3102 = uitofp i32 %3101 to float
  %3103 = lshr i32 %3100, 8
  %3104 = and i32 %3103, 255
  %3105 = uitofp i32 %3104 to float
  %3106 = call float @dx.op.dot3.f32(i32 55, float %2856, float %2857, float %2858, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3107 = fmul fast float %3105, %3106
  %3108 = fadd fast float %3107, %3102
  %3109 = fmul fast float %3108, 0x3F70101020000000
  %3110 = call float @dx.op.unary.f32(i32 7, float %3109)  ; Saturate(value)
  br i1 %2340, label %3111, label %3146

; <label>:3111                                    ; preds = %3093
  %3112 = fmul fast float %3097, 2.000000e+00
  %3113 = fcmp fast olt float %3042, 1.270000e+02
  %3114 = fcmp fast olt float %3043, 1.270000e+02
  %3115 = fcmp fast olt float %3044, 1.270000e+02
  %3116 = fmul fast float %3042, 0xBFF7154760000000
  %3117 = fmul fast float %3116, %3112
  %3118 = fmul fast float %3043, 0xBFF7154760000000
  %3119 = fmul fast float %3118, %3112
  %3120 = fmul fast float %3044, 0xBFF7154760000000
  %3121 = fmul fast float %3120, %3112
  %3122 = call float @dx.op.unary.f32(i32 21, float %3117)  ; Exp(value)
  %3123 = call float @dx.op.unary.f32(i32 21, float %3119)  ; Exp(value)
  %3124 = call float @dx.op.unary.f32(i32 21, float %3121)  ; Exp(value)
  %3125 = call float @dx.op.unary.f32(i32 7, float %3122)  ; Saturate(value)
  %3126 = call float @dx.op.unary.f32(i32 7, float %3123)  ; Saturate(value)
  %3127 = call float @dx.op.unary.f32(i32 7, float %3124)  ; Saturate(value)
  %3128 = fadd fast float %3125, -1.000000e+00
  %3129 = select i1 %3113, float %3128, float -1.000000e+00
  %3130 = fadd fast float %3126, -1.000000e+00
  %3131 = select i1 %3114, float %3130, float -1.000000e+00
  %3132 = fadd fast float %3127, -1.000000e+00
  %3133 = select i1 %3115, float %3132, float -1.000000e+00
  %3134 = fmul fast float %3129, %2636
  %3135 = fmul fast float %3131, %2636
  %3136 = fmul fast float %3133, %2636
  %3137 = fadd fast float %3134, 1.000000e+00
  %3138 = fadd fast float %3135, 1.000000e+00
  %3139 = fadd fast float %3136, 1.000000e+00
  %3140 = fmul fast float %3137, %2322
  %3141 = fmul fast float %3138, %2323
  %3142 = fmul fast float %3139, %2324
  %3143 = fmul fast float %3137, %2325
  %3144 = fmul fast float %3138, %2326
  %3145 = fmul fast float %3139, %2327
  br label %3146

; <label>:3146                                    ; preds = %3111, %3093
  %3147 = phi float [ %3140, %3111 ], [ %2322, %3093 ]
  %3148 = phi float [ %3141, %3111 ], [ %2323, %3093 ]
  %3149 = phi float [ %3142, %3111 ], [ %2324, %3093 ]
  %3150 = phi float [ %3143, %3111 ], [ %2325, %3093 ]
  %3151 = phi float [ %3144, %3111 ], [ %2326, %3093 ]
  %3152 = phi float [ %3145, %3111 ], [ %2327, %3093 ]
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = and i32 %3154, 3
  %3156 = icmp eq i32 %3155, 3
  br i1 %3156, label %3235, label %3157

; <label>:3157                                    ; preds = %3146
  %3158 = and i32 %3154, 16
  %3159 = icmp ne i32 %3158, 0
  %3160 = select i1 %3159, float %2636, float 0.000000e+00
  %3161 = icmp eq i32 %3155, 0
  br i1 %3161, label %3162, label %3190

; <label>:3162                                    ; preds = %3157
  %3163 = and i32 %3154, 64
  %3164 = icmp ne i32 %3163, 0
  %3165 = select i1 %3164, float %2636, float 0.000000e+00
  %3166 = fsub fast float %2856, %3147
  %3167 = fsub fast float %2857, %3148
  %3168 = fsub fast float %2858, %3149
  %3169 = fmul fast float %3160, %3166
  %3170 = fmul fast float %3160, %3167
  %3171 = fmul fast float %3160, %3168
  %3172 = fadd fast float %3169, %3147
  %3173 = fadd fast float %3170, %3148
  %3174 = fadd fast float %3171, %3149
  %3175 = fsub fast float %2842, %2334
  %3176 = fmul fast float %3160, %3175
  %3177 = fadd fast float %3176, %2334
  %3178 = fsub fast float %2984, %3150
  %3179 = fsub fast float %2985, %3151
  %3180 = fsub fast float %2986, %3152
  %3181 = fmul fast float %3165, %3178
  %3182 = fmul fast float %3165, %3179
  %3183 = fmul fast float %3165, %3180
  %3184 = fadd fast float %3181, %3150
  %3185 = fadd fast float %3182, %3151
  %3186 = fadd fast float %3183, %3152
  %3187 = fsub fast float %3110, %2338
  %3188 = fmul fast float %3160, %3187
  %3189 = fadd fast float %3188, %2338
  br label %3235

; <label>:3190                                    ; preds = %3157
  %3191 = icmp eq i32 %3155, 1
  br i1 %3191, label %3192, label %3205

; <label>:3192                                    ; preds = %3190
  %3193 = fadd fast float %2856, -1.000000e+00
  %3194 = fadd fast float %2857, -1.000000e+00
  %3195 = fadd fast float %2858, -1.000000e+00
  %3196 = fmul fast float %3160, %3193
  %3197 = fmul fast float %3160, %3194
  %3198 = fmul fast float %3160, %3195
  %3199 = fadd fast float %3196, 1.000000e+00
  %3200 = fadd fast float %3197, 1.000000e+00
  %3201 = fadd fast float %3198, 1.000000e+00
  %3202 = fmul fast float %3199, %3147
  %3203 = fmul fast float %3200, %3148
  %3204 = fmul fast float %3201, %3149
  br label %3235

; <label>:3205                                    ; preds = %3190
  %3206 = icmp eq i32 %3155, 2
  br i1 %3206, label %3207, label %3235

; <label>:3207                                    ; preds = %3205
  %3208 = call float @dx.op.unary.f32(i32 24, float %2856)  ; Sqrt(value)
  %3209 = call float @dx.op.unary.f32(i32 24, float %2857)  ; Sqrt(value)
  %3210 = call float @dx.op.unary.f32(i32 24, float %2858)  ; Sqrt(value)
  %3211 = fadd fast float %3208, -5.000000e-01
  %3212 = fadd fast float %3209, -5.000000e-01
  %3213 = fadd fast float %3210, -5.000000e-01
  %3214 = fmul fast float %3211, %3160
  %3215 = fmul fast float %3212, %3160
  %3216 = fmul fast float %3213, %3160
  %3217 = fadd fast float %3214, 5.000000e-01
  %3218 = fadd fast float %3215, 5.000000e-01
  %3219 = fadd fast float %3216, 5.000000e-01
  %3220 = fmul fast float %3217, 2.000000e+00
  %3221 = fsub fast float 1.000000e+00, %3220
  %3222 = fmul fast float %3221, %3147
  %3223 = fadd fast float %3222, %3220
  %3224 = fmul fast float %3223, %3147
  %3225 = fmul fast float %3218, 2.000000e+00
  %3226 = fsub fast float 1.000000e+00, %3225
  %3227 = fmul fast float %3226, %3148
  %3228 = fadd fast float %3227, %3225
  %3229 = fmul fast float %3228, %3148
  %3230 = fmul fast float %3219, 2.000000e+00
  %3231 = fsub fast float 1.000000e+00, %3230
  %3232 = fmul fast float %3231, %3149
  %3233 = fadd fast float %3232, %3230
  %3234 = fmul fast float %3233, %3149
  br label %3235

; <label>:3235                                    ; preds = %3207, %3205, %3192, %3162, %3146
  %3236 = phi float [ %3147, %3146 ], [ %3224, %3207 ], [ %3147, %3205 ], [ %3202, %3192 ], [ %3172, %3162 ]
  %3237 = phi float [ %3148, %3146 ], [ %3229, %3207 ], [ %3148, %3205 ], [ %3203, %3192 ], [ %3173, %3162 ]
  %3238 = phi float [ %3149, %3146 ], [ %3234, %3207 ], [ %3149, %3205 ], [ %3204, %3192 ], [ %3174, %3162 ]
  %3239 = phi float [ %3150, %3146 ], [ %3150, %3207 ], [ %3150, %3205 ], [ %3150, %3192 ], [ %3184, %3162 ]
  %3240 = phi float [ %3151, %3146 ], [ %3151, %3207 ], [ %3151, %3205 ], [ %3151, %3192 ], [ %3185, %3162 ]
  %3241 = phi float [ %3152, %3146 ], [ %3152, %3207 ], [ %3152, %3205 ], [ %3152, %3192 ], [ %3186, %3162 ]
  %3242 = phi float [ %2334, %3146 ], [ %2334, %3207 ], [ %2334, %3205 ], [ %2334, %3192 ], [ %3177, %3162 ]
  %3243 = phi float [ %2338, %3146 ], [ %2338, %3207 ], [ %2338, %3205 ], [ %2338, %3192 ], [ %3189, %3162 ]
  %3244 = and i32 %3154, 12
  %3245 = icmp eq i32 %3244, 12
  br i1 %3245, label %3376, label %3246

; <label>:3246                                    ; preds = %3235
  %3247 = and i32 %3154, 2097184
  %3248 = icmp eq i32 %3247, 2097184
  %3249 = select i1 %3248, float %2636, float 0.000000e+00
  %3250 = and i32 %3154, 4194336
  %3251 = icmp eq i32 %3250, 4194336
  %3252 = select i1 %3251, float %2636, float 0.000000e+00
  %3253 = and i32 %3154, 8388640
  %3254 = icmp eq i32 %3253, 8388640
  %3255 = select i1 %3254, float %2636, float 0.000000e+00
  %3256 = and i32 %3154, 1024
  %3257 = icmp ne i32 %3256, 0
  %3258 = select i1 %3257, float %2636, float 0.000000e+00
  %3259 = and i32 %3154, 2048
  %3260 = icmp ne i32 %3259, 0
  %3261 = select i1 %3260, float %2636, float 0.000000e+00
  %3262 = and i32 %3154, 8192
  %3263 = icmp ne i32 %3262, 0
  %3264 = select i1 %3263, float %2636, float 0.000000e+00
  %3265 = icmp eq i32 %3244, 0
  br i1 %3265, label %3266, label %3300

; <label>:3266                                    ; preds = %3246
  %3267 = fsub fast float %2937, %2320
  %3268 = fsub fast float %2938, %2321
  %3269 = fmul fast float %3249, %3267
  %3270 = fmul fast float %3249, %3268
  %3271 = fadd fast float %3269, %2320
  %3272 = fadd fast float %3270, %2321
  %3273 = fsub fast float %2939, %2336
  %3274 = fmul fast float %3252, %3273
  %3275 = fadd fast float %3274, %2336
  %3276 = fsub fast float %2936, %2335
  %3277 = fmul fast float %3255, %3276
  %3278 = fadd fast float %3277, %2335
  %3279 = fsub fast float %3042, %2331
  %3280 = fsub fast float %3043, %2332
  %3281 = fsub fast float %3044, %2333
  %3282 = fmul fast float %3258, %3279
  %3283 = fmul fast float %3258, %3280
  %3284 = fmul fast float %3258, %3281
  %3285 = fadd fast float %3282, %2331
  %3286 = fadd fast float %3283, %2332
  %3287 = fadd fast float %3284, %2333
  %3288 = fsub fast float %3097, %2337
  %3289 = fmul fast float %3261, %3288
  %3290 = fadd fast float %3289, %2337
  %3291 = fsub fast float %3094, %2328
  %3292 = fsub fast float %3095, %2329
  %3293 = fsub fast float %3096, %2330
  %3294 = fmul fast float %3264, %3291
  %3295 = fmul fast float %3264, %3292
  %3296 = fmul fast float %3264, %3293
  %3297 = fadd fast float %3294, %2328
  %3298 = fadd fast float %3295, %2329
  %3299 = fadd fast float %3296, %2330
  br label %3376

; <label>:3300                                    ; preds = %3246
  %3301 = icmp eq i32 %3244, 4
  br i1 %3301, label %3302, label %3348

; <label>:3302                                    ; preds = %3300
  %3303 = fmul fast float %3249, %2937
  %3304 = fmul fast float %3249, %2938
  %3305 = fadd fast float %3303, %2320
  %3306 = fadd fast float %3304, %2321
  %3307 = call float @dx.op.binary.f32(i32 36, float %2336, float %2939)  ; FMin(a,b)
  %3308 = fsub fast float %3307, %2336
  %3309 = fmul fast float %3308, %3252
  %3310 = fadd fast float %3309, %2336
  %3311 = fadd fast float %2936, %2335
  %3312 = fmul fast float %3311, 0x3FF337FAE0000000
  %3313 = fmul fast float %2335, %2335
  %3314 = fmul fast float %2936, %2936
  %3315 = fadd fast float %3314, %3313
  %3316 = fmul fast float %3315, 0x3FE5152B00000000
  %3317 = fmul fast float %2335, 0xBFCC1F85E0000000
  %3318 = fmul fast float %3317, %2936
  %3319 = fadd fast float %3318, 0xBFE1363700000000
  %3320 = fadd fast float %3319, %3312
  %3321 = fsub fast float %3320, %3316
  %3322 = fmul fast float %3311, 0x3FBA6F0D00000000
  %3323 = fmul fast float %3315, 0x3FD0432880000000
  %3324 = fmul fast float %2335, 0xBFEF110800000000
  %3325 = fmul fast float %3324, %2936
  %3326 = fadd fast float %3325, 1.000000e+00
  %3327 = fsub fast float %3326, %3322
  %3328 = fadd fast float %3327, %3323
  %3329 = fdiv fast float %3321, %3328
  %3330 = call float @dx.op.unary.f32(i32 7, float %3329)  ; Saturate(value)
  %3331 = fsub fast float %3330, %2335
  %3332 = fmul fast float %3331, %3255
  %3333 = fadd fast float %3332, %2335
  %3334 = fmul fast float %3258, %3042
  %3335 = fmul fast float %3258, %3043
  %3336 = fmul fast float %3258, %3044
  %3337 = fadd fast float %3334, %2331
  %3338 = fadd fast float %3335, %2332
  %3339 = fadd fast float %3336, %2333
  %3340 = fmul fast float %3261, %3097
  %3341 = fadd fast float %3340, %2337
  %3342 = fmul fast float %3264, %3094
  %3343 = fmul fast float %3264, %3095
  %3344 = fmul fast float %3264, %3096
  %3345 = fadd fast float %3342, %2328
  %3346 = fadd fast float %3343, %2329
  %3347 = fadd fast float %3344, %2330
  br label %3376

; <label>:3348                                    ; preds = %3300
  %3349 = icmp eq i32 %3244, 8
  br i1 %3349, label %3350, label %3376

; <label>:3350                                    ; preds = %3348
  %3351 = fmul fast float %3249, %2937
  %3352 = fmul fast float %3249, %2938
  %3353 = fadd fast float %3351, %2320
  %3354 = fadd fast float %3352, %2321
  %3355 = call float @dx.op.binary.f32(i32 36, float %2336, float %2939)  ; FMin(a,b)
  %3356 = fsub fast float %3355, %2336
  %3357 = fmul fast float %3356, %3252
  %3358 = fadd fast float %3357, %2336
  %3359 = fsub fast float %2936, %2335
  %3360 = fmul fast float %3255, %3359
  %3361 = fadd fast float %3360, %2335
  %3362 = fmul fast float %3258, %3042
  %3363 = fmul fast float %3258, %3043
  %3364 = fmul fast float %3258, %3044
  %3365 = fadd fast float %3362, %2331
  %3366 = fadd fast float %3363, %2332
  %3367 = fadd fast float %3364, %2333
  %3368 = fmul fast float %3261, %3097
  %3369 = fadd fast float %3368, %2337
  %3370 = fmul fast float %3264, %3094
  %3371 = fmul fast float %3264, %3095
  %3372 = fmul fast float %3264, %3096
  %3373 = fadd fast float %3370, %2328
  %3374 = fadd fast float %3371, %2329
  %3375 = fadd fast float %3372, %2330
  br label %3376

; <label>:3376                                    ; preds = %3350, %3348, %3302, %3266, %3235, %2635, %2339, %2319
  %3377 = phi float [ %2320, %3235 ], [ %2320, %2635 ], [ %2320, %2319 ], [ %3353, %3350 ], [ %2320, %3348 ], [ %3305, %3302 ], [ %3271, %3266 ], [ %2320, %2339 ]
  %3378 = phi float [ %2321, %3235 ], [ %2321, %2635 ], [ %2321, %2319 ], [ %3354, %3350 ], [ %2321, %3348 ], [ %3306, %3302 ], [ %3272, %3266 ], [ %2321, %2339 ]
  %3379 = phi float [ %3236, %3235 ], [ %2322, %2635 ], [ %2322, %2319 ], [ %3236, %3350 ], [ %3236, %3348 ], [ %3236, %3302 ], [ %3236, %3266 ], [ %2322, %2339 ]
  %3380 = phi float [ %3237, %3235 ], [ %2323, %2635 ], [ %2323, %2319 ], [ %3237, %3350 ], [ %3237, %3348 ], [ %3237, %3302 ], [ %3237, %3266 ], [ %2323, %2339 ]
  %3381 = phi float [ %3238, %3235 ], [ %2324, %2635 ], [ %2324, %2319 ], [ %3238, %3350 ], [ %3238, %3348 ], [ %3238, %3302 ], [ %3238, %3266 ], [ %2324, %2339 ]
  %3382 = phi float [ %3239, %3235 ], [ %2325, %2635 ], [ %2325, %2319 ], [ %3239, %3350 ], [ %3239, %3348 ], [ %3239, %3302 ], [ %3239, %3266 ], [ %2325, %2339 ]
  %3383 = phi float [ %3240, %3235 ], [ %2326, %2635 ], [ %2326, %2319 ], [ %3240, %3350 ], [ %3240, %3348 ], [ %3240, %3302 ], [ %3240, %3266 ], [ %2326, %2339 ]
  %3384 = phi float [ %3241, %3235 ], [ %2327, %2635 ], [ %2327, %2319 ], [ %3241, %3350 ], [ %3241, %3348 ], [ %3241, %3302 ], [ %3241, %3266 ], [ %2327, %2339 ]
  %3385 = phi float [ %2328, %3235 ], [ %2328, %2635 ], [ %2328, %2319 ], [ %3373, %3350 ], [ %2328, %3348 ], [ %3345, %3302 ], [ %3297, %3266 ], [ %2328, %2339 ]
  %3386 = phi float [ %2329, %3235 ], [ %2329, %2635 ], [ %2329, %2319 ], [ %3374, %3350 ], [ %2329, %3348 ], [ %3346, %3302 ], [ %3298, %3266 ], [ %2329, %2339 ]
  %3387 = phi float [ %2330, %3235 ], [ %2330, %2635 ], [ %2330, %2319 ], [ %3375, %3350 ], [ %2330, %3348 ], [ %3347, %3302 ], [ %3299, %3266 ], [ %2330, %2339 ]
  %3388 = phi float [ %2331, %3235 ], [ %2331, %2635 ], [ %2331, %2319 ], [ %3365, %3350 ], [ %2331, %3348 ], [ %3337, %3302 ], [ %3285, %3266 ], [ %2331, %2339 ]
  %3389 = phi float [ %2332, %3235 ], [ %2332, %2635 ], [ %2332, %2319 ], [ %3366, %3350 ], [ %2332, %3348 ], [ %3338, %3302 ], [ %3286, %3266 ], [ %2332, %2339 ]
  %3390 = phi float [ %2333, %3235 ], [ %2333, %2635 ], [ %2333, %2319 ], [ %3367, %3350 ], [ %2333, %3348 ], [ %3339, %3302 ], [ %3287, %3266 ], [ %2333, %2339 ]
  %3391 = phi float [ %3242, %3235 ], [ %2334, %2635 ], [ %2334, %2319 ], [ %3242, %3350 ], [ %3242, %3348 ], [ %3242, %3302 ], [ %3242, %3266 ], [ %2334, %2339 ]
  %3392 = phi float [ %2335, %3235 ], [ %2335, %2635 ], [ %2335, %2319 ], [ %3361, %3350 ], [ %2335, %3348 ], [ %3333, %3302 ], [ %3278, %3266 ], [ %2335, %2339 ]
  %3393 = phi float [ %2336, %3235 ], [ %2336, %2635 ], [ %2336, %2319 ], [ %3358, %3350 ], [ %2336, %3348 ], [ %3310, %3302 ], [ %3275, %3266 ], [ %2336, %2339 ]
  %3394 = phi float [ %2337, %3235 ], [ %2337, %2635 ], [ %2337, %2319 ], [ %3369, %3350 ], [ %2337, %3348 ], [ %3341, %3302 ], [ %3290, %3266 ], [ %2337, %2339 ]
  %3395 = phi float [ %3243, %3235 ], [ %2338, %2635 ], [ %2338, %2319 ], [ %3243, %3350 ], [ %3243, %3348 ], [ %3243, %3302 ], [ %3243, %3266 ], [ %2338, %2339 ]
  br i1 %438, label %4433, label %3396

; <label>:3396                                    ; preds = %3376
  %3397 = icmp ult i32 %492, 4
  %3398 = add i32 %50, 72
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = add i32 %50, 76
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = or i32 %3403, %3400
  %3405 = icmp eq i32 %3404, 0
  br i1 %3405, label %4433, label %3406

; <label>:3406                                    ; preds = %3396
  %3407 = and i32 %3400, 262144
  %3408 = icmp ne i32 %3407, 0
  %3409 = select i1 %3408, float %53, float 1.000000e+00
  %3410 = select i1 %3408, float %54, float 0.000000e+00
  %3411 = select i1 %3408, float %55, float 0.000000e+00
  %3412 = select i1 %3408, float %56, float 1.000000e+00
  %3413 = select i1 %3408, float %57, float %78
  %3414 = select i1 %3408, float %58, float %79
  %3415 = add i32 %50, 332
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = lshr i32 %3417, 16
  %3419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3418)  ; LegacyF16ToF32(value)
  %3420 = fmul fast float %3419, 0x3F50624DE0000000
  %3421 = add i32 %50, 136
  %3422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.i32 %3422, 0
  %3424 = lshr i32 %3423, 16
  %3425 = and i32 %3424, 255
  %3426 = lshr i32 %3423, 24
  %3427 = add i32 %50, 340
  %3428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.i32 %3428, 0
  %3430 = and i32 %3429, 65535
  %3431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3430)  ; LegacyF16ToF32(value)
  %3432 = lshr i32 %3429, 16
  %3433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3432)  ; LegacyF16ToF32(value)
  %3434 = add i32 %50, 80
  %3435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3434, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.i32 %3435, 0
  %3437 = lshr i32 %3436, 22
  %3438 = shl nuw nsw i32 %3437, 5
  %3439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3438)  ; LegacyF16ToF32(value)
  %3440 = shl i32 %3436, 4
  %3441 = and i32 %3440, 32752
  %3442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3441)  ; LegacyF16ToF32(value)
  %3443 = lshr i32 %3436, 7
  %3444 = and i32 %3443, 32752
  %3445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3444)  ; LegacyF16ToF32(value)
  %3446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3447 = extractvalue %dx.types.CBufRet.f32 %3446, 3
  %3448 = fmul fast float %3447, 1.000000e+03
  %3449 = fmul fast float %428, %3448
  %3450 = call float @dx.op.unary.f32(i32 22, float %3449)  ; Frc(value)
  %3451 = fadd fast float %3450, %418
  %3452 = fmul fast float %429, %3448
  %3453 = call float @dx.op.unary.f32(i32 22, float %3452)  ; Frc(value)
  %3454 = fadd fast float %3453, %420
  %3455 = fmul fast float %3420, %3448
  %3456 = call float @dx.op.unary.f32(i32 22, float %3455)  ; Frc(value)
  %3457 = fmul fast float %3456, 0x401921FB60000000
  %3458 = fadd fast float %3457, %3439
  %3459 = call float @dx.op.unary.f32(i32 13, float %3458)  ; Sin(value)
  %3460 = call float @dx.op.unary.f32(i32 12, float %3458)  ; Cos(value)
  %3461 = fsub fast float -0.000000e+00, %3459
  %3462 = fadd fast float %3413, -5.000000e-01
  %3463 = fadd fast float %3414, -5.000000e-01
  %3464 = fmul fast float %3431, %3462
  %3465 = fmul fast float %3433, %3463
  %3466 = fadd fast float %3464, 5.000000e-01
  %3467 = fadd fast float %3465, 5.000000e-01
  %3468 = fmul fast float %3442, %3466
  %3469 = fmul fast float %3445, %3467
  %3470 = fmul fast float %3460, %3468
  %3471 = call float @dx.op.tertiary.f32(i32 46, float %3461, float %3469, float %3470)  ; FMad(a,b,c)
  %3472 = fmul fast float %3459, %3468
  %3473 = call float @dx.op.tertiary.f32(i32 46, float %3460, float %3469, float %3472)  ; FMad(a,b,c)
  %3474 = fadd fast float %3451, %3471
  %3475 = fadd fast float %3454, %3473
  %3476 = icmp ugt i32 %3425, 1
  %3477 = icmp ugt i32 %3423, 33554431
  %3478 = or i1 %3477, %3476
  br i1 %3478, label %3479, label %3504

; <label>:3479                                    ; preds = %3406
  %3480 = add i32 %50, 276
  %3481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3480, i32 undef)  ; BufferLoad(srv,index,wot)
  %3482 = extractvalue %dx.types.ResRet.i32 %3481, 0
  %3483 = lshr i32 %3482, 16
  %3484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3483)  ; LegacyF16ToF32(value)
  %3485 = fmul fast float %3447, %3484
  %3486 = call float @dx.op.unary.f32(i32 22, float %3485)  ; Frc(value)
  %3487 = mul nuw nsw i32 %3425, %3426
  %3488 = uitofp i32 %3487 to float
  %3489 = fmul fast float %3486, %3488
  %3490 = call float @dx.op.unary.f32(i32 27, float %3489)  ; Round_ni(value)
  %3491 = fptoui float %3490 to i32
  %3492 = urem i32 %3491, %3425
  %3493 = udiv i32 %3491, %3426
  %3494 = call float @dx.op.unary.f32(i32 22, float %3474)  ; Frc(value)
  %3495 = call float @dx.op.unary.f32(i32 22, float %3475)  ; Frc(value)
  %3496 = uitofp i32 %3492 to float
  %3497 = uitofp i32 %3493 to float
  %3498 = fadd fast float %3494, %3496
  %3499 = fadd fast float %3495, %3497
  %3500 = uitofp i32 %3425 to float
  %3501 = uitofp i32 %3426 to float
  %3502 = fdiv fast float %3498, %3500
  %3503 = fdiv fast float %3499, %3501
  br label %3504

; <label>:3504                                    ; preds = %3479, %3406
  %3505 = phi float [ %3502, %3479 ], [ %3474, %3406 ]
  %3506 = phi float [ %3503, %3479 ], [ %3475, %3406 ]
  %3507 = and i32 %3400, 16777216
  %3508 = icmp eq i32 %3507, 0
  br i1 %3508, label %3618, label %3509

; <label>:3509                                    ; preds = %3504
  %3510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3511 = extractvalue %dx.types.CBufRet.f32 %3510, 0
  %3512 = extractvalue %dx.types.CBufRet.f32 %3510, 1
  %3513 = extractvalue %dx.types.CBufRet.f32 %3510, 2
  %3514 = fadd fast float %3511, %154
  %3515 = fadd fast float %3512, %155
  %3516 = fadd fast float %3513, %156
  %3517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3518 = extractvalue %dx.types.CBufRet.f32 %3517, 0
  %3519 = call float @dx.op.unary.f32(i32 7, float %3518)  ; Saturate(value)
  %3520 = icmp eq i32 %51, 65535
  br i1 %3520, label %3615, label %3521

; <label>:3521                                    ; preds = %3509
  %3522 = lshr i32 %51, 1
  %3523 = shl i32 %3522, 2
  %3524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.i32 %3524, 0
  %3526 = and i32 %51, 1
  %3527 = icmp ne i32 %3526, 0
  %3528 = lshr i32 %3525, 16
  %3529 = and i32 %3525, 65535
  %3530 = select i1 %3527, i32 %3528, i32 %3529
  %3531 = icmp eq i32 %3530, 65535
  br i1 %3531, label %3611, label %3532

; <label>:3532                                    ; preds = %3521
  %3533 = mul nuw nsw i32 %3530, 40
  %3534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.f32 %3534, 0
  %3536 = extractvalue %dx.types.ResRet.f32 %3534, 1
  %3537 = extractvalue %dx.types.ResRet.f32 %3534, 2
  %3538 = add nuw nsw i32 %3533, 12
  %3539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.f32 %3539, 0
  %3541 = extractvalue %dx.types.ResRet.f32 %3539, 1
  %3542 = extractvalue %dx.types.ResRet.f32 %3539, 2
  %3543 = add nuw nsw i32 %3533, 24
  %3544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3543, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.f32 %3544, 0
  %3546 = extractvalue %dx.types.ResRet.f32 %3544, 1
  %3547 = extractvalue %dx.types.ResRet.f32 %3544, 2
  %3548 = add nuw nsw i32 %3533, 36
  %3549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.f32 %3549, 0
  %3551 = fsub fast float %3514, %3535
  %3552 = fsub fast float %3515, %3536
  %3553 = fsub fast float %3516, %3537
  %3554 = fmul fast float %3550, %3551
  %3555 = fmul fast float %3550, %3552
  %3556 = fmul fast float %3550, %3553
  %3557 = call float @dx.op.unary.f32(i32 27, float %3554)  ; Round_ni(value)
  %3558 = call float @dx.op.unary.f32(i32 27, float %3555)  ; Round_ni(value)
  %3559 = call float @dx.op.unary.f32(i32 27, float %3556)  ; Round_ni(value)
  %3560 = fadd fast float %3557, 5.000000e-01
  %3561 = fadd fast float %3558, 5.000000e-01
  %3562 = fadd fast float %3559, 5.000000e-01
  %3563 = fmul fast float %3560, %3540
  %3564 = fmul fast float %3561, %3541
  %3565 = fmul fast float %3562, %3542
  %3566 = shl i32 %51, 2
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = add i32 %3568, 0
  %3570 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3569, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3571 = call float @dx.op.unary.f32(i32 22, float %3563)  ; Frc(value)
  %3572 = call float @dx.op.unary.f32(i32 22, float %3564)  ; Frc(value)
  %3573 = call float @dx.op.unary.f32(i32 22, float %3565)  ; Frc(value)
  %3574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3570, %dx.types.Handle %45, float %3571, float %3572, float %3573, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 0
  %3576 = extractvalue %dx.types.ResRet.f32 %3574, 1
  %3577 = extractvalue %dx.types.ResRet.f32 %3574, 2
  %3578 = fmul fast float %3575, 1.023000e+03
  %3579 = fmul fast float %3576, 1.023000e+03
  %3580 = fmul fast float %3577, 1.023000e+03
  %3581 = fadd fast float %3578, 5.000000e-01
  %3582 = fadd fast float %3579, 5.000000e-01
  %3583 = fadd fast float %3580, 5.000000e-01
  %3584 = call float @dx.op.unary.f32(i32 27, float %3581)  ; Round_ni(value)
  %3585 = call float @dx.op.unary.f32(i32 27, float %3582)  ; Round_ni(value)
  %3586 = call float @dx.op.unary.f32(i32 27, float %3583)  ; Round_ni(value)
  %3587 = fsub fast float %3554, %3557
  %3588 = fsub fast float %3555, %3558
  %3589 = fsub fast float %3556, %3559
  %3590 = fmul fast float %3587, 7.500000e-01
  %3591 = fmul fast float %3588, 7.500000e-01
  %3592 = fmul fast float %3589, 7.500000e-01
  %3593 = fadd fast float %3557, 1.250000e-01
  %3594 = fadd fast float %3593, %3590
  %3595 = fadd fast float %3594, %3584
  %3596 = fadd fast float %3558, 1.250000e-01
  %3597 = fadd fast float %3596, %3591
  %3598 = fadd fast float %3597, %3585
  %3599 = fadd fast float %3559, 1.250000e-01
  %3600 = fadd fast float %3599, %3592
  %3601 = fadd fast float %3600, %3586
  %3602 = fmul fast float %3595, %3545
  %3603 = fmul fast float %3598, %3546
  %3604 = fmul fast float %3601, %3547
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = add i32 %3606, 0
  %3608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3608, %dx.types.Handle %43, float %3602, float %3603, float %3604, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 0
  br label %3611

; <label>:3611                                    ; preds = %3532, %3521
  %3612 = phi float [ %3610, %3532 ], [ -1.000000e+00, %3521 ]
  %3613 = fadd fast float %3612, %3519
  %3614 = call float @dx.op.unary.f32(i32 7, float %3613)  ; Saturate(value)
  br label %3615

; <label>:3615                                    ; preds = %3611, %3509
  %3616 = phi float [ %3614, %3611 ], [ %3519, %3509 ]
  %3617 = fmul fast float %3616, %487
  br label %3618

; <label>:3618                                    ; preds = %3615, %3504
  %3619 = phi float [ %3617, %3615 ], [ %487, %3504 ]
  %3620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.i32 %3620, 0
  %3622 = and i32 %3621, 256
  %3623 = icmp eq i32 %3622, 0
  br i1 %3623, label %3670, label %3624

; <label>:3624                                    ; preds = %3618
  %3625 = add i32 %50, 500
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = add i32 %3627, 0
  %3629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3630 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3629, %dx.types.Handle %96, float %3505, float %3506, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = add i32 %50, 148
  %3633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.i32 %3633, 0
  %3635 = shl i32 %3634, 4
  %3636 = and i32 %3635, 32752
  %3637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3636)  ; LegacyF16ToF32(value)
  %3638 = lshr i32 %3634, 7
  %3639 = and i32 %3638, 32752
  %3640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3639)  ; LegacyF16ToF32(value)
  %3641 = fsub fast float 1.000000e+00, %3619
  %3642 = call float @dx.op.binary.f32(i32 35, float %3641, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3643 = bitcast float %3619 to i32
  %3644 = sitofp i32 %3643 to float
  %3645 = fadd fast float %3644, 0xC1CFBF8940000000
  %3646 = fmul fast float %3640, %3645
  %3647 = fadd fast float %3646, 0x41CFBF8940000000
  %3648 = fptosi float %3647 to i32
  %3649 = bitcast i32 %3648 to float
  %3650 = bitcast float %3642 to i32
  %3651 = sitofp i32 %3650 to float
  %3652 = fadd fast float %3651, 0xC1CFBF8940000000
  %3653 = fmul fast float %3652, %3640
  %3654 = fadd fast float %3653, 0x41CFBF8940000000
  %3655 = fptosi float %3654 to i32
  %3656 = bitcast i32 %3655 to float
  %3657 = fmul fast float %3649, %3637
  %3658 = fmul fast float %3656, %3637
  %3659 = fsub fast float %3642, %3657
  %3660 = fadd fast float %3658, %3642
  %3661 = call float @dx.op.unary.f32(i32 7, float %3659)  ; Saturate(value)
  %3662 = call float @dx.op.unary.f32(i32 7, float %3660)  ; Saturate(value)
  %3663 = fsub fast float %3631, %3661
  %3664 = fsub fast float %3662, %3661
  %3665 = bitcast float %3664 to i32
  %3666 = sub nsw i32 2129859010, %3665
  %3667 = bitcast i32 %3666 to float
  %3668 = fmul fast float %3667, %3663
  %3669 = call float @dx.op.unary.f32(i32 7, float %3668)  ; Saturate(value)
  br label %3670

; <label>:3670                                    ; preds = %3624, %3618
  %3671 = phi float [ %3669, %3624 ], [ %3619, %3618 ]
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = and i32 %3673, 128
  %3675 = icmp eq i32 %3674, 0
  br i1 %3675, label %3692, label %3676

; <label>:3676                                    ; preds = %3670
  %3677 = add i32 %50, 484
  %3678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.i32 %3678, 0
  %3680 = add i32 %3679, 0
  %3681 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3680, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3682 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3681, %dx.types.Handle %96, float %3505, float %3506, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3683 = extractvalue %dx.types.ResRet.f32 %3682, 0
  %3684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.i32 %3684, 0
  %3686 = and i32 %3685, 524288
  %3687 = icmp ne i32 %3686, 0
  %3688 = fcmp fast ogt float %3683, 0x3FE0101020000000
  %3689 = select i1 %3688, float 1.000000e+00, float 0.000000e+00
  %3690 = select i1 %3687, float %3689, float %3683
  %3691 = fmul fast float %3690, %3671
  br label %3692

; <label>:3692                                    ; preds = %3676, %3670
  %3693 = phi float [ %3691, %3676 ], [ %3671, %3670 ]
  %3694 = fcmp fast ult float %3693, 0x3F70101020000000
  br i1 %3694, label %4433, label %3695

; <label>:3695                                    ; preds = %3692
  %3696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3697 = extractvalue %dx.types.ResRet.i32 %3696, 0
  %3698 = and i32 %3697, 16
  %3699 = icmp eq i32 %3698, 0
  br i1 %3699, label %3898, label %3700

; <label>:3700                                    ; preds = %3695
  %3701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3421, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.i32 %3701, 0
  %3703 = add i32 %50, 436
  %3704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.i32 %3704, 0
  %3706 = add i32 %3705, 0
  %3707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3707, %dx.types.Handle %95, float %3505, float %3506, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.ResRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3708, 2
  %3712 = extractvalue %dx.types.ResRet.f32 %3708, 3
  %3713 = and i32 %3702, 255
  %3714 = uitofp i32 %3713 to float
  %3715 = lshr i32 %3702, 8
  %3716 = and i32 %3715, 255
  %3717 = uitofp i32 %3716 to float
  %3718 = fmul fast float %3712, %3714
  %3719 = fadd fast float %3718, %3717
  %3720 = fmul fast float %3719, 0x3F70101000000000
  %3721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.i32 %3721, 0
  %3723 = and i32 %3722, 512
  %3724 = icmp eq i32 %3723, 0
  br i1 %3724, label %3733, label %3725

; <label>:3725                                    ; preds = %3700
  %3726 = add i32 %50, 520
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = add i32 %3728, 0
  %3730 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3729, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3731 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3730, %dx.types.Handle %96, float %3505, float %3506, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3732 = extractvalue %dx.types.ResRet.f32 %3731, 0
  br label %3733

; <label>:3733                                    ; preds = %3725, %3700
  %3734 = phi float [ %3732, %3725 ], [ 1.000000e+00, %3700 ]
  %3735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.i32 %3735, 0
  %3737 = and i32 %3736, 33554432
  %3738 = icmp eq i32 %3737, 0
  br i1 %3738, label %3845, label %3739

; <label>:3739                                    ; preds = %3733
  %3740 = add i32 %50, 272
  %3741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.i32 %3741, 0
  %3743 = and i32 %3742, 65535
  %3744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3743)  ; LegacyF16ToF32(value)
  %3745 = lshr i32 %3742, 16
  %3746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3745)  ; LegacyF16ToF32(value)
  %3747 = add i32 %50, 276
  %3748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.i32 %3748, 0
  %3750 = and i32 %3749, 65535
  %3751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3750)  ; LegacyF16ToF32(value)
  %3752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.i32 %3752, 0
  %3754 = lshr i32 %3753, 24
  %3755 = uitofp i32 %3754 to float
  %3756 = fmul fast float %3755, 0x3F70101020000000
  %3757 = and i32 %3753, 255
  %3758 = uitofp i32 %3757 to float
  %3759 = fmul fast float %3758, 0x3F70101020000000
  %3760 = lshr i32 %3753, 8
  %3761 = and i32 %3760, 255
  %3762 = uitofp i32 %3761 to float
  %3763 = fmul fast float %3762, 0x3F70101020000000
  %3764 = lshr i32 %3753, 16
  %3765 = and i32 %3764, 255
  %3766 = uitofp i32 %3765 to float
  %3767 = fmul fast float %3766, 0x3F70101020000000
  %3768 = add i32 %50, 268
  %3769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3768, i32 undef)  ; BufferLoad(srv,index,wot)
  %3770 = extractvalue %dx.types.ResRet.i32 %3769, 0
  %3771 = lshr i32 %3770, 24
  %3772 = uitofp i32 %3771 to float
  %3773 = fmul fast float %3772, 0x3F70101020000000
  %3774 = and i32 %3770, 255
  %3775 = uitofp i32 %3774 to float
  %3776 = fmul fast float %3775, 0x3F70101020000000
  %3777 = lshr i32 %3770, 8
  %3778 = and i32 %3777, 255
  %3779 = uitofp i32 %3778 to float
  %3780 = fmul fast float %3779, 0x3F70101020000000
  %3781 = lshr i32 %3770, 16
  %3782 = and i32 %3781, 255
  %3783 = uitofp i32 %3782 to float
  %3784 = fmul fast float %3783, 0x3F70101020000000
  %3785 = bitcast float %3709 to i32
  %3786 = ashr i32 %3785, 1
  %3787 = sub nsw i32 1597463174, %3786
  %3788 = bitcast i32 %3787 to float
  %3789 = fmul fast float %3709, 5.000000e-01
  %3790 = fmul fast float %3788, %3788
  %3791 = fmul fast float %3790, %3789
  %3792 = fsub fast float 1.500000e+00, %3791
  %3793 = fmul fast float %3788, %3709
  %3794 = fmul fast float %3793, %3792
  %3795 = bitcast float %3710 to i32
  %3796 = ashr i32 %3795, 1
  %3797 = sub nsw i32 1597463174, %3796
  %3798 = bitcast i32 %3797 to float
  %3799 = fmul fast float %3710, 5.000000e-01
  %3800 = fmul fast float %3798, %3798
  %3801 = fmul fast float %3800, %3799
  %3802 = fsub fast float 1.500000e+00, %3801
  %3803 = fmul fast float %3798, %3710
  %3804 = fmul fast float %3803, %3802
  %3805 = bitcast float %3711 to i32
  %3806 = ashr i32 %3805, 1
  %3807 = sub nsw i32 1597463174, %3806
  %3808 = bitcast i32 %3807 to float
  %3809 = fmul fast float %3711, 5.000000e-01
  %3810 = fmul fast float %3808, %3808
  %3811 = fmul fast float %3810, %3809
  %3812 = fsub fast float 1.500000e+00, %3811
  %3813 = fmul fast float %3808, %3711
  %3814 = fmul fast float %3813, %3812
  %3815 = fsub fast float %3794, %3776
  %3816 = fsub fast float %3804, %3780
  %3817 = fsub fast float %3814, %3784
  %3818 = fmul fast float %3815, %3744
  %3819 = fmul fast float %3816, %3746
  %3820 = fmul fast float %3817, %3751
  %3821 = fadd fast float %3818, %3759
  %3822 = fadd fast float %3819, %3763
  %3823 = fadd fast float %3820, %3767
  %3824 = call float @dx.op.unary.f32(i32 7, float %3821)  ; Saturate(value)
  %3825 = call float @dx.op.unary.f32(i32 7, float %3822)  ; Saturate(value)
  %3826 = call float @dx.op.unary.f32(i32 7, float %3823)  ; Saturate(value)
  %3827 = fmul fast float %3824, %3824
  %3828 = fmul fast float %3825, %3825
  %3829 = fmul fast float %3826, %3826
  %3830 = fsub fast float %3827, %3709
  %3831 = fsub fast float %3828, %3710
  %3832 = fsub fast float %3829, %3711
  %3833 = fmul fast float %3830, %3734
  %3834 = fmul fast float %3831, %3734
  %3835 = fmul fast float %3832, %3734
  %3836 = fadd fast float %3833, %3709
  %3837 = fadd fast float %3834, %3710
  %3838 = fadd fast float %3835, %3711
  %3839 = fadd fast float %3756, %3720
  %3840 = fsub fast float %3839, %3773
  %3841 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3842 = fsub fast float %3841, %3720
  %3843 = fmul fast float %3842, %3734
  %3844 = fadd fast float %3843, %3720
  br label %3898

; <label>:3845                                    ; preds = %3733
  %3846 = and i32 %3736, 134217728
  %3847 = icmp eq i32 %3846, 0
  br i1 %3847, label %3882, label %3848

; <label>:3848                                    ; preds = %3845
  %3849 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %3850 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %3851 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %3852 = fadd fast float %3849, -5.000000e-01
  %3853 = fadd fast float %3850, -5.000000e-01
  %3854 = fadd fast float %3851, -5.000000e-01
  %3855 = fmul fast float %3852, %3734
  %3856 = fmul fast float %3853, %3734
  %3857 = fmul fast float %3854, %3734
  %3858 = fadd fast float %3855, 5.000000e-01
  %3859 = fadd fast float %3856, 5.000000e-01
  %3860 = fadd fast float %3857, 5.000000e-01
  %3861 = call float @dx.op.unary.f32(i32 24, float %3709)  ; Sqrt(value)
  %3862 = call float @dx.op.unary.f32(i32 24, float %3710)  ; Sqrt(value)
  %3863 = call float @dx.op.unary.f32(i32 24, float %3711)  ; Sqrt(value)
  %3864 = fmul fast float %3858, 2.000000e+00
  %3865 = fsub fast float 1.000000e+00, %3864
  %3866 = fmul fast float %3865, %3861
  %3867 = fadd fast float %3866, %3864
  %3868 = fmul fast float %3867, %3861
  %3869 = fmul fast float %3859, 2.000000e+00
  %3870 = fsub fast float 1.000000e+00, %3869
  %3871 = fmul fast float %3870, %3862
  %3872 = fadd fast float %3871, %3869
  %3873 = fmul fast float %3872, %3862
  %3874 = fmul fast float %3860, 2.000000e+00
  %3875 = fsub fast float 1.000000e+00, %3874
  %3876 = fmul fast float %3875, %3863
  %3877 = fadd fast float %3876, %3874
  %3878 = fmul fast float %3877, %3863
  %3879 = fmul fast float %3868, %3868
  %3880 = fmul fast float %3873, %3873
  %3881 = fmul fast float %3878, %3878
  br label %3898

; <label>:3882                                    ; preds = %3845
  %3883 = fmul fast float %405, %405
  %3884 = fmul fast float %409, %409
  %3885 = fmul fast float %413, %413
  %3886 = fadd fast float %3883, -1.000000e+00
  %3887 = fadd fast float %3884, -1.000000e+00
  %3888 = fadd fast float %3885, -1.000000e+00
  %3889 = fmul fast float %3734, %3886
  %3890 = fmul fast float %3734, %3887
  %3891 = fmul fast float %3734, %3888
  %3892 = fadd fast float %3889, 1.000000e+00
  %3893 = fadd fast float %3890, 1.000000e+00
  %3894 = fadd fast float %3891, 1.000000e+00
  %3895 = fmul fast float %3892, %3709
  %3896 = fmul fast float %3893, %3710
  %3897 = fmul fast float %3894, %3711
  br label %3898

; <label>:3898                                    ; preds = %3882, %3848, %3739, %3695
  %3899 = phi float [ %3844, %3739 ], [ %3720, %3848 ], [ %3720, %3882 ], [ 0x3FA23C0BE0000000, %3695 ]
  %3900 = phi float [ %3836, %3739 ], [ %3879, %3848 ], [ %3895, %3882 ], [ 1.000000e+00, %3695 ]
  %3901 = phi float [ %3837, %3739 ], [ %3880, %3848 ], [ %3896, %3882 ], [ 1.000000e+00, %3695 ]
  %3902 = phi float [ %3838, %3739 ], [ %3881, %3848 ], [ %3897, %3882 ], [ 1.000000e+00, %3695 ]
  %3903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3904 = extractvalue %dx.types.CBufRet.i32 %3903, 1
  %3905 = and i32 %3904, 1
  %3906 = icmp ne i32 %3905, 0
  %3907 = add i32 %50, 356
  %3908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.i32 %3908, 0
  %3910 = and i32 %3909, 32
  %3911 = icmp ne i32 %3910, 0
  %3912 = and i1 %3906, %3911
  %3913 = select i1 %3912, float 1.000000e+00, float %3900
  %3914 = select i1 %3912, float 0x3FD3333340000000, float %3901
  %3915 = select i1 %3912, float 0x3FD3333340000000, float %3902
  %3916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.i32 %3916, 0
  %3918 = and i32 %3917, 32
  %3919 = icmp eq i32 %3918, 0
  br i1 %3919, label %3992, label %3920

; <label>:3920                                    ; preds = %3898
  %3921 = add i32 %50, 140
  %3922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3921, i32 undef)  ; BufferLoad(srv,index,wot)
  %3923 = extractvalue %dx.types.ResRet.i32 %3922, 0
  %3924 = add i32 %50, 452
  %3925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.i32 %3925, 0
  %3927 = add i32 %3926, 0
  %3928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3927, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3929 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3928, %dx.types.Handle %95, float %3505, float %3506, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.ResRet.f32 %3929, 1
  %3932 = extractvalue %dx.types.ResRet.f32 %3929, 2
  %3933 = extractvalue %dx.types.ResRet.f32 %3929, 3
  %3934 = and i32 %3923, 255
  %3935 = uitofp i32 %3934 to float
  %3936 = lshr i32 %3923, 8
  %3937 = and i32 %3936, 255
  %3938 = uitofp i32 %3937 to float
  %3939 = lshr i32 %3923, 16
  %3940 = and i32 %3939, 255
  %3941 = uitofp i32 %3940 to float
  %3942 = fmul fast float %3941, 0x3F70101000000000
  %3943 = fmul fast float %3930, %3935
  %3944 = fadd fast float %3943, %3938
  %3945 = fmul fast float %3944, 0x3F70101000000000
  %3946 = fadd fast float %3931, -5.000000e-01
  %3947 = fadd fast float %3933, -5.000000e-01
  %3948 = fmul fast float %3946, %3942
  %3949 = fmul fast float %3947, %3942
  %3950 = fadd fast float %3948, 5.000000e-01
  %3951 = fadd fast float %3949, 5.000000e-01
  %3952 = fmul fast float %3950, 2.000000e+00
  %3953 = fadd fast float %3952, -1.000000e+00
  %3954 = fmul fast float %3951, 2.000000e+00
  %3955 = fadd fast float %3954, -1.000000e+00
  %3956 = fadd fast float %3953, %3955
  %3957 = fmul fast float %3956, 5.000000e-01
  %3958 = fsub fast float %3953, %3955
  %3959 = fmul fast float %3958, 5.000000e-01
  %3960 = call float @dx.op.unary.f32(i32 6, float %3957)  ; FAbs(value)
  %3961 = fsub fast float 1.000000e+00, %3960
  %3962 = call float @dx.op.unary.f32(i32 6, float %3959)  ; FAbs(value)
  %3963 = fsub fast float %3961, %3962
  %3964 = call float @dx.op.dot3.f32(i32 55, float %3957, float %3959, float %3963, float %3957, float %3959, float %3963)  ; Dot3(ax,ay,az,bx,by,bz)
  %3965 = call float @dx.op.unary.f32(i32 25, float %3964)  ; Rsqrt(value)
  %3966 = fmul fast float %3957, %3965
  %3967 = fmul fast float %3959, %3965
  %3968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3969 = extractvalue %dx.types.ResRet.i32 %3968, 0
  %3970 = and i32 %3969, 67108864
  %3971 = icmp eq i32 %3970, 0
  br i1 %3971, label %3988, label %3972

; <label>:3972                                    ; preds = %3920
  %3973 = add i32 %50, 328
  %3974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3975 = extractvalue %dx.types.ResRet.i32 %3974, 0
  %3976 = and i32 %3975, 65535
  %3977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3976)  ; LegacyF16ToF32(value)
  %3978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3979 = extractvalue %dx.types.ResRet.i32 %3978, 0
  %3980 = and i32 %3979, 65535
  %3981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3980)  ; LegacyF16ToF32(value)
  %3982 = lshr i32 %3975, 16
  %3983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3982)  ; LegacyF16ToF32(value)
  %3984 = fsub fast float %3945, %3983
  %3985 = fmul fast float %3984, %3977
  %3986 = fadd fast float %3985, %3981
  %3987 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  br label %3988

; <label>:3988                                    ; preds = %3972, %3920
  %3989 = phi float [ %3987, %3972 ], [ %3945, %3920 ]
  %3990 = call float @dx.op.dot2.f32(i32 54, float %3966, float %3967, float %3409, float %3410)  ; Dot2(ax,ay,bx,by)
  %3991 = call float @dx.op.dot2.f32(i32 54, float %3966, float %3967, float %3411, float %3412)  ; Dot2(ax,ay,bx,by)
  br label %3992

; <label>:3992                                    ; preds = %3988, %3898
  %3993 = phi float [ %3989, %3988 ], [ 0x3FD6666660000000, %3898 ]
  %3994 = phi float [ %3990, %3988 ], [ 0.000000e+00, %3898 ]
  %3995 = phi float [ %3991, %3988 ], [ 0.000000e+00, %3898 ]
  %3996 = phi float [ %3932, %3988 ], [ 1.000000e+00, %3898 ]
  %3997 = add i32 %50, 208
  %3998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3997, i32 undef)  ; BufferLoad(srv,index,wot)
  %3999 = extractvalue %dx.types.ResRet.i32 %3998, 0
  %4000 = lshr i32 %3999, 22
  %4001 = shl nuw nsw i32 %4000, 5
  %4002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4001)  ; LegacyF16ToF32(value)
  %4003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4004 = extractvalue %dx.types.ResRet.i32 %4003, 0
  %4005 = and i32 %4004, 64
  %4006 = icmp eq i32 %4005, 0
  br i1 %4006, label %4040, label %4007

; <label>:4007                                    ; preds = %3992
  %4008 = add i32 %50, 468
  %4009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4008, i32 undef)  ; BufferLoad(srv,index,wot)
  %4010 = extractvalue %dx.types.ResRet.i32 %4009, 0
  %4011 = add i32 %4010, 0
  %4012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4014 = extractvalue %dx.types.ResRet.i32 %4013, 0
  %4015 = and i32 %4014, 131072
  %4016 = icmp eq i32 %4015, 0
  %4017 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4012, %dx.types.Handle %95, float %3505, float %3506, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4018 = extractvalue %dx.types.ResRet.f32 %4017, 0
  %4019 = extractvalue %dx.types.ResRet.f32 %4017, 1
  %4020 = extractvalue %dx.types.ResRet.f32 %4017, 2
  %4021 = fmul fast float %4018, %393
  %4022 = fmul fast float %4019, %396
  %4023 = fmul fast float %4020, %399
  br i1 %4016, label %4030, label %4024

; <label>:4024                                    ; preds = %4007
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 0
  %4027 = fmul fast float %4026, %4021
  %4028 = fmul fast float %4026, %4022
  %4029 = fmul fast float %4026, %4023
  br label %4030

; <label>:4030                                    ; preds = %4024, %4007
  %4031 = phi float [ %4027, %4024 ], [ %4021, %4007 ]
  %4032 = phi float [ %4028, %4024 ], [ %4022, %4007 ]
  %4033 = phi float [ %4029, %4024 ], [ %4023, %4007 ]
  %4034 = fmul fast float %4031, %4002
  %4035 = select i1 %247, float %4034, float %4031
  %4036 = call float @dx.op.dot3.f32(i32 55, float %4035, float %4032, float %4033, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4037 = select i1 %247, float 0.000000e+00, float %4031
  %4038 = select i1 %247, float %4036, float %4032
  %4039 = select i1 %247, float 0.000000e+00, float %4033
  br label %4040

; <label>:4040                                    ; preds = %4030, %3992
  %4041 = phi float [ %4037, %4030 ], [ 0.000000e+00, %3992 ]
  %4042 = phi float [ %4038, %4030 ], [ 0.000000e+00, %3992 ]
  %4043 = phi float [ %4039, %4030 ], [ 0.000000e+00, %3992 ]
  %4044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.i32 %4044, 0
  %4046 = and i32 %4045, 1024
  %4047 = icmp eq i32 %4046, 0
  br i1 %4047, label %4078, label %4048

; <label>:4048                                    ; preds = %4040
  %4049 = add i32 %50, 200
  %4050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.i32 %4050, 0
  %4052 = and i32 %4051, 255
  %4053 = uitofp i32 %4052 to float
  %4054 = fmul fast float %4053, 0x3F70101020000000
  %4055 = lshr i32 %4051, 8
  %4056 = and i32 %4055, 255
  %4057 = uitofp i32 %4056 to float
  %4058 = fmul fast float %4057, 0x3F70101020000000
  %4059 = lshr i32 %4051, 16
  %4060 = and i32 %4059, 255
  %4061 = uitofp i32 %4060 to float
  %4062 = fmul fast float %4061, 0x3F70101020000000
  %4063 = fmul fast float %4054, %4054
  %4064 = fmul fast float %4058, %4058
  %4065 = fmul fast float %4062, %4062
  %4066 = add i32 %50, 536
  %4067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4066, i32 undef)  ; BufferLoad(srv,index,wot)
  %4068 = extractvalue %dx.types.ResRet.i32 %4067, 0
  %4069 = add i32 %4068, 0
  %4070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4070, %dx.types.Handle %96, float %3505, float %3506, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.ResRet.f32 %4071, 1
  %4074 = extractvalue %dx.types.ResRet.f32 %4071, 2
  %4075 = fmul fast float %4063, %4072
  %4076 = fmul fast float %4064, %4073
  %4077 = fmul fast float %4065, %4074
  br label %4078

; <label>:4078                                    ; preds = %4048, %4040
  %4079 = phi float [ %4075, %4048 ], [ 0.000000e+00, %4040 ]
  %4080 = phi float [ %4076, %4048 ], [ 0.000000e+00, %4040 ]
  %4081 = phi float [ %4077, %4048 ], [ 0.000000e+00, %4040 ]
  %4082 = fcmp fast ogt float %4079, 0.000000e+00
  %4083 = fcmp fast ogt float %4080, 0.000000e+00
  %4084 = fcmp fast ogt float %4081, 0.000000e+00
  %4085 = call float @dx.op.unary.f32(i32 23, float %4079)  ; Log(value)
  %4086 = call float @dx.op.unary.f32(i32 23, float %4080)  ; Log(value)
  %4087 = call float @dx.op.unary.f32(i32 23, float %4081)  ; Log(value)
  %4088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3997, i32 undef)  ; BufferLoad(srv,index,wot)
  %4089 = extractvalue %dx.types.ResRet.i32 %4088, 0
  %4090 = lshr i32 %4089, 7
  %4091 = and i32 %4090, 32752
  %4092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4091)  ; LegacyF16ToF32(value)
  %4093 = fmul fast float %4085, 0xBFE62E4300000000
  %4094 = fmul fast float %4093, %4092
  %4095 = fmul fast float %4086, 0xBFE62E4300000000
  %4096 = fmul fast float %4095, %4092
  %4097 = fmul fast float %4087, 0xBFE62E4300000000
  %4098 = fmul fast float %4097, %4092
  %4099 = select i1 %4082, float %4094, float 1.270000e+02
  %4100 = select i1 %4083, float %4096, float 1.270000e+02
  %4101 = select i1 %4084, float %4098, float 1.270000e+02
  %4102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4103 = extractvalue %dx.types.ResRet.i32 %4102, 0
  %4104 = and i32 %4103, 10240
  %4105 = icmp eq i32 %4104, 0
  br i1 %4105, label %4150, label %4106

; <label>:4106                                    ; preds = %4078
  %4107 = add i32 %50, 552
  %4108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4107, i32 undef)  ; BufferLoad(srv,index,wot)
  %4109 = extractvalue %dx.types.ResRet.i32 %4108, 0
  %4110 = add i32 %4109, 0
  %4111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4110, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4112 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4111, %dx.types.Handle %96, float %3505, float %3506, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 1
  %4114 = extractvalue %dx.types.ResRet.f32 %4112, 3
  %4115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4116 = extractvalue %dx.types.ResRet.i32 %4115, 0
  %4117 = and i32 %4116, 1048576
  %4118 = icmp ne i32 %4117, 0
  %4119 = and i32 %4116, 8192
  %4120 = icmp eq i32 %4119, 0
  br i1 %4120, label %4136, label %4121

; <label>:4121                                    ; preds = %4106
  %4122 = extractvalue %dx.types.ResRet.f32 %4112, 2
  %4123 = select i1 %4118, float %4122, float %4113
  %4124 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4125 = select i1 %4118, float %4124, float %4113
  %4126 = add i32 %50, 144
  %4127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4126, i32 undef)  ; BufferLoad(srv,index,wot)
  %4128 = extractvalue %dx.types.ResRet.i32 %4127, 0
  %4129 = lshr i32 %4128, 16
  %4130 = and i32 %4129, 255
  %4131 = uitofp i32 %4130 to float
  %4132 = fmul fast float %4131, 0x3F80101020000000
  %4133 = fmul fast float %4132, %4125
  %4134 = fmul fast float %4132, %4113
  %4135 = fmul fast float %4132, %4123
  br label %4136

; <label>:4136                                    ; preds = %4121, %4106
  %4137 = phi float [ %4133, %4121 ], [ 0.000000e+00, %4106 ]
  %4138 = phi float [ %4134, %4121 ], [ 0.000000e+00, %4106 ]
  %4139 = phi float [ %4135, %4121 ], [ 0.000000e+00, %4106 ]
  %4140 = and i32 %4116, 2048
  %4141 = icmp eq i32 %4140, 0
  br i1 %4141, label %4150, label %4142

; <label>:4142                                    ; preds = %4136
  %4143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3997, i32 undef)  ; BufferLoad(srv,index,wot)
  %4144 = extractvalue %dx.types.ResRet.i32 %4143, 0
  %4145 = shl i32 %4144, 4
  %4146 = and i32 %4145, 32752
  %4147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4146)  ; LegacyF16ToF32(value)
  %4148 = fmul fast float %4147, %4114
  %4149 = call float @dx.op.binary.f32(i32 35, float %4148, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4150

; <label>:4150                                    ; preds = %4142, %4136, %4078
  %4151 = phi float [ %4137, %4142 ], [ %4137, %4136 ], [ 0.000000e+00, %4078 ]
  %4152 = phi float [ %4138, %4142 ], [ %4138, %4136 ], [ 0.000000e+00, %4078 ]
  %4153 = phi float [ %4139, %4142 ], [ %4139, %4136 ], [ 0.000000e+00, %4078 ]
  %4154 = phi float [ %4149, %4142 ], [ 0x3F70101020000000, %4136 ], [ 0x3F70101020000000, %4078 ]
  %4155 = add i32 %50, 144
  %4156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4155, i32 undef)  ; BufferLoad(srv,index,wot)
  %4157 = extractvalue %dx.types.ResRet.i32 %4156, 0
  %4158 = and i32 %4157, 255
  %4159 = uitofp i32 %4158 to float
  %4160 = lshr i32 %4157, 8
  %4161 = and i32 %4160, 255
  %4162 = uitofp i32 %4161 to float
  %4163 = call float @dx.op.dot3.f32(i32 55, float %3913, float %3914, float %3915, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4164 = fmul fast float %4162, %4163
  %4165 = fadd fast float %4164, %4159
  %4166 = fmul fast float %4165, 0x3F70101020000000
  %4167 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  br i1 %3397, label %4168, label %4203

; <label>:4168                                    ; preds = %4150
  %4169 = fmul fast float %4154, 2.000000e+00
  %4170 = fcmp fast olt float %4099, 1.270000e+02
  %4171 = fcmp fast olt float %4100, 1.270000e+02
  %4172 = fcmp fast olt float %4101, 1.270000e+02
  %4173 = fmul fast float %4099, 0xBFF7154760000000
  %4174 = fmul fast float %4173, %4169
  %4175 = fmul fast float %4100, 0xBFF7154760000000
  %4176 = fmul fast float %4175, %4169
  %4177 = fmul fast float %4101, 0xBFF7154760000000
  %4178 = fmul fast float %4177, %4169
  %4179 = call float @dx.op.unary.f32(i32 21, float %4174)  ; Exp(value)
  %4180 = call float @dx.op.unary.f32(i32 21, float %4176)  ; Exp(value)
  %4181 = call float @dx.op.unary.f32(i32 21, float %4178)  ; Exp(value)
  %4182 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4183 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  %4184 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4185 = fadd fast float %4182, -1.000000e+00
  %4186 = select i1 %4170, float %4185, float -1.000000e+00
  %4187 = fadd fast float %4183, -1.000000e+00
  %4188 = select i1 %4171, float %4187, float -1.000000e+00
  %4189 = fadd fast float %4184, -1.000000e+00
  %4190 = select i1 %4172, float %4189, float -1.000000e+00
  %4191 = fmul fast float %4186, %3693
  %4192 = fmul fast float %4188, %3693
  %4193 = fmul fast float %4190, %3693
  %4194 = fadd fast float %4191, 1.000000e+00
  %4195 = fadd fast float %4192, 1.000000e+00
  %4196 = fadd fast float %4193, 1.000000e+00
  %4197 = fmul fast float %4194, %3379
  %4198 = fmul fast float %4195, %3380
  %4199 = fmul fast float %4196, %3381
  %4200 = fmul fast float %4194, %3382
  %4201 = fmul fast float %4195, %3383
  %4202 = fmul fast float %4196, %3384
  br label %4203

; <label>:4203                                    ; preds = %4168, %4150
  %4204 = phi float [ %4197, %4168 ], [ %3379, %4150 ]
  %4205 = phi float [ %4198, %4168 ], [ %3380, %4150 ]
  %4206 = phi float [ %4199, %4168 ], [ %3381, %4150 ]
  %4207 = phi float [ %4200, %4168 ], [ %3382, %4150 ]
  %4208 = phi float [ %4201, %4168 ], [ %3383, %4150 ]
  %4209 = phi float [ %4202, %4168 ], [ %3384, %4150 ]
  %4210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4211 = extractvalue %dx.types.ResRet.i32 %4210, 0
  %4212 = and i32 %4211, 3
  %4213 = icmp eq i32 %4212, 3
  br i1 %4213, label %4292, label %4214

; <label>:4214                                    ; preds = %4203
  %4215 = and i32 %4211, 16
  %4216 = icmp ne i32 %4215, 0
  %4217 = select i1 %4216, float %3693, float 0.000000e+00
  %4218 = icmp eq i32 %4212, 0
  br i1 %4218, label %4219, label %4247

; <label>:4219                                    ; preds = %4214
  %4220 = and i32 %4211, 64
  %4221 = icmp ne i32 %4220, 0
  %4222 = select i1 %4221, float %3693, float 0.000000e+00
  %4223 = fsub fast float %3913, %4204
  %4224 = fsub fast float %3914, %4205
  %4225 = fsub fast float %3915, %4206
  %4226 = fmul fast float %4217, %4223
  %4227 = fmul fast float %4217, %4224
  %4228 = fmul fast float %4217, %4225
  %4229 = fadd fast float %4226, %4204
  %4230 = fadd fast float %4227, %4205
  %4231 = fadd fast float %4228, %4206
  %4232 = fsub fast float %3899, %3391
  %4233 = fmul fast float %4217, %4232
  %4234 = fadd fast float %4233, %3391
  %4235 = fsub fast float %4041, %4207
  %4236 = fsub fast float %4042, %4208
  %4237 = fsub fast float %4043, %4209
  %4238 = fmul fast float %4222, %4235
  %4239 = fmul fast float %4222, %4236
  %4240 = fmul fast float %4222, %4237
  %4241 = fadd fast float %4238, %4207
  %4242 = fadd fast float %4239, %4208
  %4243 = fadd fast float %4240, %4209
  %4244 = fsub fast float %4167, %3395
  %4245 = fmul fast float %4217, %4244
  %4246 = fadd fast float %4245, %3395
  br label %4292

; <label>:4247                                    ; preds = %4214
  %4248 = icmp eq i32 %4212, 1
  br i1 %4248, label %4249, label %4262

; <label>:4249                                    ; preds = %4247
  %4250 = fadd fast float %3913, -1.000000e+00
  %4251 = fadd fast float %3914, -1.000000e+00
  %4252 = fadd fast float %3915, -1.000000e+00
  %4253 = fmul fast float %4217, %4250
  %4254 = fmul fast float %4217, %4251
  %4255 = fmul fast float %4217, %4252
  %4256 = fadd fast float %4253, 1.000000e+00
  %4257 = fadd fast float %4254, 1.000000e+00
  %4258 = fadd fast float %4255, 1.000000e+00
  %4259 = fmul fast float %4256, %4204
  %4260 = fmul fast float %4257, %4205
  %4261 = fmul fast float %4258, %4206
  br label %4292

; <label>:4262                                    ; preds = %4247
  %4263 = icmp eq i32 %4212, 2
  br i1 %4263, label %4264, label %4292

; <label>:4264                                    ; preds = %4262
  %4265 = call float @dx.op.unary.f32(i32 24, float %3913)  ; Sqrt(value)
  %4266 = call float @dx.op.unary.f32(i32 24, float %3914)  ; Sqrt(value)
  %4267 = call float @dx.op.unary.f32(i32 24, float %3915)  ; Sqrt(value)
  %4268 = fadd fast float %4265, -5.000000e-01
  %4269 = fadd fast float %4266, -5.000000e-01
  %4270 = fadd fast float %4267, -5.000000e-01
  %4271 = fmul fast float %4268, %4217
  %4272 = fmul fast float %4269, %4217
  %4273 = fmul fast float %4270, %4217
  %4274 = fadd fast float %4271, 5.000000e-01
  %4275 = fadd fast float %4272, 5.000000e-01
  %4276 = fadd fast float %4273, 5.000000e-01
  %4277 = fmul fast float %4274, 2.000000e+00
  %4278 = fsub fast float 1.000000e+00, %4277
  %4279 = fmul fast float %4278, %4204
  %4280 = fadd fast float %4279, %4277
  %4281 = fmul fast float %4280, %4204
  %4282 = fmul fast float %4275, 2.000000e+00
  %4283 = fsub fast float 1.000000e+00, %4282
  %4284 = fmul fast float %4283, %4205
  %4285 = fadd fast float %4284, %4282
  %4286 = fmul fast float %4285, %4205
  %4287 = fmul fast float %4276, 2.000000e+00
  %4288 = fsub fast float 1.000000e+00, %4287
  %4289 = fmul fast float %4288, %4206
  %4290 = fadd fast float %4289, %4287
  %4291 = fmul fast float %4290, %4206
  br label %4292

; <label>:4292                                    ; preds = %4264, %4262, %4249, %4219, %4203
  %4293 = phi float [ %4204, %4203 ], [ %4281, %4264 ], [ %4204, %4262 ], [ %4259, %4249 ], [ %4229, %4219 ]
  %4294 = phi float [ %4205, %4203 ], [ %4286, %4264 ], [ %4205, %4262 ], [ %4260, %4249 ], [ %4230, %4219 ]
  %4295 = phi float [ %4206, %4203 ], [ %4291, %4264 ], [ %4206, %4262 ], [ %4261, %4249 ], [ %4231, %4219 ]
  %4296 = phi float [ %4207, %4203 ], [ %4207, %4264 ], [ %4207, %4262 ], [ %4207, %4249 ], [ %4241, %4219 ]
  %4297 = phi float [ %4208, %4203 ], [ %4208, %4264 ], [ %4208, %4262 ], [ %4208, %4249 ], [ %4242, %4219 ]
  %4298 = phi float [ %4209, %4203 ], [ %4209, %4264 ], [ %4209, %4262 ], [ %4209, %4249 ], [ %4243, %4219 ]
  %4299 = phi float [ %3391, %4203 ], [ %3391, %4264 ], [ %3391, %4262 ], [ %3391, %4249 ], [ %4234, %4219 ]
  %4300 = phi float [ %3395, %4203 ], [ %3395, %4264 ], [ %3395, %4262 ], [ %3395, %4249 ], [ %4246, %4219 ]
  %4301 = and i32 %4211, 12
  %4302 = icmp eq i32 %4301, 12
  br i1 %4302, label %4433, label %4303

; <label>:4303                                    ; preds = %4292
  %4304 = and i32 %4211, 2097184
  %4305 = icmp eq i32 %4304, 2097184
  %4306 = select i1 %4305, float %3693, float 0.000000e+00
  %4307 = and i32 %4211, 4194336
  %4308 = icmp eq i32 %4307, 4194336
  %4309 = select i1 %4308, float %3693, float 0.000000e+00
  %4310 = and i32 %4211, 8388640
  %4311 = icmp eq i32 %4310, 8388640
  %4312 = select i1 %4311, float %3693, float 0.000000e+00
  %4313 = and i32 %4211, 1024
  %4314 = icmp ne i32 %4313, 0
  %4315 = select i1 %4314, float %3693, float 0.000000e+00
  %4316 = and i32 %4211, 2048
  %4317 = icmp ne i32 %4316, 0
  %4318 = select i1 %4317, float %3693, float 0.000000e+00
  %4319 = and i32 %4211, 8192
  %4320 = icmp ne i32 %4319, 0
  %4321 = select i1 %4320, float %3693, float 0.000000e+00
  %4322 = icmp eq i32 %4301, 0
  br i1 %4322, label %4323, label %4357

; <label>:4323                                    ; preds = %4303
  %4324 = fsub fast float %3994, %3377
  %4325 = fsub fast float %3995, %3378
  %4326 = fmul fast float %4306, %4324
  %4327 = fmul fast float %4306, %4325
  %4328 = fadd fast float %4326, %3377
  %4329 = fadd fast float %4327, %3378
  %4330 = fsub fast float %3996, %3393
  %4331 = fmul fast float %4309, %4330
  %4332 = fadd fast float %4331, %3393
  %4333 = fsub fast float %3993, %3392
  %4334 = fmul fast float %4312, %4333
  %4335 = fadd fast float %4334, %3392
  %4336 = fsub fast float %4099, %3388
  %4337 = fsub fast float %4100, %3389
  %4338 = fsub fast float %4101, %3390
  %4339 = fmul fast float %4315, %4336
  %4340 = fmul fast float %4315, %4337
  %4341 = fmul fast float %4315, %4338
  %4342 = fadd fast float %4339, %3388
  %4343 = fadd fast float %4340, %3389
  %4344 = fadd fast float %4341, %3390
  %4345 = fsub fast float %4154, %3394
  %4346 = fmul fast float %4318, %4345
  %4347 = fadd fast float %4346, %3394
  %4348 = fsub fast float %4151, %3385
  %4349 = fsub fast float %4152, %3386
  %4350 = fsub fast float %4153, %3387
  %4351 = fmul fast float %4321, %4348
  %4352 = fmul fast float %4321, %4349
  %4353 = fmul fast float %4321, %4350
  %4354 = fadd fast float %4351, %3385
  %4355 = fadd fast float %4352, %3386
  %4356 = fadd fast float %4353, %3387
  br label %4433

; <label>:4357                                    ; preds = %4303
  %4358 = icmp eq i32 %4301, 4
  br i1 %4358, label %4359, label %4405

; <label>:4359                                    ; preds = %4357
  %4360 = fmul fast float %4306, %3994
  %4361 = fmul fast float %4306, %3995
  %4362 = fadd fast float %4360, %3377
  %4363 = fadd fast float %4361, %3378
  %4364 = call float @dx.op.binary.f32(i32 36, float %3393, float %3996)  ; FMin(a,b)
  %4365 = fsub fast float %4364, %3393
  %4366 = fmul fast float %4365, %4309
  %4367 = fadd fast float %4366, %3393
  %4368 = fadd fast float %3993, %3392
  %4369 = fmul fast float %4368, 0x3FF337FAE0000000
  %4370 = fmul fast float %3392, %3392
  %4371 = fmul fast float %3993, %3993
  %4372 = fadd fast float %4371, %4370
  %4373 = fmul fast float %4372, 0x3FE5152B00000000
  %4374 = fmul fast float %3392, 0xBFCC1F85E0000000
  %4375 = fmul fast float %4374, %3993
  %4376 = fadd fast float %4375, 0xBFE1363700000000
  %4377 = fadd fast float %4376, %4369
  %4378 = fsub fast float %4377, %4373
  %4379 = fmul fast float %4368, 0x3FBA6F0D00000000
  %4380 = fmul fast float %4372, 0x3FD0432880000000
  %4381 = fmul fast float %3392, 0xBFEF110800000000
  %4382 = fmul fast float %4381, %3993
  %4383 = fadd fast float %4382, 1.000000e+00
  %4384 = fsub fast float %4383, %4379
  %4385 = fadd fast float %4384, %4380
  %4386 = fdiv fast float %4378, %4385
  %4387 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4388 = fsub fast float %4387, %3392
  %4389 = fmul fast float %4388, %4312
  %4390 = fadd fast float %4389, %3392
  %4391 = fmul fast float %4315, %4099
  %4392 = fmul fast float %4315, %4100
  %4393 = fmul fast float %4315, %4101
  %4394 = fadd fast float %4391, %3388
  %4395 = fadd fast float %4392, %3389
  %4396 = fadd fast float %4393, %3390
  %4397 = fmul fast float %4318, %4154
  %4398 = fadd fast float %4397, %3394
  %4399 = fmul fast float %4321, %4151
  %4400 = fmul fast float %4321, %4152
  %4401 = fmul fast float %4321, %4153
  %4402 = fadd fast float %4399, %3385
  %4403 = fadd fast float %4400, %3386
  %4404 = fadd fast float %4401, %3387
  br label %4433

; <label>:4405                                    ; preds = %4357
  %4406 = icmp eq i32 %4301, 8
  br i1 %4406, label %4407, label %4433

; <label>:4407                                    ; preds = %4405
  %4408 = fmul fast float %4306, %3994
  %4409 = fmul fast float %4306, %3995
  %4410 = fadd fast float %4408, %3377
  %4411 = fadd fast float %4409, %3378
  %4412 = call float @dx.op.binary.f32(i32 36, float %3393, float %3996)  ; FMin(a,b)
  %4413 = fsub fast float %4412, %3393
  %4414 = fmul fast float %4413, %4309
  %4415 = fadd fast float %4414, %3393
  %4416 = fsub fast float %3993, %3392
  %4417 = fmul fast float %4312, %4416
  %4418 = fadd fast float %4417, %3392
  %4419 = fmul fast float %4315, %4099
  %4420 = fmul fast float %4315, %4100
  %4421 = fmul fast float %4315, %4101
  %4422 = fadd fast float %4419, %3388
  %4423 = fadd fast float %4420, %3389
  %4424 = fadd fast float %4421, %3390
  %4425 = fmul fast float %4318, %4154
  %4426 = fadd fast float %4425, %3394
  %4427 = fmul fast float %4321, %4151
  %4428 = fmul fast float %4321, %4152
  %4429 = fmul fast float %4321, %4153
  %4430 = fadd fast float %4427, %3385
  %4431 = fadd fast float %4428, %3386
  %4432 = fadd fast float %4429, %3387
  br label %4433

; <label>:4433                                    ; preds = %4407, %4405, %4359, %4323, %4292, %3692, %3396, %3376
  %4434 = phi float [ %3377, %4292 ], [ %3377, %3692 ], [ %3377, %3376 ], [ %3377, %3396 ], [ %4328, %4323 ], [ %4362, %4359 ], [ %3377, %4405 ], [ %4410, %4407 ]
  %4435 = phi float [ %3378, %4292 ], [ %3378, %3692 ], [ %3378, %3376 ], [ %3378, %3396 ], [ %4329, %4323 ], [ %4363, %4359 ], [ %3378, %4405 ], [ %4411, %4407 ]
  %4436 = phi float [ %4293, %4292 ], [ %3379, %3692 ], [ %3379, %3376 ], [ %3379, %3396 ], [ %4293, %4323 ], [ %4293, %4359 ], [ %4293, %4405 ], [ %4293, %4407 ]
  %4437 = phi float [ %4294, %4292 ], [ %3380, %3692 ], [ %3380, %3376 ], [ %3380, %3396 ], [ %4294, %4323 ], [ %4294, %4359 ], [ %4294, %4405 ], [ %4294, %4407 ]
  %4438 = phi float [ %4295, %4292 ], [ %3381, %3692 ], [ %3381, %3376 ], [ %3381, %3396 ], [ %4295, %4323 ], [ %4295, %4359 ], [ %4295, %4405 ], [ %4295, %4407 ]
  %4439 = phi float [ %4296, %4292 ], [ %3382, %3692 ], [ %3382, %3376 ], [ %3382, %3396 ], [ %4296, %4323 ], [ %4296, %4359 ], [ %4296, %4405 ], [ %4296, %4407 ]
  %4440 = phi float [ %4297, %4292 ], [ %3383, %3692 ], [ %3383, %3376 ], [ %3383, %3396 ], [ %4297, %4323 ], [ %4297, %4359 ], [ %4297, %4405 ], [ %4297, %4407 ]
  %4441 = phi float [ %4298, %4292 ], [ %3384, %3692 ], [ %3384, %3376 ], [ %3384, %3396 ], [ %4298, %4323 ], [ %4298, %4359 ], [ %4298, %4405 ], [ %4298, %4407 ]
  %4442 = phi float [ %3385, %4292 ], [ %3385, %3692 ], [ %3385, %3376 ], [ %3385, %3396 ], [ %4354, %4323 ], [ %4402, %4359 ], [ %3385, %4405 ], [ %4430, %4407 ]
  %4443 = phi float [ %3386, %4292 ], [ %3386, %3692 ], [ %3386, %3376 ], [ %3386, %3396 ], [ %4355, %4323 ], [ %4403, %4359 ], [ %3386, %4405 ], [ %4431, %4407 ]
  %4444 = phi float [ %3387, %4292 ], [ %3387, %3692 ], [ %3387, %3376 ], [ %3387, %3396 ], [ %4356, %4323 ], [ %4404, %4359 ], [ %3387, %4405 ], [ %4432, %4407 ]
  %4445 = phi float [ %3388, %4292 ], [ %3388, %3692 ], [ %3388, %3376 ], [ %3388, %3396 ], [ %4342, %4323 ], [ %4394, %4359 ], [ %3388, %4405 ], [ %4422, %4407 ]
  %4446 = phi float [ %3389, %4292 ], [ %3389, %3692 ], [ %3389, %3376 ], [ %3389, %3396 ], [ %4343, %4323 ], [ %4395, %4359 ], [ %3389, %4405 ], [ %4423, %4407 ]
  %4447 = phi float [ %3390, %4292 ], [ %3390, %3692 ], [ %3390, %3376 ], [ %3390, %3396 ], [ %4344, %4323 ], [ %4396, %4359 ], [ %3390, %4405 ], [ %4424, %4407 ]
  %4448 = phi float [ %4299, %4292 ], [ %3391, %3692 ], [ %3391, %3376 ], [ %3391, %3396 ], [ %4299, %4323 ], [ %4299, %4359 ], [ %4299, %4405 ], [ %4299, %4407 ]
  %4449 = phi float [ %3392, %4292 ], [ %3392, %3692 ], [ %3392, %3376 ], [ %3392, %3396 ], [ %4335, %4323 ], [ %4390, %4359 ], [ %3392, %4405 ], [ %4418, %4407 ]
  %4450 = phi float [ %3393, %4292 ], [ %3393, %3692 ], [ %3393, %3376 ], [ %3393, %3396 ], [ %4332, %4323 ], [ %4367, %4359 ], [ %3393, %4405 ], [ %4415, %4407 ]
  %4451 = phi float [ %3394, %4292 ], [ %3394, %3692 ], [ %3394, %3376 ], [ %3394, %3396 ], [ %4347, %4323 ], [ %4398, %4359 ], [ %3394, %4405 ], [ %4426, %4407 ]
  %4452 = phi float [ %4300, %4292 ], [ %3395, %3692 ], [ %3395, %3376 ], [ %3395, %3396 ], [ %4300, %4323 ], [ %4300, %4359 ], [ %4300, %4405 ], [ %4300, %4407 ]
  %4453 = add i32 %50, 408
  %4454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4453, i32 undef)  ; BufferLoad(srv,index,wot)
  %4455 = extractvalue %dx.types.ResRet.i32 %4454, 0
  %4456 = extractvalue %dx.types.ResRet.i32 %4454, 1
  %4457 = bitcast i32 %4455 to float
  %4458 = bitcast i32 %4456 to float
  %4459 = fcmp fast oge float %4457, 0.000000e+00
  %4460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4461 = extractvalue %dx.types.CBufRet.f32 %4460, 0
  %4462 = select i1 %4459, float %4457, float %4461
  %4463 = add i32 %50, 504
  %4464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4463, i32 undef)  ; BufferLoad(srv,index,wot)
  %4465 = extractvalue %dx.types.ResRet.i32 %4464, 0
  %4466 = add i32 %4465, 0
  %4467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4467, %dx.types.Handle %96, float %78, float %79, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4469 = extractvalue %dx.types.ResRet.f32 %4468, 0
  %4470 = fmul fast float %4469, %4458
  %4471 = fadd fast float %4470, %4462
  %4472 = call float @dx.op.dot2.f32(i32 54, float %4434, float %4435, float %4434, float %4435)  ; Dot2(ax,ay,bx,by)
  %4473 = fmul fast float %4472, 0x3FE3333340000000
  %4474 = fsub fast float 1.000000e+00, %4473
  %4475 = call float @dx.op.dot3.f32(i32 55, float %4434, float %4435, float %4474, float %4434, float %4435, float %4474)  ; Dot3(ax,ay,az,bx,by,bz)
  %4476 = call float @dx.op.unary.f32(i32 25, float %4475)  ; Rsqrt(value)
  %4477 = fmul fast float %4476, %4434
  %4478 = fmul fast float %4476, %4435
  %4479 = fmul fast float %4474, %4476
  %4480 = fmul fast float %4479, %106
  %4481 = fmul fast float %4479, %107
  %4482 = fmul fast float %4479, %108
  %4483 = fmul fast float %4477, %71
  %4484 = fmul fast float %4477, %72
  %4485 = fmul fast float %4477, %73
  %4486 = fadd fast float %4480, %4483
  %4487 = fadd fast float %4481, %4484
  %4488 = fadd fast float %4482, %4485
  %4489 = fmul fast float %118, %4478
  %4490 = fmul fast float %119, %4478
  %4491 = fmul fast float %120, %4478
  %4492 = fadd fast float %4486, %4489
  %4493 = fadd fast float %4487, %4490
  %4494 = fadd fast float %4488, %4491
  %4495 = call float @dx.op.dot3.f32(i32 55, float %4492, float %4493, float %4494, float %4492, float %4493, float %4494)  ; Dot3(ax,ay,az,bx,by,bz)
  %4496 = call float @dx.op.unary.f32(i32 25, float %4495)  ; Rsqrt(value)
  %4497 = fmul fast float %4492, %4496
  %4498 = fmul fast float %4493, %4496
  %4499 = fmul fast float %4494, %4496
  %4500 = and i32 %52, 1
  %4501 = icmp eq i32 %4500, 0
  br i1 %4501, label %4502, label %5094

; <label>:4502                                    ; preds = %4433
  %4503 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4504 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4505 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4506 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4507 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4508 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4509 = fadd fast float %4503, %154
  %4510 = fadd fast float %4504, %155
  %4511 = fadd fast float %4505, %156
  %4512 = fadd fast float %4506, %154
  %4513 = fadd fast float %4507, %155
  %4514 = fadd fast float %4508, %156
  %4515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.f32 %4515, 0
  %4517 = extractvalue %dx.types.CBufRet.f32 %4515, 1
  %4518 = extractvalue %dx.types.CBufRet.f32 %4515, 2
  %4519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4520 = extractvalue %dx.types.CBufRet.f32 %4519, 2
  %4521 = extractvalue %dx.types.CBufRet.f32 %4519, 3
  %4522 = fmul fast float %4516, %99
  %4523 = fmul fast float %4522, %4520
  %4524 = fmul fast float %4517, %100
  %4525 = fmul fast float %4524, %4521
  %4526 = fptoui float %4523 to i32
  %4527 = fptoui float %4525 to i32
  %4528 = fadd fast float %4516, -1.000000e+00
  %4529 = fadd fast float %4517, -1.000000e+00
  %4530 = fptoui float %4528 to i32
  %4531 = fptoui float %4529 to i32
  %4532 = call i32 @dx.op.binary.i32(i32 40, i32 %4526, i32 %4530)  ; UMin(a,b)
  %4533 = call i32 @dx.op.binary.i32(i32 40, i32 %4527, i32 %4531)  ; UMin(a,b)
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 2
  %4536 = extractvalue %dx.types.CBufRet.f32 %4534, 3
  %4537 = fmul fast float %4535, %87
  %4538 = fsub fast float %4537, %4536
  %4539 = fadd fast float %4518, -1.000000e+00
  %4540 = call float @dx.op.binary.f32(i32 36, float %4538, float %4539)  ; FMin(a,b)
  %4541 = fptoui float %4540 to i32
  %4542 = fptoui float %4516 to i32
  %4543 = fptoui float %4517 to i32
  %4544 = mul i32 %4541, %4543
  %4545 = add i32 %4544, %4533
  %4546 = mul i32 %4545, %4542
  %4547 = add i32 %4546, %4532
  %4548 = shl i32 %4547, 2
  %4549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.i32 %4549, 0
  %4551 = and i32 %4550, 1023
  %4552 = lshr i32 %4550, 10
  %4553 = icmp eq i32 %4551, 0
  br i1 %4553, label %5057, label %4554

; <label>:4554                                    ; preds = %4502
  %4555 = and i32 %4550, 1023
  br label %4556

; <label>:4556                                    ; preds = %4688, %4554
  %4557 = phi i32 [ %4638, %4688 ], [ 0, %4554 ]
  %4558 = phi float [ %4689, %4688 ], [ 0.000000e+00, %4554 ]
  %4559 = phi float [ %4690, %4688 ], [ %4471, %4554 ]
  %4560 = phi float [ %4691, %4688 ], [ %4452, %4554 ]
  %4561 = phi float [ %4692, %4688 ], [ %4445, %4554 ]
  %4562 = phi float [ %4693, %4688 ], [ %4446, %4554 ]
  %4563 = phi float [ %4694, %4688 ], [ %4447, %4554 ]
  %4564 = phi float [ %4695, %4688 ], [ 0.000000e+00, %4554 ]
  %4565 = phi float [ %4696, %4688 ], [ 0.000000e+00, %4554 ]
  %4566 = phi float [ %4697, %4688 ], [ %4442, %4554 ]
  %4567 = phi float [ %4698, %4688 ], [ %4443, %4554 ]
  %4568 = phi float [ %4699, %4688 ], [ %4444, %4554 ]
  %4569 = phi float [ %4700, %4688 ], [ %4439, %4554 ]
  %4570 = phi float [ %4701, %4688 ], [ %4440, %4554 ]
  %4571 = phi float [ %4702, %4688 ], [ %4441, %4554 ]
  %4572 = phi float [ %4703, %4688 ], [ %4497, %4554 ]
  %4573 = phi float [ %4704, %4688 ], [ %4498, %4554 ]
  %4574 = phi float [ %4705, %4688 ], [ %4499, %4554 ]
  %4575 = phi float [ %4706, %4688 ], [ %4450, %4554 ]
  %4576 = phi float [ %4707, %4688 ], [ %4449, %4554 ]
  %4577 = phi float [ %4708, %4688 ], [ 0.000000e+00, %4554 ]
  %4578 = phi float [ %4709, %4688 ], [ %4448, %4554 ]
  %4579 = phi float [ %4710, %4688 ], [ %4436, %4554 ]
  %4580 = phi float [ %4711, %4688 ], [ %4437, %4554 ]
  %4581 = phi float [ %4712, %4688 ], [ %4438, %4554 ]
  %4582 = add nuw nsw i32 %4557, %4552
  %4583 = shl i32 %4582, 2
  %4584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.i32 %4584, 0
  %4586 = shl i32 %4585, 8
  %4587 = or i32 %4586, 48
  %4588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.ResRet.f32 %4588, 1
  %4591 = extractvalue %dx.types.ResRet.f32 %4588, 2
  %4592 = extractvalue %dx.types.ResRet.f32 %4588, 3
  %4593 = or i32 %4586, 64
  %4594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4593, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.i32 %4594, 0
  %4596 = extractvalue %dx.types.ResRet.i32 %4594, 1
  %4597 = or i32 %4586, 80
  %4598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 2
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 3
  %4601 = or i32 %4586, 96
  %4602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4601, i32 undef)  ; BufferLoad(srv,index,wot)
  %4603 = extractvalue %dx.types.ResRet.f32 %4602, 0
  %4604 = extractvalue %dx.types.ResRet.f32 %4602, 1
  %4605 = extractvalue %dx.types.ResRet.f32 %4602, 2
  %4606 = extractvalue %dx.types.ResRet.f32 %4602, 3
  %4607 = or i32 %4586, 112
  %4608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4607, i32 undef)  ; BufferLoad(srv,index,wot)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 2
  %4610 = or i32 %4586, 128
  %4611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4614 = extractvalue %dx.types.ResRet.f32 %4611, 2
  %4615 = extractvalue %dx.types.ResRet.f32 %4611, 3
  %4616 = or i32 %4586, 144
  %4617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4616, i32 undef)  ; BufferLoad(srv,index,wot)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.ResRet.f32 %4617, 1
  %4620 = extractvalue %dx.types.ResRet.f32 %4617, 2
  %4621 = extractvalue %dx.types.ResRet.f32 %4617, 3
  %4622 = or i32 %4586, 160
  %4623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4622, i32 undef)  ; BufferLoad(srv,index,wot)
  %4624 = extractvalue %dx.types.ResRet.f32 %4623, 0
  %4625 = extractvalue %dx.types.ResRet.f32 %4623, 1
  %4626 = extractvalue %dx.types.ResRet.f32 %4623, 2
  %4627 = extractvalue %dx.types.ResRet.f32 %4623, 3
  %4628 = or i32 %4586, 192
  %4629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4628, i32 undef)  ; BufferLoad(srv,index,wot)
  %4630 = extractvalue %dx.types.ResRet.i32 %4629, 0
  %4631 = or i32 %4586, 208
  %4632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4631, i32 undef)  ; BufferLoad(srv,index,wot)
  %4633 = extractvalue %dx.types.ResRet.f32 %4632, 0
  %4634 = or i32 %4586, 248
  %4635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4634, i32 undef)  ; BufferLoad(srv,index,wot)
  %4636 = extractvalue %dx.types.ResRet.f32 %4635, 0
  %4637 = extractvalue %dx.types.ResRet.f32 %4635, 1
  %4638 = add nuw nsw i32 %4557, 1
  %4639 = bitcast float %4592 to i32
  %4640 = and i32 %4639, 512
  %4641 = icmp eq i32 %4640, 0
  %4642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4643 = extractvalue %dx.types.ResRet.f32 %4642, 0
  %4644 = extractvalue %dx.types.ResRet.f32 %4642, 1
  %4645 = extractvalue %dx.types.ResRet.f32 %4642, 2
  %4646 = extractvalue %dx.types.ResRet.f32 %4642, 3
  %4647 = call float @dx.op.dot4.f32(i32 56, float %4643, float %4644, float %4645, float %4646, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4648 = or i32 %4586, 16
  %4649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4648, i32 undef)  ; BufferLoad(srv,index,wot)
  %4650 = extractvalue %dx.types.ResRet.f32 %4649, 0
  %4651 = extractvalue %dx.types.ResRet.f32 %4649, 1
  %4652 = extractvalue %dx.types.ResRet.f32 %4649, 2
  %4653 = extractvalue %dx.types.ResRet.f32 %4649, 3
  %4654 = call float @dx.op.dot4.f32(i32 56, float %4650, float %4651, float %4652, float %4653, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4655 = or i32 %4586, 32
  %4656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4655, i32 undef)  ; BufferLoad(srv,index,wot)
  %4657 = extractvalue %dx.types.ResRet.f32 %4656, 0
  %4658 = extractvalue %dx.types.ResRet.f32 %4656, 1
  %4659 = extractvalue %dx.types.ResRet.f32 %4656, 2
  %4660 = extractvalue %dx.types.ResRet.f32 %4656, 3
  %4661 = call float @dx.op.dot4.f32(i32 56, float %4657, float %4658, float %4659, float %4660, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4662 = call float @dx.op.unary.f32(i32 27, float %4647)  ; Round_ni(value)
  %4663 = call float @dx.op.unary.f32(i32 6, float %4662)  ; FAbs(value)
  %4664 = call float @dx.op.unary.f32(i32 27, float %4654)  ; Round_ni(value)
  %4665 = call float @dx.op.unary.f32(i32 6, float %4664)  ; FAbs(value)
  %4666 = call float @dx.op.unary.f32(i32 6, float %4661)  ; FAbs(value)
  %4667 = call float @dx.op.unary.f32(i32 27, float %4666)  ; Round_ni(value)
  %4668 = fadd fast float %4665, %4663
  %4669 = fadd fast float %4668, %4667
  %4670 = fcmp fast oeq float %4669, 0.000000e+00
  %4671 = call float @dx.op.dot4.f32(i32 56, float %4643, float %4644, float %4645, float %4646, float %4509, float %4510, float %4511, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4672 = call float @dx.op.dot4.f32(i32 56, float %4650, float %4651, float %4652, float %4653, float %4509, float %4510, float %4511, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4673 = call float @dx.op.dot4.f32(i32 56, float %4643, float %4644, float %4645, float %4646, float %4512, float %4513, float %4514, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4674 = call float @dx.op.dot4.f32(i32 56, float %4650, float %4651, float %4652, float %4653, float %4512, float %4513, float %4514, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4675 = fsub fast float %4671, %4647
  %4676 = fsub fast float %4673, %4647
  %4677 = fsub fast float %4672, %4654
  %4678 = fsub fast float %4674, %4654
  %4679 = call float @dx.op.dot3.f32(i32 55, float %4589, float %4590, float %4591, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4681 = extractvalue %dx.types.CBufRet.f32 %4680, 2
  %4682 = fadd fast float %4681, %4679
  %4683 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4684 = extractvalue %dx.types.CBufRet.f32 %4680, 0
  %4685 = fcmp fast ogt float %4683, %4684
  %4686 = and i1 %4670, %4685
  %4687 = and i1 %4641, %4686
  br i1 %4687, label %4714, label %4688

; <label>:4688                                    ; preds = %5043, %4795, %4714, %4556
  %4689 = phi float [ %4558, %4714 ], [ %4798, %4795 ], [ %4798, %5043 ], [ %4558, %4556 ]
  %4690 = phi float [ %4559, %4714 ], [ %4559, %4795 ], [ %5019, %5043 ], [ %4559, %4556 ]
  %4691 = phi float [ %4560, %4714 ], [ %4560, %4795 ], [ %5017, %5043 ], [ %4560, %4556 ]
  %4692 = phi float [ %4561, %4714 ], [ %4561, %4795 ], [ %4995, %5043 ], [ %4561, %4556 ]
  %4693 = phi float [ %4562, %4714 ], [ %4562, %4795 ], [ %4996, %5043 ], [ %4562, %4556 ]
  %4694 = phi float [ %4563, %4714 ], [ %4563, %4795 ], [ %4997, %5043 ], [ %4563, %4556 ]
  %4695 = phi float [ %4564, %4714 ], [ %4564, %4795 ], [ %4922, %5043 ], [ %4564, %4556 ]
  %4696 = phi float [ %4565, %4714 ], [ %4565, %4795 ], [ %4920, %5043 ], [ %4565, %4556 ]
  %4697 = phi float [ %4566, %4714 ], [ %4566, %4795 ], [ %4965, %5043 ], [ %4566, %4556 ]
  %4698 = phi float [ %4567, %4714 ], [ %4567, %4795 ], [ %4966, %5043 ], [ %4567, %4556 ]
  %4699 = phi float [ %4568, %4714 ], [ %4568, %4795 ], [ %4967, %5043 ], [ %4568, %4556 ]
  %4700 = phi float [ %4569, %4714 ], [ %4569, %4795 ], [ %5053, %5043 ], [ %4569, %4556 ]
  %4701 = phi float [ %4570, %4714 ], [ %4570, %4795 ], [ %5054, %5043 ], [ %4570, %4556 ]
  %4702 = phi float [ %4571, %4714 ], [ %4571, %4795 ], [ %5055, %5043 ], [ %4571, %4556 ]
  %4703 = phi float [ %4572, %4714 ], [ %4572, %4795 ], [ %4901, %5043 ], [ %4572, %4556 ]
  %4704 = phi float [ %4573, %4714 ], [ %4573, %4795 ], [ %4902, %5043 ], [ %4573, %4556 ]
  %4705 = phi float [ %4574, %4714 ], [ %4574, %4795 ], [ %4903, %5043 ], [ %4574, %4556 ]
  %4706 = phi float [ %4575, %4714 ], [ %4575, %4795 ], [ %4975, %5043 ], [ %4575, %4556 ]
  %4707 = phi float [ %4576, %4714 ], [ %4576, %4795 ], [ %4972, %5043 ], [ %4576, %4556 ]
  %4708 = phi float [ %4577, %4714 ], [ %4577, %4795 ], [ %4969, %5043 ], [ %4577, %4556 ]
  %4709 = phi float [ %4578, %4714 ], [ %4578, %4795 ], [ %4918, %5043 ], [ %4578, %4556 ]
  %4710 = phi float [ %4579, %4714 ], [ %4579, %4795 ], [ %4913, %5043 ], [ %4579, %4556 ]
  %4711 = phi float [ %4580, %4714 ], [ %4580, %4795 ], [ %4914, %5043 ], [ %4580, %4556 ]
  %4712 = phi float [ %4581, %4714 ], [ %4581, %4795 ], [ %4915, %5043 ], [ %4581, %4556 ]
  %4713 = icmp eq i32 %4638, %4555
  br i1 %4713, label %5056, label %4556

; <label>:4714                                    ; preds = %4556
  %4715 = extractvalue %dx.types.ResRet.f32 %4608, 3
  %4716 = extractvalue %dx.types.ResRet.f32 %4608, 1
  %4717 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4718 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4719 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4720 = extractvalue %dx.types.ResRet.i32 %4594, 3
  %4721 = extractvalue %dx.types.ResRet.i32 %4594, 2
  %4722 = add i32 %4720, 0
  %4723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4722, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4725 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4723, %dx.types.Handle %4724, float %4647, float %4654, float undef, float undef, i32 0, i32 0, i32 undef, float %4675, float %4677, float undef, float %4676, float %4678, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4726 = extractvalue %dx.types.ResRet.f32 %4725, 0
  %4727 = fmul fast float %4726, %4719
  %4728 = fadd fast float %4727, %4718
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fmul fast float %4647, %4603
  %4731 = call float @dx.op.tertiary.f32(i32 46, float %4604, float %4654, float %4730)  ; FMad(a,b,c)
  %4732 = fadd fast float %4731, %4717
  %4733 = fmul fast float %4647, %4605
  %4734 = call float @dx.op.tertiary.f32(i32 46, float %4606, float %4654, float %4733)  ; FMad(a,b,c)
  %4735 = fadd fast float %4734, %4716
  %4736 = fmul fast float %4675, %4603
  %4737 = call float @dx.op.tertiary.f32(i32 46, float %4604, float %4677, float %4736)  ; FMad(a,b,c)
  %4738 = fmul fast float %4675, %4605
  %4739 = call float @dx.op.tertiary.f32(i32 46, float %4606, float %4677, float %4738)  ; FMad(a,b,c)
  %4740 = fmul fast float %4676, %4603
  %4741 = call float @dx.op.tertiary.f32(i32 46, float %4604, float %4678, float %4740)  ; FMad(a,b,c)
  %4742 = fmul fast float %4676, %4605
  %4743 = call float @dx.op.tertiary.f32(i32 46, float %4606, float %4678, float %4742)  ; FMad(a,b,c)
  %4744 = add i32 %4721, 0
  %4745 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4744, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4746 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4745, %dx.types.Handle %4724, float %4732, float %4735, float undef, float undef, i32 0, i32 0, i32 undef, float %4737, float %4739, float undef, float %4741, float %4743, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4747 = extractvalue %dx.types.ResRet.f32 %4746, 0
  %4748 = and i32 %4639, 1024
  %4749 = icmp ne i32 %4748, 0
  %4750 = fcmp fast ogt float %4747, 0x3FE0101020000000
  %4751 = uitofp i1 %4750 to float
  %4752 = select i1 %4749, float %4751, float %4747
  %4753 = and i32 %4639, 8192
  %4754 = icmp ne i32 %4753, 0
  %4755 = select i1 %4754, float %4715, float 1.000000e+00
  %4756 = fmul fast float %4647, 2.000000e+00
  %4757 = fadd fast float %4756, -1.000000e+00
  %4758 = call float @dx.op.unary.f32(i32 6, float %4757)  ; FAbs(value)
  %4759 = fmul fast float %4758, %4636
  %4760 = fsub fast float %4759, %4636
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4762 = fmul fast float %4654, 2.000000e+00
  %4763 = fadd fast float %4762, -1.000000e+00
  %4764 = call float @dx.op.unary.f32(i32 6, float %4763)  ; FAbs(value)
  %4765 = fmul fast float %4764, %4637
  %4766 = fsub fast float %4765, %4637
  %4767 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4768 = fmul fast float %4666, %4599
  %4769 = fsub fast float %4768, %4599
  %4770 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4771 = fmul fast float %4729, %4755
  %4772 = fmul fast float %4771, %4726
  %4773 = fmul fast float %4772, %4761
  %4774 = fmul fast float %4773, %4752
  %4775 = fmul fast float %4774, %4767
  %4776 = fmul fast float %4775, %4770
  %4777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4778 = extractvalue %dx.types.CBufRet.f32 %4777, 1
  %4779 = extractvalue %dx.types.CBufRet.f32 %4777, 0
  %4780 = fsub fast float %4683, %4779
  %4781 = fmul fast float %4780, %4778
  %4782 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4783 = fmul fast float %4776, %4600
  %4784 = fadd fast float %4776, %4600
  %4785 = fmul fast float %4784, %4609
  %4786 = fsub fast float %4785, %4609
  %4787 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4788 = and i32 %4639, 128
  %4789 = icmp ne i32 %4788, 0
  %4790 = select i1 %4789, float %4787, float %4783
  %4791 = fmul fast float %4790, %4782
  %4792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = extractvalue %dx.types.CBufRet.f32 %4792, 0
  %4794 = fcmp fast ugt float %4791, %4793
  br i1 %4794, label %4795, label %4688

; <label>:4795                                    ; preds = %4714
  %4796 = select i1 %4754, float %4791, float 0.000000e+00
  %4797 = fadd fast float %4796, %4558
  %4798 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  br i1 %4754, label %4688, label %4799

; <label>:4799                                    ; preds = %4795
  %4800 = and i32 %4639, 4
  %4801 = and i32 %4639, 8
  %4802 = add i32 %4595, 0
  %4803 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4802, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4805 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4803, %dx.types.Handle %4804, float %4732, float %4735, float undef, float undef, i32 0, i32 0, i32 undef, float %4737, float %4739, float undef, float %4741, float %4743, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4806 = extractvalue %dx.types.ResRet.f32 %4805, 0
  %4807 = extractvalue %dx.types.ResRet.f32 %4805, 1
  %4808 = extractvalue %dx.types.ResRet.f32 %4805, 2
  %4809 = extractvalue %dx.types.ResRet.f32 %4805, 3
  %4810 = bitcast float %4621 to i32
  %4811 = and i32 %4810, 255
  %4812 = uitofp i32 %4811 to float
  %4813 = lshr i32 %4810, 8
  %4814 = and i32 %4813, 255
  %4815 = uitofp i32 %4814 to float
  %4816 = fmul fast float %4809, %4812
  %4817 = fadd fast float %4816, %4815
  %4818 = fmul fast float %4817, 0x3F70101000000000
  %4819 = add i32 %4596, 0
  %4820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4819, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4821 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4820, %dx.types.Handle %4804, float %4732, float %4735, float undef, float undef, i32 0, i32 0, i32 undef, float %4737, float %4739, float undef, float %4741, float %4743, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4822 = extractvalue %dx.types.ResRet.f32 %4821, 0
  %4823 = extractvalue %dx.types.ResRet.f32 %4821, 1
  %4824 = extractvalue %dx.types.ResRet.f32 %4821, 2
  %4825 = extractvalue %dx.types.ResRet.f32 %4821, 3
  %4826 = bitcast float %4615 to i32
  %4827 = and i32 %4826, 255
  %4828 = uitofp i32 %4827 to float
  %4829 = lshr i32 %4826, 8
  %4830 = and i32 %4829, 255
  %4831 = uitofp i32 %4830 to float
  %4832 = lshr i32 %4826, 16
  %4833 = and i32 %4832, 255
  %4834 = uitofp i32 %4833 to float
  %4835 = fmul fast float %4834, 0x3F70101000000000
  %4836 = fmul fast float %4822, %4828
  %4837 = fadd fast float %4836, %4831
  %4838 = fmul fast float %4837, 0x3F70101000000000
  %4839 = fadd fast float %4823, -5.000000e-01
  %4840 = fadd fast float %4825, -5.000000e-01
  %4841 = fmul fast float %4839, %4835
  %4842 = fmul fast float %4840, %4835
  %4843 = fadd fast float %4841, 5.000000e-01
  %4844 = fadd fast float %4842, 5.000000e-01
  %4845 = fmul fast float %4806, %4624
  %4846 = fmul fast float %4807, %4625
  %4847 = fmul fast float %4808, %4626
  %4848 = fmul fast float %4843, 2.000000e+00
  %4849 = fadd fast float %4848, -1.000000e+00
  %4850 = fmul fast float %4844, 2.000000e+00
  %4851 = fadd fast float %4850, -1.000000e+00
  %4852 = fadd fast float %4849, %4851
  %4853 = fmul fast float %4852, 5.000000e-01
  %4854 = fsub fast float %4849, %4851
  %4855 = fmul fast float %4854, 5.000000e-01
  %4856 = call float @dx.op.unary.f32(i32 6, float %4853)  ; FAbs(value)
  %4857 = fsub fast float 1.000000e+00, %4856
  %4858 = call float @dx.op.unary.f32(i32 6, float %4855)  ; FAbs(value)
  %4859 = fsub fast float %4857, %4858
  %4860 = call float @dx.op.dot3.f32(i32 55, float %4853, float %4855, float %4859, float %4853, float %4855, float %4859)  ; Dot3(ax,ay,az,bx,by,bz)
  %4861 = call float @dx.op.unary.f32(i32 25, float %4860)  ; Rsqrt(value)
  %4862 = fmul fast float %4853, %4861
  %4863 = fmul fast float %4855, %4861
  %4864 = fmul fast float %4861, %4859
  %4865 = fmul fast float %4864, %4589
  %4866 = fmul fast float %4864, %4590
  %4867 = fmul fast float %4864, %4591
  %4868 = fmul fast float %4862, %4612
  %4869 = fmul fast float %4862, %4613
  %4870 = fmul fast float %4862, %4614
  %4871 = fadd fast float %4868, %4865
  %4872 = fadd fast float %4869, %4866
  %4873 = fadd fast float %4870, %4867
  %4874 = fmul fast float %4863, %4618
  %4875 = fmul fast float %4863, %4619
  %4876 = fmul fast float %4863, %4620
  %4877 = fadd fast float %4871, %4874
  %4878 = fadd fast float %4872, %4875
  %4879 = fadd fast float %4873, %4876
  %4880 = call float @dx.op.dot3.f32(i32 55, float %4877, float %4878, float %4879, float %4877, float %4878, float %4879)  ; Dot3(ax,ay,az,bx,by,bz)
  %4881 = call float @dx.op.unary.f32(i32 25, float %4880)  ; Rsqrt(value)
  %4882 = fmul fast float %4877, %4881
  %4883 = fmul fast float %4878, %4881
  %4884 = fmul fast float %4879, %4881
  %4885 = icmp ne i32 %4801, 0
  %4886 = select i1 %4885, float 1.000000e+00, float 0.000000e+00
  %4887 = fmul fast float %4791, %4886
  %4888 = and i32 %4639, 1
  %4889 = icmp eq i32 %4888, 0
  br i1 %4889, label %4890, label %4894

; <label>:4890                                    ; preds = %4799
  %4891 = fsub fast float %4882, %4572
  %4892 = fsub fast float %4883, %4573
  %4893 = fsub fast float %4884, %4574
  br label %4894

; <label>:4894                                    ; preds = %4890, %4799
  %4895 = phi float [ %4891, %4890 ], [ %4882, %4799 ]
  %4896 = phi float [ %4892, %4890 ], [ %4883, %4799 ]
  %4897 = phi float [ %4893, %4890 ], [ %4884, %4799 ]
  %4898 = fmul float %4897, %4887
  %4899 = fmul float %4896, %4887
  %4900 = fmul float %4895, %4887
  %4901 = fadd fast float %4900, %4572
  %4902 = fadd fast float %4899, %4573
  %4903 = fadd fast float %4898, %4574
  %4904 = icmp ne i32 %4800, 0
  %4905 = select i1 %4904, float 1.000000e+00, float 0.000000e+00
  %4906 = fmul fast float %4791, %4905
  %4907 = fsub fast float %4845, %4579
  %4908 = fsub fast float %4846, %4580
  %4909 = fsub fast float %4847, %4581
  %4910 = fmul fast float %4907, %4906
  %4911 = fmul fast float %4908, %4906
  %4912 = fmul fast float %4909, %4906
  %4913 = fadd fast float %4910, %4579
  %4914 = fadd fast float %4911, %4580
  %4915 = fadd fast float %4912, %4581
  %4916 = fsub fast float %4818, %4578
  %4917 = fmul fast float %4916, %4906
  %4918 = fadd fast float %4917, %4578
  %4919 = fmul fast float %4906, %4565
  %4920 = fsub fast float %4565, %4919
  %4921 = fmul fast float %4906, %4564
  %4922 = fsub fast float %4564, %4921
  %4923 = bitcast float %4633 to i32
  %4924 = lshr i32 %4923, 16
  %4925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4924)  ; LegacyF16ToF32(value)
  %4926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %4927 = extractvalue %dx.types.ResRet.i32 %4926, 0
  %4928 = and i32 %4927, 1
  %4929 = icmp eq i32 %4928, 0
  br i1 %4929, label %4930, label %4955

; <label>:4930                                    ; preds = %4894
  %4931 = fadd fast float %4818, 0xBFB99999A0000000
  %4932 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4933 = fmul fast float %4932, 0x3FF1C71C80000000
  %4934 = fsub fast float 1.000000e+00, %4933
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = fmul fast float %4935, %4845
  %4937 = fmul fast float %4935, %4846
  %4938 = fmul fast float %4935, %4847
  %4939 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4940 = call float @dx.op.unary.f32(i32 7, float %4937)  ; Saturate(value)
  %4941 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4942 = call float @dx.op.binary.f32(i32 35, float %4940, float %4941)  ; FMax(a,b)
  %4943 = call float @dx.op.binary.f32(i32 35, float %4939, float %4942)  ; FMax(a,b)
  %4944 = fcmp fast ogt float %4943, 0.000000e+00
  %4945 = bitcast float %4943 to i32
  %4946 = sub nsw i32 2129859010, %4945
  %4947 = bitcast i32 %4946 to float
  %4948 = select i1 %4944, float %4947, float 0.000000e+00
  %4949 = fmul fast float %4939, %4925
  %4950 = fmul fast float %4940, %4925
  %4951 = fmul fast float %4941, %4925
  %4952 = fmul fast float %4949, %4948
  %4953 = fmul fast float %4950, %4948
  %4954 = fmul fast float %4951, %4948
  br label %4955

; <label>:4955                                    ; preds = %4930, %4894
  %4956 = phi float [ %4925, %4894 ], [ %4952, %4930 ]
  %4957 = phi float [ %4925, %4894 ], [ %4953, %4930 ]
  %4958 = phi float [ %4925, %4894 ], [ %4954, %4930 ]
  %4959 = fsub fast float %4956, %4566
  %4960 = fsub fast float %4957, %4567
  %4961 = fsub fast float %4958, %4568
  %4962 = fmul fast float %4959, %4906
  %4963 = fmul fast float %4960, %4906
  %4964 = fmul fast float %4961, %4906
  %4965 = fadd fast float %4962, %4566
  %4966 = fadd fast float %4963, %4567
  %4967 = fadd fast float %4964, %4568
  %4968 = fadd fast float %4791, %4577
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = fsub fast float %4838, %4576
  %4971 = fmul fast float %4970, %4887
  %4972 = fadd fast float %4971, %4576
  %4973 = fsub fast float %4824, %4575
  %4974 = fmul fast float %4973, %4887
  %4975 = fadd fast float %4974, %4575
  br i1 %4889, label %4984, label %4976

; <label>:4976                                    ; preds = %4955
  %4977 = and i32 %4639, 32768
  %4978 = icmp eq i32 %4977, 0
  br i1 %4978, label %4994, label %4979

; <label>:4979                                    ; preds = %4976
  %4980 = fmul fast float %4887, 1.270000e+02
  %4981 = fadd fast float %4980, %4561
  %4982 = fadd fast float %4980, %4562
  %4983 = fadd fast float %4980, %4563
  br label %4994

; <label>:4984                                    ; preds = %4955
  %4985 = fsub fast float 1.270000e+02, %4561
  %4986 = fsub fast float 1.270000e+02, %4562
  %4987 = fsub fast float 1.270000e+02, %4563
  %4988 = fmul fast float %4887, %4985
  %4989 = fmul fast float %4887, %4986
  %4990 = fmul fast float %4887, %4987
  %4991 = fadd fast float %4988, %4561
  %4992 = fadd fast float %4989, %4562
  %4993 = fadd fast float %4990, %4563
  br label %4994

; <label>:4994                                    ; preds = %4984, %4979, %4976
  %4995 = phi float [ %4981, %4979 ], [ %4561, %4976 ], [ %4991, %4984 ]
  %4996 = phi float [ %4982, %4979 ], [ %4562, %4976 ], [ %4992, %4984 ]
  %4997 = phi float [ %4983, %4979 ], [ %4563, %4976 ], [ %4993, %4984 ]
  %4998 = call float @dx.op.dot3.f32(i32 55, float %4845, float %4846, float %4847, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.CBufRet.f32 %4999, 1
  %5002 = fmul fast float %5001, %4998
  %5003 = fadd fast float %5002, %5000
  %5004 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5005 = bitcast float %4627 to i32
  %5006 = and i32 %5005, 65535
  %5007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5006)  ; LegacyF16ToF32(value)
  %5008 = lshr i32 %5005, 16
  %5009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5008)  ; LegacyF16ToF32(value)
  %5010 = fcmp fast oge float %5007, 0.000000e+00
  %5011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5012 = extractvalue %dx.types.CBufRet.f32 %5011, 0
  %5013 = select i1 %5010, float %5007, float %5012
  %5014 = fadd fast float %5013, %5009
  %5015 = fsub fast float %5004, %4560
  %5016 = fmul fast float %5015, %4791
  %5017 = fadd fast float %5016, %4560
  %5018 = fmul fast float %5014, %4791
  %5019 = call float @dx.op.binary.f32(i32 35, float %4559, float %5018)  ; FMax(a,b)
  %5020 = and i32 %4639, 16
  %5021 = icmp eq i32 %5020, 0
  br i1 %5021, label %5043, label %5022

; <label>:5022                                    ; preds = %4994
  %5023 = add i32 %4630, 0
  %5024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5023, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5025 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5024, %dx.types.Handle %4804, float %4732, float %4735, float undef, float undef, i32 0, i32 0, i32 undef, float %4737, float %4739, float undef, float %4741, float %4743, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5026 = extractvalue %dx.types.ResRet.f32 %5025, 0
  %5027 = extractvalue %dx.types.ResRet.f32 %5025, 1
  %5028 = extractvalue %dx.types.ResRet.f32 %5025, 2
  %5029 = and i32 %4923, 65535
  %5030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5029)  ; LegacyF16ToF32(value)
  %5031 = fmul fast float %5026, %4624
  %5032 = fmul fast float %5027, %4625
  %5033 = fmul fast float %5028, %4626
  %5034 = and i32 %4639, 16384
  %5035 = icmp ne i32 %5034, 0
  %5036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5037 = extractvalue %dx.types.CBufRet.f32 %5036, 0
  %5038 = select i1 %5035, float %5037, float 1.000000e+00
  %5039 = fmul fast float %5038, %5030
  %5040 = fmul fast float %5031, %5039
  %5041 = fmul fast float %5032, %5039
  %5042 = fmul fast float %5033, %5039
  br label %5043

; <label>:5043                                    ; preds = %5022, %4994
  %5044 = phi float [ %5040, %5022 ], [ 0.000000e+00, %4994 ]
  %5045 = phi float [ %5041, %5022 ], [ 0.000000e+00, %4994 ]
  %5046 = phi float [ %5042, %5022 ], [ 0.000000e+00, %4994 ]
  %5047 = fsub fast float %5044, %4569
  %5048 = fsub fast float %5045, %4570
  %5049 = fsub fast float %5046, %4571
  %5050 = fmul fast float %5047, %4791
  %5051 = fmul fast float %5048, %4791
  %5052 = fmul fast float %5049, %4791
  %5053 = fadd fast float %5050, %4569
  %5054 = fadd fast float %5051, %4570
  %5055 = fadd fast float %5052, %4571
  br label %4688

; <label>:5056                                    ; preds = %4688
  br label %5057

; <label>:5057                                    ; preds = %5056, %4502
  %5058 = phi float [ 0.000000e+00, %4502 ], [ %4689, %5056 ]
  %5059 = phi float [ %4471, %4502 ], [ %4690, %5056 ]
  %5060 = phi float [ %4452, %4502 ], [ %4691, %5056 ]
  %5061 = phi float [ %4445, %4502 ], [ %4692, %5056 ]
  %5062 = phi float [ %4446, %4502 ], [ %4693, %5056 ]
  %5063 = phi float [ %4447, %4502 ], [ %4694, %5056 ]
  %5064 = phi float [ 0.000000e+00, %4502 ], [ %4695, %5056 ]
  %5065 = phi float [ 0.000000e+00, %4502 ], [ %4696, %5056 ]
  %5066 = phi float [ %4442, %4502 ], [ %4697, %5056 ]
  %5067 = phi float [ %4443, %4502 ], [ %4698, %5056 ]
  %5068 = phi float [ %4444, %4502 ], [ %4699, %5056 ]
  %5069 = phi float [ %4439, %4502 ], [ %4700, %5056 ]
  %5070 = phi float [ %4440, %4502 ], [ %4701, %5056 ]
  %5071 = phi float [ %4441, %4502 ], [ %4702, %5056 ]
  %5072 = phi float [ %4497, %4502 ], [ %4703, %5056 ]
  %5073 = phi float [ %4498, %4502 ], [ %4704, %5056 ]
  %5074 = phi float [ %4499, %4502 ], [ %4705, %5056 ]
  %5075 = phi float [ %4450, %4502 ], [ %4706, %5056 ]
  %5076 = phi float [ %4449, %4502 ], [ %4707, %5056 ]
  %5077 = phi float [ 0.000000e+00, %4502 ], [ %4708, %5056 ]
  %5078 = phi float [ %4448, %4502 ], [ %4709, %5056 ]
  %5079 = phi float [ %4436, %4502 ], [ %4710, %5056 ]
  %5080 = phi float [ %4437, %4502 ], [ %4711, %5056 ]
  %5081 = phi float [ %4438, %4502 ], [ %4712, %5056 ]
  %5082 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5074, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5083 = call float @dx.op.unary.f32(i32 25, float %5082)  ; Rsqrt(value)
  %5084 = fmul fast float %5083, %5072
  %5085 = fmul fast float %5083, %5073
  %5086 = fmul fast float %5083, %5074
  %5087 = fadd fast float %5077, %1277
  %5088 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5089 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %5086, float %5084, float %5085, float %5086)  ; Dot3(ax,ay,az,bx,by,bz)
  %5090 = call float @dx.op.unary.f32(i32 25, float %5089)  ; Rsqrt(value)
  %5091 = fmul fast float %5090, %5084
  %5092 = fmul fast float %5090, %5085
  %5093 = fmul fast float %5090, %5086
  br label %5094

; <label>:5094                                    ; preds = %5057, %4433
  %5095 = phi float [ %5091, %5057 ], [ %4497, %4433 ]
  %5096 = phi float [ %5092, %5057 ], [ %4498, %4433 ]
  %5097 = phi float [ %5093, %5057 ], [ %4499, %4433 ]
  %5098 = phi float [ %5079, %5057 ], [ %4436, %4433 ]
  %5099 = phi float [ %5080, %5057 ], [ %4437, %4433 ]
  %5100 = phi float [ %5081, %5057 ], [ %4438, %4433 ]
  %5101 = phi float [ %5069, %5057 ], [ %4439, %4433 ]
  %5102 = phi float [ %5070, %5057 ], [ %4440, %4433 ]
  %5103 = phi float [ %5071, %5057 ], [ %4441, %4433 ]
  %5104 = phi float [ %5061, %5057 ], [ %4445, %4433 ]
  %5105 = phi float [ %5062, %5057 ], [ %4446, %4433 ]
  %5106 = phi float [ %5063, %5057 ], [ %4447, %4433 ]
  %5107 = phi float [ %5066, %5057 ], [ %4442, %4433 ]
  %5108 = phi float [ %5067, %5057 ], [ %4443, %4433 ]
  %5109 = phi float [ %5068, %5057 ], [ %4444, %4433 ]
  %5110 = phi float [ %5078, %5057 ], [ %4448, %4433 ]
  %5111 = phi float [ %5088, %5057 ], [ %1277, %4433 ]
  %5112 = phi float [ %5076, %5057 ], [ %4449, %4433 ]
  %5113 = phi float [ %5075, %5057 ], [ %4450, %4433 ]
  %5114 = phi float [ %5065, %5057 ], [ 0.000000e+00, %4433 ]
  %5115 = phi float [ %5064, %5057 ], [ 0.000000e+00, %4433 ]
  %5116 = phi float [ %5058, %5057 ], [ 0.000000e+00, %4433 ]
  %5117 = phi float [ %5059, %5057 ], [ %4471, %4433 ]
  %5118 = phi float [ %5060, %5057 ], [ %4452, %4433 ]
  %5119 = add i32 %50, 392
  %5120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %5119, i32 undef)  ; BufferLoad(srv,index,wot)
  %5121 = extractvalue %dx.types.ResRet.i32 %5120, 0
  %5122 = extractvalue %dx.types.ResRet.i32 %5120, 1
  %5123 = extractvalue %dx.types.ResRet.i32 %5120, 2
  %5124 = extractvalue %dx.types.ResRet.i32 %5120, 3
  %5125 = bitcast i32 %5121 to float
  %5126 = bitcast i32 %5122 to float
  %5127 = bitcast i32 %5123 to float
  %5128 = bitcast i32 %5124 to float
  %5129 = fsub fast float %5098, %5125
  %5130 = fsub fast float %5099, %5126
  %5131 = fsub fast float %5100, %5127
  %5132 = fmul fast float %5129, %188
  %5133 = fmul fast float %5130, %188
  %5134 = fmul fast float %5131, %188
  %5135 = fadd fast float %5132, %5125
  %5136 = fadd fast float %5133, %5126
  %5137 = fadd fast float %5134, %5127
  %5138 = fsub fast float %5111, %5128
  %5139 = fmul fast float %5138, %188
  %5140 = fadd fast float %5139, %5128
  %5141 = fadd fast float %5110, 0xBFB99999A0000000
  %5142 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5143 = fmul fast float %5142, 0x3FF1C71C80000000
  %5144 = call float @dx.op.binary.f32(i32 36, float %5110, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5145 = fsub fast float 1.000000e+00, %5143
  %5146 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5147 = fmul fast float %5135, %5146
  %5148 = fmul fast float %5136, %5146
  %5149 = fmul fast float %5137, %5146
  %5150 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5151 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5152 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5153 = fmul fast float %5135, %5143
  %5154 = fmul fast float %5136, %5143
  %5155 = fmul fast float %5137, %5143
  %5156 = fadd fast float %5153, %5144
  %5157 = fadd fast float %5154, %5144
  %5158 = fadd fast float %5155, %5144
  %5159 = call float @dx.op.unary.f32(i32 7, float %5156)  ; Saturate(value)
  %5160 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5161 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  %5162 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5164 = extractvalue %dx.types.ResRet.i32 %5163, 0
  %5165 = and i32 %5164, 1
  %5166 = icmp eq i32 %5165, 0
  br i1 %5166, label %5181, label %5167

; <label>:5167                                    ; preds = %5094
  %5168 = call float @dx.op.binary.f32(i32 35, float %5151, float %5152)  ; FMax(a,b)
  %5169 = call float @dx.op.binary.f32(i32 35, float %5150, float %5168)  ; FMax(a,b)
  %5170 = fcmp fast ogt float %5169, 0.000000e+00
  %5171 = bitcast float %5169 to i32
  %5172 = sub nsw i32 2129859010, %5171
  %5173 = bitcast i32 %5172 to float
  %5174 = select i1 %5170, float %5173, float 0.000000e+00
  %5175 = fmul fast float %5150, %5107
  %5176 = fmul fast float %5151, %5108
  %5177 = fmul fast float %5152, %5109
  %5178 = fmul fast float %5175, %5174
  %5179 = fmul fast float %5176, %5174
  %5180 = fmul fast float %5177, %5174
  br label %5181

; <label>:5181                                    ; preds = %5167, %5094
  %5182 = phi float [ %5178, %5167 ], [ %5107, %5094 ]
  %5183 = phi float [ %5179, %5167 ], [ %5108, %5094 ]
  %5184 = phi float [ %5180, %5167 ], [ %5109, %5094 ]
  %5185 = call float @dx.op.binary.f32(i32 36, float %5104, float 1.270000e+02)  ; FMin(a,b)
  %5186 = call float @dx.op.binary.f32(i32 36, float %5105, float 1.270000e+02)  ; FMin(a,b)
  %5187 = call float @dx.op.binary.f32(i32 36, float %5106, float 1.270000e+02)  ; FMin(a,b)
  %5188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5189 = extractvalue %dx.types.CBufRet.i32 %5188, 3
  %5190 = and i32 %5189, 8
  %5191 = icmp ne i32 %5190, 0
  %5192 = call float @dx.op.binary.f32(i32 35, float %5150, float %5135)  ; FMax(a,b)
  %5193 = call float @dx.op.binary.f32(i32 35, float %5151, float %5135)  ; FMax(a,b)
  %5194 = call float @dx.op.binary.f32(i32 35, float %5152, float %5135)  ; FMax(a,b)
  %5195 = call float @dx.op.dot3.f32(i32 55, float %5150, float %5151, float %5152, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5196 = select i1 %247, float %5135, float %5150
  %5197 = select i1 %247, float %5195, float %5151
  %5198 = select i1 %247, float 1.000000e+00, float %5152
  %5199 = select i1 %5191, float %5192, float %5196
  %5200 = select i1 %5191, float %5193, float %5197
  %5201 = select i1 %5191, float %5194, float %5198
  %5202 = call float @dx.op.dot3.f32(i32 55, float %5182, float %5183, float %5184, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5203 = select i1 %247, float %5202, float %5182
  %5204 = select i1 %247, float %5202, float %5183
  %5205 = select i1 %247, float %5202, float %5184
  %5206 = and i32 %223, 3
  %5207 = select i1 %217, i32 %5206, i32 0
  %5208 = icmp eq i32 %5207, 1
  br i1 %5208, label %5209, label %5285

; <label>:5209                                    ; preds = %5181
  %5210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5211 = extractvalue %dx.types.CBufRet.f32 %5210, 0
  %5212 = extractvalue %dx.types.CBufRet.f32 %5210, 1
  %5213 = fadd fast float %5211, %154
  %5214 = fadd fast float %5212, %155
  %5215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5216 = extractvalue %dx.types.CBufRet.f32 %5215, 0
  %5217 = extractvalue %dx.types.CBufRet.f32 %5215, 1
  %5218 = fsub fast float %5213, %5216
  %5219 = fsub fast float %5214, %5217
  %5220 = fmul fast float %5218, %5218
  %5221 = fmul fast float %5219, %5219
  %5222 = fadd fast float %5220, %5221
  %5223 = call float @dx.op.unary.f32(i32 24, float %5222)  ; Sqrt(value)
  %5224 = extractvalue %dx.types.CBufRet.f32 %5215, 2
  %5225 = fcmp fast olt float %5223, %5224
  br i1 %5225, label %5226, label %5279

; <label>:5226                                    ; preds = %5209
  %5227 = extractvalue %dx.types.CBufRet.f32 %5210, 2
  %5228 = fadd fast float %5227, %156
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 0
  %5231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5232 = extractvalue %dx.types.CBufRet.f32 %5231, 0
  %5233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5233, 0
  %5235 = extractvalue %dx.types.CBufRet.f32 %5229, 1
  %5236 = extractvalue %dx.types.CBufRet.f32 %5231, 1
  %5237 = extractvalue %dx.types.CBufRet.f32 %5233, 1
  %5238 = extractvalue %dx.types.CBufRet.f32 %5229, 3
  %5239 = extractvalue %dx.types.CBufRet.f32 %5231, 3
  %5240 = extractvalue %dx.types.CBufRet.f32 %5233, 3
  %5241 = fadd fast float %5238, %5213
  %5242 = fadd fast float %5239, %5214
  %5243 = fadd fast float %5228, %5240
  %5244 = fmul fast float %5241, %5230
  %5245 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5232, float %5244)  ; FMad(a,b,c)
  %5246 = call float @dx.op.tertiary.f32(i32 46, float %5243, float %5234, float %5245)  ; FMad(a,b,c)
  %5247 = fmul fast float %5241, %5235
  %5248 = call float @dx.op.tertiary.f32(i32 46, float %5242, float %5236, float %5247)  ; FMad(a,b,c)
  %5249 = call float @dx.op.tertiary.f32(i32 46, float %5243, float %5237, float %5248)  ; FMad(a,b,c)
  %5250 = fsub fast float %5246, %5238
  %5251 = fsub fast float %5249, %5239
  %5252 = fsub fast float %5250, %5216
  %5253 = fadd fast float %5252, %5224
  %5254 = fsub fast float %5251, %5217
  %5255 = fadd fast float %5254, %5224
  %5256 = extractvalue %dx.types.CBufRet.f32 %5215, 3
  %5257 = fmul fast float %5253, %5256
  %5258 = fmul fast float %5255, %5256
  %5259 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5260 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5261 = fsub fast float 1.000000e+00, %5259
  %5262 = fsub fast float 1.000000e+00, %5260
  %5263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %5261, float %5262, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5264 = extractvalue %dx.types.ResRet.f32 %5263, 0
  %5265 = fcmp fast ugt float %5264, 0.000000e+00
  br i1 %5265, label %5266, label %5279

; <label>:5266                                    ; preds = %5226
  %5267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5268 = extractvalue %dx.types.CBufRet.f32 %5267, 2
  %5269 = fmul fast float %5268, %5264
  %5270 = extractvalue %dx.types.CBufRet.f32 %5267, 3
  %5271 = fadd fast float %5270, %5269
  %5272 = extractvalue %dx.types.CBufRet.f32 %5233, 2
  %5273 = fadd fast float %5271, %5240
  %5274 = fmul fast float %5246, %5234
  %5275 = call float @dx.op.tertiary.f32(i32 46, float %5249, float %5237, float %5274)  ; FMad(a,b,c)
  %5276 = call float @dx.op.tertiary.f32(i32 46, float %5273, float %5272, float %5275)  ; FMad(a,b,c)
  %5277 = fsub fast float %5276, %5240
  %5278 = fsub fast float %5277, %5227
  br label %5279

; <label>:5279                                    ; preds = %5266, %5226, %5209
  %5280 = phi i1 [ true, %5266 ], [ false, %5226 ], [ false, %5209 ]
  %5281 = phi float [ %5278, %5266 ], [ -1.310720e+05, %5226 ], [ -1.310720e+05, %5209 ]
  %5282 = fsub fast float %5281, %156
  %5283 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5284 = select i1 %5280, float %5283, float 1.000000e+00
  br label %5285

; <label>:5285                                    ; preds = %5279, %5181
  %5286 = phi float [ %5284, %5279 ], [ 0.000000e+00, %5181 ]
  %5287 = icmp eq i32 %5207, 3
  %5288 = select i1 %5287, float 1.000000e+00, float %5286
  %5289 = call float @dx.op.binary.f32(i32 35, float %5116, float %5288)  ; FMax(a,b)
  %5290 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5291 = fcmp fast une float %5290, 0.000000e+00
  %5292 = fsub fast float -0.000000e+00, %174
  %5293 = fsub fast float -0.000000e+00, %175
  %5294 = fsub fast float -0.000000e+00, %176
  br i1 %5291, label %5295, label %5457

; <label>:5295                                    ; preds = %5285
  %5296 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5297 = fmul fast float %5290, 2.500000e+00
  %5298 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5299 = fmul fast float %5290, 0x4013FFFFE0000000
  %5300 = fadd fast float %5299, 0xBFFFFFFFE0000000
  %5301 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5302 = fmul fast float %5290, 0x4004000020000000
  %5303 = fadd fast float %5302, 0xBFF8000040000000
  %5304 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5305 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5306 = fmul fast float %5141, 1.000000e+01
  %5307 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5308 = fmul fast float %5307, 2.000000e+00
  %5309 = fsub fast float 3.000000e+00, %5308
  %5310 = fmul fast float %5307, %5307
  %5311 = fmul fast float %5310, %5309
  %5312 = fsub fast float 1.000000e+00, %5311
  %5313 = fsub fast float 0x3FE3333340000000, %5162
  %5314 = fmul fast float %5313, 0x400AAAAAA0000000
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = fmul fast float %5312, %5315
  %5317 = fmul fast float %5199, 0x3FEA2B8620000000
  %5318 = fmul fast float %5200, 0x3FEA2B8620000000
  %5319 = fmul fast float %5201, 0x3FEA2B8620000000
  %5320 = fadd fast float %5317, 0x3FC81DFBA0000000
  %5321 = fmul fast float %5320, %5199
  %5322 = fadd fast float %5321, 0x3F910E6020000000
  %5323 = fadd fast float %5318, 0x3FC81DFBA0000000
  %5324 = fmul fast float %5323, %5200
  %5325 = fadd fast float %5324, 0x3F910E6020000000
  %5326 = fadd fast float %5319, 0x3FC81DFBA0000000
  %5327 = fmul fast float %5326, %5201
  %5328 = fadd fast float %5327, 0x3F910E6020000000
  %5329 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5330 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5331 = call float @dx.op.unary.f32(i32 7, float %5328)  ; Saturate(value)
  %5332 = fsub fast float %5329, %5199
  %5333 = fsub fast float %5330, %5200
  %5334 = fsub fast float %5331, %5201
  %5335 = fmul fast float %5332, %5305
  %5336 = fmul fast float %5335, %5316
  %5337 = fmul fast float %5333, %5305
  %5338 = fmul fast float %5337, %5316
  %5339 = fmul fast float %5334, %5305
  %5340 = fmul fast float %5339, %5316
  %5341 = fadd fast float %5336, %5199
  %5342 = fadd fast float %5338, %5200
  %5343 = fadd fast float %5340, %5201
  %5344 = fmul fast float %5113, %5113
  %5345 = fmul fast float %5344, %5344
  %5346 = fadd fast float %5301, 1.000000e+00
  %5347 = fsub fast float %5346, %5316
  %5348 = call float @dx.op.unary.f32(i32 7, float %5347)  ; Saturate(value)
  %5349 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5350 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5351 = fsub fast float 1.000000e+00, %5345
  %5352 = call float @dx.op.binary.f32(i32 36, float %5348, float %5351)  ; FMin(a,b)
  %5353 = call float @dx.op.unary.f32(i32 7, float %5304)  ; Saturate(value)
  %5354 = call float @dx.op.binary.f32(i32 35, float %5352, float %5353)  ; FMax(a,b)
  %5355 = fadd fast float %5350, 0xBFE4CCCCC0000000
  %5356 = fmul fast float %5355, 0x4006DB6DA0000000
  %5357 = call float @dx.op.unary.f32(i32 7, float %5356)  ; Saturate(value)
  %5358 = fmul fast float %5357, 2.000000e+00
  %5359 = fsub fast float 3.000000e+00, %5358
  %5360 = bitcast float %5159 to i32
  %5361 = ashr i32 %5360, 1
  %5362 = add nsw i32 %5361, 532487669
  %5363 = bitcast i32 %5362 to float
  %5364 = fsub fast float 1.000000e+00, %5363
  %5365 = bitcast float %5364 to i32
  %5366 = sub nsw i32 2129859010, %5365
  %5367 = bitcast i32 %5366 to float
  %5368 = fmul fast float %5367, 2.000000e+00
  %5369 = bitcast float %5160 to i32
  %5370 = ashr i32 %5369, 1
  %5371 = add nsw i32 %5370, 532487669
  %5372 = bitcast i32 %5371 to float
  %5373 = fsub fast float 1.000000e+00, %5372
  %5374 = bitcast float %5373 to i32
  %5375 = sub nsw i32 2129859010, %5374
  %5376 = bitcast i32 %5375 to float
  %5377 = fmul fast float %5376, 2.000000e+00
  %5378 = bitcast float %5161 to i32
  %5379 = ashr i32 %5378, 1
  %5380 = add nsw i32 %5379, 532487669
  %5381 = bitcast i32 %5380 to float
  %5382 = fsub fast float 1.000000e+00, %5381
  %5383 = bitcast float %5382 to i32
  %5384 = sub nsw i32 2129859010, %5383
  %5385 = bitcast i32 %5384 to float
  %5386 = fmul fast float %5385, 2.000000e+00
  %5387 = fsub fast float 0x4002A9FBE0000000, %5368
  %5388 = fadd fast float %5368, 0x3FD54FDF00000000
  %5389 = bitcast float %5388 to i32
  %5390 = sub nsw i32 2129859010, %5389
  %5391 = bitcast i32 %5390 to float
  %5392 = fmul fast float %5391, %5387
  %5393 = fmul fast float %5392, %5392
  %5394 = fsub fast float 0x4002A9FBE0000000, %5377
  %5395 = fadd fast float %5377, 0x3FD54FDF00000000
  %5396 = bitcast float %5395 to i32
  %5397 = sub nsw i32 2129859010, %5396
  %5398 = bitcast i32 %5397 to float
  %5399 = fmul fast float %5398, %5394
  %5400 = fmul fast float %5399, %5399
  %5401 = fsub fast float 0x4002A9FBE0000000, %5386
  %5402 = fadd fast float %5386, 0x3FD54FDF00000000
  %5403 = bitcast float %5402 to i32
  %5404 = sub nsw i32 2129859010, %5403
  %5405 = bitcast i32 %5404 to float
  %5406 = fmul fast float %5405, %5401
  %5407 = fmul fast float %5406, %5406
  %5408 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5393)  ; FMax(a,b)
  %5409 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5400)  ; FMax(a,b)
  %5410 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5407)  ; FMax(a,b)
  %5411 = fsub fast float 1.000000e+00, %5296
  %5412 = fadd fast float %5411, %5312
  %5413 = call float @dx.op.unary.f32(i32 7, float %5412)  ; Saturate(value)
  %5414 = fsub fast float 1.000000e+00, %5288
  %5415 = fmul fast float %5354, %5414
  %5416 = fmul fast float %5357, %5357
  %5417 = fmul fast float %5416, %5415
  %5418 = fmul fast float %5417, %5359
  %5419 = fmul fast float %5414, 0xBFE99999A0000000
  %5420 = fmul fast float %5419, %5305
  %5421 = fmul fast float %5420, %5316
  %5422 = fadd fast float %5421, 1.000000e+00
  %5423 = fadd fast float %5162, -1.000000e+00
  %5424 = fmul fast float %5422, %5423
  %5425 = fadd fast float %5424, 1.000000e+00
  %5426 = fsub fast float %5408, %5159
  %5427 = fsub fast float %5409, %5160
  %5428 = fsub fast float %5410, %5161
  %5429 = fmul fast float %5418, %5426
  %5430 = fmul fast float %5418, %5427
  %5431 = fmul fast float %5418, %5428
  %5432 = fadd fast float %5429, %5159
  %5433 = fadd fast float %5430, %5160
  %5434 = fadd fast float %5431, %5161
  %5435 = fsub fast float %106, %5095
  %5436 = fsub fast float %107, %5096
  %5437 = fsub fast float %108, %5097
  %5438 = fmul fast float %5418, %5435
  %5439 = fmul fast float %5418, %5436
  %5440 = fmul fast float %5418, %5437
  %5441 = fadd fast float %5438, %5095
  %5442 = fadd fast float %5439, %5096
  %5443 = fadd fast float %5440, %5097
  %5444 = fmul fast float %5418, %5413
  %5445 = call float @dx.op.unary.f32(i32 7, float %5425)  ; Saturate(value)
  %5446 = fsub fast float 1.000000e+00, %5445
  %5447 = fmul fast float %5444, %5446
  %5448 = fadd fast float %5447, %5445
  %5449 = fsub fast float 1.000000e+00, %5113
  %5450 = fmul fast float %5418, %5449
  %5451 = fadd fast float %5450, %5113
  %5452 = call float @dx.op.dot3.f32(i32 55, float %5441, float %5442, float %5443, float %5441, float %5442, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5453 = call float @dx.op.unary.f32(i32 25, float %5452)  ; Rsqrt(value)
  %5454 = fmul fast float %5441, %5453
  %5455 = fmul fast float %5442, %5453
  %5456 = fmul fast float %5443, %5453
  br label %5457

; <label>:5457                                    ; preds = %5295, %5285
  %5458 = phi float [ %5341, %5295 ], [ %5199, %5285 ]
  %5459 = phi float [ %5342, %5295 ], [ %5200, %5285 ]
  %5460 = phi float [ %5343, %5295 ], [ %5201, %5285 ]
  %5461 = phi float [ %5432, %5295 ], [ %5159, %5285 ]
  %5462 = phi float [ %5433, %5295 ], [ %5160, %5285 ]
  %5463 = phi float [ %5434, %5295 ], [ %5161, %5285 ]
  %5464 = phi float [ %5454, %5295 ], [ %5095, %5285 ]
  %5465 = phi float [ %5455, %5295 ], [ %5096, %5285 ]
  %5466 = phi float [ %5456, %5295 ], [ %5097, %5285 ]
  %5467 = phi float [ %5448, %5295 ], [ %5162, %5285 ]
  %5468 = phi float [ %5451, %5295 ], [ %5113, %5285 ]
  %5469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5470 = extractvalue %dx.types.CBufRet.f32 %5469, 2
  %5471 = extractvalue %dx.types.CBufRet.f32 %5469, 3
  %5472 = fmul fast float %124, %5470
  %5473 = fmul fast float %126, %5471
  %5474 = fsub fast float 1.000000e+00, %5472
  %5475 = fsub fast float 1.000000e+00, %5473
  %5476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5477 = extractvalue %dx.types.CBufRet.f32 %5476, 0
  %5478 = extractvalue %dx.types.CBufRet.f32 %5476, 1
  %5479 = extractvalue %dx.types.CBufRet.f32 %5476, 2
  %5480 = fmul fast float %5474, %5477
  %5481 = fmul fast float %5474, %5478
  %5482 = fmul fast float %5474, %5479
  %5483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5484 = extractvalue %dx.types.CBufRet.f32 %5483, 0
  %5485 = extractvalue %dx.types.CBufRet.f32 %5483, 1
  %5486 = extractvalue %dx.types.CBufRet.f32 %5483, 2
  %5487 = fmul fast float %5475, %5484
  %5488 = fmul fast float %5475, %5485
  %5489 = fmul fast float %5475, %5486
  %5490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5491 = extractvalue %dx.types.CBufRet.f32 %5490, 0
  %5492 = extractvalue %dx.types.CBufRet.f32 %5490, 1
  %5493 = extractvalue %dx.types.CBufRet.f32 %5490, 2
  %5494 = fadd fast float %5487, %5491
  %5495 = fadd fast float %5494, %5480
  %5496 = fadd fast float %5488, %5492
  %5497 = fadd fast float %5496, %5481
  %5498 = fadd fast float %5489, %5493
  %5499 = fadd fast float %5498, %5482
  %5500 = fmul fast float %5495, %87
  %5501 = fmul fast float %5497, %87
  %5502 = fmul fast float %5499, %87
  %5503 = select i1 %247, float 0.000000e+00, float %5463
  %5504 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5465, float %5466, float %5292, float %5293, float %5294)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5506 = call float @dx.op.dot3.f32(i32 55, float %174, float %175, float %176, float %5464, float %5465, float %5466)  ; Dot3(ax,ay,az,bx,by,bz)
  %5507 = fmul fast float %5506, 2.000000e+00
  %5508 = fmul fast float %5507, %5464
  %5509 = fmul fast float %5507, %5465
  %5510 = fmul fast float %5507, %5466
  %5511 = fsub fast float %174, %5508
  %5512 = fsub fast float %175, %5509
  %5513 = fsub fast float %176, %5510
  %5514 = call float @dx.op.binary.f32(i32 36, float %5468, float 1.000000e+00)  ; FMin(a,b)
  %5515 = fsub fast float 1.000000e+00, %5514
  %5516 = bitcast float %5515 to i32
  %5517 = ashr i32 %5516, 1
  %5518 = add nsw i32 %5517, 532487669
  %5519 = bitcast i32 %5518 to float
  %5520 = fsub fast float 1.000000e+00, %5467
  %5521 = call float @dx.op.binary.f32(i32 35, float %5520, float 0x3F847AE140000000)  ; FMax(a,b)
  %5522 = fmul fast float %5521, %5521
  %5523 = fmul fast float %5522, %5522
  %5524 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %44, float %5519, float %5523, float %5524, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5526 = extractvalue %dx.types.ResRet.f32 %5525, 0
  %5527 = fsub fast float 1.000000e+00, %5468
  %5528 = bitcast float %5527 to i32
  %5529 = sub nsw i32 2129859010, %5528
  %5530 = call float @dx.op.dot3.f32(i32 55, float %67, float %63, float %59, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fmul fast float %5530, 0x3FD20DD760000000
  %5532 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %5533 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = fcmp fast oeq float %5533, 0.000000e+00
  %5535 = fcmp fast oeq float %5532, 0.000000e+00
  %5536 = or i1 %5535, %5534
  br i1 %5536, label %5566, label %5537

; <label>:5537                                    ; preds = %5457
  %5538 = fsub fast float -0.000000e+00, %70
  %5539 = fsub fast float -0.000000e+00, %68
  %5540 = call float @dx.op.unary.f32(i32 24, float %5533)  ; Sqrt(value)
  %5541 = fdiv fast float %5540, %5532
  %5542 = fcmp fast ogt float %5541, 0x3FFB6F8900000000
  %5543 = select i1 %5542, float 0x3FFB6F8900000000, float %5541
  %5544 = fmul fast float %5543, 0x3FE8A23460000000
  %5545 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  %5546 = call float @dx.op.binary.f32(i32 35, float %5543, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5547 = fmul fast float %5545, %5532
  %5548 = fmul fast float %5546, 0x3FF279A740000000
  %5549 = fadd fast float %5548, -1.000000e+00
  %5550 = call float @dx.op.dot3.f32(i32 55, float %5538, float %5539, float %69, float %5538, float %5539, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5551 = call float @dx.op.unary.f32(i32 25, float %5550)  ; Rsqrt(value)
  %5552 = fmul fast float %5551, %5538
  %5553 = fmul fast float %5551, %5539
  %5554 = fmul fast float %5551, %69
  %5555 = fmul fast float %5549, %5549
  %5556 = fsub fast float 1.000000e+00, %5555
  %5557 = fmul fast float %5546, 0x40005F8BE0000000
  %5558 = fsub fast float 0x400C5BF8A0000000, %5557
  %5559 = fdiv fast float %5547, %5558
  %5560 = fmul fast float %5559, 0x3FEE31C3C0000000
  %5561 = fmul fast float %5560, %5556
  %5562 = fmul fast float %5546, 0x3FDACB7480000000
  %5563 = fadd fast float %5562, 0xBFD7347680000000
  %5564 = fmul fast float %5563, %5559
  %5565 = fmul fast float %5564, %5556
  br label %5566

; <label>:5566                                    ; preds = %5537, %5457
  %5567 = phi float [ %5552, %5537 ], [ 0.000000e+00, %5457 ]
  %5568 = phi float [ %5553, %5537 ], [ 0.000000e+00, %5457 ]
  %5569 = phi float [ %5554, %5537 ], [ 0.000000e+00, %5457 ]
  %5570 = phi float [ %5561, %5537 ], [ 0.000000e+00, %5457 ]
  %5571 = phi float [ %5565, %5537 ], [ 0.000000e+00, %5457 ]
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5567, float %5568, float %5569, float %5464, float %5465, float %5466)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = fmul fast float %5572, %5572
  %5574 = fmul fast float %5573, 0x3FEE471020000000
  %5575 = fadd fast float %5574, 0xBFD42F6020000000
  %5576 = fmul fast float %5532, 0x3FD20DD760000000
  %5577 = fmul fast float %5575, %5571
  %5578 = fmul fast float %5570, 0x3FDF454380000000
  %5579 = fmul fast float %5578, %5572
  %5580 = fadd fast float %5579, %5576
  %5581 = fadd fast float %5580, %5577
  %5582 = call float @dx.op.dot3.f32(i32 55, float %5567, float %5568, float %5569, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5583 = fmul fast float %5582, 0x3FDF454380000000
  %5584 = fmul fast float %5582, %5582
  %5585 = fmul fast float %5584, 0x3FEE471020000000
  %5586 = fadd fast float %5585, 0xBFD42F6020000000
  %5587 = call float @dx.op.dot3.f32(i32 55, float %5532, float %5570, float %5571, float 0x3FD20DD760000000, float %5583, float %5586)  ; Dot3(ax,ay,az,bx,by,bz)
  %5588 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %5589 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = fcmp fast oeq float %5589, 0.000000e+00
  %5591 = fcmp fast oeq float %5588, 0.000000e+00
  %5592 = or i1 %5591, %5590
  br i1 %5592, label %5622, label %5593

; <label>:5593                                    ; preds = %5566
  %5594 = fsub fast float -0.000000e+00, %66
  %5595 = fsub fast float -0.000000e+00, %64
  %5596 = call float @dx.op.unary.f32(i32 24, float %5589)  ; Sqrt(value)
  %5597 = fdiv fast float %5596, %5588
  %5598 = fcmp fast ogt float %5597, 0x3FFB6F8900000000
  %5599 = select i1 %5598, float 0x3FFB6F8900000000, float %5597
  %5600 = fmul fast float %5599, 0x3FE8A23460000000
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5602 = call float @dx.op.binary.f32(i32 35, float %5599, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5603 = fmul fast float %5601, %5588
  %5604 = fmul fast float %5602, 0x3FF279A740000000
  %5605 = fadd fast float %5604, -1.000000e+00
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5594, float %5595, float %65, float %5594, float %5595, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.unary.f32(i32 25, float %5606)  ; Rsqrt(value)
  %5608 = fmul fast float %5607, %5594
  %5609 = fmul fast float %5607, %5595
  %5610 = fmul fast float %5607, %65
  %5611 = fmul fast float %5605, %5605
  %5612 = fsub fast float 1.000000e+00, %5611
  %5613 = fmul fast float %5602, 0x40005F8BE0000000
  %5614 = fsub fast float 0x400C5BF8A0000000, %5613
  %5615 = fdiv fast float %5603, %5614
  %5616 = fmul fast float %5615, 0x3FEE31C3C0000000
  %5617 = fmul fast float %5616, %5612
  %5618 = fmul fast float %5602, 0x3FDACB7480000000
  %5619 = fadd fast float %5618, 0xBFD7347680000000
  %5620 = fmul fast float %5619, %5615
  %5621 = fmul fast float %5620, %5612
  br label %5622

; <label>:5622                                    ; preds = %5593, %5566
  %5623 = phi float [ %5608, %5593 ], [ 0.000000e+00, %5566 ]
  %5624 = phi float [ %5609, %5593 ], [ 0.000000e+00, %5566 ]
  %5625 = phi float [ %5610, %5593 ], [ 0.000000e+00, %5566 ]
  %5626 = phi float [ %5617, %5593 ], [ 0.000000e+00, %5566 ]
  %5627 = phi float [ %5621, %5593 ], [ 0.000000e+00, %5566 ]
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5623, float %5624, float %5625, float %5464, float %5465, float %5466)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = fmul fast float %5628, %5628
  %5630 = fmul fast float %5629, 0x3FEE471020000000
  %5631 = fadd fast float %5630, 0xBFD42F6020000000
  %5632 = fmul fast float %5588, 0x3FD20DD760000000
  %5633 = fmul fast float %5631, %5627
  %5634 = fmul fast float %5626, 0x3FDF454380000000
  %5635 = fmul fast float %5634, %5628
  %5636 = fadd fast float %5635, %5632
  %5637 = fadd fast float %5636, %5633
  %5638 = call float @dx.op.dot3.f32(i32 55, float %5623, float %5624, float %5625, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5639 = fmul fast float %5638, 0x3FDF454380000000
  %5640 = fmul fast float %5638, %5638
  %5641 = fmul fast float %5640, 0x3FEE471020000000
  %5642 = fadd fast float %5641, 0xBFD42F6020000000
  %5643 = call float @dx.op.dot3.f32(i32 55, float %5588, float %5626, float %5627, float 0x3FD20DD760000000, float %5639, float %5642)  ; Dot3(ax,ay,az,bx,by,bz)
  %5644 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %59)  ; FMax(a,b)
  %5645 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %5646 = fcmp fast oeq float %5645, 0.000000e+00
  %5647 = fcmp fast oeq float %5644, 0.000000e+00
  %5648 = or i1 %5647, %5646
  br i1 %5648, label %5678, label %5649

; <label>:5649                                    ; preds = %5622
  %5650 = fsub fast float -0.000000e+00, %62
  %5651 = fsub fast float -0.000000e+00, %60
  %5652 = call float @dx.op.unary.f32(i32 24, float %5645)  ; Sqrt(value)
  %5653 = fdiv fast float %5652, %5644
  %5654 = fcmp fast ogt float %5653, 0x3FFB6F8900000000
  %5655 = select i1 %5654, float 0x3FFB6F8900000000, float %5653
  %5656 = fmul fast float %5655, 0x3FE8A23460000000
  %5657 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  %5658 = call float @dx.op.binary.f32(i32 35, float %5655, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5659 = fmul fast float %5657, %5644
  %5660 = fmul fast float %5658, 0x3FF279A740000000
  %5661 = fadd fast float %5660, -1.000000e+00
  %5662 = call float @dx.op.dot3.f32(i32 55, float %5650, float %5651, float %61, float %5650, float %5651, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5663 = call float @dx.op.unary.f32(i32 25, float %5662)  ; Rsqrt(value)
  %5664 = fmul fast float %5663, %5650
  %5665 = fmul fast float %5663, %5651
  %5666 = fmul fast float %5663, %61
  %5667 = fmul fast float %5661, %5661
  %5668 = fsub fast float 1.000000e+00, %5667
  %5669 = fmul fast float %5658, 0x40005F8BE0000000
  %5670 = fsub fast float 0x400C5BF8A0000000, %5669
  %5671 = fdiv fast float %5659, %5670
  %5672 = fmul fast float %5671, 0x3FEE31C3C0000000
  %5673 = fmul fast float %5672, %5668
  %5674 = fmul fast float %5658, 0x3FDACB7480000000
  %5675 = fadd fast float %5674, 0xBFD7347680000000
  %5676 = fmul fast float %5675, %5671
  %5677 = fmul fast float %5676, %5668
  br label %5678

; <label>:5678                                    ; preds = %5649, %5622
  %5679 = phi float [ %5664, %5649 ], [ 0.000000e+00, %5622 ]
  %5680 = phi float [ %5665, %5649 ], [ 0.000000e+00, %5622 ]
  %5681 = phi float [ %5666, %5649 ], [ 0.000000e+00, %5622 ]
  %5682 = phi float [ %5673, %5649 ], [ 0.000000e+00, %5622 ]
  %5683 = phi float [ %5677, %5649 ], [ 0.000000e+00, %5622 ]
  %5684 = call float @dx.op.dot3.f32(i32 55, float %5679, float %5680, float %5681, float %5464, float %5465, float %5466)  ; Dot3(ax,ay,az,bx,by,bz)
  %5685 = fmul fast float %5684, %5684
  %5686 = fmul fast float %5685, 0x3FEE471020000000
  %5687 = fadd fast float %5686, 0xBFD42F6020000000
  %5688 = fmul fast float %5644, 0x3FD20DD760000000
  %5689 = fmul fast float %5687, %5683
  %5690 = fmul fast float %5682, 0x3FDF454380000000
  %5691 = fmul fast float %5690, %5684
  %5692 = fadd fast float %5691, %5688
  %5693 = fadd fast float %5692, %5689
  %5694 = call float @dx.op.dot3.f32(i32 55, float %5679, float %5680, float %5681, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5695 = fmul fast float %5694, 0x3FDF454380000000
  %5696 = fmul fast float %5694, %5694
  %5697 = fmul fast float %5696, 0x3FEE471020000000
  %5698 = fadd fast float %5697, 0xBFD42F6020000000
  %5699 = call float @dx.op.dot3.f32(i32 55, float %5644, float %5682, float %5683, float 0x3FD20DD760000000, float %5695, float %5698)  ; Dot3(ax,ay,az,bx,by,bz)
  %5700 = call float @dx.op.binary.f32(i32 35, float %5581, float 0.000000e+00)  ; FMax(a,b)
  %5701 = call float @dx.op.binary.f32(i32 35, float %5637, float 0.000000e+00)  ; FMax(a,b)
  %5702 = call float @dx.op.binary.f32(i32 35, float %5693, float 0.000000e+00)  ; FMax(a,b)
  %5703 = call float @dx.op.binary.f32(i32 35, float %5587, float 0.000000e+00)  ; FMax(a,b)
  %5704 = call float @dx.op.binary.f32(i32 35, float %5643, float 0.000000e+00)  ; FMax(a,b)
  %5705 = call float @dx.op.binary.f32(i32 35, float %5699, float 0.000000e+00)  ; FMax(a,b)
  %5706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5707 = extractvalue %dx.types.CBufRet.f32 %5706, 0
  %5708 = call float @dx.op.binary.f32(i32 36, float %5458, float %5707)  ; FMin(a,b)
  %5709 = fmul fast float %5708, %5515
  %5710 = fsub fast float 1.000000e+00, %5709
  %5711 = bitcast float %5710 to i32
  %5712 = sub nsw i32 2129859010, %5711
  %5713 = bitcast i32 %5712 to float
  %5714 = call float @dx.op.binary.f32(i32 36, float %5459, float %5707)  ; FMin(a,b)
  %5715 = fmul fast float %5714, %5515
  %5716 = fsub fast float 1.000000e+00, %5715
  %5717 = bitcast float %5716 to i32
  %5718 = sub nsw i32 2129859010, %5717
  %5719 = bitcast i32 %5718 to float
  %5720 = call float @dx.op.binary.f32(i32 36, float %5460, float %5707)  ; FMin(a,b)
  %5721 = fmul fast float %5720, %5515
  %5722 = fsub fast float 1.000000e+00, %5721
  %5723 = bitcast float %5722 to i32
  %5724 = sub nsw i32 2129859010, %5723
  %5725 = bitcast i32 %5724 to float
  %5726 = fmul fast float %5700, %5514
  %5727 = fmul fast float %5726, %5713
  %5728 = fmul fast float %5701, %5514
  %5729 = fmul fast float %5728, %5719
  %5730 = fmul fast float %5702, %5514
  %5731 = fmul fast float %5730, %5725
  %5732 = call float @dx.op.binary.f32(i32 36, float %5461, float %5707)  ; FMin(a,b)
  %5733 = fmul fast float %5732, %5515
  %5734 = fsub fast float 1.000000e+00, %5733
  %5735 = bitcast float %5734 to i32
  %5736 = sub nsw i32 2129859010, %5735
  %5737 = bitcast i32 %5736 to float
  %5738 = call float @dx.op.binary.f32(i32 36, float %5462, float %5707)  ; FMin(a,b)
  %5739 = fmul fast float %5738, %5515
  %5740 = fsub fast float 1.000000e+00, %5739
  %5741 = bitcast float %5740 to i32
  %5742 = sub nsw i32 2129859010, %5741
  %5743 = bitcast i32 %5742 to float
  %5744 = call float @dx.op.binary.f32(i32 36, float %5503, float %5707)  ; FMin(a,b)
  %5745 = fmul fast float %5744, %5515
  %5746 = fsub fast float 1.000000e+00, %5745
  %5747 = bitcast float %5746 to i32
  %5748 = sub nsw i32 2129859010, %5747
  %5749 = bitcast i32 %5748 to float
  %5750 = fmul fast float %5703, %5514
  %5751 = fmul fast float %5750, %5737
  %5752 = fmul fast float %5704, %5514
  %5753 = fmul fast float %5752, %5743
  %5754 = fmul fast float %5705, %5514
  %5755 = fmul fast float %5754, %5749
  %5756 = call float @dx.op.dot3.f32(i32 55, float %5727, float %5729, float %5731, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = select i1 %247, float 0.000000e+00, float %5727
  %5758 = select i1 %247, float %5756, float %5729
  %5759 = select i1 %247, float 0.000000e+00, float %5731
  %5760 = call float @dx.op.dot3.f32(i32 55, float %5751, float %5753, float %5755, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5761 = select i1 %247, float 0.000000e+00, float %5751
  %5762 = select i1 %247, float %5760, float %5753
  %5763 = select i1 %247, float 0.000000e+00, float %5755
  %5764 = fmul fast float %4451, %4451
  %5765 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5766 = fmul fast float %5505, 9.843750e-01
  %5767 = fmul fast float %5467, 9.843750e-01
  %5768 = fadd fast float %5766, 7.812500e-03
  %5769 = fadd fast float %5767, 7.812500e-03
  %5770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %5768, float %5769, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5771 = extractvalue %dx.types.ResRet.f32 %5770, 0
  %5772 = extractvalue %dx.types.ResRet.f32 %5770, 1
  %5773 = extractvalue %dx.types.ResRet.f32 %5770, 2
  %5774 = extractvalue %dx.types.ResRet.f32 %5770, 3
  %5775 = fsub fast float 1.000000e+00, %5765
  %5776 = fsub fast float %5773, %5771
  %5777 = fsub fast float %5774, %5772
  %5778 = fmul fast float %5776, %5775
  %5779 = fmul fast float %5777, %5775
  %5780 = fadd fast float %5778, %5771
  %5781 = fadd fast float %5779, %5772
  %5782 = fmul fast float %5780, %5461
  %5783 = fmul fast float %5780, %5462
  %5784 = fmul fast float %5780, %5503
  %5785 = fadd fast float %5782, %5781
  %5786 = fadd fast float %5783, %5781
  %5787 = fadd fast float %5784, %5781
  %5788 = fcmp fast ogt float %5114, 0.000000e+00
  br i1 %5788, label %5789, label %5815

; <label>:5789                                    ; preds = %5678
  %5790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5114, float %5505, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5791 = extractvalue %dx.types.ResRet.f32 %5790, 0
  %5792 = extractvalue %dx.types.ResRet.f32 %5790, 1
  %5793 = extractvalue %dx.types.ResRet.f32 %5790, 2
  %5794 = fadd fast float %5791, -5.000000e-01
  %5795 = fadd fast float %5792, -5.000000e-01
  %5796 = fadd fast float %5793, -5.000000e-01
  %5797 = fsub fast float 1.000000e+00, %5461
  %5798 = fsub fast float 1.000000e+00, %5462
  %5799 = fsub fast float 1.000000e+00, %5503
  %5800 = fmul fast float %5461, 4.000000e+00
  %5801 = fmul fast float %5800, %5797
  %5802 = fmul fast float %5801, %5794
  %5803 = fmul fast float %5462, 4.000000e+00
  %5804 = fmul fast float %5803, %5798
  %5805 = fmul fast float %5804, %5795
  %5806 = fmul fast float %5503, 4.000000e+00
  %5807 = fmul fast float %5806, %5799
  %5808 = fmul fast float %5807, %5796
  %5809 = fadd fast float %5802, %5785
  %5810 = fadd fast float %5805, %5786
  %5811 = fadd fast float %5808, %5787
  %5812 = call float @dx.op.unary.f32(i32 7, float %5809)  ; Saturate(value)
  %5813 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  %5814 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  br label %5815

; <label>:5815                                    ; preds = %5789, %5678
  %5816 = phi float [ %5812, %5789 ], [ %5785, %5678 ]
  %5817 = phi float [ %5813, %5789 ], [ %5786, %5678 ]
  %5818 = phi float [ %5814, %5789 ], [ %5787, %5678 ]
  %5819 = call float @dx.op.binary.f32(i32 35, float %5817, float %5818)  ; FMax(a,b)
  %5820 = call float @dx.op.binary.f32(i32 35, float %5816, float %5819)  ; FMax(a,b)
  %5821 = fsub fast float 1.000000e+00, %5820
  %5822 = fmul fast float %5820, %5467
  %5823 = fadd fast float %5822, %5467
  %5824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5825 = extractvalue %dx.types.CBufRet.f32 %5824, 2
  %5826 = extractvalue %dx.types.CBufRet.f32 %5824, 3
  %5827 = fmul fast float %5823, %5825
  %5828 = fadd fast float %5827, %5826
  %5829 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5830 = fsub fast float 1.000000e+00, %5526
  %5831 = fadd fast float %5830, %5829
  %5832 = call float @dx.op.unary.f32(i32 7, float %5831)  ; Saturate(value)
  %5833 = fcmp fast olt float %5832, 1.000000e+00
  br i1 %5833, label %5834, label %6282

; <label>:5834                                    ; preds = %5815
  %5835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.f32 %5835, 2
  %5837 = extractvalue %dx.types.CBufRet.f32 %5835, 3
  %5838 = fmul fast float %5836, %99
  %5839 = fmul fast float %5837, %100
  %5840 = fptoui float %5838 to i32
  %5841 = fptoui float %5839 to i32
  %5842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5843 = extractvalue %dx.types.CBufRet.f32 %5842, 0
  %5844 = extractvalue %dx.types.CBufRet.f32 %5842, 2
  %5845 = extractvalue %dx.types.CBufRet.f32 %5842, 3
  %5846 = fadd fast float %87, -4.000000e+00
  %5847 = call float @dx.op.binary.f32(i32 35, float %5846, float 0.000000e+00)  ; FMax(a,b)
  %5848 = fadd fast float %5847, %5843
  %5849 = fmul fast float %5848, %5844
  %5850 = call float @dx.op.unary.f32(i32 23, float %5849)  ; Log(value)
  %5851 = fmul fast float %5850, %5845
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5854 = fmul fast float %5851, %5853
  %5855 = call float @dx.op.unary.f32(i32 7, float %5854)  ; Saturate(value)
  %5856 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5857 = extractvalue %dx.types.CBufRet.i32 %5856, 1
  %5858 = add i32 %5857, -1
  %5859 = uitofp i32 %5857 to float
  %5860 = fmul fast float %5859, %5855
  %5861 = fptoui float %5860 to i32
  %5862 = call i32 @dx.op.binary.i32(i32 40, i32 %5861, i32 %5858)  ; UMin(a,b)
  %5863 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.i32 %5863, 2
  %5865 = extractvalue %dx.types.CBufRet.i32 %5863, 3
  %5866 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5841, i32 %5864, i32 %5840)  ; UMad(a,b,c)
  %5867 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5862, i32 %5865, i32 %5866)  ; UMad(a,b,c)
  %5868 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %5869 = fptoui float %5868 to i32
  %5870 = lshr i32 %5869, 5
  %5871 = call i32 @dx.op.binary.i32(i32 40, i32 %5870, i32 8191)  ; UMin(a,b)
  br i1 false, label %5872, label %5879

; <label>:5872                                    ; preds = %5834
  %5873 = fadd fast float 0.000000e+00, %5513
  %5874 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5873, float %5511, float %5512, float %5873)  ; Dot3(ax,ay,az,bx,by,bz)
  %5875 = call float @dx.op.unary.f32(i32 25, float %5874)  ; Rsqrt(value)
  %5876 = fmul fast float %5875, %5511
  %5877 = fmul fast float %5875, %5512
  %5878 = fmul fast float %5873, %5875
  br label %5879

; <label>:5879                                    ; preds = %5872, %5834
  %5880 = phi float [ %5876, %5872 ], [ %5511, %5834 ]
  %5881 = phi float [ %5877, %5872 ], [ %5512, %5834 ]
  %5882 = phi float [ %5878, %5872 ], [ %5513, %5834 ]
  %5883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5884 = extractvalue %dx.types.CBufRet.i32 %5883, 2
  %5885 = add nsw i32 %5884, -1
  %5886 = call i32 @dx.op.binary.i32(i32 37, i32 %5885, i32 0)  ; IMax(a,b)
  %5887 = shl i32 %5871, 2
  %5888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5887, i32 undef)  ; BufferLoad(srv,index,wot)
  %5889 = extractvalue %dx.types.ResRet.i32 %5888, 0
  %5890 = lshr i32 %5889, 16
  %5891 = and i32 %5889, 65535
  %5892 = lshr i32 %5889, 21
  %5893 = lshr i32 %5891, 5
  %5894 = call i32 @dx.op.binary.i32(i32 40, i32 %5893, i32 %5886)  ; UMin(a,b)
  %5895 = icmp ugt i32 %5892, %5894
  br i1 %5895, label %6258, label %5896

; <label>:5896                                    ; preds = %5879
  br label %5897

; <label>:5897                                    ; preds = %6250, %5896
  %5898 = phi float [ %6251, %6250 ], [ 0.000000e+00, %5896 ]
  %5899 = phi float [ %6252, %6250 ], [ 0.000000e+00, %5896 ]
  %5900 = phi float [ %6253, %6250 ], [ 0.000000e+00, %5896 ]
  %5901 = phi float [ %6254, %6250 ], [ 1.000000e+00, %5896 ]
  %5902 = phi i32 [ %6255, %6250 ], [ %5892, %5896 ]
  %5903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.i32 %5903, 2
  %5905 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5867, i32 %5904, i32 %5902)  ; UMad(a,b,c)
  %5906 = shl i32 %5905, 2
  %5907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5906, i32 undef)  ; BufferLoad(srv,index,wot)
  %5908 = extractvalue %dx.types.ResRet.i32 %5907, 0
  %5909 = shl i32 %5902, 5
  %5910 = sub nsw i32 %5890, %5909
  %5911 = call i32 @dx.op.binary.i32(i32 37, i32 %5910, i32 0)  ; IMax(a,b)
  %5912 = call i32 @dx.op.binary.i32(i32 38, i32 %5911, i32 31)  ; IMin(a,b)
  %5913 = sub nsw i32 1, %5890
  %5914 = add nsw i32 %5913, %5891
  %5915 = call i32 @dx.op.binary.i32(i32 37, i32 %5914, i32 0)  ; IMax(a,b)
  %5916 = call i32 @dx.op.binary.i32(i32 38, i32 %5915, i32 32)  ; IMin(a,b)
  %5917 = and i32 %5916, 31
  %5918 = shl i32 -1, %5917
  %5919 = xor i32 %5918, -1
  %5920 = and i32 %5912, 31
  %5921 = shl i32 %5919, %5920
  %5922 = icmp eq i32 %5916, 32
  %5923 = select i1 %5922, i32 -1, i32 %5921
  %5924 = and i32 %5923, %5908
  %5925 = icmp eq i32 %5924, 0
  br i1 %5925, label %6250, label %5926

; <label>:5926                                    ; preds = %5897
  br label %5927

; <label>:5927                                    ; preds = %6033, %5926
  %5928 = phi float [ %6034, %6033 ], [ %5898, %5926 ]
  %5929 = phi float [ %6035, %6033 ], [ %5899, %5926 ]
  %5930 = phi float [ %6036, %6033 ], [ %5900, %5926 ]
  %5931 = phi float [ %6037, %6033 ], [ %5901, %5926 ]
  %5932 = phi i32 [ %5937, %6033 ], [ %5924, %5926 ]
  %5933 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5932)  ; FirstbitLo(value)
  %5934 = add i32 %5933, %5909
  %5935 = and i32 %5933, 31
  %5936 = shl i32 1, %5935
  %5937 = xor i32 %5936, %5932
  %5938 = mul i32 %5934, 72
  %5939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5938, i32 undef)  ; BufferLoad(srv,index,wot)
  %5940 = extractvalue %dx.types.ResRet.f32 %5939, 0
  %5941 = extractvalue %dx.types.ResRet.f32 %5939, 1
  %5942 = extractvalue %dx.types.ResRet.f32 %5939, 2
  %5943 = add i32 %5938, 12
  %5944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %5943, i32 undef)  ; BufferLoad(srv,index,wot)
  %5945 = extractvalue %dx.types.ResRet.i32 %5944, 0
  %5946 = add i32 %5938, 16
  %5947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5946, i32 undef)  ; BufferLoad(srv,index,wot)
  %5948 = extractvalue %dx.types.ResRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.ResRet.f32 %5947, 1
  %5950 = extractvalue %dx.types.ResRet.f32 %5947, 2
  %5951 = add i32 %5938, 28
  %5952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5951, i32 undef)  ; BufferLoad(srv,index,wot)
  %5953 = extractvalue %dx.types.ResRet.f32 %5952, 0
  %5954 = add i32 %5938, 32
  %5955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5954, i32 undef)  ; BufferLoad(srv,index,wot)
  %5956 = extractvalue %dx.types.ResRet.f32 %5955, 0
  %5957 = extractvalue %dx.types.ResRet.f32 %5955, 1
  %5958 = extractvalue %dx.types.ResRet.f32 %5955, 2
  %5959 = extractvalue %dx.types.ResRet.f32 %5955, 3
  %5960 = add i32 %5938, 48
  %5961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5960, i32 undef)  ; BufferLoad(srv,index,wot)
  %5962 = extractvalue %dx.types.ResRet.f32 %5961, 0
  %5963 = extractvalue %dx.types.ResRet.f32 %5961, 1
  %5964 = add i32 %5938, 56
  %5965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5964, i32 undef)  ; BufferLoad(srv,index,wot)
  %5966 = extractvalue %dx.types.ResRet.f32 %5965, 0
  %5967 = extractvalue %dx.types.ResRet.f32 %5965, 1
  %5968 = add i32 %5938, 64
  %5969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5968, i32 undef)  ; BufferLoad(srv,index,wot)
  %5970 = extractvalue %dx.types.ResRet.f32 %5969, 0
  %5971 = extractvalue %dx.types.ResRet.f32 %5969, 1
  %5972 = mul i32 %5934, 60
  %5973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5972, i32 undef)  ; BufferLoad(srv,index,wot)
  %5974 = extractvalue %dx.types.ResRet.f32 %5973, 0
  %5975 = extractvalue %dx.types.ResRet.f32 %5973, 1
  %5976 = extractvalue %dx.types.ResRet.f32 %5973, 2
  %5977 = add i32 %5972, 12
  %5978 = add i32 %5972, 48
  %5979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5978, i32 undef)  ; BufferLoad(srv,index,wot)
  %5980 = extractvalue %dx.types.ResRet.f32 %5979, 0
  %5981 = extractvalue %dx.types.ResRet.f32 %5979, 1
  %5982 = extractvalue %dx.types.ResRet.f32 %5979, 2
  %5983 = and i32 %5945, 32767
  %5984 = bitcast float %5940 to i32
  %5985 = icmp eq i32 %5984, -1
  %5986 = bitcast float %5941 to i32
  %5987 = and i32 %5945, 32768
  %5988 = icmp ne i32 %5987, 0
  %5989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.f32 %5989, 0
  %5991 = extractvalue %dx.types.CBufRet.f32 %5989, 1
  %5992 = extractvalue %dx.types.CBufRet.f32 %5989, 2
  %5993 = fsub fast float %5974, %5990
  %5994 = fsub fast float %5975, %5991
  %5995 = fsub fast float %5976, %5992
  %5996 = fsub fast float %154, %5993
  %5997 = fsub fast float %155, %5994
  %5998 = fsub fast float %156, %5995
  %5999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5977, i32 undef)  ; BufferLoad(srv,index,wot)
  %6000 = extractvalue %dx.types.ResRet.f32 %5999, 0
  %6001 = extractvalue %dx.types.ResRet.f32 %5999, 1
  %6002 = extractvalue %dx.types.ResRet.f32 %5999, 2
  %6003 = call float @dx.op.dot3.f32(i32 55, float %5996, float %5997, float %5998, float %6000, float %6001, float %6002)  ; Dot3(ax,ay,az,bx,by,bz)
  %6004 = add i32 %5972, 24
  %6005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6004, i32 undef)  ; BufferLoad(srv,index,wot)
  %6006 = extractvalue %dx.types.ResRet.f32 %6005, 0
  %6007 = extractvalue %dx.types.ResRet.f32 %6005, 1
  %6008 = extractvalue %dx.types.ResRet.f32 %6005, 2
  %6009 = call float @dx.op.dot3.f32(i32 55, float %5996, float %5997, float %5998, float %6006, float %6007, float %6008)  ; Dot3(ax,ay,az,bx,by,bz)
  %6010 = add i32 %5972, 36
  %6011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6010, i32 undef)  ; BufferLoad(srv,index,wot)
  %6012 = extractvalue %dx.types.ResRet.f32 %6011, 0
  %6013 = extractvalue %dx.types.ResRet.f32 %6011, 1
  %6014 = extractvalue %dx.types.ResRet.f32 %6011, 2
  %6015 = call float @dx.op.dot3.f32(i32 55, float %5996, float %5997, float %5998, float %6012, float %6013, float %6014)  ; Dot3(ax,ay,az,bx,by,bz)
  %6016 = call float @dx.op.unary.f32(i32 6, float %6003)  ; FAbs(value)
  %6017 = call float @dx.op.unary.f32(i32 6, float %6009)  ; FAbs(value)
  %6018 = call float @dx.op.unary.f32(i32 6, float %6015)  ; FAbs(value)
  %6019 = fsub fast float %5980, %6016
  %6020 = fsub fast float %5981, %6017
  %6021 = fsub fast float %5982, %6018
  %6022 = fmul fast float %6019, %5948
  %6023 = fmul fast float %6020, %5949
  %6024 = fmul fast float %6021, %5950
  %6025 = call float @dx.op.binary.f32(i32 36, float %6023, float %6024)  ; FMin(a,b)
  %6026 = call float @dx.op.binary.f32(i32 36, float %6022, float %6025)  ; FMin(a,b)
  %6027 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6028 = call float @dx.op.binary.f32(i32 36, float %5931, float %6027)  ; FMin(a,b)
  %6029 = uitofp i1 %5988 to float
  %6030 = fsub fast float 1.000000e+00, %6029
  %6031 = fmul fast float %6028, %6030
  %6032 = fcmp fast ogt float %6031, 0.000000e+00
  br i1 %6032, label %6039, label %6033

; <label>:6033                                    ; preds = %6181, %5927
  %6034 = phi float [ %6245, %6181 ], [ %5928, %5927 ]
  %6035 = phi float [ %6246, %6181 ], [ %5929, %5927 ]
  %6036 = phi float [ %6247, %6181 ], [ %5930, %5927 ]
  %6037 = phi float [ %6248, %6181 ], [ %5931, %5927 ]
  %6038 = icmp eq i32 %5932, %5936
  br i1 %6038, label %6249, label %5927

; <label>:6039                                    ; preds = %5927
  br i1 %5985, label %6097, label %6040

; <label>:6040                                    ; preds = %6039
  %6041 = fsub fast float -0.000000e+00, %6000
  %6042 = fsub fast float -0.000000e+00, %6001
  %6043 = fsub fast float -0.000000e+00, %6002
  %6044 = call float @dx.op.dot3.f32(i32 55, float %5880, float %5881, float %5882, float %6041, float %6042, float %6043)  ; Dot3(ax,ay,az,bx,by,bz)
  %6045 = fsub fast float -0.000000e+00, %6044
  %6046 = call float @dx.op.dot3.f32(i32 55, float %5996, float %5997, float %5998, float %6041, float %6042, float %6043)  ; Dot3(ax,ay,az,bx,by,bz)
  %6047 = fadd fast float %6046, %5963
  %6048 = fadd fast float %5962, %6046
  %6049 = fsub fast float -0.000000e+00, %6048
  %6050 = fcmp ogt float %6044, -0.000000e+00
  %6051 = select i1 %6050, float %6049, float %6047
  %6052 = call float @dx.op.unary.f32(i32 6, float %6045)  ; FAbs(value)
  %6053 = fdiv fast float 1.000000e+00, %6052
  %6054 = fmul fast float %6051, %6053
  %6055 = call float @dx.op.binary.f32(i32 35, float %6054, float 0.000000e+00)  ; FMax(a,b)
  %6056 = fsub fast float -0.000000e+00, %6006
  %6057 = fsub fast float -0.000000e+00, %6007
  %6058 = fsub fast float -0.000000e+00, %6008
  %6059 = call float @dx.op.dot3.f32(i32 55, float %5880, float %5881, float %5882, float %6056, float %6057, float %6058)  ; Dot3(ax,ay,az,bx,by,bz)
  %6060 = fsub fast float -0.000000e+00, %6059
  %6061 = call float @dx.op.dot3.f32(i32 55, float %5996, float %5997, float %5998, float %6056, float %6057, float %6058)  ; Dot3(ax,ay,az,bx,by,bz)
  %6062 = fadd fast float %6061, %5967
  %6063 = fadd fast float %5966, %6061
  %6064 = fsub fast float -0.000000e+00, %6063
  %6065 = fcmp ogt float %6059, -0.000000e+00
  %6066 = select i1 %6065, float %6064, float %6062
  %6067 = call float @dx.op.unary.f32(i32 6, float %6060)  ; FAbs(value)
  %6068 = fdiv fast float 1.000000e+00, %6067
  %6069 = fmul fast float %6066, %6068
  %6070 = call float @dx.op.binary.f32(i32 35, float %6069, float 0.000000e+00)  ; FMax(a,b)
  %6071 = fsub fast float -0.000000e+00, %6012
  %6072 = fsub fast float -0.000000e+00, %6013
  %6073 = fsub fast float -0.000000e+00, %6014
  %6074 = call float @dx.op.dot3.f32(i32 55, float %5880, float %5881, float %5882, float %6071, float %6072, float %6073)  ; Dot3(ax,ay,az,bx,by,bz)
  %6075 = fsub fast float -0.000000e+00, %6074
  %6076 = call float @dx.op.dot3.f32(i32 55, float %5996, float %5997, float %5998, float %6071, float %6072, float %6073)  ; Dot3(ax,ay,az,bx,by,bz)
  %6077 = fadd fast float %6076, %5971
  %6078 = fadd fast float %5970, %6076
  %6079 = fsub fast float -0.000000e+00, %6078
  %6080 = fcmp ogt float %6074, -0.000000e+00
  %6081 = select i1 %6080, float %6079, float %6077
  %6082 = call float @dx.op.unary.f32(i32 6, float %6075)  ; FAbs(value)
  %6083 = fdiv fast float 1.000000e+00, %6082
  %6084 = fmul fast float %6081, %6083
  %6085 = call float @dx.op.binary.f32(i32 35, float %6084, float 0.000000e+00)  ; FMax(a,b)
  %6086 = call float @dx.op.binary.f32(i32 36, float %6070, float %6085)  ; FMin(a,b)
  %6087 = call float @dx.op.binary.f32(i32 36, float %6055, float %6086)  ; FMin(a,b)
  %6088 = fmul fast float %6087, %5880
  %6089 = fmul fast float %6087, %5881
  %6090 = fmul fast float %6087, %5882
  %6091 = fadd fast float %6088, %154
  %6092 = fadd fast float %6089, %155
  %6093 = fadd fast float %6090, %156
  %6094 = fsub fast float %6091, %5940
  %6095 = fsub fast float %6092, %5941
  %6096 = fsub fast float %6093, %5942
  br label %6104

; <label>:6097                                    ; preds = %6039
  %6098 = fmul fast float %5880, 8.096000e+03
  %6099 = fmul fast float %5881, 8.096000e+03
  %6100 = fmul fast float %5882, 8.096000e+03
  %6101 = fadd fast float %6098, %154
  %6102 = fadd fast float %6099, %155
  %6103 = fadd fast float %6100, %156
  br label %6104

; <label>:6104                                    ; preds = %6097, %6040
  %6105 = phi float [ %5880, %6097 ], [ %6094, %6040 ]
  %6106 = phi float [ %5881, %6097 ], [ %6095, %6040 ]
  %6107 = phi float [ %5882, %6097 ], [ %6096, %6040 ]
  %6108 = phi float [ %6101, %6097 ], [ %6091, %6040 ]
  %6109 = phi float [ %6102, %6097 ], [ %6092, %6040 ]
  %6110 = phi float [ %6103, %6097 ], [ %6093, %6040 ]
  %6111 = fcmp fast olt float %5959, 1.000000e+00
  br i1 %6111, label %6112, label %6143, !dx.controlflow.hints !89

; <label>:6112                                    ; preds = %6104
  %6113 = fmul fast float %6107, %5957
  %6114 = fmul fast float %6106, %5958
  %6115 = fsub fast float %6113, %6114
  %6116 = fmul fast float %6105, %5958
  %6117 = fmul fast float %6107, %5956
  %6118 = fsub fast float %6116, %6117
  %6119 = fmul fast float %6106, %5956
  %6120 = fmul fast float %6105, %5957
  %6121 = fsub fast float %6119, %6120
  %6122 = fmul fast float %6115, 2.000000e+00
  %6123 = fmul fast float %6118, 2.000000e+00
  %6124 = fmul fast float %6121, 2.000000e+00
  %6125 = fmul fast float %6122, %5959
  %6126 = fmul fast float %6123, %5959
  %6127 = fmul fast float %6124, %5959
  %6128 = fmul fast float %6124, %5957
  %6129 = fmul fast float %6123, %5958
  %6130 = fmul fast float %6122, %5958
  %6131 = fmul fast float %6124, %5956
  %6132 = fmul fast float %6123, %5956
  %6133 = fmul fast float %6122, %5957
  %6134 = fadd fast float %6128, %6105
  %6135 = fadd fast float %6134, %6125
  %6136 = fsub fast float %6135, %6129
  %6137 = fsub fast float %6106, %6131
  %6138 = fadd fast float %6137, %6126
  %6139 = fadd fast float %6138, %6130
  %6140 = fadd fast float %6127, %6107
  %6141 = fsub fast float %6140, %6133
  %6142 = fadd fast float %6141, %6132
  br label %6143

; <label>:6143                                    ; preds = %6112, %6104
  %6144 = phi float [ %6136, %6112 ], [ %6105, %6104 ]
  %6145 = phi float [ %6139, %6112 ], [ %6106, %6104 ]
  %6146 = phi float [ %6142, %6112 ], [ %6107, %6104 ]
  br i1 %5985, label %6178, label %6147

; <label>:6147                                    ; preds = %6143
  %6148 = fmul fast float %5467, 0x400187C840000000
  %6149 = fadd fast float %6148, 0xC00EFC2120000000
  %6150 = fmul fast float %6149, %5467
  %6151 = fadd fast float %6150, 0x3FE5D16340000000
  %6152 = fmul fast float %6151, %5467
  %6153 = fadd fast float %6152, 1.000000e+00
  %6154 = call float @dx.op.unary.f32(i32 7, float %6153)  ; Saturate(value)
  %6155 = fsub fast float %6108, %154
  %6156 = fsub fast float %6109, %155
  %6157 = fsub fast float %6110, %156
  %6158 = fsub fast float %6108, %5940
  %6159 = fsub fast float %6109, %5941
  %6160 = fsub fast float %6110, %5942
  %6161 = call float @dx.op.dot3.f32(i32 55, float %6155, float %6156, float %6157, float %6155, float %6156, float %6157)  ; Dot3(ax,ay,az,bx,by,bz)
  %6162 = call float @dx.op.dot3.f32(i32 55, float %6158, float %6159, float %6160, float %6158, float %6159, float %6160)  ; Dot3(ax,ay,az,bx,by,bz)
  %6163 = fadd fast float %6162, 0x3EE4F8B580000000
  %6164 = fdiv fast float %6161, %6163
  %6165 = bitcast float %6164 to i32
  %6166 = ashr i32 %6165, 1
  %6167 = add nsw i32 %6166, 532487669
  %6168 = bitcast i32 %6167 to float
  %6169 = fmul fast float %6168, %6154
  %6170 = call float @dx.op.unary.f32(i32 7, float %6169)  ; Saturate(value)
  %6171 = fmul fast float %6170, 0x4009981AE0000000
  %6172 = fsub fast float 0x40111BBD80000000, %6171
  %6173 = fmul fast float %6172, %6170
  %6174 = fadd fast float %6173, 0xC0009F6020000000
  %6175 = fmul fast float %6174, %6170
  %6176 = fadd fast float %6175, 1.000000e+00
  %6177 = call float @dx.op.unary.f32(i32 7, float %6176)  ; Saturate(value)
  br label %6181

; <label>:6178                                    ; preds = %6143
  %6179 = icmp ne i32 %5986, -1
  %6180 = zext i1 %6179 to i32
  br label %6181

; <label>:6181                                    ; preds = %6178, %6147
  %6182 = phi float [ %5467, %6178 ], [ %6177, %6147 ]
  %6183 = phi i32 [ %6180, %6178 ], [ 0, %6147 ]
  %6184 = fmul float %6182, 5.000000e+00
  %6185 = fsub float 5.000000e+00, %6184
  %6186 = icmp ne i32 %6183, 0
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 3
  %6189 = fadd fast float %6188, %6185
  %6190 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6189)  ; FMax(a,b)
  %6191 = call float @dx.op.unary.f32(i32 6, float %6144)  ; FAbs(value)
  %6192 = call float @dx.op.unary.f32(i32 6, float %6145)  ; FAbs(value)
  %6193 = fadd fast float %6192, %6191
  %6194 = call float @dx.op.unary.f32(i32 6, float %6146)  ; FAbs(value)
  %6195 = fadd fast float %6193, %6194
  %6196 = fcmp fast oeq float %6195, 0.000000e+00
  %6197 = fdiv fast float 1.000000e+00, %6195
  %6198 = select i1 %6196, float 1.000000e+00, float %6197
  %6199 = fmul fast float %6198, %6144
  %6200 = fmul fast float %6198, %6145
  %6201 = call float @dx.op.unary.f32(i32 6, float %6200)  ; FAbs(value)
  %6202 = call float @dx.op.unary.f32(i32 6, float %6199)  ; FAbs(value)
  %6203 = fsub fast float 1.000000e+00, %6201
  %6204 = fsub fast float 1.000000e+00, %6202
  %6205 = fcmp fast oge float %6199, 0.000000e+00
  %6206 = fcmp fast oge float %6200, 0.000000e+00
  %6207 = select i1 %6205, float 1.000000e+00, float -1.000000e+00
  %6208 = select i1 %6206, float 1.000000e+00, float -1.000000e+00
  %6209 = fcmp fast ole float %6146, 0.000000e+00
  %6210 = fmul fast float %6207, %6203
  %6211 = fmul fast float %6208, %6204
  %6212 = select i1 %6209, float %6210, float %6199
  %6213 = select i1 %6209, float %6211, float %6200
  %6214 = fmul fast float %6212, 5.000000e-01
  %6215 = fmul fast float %6213, 5.000000e-01
  %6216 = fadd fast float %6214, 5.000000e-01
  %6217 = fadd fast float %6215, 5.000000e-01
  %6218 = uitofp i32 %5983 to float
  %6219 = call float @dx.op.binary.f32(i32 36, float %6190, float 3.000000e+00)  ; FMin(a,b)
  %6220 = fadd fast float %6219, 2.000000e+00
  %6221 = call float @dx.op.unary.f32(i32 21, float %6220)  ; Exp(value)
  %6222 = extractvalue %dx.types.CBufRet.f32 %6187, 1
  %6223 = fmul fast float %6222, %6221
  %6224 = fmul fast float %6223, 2.000000e+00
  %6225 = fsub fast float 1.000000e+00, %6224
  %6226 = fmul fast float %6216, %6225
  %6227 = fmul fast float %6217, %6225
  %6228 = fadd fast float %6226, %6223
  %6229 = fadd fast float %6227, %6223
  %6230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %6228, float %6229, float %6218, float undef, i32 0, i32 0, i32 undef, float %6190)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6231 = extractvalue %dx.types.ResRet.f32 %6230, 0
  %6232 = extractvalue %dx.types.ResRet.f32 %6230, 1
  %6233 = extractvalue %dx.types.ResRet.f32 %6230, 2
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 3
  %6236 = fmul fast float %6235, %5953
  %6237 = call float @dx.op.binary.f32(i32 36, float %5531, float %6236)  ; FMin(a,b)
  %6238 = select i1 %6186, float %6237, float %6236
  %6239 = fmul fast float %6231, %6031
  %6240 = fmul fast float %6239, %6238
  %6241 = fmul fast float %6232, %6031
  %6242 = fmul fast float %6241, %6238
  %6243 = fmul fast float %6233, %6031
  %6244 = fmul fast float %6243, %6238
  %6245 = fadd fast float %6240, %5928
  %6246 = fadd fast float %6242, %5929
  %6247 = fadd fast float %6244, %5930
  %6248 = fsub fast float %5931, %6031
  br label %6033

; <label>:6249                                    ; preds = %6033
  br label %6250

; <label>:6250                                    ; preds = %6249, %5897
  %6251 = phi float [ %5898, %5897 ], [ %6034, %6249 ]
  %6252 = phi float [ %5899, %5897 ], [ %6035, %6249 ]
  %6253 = phi float [ %5900, %5897 ], [ %6036, %6249 ]
  %6254 = phi float [ %5901, %5897 ], [ %6037, %6249 ]
  %6255 = add i32 %5902, 1
  %6256 = icmp ugt i32 %6255, %5894
  br i1 %6256, label %6257, label %5897, !llvm.loop !90

; <label>:6257                                    ; preds = %6250
  br label %6258

; <label>:6258                                    ; preds = %6257, %5879
  %6259 = phi float [ 0.000000e+00, %5879 ], [ %6251, %6257 ]
  %6260 = phi float [ 0.000000e+00, %5879 ], [ %6252, %6257 ]
  %6261 = phi float [ 0.000000e+00, %5879 ], [ %6253, %6257 ]
  %6262 = call float @dx.op.dot3.f32(i32 55, float %6259, float %6260, float %6261, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6263 = select i1 %247, float 0.000000e+00, float %6259
  %6264 = select i1 %247, float %6262, float %6260
  %6265 = select i1 %247, float 0.000000e+00, float %6261
  %6266 = fcmp fast olt float %5832, 0.000000e+00
  %6267 = call float @dx.op.unary.f32(i32 6, float %5832)  ; FAbs(value)
  %6268 = fmul fast float %6267, %5761
  %6269 = fmul fast float %6267, %5762
  %6270 = fmul fast float %6267, %5763
  %6271 = select i1 %6266, float %5761, float %6268
  %6272 = select i1 %6266, float %5762, float %6269
  %6273 = select i1 %6266, float %5763, float %6270
  %6274 = fsub fast float 1.000000e+00, %6267
  %6275 = call float @dx.op.unary.f32(i32 7, float %6274)  ; Saturate(value)
  %6276 = fmul fast float %6275, %6263
  %6277 = fmul fast float %6275, %6264
  %6278 = fmul fast float %6275, %6265
  %6279 = fadd fast float %6271, %6276
  %6280 = fadd fast float %6272, %6277
  %6281 = fadd fast float %6273, %6278
  br label %6282

; <label>:6282                                    ; preds = %6258, %5815
  %6283 = phi float [ %5761, %5815 ], [ %6279, %6258 ]
  %6284 = phi float [ %5762, %5815 ], [ %6280, %6258 ]
  %6285 = phi float [ %5763, %5815 ], [ %6281, %6258 ]
  %6286 = fmul fast float %5821, %5757
  %6287 = fmul fast float %5821, %5758
  %6288 = fmul fast float %5821, %5759
  %6289 = call float @dx.op.dot3.f32(i32 55, float %5458, float %5459, float %5460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6290 = fcmp fast ogt float %6289, 0x3E7FF19E20000000
  %6291 = fdiv fast float 1.000000e+00, %6289
  %6292 = select i1 %6290, float %6291, float 0.000000e+00
  %6293 = fmul fast float %6292, %5458
  %6294 = fmul fast float %6292, %5459
  %6295 = fmul fast float %6292, %5460
  %6296 = fadd fast float %6293, -1.000000e+00
  %6297 = fadd fast float %6294, -1.000000e+00
  %6298 = fadd fast float %6295, -1.000000e+00
  %6299 = fmul fast float %6296, 5.000000e-01
  %6300 = fmul fast float %6297, 5.000000e-01
  %6301 = fmul fast float %6298, 5.000000e-01
  %6302 = fadd fast float %6299, 1.000000e+00
  %6303 = fadd fast float %6300, 1.000000e+00
  %6304 = fadd fast float %6301, 1.000000e+00
  %6305 = call float @dx.op.binary.f32(i32 35, float %5505, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6306 = fdiv fast float %4451, %6305
  %6307 = fcmp fast olt float %5185, 1.270000e+02
  %6308 = fcmp fast olt float %5186, 1.270000e+02
  %6309 = fcmp fast olt float %5187, 1.270000e+02
  %6310 = fmul fast float %5185, 0xBFF7154760000000
  %6311 = fmul fast float %6310, %6306
  %6312 = fmul fast float %5186, 0xBFF7154760000000
  %6313 = fmul fast float %6312, %6306
  %6314 = fmul fast float %5187, 0xBFF7154760000000
  %6315 = fmul fast float %6314, %6306
  %6316 = call float @dx.op.unary.f32(i32 21, float %6311)  ; Exp(value)
  %6317 = call float @dx.op.unary.f32(i32 21, float %6313)  ; Exp(value)
  %6318 = call float @dx.op.unary.f32(i32 21, float %6315)  ; Exp(value)
  %6319 = call float @dx.op.unary.f32(i32 7, float %6316)  ; Saturate(value)
  %6320 = call float @dx.op.unary.f32(i32 7, float %6317)  ; Saturate(value)
  %6321 = call float @dx.op.unary.f32(i32 7, float %6318)  ; Saturate(value)
  %6322 = select i1 %6307, float %6319, float 0.000000e+00
  %6323 = select i1 %6308, float %6320, float 0.000000e+00
  %6324 = select i1 %6309, float %6321, float 0.000000e+00
  %6325 = fmul fast float %6322, %5821
  %6326 = fmul fast float %6323, %5821
  %6327 = fmul fast float %6324, %5821
  %6328 = fadd fast float %6325, -1.000000e+00
  %6329 = fadd fast float %6326, -1.000000e+00
  %6330 = fadd fast float %6327, -1.000000e+00
  %6331 = fmul fast float %6328, %5140
  %6332 = fmul fast float %6329, %5140
  %6333 = fmul fast float %6330, %5140
  %6334 = fadd fast float %6331, 1.000000e+00
  %6335 = fadd fast float %6332, 1.000000e+00
  %6336 = fadd fast float %6333, 1.000000e+00
  %6337 = fmul fast float %5462, 0x401CF23780000000
  %6338 = fadd fast float %6337, 0x3FF32641C0000000
  %6339 = fdiv fast float 1.000000e+00, %6338
  %6340 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %5464, float %5465, float %5466)  ; Dot3(ax,ay,az,bx,by,bz)
  %6341 = fmul fast float %6339, %6339
  %6342 = fmul fast float %6340, %6340
  %6343 = fsub fast float 1.000000e+00, %6342
  %6344 = fmul fast float %6341, %6343
  %6345 = fsub fast float 1.000000e+00, %6344
  %6346 = fcmp fast oge float %6345, 0.000000e+00
  %6347 = fmul fast float %6339, %5292
  %6348 = fmul fast float %6339, %5293
  %6349 = fmul fast float %6339, %5294
  %6350 = call float @dx.op.unary.f32(i32 24, float %6345)  ; Sqrt(value)
  %6351 = fmul fast float %6340, %6339
  %6352 = fadd fast float %6351, %6350
  %6353 = fmul fast float %6352, %5464
  %6354 = fmul fast float %6352, %5465
  %6355 = fmul fast float %6352, %5466
  %6356 = fsub fast float %6347, %6353
  %6357 = fsub fast float %6348, %6354
  %6358 = fsub fast float %6349, %6355
  %6359 = select i1 %6346, float %6356, float 0.000000e+00
  %6360 = select i1 %6346, float %6357, float 0.000000e+00
  %6361 = select i1 %6346, float %6358, float 0.000000e+00
  %6362 = fmul fast float %6359, %4451
  %6363 = fmul fast float %6360, %4451
  %6364 = fmul fast float %6361, %4451
  %6365 = fadd fast float %6362, %5500
  %6366 = fadd fast float %6363, %5501
  %6367 = fadd fast float %6364, %5502
  %6368 = call float @dx.op.dot3.f32(i32 55, float %5203, float %5204, float %5205, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6369 = fmul fast float %5520, %5140
  %6370 = fsub fast float 1.000000e+00, %6369
  %6371 = call float @dx.op.unary.f32(i32 7, float %6370)  ; Saturate(value)
  %6372 = fsub fast float 1.000000e+00, %6371
  %6373 = fmul fast float %5462, 0x4012D0A400000000
  %6374 = fadd fast float %6373, 0x3FDB6377A0000000
  %6375 = fmul fast float %6372, %6374
  %6376 = fadd fast float %6375, %6368
  %6377 = call float @dx.op.unary.f32(i32 7, float %6376)  ; Saturate(value)
  %6378 = fmul fast float %6283, %5816
  %6379 = fmul fast float %6284, %5817
  %6380 = fmul fast float %6285, %5818
  %6381 = fsub fast float 1.000000e+00, %5505
  %6382 = bitcast float %6381 to i32
  %6383 = sitofp i32 %6382 to float
  %6384 = fmul fast float %6383, 5.000000e+00
  %6385 = fadd fast float %6384, 0xC1EFBF8940000000
  %6386 = fptosi float %6385 to i32
  %6387 = bitcast i32 %6386 to float
  %6388 = fmul fast float %6387, %5115
  %6389 = fmul fast float %5757, %6388
  %6390 = fmul fast float %6389, %5821
  %6391 = fmul fast float %6390, %6302
  %6392 = fmul fast float %5758, %6388
  %6393 = fmul fast float %6392, %5821
  %6394 = fmul fast float %6393, %6303
  %6395 = fmul fast float %5759, %6388
  %6396 = fmul fast float %6395, %5821
  %6397 = fmul fast float %6396, %6304
  %6398 = fmul fast float %6286, %5140
  %6399 = fmul fast float %6287, %5140
  %6400 = fmul fast float %6288, %5140
  %6401 = fsub fast float 1.000000e+00, %6377
  %6402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6403 = extractvalue %dx.types.CBufRet.f32 %6402, 0
  %6404 = extractvalue %dx.types.CBufRet.f32 %6402, 1
  %6405 = extractvalue %dx.types.CBufRet.f32 %6402, 2
  %6406 = extractvalue %dx.types.CBufRet.f32 %6402, 3
  %6407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6408 = extractvalue %dx.types.CBufRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.CBufRet.f32 %6407, 1
  %6410 = extractvalue %dx.types.CBufRet.f32 %6407, 2
  %6411 = extractvalue %dx.types.CBufRet.f32 %6407, 3
  %6412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6413 = extractvalue %dx.types.CBufRet.f32 %6412, 0
  %6414 = extractvalue %dx.types.CBufRet.f32 %6412, 1
  %6415 = extractvalue %dx.types.CBufRet.f32 %6412, 2
  %6416 = extractvalue %dx.types.CBufRet.f32 %6412, 3
  %6417 = fmul fast float %6365, %6403
  %6418 = call float @dx.op.tertiary.f32(i32 46, float %6366, float %6404, float %6417)  ; FMad(a,b,c)
  %6419 = call float @dx.op.tertiary.f32(i32 46, float %6367, float %6405, float %6418)  ; FMad(a,b,c)
  %6420 = fadd fast float %6419, %6406
  %6421 = fmul fast float %6365, %6408
  %6422 = call float @dx.op.tertiary.f32(i32 46, float %6366, float %6409, float %6421)  ; FMad(a,b,c)
  %6423 = call float @dx.op.tertiary.f32(i32 46, float %6367, float %6410, float %6422)  ; FMad(a,b,c)
  %6424 = fadd fast float %6423, %6411
  %6425 = fmul fast float %6365, %6413
  %6426 = call float @dx.op.tertiary.f32(i32 46, float %6366, float %6414, float %6425)  ; FMad(a,b,c)
  %6427 = call float @dx.op.tertiary.f32(i32 46, float %6367, float %6415, float %6426)  ; FMad(a,b,c)
  %6428 = fadd fast float %6427, %6416
  %6429 = fdiv fast float %6420, %6428
  %6430 = fdiv fast float %6424, %6428
  %6431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6431, 0
  %6433 = extractvalue %dx.types.CBufRet.f32 %6431, 1
  %6434 = fmul fast float %6432, %6429
  %6435 = fmul fast float %6433, %6430
  %6436 = extractvalue %dx.types.CBufRet.f32 %6431, 2
  %6437 = extractvalue %dx.types.CBufRet.f32 %6431, 3
  %6438 = fadd fast float %6434, %6436
  %6439 = fadd fast float %6435, %6437
  %6440 = call float @dx.op.unary.f32(i32 7, float %6438)  ; Saturate(value)
  %6441 = call float @dx.op.unary.f32(i32 7, float %6439)  ; Saturate(value)
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 0
  %6444 = extractvalue %dx.types.CBufRet.f32 %6442, 1
  %6445 = fmul fast float %6443, %6440
  %6446 = fmul fast float %6444, %6441
  %6447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6448 = extractvalue %dx.types.CBufRet.f32 %6447, 1
  %6449 = extractvalue %dx.types.CBufRet.f32 %6447, 2
  %6450 = fsub fast float %6448, %6449
  %6451 = fmul fast float %6450, %6401
  %6452 = fadd fast float %6451, %6449
  %6453 = fmul fast float %260, 2.000000e+00
  %6454 = fmul fast float %261, 2.000000e+00
  %6455 = fadd fast float %6453, -1.000000e+00
  %6456 = fadd fast float %6454, -1.000000e+00
  %6457 = fmul fast float %6452, %6455
  %6458 = fmul fast float %6452, %6456
  %6459 = fadd fast float %6457, %6445
  %6460 = fadd fast float %6458, %6446
  %6461 = extractvalue %dx.types.CBufRet.f32 %6442, 2
  %6462 = extractvalue %dx.types.CBufRet.f32 %6442, 3
  %6463 = fmul fast float %6459, %6461
  %6464 = fmul fast float %6460, %6462
  %6465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %45, float %6463, float %6464, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6466 = extractvalue %dx.types.ResRet.f32 %6465, 0
  %6467 = fcmp fast ogt float %6466, -1.000000e+00
  %6468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6469 = extractvalue %dx.types.CBufRet.f32 %6468, 1
  %6470 = select i1 %6467, float %6469, float 1.000000e+00
  %6471 = fadd fast float %6466, 1.000000e+00
  %6472 = fmul fast float %6470, %6471
  %6473 = call float @dx.op.unary.f32(i32 6, float %6472)  ; FAbs(value)
  %6474 = fsub fast float %6473, %6428
  %6475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6475, 2
  %6477 = fmul fast float %6476, %6473
  %6478 = fdiv fast float 1.600000e+02, %6477
  %6479 = fmul fast float %6377, %6377
  %6480 = fmul fast float %6479, 0xBFB5B17960000000
  %6481 = fmul fast float %6480, %6474
  %6482 = fmul fast float %6481, %6478
  %6483 = call float @dx.op.unary.f32(i32 21, float %6482)  ; Exp(value)
  %6484 = fmul fast float %6483, 0x3FF04B2960000000
  %6485 = fsub fast float 0x3FF04B2960000000, %6484
  %6486 = call float @dx.op.unary.f32(i32 7, float %6485)  ; Saturate(value)
  %6487 = fmul fast float %6486, 4.000000e+00
  %6488 = fadd fast float %260, -5.000000e-01
  %6489 = fadd fast float %261, -5.000000e-01
  %6490 = fmul fast float %6486, 0x3FBEB851E0000000
  %6491 = call float @dx.op.unary.f32(i32 7, float %6490)  ; Saturate(value)
  %6492 = fmul fast float %6491, %6488
  %6493 = fmul fast float %6491, %6489
  %6494 = fadd fast float %6492, %6438
  %6495 = fadd fast float %6493, %6439
  %6496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6497 = extractvalue %dx.types.CBufRet.i32 %6496, 0
  %6498 = icmp eq i32 %6497, 0
  br i1 %6498, label %6504, label %6499, !dx.controlflow.hints !92

; <label>:6499                                    ; preds = %6282
  %6500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %6494, float %6495, float undef, float undef, i32 0, i32 0, i32 undef, float %6487)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6501 = extractvalue %dx.types.ResRet.f32 %6500, 0
  %6502 = extractvalue %dx.types.ResRet.f32 %6500, 1
  %6503 = extractvalue %dx.types.ResRet.f32 %6500, 2
  br label %6509

; <label>:6504                                    ; preds = %6282
  %6505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %42, float %6494, float %6495, float undef, float undef, i32 0, i32 0, i32 undef, float %6487)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6506 = extractvalue %dx.types.ResRet.f32 %6505, 0
  %6507 = extractvalue %dx.types.ResRet.f32 %6505, 1
  %6508 = extractvalue %dx.types.ResRet.f32 %6505, 2
  br label %6509

; <label>:6509                                    ; preds = %6504, %6499
  %6510 = phi float [ %6501, %6499 ], [ %6506, %6504 ]
  %6511 = phi float [ %6502, %6499 ], [ %6507, %6504 ]
  %6512 = phi float [ %6503, %6499 ], [ %6508, %6504 ]
  %6513 = select i1 %247, float 0.000000e+00, float %6511
  %6514 = select i1 %247, float 0.000000e+00, float %6512
  %6515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6516 = extractvalue %dx.types.CBufRet.f32 %6515, 1
  %6517 = fmul fast float %6510, %6334
  %6518 = fmul fast float %6517, %6516
  %6519 = fmul fast float %6513, %6335
  %6520 = fmul fast float %6519, %6516
  %6521 = fmul fast float %6514, %6336
  %6522 = fmul fast float %6521, %6516
  %6523 = fadd fast float %6378, %5101
  %6524 = fadd fast float %6523, %6391
  %6525 = fadd fast float %6524, %6518
  %6526 = fmul fast float %6525, %5140
  %6527 = fadd fast float %6379, %5102
  %6528 = fadd fast float %6527, %6394
  %6529 = fadd fast float %6528, %6520
  %6530 = fmul fast float %6529, %5140
  %6531 = fadd fast float %6380, %5103
  %6532 = fadd fast float %6531, %6397
  %6533 = fadd fast float %6532, %6522
  %6534 = fmul fast float %6533, %5140
  %6535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6536 = extractvalue %dx.types.CBufRet.f32 %6535, 3
  %6537 = fcmp fast oeq float %6536, 0.000000e+00
  br i1 %6537, label %8141, label %6538

; <label>:6538                                    ; preds = %6509
  %6539 = extractvalue %dx.types.CBufRet.f32 %6535, 0
  %6540 = extractvalue %dx.types.CBufRet.f32 %6535, 1
  %6541 = extractvalue %dx.types.CBufRet.f32 %6535, 2
  %6542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6543 = extractvalue %dx.types.CBufRet.f32 %6542, 0
  %6544 = extractvalue %dx.types.CBufRet.f32 %6542, 1
  %6545 = extractvalue %dx.types.CBufRet.f32 %6542, 2
  %6546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6547 = extractvalue %dx.types.CBufRet.f32 %6546, 0
  %6548 = extractvalue %dx.types.CBufRet.f32 %6546, 1
  %6549 = call float @dx.op.dot3.f32(i32 55, float %6543, float %6544, float %6545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6550 = select i1 %247, float %6547, float %6543
  %6551 = select i1 %247, float %6549, float %6544
  %6552 = select i1 %247, float %6548, float %6545
  %6553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6554 = extractvalue %dx.types.CBufRet.f32 %6553, 2
  %6555 = fmul fast float %6554, %106
  %6556 = fmul fast float %6554, %107
  %6557 = fmul fast float %6554, %108
  %6558 = fadd fast float %6555, %154
  %6559 = fadd fast float %6556, %155
  %6560 = fadd fast float %6557, %156
  %6561 = fcmp fast olt float %6536, 0.000000e+00
  br i1 %6561, label %7657, label %6562

; <label>:6562                                    ; preds = %6538
  %6563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6564 = extractvalue %dx.types.CBufRet.f32 %6563, 0
  %6565 = extractvalue %dx.types.CBufRet.f32 %6563, 1
  %6566 = extractvalue %dx.types.CBufRet.f32 %6563, 2
  %6567 = extractvalue %dx.types.CBufRet.f32 %6563, 3
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 0
  %6570 = extractvalue %dx.types.CBufRet.f32 %6568, 1
  %6571 = extractvalue %dx.types.CBufRet.f32 %6568, 2
  %6572 = extractvalue %dx.types.CBufRet.f32 %6568, 3
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6575 = extractvalue %dx.types.CBufRet.f32 %6573, 1
  %6576 = extractvalue %dx.types.CBufRet.f32 %6573, 2
  %6577 = extractvalue %dx.types.CBufRet.f32 %6573, 3
  %6578 = fmul fast float %6564, %6558
  %6579 = call float @dx.op.tertiary.f32(i32 46, float %6559, float %6565, float %6578)  ; FMad(a,b,c)
  %6580 = call float @dx.op.tertiary.f32(i32 46, float %6560, float %6566, float %6579)  ; FMad(a,b,c)
  %6581 = fadd fast float %6580, %6567
  %6582 = fmul fast float %6569, %6558
  %6583 = call float @dx.op.tertiary.f32(i32 46, float %6559, float %6570, float %6582)  ; FMad(a,b,c)
  %6584 = call float @dx.op.tertiary.f32(i32 46, float %6560, float %6571, float %6583)  ; FMad(a,b,c)
  %6585 = fadd fast float %6584, %6572
  %6586 = fmul fast float %6574, %6558
  %6587 = call float @dx.op.tertiary.f32(i32 46, float %6559, float %6575, float %6586)  ; FMad(a,b,c)
  %6588 = call float @dx.op.tertiary.f32(i32 46, float %6560, float %6576, float %6587)  ; FMad(a,b,c)
  %6589 = fadd fast float %6588, %6577
  %6590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6591 = extractvalue %dx.types.CBufRet.f32 %6590, 0
  %6592 = extractvalue %dx.types.CBufRet.f32 %6590, 1
  %6593 = extractvalue %dx.types.CBufRet.f32 %6590, 3
  %6594 = fmul fast float %6593, %6581
  %6595 = fmul fast float %6593, %6585
  %6596 = fadd fast float %6594, %6591
  %6597 = fadd fast float %6595, %6592
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 0
  %6600 = extractvalue %dx.types.CBufRet.f32 %6598, 1
  %6601 = extractvalue %dx.types.CBufRet.f32 %6598, 3
  %6602 = fmul fast float %6601, %6581
  %6603 = fmul fast float %6601, %6585
  %6604 = fadd fast float %6602, %6599
  %6605 = fadd fast float %6603, %6600
  %6606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6607 = extractvalue %dx.types.CBufRet.f32 %6606, 1
  %6608 = fsub fast float %6607, %6589
  %6609 = extractvalue %dx.types.CBufRet.f32 %6606, 2
  %6610 = fmul fast float %6608, %6609
  %6611 = fsub fast float 1.000000e+00, %6610
  %6612 = call float @dx.op.unary.f32(i32 7, float %6611)  ; Saturate(value)
  %6613 = extractvalue %dx.types.CBufRet.f32 %6598, 2
  %6614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6615 = extractvalue %dx.types.CBufRet.f32 %6614, 2
  %6616 = fadd fast float %6615, %6613
  %6617 = fcmp fast ogt float %6616, 0.000000e+00
  br i1 %6617, label %6618, label %6642

; <label>:6618                                    ; preds = %6562
  %6619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6620 = extractvalue %dx.types.CBufRet.f32 %6619, 0
  %6621 = extractvalue %dx.types.CBufRet.f32 %6619, 1
  %6622 = fsub fast float %6604, %6620
  %6623 = fsub fast float %6605, %6621
  %6624 = fcmp fast olt float %6622, 0.000000e+00
  %6625 = fcmp fast olt float %6623, 0.000000e+00
  %6626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6627 = extractvalue %dx.types.CBufRet.f32 %6626, 0
  %6628 = extractvalue %dx.types.CBufRet.f32 %6626, 1
  %6629 = extractvalue %dx.types.CBufRet.f32 %6626, 2
  %6630 = extractvalue %dx.types.CBufRet.f32 %6626, 3
  %6631 = select i1 %6624, float %6627, float %6629
  %6632 = select i1 %6625, float %6628, float %6630
  %6633 = fmul fast float %6631, %6622
  %6634 = fmul fast float %6632, %6623
  %6635 = call float @dx.op.unary.f32(i32 6, float %6633)  ; FAbs(value)
  %6636 = call float @dx.op.unary.f32(i32 6, float %6634)  ; FAbs(value)
  %6637 = extractvalue %dx.types.CBufRet.f32 %6553, 0
  %6638 = call float @dx.op.binary.f32(i32 35, float %6635, float %6636)  ; FMax(a,b)
  %6639 = fsub fast float %6637, %6638
  %6640 = call float @dx.op.unary.f32(i32 7, float %6639)  ; Saturate(value)
  %6641 = fmul fast float %6640, %6612
  br label %6642

; <label>:6642                                    ; preds = %6618, %6562
  %6643 = phi float [ %6641, %6618 ], [ 0.000000e+00, %6562 ]
  %6644 = extractvalue %dx.types.CBufRet.f32 %6590, 2
  %6645 = extractvalue %dx.types.CBufRet.f32 %6614, 1
  %6646 = fadd fast float %6645, %6644
  %6647 = fcmp fast ogt float %6646, 0.000000e+00
  %6648 = extractvalue %dx.types.CBufRet.f32 %6553, 0
  br i1 %6647, label %6649, label %6672

; <label>:6649                                    ; preds = %6642
  %6650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6651 = extractvalue %dx.types.CBufRet.f32 %6650, 0
  %6652 = extractvalue %dx.types.CBufRet.f32 %6650, 1
  %6653 = fsub fast float %6596, %6651
  %6654 = fsub fast float %6597, %6652
  %6655 = fcmp fast olt float %6653, 0.000000e+00
  %6656 = fcmp fast olt float %6654, 0.000000e+00
  %6657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6658 = extractvalue %dx.types.CBufRet.f32 %6657, 0
  %6659 = extractvalue %dx.types.CBufRet.f32 %6657, 1
  %6660 = extractvalue %dx.types.CBufRet.f32 %6657, 2
  %6661 = extractvalue %dx.types.CBufRet.f32 %6657, 3
  %6662 = select i1 %6655, float %6658, float %6660
  %6663 = select i1 %6656, float %6659, float %6661
  %6664 = fmul fast float %6662, %6653
  %6665 = fmul fast float %6663, %6654
  %6666 = call float @dx.op.unary.f32(i32 6, float %6664)  ; FAbs(value)
  %6667 = call float @dx.op.unary.f32(i32 6, float %6665)  ; FAbs(value)
  %6668 = call float @dx.op.binary.f32(i32 35, float %6666, float %6667)  ; FMax(a,b)
  %6669 = fsub fast float %6648, %6668
  %6670 = call float @dx.op.unary.f32(i32 7, float %6669)  ; Saturate(value)
  %6671 = fmul fast float %6670, %6612
  br label %6672

; <label>:6672                                    ; preds = %6649, %6642
  %6673 = phi float [ %6671, %6649 ], [ 0.000000e+00, %6642 ]
  %6674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6675 = extractvalue %dx.types.CBufRet.f32 %6674, 1
  %6676 = call float @dx.op.unary.f32(i32 7, float %6675)  ; Saturate(value)
  %6677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6678 = extractvalue %dx.types.CBufRet.f32 %6677, 0
  %6679 = extractvalue %dx.types.CBufRet.f32 %6677, 1
  %6680 = fsub fast float %6581, %6678
  %6681 = fsub fast float %6585, %6679
  %6682 = fcmp fast olt float %6680, 0.000000e+00
  %6683 = fcmp fast olt float %6681, 0.000000e+00
  %6684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6685 = extractvalue %dx.types.CBufRet.f32 %6684, 0
  %6686 = extractvalue %dx.types.CBufRet.f32 %6684, 1
  %6687 = extractvalue %dx.types.CBufRet.f32 %6684, 2
  %6688 = extractvalue %dx.types.CBufRet.f32 %6684, 3
  %6689 = select i1 %6682, float %6685, float %6687
  %6690 = select i1 %6683, float %6686, float %6688
  %6691 = fmul fast float %6689, %6680
  %6692 = fmul fast float %6690, %6681
  %6693 = call float @dx.op.unary.f32(i32 6, float %6691)  ; FAbs(value)
  %6694 = call float @dx.op.unary.f32(i32 6, float %6692)  ; FAbs(value)
  %6695 = call float @dx.op.binary.f32(i32 35, float %6693, float %6694)  ; FMax(a,b)
  %6696 = fsub fast float %6648, %6695
  %6697 = call float @dx.op.unary.f32(i32 7, float %6696)  ; Saturate(value)
  %6698 = call float @dx.op.binary.f32(i32 36, float %6697, float %6676)  ; FMin(a,b)
  %6699 = fmul fast float %6698, %6612
  %6700 = fsub fast float %6673, %6699
  %6701 = fsub fast float %6643, %6673
  %6702 = fsub fast float %6701, %6699
  %6703 = call float @dx.op.binary.f32(i32 35, float %6673, float %6643)  ; FMax(a,b)
  %6704 = call float @dx.op.binary.f32(i32 35, float %6699, float %6703)  ; FMax(a,b)
  %6705 = fcmp fast olt float %6704, 1.000000e+00
  br i1 %6705, label %6706, label %7104, !dx.controlflow.hints !93

; <label>:6706                                    ; preds = %6672
  %6707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6708 = extractvalue %dx.types.CBufRet.f32 %6707, 0
  %6709 = fcmp fast une float %6708, 0.000000e+00
  br i1 %6709, label %6710, label %7104, !dx.controlflow.hints !94

; <label>:6710                                    ; preds = %6706
  %6711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6712 = extractvalue %dx.types.CBufRet.f32 %6711, 0
  %6713 = extractvalue %dx.types.CBufRet.f32 %6711, 1
  %6714 = extractvalue %dx.types.CBufRet.f32 %6711, 2
  %6715 = extractvalue %dx.types.CBufRet.f32 %6711, 3
  %6716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6717 = extractvalue %dx.types.CBufRet.f32 %6716, 0
  %6718 = extractvalue %dx.types.CBufRet.f32 %6716, 1
  %6719 = extractvalue %dx.types.CBufRet.f32 %6716, 2
  %6720 = extractvalue %dx.types.CBufRet.f32 %6716, 3
  %6721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6722 = extractvalue %dx.types.CBufRet.f32 %6721, 0
  %6723 = extractvalue %dx.types.CBufRet.f32 %6721, 1
  %6724 = extractvalue %dx.types.CBufRet.f32 %6721, 2
  %6725 = extractvalue %dx.types.CBufRet.f32 %6721, 3
  %6726 = fmul fast float %6712, %6558
  %6727 = call float @dx.op.tertiary.f32(i32 46, float %6559, float %6713, float %6726)  ; FMad(a,b,c)
  %6728 = call float @dx.op.tertiary.f32(i32 46, float %6560, float %6714, float %6727)  ; FMad(a,b,c)
  %6729 = fadd fast float %6728, %6715
  %6730 = fmul fast float %6717, %6558
  %6731 = call float @dx.op.tertiary.f32(i32 46, float %6559, float %6718, float %6730)  ; FMad(a,b,c)
  %6732 = call float @dx.op.tertiary.f32(i32 46, float %6560, float %6719, float %6731)  ; FMad(a,b,c)
  %6733 = fadd fast float %6732, %6720
  %6734 = fmul fast float %6722, %6558
  %6735 = call float @dx.op.tertiary.f32(i32 46, float %6559, float %6723, float %6734)  ; FMad(a,b,c)
  %6736 = call float @dx.op.tertiary.f32(i32 46, float %6560, float %6724, float %6735)  ; FMad(a,b,c)
  %6737 = fadd fast float %6736, %6725
  %6738 = fcmp fast oge float %6729, 1.000000e+00
  %6739 = fcmp fast oge float %6733, 1.000000e+00
  %6740 = or i1 %6738, %6739
  %6741 = fcmp fast olt float %6729, 0.000000e+00
  %6742 = fcmp fast olt float %6733, 0.000000e+00
  %6743 = or i1 %6741, %6742
  %6744 = or i1 %6740, %6743
  br i1 %6744, label %7104, label %6745, !dx.controlflow.hints !95

; <label>:6745                                    ; preds = %6710
  %6746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6747 = extractvalue %dx.types.CBufRet.f32 %6746, 0
  %6748 = extractvalue %dx.types.CBufRet.f32 %6746, 1
  %6749 = extractvalue %dx.types.CBufRet.f32 %6746, 2
  %6750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6751 = extractvalue %dx.types.CBufRet.i32 %6750, 2
  %6752 = uitofp i32 %6751 to float
  %6753 = extractvalue %dx.types.CBufRet.i32 %6750, 3
  %6754 = uitofp i32 %6753 to float
  %6755 = extractvalue %dx.types.CBufRet.f32 %6746, 3
  %6756 = fmul fast float %6755, 2.000000e+00
  %6757 = fsub fast float %6729, %6747
  %6758 = fsub fast float %6733, %6748
  %6759 = fmul fast float %6756, %6757
  %6760 = fmul fast float %6756, %6758
  %6761 = fdiv fast float 1.000000e+00, %6541
  %6762 = fmul fast float %6760, %6761
  %6763 = call float @dx.op.unary.f32(i32 6, float %6762)  ; FAbs(value)
  %6764 = fmul fast float %6749, %6560
  %6765 = fmul fast float %6764, %6756
  %6766 = call float @dx.op.unary.f32(i32 6, float %6765)  ; FAbs(value)
  %6767 = call float @dx.op.unary.f32(i32 6, float %6759)  ; FAbs(value)
  %6768 = call float @dx.op.binary.f32(i32 35, float %6766, float %6763)  ; FMax(a,b)
  %6769 = call float @dx.op.binary.f32(i32 35, float %6767, float %6768)  ; FMax(a,b)
  %6770 = fmul fast float %6769, 2.000000e+00
  %6771 = call float @dx.op.unary.f32(i32 23, float %6770)  ; Log(value)
  %6772 = call float @dx.op.binary.f32(i32 35, float %6771, float %6752)  ; FMax(a,b)
  %6773 = call float @dx.op.unary.f32(i32 22, float %6772)  ; Frc(value)
  %6774 = fadd fast float %6773, 0xBFEA666660000000
  %6775 = fmul fast float %6774, 8.000000e+00
  %6776 = call float @dx.op.unary.f32(i32 7, float %6775)  ; Saturate(value)
  %6777 = call float @dx.op.unary.f32(i32 27, float %6772)  ; Round_ni(value)
  %6778 = fadd fast float %6777, %6776
  %6779 = call float @dx.op.binary.f32(i32 36, float %6778, float %6754)  ; FMin(a,b)
  %6780 = call float @dx.op.unary.f32(i32 27, float %6779)  ; Round_ni(value)
  %6781 = fsub fast float -0.000000e+00, %6780
  %6782 = call float @dx.op.unary.f32(i32 21, float %6781)  ; Exp(value)
  %6783 = fmul fast float %6782, %6756
  %6784 = fmul fast float %6783, %6729
  %6785 = fmul fast float %6783, %6733
  %6786 = fmul fast float %6784, 2.500000e-01
  %6787 = fmul fast float %6785, 2.500000e-01
  %6788 = fadd fast float %6786, 5.000000e-01
  %6789 = fadd fast float %6787, 5.000000e-01
  %6790 = fsub fast float %6754, %6752
  %6791 = fptoui float %6790 to i32
  %6792 = add i32 %6791, 320
  %6793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %6792)  ; CBufferLoadLegacy(handle,regIndex)
  %6794 = extractvalue %dx.types.CBufRet.f32 %6793, 0
  %6795 = extractvalue %dx.types.CBufRet.f32 %6793, 1
  %6796 = fcmp fast une float %6779, %6754
  %6797 = fsub fast float %6729, %6794
  %6798 = fsub fast float %6733, %6795
  %6799 = call float @dx.op.unary.f32(i32 6, float %6797)  ; FAbs(value)
  %6800 = call float @dx.op.unary.f32(i32 6, float %6798)  ; FAbs(value)
  %6801 = fmul fast float %6799, %6783
  %6802 = fmul fast float %6800, %6783
  %6803 = fcmp fast olt float %6801, 1.000000e+00
  %6804 = fcmp fast olt float %6802, 1.000000e+00
  %6805 = and i1 %6803, %6804
  %6806 = or i1 %6796, %6805
  br i1 %6806, label %6807, label %7104, !dx.controlflow.hints !96

; <label>:6807                                    ; preds = %6745
  %6808 = fmul fast float %6785, 5.000000e-01
  %6809 = fmul fast float %6784, 5.000000e-01
  %6810 = fadd fast float %6808, 5.000000e-01
  %6811 = fadd fast float %6809, 5.000000e-01
  %6812 = sitofp i32 %6751 to float
  %6813 = fsub fast float %6779, %6812
  %6814 = call float @dx.op.unary.f32(i32 27, float %6813)  ; Round_ni(value)
  %6815 = call float @dx.op.unary.f32(i32 22, float %6779)  ; Frc(value)
  %6816 = call float @dx.op.unary.f32(i32 22, float %6811)  ; Frc(value)
  %6817 = call float @dx.op.unary.f32(i32 22, float %6810)  ; Frc(value)
  %6818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %6816, float %6817, float %6814, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6819 = extractvalue %dx.types.ResRet.f32 %6818, 0
  %6820 = extractvalue %dx.types.ResRet.f32 %6818, 1
  %6821 = extractvalue %dx.types.ResRet.f32 %6818, 2
  %6822 = extractvalue %dx.types.ResRet.f32 %6818, 3
  %6823 = fcmp fast ogt float %6815, 0.000000e+00
  br i1 %6823, label %6824, label %6845, !dx.controlflow.hints !97

; <label>:6824                                    ; preds = %6807
  %6825 = fadd fast float %6814, 1.000000e+00
  %6826 = call float @dx.op.unary.f32(i32 22, float %6788)  ; Frc(value)
  %6827 = call float @dx.op.unary.f32(i32 22, float %6789)  ; Frc(value)
  %6828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %6826, float %6827, float %6825, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6829 = extractvalue %dx.types.ResRet.f32 %6828, 0
  %6830 = extractvalue %dx.types.ResRet.f32 %6828, 1
  %6831 = extractvalue %dx.types.ResRet.f32 %6828, 2
  %6832 = extractvalue %dx.types.ResRet.f32 %6828, 3
  %6833 = fsub fast float %6829, %6819
  %6834 = fsub fast float %6830, %6820
  %6835 = fsub fast float %6831, %6821
  %6836 = fsub fast float %6832, %6822
  %6837 = fmul fast float %6833, %6815
  %6838 = fmul fast float %6834, %6815
  %6839 = fmul fast float %6835, %6815
  %6840 = fmul fast float %6836, %6815
  %6841 = fadd fast float %6837, %6819
  %6842 = fadd fast float %6838, %6820
  %6843 = fadd fast float %6839, %6821
  %6844 = fadd fast float %6840, %6822
  br label %6845

; <label>:6845                                    ; preds = %6824, %6807
  %6846 = phi float [ %6841, %6824 ], [ %6819, %6807 ]
  %6847 = phi float [ %6842, %6824 ], [ %6820, %6807 ]
  %6848 = phi float [ %6843, %6824 ], [ %6821, %6807 ]
  %6849 = phi float [ %6844, %6824 ], [ %6822, %6807 ]
  %6850 = fadd fast float %6846, -5.000000e-01
  %6851 = fadd fast float %6848, -5.000000e-01
  %6852 = fmul fast float %6850, 0xBFD5555560000000
  %6853 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6851, float %6852)  ; FMad(a,b,c)
  %6854 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6847, float 0.000000e+00)  ; FMad(a,b,c)
  %6855 = fadd fast float %6854, %6849
  %6856 = fmul fast float %6850, -7.500000e-01
  %6857 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6851, float %6856)  ; FMad(a,b,c)
  %6858 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6847, float 0.000000e+00)  ; FMad(a,b,c)
  %6859 = fadd fast float %6858, %6849
  %6860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6861 = extractvalue %dx.types.CBufRet.f32 %6860, 0
  %6862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6863 = extractvalue %dx.types.CBufRet.f32 %6862, 0
  %6864 = extractvalue %dx.types.CBufRet.f32 %6862, 1
  %6865 = extractvalue %dx.types.CBufRet.f32 %6862, 2
  %6866 = extractvalue %dx.types.CBufRet.f32 %6862, 3
  %6867 = fsub fast float %6863, %6853
  %6868 = fsub fast float %6864, %6855
  %6869 = fsub fast float %6865, %6857
  %6870 = fsub fast float %6866, %6859
  %6871 = fmul fast float %6867, %6861
  %6872 = fmul fast float %6868, %6861
  %6873 = fmul fast float %6869, %6861
  %6874 = fmul fast float %6870, %6861
  %6875 = fadd fast float %6871, %6853
  %6876 = fadd fast float %6872, %6855
  %6877 = fadd fast float %6873, %6857
  %6878 = fadd fast float %6874, %6859
  %6879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6880 = extractvalue %dx.types.ResRet.i32 %6879, 0
  %6881 = and i32 %6880, 536870911
  %6882 = uitofp i32 %6881 to float
  %6883 = fmul fast float %6882, %6729
  %6884 = fmul fast float %6882, %6733
  %6885 = fptoui float %6883 to i32
  %6886 = fptoui float %6884 to i32
  %6887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6888 = extractvalue %dx.types.ResRet.i32 %6887, 0
  %6889 = and i32 %6888, 31
  %6890 = lshr i32 %6885, %6889
  %6891 = lshr i32 %6886, %6889
  %6892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6893 = extractvalue %dx.types.ResRet.i32 %6892, 0
  %6894 = and i32 %6893, 31
  %6895 = shl i32 1, %6894
  %6896 = call i32 @dx.op.binary.i32(i32 40, i32 %6895, i32 4)  ; UMin(a,b)
  %6897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6898 = extractvalue %dx.types.ResRet.i32 %6897, 0
  %6899 = extractvalue %dx.types.ResRet.i32 %6897, 1
  %6900 = icmp eq i32 %6896, 0
  br i1 %6900, label %6942, label %6901

; <label>:6901                                    ; preds = %6845
  br label %6902

; <label>:6902                                    ; preds = %6930, %6901
  %6903 = phi i32 [ %6933, %6930 ], [ 0, %6901 ]
  %6904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6905 = extractvalue %dx.types.ResRet.i32 %6904, 0
  %6906 = lshr i32 %6905, 16
  %6907 = and i32 %6906, 31
  %6908 = shl i32 %6891, %6907
  %6909 = add i32 %6908, %6890
  %6910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6911 = extractvalue %dx.types.ResRet.i32 %6910, 0
  %6912 = and i32 %6911, 31
  %6913 = shl i32 %6909, %6912
  %6914 = add i32 %6913, %6903
  %6915 = shl i32 %6914, 2
  %6916 = add i32 %6915, 32
  %6917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6916, i32 undef)  ; BufferLoad(srv,index,wot)
  %6918 = extractvalue %dx.types.ResRet.i32 %6917, 0
  %6919 = icmp slt i32 %6918, 0
  %6920 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6903
  %6921 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6903
  %6922 = bitcast float* %6920 to i32*
  %6923 = bitcast float* %6921 to i32*
  br i1 %6919, label %6924, label %6930

; <label>:6924                                    ; preds = %6902
  %6925 = and i32 %6918, 1073741823
  %6926 = add nuw nsw i32 %6925, 20
  %6927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6926, i32 undef)  ; BufferLoad(srv,index,wot)
  %6928 = extractvalue %dx.types.ResRet.i32 %6927, 0
  %6929 = extractvalue %dx.types.ResRet.i32 %6927, 1
  br label %6930

; <label>:6930                                    ; preds = %6924, %6902
  %6931 = phi i32 [ %6928, %6924 ], [ %6898, %6902 ]
  %6932 = phi i32 [ %6929, %6924 ], [ %6899, %6902 ]
  store i32 %6931, i32* %6922, align 4
  store i32 %6932, i32* %6923, align 4
  %6933 = add nuw i32 %6903, 1
  %6934 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6935 = extractvalue %dx.types.CBufRet.i32 %6934, 2
  %6936 = icmp eq i32 %6935, 0
  %6937 = icmp ugt i32 %6918, -1073741825
  %6938 = and i1 %6937, %6936
  %6939 = icmp ult i32 %6933, %6896
  %6940 = and i1 %6938, %6939
  br i1 %6940, label %6902, label %6941

; <label>:6941                                    ; preds = %6930
  br label %6942

; <label>:6942                                    ; preds = %6941, %6845
  %6943 = phi i32 [ 0, %6845 ], [ %6933, %6941 ]
  %6944 = extractvalue %dx.types.CBufRet.f32 %6707, 2
  %6945 = fptoui float %6944 to i32
  %6946 = icmp eq i32 %6945, 0
  br i1 %6946, label %6998, label %6947

; <label>:6947                                    ; preds = %6942
  br label %6948

; <label>:6948                                    ; preds = %6993, %6947
  %6949 = phi i32 [ %6994, %6993 ], [ %6943, %6947 ]
  %6950 = phi i32 [ %6995, %6993 ], [ 0, %6947 ]
  %6951 = lshr i32 %6950, 2
  %6952 = and i32 %6950, 3
  %6953 = add nuw nsw i32 %6951, 83
  %6954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %6953)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.i32 %6954, 0
  %6956 = extractvalue %dx.types.CBufRet.i32 %6954, 1
  %6957 = extractvalue %dx.types.CBufRet.i32 %6954, 2
  %6958 = extractvalue %dx.types.CBufRet.i32 %6954, 3
  %6959 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %6955, i32* %6959, align 4
  %6960 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %6956, i32* %6960, align 4
  %6961 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %6957, i32* %6961, align 4
  %6962 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %6958, i32* %6962, align 4
  %6963 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %6952
  %6964 = load i32, i32* %6963, align 4, !tbaa !98, !noalias !102
  %6965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6966 = extractvalue %dx.types.ResRet.i32 %6965, 0
  %6967 = lshr i32 %6966, 16
  %6968 = and i32 %6967, 31
  %6969 = shl i32 %6891, %6968
  %6970 = add i32 %6969, %6890
  %6971 = shl i32 %6970, 2
  %6972 = add i32 %6971, %6964
  %6973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6972, i32 undef)  ; BufferLoad(srv,index,wot)
  %6974 = extractvalue %dx.types.ResRet.i32 %6973, 0
  %6975 = icmp eq i32 %6974, 0
  br i1 %6975, label %6993, label %6976

; <label>:6976                                    ; preds = %6948
  %6977 = icmp slt i32 %6974, 0
  %6978 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6949
  %6979 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6949
  %6980 = bitcast float* %6978 to i32*
  %6981 = bitcast float* %6979 to i32*
  br i1 %6977, label %6982, label %6989

; <label>:6982                                    ; preds = %6976
  %6983 = and i32 %6974, 1073741823
  %6984 = add i32 %6964, 20
  %6985 = add i32 %6984, %6983
  %6986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6985, i32 undef)  ; BufferLoad(srv,index,wot)
  %6987 = extractvalue %dx.types.ResRet.i32 %6986, 0
  %6988 = extractvalue %dx.types.ResRet.i32 %6986, 1
  br label %6989

; <label>:6989                                    ; preds = %6982, %6976
  %6990 = phi i32 [ %6987, %6982 ], [ %6898, %6976 ]
  %6991 = phi i32 [ %6988, %6982 ], [ %6899, %6976 ]
  store i32 %6990, i32* %6980, align 4
  store i32 %6991, i32* %6981, align 4
  %6992 = add i32 %6949, 1
  br label %6993

; <label>:6993                                    ; preds = %6989, %6948
  %6994 = phi i32 [ %6949, %6948 ], [ %6992, %6989 ]
  %6995 = add nuw i32 %6950, 1
  %6996 = icmp eq i32 %6995, %6945
  br i1 %6996, label %6997, label %6948

; <label>:6997                                    ; preds = %6993
  br label %6998

; <label>:6998                                    ; preds = %6997, %6942
  %6999 = phi i32 [ %6943, %6942 ], [ %6994, %6997 ]
  %7000 = icmp eq i32 %6999, 1
  %7001 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %7002 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %7000, label %7003, label %7006

; <label>:7003                                    ; preds = %6998
  %7004 = load float, float* %7001, align 4
  %7005 = load float, float* %7002, align 4
  br label %7033

; <label>:7006                                    ; preds = %6998
  %7007 = load float, float* %7001, align 4
  %7008 = load float, float* %7002, align 4
  %7009 = fdiv fast float 1.000000e+00, %7008
  %7010 = fsub fast float %7007, %7009
  %7011 = icmp ugt i32 %6999, 1
  br i1 %7011, label %7012, label %7028

; <label>:7012                                    ; preds = %7006
  br label %7013

; <label>:7013                                    ; preds = %7013, %7012
  %7014 = phi float [ %7023, %7013 ], [ %7010, %7012 ]
  %7015 = phi float [ %7024, %7013 ], [ %7007, %7012 ]
  %7016 = phi i32 [ %7025, %7013 ], [ 1, %7012 ]
  %7017 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %7016
  %7018 = load float, float* %7017, align 4
  %7019 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %7016
  %7020 = load float, float* %7019, align 4
  %7021 = fdiv fast float 1.000000e+00, %7020
  %7022 = fsub fast float %7018, %7021
  %7023 = call float @dx.op.binary.f32(i32 36, float %7014, float %7022)  ; FMin(a,b)
  %7024 = call float @dx.op.binary.f32(i32 35, float %7015, float %7018)  ; FMax(a,b)
  %7025 = add nuw i32 %7016, 1
  %7026 = icmp eq i32 %7025, %6999
  br i1 %7026, label %7027, label %7013

; <label>:7027                                    ; preds = %7013
  br label %7028

; <label>:7028                                    ; preds = %7027, %7006
  %7029 = phi float [ %7010, %7006 ], [ %7023, %7027 ]
  %7030 = phi float [ %7007, %7006 ], [ %7024, %7027 ]
  %7031 = fsub fast float %7030, %7029
  %7032 = fdiv fast float 1.000000e+00, %7031
  br label %7033

; <label>:7033                                    ; preds = %7028, %7003
  %7034 = phi float [ %7004, %7003 ], [ %7030, %7028 ]
  %7035 = phi float [ %7005, %7003 ], [ %7032, %7028 ]
  %7036 = fadd fast float %6737, %7034
  %7037 = fmul fast float %7036, %7035
  %7038 = call float @dx.op.unary.f32(i32 7, float %7037)  ; Saturate(value)
  %7039 = fmul fast float %7038, 2.000000e+00
  %7040 = fsub fast float 1.000000e+00, %7039
  %7041 = fmul fast float %6875, %6875
  %7042 = fsub fast float %6876, %7041
  %7043 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7042)  ; FMax(a,b)
  %7044 = fdiv fast float 1.000000e+00, %7043
  %7045 = fmul fast float %6876, %6875
  %7046 = fsub fast float %6877, %7045
  %7047 = fsub fast float %7040, %6875
  %7048 = fmul fast float %7040, %7040
  %7049 = fsub fast float %7048, %6876
  %7050 = fmul fast float %7044, %7046
  %7051 = fmul fast float %7050, %7047
  %7052 = fsub fast float %7049, %7051
  %7053 = fmul fast float %6876, %6876
  %7054 = fsub fast float %6878, %7053
  %7055 = fmul fast float %7046, %7046
  %7056 = fmul fast float %7055, %7044
  %7057 = fsub fast float %7054, %7056
  %7058 = fdiv fast float %7052, %7057
  %7059 = fmul fast float %7058, %7046
  %7060 = fsub fast float %7047, %7059
  %7061 = fmul fast float %7060, %7044
  %7062 = fmul fast float %7061, %6875
  %7063 = fsub fast float 1.000000e+00, %7062
  %7064 = fmul fast float %7058, %6876
  %7065 = fsub fast float %7063, %7064
  %7066 = fmul fast float %7061, %7061
  %7067 = fmul fast float %7058, 4.000000e+00
  %7068 = fmul fast float %7067, %7065
  %7069 = fsub fast float %7066, %7068
  %7070 = call float @dx.op.unary.f32(i32 24, float %7069)  ; Sqrt(value)
  %7071 = fcmp fast oge float %7061, 0.000000e+00
  %7072 = fsub fast float -0.000000e+00, %7070
  %7073 = select i1 %7071, float %7072, float %7070
  %7074 = fsub fast float %7073, %7061
  %7075 = fdiv fast float %7074, %7058
  %7076 = fdiv fast float %7065, %7074
  %7077 = fmul fast float %7075, 5.000000e-01
  %7078 = fmul fast float %7076, 2.000000e+00
  %7079 = select i1 %7071, float %7077, float %7078
  %7080 = select i1 %7071, float %7078, float %7077
  %7081 = call float @dx.op.binary.f32(i32 35, float %7079, float %7080)  ; FMax(a,b)
  %7082 = call float @dx.op.binary.f32(i32 36, float %7079, float %7080)  ; FMin(a,b)
  %7083 = fcmp fast ogt float %7040, %7081
  %7084 = fsub fast float %7040, %7082
  %7085 = fsub fast float %7040, %7081
  %7086 = fsub fast float %7081, %7082
  %7087 = select i1 %7083, float %7085, float %7086
  %7088 = fmul float %7084, %7087
  %7089 = select i1 %7083, float %7082, float %7040
  %7090 = fcmp fast ogt float %7040, %7082
  %7091 = fmul fast float %7089, %7081
  %7092 = fadd fast float %7089, %7081
  %7093 = fmul fast float %7092, %6875
  %7094 = fadd fast float %7091, %6876
  %7095 = fsub fast float %7094, %7093
  %7096 = fdiv fast float %7095, %7088
  %7097 = select i1 %7090, float %7096, float 0.000000e+00
  %7098 = fsub fast float 1.000000e+00, %7097
  %7099 = select i1 %7083, float %7098, float %7097
  %7100 = call float @dx.op.unary.f32(i32 7, float %7099)  ; Saturate(value)
  %7101 = extractvalue %dx.types.CBufRet.f32 %6860, 3
  %7102 = fmul fast float %7101, %7100
  %7103 = fsub fast float 1.000000e+00, %7102
  br label %7104

; <label>:7104                                    ; preds = %7033, %6745, %6710, %6706, %6672
  %7105 = phi float [ 1.000000e+00, %6672 ], [ %7103, %7033 ], [ 1.000000e+00, %6710 ], [ 1.000000e+00, %6745 ], [ 1.000000e+00, %6706 ]
  %7106 = fcmp fast ogt float %6702, 0.000000e+00
  br i1 %7106, label %7107, label %7269, !dx.controlflow.hints !111

; <label>:7107                                    ; preds = %7104
  %7108 = fadd fast float %6615, %6589
  %7109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7110 = extractvalue %dx.types.CBufRet.f32 %7109, 2
  %7111 = extractvalue %dx.types.CBufRet.f32 %7109, 3
  %7112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7113 = extractvalue %dx.types.CBufRet.f32 %7112, 2
  %7114 = call float @dx.op.binary.f32(i32 35, float %7108, float 0.000000e+00)  ; FMax(a,b)
  %7115 = fadd fast float %7114, 0x3F10000000000000
  %7116 = fcmp fast oeq float %7113, 0.000000e+00
  br i1 %7116, label %7117, label %7184

; <label>:7117                                    ; preds = %7107
  %7118 = extractvalue %dx.types.CBufRet.f32 %7109, 1
  %7119 = extractvalue %dx.types.CBufRet.f32 %7109, 0
  %7120 = fmul fast float %7119, %6604
  %7121 = fmul fast float %7118, %6605
  %7122 = fadd fast float %7120, 5.000000e-01
  %7123 = call float @dx.op.unary.f32(i32 27, float %7122)  ; Round_ni(value)
  %7124 = fadd fast float %7121, 5.000000e-01
  %7125 = call float @dx.op.unary.f32(i32 27, float %7124)  ; Round_ni(value)
  %7126 = fsub fast float %7122, %7123
  %7127 = fsub fast float %7124, %7125
  %7128 = fadd fast float %7123, -5.000000e-01
  %7129 = fadd fast float %7125, -5.000000e-01
  %7130 = fmul fast float %7126, 2.000000e+00
  %7131 = fsub fast float 3.000000e+00, %7130
  %7132 = fadd fast float %7130, 1.000000e+00
  %7133 = fsub fast float 2.000000e+00, %7126
  %7134 = bitcast float %7131 to i32
  %7135 = sub nsw i32 2129859010, %7134
  %7136 = bitcast i32 %7135 to float
  %7137 = fmul fast float %7136, %7133
  %7138 = fadd fast float %7137, -1.000000e+00
  %7139 = bitcast float %7132 to i32
  %7140 = sub nsw i32 2129859010, %7139
  %7141 = bitcast i32 %7140 to float
  %7142 = fmul fast float %7141, %7126
  %7143 = fadd fast float %7142, 1.000000e+00
  %7144 = fmul fast float %7127, 2.000000e+00
  %7145 = fsub fast float 3.000000e+00, %7144
  %7146 = fadd fast float %7144, 1.000000e+00
  %7147 = fsub fast float 2.000000e+00, %7127
  %7148 = bitcast float %7145 to i32
  %7149 = sub nsw i32 2129859010, %7148
  %7150 = bitcast i32 %7149 to float
  %7151 = fmul fast float %7150, %7147
  %7152 = fadd fast float %7151, -1.000000e+00
  %7153 = bitcast float %7146 to i32
  %7154 = sub nsw i32 2129859010, %7153
  %7155 = bitcast i32 %7154 to float
  %7156 = fmul fast float %7155, %7127
  %7157 = fadd fast float %7156, 1.000000e+00
  %7158 = fadd fast float %7138, %7128
  %7159 = fmul fast float %7158, %7110
  %7160 = fadd fast float %7152, %7129
  %7161 = fmul fast float %7160, %7111
  %7162 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7159, float %7161, float undef, float undef, i32 0, i32 0, i32 undef, float %7115)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7163 = extractvalue %dx.types.ResRet.f32 %7162, 0
  %7164 = fmul fast float %7163, %7131
  %7165 = fadd fast float %7143, %7128
  %7166 = fmul fast float %7165, %7110
  %7167 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7166, float %7161, float undef, float undef, i32 0, i32 0, i32 undef, float %7115)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7168 = extractvalue %dx.types.ResRet.f32 %7167, 0
  %7169 = fmul fast float %7168, %7132
  %7170 = fadd fast float %7157, %7129
  %7171 = fmul fast float %7170, %7111
  %7172 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7159, float %7171, float undef, float undef, i32 0, i32 0, i32 undef, float %7115)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7173 = extractvalue %dx.types.ResRet.f32 %7172, 0
  %7174 = fmul fast float %7173, %7131
  %7175 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7166, float %7171, float undef, float undef, i32 0, i32 0, i32 undef, float %7115)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7176 = extractvalue %dx.types.ResRet.f32 %7175, 0
  %7177 = fmul fast float %7176, %7132
  %7178 = fadd fast float %7177, %7174
  %7179 = fmul fast float %7178, %7146
  %7180 = fadd fast float %7169, %7164
  %7181 = fmul fast float %7180, %7145
  %7182 = fadd fast float %7181, %7179
  %7183 = fmul fast float %7182, 6.250000e-02
  br label %7269

; <label>:7184                                    ; preds = %7107
  %7185 = fmul fast float %260, 0x401921FB60000000
  %7186 = call float @dx.op.unary.f32(i32 13, float %7185)  ; Sin(value)
  %7187 = call float @dx.op.unary.f32(i32 12, float %7185)  ; Cos(value)
  %7188 = fsub fast float -0.000000e+00, %7186
  br label %7189

; <label>:7189                                    ; preds = %7238, %7184
  %7190 = phi float [ 0.000000e+00, %7184 ], [ %7233, %7238 ]
  %7191 = phi float [ 0.000000e+00, %7184 ], [ %7235, %7238 ]
  %7192 = phi i32 [ 0, %7184 ], [ %7239, %7238 ]
  %7193 = mul i32 %7192, 2
  %7194 = add i32 0, %7193
  %7195 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7194
  %7196 = load float, float* %7195, align 4
  %7197 = mul i32 %7192, 2
  %7198 = add i32 1, %7197
  %7199 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7198
  %7200 = load float, float* %7199, align 4
  %7201 = fmul fast float %7196, %7187
  %7202 = call float @dx.op.tertiary.f32(i32 46, float %7200, float %7188, float %7201)  ; FMad(a,b,c)
  %7203 = fmul fast float %7196, %7186
  %7204 = call float @dx.op.tertiary.f32(i32 46, float %7200, float %7187, float %7203)  ; FMad(a,b,c)
  %7205 = fmul fast float %7202, %7113
  %7206 = fmul fast float %7204, %7113
  %7207 = fadd fast float %7205, %6604
  %7208 = fadd fast float %7206, %6605
  %7209 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %45, float %7207, float %7208, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7210 = extractvalue %dx.types.ResRet.f32 %7209, 0
  %7211 = extractvalue %dx.types.ResRet.f32 %7209, 1
  %7212 = extractvalue %dx.types.ResRet.f32 %7209, 2
  %7213 = extractvalue %dx.types.ResRet.f32 %7209, 3
  %7214 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %7210, float* %7214, align 4
  %7215 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %7211, float* %7215, align 4
  %7216 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %7212, float* %7216, align 4
  %7217 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %7213, float* %7217, align 4
  %7218 = fsub fast float %7210, %7115
  %7219 = fcmp fast olt float %7218, 0.000000e+00
  %7220 = select i1 %7219, float 0.000000e+00, float 1.000000e+00
  %7221 = fadd fast float %7220, %7190
  %7222 = fmul fast float %7220, %7218
  %7223 = fadd fast float %7222, %7191
  br label %7224

; <label>:7224                                    ; preds = %7224, %7189
  %7225 = phi i32 [ 1, %7189 ], [ %7236, %7224 ]
  %7226 = phi float [ %7223, %7189 ], [ %7235, %7224 ]
  %7227 = phi float [ %7221, %7189 ], [ %7233, %7224 ]
  %7228 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %7225
  %7229 = load float, float* %7228, align 4, !tbaa !112, !noalias !102
  %7230 = fsub fast float %7229, %7115
  %7231 = fcmp fast olt float %7230, 0.000000e+00
  %7232 = select i1 %7231, float 0.000000e+00, float 1.000000e+00
  %7233 = fadd fast float %7232, %7227
  %7234 = fmul fast float %7232, %7230
  %7235 = fadd fast float %7234, %7226
  %7236 = add nuw nsw i32 %7225, 1
  %7237 = icmp eq i32 %7236, 4
  br i1 %7237, label %7238, label %7224, !llvm.loop !114

; <label>:7238                                    ; preds = %7224
  %7239 = add nuw nsw i32 %7192, 1
  %7240 = icmp eq i32 %7239, 8
  br i1 %7240, label %7241, label %7189, !llvm.loop !115

; <label>:7241                                    ; preds = %7238
  %7242 = fdiv fast float 1.000000e+00, %7233
  %7243 = fmul fast float %7242, %7235
  %7244 = fdiv fast float 1.000000e+00, %7115
  %7245 = fmul fast float %7243, %7244
  %7246 = call float @dx.op.unary.f32(i32 7, float %7245)  ; Saturate(value)
  %7247 = call float @dx.op.binary.f32(i32 35, float %7246, float 0.000000e+00)  ; FMax(a,b)
  %7248 = fmul fast float %7233, 3.125000e-02
  %7249 = call float @dx.op.unary.f32(i32 7, float %7248)  ; Saturate(value)
  %7250 = fmul fast float %7249, 2.000000e+00
  %7251 = fadd fast float %7250, -1.000000e+00
  %7252 = fcmp fast ogt float %7251, 0.000000e+00
  %7253 = fcmp fast olt float %7251, 0.000000e+00
  %7254 = zext i1 %7252 to i32
  %7255 = zext i1 %7253 to i32
  %7256 = sub nsw i32 %7254, %7255
  %7257 = sitofp i32 %7256 to float
  %7258 = fmul fast float %7257, %7251
  %7259 = fsub fast float 1.000000e+00, %7258
  %7260 = fmul fast float %7259, %7259
  %7261 = fmul fast float %7260, %7259
  %7262 = fsub fast float %7259, %7261
  %7263 = fmul fast float %7262, %7247
  %7264 = fsub fast float 1.000000e+00, %7261
  %7265 = fsub fast float %7264, %7263
  %7266 = fmul fast float %7257, 5.000000e-01
  %7267 = fmul fast float %7266, %7265
  %7268 = fsub fast float 5.000000e-01, %7267
  br label %7269

; <label>:7269                                    ; preds = %7241, %7117, %7104
  %7270 = phi float [ 1.000000e+00, %7104 ], [ %7183, %7117 ], [ %7268, %7241 ]
  %7271 = fcmp fast ogt float %6700, 0.000000e+00
  br i1 %7271, label %7272, label %7436, !dx.controlflow.hints !116

; <label>:7272                                    ; preds = %7269
  %7273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7274 = extractvalue %dx.types.CBufRet.f32 %7273, 1
  %7275 = fadd fast float %7274, %6589
  %7276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7277 = extractvalue %dx.types.CBufRet.f32 %7276, 2
  %7278 = extractvalue %dx.types.CBufRet.f32 %7276, 3
  %7279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7280 = extractvalue %dx.types.CBufRet.f32 %7279, 1
  %7281 = call float @dx.op.binary.f32(i32 35, float %7275, float 0.000000e+00)  ; FMax(a,b)
  %7282 = fadd fast float %7281, 0x3F10000000000000
  %7283 = fcmp fast oeq float %7280, 0.000000e+00
  br i1 %7283, label %7284, label %7351

; <label>:7284                                    ; preds = %7272
  %7285 = extractvalue %dx.types.CBufRet.f32 %7276, 1
  %7286 = extractvalue %dx.types.CBufRet.f32 %7276, 0
  %7287 = fmul fast float %7286, %6596
  %7288 = fmul fast float %7285, %6597
  %7289 = fadd fast float %7287, 5.000000e-01
  %7290 = call float @dx.op.unary.f32(i32 27, float %7289)  ; Round_ni(value)
  %7291 = fadd fast float %7288, 5.000000e-01
  %7292 = call float @dx.op.unary.f32(i32 27, float %7291)  ; Round_ni(value)
  %7293 = fsub fast float %7289, %7290
  %7294 = fsub fast float %7291, %7292
  %7295 = fadd fast float %7290, -5.000000e-01
  %7296 = fadd fast float %7292, -5.000000e-01
  %7297 = fmul fast float %7293, 2.000000e+00
  %7298 = fsub fast float 3.000000e+00, %7297
  %7299 = fadd fast float %7297, 1.000000e+00
  %7300 = fsub fast float 2.000000e+00, %7293
  %7301 = bitcast float %7298 to i32
  %7302 = sub nsw i32 2129859010, %7301
  %7303 = bitcast i32 %7302 to float
  %7304 = fmul fast float %7303, %7300
  %7305 = fadd fast float %7304, -1.000000e+00
  %7306 = bitcast float %7299 to i32
  %7307 = sub nsw i32 2129859010, %7306
  %7308 = bitcast i32 %7307 to float
  %7309 = fmul fast float %7308, %7293
  %7310 = fadd fast float %7309, 1.000000e+00
  %7311 = fmul fast float %7294, 2.000000e+00
  %7312 = fsub fast float 3.000000e+00, %7311
  %7313 = fadd fast float %7311, 1.000000e+00
  %7314 = fsub fast float 2.000000e+00, %7294
  %7315 = bitcast float %7312 to i32
  %7316 = sub nsw i32 2129859010, %7315
  %7317 = bitcast i32 %7316 to float
  %7318 = fmul fast float %7317, %7314
  %7319 = fadd fast float %7318, -1.000000e+00
  %7320 = bitcast float %7313 to i32
  %7321 = sub nsw i32 2129859010, %7320
  %7322 = bitcast i32 %7321 to float
  %7323 = fmul fast float %7322, %7294
  %7324 = fadd fast float %7323, 1.000000e+00
  %7325 = fadd fast float %7305, %7295
  %7326 = fmul fast float %7325, %7277
  %7327 = fadd fast float %7319, %7296
  %7328 = fmul fast float %7327, %7278
  %7329 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7326, float %7328, float undef, float undef, i32 0, i32 0, i32 undef, float %7282)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7330 = extractvalue %dx.types.ResRet.f32 %7329, 0
  %7331 = fmul fast float %7330, %7298
  %7332 = fadd fast float %7310, %7295
  %7333 = fmul fast float %7332, %7277
  %7334 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7333, float %7328, float undef, float undef, i32 0, i32 0, i32 undef, float %7282)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7335 = extractvalue %dx.types.ResRet.f32 %7334, 0
  %7336 = fmul fast float %7335, %7299
  %7337 = fadd fast float %7324, %7296
  %7338 = fmul fast float %7337, %7278
  %7339 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7326, float %7338, float undef, float undef, i32 0, i32 0, i32 undef, float %7282)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7340 = extractvalue %dx.types.ResRet.f32 %7339, 0
  %7341 = fmul fast float %7340, %7298
  %7342 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7333, float %7338, float undef, float undef, i32 0, i32 0, i32 undef, float %7282)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7343 = extractvalue %dx.types.ResRet.f32 %7342, 0
  %7344 = fmul fast float %7343, %7299
  %7345 = fadd fast float %7344, %7341
  %7346 = fmul fast float %7345, %7313
  %7347 = fadd fast float %7336, %7331
  %7348 = fmul fast float %7347, %7312
  %7349 = fadd fast float %7348, %7346
  %7350 = fmul fast float %7349, 6.250000e-02
  br label %7436

; <label>:7351                                    ; preds = %7272
  %7352 = fmul fast float %260, 0x401921FB60000000
  %7353 = call float @dx.op.unary.f32(i32 13, float %7352)  ; Sin(value)
  %7354 = call float @dx.op.unary.f32(i32 12, float %7352)  ; Cos(value)
  %7355 = fsub fast float -0.000000e+00, %7353
  br label %7356

; <label>:7356                                    ; preds = %7405, %7351
  %7357 = phi float [ 0.000000e+00, %7351 ], [ %7400, %7405 ]
  %7358 = phi float [ 0.000000e+00, %7351 ], [ %7402, %7405 ]
  %7359 = phi i32 [ 0, %7351 ], [ %7406, %7405 ]
  %7360 = mul i32 %7359, 2
  %7361 = add i32 0, %7360
  %7362 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7361
  %7363 = load float, float* %7362, align 4
  %7364 = mul i32 %7359, 2
  %7365 = add i32 1, %7364
  %7366 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7365
  %7367 = load float, float* %7366, align 4
  %7368 = fmul fast float %7363, %7354
  %7369 = call float @dx.op.tertiary.f32(i32 46, float %7367, float %7355, float %7368)  ; FMad(a,b,c)
  %7370 = fmul fast float %7363, %7353
  %7371 = call float @dx.op.tertiary.f32(i32 46, float %7367, float %7354, float %7370)  ; FMad(a,b,c)
  %7372 = fmul fast float %7369, %7280
  %7373 = fmul fast float %7371, %7280
  %7374 = fadd fast float %7372, %6596
  %7375 = fadd fast float %7373, %6597
  %7376 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %45, float %7374, float %7375, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7377 = extractvalue %dx.types.ResRet.f32 %7376, 0
  %7378 = extractvalue %dx.types.ResRet.f32 %7376, 1
  %7379 = extractvalue %dx.types.ResRet.f32 %7376, 2
  %7380 = extractvalue %dx.types.ResRet.f32 %7376, 3
  %7381 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %7377, float* %7381, align 4
  %7382 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %7378, float* %7382, align 4
  %7383 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %7379, float* %7383, align 4
  %7384 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %7380, float* %7384, align 4
  %7385 = fsub fast float %7377, %7282
  %7386 = fcmp fast olt float %7385, 0.000000e+00
  %7387 = select i1 %7386, float 0.000000e+00, float 1.000000e+00
  %7388 = fadd fast float %7387, %7357
  %7389 = fmul fast float %7387, %7385
  %7390 = fadd fast float %7389, %7358
  br label %7391

; <label>:7391                                    ; preds = %7391, %7356
  %7392 = phi i32 [ 1, %7356 ], [ %7403, %7391 ]
  %7393 = phi float [ %7390, %7356 ], [ %7402, %7391 ]
  %7394 = phi float [ %7388, %7356 ], [ %7400, %7391 ]
  %7395 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %7392
  %7396 = load float, float* %7395, align 4, !tbaa !112, !noalias !102
  %7397 = fsub fast float %7396, %7282
  %7398 = fcmp fast olt float %7397, 0.000000e+00
  %7399 = select i1 %7398, float 0.000000e+00, float 1.000000e+00
  %7400 = fadd fast float %7399, %7394
  %7401 = fmul fast float %7399, %7397
  %7402 = fadd fast float %7401, %7393
  %7403 = add nuw nsw i32 %7392, 1
  %7404 = icmp eq i32 %7403, 4
  br i1 %7404, label %7405, label %7391, !llvm.loop !114

; <label>:7405                                    ; preds = %7391
  %7406 = add nuw nsw i32 %7359, 1
  %7407 = icmp eq i32 %7406, 8
  br i1 %7407, label %7408, label %7356, !llvm.loop !115

; <label>:7408                                    ; preds = %7405
  %7409 = fdiv fast float 1.000000e+00, %7400
  %7410 = fmul fast float %7409, %7402
  %7411 = fdiv fast float 1.000000e+00, %7282
  %7412 = fmul fast float %7410, %7411
  %7413 = call float @dx.op.unary.f32(i32 7, float %7412)  ; Saturate(value)
  %7414 = call float @dx.op.binary.f32(i32 35, float %7413, float 0.000000e+00)  ; FMax(a,b)
  %7415 = fmul fast float %7400, 3.125000e-02
  %7416 = call float @dx.op.unary.f32(i32 7, float %7415)  ; Saturate(value)
  %7417 = fmul fast float %7416, 2.000000e+00
  %7418 = fadd fast float %7417, -1.000000e+00
  %7419 = fcmp fast ogt float %7418, 0.000000e+00
  %7420 = fcmp fast olt float %7418, 0.000000e+00
  %7421 = zext i1 %7419 to i32
  %7422 = zext i1 %7420 to i32
  %7423 = sub nsw i32 %7421, %7422
  %7424 = sitofp i32 %7423 to float
  %7425 = fmul fast float %7424, %7418
  %7426 = fsub fast float 1.000000e+00, %7425
  %7427 = fmul fast float %7426, %7426
  %7428 = fmul fast float %7427, %7426
  %7429 = fsub fast float %7426, %7428
  %7430 = fmul fast float %7429, %7414
  %7431 = fsub fast float 1.000000e+00, %7428
  %7432 = fsub fast float %7431, %7430
  %7433 = fmul fast float %7424, 5.000000e-01
  %7434 = fmul fast float %7433, %7432
  %7435 = fsub fast float 5.000000e-01, %7434
  br label %7436

; <label>:7436                                    ; preds = %7408, %7284, %7269
  %7437 = phi float [ 1.000000e+00, %7269 ], [ %7350, %7284 ], [ %7435, %7408 ]
  %7438 = fcmp fast ogt float %6699, 0.000000e+00
  br i1 %7438, label %7439, label %7603, !dx.controlflow.hints !117

; <label>:7439                                    ; preds = %7436
  %7440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7441 = extractvalue %dx.types.CBufRet.f32 %7440, 0
  %7442 = fadd fast float %7441, %6589
  %7443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7444 = extractvalue %dx.types.CBufRet.f32 %7443, 2
  %7445 = extractvalue %dx.types.CBufRet.f32 %7443, 3
  %7446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7447 = extractvalue %dx.types.CBufRet.f32 %7446, 0
  %7448 = call float @dx.op.binary.f32(i32 35, float %7442, float 0.000000e+00)  ; FMax(a,b)
  %7449 = fadd fast float %7448, 0x3F10000000000000
  %7450 = fcmp fast oeq float %7447, 0.000000e+00
  br i1 %7450, label %7451, label %7518

; <label>:7451                                    ; preds = %7439
  %7452 = extractvalue %dx.types.CBufRet.f32 %7443, 1
  %7453 = extractvalue %dx.types.CBufRet.f32 %7443, 0
  %7454 = fmul fast float %7453, %6581
  %7455 = fmul fast float %7452, %6585
  %7456 = fadd fast float %7454, 5.000000e-01
  %7457 = call float @dx.op.unary.f32(i32 27, float %7456)  ; Round_ni(value)
  %7458 = fadd fast float %7455, 5.000000e-01
  %7459 = call float @dx.op.unary.f32(i32 27, float %7458)  ; Round_ni(value)
  %7460 = fsub fast float %7456, %7457
  %7461 = fsub fast float %7458, %7459
  %7462 = fadd fast float %7457, -5.000000e-01
  %7463 = fadd fast float %7459, -5.000000e-01
  %7464 = fmul fast float %7460, 2.000000e+00
  %7465 = fsub fast float 3.000000e+00, %7464
  %7466 = fadd fast float %7464, 1.000000e+00
  %7467 = fsub fast float 2.000000e+00, %7460
  %7468 = bitcast float %7465 to i32
  %7469 = sub nsw i32 2129859010, %7468
  %7470 = bitcast i32 %7469 to float
  %7471 = fmul fast float %7470, %7467
  %7472 = fadd fast float %7471, -1.000000e+00
  %7473 = bitcast float %7466 to i32
  %7474 = sub nsw i32 2129859010, %7473
  %7475 = bitcast i32 %7474 to float
  %7476 = fmul fast float %7475, %7460
  %7477 = fadd fast float %7476, 1.000000e+00
  %7478 = fmul fast float %7461, 2.000000e+00
  %7479 = fsub fast float 3.000000e+00, %7478
  %7480 = fadd fast float %7478, 1.000000e+00
  %7481 = fsub fast float 2.000000e+00, %7461
  %7482 = bitcast float %7479 to i32
  %7483 = sub nsw i32 2129859010, %7482
  %7484 = bitcast i32 %7483 to float
  %7485 = fmul fast float %7484, %7481
  %7486 = fadd fast float %7485, -1.000000e+00
  %7487 = bitcast float %7480 to i32
  %7488 = sub nsw i32 2129859010, %7487
  %7489 = bitcast i32 %7488 to float
  %7490 = fmul fast float %7489, %7461
  %7491 = fadd fast float %7490, 1.000000e+00
  %7492 = fadd fast float %7472, %7462
  %7493 = fmul fast float %7492, %7444
  %7494 = fadd fast float %7486, %7463
  %7495 = fmul fast float %7494, %7445
  %7496 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7493, float %7495, float undef, float undef, i32 0, i32 0, i32 undef, float %7449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7497 = extractvalue %dx.types.ResRet.f32 %7496, 0
  %7498 = fmul fast float %7497, %7465
  %7499 = fadd fast float %7477, %7462
  %7500 = fmul fast float %7499, %7444
  %7501 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7500, float %7495, float undef, float undef, i32 0, i32 0, i32 undef, float %7449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7502 = extractvalue %dx.types.ResRet.f32 %7501, 0
  %7503 = fmul fast float %7502, %7466
  %7504 = fadd fast float %7491, %7463
  %7505 = fmul fast float %7504, %7445
  %7506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7493, float %7505, float undef, float undef, i32 0, i32 0, i32 undef, float %7449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7507 = extractvalue %dx.types.ResRet.f32 %7506, 0
  %7508 = fmul fast float %7507, %7465
  %7509 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7500, float %7505, float undef, float undef, i32 0, i32 0, i32 undef, float %7449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7510 = extractvalue %dx.types.ResRet.f32 %7509, 0
  %7511 = fmul fast float %7510, %7466
  %7512 = fadd fast float %7511, %7508
  %7513 = fmul fast float %7512, %7480
  %7514 = fadd fast float %7503, %7498
  %7515 = fmul fast float %7514, %7479
  %7516 = fadd fast float %7515, %7513
  %7517 = fmul fast float %7516, 6.250000e-02
  br label %7603

; <label>:7518                                    ; preds = %7439
  %7519 = fmul fast float %260, 0x401921FB60000000
  %7520 = call float @dx.op.unary.f32(i32 13, float %7519)  ; Sin(value)
  %7521 = call float @dx.op.unary.f32(i32 12, float %7519)  ; Cos(value)
  %7522 = fsub fast float -0.000000e+00, %7520
  br label %7523

; <label>:7523                                    ; preds = %7572, %7518
  %7524 = phi float [ 0.000000e+00, %7518 ], [ %7567, %7572 ]
  %7525 = phi float [ 0.000000e+00, %7518 ], [ %7569, %7572 ]
  %7526 = phi i32 [ 0, %7518 ], [ %7573, %7572 ]
  %7527 = mul i32 %7526, 2
  %7528 = add i32 0, %7527
  %7529 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7528
  %7530 = load float, float* %7529, align 4
  %7531 = mul i32 %7526, 2
  %7532 = add i32 1, %7531
  %7533 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7532
  %7534 = load float, float* %7533, align 4
  %7535 = fmul fast float %7530, %7521
  %7536 = call float @dx.op.tertiary.f32(i32 46, float %7534, float %7522, float %7535)  ; FMad(a,b,c)
  %7537 = fmul fast float %7530, %7520
  %7538 = call float @dx.op.tertiary.f32(i32 46, float %7534, float %7521, float %7537)  ; FMad(a,b,c)
  %7539 = fmul fast float %7536, %7447
  %7540 = fmul fast float %7538, %7447
  %7541 = fadd fast float %7539, %6581
  %7542 = fadd fast float %7540, %6585
  %7543 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %45, float %7541, float %7542, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7544 = extractvalue %dx.types.ResRet.f32 %7543, 0
  %7545 = extractvalue %dx.types.ResRet.f32 %7543, 1
  %7546 = extractvalue %dx.types.ResRet.f32 %7543, 2
  %7547 = extractvalue %dx.types.ResRet.f32 %7543, 3
  %7548 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %7544, float* %7548, align 4
  %7549 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %7545, float* %7549, align 4
  %7550 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %7546, float* %7550, align 4
  %7551 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %7547, float* %7551, align 4
  %7552 = fsub fast float %7544, %7449
  %7553 = fcmp fast olt float %7552, 0.000000e+00
  %7554 = select i1 %7553, float 0.000000e+00, float 1.000000e+00
  %7555 = fadd fast float %7554, %7524
  %7556 = fmul fast float %7554, %7552
  %7557 = fadd fast float %7556, %7525
  br label %7558

; <label>:7558                                    ; preds = %7558, %7523
  %7559 = phi i32 [ 1, %7523 ], [ %7570, %7558 ]
  %7560 = phi float [ %7557, %7523 ], [ %7569, %7558 ]
  %7561 = phi float [ %7555, %7523 ], [ %7567, %7558 ]
  %7562 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7559
  %7563 = load float, float* %7562, align 4, !tbaa !112, !noalias !102
  %7564 = fsub fast float %7563, %7449
  %7565 = fcmp fast olt float %7564, 0.000000e+00
  %7566 = select i1 %7565, float 0.000000e+00, float 1.000000e+00
  %7567 = fadd fast float %7566, %7561
  %7568 = fmul fast float %7566, %7564
  %7569 = fadd fast float %7568, %7560
  %7570 = add nuw nsw i32 %7559, 1
  %7571 = icmp eq i32 %7570, 4
  br i1 %7571, label %7572, label %7558, !llvm.loop !114

; <label>:7572                                    ; preds = %7558
  %7573 = add nuw nsw i32 %7526, 1
  %7574 = icmp eq i32 %7573, 8
  br i1 %7574, label %7575, label %7523, !llvm.loop !115

; <label>:7575                                    ; preds = %7572
  %7576 = fdiv fast float 1.000000e+00, %7567
  %7577 = fmul fast float %7576, %7569
  %7578 = fdiv fast float 1.000000e+00, %7449
  %7579 = fmul fast float %7577, %7578
  %7580 = call float @dx.op.unary.f32(i32 7, float %7579)  ; Saturate(value)
  %7581 = call float @dx.op.binary.f32(i32 35, float %7580, float 0.000000e+00)  ; FMax(a,b)
  %7582 = fmul fast float %7567, 3.125000e-02
  %7583 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7584 = fmul fast float %7583, 2.000000e+00
  %7585 = fadd fast float %7584, -1.000000e+00
  %7586 = fcmp fast ogt float %7585, 0.000000e+00
  %7587 = fcmp fast olt float %7585, 0.000000e+00
  %7588 = zext i1 %7586 to i32
  %7589 = zext i1 %7587 to i32
  %7590 = sub nsw i32 %7588, %7589
  %7591 = sitofp i32 %7590 to float
  %7592 = fmul fast float %7591, %7585
  %7593 = fsub fast float 1.000000e+00, %7592
  %7594 = fmul fast float %7593, %7593
  %7595 = fmul fast float %7594, %7593
  %7596 = fsub fast float %7593, %7595
  %7597 = fmul fast float %7596, %7581
  %7598 = fsub fast float 1.000000e+00, %7595
  %7599 = fsub fast float %7598, %7597
  %7600 = fmul fast float %7591, 5.000000e-01
  %7601 = fmul fast float %7600, %7599
  %7602 = fsub fast float 5.000000e-01, %7601
  br label %7603

; <label>:7603                                    ; preds = %7575, %7451, %7436
  %7604 = phi float [ 1.000000e+00, %7436 ], [ %7517, %7451 ], [ %7602, %7575 ]
  %7605 = fsub fast float %7270, %7105
  %7606 = fmul fast float %7605, %6643
  %7607 = fadd fast float %7606, %7105
  %7608 = fsub fast float %7437, %7607
  %7609 = fmul fast float %7608, %6673
  %7610 = fadd fast float %7609, %7607
  %7611 = fsub fast float %7604, %7610
  %7612 = fmul fast float %7611, %6699
  %7613 = fadd fast float %7612, %7610
  %7614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7615 = extractvalue %dx.types.CBufRet.f32 %7614, 2
  %7616 = fcmp fast ogt float %7615, 0.000000e+00
  br i1 %7616, label %7617, label %7657, !dx.controlflow.hints !118

; <label>:7617                                    ; preds = %7603
  %7618 = fcmp fast ugt float %7615, 0.000000e+00
  br i1 %7618, label %7619, label %7654

; <label>:7619                                    ; preds = %7617
  %7620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7621 = extractvalue %dx.types.CBufRet.f32 %7620, 0
  %7622 = extractvalue %dx.types.CBufRet.f32 %7620, 1
  %7623 = extractvalue %dx.types.CBufRet.f32 %7620, 2
  %7624 = extractvalue %dx.types.CBufRet.f32 %7620, 3
  %7625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7626 = extractvalue %dx.types.CBufRet.f32 %7625, 0
  %7627 = extractvalue %dx.types.CBufRet.f32 %7625, 1
  %7628 = extractvalue %dx.types.CBufRet.f32 %7625, 2
  %7629 = extractvalue %dx.types.CBufRet.f32 %7625, 3
  %7630 = extractvalue %dx.types.CBufRet.f32 %7614, 0
  %7631 = extractvalue %dx.types.CBufRet.f32 %7614, 1
  %7632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7633 = extractvalue %dx.types.CBufRet.f32 %7632, 0
  %7634 = extractvalue %dx.types.CBufRet.f32 %7632, 1
  %7635 = extractvalue %dx.types.CBufRet.f32 %7632, 2
  %7636 = fadd fast float %7633, %6558
  %7637 = fadd fast float %7634, %6559
  %7638 = fadd fast float %7635, %6560
  %7639 = fmul fast float %7636, %7621
  %7640 = call float @dx.op.tertiary.f32(i32 46, float %7622, float %7637, float %7639)  ; FMad(a,b,c)
  %7641 = call float @dx.op.tertiary.f32(i32 46, float %7623, float %7638, float %7640)  ; FMad(a,b,c)
  %7642 = fadd fast float %7641, %7624
  %7643 = fmul fast float %7636, %7626
  %7644 = call float @dx.op.tertiary.f32(i32 46, float %7627, float %7637, float %7643)  ; FMad(a,b,c)
  %7645 = call float @dx.op.tertiary.f32(i32 46, float %7628, float %7638, float %7644)  ; FMad(a,b,c)
  %7646 = fadd fast float %7645, %7629
  %7647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %41, float %7642, float %7646, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7648 = extractvalue %dx.types.ResRet.f32 %7647, 0
  %7649 = fmul fast float %7648, %7631
  %7650 = fadd fast float %7649, %7630
  %7651 = call float @dx.op.unary.f32(i32 7, float %7650)  ; Saturate(value)
  %7652 = fmul fast float %7651, %7615
  %7653 = fsub fast float 1.000000e+00, %7652
  br label %7654

; <label>:7654                                    ; preds = %7619, %7617
  %7655 = phi float [ %7653, %7619 ], [ 1.000000e+00, %7617 ]
  %7656 = fmul fast float %7655, %7613
  br label %7657

; <label>:7657                                    ; preds = %7654, %7603, %6538
  %7658 = phi float [ 1.000000e+00, %6538 ], [ %7656, %7654 ], [ %7613, %7603 ]
  %7659 = call float @dx.op.binary.f32(i32 36, float %7658, float %7658)  ; FMin(a,b)
  %7660 = call float @dx.op.binary.f32(i32 36, float %7658, float %7659)  ; FMin(a,b)
  %7661 = fcmp fast ogt float %7660, 0.000000e+00
  br i1 %7661, label %7662, label %7828, !dx.controlflow.hints !119

; <label>:7662                                    ; preds = %7657
  %7663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7664 = extractvalue %dx.types.CBufRet.f32 %7663, 0
  %7665 = extractvalue %dx.types.CBufRet.f32 %7663, 1
  %7666 = extractvalue %dx.types.CBufRet.f32 %7663, 2
  %7667 = extractvalue %dx.types.CBufRet.f32 %7663, 3
  %7668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7669 = extractvalue %dx.types.CBufRet.f32 %7668, 0
  %7670 = extractvalue %dx.types.CBufRet.f32 %7668, 1
  %7671 = extractvalue %dx.types.CBufRet.f32 %7668, 2
  %7672 = extractvalue %dx.types.CBufRet.f32 %7668, 3
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 0
  %7675 = extractvalue %dx.types.CBufRet.f32 %7673, 1
  %7676 = extractvalue %dx.types.CBufRet.f32 %7673, 2
  %7677 = extractvalue %dx.types.CBufRet.f32 %7673, 3
  %7678 = fmul fast float %7664, %6558
  %7679 = call float @dx.op.tertiary.f32(i32 46, float %6559, float %7665, float %7678)  ; FMad(a,b,c)
  %7680 = call float @dx.op.tertiary.f32(i32 46, float %6560, float %7666, float %7679)  ; FMad(a,b,c)
  %7681 = fadd fast float %7680, %7667
  %7682 = fmul fast float %7669, %6558
  %7683 = call float @dx.op.tertiary.f32(i32 46, float %6559, float %7670, float %7682)  ; FMad(a,b,c)
  %7684 = call float @dx.op.tertiary.f32(i32 46, float %6560, float %7671, float %7683)  ; FMad(a,b,c)
  %7685 = fadd fast float %7684, %7672
  %7686 = fmul fast float %7674, %6558
  %7687 = call float @dx.op.tertiary.f32(i32 46, float %6559, float %7675, float %7686)  ; FMad(a,b,c)
  %7688 = call float @dx.op.tertiary.f32(i32 46, float %6560, float %7676, float %7687)  ; FMad(a,b,c)
  %7689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7690 = extractvalue %dx.types.CBufRet.f32 %7689, 0
  %7691 = extractvalue %dx.types.CBufRet.f32 %7689, 1
  %7692 = extractvalue %dx.types.CBufRet.f32 %7689, 3
  %7693 = fmul fast float %7692, %7681
  %7694 = fmul fast float %7692, %7685
  %7695 = fadd fast float %7693, %7690
  %7696 = fadd fast float %7694, %7691
  %7697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7698 = extractvalue %dx.types.CBufRet.f32 %7697, 0
  %7699 = extractvalue %dx.types.CBufRet.f32 %7697, 1
  %7700 = fsub fast float %7695, %7698
  %7701 = fsub fast float %7696, %7699
  %7702 = fcmp fast olt float %7700, 0.000000e+00
  %7703 = fcmp fast olt float %7701, 0.000000e+00
  %7704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7705 = extractvalue %dx.types.CBufRet.f32 %7704, 0
  %7706 = extractvalue %dx.types.CBufRet.f32 %7704, 1
  %7707 = extractvalue %dx.types.CBufRet.f32 %7704, 2
  %7708 = extractvalue %dx.types.CBufRet.f32 %7704, 3
  %7709 = select i1 %7702, float %7705, float %7707
  %7710 = select i1 %7703, float %7706, float %7708
  %7711 = fmul fast float %7709, %7700
  %7712 = fmul fast float %7710, %7701
  %7713 = call float @dx.op.unary.f32(i32 6, float %7711)  ; FAbs(value)
  %7714 = call float @dx.op.unary.f32(i32 6, float %7712)  ; FAbs(value)
  %7715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7716 = extractvalue %dx.types.CBufRet.f32 %7715, 0
  %7717 = call float @dx.op.binary.f32(i32 35, float %7713, float %7714)  ; FMax(a,b)
  %7718 = fsub fast float %7716, %7717
  %7719 = call float @dx.op.unary.f32(i32 7, float %7718)  ; Saturate(value)
  %7720 = fcmp fast ogt float %7719, 0.000000e+00
  br i1 %7720, label %7721, label %7762, !dx.controlflow.hints !120

; <label>:7721                                    ; preds = %7662
  %7722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %7695, float %7696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7723 = extractvalue %dx.types.ResRet.f32 %7722, 1
  %7724 = fcmp fast ogt float %7723, 0.000000e+00
  br i1 %7724, label %7725, label %7757

; <label>:7725                                    ; preds = %7721
  %7726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %7695, float %7696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7727 = extractvalue %dx.types.ResRet.f32 %7726, 0
  %7728 = extractvalue %dx.types.ResRet.f32 %7726, 1
  %7729 = extractvalue %dx.types.ResRet.f32 %7726, 2
  %7730 = extractvalue %dx.types.ResRet.f32 %7726, 3
  %7731 = fsub fast float 1.000000e+00, %7677
  %7732 = fsub fast float %7731, %7688
  %7733 = fmul fast float %7732, 0x400921FB60000000
  %7734 = fadd fast float %7733, 0x3FF921FB60000000
  %7735 = call float @dx.op.unary.f32(i32 13, float %7734)  ; Sin(value)
  %7736 = fadd fast float %7735, -1.000000e+00
  %7737 = fmul fast float %7736, 0x3FD45F3060000000
  %7738 = fmul fast float %7732, 0x401921FB60000000
  %7739 = fadd fast float %7738, 0x400921FB60000000
  %7740 = call float @dx.op.unary.f32(i32 13, float %7739)  ; Sin(value)
  %7741 = fadd fast float %7740, 0x3E7777A5C0000000
  %7742 = fmul fast float %7741, 0x3FC45F3060000000
  %7743 = fmul fast float %7732, 0x4022D97C80000000
  %7744 = fadd fast float %7743, 0x4012D97C80000000
  %7745 = call float @dx.op.unary.f32(i32 13, float %7744)  ; Sin(value)
  %7746 = fadd fast float %7745, 1.000000e+00
  %7747 = fmul fast float %7746, 0x3FBB2995E0000000
  %7748 = fmul fast float %7732, 0x402921FB60000000
  %7749 = fadd fast float %7748, 0x401921FB60000000
  %7750 = call float @dx.op.unary.f32(i32 13, float %7749)  ; Sin(value)
  %7751 = fadd fast float %7750, 0xBE8777A5C0000000
  %7752 = fmul fast float %7751, 0x3FB45F3060000000
  %7753 = call float @dx.op.dot4.f32(i32 56, float %7727, float %7728, float %7729, float %7730, float %7737, float %7742, float %7747, float %7752)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7754 = fmul fast float %7753, 0xBFF7154760000000
  %7755 = call float @dx.op.unary.f32(i32 21, float %7754)  ; Exp(value)
  %7756 = call float @dx.op.unary.f32(i32 7, float %7755)  ; Saturate(value)
  br label %7757

; <label>:7757                                    ; preds = %7725, %7721
  %7758 = phi float [ %7756, %7725 ], [ 1.000000e+00, %7721 ]
  %7759 = fadd fast float %7758, -1.000000e+00
  %7760 = fmul fast float %7759, %7719
  %7761 = fadd fast float %7760, 1.000000e+00
  br label %7762

; <label>:7762                                    ; preds = %7757, %7662
  %7763 = phi float [ %7761, %7757 ], [ 1.000000e+00, %7662 ]
  %7764 = fmul fast float %7763, %7658
  %7765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7766 = extractvalue %dx.types.CBufRet.f32 %7765, 0
  %7767 = extractvalue %dx.types.CBufRet.f32 %7765, 1
  %7768 = extractvalue %dx.types.CBufRet.f32 %7765, 2
  %7769 = fadd fast float %7766, %154
  %7770 = fadd fast float %7767, %155
  %7771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7772 = extractvalue %dx.types.CBufRet.f32 %7771, 1
  %7773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7774 = extractvalue %dx.types.CBufRet.f32 %7773, 0
  %7775 = extractvalue %dx.types.CBufRet.f32 %7773, 1
  %7776 = extractvalue %dx.types.CBufRet.f32 %7773, 2
  %7777 = fsub fast float -0.000000e+00, %7769
  %7778 = fsub fast float -0.000000e+00, %7770
  %7779 = fsub fast float -0.000000e+00, %156
  %7780 = fsub fast float %7779, %7768
  %7781 = fadd fast float %7780, %7772
  %7782 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7777, float %7778, float %7781)  ; Dot3(ax,ay,az,bx,by,bz)
  %7783 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7774, float %7775, float %7776)  ; Dot3(ax,ay,az,bx,by,bz)
  %7784 = fdiv fast float 1.000000e+00, %7783
  %7785 = fmul fast float %7784, %7782
  %7786 = fmul fast float %7774, %7785
  %7787 = fmul fast float %7775, %7785
  %7788 = fadd fast float %7786, %7769
  %7789 = fadd fast float %7787, %7770
  %7790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7791 = extractvalue %dx.types.CBufRet.f32 %7790, 0
  %7792 = extractvalue %dx.types.CBufRet.f32 %7790, 1
  %7793 = fsub fast float %7788, %7791
  %7794 = fsub fast float %7789, %7792
  %7795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7796 = extractvalue %dx.types.CBufRet.f32 %7795, 2
  %7797 = extractvalue %dx.types.CBufRet.f32 %7795, 3
  %7798 = fmul fast float %7793, %7796
  %7799 = fmul fast float %7794, %7797
  %7800 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7801 = extractvalue %dx.types.CBufRet.i32 %7800, 3
  %7802 = icmp eq i32 %7801, 0
  br i1 %7802, label %7808, label %7803

; <label>:7803                                    ; preds = %7762
  %7804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7798, float %7799, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7805 = extractvalue %dx.types.ResRet.f32 %7804, 0
  %7806 = extractvalue %dx.types.ResRet.f32 %7804, 1
  %7807 = extractvalue %dx.types.ResRet.f32 %7804, 2
  br label %7813

; <label>:7808                                    ; preds = %7762
  %7809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %7798, float %7799, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7810 = extractvalue %dx.types.ResRet.f32 %7809, 0
  %7811 = extractvalue %dx.types.ResRet.f32 %7809, 1
  %7812 = extractvalue %dx.types.ResRet.f32 %7809, 2
  br label %7813

; <label>:7813                                    ; preds = %7808, %7803
  %7814 = phi float [ %7805, %7803 ], [ %7810, %7808 ]
  %7815 = phi float [ %7806, %7803 ], [ %7811, %7808 ]
  %7816 = phi float [ %7807, %7803 ], [ %7812, %7808 ]
  %7817 = extractvalue %dx.types.CBufRet.f32 %7771, 2
  %7818 = fmul fast float %7817, %7814
  %7819 = extractvalue %dx.types.CBufRet.f32 %7771, 0
  %7820 = fsub fast float %7785, %7819
  %7821 = fsub fast float %7820, %7818
  %7822 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7821)  ; FMax(a,b)
  %7823 = fmul fast float %7822, %7815
  %7824 = call float @dx.op.binary.f32(i32 36, float %7816, float %7823)  ; FMin(a,b)
  %7825 = fmul fast float %7824, 0xBFF7154760000000
  %7826 = call float @dx.op.unary.f32(i32 21, float %7825)  ; Exp(value)
  %7827 = fmul fast float %7764, %7826
  br label %7828

; <label>:7828                                    ; preds = %7813, %7657
  %7829 = phi float [ %7827, %7813 ], [ %7658, %7657 ]
  %7830 = call float @dx.op.binary.f32(i32 36, float %7829, float %7829)  ; FMin(a,b)
  %7831 = call float @dx.op.binary.f32(i32 36, float %7829, float %7830)  ; FMin(a,b)
  %7832 = fcmp fast ogt float %7831, 0.000000e+00
  br i1 %7832, label %7833, label %8141, !dx.controlflow.hints !121

; <label>:7833                                    ; preds = %7828
  %7834 = bitcast i32 %5529 to float
  %7835 = fmul fast float %7829, %6550
  %7836 = fmul fast float %7829, %6551
  %7837 = fmul fast float %7829, %6552
  %7838 = fsub fast float %6539, %174
  %7839 = fsub fast float %6540, %175
  %7840 = fsub fast float %6541, %176
  %7841 = call float @dx.op.dot3.f32(i32 55, float %7838, float %7839, float %7840, float %7838, float %7839, float %7840)  ; Dot3(ax,ay,az,bx,by,bz)
  %7842 = call float @dx.op.unary.f32(i32 25, float %7841)  ; Rsqrt(value)
  %7843 = fmul fast float %7842, %7838
  %7844 = fmul fast float %7842, %7839
  %7845 = fmul fast float %7842, %7840
  %7846 = call float @dx.op.dot3.f32(i32 55, float %6539, float %6540, float %6541, float %5464, float %5465, float %5466)  ; Dot3(ax,ay,az,bx,by,bz)
  %7847 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5294, float %7843, float %7844, float %7845)  ; Dot3(ax,ay,az,bx,by,bz)
  %7848 = call float @dx.op.unary.f32(i32 7, float %7846)  ; Saturate(value)
  %7849 = fmul fast float %7848, %7848
  %7850 = fmul fast float %7849, %7834
  %7851 = call float @dx.op.unary.f32(i32 7, float %7850)  ; Saturate(value)
  %7852 = fmul fast float %7851, %7848
  %7853 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5465, float %5466, float %7843, float %7844, float %7845)  ; Dot3(ax,ay,az,bx,by,bz)
  %7854 = fmul fast float %7853, %7853
  %7855 = call float @dx.op.unary.f32(i32 6, float %7846)  ; FAbs(value)
  %7856 = fsub fast float 1.000000e+00, %5523
  %7857 = fmul fast float %5505, %5505
  %7858 = fmul fast float %7857, %7856
  %7859 = fadd fast float %7858, %5523
  %7860 = bitcast float %7859 to i32
  %7861 = ashr i32 %7860, 1
  %7862 = add nsw i32 %7861, 532487669
  %7863 = bitcast i32 %7862 to float
  %7864 = fadd fast float %7863, %5505
  %7865 = fmul fast float %5523, %7854
  %7866 = fsub fast float 1.000000e+00, %7854
  %7867 = fadd fast float %7866, %7865
  %7868 = fmul fast float %7855, %7855
  %7869 = fmul fast float %7868, %7856
  %7870 = fadd fast float %7869, %5523
  %7871 = bitcast float %7870 to i32
  %7872 = ashr i32 %7871, 1
  %7873 = add nsw i32 %7872, 532487669
  %7874 = bitcast i32 %7873 to float
  %7875 = fadd fast float %7874, %7855
  %7876 = fmul fast float %7867, %7867
  %7877 = fmul fast float %7876, %7864
  %7878 = fmul fast float %7877, %7875
  %7879 = fdiv fast float 0x3FF0A00000000000, %7878
  %7880 = fmul fast float %7879, %5523
  %7881 = fmul fast float %5765, 0x3FF9999980000000
  %7882 = fsub fast float 5.000000e+00, %7881
  %7883 = call float @dx.op.unary.f32(i32 6, float %7847)  ; FAbs(value)
  %7884 = fsub fast float 1.000000e+00, %7883
  %7885 = fmul fast float %5765, 0x41D9660740000000
  %7886 = fadd fast float %7885, 0xC1EFBF8940000000
  %7887 = bitcast float %7884 to i32
  %7888 = sitofp i32 %7887 to float
  %7889 = fmul fast float %7888, %7882
  %7890 = fadd fast float %7886, %7889
  %7891 = fptosi float %7890 to i32
  %7892 = bitcast i32 %7891 to float
  %7893 = fsub fast float 1.000000e+00, %5461
  %7894 = fsub fast float 1.000000e+00, %5462
  %7895 = fsub fast float 1.000000e+00, %5503
  %7896 = fmul fast float %7892, %7893
  %7897 = fmul fast float %7892, %7894
  %7898 = fmul fast float %7892, %7895
  %7899 = fadd fast float %7896, %5461
  %7900 = fadd fast float %7897, %5462
  %7901 = fadd fast float %7898, %5503
  br i1 %5788, label %7902, label %7925

; <label>:7902                                    ; preds = %7833
  %7903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5114, float %7883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7904 = extractvalue %dx.types.ResRet.f32 %7903, 0
  %7905 = extractvalue %dx.types.ResRet.f32 %7903, 1
  %7906 = extractvalue %dx.types.ResRet.f32 %7903, 2
  %7907 = fadd fast float %7904, -5.000000e-01
  %7908 = fadd fast float %7905, -5.000000e-01
  %7909 = fadd fast float %7906, -5.000000e-01
  %7910 = fmul fast float %5461, 4.000000e+00
  %7911 = fmul fast float %7910, %7893
  %7912 = fmul fast float %7911, %7907
  %7913 = fmul fast float %5462, 4.000000e+00
  %7914 = fmul fast float %7913, %7894
  %7915 = fmul fast float %7914, %7908
  %7916 = fmul fast float %5503, 4.000000e+00
  %7917 = fmul fast float %7916, %7895
  %7918 = fmul fast float %7917, %7909
  %7919 = fadd fast float %7912, %7899
  %7920 = fadd fast float %7915, %7900
  %7921 = fadd fast float %7918, %7901
  %7922 = call float @dx.op.unary.f32(i32 7, float %7919)  ; Saturate(value)
  %7923 = call float @dx.op.unary.f32(i32 7, float %7920)  ; Saturate(value)
  %7924 = call float @dx.op.unary.f32(i32 7, float %7921)  ; Saturate(value)
  br label %7925

; <label>:7925                                    ; preds = %7902, %7833
  %7926 = phi float [ %7922, %7902 ], [ %7899, %7833 ]
  %7927 = phi float [ %7923, %7902 ], [ %7900, %7833 ]
  %7928 = phi float [ %7924, %7902 ], [ %7901, %7833 ]
  %7929 = fmul fast float %7846, 9.843750e-01
  %7930 = fadd fast float %7929, 7.812500e-03
  %7931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %7930, float %5769, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7932 = extractvalue %dx.types.ResRet.f32 %7931, 0
  %7933 = extractvalue %dx.types.ResRet.f32 %7931, 1
  %7934 = extractvalue %dx.types.ResRet.f32 %7931, 2
  %7935 = extractvalue %dx.types.ResRet.f32 %7931, 3
  %7936 = fsub fast float %7934, %7932
  %7937 = fsub fast float %7935, %7933
  %7938 = fmul fast float %7936, %5775
  %7939 = fmul fast float %7937, %5775
  %7940 = fadd fast float %7938, %7932
  %7941 = fadd fast float %7939, %7933
  %7942 = fmul fast float %7940, %5461
  %7943 = fmul fast float %7940, %5462
  %7944 = fmul fast float %7940, %5503
  %7945 = fadd fast float %7942, %7941
  %7946 = fadd fast float %7943, %7941
  %7947 = fadd fast float %7944, %7941
  br i1 %5788, label %7948, label %7971

; <label>:7948                                    ; preds = %7925
  %7949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5114, float %7846, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7950 = extractvalue %dx.types.ResRet.f32 %7949, 0
  %7951 = extractvalue %dx.types.ResRet.f32 %7949, 1
  %7952 = extractvalue %dx.types.ResRet.f32 %7949, 2
  %7953 = fadd fast float %7950, -5.000000e-01
  %7954 = fadd fast float %7951, -5.000000e-01
  %7955 = fadd fast float %7952, -5.000000e-01
  %7956 = fmul fast float %5461, 4.000000e+00
  %7957 = fmul fast float %7956, %7893
  %7958 = fmul fast float %7957, %7953
  %7959 = fmul fast float %5462, 4.000000e+00
  %7960 = fmul fast float %7959, %7894
  %7961 = fmul fast float %7960, %7954
  %7962 = fmul fast float %5503, 4.000000e+00
  %7963 = fmul fast float %7962, %7895
  %7964 = fmul fast float %7963, %7955
  %7965 = fadd fast float %7958, %7945
  %7966 = fadd fast float %7961, %7946
  %7967 = fadd fast float %7964, %7947
  %7968 = call float @dx.op.unary.f32(i32 7, float %7965)  ; Saturate(value)
  %7969 = call float @dx.op.unary.f32(i32 7, float %7966)  ; Saturate(value)
  %7970 = call float @dx.op.unary.f32(i32 7, float %7967)  ; Saturate(value)
  br label %7971

; <label>:7971                                    ; preds = %7948, %7925
  %7972 = phi float [ %7968, %7948 ], [ %7945, %7925 ]
  %7973 = phi float [ %7969, %7948 ], [ %7946, %7925 ]
  %7974 = phi float [ %7970, %7948 ], [ %7947, %7925 ]
  %7975 = call float @dx.op.binary.f32(i32 35, float %7973, float %7974)  ; FMax(a,b)
  %7976 = call float @dx.op.binary.f32(i32 35, float %7972, float %7975)  ; FMax(a,b)
  %7977 = fsub fast float 1.000000e+00, %7976
  %7978 = call float @dx.op.binary.f32(i32 35, float %7855, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7979 = fdiv fast float %4451, %7978
  %7980 = fmul fast float %6310, %7979
  %7981 = fmul fast float %6312, %7979
  %7982 = fmul fast float %6314, %7979
  %7983 = call float @dx.op.unary.f32(i32 21, float %7980)  ; Exp(value)
  %7984 = call float @dx.op.unary.f32(i32 21, float %7981)  ; Exp(value)
  %7985 = call float @dx.op.unary.f32(i32 21, float %7982)  ; Exp(value)
  %7986 = call float @dx.op.unary.f32(i32 7, float %7983)  ; Saturate(value)
  %7987 = call float @dx.op.unary.f32(i32 7, float %7984)  ; Saturate(value)
  %7988 = call float @dx.op.unary.f32(i32 7, float %7985)  ; Saturate(value)
  %7989 = select i1 %6307, float %7986, float 0.000000e+00
  %7990 = select i1 %6308, float %7987, float 0.000000e+00
  %7991 = select i1 %6309, float %7988, float 0.000000e+00
  %7992 = fsub fast float -0.000000e+00, %5464
  %7993 = fsub fast float -0.000000e+00, %5465
  %7994 = fsub fast float -0.000000e+00, %5466
  %7995 = call float @dx.op.dot3.f32(i32 55, float %6539, float %6540, float %6541, float %7992, float %7993, float %7994)  ; Dot3(ax,ay,az,bx,by,bz)
  %7996 = call float @dx.op.unary.f32(i32 7, float %7995)  ; Saturate(value)
  %7997 = fmul fast float %7996, 9.843750e-01
  %7998 = fadd fast float %7997, 7.812500e-03
  %7999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %7998, float %5769, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8000 = extractvalue %dx.types.ResRet.f32 %7999, 0
  %8001 = extractvalue %dx.types.ResRet.f32 %7999, 1
  %8002 = extractvalue %dx.types.ResRet.f32 %7999, 2
  %8003 = extractvalue %dx.types.ResRet.f32 %7999, 3
  %8004 = fsub fast float %8002, %8000
  %8005 = fsub fast float %8003, %8001
  %8006 = fmul fast float %8004, %5775
  %8007 = fmul fast float %8005, %5775
  %8008 = fadd fast float %8006, %8000
  %8009 = fadd fast float %8007, %8001
  %8010 = fmul fast float %8008, %5461
  %8011 = fmul fast float %8008, %5462
  %8012 = fmul fast float %8008, %5503
  %8013 = fadd fast float %8010, %8009
  %8014 = fadd fast float %8011, %8009
  %8015 = fadd fast float %8012, %8009
  br i1 %5788, label %8016, label %8039

; <label>:8016                                    ; preds = %7971
  %8017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5114, float %7996, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8018 = extractvalue %dx.types.ResRet.f32 %8017, 0
  %8019 = extractvalue %dx.types.ResRet.f32 %8017, 1
  %8020 = extractvalue %dx.types.ResRet.f32 %8017, 2
  %8021 = fadd fast float %8018, -5.000000e-01
  %8022 = fadd fast float %8019, -5.000000e-01
  %8023 = fadd fast float %8020, -5.000000e-01
  %8024 = fmul fast float %5461, 4.000000e+00
  %8025 = fmul fast float %8024, %7893
  %8026 = fmul fast float %8025, %8021
  %8027 = fmul fast float %5462, 4.000000e+00
  %8028 = fmul fast float %8027, %7894
  %8029 = fmul fast float %8028, %8022
  %8030 = fmul fast float %5503, 4.000000e+00
  %8031 = fmul fast float %8030, %7895
  %8032 = fmul fast float %8031, %8023
  %8033 = fadd fast float %8026, %8013
  %8034 = fadd fast float %8029, %8014
  %8035 = fadd fast float %8032, %8015
  %8036 = call float @dx.op.unary.f32(i32 7, float %8033)  ; Saturate(value)
  %8037 = call float @dx.op.unary.f32(i32 7, float %8034)  ; Saturate(value)
  %8038 = call float @dx.op.unary.f32(i32 7, float %8035)  ; Saturate(value)
  br label %8039

; <label>:8039                                    ; preds = %8016, %7971
  %8040 = phi float [ %8036, %8016 ], [ %8013, %7971 ]
  %8041 = phi float [ %8037, %8016 ], [ %8014, %7971 ]
  %8042 = phi float [ %8038, %8016 ], [ %8015, %7971 ]
  %8043 = call float @dx.op.binary.f32(i32 35, float %8041, float %8042)  ; FMax(a,b)
  %8044 = call float @dx.op.binary.f32(i32 35, float %8040, float %8043)  ; FMax(a,b)
  %8045 = fsub fast float 1.000000e+00, %8044
  %8046 = fmul fast float %5520, %6374
  %8047 = fadd fast float %6368, %8046
  %8048 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  %8049 = fsub fast float %6539, %5511
  %8050 = fsub fast float %6540, %5512
  %8051 = fsub fast float %6541, %5513
  %8052 = call float @dx.op.dot3.f32(i32 55, float %8049, float %8050, float %8051, float %8049, float %8050, float %8051)  ; Dot3(ax,ay,az,bx,by,bz)
  %8053 = call float @dx.op.unary.f32(i32 25, float %8052)  ; Rsqrt(value)
  %8054 = fmul fast float %8053, %8049
  %8055 = fmul fast float %8053, %8050
  %8056 = fmul fast float %8053, %8051
  %8057 = call float @dx.op.dot3.f32(i32 55, float %7992, float %7993, float %7994, float %8054, float %8055, float %8056)  ; Dot3(ax,ay,az,bx,by,bz)
  %8058 = fmul fast float %8057, %8057
  %8059 = call float @dx.op.unary.f32(i32 6, float %7996)  ; FAbs(value)
  %8060 = call float @dx.op.binary.f32(i32 35, float %8048, float 0x3F847AE140000000)  ; FMax(a,b)
  %8061 = fmul fast float %8060, %8060
  %8062 = fmul fast float %8061, %8061
  %8063 = fsub fast float 1.000000e+00, %8062
  %8064 = fmul fast float %7857, %8063
  %8065 = fadd fast float %8064, %8062
  %8066 = bitcast float %8065 to i32
  %8067 = ashr i32 %8066, 1
  %8068 = add nsw i32 %8067, 532487669
  %8069 = bitcast i32 %8068 to float
  %8070 = fadd fast float %8069, %5505
  %8071 = fmul fast float %8062, %8058
  %8072 = fsub fast float 1.000000e+00, %8058
  %8073 = fadd fast float %8072, %8071
  %8074 = fmul fast float %8059, %8059
  %8075 = fmul fast float %8074, %8063
  %8076 = fadd fast float %8075, %8062
  %8077 = bitcast float %8076 to i32
  %8078 = ashr i32 %8077, 1
  %8079 = add nsw i32 %8078, 532487669
  %8080 = bitcast i32 %8079 to float
  %8081 = fadd fast float %8080, %8059
  %8082 = fmul fast float %8073, %8073
  %8083 = fmul fast float %8082, %8070
  %8084 = fmul fast float %8083, %8081
  %8085 = fdiv fast float 0x3FF0A00000000000, %8084
  %8086 = fmul fast float %8085, %8062
  %8087 = fmul fast float %7996, %7989
  %8088 = fmul fast float %7996, %7990
  %8089 = fmul fast float %7996, %7991
  %8090 = fmul fast float %8087, %8045
  %8091 = fmul fast float %8090, %8086
  %8092 = fmul fast float %8088, %8045
  %8093 = fmul fast float %8092, %8086
  %8094 = fmul fast float %8089, %8045
  %8095 = fmul fast float %8094, %8086
  %8096 = fmul fast float %7926, %7880
  %8097 = fmul fast float %7927, %7880
  %8098 = fmul fast float %7928, %7880
  %8099 = fsub fast float 1.000000e+00, %7847
  %8100 = bitcast float %8099 to i32
  %8101 = sitofp i32 %8100 to float
  %8102 = fmul fast float %8101, 5.000000e+00
  %8103 = fadd fast float %8102, 0xC1EFBF8940000000
  %8104 = fptosi float %8103 to i32
  %8105 = bitcast i32 %8104 to float
  %8106 = fmul fast float %8105, %5115
  %8107 = fmul fast float %7977, %8106
  %8108 = fmul fast float %8107, %6302
  %8109 = fmul fast float %8107, %6303
  %8110 = fmul fast float %8107, %6304
  %8111 = fadd fast float %8108, %8096
  %8112 = fadd fast float %8109, %8097
  %8113 = fadd fast float %8110, %8098
  %8114 = fmul fast float %8111, %7852
  %8115 = fmul fast float %8112, %7852
  %8116 = fmul fast float %8113, %7852
  %8117 = fmul fast float %7852, %7835
  %8118 = fmul fast float %8117, %7977
  %8119 = fmul fast float %7852, %7836
  %8120 = fmul fast float %8119, %7977
  %8121 = fmul fast float %7852, %7837
  %8122 = fmul fast float %8121, %7977
  %8123 = fadd fast float %8114, %8091
  %8124 = fadd fast float %8115, %8093
  %8125 = fadd fast float %8116, %8095
  %8126 = fmul fast float %8123, %7835
  %8127 = fmul fast float %8124, %7836
  %8128 = fmul fast float %8125, %7837
  %8129 = fadd fast float %8118, %6286
  %8130 = fmul fast float %8129, %5140
  %8131 = fadd fast float %8120, %6287
  %8132 = fmul fast float %8131, %5140
  %8133 = fadd fast float %8122, %6288
  %8134 = fmul fast float %8133, %5140
  %8135 = fadd fast float %8126, %6525
  %8136 = fmul fast float %8135, %5140
  %8137 = fadd fast float %8127, %6529
  %8138 = fmul fast float %8137, %5140
  %8139 = fadd fast float %8128, %6533
  %8140 = fmul fast float %8139, %5140
  br label %8141

; <label>:8141                                    ; preds = %8039, %7828, %6509
  %8142 = phi float [ %6526, %6509 ], [ %6526, %7828 ], [ %8136, %8039 ]
  %8143 = phi float [ %6530, %6509 ], [ %6530, %7828 ], [ %8138, %8039 ]
  %8144 = phi float [ %6534, %6509 ], [ %6534, %7828 ], [ %8140, %8039 ]
  %8145 = phi float [ %6398, %6509 ], [ %6398, %7828 ], [ %8130, %8039 ]
  %8146 = phi float [ %6399, %6509 ], [ %6399, %7828 ], [ %8132, %8039 ]
  %8147 = phi float [ %6400, %6509 ], [ %6400, %7828 ], [ %8134, %8039 ]
  %8148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8149 = extractvalue %dx.types.CBufRet.f32 %8148, 0
  %8150 = fmul fast float %8149, %6381
  %8151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8152 = extractvalue %dx.types.CBufRet.f32 %8151, 3
  %8153 = fsub fast float 1.000000e+00, %5118
  %8154 = call float @dx.op.unary.f32(i32 7, float %8153)  ; Saturate(value)
  %8155 = fadd fast float %8147, %5117
  %8156 = fmul fast float %8155, %5118
  %8157 = fmul fast float %8154, %8152
  %8158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8159 = extractvalue %dx.types.CBufRet.f32 %8158, 3
  %8160 = fmul fast float %8145, %5458
  %8161 = fmul fast float %8146, %5459
  %8162 = fmul fast float %8147, %5460
  %8163 = fcmp fast ogt float %87, %208
  %8164 = and i1 %8163, %5208
  %8165 = or i1 %5287, %8164
  %8166 = icmp eq i32 %5207, 2
  %8167 = fcmp fast ole float %87, %208
  %8168 = and i1 %8167, %8166
  %8169 = or i1 %8168, %8165
  br i1 %8164, label %8170, label %8424

; <label>:8170                                    ; preds = %8141
  %8171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8172 = extractvalue %dx.types.CBufRet.f32 %8171, 2
  %8173 = extractvalue %dx.types.CBufRet.f32 %8171, 3
  %8174 = fmul fast float %8172, %99
  %8175 = fmul fast float %8173, %100
  %8176 = call float @dx.op.unary.f32(i32 7, float %8174)  ; Saturate(value)
  %8177 = call float @dx.op.unary.f32(i32 7, float %8175)  ; Saturate(value)
  %8178 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8176, float %8177, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8179 = extractvalue %dx.types.ResRet.f32 %8178, 0
  %8180 = extractvalue %dx.types.ResRet.f32 %8178, 1
  %8181 = extractvalue %dx.types.ResRet.f32 %8178, 2
  %8182 = extractvalue %dx.types.ResRet.f32 %8178, 3
  %8183 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8176, float %8177, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8184 = extractvalue %dx.types.ResRet.f32 %8183, 0
  %8185 = extractvalue %dx.types.ResRet.f32 %8183, 1
  %8186 = extractvalue %dx.types.ResRet.f32 %8183, 2
  %8187 = extractvalue %dx.types.ResRet.f32 %8183, 3
  %8188 = call float @dx.op.binary.f32(i32 35, float %8180, float %8181)  ; FMax(a,b)
  %8189 = call float @dx.op.binary.f32(i32 35, float %8179, float %8188)  ; FMax(a,b)
  %8190 = call float @dx.op.binary.f32(i32 35, float %8189, float %8182)  ; FMax(a,b)
  %8191 = call float @dx.op.binary.f32(i32 36, float %8185, float %8186)  ; FMin(a,b)
  %8192 = call float @dx.op.binary.f32(i32 36, float %8184, float %8191)  ; FMin(a,b)
  %8193 = call float @dx.op.binary.f32(i32 36, float %8192, float %8187)  ; FMin(a,b)
  %8194 = fmul fast float %8190, 2.550000e+02
  %8195 = fadd fast float %8194, 0x3F70101020000000
  %8196 = fptoui float %8195 to i32
  %8197 = fmul fast float %8193, 2.550000e+02
  %8198 = fadd fast float %8197, 0x3F70101020000000
  %8199 = fptoui float %8198 to i32
  %8200 = icmp ult i32 %8196, %8199
  br i1 %8200, label %8201, label %8369

; <label>:8201                                    ; preds = %8170
  %8202 = fcmp fast ogt float %86, 9.843750e-01
  %8203 = fadd fast float %87, -4.000000e+00
  %8204 = select i1 %8202, float -4.000000e+00, float %8203
  %8205 = call float @dx.op.binary.f32(i32 35, float %8204, float 0.000000e+00)  ; FMax(a,b)
  %8206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8207 = extractvalue %dx.types.CBufRet.f32 %8206, 0
  %8208 = fadd fast float %8207, %8205
  %8209 = extractvalue %dx.types.CBufRet.f32 %8206, 2
  %8210 = fmul fast float %8208, %8209
  %8211 = call float @dx.op.unary.f32(i32 23, float %8210)  ; Log(value)
  %8212 = extractvalue %dx.types.CBufRet.f32 %8206, 3
  %8213 = fmul fast float %8212, %8211
  %8214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8215 = extractvalue %dx.types.CBufRet.f32 %8214, 2
  %8216 = fmul fast float %8213, %8215
  %8217 = call float @dx.op.unary.f32(i32 7, float %8216)  ; Saturate(value)
  %8218 = uitofp i32 %8196 to float
  %8219 = uitofp i32 %8199 to float
  %8220 = fadd fast float %8218, 5.000000e-01
  %8221 = fadd fast float %8219, 5.000000e-01
  %8222 = fmul fast float %8215, %8220
  %8223 = fmul fast float %8215, %8221
  %8224 = fadd fast float %8222, 0x3F0FFB4800000000
  %8225 = fadd fast float %8223, 0xBF0FFB4800000000
  %8226 = call float @dx.op.binary.f32(i32 35, float %8217, float %8224)  ; FMax(a,b)
  %8227 = call float @dx.op.binary.f32(i32 36, float %8226, float %8225)  ; FMin(a,b)
  %8228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8229 = extractvalue %dx.types.CBufRet.f32 %8228, 1
  %8230 = extractvalue %dx.types.CBufRet.f32 %8228, 2
  %8231 = extractvalue %dx.types.CBufRet.f32 %8228, 0
  %8232 = fmul fast float %8229, %8227
  %8233 = fadd fast float %8231, %8232
  %8234 = fadd fast float %8231, %8230
  %8235 = fsub fast float %8229, %8230
  %8236 = fadd fast float %8235, %8231
  %8237 = call float @dx.op.binary.f32(i32 35, float %8233, float %8234)  ; FMax(a,b)
  %8238 = call float @dx.op.binary.f32(i32 36, float %8237, float %8236)  ; FMin(a,b)
  %8239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %8176, float %8177, float %8238, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8240 = extractvalue %dx.types.ResRet.f32 %8239, 0
  %8241 = extractvalue %dx.types.ResRet.f32 %8239, 1
  %8242 = extractvalue %dx.types.ResRet.f32 %8239, 2
  %8243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8244 = extractvalue %dx.types.CBufRet.i32 %8243, 0
  %8245 = extractvalue %dx.types.CBufRet.i32 %8243, 1
  %8246 = uitofp i32 %8244 to float
  %8247 = uitofp i32 %8245 to float
  %8248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8249 = extractvalue %dx.types.CBufRet.f32 %8248, 0
  %8250 = extractvalue %dx.types.CBufRet.f32 %8248, 1
  %8251 = fmul fast float %8246, %8176
  %8252 = fmul fast float %8247, %8177
  %8253 = fadd fast float %8251, -5.000000e-01
  %8254 = fadd fast float %8252, -5.000000e-01
  %8255 = call float @dx.op.unary.f32(i32 22, float %8253)  ; Frc(value)
  %8256 = call float @dx.op.unary.f32(i32 22, float %8254)  ; Frc(value)
  %8257 = fmul fast float %8255, %8255
  %8258 = fmul fast float %8257, %8255
  %8259 = fsub fast float 3.000000e+00, %8255
  %8260 = fmul fast float %8257, %8259
  %8261 = fmul fast float %8255, 3.000000e+00
  %8262 = fmul fast float %8258, 3.000000e+00
  %8263 = fmul fast float %8257, 6.000000e+00
  %8264 = fsub fast float %8262, %8263
  %8265 = fadd fast float %8264, 4.000000e+00
  %8266 = fmul fast float %8265, 0x3FC5555560000000
  %8267 = fmul fast float %8258, -3.000000e+00
  %8268 = fadd fast float %8257, %8255
  %8269 = fmul fast float %8268, 3.000000e+00
  %8270 = fadd fast float %8267, 1.000000e+00
  %8271 = fadd fast float %8270, %8269
  %8272 = fmul fast float %8258, 0x3FC5555560000000
  %8273 = fmul fast float %8256, %8256
  %8274 = fmul fast float %8273, %8256
  %8275 = fsub fast float 3.000000e+00, %8256
  %8276 = fmul fast float %8273, %8275
  %8277 = fmul fast float %8256, 3.000000e+00
  %8278 = fmul fast float %8274, 3.000000e+00
  %8279 = fmul fast float %8273, 6.000000e+00
  %8280 = fsub fast float %8278, %8279
  %8281 = fadd fast float %8280, 4.000000e+00
  %8282 = fmul fast float %8281, 0x3FC5555560000000
  %8283 = fmul fast float %8274, -3.000000e+00
  %8284 = fadd fast float %8273, %8256
  %8285 = fmul fast float %8284, 3.000000e+00
  %8286 = fadd fast float %8283, 1.000000e+00
  %8287 = fadd fast float %8286, %8285
  %8288 = fmul fast float %8274, 0x3FC5555560000000
  %8289 = fadd fast float %8255, 1.000000e+00
  %8290 = fsub fast float 1.000000e+00, %8261
  %8291 = fadd fast float %8290, %8260
  %8292 = fadd fast float %8291, %8265
  %8293 = fmul fast float %8292, 0x3FC5555560000000
  %8294 = fdiv fast float %8266, %8293
  %8295 = fsub fast float %8289, %8294
  %8296 = fsub fast float 1.000000e+00, %8255
  %8297 = fadd fast float %8271, %8258
  %8298 = fmul fast float %8297, 0x3FC5555560000000
  %8299 = fdiv fast float %8272, %8298
  %8300 = fadd fast float %8296, %8299
  %8301 = fadd fast float %8256, 1.000000e+00
  %8302 = fsub fast float 1.000000e+00, %8277
  %8303 = fadd fast float %8302, %8276
  %8304 = fadd fast float %8303, %8281
  %8305 = fmul fast float %8304, 0x3FC5555560000000
  %8306 = fdiv fast float %8282, %8305
  %8307 = fsub fast float %8301, %8306
  %8308 = fsub fast float 1.000000e+00, %8256
  %8309 = fadd fast float %8287, %8274
  %8310 = fmul fast float %8309, 0x3FC5555560000000
  %8311 = fdiv fast float %8288, %8310
  %8312 = fadd fast float %8311, %8308
  %8313 = fmul fast float %8295, %8249
  %8314 = fsub fast float %8176, %8313
  %8315 = fmul fast float %8300, %8249
  %8316 = fadd fast float %8315, %8176
  %8317 = fmul fast float %8312, %8250
  %8318 = fadd fast float %8317, %8177
  %8319 = fmul fast float %8307, %8250
  %8320 = fsub fast float %8177, %8319
  %8321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8314, float %8320, float %8238, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8322 = extractvalue %dx.types.ResRet.f32 %8321, 0
  %8323 = extractvalue %dx.types.ResRet.f32 %8321, 1
  %8324 = extractvalue %dx.types.ResRet.f32 %8321, 2
  %8325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8316, float %8320, float %8238, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8326 = extractvalue %dx.types.ResRet.f32 %8325, 0
  %8327 = extractvalue %dx.types.ResRet.f32 %8325, 1
  %8328 = extractvalue %dx.types.ResRet.f32 %8325, 2
  %8329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8314, float %8318, float %8238, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8330 = extractvalue %dx.types.ResRet.f32 %8329, 0
  %8331 = extractvalue %dx.types.ResRet.f32 %8329, 1
  %8332 = extractvalue %dx.types.ResRet.f32 %8329, 2
  %8333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8316, float %8318, float %8238, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8334 = extractvalue %dx.types.ResRet.f32 %8333, 0
  %8335 = extractvalue %dx.types.ResRet.f32 %8333, 1
  %8336 = extractvalue %dx.types.ResRet.f32 %8333, 2
  %8337 = fsub fast float %8330, %8322
  %8338 = fsub fast float %8331, %8323
  %8339 = fsub fast float %8332, %8324
  %8340 = fmul fast float %8337, %8310
  %8341 = fmul fast float %8338, %8310
  %8342 = fmul fast float %8339, %8310
  %8343 = fadd fast float %8340, %8322
  %8344 = fadd fast float %8341, %8323
  %8345 = fadd fast float %8342, %8324
  %8346 = fsub fast float %8334, %8326
  %8347 = fsub fast float %8335, %8327
  %8348 = fsub fast float %8336, %8328
  %8349 = fmul fast float %8346, %8310
  %8350 = fmul fast float %8347, %8310
  %8351 = fmul fast float %8348, %8310
  %8352 = fsub fast float %8326, %8343
  %8353 = fadd fast float %8352, %8349
  %8354 = fsub fast float %8327, %8344
  %8355 = fadd fast float %8354, %8350
  %8356 = fsub fast float %8328, %8345
  %8357 = fadd fast float %8356, %8351
  %8358 = fmul fast float %8353, %8298
  %8359 = fmul fast float %8355, %8298
  %8360 = fmul fast float %8357, %8298
  %8361 = fadd fast float %8358, %8343
  %8362 = fadd fast float %8359, %8344
  %8363 = fadd fast float %8360, %8345
  %8364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8365 = extractvalue %dx.types.CBufRet.f32 %8364, 1
  %8366 = fmul fast float %8361, %8365
  %8367 = fmul fast float %8362, %8365
  %8368 = fmul fast float %8363, %8365
  br label %8369

; <label>:8369                                    ; preds = %8201, %8170
  %8370 = phi float [ %8240, %8201 ], [ 1.000000e+00, %8170 ]
  %8371 = phi float [ %8241, %8201 ], [ 1.000000e+00, %8170 ]
  %8372 = phi float [ %8242, %8201 ], [ 1.000000e+00, %8170 ]
  %8373 = phi float [ %8366, %8201 ], [ 0.000000e+00, %8170 ]
  %8374 = phi float [ %8367, %8201 ], [ 0.000000e+00, %8170 ]
  %8375 = phi float [ %8368, %8201 ], [ 0.000000e+00, %8170 ]
  %8376 = call float @dx.op.dot3.f32(i32 55, float %8370, float %8371, float %8372, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8377 = call float @dx.op.dot3.f32(i32 55, float %8373, float %8374, float %8375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8378 = select i1 %247, float %8376, float %8370
  %8379 = select i1 %247, float %8376, float %8371
  %8380 = select i1 %247, float 1.000000e+00, float %8372
  %8381 = select i1 %247, float %8377, float %8373
  %8382 = select i1 %247, float 0.000000e+00, float %8374
  %8383 = select i1 %247, float 0.000000e+00, float %8375
  %8384 = fmul fast float %8378, %8160
  %8385 = fmul fast float %8379, %8161
  %8386 = fmul fast float %8380, %8162
  %8387 = fadd fast float %8384, %8381
  %8388 = fadd fast float %8385, %8382
  %8389 = fadd fast float %8383, %8386
  %8390 = fmul fast float %8378, %8142
  %8391 = fmul fast float %8379, %8143
  %8392 = fmul fast float %8380, %8144
  %8393 = fmul fast float %124, %8172
  %8394 = fmul fast float %126, %8173
  %8395 = fsub fast float 1.000000e+00, %8393
  %8396 = fsub fast float 1.000000e+00, %8394
  %8397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8398 = extractvalue %dx.types.CBufRet.f32 %8397, 0
  %8399 = extractvalue %dx.types.CBufRet.f32 %8397, 1
  %8400 = extractvalue %dx.types.CBufRet.f32 %8397, 2
  %8401 = fmul fast float %8395, %8398
  %8402 = fmul fast float %8395, %8399
  %8403 = fmul fast float %8395, %8400
  %8404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8405 = extractvalue %dx.types.CBufRet.f32 %8404, 0
  %8406 = extractvalue %dx.types.CBufRet.f32 %8404, 1
  %8407 = extractvalue %dx.types.CBufRet.f32 %8404, 2
  %8408 = fmul fast float %8396, %8405
  %8409 = fmul fast float %8396, %8406
  %8410 = fmul fast float %8396, %8407
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 0
  %8413 = extractvalue %dx.types.CBufRet.f32 %8411, 1
  %8414 = extractvalue %dx.types.CBufRet.f32 %8411, 2
  %8415 = fadd fast float %8408, %8412
  %8416 = fadd fast float %8415, %8401
  %8417 = fadd fast float %8409, %8413
  %8418 = fadd fast float %8417, %8402
  %8419 = fadd fast float %8410, %8414
  %8420 = fadd fast float %8419, %8403
  %8421 = fmul fast float %8416, %208
  %8422 = fmul fast float %8418, %208
  %8423 = fmul fast float %8420, %208
  br label %8424

; <label>:8424                                    ; preds = %8369, %8141
  %8425 = phi float [ %8421, %8369 ], [ %154, %8141 ]
  %8426 = phi float [ %8422, %8369 ], [ %155, %8141 ]
  %8427 = phi float [ %8423, %8369 ], [ %156, %8141 ]
  %8428 = phi float [ %208, %8369 ], [ %87, %8141 ]
  %8429 = phi float [ %8387, %8369 ], [ %8160, %8141 ]
  %8430 = phi float [ %8388, %8369 ], [ %8161, %8141 ]
  %8431 = phi float [ %8389, %8369 ], [ %8162, %8141 ]
  %8432 = phi float [ %8390, %8369 ], [ %8142, %8141 ]
  %8433 = phi float [ %8391, %8369 ], [ %8143, %8141 ]
  %8434 = phi float [ %8392, %8369 ], [ %8144, %8141 ]
  %8435 = phi float [ %8370, %8369 ], [ 1.000000e+00, %8141 ]
  br i1 %8169, label %9584, label %8436

; <label>:8436                                    ; preds = %8424
  %8437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8438 = extractvalue %dx.types.CBufRet.f32 %8437, 0
  %8439 = extractvalue %dx.types.CBufRet.f32 %8437, 1
  %8440 = extractvalue %dx.types.CBufRet.f32 %8437, 2
  %8441 = extractvalue %dx.types.CBufRet.f32 %8437, 3
  %8442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8443 = extractvalue %dx.types.CBufRet.f32 %8442, 0
  %8444 = extractvalue %dx.types.CBufRet.f32 %8442, 1
  %8445 = extractvalue %dx.types.CBufRet.f32 %8442, 2
  %8446 = extractvalue %dx.types.CBufRet.f32 %8442, 3
  %8447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8448 = extractvalue %dx.types.CBufRet.f32 %8447, 0
  %8449 = extractvalue %dx.types.CBufRet.f32 %8447, 1
  %8450 = extractvalue %dx.types.CBufRet.f32 %8447, 2
  %8451 = extractvalue %dx.types.CBufRet.f32 %8447, 3
  %8452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8453 = extractvalue %dx.types.CBufRet.f32 %8452, 0
  %8454 = extractvalue %dx.types.CBufRet.f32 %8452, 1
  %8455 = extractvalue %dx.types.CBufRet.f32 %8452, 2
  %8456 = extractvalue %dx.types.CBufRet.f32 %8452, 3
  %8457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8458 = extractvalue %dx.types.CBufRet.f32 %8457, 3
  %8459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8460 = extractvalue %dx.types.CBufRet.f32 %8459, 3
  %8461 = extractvalue %dx.types.CBufRet.f32 %8459, 0
  %8462 = extractvalue %dx.types.CBufRet.f32 %8459, 1
  %8463 = extractvalue %dx.types.CBufRet.f32 %8459, 2
  %8464 = fcmp fast olt float %8463, -5.000000e-01
  %8465 = call float @dx.op.dot3.f32(i32 55, float %8425, float %8426, float %8427, float %8425, float %8426, float %8427)  ; Dot3(ax,ay,az,bx,by,bz)
  %8466 = call float @dx.op.unary.f32(i32 25, float %8465)  ; Rsqrt(value)
  %8467 = fmul fast float %8466, %8465
  %8468 = fmul fast float %8466, %8425
  %8469 = fmul fast float %8466, %8426
  %8470 = fmul fast float %8466, %8427
  %8471 = fadd fast float %8467, %8441
  %8472 = call float @dx.op.dot3.f32(i32 55, float %8468, float %8469, float %8470, float %8438, float %8439, float %8440)  ; Dot3(ax,ay,az,bx,by,bz)
  %8473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8474 = extractvalue %dx.types.CBufRet.i32 %8473, 1
  %8475 = and i32 %8474, 1
  %8476 = icmp ne i32 %8475, 0
  %8477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8478 = extractvalue %dx.types.CBufRet.f32 %8477, 2
  %8479 = fcmp fast ogt float %8478, 0.000000e+00
  %8480 = and i1 %8476, %8479
  br i1 %8480, label %8481, label %8887, !dx.controlflow.hints !122

; <label>:8481                                    ; preds = %8436
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 3
  %8484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8485 = extractvalue %dx.types.CBufRet.f32 %8484, 2
  %8486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8487 = extractvalue %dx.types.CBufRet.f32 %8486, 2
  %8488 = fsub fast float %8485, %8487
  %8489 = and i32 %8474, 2
  %8490 = extractvalue %dx.types.CBufRet.i32 %8473, 0
  %8491 = call i32 @dx.op.binary.i32(i32 40, i32 %8490, i32 3)  ; UMin(a,b)
  %8492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8493 = extractvalue %dx.types.CBufRet.f32 %8492, 0
  %8494 = extractvalue %dx.types.CBufRet.f32 %8492, 1
  %8495 = extractvalue %dx.types.CBufRet.f32 %8486, 0
  %8496 = extractvalue %dx.types.CBufRet.f32 %8486, 1
  %8497 = fsub fast float %8493, %8495
  %8498 = fsub fast float %8494, %8496
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 0
  %8501 = fcmp fast ogt float %8500, 0.000000e+00
  %8502 = fsub fast float -0.000000e+00, %8497
  %8503 = fsub fast float -0.000000e+00, %8498
  %8504 = call float @dx.op.dot2.f32(i32 54, float %8468, float %8469, float %8468, float %8469)  ; Dot2(ax,ay,bx,by)
  %8505 = call float @dx.op.dot2.f32(i32 54, float %8468, float %8469, float %8502, float %8503)  ; Dot2(ax,ay,bx,by)
  %8506 = fmul fast float %8505, 2.000000e+00
  %8507 = call float @dx.op.dot2.f32(i32 54, float %8502, float %8503, float %8502, float %8503)  ; Dot2(ax,ay,bx,by)
  %8508 = fmul fast float %8500, %8500
  %8509 = fsub fast float %8507, %8508
  %8510 = fmul fast float %8506, %8506
  %8511 = fmul fast float %8504, 4.000000e+00
  %8512 = fmul fast float %8511, %8509
  %8513 = fsub fast float %8510, %8512
  %8514 = fcmp fast ogt float %8513, 0.000000e+00
  br i1 %8514, label %8515, label %8530

; <label>:8515                                    ; preds = %8481
  %8516 = fcmp fast ogt float %8506, 0.000000e+00
  %8517 = call float @dx.op.unary.f32(i32 24, float %8513)  ; Sqrt(value)
  %8518 = fsub fast float -0.000000e+00, %8517
  %8519 = select i1 %8516, float %8517, float %8518
  %8520 = fadd fast float %8519, %8506
  %8521 = fmul float %8520, -5.000000e-01
  %8522 = fdiv fast float %8521, %8504
  %8523 = call float @dx.op.binary.f32(i32 35, float %8522, float 0.000000e+00)  ; FMax(a,b)
  %8524 = call float @dx.op.binary.f32(i32 36, float %8467, float %8523)  ; FMin(a,b)
  %8525 = fdiv fast float %8509, %8521
  %8526 = call float @dx.op.binary.f32(i32 35, float %8525, float 0.000000e+00)  ; FMax(a,b)
  %8527 = call float @dx.op.binary.f32(i32 36, float %8467, float %8526)  ; FMin(a,b)
  %8528 = call float @dx.op.binary.f32(i32 36, float %8524, float %8527)  ; FMin(a,b)
  %8529 = call float @dx.op.binary.f32(i32 35, float %8524, float %8527)  ; FMax(a,b)
  br label %8530

; <label>:8530                                    ; preds = %8515, %8481
  %8531 = phi float [ %8529, %8515 ], [ -1.000000e+00, %8481 ]
  %8532 = phi float [ %8528, %8515 ], [ -1.000000e+00, %8481 ]
  %8533 = phi i1 [ true, %8515 ], [ false, %8481 ]
  %8534 = and i1 %8501, %8533
  br i1 %8534, label %8535, label %8537

; <label>:8535                                    ; preds = %8530
  %8536 = fcmp fast oeq float %8532, %8531
  br i1 %8536, label %8840, label %8538

; <label>:8537                                    ; preds = %8530
  br i1 %8501, label %8840, label %8538

; <label>:8538                                    ; preds = %8537, %8535
  %8539 = phi float [ %8467, %8537 ], [ %8531, %8535 ]
  %8540 = phi float [ 0.000000e+00, %8537 ], [ %8532, %8535 ]
  %8541 = icmp ne i32 %8489, 0
  %8542 = fmul fast float %8539, %8470
  %8543 = fadd fast float %8542, %8483
  %8544 = fmul fast float %8543, %8539
  %8545 = select i1 %8541, float 0.000000e+00, float %8544
  %8546 = fcmp fast oeq float %8470, 0.000000e+00
  %8547 = fdiv fast float %8488, %8470
  %8548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8547)  ; FMax(a,b)
  %8549 = select i1 %8546, float %8539, float %8548
  %8550 = call float @dx.op.binary.f32(i32 36, float %8539, float %8549)  ; FMin(a,b)
  %8551 = fcmp fast ogt float %8470, 0.000000e+00
  %8552 = fcmp fast olt float %8488, 0.000000e+00
  br i1 %8551, label %8553, label %8610

; <label>:8553                                    ; preds = %8538
  %8554 = icmp eq i32 %8489, 0
  br i1 %8552, label %8555, label %8599

; <label>:8555                                    ; preds = %8553
  %8556 = select i1 %8554, float %8539, float 0.000000e+00
  %8557 = fsub fast float -0.000000e+00, %8556
  %8558 = call float @dx.op.unary.f32(i32 6, float %8557)  ; FAbs(value)
  %8559 = fmul fast float %8556, %8470
  %8560 = fadd fast float %8559, %8483
  %8561 = fmul fast float %8558, %8560
  %8562 = fsub fast float %8545, %8561
  %8563 = fsub fast float %8539, %8558
  %8564 = select i1 %8554, float %8563, float 0.000000e+00
  %8565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8566 = extractvalue %dx.types.CBufRet.f32 %8565, 0
  %8567 = extractvalue %dx.types.CBufRet.f32 %8565, 1
  %8568 = extractvalue %dx.types.CBufRet.f32 %8565, 2
  %8569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8570 = extractvalue %dx.types.CBufRet.f32 %8569, 0
  %8571 = extractvalue %dx.types.CBufRet.f32 %8569, 1
  %8572 = extractvalue %dx.types.CBufRet.f32 %8569, 2
  %8573 = extractvalue %dx.types.CBufRet.f32 %8569, 3
  %8574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8575 = extractvalue %dx.types.CBufRet.f32 %8574, 3
  %8576 = call float @dx.op.binary.f32(i32 36, float %8562, float %8575)  ; FMin(a,b)
  %8577 = fmul fast float %8573, %8564
  %8578 = call float @dx.op.unary.f32(i32 7, float %8577)  ; Saturate(value)
  %8579 = fsub fast float %8570, %8566
  %8580 = fsub fast float %8571, %8567
  %8581 = fsub fast float %8572, %8568
  %8582 = fmul fast float %8578, %8579
  %8583 = fmul fast float %8578, %8580
  %8584 = fmul fast float %8578, %8581
  %8585 = fadd fast float %8582, %8566
  %8586 = fadd fast float %8583, %8567
  %8587 = fadd fast float %8584, %8568
  %8588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8589 = extractvalue %dx.types.CBufRet.f32 %8588, 0
  %8590 = extractvalue %dx.types.CBufRet.f32 %8588, 1
  %8591 = fadd fast float %8590, %8589
  %8592 = call float @dx.op.unary.f32(i32 7, float %8591)  ; Saturate(value)
  %8593 = extractvalue %dx.types.CBufRet.f32 %8588, 2
  %8594 = extractvalue %dx.types.CBufRet.f32 %8588, 3
  %8595 = fadd fast float %8594, %8593
  %8596 = call float @dx.op.unary.f32(i32 7, float %8595)  ; Saturate(value)
  %8597 = fmul fast float %8592, %8576
  %8598 = fmul fast float %8597, %8596
  br label %8840

; <label>:8599                                    ; preds = %8553
  br i1 %8554, label %8600, label %8621

; <label>:8600                                    ; preds = %8599
  %8601 = call float @dx.op.binary.f32(i32 36, float %8550, float %8540)  ; FMin(a,b)
  %8602 = fsub fast float %8550, %8601
  %8603 = fsub fast float %8602, %8539
  %8604 = call float @dx.op.unary.f32(i32 6, float %8603)  ; FAbs(value)
  %8605 = fadd fast float %8602, %8539
  %8606 = fmul fast float %8605, %8470
  %8607 = fadd fast float %8606, %8483
  %8608 = fmul fast float %8607, %8604
  %8609 = fsub fast float %8545, %8608
  br label %8621

; <label>:8610                                    ; preds = %8538
  br i1 %8552, label %8611, label %8621

; <label>:8611                                    ; preds = %8610
  %8612 = call float @dx.op.binary.f32(i32 35, float %8540, float %8550)  ; FMax(a,b)
  %8613 = icmp eq i32 %8489, 0
  %8614 = select i1 %8613, float %8550, float 0.000000e+00
  %8615 = fsub fast float -0.000000e+00, %8614
  %8616 = call float @dx.op.unary.f32(i32 6, float %8615)  ; FAbs(value)
  %8617 = fmul fast float %8614, %8470
  %8618 = fadd fast float %8617, %8483
  %8619 = fmul fast float %8616, %8618
  %8620 = fsub fast float %8545, %8619
  br label %8621

; <label>:8621                                    ; preds = %8611, %8610, %8600, %8599
  %8622 = phi float [ %8540, %8599 ], [ %8540, %8600 ], [ %8612, %8611 ], [ %8540, %8610 ]
  %8623 = phi float [ 0.000000e+00, %8599 ], [ %8604, %8600 ], [ %8616, %8611 ], [ 0.000000e+00, %8610 ]
  %8624 = phi float [ %8545, %8599 ], [ %8609, %8600 ], [ %8620, %8611 ], [ %8545, %8610 ]
  %8625 = phi float [ %8550, %8599 ], [ %8550, %8600 ], [ %8539, %8611 ], [ %8539, %8610 ]
  %8626 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %8626, align 4, !tbaa !112, !noalias !123
  %8627 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %8627, align 4, !tbaa !112, !noalias !123
  %8628 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %8628, align 4, !tbaa !112, !noalias !123
  %8629 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %8629, align 4, !tbaa !112, !noalias !123
  %8630 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %8630, align 4, !tbaa !112, !noalias !123
  %8631 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %8631, align 4, !tbaa !112, !noalias !123
  %8632 = icmp sgt i32 %8491, 0
  br i1 %8632, label %8633, label %8694

; <label>:8633                                    ; preds = %8621
  br label %8634

; <label>:8634                                    ; preds = %8683, %8633
  %8635 = phi i32 [ %8684, %8683 ], [ 0, %8633 ]
  %8636 = phi i32 [ %8685, %8683 ], [ 0, %8633 ]
  %8637 = add nuw i32 %8636, 171
  %8638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %8637)  ; CBufferLoadLegacy(handle,regIndex)
  %8639 = extractvalue %dx.types.CBufRet.f32 %8638, 0
  %8640 = extractvalue %dx.types.CBufRet.f32 %8638, 1
  %8641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8642 = extractvalue %dx.types.CBufRet.f32 %8641, 0
  %8643 = extractvalue %dx.types.CBufRet.f32 %8641, 1
  %8644 = fsub fast float %8639, %8642
  %8645 = fsub fast float %8640, %8643
  %8646 = extractvalue %dx.types.CBufRet.f32 %8638, 2
  %8647 = fsub fast float -0.000000e+00, %8644
  %8648 = fsub fast float -0.000000e+00, %8645
  %8649 = call float @dx.op.dot2.f32(i32 54, float %8468, float %8469, float %8647, float %8648)  ; Dot2(ax,ay,bx,by)
  %8650 = fmul fast float %8649, 2.000000e+00
  %8651 = call float @dx.op.dot2.f32(i32 54, float %8647, float %8648, float %8647, float %8648)  ; Dot2(ax,ay,bx,by)
  %8652 = fmul fast float %8646, %8646
  %8653 = fsub fast float %8651, %8652
  %8654 = fmul fast float %8650, %8650
  %8655 = fmul fast float %8511, %8653
  %8656 = fsub fast float %8654, %8655
  %8657 = fcmp fast ogt float %8656, 0.000000e+00
  br i1 %8657, label %8658, label %8673

; <label>:8658                                    ; preds = %8634
  %8659 = fcmp fast ogt float %8650, 0.000000e+00
  %8660 = call float @dx.op.unary.f32(i32 24, float %8656)  ; Sqrt(value)
  %8661 = fsub fast float -0.000000e+00, %8660
  %8662 = select i1 %8659, float %8660, float %8661
  %8663 = fadd fast float %8662, %8650
  %8664 = fmul float %8663, -5.000000e-01
  %8665 = fdiv fast float %8664, %8504
  %8666 = call float @dx.op.binary.f32(i32 35, float %8665, float 0.000000e+00)  ; FMax(a,b)
  %8667 = call float @dx.op.binary.f32(i32 36, float %8539, float %8666)  ; FMin(a,b)
  %8668 = fdiv fast float %8653, %8664
  %8669 = call float @dx.op.binary.f32(i32 35, float %8668, float 0.000000e+00)  ; FMax(a,b)
  %8670 = call float @dx.op.binary.f32(i32 36, float %8539, float %8669)  ; FMin(a,b)
  %8671 = call float @dx.op.binary.f32(i32 36, float %8667, float %8670)  ; FMin(a,b)
  %8672 = call float @dx.op.binary.f32(i32 35, float %8667, float %8670)  ; FMax(a,b)
  br label %8673

; <label>:8673                                    ; preds = %8658, %8634
  %8674 = phi float [ %8672, %8658 ], [ -1.000000e+00, %8634 ]
  %8675 = phi float [ %8671, %8658 ], [ -1.000000e+00, %8634 ]
  %8676 = phi i1 [ true, %8658 ], [ false, %8634 ]
  br i1 %8676, label %8677, label %8683

; <label>:8677                                    ; preds = %8673
  %8678 = call float @dx.op.binary.f32(i32 35, float %8622, float %8675)  ; FMax(a,b)
  %8679 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8636
  store float %8678, float* %8679, align 4, !tbaa !112, !noalias !123
  %8680 = call float @dx.op.binary.f32(i32 35, float %8622, float %8674)  ; FMax(a,b)
  %8681 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8636
  store float %8680, float* %8681, align 4, !tbaa !112, !noalias !123
  %8682 = add nsw i32 %8635, 1
  br label %8683

; <label>:8683                                    ; preds = %8677, %8673
  %8684 = phi i32 [ %8682, %8677 ], [ %8635, %8673 ]
  %8685 = add nuw nsw i32 %8636, 1
  %8686 = icmp eq i32 %8685, %8491
  br i1 %8686, label %8687, label %8634

; <label>:8687                                    ; preds = %8683
  %8688 = load float, float* %8628, align 4, !tbaa !112, !alias.scope !139, !noalias !142
  %8689 = load float, float* %8627, align 4, !tbaa !112, !alias.scope !145, !noalias !146
  %8690 = load float, float* %8626, align 4, !tbaa !112, !alias.scope !147, !noalias !148
  %8691 = load float, float* %8631, align 4, !tbaa !112, !alias.scope !149, !noalias !152
  %8692 = load float, float* %8630, align 4, !tbaa !112, !alias.scope !155, !noalias !156
  %8693 = load float, float* %8629, align 4, !tbaa !112, !alias.scope !157, !noalias !158
  br label %8694

; <label>:8694                                    ; preds = %8687, %8621
  %8695 = phi float [ -1.000000e+00, %8621 ], [ %8693, %8687 ]
  %8696 = phi float [ -1.000000e+00, %8621 ], [ %8692, %8687 ]
  %8697 = phi float [ -1.000000e+00, %8621 ], [ %8691, %8687 ]
  %8698 = phi float [ -1.000000e+00, %8621 ], [ %8690, %8687 ]
  %8699 = phi float [ -1.000000e+00, %8621 ], [ %8689, %8687 ]
  %8700 = phi float [ -1.000000e+00, %8621 ], [ %8688, %8687 ]
  %8701 = phi i32 [ 0, %8621 ], [ %8684, %8687 ]
  %8702 = call float @dx.op.binary.f32(i32 36, float %8699, float %8700)  ; FMin(a,b)
  %8703 = call float @dx.op.binary.f32(i32 36, float %8698, float %8702)  ; FMin(a,b)
  %8704 = call float @dx.op.binary.f32(i32 35, float %8698, float %8699)  ; FMax(a,b)
  %8705 = call float @dx.op.binary.f32(i32 36, float %8704, float %8700)  ; FMin(a,b)
  %8706 = call float @dx.op.binary.f32(i32 36, float %8698, float %8699)  ; FMin(a,b)
  %8707 = call float @dx.op.binary.f32(i32 35, float %8706, float %8705)  ; FMax(a,b)
  %8708 = call float @dx.op.binary.f32(i32 35, float %8699, float %8700)  ; FMax(a,b)
  %8709 = call float @dx.op.binary.f32(i32 35, float %8698, float %8708)  ; FMax(a,b)
  store float %8703, float* %8626, align 4, !tbaa !112, !alias.scope !147, !noalias !148
  store float %8707, float* %8627, align 4, !tbaa !112, !alias.scope !145, !noalias !146
  store float %8709, float* %8628, align 4, !tbaa !112, !alias.scope !139, !noalias !142
  %8710 = call float @dx.op.binary.f32(i32 36, float %8696, float %8697)  ; FMin(a,b)
  %8711 = call float @dx.op.binary.f32(i32 36, float %8695, float %8710)  ; FMin(a,b)
  %8712 = call float @dx.op.binary.f32(i32 35, float %8695, float %8696)  ; FMax(a,b)
  %8713 = call float @dx.op.binary.f32(i32 36, float %8712, float %8697)  ; FMin(a,b)
  %8714 = call float @dx.op.binary.f32(i32 36, float %8695, float %8696)  ; FMin(a,b)
  %8715 = call float @dx.op.binary.f32(i32 35, float %8714, float %8713)  ; FMax(a,b)
  %8716 = call float @dx.op.binary.f32(i32 35, float %8696, float %8697)  ; FMax(a,b)
  %8717 = call float @dx.op.binary.f32(i32 35, float %8695, float %8716)  ; FMax(a,b)
  store float %8711, float* %8629, align 4, !tbaa !112, !alias.scope !157, !noalias !158
  store float %8715, float* %8630, align 4, !tbaa !112, !alias.scope !155, !noalias !156
  store float %8717, float* %8631, align 4, !tbaa !112, !alias.scope !149, !noalias !152
  %8718 = sub nsw i32 3, %8701
  %8719 = icmp sgt i32 %8718, 2
  br i1 %8719, label %8720, label %8758

; <label>:8720                                    ; preds = %8694
  %8721 = icmp eq i32 %8489, 0
  %8722 = fsub fast float %8539, %8623
  %8723 = select i1 %8721, float %8722, float %8623
  %8724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8725 = extractvalue %dx.types.CBufRet.f32 %8724, 0
  %8726 = extractvalue %dx.types.CBufRet.f32 %8724, 1
  %8727 = extractvalue %dx.types.CBufRet.f32 %8724, 2
  %8728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8729 = extractvalue %dx.types.CBufRet.f32 %8728, 0
  %8730 = extractvalue %dx.types.CBufRet.f32 %8728, 1
  %8731 = extractvalue %dx.types.CBufRet.f32 %8728, 2
  %8732 = extractvalue %dx.types.CBufRet.f32 %8728, 3
  %8733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8734 = extractvalue %dx.types.CBufRet.f32 %8733, 3
  %8735 = call float @dx.op.binary.f32(i32 36, float %8624, float %8734)  ; FMin(a,b)
  %8736 = fmul fast float %8732, %8723
  %8737 = call float @dx.op.unary.f32(i32 7, float %8736)  ; Saturate(value)
  %8738 = fsub fast float %8729, %8725
  %8739 = fsub fast float %8730, %8726
  %8740 = fsub fast float %8731, %8727
  %8741 = fmul fast float %8737, %8738
  %8742 = fmul fast float %8737, %8739
  %8743 = fmul fast float %8737, %8740
  %8744 = fadd fast float %8741, %8725
  %8745 = fadd fast float %8742, %8726
  %8746 = fadd fast float %8743, %8727
  %8747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8748 = extractvalue %dx.types.CBufRet.f32 %8747, 0
  %8749 = extractvalue %dx.types.CBufRet.f32 %8747, 1
  %8750 = fadd fast float %8749, %8748
  %8751 = call float @dx.op.unary.f32(i32 7, float %8750)  ; Saturate(value)
  %8752 = extractvalue %dx.types.CBufRet.f32 %8747, 2
  %8753 = extractvalue %dx.types.CBufRet.f32 %8747, 3
  %8754 = fadd fast float %8753, %8752
  %8755 = call float @dx.op.unary.f32(i32 7, float %8754)  ; Saturate(value)
  %8756 = fmul fast float %8751, %8735
  %8757 = fmul fast float %8756, %8755
  br label %8840

; <label>:8758                                    ; preds = %8694
  %8759 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8718
  %8760 = load float, float* %8759, align 4, !tbaa !112, !noalias !123
  %8761 = fcmp fast olt float %8760, %8625
  %8762 = icmp sgt i32 %8701, 0
  %8763 = and i1 %8762, %8761
  br i1 %8763, label %8764, label %8801

; <label>:8764                                    ; preds = %8758
  br label %8765

; <label>:8765                                    ; preds = %8794, %8764
  %8766 = phi float [ %8795, %8794 ], [ %8623, %8764 ]
  %8767 = phi float [ %8796, %8794 ], [ %8624, %8764 ]
  %8768 = phi float [ %8776, %8794 ], [ %8760, %8764 ]
  %8769 = phi i32 [ %8773, %8794 ], [ %8718, %8764 ]
  %8770 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8769
  %8771 = load float, float* %8770, align 4, !tbaa !112, !noalias !123
  %8772 = icmp slt i32 %8769, 2
  %8773 = add nsw i32 %8769, 1
  %8774 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8773
  %8775 = load float, float* %8774, align 4, !tbaa !112, !noalias !123
  %8776 = select i1 %8772, float %8775, float %8539
  %8777 = call float @dx.op.binary.f32(i32 36, float %8776, float %8771)  ; FMin(a,b)
  %8778 = call float @dx.op.binary.f32(i32 36, float %8625, float %8777)  ; FMin(a,b)
  %8779 = icmp eq i32 %8489, 0
  %8780 = fadd fast float %8778, %8768
  %8781 = fmul fast float %8780, %8470
  %8782 = fadd fast float %8781, %8483
  br i1 %8779, label %8788, label %8783

; <label>:8783                                    ; preds = %8765
  %8784 = fsub fast float %8778, %8768
  %8785 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8784)  ; FMax(a,b)
  %8786 = fmul fast float %8785, %8782
  %8787 = fadd fast float %8786, %8767
  br label %8794

; <label>:8788                                    ; preds = %8765
  %8789 = fsub fast float %8768, %8778
  %8790 = call float @dx.op.unary.f32(i32 6, float %8789)  ; FAbs(value)
  %8791 = fadd fast float %8790, %8766
  %8792 = fmul fast float %8790, %8782
  %8793 = fsub fast float %8767, %8792
  br label %8794

; <label>:8794                                    ; preds = %8788, %8783
  %8795 = phi float [ %8785, %8783 ], [ %8791, %8788 ]
  %8796 = phi float [ %8787, %8783 ], [ %8793, %8788 ]
  %8797 = fcmp fast olt float %8776, %8625
  %8798 = icmp slt i32 %8773, 3
  %8799 = and i1 %8798, %8797
  br i1 %8799, label %8765, label %8800

; <label>:8800                                    ; preds = %8794
  br label %8801

; <label>:8801                                    ; preds = %8800, %8758
  %8802 = phi float [ %8623, %8758 ], [ %8795, %8800 ]
  %8803 = phi float [ %8624, %8758 ], [ %8796, %8800 ]
  %8804 = fsub fast float %8539, %8802
  %8805 = select i1 %8541, float %8802, float %8804
  %8806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8806, 0
  %8808 = extractvalue %dx.types.CBufRet.f32 %8806, 1
  %8809 = extractvalue %dx.types.CBufRet.f32 %8806, 2
  %8810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8811 = extractvalue %dx.types.CBufRet.f32 %8810, 0
  %8812 = extractvalue %dx.types.CBufRet.f32 %8810, 1
  %8813 = extractvalue %dx.types.CBufRet.f32 %8810, 2
  %8814 = extractvalue %dx.types.CBufRet.f32 %8810, 3
  %8815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8816 = extractvalue %dx.types.CBufRet.f32 %8815, 3
  %8817 = call float @dx.op.binary.f32(i32 36, float %8803, float %8816)  ; FMin(a,b)
  %8818 = fmul fast float %8814, %8805
  %8819 = call float @dx.op.unary.f32(i32 7, float %8818)  ; Saturate(value)
  %8820 = fsub fast float %8811, %8807
  %8821 = fsub fast float %8812, %8808
  %8822 = fsub fast float %8813, %8809
  %8823 = fmul fast float %8819, %8820
  %8824 = fmul fast float %8819, %8821
  %8825 = fmul fast float %8819, %8822
  %8826 = fadd fast float %8823, %8807
  %8827 = fadd fast float %8824, %8808
  %8828 = fadd fast float %8825, %8809
  %8829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8830 = extractvalue %dx.types.CBufRet.f32 %8829, 0
  %8831 = extractvalue %dx.types.CBufRet.f32 %8829, 1
  %8832 = fadd fast float %8831, %8830
  %8833 = call float @dx.op.unary.f32(i32 7, float %8832)  ; Saturate(value)
  %8834 = extractvalue %dx.types.CBufRet.f32 %8829, 2
  %8835 = extractvalue %dx.types.CBufRet.f32 %8829, 3
  %8836 = fadd fast float %8835, %8834
  %8837 = call float @dx.op.unary.f32(i32 7, float %8836)  ; Saturate(value)
  %8838 = fmul fast float %8833, %8817
  %8839 = fmul fast float %8838, %8837
  br label %8840

; <label>:8840                                    ; preds = %8801, %8720, %8555, %8537, %8535
  %8841 = phi float [ %8564, %8555 ], [ %8723, %8720 ], [ %8805, %8801 ], [ 0.000000e+00, %8535 ], [ 0.000000e+00, %8537 ]
  %8842 = phi float [ %8598, %8555 ], [ %8757, %8720 ], [ %8839, %8801 ], [ 0.000000e+00, %8535 ], [ 0.000000e+00, %8537 ]
  %8843 = phi float [ %8585, %8555 ], [ %8744, %8720 ], [ %8826, %8801 ], [ 0.000000e+00, %8535 ], [ 0.000000e+00, %8537 ]
  %8844 = phi float [ %8586, %8555 ], [ %8745, %8720 ], [ %8827, %8801 ], [ 0.000000e+00, %8535 ], [ 0.000000e+00, %8537 ]
  %8845 = phi float [ %8587, %8555 ], [ %8746, %8720 ], [ %8828, %8801 ], [ 0.000000e+00, %8535 ], [ 0.000000e+00, %8537 ]
  %8846 = fmul fast float %8478, %8842
  %8847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8848 = extractvalue %dx.types.CBufRet.f32 %8847, 2
  %8849 = fsub fast float %8485, %8848
  %8850 = fcmp fast olt float %8846, -2.000000e+01
  %8851 = call float @dx.op.unary.f32(i32 21, float %8846)  ; Exp(value)
  %8852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8853 = extractvalue %dx.types.CBufRet.f32 %8852, 2
  %8854 = extractvalue %dx.types.CBufRet.f32 %8852, 3
  %8855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8856 = extractvalue %dx.types.CBufRet.f32 %8855, 2
  %8857 = fmul fast float %8854, %8849
  %8858 = call float @dx.op.unary.f32(i32 7, float %8857)  ; Saturate(value)
  %8859 = fsub fast float 1.000000e+00, %8858
  %8860 = fmul fast float %8470, 5.000000e-01
  %8861 = fadd fast float %8860, 5.000000e-01
  %8862 = call float @dx.op.unary.f32(i32 7, float %8861)  ; Saturate(value)
  %8863 = fsub fast float 1.000000e+00, %8862
  %8864 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8859)  ; FMax(a,b)
  %8865 = fdiv fast float %8863, %8864
  %8866 = fsub fast float %8849, %8427
  %8867 = call float @dx.op.unary.f32(i32 6, float %8866)  ; FAbs(value)
  %8868 = fmul fast float %8867, %8853
  %8869 = call float @dx.op.unary.f32(i32 7, float %8865)  ; Saturate(value)
  %8870 = fsub fast float 1.000000e+00, %8868
  %8871 = fmul fast float %8870, %8869
  %8872 = fadd fast float %8871, %8868
  %8873 = fmul fast float %8856, %8849
  %8874 = call float @dx.op.unary.f32(i32 7, float %8873)  ; Saturate(value)
  %8875 = fsub fast float 1.000000e+00, %8872
  %8876 = fmul fast float %8875, %8874
  %8877 = fadd fast float %8876, %8872
  %8878 = call float @dx.op.unary.f32(i32 7, float %8877)  ; Saturate(value)
  %8879 = fadd fast float %8851, -1.000000e+00
  %8880 = select i1 %8850, float -1.000000e+00, float %8879
  %8881 = fmul fast float %8878, %8880
  %8882 = fadd fast float %8881, 1.000000e+00
  %8883 = fsub fast float -0.000000e+00, %8881
  %8884 = fmul fast float %8843, %8883
  %8885 = fmul fast float %8844, %8883
  %8886 = fmul fast float %8845, %8883
  br label %8887

; <label>:8887                                    ; preds = %8840, %8436
  %8888 = phi float [ %8841, %8840 ], [ 0.000000e+00, %8436 ]
  %8889 = phi float [ %8882, %8840 ], [ 1.000000e+00, %8436 ]
  %8890 = phi float [ %8884, %8840 ], [ 0.000000e+00, %8436 ]
  %8891 = phi float [ %8885, %8840 ], [ 0.000000e+00, %8436 ]
  %8892 = phi float [ %8886, %8840 ], [ 0.000000e+00, %8436 ]
  %8893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8894 = extractvalue %dx.types.CBufRet.f32 %8893, 1
  %8895 = fsub fast float 1.000000e+00, %8889
  %8896 = fmul fast float %8895, %8471
  %8897 = fmul fast float %8896, %8894
  %8898 = fsub fast float %8471, %8897
  br i1 %8464, label %8899, label %8928, !dx.controlflow.hints !159

; <label>:8899                                    ; preds = %8887
  %8900 = fmul fast float %8472, %8461
  %8901 = fadd fast float %8900, %8462
  %8902 = call float @dx.op.unary.f32(i32 7, float %8901)  ; Saturate(value)
  %8903 = fmul fast float %8443, %8898
  %8904 = fsub fast float -0.000000e+00, %8903
  %8905 = fmul fast float %8444, %8898
  %8906 = fsub fast float -0.000000e+00, %8905
  %8907 = call float @dx.op.unary.f32(i32 21, float %8904)  ; Exp(value)
  %8908 = call float @dx.op.unary.f32(i32 21, float %8906)  ; Exp(value)
  %8909 = call float @dx.op.binary.f32(i32 35, float %8451, float %8907)  ; FMax(a,b)
  %8910 = call float @dx.op.binary.f32(i32 35, float %8451, float %8908)  ; FMax(a,b)
  %8911 = fsub fast float %8910, %8909
  %8912 = fmul fast float %8911, %8902
  %8913 = fadd fast float %8912, %8909
  %8914 = call float @dx.op.unary.f32(i32 7, float %8913)  ; Saturate(value)
  %8915 = fsub fast float %8448, %8453
  %8916 = fsub fast float %8449, %8454
  %8917 = fsub fast float %8450, %8455
  %8918 = fmul fast float %8902, %8915
  %8919 = fmul fast float %8902, %8916
  %8920 = fmul fast float %8902, %8917
  %8921 = fadd fast float %8918, %8453
  %8922 = fadd fast float %8919, %8454
  %8923 = fadd fast float %8920, %8455
  %8924 = fsub fast float 1.000000e+00, %8914
  %8925 = fmul fast float %8924, %8921
  %8926 = fmul fast float %8924, %8922
  %8927 = fmul fast float %8924, %8923
  br label %8987

; <label>:8928                                    ; preds = %8887
  %8929 = fmul fast float %8898, %8460
  %8930 = call float @dx.op.unary.f32(i32 7, float %8929)  ; Saturate(value)
  %8931 = fsub fast float 2.000000e+00, %8930
  %8932 = fmul fast float %8930, 9.921875e-01
  %8933 = fmul fast float %8932, %8931
  %8934 = fadd fast float %8933, 3.906250e-03
  %8935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8934, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8936 = extractvalue %dx.types.ResRet.f32 %8935, 0
  %8937 = fsub fast float %8930, %8936
  %8938 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8937)  ; FMax(a,b)
  %8939 = fmul fast float %8446, %8427
  %8940 = call float @dx.op.unary.f32(i32 6, float %8939)  ; FAbs(value)
  %8941 = fcmp fast ogt float %8940, 0x3EB0C6F7A0000000
  br i1 %8941, label %8942, label %8948, !dx.controlflow.hints !160

; <label>:8942                                    ; preds = %8928
  %8943 = fmul fast float %8939, 0xBFF7154760000000
  %8944 = call float @dx.op.unary.f32(i32 21, float %8943)  ; Exp(value)
  %8945 = fsub fast float 1.000000e+00, %8944
  %8946 = fdiv fast float %8945, %8939
  %8947 = fmul fast float %8946, %8456
  br label %8948

; <label>:8948                                    ; preds = %8942, %8928
  %8949 = phi float [ %8947, %8942 ], [ %8456, %8928 ]
  %8950 = fadd fast float %8949, %8458
  %8951 = fmul fast float %8950, %8938
  %8952 = fmul fast float %8443, %8951
  %8953 = fsub fast float -0.000000e+00, %8952
  %8954 = fmul fast float %8444, %8951
  %8955 = fsub fast float -0.000000e+00, %8954
  %8956 = fmul fast float %8445, %8951
  %8957 = fsub fast float -0.000000e+00, %8956
  %8958 = call float @dx.op.unary.f32(i32 21, float %8953)  ; Exp(value)
  %8959 = call float @dx.op.unary.f32(i32 21, float %8955)  ; Exp(value)
  %8960 = call float @dx.op.unary.f32(i32 21, float %8957)  ; Exp(value)
  %8961 = fmul fast float %8472, %8472
  %8962 = fadd fast float %8961, 1.000000e+00
  %8963 = fmul fast float %8962, 0x3FAE8EC8A0000000
  %8964 = fmul fast float %8963, %8453
  %8965 = fmul fast float %8963, %8454
  %8966 = fmul fast float %8963, %8455
  %8967 = fmul fast float %8472, %8451
  %8968 = fsub fast float 1.000000e+00, %8967
  %8969 = fmul fast float %8451, %8451
  %8970 = fsub fast float 1.000000e+00, %8969
  %8971 = fmul fast float %8970, 0x3FB45F3060000000
  %8972 = fmul fast float %8968, %8968
  %8973 = fdiv fast float 1.000000e+00, %8972
  %8974 = fmul fast float %8971, %8973
  %8975 = fmul fast float %8974, %8448
  %8976 = fmul fast float %8974, %8449
  %8977 = fmul fast float %8974, %8450
  %8978 = fadd fast float %8975, %8964
  %8979 = fadd fast float %8976, %8965
  %8980 = fadd fast float %8977, %8966
  %8981 = fsub fast float 1.000000e+00, %8958
  %8982 = fsub fast float 1.000000e+00, %8959
  %8983 = fsub fast float 1.000000e+00, %8960
  %8984 = fmul fast float %8978, %8981
  %8985 = fmul fast float %8979, %8982
  %8986 = fmul fast float %8980, %8983
  br label %8987

; <label>:8987                                    ; preds = %8948, %8899
  %8988 = phi float [ %8925, %8899 ], [ %8984, %8948 ]
  %8989 = phi float [ %8926, %8899 ], [ %8985, %8948 ]
  %8990 = phi float [ %8927, %8899 ], [ %8986, %8948 ]
  %8991 = phi float [ %8914, %8899 ], [ %8958, %8948 ]
  %8992 = phi float [ %8914, %8899 ], [ %8959, %8948 ]
  %8993 = phi float [ %8914, %8899 ], [ %8960, %8948 ]
  br i1 %8480, label %8994, label %9192, !dx.controlflow.hints !161

; <label>:8994                                    ; preds = %8987
  %8995 = extractvalue %dx.types.CBufRet.f32 %8893, 0
  %8996 = fmul fast float %8995, %8895
  %8997 = fsub fast float %8890, %8988
  %8998 = fsub fast float %8891, %8989
  %8999 = fsub fast float %8892, %8990
  %9000 = fmul fast float %8996, %8997
  %9001 = fmul fast float %8996, %8998
  %9002 = fmul fast float %8996, %8999
  %9003 = fadd fast float %9000, %8988
  %9004 = fadd fast float %9001, %8989
  %9005 = fadd fast float %9002, %8990
  %9006 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8991)  ; FMax(a,b)
  %9007 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8992)  ; FMax(a,b)
  %9008 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8993)  ; FMax(a,b)
  %9009 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8889)  ; FMax(a,b)
  %9010 = call float @dx.op.binary.f32(i32 35, float %8888, float %8898)  ; FMax(a,b)
  %9011 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9010)  ; FMax(a,b)
  %9012 = fdiv fast float %8888, %9011
  %9013 = call float @dx.op.unary.f32(i32 7, float %9012)  ; Saturate(value)
  %9014 = fdiv fast float %8898, %9011
  %9015 = call float @dx.op.unary.f32(i32 7, float %9014)  ; Saturate(value)
  %9016 = fcmp fast une float %9009, 1.000000e+00
  br i1 %9016, label %9017, label %9030, !dx.controlflow.hints !162

; <label>:9017                                    ; preds = %8994
  %9018 = call float @dx.op.unary.f32(i32 23, float %9009)  ; Log(value)
  %9019 = fmul fast float %9018, 0x3FE62E4300000000
  %9020 = fmul fast float %8890, %9019
  %9021 = fsub fast float -0.000000e+00, %9020
  %9022 = fmul fast float %8891, %9019
  %9023 = fsub fast float -0.000000e+00, %9022
  %9024 = fmul fast float %8892, %9019
  %9025 = fsub fast float -0.000000e+00, %9024
  %9026 = fsub fast float 1.000000e+00, %9009
  %9027 = fdiv fast float %9021, %9026
  %9028 = fdiv fast float %9023, %9026
  %9029 = fdiv fast float %9025, %9026
  br label %9030

; <label>:9030                                    ; preds = %9017, %8994
  %9031 = phi float [ %9027, %9017 ], [ %8890, %8994 ]
  %9032 = phi float [ %9028, %9017 ], [ %8891, %8994 ]
  %9033 = phi float [ %9029, %9017 ], [ %8892, %8994 ]
  %9034 = phi float [ %9019, %9017 ], [ 0.000000e+00, %8994 ]
  %9035 = fcmp fast une float %9006, 1.000000e+00
  br i1 %9035, label %9036, label %9043, !dx.controlflow.hints !163

; <label>:9036                                    ; preds = %9030
  %9037 = call float @dx.op.unary.f32(i32 23, float %9006)  ; Log(value)
  %9038 = fmul fast float %9037, 0x3FE62E4300000000
  %9039 = fmul fast float %9003, %9038
  %9040 = fsub fast float -0.000000e+00, %9039
  %9041 = fsub fast float 1.000000e+00, %9006
  %9042 = fdiv fast float %9040, %9041
  br label %9043

; <label>:9043                                    ; preds = %9036, %9030
  %9044 = phi float [ %9042, %9036 ], [ %9003, %9030 ]
  %9045 = phi float [ %9038, %9036 ], [ 0.000000e+00, %9030 ]
  %9046 = fcmp fast une float %9007, 1.000000e+00
  br i1 %9046, label %9047, label %9054, !dx.controlflow.hints !163

; <label>:9047                                    ; preds = %9043
  %9048 = call float @dx.op.unary.f32(i32 23, float %9007)  ; Log(value)
  %9049 = fmul fast float %9048, 0x3FE62E4300000000
  %9050 = fmul fast float %9004, %9049
  %9051 = fsub fast float -0.000000e+00, %9050
  %9052 = fsub fast float 1.000000e+00, %9007
  %9053 = fdiv fast float %9051, %9052
  br label %9054

; <label>:9054                                    ; preds = %9047, %9043
  %9055 = phi float [ %9053, %9047 ], [ %9004, %9043 ]
  %9056 = phi float [ %9049, %9047 ], [ 0.000000e+00, %9043 ]
  %9057 = fcmp fast une float %9008, 1.000000e+00
  br i1 %9057, label %9058, label %9065, !dx.controlflow.hints !163

; <label>:9058                                    ; preds = %9054
  %9059 = call float @dx.op.unary.f32(i32 23, float %9008)  ; Log(value)
  %9060 = fmul fast float %9059, 0x3FE62E4300000000
  %9061 = fmul fast float %9005, %9060
  %9062 = fsub fast float -0.000000e+00, %9061
  %9063 = fsub fast float 1.000000e+00, %9008
  %9064 = fdiv fast float %9062, %9063
  br label %9065

; <label>:9065                                    ; preds = %9058, %9054
  %9066 = phi float [ %9064, %9058 ], [ %9005, %9054 ]
  %9067 = phi float [ %9060, %9058 ], [ 0.000000e+00, %9054 ]
  %9068 = fmul fast float %9031, %9015
  %9069 = fmul fast float %9032, %9015
  %9070 = fmul fast float %9033, %9015
  %9071 = fmul fast float %9034, %9015
  %9072 = fmul fast float %9044, %9013
  %9073 = fmul fast float %9055, %9013
  %9074 = fmul fast float %9066, %9013
  %9075 = fmul fast float %9045, %9013
  %9076 = fmul fast float %9056, %9013
  %9077 = fmul fast float %9067, %9013
  %9078 = fadd fast float %9072, %9068
  %9079 = fadd fast float %9073, %9069
  %9080 = fadd fast float %9074, %9070
  %9081 = fadd fast float %9075, %9071
  %9082 = fadd fast float %9076, %9071
  %9083 = fadd fast float %9077, %9071
  %9084 = fcmp fast une float %9081, 0.000000e+00
  br i1 %9084, label %9085, label %9092, !dx.controlflow.hints !164

; <label>:9085                                    ; preds = %9065
  %9086 = fmul fast float %9081, 0x3FF7154760000000
  %9087 = call float @dx.op.unary.f32(i32 21, float %9086)  ; Exp(value)
  %9088 = fsub fast float 1.000000e+00, %9087
  %9089 = fmul fast float %9078, %9088
  %9090 = fsub fast float -0.000000e+00, %9089
  %9091 = fdiv fast float %9090, %9081
  br label %9092

; <label>:9092                                    ; preds = %9085, %9065
  %9093 = phi float [ %9087, %9085 ], [ 1.000000e+00, %9065 ]
  %9094 = phi float [ %9091, %9085 ], [ %9078, %9065 ]
  %9095 = fcmp fast une float %9082, 0.000000e+00
  br i1 %9095, label %9096, label %9103, !dx.controlflow.hints !164

; <label>:9096                                    ; preds = %9092
  %9097 = fmul fast float %9082, 0x3FF7154760000000
  %9098 = call float @dx.op.unary.f32(i32 21, float %9097)  ; Exp(value)
  %9099 = fsub fast float 1.000000e+00, %9098
  %9100 = fmul fast float %9079, %9099
  %9101 = fsub fast float -0.000000e+00, %9100
  %9102 = fdiv fast float %9101, %9082
  br label %9103

; <label>:9103                                    ; preds = %9096, %9092
  %9104 = phi float [ %9098, %9096 ], [ 1.000000e+00, %9092 ]
  %9105 = phi float [ %9102, %9096 ], [ %9079, %9092 ]
  %9106 = fcmp fast une float %9083, 0.000000e+00
  br i1 %9106, label %9107, label %9114, !dx.controlflow.hints !164

; <label>:9107                                    ; preds = %9103
  %9108 = fmul fast float %9083, 0x3FF7154760000000
  %9109 = call float @dx.op.unary.f32(i32 21, float %9108)  ; Exp(value)
  %9110 = fsub fast float 1.000000e+00, %9109
  %9111 = fmul fast float %9080, %9110
  %9112 = fsub fast float -0.000000e+00, %9111
  %9113 = fdiv fast float %9112, %9083
  br label %9114

; <label>:9114                                    ; preds = %9107, %9103
  %9115 = phi float [ %9109, %9107 ], [ 1.000000e+00, %9103 ]
  %9116 = phi float [ %9113, %9107 ], [ %9080, %9103 ]
  %9117 = fcmp fast ogt float %9013, %9015
  br i1 %9117, label %9118, label %9138

; <label>:9118                                    ; preds = %9114
  %9119 = fsub fast float 1.000000e+00, %9015
  %9120 = fmul fast float %9031, %9119
  %9121 = fmul fast float %9032, %9119
  %9122 = fmul fast float %9033, %9119
  %9123 = fmul fast float %9034, %9119
  %9124 = fcmp fast une float %9123, 0.000000e+00
  br i1 %9124, label %9125, label %9176, !dx.controlflow.hints !165

; <label>:9125                                    ; preds = %9118
  %9126 = fmul fast float %9123, 0x3FF7154760000000
  %9127 = call float @dx.op.unary.f32(i32 21, float %9126)  ; Exp(value)
  %9128 = fsub fast float 1.000000e+00, %9127
  %9129 = fmul fast float %9120, %9128
  %9130 = fsub fast float -0.000000e+00, %9129
  %9131 = fmul fast float %9121, %9128
  %9132 = fsub fast float -0.000000e+00, %9131
  %9133 = fmul fast float %9122, %9128
  %9134 = fsub fast float -0.000000e+00, %9133
  %9135 = fdiv fast float %9130, %9123
  %9136 = fdiv fast float %9132, %9123
  %9137 = fdiv fast float %9134, %9123
  br label %9176

; <label>:9138                                    ; preds = %9114
  %9139 = fsub fast float 1.000000e+00, %9013
  %9140 = fmul fast float %9044, %9139
  %9141 = fmul fast float %9055, %9139
  %9142 = fmul fast float %9066, %9139
  %9143 = fmul fast float %9045, %9139
  %9144 = fmul fast float %9056, %9139
  %9145 = fmul fast float %9067, %9139
  %9146 = fcmp fast une float %9143, 0.000000e+00
  br i1 %9146, label %9147, label %9154, !dx.controlflow.hints !164

; <label>:9147                                    ; preds = %9138
  %9148 = fmul fast float %9143, 0x3FF7154760000000
  %9149 = call float @dx.op.unary.f32(i32 21, float %9148)  ; Exp(value)
  %9150 = fsub fast float 1.000000e+00, %9149
  %9151 = fmul fast float %9140, %9150
  %9152 = fsub fast float -0.000000e+00, %9151
  %9153 = fdiv fast float %9152, %9143
  br label %9154

; <label>:9154                                    ; preds = %9147, %9138
  %9155 = phi float [ %9153, %9147 ], [ %9140, %9138 ]
  %9156 = phi float [ %9149, %9147 ], [ 1.000000e+00, %9138 ]
  %9157 = fcmp fast une float %9144, 0.000000e+00
  br i1 %9157, label %9158, label %9165, !dx.controlflow.hints !164

; <label>:9158                                    ; preds = %9154
  %9159 = fmul fast float %9144, 0x3FF7154760000000
  %9160 = call float @dx.op.unary.f32(i32 21, float %9159)  ; Exp(value)
  %9161 = fsub fast float 1.000000e+00, %9160
  %9162 = fmul fast float %9141, %9161
  %9163 = fsub fast float -0.000000e+00, %9162
  %9164 = fdiv fast float %9163, %9144
  br label %9165

; <label>:9165                                    ; preds = %9158, %9154
  %9166 = phi float [ %9164, %9158 ], [ %9141, %9154 ]
  %9167 = phi float [ %9160, %9158 ], [ 1.000000e+00, %9154 ]
  %9168 = fcmp fast une float %9145, 0.000000e+00
  br i1 %9168, label %9169, label %9176, !dx.controlflow.hints !164

; <label>:9169                                    ; preds = %9165
  %9170 = fmul fast float %9145, 0x3FF7154760000000
  %9171 = call float @dx.op.unary.f32(i32 21, float %9170)  ; Exp(value)
  %9172 = fsub fast float 1.000000e+00, %9171
  %9173 = fmul fast float %9142, %9172
  %9174 = fsub fast float -0.000000e+00, %9173
  %9175 = fdiv fast float %9174, %9145
  br label %9176

; <label>:9176                                    ; preds = %9169, %9165, %9125, %9118
  %9177 = phi float [ %9175, %9169 ], [ %9137, %9125 ], [ %9122, %9118 ], [ %9142, %9165 ]
  %9178 = phi float [ %9166, %9169 ], [ %9136, %9125 ], [ %9121, %9118 ], [ %9166, %9165 ]
  %9179 = phi float [ %9155, %9169 ], [ %9135, %9125 ], [ %9120, %9118 ], [ %9155, %9165 ]
  %9180 = phi float [ %9171, %9169 ], [ %9127, %9125 ], [ 1.000000e+00, %9118 ], [ 1.000000e+00, %9165 ]
  %9181 = phi float [ %9167, %9169 ], [ %9127, %9125 ], [ 1.000000e+00, %9118 ], [ %9167, %9165 ]
  %9182 = phi float [ %9156, %9169 ], [ %9127, %9125 ], [ 1.000000e+00, %9118 ], [ %9156, %9165 ]
  %9183 = fmul fast float %9182, %9094
  %9184 = fmul fast float %9181, %9105
  %9185 = fmul fast float %9180, %9116
  %9186 = fadd fast float %9183, %9179
  %9187 = fadd fast float %9184, %9178
  %9188 = fadd fast float %9185, %9177
  %9189 = fmul fast float %9182, %9093
  %9190 = fmul fast float %9181, %9104
  %9191 = fmul fast float %9180, %9115
  br label %9192

; <label>:9192                                    ; preds = %9176, %8987
  %9193 = phi float [ %9191, %9176 ], [ %8993, %8987 ]
  %9194 = phi float [ %9190, %9176 ], [ %8992, %8987 ]
  %9195 = phi float [ %9189, %9176 ], [ %8991, %8987 ]
  %9196 = phi float [ %9188, %9176 ], [ %8990, %8987 ]
  %9197 = phi float [ %9187, %9176 ], [ %8989, %8987 ]
  %9198 = phi float [ %9186, %9176 ], [ %8988, %8987 ]
  %9199 = fmul fast float %9195, %8435
  %9200 = call float @dx.op.dot3.f32(i32 55, float %9195, float %9194, float %9193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9201 = call float @dx.op.dot3.f32(i32 55, float %9198, float %9197, float %9196, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9202 = select i1 %247, float %9200, float %9195
  %9203 = select i1 %247, float %9200, float %9194
  %9204 = select i1 %247, float 1.000000e+00, float %9193
  %9205 = select i1 %247, float %9201, float %9198
  %9206 = select i1 %247, float 0.000000e+00, float %9197
  %9207 = select i1 %247, float 0.000000e+00, float %9196
  %9208 = fmul fast float %9202, %8429
  %9209 = fmul fast float %9203, %8430
  %9210 = fmul fast float %9204, %8431
  %9211 = fadd fast float %9208, %9205
  %9212 = fadd fast float %9209, %9206
  %9213 = fadd fast float %9207, %9210
  %9214 = fmul fast float %9202, %8432
  %9215 = fmul fast float %9203, %8433
  %9216 = fmul fast float %9204, %8434
  %9217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9218 = extractvalue %dx.types.CBufRet.i32 %9217, 0
  %9219 = icmp eq i32 %9218, 0
  br i1 %9219, label %9584, label %9220, !dx.controlflow.hints !166

; <label>:9220                                    ; preds = %9192
  %9221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9222 = extractvalue %dx.types.CBufRet.f32 %9221, 2
  %9223 = extractvalue %dx.types.CBufRet.f32 %9221, 3
  %9224 = fmul fast float %9222, %99
  %9225 = fmul fast float %9223, %100
  %9226 = fmul fast float %9224, 2.000000e+00
  %9227 = fmul fast float %9225, 2.000000e+00
  %9228 = fsub fast float 1.000000e+00, %9226
  %9229 = fsub fast float 1.000000e+00, %9227
  %9230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9231 = extractvalue %dx.types.CBufRet.f32 %9230, 0
  %9232 = extractvalue %dx.types.CBufRet.f32 %9230, 1
  %9233 = extractvalue %dx.types.CBufRet.f32 %9230, 2
  %9234 = fmul fast float %9228, %9231
  %9235 = fmul fast float %9228, %9232
  %9236 = fmul fast float %9228, %9233
  %9237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9238 = extractvalue %dx.types.CBufRet.f32 %9237, 0
  %9239 = extractvalue %dx.types.CBufRet.f32 %9237, 1
  %9240 = extractvalue %dx.types.CBufRet.f32 %9237, 2
  %9241 = fmul fast float %9229, %9238
  %9242 = fmul fast float %9229, %9239
  %9243 = fmul fast float %9229, %9240
  %9244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9245 = extractvalue %dx.types.CBufRet.f32 %9244, 0
  %9246 = extractvalue %dx.types.CBufRet.f32 %9244, 1
  %9247 = extractvalue %dx.types.CBufRet.f32 %9244, 2
  %9248 = fadd fast float %9241, %9245
  %9249 = fadd fast float %9248, %9234
  %9250 = fadd fast float %9242, %9246
  %9251 = fadd fast float %9250, %9235
  %9252 = fadd fast float %9243, %9247
  %9253 = fadd fast float %9252, %9236
  %9254 = fmul fast float %9249, %8428
  %9255 = fmul fast float %9251, %8428
  %9256 = fmul fast float %9253, %8428
  %9257 = fmul fast float %9254, %9254
  %9258 = fmul fast float %9255, %9255
  %9259 = fadd fast float %9257, %9258
  %9260 = fmul fast float %9256, %9256
  %9261 = fadd fast float %9259, %9260
  %9262 = call float @dx.op.unary.f32(i32 24, float %9261)  ; Sqrt(value)
  %9263 = extractvalue %dx.types.CBufRet.f32 %8158, 0
  %9264 = fsub fast float %9262, %9263
  %9265 = extractvalue %dx.types.CBufRet.f32 %8158, 2
  %9266 = fmul fast float %9264, %9265
  %9267 = call float @dx.op.unary.f32(i32 7, float %9266)  ; Saturate(value)
  %9268 = fadd fast float %9267, -5.000000e-01
  %9269 = fmul fast float %9268, 2.000000e+00
  %9270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9271 = extractvalue %dx.types.CBufRet.f32 %9270, 2
  %9272 = call float @dx.op.binary.f32(i32 36, float %9271, float %9269)  ; FMin(a,b)
  %9273 = fsub fast float -0.000000e+00, %9271
  %9274 = fcmp fast ogt float %9272, %9273
  br i1 %9274, label %9275, label %9584, !dx.controlflow.hints !167

; <label>:9275                                    ; preds = %9220
  %9276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9277 = extractvalue %dx.types.CBufRet.f32 %9276, 3
  %9278 = fcmp fast ogt float %9277, 0.000000e+00
  br i1 %9278, label %9279, label %9354, !dx.controlflow.hints !168

; <label>:9279                                    ; preds = %9275
  %9280 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9281 = extractvalue %dx.types.Dimensions %9280, 0
  %9282 = sitofp i32 %9281 to float
  %9283 = extractvalue %dx.types.Dimensions %9280, 1
  %9284 = sitofp i32 %9283 to float
  %9285 = fmul fast float %9224, %9282
  %9286 = fmul fast float %9225, %9284
  %9287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9288 = extractvalue %dx.types.CBufRet.f32 %9287, 1
  %9289 = fsub fast float -0.000000e+00, %9288
  %9290 = fptoui float %9289 to i32
  %9291 = fptoui float %9285 to i32
  %9292 = fptoui float %9286 to i32
  %9293 = and i32 %9290, 31
  %9294 = lshr i32 %9291, %9293
  %9295 = lshr i32 %9292, %9293
  %9296 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9290, i32 %9294, i32 %9295, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9297 = extractvalue %dx.types.ResRet.f32 %9296, 0
  %9298 = fcmp fast olt float %9297, -1.000000e+00
  %9299 = fcmp fast ogt float %9297, -1.000000e+00
  %9300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9301 = extractvalue %dx.types.CBufRet.f32 %9300, 1
  %9302 = select i1 %9299, float %9301, float 1.000000e+00
  %9303 = fadd fast float %9297, 1.000000e+00
  %9304 = fmul fast float %9302, %9303
  %9305 = call float @dx.op.unary.f32(i32 6, float %9304)  ; FAbs(value)
  %9306 = extractvalue %dx.types.CBufRet.f32 %9300, 3
  %9307 = fcmp fast oge float %9305, %9306
  %9308 = select i1 %9307, float 0x4197782600000000, float %9305
  %9309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9310 = extractvalue %dx.types.CBufRet.f32 %9309, 0
  %9311 = extractvalue %dx.types.CBufRet.f32 %9309, 1
  %9312 = extractvalue %dx.types.CBufRet.f32 %9309, 2
  %9313 = select i1 %9298, float %9310, float %9231
  %9314 = select i1 %9298, float %9311, float %9232
  %9315 = select i1 %9298, float %9312, float %9233
  %9316 = fmul fast float %9313, %9228
  %9317 = fmul fast float %9314, %9228
  %9318 = fmul fast float %9315, %9228
  %9319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9320 = extractvalue %dx.types.CBufRet.f32 %9319, 0
  %9321 = extractvalue %dx.types.CBufRet.f32 %9319, 1
  %9322 = extractvalue %dx.types.CBufRet.f32 %9319, 2
  %9323 = select i1 %9298, float %9320, float %9238
  %9324 = select i1 %9298, float %9321, float %9239
  %9325 = select i1 %9298, float %9322, float %9240
  %9326 = fmul fast float %9323, %9229
  %9327 = fmul fast float %9324, %9229
  %9328 = fmul fast float %9325, %9229
  %9329 = fadd fast float %9326, %9316
  %9330 = fadd fast float %9327, %9317
  %9331 = fadd fast float %9328, %9318
  %9332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9333 = extractvalue %dx.types.CBufRet.f32 %9332, 0
  %9334 = extractvalue %dx.types.CBufRet.f32 %9332, 1
  %9335 = extractvalue %dx.types.CBufRet.f32 %9332, 2
  %9336 = select i1 %9298, float %9333, float %9245
  %9337 = select i1 %9298, float %9334, float %9246
  %9338 = select i1 %9298, float %9335, float %9247
  %9339 = fadd fast float %9329, %9336
  %9340 = fadd fast float %9330, %9337
  %9341 = fadd fast float %9331, %9338
  %9342 = fmul fast float %9339, %9308
  %9343 = fmul fast float %9340, %9308
  %9344 = fmul fast float %9341, %9308
  %9345 = fmul fast float %9342, %9342
  %9346 = fmul fast float %9343, %9343
  %9347 = fadd fast float %9345, %9346
  %9348 = fmul fast float %9344, %9344
  %9349 = fadd fast float %9347, %9348
  %9350 = call float @dx.op.unary.f32(i32 24, float %9349)  ; Sqrt(value)
  %9351 = fsub fast float %9350, %9263
  %9352 = fmul fast float %9351, %9265
  %9353 = call float @dx.op.unary.f32(i32 7, float %9352)  ; Saturate(value)
  br label %9354

; <label>:9354                                    ; preds = %9279, %9275
  %9355 = phi float [ %9353, %9279 ], [ 1.000000e+00, %9275 ]
  %9356 = fmul fast float %9272, 5.000000e-01
  %9357 = fadd fast float %9356, 5.000000e-01
  %9358 = call float @dx.op.unary.f32(i32 22, float %9357)  ; Frc(value)
  %9359 = call float @dx.op.unary.f32(i32 27, float %9358)  ; Round_ni(value)
  %9360 = call float @dx.op.unary.f32(i32 22, float %9358)  ; Frc(value)
  %9361 = fmul fast float %9360, 2.000000e+00
  %9362 = fadd fast float %9361, -1.000000e+00
  %9363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %9224, float %9225, float %9359, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9364 = extractvalue %dx.types.ResRet.f32 %9363, 0
  %9365 = extractvalue %dx.types.ResRet.f32 %9363, 1
  %9366 = extractvalue %dx.types.ResRet.f32 %9363, 2
  %9367 = extractvalue %dx.types.ResRet.f32 %9363, 3
  %9368 = fadd fast float %9364, -5.000000e-01
  %9369 = fadd fast float %9366, -5.000000e-01
  %9370 = fmul fast float %9368, 0xBFD5555560000000
  %9371 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9369, float %9370)  ; FMad(a,b,c)
  %9372 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9365, float 0.000000e+00)  ; FMad(a,b,c)
  %9373 = fadd fast float %9372, %9367
  %9374 = fmul fast float %9368, -7.500000e-01
  %9375 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9369, float %9374)  ; FMad(a,b,c)
  %9376 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9365, float 0.000000e+00)  ; FMad(a,b,c)
  %9377 = fadd fast float %9376, %9367
  %9378 = call float @dx.op.binary.f32(i32 35, float %9371, float -1.000000e+00)  ; FMax(a,b)
  %9379 = call float @dx.op.binary.f32(i32 35, float %9373, float -1.000000e+00)  ; FMax(a,b)
  %9380 = call float @dx.op.binary.f32(i32 35, float %9375, float -1.000000e+00)  ; FMax(a,b)
  %9381 = call float @dx.op.binary.f32(i32 35, float %9377, float -1.000000e+00)  ; FMax(a,b)
  %9382 = call float @dx.op.binary.f32(i32 36, float %9378, float 1.000000e+00)  ; FMin(a,b)
  %9383 = call float @dx.op.binary.f32(i32 36, float %9379, float 1.000000e+00)  ; FMin(a,b)
  %9384 = call float @dx.op.binary.f32(i32 36, float %9380, float 1.000000e+00)  ; FMin(a,b)
  %9385 = call float @dx.op.binary.f32(i32 36, float %9381, float 1.000000e+00)  ; FMin(a,b)
  %9386 = fcmp fast olt float %9382, 0x3FEFFF8020000000
  br i1 %9386, label %9387, label %9502, !dx.controlflow.hints !169

; <label>:9387                                    ; preds = %9354
  %9388 = extractvalue %dx.types.CBufRet.f32 %9270, 3
  %9389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9390 = extractvalue %dx.types.CBufRet.f32 %9389, 0
  %9391 = extractvalue %dx.types.CBufRet.f32 %9389, 1
  %9392 = extractvalue %dx.types.CBufRet.f32 %9389, 2
  %9393 = extractvalue %dx.types.CBufRet.f32 %9389, 3
  %9394 = fsub fast float %9390, %9382
  %9395 = fsub fast float %9391, %9383
  %9396 = fsub fast float %9392, %9384
  %9397 = fsub fast float %9393, %9385
  %9398 = fmul fast float %9394, %9388
  %9399 = fmul fast float %9395, %9388
  %9400 = fmul fast float %9396, %9388
  %9401 = fmul fast float %9397, %9388
  %9402 = fadd fast float %9398, %9382
  %9403 = fadd fast float %9399, %9383
  %9404 = fsub fast float -0.000000e+00, %9403
  %9405 = fadd fast float %9400, %9384
  %9406 = fadd fast float %9401, %9385
  %9407 = fmul fast float %9402, %9402
  %9408 = fsub fast float %9403, %9407
  %9409 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9408)  ; FMax(a,b)
  %9410 = fdiv fast float 1.000000e+00, %9409
  %9411 = fmul fast float %9403, %9402
  %9412 = fsub fast float %9405, %9411
  %9413 = fsub fast float %9362, %9402
  %9414 = fmul fast float %9362, %9362
  %9415 = fsub fast float %9414, %9403
  %9416 = fmul fast float %9413, %9410
  %9417 = fmul fast float %9416, %9412
  %9418 = fsub fast float %9415, %9417
  %9419 = fmul fast float %9403, %9403
  %9420 = fsub fast float %9406, %9419
  %9421 = fmul fast float %9412, %9412
  %9422 = fmul fast float %9421, %9410
  %9423 = fsub fast float %9420, %9422
  %9424 = fdiv fast float %9418, %9423
  %9425 = fmul fast float %9412, %9424
  %9426 = fsub fast float %9413, %9425
  %9427 = fmul fast float %9426, %9410
  %9428 = fmul fast float %9427, %9402
  %9429 = fsub fast float 1.000000e+00, %9428
  %9430 = fmul fast float %9403, %9424
  %9431 = fsub fast float %9429, %9430
  %9432 = fmul fast float %9427, %9427
  %9433 = fmul fast float %9424, 4.000000e+00
  %9434 = fmul fast float %9433, %9431
  %9435 = fsub fast float %9432, %9434
  %9436 = call float @dx.op.unary.f32(i32 24, float %9435)  ; Sqrt(value)
  %9437 = fcmp fast oge float %9427, 0.000000e+00
  %9438 = fsub fast float -0.000000e+00, %9436
  %9439 = select i1 %9437, float %9438, float %9436
  %9440 = fsub fast float %9439, %9427
  %9441 = fdiv fast float %9440, %9424
  %9442 = fdiv fast float %9431, %9440
  %9443 = fmul fast float %9441, 5.000000e-01
  %9444 = fmul fast float %9442, 2.000000e+00
  %9445 = select i1 %9437, float %9443, float %9444
  %9446 = select i1 %9437, float %9444, float %9443
  %9447 = call float @dx.op.binary.f32(i32 35, float %9445, float %9446)  ; FMax(a,b)
  %9448 = call float @dx.op.binary.f32(i32 36, float %9445, float %9446)  ; FMin(a,b)
  %9449 = fcmp fast ogt float %9362, %9448
  br i1 %9449, label %9450, label %9460

; <label>:9450                                    ; preds = %9387
  %9451 = fsub fast float %9362, %9448
  %9452 = fsub fast float %9447, %9448
  %9453 = fmul fast float %9451, %9452
  %9454 = fmul fast float %9447, %9362
  %9455 = fadd fast float %9447, %9362
  %9456 = fmul fast float %9455, %9402
  %9457 = fadd fast float %9454, %9403
  %9458 = fsub fast float %9457, %9456
  %9459 = fdiv fast float %9458, %9453
  br label %9460

; <label>:9460                                    ; preds = %9450, %9387
  %9461 = phi float [ %9459, %9450 ], [ 0.000000e+00, %9387 ]
  %9462 = fcmp fast ogt float %9362, %9447
  %9463 = fsub fast float %9362, %9447
  br i1 %9462, label %9464, label %9474

; <label>:9464                                    ; preds = %9460
  %9465 = fsub fast float %9447, %9448
  %9466 = fmul fast float %9465, %9463
  %9467 = fmul fast float %9448, %9362
  %9468 = fadd fast float %9448, %9362
  %9469 = fmul fast float %9468, %9402
  %9470 = fsub fast float %9404, %9467
  %9471 = fadd fast float %9470, %9469
  %9472 = fdiv fast float %9471, %9466
  %9473 = fadd fast float %9472, %9461
  br label %9474

; <label>:9474                                    ; preds = %9464, %9460
  %9475 = phi float [ %9473, %9464 ], [ %9461, %9460 ]
  %9476 = fsub fast float %9362, %9448
  %9477 = fmul fast float %9476, %9463
  %9478 = fmul fast float %9448, %9447
  %9479 = fadd fast float %9448, %9447
  %9480 = fmul fast float %9479, %9402
  %9481 = fadd fast float %9478, %9403
  %9482 = fsub fast float %9481, %9480
  %9483 = fdiv fast float %9482, %9477
  %9484 = call float @dx.op.unary.f32(i32 7, float %9475)  ; Saturate(value)
  %9485 = fcmp fast oeq float %8159, 0.000000e+00
  %9486 = extractvalue %dx.types.CBufRet.f32 %9270, 0
  %9487 = fcmp fast oeq float %9486, 0.000000e+00
  %9488 = or i1 %9485, %9487
  %9489 = fmul fast float %9486, 2.000000e+00
  %9490 = fadd fast float %9271, %9272
  %9491 = fdiv fast float %9490, %9489
  %9492 = call float @dx.op.unary.f32(i32 7, float %9491)  ; Saturate(value)
  %9493 = fmul fast float %9492, 2.000000e+00
  %9494 = fsub fast float 3.000000e+00, %9493
  %9495 = fmul fast float %9492, %9492
  %9496 = fmul fast float %9495, %9494
  %9497 = select i1 %9488, float 1.000000e+00, float %9496
  %9498 = fmul fast float %9483, %8159
  %9499 = fadd fast float %9484, %9498
  %9500 = call float @dx.op.unary.f32(i32 7, float %9499)  ; Saturate(value)
  %9501 = fmul fast float %9497, %9500
  br label %9502

; <label>:9502                                    ; preds = %9474, %9354
  %9503 = phi float [ %9501, %9474 ], [ 0.000000e+00, %9354 ]
  %9504 = fsub fast float 1.000000e+00, %9503
  %9505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %9224, float %9225, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9506 = extractvalue %dx.types.ResRet.f32 %9505, 0
  %9507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9508 = extractvalue %dx.types.CBufRet.i32 %9507, 2
  %9509 = icmp eq i32 %9508, 0
  br i1 %9509, label %9515, label %9510

; <label>:9510                                    ; preds = %9502
  %9511 = call float @dx.op.unary.f32(i32 7, float %9503)  ; Saturate(value)
  %9512 = fadd fast float %9506, -1.000000e+00
  %9513 = fmul fast float %9511, %9512
  %9514 = fadd fast float %9513, 1.000000e+00
  br label %9515

; <label>:9515                                    ; preds = %9510, %9502
  %9516 = phi float [ %9514, %9510 ], [ %9504, %9502 ]
  br i1 %9278, label %9517, label %9535

; <label>:9517                                    ; preds = %9515
  %9518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9519 = extractvalue %dx.types.CBufRet.f32 %9518, 1
  %9520 = fsub fast float %9355, %9519
  %9521 = call float @dx.op.unary.f32(i32 7, float %9520)  ; Saturate(value)
  %9522 = fsub fast float %9355, %9277
  %9523 = call float @dx.op.unary.f32(i32 7, float %9522)  ; Saturate(value)
  %9524 = fsub fast float %9521, %9523
  %9525 = fsub fast float %9357, %9523
  %9526 = fdiv fast float %9525, %9524
  %9527 = call float @dx.op.unary.f32(i32 7, float %9526)  ; Saturate(value)
  %9528 = fmul fast float %9527, 2.000000e+00
  %9529 = fsub fast float 3.000000e+00, %9528
  %9530 = fsub fast float %9506, %9516
  %9531 = fmul fast float %9527, %9527
  %9532 = fmul fast float %9531, %9530
  %9533 = fmul fast float %9532, %9529
  %9534 = fadd fast float %9533, %9516
  br label %9535

; <label>:9535                                    ; preds = %9517, %9515
  %9536 = phi float [ %9534, %9517 ], [ %9516, %9515 ]
  %9537 = call float @dx.op.binary.f32(i32 35, float %9506, float %9536)  ; FMax(a,b)
  %9538 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9539 = extractvalue %dx.types.CBufRet.i32 %9538, 2
  %9540 = and i32 %9539, 1
  %9541 = icmp eq i32 %9540, 0
  %9542 = fcmp fast une float %9537, 1.000000e+00
  %9543 = and i1 %9542, %9541
  br i1 %9543, label %9544, label %9563

; <label>:9544                                    ; preds = %9535
  %9545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %9224, float %9225, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9546 = extractvalue %dx.types.ResRet.f32 %9545, 0
  %9547 = extractvalue %dx.types.ResRet.f32 %9545, 1
  %9548 = extractvalue %dx.types.ResRet.f32 %9545, 2
  %9549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9550 = extractvalue %dx.types.CBufRet.f32 %9549, 1
  %9551 = fmul fast float %9550, %9546
  %9552 = fmul fast float %9550, %9547
  %9553 = fmul fast float %9550, %9548
  %9554 = fcmp fast ogt float %9506, 0x3FEFFF2E40000000
  %9555 = fsub fast float 1.000000e+00, %9537
  %9556 = fsub fast float 1.000000e+00, %9506
  %9557 = fdiv fast float %9555, %9556
  %9558 = call float @dx.op.unary.f32(i32 7, float %9557)  ; Saturate(value)
  %9559 = select i1 %9554, float 0.000000e+00, float %9558
  %9560 = fmul fast float %9551, %9559
  %9561 = fmul fast float %9552, %9559
  %9562 = fmul fast float %9553, %9559
  br label %9563

; <label>:9563                                    ; preds = %9544, %9535
  %9564 = phi float [ 0.000000e+00, %9535 ], [ %9560, %9544 ]
  %9565 = phi float [ 0.000000e+00, %9535 ], [ %9561, %9544 ]
  %9566 = phi float [ 0.000000e+00, %9535 ], [ %9562, %9544 ]
  %9567 = fmul fast float %9537, %9199
  %9568 = call float @dx.op.dot3.f32(i32 55, float %9537, float %9537, float %9537, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9569 = call float @dx.op.dot3.f32(i32 55, float %9564, float %9565, float %9566, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9570 = select i1 %247, float %9568, float %9537
  %9571 = select i1 %247, float 1.000000e+00, float %9537
  %9572 = select i1 %247, float %9569, float %9564
  %9573 = select i1 %247, float 0.000000e+00, float %9565
  %9574 = select i1 %247, float 0.000000e+00, float %9566
  %9575 = fmul fast float %9570, %9211
  %9576 = fmul fast float %9570, %9212
  %9577 = fmul fast float %9571, %9213
  %9578 = fadd fast float %9575, %9572
  %9579 = fadd fast float %9576, %9573
  %9580 = fadd fast float %9574, %9577
  %9581 = fmul fast float %9570, %9214
  %9582 = fmul fast float %9570, %9215
  %9583 = fmul fast float %9571, %9216
  br label %9584

; <label>:9584                                    ; preds = %9563, %9220, %9192, %8424
  %9585 = phi float [ %8429, %8424 ], [ %9211, %9192 ], [ %9578, %9563 ], [ %9211, %9220 ]
  %9586 = phi float [ %8430, %8424 ], [ %9212, %9192 ], [ %9579, %9563 ], [ %9212, %9220 ]
  %9587 = phi float [ %8431, %8424 ], [ %9213, %9192 ], [ %9580, %9563 ], [ %9213, %9220 ]
  %9588 = phi float [ %8432, %8424 ], [ %9214, %9192 ], [ %9581, %9563 ], [ %9214, %9220 ]
  %9589 = phi float [ %8433, %8424 ], [ %9215, %9192 ], [ %9582, %9563 ], [ %9215, %9220 ]
  %9590 = phi float [ %8434, %8424 ], [ %9216, %9192 ], [ %9583, %9563 ], [ %9216, %9220 ]
  %9591 = phi float [ %8435, %8424 ], [ %9199, %9192 ], [ %9567, %9563 ], [ %9199, %9220 ]
  %9592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9593 = extractvalue %dx.types.CBufRet.f32 %9592, 2
  %9594 = extractvalue %dx.types.CBufRet.f32 %9592, 3
  %9595 = fmul fast float %9593, %99
  %9596 = fmul fast float %9594, %100
  %9597 = call float @dx.op.unary.f32(i32 7, float %9595)  ; Saturate(value)
  %9598 = call float @dx.op.unary.f32(i32 7, float %9596)  ; Saturate(value)
  %9599 = select i1 %8169, i32 2, i32 0
  %9600 = or i32 %9599, 1
  %9601 = uitofp i32 %9600 to float
  %9602 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %9597, float %9598, float %9601, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9603 = extractvalue %dx.types.ResRet.f32 %9602, 0
  %9604 = extractvalue %dx.types.ResRet.f32 %9602, 1
  %9605 = extractvalue %dx.types.ResRet.f32 %9602, 2
  %9606 = extractvalue %dx.types.ResRet.f32 %9602, 3
  %9607 = add nuw nsw i32 %9599, 2
  %9608 = uitofp i32 %9607 to float
  %9609 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %9597, float %9598, float %9608, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9610 = extractvalue %dx.types.ResRet.f32 %9609, 0
  %9611 = extractvalue %dx.types.ResRet.f32 %9609, 1
  %9612 = extractvalue %dx.types.ResRet.f32 %9609, 2
  %9613 = extractvalue %dx.types.ResRet.f32 %9609, 3
  %9614 = call float @dx.op.binary.f32(i32 35, float %9604, float %9605)  ; FMax(a,b)
  %9615 = call float @dx.op.binary.f32(i32 35, float %9603, float %9614)  ; FMax(a,b)
  %9616 = call float @dx.op.binary.f32(i32 35, float %9615, float %9606)  ; FMax(a,b)
  %9617 = call float @dx.op.binary.f32(i32 36, float %9611, float %9612)  ; FMin(a,b)
  %9618 = call float @dx.op.binary.f32(i32 36, float %9610, float %9617)  ; FMin(a,b)
  %9619 = call float @dx.op.binary.f32(i32 36, float %9618, float %9613)  ; FMin(a,b)
  %9620 = fmul fast float %9616, 2.550000e+02
  %9621 = fadd fast float %9620, 0x3F70101020000000
  %9622 = fptoui float %9621 to i32
  %9623 = fmul fast float %9619, 2.550000e+02
  %9624 = fadd fast float %9623, 0x3F70101020000000
  %9625 = fptoui float %9624 to i32
  %9626 = icmp ult i32 %9622, %9625
  br i1 %9626, label %9627, label %9796

; <label>:9627                                    ; preds = %9584
  %9628 = fcmp fast ogt float %86, 9.843750e-01
  %9629 = fadd fast float %8428, -4.000000e+00
  %9630 = select i1 %9628, float -4.000000e+00, float %9629
  %9631 = call float @dx.op.binary.f32(i32 35, float %9630, float 0.000000e+00)  ; FMax(a,b)
  %9632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9633 = extractvalue %dx.types.CBufRet.f32 %9632, 0
  %9634 = fadd fast float %9633, %9631
  %9635 = extractvalue %dx.types.CBufRet.f32 %9632, 2
  %9636 = fmul fast float %9634, %9635
  %9637 = call float @dx.op.unary.f32(i32 23, float %9636)  ; Log(value)
  %9638 = extractvalue %dx.types.CBufRet.f32 %9632, 3
  %9639 = fmul fast float %9638, %9637
  %9640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9641 = extractvalue %dx.types.CBufRet.f32 %9640, 2
  %9642 = fmul fast float %9639, %9641
  %9643 = call float @dx.op.unary.f32(i32 7, float %9642)  ; Saturate(value)
  %9644 = uitofp i32 %9622 to float
  %9645 = uitofp i32 %9625 to float
  %9646 = fadd fast float %9644, 5.000000e-01
  %9647 = fadd fast float %9645, 5.000000e-01
  %9648 = fmul fast float %9641, %9646
  %9649 = fmul fast float %9641, %9647
  %9650 = fadd fast float %9648, 0x3F0FFB4800000000
  %9651 = fadd fast float %9649, 0xBF0FFB4800000000
  %9652 = call float @dx.op.binary.f32(i32 35, float %9643, float %9650)  ; FMax(a,b)
  %9653 = call float @dx.op.binary.f32(i32 36, float %9652, float %9651)  ; FMin(a,b)
  %9654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9655 = extractvalue %dx.types.CBufRet.f32 %9654, 1
  %9656 = extractvalue %dx.types.CBufRet.f32 %9654, 2
  %9657 = extractvalue %dx.types.CBufRet.f32 %9654, 0
  %9658 = select i1 %8169, float %9657, float 0.000000e+00
  %9659 = fmul fast float %9655, %9653
  %9660 = fadd fast float %9658, %9659
  %9661 = fadd fast float %9658, %9656
  %9662 = fsub fast float %9655, %9656
  %9663 = fadd fast float %9662, %9658
  %9664 = call float @dx.op.binary.f32(i32 35, float %9660, float %9661)  ; FMax(a,b)
  %9665 = call float @dx.op.binary.f32(i32 36, float %9664, float %9663)  ; FMin(a,b)
  %9666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %9597, float %9598, float %9665, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9667 = extractvalue %dx.types.ResRet.f32 %9666, 0
  %9668 = extractvalue %dx.types.ResRet.f32 %9666, 1
  %9669 = extractvalue %dx.types.ResRet.f32 %9666, 2
  %9670 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9671 = extractvalue %dx.types.CBufRet.i32 %9670, 0
  %9672 = extractvalue %dx.types.CBufRet.i32 %9670, 1
  %9673 = uitofp i32 %9671 to float
  %9674 = uitofp i32 %9672 to float
  %9675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9676 = extractvalue %dx.types.CBufRet.f32 %9675, 0
  %9677 = extractvalue %dx.types.CBufRet.f32 %9675, 1
  %9678 = fmul fast float %9673, %9597
  %9679 = fmul fast float %9674, %9598
  %9680 = fadd fast float %9678, -5.000000e-01
  %9681 = fadd fast float %9679, -5.000000e-01
  %9682 = call float @dx.op.unary.f32(i32 22, float %9680)  ; Frc(value)
  %9683 = call float @dx.op.unary.f32(i32 22, float %9681)  ; Frc(value)
  %9684 = fmul fast float %9682, %9682
  %9685 = fmul fast float %9684, %9682
  %9686 = fsub fast float 3.000000e+00, %9682
  %9687 = fmul fast float %9684, %9686
  %9688 = fmul fast float %9682, 3.000000e+00
  %9689 = fmul fast float %9685, 3.000000e+00
  %9690 = fmul fast float %9684, 6.000000e+00
  %9691 = fsub fast float %9689, %9690
  %9692 = fadd fast float %9691, 4.000000e+00
  %9693 = fmul fast float %9692, 0x3FC5555560000000
  %9694 = fmul fast float %9685, -3.000000e+00
  %9695 = fadd fast float %9684, %9682
  %9696 = fmul fast float %9695, 3.000000e+00
  %9697 = fadd fast float %9694, 1.000000e+00
  %9698 = fadd fast float %9697, %9696
  %9699 = fmul fast float %9685, 0x3FC5555560000000
  %9700 = fmul fast float %9683, %9683
  %9701 = fmul fast float %9700, %9683
  %9702 = fsub fast float 3.000000e+00, %9683
  %9703 = fmul fast float %9700, %9702
  %9704 = fmul fast float %9683, 3.000000e+00
  %9705 = fmul fast float %9701, 3.000000e+00
  %9706 = fmul fast float %9700, 6.000000e+00
  %9707 = fsub fast float %9705, %9706
  %9708 = fadd fast float %9707, 4.000000e+00
  %9709 = fmul fast float %9708, 0x3FC5555560000000
  %9710 = fmul fast float %9701, -3.000000e+00
  %9711 = fadd fast float %9700, %9683
  %9712 = fmul fast float %9711, 3.000000e+00
  %9713 = fadd fast float %9710, 1.000000e+00
  %9714 = fadd fast float %9713, %9712
  %9715 = fmul fast float %9701, 0x3FC5555560000000
  %9716 = fadd fast float %9682, 1.000000e+00
  %9717 = fsub fast float 1.000000e+00, %9688
  %9718 = fadd fast float %9717, %9687
  %9719 = fadd fast float %9718, %9692
  %9720 = fmul fast float %9719, 0x3FC5555560000000
  %9721 = fdiv fast float %9693, %9720
  %9722 = fsub fast float %9716, %9721
  %9723 = fsub fast float 1.000000e+00, %9682
  %9724 = fadd fast float %9698, %9685
  %9725 = fmul fast float %9724, 0x3FC5555560000000
  %9726 = fdiv fast float %9699, %9725
  %9727 = fadd fast float %9723, %9726
  %9728 = fadd fast float %9683, 1.000000e+00
  %9729 = fsub fast float 1.000000e+00, %9704
  %9730 = fadd fast float %9729, %9703
  %9731 = fadd fast float %9730, %9708
  %9732 = fmul fast float %9731, 0x3FC5555560000000
  %9733 = fdiv fast float %9709, %9732
  %9734 = fsub fast float %9728, %9733
  %9735 = fsub fast float 1.000000e+00, %9683
  %9736 = fadd fast float %9714, %9701
  %9737 = fmul fast float %9736, 0x3FC5555560000000
  %9738 = fdiv fast float %9715, %9737
  %9739 = fadd fast float %9738, %9735
  %9740 = fmul fast float %9722, %9676
  %9741 = fsub fast float %9597, %9740
  %9742 = fmul fast float %9727, %9676
  %9743 = fadd fast float %9742, %9597
  %9744 = fmul fast float %9739, %9677
  %9745 = fadd fast float %9744, %9598
  %9746 = fmul fast float %9734, %9677
  %9747 = fsub fast float %9598, %9746
  %9748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9741, float %9747, float %9665, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9749 = extractvalue %dx.types.ResRet.f32 %9748, 0
  %9750 = extractvalue %dx.types.ResRet.f32 %9748, 1
  %9751 = extractvalue %dx.types.ResRet.f32 %9748, 2
  %9752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9743, float %9747, float %9665, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9753 = extractvalue %dx.types.ResRet.f32 %9752, 0
  %9754 = extractvalue %dx.types.ResRet.f32 %9752, 1
  %9755 = extractvalue %dx.types.ResRet.f32 %9752, 2
  %9756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9741, float %9745, float %9665, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9757 = extractvalue %dx.types.ResRet.f32 %9756, 0
  %9758 = extractvalue %dx.types.ResRet.f32 %9756, 1
  %9759 = extractvalue %dx.types.ResRet.f32 %9756, 2
  %9760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9743, float %9745, float %9665, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9761 = extractvalue %dx.types.ResRet.f32 %9760, 0
  %9762 = extractvalue %dx.types.ResRet.f32 %9760, 1
  %9763 = extractvalue %dx.types.ResRet.f32 %9760, 2
  %9764 = fsub fast float %9757, %9749
  %9765 = fsub fast float %9758, %9750
  %9766 = fsub fast float %9759, %9751
  %9767 = fmul fast float %9764, %9737
  %9768 = fmul fast float %9765, %9737
  %9769 = fmul fast float %9766, %9737
  %9770 = fadd fast float %9767, %9749
  %9771 = fadd fast float %9768, %9750
  %9772 = fadd fast float %9769, %9751
  %9773 = fsub fast float %9761, %9753
  %9774 = fsub fast float %9762, %9754
  %9775 = fsub fast float %9763, %9755
  %9776 = fmul fast float %9773, %9737
  %9777 = fmul fast float %9774, %9737
  %9778 = fmul fast float %9775, %9737
  %9779 = fsub fast float %9753, %9770
  %9780 = fadd fast float %9779, %9776
  %9781 = fsub fast float %9754, %9771
  %9782 = fadd fast float %9781, %9777
  %9783 = fsub fast float %9755, %9772
  %9784 = fadd fast float %9783, %9778
  %9785 = fmul fast float %9780, %9725
  %9786 = fmul fast float %9782, %9725
  %9787 = fmul fast float %9784, %9725
  %9788 = fadd fast float %9785, %9770
  %9789 = fadd fast float %9786, %9771
  %9790 = fadd fast float %9787, %9772
  %9791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9792 = extractvalue %dx.types.CBufRet.f32 %9791, 1
  %9793 = fmul fast float %9788, %9792
  %9794 = fmul fast float %9789, %9792
  %9795 = fmul fast float %9790, %9792
  br label %9796

; <label>:9796                                    ; preds = %9627, %9584
  %9797 = phi float [ %9667, %9627 ], [ 1.000000e+00, %9584 ]
  %9798 = phi float [ %9668, %9627 ], [ 1.000000e+00, %9584 ]
  %9799 = phi float [ %9669, %9627 ], [ 1.000000e+00, %9584 ]
  %9800 = phi float [ %9793, %9627 ], [ 0.000000e+00, %9584 ]
  %9801 = phi float [ %9794, %9627 ], [ 0.000000e+00, %9584 ]
  %9802 = phi float [ %9795, %9627 ], [ 0.000000e+00, %9584 ]
  %9803 = fmul fast float %9797, %9591
  %9804 = call float @dx.op.dot3.f32(i32 55, float %9797, float %9798, float %9799, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9805 = call float @dx.op.dot3.f32(i32 55, float %9800, float %9801, float %9802, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9806 = select i1 %247, float %9804, float %9797
  %9807 = select i1 %247, float %9804, float %9798
  %9808 = select i1 %247, float 1.000000e+00, float %9799
  %9809 = select i1 %247, float %9805, float %9800
  %9810 = select i1 %247, float 0.000000e+00, float %9801
  %9811 = select i1 %247, float 0.000000e+00, float %9802
  %9812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9813 = extractvalue %dx.types.CBufRet.i32 %9812, 3
  %9814 = and i32 %9813, 3
  %9815 = icmp ne i32 %9814, 0
  %9816 = and i32 %9813, 4
  %9817 = icmp ne i32 %9816, 0
  %9818 = and i1 %9815, %9817
  %9819 = and i1 %247, %9818
  br i1 %9819, label %9820, label %9826

; <label>:9820                                    ; preds = %9796
  %9821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9822 = extractvalue %dx.types.CBufRet.f32 %9821, 1
  %9823 = fadd fast float %9803, -1.000000e+00
  %9824 = fmul fast float %9822, %9823
  %9825 = fadd fast float %9824, 1.000000e+00
  br label %9826

; <label>:9826                                    ; preds = %9820, %9796
  %9827 = phi float [ %9825, %9820 ], [ %9803, %9796 ]
  %9828 = fadd fast float %9588, %9585
  %9829 = fmul fast float %9806, %9828
  %9830 = fadd fast float %9829, %9809
  %9831 = fadd fast float %9589, %9586
  %9832 = fmul fast float %9807, %9831
  %9833 = fadd fast float %9832, %9810
  %9834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9835 = extractvalue %dx.types.CBufRet.f32 %9834, 0
  br i1 %247, label %9836, label %9851

; <label>:9836                                    ; preds = %9826
  %9837 = fadd fast float %9830, %9833
  %9838 = fmul fast float %9835, %9837
  %9839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9840 = extractvalue %dx.types.CBufRet.f32 %9839, 3
  %9841 = extractvalue %dx.types.CBufRet.f32 %8151, 1
  %9842 = fsub fast float %8156, %8150
  %9843 = fadd fast float %9842, %8157
  %9844 = fsub fast float %9843, %9841
  %9845 = extractvalue %dx.types.CBufRet.f32 %8151, 2
  %9846 = fmul fast float %9844, %9845
  %9847 = call float @dx.op.unary.f32(i32 7, float %9846)  ; Saturate(value)
  %9848 = fsub fast float %9847, %9840
  %9849 = fmul fast float %9848, %9827
  %9850 = fadd fast float %9849, %9840
  br label %9875

; <label>:9851                                    ; preds = %9826
  %9852 = fadd fast float %9590, %9587
  %9853 = fmul fast float %9808, %9852
  %9854 = fadd fast float %9853, %9811
  %9855 = fmul fast float %9835, %9830
  %9856 = fmul fast float %9835, %9833
  %9857 = fmul fast float %9835, %9854
  %9858 = call float @dx.op.binary.f32(i32 35, float %9856, float %9857)  ; FMax(a,b)
  %9859 = call float @dx.op.binary.f32(i32 35, float %9855, float %9858)  ; FMax(a,b)
  %9860 = call float @dx.op.binary.f32(i32 35, float %9859, float 1.000000e+00)  ; FMax(a,b)
  %9861 = fcmp fast ugt float %9860, 0x3F10000000000000
  br i1 %9861, label %9863, label %9862

; <label>:9862                                    ; preds = %9851
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9863

; <label>:9863                                    ; preds = %9862, %9851
  %9864 = add i32 %50, 356
  %9865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %9864, i32 undef)  ; BufferLoad(srv,index,wot)
  %9866 = extractvalue %dx.types.ResRet.i32 %9865, 0
  %9867 = and i32 %9866, 32
  %9868 = icmp eq i32 %9867, 0
  br i1 %9868, label %9875, label %9869

; <label>:9869                                    ; preds = %9863
  %9870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9871 = extractvalue %dx.types.CBufRet.f32 %9870, 0
  %9872 = fmul fast float %9871, 0x3FE99999A0000000
  %9873 = fadd fast float %9871, %9855
  %9874 = fadd fast float %9872, %9857
  br label %9875

; <label>:9875                                    ; preds = %9869, %9863, %9836
  %9876 = phi float [ %9838, %9836 ], [ %9873, %9869 ], [ %9855, %9863 ]
  %9877 = phi float [ %9850, %9836 ], [ %9856, %9869 ], [ %9856, %9863 ]
  %9878 = phi float [ 1.000000e+00, %9836 ], [ %9874, %9869 ], [ %9857, %9863 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9879 = call float @dx.op.binary.f32(i32 36, float %9876, float 3.225500e+04)  ; FMin(a,b)
  %9880 = call float @dx.op.binary.f32(i32 36, float %9877, float 3.225500e+04)  ; FMin(a,b)
  %9881 = call float @dx.op.binary.f32(i32 36, float %9878, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9879)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9880)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9881)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!63}
!dx.entryPoints = !{!64}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !51, !54}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
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
!25 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!26 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!27 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!28 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!29 = !{i32 22, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !30}
!30 = !{i32 0, i32 5}
!31 = !{i32 23, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !38}
!38 = !{i32 0, i32 14}
!39 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!40 = !{i32 31, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!45 = !{i32 36, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!46 = !{i32 37, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!47 = !{i32 38, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!48 = !{i32 39, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !38}
!49 = !{i32 40, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!51 = !{!52, !53}
!52 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!53 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62}
!55 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!56 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!57 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!58 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!59 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!60 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!61 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!62 = !{i32 7, %struct.SamplerState* undef, !"", i32 0, i32 6, i32 1, i32 0, null}
!63 = !{[46 x i32] [i32 44, i32 8, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!64 = !{void ()* @ps_main, !"ps_main", !65, !4, !88}
!65 = !{!66, !84, null}
!66 = !{!67, !70, !71, !73, !75, !76, !77, !78, !79, !80, !81, !83}
!67 = !{i32 0, !"SV_Position", i8 9, i8 3, !68, i8 4, i32 1, i8 4, i32 0, i8 0, !69}
!68 = !{i32 0}
!69 = !{i32 3, i32 15}
!70 = !{i32 1, !"COLOR", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 1, i8 0, !69}
!71 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 2, i8 0, !72}
!72 = !{i32 3, i32 3}
!73 = !{i32 3, !"NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 3, i8 0, !74}
!74 = !{i32 3, i32 7}
!75 = !{i32 4, !"TANGENT", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 4, i8 0, !69}
!76 = !{i32 5, !"SH_RED", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 5, i8 0, !69}
!77 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 6, i8 0, !69}
!78 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 7, i8 0, !69}
!79 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 2, i32 8, i8 0, !72}
!80 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 9, i8 0, !69}
!81 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !68, i8 1, i32 1, i8 4, i32 10, i8 0, !82}
!82 = !{i32 3, i32 13}
!83 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !68, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!84 = !{!85, !86}
!85 = !{i32 0, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 0, i8 0, !69}
!86 = !{i32 1, !"SV_Target", i8 9, i8 16, !87, i8 0, i32 1, i8 4, i32 1, i8 0, !69}
!87 = !{i32 1}
!88 = !{i32 0, i64 16}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
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
!114 = distinct !{!114, !91}
!115 = distinct !{!115, !91}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = !{!124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!124 = distinct !{!124, !125, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!125 = distinct !{!125, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!126 = distinct !{!126, !127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!127 = distinct !{!127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!128 = distinct !{!128, !127, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!129 = distinct !{!129, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!130 = distinct !{!130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!131 = distinct !{!131, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!132 = distinct !{!132, !130, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!133 = distinct !{!133, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!134 = distinct !{!134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!135 = distinct !{!135, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!136 = distinct !{!136, !134, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!137 = distinct !{!137, !138, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!138 = distinct !{!138, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!139 = !{!140}
!140 = distinct !{!140, !141, !"\01?sort@@YAXAIAM00@Z: %c"}
!141 = distinct !{!141, !"\01?sort@@YAXAIAM00@Z"}
!142 = !{!143, !144, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!143 = distinct !{!143, !141, !"\01?sort@@YAXAIAM00@Z: %a"}
!144 = distinct !{!144, !141, !"\01?sort@@YAXAIAM00@Z: %b"}
!145 = !{!144}
!146 = !{!143, !140, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!147 = !{!143}
!148 = !{!144, !140, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!149 = !{!150}
!150 = distinct !{!150, !151, !"\01?sort@@YAXAIAM00@Z: %c"}
!151 = distinct !{!151, !"\01?sort@@YAXAIAM00@Z"}
!152 = !{!153, !154, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!153 = distinct !{!153, !151, !"\01?sort@@YAXAIAM00@Z: %a"}
!154 = distinct !{!154, !151, !"\01?sort@@YAXAIAM00@Z: %b"}
!155 = !{!154}
!156 = !{!153, !150, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!157 = !{!153}
!158 = !{!154, !150, !124, !126, !128, !129, !131, !132, !133, !135, !136, !137}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 2}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}

