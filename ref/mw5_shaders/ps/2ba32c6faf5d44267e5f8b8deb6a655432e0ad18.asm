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
; shader hash: 9b0d34f53895e9f56e2966c5163a6146
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
;   [208 x i8] (type annotation not present)
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = alloca [4 x i32], align 4
  %49 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = alloca [12 x float], align 4
  %88 = alloca [12 x float], align 4
  %89 = alloca [4 x float], align 4
  %90 = alloca [4 x float], align 4
  %91 = alloca [4 x float], align 4
  %92 = alloca [3 x float], align 4
  %93 = alloca [3 x float], align 4
  %94 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %95 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = fmul fast float %97, %83
  %99 = fmul fast float %97, %84
  %100 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %101 = bitcast float %100 to i32
  %102 = ashr i32 %101, 1
  %103 = sub nsw i32 1597250115, %102
  %104 = bitcast i32 %103 to float
  %105 = fmul fast float %104, %74
  %106 = fmul fast float %104, %75
  %107 = fmul fast float %104, %76
  %108 = fmul fast float %75, %72
  %109 = fmul fast float %76, %71
  %110 = fsub fast float %108, %109
  %111 = fmul fast float %76, %70
  %112 = fmul fast float %74, %72
  %113 = fsub fast float %111, %112
  %114 = fmul fast float %74, %71
  %115 = fmul fast float %75, %70
  %116 = fsub fast float %114, %115
  %117 = fmul fast float %110, %73
  %118 = fmul fast float %113, %73
  %119 = fmul fast float %116, %73
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 3
  %123 = fmul fast float %98, 2.000000e+00
  %124 = fmul fast float %123, %121
  %125 = fmul fast float %99, 2.000000e+00
  %126 = fmul fast float %125, %122
  %127 = fsub fast float 1.000000e+00, %124
  %128 = fsub fast float 1.000000e+00, %126
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = fmul fast float %127, %130
  %134 = fmul fast float %127, %131
  %135 = fmul fast float %127, %132
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = fmul fast float %128, %137
  %141 = fmul fast float %128, %138
  %142 = fmul fast float %128, %139
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = fadd fast float %140, %144
  %148 = fadd fast float %147, %133
  %149 = fadd fast float %141, %145
  %150 = fadd fast float %149, %134
  %151 = fadd fast float %142, %146
  %152 = fadd fast float %151, %135
  %153 = fmul fast float %148, %86
  %154 = fmul fast float %150, %86
  %155 = fmul fast float %152, %86
  %156 = fmul fast float %98, 5.000000e-01
  %157 = fmul fast float %99, 5.000000e-01
  %158 = fptosi float %156 to i32
  %159 = fptosi float %157 to i32
  %160 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %158, i32 %159, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = lshr i32 %161, 18
  %163 = uitofp i32 %162 to float
  %164 = fmul fast float %163, 0x3F4C00EBA0000000
  %165 = call float @dx.op.unary.f32(i32 21, float %164)  ; Exp(value)
  %166 = fadd fast float %165, -1.000000e+00
  %167 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %20, i32 0)  ; GetDimensions(handle,mipLevel)
  %168 = extractvalue %dx.types.Dimensions %167, 0
  %169 = sitofp i32 %168 to float
  %170 = extractvalue %dx.types.Dimensions %167, 1
  %171 = sitofp i32 %170 to float
  %172 = fcmp fast oge float %156, %169
  %173 = fcmp fast oge float %157, %171
  %174 = or i1 %172, %173
  %175 = select i1 %174, float 0x4197782600000000, float %166
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 3
  %179 = fmul fast float %177, %98
  %180 = fmul fast float %178, %99
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = and i32 %182, 114688
  %184 = icmp ne i32 %183, 0
  %185 = select i1 %184, float %179, float 0.000000e+00
  %186 = select i1 %184, float %180, float 0.000000e+00
  %187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %44, float %185, float %186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %188 = extractvalue %dx.types.ResRet.f32 %187, 0
  %189 = fmul fast float %188, 2.550000e+02
  %190 = fptoui float %189 to i32
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.i32 %192, 3
  %194 = and i32 %193, 3
  %195 = icmp ne i32 %194, 0
  %196 = and i32 %193, 4
  %197 = icmp ne i32 %196, 0
  %198 = and i1 %195, %197
  br i1 %198, label %199, label %210

; <label>:199                                     ; preds = %0
  %200 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %201 = fmul fast float %200, %99
  %202 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %203 = fmul fast float %202, %98
  %204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %43, float %203, float %201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = fsub fast float 1.000000e+00, %205
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %209 = fcmp fast olt float %206, %208
  br label %213

; <label>:210                                     ; preds = %0
  %211 = icmp eq i32 %196, 0
  %212 = and i1 %195, %211
  br label %213

; <label>:213                                     ; preds = %210, %199
  %214 = phi i1 [ %209, %199 ], [ %212, %210 ]
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %217 = fmul fast float %216, 0x3FE3C6EF40000000
  %218 = frem fast float %98, 2.560000e+02
  %219 = frem fast float %99, 2.560000e+02
  %220 = fptoui float %218 to i32
  %221 = fptoui float %219 to i32
  %222 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %220, i32 %221, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = extractvalue %dx.types.ResRet.f32 %222, 1
  %225 = fadd fast float %223, %217
  %226 = fadd fast float %224, %217
  %227 = call float @dx.op.unary.f32(i32 22, float %225)  ; Frc(value)
  %228 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %229 = add i32 %49, 156
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = shl i32 %231, 4
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %231, 7
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %231, 22
  %239 = shl nuw nsw i32 %238, 5
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = add i32 %49, 216
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %243, 8
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = lshr i32 %243, 16
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = add i32 %49, 36
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %49, 288
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fmul fast float %266, 0x3F50624DE0000000
  %270 = fmul fast float %268, 0x3F50624DE0000000
  %271 = add i32 %49, 172
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %273, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %273, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %49, 232
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %285, 8
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %285, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = add i32 %49, 52
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %49, 304
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = add i32 %49, 188
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = shl i32 %315, 4
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %315, 7
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %315, 22
  %323 = shl nuw nsw i32 %322, 5
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %49, 248
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %327, 8
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %327, 16
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = add i32 %49, 68
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %49, 320
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = fmul fast float %350, 0x3F50624DE0000000
  %354 = fmul fast float %352, 0x3F50624DE0000000
  %355 = add i32 %49, 204
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = shl i32 %357, 4
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %357, 7
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %357, 22
  %365 = shl nuw nsw i32 %364, 5
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %49, 264
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %369, 8
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %369, 16
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = add i32 %49, 84
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = add i32 %49, 336
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = fmul fast float %392, 0x3F50624DE0000000
  %396 = fmul fast float %394, 0x3F50624DE0000000
  %397 = add i32 %49, 348
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 32
  %401 = icmp eq i32 %400, 0
  %402 = and i32 %399, 64
  %403 = icmp eq i32 %402, 0
  %404 = and i32 %399, 128
  %405 = icmp eq i32 %404, 0
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 2
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %425, label %410

; <label>:410                                     ; preds = %213
  %411 = add i32 %49, 504
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = add i32 %413, 0
  %415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %415, %dx.types.Handle %95, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = extractvalue %dx.types.ResRet.f32 %416, 3
  %421 = fmul fast float %420, %79
  %422 = fmul fast float %417, %80
  %423 = fmul fast float %418, %81
  %424 = fmul fast float %419, %82
  br label %425

; <label>:425                                     ; preds = %410, %213
  %426 = phi float [ %82, %213 ], [ %424, %410 ]
  %427 = phi float [ %81, %213 ], [ %423, %410 ]
  %428 = phi float [ %80, %213 ], [ %422, %410 ]
  %429 = phi float [ %79, %213 ], [ %421, %410 ]
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 2
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %453, label %434

; <label>:434                                     ; preds = %425
  %435 = add i32 %49, 44
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 1
  %439 = icmp ne i32 %438, 0
  %440 = select i1 %439, float %428, float 1.000000e+00
  %441 = add i32 %49, 60
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %443, 1
  %445 = icmp ne i32 %444, 0
  %446 = select i1 %445, float %427, float 1.000000e+00
  %447 = add i32 %49, 76
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = and i32 %449, 1
  %451 = icmp ne i32 %450, 0
  %452 = select i1 %451, float %426, float 1.000000e+00
  br label %453

; <label>:453                                     ; preds = %434, %425
  %454 = phi float [ %426, %425 ], [ %452, %434 ]
  %455 = phi float [ %427, %425 ], [ %446, %434 ]
  %456 = phi float [ %428, %425 ], [ %440, %434 ]
  %457 = lshr i32 %431, 20
  %458 = and i32 %457, 3
  %459 = add nuw nsw i32 %458, 1
  %460 = add i32 %49, 24
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = add i32 %49, 28
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = or i32 %465, %462
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %1228, label %468

; <label>:468                                     ; preds = %453
  %469 = and i32 %462, 262144
  %470 = icmp ne i32 %469, 0
  %471 = select i1 %470, float %52, float 1.000000e+00
  %472 = select i1 %470, float %53, float 0.000000e+00
  %473 = select i1 %470, float %54, float 0.000000e+00
  %474 = select i1 %470, float %55, float 1.000000e+00
  %475 = select i1 %470, float %56, float %77
  %476 = select i1 %470, float %57, float %78
  %477 = add i32 %49, 284
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = lshr i32 %479, 16
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = fmul fast float %481, 0x3F50624DE0000000
  %483 = add i32 %49, 88
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = lshr i32 %485, 16
  %487 = and i32 %486, 255
  %488 = lshr i32 %485, 24
  %489 = add i32 %49, 292
  %490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.i32 %490, 0
  %492 = and i32 %491, 65535
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = lshr i32 %491, 16
  %495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %494)  ; LegacyF16ToF32(value)
  %496 = add i32 %49, 32
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = lshr i32 %498, 22
  %500 = shl nuw nsw i32 %499, 5
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = shl i32 %498, 4
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = lshr i32 %498, 7
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 3
  %510 = fmul fast float %509, 1.000000e+03
  %511 = fmul fast float %269, %510
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = fadd fast float %512, %259
  %514 = fmul fast float %270, %510
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fadd fast float %515, %261
  %517 = fmul fast float %482, %510
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fmul fast float %518, 0x401921FB60000000
  %520 = fadd fast float %519, %501
  %521 = call float @dx.op.unary.f32(i32 13, float %520)  ; Sin(value)
  %522 = call float @dx.op.unary.f32(i32 12, float %520)  ; Cos(value)
  %523 = fsub fast float -0.000000e+00, %521
  %524 = fadd fast float %475, -5.000000e-01
  %525 = fadd fast float %476, -5.000000e-01
  %526 = fmul fast float %493, %524
  %527 = fmul fast float %495, %525
  %528 = fadd fast float %526, 5.000000e-01
  %529 = fadd fast float %527, 5.000000e-01
  %530 = fmul fast float %504, %528
  %531 = fmul fast float %507, %529
  %532 = fmul fast float %522, %530
  %533 = call float @dx.op.tertiary.f32(i32 46, float %523, float %531, float %532)  ; FMad(a,b,c)
  %534 = fmul fast float %521, %530
  %535 = call float @dx.op.tertiary.f32(i32 46, float %522, float %531, float %534)  ; FMad(a,b,c)
  %536 = fadd fast float %513, %533
  %537 = fadd fast float %516, %535
  %538 = icmp ugt i32 %487, 1
  %539 = icmp ugt i32 %485, 33554431
  %540 = or i1 %539, %538
  br i1 %540, label %541, label %566

; <label>:541                                     ; preds = %468
  %542 = add i32 %49, 228
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = lshr i32 %544, 16
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = fmul fast float %509, %546
  %548 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %549 = mul nuw nsw i32 %487, %488
  %550 = uitofp i32 %549 to float
  %551 = fmul fast float %548, %550
  %552 = call float @dx.op.unary.f32(i32 27, float %551)  ; Round_ni(value)
  %553 = fptoui float %552 to i32
  %554 = urem i32 %553, %487
  %555 = udiv i32 %553, %488
  %556 = call float @dx.op.unary.f32(i32 22, float %536)  ; Frc(value)
  %557 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %558 = uitofp i32 %554 to float
  %559 = uitofp i32 %555 to float
  %560 = fadd fast float %556, %558
  %561 = fadd fast float %557, %559
  %562 = uitofp i32 %487 to float
  %563 = uitofp i32 %488 to float
  %564 = fdiv fast float %560, %562
  %565 = fdiv fast float %561, %563
  br label %566

; <label>:566                                     ; preds = %541, %468
  %567 = phi float [ %564, %541 ], [ %536, %468 ]
  %568 = phi float [ %565, %541 ], [ %537, %468 ]
  %569 = and i32 %462, 16777216
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %680, label %571

; <label>:571                                     ; preds = %566
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = extractvalue %dx.types.CBufRet.f32 %572, 2
  %576 = fadd fast float %573, %153
  %577 = fadd fast float %574, %154
  %578 = fadd fast float %575, %155
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %581 = call float @dx.op.unary.f32(i32 7, float %580)  ; Saturate(value)
  %582 = icmp eq i32 %50, 65535
  br i1 %582, label %677, label %583

; <label>:583                                     ; preds = %571
  %584 = lshr i32 %50, 1
  %585 = shl i32 %584, 2
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %50, 1
  %589 = icmp ne i32 %588, 0
  %590 = lshr i32 %587, 16
  %591 = and i32 %587, 65535
  %592 = select i1 %589, i32 %590, i32 %591
  %593 = icmp eq i32 %592, 65535
  br i1 %593, label %673, label %594

; <label>:594                                     ; preds = %583
  %595 = mul nuw nsw i32 %592, 40
  %596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 0
  %598 = extractvalue %dx.types.ResRet.f32 %596, 1
  %599 = extractvalue %dx.types.ResRet.f32 %596, 2
  %600 = add nuw nsw i32 %595, 12
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = extractvalue %dx.types.ResRet.f32 %601, 2
  %605 = add nuw nsw i32 %595, 24
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = add nuw nsw i32 %595, 36
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = fsub fast float %576, %597
  %614 = fsub fast float %577, %598
  %615 = fsub fast float %578, %599
  %616 = fmul fast float %612, %613
  %617 = fmul fast float %612, %614
  %618 = fmul fast float %612, %615
  %619 = call float @dx.op.unary.f32(i32 27, float %616)  ; Round_ni(value)
  %620 = call float @dx.op.unary.f32(i32 27, float %617)  ; Round_ni(value)
  %621 = call float @dx.op.unary.f32(i32 27, float %618)  ; Round_ni(value)
  %622 = fadd fast float %619, 5.000000e-01
  %623 = fadd fast float %620, 5.000000e-01
  %624 = fadd fast float %621, 5.000000e-01
  %625 = fmul fast float %622, %602
  %626 = fmul fast float %623, %603
  %627 = fmul fast float %624, %604
  %628 = shl i32 %50, 2
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = add i32 %630, 0
  %632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %633 = call float @dx.op.unary.f32(i32 22, float %625)  ; Frc(value)
  %634 = call float @dx.op.unary.f32(i32 22, float %626)  ; Frc(value)
  %635 = call float @dx.op.unary.f32(i32 22, float %627)  ; Frc(value)
  %636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %632, %dx.types.Handle %44, float %633, float %634, float %635, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %637 = extractvalue %dx.types.ResRet.f32 %636, 0
  %638 = extractvalue %dx.types.ResRet.f32 %636, 1
  %639 = extractvalue %dx.types.ResRet.f32 %636, 2
  %640 = fmul fast float %637, 1.023000e+03
  %641 = fmul fast float %638, 1.023000e+03
  %642 = fmul fast float %639, 1.023000e+03
  %643 = fadd fast float %640, 5.000000e-01
  %644 = fadd fast float %641, 5.000000e-01
  %645 = fadd fast float %642, 5.000000e-01
  %646 = call float @dx.op.unary.f32(i32 27, float %643)  ; Round_ni(value)
  %647 = call float @dx.op.unary.f32(i32 27, float %644)  ; Round_ni(value)
  %648 = call float @dx.op.unary.f32(i32 27, float %645)  ; Round_ni(value)
  %649 = fsub fast float %616, %619
  %650 = fsub fast float %617, %620
  %651 = fsub fast float %618, %621
  %652 = fmul fast float %649, 7.500000e-01
  %653 = fmul fast float %650, 7.500000e-01
  %654 = fmul fast float %651, 7.500000e-01
  %655 = fadd fast float %619, 1.250000e-01
  %656 = fadd fast float %655, %652
  %657 = fadd fast float %656, %646
  %658 = fadd fast float %620, 1.250000e-01
  %659 = fadd fast float %658, %653
  %660 = fadd fast float %659, %647
  %661 = fadd fast float %621, 1.250000e-01
  %662 = fadd fast float %661, %654
  %663 = fadd fast float %662, %648
  %664 = fmul fast float %657, %607
  %665 = fmul fast float %660, %608
  %666 = fmul fast float %663, %609
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = add i32 %668, 0
  %670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %669, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %670, %dx.types.Handle %42, float %664, float %665, float %666, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %672 = extractvalue %dx.types.ResRet.f32 %671, 0
  br label %673

; <label>:673                                     ; preds = %594, %583
  %674 = phi float [ %672, %594 ], [ -1.000000e+00, %583 ]
  %675 = fadd fast float %674, %581
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  br label %677

; <label>:677                                     ; preds = %673, %571
  %678 = phi float [ %676, %673 ], [ %581, %571 ]
  %679 = fmul fast float %678, %429
  br label %680

; <label>:680                                     ; preds = %677, %566
  %681 = phi float [ %679, %677 ], [ %429, %566 ]
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = and i32 %683, 256
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %732, label %686

; <label>:686                                     ; preds = %680
  %687 = add i32 %49, 440
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = add i32 %689, 0
  %691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %690, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %692 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %691, %dx.types.Handle %95, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %693 = extractvalue %dx.types.ResRet.f32 %692, 0
  %694 = add i32 %49, 100
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %694, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = shl i32 %696, 4
  %698 = and i32 %697, 32752
  %699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %698)  ; LegacyF16ToF32(value)
  %700 = lshr i32 %696, 7
  %701 = and i32 %700, 32752
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = fsub fast float 1.000000e+00, %681
  %704 = call float @dx.op.binary.f32(i32 35, float %703, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %705 = bitcast float %681 to i32
  %706 = sitofp i32 %705 to float
  %707 = fadd fast float %706, 0xC1CFBF8940000000
  %708 = fmul fast float %702, %707
  %709 = fadd fast float %708, 0x41CFBF8940000000
  %710 = fptosi float %709 to i32
  %711 = bitcast i32 %710 to float
  %712 = bitcast float %704 to i32
  %713 = sitofp i32 %712 to float
  %714 = fadd fast float %713, 0xC1CFBF8940000000
  %715 = fmul fast float %714, %702
  %716 = fadd fast float %715, 0x41CFBF8940000000
  %717 = fptosi float %716 to i32
  %718 = bitcast i32 %717 to float
  %719 = fmul fast float %711, %699
  %720 = fmul fast float %718, %699
  %721 = fsub fast float %704, %719
  %722 = fadd fast float %720, %704
  %723 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %724 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %725 = fsub fast float %693, %723
  %726 = fsub fast float %724, %723
  %727 = bitcast float %726 to i32
  %728 = sub nsw i32 2129859010, %727
  %729 = bitcast i32 %728 to float
  %730 = fmul fast float %729, %725
  %731 = call float @dx.op.unary.f32(i32 7, float %730)  ; Saturate(value)
  br label %732

; <label>:732                                     ; preds = %686, %680
  %733 = phi float [ %731, %686 ], [ %681, %680 ]
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = and i32 %735, 128
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %754, label %738

; <label>:738                                     ; preds = %732
  %739 = add i32 %49, 424
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = add i32 %741, 0
  %743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %742, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %744 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %743, %dx.types.Handle %95, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 524288
  %749 = icmp ne i32 %748, 0
  %750 = fcmp fast ogt float %745, 0x3FE0101020000000
  %751 = select i1 %750, float 1.000000e+00, float 0.000000e+00
  %752 = select i1 %749, float %751, float %745
  %753 = fmul fast float %752, %733
  br label %754

; <label>:754                                     ; preds = %738, %732
  %755 = phi float [ %753, %738 ], [ %733, %732 ]
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 16
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %958, label %760

; <label>:760                                     ; preds = %754
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = add i32 %49, 376
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %765, 0
  %767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %768 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %767, %dx.types.Handle %94, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = extractvalue %dx.types.ResRet.f32 %768, 1
  %771 = extractvalue %dx.types.ResRet.f32 %768, 2
  %772 = extractvalue %dx.types.ResRet.f32 %768, 3
  %773 = and i32 %762, 255
  %774 = uitofp i32 %773 to float
  %775 = lshr i32 %762, 8
  %776 = and i32 %775, 255
  %777 = uitofp i32 %776 to float
  %778 = fmul fast float %772, %774
  %779 = fadd fast float %778, %777
  %780 = fmul fast float %779, 0x3F70101000000000
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = and i32 %782, 512
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %793, label %785

; <label>:785                                     ; preds = %760
  %786 = add i32 %49, 456
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = add i32 %788, 0
  %790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %789, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %791 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %790, %dx.types.Handle %95, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %792 = extractvalue %dx.types.ResRet.f32 %791, 0
  br label %793

; <label>:793                                     ; preds = %785, %760
  %794 = phi float [ %792, %785 ], [ 1.000000e+00, %760 ]
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = and i32 %796, 33554432
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %905, label %799

; <label>:799                                     ; preds = %793
  %800 = add i32 %49, 224
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = and i32 %802, 65535
  %804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %803)  ; LegacyF16ToF32(value)
  %805 = lshr i32 %802, 16
  %806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %805)  ; LegacyF16ToF32(value)
  %807 = add i32 %49, 228
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 65535
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = lshr i32 %813, 24
  %815 = uitofp i32 %814 to float
  %816 = fmul fast float %815, 0x3F70101020000000
  %817 = and i32 %813, 255
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = lshr i32 %813, 8
  %821 = and i32 %820, 255
  %822 = uitofp i32 %821 to float
  %823 = fmul fast float %822, 0x3F70101020000000
  %824 = lshr i32 %813, 16
  %825 = and i32 %824, 255
  %826 = uitofp i32 %825 to float
  %827 = fmul fast float %826, 0x3F70101020000000
  %828 = add i32 %49, 220
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = lshr i32 %830, 24
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101020000000
  %834 = and i32 %830, 255
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = lshr i32 %830, 8
  %838 = and i32 %837, 255
  %839 = uitofp i32 %838 to float
  %840 = fmul fast float %839, 0x3F70101020000000
  %841 = lshr i32 %830, 16
  %842 = and i32 %841, 255
  %843 = uitofp i32 %842 to float
  %844 = fmul fast float %843, 0x3F70101020000000
  %845 = bitcast float %769 to i32
  %846 = ashr i32 %845, 1
  %847 = sub nsw i32 1597463174, %846
  %848 = bitcast i32 %847 to float
  %849 = fmul fast float %769, 5.000000e-01
  %850 = fmul fast float %848, %848
  %851 = fmul fast float %850, %849
  %852 = fsub fast float 1.500000e+00, %851
  %853 = fmul fast float %848, %769
  %854 = fmul fast float %853, %852
  %855 = bitcast float %770 to i32
  %856 = ashr i32 %855, 1
  %857 = sub nsw i32 1597463174, %856
  %858 = bitcast i32 %857 to float
  %859 = fmul fast float %770, 5.000000e-01
  %860 = fmul fast float %858, %858
  %861 = fmul fast float %860, %859
  %862 = fsub fast float 1.500000e+00, %861
  %863 = fmul fast float %858, %770
  %864 = fmul fast float %863, %862
  %865 = bitcast float %771 to i32
  %866 = ashr i32 %865, 1
  %867 = sub nsw i32 1597463174, %866
  %868 = bitcast i32 %867 to float
  %869 = fmul fast float %771, 5.000000e-01
  %870 = fmul fast float %868, %868
  %871 = fmul fast float %870, %869
  %872 = fsub fast float 1.500000e+00, %871
  %873 = fmul fast float %868, %771
  %874 = fmul fast float %873, %872
  %875 = fsub fast float %854, %836
  %876 = fsub fast float %864, %840
  %877 = fsub fast float %874, %844
  %878 = fmul fast float %875, %804
  %879 = fmul fast float %876, %806
  %880 = fmul fast float %877, %811
  %881 = fadd fast float %878, %819
  %882 = fadd fast float %879, %823
  %883 = fadd fast float %880, %827
  %884 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %885 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %886 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %887 = fmul fast float %884, %884
  %888 = fmul fast float %885, %885
  %889 = fmul fast float %886, %886
  %890 = fsub fast float %887, %769
  %891 = fsub fast float %888, %770
  %892 = fsub fast float %889, %771
  %893 = fmul fast float %890, %794
  %894 = fmul fast float %891, %794
  %895 = fmul fast float %892, %794
  %896 = fadd fast float %893, %769
  %897 = fadd fast float %894, %770
  %898 = fadd fast float %895, %771
  %899 = fadd fast float %816, %780
  %900 = fsub fast float %899, %833
  %901 = call float @dx.op.unary.f32(i32 7, float %900)  ; Saturate(value)
  %902 = fsub fast float %901, %780
  %903 = fmul fast float %902, %794
  %904 = fadd fast float %903, %780
  br label %958

; <label>:905                                     ; preds = %793
  %906 = and i32 %796, 134217728
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %942, label %908

; <label>:908                                     ; preds = %905
  %909 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %910 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %911 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %912 = fadd fast float %909, -5.000000e-01
  %913 = fadd fast float %910, -5.000000e-01
  %914 = fadd fast float %911, -5.000000e-01
  %915 = fmul fast float %912, %794
  %916 = fmul fast float %913, %794
  %917 = fmul fast float %914, %794
  %918 = fadd fast float %915, 5.000000e-01
  %919 = fadd fast float %916, 5.000000e-01
  %920 = fadd fast float %917, 5.000000e-01
  %921 = call float @dx.op.unary.f32(i32 24, float %769)  ; Sqrt(value)
  %922 = call float @dx.op.unary.f32(i32 24, float %770)  ; Sqrt(value)
  %923 = call float @dx.op.unary.f32(i32 24, float %771)  ; Sqrt(value)
  %924 = fmul fast float %918, 2.000000e+00
  %925 = fsub fast float 1.000000e+00, %924
  %926 = fmul fast float %925, %921
  %927 = fadd fast float %926, %924
  %928 = fmul fast float %927, %921
  %929 = fmul fast float %919, 2.000000e+00
  %930 = fsub fast float 1.000000e+00, %929
  %931 = fmul fast float %930, %922
  %932 = fadd fast float %931, %929
  %933 = fmul fast float %932, %922
  %934 = fmul fast float %920, 2.000000e+00
  %935 = fsub fast float 1.000000e+00, %934
  %936 = fmul fast float %935, %923
  %937 = fadd fast float %936, %934
  %938 = fmul fast float %937, %923
  %939 = fmul fast float %928, %928
  %940 = fmul fast float %933, %933
  %941 = fmul fast float %938, %938
  br label %958

; <label>:942                                     ; preds = %905
  %943 = fmul fast float %246, %246
  %944 = fmul fast float %250, %250
  %945 = fmul fast float %254, %254
  %946 = fadd fast float %943, -1.000000e+00
  %947 = fadd fast float %944, -1.000000e+00
  %948 = fadd fast float %945, -1.000000e+00
  %949 = fmul fast float %794, %946
  %950 = fmul fast float %794, %947
  %951 = fmul fast float %794, %948
  %952 = fadd fast float %949, 1.000000e+00
  %953 = fadd fast float %950, 1.000000e+00
  %954 = fadd fast float %951, 1.000000e+00
  %955 = fmul fast float %952, %769
  %956 = fmul fast float %953, %770
  %957 = fmul fast float %954, %771
  br label %958

; <label>:958                                     ; preds = %942, %908, %799, %754
  %959 = phi float [ %904, %799 ], [ %780, %908 ], [ %780, %942 ], [ 0x3FA23C0BE0000000, %754 ]
  %960 = phi float [ %896, %799 ], [ %939, %908 ], [ %955, %942 ], [ 1.000000e+00, %754 ]
  %961 = phi float [ %897, %799 ], [ %940, %908 ], [ %956, %942 ], [ 1.000000e+00, %754 ]
  %962 = phi float [ %898, %799 ], [ %941, %908 ], [ %957, %942 ], [ 1.000000e+00, %754 ]
  %963 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.i32 %963, 1
  %965 = and i32 %964, 1
  %966 = icmp ne i32 %965, 0
  %967 = add i32 %49, 356
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 32
  %971 = icmp ne i32 %970, 0
  %972 = and i1 %966, %971
  %973 = select i1 %972, float 1.000000e+00, float %960
  %974 = select i1 %972, float 0x3FD3333340000000, float %961
  %975 = select i1 %972, float 0x3FD3333340000000, float %962
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = and i32 %977, 32
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %1052, label %980

; <label>:980                                     ; preds = %958
  %981 = add i32 %49, 92
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = add i32 %49, 392
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = add i32 %986, 0
  %988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %989 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %988, %dx.types.Handle %94, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = extractvalue %dx.types.ResRet.f32 %989, 1
  %992 = extractvalue %dx.types.ResRet.f32 %989, 2
  %993 = extractvalue %dx.types.ResRet.f32 %989, 3
  %994 = and i32 %983, 255
  %995 = uitofp i32 %994 to float
  %996 = lshr i32 %983, 8
  %997 = and i32 %996, 255
  %998 = uitofp i32 %997 to float
  %999 = lshr i32 %983, 16
  %1000 = and i32 %999, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = fmul fast float %1001, 0x3F70101000000000
  %1003 = fmul fast float %990, %995
  %1004 = fadd fast float %1003, %998
  %1005 = fmul fast float %1004, 0x3F70101000000000
  %1006 = fadd fast float %991, -5.000000e-01
  %1007 = fadd fast float %993, -5.000000e-01
  %1008 = fmul fast float %1006, %1002
  %1009 = fmul fast float %1007, %1002
  %1010 = fadd fast float %1008, 5.000000e-01
  %1011 = fadd fast float %1009, 5.000000e-01
  %1012 = fmul fast float %1010, 2.000000e+00
  %1013 = fadd fast float %1012, -1.000000e+00
  %1014 = fmul fast float %1011, 2.000000e+00
  %1015 = fadd fast float %1014, -1.000000e+00
  %1016 = fadd fast float %1013, %1015
  %1017 = fmul fast float %1016, 5.000000e-01
  %1018 = fsub fast float %1013, %1015
  %1019 = fmul fast float %1018, 5.000000e-01
  %1020 = call float @dx.op.unary.f32(i32 6, float %1017)  ; FAbs(value)
  %1021 = fsub fast float 1.000000e+00, %1020
  %1022 = call float @dx.op.unary.f32(i32 6, float %1019)  ; FAbs(value)
  %1023 = fsub fast float %1021, %1022
  %1024 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1019, float %1023, float %1017, float %1019, float %1023)  ; Dot3(ax,ay,az,bx,by,bz)
  %1025 = call float @dx.op.unary.f32(i32 25, float %1024)  ; Rsqrt(value)
  %1026 = fmul fast float %1017, %1025
  %1027 = fmul fast float %1019, %1025
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = and i32 %1029, 67108864
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1048, label %1032

; <label>:1032                                    ; preds = %980
  %1033 = add i32 %49, 280
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = and i32 %1035, 65535
  %1037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1036)  ; LegacyF16ToF32(value)
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 65535
  %1041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1040)  ; LegacyF16ToF32(value)
  %1042 = lshr i32 %1035, 16
  %1043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1042)  ; LegacyF16ToF32(value)
  %1044 = fsub fast float %1005, %1043
  %1045 = fmul fast float %1044, %1037
  %1046 = fadd fast float %1045, %1041
  %1047 = call float @dx.op.unary.f32(i32 7, float %1046)  ; Saturate(value)
  br label %1048

; <label>:1048                                    ; preds = %1032, %980
  %1049 = phi float [ %1047, %1032 ], [ %1005, %980 ]
  %1050 = call float @dx.op.dot2.f32(i32 54, float %1026, float %1027, float %471, float %472)  ; Dot2(ax,ay,bx,by)
  %1051 = call float @dx.op.dot2.f32(i32 54, float %1026, float %1027, float %473, float %474)  ; Dot2(ax,ay,bx,by)
  br label %1052

; <label>:1052                                    ; preds = %1048, %958
  %1053 = phi float [ %1049, %1048 ], [ 0x3FD6666660000000, %958 ]
  %1054 = phi float [ %1050, %1048 ], [ 0.000000e+00, %958 ]
  %1055 = phi float [ %1051, %1048 ], [ 0.000000e+00, %958 ]
  %1056 = phi float [ %992, %1048 ], [ 1.000000e+00, %958 ]
  %1057 = add i32 %49, 160
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = lshr i32 %1059, 22
  %1061 = shl nuw nsw i32 %1060, 5
  %1062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1061)  ; LegacyF16ToF32(value)
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = and i32 %1064, 64
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1100, label %1067

; <label>:1067                                    ; preds = %1052
  %1068 = add i32 %49, 408
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = add i32 %1070, 0
  %1072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = and i32 %1074, 131072
  %1076 = icmp eq i32 %1075, 0
  %1077 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1072, %dx.types.Handle %94, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = extractvalue %dx.types.ResRet.f32 %1077, 1
  %1080 = extractvalue %dx.types.ResRet.f32 %1077, 2
  %1081 = fmul fast float %1078, %234
  %1082 = fmul fast float %1079, %237
  %1083 = fmul fast float %1080, %240
  br i1 %1076, label %1090, label %1084

; <label>:1084                                    ; preds = %1067
  %1085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1086 = extractvalue %dx.types.CBufRet.f32 %1085, 0
  %1087 = fmul fast float %1086, %1081
  %1088 = fmul fast float %1086, %1082
  %1089 = fmul fast float %1086, %1083
  br label %1090

; <label>:1090                                    ; preds = %1084, %1067
  %1091 = phi float [ %1087, %1084 ], [ %1081, %1067 ]
  %1092 = phi float [ %1088, %1084 ], [ %1082, %1067 ]
  %1093 = phi float [ %1089, %1084 ], [ %1083, %1067 ]
  %1094 = fmul fast float %1091, %1062
  %1095 = select i1 %214, float %1094, float %1091
  %1096 = call float @dx.op.dot3.f32(i32 55, float %1095, float %1092, float %1093, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1097 = select i1 %214, float 0.000000e+00, float %1091
  %1098 = select i1 %214, float %1096, float %1092
  %1099 = select i1 %214, float 0.000000e+00, float %1093
  br label %1100

; <label>:1100                                    ; preds = %1090, %1052
  %1101 = phi float [ %1097, %1090 ], [ 0.000000e+00, %1052 ]
  %1102 = phi float [ %1098, %1090 ], [ 0.000000e+00, %1052 ]
  %1103 = phi float [ %1099, %1090 ], [ 0.000000e+00, %1052 ]
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = and i32 %1105, 1024
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1138, label %1108

; <label>:1108                                    ; preds = %1100
  %1109 = add i32 %49, 152
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 255
  %1113 = uitofp i32 %1112 to float
  %1114 = fmul fast float %1113, 0x3F70101020000000
  %1115 = lshr i32 %1111, 8
  %1116 = and i32 %1115, 255
  %1117 = uitofp i32 %1116 to float
  %1118 = fmul fast float %1117, 0x3F70101020000000
  %1119 = lshr i32 %1111, 16
  %1120 = and i32 %1119, 255
  %1121 = uitofp i32 %1120 to float
  %1122 = fmul fast float %1121, 0x3F70101020000000
  %1123 = fmul fast float %1114, %1114
  %1124 = fmul fast float %1118, %1118
  %1125 = fmul fast float %1122, %1122
  %1126 = add i32 %49, 472
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1126, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = add i32 %1128, 0
  %1130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1129, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1131 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1130, %dx.types.Handle %95, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1132 = extractvalue %dx.types.ResRet.f32 %1131, 0
  %1133 = extractvalue %dx.types.ResRet.f32 %1131, 1
  %1134 = extractvalue %dx.types.ResRet.f32 %1131, 2
  %1135 = fmul fast float %1123, %1132
  %1136 = fmul fast float %1124, %1133
  %1137 = fmul fast float %1125, %1134
  br label %1138

; <label>:1138                                    ; preds = %1108, %1100
  %1139 = phi float [ %1135, %1108 ], [ 0.000000e+00, %1100 ]
  %1140 = phi float [ %1136, %1108 ], [ 0.000000e+00, %1100 ]
  %1141 = phi float [ %1137, %1108 ], [ 0.000000e+00, %1100 ]
  %1142 = fcmp fast ogt float %1139, 0.000000e+00
  %1143 = fcmp fast ogt float %1140, 0.000000e+00
  %1144 = fcmp fast ogt float %1141, 0.000000e+00
  %1145 = call float @dx.op.unary.f32(i32 23, float %1139)  ; Log(value)
  %1146 = call float @dx.op.unary.f32(i32 23, float %1140)  ; Log(value)
  %1147 = call float @dx.op.unary.f32(i32 23, float %1141)  ; Log(value)
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = lshr i32 %1149, 7
  %1151 = and i32 %1150, 32752
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = fmul fast float %1145, 0xBFE62E4300000000
  %1154 = fmul fast float %1153, %1152
  %1155 = fmul fast float %1146, 0xBFE62E4300000000
  %1156 = fmul fast float %1155, %1152
  %1157 = fmul fast float %1147, 0xBFE62E4300000000
  %1158 = fmul fast float %1157, %1152
  %1159 = select i1 %1142, float %1154, float 1.270000e+02
  %1160 = select i1 %1143, float %1156, float 1.270000e+02
  %1161 = select i1 %1144, float %1158, float 1.270000e+02
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = and i32 %1163, 10240
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1210, label %1166

; <label>:1166                                    ; preds = %1138
  %1167 = add i32 %49, 488
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = add i32 %1169, 0
  %1171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1171, %dx.types.Handle %95, float %567, float %568, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 1
  %1174 = extractvalue %dx.types.ResRet.f32 %1172, 3
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = and i32 %1176, 1048576
  %1178 = icmp ne i32 %1177, 0
  %1179 = and i32 %1176, 8192
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1196, label %1181

; <label>:1181                                    ; preds = %1166
  %1182 = extractvalue %dx.types.ResRet.f32 %1172, 2
  %1183 = select i1 %1178, float %1182, float %1173
  %1184 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1185 = select i1 %1178, float %1184, float %1173
  %1186 = add i32 %49, 96
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = lshr i32 %1188, 16
  %1190 = and i32 %1189, 255
  %1191 = uitofp i32 %1190 to float
  %1192 = fmul fast float %1191, 0x3F80101020000000
  %1193 = fmul fast float %1192, %1185
  %1194 = fmul fast float %1192, %1173
  %1195 = fmul fast float %1192, %1183
  br label %1196

; <label>:1196                                    ; preds = %1181, %1166
  %1197 = phi float [ %1193, %1181 ], [ 0.000000e+00, %1166 ]
  %1198 = phi float [ %1194, %1181 ], [ 0.000000e+00, %1166 ]
  %1199 = phi float [ %1195, %1181 ], [ 0.000000e+00, %1166 ]
  %1200 = and i32 %1176, 2048
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1210, label %1202

; <label>:1202                                    ; preds = %1196
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = shl i32 %1204, 4
  %1206 = and i32 %1205, 32752
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = fmul fast float %1207, %1174
  %1209 = call float @dx.op.binary.f32(i32 35, float %1208, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1210

; <label>:1210                                    ; preds = %1202, %1196, %1138
  %1211 = phi float [ %1197, %1202 ], [ %1197, %1196 ], [ 0.000000e+00, %1138 ]
  %1212 = phi float [ %1198, %1202 ], [ %1198, %1196 ], [ 0.000000e+00, %1138 ]
  %1213 = phi float [ %1199, %1202 ], [ %1199, %1196 ], [ 0.000000e+00, %1138 ]
  %1214 = phi float [ %1209, %1202 ], [ 0x3F70101020000000, %1196 ], [ 0x3F70101020000000, %1138 ]
  %1215 = add i32 %49, 96
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = and i32 %1217, 255
  %1219 = uitofp i32 %1218 to float
  %1220 = lshr i32 %1217, 8
  %1221 = and i32 %1220, 255
  %1222 = uitofp i32 %1221 to float
  %1223 = call float @dx.op.dot3.f32(i32 55, float %973, float %974, float %975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1224 = fmul fast float %1222, %1223
  %1225 = fadd fast float %1224, %1219
  %1226 = fmul fast float %1225, 0x3F70101020000000
  %1227 = call float @dx.op.unary.f32(i32 7, float %1226)  ; Saturate(value)
  br label %1228

; <label>:1228                                    ; preds = %1210, %453
  %1229 = phi float [ 0.000000e+00, %453 ], [ %1054, %1210 ]
  %1230 = phi float [ 0.000000e+00, %453 ], [ %1055, %1210 ]
  %1231 = phi float [ 0.000000e+00, %453 ], [ %973, %1210 ]
  %1232 = phi float [ 0.000000e+00, %453 ], [ %974, %1210 ]
  %1233 = phi float [ 0.000000e+00, %453 ], [ %975, %1210 ]
  %1234 = phi float [ 0.000000e+00, %453 ], [ %1211, %1210 ]
  %1235 = phi float [ 0.000000e+00, %453 ], [ %1212, %1210 ]
  %1236 = phi float [ 0.000000e+00, %453 ], [ %1213, %1210 ]
  %1237 = phi float [ 0.000000e+00, %453 ], [ %1159, %1210 ]
  %1238 = phi float [ 0.000000e+00, %453 ], [ %1160, %1210 ]
  %1239 = phi float [ 0.000000e+00, %453 ], [ %1161, %1210 ]
  %1240 = phi float [ 0.000000e+00, %453 ], [ %1101, %1210 ]
  %1241 = phi float [ 0.000000e+00, %453 ], [ %1102, %1210 ]
  %1242 = phi float [ 0.000000e+00, %453 ], [ %1103, %1210 ]
  %1243 = phi float [ 0.000000e+00, %453 ], [ %959, %1210 ]
  %1244 = phi float [ 0.000000e+00, %453 ], [ %755, %1210 ]
  %1245 = phi float [ 0.000000e+00, %453 ], [ %1053, %1210 ]
  %1246 = phi float [ 0.000000e+00, %453 ], [ %1056, %1210 ]
  %1247 = phi float [ 0.000000e+00, %453 ], [ %1214, %1210 ]
  %1248 = phi float [ 0.000000e+00, %453 ], [ %1227, %1210 ]
  br i1 %401, label %2286, label %1249

; <label>:1249                                    ; preds = %1228
  %1250 = icmp ult i32 %459, 2
  %1251 = add i32 %49, 40
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = add i32 %49, 44
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = or i32 %1256, %1253
  %1258 = icmp eq i32 %1257, 0
  br i1 %1258, label %2286, label %1259

; <label>:1259                                    ; preds = %1249
  %1260 = and i32 %1253, 262144
  %1261 = icmp ne i32 %1260, 0
  %1262 = select i1 %1261, float %52, float 1.000000e+00
  %1263 = select i1 %1261, float %53, float 0.000000e+00
  %1264 = select i1 %1261, float %54, float 0.000000e+00
  %1265 = select i1 %1261, float %55, float 1.000000e+00
  %1266 = select i1 %1261, float %56, float %77
  %1267 = select i1 %1261, float %57, float %78
  %1268 = add i32 %49, 300
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = lshr i32 %1270, 16
  %1272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1271)  ; LegacyF16ToF32(value)
  %1273 = fmul fast float %1272, 0x3F50624DE0000000
  %1274 = add i32 %49, 104
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = lshr i32 %1276, 16
  %1278 = and i32 %1277, 255
  %1279 = lshr i32 %1276, 24
  %1280 = add i32 %49, 308
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 65535
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = lshr i32 %1282, 16
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = add i32 %49, 48
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = lshr i32 %1289, 22
  %1291 = shl nuw nsw i32 %1290, 5
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = shl i32 %1289, 4
  %1294 = and i32 %1293, 32752
  %1295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1294)  ; LegacyF16ToF32(value)
  %1296 = lshr i32 %1289, 7
  %1297 = and i32 %1296, 32752
  %1298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1297)  ; LegacyF16ToF32(value)
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 3
  %1301 = fmul fast float %1300, 1.000000e+03
  %1302 = fmul fast float %311, %1301
  %1303 = call float @dx.op.unary.f32(i32 22, float %1302)  ; Frc(value)
  %1304 = fadd fast float %1303, %301
  %1305 = fmul fast float %312, %1301
  %1306 = call float @dx.op.unary.f32(i32 22, float %1305)  ; Frc(value)
  %1307 = fadd fast float %1306, %303
  %1308 = fmul fast float %1273, %1301
  %1309 = call float @dx.op.unary.f32(i32 22, float %1308)  ; Frc(value)
  %1310 = fmul fast float %1309, 0x401921FB60000000
  %1311 = fadd fast float %1310, %1292
  %1312 = call float @dx.op.unary.f32(i32 13, float %1311)  ; Sin(value)
  %1313 = call float @dx.op.unary.f32(i32 12, float %1311)  ; Cos(value)
  %1314 = fsub fast float -0.000000e+00, %1312
  %1315 = fadd fast float %1266, -5.000000e-01
  %1316 = fadd fast float %1267, -5.000000e-01
  %1317 = fmul fast float %1284, %1315
  %1318 = fmul fast float %1286, %1316
  %1319 = fadd fast float %1317, 5.000000e-01
  %1320 = fadd fast float %1318, 5.000000e-01
  %1321 = fmul fast float %1295, %1319
  %1322 = fmul fast float %1298, %1320
  %1323 = fmul fast float %1313, %1321
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %1322, float %1323)  ; FMad(a,b,c)
  %1325 = fmul fast float %1312, %1321
  %1326 = call float @dx.op.tertiary.f32(i32 46, float %1313, float %1322, float %1325)  ; FMad(a,b,c)
  %1327 = fadd fast float %1304, %1324
  %1328 = fadd fast float %1307, %1326
  %1329 = icmp ugt i32 %1278, 1
  %1330 = icmp ugt i32 %1276, 33554431
  %1331 = or i1 %1330, %1329
  br i1 %1331, label %1332, label %1357

; <label>:1332                                    ; preds = %1259
  %1333 = add i32 %49, 244
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = lshr i32 %1335, 16
  %1337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1336)  ; LegacyF16ToF32(value)
  %1338 = fmul fast float %1300, %1337
  %1339 = call float @dx.op.unary.f32(i32 22, float %1338)  ; Frc(value)
  %1340 = mul nuw nsw i32 %1278, %1279
  %1341 = uitofp i32 %1340 to float
  %1342 = fmul fast float %1339, %1341
  %1343 = call float @dx.op.unary.f32(i32 27, float %1342)  ; Round_ni(value)
  %1344 = fptoui float %1343 to i32
  %1345 = urem i32 %1344, %1278
  %1346 = udiv i32 %1344, %1279
  %1347 = call float @dx.op.unary.f32(i32 22, float %1327)  ; Frc(value)
  %1348 = call float @dx.op.unary.f32(i32 22, float %1328)  ; Frc(value)
  %1349 = uitofp i32 %1345 to float
  %1350 = uitofp i32 %1346 to float
  %1351 = fadd fast float %1347, %1349
  %1352 = fadd fast float %1348, %1350
  %1353 = uitofp i32 %1278 to float
  %1354 = uitofp i32 %1279 to float
  %1355 = fdiv fast float %1351, %1353
  %1356 = fdiv fast float %1352, %1354
  br label %1357

; <label>:1357                                    ; preds = %1332, %1259
  %1358 = phi float [ %1355, %1332 ], [ %1327, %1259 ]
  %1359 = phi float [ %1356, %1332 ], [ %1328, %1259 ]
  %1360 = and i32 %1253, 16777216
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1471, label %1362

; <label>:1362                                    ; preds = %1357
  %1363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1364 = extractvalue %dx.types.CBufRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.CBufRet.f32 %1363, 1
  %1366 = extractvalue %dx.types.CBufRet.f32 %1363, 2
  %1367 = fadd fast float %1364, %153
  %1368 = fadd fast float %1365, %154
  %1369 = fadd fast float %1366, %155
  %1370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1371 = extractvalue %dx.types.CBufRet.f32 %1370, 0
  %1372 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1373 = icmp eq i32 %50, 65535
  br i1 %1373, label %1468, label %1374

; <label>:1374                                    ; preds = %1362
  %1375 = lshr i32 %50, 1
  %1376 = shl i32 %1375, 2
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = and i32 %50, 1
  %1380 = icmp ne i32 %1379, 0
  %1381 = lshr i32 %1378, 16
  %1382 = and i32 %1378, 65535
  %1383 = select i1 %1380, i32 %1381, i32 %1382
  %1384 = icmp eq i32 %1383, 65535
  br i1 %1384, label %1464, label %1385

; <label>:1385                                    ; preds = %1374
  %1386 = mul nuw nsw i32 %1383, 40
  %1387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.ResRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.ResRet.f32 %1387, 2
  %1391 = add nuw nsw i32 %1386, 12
  %1392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1391, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.f32 %1392, 0
  %1394 = extractvalue %dx.types.ResRet.f32 %1392, 1
  %1395 = extractvalue %dx.types.ResRet.f32 %1392, 2
  %1396 = add nuw nsw i32 %1386, 24
  %1397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.f32 %1397, 0
  %1399 = extractvalue %dx.types.ResRet.f32 %1397, 1
  %1400 = extractvalue %dx.types.ResRet.f32 %1397, 2
  %1401 = add nuw nsw i32 %1386, 36
  %1402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.f32 %1402, 0
  %1404 = fsub fast float %1367, %1388
  %1405 = fsub fast float %1368, %1389
  %1406 = fsub fast float %1369, %1390
  %1407 = fmul fast float %1403, %1404
  %1408 = fmul fast float %1403, %1405
  %1409 = fmul fast float %1403, %1406
  %1410 = call float @dx.op.unary.f32(i32 27, float %1407)  ; Round_ni(value)
  %1411 = call float @dx.op.unary.f32(i32 27, float %1408)  ; Round_ni(value)
  %1412 = call float @dx.op.unary.f32(i32 27, float %1409)  ; Round_ni(value)
  %1413 = fadd fast float %1410, 5.000000e-01
  %1414 = fadd fast float %1411, 5.000000e-01
  %1415 = fadd fast float %1412, 5.000000e-01
  %1416 = fmul fast float %1413, %1393
  %1417 = fmul fast float %1414, %1394
  %1418 = fmul fast float %1415, %1395
  %1419 = shl i32 %50, 2
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = add i32 %1421, 0
  %1423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1424 = call float @dx.op.unary.f32(i32 22, float %1416)  ; Frc(value)
  %1425 = call float @dx.op.unary.f32(i32 22, float %1417)  ; Frc(value)
  %1426 = call float @dx.op.unary.f32(i32 22, float %1418)  ; Frc(value)
  %1427 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1423, %dx.types.Handle %44, float %1424, float %1425, float %1426, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1428 = extractvalue %dx.types.ResRet.f32 %1427, 0
  %1429 = extractvalue %dx.types.ResRet.f32 %1427, 1
  %1430 = extractvalue %dx.types.ResRet.f32 %1427, 2
  %1431 = fmul fast float %1428, 1.023000e+03
  %1432 = fmul fast float %1429, 1.023000e+03
  %1433 = fmul fast float %1430, 1.023000e+03
  %1434 = fadd fast float %1431, 5.000000e-01
  %1435 = fadd fast float %1432, 5.000000e-01
  %1436 = fadd fast float %1433, 5.000000e-01
  %1437 = call float @dx.op.unary.f32(i32 27, float %1434)  ; Round_ni(value)
  %1438 = call float @dx.op.unary.f32(i32 27, float %1435)  ; Round_ni(value)
  %1439 = call float @dx.op.unary.f32(i32 27, float %1436)  ; Round_ni(value)
  %1440 = fsub fast float %1407, %1410
  %1441 = fsub fast float %1408, %1411
  %1442 = fsub fast float %1409, %1412
  %1443 = fmul fast float %1440, 7.500000e-01
  %1444 = fmul fast float %1441, 7.500000e-01
  %1445 = fmul fast float %1442, 7.500000e-01
  %1446 = fadd fast float %1410, 1.250000e-01
  %1447 = fadd fast float %1446, %1443
  %1448 = fadd fast float %1447, %1437
  %1449 = fadd fast float %1411, 1.250000e-01
  %1450 = fadd fast float %1449, %1444
  %1451 = fadd fast float %1450, %1438
  %1452 = fadd fast float %1412, 1.250000e-01
  %1453 = fadd fast float %1452, %1445
  %1454 = fadd fast float %1453, %1439
  %1455 = fmul fast float %1448, %1398
  %1456 = fmul fast float %1451, %1399
  %1457 = fmul fast float %1454, %1400
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = add i32 %1459, 0
  %1461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1461, %dx.types.Handle %42, float %1455, float %1456, float %1457, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1463 = extractvalue %dx.types.ResRet.f32 %1462, 0
  br label %1464

; <label>:1464                                    ; preds = %1385, %1374
  %1465 = phi float [ %1463, %1385 ], [ -1.000000e+00, %1374 ]
  %1466 = fadd fast float %1465, %1372
  %1467 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  br label %1468

; <label>:1468                                    ; preds = %1464, %1362
  %1469 = phi float [ %1467, %1464 ], [ %1372, %1362 ]
  %1470 = fmul fast float %1469, %456
  br label %1471

; <label>:1471                                    ; preds = %1468, %1357
  %1472 = phi float [ %1470, %1468 ], [ %456, %1357 ]
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = and i32 %1474, 256
  %1476 = icmp eq i32 %1475, 0
  br i1 %1476, label %1523, label %1477

; <label>:1477                                    ; preds = %1471
  %1478 = add i32 %49, 444
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = add i32 %1480, 0
  %1482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1482, %dx.types.Handle %95, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1484 = extractvalue %dx.types.ResRet.f32 %1483, 0
  %1485 = add i32 %49, 116
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = shl i32 %1487, 4
  %1489 = and i32 %1488, 32752
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = lshr i32 %1487, 7
  %1492 = and i32 %1491, 32752
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = fsub fast float 1.000000e+00, %1472
  %1495 = call float @dx.op.binary.f32(i32 35, float %1494, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1496 = bitcast float %1472 to i32
  %1497 = sitofp i32 %1496 to float
  %1498 = fadd fast float %1497, 0xC1CFBF8940000000
  %1499 = fmul fast float %1493, %1498
  %1500 = fadd fast float %1499, 0x41CFBF8940000000
  %1501 = fptosi float %1500 to i32
  %1502 = bitcast i32 %1501 to float
  %1503 = bitcast float %1495 to i32
  %1504 = sitofp i32 %1503 to float
  %1505 = fadd fast float %1504, 0xC1CFBF8940000000
  %1506 = fmul fast float %1505, %1493
  %1507 = fadd fast float %1506, 0x41CFBF8940000000
  %1508 = fptosi float %1507 to i32
  %1509 = bitcast i32 %1508 to float
  %1510 = fmul fast float %1502, %1490
  %1511 = fmul fast float %1509, %1490
  %1512 = fsub fast float %1495, %1510
  %1513 = fadd fast float %1511, %1495
  %1514 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1515 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1516 = fsub fast float %1484, %1514
  %1517 = fsub fast float %1515, %1514
  %1518 = bitcast float %1517 to i32
  %1519 = sub nsw i32 2129859010, %1518
  %1520 = bitcast i32 %1519 to float
  %1521 = fmul fast float %1520, %1516
  %1522 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  br label %1523

; <label>:1523                                    ; preds = %1477, %1471
  %1524 = phi float [ %1522, %1477 ], [ %1472, %1471 ]
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 128
  %1528 = icmp eq i32 %1527, 0
  br i1 %1528, label %1545, label %1529

; <label>:1529                                    ; preds = %1523
  %1530 = add i32 %49, 428
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = add i32 %1532, 0
  %1534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1533, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1535 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1534, %dx.types.Handle %95, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1536 = extractvalue %dx.types.ResRet.f32 %1535, 0
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, 524288
  %1540 = icmp ne i32 %1539, 0
  %1541 = fcmp fast ogt float %1536, 0x3FE0101020000000
  %1542 = select i1 %1541, float 1.000000e+00, float 0.000000e+00
  %1543 = select i1 %1540, float %1542, float %1536
  %1544 = fmul fast float %1543, %1524
  br label %1545

; <label>:1545                                    ; preds = %1529, %1523
  %1546 = phi float [ %1544, %1529 ], [ %1524, %1523 ]
  %1547 = fcmp fast ult float %1546, 0x3F70101020000000
  br i1 %1547, label %2286, label %1548

; <label>:1548                                    ; preds = %1545
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = and i32 %1550, 16
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1751, label %1553

; <label>:1553                                    ; preds = %1548
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = add i32 %49, 380
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = add i32 %1558, 0
  %1560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1559, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1561 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1560, %dx.types.Handle %94, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.ResRet.f32 %1561, 1
  %1564 = extractvalue %dx.types.ResRet.f32 %1561, 2
  %1565 = extractvalue %dx.types.ResRet.f32 %1561, 3
  %1566 = and i32 %1555, 255
  %1567 = uitofp i32 %1566 to float
  %1568 = lshr i32 %1555, 8
  %1569 = and i32 %1568, 255
  %1570 = uitofp i32 %1569 to float
  %1571 = fmul fast float %1565, %1567
  %1572 = fadd fast float %1571, %1570
  %1573 = fmul fast float %1572, 0x3F70101000000000
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 512
  %1577 = icmp eq i32 %1576, 0
  br i1 %1577, label %1586, label %1578

; <label>:1578                                    ; preds = %1553
  %1579 = add i32 %49, 460
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1579, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = add i32 %1581, 0
  %1583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1584 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1583, %dx.types.Handle %95, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1585 = extractvalue %dx.types.ResRet.f32 %1584, 0
  br label %1586

; <label>:1586                                    ; preds = %1578, %1553
  %1587 = phi float [ %1585, %1578 ], [ 1.000000e+00, %1553 ]
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 33554432
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1698, label %1592

; <label>:1592                                    ; preds = %1586
  %1593 = add i32 %49, 240
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 65535
  %1597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1596)  ; LegacyF16ToF32(value)
  %1598 = lshr i32 %1595, 16
  %1599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1598)  ; LegacyF16ToF32(value)
  %1600 = add i32 %49, 244
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1600, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = and i32 %1602, 65535
  %1604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1603)  ; LegacyF16ToF32(value)
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = lshr i32 %1606, 24
  %1608 = uitofp i32 %1607 to float
  %1609 = fmul fast float %1608, 0x3F70101020000000
  %1610 = and i32 %1606, 255
  %1611 = uitofp i32 %1610 to float
  %1612 = fmul fast float %1611, 0x3F70101020000000
  %1613 = lshr i32 %1606, 8
  %1614 = and i32 %1613, 255
  %1615 = uitofp i32 %1614 to float
  %1616 = fmul fast float %1615, 0x3F70101020000000
  %1617 = lshr i32 %1606, 16
  %1618 = and i32 %1617, 255
  %1619 = uitofp i32 %1618 to float
  %1620 = fmul fast float %1619, 0x3F70101020000000
  %1621 = add i32 %49, 236
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = lshr i32 %1623, 24
  %1625 = uitofp i32 %1624 to float
  %1626 = fmul fast float %1625, 0x3F70101020000000
  %1627 = and i32 %1623, 255
  %1628 = uitofp i32 %1627 to float
  %1629 = fmul fast float %1628, 0x3F70101020000000
  %1630 = lshr i32 %1623, 8
  %1631 = and i32 %1630, 255
  %1632 = uitofp i32 %1631 to float
  %1633 = fmul fast float %1632, 0x3F70101020000000
  %1634 = lshr i32 %1623, 16
  %1635 = and i32 %1634, 255
  %1636 = uitofp i32 %1635 to float
  %1637 = fmul fast float %1636, 0x3F70101020000000
  %1638 = bitcast float %1562 to i32
  %1639 = ashr i32 %1638, 1
  %1640 = sub nsw i32 1597463174, %1639
  %1641 = bitcast i32 %1640 to float
  %1642 = fmul fast float %1562, 5.000000e-01
  %1643 = fmul fast float %1641, %1641
  %1644 = fmul fast float %1643, %1642
  %1645 = fsub fast float 1.500000e+00, %1644
  %1646 = fmul fast float %1641, %1562
  %1647 = fmul fast float %1646, %1645
  %1648 = bitcast float %1563 to i32
  %1649 = ashr i32 %1648, 1
  %1650 = sub nsw i32 1597463174, %1649
  %1651 = bitcast i32 %1650 to float
  %1652 = fmul fast float %1563, 5.000000e-01
  %1653 = fmul fast float %1651, %1651
  %1654 = fmul fast float %1653, %1652
  %1655 = fsub fast float 1.500000e+00, %1654
  %1656 = fmul fast float %1651, %1563
  %1657 = fmul fast float %1656, %1655
  %1658 = bitcast float %1564 to i32
  %1659 = ashr i32 %1658, 1
  %1660 = sub nsw i32 1597463174, %1659
  %1661 = bitcast i32 %1660 to float
  %1662 = fmul fast float %1564, 5.000000e-01
  %1663 = fmul fast float %1661, %1661
  %1664 = fmul fast float %1663, %1662
  %1665 = fsub fast float 1.500000e+00, %1664
  %1666 = fmul fast float %1661, %1564
  %1667 = fmul fast float %1666, %1665
  %1668 = fsub fast float %1647, %1629
  %1669 = fsub fast float %1657, %1633
  %1670 = fsub fast float %1667, %1637
  %1671 = fmul fast float %1668, %1597
  %1672 = fmul fast float %1669, %1599
  %1673 = fmul fast float %1670, %1604
  %1674 = fadd fast float %1671, %1612
  %1675 = fadd fast float %1672, %1616
  %1676 = fadd fast float %1673, %1620
  %1677 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1678 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1679 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1680 = fmul fast float %1677, %1677
  %1681 = fmul fast float %1678, %1678
  %1682 = fmul fast float %1679, %1679
  %1683 = fsub fast float %1680, %1562
  %1684 = fsub fast float %1681, %1563
  %1685 = fsub fast float %1682, %1564
  %1686 = fmul fast float %1683, %1587
  %1687 = fmul fast float %1684, %1587
  %1688 = fmul fast float %1685, %1587
  %1689 = fadd fast float %1686, %1562
  %1690 = fadd fast float %1687, %1563
  %1691 = fadd fast float %1688, %1564
  %1692 = fadd fast float %1609, %1573
  %1693 = fsub fast float %1692, %1626
  %1694 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1695 = fsub fast float %1694, %1573
  %1696 = fmul fast float %1695, %1587
  %1697 = fadd fast float %1696, %1573
  br label %1751

; <label>:1698                                    ; preds = %1586
  %1699 = and i32 %1589, 134217728
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1735, label %1701

; <label>:1701                                    ; preds = %1698
  %1702 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1703 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1704 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1705 = fadd fast float %1702, -5.000000e-01
  %1706 = fadd fast float %1703, -5.000000e-01
  %1707 = fadd fast float %1704, -5.000000e-01
  %1708 = fmul fast float %1705, %1587
  %1709 = fmul fast float %1706, %1587
  %1710 = fmul fast float %1707, %1587
  %1711 = fadd fast float %1708, 5.000000e-01
  %1712 = fadd fast float %1709, 5.000000e-01
  %1713 = fadd fast float %1710, 5.000000e-01
  %1714 = call float @dx.op.unary.f32(i32 24, float %1562)  ; Sqrt(value)
  %1715 = call float @dx.op.unary.f32(i32 24, float %1563)  ; Sqrt(value)
  %1716 = call float @dx.op.unary.f32(i32 24, float %1564)  ; Sqrt(value)
  %1717 = fmul fast float %1711, 2.000000e+00
  %1718 = fsub fast float 1.000000e+00, %1717
  %1719 = fmul fast float %1718, %1714
  %1720 = fadd fast float %1719, %1717
  %1721 = fmul fast float %1720, %1714
  %1722 = fmul fast float %1712, 2.000000e+00
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = fmul fast float %1723, %1715
  %1725 = fadd fast float %1724, %1722
  %1726 = fmul fast float %1725, %1715
  %1727 = fmul fast float %1713, 2.000000e+00
  %1728 = fsub fast float 1.000000e+00, %1727
  %1729 = fmul fast float %1728, %1716
  %1730 = fadd fast float %1729, %1727
  %1731 = fmul fast float %1730, %1716
  %1732 = fmul fast float %1721, %1721
  %1733 = fmul fast float %1726, %1726
  %1734 = fmul fast float %1731, %1731
  br label %1751

; <label>:1735                                    ; preds = %1698
  %1736 = fmul fast float %288, %288
  %1737 = fmul fast float %292, %292
  %1738 = fmul fast float %296, %296
  %1739 = fadd fast float %1736, -1.000000e+00
  %1740 = fadd fast float %1737, -1.000000e+00
  %1741 = fadd fast float %1738, -1.000000e+00
  %1742 = fmul fast float %1587, %1739
  %1743 = fmul fast float %1587, %1740
  %1744 = fmul fast float %1587, %1741
  %1745 = fadd fast float %1742, 1.000000e+00
  %1746 = fadd fast float %1743, 1.000000e+00
  %1747 = fadd fast float %1744, 1.000000e+00
  %1748 = fmul fast float %1745, %1562
  %1749 = fmul fast float %1746, %1563
  %1750 = fmul fast float %1747, %1564
  br label %1751

; <label>:1751                                    ; preds = %1735, %1701, %1592, %1548
  %1752 = phi float [ %1697, %1592 ], [ %1573, %1701 ], [ %1573, %1735 ], [ 0x3FA23C0BE0000000, %1548 ]
  %1753 = phi float [ %1689, %1592 ], [ %1732, %1701 ], [ %1748, %1735 ], [ 1.000000e+00, %1548 ]
  %1754 = phi float [ %1690, %1592 ], [ %1733, %1701 ], [ %1749, %1735 ], [ 1.000000e+00, %1548 ]
  %1755 = phi float [ %1691, %1592 ], [ %1734, %1701 ], [ %1750, %1735 ], [ 1.000000e+00, %1548 ]
  %1756 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1757 = extractvalue %dx.types.CBufRet.i32 %1756, 1
  %1758 = and i32 %1757, 1
  %1759 = icmp ne i32 %1758, 0
  %1760 = add i32 %49, 356
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = and i32 %1762, 32
  %1764 = icmp ne i32 %1763, 0
  %1765 = and i1 %1759, %1764
  %1766 = select i1 %1765, float 1.000000e+00, float %1753
  %1767 = select i1 %1765, float 0x3FD3333340000000, float %1754
  %1768 = select i1 %1765, float 0x3FD3333340000000, float %1755
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = and i32 %1770, 32
  %1772 = icmp eq i32 %1771, 0
  br i1 %1772, label %1845, label %1773

; <label>:1773                                    ; preds = %1751
  %1774 = add i32 %49, 108
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = add i32 %49, 396
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = add i32 %1779, 0
  %1781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1780, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1782 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1781, %dx.types.Handle %94, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.ResRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.ResRet.f32 %1782, 2
  %1786 = extractvalue %dx.types.ResRet.f32 %1782, 3
  %1787 = and i32 %1776, 255
  %1788 = uitofp i32 %1787 to float
  %1789 = lshr i32 %1776, 8
  %1790 = and i32 %1789, 255
  %1791 = uitofp i32 %1790 to float
  %1792 = lshr i32 %1776, 16
  %1793 = and i32 %1792, 255
  %1794 = uitofp i32 %1793 to float
  %1795 = fmul fast float %1794, 0x3F70101000000000
  %1796 = fmul fast float %1783, %1788
  %1797 = fadd fast float %1796, %1791
  %1798 = fmul fast float %1797, 0x3F70101000000000
  %1799 = fadd fast float %1784, -5.000000e-01
  %1800 = fadd fast float %1786, -5.000000e-01
  %1801 = fmul fast float %1799, %1795
  %1802 = fmul fast float %1800, %1795
  %1803 = fadd fast float %1801, 5.000000e-01
  %1804 = fadd fast float %1802, 5.000000e-01
  %1805 = fmul fast float %1803, 2.000000e+00
  %1806 = fadd fast float %1805, -1.000000e+00
  %1807 = fmul fast float %1804, 2.000000e+00
  %1808 = fadd fast float %1807, -1.000000e+00
  %1809 = fadd fast float %1806, %1808
  %1810 = fmul fast float %1809, 5.000000e-01
  %1811 = fsub fast float %1806, %1808
  %1812 = fmul fast float %1811, 5.000000e-01
  %1813 = call float @dx.op.unary.f32(i32 6, float %1810)  ; FAbs(value)
  %1814 = fsub fast float 1.000000e+00, %1813
  %1815 = call float @dx.op.unary.f32(i32 6, float %1812)  ; FAbs(value)
  %1816 = fsub fast float %1814, %1815
  %1817 = call float @dx.op.dot3.f32(i32 55, float %1810, float %1812, float %1816, float %1810, float %1812, float %1816)  ; Dot3(ax,ay,az,bx,by,bz)
  %1818 = call float @dx.op.unary.f32(i32 25, float %1817)  ; Rsqrt(value)
  %1819 = fmul fast float %1810, %1818
  %1820 = fmul fast float %1812, %1818
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = and i32 %1822, 67108864
  %1824 = icmp eq i32 %1823, 0
  br i1 %1824, label %1841, label %1825

; <label>:1825                                    ; preds = %1773
  %1826 = add i32 %49, 296
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 65535
  %1830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1829)  ; LegacyF16ToF32(value)
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %1832, 65535
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = lshr i32 %1828, 16
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = fsub fast float %1798, %1836
  %1838 = fmul fast float %1837, %1830
  %1839 = fadd fast float %1838, %1834
  %1840 = call float @dx.op.unary.f32(i32 7, float %1839)  ; Saturate(value)
  br label %1841

; <label>:1841                                    ; preds = %1825, %1773
  %1842 = phi float [ %1840, %1825 ], [ %1798, %1773 ]
  %1843 = call float @dx.op.dot2.f32(i32 54, float %1819, float %1820, float %1262, float %1263)  ; Dot2(ax,ay,bx,by)
  %1844 = call float @dx.op.dot2.f32(i32 54, float %1819, float %1820, float %1264, float %1265)  ; Dot2(ax,ay,bx,by)
  br label %1845

; <label>:1845                                    ; preds = %1841, %1751
  %1846 = phi float [ %1842, %1841 ], [ 0x3FD6666660000000, %1751 ]
  %1847 = phi float [ %1843, %1841 ], [ 0.000000e+00, %1751 ]
  %1848 = phi float [ %1844, %1841 ], [ 0.000000e+00, %1751 ]
  %1849 = phi float [ %1785, %1841 ], [ 1.000000e+00, %1751 ]
  %1850 = add i32 %49, 176
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = lshr i32 %1852, 22
  %1854 = shl nuw nsw i32 %1853, 5
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = and i32 %1857, 64
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %1893, label %1860

; <label>:1860                                    ; preds = %1845
  %1861 = add i32 %49, 412
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = add i32 %1863, 0
  %1865 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1864, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = and i32 %1867, 131072
  %1869 = icmp eq i32 %1868, 0
  %1870 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1865, %dx.types.Handle %94, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1871 = extractvalue %dx.types.ResRet.f32 %1870, 0
  %1872 = extractvalue %dx.types.ResRet.f32 %1870, 1
  %1873 = extractvalue %dx.types.ResRet.f32 %1870, 2
  %1874 = fmul fast float %1871, %276
  %1875 = fmul fast float %1872, %279
  %1876 = fmul fast float %1873, %282
  br i1 %1869, label %1883, label %1877

; <label>:1877                                    ; preds = %1860
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 0
  %1880 = fmul fast float %1879, %1874
  %1881 = fmul fast float %1879, %1875
  %1882 = fmul fast float %1879, %1876
  br label %1883

; <label>:1883                                    ; preds = %1877, %1860
  %1884 = phi float [ %1880, %1877 ], [ %1874, %1860 ]
  %1885 = phi float [ %1881, %1877 ], [ %1875, %1860 ]
  %1886 = phi float [ %1882, %1877 ], [ %1876, %1860 ]
  %1887 = fmul fast float %1884, %1855
  %1888 = select i1 %214, float %1887, float %1884
  %1889 = call float @dx.op.dot3.f32(i32 55, float %1888, float %1885, float %1886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1890 = select i1 %214, float 0.000000e+00, float %1884
  %1891 = select i1 %214, float %1889, float %1885
  %1892 = select i1 %214, float 0.000000e+00, float %1886
  br label %1893

; <label>:1893                                    ; preds = %1883, %1845
  %1894 = phi float [ %1890, %1883 ], [ 0.000000e+00, %1845 ]
  %1895 = phi float [ %1891, %1883 ], [ 0.000000e+00, %1845 ]
  %1896 = phi float [ %1892, %1883 ], [ 0.000000e+00, %1845 ]
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = and i32 %1898, 1024
  %1900 = icmp eq i32 %1899, 0
  br i1 %1900, label %1931, label %1901

; <label>:1901                                    ; preds = %1893
  %1902 = add i32 %49, 168
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 255
  %1906 = uitofp i32 %1905 to float
  %1907 = fmul fast float %1906, 0x3F70101020000000
  %1908 = lshr i32 %1904, 8
  %1909 = and i32 %1908, 255
  %1910 = uitofp i32 %1909 to float
  %1911 = fmul fast float %1910, 0x3F70101020000000
  %1912 = lshr i32 %1904, 16
  %1913 = and i32 %1912, 255
  %1914 = uitofp i32 %1913 to float
  %1915 = fmul fast float %1914, 0x3F70101020000000
  %1916 = fmul fast float %1907, %1907
  %1917 = fmul fast float %1911, %1911
  %1918 = fmul fast float %1915, %1915
  %1919 = add i32 %49, 476
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = add i32 %1921, 0
  %1923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1923, %dx.types.Handle %95, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1925 = extractvalue %dx.types.ResRet.f32 %1924, 0
  %1926 = extractvalue %dx.types.ResRet.f32 %1924, 1
  %1927 = extractvalue %dx.types.ResRet.f32 %1924, 2
  %1928 = fmul fast float %1916, %1925
  %1929 = fmul fast float %1917, %1926
  %1930 = fmul fast float %1918, %1927
  br label %1931

; <label>:1931                                    ; preds = %1901, %1893
  %1932 = phi float [ %1928, %1901 ], [ 0.000000e+00, %1893 ]
  %1933 = phi float [ %1929, %1901 ], [ 0.000000e+00, %1893 ]
  %1934 = phi float [ %1930, %1901 ], [ 0.000000e+00, %1893 ]
  %1935 = fcmp fast ogt float %1932, 0.000000e+00
  %1936 = fcmp fast ogt float %1933, 0.000000e+00
  %1937 = fcmp fast ogt float %1934, 0.000000e+00
  %1938 = call float @dx.op.unary.f32(i32 23, float %1932)  ; Log(value)
  %1939 = call float @dx.op.unary.f32(i32 23, float %1933)  ; Log(value)
  %1940 = call float @dx.op.unary.f32(i32 23, float %1934)  ; Log(value)
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = lshr i32 %1942, 7
  %1944 = and i32 %1943, 32752
  %1945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1944)  ; LegacyF16ToF32(value)
  %1946 = fmul fast float %1938, 0xBFE62E4300000000
  %1947 = fmul fast float %1946, %1945
  %1948 = fmul fast float %1939, 0xBFE62E4300000000
  %1949 = fmul fast float %1948, %1945
  %1950 = fmul fast float %1940, 0xBFE62E4300000000
  %1951 = fmul fast float %1950, %1945
  %1952 = select i1 %1935, float %1947, float 1.270000e+02
  %1953 = select i1 %1936, float %1949, float 1.270000e+02
  %1954 = select i1 %1937, float %1951, float 1.270000e+02
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = and i32 %1956, 10240
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %2003, label %1959

; <label>:1959                                    ; preds = %1931
  %1960 = add i32 %49, 492
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = add i32 %1962, 0
  %1964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1965 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1964, %dx.types.Handle %95, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1966 = extractvalue %dx.types.ResRet.f32 %1965, 1
  %1967 = extractvalue %dx.types.ResRet.f32 %1965, 3
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = and i32 %1969, 1048576
  %1971 = icmp ne i32 %1970, 0
  %1972 = and i32 %1969, 8192
  %1973 = icmp eq i32 %1972, 0
  br i1 %1973, label %1989, label %1974

; <label>:1974                                    ; preds = %1959
  %1975 = extractvalue %dx.types.ResRet.f32 %1965, 2
  %1976 = select i1 %1971, float %1975, float %1966
  %1977 = extractvalue %dx.types.ResRet.f32 %1965, 0
  %1978 = select i1 %1971, float %1977, float %1966
  %1979 = add i32 %49, 112
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = lshr i32 %1981, 16
  %1983 = and i32 %1982, 255
  %1984 = uitofp i32 %1983 to float
  %1985 = fmul fast float %1984, 0x3F80101020000000
  %1986 = fmul fast float %1985, %1978
  %1987 = fmul fast float %1985, %1966
  %1988 = fmul fast float %1985, %1976
  br label %1989

; <label>:1989                                    ; preds = %1974, %1959
  %1990 = phi float [ %1986, %1974 ], [ 0.000000e+00, %1959 ]
  %1991 = phi float [ %1987, %1974 ], [ 0.000000e+00, %1959 ]
  %1992 = phi float [ %1988, %1974 ], [ 0.000000e+00, %1959 ]
  %1993 = and i32 %1969, 2048
  %1994 = icmp eq i32 %1993, 0
  br i1 %1994, label %2003, label %1995

; <label>:1995                                    ; preds = %1989
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = shl i32 %1997, 4
  %1999 = and i32 %1998, 32752
  %2000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1999)  ; LegacyF16ToF32(value)
  %2001 = fmul fast float %2000, %1967
  %2002 = call float @dx.op.binary.f32(i32 35, float %2001, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2003

; <label>:2003                                    ; preds = %1995, %1989, %1931
  %2004 = phi float [ %1990, %1995 ], [ %1990, %1989 ], [ 0.000000e+00, %1931 ]
  %2005 = phi float [ %1991, %1995 ], [ %1991, %1989 ], [ 0.000000e+00, %1931 ]
  %2006 = phi float [ %1992, %1995 ], [ %1992, %1989 ], [ 0.000000e+00, %1931 ]
  %2007 = phi float [ %2002, %1995 ], [ 0x3F70101020000000, %1989 ], [ 0x3F70101020000000, %1931 ]
  %2008 = add i32 %49, 112
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = and i32 %2010, 255
  %2012 = uitofp i32 %2011 to float
  %2013 = lshr i32 %2010, 8
  %2014 = and i32 %2013, 255
  %2015 = uitofp i32 %2014 to float
  %2016 = call float @dx.op.dot3.f32(i32 55, float %1766, float %1767, float %1768, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2017 = fmul fast float %2015, %2016
  %2018 = fadd fast float %2017, %2012
  %2019 = fmul fast float %2018, 0x3F70101020000000
  %2020 = call float @dx.op.unary.f32(i32 7, float %2019)  ; Saturate(value)
  br i1 %1250, label %2021, label %2056

; <label>:2021                                    ; preds = %2003
  %2022 = fmul fast float %2007, 2.000000e+00
  %2023 = fcmp fast olt float %1952, 1.270000e+02
  %2024 = fcmp fast olt float %1953, 1.270000e+02
  %2025 = fcmp fast olt float %1954, 1.270000e+02
  %2026 = fmul fast float %1952, 0xBFF7154760000000
  %2027 = fmul fast float %2026, %2022
  %2028 = fmul fast float %1953, 0xBFF7154760000000
  %2029 = fmul fast float %2028, %2022
  %2030 = fmul fast float %1954, 0xBFF7154760000000
  %2031 = fmul fast float %2030, %2022
  %2032 = call float @dx.op.unary.f32(i32 21, float %2027)  ; Exp(value)
  %2033 = call float @dx.op.unary.f32(i32 21, float %2029)  ; Exp(value)
  %2034 = call float @dx.op.unary.f32(i32 21, float %2031)  ; Exp(value)
  %2035 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2036 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2037 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  %2038 = fadd fast float %2035, -1.000000e+00
  %2039 = select i1 %2023, float %2038, float -1.000000e+00
  %2040 = fadd fast float %2036, -1.000000e+00
  %2041 = select i1 %2024, float %2040, float -1.000000e+00
  %2042 = fadd fast float %2037, -1.000000e+00
  %2043 = select i1 %2025, float %2042, float -1.000000e+00
  %2044 = fmul fast float %2039, %1546
  %2045 = fmul fast float %2041, %1546
  %2046 = fmul fast float %2043, %1546
  %2047 = fadd fast float %2044, 1.000000e+00
  %2048 = fadd fast float %2045, 1.000000e+00
  %2049 = fadd fast float %2046, 1.000000e+00
  %2050 = fmul fast float %2047, %1231
  %2051 = fmul fast float %2048, %1232
  %2052 = fmul fast float %2049, %1233
  %2053 = fmul fast float %2047, %1240
  %2054 = fmul fast float %2048, %1241
  %2055 = fmul fast float %2049, %1242
  br label %2056

; <label>:2056                                    ; preds = %2021, %2003
  %2057 = phi float [ %2050, %2021 ], [ %1231, %2003 ]
  %2058 = phi float [ %2051, %2021 ], [ %1232, %2003 ]
  %2059 = phi float [ %2052, %2021 ], [ %1233, %2003 ]
  %2060 = phi float [ %2053, %2021 ], [ %1240, %2003 ]
  %2061 = phi float [ %2054, %2021 ], [ %1241, %2003 ]
  %2062 = phi float [ %2055, %2021 ], [ %1242, %2003 ]
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = and i32 %2064, 3
  %2066 = icmp eq i32 %2065, 3
  br i1 %2066, label %2145, label %2067

; <label>:2067                                    ; preds = %2056
  %2068 = and i32 %2064, 16
  %2069 = icmp ne i32 %2068, 0
  %2070 = select i1 %2069, float %1546, float 0.000000e+00
  %2071 = icmp eq i32 %2065, 0
  br i1 %2071, label %2072, label %2100

; <label>:2072                                    ; preds = %2067
  %2073 = and i32 %2064, 64
  %2074 = icmp ne i32 %2073, 0
  %2075 = select i1 %2074, float %1546, float 0.000000e+00
  %2076 = fsub fast float %1766, %2057
  %2077 = fsub fast float %1767, %2058
  %2078 = fsub fast float %1768, %2059
  %2079 = fmul fast float %2070, %2076
  %2080 = fmul fast float %2070, %2077
  %2081 = fmul fast float %2070, %2078
  %2082 = fadd fast float %2079, %2057
  %2083 = fadd fast float %2080, %2058
  %2084 = fadd fast float %2081, %2059
  %2085 = fsub fast float %1752, %1243
  %2086 = fmul fast float %2070, %2085
  %2087 = fadd fast float %2086, %1243
  %2088 = fsub fast float %1894, %2060
  %2089 = fsub fast float %1895, %2061
  %2090 = fsub fast float %1896, %2062
  %2091 = fmul fast float %2075, %2088
  %2092 = fmul fast float %2075, %2089
  %2093 = fmul fast float %2075, %2090
  %2094 = fadd fast float %2091, %2060
  %2095 = fadd fast float %2092, %2061
  %2096 = fadd fast float %2093, %2062
  %2097 = fsub fast float %2020, %1248
  %2098 = fmul fast float %2070, %2097
  %2099 = fadd fast float %2098, %1248
  br label %2145

; <label>:2100                                    ; preds = %2067
  %2101 = icmp eq i32 %2065, 1
  br i1 %2101, label %2102, label %2115

; <label>:2102                                    ; preds = %2100
  %2103 = fadd fast float %1766, -1.000000e+00
  %2104 = fadd fast float %1767, -1.000000e+00
  %2105 = fadd fast float %1768, -1.000000e+00
  %2106 = fmul fast float %2070, %2103
  %2107 = fmul fast float %2070, %2104
  %2108 = fmul fast float %2070, %2105
  %2109 = fadd fast float %2106, 1.000000e+00
  %2110 = fadd fast float %2107, 1.000000e+00
  %2111 = fadd fast float %2108, 1.000000e+00
  %2112 = fmul fast float %2109, %2057
  %2113 = fmul fast float %2110, %2058
  %2114 = fmul fast float %2111, %2059
  br label %2145

; <label>:2115                                    ; preds = %2100
  %2116 = icmp eq i32 %2065, 2
  br i1 %2116, label %2117, label %2145

; <label>:2117                                    ; preds = %2115
  %2118 = call float @dx.op.unary.f32(i32 24, float %1766)  ; Sqrt(value)
  %2119 = call float @dx.op.unary.f32(i32 24, float %1767)  ; Sqrt(value)
  %2120 = call float @dx.op.unary.f32(i32 24, float %1768)  ; Sqrt(value)
  %2121 = fadd fast float %2118, -5.000000e-01
  %2122 = fadd fast float %2119, -5.000000e-01
  %2123 = fadd fast float %2120, -5.000000e-01
  %2124 = fmul fast float %2121, %2070
  %2125 = fmul fast float %2122, %2070
  %2126 = fmul fast float %2123, %2070
  %2127 = fadd fast float %2124, 5.000000e-01
  %2128 = fadd fast float %2125, 5.000000e-01
  %2129 = fadd fast float %2126, 5.000000e-01
  %2130 = fmul fast float %2127, 2.000000e+00
  %2131 = fsub fast float 1.000000e+00, %2130
  %2132 = fmul fast float %2131, %2057
  %2133 = fadd fast float %2132, %2130
  %2134 = fmul fast float %2133, %2057
  %2135 = fmul fast float %2128, 2.000000e+00
  %2136 = fsub fast float 1.000000e+00, %2135
  %2137 = fmul fast float %2136, %2058
  %2138 = fadd fast float %2137, %2135
  %2139 = fmul fast float %2138, %2058
  %2140 = fmul fast float %2129, 2.000000e+00
  %2141 = fsub fast float 1.000000e+00, %2140
  %2142 = fmul fast float %2141, %2059
  %2143 = fadd fast float %2142, %2140
  %2144 = fmul fast float %2143, %2059
  br label %2145

; <label>:2145                                    ; preds = %2117, %2115, %2102, %2072, %2056
  %2146 = phi float [ %2057, %2056 ], [ %2134, %2117 ], [ %2057, %2115 ], [ %2112, %2102 ], [ %2082, %2072 ]
  %2147 = phi float [ %2058, %2056 ], [ %2139, %2117 ], [ %2058, %2115 ], [ %2113, %2102 ], [ %2083, %2072 ]
  %2148 = phi float [ %2059, %2056 ], [ %2144, %2117 ], [ %2059, %2115 ], [ %2114, %2102 ], [ %2084, %2072 ]
  %2149 = phi float [ %2060, %2056 ], [ %2060, %2117 ], [ %2060, %2115 ], [ %2060, %2102 ], [ %2094, %2072 ]
  %2150 = phi float [ %2061, %2056 ], [ %2061, %2117 ], [ %2061, %2115 ], [ %2061, %2102 ], [ %2095, %2072 ]
  %2151 = phi float [ %2062, %2056 ], [ %2062, %2117 ], [ %2062, %2115 ], [ %2062, %2102 ], [ %2096, %2072 ]
  %2152 = phi float [ %1243, %2056 ], [ %1243, %2117 ], [ %1243, %2115 ], [ %1243, %2102 ], [ %2087, %2072 ]
  %2153 = phi float [ %1248, %2056 ], [ %1248, %2117 ], [ %1248, %2115 ], [ %1248, %2102 ], [ %2099, %2072 ]
  %2154 = and i32 %2064, 12
  %2155 = icmp eq i32 %2154, 12
  br i1 %2155, label %2286, label %2156

; <label>:2156                                    ; preds = %2145
  %2157 = and i32 %2064, 2097184
  %2158 = icmp eq i32 %2157, 2097184
  %2159 = select i1 %2158, float %1546, float 0.000000e+00
  %2160 = and i32 %2064, 4194336
  %2161 = icmp eq i32 %2160, 4194336
  %2162 = select i1 %2161, float %1546, float 0.000000e+00
  %2163 = and i32 %2064, 8388640
  %2164 = icmp eq i32 %2163, 8388640
  %2165 = select i1 %2164, float %1546, float 0.000000e+00
  %2166 = and i32 %2064, 1024
  %2167 = icmp ne i32 %2166, 0
  %2168 = select i1 %2167, float %1546, float 0.000000e+00
  %2169 = and i32 %2064, 2048
  %2170 = icmp ne i32 %2169, 0
  %2171 = select i1 %2170, float %1546, float 0.000000e+00
  %2172 = and i32 %2064, 8192
  %2173 = icmp ne i32 %2172, 0
  %2174 = select i1 %2173, float %1546, float 0.000000e+00
  %2175 = icmp eq i32 %2154, 0
  br i1 %2175, label %2176, label %2210

; <label>:2176                                    ; preds = %2156
  %2177 = fsub fast float %1847, %1229
  %2178 = fsub fast float %1848, %1230
  %2179 = fmul fast float %2159, %2177
  %2180 = fmul fast float %2159, %2178
  %2181 = fadd fast float %2179, %1229
  %2182 = fadd fast float %2180, %1230
  %2183 = fsub fast float %1849, %1246
  %2184 = fmul fast float %2162, %2183
  %2185 = fadd fast float %2184, %1246
  %2186 = fsub fast float %1846, %1245
  %2187 = fmul fast float %2165, %2186
  %2188 = fadd fast float %2187, %1245
  %2189 = fsub fast float %1952, %1237
  %2190 = fsub fast float %1953, %1238
  %2191 = fsub fast float %1954, %1239
  %2192 = fmul fast float %2168, %2189
  %2193 = fmul fast float %2168, %2190
  %2194 = fmul fast float %2168, %2191
  %2195 = fadd fast float %2192, %1237
  %2196 = fadd fast float %2193, %1238
  %2197 = fadd fast float %2194, %1239
  %2198 = fsub fast float %2007, %1247
  %2199 = fmul fast float %2171, %2198
  %2200 = fadd fast float %2199, %1247
  %2201 = fsub fast float %2004, %1234
  %2202 = fsub fast float %2005, %1235
  %2203 = fsub fast float %2006, %1236
  %2204 = fmul fast float %2174, %2201
  %2205 = fmul fast float %2174, %2202
  %2206 = fmul fast float %2174, %2203
  %2207 = fadd fast float %2204, %1234
  %2208 = fadd fast float %2205, %1235
  %2209 = fadd fast float %2206, %1236
  br label %2286

; <label>:2210                                    ; preds = %2156
  %2211 = icmp eq i32 %2154, 4
  br i1 %2211, label %2212, label %2258

; <label>:2212                                    ; preds = %2210
  %2213 = fmul fast float %2159, %1847
  %2214 = fmul fast float %2159, %1848
  %2215 = fadd fast float %2213, %1229
  %2216 = fadd fast float %2214, %1230
  %2217 = call float @dx.op.binary.f32(i32 36, float %1246, float %1849)  ; FMin(a,b)
  %2218 = fsub fast float %2217, %1246
  %2219 = fmul fast float %2218, %2162
  %2220 = fadd fast float %2219, %1246
  %2221 = fadd fast float %1846, %1245
  %2222 = fmul fast float %2221, 0x3FF337FAE0000000
  %2223 = fmul fast float %1245, %1245
  %2224 = fmul fast float %1846, %1846
  %2225 = fadd fast float %2224, %2223
  %2226 = fmul fast float %2225, 0x3FE5152B00000000
  %2227 = fmul fast float %1245, 0xBFCC1F85E0000000
  %2228 = fmul fast float %2227, %1846
  %2229 = fadd fast float %2228, 0xBFE1363700000000
  %2230 = fadd fast float %2229, %2222
  %2231 = fsub fast float %2230, %2226
  %2232 = fmul fast float %2221, 0x3FBA6F0D00000000
  %2233 = fmul fast float %2225, 0x3FD0432880000000
  %2234 = fmul fast float %1245, 0xBFEF110800000000
  %2235 = fmul fast float %2234, %1846
  %2236 = fadd fast float %2235, 1.000000e+00
  %2237 = fsub fast float %2236, %2232
  %2238 = fadd fast float %2237, %2233
  %2239 = fdiv fast float %2231, %2238
  %2240 = call float @dx.op.unary.f32(i32 7, float %2239)  ; Saturate(value)
  %2241 = fsub fast float %2240, %1245
  %2242 = fmul fast float %2241, %2165
  %2243 = fadd fast float %2242, %1245
  %2244 = fmul fast float %2168, %1952
  %2245 = fmul fast float %2168, %1953
  %2246 = fmul fast float %2168, %1954
  %2247 = fadd fast float %2244, %1237
  %2248 = fadd fast float %2245, %1238
  %2249 = fadd fast float %2246, %1239
  %2250 = fmul fast float %2171, %2007
  %2251 = fadd fast float %2250, %1247
  %2252 = fmul fast float %2174, %2004
  %2253 = fmul fast float %2174, %2005
  %2254 = fmul fast float %2174, %2006
  %2255 = fadd fast float %2252, %1234
  %2256 = fadd fast float %2253, %1235
  %2257 = fadd fast float %2254, %1236
  br label %2286

; <label>:2258                                    ; preds = %2210
  %2259 = icmp eq i32 %2154, 8
  br i1 %2259, label %2260, label %2286

; <label>:2260                                    ; preds = %2258
  %2261 = fmul fast float %2159, %1847
  %2262 = fmul fast float %2159, %1848
  %2263 = fadd fast float %2261, %1229
  %2264 = fadd fast float %2262, %1230
  %2265 = call float @dx.op.binary.f32(i32 36, float %1246, float %1849)  ; FMin(a,b)
  %2266 = fsub fast float %2265, %1246
  %2267 = fmul fast float %2266, %2162
  %2268 = fadd fast float %2267, %1246
  %2269 = fsub fast float %1846, %1245
  %2270 = fmul fast float %2165, %2269
  %2271 = fadd fast float %2270, %1245
  %2272 = fmul fast float %2168, %1952
  %2273 = fmul fast float %2168, %1953
  %2274 = fmul fast float %2168, %1954
  %2275 = fadd fast float %2272, %1237
  %2276 = fadd fast float %2273, %1238
  %2277 = fadd fast float %2274, %1239
  %2278 = fmul fast float %2171, %2007
  %2279 = fadd fast float %2278, %1247
  %2280 = fmul fast float %2174, %2004
  %2281 = fmul fast float %2174, %2005
  %2282 = fmul fast float %2174, %2006
  %2283 = fadd fast float %2280, %1234
  %2284 = fadd fast float %2281, %1235
  %2285 = fadd fast float %2282, %1236
  br label %2286

; <label>:2286                                    ; preds = %2260, %2258, %2212, %2176, %2145, %1545, %1249, %1228
  %2287 = phi float [ %1229, %2145 ], [ %1229, %1545 ], [ %1229, %1228 ], [ %2263, %2260 ], [ %1229, %2258 ], [ %2215, %2212 ], [ %2181, %2176 ], [ %1229, %1249 ]
  %2288 = phi float [ %1230, %2145 ], [ %1230, %1545 ], [ %1230, %1228 ], [ %2264, %2260 ], [ %1230, %2258 ], [ %2216, %2212 ], [ %2182, %2176 ], [ %1230, %1249 ]
  %2289 = phi float [ %2146, %2145 ], [ %1231, %1545 ], [ %1231, %1228 ], [ %2146, %2260 ], [ %2146, %2258 ], [ %2146, %2212 ], [ %2146, %2176 ], [ %1231, %1249 ]
  %2290 = phi float [ %2147, %2145 ], [ %1232, %1545 ], [ %1232, %1228 ], [ %2147, %2260 ], [ %2147, %2258 ], [ %2147, %2212 ], [ %2147, %2176 ], [ %1232, %1249 ]
  %2291 = phi float [ %2148, %2145 ], [ %1233, %1545 ], [ %1233, %1228 ], [ %2148, %2260 ], [ %2148, %2258 ], [ %2148, %2212 ], [ %2148, %2176 ], [ %1233, %1249 ]
  %2292 = phi float [ %1234, %2145 ], [ %1234, %1545 ], [ %1234, %1228 ], [ %2283, %2260 ], [ %1234, %2258 ], [ %2255, %2212 ], [ %2207, %2176 ], [ %1234, %1249 ]
  %2293 = phi float [ %1235, %2145 ], [ %1235, %1545 ], [ %1235, %1228 ], [ %2284, %2260 ], [ %1235, %2258 ], [ %2256, %2212 ], [ %2208, %2176 ], [ %1235, %1249 ]
  %2294 = phi float [ %1236, %2145 ], [ %1236, %1545 ], [ %1236, %1228 ], [ %2285, %2260 ], [ %1236, %2258 ], [ %2257, %2212 ], [ %2209, %2176 ], [ %1236, %1249 ]
  %2295 = phi float [ %1237, %2145 ], [ %1237, %1545 ], [ %1237, %1228 ], [ %2275, %2260 ], [ %1237, %2258 ], [ %2247, %2212 ], [ %2195, %2176 ], [ %1237, %1249 ]
  %2296 = phi float [ %1238, %2145 ], [ %1238, %1545 ], [ %1238, %1228 ], [ %2276, %2260 ], [ %1238, %2258 ], [ %2248, %2212 ], [ %2196, %2176 ], [ %1238, %1249 ]
  %2297 = phi float [ %1239, %2145 ], [ %1239, %1545 ], [ %1239, %1228 ], [ %2277, %2260 ], [ %1239, %2258 ], [ %2249, %2212 ], [ %2197, %2176 ], [ %1239, %1249 ]
  %2298 = phi float [ %2149, %2145 ], [ %1240, %1545 ], [ %1240, %1228 ], [ %2149, %2260 ], [ %2149, %2258 ], [ %2149, %2212 ], [ %2149, %2176 ], [ %1240, %1249 ]
  %2299 = phi float [ %2150, %2145 ], [ %1241, %1545 ], [ %1241, %1228 ], [ %2150, %2260 ], [ %2150, %2258 ], [ %2150, %2212 ], [ %2150, %2176 ], [ %1241, %1249 ]
  %2300 = phi float [ %2151, %2145 ], [ %1242, %1545 ], [ %1242, %1228 ], [ %2151, %2260 ], [ %2151, %2258 ], [ %2151, %2212 ], [ %2151, %2176 ], [ %1242, %1249 ]
  %2301 = phi float [ %2152, %2145 ], [ %1243, %1545 ], [ %1243, %1228 ], [ %2152, %2260 ], [ %2152, %2258 ], [ %2152, %2212 ], [ %2152, %2176 ], [ %1243, %1249 ]
  %2302 = phi float [ %1245, %2145 ], [ %1245, %1545 ], [ %1245, %1228 ], [ %2271, %2260 ], [ %1245, %2258 ], [ %2243, %2212 ], [ %2188, %2176 ], [ %1245, %1249 ]
  %2303 = phi float [ %1246, %2145 ], [ %1246, %1545 ], [ %1246, %1228 ], [ %2268, %2260 ], [ %1246, %2258 ], [ %2220, %2212 ], [ %2185, %2176 ], [ %1246, %1249 ]
  %2304 = phi float [ %1247, %2145 ], [ %1247, %1545 ], [ %1247, %1228 ], [ %2279, %2260 ], [ %1247, %2258 ], [ %2251, %2212 ], [ %2200, %2176 ], [ %1247, %1249 ]
  %2305 = phi float [ %2153, %2145 ], [ %1248, %1545 ], [ %1248, %1228 ], [ %2153, %2260 ], [ %2153, %2258 ], [ %2153, %2212 ], [ %2153, %2176 ], [ %1248, %1249 ]
  br i1 %403, label %3343, label %2306

; <label>:2306                                    ; preds = %2286
  %2307 = icmp ult i32 %459, 3
  %2308 = add i32 %49, 56
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = add i32 %49, 60
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = or i32 %2313, %2310
  %2315 = icmp eq i32 %2314, 0
  br i1 %2315, label %3343, label %2316

; <label>:2316                                    ; preds = %2306
  %2317 = and i32 %2310, 262144
  %2318 = icmp ne i32 %2317, 0
  %2319 = select i1 %2318, float %52, float 1.000000e+00
  %2320 = select i1 %2318, float %53, float 0.000000e+00
  %2321 = select i1 %2318, float %54, float 0.000000e+00
  %2322 = select i1 %2318, float %55, float 1.000000e+00
  %2323 = select i1 %2318, float %56, float %77
  %2324 = select i1 %2318, float %57, float %78
  %2325 = add i32 %49, 316
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = lshr i32 %2327, 16
  %2329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2328)  ; LegacyF16ToF32(value)
  %2330 = fmul fast float %2329, 0x3F50624DE0000000
  %2331 = add i32 %49, 120
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = lshr i32 %2333, 16
  %2335 = and i32 %2334, 255
  %2336 = lshr i32 %2333, 24
  %2337 = add i32 %49, 324
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 65535
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = lshr i32 %2339, 16
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = add i32 %49, 64
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = lshr i32 %2346, 22
  %2348 = shl nuw nsw i32 %2347, 5
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = shl i32 %2346, 4
  %2351 = and i32 %2350, 32752
  %2352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2351)  ; LegacyF16ToF32(value)
  %2353 = lshr i32 %2346, 7
  %2354 = and i32 %2353, 32752
  %2355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2354)  ; LegacyF16ToF32(value)
  %2356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.f32 %2356, 3
  %2358 = fmul fast float %2357, 1.000000e+03
  %2359 = fmul fast float %353, %2358
  %2360 = call float @dx.op.unary.f32(i32 22, float %2359)  ; Frc(value)
  %2361 = fadd fast float %2360, %343
  %2362 = fmul fast float %354, %2358
  %2363 = call float @dx.op.unary.f32(i32 22, float %2362)  ; Frc(value)
  %2364 = fadd fast float %2363, %345
  %2365 = fmul fast float %2330, %2358
  %2366 = call float @dx.op.unary.f32(i32 22, float %2365)  ; Frc(value)
  %2367 = fmul fast float %2366, 0x401921FB60000000
  %2368 = fadd fast float %2367, %2349
  %2369 = call float @dx.op.unary.f32(i32 13, float %2368)  ; Sin(value)
  %2370 = call float @dx.op.unary.f32(i32 12, float %2368)  ; Cos(value)
  %2371 = fsub fast float -0.000000e+00, %2369
  %2372 = fadd fast float %2323, -5.000000e-01
  %2373 = fadd fast float %2324, -5.000000e-01
  %2374 = fmul fast float %2341, %2372
  %2375 = fmul fast float %2343, %2373
  %2376 = fadd fast float %2374, 5.000000e-01
  %2377 = fadd fast float %2375, 5.000000e-01
  %2378 = fmul fast float %2352, %2376
  %2379 = fmul fast float %2355, %2377
  %2380 = fmul fast float %2370, %2378
  %2381 = call float @dx.op.tertiary.f32(i32 46, float %2371, float %2379, float %2380)  ; FMad(a,b,c)
  %2382 = fmul fast float %2369, %2378
  %2383 = call float @dx.op.tertiary.f32(i32 46, float %2370, float %2379, float %2382)  ; FMad(a,b,c)
  %2384 = fadd fast float %2361, %2381
  %2385 = fadd fast float %2364, %2383
  %2386 = icmp ugt i32 %2335, 1
  %2387 = icmp ugt i32 %2333, 33554431
  %2388 = or i1 %2387, %2386
  br i1 %2388, label %2389, label %2414

; <label>:2389                                    ; preds = %2316
  %2390 = add i32 %49, 260
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = lshr i32 %2392, 16
  %2394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2393)  ; LegacyF16ToF32(value)
  %2395 = fmul fast float %2357, %2394
  %2396 = call float @dx.op.unary.f32(i32 22, float %2395)  ; Frc(value)
  %2397 = mul nuw nsw i32 %2335, %2336
  %2398 = uitofp i32 %2397 to float
  %2399 = fmul fast float %2396, %2398
  %2400 = call float @dx.op.unary.f32(i32 27, float %2399)  ; Round_ni(value)
  %2401 = fptoui float %2400 to i32
  %2402 = urem i32 %2401, %2335
  %2403 = udiv i32 %2401, %2336
  %2404 = call float @dx.op.unary.f32(i32 22, float %2384)  ; Frc(value)
  %2405 = call float @dx.op.unary.f32(i32 22, float %2385)  ; Frc(value)
  %2406 = uitofp i32 %2402 to float
  %2407 = uitofp i32 %2403 to float
  %2408 = fadd fast float %2404, %2406
  %2409 = fadd fast float %2405, %2407
  %2410 = uitofp i32 %2335 to float
  %2411 = uitofp i32 %2336 to float
  %2412 = fdiv fast float %2408, %2410
  %2413 = fdiv fast float %2409, %2411
  br label %2414

; <label>:2414                                    ; preds = %2389, %2316
  %2415 = phi float [ %2412, %2389 ], [ %2384, %2316 ]
  %2416 = phi float [ %2413, %2389 ], [ %2385, %2316 ]
  %2417 = and i32 %2310, 16777216
  %2418 = icmp eq i32 %2417, 0
  br i1 %2418, label %2528, label %2419

; <label>:2419                                    ; preds = %2414
  %2420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2421 = extractvalue %dx.types.CBufRet.f32 %2420, 0
  %2422 = extractvalue %dx.types.CBufRet.f32 %2420, 1
  %2423 = extractvalue %dx.types.CBufRet.f32 %2420, 2
  %2424 = fadd fast float %2421, %153
  %2425 = fadd fast float %2422, %154
  %2426 = fadd fast float %2423, %155
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 0
  %2429 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2430 = icmp eq i32 %50, 65535
  br i1 %2430, label %2525, label %2431

; <label>:2431                                    ; preds = %2419
  %2432 = lshr i32 %50, 1
  %2433 = shl i32 %2432, 2
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = and i32 %50, 1
  %2437 = icmp ne i32 %2436, 0
  %2438 = lshr i32 %2435, 16
  %2439 = and i32 %2435, 65535
  %2440 = select i1 %2437, i32 %2438, i32 %2439
  %2441 = icmp eq i32 %2440, 65535
  br i1 %2441, label %2521, label %2442

; <label>:2442                                    ; preds = %2431
  %2443 = mul nuw nsw i32 %2440, 40
  %2444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2443, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.f32 %2444, 0
  %2446 = extractvalue %dx.types.ResRet.f32 %2444, 1
  %2447 = extractvalue %dx.types.ResRet.f32 %2444, 2
  %2448 = add nuw nsw i32 %2443, 12
  %2449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.f32 %2449, 0
  %2451 = extractvalue %dx.types.ResRet.f32 %2449, 1
  %2452 = extractvalue %dx.types.ResRet.f32 %2449, 2
  %2453 = add nuw nsw i32 %2443, 24
  %2454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.f32 %2454, 0
  %2456 = extractvalue %dx.types.ResRet.f32 %2454, 1
  %2457 = extractvalue %dx.types.ResRet.f32 %2454, 2
  %2458 = add nuw nsw i32 %2443, 36
  %2459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.f32 %2459, 0
  %2461 = fsub fast float %2424, %2445
  %2462 = fsub fast float %2425, %2446
  %2463 = fsub fast float %2426, %2447
  %2464 = fmul fast float %2460, %2461
  %2465 = fmul fast float %2460, %2462
  %2466 = fmul fast float %2460, %2463
  %2467 = call float @dx.op.unary.f32(i32 27, float %2464)  ; Round_ni(value)
  %2468 = call float @dx.op.unary.f32(i32 27, float %2465)  ; Round_ni(value)
  %2469 = call float @dx.op.unary.f32(i32 27, float %2466)  ; Round_ni(value)
  %2470 = fadd fast float %2467, 5.000000e-01
  %2471 = fadd fast float %2468, 5.000000e-01
  %2472 = fadd fast float %2469, 5.000000e-01
  %2473 = fmul fast float %2470, %2450
  %2474 = fmul fast float %2471, %2451
  %2475 = fmul fast float %2472, %2452
  %2476 = shl i32 %50, 2
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = add i32 %2478, 0
  %2480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2481 = call float @dx.op.unary.f32(i32 22, float %2473)  ; Frc(value)
  %2482 = call float @dx.op.unary.f32(i32 22, float %2474)  ; Frc(value)
  %2483 = call float @dx.op.unary.f32(i32 22, float %2475)  ; Frc(value)
  %2484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2480, %dx.types.Handle %44, float %2481, float %2482, float %2483, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2485 = extractvalue %dx.types.ResRet.f32 %2484, 0
  %2486 = extractvalue %dx.types.ResRet.f32 %2484, 1
  %2487 = extractvalue %dx.types.ResRet.f32 %2484, 2
  %2488 = fmul fast float %2485, 1.023000e+03
  %2489 = fmul fast float %2486, 1.023000e+03
  %2490 = fmul fast float %2487, 1.023000e+03
  %2491 = fadd fast float %2488, 5.000000e-01
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2490, 5.000000e-01
  %2494 = call float @dx.op.unary.f32(i32 27, float %2491)  ; Round_ni(value)
  %2495 = call float @dx.op.unary.f32(i32 27, float %2492)  ; Round_ni(value)
  %2496 = call float @dx.op.unary.f32(i32 27, float %2493)  ; Round_ni(value)
  %2497 = fsub fast float %2464, %2467
  %2498 = fsub fast float %2465, %2468
  %2499 = fsub fast float %2466, %2469
  %2500 = fmul fast float %2497, 7.500000e-01
  %2501 = fmul fast float %2498, 7.500000e-01
  %2502 = fmul fast float %2499, 7.500000e-01
  %2503 = fadd fast float %2467, 1.250000e-01
  %2504 = fadd fast float %2503, %2500
  %2505 = fadd fast float %2504, %2494
  %2506 = fadd fast float %2468, 1.250000e-01
  %2507 = fadd fast float %2506, %2501
  %2508 = fadd fast float %2507, %2495
  %2509 = fadd fast float %2469, 1.250000e-01
  %2510 = fadd fast float %2509, %2502
  %2511 = fadd fast float %2510, %2496
  %2512 = fmul fast float %2505, %2455
  %2513 = fmul fast float %2508, %2456
  %2514 = fmul fast float %2511, %2457
  %2515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2516 = extractvalue %dx.types.ResRet.i32 %2515, 0
  %2517 = add i32 %2516, 0
  %2518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2518, %dx.types.Handle %42, float %2512, float %2513, float %2514, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2520 = extractvalue %dx.types.ResRet.f32 %2519, 0
  br label %2521

; <label>:2521                                    ; preds = %2442, %2431
  %2522 = phi float [ %2520, %2442 ], [ -1.000000e+00, %2431 ]
  %2523 = fadd fast float %2522, %2429
  %2524 = call float @dx.op.unary.f32(i32 7, float %2523)  ; Saturate(value)
  br label %2525

; <label>:2525                                    ; preds = %2521, %2419
  %2526 = phi float [ %2524, %2521 ], [ %2429, %2419 ]
  %2527 = fmul fast float %2526, %455
  br label %2528

; <label>:2528                                    ; preds = %2525, %2414
  %2529 = phi float [ %2527, %2525 ], [ %455, %2414 ]
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = and i32 %2531, 256
  %2533 = icmp eq i32 %2532, 0
  br i1 %2533, label %2580, label %2534

; <label>:2534                                    ; preds = %2528
  %2535 = add i32 %49, 448
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = add i32 %2537, 0
  %2539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2539, %dx.types.Handle %95, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2541 = extractvalue %dx.types.ResRet.f32 %2540, 0
  %2542 = add i32 %49, 132
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2542, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = shl i32 %2544, 4
  %2546 = and i32 %2545, 32752
  %2547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2546)  ; LegacyF16ToF32(value)
  %2548 = lshr i32 %2544, 7
  %2549 = and i32 %2548, 32752
  %2550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2549)  ; LegacyF16ToF32(value)
  %2551 = fsub fast float 1.000000e+00, %2529
  %2552 = call float @dx.op.binary.f32(i32 35, float %2551, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2553 = bitcast float %2529 to i32
  %2554 = sitofp i32 %2553 to float
  %2555 = fadd fast float %2554, 0xC1CFBF8940000000
  %2556 = fmul fast float %2550, %2555
  %2557 = fadd fast float %2556, 0x41CFBF8940000000
  %2558 = fptosi float %2557 to i32
  %2559 = bitcast i32 %2558 to float
  %2560 = bitcast float %2552 to i32
  %2561 = sitofp i32 %2560 to float
  %2562 = fadd fast float %2561, 0xC1CFBF8940000000
  %2563 = fmul fast float %2562, %2550
  %2564 = fadd fast float %2563, 0x41CFBF8940000000
  %2565 = fptosi float %2564 to i32
  %2566 = bitcast i32 %2565 to float
  %2567 = fmul fast float %2559, %2547
  %2568 = fmul fast float %2566, %2547
  %2569 = fsub fast float %2552, %2567
  %2570 = fadd fast float %2568, %2552
  %2571 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2572 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  %2573 = fsub fast float %2541, %2571
  %2574 = fsub fast float %2572, %2571
  %2575 = bitcast float %2574 to i32
  %2576 = sub nsw i32 2129859010, %2575
  %2577 = bitcast i32 %2576 to float
  %2578 = fmul fast float %2577, %2573
  %2579 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  br label %2580

; <label>:2580                                    ; preds = %2534, %2528
  %2581 = phi float [ %2579, %2534 ], [ %2529, %2528 ]
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = and i32 %2583, 128
  %2585 = icmp eq i32 %2584, 0
  br i1 %2585, label %2602, label %2586

; <label>:2586                                    ; preds = %2580
  %2587 = add i32 %49, 432
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2587, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = add i32 %2589, 0
  %2591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2590, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2592 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2591, %dx.types.Handle %95, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2593 = extractvalue %dx.types.ResRet.f32 %2592, 0
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = and i32 %2595, 524288
  %2597 = icmp ne i32 %2596, 0
  %2598 = fcmp fast ogt float %2593, 0x3FE0101020000000
  %2599 = select i1 %2598, float 1.000000e+00, float 0.000000e+00
  %2600 = select i1 %2597, float %2599, float %2593
  %2601 = fmul fast float %2600, %2581
  br label %2602

; <label>:2602                                    ; preds = %2586, %2580
  %2603 = phi float [ %2601, %2586 ], [ %2581, %2580 ]
  %2604 = fcmp fast ult float %2603, 0x3F70101020000000
  br i1 %2604, label %3343, label %2605

; <label>:2605                                    ; preds = %2602
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = and i32 %2607, 16
  %2609 = icmp eq i32 %2608, 0
  br i1 %2609, label %2808, label %2610

; <label>:2610                                    ; preds = %2605
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = add i32 %49, 384
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = add i32 %2615, 0
  %2617 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2616, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2618 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2617, %dx.types.Handle %94, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2619 = extractvalue %dx.types.ResRet.f32 %2618, 0
  %2620 = extractvalue %dx.types.ResRet.f32 %2618, 1
  %2621 = extractvalue %dx.types.ResRet.f32 %2618, 2
  %2622 = extractvalue %dx.types.ResRet.f32 %2618, 3
  %2623 = and i32 %2612, 255
  %2624 = uitofp i32 %2623 to float
  %2625 = lshr i32 %2612, 8
  %2626 = and i32 %2625, 255
  %2627 = uitofp i32 %2626 to float
  %2628 = fmul fast float %2622, %2624
  %2629 = fadd fast float %2628, %2627
  %2630 = fmul fast float %2629, 0x3F70101000000000
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 512
  %2634 = icmp eq i32 %2633, 0
  br i1 %2634, label %2643, label %2635

; <label>:2635                                    ; preds = %2610
  %2636 = add i32 %49, 464
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = add i32 %2638, 0
  %2640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2640, %dx.types.Handle %95, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2642 = extractvalue %dx.types.ResRet.f32 %2641, 0
  br label %2643

; <label>:2643                                    ; preds = %2635, %2610
  %2644 = phi float [ %2642, %2635 ], [ 1.000000e+00, %2610 ]
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 33554432
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2755, label %2649

; <label>:2649                                    ; preds = %2643
  %2650 = add i32 %49, 256
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = and i32 %2652, 65535
  %2654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2653)  ; LegacyF16ToF32(value)
  %2655 = lshr i32 %2652, 16
  %2656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2655)  ; LegacyF16ToF32(value)
  %2657 = add i32 %49, 260
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = and i32 %2659, 65535
  %2661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2660)  ; LegacyF16ToF32(value)
  %2662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2663 = extractvalue %dx.types.ResRet.i32 %2662, 0
  %2664 = lshr i32 %2663, 24
  %2665 = uitofp i32 %2664 to float
  %2666 = fmul fast float %2665, 0x3F70101020000000
  %2667 = and i32 %2663, 255
  %2668 = uitofp i32 %2667 to float
  %2669 = fmul fast float %2668, 0x3F70101020000000
  %2670 = lshr i32 %2663, 8
  %2671 = and i32 %2670, 255
  %2672 = uitofp i32 %2671 to float
  %2673 = fmul fast float %2672, 0x3F70101020000000
  %2674 = lshr i32 %2663, 16
  %2675 = and i32 %2674, 255
  %2676 = uitofp i32 %2675 to float
  %2677 = fmul fast float %2676, 0x3F70101020000000
  %2678 = add i32 %49, 252
  %2679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2680 = extractvalue %dx.types.ResRet.i32 %2679, 0
  %2681 = lshr i32 %2680, 24
  %2682 = uitofp i32 %2681 to float
  %2683 = fmul fast float %2682, 0x3F70101020000000
  %2684 = and i32 %2680, 255
  %2685 = uitofp i32 %2684 to float
  %2686 = fmul fast float %2685, 0x3F70101020000000
  %2687 = lshr i32 %2680, 8
  %2688 = and i32 %2687, 255
  %2689 = uitofp i32 %2688 to float
  %2690 = fmul fast float %2689, 0x3F70101020000000
  %2691 = lshr i32 %2680, 16
  %2692 = and i32 %2691, 255
  %2693 = uitofp i32 %2692 to float
  %2694 = fmul fast float %2693, 0x3F70101020000000
  %2695 = bitcast float %2619 to i32
  %2696 = ashr i32 %2695, 1
  %2697 = sub nsw i32 1597463174, %2696
  %2698 = bitcast i32 %2697 to float
  %2699 = fmul fast float %2619, 5.000000e-01
  %2700 = fmul fast float %2698, %2698
  %2701 = fmul fast float %2700, %2699
  %2702 = fsub fast float 1.500000e+00, %2701
  %2703 = fmul fast float %2698, %2619
  %2704 = fmul fast float %2703, %2702
  %2705 = bitcast float %2620 to i32
  %2706 = ashr i32 %2705, 1
  %2707 = sub nsw i32 1597463174, %2706
  %2708 = bitcast i32 %2707 to float
  %2709 = fmul fast float %2620, 5.000000e-01
  %2710 = fmul fast float %2708, %2708
  %2711 = fmul fast float %2710, %2709
  %2712 = fsub fast float 1.500000e+00, %2711
  %2713 = fmul fast float %2708, %2620
  %2714 = fmul fast float %2713, %2712
  %2715 = bitcast float %2621 to i32
  %2716 = ashr i32 %2715, 1
  %2717 = sub nsw i32 1597463174, %2716
  %2718 = bitcast i32 %2717 to float
  %2719 = fmul fast float %2621, 5.000000e-01
  %2720 = fmul fast float %2718, %2718
  %2721 = fmul fast float %2720, %2719
  %2722 = fsub fast float 1.500000e+00, %2721
  %2723 = fmul fast float %2718, %2621
  %2724 = fmul fast float %2723, %2722
  %2725 = fsub fast float %2704, %2686
  %2726 = fsub fast float %2714, %2690
  %2727 = fsub fast float %2724, %2694
  %2728 = fmul fast float %2725, %2654
  %2729 = fmul fast float %2726, %2656
  %2730 = fmul fast float %2727, %2661
  %2731 = fadd fast float %2728, %2669
  %2732 = fadd fast float %2729, %2673
  %2733 = fadd fast float %2730, %2677
  %2734 = call float @dx.op.unary.f32(i32 7, float %2731)  ; Saturate(value)
  %2735 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2736 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2737 = fmul fast float %2734, %2734
  %2738 = fmul fast float %2735, %2735
  %2739 = fmul fast float %2736, %2736
  %2740 = fsub fast float %2737, %2619
  %2741 = fsub fast float %2738, %2620
  %2742 = fsub fast float %2739, %2621
  %2743 = fmul fast float %2740, %2644
  %2744 = fmul fast float %2741, %2644
  %2745 = fmul fast float %2742, %2644
  %2746 = fadd fast float %2743, %2619
  %2747 = fadd fast float %2744, %2620
  %2748 = fadd fast float %2745, %2621
  %2749 = fadd fast float %2666, %2630
  %2750 = fsub fast float %2749, %2683
  %2751 = call float @dx.op.unary.f32(i32 7, float %2750)  ; Saturate(value)
  %2752 = fsub fast float %2751, %2630
  %2753 = fmul fast float %2752, %2644
  %2754 = fadd fast float %2753, %2630
  br label %2808

; <label>:2755                                    ; preds = %2643
  %2756 = and i32 %2646, 134217728
  %2757 = icmp eq i32 %2756, 0
  br i1 %2757, label %2792, label %2758

; <label>:2758                                    ; preds = %2755
  %2759 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2760 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2761 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2762 = fadd fast float %2759, -5.000000e-01
  %2763 = fadd fast float %2760, -5.000000e-01
  %2764 = fadd fast float %2761, -5.000000e-01
  %2765 = fmul fast float %2762, %2644
  %2766 = fmul fast float %2763, %2644
  %2767 = fmul fast float %2764, %2644
  %2768 = fadd fast float %2765, 5.000000e-01
  %2769 = fadd fast float %2766, 5.000000e-01
  %2770 = fadd fast float %2767, 5.000000e-01
  %2771 = call float @dx.op.unary.f32(i32 24, float %2619)  ; Sqrt(value)
  %2772 = call float @dx.op.unary.f32(i32 24, float %2620)  ; Sqrt(value)
  %2773 = call float @dx.op.unary.f32(i32 24, float %2621)  ; Sqrt(value)
  %2774 = fmul fast float %2768, 2.000000e+00
  %2775 = fsub fast float 1.000000e+00, %2774
  %2776 = fmul fast float %2775, %2771
  %2777 = fadd fast float %2776, %2774
  %2778 = fmul fast float %2777, %2771
  %2779 = fmul fast float %2769, 2.000000e+00
  %2780 = fsub fast float 1.000000e+00, %2779
  %2781 = fmul fast float %2780, %2772
  %2782 = fadd fast float %2781, %2779
  %2783 = fmul fast float %2782, %2772
  %2784 = fmul fast float %2770, 2.000000e+00
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = fmul fast float %2785, %2773
  %2787 = fadd fast float %2786, %2784
  %2788 = fmul fast float %2787, %2773
  %2789 = fmul fast float %2778, %2778
  %2790 = fmul fast float %2783, %2783
  %2791 = fmul fast float %2788, %2788
  br label %2808

; <label>:2792                                    ; preds = %2755
  %2793 = fmul fast float %330, %330
  %2794 = fmul fast float %334, %334
  %2795 = fmul fast float %338, %338
  %2796 = fadd fast float %2793, -1.000000e+00
  %2797 = fadd fast float %2794, -1.000000e+00
  %2798 = fadd fast float %2795, -1.000000e+00
  %2799 = fmul fast float %2644, %2796
  %2800 = fmul fast float %2644, %2797
  %2801 = fmul fast float %2644, %2798
  %2802 = fadd fast float %2799, 1.000000e+00
  %2803 = fadd fast float %2800, 1.000000e+00
  %2804 = fadd fast float %2801, 1.000000e+00
  %2805 = fmul fast float %2802, %2619
  %2806 = fmul fast float %2803, %2620
  %2807 = fmul fast float %2804, %2621
  br label %2808

; <label>:2808                                    ; preds = %2792, %2758, %2649, %2605
  %2809 = phi float [ %2754, %2649 ], [ %2630, %2758 ], [ %2630, %2792 ], [ 0x3FA23C0BE0000000, %2605 ]
  %2810 = phi float [ %2746, %2649 ], [ %2789, %2758 ], [ %2805, %2792 ], [ 1.000000e+00, %2605 ]
  %2811 = phi float [ %2747, %2649 ], [ %2790, %2758 ], [ %2806, %2792 ], [ 1.000000e+00, %2605 ]
  %2812 = phi float [ %2748, %2649 ], [ %2791, %2758 ], [ %2807, %2792 ], [ 1.000000e+00, %2605 ]
  %2813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.i32 %2813, 1
  %2815 = and i32 %2814, 1
  %2816 = icmp ne i32 %2815, 0
  %2817 = add i32 %49, 356
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = and i32 %2819, 32
  %2821 = icmp ne i32 %2820, 0
  %2822 = and i1 %2816, %2821
  %2823 = select i1 %2822, float 1.000000e+00, float %2810
  %2824 = select i1 %2822, float 0x3FD3333340000000, float %2811
  %2825 = select i1 %2822, float 0x3FD3333340000000, float %2812
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = and i32 %2827, 32
  %2829 = icmp eq i32 %2828, 0
  br i1 %2829, label %2902, label %2830

; <label>:2830                                    ; preds = %2808
  %2831 = add i32 %49, 124
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = add i32 %49, 400
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = add i32 %2836, 0
  %2838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2839 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2838, %dx.types.Handle %94, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2840 = extractvalue %dx.types.ResRet.f32 %2839, 0
  %2841 = extractvalue %dx.types.ResRet.f32 %2839, 1
  %2842 = extractvalue %dx.types.ResRet.f32 %2839, 2
  %2843 = extractvalue %dx.types.ResRet.f32 %2839, 3
  %2844 = and i32 %2833, 255
  %2845 = uitofp i32 %2844 to float
  %2846 = lshr i32 %2833, 8
  %2847 = and i32 %2846, 255
  %2848 = uitofp i32 %2847 to float
  %2849 = lshr i32 %2833, 16
  %2850 = and i32 %2849, 255
  %2851 = uitofp i32 %2850 to float
  %2852 = fmul fast float %2851, 0x3F70101000000000
  %2853 = fmul fast float %2840, %2845
  %2854 = fadd fast float %2853, %2848
  %2855 = fmul fast float %2854, 0x3F70101000000000
  %2856 = fadd fast float %2841, -5.000000e-01
  %2857 = fadd fast float %2843, -5.000000e-01
  %2858 = fmul fast float %2856, %2852
  %2859 = fmul fast float %2857, %2852
  %2860 = fadd fast float %2858, 5.000000e-01
  %2861 = fadd fast float %2859, 5.000000e-01
  %2862 = fmul fast float %2860, 2.000000e+00
  %2863 = fadd fast float %2862, -1.000000e+00
  %2864 = fmul fast float %2861, 2.000000e+00
  %2865 = fadd fast float %2864, -1.000000e+00
  %2866 = fadd fast float %2863, %2865
  %2867 = fmul fast float %2866, 5.000000e-01
  %2868 = fsub fast float %2863, %2865
  %2869 = fmul fast float %2868, 5.000000e-01
  %2870 = call float @dx.op.unary.f32(i32 6, float %2867)  ; FAbs(value)
  %2871 = fsub fast float 1.000000e+00, %2870
  %2872 = call float @dx.op.unary.f32(i32 6, float %2869)  ; FAbs(value)
  %2873 = fsub fast float %2871, %2872
  %2874 = call float @dx.op.dot3.f32(i32 55, float %2867, float %2869, float %2873, float %2867, float %2869, float %2873)  ; Dot3(ax,ay,az,bx,by,bz)
  %2875 = call float @dx.op.unary.f32(i32 25, float %2874)  ; Rsqrt(value)
  %2876 = fmul fast float %2867, %2875
  %2877 = fmul fast float %2869, %2875
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, 67108864
  %2881 = icmp eq i32 %2880, 0
  br i1 %2881, label %2898, label %2882

; <label>:2882                                    ; preds = %2830
  %2883 = add i32 %49, 312
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 65535
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = and i32 %2889, 65535
  %2891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2890)  ; LegacyF16ToF32(value)
  %2892 = lshr i32 %2885, 16
  %2893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2892)  ; LegacyF16ToF32(value)
  %2894 = fsub fast float %2855, %2893
  %2895 = fmul fast float %2894, %2887
  %2896 = fadd fast float %2895, %2891
  %2897 = call float @dx.op.unary.f32(i32 7, float %2896)  ; Saturate(value)
  br label %2898

; <label>:2898                                    ; preds = %2882, %2830
  %2899 = phi float [ %2897, %2882 ], [ %2855, %2830 ]
  %2900 = call float @dx.op.dot2.f32(i32 54, float %2876, float %2877, float %2319, float %2320)  ; Dot2(ax,ay,bx,by)
  %2901 = call float @dx.op.dot2.f32(i32 54, float %2876, float %2877, float %2321, float %2322)  ; Dot2(ax,ay,bx,by)
  br label %2902

; <label>:2902                                    ; preds = %2898, %2808
  %2903 = phi float [ %2899, %2898 ], [ 0x3FD6666660000000, %2808 ]
  %2904 = phi float [ %2900, %2898 ], [ 0.000000e+00, %2808 ]
  %2905 = phi float [ %2901, %2898 ], [ 0.000000e+00, %2808 ]
  %2906 = phi float [ %2842, %2898 ], [ 1.000000e+00, %2808 ]
  %2907 = add i32 %49, 192
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = lshr i32 %2909, 22
  %2911 = shl nuw nsw i32 %2910, 5
  %2912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2911)  ; LegacyF16ToF32(value)
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = and i32 %2914, 64
  %2916 = icmp eq i32 %2915, 0
  br i1 %2916, label %2950, label %2917

; <label>:2917                                    ; preds = %2902
  %2918 = add i32 %49, 416
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2918, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = add i32 %2920, 0
  %2922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2921, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = and i32 %2924, 131072
  %2926 = icmp eq i32 %2925, 0
  %2927 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2922, %dx.types.Handle %94, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2928 = extractvalue %dx.types.ResRet.f32 %2927, 0
  %2929 = extractvalue %dx.types.ResRet.f32 %2927, 1
  %2930 = extractvalue %dx.types.ResRet.f32 %2927, 2
  %2931 = fmul fast float %2928, %318
  %2932 = fmul fast float %2929, %321
  %2933 = fmul fast float %2930, %324
  br i1 %2926, label %2940, label %2934

; <label>:2934                                    ; preds = %2917
  %2935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2936 = extractvalue %dx.types.CBufRet.f32 %2935, 0
  %2937 = fmul fast float %2936, %2931
  %2938 = fmul fast float %2936, %2932
  %2939 = fmul fast float %2936, %2933
  br label %2940

; <label>:2940                                    ; preds = %2934, %2917
  %2941 = phi float [ %2937, %2934 ], [ %2931, %2917 ]
  %2942 = phi float [ %2938, %2934 ], [ %2932, %2917 ]
  %2943 = phi float [ %2939, %2934 ], [ %2933, %2917 ]
  %2944 = fmul fast float %2941, %2912
  %2945 = select i1 %214, float %2944, float %2941
  %2946 = call float @dx.op.dot3.f32(i32 55, float %2945, float %2942, float %2943, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2947 = select i1 %214, float 0.000000e+00, float %2941
  %2948 = select i1 %214, float %2946, float %2942
  %2949 = select i1 %214, float 0.000000e+00, float %2943
  br label %2950

; <label>:2950                                    ; preds = %2940, %2902
  %2951 = phi float [ %2947, %2940 ], [ 0.000000e+00, %2902 ]
  %2952 = phi float [ %2948, %2940 ], [ 0.000000e+00, %2902 ]
  %2953 = phi float [ %2949, %2940 ], [ 0.000000e+00, %2902 ]
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = and i32 %2955, 1024
  %2957 = icmp eq i32 %2956, 0
  br i1 %2957, label %2988, label %2958

; <label>:2958                                    ; preds = %2950
  %2959 = add i32 %49, 184
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %2961, 255
  %2963 = uitofp i32 %2962 to float
  %2964 = fmul fast float %2963, 0x3F70101020000000
  %2965 = lshr i32 %2961, 8
  %2966 = and i32 %2965, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = lshr i32 %2961, 16
  %2970 = and i32 %2969, 255
  %2971 = uitofp i32 %2970 to float
  %2972 = fmul fast float %2971, 0x3F70101020000000
  %2973 = fmul fast float %2964, %2964
  %2974 = fmul fast float %2968, %2968
  %2975 = fmul fast float %2972, %2972
  %2976 = add i32 %49, 480
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = add i32 %2978, 0
  %2980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2980, %dx.types.Handle %95, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = extractvalue %dx.types.ResRet.f32 %2981, 1
  %2984 = extractvalue %dx.types.ResRet.f32 %2981, 2
  %2985 = fmul fast float %2973, %2982
  %2986 = fmul fast float %2974, %2983
  %2987 = fmul fast float %2975, %2984
  br label %2988

; <label>:2988                                    ; preds = %2958, %2950
  %2989 = phi float [ %2985, %2958 ], [ 0.000000e+00, %2950 ]
  %2990 = phi float [ %2986, %2958 ], [ 0.000000e+00, %2950 ]
  %2991 = phi float [ %2987, %2958 ], [ 0.000000e+00, %2950 ]
  %2992 = fcmp fast ogt float %2989, 0.000000e+00
  %2993 = fcmp fast ogt float %2990, 0.000000e+00
  %2994 = fcmp fast ogt float %2991, 0.000000e+00
  %2995 = call float @dx.op.unary.f32(i32 23, float %2989)  ; Log(value)
  %2996 = call float @dx.op.unary.f32(i32 23, float %2990)  ; Log(value)
  %2997 = call float @dx.op.unary.f32(i32 23, float %2991)  ; Log(value)
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = lshr i32 %2999, 7
  %3001 = and i32 %3000, 32752
  %3002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3001)  ; LegacyF16ToF32(value)
  %3003 = fmul fast float %2995, 0xBFE62E4300000000
  %3004 = fmul fast float %3003, %3002
  %3005 = fmul fast float %2996, 0xBFE62E4300000000
  %3006 = fmul fast float %3005, %3002
  %3007 = fmul fast float %2997, 0xBFE62E4300000000
  %3008 = fmul fast float %3007, %3002
  %3009 = select i1 %2992, float %3004, float 1.270000e+02
  %3010 = select i1 %2993, float %3006, float 1.270000e+02
  %3011 = select i1 %2994, float %3008, float 1.270000e+02
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = and i32 %3013, 10240
  %3015 = icmp eq i32 %3014, 0
  br i1 %3015, label %3060, label %3016

; <label>:3016                                    ; preds = %2988
  %3017 = add i32 %49, 496
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = add i32 %3019, 0
  %3021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3021, %dx.types.Handle %95, float %2415, float %2416, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 1
  %3024 = extractvalue %dx.types.ResRet.f32 %3022, 3
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = and i32 %3026, 1048576
  %3028 = icmp ne i32 %3027, 0
  %3029 = and i32 %3026, 8192
  %3030 = icmp eq i32 %3029, 0
  br i1 %3030, label %3046, label %3031

; <label>:3031                                    ; preds = %3016
  %3032 = extractvalue %dx.types.ResRet.f32 %3022, 2
  %3033 = select i1 %3028, float %3032, float %3023
  %3034 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3035 = select i1 %3028, float %3034, float %3023
  %3036 = add i32 %49, 128
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3036, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = lshr i32 %3038, 16
  %3040 = and i32 %3039, 255
  %3041 = uitofp i32 %3040 to float
  %3042 = fmul fast float %3041, 0x3F80101020000000
  %3043 = fmul fast float %3042, %3035
  %3044 = fmul fast float %3042, %3023
  %3045 = fmul fast float %3042, %3033
  br label %3046

; <label>:3046                                    ; preds = %3031, %3016
  %3047 = phi float [ %3043, %3031 ], [ 0.000000e+00, %3016 ]
  %3048 = phi float [ %3044, %3031 ], [ 0.000000e+00, %3016 ]
  %3049 = phi float [ %3045, %3031 ], [ 0.000000e+00, %3016 ]
  %3050 = and i32 %3026, 2048
  %3051 = icmp eq i32 %3050, 0
  br i1 %3051, label %3060, label %3052

; <label>:3052                                    ; preds = %3046
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = shl i32 %3054, 4
  %3056 = and i32 %3055, 32752
  %3057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3056)  ; LegacyF16ToF32(value)
  %3058 = fmul fast float %3057, %3024
  %3059 = call float @dx.op.binary.f32(i32 35, float %3058, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3060

; <label>:3060                                    ; preds = %3052, %3046, %2988
  %3061 = phi float [ %3047, %3052 ], [ %3047, %3046 ], [ 0.000000e+00, %2988 ]
  %3062 = phi float [ %3048, %3052 ], [ %3048, %3046 ], [ 0.000000e+00, %2988 ]
  %3063 = phi float [ %3049, %3052 ], [ %3049, %3046 ], [ 0.000000e+00, %2988 ]
  %3064 = phi float [ %3059, %3052 ], [ 0x3F70101020000000, %3046 ], [ 0x3F70101020000000, %2988 ]
  %3065 = add i32 %49, 128
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = and i32 %3067, 255
  %3069 = uitofp i32 %3068 to float
  %3070 = lshr i32 %3067, 8
  %3071 = and i32 %3070, 255
  %3072 = uitofp i32 %3071 to float
  %3073 = call float @dx.op.dot3.f32(i32 55, float %2823, float %2824, float %2825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3074 = fmul fast float %3072, %3073
  %3075 = fadd fast float %3074, %3069
  %3076 = fmul fast float %3075, 0x3F70101020000000
  %3077 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  br i1 %2307, label %3078, label %3113

; <label>:3078                                    ; preds = %3060
  %3079 = fmul fast float %3064, 2.000000e+00
  %3080 = fcmp fast olt float %3009, 1.270000e+02
  %3081 = fcmp fast olt float %3010, 1.270000e+02
  %3082 = fcmp fast olt float %3011, 1.270000e+02
  %3083 = fmul fast float %3009, 0xBFF7154760000000
  %3084 = fmul fast float %3083, %3079
  %3085 = fmul fast float %3010, 0xBFF7154760000000
  %3086 = fmul fast float %3085, %3079
  %3087 = fmul fast float %3011, 0xBFF7154760000000
  %3088 = fmul fast float %3087, %3079
  %3089 = call float @dx.op.unary.f32(i32 21, float %3084)  ; Exp(value)
  %3090 = call float @dx.op.unary.f32(i32 21, float %3086)  ; Exp(value)
  %3091 = call float @dx.op.unary.f32(i32 21, float %3088)  ; Exp(value)
  %3092 = call float @dx.op.unary.f32(i32 7, float %3089)  ; Saturate(value)
  %3093 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3094 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3095 = fadd fast float %3092, -1.000000e+00
  %3096 = select i1 %3080, float %3095, float -1.000000e+00
  %3097 = fadd fast float %3093, -1.000000e+00
  %3098 = select i1 %3081, float %3097, float -1.000000e+00
  %3099 = fadd fast float %3094, -1.000000e+00
  %3100 = select i1 %3082, float %3099, float -1.000000e+00
  %3101 = fmul fast float %3096, %2603
  %3102 = fmul fast float %3098, %2603
  %3103 = fmul fast float %3100, %2603
  %3104 = fadd fast float %3101, 1.000000e+00
  %3105 = fadd fast float %3102, 1.000000e+00
  %3106 = fadd fast float %3103, 1.000000e+00
  %3107 = fmul fast float %3104, %2289
  %3108 = fmul fast float %3105, %2290
  %3109 = fmul fast float %3106, %2291
  %3110 = fmul fast float %3104, %2298
  %3111 = fmul fast float %3105, %2299
  %3112 = fmul fast float %3106, %2300
  br label %3113

; <label>:3113                                    ; preds = %3078, %3060
  %3114 = phi float [ %3107, %3078 ], [ %2289, %3060 ]
  %3115 = phi float [ %3108, %3078 ], [ %2290, %3060 ]
  %3116 = phi float [ %3109, %3078 ], [ %2291, %3060 ]
  %3117 = phi float [ %3110, %3078 ], [ %2298, %3060 ]
  %3118 = phi float [ %3111, %3078 ], [ %2299, %3060 ]
  %3119 = phi float [ %3112, %3078 ], [ %2300, %3060 ]
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 3
  %3123 = icmp eq i32 %3122, 3
  br i1 %3123, label %3202, label %3124

; <label>:3124                                    ; preds = %3113
  %3125 = and i32 %3121, 16
  %3126 = icmp ne i32 %3125, 0
  %3127 = select i1 %3126, float %2603, float 0.000000e+00
  %3128 = icmp eq i32 %3122, 0
  br i1 %3128, label %3129, label %3157

; <label>:3129                                    ; preds = %3124
  %3130 = and i32 %3121, 64
  %3131 = icmp ne i32 %3130, 0
  %3132 = select i1 %3131, float %2603, float 0.000000e+00
  %3133 = fsub fast float %2823, %3114
  %3134 = fsub fast float %2824, %3115
  %3135 = fsub fast float %2825, %3116
  %3136 = fmul fast float %3127, %3133
  %3137 = fmul fast float %3127, %3134
  %3138 = fmul fast float %3127, %3135
  %3139 = fadd fast float %3136, %3114
  %3140 = fadd fast float %3137, %3115
  %3141 = fadd fast float %3138, %3116
  %3142 = fsub fast float %2809, %2301
  %3143 = fmul fast float %3127, %3142
  %3144 = fadd fast float %3143, %2301
  %3145 = fsub fast float %2951, %3117
  %3146 = fsub fast float %2952, %3118
  %3147 = fsub fast float %2953, %3119
  %3148 = fmul fast float %3132, %3145
  %3149 = fmul fast float %3132, %3146
  %3150 = fmul fast float %3132, %3147
  %3151 = fadd fast float %3148, %3117
  %3152 = fadd fast float %3149, %3118
  %3153 = fadd fast float %3150, %3119
  %3154 = fsub fast float %3077, %2305
  %3155 = fmul fast float %3127, %3154
  %3156 = fadd fast float %3155, %2305
  br label %3202

; <label>:3157                                    ; preds = %3124
  %3158 = icmp eq i32 %3122, 1
  br i1 %3158, label %3159, label %3172

; <label>:3159                                    ; preds = %3157
  %3160 = fadd fast float %2823, -1.000000e+00
  %3161 = fadd fast float %2824, -1.000000e+00
  %3162 = fadd fast float %2825, -1.000000e+00
  %3163 = fmul fast float %3127, %3160
  %3164 = fmul fast float %3127, %3161
  %3165 = fmul fast float %3127, %3162
  %3166 = fadd fast float %3163, 1.000000e+00
  %3167 = fadd fast float %3164, 1.000000e+00
  %3168 = fadd fast float %3165, 1.000000e+00
  %3169 = fmul fast float %3166, %3114
  %3170 = fmul fast float %3167, %3115
  %3171 = fmul fast float %3168, %3116
  br label %3202

; <label>:3172                                    ; preds = %3157
  %3173 = icmp eq i32 %3122, 2
  br i1 %3173, label %3174, label %3202

; <label>:3174                                    ; preds = %3172
  %3175 = call float @dx.op.unary.f32(i32 24, float %2823)  ; Sqrt(value)
  %3176 = call float @dx.op.unary.f32(i32 24, float %2824)  ; Sqrt(value)
  %3177 = call float @dx.op.unary.f32(i32 24, float %2825)  ; Sqrt(value)
  %3178 = fadd fast float %3175, -5.000000e-01
  %3179 = fadd fast float %3176, -5.000000e-01
  %3180 = fadd fast float %3177, -5.000000e-01
  %3181 = fmul fast float %3178, %3127
  %3182 = fmul fast float %3179, %3127
  %3183 = fmul fast float %3180, %3127
  %3184 = fadd fast float %3181, 5.000000e-01
  %3185 = fadd fast float %3182, 5.000000e-01
  %3186 = fadd fast float %3183, 5.000000e-01
  %3187 = fmul fast float %3184, 2.000000e+00
  %3188 = fsub fast float 1.000000e+00, %3187
  %3189 = fmul fast float %3188, %3114
  %3190 = fadd fast float %3189, %3187
  %3191 = fmul fast float %3190, %3114
  %3192 = fmul fast float %3185, 2.000000e+00
  %3193 = fsub fast float 1.000000e+00, %3192
  %3194 = fmul fast float %3193, %3115
  %3195 = fadd fast float %3194, %3192
  %3196 = fmul fast float %3195, %3115
  %3197 = fmul fast float %3186, 2.000000e+00
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = fmul fast float %3198, %3116
  %3200 = fadd fast float %3199, %3197
  %3201 = fmul fast float %3200, %3116
  br label %3202

; <label>:3202                                    ; preds = %3174, %3172, %3159, %3129, %3113
  %3203 = phi float [ %3114, %3113 ], [ %3191, %3174 ], [ %3114, %3172 ], [ %3169, %3159 ], [ %3139, %3129 ]
  %3204 = phi float [ %3115, %3113 ], [ %3196, %3174 ], [ %3115, %3172 ], [ %3170, %3159 ], [ %3140, %3129 ]
  %3205 = phi float [ %3116, %3113 ], [ %3201, %3174 ], [ %3116, %3172 ], [ %3171, %3159 ], [ %3141, %3129 ]
  %3206 = phi float [ %3117, %3113 ], [ %3117, %3174 ], [ %3117, %3172 ], [ %3117, %3159 ], [ %3151, %3129 ]
  %3207 = phi float [ %3118, %3113 ], [ %3118, %3174 ], [ %3118, %3172 ], [ %3118, %3159 ], [ %3152, %3129 ]
  %3208 = phi float [ %3119, %3113 ], [ %3119, %3174 ], [ %3119, %3172 ], [ %3119, %3159 ], [ %3153, %3129 ]
  %3209 = phi float [ %2301, %3113 ], [ %2301, %3174 ], [ %2301, %3172 ], [ %2301, %3159 ], [ %3144, %3129 ]
  %3210 = phi float [ %2305, %3113 ], [ %2305, %3174 ], [ %2305, %3172 ], [ %2305, %3159 ], [ %3156, %3129 ]
  %3211 = and i32 %3121, 12
  %3212 = icmp eq i32 %3211, 12
  br i1 %3212, label %3343, label %3213

; <label>:3213                                    ; preds = %3202
  %3214 = and i32 %3121, 2097184
  %3215 = icmp eq i32 %3214, 2097184
  %3216 = select i1 %3215, float %2603, float 0.000000e+00
  %3217 = and i32 %3121, 4194336
  %3218 = icmp eq i32 %3217, 4194336
  %3219 = select i1 %3218, float %2603, float 0.000000e+00
  %3220 = and i32 %3121, 8388640
  %3221 = icmp eq i32 %3220, 8388640
  %3222 = select i1 %3221, float %2603, float 0.000000e+00
  %3223 = and i32 %3121, 1024
  %3224 = icmp ne i32 %3223, 0
  %3225 = select i1 %3224, float %2603, float 0.000000e+00
  %3226 = and i32 %3121, 2048
  %3227 = icmp ne i32 %3226, 0
  %3228 = select i1 %3227, float %2603, float 0.000000e+00
  %3229 = and i32 %3121, 8192
  %3230 = icmp ne i32 %3229, 0
  %3231 = select i1 %3230, float %2603, float 0.000000e+00
  %3232 = icmp eq i32 %3211, 0
  br i1 %3232, label %3233, label %3267

; <label>:3233                                    ; preds = %3213
  %3234 = fsub fast float %2904, %2287
  %3235 = fsub fast float %2905, %2288
  %3236 = fmul fast float %3216, %3234
  %3237 = fmul fast float %3216, %3235
  %3238 = fadd fast float %3236, %2287
  %3239 = fadd fast float %3237, %2288
  %3240 = fsub fast float %2906, %2303
  %3241 = fmul fast float %3219, %3240
  %3242 = fadd fast float %3241, %2303
  %3243 = fsub fast float %2903, %2302
  %3244 = fmul fast float %3222, %3243
  %3245 = fadd fast float %3244, %2302
  %3246 = fsub fast float %3009, %2295
  %3247 = fsub fast float %3010, %2296
  %3248 = fsub fast float %3011, %2297
  %3249 = fmul fast float %3225, %3246
  %3250 = fmul fast float %3225, %3247
  %3251 = fmul fast float %3225, %3248
  %3252 = fadd fast float %3249, %2295
  %3253 = fadd fast float %3250, %2296
  %3254 = fadd fast float %3251, %2297
  %3255 = fsub fast float %3064, %2304
  %3256 = fmul fast float %3228, %3255
  %3257 = fadd fast float %3256, %2304
  %3258 = fsub fast float %3061, %2292
  %3259 = fsub fast float %3062, %2293
  %3260 = fsub fast float %3063, %2294
  %3261 = fmul fast float %3231, %3258
  %3262 = fmul fast float %3231, %3259
  %3263 = fmul fast float %3231, %3260
  %3264 = fadd fast float %3261, %2292
  %3265 = fadd fast float %3262, %2293
  %3266 = fadd fast float %3263, %2294
  br label %3343

; <label>:3267                                    ; preds = %3213
  %3268 = icmp eq i32 %3211, 4
  br i1 %3268, label %3269, label %3315

; <label>:3269                                    ; preds = %3267
  %3270 = fmul fast float %3216, %2904
  %3271 = fmul fast float %3216, %2905
  %3272 = fadd fast float %3270, %2287
  %3273 = fadd fast float %3271, %2288
  %3274 = call float @dx.op.binary.f32(i32 36, float %2303, float %2906)  ; FMin(a,b)
  %3275 = fsub fast float %3274, %2303
  %3276 = fmul fast float %3275, %3219
  %3277 = fadd fast float %3276, %2303
  %3278 = fadd fast float %2903, %2302
  %3279 = fmul fast float %3278, 0x3FF337FAE0000000
  %3280 = fmul fast float %2302, %2302
  %3281 = fmul fast float %2903, %2903
  %3282 = fadd fast float %3281, %3280
  %3283 = fmul fast float %3282, 0x3FE5152B00000000
  %3284 = fmul fast float %2302, 0xBFCC1F85E0000000
  %3285 = fmul fast float %3284, %2903
  %3286 = fadd fast float %3285, 0xBFE1363700000000
  %3287 = fadd fast float %3286, %3279
  %3288 = fsub fast float %3287, %3283
  %3289 = fmul fast float %3278, 0x3FBA6F0D00000000
  %3290 = fmul fast float %3282, 0x3FD0432880000000
  %3291 = fmul fast float %2302, 0xBFEF110800000000
  %3292 = fmul fast float %3291, %2903
  %3293 = fadd fast float %3292, 1.000000e+00
  %3294 = fsub fast float %3293, %3289
  %3295 = fadd fast float %3294, %3290
  %3296 = fdiv fast float %3288, %3295
  %3297 = call float @dx.op.unary.f32(i32 7, float %3296)  ; Saturate(value)
  %3298 = fsub fast float %3297, %2302
  %3299 = fmul fast float %3298, %3222
  %3300 = fadd fast float %3299, %2302
  %3301 = fmul fast float %3225, %3009
  %3302 = fmul fast float %3225, %3010
  %3303 = fmul fast float %3225, %3011
  %3304 = fadd fast float %3301, %2295
  %3305 = fadd fast float %3302, %2296
  %3306 = fadd fast float %3303, %2297
  %3307 = fmul fast float %3228, %3064
  %3308 = fadd fast float %3307, %2304
  %3309 = fmul fast float %3231, %3061
  %3310 = fmul fast float %3231, %3062
  %3311 = fmul fast float %3231, %3063
  %3312 = fadd fast float %3309, %2292
  %3313 = fadd fast float %3310, %2293
  %3314 = fadd fast float %3311, %2294
  br label %3343

; <label>:3315                                    ; preds = %3267
  %3316 = icmp eq i32 %3211, 8
  br i1 %3316, label %3317, label %3343

; <label>:3317                                    ; preds = %3315
  %3318 = fmul fast float %3216, %2904
  %3319 = fmul fast float %3216, %2905
  %3320 = fadd fast float %3318, %2287
  %3321 = fadd fast float %3319, %2288
  %3322 = call float @dx.op.binary.f32(i32 36, float %2303, float %2906)  ; FMin(a,b)
  %3323 = fsub fast float %3322, %2303
  %3324 = fmul fast float %3323, %3219
  %3325 = fadd fast float %3324, %2303
  %3326 = fsub fast float %2903, %2302
  %3327 = fmul fast float %3222, %3326
  %3328 = fadd fast float %3327, %2302
  %3329 = fmul fast float %3225, %3009
  %3330 = fmul fast float %3225, %3010
  %3331 = fmul fast float %3225, %3011
  %3332 = fadd fast float %3329, %2295
  %3333 = fadd fast float %3330, %2296
  %3334 = fadd fast float %3331, %2297
  %3335 = fmul fast float %3228, %3064
  %3336 = fadd fast float %3335, %2304
  %3337 = fmul fast float %3231, %3061
  %3338 = fmul fast float %3231, %3062
  %3339 = fmul fast float %3231, %3063
  %3340 = fadd fast float %3337, %2292
  %3341 = fadd fast float %3338, %2293
  %3342 = fadd fast float %3339, %2294
  br label %3343

; <label>:3343                                    ; preds = %3317, %3315, %3269, %3233, %3202, %2602, %2306, %2286
  %3344 = phi float [ %2287, %3202 ], [ %2287, %2602 ], [ %2287, %2286 ], [ %3320, %3317 ], [ %2287, %3315 ], [ %3272, %3269 ], [ %3238, %3233 ], [ %2287, %2306 ]
  %3345 = phi float [ %2288, %3202 ], [ %2288, %2602 ], [ %2288, %2286 ], [ %3321, %3317 ], [ %2288, %3315 ], [ %3273, %3269 ], [ %3239, %3233 ], [ %2288, %2306 ]
  %3346 = phi float [ %3203, %3202 ], [ %2289, %2602 ], [ %2289, %2286 ], [ %3203, %3317 ], [ %3203, %3315 ], [ %3203, %3269 ], [ %3203, %3233 ], [ %2289, %2306 ]
  %3347 = phi float [ %3204, %3202 ], [ %2290, %2602 ], [ %2290, %2286 ], [ %3204, %3317 ], [ %3204, %3315 ], [ %3204, %3269 ], [ %3204, %3233 ], [ %2290, %2306 ]
  %3348 = phi float [ %3205, %3202 ], [ %2291, %2602 ], [ %2291, %2286 ], [ %3205, %3317 ], [ %3205, %3315 ], [ %3205, %3269 ], [ %3205, %3233 ], [ %2291, %2306 ]
  %3349 = phi float [ %2292, %3202 ], [ %2292, %2602 ], [ %2292, %2286 ], [ %3340, %3317 ], [ %2292, %3315 ], [ %3312, %3269 ], [ %3264, %3233 ], [ %2292, %2306 ]
  %3350 = phi float [ %2293, %3202 ], [ %2293, %2602 ], [ %2293, %2286 ], [ %3341, %3317 ], [ %2293, %3315 ], [ %3313, %3269 ], [ %3265, %3233 ], [ %2293, %2306 ]
  %3351 = phi float [ %2294, %3202 ], [ %2294, %2602 ], [ %2294, %2286 ], [ %3342, %3317 ], [ %2294, %3315 ], [ %3314, %3269 ], [ %3266, %3233 ], [ %2294, %2306 ]
  %3352 = phi float [ %2295, %3202 ], [ %2295, %2602 ], [ %2295, %2286 ], [ %3332, %3317 ], [ %2295, %3315 ], [ %3304, %3269 ], [ %3252, %3233 ], [ %2295, %2306 ]
  %3353 = phi float [ %2296, %3202 ], [ %2296, %2602 ], [ %2296, %2286 ], [ %3333, %3317 ], [ %2296, %3315 ], [ %3305, %3269 ], [ %3253, %3233 ], [ %2296, %2306 ]
  %3354 = phi float [ %2297, %3202 ], [ %2297, %2602 ], [ %2297, %2286 ], [ %3334, %3317 ], [ %2297, %3315 ], [ %3306, %3269 ], [ %3254, %3233 ], [ %2297, %2306 ]
  %3355 = phi float [ %3206, %3202 ], [ %2298, %2602 ], [ %2298, %2286 ], [ %3206, %3317 ], [ %3206, %3315 ], [ %3206, %3269 ], [ %3206, %3233 ], [ %2298, %2306 ]
  %3356 = phi float [ %3207, %3202 ], [ %2299, %2602 ], [ %2299, %2286 ], [ %3207, %3317 ], [ %3207, %3315 ], [ %3207, %3269 ], [ %3207, %3233 ], [ %2299, %2306 ]
  %3357 = phi float [ %3208, %3202 ], [ %2300, %2602 ], [ %2300, %2286 ], [ %3208, %3317 ], [ %3208, %3315 ], [ %3208, %3269 ], [ %3208, %3233 ], [ %2300, %2306 ]
  %3358 = phi float [ %3209, %3202 ], [ %2301, %2602 ], [ %2301, %2286 ], [ %3209, %3317 ], [ %3209, %3315 ], [ %3209, %3269 ], [ %3209, %3233 ], [ %2301, %2306 ]
  %3359 = phi float [ %2302, %3202 ], [ %2302, %2602 ], [ %2302, %2286 ], [ %3328, %3317 ], [ %2302, %3315 ], [ %3300, %3269 ], [ %3245, %3233 ], [ %2302, %2306 ]
  %3360 = phi float [ %2303, %3202 ], [ %2303, %2602 ], [ %2303, %2286 ], [ %3325, %3317 ], [ %2303, %3315 ], [ %3277, %3269 ], [ %3242, %3233 ], [ %2303, %2306 ]
  %3361 = phi float [ %2304, %3202 ], [ %2304, %2602 ], [ %2304, %2286 ], [ %3336, %3317 ], [ %2304, %3315 ], [ %3308, %3269 ], [ %3257, %3233 ], [ %2304, %2306 ]
  %3362 = phi float [ %3210, %3202 ], [ %2305, %2602 ], [ %2305, %2286 ], [ %3210, %3317 ], [ %3210, %3315 ], [ %3210, %3269 ], [ %3210, %3233 ], [ %2305, %2306 ]
  br i1 %405, label %4400, label %3363

; <label>:3363                                    ; preds = %3343
  %3364 = icmp ult i32 %459, 4
  %3365 = add i32 %49, 72
  %3366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.i32 %3366, 0
  %3368 = add i32 %49, 76
  %3369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3370 = extractvalue %dx.types.ResRet.i32 %3369, 0
  %3371 = or i32 %3370, %3367
  %3372 = icmp eq i32 %3371, 0
  br i1 %3372, label %4400, label %3373

; <label>:3373                                    ; preds = %3363
  %3374 = and i32 %3367, 262144
  %3375 = icmp ne i32 %3374, 0
  %3376 = select i1 %3375, float %52, float 1.000000e+00
  %3377 = select i1 %3375, float %53, float 0.000000e+00
  %3378 = select i1 %3375, float %54, float 0.000000e+00
  %3379 = select i1 %3375, float %55, float 1.000000e+00
  %3380 = select i1 %3375, float %56, float %77
  %3381 = select i1 %3375, float %57, float %78
  %3382 = add i32 %49, 332
  %3383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.i32 %3383, 0
  %3385 = lshr i32 %3384, 16
  %3386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3385)  ; LegacyF16ToF32(value)
  %3387 = fmul fast float %3386, 0x3F50624DE0000000
  %3388 = add i32 %49, 136
  %3389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.i32 %3389, 0
  %3391 = lshr i32 %3390, 16
  %3392 = and i32 %3391, 255
  %3393 = lshr i32 %3390, 24
  %3394 = add i32 %49, 340
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 65535
  %3398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3397)  ; LegacyF16ToF32(value)
  %3399 = lshr i32 %3396, 16
  %3400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3399)  ; LegacyF16ToF32(value)
  %3401 = add i32 %49, 80
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = lshr i32 %3403, 22
  %3405 = shl nuw nsw i32 %3404, 5
  %3406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3405)  ; LegacyF16ToF32(value)
  %3407 = shl i32 %3403, 4
  %3408 = and i32 %3407, 32752
  %3409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3408)  ; LegacyF16ToF32(value)
  %3410 = lshr i32 %3403, 7
  %3411 = and i32 %3410, 32752
  %3412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3411)  ; LegacyF16ToF32(value)
  %3413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3414 = extractvalue %dx.types.CBufRet.f32 %3413, 3
  %3415 = fmul fast float %3414, 1.000000e+03
  %3416 = fmul fast float %395, %3415
  %3417 = call float @dx.op.unary.f32(i32 22, float %3416)  ; Frc(value)
  %3418 = fadd fast float %3417, %385
  %3419 = fmul fast float %396, %3415
  %3420 = call float @dx.op.unary.f32(i32 22, float %3419)  ; Frc(value)
  %3421 = fadd fast float %3420, %387
  %3422 = fmul fast float %3387, %3415
  %3423 = call float @dx.op.unary.f32(i32 22, float %3422)  ; Frc(value)
  %3424 = fmul fast float %3423, 0x401921FB60000000
  %3425 = fadd fast float %3424, %3406
  %3426 = call float @dx.op.unary.f32(i32 13, float %3425)  ; Sin(value)
  %3427 = call float @dx.op.unary.f32(i32 12, float %3425)  ; Cos(value)
  %3428 = fsub fast float -0.000000e+00, %3426
  %3429 = fadd fast float %3380, -5.000000e-01
  %3430 = fadd fast float %3381, -5.000000e-01
  %3431 = fmul fast float %3398, %3429
  %3432 = fmul fast float %3400, %3430
  %3433 = fadd fast float %3431, 5.000000e-01
  %3434 = fadd fast float %3432, 5.000000e-01
  %3435 = fmul fast float %3409, %3433
  %3436 = fmul fast float %3412, %3434
  %3437 = fmul fast float %3427, %3435
  %3438 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3436, float %3437)  ; FMad(a,b,c)
  %3439 = fmul fast float %3426, %3435
  %3440 = call float @dx.op.tertiary.f32(i32 46, float %3427, float %3436, float %3439)  ; FMad(a,b,c)
  %3441 = fadd fast float %3418, %3438
  %3442 = fadd fast float %3421, %3440
  %3443 = icmp ugt i32 %3392, 1
  %3444 = icmp ugt i32 %3390, 33554431
  %3445 = or i1 %3444, %3443
  br i1 %3445, label %3446, label %3471

; <label>:3446                                    ; preds = %3373
  %3447 = add i32 %49, 276
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = lshr i32 %3449, 16
  %3451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3450)  ; LegacyF16ToF32(value)
  %3452 = fmul fast float %3414, %3451
  %3453 = call float @dx.op.unary.f32(i32 22, float %3452)  ; Frc(value)
  %3454 = mul nuw nsw i32 %3392, %3393
  %3455 = uitofp i32 %3454 to float
  %3456 = fmul fast float %3453, %3455
  %3457 = call float @dx.op.unary.f32(i32 27, float %3456)  ; Round_ni(value)
  %3458 = fptoui float %3457 to i32
  %3459 = urem i32 %3458, %3392
  %3460 = udiv i32 %3458, %3393
  %3461 = call float @dx.op.unary.f32(i32 22, float %3441)  ; Frc(value)
  %3462 = call float @dx.op.unary.f32(i32 22, float %3442)  ; Frc(value)
  %3463 = uitofp i32 %3459 to float
  %3464 = uitofp i32 %3460 to float
  %3465 = fadd fast float %3461, %3463
  %3466 = fadd fast float %3462, %3464
  %3467 = uitofp i32 %3392 to float
  %3468 = uitofp i32 %3393 to float
  %3469 = fdiv fast float %3465, %3467
  %3470 = fdiv fast float %3466, %3468
  br label %3471

; <label>:3471                                    ; preds = %3446, %3373
  %3472 = phi float [ %3469, %3446 ], [ %3441, %3373 ]
  %3473 = phi float [ %3470, %3446 ], [ %3442, %3373 ]
  %3474 = and i32 %3367, 16777216
  %3475 = icmp eq i32 %3474, 0
  br i1 %3475, label %3585, label %3476

; <label>:3476                                    ; preds = %3471
  %3477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.f32 %3477, 0
  %3479 = extractvalue %dx.types.CBufRet.f32 %3477, 1
  %3480 = extractvalue %dx.types.CBufRet.f32 %3477, 2
  %3481 = fadd fast float %3478, %153
  %3482 = fadd fast float %3479, %154
  %3483 = fadd fast float %3480, %155
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 0
  %3486 = call float @dx.op.unary.f32(i32 7, float %3485)  ; Saturate(value)
  %3487 = icmp eq i32 %50, 65535
  br i1 %3487, label %3582, label %3488

; <label>:3488                                    ; preds = %3476
  %3489 = lshr i32 %50, 1
  %3490 = shl i32 %3489, 2
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = and i32 %50, 1
  %3494 = icmp ne i32 %3493, 0
  %3495 = lshr i32 %3492, 16
  %3496 = and i32 %3492, 65535
  %3497 = select i1 %3494, i32 %3495, i32 %3496
  %3498 = icmp eq i32 %3497, 65535
  br i1 %3498, label %3578, label %3499

; <label>:3499                                    ; preds = %3488
  %3500 = mul nuw nsw i32 %3497, 40
  %3501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.f32 %3501, 0
  %3503 = extractvalue %dx.types.ResRet.f32 %3501, 1
  %3504 = extractvalue %dx.types.ResRet.f32 %3501, 2
  %3505 = add nuw nsw i32 %3500, 12
  %3506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.f32 %3506, 0
  %3508 = extractvalue %dx.types.ResRet.f32 %3506, 1
  %3509 = extractvalue %dx.types.ResRet.f32 %3506, 2
  %3510 = add nuw nsw i32 %3500, 24
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = add nuw nsw i32 %3500, 36
  %3516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = fsub fast float %3481, %3502
  %3519 = fsub fast float %3482, %3503
  %3520 = fsub fast float %3483, %3504
  %3521 = fmul fast float %3517, %3518
  %3522 = fmul fast float %3517, %3519
  %3523 = fmul fast float %3517, %3520
  %3524 = call float @dx.op.unary.f32(i32 27, float %3521)  ; Round_ni(value)
  %3525 = call float @dx.op.unary.f32(i32 27, float %3522)  ; Round_ni(value)
  %3526 = call float @dx.op.unary.f32(i32 27, float %3523)  ; Round_ni(value)
  %3527 = fadd fast float %3524, 5.000000e-01
  %3528 = fadd fast float %3525, 5.000000e-01
  %3529 = fadd fast float %3526, 5.000000e-01
  %3530 = fmul fast float %3527, %3507
  %3531 = fmul fast float %3528, %3508
  %3532 = fmul fast float %3529, %3509
  %3533 = shl i32 %50, 2
  %3534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.i32 %3534, 0
  %3536 = add i32 %3535, 0
  %3537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3538 = call float @dx.op.unary.f32(i32 22, float %3530)  ; Frc(value)
  %3539 = call float @dx.op.unary.f32(i32 22, float %3531)  ; Frc(value)
  %3540 = call float @dx.op.unary.f32(i32 22, float %3532)  ; Frc(value)
  %3541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3537, %dx.types.Handle %44, float %3538, float %3539, float %3540, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3542 = extractvalue %dx.types.ResRet.f32 %3541, 0
  %3543 = extractvalue %dx.types.ResRet.f32 %3541, 1
  %3544 = extractvalue %dx.types.ResRet.f32 %3541, 2
  %3545 = fmul fast float %3542, 1.023000e+03
  %3546 = fmul fast float %3543, 1.023000e+03
  %3547 = fmul fast float %3544, 1.023000e+03
  %3548 = fadd fast float %3545, 5.000000e-01
  %3549 = fadd fast float %3546, 5.000000e-01
  %3550 = fadd fast float %3547, 5.000000e-01
  %3551 = call float @dx.op.unary.f32(i32 27, float %3548)  ; Round_ni(value)
  %3552 = call float @dx.op.unary.f32(i32 27, float %3549)  ; Round_ni(value)
  %3553 = call float @dx.op.unary.f32(i32 27, float %3550)  ; Round_ni(value)
  %3554 = fsub fast float %3521, %3524
  %3555 = fsub fast float %3522, %3525
  %3556 = fsub fast float %3523, %3526
  %3557 = fmul fast float %3554, 7.500000e-01
  %3558 = fmul fast float %3555, 7.500000e-01
  %3559 = fmul fast float %3556, 7.500000e-01
  %3560 = fadd fast float %3524, 1.250000e-01
  %3561 = fadd fast float %3560, %3557
  %3562 = fadd fast float %3561, %3551
  %3563 = fadd fast float %3525, 1.250000e-01
  %3564 = fadd fast float %3563, %3558
  %3565 = fadd fast float %3564, %3552
  %3566 = fadd fast float %3526, 1.250000e-01
  %3567 = fadd fast float %3566, %3559
  %3568 = fadd fast float %3567, %3553
  %3569 = fmul fast float %3562, %3512
  %3570 = fmul fast float %3565, %3513
  %3571 = fmul fast float %3568, %3514
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = add i32 %3573, 0
  %3575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3575, %dx.types.Handle %42, float %3569, float %3570, float %3571, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  br label %3578

; <label>:3578                                    ; preds = %3499, %3488
  %3579 = phi float [ %3577, %3499 ], [ -1.000000e+00, %3488 ]
  %3580 = fadd fast float %3579, %3486
  %3581 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  br label %3582

; <label>:3582                                    ; preds = %3578, %3476
  %3583 = phi float [ %3581, %3578 ], [ %3486, %3476 ]
  %3584 = fmul fast float %3583, %454
  br label %3585

; <label>:3585                                    ; preds = %3582, %3471
  %3586 = phi float [ %3584, %3582 ], [ %454, %3471 ]
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = and i32 %3588, 256
  %3590 = icmp eq i32 %3589, 0
  br i1 %3590, label %3637, label %3591

; <label>:3591                                    ; preds = %3585
  %3592 = add i32 %49, 452
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = add i32 %3594, 0
  %3596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3596, %dx.types.Handle %95, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = add i32 %49, 148
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = shl i32 %3601, 4
  %3603 = and i32 %3602, 32752
  %3604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3603)  ; LegacyF16ToF32(value)
  %3605 = lshr i32 %3601, 7
  %3606 = and i32 %3605, 32752
  %3607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3606)  ; LegacyF16ToF32(value)
  %3608 = fsub fast float 1.000000e+00, %3586
  %3609 = call float @dx.op.binary.f32(i32 35, float %3608, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3610 = bitcast float %3586 to i32
  %3611 = sitofp i32 %3610 to float
  %3612 = fadd fast float %3611, 0xC1CFBF8940000000
  %3613 = fmul fast float %3607, %3612
  %3614 = fadd fast float %3613, 0x41CFBF8940000000
  %3615 = fptosi float %3614 to i32
  %3616 = bitcast i32 %3615 to float
  %3617 = bitcast float %3609 to i32
  %3618 = sitofp i32 %3617 to float
  %3619 = fadd fast float %3618, 0xC1CFBF8940000000
  %3620 = fmul fast float %3619, %3607
  %3621 = fadd fast float %3620, 0x41CFBF8940000000
  %3622 = fptosi float %3621 to i32
  %3623 = bitcast i32 %3622 to float
  %3624 = fmul fast float %3616, %3604
  %3625 = fmul fast float %3623, %3604
  %3626 = fsub fast float %3609, %3624
  %3627 = fadd fast float %3625, %3609
  %3628 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  %3629 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3630 = fsub fast float %3598, %3628
  %3631 = fsub fast float %3629, %3628
  %3632 = bitcast float %3631 to i32
  %3633 = sub nsw i32 2129859010, %3632
  %3634 = bitcast i32 %3633 to float
  %3635 = fmul fast float %3634, %3630
  %3636 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  br label %3637

; <label>:3637                                    ; preds = %3591, %3585
  %3638 = phi float [ %3636, %3591 ], [ %3586, %3585 ]
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = and i32 %3640, 128
  %3642 = icmp eq i32 %3641, 0
  br i1 %3642, label %3659, label %3643

; <label>:3643                                    ; preds = %3637
  %3644 = add i32 %49, 436
  %3645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.i32 %3645, 0
  %3647 = add i32 %3646, 0
  %3648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3648, %dx.types.Handle %95, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = and i32 %3652, 524288
  %3654 = icmp ne i32 %3653, 0
  %3655 = fcmp fast ogt float %3650, 0x3FE0101020000000
  %3656 = select i1 %3655, float 1.000000e+00, float 0.000000e+00
  %3657 = select i1 %3654, float %3656, float %3650
  %3658 = fmul fast float %3657, %3638
  br label %3659

; <label>:3659                                    ; preds = %3643, %3637
  %3660 = phi float [ %3658, %3643 ], [ %3638, %3637 ]
  %3661 = fcmp fast ult float %3660, 0x3F70101020000000
  br i1 %3661, label %4400, label %3662

; <label>:3662                                    ; preds = %3659
  %3663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.i32 %3663, 0
  %3665 = and i32 %3664, 16
  %3666 = icmp eq i32 %3665, 0
  br i1 %3666, label %3865, label %3667

; <label>:3667                                    ; preds = %3662
  %3668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.i32 %3668, 0
  %3670 = add i32 %49, 388
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = add i32 %3672, 0
  %3674 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3673, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3675 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3674, %dx.types.Handle %94, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3676 = extractvalue %dx.types.ResRet.f32 %3675, 0
  %3677 = extractvalue %dx.types.ResRet.f32 %3675, 1
  %3678 = extractvalue %dx.types.ResRet.f32 %3675, 2
  %3679 = extractvalue %dx.types.ResRet.f32 %3675, 3
  %3680 = and i32 %3669, 255
  %3681 = uitofp i32 %3680 to float
  %3682 = lshr i32 %3669, 8
  %3683 = and i32 %3682, 255
  %3684 = uitofp i32 %3683 to float
  %3685 = fmul fast float %3679, %3681
  %3686 = fadd fast float %3685, %3684
  %3687 = fmul fast float %3686, 0x3F70101000000000
  %3688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.i32 %3688, 0
  %3690 = and i32 %3689, 512
  %3691 = icmp eq i32 %3690, 0
  br i1 %3691, label %3700, label %3692

; <label>:3692                                    ; preds = %3667
  %3693 = add i32 %49, 468
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3693, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = add i32 %3695, 0
  %3697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3697, %dx.types.Handle %95, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3699 = extractvalue %dx.types.ResRet.f32 %3698, 0
  br label %3700

; <label>:3700                                    ; preds = %3692, %3667
  %3701 = phi float [ %3699, %3692 ], [ 1.000000e+00, %3667 ]
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = and i32 %3703, 33554432
  %3705 = icmp eq i32 %3704, 0
  br i1 %3705, label %3812, label %3706

; <label>:3706                                    ; preds = %3700
  %3707 = add i32 %49, 272
  %3708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.i32 %3708, 0
  %3710 = and i32 %3709, 65535
  %3711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3710)  ; LegacyF16ToF32(value)
  %3712 = lshr i32 %3709, 16
  %3713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3712)  ; LegacyF16ToF32(value)
  %3714 = add i32 %49, 276
  %3715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.i32 %3715, 0
  %3717 = and i32 %3716, 65535
  %3718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3717)  ; LegacyF16ToF32(value)
  %3719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.i32 %3719, 0
  %3721 = lshr i32 %3720, 24
  %3722 = uitofp i32 %3721 to float
  %3723 = fmul fast float %3722, 0x3F70101020000000
  %3724 = and i32 %3720, 255
  %3725 = uitofp i32 %3724 to float
  %3726 = fmul fast float %3725, 0x3F70101020000000
  %3727 = lshr i32 %3720, 8
  %3728 = and i32 %3727, 255
  %3729 = uitofp i32 %3728 to float
  %3730 = fmul fast float %3729, 0x3F70101020000000
  %3731 = lshr i32 %3720, 16
  %3732 = and i32 %3731, 255
  %3733 = uitofp i32 %3732 to float
  %3734 = fmul fast float %3733, 0x3F70101020000000
  %3735 = add i32 %49, 268
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = lshr i32 %3737, 24
  %3739 = uitofp i32 %3738 to float
  %3740 = fmul fast float %3739, 0x3F70101020000000
  %3741 = and i32 %3737, 255
  %3742 = uitofp i32 %3741 to float
  %3743 = fmul fast float %3742, 0x3F70101020000000
  %3744 = lshr i32 %3737, 8
  %3745 = and i32 %3744, 255
  %3746 = uitofp i32 %3745 to float
  %3747 = fmul fast float %3746, 0x3F70101020000000
  %3748 = lshr i32 %3737, 16
  %3749 = and i32 %3748, 255
  %3750 = uitofp i32 %3749 to float
  %3751 = fmul fast float %3750, 0x3F70101020000000
  %3752 = bitcast float %3676 to i32
  %3753 = ashr i32 %3752, 1
  %3754 = sub nsw i32 1597463174, %3753
  %3755 = bitcast i32 %3754 to float
  %3756 = fmul fast float %3676, 5.000000e-01
  %3757 = fmul fast float %3755, %3755
  %3758 = fmul fast float %3757, %3756
  %3759 = fsub fast float 1.500000e+00, %3758
  %3760 = fmul fast float %3755, %3676
  %3761 = fmul fast float %3760, %3759
  %3762 = bitcast float %3677 to i32
  %3763 = ashr i32 %3762, 1
  %3764 = sub nsw i32 1597463174, %3763
  %3765 = bitcast i32 %3764 to float
  %3766 = fmul fast float %3677, 5.000000e-01
  %3767 = fmul fast float %3765, %3765
  %3768 = fmul fast float %3767, %3766
  %3769 = fsub fast float 1.500000e+00, %3768
  %3770 = fmul fast float %3765, %3677
  %3771 = fmul fast float %3770, %3769
  %3772 = bitcast float %3678 to i32
  %3773 = ashr i32 %3772, 1
  %3774 = sub nsw i32 1597463174, %3773
  %3775 = bitcast i32 %3774 to float
  %3776 = fmul fast float %3678, 5.000000e-01
  %3777 = fmul fast float %3775, %3775
  %3778 = fmul fast float %3777, %3776
  %3779 = fsub fast float 1.500000e+00, %3778
  %3780 = fmul fast float %3775, %3678
  %3781 = fmul fast float %3780, %3779
  %3782 = fsub fast float %3761, %3743
  %3783 = fsub fast float %3771, %3747
  %3784 = fsub fast float %3781, %3751
  %3785 = fmul fast float %3782, %3711
  %3786 = fmul fast float %3783, %3713
  %3787 = fmul fast float %3784, %3718
  %3788 = fadd fast float %3785, %3726
  %3789 = fadd fast float %3786, %3730
  %3790 = fadd fast float %3787, %3734
  %3791 = call float @dx.op.unary.f32(i32 7, float %3788)  ; Saturate(value)
  %3792 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3793 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3794 = fmul fast float %3791, %3791
  %3795 = fmul fast float %3792, %3792
  %3796 = fmul fast float %3793, %3793
  %3797 = fsub fast float %3794, %3676
  %3798 = fsub fast float %3795, %3677
  %3799 = fsub fast float %3796, %3678
  %3800 = fmul fast float %3797, %3701
  %3801 = fmul fast float %3798, %3701
  %3802 = fmul fast float %3799, %3701
  %3803 = fadd fast float %3800, %3676
  %3804 = fadd fast float %3801, %3677
  %3805 = fadd fast float %3802, %3678
  %3806 = fadd fast float %3723, %3687
  %3807 = fsub fast float %3806, %3740
  %3808 = call float @dx.op.unary.f32(i32 7, float %3807)  ; Saturate(value)
  %3809 = fsub fast float %3808, %3687
  %3810 = fmul fast float %3809, %3701
  %3811 = fadd fast float %3810, %3687
  br label %3865

; <label>:3812                                    ; preds = %3700
  %3813 = and i32 %3703, 134217728
  %3814 = icmp eq i32 %3813, 0
  br i1 %3814, label %3849, label %3815

; <label>:3815                                    ; preds = %3812
  %3816 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %3817 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %3818 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %3819 = fadd fast float %3816, -5.000000e-01
  %3820 = fadd fast float %3817, -5.000000e-01
  %3821 = fadd fast float %3818, -5.000000e-01
  %3822 = fmul fast float %3819, %3701
  %3823 = fmul fast float %3820, %3701
  %3824 = fmul fast float %3821, %3701
  %3825 = fadd fast float %3822, 5.000000e-01
  %3826 = fadd fast float %3823, 5.000000e-01
  %3827 = fadd fast float %3824, 5.000000e-01
  %3828 = call float @dx.op.unary.f32(i32 24, float %3676)  ; Sqrt(value)
  %3829 = call float @dx.op.unary.f32(i32 24, float %3677)  ; Sqrt(value)
  %3830 = call float @dx.op.unary.f32(i32 24, float %3678)  ; Sqrt(value)
  %3831 = fmul fast float %3825, 2.000000e+00
  %3832 = fsub fast float 1.000000e+00, %3831
  %3833 = fmul fast float %3832, %3828
  %3834 = fadd fast float %3833, %3831
  %3835 = fmul fast float %3834, %3828
  %3836 = fmul fast float %3826, 2.000000e+00
  %3837 = fsub fast float 1.000000e+00, %3836
  %3838 = fmul fast float %3837, %3829
  %3839 = fadd fast float %3838, %3836
  %3840 = fmul fast float %3839, %3829
  %3841 = fmul fast float %3827, 2.000000e+00
  %3842 = fsub fast float 1.000000e+00, %3841
  %3843 = fmul fast float %3842, %3830
  %3844 = fadd fast float %3843, %3841
  %3845 = fmul fast float %3844, %3830
  %3846 = fmul fast float %3835, %3835
  %3847 = fmul fast float %3840, %3840
  %3848 = fmul fast float %3845, %3845
  br label %3865

; <label>:3849                                    ; preds = %3812
  %3850 = fmul fast float %372, %372
  %3851 = fmul fast float %376, %376
  %3852 = fmul fast float %380, %380
  %3853 = fadd fast float %3850, -1.000000e+00
  %3854 = fadd fast float %3851, -1.000000e+00
  %3855 = fadd fast float %3852, -1.000000e+00
  %3856 = fmul fast float %3701, %3853
  %3857 = fmul fast float %3701, %3854
  %3858 = fmul fast float %3701, %3855
  %3859 = fadd fast float %3856, 1.000000e+00
  %3860 = fadd fast float %3857, 1.000000e+00
  %3861 = fadd fast float %3858, 1.000000e+00
  %3862 = fmul fast float %3859, %3676
  %3863 = fmul fast float %3860, %3677
  %3864 = fmul fast float %3861, %3678
  br label %3865

; <label>:3865                                    ; preds = %3849, %3815, %3706, %3662
  %3866 = phi float [ %3811, %3706 ], [ %3687, %3815 ], [ %3687, %3849 ], [ 0x3FA23C0BE0000000, %3662 ]
  %3867 = phi float [ %3803, %3706 ], [ %3846, %3815 ], [ %3862, %3849 ], [ 1.000000e+00, %3662 ]
  %3868 = phi float [ %3804, %3706 ], [ %3847, %3815 ], [ %3863, %3849 ], [ 1.000000e+00, %3662 ]
  %3869 = phi float [ %3805, %3706 ], [ %3848, %3815 ], [ %3864, %3849 ], [ 1.000000e+00, %3662 ]
  %3870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3871 = extractvalue %dx.types.CBufRet.i32 %3870, 1
  %3872 = and i32 %3871, 1
  %3873 = icmp ne i32 %3872, 0
  %3874 = add i32 %49, 356
  %3875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.i32 %3875, 0
  %3877 = and i32 %3876, 32
  %3878 = icmp ne i32 %3877, 0
  %3879 = and i1 %3873, %3878
  %3880 = select i1 %3879, float 1.000000e+00, float %3867
  %3881 = select i1 %3879, float 0x3FD3333340000000, float %3868
  %3882 = select i1 %3879, float 0x3FD3333340000000, float %3869
  %3883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3884 = extractvalue %dx.types.ResRet.i32 %3883, 0
  %3885 = and i32 %3884, 32
  %3886 = icmp eq i32 %3885, 0
  br i1 %3886, label %3959, label %3887

; <label>:3887                                    ; preds = %3865
  %3888 = add i32 %49, 140
  %3889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.i32 %3889, 0
  %3891 = add i32 %49, 404
  %3892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3891, i32 undef)  ; BufferLoad(srv,index,wot)
  %3893 = extractvalue %dx.types.ResRet.i32 %3892, 0
  %3894 = add i32 %3893, 0
  %3895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3895, %dx.types.Handle %94, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3897 = extractvalue %dx.types.ResRet.f32 %3896, 0
  %3898 = extractvalue %dx.types.ResRet.f32 %3896, 1
  %3899 = extractvalue %dx.types.ResRet.f32 %3896, 2
  %3900 = extractvalue %dx.types.ResRet.f32 %3896, 3
  %3901 = and i32 %3890, 255
  %3902 = uitofp i32 %3901 to float
  %3903 = lshr i32 %3890, 8
  %3904 = and i32 %3903, 255
  %3905 = uitofp i32 %3904 to float
  %3906 = lshr i32 %3890, 16
  %3907 = and i32 %3906, 255
  %3908 = uitofp i32 %3907 to float
  %3909 = fmul fast float %3908, 0x3F70101000000000
  %3910 = fmul fast float %3897, %3902
  %3911 = fadd fast float %3910, %3905
  %3912 = fmul fast float %3911, 0x3F70101000000000
  %3913 = fadd fast float %3898, -5.000000e-01
  %3914 = fadd fast float %3900, -5.000000e-01
  %3915 = fmul fast float %3913, %3909
  %3916 = fmul fast float %3914, %3909
  %3917 = fadd fast float %3915, 5.000000e-01
  %3918 = fadd fast float %3916, 5.000000e-01
  %3919 = fmul fast float %3917, 2.000000e+00
  %3920 = fadd fast float %3919, -1.000000e+00
  %3921 = fmul fast float %3918, 2.000000e+00
  %3922 = fadd fast float %3921, -1.000000e+00
  %3923 = fadd fast float %3920, %3922
  %3924 = fmul fast float %3923, 5.000000e-01
  %3925 = fsub fast float %3920, %3922
  %3926 = fmul fast float %3925, 5.000000e-01
  %3927 = call float @dx.op.unary.f32(i32 6, float %3924)  ; FAbs(value)
  %3928 = fsub fast float 1.000000e+00, %3927
  %3929 = call float @dx.op.unary.f32(i32 6, float %3926)  ; FAbs(value)
  %3930 = fsub fast float %3928, %3929
  %3931 = call float @dx.op.dot3.f32(i32 55, float %3924, float %3926, float %3930, float %3924, float %3926, float %3930)  ; Dot3(ax,ay,az,bx,by,bz)
  %3932 = call float @dx.op.unary.f32(i32 25, float %3931)  ; Rsqrt(value)
  %3933 = fmul fast float %3924, %3932
  %3934 = fmul fast float %3926, %3932
  %3935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.i32 %3935, 0
  %3937 = and i32 %3936, 67108864
  %3938 = icmp eq i32 %3937, 0
  br i1 %3938, label %3955, label %3939

; <label>:3939                                    ; preds = %3887
  %3940 = add i32 %49, 328
  %3941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.i32 %3941, 0
  %3943 = and i32 %3942, 65535
  %3944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3943)  ; LegacyF16ToF32(value)
  %3945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.i32 %3945, 0
  %3947 = and i32 %3946, 65535
  %3948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3947)  ; LegacyF16ToF32(value)
  %3949 = lshr i32 %3942, 16
  %3950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3949)  ; LegacyF16ToF32(value)
  %3951 = fsub fast float %3912, %3950
  %3952 = fmul fast float %3951, %3944
  %3953 = fadd fast float %3952, %3948
  %3954 = call float @dx.op.unary.f32(i32 7, float %3953)  ; Saturate(value)
  br label %3955

; <label>:3955                                    ; preds = %3939, %3887
  %3956 = phi float [ %3954, %3939 ], [ %3912, %3887 ]
  %3957 = call float @dx.op.dot2.f32(i32 54, float %3933, float %3934, float %3376, float %3377)  ; Dot2(ax,ay,bx,by)
  %3958 = call float @dx.op.dot2.f32(i32 54, float %3933, float %3934, float %3378, float %3379)  ; Dot2(ax,ay,bx,by)
  br label %3959

; <label>:3959                                    ; preds = %3955, %3865
  %3960 = phi float [ %3956, %3955 ], [ 0x3FD6666660000000, %3865 ]
  %3961 = phi float [ %3957, %3955 ], [ 0.000000e+00, %3865 ]
  %3962 = phi float [ %3958, %3955 ], [ 0.000000e+00, %3865 ]
  %3963 = phi float [ %3899, %3955 ], [ 1.000000e+00, %3865 ]
  %3964 = add i32 %49, 208
  %3965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %3966 = extractvalue %dx.types.ResRet.i32 %3965, 0
  %3967 = lshr i32 %3966, 22
  %3968 = shl nuw nsw i32 %3967, 5
  %3969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3968)  ; LegacyF16ToF32(value)
  %3970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.i32 %3970, 0
  %3972 = and i32 %3971, 64
  %3973 = icmp eq i32 %3972, 0
  br i1 %3973, label %4007, label %3974

; <label>:3974                                    ; preds = %3959
  %3975 = add i32 %49, 420
  %3976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3975, i32 undef)  ; BufferLoad(srv,index,wot)
  %3977 = extractvalue %dx.types.ResRet.i32 %3976, 0
  %3978 = add i32 %3977, 0
  %3979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3981 = extractvalue %dx.types.ResRet.i32 %3980, 0
  %3982 = and i32 %3981, 131072
  %3983 = icmp eq i32 %3982, 0
  %3984 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3979, %dx.types.Handle %94, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3985 = extractvalue %dx.types.ResRet.f32 %3984, 0
  %3986 = extractvalue %dx.types.ResRet.f32 %3984, 1
  %3987 = extractvalue %dx.types.ResRet.f32 %3984, 2
  %3988 = fmul fast float %3985, %360
  %3989 = fmul fast float %3986, %363
  %3990 = fmul fast float %3987, %366
  br i1 %3983, label %3997, label %3991

; <label>:3991                                    ; preds = %3974
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 0
  %3994 = fmul fast float %3993, %3988
  %3995 = fmul fast float %3993, %3989
  %3996 = fmul fast float %3993, %3990
  br label %3997

; <label>:3997                                    ; preds = %3991, %3974
  %3998 = phi float [ %3994, %3991 ], [ %3988, %3974 ]
  %3999 = phi float [ %3995, %3991 ], [ %3989, %3974 ]
  %4000 = phi float [ %3996, %3991 ], [ %3990, %3974 ]
  %4001 = fmul fast float %3998, %3969
  %4002 = select i1 %214, float %4001, float %3998
  %4003 = call float @dx.op.dot3.f32(i32 55, float %4002, float %3999, float %4000, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4004 = select i1 %214, float 0.000000e+00, float %3998
  %4005 = select i1 %214, float %4003, float %3999
  %4006 = select i1 %214, float 0.000000e+00, float %4000
  br label %4007

; <label>:4007                                    ; preds = %3997, %3959
  %4008 = phi float [ %4004, %3997 ], [ 0.000000e+00, %3959 ]
  %4009 = phi float [ %4005, %3997 ], [ 0.000000e+00, %3959 ]
  %4010 = phi float [ %4006, %3997 ], [ 0.000000e+00, %3959 ]
  %4011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.i32 %4011, 0
  %4013 = and i32 %4012, 1024
  %4014 = icmp eq i32 %4013, 0
  br i1 %4014, label %4045, label %4015

; <label>:4015                                    ; preds = %4007
  %4016 = add i32 %49, 200
  %4017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.i32 %4017, 0
  %4019 = and i32 %4018, 255
  %4020 = uitofp i32 %4019 to float
  %4021 = fmul fast float %4020, 0x3F70101020000000
  %4022 = lshr i32 %4018, 8
  %4023 = and i32 %4022, 255
  %4024 = uitofp i32 %4023 to float
  %4025 = fmul fast float %4024, 0x3F70101020000000
  %4026 = lshr i32 %4018, 16
  %4027 = and i32 %4026, 255
  %4028 = uitofp i32 %4027 to float
  %4029 = fmul fast float %4028, 0x3F70101020000000
  %4030 = fmul fast float %4021, %4021
  %4031 = fmul fast float %4025, %4025
  %4032 = fmul fast float %4029, %4029
  %4033 = add i32 %49, 484
  %4034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4033, i32 undef)  ; BufferLoad(srv,index,wot)
  %4035 = extractvalue %dx.types.ResRet.i32 %4034, 0
  %4036 = add i32 %4035, 0
  %4037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4036, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4038 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4037, %dx.types.Handle %95, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4039 = extractvalue %dx.types.ResRet.f32 %4038, 0
  %4040 = extractvalue %dx.types.ResRet.f32 %4038, 1
  %4041 = extractvalue %dx.types.ResRet.f32 %4038, 2
  %4042 = fmul fast float %4030, %4039
  %4043 = fmul fast float %4031, %4040
  %4044 = fmul fast float %4032, %4041
  br label %4045

; <label>:4045                                    ; preds = %4015, %4007
  %4046 = phi float [ %4042, %4015 ], [ 0.000000e+00, %4007 ]
  %4047 = phi float [ %4043, %4015 ], [ 0.000000e+00, %4007 ]
  %4048 = phi float [ %4044, %4015 ], [ 0.000000e+00, %4007 ]
  %4049 = fcmp fast ogt float %4046, 0.000000e+00
  %4050 = fcmp fast ogt float %4047, 0.000000e+00
  %4051 = fcmp fast ogt float %4048, 0.000000e+00
  %4052 = call float @dx.op.unary.f32(i32 23, float %4046)  ; Log(value)
  %4053 = call float @dx.op.unary.f32(i32 23, float %4047)  ; Log(value)
  %4054 = call float @dx.op.unary.f32(i32 23, float %4048)  ; Log(value)
  %4055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %4056 = extractvalue %dx.types.ResRet.i32 %4055, 0
  %4057 = lshr i32 %4056, 7
  %4058 = and i32 %4057, 32752
  %4059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4058)  ; LegacyF16ToF32(value)
  %4060 = fmul fast float %4052, 0xBFE62E4300000000
  %4061 = fmul fast float %4060, %4059
  %4062 = fmul fast float %4053, 0xBFE62E4300000000
  %4063 = fmul fast float %4062, %4059
  %4064 = fmul fast float %4054, 0xBFE62E4300000000
  %4065 = fmul fast float %4064, %4059
  %4066 = select i1 %4049, float %4061, float 1.270000e+02
  %4067 = select i1 %4050, float %4063, float 1.270000e+02
  %4068 = select i1 %4051, float %4065, float 1.270000e+02
  %4069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4070 = extractvalue %dx.types.ResRet.i32 %4069, 0
  %4071 = and i32 %4070, 10240
  %4072 = icmp eq i32 %4071, 0
  br i1 %4072, label %4117, label %4073

; <label>:4073                                    ; preds = %4045
  %4074 = add i32 %49, 500
  %4075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4074, i32 undef)  ; BufferLoad(srv,index,wot)
  %4076 = extractvalue %dx.types.ResRet.i32 %4075, 0
  %4077 = add i32 %4076, 0
  %4078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4079 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4078, %dx.types.Handle %95, float %3472, float %3473, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4080 = extractvalue %dx.types.ResRet.f32 %4079, 1
  %4081 = extractvalue %dx.types.ResRet.f32 %4079, 3
  %4082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 0
  %4084 = and i32 %4083, 1048576
  %4085 = icmp ne i32 %4084, 0
  %4086 = and i32 %4083, 8192
  %4087 = icmp eq i32 %4086, 0
  br i1 %4087, label %4103, label %4088

; <label>:4088                                    ; preds = %4073
  %4089 = extractvalue %dx.types.ResRet.f32 %4079, 2
  %4090 = select i1 %4085, float %4089, float %4080
  %4091 = extractvalue %dx.types.ResRet.f32 %4079, 0
  %4092 = select i1 %4085, float %4091, float %4080
  %4093 = add i32 %49, 144
  %4094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4093, i32 undef)  ; BufferLoad(srv,index,wot)
  %4095 = extractvalue %dx.types.ResRet.i32 %4094, 0
  %4096 = lshr i32 %4095, 16
  %4097 = and i32 %4096, 255
  %4098 = uitofp i32 %4097 to float
  %4099 = fmul fast float %4098, 0x3F80101020000000
  %4100 = fmul fast float %4099, %4092
  %4101 = fmul fast float %4099, %4080
  %4102 = fmul fast float %4099, %4090
  br label %4103

; <label>:4103                                    ; preds = %4088, %4073
  %4104 = phi float [ %4100, %4088 ], [ 0.000000e+00, %4073 ]
  %4105 = phi float [ %4101, %4088 ], [ 0.000000e+00, %4073 ]
  %4106 = phi float [ %4102, %4088 ], [ 0.000000e+00, %4073 ]
  %4107 = and i32 %4083, 2048
  %4108 = icmp eq i32 %4107, 0
  br i1 %4108, label %4117, label %4109

; <label>:4109                                    ; preds = %4103
  %4110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3964, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.i32 %4110, 0
  %4112 = shl i32 %4111, 4
  %4113 = and i32 %4112, 32752
  %4114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4113)  ; LegacyF16ToF32(value)
  %4115 = fmul fast float %4114, %4081
  %4116 = call float @dx.op.binary.f32(i32 35, float %4115, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4117

; <label>:4117                                    ; preds = %4109, %4103, %4045
  %4118 = phi float [ %4104, %4109 ], [ %4104, %4103 ], [ 0.000000e+00, %4045 ]
  %4119 = phi float [ %4105, %4109 ], [ %4105, %4103 ], [ 0.000000e+00, %4045 ]
  %4120 = phi float [ %4106, %4109 ], [ %4106, %4103 ], [ 0.000000e+00, %4045 ]
  %4121 = phi float [ %4116, %4109 ], [ 0x3F70101020000000, %4103 ], [ 0x3F70101020000000, %4045 ]
  %4122 = add i32 %49, 144
  %4123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4122, i32 undef)  ; BufferLoad(srv,index,wot)
  %4124 = extractvalue %dx.types.ResRet.i32 %4123, 0
  %4125 = and i32 %4124, 255
  %4126 = uitofp i32 %4125 to float
  %4127 = lshr i32 %4124, 8
  %4128 = and i32 %4127, 255
  %4129 = uitofp i32 %4128 to float
  %4130 = call float @dx.op.dot3.f32(i32 55, float %3880, float %3881, float %3882, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4131 = fmul fast float %4129, %4130
  %4132 = fadd fast float %4131, %4126
  %4133 = fmul fast float %4132, 0x3F70101020000000
  %4134 = call float @dx.op.unary.f32(i32 7, float %4133)  ; Saturate(value)
  br i1 %3364, label %4135, label %4170

; <label>:4135                                    ; preds = %4117
  %4136 = fmul fast float %4121, 2.000000e+00
  %4137 = fcmp fast olt float %4066, 1.270000e+02
  %4138 = fcmp fast olt float %4067, 1.270000e+02
  %4139 = fcmp fast olt float %4068, 1.270000e+02
  %4140 = fmul fast float %4066, 0xBFF7154760000000
  %4141 = fmul fast float %4140, %4136
  %4142 = fmul fast float %4067, 0xBFF7154760000000
  %4143 = fmul fast float %4142, %4136
  %4144 = fmul fast float %4068, 0xBFF7154760000000
  %4145 = fmul fast float %4144, %4136
  %4146 = call float @dx.op.unary.f32(i32 21, float %4141)  ; Exp(value)
  %4147 = call float @dx.op.unary.f32(i32 21, float %4143)  ; Exp(value)
  %4148 = call float @dx.op.unary.f32(i32 21, float %4145)  ; Exp(value)
  %4149 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4150 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4151 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4152 = fadd fast float %4149, -1.000000e+00
  %4153 = select i1 %4137, float %4152, float -1.000000e+00
  %4154 = fadd fast float %4150, -1.000000e+00
  %4155 = select i1 %4138, float %4154, float -1.000000e+00
  %4156 = fadd fast float %4151, -1.000000e+00
  %4157 = select i1 %4139, float %4156, float -1.000000e+00
  %4158 = fmul fast float %4153, %3660
  %4159 = fmul fast float %4155, %3660
  %4160 = fmul fast float %4157, %3660
  %4161 = fadd fast float %4158, 1.000000e+00
  %4162 = fadd fast float %4159, 1.000000e+00
  %4163 = fadd fast float %4160, 1.000000e+00
  %4164 = fmul fast float %4161, %3346
  %4165 = fmul fast float %4162, %3347
  %4166 = fmul fast float %4163, %3348
  %4167 = fmul fast float %4161, %3355
  %4168 = fmul fast float %4162, %3356
  %4169 = fmul fast float %4163, %3357
  br label %4170

; <label>:4170                                    ; preds = %4135, %4117
  %4171 = phi float [ %4164, %4135 ], [ %3346, %4117 ]
  %4172 = phi float [ %4165, %4135 ], [ %3347, %4117 ]
  %4173 = phi float [ %4166, %4135 ], [ %3348, %4117 ]
  %4174 = phi float [ %4167, %4135 ], [ %3355, %4117 ]
  %4175 = phi float [ %4168, %4135 ], [ %3356, %4117 ]
  %4176 = phi float [ %4169, %4135 ], [ %3357, %4117 ]
  %4177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.i32 %4177, 0
  %4179 = and i32 %4178, 3
  %4180 = icmp eq i32 %4179, 3
  br i1 %4180, label %4259, label %4181

; <label>:4181                                    ; preds = %4170
  %4182 = and i32 %4178, 16
  %4183 = icmp ne i32 %4182, 0
  %4184 = select i1 %4183, float %3660, float 0.000000e+00
  %4185 = icmp eq i32 %4179, 0
  br i1 %4185, label %4186, label %4214

; <label>:4186                                    ; preds = %4181
  %4187 = and i32 %4178, 64
  %4188 = icmp ne i32 %4187, 0
  %4189 = select i1 %4188, float %3660, float 0.000000e+00
  %4190 = fsub fast float %3880, %4171
  %4191 = fsub fast float %3881, %4172
  %4192 = fsub fast float %3882, %4173
  %4193 = fmul fast float %4184, %4190
  %4194 = fmul fast float %4184, %4191
  %4195 = fmul fast float %4184, %4192
  %4196 = fadd fast float %4193, %4171
  %4197 = fadd fast float %4194, %4172
  %4198 = fadd fast float %4195, %4173
  %4199 = fsub fast float %3866, %3358
  %4200 = fmul fast float %4184, %4199
  %4201 = fadd fast float %4200, %3358
  %4202 = fsub fast float %4008, %4174
  %4203 = fsub fast float %4009, %4175
  %4204 = fsub fast float %4010, %4176
  %4205 = fmul fast float %4189, %4202
  %4206 = fmul fast float %4189, %4203
  %4207 = fmul fast float %4189, %4204
  %4208 = fadd fast float %4205, %4174
  %4209 = fadd fast float %4206, %4175
  %4210 = fadd fast float %4207, %4176
  %4211 = fsub fast float %4134, %3362
  %4212 = fmul fast float %4184, %4211
  %4213 = fadd fast float %4212, %3362
  br label %4259

; <label>:4214                                    ; preds = %4181
  %4215 = icmp eq i32 %4179, 1
  br i1 %4215, label %4216, label %4229

; <label>:4216                                    ; preds = %4214
  %4217 = fadd fast float %3880, -1.000000e+00
  %4218 = fadd fast float %3881, -1.000000e+00
  %4219 = fadd fast float %3882, -1.000000e+00
  %4220 = fmul fast float %4184, %4217
  %4221 = fmul fast float %4184, %4218
  %4222 = fmul fast float %4184, %4219
  %4223 = fadd fast float %4220, 1.000000e+00
  %4224 = fadd fast float %4221, 1.000000e+00
  %4225 = fadd fast float %4222, 1.000000e+00
  %4226 = fmul fast float %4223, %4171
  %4227 = fmul fast float %4224, %4172
  %4228 = fmul fast float %4225, %4173
  br label %4259

; <label>:4229                                    ; preds = %4214
  %4230 = icmp eq i32 %4179, 2
  br i1 %4230, label %4231, label %4259

; <label>:4231                                    ; preds = %4229
  %4232 = call float @dx.op.unary.f32(i32 24, float %3880)  ; Sqrt(value)
  %4233 = call float @dx.op.unary.f32(i32 24, float %3881)  ; Sqrt(value)
  %4234 = call float @dx.op.unary.f32(i32 24, float %3882)  ; Sqrt(value)
  %4235 = fadd fast float %4232, -5.000000e-01
  %4236 = fadd fast float %4233, -5.000000e-01
  %4237 = fadd fast float %4234, -5.000000e-01
  %4238 = fmul fast float %4235, %4184
  %4239 = fmul fast float %4236, %4184
  %4240 = fmul fast float %4237, %4184
  %4241 = fadd fast float %4238, 5.000000e-01
  %4242 = fadd fast float %4239, 5.000000e-01
  %4243 = fadd fast float %4240, 5.000000e-01
  %4244 = fmul fast float %4241, 2.000000e+00
  %4245 = fsub fast float 1.000000e+00, %4244
  %4246 = fmul fast float %4245, %4171
  %4247 = fadd fast float %4246, %4244
  %4248 = fmul fast float %4247, %4171
  %4249 = fmul fast float %4242, 2.000000e+00
  %4250 = fsub fast float 1.000000e+00, %4249
  %4251 = fmul fast float %4250, %4172
  %4252 = fadd fast float %4251, %4249
  %4253 = fmul fast float %4252, %4172
  %4254 = fmul fast float %4243, 2.000000e+00
  %4255 = fsub fast float 1.000000e+00, %4254
  %4256 = fmul fast float %4255, %4173
  %4257 = fadd fast float %4256, %4254
  %4258 = fmul fast float %4257, %4173
  br label %4259

; <label>:4259                                    ; preds = %4231, %4229, %4216, %4186, %4170
  %4260 = phi float [ %4171, %4170 ], [ %4248, %4231 ], [ %4171, %4229 ], [ %4226, %4216 ], [ %4196, %4186 ]
  %4261 = phi float [ %4172, %4170 ], [ %4253, %4231 ], [ %4172, %4229 ], [ %4227, %4216 ], [ %4197, %4186 ]
  %4262 = phi float [ %4173, %4170 ], [ %4258, %4231 ], [ %4173, %4229 ], [ %4228, %4216 ], [ %4198, %4186 ]
  %4263 = phi float [ %4174, %4170 ], [ %4174, %4231 ], [ %4174, %4229 ], [ %4174, %4216 ], [ %4208, %4186 ]
  %4264 = phi float [ %4175, %4170 ], [ %4175, %4231 ], [ %4175, %4229 ], [ %4175, %4216 ], [ %4209, %4186 ]
  %4265 = phi float [ %4176, %4170 ], [ %4176, %4231 ], [ %4176, %4229 ], [ %4176, %4216 ], [ %4210, %4186 ]
  %4266 = phi float [ %3358, %4170 ], [ %3358, %4231 ], [ %3358, %4229 ], [ %3358, %4216 ], [ %4201, %4186 ]
  %4267 = phi float [ %3362, %4170 ], [ %3362, %4231 ], [ %3362, %4229 ], [ %3362, %4216 ], [ %4213, %4186 ]
  %4268 = and i32 %4178, 12
  %4269 = icmp eq i32 %4268, 12
  br i1 %4269, label %4400, label %4270

; <label>:4270                                    ; preds = %4259
  %4271 = and i32 %4178, 2097184
  %4272 = icmp eq i32 %4271, 2097184
  %4273 = select i1 %4272, float %3660, float 0.000000e+00
  %4274 = and i32 %4178, 4194336
  %4275 = icmp eq i32 %4274, 4194336
  %4276 = select i1 %4275, float %3660, float 0.000000e+00
  %4277 = and i32 %4178, 8388640
  %4278 = icmp eq i32 %4277, 8388640
  %4279 = select i1 %4278, float %3660, float 0.000000e+00
  %4280 = and i32 %4178, 1024
  %4281 = icmp ne i32 %4280, 0
  %4282 = select i1 %4281, float %3660, float 0.000000e+00
  %4283 = and i32 %4178, 2048
  %4284 = icmp ne i32 %4283, 0
  %4285 = select i1 %4284, float %3660, float 0.000000e+00
  %4286 = and i32 %4178, 8192
  %4287 = icmp ne i32 %4286, 0
  %4288 = select i1 %4287, float %3660, float 0.000000e+00
  %4289 = icmp eq i32 %4268, 0
  br i1 %4289, label %4290, label %4324

; <label>:4290                                    ; preds = %4270
  %4291 = fsub fast float %3961, %3344
  %4292 = fsub fast float %3962, %3345
  %4293 = fmul fast float %4273, %4291
  %4294 = fmul fast float %4273, %4292
  %4295 = fadd fast float %4293, %3344
  %4296 = fadd fast float %4294, %3345
  %4297 = fsub fast float %3963, %3360
  %4298 = fmul fast float %4276, %4297
  %4299 = fadd fast float %4298, %3360
  %4300 = fsub fast float %3960, %3359
  %4301 = fmul fast float %4279, %4300
  %4302 = fadd fast float %4301, %3359
  %4303 = fsub fast float %4066, %3352
  %4304 = fsub fast float %4067, %3353
  %4305 = fsub fast float %4068, %3354
  %4306 = fmul fast float %4282, %4303
  %4307 = fmul fast float %4282, %4304
  %4308 = fmul fast float %4282, %4305
  %4309 = fadd fast float %4306, %3352
  %4310 = fadd fast float %4307, %3353
  %4311 = fadd fast float %4308, %3354
  %4312 = fsub fast float %4121, %3361
  %4313 = fmul fast float %4285, %4312
  %4314 = fadd fast float %4313, %3361
  %4315 = fsub fast float %4118, %3349
  %4316 = fsub fast float %4119, %3350
  %4317 = fsub fast float %4120, %3351
  %4318 = fmul fast float %4288, %4315
  %4319 = fmul fast float %4288, %4316
  %4320 = fmul fast float %4288, %4317
  %4321 = fadd fast float %4318, %3349
  %4322 = fadd fast float %4319, %3350
  %4323 = fadd fast float %4320, %3351
  br label %4400

; <label>:4324                                    ; preds = %4270
  %4325 = icmp eq i32 %4268, 4
  br i1 %4325, label %4326, label %4372

; <label>:4326                                    ; preds = %4324
  %4327 = fmul fast float %4273, %3961
  %4328 = fmul fast float %4273, %3962
  %4329 = fadd fast float %4327, %3344
  %4330 = fadd fast float %4328, %3345
  %4331 = call float @dx.op.binary.f32(i32 36, float %3360, float %3963)  ; FMin(a,b)
  %4332 = fsub fast float %4331, %3360
  %4333 = fmul fast float %4332, %4276
  %4334 = fadd fast float %4333, %3360
  %4335 = fadd fast float %3960, %3359
  %4336 = fmul fast float %4335, 0x3FF337FAE0000000
  %4337 = fmul fast float %3359, %3359
  %4338 = fmul fast float %3960, %3960
  %4339 = fadd fast float %4338, %4337
  %4340 = fmul fast float %4339, 0x3FE5152B00000000
  %4341 = fmul fast float %3359, 0xBFCC1F85E0000000
  %4342 = fmul fast float %4341, %3960
  %4343 = fadd fast float %4342, 0xBFE1363700000000
  %4344 = fadd fast float %4343, %4336
  %4345 = fsub fast float %4344, %4340
  %4346 = fmul fast float %4335, 0x3FBA6F0D00000000
  %4347 = fmul fast float %4339, 0x3FD0432880000000
  %4348 = fmul fast float %3359, 0xBFEF110800000000
  %4349 = fmul fast float %4348, %3960
  %4350 = fadd fast float %4349, 1.000000e+00
  %4351 = fsub fast float %4350, %4346
  %4352 = fadd fast float %4351, %4347
  %4353 = fdiv fast float %4345, %4352
  %4354 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4355 = fsub fast float %4354, %3359
  %4356 = fmul fast float %4355, %4279
  %4357 = fadd fast float %4356, %3359
  %4358 = fmul fast float %4282, %4066
  %4359 = fmul fast float %4282, %4067
  %4360 = fmul fast float %4282, %4068
  %4361 = fadd fast float %4358, %3352
  %4362 = fadd fast float %4359, %3353
  %4363 = fadd fast float %4360, %3354
  %4364 = fmul fast float %4285, %4121
  %4365 = fadd fast float %4364, %3361
  %4366 = fmul fast float %4288, %4118
  %4367 = fmul fast float %4288, %4119
  %4368 = fmul fast float %4288, %4120
  %4369 = fadd fast float %4366, %3349
  %4370 = fadd fast float %4367, %3350
  %4371 = fadd fast float %4368, %3351
  br label %4400

; <label>:4372                                    ; preds = %4324
  %4373 = icmp eq i32 %4268, 8
  br i1 %4373, label %4374, label %4400

; <label>:4374                                    ; preds = %4372
  %4375 = fmul fast float %4273, %3961
  %4376 = fmul fast float %4273, %3962
  %4377 = fadd fast float %4375, %3344
  %4378 = fadd fast float %4376, %3345
  %4379 = call float @dx.op.binary.f32(i32 36, float %3360, float %3963)  ; FMin(a,b)
  %4380 = fsub fast float %4379, %3360
  %4381 = fmul fast float %4380, %4276
  %4382 = fadd fast float %4381, %3360
  %4383 = fsub fast float %3960, %3359
  %4384 = fmul fast float %4279, %4383
  %4385 = fadd fast float %4384, %3359
  %4386 = fmul fast float %4282, %4066
  %4387 = fmul fast float %4282, %4067
  %4388 = fmul fast float %4282, %4068
  %4389 = fadd fast float %4386, %3352
  %4390 = fadd fast float %4387, %3353
  %4391 = fadd fast float %4388, %3354
  %4392 = fmul fast float %4285, %4121
  %4393 = fadd fast float %4392, %3361
  %4394 = fmul fast float %4288, %4118
  %4395 = fmul fast float %4288, %4119
  %4396 = fmul fast float %4288, %4120
  %4397 = fadd fast float %4394, %3349
  %4398 = fadd fast float %4395, %3350
  %4399 = fadd fast float %4396, %3351
  br label %4400

; <label>:4400                                    ; preds = %4374, %4372, %4326, %4290, %4259, %3659, %3363, %3343
  %4401 = phi float [ %3344, %4259 ], [ %3344, %3659 ], [ %3344, %3343 ], [ %3344, %3363 ], [ %4295, %4290 ], [ %4329, %4326 ], [ %3344, %4372 ], [ %4377, %4374 ]
  %4402 = phi float [ %3345, %4259 ], [ %3345, %3659 ], [ %3345, %3343 ], [ %3345, %3363 ], [ %4296, %4290 ], [ %4330, %4326 ], [ %3345, %4372 ], [ %4378, %4374 ]
  %4403 = phi float [ %4260, %4259 ], [ %3346, %3659 ], [ %3346, %3343 ], [ %3346, %3363 ], [ %4260, %4290 ], [ %4260, %4326 ], [ %4260, %4372 ], [ %4260, %4374 ]
  %4404 = phi float [ %4261, %4259 ], [ %3347, %3659 ], [ %3347, %3343 ], [ %3347, %3363 ], [ %4261, %4290 ], [ %4261, %4326 ], [ %4261, %4372 ], [ %4261, %4374 ]
  %4405 = phi float [ %4262, %4259 ], [ %3348, %3659 ], [ %3348, %3343 ], [ %3348, %3363 ], [ %4262, %4290 ], [ %4262, %4326 ], [ %4262, %4372 ], [ %4262, %4374 ]
  %4406 = phi float [ %3349, %4259 ], [ %3349, %3659 ], [ %3349, %3343 ], [ %3349, %3363 ], [ %4321, %4290 ], [ %4369, %4326 ], [ %3349, %4372 ], [ %4397, %4374 ]
  %4407 = phi float [ %3350, %4259 ], [ %3350, %3659 ], [ %3350, %3343 ], [ %3350, %3363 ], [ %4322, %4290 ], [ %4370, %4326 ], [ %3350, %4372 ], [ %4398, %4374 ]
  %4408 = phi float [ %3351, %4259 ], [ %3351, %3659 ], [ %3351, %3343 ], [ %3351, %3363 ], [ %4323, %4290 ], [ %4371, %4326 ], [ %3351, %4372 ], [ %4399, %4374 ]
  %4409 = phi float [ %3352, %4259 ], [ %3352, %3659 ], [ %3352, %3343 ], [ %3352, %3363 ], [ %4309, %4290 ], [ %4361, %4326 ], [ %3352, %4372 ], [ %4389, %4374 ]
  %4410 = phi float [ %3353, %4259 ], [ %3353, %3659 ], [ %3353, %3343 ], [ %3353, %3363 ], [ %4310, %4290 ], [ %4362, %4326 ], [ %3353, %4372 ], [ %4390, %4374 ]
  %4411 = phi float [ %3354, %4259 ], [ %3354, %3659 ], [ %3354, %3343 ], [ %3354, %3363 ], [ %4311, %4290 ], [ %4363, %4326 ], [ %3354, %4372 ], [ %4391, %4374 ]
  %4412 = phi float [ %4263, %4259 ], [ %3355, %3659 ], [ %3355, %3343 ], [ %3355, %3363 ], [ %4263, %4290 ], [ %4263, %4326 ], [ %4263, %4372 ], [ %4263, %4374 ]
  %4413 = phi float [ %4264, %4259 ], [ %3356, %3659 ], [ %3356, %3343 ], [ %3356, %3363 ], [ %4264, %4290 ], [ %4264, %4326 ], [ %4264, %4372 ], [ %4264, %4374 ]
  %4414 = phi float [ %4265, %4259 ], [ %3357, %3659 ], [ %3357, %3343 ], [ %3357, %3363 ], [ %4265, %4290 ], [ %4265, %4326 ], [ %4265, %4372 ], [ %4265, %4374 ]
  %4415 = phi float [ %4266, %4259 ], [ %3358, %3659 ], [ %3358, %3343 ], [ %3358, %3363 ], [ %4266, %4290 ], [ %4266, %4326 ], [ %4266, %4372 ], [ %4266, %4374 ]
  %4416 = phi float [ %3359, %4259 ], [ %3359, %3659 ], [ %3359, %3343 ], [ %3359, %3363 ], [ %4302, %4290 ], [ %4357, %4326 ], [ %3359, %4372 ], [ %4385, %4374 ]
  %4417 = phi float [ %3360, %4259 ], [ %3360, %3659 ], [ %3360, %3343 ], [ %3360, %3363 ], [ %4299, %4290 ], [ %4334, %4326 ], [ %3360, %4372 ], [ %4382, %4374 ]
  %4418 = phi float [ %3361, %4259 ], [ %3361, %3659 ], [ %3361, %3343 ], [ %3361, %3363 ], [ %4314, %4290 ], [ %4365, %4326 ], [ %3361, %4372 ], [ %4393, %4374 ]
  %4419 = phi float [ %4267, %4259 ], [ %3362, %3659 ], [ %3362, %3343 ], [ %3362, %3363 ], [ %4267, %4290 ], [ %4267, %4326 ], [ %4267, %4372 ], [ %4267, %4374 ]
  %4420 = add i32 %49, 360
  %4421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4420, i32 undef)  ; BufferLoad(srv,index,wot)
  %4422 = extractvalue %dx.types.ResRet.i32 %4421, 0
  %4423 = bitcast i32 %4422 to float
  %4424 = fcmp fast oge float %4423, 0.000000e+00
  %4425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.f32 %4425, 0
  %4427 = select i1 %4424, float %4423, float %4426
  %4428 = call float @dx.op.dot2.f32(i32 54, float %4401, float %4402, float %4401, float %4402)  ; Dot2(ax,ay,bx,by)
  %4429 = fmul fast float %4428, 0x3FE3333340000000
  %4430 = fsub fast float 1.000000e+00, %4429
  %4431 = call float @dx.op.dot3.f32(i32 55, float %4401, float %4402, float %4430, float %4401, float %4402, float %4430)  ; Dot3(ax,ay,az,bx,by,bz)
  %4432 = call float @dx.op.unary.f32(i32 25, float %4431)  ; Rsqrt(value)
  %4433 = fmul fast float %4432, %4401
  %4434 = fmul fast float %4432, %4402
  %4435 = fmul fast float %4430, %4432
  %4436 = fmul fast float %4435, %105
  %4437 = fmul fast float %4435, %106
  %4438 = fmul fast float %4435, %107
  %4439 = fmul fast float %4433, %70
  %4440 = fmul fast float %4433, %71
  %4441 = fmul fast float %4433, %72
  %4442 = fadd fast float %4436, %4439
  %4443 = fadd fast float %4437, %4440
  %4444 = fadd fast float %4438, %4441
  %4445 = fmul fast float %117, %4434
  %4446 = fmul fast float %118, %4434
  %4447 = fmul fast float %119, %4434
  %4448 = fadd fast float %4442, %4445
  %4449 = fadd fast float %4443, %4446
  %4450 = fadd fast float %4444, %4447
  %4451 = call float @dx.op.dot3.f32(i32 55, float %4448, float %4449, float %4450, float %4448, float %4449, float %4450)  ; Dot3(ax,ay,az,bx,by,bz)
  %4452 = call float @dx.op.unary.f32(i32 25, float %4451)  ; Rsqrt(value)
  %4453 = fmul fast float %4448, %4452
  %4454 = fmul fast float %4449, %4452
  %4455 = fmul fast float %4450, %4452
  %4456 = and i32 %51, 1
  %4457 = icmp eq i32 %4456, 0
  br i1 %4457, label %4458, label %5050

; <label>:4458                                    ; preds = %4400
  %4459 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %4460 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4461 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4462 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %4463 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4464 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4465 = fadd fast float %4459, %153
  %4466 = fadd fast float %4460, %154
  %4467 = fadd fast float %4461, %155
  %4468 = fadd fast float %4462, %153
  %4469 = fadd fast float %4463, %154
  %4470 = fadd fast float %4464, %155
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 0
  %4473 = extractvalue %dx.types.CBufRet.f32 %4471, 1
  %4474 = extractvalue %dx.types.CBufRet.f32 %4471, 2
  %4475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4476 = extractvalue %dx.types.CBufRet.f32 %4475, 2
  %4477 = extractvalue %dx.types.CBufRet.f32 %4475, 3
  %4478 = fmul fast float %4472, %98
  %4479 = fmul fast float %4478, %4476
  %4480 = fmul fast float %4473, %99
  %4481 = fmul fast float %4480, %4477
  %4482 = fptoui float %4479 to i32
  %4483 = fptoui float %4481 to i32
  %4484 = fadd fast float %4472, -1.000000e+00
  %4485 = fadd fast float %4473, -1.000000e+00
  %4486 = fptoui float %4484 to i32
  %4487 = fptoui float %4485 to i32
  %4488 = call i32 @dx.op.binary.i32(i32 40, i32 %4482, i32 %4486)  ; UMin(a,b)
  %4489 = call i32 @dx.op.binary.i32(i32 40, i32 %4483, i32 %4487)  ; UMin(a,b)
  %4490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4491 = extractvalue %dx.types.CBufRet.f32 %4490, 2
  %4492 = extractvalue %dx.types.CBufRet.f32 %4490, 3
  %4493 = fmul fast float %4491, %86
  %4494 = fsub fast float %4493, %4492
  %4495 = fadd fast float %4474, -1.000000e+00
  %4496 = call float @dx.op.binary.f32(i32 36, float %4494, float %4495)  ; FMin(a,b)
  %4497 = fptoui float %4496 to i32
  %4498 = fptoui float %4472 to i32
  %4499 = fptoui float %4473 to i32
  %4500 = mul i32 %4497, %4499
  %4501 = add i32 %4500, %4489
  %4502 = mul i32 %4501, %4498
  %4503 = add i32 %4502, %4488
  %4504 = shl i32 %4503, 2
  %4505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4504, i32 undef)  ; BufferLoad(srv,index,wot)
  %4506 = extractvalue %dx.types.ResRet.i32 %4505, 0
  %4507 = and i32 %4506, 1023
  %4508 = lshr i32 %4506, 10
  %4509 = icmp eq i32 %4507, 0
  br i1 %4509, label %5013, label %4510

; <label>:4510                                    ; preds = %4458
  %4511 = and i32 %4506, 1023
  br label %4512

; <label>:4512                                    ; preds = %4644, %4510
  %4513 = phi i32 [ %4594, %4644 ], [ 0, %4510 ]
  %4514 = phi float [ %4645, %4644 ], [ 0.000000e+00, %4510 ]
  %4515 = phi float [ %4646, %4644 ], [ %4427, %4510 ]
  %4516 = phi float [ %4647, %4644 ], [ %4419, %4510 ]
  %4517 = phi float [ %4648, %4644 ], [ %4409, %4510 ]
  %4518 = phi float [ %4649, %4644 ], [ %4410, %4510 ]
  %4519 = phi float [ %4650, %4644 ], [ %4411, %4510 ]
  %4520 = phi float [ %4651, %4644 ], [ 0.000000e+00, %4510 ]
  %4521 = phi float [ %4652, %4644 ], [ 0.000000e+00, %4510 ]
  %4522 = phi float [ %4653, %4644 ], [ %4406, %4510 ]
  %4523 = phi float [ %4654, %4644 ], [ %4407, %4510 ]
  %4524 = phi float [ %4655, %4644 ], [ %4408, %4510 ]
  %4525 = phi float [ %4656, %4644 ], [ %4412, %4510 ]
  %4526 = phi float [ %4657, %4644 ], [ %4413, %4510 ]
  %4527 = phi float [ %4658, %4644 ], [ %4414, %4510 ]
  %4528 = phi float [ %4659, %4644 ], [ %4453, %4510 ]
  %4529 = phi float [ %4660, %4644 ], [ %4454, %4510 ]
  %4530 = phi float [ %4661, %4644 ], [ %4455, %4510 ]
  %4531 = phi float [ %4662, %4644 ], [ %4417, %4510 ]
  %4532 = phi float [ %4663, %4644 ], [ %4416, %4510 ]
  %4533 = phi float [ %4664, %4644 ], [ 0.000000e+00, %4510 ]
  %4534 = phi float [ %4665, %4644 ], [ %4415, %4510 ]
  %4535 = phi float [ %4666, %4644 ], [ %4403, %4510 ]
  %4536 = phi float [ %4667, %4644 ], [ %4404, %4510 ]
  %4537 = phi float [ %4668, %4644 ], [ %4405, %4510 ]
  %4538 = add nuw nsw i32 %4513, %4508
  %4539 = shl i32 %4538, 2
  %4540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4541 = extractvalue %dx.types.ResRet.i32 %4540, 0
  %4542 = shl i32 %4541, 8
  %4543 = or i32 %4542, 48
  %4544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4543, i32 undef)  ; BufferLoad(srv,index,wot)
  %4545 = extractvalue %dx.types.ResRet.f32 %4544, 0
  %4546 = extractvalue %dx.types.ResRet.f32 %4544, 1
  %4547 = extractvalue %dx.types.ResRet.f32 %4544, 2
  %4548 = extractvalue %dx.types.ResRet.f32 %4544, 3
  %4549 = or i32 %4542, 64
  %4550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4549, i32 undef)  ; BufferLoad(srv,index,wot)
  %4551 = extractvalue %dx.types.ResRet.i32 %4550, 0
  %4552 = extractvalue %dx.types.ResRet.i32 %4550, 1
  %4553 = or i32 %4542, 80
  %4554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.f32 %4554, 2
  %4556 = extractvalue %dx.types.ResRet.f32 %4554, 3
  %4557 = or i32 %4542, 96
  %4558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.f32 %4558, 0
  %4560 = extractvalue %dx.types.ResRet.f32 %4558, 1
  %4561 = extractvalue %dx.types.ResRet.f32 %4558, 2
  %4562 = extractvalue %dx.types.ResRet.f32 %4558, 3
  %4563 = or i32 %4542, 112
  %4564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 2
  %4566 = or i32 %4542, 128
  %4567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4566, i32 undef)  ; BufferLoad(srv,index,wot)
  %4568 = extractvalue %dx.types.ResRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.ResRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.ResRet.f32 %4567, 2
  %4571 = extractvalue %dx.types.ResRet.f32 %4567, 3
  %4572 = or i32 %4542, 144
  %4573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.f32 %4573, 0
  %4575 = extractvalue %dx.types.ResRet.f32 %4573, 1
  %4576 = extractvalue %dx.types.ResRet.f32 %4573, 2
  %4577 = extractvalue %dx.types.ResRet.f32 %4573, 3
  %4578 = or i32 %4542, 160
  %4579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4580 = extractvalue %dx.types.ResRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.ResRet.f32 %4579, 1
  %4582 = extractvalue %dx.types.ResRet.f32 %4579, 2
  %4583 = extractvalue %dx.types.ResRet.f32 %4579, 3
  %4584 = or i32 %4542, 192
  %4585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.i32 %4585, 0
  %4587 = or i32 %4542, 208
  %4588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4587, i32 undef)  ; BufferLoad(srv,index,wot)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = or i32 %4542, 248
  %4591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4590, i32 undef)  ; BufferLoad(srv,index,wot)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.f32 %4591, 1
  %4594 = add nuw nsw i32 %4513, 1
  %4595 = bitcast float %4548 to i32
  %4596 = and i32 %4595, 512
  %4597 = icmp eq i32 %4596, 0
  %4598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4542, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.ResRet.f32 %4598, 2
  %4602 = extractvalue %dx.types.ResRet.f32 %4598, 3
  %4603 = call float @dx.op.dot4.f32(i32 56, float %4599, float %4600, float %4601, float %4602, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4604 = or i32 %4542, 16
  %4605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4604, i32 undef)  ; BufferLoad(srv,index,wot)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.ResRet.f32 %4605, 2
  %4609 = extractvalue %dx.types.ResRet.f32 %4605, 3
  %4610 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4611 = or i32 %4542, 32
  %4612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4611, i32 undef)  ; BufferLoad(srv,index,wot)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.ResRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.ResRet.f32 %4612, 2
  %4616 = extractvalue %dx.types.ResRet.f32 %4612, 3
  %4617 = call float @dx.op.dot4.f32(i32 56, float %4613, float %4614, float %4615, float %4616, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4618 = call float @dx.op.unary.f32(i32 27, float %4603)  ; Round_ni(value)
  %4619 = call float @dx.op.unary.f32(i32 6, float %4618)  ; FAbs(value)
  %4620 = call float @dx.op.unary.f32(i32 27, float %4610)  ; Round_ni(value)
  %4621 = call float @dx.op.unary.f32(i32 6, float %4620)  ; FAbs(value)
  %4622 = call float @dx.op.unary.f32(i32 6, float %4617)  ; FAbs(value)
  %4623 = call float @dx.op.unary.f32(i32 27, float %4622)  ; Round_ni(value)
  %4624 = fadd fast float %4621, %4619
  %4625 = fadd fast float %4624, %4623
  %4626 = fcmp fast oeq float %4625, 0.000000e+00
  %4627 = call float @dx.op.dot4.f32(i32 56, float %4599, float %4600, float %4601, float %4602, float %4465, float %4466, float %4467, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4628 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %4465, float %4466, float %4467, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4629 = call float @dx.op.dot4.f32(i32 56, float %4599, float %4600, float %4601, float %4602, float %4468, float %4469, float %4470, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4630 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %4468, float %4469, float %4470, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4631 = fsub fast float %4627, %4603
  %4632 = fsub fast float %4629, %4603
  %4633 = fsub fast float %4628, %4610
  %4634 = fsub fast float %4630, %4610
  %4635 = call float @dx.op.dot3.f32(i32 55, float %4545, float %4546, float %4547, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.f32 %4636, 2
  %4638 = fadd fast float %4637, %4635
  %4639 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4636, 0
  %4641 = fcmp fast ogt float %4639, %4640
  %4642 = and i1 %4626, %4641
  %4643 = and i1 %4597, %4642
  br i1 %4643, label %4670, label %4644

; <label>:4644                                    ; preds = %4999, %4751, %4670, %4512
  %4645 = phi float [ %4514, %4670 ], [ %4754, %4751 ], [ %4754, %4999 ], [ %4514, %4512 ]
  %4646 = phi float [ %4515, %4670 ], [ %4515, %4751 ], [ %4975, %4999 ], [ %4515, %4512 ]
  %4647 = phi float [ %4516, %4670 ], [ %4516, %4751 ], [ %4973, %4999 ], [ %4516, %4512 ]
  %4648 = phi float [ %4517, %4670 ], [ %4517, %4751 ], [ %4951, %4999 ], [ %4517, %4512 ]
  %4649 = phi float [ %4518, %4670 ], [ %4518, %4751 ], [ %4952, %4999 ], [ %4518, %4512 ]
  %4650 = phi float [ %4519, %4670 ], [ %4519, %4751 ], [ %4953, %4999 ], [ %4519, %4512 ]
  %4651 = phi float [ %4520, %4670 ], [ %4520, %4751 ], [ %4878, %4999 ], [ %4520, %4512 ]
  %4652 = phi float [ %4521, %4670 ], [ %4521, %4751 ], [ %4876, %4999 ], [ %4521, %4512 ]
  %4653 = phi float [ %4522, %4670 ], [ %4522, %4751 ], [ %4921, %4999 ], [ %4522, %4512 ]
  %4654 = phi float [ %4523, %4670 ], [ %4523, %4751 ], [ %4922, %4999 ], [ %4523, %4512 ]
  %4655 = phi float [ %4524, %4670 ], [ %4524, %4751 ], [ %4923, %4999 ], [ %4524, %4512 ]
  %4656 = phi float [ %4525, %4670 ], [ %4525, %4751 ], [ %5009, %4999 ], [ %4525, %4512 ]
  %4657 = phi float [ %4526, %4670 ], [ %4526, %4751 ], [ %5010, %4999 ], [ %4526, %4512 ]
  %4658 = phi float [ %4527, %4670 ], [ %4527, %4751 ], [ %5011, %4999 ], [ %4527, %4512 ]
  %4659 = phi float [ %4528, %4670 ], [ %4528, %4751 ], [ %4857, %4999 ], [ %4528, %4512 ]
  %4660 = phi float [ %4529, %4670 ], [ %4529, %4751 ], [ %4858, %4999 ], [ %4529, %4512 ]
  %4661 = phi float [ %4530, %4670 ], [ %4530, %4751 ], [ %4859, %4999 ], [ %4530, %4512 ]
  %4662 = phi float [ %4531, %4670 ], [ %4531, %4751 ], [ %4931, %4999 ], [ %4531, %4512 ]
  %4663 = phi float [ %4532, %4670 ], [ %4532, %4751 ], [ %4928, %4999 ], [ %4532, %4512 ]
  %4664 = phi float [ %4533, %4670 ], [ %4533, %4751 ], [ %4925, %4999 ], [ %4533, %4512 ]
  %4665 = phi float [ %4534, %4670 ], [ %4534, %4751 ], [ %4874, %4999 ], [ %4534, %4512 ]
  %4666 = phi float [ %4535, %4670 ], [ %4535, %4751 ], [ %4869, %4999 ], [ %4535, %4512 ]
  %4667 = phi float [ %4536, %4670 ], [ %4536, %4751 ], [ %4870, %4999 ], [ %4536, %4512 ]
  %4668 = phi float [ %4537, %4670 ], [ %4537, %4751 ], [ %4871, %4999 ], [ %4537, %4512 ]
  %4669 = icmp eq i32 %4594, %4511
  br i1 %4669, label %5012, label %4512

; <label>:4670                                    ; preds = %4512
  %4671 = extractvalue %dx.types.ResRet.f32 %4564, 3
  %4672 = extractvalue %dx.types.ResRet.f32 %4564, 1
  %4673 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4674 = extractvalue %dx.types.ResRet.f32 %4554, 1
  %4675 = extractvalue %dx.types.ResRet.f32 %4554, 0
  %4676 = extractvalue %dx.types.ResRet.i32 %4550, 3
  %4677 = extractvalue %dx.types.ResRet.i32 %4550, 2
  %4678 = add i32 %4676, 0
  %4679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4678, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4681 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4679, %dx.types.Handle %4680, float %4603, float %4610, float undef, float undef, i32 0, i32 0, i32 undef, float %4631, float %4633, float undef, float %4632, float %4634, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4682 = extractvalue %dx.types.ResRet.f32 %4681, 0
  %4683 = fmul fast float %4682, %4675
  %4684 = fadd fast float %4683, %4674
  %4685 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4686 = fmul fast float %4603, %4559
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4560, float %4610, float %4686)  ; FMad(a,b,c)
  %4688 = fadd fast float %4687, %4673
  %4689 = fmul fast float %4603, %4561
  %4690 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4610, float %4689)  ; FMad(a,b,c)
  %4691 = fadd fast float %4690, %4672
  %4692 = fmul fast float %4631, %4559
  %4693 = call float @dx.op.tertiary.f32(i32 46, float %4560, float %4633, float %4692)  ; FMad(a,b,c)
  %4694 = fmul fast float %4631, %4561
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4633, float %4694)  ; FMad(a,b,c)
  %4696 = fmul fast float %4632, %4559
  %4697 = call float @dx.op.tertiary.f32(i32 46, float %4560, float %4634, float %4696)  ; FMad(a,b,c)
  %4698 = fmul fast float %4632, %4561
  %4699 = call float @dx.op.tertiary.f32(i32 46, float %4562, float %4634, float %4698)  ; FMad(a,b,c)
  %4700 = add i32 %4677, 0
  %4701 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4700, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4702 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4701, %dx.types.Handle %4680, float %4688, float %4691, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4695, float undef, float %4697, float %4699, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4703 = extractvalue %dx.types.ResRet.f32 %4702, 0
  %4704 = and i32 %4595, 1024
  %4705 = icmp ne i32 %4704, 0
  %4706 = fcmp fast ogt float %4703, 0x3FE0101020000000
  %4707 = uitofp i1 %4706 to float
  %4708 = select i1 %4705, float %4707, float %4703
  %4709 = and i32 %4595, 8192
  %4710 = icmp ne i32 %4709, 0
  %4711 = select i1 %4710, float %4671, float 1.000000e+00
  %4712 = fmul fast float %4603, 2.000000e+00
  %4713 = fadd fast float %4712, -1.000000e+00
  %4714 = call float @dx.op.unary.f32(i32 6, float %4713)  ; FAbs(value)
  %4715 = fmul fast float %4714, %4592
  %4716 = fsub fast float %4715, %4592
  %4717 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4718 = fmul fast float %4610, 2.000000e+00
  %4719 = fadd fast float %4718, -1.000000e+00
  %4720 = call float @dx.op.unary.f32(i32 6, float %4719)  ; FAbs(value)
  %4721 = fmul fast float %4720, %4593
  %4722 = fsub fast float %4721, %4593
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fmul fast float %4622, %4555
  %4725 = fsub fast float %4724, %4555
  %4726 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4727 = fmul fast float %4685, %4711
  %4728 = fmul fast float %4727, %4682
  %4729 = fmul fast float %4728, %4717
  %4730 = fmul fast float %4729, %4708
  %4731 = fmul fast float %4730, %4723
  %4732 = fmul fast float %4731, %4726
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 1
  %4735 = extractvalue %dx.types.CBufRet.f32 %4733, 0
  %4736 = fsub fast float %4639, %4735
  %4737 = fmul fast float %4736, %4734
  %4738 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4739 = fmul fast float %4732, %4556
  %4740 = fadd fast float %4732, %4556
  %4741 = fmul fast float %4740, %4565
  %4742 = fsub fast float %4741, %4565
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = and i32 %4595, 128
  %4745 = icmp ne i32 %4744, 0
  %4746 = select i1 %4745, float %4743, float %4739
  %4747 = fmul fast float %4746, %4738
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 0
  %4750 = fcmp fast ugt float %4747, %4749
  br i1 %4750, label %4751, label %4644

; <label>:4751                                    ; preds = %4670
  %4752 = select i1 %4710, float %4747, float 0.000000e+00
  %4753 = fadd fast float %4752, %4514
  %4754 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  br i1 %4710, label %4644, label %4755

; <label>:4755                                    ; preds = %4751
  %4756 = and i32 %4595, 4
  %4757 = and i32 %4595, 8
  %4758 = add i32 %4551, 0
  %4759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4758, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4761 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4759, %dx.types.Handle %4760, float %4688, float %4691, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4695, float undef, float %4697, float %4699, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4762 = extractvalue %dx.types.ResRet.f32 %4761, 0
  %4763 = extractvalue %dx.types.ResRet.f32 %4761, 1
  %4764 = extractvalue %dx.types.ResRet.f32 %4761, 2
  %4765 = extractvalue %dx.types.ResRet.f32 %4761, 3
  %4766 = bitcast float %4577 to i32
  %4767 = and i32 %4766, 255
  %4768 = uitofp i32 %4767 to float
  %4769 = lshr i32 %4766, 8
  %4770 = and i32 %4769, 255
  %4771 = uitofp i32 %4770 to float
  %4772 = fmul fast float %4765, %4768
  %4773 = fadd fast float %4772, %4771
  %4774 = fmul fast float %4773, 0x3F70101000000000
  %4775 = add i32 %4552, 0
  %4776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4775, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4777 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4776, %dx.types.Handle %4760, float %4688, float %4691, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4695, float undef, float %4697, float %4699, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4778 = extractvalue %dx.types.ResRet.f32 %4777, 0
  %4779 = extractvalue %dx.types.ResRet.f32 %4777, 1
  %4780 = extractvalue %dx.types.ResRet.f32 %4777, 2
  %4781 = extractvalue %dx.types.ResRet.f32 %4777, 3
  %4782 = bitcast float %4571 to i32
  %4783 = and i32 %4782, 255
  %4784 = uitofp i32 %4783 to float
  %4785 = lshr i32 %4782, 8
  %4786 = and i32 %4785, 255
  %4787 = uitofp i32 %4786 to float
  %4788 = lshr i32 %4782, 16
  %4789 = and i32 %4788, 255
  %4790 = uitofp i32 %4789 to float
  %4791 = fmul fast float %4790, 0x3F70101000000000
  %4792 = fmul fast float %4778, %4784
  %4793 = fadd fast float %4792, %4787
  %4794 = fmul fast float %4793, 0x3F70101000000000
  %4795 = fadd fast float %4779, -5.000000e-01
  %4796 = fadd fast float %4781, -5.000000e-01
  %4797 = fmul fast float %4795, %4791
  %4798 = fmul fast float %4796, %4791
  %4799 = fadd fast float %4797, 5.000000e-01
  %4800 = fadd fast float %4798, 5.000000e-01
  %4801 = fmul fast float %4762, %4580
  %4802 = fmul fast float %4763, %4581
  %4803 = fmul fast float %4764, %4582
  %4804 = fmul fast float %4799, 2.000000e+00
  %4805 = fadd fast float %4804, -1.000000e+00
  %4806 = fmul fast float %4800, 2.000000e+00
  %4807 = fadd fast float %4806, -1.000000e+00
  %4808 = fadd fast float %4805, %4807
  %4809 = fmul fast float %4808, 5.000000e-01
  %4810 = fsub fast float %4805, %4807
  %4811 = fmul fast float %4810, 5.000000e-01
  %4812 = call float @dx.op.unary.f32(i32 6, float %4809)  ; FAbs(value)
  %4813 = fsub fast float 1.000000e+00, %4812
  %4814 = call float @dx.op.unary.f32(i32 6, float %4811)  ; FAbs(value)
  %4815 = fsub fast float %4813, %4814
  %4816 = call float @dx.op.dot3.f32(i32 55, float %4809, float %4811, float %4815, float %4809, float %4811, float %4815)  ; Dot3(ax,ay,az,bx,by,bz)
  %4817 = call float @dx.op.unary.f32(i32 25, float %4816)  ; Rsqrt(value)
  %4818 = fmul fast float %4809, %4817
  %4819 = fmul fast float %4811, %4817
  %4820 = fmul fast float %4817, %4815
  %4821 = fmul fast float %4820, %4545
  %4822 = fmul fast float %4820, %4546
  %4823 = fmul fast float %4820, %4547
  %4824 = fmul fast float %4818, %4568
  %4825 = fmul fast float %4818, %4569
  %4826 = fmul fast float %4818, %4570
  %4827 = fadd fast float %4824, %4821
  %4828 = fadd fast float %4825, %4822
  %4829 = fadd fast float %4826, %4823
  %4830 = fmul fast float %4819, %4574
  %4831 = fmul fast float %4819, %4575
  %4832 = fmul fast float %4819, %4576
  %4833 = fadd fast float %4827, %4830
  %4834 = fadd fast float %4828, %4831
  %4835 = fadd fast float %4829, %4832
  %4836 = call float @dx.op.dot3.f32(i32 55, float %4833, float %4834, float %4835, float %4833, float %4834, float %4835)  ; Dot3(ax,ay,az,bx,by,bz)
  %4837 = call float @dx.op.unary.f32(i32 25, float %4836)  ; Rsqrt(value)
  %4838 = fmul fast float %4833, %4837
  %4839 = fmul fast float %4834, %4837
  %4840 = fmul fast float %4835, %4837
  %4841 = icmp ne i32 %4757, 0
  %4842 = select i1 %4841, float 1.000000e+00, float 0.000000e+00
  %4843 = fmul fast float %4747, %4842
  %4844 = and i32 %4595, 1
  %4845 = icmp eq i32 %4844, 0
  br i1 %4845, label %4846, label %4850

; <label>:4846                                    ; preds = %4755
  %4847 = fsub fast float %4838, %4528
  %4848 = fsub fast float %4839, %4529
  %4849 = fsub fast float %4840, %4530
  br label %4850

; <label>:4850                                    ; preds = %4846, %4755
  %4851 = phi float [ %4847, %4846 ], [ %4838, %4755 ]
  %4852 = phi float [ %4848, %4846 ], [ %4839, %4755 ]
  %4853 = phi float [ %4849, %4846 ], [ %4840, %4755 ]
  %4854 = fmul float %4853, %4843
  %4855 = fmul float %4852, %4843
  %4856 = fmul float %4851, %4843
  %4857 = fadd fast float %4856, %4528
  %4858 = fadd fast float %4855, %4529
  %4859 = fadd fast float %4854, %4530
  %4860 = icmp ne i32 %4756, 0
  %4861 = select i1 %4860, float 1.000000e+00, float 0.000000e+00
  %4862 = fmul fast float %4747, %4861
  %4863 = fsub fast float %4801, %4535
  %4864 = fsub fast float %4802, %4536
  %4865 = fsub fast float %4803, %4537
  %4866 = fmul fast float %4863, %4862
  %4867 = fmul fast float %4864, %4862
  %4868 = fmul fast float %4865, %4862
  %4869 = fadd fast float %4866, %4535
  %4870 = fadd fast float %4867, %4536
  %4871 = fadd fast float %4868, %4537
  %4872 = fsub fast float %4774, %4534
  %4873 = fmul fast float %4872, %4862
  %4874 = fadd fast float %4873, %4534
  %4875 = fmul fast float %4862, %4521
  %4876 = fsub fast float %4521, %4875
  %4877 = fmul fast float %4862, %4520
  %4878 = fsub fast float %4520, %4877
  %4879 = bitcast float %4589 to i32
  %4880 = lshr i32 %4879, 16
  %4881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4880)  ; LegacyF16ToF32(value)
  %4882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4883 = extractvalue %dx.types.ResRet.i32 %4882, 0
  %4884 = and i32 %4883, 1
  %4885 = icmp eq i32 %4884, 0
  br i1 %4885, label %4886, label %4911

; <label>:4886                                    ; preds = %4850
  %4887 = fadd fast float %4774, 0xBFB99999A0000000
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = fmul fast float %4888, 0x3FF1C71C80000000
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4892 = fmul fast float %4891, %4801
  %4893 = fmul fast float %4891, %4802
  %4894 = fmul fast float %4891, %4803
  %4895 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4896 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4897 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4898 = call float @dx.op.binary.f32(i32 35, float %4896, float %4897)  ; FMax(a,b)
  %4899 = call float @dx.op.binary.f32(i32 35, float %4895, float %4898)  ; FMax(a,b)
  %4900 = fcmp fast ogt float %4899, 0.000000e+00
  %4901 = bitcast float %4899 to i32
  %4902 = sub nsw i32 2129859010, %4901
  %4903 = bitcast i32 %4902 to float
  %4904 = select i1 %4900, float %4903, float 0.000000e+00
  %4905 = fmul fast float %4895, %4881
  %4906 = fmul fast float %4896, %4881
  %4907 = fmul fast float %4897, %4881
  %4908 = fmul fast float %4905, %4904
  %4909 = fmul fast float %4906, %4904
  %4910 = fmul fast float %4907, %4904
  br label %4911

; <label>:4911                                    ; preds = %4886, %4850
  %4912 = phi float [ %4881, %4850 ], [ %4908, %4886 ]
  %4913 = phi float [ %4881, %4850 ], [ %4909, %4886 ]
  %4914 = phi float [ %4881, %4850 ], [ %4910, %4886 ]
  %4915 = fsub fast float %4912, %4522
  %4916 = fsub fast float %4913, %4523
  %4917 = fsub fast float %4914, %4524
  %4918 = fmul fast float %4915, %4862
  %4919 = fmul fast float %4916, %4862
  %4920 = fmul fast float %4917, %4862
  %4921 = fadd fast float %4918, %4522
  %4922 = fadd fast float %4919, %4523
  %4923 = fadd fast float %4920, %4524
  %4924 = fadd fast float %4747, %4533
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4926 = fsub fast float %4794, %4532
  %4927 = fmul fast float %4926, %4843
  %4928 = fadd fast float %4927, %4532
  %4929 = fsub fast float %4780, %4531
  %4930 = fmul fast float %4929, %4843
  %4931 = fadd fast float %4930, %4531
  br i1 %4845, label %4940, label %4932

; <label>:4932                                    ; preds = %4911
  %4933 = and i32 %4595, 32768
  %4934 = icmp eq i32 %4933, 0
  br i1 %4934, label %4950, label %4935

; <label>:4935                                    ; preds = %4932
  %4936 = fmul fast float %4843, 1.270000e+02
  %4937 = fadd fast float %4936, %4517
  %4938 = fadd fast float %4936, %4518
  %4939 = fadd fast float %4936, %4519
  br label %4950

; <label>:4940                                    ; preds = %4911
  %4941 = fsub fast float 1.270000e+02, %4517
  %4942 = fsub fast float 1.270000e+02, %4518
  %4943 = fsub fast float 1.270000e+02, %4519
  %4944 = fmul fast float %4843, %4941
  %4945 = fmul fast float %4843, %4942
  %4946 = fmul fast float %4843, %4943
  %4947 = fadd fast float %4944, %4517
  %4948 = fadd fast float %4945, %4518
  %4949 = fadd fast float %4946, %4519
  br label %4950

; <label>:4950                                    ; preds = %4940, %4935, %4932
  %4951 = phi float [ %4937, %4935 ], [ %4517, %4932 ], [ %4947, %4940 ]
  %4952 = phi float [ %4938, %4935 ], [ %4518, %4932 ], [ %4948, %4940 ]
  %4953 = phi float [ %4939, %4935 ], [ %4519, %4932 ], [ %4949, %4940 ]
  %4954 = call float @dx.op.dot3.f32(i32 55, float %4801, float %4802, float %4803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.f32 %4955, 0
  %4957 = extractvalue %dx.types.CBufRet.f32 %4955, 1
  %4958 = fmul fast float %4957, %4954
  %4959 = fadd fast float %4958, %4956
  %4960 = call float @dx.op.unary.f32(i32 7, float %4959)  ; Saturate(value)
  %4961 = bitcast float %4583 to i32
  %4962 = and i32 %4961, 65535
  %4963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4962)  ; LegacyF16ToF32(value)
  %4964 = lshr i32 %4961, 16
  %4965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4964)  ; LegacyF16ToF32(value)
  %4966 = fcmp fast oge float %4963, 0.000000e+00
  %4967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4968 = extractvalue %dx.types.CBufRet.f32 %4967, 0
  %4969 = select i1 %4966, float %4963, float %4968
  %4970 = fadd fast float %4969, %4965
  %4971 = fsub fast float %4960, %4516
  %4972 = fmul fast float %4971, %4747
  %4973 = fadd fast float %4972, %4516
  %4974 = fmul fast float %4970, %4747
  %4975 = call float @dx.op.binary.f32(i32 35, float %4515, float %4974)  ; FMax(a,b)
  %4976 = and i32 %4595, 16
  %4977 = icmp eq i32 %4976, 0
  br i1 %4977, label %4999, label %4978

; <label>:4978                                    ; preds = %4950
  %4979 = add i32 %4586, 0
  %4980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4979, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4981 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4980, %dx.types.Handle %4760, float %4688, float %4691, float undef, float undef, i32 0, i32 0, i32 undef, float %4693, float %4695, float undef, float %4697, float %4699, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4982 = extractvalue %dx.types.ResRet.f32 %4981, 0
  %4983 = extractvalue %dx.types.ResRet.f32 %4981, 1
  %4984 = extractvalue %dx.types.ResRet.f32 %4981, 2
  %4985 = and i32 %4879, 65535
  %4986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4985)  ; LegacyF16ToF32(value)
  %4987 = fmul fast float %4982, %4580
  %4988 = fmul fast float %4983, %4581
  %4989 = fmul fast float %4984, %4582
  %4990 = and i32 %4595, 16384
  %4991 = icmp ne i32 %4990, 0
  %4992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4993 = extractvalue %dx.types.CBufRet.f32 %4992, 0
  %4994 = select i1 %4991, float %4993, float 1.000000e+00
  %4995 = fmul fast float %4994, %4986
  %4996 = fmul fast float %4987, %4995
  %4997 = fmul fast float %4988, %4995
  %4998 = fmul fast float %4989, %4995
  br label %4999

; <label>:4999                                    ; preds = %4978, %4950
  %5000 = phi float [ %4996, %4978 ], [ 0.000000e+00, %4950 ]
  %5001 = phi float [ %4997, %4978 ], [ 0.000000e+00, %4950 ]
  %5002 = phi float [ %4998, %4978 ], [ 0.000000e+00, %4950 ]
  %5003 = fsub fast float %5000, %4525
  %5004 = fsub fast float %5001, %4526
  %5005 = fsub fast float %5002, %4527
  %5006 = fmul fast float %5003, %4747
  %5007 = fmul fast float %5004, %4747
  %5008 = fmul fast float %5005, %4747
  %5009 = fadd fast float %5006, %4525
  %5010 = fadd fast float %5007, %4526
  %5011 = fadd fast float %5008, %4527
  br label %4644

; <label>:5012                                    ; preds = %4644
  br label %5013

; <label>:5013                                    ; preds = %5012, %4458
  %5014 = phi float [ 0.000000e+00, %4458 ], [ %4645, %5012 ]
  %5015 = phi float [ %4427, %4458 ], [ %4646, %5012 ]
  %5016 = phi float [ %4419, %4458 ], [ %4647, %5012 ]
  %5017 = phi float [ %4409, %4458 ], [ %4648, %5012 ]
  %5018 = phi float [ %4410, %4458 ], [ %4649, %5012 ]
  %5019 = phi float [ %4411, %4458 ], [ %4650, %5012 ]
  %5020 = phi float [ 0.000000e+00, %4458 ], [ %4651, %5012 ]
  %5021 = phi float [ 0.000000e+00, %4458 ], [ %4652, %5012 ]
  %5022 = phi float [ %4406, %4458 ], [ %4653, %5012 ]
  %5023 = phi float [ %4407, %4458 ], [ %4654, %5012 ]
  %5024 = phi float [ %4408, %4458 ], [ %4655, %5012 ]
  %5025 = phi float [ %4412, %4458 ], [ %4656, %5012 ]
  %5026 = phi float [ %4413, %4458 ], [ %4657, %5012 ]
  %5027 = phi float [ %4414, %4458 ], [ %4658, %5012 ]
  %5028 = phi float [ %4453, %4458 ], [ %4659, %5012 ]
  %5029 = phi float [ %4454, %4458 ], [ %4660, %5012 ]
  %5030 = phi float [ %4455, %4458 ], [ %4661, %5012 ]
  %5031 = phi float [ %4417, %4458 ], [ %4662, %5012 ]
  %5032 = phi float [ %4416, %4458 ], [ %4663, %5012 ]
  %5033 = phi float [ 0.000000e+00, %4458 ], [ %4664, %5012 ]
  %5034 = phi float [ %4415, %4458 ], [ %4665, %5012 ]
  %5035 = phi float [ %4403, %4458 ], [ %4666, %5012 ]
  %5036 = phi float [ %4404, %4458 ], [ %4667, %5012 ]
  %5037 = phi float [ %4405, %4458 ], [ %4668, %5012 ]
  %5038 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5029, float %5030, float %5028, float %5029, float %5030)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = call float @dx.op.unary.f32(i32 25, float %5038)  ; Rsqrt(value)
  %5040 = fmul fast float %5039, %5028
  %5041 = fmul fast float %5039, %5029
  %5042 = fmul fast float %5039, %5030
  %5043 = fadd fast float %5033, %1244
  %5044 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5045 = call float @dx.op.dot3.f32(i32 55, float %5040, float %5041, float %5042, float %5040, float %5041, float %5042)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = call float @dx.op.unary.f32(i32 25, float %5045)  ; Rsqrt(value)
  %5047 = fmul fast float %5046, %5040
  %5048 = fmul fast float %5046, %5041
  %5049 = fmul fast float %5046, %5042
  br label %5050

; <label>:5050                                    ; preds = %5013, %4400
  %5051 = phi float [ %5035, %5013 ], [ %4403, %4400 ]
  %5052 = phi float [ %5036, %5013 ], [ %4404, %4400 ]
  %5053 = phi float [ %5037, %5013 ], [ %4405, %4400 ]
  %5054 = phi float [ %5022, %5013 ], [ %4406, %4400 ]
  %5055 = phi float [ %5023, %5013 ], [ %4407, %4400 ]
  %5056 = phi float [ %5024, %5013 ], [ %4408, %4400 ]
  %5057 = phi float [ %5025, %5013 ], [ %4412, %4400 ]
  %5058 = phi float [ %5026, %5013 ], [ %4413, %4400 ]
  %5059 = phi float [ %5027, %5013 ], [ %4414, %4400 ]
  %5060 = phi float [ %5017, %5013 ], [ %4409, %4400 ]
  %5061 = phi float [ %5018, %5013 ], [ %4410, %4400 ]
  %5062 = phi float [ %5019, %5013 ], [ %4411, %4400 ]
  %5063 = phi float [ %5047, %5013 ], [ %4453, %4400 ]
  %5064 = phi float [ %5048, %5013 ], [ %4454, %4400 ]
  %5065 = phi float [ %5049, %5013 ], [ %4455, %4400 ]
  %5066 = phi float [ %5034, %5013 ], [ %4415, %4400 ]
  %5067 = phi float [ %5044, %5013 ], [ %1244, %4400 ]
  %5068 = phi float [ %5032, %5013 ], [ %4416, %4400 ]
  %5069 = phi float [ %5031, %5013 ], [ %4417, %4400 ]
  %5070 = phi float [ %5021, %5013 ], [ 0.000000e+00, %4400 ]
  %5071 = phi float [ %5020, %5013 ], [ 0.000000e+00, %4400 ]
  %5072 = phi float [ %5014, %5013 ], [ 0.000000e+00, %4400 ]
  %5073 = phi float [ %5015, %5013 ], [ %4427, %4400 ]
  %5074 = phi float [ %5016, %5013 ], [ %4419, %4400 ]
  %5075 = fadd fast float %5066, 0xBFB99999A0000000
  %5076 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5077 = fmul fast float %5076, 0x3FF1C71C80000000
  %5078 = call float @dx.op.binary.f32(i32 36, float %5066, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5079 = fsub fast float 1.000000e+00, %5077
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fmul fast float %5080, %5051
  %5082 = fmul fast float %5080, %5052
  %5083 = fmul fast float %5080, %5053
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5086 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5087 = fmul fast float %5077, %5051
  %5088 = fmul fast float %5077, %5052
  %5089 = fmul fast float %5077, %5053
  %5090 = fadd fast float %5087, %5078
  %5091 = fadd fast float %5088, %5078
  %5092 = fadd fast float %5089, %5078
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %5098 = extractvalue %dx.types.ResRet.i32 %5097, 0
  %5099 = and i32 %5098, 1
  %5100 = icmp eq i32 %5099, 0
  br i1 %5100, label %5115, label %5101

; <label>:5101                                    ; preds = %5050
  %5102 = call float @dx.op.binary.f32(i32 35, float %5085, float %5086)  ; FMax(a,b)
  %5103 = call float @dx.op.binary.f32(i32 35, float %5084, float %5102)  ; FMax(a,b)
  %5104 = fcmp fast ogt float %5103, 0.000000e+00
  %5105 = bitcast float %5103 to i32
  %5106 = sub nsw i32 2129859010, %5105
  %5107 = bitcast i32 %5106 to float
  %5108 = select i1 %5104, float %5107, float 0.000000e+00
  %5109 = fmul fast float %5084, %5054
  %5110 = fmul fast float %5085, %5055
  %5111 = fmul fast float %5086, %5056
  %5112 = fmul fast float %5109, %5108
  %5113 = fmul fast float %5110, %5108
  %5114 = fmul fast float %5111, %5108
  br label %5115

; <label>:5115                                    ; preds = %5101, %5050
  %5116 = phi float [ %5112, %5101 ], [ %5054, %5050 ]
  %5117 = phi float [ %5113, %5101 ], [ %5055, %5050 ]
  %5118 = phi float [ %5114, %5101 ], [ %5056, %5050 ]
  %5119 = call float @dx.op.binary.f32(i32 36, float %5060, float 1.270000e+02)  ; FMin(a,b)
  %5120 = call float @dx.op.binary.f32(i32 36, float %5061, float 1.270000e+02)  ; FMin(a,b)
  %5121 = call float @dx.op.binary.f32(i32 36, float %5062, float 1.270000e+02)  ; FMin(a,b)
  %5122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.i32 %5122, 3
  %5124 = and i32 %5123, 8
  %5125 = icmp ne i32 %5124, 0
  %5126 = call float @dx.op.binary.f32(i32 35, float %5084, float %5051)  ; FMax(a,b)
  %5127 = call float @dx.op.binary.f32(i32 35, float %5085, float %5051)  ; FMax(a,b)
  %5128 = call float @dx.op.binary.f32(i32 35, float %5086, float %5051)  ; FMax(a,b)
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %5086, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = select i1 %214, float %5051, float %5084
  %5131 = select i1 %214, float %5129, float %5085
  %5132 = select i1 %214, float 1.000000e+00, float %5086
  %5133 = select i1 %5125, float %5126, float %5130
  %5134 = select i1 %5125, float %5127, float %5131
  %5135 = select i1 %5125, float %5128, float %5132
  %5136 = call float @dx.op.dot3.f32(i32 55, float %5116, float %5117, float %5118, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = select i1 %214, float %5136, float %5116
  %5138 = select i1 %214, float %5136, float %5117
  %5139 = select i1 %214, float %5136, float %5118
  %5140 = and i32 %190, 3
  %5141 = select i1 %184, i32 %5140, i32 0
  %5142 = icmp eq i32 %5141, 1
  br i1 %5142, label %5143, label %5219

; <label>:5143                                    ; preds = %5115
  %5144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5144, 0
  %5146 = extractvalue %dx.types.CBufRet.f32 %5144, 1
  %5147 = fadd fast float %5145, %153
  %5148 = fadd fast float %5146, %154
  %5149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5150 = extractvalue %dx.types.CBufRet.f32 %5149, 0
  %5151 = extractvalue %dx.types.CBufRet.f32 %5149, 1
  %5152 = fsub fast float %5147, %5150
  %5153 = fsub fast float %5148, %5151
  %5154 = fmul fast float %5152, %5152
  %5155 = fmul fast float %5153, %5153
  %5156 = fadd fast float %5154, %5155
  %5157 = call float @dx.op.unary.f32(i32 24, float %5156)  ; Sqrt(value)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5149, 2
  %5159 = fcmp fast olt float %5157, %5158
  br i1 %5159, label %5160, label %5213

; <label>:5160                                    ; preds = %5143
  %5161 = extractvalue %dx.types.CBufRet.f32 %5144, 2
  %5162 = fadd fast float %5161, %155
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 0
  %5165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5166 = extractvalue %dx.types.CBufRet.f32 %5165, 0
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 0
  %5169 = extractvalue %dx.types.CBufRet.f32 %5163, 1
  %5170 = extractvalue %dx.types.CBufRet.f32 %5165, 1
  %5171 = extractvalue %dx.types.CBufRet.f32 %5167, 1
  %5172 = extractvalue %dx.types.CBufRet.f32 %5163, 3
  %5173 = extractvalue %dx.types.CBufRet.f32 %5165, 3
  %5174 = extractvalue %dx.types.CBufRet.f32 %5167, 3
  %5175 = fadd fast float %5172, %5147
  %5176 = fadd fast float %5173, %5148
  %5177 = fadd fast float %5162, %5174
  %5178 = fmul fast float %5175, %5164
  %5179 = call float @dx.op.tertiary.f32(i32 46, float %5176, float %5166, float %5178)  ; FMad(a,b,c)
  %5180 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5168, float %5179)  ; FMad(a,b,c)
  %5181 = fmul fast float %5175, %5169
  %5182 = call float @dx.op.tertiary.f32(i32 46, float %5176, float %5170, float %5181)  ; FMad(a,b,c)
  %5183 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5171, float %5182)  ; FMad(a,b,c)
  %5184 = fsub fast float %5180, %5172
  %5185 = fsub fast float %5183, %5173
  %5186 = fsub fast float %5184, %5150
  %5187 = fadd fast float %5186, %5158
  %5188 = fsub fast float %5185, %5151
  %5189 = fadd fast float %5188, %5158
  %5190 = extractvalue %dx.types.CBufRet.f32 %5149, 3
  %5191 = fmul fast float %5187, %5190
  %5192 = fmul fast float %5189, %5190
  %5193 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5194 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5195 = fsub fast float 1.000000e+00, %5193
  %5196 = fsub fast float 1.000000e+00, %5194
  %5197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %43, float %5195, float %5196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5198 = extractvalue %dx.types.ResRet.f32 %5197, 0
  %5199 = fcmp fast ugt float %5198, 0.000000e+00
  br i1 %5199, label %5200, label %5213

; <label>:5200                                    ; preds = %5160
  %5201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5202 = extractvalue %dx.types.CBufRet.f32 %5201, 2
  %5203 = fmul fast float %5202, %5198
  %5204 = extractvalue %dx.types.CBufRet.f32 %5201, 3
  %5205 = fadd fast float %5204, %5203
  %5206 = extractvalue %dx.types.CBufRet.f32 %5167, 2
  %5207 = fadd fast float %5205, %5174
  %5208 = fmul fast float %5180, %5168
  %5209 = call float @dx.op.tertiary.f32(i32 46, float %5183, float %5171, float %5208)  ; FMad(a,b,c)
  %5210 = call float @dx.op.tertiary.f32(i32 46, float %5207, float %5206, float %5209)  ; FMad(a,b,c)
  %5211 = fsub fast float %5210, %5174
  %5212 = fsub fast float %5211, %5161
  br label %5213

; <label>:5213                                    ; preds = %5200, %5160, %5143
  %5214 = phi i1 [ true, %5200 ], [ false, %5160 ], [ false, %5143 ]
  %5215 = phi float [ %5212, %5200 ], [ -1.310720e+05, %5160 ], [ -1.310720e+05, %5143 ]
  %5216 = fsub fast float %5215, %155
  %5217 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5218 = select i1 %5214, float %5217, float 1.000000e+00
  br label %5219

; <label>:5219                                    ; preds = %5213, %5115
  %5220 = phi float [ %5218, %5213 ], [ 0.000000e+00, %5115 ]
  %5221 = icmp eq i32 %5141, 3
  %5222 = select i1 %5221, float 1.000000e+00, float %5220
  %5223 = call float @dx.op.binary.f32(i32 35, float %5072, float %5222)  ; FMax(a,b)
  %5224 = call float @dx.op.unary.f32(i32 7, float %5223)  ; Saturate(value)
  %5225 = fcmp fast une float %5224, 0.000000e+00
  br i1 %5225, label %5226, label %5396

; <label>:5226                                    ; preds = %5219
  %5227 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %5228 = call float @dx.op.unary.f32(i32 25, float %5227)  ; Rsqrt(value)
  %5229 = fmul fast float %153, %5228
  %5230 = fsub fast float -0.000000e+00, %5229
  %5231 = fmul fast float %154, %5228
  %5232 = fsub fast float -0.000000e+00, %5231
  %5233 = fmul fast float %155, %5228
  %5234 = fsub fast float -0.000000e+00, %5233
  %5235 = call float @dx.op.dot3.f32(i32 55, float %5230, float %5232, float %5234, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = fmul fast float %5224, 2.500000e+00
  %5237 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5238 = fmul fast float %5224, 0x4013FFFFE0000000
  %5239 = fadd fast float %5238, 0xBFFFFFFFE0000000
  %5240 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5241 = fmul fast float %5224, 0x4004000020000000
  %5242 = fadd fast float %5241, 0xBFF8000040000000
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5245 = fmul fast float %5075, 1.000000e+01
  %5246 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5247 = fmul fast float %5246, 2.000000e+00
  %5248 = fsub fast float 3.000000e+00, %5247
  %5249 = fmul fast float %5246, %5246
  %5250 = fmul fast float %5249, %5248
  %5251 = fsub fast float 1.000000e+00, %5250
  %5252 = fsub fast float 0x3FE3333340000000, %5096
  %5253 = fmul fast float %5252, 0x400AAAAAA0000000
  %5254 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  %5255 = fmul fast float %5251, %5254
  %5256 = fmul fast float %5133, 0x3FEA2B8620000000
  %5257 = fmul fast float %5134, 0x3FEA2B8620000000
  %5258 = fmul fast float %5135, 0x3FEA2B8620000000
  %5259 = fadd fast float %5256, 0x3FC81DFBA0000000
  %5260 = fmul fast float %5259, %5133
  %5261 = fadd fast float %5260, 0x3F910E6020000000
  %5262 = fadd fast float %5257, 0x3FC81DFBA0000000
  %5263 = fmul fast float %5262, %5134
  %5264 = fadd fast float %5263, 0x3F910E6020000000
  %5265 = fadd fast float %5258, 0x3FC81DFBA0000000
  %5266 = fmul fast float %5265, %5135
  %5267 = fadd fast float %5266, 0x3F910E6020000000
  %5268 = call float @dx.op.unary.f32(i32 7, float %5261)  ; Saturate(value)
  %5269 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5270 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5271 = fsub fast float %5268, %5133
  %5272 = fsub fast float %5269, %5134
  %5273 = fsub fast float %5270, %5135
  %5274 = fmul fast float %5271, %5244
  %5275 = fmul fast float %5274, %5255
  %5276 = fmul fast float %5272, %5244
  %5277 = fmul fast float %5276, %5255
  %5278 = fmul fast float %5273, %5244
  %5279 = fmul fast float %5278, %5255
  %5280 = fadd fast float %5275, %5133
  %5281 = fadd fast float %5277, %5134
  %5282 = fadd fast float %5279, %5135
  %5283 = fmul fast float %5069, %5069
  %5284 = fmul fast float %5283, %5283
  %5285 = fadd fast float %5240, 1.000000e+00
  %5286 = fsub fast float %5285, %5255
  %5287 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5288 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = fsub fast float 1.000000e+00, %5284
  %5291 = call float @dx.op.binary.f32(i32 36, float %5287, float %5290)  ; FMin(a,b)
  %5292 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5293 = call float @dx.op.binary.f32(i32 35, float %5291, float %5292)  ; FMax(a,b)
  %5294 = fadd fast float %5289, 0xBFE4CCCCC0000000
  %5295 = fmul fast float %5294, 0x4006DB6DA0000000
  %5296 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5297 = fmul fast float %5296, 2.000000e+00
  %5298 = fsub fast float 3.000000e+00, %5297
  %5299 = bitcast float %5093 to i32
  %5300 = ashr i32 %5299, 1
  %5301 = add nsw i32 %5300, 532487669
  %5302 = bitcast i32 %5301 to float
  %5303 = fsub fast float 1.000000e+00, %5302
  %5304 = bitcast float %5303 to i32
  %5305 = sub nsw i32 2129859010, %5304
  %5306 = bitcast i32 %5305 to float
  %5307 = fmul fast float %5306, 2.000000e+00
  %5308 = bitcast float %5094 to i32
  %5309 = ashr i32 %5308, 1
  %5310 = add nsw i32 %5309, 532487669
  %5311 = bitcast i32 %5310 to float
  %5312 = fsub fast float 1.000000e+00, %5311
  %5313 = bitcast float %5312 to i32
  %5314 = sub nsw i32 2129859010, %5313
  %5315 = bitcast i32 %5314 to float
  %5316 = fmul fast float %5315, 2.000000e+00
  %5317 = bitcast float %5095 to i32
  %5318 = ashr i32 %5317, 1
  %5319 = add nsw i32 %5318, 532487669
  %5320 = bitcast i32 %5319 to float
  %5321 = fsub fast float 1.000000e+00, %5320
  %5322 = bitcast float %5321 to i32
  %5323 = sub nsw i32 2129859010, %5322
  %5324 = bitcast i32 %5323 to float
  %5325 = fmul fast float %5324, 2.000000e+00
  %5326 = fsub fast float 0x4002A9FBE0000000, %5307
  %5327 = fadd fast float %5307, 0x3FD54FDF00000000
  %5328 = bitcast float %5327 to i32
  %5329 = sub nsw i32 2129859010, %5328
  %5330 = bitcast i32 %5329 to float
  %5331 = fmul fast float %5330, %5326
  %5332 = fmul fast float %5331, %5331
  %5333 = fsub fast float 0x4002A9FBE0000000, %5316
  %5334 = fadd fast float %5316, 0x3FD54FDF00000000
  %5335 = bitcast float %5334 to i32
  %5336 = sub nsw i32 2129859010, %5335
  %5337 = bitcast i32 %5336 to float
  %5338 = fmul fast float %5337, %5333
  %5339 = fmul fast float %5338, %5338
  %5340 = fsub fast float 0x4002A9FBE0000000, %5325
  %5341 = fadd fast float %5325, 0x3FD54FDF00000000
  %5342 = bitcast float %5341 to i32
  %5343 = sub nsw i32 2129859010, %5342
  %5344 = bitcast i32 %5343 to float
  %5345 = fmul fast float %5344, %5340
  %5346 = fmul fast float %5345, %5345
  %5347 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5332)  ; FMax(a,b)
  %5348 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5339)  ; FMax(a,b)
  %5349 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5346)  ; FMax(a,b)
  %5350 = fsub fast float 1.000000e+00, %5235
  %5351 = fadd fast float %5350, %5251
  %5352 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5353 = fsub fast float 1.000000e+00, %5222
  %5354 = fmul fast float %5293, %5353
  %5355 = fmul fast float %5296, %5296
  %5356 = fmul fast float %5355, %5354
  %5357 = fmul fast float %5356, %5298
  %5358 = fmul fast float %5353, 0xBFE99999A0000000
  %5359 = fmul fast float %5358, %5244
  %5360 = fmul fast float %5359, %5255
  %5361 = fadd fast float %5360, 1.000000e+00
  %5362 = fadd fast float %5096, -1.000000e+00
  %5363 = fmul fast float %5361, %5362
  %5364 = fadd fast float %5363, 1.000000e+00
  %5365 = fsub fast float %5347, %5093
  %5366 = fsub fast float %5348, %5094
  %5367 = fsub fast float %5349, %5095
  %5368 = fmul fast float %5357, %5365
  %5369 = fmul fast float %5357, %5366
  %5370 = fmul fast float %5357, %5367
  %5371 = fadd fast float %5368, %5093
  %5372 = fadd fast float %5369, %5094
  %5373 = fadd fast float %5370, %5095
  %5374 = fsub fast float %105, %5063
  %5375 = fsub fast float %106, %5064
  %5376 = fsub fast float %107, %5065
  %5377 = fmul fast float %5357, %5374
  %5378 = fmul fast float %5357, %5375
  %5379 = fmul fast float %5357, %5376
  %5380 = fadd fast float %5377, %5063
  %5381 = fadd fast float %5378, %5064
  %5382 = fadd fast float %5379, %5065
  %5383 = fmul fast float %5357, %5352
  %5384 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5385 = fsub fast float 1.000000e+00, %5384
  %5386 = fmul fast float %5383, %5385
  %5387 = fadd fast float %5386, %5384
  %5388 = fsub fast float 1.000000e+00, %5069
  %5389 = fmul fast float %5357, %5388
  %5390 = fadd fast float %5389, %5069
  %5391 = call float @dx.op.dot3.f32(i32 55, float %5380, float %5381, float %5382, float %5380, float %5381, float %5382)  ; Dot3(ax,ay,az,bx,by,bz)
  %5392 = call float @dx.op.unary.f32(i32 25, float %5391)  ; Rsqrt(value)
  %5393 = fmul fast float %5380, %5392
  %5394 = fmul fast float %5381, %5392
  %5395 = fmul fast float %5382, %5392
  br label %5396

; <label>:5396                                    ; preds = %5226, %5219
  %5397 = phi float [ %5371, %5226 ], [ %5093, %5219 ]
  %5398 = phi float [ %5372, %5226 ], [ %5094, %5219 ]
  %5399 = phi float [ %5373, %5226 ], [ %5095, %5219 ]
  %5400 = phi float [ %5280, %5226 ], [ %5133, %5219 ]
  %5401 = phi float [ %5281, %5226 ], [ %5134, %5219 ]
  %5402 = phi float [ %5282, %5226 ], [ %5135, %5219 ]
  %5403 = phi float [ %5393, %5226 ], [ %5063, %5219 ]
  %5404 = phi float [ %5394, %5226 ], [ %5064, %5219 ]
  %5405 = phi float [ %5395, %5226 ], [ %5065, %5219 ]
  %5406 = phi float [ %5387, %5226 ], [ %5096, %5219 ]
  %5407 = phi float [ %5390, %5226 ], [ %5069, %5219 ]
  %5408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5409 = extractvalue %dx.types.CBufRet.f32 %5408, 0
  %5410 = extractvalue %dx.types.CBufRet.f32 %5408, 1
  %5411 = fmul fast float %5409, 5.000000e-01
  %5412 = fmul fast float %5410, 5.000000e-01
  %5413 = extractvalue %dx.types.CBufRet.f32 %5408, 2
  %5414 = extractvalue %dx.types.CBufRet.f32 %5408, 3
  %5415 = fmul fast float %5413, 2.000000e+00
  %5416 = fmul fast float %5414, 2.000000e+00
  %5417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5418 = extractvalue %dx.types.CBufRet.f32 %5417, 0
  %5419 = extractvalue %dx.types.CBufRet.f32 %5417, 1
  %5420 = extractvalue %dx.types.CBufRet.f32 %5417, 2
  %5421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5422 = extractvalue %dx.types.CBufRet.f32 %5421, 0
  %5423 = extractvalue %dx.types.CBufRet.f32 %5421, 1
  %5424 = extractvalue %dx.types.CBufRet.f32 %5421, 2
  %5425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5426 = extractvalue %dx.types.CBufRet.f32 %5425, 0
  %5427 = extractvalue %dx.types.CBufRet.f32 %5425, 1
  %5428 = extractvalue %dx.types.CBufRet.f32 %5425, 2
  %5429 = fmul fast float %5418, %105
  %5430 = call float @dx.op.tertiary.f32(i32 46, float %106, float %5419, float %5429)  ; FMad(a,b,c)
  %5431 = call float @dx.op.tertiary.f32(i32 46, float %107, float %5420, float %5430)  ; FMad(a,b,c)
  %5432 = fmul fast float %5422, %105
  %5433 = call float @dx.op.tertiary.f32(i32 46, float %106, float %5423, float %5432)  ; FMad(a,b,c)
  %5434 = call float @dx.op.tertiary.f32(i32 46, float %107, float %5424, float %5433)  ; FMad(a,b,c)
  %5435 = fmul fast float %5426, %105
  %5436 = call float @dx.op.tertiary.f32(i32 46, float %106, float %5427, float %5435)  ; FMad(a,b,c)
  %5437 = call float @dx.op.tertiary.f32(i32 46, float %107, float %5428, float %5436)  ; FMad(a,b,c)
  %5438 = fmul fast float %228, 5.000000e+00
  %5439 = call float @dx.op.unary.f32(i32 22, float %5438)  ; Frc(value)
  %5440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %5441 = extractvalue %dx.types.CBufRet.f32 %5440, 2
  %5442 = extractvalue %dx.types.CBufRet.f32 %5440, 3
  %5443 = fmul fast float %5441, 5.120000e+02
  %5444 = fmul fast float %5442, 5.120000e+02
  %5445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5446 = extractvalue %dx.types.CBufRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.CBufRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.CBufRet.f32 %5445, 2
  %5449 = extractvalue %dx.types.CBufRet.f32 %5445, 3
  %5450 = fmul fast float %5413, %98
  %5451 = fmul fast float %5414, %99
  %5452 = call float @dx.op.unary.f32(i32 6, float %86)  ; FAbs(value)
  %5453 = fmul fast float %5443, %5413
  %5454 = fmul fast float %5444, %5414
  %5455 = fmul fast float %5452, %5448
  %5456 = fmul fast float %5449, %5452
  %5457 = fsub fast float -0.000000e+00, %5456
  %5458 = fdiv fast float 3.000000e+00, %5455
  %5459 = fdiv fast float 3.000000e+00, %5457
  %5460 = call float @dx.op.binary.f32(i32 36, float %5453, float %5458)  ; FMin(a,b)
  %5461 = call float @dx.op.binary.f32(i32 36, float %5454, float %5459)  ; FMin(a,b)
  %5462 = fmul fast float %5450, %5446
  %5463 = fmul fast float %5451, %5447
  %5464 = fsub fast float %5462, %5448
  %5465 = fsub fast float %5463, %5449
  %5466 = fmul fast float %5464, %5452
  %5467 = fmul fast float %5465, %5452
  %5468 = fsub fast float -0.000000e+00, %5466
  %5469 = fsub fast float -0.000000e+00, %5467
  %5470 = fsub fast float -0.000000e+00, %5452
  %5471 = call float @dx.op.dot3.f32(i32 55, float %5468, float %5469, float %5470, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5472 = call float @dx.op.unary.f32(i32 25, float %5471)  ; Rsqrt(value)
  %5473 = fmul fast float %5472, %5468
  %5474 = fmul fast float %5472, %5469
  %5475 = fmul fast float %5472, %5470
  %5476 = fmul fast float %5452, 0x3FEFEB8520000000
  %5477 = fmul fast float %5411, %5460
  %5478 = fmul fast float %5412, %5461
  %5479 = fmul fast float %5477, %5477
  %5480 = fmul fast float %5478, %5478
  %5481 = fadd fast float %5480, %5479
  %5482 = call float @dx.op.unary.f32(i32 24, float %5481)  ; Sqrt(value)
  %5483 = fmul fast float %5482, 3.125000e-02
  br label %5484

; <label>:5484                                    ; preds = %5671, %5396
  %5485 = phi i32 [ 0, %5396 ], [ %5774, %5671 ]
  %5486 = phi float [ 0.000000e+00, %5396 ], [ %5773, %5671 ]
  %5487 = sitofp i32 %5485 to float
  %5488 = fadd fast float %5487, %227
  %5489 = fmul fast float %5488, 0x3FF921FB60000000
  %5490 = call float @dx.op.unary.f32(i32 12, float %5489)  ; Cos(value)
  %5491 = call float @dx.op.unary.f32(i32 13, float %5489)  ; Sin(value)
  %5492 = fsub fast float -0.000000e+00, %5491
  %5493 = call float @dx.op.dot3.f32(i32 55, float %5473, float %5474, float %5475, float %5431, float %5434, float %5437)  ; Dot3(ax,ay,az,bx,by,bz)
  %5494 = call float @dx.op.unary.f32(i32 6, float %5493)  ; FAbs(value)
  %5495 = call float @dx.op.unary.f32(i32 6, float %5494)  ; FAbs(value)
  %5496 = fcmp fast ogt float %5495, 0x3EB0C6F7A0000000
  %5497 = call float @dx.op.dot3.f32(i32 55, float %5490, float %5492, float 0.000000e+00, float %5431, float %5434, float %5437)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = fsub fast float -0.000000e+00, %5497
  %5499 = fdiv fast float %5498, %5494
  %5500 = select i1 %5496, float %5499, float 0.000000e+00
  %5501 = fmul fast float %5500, %5500
  %5502 = fadd fast float %5501, 1.000000e+00
  %5503 = call float @dx.op.unary.f32(i32 25, float %5502)  ; Rsqrt(value)
  %5504 = fmul fast float %5500, %5503
  br label %5505

; <label>:5505                                    ; preds = %5505, %5484
  %5506 = phi float [ %5504, %5484 ], [ %5584, %5505 ]
  %5507 = phi float [ 6.000000e+00, %5484 ], [ %5572, %5505 ]
  %5508 = phi i32 [ 0, %5484 ], [ %5585, %5505 ]
  %5509 = sitofp i32 %5508 to float
  %5510 = fadd fast float %5509, %5439
  %5511 = fmul fast float %5510, 5.000000e-01
  %5512 = fmul fast float %5511, %5511
  %5513 = fmul fast float %5512, %5483
  %5514 = call float @dx.op.binary.f32(i32 36, float %5513, float 3.000000e+00)  ; FMin(a,b)
  %5515 = fadd fast float %5514, 1.000000e+00
  %5516 = fmul fast float %5512, %5460
  %5517 = fmul fast float %5512, %5461
  %5518 = fadd fast float %5516, %5415
  %5519 = fmul fast float %5518, %5490
  %5520 = fadd fast float %5519, %5450
  %5521 = fadd fast float %5517, %5416
  %5522 = fmul fast float %5521, %5491
  %5523 = fadd fast float %5522, %5451
  %5524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %5520, float %5523, float undef, float undef, i32 0, i32 0, i32 undef, float %5515)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5525 = extractvalue %dx.types.ResRet.f32 %5524, 0
  %5526 = fcmp fast ogt float %5525, -1.000000e+00
  %5527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5528 = extractvalue %dx.types.CBufRet.f32 %5527, 1
  %5529 = select i1 %5526, float %5528, float 1.000000e+00
  %5530 = fadd fast float %5525, 1.000000e+00
  %5531 = fmul fast float %5529, %5530
  %5532 = call float @dx.op.unary.f32(i32 6, float %5531)  ; FAbs(value)
  %5533 = call float @dx.op.unary.f32(i32 6, float %5532)  ; FAbs(value)
  %5534 = fmul fast float %5520, %5446
  %5535 = fmul fast float %5523, %5447
  %5536 = fsub fast float %5534, %5448
  %5537 = fsub fast float %5535, %5449
  %5538 = fmul fast float %5536, %5533
  %5539 = fmul fast float %5537, %5533
  %5540 = fsub fast float %5538, %5466
  %5541 = fsub fast float %5539, %5467
  %5542 = fsub fast float %5533, %5476
  %5543 = call float @dx.op.dot3.f32(i32 55, float %5540, float %5541, float %5542, float %5540, float %5541, float %5542)  ; Dot3(ax,ay,az,bx,by,bz)
  %5544 = call float @dx.op.dot3.f32(i32 55, float %5540, float %5541, float %5542, float %5431, float %5434, float %5437)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = fsub fast float -0.000000e+00, %5544
  %5546 = call float @dx.op.dot3.f32(i32 55, float %5540, float %5541, float %5542, float %5473, float %5474, float %5475)  ; Dot3(ax,ay,az,bx,by,bz)
  %5547 = call float @dx.op.unary.f32(i32 25, float %5543)  ; Rsqrt(value)
  %5548 = fmul fast float %5547, %5546
  %5549 = bitcast float %5543 to i32
  %5550 = ashr i32 %5549, 1
  %5551 = add nsw i32 %5550, 532487669
  %5552 = bitcast i32 %5551 to float
  %5553 = fmul fast float %5552, 0x3FE5555640000000
  %5554 = fsub fast float 0x40000000C0000000, %5553
  %5555 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5556 = fmul fast float %5552, 0x3FCC71C780000000
  %5557 = fsub fast float 0x3FF55555A0000000, %5556
  %5558 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  %5559 = fmul fast float %5533, 0x3F947AE140000000
  %5560 = fadd fast float %5559, -1.000000e+00
  %5561 = call float @dx.op.unary.f32(i32 7, float %5560)  ; Saturate(value)
  %5562 = fsub fast float %5558, %5555
  %5563 = fmul fast float %5561, %5562
  %5564 = fadd fast float %5563, %5555
  %5565 = fmul fast float %5532, %86
  %5566 = fcmp fast ogt float %5565, 0.000000e+00
  %5567 = select i1 %5566, float %5564, float 0.000000e+00
  %5568 = fadd fast float %5548, 1.000000e+00
  %5569 = fmul fast float %5567, %5568
  %5570 = fadd fast float %5569, -1.000000e+00
  %5571 = fcmp fast ogt float %5570, %5506
  %5572 = select i1 %5571, float %5545, float %5507
  %5573 = fsub fast float %5545, %5572
  %5574 = fmul fast float %5573, 0x400AAAA4C0000000
  %5575 = fadd fast float %5574, 0xBFDFFFF900000000
  %5576 = call float @dx.op.unary.f32(i32 7, float %5575)  ; Saturate(value)
  %5577 = fmul fast float %5544, 0x401AAAB640000000
  %5578 = fadd fast float %5577, 0x3FF0000700000000
  %5579 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5580 = fmul fast float %5576, 2.000000e+00
  %5581 = fmul fast float %5580, %5579
  %5582 = fsub fast float %5506, %5581
  %5583 = fcmp ole float %5570, %5582
  %5584 = select i1 %5583, float %5582, float %5570
  %5585 = add nuw nsw i32 %5508, 1
  %5586 = icmp eq i32 %5585, 2
  br i1 %5586, label %5587, label %5505

; <label>:5587                                    ; preds = %5505
  %5588 = fsub fast float -0.000000e+00, %5504
  br label %5589

; <label>:5589                                    ; preds = %5589, %5587
  %5590 = phi float [ %5588, %5587 ], [ %5668, %5589 ]
  %5591 = phi float [ 6.000000e+00, %5587 ], [ %5656, %5589 ]
  %5592 = phi i32 [ 0, %5587 ], [ %5669, %5589 ]
  %5593 = sitofp i32 %5592 to float
  %5594 = fadd fast float %5593, %5439
  %5595 = fmul fast float %5594, 5.000000e-01
  %5596 = fmul fast float %5595, %5595
  %5597 = fmul fast float %5596, %5483
  %5598 = call float @dx.op.binary.f32(i32 36, float %5597, float 3.000000e+00)  ; FMin(a,b)
  %5599 = fadd fast float %5598, 1.000000e+00
  %5600 = fmul fast float %5596, %5460
  %5601 = fmul fast float %5596, %5461
  %5602 = fadd fast float %5600, %5415
  %5603 = fmul fast float %5490, %5602
  %5604 = fsub fast float %5450, %5603
  %5605 = fadd fast float %5601, %5416
  %5606 = fmul fast float %5491, %5605
  %5607 = fsub fast float %5451, %5606
  %5608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %5604, float %5607, float undef, float undef, i32 0, i32 0, i32 undef, float %5599)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5609 = extractvalue %dx.types.ResRet.f32 %5608, 0
  %5610 = fcmp fast ogt float %5609, -1.000000e+00
  %5611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5612 = extractvalue %dx.types.CBufRet.f32 %5611, 1
  %5613 = select i1 %5610, float %5612, float 1.000000e+00
  %5614 = fadd fast float %5609, 1.000000e+00
  %5615 = fmul fast float %5613, %5614
  %5616 = call float @dx.op.unary.f32(i32 6, float %5615)  ; FAbs(value)
  %5617 = call float @dx.op.unary.f32(i32 6, float %5616)  ; FAbs(value)
  %5618 = fmul fast float %5604, %5446
  %5619 = fmul fast float %5607, %5447
  %5620 = fsub fast float %5618, %5448
  %5621 = fsub fast float %5619, %5449
  %5622 = fmul fast float %5620, %5617
  %5623 = fmul fast float %5621, %5617
  %5624 = fsub fast float %5622, %5466
  %5625 = fsub fast float %5623, %5467
  %5626 = fsub fast float %5617, %5476
  %5627 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5625, float %5626, float %5624, float %5625, float %5626)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5625, float %5626, float %5431, float %5434, float %5437)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = fsub fast float -0.000000e+00, %5628
  %5630 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5625, float %5626, float %5473, float %5474, float %5475)  ; Dot3(ax,ay,az,bx,by,bz)
  %5631 = call float @dx.op.unary.f32(i32 25, float %5627)  ; Rsqrt(value)
  %5632 = fmul fast float %5631, %5630
  %5633 = bitcast float %5627 to i32
  %5634 = ashr i32 %5633, 1
  %5635 = add nsw i32 %5634, 532487669
  %5636 = bitcast i32 %5635 to float
  %5637 = fmul fast float %5636, 0x3FE5555640000000
  %5638 = fsub fast float 0x40000000C0000000, %5637
  %5639 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5640 = fmul fast float %5636, 0x3FCC71C780000000
  %5641 = fsub fast float 0x3FF55555A0000000, %5640
  %5642 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5643 = fmul fast float %5617, 0x3F947AE140000000
  %5644 = fadd fast float %5643, -1.000000e+00
  %5645 = call float @dx.op.unary.f32(i32 7, float %5644)  ; Saturate(value)
  %5646 = fsub fast float %5642, %5639
  %5647 = fmul fast float %5645, %5646
  %5648 = fadd fast float %5647, %5639
  %5649 = fmul fast float %5616, %86
  %5650 = fcmp fast ogt float %5649, 0.000000e+00
  %5651 = select i1 %5650, float %5648, float 0.000000e+00
  %5652 = fadd fast float %5632, 1.000000e+00
  %5653 = fmul fast float %5651, %5652
  %5654 = fadd fast float %5653, -1.000000e+00
  %5655 = fcmp fast ogt float %5654, %5590
  %5656 = select i1 %5655, float %5629, float %5591
  %5657 = fsub fast float %5629, %5656
  %5658 = fmul fast float %5657, 0x400AAAA4C0000000
  %5659 = fadd fast float %5658, 0xBFDFFFF900000000
  %5660 = call float @dx.op.unary.f32(i32 7, float %5659)  ; Saturate(value)
  %5661 = fmul fast float %5628, 0x401AAAB640000000
  %5662 = fadd fast float %5661, 0x3FF0000700000000
  %5663 = call float @dx.op.unary.f32(i32 7, float %5662)  ; Saturate(value)
  %5664 = fmul fast float %5660, 2.000000e+00
  %5665 = fmul fast float %5664, %5663
  %5666 = fsub fast float %5590, %5665
  %5667 = fcmp ole float %5654, %5666
  %5668 = select i1 %5667, float %5666, float %5654
  %5669 = add nuw nsw i32 %5592, 1
  %5670 = icmp eq i32 %5669, 2
  br i1 %5670, label %5671, label %5589

; <label>:5671                                    ; preds = %5589
  %5672 = fmul fast float %5475, %5492
  %5673 = fmul fast float %5475, %5490
  %5674 = fsub fast float -0.000000e+00, %5673
  %5675 = fmul fast float %5490, %5474
  %5676 = fmul fast float %5473, %5492
  %5677 = fsub fast float %5675, %5676
  %5678 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5434, float %5437, float %5672, float %5674, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5679 = fmul fast float %5678, %5672
  %5680 = fmul fast float %5678, %5674
  %5681 = fmul fast float %5678, %5677
  %5682 = fsub fast float %5431, %5679
  %5683 = fsub fast float %5434, %5680
  %5684 = fsub fast float %5437, %5681
  %5685 = fmul fast float %5682, %5682
  %5686 = fmul fast float %5683, %5683
  %5687 = fadd fast float %5685, %5686
  %5688 = fmul fast float %5684, %5684
  %5689 = fadd fast float %5687, %5688
  %5690 = call float @dx.op.unary.f32(i32 24, float %5689)  ; Sqrt(value)
  %5691 = call float @dx.op.dot3.f32(i32 55, float %5490, float %5492, float 0.000000e+00, float %5682, float %5683, float %5684)  ; Dot3(ax,ay,az,bx,by,bz)
  %5692 = call float @dx.op.dot3.f32(i32 55, float %5490, float %5492, float 0.000000e+00, float %5473, float %5474, float %5475)  ; Dot3(ax,ay,az,bx,by,bz)
  %5693 = fmul fast float %5692, %5473
  %5694 = fmul fast float %5692, %5474
  %5695 = fmul fast float %5692, %5475
  %5696 = call float @dx.op.dot3.f32(i32 55, float %5693, float %5694, float %5695, float %5682, float %5683, float %5684)  ; Dot3(ax,ay,az,bx,by,bz)
  %5697 = fcmp fast oge float %5691, %5696
  %5698 = fdiv fast float 1.000000e+00, %5690
  %5699 = call float @dx.op.dot3.f32(i32 55, float %5682, float %5683, float %5684, float %5473, float %5474, float %5475)  ; Dot3(ax,ay,az,bx,by,bz)
  %5700 = fmul fast float %5699, %5698
  %5701 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  %5702 = fmul fast float %5701, %5701
  %5703 = fsub fast float 1.000000e+00, %5702
  %5704 = bitcast float %5703 to i32
  %5705 = ashr i32 %5704, 1
  %5706 = add nsw i32 %5705, 532487669
  %5707 = bitcast i32 %5706 to float
  %5708 = call float @dx.op.unary.f32(i32 6, float %5701)  ; FAbs(value)
  %5709 = fmul fast float %5708, 0x3FC40AE960000000
  %5710 = fsub fast float 0x3FF921FB60000000, %5709
  %5711 = fsub fast float 1.000000e+00, %5708
  %5712 = bitcast float %5711 to i32
  %5713 = ashr i32 %5712, 1
  %5714 = add nsw i32 %5713, 532487669
  %5715 = bitcast i32 %5714 to float
  %5716 = fmul fast float %5715, %5710
  %5717 = fcmp fast oge float %5701, 0.000000e+00
  %5718 = fsub fast float 0x400921FB60000000, %5716
  %5719 = select i1 %5717, float %5716, float %5718
  %5720 = fsub fast float -0.000000e+00, %5707
  %5721 = select i1 %5697, float %5720, float %5707
  %5722 = fsub fast float -0.000000e+00, %5719
  %5723 = select i1 %5697, float %5722, float %5719
  %5724 = call float @dx.op.unary.f32(i32 6, float %5584)  ; FAbs(value)
  %5725 = fmul fast float %5724, 0x3FC40AE960000000
  %5726 = fsub fast float 0x3FF921FB60000000, %5725
  %5727 = fsub fast float 1.000000e+00, %5724
  %5728 = bitcast float %5727 to i32
  %5729 = ashr i32 %5728, 1
  %5730 = add nsw i32 %5729, 532487669
  %5731 = bitcast i32 %5730 to float
  %5732 = fmul fast float %5731, %5726
  %5733 = fcmp fast oge float %5584, 0.000000e+00
  %5734 = fsub fast float 0x400921FB60000000, %5732
  %5735 = select i1 %5733, float %5732, float %5734
  %5736 = call float @dx.op.unary.f32(i32 6, float %5668)  ; FAbs(value)
  %5737 = fmul fast float %5736, 0x3FC40AE960000000
  %5738 = fsub fast float 0x3FF921FB60000000, %5737
  %5739 = fsub fast float 1.000000e+00, %5736
  %5740 = bitcast float %5739 to i32
  %5741 = ashr i32 %5740, 1
  %5742 = add nsw i32 %5741, 532487669
  %5743 = bitcast i32 %5742 to float
  %5744 = fmul fast float %5743, %5738
  %5745 = fcmp fast oge float %5668, 0.000000e+00
  %5746 = fsub fast float 0x400921FB60000000, %5744
  %5747 = select i1 %5745, float %5744, float %5746
  %5748 = fsub fast float -0.000000e+00, %5723
  %5749 = fsub fast float %5748, %5735
  %5750 = call float @dx.op.binary.f32(i32 35, float %5749, float 0xBFF921FB60000000)  ; FMax(a,b)
  %5751 = call float @dx.op.binary.f32(i32 36, float %5750, float 0x3FF921FB60000000)  ; FMin(a,b)
  %5752 = fadd fast float %5723, %5751
  %5753 = fsub fast float %5747, %5723
  %5754 = call float @dx.op.binary.f32(i32 35, float %5753, float 0xBFF921FB60000000)  ; FMax(a,b)
  %5755 = call float @dx.op.binary.f32(i32 36, float %5754, float 0x3FF921FB60000000)  ; FMin(a,b)
  %5756 = fadd fast float %5723, %5755
  %5757 = fmul fast float %5752, 2.000000e+00
  %5758 = fsub fast float %5757, %5723
  %5759 = call float @dx.op.unary.f32(i32 12, float %5758)  ; Cos(value)
  %5760 = fsub fast float -0.000000e+00, %5759
  %5761 = fmul fast float %5756, 2.000000e+00
  %5762 = fsub fast float %5761, %5723
  %5763 = call float @dx.op.unary.f32(i32 12, float %5762)  ; Cos(value)
  %5764 = fmul fast float %5701, 2.000000e+00
  %5765 = fadd fast float %5756, %5752
  %5766 = fmul fast float %5721, %5765
  %5767 = fmul fast float %5766, 2.000000e+00
  %5768 = fsub fast float %5760, %5763
  %5769 = fadd fast float %5768, %5764
  %5770 = fadd fast float %5769, %5767
  %5771 = fmul fast float %5690, 2.500000e-01
  %5772 = fmul fast float %5771, %5770
  %5773 = fadd fast float %5772, %5486
  %5774 = add nuw nsw i32 %5485, 1
  %5775 = icmp eq i32 %5774, 2
  br i1 %5775, label %5776, label %5484

; <label>:5776                                    ; preds = %5671
  %5777 = fmul fast float %5773, 5.000000e-01
  %5778 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %5779 = call float @dx.op.unary.f32(i32 25, float %5778)  ; Rsqrt(value)
  %5780 = fmul fast float %5779, %153
  %5781 = fmul fast float %5779, %154
  %5782 = fmul fast float %5779, %155
  %5783 = fsub fast float -0.000000e+00, %5780
  %5784 = fsub fast float -0.000000e+00, %5781
  %5785 = fsub fast float -0.000000e+00, %5782
  %5786 = select i1 %214, float 0.000000e+00, float %5399
  %5787 = call float @dx.op.dot3.f32(i32 55, float %5403, float %5404, float %5405, float %5783, float %5784, float %5785)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5789 = call float @dx.op.dot3.f32(i32 55, float %5780, float %5781, float %5782, float %5403, float %5404, float %5405)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = fmul fast float %5789, 2.000000e+00
  %5791 = fmul fast float %5790, %5403
  %5792 = fmul fast float %5790, %5404
  %5793 = fmul fast float %5790, %5405
  %5794 = fsub fast float %5780, %5791
  %5795 = fsub fast float %5781, %5792
  %5796 = fsub fast float %5782, %5793
  %5797 = call float @dx.op.binary.f32(i32 36, float %5407, float %5777)  ; FMin(a,b)
  %5798 = fsub fast float 1.000000e+00, %5797
  %5799 = bitcast float %5798 to i32
  %5800 = ashr i32 %5799, 1
  %5801 = add nsw i32 %5800, 532487669
  %5802 = bitcast i32 %5801 to float
  %5803 = fsub fast float 1.000000e+00, %5406
  %5804 = call float @dx.op.binary.f32(i32 35, float %5803, float 0x3F847AE140000000)  ; FMax(a,b)
  %5805 = fmul fast float %5804, %5804
  %5806 = fmul fast float %5805, %5805
  %5807 = call float @dx.op.unary.f32(i32 7, float %5788)  ; Saturate(value)
  %5808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %43, float %5802, float %5806, float %5807, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5809 = extractvalue %dx.types.ResRet.f32 %5808, 0
  %5810 = fsub fast float 1.000000e+00, %5407
  %5811 = bitcast float %5810 to i32
  %5812 = sub nsw i32 2129859010, %5811
  %5813 = call float @dx.op.dot3.f32(i32 55, float %66, float %62, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5814 = fmul fast float %5813, 0x3FD20DD760000000
  %5815 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %5816 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5817 = fcmp fast oeq float %5816, 0.000000e+00
  %5818 = fcmp fast oeq float %5815, 0.000000e+00
  %5819 = or i1 %5818, %5817
  br i1 %5819, label %5849, label %5820

; <label>:5820                                    ; preds = %5776
  %5821 = fsub fast float -0.000000e+00, %69
  %5822 = fsub fast float -0.000000e+00, %67
  %5823 = call float @dx.op.unary.f32(i32 24, float %5816)  ; Sqrt(value)
  %5824 = fdiv fast float %5823, %5815
  %5825 = fcmp fast ogt float %5824, 0x3FFB6F8900000000
  %5826 = select i1 %5825, float 0x3FFB6F8900000000, float %5824
  %5827 = fmul fast float %5826, 0x3FE8A23460000000
  %5828 = call float @dx.op.unary.f32(i32 7, float %5827)  ; Saturate(value)
  %5829 = call float @dx.op.binary.f32(i32 35, float %5826, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5830 = fmul fast float %5828, %5815
  %5831 = fmul fast float %5829, 0x3FF279A740000000
  %5832 = fadd fast float %5831, -1.000000e+00
  %5833 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5822, float %68, float %5821, float %5822, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5834 = call float @dx.op.unary.f32(i32 25, float %5833)  ; Rsqrt(value)
  %5835 = fmul fast float %5834, %5821
  %5836 = fmul fast float %5834, %5822
  %5837 = fmul fast float %5834, %68
  %5838 = fmul fast float %5832, %5832
  %5839 = fsub fast float 1.000000e+00, %5838
  %5840 = fmul fast float %5829, 0x40005F8BE0000000
  %5841 = fsub fast float 0x400C5BF8A0000000, %5840
  %5842 = fdiv fast float %5830, %5841
  %5843 = fmul fast float %5842, 0x3FEE31C3C0000000
  %5844 = fmul fast float %5843, %5839
  %5845 = fmul fast float %5829, 0x3FDACB7480000000
  %5846 = fadd fast float %5845, 0xBFD7347680000000
  %5847 = fmul fast float %5846, %5842
  %5848 = fmul fast float %5847, %5839
  br label %5849

; <label>:5849                                    ; preds = %5820, %5776
  %5850 = phi float [ %5835, %5820 ], [ 0.000000e+00, %5776 ]
  %5851 = phi float [ %5836, %5820 ], [ 0.000000e+00, %5776 ]
  %5852 = phi float [ %5837, %5820 ], [ 0.000000e+00, %5776 ]
  %5853 = phi float [ %5844, %5820 ], [ 0.000000e+00, %5776 ]
  %5854 = phi float [ %5848, %5820 ], [ 0.000000e+00, %5776 ]
  %5855 = call float @dx.op.dot3.f32(i32 55, float %5850, float %5851, float %5852, float %5403, float %5404, float %5405)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = fmul fast float %5855, 0x3FDF454380000000
  %5857 = fmul fast float %5855, %5855
  %5858 = fmul fast float %5857, 0x3FEE471020000000
  %5859 = fadd fast float %5858, 0xBFD42F6020000000
  %5860 = fmul fast float %5815, 0x3FD20DD760000000
  %5861 = fmul fast float %5859, %5854
  %5862 = fadd fast float %5861, %5860
  %5863 = fmul fast float %5856, %5853
  %5864 = fadd fast float %5862, %5863
  %5865 = fsub fast float %5862, %5863
  %5866 = call float @dx.op.dot3.f32(i32 55, float %5850, float %5851, float %5852, float %5794, float %5795, float %5796)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = fmul fast float %5866, 0x3FDF454380000000
  %5868 = fmul fast float %5866, %5866
  %5869 = fmul fast float %5868, 0x3FEE471020000000
  %5870 = fadd fast float %5869, 0xBFD42F6020000000
  %5871 = call float @dx.op.dot3.f32(i32 55, float %5815, float %5853, float %5854, float 0x3FD20DD760000000, float %5867, float %5870)  ; Dot3(ax,ay,az,bx,by,bz)
  %5872 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %5873 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5874 = fcmp fast oeq float %5873, 0.000000e+00
  %5875 = fcmp fast oeq float %5872, 0.000000e+00
  %5876 = or i1 %5875, %5874
  br i1 %5876, label %5906, label %5877

; <label>:5877                                    ; preds = %5849
  %5878 = fsub fast float -0.000000e+00, %65
  %5879 = fsub fast float -0.000000e+00, %63
  %5880 = call float @dx.op.unary.f32(i32 24, float %5873)  ; Sqrt(value)
  %5881 = fdiv fast float %5880, %5872
  %5882 = fcmp fast ogt float %5881, 0x3FFB6F8900000000
  %5883 = select i1 %5882, float 0x3FFB6F8900000000, float %5881
  %5884 = fmul fast float %5883, 0x3FE8A23460000000
  %5885 = call float @dx.op.unary.f32(i32 7, float %5884)  ; Saturate(value)
  %5886 = call float @dx.op.binary.f32(i32 35, float %5883, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5887 = fmul fast float %5885, %5872
  %5888 = fmul fast float %5886, 0x3FF279A740000000
  %5889 = fadd fast float %5888, -1.000000e+00
  %5890 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %64, float %5878, float %5879, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5891 = call float @dx.op.unary.f32(i32 25, float %5890)  ; Rsqrt(value)
  %5892 = fmul fast float %5891, %5878
  %5893 = fmul fast float %5891, %5879
  %5894 = fmul fast float %5891, %64
  %5895 = fmul fast float %5889, %5889
  %5896 = fsub fast float 1.000000e+00, %5895
  %5897 = fmul fast float %5886, 0x40005F8BE0000000
  %5898 = fsub fast float 0x400C5BF8A0000000, %5897
  %5899 = fdiv fast float %5887, %5898
  %5900 = fmul fast float %5899, 0x3FEE31C3C0000000
  %5901 = fmul fast float %5900, %5896
  %5902 = fmul fast float %5886, 0x3FDACB7480000000
  %5903 = fadd fast float %5902, 0xBFD7347680000000
  %5904 = fmul fast float %5903, %5899
  %5905 = fmul fast float %5904, %5896
  br label %5906

; <label>:5906                                    ; preds = %5877, %5849
  %5907 = phi float [ %5892, %5877 ], [ 0.000000e+00, %5849 ]
  %5908 = phi float [ %5893, %5877 ], [ 0.000000e+00, %5849 ]
  %5909 = phi float [ %5894, %5877 ], [ 0.000000e+00, %5849 ]
  %5910 = phi float [ %5901, %5877 ], [ 0.000000e+00, %5849 ]
  %5911 = phi float [ %5905, %5877 ], [ 0.000000e+00, %5849 ]
  %5912 = call float @dx.op.dot3.f32(i32 55, float %5907, float %5908, float %5909, float %5403, float %5404, float %5405)  ; Dot3(ax,ay,az,bx,by,bz)
  %5913 = fmul fast float %5912, 0x3FDF454380000000
  %5914 = fmul fast float %5912, %5912
  %5915 = fmul fast float %5914, 0x3FEE471020000000
  %5916 = fadd fast float %5915, 0xBFD42F6020000000
  %5917 = fmul fast float %5872, 0x3FD20DD760000000
  %5918 = fmul fast float %5916, %5911
  %5919 = fadd fast float %5918, %5917
  %5920 = fmul fast float %5913, %5910
  %5921 = fadd fast float %5919, %5920
  %5922 = fsub fast float %5919, %5920
  %5923 = call float @dx.op.dot3.f32(i32 55, float %5907, float %5908, float %5909, float %5794, float %5795, float %5796)  ; Dot3(ax,ay,az,bx,by,bz)
  %5924 = fmul fast float %5923, 0x3FDF454380000000
  %5925 = fmul fast float %5923, %5923
  %5926 = fmul fast float %5925, 0x3FEE471020000000
  %5927 = fadd fast float %5926, 0xBFD42F6020000000
  %5928 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5910, float %5911, float 0x3FD20DD760000000, float %5924, float %5927)  ; Dot3(ax,ay,az,bx,by,bz)
  %5929 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5930 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5931 = fcmp fast oeq float %5930, 0.000000e+00
  %5932 = fcmp fast oeq float %5929, 0.000000e+00
  %5933 = or i1 %5932, %5931
  br i1 %5933, label %5963, label %5934

; <label>:5934                                    ; preds = %5906
  %5935 = fsub fast float -0.000000e+00, %61
  %5936 = fsub fast float -0.000000e+00, %59
  %5937 = call float @dx.op.unary.f32(i32 24, float %5930)  ; Sqrt(value)
  %5938 = fdiv fast float %5937, %5929
  %5939 = fcmp fast ogt float %5938, 0x3FFB6F8900000000
  %5940 = select i1 %5939, float 0x3FFB6F8900000000, float %5938
  %5941 = fmul fast float %5940, 0x3FE8A23460000000
  %5942 = call float @dx.op.unary.f32(i32 7, float %5941)  ; Saturate(value)
  %5943 = call float @dx.op.binary.f32(i32 35, float %5940, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5944 = fmul fast float %5942, %5929
  %5945 = fmul fast float %5943, 0x3FF279A740000000
  %5946 = fadd fast float %5945, -1.000000e+00
  %5947 = call float @dx.op.dot3.f32(i32 55, float %5935, float %5936, float %60, float %5935, float %5936, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5948 = call float @dx.op.unary.f32(i32 25, float %5947)  ; Rsqrt(value)
  %5949 = fmul fast float %5948, %5935
  %5950 = fmul fast float %5948, %5936
  %5951 = fmul fast float %5948, %60
  %5952 = fmul fast float %5946, %5946
  %5953 = fsub fast float 1.000000e+00, %5952
  %5954 = fmul fast float %5943, 0x40005F8BE0000000
  %5955 = fsub fast float 0x400C5BF8A0000000, %5954
  %5956 = fdiv fast float %5944, %5955
  %5957 = fmul fast float %5956, 0x3FEE31C3C0000000
  %5958 = fmul fast float %5957, %5953
  %5959 = fmul fast float %5943, 0x3FDACB7480000000
  %5960 = fadd fast float %5959, 0xBFD7347680000000
  %5961 = fmul fast float %5960, %5956
  %5962 = fmul fast float %5961, %5953
  br label %5963

; <label>:5963                                    ; preds = %5934, %5906
  %5964 = phi float [ %5949, %5934 ], [ 0.000000e+00, %5906 ]
  %5965 = phi float [ %5950, %5934 ], [ 0.000000e+00, %5906 ]
  %5966 = phi float [ %5951, %5934 ], [ 0.000000e+00, %5906 ]
  %5967 = phi float [ %5958, %5934 ], [ 0.000000e+00, %5906 ]
  %5968 = phi float [ %5962, %5934 ], [ 0.000000e+00, %5906 ]
  %5969 = call float @dx.op.dot3.f32(i32 55, float %5964, float %5965, float %5966, float %5403, float %5404, float %5405)  ; Dot3(ax,ay,az,bx,by,bz)
  %5970 = fmul fast float %5969, 0x3FDF454380000000
  %5971 = fmul fast float %5969, %5969
  %5972 = fmul fast float %5971, 0x3FEE471020000000
  %5973 = fadd fast float %5972, 0xBFD42F6020000000
  %5974 = fmul fast float %5929, 0x3FD20DD760000000
  %5975 = fmul fast float %5973, %5968
  %5976 = fadd fast float %5975, %5974
  %5977 = fmul fast float %5970, %5967
  %5978 = fadd fast float %5976, %5977
  %5979 = fsub fast float %5976, %5977
  %5980 = call float @dx.op.dot3.f32(i32 55, float %5964, float %5965, float %5966, float %5794, float %5795, float %5796)  ; Dot3(ax,ay,az,bx,by,bz)
  %5981 = fmul fast float %5980, 0x3FDF454380000000
  %5982 = fmul fast float %5980, %5980
  %5983 = fmul fast float %5982, 0x3FEE471020000000
  %5984 = fadd fast float %5983, 0xBFD42F6020000000
  %5985 = call float @dx.op.dot3.f32(i32 55, float %5929, float %5967, float %5968, float 0x3FD20DD760000000, float %5981, float %5984)  ; Dot3(ax,ay,az,bx,by,bz)
  %5986 = call float @dx.op.binary.f32(i32 35, float %5864, float 0.000000e+00)  ; FMax(a,b)
  %5987 = call float @dx.op.binary.f32(i32 35, float %5921, float 0.000000e+00)  ; FMax(a,b)
  %5988 = call float @dx.op.binary.f32(i32 35, float %5978, float 0.000000e+00)  ; FMax(a,b)
  %5989 = call float @dx.op.binary.f32(i32 35, float %5865, float 0.000000e+00)  ; FMax(a,b)
  %5990 = call float @dx.op.binary.f32(i32 35, float %5922, float 0.000000e+00)  ; FMax(a,b)
  %5991 = call float @dx.op.binary.f32(i32 35, float %5979, float 0.000000e+00)  ; FMax(a,b)
  %5992 = call float @dx.op.binary.f32(i32 35, float %5871, float 0.000000e+00)  ; FMax(a,b)
  %5993 = call float @dx.op.binary.f32(i32 35, float %5928, float 0.000000e+00)  ; FMax(a,b)
  %5994 = call float @dx.op.binary.f32(i32 35, float %5985, float 0.000000e+00)  ; FMax(a,b)
  %5995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5996 = extractvalue %dx.types.CBufRet.f32 %5995, 0
  %5997 = call float @dx.op.binary.f32(i32 36, float %5400, float %5996)  ; FMin(a,b)
  %5998 = fmul fast float %5997, %5798
  %5999 = fsub fast float 1.000000e+00, %5998
  %6000 = bitcast float %5999 to i32
  %6001 = sub nsw i32 2129859010, %6000
  %6002 = bitcast i32 %6001 to float
  %6003 = call float @dx.op.binary.f32(i32 36, float %5401, float %5996)  ; FMin(a,b)
  %6004 = fmul fast float %6003, %5798
  %6005 = fsub fast float 1.000000e+00, %6004
  %6006 = bitcast float %6005 to i32
  %6007 = sub nsw i32 2129859010, %6006
  %6008 = bitcast i32 %6007 to float
  %6009 = call float @dx.op.binary.f32(i32 36, float %5402, float %5996)  ; FMin(a,b)
  %6010 = fmul fast float %6009, %5798
  %6011 = fsub fast float 1.000000e+00, %6010
  %6012 = bitcast float %6011 to i32
  %6013 = sub nsw i32 2129859010, %6012
  %6014 = bitcast i32 %6013 to float
  %6015 = fmul fast float %5986, %5797
  %6016 = fmul fast float %6015, %6002
  %6017 = fmul fast float %5987, %5797
  %6018 = fmul fast float %6017, %6008
  %6019 = fmul fast float %5988, %5797
  %6020 = fmul fast float %6019, %6014
  %6021 = call float @dx.op.binary.f32(i32 36, float %5397, float %5996)  ; FMin(a,b)
  %6022 = fmul fast float %6021, %5798
  %6023 = fsub fast float 1.000000e+00, %6022
  %6024 = bitcast float %6023 to i32
  %6025 = sub nsw i32 2129859010, %6024
  %6026 = bitcast i32 %6025 to float
  %6027 = call float @dx.op.binary.f32(i32 36, float %5398, float %5996)  ; FMin(a,b)
  %6028 = fmul fast float %6027, %5798
  %6029 = fsub fast float 1.000000e+00, %6028
  %6030 = bitcast float %6029 to i32
  %6031 = sub nsw i32 2129859010, %6030
  %6032 = bitcast i32 %6031 to float
  %6033 = call float @dx.op.binary.f32(i32 36, float %5786, float %5996)  ; FMin(a,b)
  %6034 = fmul fast float %6033, %5798
  %6035 = fsub fast float 1.000000e+00, %6034
  %6036 = bitcast float %6035 to i32
  %6037 = sub nsw i32 2129859010, %6036
  %6038 = bitcast i32 %6037 to float
  %6039 = fmul fast float %5992, %5797
  %6040 = fmul fast float %6039, %6026
  %6041 = fmul fast float %5993, %5797
  %6042 = fmul fast float %6041, %6032
  %6043 = fmul fast float %5994, %5797
  %6044 = fmul fast float %6043, %6038
  %6045 = call float @dx.op.dot3.f32(i32 55, float %6016, float %6018, float %6020, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6046 = select i1 %214, float 0.000000e+00, float %6016
  %6047 = select i1 %214, float %6045, float %6018
  %6048 = select i1 %214, float 0.000000e+00, float %6020
  %6049 = call float @dx.op.dot3.f32(i32 55, float %5989, float %5990, float %5991, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6050 = select i1 %214, float 0.000000e+00, float %5989
  %6051 = select i1 %214, float %6049, float %5990
  %6052 = select i1 %214, float 0.000000e+00, float %5991
  %6053 = call float @dx.op.dot3.f32(i32 55, float %6040, float %6042, float %6044, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6054 = select i1 %214, float 0.000000e+00, float %6040
  %6055 = select i1 %214, float %6053, float %6042
  %6056 = select i1 %214, float 0.000000e+00, float %6044
  %6057 = fmul fast float %4418, %4418
  %6058 = call float @dx.op.unary.f32(i32 7, float %6057)  ; Saturate(value)
  %6059 = fmul fast float %5788, 9.843750e-01
  %6060 = fmul fast float %5406, 9.843750e-01
  %6061 = fadd fast float %6059, 7.812500e-03
  %6062 = fadd fast float %6060, 7.812500e-03
  %6063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %6061, float %6062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6064 = extractvalue %dx.types.ResRet.f32 %6063, 0
  %6065 = extractvalue %dx.types.ResRet.f32 %6063, 1
  %6066 = extractvalue %dx.types.ResRet.f32 %6063, 2
  %6067 = extractvalue %dx.types.ResRet.f32 %6063, 3
  %6068 = fsub fast float 1.000000e+00, %6058
  %6069 = fsub fast float %6066, %6064
  %6070 = fsub fast float %6067, %6065
  %6071 = fmul fast float %6069, %6068
  %6072 = fmul fast float %6070, %6068
  %6073 = fadd fast float %6071, %6064
  %6074 = fadd fast float %6072, %6065
  %6075 = fmul fast float %6073, %5397
  %6076 = fmul fast float %6073, %5398
  %6077 = fmul fast float %6073, %5786
  %6078 = fadd fast float %6075, %6074
  %6079 = fadd fast float %6076, %6074
  %6080 = fadd fast float %6077, %6074
  %6081 = fcmp fast ogt float %5070, 0.000000e+00
  br i1 %6081, label %6082, label %6108

; <label>:6082                                    ; preds = %5963
  %6083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5070, float %5788, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6084 = extractvalue %dx.types.ResRet.f32 %6083, 0
  %6085 = extractvalue %dx.types.ResRet.f32 %6083, 1
  %6086 = extractvalue %dx.types.ResRet.f32 %6083, 2
  %6087 = fadd fast float %6084, -5.000000e-01
  %6088 = fadd fast float %6085, -5.000000e-01
  %6089 = fadd fast float %6086, -5.000000e-01
  %6090 = fsub fast float 1.000000e+00, %5397
  %6091 = fsub fast float 1.000000e+00, %5398
  %6092 = fsub fast float 1.000000e+00, %5786
  %6093 = fmul fast float %5397, 4.000000e+00
  %6094 = fmul fast float %6093, %6090
  %6095 = fmul fast float %6094, %6087
  %6096 = fmul fast float %5398, 4.000000e+00
  %6097 = fmul fast float %6096, %6091
  %6098 = fmul fast float %6097, %6088
  %6099 = fmul fast float %5786, 4.000000e+00
  %6100 = fmul fast float %6099, %6092
  %6101 = fmul fast float %6100, %6089
  %6102 = fadd fast float %6095, %6078
  %6103 = fadd fast float %6098, %6079
  %6104 = fadd fast float %6101, %6080
  %6105 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  %6106 = call float @dx.op.unary.f32(i32 7, float %6103)  ; Saturate(value)
  %6107 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  br label %6108

; <label>:6108                                    ; preds = %6082, %5963
  %6109 = phi float [ %6105, %6082 ], [ %6078, %5963 ]
  %6110 = phi float [ %6106, %6082 ], [ %6079, %5963 ]
  %6111 = phi float [ %6107, %6082 ], [ %6080, %5963 ]
  %6112 = call float @dx.op.binary.f32(i32 35, float %6110, float %6111)  ; FMax(a,b)
  %6113 = call float @dx.op.binary.f32(i32 35, float %6109, float %6112)  ; FMax(a,b)
  %6114 = fsub fast float 1.000000e+00, %6113
  %6115 = fmul fast float %6113, %5406
  %6116 = fadd fast float %6115, %5406
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 2
  %6119 = extractvalue %dx.types.CBufRet.f32 %6117, 3
  %6120 = fmul fast float %6116, %6118
  %6121 = fadd fast float %6120, %6119
  %6122 = call float @dx.op.unary.f32(i32 7, float %6121)  ; Saturate(value)
  %6123 = fsub fast float 1.000000e+00, %5809
  %6124 = fadd fast float %6123, %6122
  %6125 = call float @dx.op.unary.f32(i32 7, float %6124)  ; Saturate(value)
  %6126 = fcmp fast olt float %6125, 1.000000e+00
  br i1 %6126, label %6127, label %6681

; <label>:6127                                    ; preds = %6108
  %6128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6129 = extractvalue %dx.types.CBufRet.f32 %6128, 2
  %6130 = extractvalue %dx.types.CBufRet.f32 %6128, 3
  %6131 = fmul fast float %6129, %98
  %6132 = fmul fast float %6130, %99
  %6133 = fptoui float %6131 to i32
  %6134 = fptoui float %6132 to i32
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 0
  %6137 = extractvalue %dx.types.CBufRet.f32 %6135, 2
  %6138 = extractvalue %dx.types.CBufRet.f32 %6135, 3
  %6139 = fadd fast float %86, -4.000000e+00
  %6140 = call float @dx.op.binary.f32(i32 35, float %6139, float 0.000000e+00)  ; FMax(a,b)
  %6141 = fadd fast float %6140, %6136
  %6142 = fmul fast float %6141, %6137
  %6143 = call float @dx.op.unary.f32(i32 23, float %6142)  ; Log(value)
  %6144 = fmul fast float %6143, %6138
  %6145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6146 = extractvalue %dx.types.CBufRet.f32 %6145, 2
  %6147 = fmul fast float %6144, %6146
  %6148 = call float @dx.op.unary.f32(i32 7, float %6147)  ; Saturate(value)
  %6149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6150 = extractvalue %dx.types.CBufRet.i32 %6149, 1
  %6151 = add i32 %6150, -1
  %6152 = uitofp i32 %6150 to float
  %6153 = fmul fast float %6152, %6148
  %6154 = fptoui float %6153 to i32
  %6155 = call i32 @dx.op.binary.i32(i32 40, i32 %6154, i32 %6151)  ; UMin(a,b)
  %6156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6157 = extractvalue %dx.types.CBufRet.i32 %6156, 2
  %6158 = extractvalue %dx.types.CBufRet.i32 %6156, 3
  %6159 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6134, i32 %6157, i32 %6133)  ; UMad(a,b,c)
  %6160 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6155, i32 %6158, i32 %6159)  ; UMad(a,b,c)
  %6161 = call float @dx.op.binary.f32(i32 35, float %86, float 0.000000e+00)  ; FMax(a,b)
  %6162 = fptoui float %6161 to i32
  %6163 = lshr i32 %6162, 5
  %6164 = call i32 @dx.op.binary.i32(i32 40, i32 %6163, i32 8191)  ; UMin(a,b)
  br i1 false, label %6165, label %6172

; <label>:6165                                    ; preds = %6127
  %6166 = fadd fast float 0.000000e+00, %5796
  %6167 = call float @dx.op.dot3.f32(i32 55, float %5794, float %5795, float %6166, float %5794, float %5795, float %6166)  ; Dot3(ax,ay,az,bx,by,bz)
  %6168 = call float @dx.op.unary.f32(i32 25, float %6167)  ; Rsqrt(value)
  %6169 = fmul fast float %6168, %5794
  %6170 = fmul fast float %6168, %5795
  %6171 = fmul fast float %6166, %6168
  br label %6172

; <label>:6172                                    ; preds = %6165, %6127
  %6173 = phi float [ %6169, %6165 ], [ %5794, %6127 ]
  %6174 = phi float [ %6170, %6165 ], [ %5795, %6127 ]
  %6175 = phi float [ %6171, %6165 ], [ %5796, %6127 ]
  %6176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.i32 %6176, 2
  %6178 = add nsw i32 %6177, -1
  %6179 = call i32 @dx.op.binary.i32(i32 37, i32 %6178, i32 0)  ; IMax(a,b)
  %6180 = shl i32 %6164, 2
  %6181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6180, i32 undef)  ; BufferLoad(srv,index,wot)
  %6182 = extractvalue %dx.types.ResRet.i32 %6181, 0
  %6183 = lshr i32 %6182, 16
  %6184 = and i32 %6182, 65535
  %6185 = lshr i32 %6182, 21
  %6186 = lshr i32 %6184, 5
  %6187 = call i32 @dx.op.binary.i32(i32 40, i32 %6186, i32 %6179)  ; UMin(a,b)
  %6188 = icmp ugt i32 %6185, %6187
  br i1 %6188, label %6569, label %6189

; <label>:6189                                    ; preds = %6172
  br label %6190

; <label>:6190                                    ; preds = %6558, %6189
  %6191 = phi float [ %6559, %6558 ], [ 0.000000e+00, %6189 ]
  %6192 = phi float [ %6560, %6558 ], [ 0.000000e+00, %6189 ]
  %6193 = phi float [ %6561, %6558 ], [ 0.000000e+00, %6189 ]
  %6194 = phi float [ %6562, %6558 ], [ 1.000000e+00, %6189 ]
  %6195 = phi i32 [ %6566, %6558 ], [ %6185, %6189 ]
  %6196 = phi float [ %6563, %6558 ], [ 0.000000e+00, %6189 ]
  %6197 = phi float [ %6564, %6558 ], [ 0.000000e+00, %6189 ]
  %6198 = phi float [ %6565, %6558 ], [ 0.000000e+00, %6189 ]
  %6199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6200 = extractvalue %dx.types.CBufRet.i32 %6199, 2
  %6201 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6160, i32 %6200, i32 %6195)  ; UMad(a,b,c)
  %6202 = shl i32 %6201, 2
  %6203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6202, i32 undef)  ; BufferLoad(srv,index,wot)
  %6204 = extractvalue %dx.types.ResRet.i32 %6203, 0
  %6205 = shl i32 %6195, 5
  %6206 = sub nsw i32 %6183, %6205
  %6207 = call i32 @dx.op.binary.i32(i32 37, i32 %6206, i32 0)  ; IMax(a,b)
  %6208 = call i32 @dx.op.binary.i32(i32 38, i32 %6207, i32 31)  ; IMin(a,b)
  %6209 = sub nsw i32 1, %6183
  %6210 = add nsw i32 %6209, %6184
  %6211 = call i32 @dx.op.binary.i32(i32 37, i32 %6210, i32 0)  ; IMax(a,b)
  %6212 = call i32 @dx.op.binary.i32(i32 38, i32 %6211, i32 32)  ; IMin(a,b)
  %6213 = and i32 %6212, 31
  %6214 = shl i32 -1, %6213
  %6215 = xor i32 %6214, -1
  %6216 = and i32 %6208, 31
  %6217 = shl i32 %6215, %6216
  %6218 = icmp eq i32 %6212, 32
  %6219 = select i1 %6218, i32 -1, i32 %6217
  %6220 = and i32 %6219, %6204
  %6221 = icmp eq i32 %6220, 0
  br i1 %6221, label %6558, label %6222

; <label>:6222                                    ; preds = %6190
  br label %6223

; <label>:6223                                    ; preds = %6332, %6222
  %6224 = phi float [ %6333, %6332 ], [ %6191, %6222 ]
  %6225 = phi float [ %6334, %6332 ], [ %6192, %6222 ]
  %6226 = phi float [ %6335, %6332 ], [ %6193, %6222 ]
  %6227 = phi float [ %6336, %6332 ], [ %6194, %6222 ]
  %6228 = phi i32 [ %6236, %6332 ], [ %6220, %6222 ]
  %6229 = phi float [ %6337, %6332 ], [ %6196, %6222 ]
  %6230 = phi float [ %6338, %6332 ], [ %6197, %6222 ]
  %6231 = phi float [ %6339, %6332 ], [ %6198, %6222 ]
  %6232 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6228)  ; FirstbitLo(value)
  %6233 = add i32 %6232, %6205
  %6234 = and i32 %6232, 31
  %6235 = shl i32 1, %6234
  %6236 = xor i32 %6235, %6228
  %6237 = mul i32 %6233, 72
  %6238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6237, i32 undef)  ; BufferLoad(srv,index,wot)
  %6239 = extractvalue %dx.types.ResRet.f32 %6238, 0
  %6240 = extractvalue %dx.types.ResRet.f32 %6238, 1
  %6241 = extractvalue %dx.types.ResRet.f32 %6238, 2
  %6242 = add i32 %6237, 12
  %6243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %6242, i32 undef)  ; BufferLoad(srv,index,wot)
  %6244 = extractvalue %dx.types.ResRet.i32 %6243, 0
  %6245 = add i32 %6237, 16
  %6246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6245, i32 undef)  ; BufferLoad(srv,index,wot)
  %6247 = extractvalue %dx.types.ResRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.ResRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.ResRet.f32 %6246, 2
  %6250 = add i32 %6237, 28
  %6251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6250, i32 undef)  ; BufferLoad(srv,index,wot)
  %6252 = extractvalue %dx.types.ResRet.f32 %6251, 0
  %6253 = add i32 %6237, 32
  %6254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6253, i32 undef)  ; BufferLoad(srv,index,wot)
  %6255 = extractvalue %dx.types.ResRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.ResRet.f32 %6254, 1
  %6257 = extractvalue %dx.types.ResRet.f32 %6254, 2
  %6258 = extractvalue %dx.types.ResRet.f32 %6254, 3
  %6259 = add i32 %6237, 48
  %6260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6259, i32 undef)  ; BufferLoad(srv,index,wot)
  %6261 = extractvalue %dx.types.ResRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.ResRet.f32 %6260, 1
  %6263 = add i32 %6237, 56
  %6264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6263, i32 undef)  ; BufferLoad(srv,index,wot)
  %6265 = extractvalue %dx.types.ResRet.f32 %6264, 0
  %6266 = extractvalue %dx.types.ResRet.f32 %6264, 1
  %6267 = add i32 %6237, 64
  %6268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6267, i32 undef)  ; BufferLoad(srv,index,wot)
  %6269 = extractvalue %dx.types.ResRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.ResRet.f32 %6268, 1
  %6271 = mul i32 %6233, 60
  %6272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6271, i32 undef)  ; BufferLoad(srv,index,wot)
  %6273 = extractvalue %dx.types.ResRet.f32 %6272, 0
  %6274 = extractvalue %dx.types.ResRet.f32 %6272, 1
  %6275 = extractvalue %dx.types.ResRet.f32 %6272, 2
  %6276 = add i32 %6271, 12
  %6277 = add i32 %6271, 48
  %6278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6277, i32 undef)  ; BufferLoad(srv,index,wot)
  %6279 = extractvalue %dx.types.ResRet.f32 %6278, 0
  %6280 = extractvalue %dx.types.ResRet.f32 %6278, 1
  %6281 = extractvalue %dx.types.ResRet.f32 %6278, 2
  %6282 = and i32 %6244, 32767
  %6283 = bitcast float %6239 to i32
  %6284 = icmp eq i32 %6283, -1
  %6285 = bitcast float %6240 to i32
  %6286 = and i32 %6244, 32768
  %6287 = icmp ne i32 %6286, 0
  %6288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6289 = extractvalue %dx.types.CBufRet.f32 %6288, 0
  %6290 = extractvalue %dx.types.CBufRet.f32 %6288, 1
  %6291 = extractvalue %dx.types.CBufRet.f32 %6288, 2
  %6292 = fsub fast float %6273, %6289
  %6293 = fsub fast float %6274, %6290
  %6294 = fsub fast float %6275, %6291
  %6295 = fsub fast float %153, %6292
  %6296 = fsub fast float %154, %6293
  %6297 = fsub fast float %155, %6294
  %6298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6276, i32 undef)  ; BufferLoad(srv,index,wot)
  %6299 = extractvalue %dx.types.ResRet.f32 %6298, 0
  %6300 = extractvalue %dx.types.ResRet.f32 %6298, 1
  %6301 = extractvalue %dx.types.ResRet.f32 %6298, 2
  %6302 = call float @dx.op.dot3.f32(i32 55, float %6295, float %6296, float %6297, float %6299, float %6300, float %6301)  ; Dot3(ax,ay,az,bx,by,bz)
  %6303 = add i32 %6271, 24
  %6304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6303, i32 undef)  ; BufferLoad(srv,index,wot)
  %6305 = extractvalue %dx.types.ResRet.f32 %6304, 0
  %6306 = extractvalue %dx.types.ResRet.f32 %6304, 1
  %6307 = extractvalue %dx.types.ResRet.f32 %6304, 2
  %6308 = call float @dx.op.dot3.f32(i32 55, float %6295, float %6296, float %6297, float %6305, float %6306, float %6307)  ; Dot3(ax,ay,az,bx,by,bz)
  %6309 = add i32 %6271, 36
  %6310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6309, i32 undef)  ; BufferLoad(srv,index,wot)
  %6311 = extractvalue %dx.types.ResRet.f32 %6310, 0
  %6312 = extractvalue %dx.types.ResRet.f32 %6310, 1
  %6313 = extractvalue %dx.types.ResRet.f32 %6310, 2
  %6314 = call float @dx.op.dot3.f32(i32 55, float %6295, float %6296, float %6297, float %6311, float %6312, float %6313)  ; Dot3(ax,ay,az,bx,by,bz)
  %6315 = call float @dx.op.unary.f32(i32 6, float %6302)  ; FAbs(value)
  %6316 = call float @dx.op.unary.f32(i32 6, float %6308)  ; FAbs(value)
  %6317 = call float @dx.op.unary.f32(i32 6, float %6314)  ; FAbs(value)
  %6318 = fsub fast float %6279, %6315
  %6319 = fsub fast float %6280, %6316
  %6320 = fsub fast float %6281, %6317
  %6321 = fmul fast float %6318, %6247
  %6322 = fmul fast float %6319, %6248
  %6323 = fmul fast float %6320, %6249
  %6324 = call float @dx.op.binary.f32(i32 36, float %6322, float %6323)  ; FMin(a,b)
  %6325 = call float @dx.op.binary.f32(i32 36, float %6321, float %6324)  ; FMin(a,b)
  %6326 = call float @dx.op.unary.f32(i32 7, float %6325)  ; Saturate(value)
  %6327 = call float @dx.op.binary.f32(i32 36, float %6227, float %6326)  ; FMin(a,b)
  %6328 = uitofp i1 %6287 to float
  %6329 = fsub fast float 1.000000e+00, %6328
  %6330 = fmul fast float %6327, %6329
  %6331 = fcmp fast ogt float %6330, 0.000000e+00
  br i1 %6331, label %6341, label %6332

; <label>:6332                                    ; preds = %6483, %6223
  %6333 = phi float [ %6547, %6483 ], [ %6224, %6223 ]
  %6334 = phi float [ %6548, %6483 ], [ %6225, %6223 ]
  %6335 = phi float [ %6549, %6483 ], [ %6226, %6223 ]
  %6336 = phi float [ %6556, %6483 ], [ %6227, %6223 ]
  %6337 = phi float [ %6553, %6483 ], [ %6229, %6223 ]
  %6338 = phi float [ %6554, %6483 ], [ %6230, %6223 ]
  %6339 = phi float [ %6555, %6483 ], [ %6231, %6223 ]
  %6340 = icmp eq i32 %6228, %6235
  br i1 %6340, label %6557, label %6223

; <label>:6341                                    ; preds = %6223
  br i1 %6284, label %6399, label %6342

; <label>:6342                                    ; preds = %6341
  %6343 = fsub fast float -0.000000e+00, %6299
  %6344 = fsub fast float -0.000000e+00, %6300
  %6345 = fsub fast float -0.000000e+00, %6301
  %6346 = call float @dx.op.dot3.f32(i32 55, float %6173, float %6174, float %6175, float %6343, float %6344, float %6345)  ; Dot3(ax,ay,az,bx,by,bz)
  %6347 = fsub fast float -0.000000e+00, %6346
  %6348 = call float @dx.op.dot3.f32(i32 55, float %6295, float %6296, float %6297, float %6343, float %6344, float %6345)  ; Dot3(ax,ay,az,bx,by,bz)
  %6349 = fadd fast float %6348, %6262
  %6350 = fadd fast float %6261, %6348
  %6351 = fsub fast float -0.000000e+00, %6350
  %6352 = fcmp ogt float %6346, -0.000000e+00
  %6353 = select i1 %6352, float %6351, float %6349
  %6354 = call float @dx.op.unary.f32(i32 6, float %6347)  ; FAbs(value)
  %6355 = fdiv fast float 1.000000e+00, %6354
  %6356 = fmul fast float %6353, %6355
  %6357 = call float @dx.op.binary.f32(i32 35, float %6356, float 0.000000e+00)  ; FMax(a,b)
  %6358 = fsub fast float -0.000000e+00, %6305
  %6359 = fsub fast float -0.000000e+00, %6306
  %6360 = fsub fast float -0.000000e+00, %6307
  %6361 = call float @dx.op.dot3.f32(i32 55, float %6173, float %6174, float %6175, float %6358, float %6359, float %6360)  ; Dot3(ax,ay,az,bx,by,bz)
  %6362 = fsub fast float -0.000000e+00, %6361
  %6363 = call float @dx.op.dot3.f32(i32 55, float %6295, float %6296, float %6297, float %6358, float %6359, float %6360)  ; Dot3(ax,ay,az,bx,by,bz)
  %6364 = fadd fast float %6363, %6266
  %6365 = fadd fast float %6265, %6363
  %6366 = fsub fast float -0.000000e+00, %6365
  %6367 = fcmp ogt float %6361, -0.000000e+00
  %6368 = select i1 %6367, float %6366, float %6364
  %6369 = call float @dx.op.unary.f32(i32 6, float %6362)  ; FAbs(value)
  %6370 = fdiv fast float 1.000000e+00, %6369
  %6371 = fmul fast float %6368, %6370
  %6372 = call float @dx.op.binary.f32(i32 35, float %6371, float 0.000000e+00)  ; FMax(a,b)
  %6373 = fsub fast float -0.000000e+00, %6311
  %6374 = fsub fast float -0.000000e+00, %6312
  %6375 = fsub fast float -0.000000e+00, %6313
  %6376 = call float @dx.op.dot3.f32(i32 55, float %6173, float %6174, float %6175, float %6373, float %6374, float %6375)  ; Dot3(ax,ay,az,bx,by,bz)
  %6377 = fsub fast float -0.000000e+00, %6376
  %6378 = call float @dx.op.dot3.f32(i32 55, float %6295, float %6296, float %6297, float %6373, float %6374, float %6375)  ; Dot3(ax,ay,az,bx,by,bz)
  %6379 = fadd fast float %6378, %6270
  %6380 = fadd fast float %6269, %6378
  %6381 = fsub fast float -0.000000e+00, %6380
  %6382 = fcmp ogt float %6376, -0.000000e+00
  %6383 = select i1 %6382, float %6381, float %6379
  %6384 = call float @dx.op.unary.f32(i32 6, float %6377)  ; FAbs(value)
  %6385 = fdiv fast float 1.000000e+00, %6384
  %6386 = fmul fast float %6383, %6385
  %6387 = call float @dx.op.binary.f32(i32 35, float %6386, float 0.000000e+00)  ; FMax(a,b)
  %6388 = call float @dx.op.binary.f32(i32 36, float %6372, float %6387)  ; FMin(a,b)
  %6389 = call float @dx.op.binary.f32(i32 36, float %6357, float %6388)  ; FMin(a,b)
  %6390 = fmul fast float %6389, %6173
  %6391 = fmul fast float %6389, %6174
  %6392 = fmul fast float %6389, %6175
  %6393 = fadd fast float %6390, %153
  %6394 = fadd fast float %6391, %154
  %6395 = fadd fast float %6392, %155
  %6396 = fsub fast float %6393, %6239
  %6397 = fsub fast float %6394, %6240
  %6398 = fsub fast float %6395, %6241
  br label %6406

; <label>:6399                                    ; preds = %6341
  %6400 = fmul fast float %6173, 8.096000e+03
  %6401 = fmul fast float %6174, 8.096000e+03
  %6402 = fmul fast float %6175, 8.096000e+03
  %6403 = fadd fast float %6400, %153
  %6404 = fadd fast float %6401, %154
  %6405 = fadd fast float %6402, %155
  br label %6406

; <label>:6406                                    ; preds = %6399, %6342
  %6407 = phi float [ %6173, %6399 ], [ %6396, %6342 ]
  %6408 = phi float [ %6174, %6399 ], [ %6397, %6342 ]
  %6409 = phi float [ %6175, %6399 ], [ %6398, %6342 ]
  %6410 = phi float [ %6403, %6399 ], [ %6393, %6342 ]
  %6411 = phi float [ %6404, %6399 ], [ %6394, %6342 ]
  %6412 = phi float [ %6405, %6399 ], [ %6395, %6342 ]
  %6413 = fcmp fast olt float %6258, 1.000000e+00
  br i1 %6413, label %6414, label %6445, !dx.controlflow.hints !86

; <label>:6414                                    ; preds = %6406
  %6415 = fmul fast float %6409, %6256
  %6416 = fmul fast float %6408, %6257
  %6417 = fsub fast float %6415, %6416
  %6418 = fmul fast float %6407, %6257
  %6419 = fmul fast float %6409, %6255
  %6420 = fsub fast float %6418, %6419
  %6421 = fmul fast float %6408, %6255
  %6422 = fmul fast float %6407, %6256
  %6423 = fsub fast float %6421, %6422
  %6424 = fmul fast float %6417, 2.000000e+00
  %6425 = fmul fast float %6420, 2.000000e+00
  %6426 = fmul fast float %6423, 2.000000e+00
  %6427 = fmul fast float %6424, %6258
  %6428 = fmul fast float %6425, %6258
  %6429 = fmul fast float %6426, %6258
  %6430 = fmul fast float %6426, %6256
  %6431 = fmul fast float %6425, %6257
  %6432 = fmul fast float %6424, %6257
  %6433 = fmul fast float %6426, %6255
  %6434 = fmul fast float %6425, %6255
  %6435 = fmul fast float %6424, %6256
  %6436 = fadd fast float %6430, %6407
  %6437 = fadd fast float %6436, %6427
  %6438 = fsub fast float %6437, %6431
  %6439 = fsub fast float %6408, %6433
  %6440 = fadd fast float %6439, %6428
  %6441 = fadd fast float %6440, %6432
  %6442 = fadd fast float %6429, %6409
  %6443 = fsub fast float %6442, %6435
  %6444 = fadd fast float %6443, %6434
  br label %6445

; <label>:6445                                    ; preds = %6414, %6406
  %6446 = phi float [ %6438, %6414 ], [ %6407, %6406 ]
  %6447 = phi float [ %6441, %6414 ], [ %6408, %6406 ]
  %6448 = phi float [ %6444, %6414 ], [ %6409, %6406 ]
  br i1 %6284, label %6480, label %6449

; <label>:6449                                    ; preds = %6445
  %6450 = fmul fast float %5406, 0x400187C840000000
  %6451 = fadd fast float %6450, 0xC00EFC2120000000
  %6452 = fmul fast float %6451, %5406
  %6453 = fadd fast float %6452, 0x3FE5D16340000000
  %6454 = fmul fast float %6453, %5406
  %6455 = fadd fast float %6454, 1.000000e+00
  %6456 = call float @dx.op.unary.f32(i32 7, float %6455)  ; Saturate(value)
  %6457 = fsub fast float %6410, %153
  %6458 = fsub fast float %6411, %154
  %6459 = fsub fast float %6412, %155
  %6460 = fsub fast float %6410, %6239
  %6461 = fsub fast float %6411, %6240
  %6462 = fsub fast float %6412, %6241
  %6463 = call float @dx.op.dot3.f32(i32 55, float %6457, float %6458, float %6459, float %6457, float %6458, float %6459)  ; Dot3(ax,ay,az,bx,by,bz)
  %6464 = call float @dx.op.dot3.f32(i32 55, float %6460, float %6461, float %6462, float %6460, float %6461, float %6462)  ; Dot3(ax,ay,az,bx,by,bz)
  %6465 = fadd fast float %6464, 0x3EE4F8B580000000
  %6466 = fdiv fast float %6463, %6465
  %6467 = bitcast float %6466 to i32
  %6468 = ashr i32 %6467, 1
  %6469 = add nsw i32 %6468, 532487669
  %6470 = bitcast i32 %6469 to float
  %6471 = fmul fast float %6470, %6456
  %6472 = call float @dx.op.unary.f32(i32 7, float %6471)  ; Saturate(value)
  %6473 = fmul fast float %6472, 0x4009981AE0000000
  %6474 = fsub fast float 0x40111BBD80000000, %6473
  %6475 = fmul fast float %6474, %6472
  %6476 = fadd fast float %6475, 0xC0009F6020000000
  %6477 = fmul fast float %6476, %6472
  %6478 = fadd fast float %6477, 1.000000e+00
  %6479 = call float @dx.op.unary.f32(i32 7, float %6478)  ; Saturate(value)
  br label %6483

; <label>:6480                                    ; preds = %6445
  %6481 = icmp ne i32 %6285, -1
  %6482 = zext i1 %6481 to i32
  br label %6483

; <label>:6483                                    ; preds = %6480, %6449
  %6484 = phi float [ %5406, %6480 ], [ %6479, %6449 ]
  %6485 = phi i32 [ %6482, %6480 ], [ 0, %6449 ]
  %6486 = fmul float %6484, 5.000000e+00
  %6487 = fsub float 5.000000e+00, %6486
  %6488 = icmp ne i32 %6485, 0
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 3
  %6491 = fadd fast float %6490, %6487
  %6492 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6491)  ; FMax(a,b)
  %6493 = call float @dx.op.unary.f32(i32 6, float %6446)  ; FAbs(value)
  %6494 = call float @dx.op.unary.f32(i32 6, float %6447)  ; FAbs(value)
  %6495 = fadd fast float %6494, %6493
  %6496 = call float @dx.op.unary.f32(i32 6, float %6448)  ; FAbs(value)
  %6497 = fadd fast float %6495, %6496
  %6498 = fcmp fast oeq float %6497, 0.000000e+00
  %6499 = fdiv fast float 1.000000e+00, %6497
  %6500 = select i1 %6498, float 1.000000e+00, float %6499
  %6501 = fmul fast float %6500, %6446
  %6502 = fmul fast float %6500, %6447
  %6503 = call float @dx.op.unary.f32(i32 6, float %6502)  ; FAbs(value)
  %6504 = call float @dx.op.unary.f32(i32 6, float %6501)  ; FAbs(value)
  %6505 = fsub fast float 1.000000e+00, %6503
  %6506 = fsub fast float 1.000000e+00, %6504
  %6507 = fcmp fast oge float %6501, 0.000000e+00
  %6508 = fcmp fast oge float %6502, 0.000000e+00
  %6509 = select i1 %6507, float 1.000000e+00, float -1.000000e+00
  %6510 = select i1 %6508, float 1.000000e+00, float -1.000000e+00
  %6511 = fcmp fast ole float %6448, 0.000000e+00
  %6512 = fmul fast float %6509, %6505
  %6513 = fmul fast float %6510, %6506
  %6514 = select i1 %6511, float %6512, float %6501
  %6515 = select i1 %6511, float %6513, float %6502
  %6516 = fmul fast float %6514, 5.000000e-01
  %6517 = fmul fast float %6515, 5.000000e-01
  %6518 = fadd fast float %6516, 5.000000e-01
  %6519 = fadd fast float %6517, 5.000000e-01
  %6520 = uitofp i32 %6282 to float
  %6521 = call float @dx.op.binary.f32(i32 36, float %6492, float 3.000000e+00)  ; FMin(a,b)
  %6522 = fadd fast float %6521, 2.000000e+00
  %6523 = call float @dx.op.unary.f32(i32 21, float %6522)  ; Exp(value)
  %6524 = extractvalue %dx.types.CBufRet.f32 %6489, 1
  %6525 = fmul fast float %6524, %6523
  %6526 = fmul fast float %6525, 2.000000e+00
  %6527 = fsub fast float 1.000000e+00, %6526
  %6528 = fmul fast float %6518, %6527
  %6529 = fmul fast float %6519, %6527
  %6530 = fadd fast float %6528, %6525
  %6531 = fadd fast float %6529, %6525
  %6532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %41, float %6530, float %6531, float %6520, float undef, i32 0, i32 0, i32 undef, float %6492)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6533 = extractvalue %dx.types.ResRet.f32 %6532, 0
  %6534 = extractvalue %dx.types.ResRet.f32 %6532, 1
  %6535 = extractvalue %dx.types.ResRet.f32 %6532, 2
  %6536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6537 = extractvalue %dx.types.CBufRet.f32 %6536, 3
  %6538 = fmul fast float %6537, %6252
  %6539 = call float @dx.op.binary.f32(i32 36, float %5814, float %6538)  ; FMin(a,b)
  %6540 = select i1 %6488, float %6539, float %6538
  %6541 = fmul fast float %6533, %6330
  %6542 = fmul fast float %6541, %6540
  %6543 = fmul fast float %6534, %6330
  %6544 = fmul fast float %6543, %6540
  %6545 = fmul fast float %6535, %6330
  %6546 = fmul fast float %6545, %6540
  %6547 = fadd fast float %6542, %6224
  %6548 = fadd fast float %6544, %6225
  %6549 = fadd fast float %6546, %6226
  %6550 = fmul fast float %6410, %6330
  %6551 = fmul fast float %6411, %6330
  %6552 = fmul fast float %6412, %6330
  %6553 = fadd fast float %6550, %6229
  %6554 = fadd fast float %6551, %6230
  %6555 = fadd fast float %6552, %6231
  %6556 = fsub fast float %6227, %6330
  br label %6332

; <label>:6557                                    ; preds = %6332
  br label %6558

; <label>:6558                                    ; preds = %6557, %6190
  %6559 = phi float [ %6191, %6190 ], [ %6333, %6557 ]
  %6560 = phi float [ %6192, %6190 ], [ %6334, %6557 ]
  %6561 = phi float [ %6193, %6190 ], [ %6335, %6557 ]
  %6562 = phi float [ %6194, %6190 ], [ %6336, %6557 ]
  %6563 = phi float [ %6196, %6190 ], [ %6337, %6557 ]
  %6564 = phi float [ %6197, %6190 ], [ %6338, %6557 ]
  %6565 = phi float [ %6198, %6190 ], [ %6339, %6557 ]
  %6566 = add i32 %6195, 1
  %6567 = icmp ugt i32 %6566, %6187
  br i1 %6567, label %6568, label %6190, !llvm.loop !87

; <label>:6568                                    ; preds = %6558
  br label %6569

; <label>:6569                                    ; preds = %6568, %6172
  %6570 = phi float [ 0.000000e+00, %6172 ], [ %6559, %6568 ]
  %6571 = phi float [ 0.000000e+00, %6172 ], [ %6560, %6568 ]
  %6572 = phi float [ 0.000000e+00, %6172 ], [ %6561, %6568 ]
  %6573 = phi float [ 0.000000e+00, %6172 ], [ %6563, %6568 ]
  %6574 = phi float [ 0.000000e+00, %6172 ], [ %6564, %6568 ]
  %6575 = phi float [ 0.000000e+00, %6172 ], [ %6565, %6568 ]
  %6576 = call float @dx.op.dot3.f32(i32 55, float %6570, float %6571, float %6572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6577 = select i1 %214, float 0.000000e+00, float %6570
  %6578 = select i1 %214, float %6576, float %6571
  %6579 = select i1 %214, float 0.000000e+00, float %6572
  %6580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %6581 = extractvalue %dx.types.CBufRet.f32 %6580, 0
  %6582 = extractvalue %dx.types.CBufRet.f32 %6580, 1
  %6583 = extractvalue %dx.types.CBufRet.f32 %6580, 2
  %6584 = extractvalue %dx.types.CBufRet.f32 %6580, 3
  %6585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %6586 = extractvalue %dx.types.CBufRet.f32 %6585, 0
  %6587 = extractvalue %dx.types.CBufRet.f32 %6585, 1
  %6588 = extractvalue %dx.types.CBufRet.f32 %6585, 2
  %6589 = extractvalue %dx.types.CBufRet.f32 %6585, 3
  %6590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %6591 = extractvalue %dx.types.CBufRet.f32 %6590, 0
  %6592 = extractvalue %dx.types.CBufRet.f32 %6590, 1
  %6593 = extractvalue %dx.types.CBufRet.f32 %6590, 2
  %6594 = extractvalue %dx.types.CBufRet.f32 %6590, 3
  %6595 = call float @dx.op.dot3.f32(i32 55, float %6591, float %6592, float %6593, float %5794, float %5795, float %5796)  ; Dot3(ax,ay,az,bx,by,bz)
  %6596 = call float @dx.op.dot3.f32(i32 55, float %6573, float %6574, float %6575, float %6591, float %6592, float %6593)  ; Dot3(ax,ay,az,bx,by,bz)
  %6597 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %6591, float %6592, float %6593)  ; Dot3(ax,ay,az,bx,by,bz)
  %6598 = fadd fast float %5406, -1.000000e+00
  %6599 = fsub fast float %6596, %6597
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 2
  %6602 = fmul fast float %6601, %6596
  %6603 = fdiv fast float 1.600000e+02, %6602
  %6604 = fmul fast float %6598, %6598
  %6605 = fmul fast float %6604, 0xBFB5B17960000000
  %6606 = fmul fast float %6605, %6599
  %6607 = fmul fast float %6606, %6603
  %6608 = call float @dx.op.unary.f32(i32 21, float %6607)  ; Exp(value)
  %6609 = fmul fast float %6608, 0x3FF04B2960000000
  %6610 = fsub fast float 0x3FF04B2960000000, %6609
  %6611 = call float @dx.op.unary.f32(i32 7, float %6610)  ; Saturate(value)
  %6612 = fmul fast float %6611, 4.000000e+00
  %6613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %6614 = extractvalue %dx.types.CBufRet.f32 %6613, 0
  %6615 = extractvalue %dx.types.CBufRet.f32 %6613, 1
  %6616 = extractvalue %dx.types.CBufRet.f32 %6613, 2
  %6617 = fadd fast float %6614, %6573
  %6618 = fadd fast float %6615, %6574
  %6619 = fadd fast float %6616, %6575
  %6620 = fmul fast float %6617, %6581
  %6621 = call float @dx.op.tertiary.f32(i32 46, float %6618, float %6582, float %6620)  ; FMad(a,b,c)
  %6622 = call float @dx.op.tertiary.f32(i32 46, float %6619, float %6583, float %6621)  ; FMad(a,b,c)
  %6623 = fadd fast float %6622, %6584
  %6624 = fmul fast float %6617, %6586
  %6625 = call float @dx.op.tertiary.f32(i32 46, float %6618, float %6587, float %6624)  ; FMad(a,b,c)
  %6626 = call float @dx.op.tertiary.f32(i32 46, float %6619, float %6588, float %6625)  ; FMad(a,b,c)
  %6627 = fadd fast float %6626, %6589
  %6628 = fmul fast float %6617, %6591
  %6629 = call float @dx.op.tertiary.f32(i32 46, float %6618, float %6592, float %6628)  ; FMad(a,b,c)
  %6630 = call float @dx.op.tertiary.f32(i32 46, float %6619, float %6593, float %6629)  ; FMad(a,b,c)
  %6631 = fadd fast float %6630, %6594
  %6632 = fdiv fast float %6623, %6631
  %6633 = fdiv fast float %6627, %6631
  %6634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6635 = extractvalue %dx.types.CBufRet.f32 %6634, 0
  %6636 = extractvalue %dx.types.CBufRet.f32 %6634, 1
  %6637 = fmul fast float %6635, %6632
  %6638 = fmul fast float %6636, %6633
  %6639 = extractvalue %dx.types.CBufRet.f32 %6634, 2
  %6640 = extractvalue %dx.types.CBufRet.f32 %6634, 3
  %6641 = fadd fast float %6637, %6639
  %6642 = fadd fast float %6638, %6640
  %6643 = fmul fast float %6595, 8.000000e+00
  %6644 = call float @dx.op.unary.f32(i32 7, float %6643)  ; Saturate(value)
  %6645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6646 = extractvalue %dx.types.CBufRet.f32 %6645, 0
  %6647 = fmul fast float %6641, 2.000000e+00
  %6648 = fmul fast float %6642, 2.000000e+00
  %6649 = fadd fast float %6647, -1.000000e+00
  %6650 = fadd fast float %6648, -1.000000e+00
  %6651 = fmul fast float %6649, %6649
  %6652 = fsub fast float 1.000000e+00, %6651
  %6653 = call float @dx.op.unary.f32(i32 7, float %6652)  ; Saturate(value)
  %6654 = fmul fast float %6650, %6650
  %6655 = fsub fast float 1.000000e+00, %6654
  %6656 = call float @dx.op.unary.f32(i32 7, float %6655)  ; Saturate(value)
  %6657 = fmul fast float %6646, %6653
  %6658 = fmul fast float %6657, %6656
  %6659 = call float @dx.op.unary.f32(i32 7, float %6658)  ; Saturate(value)
  %6660 = fmul fast float %6659, %6644
  %6661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %6641, float %6642, float undef, float undef, i32 0, i32 0, i32 undef, float %6612)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6662 = extractvalue %dx.types.ResRet.f32 %6661, 0
  %6663 = extractvalue %dx.types.ResRet.f32 %6661, 1
  %6664 = extractvalue %dx.types.ResRet.f32 %6661, 2
  %6665 = select i1 %214, float 0.000000e+00, float %6663
  %6666 = select i1 %214, float 0.000000e+00, float %6664
  %6667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6668 = extractvalue %dx.types.CBufRet.f32 %6667, 2
  %6669 = fmul fast float %6668, %6662
  %6670 = fmul fast float %6665, %6668
  %6671 = fmul fast float %6666, %6668
  %6672 = fsub fast float %6669, %6577
  %6673 = fsub fast float %6670, %6578
  %6674 = fsub fast float %6671, %6579
  %6675 = fmul fast float %6672, %6660
  %6676 = fmul fast float %6673, %6660
  %6677 = fmul fast float %6674, %6660
  %6678 = fadd fast float %6675, %6577
  %6679 = fadd fast float %6676, %6578
  %6680 = fadd fast float %6677, %6579
  br label %6681

; <label>:6681                                    ; preds = %6569, %6108
  %6682 = phi float [ %6054, %6108 ], [ %6678, %6569 ]
  %6683 = phi float [ %6055, %6108 ], [ %6679, %6569 ]
  %6684 = phi float [ %6056, %6108 ], [ %6680, %6569 ]
  %6685 = call float @dx.op.dot3.f32(i32 55, float %5400, float %5401, float %5402, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6686 = fcmp fast ogt float %6685, 0x3E7FF19E20000000
  %6687 = fdiv fast float 1.000000e+00, %6685
  %6688 = select i1 %6686, float %6687, float 0.000000e+00
  %6689 = fmul fast float %6688, %5400
  %6690 = fmul fast float %6688, %5401
  %6691 = fmul fast float %6688, %5402
  %6692 = fadd fast float %6689, -1.000000e+00
  %6693 = fadd fast float %6690, -1.000000e+00
  %6694 = fadd fast float %6691, -1.000000e+00
  %6695 = fmul fast float %6692, 5.000000e-01
  %6696 = fmul fast float %6693, 5.000000e-01
  %6697 = fmul fast float %6694, 5.000000e-01
  %6698 = fadd fast float %6695, 1.000000e+00
  %6699 = fadd fast float %6696, 1.000000e+00
  %6700 = fadd fast float %6697, 1.000000e+00
  %6701 = call float @dx.op.binary.f32(i32 35, float %5788, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6702 = fdiv fast float %4418, %6701
  %6703 = fcmp fast olt float %5119, 1.270000e+02
  %6704 = fcmp fast olt float %5120, 1.270000e+02
  %6705 = fcmp fast olt float %5121, 1.270000e+02
  %6706 = fmul fast float %5119, 0xBFF7154760000000
  %6707 = fmul fast float %6706, %6702
  %6708 = fmul fast float %5120, 0xBFF7154760000000
  %6709 = fmul fast float %6708, %6702
  %6710 = fmul fast float %5121, 0xBFF7154760000000
  %6711 = fmul fast float %6710, %6702
  %6712 = call float @dx.op.unary.f32(i32 21, float %6707)  ; Exp(value)
  %6713 = call float @dx.op.unary.f32(i32 21, float %6709)  ; Exp(value)
  %6714 = call float @dx.op.unary.f32(i32 21, float %6711)  ; Exp(value)
  %6715 = call float @dx.op.unary.f32(i32 7, float %6712)  ; Saturate(value)
  %6716 = call float @dx.op.unary.f32(i32 7, float %6713)  ; Saturate(value)
  %6717 = call float @dx.op.unary.f32(i32 7, float %6714)  ; Saturate(value)
  %6718 = select i1 %6703, float %6715, float 0.000000e+00
  %6719 = select i1 %6704, float %6716, float 0.000000e+00
  %6720 = select i1 %6705, float %6717, float 0.000000e+00
  %6721 = fmul fast float %6718, %6114
  %6722 = fmul fast float %6719, %6114
  %6723 = fmul fast float %6720, %6114
  %6724 = fadd fast float %6721, -1.000000e+00
  %6725 = fadd fast float %6722, -1.000000e+00
  %6726 = fadd fast float %6723, -1.000000e+00
  %6727 = fmul fast float %6724, %5067
  %6728 = fmul fast float %6725, %5067
  %6729 = fmul fast float %6726, %5067
  %6730 = fmul fast float %6682, %6109
  %6731 = fmul fast float %6683, %6110
  %6732 = fmul fast float %6684, %6111
  %6733 = fsub fast float 1.000000e+00, %5788
  %6734 = bitcast float %6733 to i32
  %6735 = sitofp i32 %6734 to float
  %6736 = fmul fast float %6735, 5.000000e+00
  %6737 = fadd fast float %6736, 0xC1EFBF8940000000
  %6738 = fptosi float %6737 to i32
  %6739 = bitcast i32 %6738 to float
  %6740 = fmul fast float %6739, %5071
  %6741 = fmul fast float %6046, %6740
  %6742 = fmul fast float %6741, %6114
  %6743 = fmul fast float %6742, %6698
  %6744 = fmul fast float %6047, %6740
  %6745 = fmul fast float %6744, %6114
  %6746 = fmul fast float %6745, %6699
  %6747 = fmul fast float %6048, %6740
  %6748 = fmul fast float %6747, %6114
  %6749 = fmul fast float %6748, %6700
  %6750 = fadd fast float %6730, %5057
  %6751 = fadd fast float %6750, %6743
  %6752 = fmul fast float %6751, %5067
  %6753 = fadd fast float %6731, %5058
  %6754 = fadd fast float %6753, %6746
  %6755 = fmul fast float %6754, %5067
  %6756 = fadd fast float %6732, %5059
  %6757 = fadd fast float %6756, %6749
  %6758 = fmul fast float %6757, %5067
  %6759 = fmul fast float %5398, 0x4012D0A400000000
  %6760 = fadd fast float %6729, 1.000000e+00
  %6761 = fadd fast float %6728, 1.000000e+00
  %6762 = fadd fast float %6727, 1.000000e+00
  %6763 = fmul fast float %6114, %6048
  %6764 = fmul fast float %6114, %6047
  %6765 = fmul fast float %6114, %6046
  %6766 = fmul fast float %5803, %5067
  %6767 = fsub fast float 1.000000e+00, %6766
  %6768 = call float @dx.op.unary.f32(i32 7, float %6767)  ; Saturate(value)
  %6769 = fsub fast float 1.000000e+00, %6768
  %6770 = fadd fast float %6759, 0x3FDB6377A0000000
  %6771 = fmul fast float %6769, %6770
  %6772 = call float @dx.op.dot3.f32(i32 55, float %5137, float %5138, float %5139, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6773 = fadd fast float %6771, %6772
  %6774 = call float @dx.op.unary.f32(i32 7, float %6773)  ; Saturate(value)
  %6775 = call float @dx.op.binary.f32(i32 35, float %6774, float 0x3F847AE140000000)  ; FMax(a,b)
  %6776 = fmul fast float %6775, %6775
  %6777 = fmul fast float %6776, %6776
  %6778 = fmul fast float %6777, 0xC00A935000000000
  %6779 = call float @dx.op.unary.f32(i32 21, float %6778)  ; Exp(value)
  %6780 = fsub fast float 1.000000e+00, %6779
  %6781 = fmul fast float %6762, %6050
  %6782 = fmul fast float %6781, %6780
  %6783 = fmul fast float %6761, %6051
  %6784 = fmul fast float %6783, %6780
  %6785 = fmul fast float %6760, %6052
  %6786 = fmul fast float %6785, %6780
  %6787 = fadd fast float %6782, %6765
  %6788 = fmul fast float %6787, %5067
  %6789 = fadd fast float %6784, %6764
  %6790 = fmul fast float %6789, %5067
  %6791 = fadd fast float %6786, %6763
  %6792 = fmul fast float %6791, %5067
  %6793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6794 = extractvalue %dx.types.CBufRet.f32 %6793, 3
  %6795 = fcmp fast oeq float %6794, 0.000000e+00
  br i1 %6795, label %8399, label %6796

; <label>:6796                                    ; preds = %6681
  %6797 = extractvalue %dx.types.CBufRet.f32 %6793, 0
  %6798 = extractvalue %dx.types.CBufRet.f32 %6793, 1
  %6799 = extractvalue %dx.types.CBufRet.f32 %6793, 2
  %6800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6801 = extractvalue %dx.types.CBufRet.f32 %6800, 0
  %6802 = extractvalue %dx.types.CBufRet.f32 %6800, 1
  %6803 = extractvalue %dx.types.CBufRet.f32 %6800, 2
  %6804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6805 = extractvalue %dx.types.CBufRet.f32 %6804, 0
  %6806 = extractvalue %dx.types.CBufRet.f32 %6804, 1
  %6807 = call float @dx.op.dot3.f32(i32 55, float %6801, float %6802, float %6803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6808 = select i1 %214, float %6805, float %6801
  %6809 = select i1 %214, float %6807, float %6802
  %6810 = select i1 %214, float %6806, float %6803
  %6811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6812 = extractvalue %dx.types.CBufRet.f32 %6811, 2
  %6813 = fmul fast float %6812, %105
  %6814 = fmul fast float %6812, %106
  %6815 = fmul fast float %6812, %107
  %6816 = fadd fast float %6813, %153
  %6817 = fadd fast float %6814, %154
  %6818 = fadd fast float %6815, %155
  %6819 = fcmp fast olt float %6794, 0.000000e+00
  br i1 %6819, label %7915, label %6820

; <label>:6820                                    ; preds = %6796
  %6821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6822 = extractvalue %dx.types.CBufRet.f32 %6821, 0
  %6823 = extractvalue %dx.types.CBufRet.f32 %6821, 1
  %6824 = extractvalue %dx.types.CBufRet.f32 %6821, 2
  %6825 = extractvalue %dx.types.CBufRet.f32 %6821, 3
  %6826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6827 = extractvalue %dx.types.CBufRet.f32 %6826, 0
  %6828 = extractvalue %dx.types.CBufRet.f32 %6826, 1
  %6829 = extractvalue %dx.types.CBufRet.f32 %6826, 2
  %6830 = extractvalue %dx.types.CBufRet.f32 %6826, 3
  %6831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.f32 %6831, 0
  %6833 = extractvalue %dx.types.CBufRet.f32 %6831, 1
  %6834 = extractvalue %dx.types.CBufRet.f32 %6831, 2
  %6835 = extractvalue %dx.types.CBufRet.f32 %6831, 3
  %6836 = fmul fast float %6822, %6816
  %6837 = call float @dx.op.tertiary.f32(i32 46, float %6817, float %6823, float %6836)  ; FMad(a,b,c)
  %6838 = call float @dx.op.tertiary.f32(i32 46, float %6818, float %6824, float %6837)  ; FMad(a,b,c)
  %6839 = fadd fast float %6838, %6825
  %6840 = fmul fast float %6827, %6816
  %6841 = call float @dx.op.tertiary.f32(i32 46, float %6817, float %6828, float %6840)  ; FMad(a,b,c)
  %6842 = call float @dx.op.tertiary.f32(i32 46, float %6818, float %6829, float %6841)  ; FMad(a,b,c)
  %6843 = fadd fast float %6842, %6830
  %6844 = fmul fast float %6832, %6816
  %6845 = call float @dx.op.tertiary.f32(i32 46, float %6817, float %6833, float %6844)  ; FMad(a,b,c)
  %6846 = call float @dx.op.tertiary.f32(i32 46, float %6818, float %6834, float %6845)  ; FMad(a,b,c)
  %6847 = fadd fast float %6846, %6835
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 0
  %6850 = extractvalue %dx.types.CBufRet.f32 %6848, 1
  %6851 = extractvalue %dx.types.CBufRet.f32 %6848, 3
  %6852 = fmul fast float %6851, %6839
  %6853 = fmul fast float %6851, %6843
  %6854 = fadd fast float %6852, %6849
  %6855 = fadd fast float %6853, %6850
  %6856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6857 = extractvalue %dx.types.CBufRet.f32 %6856, 0
  %6858 = extractvalue %dx.types.CBufRet.f32 %6856, 1
  %6859 = extractvalue %dx.types.CBufRet.f32 %6856, 3
  %6860 = fmul fast float %6859, %6839
  %6861 = fmul fast float %6859, %6843
  %6862 = fadd fast float %6860, %6857
  %6863 = fadd fast float %6861, %6858
  %6864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6865 = extractvalue %dx.types.CBufRet.f32 %6864, 1
  %6866 = fsub fast float %6865, %6847
  %6867 = extractvalue %dx.types.CBufRet.f32 %6864, 2
  %6868 = fmul fast float %6866, %6867
  %6869 = fsub fast float 1.000000e+00, %6868
  %6870 = call float @dx.op.unary.f32(i32 7, float %6869)  ; Saturate(value)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6856, 2
  %6872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6873 = extractvalue %dx.types.CBufRet.f32 %6872, 2
  %6874 = fadd fast float %6873, %6871
  %6875 = fcmp fast ogt float %6874, 0.000000e+00
  br i1 %6875, label %6876, label %6900

; <label>:6876                                    ; preds = %6820
  %6877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6878 = extractvalue %dx.types.CBufRet.f32 %6877, 0
  %6879 = extractvalue %dx.types.CBufRet.f32 %6877, 1
  %6880 = fsub fast float %6862, %6878
  %6881 = fsub fast float %6863, %6879
  %6882 = fcmp fast olt float %6880, 0.000000e+00
  %6883 = fcmp fast olt float %6881, 0.000000e+00
  %6884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6885 = extractvalue %dx.types.CBufRet.f32 %6884, 0
  %6886 = extractvalue %dx.types.CBufRet.f32 %6884, 1
  %6887 = extractvalue %dx.types.CBufRet.f32 %6884, 2
  %6888 = extractvalue %dx.types.CBufRet.f32 %6884, 3
  %6889 = select i1 %6882, float %6885, float %6887
  %6890 = select i1 %6883, float %6886, float %6888
  %6891 = fmul fast float %6889, %6880
  %6892 = fmul fast float %6890, %6881
  %6893 = call float @dx.op.unary.f32(i32 6, float %6891)  ; FAbs(value)
  %6894 = call float @dx.op.unary.f32(i32 6, float %6892)  ; FAbs(value)
  %6895 = extractvalue %dx.types.CBufRet.f32 %6811, 0
  %6896 = call float @dx.op.binary.f32(i32 35, float %6893, float %6894)  ; FMax(a,b)
  %6897 = fsub fast float %6895, %6896
  %6898 = call float @dx.op.unary.f32(i32 7, float %6897)  ; Saturate(value)
  %6899 = fmul fast float %6898, %6870
  br label %6900

; <label>:6900                                    ; preds = %6876, %6820
  %6901 = phi float [ %6899, %6876 ], [ 0.000000e+00, %6820 ]
  %6902 = extractvalue %dx.types.CBufRet.f32 %6848, 2
  %6903 = extractvalue %dx.types.CBufRet.f32 %6872, 1
  %6904 = fadd fast float %6903, %6902
  %6905 = fcmp fast ogt float %6904, 0.000000e+00
  %6906 = extractvalue %dx.types.CBufRet.f32 %6811, 0
  br i1 %6905, label %6907, label %6930

; <label>:6907                                    ; preds = %6900
  %6908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6909 = extractvalue %dx.types.CBufRet.f32 %6908, 0
  %6910 = extractvalue %dx.types.CBufRet.f32 %6908, 1
  %6911 = fsub fast float %6854, %6909
  %6912 = fsub fast float %6855, %6910
  %6913 = fcmp fast olt float %6911, 0.000000e+00
  %6914 = fcmp fast olt float %6912, 0.000000e+00
  %6915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6916 = extractvalue %dx.types.CBufRet.f32 %6915, 0
  %6917 = extractvalue %dx.types.CBufRet.f32 %6915, 1
  %6918 = extractvalue %dx.types.CBufRet.f32 %6915, 2
  %6919 = extractvalue %dx.types.CBufRet.f32 %6915, 3
  %6920 = select i1 %6913, float %6916, float %6918
  %6921 = select i1 %6914, float %6917, float %6919
  %6922 = fmul fast float %6920, %6911
  %6923 = fmul fast float %6921, %6912
  %6924 = call float @dx.op.unary.f32(i32 6, float %6922)  ; FAbs(value)
  %6925 = call float @dx.op.unary.f32(i32 6, float %6923)  ; FAbs(value)
  %6926 = call float @dx.op.binary.f32(i32 35, float %6924, float %6925)  ; FMax(a,b)
  %6927 = fsub fast float %6906, %6926
  %6928 = call float @dx.op.unary.f32(i32 7, float %6927)  ; Saturate(value)
  %6929 = fmul fast float %6928, %6870
  br label %6930

; <label>:6930                                    ; preds = %6907, %6900
  %6931 = phi float [ %6929, %6907 ], [ 0.000000e+00, %6900 ]
  %6932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6932, 1
  %6934 = call float @dx.op.unary.f32(i32 7, float %6933)  ; Saturate(value)
  %6935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6936 = extractvalue %dx.types.CBufRet.f32 %6935, 0
  %6937 = extractvalue %dx.types.CBufRet.f32 %6935, 1
  %6938 = fsub fast float %6839, %6936
  %6939 = fsub fast float %6843, %6937
  %6940 = fcmp fast olt float %6938, 0.000000e+00
  %6941 = fcmp fast olt float %6939, 0.000000e+00
  %6942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6943 = extractvalue %dx.types.CBufRet.f32 %6942, 0
  %6944 = extractvalue %dx.types.CBufRet.f32 %6942, 1
  %6945 = extractvalue %dx.types.CBufRet.f32 %6942, 2
  %6946 = extractvalue %dx.types.CBufRet.f32 %6942, 3
  %6947 = select i1 %6940, float %6943, float %6945
  %6948 = select i1 %6941, float %6944, float %6946
  %6949 = fmul fast float %6947, %6938
  %6950 = fmul fast float %6948, %6939
  %6951 = call float @dx.op.unary.f32(i32 6, float %6949)  ; FAbs(value)
  %6952 = call float @dx.op.unary.f32(i32 6, float %6950)  ; FAbs(value)
  %6953 = call float @dx.op.binary.f32(i32 35, float %6951, float %6952)  ; FMax(a,b)
  %6954 = fsub fast float %6906, %6953
  %6955 = call float @dx.op.unary.f32(i32 7, float %6954)  ; Saturate(value)
  %6956 = call float @dx.op.binary.f32(i32 36, float %6955, float %6934)  ; FMin(a,b)
  %6957 = fmul fast float %6956, %6870
  %6958 = fsub fast float %6931, %6957
  %6959 = fsub fast float %6901, %6931
  %6960 = fsub fast float %6959, %6957
  %6961 = call float @dx.op.binary.f32(i32 35, float %6957, float %6931)  ; FMax(a,b)
  %6962 = call float @dx.op.binary.f32(i32 35, float %6961, float %6901)  ; FMax(a,b)
  %6963 = fcmp fast olt float %6962, 1.000000e+00
  br i1 %6963, label %6964, label %7362, !dx.controlflow.hints !89

; <label>:6964                                    ; preds = %6930
  %6965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6966 = extractvalue %dx.types.CBufRet.f32 %6965, 0
  %6967 = fcmp fast une float %6966, 0.000000e+00
  br i1 %6967, label %6968, label %7362, !dx.controlflow.hints !90

; <label>:6968                                    ; preds = %6964
  %6969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.f32 %6969, 0
  %6971 = extractvalue %dx.types.CBufRet.f32 %6969, 1
  %6972 = extractvalue %dx.types.CBufRet.f32 %6969, 2
  %6973 = extractvalue %dx.types.CBufRet.f32 %6969, 3
  %6974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6975 = extractvalue %dx.types.CBufRet.f32 %6974, 0
  %6976 = extractvalue %dx.types.CBufRet.f32 %6974, 1
  %6977 = extractvalue %dx.types.CBufRet.f32 %6974, 2
  %6978 = extractvalue %dx.types.CBufRet.f32 %6974, 3
  %6979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6980 = extractvalue %dx.types.CBufRet.f32 %6979, 0
  %6981 = extractvalue %dx.types.CBufRet.f32 %6979, 1
  %6982 = extractvalue %dx.types.CBufRet.f32 %6979, 2
  %6983 = extractvalue %dx.types.CBufRet.f32 %6979, 3
  %6984 = fmul fast float %6970, %6816
  %6985 = call float @dx.op.tertiary.f32(i32 46, float %6817, float %6971, float %6984)  ; FMad(a,b,c)
  %6986 = call float @dx.op.tertiary.f32(i32 46, float %6818, float %6972, float %6985)  ; FMad(a,b,c)
  %6987 = fadd fast float %6986, %6973
  %6988 = fmul fast float %6975, %6816
  %6989 = call float @dx.op.tertiary.f32(i32 46, float %6817, float %6976, float %6988)  ; FMad(a,b,c)
  %6990 = call float @dx.op.tertiary.f32(i32 46, float %6818, float %6977, float %6989)  ; FMad(a,b,c)
  %6991 = fadd fast float %6990, %6978
  %6992 = fmul fast float %6980, %6816
  %6993 = call float @dx.op.tertiary.f32(i32 46, float %6817, float %6981, float %6992)  ; FMad(a,b,c)
  %6994 = call float @dx.op.tertiary.f32(i32 46, float %6818, float %6982, float %6993)  ; FMad(a,b,c)
  %6995 = fadd fast float %6994, %6983
  %6996 = fcmp fast oge float %6987, 1.000000e+00
  %6997 = fcmp fast oge float %6991, 1.000000e+00
  %6998 = or i1 %6996, %6997
  %6999 = fcmp fast olt float %6987, 0.000000e+00
  %7000 = fcmp fast olt float %6991, 0.000000e+00
  %7001 = or i1 %6999, %7000
  %7002 = or i1 %6998, %7001
  br i1 %7002, label %7362, label %7003, !dx.controlflow.hints !91

; <label>:7003                                    ; preds = %6968
  %7004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7005 = extractvalue %dx.types.CBufRet.f32 %7004, 0
  %7006 = extractvalue %dx.types.CBufRet.f32 %7004, 1
  %7007 = extractvalue %dx.types.CBufRet.f32 %7004, 2
  %7008 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7009 = extractvalue %dx.types.CBufRet.i32 %7008, 2
  %7010 = uitofp i32 %7009 to float
  %7011 = extractvalue %dx.types.CBufRet.i32 %7008, 3
  %7012 = uitofp i32 %7011 to float
  %7013 = extractvalue %dx.types.CBufRet.f32 %7004, 3
  %7014 = fmul fast float %7013, 2.000000e+00
  %7015 = fsub fast float %6987, %7005
  %7016 = fsub fast float %6991, %7006
  %7017 = fmul fast float %7014, %7015
  %7018 = fmul fast float %7014, %7016
  %7019 = fdiv fast float 1.000000e+00, %6799
  %7020 = fmul fast float %7018, %7019
  %7021 = call float @dx.op.unary.f32(i32 6, float %7020)  ; FAbs(value)
  %7022 = fmul fast float %7007, %6818
  %7023 = fmul fast float %7022, %7014
  %7024 = call float @dx.op.unary.f32(i32 6, float %7023)  ; FAbs(value)
  %7025 = call float @dx.op.unary.f32(i32 6, float %7017)  ; FAbs(value)
  %7026 = call float @dx.op.binary.f32(i32 35, float %7025, float %7024)  ; FMax(a,b)
  %7027 = call float @dx.op.binary.f32(i32 35, float %7026, float %7021)  ; FMax(a,b)
  %7028 = fmul fast float %7027, 2.000000e+00
  %7029 = call float @dx.op.unary.f32(i32 23, float %7028)  ; Log(value)
  %7030 = call float @dx.op.binary.f32(i32 35, float %7029, float %7010)  ; FMax(a,b)
  %7031 = call float @dx.op.unary.f32(i32 22, float %7030)  ; Frc(value)
  %7032 = fadd fast float %7031, 0xBFEA666660000000
  %7033 = fmul fast float %7032, 8.000000e+00
  %7034 = call float @dx.op.unary.f32(i32 7, float %7033)  ; Saturate(value)
  %7035 = call float @dx.op.unary.f32(i32 27, float %7030)  ; Round_ni(value)
  %7036 = fadd fast float %7035, %7034
  %7037 = call float @dx.op.binary.f32(i32 36, float %7036, float %7012)  ; FMin(a,b)
  %7038 = call float @dx.op.unary.f32(i32 27, float %7037)  ; Round_ni(value)
  %7039 = fsub fast float -0.000000e+00, %7038
  %7040 = call float @dx.op.unary.f32(i32 21, float %7039)  ; Exp(value)
  %7041 = fmul fast float %7040, %7014
  %7042 = fmul fast float %7041, %6987
  %7043 = fmul fast float %7041, %6991
  %7044 = fmul fast float %7042, 2.500000e-01
  %7045 = fmul fast float %7043, 2.500000e-01
  %7046 = fadd fast float %7044, 5.000000e-01
  %7047 = fadd fast float %7045, 5.000000e-01
  %7048 = fsub fast float %7012, %7010
  %7049 = fptoui float %7048 to i32
  %7050 = add i32 %7049, 320
  %7051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %7050)  ; CBufferLoadLegacy(handle,regIndex)
  %7052 = extractvalue %dx.types.CBufRet.f32 %7051, 0
  %7053 = extractvalue %dx.types.CBufRet.f32 %7051, 1
  %7054 = fcmp fast une float %7037, %7012
  %7055 = fsub fast float %6987, %7052
  %7056 = fsub fast float %6991, %7053
  %7057 = call float @dx.op.unary.f32(i32 6, float %7055)  ; FAbs(value)
  %7058 = call float @dx.op.unary.f32(i32 6, float %7056)  ; FAbs(value)
  %7059 = fmul fast float %7057, %7041
  %7060 = fmul fast float %7058, %7041
  %7061 = fcmp fast olt float %7059, 1.000000e+00
  %7062 = fcmp fast olt float %7060, 1.000000e+00
  %7063 = and i1 %7061, %7062
  %7064 = or i1 %7054, %7063
  br i1 %7064, label %7065, label %7362, !dx.controlflow.hints !92

; <label>:7065                                    ; preds = %7003
  %7066 = fmul fast float %7043, 5.000000e-01
  %7067 = fmul fast float %7042, 5.000000e-01
  %7068 = fadd fast float %7066, 5.000000e-01
  %7069 = fadd fast float %7067, 5.000000e-01
  %7070 = sitofp i32 %7009 to float
  %7071 = fsub fast float %7037, %7070
  %7072 = call float @dx.op.unary.f32(i32 27, float %7071)  ; Round_ni(value)
  %7073 = call float @dx.op.unary.f32(i32 22, float %7037)  ; Frc(value)
  %7074 = call float @dx.op.unary.f32(i32 22, float %7069)  ; Frc(value)
  %7075 = call float @dx.op.unary.f32(i32 22, float %7068)  ; Frc(value)
  %7076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %7074, float %7075, float %7072, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7077 = extractvalue %dx.types.ResRet.f32 %7076, 0
  %7078 = extractvalue %dx.types.ResRet.f32 %7076, 1
  %7079 = extractvalue %dx.types.ResRet.f32 %7076, 2
  %7080 = extractvalue %dx.types.ResRet.f32 %7076, 3
  %7081 = fcmp fast ogt float %7073, 0.000000e+00
  br i1 %7081, label %7082, label %7103, !dx.controlflow.hints !93

; <label>:7082                                    ; preds = %7065
  %7083 = fadd fast float %7072, 1.000000e+00
  %7084 = call float @dx.op.unary.f32(i32 22, float %7046)  ; Frc(value)
  %7085 = call float @dx.op.unary.f32(i32 22, float %7047)  ; Frc(value)
  %7086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %7084, float %7085, float %7083, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7087 = extractvalue %dx.types.ResRet.f32 %7086, 0
  %7088 = extractvalue %dx.types.ResRet.f32 %7086, 1
  %7089 = extractvalue %dx.types.ResRet.f32 %7086, 2
  %7090 = extractvalue %dx.types.ResRet.f32 %7086, 3
  %7091 = fsub fast float %7087, %7077
  %7092 = fsub fast float %7088, %7078
  %7093 = fsub fast float %7089, %7079
  %7094 = fsub fast float %7090, %7080
  %7095 = fmul fast float %7091, %7073
  %7096 = fmul fast float %7092, %7073
  %7097 = fmul fast float %7093, %7073
  %7098 = fmul fast float %7094, %7073
  %7099 = fadd fast float %7095, %7077
  %7100 = fadd fast float %7096, %7078
  %7101 = fadd fast float %7097, %7079
  %7102 = fadd fast float %7098, %7080
  br label %7103

; <label>:7103                                    ; preds = %7082, %7065
  %7104 = phi float [ %7099, %7082 ], [ %7077, %7065 ]
  %7105 = phi float [ %7100, %7082 ], [ %7078, %7065 ]
  %7106 = phi float [ %7101, %7082 ], [ %7079, %7065 ]
  %7107 = phi float [ %7102, %7082 ], [ %7080, %7065 ]
  %7108 = fadd fast float %7104, -5.000000e-01
  %7109 = fadd fast float %7106, -5.000000e-01
  %7110 = fmul fast float %7108, 0xBFD5555560000000
  %7111 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7109, float %7110)  ; FMad(a,b,c)
  %7112 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7105, float 0.000000e+00)  ; FMad(a,b,c)
  %7113 = fadd fast float %7112, %7107
  %7114 = fmul fast float %7108, -7.500000e-01
  %7115 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7109, float %7114)  ; FMad(a,b,c)
  %7116 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7105, float 0.000000e+00)  ; FMad(a,b,c)
  %7117 = fadd fast float %7116, %7107
  %7118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7119 = extractvalue %dx.types.CBufRet.f32 %7118, 0
  %7120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7121 = extractvalue %dx.types.CBufRet.f32 %7120, 0
  %7122 = extractvalue %dx.types.CBufRet.f32 %7120, 1
  %7123 = extractvalue %dx.types.CBufRet.f32 %7120, 2
  %7124 = extractvalue %dx.types.CBufRet.f32 %7120, 3
  %7125 = fsub fast float %7121, %7111
  %7126 = fsub fast float %7122, %7113
  %7127 = fsub fast float %7123, %7115
  %7128 = fsub fast float %7124, %7117
  %7129 = fmul fast float %7125, %7119
  %7130 = fmul fast float %7126, %7119
  %7131 = fmul fast float %7127, %7119
  %7132 = fmul fast float %7128, %7119
  %7133 = fadd fast float %7129, %7111
  %7134 = fadd fast float %7130, %7113
  %7135 = fadd fast float %7131, %7115
  %7136 = fadd fast float %7132, %7117
  %7137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7138 = extractvalue %dx.types.ResRet.i32 %7137, 0
  %7139 = and i32 %7138, 536870911
  %7140 = uitofp i32 %7139 to float
  %7141 = fmul fast float %7140, %6987
  %7142 = fmul fast float %7140, %6991
  %7143 = fptoui float %7141 to i32
  %7144 = fptoui float %7142 to i32
  %7145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7146 = extractvalue %dx.types.ResRet.i32 %7145, 0
  %7147 = and i32 %7146, 31
  %7148 = lshr i32 %7143, %7147
  %7149 = lshr i32 %7144, %7147
  %7150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7151 = extractvalue %dx.types.ResRet.i32 %7150, 0
  %7152 = and i32 %7151, 31
  %7153 = shl i32 1, %7152
  %7154 = call i32 @dx.op.binary.i32(i32 40, i32 %7153, i32 4)  ; UMin(a,b)
  %7155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7156 = extractvalue %dx.types.ResRet.i32 %7155, 0
  %7157 = extractvalue %dx.types.ResRet.i32 %7155, 1
  %7158 = icmp eq i32 %7154, 0
  br i1 %7158, label %7200, label %7159

; <label>:7159                                    ; preds = %7103
  br label %7160

; <label>:7160                                    ; preds = %7188, %7159
  %7161 = phi i32 [ %7191, %7188 ], [ 0, %7159 ]
  %7162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7163 = extractvalue %dx.types.ResRet.i32 %7162, 0
  %7164 = lshr i32 %7163, 16
  %7165 = and i32 %7164, 31
  %7166 = shl i32 %7149, %7165
  %7167 = add i32 %7166, %7148
  %7168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7169 = extractvalue %dx.types.ResRet.i32 %7168, 0
  %7170 = and i32 %7169, 31
  %7171 = shl i32 %7167, %7170
  %7172 = add i32 %7171, %7161
  %7173 = shl i32 %7172, 2
  %7174 = add i32 %7173, 32
  %7175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7174, i32 undef)  ; BufferLoad(srv,index,wot)
  %7176 = extractvalue %dx.types.ResRet.i32 %7175, 0
  %7177 = icmp slt i32 %7176, 0
  %7178 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %7161
  %7179 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %7161
  %7180 = bitcast float* %7178 to i32*
  %7181 = bitcast float* %7179 to i32*
  br i1 %7177, label %7182, label %7188

; <label>:7182                                    ; preds = %7160
  %7183 = and i32 %7176, 1073741823
  %7184 = add nuw nsw i32 %7183, 20
  %7185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7184, i32 undef)  ; BufferLoad(srv,index,wot)
  %7186 = extractvalue %dx.types.ResRet.i32 %7185, 0
  %7187 = extractvalue %dx.types.ResRet.i32 %7185, 1
  br label %7188

; <label>:7188                                    ; preds = %7182, %7160
  %7189 = phi i32 [ %7186, %7182 ], [ %7156, %7160 ]
  %7190 = phi i32 [ %7187, %7182 ], [ %7157, %7160 ]
  store i32 %7189, i32* %7180, align 4
  store i32 %7190, i32* %7181, align 4
  %7191 = add nuw i32 %7161, 1
  %7192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7193 = extractvalue %dx.types.CBufRet.i32 %7192, 2
  %7194 = icmp eq i32 %7193, 0
  %7195 = icmp ugt i32 %7176, -1073741825
  %7196 = and i1 %7195, %7194
  %7197 = icmp ult i32 %7191, %7154
  %7198 = and i1 %7196, %7197
  br i1 %7198, label %7160, label %7199

; <label>:7199                                    ; preds = %7188
  br label %7200

; <label>:7200                                    ; preds = %7199, %7103
  %7201 = phi i32 [ 0, %7103 ], [ %7191, %7199 ]
  %7202 = extractvalue %dx.types.CBufRet.f32 %6965, 2
  %7203 = fptoui float %7202 to i32
  %7204 = icmp eq i32 %7203, 0
  br i1 %7204, label %7256, label %7205

; <label>:7205                                    ; preds = %7200
  br label %7206

; <label>:7206                                    ; preds = %7251, %7205
  %7207 = phi i32 [ %7252, %7251 ], [ %7201, %7205 ]
  %7208 = phi i32 [ %7253, %7251 ], [ 0, %7205 ]
  %7209 = lshr i32 %7208, 2
  %7210 = and i32 %7208, 3
  %7211 = add nuw nsw i32 %7209, 83
  %7212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 %7211)  ; CBufferLoadLegacy(handle,regIndex)
  %7213 = extractvalue %dx.types.CBufRet.i32 %7212, 0
  %7214 = extractvalue %dx.types.CBufRet.i32 %7212, 1
  %7215 = extractvalue %dx.types.CBufRet.i32 %7212, 2
  %7216 = extractvalue %dx.types.CBufRet.i32 %7212, 3
  %7217 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 0
  store i32 %7213, i32* %7217, align 4
  %7218 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 1
  store i32 %7214, i32* %7218, align 4
  %7219 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 2
  store i32 %7215, i32* %7219, align 4
  %7220 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 3
  store i32 %7216, i32* %7220, align 4
  %7221 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 %7210
  %7222 = load i32, i32* %7221, align 4, !tbaa !94, !noalias !98
  %7223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7224 = extractvalue %dx.types.ResRet.i32 %7223, 0
  %7225 = lshr i32 %7224, 16
  %7226 = and i32 %7225, 31
  %7227 = shl i32 %7149, %7226
  %7228 = add i32 %7227, %7148
  %7229 = shl i32 %7228, 2
  %7230 = add i32 %7229, %7222
  %7231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7230, i32 undef)  ; BufferLoad(srv,index,wot)
  %7232 = extractvalue %dx.types.ResRet.i32 %7231, 0
  %7233 = icmp eq i32 %7232, 0
  br i1 %7233, label %7251, label %7234

; <label>:7234                                    ; preds = %7206
  %7235 = icmp slt i32 %7232, 0
  %7236 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %7207
  %7237 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %7207
  %7238 = bitcast float* %7236 to i32*
  %7239 = bitcast float* %7237 to i32*
  br i1 %7235, label %7240, label %7247

; <label>:7240                                    ; preds = %7234
  %7241 = and i32 %7232, 1073741823
  %7242 = add i32 %7222, 20
  %7243 = add i32 %7242, %7241
  %7244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7243, i32 undef)  ; BufferLoad(srv,index,wot)
  %7245 = extractvalue %dx.types.ResRet.i32 %7244, 0
  %7246 = extractvalue %dx.types.ResRet.i32 %7244, 1
  br label %7247

; <label>:7247                                    ; preds = %7240, %7234
  %7248 = phi i32 [ %7245, %7240 ], [ %7156, %7234 ]
  %7249 = phi i32 [ %7246, %7240 ], [ %7157, %7234 ]
  store i32 %7248, i32* %7238, align 4
  store i32 %7249, i32* %7239, align 4
  %7250 = add i32 %7207, 1
  br label %7251

; <label>:7251                                    ; preds = %7247, %7206
  %7252 = phi i32 [ %7207, %7206 ], [ %7250, %7247 ]
  %7253 = add nuw i32 %7208, 1
  %7254 = icmp eq i32 %7253, %7203
  br i1 %7254, label %7255, label %7206

; <label>:7255                                    ; preds = %7251
  br label %7256

; <label>:7256                                    ; preds = %7255, %7200
  %7257 = phi i32 [ %7201, %7200 ], [ %7252, %7255 ]
  %7258 = icmp eq i32 %7257, 1
  %7259 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  %7260 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  br i1 %7258, label %7261, label %7264

; <label>:7261                                    ; preds = %7256
  %7262 = load float, float* %7259, align 4
  %7263 = load float, float* %7260, align 4
  br label %7291

; <label>:7264                                    ; preds = %7256
  %7265 = load float, float* %7259, align 4
  %7266 = load float, float* %7260, align 4
  %7267 = fdiv fast float 1.000000e+00, %7266
  %7268 = fsub fast float %7265, %7267
  %7269 = icmp ugt i32 %7257, 1
  br i1 %7269, label %7270, label %7286

; <label>:7270                                    ; preds = %7264
  br label %7271

; <label>:7271                                    ; preds = %7271, %7270
  %7272 = phi float [ %7281, %7271 ], [ %7268, %7270 ]
  %7273 = phi float [ %7282, %7271 ], [ %7265, %7270 ]
  %7274 = phi i32 [ %7283, %7271 ], [ 1, %7270 ]
  %7275 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %7274
  %7276 = load float, float* %7275, align 4
  %7277 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %7274
  %7278 = load float, float* %7277, align 4
  %7279 = fdiv fast float 1.000000e+00, %7278
  %7280 = fsub fast float %7276, %7279
  %7281 = call float @dx.op.binary.f32(i32 36, float %7272, float %7280)  ; FMin(a,b)
  %7282 = call float @dx.op.binary.f32(i32 35, float %7273, float %7276)  ; FMax(a,b)
  %7283 = add nuw i32 %7274, 1
  %7284 = icmp eq i32 %7283, %7257
  br i1 %7284, label %7285, label %7271

; <label>:7285                                    ; preds = %7271
  br label %7286

; <label>:7286                                    ; preds = %7285, %7264
  %7287 = phi float [ %7268, %7264 ], [ %7281, %7285 ]
  %7288 = phi float [ %7265, %7264 ], [ %7282, %7285 ]
  %7289 = fsub fast float %7288, %7287
  %7290 = fdiv fast float 1.000000e+00, %7289
  br label %7291

; <label>:7291                                    ; preds = %7286, %7261
  %7292 = phi float [ %7262, %7261 ], [ %7288, %7286 ]
  %7293 = phi float [ %7263, %7261 ], [ %7290, %7286 ]
  %7294 = fadd fast float %6995, %7292
  %7295 = fmul fast float %7294, %7293
  %7296 = call float @dx.op.unary.f32(i32 7, float %7295)  ; Saturate(value)
  %7297 = fmul fast float %7296, 2.000000e+00
  %7298 = fsub fast float 1.000000e+00, %7297
  %7299 = fmul fast float %7133, %7133
  %7300 = fsub fast float %7134, %7299
  %7301 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7300)  ; FMax(a,b)
  %7302 = fdiv fast float 1.000000e+00, %7301
  %7303 = fmul fast float %7134, %7133
  %7304 = fsub fast float %7135, %7303
  %7305 = fsub fast float %7298, %7133
  %7306 = fmul fast float %7298, %7298
  %7307 = fsub fast float %7306, %7134
  %7308 = fmul fast float %7302, %7304
  %7309 = fmul fast float %7308, %7305
  %7310 = fsub fast float %7307, %7309
  %7311 = fmul fast float %7134, %7134
  %7312 = fsub fast float %7136, %7311
  %7313 = fmul fast float %7304, %7304
  %7314 = fmul fast float %7313, %7302
  %7315 = fsub fast float %7312, %7314
  %7316 = fdiv fast float %7310, %7315
  %7317 = fmul fast float %7316, %7304
  %7318 = fsub fast float %7305, %7317
  %7319 = fmul fast float %7318, %7302
  %7320 = fmul fast float %7319, %7133
  %7321 = fsub fast float 1.000000e+00, %7320
  %7322 = fmul fast float %7316, %7134
  %7323 = fsub fast float %7321, %7322
  %7324 = fmul fast float %7319, %7319
  %7325 = fmul fast float %7316, 4.000000e+00
  %7326 = fmul fast float %7325, %7323
  %7327 = fsub fast float %7324, %7326
  %7328 = call float @dx.op.unary.f32(i32 24, float %7327)  ; Sqrt(value)
  %7329 = fcmp fast oge float %7319, 0.000000e+00
  %7330 = fsub fast float -0.000000e+00, %7328
  %7331 = select i1 %7329, float %7330, float %7328
  %7332 = fsub fast float %7331, %7319
  %7333 = fdiv fast float %7332, %7316
  %7334 = fdiv fast float %7323, %7332
  %7335 = fmul fast float %7333, 5.000000e-01
  %7336 = fmul fast float %7334, 2.000000e+00
  %7337 = select i1 %7329, float %7335, float %7336
  %7338 = select i1 %7329, float %7336, float %7335
  %7339 = call float @dx.op.binary.f32(i32 35, float %7337, float %7338)  ; FMax(a,b)
  %7340 = call float @dx.op.binary.f32(i32 36, float %7337, float %7338)  ; FMin(a,b)
  %7341 = fcmp fast ogt float %7298, %7339
  %7342 = fsub fast float %7298, %7340
  %7343 = fsub fast float %7298, %7339
  %7344 = fsub fast float %7339, %7340
  %7345 = select i1 %7341, float %7343, float %7344
  %7346 = fmul float %7342, %7345
  %7347 = select i1 %7341, float %7340, float %7298
  %7348 = fcmp fast ogt float %7298, %7340
  %7349 = fmul fast float %7347, %7339
  %7350 = fadd fast float %7347, %7339
  %7351 = fmul fast float %7350, %7133
  %7352 = fadd fast float %7349, %7134
  %7353 = fsub fast float %7352, %7351
  %7354 = fdiv fast float %7353, %7346
  %7355 = select i1 %7348, float %7354, float 0.000000e+00
  %7356 = fsub fast float 1.000000e+00, %7355
  %7357 = select i1 %7341, float %7356, float %7355
  %7358 = call float @dx.op.unary.f32(i32 7, float %7357)  ; Saturate(value)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7118, 3
  %7360 = fmul fast float %7359, %7358
  %7361 = fsub fast float 1.000000e+00, %7360
  br label %7362

; <label>:7362                                    ; preds = %7291, %7003, %6968, %6964, %6930
  %7363 = phi float [ 1.000000e+00, %6930 ], [ %7361, %7291 ], [ 1.000000e+00, %6968 ], [ 1.000000e+00, %7003 ], [ 1.000000e+00, %6964 ]
  %7364 = fcmp fast ogt float %6960, 0.000000e+00
  br i1 %7364, label %7365, label %7527, !dx.controlflow.hints !107

; <label>:7365                                    ; preds = %7362
  %7366 = fadd fast float %6873, %6847
  %7367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7368 = extractvalue %dx.types.CBufRet.f32 %7367, 2
  %7369 = extractvalue %dx.types.CBufRet.f32 %7367, 3
  %7370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7371 = extractvalue %dx.types.CBufRet.f32 %7370, 2
  %7372 = call float @dx.op.binary.f32(i32 35, float %7366, float 0.000000e+00)  ; FMax(a,b)
  %7373 = fadd fast float %7372, 0x3F10000000000000
  %7374 = fcmp fast oeq float %7371, 0.000000e+00
  br i1 %7374, label %7375, label %7442

; <label>:7375                                    ; preds = %7365
  %7376 = extractvalue %dx.types.CBufRet.f32 %7367, 1
  %7377 = extractvalue %dx.types.CBufRet.f32 %7367, 0
  %7378 = fmul fast float %7377, %6862
  %7379 = fmul fast float %7376, %6863
  %7380 = fadd fast float %7378, 5.000000e-01
  %7381 = call float @dx.op.unary.f32(i32 27, float %7380)  ; Round_ni(value)
  %7382 = fadd fast float %7379, 5.000000e-01
  %7383 = call float @dx.op.unary.f32(i32 27, float %7382)  ; Round_ni(value)
  %7384 = fsub fast float %7380, %7381
  %7385 = fsub fast float %7382, %7383
  %7386 = fadd fast float %7381, -5.000000e-01
  %7387 = fadd fast float %7383, -5.000000e-01
  %7388 = fmul fast float %7384, 2.000000e+00
  %7389 = fsub fast float 3.000000e+00, %7388
  %7390 = fadd fast float %7388, 1.000000e+00
  %7391 = fsub fast float 2.000000e+00, %7384
  %7392 = bitcast float %7389 to i32
  %7393 = sub nsw i32 2129859010, %7392
  %7394 = bitcast i32 %7393 to float
  %7395 = fmul fast float %7394, %7391
  %7396 = fadd fast float %7395, -1.000000e+00
  %7397 = bitcast float %7390 to i32
  %7398 = sub nsw i32 2129859010, %7397
  %7399 = bitcast i32 %7398 to float
  %7400 = fmul fast float %7399, %7384
  %7401 = fadd fast float %7400, 1.000000e+00
  %7402 = fmul fast float %7385, 2.000000e+00
  %7403 = fsub fast float 3.000000e+00, %7402
  %7404 = fadd fast float %7402, 1.000000e+00
  %7405 = fsub fast float 2.000000e+00, %7385
  %7406 = bitcast float %7403 to i32
  %7407 = sub nsw i32 2129859010, %7406
  %7408 = bitcast i32 %7407 to float
  %7409 = fmul fast float %7408, %7405
  %7410 = fadd fast float %7409, -1.000000e+00
  %7411 = bitcast float %7404 to i32
  %7412 = sub nsw i32 2129859010, %7411
  %7413 = bitcast i32 %7412 to float
  %7414 = fmul fast float %7413, %7385
  %7415 = fadd fast float %7414, 1.000000e+00
  %7416 = fadd fast float %7396, %7386
  %7417 = fmul fast float %7416, %7368
  %7418 = fadd fast float %7410, %7387
  %7419 = fmul fast float %7418, %7369
  %7420 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7417, float %7419, float undef, float undef, i32 0, i32 0, i32 undef, float %7373)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7421 = extractvalue %dx.types.ResRet.f32 %7420, 0
  %7422 = fmul fast float %7421, %7389
  %7423 = fadd fast float %7401, %7386
  %7424 = fmul fast float %7423, %7368
  %7425 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7424, float %7419, float undef, float undef, i32 0, i32 0, i32 undef, float %7373)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7426 = extractvalue %dx.types.ResRet.f32 %7425, 0
  %7427 = fmul fast float %7426, %7390
  %7428 = fadd fast float %7415, %7387
  %7429 = fmul fast float %7428, %7369
  %7430 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7417, float %7429, float undef, float undef, i32 0, i32 0, i32 undef, float %7373)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7431 = extractvalue %dx.types.ResRet.f32 %7430, 0
  %7432 = fmul fast float %7431, %7389
  %7433 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7424, float %7429, float undef, float undef, i32 0, i32 0, i32 undef, float %7373)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7434 = extractvalue %dx.types.ResRet.f32 %7433, 0
  %7435 = fmul fast float %7434, %7390
  %7436 = fadd fast float %7435, %7432
  %7437 = fmul fast float %7436, %7404
  %7438 = fadd fast float %7427, %7422
  %7439 = fmul fast float %7438, %7403
  %7440 = fadd fast float %7439, %7437
  %7441 = fmul fast float %7440, 6.250000e-02
  br label %7527

; <label>:7442                                    ; preds = %7365
  %7443 = fmul fast float %227, 0x401921FB60000000
  %7444 = call float @dx.op.unary.f32(i32 13, float %7443)  ; Sin(value)
  %7445 = call float @dx.op.unary.f32(i32 12, float %7443)  ; Cos(value)
  %7446 = fsub fast float -0.000000e+00, %7444
  br label %7447

; <label>:7447                                    ; preds = %7496, %7442
  %7448 = phi float [ 0.000000e+00, %7442 ], [ %7491, %7496 ]
  %7449 = phi float [ 0.000000e+00, %7442 ], [ %7493, %7496 ]
  %7450 = phi i32 [ 0, %7442 ], [ %7497, %7496 ]
  %7451 = mul i32 %7450, 2
  %7452 = add i32 0, %7451
  %7453 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7452
  %7454 = load float, float* %7453, align 4
  %7455 = mul i32 %7450, 2
  %7456 = add i32 1, %7455
  %7457 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7456
  %7458 = load float, float* %7457, align 4
  %7459 = fmul fast float %7454, %7445
  %7460 = call float @dx.op.tertiary.f32(i32 46, float %7458, float %7446, float %7459)  ; FMad(a,b,c)
  %7461 = fmul fast float %7454, %7444
  %7462 = call float @dx.op.tertiary.f32(i32 46, float %7458, float %7445, float %7461)  ; FMad(a,b,c)
  %7463 = fmul fast float %7460, %7371
  %7464 = fmul fast float %7462, %7371
  %7465 = fadd fast float %7463, %6862
  %7466 = fadd fast float %7464, %6863
  %7467 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %44, float %7465, float %7466, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7468 = extractvalue %dx.types.ResRet.f32 %7467, 0
  %7469 = extractvalue %dx.types.ResRet.f32 %7467, 1
  %7470 = extractvalue %dx.types.ResRet.f32 %7467, 2
  %7471 = extractvalue %dx.types.ResRet.f32 %7467, 3
  %7472 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %7468, float* %7472, align 4
  %7473 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %7469, float* %7473, align 4
  %7474 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %7470, float* %7474, align 4
  %7475 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %7471, float* %7475, align 4
  %7476 = fsub fast float %7468, %7373
  %7477 = fcmp fast olt float %7476, 0.000000e+00
  %7478 = select i1 %7477, float 0.000000e+00, float 1.000000e+00
  %7479 = fadd fast float %7478, %7448
  %7480 = fmul fast float %7478, %7476
  %7481 = fadd fast float %7480, %7449
  br label %7482

; <label>:7482                                    ; preds = %7482, %7447
  %7483 = phi i32 [ 1, %7447 ], [ %7494, %7482 ]
  %7484 = phi float [ %7481, %7447 ], [ %7493, %7482 ]
  %7485 = phi float [ %7479, %7447 ], [ %7491, %7482 ]
  %7486 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %7483
  %7487 = load float, float* %7486, align 4, !tbaa !108, !noalias !98
  %7488 = fsub fast float %7487, %7373
  %7489 = fcmp fast olt float %7488, 0.000000e+00
  %7490 = select i1 %7489, float 0.000000e+00, float 1.000000e+00
  %7491 = fadd fast float %7490, %7485
  %7492 = fmul fast float %7490, %7488
  %7493 = fadd fast float %7492, %7484
  %7494 = add nuw nsw i32 %7483, 1
  %7495 = icmp eq i32 %7494, 4
  br i1 %7495, label %7496, label %7482, !llvm.loop !110

; <label>:7496                                    ; preds = %7482
  %7497 = add nuw nsw i32 %7450, 1
  %7498 = icmp eq i32 %7497, 8
  br i1 %7498, label %7499, label %7447, !llvm.loop !111

; <label>:7499                                    ; preds = %7496
  %7500 = fdiv fast float 1.000000e+00, %7491
  %7501 = fmul fast float %7500, %7493
  %7502 = fdiv fast float 1.000000e+00, %7373
  %7503 = fmul fast float %7501, %7502
  %7504 = call float @dx.op.unary.f32(i32 7, float %7503)  ; Saturate(value)
  %7505 = call float @dx.op.binary.f32(i32 35, float %7504, float 0.000000e+00)  ; FMax(a,b)
  %7506 = fmul fast float %7491, 3.125000e-02
  %7507 = call float @dx.op.unary.f32(i32 7, float %7506)  ; Saturate(value)
  %7508 = fmul fast float %7507, 2.000000e+00
  %7509 = fadd fast float %7508, -1.000000e+00
  %7510 = fcmp fast ogt float %7509, 0.000000e+00
  %7511 = fcmp fast olt float %7509, 0.000000e+00
  %7512 = zext i1 %7510 to i32
  %7513 = zext i1 %7511 to i32
  %7514 = sub nsw i32 %7512, %7513
  %7515 = sitofp i32 %7514 to float
  %7516 = fmul fast float %7515, %7509
  %7517 = fsub fast float 1.000000e+00, %7516
  %7518 = fmul fast float %7517, %7517
  %7519 = fmul fast float %7518, %7517
  %7520 = fsub fast float %7517, %7519
  %7521 = fmul fast float %7520, %7505
  %7522 = fsub fast float 1.000000e+00, %7519
  %7523 = fsub fast float %7522, %7521
  %7524 = fmul fast float %7515, 5.000000e-01
  %7525 = fmul fast float %7524, %7523
  %7526 = fsub fast float 5.000000e-01, %7525
  br label %7527

; <label>:7527                                    ; preds = %7499, %7375, %7362
  %7528 = phi float [ 1.000000e+00, %7362 ], [ %7441, %7375 ], [ %7526, %7499 ]
  %7529 = fcmp fast ogt float %6958, 0.000000e+00
  br i1 %7529, label %7530, label %7694, !dx.controlflow.hints !112

; <label>:7530                                    ; preds = %7527
  %7531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7532 = extractvalue %dx.types.CBufRet.f32 %7531, 1
  %7533 = fadd fast float %7532, %6847
  %7534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7535 = extractvalue %dx.types.CBufRet.f32 %7534, 2
  %7536 = extractvalue %dx.types.CBufRet.f32 %7534, 3
  %7537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7538 = extractvalue %dx.types.CBufRet.f32 %7537, 1
  %7539 = call float @dx.op.binary.f32(i32 35, float %7533, float 0.000000e+00)  ; FMax(a,b)
  %7540 = fadd fast float %7539, 0x3F10000000000000
  %7541 = fcmp fast oeq float %7538, 0.000000e+00
  br i1 %7541, label %7542, label %7609

; <label>:7542                                    ; preds = %7530
  %7543 = extractvalue %dx.types.CBufRet.f32 %7534, 1
  %7544 = extractvalue %dx.types.CBufRet.f32 %7534, 0
  %7545 = fmul fast float %7544, %6854
  %7546 = fmul fast float %7543, %6855
  %7547 = fadd fast float %7545, 5.000000e-01
  %7548 = call float @dx.op.unary.f32(i32 27, float %7547)  ; Round_ni(value)
  %7549 = fadd fast float %7546, 5.000000e-01
  %7550 = call float @dx.op.unary.f32(i32 27, float %7549)  ; Round_ni(value)
  %7551 = fsub fast float %7547, %7548
  %7552 = fsub fast float %7549, %7550
  %7553 = fadd fast float %7548, -5.000000e-01
  %7554 = fadd fast float %7550, -5.000000e-01
  %7555 = fmul fast float %7551, 2.000000e+00
  %7556 = fsub fast float 3.000000e+00, %7555
  %7557 = fadd fast float %7555, 1.000000e+00
  %7558 = fsub fast float 2.000000e+00, %7551
  %7559 = bitcast float %7556 to i32
  %7560 = sub nsw i32 2129859010, %7559
  %7561 = bitcast i32 %7560 to float
  %7562 = fmul fast float %7561, %7558
  %7563 = fadd fast float %7562, -1.000000e+00
  %7564 = bitcast float %7557 to i32
  %7565 = sub nsw i32 2129859010, %7564
  %7566 = bitcast i32 %7565 to float
  %7567 = fmul fast float %7566, %7551
  %7568 = fadd fast float %7567, 1.000000e+00
  %7569 = fmul fast float %7552, 2.000000e+00
  %7570 = fsub fast float 3.000000e+00, %7569
  %7571 = fadd fast float %7569, 1.000000e+00
  %7572 = fsub fast float 2.000000e+00, %7552
  %7573 = bitcast float %7570 to i32
  %7574 = sub nsw i32 2129859010, %7573
  %7575 = bitcast i32 %7574 to float
  %7576 = fmul fast float %7575, %7572
  %7577 = fadd fast float %7576, -1.000000e+00
  %7578 = bitcast float %7571 to i32
  %7579 = sub nsw i32 2129859010, %7578
  %7580 = bitcast i32 %7579 to float
  %7581 = fmul fast float %7580, %7552
  %7582 = fadd fast float %7581, 1.000000e+00
  %7583 = fadd fast float %7563, %7553
  %7584 = fmul fast float %7583, %7535
  %7585 = fadd fast float %7577, %7554
  %7586 = fmul fast float %7585, %7536
  %7587 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7584, float %7586, float undef, float undef, i32 0, i32 0, i32 undef, float %7540)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7588 = extractvalue %dx.types.ResRet.f32 %7587, 0
  %7589 = fmul fast float %7588, %7556
  %7590 = fadd fast float %7568, %7553
  %7591 = fmul fast float %7590, %7535
  %7592 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7591, float %7586, float undef, float undef, i32 0, i32 0, i32 undef, float %7540)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7593 = extractvalue %dx.types.ResRet.f32 %7592, 0
  %7594 = fmul fast float %7593, %7557
  %7595 = fadd fast float %7582, %7554
  %7596 = fmul fast float %7595, %7536
  %7597 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7584, float %7596, float undef, float undef, i32 0, i32 0, i32 undef, float %7540)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7598 = extractvalue %dx.types.ResRet.f32 %7597, 0
  %7599 = fmul fast float %7598, %7556
  %7600 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7591, float %7596, float undef, float undef, i32 0, i32 0, i32 undef, float %7540)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7601 = extractvalue %dx.types.ResRet.f32 %7600, 0
  %7602 = fmul fast float %7601, %7557
  %7603 = fadd fast float %7602, %7599
  %7604 = fmul fast float %7603, %7571
  %7605 = fadd fast float %7594, %7589
  %7606 = fmul fast float %7605, %7570
  %7607 = fadd fast float %7606, %7604
  %7608 = fmul fast float %7607, 6.250000e-02
  br label %7694

; <label>:7609                                    ; preds = %7530
  %7610 = fmul fast float %227, 0x401921FB60000000
  %7611 = call float @dx.op.unary.f32(i32 13, float %7610)  ; Sin(value)
  %7612 = call float @dx.op.unary.f32(i32 12, float %7610)  ; Cos(value)
  %7613 = fsub fast float -0.000000e+00, %7611
  br label %7614

; <label>:7614                                    ; preds = %7663, %7609
  %7615 = phi float [ 0.000000e+00, %7609 ], [ %7658, %7663 ]
  %7616 = phi float [ 0.000000e+00, %7609 ], [ %7660, %7663 ]
  %7617 = phi i32 [ 0, %7609 ], [ %7664, %7663 ]
  %7618 = mul i32 %7617, 2
  %7619 = add i32 0, %7618
  %7620 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7619
  %7621 = load float, float* %7620, align 4
  %7622 = mul i32 %7617, 2
  %7623 = add i32 1, %7622
  %7624 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7623
  %7625 = load float, float* %7624, align 4
  %7626 = fmul fast float %7621, %7612
  %7627 = call float @dx.op.tertiary.f32(i32 46, float %7625, float %7613, float %7626)  ; FMad(a,b,c)
  %7628 = fmul fast float %7621, %7611
  %7629 = call float @dx.op.tertiary.f32(i32 46, float %7625, float %7612, float %7628)  ; FMad(a,b,c)
  %7630 = fmul fast float %7627, %7538
  %7631 = fmul fast float %7629, %7538
  %7632 = fadd fast float %7630, %6854
  %7633 = fadd fast float %7631, %6855
  %7634 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %44, float %7632, float %7633, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7635 = extractvalue %dx.types.ResRet.f32 %7634, 0
  %7636 = extractvalue %dx.types.ResRet.f32 %7634, 1
  %7637 = extractvalue %dx.types.ResRet.f32 %7634, 2
  %7638 = extractvalue %dx.types.ResRet.f32 %7634, 3
  %7639 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %7635, float* %7639, align 4
  %7640 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %7636, float* %7640, align 4
  %7641 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %7637, float* %7641, align 4
  %7642 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %7638, float* %7642, align 4
  %7643 = fsub fast float %7635, %7540
  %7644 = fcmp fast olt float %7643, 0.000000e+00
  %7645 = select i1 %7644, float 0.000000e+00, float 1.000000e+00
  %7646 = fadd fast float %7645, %7615
  %7647 = fmul fast float %7645, %7643
  %7648 = fadd fast float %7647, %7616
  br label %7649

; <label>:7649                                    ; preds = %7649, %7614
  %7650 = phi i32 [ 1, %7614 ], [ %7661, %7649 ]
  %7651 = phi float [ %7648, %7614 ], [ %7660, %7649 ]
  %7652 = phi float [ %7646, %7614 ], [ %7658, %7649 ]
  %7653 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7650
  %7654 = load float, float* %7653, align 4, !tbaa !108, !noalias !98
  %7655 = fsub fast float %7654, %7540
  %7656 = fcmp fast olt float %7655, 0.000000e+00
  %7657 = select i1 %7656, float 0.000000e+00, float 1.000000e+00
  %7658 = fadd fast float %7657, %7652
  %7659 = fmul fast float %7657, %7655
  %7660 = fadd fast float %7659, %7651
  %7661 = add nuw nsw i32 %7650, 1
  %7662 = icmp eq i32 %7661, 4
  br i1 %7662, label %7663, label %7649, !llvm.loop !110

; <label>:7663                                    ; preds = %7649
  %7664 = add nuw nsw i32 %7617, 1
  %7665 = icmp eq i32 %7664, 8
  br i1 %7665, label %7666, label %7614, !llvm.loop !111

; <label>:7666                                    ; preds = %7663
  %7667 = fdiv fast float 1.000000e+00, %7658
  %7668 = fmul fast float %7667, %7660
  %7669 = fdiv fast float 1.000000e+00, %7540
  %7670 = fmul fast float %7668, %7669
  %7671 = call float @dx.op.unary.f32(i32 7, float %7670)  ; Saturate(value)
  %7672 = call float @dx.op.binary.f32(i32 35, float %7671, float 0.000000e+00)  ; FMax(a,b)
  %7673 = fmul fast float %7658, 3.125000e-02
  %7674 = call float @dx.op.unary.f32(i32 7, float %7673)  ; Saturate(value)
  %7675 = fmul fast float %7674, 2.000000e+00
  %7676 = fadd fast float %7675, -1.000000e+00
  %7677 = fcmp fast ogt float %7676, 0.000000e+00
  %7678 = fcmp fast olt float %7676, 0.000000e+00
  %7679 = zext i1 %7677 to i32
  %7680 = zext i1 %7678 to i32
  %7681 = sub nsw i32 %7679, %7680
  %7682 = sitofp i32 %7681 to float
  %7683 = fmul fast float %7682, %7676
  %7684 = fsub fast float 1.000000e+00, %7683
  %7685 = fmul fast float %7684, %7684
  %7686 = fmul fast float %7685, %7684
  %7687 = fsub fast float %7684, %7686
  %7688 = fmul fast float %7687, %7672
  %7689 = fsub fast float 1.000000e+00, %7686
  %7690 = fsub fast float %7689, %7688
  %7691 = fmul fast float %7682, 5.000000e-01
  %7692 = fmul fast float %7691, %7690
  %7693 = fsub fast float 5.000000e-01, %7692
  br label %7694

; <label>:7694                                    ; preds = %7666, %7542, %7527
  %7695 = phi float [ 1.000000e+00, %7527 ], [ %7608, %7542 ], [ %7693, %7666 ]
  %7696 = fcmp fast ogt float %6957, 0.000000e+00
  br i1 %7696, label %7697, label %7861, !dx.controlflow.hints !113

; <label>:7697                                    ; preds = %7694
  %7698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7699 = extractvalue %dx.types.CBufRet.f32 %7698, 0
  %7700 = fadd fast float %7699, %6847
  %7701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7702 = extractvalue %dx.types.CBufRet.f32 %7701, 2
  %7703 = extractvalue %dx.types.CBufRet.f32 %7701, 3
  %7704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7705 = extractvalue %dx.types.CBufRet.f32 %7704, 0
  %7706 = call float @dx.op.binary.f32(i32 35, float %7700, float 0.000000e+00)  ; FMax(a,b)
  %7707 = fadd fast float %7706, 0x3F10000000000000
  %7708 = fcmp fast oeq float %7705, 0.000000e+00
  br i1 %7708, label %7709, label %7776

; <label>:7709                                    ; preds = %7697
  %7710 = extractvalue %dx.types.CBufRet.f32 %7701, 1
  %7711 = extractvalue %dx.types.CBufRet.f32 %7701, 0
  %7712 = fmul fast float %7711, %6839
  %7713 = fmul fast float %7710, %6843
  %7714 = fadd fast float %7712, 5.000000e-01
  %7715 = call float @dx.op.unary.f32(i32 27, float %7714)  ; Round_ni(value)
  %7716 = fadd fast float %7713, 5.000000e-01
  %7717 = call float @dx.op.unary.f32(i32 27, float %7716)  ; Round_ni(value)
  %7718 = fsub fast float %7714, %7715
  %7719 = fsub fast float %7716, %7717
  %7720 = fadd fast float %7715, -5.000000e-01
  %7721 = fadd fast float %7717, -5.000000e-01
  %7722 = fmul fast float %7718, 2.000000e+00
  %7723 = fsub fast float 3.000000e+00, %7722
  %7724 = fadd fast float %7722, 1.000000e+00
  %7725 = fsub fast float 2.000000e+00, %7718
  %7726 = bitcast float %7723 to i32
  %7727 = sub nsw i32 2129859010, %7726
  %7728 = bitcast i32 %7727 to float
  %7729 = fmul fast float %7728, %7725
  %7730 = fadd fast float %7729, -1.000000e+00
  %7731 = bitcast float %7724 to i32
  %7732 = sub nsw i32 2129859010, %7731
  %7733 = bitcast i32 %7732 to float
  %7734 = fmul fast float %7733, %7718
  %7735 = fadd fast float %7734, 1.000000e+00
  %7736 = fmul fast float %7719, 2.000000e+00
  %7737 = fsub fast float 3.000000e+00, %7736
  %7738 = fadd fast float %7736, 1.000000e+00
  %7739 = fsub fast float 2.000000e+00, %7719
  %7740 = bitcast float %7737 to i32
  %7741 = sub nsw i32 2129859010, %7740
  %7742 = bitcast i32 %7741 to float
  %7743 = fmul fast float %7742, %7739
  %7744 = fadd fast float %7743, -1.000000e+00
  %7745 = bitcast float %7738 to i32
  %7746 = sub nsw i32 2129859010, %7745
  %7747 = bitcast i32 %7746 to float
  %7748 = fmul fast float %7747, %7719
  %7749 = fadd fast float %7748, 1.000000e+00
  %7750 = fadd fast float %7730, %7720
  %7751 = fmul fast float %7750, %7702
  %7752 = fadd fast float %7744, %7721
  %7753 = fmul fast float %7752, %7703
  %7754 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7751, float %7753, float undef, float undef, i32 0, i32 0, i32 undef, float %7707)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7755 = extractvalue %dx.types.ResRet.f32 %7754, 0
  %7756 = fmul fast float %7755, %7723
  %7757 = fadd fast float %7735, %7720
  %7758 = fmul fast float %7757, %7702
  %7759 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7758, float %7753, float undef, float undef, i32 0, i32 0, i32 undef, float %7707)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7760 = extractvalue %dx.types.ResRet.f32 %7759, 0
  %7761 = fmul fast float %7760, %7724
  %7762 = fadd fast float %7749, %7721
  %7763 = fmul fast float %7762, %7703
  %7764 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7751, float %7763, float undef, float undef, i32 0, i32 0, i32 undef, float %7707)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7765 = extractvalue %dx.types.ResRet.f32 %7764, 0
  %7766 = fmul fast float %7765, %7723
  %7767 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7758, float %7763, float undef, float undef, i32 0, i32 0, i32 undef, float %7707)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7768 = extractvalue %dx.types.ResRet.f32 %7767, 0
  %7769 = fmul fast float %7768, %7724
  %7770 = fadd fast float %7769, %7766
  %7771 = fmul fast float %7770, %7738
  %7772 = fadd fast float %7761, %7756
  %7773 = fmul fast float %7772, %7737
  %7774 = fadd fast float %7773, %7771
  %7775 = fmul fast float %7774, 6.250000e-02
  br label %7861

; <label>:7776                                    ; preds = %7697
  %7777 = fmul fast float %227, 0x401921FB60000000
  %7778 = call float @dx.op.unary.f32(i32 13, float %7777)  ; Sin(value)
  %7779 = call float @dx.op.unary.f32(i32 12, float %7777)  ; Cos(value)
  %7780 = fsub fast float -0.000000e+00, %7778
  br label %7781

; <label>:7781                                    ; preds = %7830, %7776
  %7782 = phi float [ 0.000000e+00, %7776 ], [ %7825, %7830 ]
  %7783 = phi float [ 0.000000e+00, %7776 ], [ %7827, %7830 ]
  %7784 = phi i32 [ 0, %7776 ], [ %7831, %7830 ]
  %7785 = mul i32 %7784, 2
  %7786 = add i32 0, %7785
  %7787 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7786
  %7788 = load float, float* %7787, align 4
  %7789 = mul i32 %7784, 2
  %7790 = add i32 1, %7789
  %7791 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7790
  %7792 = load float, float* %7791, align 4
  %7793 = fmul fast float %7788, %7779
  %7794 = call float @dx.op.tertiary.f32(i32 46, float %7792, float %7780, float %7793)  ; FMad(a,b,c)
  %7795 = fmul fast float %7788, %7778
  %7796 = call float @dx.op.tertiary.f32(i32 46, float %7792, float %7779, float %7795)  ; FMad(a,b,c)
  %7797 = fmul fast float %7794, %7705
  %7798 = fmul fast float %7796, %7705
  %7799 = fadd fast float %7797, %6839
  %7800 = fadd fast float %7798, %6843
  %7801 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %44, float %7799, float %7800, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7802 = extractvalue %dx.types.ResRet.f32 %7801, 0
  %7803 = extractvalue %dx.types.ResRet.f32 %7801, 1
  %7804 = extractvalue %dx.types.ResRet.f32 %7801, 2
  %7805 = extractvalue %dx.types.ResRet.f32 %7801, 3
  %7806 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 0
  store float %7802, float* %7806, align 4
  %7807 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 1
  store float %7803, float* %7807, align 4
  %7808 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 2
  store float %7804, float* %7808, align 4
  %7809 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 3
  store float %7805, float* %7809, align 4
  %7810 = fsub fast float %7802, %7707
  %7811 = fcmp fast olt float %7810, 0.000000e+00
  %7812 = select i1 %7811, float 0.000000e+00, float 1.000000e+00
  %7813 = fadd fast float %7812, %7782
  %7814 = fmul fast float %7812, %7810
  %7815 = fadd fast float %7814, %7783
  br label %7816

; <label>:7816                                    ; preds = %7816, %7781
  %7817 = phi i32 [ 1, %7781 ], [ %7828, %7816 ]
  %7818 = phi float [ %7815, %7781 ], [ %7827, %7816 ]
  %7819 = phi float [ %7813, %7781 ], [ %7825, %7816 ]
  %7820 = getelementptr [4 x float], [4 x float]* %89, i32 0, i32 %7817
  %7821 = load float, float* %7820, align 4, !tbaa !108, !noalias !98
  %7822 = fsub fast float %7821, %7707
  %7823 = fcmp fast olt float %7822, 0.000000e+00
  %7824 = select i1 %7823, float 0.000000e+00, float 1.000000e+00
  %7825 = fadd fast float %7824, %7819
  %7826 = fmul fast float %7824, %7822
  %7827 = fadd fast float %7826, %7818
  %7828 = add nuw nsw i32 %7817, 1
  %7829 = icmp eq i32 %7828, 4
  br i1 %7829, label %7830, label %7816, !llvm.loop !110

; <label>:7830                                    ; preds = %7816
  %7831 = add nuw nsw i32 %7784, 1
  %7832 = icmp eq i32 %7831, 8
  br i1 %7832, label %7833, label %7781, !llvm.loop !111

; <label>:7833                                    ; preds = %7830
  %7834 = fdiv fast float 1.000000e+00, %7825
  %7835 = fmul fast float %7834, %7827
  %7836 = fdiv fast float 1.000000e+00, %7707
  %7837 = fmul fast float %7835, %7836
  %7838 = call float @dx.op.unary.f32(i32 7, float %7837)  ; Saturate(value)
  %7839 = call float @dx.op.binary.f32(i32 35, float %7838, float 0.000000e+00)  ; FMax(a,b)
  %7840 = fmul fast float %7825, 3.125000e-02
  %7841 = call float @dx.op.unary.f32(i32 7, float %7840)  ; Saturate(value)
  %7842 = fmul fast float %7841, 2.000000e+00
  %7843 = fadd fast float %7842, -1.000000e+00
  %7844 = fcmp fast ogt float %7843, 0.000000e+00
  %7845 = fcmp fast olt float %7843, 0.000000e+00
  %7846 = zext i1 %7844 to i32
  %7847 = zext i1 %7845 to i32
  %7848 = sub nsw i32 %7846, %7847
  %7849 = sitofp i32 %7848 to float
  %7850 = fmul fast float %7849, %7843
  %7851 = fsub fast float 1.000000e+00, %7850
  %7852 = fmul fast float %7851, %7851
  %7853 = fmul fast float %7852, %7851
  %7854 = fsub fast float %7851, %7853
  %7855 = fmul fast float %7854, %7839
  %7856 = fsub fast float 1.000000e+00, %7853
  %7857 = fsub fast float %7856, %7855
  %7858 = fmul fast float %7849, 5.000000e-01
  %7859 = fmul fast float %7858, %7857
  %7860 = fsub fast float 5.000000e-01, %7859
  br label %7861

; <label>:7861                                    ; preds = %7833, %7709, %7694
  %7862 = phi float [ 1.000000e+00, %7694 ], [ %7775, %7709 ], [ %7860, %7833 ]
  %7863 = fsub fast float %7528, %7363
  %7864 = fmul fast float %7863, %6901
  %7865 = fadd fast float %7864, %7363
  %7866 = fsub fast float %7695, %7865
  %7867 = fmul fast float %7866, %6931
  %7868 = fadd fast float %7867, %7865
  %7869 = fsub fast float %7862, %7868
  %7870 = fmul fast float %7869, %6957
  %7871 = fadd fast float %7870, %7868
  %7872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7873 = extractvalue %dx.types.CBufRet.f32 %7872, 2
  %7874 = fcmp fast ogt float %7873, 0.000000e+00
  br i1 %7874, label %7875, label %7915, !dx.controlflow.hints !114

; <label>:7875                                    ; preds = %7861
  %7876 = fcmp fast ugt float %7873, 0.000000e+00
  br i1 %7876, label %7877, label %7912

; <label>:7877                                    ; preds = %7875
  %7878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7879 = extractvalue %dx.types.CBufRet.f32 %7878, 0
  %7880 = extractvalue %dx.types.CBufRet.f32 %7878, 1
  %7881 = extractvalue %dx.types.CBufRet.f32 %7878, 2
  %7882 = extractvalue %dx.types.CBufRet.f32 %7878, 3
  %7883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7884 = extractvalue %dx.types.CBufRet.f32 %7883, 0
  %7885 = extractvalue %dx.types.CBufRet.f32 %7883, 1
  %7886 = extractvalue %dx.types.CBufRet.f32 %7883, 2
  %7887 = extractvalue %dx.types.CBufRet.f32 %7883, 3
  %7888 = extractvalue %dx.types.CBufRet.f32 %7872, 0
  %7889 = extractvalue %dx.types.CBufRet.f32 %7872, 1
  %7890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %7891 = extractvalue %dx.types.CBufRet.f32 %7890, 0
  %7892 = extractvalue %dx.types.CBufRet.f32 %7890, 1
  %7893 = extractvalue %dx.types.CBufRet.f32 %7890, 2
  %7894 = fadd fast float %7891, %6816
  %7895 = fadd fast float %7892, %6817
  %7896 = fadd fast float %7893, %6818
  %7897 = fmul fast float %7894, %7879
  %7898 = call float @dx.op.tertiary.f32(i32 46, float %7880, float %7895, float %7897)  ; FMad(a,b,c)
  %7899 = call float @dx.op.tertiary.f32(i32 46, float %7881, float %7896, float %7898)  ; FMad(a,b,c)
  %7900 = fadd fast float %7899, %7882
  %7901 = fmul fast float %7894, %7884
  %7902 = call float @dx.op.tertiary.f32(i32 46, float %7885, float %7895, float %7901)  ; FMad(a,b,c)
  %7903 = call float @dx.op.tertiary.f32(i32 46, float %7886, float %7896, float %7902)  ; FMad(a,b,c)
  %7904 = fadd fast float %7903, %7887
  %7905 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %40, float %7900, float %7904, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7906 = extractvalue %dx.types.ResRet.f32 %7905, 0
  %7907 = fmul fast float %7906, %7889
  %7908 = fadd fast float %7907, %7888
  %7909 = call float @dx.op.unary.f32(i32 7, float %7908)  ; Saturate(value)
  %7910 = fmul fast float %7909, %7873
  %7911 = fsub fast float 1.000000e+00, %7910
  br label %7912

; <label>:7912                                    ; preds = %7877, %7875
  %7913 = phi float [ %7911, %7877 ], [ 1.000000e+00, %7875 ]
  %7914 = fmul fast float %7913, %7871
  br label %7915

; <label>:7915                                    ; preds = %7912, %7861, %6796
  %7916 = phi float [ 1.000000e+00, %6796 ], [ %7914, %7912 ], [ %7871, %7861 ]
  %7917 = call float @dx.op.binary.f32(i32 36, float %7916, float %7916)  ; FMin(a,b)
  %7918 = call float @dx.op.binary.f32(i32 36, float %7916, float %7917)  ; FMin(a,b)
  %7919 = fcmp fast ogt float %7918, 0.000000e+00
  br i1 %7919, label %7920, label %8086, !dx.controlflow.hints !115

; <label>:7920                                    ; preds = %7915
  %7921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7922 = extractvalue %dx.types.CBufRet.f32 %7921, 0
  %7923 = extractvalue %dx.types.CBufRet.f32 %7921, 1
  %7924 = extractvalue %dx.types.CBufRet.f32 %7921, 2
  %7925 = extractvalue %dx.types.CBufRet.f32 %7921, 3
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 0
  %7928 = extractvalue %dx.types.CBufRet.f32 %7926, 1
  %7929 = extractvalue %dx.types.CBufRet.f32 %7926, 2
  %7930 = extractvalue %dx.types.CBufRet.f32 %7926, 3
  %7931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7932 = extractvalue %dx.types.CBufRet.f32 %7931, 0
  %7933 = extractvalue %dx.types.CBufRet.f32 %7931, 1
  %7934 = extractvalue %dx.types.CBufRet.f32 %7931, 2
  %7935 = extractvalue %dx.types.CBufRet.f32 %7931, 3
  %7936 = fmul fast float %7922, %6816
  %7937 = call float @dx.op.tertiary.f32(i32 46, float %6817, float %7923, float %7936)  ; FMad(a,b,c)
  %7938 = call float @dx.op.tertiary.f32(i32 46, float %6818, float %7924, float %7937)  ; FMad(a,b,c)
  %7939 = fadd fast float %7938, %7925
  %7940 = fmul fast float %7927, %6816
  %7941 = call float @dx.op.tertiary.f32(i32 46, float %6817, float %7928, float %7940)  ; FMad(a,b,c)
  %7942 = call float @dx.op.tertiary.f32(i32 46, float %6818, float %7929, float %7941)  ; FMad(a,b,c)
  %7943 = fadd fast float %7942, %7930
  %7944 = fmul fast float %7932, %6816
  %7945 = call float @dx.op.tertiary.f32(i32 46, float %6817, float %7933, float %7944)  ; FMad(a,b,c)
  %7946 = call float @dx.op.tertiary.f32(i32 46, float %6818, float %7934, float %7945)  ; FMad(a,b,c)
  %7947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7948 = extractvalue %dx.types.CBufRet.f32 %7947, 0
  %7949 = extractvalue %dx.types.CBufRet.f32 %7947, 1
  %7950 = extractvalue %dx.types.CBufRet.f32 %7947, 3
  %7951 = fmul fast float %7950, %7939
  %7952 = fmul fast float %7950, %7943
  %7953 = fadd fast float %7951, %7948
  %7954 = fadd fast float %7952, %7949
  %7955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7956 = extractvalue %dx.types.CBufRet.f32 %7955, 0
  %7957 = extractvalue %dx.types.CBufRet.f32 %7955, 1
  %7958 = fsub fast float %7953, %7956
  %7959 = fsub fast float %7954, %7957
  %7960 = fcmp fast olt float %7958, 0.000000e+00
  %7961 = fcmp fast olt float %7959, 0.000000e+00
  %7962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7963 = extractvalue %dx.types.CBufRet.f32 %7962, 0
  %7964 = extractvalue %dx.types.CBufRet.f32 %7962, 1
  %7965 = extractvalue %dx.types.CBufRet.f32 %7962, 2
  %7966 = extractvalue %dx.types.CBufRet.f32 %7962, 3
  %7967 = select i1 %7960, float %7963, float %7965
  %7968 = select i1 %7961, float %7964, float %7966
  %7969 = fmul fast float %7967, %7958
  %7970 = fmul fast float %7968, %7959
  %7971 = call float @dx.op.unary.f32(i32 6, float %7969)  ; FAbs(value)
  %7972 = call float @dx.op.unary.f32(i32 6, float %7970)  ; FAbs(value)
  %7973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7974 = extractvalue %dx.types.CBufRet.f32 %7973, 0
  %7975 = call float @dx.op.binary.f32(i32 35, float %7971, float %7972)  ; FMax(a,b)
  %7976 = fsub fast float %7974, %7975
  %7977 = call float @dx.op.unary.f32(i32 7, float %7976)  ; Saturate(value)
  %7978 = fcmp fast ogt float %7977, 0.000000e+00
  br i1 %7978, label %7979, label %8020, !dx.controlflow.hints !116

; <label>:7979                                    ; preds = %7920
  %7980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %7953, float %7954, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7981 = extractvalue %dx.types.ResRet.f32 %7980, 1
  %7982 = fcmp fast ogt float %7981, 0.000000e+00
  br i1 %7982, label %7983, label %8015

; <label>:7983                                    ; preds = %7979
  %7984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %43, float %7953, float %7954, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7985 = extractvalue %dx.types.ResRet.f32 %7984, 0
  %7986 = extractvalue %dx.types.ResRet.f32 %7984, 1
  %7987 = extractvalue %dx.types.ResRet.f32 %7984, 2
  %7988 = extractvalue %dx.types.ResRet.f32 %7984, 3
  %7989 = fsub fast float 1.000000e+00, %7935
  %7990 = fsub fast float %7989, %7946
  %7991 = fmul fast float %7990, 0x400921FB60000000
  %7992 = fadd fast float %7991, 0x3FF921FB60000000
  %7993 = call float @dx.op.unary.f32(i32 13, float %7992)  ; Sin(value)
  %7994 = fadd fast float %7993, -1.000000e+00
  %7995 = fmul fast float %7994, 0x3FD45F3060000000
  %7996 = fmul fast float %7990, 0x401921FB60000000
  %7997 = fadd fast float %7996, 0x400921FB60000000
  %7998 = call float @dx.op.unary.f32(i32 13, float %7997)  ; Sin(value)
  %7999 = fadd fast float %7998, 0x3E7777A5C0000000
  %8000 = fmul fast float %7999, 0x3FC45F3060000000
  %8001 = fmul fast float %7990, 0x4022D97C80000000
  %8002 = fadd fast float %8001, 0x4012D97C80000000
  %8003 = call float @dx.op.unary.f32(i32 13, float %8002)  ; Sin(value)
  %8004 = fadd fast float %8003, 1.000000e+00
  %8005 = fmul fast float %8004, 0x3FBB2995E0000000
  %8006 = fmul fast float %7990, 0x402921FB60000000
  %8007 = fadd fast float %8006, 0x401921FB60000000
  %8008 = call float @dx.op.unary.f32(i32 13, float %8007)  ; Sin(value)
  %8009 = fadd fast float %8008, 0xBE8777A5C0000000
  %8010 = fmul fast float %8009, 0x3FB45F3060000000
  %8011 = call float @dx.op.dot4.f32(i32 56, float %7985, float %7986, float %7987, float %7988, float %7995, float %8000, float %8005, float %8010)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8012 = fmul fast float %8011, 0xBFF7154760000000
  %8013 = call float @dx.op.unary.f32(i32 21, float %8012)  ; Exp(value)
  %8014 = call float @dx.op.unary.f32(i32 7, float %8013)  ; Saturate(value)
  br label %8015

; <label>:8015                                    ; preds = %7983, %7979
  %8016 = phi float [ %8014, %7983 ], [ 1.000000e+00, %7979 ]
  %8017 = fadd fast float %8016, -1.000000e+00
  %8018 = fmul fast float %8017, %7977
  %8019 = fadd fast float %8018, 1.000000e+00
  br label %8020

; <label>:8020                                    ; preds = %8015, %7920
  %8021 = phi float [ %8019, %8015 ], [ 1.000000e+00, %7920 ]
  %8022 = fmul fast float %8021, %7916
  %8023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %8024 = extractvalue %dx.types.CBufRet.f32 %8023, 0
  %8025 = extractvalue %dx.types.CBufRet.f32 %8023, 1
  %8026 = extractvalue %dx.types.CBufRet.f32 %8023, 2
  %8027 = fadd fast float %8024, %153
  %8028 = fadd fast float %8025, %154
  %8029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8030 = extractvalue %dx.types.CBufRet.f32 %8029, 1
  %8031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8032 = extractvalue %dx.types.CBufRet.f32 %8031, 0
  %8033 = extractvalue %dx.types.CBufRet.f32 %8031, 1
  %8034 = extractvalue %dx.types.CBufRet.f32 %8031, 2
  %8035 = fsub fast float -0.000000e+00, %8027
  %8036 = fsub fast float -0.000000e+00, %8028
  %8037 = fsub fast float -0.000000e+00, %155
  %8038 = fsub fast float %8037, %8026
  %8039 = fadd fast float %8038, %8030
  %8040 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8035, float %8036, float %8039)  ; Dot3(ax,ay,az,bx,by,bz)
  %8041 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8032, float %8033, float %8034)  ; Dot3(ax,ay,az,bx,by,bz)
  %8042 = fdiv fast float 1.000000e+00, %8041
  %8043 = fmul fast float %8042, %8040
  %8044 = fmul fast float %8032, %8043
  %8045 = fmul fast float %8033, %8043
  %8046 = fadd fast float %8044, %8027
  %8047 = fadd fast float %8045, %8028
  %8048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8049 = extractvalue %dx.types.CBufRet.f32 %8048, 0
  %8050 = extractvalue %dx.types.CBufRet.f32 %8048, 1
  %8051 = fsub fast float %8046, %8049
  %8052 = fsub fast float %8047, %8050
  %8053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8054 = extractvalue %dx.types.CBufRet.f32 %8053, 2
  %8055 = extractvalue %dx.types.CBufRet.f32 %8053, 3
  %8056 = fmul fast float %8051, %8054
  %8057 = fmul fast float %8052, %8055
  %8058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8059 = extractvalue %dx.types.CBufRet.i32 %8058, 3
  %8060 = icmp eq i32 %8059, 0
  br i1 %8060, label %8066, label %8061

; <label>:8061                                    ; preds = %8020
  %8062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8056, float %8057, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8063 = extractvalue %dx.types.ResRet.f32 %8062, 0
  %8064 = extractvalue %dx.types.ResRet.f32 %8062, 1
  %8065 = extractvalue %dx.types.ResRet.f32 %8062, 2
  br label %8071

; <label>:8066                                    ; preds = %8020
  %8067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8056, float %8057, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8068 = extractvalue %dx.types.ResRet.f32 %8067, 0
  %8069 = extractvalue %dx.types.ResRet.f32 %8067, 1
  %8070 = extractvalue %dx.types.ResRet.f32 %8067, 2
  br label %8071

; <label>:8071                                    ; preds = %8066, %8061
  %8072 = phi float [ %8063, %8061 ], [ %8068, %8066 ]
  %8073 = phi float [ %8064, %8061 ], [ %8069, %8066 ]
  %8074 = phi float [ %8065, %8061 ], [ %8070, %8066 ]
  %8075 = extractvalue %dx.types.CBufRet.f32 %8029, 2
  %8076 = fmul fast float %8075, %8072
  %8077 = extractvalue %dx.types.CBufRet.f32 %8029, 0
  %8078 = fsub fast float %8043, %8077
  %8079 = fsub fast float %8078, %8076
  %8080 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8079)  ; FMax(a,b)
  %8081 = fmul fast float %8080, %8073
  %8082 = call float @dx.op.binary.f32(i32 36, float %8074, float %8081)  ; FMin(a,b)
  %8083 = fmul fast float %8082, 0xBFF7154760000000
  %8084 = call float @dx.op.unary.f32(i32 21, float %8083)  ; Exp(value)
  %8085 = fmul fast float %8022, %8084
  br label %8086

; <label>:8086                                    ; preds = %8071, %7915
  %8087 = phi float [ %8085, %8071 ], [ %7916, %7915 ]
  %8088 = call float @dx.op.binary.f32(i32 36, float %8087, float %8087)  ; FMin(a,b)
  %8089 = call float @dx.op.binary.f32(i32 36, float %8087, float %8088)  ; FMin(a,b)
  %8090 = fcmp fast ogt float %8089, 0.000000e+00
  br i1 %8090, label %8091, label %8399, !dx.controlflow.hints !117

; <label>:8091                                    ; preds = %8086
  %8092 = bitcast i32 %5812 to float
  %8093 = fmul fast float %8087, %6808
  %8094 = fmul fast float %8087, %6809
  %8095 = fmul fast float %8087, %6810
  %8096 = fsub fast float %6797, %5780
  %8097 = fsub fast float %6798, %5781
  %8098 = fsub fast float %6799, %5782
  %8099 = call float @dx.op.dot3.f32(i32 55, float %8096, float %8097, float %8098, float %8096, float %8097, float %8098)  ; Dot3(ax,ay,az,bx,by,bz)
  %8100 = call float @dx.op.unary.f32(i32 25, float %8099)  ; Rsqrt(value)
  %8101 = fmul fast float %8100, %8096
  %8102 = fmul fast float %8100, %8097
  %8103 = fmul fast float %8100, %8098
  %8104 = call float @dx.op.dot3.f32(i32 55, float %6797, float %6798, float %6799, float %5403, float %5404, float %5405)  ; Dot3(ax,ay,az,bx,by,bz)
  %8105 = call float @dx.op.dot3.f32(i32 55, float %5783, float %5784, float %5785, float %8101, float %8102, float %8103)  ; Dot3(ax,ay,az,bx,by,bz)
  %8106 = call float @dx.op.unary.f32(i32 7, float %8104)  ; Saturate(value)
  %8107 = fmul fast float %8106, %8106
  %8108 = fmul fast float %8107, %8092
  %8109 = call float @dx.op.unary.f32(i32 7, float %8108)  ; Saturate(value)
  %8110 = fmul fast float %8109, %8106
  %8111 = call float @dx.op.dot3.f32(i32 55, float %5403, float %5404, float %5405, float %8101, float %8102, float %8103)  ; Dot3(ax,ay,az,bx,by,bz)
  %8112 = fmul fast float %8111, %8111
  %8113 = call float @dx.op.unary.f32(i32 6, float %8104)  ; FAbs(value)
  %8114 = fsub fast float 1.000000e+00, %5806
  %8115 = fmul fast float %5788, %5788
  %8116 = fmul fast float %8115, %8114
  %8117 = fadd fast float %8116, %5806
  %8118 = bitcast float %8117 to i32
  %8119 = ashr i32 %8118, 1
  %8120 = add nsw i32 %8119, 532487669
  %8121 = bitcast i32 %8120 to float
  %8122 = fadd fast float %8121, %5788
  %8123 = fmul fast float %5806, %8112
  %8124 = fsub fast float 1.000000e+00, %8112
  %8125 = fadd fast float %8124, %8123
  %8126 = fmul fast float %8113, %8113
  %8127 = fmul fast float %8126, %8114
  %8128 = fadd fast float %8127, %5806
  %8129 = bitcast float %8128 to i32
  %8130 = ashr i32 %8129, 1
  %8131 = add nsw i32 %8130, 532487669
  %8132 = bitcast i32 %8131 to float
  %8133 = fadd fast float %8132, %8113
  %8134 = fmul fast float %8125, %8125
  %8135 = fmul fast float %8134, %8122
  %8136 = fmul fast float %8135, %8133
  %8137 = fdiv fast float 0x3FF0A00000000000, %8136
  %8138 = fmul fast float %8137, %5806
  %8139 = fmul fast float %6058, 0x3FF9999980000000
  %8140 = fsub fast float 5.000000e+00, %8139
  %8141 = call float @dx.op.unary.f32(i32 6, float %8105)  ; FAbs(value)
  %8142 = fsub fast float 1.000000e+00, %8141
  %8143 = fmul fast float %6058, 0x41D9660740000000
  %8144 = fadd fast float %8143, 0xC1EFBF8940000000
  %8145 = bitcast float %8142 to i32
  %8146 = sitofp i32 %8145 to float
  %8147 = fmul fast float %8146, %8140
  %8148 = fadd fast float %8144, %8147
  %8149 = fptosi float %8148 to i32
  %8150 = bitcast i32 %8149 to float
  %8151 = fsub fast float 1.000000e+00, %5397
  %8152 = fsub fast float 1.000000e+00, %5398
  %8153 = fsub fast float 1.000000e+00, %5786
  %8154 = fmul fast float %8150, %8151
  %8155 = fmul fast float %8150, %8152
  %8156 = fmul fast float %8150, %8153
  %8157 = fadd fast float %8154, %5397
  %8158 = fadd fast float %8155, %5398
  %8159 = fadd fast float %8156, %5786
  br i1 %6081, label %8160, label %8183

; <label>:8160                                    ; preds = %8091
  %8161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5070, float %8141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8162 = extractvalue %dx.types.ResRet.f32 %8161, 0
  %8163 = extractvalue %dx.types.ResRet.f32 %8161, 1
  %8164 = extractvalue %dx.types.ResRet.f32 %8161, 2
  %8165 = fadd fast float %8162, -5.000000e-01
  %8166 = fadd fast float %8163, -5.000000e-01
  %8167 = fadd fast float %8164, -5.000000e-01
  %8168 = fmul fast float %5397, 4.000000e+00
  %8169 = fmul fast float %8168, %8151
  %8170 = fmul fast float %8169, %8165
  %8171 = fmul fast float %5398, 4.000000e+00
  %8172 = fmul fast float %8171, %8152
  %8173 = fmul fast float %8172, %8166
  %8174 = fmul fast float %5786, 4.000000e+00
  %8175 = fmul fast float %8174, %8153
  %8176 = fmul fast float %8175, %8167
  %8177 = fadd fast float %8170, %8157
  %8178 = fadd fast float %8173, %8158
  %8179 = fadd fast float %8176, %8159
  %8180 = call float @dx.op.unary.f32(i32 7, float %8177)  ; Saturate(value)
  %8181 = call float @dx.op.unary.f32(i32 7, float %8178)  ; Saturate(value)
  %8182 = call float @dx.op.unary.f32(i32 7, float %8179)  ; Saturate(value)
  br label %8183

; <label>:8183                                    ; preds = %8160, %8091
  %8184 = phi float [ %8180, %8160 ], [ %8157, %8091 ]
  %8185 = phi float [ %8181, %8160 ], [ %8158, %8091 ]
  %8186 = phi float [ %8182, %8160 ], [ %8159, %8091 ]
  %8187 = fmul fast float %8104, 9.843750e-01
  %8188 = fadd fast float %8187, 7.812500e-03
  %8189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %8188, float %6062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8190 = extractvalue %dx.types.ResRet.f32 %8189, 0
  %8191 = extractvalue %dx.types.ResRet.f32 %8189, 1
  %8192 = extractvalue %dx.types.ResRet.f32 %8189, 2
  %8193 = extractvalue %dx.types.ResRet.f32 %8189, 3
  %8194 = fsub fast float %8192, %8190
  %8195 = fsub fast float %8193, %8191
  %8196 = fmul fast float %8194, %6068
  %8197 = fmul fast float %8195, %6068
  %8198 = fadd fast float %8196, %8190
  %8199 = fadd fast float %8197, %8191
  %8200 = fmul fast float %8198, %5397
  %8201 = fmul fast float %8198, %5398
  %8202 = fmul fast float %8198, %5786
  %8203 = fadd fast float %8200, %8199
  %8204 = fadd fast float %8201, %8199
  %8205 = fadd fast float %8202, %8199
  br i1 %6081, label %8206, label %8229

; <label>:8206                                    ; preds = %8183
  %8207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5070, float %8104, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8208 = extractvalue %dx.types.ResRet.f32 %8207, 0
  %8209 = extractvalue %dx.types.ResRet.f32 %8207, 1
  %8210 = extractvalue %dx.types.ResRet.f32 %8207, 2
  %8211 = fadd fast float %8208, -5.000000e-01
  %8212 = fadd fast float %8209, -5.000000e-01
  %8213 = fadd fast float %8210, -5.000000e-01
  %8214 = fmul fast float %5397, 4.000000e+00
  %8215 = fmul fast float %8214, %8151
  %8216 = fmul fast float %8215, %8211
  %8217 = fmul fast float %5398, 4.000000e+00
  %8218 = fmul fast float %8217, %8152
  %8219 = fmul fast float %8218, %8212
  %8220 = fmul fast float %5786, 4.000000e+00
  %8221 = fmul fast float %8220, %8153
  %8222 = fmul fast float %8221, %8213
  %8223 = fadd fast float %8216, %8203
  %8224 = fadd fast float %8219, %8204
  %8225 = fadd fast float %8222, %8205
  %8226 = call float @dx.op.unary.f32(i32 7, float %8223)  ; Saturate(value)
  %8227 = call float @dx.op.unary.f32(i32 7, float %8224)  ; Saturate(value)
  %8228 = call float @dx.op.unary.f32(i32 7, float %8225)  ; Saturate(value)
  br label %8229

; <label>:8229                                    ; preds = %8206, %8183
  %8230 = phi float [ %8226, %8206 ], [ %8203, %8183 ]
  %8231 = phi float [ %8227, %8206 ], [ %8204, %8183 ]
  %8232 = phi float [ %8228, %8206 ], [ %8205, %8183 ]
  %8233 = call float @dx.op.binary.f32(i32 35, float %8231, float %8232)  ; FMax(a,b)
  %8234 = call float @dx.op.binary.f32(i32 35, float %8230, float %8233)  ; FMax(a,b)
  %8235 = fsub fast float 1.000000e+00, %8234
  %8236 = call float @dx.op.binary.f32(i32 35, float %8113, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8237 = fdiv fast float %4418, %8236
  %8238 = fmul fast float %6706, %8237
  %8239 = fmul fast float %6708, %8237
  %8240 = fmul fast float %6710, %8237
  %8241 = call float @dx.op.unary.f32(i32 21, float %8238)  ; Exp(value)
  %8242 = call float @dx.op.unary.f32(i32 21, float %8239)  ; Exp(value)
  %8243 = call float @dx.op.unary.f32(i32 21, float %8240)  ; Exp(value)
  %8244 = call float @dx.op.unary.f32(i32 7, float %8241)  ; Saturate(value)
  %8245 = call float @dx.op.unary.f32(i32 7, float %8242)  ; Saturate(value)
  %8246 = call float @dx.op.unary.f32(i32 7, float %8243)  ; Saturate(value)
  %8247 = select i1 %6703, float %8244, float 0.000000e+00
  %8248 = select i1 %6704, float %8245, float 0.000000e+00
  %8249 = select i1 %6705, float %8246, float 0.000000e+00
  %8250 = fsub fast float -0.000000e+00, %5403
  %8251 = fsub fast float -0.000000e+00, %5404
  %8252 = fsub fast float -0.000000e+00, %5405
  %8253 = call float @dx.op.dot3.f32(i32 55, float %6797, float %6798, float %6799, float %8250, float %8251, float %8252)  ; Dot3(ax,ay,az,bx,by,bz)
  %8254 = call float @dx.op.unary.f32(i32 7, float %8253)  ; Saturate(value)
  %8255 = fmul fast float %8254, 9.843750e-01
  %8256 = fadd fast float %8255, 7.812500e-03
  %8257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %8256, float %6062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8258 = extractvalue %dx.types.ResRet.f32 %8257, 0
  %8259 = extractvalue %dx.types.ResRet.f32 %8257, 1
  %8260 = extractvalue %dx.types.ResRet.f32 %8257, 2
  %8261 = extractvalue %dx.types.ResRet.f32 %8257, 3
  %8262 = fsub fast float %8260, %8258
  %8263 = fsub fast float %8261, %8259
  %8264 = fmul fast float %8262, %6068
  %8265 = fmul fast float %8263, %6068
  %8266 = fadd fast float %8264, %8258
  %8267 = fadd fast float %8265, %8259
  %8268 = fmul fast float %8266, %5397
  %8269 = fmul fast float %8266, %5398
  %8270 = fmul fast float %8266, %5786
  %8271 = fadd fast float %8268, %8267
  %8272 = fadd fast float %8269, %8267
  %8273 = fadd fast float %8270, %8267
  br i1 %6081, label %8274, label %8297

; <label>:8274                                    ; preds = %8229
  %8275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5070, float %8254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8276 = extractvalue %dx.types.ResRet.f32 %8275, 0
  %8277 = extractvalue %dx.types.ResRet.f32 %8275, 1
  %8278 = extractvalue %dx.types.ResRet.f32 %8275, 2
  %8279 = fadd fast float %8276, -5.000000e-01
  %8280 = fadd fast float %8277, -5.000000e-01
  %8281 = fadd fast float %8278, -5.000000e-01
  %8282 = fmul fast float %5397, 4.000000e+00
  %8283 = fmul fast float %8282, %8151
  %8284 = fmul fast float %8283, %8279
  %8285 = fmul fast float %5398, 4.000000e+00
  %8286 = fmul fast float %8285, %8152
  %8287 = fmul fast float %8286, %8280
  %8288 = fmul fast float %5786, 4.000000e+00
  %8289 = fmul fast float %8288, %8153
  %8290 = fmul fast float %8289, %8281
  %8291 = fadd fast float %8284, %8271
  %8292 = fadd fast float %8287, %8272
  %8293 = fadd fast float %8290, %8273
  %8294 = call float @dx.op.unary.f32(i32 7, float %8291)  ; Saturate(value)
  %8295 = call float @dx.op.unary.f32(i32 7, float %8292)  ; Saturate(value)
  %8296 = call float @dx.op.unary.f32(i32 7, float %8293)  ; Saturate(value)
  br label %8297

; <label>:8297                                    ; preds = %8274, %8229
  %8298 = phi float [ %8294, %8274 ], [ %8271, %8229 ]
  %8299 = phi float [ %8295, %8274 ], [ %8272, %8229 ]
  %8300 = phi float [ %8296, %8274 ], [ %8273, %8229 ]
  %8301 = call float @dx.op.binary.f32(i32 35, float %8299, float %8300)  ; FMax(a,b)
  %8302 = call float @dx.op.binary.f32(i32 35, float %8298, float %8301)  ; FMax(a,b)
  %8303 = fsub fast float 1.000000e+00, %8302
  %8304 = fmul fast float %5803, %6770
  %8305 = fadd fast float %6772, %8304
  %8306 = call float @dx.op.unary.f32(i32 7, float %8305)  ; Saturate(value)
  %8307 = fsub fast float %6797, %5794
  %8308 = fsub fast float %6798, %5795
  %8309 = fsub fast float %6799, %5796
  %8310 = call float @dx.op.dot3.f32(i32 55, float %8307, float %8308, float %8309, float %8307, float %8308, float %8309)  ; Dot3(ax,ay,az,bx,by,bz)
  %8311 = call float @dx.op.unary.f32(i32 25, float %8310)  ; Rsqrt(value)
  %8312 = fmul fast float %8311, %8307
  %8313 = fmul fast float %8311, %8308
  %8314 = fmul fast float %8311, %8309
  %8315 = call float @dx.op.dot3.f32(i32 55, float %8250, float %8251, float %8252, float %8312, float %8313, float %8314)  ; Dot3(ax,ay,az,bx,by,bz)
  %8316 = fmul fast float %8315, %8315
  %8317 = call float @dx.op.unary.f32(i32 6, float %8254)  ; FAbs(value)
  %8318 = call float @dx.op.binary.f32(i32 35, float %8306, float 0x3F847AE140000000)  ; FMax(a,b)
  %8319 = fmul fast float %8318, %8318
  %8320 = fmul fast float %8319, %8319
  %8321 = fsub fast float 1.000000e+00, %8320
  %8322 = fmul fast float %8115, %8321
  %8323 = fadd fast float %8322, %8320
  %8324 = bitcast float %8323 to i32
  %8325 = ashr i32 %8324, 1
  %8326 = add nsw i32 %8325, 532487669
  %8327 = bitcast i32 %8326 to float
  %8328 = fadd fast float %8327, %5788
  %8329 = fmul fast float %8320, %8316
  %8330 = fsub fast float 1.000000e+00, %8316
  %8331 = fadd fast float %8330, %8329
  %8332 = fmul fast float %8317, %8317
  %8333 = fmul fast float %8332, %8321
  %8334 = fadd fast float %8333, %8320
  %8335 = bitcast float %8334 to i32
  %8336 = ashr i32 %8335, 1
  %8337 = add nsw i32 %8336, 532487669
  %8338 = bitcast i32 %8337 to float
  %8339 = fadd fast float %8338, %8317
  %8340 = fmul fast float %8331, %8331
  %8341 = fmul fast float %8340, %8328
  %8342 = fmul fast float %8341, %8339
  %8343 = fdiv fast float 0x3FF0A00000000000, %8342
  %8344 = fmul fast float %8343, %8320
  %8345 = fmul fast float %8254, %8247
  %8346 = fmul fast float %8254, %8248
  %8347 = fmul fast float %8254, %8249
  %8348 = fmul fast float %8345, %8303
  %8349 = fmul fast float %8348, %8344
  %8350 = fmul fast float %8346, %8303
  %8351 = fmul fast float %8350, %8344
  %8352 = fmul fast float %8347, %8303
  %8353 = fmul fast float %8352, %8344
  %8354 = fmul fast float %8184, %8138
  %8355 = fmul fast float %8185, %8138
  %8356 = fmul fast float %8186, %8138
  %8357 = fsub fast float 1.000000e+00, %8105
  %8358 = bitcast float %8357 to i32
  %8359 = sitofp i32 %8358 to float
  %8360 = fmul fast float %8359, 5.000000e+00
  %8361 = fadd fast float %8360, 0xC1EFBF8940000000
  %8362 = fptosi float %8361 to i32
  %8363 = bitcast i32 %8362 to float
  %8364 = fmul fast float %8363, %5071
  %8365 = fmul fast float %8235, %8364
  %8366 = fmul fast float %8365, %6698
  %8367 = fmul fast float %8365, %6699
  %8368 = fmul fast float %8365, %6700
  %8369 = fadd fast float %8366, %8354
  %8370 = fadd fast float %8367, %8355
  %8371 = fadd fast float %8368, %8356
  %8372 = fmul fast float %8369, %8110
  %8373 = fmul fast float %8370, %8110
  %8374 = fmul fast float %8371, %8110
  %8375 = fmul fast float %8110, %8093
  %8376 = fmul fast float %8375, %8235
  %8377 = fmul fast float %8110, %8094
  %8378 = fmul fast float %8377, %8235
  %8379 = fmul fast float %8110, %8095
  %8380 = fmul fast float %8379, %8235
  %8381 = fadd fast float %8372, %8349
  %8382 = fadd fast float %8373, %8351
  %8383 = fadd fast float %8374, %8353
  %8384 = fmul fast float %8381, %8093
  %8385 = fmul fast float %8382, %8094
  %8386 = fmul fast float %8383, %8095
  %8387 = fadd fast float %8376, %6787
  %8388 = fmul fast float %8387, %5067
  %8389 = fadd fast float %8378, %6789
  %8390 = fmul fast float %8389, %5067
  %8391 = fadd fast float %8380, %6791
  %8392 = fmul fast float %8391, %5067
  %8393 = fadd fast float %8384, %6751
  %8394 = fmul fast float %8393, %5067
  %8395 = fadd fast float %8385, %6754
  %8396 = fmul fast float %8395, %5067
  %8397 = fadd fast float %8386, %6757
  %8398 = fmul fast float %8397, %5067
  br label %8399

; <label>:8399                                    ; preds = %8297, %8086, %6681
  %8400 = phi float [ %6752, %6681 ], [ %6752, %8086 ], [ %8394, %8297 ]
  %8401 = phi float [ %6755, %6681 ], [ %6755, %8086 ], [ %8396, %8297 ]
  %8402 = phi float [ %6758, %6681 ], [ %6758, %8086 ], [ %8398, %8297 ]
  %8403 = phi float [ %6788, %6681 ], [ %6788, %8086 ], [ %8388, %8297 ]
  %8404 = phi float [ %6790, %6681 ], [ %6790, %8086 ], [ %8390, %8297 ]
  %8405 = phi float [ %6792, %6681 ], [ %6792, %8086 ], [ %8392, %8297 ]
  %8406 = fmul fast float %6727, %5067
  %8407 = fmul fast float %6728, %5067
  %8408 = fmul fast float %6729, %5067
  %8409 = fadd fast float %8406, 1.000000e+00
  %8410 = fadd fast float %8407, 1.000000e+00
  %8411 = fadd fast float %8408, 1.000000e+00
  %8412 = call float @dx.op.dot3.f32(i32 55, float %8409, float %8410, float %8411, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8413 = fsub fast float 1.000000e+00, %8412
  %8414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8415 = extractvalue %dx.types.CBufRet.f32 %8414, 0
  %8416 = fmul fast float %8415, %6733
  %8417 = fsub fast float 1.000000e+00, %5777
  %8418 = extractvalue %dx.types.CBufRet.f32 %8414, 2
  %8419 = fmul fast float %8418, %8417
  %8420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8421 = extractvalue %dx.types.CBufRet.f32 %8420, 3
  %8422 = fsub fast float 1.000000e+00, %5074
  %8423 = call float @dx.op.unary.f32(i32 7, float %8422)  ; Saturate(value)
  %8424 = fadd fast float %8405, %5073
  %8425 = fmul fast float %8424, %5074
  %8426 = fmul fast float %8423, %8421
  %8427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8428 = extractvalue %dx.types.CBufRet.f32 %8427, 3
  %8429 = fmul fast float %8403, %5400
  %8430 = fmul fast float %8404, %5401
  %8431 = fmul fast float %8405, %5402
  %8432 = fcmp fast ogt float %86, %175
  %8433 = and i1 %8432, %5142
  %8434 = or i1 %5221, %8433
  %8435 = icmp eq i32 %5141, 2
  %8436 = fcmp fast ole float %86, %175
  %8437 = and i1 %8436, %8435
  %8438 = or i1 %8437, %8434
  br i1 %8433, label %8439, label %8696

; <label>:8439                                    ; preds = %8399
  %8440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8441 = extractvalue %dx.types.CBufRet.f32 %8440, 2
  %8442 = extractvalue %dx.types.CBufRet.f32 %8440, 3
  %8443 = fmul fast float %8441, %98
  %8444 = fmul fast float %8442, %99
  %8445 = call float @dx.op.unary.f32(i32 7, float %8443)  ; Saturate(value)
  %8446 = call float @dx.op.unary.f32(i32 7, float %8444)  ; Saturate(value)
  %8447 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8445, float %8446, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8448 = extractvalue %dx.types.ResRet.f32 %8447, 0
  %8449 = extractvalue %dx.types.ResRet.f32 %8447, 1
  %8450 = extractvalue %dx.types.ResRet.f32 %8447, 2
  %8451 = extractvalue %dx.types.ResRet.f32 %8447, 3
  %8452 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8445, float %8446, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8453 = extractvalue %dx.types.ResRet.f32 %8452, 0
  %8454 = extractvalue %dx.types.ResRet.f32 %8452, 1
  %8455 = extractvalue %dx.types.ResRet.f32 %8452, 2
  %8456 = extractvalue %dx.types.ResRet.f32 %8452, 3
  %8457 = call float @dx.op.binary.f32(i32 35, float %8449, float %8450)  ; FMax(a,b)
  %8458 = call float @dx.op.binary.f32(i32 35, float %8448, float %8457)  ; FMax(a,b)
  %8459 = call float @dx.op.binary.f32(i32 35, float %8458, float %8451)  ; FMax(a,b)
  %8460 = call float @dx.op.binary.f32(i32 36, float %8454, float %8455)  ; FMin(a,b)
  %8461 = call float @dx.op.binary.f32(i32 36, float %8453, float %8460)  ; FMin(a,b)
  %8462 = call float @dx.op.binary.f32(i32 36, float %8461, float %8456)  ; FMin(a,b)
  %8463 = fmul fast float %8459, 2.550000e+02
  %8464 = fadd fast float %8463, 0x3F70101020000000
  %8465 = fptoui float %8464 to i32
  %8466 = fmul fast float %8462, 2.550000e+02
  %8467 = fadd fast float %8466, 0x3F70101020000000
  %8468 = fptoui float %8467 to i32
  %8469 = icmp ult i32 %8465, %8468
  br i1 %8469, label %8470, label %8638

; <label>:8470                                    ; preds = %8439
  %8471 = fcmp fast ogt float %85, 9.843750e-01
  %8472 = fadd fast float %86, -4.000000e+00
  %8473 = select i1 %8471, float -4.000000e+00, float %8472
  %8474 = call float @dx.op.binary.f32(i32 35, float %8473, float 0.000000e+00)  ; FMax(a,b)
  %8475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8476 = extractvalue %dx.types.CBufRet.f32 %8475, 0
  %8477 = fadd fast float %8476, %8474
  %8478 = extractvalue %dx.types.CBufRet.f32 %8475, 2
  %8479 = fmul fast float %8477, %8478
  %8480 = call float @dx.op.unary.f32(i32 23, float %8479)  ; Log(value)
  %8481 = extractvalue %dx.types.CBufRet.f32 %8475, 3
  %8482 = fmul fast float %8481, %8480
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 2
  %8485 = fmul fast float %8482, %8484
  %8486 = call float @dx.op.unary.f32(i32 7, float %8485)  ; Saturate(value)
  %8487 = uitofp i32 %8465 to float
  %8488 = uitofp i32 %8468 to float
  %8489 = fadd fast float %8487, 5.000000e-01
  %8490 = fadd fast float %8488, 5.000000e-01
  %8491 = fmul fast float %8484, %8489
  %8492 = fmul fast float %8484, %8490
  %8493 = fadd fast float %8491, 0x3F0FFB4800000000
  %8494 = fadd fast float %8492, 0xBF0FFB4800000000
  %8495 = call float @dx.op.binary.f32(i32 35, float %8486, float %8493)  ; FMax(a,b)
  %8496 = call float @dx.op.binary.f32(i32 36, float %8495, float %8494)  ; FMin(a,b)
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 1
  %8499 = extractvalue %dx.types.CBufRet.f32 %8497, 2
  %8500 = extractvalue %dx.types.CBufRet.f32 %8497, 0
  %8501 = fmul fast float %8498, %8496
  %8502 = fadd fast float %8500, %8501
  %8503 = fadd fast float %8500, %8499
  %8504 = fsub fast float %8498, %8499
  %8505 = fadd fast float %8504, %8500
  %8506 = call float @dx.op.binary.f32(i32 35, float %8502, float %8503)  ; FMax(a,b)
  %8507 = call float @dx.op.binary.f32(i32 36, float %8506, float %8505)  ; FMin(a,b)
  %8508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %8445, float %8446, float %8507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8509 = extractvalue %dx.types.ResRet.f32 %8508, 0
  %8510 = extractvalue %dx.types.ResRet.f32 %8508, 1
  %8511 = extractvalue %dx.types.ResRet.f32 %8508, 2
  %8512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8513 = extractvalue %dx.types.CBufRet.i32 %8512, 0
  %8514 = extractvalue %dx.types.CBufRet.i32 %8512, 1
  %8515 = uitofp i32 %8513 to float
  %8516 = uitofp i32 %8514 to float
  %8517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8518 = extractvalue %dx.types.CBufRet.f32 %8517, 0
  %8519 = extractvalue %dx.types.CBufRet.f32 %8517, 1
  %8520 = fmul fast float %8515, %8445
  %8521 = fmul fast float %8516, %8446
  %8522 = fadd fast float %8520, -5.000000e-01
  %8523 = fadd fast float %8521, -5.000000e-01
  %8524 = call float @dx.op.unary.f32(i32 22, float %8522)  ; Frc(value)
  %8525 = call float @dx.op.unary.f32(i32 22, float %8523)  ; Frc(value)
  %8526 = fmul fast float %8524, %8524
  %8527 = fmul fast float %8526, %8524
  %8528 = fsub fast float 3.000000e+00, %8524
  %8529 = fmul fast float %8526, %8528
  %8530 = fmul fast float %8524, 3.000000e+00
  %8531 = fmul fast float %8527, 3.000000e+00
  %8532 = fmul fast float %8526, 6.000000e+00
  %8533 = fsub fast float %8531, %8532
  %8534 = fadd fast float %8533, 4.000000e+00
  %8535 = fmul fast float %8534, 0x3FC5555560000000
  %8536 = fmul fast float %8527, -3.000000e+00
  %8537 = fadd fast float %8526, %8524
  %8538 = fmul fast float %8537, 3.000000e+00
  %8539 = fadd fast float %8536, 1.000000e+00
  %8540 = fadd fast float %8539, %8538
  %8541 = fmul fast float %8527, 0x3FC5555560000000
  %8542 = fmul fast float %8525, %8525
  %8543 = fmul fast float %8542, %8525
  %8544 = fsub fast float 3.000000e+00, %8525
  %8545 = fmul fast float %8542, %8544
  %8546 = fmul fast float %8525, 3.000000e+00
  %8547 = fmul fast float %8543, 3.000000e+00
  %8548 = fmul fast float %8542, 6.000000e+00
  %8549 = fsub fast float %8547, %8548
  %8550 = fadd fast float %8549, 4.000000e+00
  %8551 = fmul fast float %8550, 0x3FC5555560000000
  %8552 = fmul fast float %8543, -3.000000e+00
  %8553 = fadd fast float %8542, %8525
  %8554 = fmul fast float %8553, 3.000000e+00
  %8555 = fadd fast float %8552, 1.000000e+00
  %8556 = fadd fast float %8555, %8554
  %8557 = fmul fast float %8543, 0x3FC5555560000000
  %8558 = fadd fast float %8524, 1.000000e+00
  %8559 = fsub fast float 1.000000e+00, %8530
  %8560 = fadd fast float %8559, %8529
  %8561 = fadd fast float %8560, %8534
  %8562 = fmul fast float %8561, 0x3FC5555560000000
  %8563 = fdiv fast float %8535, %8562
  %8564 = fsub fast float %8558, %8563
  %8565 = fsub fast float 1.000000e+00, %8524
  %8566 = fadd fast float %8540, %8527
  %8567 = fmul fast float %8566, 0x3FC5555560000000
  %8568 = fdiv fast float %8541, %8567
  %8569 = fadd fast float %8565, %8568
  %8570 = fadd fast float %8525, 1.000000e+00
  %8571 = fsub fast float 1.000000e+00, %8546
  %8572 = fadd fast float %8571, %8545
  %8573 = fadd fast float %8572, %8550
  %8574 = fmul fast float %8573, 0x3FC5555560000000
  %8575 = fdiv fast float %8551, %8574
  %8576 = fsub fast float %8570, %8575
  %8577 = fsub fast float 1.000000e+00, %8525
  %8578 = fadd fast float %8556, %8543
  %8579 = fmul fast float %8578, 0x3FC5555560000000
  %8580 = fdiv fast float %8557, %8579
  %8581 = fadd fast float %8580, %8577
  %8582 = fmul fast float %8564, %8518
  %8583 = fsub fast float %8445, %8582
  %8584 = fmul fast float %8569, %8518
  %8585 = fadd fast float %8584, %8445
  %8586 = fmul fast float %8581, %8519
  %8587 = fadd fast float %8586, %8446
  %8588 = fmul fast float %8576, %8519
  %8589 = fsub fast float %8446, %8588
  %8590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8583, float %8589, float %8507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8591 = extractvalue %dx.types.ResRet.f32 %8590, 0
  %8592 = extractvalue %dx.types.ResRet.f32 %8590, 1
  %8593 = extractvalue %dx.types.ResRet.f32 %8590, 2
  %8594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8585, float %8589, float %8507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8595 = extractvalue %dx.types.ResRet.f32 %8594, 0
  %8596 = extractvalue %dx.types.ResRet.f32 %8594, 1
  %8597 = extractvalue %dx.types.ResRet.f32 %8594, 2
  %8598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8583, float %8587, float %8507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8599 = extractvalue %dx.types.ResRet.f32 %8598, 0
  %8600 = extractvalue %dx.types.ResRet.f32 %8598, 1
  %8601 = extractvalue %dx.types.ResRet.f32 %8598, 2
  %8602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8585, float %8587, float %8507, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8603 = extractvalue %dx.types.ResRet.f32 %8602, 0
  %8604 = extractvalue %dx.types.ResRet.f32 %8602, 1
  %8605 = extractvalue %dx.types.ResRet.f32 %8602, 2
  %8606 = fsub fast float %8599, %8591
  %8607 = fsub fast float %8600, %8592
  %8608 = fsub fast float %8601, %8593
  %8609 = fmul fast float %8606, %8579
  %8610 = fmul fast float %8607, %8579
  %8611 = fmul fast float %8608, %8579
  %8612 = fadd fast float %8609, %8591
  %8613 = fadd fast float %8610, %8592
  %8614 = fadd fast float %8611, %8593
  %8615 = fsub fast float %8603, %8595
  %8616 = fsub fast float %8604, %8596
  %8617 = fsub fast float %8605, %8597
  %8618 = fmul fast float %8615, %8579
  %8619 = fmul fast float %8616, %8579
  %8620 = fmul fast float %8617, %8579
  %8621 = fsub fast float %8595, %8612
  %8622 = fadd fast float %8621, %8618
  %8623 = fsub fast float %8596, %8613
  %8624 = fadd fast float %8623, %8619
  %8625 = fsub fast float %8597, %8614
  %8626 = fadd fast float %8625, %8620
  %8627 = fmul fast float %8622, %8567
  %8628 = fmul fast float %8624, %8567
  %8629 = fmul fast float %8626, %8567
  %8630 = fadd fast float %8627, %8612
  %8631 = fadd fast float %8628, %8613
  %8632 = fadd fast float %8629, %8614
  %8633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8634 = extractvalue %dx.types.CBufRet.f32 %8633, 1
  %8635 = fmul fast float %8630, %8634
  %8636 = fmul fast float %8631, %8634
  %8637 = fmul fast float %8632, %8634
  br label %8638

; <label>:8638                                    ; preds = %8470, %8439
  %8639 = phi float [ %8509, %8470 ], [ 1.000000e+00, %8439 ]
  %8640 = phi float [ %8510, %8470 ], [ 1.000000e+00, %8439 ]
  %8641 = phi float [ %8511, %8470 ], [ 1.000000e+00, %8439 ]
  %8642 = phi float [ %8635, %8470 ], [ 0.000000e+00, %8439 ]
  %8643 = phi float [ %8636, %8470 ], [ 0.000000e+00, %8439 ]
  %8644 = phi float [ %8637, %8470 ], [ 0.000000e+00, %8439 ]
  %8645 = fmul fast float %8642, %8413
  %8646 = fmul fast float %8643, %8413
  %8647 = fmul fast float %8644, %8413
  %8648 = call float @dx.op.dot3.f32(i32 55, float %8639, float %8640, float %8641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8649 = call float @dx.op.dot3.f32(i32 55, float %8645, float %8646, float %8647, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8650 = select i1 %214, float %8648, float %8639
  %8651 = select i1 %214, float %8648, float %8640
  %8652 = select i1 %214, float 1.000000e+00, float %8641
  %8653 = select i1 %214, float %8649, float %8645
  %8654 = select i1 %214, float 0.000000e+00, float %8646
  %8655 = select i1 %214, float 0.000000e+00, float %8647
  %8656 = fmul fast float %8650, %8429
  %8657 = fmul fast float %8651, %8430
  %8658 = fmul fast float %8652, %8431
  %8659 = fadd fast float %8656, %8653
  %8660 = fadd fast float %8657, %8654
  %8661 = fadd fast float %8655, %8658
  %8662 = fmul fast float %8650, %8400
  %8663 = fmul fast float %8651, %8401
  %8664 = fmul fast float %8652, %8402
  %8665 = fmul fast float %123, %8441
  %8666 = fmul fast float %125, %8442
  %8667 = fsub fast float 1.000000e+00, %8665
  %8668 = fsub fast float 1.000000e+00, %8666
  %8669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8670 = extractvalue %dx.types.CBufRet.f32 %8669, 0
  %8671 = extractvalue %dx.types.CBufRet.f32 %8669, 1
  %8672 = extractvalue %dx.types.CBufRet.f32 %8669, 2
  %8673 = fmul fast float %8667, %8670
  %8674 = fmul fast float %8667, %8671
  %8675 = fmul fast float %8667, %8672
  %8676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8677 = extractvalue %dx.types.CBufRet.f32 %8676, 0
  %8678 = extractvalue %dx.types.CBufRet.f32 %8676, 1
  %8679 = extractvalue %dx.types.CBufRet.f32 %8676, 2
  %8680 = fmul fast float %8668, %8677
  %8681 = fmul fast float %8668, %8678
  %8682 = fmul fast float %8668, %8679
  %8683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8684 = extractvalue %dx.types.CBufRet.f32 %8683, 0
  %8685 = extractvalue %dx.types.CBufRet.f32 %8683, 1
  %8686 = extractvalue %dx.types.CBufRet.f32 %8683, 2
  %8687 = fadd fast float %8680, %8684
  %8688 = fadd fast float %8687, %8673
  %8689 = fadd fast float %8681, %8685
  %8690 = fadd fast float %8689, %8674
  %8691 = fadd fast float %8682, %8686
  %8692 = fadd fast float %8691, %8675
  %8693 = fmul fast float %8688, %175
  %8694 = fmul fast float %8690, %175
  %8695 = fmul fast float %8692, %175
  br label %8696

; <label>:8696                                    ; preds = %8638, %8399
  %8697 = phi float [ %8693, %8638 ], [ %153, %8399 ]
  %8698 = phi float [ %8694, %8638 ], [ %154, %8399 ]
  %8699 = phi float [ %8695, %8638 ], [ %155, %8399 ]
  %8700 = phi float [ %175, %8638 ], [ %86, %8399 ]
  %8701 = phi float [ %8659, %8638 ], [ %8429, %8399 ]
  %8702 = phi float [ %8660, %8638 ], [ %8430, %8399 ]
  %8703 = phi float [ %8661, %8638 ], [ %8431, %8399 ]
  %8704 = phi float [ %8662, %8638 ], [ %8400, %8399 ]
  %8705 = phi float [ %8663, %8638 ], [ %8401, %8399 ]
  %8706 = phi float [ %8664, %8638 ], [ %8402, %8399 ]
  %8707 = phi float [ %8639, %8638 ], [ 1.000000e+00, %8399 ]
  br i1 %8438, label %9858, label %8708

; <label>:8708                                    ; preds = %8696
  %8709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8710 = extractvalue %dx.types.CBufRet.f32 %8709, 0
  %8711 = extractvalue %dx.types.CBufRet.f32 %8709, 1
  %8712 = extractvalue %dx.types.CBufRet.f32 %8709, 2
  %8713 = extractvalue %dx.types.CBufRet.f32 %8709, 3
  %8714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8715 = extractvalue %dx.types.CBufRet.f32 %8714, 0
  %8716 = extractvalue %dx.types.CBufRet.f32 %8714, 1
  %8717 = extractvalue %dx.types.CBufRet.f32 %8714, 2
  %8718 = extractvalue %dx.types.CBufRet.f32 %8714, 3
  %8719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8720 = extractvalue %dx.types.CBufRet.f32 %8719, 0
  %8721 = extractvalue %dx.types.CBufRet.f32 %8719, 1
  %8722 = extractvalue %dx.types.CBufRet.f32 %8719, 2
  %8723 = extractvalue %dx.types.CBufRet.f32 %8719, 3
  %8724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8725 = extractvalue %dx.types.CBufRet.f32 %8724, 0
  %8726 = extractvalue %dx.types.CBufRet.f32 %8724, 1
  %8727 = extractvalue %dx.types.CBufRet.f32 %8724, 2
  %8728 = extractvalue %dx.types.CBufRet.f32 %8724, 3
  %8729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8730 = extractvalue %dx.types.CBufRet.f32 %8729, 3
  %8731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8732 = extractvalue %dx.types.CBufRet.f32 %8731, 3
  %8733 = extractvalue %dx.types.CBufRet.f32 %8731, 0
  %8734 = extractvalue %dx.types.CBufRet.f32 %8731, 1
  %8735 = extractvalue %dx.types.CBufRet.f32 %8731, 2
  %8736 = fcmp fast olt float %8735, -5.000000e-01
  %8737 = call float @dx.op.dot3.f32(i32 55, float %8697, float %8698, float %8699, float %8697, float %8698, float %8699)  ; Dot3(ax,ay,az,bx,by,bz)
  %8738 = call float @dx.op.unary.f32(i32 25, float %8737)  ; Rsqrt(value)
  %8739 = fmul fast float %8738, %8737
  %8740 = fmul fast float %8738, %8697
  %8741 = fmul fast float %8738, %8698
  %8742 = fmul fast float %8738, %8699
  %8743 = fadd fast float %8739, %8713
  %8744 = call float @dx.op.dot3.f32(i32 55, float %8740, float %8741, float %8742, float %8710, float %8711, float %8712)  ; Dot3(ax,ay,az,bx,by,bz)
  %8745 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8746 = extractvalue %dx.types.CBufRet.i32 %8745, 1
  %8747 = and i32 %8746, 1
  %8748 = icmp ne i32 %8747, 0
  %8749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8750 = extractvalue %dx.types.CBufRet.f32 %8749, 2
  %8751 = fcmp fast ogt float %8750, 0.000000e+00
  %8752 = and i1 %8748, %8751
  br i1 %8752, label %8753, label %9155, !dx.controlflow.hints !118

; <label>:8753                                    ; preds = %8708
  %8754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8755 = extractvalue %dx.types.CBufRet.f32 %8754, 3
  %8756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8757 = extractvalue %dx.types.CBufRet.f32 %8756, 2
  %8758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8759 = extractvalue %dx.types.CBufRet.f32 %8758, 2
  %8760 = fsub fast float %8757, %8759
  %8761 = and i32 %8746, 2
  %8762 = extractvalue %dx.types.CBufRet.i32 %8745, 0
  %8763 = call i32 @dx.op.binary.i32(i32 40, i32 %8762, i32 3)  ; UMin(a,b)
  %8764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8765 = extractvalue %dx.types.CBufRet.f32 %8764, 0
  %8766 = extractvalue %dx.types.CBufRet.f32 %8764, 1
  %8767 = extractvalue %dx.types.CBufRet.f32 %8758, 0
  %8768 = extractvalue %dx.types.CBufRet.f32 %8758, 1
  %8769 = fsub fast float %8765, %8767
  %8770 = fsub fast float %8766, %8768
  %8771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8772 = extractvalue %dx.types.CBufRet.f32 %8771, 0
  %8773 = fcmp fast ogt float %8772, 0.000000e+00
  %8774 = fsub fast float -0.000000e+00, %8769
  %8775 = fsub fast float -0.000000e+00, %8770
  %8776 = call float @dx.op.dot2.f32(i32 54, float %8740, float %8741, float %8740, float %8741)  ; Dot2(ax,ay,bx,by)
  %8777 = call float @dx.op.dot2.f32(i32 54, float %8740, float %8741, float %8774, float %8775)  ; Dot2(ax,ay,bx,by)
  %8778 = fmul fast float %8777, 2.000000e+00
  %8779 = call float @dx.op.dot2.f32(i32 54, float %8774, float %8775, float %8774, float %8775)  ; Dot2(ax,ay,bx,by)
  %8780 = fmul fast float %8772, %8772
  %8781 = fsub fast float %8779, %8780
  %8782 = fmul fast float %8778, %8778
  %8783 = fmul fast float %8776, 4.000000e+00
  %8784 = fmul fast float %8783, %8781
  %8785 = fsub fast float %8782, %8784
  %8786 = fcmp fast ogt float %8785, 0.000000e+00
  br i1 %8786, label %8787, label %8802

; <label>:8787                                    ; preds = %8753
  %8788 = fcmp fast ogt float %8778, 0.000000e+00
  %8789 = call float @dx.op.unary.f32(i32 24, float %8785)  ; Sqrt(value)
  %8790 = fsub fast float -0.000000e+00, %8789
  %8791 = select i1 %8788, float %8789, float %8790
  %8792 = fadd fast float %8791, %8778
  %8793 = fmul float %8792, -5.000000e-01
  %8794 = fdiv fast float %8793, %8776
  %8795 = call float @dx.op.binary.f32(i32 35, float %8794, float 0.000000e+00)  ; FMax(a,b)
  %8796 = call float @dx.op.binary.f32(i32 36, float %8739, float %8795)  ; FMin(a,b)
  %8797 = fdiv fast float %8781, %8793
  %8798 = call float @dx.op.binary.f32(i32 35, float %8797, float 0.000000e+00)  ; FMax(a,b)
  %8799 = call float @dx.op.binary.f32(i32 36, float %8739, float %8798)  ; FMin(a,b)
  %8800 = call float @dx.op.binary.f32(i32 36, float %8796, float %8799)  ; FMin(a,b)
  %8801 = call float @dx.op.binary.f32(i32 35, float %8796, float %8799)  ; FMax(a,b)
  br label %8802

; <label>:8802                                    ; preds = %8787, %8753
  %8803 = phi float [ %8801, %8787 ], [ -1.000000e+00, %8753 ]
  %8804 = phi float [ %8800, %8787 ], [ -1.000000e+00, %8753 ]
  %8805 = phi i1 [ true, %8787 ], [ false, %8753 ]
  %8806 = and i1 %8773, %8805
  br i1 %8806, label %8807, label %8809

; <label>:8807                                    ; preds = %8802
  %8808 = fcmp fast oeq float %8804, %8803
  br i1 %8808, label %9108, label %8810

; <label>:8809                                    ; preds = %8802
  br i1 %8773, label %9108, label %8810

; <label>:8810                                    ; preds = %8809, %8807
  %8811 = phi float [ %8739, %8809 ], [ %8803, %8807 ]
  %8812 = phi float [ 0.000000e+00, %8809 ], [ %8804, %8807 ]
  %8813 = icmp ne i32 %8761, 0
  %8814 = fmul fast float %8811, %8742
  %8815 = fadd fast float %8814, %8755
  %8816 = fmul fast float %8815, %8811
  %8817 = select i1 %8813, float 0.000000e+00, float %8816
  %8818 = fcmp fast oeq float %8742, 0.000000e+00
  %8819 = fdiv fast float %8760, %8742
  %8820 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8819)  ; FMax(a,b)
  %8821 = select i1 %8818, float %8811, float %8820
  %8822 = call float @dx.op.binary.f32(i32 36, float %8811, float %8821)  ; FMin(a,b)
  %8823 = fcmp fast ogt float %8742, 0.000000e+00
  %8824 = fcmp fast olt float %8760, 0.000000e+00
  br i1 %8823, label %8825, label %8882

; <label>:8825                                    ; preds = %8810
  %8826 = icmp eq i32 %8761, 0
  br i1 %8824, label %8827, label %8871

; <label>:8827                                    ; preds = %8825
  %8828 = select i1 %8826, float %8811, float 0.000000e+00
  %8829 = fsub fast float -0.000000e+00, %8828
  %8830 = call float @dx.op.unary.f32(i32 6, float %8829)  ; FAbs(value)
  %8831 = fmul fast float %8828, %8742
  %8832 = fadd fast float %8831, %8755
  %8833 = fmul fast float %8830, %8832
  %8834 = fsub fast float %8817, %8833
  %8835 = fsub fast float %8811, %8830
  %8836 = select i1 %8826, float %8835, float 0.000000e+00
  %8837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8838 = extractvalue %dx.types.CBufRet.f32 %8837, 0
  %8839 = extractvalue %dx.types.CBufRet.f32 %8837, 1
  %8840 = extractvalue %dx.types.CBufRet.f32 %8837, 2
  %8841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8842 = extractvalue %dx.types.CBufRet.f32 %8841, 0
  %8843 = extractvalue %dx.types.CBufRet.f32 %8841, 1
  %8844 = extractvalue %dx.types.CBufRet.f32 %8841, 2
  %8845 = extractvalue %dx.types.CBufRet.f32 %8841, 3
  %8846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8847 = extractvalue %dx.types.CBufRet.f32 %8846, 3
  %8848 = call float @dx.op.binary.f32(i32 36, float %8834, float %8847)  ; FMin(a,b)
  %8849 = fmul fast float %8845, %8836
  %8850 = call float @dx.op.unary.f32(i32 7, float %8849)  ; Saturate(value)
  %8851 = fsub fast float %8842, %8838
  %8852 = fsub fast float %8843, %8839
  %8853 = fsub fast float %8844, %8840
  %8854 = fmul fast float %8850, %8851
  %8855 = fmul fast float %8850, %8852
  %8856 = fmul fast float %8850, %8853
  %8857 = fadd fast float %8854, %8838
  %8858 = fadd fast float %8855, %8839
  %8859 = fadd fast float %8856, %8840
  %8860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8861 = extractvalue %dx.types.CBufRet.f32 %8860, 0
  %8862 = extractvalue %dx.types.CBufRet.f32 %8860, 1
  %8863 = fadd fast float %8862, %8861
  %8864 = call float @dx.op.unary.f32(i32 7, float %8863)  ; Saturate(value)
  %8865 = extractvalue %dx.types.CBufRet.f32 %8860, 2
  %8866 = extractvalue %dx.types.CBufRet.f32 %8860, 3
  %8867 = fadd fast float %8866, %8865
  %8868 = call float @dx.op.unary.f32(i32 7, float %8867)  ; Saturate(value)
  %8869 = fmul fast float %8864, %8848
  %8870 = fmul fast float %8869, %8868
  br label %9108

; <label>:8871                                    ; preds = %8825
  br i1 %8826, label %8872, label %8893

; <label>:8872                                    ; preds = %8871
  %8873 = call float @dx.op.binary.f32(i32 36, float %8822, float %8812)  ; FMin(a,b)
  %8874 = fsub fast float %8822, %8873
  %8875 = fsub fast float %8874, %8811
  %8876 = call float @dx.op.unary.f32(i32 6, float %8875)  ; FAbs(value)
  %8877 = fadd fast float %8874, %8811
  %8878 = fmul fast float %8877, %8742
  %8879 = fadd fast float %8878, %8755
  %8880 = fmul fast float %8879, %8876
  %8881 = fsub fast float %8817, %8880
  br label %8893

; <label>:8882                                    ; preds = %8810
  br i1 %8824, label %8883, label %8893

; <label>:8883                                    ; preds = %8882
  %8884 = call float @dx.op.binary.f32(i32 35, float %8812, float %8822)  ; FMax(a,b)
  %8885 = icmp eq i32 %8761, 0
  %8886 = select i1 %8885, float %8822, float 0.000000e+00
  %8887 = fsub fast float -0.000000e+00, %8886
  %8888 = call float @dx.op.unary.f32(i32 6, float %8887)  ; FAbs(value)
  %8889 = fmul fast float %8886, %8742
  %8890 = fadd fast float %8889, %8755
  %8891 = fmul fast float %8888, %8890
  %8892 = fsub fast float %8817, %8891
  br label %8893

; <label>:8893                                    ; preds = %8883, %8882, %8872, %8871
  %8894 = phi float [ %8812, %8871 ], [ %8812, %8872 ], [ %8884, %8883 ], [ %8812, %8882 ]
  %8895 = phi float [ 0.000000e+00, %8871 ], [ %8876, %8872 ], [ %8888, %8883 ], [ 0.000000e+00, %8882 ]
  %8896 = phi float [ %8817, %8871 ], [ %8881, %8872 ], [ %8892, %8883 ], [ %8817, %8882 ]
  %8897 = phi float [ %8822, %8871 ], [ %8822, %8872 ], [ %8811, %8883 ], [ %8811, %8882 ]
  %8898 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %8898, align 4, !tbaa !108, !noalias !119
  %8899 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %8899, align 4, !tbaa !108, !noalias !119
  %8900 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %8900, align 4, !tbaa !108, !noalias !119
  %8901 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %8901, align 4, !tbaa !108, !noalias !119
  %8902 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %8902, align 4, !tbaa !108, !noalias !119
  %8903 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %8903, align 4, !tbaa !108, !noalias !119
  %8904 = icmp sgt i32 %8763, 0
  br i1 %8904, label %8905, label %8966

; <label>:8905                                    ; preds = %8893
  br label %8906

; <label>:8906                                    ; preds = %8955, %8905
  %8907 = phi i32 [ %8956, %8955 ], [ 0, %8905 ]
  %8908 = phi i32 [ %8957, %8955 ], [ 0, %8905 ]
  %8909 = add nuw i32 %8908, 171
  %8910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %8909)  ; CBufferLoadLegacy(handle,regIndex)
  %8911 = extractvalue %dx.types.CBufRet.f32 %8910, 0
  %8912 = extractvalue %dx.types.CBufRet.f32 %8910, 1
  %8913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8914 = extractvalue %dx.types.CBufRet.f32 %8913, 0
  %8915 = extractvalue %dx.types.CBufRet.f32 %8913, 1
  %8916 = fsub fast float %8911, %8914
  %8917 = fsub fast float %8912, %8915
  %8918 = extractvalue %dx.types.CBufRet.f32 %8910, 2
  %8919 = fsub fast float -0.000000e+00, %8916
  %8920 = fsub fast float -0.000000e+00, %8917
  %8921 = call float @dx.op.dot2.f32(i32 54, float %8740, float %8741, float %8919, float %8920)  ; Dot2(ax,ay,bx,by)
  %8922 = fmul fast float %8921, 2.000000e+00
  %8923 = call float @dx.op.dot2.f32(i32 54, float %8919, float %8920, float %8919, float %8920)  ; Dot2(ax,ay,bx,by)
  %8924 = fmul fast float %8918, %8918
  %8925 = fsub fast float %8923, %8924
  %8926 = fmul fast float %8922, %8922
  %8927 = fmul fast float %8783, %8925
  %8928 = fsub fast float %8926, %8927
  %8929 = fcmp fast ogt float %8928, 0.000000e+00
  br i1 %8929, label %8930, label %8945

; <label>:8930                                    ; preds = %8906
  %8931 = fcmp fast ogt float %8922, 0.000000e+00
  %8932 = call float @dx.op.unary.f32(i32 24, float %8928)  ; Sqrt(value)
  %8933 = fsub fast float -0.000000e+00, %8932
  %8934 = select i1 %8931, float %8932, float %8933
  %8935 = fadd fast float %8934, %8922
  %8936 = fmul float %8935, -5.000000e-01
  %8937 = fdiv fast float %8936, %8776
  %8938 = call float @dx.op.binary.f32(i32 35, float %8937, float 0.000000e+00)  ; FMax(a,b)
  %8939 = call float @dx.op.binary.f32(i32 36, float %8811, float %8938)  ; FMin(a,b)
  %8940 = fdiv fast float %8925, %8936
  %8941 = call float @dx.op.binary.f32(i32 35, float %8940, float 0.000000e+00)  ; FMax(a,b)
  %8942 = call float @dx.op.binary.f32(i32 36, float %8811, float %8941)  ; FMin(a,b)
  %8943 = call float @dx.op.binary.f32(i32 36, float %8939, float %8942)  ; FMin(a,b)
  %8944 = call float @dx.op.binary.f32(i32 35, float %8939, float %8942)  ; FMax(a,b)
  br label %8945

; <label>:8945                                    ; preds = %8930, %8906
  %8946 = phi float [ %8944, %8930 ], [ -1.000000e+00, %8906 ]
  %8947 = phi float [ %8943, %8930 ], [ -1.000000e+00, %8906 ]
  %8948 = phi i1 [ true, %8930 ], [ false, %8906 ]
  br i1 %8948, label %8949, label %8955

; <label>:8949                                    ; preds = %8945
  %8950 = call float @dx.op.binary.f32(i32 35, float %8894, float %8947)  ; FMax(a,b)
  %8951 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8908
  store float %8950, float* %8951, align 4, !tbaa !108, !noalias !119
  %8952 = call float @dx.op.binary.f32(i32 35, float %8894, float %8946)  ; FMax(a,b)
  %8953 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8908
  store float %8952, float* %8953, align 4, !tbaa !108, !noalias !119
  %8954 = add nsw i32 %8907, 1
  br label %8955

; <label>:8955                                    ; preds = %8949, %8945
  %8956 = phi i32 [ %8954, %8949 ], [ %8907, %8945 ]
  %8957 = add nuw nsw i32 %8908, 1
  %8958 = icmp eq i32 %8957, %8763
  br i1 %8958, label %8959, label %8906

; <label>:8959                                    ; preds = %8955
  %8960 = load float, float* %8900, align 4, !tbaa !108, !alias.scope !135, !noalias !138
  %8961 = load float, float* %8899, align 4, !tbaa !108, !alias.scope !141, !noalias !142
  %8962 = load float, float* %8898, align 4, !tbaa !108, !alias.scope !143, !noalias !144
  %8963 = load float, float* %8903, align 4, !tbaa !108, !alias.scope !145, !noalias !148
  %8964 = load float, float* %8902, align 4, !tbaa !108, !alias.scope !151, !noalias !152
  %8965 = load float, float* %8901, align 4, !tbaa !108, !alias.scope !153, !noalias !154
  br label %8966

; <label>:8966                                    ; preds = %8959, %8893
  %8967 = phi float [ -1.000000e+00, %8893 ], [ %8965, %8959 ]
  %8968 = phi float [ -1.000000e+00, %8893 ], [ %8964, %8959 ]
  %8969 = phi float [ -1.000000e+00, %8893 ], [ %8963, %8959 ]
  %8970 = phi float [ -1.000000e+00, %8893 ], [ %8962, %8959 ]
  %8971 = phi float [ -1.000000e+00, %8893 ], [ %8961, %8959 ]
  %8972 = phi float [ -1.000000e+00, %8893 ], [ %8960, %8959 ]
  %8973 = phi i32 [ 0, %8893 ], [ %8956, %8959 ]
  %8974 = call float @dx.op.binary.f32(i32 36, float %8970, float %8971)  ; FMin(a,b)
  %8975 = call float @dx.op.binary.f32(i32 36, float %8974, float %8972)  ; FMin(a,b)
  %8976 = call float @dx.op.binary.f32(i32 35, float %8970, float %8971)  ; FMax(a,b)
  %8977 = call float @dx.op.binary.f32(i32 36, float %8976, float %8972)  ; FMin(a,b)
  %8978 = call float @dx.op.binary.f32(i32 35, float %8974, float %8977)  ; FMax(a,b)
  %8979 = call float @dx.op.binary.f32(i32 35, float %8976, float %8972)  ; FMax(a,b)
  store float %8975, float* %8898, align 4, !tbaa !108, !alias.scope !143, !noalias !144
  store float %8978, float* %8899, align 4, !tbaa !108, !alias.scope !141, !noalias !142
  store float %8979, float* %8900, align 4, !tbaa !108, !alias.scope !135, !noalias !138
  %8980 = call float @dx.op.binary.f32(i32 36, float %8967, float %8968)  ; FMin(a,b)
  %8981 = call float @dx.op.binary.f32(i32 36, float %8980, float %8969)  ; FMin(a,b)
  %8982 = call float @dx.op.binary.f32(i32 35, float %8967, float %8968)  ; FMax(a,b)
  %8983 = call float @dx.op.binary.f32(i32 36, float %8982, float %8969)  ; FMin(a,b)
  %8984 = call float @dx.op.binary.f32(i32 35, float %8980, float %8983)  ; FMax(a,b)
  %8985 = call float @dx.op.binary.f32(i32 35, float %8982, float %8969)  ; FMax(a,b)
  store float %8981, float* %8901, align 4, !tbaa !108, !alias.scope !153, !noalias !154
  store float %8984, float* %8902, align 4, !tbaa !108, !alias.scope !151, !noalias !152
  store float %8985, float* %8903, align 4, !tbaa !108, !alias.scope !145, !noalias !148
  %8986 = sub nsw i32 3, %8973
  %8987 = icmp sgt i32 %8986, 2
  br i1 %8987, label %8988, label %9026

; <label>:8988                                    ; preds = %8966
  %8989 = icmp eq i32 %8761, 0
  %8990 = fsub fast float %8811, %8895
  %8991 = select i1 %8989, float %8990, float %8895
  %8992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8993 = extractvalue %dx.types.CBufRet.f32 %8992, 0
  %8994 = extractvalue %dx.types.CBufRet.f32 %8992, 1
  %8995 = extractvalue %dx.types.CBufRet.f32 %8992, 2
  %8996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8997 = extractvalue %dx.types.CBufRet.f32 %8996, 0
  %8998 = extractvalue %dx.types.CBufRet.f32 %8996, 1
  %8999 = extractvalue %dx.types.CBufRet.f32 %8996, 2
  %9000 = extractvalue %dx.types.CBufRet.f32 %8996, 3
  %9001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9002 = extractvalue %dx.types.CBufRet.f32 %9001, 3
  %9003 = call float @dx.op.binary.f32(i32 36, float %8896, float %9002)  ; FMin(a,b)
  %9004 = fmul fast float %9000, %8991
  %9005 = call float @dx.op.unary.f32(i32 7, float %9004)  ; Saturate(value)
  %9006 = fsub fast float %8997, %8993
  %9007 = fsub fast float %8998, %8994
  %9008 = fsub fast float %8999, %8995
  %9009 = fmul fast float %9005, %9006
  %9010 = fmul fast float %9005, %9007
  %9011 = fmul fast float %9005, %9008
  %9012 = fadd fast float %9009, %8993
  %9013 = fadd fast float %9010, %8994
  %9014 = fadd fast float %9011, %8995
  %9015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9016 = extractvalue %dx.types.CBufRet.f32 %9015, 0
  %9017 = extractvalue %dx.types.CBufRet.f32 %9015, 1
  %9018 = fadd fast float %9017, %9016
  %9019 = call float @dx.op.unary.f32(i32 7, float %9018)  ; Saturate(value)
  %9020 = extractvalue %dx.types.CBufRet.f32 %9015, 2
  %9021 = extractvalue %dx.types.CBufRet.f32 %9015, 3
  %9022 = fadd fast float %9021, %9020
  %9023 = call float @dx.op.unary.f32(i32 7, float %9022)  ; Saturate(value)
  %9024 = fmul fast float %9019, %9003
  %9025 = fmul fast float %9024, %9023
  br label %9108

; <label>:9026                                    ; preds = %8966
  %9027 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8986
  %9028 = load float, float* %9027, align 4, !tbaa !108, !noalias !119
  %9029 = fcmp fast olt float %9028, %8897
  %9030 = icmp sgt i32 %8973, 0
  %9031 = and i1 %9030, %9029
  br i1 %9031, label %9032, label %9069

; <label>:9032                                    ; preds = %9026
  br label %9033

; <label>:9033                                    ; preds = %9062, %9032
  %9034 = phi float [ %9063, %9062 ], [ %8895, %9032 ]
  %9035 = phi float [ %9064, %9062 ], [ %8896, %9032 ]
  %9036 = phi float [ %9044, %9062 ], [ %9028, %9032 ]
  %9037 = phi i32 [ %9041, %9062 ], [ %8986, %9032 ]
  %9038 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %9037
  %9039 = load float, float* %9038, align 4, !tbaa !108, !noalias !119
  %9040 = icmp slt i32 %9037, 2
  %9041 = add nsw i32 %9037, 1
  %9042 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %9041
  %9043 = load float, float* %9042, align 4, !tbaa !108, !noalias !119
  %9044 = select i1 %9040, float %9043, float %8811
  %9045 = call float @dx.op.binary.f32(i32 36, float %9044, float %9039)  ; FMin(a,b)
  %9046 = call float @dx.op.binary.f32(i32 36, float %8897, float %9045)  ; FMin(a,b)
  %9047 = icmp eq i32 %8761, 0
  %9048 = fadd fast float %9046, %9036
  %9049 = fmul fast float %9048, %8742
  %9050 = fadd fast float %9049, %8755
  br i1 %9047, label %9056, label %9051

; <label>:9051                                    ; preds = %9033
  %9052 = fsub fast float %9046, %9036
  %9053 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9052)  ; FMax(a,b)
  %9054 = fmul fast float %9053, %9050
  %9055 = fadd fast float %9054, %9035
  br label %9062

; <label>:9056                                    ; preds = %9033
  %9057 = fsub fast float %9036, %9046
  %9058 = call float @dx.op.unary.f32(i32 6, float %9057)  ; FAbs(value)
  %9059 = fadd fast float %9058, %9034
  %9060 = fmul fast float %9058, %9050
  %9061 = fsub fast float %9035, %9060
  br label %9062

; <label>:9062                                    ; preds = %9056, %9051
  %9063 = phi float [ %9053, %9051 ], [ %9059, %9056 ]
  %9064 = phi float [ %9055, %9051 ], [ %9061, %9056 ]
  %9065 = fcmp fast olt float %9044, %8897
  %9066 = icmp slt i32 %9041, 3
  %9067 = and i1 %9066, %9065
  br i1 %9067, label %9033, label %9068

; <label>:9068                                    ; preds = %9062
  br label %9069

; <label>:9069                                    ; preds = %9068, %9026
  %9070 = phi float [ %8895, %9026 ], [ %9063, %9068 ]
  %9071 = phi float [ %8896, %9026 ], [ %9064, %9068 ]
  %9072 = fsub fast float %8811, %9070
  %9073 = select i1 %8813, float %9070, float %9072
  %9074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9075 = extractvalue %dx.types.CBufRet.f32 %9074, 0
  %9076 = extractvalue %dx.types.CBufRet.f32 %9074, 1
  %9077 = extractvalue %dx.types.CBufRet.f32 %9074, 2
  %9078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9079 = extractvalue %dx.types.CBufRet.f32 %9078, 0
  %9080 = extractvalue %dx.types.CBufRet.f32 %9078, 1
  %9081 = extractvalue %dx.types.CBufRet.f32 %9078, 2
  %9082 = extractvalue %dx.types.CBufRet.f32 %9078, 3
  %9083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9084 = extractvalue %dx.types.CBufRet.f32 %9083, 3
  %9085 = call float @dx.op.binary.f32(i32 36, float %9071, float %9084)  ; FMin(a,b)
  %9086 = fmul fast float %9082, %9073
  %9087 = call float @dx.op.unary.f32(i32 7, float %9086)  ; Saturate(value)
  %9088 = fsub fast float %9079, %9075
  %9089 = fsub fast float %9080, %9076
  %9090 = fsub fast float %9081, %9077
  %9091 = fmul fast float %9087, %9088
  %9092 = fmul fast float %9087, %9089
  %9093 = fmul fast float %9087, %9090
  %9094 = fadd fast float %9091, %9075
  %9095 = fadd fast float %9092, %9076
  %9096 = fadd fast float %9093, %9077
  %9097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9098 = extractvalue %dx.types.CBufRet.f32 %9097, 0
  %9099 = extractvalue %dx.types.CBufRet.f32 %9097, 1
  %9100 = fadd fast float %9099, %9098
  %9101 = call float @dx.op.unary.f32(i32 7, float %9100)  ; Saturate(value)
  %9102 = extractvalue %dx.types.CBufRet.f32 %9097, 2
  %9103 = extractvalue %dx.types.CBufRet.f32 %9097, 3
  %9104 = fadd fast float %9103, %9102
  %9105 = call float @dx.op.unary.f32(i32 7, float %9104)  ; Saturate(value)
  %9106 = fmul fast float %9101, %9085
  %9107 = fmul fast float %9106, %9105
  br label %9108

; <label>:9108                                    ; preds = %9069, %8988, %8827, %8809, %8807
  %9109 = phi float [ %8836, %8827 ], [ %8991, %8988 ], [ %9073, %9069 ], [ 0.000000e+00, %8807 ], [ 0.000000e+00, %8809 ]
  %9110 = phi float [ %8870, %8827 ], [ %9025, %8988 ], [ %9107, %9069 ], [ 0.000000e+00, %8807 ], [ 0.000000e+00, %8809 ]
  %9111 = phi float [ %8857, %8827 ], [ %9012, %8988 ], [ %9094, %9069 ], [ 0.000000e+00, %8807 ], [ 0.000000e+00, %8809 ]
  %9112 = phi float [ %8858, %8827 ], [ %9013, %8988 ], [ %9095, %9069 ], [ 0.000000e+00, %8807 ], [ 0.000000e+00, %8809 ]
  %9113 = phi float [ %8859, %8827 ], [ %9014, %8988 ], [ %9096, %9069 ], [ 0.000000e+00, %8807 ], [ 0.000000e+00, %8809 ]
  %9114 = fmul fast float %8750, %9110
  %9115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9116 = extractvalue %dx.types.CBufRet.f32 %9115, 2
  %9117 = fsub fast float %8757, %9116
  %9118 = fcmp fast olt float %9114, -2.000000e+01
  %9119 = call float @dx.op.unary.f32(i32 21, float %9114)  ; Exp(value)
  %9120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9121 = extractvalue %dx.types.CBufRet.f32 %9120, 2
  %9122 = extractvalue %dx.types.CBufRet.f32 %9120, 3
  %9123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9124 = extractvalue %dx.types.CBufRet.f32 %9123, 2
  %9125 = fmul fast float %9122, %9117
  %9126 = call float @dx.op.unary.f32(i32 7, float %9125)  ; Saturate(value)
  %9127 = fsub fast float 1.000000e+00, %9126
  %9128 = fmul fast float %8742, 5.000000e-01
  %9129 = fadd fast float %9128, 5.000000e-01
  %9130 = call float @dx.op.unary.f32(i32 7, float %9129)  ; Saturate(value)
  %9131 = fsub fast float 1.000000e+00, %9130
  %9132 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9127)  ; FMax(a,b)
  %9133 = fdiv fast float %9131, %9132
  %9134 = fsub fast float %9117, %8699
  %9135 = call float @dx.op.unary.f32(i32 6, float %9134)  ; FAbs(value)
  %9136 = fmul fast float %9135, %9121
  %9137 = call float @dx.op.unary.f32(i32 7, float %9133)  ; Saturate(value)
  %9138 = fsub fast float 1.000000e+00, %9136
  %9139 = fmul fast float %9138, %9137
  %9140 = fadd fast float %9139, %9136
  %9141 = fmul fast float %9124, %9117
  %9142 = call float @dx.op.unary.f32(i32 7, float %9141)  ; Saturate(value)
  %9143 = fsub fast float 1.000000e+00, %9140
  %9144 = fmul fast float %9143, %9142
  %9145 = fadd fast float %9144, %9140
  %9146 = call float @dx.op.unary.f32(i32 7, float %9145)  ; Saturate(value)
  %9147 = fadd fast float %9119, -1.000000e+00
  %9148 = select i1 %9118, float -1.000000e+00, float %9147
  %9149 = fmul fast float %9146, %9148
  %9150 = fadd fast float %9149, 1.000000e+00
  %9151 = fsub fast float -0.000000e+00, %9149
  %9152 = fmul fast float %9111, %9151
  %9153 = fmul fast float %9112, %9151
  %9154 = fmul fast float %9113, %9151
  br label %9155

; <label>:9155                                    ; preds = %9108, %8708
  %9156 = phi float [ %9109, %9108 ], [ 0.000000e+00, %8708 ]
  %9157 = phi float [ %9150, %9108 ], [ 1.000000e+00, %8708 ]
  %9158 = phi float [ %9152, %9108 ], [ 0.000000e+00, %8708 ]
  %9159 = phi float [ %9153, %9108 ], [ 0.000000e+00, %8708 ]
  %9160 = phi float [ %9154, %9108 ], [ 0.000000e+00, %8708 ]
  %9161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9162 = extractvalue %dx.types.CBufRet.f32 %9161, 1
  %9163 = fsub fast float 1.000000e+00, %9157
  %9164 = fmul fast float %9163, %8743
  %9165 = fmul fast float %9164, %9162
  %9166 = fsub fast float %8743, %9165
  br i1 %8736, label %9167, label %9196, !dx.controlflow.hints !155

; <label>:9167                                    ; preds = %9155
  %9168 = fmul fast float %8744, %8733
  %9169 = fadd fast float %9168, %8734
  %9170 = call float @dx.op.unary.f32(i32 7, float %9169)  ; Saturate(value)
  %9171 = fmul fast float %8715, %9166
  %9172 = fsub fast float -0.000000e+00, %9171
  %9173 = fmul fast float %8716, %9166
  %9174 = fsub fast float -0.000000e+00, %9173
  %9175 = call float @dx.op.unary.f32(i32 21, float %9172)  ; Exp(value)
  %9176 = call float @dx.op.unary.f32(i32 21, float %9174)  ; Exp(value)
  %9177 = call float @dx.op.binary.f32(i32 35, float %8723, float %9175)  ; FMax(a,b)
  %9178 = call float @dx.op.binary.f32(i32 35, float %8723, float %9176)  ; FMax(a,b)
  %9179 = fsub fast float %9178, %9177
  %9180 = fmul fast float %9179, %9170
  %9181 = fadd fast float %9180, %9177
  %9182 = call float @dx.op.unary.f32(i32 7, float %9181)  ; Saturate(value)
  %9183 = fsub fast float %8720, %8725
  %9184 = fsub fast float %8721, %8726
  %9185 = fsub fast float %8722, %8727
  %9186 = fmul fast float %9170, %9183
  %9187 = fmul fast float %9170, %9184
  %9188 = fmul fast float %9170, %9185
  %9189 = fadd fast float %9186, %8725
  %9190 = fadd fast float %9187, %8726
  %9191 = fadd fast float %9188, %8727
  %9192 = fsub fast float 1.000000e+00, %9182
  %9193 = fmul fast float %9192, %9189
  %9194 = fmul fast float %9192, %9190
  %9195 = fmul fast float %9192, %9191
  br label %9255

; <label>:9196                                    ; preds = %9155
  %9197 = fmul fast float %9166, %8732
  %9198 = call float @dx.op.unary.f32(i32 7, float %9197)  ; Saturate(value)
  %9199 = fsub fast float 2.000000e+00, %9198
  %9200 = fmul fast float %9198, 9.921875e-01
  %9201 = fmul fast float %9200, %9199
  %9202 = fadd fast float %9201, 3.906250e-03
  %9203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %9202, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9204 = extractvalue %dx.types.ResRet.f32 %9203, 0
  %9205 = fsub fast float %9198, %9204
  %9206 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9205)  ; FMax(a,b)
  %9207 = fmul fast float %8718, %8699
  %9208 = call float @dx.op.unary.f32(i32 6, float %9207)  ; FAbs(value)
  %9209 = fcmp fast ogt float %9208, 0x3EB0C6F7A0000000
  br i1 %9209, label %9210, label %9216, !dx.controlflow.hints !156

; <label>:9210                                    ; preds = %9196
  %9211 = fmul fast float %9207, 0xBFF7154760000000
  %9212 = call float @dx.op.unary.f32(i32 21, float %9211)  ; Exp(value)
  %9213 = fsub fast float 1.000000e+00, %9212
  %9214 = fdiv fast float %9213, %9207
  %9215 = fmul fast float %9214, %8728
  br label %9216

; <label>:9216                                    ; preds = %9210, %9196
  %9217 = phi float [ %9215, %9210 ], [ %8728, %9196 ]
  %9218 = fadd fast float %9217, %8730
  %9219 = fmul fast float %9218, %9206
  %9220 = fmul fast float %8715, %9219
  %9221 = fsub fast float -0.000000e+00, %9220
  %9222 = fmul fast float %8716, %9219
  %9223 = fsub fast float -0.000000e+00, %9222
  %9224 = fmul fast float %8717, %9219
  %9225 = fsub fast float -0.000000e+00, %9224
  %9226 = call float @dx.op.unary.f32(i32 21, float %9221)  ; Exp(value)
  %9227 = call float @dx.op.unary.f32(i32 21, float %9223)  ; Exp(value)
  %9228 = call float @dx.op.unary.f32(i32 21, float %9225)  ; Exp(value)
  %9229 = fmul fast float %8744, %8744
  %9230 = fadd fast float %9229, 1.000000e+00
  %9231 = fmul fast float %9230, 0x3FAE8EC8A0000000
  %9232 = fmul fast float %9231, %8725
  %9233 = fmul fast float %9231, %8726
  %9234 = fmul fast float %9231, %8727
  %9235 = fmul fast float %8744, %8723
  %9236 = fsub fast float 1.000000e+00, %9235
  %9237 = fmul fast float %8723, %8723
  %9238 = fsub fast float 1.000000e+00, %9237
  %9239 = fmul fast float %9238, 0x3FB45F3060000000
  %9240 = fmul fast float %9236, %9236
  %9241 = fdiv fast float 1.000000e+00, %9240
  %9242 = fmul fast float %9239, %9241
  %9243 = fmul fast float %9242, %8720
  %9244 = fmul fast float %9242, %8721
  %9245 = fmul fast float %9242, %8722
  %9246 = fadd fast float %9243, %9232
  %9247 = fadd fast float %9244, %9233
  %9248 = fadd fast float %9245, %9234
  %9249 = fsub fast float 1.000000e+00, %9226
  %9250 = fsub fast float 1.000000e+00, %9227
  %9251 = fsub fast float 1.000000e+00, %9228
  %9252 = fmul fast float %9246, %9249
  %9253 = fmul fast float %9247, %9250
  %9254 = fmul fast float %9248, %9251
  br label %9255

; <label>:9255                                    ; preds = %9216, %9167
  %9256 = phi float [ %9193, %9167 ], [ %9252, %9216 ]
  %9257 = phi float [ %9194, %9167 ], [ %9253, %9216 ]
  %9258 = phi float [ %9195, %9167 ], [ %9254, %9216 ]
  %9259 = phi float [ %9182, %9167 ], [ %9226, %9216 ]
  %9260 = phi float [ %9182, %9167 ], [ %9227, %9216 ]
  %9261 = phi float [ %9182, %9167 ], [ %9228, %9216 ]
  br i1 %8752, label %9262, label %9460, !dx.controlflow.hints !157

; <label>:9262                                    ; preds = %9255
  %9263 = extractvalue %dx.types.CBufRet.f32 %9161, 0
  %9264 = fmul fast float %9263, %9163
  %9265 = fsub fast float %9158, %9256
  %9266 = fsub fast float %9159, %9257
  %9267 = fsub fast float %9160, %9258
  %9268 = fmul fast float %9264, %9265
  %9269 = fmul fast float %9264, %9266
  %9270 = fmul fast float %9264, %9267
  %9271 = fadd fast float %9268, %9256
  %9272 = fadd fast float %9269, %9257
  %9273 = fadd fast float %9270, %9258
  %9274 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9259)  ; FMax(a,b)
  %9275 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9260)  ; FMax(a,b)
  %9276 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9261)  ; FMax(a,b)
  %9277 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9157)  ; FMax(a,b)
  %9278 = call float @dx.op.binary.f32(i32 35, float %9156, float %9166)  ; FMax(a,b)
  %9279 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9278)  ; FMax(a,b)
  %9280 = fdiv fast float %9156, %9279
  %9281 = call float @dx.op.unary.f32(i32 7, float %9280)  ; Saturate(value)
  %9282 = fdiv fast float %9166, %9279
  %9283 = call float @dx.op.unary.f32(i32 7, float %9282)  ; Saturate(value)
  %9284 = fcmp fast une float %9277, 1.000000e+00
  br i1 %9284, label %9285, label %9298, !dx.controlflow.hints !158

; <label>:9285                                    ; preds = %9262
  %9286 = call float @dx.op.unary.f32(i32 23, float %9277)  ; Log(value)
  %9287 = fmul fast float %9286, 0x3FE62E4300000000
  %9288 = fmul fast float %9158, %9287
  %9289 = fsub fast float -0.000000e+00, %9288
  %9290 = fmul fast float %9159, %9287
  %9291 = fsub fast float -0.000000e+00, %9290
  %9292 = fmul fast float %9160, %9287
  %9293 = fsub fast float -0.000000e+00, %9292
  %9294 = fsub fast float 1.000000e+00, %9277
  %9295 = fdiv fast float %9289, %9294
  %9296 = fdiv fast float %9291, %9294
  %9297 = fdiv fast float %9293, %9294
  br label %9298

; <label>:9298                                    ; preds = %9285, %9262
  %9299 = phi float [ %9295, %9285 ], [ %9158, %9262 ]
  %9300 = phi float [ %9296, %9285 ], [ %9159, %9262 ]
  %9301 = phi float [ %9297, %9285 ], [ %9160, %9262 ]
  %9302 = phi float [ %9287, %9285 ], [ 0.000000e+00, %9262 ]
  %9303 = fcmp fast une float %9274, 1.000000e+00
  br i1 %9303, label %9304, label %9311, !dx.controlflow.hints !159

; <label>:9304                                    ; preds = %9298
  %9305 = call float @dx.op.unary.f32(i32 23, float %9274)  ; Log(value)
  %9306 = fmul fast float %9305, 0x3FE62E4300000000
  %9307 = fmul fast float %9271, %9306
  %9308 = fsub fast float -0.000000e+00, %9307
  %9309 = fsub fast float 1.000000e+00, %9274
  %9310 = fdiv fast float %9308, %9309
  br label %9311

; <label>:9311                                    ; preds = %9304, %9298
  %9312 = phi float [ %9310, %9304 ], [ %9271, %9298 ]
  %9313 = phi float [ %9306, %9304 ], [ 0.000000e+00, %9298 ]
  %9314 = fcmp fast une float %9275, 1.000000e+00
  br i1 %9314, label %9315, label %9322, !dx.controlflow.hints !159

; <label>:9315                                    ; preds = %9311
  %9316 = call float @dx.op.unary.f32(i32 23, float %9275)  ; Log(value)
  %9317 = fmul fast float %9316, 0x3FE62E4300000000
  %9318 = fmul fast float %9272, %9317
  %9319 = fsub fast float -0.000000e+00, %9318
  %9320 = fsub fast float 1.000000e+00, %9275
  %9321 = fdiv fast float %9319, %9320
  br label %9322

; <label>:9322                                    ; preds = %9315, %9311
  %9323 = phi float [ %9321, %9315 ], [ %9272, %9311 ]
  %9324 = phi float [ %9317, %9315 ], [ 0.000000e+00, %9311 ]
  %9325 = fcmp fast une float %9276, 1.000000e+00
  br i1 %9325, label %9326, label %9333, !dx.controlflow.hints !159

; <label>:9326                                    ; preds = %9322
  %9327 = call float @dx.op.unary.f32(i32 23, float %9276)  ; Log(value)
  %9328 = fmul fast float %9327, 0x3FE62E4300000000
  %9329 = fmul fast float %9273, %9328
  %9330 = fsub fast float -0.000000e+00, %9329
  %9331 = fsub fast float 1.000000e+00, %9276
  %9332 = fdiv fast float %9330, %9331
  br label %9333

; <label>:9333                                    ; preds = %9326, %9322
  %9334 = phi float [ %9332, %9326 ], [ %9273, %9322 ]
  %9335 = phi float [ %9328, %9326 ], [ 0.000000e+00, %9322 ]
  %9336 = fmul fast float %9299, %9283
  %9337 = fmul fast float %9300, %9283
  %9338 = fmul fast float %9301, %9283
  %9339 = fmul fast float %9302, %9283
  %9340 = fmul fast float %9312, %9281
  %9341 = fmul fast float %9323, %9281
  %9342 = fmul fast float %9334, %9281
  %9343 = fmul fast float %9313, %9281
  %9344 = fmul fast float %9324, %9281
  %9345 = fmul fast float %9335, %9281
  %9346 = fadd fast float %9340, %9336
  %9347 = fadd fast float %9341, %9337
  %9348 = fadd fast float %9342, %9338
  %9349 = fadd fast float %9343, %9339
  %9350 = fadd fast float %9344, %9339
  %9351 = fadd fast float %9345, %9339
  %9352 = fcmp fast une float %9349, 0.000000e+00
  br i1 %9352, label %9353, label %9360, !dx.controlflow.hints !160

; <label>:9353                                    ; preds = %9333
  %9354 = fmul fast float %9349, 0x3FF7154760000000
  %9355 = call float @dx.op.unary.f32(i32 21, float %9354)  ; Exp(value)
  %9356 = fsub fast float 1.000000e+00, %9355
  %9357 = fmul fast float %9346, %9356
  %9358 = fsub fast float -0.000000e+00, %9357
  %9359 = fdiv fast float %9358, %9349
  br label %9360

; <label>:9360                                    ; preds = %9353, %9333
  %9361 = phi float [ %9355, %9353 ], [ 1.000000e+00, %9333 ]
  %9362 = phi float [ %9359, %9353 ], [ %9346, %9333 ]
  %9363 = fcmp fast une float %9350, 0.000000e+00
  br i1 %9363, label %9364, label %9371, !dx.controlflow.hints !160

; <label>:9364                                    ; preds = %9360
  %9365 = fmul fast float %9350, 0x3FF7154760000000
  %9366 = call float @dx.op.unary.f32(i32 21, float %9365)  ; Exp(value)
  %9367 = fsub fast float 1.000000e+00, %9366
  %9368 = fmul fast float %9347, %9367
  %9369 = fsub fast float -0.000000e+00, %9368
  %9370 = fdiv fast float %9369, %9350
  br label %9371

; <label>:9371                                    ; preds = %9364, %9360
  %9372 = phi float [ %9366, %9364 ], [ 1.000000e+00, %9360 ]
  %9373 = phi float [ %9370, %9364 ], [ %9347, %9360 ]
  %9374 = fcmp fast une float %9351, 0.000000e+00
  br i1 %9374, label %9375, label %9382, !dx.controlflow.hints !160

; <label>:9375                                    ; preds = %9371
  %9376 = fmul fast float %9351, 0x3FF7154760000000
  %9377 = call float @dx.op.unary.f32(i32 21, float %9376)  ; Exp(value)
  %9378 = fsub fast float 1.000000e+00, %9377
  %9379 = fmul fast float %9348, %9378
  %9380 = fsub fast float -0.000000e+00, %9379
  %9381 = fdiv fast float %9380, %9351
  br label %9382

; <label>:9382                                    ; preds = %9375, %9371
  %9383 = phi float [ %9377, %9375 ], [ 1.000000e+00, %9371 ]
  %9384 = phi float [ %9381, %9375 ], [ %9348, %9371 ]
  %9385 = fcmp fast ogt float %9281, %9283
  br i1 %9385, label %9386, label %9406

; <label>:9386                                    ; preds = %9382
  %9387 = fsub fast float 1.000000e+00, %9283
  %9388 = fmul fast float %9299, %9387
  %9389 = fmul fast float %9300, %9387
  %9390 = fmul fast float %9301, %9387
  %9391 = fmul fast float %9302, %9387
  %9392 = fcmp fast une float %9391, 0.000000e+00
  br i1 %9392, label %9393, label %9444, !dx.controlflow.hints !161

; <label>:9393                                    ; preds = %9386
  %9394 = fmul fast float %9391, 0x3FF7154760000000
  %9395 = call float @dx.op.unary.f32(i32 21, float %9394)  ; Exp(value)
  %9396 = fsub fast float 1.000000e+00, %9395
  %9397 = fmul fast float %9388, %9396
  %9398 = fsub fast float -0.000000e+00, %9397
  %9399 = fmul fast float %9389, %9396
  %9400 = fsub fast float -0.000000e+00, %9399
  %9401 = fmul fast float %9390, %9396
  %9402 = fsub fast float -0.000000e+00, %9401
  %9403 = fdiv fast float %9398, %9391
  %9404 = fdiv fast float %9400, %9391
  %9405 = fdiv fast float %9402, %9391
  br label %9444

; <label>:9406                                    ; preds = %9382
  %9407 = fsub fast float 1.000000e+00, %9281
  %9408 = fmul fast float %9312, %9407
  %9409 = fmul fast float %9323, %9407
  %9410 = fmul fast float %9334, %9407
  %9411 = fmul fast float %9313, %9407
  %9412 = fmul fast float %9324, %9407
  %9413 = fmul fast float %9335, %9407
  %9414 = fcmp fast une float %9411, 0.000000e+00
  br i1 %9414, label %9415, label %9422, !dx.controlflow.hints !160

; <label>:9415                                    ; preds = %9406
  %9416 = fmul fast float %9411, 0x3FF7154760000000
  %9417 = call float @dx.op.unary.f32(i32 21, float %9416)  ; Exp(value)
  %9418 = fsub fast float 1.000000e+00, %9417
  %9419 = fmul fast float %9408, %9418
  %9420 = fsub fast float -0.000000e+00, %9419
  %9421 = fdiv fast float %9420, %9411
  br label %9422

; <label>:9422                                    ; preds = %9415, %9406
  %9423 = phi float [ %9421, %9415 ], [ %9408, %9406 ]
  %9424 = phi float [ %9417, %9415 ], [ 1.000000e+00, %9406 ]
  %9425 = fcmp fast une float %9412, 0.000000e+00
  br i1 %9425, label %9426, label %9433, !dx.controlflow.hints !160

; <label>:9426                                    ; preds = %9422
  %9427 = fmul fast float %9412, 0x3FF7154760000000
  %9428 = call float @dx.op.unary.f32(i32 21, float %9427)  ; Exp(value)
  %9429 = fsub fast float 1.000000e+00, %9428
  %9430 = fmul fast float %9409, %9429
  %9431 = fsub fast float -0.000000e+00, %9430
  %9432 = fdiv fast float %9431, %9412
  br label %9433

; <label>:9433                                    ; preds = %9426, %9422
  %9434 = phi float [ %9432, %9426 ], [ %9409, %9422 ]
  %9435 = phi float [ %9428, %9426 ], [ 1.000000e+00, %9422 ]
  %9436 = fcmp fast une float %9413, 0.000000e+00
  br i1 %9436, label %9437, label %9444, !dx.controlflow.hints !160

; <label>:9437                                    ; preds = %9433
  %9438 = fmul fast float %9413, 0x3FF7154760000000
  %9439 = call float @dx.op.unary.f32(i32 21, float %9438)  ; Exp(value)
  %9440 = fsub fast float 1.000000e+00, %9439
  %9441 = fmul fast float %9410, %9440
  %9442 = fsub fast float -0.000000e+00, %9441
  %9443 = fdiv fast float %9442, %9413
  br label %9444

; <label>:9444                                    ; preds = %9437, %9433, %9393, %9386
  %9445 = phi float [ %9443, %9437 ], [ %9405, %9393 ], [ %9390, %9386 ], [ %9410, %9433 ]
  %9446 = phi float [ %9434, %9437 ], [ %9404, %9393 ], [ %9389, %9386 ], [ %9434, %9433 ]
  %9447 = phi float [ %9423, %9437 ], [ %9403, %9393 ], [ %9388, %9386 ], [ %9423, %9433 ]
  %9448 = phi float [ %9439, %9437 ], [ %9395, %9393 ], [ 1.000000e+00, %9386 ], [ 1.000000e+00, %9433 ]
  %9449 = phi float [ %9435, %9437 ], [ %9395, %9393 ], [ 1.000000e+00, %9386 ], [ %9435, %9433 ]
  %9450 = phi float [ %9424, %9437 ], [ %9395, %9393 ], [ 1.000000e+00, %9386 ], [ %9424, %9433 ]
  %9451 = fmul fast float %9450, %9362
  %9452 = fmul fast float %9449, %9373
  %9453 = fmul fast float %9448, %9384
  %9454 = fadd fast float %9451, %9447
  %9455 = fadd fast float %9452, %9446
  %9456 = fadd fast float %9453, %9445
  %9457 = fmul fast float %9450, %9361
  %9458 = fmul fast float %9449, %9372
  %9459 = fmul fast float %9448, %9383
  br label %9460

; <label>:9460                                    ; preds = %9444, %9255
  %9461 = phi float [ %9459, %9444 ], [ %9261, %9255 ]
  %9462 = phi float [ %9458, %9444 ], [ %9260, %9255 ]
  %9463 = phi float [ %9457, %9444 ], [ %9259, %9255 ]
  %9464 = phi float [ %9456, %9444 ], [ %9258, %9255 ]
  %9465 = phi float [ %9455, %9444 ], [ %9257, %9255 ]
  %9466 = phi float [ %9454, %9444 ], [ %9256, %9255 ]
  %9467 = fmul fast float %9466, %8413
  %9468 = fmul fast float %9465, %8413
  %9469 = fmul fast float %9464, %8413
  %9470 = fmul fast float %9463, %8707
  %9471 = call float @dx.op.dot3.f32(i32 55, float %9463, float %9462, float %9461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9472 = call float @dx.op.dot3.f32(i32 55, float %9467, float %9468, float %9469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9473 = select i1 %214, float %9471, float %9463
  %9474 = select i1 %214, float %9471, float %9462
  %9475 = select i1 %214, float 1.000000e+00, float %9461
  %9476 = select i1 %214, float %9472, float %9467
  %9477 = select i1 %214, float 0.000000e+00, float %9468
  %9478 = select i1 %214, float 0.000000e+00, float %9469
  %9479 = fmul fast float %9473, %8701
  %9480 = fmul fast float %9474, %8702
  %9481 = fmul fast float %9475, %8703
  %9482 = fadd fast float %9479, %9476
  %9483 = fadd fast float %9480, %9477
  %9484 = fadd fast float %9478, %9481
  %9485 = fmul fast float %9473, %8704
  %9486 = fmul fast float %9474, %8705
  %9487 = fmul fast float %9475, %8706
  %9488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9489 = extractvalue %dx.types.CBufRet.i32 %9488, 0
  %9490 = icmp eq i32 %9489, 0
  br i1 %9490, label %9858, label %9491, !dx.controlflow.hints !162

; <label>:9491                                    ; preds = %9460
  %9492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9493 = extractvalue %dx.types.CBufRet.f32 %9492, 2
  %9494 = extractvalue %dx.types.CBufRet.f32 %9492, 3
  %9495 = fmul fast float %9493, %98
  %9496 = fmul fast float %9494, %99
  %9497 = fmul fast float %9495, 2.000000e+00
  %9498 = fmul fast float %9496, 2.000000e+00
  %9499 = fsub fast float 1.000000e+00, %9497
  %9500 = fsub fast float 1.000000e+00, %9498
  %9501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9502 = extractvalue %dx.types.CBufRet.f32 %9501, 0
  %9503 = extractvalue %dx.types.CBufRet.f32 %9501, 1
  %9504 = extractvalue %dx.types.CBufRet.f32 %9501, 2
  %9505 = fmul fast float %9499, %9502
  %9506 = fmul fast float %9499, %9503
  %9507 = fmul fast float %9499, %9504
  %9508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9509 = extractvalue %dx.types.CBufRet.f32 %9508, 0
  %9510 = extractvalue %dx.types.CBufRet.f32 %9508, 1
  %9511 = extractvalue %dx.types.CBufRet.f32 %9508, 2
  %9512 = fmul fast float %9500, %9509
  %9513 = fmul fast float %9500, %9510
  %9514 = fmul fast float %9500, %9511
  %9515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9516 = extractvalue %dx.types.CBufRet.f32 %9515, 0
  %9517 = extractvalue %dx.types.CBufRet.f32 %9515, 1
  %9518 = extractvalue %dx.types.CBufRet.f32 %9515, 2
  %9519 = fadd fast float %9512, %9516
  %9520 = fadd fast float %9519, %9505
  %9521 = fadd fast float %9513, %9517
  %9522 = fadd fast float %9521, %9506
  %9523 = fadd fast float %9514, %9518
  %9524 = fadd fast float %9523, %9507
  %9525 = fmul fast float %9520, %8700
  %9526 = fmul fast float %9522, %8700
  %9527 = fmul fast float %9524, %8700
  %9528 = fmul fast float %9525, %9525
  %9529 = fmul fast float %9526, %9526
  %9530 = fadd fast float %9528, %9529
  %9531 = fmul fast float %9527, %9527
  %9532 = fadd fast float %9530, %9531
  %9533 = call float @dx.op.unary.f32(i32 24, float %9532)  ; Sqrt(value)
  %9534 = extractvalue %dx.types.CBufRet.f32 %8427, 0
  %9535 = fsub fast float %9533, %9534
  %9536 = extractvalue %dx.types.CBufRet.f32 %8427, 2
  %9537 = fmul fast float %9535, %9536
  %9538 = call float @dx.op.unary.f32(i32 7, float %9537)  ; Saturate(value)
  %9539 = fadd fast float %9538, -5.000000e-01
  %9540 = fmul fast float %9539, 2.000000e+00
  %9541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9542 = extractvalue %dx.types.CBufRet.f32 %9541, 2
  %9543 = call float @dx.op.binary.f32(i32 36, float %9542, float %9540)  ; FMin(a,b)
  %9544 = fsub fast float -0.000000e+00, %9542
  %9545 = fcmp fast ogt float %9543, %9544
  br i1 %9545, label %9546, label %9858, !dx.controlflow.hints !163

; <label>:9546                                    ; preds = %9491
  %9547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9548 = extractvalue %dx.types.CBufRet.f32 %9547, 3
  %9549 = fcmp fast ogt float %9548, 0.000000e+00
  br i1 %9549, label %9550, label %9625, !dx.controlflow.hints !164

; <label>:9550                                    ; preds = %9546
  %9551 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9552 = extractvalue %dx.types.Dimensions %9551, 0
  %9553 = sitofp i32 %9552 to float
  %9554 = extractvalue %dx.types.Dimensions %9551, 1
  %9555 = sitofp i32 %9554 to float
  %9556 = fmul fast float %9495, %9553
  %9557 = fmul fast float %9496, %9555
  %9558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9559 = extractvalue %dx.types.CBufRet.f32 %9558, 1
  %9560 = fsub fast float -0.000000e+00, %9559
  %9561 = fptoui float %9560 to i32
  %9562 = fptoui float %9556 to i32
  %9563 = fptoui float %9557 to i32
  %9564 = and i32 %9561, 31
  %9565 = lshr i32 %9562, %9564
  %9566 = lshr i32 %9563, %9564
  %9567 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9561, i32 %9565, i32 %9566, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9568 = extractvalue %dx.types.ResRet.f32 %9567, 0
  %9569 = fcmp fast olt float %9568, -1.000000e+00
  %9570 = fcmp fast ogt float %9568, -1.000000e+00
  %9571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9572 = extractvalue %dx.types.CBufRet.f32 %9571, 1
  %9573 = select i1 %9570, float %9572, float 1.000000e+00
  %9574 = fadd fast float %9568, 1.000000e+00
  %9575 = fmul fast float %9573, %9574
  %9576 = call float @dx.op.unary.f32(i32 6, float %9575)  ; FAbs(value)
  %9577 = extractvalue %dx.types.CBufRet.f32 %9571, 3
  %9578 = fcmp fast oge float %9576, %9577
  %9579 = select i1 %9578, float 0x4197782600000000, float %9576
  %9580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9581 = extractvalue %dx.types.CBufRet.f32 %9580, 0
  %9582 = extractvalue %dx.types.CBufRet.f32 %9580, 1
  %9583 = extractvalue %dx.types.CBufRet.f32 %9580, 2
  %9584 = select i1 %9569, float %9581, float %9502
  %9585 = select i1 %9569, float %9582, float %9503
  %9586 = select i1 %9569, float %9583, float %9504
  %9587 = fmul fast float %9584, %9499
  %9588 = fmul fast float %9585, %9499
  %9589 = fmul fast float %9586, %9499
  %9590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9591 = extractvalue %dx.types.CBufRet.f32 %9590, 0
  %9592 = extractvalue %dx.types.CBufRet.f32 %9590, 1
  %9593 = extractvalue %dx.types.CBufRet.f32 %9590, 2
  %9594 = select i1 %9569, float %9591, float %9509
  %9595 = select i1 %9569, float %9592, float %9510
  %9596 = select i1 %9569, float %9593, float %9511
  %9597 = fmul fast float %9594, %9500
  %9598 = fmul fast float %9595, %9500
  %9599 = fmul fast float %9596, %9500
  %9600 = fadd fast float %9597, %9587
  %9601 = fadd fast float %9598, %9588
  %9602 = fadd fast float %9599, %9589
  %9603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9604 = extractvalue %dx.types.CBufRet.f32 %9603, 0
  %9605 = extractvalue %dx.types.CBufRet.f32 %9603, 1
  %9606 = extractvalue %dx.types.CBufRet.f32 %9603, 2
  %9607 = select i1 %9569, float %9604, float %9516
  %9608 = select i1 %9569, float %9605, float %9517
  %9609 = select i1 %9569, float %9606, float %9518
  %9610 = fadd fast float %9600, %9607
  %9611 = fadd fast float %9601, %9608
  %9612 = fadd fast float %9602, %9609
  %9613 = fmul fast float %9610, %9579
  %9614 = fmul fast float %9611, %9579
  %9615 = fmul fast float %9612, %9579
  %9616 = fmul fast float %9613, %9613
  %9617 = fmul fast float %9614, %9614
  %9618 = fadd fast float %9616, %9617
  %9619 = fmul fast float %9615, %9615
  %9620 = fadd fast float %9618, %9619
  %9621 = call float @dx.op.unary.f32(i32 24, float %9620)  ; Sqrt(value)
  %9622 = fsub fast float %9621, %9534
  %9623 = fmul fast float %9622, %9536
  %9624 = call float @dx.op.unary.f32(i32 7, float %9623)  ; Saturate(value)
  br label %9625

; <label>:9625                                    ; preds = %9550, %9546
  %9626 = phi float [ %9624, %9550 ], [ 1.000000e+00, %9546 ]
  %9627 = fmul fast float %9543, 5.000000e-01
  %9628 = fadd fast float %9627, 5.000000e-01
  %9629 = call float @dx.op.unary.f32(i32 22, float %9628)  ; Frc(value)
  %9630 = call float @dx.op.unary.f32(i32 27, float %9629)  ; Round_ni(value)
  %9631 = call float @dx.op.unary.f32(i32 22, float %9629)  ; Frc(value)
  %9632 = fmul fast float %9631, 2.000000e+00
  %9633 = fadd fast float %9632, -1.000000e+00
  %9634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %9495, float %9496, float %9630, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9635 = extractvalue %dx.types.ResRet.f32 %9634, 0
  %9636 = extractvalue %dx.types.ResRet.f32 %9634, 1
  %9637 = extractvalue %dx.types.ResRet.f32 %9634, 2
  %9638 = extractvalue %dx.types.ResRet.f32 %9634, 3
  %9639 = fadd fast float %9635, -5.000000e-01
  %9640 = fadd fast float %9637, -5.000000e-01
  %9641 = fmul fast float %9639, 0xBFD5555560000000
  %9642 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9640, float %9641)  ; FMad(a,b,c)
  %9643 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9636, float 0.000000e+00)  ; FMad(a,b,c)
  %9644 = fadd fast float %9643, %9638
  %9645 = fmul fast float %9639, -7.500000e-01
  %9646 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9640, float %9645)  ; FMad(a,b,c)
  %9647 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9636, float 0.000000e+00)  ; FMad(a,b,c)
  %9648 = fadd fast float %9647, %9638
  %9649 = call float @dx.op.binary.f32(i32 35, float %9642, float -1.000000e+00)  ; FMax(a,b)
  %9650 = call float @dx.op.binary.f32(i32 35, float %9644, float -1.000000e+00)  ; FMax(a,b)
  %9651 = call float @dx.op.binary.f32(i32 35, float %9646, float -1.000000e+00)  ; FMax(a,b)
  %9652 = call float @dx.op.binary.f32(i32 35, float %9648, float -1.000000e+00)  ; FMax(a,b)
  %9653 = call float @dx.op.binary.f32(i32 36, float %9649, float 1.000000e+00)  ; FMin(a,b)
  %9654 = call float @dx.op.binary.f32(i32 36, float %9650, float 1.000000e+00)  ; FMin(a,b)
  %9655 = call float @dx.op.binary.f32(i32 36, float %9651, float 1.000000e+00)  ; FMin(a,b)
  %9656 = call float @dx.op.binary.f32(i32 36, float %9652, float 1.000000e+00)  ; FMin(a,b)
  %9657 = fcmp fast olt float %9653, 0x3FEFFF8020000000
  br i1 %9657, label %9658, label %9773, !dx.controlflow.hints !165

; <label>:9658                                    ; preds = %9625
  %9659 = extractvalue %dx.types.CBufRet.f32 %9541, 3
  %9660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9661 = extractvalue %dx.types.CBufRet.f32 %9660, 0
  %9662 = extractvalue %dx.types.CBufRet.f32 %9660, 1
  %9663 = extractvalue %dx.types.CBufRet.f32 %9660, 2
  %9664 = extractvalue %dx.types.CBufRet.f32 %9660, 3
  %9665 = fsub fast float %9661, %9653
  %9666 = fsub fast float %9662, %9654
  %9667 = fsub fast float %9663, %9655
  %9668 = fsub fast float %9664, %9656
  %9669 = fmul fast float %9665, %9659
  %9670 = fmul fast float %9666, %9659
  %9671 = fmul fast float %9667, %9659
  %9672 = fmul fast float %9668, %9659
  %9673 = fadd fast float %9669, %9653
  %9674 = fadd fast float %9670, %9654
  %9675 = fsub fast float -0.000000e+00, %9674
  %9676 = fadd fast float %9671, %9655
  %9677 = fadd fast float %9672, %9656
  %9678 = fmul fast float %9673, %9673
  %9679 = fsub fast float %9674, %9678
  %9680 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9679)  ; FMax(a,b)
  %9681 = fdiv fast float 1.000000e+00, %9680
  %9682 = fmul fast float %9674, %9673
  %9683 = fsub fast float %9676, %9682
  %9684 = fsub fast float %9633, %9673
  %9685 = fmul fast float %9633, %9633
  %9686 = fsub fast float %9685, %9674
  %9687 = fmul fast float %9684, %9681
  %9688 = fmul fast float %9687, %9683
  %9689 = fsub fast float %9686, %9688
  %9690 = fmul fast float %9674, %9674
  %9691 = fsub fast float %9677, %9690
  %9692 = fmul fast float %9683, %9683
  %9693 = fmul fast float %9692, %9681
  %9694 = fsub fast float %9691, %9693
  %9695 = fdiv fast float %9689, %9694
  %9696 = fmul fast float %9683, %9695
  %9697 = fsub fast float %9684, %9696
  %9698 = fmul fast float %9697, %9681
  %9699 = fmul fast float %9698, %9673
  %9700 = fsub fast float 1.000000e+00, %9699
  %9701 = fmul fast float %9674, %9695
  %9702 = fsub fast float %9700, %9701
  %9703 = fmul fast float %9698, %9698
  %9704 = fmul fast float %9695, 4.000000e+00
  %9705 = fmul fast float %9704, %9702
  %9706 = fsub fast float %9703, %9705
  %9707 = call float @dx.op.unary.f32(i32 24, float %9706)  ; Sqrt(value)
  %9708 = fcmp fast oge float %9698, 0.000000e+00
  %9709 = fsub fast float -0.000000e+00, %9707
  %9710 = select i1 %9708, float %9709, float %9707
  %9711 = fsub fast float %9710, %9698
  %9712 = fdiv fast float %9711, %9695
  %9713 = fdiv fast float %9702, %9711
  %9714 = fmul fast float %9712, 5.000000e-01
  %9715 = fmul fast float %9713, 2.000000e+00
  %9716 = select i1 %9708, float %9714, float %9715
  %9717 = select i1 %9708, float %9715, float %9714
  %9718 = call float @dx.op.binary.f32(i32 35, float %9716, float %9717)  ; FMax(a,b)
  %9719 = call float @dx.op.binary.f32(i32 36, float %9716, float %9717)  ; FMin(a,b)
  %9720 = fcmp fast ogt float %9633, %9719
  br i1 %9720, label %9721, label %9731

; <label>:9721                                    ; preds = %9658
  %9722 = fsub fast float %9633, %9719
  %9723 = fsub fast float %9718, %9719
  %9724 = fmul fast float %9722, %9723
  %9725 = fmul fast float %9718, %9633
  %9726 = fadd fast float %9718, %9633
  %9727 = fmul fast float %9726, %9673
  %9728 = fadd fast float %9725, %9674
  %9729 = fsub fast float %9728, %9727
  %9730 = fdiv fast float %9729, %9724
  br label %9731

; <label>:9731                                    ; preds = %9721, %9658
  %9732 = phi float [ %9730, %9721 ], [ 0.000000e+00, %9658 ]
  %9733 = fcmp fast ogt float %9633, %9718
  %9734 = fsub fast float %9633, %9718
  br i1 %9733, label %9735, label %9745

; <label>:9735                                    ; preds = %9731
  %9736 = fsub fast float %9718, %9719
  %9737 = fmul fast float %9736, %9734
  %9738 = fmul fast float %9719, %9633
  %9739 = fadd fast float %9719, %9633
  %9740 = fmul fast float %9739, %9673
  %9741 = fsub fast float %9675, %9738
  %9742 = fadd fast float %9741, %9740
  %9743 = fdiv fast float %9742, %9737
  %9744 = fadd fast float %9743, %9732
  br label %9745

; <label>:9745                                    ; preds = %9735, %9731
  %9746 = phi float [ %9744, %9735 ], [ %9732, %9731 ]
  %9747 = fsub fast float %9633, %9719
  %9748 = fmul fast float %9747, %9734
  %9749 = fmul fast float %9719, %9718
  %9750 = fadd fast float %9719, %9718
  %9751 = fmul fast float %9750, %9673
  %9752 = fadd fast float %9749, %9674
  %9753 = fsub fast float %9752, %9751
  %9754 = fdiv fast float %9753, %9748
  %9755 = call float @dx.op.unary.f32(i32 7, float %9746)  ; Saturate(value)
  %9756 = fcmp fast oeq float %8428, 0.000000e+00
  %9757 = extractvalue %dx.types.CBufRet.f32 %9541, 0
  %9758 = fcmp fast oeq float %9757, 0.000000e+00
  %9759 = or i1 %9756, %9758
  %9760 = fmul fast float %9757, 2.000000e+00
  %9761 = fadd fast float %9542, %9543
  %9762 = fdiv fast float %9761, %9760
  %9763 = call float @dx.op.unary.f32(i32 7, float %9762)  ; Saturate(value)
  %9764 = fmul fast float %9763, 2.000000e+00
  %9765 = fsub fast float 3.000000e+00, %9764
  %9766 = fmul fast float %9763, %9763
  %9767 = fmul fast float %9766, %9765
  %9768 = select i1 %9759, float 1.000000e+00, float %9767
  %9769 = fmul fast float %9754, %8428
  %9770 = fadd fast float %9755, %9769
  %9771 = call float @dx.op.unary.f32(i32 7, float %9770)  ; Saturate(value)
  %9772 = fmul fast float %9768, %9771
  br label %9773

; <label>:9773                                    ; preds = %9745, %9625
  %9774 = phi float [ %9772, %9745 ], [ 0.000000e+00, %9625 ]
  %9775 = fsub fast float 1.000000e+00, %9774
  %9776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %43, float %9495, float %9496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9777 = extractvalue %dx.types.ResRet.f32 %9776, 0
  %9778 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9779 = extractvalue %dx.types.CBufRet.i32 %9778, 2
  %9780 = icmp eq i32 %9779, 0
  br i1 %9780, label %9786, label %9781

; <label>:9781                                    ; preds = %9773
  %9782 = call float @dx.op.unary.f32(i32 7, float %9774)  ; Saturate(value)
  %9783 = fadd fast float %9777, -1.000000e+00
  %9784 = fmul fast float %9782, %9783
  %9785 = fadd fast float %9784, 1.000000e+00
  br label %9786

; <label>:9786                                    ; preds = %9781, %9773
  %9787 = phi float [ %9785, %9781 ], [ %9775, %9773 ]
  br i1 %9549, label %9788, label %9806

; <label>:9788                                    ; preds = %9786
  %9789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9790 = extractvalue %dx.types.CBufRet.f32 %9789, 1
  %9791 = fsub fast float %9626, %9790
  %9792 = call float @dx.op.unary.f32(i32 7, float %9791)  ; Saturate(value)
  %9793 = fsub fast float %9626, %9548
  %9794 = call float @dx.op.unary.f32(i32 7, float %9793)  ; Saturate(value)
  %9795 = fsub fast float %9792, %9794
  %9796 = fsub fast float %9628, %9794
  %9797 = fdiv fast float %9796, %9795
  %9798 = call float @dx.op.unary.f32(i32 7, float %9797)  ; Saturate(value)
  %9799 = fmul fast float %9798, 2.000000e+00
  %9800 = fsub fast float 3.000000e+00, %9799
  %9801 = fsub fast float %9777, %9787
  %9802 = fmul fast float %9798, %9798
  %9803 = fmul fast float %9802, %9801
  %9804 = fmul fast float %9803, %9800
  %9805 = fadd fast float %9804, %9787
  br label %9806

; <label>:9806                                    ; preds = %9788, %9786
  %9807 = phi float [ %9805, %9788 ], [ %9787, %9786 ]
  %9808 = call float @dx.op.binary.f32(i32 35, float %9777, float %9807)  ; FMax(a,b)
  %9809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9810 = extractvalue %dx.types.CBufRet.i32 %9809, 2
  %9811 = and i32 %9810, 1
  %9812 = icmp eq i32 %9811, 0
  %9813 = fcmp fast une float %9808, 1.000000e+00
  %9814 = and i1 %9813, %9812
  br i1 %9814, label %9815, label %9834

; <label>:9815                                    ; preds = %9806
  %9816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %9495, float %9496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9817 = extractvalue %dx.types.ResRet.f32 %9816, 0
  %9818 = extractvalue %dx.types.ResRet.f32 %9816, 1
  %9819 = extractvalue %dx.types.ResRet.f32 %9816, 2
  %9820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9821 = extractvalue %dx.types.CBufRet.f32 %9820, 1
  %9822 = fmul fast float %9821, %9817
  %9823 = fmul fast float %9821, %9818
  %9824 = fmul fast float %9821, %9819
  %9825 = fcmp fast ogt float %9777, 0x3FEFFF2E40000000
  %9826 = fsub fast float 1.000000e+00, %9808
  %9827 = fsub fast float 1.000000e+00, %9777
  %9828 = fdiv fast float %9826, %9827
  %9829 = call float @dx.op.unary.f32(i32 7, float %9828)  ; Saturate(value)
  %9830 = select i1 %9825, float 0.000000e+00, float %9829
  %9831 = fmul fast float %9822, %9830
  %9832 = fmul fast float %9823, %9830
  %9833 = fmul fast float %9824, %9830
  br label %9834

; <label>:9834                                    ; preds = %9815, %9806
  %9835 = phi float [ 0.000000e+00, %9806 ], [ %9831, %9815 ]
  %9836 = phi float [ 0.000000e+00, %9806 ], [ %9832, %9815 ]
  %9837 = phi float [ 0.000000e+00, %9806 ], [ %9833, %9815 ]
  %9838 = fmul fast float %9835, %8413
  %9839 = fmul fast float %9836, %8413
  %9840 = fmul fast float %9837, %8413
  %9841 = fmul fast float %9808, %9470
  %9842 = call float @dx.op.dot3.f32(i32 55, float %9808, float %9808, float %9808, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9843 = call float @dx.op.dot3.f32(i32 55, float %9838, float %9839, float %9840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9844 = select i1 %214, float %9842, float %9808
  %9845 = select i1 %214, float 1.000000e+00, float %9808
  %9846 = select i1 %214, float %9843, float %9838
  %9847 = select i1 %214, float 0.000000e+00, float %9839
  %9848 = select i1 %214, float 0.000000e+00, float %9840
  %9849 = fmul fast float %9844, %9482
  %9850 = fmul fast float %9844, %9483
  %9851 = fmul fast float %9845, %9484
  %9852 = fadd fast float %9849, %9846
  %9853 = fadd fast float %9850, %9847
  %9854 = fadd fast float %9848, %9851
  %9855 = fmul fast float %9844, %9485
  %9856 = fmul fast float %9844, %9486
  %9857 = fmul fast float %9845, %9487
  br label %9858

; <label>:9858                                    ; preds = %9834, %9491, %9460, %8696
  %9859 = phi float [ %8701, %8696 ], [ %9482, %9460 ], [ %9852, %9834 ], [ %9482, %9491 ]
  %9860 = phi float [ %8702, %8696 ], [ %9483, %9460 ], [ %9853, %9834 ], [ %9483, %9491 ]
  %9861 = phi float [ %8703, %8696 ], [ %9484, %9460 ], [ %9854, %9834 ], [ %9484, %9491 ]
  %9862 = phi float [ %8704, %8696 ], [ %9485, %9460 ], [ %9855, %9834 ], [ %9485, %9491 ]
  %9863 = phi float [ %8705, %8696 ], [ %9486, %9460 ], [ %9856, %9834 ], [ %9486, %9491 ]
  %9864 = phi float [ %8706, %8696 ], [ %9487, %9460 ], [ %9857, %9834 ], [ %9487, %9491 ]
  %9865 = phi float [ %8707, %8696 ], [ %9470, %9460 ], [ %9841, %9834 ], [ %9470, %9491 ]
  %9866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9867 = extractvalue %dx.types.CBufRet.f32 %9866, 2
  %9868 = extractvalue %dx.types.CBufRet.f32 %9866, 3
  %9869 = fmul fast float %9867, %98
  %9870 = fmul fast float %9868, %99
  %9871 = call float @dx.op.unary.f32(i32 7, float %9869)  ; Saturate(value)
  %9872 = call float @dx.op.unary.f32(i32 7, float %9870)  ; Saturate(value)
  %9873 = select i1 %8438, i32 2, i32 0
  %9874 = or i32 %9873, 1
  %9875 = uitofp i32 %9874 to float
  %9876 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9871, float %9872, float %9875, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9877 = extractvalue %dx.types.ResRet.f32 %9876, 0
  %9878 = extractvalue %dx.types.ResRet.f32 %9876, 1
  %9879 = extractvalue %dx.types.ResRet.f32 %9876, 2
  %9880 = extractvalue %dx.types.ResRet.f32 %9876, 3
  %9881 = add nuw nsw i32 %9873, 2
  %9882 = uitofp i32 %9881 to float
  %9883 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9871, float %9872, float %9882, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9884 = extractvalue %dx.types.ResRet.f32 %9883, 0
  %9885 = extractvalue %dx.types.ResRet.f32 %9883, 1
  %9886 = extractvalue %dx.types.ResRet.f32 %9883, 2
  %9887 = extractvalue %dx.types.ResRet.f32 %9883, 3
  %9888 = call float @dx.op.binary.f32(i32 35, float %9878, float %9879)  ; FMax(a,b)
  %9889 = call float @dx.op.binary.f32(i32 35, float %9877, float %9888)  ; FMax(a,b)
  %9890 = call float @dx.op.binary.f32(i32 35, float %9889, float %9880)  ; FMax(a,b)
  %9891 = call float @dx.op.binary.f32(i32 36, float %9885, float %9886)  ; FMin(a,b)
  %9892 = call float @dx.op.binary.f32(i32 36, float %9884, float %9891)  ; FMin(a,b)
  %9893 = call float @dx.op.binary.f32(i32 36, float %9892, float %9887)  ; FMin(a,b)
  %9894 = fmul fast float %9890, 2.550000e+02
  %9895 = fadd fast float %9894, 0x3F70101020000000
  %9896 = fptoui float %9895 to i32
  %9897 = fmul fast float %9893, 2.550000e+02
  %9898 = fadd fast float %9897, 0x3F70101020000000
  %9899 = fptoui float %9898 to i32
  %9900 = icmp ult i32 %9896, %9899
  br i1 %9900, label %9901, label %10070

; <label>:9901                                    ; preds = %9858
  %9902 = fcmp fast ogt float %85, 9.843750e-01
  %9903 = fadd fast float %8700, -4.000000e+00
  %9904 = select i1 %9902, float -4.000000e+00, float %9903
  %9905 = call float @dx.op.binary.f32(i32 35, float %9904, float 0.000000e+00)  ; FMax(a,b)
  %9906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9907 = extractvalue %dx.types.CBufRet.f32 %9906, 0
  %9908 = fadd fast float %9907, %9905
  %9909 = extractvalue %dx.types.CBufRet.f32 %9906, 2
  %9910 = fmul fast float %9908, %9909
  %9911 = call float @dx.op.unary.f32(i32 23, float %9910)  ; Log(value)
  %9912 = extractvalue %dx.types.CBufRet.f32 %9906, 3
  %9913 = fmul fast float %9912, %9911
  %9914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9915 = extractvalue %dx.types.CBufRet.f32 %9914, 2
  %9916 = fmul fast float %9913, %9915
  %9917 = call float @dx.op.unary.f32(i32 7, float %9916)  ; Saturate(value)
  %9918 = uitofp i32 %9896 to float
  %9919 = uitofp i32 %9899 to float
  %9920 = fadd fast float %9918, 5.000000e-01
  %9921 = fadd fast float %9919, 5.000000e-01
  %9922 = fmul fast float %9915, %9920
  %9923 = fmul fast float %9915, %9921
  %9924 = fadd fast float %9922, 0x3F0FFB4800000000
  %9925 = fadd fast float %9923, 0xBF0FFB4800000000
  %9926 = call float @dx.op.binary.f32(i32 35, float %9917, float %9924)  ; FMax(a,b)
  %9927 = call float @dx.op.binary.f32(i32 36, float %9926, float %9925)  ; FMin(a,b)
  %9928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9929 = extractvalue %dx.types.CBufRet.f32 %9928, 1
  %9930 = extractvalue %dx.types.CBufRet.f32 %9928, 2
  %9931 = extractvalue %dx.types.CBufRet.f32 %9928, 0
  %9932 = select i1 %8438, float %9931, float 0.000000e+00
  %9933 = fmul fast float %9929, %9927
  %9934 = fadd fast float %9932, %9933
  %9935 = fadd fast float %9932, %9930
  %9936 = fsub fast float %9929, %9930
  %9937 = fadd fast float %9936, %9932
  %9938 = call float @dx.op.binary.f32(i32 35, float %9934, float %9935)  ; FMax(a,b)
  %9939 = call float @dx.op.binary.f32(i32 36, float %9938, float %9937)  ; FMin(a,b)
  %9940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %9871, float %9872, float %9939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9941 = extractvalue %dx.types.ResRet.f32 %9940, 0
  %9942 = extractvalue %dx.types.ResRet.f32 %9940, 1
  %9943 = extractvalue %dx.types.ResRet.f32 %9940, 2
  %9944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9945 = extractvalue %dx.types.CBufRet.i32 %9944, 0
  %9946 = extractvalue %dx.types.CBufRet.i32 %9944, 1
  %9947 = uitofp i32 %9945 to float
  %9948 = uitofp i32 %9946 to float
  %9949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9950 = extractvalue %dx.types.CBufRet.f32 %9949, 0
  %9951 = extractvalue %dx.types.CBufRet.f32 %9949, 1
  %9952 = fmul fast float %9947, %9871
  %9953 = fmul fast float %9948, %9872
  %9954 = fadd fast float %9952, -5.000000e-01
  %9955 = fadd fast float %9953, -5.000000e-01
  %9956 = call float @dx.op.unary.f32(i32 22, float %9954)  ; Frc(value)
  %9957 = call float @dx.op.unary.f32(i32 22, float %9955)  ; Frc(value)
  %9958 = fmul fast float %9956, %9956
  %9959 = fmul fast float %9958, %9956
  %9960 = fsub fast float 3.000000e+00, %9956
  %9961 = fmul fast float %9958, %9960
  %9962 = fmul fast float %9956, 3.000000e+00
  %9963 = fmul fast float %9959, 3.000000e+00
  %9964 = fmul fast float %9958, 6.000000e+00
  %9965 = fsub fast float %9963, %9964
  %9966 = fadd fast float %9965, 4.000000e+00
  %9967 = fmul fast float %9966, 0x3FC5555560000000
  %9968 = fmul fast float %9959, -3.000000e+00
  %9969 = fadd fast float %9958, %9956
  %9970 = fmul fast float %9969, 3.000000e+00
  %9971 = fadd fast float %9968, 1.000000e+00
  %9972 = fadd fast float %9971, %9970
  %9973 = fmul fast float %9959, 0x3FC5555560000000
  %9974 = fmul fast float %9957, %9957
  %9975 = fmul fast float %9974, %9957
  %9976 = fsub fast float 3.000000e+00, %9957
  %9977 = fmul fast float %9974, %9976
  %9978 = fmul fast float %9957, 3.000000e+00
  %9979 = fmul fast float %9975, 3.000000e+00
  %9980 = fmul fast float %9974, 6.000000e+00
  %9981 = fsub fast float %9979, %9980
  %9982 = fadd fast float %9981, 4.000000e+00
  %9983 = fmul fast float %9982, 0x3FC5555560000000
  %9984 = fmul fast float %9975, -3.000000e+00
  %9985 = fadd fast float %9974, %9957
  %9986 = fmul fast float %9985, 3.000000e+00
  %9987 = fadd fast float %9984, 1.000000e+00
  %9988 = fadd fast float %9987, %9986
  %9989 = fmul fast float %9975, 0x3FC5555560000000
  %9990 = fadd fast float %9956, 1.000000e+00
  %9991 = fsub fast float 1.000000e+00, %9962
  %9992 = fadd fast float %9991, %9961
  %9993 = fadd fast float %9992, %9966
  %9994 = fmul fast float %9993, 0x3FC5555560000000
  %9995 = fdiv fast float %9967, %9994
  %9996 = fsub fast float %9990, %9995
  %9997 = fsub fast float 1.000000e+00, %9956
  %9998 = fadd fast float %9972, %9959
  %9999 = fmul fast float %9998, 0x3FC5555560000000
  %10000 = fdiv fast float %9973, %9999
  %10001 = fadd fast float %9997, %10000
  %10002 = fadd fast float %9957, 1.000000e+00
  %10003 = fsub fast float 1.000000e+00, %9978
  %10004 = fadd fast float %10003, %9977
  %10005 = fadd fast float %10004, %9982
  %10006 = fmul fast float %10005, 0x3FC5555560000000
  %10007 = fdiv fast float %9983, %10006
  %10008 = fsub fast float %10002, %10007
  %10009 = fsub fast float 1.000000e+00, %9957
  %10010 = fadd fast float %9988, %9975
  %10011 = fmul fast float %10010, 0x3FC5555560000000
  %10012 = fdiv fast float %9989, %10011
  %10013 = fadd fast float %10012, %10009
  %10014 = fmul fast float %9996, %9950
  %10015 = fsub fast float %9871, %10014
  %10016 = fmul fast float %10001, %9950
  %10017 = fadd fast float %10016, %9871
  %10018 = fmul fast float %10013, %9951
  %10019 = fadd fast float %10018, %9872
  %10020 = fmul fast float %10008, %9951
  %10021 = fsub fast float %9872, %10020
  %10022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %10015, float %10021, float %9939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10023 = extractvalue %dx.types.ResRet.f32 %10022, 0
  %10024 = extractvalue %dx.types.ResRet.f32 %10022, 1
  %10025 = extractvalue %dx.types.ResRet.f32 %10022, 2
  %10026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %10017, float %10021, float %9939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10027 = extractvalue %dx.types.ResRet.f32 %10026, 0
  %10028 = extractvalue %dx.types.ResRet.f32 %10026, 1
  %10029 = extractvalue %dx.types.ResRet.f32 %10026, 2
  %10030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %10015, float %10019, float %9939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10031 = extractvalue %dx.types.ResRet.f32 %10030, 0
  %10032 = extractvalue %dx.types.ResRet.f32 %10030, 1
  %10033 = extractvalue %dx.types.ResRet.f32 %10030, 2
  %10034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %10017, float %10019, float %9939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10035 = extractvalue %dx.types.ResRet.f32 %10034, 0
  %10036 = extractvalue %dx.types.ResRet.f32 %10034, 1
  %10037 = extractvalue %dx.types.ResRet.f32 %10034, 2
  %10038 = fsub fast float %10031, %10023
  %10039 = fsub fast float %10032, %10024
  %10040 = fsub fast float %10033, %10025
  %10041 = fmul fast float %10038, %10011
  %10042 = fmul fast float %10039, %10011
  %10043 = fmul fast float %10040, %10011
  %10044 = fadd fast float %10041, %10023
  %10045 = fadd fast float %10042, %10024
  %10046 = fadd fast float %10043, %10025
  %10047 = fsub fast float %10035, %10027
  %10048 = fsub fast float %10036, %10028
  %10049 = fsub fast float %10037, %10029
  %10050 = fmul fast float %10047, %10011
  %10051 = fmul fast float %10048, %10011
  %10052 = fmul fast float %10049, %10011
  %10053 = fsub fast float %10027, %10044
  %10054 = fadd fast float %10053, %10050
  %10055 = fsub fast float %10028, %10045
  %10056 = fadd fast float %10055, %10051
  %10057 = fsub fast float %10029, %10046
  %10058 = fadd fast float %10057, %10052
  %10059 = fmul fast float %10054, %9999
  %10060 = fmul fast float %10056, %9999
  %10061 = fmul fast float %10058, %9999
  %10062 = fadd fast float %10059, %10044
  %10063 = fadd fast float %10060, %10045
  %10064 = fadd fast float %10061, %10046
  %10065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10066 = extractvalue %dx.types.CBufRet.f32 %10065, 1
  %10067 = fmul fast float %10062, %10066
  %10068 = fmul fast float %10063, %10066
  %10069 = fmul fast float %10064, %10066
  br label %10070

; <label>:10070                                   ; preds = %9901, %9858
  %10071 = phi float [ %9941, %9901 ], [ 1.000000e+00, %9858 ]
  %10072 = phi float [ %9942, %9901 ], [ 1.000000e+00, %9858 ]
  %10073 = phi float [ %9943, %9901 ], [ 1.000000e+00, %9858 ]
  %10074 = phi float [ %10067, %9901 ], [ 0.000000e+00, %9858 ]
  %10075 = phi float [ %10068, %9901 ], [ 0.000000e+00, %9858 ]
  %10076 = phi float [ %10069, %9901 ], [ 0.000000e+00, %9858 ]
  %10077 = fmul fast float %10074, %8413
  %10078 = fmul fast float %10075, %8413
  %10079 = fmul fast float %10076, %8413
  %10080 = fmul fast float %10071, %9865
  %10081 = call float @dx.op.dot3.f32(i32 55, float %10071, float %10072, float %10073, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10082 = call float @dx.op.dot3.f32(i32 55, float %10077, float %10078, float %10079, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10083 = select i1 %214, float %10081, float %10071
  %10084 = select i1 %214, float %10081, float %10072
  %10085 = select i1 %214, float 1.000000e+00, float %10073
  %10086 = select i1 %214, float %10082, float %10077
  %10087 = select i1 %214, float 0.000000e+00, float %10078
  %10088 = select i1 %214, float 0.000000e+00, float %10079
  %10089 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10090 = extractvalue %dx.types.CBufRet.i32 %10089, 3
  %10091 = and i32 %10090, 3
  %10092 = icmp ne i32 %10091, 0
  %10093 = and i32 %10090, 4
  %10094 = icmp ne i32 %10093, 0
  %10095 = and i1 %10092, %10094
  %10096 = and i1 %214, %10095
  br i1 %10096, label %10097, label %10103

; <label>:10097                                   ; preds = %10070
  %10098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10099 = extractvalue %dx.types.CBufRet.f32 %10098, 1
  %10100 = fadd fast float %10080, -1.000000e+00
  %10101 = fmul fast float %10099, %10100
  %10102 = fadd fast float %10101, 1.000000e+00
  br label %10103

; <label>:10103                                   ; preds = %10097, %10070
  %10104 = phi float [ %10102, %10097 ], [ %10080, %10070 ]
  %10105 = fadd fast float %9862, %9859
  %10106 = fmul fast float %10083, %10105
  %10107 = fadd fast float %10106, %10086
  %10108 = fadd fast float %9863, %9860
  %10109 = fmul fast float %10084, %10108
  %10110 = fadd fast float %10109, %10087
  %10111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10112 = extractvalue %dx.types.CBufRet.f32 %10111, 0
  br i1 %214, label %10113, label %10137

; <label>:10113                                   ; preds = %10103
  %10114 = fadd fast float %10107, %10110
  %10115 = fmul fast float %10112, %10114
  %10116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10117 = extractvalue %dx.types.CBufRet.f32 %10116, 3
  %10118 = extractvalue %dx.types.CBufRet.f32 %8420, 1
  %10119 = fsub fast float %8425, %8416
  %10120 = fsub fast float %10119, %8419
  %10121 = fadd fast float %10120, %8426
  %10122 = fsub fast float %10121, %10118
  %10123 = extractvalue %dx.types.CBufRet.f32 %8420, 2
  %10124 = fmul fast float %10122, %10123
  %10125 = call float @dx.op.unary.f32(i32 7, float %10124)  ; Saturate(value)
  %10126 = fsub fast float %10125, %10117
  %10127 = fmul fast float %10126, %10104
  %10128 = fadd fast float %10127, %10117
  %10129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10130 = extractvalue %dx.types.CBufRet.f32 %10129, 0
  %10131 = fsub fast float %10128, %10130
  %10132 = fmul fast float %10131, 1.000000e+01
  %10133 = call float @dx.op.unary.f32(i32 7, float %10132)  ; Saturate(value)
  %10134 = fmul fast float %10133, %8412
  %10135 = fadd fast float %10134, %8413
  %10136 = fmul fast float %10135, %10128
  br label %10161

; <label>:10137                                   ; preds = %10103
  %10138 = fadd fast float %9864, %9861
  %10139 = fmul fast float %10085, %10138
  %10140 = fadd fast float %10139, %10088
  %10141 = fmul fast float %10112, %10107
  %10142 = fmul fast float %10112, %10110
  %10143 = fmul fast float %10112, %10140
  %10144 = call float @dx.op.binary.f32(i32 35, float %10141, float %10142)  ; FMax(a,b)
  %10145 = call float @dx.op.binary.f32(i32 35, float %10144, float %10143)  ; FMax(a,b)
  %10146 = call float @dx.op.binary.f32(i32 35, float %10145, float %8413)  ; FMax(a,b)
  %10147 = fcmp fast ugt float %10146, 0x3F10000000000000
  br i1 %10147, label %10149, label %10148

; <label>:10148                                   ; preds = %10137
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10149

; <label>:10149                                   ; preds = %10148, %10137
  %10150 = add i32 %49, 356
  %10151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %10150, i32 undef)  ; BufferLoad(srv,index,wot)
  %10152 = extractvalue %dx.types.ResRet.i32 %10151, 0
  %10153 = and i32 %10152, 32
  %10154 = icmp eq i32 %10153, 0
  br i1 %10154, label %10161, label %10155

; <label>:10155                                   ; preds = %10149
  %10156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10157 = extractvalue %dx.types.CBufRet.f32 %10156, 0
  %10158 = fmul fast float %10157, 0x3FE99999A0000000
  %10159 = fadd fast float %10157, %10141
  %10160 = fadd fast float %10158, %10143
  br label %10161

; <label>:10161                                   ; preds = %10155, %10149, %10113
  %10162 = phi float [ %10115, %10113 ], [ %10159, %10155 ], [ %10141, %10149 ]
  %10163 = phi float [ %10136, %10113 ], [ %10142, %10155 ], [ %10142, %10149 ]
  %10164 = phi float [ %10135, %10113 ], [ %10160, %10155 ], [ %10143, %10149 ]
  %10165 = phi float [ %10135, %10113 ], [ %8413, %10155 ], [ %8413, %10149 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10166 = call float @dx.op.binary.f32(i32 36, float %10162, float 3.225500e+04)  ; FMin(a,b)
  %10167 = call float @dx.op.binary.f32(i32 36, float %10163, float 3.225500e+04)  ; FMin(a,b)
  %10168 = call float @dx.op.binary.f32(i32 36, float %10164, float 3.225500e+04)  ; FMin(a,b)
  %10169 = call float @dx.op.binary.f32(i32 36, float %10165, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10166)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10167)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10168)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10169)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!62}
!dx.entryPoints = !{!63}

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
!53 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!56 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!57 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!58 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!59 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!60 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!61 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!62 = !{[46 x i32] [i32 44, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!63 = !{void ()* @ps_main, !"ps_main", !64, !4, !85}
!64 = !{!65, !83, null}
!65 = !{!66, !69, !70, !72, !74, !75, !76, !77, !78, !79, !80, !82}
!66 = !{i32 0, !"SV_Position", i8 9, i8 3, !67, i8 4, i32 1, i8 4, i32 0, i8 0, !68}
!67 = !{i32 0}
!68 = !{i32 3, i32 15}
!69 = !{i32 1, !"COLOR", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 1, i8 0, !68}
!70 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 2, i8 0, !71}
!71 = !{i32 3, i32 3}
!72 = !{i32 3, !"NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 3, i8 0, !73}
!73 = !{i32 3, i32 7}
!74 = !{i32 4, !"TANGENT", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 4, i8 0, !68}
!75 = !{i32 5, !"SH_RED", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 5, i8 0, !68}
!76 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 6, i8 0, !68}
!77 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 7, i8 0, !68}
!78 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 2, i32 8, i8 0, !71}
!79 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 9, i8 0, !68}
!80 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !67, i8 1, i32 1, i8 4, i32 10, i8 0, !81}
!81 = !{i32 3, i32 13}
!82 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !67, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!83 = !{!84}
!84 = !{i32 0, !"SV_Target", i8 9, i8 16, !67, i8 0, i32 1, i8 4, i32 0, i8 0, !68}
!85 = !{i32 0, i64 16}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = !{!95, !95, i64 0}
!95 = !{!"int", !96, i64 0}
!96 = !{!"omnipotent char", !97, i64 0}
!97 = !{!"Simple C/C++ TBAA"}
!98 = !{!99, !101, !103, !105}
!99 = distinct !{!99, !100, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!100 = distinct !{!100, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!101 = distinct !{!101, !102, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!102 = distinct !{!102, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!103 = distinct !{!103, !104, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!104 = distinct !{!104, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!105 = distinct !{!105, !106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!106 = distinct !{!106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = !{!109, !109, i64 0}
!109 = !{!"float", !96, i64 0}
!110 = distinct !{!110, !88}
!111 = distinct !{!111, !88}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = !{!120, !122, !124, !125, !127, !128, !129, !131, !132, !133}
!120 = distinct !{!120, !121, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!121 = distinct !{!121, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!122 = distinct !{!122, !123, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!123 = distinct !{!123, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!124 = distinct !{!124, !123, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!125 = distinct !{!125, !126, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!126 = distinct !{!126, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!127 = distinct !{!127, !126, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!128 = distinct !{!128, !126, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!129 = distinct !{!129, !130, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!130 = distinct !{!130, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!131 = distinct !{!131, !130, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!132 = distinct !{!132, !130, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!133 = distinct !{!133, !134, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!134 = distinct !{!134, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"\01?sort@@YAXAIAM00@Z: %c"}
!137 = distinct !{!137, !"\01?sort@@YAXAIAM00@Z"}
!138 = !{!139, !140, !120, !122, !124, !125, !127, !128, !129, !131, !132, !133}
!139 = distinct !{!139, !137, !"\01?sort@@YAXAIAM00@Z: %a"}
!140 = distinct !{!140, !137, !"\01?sort@@YAXAIAM00@Z: %b"}
!141 = !{!140}
!142 = !{!139, !136, !120, !122, !124, !125, !127, !128, !129, !131, !132, !133}
!143 = !{!139}
!144 = !{!140, !136, !120, !122, !124, !125, !127, !128, !129, !131, !132, !133}
!145 = !{!146}
!146 = distinct !{!146, !147, !"\01?sort@@YAXAIAM00@Z: %c"}
!147 = distinct !{!147, !"\01?sort@@YAXAIAM00@Z"}
!148 = !{!149, !150, !120, !122, !124, !125, !127, !128, !129, !131, !132, !133}
!149 = distinct !{!149, !147, !"\01?sort@@YAXAIAM00@Z: %a"}
!150 = distinct !{!150, !147, !"\01?sort@@YAXAIAM00@Z: %b"}
!151 = !{!150}
!152 = !{!149, !146, !120, !122, !124, !125, !127, !128, !129, !131, !132, !133}
!153 = !{!149}
!154 = !{!150, !146, !120, !122, !124, !125, !127, !128, !129, !131, !132, !133}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 2}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}

