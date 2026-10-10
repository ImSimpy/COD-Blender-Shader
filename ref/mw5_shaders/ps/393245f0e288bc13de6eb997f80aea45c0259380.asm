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
; shader hash: f5507f9f443eff19795eea7713422395
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
; Number of inputs: 44, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
  %407 = add i32 %48, 508
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
  %683 = add i32 %48, 440
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
  %735 = add i32 %48, 424
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
  %759 = add i32 %48, 376
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
  %782 = add i32 %48, 460
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
  %980 = add i32 %48, 392
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
  %1064 = add i32 %48, 408
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
  %1122 = add i32 %48, 476
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
  %1163 = add i32 %48, 492
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
  %1233 = phi float [ 0.000000e+00, %449 ], [ %1207, %1206 ]
  %1234 = phi float [ 0.000000e+00, %449 ], [ %1208, %1206 ]
  %1235 = phi float [ 0.000000e+00, %449 ], [ %1209, %1206 ]
  %1236 = phi float [ 0.000000e+00, %449 ], [ %1155, %1206 ]
  %1237 = phi float [ 0.000000e+00, %449 ], [ %1156, %1206 ]
  %1238 = phi float [ 0.000000e+00, %449 ], [ %1157, %1206 ]
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
  %1474 = add i32 %48, 444
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
  %1526 = add i32 %48, 428
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
  %1552 = add i32 %48, 380
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
  %1575 = add i32 %48, 464
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
  %1773 = add i32 %48, 396
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
  %1857 = add i32 %48, 412
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
  %1915 = add i32 %48, 480
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
  %1956 = add i32 %48, 496
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
  %2185 = fsub fast float %1948, %1236
  %2186 = fsub fast float %1949, %1237
  %2187 = fsub fast float %1950, %1238
  %2188 = fmul fast float %2164, %2185
  %2189 = fmul fast float %2164, %2186
  %2190 = fmul fast float %2164, %2187
  %2191 = fadd fast float %2188, %1236
  %2192 = fadd fast float %2189, %1237
  %2193 = fadd fast float %2190, %1238
  %2194 = fsub fast float %2003, %1243
  %2195 = fmul fast float %2167, %2194
  %2196 = fadd fast float %2195, %1243
  %2197 = fsub fast float %2000, %1233
  %2198 = fsub fast float %2001, %1234
  %2199 = fsub fast float %2002, %1235
  %2200 = fmul fast float %2170, %2197
  %2201 = fmul fast float %2170, %2198
  %2202 = fmul fast float %2170, %2199
  %2203 = fadd fast float %2200, %1233
  %2204 = fadd fast float %2201, %1234
  %2205 = fadd fast float %2202, %1235
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
  %2243 = fadd fast float %2240, %1236
  %2244 = fadd fast float %2241, %1237
  %2245 = fadd fast float %2242, %1238
  %2246 = fmul fast float %2167, %2003
  %2247 = fadd fast float %2246, %1243
  %2248 = fmul fast float %2170, %2000
  %2249 = fmul fast float %2170, %2001
  %2250 = fmul fast float %2170, %2002
  %2251 = fadd fast float %2248, %1233
  %2252 = fadd fast float %2249, %1234
  %2253 = fadd fast float %2250, %1235
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
  %2271 = fadd fast float %2268, %1236
  %2272 = fadd fast float %2269, %1237
  %2273 = fadd fast float %2270, %1238
  %2274 = fmul fast float %2167, %2003
  %2275 = fadd fast float %2274, %1243
  %2276 = fmul fast float %2170, %2000
  %2277 = fmul fast float %2170, %2001
  %2278 = fmul fast float %2170, %2002
  %2279 = fadd fast float %2276, %1233
  %2280 = fadd fast float %2277, %1234
  %2281 = fadd fast float %2278, %1235
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
  %2291 = phi float [ %1233, %2141 ], [ %1233, %1541 ], [ %1233, %1224 ], [ %2279, %2256 ], [ %1233, %2254 ], [ %2251, %2208 ], [ %2203, %2172 ], [ %1233, %1245 ]
  %2292 = phi float [ %1234, %2141 ], [ %1234, %1541 ], [ %1234, %1224 ], [ %2280, %2256 ], [ %1234, %2254 ], [ %2252, %2208 ], [ %2204, %2172 ], [ %1234, %1245 ]
  %2293 = phi float [ %1235, %2141 ], [ %1235, %1541 ], [ %1235, %1224 ], [ %2281, %2256 ], [ %1235, %2254 ], [ %2253, %2208 ], [ %2205, %2172 ], [ %1235, %1245 ]
  %2294 = phi float [ %1236, %2141 ], [ %1236, %1541 ], [ %1236, %1224 ], [ %2271, %2256 ], [ %1236, %2254 ], [ %2243, %2208 ], [ %2191, %2172 ], [ %1236, %1245 ]
  %2295 = phi float [ %1237, %2141 ], [ %1237, %1541 ], [ %1237, %1224 ], [ %2272, %2256 ], [ %1237, %2254 ], [ %2244, %2208 ], [ %2192, %2172 ], [ %1237, %1245 ]
  %2296 = phi float [ %1238, %2141 ], [ %1238, %1541 ], [ %1238, %1224 ], [ %2273, %2256 ], [ %1238, %2254 ], [ %2245, %2208 ], [ %2193, %2172 ], [ %1238, %1245 ]
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
  %2531 = add i32 %48, 448
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
  %2583 = add i32 %48, 432
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
  %2609 = add i32 %48, 384
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
  %2632 = add i32 %48, 468
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
  %2830 = add i32 %48, 400
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
  %2914 = add i32 %48, 416
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
  %2972 = add i32 %48, 484
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
  %3013 = add i32 %48, 500
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
  %3242 = fsub fast float %3005, %2294
  %3243 = fsub fast float %3006, %2295
  %3244 = fsub fast float %3007, %2296
  %3245 = fmul fast float %3221, %3242
  %3246 = fmul fast float %3221, %3243
  %3247 = fmul fast float %3221, %3244
  %3248 = fadd fast float %3245, %2294
  %3249 = fadd fast float %3246, %2295
  %3250 = fadd fast float %3247, %2296
  %3251 = fsub fast float %3060, %2300
  %3252 = fmul fast float %3224, %3251
  %3253 = fadd fast float %3252, %2300
  %3254 = fsub fast float %3057, %2291
  %3255 = fsub fast float %3058, %2292
  %3256 = fsub fast float %3059, %2293
  %3257 = fmul fast float %3227, %3254
  %3258 = fmul fast float %3227, %3255
  %3259 = fmul fast float %3227, %3256
  %3260 = fadd fast float %3257, %2291
  %3261 = fadd fast float %3258, %2292
  %3262 = fadd fast float %3259, %2293
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
  %3300 = fadd fast float %3297, %2294
  %3301 = fadd fast float %3298, %2295
  %3302 = fadd fast float %3299, %2296
  %3303 = fmul fast float %3224, %3060
  %3304 = fadd fast float %3303, %2300
  %3305 = fmul fast float %3227, %3057
  %3306 = fmul fast float %3227, %3058
  %3307 = fmul fast float %3227, %3059
  %3308 = fadd fast float %3305, %2291
  %3309 = fadd fast float %3306, %2292
  %3310 = fadd fast float %3307, %2293
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
  %3328 = fadd fast float %3325, %2294
  %3329 = fadd fast float %3326, %2295
  %3330 = fadd fast float %3327, %2296
  %3331 = fmul fast float %3224, %3060
  %3332 = fadd fast float %3331, %2300
  %3333 = fmul fast float %3227, %3057
  %3334 = fmul fast float %3227, %3058
  %3335 = fmul fast float %3227, %3059
  %3336 = fadd fast float %3333, %2291
  %3337 = fadd fast float %3334, %2292
  %3338 = fadd fast float %3335, %2293
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
  %3348 = phi float [ %2291, %3198 ], [ %2291, %2598 ], [ %2291, %2282 ], [ %3336, %3313 ], [ %2291, %3311 ], [ %3308, %3265 ], [ %3260, %3229 ], [ %2291, %2302 ]
  %3349 = phi float [ %2292, %3198 ], [ %2292, %2598 ], [ %2292, %2282 ], [ %3337, %3313 ], [ %2292, %3311 ], [ %3309, %3265 ], [ %3261, %3229 ], [ %2292, %2302 ]
  %3350 = phi float [ %2293, %3198 ], [ %2293, %2598 ], [ %2293, %2282 ], [ %3338, %3313 ], [ %2293, %3311 ], [ %3310, %3265 ], [ %3262, %3229 ], [ %2293, %2302 ]
  %3351 = phi float [ %2294, %3198 ], [ %2294, %2598 ], [ %2294, %2282 ], [ %3328, %3313 ], [ %2294, %3311 ], [ %3300, %3265 ], [ %3248, %3229 ], [ %2294, %2302 ]
  %3352 = phi float [ %2295, %3198 ], [ %2295, %2598 ], [ %2295, %2282 ], [ %3329, %3313 ], [ %2295, %3311 ], [ %3301, %3265 ], [ %3249, %3229 ], [ %2295, %2302 ]
  %3353 = phi float [ %2296, %3198 ], [ %2296, %2598 ], [ %2296, %2282 ], [ %3330, %3313 ], [ %2296, %3311 ], [ %3302, %3265 ], [ %3250, %3229 ], [ %2296, %2302 ]
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
  %3588 = add i32 %48, 452
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
  %3640 = add i32 %48, 436
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
  %3666 = add i32 %48, 388
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
  %3689 = add i32 %48, 472
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
  %3887 = add i32 %48, 404
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
  %3971 = add i32 %48, 420
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
  %4029 = add i32 %48, 488
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
  %4070 = add i32 %48, 504
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
  %4299 = fsub fast float %4062, %3351
  %4300 = fsub fast float %4063, %3352
  %4301 = fsub fast float %4064, %3353
  %4302 = fmul fast float %4278, %4299
  %4303 = fmul fast float %4278, %4300
  %4304 = fmul fast float %4278, %4301
  %4305 = fadd fast float %4302, %3351
  %4306 = fadd fast float %4303, %3352
  %4307 = fadd fast float %4304, %3353
  %4308 = fsub fast float %4117, %3357
  %4309 = fmul fast float %4281, %4308
  %4310 = fadd fast float %4309, %3357
  %4311 = fsub fast float %4114, %3348
  %4312 = fsub fast float %4115, %3349
  %4313 = fsub fast float %4116, %3350
  %4314 = fmul fast float %4284, %4311
  %4315 = fmul fast float %4284, %4312
  %4316 = fmul fast float %4284, %4313
  %4317 = fadd fast float %4314, %3348
  %4318 = fadd fast float %4315, %3349
  %4319 = fadd fast float %4316, %3350
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
  %4357 = fadd fast float %4354, %3351
  %4358 = fadd fast float %4355, %3352
  %4359 = fadd fast float %4356, %3353
  %4360 = fmul fast float %4281, %4117
  %4361 = fadd fast float %4360, %3357
  %4362 = fmul fast float %4284, %4114
  %4363 = fmul fast float %4284, %4115
  %4364 = fmul fast float %4284, %4116
  %4365 = fadd fast float %4362, %3348
  %4366 = fadd fast float %4363, %3349
  %4367 = fadd fast float %4364, %3350
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
  %4385 = fadd fast float %4382, %3351
  %4386 = fadd fast float %4383, %3352
  %4387 = fadd fast float %4384, %3353
  %4388 = fmul fast float %4281, %4117
  %4389 = fadd fast float %4388, %3357
  %4390 = fmul fast float %4284, %4114
  %4391 = fmul fast float %4284, %4115
  %4392 = fmul fast float %4284, %4116
  %4393 = fadd fast float %4390, %3348
  %4394 = fadd fast float %4391, %3349
  %4395 = fadd fast float %4392, %3350
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
  %4405 = phi float [ %3348, %4255 ], [ %3348, %3655 ], [ %3348, %3339 ], [ %3348, %3359 ], [ %4317, %4286 ], [ %4365, %4322 ], [ %3348, %4368 ], [ %4393, %4370 ]
  %4406 = phi float [ %3349, %4255 ], [ %3349, %3655 ], [ %3349, %3339 ], [ %3349, %3359 ], [ %4318, %4286 ], [ %4366, %4322 ], [ %3349, %4368 ], [ %4394, %4370 ]
  %4407 = phi float [ %3350, %4255 ], [ %3350, %3655 ], [ %3350, %3339 ], [ %3350, %3359 ], [ %4319, %4286 ], [ %4367, %4322 ], [ %3350, %4368 ], [ %4395, %4370 ]
  %4408 = phi float [ %3351, %4255 ], [ %3351, %3655 ], [ %3351, %3339 ], [ %3351, %3359 ], [ %4305, %4286 ], [ %4357, %4322 ], [ %3351, %4368 ], [ %4385, %4370 ]
  %4409 = phi float [ %3352, %4255 ], [ %3352, %3655 ], [ %3352, %3339 ], [ %3352, %3359 ], [ %4306, %4286 ], [ %4358, %4322 ], [ %3352, %4368 ], [ %4386, %4370 ]
  %4410 = phi float [ %3353, %4255 ], [ %3353, %3655 ], [ %3353, %3339 ], [ %3353, %3359 ], [ %4307, %4286 ], [ %4359, %4322 ], [ %3353, %4368 ], [ %4387, %4370 ]
  %4411 = phi float [ %4262, %4255 ], [ %3354, %3655 ], [ %3354, %3339 ], [ %3354, %3359 ], [ %4262, %4286 ], [ %4262, %4322 ], [ %4262, %4368 ], [ %4262, %4370 ]
  %4412 = phi float [ %3355, %4255 ], [ %3355, %3655 ], [ %3355, %3339 ], [ %3355, %3359 ], [ %4298, %4286 ], [ %4353, %4322 ], [ %3355, %4368 ], [ %4381, %4370 ]
  %4413 = phi float [ %3356, %4255 ], [ %3356, %3655 ], [ %3356, %3339 ], [ %3356, %3359 ], [ %4295, %4286 ], [ %4330, %4322 ], [ %3356, %4368 ], [ %4378, %4370 ]
  %4414 = phi float [ %3357, %4255 ], [ %3357, %3655 ], [ %3357, %3339 ], [ %3357, %3359 ], [ %4310, %4286 ], [ %4361, %4322 ], [ %3357, %4368 ], [ %4389, %4370 ]
  %4415 = phi float [ %4263, %4255 ], [ %3358, %3655 ], [ %3358, %3339 ], [ %3358, %3359 ], [ %4263, %4286 ], [ %4263, %4322 ], [ %4263, %4368 ], [ %4263, %4370 ]
  %4416 = add i32 %48, 360
  %4417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4416, i32 undef)  ; BufferLoad(srv,index,wot)
  %4418 = extractvalue %dx.types.ResRet.i32 %4417, 0
  %4419 = extractvalue %dx.types.ResRet.i32 %4417, 1
  %4420 = bitcast i32 %4418 to float
  %4421 = bitcast i32 %4419 to float
  %4422 = fcmp fast oge float %4420, 0.000000e+00
  %4423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.f32 %4423, 0
  %4425 = select i1 %4422, float %4420, float %4424
  %4426 = add i32 %48, 456
  %4427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4426, i32 undef)  ; BufferLoad(srv,index,wot)
  %4428 = extractvalue %dx.types.ResRet.i32 %4427, 0
  %4429 = add i32 %4428, 0
  %4430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4431 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4430, %dx.types.Handle %94, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = fmul fast float %4432, %4421
  %4434 = fadd fast float %4433, %4425
  %4435 = call float @dx.op.dot2.f32(i32 54, float %4397, float %4398, float %4397, float %4398)  ; Dot2(ax,ay,bx,by)
  %4436 = fmul fast float %4435, 0x3FE3333340000000
  %4437 = fsub fast float 1.000000e+00, %4436
  %4438 = call float @dx.op.dot3.f32(i32 55, float %4397, float %4398, float %4437, float %4397, float %4398, float %4437)  ; Dot3(ax,ay,az,bx,by,bz)
  %4439 = call float @dx.op.unary.f32(i32 25, float %4438)  ; Rsqrt(value)
  %4440 = fmul fast float %4439, %4397
  %4441 = fmul fast float %4439, %4398
  %4442 = fmul fast float %4437, %4439
  %4443 = fmul fast float %4442, %104
  %4444 = fmul fast float %4442, %105
  %4445 = fmul fast float %4442, %106
  %4446 = fmul fast float %4440, %69
  %4447 = fmul fast float %4440, %70
  %4448 = fmul fast float %4440, %71
  %4449 = fadd fast float %4443, %4446
  %4450 = fadd fast float %4444, %4447
  %4451 = fadd fast float %4445, %4448
  %4452 = fmul fast float %116, %4441
  %4453 = fmul fast float %117, %4441
  %4454 = fmul fast float %118, %4441
  %4455 = fadd fast float %4449, %4452
  %4456 = fadd fast float %4450, %4453
  %4457 = fadd fast float %4451, %4454
  %4458 = call float @dx.op.dot3.f32(i32 55, float %4455, float %4456, float %4457, float %4455, float %4456, float %4457)  ; Dot3(ax,ay,az,bx,by,bz)
  %4459 = call float @dx.op.unary.f32(i32 25, float %4458)  ; Rsqrt(value)
  %4460 = fmul fast float %4455, %4459
  %4461 = fmul fast float %4456, %4459
  %4462 = fmul fast float %4457, %4459
  %4463 = and i32 %50, 1
  %4464 = icmp eq i32 %4463, 0
  br i1 %4464, label %4465, label %5057

; <label>:4465                                    ; preds = %4396
  %4466 = call float @dx.op.unary.f32(i32 83, float %152)  ; DerivCoarseX(value)
  %4467 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %4468 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4469 = call float @dx.op.unary.f32(i32 84, float %152)  ; DerivCoarseY(value)
  %4470 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %4471 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4472 = fadd fast float %4466, %152
  %4473 = fadd fast float %4467, %153
  %4474 = fadd fast float %4468, %154
  %4475 = fadd fast float %4469, %152
  %4476 = fadd fast float %4470, %153
  %4477 = fadd fast float %4471, %154
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 0
  %4480 = extractvalue %dx.types.CBufRet.f32 %4478, 1
  %4481 = extractvalue %dx.types.CBufRet.f32 %4478, 2
  %4482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.f32 %4482, 2
  %4484 = extractvalue %dx.types.CBufRet.f32 %4482, 3
  %4485 = fmul fast float %4479, %97
  %4486 = fmul fast float %4485, %4483
  %4487 = fmul fast float %4480, %98
  %4488 = fmul fast float %4487, %4484
  %4489 = fptoui float %4486 to i32
  %4490 = fptoui float %4488 to i32
  %4491 = fadd fast float %4479, -1.000000e+00
  %4492 = fadd fast float %4480, -1.000000e+00
  %4493 = fptoui float %4491 to i32
  %4494 = fptoui float %4492 to i32
  %4495 = call i32 @dx.op.binary.i32(i32 40, i32 %4489, i32 %4493)  ; UMin(a,b)
  %4496 = call i32 @dx.op.binary.i32(i32 40, i32 %4490, i32 %4494)  ; UMin(a,b)
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 2
  %4499 = extractvalue %dx.types.CBufRet.f32 %4497, 3
  %4500 = fmul fast float %4498, %85
  %4501 = fsub fast float %4500, %4499
  %4502 = fadd fast float %4481, -1.000000e+00
  %4503 = call float @dx.op.binary.f32(i32 36, float %4501, float %4502)  ; FMin(a,b)
  %4504 = fptoui float %4503 to i32
  %4505 = fptoui float %4479 to i32
  %4506 = fptoui float %4480 to i32
  %4507 = mul i32 %4504, %4506
  %4508 = add i32 %4507, %4496
  %4509 = mul i32 %4508, %4505
  %4510 = add i32 %4509, %4495
  %4511 = shl i32 %4510, 2
  %4512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4511, i32 undef)  ; BufferLoad(srv,index,wot)
  %4513 = extractvalue %dx.types.ResRet.i32 %4512, 0
  %4514 = and i32 %4513, 1023
  %4515 = lshr i32 %4513, 10
  %4516 = icmp eq i32 %4514, 0
  br i1 %4516, label %5020, label %4517

; <label>:4517                                    ; preds = %4465
  %4518 = and i32 %4513, 1023
  br label %4519

; <label>:4519                                    ; preds = %4651, %4517
  %4520 = phi i32 [ %4601, %4651 ], [ 0, %4517 ]
  %4521 = phi float [ %4652, %4651 ], [ 0.000000e+00, %4517 ]
  %4522 = phi float [ %4653, %4651 ], [ %4434, %4517 ]
  %4523 = phi float [ %4654, %4651 ], [ %4415, %4517 ]
  %4524 = phi float [ %4655, %4651 ], [ %4408, %4517 ]
  %4525 = phi float [ %4656, %4651 ], [ %4409, %4517 ]
  %4526 = phi float [ %4657, %4651 ], [ %4410, %4517 ]
  %4527 = phi float [ %4658, %4651 ], [ 0.000000e+00, %4517 ]
  %4528 = phi float [ %4659, %4651 ], [ 0.000000e+00, %4517 ]
  %4529 = phi float [ %4660, %4651 ], [ %4405, %4517 ]
  %4530 = phi float [ %4661, %4651 ], [ %4406, %4517 ]
  %4531 = phi float [ %4662, %4651 ], [ %4407, %4517 ]
  %4532 = phi float [ %4663, %4651 ], [ %4402, %4517 ]
  %4533 = phi float [ %4664, %4651 ], [ %4403, %4517 ]
  %4534 = phi float [ %4665, %4651 ], [ %4404, %4517 ]
  %4535 = phi float [ %4666, %4651 ], [ %4460, %4517 ]
  %4536 = phi float [ %4667, %4651 ], [ %4461, %4517 ]
  %4537 = phi float [ %4668, %4651 ], [ %4462, %4517 ]
  %4538 = phi float [ %4669, %4651 ], [ %4413, %4517 ]
  %4539 = phi float [ %4670, %4651 ], [ %4412, %4517 ]
  %4540 = phi float [ %4671, %4651 ], [ 0.000000e+00, %4517 ]
  %4541 = phi float [ %4672, %4651 ], [ %4411, %4517 ]
  %4542 = phi float [ %4673, %4651 ], [ %4399, %4517 ]
  %4543 = phi float [ %4674, %4651 ], [ %4400, %4517 ]
  %4544 = phi float [ %4675, %4651 ], [ %4401, %4517 ]
  %4545 = add nuw nsw i32 %4520, %4515
  %4546 = shl i32 %4545, 2
  %4547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4546, i32 undef)  ; BufferLoad(srv,index,wot)
  %4548 = extractvalue %dx.types.ResRet.i32 %4547, 0
  %4549 = shl i32 %4548, 8
  %4550 = or i32 %4549, 48
  %4551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4550, i32 undef)  ; BufferLoad(srv,index,wot)
  %4552 = extractvalue %dx.types.ResRet.f32 %4551, 0
  %4553 = extractvalue %dx.types.ResRet.f32 %4551, 1
  %4554 = extractvalue %dx.types.ResRet.f32 %4551, 2
  %4555 = extractvalue %dx.types.ResRet.f32 %4551, 3
  %4556 = or i32 %4549, 64
  %4557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.i32 %4557, 0
  %4559 = extractvalue %dx.types.ResRet.i32 %4557, 1
  %4560 = or i32 %4549, 80
  %4561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4560, i32 undef)  ; BufferLoad(srv,index,wot)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 2
  %4563 = extractvalue %dx.types.ResRet.f32 %4561, 3
  %4564 = or i32 %4549, 96
  %4565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4564, i32 undef)  ; BufferLoad(srv,index,wot)
  %4566 = extractvalue %dx.types.ResRet.f32 %4565, 0
  %4567 = extractvalue %dx.types.ResRet.f32 %4565, 1
  %4568 = extractvalue %dx.types.ResRet.f32 %4565, 2
  %4569 = extractvalue %dx.types.ResRet.f32 %4565, 3
  %4570 = or i32 %4549, 112
  %4571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4570, i32 undef)  ; BufferLoad(srv,index,wot)
  %4572 = extractvalue %dx.types.ResRet.f32 %4571, 2
  %4573 = or i32 %4549, 128
  %4574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4573, i32 undef)  ; BufferLoad(srv,index,wot)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 1
  %4577 = extractvalue %dx.types.ResRet.f32 %4574, 2
  %4578 = extractvalue %dx.types.ResRet.f32 %4574, 3
  %4579 = or i32 %4549, 144
  %4580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4582 = extractvalue %dx.types.ResRet.f32 %4580, 1
  %4583 = extractvalue %dx.types.ResRet.f32 %4580, 2
  %4584 = extractvalue %dx.types.ResRet.f32 %4580, 3
  %4585 = or i32 %4549, 160
  %4586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4585, i32 undef)  ; BufferLoad(srv,index,wot)
  %4587 = extractvalue %dx.types.ResRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.ResRet.f32 %4586, 1
  %4589 = extractvalue %dx.types.ResRet.f32 %4586, 2
  %4590 = extractvalue %dx.types.ResRet.f32 %4586, 3
  %4591 = or i32 %4549, 192
  %4592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4591, i32 undef)  ; BufferLoad(srv,index,wot)
  %4593 = extractvalue %dx.types.ResRet.i32 %4592, 0
  %4594 = or i32 %4549, 208
  %4595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4594, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.f32 %4595, 0
  %4597 = or i32 %4549, 248
  %4598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4601 = add nuw nsw i32 %4520, 1
  %4602 = bitcast float %4555 to i32
  %4603 = and i32 %4602, 512
  %4604 = icmp eq i32 %4603, 0
  %4605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4549, i32 undef)  ; BufferLoad(srv,index,wot)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.ResRet.f32 %4605, 2
  %4609 = extractvalue %dx.types.ResRet.f32 %4605, 3
  %4610 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4611 = or i32 %4549, 16
  %4612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4611, i32 undef)  ; BufferLoad(srv,index,wot)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.ResRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.ResRet.f32 %4612, 2
  %4616 = extractvalue %dx.types.ResRet.f32 %4612, 3
  %4617 = call float @dx.op.dot4.f32(i32 56, float %4613, float %4614, float %4615, float %4616, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4618 = or i32 %4549, 32
  %4619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4618, i32 undef)  ; BufferLoad(srv,index,wot)
  %4620 = extractvalue %dx.types.ResRet.f32 %4619, 0
  %4621 = extractvalue %dx.types.ResRet.f32 %4619, 1
  %4622 = extractvalue %dx.types.ResRet.f32 %4619, 2
  %4623 = extractvalue %dx.types.ResRet.f32 %4619, 3
  %4624 = call float @dx.op.dot4.f32(i32 56, float %4620, float %4621, float %4622, float %4623, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4625 = call float @dx.op.unary.f32(i32 27, float %4610)  ; Round_ni(value)
  %4626 = call float @dx.op.unary.f32(i32 6, float %4625)  ; FAbs(value)
  %4627 = call float @dx.op.unary.f32(i32 27, float %4617)  ; Round_ni(value)
  %4628 = call float @dx.op.unary.f32(i32 6, float %4627)  ; FAbs(value)
  %4629 = call float @dx.op.unary.f32(i32 6, float %4624)  ; FAbs(value)
  %4630 = call float @dx.op.unary.f32(i32 27, float %4629)  ; Round_ni(value)
  %4631 = fadd fast float %4628, %4626
  %4632 = fadd fast float %4631, %4630
  %4633 = fcmp fast oeq float %4632, 0.000000e+00
  %4634 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %4472, float %4473, float %4474, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4635 = call float @dx.op.dot4.f32(i32 56, float %4613, float %4614, float %4615, float %4616, float %4472, float %4473, float %4474, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4636 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %4475, float %4476, float %4477, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4637 = call float @dx.op.dot4.f32(i32 56, float %4613, float %4614, float %4615, float %4616, float %4475, float %4476, float %4477, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4638 = fsub fast float %4634, %4610
  %4639 = fsub fast float %4636, %4610
  %4640 = fsub fast float %4635, %4617
  %4641 = fsub fast float %4637, %4617
  %4642 = call float @dx.op.dot3.f32(i32 55, float %4552, float %4553, float %4554, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 2
  %4645 = fadd fast float %4644, %4642
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4643, 0
  %4648 = fcmp fast ogt float %4646, %4647
  %4649 = and i1 %4633, %4648
  %4650 = and i1 %4604, %4649
  br i1 %4650, label %4677, label %4651

; <label>:4651                                    ; preds = %5006, %4758, %4677, %4519
  %4652 = phi float [ %4521, %4677 ], [ %4761, %4758 ], [ %4761, %5006 ], [ %4521, %4519 ]
  %4653 = phi float [ %4522, %4677 ], [ %4522, %4758 ], [ %4982, %5006 ], [ %4522, %4519 ]
  %4654 = phi float [ %4523, %4677 ], [ %4523, %4758 ], [ %4980, %5006 ], [ %4523, %4519 ]
  %4655 = phi float [ %4524, %4677 ], [ %4524, %4758 ], [ %4958, %5006 ], [ %4524, %4519 ]
  %4656 = phi float [ %4525, %4677 ], [ %4525, %4758 ], [ %4959, %5006 ], [ %4525, %4519 ]
  %4657 = phi float [ %4526, %4677 ], [ %4526, %4758 ], [ %4960, %5006 ], [ %4526, %4519 ]
  %4658 = phi float [ %4527, %4677 ], [ %4527, %4758 ], [ %4885, %5006 ], [ %4527, %4519 ]
  %4659 = phi float [ %4528, %4677 ], [ %4528, %4758 ], [ %4883, %5006 ], [ %4528, %4519 ]
  %4660 = phi float [ %4529, %4677 ], [ %4529, %4758 ], [ %4928, %5006 ], [ %4529, %4519 ]
  %4661 = phi float [ %4530, %4677 ], [ %4530, %4758 ], [ %4929, %5006 ], [ %4530, %4519 ]
  %4662 = phi float [ %4531, %4677 ], [ %4531, %4758 ], [ %4930, %5006 ], [ %4531, %4519 ]
  %4663 = phi float [ %4532, %4677 ], [ %4532, %4758 ], [ %5016, %5006 ], [ %4532, %4519 ]
  %4664 = phi float [ %4533, %4677 ], [ %4533, %4758 ], [ %5017, %5006 ], [ %4533, %4519 ]
  %4665 = phi float [ %4534, %4677 ], [ %4534, %4758 ], [ %5018, %5006 ], [ %4534, %4519 ]
  %4666 = phi float [ %4535, %4677 ], [ %4535, %4758 ], [ %4864, %5006 ], [ %4535, %4519 ]
  %4667 = phi float [ %4536, %4677 ], [ %4536, %4758 ], [ %4865, %5006 ], [ %4536, %4519 ]
  %4668 = phi float [ %4537, %4677 ], [ %4537, %4758 ], [ %4866, %5006 ], [ %4537, %4519 ]
  %4669 = phi float [ %4538, %4677 ], [ %4538, %4758 ], [ %4938, %5006 ], [ %4538, %4519 ]
  %4670 = phi float [ %4539, %4677 ], [ %4539, %4758 ], [ %4935, %5006 ], [ %4539, %4519 ]
  %4671 = phi float [ %4540, %4677 ], [ %4540, %4758 ], [ %4932, %5006 ], [ %4540, %4519 ]
  %4672 = phi float [ %4541, %4677 ], [ %4541, %4758 ], [ %4881, %5006 ], [ %4541, %4519 ]
  %4673 = phi float [ %4542, %4677 ], [ %4542, %4758 ], [ %4876, %5006 ], [ %4542, %4519 ]
  %4674 = phi float [ %4543, %4677 ], [ %4543, %4758 ], [ %4877, %5006 ], [ %4543, %4519 ]
  %4675 = phi float [ %4544, %4677 ], [ %4544, %4758 ], [ %4878, %5006 ], [ %4544, %4519 ]
  %4676 = icmp eq i32 %4601, %4518
  br i1 %4676, label %5019, label %4519

; <label>:4677                                    ; preds = %4519
  %4678 = extractvalue %dx.types.ResRet.f32 %4571, 3
  %4679 = extractvalue %dx.types.ResRet.f32 %4571, 1
  %4680 = extractvalue %dx.types.ResRet.f32 %4571, 0
  %4681 = extractvalue %dx.types.ResRet.f32 %4561, 1
  %4682 = extractvalue %dx.types.ResRet.f32 %4561, 0
  %4683 = extractvalue %dx.types.ResRet.i32 %4557, 3
  %4684 = extractvalue %dx.types.ResRet.i32 %4557, 2
  %4685 = add i32 %4683, 0
  %4686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4685, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4687 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4688 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4686, %dx.types.Handle %4687, float %4610, float %4617, float undef, float undef, i32 0, i32 0, i32 undef, float %4638, float %4640, float undef, float %4639, float %4641, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = fmul fast float %4689, %4682
  %4691 = fadd fast float %4690, %4681
  %4692 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4693 = fmul fast float %4610, %4566
  %4694 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4617, float %4693)  ; FMad(a,b,c)
  %4695 = fadd fast float %4694, %4680
  %4696 = fmul fast float %4610, %4568
  %4697 = call float @dx.op.tertiary.f32(i32 46, float %4569, float %4617, float %4696)  ; FMad(a,b,c)
  %4698 = fadd fast float %4697, %4679
  %4699 = fmul fast float %4638, %4566
  %4700 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4640, float %4699)  ; FMad(a,b,c)
  %4701 = fmul fast float %4638, %4568
  %4702 = call float @dx.op.tertiary.f32(i32 46, float %4569, float %4640, float %4701)  ; FMad(a,b,c)
  %4703 = fmul fast float %4639, %4566
  %4704 = call float @dx.op.tertiary.f32(i32 46, float %4567, float %4641, float %4703)  ; FMad(a,b,c)
  %4705 = fmul fast float %4639, %4568
  %4706 = call float @dx.op.tertiary.f32(i32 46, float %4569, float %4641, float %4705)  ; FMad(a,b,c)
  %4707 = add i32 %4684, 0
  %4708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4707, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4709 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4708, %dx.types.Handle %4687, float %4695, float %4698, float undef, float undef, i32 0, i32 0, i32 undef, float %4700, float %4702, float undef, float %4704, float %4706, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4710 = extractvalue %dx.types.ResRet.f32 %4709, 0
  %4711 = and i32 %4602, 1024
  %4712 = icmp ne i32 %4711, 0
  %4713 = fcmp fast ogt float %4710, 0x3FE0101020000000
  %4714 = uitofp i1 %4713 to float
  %4715 = select i1 %4712, float %4714, float %4710
  %4716 = and i32 %4602, 8192
  %4717 = icmp ne i32 %4716, 0
  %4718 = select i1 %4717, float %4678, float 1.000000e+00
  %4719 = fmul fast float %4610, 2.000000e+00
  %4720 = fadd fast float %4719, -1.000000e+00
  %4721 = call float @dx.op.unary.f32(i32 6, float %4720)  ; FAbs(value)
  %4722 = fmul fast float %4721, %4599
  %4723 = fsub fast float %4722, %4599
  %4724 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4725 = fmul fast float %4617, 2.000000e+00
  %4726 = fadd fast float %4725, -1.000000e+00
  %4727 = call float @dx.op.unary.f32(i32 6, float %4726)  ; FAbs(value)
  %4728 = fmul fast float %4727, %4600
  %4729 = fsub fast float %4728, %4600
  %4730 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4731 = fmul fast float %4629, %4562
  %4732 = fsub fast float %4731, %4562
  %4733 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4734 = fmul fast float %4692, %4718
  %4735 = fmul fast float %4734, %4689
  %4736 = fmul fast float %4735, %4724
  %4737 = fmul fast float %4736, %4715
  %4738 = fmul fast float %4737, %4730
  %4739 = fmul fast float %4738, %4733
  %4740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.f32 %4740, 1
  %4742 = extractvalue %dx.types.CBufRet.f32 %4740, 0
  %4743 = fsub fast float %4646, %4742
  %4744 = fmul fast float %4743, %4741
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4739, %4563
  %4747 = fadd fast float %4739, %4563
  %4748 = fmul fast float %4747, %4572
  %4749 = fsub fast float %4748, %4572
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4751 = and i32 %4602, 128
  %4752 = icmp ne i32 %4751, 0
  %4753 = select i1 %4752, float %4750, float %4746
  %4754 = fmul fast float %4753, %4745
  %4755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4756 = extractvalue %dx.types.CBufRet.f32 %4755, 0
  %4757 = fcmp fast ugt float %4754, %4756
  br i1 %4757, label %4758, label %4651

; <label>:4758                                    ; preds = %4677
  %4759 = select i1 %4717, float %4754, float 0.000000e+00
  %4760 = fadd fast float %4759, %4521
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  br i1 %4717, label %4651, label %4762

; <label>:4762                                    ; preds = %4758
  %4763 = and i32 %4602, 4
  %4764 = and i32 %4602, 8
  %4765 = add i32 %4558, 0
  %4766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4765, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4768 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4766, %dx.types.Handle %4767, float %4695, float %4698, float undef, float undef, i32 0, i32 0, i32 undef, float %4700, float %4702, float undef, float %4704, float %4706, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4769 = extractvalue %dx.types.ResRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.ResRet.f32 %4768, 1
  %4771 = extractvalue %dx.types.ResRet.f32 %4768, 2
  %4772 = extractvalue %dx.types.ResRet.f32 %4768, 3
  %4773 = bitcast float %4584 to i32
  %4774 = and i32 %4773, 255
  %4775 = uitofp i32 %4774 to float
  %4776 = lshr i32 %4773, 8
  %4777 = and i32 %4776, 255
  %4778 = uitofp i32 %4777 to float
  %4779 = fmul fast float %4772, %4775
  %4780 = fadd fast float %4779, %4778
  %4781 = fmul fast float %4780, 0x3F70101000000000
  %4782 = add i32 %4559, 0
  %4783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4782, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4784 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4783, %dx.types.Handle %4767, float %4695, float %4698, float undef, float undef, i32 0, i32 0, i32 undef, float %4700, float %4702, float undef, float %4704, float %4706, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4785 = extractvalue %dx.types.ResRet.f32 %4784, 0
  %4786 = extractvalue %dx.types.ResRet.f32 %4784, 1
  %4787 = extractvalue %dx.types.ResRet.f32 %4784, 2
  %4788 = extractvalue %dx.types.ResRet.f32 %4784, 3
  %4789 = bitcast float %4578 to i32
  %4790 = and i32 %4789, 255
  %4791 = uitofp i32 %4790 to float
  %4792 = lshr i32 %4789, 8
  %4793 = and i32 %4792, 255
  %4794 = uitofp i32 %4793 to float
  %4795 = lshr i32 %4789, 16
  %4796 = and i32 %4795, 255
  %4797 = uitofp i32 %4796 to float
  %4798 = fmul fast float %4797, 0x3F70101000000000
  %4799 = fmul fast float %4785, %4791
  %4800 = fadd fast float %4799, %4794
  %4801 = fmul fast float %4800, 0x3F70101000000000
  %4802 = fadd fast float %4786, -5.000000e-01
  %4803 = fadd fast float %4788, -5.000000e-01
  %4804 = fmul fast float %4802, %4798
  %4805 = fmul fast float %4803, %4798
  %4806 = fadd fast float %4804, 5.000000e-01
  %4807 = fadd fast float %4805, 5.000000e-01
  %4808 = fmul fast float %4769, %4587
  %4809 = fmul fast float %4770, %4588
  %4810 = fmul fast float %4771, %4589
  %4811 = fmul fast float %4806, 2.000000e+00
  %4812 = fadd fast float %4811, -1.000000e+00
  %4813 = fmul fast float %4807, 2.000000e+00
  %4814 = fadd fast float %4813, -1.000000e+00
  %4815 = fadd fast float %4812, %4814
  %4816 = fmul fast float %4815, 5.000000e-01
  %4817 = fsub fast float %4812, %4814
  %4818 = fmul fast float %4817, 5.000000e-01
  %4819 = call float @dx.op.unary.f32(i32 6, float %4816)  ; FAbs(value)
  %4820 = fsub fast float 1.000000e+00, %4819
  %4821 = call float @dx.op.unary.f32(i32 6, float %4818)  ; FAbs(value)
  %4822 = fsub fast float %4820, %4821
  %4823 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4818, float %4822, float %4816, float %4818, float %4822)  ; Dot3(ax,ay,az,bx,by,bz)
  %4824 = call float @dx.op.unary.f32(i32 25, float %4823)  ; Rsqrt(value)
  %4825 = fmul fast float %4816, %4824
  %4826 = fmul fast float %4818, %4824
  %4827 = fmul fast float %4824, %4822
  %4828 = fmul fast float %4827, %4552
  %4829 = fmul fast float %4827, %4553
  %4830 = fmul fast float %4827, %4554
  %4831 = fmul fast float %4825, %4575
  %4832 = fmul fast float %4825, %4576
  %4833 = fmul fast float %4825, %4577
  %4834 = fadd fast float %4831, %4828
  %4835 = fadd fast float %4832, %4829
  %4836 = fadd fast float %4833, %4830
  %4837 = fmul fast float %4826, %4581
  %4838 = fmul fast float %4826, %4582
  %4839 = fmul fast float %4826, %4583
  %4840 = fadd fast float %4834, %4837
  %4841 = fadd fast float %4835, %4838
  %4842 = fadd fast float %4836, %4839
  %4843 = call float @dx.op.dot3.f32(i32 55, float %4840, float %4841, float %4842, float %4840, float %4841, float %4842)  ; Dot3(ax,ay,az,bx,by,bz)
  %4844 = call float @dx.op.unary.f32(i32 25, float %4843)  ; Rsqrt(value)
  %4845 = fmul fast float %4840, %4844
  %4846 = fmul fast float %4841, %4844
  %4847 = fmul fast float %4842, %4844
  %4848 = icmp ne i32 %4764, 0
  %4849 = select i1 %4848, float 1.000000e+00, float 0.000000e+00
  %4850 = fmul fast float %4754, %4849
  %4851 = and i32 %4602, 1
  %4852 = icmp eq i32 %4851, 0
  br i1 %4852, label %4853, label %4857

; <label>:4853                                    ; preds = %4762
  %4854 = fsub fast float %4845, %4535
  %4855 = fsub fast float %4846, %4536
  %4856 = fsub fast float %4847, %4537
  br label %4857

; <label>:4857                                    ; preds = %4853, %4762
  %4858 = phi float [ %4854, %4853 ], [ %4845, %4762 ]
  %4859 = phi float [ %4855, %4853 ], [ %4846, %4762 ]
  %4860 = phi float [ %4856, %4853 ], [ %4847, %4762 ]
  %4861 = fmul float %4860, %4850
  %4862 = fmul float %4859, %4850
  %4863 = fmul float %4858, %4850
  %4864 = fadd fast float %4863, %4535
  %4865 = fadd fast float %4862, %4536
  %4866 = fadd fast float %4861, %4537
  %4867 = icmp ne i32 %4763, 0
  %4868 = select i1 %4867, float 1.000000e+00, float 0.000000e+00
  %4869 = fmul fast float %4754, %4868
  %4870 = fsub fast float %4808, %4542
  %4871 = fsub fast float %4809, %4543
  %4872 = fsub fast float %4810, %4544
  %4873 = fmul fast float %4870, %4869
  %4874 = fmul fast float %4871, %4869
  %4875 = fmul fast float %4872, %4869
  %4876 = fadd fast float %4873, %4542
  %4877 = fadd fast float %4874, %4543
  %4878 = fadd fast float %4875, %4544
  %4879 = fsub fast float %4781, %4541
  %4880 = fmul fast float %4879, %4869
  %4881 = fadd fast float %4880, %4541
  %4882 = fmul fast float %4869, %4528
  %4883 = fsub fast float %4528, %4882
  %4884 = fmul fast float %4869, %4527
  %4885 = fsub fast float %4527, %4884
  %4886 = bitcast float %4596 to i32
  %4887 = lshr i32 %4886, 16
  %4888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4887)  ; LegacyF16ToF32(value)
  %4889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4890 = extractvalue %dx.types.ResRet.i32 %4889, 0
  %4891 = and i32 %4890, 1
  %4892 = icmp eq i32 %4891, 0
  br i1 %4892, label %4893, label %4918

; <label>:4893                                    ; preds = %4857
  %4894 = fadd fast float %4781, 0xBFB99999A0000000
  %4895 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4896 = fmul fast float %4895, 0x3FF1C71C80000000
  %4897 = fsub fast float 1.000000e+00, %4896
  %4898 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4899 = fmul fast float %4898, %4808
  %4900 = fmul fast float %4898, %4809
  %4901 = fmul fast float %4898, %4810
  %4902 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4903 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4904 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4905 = call float @dx.op.binary.f32(i32 35, float %4903, float %4904)  ; FMax(a,b)
  %4906 = call float @dx.op.binary.f32(i32 35, float %4902, float %4905)  ; FMax(a,b)
  %4907 = fcmp fast ogt float %4906, 0.000000e+00
  %4908 = bitcast float %4906 to i32
  %4909 = sub nsw i32 2129859010, %4908
  %4910 = bitcast i32 %4909 to float
  %4911 = select i1 %4907, float %4910, float 0.000000e+00
  %4912 = fmul fast float %4902, %4888
  %4913 = fmul fast float %4903, %4888
  %4914 = fmul fast float %4904, %4888
  %4915 = fmul fast float %4912, %4911
  %4916 = fmul fast float %4913, %4911
  %4917 = fmul fast float %4914, %4911
  br label %4918

; <label>:4918                                    ; preds = %4893, %4857
  %4919 = phi float [ %4888, %4857 ], [ %4915, %4893 ]
  %4920 = phi float [ %4888, %4857 ], [ %4916, %4893 ]
  %4921 = phi float [ %4888, %4857 ], [ %4917, %4893 ]
  %4922 = fsub fast float %4919, %4529
  %4923 = fsub fast float %4920, %4530
  %4924 = fsub fast float %4921, %4531
  %4925 = fmul fast float %4922, %4869
  %4926 = fmul fast float %4923, %4869
  %4927 = fmul fast float %4924, %4869
  %4928 = fadd fast float %4925, %4529
  %4929 = fadd fast float %4926, %4530
  %4930 = fadd fast float %4927, %4531
  %4931 = fadd fast float %4754, %4540
  %4932 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4933 = fsub fast float %4801, %4539
  %4934 = fmul fast float %4933, %4850
  %4935 = fadd fast float %4934, %4539
  %4936 = fsub fast float %4787, %4538
  %4937 = fmul fast float %4936, %4850
  %4938 = fadd fast float %4937, %4538
  br i1 %4852, label %4947, label %4939

; <label>:4939                                    ; preds = %4918
  %4940 = and i32 %4602, 32768
  %4941 = icmp eq i32 %4940, 0
  br i1 %4941, label %4957, label %4942

; <label>:4942                                    ; preds = %4939
  %4943 = fmul fast float %4850, 1.270000e+02
  %4944 = fadd fast float %4943, %4524
  %4945 = fadd fast float %4943, %4525
  %4946 = fadd fast float %4943, %4526
  br label %4957

; <label>:4947                                    ; preds = %4918
  %4948 = fsub fast float 1.270000e+02, %4524
  %4949 = fsub fast float 1.270000e+02, %4525
  %4950 = fsub fast float 1.270000e+02, %4526
  %4951 = fmul fast float %4850, %4948
  %4952 = fmul fast float %4850, %4949
  %4953 = fmul fast float %4850, %4950
  %4954 = fadd fast float %4951, %4524
  %4955 = fadd fast float %4952, %4525
  %4956 = fadd fast float %4953, %4526
  br label %4957

; <label>:4957                                    ; preds = %4947, %4942, %4939
  %4958 = phi float [ %4944, %4942 ], [ %4524, %4939 ], [ %4954, %4947 ]
  %4959 = phi float [ %4945, %4942 ], [ %4525, %4939 ], [ %4955, %4947 ]
  %4960 = phi float [ %4946, %4942 ], [ %4526, %4939 ], [ %4956, %4947 ]
  %4961 = call float @dx.op.dot3.f32(i32 55, float %4808, float %4809, float %4810, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.f32 %4962, 0
  %4964 = extractvalue %dx.types.CBufRet.f32 %4962, 1
  %4965 = fmul fast float %4964, %4961
  %4966 = fadd fast float %4965, %4963
  %4967 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4968 = bitcast float %4590 to i32
  %4969 = and i32 %4968, 65535
  %4970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4969)  ; LegacyF16ToF32(value)
  %4971 = lshr i32 %4968, 16
  %4972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4971)  ; LegacyF16ToF32(value)
  %4973 = fcmp fast oge float %4970, 0.000000e+00
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 0
  %4976 = select i1 %4973, float %4970, float %4975
  %4977 = fadd fast float %4976, %4972
  %4978 = fsub fast float %4967, %4523
  %4979 = fmul fast float %4978, %4754
  %4980 = fadd fast float %4979, %4523
  %4981 = fmul fast float %4977, %4754
  %4982 = call float @dx.op.binary.f32(i32 35, float %4522, float %4981)  ; FMax(a,b)
  %4983 = and i32 %4602, 16
  %4984 = icmp eq i32 %4983, 0
  br i1 %4984, label %5006, label %4985

; <label>:4985                                    ; preds = %4957
  %4986 = add i32 %4593, 0
  %4987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4986, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4988 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4987, %dx.types.Handle %4767, float %4695, float %4698, float undef, float undef, i32 0, i32 0, i32 undef, float %4700, float %4702, float undef, float %4704, float %4706, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4989 = extractvalue %dx.types.ResRet.f32 %4988, 0
  %4990 = extractvalue %dx.types.ResRet.f32 %4988, 1
  %4991 = extractvalue %dx.types.ResRet.f32 %4988, 2
  %4992 = and i32 %4886, 65535
  %4993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4992)  ; LegacyF16ToF32(value)
  %4994 = fmul fast float %4989, %4587
  %4995 = fmul fast float %4990, %4588
  %4996 = fmul fast float %4991, %4589
  %4997 = and i32 %4602, 16384
  %4998 = icmp ne i32 %4997, 0
  %4999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.f32 %4999, 0
  %5001 = select i1 %4998, float %5000, float 1.000000e+00
  %5002 = fmul fast float %5001, %4993
  %5003 = fmul fast float %4994, %5002
  %5004 = fmul fast float %4995, %5002
  %5005 = fmul fast float %4996, %5002
  br label %5006

; <label>:5006                                    ; preds = %4985, %4957
  %5007 = phi float [ %5003, %4985 ], [ 0.000000e+00, %4957 ]
  %5008 = phi float [ %5004, %4985 ], [ 0.000000e+00, %4957 ]
  %5009 = phi float [ %5005, %4985 ], [ 0.000000e+00, %4957 ]
  %5010 = fsub fast float %5007, %4532
  %5011 = fsub fast float %5008, %4533
  %5012 = fsub fast float %5009, %4534
  %5013 = fmul fast float %5010, %4754
  %5014 = fmul fast float %5011, %4754
  %5015 = fmul fast float %5012, %4754
  %5016 = fadd fast float %5013, %4532
  %5017 = fadd fast float %5014, %4533
  %5018 = fadd fast float %5015, %4534
  br label %4651

; <label>:5019                                    ; preds = %4651
  br label %5020

; <label>:5020                                    ; preds = %5019, %4465
  %5021 = phi float [ 0.000000e+00, %4465 ], [ %4652, %5019 ]
  %5022 = phi float [ %4434, %4465 ], [ %4653, %5019 ]
  %5023 = phi float [ %4415, %4465 ], [ %4654, %5019 ]
  %5024 = phi float [ %4408, %4465 ], [ %4655, %5019 ]
  %5025 = phi float [ %4409, %4465 ], [ %4656, %5019 ]
  %5026 = phi float [ %4410, %4465 ], [ %4657, %5019 ]
  %5027 = phi float [ 0.000000e+00, %4465 ], [ %4658, %5019 ]
  %5028 = phi float [ 0.000000e+00, %4465 ], [ %4659, %5019 ]
  %5029 = phi float [ %4405, %4465 ], [ %4660, %5019 ]
  %5030 = phi float [ %4406, %4465 ], [ %4661, %5019 ]
  %5031 = phi float [ %4407, %4465 ], [ %4662, %5019 ]
  %5032 = phi float [ %4402, %4465 ], [ %4663, %5019 ]
  %5033 = phi float [ %4403, %4465 ], [ %4664, %5019 ]
  %5034 = phi float [ %4404, %4465 ], [ %4665, %5019 ]
  %5035 = phi float [ %4460, %4465 ], [ %4666, %5019 ]
  %5036 = phi float [ %4461, %4465 ], [ %4667, %5019 ]
  %5037 = phi float [ %4462, %4465 ], [ %4668, %5019 ]
  %5038 = phi float [ %4413, %4465 ], [ %4669, %5019 ]
  %5039 = phi float [ %4412, %4465 ], [ %4670, %5019 ]
  %5040 = phi float [ 0.000000e+00, %4465 ], [ %4671, %5019 ]
  %5041 = phi float [ %4411, %4465 ], [ %4672, %5019 ]
  %5042 = phi float [ %4399, %4465 ], [ %4673, %5019 ]
  %5043 = phi float [ %4400, %4465 ], [ %4674, %5019 ]
  %5044 = phi float [ %4401, %4465 ], [ %4675, %5019 ]
  %5045 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float %5035, float %5036, float %5037)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = call float @dx.op.unary.f32(i32 25, float %5045)  ; Rsqrt(value)
  %5047 = fmul fast float %5046, %5035
  %5048 = fmul fast float %5046, %5036
  %5049 = fmul fast float %5046, %5037
  %5050 = fadd fast float %5040, %1240
  %5051 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5052 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5048, float %5049, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = call float @dx.op.unary.f32(i32 25, float %5052)  ; Rsqrt(value)
  %5054 = fmul fast float %5053, %5047
  %5055 = fmul fast float %5053, %5048
  %5056 = fmul fast float %5053, %5049
  br label %5057

; <label>:5057                                    ; preds = %5020, %4396
  %5058 = phi float [ %5054, %5020 ], [ %4460, %4396 ]
  %5059 = phi float [ %5055, %5020 ], [ %4461, %4396 ]
  %5060 = phi float [ %5056, %5020 ], [ %4462, %4396 ]
  %5061 = phi float [ %5042, %5020 ], [ %4399, %4396 ]
  %5062 = phi float [ %5043, %5020 ], [ %4400, %4396 ]
  %5063 = phi float [ %5044, %5020 ], [ %4401, %4396 ]
  %5064 = phi float [ %5032, %5020 ], [ %4402, %4396 ]
  %5065 = phi float [ %5033, %5020 ], [ %4403, %4396 ]
  %5066 = phi float [ %5034, %5020 ], [ %4404, %4396 ]
  %5067 = phi float [ %5024, %5020 ], [ %4408, %4396 ]
  %5068 = phi float [ %5025, %5020 ], [ %4409, %4396 ]
  %5069 = phi float [ %5026, %5020 ], [ %4410, %4396 ]
  %5070 = phi float [ %5029, %5020 ], [ %4405, %4396 ]
  %5071 = phi float [ %5030, %5020 ], [ %4406, %4396 ]
  %5072 = phi float [ %5031, %5020 ], [ %4407, %4396 ]
  %5073 = phi float [ %5041, %5020 ], [ %4411, %4396 ]
  %5074 = phi float [ %5051, %5020 ], [ %1240, %4396 ]
  %5075 = phi float [ %5039, %5020 ], [ %4412, %4396 ]
  %5076 = phi float [ %5038, %5020 ], [ %4413, %4396 ]
  %5077 = phi float [ %5028, %5020 ], [ 0.000000e+00, %4396 ]
  %5078 = phi float [ %5027, %5020 ], [ 0.000000e+00, %4396 ]
  %5079 = phi float [ %5021, %5020 ], [ 0.000000e+00, %4396 ]
  %5080 = phi float [ %5022, %5020 ], [ %4434, %4396 ]
  %5081 = phi float [ %5023, %5020 ], [ %4415, %4396 ]
  %5082 = fadd fast float %5073, 0xBFB99999A0000000
  %5083 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5084 = fmul fast float %5083, 0x3FF1C71C80000000
  %5085 = call float @dx.op.binary.f32(i32 36, float %5073, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5086 = fsub fast float 1.000000e+00, %5084
  %5087 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5088 = fmul fast float %5087, %5061
  %5089 = fmul fast float %5087, %5062
  %5090 = fmul fast float %5087, %5063
  %5091 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5092 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = fmul fast float %5084, %5061
  %5095 = fmul fast float %5084, %5062
  %5096 = fmul fast float %5084, %5063
  %5097 = fadd fast float %5094, %5085
  %5098 = fadd fast float %5095, %5085
  %5099 = fadd fast float %5096, %5085
  %5100 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5101 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5102 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %5105 = extractvalue %dx.types.ResRet.i32 %5104, 0
  %5106 = and i32 %5105, 1
  %5107 = icmp eq i32 %5106, 0
  br i1 %5107, label %5122, label %5108

; <label>:5108                                    ; preds = %5057
  %5109 = call float @dx.op.binary.f32(i32 35, float %5092, float %5093)  ; FMax(a,b)
  %5110 = call float @dx.op.binary.f32(i32 35, float %5091, float %5109)  ; FMax(a,b)
  %5111 = fcmp fast ogt float %5110, 0.000000e+00
  %5112 = bitcast float %5110 to i32
  %5113 = sub nsw i32 2129859010, %5112
  %5114 = bitcast i32 %5113 to float
  %5115 = select i1 %5111, float %5114, float 0.000000e+00
  %5116 = fmul fast float %5091, %5070
  %5117 = fmul fast float %5092, %5071
  %5118 = fmul fast float %5093, %5072
  %5119 = fmul fast float %5116, %5115
  %5120 = fmul fast float %5117, %5115
  %5121 = fmul fast float %5118, %5115
  br label %5122

; <label>:5122                                    ; preds = %5108, %5057
  %5123 = phi float [ %5119, %5108 ], [ %5070, %5057 ]
  %5124 = phi float [ %5120, %5108 ], [ %5071, %5057 ]
  %5125 = phi float [ %5121, %5108 ], [ %5072, %5057 ]
  %5126 = call float @dx.op.binary.f32(i32 36, float %5067, float 1.270000e+02)  ; FMin(a,b)
  %5127 = call float @dx.op.binary.f32(i32 36, float %5068, float 1.270000e+02)  ; FMin(a,b)
  %5128 = call float @dx.op.binary.f32(i32 36, float %5069, float 1.270000e+02)  ; FMin(a,b)
  %5129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5130 = extractvalue %dx.types.CBufRet.i32 %5129, 3
  %5131 = and i32 %5130, 8
  %5132 = icmp ne i32 %5131, 0
  %5133 = call float @dx.op.binary.f32(i32 35, float %5091, float %5061)  ; FMax(a,b)
  %5134 = call float @dx.op.binary.f32(i32 35, float %5092, float %5061)  ; FMax(a,b)
  %5135 = call float @dx.op.binary.f32(i32 35, float %5093, float %5061)  ; FMax(a,b)
  %5136 = call float @dx.op.dot3.f32(i32 55, float %5091, float %5092, float %5093, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = select i1 %213, float %5061, float %5091
  %5138 = select i1 %213, float %5136, float %5092
  %5139 = select i1 %213, float 1.000000e+00, float %5093
  %5140 = select i1 %5132, float %5133, float %5137
  %5141 = select i1 %5132, float %5134, float %5138
  %5142 = select i1 %5132, float %5135, float %5139
  %5143 = call float @dx.op.dot3.f32(i32 55, float %5123, float %5124, float %5125, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5144 = select i1 %213, float %5143, float %5123
  %5145 = select i1 %213, float %5143, float %5124
  %5146 = select i1 %213, float %5143, float %5125
  %5147 = and i32 %189, 3
  %5148 = select i1 %183, i32 %5147, i32 0
  %5149 = icmp eq i32 %5148, 1
  br i1 %5149, label %5150, label %5226

; <label>:5150                                    ; preds = %5122
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5154 = fadd fast float %5152, %152
  %5155 = fadd fast float %5153, %153
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.CBufRet.f32 %5156, 1
  %5159 = fsub fast float %5154, %5157
  %5160 = fsub fast float %5155, %5158
  %5161 = fmul fast float %5159, %5159
  %5162 = fmul fast float %5160, %5160
  %5163 = fadd fast float %5161, %5162
  %5164 = call float @dx.op.unary.f32(i32 24, float %5163)  ; Sqrt(value)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5156, 2
  %5166 = fcmp fast olt float %5164, %5165
  br i1 %5166, label %5167, label %5220

; <label>:5167                                    ; preds = %5150
  %5168 = extractvalue %dx.types.CBufRet.f32 %5151, 2
  %5169 = fadd fast float %5168, %154
  %5170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5170, 0
  %5172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5173 = extractvalue %dx.types.CBufRet.f32 %5172, 0
  %5174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.f32 %5174, 0
  %5176 = extractvalue %dx.types.CBufRet.f32 %5170, 1
  %5177 = extractvalue %dx.types.CBufRet.f32 %5172, 1
  %5178 = extractvalue %dx.types.CBufRet.f32 %5174, 1
  %5179 = extractvalue %dx.types.CBufRet.f32 %5170, 3
  %5180 = extractvalue %dx.types.CBufRet.f32 %5172, 3
  %5181 = extractvalue %dx.types.CBufRet.f32 %5174, 3
  %5182 = fadd fast float %5179, %5154
  %5183 = fadd fast float %5180, %5155
  %5184 = fadd fast float %5169, %5181
  %5185 = fmul fast float %5182, %5171
  %5186 = call float @dx.op.tertiary.f32(i32 46, float %5183, float %5173, float %5185)  ; FMad(a,b,c)
  %5187 = call float @dx.op.tertiary.f32(i32 46, float %5184, float %5175, float %5186)  ; FMad(a,b,c)
  %5188 = fmul fast float %5182, %5176
  %5189 = call float @dx.op.tertiary.f32(i32 46, float %5183, float %5177, float %5188)  ; FMad(a,b,c)
  %5190 = call float @dx.op.tertiary.f32(i32 46, float %5184, float %5178, float %5189)  ; FMad(a,b,c)
  %5191 = fsub fast float %5187, %5179
  %5192 = fsub fast float %5190, %5180
  %5193 = fsub fast float %5191, %5157
  %5194 = fadd fast float %5193, %5165
  %5195 = fsub fast float %5192, %5158
  %5196 = fadd fast float %5195, %5165
  %5197 = extractvalue %dx.types.CBufRet.f32 %5156, 3
  %5198 = fmul fast float %5194, %5197
  %5199 = fmul fast float %5196, %5197
  %5200 = call float @dx.op.unary.f32(i32 7, float %5198)  ; Saturate(value)
  %5201 = call float @dx.op.unary.f32(i32 7, float %5199)  ; Saturate(value)
  %5202 = fsub fast float 1.000000e+00, %5200
  %5203 = fsub fast float 1.000000e+00, %5201
  %5204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %42, float %5202, float %5203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5205 = extractvalue %dx.types.ResRet.f32 %5204, 0
  %5206 = fcmp fast ugt float %5205, 0.000000e+00
  br i1 %5206, label %5207, label %5220

; <label>:5207                                    ; preds = %5167
  %5208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.f32 %5208, 2
  %5210 = fmul fast float %5209, %5205
  %5211 = extractvalue %dx.types.CBufRet.f32 %5208, 3
  %5212 = fadd fast float %5211, %5210
  %5213 = extractvalue %dx.types.CBufRet.f32 %5174, 2
  %5214 = fadd fast float %5212, %5181
  %5215 = fmul fast float %5187, %5175
  %5216 = call float @dx.op.tertiary.f32(i32 46, float %5190, float %5178, float %5215)  ; FMad(a,b,c)
  %5217 = call float @dx.op.tertiary.f32(i32 46, float %5214, float %5213, float %5216)  ; FMad(a,b,c)
  %5218 = fsub fast float %5217, %5181
  %5219 = fsub fast float %5218, %5168
  br label %5220

; <label>:5220                                    ; preds = %5207, %5167, %5150
  %5221 = phi i1 [ true, %5207 ], [ false, %5167 ], [ false, %5150 ]
  %5222 = phi float [ %5219, %5207 ], [ -1.310720e+05, %5167 ], [ -1.310720e+05, %5150 ]
  %5223 = fsub fast float %5222, %154
  %5224 = call float @dx.op.unary.f32(i32 7, float %5223)  ; Saturate(value)
  %5225 = select i1 %5221, float %5224, float 1.000000e+00
  br label %5226

; <label>:5226                                    ; preds = %5220, %5122
  %5227 = phi float [ %5225, %5220 ], [ 0.000000e+00, %5122 ]
  %5228 = icmp eq i32 %5148, 3
  %5229 = select i1 %5228, float 1.000000e+00, float %5227
  %5230 = call float @dx.op.binary.f32(i32 35, float %5079, float %5229)  ; FMax(a,b)
  %5231 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5232 = fcmp fast une float %5231, 0.000000e+00
  %5233 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %152, float %153, float %154)  ; Dot3(ax,ay,az,bx,by,bz)
  %5234 = call float @dx.op.unary.f32(i32 25, float %5233)  ; Rsqrt(value)
  br i1 %5232, label %5242, label %5235

; <label>:5235                                    ; preds = %5226
  %5236 = fmul fast float %5234, %152
  %5237 = fmul fast float %5234, %153
  %5238 = fmul fast float %5234, %154
  %5239 = fsub fast float -0.000000e+00, %5236
  %5240 = fsub fast float -0.000000e+00, %5237
  %5241 = fsub fast float -0.000000e+00, %5238
  br label %5410

; <label>:5242                                    ; preds = %5226
  %5243 = fmul fast float %152, %5234
  %5244 = fsub fast float -0.000000e+00, %5243
  %5245 = fmul fast float %153, %5234
  %5246 = fsub fast float -0.000000e+00, %5245
  %5247 = fmul fast float %154, %5234
  %5248 = fsub fast float -0.000000e+00, %5247
  %5249 = call float @dx.op.dot3.f32(i32 55, float %5244, float %5246, float %5248, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5250 = fmul fast float %5231, 2.500000e+00
  %5251 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5252 = fmul fast float %5231, 0x4013FFFFE0000000
  %5253 = fadd fast float %5252, 0xBFFFFFFFE0000000
  %5254 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  %5255 = fmul fast float %5231, 0x4004000020000000
  %5256 = fadd fast float %5255, 0xBFF8000040000000
  %5257 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5258 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5259 = fmul fast float %5082, 1.000000e+01
  %5260 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  %5261 = fmul fast float %5260, 2.000000e+00
  %5262 = fsub fast float 3.000000e+00, %5261
  %5263 = fmul fast float %5260, %5260
  %5264 = fmul fast float %5263, %5262
  %5265 = fsub fast float 1.000000e+00, %5264
  %5266 = fsub fast float 0x3FE3333340000000, %5103
  %5267 = fmul fast float %5266, 0x400AAAAAA0000000
  %5268 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5269 = fmul fast float %5265, %5268
  %5270 = fmul fast float %5140, 0x3FEA2B8620000000
  %5271 = fmul fast float %5141, 0x3FEA2B8620000000
  %5272 = fmul fast float %5142, 0x3FEA2B8620000000
  %5273 = fadd fast float %5270, 0x3FC81DFBA0000000
  %5274 = fmul fast float %5273, %5140
  %5275 = fadd fast float %5274, 0x3F910E6020000000
  %5276 = fadd fast float %5271, 0x3FC81DFBA0000000
  %5277 = fmul fast float %5276, %5141
  %5278 = fadd fast float %5277, 0x3F910E6020000000
  %5279 = fadd fast float %5272, 0x3FC81DFBA0000000
  %5280 = fmul fast float %5279, %5142
  %5281 = fadd fast float %5280, 0x3F910E6020000000
  %5282 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5283 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5284 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5285 = fsub fast float %5282, %5140
  %5286 = fsub fast float %5283, %5141
  %5287 = fsub fast float %5284, %5142
  %5288 = fmul fast float %5285, %5258
  %5289 = fmul fast float %5288, %5269
  %5290 = fmul fast float %5286, %5258
  %5291 = fmul fast float %5290, %5269
  %5292 = fmul fast float %5287, %5258
  %5293 = fmul fast float %5292, %5269
  %5294 = fadd fast float %5289, %5140
  %5295 = fadd fast float %5291, %5141
  %5296 = fadd fast float %5293, %5142
  %5297 = fmul fast float %5076, %5076
  %5298 = fmul fast float %5297, %5297
  %5299 = fadd fast float %5254, 1.000000e+00
  %5300 = fsub fast float %5299, %5269
  %5301 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5302 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5304 = fsub fast float 1.000000e+00, %5298
  %5305 = call float @dx.op.binary.f32(i32 36, float %5301, float %5304)  ; FMin(a,b)
  %5306 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5307 = call float @dx.op.binary.f32(i32 35, float %5305, float %5306)  ; FMax(a,b)
  %5308 = fadd fast float %5303, 0xBFE4CCCCC0000000
  %5309 = fmul fast float %5308, 0x4006DB6DA0000000
  %5310 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5311 = fmul fast float %5310, 2.000000e+00
  %5312 = fsub fast float 3.000000e+00, %5311
  %5313 = bitcast float %5100 to i32
  %5314 = ashr i32 %5313, 1
  %5315 = add nsw i32 %5314, 532487669
  %5316 = bitcast i32 %5315 to float
  %5317 = fsub fast float 1.000000e+00, %5316
  %5318 = bitcast float %5317 to i32
  %5319 = sub nsw i32 2129859010, %5318
  %5320 = bitcast i32 %5319 to float
  %5321 = fmul fast float %5320, 2.000000e+00
  %5322 = bitcast float %5101 to i32
  %5323 = ashr i32 %5322, 1
  %5324 = add nsw i32 %5323, 532487669
  %5325 = bitcast i32 %5324 to float
  %5326 = fsub fast float 1.000000e+00, %5325
  %5327 = bitcast float %5326 to i32
  %5328 = sub nsw i32 2129859010, %5327
  %5329 = bitcast i32 %5328 to float
  %5330 = fmul fast float %5329, 2.000000e+00
  %5331 = bitcast float %5102 to i32
  %5332 = ashr i32 %5331, 1
  %5333 = add nsw i32 %5332, 532487669
  %5334 = bitcast i32 %5333 to float
  %5335 = fsub fast float 1.000000e+00, %5334
  %5336 = bitcast float %5335 to i32
  %5337 = sub nsw i32 2129859010, %5336
  %5338 = bitcast i32 %5337 to float
  %5339 = fmul fast float %5338, 2.000000e+00
  %5340 = fsub fast float 0x4002A9FBE0000000, %5321
  %5341 = fadd fast float %5321, 0x3FD54FDF00000000
  %5342 = bitcast float %5341 to i32
  %5343 = sub nsw i32 2129859010, %5342
  %5344 = bitcast i32 %5343 to float
  %5345 = fmul fast float %5344, %5340
  %5346 = fmul fast float %5345, %5345
  %5347 = fsub fast float 0x4002A9FBE0000000, %5330
  %5348 = fadd fast float %5330, 0x3FD54FDF00000000
  %5349 = bitcast float %5348 to i32
  %5350 = sub nsw i32 2129859010, %5349
  %5351 = bitcast i32 %5350 to float
  %5352 = fmul fast float %5351, %5347
  %5353 = fmul fast float %5352, %5352
  %5354 = fsub fast float 0x4002A9FBE0000000, %5339
  %5355 = fadd fast float %5339, 0x3FD54FDF00000000
  %5356 = bitcast float %5355 to i32
  %5357 = sub nsw i32 2129859010, %5356
  %5358 = bitcast i32 %5357 to float
  %5359 = fmul fast float %5358, %5354
  %5360 = fmul fast float %5359, %5359
  %5361 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5346)  ; FMax(a,b)
  %5362 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5353)  ; FMax(a,b)
  %5363 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5360)  ; FMax(a,b)
  %5364 = fsub fast float 1.000000e+00, %5249
  %5365 = fadd fast float %5364, %5265
  %5366 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5367 = fsub fast float 1.000000e+00, %5229
  %5368 = fmul fast float %5307, %5367
  %5369 = fmul fast float %5310, %5310
  %5370 = fmul fast float %5369, %5368
  %5371 = fmul fast float %5370, %5312
  %5372 = fmul fast float %5367, 0xBFE99999A0000000
  %5373 = fmul fast float %5372, %5258
  %5374 = fmul fast float %5373, %5269
  %5375 = fadd fast float %5374, 1.000000e+00
  %5376 = fadd fast float %5103, -1.000000e+00
  %5377 = fmul fast float %5375, %5376
  %5378 = fadd fast float %5377, 1.000000e+00
  %5379 = fsub fast float %5361, %5100
  %5380 = fsub fast float %5362, %5101
  %5381 = fsub fast float %5363, %5102
  %5382 = fmul fast float %5371, %5379
  %5383 = fmul fast float %5371, %5380
  %5384 = fmul fast float %5371, %5381
  %5385 = fadd fast float %5382, %5100
  %5386 = fadd fast float %5383, %5101
  %5387 = fadd fast float %5384, %5102
  %5388 = fsub fast float %104, %5058
  %5389 = fsub fast float %105, %5059
  %5390 = fsub fast float %106, %5060
  %5391 = fmul fast float %5371, %5388
  %5392 = fmul fast float %5371, %5389
  %5393 = fmul fast float %5371, %5390
  %5394 = fadd fast float %5391, %5058
  %5395 = fadd fast float %5392, %5059
  %5396 = fadd fast float %5393, %5060
  %5397 = fmul fast float %5371, %5366
  %5398 = call float @dx.op.unary.f32(i32 7, float %5378)  ; Saturate(value)
  %5399 = fsub fast float 1.000000e+00, %5398
  %5400 = fmul fast float %5397, %5399
  %5401 = fadd fast float %5400, %5398
  %5402 = fsub fast float 1.000000e+00, %5076
  %5403 = fmul fast float %5371, %5402
  %5404 = fadd fast float %5403, %5076
  %5405 = call float @dx.op.dot3.f32(i32 55, float %5394, float %5395, float %5396, float %5394, float %5395, float %5396)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = call float @dx.op.unary.f32(i32 25, float %5405)  ; Rsqrt(value)
  %5407 = fmul fast float %5394, %5406
  %5408 = fmul fast float %5395, %5406
  %5409 = fmul fast float %5396, %5406
  br label %5410

; <label>:5410                                    ; preds = %5242, %5235
  %5411 = phi float [ %5241, %5235 ], [ %5248, %5242 ]
  %5412 = phi float [ %5240, %5235 ], [ %5246, %5242 ]
  %5413 = phi float [ %5239, %5235 ], [ %5244, %5242 ]
  %5414 = phi float [ %5238, %5235 ], [ %5247, %5242 ]
  %5415 = phi float [ %5237, %5235 ], [ %5245, %5242 ]
  %5416 = phi float [ %5236, %5235 ], [ %5243, %5242 ]
  %5417 = phi float [ %5100, %5235 ], [ %5385, %5242 ]
  %5418 = phi float [ %5101, %5235 ], [ %5386, %5242 ]
  %5419 = phi float [ %5102, %5235 ], [ %5387, %5242 ]
  %5420 = phi float [ %5140, %5235 ], [ %5294, %5242 ]
  %5421 = phi float [ %5141, %5235 ], [ %5295, %5242 ]
  %5422 = phi float [ %5142, %5235 ], [ %5296, %5242 ]
  %5423 = phi float [ %5058, %5235 ], [ %5407, %5242 ]
  %5424 = phi float [ %5059, %5235 ], [ %5408, %5242 ]
  %5425 = phi float [ %5060, %5235 ], [ %5409, %5242 ]
  %5426 = phi float [ %5103, %5235 ], [ %5401, %5242 ]
  %5427 = phi float [ %5076, %5235 ], [ %5404, %5242 ]
  %5428 = select i1 %213, float 0.000000e+00, float %5419
  %5429 = call float @dx.op.dot3.f32(i32 55, float %5423, float %5424, float %5425, float %5413, float %5412, float %5411)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = call float @dx.op.unary.f32(i32 7, float %5429)  ; Saturate(value)
  %5431 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5415, float %5414, float %5423, float %5424, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = fmul fast float %5431, 2.000000e+00
  %5433 = fmul fast float %5432, %5423
  %5434 = fmul fast float %5432, %5424
  %5435 = fmul fast float %5432, %5425
  %5436 = fsub fast float %5416, %5433
  %5437 = fsub fast float %5415, %5434
  %5438 = fsub fast float %5414, %5435
  %5439 = call float @dx.op.binary.f32(i32 36, float %5427, float 1.000000e+00)  ; FMin(a,b)
  %5440 = fsub fast float 1.000000e+00, %5439
  %5441 = bitcast float %5440 to i32
  %5442 = ashr i32 %5441, 1
  %5443 = add nsw i32 %5442, 532487669
  %5444 = bitcast i32 %5443 to float
  %5445 = fsub fast float 1.000000e+00, %5426
  %5446 = call float @dx.op.binary.f32(i32 35, float %5445, float 0x3F847AE140000000)  ; FMax(a,b)
  %5447 = fmul fast float %5446, %5446
  %5448 = fmul fast float %5447, %5447
  %5449 = call float @dx.op.unary.f32(i32 7, float %5430)  ; Saturate(value)
  %5450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %42, float %5444, float %5448, float %5449, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5451 = extractvalue %dx.types.ResRet.f32 %5450, 0
  %5452 = fsub fast float 1.000000e+00, %5427
  %5453 = bitcast float %5452 to i32
  %5454 = sub nsw i32 2129859010, %5453
  %5455 = call float @dx.op.dot3.f32(i32 55, float %65, float %61, float %57, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = fmul fast float %5455, 0x3FD20DD760000000
  %5457 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5458 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5459 = fcmp fast oeq float %5458, 0.000000e+00
  %5460 = fcmp fast oeq float %5457, 0.000000e+00
  %5461 = or i1 %5460, %5459
  br i1 %5461, label %5491, label %5462

; <label>:5462                                    ; preds = %5410
  %5463 = fsub fast float -0.000000e+00, %68
  %5464 = fsub fast float -0.000000e+00, %66
  %5465 = call float @dx.op.unary.f32(i32 24, float %5458)  ; Sqrt(value)
  %5466 = fdiv fast float %5465, %5457
  %5467 = fcmp fast ogt float %5466, 0x3FFB6F8900000000
  %5468 = select i1 %5467, float 0x3FFB6F8900000000, float %5466
  %5469 = fmul fast float %5468, 0x3FE8A23460000000
  %5470 = call float @dx.op.unary.f32(i32 7, float %5469)  ; Saturate(value)
  %5471 = call float @dx.op.binary.f32(i32 35, float %5468, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5472 = fmul fast float %5470, %5457
  %5473 = fmul fast float %5471, 0x3FF279A740000000
  %5474 = fadd fast float %5473, -1.000000e+00
  %5475 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %67, float %5463, float %5464, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5476 = call float @dx.op.unary.f32(i32 25, float %5475)  ; Rsqrt(value)
  %5477 = fmul fast float %5476, %5463
  %5478 = fmul fast float %5476, %5464
  %5479 = fmul fast float %5476, %67
  %5480 = fmul fast float %5474, %5474
  %5481 = fsub fast float 1.000000e+00, %5480
  %5482 = fmul fast float %5471, 0x40005F8BE0000000
  %5483 = fsub fast float 0x400C5BF8A0000000, %5482
  %5484 = fdiv fast float %5472, %5483
  %5485 = fmul fast float %5484, 0x3FEE31C3C0000000
  %5486 = fmul fast float %5485, %5481
  %5487 = fmul fast float %5471, 0x3FDACB7480000000
  %5488 = fadd fast float %5487, 0xBFD7347680000000
  %5489 = fmul fast float %5488, %5484
  %5490 = fmul fast float %5489, %5481
  br label %5491

; <label>:5491                                    ; preds = %5462, %5410
  %5492 = phi float [ %5477, %5462 ], [ 0.000000e+00, %5410 ]
  %5493 = phi float [ %5478, %5462 ], [ 0.000000e+00, %5410 ]
  %5494 = phi float [ %5479, %5462 ], [ 0.000000e+00, %5410 ]
  %5495 = phi float [ %5486, %5462 ], [ 0.000000e+00, %5410 ]
  %5496 = phi float [ %5490, %5462 ], [ 0.000000e+00, %5410 ]
  %5497 = call float @dx.op.dot3.f32(i32 55, float %5492, float %5493, float %5494, float %5423, float %5424, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = fmul fast float %5497, 0x3FDF454380000000
  %5499 = fmul fast float %5497, %5497
  %5500 = fmul fast float %5499, 0x3FEE471020000000
  %5501 = fadd fast float %5500, 0xBFD42F6020000000
  %5502 = fmul fast float %5457, 0x3FD20DD760000000
  %5503 = fmul fast float %5501, %5496
  %5504 = fadd fast float %5503, %5502
  %5505 = fmul fast float %5498, %5495
  %5506 = fadd fast float %5504, %5505
  %5507 = fsub fast float %5504, %5505
  %5508 = call float @dx.op.dot3.f32(i32 55, float %5492, float %5493, float %5494, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5509 = fmul fast float %5508, 0x3FDF454380000000
  %5510 = fmul fast float %5508, %5508
  %5511 = fmul fast float %5510, 0x3FEE471020000000
  %5512 = fadd fast float %5511, 0xBFD42F6020000000
  %5513 = call float @dx.op.dot3.f32(i32 55, float %5457, float %5495, float %5496, float 0x3FD20DD760000000, float %5509, float %5512)  ; Dot3(ax,ay,az,bx,by,bz)
  %5514 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %61)  ; FMax(a,b)
  %5515 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = fcmp fast oeq float %5515, 0.000000e+00
  %5517 = fcmp fast oeq float %5514, 0.000000e+00
  %5518 = or i1 %5517, %5516
  br i1 %5518, label %5548, label %5519

; <label>:5519                                    ; preds = %5491
  %5520 = fsub fast float -0.000000e+00, %64
  %5521 = fsub fast float -0.000000e+00, %62
  %5522 = call float @dx.op.unary.f32(i32 24, float %5515)  ; Sqrt(value)
  %5523 = fdiv fast float %5522, %5514
  %5524 = fcmp fast ogt float %5523, 0x3FFB6F8900000000
  %5525 = select i1 %5524, float 0x3FFB6F8900000000, float %5523
  %5526 = fmul fast float %5525, 0x3FE8A23460000000
  %5527 = call float @dx.op.unary.f32(i32 7, float %5526)  ; Saturate(value)
  %5528 = call float @dx.op.binary.f32(i32 35, float %5525, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5529 = fmul fast float %5527, %5514
  %5530 = fmul fast float %5528, 0x3FF279A740000000
  %5531 = fadd fast float %5530, -1.000000e+00
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5520, float %5521, float %63, float %5520, float %5521, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = call float @dx.op.unary.f32(i32 25, float %5532)  ; Rsqrt(value)
  %5534 = fmul fast float %5533, %5520
  %5535 = fmul fast float %5533, %5521
  %5536 = fmul fast float %5533, %63
  %5537 = fmul fast float %5531, %5531
  %5538 = fsub fast float 1.000000e+00, %5537
  %5539 = fmul fast float %5528, 0x40005F8BE0000000
  %5540 = fsub fast float 0x400C5BF8A0000000, %5539
  %5541 = fdiv fast float %5529, %5540
  %5542 = fmul fast float %5541, 0x3FEE31C3C0000000
  %5543 = fmul fast float %5542, %5538
  %5544 = fmul fast float %5528, 0x3FDACB7480000000
  %5545 = fadd fast float %5544, 0xBFD7347680000000
  %5546 = fmul fast float %5545, %5541
  %5547 = fmul fast float %5546, %5538
  br label %5548

; <label>:5548                                    ; preds = %5519, %5491
  %5549 = phi float [ %5534, %5519 ], [ 0.000000e+00, %5491 ]
  %5550 = phi float [ %5535, %5519 ], [ 0.000000e+00, %5491 ]
  %5551 = phi float [ %5536, %5519 ], [ 0.000000e+00, %5491 ]
  %5552 = phi float [ %5543, %5519 ], [ 0.000000e+00, %5491 ]
  %5553 = phi float [ %5547, %5519 ], [ 0.000000e+00, %5491 ]
  %5554 = call float @dx.op.dot3.f32(i32 55, float %5549, float %5550, float %5551, float %5423, float %5424, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %5555 = fmul fast float %5554, 0x3FDF454380000000
  %5556 = fmul fast float %5554, %5554
  %5557 = fmul fast float %5556, 0x3FEE471020000000
  %5558 = fadd fast float %5557, 0xBFD42F6020000000
  %5559 = fmul fast float %5514, 0x3FD20DD760000000
  %5560 = fmul fast float %5558, %5553
  %5561 = fadd fast float %5560, %5559
  %5562 = fmul fast float %5555, %5552
  %5563 = fadd fast float %5561, %5562
  %5564 = fsub fast float %5561, %5562
  %5565 = call float @dx.op.dot3.f32(i32 55, float %5549, float %5550, float %5551, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5566 = fmul fast float %5565, 0x3FDF454380000000
  %5567 = fmul fast float %5565, %5565
  %5568 = fmul fast float %5567, 0x3FEE471020000000
  %5569 = fadd fast float %5568, 0xBFD42F6020000000
  %5570 = call float @dx.op.dot3.f32(i32 55, float %5514, float %5552, float %5553, float 0x3FD20DD760000000, float %5566, float %5569)  ; Dot3(ax,ay,az,bx,by,bz)
  %5571 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %5572 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = fcmp fast oeq float %5572, 0.000000e+00
  %5574 = fcmp fast oeq float %5571, 0.000000e+00
  %5575 = or i1 %5574, %5573
  br i1 %5575, label %5605, label %5576

; <label>:5576                                    ; preds = %5548
  %5577 = fsub fast float -0.000000e+00, %60
  %5578 = fsub fast float -0.000000e+00, %58
  %5579 = call float @dx.op.unary.f32(i32 24, float %5572)  ; Sqrt(value)
  %5580 = fdiv fast float %5579, %5571
  %5581 = fcmp fast ogt float %5580, 0x3FFB6F8900000000
  %5582 = select i1 %5581, float 0x3FFB6F8900000000, float %5580
  %5583 = fmul fast float %5582, 0x3FE8A23460000000
  %5584 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5585 = call float @dx.op.binary.f32(i32 35, float %5582, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5586 = fmul fast float %5584, %5571
  %5587 = fmul fast float %5585, 0x3FF279A740000000
  %5588 = fadd fast float %5587, -1.000000e+00
  %5589 = call float @dx.op.dot3.f32(i32 55, float %5577, float %5578, float %59, float %5577, float %5578, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = call float @dx.op.unary.f32(i32 25, float %5589)  ; Rsqrt(value)
  %5591 = fmul fast float %5590, %5577
  %5592 = fmul fast float %5590, %5578
  %5593 = fmul fast float %5590, %59
  %5594 = fmul fast float %5588, %5588
  %5595 = fsub fast float 1.000000e+00, %5594
  %5596 = fmul fast float %5585, 0x40005F8BE0000000
  %5597 = fsub fast float 0x400C5BF8A0000000, %5596
  %5598 = fdiv fast float %5586, %5597
  %5599 = fmul fast float %5598, 0x3FEE31C3C0000000
  %5600 = fmul fast float %5599, %5595
  %5601 = fmul fast float %5585, 0x3FDACB7480000000
  %5602 = fadd fast float %5601, 0xBFD7347680000000
  %5603 = fmul fast float %5602, %5598
  %5604 = fmul fast float %5603, %5595
  br label %5605

; <label>:5605                                    ; preds = %5576, %5548
  %5606 = phi float [ %5591, %5576 ], [ 0.000000e+00, %5548 ]
  %5607 = phi float [ %5592, %5576 ], [ 0.000000e+00, %5548 ]
  %5608 = phi float [ %5593, %5576 ], [ 0.000000e+00, %5548 ]
  %5609 = phi float [ %5600, %5576 ], [ 0.000000e+00, %5548 ]
  %5610 = phi float [ %5604, %5576 ], [ 0.000000e+00, %5548 ]
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5606, float %5607, float %5608, float %5423, float %5424, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = fmul fast float %5611, 0x3FDF454380000000
  %5613 = fmul fast float %5611, %5611
  %5614 = fmul fast float %5613, 0x3FEE471020000000
  %5615 = fadd fast float %5614, 0xBFD42F6020000000
  %5616 = fmul fast float %5571, 0x3FD20DD760000000
  %5617 = fmul fast float %5615, %5610
  %5618 = fadd fast float %5617, %5616
  %5619 = fmul fast float %5612, %5609
  %5620 = fadd fast float %5618, %5619
  %5621 = fsub fast float %5618, %5619
  %5622 = call float @dx.op.dot3.f32(i32 55, float %5606, float %5607, float %5608, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5623 = fmul fast float %5622, 0x3FDF454380000000
  %5624 = fmul fast float %5622, %5622
  %5625 = fmul fast float %5624, 0x3FEE471020000000
  %5626 = fadd fast float %5625, 0xBFD42F6020000000
  %5627 = call float @dx.op.dot3.f32(i32 55, float %5571, float %5609, float %5610, float 0x3FD20DD760000000, float %5623, float %5626)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = call float @dx.op.binary.f32(i32 35, float %5506, float 0.000000e+00)  ; FMax(a,b)
  %5629 = call float @dx.op.binary.f32(i32 35, float %5563, float 0.000000e+00)  ; FMax(a,b)
  %5630 = call float @dx.op.binary.f32(i32 35, float %5620, float 0.000000e+00)  ; FMax(a,b)
  %5631 = call float @dx.op.binary.f32(i32 35, float %5507, float 0.000000e+00)  ; FMax(a,b)
  %5632 = call float @dx.op.binary.f32(i32 35, float %5564, float 0.000000e+00)  ; FMax(a,b)
  %5633 = call float @dx.op.binary.f32(i32 35, float %5621, float 0.000000e+00)  ; FMax(a,b)
  %5634 = call float @dx.op.binary.f32(i32 35, float %5513, float 0.000000e+00)  ; FMax(a,b)
  %5635 = call float @dx.op.binary.f32(i32 35, float %5570, float 0.000000e+00)  ; FMax(a,b)
  %5636 = call float @dx.op.binary.f32(i32 35, float %5627, float 0.000000e+00)  ; FMax(a,b)
  %5637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5638 = extractvalue %dx.types.CBufRet.f32 %5637, 0
  %5639 = call float @dx.op.binary.f32(i32 36, float %5420, float %5638)  ; FMin(a,b)
  %5640 = fmul fast float %5639, %5440
  %5641 = fsub fast float 1.000000e+00, %5640
  %5642 = bitcast float %5641 to i32
  %5643 = sub nsw i32 2129859010, %5642
  %5644 = bitcast i32 %5643 to float
  %5645 = call float @dx.op.binary.f32(i32 36, float %5421, float %5638)  ; FMin(a,b)
  %5646 = fmul fast float %5645, %5440
  %5647 = fsub fast float 1.000000e+00, %5646
  %5648 = bitcast float %5647 to i32
  %5649 = sub nsw i32 2129859010, %5648
  %5650 = bitcast i32 %5649 to float
  %5651 = call float @dx.op.binary.f32(i32 36, float %5422, float %5638)  ; FMin(a,b)
  %5652 = fmul fast float %5651, %5440
  %5653 = fsub fast float 1.000000e+00, %5652
  %5654 = bitcast float %5653 to i32
  %5655 = sub nsw i32 2129859010, %5654
  %5656 = bitcast i32 %5655 to float
  %5657 = fmul fast float %5628, %5439
  %5658 = fmul fast float %5657, %5644
  %5659 = fmul fast float %5629, %5439
  %5660 = fmul fast float %5659, %5650
  %5661 = fmul fast float %5630, %5439
  %5662 = fmul fast float %5661, %5656
  %5663 = call float @dx.op.binary.f32(i32 36, float %5417, float %5638)  ; FMin(a,b)
  %5664 = fmul fast float %5663, %5440
  %5665 = fsub fast float 1.000000e+00, %5664
  %5666 = bitcast float %5665 to i32
  %5667 = sub nsw i32 2129859010, %5666
  %5668 = bitcast i32 %5667 to float
  %5669 = call float @dx.op.binary.f32(i32 36, float %5418, float %5638)  ; FMin(a,b)
  %5670 = fmul fast float %5669, %5440
  %5671 = fsub fast float 1.000000e+00, %5670
  %5672 = bitcast float %5671 to i32
  %5673 = sub nsw i32 2129859010, %5672
  %5674 = bitcast i32 %5673 to float
  %5675 = call float @dx.op.binary.f32(i32 36, float %5428, float %5638)  ; FMin(a,b)
  %5676 = fmul fast float %5675, %5440
  %5677 = fsub fast float 1.000000e+00, %5676
  %5678 = bitcast float %5677 to i32
  %5679 = sub nsw i32 2129859010, %5678
  %5680 = bitcast i32 %5679 to float
  %5681 = fmul fast float %5634, %5439
  %5682 = fmul fast float %5681, %5668
  %5683 = fmul fast float %5635, %5439
  %5684 = fmul fast float %5683, %5674
  %5685 = fmul fast float %5636, %5439
  %5686 = fmul fast float %5685, %5680
  %5687 = call float @dx.op.dot3.f32(i32 55, float %5658, float %5660, float %5662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5688 = select i1 %213, float 0.000000e+00, float %5658
  %5689 = select i1 %213, float %5687, float %5660
  %5690 = select i1 %213, float 0.000000e+00, float %5662
  %5691 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5692 = select i1 %213, float 0.000000e+00, float %5631
  %5693 = select i1 %213, float %5691, float %5632
  %5694 = select i1 %213, float 0.000000e+00, float %5633
  %5695 = call float @dx.op.dot3.f32(i32 55, float %5682, float %5684, float %5686, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5696 = select i1 %213, float 0.000000e+00, float %5682
  %5697 = select i1 %213, float %5695, float %5684
  %5698 = select i1 %213, float 0.000000e+00, float %5686
  %5699 = fmul fast float %4414, %4414
  %5700 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5701 = fmul fast float %5430, 9.843750e-01
  %5702 = fmul fast float %5426, 9.843750e-01
  %5703 = fadd fast float %5701, 7.812500e-03
  %5704 = fadd fast float %5702, 7.812500e-03
  %5705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %5703, float %5704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5706 = extractvalue %dx.types.ResRet.f32 %5705, 0
  %5707 = extractvalue %dx.types.ResRet.f32 %5705, 1
  %5708 = extractvalue %dx.types.ResRet.f32 %5705, 2
  %5709 = extractvalue %dx.types.ResRet.f32 %5705, 3
  %5710 = fsub fast float 1.000000e+00, %5700
  %5711 = fsub fast float %5708, %5706
  %5712 = fsub fast float %5709, %5707
  %5713 = fmul fast float %5711, %5710
  %5714 = fmul fast float %5712, %5710
  %5715 = fadd fast float %5713, %5706
  %5716 = fadd fast float %5714, %5707
  %5717 = fmul fast float %5715, %5417
  %5718 = fmul fast float %5715, %5418
  %5719 = fmul fast float %5715, %5428
  %5720 = fadd fast float %5717, %5716
  %5721 = fadd fast float %5718, %5716
  %5722 = fadd fast float %5719, %5716
  %5723 = fcmp fast ogt float %5077, 0.000000e+00
  br i1 %5723, label %5724, label %5750

; <label>:5724                                    ; preds = %5605
  %5725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5077, float %5430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5726 = extractvalue %dx.types.ResRet.f32 %5725, 0
  %5727 = extractvalue %dx.types.ResRet.f32 %5725, 1
  %5728 = extractvalue %dx.types.ResRet.f32 %5725, 2
  %5729 = fadd fast float %5726, -5.000000e-01
  %5730 = fadd fast float %5727, -5.000000e-01
  %5731 = fadd fast float %5728, -5.000000e-01
  %5732 = fsub fast float 1.000000e+00, %5417
  %5733 = fsub fast float 1.000000e+00, %5418
  %5734 = fsub fast float 1.000000e+00, %5428
  %5735 = fmul fast float %5417, 4.000000e+00
  %5736 = fmul fast float %5735, %5732
  %5737 = fmul fast float %5736, %5729
  %5738 = fmul fast float %5418, 4.000000e+00
  %5739 = fmul fast float %5738, %5733
  %5740 = fmul fast float %5739, %5730
  %5741 = fmul fast float %5428, 4.000000e+00
  %5742 = fmul fast float %5741, %5734
  %5743 = fmul fast float %5742, %5731
  %5744 = fadd fast float %5737, %5720
  %5745 = fadd fast float %5740, %5721
  %5746 = fadd fast float %5743, %5722
  %5747 = call float @dx.op.unary.f32(i32 7, float %5744)  ; Saturate(value)
  %5748 = call float @dx.op.unary.f32(i32 7, float %5745)  ; Saturate(value)
  %5749 = call float @dx.op.unary.f32(i32 7, float %5746)  ; Saturate(value)
  br label %5750

; <label>:5750                                    ; preds = %5724, %5605
  %5751 = phi float [ %5747, %5724 ], [ %5720, %5605 ]
  %5752 = phi float [ %5748, %5724 ], [ %5721, %5605 ]
  %5753 = phi float [ %5749, %5724 ], [ %5722, %5605 ]
  %5754 = call float @dx.op.binary.f32(i32 35, float %5752, float %5753)  ; FMax(a,b)
  %5755 = call float @dx.op.binary.f32(i32 35, float %5751, float %5754)  ; FMax(a,b)
  %5756 = fsub fast float 1.000000e+00, %5755
  %5757 = fmul fast float %5755, %5426
  %5758 = fadd fast float %5757, %5426
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 2
  %5761 = extractvalue %dx.types.CBufRet.f32 %5759, 3
  %5762 = fmul fast float %5758, %5760
  %5763 = fadd fast float %5762, %5761
  %5764 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  %5765 = fsub fast float 1.000000e+00, %5451
  %5766 = fadd fast float %5765, %5764
  %5767 = call float @dx.op.unary.f32(i32 7, float %5766)  ; Saturate(value)
  %5768 = fcmp fast olt float %5767, 1.000000e+00
  br i1 %5768, label %5769, label %6217

; <label>:5769                                    ; preds = %5750
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 2
  %5772 = extractvalue %dx.types.CBufRet.f32 %5770, 3
  %5773 = fmul fast float %5771, %97
  %5774 = fmul fast float %5772, %98
  %5775 = fptoui float %5773 to i32
  %5776 = fptoui float %5774 to i32
  %5777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5778 = extractvalue %dx.types.CBufRet.f32 %5777, 0
  %5779 = extractvalue %dx.types.CBufRet.f32 %5777, 2
  %5780 = extractvalue %dx.types.CBufRet.f32 %5777, 3
  %5781 = fadd fast float %85, -4.000000e+00
  %5782 = call float @dx.op.binary.f32(i32 35, float %5781, float 0.000000e+00)  ; FMax(a,b)
  %5783 = fadd fast float %5782, %5778
  %5784 = fmul fast float %5783, %5779
  %5785 = call float @dx.op.unary.f32(i32 23, float %5784)  ; Log(value)
  %5786 = fmul fast float %5785, %5780
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 2
  %5789 = fmul fast float %5786, %5788
  %5790 = call float @dx.op.unary.f32(i32 7, float %5789)  ; Saturate(value)
  %5791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.i32 %5791, 1
  %5793 = add i32 %5792, -1
  %5794 = uitofp i32 %5792 to float
  %5795 = fmul fast float %5794, %5790
  %5796 = fptoui float %5795 to i32
  %5797 = call i32 @dx.op.binary.i32(i32 40, i32 %5796, i32 %5793)  ; UMin(a,b)
  %5798 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5799 = extractvalue %dx.types.CBufRet.i32 %5798, 2
  %5800 = extractvalue %dx.types.CBufRet.i32 %5798, 3
  %5801 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5776, i32 %5799, i32 %5775)  ; UMad(a,b,c)
  %5802 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5797, i32 %5800, i32 %5801)  ; UMad(a,b,c)
  %5803 = call float @dx.op.binary.f32(i32 35, float %85, float 0.000000e+00)  ; FMax(a,b)
  %5804 = fptoui float %5803 to i32
  %5805 = lshr i32 %5804, 5
  %5806 = call i32 @dx.op.binary.i32(i32 40, i32 %5805, i32 8191)  ; UMin(a,b)
  br i1 false, label %5807, label %5814

; <label>:5807                                    ; preds = %5769
  %5808 = fadd fast float 0.000000e+00, %5438
  %5809 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5808, float %5436, float %5437, float %5808)  ; Dot3(ax,ay,az,bx,by,bz)
  %5810 = call float @dx.op.unary.f32(i32 25, float %5809)  ; Rsqrt(value)
  %5811 = fmul fast float %5810, %5436
  %5812 = fmul fast float %5810, %5437
  %5813 = fmul fast float %5808, %5810
  br label %5814

; <label>:5814                                    ; preds = %5807, %5769
  %5815 = phi float [ %5811, %5807 ], [ %5436, %5769 ]
  %5816 = phi float [ %5812, %5807 ], [ %5437, %5769 ]
  %5817 = phi float [ %5813, %5807 ], [ %5438, %5769 ]
  %5818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5819 = extractvalue %dx.types.CBufRet.i32 %5818, 2
  %5820 = add nsw i32 %5819, -1
  %5821 = call i32 @dx.op.binary.i32(i32 37, i32 %5820, i32 0)  ; IMax(a,b)
  %5822 = shl i32 %5806, 2
  %5823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5822, i32 undef)  ; BufferLoad(srv,index,wot)
  %5824 = extractvalue %dx.types.ResRet.i32 %5823, 0
  %5825 = lshr i32 %5824, 16
  %5826 = and i32 %5824, 65535
  %5827 = lshr i32 %5824, 21
  %5828 = lshr i32 %5826, 5
  %5829 = call i32 @dx.op.binary.i32(i32 40, i32 %5828, i32 %5821)  ; UMin(a,b)
  %5830 = icmp ugt i32 %5827, %5829
  br i1 %5830, label %6193, label %5831

; <label>:5831                                    ; preds = %5814
  br label %5832

; <label>:5832                                    ; preds = %6185, %5831
  %5833 = phi float [ %6186, %6185 ], [ 0.000000e+00, %5831 ]
  %5834 = phi float [ %6187, %6185 ], [ 0.000000e+00, %5831 ]
  %5835 = phi float [ %6188, %6185 ], [ 0.000000e+00, %5831 ]
  %5836 = phi float [ %6189, %6185 ], [ 1.000000e+00, %5831 ]
  %5837 = phi i32 [ %6190, %6185 ], [ %5827, %5831 ]
  %5838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.i32 %5838, 2
  %5840 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5802, i32 %5839, i32 %5837)  ; UMad(a,b,c)
  %5841 = shl i32 %5840, 2
  %5842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5841, i32 undef)  ; BufferLoad(srv,index,wot)
  %5843 = extractvalue %dx.types.ResRet.i32 %5842, 0
  %5844 = shl i32 %5837, 5
  %5845 = sub nsw i32 %5825, %5844
  %5846 = call i32 @dx.op.binary.i32(i32 37, i32 %5845, i32 0)  ; IMax(a,b)
  %5847 = call i32 @dx.op.binary.i32(i32 38, i32 %5846, i32 31)  ; IMin(a,b)
  %5848 = sub nsw i32 1, %5825
  %5849 = add nsw i32 %5848, %5826
  %5850 = call i32 @dx.op.binary.i32(i32 37, i32 %5849, i32 0)  ; IMax(a,b)
  %5851 = call i32 @dx.op.binary.i32(i32 38, i32 %5850, i32 32)  ; IMin(a,b)
  %5852 = and i32 %5851, 31
  %5853 = shl i32 -1, %5852
  %5854 = xor i32 %5853, -1
  %5855 = and i32 %5847, 31
  %5856 = shl i32 %5854, %5855
  %5857 = icmp eq i32 %5851, 32
  %5858 = select i1 %5857, i32 -1, i32 %5856
  %5859 = and i32 %5858, %5843
  %5860 = icmp eq i32 %5859, 0
  br i1 %5860, label %6185, label %5861

; <label>:5861                                    ; preds = %5832
  br label %5862

; <label>:5862                                    ; preds = %5968, %5861
  %5863 = phi float [ %5969, %5968 ], [ %5833, %5861 ]
  %5864 = phi float [ %5970, %5968 ], [ %5834, %5861 ]
  %5865 = phi float [ %5971, %5968 ], [ %5835, %5861 ]
  %5866 = phi float [ %5972, %5968 ], [ %5836, %5861 ]
  %5867 = phi i32 [ %5872, %5968 ], [ %5859, %5861 ]
  %5868 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5867)  ; FirstbitLo(value)
  %5869 = add i32 %5868, %5844
  %5870 = and i32 %5868, 31
  %5871 = shl i32 1, %5870
  %5872 = xor i32 %5871, %5867
  %5873 = mul i32 %5869, 72
  %5874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5873, i32 undef)  ; BufferLoad(srv,index,wot)
  %5875 = extractvalue %dx.types.ResRet.f32 %5874, 0
  %5876 = extractvalue %dx.types.ResRet.f32 %5874, 1
  %5877 = extractvalue %dx.types.ResRet.f32 %5874, 2
  %5878 = add i32 %5873, 12
  %5879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5878, i32 undef)  ; BufferLoad(srv,index,wot)
  %5880 = extractvalue %dx.types.ResRet.i32 %5879, 0
  %5881 = add i32 %5873, 16
  %5882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5881, i32 undef)  ; BufferLoad(srv,index,wot)
  %5883 = extractvalue %dx.types.ResRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.ResRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.ResRet.f32 %5882, 2
  %5886 = add i32 %5873, 28
  %5887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5886, i32 undef)  ; BufferLoad(srv,index,wot)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = add i32 %5873, 32
  %5890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5889, i32 undef)  ; BufferLoad(srv,index,wot)
  %5891 = extractvalue %dx.types.ResRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.ResRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.ResRet.f32 %5890, 2
  %5894 = extractvalue %dx.types.ResRet.f32 %5890, 3
  %5895 = add i32 %5873, 48
  %5896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5895, i32 undef)  ; BufferLoad(srv,index,wot)
  %5897 = extractvalue %dx.types.ResRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.ResRet.f32 %5896, 1
  %5899 = add i32 %5873, 56
  %5900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5899, i32 undef)  ; BufferLoad(srv,index,wot)
  %5901 = extractvalue %dx.types.ResRet.f32 %5900, 0
  %5902 = extractvalue %dx.types.ResRet.f32 %5900, 1
  %5903 = add i32 %5873, 64
  %5904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5903, i32 undef)  ; BufferLoad(srv,index,wot)
  %5905 = extractvalue %dx.types.ResRet.f32 %5904, 0
  %5906 = extractvalue %dx.types.ResRet.f32 %5904, 1
  %5907 = mul i32 %5869, 60
  %5908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5907, i32 undef)  ; BufferLoad(srv,index,wot)
  %5909 = extractvalue %dx.types.ResRet.f32 %5908, 0
  %5910 = extractvalue %dx.types.ResRet.f32 %5908, 1
  %5911 = extractvalue %dx.types.ResRet.f32 %5908, 2
  %5912 = add i32 %5907, 12
  %5913 = add i32 %5907, 48
  %5914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5913, i32 undef)  ; BufferLoad(srv,index,wot)
  %5915 = extractvalue %dx.types.ResRet.f32 %5914, 0
  %5916 = extractvalue %dx.types.ResRet.f32 %5914, 1
  %5917 = extractvalue %dx.types.ResRet.f32 %5914, 2
  %5918 = and i32 %5880, 32767
  %5919 = bitcast float %5875 to i32
  %5920 = icmp eq i32 %5919, -1
  %5921 = bitcast float %5876 to i32
  %5922 = and i32 %5880, 32768
  %5923 = icmp ne i32 %5922, 0
  %5924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5925 = extractvalue %dx.types.CBufRet.f32 %5924, 0
  %5926 = extractvalue %dx.types.CBufRet.f32 %5924, 1
  %5927 = extractvalue %dx.types.CBufRet.f32 %5924, 2
  %5928 = fsub fast float %5909, %5925
  %5929 = fsub fast float %5910, %5926
  %5930 = fsub fast float %5911, %5927
  %5931 = fsub fast float %152, %5928
  %5932 = fsub fast float %153, %5929
  %5933 = fsub fast float %154, %5930
  %5934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5912, i32 undef)  ; BufferLoad(srv,index,wot)
  %5935 = extractvalue %dx.types.ResRet.f32 %5934, 0
  %5936 = extractvalue %dx.types.ResRet.f32 %5934, 1
  %5937 = extractvalue %dx.types.ResRet.f32 %5934, 2
  %5938 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float %5935, float %5936, float %5937)  ; Dot3(ax,ay,az,bx,by,bz)
  %5939 = add i32 %5907, 24
  %5940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5939, i32 undef)  ; BufferLoad(srv,index,wot)
  %5941 = extractvalue %dx.types.ResRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.ResRet.f32 %5940, 1
  %5943 = extractvalue %dx.types.ResRet.f32 %5940, 2
  %5944 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float %5941, float %5942, float %5943)  ; Dot3(ax,ay,az,bx,by,bz)
  %5945 = add i32 %5907, 36
  %5946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5945, i32 undef)  ; BufferLoad(srv,index,wot)
  %5947 = extractvalue %dx.types.ResRet.f32 %5946, 0
  %5948 = extractvalue %dx.types.ResRet.f32 %5946, 1
  %5949 = extractvalue %dx.types.ResRet.f32 %5946, 2
  %5950 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float %5947, float %5948, float %5949)  ; Dot3(ax,ay,az,bx,by,bz)
  %5951 = call float @dx.op.unary.f32(i32 6, float %5938)  ; FAbs(value)
  %5952 = call float @dx.op.unary.f32(i32 6, float %5944)  ; FAbs(value)
  %5953 = call float @dx.op.unary.f32(i32 6, float %5950)  ; FAbs(value)
  %5954 = fsub fast float %5915, %5951
  %5955 = fsub fast float %5916, %5952
  %5956 = fsub fast float %5917, %5953
  %5957 = fmul fast float %5954, %5883
  %5958 = fmul fast float %5955, %5884
  %5959 = fmul fast float %5956, %5885
  %5960 = call float @dx.op.binary.f32(i32 36, float %5958, float %5959)  ; FMin(a,b)
  %5961 = call float @dx.op.binary.f32(i32 36, float %5957, float %5960)  ; FMin(a,b)
  %5962 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5963 = call float @dx.op.binary.f32(i32 36, float %5866, float %5962)  ; FMin(a,b)
  %5964 = uitofp i1 %5923 to float
  %5965 = fsub fast float 1.000000e+00, %5964
  %5966 = fmul fast float %5963, %5965
  %5967 = fcmp fast ogt float %5966, 0.000000e+00
  br i1 %5967, label %5974, label %5968

; <label>:5968                                    ; preds = %6116, %5862
  %5969 = phi float [ %6180, %6116 ], [ %5863, %5862 ]
  %5970 = phi float [ %6181, %6116 ], [ %5864, %5862 ]
  %5971 = phi float [ %6182, %6116 ], [ %5865, %5862 ]
  %5972 = phi float [ %6183, %6116 ], [ %5866, %5862 ]
  %5973 = icmp eq i32 %5867, %5871
  br i1 %5973, label %6184, label %5862

; <label>:5974                                    ; preds = %5862
  br i1 %5920, label %6032, label %5975

; <label>:5975                                    ; preds = %5974
  %5976 = fsub fast float -0.000000e+00, %5935
  %5977 = fsub fast float -0.000000e+00, %5936
  %5978 = fsub fast float -0.000000e+00, %5937
  %5979 = call float @dx.op.dot3.f32(i32 55, float %5815, float %5816, float %5817, float %5976, float %5977, float %5978)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = fsub fast float -0.000000e+00, %5979
  %5981 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float %5976, float %5977, float %5978)  ; Dot3(ax,ay,az,bx,by,bz)
  %5982 = fadd fast float %5981, %5898
  %5983 = fadd fast float %5897, %5981
  %5984 = fsub fast float -0.000000e+00, %5983
  %5985 = fcmp ogt float %5979, -0.000000e+00
  %5986 = select i1 %5985, float %5984, float %5982
  %5987 = call float @dx.op.unary.f32(i32 6, float %5980)  ; FAbs(value)
  %5988 = fdiv fast float 1.000000e+00, %5987
  %5989 = fmul fast float %5986, %5988
  %5990 = call float @dx.op.binary.f32(i32 35, float %5989, float 0.000000e+00)  ; FMax(a,b)
  %5991 = fsub fast float -0.000000e+00, %5941
  %5992 = fsub fast float -0.000000e+00, %5942
  %5993 = fsub fast float -0.000000e+00, %5943
  %5994 = call float @dx.op.dot3.f32(i32 55, float %5815, float %5816, float %5817, float %5991, float %5992, float %5993)  ; Dot3(ax,ay,az,bx,by,bz)
  %5995 = fsub fast float -0.000000e+00, %5994
  %5996 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float %5991, float %5992, float %5993)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = fadd fast float %5996, %5902
  %5998 = fadd fast float %5901, %5996
  %5999 = fsub fast float -0.000000e+00, %5998
  %6000 = fcmp ogt float %5994, -0.000000e+00
  %6001 = select i1 %6000, float %5999, float %5997
  %6002 = call float @dx.op.unary.f32(i32 6, float %5995)  ; FAbs(value)
  %6003 = fdiv fast float 1.000000e+00, %6002
  %6004 = fmul fast float %6001, %6003
  %6005 = call float @dx.op.binary.f32(i32 35, float %6004, float 0.000000e+00)  ; FMax(a,b)
  %6006 = fsub fast float -0.000000e+00, %5947
  %6007 = fsub fast float -0.000000e+00, %5948
  %6008 = fsub fast float -0.000000e+00, %5949
  %6009 = call float @dx.op.dot3.f32(i32 55, float %5815, float %5816, float %5817, float %6006, float %6007, float %6008)  ; Dot3(ax,ay,az,bx,by,bz)
  %6010 = fsub fast float -0.000000e+00, %6009
  %6011 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float %6006, float %6007, float %6008)  ; Dot3(ax,ay,az,bx,by,bz)
  %6012 = fadd fast float %6011, %5906
  %6013 = fadd fast float %5905, %6011
  %6014 = fsub fast float -0.000000e+00, %6013
  %6015 = fcmp ogt float %6009, -0.000000e+00
  %6016 = select i1 %6015, float %6014, float %6012
  %6017 = call float @dx.op.unary.f32(i32 6, float %6010)  ; FAbs(value)
  %6018 = fdiv fast float 1.000000e+00, %6017
  %6019 = fmul fast float %6016, %6018
  %6020 = call float @dx.op.binary.f32(i32 35, float %6019, float 0.000000e+00)  ; FMax(a,b)
  %6021 = call float @dx.op.binary.f32(i32 36, float %6005, float %6020)  ; FMin(a,b)
  %6022 = call float @dx.op.binary.f32(i32 36, float %5990, float %6021)  ; FMin(a,b)
  %6023 = fmul fast float %6022, %5815
  %6024 = fmul fast float %6022, %5816
  %6025 = fmul fast float %6022, %5817
  %6026 = fadd fast float %6023, %152
  %6027 = fadd fast float %6024, %153
  %6028 = fadd fast float %6025, %154
  %6029 = fsub fast float %6026, %5875
  %6030 = fsub fast float %6027, %5876
  %6031 = fsub fast float %6028, %5877
  br label %6039

; <label>:6032                                    ; preds = %5974
  %6033 = fmul fast float %5815, 8.096000e+03
  %6034 = fmul fast float %5816, 8.096000e+03
  %6035 = fmul fast float %5817, 8.096000e+03
  %6036 = fadd fast float %6033, %152
  %6037 = fadd fast float %6034, %153
  %6038 = fadd fast float %6035, %154
  br label %6039

; <label>:6039                                    ; preds = %6032, %5975
  %6040 = phi float [ %5815, %6032 ], [ %6029, %5975 ]
  %6041 = phi float [ %5816, %6032 ], [ %6030, %5975 ]
  %6042 = phi float [ %5817, %6032 ], [ %6031, %5975 ]
  %6043 = phi float [ %6036, %6032 ], [ %6026, %5975 ]
  %6044 = phi float [ %6037, %6032 ], [ %6027, %5975 ]
  %6045 = phi float [ %6038, %6032 ], [ %6028, %5975 ]
  %6046 = fcmp fast olt float %5894, 1.000000e+00
  br i1 %6046, label %6047, label %6078, !dx.controlflow.hints !87

; <label>:6047                                    ; preds = %6039
  %6048 = fmul fast float %6042, %5892
  %6049 = fmul fast float %6041, %5893
  %6050 = fsub fast float %6048, %6049
  %6051 = fmul fast float %6040, %5893
  %6052 = fmul fast float %6042, %5891
  %6053 = fsub fast float %6051, %6052
  %6054 = fmul fast float %6041, %5891
  %6055 = fmul fast float %6040, %5892
  %6056 = fsub fast float %6054, %6055
  %6057 = fmul fast float %6050, 2.000000e+00
  %6058 = fmul fast float %6053, 2.000000e+00
  %6059 = fmul fast float %6056, 2.000000e+00
  %6060 = fmul fast float %6057, %5894
  %6061 = fmul fast float %6058, %5894
  %6062 = fmul fast float %6059, %5894
  %6063 = fmul fast float %6059, %5892
  %6064 = fmul fast float %6058, %5893
  %6065 = fmul fast float %6057, %5893
  %6066 = fmul fast float %6059, %5891
  %6067 = fmul fast float %6058, %5891
  %6068 = fmul fast float %6057, %5892
  %6069 = fadd fast float %6063, %6040
  %6070 = fadd fast float %6069, %6060
  %6071 = fsub fast float %6070, %6064
  %6072 = fsub fast float %6041, %6066
  %6073 = fadd fast float %6072, %6061
  %6074 = fadd fast float %6073, %6065
  %6075 = fadd fast float %6062, %6042
  %6076 = fsub fast float %6075, %6068
  %6077 = fadd fast float %6076, %6067
  br label %6078

; <label>:6078                                    ; preds = %6047, %6039
  %6079 = phi float [ %6071, %6047 ], [ %6040, %6039 ]
  %6080 = phi float [ %6074, %6047 ], [ %6041, %6039 ]
  %6081 = phi float [ %6077, %6047 ], [ %6042, %6039 ]
  br i1 %5920, label %6113, label %6082

; <label>:6082                                    ; preds = %6078
  %6083 = fmul fast float %5426, 0x400187C840000000
  %6084 = fadd fast float %6083, 0xC00EFC2120000000
  %6085 = fmul fast float %6084, %5426
  %6086 = fadd fast float %6085, 0x3FE5D16340000000
  %6087 = fmul fast float %6086, %5426
  %6088 = fadd fast float %6087, 1.000000e+00
  %6089 = call float @dx.op.unary.f32(i32 7, float %6088)  ; Saturate(value)
  %6090 = fsub fast float %6043, %152
  %6091 = fsub fast float %6044, %153
  %6092 = fsub fast float %6045, %154
  %6093 = fsub fast float %6043, %5875
  %6094 = fsub fast float %6044, %5876
  %6095 = fsub fast float %6045, %5877
  %6096 = call float @dx.op.dot3.f32(i32 55, float %6090, float %6091, float %6092, float %6090, float %6091, float %6092)  ; Dot3(ax,ay,az,bx,by,bz)
  %6097 = call float @dx.op.dot3.f32(i32 55, float %6093, float %6094, float %6095, float %6093, float %6094, float %6095)  ; Dot3(ax,ay,az,bx,by,bz)
  %6098 = fadd fast float %6097, 0x3EE4F8B580000000
  %6099 = fdiv fast float %6096, %6098
  %6100 = bitcast float %6099 to i32
  %6101 = ashr i32 %6100, 1
  %6102 = add nsw i32 %6101, 532487669
  %6103 = bitcast i32 %6102 to float
  %6104 = fmul fast float %6103, %6089
  %6105 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6106 = fmul fast float %6105, 0x4009981AE0000000
  %6107 = fsub fast float 0x40111BBD80000000, %6106
  %6108 = fmul fast float %6107, %6105
  %6109 = fadd fast float %6108, 0xC0009F6020000000
  %6110 = fmul fast float %6109, %6105
  %6111 = fadd fast float %6110, 1.000000e+00
  %6112 = call float @dx.op.unary.f32(i32 7, float %6111)  ; Saturate(value)
  br label %6116

; <label>:6113                                    ; preds = %6078
  %6114 = icmp ne i32 %5921, -1
  %6115 = zext i1 %6114 to i32
  br label %6116

; <label>:6116                                    ; preds = %6113, %6082
  %6117 = phi float [ %5426, %6113 ], [ %6112, %6082 ]
  %6118 = phi i32 [ %6115, %6113 ], [ 0, %6082 ]
  %6119 = fmul float %6117, 5.000000e+00
  %6120 = fsub float 5.000000e+00, %6119
  %6121 = icmp ne i32 %6118, 0
  %6122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.f32 %6122, 3
  %6124 = fadd fast float %6123, %6120
  %6125 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6124)  ; FMax(a,b)
  %6126 = call float @dx.op.unary.f32(i32 6, float %6079)  ; FAbs(value)
  %6127 = call float @dx.op.unary.f32(i32 6, float %6080)  ; FAbs(value)
  %6128 = fadd fast float %6127, %6126
  %6129 = call float @dx.op.unary.f32(i32 6, float %6081)  ; FAbs(value)
  %6130 = fadd fast float %6128, %6129
  %6131 = fcmp fast oeq float %6130, 0.000000e+00
  %6132 = fdiv fast float 1.000000e+00, %6130
  %6133 = select i1 %6131, float 1.000000e+00, float %6132
  %6134 = fmul fast float %6133, %6079
  %6135 = fmul fast float %6133, %6080
  %6136 = call float @dx.op.unary.f32(i32 6, float %6135)  ; FAbs(value)
  %6137 = call float @dx.op.unary.f32(i32 6, float %6134)  ; FAbs(value)
  %6138 = fsub fast float 1.000000e+00, %6136
  %6139 = fsub fast float 1.000000e+00, %6137
  %6140 = fcmp fast oge float %6134, 0.000000e+00
  %6141 = fcmp fast oge float %6135, 0.000000e+00
  %6142 = select i1 %6140, float 1.000000e+00, float -1.000000e+00
  %6143 = select i1 %6141, float 1.000000e+00, float -1.000000e+00
  %6144 = fcmp fast ole float %6081, 0.000000e+00
  %6145 = fmul fast float %6142, %6138
  %6146 = fmul fast float %6143, %6139
  %6147 = select i1 %6144, float %6145, float %6134
  %6148 = select i1 %6144, float %6146, float %6135
  %6149 = fmul fast float %6147, 5.000000e-01
  %6150 = fmul fast float %6148, 5.000000e-01
  %6151 = fadd fast float %6149, 5.000000e-01
  %6152 = fadd fast float %6150, 5.000000e-01
  %6153 = uitofp i32 %5918 to float
  %6154 = call float @dx.op.binary.f32(i32 36, float %6125, float 3.000000e+00)  ; FMin(a,b)
  %6155 = fadd fast float %6154, 2.000000e+00
  %6156 = call float @dx.op.unary.f32(i32 21, float %6155)  ; Exp(value)
  %6157 = extractvalue %dx.types.CBufRet.f32 %6122, 1
  %6158 = fmul fast float %6157, %6156
  %6159 = fmul fast float %6158, 2.000000e+00
  %6160 = fsub fast float 1.000000e+00, %6159
  %6161 = fmul fast float %6151, %6160
  %6162 = fmul fast float %6152, %6160
  %6163 = fadd fast float %6161, %6158
  %6164 = fadd fast float %6162, %6158
  %6165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %6163, float %6164, float %6153, float undef, i32 0, i32 0, i32 undef, float %6125)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6166 = extractvalue %dx.types.ResRet.f32 %6165, 0
  %6167 = extractvalue %dx.types.ResRet.f32 %6165, 1
  %6168 = extractvalue %dx.types.ResRet.f32 %6165, 2
  %6169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.f32 %6169, 3
  %6171 = fmul fast float %6170, %5888
  %6172 = call float @dx.op.binary.f32(i32 36, float %5456, float %6171)  ; FMin(a,b)
  %6173 = select i1 %6121, float %6172, float %6171
  %6174 = fmul fast float %6166, %5966
  %6175 = fmul fast float %6174, %6173
  %6176 = fmul fast float %6167, %5966
  %6177 = fmul fast float %6176, %6173
  %6178 = fmul fast float %6168, %5966
  %6179 = fmul fast float %6178, %6173
  %6180 = fadd fast float %6175, %5863
  %6181 = fadd fast float %6177, %5864
  %6182 = fadd fast float %6179, %5865
  %6183 = fsub fast float %5866, %5966
  br label %5968

; <label>:6184                                    ; preds = %5968
  br label %6185

; <label>:6185                                    ; preds = %6184, %5832
  %6186 = phi float [ %5833, %5832 ], [ %5969, %6184 ]
  %6187 = phi float [ %5834, %5832 ], [ %5970, %6184 ]
  %6188 = phi float [ %5835, %5832 ], [ %5971, %6184 ]
  %6189 = phi float [ %5836, %5832 ], [ %5972, %6184 ]
  %6190 = add i32 %5837, 1
  %6191 = icmp ugt i32 %6190, %5829
  br i1 %6191, label %6192, label %5832, !llvm.loop !88

; <label>:6192                                    ; preds = %6185
  br label %6193

; <label>:6193                                    ; preds = %6192, %5814
  %6194 = phi float [ 0.000000e+00, %5814 ], [ %6186, %6192 ]
  %6195 = phi float [ 0.000000e+00, %5814 ], [ %6187, %6192 ]
  %6196 = phi float [ 0.000000e+00, %5814 ], [ %6188, %6192 ]
  %6197 = call float @dx.op.dot3.f32(i32 55, float %6194, float %6195, float %6196, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6198 = select i1 %213, float 0.000000e+00, float %6194
  %6199 = select i1 %213, float %6197, float %6195
  %6200 = select i1 %213, float 0.000000e+00, float %6196
  %6201 = fcmp fast olt float %5767, 0.000000e+00
  %6202 = call float @dx.op.unary.f32(i32 6, float %5767)  ; FAbs(value)
  %6203 = fmul fast float %6202, %5696
  %6204 = fmul fast float %6202, %5697
  %6205 = fmul fast float %6202, %5698
  %6206 = select i1 %6201, float %5696, float %6203
  %6207 = select i1 %6201, float %5697, float %6204
  %6208 = select i1 %6201, float %5698, float %6205
  %6209 = fsub fast float 1.000000e+00, %6202
  %6210 = call float @dx.op.unary.f32(i32 7, float %6209)  ; Saturate(value)
  %6211 = fmul fast float %6210, %6198
  %6212 = fmul fast float %6210, %6199
  %6213 = fmul fast float %6210, %6200
  %6214 = fadd fast float %6206, %6211
  %6215 = fadd fast float %6207, %6212
  %6216 = fadd fast float %6208, %6213
  br label %6217

; <label>:6217                                    ; preds = %6193, %5750
  %6218 = phi float [ %5696, %5750 ], [ %6214, %6193 ]
  %6219 = phi float [ %5697, %5750 ], [ %6215, %6193 ]
  %6220 = phi float [ %5698, %5750 ], [ %6216, %6193 ]
  %6221 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6222 = fcmp fast ogt float %6221, 0x3E7FF19E20000000
  %6223 = fdiv fast float 1.000000e+00, %6221
  %6224 = select i1 %6222, float %6223, float 0.000000e+00
  %6225 = fmul fast float %6224, %5420
  %6226 = fmul fast float %6224, %5421
  %6227 = fmul fast float %6224, %5422
  %6228 = fadd fast float %6225, -1.000000e+00
  %6229 = fadd fast float %6226, -1.000000e+00
  %6230 = fadd fast float %6227, -1.000000e+00
  %6231 = fmul fast float %6228, 5.000000e-01
  %6232 = fmul fast float %6229, 5.000000e-01
  %6233 = fmul fast float %6230, 5.000000e-01
  %6234 = fadd fast float %6231, 1.000000e+00
  %6235 = fadd fast float %6232, 1.000000e+00
  %6236 = fadd fast float %6233, 1.000000e+00
  %6237 = call float @dx.op.binary.f32(i32 35, float %5430, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6238 = fdiv fast float %4414, %6237
  %6239 = fcmp fast olt float %5126, 1.270000e+02
  %6240 = fcmp fast olt float %5127, 1.270000e+02
  %6241 = fcmp fast olt float %5128, 1.270000e+02
  %6242 = fmul fast float %5126, 0xBFF7154760000000
  %6243 = fmul fast float %6242, %6238
  %6244 = fmul fast float %5127, 0xBFF7154760000000
  %6245 = fmul fast float %6244, %6238
  %6246 = fmul fast float %5128, 0xBFF7154760000000
  %6247 = fmul fast float %6246, %6238
  %6248 = call float @dx.op.unary.f32(i32 21, float %6243)  ; Exp(value)
  %6249 = call float @dx.op.unary.f32(i32 21, float %6245)  ; Exp(value)
  %6250 = call float @dx.op.unary.f32(i32 21, float %6247)  ; Exp(value)
  %6251 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  %6252 = call float @dx.op.unary.f32(i32 7, float %6249)  ; Saturate(value)
  %6253 = call float @dx.op.unary.f32(i32 7, float %6250)  ; Saturate(value)
  %6254 = select i1 %6239, float %6251, float 0.000000e+00
  %6255 = select i1 %6240, float %6252, float 0.000000e+00
  %6256 = select i1 %6241, float %6253, float 0.000000e+00
  %6257 = fmul fast float %6254, %5756
  %6258 = fmul fast float %6255, %5756
  %6259 = fmul fast float %6256, %5756
  %6260 = fadd fast float %6257, -1.000000e+00
  %6261 = fadd fast float %6258, -1.000000e+00
  %6262 = fadd fast float %6259, -1.000000e+00
  %6263 = fmul fast float %6260, %5074
  %6264 = fmul fast float %6261, %5074
  %6265 = fmul fast float %6262, %5074
  %6266 = fmul fast float %6218, %5751
  %6267 = fmul fast float %6219, %5752
  %6268 = fmul fast float %6220, %5753
  %6269 = fsub fast float 1.000000e+00, %5430
  %6270 = bitcast float %6269 to i32
  %6271 = sitofp i32 %6270 to float
  %6272 = fmul fast float %6271, 5.000000e+00
  %6273 = fadd fast float %6272, 0xC1EFBF8940000000
  %6274 = fptosi float %6273 to i32
  %6275 = bitcast i32 %6274 to float
  %6276 = fmul fast float %6275, %5078
  %6277 = fmul fast float %5688, %6276
  %6278 = fmul fast float %6277, %5756
  %6279 = fmul fast float %6278, %6234
  %6280 = fmul fast float %5689, %6276
  %6281 = fmul fast float %6280, %5756
  %6282 = fmul fast float %6281, %6235
  %6283 = fmul fast float %5690, %6276
  %6284 = fmul fast float %6283, %5756
  %6285 = fmul fast float %6284, %6236
  %6286 = fadd fast float %6266, %5064
  %6287 = fadd fast float %6286, %6279
  %6288 = fmul fast float %6287, %5074
  %6289 = fadd fast float %6267, %5065
  %6290 = fadd fast float %6289, %6282
  %6291 = fmul fast float %6290, %5074
  %6292 = fadd fast float %6268, %5066
  %6293 = fadd fast float %6292, %6285
  %6294 = fmul fast float %6293, %5074
  %6295 = fmul fast float %5418, 0x4012D0A400000000
  %6296 = fadd fast float %6265, 1.000000e+00
  %6297 = fadd fast float %6264, 1.000000e+00
  %6298 = fadd fast float %6263, 1.000000e+00
  %6299 = fmul fast float %5756, %5690
  %6300 = fmul fast float %5756, %5689
  %6301 = fmul fast float %5756, %5688
  %6302 = fmul fast float %5445, %5074
  %6303 = fsub fast float 1.000000e+00, %6302
  %6304 = call float @dx.op.unary.f32(i32 7, float %6303)  ; Saturate(value)
  %6305 = fsub fast float 1.000000e+00, %6304
  %6306 = fadd fast float %6295, 0x3FDB6377A0000000
  %6307 = fmul fast float %6305, %6306
  %6308 = call float @dx.op.dot3.f32(i32 55, float %5144, float %5145, float %5146, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6309 = fadd fast float %6307, %6308
  %6310 = call float @dx.op.unary.f32(i32 7, float %6309)  ; Saturate(value)
  %6311 = call float @dx.op.binary.f32(i32 35, float %6310, float 0x3F847AE140000000)  ; FMax(a,b)
  %6312 = fmul fast float %6311, %6311
  %6313 = fmul fast float %6312, %6312
  %6314 = fmul fast float %6313, 0xC00A935000000000
  %6315 = call float @dx.op.unary.f32(i32 21, float %6314)  ; Exp(value)
  %6316 = fsub fast float 1.000000e+00, %6315
  %6317 = fmul fast float %6298, %5692
  %6318 = fmul fast float %6317, %6316
  %6319 = fmul fast float %6297, %5693
  %6320 = fmul fast float %6319, %6316
  %6321 = fmul fast float %6296, %5694
  %6322 = fmul fast float %6321, %6316
  %6323 = fadd fast float %6318, %6301
  %6324 = fmul fast float %6323, %5074
  %6325 = fadd fast float %6320, %6300
  %6326 = fmul fast float %6325, %5074
  %6327 = fadd fast float %6322, %6299
  %6328 = fmul fast float %6327, %5074
  %6329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6330 = extractvalue %dx.types.CBufRet.f32 %6329, 3
  %6331 = fcmp fast oeq float %6330, 0.000000e+00
  br i1 %6331, label %7935, label %6332

; <label>:6332                                    ; preds = %6217
  %6333 = extractvalue %dx.types.CBufRet.f32 %6329, 0
  %6334 = extractvalue %dx.types.CBufRet.f32 %6329, 1
  %6335 = extractvalue %dx.types.CBufRet.f32 %6329, 2
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 0
  %6338 = extractvalue %dx.types.CBufRet.f32 %6336, 1
  %6339 = extractvalue %dx.types.CBufRet.f32 %6336, 2
  %6340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6341 = extractvalue %dx.types.CBufRet.f32 %6340, 0
  %6342 = extractvalue %dx.types.CBufRet.f32 %6340, 1
  %6343 = call float @dx.op.dot3.f32(i32 55, float %6337, float %6338, float %6339, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6344 = select i1 %213, float %6341, float %6337
  %6345 = select i1 %213, float %6343, float %6338
  %6346 = select i1 %213, float %6342, float %6339
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 2
  %6349 = fmul fast float %6348, %104
  %6350 = fmul fast float %6348, %105
  %6351 = fmul fast float %6348, %106
  %6352 = fadd fast float %6349, %152
  %6353 = fadd fast float %6350, %153
  %6354 = fadd fast float %6351, %154
  %6355 = fcmp fast olt float %6330, 0.000000e+00
  br i1 %6355, label %7451, label %6356

; <label>:6356                                    ; preds = %6332
  %6357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6358 = extractvalue %dx.types.CBufRet.f32 %6357, 0
  %6359 = extractvalue %dx.types.CBufRet.f32 %6357, 1
  %6360 = extractvalue %dx.types.CBufRet.f32 %6357, 2
  %6361 = extractvalue %dx.types.CBufRet.f32 %6357, 3
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.f32 %6362, 0
  %6364 = extractvalue %dx.types.CBufRet.f32 %6362, 1
  %6365 = extractvalue %dx.types.CBufRet.f32 %6362, 2
  %6366 = extractvalue %dx.types.CBufRet.f32 %6362, 3
  %6367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.f32 %6367, 0
  %6369 = extractvalue %dx.types.CBufRet.f32 %6367, 1
  %6370 = extractvalue %dx.types.CBufRet.f32 %6367, 2
  %6371 = extractvalue %dx.types.CBufRet.f32 %6367, 3
  %6372 = fmul fast float %6358, %6352
  %6373 = call float @dx.op.tertiary.f32(i32 46, float %6353, float %6359, float %6372)  ; FMad(a,b,c)
  %6374 = call float @dx.op.tertiary.f32(i32 46, float %6354, float %6360, float %6373)  ; FMad(a,b,c)
  %6375 = fadd fast float %6374, %6361
  %6376 = fmul fast float %6363, %6352
  %6377 = call float @dx.op.tertiary.f32(i32 46, float %6353, float %6364, float %6376)  ; FMad(a,b,c)
  %6378 = call float @dx.op.tertiary.f32(i32 46, float %6354, float %6365, float %6377)  ; FMad(a,b,c)
  %6379 = fadd fast float %6378, %6366
  %6380 = fmul fast float %6368, %6352
  %6381 = call float @dx.op.tertiary.f32(i32 46, float %6353, float %6369, float %6380)  ; FMad(a,b,c)
  %6382 = call float @dx.op.tertiary.f32(i32 46, float %6354, float %6370, float %6381)  ; FMad(a,b,c)
  %6383 = fadd fast float %6382, %6371
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 0
  %6386 = extractvalue %dx.types.CBufRet.f32 %6384, 1
  %6387 = extractvalue %dx.types.CBufRet.f32 %6384, 3
  %6388 = fmul fast float %6387, %6375
  %6389 = fmul fast float %6387, %6379
  %6390 = fadd fast float %6388, %6385
  %6391 = fadd fast float %6389, %6386
  %6392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6393 = extractvalue %dx.types.CBufRet.f32 %6392, 0
  %6394 = extractvalue %dx.types.CBufRet.f32 %6392, 1
  %6395 = extractvalue %dx.types.CBufRet.f32 %6392, 3
  %6396 = fmul fast float %6395, %6375
  %6397 = fmul fast float %6395, %6379
  %6398 = fadd fast float %6396, %6393
  %6399 = fadd fast float %6397, %6394
  %6400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6401 = extractvalue %dx.types.CBufRet.f32 %6400, 1
  %6402 = fsub fast float %6401, %6383
  %6403 = extractvalue %dx.types.CBufRet.f32 %6400, 2
  %6404 = fmul fast float %6402, %6403
  %6405 = fsub fast float 1.000000e+00, %6404
  %6406 = call float @dx.op.unary.f32(i32 7, float %6405)  ; Saturate(value)
  %6407 = extractvalue %dx.types.CBufRet.f32 %6392, 2
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 2
  %6410 = fadd fast float %6409, %6407
  %6411 = fcmp fast ogt float %6410, 0.000000e+00
  br i1 %6411, label %6412, label %6436

; <label>:6412                                    ; preds = %6356
  %6413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6414 = extractvalue %dx.types.CBufRet.f32 %6413, 0
  %6415 = extractvalue %dx.types.CBufRet.f32 %6413, 1
  %6416 = fsub fast float %6398, %6414
  %6417 = fsub fast float %6399, %6415
  %6418 = fcmp fast olt float %6416, 0.000000e+00
  %6419 = fcmp fast olt float %6417, 0.000000e+00
  %6420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6421 = extractvalue %dx.types.CBufRet.f32 %6420, 0
  %6422 = extractvalue %dx.types.CBufRet.f32 %6420, 1
  %6423 = extractvalue %dx.types.CBufRet.f32 %6420, 2
  %6424 = extractvalue %dx.types.CBufRet.f32 %6420, 3
  %6425 = select i1 %6418, float %6421, float %6423
  %6426 = select i1 %6419, float %6422, float %6424
  %6427 = fmul fast float %6425, %6416
  %6428 = fmul fast float %6426, %6417
  %6429 = call float @dx.op.unary.f32(i32 6, float %6427)  ; FAbs(value)
  %6430 = call float @dx.op.unary.f32(i32 6, float %6428)  ; FAbs(value)
  %6431 = extractvalue %dx.types.CBufRet.f32 %6347, 0
  %6432 = call float @dx.op.binary.f32(i32 35, float %6429, float %6430)  ; FMax(a,b)
  %6433 = fsub fast float %6431, %6432
  %6434 = call float @dx.op.unary.f32(i32 7, float %6433)  ; Saturate(value)
  %6435 = fmul fast float %6434, %6406
  br label %6436

; <label>:6436                                    ; preds = %6412, %6356
  %6437 = phi float [ %6435, %6412 ], [ 0.000000e+00, %6356 ]
  %6438 = extractvalue %dx.types.CBufRet.f32 %6384, 2
  %6439 = extractvalue %dx.types.CBufRet.f32 %6408, 1
  %6440 = fadd fast float %6439, %6438
  %6441 = fcmp fast ogt float %6440, 0.000000e+00
  %6442 = extractvalue %dx.types.CBufRet.f32 %6347, 0
  br i1 %6441, label %6443, label %6466

; <label>:6443                                    ; preds = %6436
  %6444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6444, 0
  %6446 = extractvalue %dx.types.CBufRet.f32 %6444, 1
  %6447 = fsub fast float %6390, %6445
  %6448 = fsub fast float %6391, %6446
  %6449 = fcmp fast olt float %6447, 0.000000e+00
  %6450 = fcmp fast olt float %6448, 0.000000e+00
  %6451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.f32 %6451, 0
  %6453 = extractvalue %dx.types.CBufRet.f32 %6451, 1
  %6454 = extractvalue %dx.types.CBufRet.f32 %6451, 2
  %6455 = extractvalue %dx.types.CBufRet.f32 %6451, 3
  %6456 = select i1 %6449, float %6452, float %6454
  %6457 = select i1 %6450, float %6453, float %6455
  %6458 = fmul fast float %6456, %6447
  %6459 = fmul fast float %6457, %6448
  %6460 = call float @dx.op.unary.f32(i32 6, float %6458)  ; FAbs(value)
  %6461 = call float @dx.op.unary.f32(i32 6, float %6459)  ; FAbs(value)
  %6462 = call float @dx.op.binary.f32(i32 35, float %6460, float %6461)  ; FMax(a,b)
  %6463 = fsub fast float %6442, %6462
  %6464 = call float @dx.op.unary.f32(i32 7, float %6463)  ; Saturate(value)
  %6465 = fmul fast float %6464, %6406
  br label %6466

; <label>:6466                                    ; preds = %6443, %6436
  %6467 = phi float [ %6465, %6443 ], [ 0.000000e+00, %6436 ]
  %6468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6469 = extractvalue %dx.types.CBufRet.f32 %6468, 1
  %6470 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6471, 0
  %6473 = extractvalue %dx.types.CBufRet.f32 %6471, 1
  %6474 = fsub fast float %6375, %6472
  %6475 = fsub fast float %6379, %6473
  %6476 = fcmp fast olt float %6474, 0.000000e+00
  %6477 = fcmp fast olt float %6475, 0.000000e+00
  %6478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6479 = extractvalue %dx.types.CBufRet.f32 %6478, 0
  %6480 = extractvalue %dx.types.CBufRet.f32 %6478, 1
  %6481 = extractvalue %dx.types.CBufRet.f32 %6478, 2
  %6482 = extractvalue %dx.types.CBufRet.f32 %6478, 3
  %6483 = select i1 %6476, float %6479, float %6481
  %6484 = select i1 %6477, float %6480, float %6482
  %6485 = fmul fast float %6483, %6474
  %6486 = fmul fast float %6484, %6475
  %6487 = call float @dx.op.unary.f32(i32 6, float %6485)  ; FAbs(value)
  %6488 = call float @dx.op.unary.f32(i32 6, float %6486)  ; FAbs(value)
  %6489 = call float @dx.op.binary.f32(i32 35, float %6487, float %6488)  ; FMax(a,b)
  %6490 = fsub fast float %6442, %6489
  %6491 = call float @dx.op.unary.f32(i32 7, float %6490)  ; Saturate(value)
  %6492 = call float @dx.op.binary.f32(i32 36, float %6491, float %6470)  ; FMin(a,b)
  %6493 = fmul fast float %6492, %6406
  %6494 = fsub fast float %6467, %6493
  %6495 = fsub fast float %6437, %6467
  %6496 = fsub fast float %6495, %6493
  %6497 = call float @dx.op.binary.f32(i32 35, float %6467, float %6437)  ; FMax(a,b)
  %6498 = call float @dx.op.binary.f32(i32 35, float %6493, float %6497)  ; FMax(a,b)
  %6499 = fcmp fast olt float %6498, 1.000000e+00
  br i1 %6499, label %6500, label %6898, !dx.controlflow.hints !90

; <label>:6500                                    ; preds = %6466
  %6501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6502 = extractvalue %dx.types.CBufRet.f32 %6501, 0
  %6503 = fcmp fast une float %6502, 0.000000e+00
  br i1 %6503, label %6504, label %6898, !dx.controlflow.hints !91

; <label>:6504                                    ; preds = %6500
  %6505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6505, 0
  %6507 = extractvalue %dx.types.CBufRet.f32 %6505, 1
  %6508 = extractvalue %dx.types.CBufRet.f32 %6505, 2
  %6509 = extractvalue %dx.types.CBufRet.f32 %6505, 3
  %6510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6511 = extractvalue %dx.types.CBufRet.f32 %6510, 0
  %6512 = extractvalue %dx.types.CBufRet.f32 %6510, 1
  %6513 = extractvalue %dx.types.CBufRet.f32 %6510, 2
  %6514 = extractvalue %dx.types.CBufRet.f32 %6510, 3
  %6515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6516 = extractvalue %dx.types.CBufRet.f32 %6515, 0
  %6517 = extractvalue %dx.types.CBufRet.f32 %6515, 1
  %6518 = extractvalue %dx.types.CBufRet.f32 %6515, 2
  %6519 = extractvalue %dx.types.CBufRet.f32 %6515, 3
  %6520 = fmul fast float %6506, %6352
  %6521 = call float @dx.op.tertiary.f32(i32 46, float %6353, float %6507, float %6520)  ; FMad(a,b,c)
  %6522 = call float @dx.op.tertiary.f32(i32 46, float %6354, float %6508, float %6521)  ; FMad(a,b,c)
  %6523 = fadd fast float %6522, %6509
  %6524 = fmul fast float %6511, %6352
  %6525 = call float @dx.op.tertiary.f32(i32 46, float %6353, float %6512, float %6524)  ; FMad(a,b,c)
  %6526 = call float @dx.op.tertiary.f32(i32 46, float %6354, float %6513, float %6525)  ; FMad(a,b,c)
  %6527 = fadd fast float %6526, %6514
  %6528 = fmul fast float %6516, %6352
  %6529 = call float @dx.op.tertiary.f32(i32 46, float %6353, float %6517, float %6528)  ; FMad(a,b,c)
  %6530 = call float @dx.op.tertiary.f32(i32 46, float %6354, float %6518, float %6529)  ; FMad(a,b,c)
  %6531 = fadd fast float %6530, %6519
  %6532 = fcmp fast oge float %6523, 1.000000e+00
  %6533 = fcmp fast oge float %6527, 1.000000e+00
  %6534 = or i1 %6532, %6533
  %6535 = fcmp fast olt float %6523, 0.000000e+00
  %6536 = fcmp fast olt float %6527, 0.000000e+00
  %6537 = or i1 %6535, %6536
  %6538 = or i1 %6534, %6537
  br i1 %6538, label %6898, label %6539, !dx.controlflow.hints !92

; <label>:6539                                    ; preds = %6504
  %6540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.f32 %6540, 0
  %6542 = extractvalue %dx.types.CBufRet.f32 %6540, 1
  %6543 = extractvalue %dx.types.CBufRet.f32 %6540, 2
  %6544 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6545 = extractvalue %dx.types.CBufRet.i32 %6544, 2
  %6546 = uitofp i32 %6545 to float
  %6547 = extractvalue %dx.types.CBufRet.i32 %6544, 3
  %6548 = uitofp i32 %6547 to float
  %6549 = extractvalue %dx.types.CBufRet.f32 %6540, 3
  %6550 = fmul fast float %6549, 2.000000e+00
  %6551 = fsub fast float %6523, %6541
  %6552 = fsub fast float %6527, %6542
  %6553 = fmul fast float %6550, %6551
  %6554 = fmul fast float %6550, %6552
  %6555 = fdiv fast float 1.000000e+00, %6335
  %6556 = fmul fast float %6554, %6555
  %6557 = call float @dx.op.unary.f32(i32 6, float %6556)  ; FAbs(value)
  %6558 = fmul fast float %6543, %6354
  %6559 = fmul fast float %6558, %6550
  %6560 = call float @dx.op.unary.f32(i32 6, float %6559)  ; FAbs(value)
  %6561 = call float @dx.op.unary.f32(i32 6, float %6553)  ; FAbs(value)
  %6562 = call float @dx.op.binary.f32(i32 35, float %6560, float %6557)  ; FMax(a,b)
  %6563 = call float @dx.op.binary.f32(i32 35, float %6561, float %6562)  ; FMax(a,b)
  %6564 = fmul fast float %6563, 2.000000e+00
  %6565 = call float @dx.op.unary.f32(i32 23, float %6564)  ; Log(value)
  %6566 = call float @dx.op.binary.f32(i32 35, float %6565, float %6546)  ; FMax(a,b)
  %6567 = call float @dx.op.unary.f32(i32 22, float %6566)  ; Frc(value)
  %6568 = fadd fast float %6567, 0xBFEA666660000000
  %6569 = fmul fast float %6568, 8.000000e+00
  %6570 = call float @dx.op.unary.f32(i32 7, float %6569)  ; Saturate(value)
  %6571 = call float @dx.op.unary.f32(i32 27, float %6566)  ; Round_ni(value)
  %6572 = fadd fast float %6571, %6570
  %6573 = call float @dx.op.binary.f32(i32 36, float %6572, float %6548)  ; FMin(a,b)
  %6574 = call float @dx.op.unary.f32(i32 27, float %6573)  ; Round_ni(value)
  %6575 = fsub fast float -0.000000e+00, %6574
  %6576 = call float @dx.op.unary.f32(i32 21, float %6575)  ; Exp(value)
  %6577 = fmul fast float %6576, %6550
  %6578 = fmul fast float %6577, %6523
  %6579 = fmul fast float %6577, %6527
  %6580 = fmul fast float %6578, 2.500000e-01
  %6581 = fmul fast float %6579, 2.500000e-01
  %6582 = fadd fast float %6580, 5.000000e-01
  %6583 = fadd fast float %6581, 5.000000e-01
  %6584 = fsub fast float %6548, %6546
  %6585 = fptoui float %6584 to i32
  %6586 = add i32 %6585, 320
  %6587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %6586)  ; CBufferLoadLegacy(handle,regIndex)
  %6588 = extractvalue %dx.types.CBufRet.f32 %6587, 0
  %6589 = extractvalue %dx.types.CBufRet.f32 %6587, 1
  %6590 = fcmp fast une float %6573, %6548
  %6591 = fsub fast float %6523, %6588
  %6592 = fsub fast float %6527, %6589
  %6593 = call float @dx.op.unary.f32(i32 6, float %6591)  ; FAbs(value)
  %6594 = call float @dx.op.unary.f32(i32 6, float %6592)  ; FAbs(value)
  %6595 = fmul fast float %6593, %6577
  %6596 = fmul fast float %6594, %6577
  %6597 = fcmp fast olt float %6595, 1.000000e+00
  %6598 = fcmp fast olt float %6596, 1.000000e+00
  %6599 = and i1 %6597, %6598
  %6600 = or i1 %6590, %6599
  br i1 %6600, label %6601, label %6898, !dx.controlflow.hints !93

; <label>:6601                                    ; preds = %6539
  %6602 = fmul fast float %6579, 5.000000e-01
  %6603 = fmul fast float %6578, 5.000000e-01
  %6604 = fadd fast float %6602, 5.000000e-01
  %6605 = fadd fast float %6603, 5.000000e-01
  %6606 = sitofp i32 %6545 to float
  %6607 = fsub fast float %6573, %6606
  %6608 = call float @dx.op.unary.f32(i32 27, float %6607)  ; Round_ni(value)
  %6609 = call float @dx.op.unary.f32(i32 22, float %6573)  ; Frc(value)
  %6610 = call float @dx.op.unary.f32(i32 22, float %6605)  ; Frc(value)
  %6611 = call float @dx.op.unary.f32(i32 22, float %6604)  ; Frc(value)
  %6612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6610, float %6611, float %6608, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6613 = extractvalue %dx.types.ResRet.f32 %6612, 0
  %6614 = extractvalue %dx.types.ResRet.f32 %6612, 1
  %6615 = extractvalue %dx.types.ResRet.f32 %6612, 2
  %6616 = extractvalue %dx.types.ResRet.f32 %6612, 3
  %6617 = fcmp fast ogt float %6609, 0.000000e+00
  br i1 %6617, label %6618, label %6639, !dx.controlflow.hints !94

; <label>:6618                                    ; preds = %6601
  %6619 = fadd fast float %6608, 1.000000e+00
  %6620 = call float @dx.op.unary.f32(i32 22, float %6582)  ; Frc(value)
  %6621 = call float @dx.op.unary.f32(i32 22, float %6583)  ; Frc(value)
  %6622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6620, float %6621, float %6619, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6623 = extractvalue %dx.types.ResRet.f32 %6622, 0
  %6624 = extractvalue %dx.types.ResRet.f32 %6622, 1
  %6625 = extractvalue %dx.types.ResRet.f32 %6622, 2
  %6626 = extractvalue %dx.types.ResRet.f32 %6622, 3
  %6627 = fsub fast float %6623, %6613
  %6628 = fsub fast float %6624, %6614
  %6629 = fsub fast float %6625, %6615
  %6630 = fsub fast float %6626, %6616
  %6631 = fmul fast float %6627, %6609
  %6632 = fmul fast float %6628, %6609
  %6633 = fmul fast float %6629, %6609
  %6634 = fmul fast float %6630, %6609
  %6635 = fadd fast float %6631, %6613
  %6636 = fadd fast float %6632, %6614
  %6637 = fadd fast float %6633, %6615
  %6638 = fadd fast float %6634, %6616
  br label %6639

; <label>:6639                                    ; preds = %6618, %6601
  %6640 = phi float [ %6635, %6618 ], [ %6613, %6601 ]
  %6641 = phi float [ %6636, %6618 ], [ %6614, %6601 ]
  %6642 = phi float [ %6637, %6618 ], [ %6615, %6601 ]
  %6643 = phi float [ %6638, %6618 ], [ %6616, %6601 ]
  %6644 = fadd fast float %6640, -5.000000e-01
  %6645 = fadd fast float %6642, -5.000000e-01
  %6646 = fmul fast float %6644, 0xBFD5555560000000
  %6647 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6645, float %6646)  ; FMad(a,b,c)
  %6648 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6641, float 0.000000e+00)  ; FMad(a,b,c)
  %6649 = fadd fast float %6648, %6643
  %6650 = fmul fast float %6644, -7.500000e-01
  %6651 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6645, float %6650)  ; FMad(a,b,c)
  %6652 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6641, float 0.000000e+00)  ; FMad(a,b,c)
  %6653 = fadd fast float %6652, %6643
  %6654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6655 = extractvalue %dx.types.CBufRet.f32 %6654, 0
  %6656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6657 = extractvalue %dx.types.CBufRet.f32 %6656, 0
  %6658 = extractvalue %dx.types.CBufRet.f32 %6656, 1
  %6659 = extractvalue %dx.types.CBufRet.f32 %6656, 2
  %6660 = extractvalue %dx.types.CBufRet.f32 %6656, 3
  %6661 = fsub fast float %6657, %6647
  %6662 = fsub fast float %6658, %6649
  %6663 = fsub fast float %6659, %6651
  %6664 = fsub fast float %6660, %6653
  %6665 = fmul fast float %6661, %6655
  %6666 = fmul fast float %6662, %6655
  %6667 = fmul fast float %6663, %6655
  %6668 = fmul fast float %6664, %6655
  %6669 = fadd fast float %6665, %6647
  %6670 = fadd fast float %6666, %6649
  %6671 = fadd fast float %6667, %6651
  %6672 = fadd fast float %6668, %6653
  %6673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6674 = extractvalue %dx.types.ResRet.i32 %6673, 0
  %6675 = and i32 %6674, 536870911
  %6676 = uitofp i32 %6675 to float
  %6677 = fmul fast float %6676, %6523
  %6678 = fmul fast float %6676, %6527
  %6679 = fptoui float %6677 to i32
  %6680 = fptoui float %6678 to i32
  %6681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6682 = extractvalue %dx.types.ResRet.i32 %6681, 0
  %6683 = and i32 %6682, 31
  %6684 = lshr i32 %6679, %6683
  %6685 = lshr i32 %6680, %6683
  %6686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6687 = extractvalue %dx.types.ResRet.i32 %6686, 0
  %6688 = and i32 %6687, 31
  %6689 = shl i32 1, %6688
  %6690 = call i32 @dx.op.binary.i32(i32 40, i32 %6689, i32 4)  ; UMin(a,b)
  %6691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6692 = extractvalue %dx.types.ResRet.i32 %6691, 0
  %6693 = extractvalue %dx.types.ResRet.i32 %6691, 1
  %6694 = icmp eq i32 %6690, 0
  br i1 %6694, label %6736, label %6695

; <label>:6695                                    ; preds = %6639
  br label %6696

; <label>:6696                                    ; preds = %6724, %6695
  %6697 = phi i32 [ %6727, %6724 ], [ 0, %6695 ]
  %6698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6699 = extractvalue %dx.types.ResRet.i32 %6698, 0
  %6700 = lshr i32 %6699, 16
  %6701 = and i32 %6700, 31
  %6702 = shl i32 %6685, %6701
  %6703 = add i32 %6702, %6684
  %6704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6705 = extractvalue %dx.types.ResRet.i32 %6704, 0
  %6706 = and i32 %6705, 31
  %6707 = shl i32 %6703, %6706
  %6708 = add i32 %6707, %6697
  %6709 = shl i32 %6708, 2
  %6710 = add i32 %6709, 32
  %6711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6710, i32 undef)  ; BufferLoad(srv,index,wot)
  %6712 = extractvalue %dx.types.ResRet.i32 %6711, 0
  %6713 = icmp slt i32 %6712, 0
  %6714 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6697
  %6715 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6697
  %6716 = bitcast float* %6714 to i32*
  %6717 = bitcast float* %6715 to i32*
  br i1 %6713, label %6718, label %6724

; <label>:6718                                    ; preds = %6696
  %6719 = and i32 %6712, 1073741823
  %6720 = add nuw nsw i32 %6719, 20
  %6721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6720, i32 undef)  ; BufferLoad(srv,index,wot)
  %6722 = extractvalue %dx.types.ResRet.i32 %6721, 0
  %6723 = extractvalue %dx.types.ResRet.i32 %6721, 1
  br label %6724

; <label>:6724                                    ; preds = %6718, %6696
  %6725 = phi i32 [ %6722, %6718 ], [ %6692, %6696 ]
  %6726 = phi i32 [ %6723, %6718 ], [ %6693, %6696 ]
  store i32 %6725, i32* %6716, align 4
  store i32 %6726, i32* %6717, align 4
  %6727 = add nuw i32 %6697, 1
  %6728 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6729 = extractvalue %dx.types.CBufRet.i32 %6728, 2
  %6730 = icmp eq i32 %6729, 0
  %6731 = icmp ugt i32 %6712, -1073741825
  %6732 = and i1 %6731, %6730
  %6733 = icmp ult i32 %6727, %6690
  %6734 = and i1 %6732, %6733
  br i1 %6734, label %6696, label %6735

; <label>:6735                                    ; preds = %6724
  br label %6736

; <label>:6736                                    ; preds = %6735, %6639
  %6737 = phi i32 [ 0, %6639 ], [ %6727, %6735 ]
  %6738 = extractvalue %dx.types.CBufRet.f32 %6501, 2
  %6739 = fptoui float %6738 to i32
  %6740 = icmp eq i32 %6739, 0
  br i1 %6740, label %6792, label %6741

; <label>:6741                                    ; preds = %6736
  br label %6742

; <label>:6742                                    ; preds = %6787, %6741
  %6743 = phi i32 [ %6788, %6787 ], [ %6737, %6741 ]
  %6744 = phi i32 [ %6789, %6787 ], [ 0, %6741 ]
  %6745 = lshr i32 %6744, 2
  %6746 = and i32 %6744, 3
  %6747 = add nuw nsw i32 %6745, 83
  %6748 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %6747)  ; CBufferLoadLegacy(handle,regIndex)
  %6749 = extractvalue %dx.types.CBufRet.i32 %6748, 0
  %6750 = extractvalue %dx.types.CBufRet.i32 %6748, 1
  %6751 = extractvalue %dx.types.CBufRet.i32 %6748, 2
  %6752 = extractvalue %dx.types.CBufRet.i32 %6748, 3
  %6753 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %6749, i32* %6753, align 4
  %6754 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %6750, i32* %6754, align 4
  %6755 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %6751, i32* %6755, align 4
  %6756 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %6752, i32* %6756, align 4
  %6757 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %6746
  %6758 = load i32, i32* %6757, align 4, !tbaa !95, !noalias !99
  %6759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6760 = extractvalue %dx.types.ResRet.i32 %6759, 0
  %6761 = lshr i32 %6760, 16
  %6762 = and i32 %6761, 31
  %6763 = shl i32 %6685, %6762
  %6764 = add i32 %6763, %6684
  %6765 = shl i32 %6764, 2
  %6766 = add i32 %6765, %6758
  %6767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6766, i32 undef)  ; BufferLoad(srv,index,wot)
  %6768 = extractvalue %dx.types.ResRet.i32 %6767, 0
  %6769 = icmp eq i32 %6768, 0
  br i1 %6769, label %6787, label %6770

; <label>:6770                                    ; preds = %6742
  %6771 = icmp slt i32 %6768, 0
  %6772 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6743
  %6773 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6743
  %6774 = bitcast float* %6772 to i32*
  %6775 = bitcast float* %6773 to i32*
  br i1 %6771, label %6776, label %6783

; <label>:6776                                    ; preds = %6770
  %6777 = and i32 %6768, 1073741823
  %6778 = add i32 %6758, 20
  %6779 = add i32 %6778, %6777
  %6780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6779, i32 undef)  ; BufferLoad(srv,index,wot)
  %6781 = extractvalue %dx.types.ResRet.i32 %6780, 0
  %6782 = extractvalue %dx.types.ResRet.i32 %6780, 1
  br label %6783

; <label>:6783                                    ; preds = %6776, %6770
  %6784 = phi i32 [ %6781, %6776 ], [ %6692, %6770 ]
  %6785 = phi i32 [ %6782, %6776 ], [ %6693, %6770 ]
  store i32 %6784, i32* %6774, align 4
  store i32 %6785, i32* %6775, align 4
  %6786 = add i32 %6743, 1
  br label %6787

; <label>:6787                                    ; preds = %6783, %6742
  %6788 = phi i32 [ %6743, %6742 ], [ %6786, %6783 ]
  %6789 = add nuw i32 %6744, 1
  %6790 = icmp eq i32 %6789, %6739
  br i1 %6790, label %6791, label %6742

; <label>:6791                                    ; preds = %6787
  br label %6792

; <label>:6792                                    ; preds = %6791, %6736
  %6793 = phi i32 [ %6737, %6736 ], [ %6788, %6791 ]
  %6794 = icmp eq i32 %6793, 1
  %6795 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 0
  %6796 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  br i1 %6794, label %6797, label %6800

; <label>:6797                                    ; preds = %6792
  %6798 = load float, float* %6795, align 4
  %6799 = load float, float* %6796, align 4
  br label %6827

; <label>:6800                                    ; preds = %6792
  %6801 = load float, float* %6795, align 4
  %6802 = load float, float* %6796, align 4
  %6803 = fdiv fast float 1.000000e+00, %6802
  %6804 = fsub fast float %6801, %6803
  %6805 = icmp ugt i32 %6793, 1
  br i1 %6805, label %6806, label %6822

; <label>:6806                                    ; preds = %6800
  br label %6807

; <label>:6807                                    ; preds = %6807, %6806
  %6808 = phi float [ %6817, %6807 ], [ %6804, %6806 ]
  %6809 = phi float [ %6818, %6807 ], [ %6801, %6806 ]
  %6810 = phi i32 [ %6819, %6807 ], [ 1, %6806 ]
  %6811 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6810
  %6812 = load float, float* %6811, align 4
  %6813 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6810
  %6814 = load float, float* %6813, align 4
  %6815 = fdiv fast float 1.000000e+00, %6814
  %6816 = fsub fast float %6812, %6815
  %6817 = call float @dx.op.binary.f32(i32 36, float %6808, float %6816)  ; FMin(a,b)
  %6818 = call float @dx.op.binary.f32(i32 35, float %6809, float %6812)  ; FMax(a,b)
  %6819 = add nuw i32 %6810, 1
  %6820 = icmp eq i32 %6819, %6793
  br i1 %6820, label %6821, label %6807

; <label>:6821                                    ; preds = %6807
  br label %6822

; <label>:6822                                    ; preds = %6821, %6800
  %6823 = phi float [ %6804, %6800 ], [ %6817, %6821 ]
  %6824 = phi float [ %6801, %6800 ], [ %6818, %6821 ]
  %6825 = fsub fast float %6824, %6823
  %6826 = fdiv fast float 1.000000e+00, %6825
  br label %6827

; <label>:6827                                    ; preds = %6822, %6797
  %6828 = phi float [ %6798, %6797 ], [ %6824, %6822 ]
  %6829 = phi float [ %6799, %6797 ], [ %6826, %6822 ]
  %6830 = fadd fast float %6531, %6828
  %6831 = fmul fast float %6830, %6829
  %6832 = call float @dx.op.unary.f32(i32 7, float %6831)  ; Saturate(value)
  %6833 = fmul fast float %6832, 2.000000e+00
  %6834 = fsub fast float 1.000000e+00, %6833
  %6835 = fmul fast float %6669, %6669
  %6836 = fsub fast float %6670, %6835
  %6837 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6836)  ; FMax(a,b)
  %6838 = fdiv fast float 1.000000e+00, %6837
  %6839 = fmul fast float %6670, %6669
  %6840 = fsub fast float %6671, %6839
  %6841 = fsub fast float %6834, %6669
  %6842 = fmul fast float %6834, %6834
  %6843 = fsub fast float %6842, %6670
  %6844 = fmul fast float %6838, %6840
  %6845 = fmul fast float %6844, %6841
  %6846 = fsub fast float %6843, %6845
  %6847 = fmul fast float %6670, %6670
  %6848 = fsub fast float %6672, %6847
  %6849 = fmul fast float %6840, %6840
  %6850 = fmul fast float %6849, %6838
  %6851 = fsub fast float %6848, %6850
  %6852 = fdiv fast float %6846, %6851
  %6853 = fmul fast float %6852, %6840
  %6854 = fsub fast float %6841, %6853
  %6855 = fmul fast float %6854, %6838
  %6856 = fmul fast float %6855, %6669
  %6857 = fsub fast float 1.000000e+00, %6856
  %6858 = fmul fast float %6852, %6670
  %6859 = fsub fast float %6857, %6858
  %6860 = fmul fast float %6855, %6855
  %6861 = fmul fast float %6852, 4.000000e+00
  %6862 = fmul fast float %6861, %6859
  %6863 = fsub fast float %6860, %6862
  %6864 = call float @dx.op.unary.f32(i32 24, float %6863)  ; Sqrt(value)
  %6865 = fcmp fast oge float %6855, 0.000000e+00
  %6866 = fsub fast float -0.000000e+00, %6864
  %6867 = select i1 %6865, float %6866, float %6864
  %6868 = fsub fast float %6867, %6855
  %6869 = fdiv fast float %6868, %6852
  %6870 = fdiv fast float %6859, %6868
  %6871 = fmul fast float %6869, 5.000000e-01
  %6872 = fmul fast float %6870, 2.000000e+00
  %6873 = select i1 %6865, float %6871, float %6872
  %6874 = select i1 %6865, float %6872, float %6871
  %6875 = call float @dx.op.binary.f32(i32 35, float %6873, float %6874)  ; FMax(a,b)
  %6876 = call float @dx.op.binary.f32(i32 36, float %6873, float %6874)  ; FMin(a,b)
  %6877 = fcmp fast ogt float %6834, %6875
  %6878 = fsub fast float %6834, %6876
  %6879 = fsub fast float %6834, %6875
  %6880 = fsub fast float %6875, %6876
  %6881 = select i1 %6877, float %6879, float %6880
  %6882 = fmul float %6878, %6881
  %6883 = select i1 %6877, float %6876, float %6834
  %6884 = fcmp fast ogt float %6834, %6876
  %6885 = fmul fast float %6883, %6875
  %6886 = fadd fast float %6883, %6875
  %6887 = fmul fast float %6886, %6669
  %6888 = fadd fast float %6885, %6670
  %6889 = fsub fast float %6888, %6887
  %6890 = fdiv fast float %6889, %6882
  %6891 = select i1 %6884, float %6890, float 0.000000e+00
  %6892 = fsub fast float 1.000000e+00, %6891
  %6893 = select i1 %6877, float %6892, float %6891
  %6894 = call float @dx.op.unary.f32(i32 7, float %6893)  ; Saturate(value)
  %6895 = extractvalue %dx.types.CBufRet.f32 %6654, 3
  %6896 = fmul fast float %6895, %6894
  %6897 = fsub fast float 1.000000e+00, %6896
  br label %6898

; <label>:6898                                    ; preds = %6827, %6539, %6504, %6500, %6466
  %6899 = phi float [ 1.000000e+00, %6466 ], [ %6897, %6827 ], [ 1.000000e+00, %6504 ], [ 1.000000e+00, %6539 ], [ 1.000000e+00, %6500 ]
  %6900 = fcmp fast ogt float %6496, 0.000000e+00
  br i1 %6900, label %6901, label %7063, !dx.controlflow.hints !108

; <label>:6901                                    ; preds = %6898
  %6902 = fadd fast float %6409, %6383
  %6903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6904 = extractvalue %dx.types.CBufRet.f32 %6903, 2
  %6905 = extractvalue %dx.types.CBufRet.f32 %6903, 3
  %6906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6907 = extractvalue %dx.types.CBufRet.f32 %6906, 2
  %6908 = call float @dx.op.binary.f32(i32 35, float %6902, float 0.000000e+00)  ; FMax(a,b)
  %6909 = fadd fast float %6908, 0x3F10000000000000
  %6910 = fcmp fast oeq float %6907, 0.000000e+00
  br i1 %6910, label %6911, label %6978

; <label>:6911                                    ; preds = %6901
  %6912 = extractvalue %dx.types.CBufRet.f32 %6903, 1
  %6913 = extractvalue %dx.types.CBufRet.f32 %6903, 0
  %6914 = fmul fast float %6913, %6398
  %6915 = fmul fast float %6912, %6399
  %6916 = fadd fast float %6914, 5.000000e-01
  %6917 = call float @dx.op.unary.f32(i32 27, float %6916)  ; Round_ni(value)
  %6918 = fadd fast float %6915, 5.000000e-01
  %6919 = call float @dx.op.unary.f32(i32 27, float %6918)  ; Round_ni(value)
  %6920 = fsub fast float %6916, %6917
  %6921 = fsub fast float %6918, %6919
  %6922 = fadd fast float %6917, -5.000000e-01
  %6923 = fadd fast float %6919, -5.000000e-01
  %6924 = fmul fast float %6920, 2.000000e+00
  %6925 = fsub fast float 3.000000e+00, %6924
  %6926 = fadd fast float %6924, 1.000000e+00
  %6927 = fsub fast float 2.000000e+00, %6920
  %6928 = bitcast float %6925 to i32
  %6929 = sub nsw i32 2129859010, %6928
  %6930 = bitcast i32 %6929 to float
  %6931 = fmul fast float %6930, %6927
  %6932 = fadd fast float %6931, -1.000000e+00
  %6933 = bitcast float %6926 to i32
  %6934 = sub nsw i32 2129859010, %6933
  %6935 = bitcast i32 %6934 to float
  %6936 = fmul fast float %6935, %6920
  %6937 = fadd fast float %6936, 1.000000e+00
  %6938 = fmul fast float %6921, 2.000000e+00
  %6939 = fsub fast float 3.000000e+00, %6938
  %6940 = fadd fast float %6938, 1.000000e+00
  %6941 = fsub fast float 2.000000e+00, %6921
  %6942 = bitcast float %6939 to i32
  %6943 = sub nsw i32 2129859010, %6942
  %6944 = bitcast i32 %6943 to float
  %6945 = fmul fast float %6944, %6941
  %6946 = fadd fast float %6945, -1.000000e+00
  %6947 = bitcast float %6940 to i32
  %6948 = sub nsw i32 2129859010, %6947
  %6949 = bitcast i32 %6948 to float
  %6950 = fmul fast float %6949, %6921
  %6951 = fadd fast float %6950, 1.000000e+00
  %6952 = fadd fast float %6932, %6922
  %6953 = fmul fast float %6952, %6904
  %6954 = fadd fast float %6946, %6923
  %6955 = fmul fast float %6954, %6905
  %6956 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6953, float %6955, float undef, float undef, i32 0, i32 0, i32 undef, float %6909)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6957 = extractvalue %dx.types.ResRet.f32 %6956, 0
  %6958 = fmul fast float %6957, %6925
  %6959 = fadd fast float %6937, %6922
  %6960 = fmul fast float %6959, %6904
  %6961 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6960, float %6955, float undef, float undef, i32 0, i32 0, i32 undef, float %6909)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6962 = extractvalue %dx.types.ResRet.f32 %6961, 0
  %6963 = fmul fast float %6962, %6926
  %6964 = fadd fast float %6951, %6923
  %6965 = fmul fast float %6964, %6905
  %6966 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6953, float %6965, float undef, float undef, i32 0, i32 0, i32 undef, float %6909)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6967 = extractvalue %dx.types.ResRet.f32 %6966, 0
  %6968 = fmul fast float %6967, %6925
  %6969 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6960, float %6965, float undef, float undef, i32 0, i32 0, i32 undef, float %6909)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6970 = extractvalue %dx.types.ResRet.f32 %6969, 0
  %6971 = fmul fast float %6970, %6926
  %6972 = fadd fast float %6971, %6968
  %6973 = fmul fast float %6972, %6940
  %6974 = fadd fast float %6963, %6958
  %6975 = fmul fast float %6974, %6939
  %6976 = fadd fast float %6975, %6973
  %6977 = fmul fast float %6976, 6.250000e-02
  br label %7063

; <label>:6978                                    ; preds = %6901
  %6979 = fmul fast float %224, 0x401921FB60000000
  %6980 = call float @dx.op.unary.f32(i32 13, float %6979)  ; Sin(value)
  %6981 = call float @dx.op.unary.f32(i32 12, float %6979)  ; Cos(value)
  %6982 = fsub fast float -0.000000e+00, %6980
  br label %6983

; <label>:6983                                    ; preds = %7032, %6978
  %6984 = phi float [ 0.000000e+00, %6978 ], [ %7027, %7032 ]
  %6985 = phi float [ 0.000000e+00, %6978 ], [ %7029, %7032 ]
  %6986 = phi i32 [ 0, %6978 ], [ %7033, %7032 ]
  %6987 = mul i32 %6986, 2
  %6988 = add i32 0, %6987
  %6989 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6988
  %6990 = load float, float* %6989, align 4
  %6991 = mul i32 %6986, 2
  %6992 = add i32 1, %6991
  %6993 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6992
  %6994 = load float, float* %6993, align 4
  %6995 = fmul fast float %6990, %6981
  %6996 = call float @dx.op.tertiary.f32(i32 46, float %6994, float %6982, float %6995)  ; FMad(a,b,c)
  %6997 = fmul fast float %6990, %6980
  %6998 = call float @dx.op.tertiary.f32(i32 46, float %6994, float %6981, float %6997)  ; FMad(a,b,c)
  %6999 = fmul fast float %6996, %6907
  %7000 = fmul fast float %6998, %6907
  %7001 = fadd fast float %6999, %6398
  %7002 = fadd fast float %7000, %6399
  %7003 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %7001, float %7002, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7004 = extractvalue %dx.types.ResRet.f32 %7003, 0
  %7005 = extractvalue %dx.types.ResRet.f32 %7003, 1
  %7006 = extractvalue %dx.types.ResRet.f32 %7003, 2
  %7007 = extractvalue %dx.types.ResRet.f32 %7003, 3
  %7008 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %7004, float* %7008, align 4
  %7009 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %7005, float* %7009, align 4
  %7010 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %7006, float* %7010, align 4
  %7011 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %7007, float* %7011, align 4
  %7012 = fsub fast float %7004, %6909
  %7013 = fcmp fast olt float %7012, 0.000000e+00
  %7014 = select i1 %7013, float 0.000000e+00, float 1.000000e+00
  %7015 = fadd fast float %7014, %6984
  %7016 = fmul fast float %7014, %7012
  %7017 = fadd fast float %7016, %6985
  br label %7018

; <label>:7018                                    ; preds = %7018, %6983
  %7019 = phi i32 [ 1, %6983 ], [ %7030, %7018 ]
  %7020 = phi float [ %7017, %6983 ], [ %7029, %7018 ]
  %7021 = phi float [ %7015, %6983 ], [ %7027, %7018 ]
  %7022 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7019
  %7023 = load float, float* %7022, align 4, !tbaa !109, !noalias !99
  %7024 = fsub fast float %7023, %6909
  %7025 = fcmp fast olt float %7024, 0.000000e+00
  %7026 = select i1 %7025, float 0.000000e+00, float 1.000000e+00
  %7027 = fadd fast float %7026, %7021
  %7028 = fmul fast float %7026, %7024
  %7029 = fadd fast float %7028, %7020
  %7030 = add nuw nsw i32 %7019, 1
  %7031 = icmp eq i32 %7030, 4
  br i1 %7031, label %7032, label %7018, !llvm.loop !111

; <label>:7032                                    ; preds = %7018
  %7033 = add nuw nsw i32 %6986, 1
  %7034 = icmp eq i32 %7033, 8
  br i1 %7034, label %7035, label %6983, !llvm.loop !112

; <label>:7035                                    ; preds = %7032
  %7036 = fdiv fast float 1.000000e+00, %7027
  %7037 = fmul fast float %7036, %7029
  %7038 = fdiv fast float 1.000000e+00, %6909
  %7039 = fmul fast float %7037, %7038
  %7040 = call float @dx.op.unary.f32(i32 7, float %7039)  ; Saturate(value)
  %7041 = call float @dx.op.binary.f32(i32 35, float %7040, float 0.000000e+00)  ; FMax(a,b)
  %7042 = fmul fast float %7027, 3.125000e-02
  %7043 = call float @dx.op.unary.f32(i32 7, float %7042)  ; Saturate(value)
  %7044 = fmul fast float %7043, 2.000000e+00
  %7045 = fadd fast float %7044, -1.000000e+00
  %7046 = fcmp fast ogt float %7045, 0.000000e+00
  %7047 = fcmp fast olt float %7045, 0.000000e+00
  %7048 = zext i1 %7046 to i32
  %7049 = zext i1 %7047 to i32
  %7050 = sub nsw i32 %7048, %7049
  %7051 = sitofp i32 %7050 to float
  %7052 = fmul fast float %7051, %7045
  %7053 = fsub fast float 1.000000e+00, %7052
  %7054 = fmul fast float %7053, %7053
  %7055 = fmul fast float %7054, %7053
  %7056 = fsub fast float %7053, %7055
  %7057 = fmul fast float %7056, %7041
  %7058 = fsub fast float 1.000000e+00, %7055
  %7059 = fsub fast float %7058, %7057
  %7060 = fmul fast float %7051, 5.000000e-01
  %7061 = fmul fast float %7060, %7059
  %7062 = fsub fast float 5.000000e-01, %7061
  br label %7063

; <label>:7063                                    ; preds = %7035, %6911, %6898
  %7064 = phi float [ 1.000000e+00, %6898 ], [ %6977, %6911 ], [ %7062, %7035 ]
  %7065 = fcmp fast ogt float %6494, 0.000000e+00
  br i1 %7065, label %7066, label %7230, !dx.controlflow.hints !113

; <label>:7066                                    ; preds = %7063
  %7067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7068 = extractvalue %dx.types.CBufRet.f32 %7067, 1
  %7069 = fadd fast float %7068, %6383
  %7070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7071 = extractvalue %dx.types.CBufRet.f32 %7070, 2
  %7072 = extractvalue %dx.types.CBufRet.f32 %7070, 3
  %7073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7074 = extractvalue %dx.types.CBufRet.f32 %7073, 1
  %7075 = call float @dx.op.binary.f32(i32 35, float %7069, float 0.000000e+00)  ; FMax(a,b)
  %7076 = fadd fast float %7075, 0x3F10000000000000
  %7077 = fcmp fast oeq float %7074, 0.000000e+00
  br i1 %7077, label %7078, label %7145

; <label>:7078                                    ; preds = %7066
  %7079 = extractvalue %dx.types.CBufRet.f32 %7070, 1
  %7080 = extractvalue %dx.types.CBufRet.f32 %7070, 0
  %7081 = fmul fast float %7080, %6390
  %7082 = fmul fast float %7079, %6391
  %7083 = fadd fast float %7081, 5.000000e-01
  %7084 = call float @dx.op.unary.f32(i32 27, float %7083)  ; Round_ni(value)
  %7085 = fadd fast float %7082, 5.000000e-01
  %7086 = call float @dx.op.unary.f32(i32 27, float %7085)  ; Round_ni(value)
  %7087 = fsub fast float %7083, %7084
  %7088 = fsub fast float %7085, %7086
  %7089 = fadd fast float %7084, -5.000000e-01
  %7090 = fadd fast float %7086, -5.000000e-01
  %7091 = fmul fast float %7087, 2.000000e+00
  %7092 = fsub fast float 3.000000e+00, %7091
  %7093 = fadd fast float %7091, 1.000000e+00
  %7094 = fsub fast float 2.000000e+00, %7087
  %7095 = bitcast float %7092 to i32
  %7096 = sub nsw i32 2129859010, %7095
  %7097 = bitcast i32 %7096 to float
  %7098 = fmul fast float %7097, %7094
  %7099 = fadd fast float %7098, -1.000000e+00
  %7100 = bitcast float %7093 to i32
  %7101 = sub nsw i32 2129859010, %7100
  %7102 = bitcast i32 %7101 to float
  %7103 = fmul fast float %7102, %7087
  %7104 = fadd fast float %7103, 1.000000e+00
  %7105 = fmul fast float %7088, 2.000000e+00
  %7106 = fsub fast float 3.000000e+00, %7105
  %7107 = fadd fast float %7105, 1.000000e+00
  %7108 = fsub fast float 2.000000e+00, %7088
  %7109 = bitcast float %7106 to i32
  %7110 = sub nsw i32 2129859010, %7109
  %7111 = bitcast i32 %7110 to float
  %7112 = fmul fast float %7111, %7108
  %7113 = fadd fast float %7112, -1.000000e+00
  %7114 = bitcast float %7107 to i32
  %7115 = sub nsw i32 2129859010, %7114
  %7116 = bitcast i32 %7115 to float
  %7117 = fmul fast float %7116, %7088
  %7118 = fadd fast float %7117, 1.000000e+00
  %7119 = fadd fast float %7099, %7089
  %7120 = fmul fast float %7119, %7071
  %7121 = fadd fast float %7113, %7090
  %7122 = fmul fast float %7121, %7072
  %7123 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7120, float %7122, float undef, float undef, i32 0, i32 0, i32 undef, float %7076)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7124 = extractvalue %dx.types.ResRet.f32 %7123, 0
  %7125 = fmul fast float %7124, %7092
  %7126 = fadd fast float %7104, %7089
  %7127 = fmul fast float %7126, %7071
  %7128 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7127, float %7122, float undef, float undef, i32 0, i32 0, i32 undef, float %7076)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7129 = extractvalue %dx.types.ResRet.f32 %7128, 0
  %7130 = fmul fast float %7129, %7093
  %7131 = fadd fast float %7118, %7090
  %7132 = fmul fast float %7131, %7072
  %7133 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7120, float %7132, float undef, float undef, i32 0, i32 0, i32 undef, float %7076)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7134 = extractvalue %dx.types.ResRet.f32 %7133, 0
  %7135 = fmul fast float %7134, %7092
  %7136 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7127, float %7132, float undef, float undef, i32 0, i32 0, i32 undef, float %7076)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7137 = extractvalue %dx.types.ResRet.f32 %7136, 0
  %7138 = fmul fast float %7137, %7093
  %7139 = fadd fast float %7138, %7135
  %7140 = fmul fast float %7139, %7107
  %7141 = fadd fast float %7130, %7125
  %7142 = fmul fast float %7141, %7106
  %7143 = fadd fast float %7142, %7140
  %7144 = fmul fast float %7143, 6.250000e-02
  br label %7230

; <label>:7145                                    ; preds = %7066
  %7146 = fmul fast float %224, 0x401921FB60000000
  %7147 = call float @dx.op.unary.f32(i32 13, float %7146)  ; Sin(value)
  %7148 = call float @dx.op.unary.f32(i32 12, float %7146)  ; Cos(value)
  %7149 = fsub fast float -0.000000e+00, %7147
  br label %7150

; <label>:7150                                    ; preds = %7199, %7145
  %7151 = phi float [ 0.000000e+00, %7145 ], [ %7194, %7199 ]
  %7152 = phi float [ 0.000000e+00, %7145 ], [ %7196, %7199 ]
  %7153 = phi i32 [ 0, %7145 ], [ %7200, %7199 ]
  %7154 = mul i32 %7153, 2
  %7155 = add i32 0, %7154
  %7156 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7155
  %7157 = load float, float* %7156, align 4
  %7158 = mul i32 %7153, 2
  %7159 = add i32 1, %7158
  %7160 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7159
  %7161 = load float, float* %7160, align 4
  %7162 = fmul fast float %7157, %7148
  %7163 = call float @dx.op.tertiary.f32(i32 46, float %7161, float %7149, float %7162)  ; FMad(a,b,c)
  %7164 = fmul fast float %7157, %7147
  %7165 = call float @dx.op.tertiary.f32(i32 46, float %7161, float %7148, float %7164)  ; FMad(a,b,c)
  %7166 = fmul fast float %7163, %7074
  %7167 = fmul fast float %7165, %7074
  %7168 = fadd fast float %7166, %6390
  %7169 = fadd fast float %7167, %6391
  %7170 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %7168, float %7169, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7171 = extractvalue %dx.types.ResRet.f32 %7170, 0
  %7172 = extractvalue %dx.types.ResRet.f32 %7170, 1
  %7173 = extractvalue %dx.types.ResRet.f32 %7170, 2
  %7174 = extractvalue %dx.types.ResRet.f32 %7170, 3
  %7175 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 0
  store float %7171, float* %7175, align 4
  %7176 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 1
  store float %7172, float* %7176, align 4
  %7177 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 2
  store float %7173, float* %7177, align 4
  %7178 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 3
  store float %7174, float* %7178, align 4
  %7179 = fsub fast float %7171, %7076
  %7180 = fcmp fast olt float %7179, 0.000000e+00
  %7181 = select i1 %7180, float 0.000000e+00, float 1.000000e+00
  %7182 = fadd fast float %7181, %7151
  %7183 = fmul fast float %7181, %7179
  %7184 = fadd fast float %7183, %7152
  br label %7185

; <label>:7185                                    ; preds = %7185, %7150
  %7186 = phi i32 [ 1, %7150 ], [ %7197, %7185 ]
  %7187 = phi float [ %7184, %7150 ], [ %7196, %7185 ]
  %7188 = phi float [ %7182, %7150 ], [ %7194, %7185 ]
  %7189 = getelementptr [4 x float], [4 x float]* %89, i32 0, i32 %7186
  %7190 = load float, float* %7189, align 4, !tbaa !109, !noalias !99
  %7191 = fsub fast float %7190, %7076
  %7192 = fcmp fast olt float %7191, 0.000000e+00
  %7193 = select i1 %7192, float 0.000000e+00, float 1.000000e+00
  %7194 = fadd fast float %7193, %7188
  %7195 = fmul fast float %7193, %7191
  %7196 = fadd fast float %7195, %7187
  %7197 = add nuw nsw i32 %7186, 1
  %7198 = icmp eq i32 %7197, 4
  br i1 %7198, label %7199, label %7185, !llvm.loop !111

; <label>:7199                                    ; preds = %7185
  %7200 = add nuw nsw i32 %7153, 1
  %7201 = icmp eq i32 %7200, 8
  br i1 %7201, label %7202, label %7150, !llvm.loop !112

; <label>:7202                                    ; preds = %7199
  %7203 = fdiv fast float 1.000000e+00, %7194
  %7204 = fmul fast float %7203, %7196
  %7205 = fdiv fast float 1.000000e+00, %7076
  %7206 = fmul fast float %7204, %7205
  %7207 = call float @dx.op.unary.f32(i32 7, float %7206)  ; Saturate(value)
  %7208 = call float @dx.op.binary.f32(i32 35, float %7207, float 0.000000e+00)  ; FMax(a,b)
  %7209 = fmul fast float %7194, 3.125000e-02
  %7210 = call float @dx.op.unary.f32(i32 7, float %7209)  ; Saturate(value)
  %7211 = fmul fast float %7210, 2.000000e+00
  %7212 = fadd fast float %7211, -1.000000e+00
  %7213 = fcmp fast ogt float %7212, 0.000000e+00
  %7214 = fcmp fast olt float %7212, 0.000000e+00
  %7215 = zext i1 %7213 to i32
  %7216 = zext i1 %7214 to i32
  %7217 = sub nsw i32 %7215, %7216
  %7218 = sitofp i32 %7217 to float
  %7219 = fmul fast float %7218, %7212
  %7220 = fsub fast float 1.000000e+00, %7219
  %7221 = fmul fast float %7220, %7220
  %7222 = fmul fast float %7221, %7220
  %7223 = fsub fast float %7220, %7222
  %7224 = fmul fast float %7223, %7208
  %7225 = fsub fast float 1.000000e+00, %7222
  %7226 = fsub fast float %7225, %7224
  %7227 = fmul fast float %7218, 5.000000e-01
  %7228 = fmul fast float %7227, %7226
  %7229 = fsub fast float 5.000000e-01, %7228
  br label %7230

; <label>:7230                                    ; preds = %7202, %7078, %7063
  %7231 = phi float [ 1.000000e+00, %7063 ], [ %7144, %7078 ], [ %7229, %7202 ]
  %7232 = fcmp fast ogt float %6493, 0.000000e+00
  br i1 %7232, label %7233, label %7397, !dx.controlflow.hints !114

; <label>:7233                                    ; preds = %7230
  %7234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7235 = extractvalue %dx.types.CBufRet.f32 %7234, 0
  %7236 = fadd fast float %7235, %6383
  %7237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7238 = extractvalue %dx.types.CBufRet.f32 %7237, 2
  %7239 = extractvalue %dx.types.CBufRet.f32 %7237, 3
  %7240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7241 = extractvalue %dx.types.CBufRet.f32 %7240, 0
  %7242 = call float @dx.op.binary.f32(i32 35, float %7236, float 0.000000e+00)  ; FMax(a,b)
  %7243 = fadd fast float %7242, 0x3F10000000000000
  %7244 = fcmp fast oeq float %7241, 0.000000e+00
  br i1 %7244, label %7245, label %7312

; <label>:7245                                    ; preds = %7233
  %7246 = extractvalue %dx.types.CBufRet.f32 %7237, 1
  %7247 = extractvalue %dx.types.CBufRet.f32 %7237, 0
  %7248 = fmul fast float %7247, %6375
  %7249 = fmul fast float %7246, %6379
  %7250 = fadd fast float %7248, 5.000000e-01
  %7251 = call float @dx.op.unary.f32(i32 27, float %7250)  ; Round_ni(value)
  %7252 = fadd fast float %7249, 5.000000e-01
  %7253 = call float @dx.op.unary.f32(i32 27, float %7252)  ; Round_ni(value)
  %7254 = fsub fast float %7250, %7251
  %7255 = fsub fast float %7252, %7253
  %7256 = fadd fast float %7251, -5.000000e-01
  %7257 = fadd fast float %7253, -5.000000e-01
  %7258 = fmul fast float %7254, 2.000000e+00
  %7259 = fsub fast float 3.000000e+00, %7258
  %7260 = fadd fast float %7258, 1.000000e+00
  %7261 = fsub fast float 2.000000e+00, %7254
  %7262 = bitcast float %7259 to i32
  %7263 = sub nsw i32 2129859010, %7262
  %7264 = bitcast i32 %7263 to float
  %7265 = fmul fast float %7264, %7261
  %7266 = fadd fast float %7265, -1.000000e+00
  %7267 = bitcast float %7260 to i32
  %7268 = sub nsw i32 2129859010, %7267
  %7269 = bitcast i32 %7268 to float
  %7270 = fmul fast float %7269, %7254
  %7271 = fadd fast float %7270, 1.000000e+00
  %7272 = fmul fast float %7255, 2.000000e+00
  %7273 = fsub fast float 3.000000e+00, %7272
  %7274 = fadd fast float %7272, 1.000000e+00
  %7275 = fsub fast float 2.000000e+00, %7255
  %7276 = bitcast float %7273 to i32
  %7277 = sub nsw i32 2129859010, %7276
  %7278 = bitcast i32 %7277 to float
  %7279 = fmul fast float %7278, %7275
  %7280 = fadd fast float %7279, -1.000000e+00
  %7281 = bitcast float %7274 to i32
  %7282 = sub nsw i32 2129859010, %7281
  %7283 = bitcast i32 %7282 to float
  %7284 = fmul fast float %7283, %7255
  %7285 = fadd fast float %7284, 1.000000e+00
  %7286 = fadd fast float %7266, %7256
  %7287 = fmul fast float %7286, %7238
  %7288 = fadd fast float %7280, %7257
  %7289 = fmul fast float %7288, %7239
  %7290 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7287, float %7289, float undef, float undef, i32 0, i32 0, i32 undef, float %7243)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7291 = extractvalue %dx.types.ResRet.f32 %7290, 0
  %7292 = fmul fast float %7291, %7259
  %7293 = fadd fast float %7271, %7256
  %7294 = fmul fast float %7293, %7238
  %7295 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7294, float %7289, float undef, float undef, i32 0, i32 0, i32 undef, float %7243)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7296 = extractvalue %dx.types.ResRet.f32 %7295, 0
  %7297 = fmul fast float %7296, %7260
  %7298 = fadd fast float %7285, %7257
  %7299 = fmul fast float %7298, %7239
  %7300 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7287, float %7299, float undef, float undef, i32 0, i32 0, i32 undef, float %7243)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7301 = extractvalue %dx.types.ResRet.f32 %7300, 0
  %7302 = fmul fast float %7301, %7259
  %7303 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7294, float %7299, float undef, float undef, i32 0, i32 0, i32 undef, float %7243)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7304 = extractvalue %dx.types.ResRet.f32 %7303, 0
  %7305 = fmul fast float %7304, %7260
  %7306 = fadd fast float %7305, %7302
  %7307 = fmul fast float %7306, %7274
  %7308 = fadd fast float %7297, %7292
  %7309 = fmul fast float %7308, %7273
  %7310 = fadd fast float %7309, %7307
  %7311 = fmul fast float %7310, 6.250000e-02
  br label %7397

; <label>:7312                                    ; preds = %7233
  %7313 = fmul fast float %224, 0x401921FB60000000
  %7314 = call float @dx.op.unary.f32(i32 13, float %7313)  ; Sin(value)
  %7315 = call float @dx.op.unary.f32(i32 12, float %7313)  ; Cos(value)
  %7316 = fsub fast float -0.000000e+00, %7314
  br label %7317

; <label>:7317                                    ; preds = %7366, %7312
  %7318 = phi float [ 0.000000e+00, %7312 ], [ %7361, %7366 ]
  %7319 = phi float [ 0.000000e+00, %7312 ], [ %7363, %7366 ]
  %7320 = phi i32 [ 0, %7312 ], [ %7367, %7366 ]
  %7321 = mul i32 %7320, 2
  %7322 = add i32 0, %7321
  %7323 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7322
  %7324 = load float, float* %7323, align 4
  %7325 = mul i32 %7320, 2
  %7326 = add i32 1, %7325
  %7327 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7326
  %7328 = load float, float* %7327, align 4
  %7329 = fmul fast float %7324, %7315
  %7330 = call float @dx.op.tertiary.f32(i32 46, float %7328, float %7316, float %7329)  ; FMad(a,b,c)
  %7331 = fmul fast float %7324, %7314
  %7332 = call float @dx.op.tertiary.f32(i32 46, float %7328, float %7315, float %7331)  ; FMad(a,b,c)
  %7333 = fmul fast float %7330, %7241
  %7334 = fmul fast float %7332, %7241
  %7335 = fadd fast float %7333, %6375
  %7336 = fadd fast float %7334, %6379
  %7337 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %7335, float %7336, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7338 = extractvalue %dx.types.ResRet.f32 %7337, 0
  %7339 = extractvalue %dx.types.ResRet.f32 %7337, 1
  %7340 = extractvalue %dx.types.ResRet.f32 %7337, 2
  %7341 = extractvalue %dx.types.ResRet.f32 %7337, 3
  %7342 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 0
  store float %7338, float* %7342, align 4
  %7343 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 1
  store float %7339, float* %7343, align 4
  %7344 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 2
  store float %7340, float* %7344, align 4
  %7345 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 3
  store float %7341, float* %7345, align 4
  %7346 = fsub fast float %7338, %7243
  %7347 = fcmp fast olt float %7346, 0.000000e+00
  %7348 = select i1 %7347, float 0.000000e+00, float 1.000000e+00
  %7349 = fadd fast float %7348, %7318
  %7350 = fmul fast float %7348, %7346
  %7351 = fadd fast float %7350, %7319
  br label %7352

; <label>:7352                                    ; preds = %7352, %7317
  %7353 = phi i32 [ 1, %7317 ], [ %7364, %7352 ]
  %7354 = phi float [ %7351, %7317 ], [ %7363, %7352 ]
  %7355 = phi float [ %7349, %7317 ], [ %7361, %7352 ]
  %7356 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 %7353
  %7357 = load float, float* %7356, align 4, !tbaa !109, !noalias !99
  %7358 = fsub fast float %7357, %7243
  %7359 = fcmp fast olt float %7358, 0.000000e+00
  %7360 = select i1 %7359, float 0.000000e+00, float 1.000000e+00
  %7361 = fadd fast float %7360, %7355
  %7362 = fmul fast float %7360, %7358
  %7363 = fadd fast float %7362, %7354
  %7364 = add nuw nsw i32 %7353, 1
  %7365 = icmp eq i32 %7364, 4
  br i1 %7365, label %7366, label %7352, !llvm.loop !111

; <label>:7366                                    ; preds = %7352
  %7367 = add nuw nsw i32 %7320, 1
  %7368 = icmp eq i32 %7367, 8
  br i1 %7368, label %7369, label %7317, !llvm.loop !112

; <label>:7369                                    ; preds = %7366
  %7370 = fdiv fast float 1.000000e+00, %7361
  %7371 = fmul fast float %7370, %7363
  %7372 = fdiv fast float 1.000000e+00, %7243
  %7373 = fmul fast float %7371, %7372
  %7374 = call float @dx.op.unary.f32(i32 7, float %7373)  ; Saturate(value)
  %7375 = call float @dx.op.binary.f32(i32 35, float %7374, float 0.000000e+00)  ; FMax(a,b)
  %7376 = fmul fast float %7361, 3.125000e-02
  %7377 = call float @dx.op.unary.f32(i32 7, float %7376)  ; Saturate(value)
  %7378 = fmul fast float %7377, 2.000000e+00
  %7379 = fadd fast float %7378, -1.000000e+00
  %7380 = fcmp fast ogt float %7379, 0.000000e+00
  %7381 = fcmp fast olt float %7379, 0.000000e+00
  %7382 = zext i1 %7380 to i32
  %7383 = zext i1 %7381 to i32
  %7384 = sub nsw i32 %7382, %7383
  %7385 = sitofp i32 %7384 to float
  %7386 = fmul fast float %7385, %7379
  %7387 = fsub fast float 1.000000e+00, %7386
  %7388 = fmul fast float %7387, %7387
  %7389 = fmul fast float %7388, %7387
  %7390 = fsub fast float %7387, %7389
  %7391 = fmul fast float %7390, %7375
  %7392 = fsub fast float 1.000000e+00, %7389
  %7393 = fsub fast float %7392, %7391
  %7394 = fmul fast float %7385, 5.000000e-01
  %7395 = fmul fast float %7394, %7393
  %7396 = fsub fast float 5.000000e-01, %7395
  br label %7397

; <label>:7397                                    ; preds = %7369, %7245, %7230
  %7398 = phi float [ 1.000000e+00, %7230 ], [ %7311, %7245 ], [ %7396, %7369 ]
  %7399 = fsub fast float %7064, %6899
  %7400 = fmul fast float %7399, %6437
  %7401 = fadd fast float %7400, %6899
  %7402 = fsub fast float %7231, %7401
  %7403 = fmul fast float %7402, %6467
  %7404 = fadd fast float %7403, %7401
  %7405 = fsub fast float %7398, %7404
  %7406 = fmul fast float %7405, %6493
  %7407 = fadd fast float %7406, %7404
  %7408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7409 = extractvalue %dx.types.CBufRet.f32 %7408, 2
  %7410 = fcmp fast ogt float %7409, 0.000000e+00
  br i1 %7410, label %7411, label %7451, !dx.controlflow.hints !115

; <label>:7411                                    ; preds = %7397
  %7412 = fcmp fast ugt float %7409, 0.000000e+00
  br i1 %7412, label %7413, label %7448

; <label>:7413                                    ; preds = %7411
  %7414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7415 = extractvalue %dx.types.CBufRet.f32 %7414, 0
  %7416 = extractvalue %dx.types.CBufRet.f32 %7414, 1
  %7417 = extractvalue %dx.types.CBufRet.f32 %7414, 2
  %7418 = extractvalue %dx.types.CBufRet.f32 %7414, 3
  %7419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7420 = extractvalue %dx.types.CBufRet.f32 %7419, 0
  %7421 = extractvalue %dx.types.CBufRet.f32 %7419, 1
  %7422 = extractvalue %dx.types.CBufRet.f32 %7419, 2
  %7423 = extractvalue %dx.types.CBufRet.f32 %7419, 3
  %7424 = extractvalue %dx.types.CBufRet.f32 %7408, 0
  %7425 = extractvalue %dx.types.CBufRet.f32 %7408, 1
  %7426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7427 = extractvalue %dx.types.CBufRet.f32 %7426, 0
  %7428 = extractvalue %dx.types.CBufRet.f32 %7426, 1
  %7429 = extractvalue %dx.types.CBufRet.f32 %7426, 2
  %7430 = fadd fast float %7427, %6352
  %7431 = fadd fast float %7428, %6353
  %7432 = fadd fast float %7429, %6354
  %7433 = fmul fast float %7430, %7415
  %7434 = call float @dx.op.tertiary.f32(i32 46, float %7416, float %7431, float %7433)  ; FMad(a,b,c)
  %7435 = call float @dx.op.tertiary.f32(i32 46, float %7417, float %7432, float %7434)  ; FMad(a,b,c)
  %7436 = fadd fast float %7435, %7418
  %7437 = fmul fast float %7430, %7420
  %7438 = call float @dx.op.tertiary.f32(i32 46, float %7421, float %7431, float %7437)  ; FMad(a,b,c)
  %7439 = call float @dx.op.tertiary.f32(i32 46, float %7422, float %7432, float %7438)  ; FMad(a,b,c)
  %7440 = fadd fast float %7439, %7423
  %7441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %7436, float %7440, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7442 = extractvalue %dx.types.ResRet.f32 %7441, 0
  %7443 = fmul fast float %7442, %7425
  %7444 = fadd fast float %7443, %7424
  %7445 = call float @dx.op.unary.f32(i32 7, float %7444)  ; Saturate(value)
  %7446 = fmul fast float %7445, %7409
  %7447 = fsub fast float 1.000000e+00, %7446
  br label %7448

; <label>:7448                                    ; preds = %7413, %7411
  %7449 = phi float [ %7447, %7413 ], [ 1.000000e+00, %7411 ]
  %7450 = fmul fast float %7449, %7407
  br label %7451

; <label>:7451                                    ; preds = %7448, %7397, %6332
  %7452 = phi float [ 1.000000e+00, %6332 ], [ %7450, %7448 ], [ %7407, %7397 ]
  %7453 = call float @dx.op.binary.f32(i32 36, float %7452, float %7452)  ; FMin(a,b)
  %7454 = call float @dx.op.binary.f32(i32 36, float %7452, float %7453)  ; FMin(a,b)
  %7455 = fcmp fast ogt float %7454, 0.000000e+00
  br i1 %7455, label %7456, label %7622, !dx.controlflow.hints !116

; <label>:7456                                    ; preds = %7451
  %7457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7458 = extractvalue %dx.types.CBufRet.f32 %7457, 0
  %7459 = extractvalue %dx.types.CBufRet.f32 %7457, 1
  %7460 = extractvalue %dx.types.CBufRet.f32 %7457, 2
  %7461 = extractvalue %dx.types.CBufRet.f32 %7457, 3
  %7462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7463 = extractvalue %dx.types.CBufRet.f32 %7462, 0
  %7464 = extractvalue %dx.types.CBufRet.f32 %7462, 1
  %7465 = extractvalue %dx.types.CBufRet.f32 %7462, 2
  %7466 = extractvalue %dx.types.CBufRet.f32 %7462, 3
  %7467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7468 = extractvalue %dx.types.CBufRet.f32 %7467, 0
  %7469 = extractvalue %dx.types.CBufRet.f32 %7467, 1
  %7470 = extractvalue %dx.types.CBufRet.f32 %7467, 2
  %7471 = extractvalue %dx.types.CBufRet.f32 %7467, 3
  %7472 = fmul fast float %7458, %6352
  %7473 = call float @dx.op.tertiary.f32(i32 46, float %6353, float %7459, float %7472)  ; FMad(a,b,c)
  %7474 = call float @dx.op.tertiary.f32(i32 46, float %6354, float %7460, float %7473)  ; FMad(a,b,c)
  %7475 = fadd fast float %7474, %7461
  %7476 = fmul fast float %7463, %6352
  %7477 = call float @dx.op.tertiary.f32(i32 46, float %6353, float %7464, float %7476)  ; FMad(a,b,c)
  %7478 = call float @dx.op.tertiary.f32(i32 46, float %6354, float %7465, float %7477)  ; FMad(a,b,c)
  %7479 = fadd fast float %7478, %7466
  %7480 = fmul fast float %7468, %6352
  %7481 = call float @dx.op.tertiary.f32(i32 46, float %6353, float %7469, float %7480)  ; FMad(a,b,c)
  %7482 = call float @dx.op.tertiary.f32(i32 46, float %6354, float %7470, float %7481)  ; FMad(a,b,c)
  %7483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7484 = extractvalue %dx.types.CBufRet.f32 %7483, 0
  %7485 = extractvalue %dx.types.CBufRet.f32 %7483, 1
  %7486 = extractvalue %dx.types.CBufRet.f32 %7483, 3
  %7487 = fmul fast float %7486, %7475
  %7488 = fmul fast float %7486, %7479
  %7489 = fadd fast float %7487, %7484
  %7490 = fadd fast float %7488, %7485
  %7491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7492 = extractvalue %dx.types.CBufRet.f32 %7491, 0
  %7493 = extractvalue %dx.types.CBufRet.f32 %7491, 1
  %7494 = fsub fast float %7489, %7492
  %7495 = fsub fast float %7490, %7493
  %7496 = fcmp fast olt float %7494, 0.000000e+00
  %7497 = fcmp fast olt float %7495, 0.000000e+00
  %7498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7499 = extractvalue %dx.types.CBufRet.f32 %7498, 0
  %7500 = extractvalue %dx.types.CBufRet.f32 %7498, 1
  %7501 = extractvalue %dx.types.CBufRet.f32 %7498, 2
  %7502 = extractvalue %dx.types.CBufRet.f32 %7498, 3
  %7503 = select i1 %7496, float %7499, float %7501
  %7504 = select i1 %7497, float %7500, float %7502
  %7505 = fmul fast float %7503, %7494
  %7506 = fmul fast float %7504, %7495
  %7507 = call float @dx.op.unary.f32(i32 6, float %7505)  ; FAbs(value)
  %7508 = call float @dx.op.unary.f32(i32 6, float %7506)  ; FAbs(value)
  %7509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7510 = extractvalue %dx.types.CBufRet.f32 %7509, 0
  %7511 = call float @dx.op.binary.f32(i32 35, float %7507, float %7508)  ; FMax(a,b)
  %7512 = fsub fast float %7510, %7511
  %7513 = call float @dx.op.unary.f32(i32 7, float %7512)  ; Saturate(value)
  %7514 = fcmp fast ogt float %7513, 0.000000e+00
  br i1 %7514, label %7515, label %7556, !dx.controlflow.hints !117

; <label>:7515                                    ; preds = %7456
  %7516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %7489, float %7490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7517 = extractvalue %dx.types.ResRet.f32 %7516, 1
  %7518 = fcmp fast ogt float %7517, 0.000000e+00
  br i1 %7518, label %7519, label %7551

; <label>:7519                                    ; preds = %7515
  %7520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %7489, float %7490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7521 = extractvalue %dx.types.ResRet.f32 %7520, 0
  %7522 = extractvalue %dx.types.ResRet.f32 %7520, 1
  %7523 = extractvalue %dx.types.ResRet.f32 %7520, 2
  %7524 = extractvalue %dx.types.ResRet.f32 %7520, 3
  %7525 = fsub fast float 1.000000e+00, %7471
  %7526 = fsub fast float %7525, %7482
  %7527 = fmul fast float %7526, 0x400921FB60000000
  %7528 = fadd fast float %7527, 0x3FF921FB60000000
  %7529 = call float @dx.op.unary.f32(i32 13, float %7528)  ; Sin(value)
  %7530 = fadd fast float %7529, -1.000000e+00
  %7531 = fmul fast float %7530, 0x3FD45F3060000000
  %7532 = fmul fast float %7526, 0x401921FB60000000
  %7533 = fadd fast float %7532, 0x400921FB60000000
  %7534 = call float @dx.op.unary.f32(i32 13, float %7533)  ; Sin(value)
  %7535 = fadd fast float %7534, 0x3E7777A5C0000000
  %7536 = fmul fast float %7535, 0x3FC45F3060000000
  %7537 = fmul fast float %7526, 0x4022D97C80000000
  %7538 = fadd fast float %7537, 0x4012D97C80000000
  %7539 = call float @dx.op.unary.f32(i32 13, float %7538)  ; Sin(value)
  %7540 = fadd fast float %7539, 1.000000e+00
  %7541 = fmul fast float %7540, 0x3FBB2995E0000000
  %7542 = fmul fast float %7526, 0x402921FB60000000
  %7543 = fadd fast float %7542, 0x401921FB60000000
  %7544 = call float @dx.op.unary.f32(i32 13, float %7543)  ; Sin(value)
  %7545 = fadd fast float %7544, 0xBE8777A5C0000000
  %7546 = fmul fast float %7545, 0x3FB45F3060000000
  %7547 = call float @dx.op.dot4.f32(i32 56, float %7521, float %7522, float %7523, float %7524, float %7531, float %7536, float %7541, float %7546)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7548 = fmul fast float %7547, 0xBFF7154760000000
  %7549 = call float @dx.op.unary.f32(i32 21, float %7548)  ; Exp(value)
  %7550 = call float @dx.op.unary.f32(i32 7, float %7549)  ; Saturate(value)
  br label %7551

; <label>:7551                                    ; preds = %7519, %7515
  %7552 = phi float [ %7550, %7519 ], [ 1.000000e+00, %7515 ]
  %7553 = fadd fast float %7552, -1.000000e+00
  %7554 = fmul fast float %7553, %7513
  %7555 = fadd fast float %7554, 1.000000e+00
  br label %7556

; <label>:7556                                    ; preds = %7551, %7456
  %7557 = phi float [ %7555, %7551 ], [ 1.000000e+00, %7456 ]
  %7558 = fmul fast float %7557, %7452
  %7559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7560 = extractvalue %dx.types.CBufRet.f32 %7559, 0
  %7561 = extractvalue %dx.types.CBufRet.f32 %7559, 1
  %7562 = extractvalue %dx.types.CBufRet.f32 %7559, 2
  %7563 = fadd fast float %7560, %152
  %7564 = fadd fast float %7561, %153
  %7565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7566 = extractvalue %dx.types.CBufRet.f32 %7565, 1
  %7567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7568 = extractvalue %dx.types.CBufRet.f32 %7567, 0
  %7569 = extractvalue %dx.types.CBufRet.f32 %7567, 1
  %7570 = extractvalue %dx.types.CBufRet.f32 %7567, 2
  %7571 = fsub fast float -0.000000e+00, %7563
  %7572 = fsub fast float -0.000000e+00, %7564
  %7573 = fsub fast float -0.000000e+00, %154
  %7574 = fsub fast float %7573, %7562
  %7575 = fadd fast float %7574, %7566
  %7576 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7571, float %7572, float %7575)  ; Dot3(ax,ay,az,bx,by,bz)
  %7577 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7568, float %7569, float %7570)  ; Dot3(ax,ay,az,bx,by,bz)
  %7578 = fdiv fast float 1.000000e+00, %7577
  %7579 = fmul fast float %7578, %7576
  %7580 = fmul fast float %7568, %7579
  %7581 = fmul fast float %7569, %7579
  %7582 = fadd fast float %7580, %7563
  %7583 = fadd fast float %7581, %7564
  %7584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7585 = extractvalue %dx.types.CBufRet.f32 %7584, 0
  %7586 = extractvalue %dx.types.CBufRet.f32 %7584, 1
  %7587 = fsub fast float %7582, %7585
  %7588 = fsub fast float %7583, %7586
  %7589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7590 = extractvalue %dx.types.CBufRet.f32 %7589, 2
  %7591 = extractvalue %dx.types.CBufRet.f32 %7589, 3
  %7592 = fmul fast float %7587, %7590
  %7593 = fmul fast float %7588, %7591
  %7594 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7595 = extractvalue %dx.types.CBufRet.i32 %7594, 3
  %7596 = icmp eq i32 %7595, 0
  br i1 %7596, label %7602, label %7597

; <label>:7597                                    ; preds = %7556
  %7598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %7592, float %7593, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7599 = extractvalue %dx.types.ResRet.f32 %7598, 0
  %7600 = extractvalue %dx.types.ResRet.f32 %7598, 1
  %7601 = extractvalue %dx.types.ResRet.f32 %7598, 2
  br label %7607

; <label>:7602                                    ; preds = %7556
  %7603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7592, float %7593, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7604 = extractvalue %dx.types.ResRet.f32 %7603, 0
  %7605 = extractvalue %dx.types.ResRet.f32 %7603, 1
  %7606 = extractvalue %dx.types.ResRet.f32 %7603, 2
  br label %7607

; <label>:7607                                    ; preds = %7602, %7597
  %7608 = phi float [ %7599, %7597 ], [ %7604, %7602 ]
  %7609 = phi float [ %7600, %7597 ], [ %7605, %7602 ]
  %7610 = phi float [ %7601, %7597 ], [ %7606, %7602 ]
  %7611 = extractvalue %dx.types.CBufRet.f32 %7565, 2
  %7612 = fmul fast float %7611, %7608
  %7613 = extractvalue %dx.types.CBufRet.f32 %7565, 0
  %7614 = fsub fast float %7579, %7613
  %7615 = fsub fast float %7614, %7612
  %7616 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7615)  ; FMax(a,b)
  %7617 = fmul fast float %7616, %7609
  %7618 = call float @dx.op.binary.f32(i32 36, float %7610, float %7617)  ; FMin(a,b)
  %7619 = fmul fast float %7618, 0xBFF7154760000000
  %7620 = call float @dx.op.unary.f32(i32 21, float %7619)  ; Exp(value)
  %7621 = fmul fast float %7558, %7620
  br label %7622

; <label>:7622                                    ; preds = %7607, %7451
  %7623 = phi float [ %7621, %7607 ], [ %7452, %7451 ]
  %7624 = call float @dx.op.binary.f32(i32 36, float %7623, float %7623)  ; FMin(a,b)
  %7625 = call float @dx.op.binary.f32(i32 36, float %7623, float %7624)  ; FMin(a,b)
  %7626 = fcmp fast ogt float %7625, 0.000000e+00
  br i1 %7626, label %7627, label %7935, !dx.controlflow.hints !118

; <label>:7627                                    ; preds = %7622
  %7628 = bitcast i32 %5454 to float
  %7629 = fmul fast float %7623, %6344
  %7630 = fmul fast float %7623, %6345
  %7631 = fmul fast float %7623, %6346
  %7632 = fsub fast float %6333, %5416
  %7633 = fsub fast float %6334, %5415
  %7634 = fsub fast float %6335, %5414
  %7635 = call float @dx.op.dot3.f32(i32 55, float %7632, float %7633, float %7634, float %7632, float %7633, float %7634)  ; Dot3(ax,ay,az,bx,by,bz)
  %7636 = call float @dx.op.unary.f32(i32 25, float %7635)  ; Rsqrt(value)
  %7637 = fmul fast float %7636, %7632
  %7638 = fmul fast float %7636, %7633
  %7639 = fmul fast float %7636, %7634
  %7640 = call float @dx.op.dot3.f32(i32 55, float %6333, float %6334, float %6335, float %5423, float %5424, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %7641 = call float @dx.op.dot3.f32(i32 55, float %5413, float %5412, float %5411, float %7637, float %7638, float %7639)  ; Dot3(ax,ay,az,bx,by,bz)
  %7642 = call float @dx.op.unary.f32(i32 7, float %7640)  ; Saturate(value)
  %7643 = fmul fast float %7642, %7642
  %7644 = fmul fast float %7643, %7628
  %7645 = call float @dx.op.unary.f32(i32 7, float %7644)  ; Saturate(value)
  %7646 = fmul fast float %7645, %7642
  %7647 = call float @dx.op.dot3.f32(i32 55, float %5423, float %5424, float %5425, float %7637, float %7638, float %7639)  ; Dot3(ax,ay,az,bx,by,bz)
  %7648 = fmul fast float %7647, %7647
  %7649 = call float @dx.op.unary.f32(i32 6, float %7640)  ; FAbs(value)
  %7650 = fsub fast float 1.000000e+00, %5448
  %7651 = fmul fast float %5430, %5430
  %7652 = fmul fast float %7651, %7650
  %7653 = fadd fast float %7652, %5448
  %7654 = bitcast float %7653 to i32
  %7655 = ashr i32 %7654, 1
  %7656 = add nsw i32 %7655, 532487669
  %7657 = bitcast i32 %7656 to float
  %7658 = fadd fast float %7657, %5430
  %7659 = fmul fast float %5448, %7648
  %7660 = fsub fast float 1.000000e+00, %7648
  %7661 = fadd fast float %7660, %7659
  %7662 = fmul fast float %7649, %7649
  %7663 = fmul fast float %7662, %7650
  %7664 = fadd fast float %7663, %5448
  %7665 = bitcast float %7664 to i32
  %7666 = ashr i32 %7665, 1
  %7667 = add nsw i32 %7666, 532487669
  %7668 = bitcast i32 %7667 to float
  %7669 = fadd fast float %7668, %7649
  %7670 = fmul fast float %7661, %7661
  %7671 = fmul fast float %7670, %7658
  %7672 = fmul fast float %7671, %7669
  %7673 = fdiv fast float 0x3FF0A00000000000, %7672
  %7674 = fmul fast float %7673, %5448
  %7675 = fmul fast float %5700, 0x3FF9999980000000
  %7676 = fsub fast float 5.000000e+00, %7675
  %7677 = call float @dx.op.unary.f32(i32 6, float %7641)  ; FAbs(value)
  %7678 = fsub fast float 1.000000e+00, %7677
  %7679 = fmul fast float %5700, 0x41D9660740000000
  %7680 = fadd fast float %7679, 0xC1EFBF8940000000
  %7681 = bitcast float %7678 to i32
  %7682 = sitofp i32 %7681 to float
  %7683 = fmul fast float %7682, %7676
  %7684 = fadd fast float %7680, %7683
  %7685 = fptosi float %7684 to i32
  %7686 = bitcast i32 %7685 to float
  %7687 = fsub fast float 1.000000e+00, %5417
  %7688 = fsub fast float 1.000000e+00, %5418
  %7689 = fsub fast float 1.000000e+00, %5428
  %7690 = fmul fast float %7686, %7687
  %7691 = fmul fast float %7686, %7688
  %7692 = fmul fast float %7686, %7689
  %7693 = fadd fast float %7690, %5417
  %7694 = fadd fast float %7691, %5418
  %7695 = fadd fast float %7692, %5428
  br i1 %5723, label %7696, label %7719

; <label>:7696                                    ; preds = %7627
  %7697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5077, float %7677, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7698 = extractvalue %dx.types.ResRet.f32 %7697, 0
  %7699 = extractvalue %dx.types.ResRet.f32 %7697, 1
  %7700 = extractvalue %dx.types.ResRet.f32 %7697, 2
  %7701 = fadd fast float %7698, -5.000000e-01
  %7702 = fadd fast float %7699, -5.000000e-01
  %7703 = fadd fast float %7700, -5.000000e-01
  %7704 = fmul fast float %5417, 4.000000e+00
  %7705 = fmul fast float %7704, %7687
  %7706 = fmul fast float %7705, %7701
  %7707 = fmul fast float %5418, 4.000000e+00
  %7708 = fmul fast float %7707, %7688
  %7709 = fmul fast float %7708, %7702
  %7710 = fmul fast float %5428, 4.000000e+00
  %7711 = fmul fast float %7710, %7689
  %7712 = fmul fast float %7711, %7703
  %7713 = fadd fast float %7706, %7693
  %7714 = fadd fast float %7709, %7694
  %7715 = fadd fast float %7712, %7695
  %7716 = call float @dx.op.unary.f32(i32 7, float %7713)  ; Saturate(value)
  %7717 = call float @dx.op.unary.f32(i32 7, float %7714)  ; Saturate(value)
  %7718 = call float @dx.op.unary.f32(i32 7, float %7715)  ; Saturate(value)
  br label %7719

; <label>:7719                                    ; preds = %7696, %7627
  %7720 = phi float [ %7716, %7696 ], [ %7693, %7627 ]
  %7721 = phi float [ %7717, %7696 ], [ %7694, %7627 ]
  %7722 = phi float [ %7718, %7696 ], [ %7695, %7627 ]
  %7723 = fmul fast float %7640, 9.843750e-01
  %7724 = fadd fast float %7723, 7.812500e-03
  %7725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7724, float %5704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7726 = extractvalue %dx.types.ResRet.f32 %7725, 0
  %7727 = extractvalue %dx.types.ResRet.f32 %7725, 1
  %7728 = extractvalue %dx.types.ResRet.f32 %7725, 2
  %7729 = extractvalue %dx.types.ResRet.f32 %7725, 3
  %7730 = fsub fast float %7728, %7726
  %7731 = fsub fast float %7729, %7727
  %7732 = fmul fast float %7730, %5710
  %7733 = fmul fast float %7731, %5710
  %7734 = fadd fast float %7732, %7726
  %7735 = fadd fast float %7733, %7727
  %7736 = fmul fast float %7734, %5417
  %7737 = fmul fast float %7734, %5418
  %7738 = fmul fast float %7734, %5428
  %7739 = fadd fast float %7736, %7735
  %7740 = fadd fast float %7737, %7735
  %7741 = fadd fast float %7738, %7735
  br i1 %5723, label %7742, label %7765

; <label>:7742                                    ; preds = %7719
  %7743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5077, float %7640, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7744 = extractvalue %dx.types.ResRet.f32 %7743, 0
  %7745 = extractvalue %dx.types.ResRet.f32 %7743, 1
  %7746 = extractvalue %dx.types.ResRet.f32 %7743, 2
  %7747 = fadd fast float %7744, -5.000000e-01
  %7748 = fadd fast float %7745, -5.000000e-01
  %7749 = fadd fast float %7746, -5.000000e-01
  %7750 = fmul fast float %5417, 4.000000e+00
  %7751 = fmul fast float %7750, %7687
  %7752 = fmul fast float %7751, %7747
  %7753 = fmul fast float %5418, 4.000000e+00
  %7754 = fmul fast float %7753, %7688
  %7755 = fmul fast float %7754, %7748
  %7756 = fmul fast float %5428, 4.000000e+00
  %7757 = fmul fast float %7756, %7689
  %7758 = fmul fast float %7757, %7749
  %7759 = fadd fast float %7752, %7739
  %7760 = fadd fast float %7755, %7740
  %7761 = fadd fast float %7758, %7741
  %7762 = call float @dx.op.unary.f32(i32 7, float %7759)  ; Saturate(value)
  %7763 = call float @dx.op.unary.f32(i32 7, float %7760)  ; Saturate(value)
  %7764 = call float @dx.op.unary.f32(i32 7, float %7761)  ; Saturate(value)
  br label %7765

; <label>:7765                                    ; preds = %7742, %7719
  %7766 = phi float [ %7762, %7742 ], [ %7739, %7719 ]
  %7767 = phi float [ %7763, %7742 ], [ %7740, %7719 ]
  %7768 = phi float [ %7764, %7742 ], [ %7741, %7719 ]
  %7769 = call float @dx.op.binary.f32(i32 35, float %7767, float %7768)  ; FMax(a,b)
  %7770 = call float @dx.op.binary.f32(i32 35, float %7766, float %7769)  ; FMax(a,b)
  %7771 = fsub fast float 1.000000e+00, %7770
  %7772 = call float @dx.op.binary.f32(i32 35, float %7649, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7773 = fdiv fast float %4414, %7772
  %7774 = fmul fast float %6242, %7773
  %7775 = fmul fast float %6244, %7773
  %7776 = fmul fast float %6246, %7773
  %7777 = call float @dx.op.unary.f32(i32 21, float %7774)  ; Exp(value)
  %7778 = call float @dx.op.unary.f32(i32 21, float %7775)  ; Exp(value)
  %7779 = call float @dx.op.unary.f32(i32 21, float %7776)  ; Exp(value)
  %7780 = call float @dx.op.unary.f32(i32 7, float %7777)  ; Saturate(value)
  %7781 = call float @dx.op.unary.f32(i32 7, float %7778)  ; Saturate(value)
  %7782 = call float @dx.op.unary.f32(i32 7, float %7779)  ; Saturate(value)
  %7783 = select i1 %6239, float %7780, float 0.000000e+00
  %7784 = select i1 %6240, float %7781, float 0.000000e+00
  %7785 = select i1 %6241, float %7782, float 0.000000e+00
  %7786 = fsub fast float -0.000000e+00, %5423
  %7787 = fsub fast float -0.000000e+00, %5424
  %7788 = fsub fast float -0.000000e+00, %5425
  %7789 = call float @dx.op.dot3.f32(i32 55, float %6333, float %6334, float %6335, float %7786, float %7787, float %7788)  ; Dot3(ax,ay,az,bx,by,bz)
  %7790 = call float @dx.op.unary.f32(i32 7, float %7789)  ; Saturate(value)
  %7791 = fmul fast float %7790, 9.843750e-01
  %7792 = fadd fast float %7791, 7.812500e-03
  %7793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7792, float %5704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7794 = extractvalue %dx.types.ResRet.f32 %7793, 0
  %7795 = extractvalue %dx.types.ResRet.f32 %7793, 1
  %7796 = extractvalue %dx.types.ResRet.f32 %7793, 2
  %7797 = extractvalue %dx.types.ResRet.f32 %7793, 3
  %7798 = fsub fast float %7796, %7794
  %7799 = fsub fast float %7797, %7795
  %7800 = fmul fast float %7798, %5710
  %7801 = fmul fast float %7799, %5710
  %7802 = fadd fast float %7800, %7794
  %7803 = fadd fast float %7801, %7795
  %7804 = fmul fast float %7802, %5417
  %7805 = fmul fast float %7802, %5418
  %7806 = fmul fast float %7802, %5428
  %7807 = fadd fast float %7804, %7803
  %7808 = fadd fast float %7805, %7803
  %7809 = fadd fast float %7806, %7803
  br i1 %5723, label %7810, label %7833

; <label>:7810                                    ; preds = %7765
  %7811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5077, float %7790, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7812 = extractvalue %dx.types.ResRet.f32 %7811, 0
  %7813 = extractvalue %dx.types.ResRet.f32 %7811, 1
  %7814 = extractvalue %dx.types.ResRet.f32 %7811, 2
  %7815 = fadd fast float %7812, -5.000000e-01
  %7816 = fadd fast float %7813, -5.000000e-01
  %7817 = fadd fast float %7814, -5.000000e-01
  %7818 = fmul fast float %5417, 4.000000e+00
  %7819 = fmul fast float %7818, %7687
  %7820 = fmul fast float %7819, %7815
  %7821 = fmul fast float %5418, 4.000000e+00
  %7822 = fmul fast float %7821, %7688
  %7823 = fmul fast float %7822, %7816
  %7824 = fmul fast float %5428, 4.000000e+00
  %7825 = fmul fast float %7824, %7689
  %7826 = fmul fast float %7825, %7817
  %7827 = fadd fast float %7820, %7807
  %7828 = fadd fast float %7823, %7808
  %7829 = fadd fast float %7826, %7809
  %7830 = call float @dx.op.unary.f32(i32 7, float %7827)  ; Saturate(value)
  %7831 = call float @dx.op.unary.f32(i32 7, float %7828)  ; Saturate(value)
  %7832 = call float @dx.op.unary.f32(i32 7, float %7829)  ; Saturate(value)
  br label %7833

; <label>:7833                                    ; preds = %7810, %7765
  %7834 = phi float [ %7830, %7810 ], [ %7807, %7765 ]
  %7835 = phi float [ %7831, %7810 ], [ %7808, %7765 ]
  %7836 = phi float [ %7832, %7810 ], [ %7809, %7765 ]
  %7837 = call float @dx.op.binary.f32(i32 35, float %7835, float %7836)  ; FMax(a,b)
  %7838 = call float @dx.op.binary.f32(i32 35, float %7834, float %7837)  ; FMax(a,b)
  %7839 = fsub fast float 1.000000e+00, %7838
  %7840 = fmul fast float %5445, %6306
  %7841 = fadd fast float %6308, %7840
  %7842 = call float @dx.op.unary.f32(i32 7, float %7841)  ; Saturate(value)
  %7843 = fsub fast float %6333, %5436
  %7844 = fsub fast float %6334, %5437
  %7845 = fsub fast float %6335, %5438
  %7846 = call float @dx.op.dot3.f32(i32 55, float %7843, float %7844, float %7845, float %7843, float %7844, float %7845)  ; Dot3(ax,ay,az,bx,by,bz)
  %7847 = call float @dx.op.unary.f32(i32 25, float %7846)  ; Rsqrt(value)
  %7848 = fmul fast float %7847, %7843
  %7849 = fmul fast float %7847, %7844
  %7850 = fmul fast float %7847, %7845
  %7851 = call float @dx.op.dot3.f32(i32 55, float %7786, float %7787, float %7788, float %7848, float %7849, float %7850)  ; Dot3(ax,ay,az,bx,by,bz)
  %7852 = fmul fast float %7851, %7851
  %7853 = call float @dx.op.unary.f32(i32 6, float %7790)  ; FAbs(value)
  %7854 = call float @dx.op.binary.f32(i32 35, float %7842, float 0x3F847AE140000000)  ; FMax(a,b)
  %7855 = fmul fast float %7854, %7854
  %7856 = fmul fast float %7855, %7855
  %7857 = fsub fast float 1.000000e+00, %7856
  %7858 = fmul fast float %7651, %7857
  %7859 = fadd fast float %7858, %7856
  %7860 = bitcast float %7859 to i32
  %7861 = ashr i32 %7860, 1
  %7862 = add nsw i32 %7861, 532487669
  %7863 = bitcast i32 %7862 to float
  %7864 = fadd fast float %7863, %5430
  %7865 = fmul fast float %7856, %7852
  %7866 = fsub fast float 1.000000e+00, %7852
  %7867 = fadd fast float %7866, %7865
  %7868 = fmul fast float %7853, %7853
  %7869 = fmul fast float %7868, %7857
  %7870 = fadd fast float %7869, %7856
  %7871 = bitcast float %7870 to i32
  %7872 = ashr i32 %7871, 1
  %7873 = add nsw i32 %7872, 532487669
  %7874 = bitcast i32 %7873 to float
  %7875 = fadd fast float %7874, %7853
  %7876 = fmul fast float %7867, %7867
  %7877 = fmul fast float %7876, %7864
  %7878 = fmul fast float %7877, %7875
  %7879 = fdiv fast float 0x3FF0A00000000000, %7878
  %7880 = fmul fast float %7879, %7856
  %7881 = fmul fast float %7790, %7783
  %7882 = fmul fast float %7790, %7784
  %7883 = fmul fast float %7790, %7785
  %7884 = fmul fast float %7881, %7839
  %7885 = fmul fast float %7884, %7880
  %7886 = fmul fast float %7882, %7839
  %7887 = fmul fast float %7886, %7880
  %7888 = fmul fast float %7883, %7839
  %7889 = fmul fast float %7888, %7880
  %7890 = fmul fast float %7720, %7674
  %7891 = fmul fast float %7721, %7674
  %7892 = fmul fast float %7722, %7674
  %7893 = fsub fast float 1.000000e+00, %7641
  %7894 = bitcast float %7893 to i32
  %7895 = sitofp i32 %7894 to float
  %7896 = fmul fast float %7895, 5.000000e+00
  %7897 = fadd fast float %7896, 0xC1EFBF8940000000
  %7898 = fptosi float %7897 to i32
  %7899 = bitcast i32 %7898 to float
  %7900 = fmul fast float %7899, %5078
  %7901 = fmul fast float %7771, %7900
  %7902 = fmul fast float %7901, %6234
  %7903 = fmul fast float %7901, %6235
  %7904 = fmul fast float %7901, %6236
  %7905 = fadd fast float %7902, %7890
  %7906 = fadd fast float %7903, %7891
  %7907 = fadd fast float %7904, %7892
  %7908 = fmul fast float %7905, %7646
  %7909 = fmul fast float %7906, %7646
  %7910 = fmul fast float %7907, %7646
  %7911 = fmul fast float %7646, %7629
  %7912 = fmul fast float %7911, %7771
  %7913 = fmul fast float %7646, %7630
  %7914 = fmul fast float %7913, %7771
  %7915 = fmul fast float %7646, %7631
  %7916 = fmul fast float %7915, %7771
  %7917 = fadd fast float %7908, %7885
  %7918 = fadd fast float %7909, %7887
  %7919 = fadd fast float %7910, %7889
  %7920 = fmul fast float %7917, %7629
  %7921 = fmul fast float %7918, %7630
  %7922 = fmul fast float %7919, %7631
  %7923 = fadd fast float %7912, %6323
  %7924 = fmul fast float %7923, %5074
  %7925 = fadd fast float %7914, %6325
  %7926 = fmul fast float %7925, %5074
  %7927 = fadd fast float %7916, %6327
  %7928 = fmul fast float %7927, %5074
  %7929 = fadd fast float %7920, %6287
  %7930 = fmul fast float %7929, %5074
  %7931 = fadd fast float %7921, %6290
  %7932 = fmul fast float %7931, %5074
  %7933 = fadd fast float %7922, %6293
  %7934 = fmul fast float %7933, %5074
  br label %7935

; <label>:7935                                    ; preds = %7833, %7622, %6217
  %7936 = phi float [ %6288, %6217 ], [ %6288, %7622 ], [ %7930, %7833 ]
  %7937 = phi float [ %6291, %6217 ], [ %6291, %7622 ], [ %7932, %7833 ]
  %7938 = phi float [ %6294, %6217 ], [ %6294, %7622 ], [ %7934, %7833 ]
  %7939 = phi float [ %6324, %6217 ], [ %6324, %7622 ], [ %7924, %7833 ]
  %7940 = phi float [ %6326, %6217 ], [ %6326, %7622 ], [ %7926, %7833 ]
  %7941 = phi float [ %6328, %6217 ], [ %6328, %7622 ], [ %7928, %7833 ]
  %7942 = fmul fast float %5074, %6263
  %7943 = fsub fast float -0.000000e+00, %7942
  %7944 = fmul fast float %5074, %6264
  %7945 = fsub fast float -0.000000e+00, %7944
  %7946 = fmul fast float %5074, %6265
  %7947 = fsub fast float -0.000000e+00, %7946
  %7948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7949 = extractvalue %dx.types.CBufRet.f32 %7948, 0
  %7950 = fmul fast float %7949, %6269
  %7951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7952 = extractvalue %dx.types.CBufRet.f32 %7951, 3
  %7953 = fsub fast float 1.000000e+00, %5081
  %7954 = call float @dx.op.unary.f32(i32 7, float %7953)  ; Saturate(value)
  %7955 = fadd fast float %7941, %5080
  %7956 = fmul fast float %7955, %5081
  %7957 = fmul fast float %7954, %7952
  %7958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7959 = extractvalue %dx.types.CBufRet.f32 %7958, 3
  %7960 = fmul fast float %7939, %5420
  %7961 = fmul fast float %7940, %5421
  %7962 = fmul fast float %7941, %5422
  %7963 = fcmp fast ogt float %85, %174
  %7964 = and i1 %7963, %5149
  %7965 = or i1 %5228, %7964
  %7966 = icmp eq i32 %5148, 2
  %7967 = fcmp fast ole float %85, %174
  %7968 = and i1 %7967, %7966
  %7969 = or i1 %7968, %7965
  br i1 %7964, label %7970, label %8227

; <label>:7970                                    ; preds = %7935
  %7971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7972 = extractvalue %dx.types.CBufRet.f32 %7971, 2
  %7973 = extractvalue %dx.types.CBufRet.f32 %7971, 3
  %7974 = fmul fast float %7972, %97
  %7975 = fmul fast float %7973, %98
  %7976 = call float @dx.op.unary.f32(i32 7, float %7974)  ; Saturate(value)
  %7977 = call float @dx.op.unary.f32(i32 7, float %7975)  ; Saturate(value)
  %7978 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7976, float %7977, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7979 = extractvalue %dx.types.ResRet.f32 %7978, 0
  %7980 = extractvalue %dx.types.ResRet.f32 %7978, 1
  %7981 = extractvalue %dx.types.ResRet.f32 %7978, 2
  %7982 = extractvalue %dx.types.ResRet.f32 %7978, 3
  %7983 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7976, float %7977, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7984 = extractvalue %dx.types.ResRet.f32 %7983, 0
  %7985 = extractvalue %dx.types.ResRet.f32 %7983, 1
  %7986 = extractvalue %dx.types.ResRet.f32 %7983, 2
  %7987 = extractvalue %dx.types.ResRet.f32 %7983, 3
  %7988 = call float @dx.op.binary.f32(i32 35, float %7980, float %7981)  ; FMax(a,b)
  %7989 = call float @dx.op.binary.f32(i32 35, float %7979, float %7988)  ; FMax(a,b)
  %7990 = call float @dx.op.binary.f32(i32 35, float %7989, float %7982)  ; FMax(a,b)
  %7991 = call float @dx.op.binary.f32(i32 36, float %7985, float %7986)  ; FMin(a,b)
  %7992 = call float @dx.op.binary.f32(i32 36, float %7984, float %7991)  ; FMin(a,b)
  %7993 = call float @dx.op.binary.f32(i32 36, float %7992, float %7987)  ; FMin(a,b)
  %7994 = fmul fast float %7990, 2.550000e+02
  %7995 = fadd fast float %7994, 0x3F70101020000000
  %7996 = fptoui float %7995 to i32
  %7997 = fmul fast float %7993, 2.550000e+02
  %7998 = fadd fast float %7997, 0x3F70101020000000
  %7999 = fptoui float %7998 to i32
  %8000 = icmp ult i32 %7996, %7999
  br i1 %8000, label %8001, label %8169

; <label>:8001                                    ; preds = %7970
  %8002 = fcmp fast ogt float %84, 9.843750e-01
  %8003 = fadd fast float %85, -4.000000e+00
  %8004 = select i1 %8002, float -4.000000e+00, float %8003
  %8005 = call float @dx.op.binary.f32(i32 35, float %8004, float 0.000000e+00)  ; FMax(a,b)
  %8006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8007 = extractvalue %dx.types.CBufRet.f32 %8006, 0
  %8008 = fadd fast float %8007, %8005
  %8009 = extractvalue %dx.types.CBufRet.f32 %8006, 2
  %8010 = fmul fast float %8008, %8009
  %8011 = call float @dx.op.unary.f32(i32 23, float %8010)  ; Log(value)
  %8012 = extractvalue %dx.types.CBufRet.f32 %8006, 3
  %8013 = fmul fast float %8012, %8011
  %8014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8015 = extractvalue %dx.types.CBufRet.f32 %8014, 2
  %8016 = fmul fast float %8013, %8015
  %8017 = call float @dx.op.unary.f32(i32 7, float %8016)  ; Saturate(value)
  %8018 = uitofp i32 %7996 to float
  %8019 = uitofp i32 %7999 to float
  %8020 = fadd fast float %8018, 5.000000e-01
  %8021 = fadd fast float %8019, 5.000000e-01
  %8022 = fmul fast float %8015, %8020
  %8023 = fmul fast float %8015, %8021
  %8024 = fadd fast float %8022, 0x3F0FFB4800000000
  %8025 = fadd fast float %8023, 0xBF0FFB4800000000
  %8026 = call float @dx.op.binary.f32(i32 35, float %8017, float %8024)  ; FMax(a,b)
  %8027 = call float @dx.op.binary.f32(i32 36, float %8026, float %8025)  ; FMin(a,b)
  %8028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8029 = extractvalue %dx.types.CBufRet.f32 %8028, 1
  %8030 = extractvalue %dx.types.CBufRet.f32 %8028, 2
  %8031 = extractvalue %dx.types.CBufRet.f32 %8028, 0
  %8032 = fmul fast float %8029, %8027
  %8033 = fadd fast float %8031, %8032
  %8034 = fadd fast float %8031, %8030
  %8035 = fsub fast float %8029, %8030
  %8036 = fadd fast float %8035, %8031
  %8037 = call float @dx.op.binary.f32(i32 35, float %8033, float %8034)  ; FMax(a,b)
  %8038 = call float @dx.op.binary.f32(i32 36, float %8037, float %8036)  ; FMin(a,b)
  %8039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %7976, float %7977, float %8038, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8040 = extractvalue %dx.types.ResRet.f32 %8039, 0
  %8041 = extractvalue %dx.types.ResRet.f32 %8039, 1
  %8042 = extractvalue %dx.types.ResRet.f32 %8039, 2
  %8043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8044 = extractvalue %dx.types.CBufRet.i32 %8043, 0
  %8045 = extractvalue %dx.types.CBufRet.i32 %8043, 1
  %8046 = uitofp i32 %8044 to float
  %8047 = uitofp i32 %8045 to float
  %8048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8049 = extractvalue %dx.types.CBufRet.f32 %8048, 0
  %8050 = extractvalue %dx.types.CBufRet.f32 %8048, 1
  %8051 = fmul fast float %8046, %7976
  %8052 = fmul fast float %8047, %7977
  %8053 = fadd fast float %8051, -5.000000e-01
  %8054 = fadd fast float %8052, -5.000000e-01
  %8055 = call float @dx.op.unary.f32(i32 22, float %8053)  ; Frc(value)
  %8056 = call float @dx.op.unary.f32(i32 22, float %8054)  ; Frc(value)
  %8057 = fmul fast float %8055, %8055
  %8058 = fmul fast float %8057, %8055
  %8059 = fsub fast float 3.000000e+00, %8055
  %8060 = fmul fast float %8057, %8059
  %8061 = fmul fast float %8055, 3.000000e+00
  %8062 = fmul fast float %8058, 3.000000e+00
  %8063 = fmul fast float %8057, 6.000000e+00
  %8064 = fsub fast float %8062, %8063
  %8065 = fadd fast float %8064, 4.000000e+00
  %8066 = fmul fast float %8065, 0x3FC5555560000000
  %8067 = fmul fast float %8058, -3.000000e+00
  %8068 = fadd fast float %8057, %8055
  %8069 = fmul fast float %8068, 3.000000e+00
  %8070 = fadd fast float %8067, 1.000000e+00
  %8071 = fadd fast float %8070, %8069
  %8072 = fmul fast float %8058, 0x3FC5555560000000
  %8073 = fmul fast float %8056, %8056
  %8074 = fmul fast float %8073, %8056
  %8075 = fsub fast float 3.000000e+00, %8056
  %8076 = fmul fast float %8073, %8075
  %8077 = fmul fast float %8056, 3.000000e+00
  %8078 = fmul fast float %8074, 3.000000e+00
  %8079 = fmul fast float %8073, 6.000000e+00
  %8080 = fsub fast float %8078, %8079
  %8081 = fadd fast float %8080, 4.000000e+00
  %8082 = fmul fast float %8081, 0x3FC5555560000000
  %8083 = fmul fast float %8074, -3.000000e+00
  %8084 = fadd fast float %8073, %8056
  %8085 = fmul fast float %8084, 3.000000e+00
  %8086 = fadd fast float %8083, 1.000000e+00
  %8087 = fadd fast float %8086, %8085
  %8088 = fmul fast float %8074, 0x3FC5555560000000
  %8089 = fadd fast float %8055, 1.000000e+00
  %8090 = fsub fast float 1.000000e+00, %8061
  %8091 = fadd fast float %8090, %8060
  %8092 = fadd fast float %8091, %8065
  %8093 = fmul fast float %8092, 0x3FC5555560000000
  %8094 = fdiv fast float %8066, %8093
  %8095 = fsub fast float %8089, %8094
  %8096 = fsub fast float 1.000000e+00, %8055
  %8097 = fadd fast float %8071, %8058
  %8098 = fmul fast float %8097, 0x3FC5555560000000
  %8099 = fdiv fast float %8072, %8098
  %8100 = fadd fast float %8096, %8099
  %8101 = fadd fast float %8056, 1.000000e+00
  %8102 = fsub fast float 1.000000e+00, %8077
  %8103 = fadd fast float %8102, %8076
  %8104 = fadd fast float %8103, %8081
  %8105 = fmul fast float %8104, 0x3FC5555560000000
  %8106 = fdiv fast float %8082, %8105
  %8107 = fsub fast float %8101, %8106
  %8108 = fsub fast float 1.000000e+00, %8056
  %8109 = fadd fast float %8087, %8074
  %8110 = fmul fast float %8109, 0x3FC5555560000000
  %8111 = fdiv fast float %8088, %8110
  %8112 = fadd fast float %8111, %8108
  %8113 = fmul fast float %8095, %8049
  %8114 = fsub fast float %7976, %8113
  %8115 = fmul fast float %8100, %8049
  %8116 = fadd fast float %8115, %7976
  %8117 = fmul fast float %8112, %8050
  %8118 = fadd fast float %8117, %7977
  %8119 = fmul fast float %8107, %8050
  %8120 = fsub fast float %7977, %8119
  %8121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8114, float %8120, float %8038, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8122 = extractvalue %dx.types.ResRet.f32 %8121, 0
  %8123 = extractvalue %dx.types.ResRet.f32 %8121, 1
  %8124 = extractvalue %dx.types.ResRet.f32 %8121, 2
  %8125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8116, float %8120, float %8038, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8126 = extractvalue %dx.types.ResRet.f32 %8125, 0
  %8127 = extractvalue %dx.types.ResRet.f32 %8125, 1
  %8128 = extractvalue %dx.types.ResRet.f32 %8125, 2
  %8129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8114, float %8118, float %8038, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8130 = extractvalue %dx.types.ResRet.f32 %8129, 0
  %8131 = extractvalue %dx.types.ResRet.f32 %8129, 1
  %8132 = extractvalue %dx.types.ResRet.f32 %8129, 2
  %8133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8116, float %8118, float %8038, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8134 = extractvalue %dx.types.ResRet.f32 %8133, 0
  %8135 = extractvalue %dx.types.ResRet.f32 %8133, 1
  %8136 = extractvalue %dx.types.ResRet.f32 %8133, 2
  %8137 = fsub fast float %8130, %8122
  %8138 = fsub fast float %8131, %8123
  %8139 = fsub fast float %8132, %8124
  %8140 = fmul fast float %8137, %8110
  %8141 = fmul fast float %8138, %8110
  %8142 = fmul fast float %8139, %8110
  %8143 = fadd fast float %8140, %8122
  %8144 = fadd fast float %8141, %8123
  %8145 = fadd fast float %8142, %8124
  %8146 = fsub fast float %8134, %8126
  %8147 = fsub fast float %8135, %8127
  %8148 = fsub fast float %8136, %8128
  %8149 = fmul fast float %8146, %8110
  %8150 = fmul fast float %8147, %8110
  %8151 = fmul fast float %8148, %8110
  %8152 = fsub fast float %8126, %8143
  %8153 = fadd fast float %8152, %8149
  %8154 = fsub fast float %8127, %8144
  %8155 = fadd fast float %8154, %8150
  %8156 = fsub fast float %8128, %8145
  %8157 = fadd fast float %8156, %8151
  %8158 = fmul fast float %8153, %8098
  %8159 = fmul fast float %8155, %8098
  %8160 = fmul fast float %8157, %8098
  %8161 = fadd fast float %8158, %8143
  %8162 = fadd fast float %8159, %8144
  %8163 = fadd fast float %8160, %8145
  %8164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8165 = extractvalue %dx.types.CBufRet.f32 %8164, 1
  %8166 = fmul fast float %8161, %8165
  %8167 = fmul fast float %8162, %8165
  %8168 = fmul fast float %8163, %8165
  br label %8169

; <label>:8169                                    ; preds = %8001, %7970
  %8170 = phi float [ %8040, %8001 ], [ 1.000000e+00, %7970 ]
  %8171 = phi float [ %8041, %8001 ], [ 1.000000e+00, %7970 ]
  %8172 = phi float [ %8042, %8001 ], [ 1.000000e+00, %7970 ]
  %8173 = phi float [ %8166, %8001 ], [ 0.000000e+00, %7970 ]
  %8174 = phi float [ %8167, %8001 ], [ 0.000000e+00, %7970 ]
  %8175 = phi float [ %8168, %8001 ], [ 0.000000e+00, %7970 ]
  %8176 = fmul fast float %8173, %7943
  %8177 = fmul fast float %8174, %7945
  %8178 = fmul fast float %8175, %7947
  %8179 = call float @dx.op.dot3.f32(i32 55, float %8170, float %8171, float %8172, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8180 = call float @dx.op.dot3.f32(i32 55, float %8176, float %8177, float %8178, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8181 = select i1 %213, float %8179, float %8170
  %8182 = select i1 %213, float %8179, float %8171
  %8183 = select i1 %213, float 1.000000e+00, float %8172
  %8184 = select i1 %213, float %8180, float %8176
  %8185 = select i1 %213, float 0.000000e+00, float %8177
  %8186 = select i1 %213, float 0.000000e+00, float %8178
  %8187 = fmul fast float %8181, %7960
  %8188 = fmul fast float %8182, %7961
  %8189 = fmul fast float %8183, %7962
  %8190 = fadd fast float %8187, %8184
  %8191 = fadd fast float %8188, %8185
  %8192 = fadd fast float %8186, %8189
  %8193 = fmul fast float %8181, %7936
  %8194 = fmul fast float %8182, %7937
  %8195 = fmul fast float %8183, %7938
  %8196 = fmul fast float %122, %7972
  %8197 = fmul fast float %124, %7973
  %8198 = fsub fast float 1.000000e+00, %8196
  %8199 = fsub fast float 1.000000e+00, %8197
  %8200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8201 = extractvalue %dx.types.CBufRet.f32 %8200, 0
  %8202 = extractvalue %dx.types.CBufRet.f32 %8200, 1
  %8203 = extractvalue %dx.types.CBufRet.f32 %8200, 2
  %8204 = fmul fast float %8198, %8201
  %8205 = fmul fast float %8198, %8202
  %8206 = fmul fast float %8198, %8203
  %8207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8208 = extractvalue %dx.types.CBufRet.f32 %8207, 0
  %8209 = extractvalue %dx.types.CBufRet.f32 %8207, 1
  %8210 = extractvalue %dx.types.CBufRet.f32 %8207, 2
  %8211 = fmul fast float %8199, %8208
  %8212 = fmul fast float %8199, %8209
  %8213 = fmul fast float %8199, %8210
  %8214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8215 = extractvalue %dx.types.CBufRet.f32 %8214, 0
  %8216 = extractvalue %dx.types.CBufRet.f32 %8214, 1
  %8217 = extractvalue %dx.types.CBufRet.f32 %8214, 2
  %8218 = fadd fast float %8211, %8215
  %8219 = fadd fast float %8218, %8204
  %8220 = fadd fast float %8212, %8216
  %8221 = fadd fast float %8220, %8205
  %8222 = fadd fast float %8213, %8217
  %8223 = fadd fast float %8222, %8206
  %8224 = fmul fast float %8219, %174
  %8225 = fmul fast float %8221, %174
  %8226 = fmul fast float %8223, %174
  br label %8227

; <label>:8227                                    ; preds = %8169, %7935
  %8228 = phi float [ %8224, %8169 ], [ %152, %7935 ]
  %8229 = phi float [ %8225, %8169 ], [ %153, %7935 ]
  %8230 = phi float [ %8226, %8169 ], [ %154, %7935 ]
  %8231 = phi float [ %174, %8169 ], [ %85, %7935 ]
  %8232 = phi float [ %8190, %8169 ], [ %7960, %7935 ]
  %8233 = phi float [ %8191, %8169 ], [ %7961, %7935 ]
  %8234 = phi float [ %8192, %8169 ], [ %7962, %7935 ]
  %8235 = phi float [ %8193, %8169 ], [ %7936, %7935 ]
  %8236 = phi float [ %8194, %8169 ], [ %7937, %7935 ]
  %8237 = phi float [ %8195, %8169 ], [ %7938, %7935 ]
  %8238 = phi float [ %8170, %8169 ], [ 1.000000e+00, %7935 ]
  br i1 %7969, label %9393, label %8239

; <label>:8239                                    ; preds = %8227
  %8240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8241 = extractvalue %dx.types.CBufRet.f32 %8240, 0
  %8242 = extractvalue %dx.types.CBufRet.f32 %8240, 1
  %8243 = extractvalue %dx.types.CBufRet.f32 %8240, 2
  %8244 = extractvalue %dx.types.CBufRet.f32 %8240, 3
  %8245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8245, 0
  %8247 = extractvalue %dx.types.CBufRet.f32 %8245, 1
  %8248 = extractvalue %dx.types.CBufRet.f32 %8245, 2
  %8249 = extractvalue %dx.types.CBufRet.f32 %8245, 3
  %8250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8251 = extractvalue %dx.types.CBufRet.f32 %8250, 0
  %8252 = extractvalue %dx.types.CBufRet.f32 %8250, 1
  %8253 = extractvalue %dx.types.CBufRet.f32 %8250, 2
  %8254 = extractvalue %dx.types.CBufRet.f32 %8250, 3
  %8255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8256 = extractvalue %dx.types.CBufRet.f32 %8255, 0
  %8257 = extractvalue %dx.types.CBufRet.f32 %8255, 1
  %8258 = extractvalue %dx.types.CBufRet.f32 %8255, 2
  %8259 = extractvalue %dx.types.CBufRet.f32 %8255, 3
  %8260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8260, 3
  %8262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8263 = extractvalue %dx.types.CBufRet.f32 %8262, 3
  %8264 = extractvalue %dx.types.CBufRet.f32 %8262, 0
  %8265 = extractvalue %dx.types.CBufRet.f32 %8262, 1
  %8266 = extractvalue %dx.types.CBufRet.f32 %8262, 2
  %8267 = fcmp fast olt float %8266, -5.000000e-01
  %8268 = call float @dx.op.dot3.f32(i32 55, float %8228, float %8229, float %8230, float %8228, float %8229, float %8230)  ; Dot3(ax,ay,az,bx,by,bz)
  %8269 = call float @dx.op.unary.f32(i32 25, float %8268)  ; Rsqrt(value)
  %8270 = fmul fast float %8269, %8268
  %8271 = fmul fast float %8269, %8228
  %8272 = fmul fast float %8269, %8229
  %8273 = fmul fast float %8269, %8230
  %8274 = fadd fast float %8270, %8244
  %8275 = call float @dx.op.dot3.f32(i32 55, float %8271, float %8272, float %8273, float %8241, float %8242, float %8243)  ; Dot3(ax,ay,az,bx,by,bz)
  %8276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.i32 %8276, 1
  %8278 = and i32 %8277, 1
  %8279 = icmp ne i32 %8278, 0
  %8280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8281 = extractvalue %dx.types.CBufRet.f32 %8280, 2
  %8282 = fcmp fast ogt float %8281, 0.000000e+00
  %8283 = and i1 %8279, %8282
  br i1 %8283, label %8284, label %8690, !dx.controlflow.hints !119

; <label>:8284                                    ; preds = %8239
  %8285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8286 = extractvalue %dx.types.CBufRet.f32 %8285, 3
  %8287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8288 = extractvalue %dx.types.CBufRet.f32 %8287, 2
  %8289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8290 = extractvalue %dx.types.CBufRet.f32 %8289, 2
  %8291 = fsub fast float %8288, %8290
  %8292 = and i32 %8277, 2
  %8293 = extractvalue %dx.types.CBufRet.i32 %8276, 0
  %8294 = call i32 @dx.op.binary.i32(i32 40, i32 %8293, i32 3)  ; UMin(a,b)
  %8295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8296 = extractvalue %dx.types.CBufRet.f32 %8295, 0
  %8297 = extractvalue %dx.types.CBufRet.f32 %8295, 1
  %8298 = extractvalue %dx.types.CBufRet.f32 %8289, 0
  %8299 = extractvalue %dx.types.CBufRet.f32 %8289, 1
  %8300 = fsub fast float %8296, %8298
  %8301 = fsub fast float %8297, %8299
  %8302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8303 = extractvalue %dx.types.CBufRet.f32 %8302, 0
  %8304 = fcmp fast ogt float %8303, 0.000000e+00
  %8305 = fsub fast float -0.000000e+00, %8300
  %8306 = fsub fast float -0.000000e+00, %8301
  %8307 = call float @dx.op.dot2.f32(i32 54, float %8271, float %8272, float %8271, float %8272)  ; Dot2(ax,ay,bx,by)
  %8308 = call float @dx.op.dot2.f32(i32 54, float %8271, float %8272, float %8305, float %8306)  ; Dot2(ax,ay,bx,by)
  %8309 = fmul fast float %8308, 2.000000e+00
  %8310 = call float @dx.op.dot2.f32(i32 54, float %8305, float %8306, float %8305, float %8306)  ; Dot2(ax,ay,bx,by)
  %8311 = fmul fast float %8303, %8303
  %8312 = fsub fast float %8310, %8311
  %8313 = fmul fast float %8309, %8309
  %8314 = fmul fast float %8307, 4.000000e+00
  %8315 = fmul fast float %8314, %8312
  %8316 = fsub fast float %8313, %8315
  %8317 = fcmp fast ogt float %8316, 0.000000e+00
  br i1 %8317, label %8318, label %8333

; <label>:8318                                    ; preds = %8284
  %8319 = fcmp fast ogt float %8309, 0.000000e+00
  %8320 = call float @dx.op.unary.f32(i32 24, float %8316)  ; Sqrt(value)
  %8321 = fsub fast float -0.000000e+00, %8320
  %8322 = select i1 %8319, float %8320, float %8321
  %8323 = fadd fast float %8322, %8309
  %8324 = fmul float %8323, -5.000000e-01
  %8325 = fdiv fast float %8324, %8307
  %8326 = call float @dx.op.binary.f32(i32 35, float %8325, float 0.000000e+00)  ; FMax(a,b)
  %8327 = call float @dx.op.binary.f32(i32 36, float %8270, float %8326)  ; FMin(a,b)
  %8328 = fdiv fast float %8312, %8324
  %8329 = call float @dx.op.binary.f32(i32 35, float %8328, float 0.000000e+00)  ; FMax(a,b)
  %8330 = call float @dx.op.binary.f32(i32 36, float %8270, float %8329)  ; FMin(a,b)
  %8331 = call float @dx.op.binary.f32(i32 36, float %8327, float %8330)  ; FMin(a,b)
  %8332 = call float @dx.op.binary.f32(i32 35, float %8327, float %8330)  ; FMax(a,b)
  br label %8333

; <label>:8333                                    ; preds = %8318, %8284
  %8334 = phi float [ %8332, %8318 ], [ -1.000000e+00, %8284 ]
  %8335 = phi float [ %8331, %8318 ], [ -1.000000e+00, %8284 ]
  %8336 = phi i1 [ true, %8318 ], [ false, %8284 ]
  %8337 = and i1 %8304, %8336
  br i1 %8337, label %8338, label %8340

; <label>:8338                                    ; preds = %8333
  %8339 = fcmp fast oeq float %8335, %8334
  br i1 %8339, label %8643, label %8341

; <label>:8340                                    ; preds = %8333
  br i1 %8304, label %8643, label %8341

; <label>:8341                                    ; preds = %8340, %8338
  %8342 = phi float [ %8270, %8340 ], [ %8334, %8338 ]
  %8343 = phi float [ 0.000000e+00, %8340 ], [ %8335, %8338 ]
  %8344 = icmp ne i32 %8292, 0
  %8345 = fmul fast float %8342, %8273
  %8346 = fadd fast float %8345, %8286
  %8347 = fmul fast float %8346, %8342
  %8348 = select i1 %8344, float 0.000000e+00, float %8347
  %8349 = fcmp fast oeq float %8273, 0.000000e+00
  %8350 = fdiv fast float %8291, %8273
  %8351 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8350)  ; FMax(a,b)
  %8352 = select i1 %8349, float %8342, float %8351
  %8353 = call float @dx.op.binary.f32(i32 36, float %8342, float %8352)  ; FMin(a,b)
  %8354 = fcmp fast ogt float %8273, 0.000000e+00
  %8355 = fcmp fast olt float %8291, 0.000000e+00
  br i1 %8354, label %8356, label %8413

; <label>:8356                                    ; preds = %8341
  %8357 = icmp eq i32 %8292, 0
  br i1 %8355, label %8358, label %8402

; <label>:8358                                    ; preds = %8356
  %8359 = select i1 %8357, float %8342, float 0.000000e+00
  %8360 = fsub fast float -0.000000e+00, %8359
  %8361 = call float @dx.op.unary.f32(i32 6, float %8360)  ; FAbs(value)
  %8362 = fmul fast float %8359, %8273
  %8363 = fadd fast float %8362, %8286
  %8364 = fmul fast float %8361, %8363
  %8365 = fsub fast float %8348, %8364
  %8366 = fsub fast float %8342, %8361
  %8367 = select i1 %8357, float %8366, float 0.000000e+00
  %8368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8369 = extractvalue %dx.types.CBufRet.f32 %8368, 0
  %8370 = extractvalue %dx.types.CBufRet.f32 %8368, 1
  %8371 = extractvalue %dx.types.CBufRet.f32 %8368, 2
  %8372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8373 = extractvalue %dx.types.CBufRet.f32 %8372, 0
  %8374 = extractvalue %dx.types.CBufRet.f32 %8372, 1
  %8375 = extractvalue %dx.types.CBufRet.f32 %8372, 2
  %8376 = extractvalue %dx.types.CBufRet.f32 %8372, 3
  %8377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8378 = extractvalue %dx.types.CBufRet.f32 %8377, 3
  %8379 = call float @dx.op.binary.f32(i32 36, float %8365, float %8378)  ; FMin(a,b)
  %8380 = fmul fast float %8376, %8367
  %8381 = call float @dx.op.unary.f32(i32 7, float %8380)  ; Saturate(value)
  %8382 = fsub fast float %8373, %8369
  %8383 = fsub fast float %8374, %8370
  %8384 = fsub fast float %8375, %8371
  %8385 = fmul fast float %8381, %8382
  %8386 = fmul fast float %8381, %8383
  %8387 = fmul fast float %8381, %8384
  %8388 = fadd fast float %8385, %8369
  %8389 = fadd fast float %8386, %8370
  %8390 = fadd fast float %8387, %8371
  %8391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8392 = extractvalue %dx.types.CBufRet.f32 %8391, 0
  %8393 = extractvalue %dx.types.CBufRet.f32 %8391, 1
  %8394 = fadd fast float %8393, %8392
  %8395 = call float @dx.op.unary.f32(i32 7, float %8394)  ; Saturate(value)
  %8396 = extractvalue %dx.types.CBufRet.f32 %8391, 2
  %8397 = extractvalue %dx.types.CBufRet.f32 %8391, 3
  %8398 = fadd fast float %8397, %8396
  %8399 = call float @dx.op.unary.f32(i32 7, float %8398)  ; Saturate(value)
  %8400 = fmul fast float %8395, %8379
  %8401 = fmul fast float %8400, %8399
  br label %8643

; <label>:8402                                    ; preds = %8356
  br i1 %8357, label %8403, label %8424

; <label>:8403                                    ; preds = %8402
  %8404 = call float @dx.op.binary.f32(i32 36, float %8353, float %8343)  ; FMin(a,b)
  %8405 = fsub fast float %8353, %8404
  %8406 = fsub fast float %8405, %8342
  %8407 = call float @dx.op.unary.f32(i32 6, float %8406)  ; FAbs(value)
  %8408 = fadd fast float %8405, %8342
  %8409 = fmul fast float %8408, %8273
  %8410 = fadd fast float %8409, %8286
  %8411 = fmul fast float %8410, %8407
  %8412 = fsub fast float %8348, %8411
  br label %8424

; <label>:8413                                    ; preds = %8341
  br i1 %8355, label %8414, label %8424

; <label>:8414                                    ; preds = %8413
  %8415 = call float @dx.op.binary.f32(i32 35, float %8343, float %8353)  ; FMax(a,b)
  %8416 = icmp eq i32 %8292, 0
  %8417 = select i1 %8416, float %8353, float 0.000000e+00
  %8418 = fsub fast float -0.000000e+00, %8417
  %8419 = call float @dx.op.unary.f32(i32 6, float %8418)  ; FAbs(value)
  %8420 = fmul fast float %8417, %8273
  %8421 = fadd fast float %8420, %8286
  %8422 = fmul fast float %8419, %8421
  %8423 = fsub fast float %8348, %8422
  br label %8424

; <label>:8424                                    ; preds = %8414, %8413, %8403, %8402
  %8425 = phi float [ %8343, %8402 ], [ %8343, %8403 ], [ %8415, %8414 ], [ %8343, %8413 ]
  %8426 = phi float [ 0.000000e+00, %8402 ], [ %8407, %8403 ], [ %8419, %8414 ], [ 0.000000e+00, %8413 ]
  %8427 = phi float [ %8348, %8402 ], [ %8412, %8403 ], [ %8423, %8414 ], [ %8348, %8413 ]
  %8428 = phi float [ %8353, %8402 ], [ %8353, %8403 ], [ %8342, %8414 ], [ %8342, %8413 ]
  %8429 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %8429, align 4, !tbaa !109, !noalias !120
  %8430 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %8430, align 4, !tbaa !109, !noalias !120
  %8431 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %8431, align 4, !tbaa !109, !noalias !120
  %8432 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %8432, align 4, !tbaa !109, !noalias !120
  %8433 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %8433, align 4, !tbaa !109, !noalias !120
  %8434 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %8434, align 4, !tbaa !109, !noalias !120
  %8435 = icmp sgt i32 %8294, 0
  br i1 %8435, label %8436, label %8497

; <label>:8436                                    ; preds = %8424
  br label %8437

; <label>:8437                                    ; preds = %8486, %8436
  %8438 = phi i32 [ %8487, %8486 ], [ 0, %8436 ]
  %8439 = phi i32 [ %8488, %8486 ], [ 0, %8436 ]
  %8440 = add nuw i32 %8439, 171
  %8441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %8440)  ; CBufferLoadLegacy(handle,regIndex)
  %8442 = extractvalue %dx.types.CBufRet.f32 %8441, 0
  %8443 = extractvalue %dx.types.CBufRet.f32 %8441, 1
  %8444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8445 = extractvalue %dx.types.CBufRet.f32 %8444, 0
  %8446 = extractvalue %dx.types.CBufRet.f32 %8444, 1
  %8447 = fsub fast float %8442, %8445
  %8448 = fsub fast float %8443, %8446
  %8449 = extractvalue %dx.types.CBufRet.f32 %8441, 2
  %8450 = fsub fast float -0.000000e+00, %8447
  %8451 = fsub fast float -0.000000e+00, %8448
  %8452 = call float @dx.op.dot2.f32(i32 54, float %8271, float %8272, float %8450, float %8451)  ; Dot2(ax,ay,bx,by)
  %8453 = fmul fast float %8452, 2.000000e+00
  %8454 = call float @dx.op.dot2.f32(i32 54, float %8450, float %8451, float %8450, float %8451)  ; Dot2(ax,ay,bx,by)
  %8455 = fmul fast float %8449, %8449
  %8456 = fsub fast float %8454, %8455
  %8457 = fmul fast float %8453, %8453
  %8458 = fmul fast float %8314, %8456
  %8459 = fsub fast float %8457, %8458
  %8460 = fcmp fast ogt float %8459, 0.000000e+00
  br i1 %8460, label %8461, label %8476

; <label>:8461                                    ; preds = %8437
  %8462 = fcmp fast ogt float %8453, 0.000000e+00
  %8463 = call float @dx.op.unary.f32(i32 24, float %8459)  ; Sqrt(value)
  %8464 = fsub fast float -0.000000e+00, %8463
  %8465 = select i1 %8462, float %8463, float %8464
  %8466 = fadd fast float %8465, %8453
  %8467 = fmul float %8466, -5.000000e-01
  %8468 = fdiv fast float %8467, %8307
  %8469 = call float @dx.op.binary.f32(i32 35, float %8468, float 0.000000e+00)  ; FMax(a,b)
  %8470 = call float @dx.op.binary.f32(i32 36, float %8342, float %8469)  ; FMin(a,b)
  %8471 = fdiv fast float %8456, %8467
  %8472 = call float @dx.op.binary.f32(i32 35, float %8471, float 0.000000e+00)  ; FMax(a,b)
  %8473 = call float @dx.op.binary.f32(i32 36, float %8342, float %8472)  ; FMin(a,b)
  %8474 = call float @dx.op.binary.f32(i32 36, float %8470, float %8473)  ; FMin(a,b)
  %8475 = call float @dx.op.binary.f32(i32 35, float %8470, float %8473)  ; FMax(a,b)
  br label %8476

; <label>:8476                                    ; preds = %8461, %8437
  %8477 = phi float [ %8475, %8461 ], [ -1.000000e+00, %8437 ]
  %8478 = phi float [ %8474, %8461 ], [ -1.000000e+00, %8437 ]
  %8479 = phi i1 [ true, %8461 ], [ false, %8437 ]
  br i1 %8479, label %8480, label %8486

; <label>:8480                                    ; preds = %8476
  %8481 = call float @dx.op.binary.f32(i32 35, float %8425, float %8478)  ; FMax(a,b)
  %8482 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8439
  store float %8481, float* %8482, align 4, !tbaa !109, !noalias !120
  %8483 = call float @dx.op.binary.f32(i32 35, float %8425, float %8477)  ; FMax(a,b)
  %8484 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8439
  store float %8483, float* %8484, align 4, !tbaa !109, !noalias !120
  %8485 = add nsw i32 %8438, 1
  br label %8486

; <label>:8486                                    ; preds = %8480, %8476
  %8487 = phi i32 [ %8485, %8480 ], [ %8438, %8476 ]
  %8488 = add nuw nsw i32 %8439, 1
  %8489 = icmp eq i32 %8488, %8294
  br i1 %8489, label %8490, label %8437

; <label>:8490                                    ; preds = %8486
  %8491 = load float, float* %8431, align 4, !tbaa !109, !alias.scope !136, !noalias !139
  %8492 = load float, float* %8430, align 4, !tbaa !109, !alias.scope !142, !noalias !143
  %8493 = load float, float* %8429, align 4, !tbaa !109, !alias.scope !144, !noalias !145
  %8494 = load float, float* %8434, align 4, !tbaa !109, !alias.scope !146, !noalias !149
  %8495 = load float, float* %8433, align 4, !tbaa !109, !alias.scope !152, !noalias !153
  %8496 = load float, float* %8432, align 4, !tbaa !109, !alias.scope !154, !noalias !155
  br label %8497

; <label>:8497                                    ; preds = %8490, %8424
  %8498 = phi float [ -1.000000e+00, %8424 ], [ %8496, %8490 ]
  %8499 = phi float [ -1.000000e+00, %8424 ], [ %8495, %8490 ]
  %8500 = phi float [ -1.000000e+00, %8424 ], [ %8494, %8490 ]
  %8501 = phi float [ -1.000000e+00, %8424 ], [ %8493, %8490 ]
  %8502 = phi float [ -1.000000e+00, %8424 ], [ %8492, %8490 ]
  %8503 = phi float [ -1.000000e+00, %8424 ], [ %8491, %8490 ]
  %8504 = phi i32 [ 0, %8424 ], [ %8487, %8490 ]
  %8505 = call float @dx.op.binary.f32(i32 36, float %8502, float %8503)  ; FMin(a,b)
  %8506 = call float @dx.op.binary.f32(i32 36, float %8501, float %8505)  ; FMin(a,b)
  %8507 = call float @dx.op.binary.f32(i32 35, float %8501, float %8502)  ; FMax(a,b)
  %8508 = call float @dx.op.binary.f32(i32 36, float %8507, float %8503)  ; FMin(a,b)
  %8509 = call float @dx.op.binary.f32(i32 36, float %8501, float %8502)  ; FMin(a,b)
  %8510 = call float @dx.op.binary.f32(i32 35, float %8509, float %8508)  ; FMax(a,b)
  %8511 = call float @dx.op.binary.f32(i32 35, float %8502, float %8503)  ; FMax(a,b)
  %8512 = call float @dx.op.binary.f32(i32 35, float %8501, float %8511)  ; FMax(a,b)
  store float %8506, float* %8429, align 4, !tbaa !109, !alias.scope !144, !noalias !145
  store float %8510, float* %8430, align 4, !tbaa !109, !alias.scope !142, !noalias !143
  store float %8512, float* %8431, align 4, !tbaa !109, !alias.scope !136, !noalias !139
  %8513 = call float @dx.op.binary.f32(i32 36, float %8499, float %8500)  ; FMin(a,b)
  %8514 = call float @dx.op.binary.f32(i32 36, float %8498, float %8513)  ; FMin(a,b)
  %8515 = call float @dx.op.binary.f32(i32 35, float %8498, float %8499)  ; FMax(a,b)
  %8516 = call float @dx.op.binary.f32(i32 36, float %8515, float %8500)  ; FMin(a,b)
  %8517 = call float @dx.op.binary.f32(i32 36, float %8498, float %8499)  ; FMin(a,b)
  %8518 = call float @dx.op.binary.f32(i32 35, float %8517, float %8516)  ; FMax(a,b)
  %8519 = call float @dx.op.binary.f32(i32 35, float %8499, float %8500)  ; FMax(a,b)
  %8520 = call float @dx.op.binary.f32(i32 35, float %8498, float %8519)  ; FMax(a,b)
  store float %8514, float* %8432, align 4, !tbaa !109, !alias.scope !154, !noalias !155
  store float %8518, float* %8433, align 4, !tbaa !109, !alias.scope !152, !noalias !153
  store float %8520, float* %8434, align 4, !tbaa !109, !alias.scope !146, !noalias !149
  %8521 = sub nsw i32 3, %8504
  %8522 = icmp sgt i32 %8521, 2
  br i1 %8522, label %8523, label %8561

; <label>:8523                                    ; preds = %8497
  %8524 = icmp eq i32 %8292, 0
  %8525 = fsub fast float %8342, %8426
  %8526 = select i1 %8524, float %8525, float %8426
  %8527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8528 = extractvalue %dx.types.CBufRet.f32 %8527, 0
  %8529 = extractvalue %dx.types.CBufRet.f32 %8527, 1
  %8530 = extractvalue %dx.types.CBufRet.f32 %8527, 2
  %8531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8532 = extractvalue %dx.types.CBufRet.f32 %8531, 0
  %8533 = extractvalue %dx.types.CBufRet.f32 %8531, 1
  %8534 = extractvalue %dx.types.CBufRet.f32 %8531, 2
  %8535 = extractvalue %dx.types.CBufRet.f32 %8531, 3
  %8536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8537 = extractvalue %dx.types.CBufRet.f32 %8536, 3
  %8538 = call float @dx.op.binary.f32(i32 36, float %8427, float %8537)  ; FMin(a,b)
  %8539 = fmul fast float %8535, %8526
  %8540 = call float @dx.op.unary.f32(i32 7, float %8539)  ; Saturate(value)
  %8541 = fsub fast float %8532, %8528
  %8542 = fsub fast float %8533, %8529
  %8543 = fsub fast float %8534, %8530
  %8544 = fmul fast float %8540, %8541
  %8545 = fmul fast float %8540, %8542
  %8546 = fmul fast float %8540, %8543
  %8547 = fadd fast float %8544, %8528
  %8548 = fadd fast float %8545, %8529
  %8549 = fadd fast float %8546, %8530
  %8550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8551 = extractvalue %dx.types.CBufRet.f32 %8550, 0
  %8552 = extractvalue %dx.types.CBufRet.f32 %8550, 1
  %8553 = fadd fast float %8552, %8551
  %8554 = call float @dx.op.unary.f32(i32 7, float %8553)  ; Saturate(value)
  %8555 = extractvalue %dx.types.CBufRet.f32 %8550, 2
  %8556 = extractvalue %dx.types.CBufRet.f32 %8550, 3
  %8557 = fadd fast float %8556, %8555
  %8558 = call float @dx.op.unary.f32(i32 7, float %8557)  ; Saturate(value)
  %8559 = fmul fast float %8554, %8538
  %8560 = fmul fast float %8559, %8558
  br label %8643

; <label>:8561                                    ; preds = %8497
  %8562 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8521
  %8563 = load float, float* %8562, align 4, !tbaa !109, !noalias !120
  %8564 = fcmp fast olt float %8563, %8428
  %8565 = icmp sgt i32 %8504, 0
  %8566 = and i1 %8565, %8564
  br i1 %8566, label %8567, label %8604

; <label>:8567                                    ; preds = %8561
  br label %8568

; <label>:8568                                    ; preds = %8597, %8567
  %8569 = phi float [ %8598, %8597 ], [ %8426, %8567 ]
  %8570 = phi float [ %8599, %8597 ], [ %8427, %8567 ]
  %8571 = phi float [ %8579, %8597 ], [ %8563, %8567 ]
  %8572 = phi i32 [ %8576, %8597 ], [ %8521, %8567 ]
  %8573 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8572
  %8574 = load float, float* %8573, align 4, !tbaa !109, !noalias !120
  %8575 = icmp slt i32 %8572, 2
  %8576 = add nsw i32 %8572, 1
  %8577 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8576
  %8578 = load float, float* %8577, align 4, !tbaa !109, !noalias !120
  %8579 = select i1 %8575, float %8578, float %8342
  %8580 = call float @dx.op.binary.f32(i32 36, float %8579, float %8574)  ; FMin(a,b)
  %8581 = call float @dx.op.binary.f32(i32 36, float %8428, float %8580)  ; FMin(a,b)
  %8582 = icmp eq i32 %8292, 0
  %8583 = fadd fast float %8581, %8571
  %8584 = fmul fast float %8583, %8273
  %8585 = fadd fast float %8584, %8286
  br i1 %8582, label %8591, label %8586

; <label>:8586                                    ; preds = %8568
  %8587 = fsub fast float %8581, %8571
  %8588 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8587)  ; FMax(a,b)
  %8589 = fmul fast float %8588, %8585
  %8590 = fadd fast float %8589, %8570
  br label %8597

; <label>:8591                                    ; preds = %8568
  %8592 = fsub fast float %8571, %8581
  %8593 = call float @dx.op.unary.f32(i32 6, float %8592)  ; FAbs(value)
  %8594 = fadd fast float %8593, %8569
  %8595 = fmul fast float %8593, %8585
  %8596 = fsub fast float %8570, %8595
  br label %8597

; <label>:8597                                    ; preds = %8591, %8586
  %8598 = phi float [ %8588, %8586 ], [ %8594, %8591 ]
  %8599 = phi float [ %8590, %8586 ], [ %8596, %8591 ]
  %8600 = fcmp fast olt float %8579, %8428
  %8601 = icmp slt i32 %8576, 3
  %8602 = and i1 %8601, %8600
  br i1 %8602, label %8568, label %8603

; <label>:8603                                    ; preds = %8597
  br label %8604

; <label>:8604                                    ; preds = %8603, %8561
  %8605 = phi float [ %8426, %8561 ], [ %8598, %8603 ]
  %8606 = phi float [ %8427, %8561 ], [ %8599, %8603 ]
  %8607 = fsub fast float %8342, %8605
  %8608 = select i1 %8344, float %8605, float %8607
  %8609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8610 = extractvalue %dx.types.CBufRet.f32 %8609, 0
  %8611 = extractvalue %dx.types.CBufRet.f32 %8609, 1
  %8612 = extractvalue %dx.types.CBufRet.f32 %8609, 2
  %8613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8614 = extractvalue %dx.types.CBufRet.f32 %8613, 0
  %8615 = extractvalue %dx.types.CBufRet.f32 %8613, 1
  %8616 = extractvalue %dx.types.CBufRet.f32 %8613, 2
  %8617 = extractvalue %dx.types.CBufRet.f32 %8613, 3
  %8618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8619 = extractvalue %dx.types.CBufRet.f32 %8618, 3
  %8620 = call float @dx.op.binary.f32(i32 36, float %8606, float %8619)  ; FMin(a,b)
  %8621 = fmul fast float %8617, %8608
  %8622 = call float @dx.op.unary.f32(i32 7, float %8621)  ; Saturate(value)
  %8623 = fsub fast float %8614, %8610
  %8624 = fsub fast float %8615, %8611
  %8625 = fsub fast float %8616, %8612
  %8626 = fmul fast float %8622, %8623
  %8627 = fmul fast float %8622, %8624
  %8628 = fmul fast float %8622, %8625
  %8629 = fadd fast float %8626, %8610
  %8630 = fadd fast float %8627, %8611
  %8631 = fadd fast float %8628, %8612
  %8632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8633 = extractvalue %dx.types.CBufRet.f32 %8632, 0
  %8634 = extractvalue %dx.types.CBufRet.f32 %8632, 1
  %8635 = fadd fast float %8634, %8633
  %8636 = call float @dx.op.unary.f32(i32 7, float %8635)  ; Saturate(value)
  %8637 = extractvalue %dx.types.CBufRet.f32 %8632, 2
  %8638 = extractvalue %dx.types.CBufRet.f32 %8632, 3
  %8639 = fadd fast float %8638, %8637
  %8640 = call float @dx.op.unary.f32(i32 7, float %8639)  ; Saturate(value)
  %8641 = fmul fast float %8636, %8620
  %8642 = fmul fast float %8641, %8640
  br label %8643

; <label>:8643                                    ; preds = %8604, %8523, %8358, %8340, %8338
  %8644 = phi float [ %8367, %8358 ], [ %8526, %8523 ], [ %8608, %8604 ], [ 0.000000e+00, %8338 ], [ 0.000000e+00, %8340 ]
  %8645 = phi float [ %8401, %8358 ], [ %8560, %8523 ], [ %8642, %8604 ], [ 0.000000e+00, %8338 ], [ 0.000000e+00, %8340 ]
  %8646 = phi float [ %8388, %8358 ], [ %8547, %8523 ], [ %8629, %8604 ], [ 0.000000e+00, %8338 ], [ 0.000000e+00, %8340 ]
  %8647 = phi float [ %8389, %8358 ], [ %8548, %8523 ], [ %8630, %8604 ], [ 0.000000e+00, %8338 ], [ 0.000000e+00, %8340 ]
  %8648 = phi float [ %8390, %8358 ], [ %8549, %8523 ], [ %8631, %8604 ], [ 0.000000e+00, %8338 ], [ 0.000000e+00, %8340 ]
  %8649 = fmul fast float %8281, %8645
  %8650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8651 = extractvalue %dx.types.CBufRet.f32 %8650, 2
  %8652 = fsub fast float %8288, %8651
  %8653 = fcmp fast olt float %8649, -2.000000e+01
  %8654 = call float @dx.op.unary.f32(i32 21, float %8649)  ; Exp(value)
  %8655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8656 = extractvalue %dx.types.CBufRet.f32 %8655, 2
  %8657 = extractvalue %dx.types.CBufRet.f32 %8655, 3
  %8658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8659 = extractvalue %dx.types.CBufRet.f32 %8658, 2
  %8660 = fmul fast float %8657, %8652
  %8661 = call float @dx.op.unary.f32(i32 7, float %8660)  ; Saturate(value)
  %8662 = fsub fast float 1.000000e+00, %8661
  %8663 = fmul fast float %8273, 5.000000e-01
  %8664 = fadd fast float %8663, 5.000000e-01
  %8665 = call float @dx.op.unary.f32(i32 7, float %8664)  ; Saturate(value)
  %8666 = fsub fast float 1.000000e+00, %8665
  %8667 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8662)  ; FMax(a,b)
  %8668 = fdiv fast float %8666, %8667
  %8669 = fsub fast float %8652, %8230
  %8670 = call float @dx.op.unary.f32(i32 6, float %8669)  ; FAbs(value)
  %8671 = fmul fast float %8670, %8656
  %8672 = call float @dx.op.unary.f32(i32 7, float %8668)  ; Saturate(value)
  %8673 = fsub fast float 1.000000e+00, %8671
  %8674 = fmul fast float %8673, %8672
  %8675 = fadd fast float %8674, %8671
  %8676 = fmul fast float %8659, %8652
  %8677 = call float @dx.op.unary.f32(i32 7, float %8676)  ; Saturate(value)
  %8678 = fsub fast float 1.000000e+00, %8675
  %8679 = fmul fast float %8678, %8677
  %8680 = fadd fast float %8679, %8675
  %8681 = call float @dx.op.unary.f32(i32 7, float %8680)  ; Saturate(value)
  %8682 = fadd fast float %8654, -1.000000e+00
  %8683 = select i1 %8653, float -1.000000e+00, float %8682
  %8684 = fmul fast float %8681, %8683
  %8685 = fadd fast float %8684, 1.000000e+00
  %8686 = fsub fast float -0.000000e+00, %8684
  %8687 = fmul fast float %8646, %8686
  %8688 = fmul fast float %8647, %8686
  %8689 = fmul fast float %8648, %8686
  br label %8690

; <label>:8690                                    ; preds = %8643, %8239
  %8691 = phi float [ %8644, %8643 ], [ 0.000000e+00, %8239 ]
  %8692 = phi float [ %8685, %8643 ], [ 1.000000e+00, %8239 ]
  %8693 = phi float [ %8687, %8643 ], [ 0.000000e+00, %8239 ]
  %8694 = phi float [ %8688, %8643 ], [ 0.000000e+00, %8239 ]
  %8695 = phi float [ %8689, %8643 ], [ 0.000000e+00, %8239 ]
  %8696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8697 = extractvalue %dx.types.CBufRet.f32 %8696, 1
  %8698 = fsub fast float 1.000000e+00, %8692
  %8699 = fmul fast float %8698, %8274
  %8700 = fmul fast float %8699, %8697
  %8701 = fsub fast float %8274, %8700
  br i1 %8267, label %8702, label %8731, !dx.controlflow.hints !156

; <label>:8702                                    ; preds = %8690
  %8703 = fmul fast float %8275, %8264
  %8704 = fadd fast float %8703, %8265
  %8705 = call float @dx.op.unary.f32(i32 7, float %8704)  ; Saturate(value)
  %8706 = fmul fast float %8246, %8701
  %8707 = fsub fast float -0.000000e+00, %8706
  %8708 = fmul fast float %8247, %8701
  %8709 = fsub fast float -0.000000e+00, %8708
  %8710 = call float @dx.op.unary.f32(i32 21, float %8707)  ; Exp(value)
  %8711 = call float @dx.op.unary.f32(i32 21, float %8709)  ; Exp(value)
  %8712 = call float @dx.op.binary.f32(i32 35, float %8254, float %8710)  ; FMax(a,b)
  %8713 = call float @dx.op.binary.f32(i32 35, float %8254, float %8711)  ; FMax(a,b)
  %8714 = fsub fast float %8713, %8712
  %8715 = fmul fast float %8714, %8705
  %8716 = fadd fast float %8715, %8712
  %8717 = call float @dx.op.unary.f32(i32 7, float %8716)  ; Saturate(value)
  %8718 = fsub fast float %8251, %8256
  %8719 = fsub fast float %8252, %8257
  %8720 = fsub fast float %8253, %8258
  %8721 = fmul fast float %8705, %8718
  %8722 = fmul fast float %8705, %8719
  %8723 = fmul fast float %8705, %8720
  %8724 = fadd fast float %8721, %8256
  %8725 = fadd fast float %8722, %8257
  %8726 = fadd fast float %8723, %8258
  %8727 = fsub fast float 1.000000e+00, %8717
  %8728 = fmul fast float %8727, %8724
  %8729 = fmul fast float %8727, %8725
  %8730 = fmul fast float %8727, %8726
  br label %8790

; <label>:8731                                    ; preds = %8690
  %8732 = fmul fast float %8701, %8263
  %8733 = call float @dx.op.unary.f32(i32 7, float %8732)  ; Saturate(value)
  %8734 = fsub fast float 2.000000e+00, %8733
  %8735 = fmul fast float %8733, 9.921875e-01
  %8736 = fmul fast float %8735, %8734
  %8737 = fadd fast float %8736, 3.906250e-03
  %8738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %8737, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8739 = extractvalue %dx.types.ResRet.f32 %8738, 0
  %8740 = fsub fast float %8733, %8739
  %8741 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8740)  ; FMax(a,b)
  %8742 = fmul fast float %8249, %8230
  %8743 = call float @dx.op.unary.f32(i32 6, float %8742)  ; FAbs(value)
  %8744 = fcmp fast ogt float %8743, 0x3EB0C6F7A0000000
  br i1 %8744, label %8745, label %8751, !dx.controlflow.hints !157

; <label>:8745                                    ; preds = %8731
  %8746 = fmul fast float %8742, 0xBFF7154760000000
  %8747 = call float @dx.op.unary.f32(i32 21, float %8746)  ; Exp(value)
  %8748 = fsub fast float 1.000000e+00, %8747
  %8749 = fdiv fast float %8748, %8742
  %8750 = fmul fast float %8749, %8259
  br label %8751

; <label>:8751                                    ; preds = %8745, %8731
  %8752 = phi float [ %8750, %8745 ], [ %8259, %8731 ]
  %8753 = fadd fast float %8752, %8261
  %8754 = fmul fast float %8753, %8741
  %8755 = fmul fast float %8246, %8754
  %8756 = fsub fast float -0.000000e+00, %8755
  %8757 = fmul fast float %8247, %8754
  %8758 = fsub fast float -0.000000e+00, %8757
  %8759 = fmul fast float %8248, %8754
  %8760 = fsub fast float -0.000000e+00, %8759
  %8761 = call float @dx.op.unary.f32(i32 21, float %8756)  ; Exp(value)
  %8762 = call float @dx.op.unary.f32(i32 21, float %8758)  ; Exp(value)
  %8763 = call float @dx.op.unary.f32(i32 21, float %8760)  ; Exp(value)
  %8764 = fmul fast float %8275, %8275
  %8765 = fadd fast float %8764, 1.000000e+00
  %8766 = fmul fast float %8765, 0x3FAE8EC8A0000000
  %8767 = fmul fast float %8766, %8256
  %8768 = fmul fast float %8766, %8257
  %8769 = fmul fast float %8766, %8258
  %8770 = fmul fast float %8275, %8254
  %8771 = fsub fast float 1.000000e+00, %8770
  %8772 = fmul fast float %8254, %8254
  %8773 = fsub fast float 1.000000e+00, %8772
  %8774 = fmul fast float %8773, 0x3FB45F3060000000
  %8775 = fmul fast float %8771, %8771
  %8776 = fdiv fast float 1.000000e+00, %8775
  %8777 = fmul fast float %8774, %8776
  %8778 = fmul fast float %8777, %8251
  %8779 = fmul fast float %8777, %8252
  %8780 = fmul fast float %8777, %8253
  %8781 = fadd fast float %8778, %8767
  %8782 = fadd fast float %8779, %8768
  %8783 = fadd fast float %8780, %8769
  %8784 = fsub fast float 1.000000e+00, %8761
  %8785 = fsub fast float 1.000000e+00, %8762
  %8786 = fsub fast float 1.000000e+00, %8763
  %8787 = fmul fast float %8781, %8784
  %8788 = fmul fast float %8782, %8785
  %8789 = fmul fast float %8783, %8786
  br label %8790

; <label>:8790                                    ; preds = %8751, %8702
  %8791 = phi float [ %8728, %8702 ], [ %8787, %8751 ]
  %8792 = phi float [ %8729, %8702 ], [ %8788, %8751 ]
  %8793 = phi float [ %8730, %8702 ], [ %8789, %8751 ]
  %8794 = phi float [ %8717, %8702 ], [ %8761, %8751 ]
  %8795 = phi float [ %8717, %8702 ], [ %8762, %8751 ]
  %8796 = phi float [ %8717, %8702 ], [ %8763, %8751 ]
  br i1 %8283, label %8797, label %8995, !dx.controlflow.hints !158

; <label>:8797                                    ; preds = %8790
  %8798 = extractvalue %dx.types.CBufRet.f32 %8696, 0
  %8799 = fmul fast float %8798, %8698
  %8800 = fsub fast float %8693, %8791
  %8801 = fsub fast float %8694, %8792
  %8802 = fsub fast float %8695, %8793
  %8803 = fmul fast float %8799, %8800
  %8804 = fmul fast float %8799, %8801
  %8805 = fmul fast float %8799, %8802
  %8806 = fadd fast float %8803, %8791
  %8807 = fadd fast float %8804, %8792
  %8808 = fadd fast float %8805, %8793
  %8809 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8794)  ; FMax(a,b)
  %8810 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8795)  ; FMax(a,b)
  %8811 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8796)  ; FMax(a,b)
  %8812 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8692)  ; FMax(a,b)
  %8813 = call float @dx.op.binary.f32(i32 35, float %8691, float %8701)  ; FMax(a,b)
  %8814 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8813)  ; FMax(a,b)
  %8815 = fdiv fast float %8691, %8814
  %8816 = call float @dx.op.unary.f32(i32 7, float %8815)  ; Saturate(value)
  %8817 = fdiv fast float %8701, %8814
  %8818 = call float @dx.op.unary.f32(i32 7, float %8817)  ; Saturate(value)
  %8819 = fcmp fast une float %8812, 1.000000e+00
  br i1 %8819, label %8820, label %8833, !dx.controlflow.hints !159

; <label>:8820                                    ; preds = %8797
  %8821 = call float @dx.op.unary.f32(i32 23, float %8812)  ; Log(value)
  %8822 = fmul fast float %8821, 0x3FE62E4300000000
  %8823 = fmul fast float %8693, %8822
  %8824 = fsub fast float -0.000000e+00, %8823
  %8825 = fmul fast float %8694, %8822
  %8826 = fsub fast float -0.000000e+00, %8825
  %8827 = fmul fast float %8695, %8822
  %8828 = fsub fast float -0.000000e+00, %8827
  %8829 = fsub fast float 1.000000e+00, %8812
  %8830 = fdiv fast float %8824, %8829
  %8831 = fdiv fast float %8826, %8829
  %8832 = fdiv fast float %8828, %8829
  br label %8833

; <label>:8833                                    ; preds = %8820, %8797
  %8834 = phi float [ %8830, %8820 ], [ %8693, %8797 ]
  %8835 = phi float [ %8831, %8820 ], [ %8694, %8797 ]
  %8836 = phi float [ %8832, %8820 ], [ %8695, %8797 ]
  %8837 = phi float [ %8822, %8820 ], [ 0.000000e+00, %8797 ]
  %8838 = fcmp fast une float %8809, 1.000000e+00
  br i1 %8838, label %8839, label %8846, !dx.controlflow.hints !160

; <label>:8839                                    ; preds = %8833
  %8840 = call float @dx.op.unary.f32(i32 23, float %8809)  ; Log(value)
  %8841 = fmul fast float %8840, 0x3FE62E4300000000
  %8842 = fmul fast float %8806, %8841
  %8843 = fsub fast float -0.000000e+00, %8842
  %8844 = fsub fast float 1.000000e+00, %8809
  %8845 = fdiv fast float %8843, %8844
  br label %8846

; <label>:8846                                    ; preds = %8839, %8833
  %8847 = phi float [ %8845, %8839 ], [ %8806, %8833 ]
  %8848 = phi float [ %8841, %8839 ], [ 0.000000e+00, %8833 ]
  %8849 = fcmp fast une float %8810, 1.000000e+00
  br i1 %8849, label %8850, label %8857, !dx.controlflow.hints !160

; <label>:8850                                    ; preds = %8846
  %8851 = call float @dx.op.unary.f32(i32 23, float %8810)  ; Log(value)
  %8852 = fmul fast float %8851, 0x3FE62E4300000000
  %8853 = fmul fast float %8807, %8852
  %8854 = fsub fast float -0.000000e+00, %8853
  %8855 = fsub fast float 1.000000e+00, %8810
  %8856 = fdiv fast float %8854, %8855
  br label %8857

; <label>:8857                                    ; preds = %8850, %8846
  %8858 = phi float [ %8856, %8850 ], [ %8807, %8846 ]
  %8859 = phi float [ %8852, %8850 ], [ 0.000000e+00, %8846 ]
  %8860 = fcmp fast une float %8811, 1.000000e+00
  br i1 %8860, label %8861, label %8868, !dx.controlflow.hints !160

; <label>:8861                                    ; preds = %8857
  %8862 = call float @dx.op.unary.f32(i32 23, float %8811)  ; Log(value)
  %8863 = fmul fast float %8862, 0x3FE62E4300000000
  %8864 = fmul fast float %8808, %8863
  %8865 = fsub fast float -0.000000e+00, %8864
  %8866 = fsub fast float 1.000000e+00, %8811
  %8867 = fdiv fast float %8865, %8866
  br label %8868

; <label>:8868                                    ; preds = %8861, %8857
  %8869 = phi float [ %8867, %8861 ], [ %8808, %8857 ]
  %8870 = phi float [ %8863, %8861 ], [ 0.000000e+00, %8857 ]
  %8871 = fmul fast float %8834, %8818
  %8872 = fmul fast float %8835, %8818
  %8873 = fmul fast float %8836, %8818
  %8874 = fmul fast float %8837, %8818
  %8875 = fmul fast float %8847, %8816
  %8876 = fmul fast float %8858, %8816
  %8877 = fmul fast float %8869, %8816
  %8878 = fmul fast float %8848, %8816
  %8879 = fmul fast float %8859, %8816
  %8880 = fmul fast float %8870, %8816
  %8881 = fadd fast float %8875, %8871
  %8882 = fadd fast float %8876, %8872
  %8883 = fadd fast float %8877, %8873
  %8884 = fadd fast float %8878, %8874
  %8885 = fadd fast float %8879, %8874
  %8886 = fadd fast float %8880, %8874
  %8887 = fcmp fast une float %8884, 0.000000e+00
  br i1 %8887, label %8888, label %8895, !dx.controlflow.hints !161

; <label>:8888                                    ; preds = %8868
  %8889 = fmul fast float %8884, 0x3FF7154760000000
  %8890 = call float @dx.op.unary.f32(i32 21, float %8889)  ; Exp(value)
  %8891 = fsub fast float 1.000000e+00, %8890
  %8892 = fmul fast float %8881, %8891
  %8893 = fsub fast float -0.000000e+00, %8892
  %8894 = fdiv fast float %8893, %8884
  br label %8895

; <label>:8895                                    ; preds = %8888, %8868
  %8896 = phi float [ %8890, %8888 ], [ 1.000000e+00, %8868 ]
  %8897 = phi float [ %8894, %8888 ], [ %8881, %8868 ]
  %8898 = fcmp fast une float %8885, 0.000000e+00
  br i1 %8898, label %8899, label %8906, !dx.controlflow.hints !161

; <label>:8899                                    ; preds = %8895
  %8900 = fmul fast float %8885, 0x3FF7154760000000
  %8901 = call float @dx.op.unary.f32(i32 21, float %8900)  ; Exp(value)
  %8902 = fsub fast float 1.000000e+00, %8901
  %8903 = fmul fast float %8882, %8902
  %8904 = fsub fast float -0.000000e+00, %8903
  %8905 = fdiv fast float %8904, %8885
  br label %8906

; <label>:8906                                    ; preds = %8899, %8895
  %8907 = phi float [ %8901, %8899 ], [ 1.000000e+00, %8895 ]
  %8908 = phi float [ %8905, %8899 ], [ %8882, %8895 ]
  %8909 = fcmp fast une float %8886, 0.000000e+00
  br i1 %8909, label %8910, label %8917, !dx.controlflow.hints !161

; <label>:8910                                    ; preds = %8906
  %8911 = fmul fast float %8886, 0x3FF7154760000000
  %8912 = call float @dx.op.unary.f32(i32 21, float %8911)  ; Exp(value)
  %8913 = fsub fast float 1.000000e+00, %8912
  %8914 = fmul fast float %8883, %8913
  %8915 = fsub fast float -0.000000e+00, %8914
  %8916 = fdiv fast float %8915, %8886
  br label %8917

; <label>:8917                                    ; preds = %8910, %8906
  %8918 = phi float [ %8912, %8910 ], [ 1.000000e+00, %8906 ]
  %8919 = phi float [ %8916, %8910 ], [ %8883, %8906 ]
  %8920 = fcmp fast ogt float %8816, %8818
  br i1 %8920, label %8921, label %8941

; <label>:8921                                    ; preds = %8917
  %8922 = fsub fast float 1.000000e+00, %8818
  %8923 = fmul fast float %8834, %8922
  %8924 = fmul fast float %8835, %8922
  %8925 = fmul fast float %8836, %8922
  %8926 = fmul fast float %8837, %8922
  %8927 = fcmp fast une float %8926, 0.000000e+00
  br i1 %8927, label %8928, label %8979, !dx.controlflow.hints !162

; <label>:8928                                    ; preds = %8921
  %8929 = fmul fast float %8926, 0x3FF7154760000000
  %8930 = call float @dx.op.unary.f32(i32 21, float %8929)  ; Exp(value)
  %8931 = fsub fast float 1.000000e+00, %8930
  %8932 = fmul fast float %8923, %8931
  %8933 = fsub fast float -0.000000e+00, %8932
  %8934 = fmul fast float %8924, %8931
  %8935 = fsub fast float -0.000000e+00, %8934
  %8936 = fmul fast float %8925, %8931
  %8937 = fsub fast float -0.000000e+00, %8936
  %8938 = fdiv fast float %8933, %8926
  %8939 = fdiv fast float %8935, %8926
  %8940 = fdiv fast float %8937, %8926
  br label %8979

; <label>:8941                                    ; preds = %8917
  %8942 = fsub fast float 1.000000e+00, %8816
  %8943 = fmul fast float %8847, %8942
  %8944 = fmul fast float %8858, %8942
  %8945 = fmul fast float %8869, %8942
  %8946 = fmul fast float %8848, %8942
  %8947 = fmul fast float %8859, %8942
  %8948 = fmul fast float %8870, %8942
  %8949 = fcmp fast une float %8946, 0.000000e+00
  br i1 %8949, label %8950, label %8957, !dx.controlflow.hints !161

; <label>:8950                                    ; preds = %8941
  %8951 = fmul fast float %8946, 0x3FF7154760000000
  %8952 = call float @dx.op.unary.f32(i32 21, float %8951)  ; Exp(value)
  %8953 = fsub fast float 1.000000e+00, %8952
  %8954 = fmul fast float %8943, %8953
  %8955 = fsub fast float -0.000000e+00, %8954
  %8956 = fdiv fast float %8955, %8946
  br label %8957

; <label>:8957                                    ; preds = %8950, %8941
  %8958 = phi float [ %8956, %8950 ], [ %8943, %8941 ]
  %8959 = phi float [ %8952, %8950 ], [ 1.000000e+00, %8941 ]
  %8960 = fcmp fast une float %8947, 0.000000e+00
  br i1 %8960, label %8961, label %8968, !dx.controlflow.hints !161

; <label>:8961                                    ; preds = %8957
  %8962 = fmul fast float %8947, 0x3FF7154760000000
  %8963 = call float @dx.op.unary.f32(i32 21, float %8962)  ; Exp(value)
  %8964 = fsub fast float 1.000000e+00, %8963
  %8965 = fmul fast float %8944, %8964
  %8966 = fsub fast float -0.000000e+00, %8965
  %8967 = fdiv fast float %8966, %8947
  br label %8968

; <label>:8968                                    ; preds = %8961, %8957
  %8969 = phi float [ %8967, %8961 ], [ %8944, %8957 ]
  %8970 = phi float [ %8963, %8961 ], [ 1.000000e+00, %8957 ]
  %8971 = fcmp fast une float %8948, 0.000000e+00
  br i1 %8971, label %8972, label %8979, !dx.controlflow.hints !161

; <label>:8972                                    ; preds = %8968
  %8973 = fmul fast float %8948, 0x3FF7154760000000
  %8974 = call float @dx.op.unary.f32(i32 21, float %8973)  ; Exp(value)
  %8975 = fsub fast float 1.000000e+00, %8974
  %8976 = fmul fast float %8945, %8975
  %8977 = fsub fast float -0.000000e+00, %8976
  %8978 = fdiv fast float %8977, %8948
  br label %8979

; <label>:8979                                    ; preds = %8972, %8968, %8928, %8921
  %8980 = phi float [ %8978, %8972 ], [ %8940, %8928 ], [ %8925, %8921 ], [ %8945, %8968 ]
  %8981 = phi float [ %8969, %8972 ], [ %8939, %8928 ], [ %8924, %8921 ], [ %8969, %8968 ]
  %8982 = phi float [ %8958, %8972 ], [ %8938, %8928 ], [ %8923, %8921 ], [ %8958, %8968 ]
  %8983 = phi float [ %8974, %8972 ], [ %8930, %8928 ], [ 1.000000e+00, %8921 ], [ 1.000000e+00, %8968 ]
  %8984 = phi float [ %8970, %8972 ], [ %8930, %8928 ], [ 1.000000e+00, %8921 ], [ %8970, %8968 ]
  %8985 = phi float [ %8959, %8972 ], [ %8930, %8928 ], [ 1.000000e+00, %8921 ], [ %8959, %8968 ]
  %8986 = fmul fast float %8985, %8897
  %8987 = fmul fast float %8984, %8908
  %8988 = fmul fast float %8983, %8919
  %8989 = fadd fast float %8986, %8982
  %8990 = fadd fast float %8987, %8981
  %8991 = fadd fast float %8988, %8980
  %8992 = fmul fast float %8985, %8896
  %8993 = fmul fast float %8984, %8907
  %8994 = fmul fast float %8983, %8918
  br label %8995

; <label>:8995                                    ; preds = %8979, %8790
  %8996 = phi float [ %8994, %8979 ], [ %8796, %8790 ]
  %8997 = phi float [ %8993, %8979 ], [ %8795, %8790 ]
  %8998 = phi float [ %8992, %8979 ], [ %8794, %8790 ]
  %8999 = phi float [ %8991, %8979 ], [ %8793, %8790 ]
  %9000 = phi float [ %8990, %8979 ], [ %8792, %8790 ]
  %9001 = phi float [ %8989, %8979 ], [ %8791, %8790 ]
  %9002 = fmul fast float %9001, %7943
  %9003 = fmul fast float %9000, %7945
  %9004 = fmul fast float %8999, %7947
  %9005 = fmul fast float %8998, %8238
  %9006 = call float @dx.op.dot3.f32(i32 55, float %8998, float %8997, float %8996, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9007 = call float @dx.op.dot3.f32(i32 55, float %9002, float %9003, float %9004, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9008 = select i1 %213, float %9006, float %8998
  %9009 = select i1 %213, float %9006, float %8997
  %9010 = select i1 %213, float 1.000000e+00, float %8996
  %9011 = select i1 %213, float %9007, float %9002
  %9012 = select i1 %213, float 0.000000e+00, float %9003
  %9013 = select i1 %213, float 0.000000e+00, float %9004
  %9014 = fmul fast float %9008, %8232
  %9015 = fmul fast float %9009, %8233
  %9016 = fmul fast float %9010, %8234
  %9017 = fadd fast float %9014, %9011
  %9018 = fadd fast float %9015, %9012
  %9019 = fadd fast float %9013, %9016
  %9020 = fmul fast float %9008, %8235
  %9021 = fmul fast float %9009, %8236
  %9022 = fmul fast float %9010, %8237
  %9023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9024 = extractvalue %dx.types.CBufRet.i32 %9023, 0
  %9025 = icmp eq i32 %9024, 0
  br i1 %9025, label %9393, label %9026, !dx.controlflow.hints !163

; <label>:9026                                    ; preds = %8995
  %9027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9028 = extractvalue %dx.types.CBufRet.f32 %9027, 2
  %9029 = extractvalue %dx.types.CBufRet.f32 %9027, 3
  %9030 = fmul fast float %9028, %97
  %9031 = fmul fast float %9029, %98
  %9032 = fmul fast float %9030, 2.000000e+00
  %9033 = fmul fast float %9031, 2.000000e+00
  %9034 = fsub fast float 1.000000e+00, %9032
  %9035 = fsub fast float 1.000000e+00, %9033
  %9036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9037 = extractvalue %dx.types.CBufRet.f32 %9036, 0
  %9038 = extractvalue %dx.types.CBufRet.f32 %9036, 1
  %9039 = extractvalue %dx.types.CBufRet.f32 %9036, 2
  %9040 = fmul fast float %9034, %9037
  %9041 = fmul fast float %9034, %9038
  %9042 = fmul fast float %9034, %9039
  %9043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9044 = extractvalue %dx.types.CBufRet.f32 %9043, 0
  %9045 = extractvalue %dx.types.CBufRet.f32 %9043, 1
  %9046 = extractvalue %dx.types.CBufRet.f32 %9043, 2
  %9047 = fmul fast float %9035, %9044
  %9048 = fmul fast float %9035, %9045
  %9049 = fmul fast float %9035, %9046
  %9050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9051 = extractvalue %dx.types.CBufRet.f32 %9050, 0
  %9052 = extractvalue %dx.types.CBufRet.f32 %9050, 1
  %9053 = extractvalue %dx.types.CBufRet.f32 %9050, 2
  %9054 = fadd fast float %9047, %9051
  %9055 = fadd fast float %9054, %9040
  %9056 = fadd fast float %9048, %9052
  %9057 = fadd fast float %9056, %9041
  %9058 = fadd fast float %9049, %9053
  %9059 = fadd fast float %9058, %9042
  %9060 = fmul fast float %9055, %8231
  %9061 = fmul fast float %9057, %8231
  %9062 = fmul fast float %9059, %8231
  %9063 = fmul fast float %9060, %9060
  %9064 = fmul fast float %9061, %9061
  %9065 = fadd fast float %9063, %9064
  %9066 = fmul fast float %9062, %9062
  %9067 = fadd fast float %9065, %9066
  %9068 = call float @dx.op.unary.f32(i32 24, float %9067)  ; Sqrt(value)
  %9069 = extractvalue %dx.types.CBufRet.f32 %7958, 0
  %9070 = fsub fast float %9068, %9069
  %9071 = extractvalue %dx.types.CBufRet.f32 %7958, 2
  %9072 = fmul fast float %9070, %9071
  %9073 = call float @dx.op.unary.f32(i32 7, float %9072)  ; Saturate(value)
  %9074 = fadd fast float %9073, -5.000000e-01
  %9075 = fmul fast float %9074, 2.000000e+00
  %9076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9077 = extractvalue %dx.types.CBufRet.f32 %9076, 2
  %9078 = call float @dx.op.binary.f32(i32 36, float %9077, float %9075)  ; FMin(a,b)
  %9079 = fsub fast float -0.000000e+00, %9077
  %9080 = fcmp fast ogt float %9078, %9079
  br i1 %9080, label %9081, label %9393, !dx.controlflow.hints !164

; <label>:9081                                    ; preds = %9026
  %9082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9083 = extractvalue %dx.types.CBufRet.f32 %9082, 3
  %9084 = fcmp fast ogt float %9083, 0.000000e+00
  br i1 %9084, label %9085, label %9160, !dx.controlflow.hints !165

; <label>:9085                                    ; preds = %9081
  %9086 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %9087 = extractvalue %dx.types.Dimensions %9086, 0
  %9088 = sitofp i32 %9087 to float
  %9089 = extractvalue %dx.types.Dimensions %9086, 1
  %9090 = sitofp i32 %9089 to float
  %9091 = fmul fast float %9030, %9088
  %9092 = fmul fast float %9031, %9090
  %9093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9094 = extractvalue %dx.types.CBufRet.f32 %9093, 1
  %9095 = fsub fast float -0.000000e+00, %9094
  %9096 = fptoui float %9095 to i32
  %9097 = fptoui float %9091 to i32
  %9098 = fptoui float %9092 to i32
  %9099 = and i32 %9096, 31
  %9100 = lshr i32 %9097, %9099
  %9101 = lshr i32 %9098, %9099
  %9102 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %9096, i32 %9100, i32 %9101, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9103 = extractvalue %dx.types.ResRet.f32 %9102, 0
  %9104 = fcmp fast olt float %9103, -1.000000e+00
  %9105 = fcmp fast ogt float %9103, -1.000000e+00
  %9106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9107 = extractvalue %dx.types.CBufRet.f32 %9106, 1
  %9108 = select i1 %9105, float %9107, float 1.000000e+00
  %9109 = fadd fast float %9103, 1.000000e+00
  %9110 = fmul fast float %9108, %9109
  %9111 = call float @dx.op.unary.f32(i32 6, float %9110)  ; FAbs(value)
  %9112 = extractvalue %dx.types.CBufRet.f32 %9106, 3
  %9113 = fcmp fast oge float %9111, %9112
  %9114 = select i1 %9113, float 0x4197782600000000, float %9111
  %9115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9116 = extractvalue %dx.types.CBufRet.f32 %9115, 0
  %9117 = extractvalue %dx.types.CBufRet.f32 %9115, 1
  %9118 = extractvalue %dx.types.CBufRet.f32 %9115, 2
  %9119 = select i1 %9104, float %9116, float %9037
  %9120 = select i1 %9104, float %9117, float %9038
  %9121 = select i1 %9104, float %9118, float %9039
  %9122 = fmul fast float %9119, %9034
  %9123 = fmul fast float %9120, %9034
  %9124 = fmul fast float %9121, %9034
  %9125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9126 = extractvalue %dx.types.CBufRet.f32 %9125, 0
  %9127 = extractvalue %dx.types.CBufRet.f32 %9125, 1
  %9128 = extractvalue %dx.types.CBufRet.f32 %9125, 2
  %9129 = select i1 %9104, float %9126, float %9044
  %9130 = select i1 %9104, float %9127, float %9045
  %9131 = select i1 %9104, float %9128, float %9046
  %9132 = fmul fast float %9129, %9035
  %9133 = fmul fast float %9130, %9035
  %9134 = fmul fast float %9131, %9035
  %9135 = fadd fast float %9132, %9122
  %9136 = fadd fast float %9133, %9123
  %9137 = fadd fast float %9134, %9124
  %9138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9139 = extractvalue %dx.types.CBufRet.f32 %9138, 0
  %9140 = extractvalue %dx.types.CBufRet.f32 %9138, 1
  %9141 = extractvalue %dx.types.CBufRet.f32 %9138, 2
  %9142 = select i1 %9104, float %9139, float %9051
  %9143 = select i1 %9104, float %9140, float %9052
  %9144 = select i1 %9104, float %9141, float %9053
  %9145 = fadd fast float %9135, %9142
  %9146 = fadd fast float %9136, %9143
  %9147 = fadd fast float %9137, %9144
  %9148 = fmul fast float %9145, %9114
  %9149 = fmul fast float %9146, %9114
  %9150 = fmul fast float %9147, %9114
  %9151 = fmul fast float %9148, %9148
  %9152 = fmul fast float %9149, %9149
  %9153 = fadd fast float %9151, %9152
  %9154 = fmul fast float %9150, %9150
  %9155 = fadd fast float %9153, %9154
  %9156 = call float @dx.op.unary.f32(i32 24, float %9155)  ; Sqrt(value)
  %9157 = fsub fast float %9156, %9069
  %9158 = fmul fast float %9157, %9071
  %9159 = call float @dx.op.unary.f32(i32 7, float %9158)  ; Saturate(value)
  br label %9160

; <label>:9160                                    ; preds = %9085, %9081
  %9161 = phi float [ %9159, %9085 ], [ 1.000000e+00, %9081 ]
  %9162 = fmul fast float %9078, 5.000000e-01
  %9163 = fadd fast float %9162, 5.000000e-01
  %9164 = call float @dx.op.unary.f32(i32 22, float %9163)  ; Frc(value)
  %9165 = call float @dx.op.unary.f32(i32 27, float %9164)  ; Round_ni(value)
  %9166 = call float @dx.op.unary.f32(i32 22, float %9164)  ; Frc(value)
  %9167 = fmul fast float %9166, 2.000000e+00
  %9168 = fadd fast float %9167, -1.000000e+00
  %9169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %9030, float %9031, float %9165, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9170 = extractvalue %dx.types.ResRet.f32 %9169, 0
  %9171 = extractvalue %dx.types.ResRet.f32 %9169, 1
  %9172 = extractvalue %dx.types.ResRet.f32 %9169, 2
  %9173 = extractvalue %dx.types.ResRet.f32 %9169, 3
  %9174 = fadd fast float %9170, -5.000000e-01
  %9175 = fadd fast float %9172, -5.000000e-01
  %9176 = fmul fast float %9174, 0xBFD5555560000000
  %9177 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9175, float %9176)  ; FMad(a,b,c)
  %9178 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9171, float 0.000000e+00)  ; FMad(a,b,c)
  %9179 = fadd fast float %9178, %9173
  %9180 = fmul fast float %9174, -7.500000e-01
  %9181 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9175, float %9180)  ; FMad(a,b,c)
  %9182 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9171, float 0.000000e+00)  ; FMad(a,b,c)
  %9183 = fadd fast float %9182, %9173
  %9184 = call float @dx.op.binary.f32(i32 35, float %9177, float -1.000000e+00)  ; FMax(a,b)
  %9185 = call float @dx.op.binary.f32(i32 35, float %9179, float -1.000000e+00)  ; FMax(a,b)
  %9186 = call float @dx.op.binary.f32(i32 35, float %9181, float -1.000000e+00)  ; FMax(a,b)
  %9187 = call float @dx.op.binary.f32(i32 35, float %9183, float -1.000000e+00)  ; FMax(a,b)
  %9188 = call float @dx.op.binary.f32(i32 36, float %9184, float 1.000000e+00)  ; FMin(a,b)
  %9189 = call float @dx.op.binary.f32(i32 36, float %9185, float 1.000000e+00)  ; FMin(a,b)
  %9190 = call float @dx.op.binary.f32(i32 36, float %9186, float 1.000000e+00)  ; FMin(a,b)
  %9191 = call float @dx.op.binary.f32(i32 36, float %9187, float 1.000000e+00)  ; FMin(a,b)
  %9192 = fcmp fast olt float %9188, 0x3FEFFF8020000000
  br i1 %9192, label %9193, label %9308, !dx.controlflow.hints !166

; <label>:9193                                    ; preds = %9160
  %9194 = extractvalue %dx.types.CBufRet.f32 %9076, 3
  %9195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9196 = extractvalue %dx.types.CBufRet.f32 %9195, 0
  %9197 = extractvalue %dx.types.CBufRet.f32 %9195, 1
  %9198 = extractvalue %dx.types.CBufRet.f32 %9195, 2
  %9199 = extractvalue %dx.types.CBufRet.f32 %9195, 3
  %9200 = fsub fast float %9196, %9188
  %9201 = fsub fast float %9197, %9189
  %9202 = fsub fast float %9198, %9190
  %9203 = fsub fast float %9199, %9191
  %9204 = fmul fast float %9200, %9194
  %9205 = fmul fast float %9201, %9194
  %9206 = fmul fast float %9202, %9194
  %9207 = fmul fast float %9203, %9194
  %9208 = fadd fast float %9204, %9188
  %9209 = fadd fast float %9205, %9189
  %9210 = fsub fast float -0.000000e+00, %9209
  %9211 = fadd fast float %9206, %9190
  %9212 = fadd fast float %9207, %9191
  %9213 = fmul fast float %9208, %9208
  %9214 = fsub fast float %9209, %9213
  %9215 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9214)  ; FMax(a,b)
  %9216 = fdiv fast float 1.000000e+00, %9215
  %9217 = fmul fast float %9209, %9208
  %9218 = fsub fast float %9211, %9217
  %9219 = fsub fast float %9168, %9208
  %9220 = fmul fast float %9168, %9168
  %9221 = fsub fast float %9220, %9209
  %9222 = fmul fast float %9219, %9216
  %9223 = fmul fast float %9222, %9218
  %9224 = fsub fast float %9221, %9223
  %9225 = fmul fast float %9209, %9209
  %9226 = fsub fast float %9212, %9225
  %9227 = fmul fast float %9218, %9218
  %9228 = fmul fast float %9227, %9216
  %9229 = fsub fast float %9226, %9228
  %9230 = fdiv fast float %9224, %9229
  %9231 = fmul fast float %9218, %9230
  %9232 = fsub fast float %9219, %9231
  %9233 = fmul fast float %9232, %9216
  %9234 = fmul fast float %9233, %9208
  %9235 = fsub fast float 1.000000e+00, %9234
  %9236 = fmul fast float %9209, %9230
  %9237 = fsub fast float %9235, %9236
  %9238 = fmul fast float %9233, %9233
  %9239 = fmul fast float %9230, 4.000000e+00
  %9240 = fmul fast float %9239, %9237
  %9241 = fsub fast float %9238, %9240
  %9242 = call float @dx.op.unary.f32(i32 24, float %9241)  ; Sqrt(value)
  %9243 = fcmp fast oge float %9233, 0.000000e+00
  %9244 = fsub fast float -0.000000e+00, %9242
  %9245 = select i1 %9243, float %9244, float %9242
  %9246 = fsub fast float %9245, %9233
  %9247 = fdiv fast float %9246, %9230
  %9248 = fdiv fast float %9237, %9246
  %9249 = fmul fast float %9247, 5.000000e-01
  %9250 = fmul fast float %9248, 2.000000e+00
  %9251 = select i1 %9243, float %9249, float %9250
  %9252 = select i1 %9243, float %9250, float %9249
  %9253 = call float @dx.op.binary.f32(i32 35, float %9251, float %9252)  ; FMax(a,b)
  %9254 = call float @dx.op.binary.f32(i32 36, float %9251, float %9252)  ; FMin(a,b)
  %9255 = fcmp fast ogt float %9168, %9254
  br i1 %9255, label %9256, label %9266

; <label>:9256                                    ; preds = %9193
  %9257 = fsub fast float %9168, %9254
  %9258 = fsub fast float %9253, %9254
  %9259 = fmul fast float %9257, %9258
  %9260 = fmul fast float %9253, %9168
  %9261 = fadd fast float %9253, %9168
  %9262 = fmul fast float %9261, %9208
  %9263 = fadd fast float %9260, %9209
  %9264 = fsub fast float %9263, %9262
  %9265 = fdiv fast float %9264, %9259
  br label %9266

; <label>:9266                                    ; preds = %9256, %9193
  %9267 = phi float [ %9265, %9256 ], [ 0.000000e+00, %9193 ]
  %9268 = fcmp fast ogt float %9168, %9253
  %9269 = fsub fast float %9168, %9253
  br i1 %9268, label %9270, label %9280

; <label>:9270                                    ; preds = %9266
  %9271 = fsub fast float %9253, %9254
  %9272 = fmul fast float %9271, %9269
  %9273 = fmul fast float %9254, %9168
  %9274 = fadd fast float %9254, %9168
  %9275 = fmul fast float %9274, %9208
  %9276 = fsub fast float %9210, %9273
  %9277 = fadd fast float %9276, %9275
  %9278 = fdiv fast float %9277, %9272
  %9279 = fadd fast float %9278, %9267
  br label %9280

; <label>:9280                                    ; preds = %9270, %9266
  %9281 = phi float [ %9279, %9270 ], [ %9267, %9266 ]
  %9282 = fsub fast float %9168, %9254
  %9283 = fmul fast float %9282, %9269
  %9284 = fmul fast float %9254, %9253
  %9285 = fadd fast float %9254, %9253
  %9286 = fmul fast float %9285, %9208
  %9287 = fadd fast float %9284, %9209
  %9288 = fsub fast float %9287, %9286
  %9289 = fdiv fast float %9288, %9283
  %9290 = call float @dx.op.unary.f32(i32 7, float %9281)  ; Saturate(value)
  %9291 = fcmp fast oeq float %7959, 0.000000e+00
  %9292 = extractvalue %dx.types.CBufRet.f32 %9076, 0
  %9293 = fcmp fast oeq float %9292, 0.000000e+00
  %9294 = or i1 %9291, %9293
  %9295 = fmul fast float %9292, 2.000000e+00
  %9296 = fadd fast float %9077, %9078
  %9297 = fdiv fast float %9296, %9295
  %9298 = call float @dx.op.unary.f32(i32 7, float %9297)  ; Saturate(value)
  %9299 = fmul fast float %9298, 2.000000e+00
  %9300 = fsub fast float 3.000000e+00, %9299
  %9301 = fmul fast float %9298, %9298
  %9302 = fmul fast float %9301, %9300
  %9303 = select i1 %9294, float 1.000000e+00, float %9302
  %9304 = fmul fast float %9289, %7959
  %9305 = fadd fast float %9290, %9304
  %9306 = call float @dx.op.unary.f32(i32 7, float %9305)  ; Saturate(value)
  %9307 = fmul fast float %9303, %9306
  br label %9308

; <label>:9308                                    ; preds = %9280, %9160
  %9309 = phi float [ %9307, %9280 ], [ 0.000000e+00, %9160 ]
  %9310 = fsub fast float 1.000000e+00, %9309
  %9311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %9030, float %9031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9312 = extractvalue %dx.types.ResRet.f32 %9311, 0
  %9313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9314 = extractvalue %dx.types.CBufRet.i32 %9313, 2
  %9315 = icmp eq i32 %9314, 0
  br i1 %9315, label %9321, label %9316

; <label>:9316                                    ; preds = %9308
  %9317 = call float @dx.op.unary.f32(i32 7, float %9309)  ; Saturate(value)
  %9318 = fadd fast float %9312, -1.000000e+00
  %9319 = fmul fast float %9317, %9318
  %9320 = fadd fast float %9319, 1.000000e+00
  br label %9321

; <label>:9321                                    ; preds = %9316, %9308
  %9322 = phi float [ %9320, %9316 ], [ %9310, %9308 ]
  br i1 %9084, label %9323, label %9341

; <label>:9323                                    ; preds = %9321
  %9324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9325 = extractvalue %dx.types.CBufRet.f32 %9324, 1
  %9326 = fsub fast float %9161, %9325
  %9327 = call float @dx.op.unary.f32(i32 7, float %9326)  ; Saturate(value)
  %9328 = fsub fast float %9161, %9083
  %9329 = call float @dx.op.unary.f32(i32 7, float %9328)  ; Saturate(value)
  %9330 = fsub fast float %9327, %9329
  %9331 = fsub fast float %9163, %9329
  %9332 = fdiv fast float %9331, %9330
  %9333 = call float @dx.op.unary.f32(i32 7, float %9332)  ; Saturate(value)
  %9334 = fmul fast float %9333, 2.000000e+00
  %9335 = fsub fast float 3.000000e+00, %9334
  %9336 = fsub fast float %9312, %9322
  %9337 = fmul fast float %9333, %9333
  %9338 = fmul fast float %9337, %9336
  %9339 = fmul fast float %9338, %9335
  %9340 = fadd fast float %9339, %9322
  br label %9341

; <label>:9341                                    ; preds = %9323, %9321
  %9342 = phi float [ %9340, %9323 ], [ %9322, %9321 ]
  %9343 = call float @dx.op.binary.f32(i32 35, float %9312, float %9342)  ; FMax(a,b)
  %9344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9345 = extractvalue %dx.types.CBufRet.i32 %9344, 2
  %9346 = and i32 %9345, 1
  %9347 = icmp eq i32 %9346, 0
  %9348 = fcmp fast une float %9343, 1.000000e+00
  %9349 = and i1 %9348, %9347
  br i1 %9349, label %9350, label %9369

; <label>:9350                                    ; preds = %9341
  %9351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %9030, float %9031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9352 = extractvalue %dx.types.ResRet.f32 %9351, 0
  %9353 = extractvalue %dx.types.ResRet.f32 %9351, 1
  %9354 = extractvalue %dx.types.ResRet.f32 %9351, 2
  %9355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9356 = extractvalue %dx.types.CBufRet.f32 %9355, 1
  %9357 = fmul fast float %9356, %9352
  %9358 = fmul fast float %9356, %9353
  %9359 = fmul fast float %9356, %9354
  %9360 = fcmp fast ogt float %9312, 0x3FEFFF2E40000000
  %9361 = fsub fast float 1.000000e+00, %9343
  %9362 = fsub fast float 1.000000e+00, %9312
  %9363 = fdiv fast float %9361, %9362
  %9364 = call float @dx.op.unary.f32(i32 7, float %9363)  ; Saturate(value)
  %9365 = select i1 %9360, float 0.000000e+00, float %9364
  %9366 = fmul fast float %9357, %9365
  %9367 = fmul fast float %9358, %9365
  %9368 = fmul fast float %9359, %9365
  br label %9369

; <label>:9369                                    ; preds = %9350, %9341
  %9370 = phi float [ 0.000000e+00, %9341 ], [ %9366, %9350 ]
  %9371 = phi float [ 0.000000e+00, %9341 ], [ %9367, %9350 ]
  %9372 = phi float [ 0.000000e+00, %9341 ], [ %9368, %9350 ]
  %9373 = fmul fast float %9370, %7943
  %9374 = fmul fast float %9371, %7945
  %9375 = fmul fast float %9372, %7947
  %9376 = fmul fast float %9343, %9005
  %9377 = call float @dx.op.dot3.f32(i32 55, float %9343, float %9343, float %9343, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9378 = call float @dx.op.dot3.f32(i32 55, float %9373, float %9374, float %9375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9379 = select i1 %213, float %9377, float %9343
  %9380 = select i1 %213, float 1.000000e+00, float %9343
  %9381 = select i1 %213, float %9378, float %9373
  %9382 = select i1 %213, float 0.000000e+00, float %9374
  %9383 = select i1 %213, float 0.000000e+00, float %9375
  %9384 = fmul fast float %9379, %9017
  %9385 = fmul fast float %9379, %9018
  %9386 = fmul fast float %9380, %9019
  %9387 = fadd fast float %9384, %9381
  %9388 = fadd fast float %9385, %9382
  %9389 = fadd fast float %9383, %9386
  %9390 = fmul fast float %9379, %9020
  %9391 = fmul fast float %9379, %9021
  %9392 = fmul fast float %9380, %9022
  br label %9393

; <label>:9393                                    ; preds = %9369, %9026, %8995, %8227
  %9394 = phi float [ %8232, %8227 ], [ %9017, %8995 ], [ %9387, %9369 ], [ %9017, %9026 ]
  %9395 = phi float [ %8233, %8227 ], [ %9018, %8995 ], [ %9388, %9369 ], [ %9018, %9026 ]
  %9396 = phi float [ %8234, %8227 ], [ %9019, %8995 ], [ %9389, %9369 ], [ %9019, %9026 ]
  %9397 = phi float [ %8235, %8227 ], [ %9020, %8995 ], [ %9390, %9369 ], [ %9020, %9026 ]
  %9398 = phi float [ %8236, %8227 ], [ %9021, %8995 ], [ %9391, %9369 ], [ %9021, %9026 ]
  %9399 = phi float [ %8237, %8227 ], [ %9022, %8995 ], [ %9392, %9369 ], [ %9022, %9026 ]
  %9400 = phi float [ %8238, %8227 ], [ %9005, %8995 ], [ %9376, %9369 ], [ %9005, %9026 ]
  %9401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9402 = extractvalue %dx.types.CBufRet.f32 %9401, 2
  %9403 = extractvalue %dx.types.CBufRet.f32 %9401, 3
  %9404 = fmul fast float %9402, %97
  %9405 = fmul fast float %9403, %98
  %9406 = call float @dx.op.unary.f32(i32 7, float %9404)  ; Saturate(value)
  %9407 = call float @dx.op.unary.f32(i32 7, float %9405)  ; Saturate(value)
  %9408 = select i1 %7969, i32 2, i32 0
  %9409 = or i32 %9408, 1
  %9410 = uitofp i32 %9409 to float
  %9411 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9406, float %9407, float %9410, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9412 = extractvalue %dx.types.ResRet.f32 %9411, 0
  %9413 = extractvalue %dx.types.ResRet.f32 %9411, 1
  %9414 = extractvalue %dx.types.ResRet.f32 %9411, 2
  %9415 = extractvalue %dx.types.ResRet.f32 %9411, 3
  %9416 = add nuw nsw i32 %9408, 2
  %9417 = uitofp i32 %9416 to float
  %9418 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9406, float %9407, float %9417, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9419 = extractvalue %dx.types.ResRet.f32 %9418, 0
  %9420 = extractvalue %dx.types.ResRet.f32 %9418, 1
  %9421 = extractvalue %dx.types.ResRet.f32 %9418, 2
  %9422 = extractvalue %dx.types.ResRet.f32 %9418, 3
  %9423 = call float @dx.op.binary.f32(i32 35, float %9413, float %9414)  ; FMax(a,b)
  %9424 = call float @dx.op.binary.f32(i32 35, float %9412, float %9423)  ; FMax(a,b)
  %9425 = call float @dx.op.binary.f32(i32 35, float %9424, float %9415)  ; FMax(a,b)
  %9426 = call float @dx.op.binary.f32(i32 36, float %9420, float %9421)  ; FMin(a,b)
  %9427 = call float @dx.op.binary.f32(i32 36, float %9419, float %9426)  ; FMin(a,b)
  %9428 = call float @dx.op.binary.f32(i32 36, float %9427, float %9422)  ; FMin(a,b)
  %9429 = fmul fast float %9425, 2.550000e+02
  %9430 = fadd fast float %9429, 0x3F70101020000000
  %9431 = fptoui float %9430 to i32
  %9432 = fmul fast float %9428, 2.550000e+02
  %9433 = fadd fast float %9432, 0x3F70101020000000
  %9434 = fptoui float %9433 to i32
  %9435 = icmp ult i32 %9431, %9434
  br i1 %9435, label %9436, label %9605

; <label>:9436                                    ; preds = %9393
  %9437 = fcmp fast ogt float %84, 9.843750e-01
  %9438 = fadd fast float %8231, -4.000000e+00
  %9439 = select i1 %9437, float -4.000000e+00, float %9438
  %9440 = call float @dx.op.binary.f32(i32 35, float %9439, float 0.000000e+00)  ; FMax(a,b)
  %9441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9442 = extractvalue %dx.types.CBufRet.f32 %9441, 0
  %9443 = fadd fast float %9442, %9440
  %9444 = extractvalue %dx.types.CBufRet.f32 %9441, 2
  %9445 = fmul fast float %9443, %9444
  %9446 = call float @dx.op.unary.f32(i32 23, float %9445)  ; Log(value)
  %9447 = extractvalue %dx.types.CBufRet.f32 %9441, 3
  %9448 = fmul fast float %9447, %9446
  %9449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9450 = extractvalue %dx.types.CBufRet.f32 %9449, 2
  %9451 = fmul fast float %9448, %9450
  %9452 = call float @dx.op.unary.f32(i32 7, float %9451)  ; Saturate(value)
  %9453 = uitofp i32 %9431 to float
  %9454 = uitofp i32 %9434 to float
  %9455 = fadd fast float %9453, 5.000000e-01
  %9456 = fadd fast float %9454, 5.000000e-01
  %9457 = fmul fast float %9450, %9455
  %9458 = fmul fast float %9450, %9456
  %9459 = fadd fast float %9457, 0x3F0FFB4800000000
  %9460 = fadd fast float %9458, 0xBF0FFB4800000000
  %9461 = call float @dx.op.binary.f32(i32 35, float %9452, float %9459)  ; FMax(a,b)
  %9462 = call float @dx.op.binary.f32(i32 36, float %9461, float %9460)  ; FMin(a,b)
  %9463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9464 = extractvalue %dx.types.CBufRet.f32 %9463, 1
  %9465 = extractvalue %dx.types.CBufRet.f32 %9463, 2
  %9466 = extractvalue %dx.types.CBufRet.f32 %9463, 0
  %9467 = select i1 %7969, float %9466, float 0.000000e+00
  %9468 = fmul fast float %9464, %9462
  %9469 = fadd fast float %9467, %9468
  %9470 = fadd fast float %9467, %9465
  %9471 = fsub fast float %9464, %9465
  %9472 = fadd fast float %9471, %9467
  %9473 = call float @dx.op.binary.f32(i32 35, float %9469, float %9470)  ; FMax(a,b)
  %9474 = call float @dx.op.binary.f32(i32 36, float %9473, float %9472)  ; FMin(a,b)
  %9475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %9406, float %9407, float %9474, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9476 = extractvalue %dx.types.ResRet.f32 %9475, 0
  %9477 = extractvalue %dx.types.ResRet.f32 %9475, 1
  %9478 = extractvalue %dx.types.ResRet.f32 %9475, 2
  %9479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9480 = extractvalue %dx.types.CBufRet.i32 %9479, 0
  %9481 = extractvalue %dx.types.CBufRet.i32 %9479, 1
  %9482 = uitofp i32 %9480 to float
  %9483 = uitofp i32 %9481 to float
  %9484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9485 = extractvalue %dx.types.CBufRet.f32 %9484, 0
  %9486 = extractvalue %dx.types.CBufRet.f32 %9484, 1
  %9487 = fmul fast float %9482, %9406
  %9488 = fmul fast float %9483, %9407
  %9489 = fadd fast float %9487, -5.000000e-01
  %9490 = fadd fast float %9488, -5.000000e-01
  %9491 = call float @dx.op.unary.f32(i32 22, float %9489)  ; Frc(value)
  %9492 = call float @dx.op.unary.f32(i32 22, float %9490)  ; Frc(value)
  %9493 = fmul fast float %9491, %9491
  %9494 = fmul fast float %9493, %9491
  %9495 = fsub fast float 3.000000e+00, %9491
  %9496 = fmul fast float %9493, %9495
  %9497 = fmul fast float %9491, 3.000000e+00
  %9498 = fmul fast float %9494, 3.000000e+00
  %9499 = fmul fast float %9493, 6.000000e+00
  %9500 = fsub fast float %9498, %9499
  %9501 = fadd fast float %9500, 4.000000e+00
  %9502 = fmul fast float %9501, 0x3FC5555560000000
  %9503 = fmul fast float %9494, -3.000000e+00
  %9504 = fadd fast float %9493, %9491
  %9505 = fmul fast float %9504, 3.000000e+00
  %9506 = fadd fast float %9503, 1.000000e+00
  %9507 = fadd fast float %9506, %9505
  %9508 = fmul fast float %9494, 0x3FC5555560000000
  %9509 = fmul fast float %9492, %9492
  %9510 = fmul fast float %9509, %9492
  %9511 = fsub fast float 3.000000e+00, %9492
  %9512 = fmul fast float %9509, %9511
  %9513 = fmul fast float %9492, 3.000000e+00
  %9514 = fmul fast float %9510, 3.000000e+00
  %9515 = fmul fast float %9509, 6.000000e+00
  %9516 = fsub fast float %9514, %9515
  %9517 = fadd fast float %9516, 4.000000e+00
  %9518 = fmul fast float %9517, 0x3FC5555560000000
  %9519 = fmul fast float %9510, -3.000000e+00
  %9520 = fadd fast float %9509, %9492
  %9521 = fmul fast float %9520, 3.000000e+00
  %9522 = fadd fast float %9519, 1.000000e+00
  %9523 = fadd fast float %9522, %9521
  %9524 = fmul fast float %9510, 0x3FC5555560000000
  %9525 = fadd fast float %9491, 1.000000e+00
  %9526 = fsub fast float 1.000000e+00, %9497
  %9527 = fadd fast float %9526, %9496
  %9528 = fadd fast float %9527, %9501
  %9529 = fmul fast float %9528, 0x3FC5555560000000
  %9530 = fdiv fast float %9502, %9529
  %9531 = fsub fast float %9525, %9530
  %9532 = fsub fast float 1.000000e+00, %9491
  %9533 = fadd fast float %9507, %9494
  %9534 = fmul fast float %9533, 0x3FC5555560000000
  %9535 = fdiv fast float %9508, %9534
  %9536 = fadd fast float %9532, %9535
  %9537 = fadd fast float %9492, 1.000000e+00
  %9538 = fsub fast float 1.000000e+00, %9513
  %9539 = fadd fast float %9538, %9512
  %9540 = fadd fast float %9539, %9517
  %9541 = fmul fast float %9540, 0x3FC5555560000000
  %9542 = fdiv fast float %9518, %9541
  %9543 = fsub fast float %9537, %9542
  %9544 = fsub fast float 1.000000e+00, %9492
  %9545 = fadd fast float %9523, %9510
  %9546 = fmul fast float %9545, 0x3FC5555560000000
  %9547 = fdiv fast float %9524, %9546
  %9548 = fadd fast float %9547, %9544
  %9549 = fmul fast float %9531, %9485
  %9550 = fsub fast float %9406, %9549
  %9551 = fmul fast float %9536, %9485
  %9552 = fadd fast float %9551, %9406
  %9553 = fmul fast float %9548, %9486
  %9554 = fadd fast float %9553, %9407
  %9555 = fmul fast float %9543, %9486
  %9556 = fsub fast float %9407, %9555
  %9557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9550, float %9556, float %9474, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9558 = extractvalue %dx.types.ResRet.f32 %9557, 0
  %9559 = extractvalue %dx.types.ResRet.f32 %9557, 1
  %9560 = extractvalue %dx.types.ResRet.f32 %9557, 2
  %9561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9552, float %9556, float %9474, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9562 = extractvalue %dx.types.ResRet.f32 %9561, 0
  %9563 = extractvalue %dx.types.ResRet.f32 %9561, 1
  %9564 = extractvalue %dx.types.ResRet.f32 %9561, 2
  %9565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9550, float %9554, float %9474, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9566 = extractvalue %dx.types.ResRet.f32 %9565, 0
  %9567 = extractvalue %dx.types.ResRet.f32 %9565, 1
  %9568 = extractvalue %dx.types.ResRet.f32 %9565, 2
  %9569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9552, float %9554, float %9474, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9570 = extractvalue %dx.types.ResRet.f32 %9569, 0
  %9571 = extractvalue %dx.types.ResRet.f32 %9569, 1
  %9572 = extractvalue %dx.types.ResRet.f32 %9569, 2
  %9573 = fsub fast float %9566, %9558
  %9574 = fsub fast float %9567, %9559
  %9575 = fsub fast float %9568, %9560
  %9576 = fmul fast float %9573, %9546
  %9577 = fmul fast float %9574, %9546
  %9578 = fmul fast float %9575, %9546
  %9579 = fadd fast float %9576, %9558
  %9580 = fadd fast float %9577, %9559
  %9581 = fadd fast float %9578, %9560
  %9582 = fsub fast float %9570, %9562
  %9583 = fsub fast float %9571, %9563
  %9584 = fsub fast float %9572, %9564
  %9585 = fmul fast float %9582, %9546
  %9586 = fmul fast float %9583, %9546
  %9587 = fmul fast float %9584, %9546
  %9588 = fsub fast float %9562, %9579
  %9589 = fadd fast float %9588, %9585
  %9590 = fsub fast float %9563, %9580
  %9591 = fadd fast float %9590, %9586
  %9592 = fsub fast float %9564, %9581
  %9593 = fadd fast float %9592, %9587
  %9594 = fmul fast float %9589, %9534
  %9595 = fmul fast float %9591, %9534
  %9596 = fmul fast float %9593, %9534
  %9597 = fadd fast float %9594, %9579
  %9598 = fadd fast float %9595, %9580
  %9599 = fadd fast float %9596, %9581
  %9600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9601 = extractvalue %dx.types.CBufRet.f32 %9600, 1
  %9602 = fmul fast float %9597, %9601
  %9603 = fmul fast float %9598, %9601
  %9604 = fmul fast float %9599, %9601
  br label %9605

; <label>:9605                                    ; preds = %9436, %9393
  %9606 = phi float [ %9476, %9436 ], [ 1.000000e+00, %9393 ]
  %9607 = phi float [ %9477, %9436 ], [ 1.000000e+00, %9393 ]
  %9608 = phi float [ %9478, %9436 ], [ 1.000000e+00, %9393 ]
  %9609 = phi float [ %9602, %9436 ], [ 0.000000e+00, %9393 ]
  %9610 = phi float [ %9603, %9436 ], [ 0.000000e+00, %9393 ]
  %9611 = phi float [ %9604, %9436 ], [ 0.000000e+00, %9393 ]
  %9612 = fmul fast float %9609, %7943
  %9613 = fmul fast float %9610, %7945
  %9614 = fmul fast float %9611, %7947
  %9615 = fmul fast float %9606, %9400
  %9616 = call float @dx.op.dot3.f32(i32 55, float %9606, float %9607, float %9608, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9617 = call float @dx.op.dot3.f32(i32 55, float %9612, float %9613, float %9614, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9618 = select i1 %213, float %9616, float %9606
  %9619 = select i1 %213, float %9616, float %9607
  %9620 = select i1 %213, float 1.000000e+00, float %9608
  %9621 = select i1 %213, float %9617, float %9612
  %9622 = select i1 %213, float 0.000000e+00, float %9613
  %9623 = select i1 %213, float 0.000000e+00, float %9614
  %9624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9625 = extractvalue %dx.types.CBufRet.i32 %9624, 3
  %9626 = and i32 %9625, 3
  %9627 = icmp ne i32 %9626, 0
  %9628 = and i32 %9625, 4
  %9629 = icmp ne i32 %9628, 0
  %9630 = and i1 %9627, %9629
  %9631 = and i1 %213, %9630
  br i1 %9631, label %9632, label %9638

; <label>:9632                                    ; preds = %9605
  %9633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9634 = extractvalue %dx.types.CBufRet.f32 %9633, 1
  %9635 = fadd fast float %9615, -1.000000e+00
  %9636 = fmul fast float %9634, %9635
  %9637 = fadd fast float %9636, 1.000000e+00
  br label %9638

; <label>:9638                                    ; preds = %9632, %9605
  %9639 = phi float [ %9637, %9632 ], [ %9615, %9605 ]
  %9640 = fadd fast float %9397, %9394
  %9641 = fmul fast float %9618, %9640
  %9642 = fadd fast float %9641, %9621
  %9643 = fadd fast float %9398, %9395
  %9644 = fmul fast float %9619, %9643
  %9645 = fadd fast float %9644, %9622
  %9646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9647 = extractvalue %dx.types.CBufRet.f32 %9646, 0
  br i1 %213, label %9648, label %9663

; <label>:9648                                    ; preds = %9638
  %9649 = fadd fast float %9642, %9645
  %9650 = fmul fast float %9647, %9649
  %9651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9652 = extractvalue %dx.types.CBufRet.f32 %9651, 3
  %9653 = extractvalue %dx.types.CBufRet.f32 %7951, 1
  %9654 = fsub fast float %7956, %7950
  %9655 = fadd fast float %9654, %7957
  %9656 = fsub fast float %9655, %9653
  %9657 = extractvalue %dx.types.CBufRet.f32 %7951, 2
  %9658 = fmul fast float %9656, %9657
  %9659 = call float @dx.op.unary.f32(i32 7, float %9658)  ; Saturate(value)
  %9660 = fsub fast float %9659, %9652
  %9661 = fmul fast float %9660, %9639
  %9662 = fadd fast float %9661, %9652
  br label %9689

; <label>:9663                                    ; preds = %9638
  %9664 = fadd fast float %9399, %9396
  %9665 = fmul fast float %9620, %9664
  %9666 = fadd fast float %9665, %9623
  %9667 = fmul fast float %9647, %9642
  %9668 = fmul fast float %9647, %9645
  %9669 = fmul fast float %9647, %9666
  %9670 = call float @dx.op.binary.f32(i32 35, float %9668, float %9669)  ; FMax(a,b)
  %9671 = call float @dx.op.binary.f32(i32 35, float %9667, float %9670)  ; FMax(a,b)
  %9672 = call float @dx.op.binary.f32(i32 35, float %7945, float %7947)  ; FMax(a,b)
  %9673 = call float @dx.op.binary.f32(i32 35, float %7943, float %9672)  ; FMax(a,b)
  %9674 = call float @dx.op.binary.f32(i32 35, float %9671, float %9673)  ; FMax(a,b)
  %9675 = fcmp fast ugt float %9674, 0x3F10000000000000
  br i1 %9675, label %9677, label %9676

; <label>:9676                                    ; preds = %9663
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9677

; <label>:9677                                    ; preds = %9676, %9663
  %9678 = add i32 %48, 356
  %9679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %9678, i32 undef)  ; BufferLoad(srv,index,wot)
  %9680 = extractvalue %dx.types.ResRet.i32 %9679, 0
  %9681 = and i32 %9680, 32
  %9682 = icmp eq i32 %9681, 0
  br i1 %9682, label %9689, label %9683

; <label>:9683                                    ; preds = %9677
  %9684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9685 = extractvalue %dx.types.CBufRet.f32 %9684, 0
  %9686 = fmul fast float %9685, 0x3FE99999A0000000
  %9687 = fadd fast float %9685, %9667
  %9688 = fadd fast float %9686, %9669
  br label %9689

; <label>:9689                                    ; preds = %9683, %9677, %9648
  %9690 = phi float [ 1.000000e+00, %9648 ], [ %7945, %9683 ], [ %7945, %9677 ]
  %9691 = phi float [ 1.000000e+00, %9648 ], [ %7947, %9683 ], [ %7947, %9677 ]
  %9692 = phi float [ %9650, %9648 ], [ %9687, %9683 ], [ %9667, %9677 ]
  %9693 = phi float [ %9662, %9648 ], [ %9668, %9683 ], [ %9668, %9677 ]
  %9694 = phi float [ 1.000000e+00, %9648 ], [ %9688, %9683 ], [ %9669, %9677 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9695 = call float @dx.op.binary.f32(i32 36, float %9692, float 3.225500e+04)  ; FMin(a,b)
  %9696 = call float @dx.op.binary.f32(i32 36, float %9693, float 3.225500e+04)  ; FMin(a,b)
  %9697 = call float @dx.op.binary.f32(i32 36, float %9694, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9695)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9696)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9697)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9698 = call float @dx.op.binary.f32(i32 36, float %7943, float 3.225500e+04)  ; FMin(a,b)
  %9699 = call float @dx.op.binary.f32(i32 36, float %9690, float 3.225500e+04)  ; FMin(a,b)
  %9700 = call float @dx.op.binary.f32(i32 36, float %9691, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9698)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9699)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9700)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!61 = !{[46 x i32] [i32 44, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119]}
!62 = !{void ()* @ps_main, !"ps_main", !63, !4, !86}
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
!82 = !{!83, !84}
!83 = !{i32 0, !"SV_Target", i8 9, i8 16, !66, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!84 = !{i32 1, !"SV_Target", i8 9, i8 16, !85, i8 0, i32 1, i8 4, i32 1, i8 0, !67}
!85 = !{i32 1}
!86 = !{i32 0, i64 16}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = !{!96, !96, i64 0}
!96 = !{!"int", !97, i64 0}
!97 = !{!"omnipotent char", !98, i64 0}
!98 = !{!"Simple C/C++ TBAA"}
!99 = !{!100, !102, !104, !106}
!100 = distinct !{!100, !101, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!101 = distinct !{!101, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!102 = distinct !{!102, !103, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!103 = distinct !{!103, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!104 = distinct !{!104, !105, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!105 = distinct !{!105, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!106 = distinct !{!106, !107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!107 = distinct !{!107, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = !{!110, !110, i64 0}
!110 = !{!"float", !97, i64 0}
!111 = distinct !{!111, !89}
!112 = distinct !{!112, !89}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = !{!121, !123, !125, !126, !128, !129, !130, !132, !133, !134}
!121 = distinct !{!121, !122, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!122 = distinct !{!122, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!123 = distinct !{!123, !124, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!124 = distinct !{!124, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!125 = distinct !{!125, !124, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!126 = distinct !{!126, !127, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!127 = distinct !{!127, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!128 = distinct !{!128, !127, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!129 = distinct !{!129, !127, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!130 = distinct !{!130, !131, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!131 = distinct !{!131, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!132 = distinct !{!132, !131, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!133 = distinct !{!133, !131, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!134 = distinct !{!134, !135, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!135 = distinct !{!135, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"\01?sort@@YAXAIAM00@Z: %c"}
!138 = distinct !{!138, !"\01?sort@@YAXAIAM00@Z"}
!139 = !{!140, !141, !121, !123, !125, !126, !128, !129, !130, !132, !133, !134}
!140 = distinct !{!140, !138, !"\01?sort@@YAXAIAM00@Z: %a"}
!141 = distinct !{!141, !138, !"\01?sort@@YAXAIAM00@Z: %b"}
!142 = !{!141}
!143 = !{!140, !137, !121, !123, !125, !126, !128, !129, !130, !132, !133, !134}
!144 = !{!140}
!145 = !{!141, !137, !121, !123, !125, !126, !128, !129, !130, !132, !133, !134}
!146 = !{!147}
!147 = distinct !{!147, !148, !"\01?sort@@YAXAIAM00@Z: %c"}
!148 = distinct !{!148, !"\01?sort@@YAXAIAM00@Z"}
!149 = !{!150, !151, !121, !123, !125, !126, !128, !129, !130, !132, !133, !134}
!150 = distinct !{!150, !148, !"\01?sort@@YAXAIAM00@Z: %a"}
!151 = distinct !{!151, !148, !"\01?sort@@YAXAIAM00@Z: %b"}
!152 = !{!151}
!153 = !{!150, !147, !121, !123, !125, !126, !128, !129, !130, !132, !133, !134}
!154 = !{!150}
!155 = !{!151, !147, !121, !123, !125, !126, !128, !129, !130, !132, !133, !134}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 2}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}

