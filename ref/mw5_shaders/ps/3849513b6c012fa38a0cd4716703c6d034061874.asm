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
; shader hash: aee776050b313f7aa9838e43b5f7444f
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
  br i1 %4447, label %4448, label %5044

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
  br i1 %4499, label %5006, label %4500

; <label>:4500                                    ; preds = %4448
  %4501 = and i32 %4496, 1023
  br label %4502

; <label>:4502                                    ; preds = %4635, %4500
  %4503 = phi i32 [ %4585, %4635 ], [ 0, %4500 ]
  %4504 = phi float [ %4636, %4635 ], [ 0.000000e+00, %4500 ]
  %4505 = phi float [ %4637, %4635 ], [ %1240, %4500 ]
  %4506 = phi float [ %4638, %4635 ], [ %4417, %4500 ]
  %4507 = phi float [ %4639, %4635 ], [ %4415, %4500 ]
  %4508 = phi float [ %4640, %4635 ], [ %4405, %4500 ]
  %4509 = phi float [ %4641, %4635 ], [ %4406, %4500 ]
  %4510 = phi float [ %4642, %4635 ], [ %4407, %4500 ]
  %4511 = phi float [ %4643, %4635 ], [ 0.000000e+00, %4500 ]
  %4512 = phi float [ %4644, %4635 ], [ 0.000000e+00, %4500 ]
  %4513 = phi float [ %4645, %4635 ], [ %4408, %4500 ]
  %4514 = phi float [ %4646, %4635 ], [ %4409, %4500 ]
  %4515 = phi float [ %4647, %4635 ], [ %4410, %4500 ]
  %4516 = phi float [ %4648, %4635 ], [ %4402, %4500 ]
  %4517 = phi float [ %4649, %4635 ], [ %4403, %4500 ]
  %4518 = phi float [ %4650, %4635 ], [ %4404, %4500 ]
  %4519 = phi float [ %4651, %4635 ], [ %4443, %4500 ]
  %4520 = phi float [ %4652, %4635 ], [ %4444, %4500 ]
  %4521 = phi float [ %4653, %4635 ], [ %4445, %4500 ]
  %4522 = phi float [ %4654, %4635 ], [ %4413, %4500 ]
  %4523 = phi float [ %4655, %4635 ], [ %4412, %4500 ]
  %4524 = phi float [ %4656, %4635 ], [ 0.000000e+00, %4500 ]
  %4525 = phi float [ %4657, %4635 ], [ %4411, %4500 ]
  %4526 = phi float [ %4658, %4635 ], [ %4399, %4500 ]
  %4527 = phi float [ %4659, %4635 ], [ %4400, %4500 ]
  %4528 = phi float [ %4660, %4635 ], [ %4401, %4500 ]
  %4529 = add nuw nsw i32 %4503, %4498
  %4530 = shl i32 %4529, 2
  %4531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4530, i32 undef)  ; BufferLoad(srv,index,wot)
  %4532 = extractvalue %dx.types.ResRet.i32 %4531, 0
  %4533 = shl i32 %4532, 8
  %4534 = or i32 %4533, 48
  %4535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4534, i32 undef)  ; BufferLoad(srv,index,wot)
  %4536 = extractvalue %dx.types.ResRet.f32 %4535, 0
  %4537 = extractvalue %dx.types.ResRet.f32 %4535, 1
  %4538 = extractvalue %dx.types.ResRet.f32 %4535, 2
  %4539 = extractvalue %dx.types.ResRet.f32 %4535, 3
  %4540 = or i32 %4533, 64
  %4541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4540, i32 undef)  ; BufferLoad(srv,index,wot)
  %4542 = extractvalue %dx.types.ResRet.i32 %4541, 0
  %4543 = extractvalue %dx.types.ResRet.i32 %4541, 1
  %4544 = or i32 %4533, 80
  %4545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4544, i32 undef)  ; BufferLoad(srv,index,wot)
  %4546 = extractvalue %dx.types.ResRet.f32 %4545, 2
  %4547 = extractvalue %dx.types.ResRet.f32 %4545, 3
  %4548 = or i32 %4533, 96
  %4549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4551 = extractvalue %dx.types.ResRet.f32 %4549, 1
  %4552 = extractvalue %dx.types.ResRet.f32 %4549, 2
  %4553 = extractvalue %dx.types.ResRet.f32 %4549, 3
  %4554 = or i32 %4533, 112
  %4555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4554, i32 undef)  ; BufferLoad(srv,index,wot)
  %4556 = extractvalue %dx.types.ResRet.f32 %4555, 2
  %4557 = or i32 %4533, 128
  %4558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.f32 %4558, 0
  %4560 = extractvalue %dx.types.ResRet.f32 %4558, 1
  %4561 = extractvalue %dx.types.ResRet.f32 %4558, 2
  %4562 = extractvalue %dx.types.ResRet.f32 %4558, 3
  %4563 = or i32 %4533, 144
  %4564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4566 = extractvalue %dx.types.ResRet.f32 %4564, 1
  %4567 = extractvalue %dx.types.ResRet.f32 %4564, 2
  %4568 = extractvalue %dx.types.ResRet.f32 %4564, 3
  %4569 = or i32 %4533, 160
  %4570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = extractvalue %dx.types.ResRet.f32 %4570, 1
  %4573 = extractvalue %dx.types.ResRet.f32 %4570, 2
  %4574 = extractvalue %dx.types.ResRet.f32 %4570, 3
  %4575 = or i32 %4533, 192
  %4576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.i32 %4576, 0
  %4578 = or i32 %4533, 208
  %4579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4580 = extractvalue %dx.types.ResRet.f32 %4579, 0
  %4581 = or i32 %4533, 248
  %4582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = add nuw nsw i32 %4503, 1
  %4586 = bitcast float %4539 to i32
  %4587 = and i32 %4586, 512
  %4588 = icmp eq i32 %4587, 0
  %4589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4533, i32 undef)  ; BufferLoad(srv,index,wot)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = extractvalue %dx.types.ResRet.f32 %4589, 1
  %4592 = extractvalue %dx.types.ResRet.f32 %4589, 2
  %4593 = extractvalue %dx.types.ResRet.f32 %4589, 3
  %4594 = call float @dx.op.dot4.f32(i32 56, float %4590, float %4591, float %4592, float %4593, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4595 = or i32 %4533, 16
  %4596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4595, i32 undef)  ; BufferLoad(srv,index,wot)
  %4597 = extractvalue %dx.types.ResRet.f32 %4596, 0
  %4598 = extractvalue %dx.types.ResRet.f32 %4596, 1
  %4599 = extractvalue %dx.types.ResRet.f32 %4596, 2
  %4600 = extractvalue %dx.types.ResRet.f32 %4596, 3
  %4601 = call float @dx.op.dot4.f32(i32 56, float %4597, float %4598, float %4599, float %4600, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4602 = or i32 %4533, 32
  %4603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4602, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.f32 %4603, 0
  %4605 = extractvalue %dx.types.ResRet.f32 %4603, 1
  %4606 = extractvalue %dx.types.ResRet.f32 %4603, 2
  %4607 = extractvalue %dx.types.ResRet.f32 %4603, 3
  %4608 = call float @dx.op.dot4.f32(i32 56, float %4604, float %4605, float %4606, float %4607, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4609 = call float @dx.op.unary.f32(i32 27, float %4594)  ; Round_ni(value)
  %4610 = call float @dx.op.unary.f32(i32 6, float %4609)  ; FAbs(value)
  %4611 = call float @dx.op.unary.f32(i32 27, float %4601)  ; Round_ni(value)
  %4612 = call float @dx.op.unary.f32(i32 6, float %4611)  ; FAbs(value)
  %4613 = call float @dx.op.unary.f32(i32 6, float %4608)  ; FAbs(value)
  %4614 = call float @dx.op.unary.f32(i32 27, float %4613)  ; Round_ni(value)
  %4615 = fadd fast float %4612, %4610
  %4616 = fadd fast float %4615, %4614
  %4617 = fcmp fast oeq float %4616, 0.000000e+00
  %4618 = call float @dx.op.dot4.f32(i32 56, float %4590, float %4591, float %4592, float %4593, float %4455, float %4456, float %4457, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4619 = call float @dx.op.dot4.f32(i32 56, float %4597, float %4598, float %4599, float %4600, float %4455, float %4456, float %4457, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4620 = call float @dx.op.dot4.f32(i32 56, float %4590, float %4591, float %4592, float %4593, float %4458, float %4459, float %4460, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4621 = call float @dx.op.dot4.f32(i32 56, float %4597, float %4598, float %4599, float %4600, float %4458, float %4459, float %4460, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4622 = fsub fast float %4618, %4594
  %4623 = fsub fast float %4620, %4594
  %4624 = fsub fast float %4619, %4601
  %4625 = fsub fast float %4621, %4601
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4536, float %4537, float %4538, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.f32 %4627, 2
  %4629 = fadd fast float %4628, %4626
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4627, 0
  %4632 = fcmp fast ogt float %4630, %4631
  %4633 = and i1 %4617, %4632
  %4634 = and i1 %4588, %4633
  br i1 %4634, label %4662, label %4635

; <label>:4635                                    ; preds = %4992, %4743, %4662, %4502
  %4636 = phi float [ %4504, %4662 ], [ %4746, %4743 ], [ %4746, %4992 ], [ %4504, %4502 ]
  %4637 = phi float [ %4505, %4662 ], [ %4505, %4743 ], [ %4968, %4992 ], [ %4505, %4502 ]
  %4638 = phi float [ %4506, %4662 ], [ %4506, %4743 ], [ %4967, %4992 ], [ %4506, %4502 ]
  %4639 = phi float [ %4507, %4662 ], [ %4507, %4743 ], [ %4965, %4992 ], [ %4507, %4502 ]
  %4640 = phi float [ %4508, %4662 ], [ %4508, %4743 ], [ %4943, %4992 ], [ %4508, %4502 ]
  %4641 = phi float [ %4509, %4662 ], [ %4509, %4743 ], [ %4944, %4992 ], [ %4509, %4502 ]
  %4642 = phi float [ %4510, %4662 ], [ %4510, %4743 ], [ %4945, %4992 ], [ %4510, %4502 ]
  %4643 = phi float [ %4511, %4662 ], [ %4511, %4743 ], [ %4870, %4992 ], [ %4511, %4502 ]
  %4644 = phi float [ %4512, %4662 ], [ %4512, %4743 ], [ %4868, %4992 ], [ %4512, %4502 ]
  %4645 = phi float [ %4513, %4662 ], [ %4513, %4743 ], [ %4913, %4992 ], [ %4513, %4502 ]
  %4646 = phi float [ %4514, %4662 ], [ %4514, %4743 ], [ %4914, %4992 ], [ %4514, %4502 ]
  %4647 = phi float [ %4515, %4662 ], [ %4515, %4743 ], [ %4915, %4992 ], [ %4515, %4502 ]
  %4648 = phi float [ %4516, %4662 ], [ %4516, %4743 ], [ %5002, %4992 ], [ %4516, %4502 ]
  %4649 = phi float [ %4517, %4662 ], [ %4517, %4743 ], [ %5003, %4992 ], [ %4517, %4502 ]
  %4650 = phi float [ %4518, %4662 ], [ %4518, %4743 ], [ %5004, %4992 ], [ %4518, %4502 ]
  %4651 = phi float [ %4519, %4662 ], [ %4519, %4743 ], [ %4849, %4992 ], [ %4519, %4502 ]
  %4652 = phi float [ %4520, %4662 ], [ %4520, %4743 ], [ %4850, %4992 ], [ %4520, %4502 ]
  %4653 = phi float [ %4521, %4662 ], [ %4521, %4743 ], [ %4851, %4992 ], [ %4521, %4502 ]
  %4654 = phi float [ %4522, %4662 ], [ %4522, %4743 ], [ %4923, %4992 ], [ %4522, %4502 ]
  %4655 = phi float [ %4523, %4662 ], [ %4523, %4743 ], [ %4920, %4992 ], [ %4523, %4502 ]
  %4656 = phi float [ %4524, %4662 ], [ %4524, %4743 ], [ %4917, %4992 ], [ %4524, %4502 ]
  %4657 = phi float [ %4525, %4662 ], [ %4525, %4743 ], [ %4866, %4992 ], [ %4525, %4502 ]
  %4658 = phi float [ %4526, %4662 ], [ %4526, %4743 ], [ %4861, %4992 ], [ %4526, %4502 ]
  %4659 = phi float [ %4527, %4662 ], [ %4527, %4743 ], [ %4862, %4992 ], [ %4527, %4502 ]
  %4660 = phi float [ %4528, %4662 ], [ %4528, %4743 ], [ %4863, %4992 ], [ %4528, %4502 ]
  %4661 = icmp eq i32 %4585, %4501
  br i1 %4661, label %5005, label %4502

; <label>:4662                                    ; preds = %4502
  %4663 = extractvalue %dx.types.ResRet.f32 %4555, 3
  %4664 = extractvalue %dx.types.ResRet.f32 %4555, 1
  %4665 = extractvalue %dx.types.ResRet.f32 %4555, 0
  %4666 = extractvalue %dx.types.ResRet.f32 %4545, 1
  %4667 = extractvalue %dx.types.ResRet.f32 %4545, 0
  %4668 = extractvalue %dx.types.ResRet.i32 %4541, 3
  %4669 = extractvalue %dx.types.ResRet.i32 %4541, 2
  %4670 = add i32 %4668, 0
  %4671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4670, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4673 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4671, %dx.types.Handle %4672, float %4594, float %4601, float undef, float undef, i32 0, i32 0, i32 undef, float %4622, float %4624, float undef, float %4623, float %4625, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4674 = extractvalue %dx.types.ResRet.f32 %4673, 0
  %4675 = fmul fast float %4674, %4667
  %4676 = fadd fast float %4675, %4666
  %4677 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4678 = fmul fast float %4594, %4550
  %4679 = call float @dx.op.tertiary.f32(i32 46, float %4551, float %4601, float %4678)  ; FMad(a,b,c)
  %4680 = fadd fast float %4679, %4665
  %4681 = fmul fast float %4594, %4552
  %4682 = call float @dx.op.tertiary.f32(i32 46, float %4553, float %4601, float %4681)  ; FMad(a,b,c)
  %4683 = fadd fast float %4682, %4664
  %4684 = fmul fast float %4622, %4550
  %4685 = call float @dx.op.tertiary.f32(i32 46, float %4551, float %4624, float %4684)  ; FMad(a,b,c)
  %4686 = fmul fast float %4622, %4552
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4553, float %4624, float %4686)  ; FMad(a,b,c)
  %4688 = fmul fast float %4623, %4550
  %4689 = call float @dx.op.tertiary.f32(i32 46, float %4551, float %4625, float %4688)  ; FMad(a,b,c)
  %4690 = fmul fast float %4623, %4552
  %4691 = call float @dx.op.tertiary.f32(i32 46, float %4553, float %4625, float %4690)  ; FMad(a,b,c)
  %4692 = add i32 %4669, 0
  %4693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4692, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4694 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4693, %dx.types.Handle %4672, float %4680, float %4683, float undef, float undef, i32 0, i32 0, i32 undef, float %4685, float %4687, float undef, float %4689, float %4691, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4695 = extractvalue %dx.types.ResRet.f32 %4694, 0
  %4696 = and i32 %4586, 1024
  %4697 = icmp ne i32 %4696, 0
  %4698 = fcmp fast ogt float %4695, 0x3FE0101020000000
  %4699 = uitofp i1 %4698 to float
  %4700 = select i1 %4697, float %4699, float %4695
  %4701 = and i32 %4586, 8192
  %4702 = icmp ne i32 %4701, 0
  %4703 = select i1 %4702, float %4663, float 1.000000e+00
  %4704 = fmul fast float %4594, 2.000000e+00
  %4705 = fadd fast float %4704, -1.000000e+00
  %4706 = call float @dx.op.unary.f32(i32 6, float %4705)  ; FAbs(value)
  %4707 = fmul fast float %4706, %4583
  %4708 = fsub fast float %4707, %4583
  %4709 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4710 = fmul fast float %4601, 2.000000e+00
  %4711 = fadd fast float %4710, -1.000000e+00
  %4712 = call float @dx.op.unary.f32(i32 6, float %4711)  ; FAbs(value)
  %4713 = fmul fast float %4712, %4584
  %4714 = fsub fast float %4713, %4584
  %4715 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4716 = fmul fast float %4613, %4546
  %4717 = fsub fast float %4716, %4546
  %4718 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4719 = fmul fast float %4677, %4703
  %4720 = fmul fast float %4719, %4674
  %4721 = fmul fast float %4720, %4709
  %4722 = fmul fast float %4721, %4700
  %4723 = fmul fast float %4722, %4715
  %4724 = fmul fast float %4723, %4718
  %4725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4726 = extractvalue %dx.types.CBufRet.f32 %4725, 1
  %4727 = extractvalue %dx.types.CBufRet.f32 %4725, 0
  %4728 = fsub fast float %4630, %4727
  %4729 = fmul fast float %4728, %4726
  %4730 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4731 = fmul fast float %4724, %4547
  %4732 = fadd fast float %4724, %4547
  %4733 = fmul fast float %4732, %4556
  %4734 = fsub fast float %4733, %4556
  %4735 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4736 = and i32 %4586, 128
  %4737 = icmp ne i32 %4736, 0
  %4738 = select i1 %4737, float %4735, float %4731
  %4739 = fmul fast float %4738, %4730
  %4740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.f32 %4740, 0
  %4742 = fcmp fast ugt float %4739, %4741
  br i1 %4742, label %4743, label %4635

; <label>:4743                                    ; preds = %4662
  %4744 = select i1 %4702, float %4739, float 0.000000e+00
  %4745 = fadd fast float %4744, %4504
  %4746 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  br i1 %4702, label %4635, label %4747

; <label>:4747                                    ; preds = %4743
  %4748 = and i32 %4586, 4
  %4749 = and i32 %4586, 8
  %4750 = add i32 %4542, 0
  %4751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4750, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4753 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4751, %dx.types.Handle %4752, float %4680, float %4683, float undef, float undef, i32 0, i32 0, i32 undef, float %4685, float %4687, float undef, float %4689, float %4691, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4754 = extractvalue %dx.types.ResRet.f32 %4753, 0
  %4755 = extractvalue %dx.types.ResRet.f32 %4753, 1
  %4756 = extractvalue %dx.types.ResRet.f32 %4753, 2
  %4757 = extractvalue %dx.types.ResRet.f32 %4753, 3
  %4758 = bitcast float %4568 to i32
  %4759 = and i32 %4758, 255
  %4760 = uitofp i32 %4759 to float
  %4761 = lshr i32 %4758, 8
  %4762 = and i32 %4761, 255
  %4763 = uitofp i32 %4762 to float
  %4764 = fmul fast float %4757, %4760
  %4765 = fadd fast float %4764, %4763
  %4766 = fmul fast float %4765, 0x3F70101000000000
  %4767 = add i32 %4543, 0
  %4768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4767, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4769 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4768, %dx.types.Handle %4752, float %4680, float %4683, float undef, float undef, i32 0, i32 0, i32 undef, float %4685, float %4687, float undef, float %4689, float %4691, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4770 = extractvalue %dx.types.ResRet.f32 %4769, 0
  %4771 = extractvalue %dx.types.ResRet.f32 %4769, 1
  %4772 = extractvalue %dx.types.ResRet.f32 %4769, 2
  %4773 = extractvalue %dx.types.ResRet.f32 %4769, 3
  %4774 = bitcast float %4562 to i32
  %4775 = and i32 %4774, 255
  %4776 = uitofp i32 %4775 to float
  %4777 = lshr i32 %4774, 8
  %4778 = and i32 %4777, 255
  %4779 = uitofp i32 %4778 to float
  %4780 = lshr i32 %4774, 16
  %4781 = and i32 %4780, 255
  %4782 = uitofp i32 %4781 to float
  %4783 = fmul fast float %4782, 0x3F70101000000000
  %4784 = fmul fast float %4770, %4776
  %4785 = fadd fast float %4784, %4779
  %4786 = fmul fast float %4785, 0x3F70101000000000
  %4787 = fadd fast float %4771, -5.000000e-01
  %4788 = fadd fast float %4773, -5.000000e-01
  %4789 = fmul fast float %4787, %4783
  %4790 = fmul fast float %4788, %4783
  %4791 = fadd fast float %4789, 5.000000e-01
  %4792 = fadd fast float %4790, 5.000000e-01
  %4793 = fmul fast float %4754, %4571
  %4794 = fmul fast float %4755, %4572
  %4795 = fmul fast float %4756, %4573
  %4796 = fmul fast float %4791, 2.000000e+00
  %4797 = fadd fast float %4796, -1.000000e+00
  %4798 = fmul fast float %4792, 2.000000e+00
  %4799 = fadd fast float %4798, -1.000000e+00
  %4800 = fadd fast float %4797, %4799
  %4801 = fmul fast float %4800, 5.000000e-01
  %4802 = fsub fast float %4797, %4799
  %4803 = fmul fast float %4802, 5.000000e-01
  %4804 = call float @dx.op.unary.f32(i32 6, float %4801)  ; FAbs(value)
  %4805 = fsub fast float 1.000000e+00, %4804
  %4806 = call float @dx.op.unary.f32(i32 6, float %4803)  ; FAbs(value)
  %4807 = fsub fast float %4805, %4806
  %4808 = call float @dx.op.dot3.f32(i32 55, float %4801, float %4803, float %4807, float %4801, float %4803, float %4807)  ; Dot3(ax,ay,az,bx,by,bz)
  %4809 = call float @dx.op.unary.f32(i32 25, float %4808)  ; Rsqrt(value)
  %4810 = fmul fast float %4801, %4809
  %4811 = fmul fast float %4803, %4809
  %4812 = fmul fast float %4809, %4807
  %4813 = fmul fast float %4812, %4536
  %4814 = fmul fast float %4812, %4537
  %4815 = fmul fast float %4812, %4538
  %4816 = fmul fast float %4810, %4559
  %4817 = fmul fast float %4810, %4560
  %4818 = fmul fast float %4810, %4561
  %4819 = fadd fast float %4816, %4813
  %4820 = fadd fast float %4817, %4814
  %4821 = fadd fast float %4818, %4815
  %4822 = fmul fast float %4811, %4565
  %4823 = fmul fast float %4811, %4566
  %4824 = fmul fast float %4811, %4567
  %4825 = fadd fast float %4819, %4822
  %4826 = fadd fast float %4820, %4823
  %4827 = fadd fast float %4821, %4824
  %4828 = call float @dx.op.dot3.f32(i32 55, float %4825, float %4826, float %4827, float %4825, float %4826, float %4827)  ; Dot3(ax,ay,az,bx,by,bz)
  %4829 = call float @dx.op.unary.f32(i32 25, float %4828)  ; Rsqrt(value)
  %4830 = fmul fast float %4825, %4829
  %4831 = fmul fast float %4826, %4829
  %4832 = fmul fast float %4827, %4829
  %4833 = icmp ne i32 %4749, 0
  %4834 = select i1 %4833, float 1.000000e+00, float 0.000000e+00
  %4835 = fmul fast float %4739, %4834
  %4836 = and i32 %4586, 1
  %4837 = icmp eq i32 %4836, 0
  br i1 %4837, label %4838, label %4842

; <label>:4838                                    ; preds = %4747
  %4839 = fsub fast float %4830, %4519
  %4840 = fsub fast float %4831, %4520
  %4841 = fsub fast float %4832, %4521
  br label %4842

; <label>:4842                                    ; preds = %4838, %4747
  %4843 = phi float [ %4839, %4838 ], [ %4830, %4747 ]
  %4844 = phi float [ %4840, %4838 ], [ %4831, %4747 ]
  %4845 = phi float [ %4841, %4838 ], [ %4832, %4747 ]
  %4846 = fmul float %4845, %4835
  %4847 = fmul float %4844, %4835
  %4848 = fmul float %4843, %4835
  %4849 = fadd fast float %4848, %4519
  %4850 = fadd fast float %4847, %4520
  %4851 = fadd fast float %4846, %4521
  %4852 = icmp ne i32 %4748, 0
  %4853 = select i1 %4852, float 1.000000e+00, float 0.000000e+00
  %4854 = fmul fast float %4739, %4853
  %4855 = fsub fast float %4793, %4526
  %4856 = fsub fast float %4794, %4527
  %4857 = fsub fast float %4795, %4528
  %4858 = fmul fast float %4855, %4854
  %4859 = fmul fast float %4856, %4854
  %4860 = fmul fast float %4857, %4854
  %4861 = fadd fast float %4858, %4526
  %4862 = fadd fast float %4859, %4527
  %4863 = fadd fast float %4860, %4528
  %4864 = fsub fast float %4766, %4525
  %4865 = fmul fast float %4864, %4854
  %4866 = fadd fast float %4865, %4525
  %4867 = fmul fast float %4854, %4512
  %4868 = fsub fast float %4512, %4867
  %4869 = fmul fast float %4854, %4511
  %4870 = fsub fast float %4511, %4869
  %4871 = bitcast float %4580 to i32
  %4872 = lshr i32 %4871, 16
  %4873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4872)  ; LegacyF16ToF32(value)
  %4874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4875 = extractvalue %dx.types.ResRet.i32 %4874, 0
  %4876 = and i32 %4875, 1
  %4877 = icmp eq i32 %4876, 0
  br i1 %4877, label %4878, label %4903

; <label>:4878                                    ; preds = %4842
  %4879 = fadd fast float %4766, 0xBFB99999A0000000
  %4880 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4881 = fmul fast float %4880, 0x3FF1C71C80000000
  %4882 = fsub fast float 1.000000e+00, %4881
  %4883 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4884 = fmul fast float %4883, %4793
  %4885 = fmul fast float %4883, %4794
  %4886 = fmul fast float %4883, %4795
  %4887 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4888 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4889 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4890 = call float @dx.op.binary.f32(i32 35, float %4888, float %4889)  ; FMax(a,b)
  %4891 = call float @dx.op.binary.f32(i32 35, float %4887, float %4890)  ; FMax(a,b)
  %4892 = fcmp fast ogt float %4891, 0.000000e+00
  %4893 = bitcast float %4891 to i32
  %4894 = sub nsw i32 2129859010, %4893
  %4895 = bitcast i32 %4894 to float
  %4896 = select i1 %4892, float %4895, float 0.000000e+00
  %4897 = fmul fast float %4887, %4873
  %4898 = fmul fast float %4888, %4873
  %4899 = fmul fast float %4889, %4873
  %4900 = fmul fast float %4897, %4896
  %4901 = fmul fast float %4898, %4896
  %4902 = fmul fast float %4899, %4896
  br label %4903

; <label>:4903                                    ; preds = %4878, %4842
  %4904 = phi float [ %4873, %4842 ], [ %4900, %4878 ]
  %4905 = phi float [ %4873, %4842 ], [ %4901, %4878 ]
  %4906 = phi float [ %4873, %4842 ], [ %4902, %4878 ]
  %4907 = fsub fast float %4904, %4513
  %4908 = fsub fast float %4905, %4514
  %4909 = fsub fast float %4906, %4515
  %4910 = fmul fast float %4907, %4854
  %4911 = fmul fast float %4908, %4854
  %4912 = fmul fast float %4909, %4854
  %4913 = fadd fast float %4910, %4513
  %4914 = fadd fast float %4911, %4514
  %4915 = fadd fast float %4912, %4515
  %4916 = fadd fast float %4739, %4524
  %4917 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4918 = fsub fast float %4786, %4523
  %4919 = fmul fast float %4918, %4835
  %4920 = fadd fast float %4919, %4523
  %4921 = fsub fast float %4772, %4522
  %4922 = fmul fast float %4921, %4835
  %4923 = fadd fast float %4922, %4522
  br i1 %4837, label %4932, label %4924

; <label>:4924                                    ; preds = %4903
  %4925 = and i32 %4586, 32768
  %4926 = icmp eq i32 %4925, 0
  br i1 %4926, label %4942, label %4927

; <label>:4927                                    ; preds = %4924
  %4928 = fmul fast float %4835, 1.270000e+02
  %4929 = fadd fast float %4928, %4508
  %4930 = fadd fast float %4928, %4509
  %4931 = fadd fast float %4928, %4510
  br label %4942

; <label>:4932                                    ; preds = %4903
  %4933 = fsub fast float 1.270000e+02, %4508
  %4934 = fsub fast float 1.270000e+02, %4509
  %4935 = fsub fast float 1.270000e+02, %4510
  %4936 = fmul fast float %4835, %4933
  %4937 = fmul fast float %4835, %4934
  %4938 = fmul fast float %4835, %4935
  %4939 = fadd fast float %4936, %4508
  %4940 = fadd fast float %4937, %4509
  %4941 = fadd fast float %4938, %4510
  br label %4942

; <label>:4942                                    ; preds = %4932, %4927, %4924
  %4943 = phi float [ %4929, %4927 ], [ %4508, %4924 ], [ %4939, %4932 ]
  %4944 = phi float [ %4930, %4927 ], [ %4509, %4924 ], [ %4940, %4932 ]
  %4945 = phi float [ %4931, %4927 ], [ %4510, %4924 ], [ %4941, %4932 ]
  %4946 = call float @dx.op.dot3.f32(i32 55, float %4793, float %4794, float %4795, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4948 = extractvalue %dx.types.CBufRet.f32 %4947, 0
  %4949 = extractvalue %dx.types.CBufRet.f32 %4947, 1
  %4950 = fmul fast float %4949, %4946
  %4951 = fadd fast float %4950, %4948
  %4952 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4953 = bitcast float %4574 to i32
  %4954 = and i32 %4953, 65535
  %4955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4954)  ; LegacyF16ToF32(value)
  %4956 = lshr i32 %4953, 16
  %4957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4956)  ; LegacyF16ToF32(value)
  %4958 = fcmp fast oge float %4955, 0.000000e+00
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 0
  %4961 = select i1 %4958, float %4955, float %4960
  %4962 = fadd fast float %4961, %4957
  %4963 = fsub fast float %4952, %4507
  %4964 = fmul fast float %4963, %4739
  %4965 = fadd fast float %4964, %4507
  %4966 = fmul fast float %4962, %4739
  %4967 = call float @dx.op.binary.f32(i32 35, float %4506, float %4966)  ; FMax(a,b)
  %4968 = call float @dx.op.binary.f32(i32 35, float %4505, float %4739)  ; FMax(a,b)
  %4969 = and i32 %4586, 16
  %4970 = icmp eq i32 %4969, 0
  br i1 %4970, label %4992, label %4971

; <label>:4971                                    ; preds = %4942
  %4972 = add i32 %4577, 0
  %4973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4972, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4974 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4973, %dx.types.Handle %4752, float %4680, float %4683, float undef, float undef, i32 0, i32 0, i32 undef, float %4685, float %4687, float undef, float %4689, float %4691, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4975 = extractvalue %dx.types.ResRet.f32 %4974, 0
  %4976 = extractvalue %dx.types.ResRet.f32 %4974, 1
  %4977 = extractvalue %dx.types.ResRet.f32 %4974, 2
  %4978 = and i32 %4871, 65535
  %4979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4978)  ; LegacyF16ToF32(value)
  %4980 = fmul fast float %4975, %4571
  %4981 = fmul fast float %4976, %4572
  %4982 = fmul fast float %4977, %4573
  %4983 = and i32 %4586, 16384
  %4984 = icmp ne i32 %4983, 0
  %4985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.f32 %4985, 0
  %4987 = select i1 %4984, float %4986, float 1.000000e+00
  %4988 = fmul fast float %4987, %4979
  %4989 = fmul fast float %4980, %4988
  %4990 = fmul fast float %4981, %4988
  %4991 = fmul fast float %4982, %4988
  br label %4992

; <label>:4992                                    ; preds = %4971, %4942
  %4993 = phi float [ %4989, %4971 ], [ 0.000000e+00, %4942 ]
  %4994 = phi float [ %4990, %4971 ], [ 0.000000e+00, %4942 ]
  %4995 = phi float [ %4991, %4971 ], [ 0.000000e+00, %4942 ]
  %4996 = fsub fast float %4993, %4516
  %4997 = fsub fast float %4994, %4517
  %4998 = fsub fast float %4995, %4518
  %4999 = fmul fast float %4996, %4739
  %5000 = fmul fast float %4997, %4739
  %5001 = fmul fast float %4998, %4739
  %5002 = fadd fast float %4999, %4516
  %5003 = fadd fast float %5000, %4517
  %5004 = fadd fast float %5001, %4518
  br label %4635

; <label>:5005                                    ; preds = %4635
  br label %5006

; <label>:5006                                    ; preds = %5005, %4448
  %5007 = phi float [ 0.000000e+00, %4448 ], [ %4636, %5005 ]
  %5008 = phi float [ %1240, %4448 ], [ %4637, %5005 ]
  %5009 = phi float [ %4417, %4448 ], [ %4638, %5005 ]
  %5010 = phi float [ %4415, %4448 ], [ %4639, %5005 ]
  %5011 = phi float [ %4405, %4448 ], [ %4640, %5005 ]
  %5012 = phi float [ %4406, %4448 ], [ %4641, %5005 ]
  %5013 = phi float [ %4407, %4448 ], [ %4642, %5005 ]
  %5014 = phi float [ 0.000000e+00, %4448 ], [ %4643, %5005 ]
  %5015 = phi float [ 0.000000e+00, %4448 ], [ %4644, %5005 ]
  %5016 = phi float [ %4408, %4448 ], [ %4645, %5005 ]
  %5017 = phi float [ %4409, %4448 ], [ %4646, %5005 ]
  %5018 = phi float [ %4410, %4448 ], [ %4647, %5005 ]
  %5019 = phi float [ %4402, %4448 ], [ %4648, %5005 ]
  %5020 = phi float [ %4403, %4448 ], [ %4649, %5005 ]
  %5021 = phi float [ %4404, %4448 ], [ %4650, %5005 ]
  %5022 = phi float [ %4443, %4448 ], [ %4651, %5005 ]
  %5023 = phi float [ %4444, %4448 ], [ %4652, %5005 ]
  %5024 = phi float [ %4445, %4448 ], [ %4653, %5005 ]
  %5025 = phi float [ %4413, %4448 ], [ %4654, %5005 ]
  %5026 = phi float [ %4412, %4448 ], [ %4655, %5005 ]
  %5027 = phi float [ 0.000000e+00, %4448 ], [ %4656, %5005 ]
  %5028 = phi float [ %4411, %4448 ], [ %4657, %5005 ]
  %5029 = phi float [ %4399, %4448 ], [ %4658, %5005 ]
  %5030 = phi float [ %4400, %4448 ], [ %4659, %5005 ]
  %5031 = phi float [ %4401, %4448 ], [ %4660, %5005 ]
  %5032 = call float @dx.op.dot3.f32(i32 55, float %5022, float %5023, float %5024, float %5022, float %5023, float %5024)  ; Dot3(ax,ay,az,bx,by,bz)
  %5033 = call float @dx.op.unary.f32(i32 25, float %5032)  ; Rsqrt(value)
  %5034 = fmul fast float %5033, %5022
  %5035 = fmul fast float %5033, %5023
  %5036 = fmul fast float %5033, %5024
  %5037 = fadd fast float %5027, %1240
  %5038 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5039 = call float @dx.op.dot3.f32(i32 55, float %5034, float %5035, float %5036, float %5034, float %5035, float %5036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = call float @dx.op.unary.f32(i32 25, float %5039)  ; Rsqrt(value)
  %5041 = fmul fast float %5040, %5034
  %5042 = fmul fast float %5040, %5035
  %5043 = fmul fast float %5040, %5036
  br label %5044

; <label>:5044                                    ; preds = %5006, %4396
  %5045 = phi float [ %5041, %5006 ], [ %4443, %4396 ]
  %5046 = phi float [ %5042, %5006 ], [ %4444, %4396 ]
  %5047 = phi float [ %5043, %5006 ], [ %4445, %4396 ]
  %5048 = phi float [ %5019, %5006 ], [ %4402, %4396 ]
  %5049 = phi float [ %5020, %5006 ], [ %4403, %4396 ]
  %5050 = phi float [ %5021, %5006 ], [ %4404, %4396 ]
  %5051 = phi float [ %5016, %5006 ], [ %4408, %4396 ]
  %5052 = phi float [ %5017, %5006 ], [ %4409, %4396 ]
  %5053 = phi float [ %5018, %5006 ], [ %4410, %4396 ]
  %5054 = phi float [ %5011, %5006 ], [ %4405, %4396 ]
  %5055 = phi float [ %5012, %5006 ], [ %4406, %4396 ]
  %5056 = phi float [ %5013, %5006 ], [ %4407, %4396 ]
  %5057 = phi float [ %5029, %5006 ], [ %4399, %4396 ]
  %5058 = phi float [ %5030, %5006 ], [ %4400, %4396 ]
  %5059 = phi float [ %5031, %5006 ], [ %4401, %4396 ]
  %5060 = phi float [ %5028, %5006 ], [ %4411, %4396 ]
  %5061 = phi float [ %5038, %5006 ], [ %1240, %4396 ]
  %5062 = phi float [ %5026, %5006 ], [ %4412, %4396 ]
  %5063 = phi float [ %5025, %5006 ], [ %4413, %4396 ]
  %5064 = phi float [ %5015, %5006 ], [ 0.000000e+00, %4396 ]
  %5065 = phi float [ %5014, %5006 ], [ 0.000000e+00, %4396 ]
  %5066 = phi float [ %5007, %5006 ], [ 0.000000e+00, %4396 ]
  %5067 = phi float [ %5009, %5006 ], [ %4417, %4396 ]
  %5068 = phi float [ %5008, %5006 ], [ %1240, %4396 ]
  %5069 = phi float [ %5010, %5006 ], [ %4415, %4396 ]
  %5070 = fadd fast float %5060, 0xBFB99999A0000000
  %5071 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5072 = fmul fast float %5071, 0x3FF1C71C80000000
  %5073 = call float @dx.op.binary.f32(i32 36, float %5060, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5074 = fsub fast float 1.000000e+00, %5072
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fmul fast float %5075, %5057
  %5077 = fmul fast float %5075, %5058
  %5078 = fmul fast float %5075, %5059
  %5079 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5080 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5081 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5082 = fmul fast float %5072, %5057
  %5083 = fmul fast float %5072, %5058
  %5084 = fmul fast float %5072, %5059
  %5085 = fadd fast float %5082, %5073
  %5086 = fadd fast float %5083, %5073
  %5087 = fadd fast float %5084, %5073
  %5088 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5089 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %5093 = extractvalue %dx.types.ResRet.i32 %5092, 0
  %5094 = and i32 %5093, 1
  %5095 = icmp eq i32 %5094, 0
  br i1 %5095, label %5110, label %5096

; <label>:5096                                    ; preds = %5044
  %5097 = call float @dx.op.binary.f32(i32 35, float %5080, float %5081)  ; FMax(a,b)
  %5098 = call float @dx.op.binary.f32(i32 35, float %5079, float %5097)  ; FMax(a,b)
  %5099 = fcmp fast ogt float %5098, 0.000000e+00
  %5100 = bitcast float %5098 to i32
  %5101 = sub nsw i32 2129859010, %5100
  %5102 = bitcast i32 %5101 to float
  %5103 = select i1 %5099, float %5102, float 0.000000e+00
  %5104 = fmul fast float %5079, %5051
  %5105 = fmul fast float %5080, %5052
  %5106 = fmul fast float %5081, %5053
  %5107 = fmul fast float %5104, %5103
  %5108 = fmul fast float %5105, %5103
  %5109 = fmul fast float %5106, %5103
  br label %5110

; <label>:5110                                    ; preds = %5096, %5044
  %5111 = phi float [ %5107, %5096 ], [ %5051, %5044 ]
  %5112 = phi float [ %5108, %5096 ], [ %5052, %5044 ]
  %5113 = phi float [ %5109, %5096 ], [ %5053, %5044 ]
  %5114 = call float @dx.op.binary.f32(i32 36, float %5054, float 1.270000e+02)  ; FMin(a,b)
  %5115 = call float @dx.op.binary.f32(i32 36, float %5055, float 1.270000e+02)  ; FMin(a,b)
  %5116 = call float @dx.op.binary.f32(i32 36, float %5056, float 1.270000e+02)  ; FMin(a,b)
  %5117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.i32 %5117, 3
  %5119 = and i32 %5118, 8
  %5120 = icmp ne i32 %5119, 0
  %5121 = call float @dx.op.binary.f32(i32 35, float %5079, float %5057)  ; FMax(a,b)
  %5122 = call float @dx.op.binary.f32(i32 35, float %5080, float %5057)  ; FMax(a,b)
  %5123 = call float @dx.op.binary.f32(i32 35, float %5081, float %5057)  ; FMax(a,b)
  %5124 = call float @dx.op.dot3.f32(i32 55, float %5079, float %5080, float %5081, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5125 = select i1 %213, float %5057, float %5079
  %5126 = select i1 %213, float %5124, float %5080
  %5127 = select i1 %213, float 1.000000e+00, float %5081
  %5128 = select i1 %5120, float %5121, float %5125
  %5129 = select i1 %5120, float %5122, float %5126
  %5130 = select i1 %5120, float %5123, float %5127
  %5131 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5112, float %5113, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5132 = select i1 %213, float %5131, float %5111
  %5133 = select i1 %213, float %5131, float %5112
  %5134 = select i1 %213, float %5131, float %5113
  %5135 = and i32 %189, 3
  %5136 = select i1 %183, i32 %5135, i32 0
  %5137 = icmp eq i32 %5136, 1
  br i1 %5137, label %5138, label %5214

; <label>:5138                                    ; preds = %5110
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 0
  %5141 = extractvalue %dx.types.CBufRet.f32 %5139, 1
  %5142 = fadd fast float %5140, %152
  %5143 = fadd fast float %5141, %153
  %5144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5144, 0
  %5146 = extractvalue %dx.types.CBufRet.f32 %5144, 1
  %5147 = fsub fast float %5142, %5145
  %5148 = fsub fast float %5143, %5146
  %5149 = fmul fast float %5147, %5147
  %5150 = fmul fast float %5148, %5148
  %5151 = fadd fast float %5149, %5150
  %5152 = call float @dx.op.unary.f32(i32 24, float %5151)  ; Sqrt(value)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5144, 2
  %5154 = fcmp fast olt float %5152, %5153
  br i1 %5154, label %5155, label %5208

; <label>:5155                                    ; preds = %5138
  %5156 = extractvalue %dx.types.CBufRet.f32 %5139, 2
  %5157 = fadd fast float %5156, %154
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5163 = extractvalue %dx.types.CBufRet.f32 %5162, 0
  %5164 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5165 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5166 = extractvalue %dx.types.CBufRet.f32 %5162, 1
  %5167 = extractvalue %dx.types.CBufRet.f32 %5158, 3
  %5168 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5169 = extractvalue %dx.types.CBufRet.f32 %5162, 3
  %5170 = fadd fast float %5167, %5142
  %5171 = fadd fast float %5168, %5143
  %5172 = fadd fast float %5157, %5169
  %5173 = fmul fast float %5170, %5159
  %5174 = call float @dx.op.tertiary.f32(i32 46, float %5171, float %5161, float %5173)  ; FMad(a,b,c)
  %5175 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5163, float %5174)  ; FMad(a,b,c)
  %5176 = fmul fast float %5170, %5164
  %5177 = call float @dx.op.tertiary.f32(i32 46, float %5171, float %5165, float %5176)  ; FMad(a,b,c)
  %5178 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5166, float %5177)  ; FMad(a,b,c)
  %5179 = fsub fast float %5175, %5167
  %5180 = fsub fast float %5178, %5168
  %5181 = fsub fast float %5179, %5145
  %5182 = fadd fast float %5181, %5153
  %5183 = fsub fast float %5180, %5146
  %5184 = fadd fast float %5183, %5153
  %5185 = extractvalue %dx.types.CBufRet.f32 %5144, 3
  %5186 = fmul fast float %5182, %5185
  %5187 = fmul fast float %5184, %5185
  %5188 = call float @dx.op.unary.f32(i32 7, float %5186)  ; Saturate(value)
  %5189 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5190 = fsub fast float 1.000000e+00, %5188
  %5191 = fsub fast float 1.000000e+00, %5189
  %5192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %42, float %5190, float %5191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5193 = extractvalue %dx.types.ResRet.f32 %5192, 0
  %5194 = fcmp fast ugt float %5193, 0.000000e+00
  br i1 %5194, label %5195, label %5208

; <label>:5195                                    ; preds = %5155
  %5196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.f32 %5196, 2
  %5198 = fmul fast float %5197, %5193
  %5199 = extractvalue %dx.types.CBufRet.f32 %5196, 3
  %5200 = fadd fast float %5199, %5198
  %5201 = extractvalue %dx.types.CBufRet.f32 %5162, 2
  %5202 = fadd fast float %5200, %5169
  %5203 = fmul fast float %5175, %5163
  %5204 = call float @dx.op.tertiary.f32(i32 46, float %5178, float %5166, float %5203)  ; FMad(a,b,c)
  %5205 = call float @dx.op.tertiary.f32(i32 46, float %5202, float %5201, float %5204)  ; FMad(a,b,c)
  %5206 = fsub fast float %5205, %5169
  %5207 = fsub fast float %5206, %5156
  br label %5208

; <label>:5208                                    ; preds = %5195, %5155, %5138
  %5209 = phi i1 [ true, %5195 ], [ false, %5155 ], [ false, %5138 ]
  %5210 = phi float [ %5207, %5195 ], [ -1.310720e+05, %5155 ], [ -1.310720e+05, %5138 ]
  %5211 = fsub fast float %5210, %154
  %5212 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  %5213 = select i1 %5209, float %5212, float 1.000000e+00
  br label %5214

; <label>:5214                                    ; preds = %5208, %5110
  %5215 = phi float [ %5213, %5208 ], [ 0.000000e+00, %5110 ]
  %5216 = icmp eq i32 %5136, 3
  %5217 = select i1 %5216, float 1.000000e+00, float %5215
  %5218 = call float @dx.op.binary.f32(i32 35, float %5066, float %5217)  ; FMax(a,b)
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = fcmp fast une float %5219, 0.000000e+00
  %5221 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %152, float %153, float %154)  ; Dot3(ax,ay,az,bx,by,bz)
  %5222 = call float @dx.op.unary.f32(i32 25, float %5221)  ; Rsqrt(value)
  br i1 %5220, label %5230, label %5223

; <label>:5223                                    ; preds = %5214
  %5224 = fmul fast float %5222, %152
  %5225 = fmul fast float %5222, %153
  %5226 = fmul fast float %5222, %154
  %5227 = fsub fast float -0.000000e+00, %5224
  %5228 = fsub fast float -0.000000e+00, %5225
  %5229 = fsub fast float -0.000000e+00, %5226
  br label %5398

; <label>:5230                                    ; preds = %5214
  %5231 = fmul fast float %152, %5222
  %5232 = fsub fast float -0.000000e+00, %5231
  %5233 = fmul fast float %153, %5222
  %5234 = fsub fast float -0.000000e+00, %5233
  %5235 = fmul fast float %154, %5222
  %5236 = fsub fast float -0.000000e+00, %5235
  %5237 = call float @dx.op.dot3.f32(i32 55, float %5232, float %5234, float %5236, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5238 = fmul fast float %5219, 2.500000e+00
  %5239 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5240 = fmul fast float %5219, 0x4013FFFFE0000000
  %5241 = fadd fast float %5240, 0xBFFFFFFFE0000000
  %5242 = call float @dx.op.unary.f32(i32 7, float %5241)  ; Saturate(value)
  %5243 = fmul fast float %5219, 0x4004000020000000
  %5244 = fadd fast float %5243, 0xBFF8000040000000
  %5245 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5246 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5247 = fmul fast float %5070, 1.000000e+01
  %5248 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5249 = fmul fast float %5248, 2.000000e+00
  %5250 = fsub fast float 3.000000e+00, %5249
  %5251 = fmul fast float %5248, %5248
  %5252 = fmul fast float %5251, %5250
  %5253 = fsub fast float 1.000000e+00, %5252
  %5254 = fsub fast float 0x3FE3333340000000, %5091
  %5255 = fmul fast float %5254, 0x400AAAAAA0000000
  %5256 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5257 = fmul fast float %5253, %5256
  %5258 = fmul fast float %5128, 0x3FEA2B8620000000
  %5259 = fmul fast float %5129, 0x3FEA2B8620000000
  %5260 = fmul fast float %5130, 0x3FEA2B8620000000
  %5261 = fadd fast float %5258, 0x3FC81DFBA0000000
  %5262 = fmul fast float %5261, %5128
  %5263 = fadd fast float %5262, 0x3F910E6020000000
  %5264 = fadd fast float %5259, 0x3FC81DFBA0000000
  %5265 = fmul fast float %5264, %5129
  %5266 = fadd fast float %5265, 0x3F910E6020000000
  %5267 = fadd fast float %5260, 0x3FC81DFBA0000000
  %5268 = fmul fast float %5267, %5130
  %5269 = fadd fast float %5268, 0x3F910E6020000000
  %5270 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5271 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5272 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5273 = fsub fast float %5270, %5128
  %5274 = fsub fast float %5271, %5129
  %5275 = fsub fast float %5272, %5130
  %5276 = fmul fast float %5273, %5246
  %5277 = fmul fast float %5276, %5257
  %5278 = fmul fast float %5274, %5246
  %5279 = fmul fast float %5278, %5257
  %5280 = fmul fast float %5275, %5246
  %5281 = fmul fast float %5280, %5257
  %5282 = fadd fast float %5277, %5128
  %5283 = fadd fast float %5279, %5129
  %5284 = fadd fast float %5281, %5130
  %5285 = fmul fast float %5063, %5063
  %5286 = fmul fast float %5285, %5285
  %5287 = fadd fast float %5242, 1.000000e+00
  %5288 = fsub fast float %5287, %5257
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5291 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5292 = fsub fast float 1.000000e+00, %5286
  %5293 = call float @dx.op.binary.f32(i32 36, float %5289, float %5292)  ; FMin(a,b)
  %5294 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5295 = call float @dx.op.binary.f32(i32 35, float %5293, float %5294)  ; FMax(a,b)
  %5296 = fadd fast float %5291, 0xBFE4CCCCC0000000
  %5297 = fmul fast float %5296, 0x4006DB6DA0000000
  %5298 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5299 = fmul fast float %5298, 2.000000e+00
  %5300 = fsub fast float 3.000000e+00, %5299
  %5301 = bitcast float %5088 to i32
  %5302 = ashr i32 %5301, 1
  %5303 = add nsw i32 %5302, 532487669
  %5304 = bitcast i32 %5303 to float
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = bitcast float %5305 to i32
  %5307 = sub nsw i32 2129859010, %5306
  %5308 = bitcast i32 %5307 to float
  %5309 = fmul fast float %5308, 2.000000e+00
  %5310 = bitcast float %5089 to i32
  %5311 = ashr i32 %5310, 1
  %5312 = add nsw i32 %5311, 532487669
  %5313 = bitcast i32 %5312 to float
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = bitcast float %5314 to i32
  %5316 = sub nsw i32 2129859010, %5315
  %5317 = bitcast i32 %5316 to float
  %5318 = fmul fast float %5317, 2.000000e+00
  %5319 = bitcast float %5090 to i32
  %5320 = ashr i32 %5319, 1
  %5321 = add nsw i32 %5320, 532487669
  %5322 = bitcast i32 %5321 to float
  %5323 = fsub fast float 1.000000e+00, %5322
  %5324 = bitcast float %5323 to i32
  %5325 = sub nsw i32 2129859010, %5324
  %5326 = bitcast i32 %5325 to float
  %5327 = fmul fast float %5326, 2.000000e+00
  %5328 = fsub fast float 0x4002A9FBE0000000, %5309
  %5329 = fadd fast float %5309, 0x3FD54FDF00000000
  %5330 = bitcast float %5329 to i32
  %5331 = sub nsw i32 2129859010, %5330
  %5332 = bitcast i32 %5331 to float
  %5333 = fmul fast float %5332, %5328
  %5334 = fmul fast float %5333, %5333
  %5335 = fsub fast float 0x4002A9FBE0000000, %5318
  %5336 = fadd fast float %5318, 0x3FD54FDF00000000
  %5337 = bitcast float %5336 to i32
  %5338 = sub nsw i32 2129859010, %5337
  %5339 = bitcast i32 %5338 to float
  %5340 = fmul fast float %5339, %5335
  %5341 = fmul fast float %5340, %5340
  %5342 = fsub fast float 0x4002A9FBE0000000, %5327
  %5343 = fadd fast float %5327, 0x3FD54FDF00000000
  %5344 = bitcast float %5343 to i32
  %5345 = sub nsw i32 2129859010, %5344
  %5346 = bitcast i32 %5345 to float
  %5347 = fmul fast float %5346, %5342
  %5348 = fmul fast float %5347, %5347
  %5349 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5334)  ; FMax(a,b)
  %5350 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5341)  ; FMax(a,b)
  %5351 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5348)  ; FMax(a,b)
  %5352 = fsub fast float 1.000000e+00, %5237
  %5353 = fadd fast float %5352, %5253
  %5354 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5355 = fsub fast float 1.000000e+00, %5217
  %5356 = fmul fast float %5295, %5355
  %5357 = fmul fast float %5298, %5298
  %5358 = fmul fast float %5357, %5356
  %5359 = fmul fast float %5358, %5300
  %5360 = fmul fast float %5355, 0xBFE99999A0000000
  %5361 = fmul fast float %5360, %5246
  %5362 = fmul fast float %5361, %5257
  %5363 = fadd fast float %5362, 1.000000e+00
  %5364 = fadd fast float %5091, -1.000000e+00
  %5365 = fmul fast float %5363, %5364
  %5366 = fadd fast float %5365, 1.000000e+00
  %5367 = fsub fast float %5349, %5088
  %5368 = fsub fast float %5350, %5089
  %5369 = fsub fast float %5351, %5090
  %5370 = fmul fast float %5359, %5367
  %5371 = fmul fast float %5359, %5368
  %5372 = fmul fast float %5359, %5369
  %5373 = fadd fast float %5370, %5088
  %5374 = fadd fast float %5371, %5089
  %5375 = fadd fast float %5372, %5090
  %5376 = fsub fast float %104, %5045
  %5377 = fsub fast float %105, %5046
  %5378 = fsub fast float %106, %5047
  %5379 = fmul fast float %5359, %5376
  %5380 = fmul fast float %5359, %5377
  %5381 = fmul fast float %5359, %5378
  %5382 = fadd fast float %5379, %5045
  %5383 = fadd fast float %5380, %5046
  %5384 = fadd fast float %5381, %5047
  %5385 = fmul fast float %5359, %5354
  %5386 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = fmul fast float %5385, %5387
  %5389 = fadd fast float %5388, %5386
  %5390 = fsub fast float 1.000000e+00, %5063
  %5391 = fmul fast float %5359, %5390
  %5392 = fadd fast float %5391, %5063
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5382, float %5383, float %5384, float %5382, float %5383, float %5384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.unary.f32(i32 25, float %5393)  ; Rsqrt(value)
  %5395 = fmul fast float %5382, %5394
  %5396 = fmul fast float %5383, %5394
  %5397 = fmul fast float %5384, %5394
  br label %5398

; <label>:5398                                    ; preds = %5230, %5223
  %5399 = phi float [ %5229, %5223 ], [ %5236, %5230 ]
  %5400 = phi float [ %5228, %5223 ], [ %5234, %5230 ]
  %5401 = phi float [ %5227, %5223 ], [ %5232, %5230 ]
  %5402 = phi float [ %5226, %5223 ], [ %5235, %5230 ]
  %5403 = phi float [ %5225, %5223 ], [ %5233, %5230 ]
  %5404 = phi float [ %5224, %5223 ], [ %5231, %5230 ]
  %5405 = phi float [ %5088, %5223 ], [ %5373, %5230 ]
  %5406 = phi float [ %5089, %5223 ], [ %5374, %5230 ]
  %5407 = phi float [ %5090, %5223 ], [ %5375, %5230 ]
  %5408 = phi float [ %5128, %5223 ], [ %5282, %5230 ]
  %5409 = phi float [ %5129, %5223 ], [ %5283, %5230 ]
  %5410 = phi float [ %5130, %5223 ], [ %5284, %5230 ]
  %5411 = phi float [ %5045, %5223 ], [ %5395, %5230 ]
  %5412 = phi float [ %5046, %5223 ], [ %5396, %5230 ]
  %5413 = phi float [ %5047, %5223 ], [ %5397, %5230 ]
  %5414 = phi float [ %5091, %5223 ], [ %5389, %5230 ]
  %5415 = phi float [ %5063, %5223 ], [ %5392, %5230 ]
  %5416 = select i1 %213, float 0.000000e+00, float %5407
  %5417 = call float @dx.op.dot3.f32(i32 55, float %5411, float %5412, float %5413, float %5401, float %5400, float %5399)  ; Dot3(ax,ay,az,bx,by,bz)
  %5418 = call float @dx.op.unary.f32(i32 7, float %5417)  ; Saturate(value)
  %5419 = call float @dx.op.dot3.f32(i32 55, float %5404, float %5403, float %5402, float %5411, float %5412, float %5413)  ; Dot3(ax,ay,az,bx,by,bz)
  %5420 = fmul fast float %5419, 2.000000e+00
  %5421 = fmul fast float %5420, %5411
  %5422 = fmul fast float %5420, %5412
  %5423 = fmul fast float %5420, %5413
  %5424 = fsub fast float %5404, %5421
  %5425 = fsub fast float %5403, %5422
  %5426 = fsub fast float %5402, %5423
  %5427 = call float @dx.op.binary.f32(i32 36, float %5415, float 1.000000e+00)  ; FMin(a,b)
  %5428 = fsub fast float 1.000000e+00, %5427
  %5429 = bitcast float %5428 to i32
  %5430 = ashr i32 %5429, 1
  %5431 = add nsw i32 %5430, 532487669
  %5432 = bitcast i32 %5431 to float
  %5433 = fsub fast float 1.000000e+00, %5414
  %5434 = call float @dx.op.binary.f32(i32 35, float %5433, float 0x3F847AE140000000)  ; FMax(a,b)
  %5435 = fmul fast float %5434, %5434
  %5436 = fmul fast float %5435, %5435
  %5437 = call float @dx.op.unary.f32(i32 7, float %5418)  ; Saturate(value)
  %5438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %42, float %5432, float %5436, float %5437, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5439 = extractvalue %dx.types.ResRet.f32 %5438, 0
  %5440 = fsub fast float 1.000000e+00, %5415
  %5441 = bitcast float %5440 to i32
  %5442 = sub nsw i32 2129859010, %5441
  %5443 = call float @dx.op.dot3.f32(i32 55, float %65, float %61, float %57, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5444 = fmul fast float %5443, 0x3FD20DD760000000
  %5445 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5446 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = fcmp fast oeq float %5446, 0.000000e+00
  %5448 = fcmp fast oeq float %5445, 0.000000e+00
  %5449 = or i1 %5448, %5447
  br i1 %5449, label %5479, label %5450

; <label>:5450                                    ; preds = %5398
  %5451 = fsub fast float -0.000000e+00, %68
  %5452 = fsub fast float -0.000000e+00, %66
  %5453 = call float @dx.op.unary.f32(i32 24, float %5446)  ; Sqrt(value)
  %5454 = fdiv fast float %5453, %5445
  %5455 = fcmp fast ogt float %5454, 0x3FFB6F8900000000
  %5456 = select i1 %5455, float 0x3FFB6F8900000000, float %5454
  %5457 = fmul fast float %5456, 0x3FE8A23460000000
  %5458 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5459 = call float @dx.op.binary.f32(i32 35, float %5456, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5460 = fmul fast float %5458, %5445
  %5461 = fmul fast float %5459, 0x3FF279A740000000
  %5462 = fadd fast float %5461, -1.000000e+00
  %5463 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %67, float %5451, float %5452, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5464 = call float @dx.op.unary.f32(i32 25, float %5463)  ; Rsqrt(value)
  %5465 = fmul fast float %5464, %5451
  %5466 = fmul fast float %5464, %5452
  %5467 = fmul fast float %5464, %67
  %5468 = fmul fast float %5462, %5462
  %5469 = fsub fast float 1.000000e+00, %5468
  %5470 = fmul fast float %5459, 0x40005F8BE0000000
  %5471 = fsub fast float 0x400C5BF8A0000000, %5470
  %5472 = fdiv fast float %5460, %5471
  %5473 = fmul fast float %5472, 0x3FEE31C3C0000000
  %5474 = fmul fast float %5473, %5469
  %5475 = fmul fast float %5459, 0x3FDACB7480000000
  %5476 = fadd fast float %5475, 0xBFD7347680000000
  %5477 = fmul fast float %5476, %5472
  %5478 = fmul fast float %5477, %5469
  br label %5479

; <label>:5479                                    ; preds = %5450, %5398
  %5480 = phi float [ %5465, %5450 ], [ 0.000000e+00, %5398 ]
  %5481 = phi float [ %5466, %5450 ], [ 0.000000e+00, %5398 ]
  %5482 = phi float [ %5467, %5450 ], [ 0.000000e+00, %5398 ]
  %5483 = phi float [ %5474, %5450 ], [ 0.000000e+00, %5398 ]
  %5484 = phi float [ %5478, %5450 ], [ 0.000000e+00, %5398 ]
  %5485 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5481, float %5482, float %5411, float %5412, float %5413)  ; Dot3(ax,ay,az,bx,by,bz)
  %5486 = fmul fast float %5485, 0x3FDF454380000000
  %5487 = fmul fast float %5485, %5485
  %5488 = fmul fast float %5487, 0x3FEE471020000000
  %5489 = fadd fast float %5488, 0xBFD42F6020000000
  %5490 = fmul fast float %5445, 0x3FD20DD760000000
  %5491 = fmul fast float %5489, %5484
  %5492 = fadd fast float %5491, %5490
  %5493 = fmul fast float %5486, %5483
  %5494 = fadd fast float %5492, %5493
  %5495 = fsub fast float %5492, %5493
  %5496 = call float @dx.op.dot3.f32(i32 55, float %5480, float %5481, float %5482, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = fmul fast float %5496, 0x3FDF454380000000
  %5498 = fmul fast float %5496, %5496
  %5499 = fmul fast float %5498, 0x3FEE471020000000
  %5500 = fadd fast float %5499, 0xBFD42F6020000000
  %5501 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5483, float %5484, float 0x3FD20DD760000000, float %5497, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %61)  ; FMax(a,b)
  %5503 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = fcmp fast oeq float %5503, 0.000000e+00
  %5505 = fcmp fast oeq float %5502, 0.000000e+00
  %5506 = or i1 %5505, %5504
  br i1 %5506, label %5536, label %5507

; <label>:5507                                    ; preds = %5479
  %5508 = fsub fast float -0.000000e+00, %64
  %5509 = fsub fast float -0.000000e+00, %62
  %5510 = call float @dx.op.unary.f32(i32 24, float %5503)  ; Sqrt(value)
  %5511 = fdiv fast float %5510, %5502
  %5512 = fcmp fast ogt float %5511, 0x3FFB6F8900000000
  %5513 = select i1 %5512, float 0x3FFB6F8900000000, float %5511
  %5514 = fmul fast float %5513, 0x3FE8A23460000000
  %5515 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5516 = call float @dx.op.binary.f32(i32 35, float %5513, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5517 = fmul fast float %5515, %5502
  %5518 = fmul fast float %5516, 0x3FF279A740000000
  %5519 = fadd fast float %5518, -1.000000e+00
  %5520 = call float @dx.op.dot3.f32(i32 55, float %5508, float %5509, float %63, float %5508, float %5509, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5521 = call float @dx.op.unary.f32(i32 25, float %5520)  ; Rsqrt(value)
  %5522 = fmul fast float %5521, %5508
  %5523 = fmul fast float %5521, %5509
  %5524 = fmul fast float %5521, %63
  %5525 = fmul fast float %5519, %5519
  %5526 = fsub fast float 1.000000e+00, %5525
  %5527 = fmul fast float %5516, 0x40005F8BE0000000
  %5528 = fsub fast float 0x400C5BF8A0000000, %5527
  %5529 = fdiv fast float %5517, %5528
  %5530 = fmul fast float %5529, 0x3FEE31C3C0000000
  %5531 = fmul fast float %5530, %5526
  %5532 = fmul fast float %5516, 0x3FDACB7480000000
  %5533 = fadd fast float %5532, 0xBFD7347680000000
  %5534 = fmul fast float %5533, %5529
  %5535 = fmul fast float %5534, %5526
  br label %5536

; <label>:5536                                    ; preds = %5507, %5479
  %5537 = phi float [ %5522, %5507 ], [ 0.000000e+00, %5479 ]
  %5538 = phi float [ %5523, %5507 ], [ 0.000000e+00, %5479 ]
  %5539 = phi float [ %5524, %5507 ], [ 0.000000e+00, %5479 ]
  %5540 = phi float [ %5531, %5507 ], [ 0.000000e+00, %5479 ]
  %5541 = phi float [ %5535, %5507 ], [ 0.000000e+00, %5479 ]
  %5542 = call float @dx.op.dot3.f32(i32 55, float %5537, float %5538, float %5539, float %5411, float %5412, float %5413)  ; Dot3(ax,ay,az,bx,by,bz)
  %5543 = fmul fast float %5542, 0x3FDF454380000000
  %5544 = fmul fast float %5542, %5542
  %5545 = fmul fast float %5544, 0x3FEE471020000000
  %5546 = fadd fast float %5545, 0xBFD42F6020000000
  %5547 = fmul fast float %5502, 0x3FD20DD760000000
  %5548 = fmul fast float %5546, %5541
  %5549 = fadd fast float %5548, %5547
  %5550 = fmul fast float %5543, %5540
  %5551 = fadd fast float %5549, %5550
  %5552 = fsub fast float %5549, %5550
  %5553 = call float @dx.op.dot3.f32(i32 55, float %5537, float %5538, float %5539, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5554 = fmul fast float %5553, 0x3FDF454380000000
  %5555 = fmul fast float %5553, %5553
  %5556 = fmul fast float %5555, 0x3FEE471020000000
  %5557 = fadd fast float %5556, 0xBFD42F6020000000
  %5558 = call float @dx.op.dot3.f32(i32 55, float %5502, float %5540, float %5541, float 0x3FD20DD760000000, float %5554, float %5557)  ; Dot3(ax,ay,az,bx,by,bz)
  %5559 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %5560 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = fcmp fast oeq float %5560, 0.000000e+00
  %5562 = fcmp fast oeq float %5559, 0.000000e+00
  %5563 = or i1 %5562, %5561
  br i1 %5563, label %5593, label %5564

; <label>:5564                                    ; preds = %5536
  %5565 = fsub fast float -0.000000e+00, %60
  %5566 = fsub fast float -0.000000e+00, %58
  %5567 = call float @dx.op.unary.f32(i32 24, float %5560)  ; Sqrt(value)
  %5568 = fdiv fast float %5567, %5559
  %5569 = fcmp fast ogt float %5568, 0x3FFB6F8900000000
  %5570 = select i1 %5569, float 0x3FFB6F8900000000, float %5568
  %5571 = fmul fast float %5570, 0x3FE8A23460000000
  %5572 = call float @dx.op.unary.f32(i32 7, float %5571)  ; Saturate(value)
  %5573 = call float @dx.op.binary.f32(i32 35, float %5570, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5574 = fmul fast float %5572, %5559
  %5575 = fmul fast float %5573, 0x3FF279A740000000
  %5576 = fadd fast float %5575, -1.000000e+00
  %5577 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %59, float %5565, float %5566, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = call float @dx.op.unary.f32(i32 25, float %5577)  ; Rsqrt(value)
  %5579 = fmul fast float %5578, %5565
  %5580 = fmul fast float %5578, %5566
  %5581 = fmul fast float %5578, %59
  %5582 = fmul fast float %5576, %5576
  %5583 = fsub fast float 1.000000e+00, %5582
  %5584 = fmul fast float %5573, 0x40005F8BE0000000
  %5585 = fsub fast float 0x400C5BF8A0000000, %5584
  %5586 = fdiv fast float %5574, %5585
  %5587 = fmul fast float %5586, 0x3FEE31C3C0000000
  %5588 = fmul fast float %5587, %5583
  %5589 = fmul fast float %5573, 0x3FDACB7480000000
  %5590 = fadd fast float %5589, 0xBFD7347680000000
  %5591 = fmul fast float %5590, %5586
  %5592 = fmul fast float %5591, %5583
  br label %5593

; <label>:5593                                    ; preds = %5564, %5536
  %5594 = phi float [ %5579, %5564 ], [ 0.000000e+00, %5536 ]
  %5595 = phi float [ %5580, %5564 ], [ 0.000000e+00, %5536 ]
  %5596 = phi float [ %5581, %5564 ], [ 0.000000e+00, %5536 ]
  %5597 = phi float [ %5588, %5564 ], [ 0.000000e+00, %5536 ]
  %5598 = phi float [ %5592, %5564 ], [ 0.000000e+00, %5536 ]
  %5599 = call float @dx.op.dot3.f32(i32 55, float %5594, float %5595, float %5596, float %5411, float %5412, float %5413)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = fmul fast float %5599, 0x3FDF454380000000
  %5601 = fmul fast float %5599, %5599
  %5602 = fmul fast float %5601, 0x3FEE471020000000
  %5603 = fadd fast float %5602, 0xBFD42F6020000000
  %5604 = fmul fast float %5559, 0x3FD20DD760000000
  %5605 = fmul fast float %5603, %5598
  %5606 = fadd fast float %5605, %5604
  %5607 = fmul fast float %5600, %5597
  %5608 = fadd fast float %5606, %5607
  %5609 = fsub fast float %5606, %5607
  %5610 = call float @dx.op.dot3.f32(i32 55, float %5594, float %5595, float %5596, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5611 = fmul fast float %5610, 0x3FDF454380000000
  %5612 = fmul fast float %5610, %5610
  %5613 = fmul fast float %5612, 0x3FEE471020000000
  %5614 = fadd fast float %5613, 0xBFD42F6020000000
  %5615 = call float @dx.op.dot3.f32(i32 55, float %5559, float %5597, float %5598, float 0x3FD20DD760000000, float %5611, float %5614)  ; Dot3(ax,ay,az,bx,by,bz)
  %5616 = call float @dx.op.binary.f32(i32 35, float %5494, float 0.000000e+00)  ; FMax(a,b)
  %5617 = call float @dx.op.binary.f32(i32 35, float %5551, float 0.000000e+00)  ; FMax(a,b)
  %5618 = call float @dx.op.binary.f32(i32 35, float %5608, float 0.000000e+00)  ; FMax(a,b)
  %5619 = call float @dx.op.binary.f32(i32 35, float %5495, float 0.000000e+00)  ; FMax(a,b)
  %5620 = call float @dx.op.binary.f32(i32 35, float %5552, float 0.000000e+00)  ; FMax(a,b)
  %5621 = call float @dx.op.binary.f32(i32 35, float %5609, float 0.000000e+00)  ; FMax(a,b)
  %5622 = call float @dx.op.binary.f32(i32 35, float %5501, float 0.000000e+00)  ; FMax(a,b)
  %5623 = call float @dx.op.binary.f32(i32 35, float %5558, float 0.000000e+00)  ; FMax(a,b)
  %5624 = call float @dx.op.binary.f32(i32 35, float %5615, float 0.000000e+00)  ; FMax(a,b)
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5627 = call float @dx.op.binary.f32(i32 36, float %5408, float %5626)  ; FMin(a,b)
  %5628 = fmul fast float %5627, %5428
  %5629 = fsub fast float 1.000000e+00, %5628
  %5630 = bitcast float %5629 to i32
  %5631 = sub nsw i32 2129859010, %5630
  %5632 = bitcast i32 %5631 to float
  %5633 = call float @dx.op.binary.f32(i32 36, float %5409, float %5626)  ; FMin(a,b)
  %5634 = fmul fast float %5633, %5428
  %5635 = fsub fast float 1.000000e+00, %5634
  %5636 = bitcast float %5635 to i32
  %5637 = sub nsw i32 2129859010, %5636
  %5638 = bitcast i32 %5637 to float
  %5639 = call float @dx.op.binary.f32(i32 36, float %5410, float %5626)  ; FMin(a,b)
  %5640 = fmul fast float %5639, %5428
  %5641 = fsub fast float 1.000000e+00, %5640
  %5642 = bitcast float %5641 to i32
  %5643 = sub nsw i32 2129859010, %5642
  %5644 = bitcast i32 %5643 to float
  %5645 = fmul fast float %5616, %5427
  %5646 = fmul fast float %5645, %5632
  %5647 = fmul fast float %5617, %5427
  %5648 = fmul fast float %5647, %5638
  %5649 = fmul fast float %5618, %5427
  %5650 = fmul fast float %5649, %5644
  %5651 = call float @dx.op.binary.f32(i32 36, float %5405, float %5626)  ; FMin(a,b)
  %5652 = fmul fast float %5651, %5428
  %5653 = fsub fast float 1.000000e+00, %5652
  %5654 = bitcast float %5653 to i32
  %5655 = sub nsw i32 2129859010, %5654
  %5656 = bitcast i32 %5655 to float
  %5657 = call float @dx.op.binary.f32(i32 36, float %5406, float %5626)  ; FMin(a,b)
  %5658 = fmul fast float %5657, %5428
  %5659 = fsub fast float 1.000000e+00, %5658
  %5660 = bitcast float %5659 to i32
  %5661 = sub nsw i32 2129859010, %5660
  %5662 = bitcast i32 %5661 to float
  %5663 = call float @dx.op.binary.f32(i32 36, float %5416, float %5626)  ; FMin(a,b)
  %5664 = fmul fast float %5663, %5428
  %5665 = fsub fast float 1.000000e+00, %5664
  %5666 = bitcast float %5665 to i32
  %5667 = sub nsw i32 2129859010, %5666
  %5668 = bitcast i32 %5667 to float
  %5669 = fmul fast float %5622, %5427
  %5670 = fmul fast float %5669, %5656
  %5671 = fmul fast float %5623, %5427
  %5672 = fmul fast float %5671, %5662
  %5673 = fmul fast float %5624, %5427
  %5674 = fmul fast float %5673, %5668
  %5675 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5648, float %5650, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = select i1 %213, float 0.000000e+00, float %5646
  %5677 = select i1 %213, float %5675, float %5648
  %5678 = select i1 %213, float 0.000000e+00, float %5650
  %5679 = call float @dx.op.dot3.f32(i32 55, float %5619, float %5620, float %5621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5680 = select i1 %213, float 0.000000e+00, float %5619
  %5681 = select i1 %213, float %5679, float %5620
  %5682 = select i1 %213, float 0.000000e+00, float %5621
  %5683 = call float @dx.op.dot3.f32(i32 55, float %5670, float %5672, float %5674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5684 = select i1 %213, float 0.000000e+00, float %5670
  %5685 = select i1 %213, float %5683, float %5672
  %5686 = select i1 %213, float 0.000000e+00, float %5674
  %5687 = fmul fast float %4414, %4414
  %5688 = call float @dx.op.unary.f32(i32 7, float %5687)  ; Saturate(value)
  %5689 = fmul fast float %5418, 9.843750e-01
  %5690 = fmul fast float %5414, 9.843750e-01
  %5691 = fadd fast float %5689, 7.812500e-03
  %5692 = fadd fast float %5690, 7.812500e-03
  %5693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %5691, float %5692, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5694 = extractvalue %dx.types.ResRet.f32 %5693, 0
  %5695 = extractvalue %dx.types.ResRet.f32 %5693, 1
  %5696 = extractvalue %dx.types.ResRet.f32 %5693, 2
  %5697 = extractvalue %dx.types.ResRet.f32 %5693, 3
  %5698 = fsub fast float 1.000000e+00, %5688
  %5699 = fsub fast float %5696, %5694
  %5700 = fsub fast float %5697, %5695
  %5701 = fmul fast float %5699, %5698
  %5702 = fmul fast float %5700, %5698
  %5703 = fadd fast float %5701, %5694
  %5704 = fadd fast float %5702, %5695
  %5705 = fmul fast float %5703, %5405
  %5706 = fmul fast float %5703, %5406
  %5707 = fmul fast float %5703, %5416
  %5708 = fadd fast float %5705, %5704
  %5709 = fadd fast float %5706, %5704
  %5710 = fadd fast float %5707, %5704
  %5711 = fcmp fast ogt float %5064, 0.000000e+00
  br i1 %5711, label %5712, label %5738

; <label>:5712                                    ; preds = %5593
  %5713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5064, float %5418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5714 = extractvalue %dx.types.ResRet.f32 %5713, 0
  %5715 = extractvalue %dx.types.ResRet.f32 %5713, 1
  %5716 = extractvalue %dx.types.ResRet.f32 %5713, 2
  %5717 = fadd fast float %5714, -5.000000e-01
  %5718 = fadd fast float %5715, -5.000000e-01
  %5719 = fadd fast float %5716, -5.000000e-01
  %5720 = fsub fast float 1.000000e+00, %5405
  %5721 = fsub fast float 1.000000e+00, %5406
  %5722 = fsub fast float 1.000000e+00, %5416
  %5723 = fmul fast float %5405, 4.000000e+00
  %5724 = fmul fast float %5723, %5720
  %5725 = fmul fast float %5724, %5717
  %5726 = fmul fast float %5406, 4.000000e+00
  %5727 = fmul fast float %5726, %5721
  %5728 = fmul fast float %5727, %5718
  %5729 = fmul fast float %5416, 4.000000e+00
  %5730 = fmul fast float %5729, %5722
  %5731 = fmul fast float %5730, %5719
  %5732 = fadd fast float %5725, %5708
  %5733 = fadd fast float %5728, %5709
  %5734 = fadd fast float %5731, %5710
  %5735 = call float @dx.op.unary.f32(i32 7, float %5732)  ; Saturate(value)
  %5736 = call float @dx.op.unary.f32(i32 7, float %5733)  ; Saturate(value)
  %5737 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  br label %5738

; <label>:5738                                    ; preds = %5712, %5593
  %5739 = phi float [ %5735, %5712 ], [ %5708, %5593 ]
  %5740 = phi float [ %5736, %5712 ], [ %5709, %5593 ]
  %5741 = phi float [ %5737, %5712 ], [ %5710, %5593 ]
  %5742 = call float @dx.op.binary.f32(i32 35, float %5740, float %5741)  ; FMax(a,b)
  %5743 = call float @dx.op.binary.f32(i32 35, float %5739, float %5742)  ; FMax(a,b)
  %5744 = fsub fast float 1.000000e+00, %5743
  %5745 = fmul fast float %5743, %5414
  %5746 = fadd fast float %5745, %5414
  %5747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5748 = extractvalue %dx.types.CBufRet.f32 %5747, 2
  %5749 = extractvalue %dx.types.CBufRet.f32 %5747, 3
  %5750 = fmul fast float %5746, %5748
  %5751 = fadd fast float %5750, %5749
  %5752 = call float @dx.op.unary.f32(i32 7, float %5751)  ; Saturate(value)
  %5753 = fsub fast float 1.000000e+00, %5439
  %5754 = fadd fast float %5753, %5752
  %5755 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5756 = fcmp fast olt float %5755, 1.000000e+00
  br i1 %5756, label %5757, label %6205

; <label>:5757                                    ; preds = %5738
  %5758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5758, 2
  %5760 = extractvalue %dx.types.CBufRet.f32 %5758, 3
  %5761 = fmul fast float %5759, %97
  %5762 = fmul fast float %5760, %98
  %5763 = fptoui float %5761 to i32
  %5764 = fptoui float %5762 to i32
  %5765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5766 = extractvalue %dx.types.CBufRet.f32 %5765, 0
  %5767 = extractvalue %dx.types.CBufRet.f32 %5765, 2
  %5768 = extractvalue %dx.types.CBufRet.f32 %5765, 3
  %5769 = fadd fast float %85, -4.000000e+00
  %5770 = call float @dx.op.binary.f32(i32 35, float %5769, float 0.000000e+00)  ; FMax(a,b)
  %5771 = fadd fast float %5770, %5766
  %5772 = fmul fast float %5771, %5767
  %5773 = call float @dx.op.unary.f32(i32 23, float %5772)  ; Log(value)
  %5774 = fmul fast float %5773, %5768
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 2
  %5777 = fmul fast float %5774, %5776
  %5778 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  %5779 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.i32 %5779, 1
  %5781 = add i32 %5780, -1
  %5782 = uitofp i32 %5780 to float
  %5783 = fmul fast float %5782, %5778
  %5784 = fptoui float %5783 to i32
  %5785 = call i32 @dx.op.binary.i32(i32 40, i32 %5784, i32 %5781)  ; UMin(a,b)
  %5786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.i32 %5786, 2
  %5788 = extractvalue %dx.types.CBufRet.i32 %5786, 3
  %5789 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5764, i32 %5787, i32 %5763)  ; UMad(a,b,c)
  %5790 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5785, i32 %5788, i32 %5789)  ; UMad(a,b,c)
  %5791 = call float @dx.op.binary.f32(i32 35, float %85, float 0.000000e+00)  ; FMax(a,b)
  %5792 = fptoui float %5791 to i32
  %5793 = lshr i32 %5792, 5
  %5794 = call i32 @dx.op.binary.i32(i32 40, i32 %5793, i32 8191)  ; UMin(a,b)
  br i1 false, label %5795, label %5802

; <label>:5795                                    ; preds = %5757
  %5796 = fadd fast float 0.000000e+00, %5426
  %5797 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5425, float %5796, float %5424, float %5425, float %5796)  ; Dot3(ax,ay,az,bx,by,bz)
  %5798 = call float @dx.op.unary.f32(i32 25, float %5797)  ; Rsqrt(value)
  %5799 = fmul fast float %5798, %5424
  %5800 = fmul fast float %5798, %5425
  %5801 = fmul fast float %5796, %5798
  br label %5802

; <label>:5802                                    ; preds = %5795, %5757
  %5803 = phi float [ %5799, %5795 ], [ %5424, %5757 ]
  %5804 = phi float [ %5800, %5795 ], [ %5425, %5757 ]
  %5805 = phi float [ %5801, %5795 ], [ %5426, %5757 ]
  %5806 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.i32 %5806, 2
  %5808 = add nsw i32 %5807, -1
  %5809 = call i32 @dx.op.binary.i32(i32 37, i32 %5808, i32 0)  ; IMax(a,b)
  %5810 = shl i32 %5794, 2
  %5811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5810, i32 undef)  ; BufferLoad(srv,index,wot)
  %5812 = extractvalue %dx.types.ResRet.i32 %5811, 0
  %5813 = lshr i32 %5812, 16
  %5814 = and i32 %5812, 65535
  %5815 = lshr i32 %5812, 21
  %5816 = lshr i32 %5814, 5
  %5817 = call i32 @dx.op.binary.i32(i32 40, i32 %5816, i32 %5809)  ; UMin(a,b)
  %5818 = icmp ugt i32 %5815, %5817
  br i1 %5818, label %6181, label %5819

; <label>:5819                                    ; preds = %5802
  br label %5820

; <label>:5820                                    ; preds = %6173, %5819
  %5821 = phi float [ %6174, %6173 ], [ 0.000000e+00, %5819 ]
  %5822 = phi float [ %6175, %6173 ], [ 0.000000e+00, %5819 ]
  %5823 = phi float [ %6176, %6173 ], [ 0.000000e+00, %5819 ]
  %5824 = phi float [ %6177, %6173 ], [ 1.000000e+00, %5819 ]
  %5825 = phi i32 [ %6178, %6173 ], [ %5815, %5819 ]
  %5826 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5827 = extractvalue %dx.types.CBufRet.i32 %5826, 2
  %5828 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5790, i32 %5827, i32 %5825)  ; UMad(a,b,c)
  %5829 = shl i32 %5828, 2
  %5830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5829, i32 undef)  ; BufferLoad(srv,index,wot)
  %5831 = extractvalue %dx.types.ResRet.i32 %5830, 0
  %5832 = shl i32 %5825, 5
  %5833 = sub nsw i32 %5813, %5832
  %5834 = call i32 @dx.op.binary.i32(i32 37, i32 %5833, i32 0)  ; IMax(a,b)
  %5835 = call i32 @dx.op.binary.i32(i32 38, i32 %5834, i32 31)  ; IMin(a,b)
  %5836 = sub nsw i32 1, %5813
  %5837 = add nsw i32 %5836, %5814
  %5838 = call i32 @dx.op.binary.i32(i32 37, i32 %5837, i32 0)  ; IMax(a,b)
  %5839 = call i32 @dx.op.binary.i32(i32 38, i32 %5838, i32 32)  ; IMin(a,b)
  %5840 = and i32 %5839, 31
  %5841 = shl i32 -1, %5840
  %5842 = xor i32 %5841, -1
  %5843 = and i32 %5835, 31
  %5844 = shl i32 %5842, %5843
  %5845 = icmp eq i32 %5839, 32
  %5846 = select i1 %5845, i32 -1, i32 %5844
  %5847 = and i32 %5846, %5831
  %5848 = icmp eq i32 %5847, 0
  br i1 %5848, label %6173, label %5849

; <label>:5849                                    ; preds = %5820
  br label %5850

; <label>:5850                                    ; preds = %5956, %5849
  %5851 = phi float [ %5957, %5956 ], [ %5821, %5849 ]
  %5852 = phi float [ %5958, %5956 ], [ %5822, %5849 ]
  %5853 = phi float [ %5959, %5956 ], [ %5823, %5849 ]
  %5854 = phi float [ %5960, %5956 ], [ %5824, %5849 ]
  %5855 = phi i32 [ %5860, %5956 ], [ %5847, %5849 ]
  %5856 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5855)  ; FirstbitLo(value)
  %5857 = add i32 %5856, %5832
  %5858 = and i32 %5856, 31
  %5859 = shl i32 1, %5858
  %5860 = xor i32 %5859, %5855
  %5861 = mul i32 %5857, 72
  %5862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5861, i32 undef)  ; BufferLoad(srv,index,wot)
  %5863 = extractvalue %dx.types.ResRet.f32 %5862, 0
  %5864 = extractvalue %dx.types.ResRet.f32 %5862, 1
  %5865 = extractvalue %dx.types.ResRet.f32 %5862, 2
  %5866 = add i32 %5861, 12
  %5867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5866, i32 undef)  ; BufferLoad(srv,index,wot)
  %5868 = extractvalue %dx.types.ResRet.i32 %5867, 0
  %5869 = add i32 %5861, 16
  %5870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5869, i32 undef)  ; BufferLoad(srv,index,wot)
  %5871 = extractvalue %dx.types.ResRet.f32 %5870, 0
  %5872 = extractvalue %dx.types.ResRet.f32 %5870, 1
  %5873 = extractvalue %dx.types.ResRet.f32 %5870, 2
  %5874 = add i32 %5861, 28
  %5875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5874, i32 undef)  ; BufferLoad(srv,index,wot)
  %5876 = extractvalue %dx.types.ResRet.f32 %5875, 0
  %5877 = add i32 %5861, 32
  %5878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5877, i32 undef)  ; BufferLoad(srv,index,wot)
  %5879 = extractvalue %dx.types.ResRet.f32 %5878, 0
  %5880 = extractvalue %dx.types.ResRet.f32 %5878, 1
  %5881 = extractvalue %dx.types.ResRet.f32 %5878, 2
  %5882 = extractvalue %dx.types.ResRet.f32 %5878, 3
  %5883 = add i32 %5861, 48
  %5884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5883, i32 undef)  ; BufferLoad(srv,index,wot)
  %5885 = extractvalue %dx.types.ResRet.f32 %5884, 0
  %5886 = extractvalue %dx.types.ResRet.f32 %5884, 1
  %5887 = add i32 %5861, 56
  %5888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5887, i32 undef)  ; BufferLoad(srv,index,wot)
  %5889 = extractvalue %dx.types.ResRet.f32 %5888, 0
  %5890 = extractvalue %dx.types.ResRet.f32 %5888, 1
  %5891 = add i32 %5861, 64
  %5892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5891, i32 undef)  ; BufferLoad(srv,index,wot)
  %5893 = extractvalue %dx.types.ResRet.f32 %5892, 0
  %5894 = extractvalue %dx.types.ResRet.f32 %5892, 1
  %5895 = mul i32 %5857, 60
  %5896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5895, i32 undef)  ; BufferLoad(srv,index,wot)
  %5897 = extractvalue %dx.types.ResRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.ResRet.f32 %5896, 1
  %5899 = extractvalue %dx.types.ResRet.f32 %5896, 2
  %5900 = add i32 %5895, 12
  %5901 = add i32 %5895, 48
  %5902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5901, i32 undef)  ; BufferLoad(srv,index,wot)
  %5903 = extractvalue %dx.types.ResRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.ResRet.f32 %5902, 1
  %5905 = extractvalue %dx.types.ResRet.f32 %5902, 2
  %5906 = and i32 %5868, 32767
  %5907 = bitcast float %5863 to i32
  %5908 = icmp eq i32 %5907, -1
  %5909 = bitcast float %5864 to i32
  %5910 = and i32 %5868, 32768
  %5911 = icmp ne i32 %5910, 0
  %5912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.f32 %5912, 0
  %5914 = extractvalue %dx.types.CBufRet.f32 %5912, 1
  %5915 = extractvalue %dx.types.CBufRet.f32 %5912, 2
  %5916 = fsub fast float %5897, %5913
  %5917 = fsub fast float %5898, %5914
  %5918 = fsub fast float %5899, %5915
  %5919 = fsub fast float %152, %5916
  %5920 = fsub fast float %153, %5917
  %5921 = fsub fast float %154, %5918
  %5922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5900, i32 undef)  ; BufferLoad(srv,index,wot)
  %5923 = extractvalue %dx.types.ResRet.f32 %5922, 0
  %5924 = extractvalue %dx.types.ResRet.f32 %5922, 1
  %5925 = extractvalue %dx.types.ResRet.f32 %5922, 2
  %5926 = call float @dx.op.dot3.f32(i32 55, float %5919, float %5920, float %5921, float %5923, float %5924, float %5925)  ; Dot3(ax,ay,az,bx,by,bz)
  %5927 = add i32 %5895, 24
  %5928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5927, i32 undef)  ; BufferLoad(srv,index,wot)
  %5929 = extractvalue %dx.types.ResRet.f32 %5928, 0
  %5930 = extractvalue %dx.types.ResRet.f32 %5928, 1
  %5931 = extractvalue %dx.types.ResRet.f32 %5928, 2
  %5932 = call float @dx.op.dot3.f32(i32 55, float %5919, float %5920, float %5921, float %5929, float %5930, float %5931)  ; Dot3(ax,ay,az,bx,by,bz)
  %5933 = add i32 %5895, 36
  %5934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5933, i32 undef)  ; BufferLoad(srv,index,wot)
  %5935 = extractvalue %dx.types.ResRet.f32 %5934, 0
  %5936 = extractvalue %dx.types.ResRet.f32 %5934, 1
  %5937 = extractvalue %dx.types.ResRet.f32 %5934, 2
  %5938 = call float @dx.op.dot3.f32(i32 55, float %5919, float %5920, float %5921, float %5935, float %5936, float %5937)  ; Dot3(ax,ay,az,bx,by,bz)
  %5939 = call float @dx.op.unary.f32(i32 6, float %5926)  ; FAbs(value)
  %5940 = call float @dx.op.unary.f32(i32 6, float %5932)  ; FAbs(value)
  %5941 = call float @dx.op.unary.f32(i32 6, float %5938)  ; FAbs(value)
  %5942 = fsub fast float %5903, %5939
  %5943 = fsub fast float %5904, %5940
  %5944 = fsub fast float %5905, %5941
  %5945 = fmul fast float %5942, %5871
  %5946 = fmul fast float %5943, %5872
  %5947 = fmul fast float %5944, %5873
  %5948 = call float @dx.op.binary.f32(i32 36, float %5946, float %5947)  ; FMin(a,b)
  %5949 = call float @dx.op.binary.f32(i32 36, float %5945, float %5948)  ; FMin(a,b)
  %5950 = call float @dx.op.unary.f32(i32 7, float %5949)  ; Saturate(value)
  %5951 = call float @dx.op.binary.f32(i32 36, float %5854, float %5950)  ; FMin(a,b)
  %5952 = uitofp i1 %5911 to float
  %5953 = fsub fast float 1.000000e+00, %5952
  %5954 = fmul fast float %5951, %5953
  %5955 = fcmp fast ogt float %5954, 0.000000e+00
  br i1 %5955, label %5962, label %5956

; <label>:5956                                    ; preds = %6104, %5850
  %5957 = phi float [ %6168, %6104 ], [ %5851, %5850 ]
  %5958 = phi float [ %6169, %6104 ], [ %5852, %5850 ]
  %5959 = phi float [ %6170, %6104 ], [ %5853, %5850 ]
  %5960 = phi float [ %6171, %6104 ], [ %5854, %5850 ]
  %5961 = icmp eq i32 %5855, %5859
  br i1 %5961, label %6172, label %5850

; <label>:5962                                    ; preds = %5850
  br i1 %5908, label %6020, label %5963

; <label>:5963                                    ; preds = %5962
  %5964 = fsub fast float -0.000000e+00, %5923
  %5965 = fsub fast float -0.000000e+00, %5924
  %5966 = fsub fast float -0.000000e+00, %5925
  %5967 = call float @dx.op.dot3.f32(i32 55, float %5803, float %5804, float %5805, float %5964, float %5965, float %5966)  ; Dot3(ax,ay,az,bx,by,bz)
  %5968 = fsub fast float -0.000000e+00, %5967
  %5969 = call float @dx.op.dot3.f32(i32 55, float %5919, float %5920, float %5921, float %5964, float %5965, float %5966)  ; Dot3(ax,ay,az,bx,by,bz)
  %5970 = fadd fast float %5969, %5886
  %5971 = fadd fast float %5885, %5969
  %5972 = fsub fast float -0.000000e+00, %5971
  %5973 = fcmp ogt float %5967, -0.000000e+00
  %5974 = select i1 %5973, float %5972, float %5970
  %5975 = call float @dx.op.unary.f32(i32 6, float %5968)  ; FAbs(value)
  %5976 = fdiv fast float 1.000000e+00, %5975
  %5977 = fmul fast float %5974, %5976
  %5978 = call float @dx.op.binary.f32(i32 35, float %5977, float 0.000000e+00)  ; FMax(a,b)
  %5979 = fsub fast float -0.000000e+00, %5929
  %5980 = fsub fast float -0.000000e+00, %5930
  %5981 = fsub fast float -0.000000e+00, %5931
  %5982 = call float @dx.op.dot3.f32(i32 55, float %5803, float %5804, float %5805, float %5979, float %5980, float %5981)  ; Dot3(ax,ay,az,bx,by,bz)
  %5983 = fsub fast float -0.000000e+00, %5982
  %5984 = call float @dx.op.dot3.f32(i32 55, float %5919, float %5920, float %5921, float %5979, float %5980, float %5981)  ; Dot3(ax,ay,az,bx,by,bz)
  %5985 = fadd fast float %5984, %5890
  %5986 = fadd fast float %5889, %5984
  %5987 = fsub fast float -0.000000e+00, %5986
  %5988 = fcmp ogt float %5982, -0.000000e+00
  %5989 = select i1 %5988, float %5987, float %5985
  %5990 = call float @dx.op.unary.f32(i32 6, float %5983)  ; FAbs(value)
  %5991 = fdiv fast float 1.000000e+00, %5990
  %5992 = fmul fast float %5989, %5991
  %5993 = call float @dx.op.binary.f32(i32 35, float %5992, float 0.000000e+00)  ; FMax(a,b)
  %5994 = fsub fast float -0.000000e+00, %5935
  %5995 = fsub fast float -0.000000e+00, %5936
  %5996 = fsub fast float -0.000000e+00, %5937
  %5997 = call float @dx.op.dot3.f32(i32 55, float %5803, float %5804, float %5805, float %5994, float %5995, float %5996)  ; Dot3(ax,ay,az,bx,by,bz)
  %5998 = fsub fast float -0.000000e+00, %5997
  %5999 = call float @dx.op.dot3.f32(i32 55, float %5919, float %5920, float %5921, float %5994, float %5995, float %5996)  ; Dot3(ax,ay,az,bx,by,bz)
  %6000 = fadd fast float %5999, %5894
  %6001 = fadd fast float %5893, %5999
  %6002 = fsub fast float -0.000000e+00, %6001
  %6003 = fcmp ogt float %5997, -0.000000e+00
  %6004 = select i1 %6003, float %6002, float %6000
  %6005 = call float @dx.op.unary.f32(i32 6, float %5998)  ; FAbs(value)
  %6006 = fdiv fast float 1.000000e+00, %6005
  %6007 = fmul fast float %6004, %6006
  %6008 = call float @dx.op.binary.f32(i32 35, float %6007, float 0.000000e+00)  ; FMax(a,b)
  %6009 = call float @dx.op.binary.f32(i32 36, float %5993, float %6008)  ; FMin(a,b)
  %6010 = call float @dx.op.binary.f32(i32 36, float %5978, float %6009)  ; FMin(a,b)
  %6011 = fmul fast float %6010, %5803
  %6012 = fmul fast float %6010, %5804
  %6013 = fmul fast float %6010, %5805
  %6014 = fadd fast float %6011, %152
  %6015 = fadd fast float %6012, %153
  %6016 = fadd fast float %6013, %154
  %6017 = fsub fast float %6014, %5863
  %6018 = fsub fast float %6015, %5864
  %6019 = fsub fast float %6016, %5865
  br label %6027

; <label>:6020                                    ; preds = %5962
  %6021 = fmul fast float %5803, 8.096000e+03
  %6022 = fmul fast float %5804, 8.096000e+03
  %6023 = fmul fast float %5805, 8.096000e+03
  %6024 = fadd fast float %6021, %152
  %6025 = fadd fast float %6022, %153
  %6026 = fadd fast float %6023, %154
  br label %6027

; <label>:6027                                    ; preds = %6020, %5963
  %6028 = phi float [ %5803, %6020 ], [ %6017, %5963 ]
  %6029 = phi float [ %5804, %6020 ], [ %6018, %5963 ]
  %6030 = phi float [ %5805, %6020 ], [ %6019, %5963 ]
  %6031 = phi float [ %6024, %6020 ], [ %6014, %5963 ]
  %6032 = phi float [ %6025, %6020 ], [ %6015, %5963 ]
  %6033 = phi float [ %6026, %6020 ], [ %6016, %5963 ]
  %6034 = fcmp fast olt float %5882, 1.000000e+00
  br i1 %6034, label %6035, label %6066, !dx.controlflow.hints !85

; <label>:6035                                    ; preds = %6027
  %6036 = fmul fast float %6030, %5880
  %6037 = fmul fast float %6029, %5881
  %6038 = fsub fast float %6036, %6037
  %6039 = fmul fast float %6028, %5881
  %6040 = fmul fast float %6030, %5879
  %6041 = fsub fast float %6039, %6040
  %6042 = fmul fast float %6029, %5879
  %6043 = fmul fast float %6028, %5880
  %6044 = fsub fast float %6042, %6043
  %6045 = fmul fast float %6038, 2.000000e+00
  %6046 = fmul fast float %6041, 2.000000e+00
  %6047 = fmul fast float %6044, 2.000000e+00
  %6048 = fmul fast float %6045, %5882
  %6049 = fmul fast float %6046, %5882
  %6050 = fmul fast float %6047, %5882
  %6051 = fmul fast float %6047, %5880
  %6052 = fmul fast float %6046, %5881
  %6053 = fmul fast float %6045, %5881
  %6054 = fmul fast float %6047, %5879
  %6055 = fmul fast float %6046, %5879
  %6056 = fmul fast float %6045, %5880
  %6057 = fadd fast float %6051, %6028
  %6058 = fadd fast float %6057, %6048
  %6059 = fsub fast float %6058, %6052
  %6060 = fsub fast float %6029, %6054
  %6061 = fadd fast float %6060, %6049
  %6062 = fadd fast float %6061, %6053
  %6063 = fadd fast float %6050, %6030
  %6064 = fsub fast float %6063, %6056
  %6065 = fadd fast float %6064, %6055
  br label %6066

; <label>:6066                                    ; preds = %6035, %6027
  %6067 = phi float [ %6059, %6035 ], [ %6028, %6027 ]
  %6068 = phi float [ %6062, %6035 ], [ %6029, %6027 ]
  %6069 = phi float [ %6065, %6035 ], [ %6030, %6027 ]
  br i1 %5908, label %6101, label %6070

; <label>:6070                                    ; preds = %6066
  %6071 = fmul fast float %5414, 0x400187C840000000
  %6072 = fadd fast float %6071, 0xC00EFC2120000000
  %6073 = fmul fast float %6072, %5414
  %6074 = fadd fast float %6073, 0x3FE5D16340000000
  %6075 = fmul fast float %6074, %5414
  %6076 = fadd fast float %6075, 1.000000e+00
  %6077 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6078 = fsub fast float %6031, %152
  %6079 = fsub fast float %6032, %153
  %6080 = fsub fast float %6033, %154
  %6081 = fsub fast float %6031, %5863
  %6082 = fsub fast float %6032, %5864
  %6083 = fsub fast float %6033, %5865
  %6084 = call float @dx.op.dot3.f32(i32 55, float %6078, float %6079, float %6080, float %6078, float %6079, float %6080)  ; Dot3(ax,ay,az,bx,by,bz)
  %6085 = call float @dx.op.dot3.f32(i32 55, float %6081, float %6082, float %6083, float %6081, float %6082, float %6083)  ; Dot3(ax,ay,az,bx,by,bz)
  %6086 = fadd fast float %6085, 0x3EE4F8B580000000
  %6087 = fdiv fast float %6084, %6086
  %6088 = bitcast float %6087 to i32
  %6089 = ashr i32 %6088, 1
  %6090 = add nsw i32 %6089, 532487669
  %6091 = bitcast i32 %6090 to float
  %6092 = fmul fast float %6091, %6077
  %6093 = call float @dx.op.unary.f32(i32 7, float %6092)  ; Saturate(value)
  %6094 = fmul fast float %6093, 0x4009981AE0000000
  %6095 = fsub fast float 0x40111BBD80000000, %6094
  %6096 = fmul fast float %6095, %6093
  %6097 = fadd fast float %6096, 0xC0009F6020000000
  %6098 = fmul fast float %6097, %6093
  %6099 = fadd fast float %6098, 1.000000e+00
  %6100 = call float @dx.op.unary.f32(i32 7, float %6099)  ; Saturate(value)
  br label %6104

; <label>:6101                                    ; preds = %6066
  %6102 = icmp ne i32 %5909, -1
  %6103 = zext i1 %6102 to i32
  br label %6104

; <label>:6104                                    ; preds = %6101, %6070
  %6105 = phi float [ %5414, %6101 ], [ %6100, %6070 ]
  %6106 = phi i32 [ %6103, %6101 ], [ 0, %6070 ]
  %6107 = fmul float %6105, 5.000000e+00
  %6108 = fsub float 5.000000e+00, %6107
  %6109 = icmp ne i32 %6106, 0
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 3
  %6112 = fadd fast float %6111, %6108
  %6113 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6112)  ; FMax(a,b)
  %6114 = call float @dx.op.unary.f32(i32 6, float %6067)  ; FAbs(value)
  %6115 = call float @dx.op.unary.f32(i32 6, float %6068)  ; FAbs(value)
  %6116 = fadd fast float %6115, %6114
  %6117 = call float @dx.op.unary.f32(i32 6, float %6069)  ; FAbs(value)
  %6118 = fadd fast float %6116, %6117
  %6119 = fcmp fast oeq float %6118, 0.000000e+00
  %6120 = fdiv fast float 1.000000e+00, %6118
  %6121 = select i1 %6119, float 1.000000e+00, float %6120
  %6122 = fmul fast float %6121, %6067
  %6123 = fmul fast float %6121, %6068
  %6124 = call float @dx.op.unary.f32(i32 6, float %6123)  ; FAbs(value)
  %6125 = call float @dx.op.unary.f32(i32 6, float %6122)  ; FAbs(value)
  %6126 = fsub fast float 1.000000e+00, %6124
  %6127 = fsub fast float 1.000000e+00, %6125
  %6128 = fcmp fast oge float %6122, 0.000000e+00
  %6129 = fcmp fast oge float %6123, 0.000000e+00
  %6130 = select i1 %6128, float 1.000000e+00, float -1.000000e+00
  %6131 = select i1 %6129, float 1.000000e+00, float -1.000000e+00
  %6132 = fcmp fast ole float %6069, 0.000000e+00
  %6133 = fmul fast float %6130, %6126
  %6134 = fmul fast float %6131, %6127
  %6135 = select i1 %6132, float %6133, float %6122
  %6136 = select i1 %6132, float %6134, float %6123
  %6137 = fmul fast float %6135, 5.000000e-01
  %6138 = fmul fast float %6136, 5.000000e-01
  %6139 = fadd fast float %6137, 5.000000e-01
  %6140 = fadd fast float %6138, 5.000000e-01
  %6141 = uitofp i32 %5906 to float
  %6142 = call float @dx.op.binary.f32(i32 36, float %6113, float 3.000000e+00)  ; FMin(a,b)
  %6143 = fadd fast float %6142, 2.000000e+00
  %6144 = call float @dx.op.unary.f32(i32 21, float %6143)  ; Exp(value)
  %6145 = extractvalue %dx.types.CBufRet.f32 %6110, 1
  %6146 = fmul fast float %6145, %6144
  %6147 = fmul fast float %6146, 2.000000e+00
  %6148 = fsub fast float 1.000000e+00, %6147
  %6149 = fmul fast float %6139, %6148
  %6150 = fmul fast float %6140, %6148
  %6151 = fadd fast float %6149, %6146
  %6152 = fadd fast float %6150, %6146
  %6153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %6151, float %6152, float %6141, float undef, i32 0, i32 0, i32 undef, float %6113)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6154 = extractvalue %dx.types.ResRet.f32 %6153, 0
  %6155 = extractvalue %dx.types.ResRet.f32 %6153, 1
  %6156 = extractvalue %dx.types.ResRet.f32 %6153, 2
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 3
  %6159 = fmul fast float %6158, %5876
  %6160 = call float @dx.op.binary.f32(i32 36, float %5444, float %6159)  ; FMin(a,b)
  %6161 = select i1 %6109, float %6160, float %6159
  %6162 = fmul fast float %6154, %5954
  %6163 = fmul fast float %6162, %6161
  %6164 = fmul fast float %6155, %5954
  %6165 = fmul fast float %6164, %6161
  %6166 = fmul fast float %6156, %5954
  %6167 = fmul fast float %6166, %6161
  %6168 = fadd fast float %6163, %5851
  %6169 = fadd fast float %6165, %5852
  %6170 = fadd fast float %6167, %5853
  %6171 = fsub fast float %5854, %5954
  br label %5956

; <label>:6172                                    ; preds = %5956
  br label %6173

; <label>:6173                                    ; preds = %6172, %5820
  %6174 = phi float [ %5821, %5820 ], [ %5957, %6172 ]
  %6175 = phi float [ %5822, %5820 ], [ %5958, %6172 ]
  %6176 = phi float [ %5823, %5820 ], [ %5959, %6172 ]
  %6177 = phi float [ %5824, %5820 ], [ %5960, %6172 ]
  %6178 = add i32 %5825, 1
  %6179 = icmp ugt i32 %6178, %5817
  br i1 %6179, label %6180, label %5820, !llvm.loop !86

; <label>:6180                                    ; preds = %6173
  br label %6181

; <label>:6181                                    ; preds = %6180, %5802
  %6182 = phi float [ 0.000000e+00, %5802 ], [ %6174, %6180 ]
  %6183 = phi float [ 0.000000e+00, %5802 ], [ %6175, %6180 ]
  %6184 = phi float [ 0.000000e+00, %5802 ], [ %6176, %6180 ]
  %6185 = call float @dx.op.dot3.f32(i32 55, float %6182, float %6183, float %6184, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6186 = select i1 %213, float 0.000000e+00, float %6182
  %6187 = select i1 %213, float %6185, float %6183
  %6188 = select i1 %213, float 0.000000e+00, float %6184
  %6189 = fcmp fast olt float %5755, 0.000000e+00
  %6190 = call float @dx.op.unary.f32(i32 6, float %5755)  ; FAbs(value)
  %6191 = fmul fast float %6190, %5684
  %6192 = fmul fast float %6190, %5685
  %6193 = fmul fast float %6190, %5686
  %6194 = select i1 %6189, float %5684, float %6191
  %6195 = select i1 %6189, float %5685, float %6192
  %6196 = select i1 %6189, float %5686, float %6193
  %6197 = fsub fast float 1.000000e+00, %6190
  %6198 = call float @dx.op.unary.f32(i32 7, float %6197)  ; Saturate(value)
  %6199 = fmul fast float %6198, %6186
  %6200 = fmul fast float %6198, %6187
  %6201 = fmul fast float %6198, %6188
  %6202 = fadd fast float %6194, %6199
  %6203 = fadd fast float %6195, %6200
  %6204 = fadd fast float %6196, %6201
  br label %6205

; <label>:6205                                    ; preds = %6181, %5738
  %6206 = phi float [ %5684, %5738 ], [ %6202, %6181 ]
  %6207 = phi float [ %5685, %5738 ], [ %6203, %6181 ]
  %6208 = phi float [ %5686, %5738 ], [ %6204, %6181 ]
  %6209 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6210 = fcmp fast ogt float %6209, 0x3E7FF19E20000000
  %6211 = fdiv fast float 1.000000e+00, %6209
  %6212 = select i1 %6210, float %6211, float 0.000000e+00
  %6213 = fmul fast float %6212, %5408
  %6214 = fmul fast float %6212, %5409
  %6215 = fmul fast float %6212, %5410
  %6216 = fadd fast float %6213, -1.000000e+00
  %6217 = fadd fast float %6214, -1.000000e+00
  %6218 = fadd fast float %6215, -1.000000e+00
  %6219 = fmul fast float %6216, 5.000000e-01
  %6220 = fmul fast float %6217, 5.000000e-01
  %6221 = fmul fast float %6218, 5.000000e-01
  %6222 = fadd fast float %6219, 1.000000e+00
  %6223 = fadd fast float %6220, 1.000000e+00
  %6224 = fadd fast float %6221, 1.000000e+00
  %6225 = call float @dx.op.binary.f32(i32 35, float %5418, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6226 = fdiv fast float %4414, %6225
  %6227 = fcmp fast olt float %5114, 1.270000e+02
  %6228 = fcmp fast olt float %5115, 1.270000e+02
  %6229 = fcmp fast olt float %5116, 1.270000e+02
  %6230 = fmul fast float %5114, 0xBFF7154760000000
  %6231 = fmul fast float %6230, %6226
  %6232 = fmul fast float %5115, 0xBFF7154760000000
  %6233 = fmul fast float %6232, %6226
  %6234 = fmul fast float %5116, 0xBFF7154760000000
  %6235 = fmul fast float %6234, %6226
  %6236 = call float @dx.op.unary.f32(i32 21, float %6231)  ; Exp(value)
  %6237 = call float @dx.op.unary.f32(i32 21, float %6233)  ; Exp(value)
  %6238 = call float @dx.op.unary.f32(i32 21, float %6235)  ; Exp(value)
  %6239 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6240 = call float @dx.op.unary.f32(i32 7, float %6237)  ; Saturate(value)
  %6241 = call float @dx.op.unary.f32(i32 7, float %6238)  ; Saturate(value)
  %6242 = select i1 %6227, float %6239, float 0.000000e+00
  %6243 = select i1 %6228, float %6240, float 0.000000e+00
  %6244 = select i1 %6229, float %6241, float 0.000000e+00
  %6245 = fmul fast float %6242, %5744
  %6246 = fmul fast float %6243, %5744
  %6247 = fmul fast float %6244, %5744
  %6248 = fadd fast float %6245, -1.000000e+00
  %6249 = fadd fast float %6246, -1.000000e+00
  %6250 = fadd fast float %6247, -1.000000e+00
  %6251 = fmul fast float %6248, %5061
  %6252 = fmul fast float %6249, %5061
  %6253 = fmul fast float %6250, %5061
  %6254 = fmul fast float %6206, %5739
  %6255 = fmul fast float %6207, %5740
  %6256 = fmul fast float %6208, %5741
  %6257 = fsub fast float 1.000000e+00, %5418
  %6258 = bitcast float %6257 to i32
  %6259 = sitofp i32 %6258 to float
  %6260 = fmul fast float %6259, 5.000000e+00
  %6261 = fadd fast float %6260, 0xC1EFBF8940000000
  %6262 = fptosi float %6261 to i32
  %6263 = bitcast i32 %6262 to float
  %6264 = fmul fast float %6263, %5065
  %6265 = fmul fast float %5676, %6264
  %6266 = fmul fast float %6265, %5744
  %6267 = fmul fast float %6266, %6222
  %6268 = fmul fast float %5677, %6264
  %6269 = fmul fast float %6268, %5744
  %6270 = fmul fast float %6269, %6223
  %6271 = fmul fast float %5678, %6264
  %6272 = fmul fast float %6271, %5744
  %6273 = fmul fast float %6272, %6224
  %6274 = fadd fast float %6254, %5048
  %6275 = fadd fast float %6274, %6267
  %6276 = fmul fast float %6275, %5061
  %6277 = fadd fast float %6255, %5049
  %6278 = fadd fast float %6277, %6270
  %6279 = fmul fast float %6278, %5061
  %6280 = fadd fast float %6256, %5050
  %6281 = fadd fast float %6280, %6273
  %6282 = fmul fast float %6281, %5061
  %6283 = fmul fast float %5406, 0x4012D0A400000000
  %6284 = fadd fast float %6253, 1.000000e+00
  %6285 = fadd fast float %6252, 1.000000e+00
  %6286 = fadd fast float %6251, 1.000000e+00
  %6287 = fmul fast float %5744, %5678
  %6288 = fmul fast float %5744, %5677
  %6289 = fmul fast float %5744, %5676
  %6290 = fmul fast float %5433, %5061
  %6291 = fsub fast float 1.000000e+00, %6290
  %6292 = call float @dx.op.unary.f32(i32 7, float %6291)  ; Saturate(value)
  %6293 = fsub fast float 1.000000e+00, %6292
  %6294 = fadd fast float %6283, 0x3FDB6377A0000000
  %6295 = fmul fast float %6293, %6294
  %6296 = call float @dx.op.dot3.f32(i32 55, float %5132, float %5133, float %5134, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6297 = fadd fast float %6295, %6296
  %6298 = call float @dx.op.unary.f32(i32 7, float %6297)  ; Saturate(value)
  %6299 = call float @dx.op.binary.f32(i32 35, float %6298, float 0x3F847AE140000000)  ; FMax(a,b)
  %6300 = fmul fast float %6299, %6299
  %6301 = fmul fast float %6300, %6300
  %6302 = fmul fast float %6301, 0xC00A935000000000
  %6303 = call float @dx.op.unary.f32(i32 21, float %6302)  ; Exp(value)
  %6304 = fsub fast float 1.000000e+00, %6303
  %6305 = fmul fast float %6286, %5680
  %6306 = fmul fast float %6305, %6304
  %6307 = fmul fast float %6285, %5681
  %6308 = fmul fast float %6307, %6304
  %6309 = fmul fast float %6284, %5682
  %6310 = fmul fast float %6309, %6304
  %6311 = fadd fast float %6306, %6289
  %6312 = fmul fast float %6311, %5061
  %6313 = fadd fast float %6308, %6288
  %6314 = fmul fast float %6313, %5061
  %6315 = fadd fast float %6310, %6287
  %6316 = fmul fast float %6315, %5061
  %6317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.f32 %6317, 3
  %6319 = fcmp fast oeq float %6318, 0.000000e+00
  br i1 %6319, label %7923, label %6320

; <label>:6320                                    ; preds = %6205
  %6321 = extractvalue %dx.types.CBufRet.f32 %6317, 0
  %6322 = extractvalue %dx.types.CBufRet.f32 %6317, 1
  %6323 = extractvalue %dx.types.CBufRet.f32 %6317, 2
  %6324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6325 = extractvalue %dx.types.CBufRet.f32 %6324, 0
  %6326 = extractvalue %dx.types.CBufRet.f32 %6324, 1
  %6327 = extractvalue %dx.types.CBufRet.f32 %6324, 2
  %6328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6329 = extractvalue %dx.types.CBufRet.f32 %6328, 0
  %6330 = extractvalue %dx.types.CBufRet.f32 %6328, 1
  %6331 = call float @dx.op.dot3.f32(i32 55, float %6325, float %6326, float %6327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6332 = select i1 %213, float %6329, float %6325
  %6333 = select i1 %213, float %6331, float %6326
  %6334 = select i1 %213, float %6330, float %6327
  %6335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6336 = extractvalue %dx.types.CBufRet.f32 %6335, 2
  %6337 = fmul fast float %6336, %104
  %6338 = fmul fast float %6336, %105
  %6339 = fmul fast float %6336, %106
  %6340 = fadd fast float %6337, %152
  %6341 = fadd fast float %6338, %153
  %6342 = fadd fast float %6339, %154
  %6343 = fcmp fast olt float %6318, 0.000000e+00
  br i1 %6343, label %7439, label %6344

; <label>:6344                                    ; preds = %6320
  %6345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6346 = extractvalue %dx.types.CBufRet.f32 %6345, 0
  %6347 = extractvalue %dx.types.CBufRet.f32 %6345, 1
  %6348 = extractvalue %dx.types.CBufRet.f32 %6345, 2
  %6349 = extractvalue %dx.types.CBufRet.f32 %6345, 3
  %6350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.f32 %6350, 0
  %6352 = extractvalue %dx.types.CBufRet.f32 %6350, 1
  %6353 = extractvalue %dx.types.CBufRet.f32 %6350, 2
  %6354 = extractvalue %dx.types.CBufRet.f32 %6350, 3
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.CBufRet.f32 %6355, 1
  %6358 = extractvalue %dx.types.CBufRet.f32 %6355, 2
  %6359 = extractvalue %dx.types.CBufRet.f32 %6355, 3
  %6360 = fmul fast float %6346, %6340
  %6361 = call float @dx.op.tertiary.f32(i32 46, float %6341, float %6347, float %6360)  ; FMad(a,b,c)
  %6362 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %6348, float %6361)  ; FMad(a,b,c)
  %6363 = fadd fast float %6362, %6349
  %6364 = fmul fast float %6351, %6340
  %6365 = call float @dx.op.tertiary.f32(i32 46, float %6341, float %6352, float %6364)  ; FMad(a,b,c)
  %6366 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %6353, float %6365)  ; FMad(a,b,c)
  %6367 = fadd fast float %6366, %6354
  %6368 = fmul fast float %6356, %6340
  %6369 = call float @dx.op.tertiary.f32(i32 46, float %6341, float %6357, float %6368)  ; FMad(a,b,c)
  %6370 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %6358, float %6369)  ; FMad(a,b,c)
  %6371 = fadd fast float %6370, %6359
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6374 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6375 = extractvalue %dx.types.CBufRet.f32 %6372, 3
  %6376 = fmul fast float %6375, %6363
  %6377 = fmul fast float %6375, %6367
  %6378 = fadd fast float %6376, %6373
  %6379 = fadd fast float %6377, %6374
  %6380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6381 = extractvalue %dx.types.CBufRet.f32 %6380, 0
  %6382 = extractvalue %dx.types.CBufRet.f32 %6380, 1
  %6383 = extractvalue %dx.types.CBufRet.f32 %6380, 3
  %6384 = fmul fast float %6383, %6363
  %6385 = fmul fast float %6383, %6367
  %6386 = fadd fast float %6384, %6381
  %6387 = fadd fast float %6385, %6382
  %6388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6389 = extractvalue %dx.types.CBufRet.f32 %6388, 1
  %6390 = fsub fast float %6389, %6371
  %6391 = extractvalue %dx.types.CBufRet.f32 %6388, 2
  %6392 = fmul fast float %6390, %6391
  %6393 = fsub fast float 1.000000e+00, %6392
  %6394 = call float @dx.op.unary.f32(i32 7, float %6393)  ; Saturate(value)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6380, 2
  %6396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6397 = extractvalue %dx.types.CBufRet.f32 %6396, 2
  %6398 = fadd fast float %6397, %6395
  %6399 = fcmp fast ogt float %6398, 0.000000e+00
  br i1 %6399, label %6400, label %6424

; <label>:6400                                    ; preds = %6344
  %6401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6401, 0
  %6403 = extractvalue %dx.types.CBufRet.f32 %6401, 1
  %6404 = fsub fast float %6386, %6402
  %6405 = fsub fast float %6387, %6403
  %6406 = fcmp fast olt float %6404, 0.000000e+00
  %6407 = fcmp fast olt float %6405, 0.000000e+00
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 0
  %6410 = extractvalue %dx.types.CBufRet.f32 %6408, 1
  %6411 = extractvalue %dx.types.CBufRet.f32 %6408, 2
  %6412 = extractvalue %dx.types.CBufRet.f32 %6408, 3
  %6413 = select i1 %6406, float %6409, float %6411
  %6414 = select i1 %6407, float %6410, float %6412
  %6415 = fmul fast float %6413, %6404
  %6416 = fmul fast float %6414, %6405
  %6417 = call float @dx.op.unary.f32(i32 6, float %6415)  ; FAbs(value)
  %6418 = call float @dx.op.unary.f32(i32 6, float %6416)  ; FAbs(value)
  %6419 = extractvalue %dx.types.CBufRet.f32 %6335, 0
  %6420 = call float @dx.op.binary.f32(i32 35, float %6417, float %6418)  ; FMax(a,b)
  %6421 = fsub fast float %6419, %6420
  %6422 = call float @dx.op.unary.f32(i32 7, float %6421)  ; Saturate(value)
  %6423 = fmul fast float %6422, %6394
  br label %6424

; <label>:6424                                    ; preds = %6400, %6344
  %6425 = phi float [ %6423, %6400 ], [ 0.000000e+00, %6344 ]
  %6426 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6427 = extractvalue %dx.types.CBufRet.f32 %6396, 1
  %6428 = fadd fast float %6427, %6426
  %6429 = fcmp fast ogt float %6428, 0.000000e+00
  %6430 = extractvalue %dx.types.CBufRet.f32 %6335, 0
  br i1 %6429, label %6431, label %6454

; <label>:6431                                    ; preds = %6424
  %6432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.f32 %6432, 0
  %6434 = extractvalue %dx.types.CBufRet.f32 %6432, 1
  %6435 = fsub fast float %6378, %6433
  %6436 = fsub fast float %6379, %6434
  %6437 = fcmp fast olt float %6435, 0.000000e+00
  %6438 = fcmp fast olt float %6436, 0.000000e+00
  %6439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.f32 %6439, 0
  %6441 = extractvalue %dx.types.CBufRet.f32 %6439, 1
  %6442 = extractvalue %dx.types.CBufRet.f32 %6439, 2
  %6443 = extractvalue %dx.types.CBufRet.f32 %6439, 3
  %6444 = select i1 %6437, float %6440, float %6442
  %6445 = select i1 %6438, float %6441, float %6443
  %6446 = fmul fast float %6444, %6435
  %6447 = fmul fast float %6445, %6436
  %6448 = call float @dx.op.unary.f32(i32 6, float %6446)  ; FAbs(value)
  %6449 = call float @dx.op.unary.f32(i32 6, float %6447)  ; FAbs(value)
  %6450 = call float @dx.op.binary.f32(i32 35, float %6448, float %6449)  ; FMax(a,b)
  %6451 = fsub fast float %6430, %6450
  %6452 = call float @dx.op.unary.f32(i32 7, float %6451)  ; Saturate(value)
  %6453 = fmul fast float %6452, %6394
  br label %6454

; <label>:6454                                    ; preds = %6431, %6424
  %6455 = phi float [ %6453, %6431 ], [ 0.000000e+00, %6424 ]
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 1
  %6458 = call float @dx.op.unary.f32(i32 7, float %6457)  ; Saturate(value)
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6461 = extractvalue %dx.types.CBufRet.f32 %6459, 1
  %6462 = fsub fast float %6363, %6460
  %6463 = fsub fast float %6367, %6461
  %6464 = fcmp fast olt float %6462, 0.000000e+00
  %6465 = fcmp fast olt float %6463, 0.000000e+00
  %6466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.CBufRet.f32 %6466, 1
  %6469 = extractvalue %dx.types.CBufRet.f32 %6466, 2
  %6470 = extractvalue %dx.types.CBufRet.f32 %6466, 3
  %6471 = select i1 %6464, float %6467, float %6469
  %6472 = select i1 %6465, float %6468, float %6470
  %6473 = fmul fast float %6471, %6462
  %6474 = fmul fast float %6472, %6463
  %6475 = call float @dx.op.unary.f32(i32 6, float %6473)  ; FAbs(value)
  %6476 = call float @dx.op.unary.f32(i32 6, float %6474)  ; FAbs(value)
  %6477 = call float @dx.op.binary.f32(i32 35, float %6475, float %6476)  ; FMax(a,b)
  %6478 = fsub fast float %6430, %6477
  %6479 = call float @dx.op.unary.f32(i32 7, float %6478)  ; Saturate(value)
  %6480 = call float @dx.op.binary.f32(i32 36, float %6479, float %6458)  ; FMin(a,b)
  %6481 = fmul fast float %6480, %6394
  %6482 = fsub fast float %6455, %6481
  %6483 = fsub fast float %6425, %6455
  %6484 = fsub fast float %6483, %6481
  %6485 = call float @dx.op.binary.f32(i32 35, float %6455, float %6425)  ; FMax(a,b)
  %6486 = call float @dx.op.binary.f32(i32 35, float %6481, float %6485)  ; FMax(a,b)
  %6487 = fcmp fast olt float %6486, 1.000000e+00
  br i1 %6487, label %6488, label %6886, !dx.controlflow.hints !88

; <label>:6488                                    ; preds = %6454
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 0
  %6491 = fcmp fast une float %6490, 0.000000e+00
  br i1 %6491, label %6492, label %6886, !dx.controlflow.hints !89

; <label>:6492                                    ; preds = %6488
  %6493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6494 = extractvalue %dx.types.CBufRet.f32 %6493, 0
  %6495 = extractvalue %dx.types.CBufRet.f32 %6493, 1
  %6496 = extractvalue %dx.types.CBufRet.f32 %6493, 2
  %6497 = extractvalue %dx.types.CBufRet.f32 %6493, 3
  %6498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6499 = extractvalue %dx.types.CBufRet.f32 %6498, 0
  %6500 = extractvalue %dx.types.CBufRet.f32 %6498, 1
  %6501 = extractvalue %dx.types.CBufRet.f32 %6498, 2
  %6502 = extractvalue %dx.types.CBufRet.f32 %6498, 3
  %6503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6504 = extractvalue %dx.types.CBufRet.f32 %6503, 0
  %6505 = extractvalue %dx.types.CBufRet.f32 %6503, 1
  %6506 = extractvalue %dx.types.CBufRet.f32 %6503, 2
  %6507 = extractvalue %dx.types.CBufRet.f32 %6503, 3
  %6508 = fmul fast float %6494, %6340
  %6509 = call float @dx.op.tertiary.f32(i32 46, float %6341, float %6495, float %6508)  ; FMad(a,b,c)
  %6510 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %6496, float %6509)  ; FMad(a,b,c)
  %6511 = fadd fast float %6510, %6497
  %6512 = fmul fast float %6499, %6340
  %6513 = call float @dx.op.tertiary.f32(i32 46, float %6341, float %6500, float %6512)  ; FMad(a,b,c)
  %6514 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %6501, float %6513)  ; FMad(a,b,c)
  %6515 = fadd fast float %6514, %6502
  %6516 = fmul fast float %6504, %6340
  %6517 = call float @dx.op.tertiary.f32(i32 46, float %6341, float %6505, float %6516)  ; FMad(a,b,c)
  %6518 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %6506, float %6517)  ; FMad(a,b,c)
  %6519 = fadd fast float %6518, %6507
  %6520 = fcmp fast oge float %6511, 1.000000e+00
  %6521 = fcmp fast oge float %6515, 1.000000e+00
  %6522 = or i1 %6520, %6521
  %6523 = fcmp fast olt float %6511, 0.000000e+00
  %6524 = fcmp fast olt float %6515, 0.000000e+00
  %6525 = or i1 %6523, %6524
  %6526 = or i1 %6522, %6525
  br i1 %6526, label %6886, label %6527, !dx.controlflow.hints !90

; <label>:6527                                    ; preds = %6492
  %6528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6529 = extractvalue %dx.types.CBufRet.f32 %6528, 0
  %6530 = extractvalue %dx.types.CBufRet.f32 %6528, 1
  %6531 = extractvalue %dx.types.CBufRet.f32 %6528, 2
  %6532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6533 = extractvalue %dx.types.CBufRet.i32 %6532, 2
  %6534 = uitofp i32 %6533 to float
  %6535 = extractvalue %dx.types.CBufRet.i32 %6532, 3
  %6536 = uitofp i32 %6535 to float
  %6537 = extractvalue %dx.types.CBufRet.f32 %6528, 3
  %6538 = fmul fast float %6537, 2.000000e+00
  %6539 = fsub fast float %6511, %6529
  %6540 = fsub fast float %6515, %6530
  %6541 = fmul fast float %6538, %6539
  %6542 = fmul fast float %6538, %6540
  %6543 = fdiv fast float 1.000000e+00, %6323
  %6544 = fmul fast float %6542, %6543
  %6545 = call float @dx.op.unary.f32(i32 6, float %6544)  ; FAbs(value)
  %6546 = fmul fast float %6531, %6342
  %6547 = fmul fast float %6546, %6538
  %6548 = call float @dx.op.unary.f32(i32 6, float %6547)  ; FAbs(value)
  %6549 = call float @dx.op.unary.f32(i32 6, float %6541)  ; FAbs(value)
  %6550 = call float @dx.op.binary.f32(i32 35, float %6548, float %6545)  ; FMax(a,b)
  %6551 = call float @dx.op.binary.f32(i32 35, float %6549, float %6550)  ; FMax(a,b)
  %6552 = fmul fast float %6551, 2.000000e+00
  %6553 = call float @dx.op.unary.f32(i32 23, float %6552)  ; Log(value)
  %6554 = call float @dx.op.binary.f32(i32 35, float %6553, float %6534)  ; FMax(a,b)
  %6555 = call float @dx.op.unary.f32(i32 22, float %6554)  ; Frc(value)
  %6556 = fadd fast float %6555, 0xBFEA666660000000
  %6557 = fmul fast float %6556, 8.000000e+00
  %6558 = call float @dx.op.unary.f32(i32 7, float %6557)  ; Saturate(value)
  %6559 = call float @dx.op.unary.f32(i32 27, float %6554)  ; Round_ni(value)
  %6560 = fadd fast float %6559, %6558
  %6561 = call float @dx.op.binary.f32(i32 36, float %6560, float %6536)  ; FMin(a,b)
  %6562 = call float @dx.op.unary.f32(i32 27, float %6561)  ; Round_ni(value)
  %6563 = fsub fast float -0.000000e+00, %6562
  %6564 = call float @dx.op.unary.f32(i32 21, float %6563)  ; Exp(value)
  %6565 = fmul fast float %6564, %6538
  %6566 = fmul fast float %6565, %6511
  %6567 = fmul fast float %6565, %6515
  %6568 = fmul fast float %6566, 2.500000e-01
  %6569 = fmul fast float %6567, 2.500000e-01
  %6570 = fadd fast float %6568, 5.000000e-01
  %6571 = fadd fast float %6569, 5.000000e-01
  %6572 = fsub fast float %6536, %6534
  %6573 = fptoui float %6572 to i32
  %6574 = add i32 %6573, 320
  %6575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %6574)  ; CBufferLoadLegacy(handle,regIndex)
  %6576 = extractvalue %dx.types.CBufRet.f32 %6575, 0
  %6577 = extractvalue %dx.types.CBufRet.f32 %6575, 1
  %6578 = fcmp fast une float %6561, %6536
  %6579 = fsub fast float %6511, %6576
  %6580 = fsub fast float %6515, %6577
  %6581 = call float @dx.op.unary.f32(i32 6, float %6579)  ; FAbs(value)
  %6582 = call float @dx.op.unary.f32(i32 6, float %6580)  ; FAbs(value)
  %6583 = fmul fast float %6581, %6565
  %6584 = fmul fast float %6582, %6565
  %6585 = fcmp fast olt float %6583, 1.000000e+00
  %6586 = fcmp fast olt float %6584, 1.000000e+00
  %6587 = and i1 %6585, %6586
  %6588 = or i1 %6578, %6587
  br i1 %6588, label %6589, label %6886, !dx.controlflow.hints !91

; <label>:6589                                    ; preds = %6527
  %6590 = fmul fast float %6567, 5.000000e-01
  %6591 = fmul fast float %6566, 5.000000e-01
  %6592 = fadd fast float %6590, 5.000000e-01
  %6593 = fadd fast float %6591, 5.000000e-01
  %6594 = sitofp i32 %6533 to float
  %6595 = fsub fast float %6561, %6594
  %6596 = call float @dx.op.unary.f32(i32 27, float %6595)  ; Round_ni(value)
  %6597 = call float @dx.op.unary.f32(i32 22, float %6561)  ; Frc(value)
  %6598 = call float @dx.op.unary.f32(i32 22, float %6593)  ; Frc(value)
  %6599 = call float @dx.op.unary.f32(i32 22, float %6592)  ; Frc(value)
  %6600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6598, float %6599, float %6596, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6601 = extractvalue %dx.types.ResRet.f32 %6600, 0
  %6602 = extractvalue %dx.types.ResRet.f32 %6600, 1
  %6603 = extractvalue %dx.types.ResRet.f32 %6600, 2
  %6604 = extractvalue %dx.types.ResRet.f32 %6600, 3
  %6605 = fcmp fast ogt float %6597, 0.000000e+00
  br i1 %6605, label %6606, label %6627, !dx.controlflow.hints !92

; <label>:6606                                    ; preds = %6589
  %6607 = fadd fast float %6596, 1.000000e+00
  %6608 = call float @dx.op.unary.f32(i32 22, float %6570)  ; Frc(value)
  %6609 = call float @dx.op.unary.f32(i32 22, float %6571)  ; Frc(value)
  %6610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6608, float %6609, float %6607, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6611 = extractvalue %dx.types.ResRet.f32 %6610, 0
  %6612 = extractvalue %dx.types.ResRet.f32 %6610, 1
  %6613 = extractvalue %dx.types.ResRet.f32 %6610, 2
  %6614 = extractvalue %dx.types.ResRet.f32 %6610, 3
  %6615 = fsub fast float %6611, %6601
  %6616 = fsub fast float %6612, %6602
  %6617 = fsub fast float %6613, %6603
  %6618 = fsub fast float %6614, %6604
  %6619 = fmul fast float %6615, %6597
  %6620 = fmul fast float %6616, %6597
  %6621 = fmul fast float %6617, %6597
  %6622 = fmul fast float %6618, %6597
  %6623 = fadd fast float %6619, %6601
  %6624 = fadd fast float %6620, %6602
  %6625 = fadd fast float %6621, %6603
  %6626 = fadd fast float %6622, %6604
  br label %6627

; <label>:6627                                    ; preds = %6606, %6589
  %6628 = phi float [ %6623, %6606 ], [ %6601, %6589 ]
  %6629 = phi float [ %6624, %6606 ], [ %6602, %6589 ]
  %6630 = phi float [ %6625, %6606 ], [ %6603, %6589 ]
  %6631 = phi float [ %6626, %6606 ], [ %6604, %6589 ]
  %6632 = fadd fast float %6628, -5.000000e-01
  %6633 = fadd fast float %6630, -5.000000e-01
  %6634 = fmul fast float %6632, 0xBFD5555560000000
  %6635 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6633, float %6634)  ; FMad(a,b,c)
  %6636 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6629, float 0.000000e+00)  ; FMad(a,b,c)
  %6637 = fadd fast float %6636, %6631
  %6638 = fmul fast float %6632, -7.500000e-01
  %6639 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6633, float %6638)  ; FMad(a,b,c)
  %6640 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6629, float 0.000000e+00)  ; FMad(a,b,c)
  %6641 = fadd fast float %6640, %6631
  %6642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6643 = extractvalue %dx.types.CBufRet.f32 %6642, 0
  %6644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6645 = extractvalue %dx.types.CBufRet.f32 %6644, 0
  %6646 = extractvalue %dx.types.CBufRet.f32 %6644, 1
  %6647 = extractvalue %dx.types.CBufRet.f32 %6644, 2
  %6648 = extractvalue %dx.types.CBufRet.f32 %6644, 3
  %6649 = fsub fast float %6645, %6635
  %6650 = fsub fast float %6646, %6637
  %6651 = fsub fast float %6647, %6639
  %6652 = fsub fast float %6648, %6641
  %6653 = fmul fast float %6649, %6643
  %6654 = fmul fast float %6650, %6643
  %6655 = fmul fast float %6651, %6643
  %6656 = fmul fast float %6652, %6643
  %6657 = fadd fast float %6653, %6635
  %6658 = fadd fast float %6654, %6637
  %6659 = fadd fast float %6655, %6639
  %6660 = fadd fast float %6656, %6641
  %6661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6662 = extractvalue %dx.types.ResRet.i32 %6661, 0
  %6663 = and i32 %6662, 536870911
  %6664 = uitofp i32 %6663 to float
  %6665 = fmul fast float %6664, %6511
  %6666 = fmul fast float %6664, %6515
  %6667 = fptoui float %6665 to i32
  %6668 = fptoui float %6666 to i32
  %6669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6670 = extractvalue %dx.types.ResRet.i32 %6669, 0
  %6671 = and i32 %6670, 31
  %6672 = lshr i32 %6667, %6671
  %6673 = lshr i32 %6668, %6671
  %6674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6675 = extractvalue %dx.types.ResRet.i32 %6674, 0
  %6676 = and i32 %6675, 31
  %6677 = shl i32 1, %6676
  %6678 = call i32 @dx.op.binary.i32(i32 40, i32 %6677, i32 4)  ; UMin(a,b)
  %6679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6680 = extractvalue %dx.types.ResRet.i32 %6679, 0
  %6681 = extractvalue %dx.types.ResRet.i32 %6679, 1
  %6682 = icmp eq i32 %6678, 0
  br i1 %6682, label %6724, label %6683

; <label>:6683                                    ; preds = %6627
  br label %6684

; <label>:6684                                    ; preds = %6712, %6683
  %6685 = phi i32 [ %6715, %6712 ], [ 0, %6683 ]
  %6686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6687 = extractvalue %dx.types.ResRet.i32 %6686, 0
  %6688 = lshr i32 %6687, 16
  %6689 = and i32 %6688, 31
  %6690 = shl i32 %6673, %6689
  %6691 = add i32 %6690, %6672
  %6692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6693 = extractvalue %dx.types.ResRet.i32 %6692, 0
  %6694 = and i32 %6693, 31
  %6695 = shl i32 %6691, %6694
  %6696 = add i32 %6695, %6685
  %6697 = shl i32 %6696, 2
  %6698 = add i32 %6697, 32
  %6699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6698, i32 undef)  ; BufferLoad(srv,index,wot)
  %6700 = extractvalue %dx.types.ResRet.i32 %6699, 0
  %6701 = icmp slt i32 %6700, 0
  %6702 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6685
  %6703 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6685
  %6704 = bitcast float* %6702 to i32*
  %6705 = bitcast float* %6703 to i32*
  br i1 %6701, label %6706, label %6712

; <label>:6706                                    ; preds = %6684
  %6707 = and i32 %6700, 1073741823
  %6708 = add nuw nsw i32 %6707, 20
  %6709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6708, i32 undef)  ; BufferLoad(srv,index,wot)
  %6710 = extractvalue %dx.types.ResRet.i32 %6709, 0
  %6711 = extractvalue %dx.types.ResRet.i32 %6709, 1
  br label %6712

; <label>:6712                                    ; preds = %6706, %6684
  %6713 = phi i32 [ %6710, %6706 ], [ %6680, %6684 ]
  %6714 = phi i32 [ %6711, %6706 ], [ %6681, %6684 ]
  store i32 %6713, i32* %6704, align 4
  store i32 %6714, i32* %6705, align 4
  %6715 = add nuw i32 %6685, 1
  %6716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6717 = extractvalue %dx.types.CBufRet.i32 %6716, 2
  %6718 = icmp eq i32 %6717, 0
  %6719 = icmp ugt i32 %6700, -1073741825
  %6720 = and i1 %6719, %6718
  %6721 = icmp ult i32 %6715, %6678
  %6722 = and i1 %6720, %6721
  br i1 %6722, label %6684, label %6723

; <label>:6723                                    ; preds = %6712
  br label %6724

; <label>:6724                                    ; preds = %6723, %6627
  %6725 = phi i32 [ 0, %6627 ], [ %6715, %6723 ]
  %6726 = extractvalue %dx.types.CBufRet.f32 %6489, 2
  %6727 = fptoui float %6726 to i32
  %6728 = icmp eq i32 %6727, 0
  br i1 %6728, label %6780, label %6729

; <label>:6729                                    ; preds = %6724
  br label %6730

; <label>:6730                                    ; preds = %6775, %6729
  %6731 = phi i32 [ %6776, %6775 ], [ %6725, %6729 ]
  %6732 = phi i32 [ %6777, %6775 ], [ 0, %6729 ]
  %6733 = lshr i32 %6732, 2
  %6734 = and i32 %6732, 3
  %6735 = add nuw nsw i32 %6733, 83
  %6736 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %6735)  ; CBufferLoadLegacy(handle,regIndex)
  %6737 = extractvalue %dx.types.CBufRet.i32 %6736, 0
  %6738 = extractvalue %dx.types.CBufRet.i32 %6736, 1
  %6739 = extractvalue %dx.types.CBufRet.i32 %6736, 2
  %6740 = extractvalue %dx.types.CBufRet.i32 %6736, 3
  %6741 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %6737, i32* %6741, align 4
  %6742 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %6738, i32* %6742, align 4
  %6743 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %6739, i32* %6743, align 4
  %6744 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %6740, i32* %6744, align 4
  %6745 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %6734
  %6746 = load i32, i32* %6745, align 4, !tbaa !93, !noalias !97
  %6747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6748 = extractvalue %dx.types.ResRet.i32 %6747, 0
  %6749 = lshr i32 %6748, 16
  %6750 = and i32 %6749, 31
  %6751 = shl i32 %6673, %6750
  %6752 = add i32 %6751, %6672
  %6753 = shl i32 %6752, 2
  %6754 = add i32 %6753, %6746
  %6755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6754, i32 undef)  ; BufferLoad(srv,index,wot)
  %6756 = extractvalue %dx.types.ResRet.i32 %6755, 0
  %6757 = icmp eq i32 %6756, 0
  br i1 %6757, label %6775, label %6758

; <label>:6758                                    ; preds = %6730
  %6759 = icmp slt i32 %6756, 0
  %6760 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6731
  %6761 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6731
  %6762 = bitcast float* %6760 to i32*
  %6763 = bitcast float* %6761 to i32*
  br i1 %6759, label %6764, label %6771

; <label>:6764                                    ; preds = %6758
  %6765 = and i32 %6756, 1073741823
  %6766 = add i32 %6746, 20
  %6767 = add i32 %6766, %6765
  %6768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6767, i32 undef)  ; BufferLoad(srv,index,wot)
  %6769 = extractvalue %dx.types.ResRet.i32 %6768, 0
  %6770 = extractvalue %dx.types.ResRet.i32 %6768, 1
  br label %6771

; <label>:6771                                    ; preds = %6764, %6758
  %6772 = phi i32 [ %6769, %6764 ], [ %6680, %6758 ]
  %6773 = phi i32 [ %6770, %6764 ], [ %6681, %6758 ]
  store i32 %6772, i32* %6762, align 4
  store i32 %6773, i32* %6763, align 4
  %6774 = add i32 %6731, 1
  br label %6775

; <label>:6775                                    ; preds = %6771, %6730
  %6776 = phi i32 [ %6731, %6730 ], [ %6774, %6771 ]
  %6777 = add nuw i32 %6732, 1
  %6778 = icmp eq i32 %6777, %6727
  br i1 %6778, label %6779, label %6730

; <label>:6779                                    ; preds = %6775
  br label %6780

; <label>:6780                                    ; preds = %6779, %6724
  %6781 = phi i32 [ %6725, %6724 ], [ %6776, %6779 ]
  %6782 = icmp eq i32 %6781, 1
  %6783 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 0
  %6784 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  br i1 %6782, label %6785, label %6788

; <label>:6785                                    ; preds = %6780
  %6786 = load float, float* %6783, align 4
  %6787 = load float, float* %6784, align 4
  br label %6815

; <label>:6788                                    ; preds = %6780
  %6789 = load float, float* %6783, align 4
  %6790 = load float, float* %6784, align 4
  %6791 = fdiv fast float 1.000000e+00, %6790
  %6792 = fsub fast float %6789, %6791
  %6793 = icmp ugt i32 %6781, 1
  br i1 %6793, label %6794, label %6810

; <label>:6794                                    ; preds = %6788
  br label %6795

; <label>:6795                                    ; preds = %6795, %6794
  %6796 = phi float [ %6805, %6795 ], [ %6792, %6794 ]
  %6797 = phi float [ %6806, %6795 ], [ %6789, %6794 ]
  %6798 = phi i32 [ %6807, %6795 ], [ 1, %6794 ]
  %6799 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6798
  %6800 = load float, float* %6799, align 4
  %6801 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6798
  %6802 = load float, float* %6801, align 4
  %6803 = fdiv fast float 1.000000e+00, %6802
  %6804 = fsub fast float %6800, %6803
  %6805 = call float @dx.op.binary.f32(i32 36, float %6796, float %6804)  ; FMin(a,b)
  %6806 = call float @dx.op.binary.f32(i32 35, float %6797, float %6800)  ; FMax(a,b)
  %6807 = add nuw i32 %6798, 1
  %6808 = icmp eq i32 %6807, %6781
  br i1 %6808, label %6809, label %6795

; <label>:6809                                    ; preds = %6795
  br label %6810

; <label>:6810                                    ; preds = %6809, %6788
  %6811 = phi float [ %6792, %6788 ], [ %6805, %6809 ]
  %6812 = phi float [ %6789, %6788 ], [ %6806, %6809 ]
  %6813 = fsub fast float %6812, %6811
  %6814 = fdiv fast float 1.000000e+00, %6813
  br label %6815

; <label>:6815                                    ; preds = %6810, %6785
  %6816 = phi float [ %6786, %6785 ], [ %6812, %6810 ]
  %6817 = phi float [ %6787, %6785 ], [ %6814, %6810 ]
  %6818 = fadd fast float %6519, %6816
  %6819 = fmul fast float %6818, %6817
  %6820 = call float @dx.op.unary.f32(i32 7, float %6819)  ; Saturate(value)
  %6821 = fmul fast float %6820, 2.000000e+00
  %6822 = fsub fast float 1.000000e+00, %6821
  %6823 = fmul fast float %6657, %6657
  %6824 = fsub fast float %6658, %6823
  %6825 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6824)  ; FMax(a,b)
  %6826 = fdiv fast float 1.000000e+00, %6825
  %6827 = fmul fast float %6658, %6657
  %6828 = fsub fast float %6659, %6827
  %6829 = fsub fast float %6822, %6657
  %6830 = fmul fast float %6822, %6822
  %6831 = fsub fast float %6830, %6658
  %6832 = fmul fast float %6826, %6828
  %6833 = fmul fast float %6832, %6829
  %6834 = fsub fast float %6831, %6833
  %6835 = fmul fast float %6658, %6658
  %6836 = fsub fast float %6660, %6835
  %6837 = fmul fast float %6828, %6828
  %6838 = fmul fast float %6837, %6826
  %6839 = fsub fast float %6836, %6838
  %6840 = fdiv fast float %6834, %6839
  %6841 = fmul fast float %6840, %6828
  %6842 = fsub fast float %6829, %6841
  %6843 = fmul fast float %6842, %6826
  %6844 = fmul fast float %6843, %6657
  %6845 = fsub fast float 1.000000e+00, %6844
  %6846 = fmul fast float %6840, %6658
  %6847 = fsub fast float %6845, %6846
  %6848 = fmul fast float %6843, %6843
  %6849 = fmul fast float %6840, 4.000000e+00
  %6850 = fmul fast float %6849, %6847
  %6851 = fsub fast float %6848, %6850
  %6852 = call float @dx.op.unary.f32(i32 24, float %6851)  ; Sqrt(value)
  %6853 = fcmp fast oge float %6843, 0.000000e+00
  %6854 = fsub fast float -0.000000e+00, %6852
  %6855 = select i1 %6853, float %6854, float %6852
  %6856 = fsub fast float %6855, %6843
  %6857 = fdiv fast float %6856, %6840
  %6858 = fdiv fast float %6847, %6856
  %6859 = fmul fast float %6857, 5.000000e-01
  %6860 = fmul fast float %6858, 2.000000e+00
  %6861 = select i1 %6853, float %6859, float %6860
  %6862 = select i1 %6853, float %6860, float %6859
  %6863 = call float @dx.op.binary.f32(i32 35, float %6861, float %6862)  ; FMax(a,b)
  %6864 = call float @dx.op.binary.f32(i32 36, float %6861, float %6862)  ; FMin(a,b)
  %6865 = fcmp fast ogt float %6822, %6863
  %6866 = fsub fast float %6822, %6864
  %6867 = fsub fast float %6822, %6863
  %6868 = fsub fast float %6863, %6864
  %6869 = select i1 %6865, float %6867, float %6868
  %6870 = fmul float %6866, %6869
  %6871 = select i1 %6865, float %6864, float %6822
  %6872 = fcmp fast ogt float %6822, %6864
  %6873 = fmul fast float %6871, %6863
  %6874 = fadd fast float %6871, %6863
  %6875 = fmul fast float %6874, %6657
  %6876 = fadd fast float %6873, %6658
  %6877 = fsub fast float %6876, %6875
  %6878 = fdiv fast float %6877, %6870
  %6879 = select i1 %6872, float %6878, float 0.000000e+00
  %6880 = fsub fast float 1.000000e+00, %6879
  %6881 = select i1 %6865, float %6880, float %6879
  %6882 = call float @dx.op.unary.f32(i32 7, float %6881)  ; Saturate(value)
  %6883 = extractvalue %dx.types.CBufRet.f32 %6642, 3
  %6884 = fmul fast float %6883, %6882
  %6885 = fsub fast float 1.000000e+00, %6884
  br label %6886

; <label>:6886                                    ; preds = %6815, %6527, %6492, %6488, %6454
  %6887 = phi float [ 1.000000e+00, %6454 ], [ %6885, %6815 ], [ 1.000000e+00, %6492 ], [ 1.000000e+00, %6527 ], [ 1.000000e+00, %6488 ]
  %6888 = fcmp fast ogt float %6484, 0.000000e+00
  br i1 %6888, label %6889, label %7051, !dx.controlflow.hints !106

; <label>:6889                                    ; preds = %6886
  %6890 = fadd fast float %6397, %6371
  %6891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6892 = extractvalue %dx.types.CBufRet.f32 %6891, 2
  %6893 = extractvalue %dx.types.CBufRet.f32 %6891, 3
  %6894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6895 = extractvalue %dx.types.CBufRet.f32 %6894, 2
  %6896 = call float @dx.op.binary.f32(i32 35, float %6890, float 0.000000e+00)  ; FMax(a,b)
  %6897 = fadd fast float %6896, 0x3F10000000000000
  %6898 = fcmp fast oeq float %6895, 0.000000e+00
  br i1 %6898, label %6899, label %6966

; <label>:6899                                    ; preds = %6889
  %6900 = extractvalue %dx.types.CBufRet.f32 %6891, 1
  %6901 = extractvalue %dx.types.CBufRet.f32 %6891, 0
  %6902 = fmul fast float %6901, %6386
  %6903 = fmul fast float %6900, %6387
  %6904 = fadd fast float %6902, 5.000000e-01
  %6905 = call float @dx.op.unary.f32(i32 27, float %6904)  ; Round_ni(value)
  %6906 = fadd fast float %6903, 5.000000e-01
  %6907 = call float @dx.op.unary.f32(i32 27, float %6906)  ; Round_ni(value)
  %6908 = fsub fast float %6904, %6905
  %6909 = fsub fast float %6906, %6907
  %6910 = fadd fast float %6905, -5.000000e-01
  %6911 = fadd fast float %6907, -5.000000e-01
  %6912 = fmul fast float %6908, 2.000000e+00
  %6913 = fsub fast float 3.000000e+00, %6912
  %6914 = fadd fast float %6912, 1.000000e+00
  %6915 = fsub fast float 2.000000e+00, %6908
  %6916 = bitcast float %6913 to i32
  %6917 = sub nsw i32 2129859010, %6916
  %6918 = bitcast i32 %6917 to float
  %6919 = fmul fast float %6918, %6915
  %6920 = fadd fast float %6919, -1.000000e+00
  %6921 = bitcast float %6914 to i32
  %6922 = sub nsw i32 2129859010, %6921
  %6923 = bitcast i32 %6922 to float
  %6924 = fmul fast float %6923, %6908
  %6925 = fadd fast float %6924, 1.000000e+00
  %6926 = fmul fast float %6909, 2.000000e+00
  %6927 = fsub fast float 3.000000e+00, %6926
  %6928 = fadd fast float %6926, 1.000000e+00
  %6929 = fsub fast float 2.000000e+00, %6909
  %6930 = bitcast float %6927 to i32
  %6931 = sub nsw i32 2129859010, %6930
  %6932 = bitcast i32 %6931 to float
  %6933 = fmul fast float %6932, %6929
  %6934 = fadd fast float %6933, -1.000000e+00
  %6935 = bitcast float %6928 to i32
  %6936 = sub nsw i32 2129859010, %6935
  %6937 = bitcast i32 %6936 to float
  %6938 = fmul fast float %6937, %6909
  %6939 = fadd fast float %6938, 1.000000e+00
  %6940 = fadd fast float %6920, %6910
  %6941 = fmul fast float %6940, %6892
  %6942 = fadd fast float %6934, %6911
  %6943 = fmul fast float %6942, %6893
  %6944 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6941, float %6943, float undef, float undef, i32 0, i32 0, i32 undef, float %6897)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6945 = extractvalue %dx.types.ResRet.f32 %6944, 0
  %6946 = fmul fast float %6945, %6913
  %6947 = fadd fast float %6925, %6910
  %6948 = fmul fast float %6947, %6892
  %6949 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6948, float %6943, float undef, float undef, i32 0, i32 0, i32 undef, float %6897)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6950 = extractvalue %dx.types.ResRet.f32 %6949, 0
  %6951 = fmul fast float %6950, %6914
  %6952 = fadd fast float %6939, %6911
  %6953 = fmul fast float %6952, %6893
  %6954 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6941, float %6953, float undef, float undef, i32 0, i32 0, i32 undef, float %6897)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6955 = extractvalue %dx.types.ResRet.f32 %6954, 0
  %6956 = fmul fast float %6955, %6913
  %6957 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6948, float %6953, float undef, float undef, i32 0, i32 0, i32 undef, float %6897)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6958 = extractvalue %dx.types.ResRet.f32 %6957, 0
  %6959 = fmul fast float %6958, %6914
  %6960 = fadd fast float %6959, %6956
  %6961 = fmul fast float %6960, %6928
  %6962 = fadd fast float %6951, %6946
  %6963 = fmul fast float %6962, %6927
  %6964 = fadd fast float %6963, %6961
  %6965 = fmul fast float %6964, 6.250000e-02
  br label %7051

; <label>:6966                                    ; preds = %6889
  %6967 = fmul fast float %224, 0x401921FB60000000
  %6968 = call float @dx.op.unary.f32(i32 13, float %6967)  ; Sin(value)
  %6969 = call float @dx.op.unary.f32(i32 12, float %6967)  ; Cos(value)
  %6970 = fsub fast float -0.000000e+00, %6968
  br label %6971

; <label>:6971                                    ; preds = %7020, %6966
  %6972 = phi float [ 0.000000e+00, %6966 ], [ %7015, %7020 ]
  %6973 = phi float [ 0.000000e+00, %6966 ], [ %7017, %7020 ]
  %6974 = phi i32 [ 0, %6966 ], [ %7021, %7020 ]
  %6975 = mul i32 %6974, 2
  %6976 = add i32 0, %6975
  %6977 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6976
  %6978 = load float, float* %6977, align 4
  %6979 = mul i32 %6974, 2
  %6980 = add i32 1, %6979
  %6981 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6980
  %6982 = load float, float* %6981, align 4
  %6983 = fmul fast float %6978, %6969
  %6984 = call float @dx.op.tertiary.f32(i32 46, float %6982, float %6970, float %6983)  ; FMad(a,b,c)
  %6985 = fmul fast float %6978, %6968
  %6986 = call float @dx.op.tertiary.f32(i32 46, float %6982, float %6969, float %6985)  ; FMad(a,b,c)
  %6987 = fmul fast float %6984, %6895
  %6988 = fmul fast float %6986, %6895
  %6989 = fadd fast float %6987, %6386
  %6990 = fadd fast float %6988, %6387
  %6991 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %6989, float %6990, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6992 = extractvalue %dx.types.ResRet.f32 %6991, 0
  %6993 = extractvalue %dx.types.ResRet.f32 %6991, 1
  %6994 = extractvalue %dx.types.ResRet.f32 %6991, 2
  %6995 = extractvalue %dx.types.ResRet.f32 %6991, 3
  %6996 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %6992, float* %6996, align 4
  %6997 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %6993, float* %6997, align 4
  %6998 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %6994, float* %6998, align 4
  %6999 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %6995, float* %6999, align 4
  %7000 = fsub fast float %6992, %6897
  %7001 = fcmp fast olt float %7000, 0.000000e+00
  %7002 = select i1 %7001, float 0.000000e+00, float 1.000000e+00
  %7003 = fadd fast float %7002, %6972
  %7004 = fmul fast float %7002, %7000
  %7005 = fadd fast float %7004, %6973
  br label %7006

; <label>:7006                                    ; preds = %7006, %6971
  %7007 = phi i32 [ 1, %6971 ], [ %7018, %7006 ]
  %7008 = phi float [ %7005, %6971 ], [ %7017, %7006 ]
  %7009 = phi float [ %7003, %6971 ], [ %7015, %7006 ]
  %7010 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7007
  %7011 = load float, float* %7010, align 4, !tbaa !107, !noalias !97
  %7012 = fsub fast float %7011, %6897
  %7013 = fcmp fast olt float %7012, 0.000000e+00
  %7014 = select i1 %7013, float 0.000000e+00, float 1.000000e+00
  %7015 = fadd fast float %7014, %7009
  %7016 = fmul fast float %7014, %7012
  %7017 = fadd fast float %7016, %7008
  %7018 = add nuw nsw i32 %7007, 1
  %7019 = icmp eq i32 %7018, 4
  br i1 %7019, label %7020, label %7006, !llvm.loop !109

; <label>:7020                                    ; preds = %7006
  %7021 = add nuw nsw i32 %6974, 1
  %7022 = icmp eq i32 %7021, 8
  br i1 %7022, label %7023, label %6971, !llvm.loop !110

; <label>:7023                                    ; preds = %7020
  %7024 = fdiv fast float 1.000000e+00, %7015
  %7025 = fmul fast float %7024, %7017
  %7026 = fdiv fast float 1.000000e+00, %6897
  %7027 = fmul fast float %7025, %7026
  %7028 = call float @dx.op.unary.f32(i32 7, float %7027)  ; Saturate(value)
  %7029 = call float @dx.op.binary.f32(i32 35, float %7028, float 0.000000e+00)  ; FMax(a,b)
  %7030 = fmul fast float %7015, 3.125000e-02
  %7031 = call float @dx.op.unary.f32(i32 7, float %7030)  ; Saturate(value)
  %7032 = fmul fast float %7031, 2.000000e+00
  %7033 = fadd fast float %7032, -1.000000e+00
  %7034 = fcmp fast ogt float %7033, 0.000000e+00
  %7035 = fcmp fast olt float %7033, 0.000000e+00
  %7036 = zext i1 %7034 to i32
  %7037 = zext i1 %7035 to i32
  %7038 = sub nsw i32 %7036, %7037
  %7039 = sitofp i32 %7038 to float
  %7040 = fmul fast float %7039, %7033
  %7041 = fsub fast float 1.000000e+00, %7040
  %7042 = fmul fast float %7041, %7041
  %7043 = fmul fast float %7042, %7041
  %7044 = fsub fast float %7041, %7043
  %7045 = fmul fast float %7044, %7029
  %7046 = fsub fast float 1.000000e+00, %7043
  %7047 = fsub fast float %7046, %7045
  %7048 = fmul fast float %7039, 5.000000e-01
  %7049 = fmul fast float %7048, %7047
  %7050 = fsub fast float 5.000000e-01, %7049
  br label %7051

; <label>:7051                                    ; preds = %7023, %6899, %6886
  %7052 = phi float [ 1.000000e+00, %6886 ], [ %6965, %6899 ], [ %7050, %7023 ]
  %7053 = fcmp fast ogt float %6482, 0.000000e+00
  br i1 %7053, label %7054, label %7218, !dx.controlflow.hints !111

; <label>:7054                                    ; preds = %7051
  %7055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7056 = extractvalue %dx.types.CBufRet.f32 %7055, 1
  %7057 = fadd fast float %7056, %6371
  %7058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7059 = extractvalue %dx.types.CBufRet.f32 %7058, 2
  %7060 = extractvalue %dx.types.CBufRet.f32 %7058, 3
  %7061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7062 = extractvalue %dx.types.CBufRet.f32 %7061, 1
  %7063 = call float @dx.op.binary.f32(i32 35, float %7057, float 0.000000e+00)  ; FMax(a,b)
  %7064 = fadd fast float %7063, 0x3F10000000000000
  %7065 = fcmp fast oeq float %7062, 0.000000e+00
  br i1 %7065, label %7066, label %7133

; <label>:7066                                    ; preds = %7054
  %7067 = extractvalue %dx.types.CBufRet.f32 %7058, 1
  %7068 = extractvalue %dx.types.CBufRet.f32 %7058, 0
  %7069 = fmul fast float %7068, %6378
  %7070 = fmul fast float %7067, %6379
  %7071 = fadd fast float %7069, 5.000000e-01
  %7072 = call float @dx.op.unary.f32(i32 27, float %7071)  ; Round_ni(value)
  %7073 = fadd fast float %7070, 5.000000e-01
  %7074 = call float @dx.op.unary.f32(i32 27, float %7073)  ; Round_ni(value)
  %7075 = fsub fast float %7071, %7072
  %7076 = fsub fast float %7073, %7074
  %7077 = fadd fast float %7072, -5.000000e-01
  %7078 = fadd fast float %7074, -5.000000e-01
  %7079 = fmul fast float %7075, 2.000000e+00
  %7080 = fsub fast float 3.000000e+00, %7079
  %7081 = fadd fast float %7079, 1.000000e+00
  %7082 = fsub fast float 2.000000e+00, %7075
  %7083 = bitcast float %7080 to i32
  %7084 = sub nsw i32 2129859010, %7083
  %7085 = bitcast i32 %7084 to float
  %7086 = fmul fast float %7085, %7082
  %7087 = fadd fast float %7086, -1.000000e+00
  %7088 = bitcast float %7081 to i32
  %7089 = sub nsw i32 2129859010, %7088
  %7090 = bitcast i32 %7089 to float
  %7091 = fmul fast float %7090, %7075
  %7092 = fadd fast float %7091, 1.000000e+00
  %7093 = fmul fast float %7076, 2.000000e+00
  %7094 = fsub fast float 3.000000e+00, %7093
  %7095 = fadd fast float %7093, 1.000000e+00
  %7096 = fsub fast float 2.000000e+00, %7076
  %7097 = bitcast float %7094 to i32
  %7098 = sub nsw i32 2129859010, %7097
  %7099 = bitcast i32 %7098 to float
  %7100 = fmul fast float %7099, %7096
  %7101 = fadd fast float %7100, -1.000000e+00
  %7102 = bitcast float %7095 to i32
  %7103 = sub nsw i32 2129859010, %7102
  %7104 = bitcast i32 %7103 to float
  %7105 = fmul fast float %7104, %7076
  %7106 = fadd fast float %7105, 1.000000e+00
  %7107 = fadd fast float %7087, %7077
  %7108 = fmul fast float %7107, %7059
  %7109 = fadd fast float %7101, %7078
  %7110 = fmul fast float %7109, %7060
  %7111 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7108, float %7110, float undef, float undef, i32 0, i32 0, i32 undef, float %7064)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7112 = extractvalue %dx.types.ResRet.f32 %7111, 0
  %7113 = fmul fast float %7112, %7080
  %7114 = fadd fast float %7092, %7077
  %7115 = fmul fast float %7114, %7059
  %7116 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7115, float %7110, float undef, float undef, i32 0, i32 0, i32 undef, float %7064)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7117 = extractvalue %dx.types.ResRet.f32 %7116, 0
  %7118 = fmul fast float %7117, %7081
  %7119 = fadd fast float %7106, %7078
  %7120 = fmul fast float %7119, %7060
  %7121 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7108, float %7120, float undef, float undef, i32 0, i32 0, i32 undef, float %7064)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7122 = extractvalue %dx.types.ResRet.f32 %7121, 0
  %7123 = fmul fast float %7122, %7080
  %7124 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7115, float %7120, float undef, float undef, i32 0, i32 0, i32 undef, float %7064)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7125 = extractvalue %dx.types.ResRet.f32 %7124, 0
  %7126 = fmul fast float %7125, %7081
  %7127 = fadd fast float %7126, %7123
  %7128 = fmul fast float %7127, %7095
  %7129 = fadd fast float %7118, %7113
  %7130 = fmul fast float %7129, %7094
  %7131 = fadd fast float %7130, %7128
  %7132 = fmul fast float %7131, 6.250000e-02
  br label %7218

; <label>:7133                                    ; preds = %7054
  %7134 = fmul fast float %224, 0x401921FB60000000
  %7135 = call float @dx.op.unary.f32(i32 13, float %7134)  ; Sin(value)
  %7136 = call float @dx.op.unary.f32(i32 12, float %7134)  ; Cos(value)
  %7137 = fsub fast float -0.000000e+00, %7135
  br label %7138

; <label>:7138                                    ; preds = %7187, %7133
  %7139 = phi float [ 0.000000e+00, %7133 ], [ %7182, %7187 ]
  %7140 = phi float [ 0.000000e+00, %7133 ], [ %7184, %7187 ]
  %7141 = phi i32 [ 0, %7133 ], [ %7188, %7187 ]
  %7142 = mul i32 %7141, 2
  %7143 = add i32 0, %7142
  %7144 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7143
  %7145 = load float, float* %7144, align 4
  %7146 = mul i32 %7141, 2
  %7147 = add i32 1, %7146
  %7148 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7147
  %7149 = load float, float* %7148, align 4
  %7150 = fmul fast float %7145, %7136
  %7151 = call float @dx.op.tertiary.f32(i32 46, float %7149, float %7137, float %7150)  ; FMad(a,b,c)
  %7152 = fmul fast float %7145, %7135
  %7153 = call float @dx.op.tertiary.f32(i32 46, float %7149, float %7136, float %7152)  ; FMad(a,b,c)
  %7154 = fmul fast float %7151, %7062
  %7155 = fmul fast float %7153, %7062
  %7156 = fadd fast float %7154, %6378
  %7157 = fadd fast float %7155, %6379
  %7158 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %7156, float %7157, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7159 = extractvalue %dx.types.ResRet.f32 %7158, 0
  %7160 = extractvalue %dx.types.ResRet.f32 %7158, 1
  %7161 = extractvalue %dx.types.ResRet.f32 %7158, 2
  %7162 = extractvalue %dx.types.ResRet.f32 %7158, 3
  %7163 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 0
  store float %7159, float* %7163, align 4
  %7164 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 1
  store float %7160, float* %7164, align 4
  %7165 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 2
  store float %7161, float* %7165, align 4
  %7166 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 3
  store float %7162, float* %7166, align 4
  %7167 = fsub fast float %7159, %7064
  %7168 = fcmp fast olt float %7167, 0.000000e+00
  %7169 = select i1 %7168, float 0.000000e+00, float 1.000000e+00
  %7170 = fadd fast float %7169, %7139
  %7171 = fmul fast float %7169, %7167
  %7172 = fadd fast float %7171, %7140
  br label %7173

; <label>:7173                                    ; preds = %7173, %7138
  %7174 = phi i32 [ 1, %7138 ], [ %7185, %7173 ]
  %7175 = phi float [ %7172, %7138 ], [ %7184, %7173 ]
  %7176 = phi float [ %7170, %7138 ], [ %7182, %7173 ]
  %7177 = getelementptr [4 x float], [4 x float]* %89, i32 0, i32 %7174
  %7178 = load float, float* %7177, align 4, !tbaa !107, !noalias !97
  %7179 = fsub fast float %7178, %7064
  %7180 = fcmp fast olt float %7179, 0.000000e+00
  %7181 = select i1 %7180, float 0.000000e+00, float 1.000000e+00
  %7182 = fadd fast float %7181, %7176
  %7183 = fmul fast float %7181, %7179
  %7184 = fadd fast float %7183, %7175
  %7185 = add nuw nsw i32 %7174, 1
  %7186 = icmp eq i32 %7185, 4
  br i1 %7186, label %7187, label %7173, !llvm.loop !109

; <label>:7187                                    ; preds = %7173
  %7188 = add nuw nsw i32 %7141, 1
  %7189 = icmp eq i32 %7188, 8
  br i1 %7189, label %7190, label %7138, !llvm.loop !110

; <label>:7190                                    ; preds = %7187
  %7191 = fdiv fast float 1.000000e+00, %7182
  %7192 = fmul fast float %7191, %7184
  %7193 = fdiv fast float 1.000000e+00, %7064
  %7194 = fmul fast float %7192, %7193
  %7195 = call float @dx.op.unary.f32(i32 7, float %7194)  ; Saturate(value)
  %7196 = call float @dx.op.binary.f32(i32 35, float %7195, float 0.000000e+00)  ; FMax(a,b)
  %7197 = fmul fast float %7182, 3.125000e-02
  %7198 = call float @dx.op.unary.f32(i32 7, float %7197)  ; Saturate(value)
  %7199 = fmul fast float %7198, 2.000000e+00
  %7200 = fadd fast float %7199, -1.000000e+00
  %7201 = fcmp fast ogt float %7200, 0.000000e+00
  %7202 = fcmp fast olt float %7200, 0.000000e+00
  %7203 = zext i1 %7201 to i32
  %7204 = zext i1 %7202 to i32
  %7205 = sub nsw i32 %7203, %7204
  %7206 = sitofp i32 %7205 to float
  %7207 = fmul fast float %7206, %7200
  %7208 = fsub fast float 1.000000e+00, %7207
  %7209 = fmul fast float %7208, %7208
  %7210 = fmul fast float %7209, %7208
  %7211 = fsub fast float %7208, %7210
  %7212 = fmul fast float %7211, %7196
  %7213 = fsub fast float 1.000000e+00, %7210
  %7214 = fsub fast float %7213, %7212
  %7215 = fmul fast float %7206, 5.000000e-01
  %7216 = fmul fast float %7215, %7214
  %7217 = fsub fast float 5.000000e-01, %7216
  br label %7218

; <label>:7218                                    ; preds = %7190, %7066, %7051
  %7219 = phi float [ 1.000000e+00, %7051 ], [ %7132, %7066 ], [ %7217, %7190 ]
  %7220 = fcmp fast ogt float %6481, 0.000000e+00
  br i1 %7220, label %7221, label %7385, !dx.controlflow.hints !112

; <label>:7221                                    ; preds = %7218
  %7222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7223 = extractvalue %dx.types.CBufRet.f32 %7222, 0
  %7224 = fadd fast float %7223, %6371
  %7225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7226 = extractvalue %dx.types.CBufRet.f32 %7225, 2
  %7227 = extractvalue %dx.types.CBufRet.f32 %7225, 3
  %7228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7229 = extractvalue %dx.types.CBufRet.f32 %7228, 0
  %7230 = call float @dx.op.binary.f32(i32 35, float %7224, float 0.000000e+00)  ; FMax(a,b)
  %7231 = fadd fast float %7230, 0x3F10000000000000
  %7232 = fcmp fast oeq float %7229, 0.000000e+00
  br i1 %7232, label %7233, label %7300

; <label>:7233                                    ; preds = %7221
  %7234 = extractvalue %dx.types.CBufRet.f32 %7225, 1
  %7235 = extractvalue %dx.types.CBufRet.f32 %7225, 0
  %7236 = fmul fast float %7235, %6363
  %7237 = fmul fast float %7234, %6367
  %7238 = fadd fast float %7236, 5.000000e-01
  %7239 = call float @dx.op.unary.f32(i32 27, float %7238)  ; Round_ni(value)
  %7240 = fadd fast float %7237, 5.000000e-01
  %7241 = call float @dx.op.unary.f32(i32 27, float %7240)  ; Round_ni(value)
  %7242 = fsub fast float %7238, %7239
  %7243 = fsub fast float %7240, %7241
  %7244 = fadd fast float %7239, -5.000000e-01
  %7245 = fadd fast float %7241, -5.000000e-01
  %7246 = fmul fast float %7242, 2.000000e+00
  %7247 = fsub fast float 3.000000e+00, %7246
  %7248 = fadd fast float %7246, 1.000000e+00
  %7249 = fsub fast float 2.000000e+00, %7242
  %7250 = bitcast float %7247 to i32
  %7251 = sub nsw i32 2129859010, %7250
  %7252 = bitcast i32 %7251 to float
  %7253 = fmul fast float %7252, %7249
  %7254 = fadd fast float %7253, -1.000000e+00
  %7255 = bitcast float %7248 to i32
  %7256 = sub nsw i32 2129859010, %7255
  %7257 = bitcast i32 %7256 to float
  %7258 = fmul fast float %7257, %7242
  %7259 = fadd fast float %7258, 1.000000e+00
  %7260 = fmul fast float %7243, 2.000000e+00
  %7261 = fsub fast float 3.000000e+00, %7260
  %7262 = fadd fast float %7260, 1.000000e+00
  %7263 = fsub fast float 2.000000e+00, %7243
  %7264 = bitcast float %7261 to i32
  %7265 = sub nsw i32 2129859010, %7264
  %7266 = bitcast i32 %7265 to float
  %7267 = fmul fast float %7266, %7263
  %7268 = fadd fast float %7267, -1.000000e+00
  %7269 = bitcast float %7262 to i32
  %7270 = sub nsw i32 2129859010, %7269
  %7271 = bitcast i32 %7270 to float
  %7272 = fmul fast float %7271, %7243
  %7273 = fadd fast float %7272, 1.000000e+00
  %7274 = fadd fast float %7254, %7244
  %7275 = fmul fast float %7274, %7226
  %7276 = fadd fast float %7268, %7245
  %7277 = fmul fast float %7276, %7227
  %7278 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7275, float %7277, float undef, float undef, i32 0, i32 0, i32 undef, float %7231)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7279 = extractvalue %dx.types.ResRet.f32 %7278, 0
  %7280 = fmul fast float %7279, %7247
  %7281 = fadd fast float %7259, %7244
  %7282 = fmul fast float %7281, %7226
  %7283 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7282, float %7277, float undef, float undef, i32 0, i32 0, i32 undef, float %7231)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7284 = extractvalue %dx.types.ResRet.f32 %7283, 0
  %7285 = fmul fast float %7284, %7248
  %7286 = fadd fast float %7273, %7245
  %7287 = fmul fast float %7286, %7227
  %7288 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7275, float %7287, float undef, float undef, i32 0, i32 0, i32 undef, float %7231)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7289 = extractvalue %dx.types.ResRet.f32 %7288, 0
  %7290 = fmul fast float %7289, %7247
  %7291 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7282, float %7287, float undef, float undef, i32 0, i32 0, i32 undef, float %7231)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7292 = extractvalue %dx.types.ResRet.f32 %7291, 0
  %7293 = fmul fast float %7292, %7248
  %7294 = fadd fast float %7293, %7290
  %7295 = fmul fast float %7294, %7262
  %7296 = fadd fast float %7285, %7280
  %7297 = fmul fast float %7296, %7261
  %7298 = fadd fast float %7297, %7295
  %7299 = fmul fast float %7298, 6.250000e-02
  br label %7385

; <label>:7300                                    ; preds = %7221
  %7301 = fmul fast float %224, 0x401921FB60000000
  %7302 = call float @dx.op.unary.f32(i32 13, float %7301)  ; Sin(value)
  %7303 = call float @dx.op.unary.f32(i32 12, float %7301)  ; Cos(value)
  %7304 = fsub fast float -0.000000e+00, %7302
  br label %7305

; <label>:7305                                    ; preds = %7354, %7300
  %7306 = phi float [ 0.000000e+00, %7300 ], [ %7349, %7354 ]
  %7307 = phi float [ 0.000000e+00, %7300 ], [ %7351, %7354 ]
  %7308 = phi i32 [ 0, %7300 ], [ %7355, %7354 ]
  %7309 = mul i32 %7308, 2
  %7310 = add i32 0, %7309
  %7311 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7310
  %7312 = load float, float* %7311, align 4
  %7313 = mul i32 %7308, 2
  %7314 = add i32 1, %7313
  %7315 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7314
  %7316 = load float, float* %7315, align 4
  %7317 = fmul fast float %7312, %7303
  %7318 = call float @dx.op.tertiary.f32(i32 46, float %7316, float %7304, float %7317)  ; FMad(a,b,c)
  %7319 = fmul fast float %7312, %7302
  %7320 = call float @dx.op.tertiary.f32(i32 46, float %7316, float %7303, float %7319)  ; FMad(a,b,c)
  %7321 = fmul fast float %7318, %7229
  %7322 = fmul fast float %7320, %7229
  %7323 = fadd fast float %7321, %6363
  %7324 = fadd fast float %7322, %6367
  %7325 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %7323, float %7324, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7326 = extractvalue %dx.types.ResRet.f32 %7325, 0
  %7327 = extractvalue %dx.types.ResRet.f32 %7325, 1
  %7328 = extractvalue %dx.types.ResRet.f32 %7325, 2
  %7329 = extractvalue %dx.types.ResRet.f32 %7325, 3
  %7330 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 0
  store float %7326, float* %7330, align 4
  %7331 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 1
  store float %7327, float* %7331, align 4
  %7332 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 2
  store float %7328, float* %7332, align 4
  %7333 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 3
  store float %7329, float* %7333, align 4
  %7334 = fsub fast float %7326, %7231
  %7335 = fcmp fast olt float %7334, 0.000000e+00
  %7336 = select i1 %7335, float 0.000000e+00, float 1.000000e+00
  %7337 = fadd fast float %7336, %7306
  %7338 = fmul fast float %7336, %7334
  %7339 = fadd fast float %7338, %7307
  br label %7340

; <label>:7340                                    ; preds = %7340, %7305
  %7341 = phi i32 [ 1, %7305 ], [ %7352, %7340 ]
  %7342 = phi float [ %7339, %7305 ], [ %7351, %7340 ]
  %7343 = phi float [ %7337, %7305 ], [ %7349, %7340 ]
  %7344 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 %7341
  %7345 = load float, float* %7344, align 4, !tbaa !107, !noalias !97
  %7346 = fsub fast float %7345, %7231
  %7347 = fcmp fast olt float %7346, 0.000000e+00
  %7348 = select i1 %7347, float 0.000000e+00, float 1.000000e+00
  %7349 = fadd fast float %7348, %7343
  %7350 = fmul fast float %7348, %7346
  %7351 = fadd fast float %7350, %7342
  %7352 = add nuw nsw i32 %7341, 1
  %7353 = icmp eq i32 %7352, 4
  br i1 %7353, label %7354, label %7340, !llvm.loop !109

; <label>:7354                                    ; preds = %7340
  %7355 = add nuw nsw i32 %7308, 1
  %7356 = icmp eq i32 %7355, 8
  br i1 %7356, label %7357, label %7305, !llvm.loop !110

; <label>:7357                                    ; preds = %7354
  %7358 = fdiv fast float 1.000000e+00, %7349
  %7359 = fmul fast float %7358, %7351
  %7360 = fdiv fast float 1.000000e+00, %7231
  %7361 = fmul fast float %7359, %7360
  %7362 = call float @dx.op.unary.f32(i32 7, float %7361)  ; Saturate(value)
  %7363 = call float @dx.op.binary.f32(i32 35, float %7362, float 0.000000e+00)  ; FMax(a,b)
  %7364 = fmul fast float %7349, 3.125000e-02
  %7365 = call float @dx.op.unary.f32(i32 7, float %7364)  ; Saturate(value)
  %7366 = fmul fast float %7365, 2.000000e+00
  %7367 = fadd fast float %7366, -1.000000e+00
  %7368 = fcmp fast ogt float %7367, 0.000000e+00
  %7369 = fcmp fast olt float %7367, 0.000000e+00
  %7370 = zext i1 %7368 to i32
  %7371 = zext i1 %7369 to i32
  %7372 = sub nsw i32 %7370, %7371
  %7373 = sitofp i32 %7372 to float
  %7374 = fmul fast float %7373, %7367
  %7375 = fsub fast float 1.000000e+00, %7374
  %7376 = fmul fast float %7375, %7375
  %7377 = fmul fast float %7376, %7375
  %7378 = fsub fast float %7375, %7377
  %7379 = fmul fast float %7378, %7363
  %7380 = fsub fast float 1.000000e+00, %7377
  %7381 = fsub fast float %7380, %7379
  %7382 = fmul fast float %7373, 5.000000e-01
  %7383 = fmul fast float %7382, %7381
  %7384 = fsub fast float 5.000000e-01, %7383
  br label %7385

; <label>:7385                                    ; preds = %7357, %7233, %7218
  %7386 = phi float [ 1.000000e+00, %7218 ], [ %7299, %7233 ], [ %7384, %7357 ]
  %7387 = fsub fast float %7052, %6887
  %7388 = fmul fast float %7387, %6425
  %7389 = fadd fast float %7388, %6887
  %7390 = fsub fast float %7219, %7389
  %7391 = fmul fast float %7390, %6455
  %7392 = fadd fast float %7391, %7389
  %7393 = fsub fast float %7386, %7392
  %7394 = fmul fast float %7393, %6481
  %7395 = fadd fast float %7394, %7392
  %7396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7397 = extractvalue %dx.types.CBufRet.f32 %7396, 2
  %7398 = fcmp fast ogt float %7397, 0.000000e+00
  br i1 %7398, label %7399, label %7439, !dx.controlflow.hints !113

; <label>:7399                                    ; preds = %7385
  %7400 = fcmp fast ugt float %7397, 0.000000e+00
  br i1 %7400, label %7401, label %7436

; <label>:7401                                    ; preds = %7399
  %7402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7403 = extractvalue %dx.types.CBufRet.f32 %7402, 0
  %7404 = extractvalue %dx.types.CBufRet.f32 %7402, 1
  %7405 = extractvalue %dx.types.CBufRet.f32 %7402, 2
  %7406 = extractvalue %dx.types.CBufRet.f32 %7402, 3
  %7407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7408 = extractvalue %dx.types.CBufRet.f32 %7407, 0
  %7409 = extractvalue %dx.types.CBufRet.f32 %7407, 1
  %7410 = extractvalue %dx.types.CBufRet.f32 %7407, 2
  %7411 = extractvalue %dx.types.CBufRet.f32 %7407, 3
  %7412 = extractvalue %dx.types.CBufRet.f32 %7396, 0
  %7413 = extractvalue %dx.types.CBufRet.f32 %7396, 1
  %7414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7415 = extractvalue %dx.types.CBufRet.f32 %7414, 0
  %7416 = extractvalue %dx.types.CBufRet.f32 %7414, 1
  %7417 = extractvalue %dx.types.CBufRet.f32 %7414, 2
  %7418 = fadd fast float %7415, %6340
  %7419 = fadd fast float %7416, %6341
  %7420 = fadd fast float %7417, %6342
  %7421 = fmul fast float %7418, %7403
  %7422 = call float @dx.op.tertiary.f32(i32 46, float %7404, float %7419, float %7421)  ; FMad(a,b,c)
  %7423 = call float @dx.op.tertiary.f32(i32 46, float %7405, float %7420, float %7422)  ; FMad(a,b,c)
  %7424 = fadd fast float %7423, %7406
  %7425 = fmul fast float %7418, %7408
  %7426 = call float @dx.op.tertiary.f32(i32 46, float %7409, float %7419, float %7425)  ; FMad(a,b,c)
  %7427 = call float @dx.op.tertiary.f32(i32 46, float %7410, float %7420, float %7426)  ; FMad(a,b,c)
  %7428 = fadd fast float %7427, %7411
  %7429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %7424, float %7428, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7430 = extractvalue %dx.types.ResRet.f32 %7429, 0
  %7431 = fmul fast float %7430, %7413
  %7432 = fadd fast float %7431, %7412
  %7433 = call float @dx.op.unary.f32(i32 7, float %7432)  ; Saturate(value)
  %7434 = fmul fast float %7433, %7397
  %7435 = fsub fast float 1.000000e+00, %7434
  br label %7436

; <label>:7436                                    ; preds = %7401, %7399
  %7437 = phi float [ %7435, %7401 ], [ 1.000000e+00, %7399 ]
  %7438 = fmul fast float %7437, %7395
  br label %7439

; <label>:7439                                    ; preds = %7436, %7385, %6320
  %7440 = phi float [ 1.000000e+00, %6320 ], [ %7438, %7436 ], [ %7395, %7385 ]
  %7441 = call float @dx.op.binary.f32(i32 36, float %7440, float %7440)  ; FMin(a,b)
  %7442 = call float @dx.op.binary.f32(i32 36, float %7440, float %7441)  ; FMin(a,b)
  %7443 = fcmp fast ogt float %7442, 0.000000e+00
  br i1 %7443, label %7444, label %7610, !dx.controlflow.hints !114

; <label>:7444                                    ; preds = %7439
  %7445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7446 = extractvalue %dx.types.CBufRet.f32 %7445, 0
  %7447 = extractvalue %dx.types.CBufRet.f32 %7445, 1
  %7448 = extractvalue %dx.types.CBufRet.f32 %7445, 2
  %7449 = extractvalue %dx.types.CBufRet.f32 %7445, 3
  %7450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7451 = extractvalue %dx.types.CBufRet.f32 %7450, 0
  %7452 = extractvalue %dx.types.CBufRet.f32 %7450, 1
  %7453 = extractvalue %dx.types.CBufRet.f32 %7450, 2
  %7454 = extractvalue %dx.types.CBufRet.f32 %7450, 3
  %7455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7456 = extractvalue %dx.types.CBufRet.f32 %7455, 0
  %7457 = extractvalue %dx.types.CBufRet.f32 %7455, 1
  %7458 = extractvalue %dx.types.CBufRet.f32 %7455, 2
  %7459 = extractvalue %dx.types.CBufRet.f32 %7455, 3
  %7460 = fmul fast float %7446, %6340
  %7461 = call float @dx.op.tertiary.f32(i32 46, float %6341, float %7447, float %7460)  ; FMad(a,b,c)
  %7462 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %7448, float %7461)  ; FMad(a,b,c)
  %7463 = fadd fast float %7462, %7449
  %7464 = fmul fast float %7451, %6340
  %7465 = call float @dx.op.tertiary.f32(i32 46, float %6341, float %7452, float %7464)  ; FMad(a,b,c)
  %7466 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %7453, float %7465)  ; FMad(a,b,c)
  %7467 = fadd fast float %7466, %7454
  %7468 = fmul fast float %7456, %6340
  %7469 = call float @dx.op.tertiary.f32(i32 46, float %6341, float %7457, float %7468)  ; FMad(a,b,c)
  %7470 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %7458, float %7469)  ; FMad(a,b,c)
  %7471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7472 = extractvalue %dx.types.CBufRet.f32 %7471, 0
  %7473 = extractvalue %dx.types.CBufRet.f32 %7471, 1
  %7474 = extractvalue %dx.types.CBufRet.f32 %7471, 3
  %7475 = fmul fast float %7474, %7463
  %7476 = fmul fast float %7474, %7467
  %7477 = fadd fast float %7475, %7472
  %7478 = fadd fast float %7476, %7473
  %7479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7480 = extractvalue %dx.types.CBufRet.f32 %7479, 0
  %7481 = extractvalue %dx.types.CBufRet.f32 %7479, 1
  %7482 = fsub fast float %7477, %7480
  %7483 = fsub fast float %7478, %7481
  %7484 = fcmp fast olt float %7482, 0.000000e+00
  %7485 = fcmp fast olt float %7483, 0.000000e+00
  %7486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.CBufRet.f32 %7486, 1
  %7489 = extractvalue %dx.types.CBufRet.f32 %7486, 2
  %7490 = extractvalue %dx.types.CBufRet.f32 %7486, 3
  %7491 = select i1 %7484, float %7487, float %7489
  %7492 = select i1 %7485, float %7488, float %7490
  %7493 = fmul fast float %7491, %7482
  %7494 = fmul fast float %7492, %7483
  %7495 = call float @dx.op.unary.f32(i32 6, float %7493)  ; FAbs(value)
  %7496 = call float @dx.op.unary.f32(i32 6, float %7494)  ; FAbs(value)
  %7497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7498 = extractvalue %dx.types.CBufRet.f32 %7497, 0
  %7499 = call float @dx.op.binary.f32(i32 35, float %7495, float %7496)  ; FMax(a,b)
  %7500 = fsub fast float %7498, %7499
  %7501 = call float @dx.op.unary.f32(i32 7, float %7500)  ; Saturate(value)
  %7502 = fcmp fast ogt float %7501, 0.000000e+00
  br i1 %7502, label %7503, label %7544, !dx.controlflow.hints !115

; <label>:7503                                    ; preds = %7444
  %7504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %7477, float %7478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7505 = extractvalue %dx.types.ResRet.f32 %7504, 1
  %7506 = fcmp fast ogt float %7505, 0.000000e+00
  br i1 %7506, label %7507, label %7539

; <label>:7507                                    ; preds = %7503
  %7508 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %7477, float %7478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7509 = extractvalue %dx.types.ResRet.f32 %7508, 0
  %7510 = extractvalue %dx.types.ResRet.f32 %7508, 1
  %7511 = extractvalue %dx.types.ResRet.f32 %7508, 2
  %7512 = extractvalue %dx.types.ResRet.f32 %7508, 3
  %7513 = fsub fast float 1.000000e+00, %7459
  %7514 = fsub fast float %7513, %7470
  %7515 = fmul fast float %7514, 0x400921FB60000000
  %7516 = fadd fast float %7515, 0x3FF921FB60000000
  %7517 = call float @dx.op.unary.f32(i32 13, float %7516)  ; Sin(value)
  %7518 = fadd fast float %7517, -1.000000e+00
  %7519 = fmul fast float %7518, 0x3FD45F3060000000
  %7520 = fmul fast float %7514, 0x401921FB60000000
  %7521 = fadd fast float %7520, 0x400921FB60000000
  %7522 = call float @dx.op.unary.f32(i32 13, float %7521)  ; Sin(value)
  %7523 = fadd fast float %7522, 0x3E7777A5C0000000
  %7524 = fmul fast float %7523, 0x3FC45F3060000000
  %7525 = fmul fast float %7514, 0x4022D97C80000000
  %7526 = fadd fast float %7525, 0x4012D97C80000000
  %7527 = call float @dx.op.unary.f32(i32 13, float %7526)  ; Sin(value)
  %7528 = fadd fast float %7527, 1.000000e+00
  %7529 = fmul fast float %7528, 0x3FBB2995E0000000
  %7530 = fmul fast float %7514, 0x402921FB60000000
  %7531 = fadd fast float %7530, 0x401921FB60000000
  %7532 = call float @dx.op.unary.f32(i32 13, float %7531)  ; Sin(value)
  %7533 = fadd fast float %7532, 0xBE8777A5C0000000
  %7534 = fmul fast float %7533, 0x3FB45F3060000000
  %7535 = call float @dx.op.dot4.f32(i32 56, float %7509, float %7510, float %7511, float %7512, float %7519, float %7524, float %7529, float %7534)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7536 = fmul fast float %7535, 0xBFF7154760000000
  %7537 = call float @dx.op.unary.f32(i32 21, float %7536)  ; Exp(value)
  %7538 = call float @dx.op.unary.f32(i32 7, float %7537)  ; Saturate(value)
  br label %7539

; <label>:7539                                    ; preds = %7507, %7503
  %7540 = phi float [ %7538, %7507 ], [ 1.000000e+00, %7503 ]
  %7541 = fadd fast float %7540, -1.000000e+00
  %7542 = fmul fast float %7541, %7501
  %7543 = fadd fast float %7542, 1.000000e+00
  br label %7544

; <label>:7544                                    ; preds = %7539, %7444
  %7545 = phi float [ %7543, %7539 ], [ 1.000000e+00, %7444 ]
  %7546 = fmul fast float %7545, %7440
  %7547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7548 = extractvalue %dx.types.CBufRet.f32 %7547, 0
  %7549 = extractvalue %dx.types.CBufRet.f32 %7547, 1
  %7550 = extractvalue %dx.types.CBufRet.f32 %7547, 2
  %7551 = fadd fast float %7548, %152
  %7552 = fadd fast float %7549, %153
  %7553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7554 = extractvalue %dx.types.CBufRet.f32 %7553, 1
  %7555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7556 = extractvalue %dx.types.CBufRet.f32 %7555, 0
  %7557 = extractvalue %dx.types.CBufRet.f32 %7555, 1
  %7558 = extractvalue %dx.types.CBufRet.f32 %7555, 2
  %7559 = fsub fast float -0.000000e+00, %7551
  %7560 = fsub fast float -0.000000e+00, %7552
  %7561 = fsub fast float -0.000000e+00, %154
  %7562 = fsub fast float %7561, %7550
  %7563 = fadd fast float %7562, %7554
  %7564 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7559, float %7560, float %7563)  ; Dot3(ax,ay,az,bx,by,bz)
  %7565 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7556, float %7557, float %7558)  ; Dot3(ax,ay,az,bx,by,bz)
  %7566 = fdiv fast float 1.000000e+00, %7565
  %7567 = fmul fast float %7566, %7564
  %7568 = fmul fast float %7556, %7567
  %7569 = fmul fast float %7557, %7567
  %7570 = fadd fast float %7568, %7551
  %7571 = fadd fast float %7569, %7552
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 0
  %7574 = extractvalue %dx.types.CBufRet.f32 %7572, 1
  %7575 = fsub fast float %7570, %7573
  %7576 = fsub fast float %7571, %7574
  %7577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7578 = extractvalue %dx.types.CBufRet.f32 %7577, 2
  %7579 = extractvalue %dx.types.CBufRet.f32 %7577, 3
  %7580 = fmul fast float %7575, %7578
  %7581 = fmul fast float %7576, %7579
  %7582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7583 = extractvalue %dx.types.CBufRet.i32 %7582, 3
  %7584 = icmp eq i32 %7583, 0
  br i1 %7584, label %7590, label %7585

; <label>:7585                                    ; preds = %7544
  %7586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %7580, float %7581, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7587 = extractvalue %dx.types.ResRet.f32 %7586, 0
  %7588 = extractvalue %dx.types.ResRet.f32 %7586, 1
  %7589 = extractvalue %dx.types.ResRet.f32 %7586, 2
  br label %7595

; <label>:7590                                    ; preds = %7544
  %7591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7580, float %7581, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7592 = extractvalue %dx.types.ResRet.f32 %7591, 0
  %7593 = extractvalue %dx.types.ResRet.f32 %7591, 1
  %7594 = extractvalue %dx.types.ResRet.f32 %7591, 2
  br label %7595

; <label>:7595                                    ; preds = %7590, %7585
  %7596 = phi float [ %7587, %7585 ], [ %7592, %7590 ]
  %7597 = phi float [ %7588, %7585 ], [ %7593, %7590 ]
  %7598 = phi float [ %7589, %7585 ], [ %7594, %7590 ]
  %7599 = extractvalue %dx.types.CBufRet.f32 %7553, 2
  %7600 = fmul fast float %7599, %7596
  %7601 = extractvalue %dx.types.CBufRet.f32 %7553, 0
  %7602 = fsub fast float %7567, %7601
  %7603 = fsub fast float %7602, %7600
  %7604 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7603)  ; FMax(a,b)
  %7605 = fmul fast float %7604, %7597
  %7606 = call float @dx.op.binary.f32(i32 36, float %7598, float %7605)  ; FMin(a,b)
  %7607 = fmul fast float %7606, 0xBFF7154760000000
  %7608 = call float @dx.op.unary.f32(i32 21, float %7607)  ; Exp(value)
  %7609 = fmul fast float %7546, %7608
  br label %7610

; <label>:7610                                    ; preds = %7595, %7439
  %7611 = phi float [ %7609, %7595 ], [ %7440, %7439 ]
  %7612 = call float @dx.op.binary.f32(i32 36, float %7611, float %7611)  ; FMin(a,b)
  %7613 = call float @dx.op.binary.f32(i32 36, float %7611, float %7612)  ; FMin(a,b)
  %7614 = fcmp fast ogt float %7613, 0.000000e+00
  br i1 %7614, label %7615, label %7923, !dx.controlflow.hints !116

; <label>:7615                                    ; preds = %7610
  %7616 = bitcast i32 %5442 to float
  %7617 = fmul fast float %7611, %6332
  %7618 = fmul fast float %7611, %6333
  %7619 = fmul fast float %7611, %6334
  %7620 = fsub fast float %6321, %5404
  %7621 = fsub fast float %6322, %5403
  %7622 = fsub fast float %6323, %5402
  %7623 = call float @dx.op.dot3.f32(i32 55, float %7620, float %7621, float %7622, float %7620, float %7621, float %7622)  ; Dot3(ax,ay,az,bx,by,bz)
  %7624 = call float @dx.op.unary.f32(i32 25, float %7623)  ; Rsqrt(value)
  %7625 = fmul fast float %7624, %7620
  %7626 = fmul fast float %7624, %7621
  %7627 = fmul fast float %7624, %7622
  %7628 = call float @dx.op.dot3.f32(i32 55, float %6321, float %6322, float %6323, float %5411, float %5412, float %5413)  ; Dot3(ax,ay,az,bx,by,bz)
  %7629 = call float @dx.op.dot3.f32(i32 55, float %5401, float %5400, float %5399, float %7625, float %7626, float %7627)  ; Dot3(ax,ay,az,bx,by,bz)
  %7630 = call float @dx.op.unary.f32(i32 7, float %7628)  ; Saturate(value)
  %7631 = fmul fast float %7630, %7630
  %7632 = fmul fast float %7631, %7616
  %7633 = call float @dx.op.unary.f32(i32 7, float %7632)  ; Saturate(value)
  %7634 = fmul fast float %7633, %7630
  %7635 = call float @dx.op.dot3.f32(i32 55, float %5411, float %5412, float %5413, float %7625, float %7626, float %7627)  ; Dot3(ax,ay,az,bx,by,bz)
  %7636 = fmul fast float %7635, %7635
  %7637 = call float @dx.op.unary.f32(i32 6, float %7628)  ; FAbs(value)
  %7638 = fsub fast float 1.000000e+00, %5436
  %7639 = fmul fast float %5418, %5418
  %7640 = fmul fast float %7639, %7638
  %7641 = fadd fast float %7640, %5436
  %7642 = bitcast float %7641 to i32
  %7643 = ashr i32 %7642, 1
  %7644 = add nsw i32 %7643, 532487669
  %7645 = bitcast i32 %7644 to float
  %7646 = fadd fast float %7645, %5418
  %7647 = fmul fast float %5436, %7636
  %7648 = fsub fast float 1.000000e+00, %7636
  %7649 = fadd fast float %7648, %7647
  %7650 = fmul fast float %7637, %7637
  %7651 = fmul fast float %7650, %7638
  %7652 = fadd fast float %7651, %5436
  %7653 = bitcast float %7652 to i32
  %7654 = ashr i32 %7653, 1
  %7655 = add nsw i32 %7654, 532487669
  %7656 = bitcast i32 %7655 to float
  %7657 = fadd fast float %7656, %7637
  %7658 = fmul fast float %7649, %7649
  %7659 = fmul fast float %7658, %7646
  %7660 = fmul fast float %7659, %7657
  %7661 = fdiv fast float 0x3FF0A00000000000, %7660
  %7662 = fmul fast float %7661, %5436
  %7663 = fmul fast float %5688, 0x3FF9999980000000
  %7664 = fsub fast float 5.000000e+00, %7663
  %7665 = call float @dx.op.unary.f32(i32 6, float %7629)  ; FAbs(value)
  %7666 = fsub fast float 1.000000e+00, %7665
  %7667 = fmul fast float %5688, 0x41D9660740000000
  %7668 = fadd fast float %7667, 0xC1EFBF8940000000
  %7669 = bitcast float %7666 to i32
  %7670 = sitofp i32 %7669 to float
  %7671 = fmul fast float %7670, %7664
  %7672 = fadd fast float %7668, %7671
  %7673 = fptosi float %7672 to i32
  %7674 = bitcast i32 %7673 to float
  %7675 = fsub fast float 1.000000e+00, %5405
  %7676 = fsub fast float 1.000000e+00, %5406
  %7677 = fsub fast float 1.000000e+00, %5416
  %7678 = fmul fast float %7674, %7675
  %7679 = fmul fast float %7674, %7676
  %7680 = fmul fast float %7674, %7677
  %7681 = fadd fast float %7678, %5405
  %7682 = fadd fast float %7679, %5406
  %7683 = fadd fast float %7680, %5416
  br i1 %5711, label %7684, label %7707

; <label>:7684                                    ; preds = %7615
  %7685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5064, float %7665, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7686 = extractvalue %dx.types.ResRet.f32 %7685, 0
  %7687 = extractvalue %dx.types.ResRet.f32 %7685, 1
  %7688 = extractvalue %dx.types.ResRet.f32 %7685, 2
  %7689 = fadd fast float %7686, -5.000000e-01
  %7690 = fadd fast float %7687, -5.000000e-01
  %7691 = fadd fast float %7688, -5.000000e-01
  %7692 = fmul fast float %5405, 4.000000e+00
  %7693 = fmul fast float %7692, %7675
  %7694 = fmul fast float %7693, %7689
  %7695 = fmul fast float %5406, 4.000000e+00
  %7696 = fmul fast float %7695, %7676
  %7697 = fmul fast float %7696, %7690
  %7698 = fmul fast float %5416, 4.000000e+00
  %7699 = fmul fast float %7698, %7677
  %7700 = fmul fast float %7699, %7691
  %7701 = fadd fast float %7694, %7681
  %7702 = fadd fast float %7697, %7682
  %7703 = fadd fast float %7700, %7683
  %7704 = call float @dx.op.unary.f32(i32 7, float %7701)  ; Saturate(value)
  %7705 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  %7706 = call float @dx.op.unary.f32(i32 7, float %7703)  ; Saturate(value)
  br label %7707

; <label>:7707                                    ; preds = %7684, %7615
  %7708 = phi float [ %7704, %7684 ], [ %7681, %7615 ]
  %7709 = phi float [ %7705, %7684 ], [ %7682, %7615 ]
  %7710 = phi float [ %7706, %7684 ], [ %7683, %7615 ]
  %7711 = fmul fast float %7628, 9.843750e-01
  %7712 = fadd fast float %7711, 7.812500e-03
  %7713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7712, float %5692, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7714 = extractvalue %dx.types.ResRet.f32 %7713, 0
  %7715 = extractvalue %dx.types.ResRet.f32 %7713, 1
  %7716 = extractvalue %dx.types.ResRet.f32 %7713, 2
  %7717 = extractvalue %dx.types.ResRet.f32 %7713, 3
  %7718 = fsub fast float %7716, %7714
  %7719 = fsub fast float %7717, %7715
  %7720 = fmul fast float %7718, %5698
  %7721 = fmul fast float %7719, %5698
  %7722 = fadd fast float %7720, %7714
  %7723 = fadd fast float %7721, %7715
  %7724 = fmul fast float %7722, %5405
  %7725 = fmul fast float %7722, %5406
  %7726 = fmul fast float %7722, %5416
  %7727 = fadd fast float %7724, %7723
  %7728 = fadd fast float %7725, %7723
  %7729 = fadd fast float %7726, %7723
  br i1 %5711, label %7730, label %7753

; <label>:7730                                    ; preds = %7707
  %7731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5064, float %7628, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7732 = extractvalue %dx.types.ResRet.f32 %7731, 0
  %7733 = extractvalue %dx.types.ResRet.f32 %7731, 1
  %7734 = extractvalue %dx.types.ResRet.f32 %7731, 2
  %7735 = fadd fast float %7732, -5.000000e-01
  %7736 = fadd fast float %7733, -5.000000e-01
  %7737 = fadd fast float %7734, -5.000000e-01
  %7738 = fmul fast float %5405, 4.000000e+00
  %7739 = fmul fast float %7738, %7675
  %7740 = fmul fast float %7739, %7735
  %7741 = fmul fast float %5406, 4.000000e+00
  %7742 = fmul fast float %7741, %7676
  %7743 = fmul fast float %7742, %7736
  %7744 = fmul fast float %5416, 4.000000e+00
  %7745 = fmul fast float %7744, %7677
  %7746 = fmul fast float %7745, %7737
  %7747 = fadd fast float %7740, %7727
  %7748 = fadd fast float %7743, %7728
  %7749 = fadd fast float %7746, %7729
  %7750 = call float @dx.op.unary.f32(i32 7, float %7747)  ; Saturate(value)
  %7751 = call float @dx.op.unary.f32(i32 7, float %7748)  ; Saturate(value)
  %7752 = call float @dx.op.unary.f32(i32 7, float %7749)  ; Saturate(value)
  br label %7753

; <label>:7753                                    ; preds = %7730, %7707
  %7754 = phi float [ %7750, %7730 ], [ %7727, %7707 ]
  %7755 = phi float [ %7751, %7730 ], [ %7728, %7707 ]
  %7756 = phi float [ %7752, %7730 ], [ %7729, %7707 ]
  %7757 = call float @dx.op.binary.f32(i32 35, float %7755, float %7756)  ; FMax(a,b)
  %7758 = call float @dx.op.binary.f32(i32 35, float %7754, float %7757)  ; FMax(a,b)
  %7759 = fsub fast float 1.000000e+00, %7758
  %7760 = call float @dx.op.binary.f32(i32 35, float %7637, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7761 = fdiv fast float %4414, %7760
  %7762 = fmul fast float %6230, %7761
  %7763 = fmul fast float %6232, %7761
  %7764 = fmul fast float %6234, %7761
  %7765 = call float @dx.op.unary.f32(i32 21, float %7762)  ; Exp(value)
  %7766 = call float @dx.op.unary.f32(i32 21, float %7763)  ; Exp(value)
  %7767 = call float @dx.op.unary.f32(i32 21, float %7764)  ; Exp(value)
  %7768 = call float @dx.op.unary.f32(i32 7, float %7765)  ; Saturate(value)
  %7769 = call float @dx.op.unary.f32(i32 7, float %7766)  ; Saturate(value)
  %7770 = call float @dx.op.unary.f32(i32 7, float %7767)  ; Saturate(value)
  %7771 = select i1 %6227, float %7768, float 0.000000e+00
  %7772 = select i1 %6228, float %7769, float 0.000000e+00
  %7773 = select i1 %6229, float %7770, float 0.000000e+00
  %7774 = fsub fast float -0.000000e+00, %5411
  %7775 = fsub fast float -0.000000e+00, %5412
  %7776 = fsub fast float -0.000000e+00, %5413
  %7777 = call float @dx.op.dot3.f32(i32 55, float %6321, float %6322, float %6323, float %7774, float %7775, float %7776)  ; Dot3(ax,ay,az,bx,by,bz)
  %7778 = call float @dx.op.unary.f32(i32 7, float %7777)  ; Saturate(value)
  %7779 = fmul fast float %7778, 9.843750e-01
  %7780 = fadd fast float %7779, 7.812500e-03
  %7781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7780, float %5692, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7782 = extractvalue %dx.types.ResRet.f32 %7781, 0
  %7783 = extractvalue %dx.types.ResRet.f32 %7781, 1
  %7784 = extractvalue %dx.types.ResRet.f32 %7781, 2
  %7785 = extractvalue %dx.types.ResRet.f32 %7781, 3
  %7786 = fsub fast float %7784, %7782
  %7787 = fsub fast float %7785, %7783
  %7788 = fmul fast float %7786, %5698
  %7789 = fmul fast float %7787, %5698
  %7790 = fadd fast float %7788, %7782
  %7791 = fadd fast float %7789, %7783
  %7792 = fmul fast float %7790, %5405
  %7793 = fmul fast float %7790, %5406
  %7794 = fmul fast float %7790, %5416
  %7795 = fadd fast float %7792, %7791
  %7796 = fadd fast float %7793, %7791
  %7797 = fadd fast float %7794, %7791
  br i1 %5711, label %7798, label %7821

; <label>:7798                                    ; preds = %7753
  %7799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5064, float %7778, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7800 = extractvalue %dx.types.ResRet.f32 %7799, 0
  %7801 = extractvalue %dx.types.ResRet.f32 %7799, 1
  %7802 = extractvalue %dx.types.ResRet.f32 %7799, 2
  %7803 = fadd fast float %7800, -5.000000e-01
  %7804 = fadd fast float %7801, -5.000000e-01
  %7805 = fadd fast float %7802, -5.000000e-01
  %7806 = fmul fast float %5405, 4.000000e+00
  %7807 = fmul fast float %7806, %7675
  %7808 = fmul fast float %7807, %7803
  %7809 = fmul fast float %5406, 4.000000e+00
  %7810 = fmul fast float %7809, %7676
  %7811 = fmul fast float %7810, %7804
  %7812 = fmul fast float %5416, 4.000000e+00
  %7813 = fmul fast float %7812, %7677
  %7814 = fmul fast float %7813, %7805
  %7815 = fadd fast float %7808, %7795
  %7816 = fadd fast float %7811, %7796
  %7817 = fadd fast float %7814, %7797
  %7818 = call float @dx.op.unary.f32(i32 7, float %7815)  ; Saturate(value)
  %7819 = call float @dx.op.unary.f32(i32 7, float %7816)  ; Saturate(value)
  %7820 = call float @dx.op.unary.f32(i32 7, float %7817)  ; Saturate(value)
  br label %7821

; <label>:7821                                    ; preds = %7798, %7753
  %7822 = phi float [ %7818, %7798 ], [ %7795, %7753 ]
  %7823 = phi float [ %7819, %7798 ], [ %7796, %7753 ]
  %7824 = phi float [ %7820, %7798 ], [ %7797, %7753 ]
  %7825 = call float @dx.op.binary.f32(i32 35, float %7823, float %7824)  ; FMax(a,b)
  %7826 = call float @dx.op.binary.f32(i32 35, float %7822, float %7825)  ; FMax(a,b)
  %7827 = fsub fast float 1.000000e+00, %7826
  %7828 = fmul fast float %5433, %6294
  %7829 = fadd fast float %6296, %7828
  %7830 = call float @dx.op.unary.f32(i32 7, float %7829)  ; Saturate(value)
  %7831 = fsub fast float %6321, %5424
  %7832 = fsub fast float %6322, %5425
  %7833 = fsub fast float %6323, %5426
  %7834 = call float @dx.op.dot3.f32(i32 55, float %7831, float %7832, float %7833, float %7831, float %7832, float %7833)  ; Dot3(ax,ay,az,bx,by,bz)
  %7835 = call float @dx.op.unary.f32(i32 25, float %7834)  ; Rsqrt(value)
  %7836 = fmul fast float %7835, %7831
  %7837 = fmul fast float %7835, %7832
  %7838 = fmul fast float %7835, %7833
  %7839 = call float @dx.op.dot3.f32(i32 55, float %7774, float %7775, float %7776, float %7836, float %7837, float %7838)  ; Dot3(ax,ay,az,bx,by,bz)
  %7840 = fmul fast float %7839, %7839
  %7841 = call float @dx.op.unary.f32(i32 6, float %7778)  ; FAbs(value)
  %7842 = call float @dx.op.binary.f32(i32 35, float %7830, float 0x3F847AE140000000)  ; FMax(a,b)
  %7843 = fmul fast float %7842, %7842
  %7844 = fmul fast float %7843, %7843
  %7845 = fsub fast float 1.000000e+00, %7844
  %7846 = fmul fast float %7639, %7845
  %7847 = fadd fast float %7846, %7844
  %7848 = bitcast float %7847 to i32
  %7849 = ashr i32 %7848, 1
  %7850 = add nsw i32 %7849, 532487669
  %7851 = bitcast i32 %7850 to float
  %7852 = fadd fast float %7851, %5418
  %7853 = fmul fast float %7844, %7840
  %7854 = fsub fast float 1.000000e+00, %7840
  %7855 = fadd fast float %7854, %7853
  %7856 = fmul fast float %7841, %7841
  %7857 = fmul fast float %7856, %7845
  %7858 = fadd fast float %7857, %7844
  %7859 = bitcast float %7858 to i32
  %7860 = ashr i32 %7859, 1
  %7861 = add nsw i32 %7860, 532487669
  %7862 = bitcast i32 %7861 to float
  %7863 = fadd fast float %7862, %7841
  %7864 = fmul fast float %7855, %7855
  %7865 = fmul fast float %7864, %7852
  %7866 = fmul fast float %7865, %7863
  %7867 = fdiv fast float 0x3FF0A00000000000, %7866
  %7868 = fmul fast float %7867, %7844
  %7869 = fmul fast float %7778, %7771
  %7870 = fmul fast float %7778, %7772
  %7871 = fmul fast float %7778, %7773
  %7872 = fmul fast float %7869, %7827
  %7873 = fmul fast float %7872, %7868
  %7874 = fmul fast float %7870, %7827
  %7875 = fmul fast float %7874, %7868
  %7876 = fmul fast float %7871, %7827
  %7877 = fmul fast float %7876, %7868
  %7878 = fmul fast float %7708, %7662
  %7879 = fmul fast float %7709, %7662
  %7880 = fmul fast float %7710, %7662
  %7881 = fsub fast float 1.000000e+00, %7629
  %7882 = bitcast float %7881 to i32
  %7883 = sitofp i32 %7882 to float
  %7884 = fmul fast float %7883, 5.000000e+00
  %7885 = fadd fast float %7884, 0xC1EFBF8940000000
  %7886 = fptosi float %7885 to i32
  %7887 = bitcast i32 %7886 to float
  %7888 = fmul fast float %7887, %5065
  %7889 = fmul fast float %7759, %7888
  %7890 = fmul fast float %7889, %6222
  %7891 = fmul fast float %7889, %6223
  %7892 = fmul fast float %7889, %6224
  %7893 = fadd fast float %7890, %7878
  %7894 = fadd fast float %7891, %7879
  %7895 = fadd fast float %7892, %7880
  %7896 = fmul fast float %7893, %7634
  %7897 = fmul fast float %7894, %7634
  %7898 = fmul fast float %7895, %7634
  %7899 = fmul fast float %7634, %7617
  %7900 = fmul fast float %7899, %7759
  %7901 = fmul fast float %7634, %7618
  %7902 = fmul fast float %7901, %7759
  %7903 = fmul fast float %7634, %7619
  %7904 = fmul fast float %7903, %7759
  %7905 = fadd fast float %7896, %7873
  %7906 = fadd fast float %7897, %7875
  %7907 = fadd fast float %7898, %7877
  %7908 = fmul fast float %7905, %7617
  %7909 = fmul fast float %7906, %7618
  %7910 = fmul fast float %7907, %7619
  %7911 = fadd fast float %7900, %6311
  %7912 = fmul fast float %7911, %5061
  %7913 = fadd fast float %7902, %6313
  %7914 = fmul fast float %7913, %5061
  %7915 = fadd fast float %7904, %6315
  %7916 = fmul fast float %7915, %5061
  %7917 = fadd fast float %7908, %6275
  %7918 = fmul fast float %7917, %5061
  %7919 = fadd fast float %7909, %6278
  %7920 = fmul fast float %7919, %5061
  %7921 = fadd fast float %7910, %6281
  %7922 = fmul fast float %7921, %5061
  br label %7923

; <label>:7923                                    ; preds = %7821, %7610, %6205
  %7924 = phi float [ %6276, %6205 ], [ %6276, %7610 ], [ %7918, %7821 ]
  %7925 = phi float [ %6279, %6205 ], [ %6279, %7610 ], [ %7920, %7821 ]
  %7926 = phi float [ %6282, %6205 ], [ %6282, %7610 ], [ %7922, %7821 ]
  %7927 = phi float [ %6312, %6205 ], [ %6312, %7610 ], [ %7912, %7821 ]
  %7928 = phi float [ %6314, %6205 ], [ %6314, %7610 ], [ %7914, %7821 ]
  %7929 = phi float [ %6316, %6205 ], [ %6316, %7610 ], [ %7916, %7821 ]
  %7930 = fmul fast float %6251, %5061
  %7931 = fmul fast float %6252, %5061
  %7932 = fmul fast float %6253, %5061
  %7933 = fadd fast float %7930, 1.000000e+00
  %7934 = fadd fast float %7931, 1.000000e+00
  %7935 = fadd fast float %7932, 1.000000e+00
  %7936 = call float @dx.op.dot3.f32(i32 55, float %7933, float %7934, float %7935, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7937 = fsub fast float 1.000000e+00, %7936
  %7938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7939 = extractvalue %dx.types.CBufRet.f32 %7938, 0
  %7940 = fmul fast float %7939, %6257
  %7941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7941, 3
  %7943 = fsub fast float 1.000000e+00, %5069
  %7944 = call float @dx.op.unary.f32(i32 7, float %7943)  ; Saturate(value)
  %7945 = fadd fast float %7929, %5067
  %7946 = fmul fast float %7945, %5069
  %7947 = fmul fast float %7944, %7942
  %7948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7949 = extractvalue %dx.types.CBufRet.f32 %7948, 3
  %7950 = fmul fast float %7927, %5408
  %7951 = fmul fast float %7928, %5409
  %7952 = fmul fast float %7929, %5410
  %7953 = fcmp fast ogt float %85, %174
  %7954 = and i1 %7953, %5137
  %7955 = or i1 %5216, %7954
  %7956 = icmp eq i32 %5136, 2
  %7957 = fcmp fast ole float %85, %174
  %7958 = and i1 %7957, %7956
  %7959 = or i1 %7958, %7955
  br i1 %7954, label %7960, label %8217

; <label>:7960                                    ; preds = %7923
  %7961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7962 = extractvalue %dx.types.CBufRet.f32 %7961, 2
  %7963 = extractvalue %dx.types.CBufRet.f32 %7961, 3
  %7964 = fmul fast float %7962, %97
  %7965 = fmul fast float %7963, %98
  %7966 = call float @dx.op.unary.f32(i32 7, float %7964)  ; Saturate(value)
  %7967 = call float @dx.op.unary.f32(i32 7, float %7965)  ; Saturate(value)
  %7968 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7966, float %7967, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7969 = extractvalue %dx.types.ResRet.f32 %7968, 0
  %7970 = extractvalue %dx.types.ResRet.f32 %7968, 1
  %7971 = extractvalue %dx.types.ResRet.f32 %7968, 2
  %7972 = extractvalue %dx.types.ResRet.f32 %7968, 3
  %7973 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7966, float %7967, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7974 = extractvalue %dx.types.ResRet.f32 %7973, 0
  %7975 = extractvalue %dx.types.ResRet.f32 %7973, 1
  %7976 = extractvalue %dx.types.ResRet.f32 %7973, 2
  %7977 = extractvalue %dx.types.ResRet.f32 %7973, 3
  %7978 = call float @dx.op.binary.f32(i32 35, float %7970, float %7971)  ; FMax(a,b)
  %7979 = call float @dx.op.binary.f32(i32 35, float %7969, float %7978)  ; FMax(a,b)
  %7980 = call float @dx.op.binary.f32(i32 35, float %7979, float %7972)  ; FMax(a,b)
  %7981 = call float @dx.op.binary.f32(i32 36, float %7975, float %7976)  ; FMin(a,b)
  %7982 = call float @dx.op.binary.f32(i32 36, float %7974, float %7981)  ; FMin(a,b)
  %7983 = call float @dx.op.binary.f32(i32 36, float %7982, float %7977)  ; FMin(a,b)
  %7984 = fmul fast float %7980, 2.550000e+02
  %7985 = fadd fast float %7984, 0x3F70101020000000
  %7986 = fptoui float %7985 to i32
  %7987 = fmul fast float %7983, 2.550000e+02
  %7988 = fadd fast float %7987, 0x3F70101020000000
  %7989 = fptoui float %7988 to i32
  %7990 = icmp ult i32 %7986, %7989
  br i1 %7990, label %7991, label %8159

; <label>:7991                                    ; preds = %7960
  %7992 = fcmp fast ogt float %84, 9.843750e-01
  %7993 = fadd fast float %85, -4.000000e+00
  %7994 = select i1 %7992, float -4.000000e+00, float %7993
  %7995 = call float @dx.op.binary.f32(i32 35, float %7994, float 0.000000e+00)  ; FMax(a,b)
  %7996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7997 = extractvalue %dx.types.CBufRet.f32 %7996, 0
  %7998 = fadd fast float %7997, %7995
  %7999 = extractvalue %dx.types.CBufRet.f32 %7996, 2
  %8000 = fmul fast float %7998, %7999
  %8001 = call float @dx.op.unary.f32(i32 23, float %8000)  ; Log(value)
  %8002 = extractvalue %dx.types.CBufRet.f32 %7996, 3
  %8003 = fmul fast float %8002, %8001
  %8004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8005 = extractvalue %dx.types.CBufRet.f32 %8004, 2
  %8006 = fmul fast float %8003, %8005
  %8007 = call float @dx.op.unary.f32(i32 7, float %8006)  ; Saturate(value)
  %8008 = uitofp i32 %7986 to float
  %8009 = uitofp i32 %7989 to float
  %8010 = fadd fast float %8008, 5.000000e-01
  %8011 = fadd fast float %8009, 5.000000e-01
  %8012 = fmul fast float %8005, %8010
  %8013 = fmul fast float %8005, %8011
  %8014 = fadd fast float %8012, 0x3F0FFB4800000000
  %8015 = fadd fast float %8013, 0xBF0FFB4800000000
  %8016 = call float @dx.op.binary.f32(i32 35, float %8007, float %8014)  ; FMax(a,b)
  %8017 = call float @dx.op.binary.f32(i32 36, float %8016, float %8015)  ; FMin(a,b)
  %8018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8019 = extractvalue %dx.types.CBufRet.f32 %8018, 1
  %8020 = extractvalue %dx.types.CBufRet.f32 %8018, 2
  %8021 = extractvalue %dx.types.CBufRet.f32 %8018, 0
  %8022 = fmul fast float %8019, %8017
  %8023 = fadd fast float %8021, %8022
  %8024 = fadd fast float %8021, %8020
  %8025 = fsub fast float %8019, %8020
  %8026 = fadd fast float %8025, %8021
  %8027 = call float @dx.op.binary.f32(i32 35, float %8023, float %8024)  ; FMax(a,b)
  %8028 = call float @dx.op.binary.f32(i32 36, float %8027, float %8026)  ; FMin(a,b)
  %8029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %7966, float %7967, float %8028, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8030 = extractvalue %dx.types.ResRet.f32 %8029, 0
  %8031 = extractvalue %dx.types.ResRet.f32 %8029, 1
  %8032 = extractvalue %dx.types.ResRet.f32 %8029, 2
  %8033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8034 = extractvalue %dx.types.CBufRet.i32 %8033, 0
  %8035 = extractvalue %dx.types.CBufRet.i32 %8033, 1
  %8036 = uitofp i32 %8034 to float
  %8037 = uitofp i32 %8035 to float
  %8038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8039 = extractvalue %dx.types.CBufRet.f32 %8038, 0
  %8040 = extractvalue %dx.types.CBufRet.f32 %8038, 1
  %8041 = fmul fast float %8036, %7966
  %8042 = fmul fast float %8037, %7967
  %8043 = fadd fast float %8041, -5.000000e-01
  %8044 = fadd fast float %8042, -5.000000e-01
  %8045 = call float @dx.op.unary.f32(i32 22, float %8043)  ; Frc(value)
  %8046 = call float @dx.op.unary.f32(i32 22, float %8044)  ; Frc(value)
  %8047 = fmul fast float %8045, %8045
  %8048 = fmul fast float %8047, %8045
  %8049 = fsub fast float 3.000000e+00, %8045
  %8050 = fmul fast float %8047, %8049
  %8051 = fmul fast float %8045, 3.000000e+00
  %8052 = fmul fast float %8048, 3.000000e+00
  %8053 = fmul fast float %8047, 6.000000e+00
  %8054 = fsub fast float %8052, %8053
  %8055 = fadd fast float %8054, 4.000000e+00
  %8056 = fmul fast float %8055, 0x3FC5555560000000
  %8057 = fmul fast float %8048, -3.000000e+00
  %8058 = fadd fast float %8047, %8045
  %8059 = fmul fast float %8058, 3.000000e+00
  %8060 = fadd fast float %8057, 1.000000e+00
  %8061 = fadd fast float %8060, %8059
  %8062 = fmul fast float %8048, 0x3FC5555560000000
  %8063 = fmul fast float %8046, %8046
  %8064 = fmul fast float %8063, %8046
  %8065 = fsub fast float 3.000000e+00, %8046
  %8066 = fmul fast float %8063, %8065
  %8067 = fmul fast float %8046, 3.000000e+00
  %8068 = fmul fast float %8064, 3.000000e+00
  %8069 = fmul fast float %8063, 6.000000e+00
  %8070 = fsub fast float %8068, %8069
  %8071 = fadd fast float %8070, 4.000000e+00
  %8072 = fmul fast float %8071, 0x3FC5555560000000
  %8073 = fmul fast float %8064, -3.000000e+00
  %8074 = fadd fast float %8063, %8046
  %8075 = fmul fast float %8074, 3.000000e+00
  %8076 = fadd fast float %8073, 1.000000e+00
  %8077 = fadd fast float %8076, %8075
  %8078 = fmul fast float %8064, 0x3FC5555560000000
  %8079 = fadd fast float %8045, 1.000000e+00
  %8080 = fsub fast float 1.000000e+00, %8051
  %8081 = fadd fast float %8080, %8050
  %8082 = fadd fast float %8081, %8055
  %8083 = fmul fast float %8082, 0x3FC5555560000000
  %8084 = fdiv fast float %8056, %8083
  %8085 = fsub fast float %8079, %8084
  %8086 = fsub fast float 1.000000e+00, %8045
  %8087 = fadd fast float %8061, %8048
  %8088 = fmul fast float %8087, 0x3FC5555560000000
  %8089 = fdiv fast float %8062, %8088
  %8090 = fadd fast float %8086, %8089
  %8091 = fadd fast float %8046, 1.000000e+00
  %8092 = fsub fast float 1.000000e+00, %8067
  %8093 = fadd fast float %8092, %8066
  %8094 = fadd fast float %8093, %8071
  %8095 = fmul fast float %8094, 0x3FC5555560000000
  %8096 = fdiv fast float %8072, %8095
  %8097 = fsub fast float %8091, %8096
  %8098 = fsub fast float 1.000000e+00, %8046
  %8099 = fadd fast float %8077, %8064
  %8100 = fmul fast float %8099, 0x3FC5555560000000
  %8101 = fdiv fast float %8078, %8100
  %8102 = fadd fast float %8101, %8098
  %8103 = fmul fast float %8085, %8039
  %8104 = fsub fast float %7966, %8103
  %8105 = fmul fast float %8090, %8039
  %8106 = fadd fast float %8105, %7966
  %8107 = fmul fast float %8102, %8040
  %8108 = fadd fast float %8107, %7967
  %8109 = fmul fast float %8097, %8040
  %8110 = fsub fast float %7967, %8109
  %8111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8104, float %8110, float %8028, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8112 = extractvalue %dx.types.ResRet.f32 %8111, 0
  %8113 = extractvalue %dx.types.ResRet.f32 %8111, 1
  %8114 = extractvalue %dx.types.ResRet.f32 %8111, 2
  %8115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8106, float %8110, float %8028, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8116 = extractvalue %dx.types.ResRet.f32 %8115, 0
  %8117 = extractvalue %dx.types.ResRet.f32 %8115, 1
  %8118 = extractvalue %dx.types.ResRet.f32 %8115, 2
  %8119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8104, float %8108, float %8028, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8120 = extractvalue %dx.types.ResRet.f32 %8119, 0
  %8121 = extractvalue %dx.types.ResRet.f32 %8119, 1
  %8122 = extractvalue %dx.types.ResRet.f32 %8119, 2
  %8123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8106, float %8108, float %8028, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8124 = extractvalue %dx.types.ResRet.f32 %8123, 0
  %8125 = extractvalue %dx.types.ResRet.f32 %8123, 1
  %8126 = extractvalue %dx.types.ResRet.f32 %8123, 2
  %8127 = fsub fast float %8120, %8112
  %8128 = fsub fast float %8121, %8113
  %8129 = fsub fast float %8122, %8114
  %8130 = fmul fast float %8127, %8100
  %8131 = fmul fast float %8128, %8100
  %8132 = fmul fast float %8129, %8100
  %8133 = fadd fast float %8130, %8112
  %8134 = fadd fast float %8131, %8113
  %8135 = fadd fast float %8132, %8114
  %8136 = fsub fast float %8124, %8116
  %8137 = fsub fast float %8125, %8117
  %8138 = fsub fast float %8126, %8118
  %8139 = fmul fast float %8136, %8100
  %8140 = fmul fast float %8137, %8100
  %8141 = fmul fast float %8138, %8100
  %8142 = fsub fast float %8116, %8133
  %8143 = fadd fast float %8142, %8139
  %8144 = fsub fast float %8117, %8134
  %8145 = fadd fast float %8144, %8140
  %8146 = fsub fast float %8118, %8135
  %8147 = fadd fast float %8146, %8141
  %8148 = fmul fast float %8143, %8088
  %8149 = fmul fast float %8145, %8088
  %8150 = fmul fast float %8147, %8088
  %8151 = fadd fast float %8148, %8133
  %8152 = fadd fast float %8149, %8134
  %8153 = fadd fast float %8150, %8135
  %8154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8155 = extractvalue %dx.types.CBufRet.f32 %8154, 1
  %8156 = fmul fast float %8151, %8155
  %8157 = fmul fast float %8152, %8155
  %8158 = fmul fast float %8153, %8155
  br label %8159

; <label>:8159                                    ; preds = %7991, %7960
  %8160 = phi float [ %8030, %7991 ], [ 1.000000e+00, %7960 ]
  %8161 = phi float [ %8031, %7991 ], [ 1.000000e+00, %7960 ]
  %8162 = phi float [ %8032, %7991 ], [ 1.000000e+00, %7960 ]
  %8163 = phi float [ %8156, %7991 ], [ 0.000000e+00, %7960 ]
  %8164 = phi float [ %8157, %7991 ], [ 0.000000e+00, %7960 ]
  %8165 = phi float [ %8158, %7991 ], [ 0.000000e+00, %7960 ]
  %8166 = fmul fast float %8163, %7937
  %8167 = fmul fast float %8164, %7937
  %8168 = fmul fast float %8165, %7937
  %8169 = call float @dx.op.dot3.f32(i32 55, float %8160, float %8161, float %8162, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8170 = call float @dx.op.dot3.f32(i32 55, float %8166, float %8167, float %8168, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8171 = select i1 %213, float %8169, float %8160
  %8172 = select i1 %213, float %8169, float %8161
  %8173 = select i1 %213, float 1.000000e+00, float %8162
  %8174 = select i1 %213, float %8170, float %8166
  %8175 = select i1 %213, float 0.000000e+00, float %8167
  %8176 = select i1 %213, float 0.000000e+00, float %8168
  %8177 = fmul fast float %8171, %7950
  %8178 = fmul fast float %8172, %7951
  %8179 = fmul fast float %8173, %7952
  %8180 = fadd fast float %8177, %8174
  %8181 = fadd fast float %8178, %8175
  %8182 = fadd fast float %8176, %8179
  %8183 = fmul fast float %8171, %7924
  %8184 = fmul fast float %8172, %7925
  %8185 = fmul fast float %8173, %7926
  %8186 = fmul fast float %122, %7962
  %8187 = fmul fast float %124, %7963
  %8188 = fsub fast float 1.000000e+00, %8186
  %8189 = fsub fast float 1.000000e+00, %8187
  %8190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8191 = extractvalue %dx.types.CBufRet.f32 %8190, 0
  %8192 = extractvalue %dx.types.CBufRet.f32 %8190, 1
  %8193 = extractvalue %dx.types.CBufRet.f32 %8190, 2
  %8194 = fmul fast float %8188, %8191
  %8195 = fmul fast float %8188, %8192
  %8196 = fmul fast float %8188, %8193
  %8197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8198 = extractvalue %dx.types.CBufRet.f32 %8197, 0
  %8199 = extractvalue %dx.types.CBufRet.f32 %8197, 1
  %8200 = extractvalue %dx.types.CBufRet.f32 %8197, 2
  %8201 = fmul fast float %8189, %8198
  %8202 = fmul fast float %8189, %8199
  %8203 = fmul fast float %8189, %8200
  %8204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8205 = extractvalue %dx.types.CBufRet.f32 %8204, 0
  %8206 = extractvalue %dx.types.CBufRet.f32 %8204, 1
  %8207 = extractvalue %dx.types.CBufRet.f32 %8204, 2
  %8208 = fadd fast float %8201, %8205
  %8209 = fadd fast float %8208, %8194
  %8210 = fadd fast float %8202, %8206
  %8211 = fadd fast float %8210, %8195
  %8212 = fadd fast float %8203, %8207
  %8213 = fadd fast float %8212, %8196
  %8214 = fmul fast float %8209, %174
  %8215 = fmul fast float %8211, %174
  %8216 = fmul fast float %8213, %174
  br label %8217

; <label>:8217                                    ; preds = %8159, %7923
  %8218 = phi float [ %8214, %8159 ], [ %152, %7923 ]
  %8219 = phi float [ %8215, %8159 ], [ %153, %7923 ]
  %8220 = phi float [ %8216, %8159 ], [ %154, %7923 ]
  %8221 = phi float [ %174, %8159 ], [ %85, %7923 ]
  %8222 = phi float [ %8180, %8159 ], [ %7950, %7923 ]
  %8223 = phi float [ %8181, %8159 ], [ %7951, %7923 ]
  %8224 = phi float [ %8182, %8159 ], [ %7952, %7923 ]
  %8225 = phi float [ %8183, %8159 ], [ %7924, %7923 ]
  %8226 = phi float [ %8184, %8159 ], [ %7925, %7923 ]
  %8227 = phi float [ %8185, %8159 ], [ %7926, %7923 ]
  %8228 = phi float [ %8160, %8159 ], [ 1.000000e+00, %7923 ]
  br i1 %7959, label %9383, label %8229

; <label>:8229                                    ; preds = %8217
  %8230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8231 = extractvalue %dx.types.CBufRet.f32 %8230, 0
  %8232 = extractvalue %dx.types.CBufRet.f32 %8230, 1
  %8233 = extractvalue %dx.types.CBufRet.f32 %8230, 2
  %8234 = extractvalue %dx.types.CBufRet.f32 %8230, 3
  %8235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8236 = extractvalue %dx.types.CBufRet.f32 %8235, 0
  %8237 = extractvalue %dx.types.CBufRet.f32 %8235, 1
  %8238 = extractvalue %dx.types.CBufRet.f32 %8235, 2
  %8239 = extractvalue %dx.types.CBufRet.f32 %8235, 3
  %8240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8241 = extractvalue %dx.types.CBufRet.f32 %8240, 0
  %8242 = extractvalue %dx.types.CBufRet.f32 %8240, 1
  %8243 = extractvalue %dx.types.CBufRet.f32 %8240, 2
  %8244 = extractvalue %dx.types.CBufRet.f32 %8240, 3
  %8245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8245, 0
  %8247 = extractvalue %dx.types.CBufRet.f32 %8245, 1
  %8248 = extractvalue %dx.types.CBufRet.f32 %8245, 2
  %8249 = extractvalue %dx.types.CBufRet.f32 %8245, 3
  %8250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8251 = extractvalue %dx.types.CBufRet.f32 %8250, 3
  %8252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8253 = extractvalue %dx.types.CBufRet.f32 %8252, 3
  %8254 = extractvalue %dx.types.CBufRet.f32 %8252, 0
  %8255 = extractvalue %dx.types.CBufRet.f32 %8252, 1
  %8256 = extractvalue %dx.types.CBufRet.f32 %8252, 2
  %8257 = fcmp fast olt float %8256, -5.000000e-01
  %8258 = call float @dx.op.dot3.f32(i32 55, float %8218, float %8219, float %8220, float %8218, float %8219, float %8220)  ; Dot3(ax,ay,az,bx,by,bz)
  %8259 = call float @dx.op.unary.f32(i32 25, float %8258)  ; Rsqrt(value)
  %8260 = fmul fast float %8259, %8258
  %8261 = fmul fast float %8259, %8218
  %8262 = fmul fast float %8259, %8219
  %8263 = fmul fast float %8259, %8220
  %8264 = fadd fast float %8260, %8234
  %8265 = call float @dx.op.dot3.f32(i32 55, float %8261, float %8262, float %8263, float %8231, float %8232, float %8233)  ; Dot3(ax,ay,az,bx,by,bz)
  %8266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8267 = extractvalue %dx.types.CBufRet.i32 %8266, 1
  %8268 = and i32 %8267, 1
  %8269 = icmp ne i32 %8268, 0
  %8270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8271 = extractvalue %dx.types.CBufRet.f32 %8270, 2
  %8272 = fcmp fast ogt float %8271, 0.000000e+00
  %8273 = and i1 %8269, %8272
  br i1 %8273, label %8274, label %8680, !dx.controlflow.hints !117

; <label>:8274                                    ; preds = %8229
  %8275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8276 = extractvalue %dx.types.CBufRet.f32 %8275, 3
  %8277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8278 = extractvalue %dx.types.CBufRet.f32 %8277, 2
  %8279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8280 = extractvalue %dx.types.CBufRet.f32 %8279, 2
  %8281 = fsub fast float %8278, %8280
  %8282 = and i32 %8267, 2
  %8283 = extractvalue %dx.types.CBufRet.i32 %8266, 0
  %8284 = call i32 @dx.op.binary.i32(i32 40, i32 %8283, i32 3)  ; UMin(a,b)
  %8285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8286 = extractvalue %dx.types.CBufRet.f32 %8285, 0
  %8287 = extractvalue %dx.types.CBufRet.f32 %8285, 1
  %8288 = extractvalue %dx.types.CBufRet.f32 %8279, 0
  %8289 = extractvalue %dx.types.CBufRet.f32 %8279, 1
  %8290 = fsub fast float %8286, %8288
  %8291 = fsub fast float %8287, %8289
  %8292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8293 = extractvalue %dx.types.CBufRet.f32 %8292, 0
  %8294 = fcmp fast ogt float %8293, 0.000000e+00
  %8295 = fsub fast float -0.000000e+00, %8290
  %8296 = fsub fast float -0.000000e+00, %8291
  %8297 = call float @dx.op.dot2.f32(i32 54, float %8261, float %8262, float %8261, float %8262)  ; Dot2(ax,ay,bx,by)
  %8298 = call float @dx.op.dot2.f32(i32 54, float %8261, float %8262, float %8295, float %8296)  ; Dot2(ax,ay,bx,by)
  %8299 = fmul fast float %8298, 2.000000e+00
  %8300 = call float @dx.op.dot2.f32(i32 54, float %8295, float %8296, float %8295, float %8296)  ; Dot2(ax,ay,bx,by)
  %8301 = fmul fast float %8293, %8293
  %8302 = fsub fast float %8300, %8301
  %8303 = fmul fast float %8299, %8299
  %8304 = fmul fast float %8297, 4.000000e+00
  %8305 = fmul fast float %8304, %8302
  %8306 = fsub fast float %8303, %8305
  %8307 = fcmp fast ogt float %8306, 0.000000e+00
  br i1 %8307, label %8308, label %8323

; <label>:8308                                    ; preds = %8274
  %8309 = fcmp fast ogt float %8299, 0.000000e+00
  %8310 = call float @dx.op.unary.f32(i32 24, float %8306)  ; Sqrt(value)
  %8311 = fsub fast float -0.000000e+00, %8310
  %8312 = select i1 %8309, float %8310, float %8311
  %8313 = fadd fast float %8312, %8299
  %8314 = fmul float %8313, -5.000000e-01
  %8315 = fdiv fast float %8314, %8297
  %8316 = call float @dx.op.binary.f32(i32 35, float %8315, float 0.000000e+00)  ; FMax(a,b)
  %8317 = call float @dx.op.binary.f32(i32 36, float %8260, float %8316)  ; FMin(a,b)
  %8318 = fdiv fast float %8302, %8314
  %8319 = call float @dx.op.binary.f32(i32 35, float %8318, float 0.000000e+00)  ; FMax(a,b)
  %8320 = call float @dx.op.binary.f32(i32 36, float %8260, float %8319)  ; FMin(a,b)
  %8321 = call float @dx.op.binary.f32(i32 36, float %8317, float %8320)  ; FMin(a,b)
  %8322 = call float @dx.op.binary.f32(i32 35, float %8317, float %8320)  ; FMax(a,b)
  br label %8323

; <label>:8323                                    ; preds = %8308, %8274
  %8324 = phi float [ %8322, %8308 ], [ -1.000000e+00, %8274 ]
  %8325 = phi float [ %8321, %8308 ], [ -1.000000e+00, %8274 ]
  %8326 = phi i1 [ true, %8308 ], [ false, %8274 ]
  %8327 = and i1 %8294, %8326
  br i1 %8327, label %8328, label %8330

; <label>:8328                                    ; preds = %8323
  %8329 = fcmp fast oeq float %8325, %8324
  br i1 %8329, label %8633, label %8331

; <label>:8330                                    ; preds = %8323
  br i1 %8294, label %8633, label %8331

; <label>:8331                                    ; preds = %8330, %8328
  %8332 = phi float [ %8260, %8330 ], [ %8324, %8328 ]
  %8333 = phi float [ 0.000000e+00, %8330 ], [ %8325, %8328 ]
  %8334 = icmp ne i32 %8282, 0
  %8335 = fmul fast float %8332, %8263
  %8336 = fadd fast float %8335, %8276
  %8337 = fmul fast float %8336, %8332
  %8338 = select i1 %8334, float 0.000000e+00, float %8337
  %8339 = fcmp fast oeq float %8263, 0.000000e+00
  %8340 = fdiv fast float %8281, %8263
  %8341 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8340)  ; FMax(a,b)
  %8342 = select i1 %8339, float %8332, float %8341
  %8343 = call float @dx.op.binary.f32(i32 36, float %8332, float %8342)  ; FMin(a,b)
  %8344 = fcmp fast ogt float %8263, 0.000000e+00
  %8345 = fcmp fast olt float %8281, 0.000000e+00
  br i1 %8344, label %8346, label %8403

; <label>:8346                                    ; preds = %8331
  %8347 = icmp eq i32 %8282, 0
  br i1 %8345, label %8348, label %8392

; <label>:8348                                    ; preds = %8346
  %8349 = select i1 %8347, float %8332, float 0.000000e+00
  %8350 = fsub fast float -0.000000e+00, %8349
  %8351 = call float @dx.op.unary.f32(i32 6, float %8350)  ; FAbs(value)
  %8352 = fmul fast float %8349, %8263
  %8353 = fadd fast float %8352, %8276
  %8354 = fmul fast float %8351, %8353
  %8355 = fsub fast float %8338, %8354
  %8356 = fsub fast float %8332, %8351
  %8357 = select i1 %8347, float %8356, float 0.000000e+00
  %8358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8359 = extractvalue %dx.types.CBufRet.f32 %8358, 0
  %8360 = extractvalue %dx.types.CBufRet.f32 %8358, 1
  %8361 = extractvalue %dx.types.CBufRet.f32 %8358, 2
  %8362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8363 = extractvalue %dx.types.CBufRet.f32 %8362, 0
  %8364 = extractvalue %dx.types.CBufRet.f32 %8362, 1
  %8365 = extractvalue %dx.types.CBufRet.f32 %8362, 2
  %8366 = extractvalue %dx.types.CBufRet.f32 %8362, 3
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 3
  %8369 = call float @dx.op.binary.f32(i32 36, float %8355, float %8368)  ; FMin(a,b)
  %8370 = fmul fast float %8366, %8357
  %8371 = call float @dx.op.unary.f32(i32 7, float %8370)  ; Saturate(value)
  %8372 = fsub fast float %8363, %8359
  %8373 = fsub fast float %8364, %8360
  %8374 = fsub fast float %8365, %8361
  %8375 = fmul fast float %8371, %8372
  %8376 = fmul fast float %8371, %8373
  %8377 = fmul fast float %8371, %8374
  %8378 = fadd fast float %8375, %8359
  %8379 = fadd fast float %8376, %8360
  %8380 = fadd fast float %8377, %8361
  %8381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8382 = extractvalue %dx.types.CBufRet.f32 %8381, 0
  %8383 = extractvalue %dx.types.CBufRet.f32 %8381, 1
  %8384 = fadd fast float %8383, %8382
  %8385 = call float @dx.op.unary.f32(i32 7, float %8384)  ; Saturate(value)
  %8386 = extractvalue %dx.types.CBufRet.f32 %8381, 2
  %8387 = extractvalue %dx.types.CBufRet.f32 %8381, 3
  %8388 = fadd fast float %8387, %8386
  %8389 = call float @dx.op.unary.f32(i32 7, float %8388)  ; Saturate(value)
  %8390 = fmul fast float %8385, %8369
  %8391 = fmul fast float %8390, %8389
  br label %8633

; <label>:8392                                    ; preds = %8346
  br i1 %8347, label %8393, label %8414

; <label>:8393                                    ; preds = %8392
  %8394 = call float @dx.op.binary.f32(i32 36, float %8343, float %8333)  ; FMin(a,b)
  %8395 = fsub fast float %8343, %8394
  %8396 = fsub fast float %8395, %8332
  %8397 = call float @dx.op.unary.f32(i32 6, float %8396)  ; FAbs(value)
  %8398 = fadd fast float %8395, %8332
  %8399 = fmul fast float %8398, %8263
  %8400 = fadd fast float %8399, %8276
  %8401 = fmul fast float %8400, %8397
  %8402 = fsub fast float %8338, %8401
  br label %8414

; <label>:8403                                    ; preds = %8331
  br i1 %8345, label %8404, label %8414

; <label>:8404                                    ; preds = %8403
  %8405 = call float @dx.op.binary.f32(i32 35, float %8333, float %8343)  ; FMax(a,b)
  %8406 = icmp eq i32 %8282, 0
  %8407 = select i1 %8406, float %8343, float 0.000000e+00
  %8408 = fsub fast float -0.000000e+00, %8407
  %8409 = call float @dx.op.unary.f32(i32 6, float %8408)  ; FAbs(value)
  %8410 = fmul fast float %8407, %8263
  %8411 = fadd fast float %8410, %8276
  %8412 = fmul fast float %8409, %8411
  %8413 = fsub fast float %8338, %8412
  br label %8414

; <label>:8414                                    ; preds = %8404, %8403, %8393, %8392
  %8415 = phi float [ %8333, %8392 ], [ %8333, %8393 ], [ %8405, %8404 ], [ %8333, %8403 ]
  %8416 = phi float [ 0.000000e+00, %8392 ], [ %8397, %8393 ], [ %8409, %8404 ], [ 0.000000e+00, %8403 ]
  %8417 = phi float [ %8338, %8392 ], [ %8402, %8393 ], [ %8413, %8404 ], [ %8338, %8403 ]
  %8418 = phi float [ %8343, %8392 ], [ %8343, %8393 ], [ %8332, %8404 ], [ %8332, %8403 ]
  %8419 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %8419, align 4, !tbaa !107, !noalias !118
  %8420 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %8420, align 4, !tbaa !107, !noalias !118
  %8421 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %8421, align 4, !tbaa !107, !noalias !118
  %8422 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %8422, align 4, !tbaa !107, !noalias !118
  %8423 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %8423, align 4, !tbaa !107, !noalias !118
  %8424 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %8424, align 4, !tbaa !107, !noalias !118
  %8425 = icmp sgt i32 %8284, 0
  br i1 %8425, label %8426, label %8487

; <label>:8426                                    ; preds = %8414
  br label %8427

; <label>:8427                                    ; preds = %8476, %8426
  %8428 = phi i32 [ %8477, %8476 ], [ 0, %8426 ]
  %8429 = phi i32 [ %8478, %8476 ], [ 0, %8426 ]
  %8430 = add nuw i32 %8429, 171
  %8431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %8430)  ; CBufferLoadLegacy(handle,regIndex)
  %8432 = extractvalue %dx.types.CBufRet.f32 %8431, 0
  %8433 = extractvalue %dx.types.CBufRet.f32 %8431, 1
  %8434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8435 = extractvalue %dx.types.CBufRet.f32 %8434, 0
  %8436 = extractvalue %dx.types.CBufRet.f32 %8434, 1
  %8437 = fsub fast float %8432, %8435
  %8438 = fsub fast float %8433, %8436
  %8439 = extractvalue %dx.types.CBufRet.f32 %8431, 2
  %8440 = fsub fast float -0.000000e+00, %8437
  %8441 = fsub fast float -0.000000e+00, %8438
  %8442 = call float @dx.op.dot2.f32(i32 54, float %8261, float %8262, float %8440, float %8441)  ; Dot2(ax,ay,bx,by)
  %8443 = fmul fast float %8442, 2.000000e+00
  %8444 = call float @dx.op.dot2.f32(i32 54, float %8440, float %8441, float %8440, float %8441)  ; Dot2(ax,ay,bx,by)
  %8445 = fmul fast float %8439, %8439
  %8446 = fsub fast float %8444, %8445
  %8447 = fmul fast float %8443, %8443
  %8448 = fmul fast float %8304, %8446
  %8449 = fsub fast float %8447, %8448
  %8450 = fcmp fast ogt float %8449, 0.000000e+00
  br i1 %8450, label %8451, label %8466

; <label>:8451                                    ; preds = %8427
  %8452 = fcmp fast ogt float %8443, 0.000000e+00
  %8453 = call float @dx.op.unary.f32(i32 24, float %8449)  ; Sqrt(value)
  %8454 = fsub fast float -0.000000e+00, %8453
  %8455 = select i1 %8452, float %8453, float %8454
  %8456 = fadd fast float %8455, %8443
  %8457 = fmul float %8456, -5.000000e-01
  %8458 = fdiv fast float %8457, %8297
  %8459 = call float @dx.op.binary.f32(i32 35, float %8458, float 0.000000e+00)  ; FMax(a,b)
  %8460 = call float @dx.op.binary.f32(i32 36, float %8332, float %8459)  ; FMin(a,b)
  %8461 = fdiv fast float %8446, %8457
  %8462 = call float @dx.op.binary.f32(i32 35, float %8461, float 0.000000e+00)  ; FMax(a,b)
  %8463 = call float @dx.op.binary.f32(i32 36, float %8332, float %8462)  ; FMin(a,b)
  %8464 = call float @dx.op.binary.f32(i32 36, float %8460, float %8463)  ; FMin(a,b)
  %8465 = call float @dx.op.binary.f32(i32 35, float %8460, float %8463)  ; FMax(a,b)
  br label %8466

; <label>:8466                                    ; preds = %8451, %8427
  %8467 = phi float [ %8465, %8451 ], [ -1.000000e+00, %8427 ]
  %8468 = phi float [ %8464, %8451 ], [ -1.000000e+00, %8427 ]
  %8469 = phi i1 [ true, %8451 ], [ false, %8427 ]
  br i1 %8469, label %8470, label %8476

; <label>:8470                                    ; preds = %8466
  %8471 = call float @dx.op.binary.f32(i32 35, float %8415, float %8468)  ; FMax(a,b)
  %8472 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8429
  store float %8471, float* %8472, align 4, !tbaa !107, !noalias !118
  %8473 = call float @dx.op.binary.f32(i32 35, float %8415, float %8467)  ; FMax(a,b)
  %8474 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8429
  store float %8473, float* %8474, align 4, !tbaa !107, !noalias !118
  %8475 = add nsw i32 %8428, 1
  br label %8476

; <label>:8476                                    ; preds = %8470, %8466
  %8477 = phi i32 [ %8475, %8470 ], [ %8428, %8466 ]
  %8478 = add nuw nsw i32 %8429, 1
  %8479 = icmp eq i32 %8478, %8284
  br i1 %8479, label %8480, label %8427

; <label>:8480                                    ; preds = %8476
  %8481 = load float, float* %8421, align 4, !tbaa !107, !alias.scope !134, !noalias !137
  %8482 = load float, float* %8420, align 4, !tbaa !107, !alias.scope !140, !noalias !141
  %8483 = load float, float* %8419, align 4, !tbaa !107, !alias.scope !142, !noalias !143
  %8484 = load float, float* %8424, align 4, !tbaa !107, !alias.scope !144, !noalias !147
  %8485 = load float, float* %8423, align 4, !tbaa !107, !alias.scope !150, !noalias !151
  %8486 = load float, float* %8422, align 4, !tbaa !107, !alias.scope !152, !noalias !153
  br label %8487

; <label>:8487                                    ; preds = %8480, %8414
  %8488 = phi float [ -1.000000e+00, %8414 ], [ %8486, %8480 ]
  %8489 = phi float [ -1.000000e+00, %8414 ], [ %8485, %8480 ]
  %8490 = phi float [ -1.000000e+00, %8414 ], [ %8484, %8480 ]
  %8491 = phi float [ -1.000000e+00, %8414 ], [ %8483, %8480 ]
  %8492 = phi float [ -1.000000e+00, %8414 ], [ %8482, %8480 ]
  %8493 = phi float [ -1.000000e+00, %8414 ], [ %8481, %8480 ]
  %8494 = phi i32 [ 0, %8414 ], [ %8477, %8480 ]
  %8495 = call float @dx.op.binary.f32(i32 36, float %8492, float %8493)  ; FMin(a,b)
  %8496 = call float @dx.op.binary.f32(i32 36, float %8491, float %8495)  ; FMin(a,b)
  %8497 = call float @dx.op.binary.f32(i32 35, float %8491, float %8492)  ; FMax(a,b)
  %8498 = call float @dx.op.binary.f32(i32 36, float %8497, float %8493)  ; FMin(a,b)
  %8499 = call float @dx.op.binary.f32(i32 36, float %8491, float %8492)  ; FMin(a,b)
  %8500 = call float @dx.op.binary.f32(i32 35, float %8499, float %8498)  ; FMax(a,b)
  %8501 = call float @dx.op.binary.f32(i32 35, float %8492, float %8493)  ; FMax(a,b)
  %8502 = call float @dx.op.binary.f32(i32 35, float %8491, float %8501)  ; FMax(a,b)
  store float %8496, float* %8419, align 4, !tbaa !107, !alias.scope !142, !noalias !143
  store float %8500, float* %8420, align 4, !tbaa !107, !alias.scope !140, !noalias !141
  store float %8502, float* %8421, align 4, !tbaa !107, !alias.scope !134, !noalias !137
  %8503 = call float @dx.op.binary.f32(i32 36, float %8489, float %8490)  ; FMin(a,b)
  %8504 = call float @dx.op.binary.f32(i32 36, float %8488, float %8503)  ; FMin(a,b)
  %8505 = call float @dx.op.binary.f32(i32 35, float %8488, float %8489)  ; FMax(a,b)
  %8506 = call float @dx.op.binary.f32(i32 36, float %8505, float %8490)  ; FMin(a,b)
  %8507 = call float @dx.op.binary.f32(i32 36, float %8488, float %8489)  ; FMin(a,b)
  %8508 = call float @dx.op.binary.f32(i32 35, float %8507, float %8506)  ; FMax(a,b)
  %8509 = call float @dx.op.binary.f32(i32 35, float %8489, float %8490)  ; FMax(a,b)
  %8510 = call float @dx.op.binary.f32(i32 35, float %8488, float %8509)  ; FMax(a,b)
  store float %8504, float* %8422, align 4, !tbaa !107, !alias.scope !152, !noalias !153
  store float %8508, float* %8423, align 4, !tbaa !107, !alias.scope !150, !noalias !151
  store float %8510, float* %8424, align 4, !tbaa !107, !alias.scope !144, !noalias !147
  %8511 = sub nsw i32 3, %8494
  %8512 = icmp sgt i32 %8511, 2
  br i1 %8512, label %8513, label %8551

; <label>:8513                                    ; preds = %8487
  %8514 = icmp eq i32 %8282, 0
  %8515 = fsub fast float %8332, %8416
  %8516 = select i1 %8514, float %8515, float %8416
  %8517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8518 = extractvalue %dx.types.CBufRet.f32 %8517, 0
  %8519 = extractvalue %dx.types.CBufRet.f32 %8517, 1
  %8520 = extractvalue %dx.types.CBufRet.f32 %8517, 2
  %8521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8522 = extractvalue %dx.types.CBufRet.f32 %8521, 0
  %8523 = extractvalue %dx.types.CBufRet.f32 %8521, 1
  %8524 = extractvalue %dx.types.CBufRet.f32 %8521, 2
  %8525 = extractvalue %dx.types.CBufRet.f32 %8521, 3
  %8526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8527 = extractvalue %dx.types.CBufRet.f32 %8526, 3
  %8528 = call float @dx.op.binary.f32(i32 36, float %8417, float %8527)  ; FMin(a,b)
  %8529 = fmul fast float %8525, %8516
  %8530 = call float @dx.op.unary.f32(i32 7, float %8529)  ; Saturate(value)
  %8531 = fsub fast float %8522, %8518
  %8532 = fsub fast float %8523, %8519
  %8533 = fsub fast float %8524, %8520
  %8534 = fmul fast float %8530, %8531
  %8535 = fmul fast float %8530, %8532
  %8536 = fmul fast float %8530, %8533
  %8537 = fadd fast float %8534, %8518
  %8538 = fadd fast float %8535, %8519
  %8539 = fadd fast float %8536, %8520
  %8540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8541 = extractvalue %dx.types.CBufRet.f32 %8540, 0
  %8542 = extractvalue %dx.types.CBufRet.f32 %8540, 1
  %8543 = fadd fast float %8542, %8541
  %8544 = call float @dx.op.unary.f32(i32 7, float %8543)  ; Saturate(value)
  %8545 = extractvalue %dx.types.CBufRet.f32 %8540, 2
  %8546 = extractvalue %dx.types.CBufRet.f32 %8540, 3
  %8547 = fadd fast float %8546, %8545
  %8548 = call float @dx.op.unary.f32(i32 7, float %8547)  ; Saturate(value)
  %8549 = fmul fast float %8544, %8528
  %8550 = fmul fast float %8549, %8548
  br label %8633

; <label>:8551                                    ; preds = %8487
  %8552 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8511
  %8553 = load float, float* %8552, align 4, !tbaa !107, !noalias !118
  %8554 = fcmp fast olt float %8553, %8418
  %8555 = icmp sgt i32 %8494, 0
  %8556 = and i1 %8555, %8554
  br i1 %8556, label %8557, label %8594

; <label>:8557                                    ; preds = %8551
  br label %8558

; <label>:8558                                    ; preds = %8587, %8557
  %8559 = phi float [ %8588, %8587 ], [ %8416, %8557 ]
  %8560 = phi float [ %8589, %8587 ], [ %8417, %8557 ]
  %8561 = phi float [ %8569, %8587 ], [ %8553, %8557 ]
  %8562 = phi i32 [ %8566, %8587 ], [ %8511, %8557 ]
  %8563 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8562
  %8564 = load float, float* %8563, align 4, !tbaa !107, !noalias !118
  %8565 = icmp slt i32 %8562, 2
  %8566 = add nsw i32 %8562, 1
  %8567 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8566
  %8568 = load float, float* %8567, align 4, !tbaa !107, !noalias !118
  %8569 = select i1 %8565, float %8568, float %8332
  %8570 = call float @dx.op.binary.f32(i32 36, float %8569, float %8564)  ; FMin(a,b)
  %8571 = call float @dx.op.binary.f32(i32 36, float %8418, float %8570)  ; FMin(a,b)
  %8572 = icmp eq i32 %8282, 0
  %8573 = fadd fast float %8571, %8561
  %8574 = fmul fast float %8573, %8263
  %8575 = fadd fast float %8574, %8276
  br i1 %8572, label %8581, label %8576

; <label>:8576                                    ; preds = %8558
  %8577 = fsub fast float %8571, %8561
  %8578 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8577)  ; FMax(a,b)
  %8579 = fmul fast float %8578, %8575
  %8580 = fadd fast float %8579, %8560
  br label %8587

; <label>:8581                                    ; preds = %8558
  %8582 = fsub fast float %8561, %8571
  %8583 = call float @dx.op.unary.f32(i32 6, float %8582)  ; FAbs(value)
  %8584 = fadd fast float %8583, %8559
  %8585 = fmul fast float %8583, %8575
  %8586 = fsub fast float %8560, %8585
  br label %8587

; <label>:8587                                    ; preds = %8581, %8576
  %8588 = phi float [ %8578, %8576 ], [ %8584, %8581 ]
  %8589 = phi float [ %8580, %8576 ], [ %8586, %8581 ]
  %8590 = fcmp fast olt float %8569, %8418
  %8591 = icmp slt i32 %8566, 3
  %8592 = and i1 %8591, %8590
  br i1 %8592, label %8558, label %8593

; <label>:8593                                    ; preds = %8587
  br label %8594

; <label>:8594                                    ; preds = %8593, %8551
  %8595 = phi float [ %8416, %8551 ], [ %8588, %8593 ]
  %8596 = phi float [ %8417, %8551 ], [ %8589, %8593 ]
  %8597 = fsub fast float %8332, %8595
  %8598 = select i1 %8334, float %8595, float %8597
  %8599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8600 = extractvalue %dx.types.CBufRet.f32 %8599, 0
  %8601 = extractvalue %dx.types.CBufRet.f32 %8599, 1
  %8602 = extractvalue %dx.types.CBufRet.f32 %8599, 2
  %8603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8604 = extractvalue %dx.types.CBufRet.f32 %8603, 0
  %8605 = extractvalue %dx.types.CBufRet.f32 %8603, 1
  %8606 = extractvalue %dx.types.CBufRet.f32 %8603, 2
  %8607 = extractvalue %dx.types.CBufRet.f32 %8603, 3
  %8608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8609 = extractvalue %dx.types.CBufRet.f32 %8608, 3
  %8610 = call float @dx.op.binary.f32(i32 36, float %8596, float %8609)  ; FMin(a,b)
  %8611 = fmul fast float %8607, %8598
  %8612 = call float @dx.op.unary.f32(i32 7, float %8611)  ; Saturate(value)
  %8613 = fsub fast float %8604, %8600
  %8614 = fsub fast float %8605, %8601
  %8615 = fsub fast float %8606, %8602
  %8616 = fmul fast float %8612, %8613
  %8617 = fmul fast float %8612, %8614
  %8618 = fmul fast float %8612, %8615
  %8619 = fadd fast float %8616, %8600
  %8620 = fadd fast float %8617, %8601
  %8621 = fadd fast float %8618, %8602
  %8622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8623 = extractvalue %dx.types.CBufRet.f32 %8622, 0
  %8624 = extractvalue %dx.types.CBufRet.f32 %8622, 1
  %8625 = fadd fast float %8624, %8623
  %8626 = call float @dx.op.unary.f32(i32 7, float %8625)  ; Saturate(value)
  %8627 = extractvalue %dx.types.CBufRet.f32 %8622, 2
  %8628 = extractvalue %dx.types.CBufRet.f32 %8622, 3
  %8629 = fadd fast float %8628, %8627
  %8630 = call float @dx.op.unary.f32(i32 7, float %8629)  ; Saturate(value)
  %8631 = fmul fast float %8626, %8610
  %8632 = fmul fast float %8631, %8630
  br label %8633

; <label>:8633                                    ; preds = %8594, %8513, %8348, %8330, %8328
  %8634 = phi float [ %8357, %8348 ], [ %8516, %8513 ], [ %8598, %8594 ], [ 0.000000e+00, %8328 ], [ 0.000000e+00, %8330 ]
  %8635 = phi float [ %8391, %8348 ], [ %8550, %8513 ], [ %8632, %8594 ], [ 0.000000e+00, %8328 ], [ 0.000000e+00, %8330 ]
  %8636 = phi float [ %8378, %8348 ], [ %8537, %8513 ], [ %8619, %8594 ], [ 0.000000e+00, %8328 ], [ 0.000000e+00, %8330 ]
  %8637 = phi float [ %8379, %8348 ], [ %8538, %8513 ], [ %8620, %8594 ], [ 0.000000e+00, %8328 ], [ 0.000000e+00, %8330 ]
  %8638 = phi float [ %8380, %8348 ], [ %8539, %8513 ], [ %8621, %8594 ], [ 0.000000e+00, %8328 ], [ 0.000000e+00, %8330 ]
  %8639 = fmul fast float %8271, %8635
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 2
  %8642 = fsub fast float %8278, %8641
  %8643 = fcmp fast olt float %8639, -2.000000e+01
  %8644 = call float @dx.op.unary.f32(i32 21, float %8639)  ; Exp(value)
  %8645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8646 = extractvalue %dx.types.CBufRet.f32 %8645, 2
  %8647 = extractvalue %dx.types.CBufRet.f32 %8645, 3
  %8648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8649 = extractvalue %dx.types.CBufRet.f32 %8648, 2
  %8650 = fmul fast float %8647, %8642
  %8651 = call float @dx.op.unary.f32(i32 7, float %8650)  ; Saturate(value)
  %8652 = fsub fast float 1.000000e+00, %8651
  %8653 = fmul fast float %8263, 5.000000e-01
  %8654 = fadd fast float %8653, 5.000000e-01
  %8655 = call float @dx.op.unary.f32(i32 7, float %8654)  ; Saturate(value)
  %8656 = fsub fast float 1.000000e+00, %8655
  %8657 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8652)  ; FMax(a,b)
  %8658 = fdiv fast float %8656, %8657
  %8659 = fsub fast float %8642, %8220
  %8660 = call float @dx.op.unary.f32(i32 6, float %8659)  ; FAbs(value)
  %8661 = fmul fast float %8660, %8646
  %8662 = call float @dx.op.unary.f32(i32 7, float %8658)  ; Saturate(value)
  %8663 = fsub fast float 1.000000e+00, %8661
  %8664 = fmul fast float %8663, %8662
  %8665 = fadd fast float %8664, %8661
  %8666 = fmul fast float %8649, %8642
  %8667 = call float @dx.op.unary.f32(i32 7, float %8666)  ; Saturate(value)
  %8668 = fsub fast float 1.000000e+00, %8665
  %8669 = fmul fast float %8668, %8667
  %8670 = fadd fast float %8669, %8665
  %8671 = call float @dx.op.unary.f32(i32 7, float %8670)  ; Saturate(value)
  %8672 = fadd fast float %8644, -1.000000e+00
  %8673 = select i1 %8643, float -1.000000e+00, float %8672
  %8674 = fmul fast float %8671, %8673
  %8675 = fadd fast float %8674, 1.000000e+00
  %8676 = fsub fast float -0.000000e+00, %8674
  %8677 = fmul fast float %8636, %8676
  %8678 = fmul fast float %8637, %8676
  %8679 = fmul fast float %8638, %8676
  br label %8680

; <label>:8680                                    ; preds = %8633, %8229
  %8681 = phi float [ %8634, %8633 ], [ 0.000000e+00, %8229 ]
  %8682 = phi float [ %8675, %8633 ], [ 1.000000e+00, %8229 ]
  %8683 = phi float [ %8677, %8633 ], [ 0.000000e+00, %8229 ]
  %8684 = phi float [ %8678, %8633 ], [ 0.000000e+00, %8229 ]
  %8685 = phi float [ %8679, %8633 ], [ 0.000000e+00, %8229 ]
  %8686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8687 = extractvalue %dx.types.CBufRet.f32 %8686, 1
  %8688 = fsub fast float 1.000000e+00, %8682
  %8689 = fmul fast float %8688, %8264
  %8690 = fmul fast float %8689, %8687
  %8691 = fsub fast float %8264, %8690
  br i1 %8257, label %8692, label %8721, !dx.controlflow.hints !154

; <label>:8692                                    ; preds = %8680
  %8693 = fmul fast float %8265, %8254
  %8694 = fadd fast float %8693, %8255
  %8695 = call float @dx.op.unary.f32(i32 7, float %8694)  ; Saturate(value)
  %8696 = fmul fast float %8236, %8691
  %8697 = fsub fast float -0.000000e+00, %8696
  %8698 = fmul fast float %8237, %8691
  %8699 = fsub fast float -0.000000e+00, %8698
  %8700 = call float @dx.op.unary.f32(i32 21, float %8697)  ; Exp(value)
  %8701 = call float @dx.op.unary.f32(i32 21, float %8699)  ; Exp(value)
  %8702 = call float @dx.op.binary.f32(i32 35, float %8244, float %8700)  ; FMax(a,b)
  %8703 = call float @dx.op.binary.f32(i32 35, float %8244, float %8701)  ; FMax(a,b)
  %8704 = fsub fast float %8703, %8702
  %8705 = fmul fast float %8704, %8695
  %8706 = fadd fast float %8705, %8702
  %8707 = call float @dx.op.unary.f32(i32 7, float %8706)  ; Saturate(value)
  %8708 = fsub fast float %8241, %8246
  %8709 = fsub fast float %8242, %8247
  %8710 = fsub fast float %8243, %8248
  %8711 = fmul fast float %8695, %8708
  %8712 = fmul fast float %8695, %8709
  %8713 = fmul fast float %8695, %8710
  %8714 = fadd fast float %8711, %8246
  %8715 = fadd fast float %8712, %8247
  %8716 = fadd fast float %8713, %8248
  %8717 = fsub fast float 1.000000e+00, %8707
  %8718 = fmul fast float %8717, %8714
  %8719 = fmul fast float %8717, %8715
  %8720 = fmul fast float %8717, %8716
  br label %8780

; <label>:8721                                    ; preds = %8680
  %8722 = fmul fast float %8691, %8253
  %8723 = call float @dx.op.unary.f32(i32 7, float %8722)  ; Saturate(value)
  %8724 = fsub fast float 2.000000e+00, %8723
  %8725 = fmul fast float %8723, 9.921875e-01
  %8726 = fmul fast float %8725, %8724
  %8727 = fadd fast float %8726, 3.906250e-03
  %8728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %8727, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8729 = extractvalue %dx.types.ResRet.f32 %8728, 0
  %8730 = fsub fast float %8723, %8729
  %8731 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8730)  ; FMax(a,b)
  %8732 = fmul fast float %8239, %8220
  %8733 = call float @dx.op.unary.f32(i32 6, float %8732)  ; FAbs(value)
  %8734 = fcmp fast ogt float %8733, 0x3EB0C6F7A0000000
  br i1 %8734, label %8735, label %8741, !dx.controlflow.hints !155

; <label>:8735                                    ; preds = %8721
  %8736 = fmul fast float %8732, 0xBFF7154760000000
  %8737 = call float @dx.op.unary.f32(i32 21, float %8736)  ; Exp(value)
  %8738 = fsub fast float 1.000000e+00, %8737
  %8739 = fdiv fast float %8738, %8732
  %8740 = fmul fast float %8739, %8249
  br label %8741

; <label>:8741                                    ; preds = %8735, %8721
  %8742 = phi float [ %8740, %8735 ], [ %8249, %8721 ]
  %8743 = fadd fast float %8742, %8251
  %8744 = fmul fast float %8743, %8731
  %8745 = fmul fast float %8236, %8744
  %8746 = fsub fast float -0.000000e+00, %8745
  %8747 = fmul fast float %8237, %8744
  %8748 = fsub fast float -0.000000e+00, %8747
  %8749 = fmul fast float %8238, %8744
  %8750 = fsub fast float -0.000000e+00, %8749
  %8751 = call float @dx.op.unary.f32(i32 21, float %8746)  ; Exp(value)
  %8752 = call float @dx.op.unary.f32(i32 21, float %8748)  ; Exp(value)
  %8753 = call float @dx.op.unary.f32(i32 21, float %8750)  ; Exp(value)
  %8754 = fmul fast float %8265, %8265
  %8755 = fadd fast float %8754, 1.000000e+00
  %8756 = fmul fast float %8755, 0x3FAE8EC8A0000000
  %8757 = fmul fast float %8756, %8246
  %8758 = fmul fast float %8756, %8247
  %8759 = fmul fast float %8756, %8248
  %8760 = fmul fast float %8265, %8244
  %8761 = fsub fast float 1.000000e+00, %8760
  %8762 = fmul fast float %8244, %8244
  %8763 = fsub fast float 1.000000e+00, %8762
  %8764 = fmul fast float %8763, 0x3FB45F3060000000
  %8765 = fmul fast float %8761, %8761
  %8766 = fdiv fast float 1.000000e+00, %8765
  %8767 = fmul fast float %8764, %8766
  %8768 = fmul fast float %8767, %8241
  %8769 = fmul fast float %8767, %8242
  %8770 = fmul fast float %8767, %8243
  %8771 = fadd fast float %8768, %8757
  %8772 = fadd fast float %8769, %8758
  %8773 = fadd fast float %8770, %8759
  %8774 = fsub fast float 1.000000e+00, %8751
  %8775 = fsub fast float 1.000000e+00, %8752
  %8776 = fsub fast float 1.000000e+00, %8753
  %8777 = fmul fast float %8771, %8774
  %8778 = fmul fast float %8772, %8775
  %8779 = fmul fast float %8773, %8776
  br label %8780

; <label>:8780                                    ; preds = %8741, %8692
  %8781 = phi float [ %8718, %8692 ], [ %8777, %8741 ]
  %8782 = phi float [ %8719, %8692 ], [ %8778, %8741 ]
  %8783 = phi float [ %8720, %8692 ], [ %8779, %8741 ]
  %8784 = phi float [ %8707, %8692 ], [ %8751, %8741 ]
  %8785 = phi float [ %8707, %8692 ], [ %8752, %8741 ]
  %8786 = phi float [ %8707, %8692 ], [ %8753, %8741 ]
  br i1 %8273, label %8787, label %8985, !dx.controlflow.hints !156

; <label>:8787                                    ; preds = %8780
  %8788 = extractvalue %dx.types.CBufRet.f32 %8686, 0
  %8789 = fmul fast float %8788, %8688
  %8790 = fsub fast float %8683, %8781
  %8791 = fsub fast float %8684, %8782
  %8792 = fsub fast float %8685, %8783
  %8793 = fmul fast float %8789, %8790
  %8794 = fmul fast float %8789, %8791
  %8795 = fmul fast float %8789, %8792
  %8796 = fadd fast float %8793, %8781
  %8797 = fadd fast float %8794, %8782
  %8798 = fadd fast float %8795, %8783
  %8799 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8784)  ; FMax(a,b)
  %8800 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8785)  ; FMax(a,b)
  %8801 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8786)  ; FMax(a,b)
  %8802 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8682)  ; FMax(a,b)
  %8803 = call float @dx.op.binary.f32(i32 35, float %8681, float %8691)  ; FMax(a,b)
  %8804 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8803)  ; FMax(a,b)
  %8805 = fdiv fast float %8681, %8804
  %8806 = call float @dx.op.unary.f32(i32 7, float %8805)  ; Saturate(value)
  %8807 = fdiv fast float %8691, %8804
  %8808 = call float @dx.op.unary.f32(i32 7, float %8807)  ; Saturate(value)
  %8809 = fcmp fast une float %8802, 1.000000e+00
  br i1 %8809, label %8810, label %8823, !dx.controlflow.hints !157

; <label>:8810                                    ; preds = %8787
  %8811 = call float @dx.op.unary.f32(i32 23, float %8802)  ; Log(value)
  %8812 = fmul fast float %8811, 0x3FE62E4300000000
  %8813 = fmul fast float %8683, %8812
  %8814 = fsub fast float -0.000000e+00, %8813
  %8815 = fmul fast float %8684, %8812
  %8816 = fsub fast float -0.000000e+00, %8815
  %8817 = fmul fast float %8685, %8812
  %8818 = fsub fast float -0.000000e+00, %8817
  %8819 = fsub fast float 1.000000e+00, %8802
  %8820 = fdiv fast float %8814, %8819
  %8821 = fdiv fast float %8816, %8819
  %8822 = fdiv fast float %8818, %8819
  br label %8823

; <label>:8823                                    ; preds = %8810, %8787
  %8824 = phi float [ %8820, %8810 ], [ %8683, %8787 ]
  %8825 = phi float [ %8821, %8810 ], [ %8684, %8787 ]
  %8826 = phi float [ %8822, %8810 ], [ %8685, %8787 ]
  %8827 = phi float [ %8812, %8810 ], [ 0.000000e+00, %8787 ]
  %8828 = fcmp fast une float %8799, 1.000000e+00
  br i1 %8828, label %8829, label %8836, !dx.controlflow.hints !158

; <label>:8829                                    ; preds = %8823
  %8830 = call float @dx.op.unary.f32(i32 23, float %8799)  ; Log(value)
  %8831 = fmul fast float %8830, 0x3FE62E4300000000
  %8832 = fmul fast float %8796, %8831
  %8833 = fsub fast float -0.000000e+00, %8832
  %8834 = fsub fast float 1.000000e+00, %8799
  %8835 = fdiv fast float %8833, %8834
  br label %8836

; <label>:8836                                    ; preds = %8829, %8823
  %8837 = phi float [ %8835, %8829 ], [ %8796, %8823 ]
  %8838 = phi float [ %8831, %8829 ], [ 0.000000e+00, %8823 ]
  %8839 = fcmp fast une float %8800, 1.000000e+00
  br i1 %8839, label %8840, label %8847, !dx.controlflow.hints !158

; <label>:8840                                    ; preds = %8836
  %8841 = call float @dx.op.unary.f32(i32 23, float %8800)  ; Log(value)
  %8842 = fmul fast float %8841, 0x3FE62E4300000000
  %8843 = fmul fast float %8797, %8842
  %8844 = fsub fast float -0.000000e+00, %8843
  %8845 = fsub fast float 1.000000e+00, %8800
  %8846 = fdiv fast float %8844, %8845
  br label %8847

; <label>:8847                                    ; preds = %8840, %8836
  %8848 = phi float [ %8846, %8840 ], [ %8797, %8836 ]
  %8849 = phi float [ %8842, %8840 ], [ 0.000000e+00, %8836 ]
  %8850 = fcmp fast une float %8801, 1.000000e+00
  br i1 %8850, label %8851, label %8858, !dx.controlflow.hints !158

; <label>:8851                                    ; preds = %8847
  %8852 = call float @dx.op.unary.f32(i32 23, float %8801)  ; Log(value)
  %8853 = fmul fast float %8852, 0x3FE62E4300000000
  %8854 = fmul fast float %8798, %8853
  %8855 = fsub fast float -0.000000e+00, %8854
  %8856 = fsub fast float 1.000000e+00, %8801
  %8857 = fdiv fast float %8855, %8856
  br label %8858

; <label>:8858                                    ; preds = %8851, %8847
  %8859 = phi float [ %8857, %8851 ], [ %8798, %8847 ]
  %8860 = phi float [ %8853, %8851 ], [ 0.000000e+00, %8847 ]
  %8861 = fmul fast float %8824, %8808
  %8862 = fmul fast float %8825, %8808
  %8863 = fmul fast float %8826, %8808
  %8864 = fmul fast float %8827, %8808
  %8865 = fmul fast float %8837, %8806
  %8866 = fmul fast float %8848, %8806
  %8867 = fmul fast float %8859, %8806
  %8868 = fmul fast float %8838, %8806
  %8869 = fmul fast float %8849, %8806
  %8870 = fmul fast float %8860, %8806
  %8871 = fadd fast float %8865, %8861
  %8872 = fadd fast float %8866, %8862
  %8873 = fadd fast float %8867, %8863
  %8874 = fadd fast float %8868, %8864
  %8875 = fadd fast float %8869, %8864
  %8876 = fadd fast float %8870, %8864
  %8877 = fcmp fast une float %8874, 0.000000e+00
  br i1 %8877, label %8878, label %8885, !dx.controlflow.hints !159

; <label>:8878                                    ; preds = %8858
  %8879 = fmul fast float %8874, 0x3FF7154760000000
  %8880 = call float @dx.op.unary.f32(i32 21, float %8879)  ; Exp(value)
  %8881 = fsub fast float 1.000000e+00, %8880
  %8882 = fmul fast float %8871, %8881
  %8883 = fsub fast float -0.000000e+00, %8882
  %8884 = fdiv fast float %8883, %8874
  br label %8885

; <label>:8885                                    ; preds = %8878, %8858
  %8886 = phi float [ %8880, %8878 ], [ 1.000000e+00, %8858 ]
  %8887 = phi float [ %8884, %8878 ], [ %8871, %8858 ]
  %8888 = fcmp fast une float %8875, 0.000000e+00
  br i1 %8888, label %8889, label %8896, !dx.controlflow.hints !159

; <label>:8889                                    ; preds = %8885
  %8890 = fmul fast float %8875, 0x3FF7154760000000
  %8891 = call float @dx.op.unary.f32(i32 21, float %8890)  ; Exp(value)
  %8892 = fsub fast float 1.000000e+00, %8891
  %8893 = fmul fast float %8872, %8892
  %8894 = fsub fast float -0.000000e+00, %8893
  %8895 = fdiv fast float %8894, %8875
  br label %8896

; <label>:8896                                    ; preds = %8889, %8885
  %8897 = phi float [ %8891, %8889 ], [ 1.000000e+00, %8885 ]
  %8898 = phi float [ %8895, %8889 ], [ %8872, %8885 ]
  %8899 = fcmp fast une float %8876, 0.000000e+00
  br i1 %8899, label %8900, label %8907, !dx.controlflow.hints !159

; <label>:8900                                    ; preds = %8896
  %8901 = fmul fast float %8876, 0x3FF7154760000000
  %8902 = call float @dx.op.unary.f32(i32 21, float %8901)  ; Exp(value)
  %8903 = fsub fast float 1.000000e+00, %8902
  %8904 = fmul fast float %8873, %8903
  %8905 = fsub fast float -0.000000e+00, %8904
  %8906 = fdiv fast float %8905, %8876
  br label %8907

; <label>:8907                                    ; preds = %8900, %8896
  %8908 = phi float [ %8902, %8900 ], [ 1.000000e+00, %8896 ]
  %8909 = phi float [ %8906, %8900 ], [ %8873, %8896 ]
  %8910 = fcmp fast ogt float %8806, %8808
  br i1 %8910, label %8911, label %8931

; <label>:8911                                    ; preds = %8907
  %8912 = fsub fast float 1.000000e+00, %8808
  %8913 = fmul fast float %8824, %8912
  %8914 = fmul fast float %8825, %8912
  %8915 = fmul fast float %8826, %8912
  %8916 = fmul fast float %8827, %8912
  %8917 = fcmp fast une float %8916, 0.000000e+00
  br i1 %8917, label %8918, label %8969, !dx.controlflow.hints !160

; <label>:8918                                    ; preds = %8911
  %8919 = fmul fast float %8916, 0x3FF7154760000000
  %8920 = call float @dx.op.unary.f32(i32 21, float %8919)  ; Exp(value)
  %8921 = fsub fast float 1.000000e+00, %8920
  %8922 = fmul fast float %8913, %8921
  %8923 = fsub fast float -0.000000e+00, %8922
  %8924 = fmul fast float %8914, %8921
  %8925 = fsub fast float -0.000000e+00, %8924
  %8926 = fmul fast float %8915, %8921
  %8927 = fsub fast float -0.000000e+00, %8926
  %8928 = fdiv fast float %8923, %8916
  %8929 = fdiv fast float %8925, %8916
  %8930 = fdiv fast float %8927, %8916
  br label %8969

; <label>:8931                                    ; preds = %8907
  %8932 = fsub fast float 1.000000e+00, %8806
  %8933 = fmul fast float %8837, %8932
  %8934 = fmul fast float %8848, %8932
  %8935 = fmul fast float %8859, %8932
  %8936 = fmul fast float %8838, %8932
  %8937 = fmul fast float %8849, %8932
  %8938 = fmul fast float %8860, %8932
  %8939 = fcmp fast une float %8936, 0.000000e+00
  br i1 %8939, label %8940, label %8947, !dx.controlflow.hints !159

; <label>:8940                                    ; preds = %8931
  %8941 = fmul fast float %8936, 0x3FF7154760000000
  %8942 = call float @dx.op.unary.f32(i32 21, float %8941)  ; Exp(value)
  %8943 = fsub fast float 1.000000e+00, %8942
  %8944 = fmul fast float %8933, %8943
  %8945 = fsub fast float -0.000000e+00, %8944
  %8946 = fdiv fast float %8945, %8936
  br label %8947

; <label>:8947                                    ; preds = %8940, %8931
  %8948 = phi float [ %8946, %8940 ], [ %8933, %8931 ]
  %8949 = phi float [ %8942, %8940 ], [ 1.000000e+00, %8931 ]
  %8950 = fcmp fast une float %8937, 0.000000e+00
  br i1 %8950, label %8951, label %8958, !dx.controlflow.hints !159

; <label>:8951                                    ; preds = %8947
  %8952 = fmul fast float %8937, 0x3FF7154760000000
  %8953 = call float @dx.op.unary.f32(i32 21, float %8952)  ; Exp(value)
  %8954 = fsub fast float 1.000000e+00, %8953
  %8955 = fmul fast float %8934, %8954
  %8956 = fsub fast float -0.000000e+00, %8955
  %8957 = fdiv fast float %8956, %8937
  br label %8958

; <label>:8958                                    ; preds = %8951, %8947
  %8959 = phi float [ %8957, %8951 ], [ %8934, %8947 ]
  %8960 = phi float [ %8953, %8951 ], [ 1.000000e+00, %8947 ]
  %8961 = fcmp fast une float %8938, 0.000000e+00
  br i1 %8961, label %8962, label %8969, !dx.controlflow.hints !159

; <label>:8962                                    ; preds = %8958
  %8963 = fmul fast float %8938, 0x3FF7154760000000
  %8964 = call float @dx.op.unary.f32(i32 21, float %8963)  ; Exp(value)
  %8965 = fsub fast float 1.000000e+00, %8964
  %8966 = fmul fast float %8935, %8965
  %8967 = fsub fast float -0.000000e+00, %8966
  %8968 = fdiv fast float %8967, %8938
  br label %8969

; <label>:8969                                    ; preds = %8962, %8958, %8918, %8911
  %8970 = phi float [ %8968, %8962 ], [ %8930, %8918 ], [ %8915, %8911 ], [ %8935, %8958 ]
  %8971 = phi float [ %8959, %8962 ], [ %8929, %8918 ], [ %8914, %8911 ], [ %8959, %8958 ]
  %8972 = phi float [ %8948, %8962 ], [ %8928, %8918 ], [ %8913, %8911 ], [ %8948, %8958 ]
  %8973 = phi float [ %8964, %8962 ], [ %8920, %8918 ], [ 1.000000e+00, %8911 ], [ 1.000000e+00, %8958 ]
  %8974 = phi float [ %8960, %8962 ], [ %8920, %8918 ], [ 1.000000e+00, %8911 ], [ %8960, %8958 ]
  %8975 = phi float [ %8949, %8962 ], [ %8920, %8918 ], [ 1.000000e+00, %8911 ], [ %8949, %8958 ]
  %8976 = fmul fast float %8975, %8887
  %8977 = fmul fast float %8974, %8898
  %8978 = fmul fast float %8973, %8909
  %8979 = fadd fast float %8976, %8972
  %8980 = fadd fast float %8977, %8971
  %8981 = fadd fast float %8978, %8970
  %8982 = fmul fast float %8975, %8886
  %8983 = fmul fast float %8974, %8897
  %8984 = fmul fast float %8973, %8908
  br label %8985

; <label>:8985                                    ; preds = %8969, %8780
  %8986 = phi float [ %8984, %8969 ], [ %8786, %8780 ]
  %8987 = phi float [ %8983, %8969 ], [ %8785, %8780 ]
  %8988 = phi float [ %8982, %8969 ], [ %8784, %8780 ]
  %8989 = phi float [ %8981, %8969 ], [ %8783, %8780 ]
  %8990 = phi float [ %8980, %8969 ], [ %8782, %8780 ]
  %8991 = phi float [ %8979, %8969 ], [ %8781, %8780 ]
  %8992 = fmul fast float %8991, %7937
  %8993 = fmul fast float %8990, %7937
  %8994 = fmul fast float %8989, %7937
  %8995 = fmul fast float %8988, %8228
  %8996 = call float @dx.op.dot3.f32(i32 55, float %8988, float %8987, float %8986, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8997 = call float @dx.op.dot3.f32(i32 55, float %8992, float %8993, float %8994, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8998 = select i1 %213, float %8996, float %8988
  %8999 = select i1 %213, float %8996, float %8987
  %9000 = select i1 %213, float 1.000000e+00, float %8986
  %9001 = select i1 %213, float %8997, float %8992
  %9002 = select i1 %213, float 0.000000e+00, float %8993
  %9003 = select i1 %213, float 0.000000e+00, float %8994
  %9004 = fmul fast float %8998, %8222
  %9005 = fmul fast float %8999, %8223
  %9006 = fmul fast float %9000, %8224
  %9007 = fadd fast float %9004, %9001
  %9008 = fadd fast float %9005, %9002
  %9009 = fadd fast float %9003, %9006
  %9010 = fmul fast float %8998, %8225
  %9011 = fmul fast float %8999, %8226
  %9012 = fmul fast float %9000, %8227
  %9013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.i32 %9013, 0
  %9015 = icmp eq i32 %9014, 0
  br i1 %9015, label %9383, label %9016, !dx.controlflow.hints !161

; <label>:9016                                    ; preds = %8985
  %9017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9018 = extractvalue %dx.types.CBufRet.f32 %9017, 2
  %9019 = extractvalue %dx.types.CBufRet.f32 %9017, 3
  %9020 = fmul fast float %9018, %97
  %9021 = fmul fast float %9019, %98
  %9022 = fmul fast float %9020, 2.000000e+00
  %9023 = fmul fast float %9021, 2.000000e+00
  %9024 = fsub fast float 1.000000e+00, %9022
  %9025 = fsub fast float 1.000000e+00, %9023
  %9026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9027 = extractvalue %dx.types.CBufRet.f32 %9026, 0
  %9028 = extractvalue %dx.types.CBufRet.f32 %9026, 1
  %9029 = extractvalue %dx.types.CBufRet.f32 %9026, 2
  %9030 = fmul fast float %9024, %9027
  %9031 = fmul fast float %9024, %9028
  %9032 = fmul fast float %9024, %9029
  %9033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9034 = extractvalue %dx.types.CBufRet.f32 %9033, 0
  %9035 = extractvalue %dx.types.CBufRet.f32 %9033, 1
  %9036 = extractvalue %dx.types.CBufRet.f32 %9033, 2
  %9037 = fmul fast float %9025, %9034
  %9038 = fmul fast float %9025, %9035
  %9039 = fmul fast float %9025, %9036
  %9040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9041 = extractvalue %dx.types.CBufRet.f32 %9040, 0
  %9042 = extractvalue %dx.types.CBufRet.f32 %9040, 1
  %9043 = extractvalue %dx.types.CBufRet.f32 %9040, 2
  %9044 = fadd fast float %9037, %9041
  %9045 = fadd fast float %9044, %9030
  %9046 = fadd fast float %9038, %9042
  %9047 = fadd fast float %9046, %9031
  %9048 = fadd fast float %9039, %9043
  %9049 = fadd fast float %9048, %9032
  %9050 = fmul fast float %9045, %8221
  %9051 = fmul fast float %9047, %8221
  %9052 = fmul fast float %9049, %8221
  %9053 = fmul fast float %9050, %9050
  %9054 = fmul fast float %9051, %9051
  %9055 = fadd fast float %9053, %9054
  %9056 = fmul fast float %9052, %9052
  %9057 = fadd fast float %9055, %9056
  %9058 = call float @dx.op.unary.f32(i32 24, float %9057)  ; Sqrt(value)
  %9059 = extractvalue %dx.types.CBufRet.f32 %7948, 0
  %9060 = fsub fast float %9058, %9059
  %9061 = extractvalue %dx.types.CBufRet.f32 %7948, 2
  %9062 = fmul fast float %9060, %9061
  %9063 = call float @dx.op.unary.f32(i32 7, float %9062)  ; Saturate(value)
  %9064 = fadd fast float %9063, -5.000000e-01
  %9065 = fmul fast float %9064, 2.000000e+00
  %9066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9067 = extractvalue %dx.types.CBufRet.f32 %9066, 2
  %9068 = call float @dx.op.binary.f32(i32 36, float %9067, float %9065)  ; FMin(a,b)
  %9069 = fsub fast float -0.000000e+00, %9067
  %9070 = fcmp fast ogt float %9068, %9069
  br i1 %9070, label %9071, label %9383, !dx.controlflow.hints !162

; <label>:9071                                    ; preds = %9016
  %9072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9073 = extractvalue %dx.types.CBufRet.f32 %9072, 3
  %9074 = fcmp fast ogt float %9073, 0.000000e+00
  br i1 %9074, label %9075, label %9150, !dx.controlflow.hints !163

; <label>:9075                                    ; preds = %9071
  %9076 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %9077 = extractvalue %dx.types.Dimensions %9076, 0
  %9078 = sitofp i32 %9077 to float
  %9079 = extractvalue %dx.types.Dimensions %9076, 1
  %9080 = sitofp i32 %9079 to float
  %9081 = fmul fast float %9020, %9078
  %9082 = fmul fast float %9021, %9080
  %9083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9084 = extractvalue %dx.types.CBufRet.f32 %9083, 1
  %9085 = fsub fast float -0.000000e+00, %9084
  %9086 = fptoui float %9085 to i32
  %9087 = fptoui float %9081 to i32
  %9088 = fptoui float %9082 to i32
  %9089 = and i32 %9086, 31
  %9090 = lshr i32 %9087, %9089
  %9091 = lshr i32 %9088, %9089
  %9092 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %9086, i32 %9090, i32 %9091, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9093 = extractvalue %dx.types.ResRet.f32 %9092, 0
  %9094 = fcmp fast olt float %9093, -1.000000e+00
  %9095 = fcmp fast ogt float %9093, -1.000000e+00
  %9096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9097 = extractvalue %dx.types.CBufRet.f32 %9096, 1
  %9098 = select i1 %9095, float %9097, float 1.000000e+00
  %9099 = fadd fast float %9093, 1.000000e+00
  %9100 = fmul fast float %9098, %9099
  %9101 = call float @dx.op.unary.f32(i32 6, float %9100)  ; FAbs(value)
  %9102 = extractvalue %dx.types.CBufRet.f32 %9096, 3
  %9103 = fcmp fast oge float %9101, %9102
  %9104 = select i1 %9103, float 0x4197782600000000, float %9101
  %9105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9106 = extractvalue %dx.types.CBufRet.f32 %9105, 0
  %9107 = extractvalue %dx.types.CBufRet.f32 %9105, 1
  %9108 = extractvalue %dx.types.CBufRet.f32 %9105, 2
  %9109 = select i1 %9094, float %9106, float %9027
  %9110 = select i1 %9094, float %9107, float %9028
  %9111 = select i1 %9094, float %9108, float %9029
  %9112 = fmul fast float %9109, %9024
  %9113 = fmul fast float %9110, %9024
  %9114 = fmul fast float %9111, %9024
  %9115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9116 = extractvalue %dx.types.CBufRet.f32 %9115, 0
  %9117 = extractvalue %dx.types.CBufRet.f32 %9115, 1
  %9118 = extractvalue %dx.types.CBufRet.f32 %9115, 2
  %9119 = select i1 %9094, float %9116, float %9034
  %9120 = select i1 %9094, float %9117, float %9035
  %9121 = select i1 %9094, float %9118, float %9036
  %9122 = fmul fast float %9119, %9025
  %9123 = fmul fast float %9120, %9025
  %9124 = fmul fast float %9121, %9025
  %9125 = fadd fast float %9122, %9112
  %9126 = fadd fast float %9123, %9113
  %9127 = fadd fast float %9124, %9114
  %9128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9129 = extractvalue %dx.types.CBufRet.f32 %9128, 0
  %9130 = extractvalue %dx.types.CBufRet.f32 %9128, 1
  %9131 = extractvalue %dx.types.CBufRet.f32 %9128, 2
  %9132 = select i1 %9094, float %9129, float %9041
  %9133 = select i1 %9094, float %9130, float %9042
  %9134 = select i1 %9094, float %9131, float %9043
  %9135 = fadd fast float %9125, %9132
  %9136 = fadd fast float %9126, %9133
  %9137 = fadd fast float %9127, %9134
  %9138 = fmul fast float %9135, %9104
  %9139 = fmul fast float %9136, %9104
  %9140 = fmul fast float %9137, %9104
  %9141 = fmul fast float %9138, %9138
  %9142 = fmul fast float %9139, %9139
  %9143 = fadd fast float %9141, %9142
  %9144 = fmul fast float %9140, %9140
  %9145 = fadd fast float %9143, %9144
  %9146 = call float @dx.op.unary.f32(i32 24, float %9145)  ; Sqrt(value)
  %9147 = fsub fast float %9146, %9059
  %9148 = fmul fast float %9147, %9061
  %9149 = call float @dx.op.unary.f32(i32 7, float %9148)  ; Saturate(value)
  br label %9150

; <label>:9150                                    ; preds = %9075, %9071
  %9151 = phi float [ %9149, %9075 ], [ 1.000000e+00, %9071 ]
  %9152 = fmul fast float %9068, 5.000000e-01
  %9153 = fadd fast float %9152, 5.000000e-01
  %9154 = call float @dx.op.unary.f32(i32 22, float %9153)  ; Frc(value)
  %9155 = call float @dx.op.unary.f32(i32 27, float %9154)  ; Round_ni(value)
  %9156 = call float @dx.op.unary.f32(i32 22, float %9154)  ; Frc(value)
  %9157 = fmul fast float %9156, 2.000000e+00
  %9158 = fadd fast float %9157, -1.000000e+00
  %9159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %9020, float %9021, float %9155, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9160 = extractvalue %dx.types.ResRet.f32 %9159, 0
  %9161 = extractvalue %dx.types.ResRet.f32 %9159, 1
  %9162 = extractvalue %dx.types.ResRet.f32 %9159, 2
  %9163 = extractvalue %dx.types.ResRet.f32 %9159, 3
  %9164 = fadd fast float %9160, -5.000000e-01
  %9165 = fadd fast float %9162, -5.000000e-01
  %9166 = fmul fast float %9164, 0xBFD5555560000000
  %9167 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9165, float %9166)  ; FMad(a,b,c)
  %9168 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9161, float 0.000000e+00)  ; FMad(a,b,c)
  %9169 = fadd fast float %9168, %9163
  %9170 = fmul fast float %9164, -7.500000e-01
  %9171 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9165, float %9170)  ; FMad(a,b,c)
  %9172 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9161, float 0.000000e+00)  ; FMad(a,b,c)
  %9173 = fadd fast float %9172, %9163
  %9174 = call float @dx.op.binary.f32(i32 35, float %9167, float -1.000000e+00)  ; FMax(a,b)
  %9175 = call float @dx.op.binary.f32(i32 35, float %9169, float -1.000000e+00)  ; FMax(a,b)
  %9176 = call float @dx.op.binary.f32(i32 35, float %9171, float -1.000000e+00)  ; FMax(a,b)
  %9177 = call float @dx.op.binary.f32(i32 35, float %9173, float -1.000000e+00)  ; FMax(a,b)
  %9178 = call float @dx.op.binary.f32(i32 36, float %9174, float 1.000000e+00)  ; FMin(a,b)
  %9179 = call float @dx.op.binary.f32(i32 36, float %9175, float 1.000000e+00)  ; FMin(a,b)
  %9180 = call float @dx.op.binary.f32(i32 36, float %9176, float 1.000000e+00)  ; FMin(a,b)
  %9181 = call float @dx.op.binary.f32(i32 36, float %9177, float 1.000000e+00)  ; FMin(a,b)
  %9182 = fcmp fast olt float %9178, 0x3FEFFF8020000000
  br i1 %9182, label %9183, label %9298, !dx.controlflow.hints !164

; <label>:9183                                    ; preds = %9150
  %9184 = extractvalue %dx.types.CBufRet.f32 %9066, 3
  %9185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9186 = extractvalue %dx.types.CBufRet.f32 %9185, 0
  %9187 = extractvalue %dx.types.CBufRet.f32 %9185, 1
  %9188 = extractvalue %dx.types.CBufRet.f32 %9185, 2
  %9189 = extractvalue %dx.types.CBufRet.f32 %9185, 3
  %9190 = fsub fast float %9186, %9178
  %9191 = fsub fast float %9187, %9179
  %9192 = fsub fast float %9188, %9180
  %9193 = fsub fast float %9189, %9181
  %9194 = fmul fast float %9190, %9184
  %9195 = fmul fast float %9191, %9184
  %9196 = fmul fast float %9192, %9184
  %9197 = fmul fast float %9193, %9184
  %9198 = fadd fast float %9194, %9178
  %9199 = fadd fast float %9195, %9179
  %9200 = fsub fast float -0.000000e+00, %9199
  %9201 = fadd fast float %9196, %9180
  %9202 = fadd fast float %9197, %9181
  %9203 = fmul fast float %9198, %9198
  %9204 = fsub fast float %9199, %9203
  %9205 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9204)  ; FMax(a,b)
  %9206 = fdiv fast float 1.000000e+00, %9205
  %9207 = fmul fast float %9199, %9198
  %9208 = fsub fast float %9201, %9207
  %9209 = fsub fast float %9158, %9198
  %9210 = fmul fast float %9158, %9158
  %9211 = fsub fast float %9210, %9199
  %9212 = fmul fast float %9209, %9206
  %9213 = fmul fast float %9212, %9208
  %9214 = fsub fast float %9211, %9213
  %9215 = fmul fast float %9199, %9199
  %9216 = fsub fast float %9202, %9215
  %9217 = fmul fast float %9208, %9208
  %9218 = fmul fast float %9217, %9206
  %9219 = fsub fast float %9216, %9218
  %9220 = fdiv fast float %9214, %9219
  %9221 = fmul fast float %9208, %9220
  %9222 = fsub fast float %9209, %9221
  %9223 = fmul fast float %9222, %9206
  %9224 = fmul fast float %9223, %9198
  %9225 = fsub fast float 1.000000e+00, %9224
  %9226 = fmul fast float %9199, %9220
  %9227 = fsub fast float %9225, %9226
  %9228 = fmul fast float %9223, %9223
  %9229 = fmul fast float %9220, 4.000000e+00
  %9230 = fmul fast float %9229, %9227
  %9231 = fsub fast float %9228, %9230
  %9232 = call float @dx.op.unary.f32(i32 24, float %9231)  ; Sqrt(value)
  %9233 = fcmp fast oge float %9223, 0.000000e+00
  %9234 = fsub fast float -0.000000e+00, %9232
  %9235 = select i1 %9233, float %9234, float %9232
  %9236 = fsub fast float %9235, %9223
  %9237 = fdiv fast float %9236, %9220
  %9238 = fdiv fast float %9227, %9236
  %9239 = fmul fast float %9237, 5.000000e-01
  %9240 = fmul fast float %9238, 2.000000e+00
  %9241 = select i1 %9233, float %9239, float %9240
  %9242 = select i1 %9233, float %9240, float %9239
  %9243 = call float @dx.op.binary.f32(i32 35, float %9241, float %9242)  ; FMax(a,b)
  %9244 = call float @dx.op.binary.f32(i32 36, float %9241, float %9242)  ; FMin(a,b)
  %9245 = fcmp fast ogt float %9158, %9244
  br i1 %9245, label %9246, label %9256

; <label>:9246                                    ; preds = %9183
  %9247 = fsub fast float %9158, %9244
  %9248 = fsub fast float %9243, %9244
  %9249 = fmul fast float %9247, %9248
  %9250 = fmul fast float %9243, %9158
  %9251 = fadd fast float %9243, %9158
  %9252 = fmul fast float %9251, %9198
  %9253 = fadd fast float %9250, %9199
  %9254 = fsub fast float %9253, %9252
  %9255 = fdiv fast float %9254, %9249
  br label %9256

; <label>:9256                                    ; preds = %9246, %9183
  %9257 = phi float [ %9255, %9246 ], [ 0.000000e+00, %9183 ]
  %9258 = fcmp fast ogt float %9158, %9243
  %9259 = fsub fast float %9158, %9243
  br i1 %9258, label %9260, label %9270

; <label>:9260                                    ; preds = %9256
  %9261 = fsub fast float %9243, %9244
  %9262 = fmul fast float %9261, %9259
  %9263 = fmul fast float %9244, %9158
  %9264 = fadd fast float %9244, %9158
  %9265 = fmul fast float %9264, %9198
  %9266 = fsub fast float %9200, %9263
  %9267 = fadd fast float %9266, %9265
  %9268 = fdiv fast float %9267, %9262
  %9269 = fadd fast float %9268, %9257
  br label %9270

; <label>:9270                                    ; preds = %9260, %9256
  %9271 = phi float [ %9269, %9260 ], [ %9257, %9256 ]
  %9272 = fsub fast float %9158, %9244
  %9273 = fmul fast float %9272, %9259
  %9274 = fmul fast float %9244, %9243
  %9275 = fadd fast float %9244, %9243
  %9276 = fmul fast float %9275, %9198
  %9277 = fadd fast float %9274, %9199
  %9278 = fsub fast float %9277, %9276
  %9279 = fdiv fast float %9278, %9273
  %9280 = call float @dx.op.unary.f32(i32 7, float %9271)  ; Saturate(value)
  %9281 = fcmp fast oeq float %7949, 0.000000e+00
  %9282 = extractvalue %dx.types.CBufRet.f32 %9066, 0
  %9283 = fcmp fast oeq float %9282, 0.000000e+00
  %9284 = or i1 %9281, %9283
  %9285 = fmul fast float %9282, 2.000000e+00
  %9286 = fadd fast float %9067, %9068
  %9287 = fdiv fast float %9286, %9285
  %9288 = call float @dx.op.unary.f32(i32 7, float %9287)  ; Saturate(value)
  %9289 = fmul fast float %9288, 2.000000e+00
  %9290 = fsub fast float 3.000000e+00, %9289
  %9291 = fmul fast float %9288, %9288
  %9292 = fmul fast float %9291, %9290
  %9293 = select i1 %9284, float 1.000000e+00, float %9292
  %9294 = fmul fast float %9279, %7949
  %9295 = fadd fast float %9280, %9294
  %9296 = call float @dx.op.unary.f32(i32 7, float %9295)  ; Saturate(value)
  %9297 = fmul fast float %9293, %9296
  br label %9298

; <label>:9298                                    ; preds = %9270, %9150
  %9299 = phi float [ %9297, %9270 ], [ 0.000000e+00, %9150 ]
  %9300 = fsub fast float 1.000000e+00, %9299
  %9301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %9020, float %9021, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9302 = extractvalue %dx.types.ResRet.f32 %9301, 0
  %9303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9304 = extractvalue %dx.types.CBufRet.i32 %9303, 2
  %9305 = icmp eq i32 %9304, 0
  br i1 %9305, label %9311, label %9306

; <label>:9306                                    ; preds = %9298
  %9307 = call float @dx.op.unary.f32(i32 7, float %9299)  ; Saturate(value)
  %9308 = fadd fast float %9302, -1.000000e+00
  %9309 = fmul fast float %9307, %9308
  %9310 = fadd fast float %9309, 1.000000e+00
  br label %9311

; <label>:9311                                    ; preds = %9306, %9298
  %9312 = phi float [ %9310, %9306 ], [ %9300, %9298 ]
  br i1 %9074, label %9313, label %9331

; <label>:9313                                    ; preds = %9311
  %9314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9315 = extractvalue %dx.types.CBufRet.f32 %9314, 1
  %9316 = fsub fast float %9151, %9315
  %9317 = call float @dx.op.unary.f32(i32 7, float %9316)  ; Saturate(value)
  %9318 = fsub fast float %9151, %9073
  %9319 = call float @dx.op.unary.f32(i32 7, float %9318)  ; Saturate(value)
  %9320 = fsub fast float %9317, %9319
  %9321 = fsub fast float %9153, %9319
  %9322 = fdiv fast float %9321, %9320
  %9323 = call float @dx.op.unary.f32(i32 7, float %9322)  ; Saturate(value)
  %9324 = fmul fast float %9323, 2.000000e+00
  %9325 = fsub fast float 3.000000e+00, %9324
  %9326 = fsub fast float %9302, %9312
  %9327 = fmul fast float %9323, %9323
  %9328 = fmul fast float %9327, %9326
  %9329 = fmul fast float %9328, %9325
  %9330 = fadd fast float %9329, %9312
  br label %9331

; <label>:9331                                    ; preds = %9313, %9311
  %9332 = phi float [ %9330, %9313 ], [ %9312, %9311 ]
  %9333 = call float @dx.op.binary.f32(i32 35, float %9302, float %9332)  ; FMax(a,b)
  %9334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9335 = extractvalue %dx.types.CBufRet.i32 %9334, 2
  %9336 = and i32 %9335, 1
  %9337 = icmp eq i32 %9336, 0
  %9338 = fcmp fast une float %9333, 1.000000e+00
  %9339 = and i1 %9338, %9337
  br i1 %9339, label %9340, label %9359

; <label>:9340                                    ; preds = %9331
  %9341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %9020, float %9021, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9342 = extractvalue %dx.types.ResRet.f32 %9341, 0
  %9343 = extractvalue %dx.types.ResRet.f32 %9341, 1
  %9344 = extractvalue %dx.types.ResRet.f32 %9341, 2
  %9345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9346 = extractvalue %dx.types.CBufRet.f32 %9345, 1
  %9347 = fmul fast float %9346, %9342
  %9348 = fmul fast float %9346, %9343
  %9349 = fmul fast float %9346, %9344
  %9350 = fcmp fast ogt float %9302, 0x3FEFFF2E40000000
  %9351 = fsub fast float 1.000000e+00, %9333
  %9352 = fsub fast float 1.000000e+00, %9302
  %9353 = fdiv fast float %9351, %9352
  %9354 = call float @dx.op.unary.f32(i32 7, float %9353)  ; Saturate(value)
  %9355 = select i1 %9350, float 0.000000e+00, float %9354
  %9356 = fmul fast float %9347, %9355
  %9357 = fmul fast float %9348, %9355
  %9358 = fmul fast float %9349, %9355
  br label %9359

; <label>:9359                                    ; preds = %9340, %9331
  %9360 = phi float [ 0.000000e+00, %9331 ], [ %9356, %9340 ]
  %9361 = phi float [ 0.000000e+00, %9331 ], [ %9357, %9340 ]
  %9362 = phi float [ 0.000000e+00, %9331 ], [ %9358, %9340 ]
  %9363 = fmul fast float %9360, %7937
  %9364 = fmul fast float %9361, %7937
  %9365 = fmul fast float %9362, %7937
  %9366 = fmul fast float %9333, %8995
  %9367 = call float @dx.op.dot3.f32(i32 55, float %9333, float %9333, float %9333, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9368 = call float @dx.op.dot3.f32(i32 55, float %9363, float %9364, float %9365, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9369 = select i1 %213, float %9367, float %9333
  %9370 = select i1 %213, float 1.000000e+00, float %9333
  %9371 = select i1 %213, float %9368, float %9363
  %9372 = select i1 %213, float 0.000000e+00, float %9364
  %9373 = select i1 %213, float 0.000000e+00, float %9365
  %9374 = fmul fast float %9369, %9007
  %9375 = fmul fast float %9369, %9008
  %9376 = fmul fast float %9370, %9009
  %9377 = fadd fast float %9374, %9371
  %9378 = fadd fast float %9375, %9372
  %9379 = fadd fast float %9373, %9376
  %9380 = fmul fast float %9369, %9010
  %9381 = fmul fast float %9369, %9011
  %9382 = fmul fast float %9370, %9012
  br label %9383

; <label>:9383                                    ; preds = %9359, %9016, %8985, %8217
  %9384 = phi float [ %8222, %8217 ], [ %9007, %8985 ], [ %9377, %9359 ], [ %9007, %9016 ]
  %9385 = phi float [ %8223, %8217 ], [ %9008, %8985 ], [ %9378, %9359 ], [ %9008, %9016 ]
  %9386 = phi float [ %8224, %8217 ], [ %9009, %8985 ], [ %9379, %9359 ], [ %9009, %9016 ]
  %9387 = phi float [ %8225, %8217 ], [ %9010, %8985 ], [ %9380, %9359 ], [ %9010, %9016 ]
  %9388 = phi float [ %8226, %8217 ], [ %9011, %8985 ], [ %9381, %9359 ], [ %9011, %9016 ]
  %9389 = phi float [ %8227, %8217 ], [ %9012, %8985 ], [ %9382, %9359 ], [ %9012, %9016 ]
  %9390 = phi float [ %8228, %8217 ], [ %8995, %8985 ], [ %9366, %9359 ], [ %8995, %9016 ]
  %9391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9392 = extractvalue %dx.types.CBufRet.f32 %9391, 2
  %9393 = extractvalue %dx.types.CBufRet.f32 %9391, 3
  %9394 = fmul fast float %9392, %97
  %9395 = fmul fast float %9393, %98
  %9396 = call float @dx.op.unary.f32(i32 7, float %9394)  ; Saturate(value)
  %9397 = call float @dx.op.unary.f32(i32 7, float %9395)  ; Saturate(value)
  %9398 = select i1 %7959, i32 2, i32 0
  %9399 = or i32 %9398, 1
  %9400 = uitofp i32 %9399 to float
  %9401 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9396, float %9397, float %9400, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9402 = extractvalue %dx.types.ResRet.f32 %9401, 0
  %9403 = extractvalue %dx.types.ResRet.f32 %9401, 1
  %9404 = extractvalue %dx.types.ResRet.f32 %9401, 2
  %9405 = extractvalue %dx.types.ResRet.f32 %9401, 3
  %9406 = add nuw nsw i32 %9398, 2
  %9407 = uitofp i32 %9406 to float
  %9408 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9396, float %9397, float %9407, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9409 = extractvalue %dx.types.ResRet.f32 %9408, 0
  %9410 = extractvalue %dx.types.ResRet.f32 %9408, 1
  %9411 = extractvalue %dx.types.ResRet.f32 %9408, 2
  %9412 = extractvalue %dx.types.ResRet.f32 %9408, 3
  %9413 = call float @dx.op.binary.f32(i32 35, float %9403, float %9404)  ; FMax(a,b)
  %9414 = call float @dx.op.binary.f32(i32 35, float %9402, float %9413)  ; FMax(a,b)
  %9415 = call float @dx.op.binary.f32(i32 35, float %9414, float %9405)  ; FMax(a,b)
  %9416 = call float @dx.op.binary.f32(i32 36, float %9410, float %9411)  ; FMin(a,b)
  %9417 = call float @dx.op.binary.f32(i32 36, float %9409, float %9416)  ; FMin(a,b)
  %9418 = call float @dx.op.binary.f32(i32 36, float %9417, float %9412)  ; FMin(a,b)
  %9419 = fmul fast float %9415, 2.550000e+02
  %9420 = fadd fast float %9419, 0x3F70101020000000
  %9421 = fptoui float %9420 to i32
  %9422 = fmul fast float %9418, 2.550000e+02
  %9423 = fadd fast float %9422, 0x3F70101020000000
  %9424 = fptoui float %9423 to i32
  %9425 = icmp ult i32 %9421, %9424
  br i1 %9425, label %9426, label %9595

; <label>:9426                                    ; preds = %9383
  %9427 = fcmp fast ogt float %84, 9.843750e-01
  %9428 = fadd fast float %8221, -4.000000e+00
  %9429 = select i1 %9427, float -4.000000e+00, float %9428
  %9430 = call float @dx.op.binary.f32(i32 35, float %9429, float 0.000000e+00)  ; FMax(a,b)
  %9431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9432 = extractvalue %dx.types.CBufRet.f32 %9431, 0
  %9433 = fadd fast float %9432, %9430
  %9434 = extractvalue %dx.types.CBufRet.f32 %9431, 2
  %9435 = fmul fast float %9433, %9434
  %9436 = call float @dx.op.unary.f32(i32 23, float %9435)  ; Log(value)
  %9437 = extractvalue %dx.types.CBufRet.f32 %9431, 3
  %9438 = fmul fast float %9437, %9436
  %9439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9440 = extractvalue %dx.types.CBufRet.f32 %9439, 2
  %9441 = fmul fast float %9438, %9440
  %9442 = call float @dx.op.unary.f32(i32 7, float %9441)  ; Saturate(value)
  %9443 = uitofp i32 %9421 to float
  %9444 = uitofp i32 %9424 to float
  %9445 = fadd fast float %9443, 5.000000e-01
  %9446 = fadd fast float %9444, 5.000000e-01
  %9447 = fmul fast float %9440, %9445
  %9448 = fmul fast float %9440, %9446
  %9449 = fadd fast float %9447, 0x3F0FFB4800000000
  %9450 = fadd fast float %9448, 0xBF0FFB4800000000
  %9451 = call float @dx.op.binary.f32(i32 35, float %9442, float %9449)  ; FMax(a,b)
  %9452 = call float @dx.op.binary.f32(i32 36, float %9451, float %9450)  ; FMin(a,b)
  %9453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9454 = extractvalue %dx.types.CBufRet.f32 %9453, 1
  %9455 = extractvalue %dx.types.CBufRet.f32 %9453, 2
  %9456 = extractvalue %dx.types.CBufRet.f32 %9453, 0
  %9457 = select i1 %7959, float %9456, float 0.000000e+00
  %9458 = fmul fast float %9454, %9452
  %9459 = fadd fast float %9457, %9458
  %9460 = fadd fast float %9457, %9455
  %9461 = fsub fast float %9454, %9455
  %9462 = fadd fast float %9461, %9457
  %9463 = call float @dx.op.binary.f32(i32 35, float %9459, float %9460)  ; FMax(a,b)
  %9464 = call float @dx.op.binary.f32(i32 36, float %9463, float %9462)  ; FMin(a,b)
  %9465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %9396, float %9397, float %9464, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9466 = extractvalue %dx.types.ResRet.f32 %9465, 0
  %9467 = extractvalue %dx.types.ResRet.f32 %9465, 1
  %9468 = extractvalue %dx.types.ResRet.f32 %9465, 2
  %9469 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9470 = extractvalue %dx.types.CBufRet.i32 %9469, 0
  %9471 = extractvalue %dx.types.CBufRet.i32 %9469, 1
  %9472 = uitofp i32 %9470 to float
  %9473 = uitofp i32 %9471 to float
  %9474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9475 = extractvalue %dx.types.CBufRet.f32 %9474, 0
  %9476 = extractvalue %dx.types.CBufRet.f32 %9474, 1
  %9477 = fmul fast float %9472, %9396
  %9478 = fmul fast float %9473, %9397
  %9479 = fadd fast float %9477, -5.000000e-01
  %9480 = fadd fast float %9478, -5.000000e-01
  %9481 = call float @dx.op.unary.f32(i32 22, float %9479)  ; Frc(value)
  %9482 = call float @dx.op.unary.f32(i32 22, float %9480)  ; Frc(value)
  %9483 = fmul fast float %9481, %9481
  %9484 = fmul fast float %9483, %9481
  %9485 = fsub fast float 3.000000e+00, %9481
  %9486 = fmul fast float %9483, %9485
  %9487 = fmul fast float %9481, 3.000000e+00
  %9488 = fmul fast float %9484, 3.000000e+00
  %9489 = fmul fast float %9483, 6.000000e+00
  %9490 = fsub fast float %9488, %9489
  %9491 = fadd fast float %9490, 4.000000e+00
  %9492 = fmul fast float %9491, 0x3FC5555560000000
  %9493 = fmul fast float %9484, -3.000000e+00
  %9494 = fadd fast float %9483, %9481
  %9495 = fmul fast float %9494, 3.000000e+00
  %9496 = fadd fast float %9493, 1.000000e+00
  %9497 = fadd fast float %9496, %9495
  %9498 = fmul fast float %9484, 0x3FC5555560000000
  %9499 = fmul fast float %9482, %9482
  %9500 = fmul fast float %9499, %9482
  %9501 = fsub fast float 3.000000e+00, %9482
  %9502 = fmul fast float %9499, %9501
  %9503 = fmul fast float %9482, 3.000000e+00
  %9504 = fmul fast float %9500, 3.000000e+00
  %9505 = fmul fast float %9499, 6.000000e+00
  %9506 = fsub fast float %9504, %9505
  %9507 = fadd fast float %9506, 4.000000e+00
  %9508 = fmul fast float %9507, 0x3FC5555560000000
  %9509 = fmul fast float %9500, -3.000000e+00
  %9510 = fadd fast float %9499, %9482
  %9511 = fmul fast float %9510, 3.000000e+00
  %9512 = fadd fast float %9509, 1.000000e+00
  %9513 = fadd fast float %9512, %9511
  %9514 = fmul fast float %9500, 0x3FC5555560000000
  %9515 = fadd fast float %9481, 1.000000e+00
  %9516 = fsub fast float 1.000000e+00, %9487
  %9517 = fadd fast float %9516, %9486
  %9518 = fadd fast float %9517, %9491
  %9519 = fmul fast float %9518, 0x3FC5555560000000
  %9520 = fdiv fast float %9492, %9519
  %9521 = fsub fast float %9515, %9520
  %9522 = fsub fast float 1.000000e+00, %9481
  %9523 = fadd fast float %9497, %9484
  %9524 = fmul fast float %9523, 0x3FC5555560000000
  %9525 = fdiv fast float %9498, %9524
  %9526 = fadd fast float %9522, %9525
  %9527 = fadd fast float %9482, 1.000000e+00
  %9528 = fsub fast float 1.000000e+00, %9503
  %9529 = fadd fast float %9528, %9502
  %9530 = fadd fast float %9529, %9507
  %9531 = fmul fast float %9530, 0x3FC5555560000000
  %9532 = fdiv fast float %9508, %9531
  %9533 = fsub fast float %9527, %9532
  %9534 = fsub fast float 1.000000e+00, %9482
  %9535 = fadd fast float %9513, %9500
  %9536 = fmul fast float %9535, 0x3FC5555560000000
  %9537 = fdiv fast float %9514, %9536
  %9538 = fadd fast float %9537, %9534
  %9539 = fmul fast float %9521, %9475
  %9540 = fsub fast float %9396, %9539
  %9541 = fmul fast float %9526, %9475
  %9542 = fadd fast float %9541, %9396
  %9543 = fmul fast float %9538, %9476
  %9544 = fadd fast float %9543, %9397
  %9545 = fmul fast float %9533, %9476
  %9546 = fsub fast float %9397, %9545
  %9547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9540, float %9546, float %9464, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9548 = extractvalue %dx.types.ResRet.f32 %9547, 0
  %9549 = extractvalue %dx.types.ResRet.f32 %9547, 1
  %9550 = extractvalue %dx.types.ResRet.f32 %9547, 2
  %9551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9542, float %9546, float %9464, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9552 = extractvalue %dx.types.ResRet.f32 %9551, 0
  %9553 = extractvalue %dx.types.ResRet.f32 %9551, 1
  %9554 = extractvalue %dx.types.ResRet.f32 %9551, 2
  %9555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9540, float %9544, float %9464, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9556 = extractvalue %dx.types.ResRet.f32 %9555, 0
  %9557 = extractvalue %dx.types.ResRet.f32 %9555, 1
  %9558 = extractvalue %dx.types.ResRet.f32 %9555, 2
  %9559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9542, float %9544, float %9464, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9560 = extractvalue %dx.types.ResRet.f32 %9559, 0
  %9561 = extractvalue %dx.types.ResRet.f32 %9559, 1
  %9562 = extractvalue %dx.types.ResRet.f32 %9559, 2
  %9563 = fsub fast float %9556, %9548
  %9564 = fsub fast float %9557, %9549
  %9565 = fsub fast float %9558, %9550
  %9566 = fmul fast float %9563, %9536
  %9567 = fmul fast float %9564, %9536
  %9568 = fmul fast float %9565, %9536
  %9569 = fadd fast float %9566, %9548
  %9570 = fadd fast float %9567, %9549
  %9571 = fadd fast float %9568, %9550
  %9572 = fsub fast float %9560, %9552
  %9573 = fsub fast float %9561, %9553
  %9574 = fsub fast float %9562, %9554
  %9575 = fmul fast float %9572, %9536
  %9576 = fmul fast float %9573, %9536
  %9577 = fmul fast float %9574, %9536
  %9578 = fsub fast float %9552, %9569
  %9579 = fadd fast float %9578, %9575
  %9580 = fsub fast float %9553, %9570
  %9581 = fadd fast float %9580, %9576
  %9582 = fsub fast float %9554, %9571
  %9583 = fadd fast float %9582, %9577
  %9584 = fmul fast float %9579, %9524
  %9585 = fmul fast float %9581, %9524
  %9586 = fmul fast float %9583, %9524
  %9587 = fadd fast float %9584, %9569
  %9588 = fadd fast float %9585, %9570
  %9589 = fadd fast float %9586, %9571
  %9590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9591 = extractvalue %dx.types.CBufRet.f32 %9590, 1
  %9592 = fmul fast float %9587, %9591
  %9593 = fmul fast float %9588, %9591
  %9594 = fmul fast float %9589, %9591
  br label %9595

; <label>:9595                                    ; preds = %9426, %9383
  %9596 = phi float [ %9466, %9426 ], [ 1.000000e+00, %9383 ]
  %9597 = phi float [ %9467, %9426 ], [ 1.000000e+00, %9383 ]
  %9598 = phi float [ %9468, %9426 ], [ 1.000000e+00, %9383 ]
  %9599 = phi float [ %9592, %9426 ], [ 0.000000e+00, %9383 ]
  %9600 = phi float [ %9593, %9426 ], [ 0.000000e+00, %9383 ]
  %9601 = phi float [ %9594, %9426 ], [ 0.000000e+00, %9383 ]
  %9602 = fmul fast float %9599, %7937
  %9603 = fmul fast float %9600, %7937
  %9604 = fmul fast float %9601, %7937
  %9605 = fmul fast float %9596, %9390
  %9606 = call float @dx.op.dot3.f32(i32 55, float %9596, float %9597, float %9598, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9607 = call float @dx.op.dot3.f32(i32 55, float %9602, float %9603, float %9604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9608 = select i1 %213, float %9606, float %9596
  %9609 = select i1 %213, float %9606, float %9597
  %9610 = select i1 %213, float 1.000000e+00, float %9598
  %9611 = select i1 %213, float %9607, float %9602
  %9612 = select i1 %213, float 0.000000e+00, float %9603
  %9613 = select i1 %213, float 0.000000e+00, float %9604
  %9614 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9615 = extractvalue %dx.types.CBufRet.i32 %9614, 3
  %9616 = and i32 %9615, 3
  %9617 = icmp ne i32 %9616, 0
  %9618 = and i32 %9615, 4
  %9619 = icmp ne i32 %9618, 0
  %9620 = and i1 %9617, %9619
  %9621 = and i1 %213, %9620
  br i1 %9621, label %9622, label %9628

; <label>:9622                                    ; preds = %9595
  %9623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9624 = extractvalue %dx.types.CBufRet.f32 %9623, 1
  %9625 = fadd fast float %9605, -1.000000e+00
  %9626 = fmul fast float %9624, %9625
  %9627 = fadd fast float %9626, 1.000000e+00
  br label %9628

; <label>:9628                                    ; preds = %9622, %9595
  %9629 = phi float [ %9627, %9622 ], [ %9605, %9595 ]
  %9630 = fadd fast float %9387, %9384
  %9631 = fmul fast float %9608, %9630
  %9632 = fadd fast float %9631, %9611
  %9633 = fadd fast float %9388, %9385
  %9634 = fmul fast float %9609, %9633
  %9635 = fadd fast float %9634, %9612
  %9636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9637 = extractvalue %dx.types.CBufRet.f32 %9636, 0
  br i1 %213, label %9638, label %9662

; <label>:9638                                    ; preds = %9628
  %9639 = fadd fast float %9632, %9635
  %9640 = fmul fast float %9637, %9639
  %9641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9642 = extractvalue %dx.types.CBufRet.f32 %9641, 3
  %9643 = extractvalue %dx.types.CBufRet.f32 %7941, 1
  %9644 = fsub fast float %7946, %7940
  %9645 = fadd fast float %9644, %7947
  %9646 = fsub fast float %9645, %9643
  %9647 = extractvalue %dx.types.CBufRet.f32 %7941, 2
  %9648 = fmul fast float %9646, %9647
  %9649 = call float @dx.op.unary.f32(i32 7, float %9648)  ; Saturate(value)
  %9650 = fsub fast float %9649, %9642
  %9651 = fmul fast float %9650, %9629
  %9652 = fadd fast float %9651, %9642
  %9653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9654 = extractvalue %dx.types.CBufRet.f32 %9653, 0
  %9655 = fsub fast float %9652, %9654
  %9656 = fmul fast float %9655, 1.000000e+01
  %9657 = call float @dx.op.unary.f32(i32 7, float %9656)  ; Saturate(value)
  %9658 = fsub fast float %5068, %7937
  %9659 = fmul fast float %9657, %9658
  %9660 = fadd fast float %9659, %7937
  %9661 = fmul fast float %9660, %9652
  br label %9686

; <label>:9662                                    ; preds = %9628
  %9663 = fadd fast float %9389, %9386
  %9664 = fmul fast float %9610, %9663
  %9665 = fadd fast float %9664, %9613
  %9666 = fmul fast float %9637, %9632
  %9667 = fmul fast float %9637, %9635
  %9668 = fmul fast float %9637, %9665
  %9669 = call float @dx.op.binary.f32(i32 35, float %9667, float %9668)  ; FMax(a,b)
  %9670 = call float @dx.op.binary.f32(i32 35, float %9666, float %9669)  ; FMax(a,b)
  %9671 = call float @dx.op.binary.f32(i32 35, float %9670, float %7937)  ; FMax(a,b)
  %9672 = fcmp fast ugt float %9671, 0x3F10000000000000
  br i1 %9672, label %9674, label %9673

; <label>:9673                                    ; preds = %9662
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9674

; <label>:9674                                    ; preds = %9673, %9662
  %9675 = add i32 %48, 356
  %9676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %9675, i32 undef)  ; BufferLoad(srv,index,wot)
  %9677 = extractvalue %dx.types.ResRet.i32 %9676, 0
  %9678 = and i32 %9677, 32
  %9679 = icmp eq i32 %9678, 0
  br i1 %9679, label %9686, label %9680

; <label>:9680                                    ; preds = %9674
  %9681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9682 = extractvalue %dx.types.CBufRet.f32 %9681, 0
  %9683 = fmul fast float %9682, 0x3FE99999A0000000
  %9684 = fadd fast float %9682, %9666
  %9685 = fadd fast float %9683, %9668
  br label %9686

; <label>:9686                                    ; preds = %9680, %9674, %9638
  %9687 = phi float [ %9640, %9638 ], [ %9684, %9680 ], [ %9666, %9674 ]
  %9688 = phi float [ %9661, %9638 ], [ %9667, %9680 ], [ %9667, %9674 ]
  %9689 = phi float [ %9660, %9638 ], [ %9685, %9680 ], [ %9668, %9674 ]
  %9690 = phi float [ %9660, %9638 ], [ %7937, %9680 ], [ %7937, %9674 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9691 = call float @dx.op.binary.f32(i32 36, float %9687, float 3.225500e+04)  ; FMin(a,b)
  %9692 = call float @dx.op.binary.f32(i32 36, float %9688, float 3.225500e+04)  ; FMin(a,b)
  %9693 = call float @dx.op.binary.f32(i32 36, float %9689, float 3.225500e+04)  ; FMin(a,b)
  %9694 = call float @dx.op.binary.f32(i32 36, float %9690, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9691)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9692)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9693)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9694)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

