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
; shader hash: 8a828215ea105c7ac1b5dff6da21b0e3
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
  %155 = add i32 %48, 360
  %156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %157 = extractvalue %dx.types.ResRet.i32 %156, 0
  %158 = extractvalue %dx.types.ResRet.i32 %156, 1
  %159 = extractvalue %dx.types.ResRet.i32 %156, 2
  %160 = extractvalue %dx.types.ResRet.i32 %156, 3
  %161 = bitcast i32 %157 to float
  %162 = bitcast i32 %158 to float
  %163 = bitcast i32 %159 to float
  %164 = bitcast i32 %160 to float
  %165 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %166 = call float @dx.op.unary.f32(i32 25, float %165)  ; Rsqrt(value)
  %167 = fmul fast float %166, %104
  %168 = fmul fast float %166, %105
  %169 = fmul fast float %166, %106
  %170 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %152, float %153, float %154)  ; Dot3(ax,ay,az,bx,by,bz)
  %171 = call float @dx.op.unary.f32(i32 25, float %170)  ; Rsqrt(value)
  %172 = fmul fast float %171, %152
  %173 = fmul fast float %171, %153
  %174 = fmul fast float %171, %154
  %175 = call float @dx.op.dot3.f32(i32 55, float %172, float %173, float %174, float %167, float %168, float %169)  ; Dot3(ax,ay,az,bx,by,bz)
  %176 = fmul fast float %175, %175
  %177 = fmul fast float %176, %163
  %178 = fadd fast float %177, %164
  %179 = call float @dx.op.unary.f32(i32 7, float %178)  ; Saturate(value)
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 3
  %182 = fmul fast float %181, %170
  %183 = fsub fast float %161, %182
  %184 = fmul fast float %183, %162
  %185 = call float @dx.op.unary.f32(i32 7, float %184)  ; Saturate(value)
  %186 = fmul fast float %185, %179
  %187 = fmul fast float %97, 5.000000e-01
  %188 = fmul fast float %98, 5.000000e-01
  %189 = fptosi float %187 to i32
  %190 = fptosi float %188 to i32
  %191 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %189, i32 %190, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = lshr i32 %192, 18
  %194 = uitofp i32 %193 to float
  %195 = fmul fast float %194, 0x3F4C00EBA0000000
  %196 = call float @dx.op.unary.f32(i32 21, float %195)  ; Exp(value)
  %197 = fadd fast float %196, -1.000000e+00
  %198 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %20, i32 0)  ; GetDimensions(handle,mipLevel)
  %199 = extractvalue %dx.types.Dimensions %198, 0
  %200 = sitofp i32 %199 to float
  %201 = extractvalue %dx.types.Dimensions %198, 1
  %202 = sitofp i32 %201 to float
  %203 = fcmp fast oge float %187, %200
  %204 = fcmp fast oge float %188, %202
  %205 = or i1 %203, %204
  %206 = select i1 %205, float 0x4197782600000000, float %197
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 2
  %209 = extractvalue %dx.types.CBufRet.f32 %207, 3
  %210 = fmul fast float %208, %97
  %211 = fmul fast float %209, %98
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = and i32 %213, 114688
  %215 = icmp ne i32 %214, 0
  %216 = select i1 %215, float %210, float 0.000000e+00
  %217 = select i1 %215, float %211, float 0.000000e+00
  %218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %43, float %216, float %217, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = fmul fast float %219, 2.550000e+02
  %221 = fptoui float %220 to i32
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.i32 %223, 3
  %225 = and i32 %224, 3
  %226 = icmp ne i32 %225, 0
  %227 = and i32 %224, 4
  %228 = icmp ne i32 %227, 0
  %229 = and i1 %226, %228
  br i1 %229, label %230, label %241

; <label>:230                                     ; preds = %0
  %231 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %232 = fmul fast float %231, %98
  %233 = extractvalue %dx.types.CBufRet.f32 %222, 2
  %234 = fmul fast float %233, %97
  %235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %234, float %232, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %236 = extractvalue %dx.types.ResRet.f32 %235, 0
  %237 = fsub fast float 1.000000e+00, %236
  %238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %239 = extractvalue %dx.types.CBufRet.f32 %238, 0
  %240 = fcmp fast olt float %237, %239
  br label %244

; <label>:241                                     ; preds = %0
  %242 = icmp eq i32 %227, 0
  %243 = and i1 %226, %242
  br label %244

; <label>:244                                     ; preds = %241, %230
  %245 = phi i1 [ %240, %230 ], [ %243, %241 ]
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 2
  %248 = fmul fast float %247, 0x3FE3C6EF40000000
  %249 = frem fast float %97, 2.560000e+02
  %250 = frem fast float %98, 2.560000e+02
  %251 = fptoui float %249 to i32
  %252 = fptoui float %250 to i32
  %253 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %251, i32 %252, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = fadd fast float %254, %248
  %256 = call float @dx.op.unary.f32(i32 22, float %255)  ; Frc(value)
  %257 = add i32 %48, 156
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = shl i32 %259, 4
  %261 = and i32 %260, 32752
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %259, 7
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %259, 22
  %267 = shl nuw nsw i32 %266, 5
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = add i32 %48, 216
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F70101020000000
  %275 = lshr i32 %271, 8
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = lshr i32 %271, 16
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = add i32 %48, 36
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %285, 16
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = add i32 %48, 288
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %292, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = fmul fast float %294, 0x3F50624DE0000000
  %298 = fmul fast float %296, 0x3F50624DE0000000
  %299 = add i32 %48, 172
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = shl i32 %301, 4
  %303 = and i32 %302, 32752
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %301, 7
  %306 = and i32 %305, 32752
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %301, 22
  %309 = shl nuw nsw i32 %308, 5
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = add i32 %48, 232
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 255
  %315 = uitofp i32 %314 to float
  %316 = fmul fast float %315, 0x3F70101020000000
  %317 = lshr i32 %313, 8
  %318 = and i32 %317, 255
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = lshr i32 %313, 16
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = add i32 %48, 52
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 65535
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %327, 16
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = add i32 %48, 304
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = fmul fast float %336, 0x3F50624DE0000000
  %340 = fmul fast float %338, 0x3F50624DE0000000
  %341 = add i32 %48, 188
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = shl i32 %343, 4
  %345 = and i32 %344, 32752
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %343, 7
  %348 = and i32 %347, 32752
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %343, 22
  %351 = shl nuw nsw i32 %350, 5
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = add i32 %48, 248
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 255
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = lshr i32 %355, 8
  %360 = and i32 %359, 255
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %361, 0x3F70101020000000
  %363 = lshr i32 %355, 16
  %364 = and i32 %363, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F70101020000000
  %367 = add i32 %48, 68
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = lshr i32 %369, 16
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = add i32 %48, 320
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 65535
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %376, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = fmul fast float %378, 0x3F50624DE0000000
  %382 = fmul fast float %380, 0x3F50624DE0000000
  %383 = add i32 %48, 204
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = shl i32 %385, 4
  %387 = and i32 %386, 32752
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %385, 7
  %390 = and i32 %389, 32752
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %385, 22
  %393 = shl nuw nsw i32 %392, 5
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = add i32 %48, 264
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 255
  %399 = uitofp i32 %398 to float
  %400 = fmul fast float %399, 0x3F70101020000000
  %401 = lshr i32 %397, 8
  %402 = and i32 %401, 255
  %403 = uitofp i32 %402 to float
  %404 = fmul fast float %403, 0x3F70101020000000
  %405 = lshr i32 %397, 16
  %406 = and i32 %405, 255
  %407 = uitofp i32 %406 to float
  %408 = fmul fast float %407, 0x3F70101020000000
  %409 = add i32 %48, 84
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 65535
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = lshr i32 %411, 16
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = add i32 %48, 336
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 65535
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = lshr i32 %418, 16
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = fmul fast float %420, 0x3F50624DE0000000
  %424 = fmul fast float %422, 0x3F50624DE0000000
  %425 = add i32 %48, 348
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 32
  %429 = icmp eq i32 %428, 0
  %430 = and i32 %427, 64
  %431 = icmp eq i32 %430, 0
  %432 = and i32 %427, 128
  %433 = icmp eq i32 %432, 0
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 2
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %453, label %438

; <label>:438                                     ; preds = %244
  %439 = add i32 %48, 556
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = add i32 %441, 0
  %443 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %442, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %443, %dx.types.Handle %94, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 0
  %446 = extractvalue %dx.types.ResRet.f32 %444, 1
  %447 = extractvalue %dx.types.ResRet.f32 %444, 2
  %448 = extractvalue %dx.types.ResRet.f32 %444, 3
  %449 = fmul fast float %448, %78
  %450 = fmul fast float %445, %79
  %451 = fmul fast float %446, %80
  %452 = fmul fast float %447, %81
  br label %453

; <label>:453                                     ; preds = %438, %244
  %454 = phi float [ %81, %244 ], [ %452, %438 ]
  %455 = phi float [ %80, %244 ], [ %451, %438 ]
  %456 = phi float [ %79, %244 ], [ %450, %438 ]
  %457 = phi float [ %78, %244 ], [ %449, %438 ]
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 2
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %481, label %462

; <label>:462                                     ; preds = %453
  %463 = add i32 %48, 44
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 1
  %467 = icmp ne i32 %466, 0
  %468 = select i1 %467, float %456, float 1.000000e+00
  %469 = add i32 %48, 60
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = and i32 %471, 1
  %473 = icmp ne i32 %472, 0
  %474 = select i1 %473, float %455, float 1.000000e+00
  %475 = add i32 %48, 76
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = and i32 %477, 1
  %479 = icmp ne i32 %478, 0
  %480 = select i1 %479, float %454, float 1.000000e+00
  br label %481

; <label>:481                                     ; preds = %462, %453
  %482 = phi float [ %454, %453 ], [ %480, %462 ]
  %483 = phi float [ %455, %453 ], [ %474, %462 ]
  %484 = phi float [ %456, %453 ], [ %468, %462 ]
  %485 = lshr i32 %459, 20
  %486 = and i32 %485, 3
  %487 = add nuw nsw i32 %486, 1
  %488 = add i32 %48, 24
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = add i32 %48, 28
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = or i32 %493, %490
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %1256, label %496

; <label>:496                                     ; preds = %481
  %497 = and i32 %490, 262144
  %498 = icmp ne i32 %497, 0
  %499 = select i1 %498, float %51, float 1.000000e+00
  %500 = select i1 %498, float %52, float 0.000000e+00
  %501 = select i1 %498, float %53, float 0.000000e+00
  %502 = select i1 %498, float %54, float 1.000000e+00
  %503 = select i1 %498, float %55, float %76
  %504 = select i1 %498, float %56, float %77
  %505 = add i32 %48, 284
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = lshr i32 %507, 16
  %509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %508)  ; LegacyF16ToF32(value)
  %510 = fmul fast float %509, 0x3F50624DE0000000
  %511 = add i32 %48, 88
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = lshr i32 %513, 16
  %515 = and i32 %514, 255
  %516 = lshr i32 %513, 24
  %517 = add i32 %48, 292
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = and i32 %519, 65535
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = lshr i32 %519, 16
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = add i32 %48, 32
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = lshr i32 %526, 22
  %528 = shl nuw nsw i32 %527, 5
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = shl i32 %526, 4
  %531 = and i32 %530, 32752
  %532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %531)  ; LegacyF16ToF32(value)
  %533 = lshr i32 %526, 7
  %534 = and i32 %533, 32752
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %537 = extractvalue %dx.types.CBufRet.f32 %536, 3
  %538 = fmul fast float %537, 1.000000e+03
  %539 = fmul fast float %297, %538
  %540 = call float @dx.op.unary.f32(i32 22, float %539)  ; Frc(value)
  %541 = fadd fast float %540, %287
  %542 = fmul fast float %298, %538
  %543 = call float @dx.op.unary.f32(i32 22, float %542)  ; Frc(value)
  %544 = fadd fast float %543, %289
  %545 = fmul fast float %510, %538
  %546 = call float @dx.op.unary.f32(i32 22, float %545)  ; Frc(value)
  %547 = fmul fast float %546, 0x401921FB60000000
  %548 = fadd fast float %547, %529
  %549 = call float @dx.op.unary.f32(i32 13, float %548)  ; Sin(value)
  %550 = call float @dx.op.unary.f32(i32 12, float %548)  ; Cos(value)
  %551 = fsub fast float -0.000000e+00, %549
  %552 = fadd fast float %503, -5.000000e-01
  %553 = fadd fast float %504, -5.000000e-01
  %554 = fmul fast float %521, %552
  %555 = fmul fast float %523, %553
  %556 = fadd fast float %554, 5.000000e-01
  %557 = fadd fast float %555, 5.000000e-01
  %558 = fmul fast float %532, %556
  %559 = fmul fast float %535, %557
  %560 = fmul fast float %550, %558
  %561 = call float @dx.op.tertiary.f32(i32 46, float %551, float %559, float %560)  ; FMad(a,b,c)
  %562 = fmul fast float %549, %558
  %563 = call float @dx.op.tertiary.f32(i32 46, float %550, float %559, float %562)  ; FMad(a,b,c)
  %564 = fadd fast float %541, %561
  %565 = fadd fast float %544, %563
  %566 = icmp ugt i32 %515, 1
  %567 = icmp ugt i32 %513, 33554431
  %568 = or i1 %567, %566
  br i1 %568, label %569, label %594

; <label>:569                                     ; preds = %496
  %570 = add i32 %48, 228
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = lshr i32 %572, 16
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = fmul fast float %537, %574
  %576 = call float @dx.op.unary.f32(i32 22, float %575)  ; Frc(value)
  %577 = mul nuw nsw i32 %515, %516
  %578 = uitofp i32 %577 to float
  %579 = fmul fast float %576, %578
  %580 = call float @dx.op.unary.f32(i32 27, float %579)  ; Round_ni(value)
  %581 = fptoui float %580 to i32
  %582 = urem i32 %581, %515
  %583 = udiv i32 %581, %516
  %584 = call float @dx.op.unary.f32(i32 22, float %564)  ; Frc(value)
  %585 = call float @dx.op.unary.f32(i32 22, float %565)  ; Frc(value)
  %586 = uitofp i32 %582 to float
  %587 = uitofp i32 %583 to float
  %588 = fadd fast float %584, %586
  %589 = fadd fast float %585, %587
  %590 = uitofp i32 %515 to float
  %591 = uitofp i32 %516 to float
  %592 = fdiv fast float %588, %590
  %593 = fdiv fast float %589, %591
  br label %594

; <label>:594                                     ; preds = %569, %496
  %595 = phi float [ %592, %569 ], [ %564, %496 ]
  %596 = phi float [ %593, %569 ], [ %565, %496 ]
  %597 = and i32 %490, 16777216
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %708, label %599

; <label>:599                                     ; preds = %594
  %600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %601 = extractvalue %dx.types.CBufRet.f32 %600, 0
  %602 = extractvalue %dx.types.CBufRet.f32 %600, 1
  %603 = extractvalue %dx.types.CBufRet.f32 %600, 2
  %604 = fadd fast float %601, %152
  %605 = fadd fast float %602, %153
  %606 = fadd fast float %603, %154
  %607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %608 = extractvalue %dx.types.CBufRet.f32 %607, 0
  %609 = call float @dx.op.unary.f32(i32 7, float %608)  ; Saturate(value)
  %610 = icmp eq i32 %49, 65535
  br i1 %610, label %705, label %611

; <label>:611                                     ; preds = %599
  %612 = lshr i32 %49, 1
  %613 = shl i32 %612, 2
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = and i32 %49, 1
  %617 = icmp ne i32 %616, 0
  %618 = lshr i32 %615, 16
  %619 = and i32 %615, 65535
  %620 = select i1 %617, i32 %618, i32 %619
  %621 = icmp eq i32 %620, 65535
  br i1 %621, label %701, label %622

; <label>:622                                     ; preds = %611
  %623 = mul nuw nsw i32 %620, 40
  %624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.f32 %624, 0
  %626 = extractvalue %dx.types.ResRet.f32 %624, 1
  %627 = extractvalue %dx.types.ResRet.f32 %624, 2
  %628 = add nuw nsw i32 %623, 12
  %629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.f32 %629, 0
  %631 = extractvalue %dx.types.ResRet.f32 %629, 1
  %632 = extractvalue %dx.types.ResRet.f32 %629, 2
  %633 = add nuw nsw i32 %623, 24
  %634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  %636 = extractvalue %dx.types.ResRet.f32 %634, 1
  %637 = extractvalue %dx.types.ResRet.f32 %634, 2
  %638 = add nuw nsw i32 %623, 36
  %639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = fsub fast float %604, %625
  %642 = fsub fast float %605, %626
  %643 = fsub fast float %606, %627
  %644 = fmul fast float %640, %641
  %645 = fmul fast float %640, %642
  %646 = fmul fast float %640, %643
  %647 = call float @dx.op.unary.f32(i32 27, float %644)  ; Round_ni(value)
  %648 = call float @dx.op.unary.f32(i32 27, float %645)  ; Round_ni(value)
  %649 = call float @dx.op.unary.f32(i32 27, float %646)  ; Round_ni(value)
  %650 = fadd fast float %647, 5.000000e-01
  %651 = fadd fast float %648, 5.000000e-01
  %652 = fadd fast float %649, 5.000000e-01
  %653 = fmul fast float %650, %630
  %654 = fmul fast float %651, %631
  %655 = fmul fast float %652, %632
  %656 = shl i32 %49, 2
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = add i32 %658, 0
  %660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %659, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %661 = call float @dx.op.unary.f32(i32 22, float %653)  ; Frc(value)
  %662 = call float @dx.op.unary.f32(i32 22, float %654)  ; Frc(value)
  %663 = call float @dx.op.unary.f32(i32 22, float %655)  ; Frc(value)
  %664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %660, %dx.types.Handle %43, float %661, float %662, float %663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %665 = extractvalue %dx.types.ResRet.f32 %664, 0
  %666 = extractvalue %dx.types.ResRet.f32 %664, 1
  %667 = extractvalue %dx.types.ResRet.f32 %664, 2
  %668 = fmul fast float %665, 1.023000e+03
  %669 = fmul fast float %666, 1.023000e+03
  %670 = fmul fast float %667, 1.023000e+03
  %671 = fadd fast float %668, 5.000000e-01
  %672 = fadd fast float %669, 5.000000e-01
  %673 = fadd fast float %670, 5.000000e-01
  %674 = call float @dx.op.unary.f32(i32 27, float %671)  ; Round_ni(value)
  %675 = call float @dx.op.unary.f32(i32 27, float %672)  ; Round_ni(value)
  %676 = call float @dx.op.unary.f32(i32 27, float %673)  ; Round_ni(value)
  %677 = fsub fast float %644, %647
  %678 = fsub fast float %645, %648
  %679 = fsub fast float %646, %649
  %680 = fmul fast float %677, 7.500000e-01
  %681 = fmul fast float %678, 7.500000e-01
  %682 = fmul fast float %679, 7.500000e-01
  %683 = fadd fast float %647, 1.250000e-01
  %684 = fadd fast float %683, %680
  %685 = fadd fast float %684, %674
  %686 = fadd fast float %648, 1.250000e-01
  %687 = fadd fast float %686, %681
  %688 = fadd fast float %687, %675
  %689 = fadd fast float %649, 1.250000e-01
  %690 = fadd fast float %689, %682
  %691 = fadd fast float %690, %676
  %692 = fmul fast float %685, %635
  %693 = fmul fast float %688, %636
  %694 = fmul fast float %691, %637
  %695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %696 = extractvalue %dx.types.ResRet.i32 %695, 0
  %697 = add i32 %696, 0
  %698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %698, %dx.types.Handle %41, float %692, float %693, float %694, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %700 = extractvalue %dx.types.ResRet.f32 %699, 0
  br label %701

; <label>:701                                     ; preds = %622, %611
  %702 = phi float [ %700, %622 ], [ -1.000000e+00, %611 ]
  %703 = fadd fast float %702, %609
  %704 = call float @dx.op.unary.f32(i32 7, float %703)  ; Saturate(value)
  br label %705

; <label>:705                                     ; preds = %701, %599
  %706 = phi float [ %704, %701 ], [ %609, %599 ]
  %707 = fmul fast float %706, %457
  br label %708

; <label>:708                                     ; preds = %705, %594
  %709 = phi float [ %707, %705 ], [ %457, %594 ]
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = and i32 %711, 256
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %760, label %714

; <label>:714                                     ; preds = %708
  %715 = add i32 %48, 488
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = add i32 %717, 0
  %719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %718, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %720 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %719, %dx.types.Handle %94, float %595, float %596, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %721 = extractvalue %dx.types.ResRet.f32 %720, 0
  %722 = add i32 %48, 100
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = shl i32 %724, 4
  %726 = and i32 %725, 32752
  %727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %726)  ; LegacyF16ToF32(value)
  %728 = lshr i32 %724, 7
  %729 = and i32 %728, 32752
  %730 = call float @dx.op.legacyF16ToF32(i32 131, i32 %729)  ; LegacyF16ToF32(value)
  %731 = fsub fast float 1.000000e+00, %709
  %732 = call float @dx.op.binary.f32(i32 35, float %731, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %733 = bitcast float %709 to i32
  %734 = sitofp i32 %733 to float
  %735 = fadd fast float %734, 0xC1CFBF8940000000
  %736 = fmul fast float %730, %735
  %737 = fadd fast float %736, 0x41CFBF8940000000
  %738 = fptosi float %737 to i32
  %739 = bitcast i32 %738 to float
  %740 = bitcast float %732 to i32
  %741 = sitofp i32 %740 to float
  %742 = fadd fast float %741, 0xC1CFBF8940000000
  %743 = fmul fast float %742, %730
  %744 = fadd fast float %743, 0x41CFBF8940000000
  %745 = fptosi float %744 to i32
  %746 = bitcast i32 %745 to float
  %747 = fmul fast float %739, %727
  %748 = fmul fast float %746, %727
  %749 = fsub fast float %732, %747
  %750 = fadd fast float %748, %732
  %751 = call float @dx.op.unary.f32(i32 7, float %749)  ; Saturate(value)
  %752 = call float @dx.op.unary.f32(i32 7, float %750)  ; Saturate(value)
  %753 = fsub fast float %721, %751
  %754 = fsub fast float %752, %751
  %755 = bitcast float %754 to i32
  %756 = sub nsw i32 2129859010, %755
  %757 = bitcast i32 %756 to float
  %758 = fmul fast float %757, %753
  %759 = call float @dx.op.unary.f32(i32 7, float %758)  ; Saturate(value)
  br label %760

; <label>:760                                     ; preds = %714, %708
  %761 = phi float [ %759, %714 ], [ %709, %708 ]
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 128
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %782, label %766

; <label>:766                                     ; preds = %760
  %767 = add i32 %48, 472
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = add i32 %769, 0
  %771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %770, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %772 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %771, %dx.types.Handle %94, float %595, float %596, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %773 = extractvalue %dx.types.ResRet.f32 %772, 0
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 524288
  %777 = icmp ne i32 %776, 0
  %778 = fcmp fast ogt float %773, 0x3FE0101020000000
  %779 = select i1 %778, float 1.000000e+00, float 0.000000e+00
  %780 = select i1 %777, float %779, float %773
  %781 = fmul fast float %780, %761
  br label %782

; <label>:782                                     ; preds = %766, %760
  %783 = phi float [ %781, %766 ], [ %761, %760 ]
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = and i32 %785, 16
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %986, label %788

; <label>:788                                     ; preds = %782
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = add i32 %48, 424
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = add i32 %793, 0
  %795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %794, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %796 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %795, %dx.types.Handle %93, float %595, float %596, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %797 = extractvalue %dx.types.ResRet.f32 %796, 0
  %798 = extractvalue %dx.types.ResRet.f32 %796, 1
  %799 = extractvalue %dx.types.ResRet.f32 %796, 2
  %800 = extractvalue %dx.types.ResRet.f32 %796, 3
  %801 = and i32 %790, 255
  %802 = uitofp i32 %801 to float
  %803 = lshr i32 %790, 8
  %804 = and i32 %803, 255
  %805 = uitofp i32 %804 to float
  %806 = fmul fast float %800, %802
  %807 = fadd fast float %806, %805
  %808 = fmul fast float %807, 0x3F70101000000000
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 512
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %821, label %813

; <label>:813                                     ; preds = %788
  %814 = add i32 %48, 508
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = add i32 %816, 0
  %818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %817, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %819 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %818, %dx.types.Handle %94, float %595, float %596, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  br label %821

; <label>:821                                     ; preds = %813, %788
  %822 = phi float [ %820, %813 ], [ 1.000000e+00, %788 ]
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 33554432
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %933, label %827

; <label>:827                                     ; preds = %821
  %828 = add i32 %48, 224
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = and i32 %830, 65535
  %832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %831)  ; LegacyF16ToF32(value)
  %833 = lshr i32 %830, 16
  %834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %833)  ; LegacyF16ToF32(value)
  %835 = add i32 %48, 228
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = and i32 %837, 65535
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = lshr i32 %841, 24
  %843 = uitofp i32 %842 to float
  %844 = fmul fast float %843, 0x3F70101020000000
  %845 = and i32 %841, 255
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = lshr i32 %841, 8
  %849 = and i32 %848, 255
  %850 = uitofp i32 %849 to float
  %851 = fmul fast float %850, 0x3F70101020000000
  %852 = lshr i32 %841, 16
  %853 = and i32 %852, 255
  %854 = uitofp i32 %853 to float
  %855 = fmul fast float %854, 0x3F70101020000000
  %856 = add i32 %48, 220
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = lshr i32 %858, 24
  %860 = uitofp i32 %859 to float
  %861 = fmul fast float %860, 0x3F70101020000000
  %862 = and i32 %858, 255
  %863 = uitofp i32 %862 to float
  %864 = fmul fast float %863, 0x3F70101020000000
  %865 = lshr i32 %858, 8
  %866 = and i32 %865, 255
  %867 = uitofp i32 %866 to float
  %868 = fmul fast float %867, 0x3F70101020000000
  %869 = lshr i32 %858, 16
  %870 = and i32 %869, 255
  %871 = uitofp i32 %870 to float
  %872 = fmul fast float %871, 0x3F70101020000000
  %873 = bitcast float %797 to i32
  %874 = ashr i32 %873, 1
  %875 = sub nsw i32 1597463174, %874
  %876 = bitcast i32 %875 to float
  %877 = fmul fast float %797, 5.000000e-01
  %878 = fmul fast float %876, %876
  %879 = fmul fast float %878, %877
  %880 = fsub fast float 1.500000e+00, %879
  %881 = fmul fast float %876, %797
  %882 = fmul fast float %881, %880
  %883 = bitcast float %798 to i32
  %884 = ashr i32 %883, 1
  %885 = sub nsw i32 1597463174, %884
  %886 = bitcast i32 %885 to float
  %887 = fmul fast float %798, 5.000000e-01
  %888 = fmul fast float %886, %886
  %889 = fmul fast float %888, %887
  %890 = fsub fast float 1.500000e+00, %889
  %891 = fmul fast float %886, %798
  %892 = fmul fast float %891, %890
  %893 = bitcast float %799 to i32
  %894 = ashr i32 %893, 1
  %895 = sub nsw i32 1597463174, %894
  %896 = bitcast i32 %895 to float
  %897 = fmul fast float %799, 5.000000e-01
  %898 = fmul fast float %896, %896
  %899 = fmul fast float %898, %897
  %900 = fsub fast float 1.500000e+00, %899
  %901 = fmul fast float %896, %799
  %902 = fmul fast float %901, %900
  %903 = fsub fast float %882, %864
  %904 = fsub fast float %892, %868
  %905 = fsub fast float %902, %872
  %906 = fmul fast float %903, %832
  %907 = fmul fast float %904, %834
  %908 = fmul fast float %905, %839
  %909 = fadd fast float %906, %847
  %910 = fadd fast float %907, %851
  %911 = fadd fast float %908, %855
  %912 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  %913 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %914 = call float @dx.op.unary.f32(i32 7, float %911)  ; Saturate(value)
  %915 = fmul fast float %912, %912
  %916 = fmul fast float %913, %913
  %917 = fmul fast float %914, %914
  %918 = fsub fast float %915, %797
  %919 = fsub fast float %916, %798
  %920 = fsub fast float %917, %799
  %921 = fmul fast float %918, %822
  %922 = fmul fast float %919, %822
  %923 = fmul fast float %920, %822
  %924 = fadd fast float %921, %797
  %925 = fadd fast float %922, %798
  %926 = fadd fast float %923, %799
  %927 = fadd fast float %844, %808
  %928 = fsub fast float %927, %861
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %930 = fsub fast float %929, %808
  %931 = fmul fast float %930, %822
  %932 = fadd fast float %931, %808
  br label %986

; <label>:933                                     ; preds = %821
  %934 = and i32 %824, 134217728
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %970, label %936

; <label>:936                                     ; preds = %933
  %937 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %938 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %939 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %940 = fadd fast float %937, -5.000000e-01
  %941 = fadd fast float %938, -5.000000e-01
  %942 = fadd fast float %939, -5.000000e-01
  %943 = fmul fast float %940, %822
  %944 = fmul fast float %941, %822
  %945 = fmul fast float %942, %822
  %946 = fadd fast float %943, 5.000000e-01
  %947 = fadd fast float %944, 5.000000e-01
  %948 = fadd fast float %945, 5.000000e-01
  %949 = call float @dx.op.unary.f32(i32 24, float %797)  ; Sqrt(value)
  %950 = call float @dx.op.unary.f32(i32 24, float %798)  ; Sqrt(value)
  %951 = call float @dx.op.unary.f32(i32 24, float %799)  ; Sqrt(value)
  %952 = fmul fast float %946, 2.000000e+00
  %953 = fsub fast float 1.000000e+00, %952
  %954 = fmul fast float %953, %949
  %955 = fadd fast float %954, %952
  %956 = fmul fast float %955, %949
  %957 = fmul fast float %947, 2.000000e+00
  %958 = fsub fast float 1.000000e+00, %957
  %959 = fmul fast float %958, %950
  %960 = fadd fast float %959, %957
  %961 = fmul fast float %960, %950
  %962 = fmul fast float %948, 2.000000e+00
  %963 = fsub fast float 1.000000e+00, %962
  %964 = fmul fast float %963, %951
  %965 = fadd fast float %964, %962
  %966 = fmul fast float %965, %951
  %967 = fmul fast float %956, %956
  %968 = fmul fast float %961, %961
  %969 = fmul fast float %966, %966
  br label %986

; <label>:970                                     ; preds = %933
  %971 = fmul fast float %274, %274
  %972 = fmul fast float %278, %278
  %973 = fmul fast float %282, %282
  %974 = fadd fast float %971, -1.000000e+00
  %975 = fadd fast float %972, -1.000000e+00
  %976 = fadd fast float %973, -1.000000e+00
  %977 = fmul fast float %822, %974
  %978 = fmul fast float %822, %975
  %979 = fmul fast float %822, %976
  %980 = fadd fast float %977, 1.000000e+00
  %981 = fadd fast float %978, 1.000000e+00
  %982 = fadd fast float %979, 1.000000e+00
  %983 = fmul fast float %980, %797
  %984 = fmul fast float %981, %798
  %985 = fmul fast float %982, %799
  br label %986

; <label>:986                                     ; preds = %970, %936, %827, %782
  %987 = phi float [ %932, %827 ], [ %808, %936 ], [ %808, %970 ], [ 0x3FA23C0BE0000000, %782 ]
  %988 = phi float [ %924, %827 ], [ %967, %936 ], [ %983, %970 ], [ 1.000000e+00, %782 ]
  %989 = phi float [ %925, %827 ], [ %968, %936 ], [ %984, %970 ], [ 1.000000e+00, %782 ]
  %990 = phi float [ %926, %827 ], [ %969, %936 ], [ %985, %970 ], [ 1.000000e+00, %782 ]
  %991 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.i32 %991, 1
  %993 = and i32 %992, 1
  %994 = icmp ne i32 %993, 0
  %995 = add i32 %48, 356
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = and i32 %997, 32
  %999 = icmp ne i32 %998, 0
  %1000 = and i1 %994, %999
  %1001 = select i1 %1000, float 1.000000e+00, float %988
  %1002 = select i1 %1000, float 0x3FD3333340000000, float %989
  %1003 = select i1 %1000, float 0x3FD3333340000000, float %990
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = and i32 %1005, 32
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1080, label %1008

; <label>:1008                                    ; preds = %986
  %1009 = add i32 %48, 92
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = add i32 %48, 440
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = add i32 %1014, 0
  %1016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1017 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1016, %dx.types.Handle %93, float %595, float %596, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.ResRet.f32 %1017, 1
  %1020 = extractvalue %dx.types.ResRet.f32 %1017, 2
  %1021 = extractvalue %dx.types.ResRet.f32 %1017, 3
  %1022 = and i32 %1011, 255
  %1023 = uitofp i32 %1022 to float
  %1024 = lshr i32 %1011, 8
  %1025 = and i32 %1024, 255
  %1026 = uitofp i32 %1025 to float
  %1027 = lshr i32 %1011, 16
  %1028 = and i32 %1027, 255
  %1029 = uitofp i32 %1028 to float
  %1030 = fmul fast float %1029, 0x3F70101000000000
  %1031 = fmul fast float %1018, %1023
  %1032 = fadd fast float %1031, %1026
  %1033 = fmul fast float %1032, 0x3F70101000000000
  %1034 = fadd fast float %1019, -5.000000e-01
  %1035 = fadd fast float %1021, -5.000000e-01
  %1036 = fmul fast float %1034, %1030
  %1037 = fmul fast float %1035, %1030
  %1038 = fadd fast float %1036, 5.000000e-01
  %1039 = fadd fast float %1037, 5.000000e-01
  %1040 = fmul fast float %1038, 2.000000e+00
  %1041 = fadd fast float %1040, -1.000000e+00
  %1042 = fmul fast float %1039, 2.000000e+00
  %1043 = fadd fast float %1042, -1.000000e+00
  %1044 = fadd fast float %1041, %1043
  %1045 = fmul fast float %1044, 5.000000e-01
  %1046 = fsub fast float %1041, %1043
  %1047 = fmul fast float %1046, 5.000000e-01
  %1048 = call float @dx.op.unary.f32(i32 6, float %1045)  ; FAbs(value)
  %1049 = fsub fast float 1.000000e+00, %1048
  %1050 = call float @dx.op.unary.f32(i32 6, float %1047)  ; FAbs(value)
  %1051 = fsub fast float %1049, %1050
  %1052 = call float @dx.op.dot3.f32(i32 55, float %1045, float %1047, float %1051, float %1045, float %1047, float %1051)  ; Dot3(ax,ay,az,bx,by,bz)
  %1053 = call float @dx.op.unary.f32(i32 25, float %1052)  ; Rsqrt(value)
  %1054 = fmul fast float %1045, %1053
  %1055 = fmul fast float %1047, %1053
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = and i32 %1057, 67108864
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1076, label %1060

; <label>:1060                                    ; preds = %1008
  %1061 = add i32 %48, 280
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = and i32 %1063, 65535
  %1065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1064)  ; LegacyF16ToF32(value)
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 65535
  %1069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1068)  ; LegacyF16ToF32(value)
  %1070 = lshr i32 %1063, 16
  %1071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1070)  ; LegacyF16ToF32(value)
  %1072 = fsub fast float %1033, %1071
  %1073 = fmul fast float %1072, %1065
  %1074 = fadd fast float %1073, %1069
  %1075 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  br label %1076

; <label>:1076                                    ; preds = %1060, %1008
  %1077 = phi float [ %1075, %1060 ], [ %1033, %1008 ]
  %1078 = call float @dx.op.dot2.f32(i32 54, float %1054, float %1055, float %499, float %500)  ; Dot2(ax,ay,bx,by)
  %1079 = call float @dx.op.dot2.f32(i32 54, float %1054, float %1055, float %501, float %502)  ; Dot2(ax,ay,bx,by)
  br label %1080

; <label>:1080                                    ; preds = %1076, %986
  %1081 = phi float [ %1077, %1076 ], [ 0x3FD6666660000000, %986 ]
  %1082 = phi float [ %1078, %1076 ], [ 0.000000e+00, %986 ]
  %1083 = phi float [ %1079, %1076 ], [ 0.000000e+00, %986 ]
  %1084 = phi float [ %1020, %1076 ], [ 1.000000e+00, %986 ]
  %1085 = add i32 %48, 160
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = lshr i32 %1087, 22
  %1089 = shl nuw nsw i32 %1088, 5
  %1090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1089)  ; LegacyF16ToF32(value)
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = and i32 %1092, 64
  %1094 = icmp eq i32 %1093, 0
  br i1 %1094, label %1128, label %1095

; <label>:1095                                    ; preds = %1080
  %1096 = add i32 %48, 456
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = add i32 %1098, 0
  %1100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1099, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = and i32 %1102, 131072
  %1104 = icmp eq i32 %1103, 0
  %1105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1100, %dx.types.Handle %93, float %595, float %596, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.ResRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1105, 2
  %1109 = fmul fast float %1106, %262
  %1110 = fmul fast float %1107, %265
  %1111 = fmul fast float %1108, %268
  br i1 %1104, label %1118, label %1112

; <label>:1112                                    ; preds = %1095
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = fmul fast float %1114, %1109
  %1116 = fmul fast float %1114, %1110
  %1117 = fmul fast float %1114, %1111
  br label %1118

; <label>:1118                                    ; preds = %1112, %1095
  %1119 = phi float [ %1115, %1112 ], [ %1109, %1095 ]
  %1120 = phi float [ %1116, %1112 ], [ %1110, %1095 ]
  %1121 = phi float [ %1117, %1112 ], [ %1111, %1095 ]
  %1122 = fmul fast float %1119, %1090
  %1123 = select i1 %245, float %1122, float %1119
  %1124 = call float @dx.op.dot3.f32(i32 55, float %1123, float %1120, float %1121, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = select i1 %245, float 0.000000e+00, float %1119
  %1126 = select i1 %245, float %1124, float %1120
  %1127 = select i1 %245, float 0.000000e+00, float %1121
  br label %1128

; <label>:1128                                    ; preds = %1118, %1080
  %1129 = phi float [ %1125, %1118 ], [ 0.000000e+00, %1080 ]
  %1130 = phi float [ %1126, %1118 ], [ 0.000000e+00, %1080 ]
  %1131 = phi float [ %1127, %1118 ], [ 0.000000e+00, %1080 ]
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = and i32 %1133, 1024
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1166, label %1136

; <label>:1136                                    ; preds = %1128
  %1137 = add i32 %48, 152
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = and i32 %1139, 255
  %1141 = uitofp i32 %1140 to float
  %1142 = fmul fast float %1141, 0x3F70101020000000
  %1143 = lshr i32 %1139, 8
  %1144 = and i32 %1143, 255
  %1145 = uitofp i32 %1144 to float
  %1146 = fmul fast float %1145, 0x3F70101020000000
  %1147 = lshr i32 %1139, 16
  %1148 = and i32 %1147, 255
  %1149 = uitofp i32 %1148 to float
  %1150 = fmul fast float %1149, 0x3F70101020000000
  %1151 = fmul fast float %1142, %1142
  %1152 = fmul fast float %1146, %1146
  %1153 = fmul fast float %1150, %1150
  %1154 = add i32 %48, 524
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = add i32 %1156, 0
  %1158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1158, %dx.types.Handle %94, float %595, float %596, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.ResRet.f32 %1159, 1
  %1162 = extractvalue %dx.types.ResRet.f32 %1159, 2
  %1163 = fmul fast float %1151, %1160
  %1164 = fmul fast float %1152, %1161
  %1165 = fmul fast float %1153, %1162
  br label %1166

; <label>:1166                                    ; preds = %1136, %1128
  %1167 = phi float [ %1163, %1136 ], [ 0.000000e+00, %1128 ]
  %1168 = phi float [ %1164, %1136 ], [ 0.000000e+00, %1128 ]
  %1169 = phi float [ %1165, %1136 ], [ 0.000000e+00, %1128 ]
  %1170 = fcmp fast ogt float %1167, 0.000000e+00
  %1171 = fcmp fast ogt float %1168, 0.000000e+00
  %1172 = fcmp fast ogt float %1169, 0.000000e+00
  %1173 = call float @dx.op.unary.f32(i32 23, float %1167)  ; Log(value)
  %1174 = call float @dx.op.unary.f32(i32 23, float %1168)  ; Log(value)
  %1175 = call float @dx.op.unary.f32(i32 23, float %1169)  ; Log(value)
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = lshr i32 %1177, 7
  %1179 = and i32 %1178, 32752
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = fmul fast float %1173, 0xBFE62E4300000000
  %1182 = fmul fast float %1181, %1180
  %1183 = fmul fast float %1174, 0xBFE62E4300000000
  %1184 = fmul fast float %1183, %1180
  %1185 = fmul fast float %1175, 0xBFE62E4300000000
  %1186 = fmul fast float %1185, %1180
  %1187 = select i1 %1170, float %1182, float 1.270000e+02
  %1188 = select i1 %1171, float %1184, float 1.270000e+02
  %1189 = select i1 %1172, float %1186, float 1.270000e+02
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = and i32 %1191, 10240
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1238, label %1194

; <label>:1194                                    ; preds = %1166
  %1195 = add i32 %48, 540
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = add i32 %1197, 0
  %1199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1199, %dx.types.Handle %94, float %595, float %596, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 1
  %1202 = extractvalue %dx.types.ResRet.f32 %1200, 3
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = and i32 %1204, 1048576
  %1206 = icmp ne i32 %1205, 0
  %1207 = and i32 %1204, 8192
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1224, label %1209

; <label>:1209                                    ; preds = %1194
  %1210 = extractvalue %dx.types.ResRet.f32 %1200, 2
  %1211 = select i1 %1206, float %1210, float %1201
  %1212 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1213 = select i1 %1206, float %1212, float %1201
  %1214 = add i32 %48, 96
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = lshr i32 %1216, 16
  %1218 = and i32 %1217, 255
  %1219 = uitofp i32 %1218 to float
  %1220 = fmul fast float %1219, 0x3F80101020000000
  %1221 = fmul fast float %1220, %1213
  %1222 = fmul fast float %1220, %1201
  %1223 = fmul fast float %1220, %1211
  br label %1224

; <label>:1224                                    ; preds = %1209, %1194
  %1225 = phi float [ %1221, %1209 ], [ 0.000000e+00, %1194 ]
  %1226 = phi float [ %1222, %1209 ], [ 0.000000e+00, %1194 ]
  %1227 = phi float [ %1223, %1209 ], [ 0.000000e+00, %1194 ]
  %1228 = and i32 %1204, 2048
  %1229 = icmp eq i32 %1228, 0
  br i1 %1229, label %1238, label %1230

; <label>:1230                                    ; preds = %1224
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = shl i32 %1232, 4
  %1234 = and i32 %1233, 32752
  %1235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1234)  ; LegacyF16ToF32(value)
  %1236 = fmul fast float %1235, %1202
  %1237 = call float @dx.op.binary.f32(i32 35, float %1236, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1238

; <label>:1238                                    ; preds = %1230, %1224, %1166
  %1239 = phi float [ %1225, %1230 ], [ %1225, %1224 ], [ 0.000000e+00, %1166 ]
  %1240 = phi float [ %1226, %1230 ], [ %1226, %1224 ], [ 0.000000e+00, %1166 ]
  %1241 = phi float [ %1227, %1230 ], [ %1227, %1224 ], [ 0.000000e+00, %1166 ]
  %1242 = phi float [ %1237, %1230 ], [ 0x3F70101020000000, %1224 ], [ 0x3F70101020000000, %1166 ]
  %1243 = add i32 %48, 96
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = and i32 %1245, 255
  %1247 = uitofp i32 %1246 to float
  %1248 = lshr i32 %1245, 8
  %1249 = and i32 %1248, 255
  %1250 = uitofp i32 %1249 to float
  %1251 = call float @dx.op.dot3.f32(i32 55, float %1001, float %1002, float %1003, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1252 = fmul fast float %1250, %1251
  %1253 = fadd fast float %1252, %1247
  %1254 = fmul fast float %1253, 0x3F70101020000000
  %1255 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  br label %1256

; <label>:1256                                    ; preds = %1238, %481
  %1257 = phi float [ 0.000000e+00, %481 ], [ %1082, %1238 ]
  %1258 = phi float [ 0.000000e+00, %481 ], [ %1083, %1238 ]
  %1259 = phi float [ 0.000000e+00, %481 ], [ %1001, %1238 ]
  %1260 = phi float [ 0.000000e+00, %481 ], [ %1002, %1238 ]
  %1261 = phi float [ 0.000000e+00, %481 ], [ %1003, %1238 ]
  %1262 = phi float [ 0.000000e+00, %481 ], [ %1129, %1238 ]
  %1263 = phi float [ 0.000000e+00, %481 ], [ %1130, %1238 ]
  %1264 = phi float [ 0.000000e+00, %481 ], [ %1131, %1238 ]
  %1265 = phi float [ 0.000000e+00, %481 ], [ %1239, %1238 ]
  %1266 = phi float [ 0.000000e+00, %481 ], [ %1240, %1238 ]
  %1267 = phi float [ 0.000000e+00, %481 ], [ %1241, %1238 ]
  %1268 = phi float [ 0.000000e+00, %481 ], [ %1187, %1238 ]
  %1269 = phi float [ 0.000000e+00, %481 ], [ %1188, %1238 ]
  %1270 = phi float [ 0.000000e+00, %481 ], [ %1189, %1238 ]
  %1271 = phi float [ 0.000000e+00, %481 ], [ %987, %1238 ]
  %1272 = phi float [ 0.000000e+00, %481 ], [ %783, %1238 ]
  %1273 = phi float [ 0.000000e+00, %481 ], [ %1081, %1238 ]
  %1274 = phi float [ 0.000000e+00, %481 ], [ %1084, %1238 ]
  %1275 = phi float [ 0.000000e+00, %481 ], [ %1242, %1238 ]
  %1276 = phi float [ 0.000000e+00, %481 ], [ %1255, %1238 ]
  br i1 %429, label %2314, label %1277

; <label>:1277                                    ; preds = %1256
  %1278 = icmp ult i32 %487, 2
  %1279 = add i32 %48, 40
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = add i32 %48, 44
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = or i32 %1284, %1281
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %2314, label %1287

; <label>:1287                                    ; preds = %1277
  %1288 = and i32 %1281, 262144
  %1289 = icmp ne i32 %1288, 0
  %1290 = select i1 %1289, float %51, float 1.000000e+00
  %1291 = select i1 %1289, float %52, float 0.000000e+00
  %1292 = select i1 %1289, float %53, float 0.000000e+00
  %1293 = select i1 %1289, float %54, float 1.000000e+00
  %1294 = select i1 %1289, float %55, float %76
  %1295 = select i1 %1289, float %56, float %77
  %1296 = add i32 %48, 300
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = lshr i32 %1298, 16
  %1300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1299)  ; LegacyF16ToF32(value)
  %1301 = fmul fast float %1300, 0x3F50624DE0000000
  %1302 = add i32 %48, 104
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = lshr i32 %1304, 16
  %1306 = and i32 %1305, 255
  %1307 = lshr i32 %1304, 24
  %1308 = add i32 %48, 308
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = and i32 %1310, 65535
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = lshr i32 %1310, 16
  %1314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1313)  ; LegacyF16ToF32(value)
  %1315 = add i32 %48, 48
  %1316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1317 = extractvalue %dx.types.ResRet.i32 %1316, 0
  %1318 = lshr i32 %1317, 22
  %1319 = shl nuw nsw i32 %1318, 5
  %1320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1319)  ; LegacyF16ToF32(value)
  %1321 = shl i32 %1317, 4
  %1322 = and i32 %1321, 32752
  %1323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1322)  ; LegacyF16ToF32(value)
  %1324 = lshr i32 %1317, 7
  %1325 = and i32 %1324, 32752
  %1326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1325)  ; LegacyF16ToF32(value)
  %1327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1328 = extractvalue %dx.types.CBufRet.f32 %1327, 3
  %1329 = fmul fast float %1328, 1.000000e+03
  %1330 = fmul fast float %339, %1329
  %1331 = call float @dx.op.unary.f32(i32 22, float %1330)  ; Frc(value)
  %1332 = fadd fast float %1331, %329
  %1333 = fmul fast float %340, %1329
  %1334 = call float @dx.op.unary.f32(i32 22, float %1333)  ; Frc(value)
  %1335 = fadd fast float %1334, %331
  %1336 = fmul fast float %1301, %1329
  %1337 = call float @dx.op.unary.f32(i32 22, float %1336)  ; Frc(value)
  %1338 = fmul fast float %1337, 0x401921FB60000000
  %1339 = fadd fast float %1338, %1320
  %1340 = call float @dx.op.unary.f32(i32 13, float %1339)  ; Sin(value)
  %1341 = call float @dx.op.unary.f32(i32 12, float %1339)  ; Cos(value)
  %1342 = fsub fast float -0.000000e+00, %1340
  %1343 = fadd fast float %1294, -5.000000e-01
  %1344 = fadd fast float %1295, -5.000000e-01
  %1345 = fmul fast float %1312, %1343
  %1346 = fmul fast float %1314, %1344
  %1347 = fadd fast float %1345, 5.000000e-01
  %1348 = fadd fast float %1346, 5.000000e-01
  %1349 = fmul fast float %1323, %1347
  %1350 = fmul fast float %1326, %1348
  %1351 = fmul fast float %1341, %1349
  %1352 = call float @dx.op.tertiary.f32(i32 46, float %1342, float %1350, float %1351)  ; FMad(a,b,c)
  %1353 = fmul fast float %1340, %1349
  %1354 = call float @dx.op.tertiary.f32(i32 46, float %1341, float %1350, float %1353)  ; FMad(a,b,c)
  %1355 = fadd fast float %1332, %1352
  %1356 = fadd fast float %1335, %1354
  %1357 = icmp ugt i32 %1306, 1
  %1358 = icmp ugt i32 %1304, 33554431
  %1359 = or i1 %1358, %1357
  br i1 %1359, label %1360, label %1385

; <label>:1360                                    ; preds = %1287
  %1361 = add i32 %48, 244
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1361, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = lshr i32 %1363, 16
  %1365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1364)  ; LegacyF16ToF32(value)
  %1366 = fmul fast float %1328, %1365
  %1367 = call float @dx.op.unary.f32(i32 22, float %1366)  ; Frc(value)
  %1368 = mul nuw nsw i32 %1306, %1307
  %1369 = uitofp i32 %1368 to float
  %1370 = fmul fast float %1367, %1369
  %1371 = call float @dx.op.unary.f32(i32 27, float %1370)  ; Round_ni(value)
  %1372 = fptoui float %1371 to i32
  %1373 = urem i32 %1372, %1306
  %1374 = udiv i32 %1372, %1307
  %1375 = call float @dx.op.unary.f32(i32 22, float %1355)  ; Frc(value)
  %1376 = call float @dx.op.unary.f32(i32 22, float %1356)  ; Frc(value)
  %1377 = uitofp i32 %1373 to float
  %1378 = uitofp i32 %1374 to float
  %1379 = fadd fast float %1375, %1377
  %1380 = fadd fast float %1376, %1378
  %1381 = uitofp i32 %1306 to float
  %1382 = uitofp i32 %1307 to float
  %1383 = fdiv fast float %1379, %1381
  %1384 = fdiv fast float %1380, %1382
  br label %1385

; <label>:1385                                    ; preds = %1360, %1287
  %1386 = phi float [ %1383, %1360 ], [ %1355, %1287 ]
  %1387 = phi float [ %1384, %1360 ], [ %1356, %1287 ]
  %1388 = and i32 %1281, 16777216
  %1389 = icmp eq i32 %1388, 0
  br i1 %1389, label %1499, label %1390

; <label>:1390                                    ; preds = %1385
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 0
  %1393 = extractvalue %dx.types.CBufRet.f32 %1391, 1
  %1394 = extractvalue %dx.types.CBufRet.f32 %1391, 2
  %1395 = fadd fast float %1392, %152
  %1396 = fadd fast float %1393, %153
  %1397 = fadd fast float %1394, %154
  %1398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.f32 %1398, 0
  %1400 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1401 = icmp eq i32 %49, 65535
  br i1 %1401, label %1496, label %1402

; <label>:1402                                    ; preds = %1390
  %1403 = lshr i32 %49, 1
  %1404 = shl i32 %1403, 2
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = and i32 %49, 1
  %1408 = icmp ne i32 %1407, 0
  %1409 = lshr i32 %1406, 16
  %1410 = and i32 %1406, 65535
  %1411 = select i1 %1408, i32 %1409, i32 %1410
  %1412 = icmp eq i32 %1411, 65535
  br i1 %1412, label %1492, label %1413

; <label>:1413                                    ; preds = %1402
  %1414 = mul nuw nsw i32 %1411, 40
  %1415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1414, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.ResRet.f32 %1415, 1
  %1418 = extractvalue %dx.types.ResRet.f32 %1415, 2
  %1419 = add nuw nsw i32 %1414, 12
  %1420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = extractvalue %dx.types.ResRet.f32 %1420, 1
  %1423 = extractvalue %dx.types.ResRet.f32 %1420, 2
  %1424 = add nuw nsw i32 %1414, 24
  %1425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.f32 %1425, 0
  %1427 = extractvalue %dx.types.ResRet.f32 %1425, 1
  %1428 = extractvalue %dx.types.ResRet.f32 %1425, 2
  %1429 = add nuw nsw i32 %1414, 36
  %1430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1429, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = fsub fast float %1395, %1416
  %1433 = fsub fast float %1396, %1417
  %1434 = fsub fast float %1397, %1418
  %1435 = fmul fast float %1431, %1432
  %1436 = fmul fast float %1431, %1433
  %1437 = fmul fast float %1431, %1434
  %1438 = call float @dx.op.unary.f32(i32 27, float %1435)  ; Round_ni(value)
  %1439 = call float @dx.op.unary.f32(i32 27, float %1436)  ; Round_ni(value)
  %1440 = call float @dx.op.unary.f32(i32 27, float %1437)  ; Round_ni(value)
  %1441 = fadd fast float %1438, 5.000000e-01
  %1442 = fadd fast float %1439, 5.000000e-01
  %1443 = fadd fast float %1440, 5.000000e-01
  %1444 = fmul fast float %1441, %1421
  %1445 = fmul fast float %1442, %1422
  %1446 = fmul fast float %1443, %1423
  %1447 = shl i32 %49, 2
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = add i32 %1449, 0
  %1451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1450, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1452 = call float @dx.op.unary.f32(i32 22, float %1444)  ; Frc(value)
  %1453 = call float @dx.op.unary.f32(i32 22, float %1445)  ; Frc(value)
  %1454 = call float @dx.op.unary.f32(i32 22, float %1446)  ; Frc(value)
  %1455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1451, %dx.types.Handle %43, float %1452, float %1453, float %1454, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1456 = extractvalue %dx.types.ResRet.f32 %1455, 0
  %1457 = extractvalue %dx.types.ResRet.f32 %1455, 1
  %1458 = extractvalue %dx.types.ResRet.f32 %1455, 2
  %1459 = fmul fast float %1456, 1.023000e+03
  %1460 = fmul fast float %1457, 1.023000e+03
  %1461 = fmul fast float %1458, 1.023000e+03
  %1462 = fadd fast float %1459, 5.000000e-01
  %1463 = fadd fast float %1460, 5.000000e-01
  %1464 = fadd fast float %1461, 5.000000e-01
  %1465 = call float @dx.op.unary.f32(i32 27, float %1462)  ; Round_ni(value)
  %1466 = call float @dx.op.unary.f32(i32 27, float %1463)  ; Round_ni(value)
  %1467 = call float @dx.op.unary.f32(i32 27, float %1464)  ; Round_ni(value)
  %1468 = fsub fast float %1435, %1438
  %1469 = fsub fast float %1436, %1439
  %1470 = fsub fast float %1437, %1440
  %1471 = fmul fast float %1468, 7.500000e-01
  %1472 = fmul fast float %1469, 7.500000e-01
  %1473 = fmul fast float %1470, 7.500000e-01
  %1474 = fadd fast float %1438, 1.250000e-01
  %1475 = fadd fast float %1474, %1471
  %1476 = fadd fast float %1475, %1465
  %1477 = fadd fast float %1439, 1.250000e-01
  %1478 = fadd fast float %1477, %1472
  %1479 = fadd fast float %1478, %1466
  %1480 = fadd fast float %1440, 1.250000e-01
  %1481 = fadd fast float %1480, %1473
  %1482 = fadd fast float %1481, %1467
  %1483 = fmul fast float %1476, %1426
  %1484 = fmul fast float %1479, %1427
  %1485 = fmul fast float %1482, %1428
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = add i32 %1487, 0
  %1489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1489, %dx.types.Handle %41, float %1483, float %1484, float %1485, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1491 = extractvalue %dx.types.ResRet.f32 %1490, 0
  br label %1492

; <label>:1492                                    ; preds = %1413, %1402
  %1493 = phi float [ %1491, %1413 ], [ -1.000000e+00, %1402 ]
  %1494 = fadd fast float %1493, %1400
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  br label %1496

; <label>:1496                                    ; preds = %1492, %1390
  %1497 = phi float [ %1495, %1492 ], [ %1400, %1390 ]
  %1498 = fmul fast float %1497, %484
  br label %1499

; <label>:1499                                    ; preds = %1496, %1385
  %1500 = phi float [ %1498, %1496 ], [ %484, %1385 ]
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = and i32 %1502, 256
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1551, label %1505

; <label>:1505                                    ; preds = %1499
  %1506 = add i32 %48, 492
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = add i32 %1508, 0
  %1510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1509, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1511 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1510, %dx.types.Handle %94, float %1386, float %1387, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1512 = extractvalue %dx.types.ResRet.f32 %1511, 0
  %1513 = add i32 %48, 116
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = shl i32 %1515, 4
  %1517 = and i32 %1516, 32752
  %1518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1517)  ; LegacyF16ToF32(value)
  %1519 = lshr i32 %1515, 7
  %1520 = and i32 %1519, 32752
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = fsub fast float 1.000000e+00, %1500
  %1523 = call float @dx.op.binary.f32(i32 35, float %1522, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1524 = bitcast float %1500 to i32
  %1525 = sitofp i32 %1524 to float
  %1526 = fadd fast float %1525, 0xC1CFBF8940000000
  %1527 = fmul fast float %1521, %1526
  %1528 = fadd fast float %1527, 0x41CFBF8940000000
  %1529 = fptosi float %1528 to i32
  %1530 = bitcast i32 %1529 to float
  %1531 = bitcast float %1523 to i32
  %1532 = sitofp i32 %1531 to float
  %1533 = fadd fast float %1532, 0xC1CFBF8940000000
  %1534 = fmul fast float %1533, %1521
  %1535 = fadd fast float %1534, 0x41CFBF8940000000
  %1536 = fptosi float %1535 to i32
  %1537 = bitcast i32 %1536 to float
  %1538 = fmul fast float %1530, %1518
  %1539 = fmul fast float %1537, %1518
  %1540 = fsub fast float %1523, %1538
  %1541 = fadd fast float %1539, %1523
  %1542 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1543 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  %1544 = fsub fast float %1512, %1542
  %1545 = fsub fast float %1543, %1542
  %1546 = bitcast float %1545 to i32
  %1547 = sub nsw i32 2129859010, %1546
  %1548 = bitcast i32 %1547 to float
  %1549 = fmul fast float %1548, %1544
  %1550 = call float @dx.op.unary.f32(i32 7, float %1549)  ; Saturate(value)
  br label %1551

; <label>:1551                                    ; preds = %1505, %1499
  %1552 = phi float [ %1550, %1505 ], [ %1500, %1499 ]
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 128
  %1556 = icmp eq i32 %1555, 0
  br i1 %1556, label %1573, label %1557

; <label>:1557                                    ; preds = %1551
  %1558 = add i32 %48, 476
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = add i32 %1560, 0
  %1562 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1561, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1563 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1562, %dx.types.Handle %94, float %1386, float %1387, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1564 = extractvalue %dx.types.ResRet.f32 %1563, 0
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = and i32 %1566, 524288
  %1568 = icmp ne i32 %1567, 0
  %1569 = fcmp fast ogt float %1564, 0x3FE0101020000000
  %1570 = select i1 %1569, float 1.000000e+00, float 0.000000e+00
  %1571 = select i1 %1568, float %1570, float %1564
  %1572 = fmul fast float %1571, %1552
  br label %1573

; <label>:1573                                    ; preds = %1557, %1551
  %1574 = phi float [ %1572, %1557 ], [ %1552, %1551 ]
  %1575 = fcmp fast ult float %1574, 0x3F70101020000000
  br i1 %1575, label %2314, label %1576

; <label>:1576                                    ; preds = %1573
  %1577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.i32 %1577, 0
  %1579 = and i32 %1578, 16
  %1580 = icmp eq i32 %1579, 0
  br i1 %1580, label %1779, label %1581

; <label>:1581                                    ; preds = %1576
  %1582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.i32 %1582, 0
  %1584 = add i32 %48, 428
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1584, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = add i32 %1586, 0
  %1588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1587, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1589 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1588, %dx.types.Handle %93, float %1386, float %1387, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1590 = extractvalue %dx.types.ResRet.f32 %1589, 0
  %1591 = extractvalue %dx.types.ResRet.f32 %1589, 1
  %1592 = extractvalue %dx.types.ResRet.f32 %1589, 2
  %1593 = extractvalue %dx.types.ResRet.f32 %1589, 3
  %1594 = and i32 %1583, 255
  %1595 = uitofp i32 %1594 to float
  %1596 = lshr i32 %1583, 8
  %1597 = and i32 %1596, 255
  %1598 = uitofp i32 %1597 to float
  %1599 = fmul fast float %1593, %1595
  %1600 = fadd fast float %1599, %1598
  %1601 = fmul fast float %1600, 0x3F70101000000000
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 512
  %1605 = icmp eq i32 %1604, 0
  br i1 %1605, label %1614, label %1606

; <label>:1606                                    ; preds = %1581
  %1607 = add i32 %48, 512
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = add i32 %1609, 0
  %1611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1611, %dx.types.Handle %94, float %1386, float %1387, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1613 = extractvalue %dx.types.ResRet.f32 %1612, 0
  br label %1614

; <label>:1614                                    ; preds = %1606, %1581
  %1615 = phi float [ %1613, %1606 ], [ 1.000000e+00, %1581 ]
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = and i32 %1617, 33554432
  %1619 = icmp eq i32 %1618, 0
  br i1 %1619, label %1726, label %1620

; <label>:1620                                    ; preds = %1614
  %1621 = add i32 %48, 240
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1621, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = and i32 %1623, 65535
  %1625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1624)  ; LegacyF16ToF32(value)
  %1626 = lshr i32 %1623, 16
  %1627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1626)  ; LegacyF16ToF32(value)
  %1628 = add i32 %48, 244
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 65535
  %1632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1631)  ; LegacyF16ToF32(value)
  %1633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1634 = extractvalue %dx.types.ResRet.i32 %1633, 0
  %1635 = lshr i32 %1634, 24
  %1636 = uitofp i32 %1635 to float
  %1637 = fmul fast float %1636, 0x3F70101020000000
  %1638 = and i32 %1634, 255
  %1639 = uitofp i32 %1638 to float
  %1640 = fmul fast float %1639, 0x3F70101020000000
  %1641 = lshr i32 %1634, 8
  %1642 = and i32 %1641, 255
  %1643 = uitofp i32 %1642 to float
  %1644 = fmul fast float %1643, 0x3F70101020000000
  %1645 = lshr i32 %1634, 16
  %1646 = and i32 %1645, 255
  %1647 = uitofp i32 %1646 to float
  %1648 = fmul fast float %1647, 0x3F70101020000000
  %1649 = add i32 %48, 236
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = lshr i32 %1651, 24
  %1653 = uitofp i32 %1652 to float
  %1654 = fmul fast float %1653, 0x3F70101020000000
  %1655 = and i32 %1651, 255
  %1656 = uitofp i32 %1655 to float
  %1657 = fmul fast float %1656, 0x3F70101020000000
  %1658 = lshr i32 %1651, 8
  %1659 = and i32 %1658, 255
  %1660 = uitofp i32 %1659 to float
  %1661 = fmul fast float %1660, 0x3F70101020000000
  %1662 = lshr i32 %1651, 16
  %1663 = and i32 %1662, 255
  %1664 = uitofp i32 %1663 to float
  %1665 = fmul fast float %1664, 0x3F70101020000000
  %1666 = bitcast float %1590 to i32
  %1667 = ashr i32 %1666, 1
  %1668 = sub nsw i32 1597463174, %1667
  %1669 = bitcast i32 %1668 to float
  %1670 = fmul fast float %1590, 5.000000e-01
  %1671 = fmul fast float %1669, %1669
  %1672 = fmul fast float %1671, %1670
  %1673 = fsub fast float 1.500000e+00, %1672
  %1674 = fmul fast float %1669, %1590
  %1675 = fmul fast float %1674, %1673
  %1676 = bitcast float %1591 to i32
  %1677 = ashr i32 %1676, 1
  %1678 = sub nsw i32 1597463174, %1677
  %1679 = bitcast i32 %1678 to float
  %1680 = fmul fast float %1591, 5.000000e-01
  %1681 = fmul fast float %1679, %1679
  %1682 = fmul fast float %1681, %1680
  %1683 = fsub fast float 1.500000e+00, %1682
  %1684 = fmul fast float %1679, %1591
  %1685 = fmul fast float %1684, %1683
  %1686 = bitcast float %1592 to i32
  %1687 = ashr i32 %1686, 1
  %1688 = sub nsw i32 1597463174, %1687
  %1689 = bitcast i32 %1688 to float
  %1690 = fmul fast float %1592, 5.000000e-01
  %1691 = fmul fast float %1689, %1689
  %1692 = fmul fast float %1691, %1690
  %1693 = fsub fast float 1.500000e+00, %1692
  %1694 = fmul fast float %1689, %1592
  %1695 = fmul fast float %1694, %1693
  %1696 = fsub fast float %1675, %1657
  %1697 = fsub fast float %1685, %1661
  %1698 = fsub fast float %1695, %1665
  %1699 = fmul fast float %1696, %1625
  %1700 = fmul fast float %1697, %1627
  %1701 = fmul fast float %1698, %1632
  %1702 = fadd fast float %1699, %1640
  %1703 = fadd fast float %1700, %1644
  %1704 = fadd fast float %1701, %1648
  %1705 = call float @dx.op.unary.f32(i32 7, float %1702)  ; Saturate(value)
  %1706 = call float @dx.op.unary.f32(i32 7, float %1703)  ; Saturate(value)
  %1707 = call float @dx.op.unary.f32(i32 7, float %1704)  ; Saturate(value)
  %1708 = fmul fast float %1705, %1705
  %1709 = fmul fast float %1706, %1706
  %1710 = fmul fast float %1707, %1707
  %1711 = fsub fast float %1708, %1590
  %1712 = fsub fast float %1709, %1591
  %1713 = fsub fast float %1710, %1592
  %1714 = fmul fast float %1711, %1615
  %1715 = fmul fast float %1712, %1615
  %1716 = fmul fast float %1713, %1615
  %1717 = fadd fast float %1714, %1590
  %1718 = fadd fast float %1715, %1591
  %1719 = fadd fast float %1716, %1592
  %1720 = fadd fast float %1637, %1601
  %1721 = fsub fast float %1720, %1654
  %1722 = call float @dx.op.unary.f32(i32 7, float %1721)  ; Saturate(value)
  %1723 = fsub fast float %1722, %1601
  %1724 = fmul fast float %1723, %1615
  %1725 = fadd fast float %1724, %1601
  br label %1779

; <label>:1726                                    ; preds = %1614
  %1727 = and i32 %1617, 134217728
  %1728 = icmp eq i32 %1727, 0
  br i1 %1728, label %1763, label %1729

; <label>:1729                                    ; preds = %1726
  %1730 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %1731 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %1732 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %1733 = fadd fast float %1730, -5.000000e-01
  %1734 = fadd fast float %1731, -5.000000e-01
  %1735 = fadd fast float %1732, -5.000000e-01
  %1736 = fmul fast float %1733, %1615
  %1737 = fmul fast float %1734, %1615
  %1738 = fmul fast float %1735, %1615
  %1739 = fadd fast float %1736, 5.000000e-01
  %1740 = fadd fast float %1737, 5.000000e-01
  %1741 = fadd fast float %1738, 5.000000e-01
  %1742 = call float @dx.op.unary.f32(i32 24, float %1590)  ; Sqrt(value)
  %1743 = call float @dx.op.unary.f32(i32 24, float %1591)  ; Sqrt(value)
  %1744 = call float @dx.op.unary.f32(i32 24, float %1592)  ; Sqrt(value)
  %1745 = fmul fast float %1739, 2.000000e+00
  %1746 = fsub fast float 1.000000e+00, %1745
  %1747 = fmul fast float %1746, %1742
  %1748 = fadd fast float %1747, %1745
  %1749 = fmul fast float %1748, %1742
  %1750 = fmul fast float %1740, 2.000000e+00
  %1751 = fsub fast float 1.000000e+00, %1750
  %1752 = fmul fast float %1751, %1743
  %1753 = fadd fast float %1752, %1750
  %1754 = fmul fast float %1753, %1743
  %1755 = fmul fast float %1741, 2.000000e+00
  %1756 = fsub fast float 1.000000e+00, %1755
  %1757 = fmul fast float %1756, %1744
  %1758 = fadd fast float %1757, %1755
  %1759 = fmul fast float %1758, %1744
  %1760 = fmul fast float %1749, %1749
  %1761 = fmul fast float %1754, %1754
  %1762 = fmul fast float %1759, %1759
  br label %1779

; <label>:1763                                    ; preds = %1726
  %1764 = fmul fast float %316, %316
  %1765 = fmul fast float %320, %320
  %1766 = fmul fast float %324, %324
  %1767 = fadd fast float %1764, -1.000000e+00
  %1768 = fadd fast float %1765, -1.000000e+00
  %1769 = fadd fast float %1766, -1.000000e+00
  %1770 = fmul fast float %1615, %1767
  %1771 = fmul fast float %1615, %1768
  %1772 = fmul fast float %1615, %1769
  %1773 = fadd fast float %1770, 1.000000e+00
  %1774 = fadd fast float %1771, 1.000000e+00
  %1775 = fadd fast float %1772, 1.000000e+00
  %1776 = fmul fast float %1773, %1590
  %1777 = fmul fast float %1774, %1591
  %1778 = fmul fast float %1775, %1592
  br label %1779

; <label>:1779                                    ; preds = %1763, %1729, %1620, %1576
  %1780 = phi float [ %1725, %1620 ], [ %1601, %1729 ], [ %1601, %1763 ], [ 0x3FA23C0BE0000000, %1576 ]
  %1781 = phi float [ %1717, %1620 ], [ %1760, %1729 ], [ %1776, %1763 ], [ 1.000000e+00, %1576 ]
  %1782 = phi float [ %1718, %1620 ], [ %1761, %1729 ], [ %1777, %1763 ], [ 1.000000e+00, %1576 ]
  %1783 = phi float [ %1719, %1620 ], [ %1762, %1729 ], [ %1778, %1763 ], [ 1.000000e+00, %1576 ]
  %1784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1785 = extractvalue %dx.types.CBufRet.i32 %1784, 1
  %1786 = and i32 %1785, 1
  %1787 = icmp ne i32 %1786, 0
  %1788 = add i32 %48, 356
  %1789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1788, i32 undef)  ; BufferLoad(srv,index,wot)
  %1790 = extractvalue %dx.types.ResRet.i32 %1789, 0
  %1791 = and i32 %1790, 32
  %1792 = icmp ne i32 %1791, 0
  %1793 = and i1 %1787, %1792
  %1794 = select i1 %1793, float 1.000000e+00, float %1781
  %1795 = select i1 %1793, float 0x3FD3333340000000, float %1782
  %1796 = select i1 %1793, float 0x3FD3333340000000, float %1783
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = and i32 %1798, 32
  %1800 = icmp eq i32 %1799, 0
  br i1 %1800, label %1873, label %1801

; <label>:1801                                    ; preds = %1779
  %1802 = add i32 %48, 108
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = add i32 %48, 444
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = add i32 %1807, 0
  %1809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1808, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1810 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1809, %dx.types.Handle %93, float %1386, float %1387, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1811 = extractvalue %dx.types.ResRet.f32 %1810, 0
  %1812 = extractvalue %dx.types.ResRet.f32 %1810, 1
  %1813 = extractvalue %dx.types.ResRet.f32 %1810, 2
  %1814 = extractvalue %dx.types.ResRet.f32 %1810, 3
  %1815 = and i32 %1804, 255
  %1816 = uitofp i32 %1815 to float
  %1817 = lshr i32 %1804, 8
  %1818 = and i32 %1817, 255
  %1819 = uitofp i32 %1818 to float
  %1820 = lshr i32 %1804, 16
  %1821 = and i32 %1820, 255
  %1822 = uitofp i32 %1821 to float
  %1823 = fmul fast float %1822, 0x3F70101000000000
  %1824 = fmul fast float %1811, %1816
  %1825 = fadd fast float %1824, %1819
  %1826 = fmul fast float %1825, 0x3F70101000000000
  %1827 = fadd fast float %1812, -5.000000e-01
  %1828 = fadd fast float %1814, -5.000000e-01
  %1829 = fmul fast float %1827, %1823
  %1830 = fmul fast float %1828, %1823
  %1831 = fadd fast float %1829, 5.000000e-01
  %1832 = fadd fast float %1830, 5.000000e-01
  %1833 = fmul fast float %1831, 2.000000e+00
  %1834 = fadd fast float %1833, -1.000000e+00
  %1835 = fmul fast float %1832, 2.000000e+00
  %1836 = fadd fast float %1835, -1.000000e+00
  %1837 = fadd fast float %1834, %1836
  %1838 = fmul fast float %1837, 5.000000e-01
  %1839 = fsub fast float %1834, %1836
  %1840 = fmul fast float %1839, 5.000000e-01
  %1841 = call float @dx.op.unary.f32(i32 6, float %1838)  ; FAbs(value)
  %1842 = fsub fast float 1.000000e+00, %1841
  %1843 = call float @dx.op.unary.f32(i32 6, float %1840)  ; FAbs(value)
  %1844 = fsub fast float %1842, %1843
  %1845 = call float @dx.op.dot3.f32(i32 55, float %1838, float %1840, float %1844, float %1838, float %1840, float %1844)  ; Dot3(ax,ay,az,bx,by,bz)
  %1846 = call float @dx.op.unary.f32(i32 25, float %1845)  ; Rsqrt(value)
  %1847 = fmul fast float %1838, %1846
  %1848 = fmul fast float %1840, %1846
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = and i32 %1850, 67108864
  %1852 = icmp eq i32 %1851, 0
  br i1 %1852, label %1869, label %1853

; <label>:1853                                    ; preds = %1801
  %1854 = add i32 %48, 296
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = and i32 %1856, 65535
  %1858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1857)  ; LegacyF16ToF32(value)
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = and i32 %1860, 65535
  %1862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1861)  ; LegacyF16ToF32(value)
  %1863 = lshr i32 %1856, 16
  %1864 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1863)  ; LegacyF16ToF32(value)
  %1865 = fsub fast float %1826, %1864
  %1866 = fmul fast float %1865, %1858
  %1867 = fadd fast float %1866, %1862
  %1868 = call float @dx.op.unary.f32(i32 7, float %1867)  ; Saturate(value)
  br label %1869

; <label>:1869                                    ; preds = %1853, %1801
  %1870 = phi float [ %1868, %1853 ], [ %1826, %1801 ]
  %1871 = call float @dx.op.dot2.f32(i32 54, float %1847, float %1848, float %1290, float %1291)  ; Dot2(ax,ay,bx,by)
  %1872 = call float @dx.op.dot2.f32(i32 54, float %1847, float %1848, float %1292, float %1293)  ; Dot2(ax,ay,bx,by)
  br label %1873

; <label>:1873                                    ; preds = %1869, %1779
  %1874 = phi float [ %1870, %1869 ], [ 0x3FD6666660000000, %1779 ]
  %1875 = phi float [ %1871, %1869 ], [ 0.000000e+00, %1779 ]
  %1876 = phi float [ %1872, %1869 ], [ 0.000000e+00, %1779 ]
  %1877 = phi float [ %1813, %1869 ], [ 1.000000e+00, %1779 ]
  %1878 = add i32 %48, 176
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = lshr i32 %1880, 22
  %1882 = shl nuw nsw i32 %1881, 5
  %1883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1882)  ; LegacyF16ToF32(value)
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = and i32 %1885, 64
  %1887 = icmp eq i32 %1886, 0
  br i1 %1887, label %1921, label %1888

; <label>:1888                                    ; preds = %1873
  %1889 = add i32 %48, 460
  %1890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.i32 %1890, 0
  %1892 = add i32 %1891, 0
  %1893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1892, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.i32 %1894, 0
  %1896 = and i32 %1895, 131072
  %1897 = icmp eq i32 %1896, 0
  %1898 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1893, %dx.types.Handle %93, float %1386, float %1387, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1899 = extractvalue %dx.types.ResRet.f32 %1898, 0
  %1900 = extractvalue %dx.types.ResRet.f32 %1898, 1
  %1901 = extractvalue %dx.types.ResRet.f32 %1898, 2
  %1902 = fmul fast float %1899, %304
  %1903 = fmul fast float %1900, %307
  %1904 = fmul fast float %1901, %310
  br i1 %1897, label %1911, label %1905

; <label>:1905                                    ; preds = %1888
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 0
  %1908 = fmul fast float %1907, %1902
  %1909 = fmul fast float %1907, %1903
  %1910 = fmul fast float %1907, %1904
  br label %1911

; <label>:1911                                    ; preds = %1905, %1888
  %1912 = phi float [ %1908, %1905 ], [ %1902, %1888 ]
  %1913 = phi float [ %1909, %1905 ], [ %1903, %1888 ]
  %1914 = phi float [ %1910, %1905 ], [ %1904, %1888 ]
  %1915 = fmul fast float %1912, %1883
  %1916 = select i1 %245, float %1915, float %1912
  %1917 = call float @dx.op.dot3.f32(i32 55, float %1916, float %1913, float %1914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1918 = select i1 %245, float 0.000000e+00, float %1912
  %1919 = select i1 %245, float %1917, float %1913
  %1920 = select i1 %245, float 0.000000e+00, float %1914
  br label %1921

; <label>:1921                                    ; preds = %1911, %1873
  %1922 = phi float [ %1918, %1911 ], [ 0.000000e+00, %1873 ]
  %1923 = phi float [ %1919, %1911 ], [ 0.000000e+00, %1873 ]
  %1924 = phi float [ %1920, %1911 ], [ 0.000000e+00, %1873 ]
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = and i32 %1926, 1024
  %1928 = icmp eq i32 %1927, 0
  br i1 %1928, label %1959, label %1929

; <label>:1929                                    ; preds = %1921
  %1930 = add i32 %48, 168
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = and i32 %1932, 255
  %1934 = uitofp i32 %1933 to float
  %1935 = fmul fast float %1934, 0x3F70101020000000
  %1936 = lshr i32 %1932, 8
  %1937 = and i32 %1936, 255
  %1938 = uitofp i32 %1937 to float
  %1939 = fmul fast float %1938, 0x3F70101020000000
  %1940 = lshr i32 %1932, 16
  %1941 = and i32 %1940, 255
  %1942 = uitofp i32 %1941 to float
  %1943 = fmul fast float %1942, 0x3F70101020000000
  %1944 = fmul fast float %1935, %1935
  %1945 = fmul fast float %1939, %1939
  %1946 = fmul fast float %1943, %1943
  %1947 = add i32 %48, 528
  %1948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1947, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = add i32 %1949, 0
  %1951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1950, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1952 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1951, %dx.types.Handle %94, float %1386, float %1387, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  %1954 = extractvalue %dx.types.ResRet.f32 %1952, 1
  %1955 = extractvalue %dx.types.ResRet.f32 %1952, 2
  %1956 = fmul fast float %1944, %1953
  %1957 = fmul fast float %1945, %1954
  %1958 = fmul fast float %1946, %1955
  br label %1959

; <label>:1959                                    ; preds = %1929, %1921
  %1960 = phi float [ %1956, %1929 ], [ 0.000000e+00, %1921 ]
  %1961 = phi float [ %1957, %1929 ], [ 0.000000e+00, %1921 ]
  %1962 = phi float [ %1958, %1929 ], [ 0.000000e+00, %1921 ]
  %1963 = fcmp fast ogt float %1960, 0.000000e+00
  %1964 = fcmp fast ogt float %1961, 0.000000e+00
  %1965 = fcmp fast ogt float %1962, 0.000000e+00
  %1966 = call float @dx.op.unary.f32(i32 23, float %1960)  ; Log(value)
  %1967 = call float @dx.op.unary.f32(i32 23, float %1961)  ; Log(value)
  %1968 = call float @dx.op.unary.f32(i32 23, float %1962)  ; Log(value)
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = lshr i32 %1970, 7
  %1972 = and i32 %1971, 32752
  %1973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1972)  ; LegacyF16ToF32(value)
  %1974 = fmul fast float %1966, 0xBFE62E4300000000
  %1975 = fmul fast float %1974, %1973
  %1976 = fmul fast float %1967, 0xBFE62E4300000000
  %1977 = fmul fast float %1976, %1973
  %1978 = fmul fast float %1968, 0xBFE62E4300000000
  %1979 = fmul fast float %1978, %1973
  %1980 = select i1 %1963, float %1975, float 1.270000e+02
  %1981 = select i1 %1964, float %1977, float 1.270000e+02
  %1982 = select i1 %1965, float %1979, float 1.270000e+02
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = and i32 %1984, 10240
  %1986 = icmp eq i32 %1985, 0
  br i1 %1986, label %2031, label %1987

; <label>:1987                                    ; preds = %1959
  %1988 = add i32 %48, 544
  %1989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.i32 %1989, 0
  %1991 = add i32 %1990, 0
  %1992 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1991, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1993 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1992, %dx.types.Handle %94, float %1386, float %1387, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1994 = extractvalue %dx.types.ResRet.f32 %1993, 1
  %1995 = extractvalue %dx.types.ResRet.f32 %1993, 3
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = and i32 %1997, 1048576
  %1999 = icmp ne i32 %1998, 0
  %2000 = and i32 %1997, 8192
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %2017, label %2002

; <label>:2002                                    ; preds = %1987
  %2003 = extractvalue %dx.types.ResRet.f32 %1993, 2
  %2004 = select i1 %1999, float %2003, float %1994
  %2005 = extractvalue %dx.types.ResRet.f32 %1993, 0
  %2006 = select i1 %1999, float %2005, float %1994
  %2007 = add i32 %48, 112
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = lshr i32 %2009, 16
  %2011 = and i32 %2010, 255
  %2012 = uitofp i32 %2011 to float
  %2013 = fmul fast float %2012, 0x3F80101020000000
  %2014 = fmul fast float %2013, %2006
  %2015 = fmul fast float %2013, %1994
  %2016 = fmul fast float %2013, %2004
  br label %2017

; <label>:2017                                    ; preds = %2002, %1987
  %2018 = phi float [ %2014, %2002 ], [ 0.000000e+00, %1987 ]
  %2019 = phi float [ %2015, %2002 ], [ 0.000000e+00, %1987 ]
  %2020 = phi float [ %2016, %2002 ], [ 0.000000e+00, %1987 ]
  %2021 = and i32 %1997, 2048
  %2022 = icmp eq i32 %2021, 0
  br i1 %2022, label %2031, label %2023

; <label>:2023                                    ; preds = %2017
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = shl i32 %2025, 4
  %2027 = and i32 %2026, 32752
  %2028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2027)  ; LegacyF16ToF32(value)
  %2029 = fmul fast float %2028, %1995
  %2030 = call float @dx.op.binary.f32(i32 35, float %2029, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2031

; <label>:2031                                    ; preds = %2023, %2017, %1959
  %2032 = phi float [ %2018, %2023 ], [ %2018, %2017 ], [ 0.000000e+00, %1959 ]
  %2033 = phi float [ %2019, %2023 ], [ %2019, %2017 ], [ 0.000000e+00, %1959 ]
  %2034 = phi float [ %2020, %2023 ], [ %2020, %2017 ], [ 0.000000e+00, %1959 ]
  %2035 = phi float [ %2030, %2023 ], [ 0x3F70101020000000, %2017 ], [ 0x3F70101020000000, %1959 ]
  %2036 = add i32 %48, 112
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2036, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = and i32 %2038, 255
  %2040 = uitofp i32 %2039 to float
  %2041 = lshr i32 %2038, 8
  %2042 = and i32 %2041, 255
  %2043 = uitofp i32 %2042 to float
  %2044 = call float @dx.op.dot3.f32(i32 55, float %1794, float %1795, float %1796, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2045 = fmul fast float %2043, %2044
  %2046 = fadd fast float %2045, %2040
  %2047 = fmul fast float %2046, 0x3F70101020000000
  %2048 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  br i1 %1278, label %2049, label %2084

; <label>:2049                                    ; preds = %2031
  %2050 = fmul fast float %2035, 2.000000e+00
  %2051 = fcmp fast olt float %1980, 1.270000e+02
  %2052 = fcmp fast olt float %1981, 1.270000e+02
  %2053 = fcmp fast olt float %1982, 1.270000e+02
  %2054 = fmul fast float %1980, 0xBFF7154760000000
  %2055 = fmul fast float %2054, %2050
  %2056 = fmul fast float %1981, 0xBFF7154760000000
  %2057 = fmul fast float %2056, %2050
  %2058 = fmul fast float %1982, 0xBFF7154760000000
  %2059 = fmul fast float %2058, %2050
  %2060 = call float @dx.op.unary.f32(i32 21, float %2055)  ; Exp(value)
  %2061 = call float @dx.op.unary.f32(i32 21, float %2057)  ; Exp(value)
  %2062 = call float @dx.op.unary.f32(i32 21, float %2059)  ; Exp(value)
  %2063 = call float @dx.op.unary.f32(i32 7, float %2060)  ; Saturate(value)
  %2064 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  %2065 = call float @dx.op.unary.f32(i32 7, float %2062)  ; Saturate(value)
  %2066 = fadd fast float %2063, -1.000000e+00
  %2067 = select i1 %2051, float %2066, float -1.000000e+00
  %2068 = fadd fast float %2064, -1.000000e+00
  %2069 = select i1 %2052, float %2068, float -1.000000e+00
  %2070 = fadd fast float %2065, -1.000000e+00
  %2071 = select i1 %2053, float %2070, float -1.000000e+00
  %2072 = fmul fast float %2067, %1574
  %2073 = fmul fast float %2069, %1574
  %2074 = fmul fast float %2071, %1574
  %2075 = fadd fast float %2072, 1.000000e+00
  %2076 = fadd fast float %2073, 1.000000e+00
  %2077 = fadd fast float %2074, 1.000000e+00
  %2078 = fmul fast float %2075, %1259
  %2079 = fmul fast float %2076, %1260
  %2080 = fmul fast float %2077, %1261
  %2081 = fmul fast float %2075, %1262
  %2082 = fmul fast float %2076, %1263
  %2083 = fmul fast float %2077, %1264
  br label %2084

; <label>:2084                                    ; preds = %2049, %2031
  %2085 = phi float [ %2078, %2049 ], [ %1259, %2031 ]
  %2086 = phi float [ %2079, %2049 ], [ %1260, %2031 ]
  %2087 = phi float [ %2080, %2049 ], [ %1261, %2031 ]
  %2088 = phi float [ %2081, %2049 ], [ %1262, %2031 ]
  %2089 = phi float [ %2082, %2049 ], [ %1263, %2031 ]
  %2090 = phi float [ %2083, %2049 ], [ %1264, %2031 ]
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = and i32 %2092, 3
  %2094 = icmp eq i32 %2093, 3
  br i1 %2094, label %2173, label %2095

; <label>:2095                                    ; preds = %2084
  %2096 = and i32 %2092, 16
  %2097 = icmp ne i32 %2096, 0
  %2098 = select i1 %2097, float %1574, float 0.000000e+00
  %2099 = icmp eq i32 %2093, 0
  br i1 %2099, label %2100, label %2128

; <label>:2100                                    ; preds = %2095
  %2101 = and i32 %2092, 64
  %2102 = icmp ne i32 %2101, 0
  %2103 = select i1 %2102, float %1574, float 0.000000e+00
  %2104 = fsub fast float %1794, %2085
  %2105 = fsub fast float %1795, %2086
  %2106 = fsub fast float %1796, %2087
  %2107 = fmul fast float %2098, %2104
  %2108 = fmul fast float %2098, %2105
  %2109 = fmul fast float %2098, %2106
  %2110 = fadd fast float %2107, %2085
  %2111 = fadd fast float %2108, %2086
  %2112 = fadd fast float %2109, %2087
  %2113 = fsub fast float %1780, %1271
  %2114 = fmul fast float %2098, %2113
  %2115 = fadd fast float %2114, %1271
  %2116 = fsub fast float %1922, %2088
  %2117 = fsub fast float %1923, %2089
  %2118 = fsub fast float %1924, %2090
  %2119 = fmul fast float %2103, %2116
  %2120 = fmul fast float %2103, %2117
  %2121 = fmul fast float %2103, %2118
  %2122 = fadd fast float %2119, %2088
  %2123 = fadd fast float %2120, %2089
  %2124 = fadd fast float %2121, %2090
  %2125 = fsub fast float %2048, %1276
  %2126 = fmul fast float %2098, %2125
  %2127 = fadd fast float %2126, %1276
  br label %2173

; <label>:2128                                    ; preds = %2095
  %2129 = icmp eq i32 %2093, 1
  br i1 %2129, label %2130, label %2143

; <label>:2130                                    ; preds = %2128
  %2131 = fadd fast float %1794, -1.000000e+00
  %2132 = fadd fast float %1795, -1.000000e+00
  %2133 = fadd fast float %1796, -1.000000e+00
  %2134 = fmul fast float %2098, %2131
  %2135 = fmul fast float %2098, %2132
  %2136 = fmul fast float %2098, %2133
  %2137 = fadd fast float %2134, 1.000000e+00
  %2138 = fadd fast float %2135, 1.000000e+00
  %2139 = fadd fast float %2136, 1.000000e+00
  %2140 = fmul fast float %2137, %2085
  %2141 = fmul fast float %2138, %2086
  %2142 = fmul fast float %2139, %2087
  br label %2173

; <label>:2143                                    ; preds = %2128
  %2144 = icmp eq i32 %2093, 2
  br i1 %2144, label %2145, label %2173

; <label>:2145                                    ; preds = %2143
  %2146 = call float @dx.op.unary.f32(i32 24, float %1794)  ; Sqrt(value)
  %2147 = call float @dx.op.unary.f32(i32 24, float %1795)  ; Sqrt(value)
  %2148 = call float @dx.op.unary.f32(i32 24, float %1796)  ; Sqrt(value)
  %2149 = fadd fast float %2146, -5.000000e-01
  %2150 = fadd fast float %2147, -5.000000e-01
  %2151 = fadd fast float %2148, -5.000000e-01
  %2152 = fmul fast float %2149, %2098
  %2153 = fmul fast float %2150, %2098
  %2154 = fmul fast float %2151, %2098
  %2155 = fadd fast float %2152, 5.000000e-01
  %2156 = fadd fast float %2153, 5.000000e-01
  %2157 = fadd fast float %2154, 5.000000e-01
  %2158 = fmul fast float %2155, 2.000000e+00
  %2159 = fsub fast float 1.000000e+00, %2158
  %2160 = fmul fast float %2159, %2085
  %2161 = fadd fast float %2160, %2158
  %2162 = fmul fast float %2161, %2085
  %2163 = fmul fast float %2156, 2.000000e+00
  %2164 = fsub fast float 1.000000e+00, %2163
  %2165 = fmul fast float %2164, %2086
  %2166 = fadd fast float %2165, %2163
  %2167 = fmul fast float %2166, %2086
  %2168 = fmul fast float %2157, 2.000000e+00
  %2169 = fsub fast float 1.000000e+00, %2168
  %2170 = fmul fast float %2169, %2087
  %2171 = fadd fast float %2170, %2168
  %2172 = fmul fast float %2171, %2087
  br label %2173

; <label>:2173                                    ; preds = %2145, %2143, %2130, %2100, %2084
  %2174 = phi float [ %2085, %2084 ], [ %2162, %2145 ], [ %2085, %2143 ], [ %2140, %2130 ], [ %2110, %2100 ]
  %2175 = phi float [ %2086, %2084 ], [ %2167, %2145 ], [ %2086, %2143 ], [ %2141, %2130 ], [ %2111, %2100 ]
  %2176 = phi float [ %2087, %2084 ], [ %2172, %2145 ], [ %2087, %2143 ], [ %2142, %2130 ], [ %2112, %2100 ]
  %2177 = phi float [ %2088, %2084 ], [ %2088, %2145 ], [ %2088, %2143 ], [ %2088, %2130 ], [ %2122, %2100 ]
  %2178 = phi float [ %2089, %2084 ], [ %2089, %2145 ], [ %2089, %2143 ], [ %2089, %2130 ], [ %2123, %2100 ]
  %2179 = phi float [ %2090, %2084 ], [ %2090, %2145 ], [ %2090, %2143 ], [ %2090, %2130 ], [ %2124, %2100 ]
  %2180 = phi float [ %1271, %2084 ], [ %1271, %2145 ], [ %1271, %2143 ], [ %1271, %2130 ], [ %2115, %2100 ]
  %2181 = phi float [ %1276, %2084 ], [ %1276, %2145 ], [ %1276, %2143 ], [ %1276, %2130 ], [ %2127, %2100 ]
  %2182 = and i32 %2092, 12
  %2183 = icmp eq i32 %2182, 12
  br i1 %2183, label %2314, label %2184

; <label>:2184                                    ; preds = %2173
  %2185 = and i32 %2092, 2097184
  %2186 = icmp eq i32 %2185, 2097184
  %2187 = select i1 %2186, float %1574, float 0.000000e+00
  %2188 = and i32 %2092, 4194336
  %2189 = icmp eq i32 %2188, 4194336
  %2190 = select i1 %2189, float %1574, float 0.000000e+00
  %2191 = and i32 %2092, 8388640
  %2192 = icmp eq i32 %2191, 8388640
  %2193 = select i1 %2192, float %1574, float 0.000000e+00
  %2194 = and i32 %2092, 1024
  %2195 = icmp ne i32 %2194, 0
  %2196 = select i1 %2195, float %1574, float 0.000000e+00
  %2197 = and i32 %2092, 2048
  %2198 = icmp ne i32 %2197, 0
  %2199 = select i1 %2198, float %1574, float 0.000000e+00
  %2200 = and i32 %2092, 8192
  %2201 = icmp ne i32 %2200, 0
  %2202 = select i1 %2201, float %1574, float 0.000000e+00
  %2203 = icmp eq i32 %2182, 0
  br i1 %2203, label %2204, label %2238

; <label>:2204                                    ; preds = %2184
  %2205 = fsub fast float %1875, %1257
  %2206 = fsub fast float %1876, %1258
  %2207 = fmul fast float %2187, %2205
  %2208 = fmul fast float %2187, %2206
  %2209 = fadd fast float %2207, %1257
  %2210 = fadd fast float %2208, %1258
  %2211 = fsub fast float %1877, %1274
  %2212 = fmul fast float %2190, %2211
  %2213 = fadd fast float %2212, %1274
  %2214 = fsub fast float %1874, %1273
  %2215 = fmul fast float %2193, %2214
  %2216 = fadd fast float %2215, %1273
  %2217 = fsub fast float %1980, %1268
  %2218 = fsub fast float %1981, %1269
  %2219 = fsub fast float %1982, %1270
  %2220 = fmul fast float %2196, %2217
  %2221 = fmul fast float %2196, %2218
  %2222 = fmul fast float %2196, %2219
  %2223 = fadd fast float %2220, %1268
  %2224 = fadd fast float %2221, %1269
  %2225 = fadd fast float %2222, %1270
  %2226 = fsub fast float %2035, %1275
  %2227 = fmul fast float %2199, %2226
  %2228 = fadd fast float %2227, %1275
  %2229 = fsub fast float %2032, %1265
  %2230 = fsub fast float %2033, %1266
  %2231 = fsub fast float %2034, %1267
  %2232 = fmul fast float %2202, %2229
  %2233 = fmul fast float %2202, %2230
  %2234 = fmul fast float %2202, %2231
  %2235 = fadd fast float %2232, %1265
  %2236 = fadd fast float %2233, %1266
  %2237 = fadd fast float %2234, %1267
  br label %2314

; <label>:2238                                    ; preds = %2184
  %2239 = icmp eq i32 %2182, 4
  br i1 %2239, label %2240, label %2286

; <label>:2240                                    ; preds = %2238
  %2241 = fmul fast float %2187, %1875
  %2242 = fmul fast float %2187, %1876
  %2243 = fadd fast float %2241, %1257
  %2244 = fadd fast float %2242, %1258
  %2245 = call float @dx.op.binary.f32(i32 36, float %1274, float %1877)  ; FMin(a,b)
  %2246 = fsub fast float %2245, %1274
  %2247 = fmul fast float %2246, %2190
  %2248 = fadd fast float %2247, %1274
  %2249 = fadd fast float %1874, %1273
  %2250 = fmul fast float %2249, 0x3FF337FAE0000000
  %2251 = fmul fast float %1273, %1273
  %2252 = fmul fast float %1874, %1874
  %2253 = fadd fast float %2252, %2251
  %2254 = fmul fast float %2253, 0x3FE5152B00000000
  %2255 = fmul fast float %1273, 0xBFCC1F85E0000000
  %2256 = fmul fast float %2255, %1874
  %2257 = fadd fast float %2256, 0xBFE1363700000000
  %2258 = fadd fast float %2257, %2250
  %2259 = fsub fast float %2258, %2254
  %2260 = fmul fast float %2249, 0x3FBA6F0D00000000
  %2261 = fmul fast float %2253, 0x3FD0432880000000
  %2262 = fmul fast float %1273, 0xBFEF110800000000
  %2263 = fmul fast float %2262, %1874
  %2264 = fadd fast float %2263, 1.000000e+00
  %2265 = fsub fast float %2264, %2260
  %2266 = fadd fast float %2265, %2261
  %2267 = fdiv fast float %2259, %2266
  %2268 = call float @dx.op.unary.f32(i32 7, float %2267)  ; Saturate(value)
  %2269 = fsub fast float %2268, %1273
  %2270 = fmul fast float %2269, %2193
  %2271 = fadd fast float %2270, %1273
  %2272 = fmul fast float %2196, %1980
  %2273 = fmul fast float %2196, %1981
  %2274 = fmul fast float %2196, %1982
  %2275 = fadd fast float %2272, %1268
  %2276 = fadd fast float %2273, %1269
  %2277 = fadd fast float %2274, %1270
  %2278 = fmul fast float %2199, %2035
  %2279 = fadd fast float %2278, %1275
  %2280 = fmul fast float %2202, %2032
  %2281 = fmul fast float %2202, %2033
  %2282 = fmul fast float %2202, %2034
  %2283 = fadd fast float %2280, %1265
  %2284 = fadd fast float %2281, %1266
  %2285 = fadd fast float %2282, %1267
  br label %2314

; <label>:2286                                    ; preds = %2238
  %2287 = icmp eq i32 %2182, 8
  br i1 %2287, label %2288, label %2314

; <label>:2288                                    ; preds = %2286
  %2289 = fmul fast float %2187, %1875
  %2290 = fmul fast float %2187, %1876
  %2291 = fadd fast float %2289, %1257
  %2292 = fadd fast float %2290, %1258
  %2293 = call float @dx.op.binary.f32(i32 36, float %1274, float %1877)  ; FMin(a,b)
  %2294 = fsub fast float %2293, %1274
  %2295 = fmul fast float %2294, %2190
  %2296 = fadd fast float %2295, %1274
  %2297 = fsub fast float %1874, %1273
  %2298 = fmul fast float %2193, %2297
  %2299 = fadd fast float %2298, %1273
  %2300 = fmul fast float %2196, %1980
  %2301 = fmul fast float %2196, %1981
  %2302 = fmul fast float %2196, %1982
  %2303 = fadd fast float %2300, %1268
  %2304 = fadd fast float %2301, %1269
  %2305 = fadd fast float %2302, %1270
  %2306 = fmul fast float %2199, %2035
  %2307 = fadd fast float %2306, %1275
  %2308 = fmul fast float %2202, %2032
  %2309 = fmul fast float %2202, %2033
  %2310 = fmul fast float %2202, %2034
  %2311 = fadd fast float %2308, %1265
  %2312 = fadd fast float %2309, %1266
  %2313 = fadd fast float %2310, %1267
  br label %2314

; <label>:2314                                    ; preds = %2288, %2286, %2240, %2204, %2173, %1573, %1277, %1256
  %2315 = phi float [ %1257, %2173 ], [ %1257, %1573 ], [ %1257, %1256 ], [ %2291, %2288 ], [ %1257, %2286 ], [ %2243, %2240 ], [ %2209, %2204 ], [ %1257, %1277 ]
  %2316 = phi float [ %1258, %2173 ], [ %1258, %1573 ], [ %1258, %1256 ], [ %2292, %2288 ], [ %1258, %2286 ], [ %2244, %2240 ], [ %2210, %2204 ], [ %1258, %1277 ]
  %2317 = phi float [ %2174, %2173 ], [ %1259, %1573 ], [ %1259, %1256 ], [ %2174, %2288 ], [ %2174, %2286 ], [ %2174, %2240 ], [ %2174, %2204 ], [ %1259, %1277 ]
  %2318 = phi float [ %2175, %2173 ], [ %1260, %1573 ], [ %1260, %1256 ], [ %2175, %2288 ], [ %2175, %2286 ], [ %2175, %2240 ], [ %2175, %2204 ], [ %1260, %1277 ]
  %2319 = phi float [ %2176, %2173 ], [ %1261, %1573 ], [ %1261, %1256 ], [ %2176, %2288 ], [ %2176, %2286 ], [ %2176, %2240 ], [ %2176, %2204 ], [ %1261, %1277 ]
  %2320 = phi float [ %2177, %2173 ], [ %1262, %1573 ], [ %1262, %1256 ], [ %2177, %2288 ], [ %2177, %2286 ], [ %2177, %2240 ], [ %2177, %2204 ], [ %1262, %1277 ]
  %2321 = phi float [ %2178, %2173 ], [ %1263, %1573 ], [ %1263, %1256 ], [ %2178, %2288 ], [ %2178, %2286 ], [ %2178, %2240 ], [ %2178, %2204 ], [ %1263, %1277 ]
  %2322 = phi float [ %2179, %2173 ], [ %1264, %1573 ], [ %1264, %1256 ], [ %2179, %2288 ], [ %2179, %2286 ], [ %2179, %2240 ], [ %2179, %2204 ], [ %1264, %1277 ]
  %2323 = phi float [ %1265, %2173 ], [ %1265, %1573 ], [ %1265, %1256 ], [ %2311, %2288 ], [ %1265, %2286 ], [ %2283, %2240 ], [ %2235, %2204 ], [ %1265, %1277 ]
  %2324 = phi float [ %1266, %2173 ], [ %1266, %1573 ], [ %1266, %1256 ], [ %2312, %2288 ], [ %1266, %2286 ], [ %2284, %2240 ], [ %2236, %2204 ], [ %1266, %1277 ]
  %2325 = phi float [ %1267, %2173 ], [ %1267, %1573 ], [ %1267, %1256 ], [ %2313, %2288 ], [ %1267, %2286 ], [ %2285, %2240 ], [ %2237, %2204 ], [ %1267, %1277 ]
  %2326 = phi float [ %1268, %2173 ], [ %1268, %1573 ], [ %1268, %1256 ], [ %2303, %2288 ], [ %1268, %2286 ], [ %2275, %2240 ], [ %2223, %2204 ], [ %1268, %1277 ]
  %2327 = phi float [ %1269, %2173 ], [ %1269, %1573 ], [ %1269, %1256 ], [ %2304, %2288 ], [ %1269, %2286 ], [ %2276, %2240 ], [ %2224, %2204 ], [ %1269, %1277 ]
  %2328 = phi float [ %1270, %2173 ], [ %1270, %1573 ], [ %1270, %1256 ], [ %2305, %2288 ], [ %1270, %2286 ], [ %2277, %2240 ], [ %2225, %2204 ], [ %1270, %1277 ]
  %2329 = phi float [ %2180, %2173 ], [ %1271, %1573 ], [ %1271, %1256 ], [ %2180, %2288 ], [ %2180, %2286 ], [ %2180, %2240 ], [ %2180, %2204 ], [ %1271, %1277 ]
  %2330 = phi float [ %1273, %2173 ], [ %1273, %1573 ], [ %1273, %1256 ], [ %2299, %2288 ], [ %1273, %2286 ], [ %2271, %2240 ], [ %2216, %2204 ], [ %1273, %1277 ]
  %2331 = phi float [ %1274, %2173 ], [ %1274, %1573 ], [ %1274, %1256 ], [ %2296, %2288 ], [ %1274, %2286 ], [ %2248, %2240 ], [ %2213, %2204 ], [ %1274, %1277 ]
  %2332 = phi float [ %1275, %2173 ], [ %1275, %1573 ], [ %1275, %1256 ], [ %2307, %2288 ], [ %1275, %2286 ], [ %2279, %2240 ], [ %2228, %2204 ], [ %1275, %1277 ]
  %2333 = phi float [ %2181, %2173 ], [ %1276, %1573 ], [ %1276, %1256 ], [ %2181, %2288 ], [ %2181, %2286 ], [ %2181, %2240 ], [ %2181, %2204 ], [ %1276, %1277 ]
  br i1 %431, label %3371, label %2334

; <label>:2334                                    ; preds = %2314
  %2335 = icmp ult i32 %487, 3
  %2336 = add i32 %48, 56
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = add i32 %48, 60
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = or i32 %2341, %2338
  %2343 = icmp eq i32 %2342, 0
  br i1 %2343, label %3371, label %2344

; <label>:2344                                    ; preds = %2334
  %2345 = and i32 %2338, 262144
  %2346 = icmp ne i32 %2345, 0
  %2347 = select i1 %2346, float %51, float 1.000000e+00
  %2348 = select i1 %2346, float %52, float 0.000000e+00
  %2349 = select i1 %2346, float %53, float 0.000000e+00
  %2350 = select i1 %2346, float %54, float 1.000000e+00
  %2351 = select i1 %2346, float %55, float %76
  %2352 = select i1 %2346, float %56, float %77
  %2353 = add i32 %48, 316
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = lshr i32 %2355, 16
  %2357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2356)  ; LegacyF16ToF32(value)
  %2358 = fmul fast float %2357, 0x3F50624DE0000000
  %2359 = add i32 %48, 120
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = lshr i32 %2361, 16
  %2363 = and i32 %2362, 255
  %2364 = lshr i32 %2361, 24
  %2365 = add i32 %48, 324
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = and i32 %2367, 65535
  %2369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2368)  ; LegacyF16ToF32(value)
  %2370 = lshr i32 %2367, 16
  %2371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2370)  ; LegacyF16ToF32(value)
  %2372 = add i32 %48, 64
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = lshr i32 %2374, 22
  %2376 = shl nuw nsw i32 %2375, 5
  %2377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2376)  ; LegacyF16ToF32(value)
  %2378 = shl i32 %2374, 4
  %2379 = and i32 %2378, 32752
  %2380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2379)  ; LegacyF16ToF32(value)
  %2381 = lshr i32 %2374, 7
  %2382 = and i32 %2381, 32752
  %2383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2382)  ; LegacyF16ToF32(value)
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 3
  %2386 = fmul fast float %2385, 1.000000e+03
  %2387 = fmul fast float %381, %2386
  %2388 = call float @dx.op.unary.f32(i32 22, float %2387)  ; Frc(value)
  %2389 = fadd fast float %2388, %371
  %2390 = fmul fast float %382, %2386
  %2391 = call float @dx.op.unary.f32(i32 22, float %2390)  ; Frc(value)
  %2392 = fadd fast float %2391, %373
  %2393 = fmul fast float %2358, %2386
  %2394 = call float @dx.op.unary.f32(i32 22, float %2393)  ; Frc(value)
  %2395 = fmul fast float %2394, 0x401921FB60000000
  %2396 = fadd fast float %2395, %2377
  %2397 = call float @dx.op.unary.f32(i32 13, float %2396)  ; Sin(value)
  %2398 = call float @dx.op.unary.f32(i32 12, float %2396)  ; Cos(value)
  %2399 = fsub fast float -0.000000e+00, %2397
  %2400 = fadd fast float %2351, -5.000000e-01
  %2401 = fadd fast float %2352, -5.000000e-01
  %2402 = fmul fast float %2369, %2400
  %2403 = fmul fast float %2371, %2401
  %2404 = fadd fast float %2402, 5.000000e-01
  %2405 = fadd fast float %2403, 5.000000e-01
  %2406 = fmul fast float %2380, %2404
  %2407 = fmul fast float %2383, %2405
  %2408 = fmul fast float %2398, %2406
  %2409 = call float @dx.op.tertiary.f32(i32 46, float %2399, float %2407, float %2408)  ; FMad(a,b,c)
  %2410 = fmul fast float %2397, %2406
  %2411 = call float @dx.op.tertiary.f32(i32 46, float %2398, float %2407, float %2410)  ; FMad(a,b,c)
  %2412 = fadd fast float %2389, %2409
  %2413 = fadd fast float %2392, %2411
  %2414 = icmp ugt i32 %2363, 1
  %2415 = icmp ugt i32 %2361, 33554431
  %2416 = or i1 %2415, %2414
  br i1 %2416, label %2417, label %2442

; <label>:2417                                    ; preds = %2344
  %2418 = add i32 %48, 260
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = lshr i32 %2420, 16
  %2422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2421)  ; LegacyF16ToF32(value)
  %2423 = fmul fast float %2385, %2422
  %2424 = call float @dx.op.unary.f32(i32 22, float %2423)  ; Frc(value)
  %2425 = mul nuw nsw i32 %2363, %2364
  %2426 = uitofp i32 %2425 to float
  %2427 = fmul fast float %2424, %2426
  %2428 = call float @dx.op.unary.f32(i32 27, float %2427)  ; Round_ni(value)
  %2429 = fptoui float %2428 to i32
  %2430 = urem i32 %2429, %2363
  %2431 = udiv i32 %2429, %2364
  %2432 = call float @dx.op.unary.f32(i32 22, float %2412)  ; Frc(value)
  %2433 = call float @dx.op.unary.f32(i32 22, float %2413)  ; Frc(value)
  %2434 = uitofp i32 %2430 to float
  %2435 = uitofp i32 %2431 to float
  %2436 = fadd fast float %2432, %2434
  %2437 = fadd fast float %2433, %2435
  %2438 = uitofp i32 %2363 to float
  %2439 = uitofp i32 %2364 to float
  %2440 = fdiv fast float %2436, %2438
  %2441 = fdiv fast float %2437, %2439
  br label %2442

; <label>:2442                                    ; preds = %2417, %2344
  %2443 = phi float [ %2440, %2417 ], [ %2412, %2344 ]
  %2444 = phi float [ %2441, %2417 ], [ %2413, %2344 ]
  %2445 = and i32 %2338, 16777216
  %2446 = icmp eq i32 %2445, 0
  br i1 %2446, label %2556, label %2447

; <label>:2447                                    ; preds = %2442
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 0
  %2450 = extractvalue %dx.types.CBufRet.f32 %2448, 1
  %2451 = extractvalue %dx.types.CBufRet.f32 %2448, 2
  %2452 = fadd fast float %2449, %152
  %2453 = fadd fast float %2450, %153
  %2454 = fadd fast float %2451, %154
  %2455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2456 = extractvalue %dx.types.CBufRet.f32 %2455, 0
  %2457 = call float @dx.op.unary.f32(i32 7, float %2456)  ; Saturate(value)
  %2458 = icmp eq i32 %49, 65535
  br i1 %2458, label %2553, label %2459

; <label>:2459                                    ; preds = %2447
  %2460 = lshr i32 %49, 1
  %2461 = shl i32 %2460, 2
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2461, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = and i32 %49, 1
  %2465 = icmp ne i32 %2464, 0
  %2466 = lshr i32 %2463, 16
  %2467 = and i32 %2463, 65535
  %2468 = select i1 %2465, i32 %2466, i32 %2467
  %2469 = icmp eq i32 %2468, 65535
  br i1 %2469, label %2549, label %2470

; <label>:2470                                    ; preds = %2459
  %2471 = mul nuw nsw i32 %2468, 40
  %2472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2471, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.f32 %2472, 0
  %2474 = extractvalue %dx.types.ResRet.f32 %2472, 1
  %2475 = extractvalue %dx.types.ResRet.f32 %2472, 2
  %2476 = add nuw nsw i32 %2471, 12
  %2477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.f32 %2477, 0
  %2479 = extractvalue %dx.types.ResRet.f32 %2477, 1
  %2480 = extractvalue %dx.types.ResRet.f32 %2477, 2
  %2481 = add nuw nsw i32 %2471, 24
  %2482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.f32 %2482, 0
  %2484 = extractvalue %dx.types.ResRet.f32 %2482, 1
  %2485 = extractvalue %dx.types.ResRet.f32 %2482, 2
  %2486 = add nuw nsw i32 %2471, 36
  %2487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.f32 %2487, 0
  %2489 = fsub fast float %2452, %2473
  %2490 = fsub fast float %2453, %2474
  %2491 = fsub fast float %2454, %2475
  %2492 = fmul fast float %2488, %2489
  %2493 = fmul fast float %2488, %2490
  %2494 = fmul fast float %2488, %2491
  %2495 = call float @dx.op.unary.f32(i32 27, float %2492)  ; Round_ni(value)
  %2496 = call float @dx.op.unary.f32(i32 27, float %2493)  ; Round_ni(value)
  %2497 = call float @dx.op.unary.f32(i32 27, float %2494)  ; Round_ni(value)
  %2498 = fadd fast float %2495, 5.000000e-01
  %2499 = fadd fast float %2496, 5.000000e-01
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = fmul fast float %2498, %2478
  %2502 = fmul fast float %2499, %2479
  %2503 = fmul fast float %2500, %2480
  %2504 = shl i32 %49, 2
  %2505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2504, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.i32 %2505, 0
  %2507 = add i32 %2506, 0
  %2508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2507, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2509 = call float @dx.op.unary.f32(i32 22, float %2501)  ; Frc(value)
  %2510 = call float @dx.op.unary.f32(i32 22, float %2502)  ; Frc(value)
  %2511 = call float @dx.op.unary.f32(i32 22, float %2503)  ; Frc(value)
  %2512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2508, %dx.types.Handle %43, float %2509, float %2510, float %2511, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2513 = extractvalue %dx.types.ResRet.f32 %2512, 0
  %2514 = extractvalue %dx.types.ResRet.f32 %2512, 1
  %2515 = extractvalue %dx.types.ResRet.f32 %2512, 2
  %2516 = fmul fast float %2513, 1.023000e+03
  %2517 = fmul fast float %2514, 1.023000e+03
  %2518 = fmul fast float %2515, 1.023000e+03
  %2519 = fadd fast float %2516, 5.000000e-01
  %2520 = fadd fast float %2517, 5.000000e-01
  %2521 = fadd fast float %2518, 5.000000e-01
  %2522 = call float @dx.op.unary.f32(i32 27, float %2519)  ; Round_ni(value)
  %2523 = call float @dx.op.unary.f32(i32 27, float %2520)  ; Round_ni(value)
  %2524 = call float @dx.op.unary.f32(i32 27, float %2521)  ; Round_ni(value)
  %2525 = fsub fast float %2492, %2495
  %2526 = fsub fast float %2493, %2496
  %2527 = fsub fast float %2494, %2497
  %2528 = fmul fast float %2525, 7.500000e-01
  %2529 = fmul fast float %2526, 7.500000e-01
  %2530 = fmul fast float %2527, 7.500000e-01
  %2531 = fadd fast float %2495, 1.250000e-01
  %2532 = fadd fast float %2531, %2528
  %2533 = fadd fast float %2532, %2522
  %2534 = fadd fast float %2496, 1.250000e-01
  %2535 = fadd fast float %2534, %2529
  %2536 = fadd fast float %2535, %2523
  %2537 = fadd fast float %2497, 1.250000e-01
  %2538 = fadd fast float %2537, %2530
  %2539 = fadd fast float %2538, %2524
  %2540 = fmul fast float %2533, %2483
  %2541 = fmul fast float %2536, %2484
  %2542 = fmul fast float %2539, %2485
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2504, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = add i32 %2544, 0
  %2546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2545, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2546, %dx.types.Handle %41, float %2540, float %2541, float %2542, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2548 = extractvalue %dx.types.ResRet.f32 %2547, 0
  br label %2549

; <label>:2549                                    ; preds = %2470, %2459
  %2550 = phi float [ %2548, %2470 ], [ -1.000000e+00, %2459 ]
  %2551 = fadd fast float %2550, %2457
  %2552 = call float @dx.op.unary.f32(i32 7, float %2551)  ; Saturate(value)
  br label %2553

; <label>:2553                                    ; preds = %2549, %2447
  %2554 = phi float [ %2552, %2549 ], [ %2457, %2447 ]
  %2555 = fmul fast float %2554, %483
  br label %2556

; <label>:2556                                    ; preds = %2553, %2442
  %2557 = phi float [ %2555, %2553 ], [ %483, %2442 ]
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = and i32 %2559, 256
  %2561 = icmp eq i32 %2560, 0
  br i1 %2561, label %2608, label %2562

; <label>:2562                                    ; preds = %2556
  %2563 = add i32 %48, 496
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = add i32 %2565, 0
  %2567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2567, %dx.types.Handle %94, float %2443, float %2444, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2569 = extractvalue %dx.types.ResRet.f32 %2568, 0
  %2570 = add i32 %48, 132
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = shl i32 %2572, 4
  %2574 = and i32 %2573, 32752
  %2575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2574)  ; LegacyF16ToF32(value)
  %2576 = lshr i32 %2572, 7
  %2577 = and i32 %2576, 32752
  %2578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2577)  ; LegacyF16ToF32(value)
  %2579 = fsub fast float 1.000000e+00, %2557
  %2580 = call float @dx.op.binary.f32(i32 35, float %2579, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2581 = bitcast float %2557 to i32
  %2582 = sitofp i32 %2581 to float
  %2583 = fadd fast float %2582, 0xC1CFBF8940000000
  %2584 = fmul fast float %2578, %2583
  %2585 = fadd fast float %2584, 0x41CFBF8940000000
  %2586 = fptosi float %2585 to i32
  %2587 = bitcast i32 %2586 to float
  %2588 = bitcast float %2580 to i32
  %2589 = sitofp i32 %2588 to float
  %2590 = fadd fast float %2589, 0xC1CFBF8940000000
  %2591 = fmul fast float %2590, %2578
  %2592 = fadd fast float %2591, 0x41CFBF8940000000
  %2593 = fptosi float %2592 to i32
  %2594 = bitcast i32 %2593 to float
  %2595 = fmul fast float %2587, %2575
  %2596 = fmul fast float %2594, %2575
  %2597 = fsub fast float %2580, %2595
  %2598 = fadd fast float %2596, %2580
  %2599 = call float @dx.op.unary.f32(i32 7, float %2597)  ; Saturate(value)
  %2600 = call float @dx.op.unary.f32(i32 7, float %2598)  ; Saturate(value)
  %2601 = fsub fast float %2569, %2599
  %2602 = fsub fast float %2600, %2599
  %2603 = bitcast float %2602 to i32
  %2604 = sub nsw i32 2129859010, %2603
  %2605 = bitcast i32 %2604 to float
  %2606 = fmul fast float %2605, %2601
  %2607 = call float @dx.op.unary.f32(i32 7, float %2606)  ; Saturate(value)
  br label %2608

; <label>:2608                                    ; preds = %2562, %2556
  %2609 = phi float [ %2607, %2562 ], [ %2557, %2556 ]
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = and i32 %2611, 128
  %2613 = icmp eq i32 %2612, 0
  br i1 %2613, label %2630, label %2614

; <label>:2614                                    ; preds = %2608
  %2615 = add i32 %48, 480
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = add i32 %2617, 0
  %2619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2620 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2619, %dx.types.Handle %94, float %2443, float %2444, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2621 = extractvalue %dx.types.ResRet.f32 %2620, 0
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = and i32 %2623, 524288
  %2625 = icmp ne i32 %2624, 0
  %2626 = fcmp fast ogt float %2621, 0x3FE0101020000000
  %2627 = select i1 %2626, float 1.000000e+00, float 0.000000e+00
  %2628 = select i1 %2625, float %2627, float %2621
  %2629 = fmul fast float %2628, %2609
  br label %2630

; <label>:2630                                    ; preds = %2614, %2608
  %2631 = phi float [ %2629, %2614 ], [ %2609, %2608 ]
  %2632 = fcmp fast ult float %2631, 0x3F70101020000000
  br i1 %2632, label %3371, label %2633

; <label>:2633                                    ; preds = %2630
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = and i32 %2635, 16
  %2637 = icmp eq i32 %2636, 0
  br i1 %2637, label %2836, label %2638

; <label>:2638                                    ; preds = %2633
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = add i32 %48, 432
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = add i32 %2643, 0
  %2645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2645, %dx.types.Handle %93, float %2443, float %2444, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2647 = extractvalue %dx.types.ResRet.f32 %2646, 0
  %2648 = extractvalue %dx.types.ResRet.f32 %2646, 1
  %2649 = extractvalue %dx.types.ResRet.f32 %2646, 2
  %2650 = extractvalue %dx.types.ResRet.f32 %2646, 3
  %2651 = and i32 %2640, 255
  %2652 = uitofp i32 %2651 to float
  %2653 = lshr i32 %2640, 8
  %2654 = and i32 %2653, 255
  %2655 = uitofp i32 %2654 to float
  %2656 = fmul fast float %2650, %2652
  %2657 = fadd fast float %2656, %2655
  %2658 = fmul fast float %2657, 0x3F70101000000000
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = and i32 %2660, 512
  %2662 = icmp eq i32 %2661, 0
  br i1 %2662, label %2671, label %2663

; <label>:2663                                    ; preds = %2638
  %2664 = add i32 %48, 516
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = add i32 %2666, 0
  %2668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2668, %dx.types.Handle %94, float %2443, float %2444, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2670 = extractvalue %dx.types.ResRet.f32 %2669, 0
  br label %2671

; <label>:2671                                    ; preds = %2663, %2638
  %2672 = phi float [ %2670, %2663 ], [ 1.000000e+00, %2638 ]
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = and i32 %2674, 33554432
  %2676 = icmp eq i32 %2675, 0
  br i1 %2676, label %2783, label %2677

; <label>:2677                                    ; preds = %2671
  %2678 = add i32 %48, 256
  %2679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2680 = extractvalue %dx.types.ResRet.i32 %2679, 0
  %2681 = and i32 %2680, 65535
  %2682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2681)  ; LegacyF16ToF32(value)
  %2683 = lshr i32 %2680, 16
  %2684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2683)  ; LegacyF16ToF32(value)
  %2685 = add i32 %48, 260
  %2686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2685, i32 undef)  ; BufferLoad(srv,index,wot)
  %2687 = extractvalue %dx.types.ResRet.i32 %2686, 0
  %2688 = and i32 %2687, 65535
  %2689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2688)  ; LegacyF16ToF32(value)
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = lshr i32 %2691, 24
  %2693 = uitofp i32 %2692 to float
  %2694 = fmul fast float %2693, 0x3F70101020000000
  %2695 = and i32 %2691, 255
  %2696 = uitofp i32 %2695 to float
  %2697 = fmul fast float %2696, 0x3F70101020000000
  %2698 = lshr i32 %2691, 8
  %2699 = and i32 %2698, 255
  %2700 = uitofp i32 %2699 to float
  %2701 = fmul fast float %2700, 0x3F70101020000000
  %2702 = lshr i32 %2691, 16
  %2703 = and i32 %2702, 255
  %2704 = uitofp i32 %2703 to float
  %2705 = fmul fast float %2704, 0x3F70101020000000
  %2706 = add i32 %48, 252
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = lshr i32 %2708, 24
  %2710 = uitofp i32 %2709 to float
  %2711 = fmul fast float %2710, 0x3F70101020000000
  %2712 = and i32 %2708, 255
  %2713 = uitofp i32 %2712 to float
  %2714 = fmul fast float %2713, 0x3F70101020000000
  %2715 = lshr i32 %2708, 8
  %2716 = and i32 %2715, 255
  %2717 = uitofp i32 %2716 to float
  %2718 = fmul fast float %2717, 0x3F70101020000000
  %2719 = lshr i32 %2708, 16
  %2720 = and i32 %2719, 255
  %2721 = uitofp i32 %2720 to float
  %2722 = fmul fast float %2721, 0x3F70101020000000
  %2723 = bitcast float %2647 to i32
  %2724 = ashr i32 %2723, 1
  %2725 = sub nsw i32 1597463174, %2724
  %2726 = bitcast i32 %2725 to float
  %2727 = fmul fast float %2647, 5.000000e-01
  %2728 = fmul fast float %2726, %2726
  %2729 = fmul fast float %2728, %2727
  %2730 = fsub fast float 1.500000e+00, %2729
  %2731 = fmul fast float %2726, %2647
  %2732 = fmul fast float %2731, %2730
  %2733 = bitcast float %2648 to i32
  %2734 = ashr i32 %2733, 1
  %2735 = sub nsw i32 1597463174, %2734
  %2736 = bitcast i32 %2735 to float
  %2737 = fmul fast float %2648, 5.000000e-01
  %2738 = fmul fast float %2736, %2736
  %2739 = fmul fast float %2738, %2737
  %2740 = fsub fast float 1.500000e+00, %2739
  %2741 = fmul fast float %2736, %2648
  %2742 = fmul fast float %2741, %2740
  %2743 = bitcast float %2649 to i32
  %2744 = ashr i32 %2743, 1
  %2745 = sub nsw i32 1597463174, %2744
  %2746 = bitcast i32 %2745 to float
  %2747 = fmul fast float %2649, 5.000000e-01
  %2748 = fmul fast float %2746, %2746
  %2749 = fmul fast float %2748, %2747
  %2750 = fsub fast float 1.500000e+00, %2749
  %2751 = fmul fast float %2746, %2649
  %2752 = fmul fast float %2751, %2750
  %2753 = fsub fast float %2732, %2714
  %2754 = fsub fast float %2742, %2718
  %2755 = fsub fast float %2752, %2722
  %2756 = fmul fast float %2753, %2682
  %2757 = fmul fast float %2754, %2684
  %2758 = fmul fast float %2755, %2689
  %2759 = fadd fast float %2756, %2697
  %2760 = fadd fast float %2757, %2701
  %2761 = fadd fast float %2758, %2705
  %2762 = call float @dx.op.unary.f32(i32 7, float %2759)  ; Saturate(value)
  %2763 = call float @dx.op.unary.f32(i32 7, float %2760)  ; Saturate(value)
  %2764 = call float @dx.op.unary.f32(i32 7, float %2761)  ; Saturate(value)
  %2765 = fmul fast float %2762, %2762
  %2766 = fmul fast float %2763, %2763
  %2767 = fmul fast float %2764, %2764
  %2768 = fsub fast float %2765, %2647
  %2769 = fsub fast float %2766, %2648
  %2770 = fsub fast float %2767, %2649
  %2771 = fmul fast float %2768, %2672
  %2772 = fmul fast float %2769, %2672
  %2773 = fmul fast float %2770, %2672
  %2774 = fadd fast float %2771, %2647
  %2775 = fadd fast float %2772, %2648
  %2776 = fadd fast float %2773, %2649
  %2777 = fadd fast float %2694, %2658
  %2778 = fsub fast float %2777, %2711
  %2779 = call float @dx.op.unary.f32(i32 7, float %2778)  ; Saturate(value)
  %2780 = fsub fast float %2779, %2658
  %2781 = fmul fast float %2780, %2672
  %2782 = fadd fast float %2781, %2658
  br label %2836

; <label>:2783                                    ; preds = %2671
  %2784 = and i32 %2674, 134217728
  %2785 = icmp eq i32 %2784, 0
  br i1 %2785, label %2820, label %2786

; <label>:2786                                    ; preds = %2783
  %2787 = call float @dx.op.unary.f32(i32 24, float %358)  ; Sqrt(value)
  %2788 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %2789 = call float @dx.op.unary.f32(i32 24, float %366)  ; Sqrt(value)
  %2790 = fadd fast float %2787, -5.000000e-01
  %2791 = fadd fast float %2788, -5.000000e-01
  %2792 = fadd fast float %2789, -5.000000e-01
  %2793 = fmul fast float %2790, %2672
  %2794 = fmul fast float %2791, %2672
  %2795 = fmul fast float %2792, %2672
  %2796 = fadd fast float %2793, 5.000000e-01
  %2797 = fadd fast float %2794, 5.000000e-01
  %2798 = fadd fast float %2795, 5.000000e-01
  %2799 = call float @dx.op.unary.f32(i32 24, float %2647)  ; Sqrt(value)
  %2800 = call float @dx.op.unary.f32(i32 24, float %2648)  ; Sqrt(value)
  %2801 = call float @dx.op.unary.f32(i32 24, float %2649)  ; Sqrt(value)
  %2802 = fmul fast float %2796, 2.000000e+00
  %2803 = fsub fast float 1.000000e+00, %2802
  %2804 = fmul fast float %2803, %2799
  %2805 = fadd fast float %2804, %2802
  %2806 = fmul fast float %2805, %2799
  %2807 = fmul fast float %2797, 2.000000e+00
  %2808 = fsub fast float 1.000000e+00, %2807
  %2809 = fmul fast float %2808, %2800
  %2810 = fadd fast float %2809, %2807
  %2811 = fmul fast float %2810, %2800
  %2812 = fmul fast float %2798, 2.000000e+00
  %2813 = fsub fast float 1.000000e+00, %2812
  %2814 = fmul fast float %2813, %2801
  %2815 = fadd fast float %2814, %2812
  %2816 = fmul fast float %2815, %2801
  %2817 = fmul fast float %2806, %2806
  %2818 = fmul fast float %2811, %2811
  %2819 = fmul fast float %2816, %2816
  br label %2836

; <label>:2820                                    ; preds = %2783
  %2821 = fmul fast float %358, %358
  %2822 = fmul fast float %362, %362
  %2823 = fmul fast float %366, %366
  %2824 = fadd fast float %2821, -1.000000e+00
  %2825 = fadd fast float %2822, -1.000000e+00
  %2826 = fadd fast float %2823, -1.000000e+00
  %2827 = fmul fast float %2672, %2824
  %2828 = fmul fast float %2672, %2825
  %2829 = fmul fast float %2672, %2826
  %2830 = fadd fast float %2827, 1.000000e+00
  %2831 = fadd fast float %2828, 1.000000e+00
  %2832 = fadd fast float %2829, 1.000000e+00
  %2833 = fmul fast float %2830, %2647
  %2834 = fmul fast float %2831, %2648
  %2835 = fmul fast float %2832, %2649
  br label %2836

; <label>:2836                                    ; preds = %2820, %2786, %2677, %2633
  %2837 = phi float [ %2782, %2677 ], [ %2658, %2786 ], [ %2658, %2820 ], [ 0x3FA23C0BE0000000, %2633 ]
  %2838 = phi float [ %2774, %2677 ], [ %2817, %2786 ], [ %2833, %2820 ], [ 1.000000e+00, %2633 ]
  %2839 = phi float [ %2775, %2677 ], [ %2818, %2786 ], [ %2834, %2820 ], [ 1.000000e+00, %2633 ]
  %2840 = phi float [ %2776, %2677 ], [ %2819, %2786 ], [ %2835, %2820 ], [ 1.000000e+00, %2633 ]
  %2841 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2842 = extractvalue %dx.types.CBufRet.i32 %2841, 1
  %2843 = and i32 %2842, 1
  %2844 = icmp ne i32 %2843, 0
  %2845 = add i32 %48, 356
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = and i32 %2847, 32
  %2849 = icmp ne i32 %2848, 0
  %2850 = and i1 %2844, %2849
  %2851 = select i1 %2850, float 1.000000e+00, float %2838
  %2852 = select i1 %2850, float 0x3FD3333340000000, float %2839
  %2853 = select i1 %2850, float 0x3FD3333340000000, float %2840
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = and i32 %2855, 32
  %2857 = icmp eq i32 %2856, 0
  br i1 %2857, label %2930, label %2858

; <label>:2858                                    ; preds = %2836
  %2859 = add i32 %48, 124
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2859, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = add i32 %48, 448
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2862, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = add i32 %2864, 0
  %2866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2867 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2866, %dx.types.Handle %93, float %2443, float %2444, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2868 = extractvalue %dx.types.ResRet.f32 %2867, 0
  %2869 = extractvalue %dx.types.ResRet.f32 %2867, 1
  %2870 = extractvalue %dx.types.ResRet.f32 %2867, 2
  %2871 = extractvalue %dx.types.ResRet.f32 %2867, 3
  %2872 = and i32 %2861, 255
  %2873 = uitofp i32 %2872 to float
  %2874 = lshr i32 %2861, 8
  %2875 = and i32 %2874, 255
  %2876 = uitofp i32 %2875 to float
  %2877 = lshr i32 %2861, 16
  %2878 = and i32 %2877, 255
  %2879 = uitofp i32 %2878 to float
  %2880 = fmul fast float %2879, 0x3F70101000000000
  %2881 = fmul fast float %2868, %2873
  %2882 = fadd fast float %2881, %2876
  %2883 = fmul fast float %2882, 0x3F70101000000000
  %2884 = fadd fast float %2869, -5.000000e-01
  %2885 = fadd fast float %2871, -5.000000e-01
  %2886 = fmul fast float %2884, %2880
  %2887 = fmul fast float %2885, %2880
  %2888 = fadd fast float %2886, 5.000000e-01
  %2889 = fadd fast float %2887, 5.000000e-01
  %2890 = fmul fast float %2888, 2.000000e+00
  %2891 = fadd fast float %2890, -1.000000e+00
  %2892 = fmul fast float %2889, 2.000000e+00
  %2893 = fadd fast float %2892, -1.000000e+00
  %2894 = fadd fast float %2891, %2893
  %2895 = fmul fast float %2894, 5.000000e-01
  %2896 = fsub fast float %2891, %2893
  %2897 = fmul fast float %2896, 5.000000e-01
  %2898 = call float @dx.op.unary.f32(i32 6, float %2895)  ; FAbs(value)
  %2899 = fsub fast float 1.000000e+00, %2898
  %2900 = call float @dx.op.unary.f32(i32 6, float %2897)  ; FAbs(value)
  %2901 = fsub fast float %2899, %2900
  %2902 = call float @dx.op.dot3.f32(i32 55, float %2895, float %2897, float %2901, float %2895, float %2897, float %2901)  ; Dot3(ax,ay,az,bx,by,bz)
  %2903 = call float @dx.op.unary.f32(i32 25, float %2902)  ; Rsqrt(value)
  %2904 = fmul fast float %2895, %2903
  %2905 = fmul fast float %2897, %2903
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = and i32 %2907, 67108864
  %2909 = icmp eq i32 %2908, 0
  br i1 %2909, label %2926, label %2910

; <label>:2910                                    ; preds = %2858
  %2911 = add i32 %48, 312
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = and i32 %2913, 65535
  %2915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2914)  ; LegacyF16ToF32(value)
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = and i32 %2917, 65535
  %2919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2918)  ; LegacyF16ToF32(value)
  %2920 = lshr i32 %2913, 16
  %2921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2920)  ; LegacyF16ToF32(value)
  %2922 = fsub fast float %2883, %2921
  %2923 = fmul fast float %2922, %2915
  %2924 = fadd fast float %2923, %2919
  %2925 = call float @dx.op.unary.f32(i32 7, float %2924)  ; Saturate(value)
  br label %2926

; <label>:2926                                    ; preds = %2910, %2858
  %2927 = phi float [ %2925, %2910 ], [ %2883, %2858 ]
  %2928 = call float @dx.op.dot2.f32(i32 54, float %2904, float %2905, float %2347, float %2348)  ; Dot2(ax,ay,bx,by)
  %2929 = call float @dx.op.dot2.f32(i32 54, float %2904, float %2905, float %2349, float %2350)  ; Dot2(ax,ay,bx,by)
  br label %2930

; <label>:2930                                    ; preds = %2926, %2836
  %2931 = phi float [ %2927, %2926 ], [ 0x3FD6666660000000, %2836 ]
  %2932 = phi float [ %2928, %2926 ], [ 0.000000e+00, %2836 ]
  %2933 = phi float [ %2929, %2926 ], [ 0.000000e+00, %2836 ]
  %2934 = phi float [ %2870, %2926 ], [ 1.000000e+00, %2836 ]
  %2935 = add i32 %48, 192
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = lshr i32 %2937, 22
  %2939 = shl nuw nsw i32 %2938, 5
  %2940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2939)  ; LegacyF16ToF32(value)
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = and i32 %2942, 64
  %2944 = icmp eq i32 %2943, 0
  br i1 %2944, label %2978, label %2945

; <label>:2945                                    ; preds = %2930
  %2946 = add i32 %48, 464
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = add i32 %2948, 0
  %2950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2949, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = and i32 %2952, 131072
  %2954 = icmp eq i32 %2953, 0
  %2955 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2950, %dx.types.Handle %93, float %2443, float %2444, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2956 = extractvalue %dx.types.ResRet.f32 %2955, 0
  %2957 = extractvalue %dx.types.ResRet.f32 %2955, 1
  %2958 = extractvalue %dx.types.ResRet.f32 %2955, 2
  %2959 = fmul fast float %2956, %346
  %2960 = fmul fast float %2957, %349
  %2961 = fmul fast float %2958, %352
  br i1 %2954, label %2968, label %2962

; <label>:2962                                    ; preds = %2945
  %2963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2964 = extractvalue %dx.types.CBufRet.f32 %2963, 0
  %2965 = fmul fast float %2964, %2959
  %2966 = fmul fast float %2964, %2960
  %2967 = fmul fast float %2964, %2961
  br label %2968

; <label>:2968                                    ; preds = %2962, %2945
  %2969 = phi float [ %2965, %2962 ], [ %2959, %2945 ]
  %2970 = phi float [ %2966, %2962 ], [ %2960, %2945 ]
  %2971 = phi float [ %2967, %2962 ], [ %2961, %2945 ]
  %2972 = fmul fast float %2969, %2940
  %2973 = select i1 %245, float %2972, float %2969
  %2974 = call float @dx.op.dot3.f32(i32 55, float %2973, float %2970, float %2971, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2975 = select i1 %245, float 0.000000e+00, float %2969
  %2976 = select i1 %245, float %2974, float %2970
  %2977 = select i1 %245, float 0.000000e+00, float %2971
  br label %2978

; <label>:2978                                    ; preds = %2968, %2930
  %2979 = phi float [ %2975, %2968 ], [ 0.000000e+00, %2930 ]
  %2980 = phi float [ %2976, %2968 ], [ 0.000000e+00, %2930 ]
  %2981 = phi float [ %2977, %2968 ], [ 0.000000e+00, %2930 ]
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = and i32 %2983, 1024
  %2985 = icmp eq i32 %2984, 0
  br i1 %2985, label %3016, label %2986

; <label>:2986                                    ; preds = %2978
  %2987 = add i32 %48, 184
  %2988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2987, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.i32 %2988, 0
  %2990 = and i32 %2989, 255
  %2991 = uitofp i32 %2990 to float
  %2992 = fmul fast float %2991, 0x3F70101020000000
  %2993 = lshr i32 %2989, 8
  %2994 = and i32 %2993, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = lshr i32 %2989, 16
  %2998 = and i32 %2997, 255
  %2999 = uitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 0x3F70101020000000
  %3001 = fmul fast float %2992, %2992
  %3002 = fmul fast float %2996, %2996
  %3003 = fmul fast float %3000, %3000
  %3004 = add i32 %48, 532
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3004, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = add i32 %3006, 0
  %3008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3009 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3008, %dx.types.Handle %94, float %2443, float %2444, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3010 = extractvalue %dx.types.ResRet.f32 %3009, 0
  %3011 = extractvalue %dx.types.ResRet.f32 %3009, 1
  %3012 = extractvalue %dx.types.ResRet.f32 %3009, 2
  %3013 = fmul fast float %3001, %3010
  %3014 = fmul fast float %3002, %3011
  %3015 = fmul fast float %3003, %3012
  br label %3016

; <label>:3016                                    ; preds = %2986, %2978
  %3017 = phi float [ %3013, %2986 ], [ 0.000000e+00, %2978 ]
  %3018 = phi float [ %3014, %2986 ], [ 0.000000e+00, %2978 ]
  %3019 = phi float [ %3015, %2986 ], [ 0.000000e+00, %2978 ]
  %3020 = fcmp fast ogt float %3017, 0.000000e+00
  %3021 = fcmp fast ogt float %3018, 0.000000e+00
  %3022 = fcmp fast ogt float %3019, 0.000000e+00
  %3023 = call float @dx.op.unary.f32(i32 23, float %3017)  ; Log(value)
  %3024 = call float @dx.op.unary.f32(i32 23, float %3018)  ; Log(value)
  %3025 = call float @dx.op.unary.f32(i32 23, float %3019)  ; Log(value)
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = lshr i32 %3027, 7
  %3029 = and i32 %3028, 32752
  %3030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3029)  ; LegacyF16ToF32(value)
  %3031 = fmul fast float %3023, 0xBFE62E4300000000
  %3032 = fmul fast float %3031, %3030
  %3033 = fmul fast float %3024, 0xBFE62E4300000000
  %3034 = fmul fast float %3033, %3030
  %3035 = fmul fast float %3025, 0xBFE62E4300000000
  %3036 = fmul fast float %3035, %3030
  %3037 = select i1 %3020, float %3032, float 1.270000e+02
  %3038 = select i1 %3021, float %3034, float 1.270000e+02
  %3039 = select i1 %3022, float %3036, float 1.270000e+02
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = and i32 %3041, 10240
  %3043 = icmp eq i32 %3042, 0
  br i1 %3043, label %3088, label %3044

; <label>:3044                                    ; preds = %3016
  %3045 = add i32 %48, 548
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3045, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = add i32 %3047, 0
  %3049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3048, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3050 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3049, %dx.types.Handle %94, float %2443, float %2444, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3051 = extractvalue %dx.types.ResRet.f32 %3050, 1
  %3052 = extractvalue %dx.types.ResRet.f32 %3050, 3
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = and i32 %3054, 1048576
  %3056 = icmp ne i32 %3055, 0
  %3057 = and i32 %3054, 8192
  %3058 = icmp eq i32 %3057, 0
  br i1 %3058, label %3074, label %3059

; <label>:3059                                    ; preds = %3044
  %3060 = extractvalue %dx.types.ResRet.f32 %3050, 2
  %3061 = select i1 %3056, float %3060, float %3051
  %3062 = extractvalue %dx.types.ResRet.f32 %3050, 0
  %3063 = select i1 %3056, float %3062, float %3051
  %3064 = add i32 %48, 128
  %3065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3064, i32 undef)  ; BufferLoad(srv,index,wot)
  %3066 = extractvalue %dx.types.ResRet.i32 %3065, 0
  %3067 = lshr i32 %3066, 16
  %3068 = and i32 %3067, 255
  %3069 = uitofp i32 %3068 to float
  %3070 = fmul fast float %3069, 0x3F80101020000000
  %3071 = fmul fast float %3070, %3063
  %3072 = fmul fast float %3070, %3051
  %3073 = fmul fast float %3070, %3061
  br label %3074

; <label>:3074                                    ; preds = %3059, %3044
  %3075 = phi float [ %3071, %3059 ], [ 0.000000e+00, %3044 ]
  %3076 = phi float [ %3072, %3059 ], [ 0.000000e+00, %3044 ]
  %3077 = phi float [ %3073, %3059 ], [ 0.000000e+00, %3044 ]
  %3078 = and i32 %3054, 2048
  %3079 = icmp eq i32 %3078, 0
  br i1 %3079, label %3088, label %3080

; <label>:3080                                    ; preds = %3074
  %3081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.i32 %3081, 0
  %3083 = shl i32 %3082, 4
  %3084 = and i32 %3083, 32752
  %3085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3084)  ; LegacyF16ToF32(value)
  %3086 = fmul fast float %3085, %3052
  %3087 = call float @dx.op.binary.f32(i32 35, float %3086, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3088

; <label>:3088                                    ; preds = %3080, %3074, %3016
  %3089 = phi float [ %3075, %3080 ], [ %3075, %3074 ], [ 0.000000e+00, %3016 ]
  %3090 = phi float [ %3076, %3080 ], [ %3076, %3074 ], [ 0.000000e+00, %3016 ]
  %3091 = phi float [ %3077, %3080 ], [ %3077, %3074 ], [ 0.000000e+00, %3016 ]
  %3092 = phi float [ %3087, %3080 ], [ 0x3F70101020000000, %3074 ], [ 0x3F70101020000000, %3016 ]
  %3093 = add i32 %48, 128
  %3094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3093, i32 undef)  ; BufferLoad(srv,index,wot)
  %3095 = extractvalue %dx.types.ResRet.i32 %3094, 0
  %3096 = and i32 %3095, 255
  %3097 = uitofp i32 %3096 to float
  %3098 = lshr i32 %3095, 8
  %3099 = and i32 %3098, 255
  %3100 = uitofp i32 %3099 to float
  %3101 = call float @dx.op.dot3.f32(i32 55, float %2851, float %2852, float %2853, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3102 = fmul fast float %3100, %3101
  %3103 = fadd fast float %3102, %3097
  %3104 = fmul fast float %3103, 0x3F70101020000000
  %3105 = call float @dx.op.unary.f32(i32 7, float %3104)  ; Saturate(value)
  br i1 %2335, label %3106, label %3141

; <label>:3106                                    ; preds = %3088
  %3107 = fmul fast float %3092, 2.000000e+00
  %3108 = fcmp fast olt float %3037, 1.270000e+02
  %3109 = fcmp fast olt float %3038, 1.270000e+02
  %3110 = fcmp fast olt float %3039, 1.270000e+02
  %3111 = fmul fast float %3037, 0xBFF7154760000000
  %3112 = fmul fast float %3111, %3107
  %3113 = fmul fast float %3038, 0xBFF7154760000000
  %3114 = fmul fast float %3113, %3107
  %3115 = fmul fast float %3039, 0xBFF7154760000000
  %3116 = fmul fast float %3115, %3107
  %3117 = call float @dx.op.unary.f32(i32 21, float %3112)  ; Exp(value)
  %3118 = call float @dx.op.unary.f32(i32 21, float %3114)  ; Exp(value)
  %3119 = call float @dx.op.unary.f32(i32 21, float %3116)  ; Exp(value)
  %3120 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  %3121 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  %3122 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  %3123 = fadd fast float %3120, -1.000000e+00
  %3124 = select i1 %3108, float %3123, float -1.000000e+00
  %3125 = fadd fast float %3121, -1.000000e+00
  %3126 = select i1 %3109, float %3125, float -1.000000e+00
  %3127 = fadd fast float %3122, -1.000000e+00
  %3128 = select i1 %3110, float %3127, float -1.000000e+00
  %3129 = fmul fast float %3124, %2631
  %3130 = fmul fast float %3126, %2631
  %3131 = fmul fast float %3128, %2631
  %3132 = fadd fast float %3129, 1.000000e+00
  %3133 = fadd fast float %3130, 1.000000e+00
  %3134 = fadd fast float %3131, 1.000000e+00
  %3135 = fmul fast float %3132, %2317
  %3136 = fmul fast float %3133, %2318
  %3137 = fmul fast float %3134, %2319
  %3138 = fmul fast float %3132, %2320
  %3139 = fmul fast float %3133, %2321
  %3140 = fmul fast float %3134, %2322
  br label %3141

; <label>:3141                                    ; preds = %3106, %3088
  %3142 = phi float [ %3135, %3106 ], [ %2317, %3088 ]
  %3143 = phi float [ %3136, %3106 ], [ %2318, %3088 ]
  %3144 = phi float [ %3137, %3106 ], [ %2319, %3088 ]
  %3145 = phi float [ %3138, %3106 ], [ %2320, %3088 ]
  %3146 = phi float [ %3139, %3106 ], [ %2321, %3088 ]
  %3147 = phi float [ %3140, %3106 ], [ %2322, %3088 ]
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = and i32 %3149, 3
  %3151 = icmp eq i32 %3150, 3
  br i1 %3151, label %3230, label %3152

; <label>:3152                                    ; preds = %3141
  %3153 = and i32 %3149, 16
  %3154 = icmp ne i32 %3153, 0
  %3155 = select i1 %3154, float %2631, float 0.000000e+00
  %3156 = icmp eq i32 %3150, 0
  br i1 %3156, label %3157, label %3185

; <label>:3157                                    ; preds = %3152
  %3158 = and i32 %3149, 64
  %3159 = icmp ne i32 %3158, 0
  %3160 = select i1 %3159, float %2631, float 0.000000e+00
  %3161 = fsub fast float %2851, %3142
  %3162 = fsub fast float %2852, %3143
  %3163 = fsub fast float %2853, %3144
  %3164 = fmul fast float %3155, %3161
  %3165 = fmul fast float %3155, %3162
  %3166 = fmul fast float %3155, %3163
  %3167 = fadd fast float %3164, %3142
  %3168 = fadd fast float %3165, %3143
  %3169 = fadd fast float %3166, %3144
  %3170 = fsub fast float %2837, %2329
  %3171 = fmul fast float %3155, %3170
  %3172 = fadd fast float %3171, %2329
  %3173 = fsub fast float %2979, %3145
  %3174 = fsub fast float %2980, %3146
  %3175 = fsub fast float %2981, %3147
  %3176 = fmul fast float %3160, %3173
  %3177 = fmul fast float %3160, %3174
  %3178 = fmul fast float %3160, %3175
  %3179 = fadd fast float %3176, %3145
  %3180 = fadd fast float %3177, %3146
  %3181 = fadd fast float %3178, %3147
  %3182 = fsub fast float %3105, %2333
  %3183 = fmul fast float %3155, %3182
  %3184 = fadd fast float %3183, %2333
  br label %3230

; <label>:3185                                    ; preds = %3152
  %3186 = icmp eq i32 %3150, 1
  br i1 %3186, label %3187, label %3200

; <label>:3187                                    ; preds = %3185
  %3188 = fadd fast float %2851, -1.000000e+00
  %3189 = fadd fast float %2852, -1.000000e+00
  %3190 = fadd fast float %2853, -1.000000e+00
  %3191 = fmul fast float %3155, %3188
  %3192 = fmul fast float %3155, %3189
  %3193 = fmul fast float %3155, %3190
  %3194 = fadd fast float %3191, 1.000000e+00
  %3195 = fadd fast float %3192, 1.000000e+00
  %3196 = fadd fast float %3193, 1.000000e+00
  %3197 = fmul fast float %3194, %3142
  %3198 = fmul fast float %3195, %3143
  %3199 = fmul fast float %3196, %3144
  br label %3230

; <label>:3200                                    ; preds = %3185
  %3201 = icmp eq i32 %3150, 2
  br i1 %3201, label %3202, label %3230

; <label>:3202                                    ; preds = %3200
  %3203 = call float @dx.op.unary.f32(i32 24, float %2851)  ; Sqrt(value)
  %3204 = call float @dx.op.unary.f32(i32 24, float %2852)  ; Sqrt(value)
  %3205 = call float @dx.op.unary.f32(i32 24, float %2853)  ; Sqrt(value)
  %3206 = fadd fast float %3203, -5.000000e-01
  %3207 = fadd fast float %3204, -5.000000e-01
  %3208 = fadd fast float %3205, -5.000000e-01
  %3209 = fmul fast float %3206, %3155
  %3210 = fmul fast float %3207, %3155
  %3211 = fmul fast float %3208, %3155
  %3212 = fadd fast float %3209, 5.000000e-01
  %3213 = fadd fast float %3210, 5.000000e-01
  %3214 = fadd fast float %3211, 5.000000e-01
  %3215 = fmul fast float %3212, 2.000000e+00
  %3216 = fsub fast float 1.000000e+00, %3215
  %3217 = fmul fast float %3216, %3142
  %3218 = fadd fast float %3217, %3215
  %3219 = fmul fast float %3218, %3142
  %3220 = fmul fast float %3213, 2.000000e+00
  %3221 = fsub fast float 1.000000e+00, %3220
  %3222 = fmul fast float %3221, %3143
  %3223 = fadd fast float %3222, %3220
  %3224 = fmul fast float %3223, %3143
  %3225 = fmul fast float %3214, 2.000000e+00
  %3226 = fsub fast float 1.000000e+00, %3225
  %3227 = fmul fast float %3226, %3144
  %3228 = fadd fast float %3227, %3225
  %3229 = fmul fast float %3228, %3144
  br label %3230

; <label>:3230                                    ; preds = %3202, %3200, %3187, %3157, %3141
  %3231 = phi float [ %3142, %3141 ], [ %3219, %3202 ], [ %3142, %3200 ], [ %3197, %3187 ], [ %3167, %3157 ]
  %3232 = phi float [ %3143, %3141 ], [ %3224, %3202 ], [ %3143, %3200 ], [ %3198, %3187 ], [ %3168, %3157 ]
  %3233 = phi float [ %3144, %3141 ], [ %3229, %3202 ], [ %3144, %3200 ], [ %3199, %3187 ], [ %3169, %3157 ]
  %3234 = phi float [ %3145, %3141 ], [ %3145, %3202 ], [ %3145, %3200 ], [ %3145, %3187 ], [ %3179, %3157 ]
  %3235 = phi float [ %3146, %3141 ], [ %3146, %3202 ], [ %3146, %3200 ], [ %3146, %3187 ], [ %3180, %3157 ]
  %3236 = phi float [ %3147, %3141 ], [ %3147, %3202 ], [ %3147, %3200 ], [ %3147, %3187 ], [ %3181, %3157 ]
  %3237 = phi float [ %2329, %3141 ], [ %2329, %3202 ], [ %2329, %3200 ], [ %2329, %3187 ], [ %3172, %3157 ]
  %3238 = phi float [ %2333, %3141 ], [ %2333, %3202 ], [ %2333, %3200 ], [ %2333, %3187 ], [ %3184, %3157 ]
  %3239 = and i32 %3149, 12
  %3240 = icmp eq i32 %3239, 12
  br i1 %3240, label %3371, label %3241

; <label>:3241                                    ; preds = %3230
  %3242 = and i32 %3149, 2097184
  %3243 = icmp eq i32 %3242, 2097184
  %3244 = select i1 %3243, float %2631, float 0.000000e+00
  %3245 = and i32 %3149, 4194336
  %3246 = icmp eq i32 %3245, 4194336
  %3247 = select i1 %3246, float %2631, float 0.000000e+00
  %3248 = and i32 %3149, 8388640
  %3249 = icmp eq i32 %3248, 8388640
  %3250 = select i1 %3249, float %2631, float 0.000000e+00
  %3251 = and i32 %3149, 1024
  %3252 = icmp ne i32 %3251, 0
  %3253 = select i1 %3252, float %2631, float 0.000000e+00
  %3254 = and i32 %3149, 2048
  %3255 = icmp ne i32 %3254, 0
  %3256 = select i1 %3255, float %2631, float 0.000000e+00
  %3257 = and i32 %3149, 8192
  %3258 = icmp ne i32 %3257, 0
  %3259 = select i1 %3258, float %2631, float 0.000000e+00
  %3260 = icmp eq i32 %3239, 0
  br i1 %3260, label %3261, label %3295

; <label>:3261                                    ; preds = %3241
  %3262 = fsub fast float %2932, %2315
  %3263 = fsub fast float %2933, %2316
  %3264 = fmul fast float %3244, %3262
  %3265 = fmul fast float %3244, %3263
  %3266 = fadd fast float %3264, %2315
  %3267 = fadd fast float %3265, %2316
  %3268 = fsub fast float %2934, %2331
  %3269 = fmul fast float %3247, %3268
  %3270 = fadd fast float %3269, %2331
  %3271 = fsub fast float %2931, %2330
  %3272 = fmul fast float %3250, %3271
  %3273 = fadd fast float %3272, %2330
  %3274 = fsub fast float %3037, %2326
  %3275 = fsub fast float %3038, %2327
  %3276 = fsub fast float %3039, %2328
  %3277 = fmul fast float %3253, %3274
  %3278 = fmul fast float %3253, %3275
  %3279 = fmul fast float %3253, %3276
  %3280 = fadd fast float %3277, %2326
  %3281 = fadd fast float %3278, %2327
  %3282 = fadd fast float %3279, %2328
  %3283 = fsub fast float %3092, %2332
  %3284 = fmul fast float %3256, %3283
  %3285 = fadd fast float %3284, %2332
  %3286 = fsub fast float %3089, %2323
  %3287 = fsub fast float %3090, %2324
  %3288 = fsub fast float %3091, %2325
  %3289 = fmul fast float %3259, %3286
  %3290 = fmul fast float %3259, %3287
  %3291 = fmul fast float %3259, %3288
  %3292 = fadd fast float %3289, %2323
  %3293 = fadd fast float %3290, %2324
  %3294 = fadd fast float %3291, %2325
  br label %3371

; <label>:3295                                    ; preds = %3241
  %3296 = icmp eq i32 %3239, 4
  br i1 %3296, label %3297, label %3343

; <label>:3297                                    ; preds = %3295
  %3298 = fmul fast float %3244, %2932
  %3299 = fmul fast float %3244, %2933
  %3300 = fadd fast float %3298, %2315
  %3301 = fadd fast float %3299, %2316
  %3302 = call float @dx.op.binary.f32(i32 36, float %2331, float %2934)  ; FMin(a,b)
  %3303 = fsub fast float %3302, %2331
  %3304 = fmul fast float %3303, %3247
  %3305 = fadd fast float %3304, %2331
  %3306 = fadd fast float %2931, %2330
  %3307 = fmul fast float %3306, 0x3FF337FAE0000000
  %3308 = fmul fast float %2330, %2330
  %3309 = fmul fast float %2931, %2931
  %3310 = fadd fast float %3309, %3308
  %3311 = fmul fast float %3310, 0x3FE5152B00000000
  %3312 = fmul fast float %2330, 0xBFCC1F85E0000000
  %3313 = fmul fast float %3312, %2931
  %3314 = fadd fast float %3313, 0xBFE1363700000000
  %3315 = fadd fast float %3314, %3307
  %3316 = fsub fast float %3315, %3311
  %3317 = fmul fast float %3306, 0x3FBA6F0D00000000
  %3318 = fmul fast float %3310, 0x3FD0432880000000
  %3319 = fmul fast float %2330, 0xBFEF110800000000
  %3320 = fmul fast float %3319, %2931
  %3321 = fadd fast float %3320, 1.000000e+00
  %3322 = fsub fast float %3321, %3317
  %3323 = fadd fast float %3322, %3318
  %3324 = fdiv fast float %3316, %3323
  %3325 = call float @dx.op.unary.f32(i32 7, float %3324)  ; Saturate(value)
  %3326 = fsub fast float %3325, %2330
  %3327 = fmul fast float %3326, %3250
  %3328 = fadd fast float %3327, %2330
  %3329 = fmul fast float %3253, %3037
  %3330 = fmul fast float %3253, %3038
  %3331 = fmul fast float %3253, %3039
  %3332 = fadd fast float %3329, %2326
  %3333 = fadd fast float %3330, %2327
  %3334 = fadd fast float %3331, %2328
  %3335 = fmul fast float %3256, %3092
  %3336 = fadd fast float %3335, %2332
  %3337 = fmul fast float %3259, %3089
  %3338 = fmul fast float %3259, %3090
  %3339 = fmul fast float %3259, %3091
  %3340 = fadd fast float %3337, %2323
  %3341 = fadd fast float %3338, %2324
  %3342 = fadd fast float %3339, %2325
  br label %3371

; <label>:3343                                    ; preds = %3295
  %3344 = icmp eq i32 %3239, 8
  br i1 %3344, label %3345, label %3371

; <label>:3345                                    ; preds = %3343
  %3346 = fmul fast float %3244, %2932
  %3347 = fmul fast float %3244, %2933
  %3348 = fadd fast float %3346, %2315
  %3349 = fadd fast float %3347, %2316
  %3350 = call float @dx.op.binary.f32(i32 36, float %2331, float %2934)  ; FMin(a,b)
  %3351 = fsub fast float %3350, %2331
  %3352 = fmul fast float %3351, %3247
  %3353 = fadd fast float %3352, %2331
  %3354 = fsub fast float %2931, %2330
  %3355 = fmul fast float %3250, %3354
  %3356 = fadd fast float %3355, %2330
  %3357 = fmul fast float %3253, %3037
  %3358 = fmul fast float %3253, %3038
  %3359 = fmul fast float %3253, %3039
  %3360 = fadd fast float %3357, %2326
  %3361 = fadd fast float %3358, %2327
  %3362 = fadd fast float %3359, %2328
  %3363 = fmul fast float %3256, %3092
  %3364 = fadd fast float %3363, %2332
  %3365 = fmul fast float %3259, %3089
  %3366 = fmul fast float %3259, %3090
  %3367 = fmul fast float %3259, %3091
  %3368 = fadd fast float %3365, %2323
  %3369 = fadd fast float %3366, %2324
  %3370 = fadd fast float %3367, %2325
  br label %3371

; <label>:3371                                    ; preds = %3345, %3343, %3297, %3261, %3230, %2630, %2334, %2314
  %3372 = phi float [ %2315, %3230 ], [ %2315, %2630 ], [ %2315, %2314 ], [ %3348, %3345 ], [ %2315, %3343 ], [ %3300, %3297 ], [ %3266, %3261 ], [ %2315, %2334 ]
  %3373 = phi float [ %2316, %3230 ], [ %2316, %2630 ], [ %2316, %2314 ], [ %3349, %3345 ], [ %2316, %3343 ], [ %3301, %3297 ], [ %3267, %3261 ], [ %2316, %2334 ]
  %3374 = phi float [ %3231, %3230 ], [ %2317, %2630 ], [ %2317, %2314 ], [ %3231, %3345 ], [ %3231, %3343 ], [ %3231, %3297 ], [ %3231, %3261 ], [ %2317, %2334 ]
  %3375 = phi float [ %3232, %3230 ], [ %2318, %2630 ], [ %2318, %2314 ], [ %3232, %3345 ], [ %3232, %3343 ], [ %3232, %3297 ], [ %3232, %3261 ], [ %2318, %2334 ]
  %3376 = phi float [ %3233, %3230 ], [ %2319, %2630 ], [ %2319, %2314 ], [ %3233, %3345 ], [ %3233, %3343 ], [ %3233, %3297 ], [ %3233, %3261 ], [ %2319, %2334 ]
  %3377 = phi float [ %3234, %3230 ], [ %2320, %2630 ], [ %2320, %2314 ], [ %3234, %3345 ], [ %3234, %3343 ], [ %3234, %3297 ], [ %3234, %3261 ], [ %2320, %2334 ]
  %3378 = phi float [ %3235, %3230 ], [ %2321, %2630 ], [ %2321, %2314 ], [ %3235, %3345 ], [ %3235, %3343 ], [ %3235, %3297 ], [ %3235, %3261 ], [ %2321, %2334 ]
  %3379 = phi float [ %3236, %3230 ], [ %2322, %2630 ], [ %2322, %2314 ], [ %3236, %3345 ], [ %3236, %3343 ], [ %3236, %3297 ], [ %3236, %3261 ], [ %2322, %2334 ]
  %3380 = phi float [ %2323, %3230 ], [ %2323, %2630 ], [ %2323, %2314 ], [ %3368, %3345 ], [ %2323, %3343 ], [ %3340, %3297 ], [ %3292, %3261 ], [ %2323, %2334 ]
  %3381 = phi float [ %2324, %3230 ], [ %2324, %2630 ], [ %2324, %2314 ], [ %3369, %3345 ], [ %2324, %3343 ], [ %3341, %3297 ], [ %3293, %3261 ], [ %2324, %2334 ]
  %3382 = phi float [ %2325, %3230 ], [ %2325, %2630 ], [ %2325, %2314 ], [ %3370, %3345 ], [ %2325, %3343 ], [ %3342, %3297 ], [ %3294, %3261 ], [ %2325, %2334 ]
  %3383 = phi float [ %2326, %3230 ], [ %2326, %2630 ], [ %2326, %2314 ], [ %3360, %3345 ], [ %2326, %3343 ], [ %3332, %3297 ], [ %3280, %3261 ], [ %2326, %2334 ]
  %3384 = phi float [ %2327, %3230 ], [ %2327, %2630 ], [ %2327, %2314 ], [ %3361, %3345 ], [ %2327, %3343 ], [ %3333, %3297 ], [ %3281, %3261 ], [ %2327, %2334 ]
  %3385 = phi float [ %2328, %3230 ], [ %2328, %2630 ], [ %2328, %2314 ], [ %3362, %3345 ], [ %2328, %3343 ], [ %3334, %3297 ], [ %3282, %3261 ], [ %2328, %2334 ]
  %3386 = phi float [ %3237, %3230 ], [ %2329, %2630 ], [ %2329, %2314 ], [ %3237, %3345 ], [ %3237, %3343 ], [ %3237, %3297 ], [ %3237, %3261 ], [ %2329, %2334 ]
  %3387 = phi float [ %2330, %3230 ], [ %2330, %2630 ], [ %2330, %2314 ], [ %3356, %3345 ], [ %2330, %3343 ], [ %3328, %3297 ], [ %3273, %3261 ], [ %2330, %2334 ]
  %3388 = phi float [ %2331, %3230 ], [ %2331, %2630 ], [ %2331, %2314 ], [ %3353, %3345 ], [ %2331, %3343 ], [ %3305, %3297 ], [ %3270, %3261 ], [ %2331, %2334 ]
  %3389 = phi float [ %2332, %3230 ], [ %2332, %2630 ], [ %2332, %2314 ], [ %3364, %3345 ], [ %2332, %3343 ], [ %3336, %3297 ], [ %3285, %3261 ], [ %2332, %2334 ]
  %3390 = phi float [ %3238, %3230 ], [ %2333, %2630 ], [ %2333, %2314 ], [ %3238, %3345 ], [ %3238, %3343 ], [ %3238, %3297 ], [ %3238, %3261 ], [ %2333, %2334 ]
  br i1 %433, label %4428, label %3391

; <label>:3391                                    ; preds = %3371
  %3392 = icmp ult i32 %487, 4
  %3393 = add i32 %48, 72
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = add i32 %48, 76
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.i32 %3397, 0
  %3399 = or i32 %3398, %3395
  %3400 = icmp eq i32 %3399, 0
  br i1 %3400, label %4428, label %3401

; <label>:3401                                    ; preds = %3391
  %3402 = and i32 %3395, 262144
  %3403 = icmp ne i32 %3402, 0
  %3404 = select i1 %3403, float %51, float 1.000000e+00
  %3405 = select i1 %3403, float %52, float 0.000000e+00
  %3406 = select i1 %3403, float %53, float 0.000000e+00
  %3407 = select i1 %3403, float %54, float 1.000000e+00
  %3408 = select i1 %3403, float %55, float %76
  %3409 = select i1 %3403, float %56, float %77
  %3410 = add i32 %48, 332
  %3411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3412 = extractvalue %dx.types.ResRet.i32 %3411, 0
  %3413 = lshr i32 %3412, 16
  %3414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3413)  ; LegacyF16ToF32(value)
  %3415 = fmul fast float %3414, 0x3F50624DE0000000
  %3416 = add i32 %48, 136
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = lshr i32 %3418, 16
  %3420 = and i32 %3419, 255
  %3421 = lshr i32 %3418, 24
  %3422 = add i32 %48, 340
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = and i32 %3424, 65535
  %3426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3425)  ; LegacyF16ToF32(value)
  %3427 = lshr i32 %3424, 16
  %3428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3427)  ; LegacyF16ToF32(value)
  %3429 = add i32 %48, 80
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = lshr i32 %3431, 22
  %3433 = shl nuw nsw i32 %3432, 5
  %3434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3433)  ; LegacyF16ToF32(value)
  %3435 = shl i32 %3431, 4
  %3436 = and i32 %3435, 32752
  %3437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3436)  ; LegacyF16ToF32(value)
  %3438 = lshr i32 %3431, 7
  %3439 = and i32 %3438, 32752
  %3440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3439)  ; LegacyF16ToF32(value)
  %3441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3442 = extractvalue %dx.types.CBufRet.f32 %3441, 3
  %3443 = fmul fast float %3442, 1.000000e+03
  %3444 = fmul fast float %423, %3443
  %3445 = call float @dx.op.unary.f32(i32 22, float %3444)  ; Frc(value)
  %3446 = fadd fast float %3445, %413
  %3447 = fmul fast float %424, %3443
  %3448 = call float @dx.op.unary.f32(i32 22, float %3447)  ; Frc(value)
  %3449 = fadd fast float %3448, %415
  %3450 = fmul fast float %3415, %3443
  %3451 = call float @dx.op.unary.f32(i32 22, float %3450)  ; Frc(value)
  %3452 = fmul fast float %3451, 0x401921FB60000000
  %3453 = fadd fast float %3452, %3434
  %3454 = call float @dx.op.unary.f32(i32 13, float %3453)  ; Sin(value)
  %3455 = call float @dx.op.unary.f32(i32 12, float %3453)  ; Cos(value)
  %3456 = fsub fast float -0.000000e+00, %3454
  %3457 = fadd fast float %3408, -5.000000e-01
  %3458 = fadd fast float %3409, -5.000000e-01
  %3459 = fmul fast float %3426, %3457
  %3460 = fmul fast float %3428, %3458
  %3461 = fadd fast float %3459, 5.000000e-01
  %3462 = fadd fast float %3460, 5.000000e-01
  %3463 = fmul fast float %3437, %3461
  %3464 = fmul fast float %3440, %3462
  %3465 = fmul fast float %3455, %3463
  %3466 = call float @dx.op.tertiary.f32(i32 46, float %3456, float %3464, float %3465)  ; FMad(a,b,c)
  %3467 = fmul fast float %3454, %3463
  %3468 = call float @dx.op.tertiary.f32(i32 46, float %3455, float %3464, float %3467)  ; FMad(a,b,c)
  %3469 = fadd fast float %3446, %3466
  %3470 = fadd fast float %3449, %3468
  %3471 = icmp ugt i32 %3420, 1
  %3472 = icmp ugt i32 %3418, 33554431
  %3473 = or i1 %3472, %3471
  br i1 %3473, label %3474, label %3499

; <label>:3474                                    ; preds = %3401
  %3475 = add i32 %48, 276
  %3476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.i32 %3476, 0
  %3478 = lshr i32 %3477, 16
  %3479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3478)  ; LegacyF16ToF32(value)
  %3480 = fmul fast float %3442, %3479
  %3481 = call float @dx.op.unary.f32(i32 22, float %3480)  ; Frc(value)
  %3482 = mul nuw nsw i32 %3420, %3421
  %3483 = uitofp i32 %3482 to float
  %3484 = fmul fast float %3481, %3483
  %3485 = call float @dx.op.unary.f32(i32 27, float %3484)  ; Round_ni(value)
  %3486 = fptoui float %3485 to i32
  %3487 = urem i32 %3486, %3420
  %3488 = udiv i32 %3486, %3421
  %3489 = call float @dx.op.unary.f32(i32 22, float %3469)  ; Frc(value)
  %3490 = call float @dx.op.unary.f32(i32 22, float %3470)  ; Frc(value)
  %3491 = uitofp i32 %3487 to float
  %3492 = uitofp i32 %3488 to float
  %3493 = fadd fast float %3489, %3491
  %3494 = fadd fast float %3490, %3492
  %3495 = uitofp i32 %3420 to float
  %3496 = uitofp i32 %3421 to float
  %3497 = fdiv fast float %3493, %3495
  %3498 = fdiv fast float %3494, %3496
  br label %3499

; <label>:3499                                    ; preds = %3474, %3401
  %3500 = phi float [ %3497, %3474 ], [ %3469, %3401 ]
  %3501 = phi float [ %3498, %3474 ], [ %3470, %3401 ]
  %3502 = and i32 %3395, 16777216
  %3503 = icmp eq i32 %3502, 0
  br i1 %3503, label %3613, label %3504

; <label>:3504                                    ; preds = %3499
  %3505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3506 = extractvalue %dx.types.CBufRet.f32 %3505, 0
  %3507 = extractvalue %dx.types.CBufRet.f32 %3505, 1
  %3508 = extractvalue %dx.types.CBufRet.f32 %3505, 2
  %3509 = fadd fast float %3506, %152
  %3510 = fadd fast float %3507, %153
  %3511 = fadd fast float %3508, %154
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 0
  %3514 = call float @dx.op.unary.f32(i32 7, float %3513)  ; Saturate(value)
  %3515 = icmp eq i32 %49, 65535
  br i1 %3515, label %3610, label %3516

; <label>:3516                                    ; preds = %3504
  %3517 = lshr i32 %49, 1
  %3518 = shl i32 %3517, 2
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = and i32 %49, 1
  %3522 = icmp ne i32 %3521, 0
  %3523 = lshr i32 %3520, 16
  %3524 = and i32 %3520, 65535
  %3525 = select i1 %3522, i32 %3523, i32 %3524
  %3526 = icmp eq i32 %3525, 65535
  br i1 %3526, label %3606, label %3527

; <label>:3527                                    ; preds = %3516
  %3528 = mul nuw nsw i32 %3525, 40
  %3529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3529, 1
  %3532 = extractvalue %dx.types.ResRet.f32 %3529, 2
  %3533 = add nuw nsw i32 %3528, 12
  %3534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.f32 %3534, 0
  %3536 = extractvalue %dx.types.ResRet.f32 %3534, 1
  %3537 = extractvalue %dx.types.ResRet.f32 %3534, 2
  %3538 = add nuw nsw i32 %3528, 24
  %3539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.f32 %3539, 0
  %3541 = extractvalue %dx.types.ResRet.f32 %3539, 1
  %3542 = extractvalue %dx.types.ResRet.f32 %3539, 2
  %3543 = add nuw nsw i32 %3528, 36
  %3544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3543, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.f32 %3544, 0
  %3546 = fsub fast float %3509, %3530
  %3547 = fsub fast float %3510, %3531
  %3548 = fsub fast float %3511, %3532
  %3549 = fmul fast float %3545, %3546
  %3550 = fmul fast float %3545, %3547
  %3551 = fmul fast float %3545, %3548
  %3552 = call float @dx.op.unary.f32(i32 27, float %3549)  ; Round_ni(value)
  %3553 = call float @dx.op.unary.f32(i32 27, float %3550)  ; Round_ni(value)
  %3554 = call float @dx.op.unary.f32(i32 27, float %3551)  ; Round_ni(value)
  %3555 = fadd fast float %3552, 5.000000e-01
  %3556 = fadd fast float %3553, 5.000000e-01
  %3557 = fadd fast float %3554, 5.000000e-01
  %3558 = fmul fast float %3555, %3535
  %3559 = fmul fast float %3556, %3536
  %3560 = fmul fast float %3557, %3537
  %3561 = shl i32 %49, 2
  %3562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.i32 %3562, 0
  %3564 = add i32 %3563, 0
  %3565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3566 = call float @dx.op.unary.f32(i32 22, float %3558)  ; Frc(value)
  %3567 = call float @dx.op.unary.f32(i32 22, float %3559)  ; Frc(value)
  %3568 = call float @dx.op.unary.f32(i32 22, float %3560)  ; Frc(value)
  %3569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3565, %dx.types.Handle %43, float %3566, float %3567, float %3568, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.ResRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.ResRet.f32 %3569, 2
  %3573 = fmul fast float %3570, 1.023000e+03
  %3574 = fmul fast float %3571, 1.023000e+03
  %3575 = fmul fast float %3572, 1.023000e+03
  %3576 = fadd fast float %3573, 5.000000e-01
  %3577 = fadd fast float %3574, 5.000000e-01
  %3578 = fadd fast float %3575, 5.000000e-01
  %3579 = call float @dx.op.unary.f32(i32 27, float %3576)  ; Round_ni(value)
  %3580 = call float @dx.op.unary.f32(i32 27, float %3577)  ; Round_ni(value)
  %3581 = call float @dx.op.unary.f32(i32 27, float %3578)  ; Round_ni(value)
  %3582 = fsub fast float %3549, %3552
  %3583 = fsub fast float %3550, %3553
  %3584 = fsub fast float %3551, %3554
  %3585 = fmul fast float %3582, 7.500000e-01
  %3586 = fmul fast float %3583, 7.500000e-01
  %3587 = fmul fast float %3584, 7.500000e-01
  %3588 = fadd fast float %3552, 1.250000e-01
  %3589 = fadd fast float %3588, %3585
  %3590 = fadd fast float %3589, %3579
  %3591 = fadd fast float %3553, 1.250000e-01
  %3592 = fadd fast float %3591, %3586
  %3593 = fadd fast float %3592, %3580
  %3594 = fadd fast float %3554, 1.250000e-01
  %3595 = fadd fast float %3594, %3587
  %3596 = fadd fast float %3595, %3581
  %3597 = fmul fast float %3590, %3540
  %3598 = fmul fast float %3593, %3541
  %3599 = fmul fast float %3596, %3542
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = add i32 %3601, 0
  %3603 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3602, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3603, %dx.types.Handle %41, float %3597, float %3598, float %3599, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  br label %3606

; <label>:3606                                    ; preds = %3527, %3516
  %3607 = phi float [ %3605, %3527 ], [ -1.000000e+00, %3516 ]
  %3608 = fadd fast float %3607, %3514
  %3609 = call float @dx.op.unary.f32(i32 7, float %3608)  ; Saturate(value)
  br label %3610

; <label>:3610                                    ; preds = %3606, %3504
  %3611 = phi float [ %3609, %3606 ], [ %3514, %3504 ]
  %3612 = fmul fast float %3611, %482
  br label %3613

; <label>:3613                                    ; preds = %3610, %3499
  %3614 = phi float [ %3612, %3610 ], [ %482, %3499 ]
  %3615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = and i32 %3616, 256
  %3618 = icmp eq i32 %3617, 0
  br i1 %3618, label %3665, label %3619

; <label>:3619                                    ; preds = %3613
  %3620 = add i32 %48, 500
  %3621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.i32 %3621, 0
  %3623 = add i32 %3622, 0
  %3624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3624, %dx.types.Handle %94, float %3500, float %3501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = add i32 %48, 148
  %3628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.i32 %3628, 0
  %3630 = shl i32 %3629, 4
  %3631 = and i32 %3630, 32752
  %3632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3631)  ; LegacyF16ToF32(value)
  %3633 = lshr i32 %3629, 7
  %3634 = and i32 %3633, 32752
  %3635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3634)  ; LegacyF16ToF32(value)
  %3636 = fsub fast float 1.000000e+00, %3614
  %3637 = call float @dx.op.binary.f32(i32 35, float %3636, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3638 = bitcast float %3614 to i32
  %3639 = sitofp i32 %3638 to float
  %3640 = fadd fast float %3639, 0xC1CFBF8940000000
  %3641 = fmul fast float %3635, %3640
  %3642 = fadd fast float %3641, 0x41CFBF8940000000
  %3643 = fptosi float %3642 to i32
  %3644 = bitcast i32 %3643 to float
  %3645 = bitcast float %3637 to i32
  %3646 = sitofp i32 %3645 to float
  %3647 = fadd fast float %3646, 0xC1CFBF8940000000
  %3648 = fmul fast float %3647, %3635
  %3649 = fadd fast float %3648, 0x41CFBF8940000000
  %3650 = fptosi float %3649 to i32
  %3651 = bitcast i32 %3650 to float
  %3652 = fmul fast float %3644, %3632
  %3653 = fmul fast float %3651, %3632
  %3654 = fsub fast float %3637, %3652
  %3655 = fadd fast float %3653, %3637
  %3656 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3657 = call float @dx.op.unary.f32(i32 7, float %3655)  ; Saturate(value)
  %3658 = fsub fast float %3626, %3656
  %3659 = fsub fast float %3657, %3656
  %3660 = bitcast float %3659 to i32
  %3661 = sub nsw i32 2129859010, %3660
  %3662 = bitcast i32 %3661 to float
  %3663 = fmul fast float %3662, %3658
  %3664 = call float @dx.op.unary.f32(i32 7, float %3663)  ; Saturate(value)
  br label %3665

; <label>:3665                                    ; preds = %3619, %3613
  %3666 = phi float [ %3664, %3619 ], [ %3614, %3613 ]
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = and i32 %3668, 128
  %3670 = icmp eq i32 %3669, 0
  br i1 %3670, label %3687, label %3671

; <label>:3671                                    ; preds = %3665
  %3672 = add i32 %48, 484
  %3673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3672, i32 undef)  ; BufferLoad(srv,index,wot)
  %3674 = extractvalue %dx.types.ResRet.i32 %3673, 0
  %3675 = add i32 %3674, 0
  %3676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3677 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3676, %dx.types.Handle %94, float %3500, float %3501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3680 = extractvalue %dx.types.ResRet.i32 %3679, 0
  %3681 = and i32 %3680, 524288
  %3682 = icmp ne i32 %3681, 0
  %3683 = fcmp fast ogt float %3678, 0x3FE0101020000000
  %3684 = select i1 %3683, float 1.000000e+00, float 0.000000e+00
  %3685 = select i1 %3682, float %3684, float %3678
  %3686 = fmul fast float %3685, %3666
  br label %3687

; <label>:3687                                    ; preds = %3671, %3665
  %3688 = phi float [ %3686, %3671 ], [ %3666, %3665 ]
  %3689 = fcmp fast ult float %3688, 0x3F70101020000000
  br i1 %3689, label %4428, label %3690

; <label>:3690                                    ; preds = %3687
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = and i32 %3692, 16
  %3694 = icmp eq i32 %3693, 0
  br i1 %3694, label %3893, label %3695

; <label>:3695                                    ; preds = %3690
  %3696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3416, i32 undef)  ; BufferLoad(srv,index,wot)
  %3697 = extractvalue %dx.types.ResRet.i32 %3696, 0
  %3698 = add i32 %48, 436
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = add i32 %3700, 0
  %3702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3701, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3703 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3702, %dx.types.Handle %93, float %3500, float %3501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3704 = extractvalue %dx.types.ResRet.f32 %3703, 0
  %3705 = extractvalue %dx.types.ResRet.f32 %3703, 1
  %3706 = extractvalue %dx.types.ResRet.f32 %3703, 2
  %3707 = extractvalue %dx.types.ResRet.f32 %3703, 3
  %3708 = and i32 %3697, 255
  %3709 = uitofp i32 %3708 to float
  %3710 = lshr i32 %3697, 8
  %3711 = and i32 %3710, 255
  %3712 = uitofp i32 %3711 to float
  %3713 = fmul fast float %3707, %3709
  %3714 = fadd fast float %3713, %3712
  %3715 = fmul fast float %3714, 0x3F70101000000000
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = and i32 %3717, 512
  %3719 = icmp eq i32 %3718, 0
  br i1 %3719, label %3728, label %3720

; <label>:3720                                    ; preds = %3695
  %3721 = add i32 %48, 520
  %3722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.i32 %3722, 0
  %3724 = add i32 %3723, 0
  %3725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3724, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3726 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3725, %dx.types.Handle %94, float %3500, float %3501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3727 = extractvalue %dx.types.ResRet.f32 %3726, 0
  br label %3728

; <label>:3728                                    ; preds = %3720, %3695
  %3729 = phi float [ %3727, %3720 ], [ 1.000000e+00, %3695 ]
  %3730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.i32 %3730, 0
  %3732 = and i32 %3731, 33554432
  %3733 = icmp eq i32 %3732, 0
  br i1 %3733, label %3840, label %3734

; <label>:3734                                    ; preds = %3728
  %3735 = add i32 %48, 272
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = and i32 %3737, 65535
  %3739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3738)  ; LegacyF16ToF32(value)
  %3740 = lshr i32 %3737, 16
  %3741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3740)  ; LegacyF16ToF32(value)
  %3742 = add i32 %48, 276
  %3743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.i32 %3743, 0
  %3745 = and i32 %3744, 65535
  %3746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3745)  ; LegacyF16ToF32(value)
  %3747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.i32 %3747, 0
  %3749 = lshr i32 %3748, 24
  %3750 = uitofp i32 %3749 to float
  %3751 = fmul fast float %3750, 0x3F70101020000000
  %3752 = and i32 %3748, 255
  %3753 = uitofp i32 %3752 to float
  %3754 = fmul fast float %3753, 0x3F70101020000000
  %3755 = lshr i32 %3748, 8
  %3756 = and i32 %3755, 255
  %3757 = uitofp i32 %3756 to float
  %3758 = fmul fast float %3757, 0x3F70101020000000
  %3759 = lshr i32 %3748, 16
  %3760 = and i32 %3759, 255
  %3761 = uitofp i32 %3760 to float
  %3762 = fmul fast float %3761, 0x3F70101020000000
  %3763 = add i32 %48, 268
  %3764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3763, i32 undef)  ; BufferLoad(srv,index,wot)
  %3765 = extractvalue %dx.types.ResRet.i32 %3764, 0
  %3766 = lshr i32 %3765, 24
  %3767 = uitofp i32 %3766 to float
  %3768 = fmul fast float %3767, 0x3F70101020000000
  %3769 = and i32 %3765, 255
  %3770 = uitofp i32 %3769 to float
  %3771 = fmul fast float %3770, 0x3F70101020000000
  %3772 = lshr i32 %3765, 8
  %3773 = and i32 %3772, 255
  %3774 = uitofp i32 %3773 to float
  %3775 = fmul fast float %3774, 0x3F70101020000000
  %3776 = lshr i32 %3765, 16
  %3777 = and i32 %3776, 255
  %3778 = uitofp i32 %3777 to float
  %3779 = fmul fast float %3778, 0x3F70101020000000
  %3780 = bitcast float %3704 to i32
  %3781 = ashr i32 %3780, 1
  %3782 = sub nsw i32 1597463174, %3781
  %3783 = bitcast i32 %3782 to float
  %3784 = fmul fast float %3704, 5.000000e-01
  %3785 = fmul fast float %3783, %3783
  %3786 = fmul fast float %3785, %3784
  %3787 = fsub fast float 1.500000e+00, %3786
  %3788 = fmul fast float %3783, %3704
  %3789 = fmul fast float %3788, %3787
  %3790 = bitcast float %3705 to i32
  %3791 = ashr i32 %3790, 1
  %3792 = sub nsw i32 1597463174, %3791
  %3793 = bitcast i32 %3792 to float
  %3794 = fmul fast float %3705, 5.000000e-01
  %3795 = fmul fast float %3793, %3793
  %3796 = fmul fast float %3795, %3794
  %3797 = fsub fast float 1.500000e+00, %3796
  %3798 = fmul fast float %3793, %3705
  %3799 = fmul fast float %3798, %3797
  %3800 = bitcast float %3706 to i32
  %3801 = ashr i32 %3800, 1
  %3802 = sub nsw i32 1597463174, %3801
  %3803 = bitcast i32 %3802 to float
  %3804 = fmul fast float %3706, 5.000000e-01
  %3805 = fmul fast float %3803, %3803
  %3806 = fmul fast float %3805, %3804
  %3807 = fsub fast float 1.500000e+00, %3806
  %3808 = fmul fast float %3803, %3706
  %3809 = fmul fast float %3808, %3807
  %3810 = fsub fast float %3789, %3771
  %3811 = fsub fast float %3799, %3775
  %3812 = fsub fast float %3809, %3779
  %3813 = fmul fast float %3810, %3739
  %3814 = fmul fast float %3811, %3741
  %3815 = fmul fast float %3812, %3746
  %3816 = fadd fast float %3813, %3754
  %3817 = fadd fast float %3814, %3758
  %3818 = fadd fast float %3815, %3762
  %3819 = call float @dx.op.unary.f32(i32 7, float %3816)  ; Saturate(value)
  %3820 = call float @dx.op.unary.f32(i32 7, float %3817)  ; Saturate(value)
  %3821 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  %3822 = fmul fast float %3819, %3819
  %3823 = fmul fast float %3820, %3820
  %3824 = fmul fast float %3821, %3821
  %3825 = fsub fast float %3822, %3704
  %3826 = fsub fast float %3823, %3705
  %3827 = fsub fast float %3824, %3706
  %3828 = fmul fast float %3825, %3729
  %3829 = fmul fast float %3826, %3729
  %3830 = fmul fast float %3827, %3729
  %3831 = fadd fast float %3828, %3704
  %3832 = fadd fast float %3829, %3705
  %3833 = fadd fast float %3830, %3706
  %3834 = fadd fast float %3751, %3715
  %3835 = fsub fast float %3834, %3768
  %3836 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  %3837 = fsub fast float %3836, %3715
  %3838 = fmul fast float %3837, %3729
  %3839 = fadd fast float %3838, %3715
  br label %3893

; <label>:3840                                    ; preds = %3728
  %3841 = and i32 %3731, 134217728
  %3842 = icmp eq i32 %3841, 0
  br i1 %3842, label %3877, label %3843

; <label>:3843                                    ; preds = %3840
  %3844 = call float @dx.op.unary.f32(i32 24, float %400)  ; Sqrt(value)
  %3845 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %3846 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %3847 = fadd fast float %3844, -5.000000e-01
  %3848 = fadd fast float %3845, -5.000000e-01
  %3849 = fadd fast float %3846, -5.000000e-01
  %3850 = fmul fast float %3847, %3729
  %3851 = fmul fast float %3848, %3729
  %3852 = fmul fast float %3849, %3729
  %3853 = fadd fast float %3850, 5.000000e-01
  %3854 = fadd fast float %3851, 5.000000e-01
  %3855 = fadd fast float %3852, 5.000000e-01
  %3856 = call float @dx.op.unary.f32(i32 24, float %3704)  ; Sqrt(value)
  %3857 = call float @dx.op.unary.f32(i32 24, float %3705)  ; Sqrt(value)
  %3858 = call float @dx.op.unary.f32(i32 24, float %3706)  ; Sqrt(value)
  %3859 = fmul fast float %3853, 2.000000e+00
  %3860 = fsub fast float 1.000000e+00, %3859
  %3861 = fmul fast float %3860, %3856
  %3862 = fadd fast float %3861, %3859
  %3863 = fmul fast float %3862, %3856
  %3864 = fmul fast float %3854, 2.000000e+00
  %3865 = fsub fast float 1.000000e+00, %3864
  %3866 = fmul fast float %3865, %3857
  %3867 = fadd fast float %3866, %3864
  %3868 = fmul fast float %3867, %3857
  %3869 = fmul fast float %3855, 2.000000e+00
  %3870 = fsub fast float 1.000000e+00, %3869
  %3871 = fmul fast float %3870, %3858
  %3872 = fadd fast float %3871, %3869
  %3873 = fmul fast float %3872, %3858
  %3874 = fmul fast float %3863, %3863
  %3875 = fmul fast float %3868, %3868
  %3876 = fmul fast float %3873, %3873
  br label %3893

; <label>:3877                                    ; preds = %3840
  %3878 = fmul fast float %400, %400
  %3879 = fmul fast float %404, %404
  %3880 = fmul fast float %408, %408
  %3881 = fadd fast float %3878, -1.000000e+00
  %3882 = fadd fast float %3879, -1.000000e+00
  %3883 = fadd fast float %3880, -1.000000e+00
  %3884 = fmul fast float %3729, %3881
  %3885 = fmul fast float %3729, %3882
  %3886 = fmul fast float %3729, %3883
  %3887 = fadd fast float %3884, 1.000000e+00
  %3888 = fadd fast float %3885, 1.000000e+00
  %3889 = fadd fast float %3886, 1.000000e+00
  %3890 = fmul fast float %3887, %3704
  %3891 = fmul fast float %3888, %3705
  %3892 = fmul fast float %3889, %3706
  br label %3893

; <label>:3893                                    ; preds = %3877, %3843, %3734, %3690
  %3894 = phi float [ %3839, %3734 ], [ %3715, %3843 ], [ %3715, %3877 ], [ 0x3FA23C0BE0000000, %3690 ]
  %3895 = phi float [ %3831, %3734 ], [ %3874, %3843 ], [ %3890, %3877 ], [ 1.000000e+00, %3690 ]
  %3896 = phi float [ %3832, %3734 ], [ %3875, %3843 ], [ %3891, %3877 ], [ 1.000000e+00, %3690 ]
  %3897 = phi float [ %3833, %3734 ], [ %3876, %3843 ], [ %3892, %3877 ], [ 1.000000e+00, %3690 ]
  %3898 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.i32 %3898, 1
  %3900 = and i32 %3899, 1
  %3901 = icmp ne i32 %3900, 0
  %3902 = add i32 %48, 356
  %3903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3902, i32 undef)  ; BufferLoad(srv,index,wot)
  %3904 = extractvalue %dx.types.ResRet.i32 %3903, 0
  %3905 = and i32 %3904, 32
  %3906 = icmp ne i32 %3905, 0
  %3907 = and i1 %3901, %3906
  %3908 = select i1 %3907, float 1.000000e+00, float %3895
  %3909 = select i1 %3907, float 0x3FD3333340000000, float %3896
  %3910 = select i1 %3907, float 0x3FD3333340000000, float %3897
  %3911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.i32 %3911, 0
  %3913 = and i32 %3912, 32
  %3914 = icmp eq i32 %3913, 0
  br i1 %3914, label %3987, label %3915

; <label>:3915                                    ; preds = %3893
  %3916 = add i32 %48, 140
  %3917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.i32 %3917, 0
  %3919 = add i32 %48, 452
  %3920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3919, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.i32 %3920, 0
  %3922 = add i32 %3921, 0
  %3923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3923, %dx.types.Handle %93, float %3500, float %3501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3925 = extractvalue %dx.types.ResRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.ResRet.f32 %3924, 1
  %3927 = extractvalue %dx.types.ResRet.f32 %3924, 2
  %3928 = extractvalue %dx.types.ResRet.f32 %3924, 3
  %3929 = and i32 %3918, 255
  %3930 = uitofp i32 %3929 to float
  %3931 = lshr i32 %3918, 8
  %3932 = and i32 %3931, 255
  %3933 = uitofp i32 %3932 to float
  %3934 = lshr i32 %3918, 16
  %3935 = and i32 %3934, 255
  %3936 = uitofp i32 %3935 to float
  %3937 = fmul fast float %3936, 0x3F70101000000000
  %3938 = fmul fast float %3925, %3930
  %3939 = fadd fast float %3938, %3933
  %3940 = fmul fast float %3939, 0x3F70101000000000
  %3941 = fadd fast float %3926, -5.000000e-01
  %3942 = fadd fast float %3928, -5.000000e-01
  %3943 = fmul fast float %3941, %3937
  %3944 = fmul fast float %3942, %3937
  %3945 = fadd fast float %3943, 5.000000e-01
  %3946 = fadd fast float %3944, 5.000000e-01
  %3947 = fmul fast float %3945, 2.000000e+00
  %3948 = fadd fast float %3947, -1.000000e+00
  %3949 = fmul fast float %3946, 2.000000e+00
  %3950 = fadd fast float %3949, -1.000000e+00
  %3951 = fadd fast float %3948, %3950
  %3952 = fmul fast float %3951, 5.000000e-01
  %3953 = fsub fast float %3948, %3950
  %3954 = fmul fast float %3953, 5.000000e-01
  %3955 = call float @dx.op.unary.f32(i32 6, float %3952)  ; FAbs(value)
  %3956 = fsub fast float 1.000000e+00, %3955
  %3957 = call float @dx.op.unary.f32(i32 6, float %3954)  ; FAbs(value)
  %3958 = fsub fast float %3956, %3957
  %3959 = call float @dx.op.dot3.f32(i32 55, float %3952, float %3954, float %3958, float %3952, float %3954, float %3958)  ; Dot3(ax,ay,az,bx,by,bz)
  %3960 = call float @dx.op.unary.f32(i32 25, float %3959)  ; Rsqrt(value)
  %3961 = fmul fast float %3952, %3960
  %3962 = fmul fast float %3954, %3960
  %3963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.i32 %3963, 0
  %3965 = and i32 %3964, 67108864
  %3966 = icmp eq i32 %3965, 0
  br i1 %3966, label %3983, label %3967

; <label>:3967                                    ; preds = %3915
  %3968 = add i32 %48, 328
  %3969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3968, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.i32 %3969, 0
  %3971 = and i32 %3970, 65535
  %3972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3971)  ; LegacyF16ToF32(value)
  %3973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3410, i32 undef)  ; BufferLoad(srv,index,wot)
  %3974 = extractvalue %dx.types.ResRet.i32 %3973, 0
  %3975 = and i32 %3974, 65535
  %3976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3975)  ; LegacyF16ToF32(value)
  %3977 = lshr i32 %3970, 16
  %3978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3977)  ; LegacyF16ToF32(value)
  %3979 = fsub fast float %3940, %3978
  %3980 = fmul fast float %3979, %3972
  %3981 = fadd fast float %3980, %3976
  %3982 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  br label %3983

; <label>:3983                                    ; preds = %3967, %3915
  %3984 = phi float [ %3982, %3967 ], [ %3940, %3915 ]
  %3985 = call float @dx.op.dot2.f32(i32 54, float %3961, float %3962, float %3404, float %3405)  ; Dot2(ax,ay,bx,by)
  %3986 = call float @dx.op.dot2.f32(i32 54, float %3961, float %3962, float %3406, float %3407)  ; Dot2(ax,ay,bx,by)
  br label %3987

; <label>:3987                                    ; preds = %3983, %3893
  %3988 = phi float [ %3984, %3983 ], [ 0x3FD6666660000000, %3893 ]
  %3989 = phi float [ %3985, %3983 ], [ 0.000000e+00, %3893 ]
  %3990 = phi float [ %3986, %3983 ], [ 0.000000e+00, %3893 ]
  %3991 = phi float [ %3927, %3983 ], [ 1.000000e+00, %3893 ]
  %3992 = add i32 %48, 208
  %3993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3992, i32 undef)  ; BufferLoad(srv,index,wot)
  %3994 = extractvalue %dx.types.ResRet.i32 %3993, 0
  %3995 = lshr i32 %3994, 22
  %3996 = shl nuw nsw i32 %3995, 5
  %3997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3996)  ; LegacyF16ToF32(value)
  %3998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3999 = extractvalue %dx.types.ResRet.i32 %3998, 0
  %4000 = and i32 %3999, 64
  %4001 = icmp eq i32 %4000, 0
  br i1 %4001, label %4035, label %4002

; <label>:4002                                    ; preds = %3987
  %4003 = add i32 %48, 468
  %4004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4003, i32 undef)  ; BufferLoad(srv,index,wot)
  %4005 = extractvalue %dx.types.ResRet.i32 %4004, 0
  %4006 = add i32 %4005, 0
  %4007 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4006, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4009 = extractvalue %dx.types.ResRet.i32 %4008, 0
  %4010 = and i32 %4009, 131072
  %4011 = icmp eq i32 %4010, 0
  %4012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4007, %dx.types.Handle %93, float %3500, float %3501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4013 = extractvalue %dx.types.ResRet.f32 %4012, 0
  %4014 = extractvalue %dx.types.ResRet.f32 %4012, 1
  %4015 = extractvalue %dx.types.ResRet.f32 %4012, 2
  %4016 = fmul fast float %4013, %388
  %4017 = fmul fast float %4014, %391
  %4018 = fmul fast float %4015, %394
  br i1 %4011, label %4025, label %4019

; <label>:4019                                    ; preds = %4002
  %4020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4021 = extractvalue %dx.types.CBufRet.f32 %4020, 0
  %4022 = fmul fast float %4021, %4016
  %4023 = fmul fast float %4021, %4017
  %4024 = fmul fast float %4021, %4018
  br label %4025

; <label>:4025                                    ; preds = %4019, %4002
  %4026 = phi float [ %4022, %4019 ], [ %4016, %4002 ]
  %4027 = phi float [ %4023, %4019 ], [ %4017, %4002 ]
  %4028 = phi float [ %4024, %4019 ], [ %4018, %4002 ]
  %4029 = fmul fast float %4026, %3997
  %4030 = select i1 %245, float %4029, float %4026
  %4031 = call float @dx.op.dot3.f32(i32 55, float %4030, float %4027, float %4028, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4032 = select i1 %245, float 0.000000e+00, float %4026
  %4033 = select i1 %245, float %4031, float %4027
  %4034 = select i1 %245, float 0.000000e+00, float %4028
  br label %4035

; <label>:4035                                    ; preds = %4025, %3987
  %4036 = phi float [ %4032, %4025 ], [ 0.000000e+00, %3987 ]
  %4037 = phi float [ %4033, %4025 ], [ 0.000000e+00, %3987 ]
  %4038 = phi float [ %4034, %4025 ], [ 0.000000e+00, %3987 ]
  %4039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4040 = extractvalue %dx.types.ResRet.i32 %4039, 0
  %4041 = and i32 %4040, 1024
  %4042 = icmp eq i32 %4041, 0
  br i1 %4042, label %4073, label %4043

; <label>:4043                                    ; preds = %4035
  %4044 = add i32 %48, 200
  %4045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4044, i32 undef)  ; BufferLoad(srv,index,wot)
  %4046 = extractvalue %dx.types.ResRet.i32 %4045, 0
  %4047 = and i32 %4046, 255
  %4048 = uitofp i32 %4047 to float
  %4049 = fmul fast float %4048, 0x3F70101020000000
  %4050 = lshr i32 %4046, 8
  %4051 = and i32 %4050, 255
  %4052 = uitofp i32 %4051 to float
  %4053 = fmul fast float %4052, 0x3F70101020000000
  %4054 = lshr i32 %4046, 16
  %4055 = and i32 %4054, 255
  %4056 = uitofp i32 %4055 to float
  %4057 = fmul fast float %4056, 0x3F70101020000000
  %4058 = fmul fast float %4049, %4049
  %4059 = fmul fast float %4053, %4053
  %4060 = fmul fast float %4057, %4057
  %4061 = add i32 %48, 536
  %4062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4061, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.i32 %4062, 0
  %4064 = add i32 %4063, 0
  %4065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4066 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4065, %dx.types.Handle %94, float %3500, float %3501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4067 = extractvalue %dx.types.ResRet.f32 %4066, 0
  %4068 = extractvalue %dx.types.ResRet.f32 %4066, 1
  %4069 = extractvalue %dx.types.ResRet.f32 %4066, 2
  %4070 = fmul fast float %4058, %4067
  %4071 = fmul fast float %4059, %4068
  %4072 = fmul fast float %4060, %4069
  br label %4073

; <label>:4073                                    ; preds = %4043, %4035
  %4074 = phi float [ %4070, %4043 ], [ 0.000000e+00, %4035 ]
  %4075 = phi float [ %4071, %4043 ], [ 0.000000e+00, %4035 ]
  %4076 = phi float [ %4072, %4043 ], [ 0.000000e+00, %4035 ]
  %4077 = fcmp fast ogt float %4074, 0.000000e+00
  %4078 = fcmp fast ogt float %4075, 0.000000e+00
  %4079 = fcmp fast ogt float %4076, 0.000000e+00
  %4080 = call float @dx.op.unary.f32(i32 23, float %4074)  ; Log(value)
  %4081 = call float @dx.op.unary.f32(i32 23, float %4075)  ; Log(value)
  %4082 = call float @dx.op.unary.f32(i32 23, float %4076)  ; Log(value)
  %4083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3992, i32 undef)  ; BufferLoad(srv,index,wot)
  %4084 = extractvalue %dx.types.ResRet.i32 %4083, 0
  %4085 = lshr i32 %4084, 7
  %4086 = and i32 %4085, 32752
  %4087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4086)  ; LegacyF16ToF32(value)
  %4088 = fmul fast float %4080, 0xBFE62E4300000000
  %4089 = fmul fast float %4088, %4087
  %4090 = fmul fast float %4081, 0xBFE62E4300000000
  %4091 = fmul fast float %4090, %4087
  %4092 = fmul fast float %4082, 0xBFE62E4300000000
  %4093 = fmul fast float %4092, %4087
  %4094 = select i1 %4077, float %4089, float 1.270000e+02
  %4095 = select i1 %4078, float %4091, float 1.270000e+02
  %4096 = select i1 %4079, float %4093, float 1.270000e+02
  %4097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4098 = extractvalue %dx.types.ResRet.i32 %4097, 0
  %4099 = and i32 %4098, 10240
  %4100 = icmp eq i32 %4099, 0
  br i1 %4100, label %4145, label %4101

; <label>:4101                                    ; preds = %4073
  %4102 = add i32 %48, 552
  %4103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4102, i32 undef)  ; BufferLoad(srv,index,wot)
  %4104 = extractvalue %dx.types.ResRet.i32 %4103, 0
  %4105 = add i32 %4104, 0
  %4106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4107 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4106, %dx.types.Handle %94, float %3500, float %3501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4108 = extractvalue %dx.types.ResRet.f32 %4107, 1
  %4109 = extractvalue %dx.types.ResRet.f32 %4107, 3
  %4110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.i32 %4110, 0
  %4112 = and i32 %4111, 1048576
  %4113 = icmp ne i32 %4112, 0
  %4114 = and i32 %4111, 8192
  %4115 = icmp eq i32 %4114, 0
  br i1 %4115, label %4131, label %4116

; <label>:4116                                    ; preds = %4101
  %4117 = extractvalue %dx.types.ResRet.f32 %4107, 2
  %4118 = select i1 %4113, float %4117, float %4108
  %4119 = extractvalue %dx.types.ResRet.f32 %4107, 0
  %4120 = select i1 %4113, float %4119, float %4108
  %4121 = add i32 %48, 144
  %4122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4121, i32 undef)  ; BufferLoad(srv,index,wot)
  %4123 = extractvalue %dx.types.ResRet.i32 %4122, 0
  %4124 = lshr i32 %4123, 16
  %4125 = and i32 %4124, 255
  %4126 = uitofp i32 %4125 to float
  %4127 = fmul fast float %4126, 0x3F80101020000000
  %4128 = fmul fast float %4127, %4120
  %4129 = fmul fast float %4127, %4108
  %4130 = fmul fast float %4127, %4118
  br label %4131

; <label>:4131                                    ; preds = %4116, %4101
  %4132 = phi float [ %4128, %4116 ], [ 0.000000e+00, %4101 ]
  %4133 = phi float [ %4129, %4116 ], [ 0.000000e+00, %4101 ]
  %4134 = phi float [ %4130, %4116 ], [ 0.000000e+00, %4101 ]
  %4135 = and i32 %4111, 2048
  %4136 = icmp eq i32 %4135, 0
  br i1 %4136, label %4145, label %4137

; <label>:4137                                    ; preds = %4131
  %4138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3992, i32 undef)  ; BufferLoad(srv,index,wot)
  %4139 = extractvalue %dx.types.ResRet.i32 %4138, 0
  %4140 = shl i32 %4139, 4
  %4141 = and i32 %4140, 32752
  %4142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4141)  ; LegacyF16ToF32(value)
  %4143 = fmul fast float %4142, %4109
  %4144 = call float @dx.op.binary.f32(i32 35, float %4143, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4145

; <label>:4145                                    ; preds = %4137, %4131, %4073
  %4146 = phi float [ %4132, %4137 ], [ %4132, %4131 ], [ 0.000000e+00, %4073 ]
  %4147 = phi float [ %4133, %4137 ], [ %4133, %4131 ], [ 0.000000e+00, %4073 ]
  %4148 = phi float [ %4134, %4137 ], [ %4134, %4131 ], [ 0.000000e+00, %4073 ]
  %4149 = phi float [ %4144, %4137 ], [ 0x3F70101020000000, %4131 ], [ 0x3F70101020000000, %4073 ]
  %4150 = add i32 %48, 144
  %4151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4150, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.i32 %4151, 0
  %4153 = and i32 %4152, 255
  %4154 = uitofp i32 %4153 to float
  %4155 = lshr i32 %4152, 8
  %4156 = and i32 %4155, 255
  %4157 = uitofp i32 %4156 to float
  %4158 = call float @dx.op.dot3.f32(i32 55, float %3908, float %3909, float %3910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4159 = fmul fast float %4157, %4158
  %4160 = fadd fast float %4159, %4154
  %4161 = fmul fast float %4160, 0x3F70101020000000
  %4162 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  br i1 %3392, label %4163, label %4198

; <label>:4163                                    ; preds = %4145
  %4164 = fmul fast float %4149, 2.000000e+00
  %4165 = fcmp fast olt float %4094, 1.270000e+02
  %4166 = fcmp fast olt float %4095, 1.270000e+02
  %4167 = fcmp fast olt float %4096, 1.270000e+02
  %4168 = fmul fast float %4094, 0xBFF7154760000000
  %4169 = fmul fast float %4168, %4164
  %4170 = fmul fast float %4095, 0xBFF7154760000000
  %4171 = fmul fast float %4170, %4164
  %4172 = fmul fast float %4096, 0xBFF7154760000000
  %4173 = fmul fast float %4172, %4164
  %4174 = call float @dx.op.unary.f32(i32 21, float %4169)  ; Exp(value)
  %4175 = call float @dx.op.unary.f32(i32 21, float %4171)  ; Exp(value)
  %4176 = call float @dx.op.unary.f32(i32 21, float %4173)  ; Exp(value)
  %4177 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4178 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4179 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4180 = fadd fast float %4177, -1.000000e+00
  %4181 = select i1 %4165, float %4180, float -1.000000e+00
  %4182 = fadd fast float %4178, -1.000000e+00
  %4183 = select i1 %4166, float %4182, float -1.000000e+00
  %4184 = fadd fast float %4179, -1.000000e+00
  %4185 = select i1 %4167, float %4184, float -1.000000e+00
  %4186 = fmul fast float %4181, %3688
  %4187 = fmul fast float %4183, %3688
  %4188 = fmul fast float %4185, %3688
  %4189 = fadd fast float %4186, 1.000000e+00
  %4190 = fadd fast float %4187, 1.000000e+00
  %4191 = fadd fast float %4188, 1.000000e+00
  %4192 = fmul fast float %4189, %3374
  %4193 = fmul fast float %4190, %3375
  %4194 = fmul fast float %4191, %3376
  %4195 = fmul fast float %4189, %3377
  %4196 = fmul fast float %4190, %3378
  %4197 = fmul fast float %4191, %3379
  br label %4198

; <label>:4198                                    ; preds = %4163, %4145
  %4199 = phi float [ %4192, %4163 ], [ %3374, %4145 ]
  %4200 = phi float [ %4193, %4163 ], [ %3375, %4145 ]
  %4201 = phi float [ %4194, %4163 ], [ %3376, %4145 ]
  %4202 = phi float [ %4195, %4163 ], [ %3377, %4145 ]
  %4203 = phi float [ %4196, %4163 ], [ %3378, %4145 ]
  %4204 = phi float [ %4197, %4163 ], [ %3379, %4145 ]
  %4205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.i32 %4205, 0
  %4207 = and i32 %4206, 3
  %4208 = icmp eq i32 %4207, 3
  br i1 %4208, label %4287, label %4209

; <label>:4209                                    ; preds = %4198
  %4210 = and i32 %4206, 16
  %4211 = icmp ne i32 %4210, 0
  %4212 = select i1 %4211, float %3688, float 0.000000e+00
  %4213 = icmp eq i32 %4207, 0
  br i1 %4213, label %4214, label %4242

; <label>:4214                                    ; preds = %4209
  %4215 = and i32 %4206, 64
  %4216 = icmp ne i32 %4215, 0
  %4217 = select i1 %4216, float %3688, float 0.000000e+00
  %4218 = fsub fast float %3908, %4199
  %4219 = fsub fast float %3909, %4200
  %4220 = fsub fast float %3910, %4201
  %4221 = fmul fast float %4212, %4218
  %4222 = fmul fast float %4212, %4219
  %4223 = fmul fast float %4212, %4220
  %4224 = fadd fast float %4221, %4199
  %4225 = fadd fast float %4222, %4200
  %4226 = fadd fast float %4223, %4201
  %4227 = fsub fast float %3894, %3386
  %4228 = fmul fast float %4212, %4227
  %4229 = fadd fast float %4228, %3386
  %4230 = fsub fast float %4036, %4202
  %4231 = fsub fast float %4037, %4203
  %4232 = fsub fast float %4038, %4204
  %4233 = fmul fast float %4217, %4230
  %4234 = fmul fast float %4217, %4231
  %4235 = fmul fast float %4217, %4232
  %4236 = fadd fast float %4233, %4202
  %4237 = fadd fast float %4234, %4203
  %4238 = fadd fast float %4235, %4204
  %4239 = fsub fast float %4162, %3390
  %4240 = fmul fast float %4212, %4239
  %4241 = fadd fast float %4240, %3390
  br label %4287

; <label>:4242                                    ; preds = %4209
  %4243 = icmp eq i32 %4207, 1
  br i1 %4243, label %4244, label %4257

; <label>:4244                                    ; preds = %4242
  %4245 = fadd fast float %3908, -1.000000e+00
  %4246 = fadd fast float %3909, -1.000000e+00
  %4247 = fadd fast float %3910, -1.000000e+00
  %4248 = fmul fast float %4212, %4245
  %4249 = fmul fast float %4212, %4246
  %4250 = fmul fast float %4212, %4247
  %4251 = fadd fast float %4248, 1.000000e+00
  %4252 = fadd fast float %4249, 1.000000e+00
  %4253 = fadd fast float %4250, 1.000000e+00
  %4254 = fmul fast float %4251, %4199
  %4255 = fmul fast float %4252, %4200
  %4256 = fmul fast float %4253, %4201
  br label %4287

; <label>:4257                                    ; preds = %4242
  %4258 = icmp eq i32 %4207, 2
  br i1 %4258, label %4259, label %4287

; <label>:4259                                    ; preds = %4257
  %4260 = call float @dx.op.unary.f32(i32 24, float %3908)  ; Sqrt(value)
  %4261 = call float @dx.op.unary.f32(i32 24, float %3909)  ; Sqrt(value)
  %4262 = call float @dx.op.unary.f32(i32 24, float %3910)  ; Sqrt(value)
  %4263 = fadd fast float %4260, -5.000000e-01
  %4264 = fadd fast float %4261, -5.000000e-01
  %4265 = fadd fast float %4262, -5.000000e-01
  %4266 = fmul fast float %4263, %4212
  %4267 = fmul fast float %4264, %4212
  %4268 = fmul fast float %4265, %4212
  %4269 = fadd fast float %4266, 5.000000e-01
  %4270 = fadd fast float %4267, 5.000000e-01
  %4271 = fadd fast float %4268, 5.000000e-01
  %4272 = fmul fast float %4269, 2.000000e+00
  %4273 = fsub fast float 1.000000e+00, %4272
  %4274 = fmul fast float %4273, %4199
  %4275 = fadd fast float %4274, %4272
  %4276 = fmul fast float %4275, %4199
  %4277 = fmul fast float %4270, 2.000000e+00
  %4278 = fsub fast float 1.000000e+00, %4277
  %4279 = fmul fast float %4278, %4200
  %4280 = fadd fast float %4279, %4277
  %4281 = fmul fast float %4280, %4200
  %4282 = fmul fast float %4271, 2.000000e+00
  %4283 = fsub fast float 1.000000e+00, %4282
  %4284 = fmul fast float %4283, %4201
  %4285 = fadd fast float %4284, %4282
  %4286 = fmul fast float %4285, %4201
  br label %4287

; <label>:4287                                    ; preds = %4259, %4257, %4244, %4214, %4198
  %4288 = phi float [ %4199, %4198 ], [ %4276, %4259 ], [ %4199, %4257 ], [ %4254, %4244 ], [ %4224, %4214 ]
  %4289 = phi float [ %4200, %4198 ], [ %4281, %4259 ], [ %4200, %4257 ], [ %4255, %4244 ], [ %4225, %4214 ]
  %4290 = phi float [ %4201, %4198 ], [ %4286, %4259 ], [ %4201, %4257 ], [ %4256, %4244 ], [ %4226, %4214 ]
  %4291 = phi float [ %4202, %4198 ], [ %4202, %4259 ], [ %4202, %4257 ], [ %4202, %4244 ], [ %4236, %4214 ]
  %4292 = phi float [ %4203, %4198 ], [ %4203, %4259 ], [ %4203, %4257 ], [ %4203, %4244 ], [ %4237, %4214 ]
  %4293 = phi float [ %4204, %4198 ], [ %4204, %4259 ], [ %4204, %4257 ], [ %4204, %4244 ], [ %4238, %4214 ]
  %4294 = phi float [ %3386, %4198 ], [ %3386, %4259 ], [ %3386, %4257 ], [ %3386, %4244 ], [ %4229, %4214 ]
  %4295 = phi float [ %3390, %4198 ], [ %3390, %4259 ], [ %3390, %4257 ], [ %3390, %4244 ], [ %4241, %4214 ]
  %4296 = and i32 %4206, 12
  %4297 = icmp eq i32 %4296, 12
  br i1 %4297, label %4428, label %4298

; <label>:4298                                    ; preds = %4287
  %4299 = and i32 %4206, 2097184
  %4300 = icmp eq i32 %4299, 2097184
  %4301 = select i1 %4300, float %3688, float 0.000000e+00
  %4302 = and i32 %4206, 4194336
  %4303 = icmp eq i32 %4302, 4194336
  %4304 = select i1 %4303, float %3688, float 0.000000e+00
  %4305 = and i32 %4206, 8388640
  %4306 = icmp eq i32 %4305, 8388640
  %4307 = select i1 %4306, float %3688, float 0.000000e+00
  %4308 = and i32 %4206, 1024
  %4309 = icmp ne i32 %4308, 0
  %4310 = select i1 %4309, float %3688, float 0.000000e+00
  %4311 = and i32 %4206, 2048
  %4312 = icmp ne i32 %4311, 0
  %4313 = select i1 %4312, float %3688, float 0.000000e+00
  %4314 = and i32 %4206, 8192
  %4315 = icmp ne i32 %4314, 0
  %4316 = select i1 %4315, float %3688, float 0.000000e+00
  %4317 = icmp eq i32 %4296, 0
  br i1 %4317, label %4318, label %4352

; <label>:4318                                    ; preds = %4298
  %4319 = fsub fast float %3989, %3372
  %4320 = fsub fast float %3990, %3373
  %4321 = fmul fast float %4301, %4319
  %4322 = fmul fast float %4301, %4320
  %4323 = fadd fast float %4321, %3372
  %4324 = fadd fast float %4322, %3373
  %4325 = fsub fast float %3991, %3388
  %4326 = fmul fast float %4304, %4325
  %4327 = fadd fast float %4326, %3388
  %4328 = fsub fast float %3988, %3387
  %4329 = fmul fast float %4307, %4328
  %4330 = fadd fast float %4329, %3387
  %4331 = fsub fast float %4094, %3383
  %4332 = fsub fast float %4095, %3384
  %4333 = fsub fast float %4096, %3385
  %4334 = fmul fast float %4310, %4331
  %4335 = fmul fast float %4310, %4332
  %4336 = fmul fast float %4310, %4333
  %4337 = fadd fast float %4334, %3383
  %4338 = fadd fast float %4335, %3384
  %4339 = fadd fast float %4336, %3385
  %4340 = fsub fast float %4149, %3389
  %4341 = fmul fast float %4313, %4340
  %4342 = fadd fast float %4341, %3389
  %4343 = fsub fast float %4146, %3380
  %4344 = fsub fast float %4147, %3381
  %4345 = fsub fast float %4148, %3382
  %4346 = fmul fast float %4316, %4343
  %4347 = fmul fast float %4316, %4344
  %4348 = fmul fast float %4316, %4345
  %4349 = fadd fast float %4346, %3380
  %4350 = fadd fast float %4347, %3381
  %4351 = fadd fast float %4348, %3382
  br label %4428

; <label>:4352                                    ; preds = %4298
  %4353 = icmp eq i32 %4296, 4
  br i1 %4353, label %4354, label %4400

; <label>:4354                                    ; preds = %4352
  %4355 = fmul fast float %4301, %3989
  %4356 = fmul fast float %4301, %3990
  %4357 = fadd fast float %4355, %3372
  %4358 = fadd fast float %4356, %3373
  %4359 = call float @dx.op.binary.f32(i32 36, float %3388, float %3991)  ; FMin(a,b)
  %4360 = fsub fast float %4359, %3388
  %4361 = fmul fast float %4360, %4304
  %4362 = fadd fast float %4361, %3388
  %4363 = fadd fast float %3988, %3387
  %4364 = fmul fast float %4363, 0x3FF337FAE0000000
  %4365 = fmul fast float %3387, %3387
  %4366 = fmul fast float %3988, %3988
  %4367 = fadd fast float %4366, %4365
  %4368 = fmul fast float %4367, 0x3FE5152B00000000
  %4369 = fmul fast float %3387, 0xBFCC1F85E0000000
  %4370 = fmul fast float %4369, %3988
  %4371 = fadd fast float %4370, 0xBFE1363700000000
  %4372 = fadd fast float %4371, %4364
  %4373 = fsub fast float %4372, %4368
  %4374 = fmul fast float %4363, 0x3FBA6F0D00000000
  %4375 = fmul fast float %4367, 0x3FD0432880000000
  %4376 = fmul fast float %3387, 0xBFEF110800000000
  %4377 = fmul fast float %4376, %3988
  %4378 = fadd fast float %4377, 1.000000e+00
  %4379 = fsub fast float %4378, %4374
  %4380 = fadd fast float %4379, %4375
  %4381 = fdiv fast float %4373, %4380
  %4382 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4383 = fsub fast float %4382, %3387
  %4384 = fmul fast float %4383, %4307
  %4385 = fadd fast float %4384, %3387
  %4386 = fmul fast float %4310, %4094
  %4387 = fmul fast float %4310, %4095
  %4388 = fmul fast float %4310, %4096
  %4389 = fadd fast float %4386, %3383
  %4390 = fadd fast float %4387, %3384
  %4391 = fadd fast float %4388, %3385
  %4392 = fmul fast float %4313, %4149
  %4393 = fadd fast float %4392, %3389
  %4394 = fmul fast float %4316, %4146
  %4395 = fmul fast float %4316, %4147
  %4396 = fmul fast float %4316, %4148
  %4397 = fadd fast float %4394, %3380
  %4398 = fadd fast float %4395, %3381
  %4399 = fadd fast float %4396, %3382
  br label %4428

; <label>:4400                                    ; preds = %4352
  %4401 = icmp eq i32 %4296, 8
  br i1 %4401, label %4402, label %4428

; <label>:4402                                    ; preds = %4400
  %4403 = fmul fast float %4301, %3989
  %4404 = fmul fast float %4301, %3990
  %4405 = fadd fast float %4403, %3372
  %4406 = fadd fast float %4404, %3373
  %4407 = call float @dx.op.binary.f32(i32 36, float %3388, float %3991)  ; FMin(a,b)
  %4408 = fsub fast float %4407, %3388
  %4409 = fmul fast float %4408, %4304
  %4410 = fadd fast float %4409, %3388
  %4411 = fsub fast float %3988, %3387
  %4412 = fmul fast float %4307, %4411
  %4413 = fadd fast float %4412, %3387
  %4414 = fmul fast float %4310, %4094
  %4415 = fmul fast float %4310, %4095
  %4416 = fmul fast float %4310, %4096
  %4417 = fadd fast float %4414, %3383
  %4418 = fadd fast float %4415, %3384
  %4419 = fadd fast float %4416, %3385
  %4420 = fmul fast float %4313, %4149
  %4421 = fadd fast float %4420, %3389
  %4422 = fmul fast float %4316, %4146
  %4423 = fmul fast float %4316, %4147
  %4424 = fmul fast float %4316, %4148
  %4425 = fadd fast float %4422, %3380
  %4426 = fadd fast float %4423, %3381
  %4427 = fadd fast float %4424, %3382
  br label %4428

; <label>:4428                                    ; preds = %4402, %4400, %4354, %4318, %4287, %3687, %3391, %3371
  %4429 = phi float [ %3372, %4287 ], [ %3372, %3687 ], [ %3372, %3371 ], [ %3372, %3391 ], [ %4323, %4318 ], [ %4357, %4354 ], [ %3372, %4400 ], [ %4405, %4402 ]
  %4430 = phi float [ %3373, %4287 ], [ %3373, %3687 ], [ %3373, %3371 ], [ %3373, %3391 ], [ %4324, %4318 ], [ %4358, %4354 ], [ %3373, %4400 ], [ %4406, %4402 ]
  %4431 = phi float [ %4288, %4287 ], [ %3374, %3687 ], [ %3374, %3371 ], [ %3374, %3391 ], [ %4288, %4318 ], [ %4288, %4354 ], [ %4288, %4400 ], [ %4288, %4402 ]
  %4432 = phi float [ %4289, %4287 ], [ %3375, %3687 ], [ %3375, %3371 ], [ %3375, %3391 ], [ %4289, %4318 ], [ %4289, %4354 ], [ %4289, %4400 ], [ %4289, %4402 ]
  %4433 = phi float [ %4290, %4287 ], [ %3376, %3687 ], [ %3376, %3371 ], [ %3376, %3391 ], [ %4290, %4318 ], [ %4290, %4354 ], [ %4290, %4400 ], [ %4290, %4402 ]
  %4434 = phi float [ %4291, %4287 ], [ %3377, %3687 ], [ %3377, %3371 ], [ %3377, %3391 ], [ %4291, %4318 ], [ %4291, %4354 ], [ %4291, %4400 ], [ %4291, %4402 ]
  %4435 = phi float [ %4292, %4287 ], [ %3378, %3687 ], [ %3378, %3371 ], [ %3378, %3391 ], [ %4292, %4318 ], [ %4292, %4354 ], [ %4292, %4400 ], [ %4292, %4402 ]
  %4436 = phi float [ %4293, %4287 ], [ %3379, %3687 ], [ %3379, %3371 ], [ %3379, %3391 ], [ %4293, %4318 ], [ %4293, %4354 ], [ %4293, %4400 ], [ %4293, %4402 ]
  %4437 = phi float [ %3380, %4287 ], [ %3380, %3687 ], [ %3380, %3371 ], [ %3380, %3391 ], [ %4349, %4318 ], [ %4397, %4354 ], [ %3380, %4400 ], [ %4425, %4402 ]
  %4438 = phi float [ %3381, %4287 ], [ %3381, %3687 ], [ %3381, %3371 ], [ %3381, %3391 ], [ %4350, %4318 ], [ %4398, %4354 ], [ %3381, %4400 ], [ %4426, %4402 ]
  %4439 = phi float [ %3382, %4287 ], [ %3382, %3687 ], [ %3382, %3371 ], [ %3382, %3391 ], [ %4351, %4318 ], [ %4399, %4354 ], [ %3382, %4400 ], [ %4427, %4402 ]
  %4440 = phi float [ %3383, %4287 ], [ %3383, %3687 ], [ %3383, %3371 ], [ %3383, %3391 ], [ %4337, %4318 ], [ %4389, %4354 ], [ %3383, %4400 ], [ %4417, %4402 ]
  %4441 = phi float [ %3384, %4287 ], [ %3384, %3687 ], [ %3384, %3371 ], [ %3384, %3391 ], [ %4338, %4318 ], [ %4390, %4354 ], [ %3384, %4400 ], [ %4418, %4402 ]
  %4442 = phi float [ %3385, %4287 ], [ %3385, %3687 ], [ %3385, %3371 ], [ %3385, %3391 ], [ %4339, %4318 ], [ %4391, %4354 ], [ %3385, %4400 ], [ %4419, %4402 ]
  %4443 = phi float [ %4294, %4287 ], [ %3386, %3687 ], [ %3386, %3371 ], [ %3386, %3391 ], [ %4294, %4318 ], [ %4294, %4354 ], [ %4294, %4400 ], [ %4294, %4402 ]
  %4444 = phi float [ %3387, %4287 ], [ %3387, %3687 ], [ %3387, %3371 ], [ %3387, %3391 ], [ %4330, %4318 ], [ %4385, %4354 ], [ %3387, %4400 ], [ %4413, %4402 ]
  %4445 = phi float [ %3388, %4287 ], [ %3388, %3687 ], [ %3388, %3371 ], [ %3388, %3391 ], [ %4327, %4318 ], [ %4362, %4354 ], [ %3388, %4400 ], [ %4410, %4402 ]
  %4446 = phi float [ %3389, %4287 ], [ %3389, %3687 ], [ %3389, %3371 ], [ %3389, %3391 ], [ %4342, %4318 ], [ %4393, %4354 ], [ %3389, %4400 ], [ %4421, %4402 ]
  %4447 = phi float [ %4295, %4287 ], [ %3390, %3687 ], [ %3390, %3371 ], [ %3390, %3391 ], [ %4295, %4318 ], [ %4295, %4354 ], [ %4295, %4400 ], [ %4295, %4402 ]
  %4448 = add i32 %48, 408
  %4449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4448, i32 undef)  ; BufferLoad(srv,index,wot)
  %4450 = extractvalue %dx.types.ResRet.i32 %4449, 0
  %4451 = extractvalue %dx.types.ResRet.i32 %4449, 1
  %4452 = bitcast i32 %4450 to float
  %4453 = bitcast i32 %4451 to float
  %4454 = fcmp fast oge float %4452, 0.000000e+00
  %4455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.f32 %4455, 0
  %4457 = select i1 %4454, float %4452, float %4456
  %4458 = add i32 %48, 504
  %4459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4458, i32 undef)  ; BufferLoad(srv,index,wot)
  %4460 = extractvalue %dx.types.ResRet.i32 %4459, 0
  %4461 = add i32 %4460, 0
  %4462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4462, %dx.types.Handle %94, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4464 = extractvalue %dx.types.ResRet.f32 %4463, 0
  %4465 = fmul fast float %4464, %4453
  %4466 = fadd fast float %4465, %4457
  %4467 = call float @dx.op.dot2.f32(i32 54, float %4429, float %4430, float %4429, float %4430)  ; Dot2(ax,ay,bx,by)
  %4468 = fmul fast float %4467, 0x3FE3333340000000
  %4469 = fsub fast float 1.000000e+00, %4468
  %4470 = call float @dx.op.dot3.f32(i32 55, float %4429, float %4430, float %4469, float %4429, float %4430, float %4469)  ; Dot3(ax,ay,az,bx,by,bz)
  %4471 = call float @dx.op.unary.f32(i32 25, float %4470)  ; Rsqrt(value)
  %4472 = fmul fast float %4471, %4429
  %4473 = fmul fast float %4471, %4430
  %4474 = fmul fast float %4469, %4471
  %4475 = fmul fast float %4474, %104
  %4476 = fmul fast float %4474, %105
  %4477 = fmul fast float %4474, %106
  %4478 = fmul fast float %4472, %69
  %4479 = fmul fast float %4472, %70
  %4480 = fmul fast float %4472, %71
  %4481 = fadd fast float %4475, %4478
  %4482 = fadd fast float %4476, %4479
  %4483 = fadd fast float %4477, %4480
  %4484 = fmul fast float %116, %4473
  %4485 = fmul fast float %117, %4473
  %4486 = fmul fast float %118, %4473
  %4487 = fadd fast float %4481, %4484
  %4488 = fadd fast float %4482, %4485
  %4489 = fadd fast float %4483, %4486
  %4490 = call float @dx.op.dot3.f32(i32 55, float %4487, float %4488, float %4489, float %4487, float %4488, float %4489)  ; Dot3(ax,ay,az,bx,by,bz)
  %4491 = call float @dx.op.unary.f32(i32 25, float %4490)  ; Rsqrt(value)
  %4492 = fmul fast float %4487, %4491
  %4493 = fmul fast float %4488, %4491
  %4494 = fmul fast float %4489, %4491
  %4495 = and i32 %50, 1
  %4496 = icmp eq i32 %4495, 0
  br i1 %4496, label %4497, label %5089

; <label>:4497                                    ; preds = %4428
  %4498 = call float @dx.op.unary.f32(i32 83, float %152)  ; DerivCoarseX(value)
  %4499 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %4500 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4501 = call float @dx.op.unary.f32(i32 84, float %152)  ; DerivCoarseY(value)
  %4502 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %4503 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4504 = fadd fast float %4498, %152
  %4505 = fadd fast float %4499, %153
  %4506 = fadd fast float %4500, %154
  %4507 = fadd fast float %4501, %152
  %4508 = fadd fast float %4502, %153
  %4509 = fadd fast float %4503, %154
  %4510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.f32 %4510, 0
  %4512 = extractvalue %dx.types.CBufRet.f32 %4510, 1
  %4513 = extractvalue %dx.types.CBufRet.f32 %4510, 2
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 2
  %4516 = extractvalue %dx.types.CBufRet.f32 %4514, 3
  %4517 = fmul fast float %4511, %97
  %4518 = fmul fast float %4517, %4515
  %4519 = fmul fast float %4512, %98
  %4520 = fmul fast float %4519, %4516
  %4521 = fptoui float %4518 to i32
  %4522 = fptoui float %4520 to i32
  %4523 = fadd fast float %4511, -1.000000e+00
  %4524 = fadd fast float %4512, -1.000000e+00
  %4525 = fptoui float %4523 to i32
  %4526 = fptoui float %4524 to i32
  %4527 = call i32 @dx.op.binary.i32(i32 40, i32 %4521, i32 %4525)  ; UMin(a,b)
  %4528 = call i32 @dx.op.binary.i32(i32 40, i32 %4522, i32 %4526)  ; UMin(a,b)
  %4529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4530 = extractvalue %dx.types.CBufRet.f32 %4529, 2
  %4531 = extractvalue %dx.types.CBufRet.f32 %4529, 3
  %4532 = fmul fast float %4530, %85
  %4533 = fsub fast float %4532, %4531
  %4534 = fadd fast float %4513, -1.000000e+00
  %4535 = call float @dx.op.binary.f32(i32 36, float %4533, float %4534)  ; FMin(a,b)
  %4536 = fptoui float %4535 to i32
  %4537 = fptoui float %4511 to i32
  %4538 = fptoui float %4512 to i32
  %4539 = mul i32 %4536, %4538
  %4540 = add i32 %4539, %4528
  %4541 = mul i32 %4540, %4537
  %4542 = add i32 %4541, %4527
  %4543 = shl i32 %4542, 2
  %4544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4543, i32 undef)  ; BufferLoad(srv,index,wot)
  %4545 = extractvalue %dx.types.ResRet.i32 %4544, 0
  %4546 = and i32 %4545, 1023
  %4547 = lshr i32 %4545, 10
  %4548 = icmp eq i32 %4546, 0
  br i1 %4548, label %5052, label %4549

; <label>:4549                                    ; preds = %4497
  %4550 = and i32 %4545, 1023
  br label %4551

; <label>:4551                                    ; preds = %4683, %4549
  %4552 = phi i32 [ %4633, %4683 ], [ 0, %4549 ]
  %4553 = phi float [ %4684, %4683 ], [ 0.000000e+00, %4549 ]
  %4554 = phi float [ %4685, %4683 ], [ %4466, %4549 ]
  %4555 = phi float [ %4686, %4683 ], [ %4447, %4549 ]
  %4556 = phi float [ %4687, %4683 ], [ %4440, %4549 ]
  %4557 = phi float [ %4688, %4683 ], [ %4441, %4549 ]
  %4558 = phi float [ %4689, %4683 ], [ %4442, %4549 ]
  %4559 = phi float [ %4690, %4683 ], [ 0.000000e+00, %4549 ]
  %4560 = phi float [ %4691, %4683 ], [ 0.000000e+00, %4549 ]
  %4561 = phi float [ %4692, %4683 ], [ %4437, %4549 ]
  %4562 = phi float [ %4693, %4683 ], [ %4438, %4549 ]
  %4563 = phi float [ %4694, %4683 ], [ %4439, %4549 ]
  %4564 = phi float [ %4695, %4683 ], [ %4434, %4549 ]
  %4565 = phi float [ %4696, %4683 ], [ %4435, %4549 ]
  %4566 = phi float [ %4697, %4683 ], [ %4436, %4549 ]
  %4567 = phi float [ %4698, %4683 ], [ %4492, %4549 ]
  %4568 = phi float [ %4699, %4683 ], [ %4493, %4549 ]
  %4569 = phi float [ %4700, %4683 ], [ %4494, %4549 ]
  %4570 = phi float [ %4701, %4683 ], [ %4445, %4549 ]
  %4571 = phi float [ %4702, %4683 ], [ %4444, %4549 ]
  %4572 = phi float [ %4703, %4683 ], [ 0.000000e+00, %4549 ]
  %4573 = phi float [ %4704, %4683 ], [ %4443, %4549 ]
  %4574 = phi float [ %4705, %4683 ], [ %4431, %4549 ]
  %4575 = phi float [ %4706, %4683 ], [ %4432, %4549 ]
  %4576 = phi float [ %4707, %4683 ], [ %4433, %4549 ]
  %4577 = add nuw nsw i32 %4552, %4547
  %4578 = shl i32 %4577, 2
  %4579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4580 = extractvalue %dx.types.ResRet.i32 %4579, 0
  %4581 = shl i32 %4580, 8
  %4582 = or i32 %4581, 48
  %4583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4582, i32 undef)  ; BufferLoad(srv,index,wot)
  %4584 = extractvalue %dx.types.ResRet.f32 %4583, 0
  %4585 = extractvalue %dx.types.ResRet.f32 %4583, 1
  %4586 = extractvalue %dx.types.ResRet.f32 %4583, 2
  %4587 = extractvalue %dx.types.ResRet.f32 %4583, 3
  %4588 = or i32 %4581, 64
  %4589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4588, i32 undef)  ; BufferLoad(srv,index,wot)
  %4590 = extractvalue %dx.types.ResRet.i32 %4589, 0
  %4591 = extractvalue %dx.types.ResRet.i32 %4589, 1
  %4592 = or i32 %4581, 80
  %4593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4592, i32 undef)  ; BufferLoad(srv,index,wot)
  %4594 = extractvalue %dx.types.ResRet.f32 %4593, 2
  %4595 = extractvalue %dx.types.ResRet.f32 %4593, 3
  %4596 = or i32 %4581, 96
  %4597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4596, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = extractvalue %dx.types.ResRet.f32 %4597, 1
  %4600 = extractvalue %dx.types.ResRet.f32 %4597, 2
  %4601 = extractvalue %dx.types.ResRet.f32 %4597, 3
  %4602 = or i32 %4581, 112
  %4603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4602, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.f32 %4603, 2
  %4605 = or i32 %4581, 128
  %4606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = extractvalue %dx.types.ResRet.f32 %4606, 3
  %4611 = or i32 %4581, 144
  %4612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4611, i32 undef)  ; BufferLoad(srv,index,wot)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.ResRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.ResRet.f32 %4612, 2
  %4616 = extractvalue %dx.types.ResRet.f32 %4612, 3
  %4617 = or i32 %4581, 160
  %4618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4617, i32 undef)  ; BufferLoad(srv,index,wot)
  %4619 = extractvalue %dx.types.ResRet.f32 %4618, 0
  %4620 = extractvalue %dx.types.ResRet.f32 %4618, 1
  %4621 = extractvalue %dx.types.ResRet.f32 %4618, 2
  %4622 = extractvalue %dx.types.ResRet.f32 %4618, 3
  %4623 = or i32 %4581, 192
  %4624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4623, i32 undef)  ; BufferLoad(srv,index,wot)
  %4625 = extractvalue %dx.types.ResRet.i32 %4624, 0
  %4626 = or i32 %4581, 208
  %4627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4626, i32 undef)  ; BufferLoad(srv,index,wot)
  %4628 = extractvalue %dx.types.ResRet.f32 %4627, 0
  %4629 = or i32 %4581, 248
  %4630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4629, i32 undef)  ; BufferLoad(srv,index,wot)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = extractvalue %dx.types.ResRet.f32 %4630, 1
  %4633 = add nuw nsw i32 %4552, 1
  %4634 = bitcast float %4587 to i32
  %4635 = and i32 %4634, 512
  %4636 = icmp eq i32 %4635, 0
  %4637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4638 = extractvalue %dx.types.ResRet.f32 %4637, 0
  %4639 = extractvalue %dx.types.ResRet.f32 %4637, 1
  %4640 = extractvalue %dx.types.ResRet.f32 %4637, 2
  %4641 = extractvalue %dx.types.ResRet.f32 %4637, 3
  %4642 = call float @dx.op.dot4.f32(i32 56, float %4638, float %4639, float %4640, float %4641, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4643 = or i32 %4581, 16
  %4644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4643, i32 undef)  ; BufferLoad(srv,index,wot)
  %4645 = extractvalue %dx.types.ResRet.f32 %4644, 0
  %4646 = extractvalue %dx.types.ResRet.f32 %4644, 1
  %4647 = extractvalue %dx.types.ResRet.f32 %4644, 2
  %4648 = extractvalue %dx.types.ResRet.f32 %4644, 3
  %4649 = call float @dx.op.dot4.f32(i32 56, float %4645, float %4646, float %4647, float %4648, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4650 = or i32 %4581, 32
  %4651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4650, i32 undef)  ; BufferLoad(srv,index,wot)
  %4652 = extractvalue %dx.types.ResRet.f32 %4651, 0
  %4653 = extractvalue %dx.types.ResRet.f32 %4651, 1
  %4654 = extractvalue %dx.types.ResRet.f32 %4651, 2
  %4655 = extractvalue %dx.types.ResRet.f32 %4651, 3
  %4656 = call float @dx.op.dot4.f32(i32 56, float %4652, float %4653, float %4654, float %4655, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4657 = call float @dx.op.unary.f32(i32 27, float %4642)  ; Round_ni(value)
  %4658 = call float @dx.op.unary.f32(i32 6, float %4657)  ; FAbs(value)
  %4659 = call float @dx.op.unary.f32(i32 27, float %4649)  ; Round_ni(value)
  %4660 = call float @dx.op.unary.f32(i32 6, float %4659)  ; FAbs(value)
  %4661 = call float @dx.op.unary.f32(i32 6, float %4656)  ; FAbs(value)
  %4662 = call float @dx.op.unary.f32(i32 27, float %4661)  ; Round_ni(value)
  %4663 = fadd fast float %4660, %4658
  %4664 = fadd fast float %4663, %4662
  %4665 = fcmp fast oeq float %4664, 0.000000e+00
  %4666 = call float @dx.op.dot4.f32(i32 56, float %4638, float %4639, float %4640, float %4641, float %4504, float %4505, float %4506, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4667 = call float @dx.op.dot4.f32(i32 56, float %4645, float %4646, float %4647, float %4648, float %4504, float %4505, float %4506, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4668 = call float @dx.op.dot4.f32(i32 56, float %4638, float %4639, float %4640, float %4641, float %4507, float %4508, float %4509, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4669 = call float @dx.op.dot4.f32(i32 56, float %4645, float %4646, float %4647, float %4648, float %4507, float %4508, float %4509, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4670 = fsub fast float %4666, %4642
  %4671 = fsub fast float %4668, %4642
  %4672 = fsub fast float %4667, %4649
  %4673 = fsub fast float %4669, %4649
  %4674 = call float @dx.op.dot3.f32(i32 55, float %4584, float %4585, float %4586, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.f32 %4675, 2
  %4677 = fadd fast float %4676, %4674
  %4678 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4679 = extractvalue %dx.types.CBufRet.f32 %4675, 0
  %4680 = fcmp fast ogt float %4678, %4679
  %4681 = and i1 %4665, %4680
  %4682 = and i1 %4636, %4681
  br i1 %4682, label %4709, label %4683

; <label>:4683                                    ; preds = %5038, %4790, %4709, %4551
  %4684 = phi float [ %4553, %4709 ], [ %4793, %4790 ], [ %4793, %5038 ], [ %4553, %4551 ]
  %4685 = phi float [ %4554, %4709 ], [ %4554, %4790 ], [ %5014, %5038 ], [ %4554, %4551 ]
  %4686 = phi float [ %4555, %4709 ], [ %4555, %4790 ], [ %5012, %5038 ], [ %4555, %4551 ]
  %4687 = phi float [ %4556, %4709 ], [ %4556, %4790 ], [ %4990, %5038 ], [ %4556, %4551 ]
  %4688 = phi float [ %4557, %4709 ], [ %4557, %4790 ], [ %4991, %5038 ], [ %4557, %4551 ]
  %4689 = phi float [ %4558, %4709 ], [ %4558, %4790 ], [ %4992, %5038 ], [ %4558, %4551 ]
  %4690 = phi float [ %4559, %4709 ], [ %4559, %4790 ], [ %4917, %5038 ], [ %4559, %4551 ]
  %4691 = phi float [ %4560, %4709 ], [ %4560, %4790 ], [ %4915, %5038 ], [ %4560, %4551 ]
  %4692 = phi float [ %4561, %4709 ], [ %4561, %4790 ], [ %4960, %5038 ], [ %4561, %4551 ]
  %4693 = phi float [ %4562, %4709 ], [ %4562, %4790 ], [ %4961, %5038 ], [ %4562, %4551 ]
  %4694 = phi float [ %4563, %4709 ], [ %4563, %4790 ], [ %4962, %5038 ], [ %4563, %4551 ]
  %4695 = phi float [ %4564, %4709 ], [ %4564, %4790 ], [ %5048, %5038 ], [ %4564, %4551 ]
  %4696 = phi float [ %4565, %4709 ], [ %4565, %4790 ], [ %5049, %5038 ], [ %4565, %4551 ]
  %4697 = phi float [ %4566, %4709 ], [ %4566, %4790 ], [ %5050, %5038 ], [ %4566, %4551 ]
  %4698 = phi float [ %4567, %4709 ], [ %4567, %4790 ], [ %4896, %5038 ], [ %4567, %4551 ]
  %4699 = phi float [ %4568, %4709 ], [ %4568, %4790 ], [ %4897, %5038 ], [ %4568, %4551 ]
  %4700 = phi float [ %4569, %4709 ], [ %4569, %4790 ], [ %4898, %5038 ], [ %4569, %4551 ]
  %4701 = phi float [ %4570, %4709 ], [ %4570, %4790 ], [ %4970, %5038 ], [ %4570, %4551 ]
  %4702 = phi float [ %4571, %4709 ], [ %4571, %4790 ], [ %4967, %5038 ], [ %4571, %4551 ]
  %4703 = phi float [ %4572, %4709 ], [ %4572, %4790 ], [ %4964, %5038 ], [ %4572, %4551 ]
  %4704 = phi float [ %4573, %4709 ], [ %4573, %4790 ], [ %4913, %5038 ], [ %4573, %4551 ]
  %4705 = phi float [ %4574, %4709 ], [ %4574, %4790 ], [ %4908, %5038 ], [ %4574, %4551 ]
  %4706 = phi float [ %4575, %4709 ], [ %4575, %4790 ], [ %4909, %5038 ], [ %4575, %4551 ]
  %4707 = phi float [ %4576, %4709 ], [ %4576, %4790 ], [ %4910, %5038 ], [ %4576, %4551 ]
  %4708 = icmp eq i32 %4633, %4550
  br i1 %4708, label %5051, label %4551

; <label>:4709                                    ; preds = %4551
  %4710 = extractvalue %dx.types.ResRet.f32 %4603, 3
  %4711 = extractvalue %dx.types.ResRet.f32 %4603, 1
  %4712 = extractvalue %dx.types.ResRet.f32 %4603, 0
  %4713 = extractvalue %dx.types.ResRet.f32 %4593, 1
  %4714 = extractvalue %dx.types.ResRet.f32 %4593, 0
  %4715 = extractvalue %dx.types.ResRet.i32 %4589, 3
  %4716 = extractvalue %dx.types.ResRet.i32 %4589, 2
  %4717 = add i32 %4715, 0
  %4718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4717, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4720 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4718, %dx.types.Handle %4719, float %4642, float %4649, float undef, float undef, i32 0, i32 0, i32 undef, float %4670, float %4672, float undef, float %4671, float %4673, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4721 = extractvalue %dx.types.ResRet.f32 %4720, 0
  %4722 = fmul fast float %4721, %4714
  %4723 = fadd fast float %4722, %4713
  %4724 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4725 = fmul fast float %4642, %4598
  %4726 = call float @dx.op.tertiary.f32(i32 46, float %4599, float %4649, float %4725)  ; FMad(a,b,c)
  %4727 = fadd fast float %4726, %4712
  %4728 = fmul fast float %4642, %4600
  %4729 = call float @dx.op.tertiary.f32(i32 46, float %4601, float %4649, float %4728)  ; FMad(a,b,c)
  %4730 = fadd fast float %4729, %4711
  %4731 = fmul fast float %4670, %4598
  %4732 = call float @dx.op.tertiary.f32(i32 46, float %4599, float %4672, float %4731)  ; FMad(a,b,c)
  %4733 = fmul fast float %4670, %4600
  %4734 = call float @dx.op.tertiary.f32(i32 46, float %4601, float %4672, float %4733)  ; FMad(a,b,c)
  %4735 = fmul fast float %4671, %4598
  %4736 = call float @dx.op.tertiary.f32(i32 46, float %4599, float %4673, float %4735)  ; FMad(a,b,c)
  %4737 = fmul fast float %4671, %4600
  %4738 = call float @dx.op.tertiary.f32(i32 46, float %4601, float %4673, float %4737)  ; FMad(a,b,c)
  %4739 = add i32 %4716, 0
  %4740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4739, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4741 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4740, %dx.types.Handle %4719, float %4727, float %4730, float undef, float undef, i32 0, i32 0, i32 undef, float %4732, float %4734, float undef, float %4736, float %4738, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4742 = extractvalue %dx.types.ResRet.f32 %4741, 0
  %4743 = and i32 %4634, 1024
  %4744 = icmp ne i32 %4743, 0
  %4745 = fcmp fast ogt float %4742, 0x3FE0101020000000
  %4746 = uitofp i1 %4745 to float
  %4747 = select i1 %4744, float %4746, float %4742
  %4748 = and i32 %4634, 8192
  %4749 = icmp ne i32 %4748, 0
  %4750 = select i1 %4749, float %4710, float 1.000000e+00
  %4751 = fmul fast float %4642, 2.000000e+00
  %4752 = fadd fast float %4751, -1.000000e+00
  %4753 = call float @dx.op.unary.f32(i32 6, float %4752)  ; FAbs(value)
  %4754 = fmul fast float %4753, %4631
  %4755 = fsub fast float %4754, %4631
  %4756 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4757 = fmul fast float %4649, 2.000000e+00
  %4758 = fadd fast float %4757, -1.000000e+00
  %4759 = call float @dx.op.unary.f32(i32 6, float %4758)  ; FAbs(value)
  %4760 = fmul fast float %4759, %4632
  %4761 = fsub fast float %4760, %4632
  %4762 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4763 = fmul fast float %4661, %4594
  %4764 = fsub fast float %4763, %4594
  %4765 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4766 = fmul fast float %4724, %4750
  %4767 = fmul fast float %4766, %4721
  %4768 = fmul fast float %4767, %4756
  %4769 = fmul fast float %4768, %4747
  %4770 = fmul fast float %4769, %4762
  %4771 = fmul fast float %4770, %4765
  %4772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4773 = extractvalue %dx.types.CBufRet.f32 %4772, 1
  %4774 = extractvalue %dx.types.CBufRet.f32 %4772, 0
  %4775 = fsub fast float %4678, %4774
  %4776 = fmul fast float %4775, %4773
  %4777 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4778 = fmul fast float %4771, %4595
  %4779 = fadd fast float %4771, %4595
  %4780 = fmul fast float %4779, %4604
  %4781 = fsub fast float %4780, %4604
  %4782 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4783 = and i32 %4634, 128
  %4784 = icmp ne i32 %4783, 0
  %4785 = select i1 %4784, float %4782, float %4778
  %4786 = fmul fast float %4785, %4777
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.f32 %4787, 0
  %4789 = fcmp fast ugt float %4786, %4788
  br i1 %4789, label %4790, label %4683

; <label>:4790                                    ; preds = %4709
  %4791 = select i1 %4749, float %4786, float 0.000000e+00
  %4792 = fadd fast float %4791, %4553
  %4793 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  br i1 %4749, label %4683, label %4794

; <label>:4794                                    ; preds = %4790
  %4795 = and i32 %4634, 4
  %4796 = and i32 %4634, 8
  %4797 = add i32 %4590, 0
  %4798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4797, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4800 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4798, %dx.types.Handle %4799, float %4727, float %4730, float undef, float undef, i32 0, i32 0, i32 undef, float %4732, float %4734, float undef, float %4736, float %4738, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4801 = extractvalue %dx.types.ResRet.f32 %4800, 0
  %4802 = extractvalue %dx.types.ResRet.f32 %4800, 1
  %4803 = extractvalue %dx.types.ResRet.f32 %4800, 2
  %4804 = extractvalue %dx.types.ResRet.f32 %4800, 3
  %4805 = bitcast float %4616 to i32
  %4806 = and i32 %4805, 255
  %4807 = uitofp i32 %4806 to float
  %4808 = lshr i32 %4805, 8
  %4809 = and i32 %4808, 255
  %4810 = uitofp i32 %4809 to float
  %4811 = fmul fast float %4804, %4807
  %4812 = fadd fast float %4811, %4810
  %4813 = fmul fast float %4812, 0x3F70101000000000
  %4814 = add i32 %4591, 0
  %4815 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4814, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4816 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4815, %dx.types.Handle %4799, float %4727, float %4730, float undef, float undef, i32 0, i32 0, i32 undef, float %4732, float %4734, float undef, float %4736, float %4738, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4817 = extractvalue %dx.types.ResRet.f32 %4816, 0
  %4818 = extractvalue %dx.types.ResRet.f32 %4816, 1
  %4819 = extractvalue %dx.types.ResRet.f32 %4816, 2
  %4820 = extractvalue %dx.types.ResRet.f32 %4816, 3
  %4821 = bitcast float %4610 to i32
  %4822 = and i32 %4821, 255
  %4823 = uitofp i32 %4822 to float
  %4824 = lshr i32 %4821, 8
  %4825 = and i32 %4824, 255
  %4826 = uitofp i32 %4825 to float
  %4827 = lshr i32 %4821, 16
  %4828 = and i32 %4827, 255
  %4829 = uitofp i32 %4828 to float
  %4830 = fmul fast float %4829, 0x3F70101000000000
  %4831 = fmul fast float %4817, %4823
  %4832 = fadd fast float %4831, %4826
  %4833 = fmul fast float %4832, 0x3F70101000000000
  %4834 = fadd fast float %4818, -5.000000e-01
  %4835 = fadd fast float %4820, -5.000000e-01
  %4836 = fmul fast float %4834, %4830
  %4837 = fmul fast float %4835, %4830
  %4838 = fadd fast float %4836, 5.000000e-01
  %4839 = fadd fast float %4837, 5.000000e-01
  %4840 = fmul fast float %4801, %4619
  %4841 = fmul fast float %4802, %4620
  %4842 = fmul fast float %4803, %4621
  %4843 = fmul fast float %4838, 2.000000e+00
  %4844 = fadd fast float %4843, -1.000000e+00
  %4845 = fmul fast float %4839, 2.000000e+00
  %4846 = fadd fast float %4845, -1.000000e+00
  %4847 = fadd fast float %4844, %4846
  %4848 = fmul fast float %4847, 5.000000e-01
  %4849 = fsub fast float %4844, %4846
  %4850 = fmul fast float %4849, 5.000000e-01
  %4851 = call float @dx.op.unary.f32(i32 6, float %4848)  ; FAbs(value)
  %4852 = fsub fast float 1.000000e+00, %4851
  %4853 = call float @dx.op.unary.f32(i32 6, float %4850)  ; FAbs(value)
  %4854 = fsub fast float %4852, %4853
  %4855 = call float @dx.op.dot3.f32(i32 55, float %4848, float %4850, float %4854, float %4848, float %4850, float %4854)  ; Dot3(ax,ay,az,bx,by,bz)
  %4856 = call float @dx.op.unary.f32(i32 25, float %4855)  ; Rsqrt(value)
  %4857 = fmul fast float %4848, %4856
  %4858 = fmul fast float %4850, %4856
  %4859 = fmul fast float %4856, %4854
  %4860 = fmul fast float %4859, %4584
  %4861 = fmul fast float %4859, %4585
  %4862 = fmul fast float %4859, %4586
  %4863 = fmul fast float %4857, %4607
  %4864 = fmul fast float %4857, %4608
  %4865 = fmul fast float %4857, %4609
  %4866 = fadd fast float %4863, %4860
  %4867 = fadd fast float %4864, %4861
  %4868 = fadd fast float %4865, %4862
  %4869 = fmul fast float %4858, %4613
  %4870 = fmul fast float %4858, %4614
  %4871 = fmul fast float %4858, %4615
  %4872 = fadd fast float %4866, %4869
  %4873 = fadd fast float %4867, %4870
  %4874 = fadd fast float %4868, %4871
  %4875 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4872, float %4873, float %4874)  ; Dot3(ax,ay,az,bx,by,bz)
  %4876 = call float @dx.op.unary.f32(i32 25, float %4875)  ; Rsqrt(value)
  %4877 = fmul fast float %4872, %4876
  %4878 = fmul fast float %4873, %4876
  %4879 = fmul fast float %4874, %4876
  %4880 = icmp ne i32 %4796, 0
  %4881 = select i1 %4880, float 1.000000e+00, float 0.000000e+00
  %4882 = fmul fast float %4786, %4881
  %4883 = and i32 %4634, 1
  %4884 = icmp eq i32 %4883, 0
  br i1 %4884, label %4885, label %4889

; <label>:4885                                    ; preds = %4794
  %4886 = fsub fast float %4877, %4567
  %4887 = fsub fast float %4878, %4568
  %4888 = fsub fast float %4879, %4569
  br label %4889

; <label>:4889                                    ; preds = %4885, %4794
  %4890 = phi float [ %4886, %4885 ], [ %4877, %4794 ]
  %4891 = phi float [ %4887, %4885 ], [ %4878, %4794 ]
  %4892 = phi float [ %4888, %4885 ], [ %4879, %4794 ]
  %4893 = fmul float %4892, %4882
  %4894 = fmul float %4891, %4882
  %4895 = fmul float %4890, %4882
  %4896 = fadd fast float %4895, %4567
  %4897 = fadd fast float %4894, %4568
  %4898 = fadd fast float %4893, %4569
  %4899 = icmp ne i32 %4795, 0
  %4900 = select i1 %4899, float 1.000000e+00, float 0.000000e+00
  %4901 = fmul fast float %4786, %4900
  %4902 = fsub fast float %4840, %4574
  %4903 = fsub fast float %4841, %4575
  %4904 = fsub fast float %4842, %4576
  %4905 = fmul fast float %4902, %4901
  %4906 = fmul fast float %4903, %4901
  %4907 = fmul fast float %4904, %4901
  %4908 = fadd fast float %4905, %4574
  %4909 = fadd fast float %4906, %4575
  %4910 = fadd fast float %4907, %4576
  %4911 = fsub fast float %4813, %4573
  %4912 = fmul fast float %4911, %4901
  %4913 = fadd fast float %4912, %4573
  %4914 = fmul fast float %4901, %4560
  %4915 = fsub fast float %4560, %4914
  %4916 = fmul fast float %4901, %4559
  %4917 = fsub fast float %4559, %4916
  %4918 = bitcast float %4628 to i32
  %4919 = lshr i32 %4918, 16
  %4920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4919)  ; LegacyF16ToF32(value)
  %4921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %4922 = extractvalue %dx.types.ResRet.i32 %4921, 0
  %4923 = and i32 %4922, 1
  %4924 = icmp eq i32 %4923, 0
  br i1 %4924, label %4925, label %4950

; <label>:4925                                    ; preds = %4889
  %4926 = fadd fast float %4813, 0xBFB99999A0000000
  %4927 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4928 = fmul fast float %4927, 0x3FF1C71C80000000
  %4929 = fsub fast float 1.000000e+00, %4928
  %4930 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4931 = fmul fast float %4930, %4840
  %4932 = fmul fast float %4930, %4841
  %4933 = fmul fast float %4930, %4842
  %4934 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4935 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4936 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4937 = call float @dx.op.binary.f32(i32 35, float %4935, float %4936)  ; FMax(a,b)
  %4938 = call float @dx.op.binary.f32(i32 35, float %4934, float %4937)  ; FMax(a,b)
  %4939 = fcmp fast ogt float %4938, 0.000000e+00
  %4940 = bitcast float %4938 to i32
  %4941 = sub nsw i32 2129859010, %4940
  %4942 = bitcast i32 %4941 to float
  %4943 = select i1 %4939, float %4942, float 0.000000e+00
  %4944 = fmul fast float %4934, %4920
  %4945 = fmul fast float %4935, %4920
  %4946 = fmul fast float %4936, %4920
  %4947 = fmul fast float %4944, %4943
  %4948 = fmul fast float %4945, %4943
  %4949 = fmul fast float %4946, %4943
  br label %4950

; <label>:4950                                    ; preds = %4925, %4889
  %4951 = phi float [ %4920, %4889 ], [ %4947, %4925 ]
  %4952 = phi float [ %4920, %4889 ], [ %4948, %4925 ]
  %4953 = phi float [ %4920, %4889 ], [ %4949, %4925 ]
  %4954 = fsub fast float %4951, %4561
  %4955 = fsub fast float %4952, %4562
  %4956 = fsub fast float %4953, %4563
  %4957 = fmul fast float %4954, %4901
  %4958 = fmul fast float %4955, %4901
  %4959 = fmul fast float %4956, %4901
  %4960 = fadd fast float %4957, %4561
  %4961 = fadd fast float %4958, %4562
  %4962 = fadd fast float %4959, %4563
  %4963 = fadd fast float %4786, %4572
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = fsub fast float %4833, %4571
  %4966 = fmul fast float %4965, %4882
  %4967 = fadd fast float %4966, %4571
  %4968 = fsub fast float %4819, %4570
  %4969 = fmul fast float %4968, %4882
  %4970 = fadd fast float %4969, %4570
  br i1 %4884, label %4979, label %4971

; <label>:4971                                    ; preds = %4950
  %4972 = and i32 %4634, 32768
  %4973 = icmp eq i32 %4972, 0
  br i1 %4973, label %4989, label %4974

; <label>:4974                                    ; preds = %4971
  %4975 = fmul fast float %4882, 1.270000e+02
  %4976 = fadd fast float %4975, %4556
  %4977 = fadd fast float %4975, %4557
  %4978 = fadd fast float %4975, %4558
  br label %4989

; <label>:4979                                    ; preds = %4950
  %4980 = fsub fast float 1.270000e+02, %4556
  %4981 = fsub fast float 1.270000e+02, %4557
  %4982 = fsub fast float 1.270000e+02, %4558
  %4983 = fmul fast float %4882, %4980
  %4984 = fmul fast float %4882, %4981
  %4985 = fmul fast float %4882, %4982
  %4986 = fadd fast float %4983, %4556
  %4987 = fadd fast float %4984, %4557
  %4988 = fadd fast float %4985, %4558
  br label %4989

; <label>:4989                                    ; preds = %4979, %4974, %4971
  %4990 = phi float [ %4976, %4974 ], [ %4556, %4971 ], [ %4986, %4979 ]
  %4991 = phi float [ %4977, %4974 ], [ %4557, %4971 ], [ %4987, %4979 ]
  %4992 = phi float [ %4978, %4974 ], [ %4558, %4971 ], [ %4988, %4979 ]
  %4993 = call float @dx.op.dot3.f32(i32 55, float %4840, float %4841, float %4842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.f32 %4994, 0
  %4996 = extractvalue %dx.types.CBufRet.f32 %4994, 1
  %4997 = fmul fast float %4996, %4993
  %4998 = fadd fast float %4997, %4995
  %4999 = call float @dx.op.unary.f32(i32 7, float %4998)  ; Saturate(value)
  %5000 = bitcast float %4622 to i32
  %5001 = and i32 %5000, 65535
  %5002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5001)  ; LegacyF16ToF32(value)
  %5003 = lshr i32 %5000, 16
  %5004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5003)  ; LegacyF16ToF32(value)
  %5005 = fcmp fast oge float %5002, 0.000000e+00
  %5006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5007 = extractvalue %dx.types.CBufRet.f32 %5006, 0
  %5008 = select i1 %5005, float %5002, float %5007
  %5009 = fadd fast float %5008, %5004
  %5010 = fsub fast float %4999, %4555
  %5011 = fmul fast float %5010, %4786
  %5012 = fadd fast float %5011, %4555
  %5013 = fmul fast float %5009, %4786
  %5014 = call float @dx.op.binary.f32(i32 35, float %4554, float %5013)  ; FMax(a,b)
  %5015 = and i32 %4634, 16
  %5016 = icmp eq i32 %5015, 0
  br i1 %5016, label %5038, label %5017

; <label>:5017                                    ; preds = %4989
  %5018 = add i32 %4625, 0
  %5019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5018, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5020 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5019, %dx.types.Handle %4799, float %4727, float %4730, float undef, float undef, i32 0, i32 0, i32 undef, float %4732, float %4734, float undef, float %4736, float %4738, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5021 = extractvalue %dx.types.ResRet.f32 %5020, 0
  %5022 = extractvalue %dx.types.ResRet.f32 %5020, 1
  %5023 = extractvalue %dx.types.ResRet.f32 %5020, 2
  %5024 = and i32 %4918, 65535
  %5025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5024)  ; LegacyF16ToF32(value)
  %5026 = fmul fast float %5021, %4619
  %5027 = fmul fast float %5022, %4620
  %5028 = fmul fast float %5023, %4621
  %5029 = and i32 %4634, 16384
  %5030 = icmp ne i32 %5029, 0
  %5031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5032 = extractvalue %dx.types.CBufRet.f32 %5031, 0
  %5033 = select i1 %5030, float %5032, float 1.000000e+00
  %5034 = fmul fast float %5033, %5025
  %5035 = fmul fast float %5026, %5034
  %5036 = fmul fast float %5027, %5034
  %5037 = fmul fast float %5028, %5034
  br label %5038

; <label>:5038                                    ; preds = %5017, %4989
  %5039 = phi float [ %5035, %5017 ], [ 0.000000e+00, %4989 ]
  %5040 = phi float [ %5036, %5017 ], [ 0.000000e+00, %4989 ]
  %5041 = phi float [ %5037, %5017 ], [ 0.000000e+00, %4989 ]
  %5042 = fsub fast float %5039, %4564
  %5043 = fsub fast float %5040, %4565
  %5044 = fsub fast float %5041, %4566
  %5045 = fmul fast float %5042, %4786
  %5046 = fmul fast float %5043, %4786
  %5047 = fmul fast float %5044, %4786
  %5048 = fadd fast float %5045, %4564
  %5049 = fadd fast float %5046, %4565
  %5050 = fadd fast float %5047, %4566
  br label %4683

; <label>:5051                                    ; preds = %4683
  br label %5052

; <label>:5052                                    ; preds = %5051, %4497
  %5053 = phi float [ 0.000000e+00, %4497 ], [ %4684, %5051 ]
  %5054 = phi float [ %4466, %4497 ], [ %4685, %5051 ]
  %5055 = phi float [ %4447, %4497 ], [ %4686, %5051 ]
  %5056 = phi float [ %4440, %4497 ], [ %4687, %5051 ]
  %5057 = phi float [ %4441, %4497 ], [ %4688, %5051 ]
  %5058 = phi float [ %4442, %4497 ], [ %4689, %5051 ]
  %5059 = phi float [ 0.000000e+00, %4497 ], [ %4690, %5051 ]
  %5060 = phi float [ 0.000000e+00, %4497 ], [ %4691, %5051 ]
  %5061 = phi float [ %4437, %4497 ], [ %4692, %5051 ]
  %5062 = phi float [ %4438, %4497 ], [ %4693, %5051 ]
  %5063 = phi float [ %4439, %4497 ], [ %4694, %5051 ]
  %5064 = phi float [ %4434, %4497 ], [ %4695, %5051 ]
  %5065 = phi float [ %4435, %4497 ], [ %4696, %5051 ]
  %5066 = phi float [ %4436, %4497 ], [ %4697, %5051 ]
  %5067 = phi float [ %4492, %4497 ], [ %4698, %5051 ]
  %5068 = phi float [ %4493, %4497 ], [ %4699, %5051 ]
  %5069 = phi float [ %4494, %4497 ], [ %4700, %5051 ]
  %5070 = phi float [ %4445, %4497 ], [ %4701, %5051 ]
  %5071 = phi float [ %4444, %4497 ], [ %4702, %5051 ]
  %5072 = phi float [ 0.000000e+00, %4497 ], [ %4703, %5051 ]
  %5073 = phi float [ %4443, %4497 ], [ %4704, %5051 ]
  %5074 = phi float [ %4431, %4497 ], [ %4705, %5051 ]
  %5075 = phi float [ %4432, %4497 ], [ %4706, %5051 ]
  %5076 = phi float [ %4433, %4497 ], [ %4707, %5051 ]
  %5077 = call float @dx.op.dot3.f32(i32 55, float %5067, float %5068, float %5069, float %5067, float %5068, float %5069)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = call float @dx.op.unary.f32(i32 25, float %5077)  ; Rsqrt(value)
  %5079 = fmul fast float %5078, %5067
  %5080 = fmul fast float %5078, %5068
  %5081 = fmul fast float %5078, %5069
  %5082 = fadd fast float %5072, %1272
  %5083 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5084 = call float @dx.op.dot3.f32(i32 55, float %5079, float %5080, float %5081, float %5079, float %5080, float %5081)  ; Dot3(ax,ay,az,bx,by,bz)
  %5085 = call float @dx.op.unary.f32(i32 25, float %5084)  ; Rsqrt(value)
  %5086 = fmul fast float %5085, %5079
  %5087 = fmul fast float %5085, %5080
  %5088 = fmul fast float %5085, %5081
  br label %5089

; <label>:5089                                    ; preds = %5052, %4428
  %5090 = phi float [ %5086, %5052 ], [ %4492, %4428 ]
  %5091 = phi float [ %5087, %5052 ], [ %4493, %4428 ]
  %5092 = phi float [ %5088, %5052 ], [ %4494, %4428 ]
  %5093 = phi float [ %5074, %5052 ], [ %4431, %4428 ]
  %5094 = phi float [ %5075, %5052 ], [ %4432, %4428 ]
  %5095 = phi float [ %5076, %5052 ], [ %4433, %4428 ]
  %5096 = phi float [ %5061, %5052 ], [ %4437, %4428 ]
  %5097 = phi float [ %5062, %5052 ], [ %4438, %4428 ]
  %5098 = phi float [ %5063, %5052 ], [ %4439, %4428 ]
  %5099 = phi float [ %5056, %5052 ], [ %4440, %4428 ]
  %5100 = phi float [ %5057, %5052 ], [ %4441, %4428 ]
  %5101 = phi float [ %5058, %5052 ], [ %4442, %4428 ]
  %5102 = phi float [ %5064, %5052 ], [ %4434, %4428 ]
  %5103 = phi float [ %5065, %5052 ], [ %4435, %4428 ]
  %5104 = phi float [ %5066, %5052 ], [ %4436, %4428 ]
  %5105 = phi float [ %5073, %5052 ], [ %4443, %4428 ]
  %5106 = phi float [ %5083, %5052 ], [ %1272, %4428 ]
  %5107 = phi float [ %5071, %5052 ], [ %4444, %4428 ]
  %5108 = phi float [ %5070, %5052 ], [ %4445, %4428 ]
  %5109 = phi float [ %5060, %5052 ], [ 0.000000e+00, %4428 ]
  %5110 = phi float [ %5059, %5052 ], [ 0.000000e+00, %4428 ]
  %5111 = phi float [ %5053, %5052 ], [ 0.000000e+00, %4428 ]
  %5112 = phi float [ %5054, %5052 ], [ %4466, %4428 ]
  %5113 = phi float [ %5055, %5052 ], [ %4447, %4428 ]
  %5114 = add i32 %48, 392
  %5115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %5114, i32 undef)  ; BufferLoad(srv,index,wot)
  %5116 = extractvalue %dx.types.ResRet.i32 %5115, 0
  %5117 = extractvalue %dx.types.ResRet.i32 %5115, 1
  %5118 = extractvalue %dx.types.ResRet.i32 %5115, 2
  %5119 = extractvalue %dx.types.ResRet.i32 %5115, 3
  %5120 = bitcast i32 %5116 to float
  %5121 = bitcast i32 %5117 to float
  %5122 = bitcast i32 %5118 to float
  %5123 = bitcast i32 %5119 to float
  %5124 = fsub fast float %5093, %5120
  %5125 = fsub fast float %5094, %5121
  %5126 = fsub fast float %5095, %5122
  %5127 = fmul fast float %5124, %186
  %5128 = fmul fast float %5125, %186
  %5129 = fmul fast float %5126, %186
  %5130 = fadd fast float %5127, %5120
  %5131 = fadd fast float %5128, %5121
  %5132 = fadd fast float %5129, %5122
  %5133 = fsub fast float %5106, %5123
  %5134 = fmul fast float %5133, %186
  %5135 = fadd fast float %5134, %5123
  %5136 = fadd fast float %5105, 0xBFB99999A0000000
  %5137 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5138 = fmul fast float %5137, 0x3FF1C71C80000000
  %5139 = call float @dx.op.binary.f32(i32 36, float %5105, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5140 = fsub fast float 1.000000e+00, %5138
  %5141 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5142 = fmul fast float %5130, %5141
  %5143 = fmul fast float %5131, %5141
  %5144 = fmul fast float %5132, %5141
  %5145 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5147 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5148 = fmul fast float %5130, %5138
  %5149 = fmul fast float %5131, %5138
  %5150 = fmul fast float %5132, %5138
  %5151 = fadd fast float %5148, %5139
  %5152 = fadd fast float %5149, %5139
  %5153 = fadd fast float %5150, %5139
  %5154 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5155 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5156 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5157 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %5159 = extractvalue %dx.types.ResRet.i32 %5158, 0
  %5160 = and i32 %5159, 1
  %5161 = icmp eq i32 %5160, 0
  br i1 %5161, label %5176, label %5162

; <label>:5162                                    ; preds = %5089
  %5163 = call float @dx.op.binary.f32(i32 35, float %5146, float %5147)  ; FMax(a,b)
  %5164 = call float @dx.op.binary.f32(i32 35, float %5145, float %5163)  ; FMax(a,b)
  %5165 = fcmp fast ogt float %5164, 0.000000e+00
  %5166 = bitcast float %5164 to i32
  %5167 = sub nsw i32 2129859010, %5166
  %5168 = bitcast i32 %5167 to float
  %5169 = select i1 %5165, float %5168, float 0.000000e+00
  %5170 = fmul fast float %5145, %5096
  %5171 = fmul fast float %5146, %5097
  %5172 = fmul fast float %5147, %5098
  %5173 = fmul fast float %5170, %5169
  %5174 = fmul fast float %5171, %5169
  %5175 = fmul fast float %5172, %5169
  br label %5176

; <label>:5176                                    ; preds = %5162, %5089
  %5177 = phi float [ %5173, %5162 ], [ %5096, %5089 ]
  %5178 = phi float [ %5174, %5162 ], [ %5097, %5089 ]
  %5179 = phi float [ %5175, %5162 ], [ %5098, %5089 ]
  %5180 = call float @dx.op.binary.f32(i32 36, float %5099, float 1.270000e+02)  ; FMin(a,b)
  %5181 = call float @dx.op.binary.f32(i32 36, float %5100, float 1.270000e+02)  ; FMin(a,b)
  %5182 = call float @dx.op.binary.f32(i32 36, float %5101, float 1.270000e+02)  ; FMin(a,b)
  %5183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5184 = extractvalue %dx.types.CBufRet.i32 %5183, 3
  %5185 = and i32 %5184, 8
  %5186 = icmp ne i32 %5185, 0
  %5187 = call float @dx.op.binary.f32(i32 35, float %5145, float %5130)  ; FMax(a,b)
  %5188 = call float @dx.op.binary.f32(i32 35, float %5146, float %5130)  ; FMax(a,b)
  %5189 = call float @dx.op.binary.f32(i32 35, float %5147, float %5130)  ; FMax(a,b)
  %5190 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %5147, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5191 = select i1 %245, float %5130, float %5145
  %5192 = select i1 %245, float %5190, float %5146
  %5193 = select i1 %245, float 1.000000e+00, float %5147
  %5194 = select i1 %5186, float %5187, float %5191
  %5195 = select i1 %5186, float %5188, float %5192
  %5196 = select i1 %5186, float %5189, float %5193
  %5197 = call float @dx.op.dot3.f32(i32 55, float %5177, float %5178, float %5179, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5198 = select i1 %245, float %5197, float %5177
  %5199 = select i1 %245, float %5197, float %5178
  %5200 = select i1 %245, float %5197, float %5179
  %5201 = and i32 %221, 3
  %5202 = select i1 %215, i32 %5201, i32 0
  %5203 = icmp eq i32 %5202, 1
  br i1 %5203, label %5204, label %5280

; <label>:5204                                    ; preds = %5176
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 0
  %5207 = extractvalue %dx.types.CBufRet.f32 %5205, 1
  %5208 = fadd fast float %5206, %152
  %5209 = fadd fast float %5207, %153
  %5210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5211 = extractvalue %dx.types.CBufRet.f32 %5210, 0
  %5212 = extractvalue %dx.types.CBufRet.f32 %5210, 1
  %5213 = fsub fast float %5208, %5211
  %5214 = fsub fast float %5209, %5212
  %5215 = fmul fast float %5213, %5213
  %5216 = fmul fast float %5214, %5214
  %5217 = fadd fast float %5215, %5216
  %5218 = call float @dx.op.unary.f32(i32 24, float %5217)  ; Sqrt(value)
  %5219 = extractvalue %dx.types.CBufRet.f32 %5210, 2
  %5220 = fcmp fast olt float %5218, %5219
  br i1 %5220, label %5221, label %5274

; <label>:5221                                    ; preds = %5204
  %5222 = extractvalue %dx.types.CBufRet.f32 %5205, 2
  %5223 = fadd fast float %5222, %154
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 0
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5229 = extractvalue %dx.types.CBufRet.f32 %5228, 0
  %5230 = extractvalue %dx.types.CBufRet.f32 %5224, 1
  %5231 = extractvalue %dx.types.CBufRet.f32 %5226, 1
  %5232 = extractvalue %dx.types.CBufRet.f32 %5228, 1
  %5233 = extractvalue %dx.types.CBufRet.f32 %5224, 3
  %5234 = extractvalue %dx.types.CBufRet.f32 %5226, 3
  %5235 = extractvalue %dx.types.CBufRet.f32 %5228, 3
  %5236 = fadd fast float %5233, %5208
  %5237 = fadd fast float %5234, %5209
  %5238 = fadd fast float %5223, %5235
  %5239 = fmul fast float %5236, %5225
  %5240 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5227, float %5239)  ; FMad(a,b,c)
  %5241 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5229, float %5240)  ; FMad(a,b,c)
  %5242 = fmul fast float %5236, %5230
  %5243 = call float @dx.op.tertiary.f32(i32 46, float %5237, float %5231, float %5242)  ; FMad(a,b,c)
  %5244 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5232, float %5243)  ; FMad(a,b,c)
  %5245 = fsub fast float %5241, %5233
  %5246 = fsub fast float %5244, %5234
  %5247 = fsub fast float %5245, %5211
  %5248 = fadd fast float %5247, %5219
  %5249 = fsub fast float %5246, %5212
  %5250 = fadd fast float %5249, %5219
  %5251 = extractvalue %dx.types.CBufRet.f32 %5210, 3
  %5252 = fmul fast float %5248, %5251
  %5253 = fmul fast float %5250, %5251
  %5254 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5255 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  %5256 = fsub fast float 1.000000e+00, %5254
  %5257 = fsub fast float 1.000000e+00, %5255
  %5258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %42, float %5256, float %5257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5259 = extractvalue %dx.types.ResRet.f32 %5258, 0
  %5260 = fcmp fast ugt float %5259, 0.000000e+00
  br i1 %5260, label %5261, label %5274

; <label>:5261                                    ; preds = %5221
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 2
  %5264 = fmul fast float %5263, %5259
  %5265 = extractvalue %dx.types.CBufRet.f32 %5262, 3
  %5266 = fadd fast float %5265, %5264
  %5267 = extractvalue %dx.types.CBufRet.f32 %5228, 2
  %5268 = fadd fast float %5266, %5235
  %5269 = fmul fast float %5241, %5229
  %5270 = call float @dx.op.tertiary.f32(i32 46, float %5244, float %5232, float %5269)  ; FMad(a,b,c)
  %5271 = call float @dx.op.tertiary.f32(i32 46, float %5268, float %5267, float %5270)  ; FMad(a,b,c)
  %5272 = fsub fast float %5271, %5235
  %5273 = fsub fast float %5272, %5222
  br label %5274

; <label>:5274                                    ; preds = %5261, %5221, %5204
  %5275 = phi i1 [ true, %5261 ], [ false, %5221 ], [ false, %5204 ]
  %5276 = phi float [ %5273, %5261 ], [ -1.310720e+05, %5221 ], [ -1.310720e+05, %5204 ]
  %5277 = fsub fast float %5276, %154
  %5278 = call float @dx.op.unary.f32(i32 7, float %5277)  ; Saturate(value)
  %5279 = select i1 %5275, float %5278, float 1.000000e+00
  br label %5280

; <label>:5280                                    ; preds = %5274, %5176
  %5281 = phi float [ %5279, %5274 ], [ 0.000000e+00, %5176 ]
  %5282 = icmp eq i32 %5202, 3
  %5283 = select i1 %5282, float 1.000000e+00, float %5281
  %5284 = call float @dx.op.binary.f32(i32 35, float %5111, float %5283)  ; FMax(a,b)
  %5285 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5286 = fcmp fast une float %5285, 0.000000e+00
  %5287 = fsub fast float -0.000000e+00, %172
  %5288 = fsub fast float -0.000000e+00, %173
  %5289 = fsub fast float -0.000000e+00, %174
  br i1 %5286, label %5290, label %5452

; <label>:5290                                    ; preds = %5280
  %5291 = call float @dx.op.dot3.f32(i32 55, float %5287, float %5288, float %5289, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5292 = fmul fast float %5285, 2.500000e+00
  %5293 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5294 = fmul fast float %5285, 0x4013FFFFE0000000
  %5295 = fadd fast float %5294, 0xBFFFFFFFE0000000
  %5296 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5297 = fmul fast float %5285, 0x4004000020000000
  %5298 = fadd fast float %5297, 0xBFF8000040000000
  %5299 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5300 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5301 = fmul fast float %5136, 1.000000e+01
  %5302 = call float @dx.op.unary.f32(i32 7, float %5301)  ; Saturate(value)
  %5303 = fmul fast float %5302, 2.000000e+00
  %5304 = fsub fast float 3.000000e+00, %5303
  %5305 = fmul fast float %5302, %5302
  %5306 = fmul fast float %5305, %5304
  %5307 = fsub fast float 1.000000e+00, %5306
  %5308 = fsub fast float 0x3FE3333340000000, %5157
  %5309 = fmul fast float %5308, 0x400AAAAAA0000000
  %5310 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5311 = fmul fast float %5307, %5310
  %5312 = fmul fast float %5194, 0x3FEA2B8620000000
  %5313 = fmul fast float %5195, 0x3FEA2B8620000000
  %5314 = fmul fast float %5196, 0x3FEA2B8620000000
  %5315 = fadd fast float %5312, 0x3FC81DFBA0000000
  %5316 = fmul fast float %5315, %5194
  %5317 = fadd fast float %5316, 0x3F910E6020000000
  %5318 = fadd fast float %5313, 0x3FC81DFBA0000000
  %5319 = fmul fast float %5318, %5195
  %5320 = fadd fast float %5319, 0x3F910E6020000000
  %5321 = fadd fast float %5314, 0x3FC81DFBA0000000
  %5322 = fmul fast float %5321, %5196
  %5323 = fadd fast float %5322, 0x3F910E6020000000
  %5324 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  %5325 = call float @dx.op.unary.f32(i32 7, float %5320)  ; Saturate(value)
  %5326 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5327 = fsub fast float %5324, %5194
  %5328 = fsub fast float %5325, %5195
  %5329 = fsub fast float %5326, %5196
  %5330 = fmul fast float %5327, %5300
  %5331 = fmul fast float %5330, %5311
  %5332 = fmul fast float %5328, %5300
  %5333 = fmul fast float %5332, %5311
  %5334 = fmul fast float %5329, %5300
  %5335 = fmul fast float %5334, %5311
  %5336 = fadd fast float %5331, %5194
  %5337 = fadd fast float %5333, %5195
  %5338 = fadd fast float %5335, %5196
  %5339 = fmul fast float %5108, %5108
  %5340 = fmul fast float %5339, %5339
  %5341 = fadd fast float %5296, 1.000000e+00
  %5342 = fsub fast float %5341, %5311
  %5343 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5344 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5345 = call float @dx.op.unary.f32(i32 7, float %5344)  ; Saturate(value)
  %5346 = fsub fast float 1.000000e+00, %5340
  %5347 = call float @dx.op.binary.f32(i32 36, float %5343, float %5346)  ; FMin(a,b)
  %5348 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5349 = call float @dx.op.binary.f32(i32 35, float %5347, float %5348)  ; FMax(a,b)
  %5350 = fadd fast float %5345, 0xBFE4CCCCC0000000
  %5351 = fmul fast float %5350, 0x4006DB6DA0000000
  %5352 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5353 = fmul fast float %5352, 2.000000e+00
  %5354 = fsub fast float 3.000000e+00, %5353
  %5355 = bitcast float %5154 to i32
  %5356 = ashr i32 %5355, 1
  %5357 = add nsw i32 %5356, 532487669
  %5358 = bitcast i32 %5357 to float
  %5359 = fsub fast float 1.000000e+00, %5358
  %5360 = bitcast float %5359 to i32
  %5361 = sub nsw i32 2129859010, %5360
  %5362 = bitcast i32 %5361 to float
  %5363 = fmul fast float %5362, 2.000000e+00
  %5364 = bitcast float %5155 to i32
  %5365 = ashr i32 %5364, 1
  %5366 = add nsw i32 %5365, 532487669
  %5367 = bitcast i32 %5366 to float
  %5368 = fsub fast float 1.000000e+00, %5367
  %5369 = bitcast float %5368 to i32
  %5370 = sub nsw i32 2129859010, %5369
  %5371 = bitcast i32 %5370 to float
  %5372 = fmul fast float %5371, 2.000000e+00
  %5373 = bitcast float %5156 to i32
  %5374 = ashr i32 %5373, 1
  %5375 = add nsw i32 %5374, 532487669
  %5376 = bitcast i32 %5375 to float
  %5377 = fsub fast float 1.000000e+00, %5376
  %5378 = bitcast float %5377 to i32
  %5379 = sub nsw i32 2129859010, %5378
  %5380 = bitcast i32 %5379 to float
  %5381 = fmul fast float %5380, 2.000000e+00
  %5382 = fsub fast float 0x4002A9FBE0000000, %5363
  %5383 = fadd fast float %5363, 0x3FD54FDF00000000
  %5384 = bitcast float %5383 to i32
  %5385 = sub nsw i32 2129859010, %5384
  %5386 = bitcast i32 %5385 to float
  %5387 = fmul fast float %5386, %5382
  %5388 = fmul fast float %5387, %5387
  %5389 = fsub fast float 0x4002A9FBE0000000, %5372
  %5390 = fadd fast float %5372, 0x3FD54FDF00000000
  %5391 = bitcast float %5390 to i32
  %5392 = sub nsw i32 2129859010, %5391
  %5393 = bitcast i32 %5392 to float
  %5394 = fmul fast float %5393, %5389
  %5395 = fmul fast float %5394, %5394
  %5396 = fsub fast float 0x4002A9FBE0000000, %5381
  %5397 = fadd fast float %5381, 0x3FD54FDF00000000
  %5398 = bitcast float %5397 to i32
  %5399 = sub nsw i32 2129859010, %5398
  %5400 = bitcast i32 %5399 to float
  %5401 = fmul fast float %5400, %5396
  %5402 = fmul fast float %5401, %5401
  %5403 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5388)  ; FMax(a,b)
  %5404 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5395)  ; FMax(a,b)
  %5405 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5402)  ; FMax(a,b)
  %5406 = fsub fast float 1.000000e+00, %5291
  %5407 = fadd fast float %5406, %5307
  %5408 = call float @dx.op.unary.f32(i32 7, float %5407)  ; Saturate(value)
  %5409 = fsub fast float 1.000000e+00, %5283
  %5410 = fmul fast float %5349, %5409
  %5411 = fmul fast float %5352, %5352
  %5412 = fmul fast float %5411, %5410
  %5413 = fmul fast float %5412, %5354
  %5414 = fmul fast float %5409, 0xBFE99999A0000000
  %5415 = fmul fast float %5414, %5300
  %5416 = fmul fast float %5415, %5311
  %5417 = fadd fast float %5416, 1.000000e+00
  %5418 = fadd fast float %5157, -1.000000e+00
  %5419 = fmul fast float %5417, %5418
  %5420 = fadd fast float %5419, 1.000000e+00
  %5421 = fsub fast float %5403, %5154
  %5422 = fsub fast float %5404, %5155
  %5423 = fsub fast float %5405, %5156
  %5424 = fmul fast float %5413, %5421
  %5425 = fmul fast float %5413, %5422
  %5426 = fmul fast float %5413, %5423
  %5427 = fadd fast float %5424, %5154
  %5428 = fadd fast float %5425, %5155
  %5429 = fadd fast float %5426, %5156
  %5430 = fsub fast float %104, %5090
  %5431 = fsub fast float %105, %5091
  %5432 = fsub fast float %106, %5092
  %5433 = fmul fast float %5413, %5430
  %5434 = fmul fast float %5413, %5431
  %5435 = fmul fast float %5413, %5432
  %5436 = fadd fast float %5433, %5090
  %5437 = fadd fast float %5434, %5091
  %5438 = fadd fast float %5435, %5092
  %5439 = fmul fast float %5413, %5408
  %5440 = call float @dx.op.unary.f32(i32 7, float %5420)  ; Saturate(value)
  %5441 = fsub fast float 1.000000e+00, %5440
  %5442 = fmul fast float %5439, %5441
  %5443 = fadd fast float %5442, %5440
  %5444 = fsub fast float 1.000000e+00, %5108
  %5445 = fmul fast float %5413, %5444
  %5446 = fadd fast float %5445, %5108
  %5447 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5448 = call float @dx.op.unary.f32(i32 25, float %5447)  ; Rsqrt(value)
  %5449 = fmul fast float %5436, %5448
  %5450 = fmul fast float %5437, %5448
  %5451 = fmul fast float %5438, %5448
  br label %5452

; <label>:5452                                    ; preds = %5290, %5280
  %5453 = phi float [ %5336, %5290 ], [ %5194, %5280 ]
  %5454 = phi float [ %5337, %5290 ], [ %5195, %5280 ]
  %5455 = phi float [ %5338, %5290 ], [ %5196, %5280 ]
  %5456 = phi float [ %5427, %5290 ], [ %5154, %5280 ]
  %5457 = phi float [ %5428, %5290 ], [ %5155, %5280 ]
  %5458 = phi float [ %5429, %5290 ], [ %5156, %5280 ]
  %5459 = phi float [ %5449, %5290 ], [ %5090, %5280 ]
  %5460 = phi float [ %5450, %5290 ], [ %5091, %5280 ]
  %5461 = phi float [ %5451, %5290 ], [ %5092, %5280 ]
  %5462 = phi float [ %5443, %5290 ], [ %5157, %5280 ]
  %5463 = phi float [ %5446, %5290 ], [ %5108, %5280 ]
  %5464 = select i1 %245, float 0.000000e+00, float %5458
  %5465 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %5461, float %5287, float %5288, float %5289)  ; Dot3(ax,ay,az,bx,by,bz)
  %5466 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5467 = call float @dx.op.dot3.f32(i32 55, float %172, float %173, float %174, float %5459, float %5460, float %5461)  ; Dot3(ax,ay,az,bx,by,bz)
  %5468 = fmul fast float %5467, 2.000000e+00
  %5469 = fmul fast float %5468, %5459
  %5470 = fmul fast float %5468, %5460
  %5471 = fmul fast float %5468, %5461
  %5472 = fsub fast float %172, %5469
  %5473 = fsub fast float %173, %5470
  %5474 = fsub fast float %174, %5471
  %5475 = call float @dx.op.binary.f32(i32 36, float %5463, float 1.000000e+00)  ; FMin(a,b)
  %5476 = fsub fast float 1.000000e+00, %5475
  %5477 = bitcast float %5476 to i32
  %5478 = ashr i32 %5477, 1
  %5479 = add nsw i32 %5478, 532487669
  %5480 = bitcast i32 %5479 to float
  %5481 = fsub fast float 1.000000e+00, %5462
  %5482 = call float @dx.op.binary.f32(i32 35, float %5481, float 0x3F847AE140000000)  ; FMax(a,b)
  %5483 = fmul fast float %5482, %5482
  %5484 = fmul fast float %5483, %5483
  %5485 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %42, float %5480, float %5484, float %5485, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5487 = extractvalue %dx.types.ResRet.f32 %5486, 0
  %5488 = fsub fast float 1.000000e+00, %5463
  %5489 = bitcast float %5488 to i32
  %5490 = sub nsw i32 2129859010, %5489
  %5491 = call float @dx.op.dot3.f32(i32 55, float %65, float %61, float %57, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = fmul fast float %5491, 0x3FD20DD760000000
  %5493 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5494 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = fcmp fast oeq float %5494, 0.000000e+00
  %5496 = fcmp fast oeq float %5493, 0.000000e+00
  %5497 = or i1 %5496, %5495
  br i1 %5497, label %5527, label %5498

; <label>:5498                                    ; preds = %5452
  %5499 = fsub fast float -0.000000e+00, %68
  %5500 = fsub fast float -0.000000e+00, %66
  %5501 = call float @dx.op.unary.f32(i32 24, float %5494)  ; Sqrt(value)
  %5502 = fdiv fast float %5501, %5493
  %5503 = fcmp fast ogt float %5502, 0x3FFB6F8900000000
  %5504 = select i1 %5503, float 0x3FFB6F8900000000, float %5502
  %5505 = fmul fast float %5504, 0x3FE8A23460000000
  %5506 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5507 = call float @dx.op.binary.f32(i32 35, float %5504, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5508 = fmul fast float %5506, %5493
  %5509 = fmul fast float %5507, 0x3FF279A740000000
  %5510 = fadd fast float %5509, -1.000000e+00
  %5511 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5500, float %67, float %5499, float %5500, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5512 = call float @dx.op.unary.f32(i32 25, float %5511)  ; Rsqrt(value)
  %5513 = fmul fast float %5512, %5499
  %5514 = fmul fast float %5512, %5500
  %5515 = fmul fast float %5512, %67
  %5516 = fmul fast float %5510, %5510
  %5517 = fsub fast float 1.000000e+00, %5516
  %5518 = fmul fast float %5507, 0x40005F8BE0000000
  %5519 = fsub fast float 0x400C5BF8A0000000, %5518
  %5520 = fdiv fast float %5508, %5519
  %5521 = fmul fast float %5520, 0x3FEE31C3C0000000
  %5522 = fmul fast float %5521, %5517
  %5523 = fmul fast float %5507, 0x3FDACB7480000000
  %5524 = fadd fast float %5523, 0xBFD7347680000000
  %5525 = fmul fast float %5524, %5520
  %5526 = fmul fast float %5525, %5517
  br label %5527

; <label>:5527                                    ; preds = %5498, %5452
  %5528 = phi float [ %5513, %5498 ], [ 0.000000e+00, %5452 ]
  %5529 = phi float [ %5514, %5498 ], [ 0.000000e+00, %5452 ]
  %5530 = phi float [ %5515, %5498 ], [ 0.000000e+00, %5452 ]
  %5531 = phi float [ %5522, %5498 ], [ 0.000000e+00, %5452 ]
  %5532 = phi float [ %5526, %5498 ], [ 0.000000e+00, %5452 ]
  %5533 = call float @dx.op.dot3.f32(i32 55, float %5528, float %5529, float %5530, float %5459, float %5460, float %5461)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = fmul fast float %5533, 0x3FDF454380000000
  %5535 = fmul fast float %5533, %5533
  %5536 = fmul fast float %5535, 0x3FEE471020000000
  %5537 = fadd fast float %5536, 0xBFD42F6020000000
  %5538 = fmul fast float %5493, 0x3FD20DD760000000
  %5539 = fmul fast float %5537, %5532
  %5540 = fadd fast float %5539, %5538
  %5541 = fmul fast float %5534, %5531
  %5542 = fadd fast float %5540, %5541
  %5543 = fsub fast float %5540, %5541
  %5544 = call float @dx.op.dot3.f32(i32 55, float %5528, float %5529, float %5530, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = fmul fast float %5544, 0x3FDF454380000000
  %5546 = fmul fast float %5544, %5544
  %5547 = fmul fast float %5546, 0x3FEE471020000000
  %5548 = fadd fast float %5547, 0xBFD42F6020000000
  %5549 = call float @dx.op.dot3.f32(i32 55, float %5493, float %5531, float %5532, float 0x3FD20DD760000000, float %5545, float %5548)  ; Dot3(ax,ay,az,bx,by,bz)
  %5550 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %61)  ; FMax(a,b)
  %5551 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5552 = fcmp fast oeq float %5551, 0.000000e+00
  %5553 = fcmp fast oeq float %5550, 0.000000e+00
  %5554 = or i1 %5553, %5552
  br i1 %5554, label %5584, label %5555

; <label>:5555                                    ; preds = %5527
  %5556 = fsub fast float -0.000000e+00, %64
  %5557 = fsub fast float -0.000000e+00, %62
  %5558 = call float @dx.op.unary.f32(i32 24, float %5551)  ; Sqrt(value)
  %5559 = fdiv fast float %5558, %5550
  %5560 = fcmp fast ogt float %5559, 0x3FFB6F8900000000
  %5561 = select i1 %5560, float 0x3FFB6F8900000000, float %5559
  %5562 = fmul fast float %5561, 0x3FE8A23460000000
  %5563 = call float @dx.op.unary.f32(i32 7, float %5562)  ; Saturate(value)
  %5564 = call float @dx.op.binary.f32(i32 35, float %5561, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5565 = fmul fast float %5563, %5550
  %5566 = fmul fast float %5564, 0x3FF279A740000000
  %5567 = fadd fast float %5566, -1.000000e+00
  %5568 = call float @dx.op.dot3.f32(i32 55, float %5556, float %5557, float %63, float %5556, float %5557, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5569 = call float @dx.op.unary.f32(i32 25, float %5568)  ; Rsqrt(value)
  %5570 = fmul fast float %5569, %5556
  %5571 = fmul fast float %5569, %5557
  %5572 = fmul fast float %5569, %63
  %5573 = fmul fast float %5567, %5567
  %5574 = fsub fast float 1.000000e+00, %5573
  %5575 = fmul fast float %5564, 0x40005F8BE0000000
  %5576 = fsub fast float 0x400C5BF8A0000000, %5575
  %5577 = fdiv fast float %5565, %5576
  %5578 = fmul fast float %5577, 0x3FEE31C3C0000000
  %5579 = fmul fast float %5578, %5574
  %5580 = fmul fast float %5564, 0x3FDACB7480000000
  %5581 = fadd fast float %5580, 0xBFD7347680000000
  %5582 = fmul fast float %5581, %5577
  %5583 = fmul fast float %5582, %5574
  br label %5584

; <label>:5584                                    ; preds = %5555, %5527
  %5585 = phi float [ %5570, %5555 ], [ 0.000000e+00, %5527 ]
  %5586 = phi float [ %5571, %5555 ], [ 0.000000e+00, %5527 ]
  %5587 = phi float [ %5572, %5555 ], [ 0.000000e+00, %5527 ]
  %5588 = phi float [ %5579, %5555 ], [ 0.000000e+00, %5527 ]
  %5589 = phi float [ %5583, %5555 ], [ 0.000000e+00, %5527 ]
  %5590 = call float @dx.op.dot3.f32(i32 55, float %5585, float %5586, float %5587, float %5459, float %5460, float %5461)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = fmul fast float %5590, 0x3FDF454380000000
  %5592 = fmul fast float %5590, %5590
  %5593 = fmul fast float %5592, 0x3FEE471020000000
  %5594 = fadd fast float %5593, 0xBFD42F6020000000
  %5595 = fmul fast float %5550, 0x3FD20DD760000000
  %5596 = fmul fast float %5594, %5589
  %5597 = fadd fast float %5596, %5595
  %5598 = fmul fast float %5591, %5588
  %5599 = fadd fast float %5597, %5598
  %5600 = fsub fast float %5597, %5598
  %5601 = call float @dx.op.dot3.f32(i32 55, float %5585, float %5586, float %5587, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5602 = fmul fast float %5601, 0x3FDF454380000000
  %5603 = fmul fast float %5601, %5601
  %5604 = fmul fast float %5603, 0x3FEE471020000000
  %5605 = fadd fast float %5604, 0xBFD42F6020000000
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5550, float %5588, float %5589, float 0x3FD20DD760000000, float %5602, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %5608 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = fcmp fast oeq float %5608, 0.000000e+00
  %5610 = fcmp fast oeq float %5607, 0.000000e+00
  %5611 = or i1 %5610, %5609
  br i1 %5611, label %5641, label %5612

; <label>:5612                                    ; preds = %5584
  %5613 = fsub fast float -0.000000e+00, %60
  %5614 = fsub fast float -0.000000e+00, %58
  %5615 = call float @dx.op.unary.f32(i32 24, float %5608)  ; Sqrt(value)
  %5616 = fdiv fast float %5615, %5607
  %5617 = fcmp fast ogt float %5616, 0x3FFB6F8900000000
  %5618 = select i1 %5617, float 0x3FFB6F8900000000, float %5616
  %5619 = fmul fast float %5618, 0x3FE8A23460000000
  %5620 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5621 = call float @dx.op.binary.f32(i32 35, float %5618, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5622 = fmul fast float %5620, %5607
  %5623 = fmul fast float %5621, 0x3FF279A740000000
  %5624 = fadd fast float %5623, -1.000000e+00
  %5625 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %59, float %5613, float %5614, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5626 = call float @dx.op.unary.f32(i32 25, float %5625)  ; Rsqrt(value)
  %5627 = fmul fast float %5626, %5613
  %5628 = fmul fast float %5626, %5614
  %5629 = fmul fast float %5626, %59
  %5630 = fmul fast float %5624, %5624
  %5631 = fsub fast float 1.000000e+00, %5630
  %5632 = fmul fast float %5621, 0x40005F8BE0000000
  %5633 = fsub fast float 0x400C5BF8A0000000, %5632
  %5634 = fdiv fast float %5622, %5633
  %5635 = fmul fast float %5634, 0x3FEE31C3C0000000
  %5636 = fmul fast float %5635, %5631
  %5637 = fmul fast float %5621, 0x3FDACB7480000000
  %5638 = fadd fast float %5637, 0xBFD7347680000000
  %5639 = fmul fast float %5638, %5634
  %5640 = fmul fast float %5639, %5631
  br label %5641

; <label>:5641                                    ; preds = %5612, %5584
  %5642 = phi float [ %5627, %5612 ], [ 0.000000e+00, %5584 ]
  %5643 = phi float [ %5628, %5612 ], [ 0.000000e+00, %5584 ]
  %5644 = phi float [ %5629, %5612 ], [ 0.000000e+00, %5584 ]
  %5645 = phi float [ %5636, %5612 ], [ 0.000000e+00, %5584 ]
  %5646 = phi float [ %5640, %5612 ], [ 0.000000e+00, %5584 ]
  %5647 = call float @dx.op.dot3.f32(i32 55, float %5642, float %5643, float %5644, float %5459, float %5460, float %5461)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = fmul fast float %5647, 0x3FDF454380000000
  %5649 = fmul fast float %5647, %5647
  %5650 = fmul fast float %5649, 0x3FEE471020000000
  %5651 = fadd fast float %5650, 0xBFD42F6020000000
  %5652 = fmul fast float %5607, 0x3FD20DD760000000
  %5653 = fmul fast float %5651, %5646
  %5654 = fadd fast float %5653, %5652
  %5655 = fmul fast float %5648, %5645
  %5656 = fadd fast float %5654, %5655
  %5657 = fsub fast float %5654, %5655
  %5658 = call float @dx.op.dot3.f32(i32 55, float %5642, float %5643, float %5644, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5659 = fmul fast float %5658, 0x3FDF454380000000
  %5660 = fmul fast float %5658, %5658
  %5661 = fmul fast float %5660, 0x3FEE471020000000
  %5662 = fadd fast float %5661, 0xBFD42F6020000000
  %5663 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5645, float %5646, float 0x3FD20DD760000000, float %5659, float %5662)  ; Dot3(ax,ay,az,bx,by,bz)
  %5664 = call float @dx.op.binary.f32(i32 35, float %5542, float 0.000000e+00)  ; FMax(a,b)
  %5665 = call float @dx.op.binary.f32(i32 35, float %5599, float 0.000000e+00)  ; FMax(a,b)
  %5666 = call float @dx.op.binary.f32(i32 35, float %5656, float 0.000000e+00)  ; FMax(a,b)
  %5667 = call float @dx.op.binary.f32(i32 35, float %5543, float 0.000000e+00)  ; FMax(a,b)
  %5668 = call float @dx.op.binary.f32(i32 35, float %5600, float 0.000000e+00)  ; FMax(a,b)
  %5669 = call float @dx.op.binary.f32(i32 35, float %5657, float 0.000000e+00)  ; FMax(a,b)
  %5670 = call float @dx.op.binary.f32(i32 35, float %5549, float 0.000000e+00)  ; FMax(a,b)
  %5671 = call float @dx.op.binary.f32(i32 35, float %5606, float 0.000000e+00)  ; FMax(a,b)
  %5672 = call float @dx.op.binary.f32(i32 35, float %5663, float 0.000000e+00)  ; FMax(a,b)
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 0
  %5675 = call float @dx.op.binary.f32(i32 36, float %5453, float %5674)  ; FMin(a,b)
  %5676 = fmul fast float %5675, %5476
  %5677 = fsub fast float 1.000000e+00, %5676
  %5678 = bitcast float %5677 to i32
  %5679 = sub nsw i32 2129859010, %5678
  %5680 = bitcast i32 %5679 to float
  %5681 = call float @dx.op.binary.f32(i32 36, float %5454, float %5674)  ; FMin(a,b)
  %5682 = fmul fast float %5681, %5476
  %5683 = fsub fast float 1.000000e+00, %5682
  %5684 = bitcast float %5683 to i32
  %5685 = sub nsw i32 2129859010, %5684
  %5686 = bitcast i32 %5685 to float
  %5687 = call float @dx.op.binary.f32(i32 36, float %5455, float %5674)  ; FMin(a,b)
  %5688 = fmul fast float %5687, %5476
  %5689 = fsub fast float 1.000000e+00, %5688
  %5690 = bitcast float %5689 to i32
  %5691 = sub nsw i32 2129859010, %5690
  %5692 = bitcast i32 %5691 to float
  %5693 = fmul fast float %5664, %5475
  %5694 = fmul fast float %5693, %5680
  %5695 = fmul fast float %5665, %5475
  %5696 = fmul fast float %5695, %5686
  %5697 = fmul fast float %5666, %5475
  %5698 = fmul fast float %5697, %5692
  %5699 = call float @dx.op.binary.f32(i32 36, float %5456, float %5674)  ; FMin(a,b)
  %5700 = fmul fast float %5699, %5476
  %5701 = fsub fast float 1.000000e+00, %5700
  %5702 = bitcast float %5701 to i32
  %5703 = sub nsw i32 2129859010, %5702
  %5704 = bitcast i32 %5703 to float
  %5705 = call float @dx.op.binary.f32(i32 36, float %5457, float %5674)  ; FMin(a,b)
  %5706 = fmul fast float %5705, %5476
  %5707 = fsub fast float 1.000000e+00, %5706
  %5708 = bitcast float %5707 to i32
  %5709 = sub nsw i32 2129859010, %5708
  %5710 = bitcast i32 %5709 to float
  %5711 = call float @dx.op.binary.f32(i32 36, float %5464, float %5674)  ; FMin(a,b)
  %5712 = fmul fast float %5711, %5476
  %5713 = fsub fast float 1.000000e+00, %5712
  %5714 = bitcast float %5713 to i32
  %5715 = sub nsw i32 2129859010, %5714
  %5716 = bitcast i32 %5715 to float
  %5717 = fmul fast float %5670, %5475
  %5718 = fmul fast float %5717, %5704
  %5719 = fmul fast float %5671, %5475
  %5720 = fmul fast float %5719, %5710
  %5721 = fmul fast float %5672, %5475
  %5722 = fmul fast float %5721, %5716
  %5723 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5696, float %5698, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5724 = select i1 %245, float 0.000000e+00, float %5694
  %5725 = select i1 %245, float %5723, float %5696
  %5726 = select i1 %245, float 0.000000e+00, float %5698
  %5727 = call float @dx.op.dot3.f32(i32 55, float %5667, float %5668, float %5669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = select i1 %245, float 0.000000e+00, float %5667
  %5729 = select i1 %245, float %5727, float %5668
  %5730 = select i1 %245, float 0.000000e+00, float %5669
  %5731 = call float @dx.op.dot3.f32(i32 55, float %5718, float %5720, float %5722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5732 = select i1 %245, float 0.000000e+00, float %5718
  %5733 = select i1 %245, float %5731, float %5720
  %5734 = select i1 %245, float 0.000000e+00, float %5722
  %5735 = fmul fast float %4446, %4446
  %5736 = call float @dx.op.unary.f32(i32 7, float %5735)  ; Saturate(value)
  %5737 = fmul fast float %5466, 9.843750e-01
  %5738 = fmul fast float %5462, 9.843750e-01
  %5739 = fadd fast float %5737, 7.812500e-03
  %5740 = fadd fast float %5738, 7.812500e-03
  %5741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %5739, float %5740, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5742 = extractvalue %dx.types.ResRet.f32 %5741, 0
  %5743 = extractvalue %dx.types.ResRet.f32 %5741, 1
  %5744 = extractvalue %dx.types.ResRet.f32 %5741, 2
  %5745 = extractvalue %dx.types.ResRet.f32 %5741, 3
  %5746 = fsub fast float 1.000000e+00, %5736
  %5747 = fsub fast float %5744, %5742
  %5748 = fsub fast float %5745, %5743
  %5749 = fmul fast float %5747, %5746
  %5750 = fmul fast float %5748, %5746
  %5751 = fadd fast float %5749, %5742
  %5752 = fadd fast float %5750, %5743
  %5753 = fmul fast float %5751, %5456
  %5754 = fmul fast float %5751, %5457
  %5755 = fmul fast float %5751, %5464
  %5756 = fadd fast float %5753, %5752
  %5757 = fadd fast float %5754, %5752
  %5758 = fadd fast float %5755, %5752
  %5759 = fcmp fast ogt float %5109, 0.000000e+00
  br i1 %5759, label %5760, label %5786

; <label>:5760                                    ; preds = %5641
  %5761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5109, float %5466, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5762 = extractvalue %dx.types.ResRet.f32 %5761, 0
  %5763 = extractvalue %dx.types.ResRet.f32 %5761, 1
  %5764 = extractvalue %dx.types.ResRet.f32 %5761, 2
  %5765 = fadd fast float %5762, -5.000000e-01
  %5766 = fadd fast float %5763, -5.000000e-01
  %5767 = fadd fast float %5764, -5.000000e-01
  %5768 = fsub fast float 1.000000e+00, %5456
  %5769 = fsub fast float 1.000000e+00, %5457
  %5770 = fsub fast float 1.000000e+00, %5464
  %5771 = fmul fast float %5456, 4.000000e+00
  %5772 = fmul fast float %5771, %5768
  %5773 = fmul fast float %5772, %5765
  %5774 = fmul fast float %5457, 4.000000e+00
  %5775 = fmul fast float %5774, %5769
  %5776 = fmul fast float %5775, %5766
  %5777 = fmul fast float %5464, 4.000000e+00
  %5778 = fmul fast float %5777, %5770
  %5779 = fmul fast float %5778, %5767
  %5780 = fadd fast float %5773, %5756
  %5781 = fadd fast float %5776, %5757
  %5782 = fadd fast float %5779, %5758
  %5783 = call float @dx.op.unary.f32(i32 7, float %5780)  ; Saturate(value)
  %5784 = call float @dx.op.unary.f32(i32 7, float %5781)  ; Saturate(value)
  %5785 = call float @dx.op.unary.f32(i32 7, float %5782)  ; Saturate(value)
  br label %5786

; <label>:5786                                    ; preds = %5760, %5641
  %5787 = phi float [ %5783, %5760 ], [ %5756, %5641 ]
  %5788 = phi float [ %5784, %5760 ], [ %5757, %5641 ]
  %5789 = phi float [ %5785, %5760 ], [ %5758, %5641 ]
  %5790 = call float @dx.op.binary.f32(i32 35, float %5788, float %5789)  ; FMax(a,b)
  %5791 = call float @dx.op.binary.f32(i32 35, float %5787, float %5790)  ; FMax(a,b)
  %5792 = fsub fast float 1.000000e+00, %5791
  %5793 = fmul fast float %5791, %5462
  %5794 = fadd fast float %5793, %5462
  %5795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5796 = extractvalue %dx.types.CBufRet.f32 %5795, 2
  %5797 = extractvalue %dx.types.CBufRet.f32 %5795, 3
  %5798 = fmul fast float %5794, %5796
  %5799 = fadd fast float %5798, %5797
  %5800 = call float @dx.op.unary.f32(i32 7, float %5799)  ; Saturate(value)
  %5801 = fsub fast float 1.000000e+00, %5487
  %5802 = fadd fast float %5801, %5800
  %5803 = call float @dx.op.unary.f32(i32 7, float %5802)  ; Saturate(value)
  %5804 = fcmp fast olt float %5803, 1.000000e+00
  br i1 %5804, label %5805, label %6253

; <label>:5805                                    ; preds = %5786
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 2
  %5808 = extractvalue %dx.types.CBufRet.f32 %5806, 3
  %5809 = fmul fast float %5807, %97
  %5810 = fmul fast float %5808, %98
  %5811 = fptoui float %5809 to i32
  %5812 = fptoui float %5810 to i32
  %5813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5814 = extractvalue %dx.types.CBufRet.f32 %5813, 0
  %5815 = extractvalue %dx.types.CBufRet.f32 %5813, 2
  %5816 = extractvalue %dx.types.CBufRet.f32 %5813, 3
  %5817 = fadd fast float %85, -4.000000e+00
  %5818 = call float @dx.op.binary.f32(i32 35, float %5817, float 0.000000e+00)  ; FMax(a,b)
  %5819 = fadd fast float %5818, %5814
  %5820 = fmul fast float %5819, %5815
  %5821 = call float @dx.op.unary.f32(i32 23, float %5820)  ; Log(value)
  %5822 = fmul fast float %5821, %5816
  %5823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.f32 %5823, 2
  %5825 = fmul fast float %5822, %5824
  %5826 = call float @dx.op.unary.f32(i32 7, float %5825)  ; Saturate(value)
  %5827 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.i32 %5827, 1
  %5829 = add i32 %5828, -1
  %5830 = uitofp i32 %5828 to float
  %5831 = fmul fast float %5830, %5826
  %5832 = fptoui float %5831 to i32
  %5833 = call i32 @dx.op.binary.i32(i32 40, i32 %5832, i32 %5829)  ; UMin(a,b)
  %5834 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.i32 %5834, 2
  %5836 = extractvalue %dx.types.CBufRet.i32 %5834, 3
  %5837 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5812, i32 %5835, i32 %5811)  ; UMad(a,b,c)
  %5838 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5833, i32 %5836, i32 %5837)  ; UMad(a,b,c)
  %5839 = call float @dx.op.binary.f32(i32 35, float %85, float 0.000000e+00)  ; FMax(a,b)
  %5840 = fptoui float %5839 to i32
  %5841 = lshr i32 %5840, 5
  %5842 = call i32 @dx.op.binary.i32(i32 40, i32 %5841, i32 8191)  ; UMin(a,b)
  br i1 false, label %5843, label %5850

; <label>:5843                                    ; preds = %5805
  %5844 = fadd fast float 0.000000e+00, %5474
  %5845 = call float @dx.op.dot3.f32(i32 55, float %5472, float %5473, float %5844, float %5472, float %5473, float %5844)  ; Dot3(ax,ay,az,bx,by,bz)
  %5846 = call float @dx.op.unary.f32(i32 25, float %5845)  ; Rsqrt(value)
  %5847 = fmul fast float %5846, %5472
  %5848 = fmul fast float %5846, %5473
  %5849 = fmul fast float %5844, %5846
  br label %5850

; <label>:5850                                    ; preds = %5843, %5805
  %5851 = phi float [ %5847, %5843 ], [ %5472, %5805 ]
  %5852 = phi float [ %5848, %5843 ], [ %5473, %5805 ]
  %5853 = phi float [ %5849, %5843 ], [ %5474, %5805 ]
  %5854 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.i32 %5854, 2
  %5856 = add nsw i32 %5855, -1
  %5857 = call i32 @dx.op.binary.i32(i32 37, i32 %5856, i32 0)  ; IMax(a,b)
  %5858 = shl i32 %5842, 2
  %5859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5858, i32 undef)  ; BufferLoad(srv,index,wot)
  %5860 = extractvalue %dx.types.ResRet.i32 %5859, 0
  %5861 = lshr i32 %5860, 16
  %5862 = and i32 %5860, 65535
  %5863 = lshr i32 %5860, 21
  %5864 = lshr i32 %5862, 5
  %5865 = call i32 @dx.op.binary.i32(i32 40, i32 %5864, i32 %5857)  ; UMin(a,b)
  %5866 = icmp ugt i32 %5863, %5865
  br i1 %5866, label %6229, label %5867

; <label>:5867                                    ; preds = %5850
  br label %5868

; <label>:5868                                    ; preds = %6221, %5867
  %5869 = phi float [ %6222, %6221 ], [ 0.000000e+00, %5867 ]
  %5870 = phi float [ %6223, %6221 ], [ 0.000000e+00, %5867 ]
  %5871 = phi float [ %6224, %6221 ], [ 0.000000e+00, %5867 ]
  %5872 = phi float [ %6225, %6221 ], [ 1.000000e+00, %5867 ]
  %5873 = phi i32 [ %6226, %6221 ], [ %5863, %5867 ]
  %5874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5875 = extractvalue %dx.types.CBufRet.i32 %5874, 2
  %5876 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5838, i32 %5875, i32 %5873)  ; UMad(a,b,c)
  %5877 = shl i32 %5876, 2
  %5878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5877, i32 undef)  ; BufferLoad(srv,index,wot)
  %5879 = extractvalue %dx.types.ResRet.i32 %5878, 0
  %5880 = shl i32 %5873, 5
  %5881 = sub nsw i32 %5861, %5880
  %5882 = call i32 @dx.op.binary.i32(i32 37, i32 %5881, i32 0)  ; IMax(a,b)
  %5883 = call i32 @dx.op.binary.i32(i32 38, i32 %5882, i32 31)  ; IMin(a,b)
  %5884 = sub nsw i32 1, %5861
  %5885 = add nsw i32 %5884, %5862
  %5886 = call i32 @dx.op.binary.i32(i32 37, i32 %5885, i32 0)  ; IMax(a,b)
  %5887 = call i32 @dx.op.binary.i32(i32 38, i32 %5886, i32 32)  ; IMin(a,b)
  %5888 = and i32 %5887, 31
  %5889 = shl i32 -1, %5888
  %5890 = xor i32 %5889, -1
  %5891 = and i32 %5883, 31
  %5892 = shl i32 %5890, %5891
  %5893 = icmp eq i32 %5887, 32
  %5894 = select i1 %5893, i32 -1, i32 %5892
  %5895 = and i32 %5894, %5879
  %5896 = icmp eq i32 %5895, 0
  br i1 %5896, label %6221, label %5897

; <label>:5897                                    ; preds = %5868
  br label %5898

; <label>:5898                                    ; preds = %6004, %5897
  %5899 = phi float [ %6005, %6004 ], [ %5869, %5897 ]
  %5900 = phi float [ %6006, %6004 ], [ %5870, %5897 ]
  %5901 = phi float [ %6007, %6004 ], [ %5871, %5897 ]
  %5902 = phi float [ %6008, %6004 ], [ %5872, %5897 ]
  %5903 = phi i32 [ %5908, %6004 ], [ %5895, %5897 ]
  %5904 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5903)  ; FirstbitLo(value)
  %5905 = add i32 %5904, %5880
  %5906 = and i32 %5904, 31
  %5907 = shl i32 1, %5906
  %5908 = xor i32 %5907, %5903
  %5909 = mul i32 %5905, 72
  %5910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5909, i32 undef)  ; BufferLoad(srv,index,wot)
  %5911 = extractvalue %dx.types.ResRet.f32 %5910, 0
  %5912 = extractvalue %dx.types.ResRet.f32 %5910, 1
  %5913 = extractvalue %dx.types.ResRet.f32 %5910, 2
  %5914 = add i32 %5909, 12
  %5915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5914, i32 undef)  ; BufferLoad(srv,index,wot)
  %5916 = extractvalue %dx.types.ResRet.i32 %5915, 0
  %5917 = add i32 %5909, 16
  %5918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5917, i32 undef)  ; BufferLoad(srv,index,wot)
  %5919 = extractvalue %dx.types.ResRet.f32 %5918, 0
  %5920 = extractvalue %dx.types.ResRet.f32 %5918, 1
  %5921 = extractvalue %dx.types.ResRet.f32 %5918, 2
  %5922 = add i32 %5909, 28
  %5923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5922, i32 undef)  ; BufferLoad(srv,index,wot)
  %5924 = extractvalue %dx.types.ResRet.f32 %5923, 0
  %5925 = add i32 %5909, 32
  %5926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5925, i32 undef)  ; BufferLoad(srv,index,wot)
  %5927 = extractvalue %dx.types.ResRet.f32 %5926, 0
  %5928 = extractvalue %dx.types.ResRet.f32 %5926, 1
  %5929 = extractvalue %dx.types.ResRet.f32 %5926, 2
  %5930 = extractvalue %dx.types.ResRet.f32 %5926, 3
  %5931 = add i32 %5909, 48
  %5932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5931, i32 undef)  ; BufferLoad(srv,index,wot)
  %5933 = extractvalue %dx.types.ResRet.f32 %5932, 0
  %5934 = extractvalue %dx.types.ResRet.f32 %5932, 1
  %5935 = add i32 %5909, 56
  %5936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5935, i32 undef)  ; BufferLoad(srv,index,wot)
  %5937 = extractvalue %dx.types.ResRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.ResRet.f32 %5936, 1
  %5939 = add i32 %5909, 64
  %5940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5939, i32 undef)  ; BufferLoad(srv,index,wot)
  %5941 = extractvalue %dx.types.ResRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.ResRet.f32 %5940, 1
  %5943 = mul i32 %5905, 60
  %5944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5943, i32 undef)  ; BufferLoad(srv,index,wot)
  %5945 = extractvalue %dx.types.ResRet.f32 %5944, 0
  %5946 = extractvalue %dx.types.ResRet.f32 %5944, 1
  %5947 = extractvalue %dx.types.ResRet.f32 %5944, 2
  %5948 = add i32 %5943, 12
  %5949 = add i32 %5943, 48
  %5950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5949, i32 undef)  ; BufferLoad(srv,index,wot)
  %5951 = extractvalue %dx.types.ResRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.ResRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.ResRet.f32 %5950, 2
  %5954 = and i32 %5916, 32767
  %5955 = bitcast float %5911 to i32
  %5956 = icmp eq i32 %5955, -1
  %5957 = bitcast float %5912 to i32
  %5958 = and i32 %5916, 32768
  %5959 = icmp ne i32 %5958, 0
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 0
  %5962 = extractvalue %dx.types.CBufRet.f32 %5960, 1
  %5963 = extractvalue %dx.types.CBufRet.f32 %5960, 2
  %5964 = fsub fast float %5945, %5961
  %5965 = fsub fast float %5946, %5962
  %5966 = fsub fast float %5947, %5963
  %5967 = fsub fast float %152, %5964
  %5968 = fsub fast float %153, %5965
  %5969 = fsub fast float %154, %5966
  %5970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5948, i32 undef)  ; BufferLoad(srv,index,wot)
  %5971 = extractvalue %dx.types.ResRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.ResRet.f32 %5970, 1
  %5973 = extractvalue %dx.types.ResRet.f32 %5970, 2
  %5974 = call float @dx.op.dot3.f32(i32 55, float %5967, float %5968, float %5969, float %5971, float %5972, float %5973)  ; Dot3(ax,ay,az,bx,by,bz)
  %5975 = add i32 %5943, 24
  %5976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5975, i32 undef)  ; BufferLoad(srv,index,wot)
  %5977 = extractvalue %dx.types.ResRet.f32 %5976, 0
  %5978 = extractvalue %dx.types.ResRet.f32 %5976, 1
  %5979 = extractvalue %dx.types.ResRet.f32 %5976, 2
  %5980 = call float @dx.op.dot3.f32(i32 55, float %5967, float %5968, float %5969, float %5977, float %5978, float %5979)  ; Dot3(ax,ay,az,bx,by,bz)
  %5981 = add i32 %5943, 36
  %5982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5981, i32 undef)  ; BufferLoad(srv,index,wot)
  %5983 = extractvalue %dx.types.ResRet.f32 %5982, 0
  %5984 = extractvalue %dx.types.ResRet.f32 %5982, 1
  %5985 = extractvalue %dx.types.ResRet.f32 %5982, 2
  %5986 = call float @dx.op.dot3.f32(i32 55, float %5967, float %5968, float %5969, float %5983, float %5984, float %5985)  ; Dot3(ax,ay,az,bx,by,bz)
  %5987 = call float @dx.op.unary.f32(i32 6, float %5974)  ; FAbs(value)
  %5988 = call float @dx.op.unary.f32(i32 6, float %5980)  ; FAbs(value)
  %5989 = call float @dx.op.unary.f32(i32 6, float %5986)  ; FAbs(value)
  %5990 = fsub fast float %5951, %5987
  %5991 = fsub fast float %5952, %5988
  %5992 = fsub fast float %5953, %5989
  %5993 = fmul fast float %5990, %5919
  %5994 = fmul fast float %5991, %5920
  %5995 = fmul fast float %5992, %5921
  %5996 = call float @dx.op.binary.f32(i32 36, float %5994, float %5995)  ; FMin(a,b)
  %5997 = call float @dx.op.binary.f32(i32 36, float %5993, float %5996)  ; FMin(a,b)
  %5998 = call float @dx.op.unary.f32(i32 7, float %5997)  ; Saturate(value)
  %5999 = call float @dx.op.binary.f32(i32 36, float %5902, float %5998)  ; FMin(a,b)
  %6000 = uitofp i1 %5959 to float
  %6001 = fsub fast float 1.000000e+00, %6000
  %6002 = fmul fast float %5999, %6001
  %6003 = fcmp fast ogt float %6002, 0.000000e+00
  br i1 %6003, label %6010, label %6004

; <label>:6004                                    ; preds = %6152, %5898
  %6005 = phi float [ %6216, %6152 ], [ %5899, %5898 ]
  %6006 = phi float [ %6217, %6152 ], [ %5900, %5898 ]
  %6007 = phi float [ %6218, %6152 ], [ %5901, %5898 ]
  %6008 = phi float [ %6219, %6152 ], [ %5902, %5898 ]
  %6009 = icmp eq i32 %5903, %5907
  br i1 %6009, label %6220, label %5898

; <label>:6010                                    ; preds = %5898
  br i1 %5956, label %6068, label %6011

; <label>:6011                                    ; preds = %6010
  %6012 = fsub fast float -0.000000e+00, %5971
  %6013 = fsub fast float -0.000000e+00, %5972
  %6014 = fsub fast float -0.000000e+00, %5973
  %6015 = call float @dx.op.dot3.f32(i32 55, float %5851, float %5852, float %5853, float %6012, float %6013, float %6014)  ; Dot3(ax,ay,az,bx,by,bz)
  %6016 = fsub fast float -0.000000e+00, %6015
  %6017 = call float @dx.op.dot3.f32(i32 55, float %5967, float %5968, float %5969, float %6012, float %6013, float %6014)  ; Dot3(ax,ay,az,bx,by,bz)
  %6018 = fadd fast float %6017, %5934
  %6019 = fadd fast float %5933, %6017
  %6020 = fsub fast float -0.000000e+00, %6019
  %6021 = fcmp ogt float %6015, -0.000000e+00
  %6022 = select i1 %6021, float %6020, float %6018
  %6023 = call float @dx.op.unary.f32(i32 6, float %6016)  ; FAbs(value)
  %6024 = fdiv fast float 1.000000e+00, %6023
  %6025 = fmul fast float %6022, %6024
  %6026 = call float @dx.op.binary.f32(i32 35, float %6025, float 0.000000e+00)  ; FMax(a,b)
  %6027 = fsub fast float -0.000000e+00, %5977
  %6028 = fsub fast float -0.000000e+00, %5978
  %6029 = fsub fast float -0.000000e+00, %5979
  %6030 = call float @dx.op.dot3.f32(i32 55, float %5851, float %5852, float %5853, float %6027, float %6028, float %6029)  ; Dot3(ax,ay,az,bx,by,bz)
  %6031 = fsub fast float -0.000000e+00, %6030
  %6032 = call float @dx.op.dot3.f32(i32 55, float %5967, float %5968, float %5969, float %6027, float %6028, float %6029)  ; Dot3(ax,ay,az,bx,by,bz)
  %6033 = fadd fast float %6032, %5938
  %6034 = fadd fast float %5937, %6032
  %6035 = fsub fast float -0.000000e+00, %6034
  %6036 = fcmp ogt float %6030, -0.000000e+00
  %6037 = select i1 %6036, float %6035, float %6033
  %6038 = call float @dx.op.unary.f32(i32 6, float %6031)  ; FAbs(value)
  %6039 = fdiv fast float 1.000000e+00, %6038
  %6040 = fmul fast float %6037, %6039
  %6041 = call float @dx.op.binary.f32(i32 35, float %6040, float 0.000000e+00)  ; FMax(a,b)
  %6042 = fsub fast float -0.000000e+00, %5983
  %6043 = fsub fast float -0.000000e+00, %5984
  %6044 = fsub fast float -0.000000e+00, %5985
  %6045 = call float @dx.op.dot3.f32(i32 55, float %5851, float %5852, float %5853, float %6042, float %6043, float %6044)  ; Dot3(ax,ay,az,bx,by,bz)
  %6046 = fsub fast float -0.000000e+00, %6045
  %6047 = call float @dx.op.dot3.f32(i32 55, float %5967, float %5968, float %5969, float %6042, float %6043, float %6044)  ; Dot3(ax,ay,az,bx,by,bz)
  %6048 = fadd fast float %6047, %5942
  %6049 = fadd fast float %5941, %6047
  %6050 = fsub fast float -0.000000e+00, %6049
  %6051 = fcmp ogt float %6045, -0.000000e+00
  %6052 = select i1 %6051, float %6050, float %6048
  %6053 = call float @dx.op.unary.f32(i32 6, float %6046)  ; FAbs(value)
  %6054 = fdiv fast float 1.000000e+00, %6053
  %6055 = fmul fast float %6052, %6054
  %6056 = call float @dx.op.binary.f32(i32 35, float %6055, float 0.000000e+00)  ; FMax(a,b)
  %6057 = call float @dx.op.binary.f32(i32 36, float %6041, float %6056)  ; FMin(a,b)
  %6058 = call float @dx.op.binary.f32(i32 36, float %6026, float %6057)  ; FMin(a,b)
  %6059 = fmul fast float %6058, %5851
  %6060 = fmul fast float %6058, %5852
  %6061 = fmul fast float %6058, %5853
  %6062 = fadd fast float %6059, %152
  %6063 = fadd fast float %6060, %153
  %6064 = fadd fast float %6061, %154
  %6065 = fsub fast float %6062, %5911
  %6066 = fsub fast float %6063, %5912
  %6067 = fsub fast float %6064, %5913
  br label %6075

; <label>:6068                                    ; preds = %6010
  %6069 = fmul fast float %5851, 8.096000e+03
  %6070 = fmul fast float %5852, 8.096000e+03
  %6071 = fmul fast float %5853, 8.096000e+03
  %6072 = fadd fast float %6069, %152
  %6073 = fadd fast float %6070, %153
  %6074 = fadd fast float %6071, %154
  br label %6075

; <label>:6075                                    ; preds = %6068, %6011
  %6076 = phi float [ %5851, %6068 ], [ %6065, %6011 ]
  %6077 = phi float [ %5852, %6068 ], [ %6066, %6011 ]
  %6078 = phi float [ %5853, %6068 ], [ %6067, %6011 ]
  %6079 = phi float [ %6072, %6068 ], [ %6062, %6011 ]
  %6080 = phi float [ %6073, %6068 ], [ %6063, %6011 ]
  %6081 = phi float [ %6074, %6068 ], [ %6064, %6011 ]
  %6082 = fcmp fast olt float %5930, 1.000000e+00
  br i1 %6082, label %6083, label %6114, !dx.controlflow.hints !87

; <label>:6083                                    ; preds = %6075
  %6084 = fmul fast float %6078, %5928
  %6085 = fmul fast float %6077, %5929
  %6086 = fsub fast float %6084, %6085
  %6087 = fmul fast float %6076, %5929
  %6088 = fmul fast float %6078, %5927
  %6089 = fsub fast float %6087, %6088
  %6090 = fmul fast float %6077, %5927
  %6091 = fmul fast float %6076, %5928
  %6092 = fsub fast float %6090, %6091
  %6093 = fmul fast float %6086, 2.000000e+00
  %6094 = fmul fast float %6089, 2.000000e+00
  %6095 = fmul fast float %6092, 2.000000e+00
  %6096 = fmul fast float %6093, %5930
  %6097 = fmul fast float %6094, %5930
  %6098 = fmul fast float %6095, %5930
  %6099 = fmul fast float %6095, %5928
  %6100 = fmul fast float %6094, %5929
  %6101 = fmul fast float %6093, %5929
  %6102 = fmul fast float %6095, %5927
  %6103 = fmul fast float %6094, %5927
  %6104 = fmul fast float %6093, %5928
  %6105 = fadd fast float %6099, %6076
  %6106 = fadd fast float %6105, %6096
  %6107 = fsub fast float %6106, %6100
  %6108 = fsub fast float %6077, %6102
  %6109 = fadd fast float %6108, %6097
  %6110 = fadd fast float %6109, %6101
  %6111 = fadd fast float %6098, %6078
  %6112 = fsub fast float %6111, %6104
  %6113 = fadd fast float %6112, %6103
  br label %6114

; <label>:6114                                    ; preds = %6083, %6075
  %6115 = phi float [ %6107, %6083 ], [ %6076, %6075 ]
  %6116 = phi float [ %6110, %6083 ], [ %6077, %6075 ]
  %6117 = phi float [ %6113, %6083 ], [ %6078, %6075 ]
  br i1 %5956, label %6149, label %6118

; <label>:6118                                    ; preds = %6114
  %6119 = fmul fast float %5462, 0x400187C840000000
  %6120 = fadd fast float %6119, 0xC00EFC2120000000
  %6121 = fmul fast float %6120, %5462
  %6122 = fadd fast float %6121, 0x3FE5D16340000000
  %6123 = fmul fast float %6122, %5462
  %6124 = fadd fast float %6123, 1.000000e+00
  %6125 = call float @dx.op.unary.f32(i32 7, float %6124)  ; Saturate(value)
  %6126 = fsub fast float %6079, %152
  %6127 = fsub fast float %6080, %153
  %6128 = fsub fast float %6081, %154
  %6129 = fsub fast float %6079, %5911
  %6130 = fsub fast float %6080, %5912
  %6131 = fsub fast float %6081, %5913
  %6132 = call float @dx.op.dot3.f32(i32 55, float %6126, float %6127, float %6128, float %6126, float %6127, float %6128)  ; Dot3(ax,ay,az,bx,by,bz)
  %6133 = call float @dx.op.dot3.f32(i32 55, float %6129, float %6130, float %6131, float %6129, float %6130, float %6131)  ; Dot3(ax,ay,az,bx,by,bz)
  %6134 = fadd fast float %6133, 0x3EE4F8B580000000
  %6135 = fdiv fast float %6132, %6134
  %6136 = bitcast float %6135 to i32
  %6137 = ashr i32 %6136, 1
  %6138 = add nsw i32 %6137, 532487669
  %6139 = bitcast i32 %6138 to float
  %6140 = fmul fast float %6139, %6125
  %6141 = call float @dx.op.unary.f32(i32 7, float %6140)  ; Saturate(value)
  %6142 = fmul fast float %6141, 0x4009981AE0000000
  %6143 = fsub fast float 0x40111BBD80000000, %6142
  %6144 = fmul fast float %6143, %6141
  %6145 = fadd fast float %6144, 0xC0009F6020000000
  %6146 = fmul fast float %6145, %6141
  %6147 = fadd fast float %6146, 1.000000e+00
  %6148 = call float @dx.op.unary.f32(i32 7, float %6147)  ; Saturate(value)
  br label %6152

; <label>:6149                                    ; preds = %6114
  %6150 = icmp ne i32 %5957, -1
  %6151 = zext i1 %6150 to i32
  br label %6152

; <label>:6152                                    ; preds = %6149, %6118
  %6153 = phi float [ %5462, %6149 ], [ %6148, %6118 ]
  %6154 = phi i32 [ %6151, %6149 ], [ 0, %6118 ]
  %6155 = fmul float %6153, 5.000000e+00
  %6156 = fsub float 5.000000e+00, %6155
  %6157 = icmp ne i32 %6154, 0
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6158, 3
  %6160 = fadd fast float %6159, %6156
  %6161 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6160)  ; FMax(a,b)
  %6162 = call float @dx.op.unary.f32(i32 6, float %6115)  ; FAbs(value)
  %6163 = call float @dx.op.unary.f32(i32 6, float %6116)  ; FAbs(value)
  %6164 = fadd fast float %6163, %6162
  %6165 = call float @dx.op.unary.f32(i32 6, float %6117)  ; FAbs(value)
  %6166 = fadd fast float %6164, %6165
  %6167 = fcmp fast oeq float %6166, 0.000000e+00
  %6168 = fdiv fast float 1.000000e+00, %6166
  %6169 = select i1 %6167, float 1.000000e+00, float %6168
  %6170 = fmul fast float %6169, %6115
  %6171 = fmul fast float %6169, %6116
  %6172 = call float @dx.op.unary.f32(i32 6, float %6171)  ; FAbs(value)
  %6173 = call float @dx.op.unary.f32(i32 6, float %6170)  ; FAbs(value)
  %6174 = fsub fast float 1.000000e+00, %6172
  %6175 = fsub fast float 1.000000e+00, %6173
  %6176 = fcmp fast oge float %6170, 0.000000e+00
  %6177 = fcmp fast oge float %6171, 0.000000e+00
  %6178 = select i1 %6176, float 1.000000e+00, float -1.000000e+00
  %6179 = select i1 %6177, float 1.000000e+00, float -1.000000e+00
  %6180 = fcmp fast ole float %6117, 0.000000e+00
  %6181 = fmul fast float %6178, %6174
  %6182 = fmul fast float %6179, %6175
  %6183 = select i1 %6180, float %6181, float %6170
  %6184 = select i1 %6180, float %6182, float %6171
  %6185 = fmul fast float %6183, 5.000000e-01
  %6186 = fmul fast float %6184, 5.000000e-01
  %6187 = fadd fast float %6185, 5.000000e-01
  %6188 = fadd fast float %6186, 5.000000e-01
  %6189 = uitofp i32 %5954 to float
  %6190 = call float @dx.op.binary.f32(i32 36, float %6161, float 3.000000e+00)  ; FMin(a,b)
  %6191 = fadd fast float %6190, 2.000000e+00
  %6192 = call float @dx.op.unary.f32(i32 21, float %6191)  ; Exp(value)
  %6193 = extractvalue %dx.types.CBufRet.f32 %6158, 1
  %6194 = fmul fast float %6193, %6192
  %6195 = fmul fast float %6194, 2.000000e+00
  %6196 = fsub fast float 1.000000e+00, %6195
  %6197 = fmul fast float %6187, %6196
  %6198 = fmul fast float %6188, %6196
  %6199 = fadd fast float %6197, %6194
  %6200 = fadd fast float %6198, %6194
  %6201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %6199, float %6200, float %6189, float undef, i32 0, i32 0, i32 undef, float %6161)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6202 = extractvalue %dx.types.ResRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.ResRet.f32 %6201, 1
  %6204 = extractvalue %dx.types.ResRet.f32 %6201, 2
  %6205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6205, 3
  %6207 = fmul fast float %6206, %5924
  %6208 = call float @dx.op.binary.f32(i32 36, float %5492, float %6207)  ; FMin(a,b)
  %6209 = select i1 %6157, float %6208, float %6207
  %6210 = fmul fast float %6202, %6002
  %6211 = fmul fast float %6210, %6209
  %6212 = fmul fast float %6203, %6002
  %6213 = fmul fast float %6212, %6209
  %6214 = fmul fast float %6204, %6002
  %6215 = fmul fast float %6214, %6209
  %6216 = fadd fast float %6211, %5899
  %6217 = fadd fast float %6213, %5900
  %6218 = fadd fast float %6215, %5901
  %6219 = fsub fast float %5902, %6002
  br label %6004

; <label>:6220                                    ; preds = %6004
  br label %6221

; <label>:6221                                    ; preds = %6220, %5868
  %6222 = phi float [ %5869, %5868 ], [ %6005, %6220 ]
  %6223 = phi float [ %5870, %5868 ], [ %6006, %6220 ]
  %6224 = phi float [ %5871, %5868 ], [ %6007, %6220 ]
  %6225 = phi float [ %5872, %5868 ], [ %6008, %6220 ]
  %6226 = add i32 %5873, 1
  %6227 = icmp ugt i32 %6226, %5865
  br i1 %6227, label %6228, label %5868, !llvm.loop !88

; <label>:6228                                    ; preds = %6221
  br label %6229

; <label>:6229                                    ; preds = %6228, %5850
  %6230 = phi float [ 0.000000e+00, %5850 ], [ %6222, %6228 ]
  %6231 = phi float [ 0.000000e+00, %5850 ], [ %6223, %6228 ]
  %6232 = phi float [ 0.000000e+00, %5850 ], [ %6224, %6228 ]
  %6233 = call float @dx.op.dot3.f32(i32 55, float %6230, float %6231, float %6232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6234 = select i1 %245, float 0.000000e+00, float %6230
  %6235 = select i1 %245, float %6233, float %6231
  %6236 = select i1 %245, float 0.000000e+00, float %6232
  %6237 = fcmp fast olt float %5803, 0.000000e+00
  %6238 = call float @dx.op.unary.f32(i32 6, float %5803)  ; FAbs(value)
  %6239 = fmul fast float %6238, %5732
  %6240 = fmul fast float %6238, %5733
  %6241 = fmul fast float %6238, %5734
  %6242 = select i1 %6237, float %5732, float %6239
  %6243 = select i1 %6237, float %5733, float %6240
  %6244 = select i1 %6237, float %5734, float %6241
  %6245 = fsub fast float 1.000000e+00, %6238
  %6246 = call float @dx.op.unary.f32(i32 7, float %6245)  ; Saturate(value)
  %6247 = fmul fast float %6246, %6234
  %6248 = fmul fast float %6246, %6235
  %6249 = fmul fast float %6246, %6236
  %6250 = fadd fast float %6242, %6247
  %6251 = fadd fast float %6243, %6248
  %6252 = fadd fast float %6244, %6249
  br label %6253

; <label>:6253                                    ; preds = %6229, %5786
  %6254 = phi float [ %5732, %5786 ], [ %6250, %6229 ]
  %6255 = phi float [ %5733, %5786 ], [ %6251, %6229 ]
  %6256 = phi float [ %5734, %5786 ], [ %6252, %6229 ]
  %6257 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5454, float %5455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6258 = fcmp fast ogt float %6257, 0x3E7FF19E20000000
  %6259 = fdiv fast float 1.000000e+00, %6257
  %6260 = select i1 %6258, float %6259, float 0.000000e+00
  %6261 = fmul fast float %6260, %5453
  %6262 = fmul fast float %6260, %5454
  %6263 = fmul fast float %6260, %5455
  %6264 = fadd fast float %6261, -1.000000e+00
  %6265 = fadd fast float %6262, -1.000000e+00
  %6266 = fadd fast float %6263, -1.000000e+00
  %6267 = fmul fast float %6264, 5.000000e-01
  %6268 = fmul fast float %6265, 5.000000e-01
  %6269 = fmul fast float %6266, 5.000000e-01
  %6270 = fadd fast float %6267, 1.000000e+00
  %6271 = fadd fast float %6268, 1.000000e+00
  %6272 = fadd fast float %6269, 1.000000e+00
  %6273 = call float @dx.op.binary.f32(i32 35, float %5466, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6274 = fdiv fast float %4446, %6273
  %6275 = fcmp fast olt float %5180, 1.270000e+02
  %6276 = fcmp fast olt float %5181, 1.270000e+02
  %6277 = fcmp fast olt float %5182, 1.270000e+02
  %6278 = fmul fast float %5180, 0xBFF7154760000000
  %6279 = fmul fast float %6278, %6274
  %6280 = fmul fast float %5181, 0xBFF7154760000000
  %6281 = fmul fast float %6280, %6274
  %6282 = fmul fast float %5182, 0xBFF7154760000000
  %6283 = fmul fast float %6282, %6274
  %6284 = call float @dx.op.unary.f32(i32 21, float %6279)  ; Exp(value)
  %6285 = call float @dx.op.unary.f32(i32 21, float %6281)  ; Exp(value)
  %6286 = call float @dx.op.unary.f32(i32 21, float %6283)  ; Exp(value)
  %6287 = call float @dx.op.unary.f32(i32 7, float %6284)  ; Saturate(value)
  %6288 = call float @dx.op.unary.f32(i32 7, float %6285)  ; Saturate(value)
  %6289 = call float @dx.op.unary.f32(i32 7, float %6286)  ; Saturate(value)
  %6290 = select i1 %6275, float %6287, float 0.000000e+00
  %6291 = select i1 %6276, float %6288, float 0.000000e+00
  %6292 = select i1 %6277, float %6289, float 0.000000e+00
  %6293 = fmul fast float %6290, %5792
  %6294 = fmul fast float %6291, %5792
  %6295 = fmul fast float %6292, %5792
  %6296 = fadd fast float %6293, -1.000000e+00
  %6297 = fadd fast float %6294, -1.000000e+00
  %6298 = fadd fast float %6295, -1.000000e+00
  %6299 = fmul fast float %6296, %5135
  %6300 = fmul fast float %6297, %5135
  %6301 = fmul fast float %6298, %5135
  %6302 = fmul fast float %6254, %5787
  %6303 = fmul fast float %6255, %5788
  %6304 = fmul fast float %6256, %5789
  %6305 = fsub fast float 1.000000e+00, %5466
  %6306 = bitcast float %6305 to i32
  %6307 = sitofp i32 %6306 to float
  %6308 = fmul fast float %6307, 5.000000e+00
  %6309 = fadd fast float %6308, 0xC1EFBF8940000000
  %6310 = fptosi float %6309 to i32
  %6311 = bitcast i32 %6310 to float
  %6312 = fmul fast float %6311, %5110
  %6313 = fmul fast float %5724, %6312
  %6314 = fmul fast float %6313, %5792
  %6315 = fmul fast float %6314, %6270
  %6316 = fmul fast float %5725, %6312
  %6317 = fmul fast float %6316, %5792
  %6318 = fmul fast float %6317, %6271
  %6319 = fmul fast float %5726, %6312
  %6320 = fmul fast float %6319, %5792
  %6321 = fmul fast float %6320, %6272
  %6322 = fadd fast float %6302, %5102
  %6323 = fadd fast float %6322, %6315
  %6324 = fmul fast float %6323, %5135
  %6325 = fadd fast float %6303, %5103
  %6326 = fadd fast float %6325, %6318
  %6327 = fmul fast float %6326, %5135
  %6328 = fadd fast float %6304, %5104
  %6329 = fadd fast float %6328, %6321
  %6330 = fmul fast float %6329, %5135
  %6331 = fmul fast float %5457, 0x4012D0A400000000
  %6332 = fadd fast float %6301, 1.000000e+00
  %6333 = fadd fast float %6300, 1.000000e+00
  %6334 = fadd fast float %6299, 1.000000e+00
  %6335 = fmul fast float %5792, %5726
  %6336 = fmul fast float %5792, %5725
  %6337 = fmul fast float %5792, %5724
  %6338 = fmul fast float %5481, %5135
  %6339 = fsub fast float 1.000000e+00, %6338
  %6340 = call float @dx.op.unary.f32(i32 7, float %6339)  ; Saturate(value)
  %6341 = fsub fast float 1.000000e+00, %6340
  %6342 = fadd fast float %6331, 0x3FDB6377A0000000
  %6343 = fmul fast float %6341, %6342
  %6344 = call float @dx.op.dot3.f32(i32 55, float %5198, float %5199, float %5200, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6345 = fadd fast float %6343, %6344
  %6346 = call float @dx.op.unary.f32(i32 7, float %6345)  ; Saturate(value)
  %6347 = call float @dx.op.binary.f32(i32 35, float %6346, float 0x3F847AE140000000)  ; FMax(a,b)
  %6348 = fmul fast float %6347, %6347
  %6349 = fmul fast float %6348, %6348
  %6350 = fmul fast float %6349, 0xC00A935000000000
  %6351 = call float @dx.op.unary.f32(i32 21, float %6350)  ; Exp(value)
  %6352 = fsub fast float 1.000000e+00, %6351
  %6353 = fmul fast float %6334, %5728
  %6354 = fmul fast float %6353, %6352
  %6355 = fmul fast float %6333, %5729
  %6356 = fmul fast float %6355, %6352
  %6357 = fmul fast float %6332, %5730
  %6358 = fmul fast float %6357, %6352
  %6359 = fadd fast float %6354, %6337
  %6360 = fmul fast float %6359, %5135
  %6361 = fadd fast float %6356, %6336
  %6362 = fmul fast float %6361, %5135
  %6363 = fadd fast float %6358, %6335
  %6364 = fmul fast float %6363, %5135
  %6365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6366 = extractvalue %dx.types.CBufRet.f32 %6365, 3
  %6367 = fcmp fast oeq float %6366, 0.000000e+00
  br i1 %6367, label %7971, label %6368

; <label>:6368                                    ; preds = %6253
  %6369 = extractvalue %dx.types.CBufRet.f32 %6365, 0
  %6370 = extractvalue %dx.types.CBufRet.f32 %6365, 1
  %6371 = extractvalue %dx.types.CBufRet.f32 %6365, 2
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 0
  %6374 = extractvalue %dx.types.CBufRet.f32 %6372, 1
  %6375 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6377 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %6378 = extractvalue %dx.types.CBufRet.f32 %6376, 1
  %6379 = call float @dx.op.dot3.f32(i32 55, float %6373, float %6374, float %6375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6380 = select i1 %245, float %6377, float %6373
  %6381 = select i1 %245, float %6379, float %6374
  %6382 = select i1 %245, float %6378, float %6375
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 2
  %6385 = fmul fast float %6384, %104
  %6386 = fmul fast float %6384, %105
  %6387 = fmul fast float %6384, %106
  %6388 = fadd fast float %6385, %152
  %6389 = fadd fast float %6386, %153
  %6390 = fadd fast float %6387, %154
  %6391 = fcmp fast olt float %6366, 0.000000e+00
  br i1 %6391, label %7487, label %6392

; <label>:6392                                    ; preds = %6368
  %6393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6393, 0
  %6395 = extractvalue %dx.types.CBufRet.f32 %6393, 1
  %6396 = extractvalue %dx.types.CBufRet.f32 %6393, 2
  %6397 = extractvalue %dx.types.CBufRet.f32 %6393, 3
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.CBufRet.f32 %6398, 1
  %6401 = extractvalue %dx.types.CBufRet.f32 %6398, 2
  %6402 = extractvalue %dx.types.CBufRet.f32 %6398, 3
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6407 = extractvalue %dx.types.CBufRet.f32 %6403, 3
  %6408 = fmul fast float %6394, %6388
  %6409 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6395, float %6408)  ; FMad(a,b,c)
  %6410 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %6396, float %6409)  ; FMad(a,b,c)
  %6411 = fadd fast float %6410, %6397
  %6412 = fmul fast float %6399, %6388
  %6413 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6400, float %6412)  ; FMad(a,b,c)
  %6414 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %6401, float %6413)  ; FMad(a,b,c)
  %6415 = fadd fast float %6414, %6402
  %6416 = fmul fast float %6404, %6388
  %6417 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6405, float %6416)  ; FMad(a,b,c)
  %6418 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %6406, float %6417)  ; FMad(a,b,c)
  %6419 = fadd fast float %6418, %6407
  %6420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6421 = extractvalue %dx.types.CBufRet.f32 %6420, 0
  %6422 = extractvalue %dx.types.CBufRet.f32 %6420, 1
  %6423 = extractvalue %dx.types.CBufRet.f32 %6420, 3
  %6424 = fmul fast float %6423, %6411
  %6425 = fmul fast float %6423, %6415
  %6426 = fadd fast float %6424, %6421
  %6427 = fadd fast float %6425, %6422
  %6428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6429 = extractvalue %dx.types.CBufRet.f32 %6428, 0
  %6430 = extractvalue %dx.types.CBufRet.f32 %6428, 1
  %6431 = extractvalue %dx.types.CBufRet.f32 %6428, 3
  %6432 = fmul fast float %6431, %6411
  %6433 = fmul fast float %6431, %6415
  %6434 = fadd fast float %6432, %6429
  %6435 = fadd fast float %6433, %6430
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 1
  %6438 = fsub fast float %6437, %6419
  %6439 = extractvalue %dx.types.CBufRet.f32 %6436, 2
  %6440 = fmul fast float %6438, %6439
  %6441 = fsub fast float 1.000000e+00, %6440
  %6442 = call float @dx.op.unary.f32(i32 7, float %6441)  ; Saturate(value)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6428, 2
  %6444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6444, 2
  %6446 = fadd fast float %6445, %6443
  %6447 = fcmp fast ogt float %6446, 0.000000e+00
  br i1 %6447, label %6448, label %6472

; <label>:6448                                    ; preds = %6392
  %6449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.f32 %6449, 0
  %6451 = extractvalue %dx.types.CBufRet.f32 %6449, 1
  %6452 = fsub fast float %6434, %6450
  %6453 = fsub fast float %6435, %6451
  %6454 = fcmp fast olt float %6452, 0.000000e+00
  %6455 = fcmp fast olt float %6453, 0.000000e+00
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 0
  %6458 = extractvalue %dx.types.CBufRet.f32 %6456, 1
  %6459 = extractvalue %dx.types.CBufRet.f32 %6456, 2
  %6460 = extractvalue %dx.types.CBufRet.f32 %6456, 3
  %6461 = select i1 %6454, float %6457, float %6459
  %6462 = select i1 %6455, float %6458, float %6460
  %6463 = fmul fast float %6461, %6452
  %6464 = fmul fast float %6462, %6453
  %6465 = call float @dx.op.unary.f32(i32 6, float %6463)  ; FAbs(value)
  %6466 = call float @dx.op.unary.f32(i32 6, float %6464)  ; FAbs(value)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6468 = call float @dx.op.binary.f32(i32 35, float %6465, float %6466)  ; FMax(a,b)
  %6469 = fsub fast float %6467, %6468
  %6470 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  %6471 = fmul fast float %6470, %6442
  br label %6472

; <label>:6472                                    ; preds = %6448, %6392
  %6473 = phi float [ %6471, %6448 ], [ 0.000000e+00, %6392 ]
  %6474 = extractvalue %dx.types.CBufRet.f32 %6420, 2
  %6475 = extractvalue %dx.types.CBufRet.f32 %6444, 1
  %6476 = fadd fast float %6475, %6474
  %6477 = fcmp fast ogt float %6476, 0.000000e+00
  %6478 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  br i1 %6477, label %6479, label %6502

; <label>:6479                                    ; preds = %6472
  %6480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6481 = extractvalue %dx.types.CBufRet.f32 %6480, 0
  %6482 = extractvalue %dx.types.CBufRet.f32 %6480, 1
  %6483 = fsub fast float %6426, %6481
  %6484 = fsub fast float %6427, %6482
  %6485 = fcmp fast olt float %6483, 0.000000e+00
  %6486 = fcmp fast olt float %6484, 0.000000e+00
  %6487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6488 = extractvalue %dx.types.CBufRet.f32 %6487, 0
  %6489 = extractvalue %dx.types.CBufRet.f32 %6487, 1
  %6490 = extractvalue %dx.types.CBufRet.f32 %6487, 2
  %6491 = extractvalue %dx.types.CBufRet.f32 %6487, 3
  %6492 = select i1 %6485, float %6488, float %6490
  %6493 = select i1 %6486, float %6489, float %6491
  %6494 = fmul fast float %6492, %6483
  %6495 = fmul fast float %6493, %6484
  %6496 = call float @dx.op.unary.f32(i32 6, float %6494)  ; FAbs(value)
  %6497 = call float @dx.op.unary.f32(i32 6, float %6495)  ; FAbs(value)
  %6498 = call float @dx.op.binary.f32(i32 35, float %6496, float %6497)  ; FMax(a,b)
  %6499 = fsub fast float %6478, %6498
  %6500 = call float @dx.op.unary.f32(i32 7, float %6499)  ; Saturate(value)
  %6501 = fmul fast float %6500, %6442
  br label %6502

; <label>:6502                                    ; preds = %6479, %6472
  %6503 = phi float [ %6501, %6479 ], [ 0.000000e+00, %6472 ]
  %6504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6505 = extractvalue %dx.types.CBufRet.f32 %6504, 1
  %6506 = call float @dx.op.unary.f32(i32 7, float %6505)  ; Saturate(value)
  %6507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6508 = extractvalue %dx.types.CBufRet.f32 %6507, 0
  %6509 = extractvalue %dx.types.CBufRet.f32 %6507, 1
  %6510 = fsub fast float %6411, %6508
  %6511 = fsub fast float %6415, %6509
  %6512 = fcmp fast olt float %6510, 0.000000e+00
  %6513 = fcmp fast olt float %6511, 0.000000e+00
  %6514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6515 = extractvalue %dx.types.CBufRet.f32 %6514, 0
  %6516 = extractvalue %dx.types.CBufRet.f32 %6514, 1
  %6517 = extractvalue %dx.types.CBufRet.f32 %6514, 2
  %6518 = extractvalue %dx.types.CBufRet.f32 %6514, 3
  %6519 = select i1 %6512, float %6515, float %6517
  %6520 = select i1 %6513, float %6516, float %6518
  %6521 = fmul fast float %6519, %6510
  %6522 = fmul fast float %6520, %6511
  %6523 = call float @dx.op.unary.f32(i32 6, float %6521)  ; FAbs(value)
  %6524 = call float @dx.op.unary.f32(i32 6, float %6522)  ; FAbs(value)
  %6525 = call float @dx.op.binary.f32(i32 35, float %6523, float %6524)  ; FMax(a,b)
  %6526 = fsub fast float %6478, %6525
  %6527 = call float @dx.op.unary.f32(i32 7, float %6526)  ; Saturate(value)
  %6528 = call float @dx.op.binary.f32(i32 36, float %6527, float %6506)  ; FMin(a,b)
  %6529 = fmul fast float %6528, %6442
  %6530 = fsub fast float %6503, %6529
  %6531 = fsub fast float %6473, %6503
  %6532 = fsub fast float %6531, %6529
  %6533 = call float @dx.op.binary.f32(i32 35, float %6503, float %6473)  ; FMax(a,b)
  %6534 = call float @dx.op.binary.f32(i32 35, float %6529, float %6533)  ; FMax(a,b)
  %6535 = fcmp fast olt float %6534, 1.000000e+00
  br i1 %6535, label %6536, label %6934, !dx.controlflow.hints !90

; <label>:6536                                    ; preds = %6502
  %6537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6538 = extractvalue %dx.types.CBufRet.f32 %6537, 0
  %6539 = fcmp fast une float %6538, 0.000000e+00
  br i1 %6539, label %6540, label %6934, !dx.controlflow.hints !91

; <label>:6540                                    ; preds = %6536
  %6541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6542 = extractvalue %dx.types.CBufRet.f32 %6541, 0
  %6543 = extractvalue %dx.types.CBufRet.f32 %6541, 1
  %6544 = extractvalue %dx.types.CBufRet.f32 %6541, 2
  %6545 = extractvalue %dx.types.CBufRet.f32 %6541, 3
  %6546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6547 = extractvalue %dx.types.CBufRet.f32 %6546, 0
  %6548 = extractvalue %dx.types.CBufRet.f32 %6546, 1
  %6549 = extractvalue %dx.types.CBufRet.f32 %6546, 2
  %6550 = extractvalue %dx.types.CBufRet.f32 %6546, 3
  %6551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6552 = extractvalue %dx.types.CBufRet.f32 %6551, 0
  %6553 = extractvalue %dx.types.CBufRet.f32 %6551, 1
  %6554 = extractvalue %dx.types.CBufRet.f32 %6551, 2
  %6555 = extractvalue %dx.types.CBufRet.f32 %6551, 3
  %6556 = fmul fast float %6542, %6388
  %6557 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6543, float %6556)  ; FMad(a,b,c)
  %6558 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %6544, float %6557)  ; FMad(a,b,c)
  %6559 = fadd fast float %6558, %6545
  %6560 = fmul fast float %6547, %6388
  %6561 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6548, float %6560)  ; FMad(a,b,c)
  %6562 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %6549, float %6561)  ; FMad(a,b,c)
  %6563 = fadd fast float %6562, %6550
  %6564 = fmul fast float %6552, %6388
  %6565 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6553, float %6564)  ; FMad(a,b,c)
  %6566 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %6554, float %6565)  ; FMad(a,b,c)
  %6567 = fadd fast float %6566, %6555
  %6568 = fcmp fast oge float %6559, 1.000000e+00
  %6569 = fcmp fast oge float %6563, 1.000000e+00
  %6570 = or i1 %6568, %6569
  %6571 = fcmp fast olt float %6559, 0.000000e+00
  %6572 = fcmp fast olt float %6563, 0.000000e+00
  %6573 = or i1 %6571, %6572
  %6574 = or i1 %6570, %6573
  br i1 %6574, label %6934, label %6575, !dx.controlflow.hints !92

; <label>:6575                                    ; preds = %6540
  %6576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6577 = extractvalue %dx.types.CBufRet.f32 %6576, 0
  %6578 = extractvalue %dx.types.CBufRet.f32 %6576, 1
  %6579 = extractvalue %dx.types.CBufRet.f32 %6576, 2
  %6580 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6581 = extractvalue %dx.types.CBufRet.i32 %6580, 2
  %6582 = uitofp i32 %6581 to float
  %6583 = extractvalue %dx.types.CBufRet.i32 %6580, 3
  %6584 = uitofp i32 %6583 to float
  %6585 = extractvalue %dx.types.CBufRet.f32 %6576, 3
  %6586 = fmul fast float %6585, 2.000000e+00
  %6587 = fsub fast float %6559, %6577
  %6588 = fsub fast float %6563, %6578
  %6589 = fmul fast float %6586, %6587
  %6590 = fmul fast float %6586, %6588
  %6591 = fdiv fast float 1.000000e+00, %6371
  %6592 = fmul fast float %6590, %6591
  %6593 = call float @dx.op.unary.f32(i32 6, float %6592)  ; FAbs(value)
  %6594 = fmul fast float %6579, %6390
  %6595 = fmul fast float %6594, %6586
  %6596 = call float @dx.op.unary.f32(i32 6, float %6595)  ; FAbs(value)
  %6597 = call float @dx.op.unary.f32(i32 6, float %6589)  ; FAbs(value)
  %6598 = call float @dx.op.binary.f32(i32 35, float %6596, float %6593)  ; FMax(a,b)
  %6599 = call float @dx.op.binary.f32(i32 35, float %6597, float %6598)  ; FMax(a,b)
  %6600 = fmul fast float %6599, 2.000000e+00
  %6601 = call float @dx.op.unary.f32(i32 23, float %6600)  ; Log(value)
  %6602 = call float @dx.op.binary.f32(i32 35, float %6601, float %6582)  ; FMax(a,b)
  %6603 = call float @dx.op.unary.f32(i32 22, float %6602)  ; Frc(value)
  %6604 = fadd fast float %6603, 0xBFEA666660000000
  %6605 = fmul fast float %6604, 8.000000e+00
  %6606 = call float @dx.op.unary.f32(i32 7, float %6605)  ; Saturate(value)
  %6607 = call float @dx.op.unary.f32(i32 27, float %6602)  ; Round_ni(value)
  %6608 = fadd fast float %6607, %6606
  %6609 = call float @dx.op.binary.f32(i32 36, float %6608, float %6584)  ; FMin(a,b)
  %6610 = call float @dx.op.unary.f32(i32 27, float %6609)  ; Round_ni(value)
  %6611 = fsub fast float -0.000000e+00, %6610
  %6612 = call float @dx.op.unary.f32(i32 21, float %6611)  ; Exp(value)
  %6613 = fmul fast float %6612, %6586
  %6614 = fmul fast float %6613, %6559
  %6615 = fmul fast float %6613, %6563
  %6616 = fmul fast float %6614, 2.500000e-01
  %6617 = fmul fast float %6615, 2.500000e-01
  %6618 = fadd fast float %6616, 5.000000e-01
  %6619 = fadd fast float %6617, 5.000000e-01
  %6620 = fsub fast float %6584, %6582
  %6621 = fptoui float %6620 to i32
  %6622 = add i32 %6621, 320
  %6623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %6622)  ; CBufferLoadLegacy(handle,regIndex)
  %6624 = extractvalue %dx.types.CBufRet.f32 %6623, 0
  %6625 = extractvalue %dx.types.CBufRet.f32 %6623, 1
  %6626 = fcmp fast une float %6609, %6584
  %6627 = fsub fast float %6559, %6624
  %6628 = fsub fast float %6563, %6625
  %6629 = call float @dx.op.unary.f32(i32 6, float %6627)  ; FAbs(value)
  %6630 = call float @dx.op.unary.f32(i32 6, float %6628)  ; FAbs(value)
  %6631 = fmul fast float %6629, %6613
  %6632 = fmul fast float %6630, %6613
  %6633 = fcmp fast olt float %6631, 1.000000e+00
  %6634 = fcmp fast olt float %6632, 1.000000e+00
  %6635 = and i1 %6633, %6634
  %6636 = or i1 %6626, %6635
  br i1 %6636, label %6637, label %6934, !dx.controlflow.hints !93

; <label>:6637                                    ; preds = %6575
  %6638 = fmul fast float %6615, 5.000000e-01
  %6639 = fmul fast float %6614, 5.000000e-01
  %6640 = fadd fast float %6638, 5.000000e-01
  %6641 = fadd fast float %6639, 5.000000e-01
  %6642 = sitofp i32 %6581 to float
  %6643 = fsub fast float %6609, %6642
  %6644 = call float @dx.op.unary.f32(i32 27, float %6643)  ; Round_ni(value)
  %6645 = call float @dx.op.unary.f32(i32 22, float %6609)  ; Frc(value)
  %6646 = call float @dx.op.unary.f32(i32 22, float %6641)  ; Frc(value)
  %6647 = call float @dx.op.unary.f32(i32 22, float %6640)  ; Frc(value)
  %6648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6646, float %6647, float %6644, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6649 = extractvalue %dx.types.ResRet.f32 %6648, 0
  %6650 = extractvalue %dx.types.ResRet.f32 %6648, 1
  %6651 = extractvalue %dx.types.ResRet.f32 %6648, 2
  %6652 = extractvalue %dx.types.ResRet.f32 %6648, 3
  %6653 = fcmp fast ogt float %6645, 0.000000e+00
  br i1 %6653, label %6654, label %6675, !dx.controlflow.hints !94

; <label>:6654                                    ; preds = %6637
  %6655 = fadd fast float %6644, 1.000000e+00
  %6656 = call float @dx.op.unary.f32(i32 22, float %6618)  ; Frc(value)
  %6657 = call float @dx.op.unary.f32(i32 22, float %6619)  ; Frc(value)
  %6658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6656, float %6657, float %6655, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6659 = extractvalue %dx.types.ResRet.f32 %6658, 0
  %6660 = extractvalue %dx.types.ResRet.f32 %6658, 1
  %6661 = extractvalue %dx.types.ResRet.f32 %6658, 2
  %6662 = extractvalue %dx.types.ResRet.f32 %6658, 3
  %6663 = fsub fast float %6659, %6649
  %6664 = fsub fast float %6660, %6650
  %6665 = fsub fast float %6661, %6651
  %6666 = fsub fast float %6662, %6652
  %6667 = fmul fast float %6663, %6645
  %6668 = fmul fast float %6664, %6645
  %6669 = fmul fast float %6665, %6645
  %6670 = fmul fast float %6666, %6645
  %6671 = fadd fast float %6667, %6649
  %6672 = fadd fast float %6668, %6650
  %6673 = fadd fast float %6669, %6651
  %6674 = fadd fast float %6670, %6652
  br label %6675

; <label>:6675                                    ; preds = %6654, %6637
  %6676 = phi float [ %6671, %6654 ], [ %6649, %6637 ]
  %6677 = phi float [ %6672, %6654 ], [ %6650, %6637 ]
  %6678 = phi float [ %6673, %6654 ], [ %6651, %6637 ]
  %6679 = phi float [ %6674, %6654 ], [ %6652, %6637 ]
  %6680 = fadd fast float %6676, -5.000000e-01
  %6681 = fadd fast float %6678, -5.000000e-01
  %6682 = fmul fast float %6680, 0xBFD5555560000000
  %6683 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6681, float %6682)  ; FMad(a,b,c)
  %6684 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6677, float 0.000000e+00)  ; FMad(a,b,c)
  %6685 = fadd fast float %6684, %6679
  %6686 = fmul fast float %6680, -7.500000e-01
  %6687 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6681, float %6686)  ; FMad(a,b,c)
  %6688 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6677, float 0.000000e+00)  ; FMad(a,b,c)
  %6689 = fadd fast float %6688, %6679
  %6690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6691 = extractvalue %dx.types.CBufRet.f32 %6690, 0
  %6692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6693 = extractvalue %dx.types.CBufRet.f32 %6692, 0
  %6694 = extractvalue %dx.types.CBufRet.f32 %6692, 1
  %6695 = extractvalue %dx.types.CBufRet.f32 %6692, 2
  %6696 = extractvalue %dx.types.CBufRet.f32 %6692, 3
  %6697 = fsub fast float %6693, %6683
  %6698 = fsub fast float %6694, %6685
  %6699 = fsub fast float %6695, %6687
  %6700 = fsub fast float %6696, %6689
  %6701 = fmul fast float %6697, %6691
  %6702 = fmul fast float %6698, %6691
  %6703 = fmul fast float %6699, %6691
  %6704 = fmul fast float %6700, %6691
  %6705 = fadd fast float %6701, %6683
  %6706 = fadd fast float %6702, %6685
  %6707 = fadd fast float %6703, %6687
  %6708 = fadd fast float %6704, %6689
  %6709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6710 = extractvalue %dx.types.ResRet.i32 %6709, 0
  %6711 = and i32 %6710, 536870911
  %6712 = uitofp i32 %6711 to float
  %6713 = fmul fast float %6712, %6559
  %6714 = fmul fast float %6712, %6563
  %6715 = fptoui float %6713 to i32
  %6716 = fptoui float %6714 to i32
  %6717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6718 = extractvalue %dx.types.ResRet.i32 %6717, 0
  %6719 = and i32 %6718, 31
  %6720 = lshr i32 %6715, %6719
  %6721 = lshr i32 %6716, %6719
  %6722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6723 = extractvalue %dx.types.ResRet.i32 %6722, 0
  %6724 = and i32 %6723, 31
  %6725 = shl i32 1, %6724
  %6726 = call i32 @dx.op.binary.i32(i32 40, i32 %6725, i32 4)  ; UMin(a,b)
  %6727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6728 = extractvalue %dx.types.ResRet.i32 %6727, 0
  %6729 = extractvalue %dx.types.ResRet.i32 %6727, 1
  %6730 = icmp eq i32 %6726, 0
  br i1 %6730, label %6772, label %6731

; <label>:6731                                    ; preds = %6675
  br label %6732

; <label>:6732                                    ; preds = %6760, %6731
  %6733 = phi i32 [ %6763, %6760 ], [ 0, %6731 ]
  %6734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6735 = extractvalue %dx.types.ResRet.i32 %6734, 0
  %6736 = lshr i32 %6735, 16
  %6737 = and i32 %6736, 31
  %6738 = shl i32 %6721, %6737
  %6739 = add i32 %6738, %6720
  %6740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6741 = extractvalue %dx.types.ResRet.i32 %6740, 0
  %6742 = and i32 %6741, 31
  %6743 = shl i32 %6739, %6742
  %6744 = add i32 %6743, %6733
  %6745 = shl i32 %6744, 2
  %6746 = add i32 %6745, 32
  %6747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6746, i32 undef)  ; BufferLoad(srv,index,wot)
  %6748 = extractvalue %dx.types.ResRet.i32 %6747, 0
  %6749 = icmp slt i32 %6748, 0
  %6750 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6733
  %6751 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6733
  %6752 = bitcast float* %6750 to i32*
  %6753 = bitcast float* %6751 to i32*
  br i1 %6749, label %6754, label %6760

; <label>:6754                                    ; preds = %6732
  %6755 = and i32 %6748, 1073741823
  %6756 = add nuw nsw i32 %6755, 20
  %6757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6756, i32 undef)  ; BufferLoad(srv,index,wot)
  %6758 = extractvalue %dx.types.ResRet.i32 %6757, 0
  %6759 = extractvalue %dx.types.ResRet.i32 %6757, 1
  br label %6760

; <label>:6760                                    ; preds = %6754, %6732
  %6761 = phi i32 [ %6758, %6754 ], [ %6728, %6732 ]
  %6762 = phi i32 [ %6759, %6754 ], [ %6729, %6732 ]
  store i32 %6761, i32* %6752, align 4
  store i32 %6762, i32* %6753, align 4
  %6763 = add nuw i32 %6733, 1
  %6764 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6765 = extractvalue %dx.types.CBufRet.i32 %6764, 2
  %6766 = icmp eq i32 %6765, 0
  %6767 = icmp ugt i32 %6748, -1073741825
  %6768 = and i1 %6767, %6766
  %6769 = icmp ult i32 %6763, %6726
  %6770 = and i1 %6768, %6769
  br i1 %6770, label %6732, label %6771

; <label>:6771                                    ; preds = %6760
  br label %6772

; <label>:6772                                    ; preds = %6771, %6675
  %6773 = phi i32 [ 0, %6675 ], [ %6763, %6771 ]
  %6774 = extractvalue %dx.types.CBufRet.f32 %6537, 2
  %6775 = fptoui float %6774 to i32
  %6776 = icmp eq i32 %6775, 0
  br i1 %6776, label %6828, label %6777

; <label>:6777                                    ; preds = %6772
  br label %6778

; <label>:6778                                    ; preds = %6823, %6777
  %6779 = phi i32 [ %6824, %6823 ], [ %6773, %6777 ]
  %6780 = phi i32 [ %6825, %6823 ], [ 0, %6777 ]
  %6781 = lshr i32 %6780, 2
  %6782 = and i32 %6780, 3
  %6783 = add nuw nsw i32 %6781, 83
  %6784 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %6783)  ; CBufferLoadLegacy(handle,regIndex)
  %6785 = extractvalue %dx.types.CBufRet.i32 %6784, 0
  %6786 = extractvalue %dx.types.CBufRet.i32 %6784, 1
  %6787 = extractvalue %dx.types.CBufRet.i32 %6784, 2
  %6788 = extractvalue %dx.types.CBufRet.i32 %6784, 3
  %6789 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %6785, i32* %6789, align 4
  %6790 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %6786, i32* %6790, align 4
  %6791 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %6787, i32* %6791, align 4
  %6792 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %6788, i32* %6792, align 4
  %6793 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %6782
  %6794 = load i32, i32* %6793, align 4, !tbaa !95, !noalias !99
  %6795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6796 = extractvalue %dx.types.ResRet.i32 %6795, 0
  %6797 = lshr i32 %6796, 16
  %6798 = and i32 %6797, 31
  %6799 = shl i32 %6721, %6798
  %6800 = add i32 %6799, %6720
  %6801 = shl i32 %6800, 2
  %6802 = add i32 %6801, %6794
  %6803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6802, i32 undef)  ; BufferLoad(srv,index,wot)
  %6804 = extractvalue %dx.types.ResRet.i32 %6803, 0
  %6805 = icmp eq i32 %6804, 0
  br i1 %6805, label %6823, label %6806

; <label>:6806                                    ; preds = %6778
  %6807 = icmp slt i32 %6804, 0
  %6808 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6779
  %6809 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6779
  %6810 = bitcast float* %6808 to i32*
  %6811 = bitcast float* %6809 to i32*
  br i1 %6807, label %6812, label %6819

; <label>:6812                                    ; preds = %6806
  %6813 = and i32 %6804, 1073741823
  %6814 = add i32 %6794, 20
  %6815 = add i32 %6814, %6813
  %6816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6815, i32 undef)  ; BufferLoad(srv,index,wot)
  %6817 = extractvalue %dx.types.ResRet.i32 %6816, 0
  %6818 = extractvalue %dx.types.ResRet.i32 %6816, 1
  br label %6819

; <label>:6819                                    ; preds = %6812, %6806
  %6820 = phi i32 [ %6817, %6812 ], [ %6728, %6806 ]
  %6821 = phi i32 [ %6818, %6812 ], [ %6729, %6806 ]
  store i32 %6820, i32* %6810, align 4
  store i32 %6821, i32* %6811, align 4
  %6822 = add i32 %6779, 1
  br label %6823

; <label>:6823                                    ; preds = %6819, %6778
  %6824 = phi i32 [ %6779, %6778 ], [ %6822, %6819 ]
  %6825 = add nuw i32 %6780, 1
  %6826 = icmp eq i32 %6825, %6775
  br i1 %6826, label %6827, label %6778

; <label>:6827                                    ; preds = %6823
  br label %6828

; <label>:6828                                    ; preds = %6827, %6772
  %6829 = phi i32 [ %6773, %6772 ], [ %6824, %6827 ]
  %6830 = icmp eq i32 %6829, 1
  %6831 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 0
  %6832 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  br i1 %6830, label %6833, label %6836

; <label>:6833                                    ; preds = %6828
  %6834 = load float, float* %6831, align 4
  %6835 = load float, float* %6832, align 4
  br label %6863

; <label>:6836                                    ; preds = %6828
  %6837 = load float, float* %6831, align 4
  %6838 = load float, float* %6832, align 4
  %6839 = fdiv fast float 1.000000e+00, %6838
  %6840 = fsub fast float %6837, %6839
  %6841 = icmp ugt i32 %6829, 1
  br i1 %6841, label %6842, label %6858

; <label>:6842                                    ; preds = %6836
  br label %6843

; <label>:6843                                    ; preds = %6843, %6842
  %6844 = phi float [ %6853, %6843 ], [ %6840, %6842 ]
  %6845 = phi float [ %6854, %6843 ], [ %6837, %6842 ]
  %6846 = phi i32 [ %6855, %6843 ], [ 1, %6842 ]
  %6847 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6846
  %6848 = load float, float* %6847, align 4
  %6849 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6846
  %6850 = load float, float* %6849, align 4
  %6851 = fdiv fast float 1.000000e+00, %6850
  %6852 = fsub fast float %6848, %6851
  %6853 = call float @dx.op.binary.f32(i32 36, float %6844, float %6852)  ; FMin(a,b)
  %6854 = call float @dx.op.binary.f32(i32 35, float %6845, float %6848)  ; FMax(a,b)
  %6855 = add nuw i32 %6846, 1
  %6856 = icmp eq i32 %6855, %6829
  br i1 %6856, label %6857, label %6843

; <label>:6857                                    ; preds = %6843
  br label %6858

; <label>:6858                                    ; preds = %6857, %6836
  %6859 = phi float [ %6840, %6836 ], [ %6853, %6857 ]
  %6860 = phi float [ %6837, %6836 ], [ %6854, %6857 ]
  %6861 = fsub fast float %6860, %6859
  %6862 = fdiv fast float 1.000000e+00, %6861
  br label %6863

; <label>:6863                                    ; preds = %6858, %6833
  %6864 = phi float [ %6834, %6833 ], [ %6860, %6858 ]
  %6865 = phi float [ %6835, %6833 ], [ %6862, %6858 ]
  %6866 = fadd fast float %6567, %6864
  %6867 = fmul fast float %6866, %6865
  %6868 = call float @dx.op.unary.f32(i32 7, float %6867)  ; Saturate(value)
  %6869 = fmul fast float %6868, 2.000000e+00
  %6870 = fsub fast float 1.000000e+00, %6869
  %6871 = fmul fast float %6705, %6705
  %6872 = fsub fast float %6706, %6871
  %6873 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6872)  ; FMax(a,b)
  %6874 = fdiv fast float 1.000000e+00, %6873
  %6875 = fmul fast float %6706, %6705
  %6876 = fsub fast float %6707, %6875
  %6877 = fsub fast float %6870, %6705
  %6878 = fmul fast float %6870, %6870
  %6879 = fsub fast float %6878, %6706
  %6880 = fmul fast float %6874, %6876
  %6881 = fmul fast float %6880, %6877
  %6882 = fsub fast float %6879, %6881
  %6883 = fmul fast float %6706, %6706
  %6884 = fsub fast float %6708, %6883
  %6885 = fmul fast float %6876, %6876
  %6886 = fmul fast float %6885, %6874
  %6887 = fsub fast float %6884, %6886
  %6888 = fdiv fast float %6882, %6887
  %6889 = fmul fast float %6888, %6876
  %6890 = fsub fast float %6877, %6889
  %6891 = fmul fast float %6890, %6874
  %6892 = fmul fast float %6891, %6705
  %6893 = fsub fast float 1.000000e+00, %6892
  %6894 = fmul fast float %6888, %6706
  %6895 = fsub fast float %6893, %6894
  %6896 = fmul fast float %6891, %6891
  %6897 = fmul fast float %6888, 4.000000e+00
  %6898 = fmul fast float %6897, %6895
  %6899 = fsub fast float %6896, %6898
  %6900 = call float @dx.op.unary.f32(i32 24, float %6899)  ; Sqrt(value)
  %6901 = fcmp fast oge float %6891, 0.000000e+00
  %6902 = fsub fast float -0.000000e+00, %6900
  %6903 = select i1 %6901, float %6902, float %6900
  %6904 = fsub fast float %6903, %6891
  %6905 = fdiv fast float %6904, %6888
  %6906 = fdiv fast float %6895, %6904
  %6907 = fmul fast float %6905, 5.000000e-01
  %6908 = fmul fast float %6906, 2.000000e+00
  %6909 = select i1 %6901, float %6907, float %6908
  %6910 = select i1 %6901, float %6908, float %6907
  %6911 = call float @dx.op.binary.f32(i32 35, float %6909, float %6910)  ; FMax(a,b)
  %6912 = call float @dx.op.binary.f32(i32 36, float %6909, float %6910)  ; FMin(a,b)
  %6913 = fcmp fast ogt float %6870, %6911
  %6914 = fsub fast float %6870, %6912
  %6915 = fsub fast float %6870, %6911
  %6916 = fsub fast float %6911, %6912
  %6917 = select i1 %6913, float %6915, float %6916
  %6918 = fmul float %6914, %6917
  %6919 = select i1 %6913, float %6912, float %6870
  %6920 = fcmp fast ogt float %6870, %6912
  %6921 = fmul fast float %6919, %6911
  %6922 = fadd fast float %6919, %6911
  %6923 = fmul fast float %6922, %6705
  %6924 = fadd fast float %6921, %6706
  %6925 = fsub fast float %6924, %6923
  %6926 = fdiv fast float %6925, %6918
  %6927 = select i1 %6920, float %6926, float 0.000000e+00
  %6928 = fsub fast float 1.000000e+00, %6927
  %6929 = select i1 %6913, float %6928, float %6927
  %6930 = call float @dx.op.unary.f32(i32 7, float %6929)  ; Saturate(value)
  %6931 = extractvalue %dx.types.CBufRet.f32 %6690, 3
  %6932 = fmul fast float %6931, %6930
  %6933 = fsub fast float 1.000000e+00, %6932
  br label %6934

; <label>:6934                                    ; preds = %6863, %6575, %6540, %6536, %6502
  %6935 = phi float [ 1.000000e+00, %6502 ], [ %6933, %6863 ], [ 1.000000e+00, %6540 ], [ 1.000000e+00, %6575 ], [ 1.000000e+00, %6536 ]
  %6936 = fcmp fast ogt float %6532, 0.000000e+00
  br i1 %6936, label %6937, label %7099, !dx.controlflow.hints !108

; <label>:6937                                    ; preds = %6934
  %6938 = fadd fast float %6445, %6419
  %6939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6940 = extractvalue %dx.types.CBufRet.f32 %6939, 2
  %6941 = extractvalue %dx.types.CBufRet.f32 %6939, 3
  %6942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6943 = extractvalue %dx.types.CBufRet.f32 %6942, 2
  %6944 = call float @dx.op.binary.f32(i32 35, float %6938, float 0.000000e+00)  ; FMax(a,b)
  %6945 = fadd fast float %6944, 0x3F10000000000000
  %6946 = fcmp fast oeq float %6943, 0.000000e+00
  br i1 %6946, label %6947, label %7014

; <label>:6947                                    ; preds = %6937
  %6948 = extractvalue %dx.types.CBufRet.f32 %6939, 1
  %6949 = extractvalue %dx.types.CBufRet.f32 %6939, 0
  %6950 = fmul fast float %6949, %6434
  %6951 = fmul fast float %6948, %6435
  %6952 = fadd fast float %6950, 5.000000e-01
  %6953 = call float @dx.op.unary.f32(i32 27, float %6952)  ; Round_ni(value)
  %6954 = fadd fast float %6951, 5.000000e-01
  %6955 = call float @dx.op.unary.f32(i32 27, float %6954)  ; Round_ni(value)
  %6956 = fsub fast float %6952, %6953
  %6957 = fsub fast float %6954, %6955
  %6958 = fadd fast float %6953, -5.000000e-01
  %6959 = fadd fast float %6955, -5.000000e-01
  %6960 = fmul fast float %6956, 2.000000e+00
  %6961 = fsub fast float 3.000000e+00, %6960
  %6962 = fadd fast float %6960, 1.000000e+00
  %6963 = fsub fast float 2.000000e+00, %6956
  %6964 = bitcast float %6961 to i32
  %6965 = sub nsw i32 2129859010, %6964
  %6966 = bitcast i32 %6965 to float
  %6967 = fmul fast float %6966, %6963
  %6968 = fadd fast float %6967, -1.000000e+00
  %6969 = bitcast float %6962 to i32
  %6970 = sub nsw i32 2129859010, %6969
  %6971 = bitcast i32 %6970 to float
  %6972 = fmul fast float %6971, %6956
  %6973 = fadd fast float %6972, 1.000000e+00
  %6974 = fmul fast float %6957, 2.000000e+00
  %6975 = fsub fast float 3.000000e+00, %6974
  %6976 = fadd fast float %6974, 1.000000e+00
  %6977 = fsub fast float 2.000000e+00, %6957
  %6978 = bitcast float %6975 to i32
  %6979 = sub nsw i32 2129859010, %6978
  %6980 = bitcast i32 %6979 to float
  %6981 = fmul fast float %6980, %6977
  %6982 = fadd fast float %6981, -1.000000e+00
  %6983 = bitcast float %6976 to i32
  %6984 = sub nsw i32 2129859010, %6983
  %6985 = bitcast i32 %6984 to float
  %6986 = fmul fast float %6985, %6957
  %6987 = fadd fast float %6986, 1.000000e+00
  %6988 = fadd fast float %6968, %6958
  %6989 = fmul fast float %6988, %6940
  %6990 = fadd fast float %6982, %6959
  %6991 = fmul fast float %6990, %6941
  %6992 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6989, float %6991, float undef, float undef, i32 0, i32 0, i32 undef, float %6945)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6993 = extractvalue %dx.types.ResRet.f32 %6992, 0
  %6994 = fmul fast float %6993, %6961
  %6995 = fadd fast float %6973, %6958
  %6996 = fmul fast float %6995, %6940
  %6997 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6996, float %6991, float undef, float undef, i32 0, i32 0, i32 undef, float %6945)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6998 = extractvalue %dx.types.ResRet.f32 %6997, 0
  %6999 = fmul fast float %6998, %6962
  %7000 = fadd fast float %6987, %6959
  %7001 = fmul fast float %7000, %6941
  %7002 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6989, float %7001, float undef, float undef, i32 0, i32 0, i32 undef, float %6945)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7003 = extractvalue %dx.types.ResRet.f32 %7002, 0
  %7004 = fmul fast float %7003, %6961
  %7005 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6996, float %7001, float undef, float undef, i32 0, i32 0, i32 undef, float %6945)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7006 = extractvalue %dx.types.ResRet.f32 %7005, 0
  %7007 = fmul fast float %7006, %6962
  %7008 = fadd fast float %7007, %7004
  %7009 = fmul fast float %7008, %6976
  %7010 = fadd fast float %6999, %6994
  %7011 = fmul fast float %7010, %6975
  %7012 = fadd fast float %7011, %7009
  %7013 = fmul fast float %7012, 6.250000e-02
  br label %7099

; <label>:7014                                    ; preds = %6937
  %7015 = fmul fast float %256, 0x401921FB60000000
  %7016 = call float @dx.op.unary.f32(i32 13, float %7015)  ; Sin(value)
  %7017 = call float @dx.op.unary.f32(i32 12, float %7015)  ; Cos(value)
  %7018 = fsub fast float -0.000000e+00, %7016
  br label %7019

; <label>:7019                                    ; preds = %7068, %7014
  %7020 = phi float [ 0.000000e+00, %7014 ], [ %7063, %7068 ]
  %7021 = phi float [ 0.000000e+00, %7014 ], [ %7065, %7068 ]
  %7022 = phi i32 [ 0, %7014 ], [ %7069, %7068 ]
  %7023 = mul i32 %7022, 2
  %7024 = add i32 0, %7023
  %7025 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7024
  %7026 = load float, float* %7025, align 4
  %7027 = mul i32 %7022, 2
  %7028 = add i32 1, %7027
  %7029 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7028
  %7030 = load float, float* %7029, align 4
  %7031 = fmul fast float %7026, %7017
  %7032 = call float @dx.op.tertiary.f32(i32 46, float %7030, float %7018, float %7031)  ; FMad(a,b,c)
  %7033 = fmul fast float %7026, %7016
  %7034 = call float @dx.op.tertiary.f32(i32 46, float %7030, float %7017, float %7033)  ; FMad(a,b,c)
  %7035 = fmul fast float %7032, %6943
  %7036 = fmul fast float %7034, %6943
  %7037 = fadd fast float %7035, %6434
  %7038 = fadd fast float %7036, %6435
  %7039 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %7037, float %7038, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7040 = extractvalue %dx.types.ResRet.f32 %7039, 0
  %7041 = extractvalue %dx.types.ResRet.f32 %7039, 1
  %7042 = extractvalue %dx.types.ResRet.f32 %7039, 2
  %7043 = extractvalue %dx.types.ResRet.f32 %7039, 3
  %7044 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %7040, float* %7044, align 4
  %7045 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %7041, float* %7045, align 4
  %7046 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %7042, float* %7046, align 4
  %7047 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %7043, float* %7047, align 4
  %7048 = fsub fast float %7040, %6945
  %7049 = fcmp fast olt float %7048, 0.000000e+00
  %7050 = select i1 %7049, float 0.000000e+00, float 1.000000e+00
  %7051 = fadd fast float %7050, %7020
  %7052 = fmul fast float %7050, %7048
  %7053 = fadd fast float %7052, %7021
  br label %7054

; <label>:7054                                    ; preds = %7054, %7019
  %7055 = phi i32 [ 1, %7019 ], [ %7066, %7054 ]
  %7056 = phi float [ %7053, %7019 ], [ %7065, %7054 ]
  %7057 = phi float [ %7051, %7019 ], [ %7063, %7054 ]
  %7058 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7055
  %7059 = load float, float* %7058, align 4, !tbaa !109, !noalias !99
  %7060 = fsub fast float %7059, %6945
  %7061 = fcmp fast olt float %7060, 0.000000e+00
  %7062 = select i1 %7061, float 0.000000e+00, float 1.000000e+00
  %7063 = fadd fast float %7062, %7057
  %7064 = fmul fast float %7062, %7060
  %7065 = fadd fast float %7064, %7056
  %7066 = add nuw nsw i32 %7055, 1
  %7067 = icmp eq i32 %7066, 4
  br i1 %7067, label %7068, label %7054, !llvm.loop !111

; <label>:7068                                    ; preds = %7054
  %7069 = add nuw nsw i32 %7022, 1
  %7070 = icmp eq i32 %7069, 8
  br i1 %7070, label %7071, label %7019, !llvm.loop !112

; <label>:7071                                    ; preds = %7068
  %7072 = fdiv fast float 1.000000e+00, %7063
  %7073 = fmul fast float %7072, %7065
  %7074 = fdiv fast float 1.000000e+00, %6945
  %7075 = fmul fast float %7073, %7074
  %7076 = call float @dx.op.unary.f32(i32 7, float %7075)  ; Saturate(value)
  %7077 = call float @dx.op.binary.f32(i32 35, float %7076, float 0.000000e+00)  ; FMax(a,b)
  %7078 = fmul fast float %7063, 3.125000e-02
  %7079 = call float @dx.op.unary.f32(i32 7, float %7078)  ; Saturate(value)
  %7080 = fmul fast float %7079, 2.000000e+00
  %7081 = fadd fast float %7080, -1.000000e+00
  %7082 = fcmp fast ogt float %7081, 0.000000e+00
  %7083 = fcmp fast olt float %7081, 0.000000e+00
  %7084 = zext i1 %7082 to i32
  %7085 = zext i1 %7083 to i32
  %7086 = sub nsw i32 %7084, %7085
  %7087 = sitofp i32 %7086 to float
  %7088 = fmul fast float %7087, %7081
  %7089 = fsub fast float 1.000000e+00, %7088
  %7090 = fmul fast float %7089, %7089
  %7091 = fmul fast float %7090, %7089
  %7092 = fsub fast float %7089, %7091
  %7093 = fmul fast float %7092, %7077
  %7094 = fsub fast float 1.000000e+00, %7091
  %7095 = fsub fast float %7094, %7093
  %7096 = fmul fast float %7087, 5.000000e-01
  %7097 = fmul fast float %7096, %7095
  %7098 = fsub fast float 5.000000e-01, %7097
  br label %7099

; <label>:7099                                    ; preds = %7071, %6947, %6934
  %7100 = phi float [ 1.000000e+00, %6934 ], [ %7013, %6947 ], [ %7098, %7071 ]
  %7101 = fcmp fast ogt float %6530, 0.000000e+00
  br i1 %7101, label %7102, label %7266, !dx.controlflow.hints !113

; <label>:7102                                    ; preds = %7099
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 1
  %7105 = fadd fast float %7104, %6419
  %7106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7107 = extractvalue %dx.types.CBufRet.f32 %7106, 2
  %7108 = extractvalue %dx.types.CBufRet.f32 %7106, 3
  %7109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7110 = extractvalue %dx.types.CBufRet.f32 %7109, 1
  %7111 = call float @dx.op.binary.f32(i32 35, float %7105, float 0.000000e+00)  ; FMax(a,b)
  %7112 = fadd fast float %7111, 0x3F10000000000000
  %7113 = fcmp fast oeq float %7110, 0.000000e+00
  br i1 %7113, label %7114, label %7181

; <label>:7114                                    ; preds = %7102
  %7115 = extractvalue %dx.types.CBufRet.f32 %7106, 1
  %7116 = extractvalue %dx.types.CBufRet.f32 %7106, 0
  %7117 = fmul fast float %7116, %6426
  %7118 = fmul fast float %7115, %6427
  %7119 = fadd fast float %7117, 5.000000e-01
  %7120 = call float @dx.op.unary.f32(i32 27, float %7119)  ; Round_ni(value)
  %7121 = fadd fast float %7118, 5.000000e-01
  %7122 = call float @dx.op.unary.f32(i32 27, float %7121)  ; Round_ni(value)
  %7123 = fsub fast float %7119, %7120
  %7124 = fsub fast float %7121, %7122
  %7125 = fadd fast float %7120, -5.000000e-01
  %7126 = fadd fast float %7122, -5.000000e-01
  %7127 = fmul fast float %7123, 2.000000e+00
  %7128 = fsub fast float 3.000000e+00, %7127
  %7129 = fadd fast float %7127, 1.000000e+00
  %7130 = fsub fast float 2.000000e+00, %7123
  %7131 = bitcast float %7128 to i32
  %7132 = sub nsw i32 2129859010, %7131
  %7133 = bitcast i32 %7132 to float
  %7134 = fmul fast float %7133, %7130
  %7135 = fadd fast float %7134, -1.000000e+00
  %7136 = bitcast float %7129 to i32
  %7137 = sub nsw i32 2129859010, %7136
  %7138 = bitcast i32 %7137 to float
  %7139 = fmul fast float %7138, %7123
  %7140 = fadd fast float %7139, 1.000000e+00
  %7141 = fmul fast float %7124, 2.000000e+00
  %7142 = fsub fast float 3.000000e+00, %7141
  %7143 = fadd fast float %7141, 1.000000e+00
  %7144 = fsub fast float 2.000000e+00, %7124
  %7145 = bitcast float %7142 to i32
  %7146 = sub nsw i32 2129859010, %7145
  %7147 = bitcast i32 %7146 to float
  %7148 = fmul fast float %7147, %7144
  %7149 = fadd fast float %7148, -1.000000e+00
  %7150 = bitcast float %7143 to i32
  %7151 = sub nsw i32 2129859010, %7150
  %7152 = bitcast i32 %7151 to float
  %7153 = fmul fast float %7152, %7124
  %7154 = fadd fast float %7153, 1.000000e+00
  %7155 = fadd fast float %7135, %7125
  %7156 = fmul fast float %7155, %7107
  %7157 = fadd fast float %7149, %7126
  %7158 = fmul fast float %7157, %7108
  %7159 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7156, float %7158, float undef, float undef, i32 0, i32 0, i32 undef, float %7112)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7160 = extractvalue %dx.types.ResRet.f32 %7159, 0
  %7161 = fmul fast float %7160, %7128
  %7162 = fadd fast float %7140, %7125
  %7163 = fmul fast float %7162, %7107
  %7164 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7163, float %7158, float undef, float undef, i32 0, i32 0, i32 undef, float %7112)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7165 = extractvalue %dx.types.ResRet.f32 %7164, 0
  %7166 = fmul fast float %7165, %7129
  %7167 = fadd fast float %7154, %7126
  %7168 = fmul fast float %7167, %7108
  %7169 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7156, float %7168, float undef, float undef, i32 0, i32 0, i32 undef, float %7112)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7170 = extractvalue %dx.types.ResRet.f32 %7169, 0
  %7171 = fmul fast float %7170, %7128
  %7172 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7163, float %7168, float undef, float undef, i32 0, i32 0, i32 undef, float %7112)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7173 = extractvalue %dx.types.ResRet.f32 %7172, 0
  %7174 = fmul fast float %7173, %7129
  %7175 = fadd fast float %7174, %7171
  %7176 = fmul fast float %7175, %7143
  %7177 = fadd fast float %7166, %7161
  %7178 = fmul fast float %7177, %7142
  %7179 = fadd fast float %7178, %7176
  %7180 = fmul fast float %7179, 6.250000e-02
  br label %7266

; <label>:7181                                    ; preds = %7102
  %7182 = fmul fast float %256, 0x401921FB60000000
  %7183 = call float @dx.op.unary.f32(i32 13, float %7182)  ; Sin(value)
  %7184 = call float @dx.op.unary.f32(i32 12, float %7182)  ; Cos(value)
  %7185 = fsub fast float -0.000000e+00, %7183
  br label %7186

; <label>:7186                                    ; preds = %7235, %7181
  %7187 = phi float [ 0.000000e+00, %7181 ], [ %7230, %7235 ]
  %7188 = phi float [ 0.000000e+00, %7181 ], [ %7232, %7235 ]
  %7189 = phi i32 [ 0, %7181 ], [ %7236, %7235 ]
  %7190 = mul i32 %7189, 2
  %7191 = add i32 0, %7190
  %7192 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7191
  %7193 = load float, float* %7192, align 4
  %7194 = mul i32 %7189, 2
  %7195 = add i32 1, %7194
  %7196 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7195
  %7197 = load float, float* %7196, align 4
  %7198 = fmul fast float %7193, %7184
  %7199 = call float @dx.op.tertiary.f32(i32 46, float %7197, float %7185, float %7198)  ; FMad(a,b,c)
  %7200 = fmul fast float %7193, %7183
  %7201 = call float @dx.op.tertiary.f32(i32 46, float %7197, float %7184, float %7200)  ; FMad(a,b,c)
  %7202 = fmul fast float %7199, %7110
  %7203 = fmul fast float %7201, %7110
  %7204 = fadd fast float %7202, %6426
  %7205 = fadd fast float %7203, %6427
  %7206 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %7204, float %7205, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7207 = extractvalue %dx.types.ResRet.f32 %7206, 0
  %7208 = extractvalue %dx.types.ResRet.f32 %7206, 1
  %7209 = extractvalue %dx.types.ResRet.f32 %7206, 2
  %7210 = extractvalue %dx.types.ResRet.f32 %7206, 3
  %7211 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 0
  store float %7207, float* %7211, align 4
  %7212 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 1
  store float %7208, float* %7212, align 4
  %7213 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 2
  store float %7209, float* %7213, align 4
  %7214 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 3
  store float %7210, float* %7214, align 4
  %7215 = fsub fast float %7207, %7112
  %7216 = fcmp fast olt float %7215, 0.000000e+00
  %7217 = select i1 %7216, float 0.000000e+00, float 1.000000e+00
  %7218 = fadd fast float %7217, %7187
  %7219 = fmul fast float %7217, %7215
  %7220 = fadd fast float %7219, %7188
  br label %7221

; <label>:7221                                    ; preds = %7221, %7186
  %7222 = phi i32 [ 1, %7186 ], [ %7233, %7221 ]
  %7223 = phi float [ %7220, %7186 ], [ %7232, %7221 ]
  %7224 = phi float [ %7218, %7186 ], [ %7230, %7221 ]
  %7225 = getelementptr [4 x float], [4 x float]* %89, i32 0, i32 %7222
  %7226 = load float, float* %7225, align 4, !tbaa !109, !noalias !99
  %7227 = fsub fast float %7226, %7112
  %7228 = fcmp fast olt float %7227, 0.000000e+00
  %7229 = select i1 %7228, float 0.000000e+00, float 1.000000e+00
  %7230 = fadd fast float %7229, %7224
  %7231 = fmul fast float %7229, %7227
  %7232 = fadd fast float %7231, %7223
  %7233 = add nuw nsw i32 %7222, 1
  %7234 = icmp eq i32 %7233, 4
  br i1 %7234, label %7235, label %7221, !llvm.loop !111

; <label>:7235                                    ; preds = %7221
  %7236 = add nuw nsw i32 %7189, 1
  %7237 = icmp eq i32 %7236, 8
  br i1 %7237, label %7238, label %7186, !llvm.loop !112

; <label>:7238                                    ; preds = %7235
  %7239 = fdiv fast float 1.000000e+00, %7230
  %7240 = fmul fast float %7239, %7232
  %7241 = fdiv fast float 1.000000e+00, %7112
  %7242 = fmul fast float %7240, %7241
  %7243 = call float @dx.op.unary.f32(i32 7, float %7242)  ; Saturate(value)
  %7244 = call float @dx.op.binary.f32(i32 35, float %7243, float 0.000000e+00)  ; FMax(a,b)
  %7245 = fmul fast float %7230, 3.125000e-02
  %7246 = call float @dx.op.unary.f32(i32 7, float %7245)  ; Saturate(value)
  %7247 = fmul fast float %7246, 2.000000e+00
  %7248 = fadd fast float %7247, -1.000000e+00
  %7249 = fcmp fast ogt float %7248, 0.000000e+00
  %7250 = fcmp fast olt float %7248, 0.000000e+00
  %7251 = zext i1 %7249 to i32
  %7252 = zext i1 %7250 to i32
  %7253 = sub nsw i32 %7251, %7252
  %7254 = sitofp i32 %7253 to float
  %7255 = fmul fast float %7254, %7248
  %7256 = fsub fast float 1.000000e+00, %7255
  %7257 = fmul fast float %7256, %7256
  %7258 = fmul fast float %7257, %7256
  %7259 = fsub fast float %7256, %7258
  %7260 = fmul fast float %7259, %7244
  %7261 = fsub fast float 1.000000e+00, %7258
  %7262 = fsub fast float %7261, %7260
  %7263 = fmul fast float %7254, 5.000000e-01
  %7264 = fmul fast float %7263, %7262
  %7265 = fsub fast float 5.000000e-01, %7264
  br label %7266

; <label>:7266                                    ; preds = %7238, %7114, %7099
  %7267 = phi float [ 1.000000e+00, %7099 ], [ %7180, %7114 ], [ %7265, %7238 ]
  %7268 = fcmp fast ogt float %6529, 0.000000e+00
  br i1 %7268, label %7269, label %7433, !dx.controlflow.hints !114

; <label>:7269                                    ; preds = %7266
  %7270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7271 = extractvalue %dx.types.CBufRet.f32 %7270, 0
  %7272 = fadd fast float %7271, %6419
  %7273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7274 = extractvalue %dx.types.CBufRet.f32 %7273, 2
  %7275 = extractvalue %dx.types.CBufRet.f32 %7273, 3
  %7276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7277 = extractvalue %dx.types.CBufRet.f32 %7276, 0
  %7278 = call float @dx.op.binary.f32(i32 35, float %7272, float 0.000000e+00)  ; FMax(a,b)
  %7279 = fadd fast float %7278, 0x3F10000000000000
  %7280 = fcmp fast oeq float %7277, 0.000000e+00
  br i1 %7280, label %7281, label %7348

; <label>:7281                                    ; preds = %7269
  %7282 = extractvalue %dx.types.CBufRet.f32 %7273, 1
  %7283 = extractvalue %dx.types.CBufRet.f32 %7273, 0
  %7284 = fmul fast float %7283, %6411
  %7285 = fmul fast float %7282, %6415
  %7286 = fadd fast float %7284, 5.000000e-01
  %7287 = call float @dx.op.unary.f32(i32 27, float %7286)  ; Round_ni(value)
  %7288 = fadd fast float %7285, 5.000000e-01
  %7289 = call float @dx.op.unary.f32(i32 27, float %7288)  ; Round_ni(value)
  %7290 = fsub fast float %7286, %7287
  %7291 = fsub fast float %7288, %7289
  %7292 = fadd fast float %7287, -5.000000e-01
  %7293 = fadd fast float %7289, -5.000000e-01
  %7294 = fmul fast float %7290, 2.000000e+00
  %7295 = fsub fast float 3.000000e+00, %7294
  %7296 = fadd fast float %7294, 1.000000e+00
  %7297 = fsub fast float 2.000000e+00, %7290
  %7298 = bitcast float %7295 to i32
  %7299 = sub nsw i32 2129859010, %7298
  %7300 = bitcast i32 %7299 to float
  %7301 = fmul fast float %7300, %7297
  %7302 = fadd fast float %7301, -1.000000e+00
  %7303 = bitcast float %7296 to i32
  %7304 = sub nsw i32 2129859010, %7303
  %7305 = bitcast i32 %7304 to float
  %7306 = fmul fast float %7305, %7290
  %7307 = fadd fast float %7306, 1.000000e+00
  %7308 = fmul fast float %7291, 2.000000e+00
  %7309 = fsub fast float 3.000000e+00, %7308
  %7310 = fadd fast float %7308, 1.000000e+00
  %7311 = fsub fast float 2.000000e+00, %7291
  %7312 = bitcast float %7309 to i32
  %7313 = sub nsw i32 2129859010, %7312
  %7314 = bitcast i32 %7313 to float
  %7315 = fmul fast float %7314, %7311
  %7316 = fadd fast float %7315, -1.000000e+00
  %7317 = bitcast float %7310 to i32
  %7318 = sub nsw i32 2129859010, %7317
  %7319 = bitcast i32 %7318 to float
  %7320 = fmul fast float %7319, %7291
  %7321 = fadd fast float %7320, 1.000000e+00
  %7322 = fadd fast float %7302, %7292
  %7323 = fmul fast float %7322, %7274
  %7324 = fadd fast float %7316, %7293
  %7325 = fmul fast float %7324, %7275
  %7326 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7323, float %7325, float undef, float undef, i32 0, i32 0, i32 undef, float %7279)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7327 = extractvalue %dx.types.ResRet.f32 %7326, 0
  %7328 = fmul fast float %7327, %7295
  %7329 = fadd fast float %7307, %7292
  %7330 = fmul fast float %7329, %7274
  %7331 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7330, float %7325, float undef, float undef, i32 0, i32 0, i32 undef, float %7279)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7332 = extractvalue %dx.types.ResRet.f32 %7331, 0
  %7333 = fmul fast float %7332, %7296
  %7334 = fadd fast float %7321, %7293
  %7335 = fmul fast float %7334, %7275
  %7336 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7323, float %7335, float undef, float undef, i32 0, i32 0, i32 undef, float %7279)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7337 = extractvalue %dx.types.ResRet.f32 %7336, 0
  %7338 = fmul fast float %7337, %7295
  %7339 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7330, float %7335, float undef, float undef, i32 0, i32 0, i32 undef, float %7279)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7340 = extractvalue %dx.types.ResRet.f32 %7339, 0
  %7341 = fmul fast float %7340, %7296
  %7342 = fadd fast float %7341, %7338
  %7343 = fmul fast float %7342, %7310
  %7344 = fadd fast float %7333, %7328
  %7345 = fmul fast float %7344, %7309
  %7346 = fadd fast float %7345, %7343
  %7347 = fmul fast float %7346, 6.250000e-02
  br label %7433

; <label>:7348                                    ; preds = %7269
  %7349 = fmul fast float %256, 0x401921FB60000000
  %7350 = call float @dx.op.unary.f32(i32 13, float %7349)  ; Sin(value)
  %7351 = call float @dx.op.unary.f32(i32 12, float %7349)  ; Cos(value)
  %7352 = fsub fast float -0.000000e+00, %7350
  br label %7353

; <label>:7353                                    ; preds = %7402, %7348
  %7354 = phi float [ 0.000000e+00, %7348 ], [ %7397, %7402 ]
  %7355 = phi float [ 0.000000e+00, %7348 ], [ %7399, %7402 ]
  %7356 = phi i32 [ 0, %7348 ], [ %7403, %7402 ]
  %7357 = mul i32 %7356, 2
  %7358 = add i32 0, %7357
  %7359 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7358
  %7360 = load float, float* %7359, align 4
  %7361 = mul i32 %7356, 2
  %7362 = add i32 1, %7361
  %7363 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7362
  %7364 = load float, float* %7363, align 4
  %7365 = fmul fast float %7360, %7351
  %7366 = call float @dx.op.tertiary.f32(i32 46, float %7364, float %7352, float %7365)  ; FMad(a,b,c)
  %7367 = fmul fast float %7360, %7350
  %7368 = call float @dx.op.tertiary.f32(i32 46, float %7364, float %7351, float %7367)  ; FMad(a,b,c)
  %7369 = fmul fast float %7366, %7277
  %7370 = fmul fast float %7368, %7277
  %7371 = fadd fast float %7369, %6411
  %7372 = fadd fast float %7370, %6415
  %7373 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %7371, float %7372, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7374 = extractvalue %dx.types.ResRet.f32 %7373, 0
  %7375 = extractvalue %dx.types.ResRet.f32 %7373, 1
  %7376 = extractvalue %dx.types.ResRet.f32 %7373, 2
  %7377 = extractvalue %dx.types.ResRet.f32 %7373, 3
  %7378 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 0
  store float %7374, float* %7378, align 4
  %7379 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 1
  store float %7375, float* %7379, align 4
  %7380 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 2
  store float %7376, float* %7380, align 4
  %7381 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 3
  store float %7377, float* %7381, align 4
  %7382 = fsub fast float %7374, %7279
  %7383 = fcmp fast olt float %7382, 0.000000e+00
  %7384 = select i1 %7383, float 0.000000e+00, float 1.000000e+00
  %7385 = fadd fast float %7384, %7354
  %7386 = fmul fast float %7384, %7382
  %7387 = fadd fast float %7386, %7355
  br label %7388

; <label>:7388                                    ; preds = %7388, %7353
  %7389 = phi i32 [ 1, %7353 ], [ %7400, %7388 ]
  %7390 = phi float [ %7387, %7353 ], [ %7399, %7388 ]
  %7391 = phi float [ %7385, %7353 ], [ %7397, %7388 ]
  %7392 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 %7389
  %7393 = load float, float* %7392, align 4, !tbaa !109, !noalias !99
  %7394 = fsub fast float %7393, %7279
  %7395 = fcmp fast olt float %7394, 0.000000e+00
  %7396 = select i1 %7395, float 0.000000e+00, float 1.000000e+00
  %7397 = fadd fast float %7396, %7391
  %7398 = fmul fast float %7396, %7394
  %7399 = fadd fast float %7398, %7390
  %7400 = add nuw nsw i32 %7389, 1
  %7401 = icmp eq i32 %7400, 4
  br i1 %7401, label %7402, label %7388, !llvm.loop !111

; <label>:7402                                    ; preds = %7388
  %7403 = add nuw nsw i32 %7356, 1
  %7404 = icmp eq i32 %7403, 8
  br i1 %7404, label %7405, label %7353, !llvm.loop !112

; <label>:7405                                    ; preds = %7402
  %7406 = fdiv fast float 1.000000e+00, %7397
  %7407 = fmul fast float %7406, %7399
  %7408 = fdiv fast float 1.000000e+00, %7279
  %7409 = fmul fast float %7407, %7408
  %7410 = call float @dx.op.unary.f32(i32 7, float %7409)  ; Saturate(value)
  %7411 = call float @dx.op.binary.f32(i32 35, float %7410, float 0.000000e+00)  ; FMax(a,b)
  %7412 = fmul fast float %7397, 3.125000e-02
  %7413 = call float @dx.op.unary.f32(i32 7, float %7412)  ; Saturate(value)
  %7414 = fmul fast float %7413, 2.000000e+00
  %7415 = fadd fast float %7414, -1.000000e+00
  %7416 = fcmp fast ogt float %7415, 0.000000e+00
  %7417 = fcmp fast olt float %7415, 0.000000e+00
  %7418 = zext i1 %7416 to i32
  %7419 = zext i1 %7417 to i32
  %7420 = sub nsw i32 %7418, %7419
  %7421 = sitofp i32 %7420 to float
  %7422 = fmul fast float %7421, %7415
  %7423 = fsub fast float 1.000000e+00, %7422
  %7424 = fmul fast float %7423, %7423
  %7425 = fmul fast float %7424, %7423
  %7426 = fsub fast float %7423, %7425
  %7427 = fmul fast float %7426, %7411
  %7428 = fsub fast float 1.000000e+00, %7425
  %7429 = fsub fast float %7428, %7427
  %7430 = fmul fast float %7421, 5.000000e-01
  %7431 = fmul fast float %7430, %7429
  %7432 = fsub fast float 5.000000e-01, %7431
  br label %7433

; <label>:7433                                    ; preds = %7405, %7281, %7266
  %7434 = phi float [ 1.000000e+00, %7266 ], [ %7347, %7281 ], [ %7432, %7405 ]
  %7435 = fsub fast float %7100, %6935
  %7436 = fmul fast float %7435, %6473
  %7437 = fadd fast float %7436, %6935
  %7438 = fsub fast float %7267, %7437
  %7439 = fmul fast float %7438, %6503
  %7440 = fadd fast float %7439, %7437
  %7441 = fsub fast float %7434, %7440
  %7442 = fmul fast float %7441, %6529
  %7443 = fadd fast float %7442, %7440
  %7444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7445 = extractvalue %dx.types.CBufRet.f32 %7444, 2
  %7446 = fcmp fast ogt float %7445, 0.000000e+00
  br i1 %7446, label %7447, label %7487, !dx.controlflow.hints !115

; <label>:7447                                    ; preds = %7433
  %7448 = fcmp fast ugt float %7445, 0.000000e+00
  br i1 %7448, label %7449, label %7484

; <label>:7449                                    ; preds = %7447
  %7450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7451 = extractvalue %dx.types.CBufRet.f32 %7450, 0
  %7452 = extractvalue %dx.types.CBufRet.f32 %7450, 1
  %7453 = extractvalue %dx.types.CBufRet.f32 %7450, 2
  %7454 = extractvalue %dx.types.CBufRet.f32 %7450, 3
  %7455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7456 = extractvalue %dx.types.CBufRet.f32 %7455, 0
  %7457 = extractvalue %dx.types.CBufRet.f32 %7455, 1
  %7458 = extractvalue %dx.types.CBufRet.f32 %7455, 2
  %7459 = extractvalue %dx.types.CBufRet.f32 %7455, 3
  %7460 = extractvalue %dx.types.CBufRet.f32 %7444, 0
  %7461 = extractvalue %dx.types.CBufRet.f32 %7444, 1
  %7462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7463 = extractvalue %dx.types.CBufRet.f32 %7462, 0
  %7464 = extractvalue %dx.types.CBufRet.f32 %7462, 1
  %7465 = extractvalue %dx.types.CBufRet.f32 %7462, 2
  %7466 = fadd fast float %7463, %6388
  %7467 = fadd fast float %7464, %6389
  %7468 = fadd fast float %7465, %6390
  %7469 = fmul fast float %7466, %7451
  %7470 = call float @dx.op.tertiary.f32(i32 46, float %7452, float %7467, float %7469)  ; FMad(a,b,c)
  %7471 = call float @dx.op.tertiary.f32(i32 46, float %7453, float %7468, float %7470)  ; FMad(a,b,c)
  %7472 = fadd fast float %7471, %7454
  %7473 = fmul fast float %7466, %7456
  %7474 = call float @dx.op.tertiary.f32(i32 46, float %7457, float %7467, float %7473)  ; FMad(a,b,c)
  %7475 = call float @dx.op.tertiary.f32(i32 46, float %7458, float %7468, float %7474)  ; FMad(a,b,c)
  %7476 = fadd fast float %7475, %7459
  %7477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %7472, float %7476, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7478 = extractvalue %dx.types.ResRet.f32 %7477, 0
  %7479 = fmul fast float %7478, %7461
  %7480 = fadd fast float %7479, %7460
  %7481 = call float @dx.op.unary.f32(i32 7, float %7480)  ; Saturate(value)
  %7482 = fmul fast float %7481, %7445
  %7483 = fsub fast float 1.000000e+00, %7482
  br label %7484

; <label>:7484                                    ; preds = %7449, %7447
  %7485 = phi float [ %7483, %7449 ], [ 1.000000e+00, %7447 ]
  %7486 = fmul fast float %7485, %7443
  br label %7487

; <label>:7487                                    ; preds = %7484, %7433, %6368
  %7488 = phi float [ 1.000000e+00, %6368 ], [ %7486, %7484 ], [ %7443, %7433 ]
  %7489 = call float @dx.op.binary.f32(i32 36, float %7488, float %7488)  ; FMin(a,b)
  %7490 = call float @dx.op.binary.f32(i32 36, float %7488, float %7489)  ; FMin(a,b)
  %7491 = fcmp fast ogt float %7490, 0.000000e+00
  br i1 %7491, label %7492, label %7658, !dx.controlflow.hints !116

; <label>:7492                                    ; preds = %7487
  %7493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7494 = extractvalue %dx.types.CBufRet.f32 %7493, 0
  %7495 = extractvalue %dx.types.CBufRet.f32 %7493, 1
  %7496 = extractvalue %dx.types.CBufRet.f32 %7493, 2
  %7497 = extractvalue %dx.types.CBufRet.f32 %7493, 3
  %7498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7499 = extractvalue %dx.types.CBufRet.f32 %7498, 0
  %7500 = extractvalue %dx.types.CBufRet.f32 %7498, 1
  %7501 = extractvalue %dx.types.CBufRet.f32 %7498, 2
  %7502 = extractvalue %dx.types.CBufRet.f32 %7498, 3
  %7503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7504 = extractvalue %dx.types.CBufRet.f32 %7503, 0
  %7505 = extractvalue %dx.types.CBufRet.f32 %7503, 1
  %7506 = extractvalue %dx.types.CBufRet.f32 %7503, 2
  %7507 = extractvalue %dx.types.CBufRet.f32 %7503, 3
  %7508 = fmul fast float %7494, %6388
  %7509 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %7495, float %7508)  ; FMad(a,b,c)
  %7510 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %7496, float %7509)  ; FMad(a,b,c)
  %7511 = fadd fast float %7510, %7497
  %7512 = fmul fast float %7499, %6388
  %7513 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %7500, float %7512)  ; FMad(a,b,c)
  %7514 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %7501, float %7513)  ; FMad(a,b,c)
  %7515 = fadd fast float %7514, %7502
  %7516 = fmul fast float %7504, %6388
  %7517 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %7505, float %7516)  ; FMad(a,b,c)
  %7518 = call float @dx.op.tertiary.f32(i32 46, float %6390, float %7506, float %7517)  ; FMad(a,b,c)
  %7519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7520 = extractvalue %dx.types.CBufRet.f32 %7519, 0
  %7521 = extractvalue %dx.types.CBufRet.f32 %7519, 1
  %7522 = extractvalue %dx.types.CBufRet.f32 %7519, 3
  %7523 = fmul fast float %7522, %7511
  %7524 = fmul fast float %7522, %7515
  %7525 = fadd fast float %7523, %7520
  %7526 = fadd fast float %7524, %7521
  %7527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7527, 0
  %7529 = extractvalue %dx.types.CBufRet.f32 %7527, 1
  %7530 = fsub fast float %7525, %7528
  %7531 = fsub fast float %7526, %7529
  %7532 = fcmp fast olt float %7530, 0.000000e+00
  %7533 = fcmp fast olt float %7531, 0.000000e+00
  %7534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7535 = extractvalue %dx.types.CBufRet.f32 %7534, 0
  %7536 = extractvalue %dx.types.CBufRet.f32 %7534, 1
  %7537 = extractvalue %dx.types.CBufRet.f32 %7534, 2
  %7538 = extractvalue %dx.types.CBufRet.f32 %7534, 3
  %7539 = select i1 %7532, float %7535, float %7537
  %7540 = select i1 %7533, float %7536, float %7538
  %7541 = fmul fast float %7539, %7530
  %7542 = fmul fast float %7540, %7531
  %7543 = call float @dx.op.unary.f32(i32 6, float %7541)  ; FAbs(value)
  %7544 = call float @dx.op.unary.f32(i32 6, float %7542)  ; FAbs(value)
  %7545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7546 = extractvalue %dx.types.CBufRet.f32 %7545, 0
  %7547 = call float @dx.op.binary.f32(i32 35, float %7543, float %7544)  ; FMax(a,b)
  %7548 = fsub fast float %7546, %7547
  %7549 = call float @dx.op.unary.f32(i32 7, float %7548)  ; Saturate(value)
  %7550 = fcmp fast ogt float %7549, 0.000000e+00
  br i1 %7550, label %7551, label %7592, !dx.controlflow.hints !117

; <label>:7551                                    ; preds = %7492
  %7552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %7525, float %7526, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7553 = extractvalue %dx.types.ResRet.f32 %7552, 1
  %7554 = fcmp fast ogt float %7553, 0.000000e+00
  br i1 %7554, label %7555, label %7587

; <label>:7555                                    ; preds = %7551
  %7556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %7525, float %7526, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7557 = extractvalue %dx.types.ResRet.f32 %7556, 0
  %7558 = extractvalue %dx.types.ResRet.f32 %7556, 1
  %7559 = extractvalue %dx.types.ResRet.f32 %7556, 2
  %7560 = extractvalue %dx.types.ResRet.f32 %7556, 3
  %7561 = fsub fast float 1.000000e+00, %7507
  %7562 = fsub fast float %7561, %7518
  %7563 = fmul fast float %7562, 0x400921FB60000000
  %7564 = fadd fast float %7563, 0x3FF921FB60000000
  %7565 = call float @dx.op.unary.f32(i32 13, float %7564)  ; Sin(value)
  %7566 = fadd fast float %7565, -1.000000e+00
  %7567 = fmul fast float %7566, 0x3FD45F3060000000
  %7568 = fmul fast float %7562, 0x401921FB60000000
  %7569 = fadd fast float %7568, 0x400921FB60000000
  %7570 = call float @dx.op.unary.f32(i32 13, float %7569)  ; Sin(value)
  %7571 = fadd fast float %7570, 0x3E7777A5C0000000
  %7572 = fmul fast float %7571, 0x3FC45F3060000000
  %7573 = fmul fast float %7562, 0x4022D97C80000000
  %7574 = fadd fast float %7573, 0x4012D97C80000000
  %7575 = call float @dx.op.unary.f32(i32 13, float %7574)  ; Sin(value)
  %7576 = fadd fast float %7575, 1.000000e+00
  %7577 = fmul fast float %7576, 0x3FBB2995E0000000
  %7578 = fmul fast float %7562, 0x402921FB60000000
  %7579 = fadd fast float %7578, 0x401921FB60000000
  %7580 = call float @dx.op.unary.f32(i32 13, float %7579)  ; Sin(value)
  %7581 = fadd fast float %7580, 0xBE8777A5C0000000
  %7582 = fmul fast float %7581, 0x3FB45F3060000000
  %7583 = call float @dx.op.dot4.f32(i32 56, float %7557, float %7558, float %7559, float %7560, float %7567, float %7572, float %7577, float %7582)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7584 = fmul fast float %7583, 0xBFF7154760000000
  %7585 = call float @dx.op.unary.f32(i32 21, float %7584)  ; Exp(value)
  %7586 = call float @dx.op.unary.f32(i32 7, float %7585)  ; Saturate(value)
  br label %7587

; <label>:7587                                    ; preds = %7555, %7551
  %7588 = phi float [ %7586, %7555 ], [ 1.000000e+00, %7551 ]
  %7589 = fadd fast float %7588, -1.000000e+00
  %7590 = fmul fast float %7589, %7549
  %7591 = fadd fast float %7590, 1.000000e+00
  br label %7592

; <label>:7592                                    ; preds = %7587, %7492
  %7593 = phi float [ %7591, %7587 ], [ 1.000000e+00, %7492 ]
  %7594 = fmul fast float %7593, %7488
  %7595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7596 = extractvalue %dx.types.CBufRet.f32 %7595, 0
  %7597 = extractvalue %dx.types.CBufRet.f32 %7595, 1
  %7598 = extractvalue %dx.types.CBufRet.f32 %7595, 2
  %7599 = fadd fast float %7596, %152
  %7600 = fadd fast float %7597, %153
  %7601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7602 = extractvalue %dx.types.CBufRet.f32 %7601, 1
  %7603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7604 = extractvalue %dx.types.CBufRet.f32 %7603, 0
  %7605 = extractvalue %dx.types.CBufRet.f32 %7603, 1
  %7606 = extractvalue %dx.types.CBufRet.f32 %7603, 2
  %7607 = fsub fast float -0.000000e+00, %7599
  %7608 = fsub fast float -0.000000e+00, %7600
  %7609 = fsub fast float -0.000000e+00, %154
  %7610 = fsub fast float %7609, %7598
  %7611 = fadd fast float %7610, %7602
  %7612 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7607, float %7608, float %7611)  ; Dot3(ax,ay,az,bx,by,bz)
  %7613 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7604, float %7605, float %7606)  ; Dot3(ax,ay,az,bx,by,bz)
  %7614 = fdiv fast float 1.000000e+00, %7613
  %7615 = fmul fast float %7614, %7612
  %7616 = fmul fast float %7604, %7615
  %7617 = fmul fast float %7605, %7615
  %7618 = fadd fast float %7616, %7599
  %7619 = fadd fast float %7617, %7600
  %7620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7621 = extractvalue %dx.types.CBufRet.f32 %7620, 0
  %7622 = extractvalue %dx.types.CBufRet.f32 %7620, 1
  %7623 = fsub fast float %7618, %7621
  %7624 = fsub fast float %7619, %7622
  %7625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7626 = extractvalue %dx.types.CBufRet.f32 %7625, 2
  %7627 = extractvalue %dx.types.CBufRet.f32 %7625, 3
  %7628 = fmul fast float %7623, %7626
  %7629 = fmul fast float %7624, %7627
  %7630 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7631 = extractvalue %dx.types.CBufRet.i32 %7630, 3
  %7632 = icmp eq i32 %7631, 0
  br i1 %7632, label %7638, label %7633

; <label>:7633                                    ; preds = %7592
  %7634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %7628, float %7629, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7635 = extractvalue %dx.types.ResRet.f32 %7634, 0
  %7636 = extractvalue %dx.types.ResRet.f32 %7634, 1
  %7637 = extractvalue %dx.types.ResRet.f32 %7634, 2
  br label %7643

; <label>:7638                                    ; preds = %7592
  %7639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7628, float %7629, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7640 = extractvalue %dx.types.ResRet.f32 %7639, 0
  %7641 = extractvalue %dx.types.ResRet.f32 %7639, 1
  %7642 = extractvalue %dx.types.ResRet.f32 %7639, 2
  br label %7643

; <label>:7643                                    ; preds = %7638, %7633
  %7644 = phi float [ %7635, %7633 ], [ %7640, %7638 ]
  %7645 = phi float [ %7636, %7633 ], [ %7641, %7638 ]
  %7646 = phi float [ %7637, %7633 ], [ %7642, %7638 ]
  %7647 = extractvalue %dx.types.CBufRet.f32 %7601, 2
  %7648 = fmul fast float %7647, %7644
  %7649 = extractvalue %dx.types.CBufRet.f32 %7601, 0
  %7650 = fsub fast float %7615, %7649
  %7651 = fsub fast float %7650, %7648
  %7652 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7651)  ; FMax(a,b)
  %7653 = fmul fast float %7652, %7645
  %7654 = call float @dx.op.binary.f32(i32 36, float %7646, float %7653)  ; FMin(a,b)
  %7655 = fmul fast float %7654, 0xBFF7154760000000
  %7656 = call float @dx.op.unary.f32(i32 21, float %7655)  ; Exp(value)
  %7657 = fmul fast float %7594, %7656
  br label %7658

; <label>:7658                                    ; preds = %7643, %7487
  %7659 = phi float [ %7657, %7643 ], [ %7488, %7487 ]
  %7660 = call float @dx.op.binary.f32(i32 36, float %7659, float %7659)  ; FMin(a,b)
  %7661 = call float @dx.op.binary.f32(i32 36, float %7659, float %7660)  ; FMin(a,b)
  %7662 = fcmp fast ogt float %7661, 0.000000e+00
  br i1 %7662, label %7663, label %7971, !dx.controlflow.hints !118

; <label>:7663                                    ; preds = %7658
  %7664 = bitcast i32 %5490 to float
  %7665 = fmul fast float %7659, %6380
  %7666 = fmul fast float %7659, %6381
  %7667 = fmul fast float %7659, %6382
  %7668 = fsub fast float %6369, %172
  %7669 = fsub fast float %6370, %173
  %7670 = fsub fast float %6371, %174
  %7671 = call float @dx.op.dot3.f32(i32 55, float %7668, float %7669, float %7670, float %7668, float %7669, float %7670)  ; Dot3(ax,ay,az,bx,by,bz)
  %7672 = call float @dx.op.unary.f32(i32 25, float %7671)  ; Rsqrt(value)
  %7673 = fmul fast float %7672, %7668
  %7674 = fmul fast float %7672, %7669
  %7675 = fmul fast float %7672, %7670
  %7676 = call float @dx.op.dot3.f32(i32 55, float %6369, float %6370, float %6371, float %5459, float %5460, float %5461)  ; Dot3(ax,ay,az,bx,by,bz)
  %7677 = call float @dx.op.dot3.f32(i32 55, float %5287, float %5288, float %5289, float %7673, float %7674, float %7675)  ; Dot3(ax,ay,az,bx,by,bz)
  %7678 = call float @dx.op.unary.f32(i32 7, float %7676)  ; Saturate(value)
  %7679 = fmul fast float %7678, %7678
  %7680 = fmul fast float %7679, %7664
  %7681 = call float @dx.op.unary.f32(i32 7, float %7680)  ; Saturate(value)
  %7682 = fmul fast float %7681, %7678
  %7683 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %5461, float %7673, float %7674, float %7675)  ; Dot3(ax,ay,az,bx,by,bz)
  %7684 = fmul fast float %7683, %7683
  %7685 = call float @dx.op.unary.f32(i32 6, float %7676)  ; FAbs(value)
  %7686 = fsub fast float 1.000000e+00, %5484
  %7687 = fmul fast float %5466, %5466
  %7688 = fmul fast float %7687, %7686
  %7689 = fadd fast float %7688, %5484
  %7690 = bitcast float %7689 to i32
  %7691 = ashr i32 %7690, 1
  %7692 = add nsw i32 %7691, 532487669
  %7693 = bitcast i32 %7692 to float
  %7694 = fadd fast float %7693, %5466
  %7695 = fmul fast float %5484, %7684
  %7696 = fsub fast float 1.000000e+00, %7684
  %7697 = fadd fast float %7696, %7695
  %7698 = fmul fast float %7685, %7685
  %7699 = fmul fast float %7698, %7686
  %7700 = fadd fast float %7699, %5484
  %7701 = bitcast float %7700 to i32
  %7702 = ashr i32 %7701, 1
  %7703 = add nsw i32 %7702, 532487669
  %7704 = bitcast i32 %7703 to float
  %7705 = fadd fast float %7704, %7685
  %7706 = fmul fast float %7697, %7697
  %7707 = fmul fast float %7706, %7694
  %7708 = fmul fast float %7707, %7705
  %7709 = fdiv fast float 0x3FF0A00000000000, %7708
  %7710 = fmul fast float %7709, %5484
  %7711 = fmul fast float %5736, 0x3FF9999980000000
  %7712 = fsub fast float 5.000000e+00, %7711
  %7713 = call float @dx.op.unary.f32(i32 6, float %7677)  ; FAbs(value)
  %7714 = fsub fast float 1.000000e+00, %7713
  %7715 = fmul fast float %5736, 0x41D9660740000000
  %7716 = fadd fast float %7715, 0xC1EFBF8940000000
  %7717 = bitcast float %7714 to i32
  %7718 = sitofp i32 %7717 to float
  %7719 = fmul fast float %7718, %7712
  %7720 = fadd fast float %7716, %7719
  %7721 = fptosi float %7720 to i32
  %7722 = bitcast i32 %7721 to float
  %7723 = fsub fast float 1.000000e+00, %5456
  %7724 = fsub fast float 1.000000e+00, %5457
  %7725 = fsub fast float 1.000000e+00, %5464
  %7726 = fmul fast float %7722, %7723
  %7727 = fmul fast float %7722, %7724
  %7728 = fmul fast float %7722, %7725
  %7729 = fadd fast float %7726, %5456
  %7730 = fadd fast float %7727, %5457
  %7731 = fadd fast float %7728, %5464
  br i1 %5759, label %7732, label %7755

; <label>:7732                                    ; preds = %7663
  %7733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5109, float %7713, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7734 = extractvalue %dx.types.ResRet.f32 %7733, 0
  %7735 = extractvalue %dx.types.ResRet.f32 %7733, 1
  %7736 = extractvalue %dx.types.ResRet.f32 %7733, 2
  %7737 = fadd fast float %7734, -5.000000e-01
  %7738 = fadd fast float %7735, -5.000000e-01
  %7739 = fadd fast float %7736, -5.000000e-01
  %7740 = fmul fast float %5456, 4.000000e+00
  %7741 = fmul fast float %7740, %7723
  %7742 = fmul fast float %7741, %7737
  %7743 = fmul fast float %5457, 4.000000e+00
  %7744 = fmul fast float %7743, %7724
  %7745 = fmul fast float %7744, %7738
  %7746 = fmul fast float %5464, 4.000000e+00
  %7747 = fmul fast float %7746, %7725
  %7748 = fmul fast float %7747, %7739
  %7749 = fadd fast float %7742, %7729
  %7750 = fadd fast float %7745, %7730
  %7751 = fadd fast float %7748, %7731
  %7752 = call float @dx.op.unary.f32(i32 7, float %7749)  ; Saturate(value)
  %7753 = call float @dx.op.unary.f32(i32 7, float %7750)  ; Saturate(value)
  %7754 = call float @dx.op.unary.f32(i32 7, float %7751)  ; Saturate(value)
  br label %7755

; <label>:7755                                    ; preds = %7732, %7663
  %7756 = phi float [ %7752, %7732 ], [ %7729, %7663 ]
  %7757 = phi float [ %7753, %7732 ], [ %7730, %7663 ]
  %7758 = phi float [ %7754, %7732 ], [ %7731, %7663 ]
  %7759 = fmul fast float %7676, 9.843750e-01
  %7760 = fadd fast float %7759, 7.812500e-03
  %7761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7760, float %5740, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7762 = extractvalue %dx.types.ResRet.f32 %7761, 0
  %7763 = extractvalue %dx.types.ResRet.f32 %7761, 1
  %7764 = extractvalue %dx.types.ResRet.f32 %7761, 2
  %7765 = extractvalue %dx.types.ResRet.f32 %7761, 3
  %7766 = fsub fast float %7764, %7762
  %7767 = fsub fast float %7765, %7763
  %7768 = fmul fast float %7766, %5746
  %7769 = fmul fast float %7767, %5746
  %7770 = fadd fast float %7768, %7762
  %7771 = fadd fast float %7769, %7763
  %7772 = fmul fast float %7770, %5456
  %7773 = fmul fast float %7770, %5457
  %7774 = fmul fast float %7770, %5464
  %7775 = fadd fast float %7772, %7771
  %7776 = fadd fast float %7773, %7771
  %7777 = fadd fast float %7774, %7771
  br i1 %5759, label %7778, label %7801

; <label>:7778                                    ; preds = %7755
  %7779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5109, float %7676, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7780 = extractvalue %dx.types.ResRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.ResRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.ResRet.f32 %7779, 2
  %7783 = fadd fast float %7780, -5.000000e-01
  %7784 = fadd fast float %7781, -5.000000e-01
  %7785 = fadd fast float %7782, -5.000000e-01
  %7786 = fmul fast float %5456, 4.000000e+00
  %7787 = fmul fast float %7786, %7723
  %7788 = fmul fast float %7787, %7783
  %7789 = fmul fast float %5457, 4.000000e+00
  %7790 = fmul fast float %7789, %7724
  %7791 = fmul fast float %7790, %7784
  %7792 = fmul fast float %5464, 4.000000e+00
  %7793 = fmul fast float %7792, %7725
  %7794 = fmul fast float %7793, %7785
  %7795 = fadd fast float %7788, %7775
  %7796 = fadd fast float %7791, %7776
  %7797 = fadd fast float %7794, %7777
  %7798 = call float @dx.op.unary.f32(i32 7, float %7795)  ; Saturate(value)
  %7799 = call float @dx.op.unary.f32(i32 7, float %7796)  ; Saturate(value)
  %7800 = call float @dx.op.unary.f32(i32 7, float %7797)  ; Saturate(value)
  br label %7801

; <label>:7801                                    ; preds = %7778, %7755
  %7802 = phi float [ %7798, %7778 ], [ %7775, %7755 ]
  %7803 = phi float [ %7799, %7778 ], [ %7776, %7755 ]
  %7804 = phi float [ %7800, %7778 ], [ %7777, %7755 ]
  %7805 = call float @dx.op.binary.f32(i32 35, float %7803, float %7804)  ; FMax(a,b)
  %7806 = call float @dx.op.binary.f32(i32 35, float %7802, float %7805)  ; FMax(a,b)
  %7807 = fsub fast float 1.000000e+00, %7806
  %7808 = call float @dx.op.binary.f32(i32 35, float %7685, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7809 = fdiv fast float %4446, %7808
  %7810 = fmul fast float %6278, %7809
  %7811 = fmul fast float %6280, %7809
  %7812 = fmul fast float %6282, %7809
  %7813 = call float @dx.op.unary.f32(i32 21, float %7810)  ; Exp(value)
  %7814 = call float @dx.op.unary.f32(i32 21, float %7811)  ; Exp(value)
  %7815 = call float @dx.op.unary.f32(i32 21, float %7812)  ; Exp(value)
  %7816 = call float @dx.op.unary.f32(i32 7, float %7813)  ; Saturate(value)
  %7817 = call float @dx.op.unary.f32(i32 7, float %7814)  ; Saturate(value)
  %7818 = call float @dx.op.unary.f32(i32 7, float %7815)  ; Saturate(value)
  %7819 = select i1 %6275, float %7816, float 0.000000e+00
  %7820 = select i1 %6276, float %7817, float 0.000000e+00
  %7821 = select i1 %6277, float %7818, float 0.000000e+00
  %7822 = fsub fast float -0.000000e+00, %5459
  %7823 = fsub fast float -0.000000e+00, %5460
  %7824 = fsub fast float -0.000000e+00, %5461
  %7825 = call float @dx.op.dot3.f32(i32 55, float %6369, float %6370, float %6371, float %7822, float %7823, float %7824)  ; Dot3(ax,ay,az,bx,by,bz)
  %7826 = call float @dx.op.unary.f32(i32 7, float %7825)  ; Saturate(value)
  %7827 = fmul fast float %7826, 9.843750e-01
  %7828 = fadd fast float %7827, 7.812500e-03
  %7829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7828, float %5740, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7830 = extractvalue %dx.types.ResRet.f32 %7829, 0
  %7831 = extractvalue %dx.types.ResRet.f32 %7829, 1
  %7832 = extractvalue %dx.types.ResRet.f32 %7829, 2
  %7833 = extractvalue %dx.types.ResRet.f32 %7829, 3
  %7834 = fsub fast float %7832, %7830
  %7835 = fsub fast float %7833, %7831
  %7836 = fmul fast float %7834, %5746
  %7837 = fmul fast float %7835, %5746
  %7838 = fadd fast float %7836, %7830
  %7839 = fadd fast float %7837, %7831
  %7840 = fmul fast float %7838, %5456
  %7841 = fmul fast float %7838, %5457
  %7842 = fmul fast float %7838, %5464
  %7843 = fadd fast float %7840, %7839
  %7844 = fadd fast float %7841, %7839
  %7845 = fadd fast float %7842, %7839
  br i1 %5759, label %7846, label %7869

; <label>:7846                                    ; preds = %7801
  %7847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5109, float %7826, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7848 = extractvalue %dx.types.ResRet.f32 %7847, 0
  %7849 = extractvalue %dx.types.ResRet.f32 %7847, 1
  %7850 = extractvalue %dx.types.ResRet.f32 %7847, 2
  %7851 = fadd fast float %7848, -5.000000e-01
  %7852 = fadd fast float %7849, -5.000000e-01
  %7853 = fadd fast float %7850, -5.000000e-01
  %7854 = fmul fast float %5456, 4.000000e+00
  %7855 = fmul fast float %7854, %7723
  %7856 = fmul fast float %7855, %7851
  %7857 = fmul fast float %5457, 4.000000e+00
  %7858 = fmul fast float %7857, %7724
  %7859 = fmul fast float %7858, %7852
  %7860 = fmul fast float %5464, 4.000000e+00
  %7861 = fmul fast float %7860, %7725
  %7862 = fmul fast float %7861, %7853
  %7863 = fadd fast float %7856, %7843
  %7864 = fadd fast float %7859, %7844
  %7865 = fadd fast float %7862, %7845
  %7866 = call float @dx.op.unary.f32(i32 7, float %7863)  ; Saturate(value)
  %7867 = call float @dx.op.unary.f32(i32 7, float %7864)  ; Saturate(value)
  %7868 = call float @dx.op.unary.f32(i32 7, float %7865)  ; Saturate(value)
  br label %7869

; <label>:7869                                    ; preds = %7846, %7801
  %7870 = phi float [ %7866, %7846 ], [ %7843, %7801 ]
  %7871 = phi float [ %7867, %7846 ], [ %7844, %7801 ]
  %7872 = phi float [ %7868, %7846 ], [ %7845, %7801 ]
  %7873 = call float @dx.op.binary.f32(i32 35, float %7871, float %7872)  ; FMax(a,b)
  %7874 = call float @dx.op.binary.f32(i32 35, float %7870, float %7873)  ; FMax(a,b)
  %7875 = fsub fast float 1.000000e+00, %7874
  %7876 = fmul fast float %5481, %6342
  %7877 = fadd fast float %6344, %7876
  %7878 = call float @dx.op.unary.f32(i32 7, float %7877)  ; Saturate(value)
  %7879 = fsub fast float %6369, %5472
  %7880 = fsub fast float %6370, %5473
  %7881 = fsub fast float %6371, %5474
  %7882 = call float @dx.op.dot3.f32(i32 55, float %7879, float %7880, float %7881, float %7879, float %7880, float %7881)  ; Dot3(ax,ay,az,bx,by,bz)
  %7883 = call float @dx.op.unary.f32(i32 25, float %7882)  ; Rsqrt(value)
  %7884 = fmul fast float %7883, %7879
  %7885 = fmul fast float %7883, %7880
  %7886 = fmul fast float %7883, %7881
  %7887 = call float @dx.op.dot3.f32(i32 55, float %7822, float %7823, float %7824, float %7884, float %7885, float %7886)  ; Dot3(ax,ay,az,bx,by,bz)
  %7888 = fmul fast float %7887, %7887
  %7889 = call float @dx.op.unary.f32(i32 6, float %7826)  ; FAbs(value)
  %7890 = call float @dx.op.binary.f32(i32 35, float %7878, float 0x3F847AE140000000)  ; FMax(a,b)
  %7891 = fmul fast float %7890, %7890
  %7892 = fmul fast float %7891, %7891
  %7893 = fsub fast float 1.000000e+00, %7892
  %7894 = fmul fast float %7687, %7893
  %7895 = fadd fast float %7894, %7892
  %7896 = bitcast float %7895 to i32
  %7897 = ashr i32 %7896, 1
  %7898 = add nsw i32 %7897, 532487669
  %7899 = bitcast i32 %7898 to float
  %7900 = fadd fast float %7899, %5466
  %7901 = fmul fast float %7892, %7888
  %7902 = fsub fast float 1.000000e+00, %7888
  %7903 = fadd fast float %7902, %7901
  %7904 = fmul fast float %7889, %7889
  %7905 = fmul fast float %7904, %7893
  %7906 = fadd fast float %7905, %7892
  %7907 = bitcast float %7906 to i32
  %7908 = ashr i32 %7907, 1
  %7909 = add nsw i32 %7908, 532487669
  %7910 = bitcast i32 %7909 to float
  %7911 = fadd fast float %7910, %7889
  %7912 = fmul fast float %7903, %7903
  %7913 = fmul fast float %7912, %7900
  %7914 = fmul fast float %7913, %7911
  %7915 = fdiv fast float 0x3FF0A00000000000, %7914
  %7916 = fmul fast float %7915, %7892
  %7917 = fmul fast float %7826, %7819
  %7918 = fmul fast float %7826, %7820
  %7919 = fmul fast float %7826, %7821
  %7920 = fmul fast float %7917, %7875
  %7921 = fmul fast float %7920, %7916
  %7922 = fmul fast float %7918, %7875
  %7923 = fmul fast float %7922, %7916
  %7924 = fmul fast float %7919, %7875
  %7925 = fmul fast float %7924, %7916
  %7926 = fmul fast float %7756, %7710
  %7927 = fmul fast float %7757, %7710
  %7928 = fmul fast float %7758, %7710
  %7929 = fsub fast float 1.000000e+00, %7677
  %7930 = bitcast float %7929 to i32
  %7931 = sitofp i32 %7930 to float
  %7932 = fmul fast float %7931, 5.000000e+00
  %7933 = fadd fast float %7932, 0xC1EFBF8940000000
  %7934 = fptosi float %7933 to i32
  %7935 = bitcast i32 %7934 to float
  %7936 = fmul fast float %7935, %5110
  %7937 = fmul fast float %7807, %7936
  %7938 = fmul fast float %7937, %6270
  %7939 = fmul fast float %7937, %6271
  %7940 = fmul fast float %7937, %6272
  %7941 = fadd fast float %7938, %7926
  %7942 = fadd fast float %7939, %7927
  %7943 = fadd fast float %7940, %7928
  %7944 = fmul fast float %7941, %7682
  %7945 = fmul fast float %7942, %7682
  %7946 = fmul fast float %7943, %7682
  %7947 = fmul fast float %7682, %7665
  %7948 = fmul fast float %7947, %7807
  %7949 = fmul fast float %7682, %7666
  %7950 = fmul fast float %7949, %7807
  %7951 = fmul fast float %7682, %7667
  %7952 = fmul fast float %7951, %7807
  %7953 = fadd fast float %7944, %7921
  %7954 = fadd fast float %7945, %7923
  %7955 = fadd fast float %7946, %7925
  %7956 = fmul fast float %7953, %7665
  %7957 = fmul fast float %7954, %7666
  %7958 = fmul fast float %7955, %7667
  %7959 = fadd fast float %7948, %6359
  %7960 = fmul fast float %7959, %5135
  %7961 = fadd fast float %7950, %6361
  %7962 = fmul fast float %7961, %5135
  %7963 = fadd fast float %7952, %6363
  %7964 = fmul fast float %7963, %5135
  %7965 = fadd fast float %7956, %6323
  %7966 = fmul fast float %7965, %5135
  %7967 = fadd fast float %7957, %6326
  %7968 = fmul fast float %7967, %5135
  %7969 = fadd fast float %7958, %6329
  %7970 = fmul fast float %7969, %5135
  br label %7971

; <label>:7971                                    ; preds = %7869, %7658, %6253
  %7972 = phi float [ %6324, %6253 ], [ %6324, %7658 ], [ %7966, %7869 ]
  %7973 = phi float [ %6327, %6253 ], [ %6327, %7658 ], [ %7968, %7869 ]
  %7974 = phi float [ %6330, %6253 ], [ %6330, %7658 ], [ %7970, %7869 ]
  %7975 = phi float [ %6360, %6253 ], [ %6360, %7658 ], [ %7960, %7869 ]
  %7976 = phi float [ %6362, %6253 ], [ %6362, %7658 ], [ %7962, %7869 ]
  %7977 = phi float [ %6364, %6253 ], [ %6364, %7658 ], [ %7964, %7869 ]
  %7978 = fmul fast float %5135, %6299
  %7979 = fsub fast float -0.000000e+00, %7978
  %7980 = fmul fast float %5135, %6300
  %7981 = fsub fast float -0.000000e+00, %7980
  %7982 = fmul fast float %5135, %6301
  %7983 = fsub fast float -0.000000e+00, %7982
  %7984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7985 = extractvalue %dx.types.CBufRet.f32 %7984, 0
  %7986 = fmul fast float %7985, %6305
  %7987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7988 = extractvalue %dx.types.CBufRet.f32 %7987, 3
  %7989 = fsub fast float 1.000000e+00, %5113
  %7990 = call float @dx.op.unary.f32(i32 7, float %7989)  ; Saturate(value)
  %7991 = fadd fast float %7977, %5112
  %7992 = fmul fast float %7991, %5113
  %7993 = fmul fast float %7990, %7988
  %7994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %5114, i32 undef)  ; BufferLoad(srv,index,wot)
  %7995 = extractvalue %dx.types.ResRet.i32 %7994, 3
  %7996 = bitcast i32 %7995 to float
  %7997 = fsub fast float %7979, %7996
  %7998 = fsub fast float %7981, %7996
  %7999 = fsub fast float %7983, %7996
  %8000 = fmul fast float %7997, %186
  %8001 = fmul fast float %7998, %186
  %8002 = fmul fast float %7999, %186
  %8003 = fadd fast float %8000, %7996
  %8004 = fadd fast float %8001, %7996
  %8005 = fadd fast float %8002, %7996
  %8006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8007 = extractvalue %dx.types.CBufRet.f32 %8006, 3
  %8008 = fmul fast float %7975, %5453
  %8009 = fmul fast float %7976, %5454
  %8010 = fmul fast float %7977, %5455
  %8011 = fcmp fast ogt float %85, %206
  %8012 = and i1 %8011, %5203
  %8013 = or i1 %5282, %8012
  %8014 = icmp eq i32 %5202, 2
  %8015 = fcmp fast ole float %85, %206
  %8016 = and i1 %8015, %8014
  %8017 = or i1 %8016, %8013
  br i1 %8012, label %8018, label %8275

; <label>:8018                                    ; preds = %7971
  %8019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8020 = extractvalue %dx.types.CBufRet.f32 %8019, 2
  %8021 = extractvalue %dx.types.CBufRet.f32 %8019, 3
  %8022 = fmul fast float %8020, %97
  %8023 = fmul fast float %8021, %98
  %8024 = call float @dx.op.unary.f32(i32 7, float %8022)  ; Saturate(value)
  %8025 = call float @dx.op.unary.f32(i32 7, float %8023)  ; Saturate(value)
  %8026 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8024, float %8025, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8027 = extractvalue %dx.types.ResRet.f32 %8026, 0
  %8028 = extractvalue %dx.types.ResRet.f32 %8026, 1
  %8029 = extractvalue %dx.types.ResRet.f32 %8026, 2
  %8030 = extractvalue %dx.types.ResRet.f32 %8026, 3
  %8031 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8024, float %8025, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8032 = extractvalue %dx.types.ResRet.f32 %8031, 0
  %8033 = extractvalue %dx.types.ResRet.f32 %8031, 1
  %8034 = extractvalue %dx.types.ResRet.f32 %8031, 2
  %8035 = extractvalue %dx.types.ResRet.f32 %8031, 3
  %8036 = call float @dx.op.binary.f32(i32 35, float %8028, float %8029)  ; FMax(a,b)
  %8037 = call float @dx.op.binary.f32(i32 35, float %8027, float %8036)  ; FMax(a,b)
  %8038 = call float @dx.op.binary.f32(i32 35, float %8037, float %8030)  ; FMax(a,b)
  %8039 = call float @dx.op.binary.f32(i32 36, float %8033, float %8034)  ; FMin(a,b)
  %8040 = call float @dx.op.binary.f32(i32 36, float %8032, float %8039)  ; FMin(a,b)
  %8041 = call float @dx.op.binary.f32(i32 36, float %8040, float %8035)  ; FMin(a,b)
  %8042 = fmul fast float %8038, 2.550000e+02
  %8043 = fadd fast float %8042, 0x3F70101020000000
  %8044 = fptoui float %8043 to i32
  %8045 = fmul fast float %8041, 2.550000e+02
  %8046 = fadd fast float %8045, 0x3F70101020000000
  %8047 = fptoui float %8046 to i32
  %8048 = icmp ult i32 %8044, %8047
  br i1 %8048, label %8049, label %8217

; <label>:8049                                    ; preds = %8018
  %8050 = fcmp fast ogt float %84, 9.843750e-01
  %8051 = fadd fast float %85, -4.000000e+00
  %8052 = select i1 %8050, float -4.000000e+00, float %8051
  %8053 = call float @dx.op.binary.f32(i32 35, float %8052, float 0.000000e+00)  ; FMax(a,b)
  %8054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8055 = extractvalue %dx.types.CBufRet.f32 %8054, 0
  %8056 = fadd fast float %8055, %8053
  %8057 = extractvalue %dx.types.CBufRet.f32 %8054, 2
  %8058 = fmul fast float %8056, %8057
  %8059 = call float @dx.op.unary.f32(i32 23, float %8058)  ; Log(value)
  %8060 = extractvalue %dx.types.CBufRet.f32 %8054, 3
  %8061 = fmul fast float %8060, %8059
  %8062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8063 = extractvalue %dx.types.CBufRet.f32 %8062, 2
  %8064 = fmul fast float %8061, %8063
  %8065 = call float @dx.op.unary.f32(i32 7, float %8064)  ; Saturate(value)
  %8066 = uitofp i32 %8044 to float
  %8067 = uitofp i32 %8047 to float
  %8068 = fadd fast float %8066, 5.000000e-01
  %8069 = fadd fast float %8067, 5.000000e-01
  %8070 = fmul fast float %8063, %8068
  %8071 = fmul fast float %8063, %8069
  %8072 = fadd fast float %8070, 0x3F0FFB4800000000
  %8073 = fadd fast float %8071, 0xBF0FFB4800000000
  %8074 = call float @dx.op.binary.f32(i32 35, float %8065, float %8072)  ; FMax(a,b)
  %8075 = call float @dx.op.binary.f32(i32 36, float %8074, float %8073)  ; FMin(a,b)
  %8076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8077 = extractvalue %dx.types.CBufRet.f32 %8076, 1
  %8078 = extractvalue %dx.types.CBufRet.f32 %8076, 2
  %8079 = extractvalue %dx.types.CBufRet.f32 %8076, 0
  %8080 = fmul fast float %8077, %8075
  %8081 = fadd fast float %8079, %8080
  %8082 = fadd fast float %8079, %8078
  %8083 = fsub fast float %8077, %8078
  %8084 = fadd fast float %8083, %8079
  %8085 = call float @dx.op.binary.f32(i32 35, float %8081, float %8082)  ; FMax(a,b)
  %8086 = call float @dx.op.binary.f32(i32 36, float %8085, float %8084)  ; FMin(a,b)
  %8087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %8024, float %8025, float %8086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8088 = extractvalue %dx.types.ResRet.f32 %8087, 0
  %8089 = extractvalue %dx.types.ResRet.f32 %8087, 1
  %8090 = extractvalue %dx.types.ResRet.f32 %8087, 2
  %8091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.i32 %8091, 0
  %8093 = extractvalue %dx.types.CBufRet.i32 %8091, 1
  %8094 = uitofp i32 %8092 to float
  %8095 = uitofp i32 %8093 to float
  %8096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8097 = extractvalue %dx.types.CBufRet.f32 %8096, 0
  %8098 = extractvalue %dx.types.CBufRet.f32 %8096, 1
  %8099 = fmul fast float %8094, %8024
  %8100 = fmul fast float %8095, %8025
  %8101 = fadd fast float %8099, -5.000000e-01
  %8102 = fadd fast float %8100, -5.000000e-01
  %8103 = call float @dx.op.unary.f32(i32 22, float %8101)  ; Frc(value)
  %8104 = call float @dx.op.unary.f32(i32 22, float %8102)  ; Frc(value)
  %8105 = fmul fast float %8103, %8103
  %8106 = fmul fast float %8105, %8103
  %8107 = fsub fast float 3.000000e+00, %8103
  %8108 = fmul fast float %8105, %8107
  %8109 = fmul fast float %8103, 3.000000e+00
  %8110 = fmul fast float %8106, 3.000000e+00
  %8111 = fmul fast float %8105, 6.000000e+00
  %8112 = fsub fast float %8110, %8111
  %8113 = fadd fast float %8112, 4.000000e+00
  %8114 = fmul fast float %8113, 0x3FC5555560000000
  %8115 = fmul fast float %8106, -3.000000e+00
  %8116 = fadd fast float %8105, %8103
  %8117 = fmul fast float %8116, 3.000000e+00
  %8118 = fadd fast float %8115, 1.000000e+00
  %8119 = fadd fast float %8118, %8117
  %8120 = fmul fast float %8106, 0x3FC5555560000000
  %8121 = fmul fast float %8104, %8104
  %8122 = fmul fast float %8121, %8104
  %8123 = fsub fast float 3.000000e+00, %8104
  %8124 = fmul fast float %8121, %8123
  %8125 = fmul fast float %8104, 3.000000e+00
  %8126 = fmul fast float %8122, 3.000000e+00
  %8127 = fmul fast float %8121, 6.000000e+00
  %8128 = fsub fast float %8126, %8127
  %8129 = fadd fast float %8128, 4.000000e+00
  %8130 = fmul fast float %8129, 0x3FC5555560000000
  %8131 = fmul fast float %8122, -3.000000e+00
  %8132 = fadd fast float %8121, %8104
  %8133 = fmul fast float %8132, 3.000000e+00
  %8134 = fadd fast float %8131, 1.000000e+00
  %8135 = fadd fast float %8134, %8133
  %8136 = fmul fast float %8122, 0x3FC5555560000000
  %8137 = fadd fast float %8103, 1.000000e+00
  %8138 = fsub fast float 1.000000e+00, %8109
  %8139 = fadd fast float %8138, %8108
  %8140 = fadd fast float %8139, %8113
  %8141 = fmul fast float %8140, 0x3FC5555560000000
  %8142 = fdiv fast float %8114, %8141
  %8143 = fsub fast float %8137, %8142
  %8144 = fsub fast float 1.000000e+00, %8103
  %8145 = fadd fast float %8119, %8106
  %8146 = fmul fast float %8145, 0x3FC5555560000000
  %8147 = fdiv fast float %8120, %8146
  %8148 = fadd fast float %8144, %8147
  %8149 = fadd fast float %8104, 1.000000e+00
  %8150 = fsub fast float 1.000000e+00, %8125
  %8151 = fadd fast float %8150, %8124
  %8152 = fadd fast float %8151, %8129
  %8153 = fmul fast float %8152, 0x3FC5555560000000
  %8154 = fdiv fast float %8130, %8153
  %8155 = fsub fast float %8149, %8154
  %8156 = fsub fast float 1.000000e+00, %8104
  %8157 = fadd fast float %8135, %8122
  %8158 = fmul fast float %8157, 0x3FC5555560000000
  %8159 = fdiv fast float %8136, %8158
  %8160 = fadd fast float %8159, %8156
  %8161 = fmul fast float %8143, %8097
  %8162 = fsub fast float %8024, %8161
  %8163 = fmul fast float %8148, %8097
  %8164 = fadd fast float %8163, %8024
  %8165 = fmul fast float %8160, %8098
  %8166 = fadd fast float %8165, %8025
  %8167 = fmul fast float %8155, %8098
  %8168 = fsub fast float %8025, %8167
  %8169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8162, float %8168, float %8086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8170 = extractvalue %dx.types.ResRet.f32 %8169, 0
  %8171 = extractvalue %dx.types.ResRet.f32 %8169, 1
  %8172 = extractvalue %dx.types.ResRet.f32 %8169, 2
  %8173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8164, float %8168, float %8086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8174 = extractvalue %dx.types.ResRet.f32 %8173, 0
  %8175 = extractvalue %dx.types.ResRet.f32 %8173, 1
  %8176 = extractvalue %dx.types.ResRet.f32 %8173, 2
  %8177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8162, float %8166, float %8086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8178 = extractvalue %dx.types.ResRet.f32 %8177, 0
  %8179 = extractvalue %dx.types.ResRet.f32 %8177, 1
  %8180 = extractvalue %dx.types.ResRet.f32 %8177, 2
  %8181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8164, float %8166, float %8086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8182 = extractvalue %dx.types.ResRet.f32 %8181, 0
  %8183 = extractvalue %dx.types.ResRet.f32 %8181, 1
  %8184 = extractvalue %dx.types.ResRet.f32 %8181, 2
  %8185 = fsub fast float %8178, %8170
  %8186 = fsub fast float %8179, %8171
  %8187 = fsub fast float %8180, %8172
  %8188 = fmul fast float %8185, %8158
  %8189 = fmul fast float %8186, %8158
  %8190 = fmul fast float %8187, %8158
  %8191 = fadd fast float %8188, %8170
  %8192 = fadd fast float %8189, %8171
  %8193 = fadd fast float %8190, %8172
  %8194 = fsub fast float %8182, %8174
  %8195 = fsub fast float %8183, %8175
  %8196 = fsub fast float %8184, %8176
  %8197 = fmul fast float %8194, %8158
  %8198 = fmul fast float %8195, %8158
  %8199 = fmul fast float %8196, %8158
  %8200 = fsub fast float %8174, %8191
  %8201 = fadd fast float %8200, %8197
  %8202 = fsub fast float %8175, %8192
  %8203 = fadd fast float %8202, %8198
  %8204 = fsub fast float %8176, %8193
  %8205 = fadd fast float %8204, %8199
  %8206 = fmul fast float %8201, %8146
  %8207 = fmul fast float %8203, %8146
  %8208 = fmul fast float %8205, %8146
  %8209 = fadd fast float %8206, %8191
  %8210 = fadd fast float %8207, %8192
  %8211 = fadd fast float %8208, %8193
  %8212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8213 = extractvalue %dx.types.CBufRet.f32 %8212, 1
  %8214 = fmul fast float %8209, %8213
  %8215 = fmul fast float %8210, %8213
  %8216 = fmul fast float %8211, %8213
  br label %8217

; <label>:8217                                    ; preds = %8049, %8018
  %8218 = phi float [ %8088, %8049 ], [ 1.000000e+00, %8018 ]
  %8219 = phi float [ %8089, %8049 ], [ 1.000000e+00, %8018 ]
  %8220 = phi float [ %8090, %8049 ], [ 1.000000e+00, %8018 ]
  %8221 = phi float [ %8214, %8049 ], [ 0.000000e+00, %8018 ]
  %8222 = phi float [ %8215, %8049 ], [ 0.000000e+00, %8018 ]
  %8223 = phi float [ %8216, %8049 ], [ 0.000000e+00, %8018 ]
  %8224 = fmul fast float %8221, %8003
  %8225 = fmul fast float %8222, %8004
  %8226 = fmul fast float %8223, %8005
  %8227 = call float @dx.op.dot3.f32(i32 55, float %8218, float %8219, float %8220, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8228 = call float @dx.op.dot3.f32(i32 55, float %8224, float %8225, float %8226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8229 = select i1 %245, float %8227, float %8218
  %8230 = select i1 %245, float %8227, float %8219
  %8231 = select i1 %245, float 1.000000e+00, float %8220
  %8232 = select i1 %245, float %8228, float %8224
  %8233 = select i1 %245, float 0.000000e+00, float %8225
  %8234 = select i1 %245, float 0.000000e+00, float %8226
  %8235 = fmul fast float %8229, %8008
  %8236 = fmul fast float %8230, %8009
  %8237 = fmul fast float %8231, %8010
  %8238 = fadd fast float %8235, %8232
  %8239 = fadd fast float %8236, %8233
  %8240 = fadd fast float %8234, %8237
  %8241 = fmul fast float %8229, %7972
  %8242 = fmul fast float %8230, %7973
  %8243 = fmul fast float %8231, %7974
  %8244 = fmul fast float %122, %8020
  %8245 = fmul fast float %124, %8021
  %8246 = fsub fast float 1.000000e+00, %8244
  %8247 = fsub fast float 1.000000e+00, %8245
  %8248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8249 = extractvalue %dx.types.CBufRet.f32 %8248, 0
  %8250 = extractvalue %dx.types.CBufRet.f32 %8248, 1
  %8251 = extractvalue %dx.types.CBufRet.f32 %8248, 2
  %8252 = fmul fast float %8246, %8249
  %8253 = fmul fast float %8246, %8250
  %8254 = fmul fast float %8246, %8251
  %8255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8256 = extractvalue %dx.types.CBufRet.f32 %8255, 0
  %8257 = extractvalue %dx.types.CBufRet.f32 %8255, 1
  %8258 = extractvalue %dx.types.CBufRet.f32 %8255, 2
  %8259 = fmul fast float %8247, %8256
  %8260 = fmul fast float %8247, %8257
  %8261 = fmul fast float %8247, %8258
  %8262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8263 = extractvalue %dx.types.CBufRet.f32 %8262, 0
  %8264 = extractvalue %dx.types.CBufRet.f32 %8262, 1
  %8265 = extractvalue %dx.types.CBufRet.f32 %8262, 2
  %8266 = fadd fast float %8259, %8263
  %8267 = fadd fast float %8266, %8252
  %8268 = fadd fast float %8260, %8264
  %8269 = fadd fast float %8268, %8253
  %8270 = fadd fast float %8261, %8265
  %8271 = fadd fast float %8270, %8254
  %8272 = fmul fast float %8267, %206
  %8273 = fmul fast float %8269, %206
  %8274 = fmul fast float %8271, %206
  br label %8275

; <label>:8275                                    ; preds = %8217, %7971
  %8276 = phi float [ %8272, %8217 ], [ %152, %7971 ]
  %8277 = phi float [ %8273, %8217 ], [ %153, %7971 ]
  %8278 = phi float [ %8274, %8217 ], [ %154, %7971 ]
  %8279 = phi float [ %206, %8217 ], [ %85, %7971 ]
  %8280 = phi float [ %8238, %8217 ], [ %8008, %7971 ]
  %8281 = phi float [ %8239, %8217 ], [ %8009, %7971 ]
  %8282 = phi float [ %8240, %8217 ], [ %8010, %7971 ]
  %8283 = phi float [ %8241, %8217 ], [ %7972, %7971 ]
  %8284 = phi float [ %8242, %8217 ], [ %7973, %7971 ]
  %8285 = phi float [ %8243, %8217 ], [ %7974, %7971 ]
  %8286 = phi float [ %8218, %8217 ], [ 1.000000e+00, %7971 ]
  br i1 %8017, label %9441, label %8287

; <label>:8287                                    ; preds = %8275
  %8288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8289 = extractvalue %dx.types.CBufRet.f32 %8288, 0
  %8290 = extractvalue %dx.types.CBufRet.f32 %8288, 1
  %8291 = extractvalue %dx.types.CBufRet.f32 %8288, 2
  %8292 = extractvalue %dx.types.CBufRet.f32 %8288, 3
  %8293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8294 = extractvalue %dx.types.CBufRet.f32 %8293, 0
  %8295 = extractvalue %dx.types.CBufRet.f32 %8293, 1
  %8296 = extractvalue %dx.types.CBufRet.f32 %8293, 2
  %8297 = extractvalue %dx.types.CBufRet.f32 %8293, 3
  %8298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8299 = extractvalue %dx.types.CBufRet.f32 %8298, 0
  %8300 = extractvalue %dx.types.CBufRet.f32 %8298, 1
  %8301 = extractvalue %dx.types.CBufRet.f32 %8298, 2
  %8302 = extractvalue %dx.types.CBufRet.f32 %8298, 3
  %8303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8304 = extractvalue %dx.types.CBufRet.f32 %8303, 0
  %8305 = extractvalue %dx.types.CBufRet.f32 %8303, 1
  %8306 = extractvalue %dx.types.CBufRet.f32 %8303, 2
  %8307 = extractvalue %dx.types.CBufRet.f32 %8303, 3
  %8308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8309 = extractvalue %dx.types.CBufRet.f32 %8308, 3
  %8310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8311 = extractvalue %dx.types.CBufRet.f32 %8310, 3
  %8312 = extractvalue %dx.types.CBufRet.f32 %8310, 0
  %8313 = extractvalue %dx.types.CBufRet.f32 %8310, 1
  %8314 = extractvalue %dx.types.CBufRet.f32 %8310, 2
  %8315 = fcmp fast olt float %8314, -5.000000e-01
  %8316 = call float @dx.op.dot3.f32(i32 55, float %8276, float %8277, float %8278, float %8276, float %8277, float %8278)  ; Dot3(ax,ay,az,bx,by,bz)
  %8317 = call float @dx.op.unary.f32(i32 25, float %8316)  ; Rsqrt(value)
  %8318 = fmul fast float %8317, %8316
  %8319 = fmul fast float %8317, %8276
  %8320 = fmul fast float %8317, %8277
  %8321 = fmul fast float %8317, %8278
  %8322 = fadd fast float %8318, %8292
  %8323 = call float @dx.op.dot3.f32(i32 55, float %8319, float %8320, float %8321, float %8289, float %8290, float %8291)  ; Dot3(ax,ay,az,bx,by,bz)
  %8324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8325 = extractvalue %dx.types.CBufRet.i32 %8324, 1
  %8326 = and i32 %8325, 1
  %8327 = icmp ne i32 %8326, 0
  %8328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8329 = extractvalue %dx.types.CBufRet.f32 %8328, 2
  %8330 = fcmp fast ogt float %8329, 0.000000e+00
  %8331 = and i1 %8327, %8330
  br i1 %8331, label %8332, label %8738, !dx.controlflow.hints !119

; <label>:8332                                    ; preds = %8287
  %8333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8334 = extractvalue %dx.types.CBufRet.f32 %8333, 3
  %8335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8336 = extractvalue %dx.types.CBufRet.f32 %8335, 2
  %8337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8338 = extractvalue %dx.types.CBufRet.f32 %8337, 2
  %8339 = fsub fast float %8336, %8338
  %8340 = and i32 %8325, 2
  %8341 = extractvalue %dx.types.CBufRet.i32 %8324, 0
  %8342 = call i32 @dx.op.binary.i32(i32 40, i32 %8341, i32 3)  ; UMin(a,b)
  %8343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8344 = extractvalue %dx.types.CBufRet.f32 %8343, 0
  %8345 = extractvalue %dx.types.CBufRet.f32 %8343, 1
  %8346 = extractvalue %dx.types.CBufRet.f32 %8337, 0
  %8347 = extractvalue %dx.types.CBufRet.f32 %8337, 1
  %8348 = fsub fast float %8344, %8346
  %8349 = fsub fast float %8345, %8347
  %8350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8351 = extractvalue %dx.types.CBufRet.f32 %8350, 0
  %8352 = fcmp fast ogt float %8351, 0.000000e+00
  %8353 = fsub fast float -0.000000e+00, %8348
  %8354 = fsub fast float -0.000000e+00, %8349
  %8355 = call float @dx.op.dot2.f32(i32 54, float %8319, float %8320, float %8319, float %8320)  ; Dot2(ax,ay,bx,by)
  %8356 = call float @dx.op.dot2.f32(i32 54, float %8319, float %8320, float %8353, float %8354)  ; Dot2(ax,ay,bx,by)
  %8357 = fmul fast float %8356, 2.000000e+00
  %8358 = call float @dx.op.dot2.f32(i32 54, float %8353, float %8354, float %8353, float %8354)  ; Dot2(ax,ay,bx,by)
  %8359 = fmul fast float %8351, %8351
  %8360 = fsub fast float %8358, %8359
  %8361 = fmul fast float %8357, %8357
  %8362 = fmul fast float %8355, 4.000000e+00
  %8363 = fmul fast float %8362, %8360
  %8364 = fsub fast float %8361, %8363
  %8365 = fcmp fast ogt float %8364, 0.000000e+00
  br i1 %8365, label %8366, label %8381

; <label>:8366                                    ; preds = %8332
  %8367 = fcmp fast ogt float %8357, 0.000000e+00
  %8368 = call float @dx.op.unary.f32(i32 24, float %8364)  ; Sqrt(value)
  %8369 = fsub fast float -0.000000e+00, %8368
  %8370 = select i1 %8367, float %8368, float %8369
  %8371 = fadd fast float %8370, %8357
  %8372 = fmul float %8371, -5.000000e-01
  %8373 = fdiv fast float %8372, %8355
  %8374 = call float @dx.op.binary.f32(i32 35, float %8373, float 0.000000e+00)  ; FMax(a,b)
  %8375 = call float @dx.op.binary.f32(i32 36, float %8318, float %8374)  ; FMin(a,b)
  %8376 = fdiv fast float %8360, %8372
  %8377 = call float @dx.op.binary.f32(i32 35, float %8376, float 0.000000e+00)  ; FMax(a,b)
  %8378 = call float @dx.op.binary.f32(i32 36, float %8318, float %8377)  ; FMin(a,b)
  %8379 = call float @dx.op.binary.f32(i32 36, float %8375, float %8378)  ; FMin(a,b)
  %8380 = call float @dx.op.binary.f32(i32 35, float %8375, float %8378)  ; FMax(a,b)
  br label %8381

; <label>:8381                                    ; preds = %8366, %8332
  %8382 = phi float [ %8380, %8366 ], [ -1.000000e+00, %8332 ]
  %8383 = phi float [ %8379, %8366 ], [ -1.000000e+00, %8332 ]
  %8384 = phi i1 [ true, %8366 ], [ false, %8332 ]
  %8385 = and i1 %8352, %8384
  br i1 %8385, label %8386, label %8388

; <label>:8386                                    ; preds = %8381
  %8387 = fcmp fast oeq float %8383, %8382
  br i1 %8387, label %8691, label %8389

; <label>:8388                                    ; preds = %8381
  br i1 %8352, label %8691, label %8389

; <label>:8389                                    ; preds = %8388, %8386
  %8390 = phi float [ %8318, %8388 ], [ %8382, %8386 ]
  %8391 = phi float [ 0.000000e+00, %8388 ], [ %8383, %8386 ]
  %8392 = icmp ne i32 %8340, 0
  %8393 = fmul fast float %8390, %8321
  %8394 = fadd fast float %8393, %8334
  %8395 = fmul fast float %8394, %8390
  %8396 = select i1 %8392, float 0.000000e+00, float %8395
  %8397 = fcmp fast oeq float %8321, 0.000000e+00
  %8398 = fdiv fast float %8339, %8321
  %8399 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8398)  ; FMax(a,b)
  %8400 = select i1 %8397, float %8390, float %8399
  %8401 = call float @dx.op.binary.f32(i32 36, float %8390, float %8400)  ; FMin(a,b)
  %8402 = fcmp fast ogt float %8321, 0.000000e+00
  %8403 = fcmp fast olt float %8339, 0.000000e+00
  br i1 %8402, label %8404, label %8461

; <label>:8404                                    ; preds = %8389
  %8405 = icmp eq i32 %8340, 0
  br i1 %8403, label %8406, label %8450

; <label>:8406                                    ; preds = %8404
  %8407 = select i1 %8405, float %8390, float 0.000000e+00
  %8408 = fsub fast float -0.000000e+00, %8407
  %8409 = call float @dx.op.unary.f32(i32 6, float %8408)  ; FAbs(value)
  %8410 = fmul fast float %8407, %8321
  %8411 = fadd fast float %8410, %8334
  %8412 = fmul fast float %8409, %8411
  %8413 = fsub fast float %8396, %8412
  %8414 = fsub fast float %8390, %8409
  %8415 = select i1 %8405, float %8414, float 0.000000e+00
  %8416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8417 = extractvalue %dx.types.CBufRet.f32 %8416, 0
  %8418 = extractvalue %dx.types.CBufRet.f32 %8416, 1
  %8419 = extractvalue %dx.types.CBufRet.f32 %8416, 2
  %8420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8421 = extractvalue %dx.types.CBufRet.f32 %8420, 0
  %8422 = extractvalue %dx.types.CBufRet.f32 %8420, 1
  %8423 = extractvalue %dx.types.CBufRet.f32 %8420, 2
  %8424 = extractvalue %dx.types.CBufRet.f32 %8420, 3
  %8425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8426 = extractvalue %dx.types.CBufRet.f32 %8425, 3
  %8427 = call float @dx.op.binary.f32(i32 36, float %8413, float %8426)  ; FMin(a,b)
  %8428 = fmul fast float %8424, %8415
  %8429 = call float @dx.op.unary.f32(i32 7, float %8428)  ; Saturate(value)
  %8430 = fsub fast float %8421, %8417
  %8431 = fsub fast float %8422, %8418
  %8432 = fsub fast float %8423, %8419
  %8433 = fmul fast float %8429, %8430
  %8434 = fmul fast float %8429, %8431
  %8435 = fmul fast float %8429, %8432
  %8436 = fadd fast float %8433, %8417
  %8437 = fadd fast float %8434, %8418
  %8438 = fadd fast float %8435, %8419
  %8439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8440 = extractvalue %dx.types.CBufRet.f32 %8439, 0
  %8441 = extractvalue %dx.types.CBufRet.f32 %8439, 1
  %8442 = fadd fast float %8441, %8440
  %8443 = call float @dx.op.unary.f32(i32 7, float %8442)  ; Saturate(value)
  %8444 = extractvalue %dx.types.CBufRet.f32 %8439, 2
  %8445 = extractvalue %dx.types.CBufRet.f32 %8439, 3
  %8446 = fadd fast float %8445, %8444
  %8447 = call float @dx.op.unary.f32(i32 7, float %8446)  ; Saturate(value)
  %8448 = fmul fast float %8443, %8427
  %8449 = fmul fast float %8448, %8447
  br label %8691

; <label>:8450                                    ; preds = %8404
  br i1 %8405, label %8451, label %8472

; <label>:8451                                    ; preds = %8450
  %8452 = call float @dx.op.binary.f32(i32 36, float %8401, float %8391)  ; FMin(a,b)
  %8453 = fsub fast float %8401, %8452
  %8454 = fsub fast float %8453, %8390
  %8455 = call float @dx.op.unary.f32(i32 6, float %8454)  ; FAbs(value)
  %8456 = fadd fast float %8453, %8390
  %8457 = fmul fast float %8456, %8321
  %8458 = fadd fast float %8457, %8334
  %8459 = fmul fast float %8458, %8455
  %8460 = fsub fast float %8396, %8459
  br label %8472

; <label>:8461                                    ; preds = %8389
  br i1 %8403, label %8462, label %8472

; <label>:8462                                    ; preds = %8461
  %8463 = call float @dx.op.binary.f32(i32 35, float %8391, float %8401)  ; FMax(a,b)
  %8464 = icmp eq i32 %8340, 0
  %8465 = select i1 %8464, float %8401, float 0.000000e+00
  %8466 = fsub fast float -0.000000e+00, %8465
  %8467 = call float @dx.op.unary.f32(i32 6, float %8466)  ; FAbs(value)
  %8468 = fmul fast float %8465, %8321
  %8469 = fadd fast float %8468, %8334
  %8470 = fmul fast float %8467, %8469
  %8471 = fsub fast float %8396, %8470
  br label %8472

; <label>:8472                                    ; preds = %8462, %8461, %8451, %8450
  %8473 = phi float [ %8391, %8450 ], [ %8391, %8451 ], [ %8463, %8462 ], [ %8391, %8461 ]
  %8474 = phi float [ 0.000000e+00, %8450 ], [ %8455, %8451 ], [ %8467, %8462 ], [ 0.000000e+00, %8461 ]
  %8475 = phi float [ %8396, %8450 ], [ %8460, %8451 ], [ %8471, %8462 ], [ %8396, %8461 ]
  %8476 = phi float [ %8401, %8450 ], [ %8401, %8451 ], [ %8390, %8462 ], [ %8390, %8461 ]
  %8477 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %8477, align 4, !tbaa !109, !noalias !120
  %8478 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %8478, align 4, !tbaa !109, !noalias !120
  %8479 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %8479, align 4, !tbaa !109, !noalias !120
  %8480 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %8480, align 4, !tbaa !109, !noalias !120
  %8481 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %8481, align 4, !tbaa !109, !noalias !120
  %8482 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %8482, align 4, !tbaa !109, !noalias !120
  %8483 = icmp sgt i32 %8342, 0
  br i1 %8483, label %8484, label %8545

; <label>:8484                                    ; preds = %8472
  br label %8485

; <label>:8485                                    ; preds = %8534, %8484
  %8486 = phi i32 [ %8535, %8534 ], [ 0, %8484 ]
  %8487 = phi i32 [ %8536, %8534 ], [ 0, %8484 ]
  %8488 = add nuw i32 %8487, 171
  %8489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %8488)  ; CBufferLoadLegacy(handle,regIndex)
  %8490 = extractvalue %dx.types.CBufRet.f32 %8489, 0
  %8491 = extractvalue %dx.types.CBufRet.f32 %8489, 1
  %8492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8493 = extractvalue %dx.types.CBufRet.f32 %8492, 0
  %8494 = extractvalue %dx.types.CBufRet.f32 %8492, 1
  %8495 = fsub fast float %8490, %8493
  %8496 = fsub fast float %8491, %8494
  %8497 = extractvalue %dx.types.CBufRet.f32 %8489, 2
  %8498 = fsub fast float -0.000000e+00, %8495
  %8499 = fsub fast float -0.000000e+00, %8496
  %8500 = call float @dx.op.dot2.f32(i32 54, float %8319, float %8320, float %8498, float %8499)  ; Dot2(ax,ay,bx,by)
  %8501 = fmul fast float %8500, 2.000000e+00
  %8502 = call float @dx.op.dot2.f32(i32 54, float %8498, float %8499, float %8498, float %8499)  ; Dot2(ax,ay,bx,by)
  %8503 = fmul fast float %8497, %8497
  %8504 = fsub fast float %8502, %8503
  %8505 = fmul fast float %8501, %8501
  %8506 = fmul fast float %8362, %8504
  %8507 = fsub fast float %8505, %8506
  %8508 = fcmp fast ogt float %8507, 0.000000e+00
  br i1 %8508, label %8509, label %8524

; <label>:8509                                    ; preds = %8485
  %8510 = fcmp fast ogt float %8501, 0.000000e+00
  %8511 = call float @dx.op.unary.f32(i32 24, float %8507)  ; Sqrt(value)
  %8512 = fsub fast float -0.000000e+00, %8511
  %8513 = select i1 %8510, float %8511, float %8512
  %8514 = fadd fast float %8513, %8501
  %8515 = fmul float %8514, -5.000000e-01
  %8516 = fdiv fast float %8515, %8355
  %8517 = call float @dx.op.binary.f32(i32 35, float %8516, float 0.000000e+00)  ; FMax(a,b)
  %8518 = call float @dx.op.binary.f32(i32 36, float %8390, float %8517)  ; FMin(a,b)
  %8519 = fdiv fast float %8504, %8515
  %8520 = call float @dx.op.binary.f32(i32 35, float %8519, float 0.000000e+00)  ; FMax(a,b)
  %8521 = call float @dx.op.binary.f32(i32 36, float %8390, float %8520)  ; FMin(a,b)
  %8522 = call float @dx.op.binary.f32(i32 36, float %8518, float %8521)  ; FMin(a,b)
  %8523 = call float @dx.op.binary.f32(i32 35, float %8518, float %8521)  ; FMax(a,b)
  br label %8524

; <label>:8524                                    ; preds = %8509, %8485
  %8525 = phi float [ %8523, %8509 ], [ -1.000000e+00, %8485 ]
  %8526 = phi float [ %8522, %8509 ], [ -1.000000e+00, %8485 ]
  %8527 = phi i1 [ true, %8509 ], [ false, %8485 ]
  br i1 %8527, label %8528, label %8534

; <label>:8528                                    ; preds = %8524
  %8529 = call float @dx.op.binary.f32(i32 35, float %8473, float %8526)  ; FMax(a,b)
  %8530 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8487
  store float %8529, float* %8530, align 4, !tbaa !109, !noalias !120
  %8531 = call float @dx.op.binary.f32(i32 35, float %8473, float %8525)  ; FMax(a,b)
  %8532 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8487
  store float %8531, float* %8532, align 4, !tbaa !109, !noalias !120
  %8533 = add nsw i32 %8486, 1
  br label %8534

; <label>:8534                                    ; preds = %8528, %8524
  %8535 = phi i32 [ %8533, %8528 ], [ %8486, %8524 ]
  %8536 = add nuw nsw i32 %8487, 1
  %8537 = icmp eq i32 %8536, %8342
  br i1 %8537, label %8538, label %8485

; <label>:8538                                    ; preds = %8534
  %8539 = load float, float* %8479, align 4, !tbaa !109, !alias.scope !136, !noalias !139
  %8540 = load float, float* %8478, align 4, !tbaa !109, !alias.scope !142, !noalias !143
  %8541 = load float, float* %8477, align 4, !tbaa !109, !alias.scope !144, !noalias !145
  %8542 = load float, float* %8482, align 4, !tbaa !109, !alias.scope !146, !noalias !149
  %8543 = load float, float* %8481, align 4, !tbaa !109, !alias.scope !152, !noalias !153
  %8544 = load float, float* %8480, align 4, !tbaa !109, !alias.scope !154, !noalias !155
  br label %8545

; <label>:8545                                    ; preds = %8538, %8472
  %8546 = phi float [ -1.000000e+00, %8472 ], [ %8544, %8538 ]
  %8547 = phi float [ -1.000000e+00, %8472 ], [ %8543, %8538 ]
  %8548 = phi float [ -1.000000e+00, %8472 ], [ %8542, %8538 ]
  %8549 = phi float [ -1.000000e+00, %8472 ], [ %8541, %8538 ]
  %8550 = phi float [ -1.000000e+00, %8472 ], [ %8540, %8538 ]
  %8551 = phi float [ -1.000000e+00, %8472 ], [ %8539, %8538 ]
  %8552 = phi i32 [ 0, %8472 ], [ %8535, %8538 ]
  %8553 = call float @dx.op.binary.f32(i32 36, float %8550, float %8551)  ; FMin(a,b)
  %8554 = call float @dx.op.binary.f32(i32 36, float %8549, float %8553)  ; FMin(a,b)
  %8555 = call float @dx.op.binary.f32(i32 35, float %8549, float %8550)  ; FMax(a,b)
  %8556 = call float @dx.op.binary.f32(i32 36, float %8555, float %8551)  ; FMin(a,b)
  %8557 = call float @dx.op.binary.f32(i32 36, float %8549, float %8550)  ; FMin(a,b)
  %8558 = call float @dx.op.binary.f32(i32 35, float %8557, float %8556)  ; FMax(a,b)
  %8559 = call float @dx.op.binary.f32(i32 35, float %8550, float %8551)  ; FMax(a,b)
  %8560 = call float @dx.op.binary.f32(i32 35, float %8549, float %8559)  ; FMax(a,b)
  store float %8554, float* %8477, align 4, !tbaa !109, !alias.scope !144, !noalias !145
  store float %8558, float* %8478, align 4, !tbaa !109, !alias.scope !142, !noalias !143
  store float %8560, float* %8479, align 4, !tbaa !109, !alias.scope !136, !noalias !139
  %8561 = call float @dx.op.binary.f32(i32 36, float %8547, float %8548)  ; FMin(a,b)
  %8562 = call float @dx.op.binary.f32(i32 36, float %8546, float %8561)  ; FMin(a,b)
  %8563 = call float @dx.op.binary.f32(i32 35, float %8546, float %8547)  ; FMax(a,b)
  %8564 = call float @dx.op.binary.f32(i32 36, float %8563, float %8548)  ; FMin(a,b)
  %8565 = call float @dx.op.binary.f32(i32 36, float %8546, float %8547)  ; FMin(a,b)
  %8566 = call float @dx.op.binary.f32(i32 35, float %8565, float %8564)  ; FMax(a,b)
  %8567 = call float @dx.op.binary.f32(i32 35, float %8547, float %8548)  ; FMax(a,b)
  %8568 = call float @dx.op.binary.f32(i32 35, float %8546, float %8567)  ; FMax(a,b)
  store float %8562, float* %8480, align 4, !tbaa !109, !alias.scope !154, !noalias !155
  store float %8566, float* %8481, align 4, !tbaa !109, !alias.scope !152, !noalias !153
  store float %8568, float* %8482, align 4, !tbaa !109, !alias.scope !146, !noalias !149
  %8569 = sub nsw i32 3, %8552
  %8570 = icmp sgt i32 %8569, 2
  br i1 %8570, label %8571, label %8609

; <label>:8571                                    ; preds = %8545
  %8572 = icmp eq i32 %8340, 0
  %8573 = fsub fast float %8390, %8474
  %8574 = select i1 %8572, float %8573, float %8474
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 0
  %8577 = extractvalue %dx.types.CBufRet.f32 %8575, 1
  %8578 = extractvalue %dx.types.CBufRet.f32 %8575, 2
  %8579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8580 = extractvalue %dx.types.CBufRet.f32 %8579, 0
  %8581 = extractvalue %dx.types.CBufRet.f32 %8579, 1
  %8582 = extractvalue %dx.types.CBufRet.f32 %8579, 2
  %8583 = extractvalue %dx.types.CBufRet.f32 %8579, 3
  %8584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8585 = extractvalue %dx.types.CBufRet.f32 %8584, 3
  %8586 = call float @dx.op.binary.f32(i32 36, float %8475, float %8585)  ; FMin(a,b)
  %8587 = fmul fast float %8583, %8574
  %8588 = call float @dx.op.unary.f32(i32 7, float %8587)  ; Saturate(value)
  %8589 = fsub fast float %8580, %8576
  %8590 = fsub fast float %8581, %8577
  %8591 = fsub fast float %8582, %8578
  %8592 = fmul fast float %8588, %8589
  %8593 = fmul fast float %8588, %8590
  %8594 = fmul fast float %8588, %8591
  %8595 = fadd fast float %8592, %8576
  %8596 = fadd fast float %8593, %8577
  %8597 = fadd fast float %8594, %8578
  %8598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8599 = extractvalue %dx.types.CBufRet.f32 %8598, 0
  %8600 = extractvalue %dx.types.CBufRet.f32 %8598, 1
  %8601 = fadd fast float %8600, %8599
  %8602 = call float @dx.op.unary.f32(i32 7, float %8601)  ; Saturate(value)
  %8603 = extractvalue %dx.types.CBufRet.f32 %8598, 2
  %8604 = extractvalue %dx.types.CBufRet.f32 %8598, 3
  %8605 = fadd fast float %8604, %8603
  %8606 = call float @dx.op.unary.f32(i32 7, float %8605)  ; Saturate(value)
  %8607 = fmul fast float %8602, %8586
  %8608 = fmul fast float %8607, %8606
  br label %8691

; <label>:8609                                    ; preds = %8545
  %8610 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8569
  %8611 = load float, float* %8610, align 4, !tbaa !109, !noalias !120
  %8612 = fcmp fast olt float %8611, %8476
  %8613 = icmp sgt i32 %8552, 0
  %8614 = and i1 %8613, %8612
  br i1 %8614, label %8615, label %8652

; <label>:8615                                    ; preds = %8609
  br label %8616

; <label>:8616                                    ; preds = %8645, %8615
  %8617 = phi float [ %8646, %8645 ], [ %8474, %8615 ]
  %8618 = phi float [ %8647, %8645 ], [ %8475, %8615 ]
  %8619 = phi float [ %8627, %8645 ], [ %8611, %8615 ]
  %8620 = phi i32 [ %8624, %8645 ], [ %8569, %8615 ]
  %8621 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8620
  %8622 = load float, float* %8621, align 4, !tbaa !109, !noalias !120
  %8623 = icmp slt i32 %8620, 2
  %8624 = add nsw i32 %8620, 1
  %8625 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8624
  %8626 = load float, float* %8625, align 4, !tbaa !109, !noalias !120
  %8627 = select i1 %8623, float %8626, float %8390
  %8628 = call float @dx.op.binary.f32(i32 36, float %8627, float %8622)  ; FMin(a,b)
  %8629 = call float @dx.op.binary.f32(i32 36, float %8476, float %8628)  ; FMin(a,b)
  %8630 = icmp eq i32 %8340, 0
  %8631 = fadd fast float %8629, %8619
  %8632 = fmul fast float %8631, %8321
  %8633 = fadd fast float %8632, %8334
  br i1 %8630, label %8639, label %8634

; <label>:8634                                    ; preds = %8616
  %8635 = fsub fast float %8629, %8619
  %8636 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8635)  ; FMax(a,b)
  %8637 = fmul fast float %8636, %8633
  %8638 = fadd fast float %8637, %8618
  br label %8645

; <label>:8639                                    ; preds = %8616
  %8640 = fsub fast float %8619, %8629
  %8641 = call float @dx.op.unary.f32(i32 6, float %8640)  ; FAbs(value)
  %8642 = fadd fast float %8641, %8617
  %8643 = fmul fast float %8641, %8633
  %8644 = fsub fast float %8618, %8643
  br label %8645

; <label>:8645                                    ; preds = %8639, %8634
  %8646 = phi float [ %8636, %8634 ], [ %8642, %8639 ]
  %8647 = phi float [ %8638, %8634 ], [ %8644, %8639 ]
  %8648 = fcmp fast olt float %8627, %8476
  %8649 = icmp slt i32 %8624, 3
  %8650 = and i1 %8649, %8648
  br i1 %8650, label %8616, label %8651

; <label>:8651                                    ; preds = %8645
  br label %8652

; <label>:8652                                    ; preds = %8651, %8609
  %8653 = phi float [ %8474, %8609 ], [ %8646, %8651 ]
  %8654 = phi float [ %8475, %8609 ], [ %8647, %8651 ]
  %8655 = fsub fast float %8390, %8653
  %8656 = select i1 %8392, float %8653, float %8655
  %8657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8658 = extractvalue %dx.types.CBufRet.f32 %8657, 0
  %8659 = extractvalue %dx.types.CBufRet.f32 %8657, 1
  %8660 = extractvalue %dx.types.CBufRet.f32 %8657, 2
  %8661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8662 = extractvalue %dx.types.CBufRet.f32 %8661, 0
  %8663 = extractvalue %dx.types.CBufRet.f32 %8661, 1
  %8664 = extractvalue %dx.types.CBufRet.f32 %8661, 2
  %8665 = extractvalue %dx.types.CBufRet.f32 %8661, 3
  %8666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8667 = extractvalue %dx.types.CBufRet.f32 %8666, 3
  %8668 = call float @dx.op.binary.f32(i32 36, float %8654, float %8667)  ; FMin(a,b)
  %8669 = fmul fast float %8665, %8656
  %8670 = call float @dx.op.unary.f32(i32 7, float %8669)  ; Saturate(value)
  %8671 = fsub fast float %8662, %8658
  %8672 = fsub fast float %8663, %8659
  %8673 = fsub fast float %8664, %8660
  %8674 = fmul fast float %8670, %8671
  %8675 = fmul fast float %8670, %8672
  %8676 = fmul fast float %8670, %8673
  %8677 = fadd fast float %8674, %8658
  %8678 = fadd fast float %8675, %8659
  %8679 = fadd fast float %8676, %8660
  %8680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8681 = extractvalue %dx.types.CBufRet.f32 %8680, 0
  %8682 = extractvalue %dx.types.CBufRet.f32 %8680, 1
  %8683 = fadd fast float %8682, %8681
  %8684 = call float @dx.op.unary.f32(i32 7, float %8683)  ; Saturate(value)
  %8685 = extractvalue %dx.types.CBufRet.f32 %8680, 2
  %8686 = extractvalue %dx.types.CBufRet.f32 %8680, 3
  %8687 = fadd fast float %8686, %8685
  %8688 = call float @dx.op.unary.f32(i32 7, float %8687)  ; Saturate(value)
  %8689 = fmul fast float %8684, %8668
  %8690 = fmul fast float %8689, %8688
  br label %8691

; <label>:8691                                    ; preds = %8652, %8571, %8406, %8388, %8386
  %8692 = phi float [ %8415, %8406 ], [ %8574, %8571 ], [ %8656, %8652 ], [ 0.000000e+00, %8386 ], [ 0.000000e+00, %8388 ]
  %8693 = phi float [ %8449, %8406 ], [ %8608, %8571 ], [ %8690, %8652 ], [ 0.000000e+00, %8386 ], [ 0.000000e+00, %8388 ]
  %8694 = phi float [ %8436, %8406 ], [ %8595, %8571 ], [ %8677, %8652 ], [ 0.000000e+00, %8386 ], [ 0.000000e+00, %8388 ]
  %8695 = phi float [ %8437, %8406 ], [ %8596, %8571 ], [ %8678, %8652 ], [ 0.000000e+00, %8386 ], [ 0.000000e+00, %8388 ]
  %8696 = phi float [ %8438, %8406 ], [ %8597, %8571 ], [ %8679, %8652 ], [ 0.000000e+00, %8386 ], [ 0.000000e+00, %8388 ]
  %8697 = fmul fast float %8329, %8693
  %8698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8699 = extractvalue %dx.types.CBufRet.f32 %8698, 2
  %8700 = fsub fast float %8336, %8699
  %8701 = fcmp fast olt float %8697, -2.000000e+01
  %8702 = call float @dx.op.unary.f32(i32 21, float %8697)  ; Exp(value)
  %8703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8704 = extractvalue %dx.types.CBufRet.f32 %8703, 2
  %8705 = extractvalue %dx.types.CBufRet.f32 %8703, 3
  %8706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8707 = extractvalue %dx.types.CBufRet.f32 %8706, 2
  %8708 = fmul fast float %8705, %8700
  %8709 = call float @dx.op.unary.f32(i32 7, float %8708)  ; Saturate(value)
  %8710 = fsub fast float 1.000000e+00, %8709
  %8711 = fmul fast float %8321, 5.000000e-01
  %8712 = fadd fast float %8711, 5.000000e-01
  %8713 = call float @dx.op.unary.f32(i32 7, float %8712)  ; Saturate(value)
  %8714 = fsub fast float 1.000000e+00, %8713
  %8715 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8710)  ; FMax(a,b)
  %8716 = fdiv fast float %8714, %8715
  %8717 = fsub fast float %8700, %8278
  %8718 = call float @dx.op.unary.f32(i32 6, float %8717)  ; FAbs(value)
  %8719 = fmul fast float %8718, %8704
  %8720 = call float @dx.op.unary.f32(i32 7, float %8716)  ; Saturate(value)
  %8721 = fsub fast float 1.000000e+00, %8719
  %8722 = fmul fast float %8721, %8720
  %8723 = fadd fast float %8722, %8719
  %8724 = fmul fast float %8707, %8700
  %8725 = call float @dx.op.unary.f32(i32 7, float %8724)  ; Saturate(value)
  %8726 = fsub fast float 1.000000e+00, %8723
  %8727 = fmul fast float %8726, %8725
  %8728 = fadd fast float %8727, %8723
  %8729 = call float @dx.op.unary.f32(i32 7, float %8728)  ; Saturate(value)
  %8730 = fadd fast float %8702, -1.000000e+00
  %8731 = select i1 %8701, float -1.000000e+00, float %8730
  %8732 = fmul fast float %8729, %8731
  %8733 = fadd fast float %8732, 1.000000e+00
  %8734 = fsub fast float -0.000000e+00, %8732
  %8735 = fmul fast float %8694, %8734
  %8736 = fmul fast float %8695, %8734
  %8737 = fmul fast float %8696, %8734
  br label %8738

; <label>:8738                                    ; preds = %8691, %8287
  %8739 = phi float [ %8692, %8691 ], [ 0.000000e+00, %8287 ]
  %8740 = phi float [ %8733, %8691 ], [ 1.000000e+00, %8287 ]
  %8741 = phi float [ %8735, %8691 ], [ 0.000000e+00, %8287 ]
  %8742 = phi float [ %8736, %8691 ], [ 0.000000e+00, %8287 ]
  %8743 = phi float [ %8737, %8691 ], [ 0.000000e+00, %8287 ]
  %8744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8745 = extractvalue %dx.types.CBufRet.f32 %8744, 1
  %8746 = fsub fast float 1.000000e+00, %8740
  %8747 = fmul fast float %8746, %8322
  %8748 = fmul fast float %8747, %8745
  %8749 = fsub fast float %8322, %8748
  br i1 %8315, label %8750, label %8779, !dx.controlflow.hints !156

; <label>:8750                                    ; preds = %8738
  %8751 = fmul fast float %8323, %8312
  %8752 = fadd fast float %8751, %8313
  %8753 = call float @dx.op.unary.f32(i32 7, float %8752)  ; Saturate(value)
  %8754 = fmul fast float %8294, %8749
  %8755 = fsub fast float -0.000000e+00, %8754
  %8756 = fmul fast float %8295, %8749
  %8757 = fsub fast float -0.000000e+00, %8756
  %8758 = call float @dx.op.unary.f32(i32 21, float %8755)  ; Exp(value)
  %8759 = call float @dx.op.unary.f32(i32 21, float %8757)  ; Exp(value)
  %8760 = call float @dx.op.binary.f32(i32 35, float %8302, float %8758)  ; FMax(a,b)
  %8761 = call float @dx.op.binary.f32(i32 35, float %8302, float %8759)  ; FMax(a,b)
  %8762 = fsub fast float %8761, %8760
  %8763 = fmul fast float %8762, %8753
  %8764 = fadd fast float %8763, %8760
  %8765 = call float @dx.op.unary.f32(i32 7, float %8764)  ; Saturate(value)
  %8766 = fsub fast float %8299, %8304
  %8767 = fsub fast float %8300, %8305
  %8768 = fsub fast float %8301, %8306
  %8769 = fmul fast float %8753, %8766
  %8770 = fmul fast float %8753, %8767
  %8771 = fmul fast float %8753, %8768
  %8772 = fadd fast float %8769, %8304
  %8773 = fadd fast float %8770, %8305
  %8774 = fadd fast float %8771, %8306
  %8775 = fsub fast float 1.000000e+00, %8765
  %8776 = fmul fast float %8775, %8772
  %8777 = fmul fast float %8775, %8773
  %8778 = fmul fast float %8775, %8774
  br label %8838

; <label>:8779                                    ; preds = %8738
  %8780 = fmul fast float %8749, %8311
  %8781 = call float @dx.op.unary.f32(i32 7, float %8780)  ; Saturate(value)
  %8782 = fsub fast float 2.000000e+00, %8781
  %8783 = fmul fast float %8781, 9.921875e-01
  %8784 = fmul fast float %8783, %8782
  %8785 = fadd fast float %8784, 3.906250e-03
  %8786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %8785, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8787 = extractvalue %dx.types.ResRet.f32 %8786, 0
  %8788 = fsub fast float %8781, %8787
  %8789 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8788)  ; FMax(a,b)
  %8790 = fmul fast float %8297, %8278
  %8791 = call float @dx.op.unary.f32(i32 6, float %8790)  ; FAbs(value)
  %8792 = fcmp fast ogt float %8791, 0x3EB0C6F7A0000000
  br i1 %8792, label %8793, label %8799, !dx.controlflow.hints !157

; <label>:8793                                    ; preds = %8779
  %8794 = fmul fast float %8790, 0xBFF7154760000000
  %8795 = call float @dx.op.unary.f32(i32 21, float %8794)  ; Exp(value)
  %8796 = fsub fast float 1.000000e+00, %8795
  %8797 = fdiv fast float %8796, %8790
  %8798 = fmul fast float %8797, %8307
  br label %8799

; <label>:8799                                    ; preds = %8793, %8779
  %8800 = phi float [ %8798, %8793 ], [ %8307, %8779 ]
  %8801 = fadd fast float %8800, %8309
  %8802 = fmul fast float %8801, %8789
  %8803 = fmul fast float %8294, %8802
  %8804 = fsub fast float -0.000000e+00, %8803
  %8805 = fmul fast float %8295, %8802
  %8806 = fsub fast float -0.000000e+00, %8805
  %8807 = fmul fast float %8296, %8802
  %8808 = fsub fast float -0.000000e+00, %8807
  %8809 = call float @dx.op.unary.f32(i32 21, float %8804)  ; Exp(value)
  %8810 = call float @dx.op.unary.f32(i32 21, float %8806)  ; Exp(value)
  %8811 = call float @dx.op.unary.f32(i32 21, float %8808)  ; Exp(value)
  %8812 = fmul fast float %8323, %8323
  %8813 = fadd fast float %8812, 1.000000e+00
  %8814 = fmul fast float %8813, 0x3FAE8EC8A0000000
  %8815 = fmul fast float %8814, %8304
  %8816 = fmul fast float %8814, %8305
  %8817 = fmul fast float %8814, %8306
  %8818 = fmul fast float %8323, %8302
  %8819 = fsub fast float 1.000000e+00, %8818
  %8820 = fmul fast float %8302, %8302
  %8821 = fsub fast float 1.000000e+00, %8820
  %8822 = fmul fast float %8821, 0x3FB45F3060000000
  %8823 = fmul fast float %8819, %8819
  %8824 = fdiv fast float 1.000000e+00, %8823
  %8825 = fmul fast float %8822, %8824
  %8826 = fmul fast float %8825, %8299
  %8827 = fmul fast float %8825, %8300
  %8828 = fmul fast float %8825, %8301
  %8829 = fadd fast float %8826, %8815
  %8830 = fadd fast float %8827, %8816
  %8831 = fadd fast float %8828, %8817
  %8832 = fsub fast float 1.000000e+00, %8809
  %8833 = fsub fast float 1.000000e+00, %8810
  %8834 = fsub fast float 1.000000e+00, %8811
  %8835 = fmul fast float %8829, %8832
  %8836 = fmul fast float %8830, %8833
  %8837 = fmul fast float %8831, %8834
  br label %8838

; <label>:8838                                    ; preds = %8799, %8750
  %8839 = phi float [ %8776, %8750 ], [ %8835, %8799 ]
  %8840 = phi float [ %8777, %8750 ], [ %8836, %8799 ]
  %8841 = phi float [ %8778, %8750 ], [ %8837, %8799 ]
  %8842 = phi float [ %8765, %8750 ], [ %8809, %8799 ]
  %8843 = phi float [ %8765, %8750 ], [ %8810, %8799 ]
  %8844 = phi float [ %8765, %8750 ], [ %8811, %8799 ]
  br i1 %8331, label %8845, label %9043, !dx.controlflow.hints !158

; <label>:8845                                    ; preds = %8838
  %8846 = extractvalue %dx.types.CBufRet.f32 %8744, 0
  %8847 = fmul fast float %8846, %8746
  %8848 = fsub fast float %8741, %8839
  %8849 = fsub fast float %8742, %8840
  %8850 = fsub fast float %8743, %8841
  %8851 = fmul fast float %8847, %8848
  %8852 = fmul fast float %8847, %8849
  %8853 = fmul fast float %8847, %8850
  %8854 = fadd fast float %8851, %8839
  %8855 = fadd fast float %8852, %8840
  %8856 = fadd fast float %8853, %8841
  %8857 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8842)  ; FMax(a,b)
  %8858 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8843)  ; FMax(a,b)
  %8859 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8844)  ; FMax(a,b)
  %8860 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8740)  ; FMax(a,b)
  %8861 = call float @dx.op.binary.f32(i32 35, float %8739, float %8749)  ; FMax(a,b)
  %8862 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8861)  ; FMax(a,b)
  %8863 = fdiv fast float %8739, %8862
  %8864 = call float @dx.op.unary.f32(i32 7, float %8863)  ; Saturate(value)
  %8865 = fdiv fast float %8749, %8862
  %8866 = call float @dx.op.unary.f32(i32 7, float %8865)  ; Saturate(value)
  %8867 = fcmp fast une float %8860, 1.000000e+00
  br i1 %8867, label %8868, label %8881, !dx.controlflow.hints !159

; <label>:8868                                    ; preds = %8845
  %8869 = call float @dx.op.unary.f32(i32 23, float %8860)  ; Log(value)
  %8870 = fmul fast float %8869, 0x3FE62E4300000000
  %8871 = fmul fast float %8741, %8870
  %8872 = fsub fast float -0.000000e+00, %8871
  %8873 = fmul fast float %8742, %8870
  %8874 = fsub fast float -0.000000e+00, %8873
  %8875 = fmul fast float %8743, %8870
  %8876 = fsub fast float -0.000000e+00, %8875
  %8877 = fsub fast float 1.000000e+00, %8860
  %8878 = fdiv fast float %8872, %8877
  %8879 = fdiv fast float %8874, %8877
  %8880 = fdiv fast float %8876, %8877
  br label %8881

; <label>:8881                                    ; preds = %8868, %8845
  %8882 = phi float [ %8878, %8868 ], [ %8741, %8845 ]
  %8883 = phi float [ %8879, %8868 ], [ %8742, %8845 ]
  %8884 = phi float [ %8880, %8868 ], [ %8743, %8845 ]
  %8885 = phi float [ %8870, %8868 ], [ 0.000000e+00, %8845 ]
  %8886 = fcmp fast une float %8857, 1.000000e+00
  br i1 %8886, label %8887, label %8894, !dx.controlflow.hints !160

; <label>:8887                                    ; preds = %8881
  %8888 = call float @dx.op.unary.f32(i32 23, float %8857)  ; Log(value)
  %8889 = fmul fast float %8888, 0x3FE62E4300000000
  %8890 = fmul fast float %8854, %8889
  %8891 = fsub fast float -0.000000e+00, %8890
  %8892 = fsub fast float 1.000000e+00, %8857
  %8893 = fdiv fast float %8891, %8892
  br label %8894

; <label>:8894                                    ; preds = %8887, %8881
  %8895 = phi float [ %8893, %8887 ], [ %8854, %8881 ]
  %8896 = phi float [ %8889, %8887 ], [ 0.000000e+00, %8881 ]
  %8897 = fcmp fast une float %8858, 1.000000e+00
  br i1 %8897, label %8898, label %8905, !dx.controlflow.hints !160

; <label>:8898                                    ; preds = %8894
  %8899 = call float @dx.op.unary.f32(i32 23, float %8858)  ; Log(value)
  %8900 = fmul fast float %8899, 0x3FE62E4300000000
  %8901 = fmul fast float %8855, %8900
  %8902 = fsub fast float -0.000000e+00, %8901
  %8903 = fsub fast float 1.000000e+00, %8858
  %8904 = fdiv fast float %8902, %8903
  br label %8905

; <label>:8905                                    ; preds = %8898, %8894
  %8906 = phi float [ %8904, %8898 ], [ %8855, %8894 ]
  %8907 = phi float [ %8900, %8898 ], [ 0.000000e+00, %8894 ]
  %8908 = fcmp fast une float %8859, 1.000000e+00
  br i1 %8908, label %8909, label %8916, !dx.controlflow.hints !160

; <label>:8909                                    ; preds = %8905
  %8910 = call float @dx.op.unary.f32(i32 23, float %8859)  ; Log(value)
  %8911 = fmul fast float %8910, 0x3FE62E4300000000
  %8912 = fmul fast float %8856, %8911
  %8913 = fsub fast float -0.000000e+00, %8912
  %8914 = fsub fast float 1.000000e+00, %8859
  %8915 = fdiv fast float %8913, %8914
  br label %8916

; <label>:8916                                    ; preds = %8909, %8905
  %8917 = phi float [ %8915, %8909 ], [ %8856, %8905 ]
  %8918 = phi float [ %8911, %8909 ], [ 0.000000e+00, %8905 ]
  %8919 = fmul fast float %8882, %8866
  %8920 = fmul fast float %8883, %8866
  %8921 = fmul fast float %8884, %8866
  %8922 = fmul fast float %8885, %8866
  %8923 = fmul fast float %8895, %8864
  %8924 = fmul fast float %8906, %8864
  %8925 = fmul fast float %8917, %8864
  %8926 = fmul fast float %8896, %8864
  %8927 = fmul fast float %8907, %8864
  %8928 = fmul fast float %8918, %8864
  %8929 = fadd fast float %8923, %8919
  %8930 = fadd fast float %8924, %8920
  %8931 = fadd fast float %8925, %8921
  %8932 = fadd fast float %8926, %8922
  %8933 = fadd fast float %8927, %8922
  %8934 = fadd fast float %8928, %8922
  %8935 = fcmp fast une float %8932, 0.000000e+00
  br i1 %8935, label %8936, label %8943, !dx.controlflow.hints !161

; <label>:8936                                    ; preds = %8916
  %8937 = fmul fast float %8932, 0x3FF7154760000000
  %8938 = call float @dx.op.unary.f32(i32 21, float %8937)  ; Exp(value)
  %8939 = fsub fast float 1.000000e+00, %8938
  %8940 = fmul fast float %8929, %8939
  %8941 = fsub fast float -0.000000e+00, %8940
  %8942 = fdiv fast float %8941, %8932
  br label %8943

; <label>:8943                                    ; preds = %8936, %8916
  %8944 = phi float [ %8938, %8936 ], [ 1.000000e+00, %8916 ]
  %8945 = phi float [ %8942, %8936 ], [ %8929, %8916 ]
  %8946 = fcmp fast une float %8933, 0.000000e+00
  br i1 %8946, label %8947, label %8954, !dx.controlflow.hints !161

; <label>:8947                                    ; preds = %8943
  %8948 = fmul fast float %8933, 0x3FF7154760000000
  %8949 = call float @dx.op.unary.f32(i32 21, float %8948)  ; Exp(value)
  %8950 = fsub fast float 1.000000e+00, %8949
  %8951 = fmul fast float %8930, %8950
  %8952 = fsub fast float -0.000000e+00, %8951
  %8953 = fdiv fast float %8952, %8933
  br label %8954

; <label>:8954                                    ; preds = %8947, %8943
  %8955 = phi float [ %8949, %8947 ], [ 1.000000e+00, %8943 ]
  %8956 = phi float [ %8953, %8947 ], [ %8930, %8943 ]
  %8957 = fcmp fast une float %8934, 0.000000e+00
  br i1 %8957, label %8958, label %8965, !dx.controlflow.hints !161

; <label>:8958                                    ; preds = %8954
  %8959 = fmul fast float %8934, 0x3FF7154760000000
  %8960 = call float @dx.op.unary.f32(i32 21, float %8959)  ; Exp(value)
  %8961 = fsub fast float 1.000000e+00, %8960
  %8962 = fmul fast float %8931, %8961
  %8963 = fsub fast float -0.000000e+00, %8962
  %8964 = fdiv fast float %8963, %8934
  br label %8965

; <label>:8965                                    ; preds = %8958, %8954
  %8966 = phi float [ %8960, %8958 ], [ 1.000000e+00, %8954 ]
  %8967 = phi float [ %8964, %8958 ], [ %8931, %8954 ]
  %8968 = fcmp fast ogt float %8864, %8866
  br i1 %8968, label %8969, label %8989

; <label>:8969                                    ; preds = %8965
  %8970 = fsub fast float 1.000000e+00, %8866
  %8971 = fmul fast float %8882, %8970
  %8972 = fmul fast float %8883, %8970
  %8973 = fmul fast float %8884, %8970
  %8974 = fmul fast float %8885, %8970
  %8975 = fcmp fast une float %8974, 0.000000e+00
  br i1 %8975, label %8976, label %9027, !dx.controlflow.hints !162

; <label>:8976                                    ; preds = %8969
  %8977 = fmul fast float %8974, 0x3FF7154760000000
  %8978 = call float @dx.op.unary.f32(i32 21, float %8977)  ; Exp(value)
  %8979 = fsub fast float 1.000000e+00, %8978
  %8980 = fmul fast float %8971, %8979
  %8981 = fsub fast float -0.000000e+00, %8980
  %8982 = fmul fast float %8972, %8979
  %8983 = fsub fast float -0.000000e+00, %8982
  %8984 = fmul fast float %8973, %8979
  %8985 = fsub fast float -0.000000e+00, %8984
  %8986 = fdiv fast float %8981, %8974
  %8987 = fdiv fast float %8983, %8974
  %8988 = fdiv fast float %8985, %8974
  br label %9027

; <label>:8989                                    ; preds = %8965
  %8990 = fsub fast float 1.000000e+00, %8864
  %8991 = fmul fast float %8895, %8990
  %8992 = fmul fast float %8906, %8990
  %8993 = fmul fast float %8917, %8990
  %8994 = fmul fast float %8896, %8990
  %8995 = fmul fast float %8907, %8990
  %8996 = fmul fast float %8918, %8990
  %8997 = fcmp fast une float %8994, 0.000000e+00
  br i1 %8997, label %8998, label %9005, !dx.controlflow.hints !161

; <label>:8998                                    ; preds = %8989
  %8999 = fmul fast float %8994, 0x3FF7154760000000
  %9000 = call float @dx.op.unary.f32(i32 21, float %8999)  ; Exp(value)
  %9001 = fsub fast float 1.000000e+00, %9000
  %9002 = fmul fast float %8991, %9001
  %9003 = fsub fast float -0.000000e+00, %9002
  %9004 = fdiv fast float %9003, %8994
  br label %9005

; <label>:9005                                    ; preds = %8998, %8989
  %9006 = phi float [ %9004, %8998 ], [ %8991, %8989 ]
  %9007 = phi float [ %9000, %8998 ], [ 1.000000e+00, %8989 ]
  %9008 = fcmp fast une float %8995, 0.000000e+00
  br i1 %9008, label %9009, label %9016, !dx.controlflow.hints !161

; <label>:9009                                    ; preds = %9005
  %9010 = fmul fast float %8995, 0x3FF7154760000000
  %9011 = call float @dx.op.unary.f32(i32 21, float %9010)  ; Exp(value)
  %9012 = fsub fast float 1.000000e+00, %9011
  %9013 = fmul fast float %8992, %9012
  %9014 = fsub fast float -0.000000e+00, %9013
  %9015 = fdiv fast float %9014, %8995
  br label %9016

; <label>:9016                                    ; preds = %9009, %9005
  %9017 = phi float [ %9015, %9009 ], [ %8992, %9005 ]
  %9018 = phi float [ %9011, %9009 ], [ 1.000000e+00, %9005 ]
  %9019 = fcmp fast une float %8996, 0.000000e+00
  br i1 %9019, label %9020, label %9027, !dx.controlflow.hints !161

; <label>:9020                                    ; preds = %9016
  %9021 = fmul fast float %8996, 0x3FF7154760000000
  %9022 = call float @dx.op.unary.f32(i32 21, float %9021)  ; Exp(value)
  %9023 = fsub fast float 1.000000e+00, %9022
  %9024 = fmul fast float %8993, %9023
  %9025 = fsub fast float -0.000000e+00, %9024
  %9026 = fdiv fast float %9025, %8996
  br label %9027

; <label>:9027                                    ; preds = %9020, %9016, %8976, %8969
  %9028 = phi float [ %9026, %9020 ], [ %8988, %8976 ], [ %8973, %8969 ], [ %8993, %9016 ]
  %9029 = phi float [ %9017, %9020 ], [ %8987, %8976 ], [ %8972, %8969 ], [ %9017, %9016 ]
  %9030 = phi float [ %9006, %9020 ], [ %8986, %8976 ], [ %8971, %8969 ], [ %9006, %9016 ]
  %9031 = phi float [ %9022, %9020 ], [ %8978, %8976 ], [ 1.000000e+00, %8969 ], [ 1.000000e+00, %9016 ]
  %9032 = phi float [ %9018, %9020 ], [ %8978, %8976 ], [ 1.000000e+00, %8969 ], [ %9018, %9016 ]
  %9033 = phi float [ %9007, %9020 ], [ %8978, %8976 ], [ 1.000000e+00, %8969 ], [ %9007, %9016 ]
  %9034 = fmul fast float %9033, %8945
  %9035 = fmul fast float %9032, %8956
  %9036 = fmul fast float %9031, %8967
  %9037 = fadd fast float %9034, %9030
  %9038 = fadd fast float %9035, %9029
  %9039 = fadd fast float %9036, %9028
  %9040 = fmul fast float %9033, %8944
  %9041 = fmul fast float %9032, %8955
  %9042 = fmul fast float %9031, %8966
  br label %9043

; <label>:9043                                    ; preds = %9027, %8838
  %9044 = phi float [ %9042, %9027 ], [ %8844, %8838 ]
  %9045 = phi float [ %9041, %9027 ], [ %8843, %8838 ]
  %9046 = phi float [ %9040, %9027 ], [ %8842, %8838 ]
  %9047 = phi float [ %9039, %9027 ], [ %8841, %8838 ]
  %9048 = phi float [ %9038, %9027 ], [ %8840, %8838 ]
  %9049 = phi float [ %9037, %9027 ], [ %8839, %8838 ]
  %9050 = fmul fast float %9049, %8003
  %9051 = fmul fast float %9048, %8004
  %9052 = fmul fast float %9047, %8005
  %9053 = fmul fast float %9046, %8286
  %9054 = call float @dx.op.dot3.f32(i32 55, float %9046, float %9045, float %9044, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9055 = call float @dx.op.dot3.f32(i32 55, float %9050, float %9051, float %9052, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9056 = select i1 %245, float %9054, float %9046
  %9057 = select i1 %245, float %9054, float %9045
  %9058 = select i1 %245, float 1.000000e+00, float %9044
  %9059 = select i1 %245, float %9055, float %9050
  %9060 = select i1 %245, float 0.000000e+00, float %9051
  %9061 = select i1 %245, float 0.000000e+00, float %9052
  %9062 = fmul fast float %9056, %8280
  %9063 = fmul fast float %9057, %8281
  %9064 = fmul fast float %9058, %8282
  %9065 = fadd fast float %9062, %9059
  %9066 = fadd fast float %9063, %9060
  %9067 = fadd fast float %9061, %9064
  %9068 = fmul fast float %9056, %8283
  %9069 = fmul fast float %9057, %8284
  %9070 = fmul fast float %9058, %8285
  %9071 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9072 = extractvalue %dx.types.CBufRet.i32 %9071, 0
  %9073 = icmp eq i32 %9072, 0
  br i1 %9073, label %9441, label %9074, !dx.controlflow.hints !163

; <label>:9074                                    ; preds = %9043
  %9075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9076 = extractvalue %dx.types.CBufRet.f32 %9075, 2
  %9077 = extractvalue %dx.types.CBufRet.f32 %9075, 3
  %9078 = fmul fast float %9076, %97
  %9079 = fmul fast float %9077, %98
  %9080 = fmul fast float %9078, 2.000000e+00
  %9081 = fmul fast float %9079, 2.000000e+00
  %9082 = fsub fast float 1.000000e+00, %9080
  %9083 = fsub fast float 1.000000e+00, %9081
  %9084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.f32 %9084, 0
  %9086 = extractvalue %dx.types.CBufRet.f32 %9084, 1
  %9087 = extractvalue %dx.types.CBufRet.f32 %9084, 2
  %9088 = fmul fast float %9082, %9085
  %9089 = fmul fast float %9082, %9086
  %9090 = fmul fast float %9082, %9087
  %9091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9092 = extractvalue %dx.types.CBufRet.f32 %9091, 0
  %9093 = extractvalue %dx.types.CBufRet.f32 %9091, 1
  %9094 = extractvalue %dx.types.CBufRet.f32 %9091, 2
  %9095 = fmul fast float %9083, %9092
  %9096 = fmul fast float %9083, %9093
  %9097 = fmul fast float %9083, %9094
  %9098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9099 = extractvalue %dx.types.CBufRet.f32 %9098, 0
  %9100 = extractvalue %dx.types.CBufRet.f32 %9098, 1
  %9101 = extractvalue %dx.types.CBufRet.f32 %9098, 2
  %9102 = fadd fast float %9095, %9099
  %9103 = fadd fast float %9102, %9088
  %9104 = fadd fast float %9096, %9100
  %9105 = fadd fast float %9104, %9089
  %9106 = fadd fast float %9097, %9101
  %9107 = fadd fast float %9106, %9090
  %9108 = fmul fast float %9103, %8279
  %9109 = fmul fast float %9105, %8279
  %9110 = fmul fast float %9107, %8279
  %9111 = fmul fast float %9108, %9108
  %9112 = fmul fast float %9109, %9109
  %9113 = fadd fast float %9111, %9112
  %9114 = fmul fast float %9110, %9110
  %9115 = fadd fast float %9113, %9114
  %9116 = call float @dx.op.unary.f32(i32 24, float %9115)  ; Sqrt(value)
  %9117 = extractvalue %dx.types.CBufRet.f32 %8006, 0
  %9118 = fsub fast float %9116, %9117
  %9119 = extractvalue %dx.types.CBufRet.f32 %8006, 2
  %9120 = fmul fast float %9118, %9119
  %9121 = call float @dx.op.unary.f32(i32 7, float %9120)  ; Saturate(value)
  %9122 = fadd fast float %9121, -5.000000e-01
  %9123 = fmul fast float %9122, 2.000000e+00
  %9124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9125 = extractvalue %dx.types.CBufRet.f32 %9124, 2
  %9126 = call float @dx.op.binary.f32(i32 36, float %9125, float %9123)  ; FMin(a,b)
  %9127 = fsub fast float -0.000000e+00, %9125
  %9128 = fcmp fast ogt float %9126, %9127
  br i1 %9128, label %9129, label %9441, !dx.controlflow.hints !164

; <label>:9129                                    ; preds = %9074
  %9130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9131 = extractvalue %dx.types.CBufRet.f32 %9130, 3
  %9132 = fcmp fast ogt float %9131, 0.000000e+00
  br i1 %9132, label %9133, label %9208, !dx.controlflow.hints !165

; <label>:9133                                    ; preds = %9129
  %9134 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %9135 = extractvalue %dx.types.Dimensions %9134, 0
  %9136 = sitofp i32 %9135 to float
  %9137 = extractvalue %dx.types.Dimensions %9134, 1
  %9138 = sitofp i32 %9137 to float
  %9139 = fmul fast float %9078, %9136
  %9140 = fmul fast float %9079, %9138
  %9141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9142 = extractvalue %dx.types.CBufRet.f32 %9141, 1
  %9143 = fsub fast float -0.000000e+00, %9142
  %9144 = fptoui float %9143 to i32
  %9145 = fptoui float %9139 to i32
  %9146 = fptoui float %9140 to i32
  %9147 = and i32 %9144, 31
  %9148 = lshr i32 %9145, %9147
  %9149 = lshr i32 %9146, %9147
  %9150 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %9144, i32 %9148, i32 %9149, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9151 = extractvalue %dx.types.ResRet.f32 %9150, 0
  %9152 = fcmp fast olt float %9151, -1.000000e+00
  %9153 = fcmp fast ogt float %9151, -1.000000e+00
  %9154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9155 = extractvalue %dx.types.CBufRet.f32 %9154, 1
  %9156 = select i1 %9153, float %9155, float 1.000000e+00
  %9157 = fadd fast float %9151, 1.000000e+00
  %9158 = fmul fast float %9156, %9157
  %9159 = call float @dx.op.unary.f32(i32 6, float %9158)  ; FAbs(value)
  %9160 = extractvalue %dx.types.CBufRet.f32 %9154, 3
  %9161 = fcmp fast oge float %9159, %9160
  %9162 = select i1 %9161, float 0x4197782600000000, float %9159
  %9163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9164 = extractvalue %dx.types.CBufRet.f32 %9163, 0
  %9165 = extractvalue %dx.types.CBufRet.f32 %9163, 1
  %9166 = extractvalue %dx.types.CBufRet.f32 %9163, 2
  %9167 = select i1 %9152, float %9164, float %9085
  %9168 = select i1 %9152, float %9165, float %9086
  %9169 = select i1 %9152, float %9166, float %9087
  %9170 = fmul fast float %9167, %9082
  %9171 = fmul fast float %9168, %9082
  %9172 = fmul fast float %9169, %9082
  %9173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9174 = extractvalue %dx.types.CBufRet.f32 %9173, 0
  %9175 = extractvalue %dx.types.CBufRet.f32 %9173, 1
  %9176 = extractvalue %dx.types.CBufRet.f32 %9173, 2
  %9177 = select i1 %9152, float %9174, float %9092
  %9178 = select i1 %9152, float %9175, float %9093
  %9179 = select i1 %9152, float %9176, float %9094
  %9180 = fmul fast float %9177, %9083
  %9181 = fmul fast float %9178, %9083
  %9182 = fmul fast float %9179, %9083
  %9183 = fadd fast float %9180, %9170
  %9184 = fadd fast float %9181, %9171
  %9185 = fadd fast float %9182, %9172
  %9186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9187 = extractvalue %dx.types.CBufRet.f32 %9186, 0
  %9188 = extractvalue %dx.types.CBufRet.f32 %9186, 1
  %9189 = extractvalue %dx.types.CBufRet.f32 %9186, 2
  %9190 = select i1 %9152, float %9187, float %9099
  %9191 = select i1 %9152, float %9188, float %9100
  %9192 = select i1 %9152, float %9189, float %9101
  %9193 = fadd fast float %9183, %9190
  %9194 = fadd fast float %9184, %9191
  %9195 = fadd fast float %9185, %9192
  %9196 = fmul fast float %9193, %9162
  %9197 = fmul fast float %9194, %9162
  %9198 = fmul fast float %9195, %9162
  %9199 = fmul fast float %9196, %9196
  %9200 = fmul fast float %9197, %9197
  %9201 = fadd fast float %9199, %9200
  %9202 = fmul fast float %9198, %9198
  %9203 = fadd fast float %9201, %9202
  %9204 = call float @dx.op.unary.f32(i32 24, float %9203)  ; Sqrt(value)
  %9205 = fsub fast float %9204, %9117
  %9206 = fmul fast float %9205, %9119
  %9207 = call float @dx.op.unary.f32(i32 7, float %9206)  ; Saturate(value)
  br label %9208

; <label>:9208                                    ; preds = %9133, %9129
  %9209 = phi float [ %9207, %9133 ], [ 1.000000e+00, %9129 ]
  %9210 = fmul fast float %9126, 5.000000e-01
  %9211 = fadd fast float %9210, 5.000000e-01
  %9212 = call float @dx.op.unary.f32(i32 22, float %9211)  ; Frc(value)
  %9213 = call float @dx.op.unary.f32(i32 27, float %9212)  ; Round_ni(value)
  %9214 = call float @dx.op.unary.f32(i32 22, float %9212)  ; Frc(value)
  %9215 = fmul fast float %9214, 2.000000e+00
  %9216 = fadd fast float %9215, -1.000000e+00
  %9217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %9078, float %9079, float %9213, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9218 = extractvalue %dx.types.ResRet.f32 %9217, 0
  %9219 = extractvalue %dx.types.ResRet.f32 %9217, 1
  %9220 = extractvalue %dx.types.ResRet.f32 %9217, 2
  %9221 = extractvalue %dx.types.ResRet.f32 %9217, 3
  %9222 = fadd fast float %9218, -5.000000e-01
  %9223 = fadd fast float %9220, -5.000000e-01
  %9224 = fmul fast float %9222, 0xBFD5555560000000
  %9225 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9223, float %9224)  ; FMad(a,b,c)
  %9226 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9219, float 0.000000e+00)  ; FMad(a,b,c)
  %9227 = fadd fast float %9226, %9221
  %9228 = fmul fast float %9222, -7.500000e-01
  %9229 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9223, float %9228)  ; FMad(a,b,c)
  %9230 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9219, float 0.000000e+00)  ; FMad(a,b,c)
  %9231 = fadd fast float %9230, %9221
  %9232 = call float @dx.op.binary.f32(i32 35, float %9225, float -1.000000e+00)  ; FMax(a,b)
  %9233 = call float @dx.op.binary.f32(i32 35, float %9227, float -1.000000e+00)  ; FMax(a,b)
  %9234 = call float @dx.op.binary.f32(i32 35, float %9229, float -1.000000e+00)  ; FMax(a,b)
  %9235 = call float @dx.op.binary.f32(i32 35, float %9231, float -1.000000e+00)  ; FMax(a,b)
  %9236 = call float @dx.op.binary.f32(i32 36, float %9232, float 1.000000e+00)  ; FMin(a,b)
  %9237 = call float @dx.op.binary.f32(i32 36, float %9233, float 1.000000e+00)  ; FMin(a,b)
  %9238 = call float @dx.op.binary.f32(i32 36, float %9234, float 1.000000e+00)  ; FMin(a,b)
  %9239 = call float @dx.op.binary.f32(i32 36, float %9235, float 1.000000e+00)  ; FMin(a,b)
  %9240 = fcmp fast olt float %9236, 0x3FEFFF8020000000
  br i1 %9240, label %9241, label %9356, !dx.controlflow.hints !166

; <label>:9241                                    ; preds = %9208
  %9242 = extractvalue %dx.types.CBufRet.f32 %9124, 3
  %9243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9244 = extractvalue %dx.types.CBufRet.f32 %9243, 0
  %9245 = extractvalue %dx.types.CBufRet.f32 %9243, 1
  %9246 = extractvalue %dx.types.CBufRet.f32 %9243, 2
  %9247 = extractvalue %dx.types.CBufRet.f32 %9243, 3
  %9248 = fsub fast float %9244, %9236
  %9249 = fsub fast float %9245, %9237
  %9250 = fsub fast float %9246, %9238
  %9251 = fsub fast float %9247, %9239
  %9252 = fmul fast float %9248, %9242
  %9253 = fmul fast float %9249, %9242
  %9254 = fmul fast float %9250, %9242
  %9255 = fmul fast float %9251, %9242
  %9256 = fadd fast float %9252, %9236
  %9257 = fadd fast float %9253, %9237
  %9258 = fsub fast float -0.000000e+00, %9257
  %9259 = fadd fast float %9254, %9238
  %9260 = fadd fast float %9255, %9239
  %9261 = fmul fast float %9256, %9256
  %9262 = fsub fast float %9257, %9261
  %9263 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9262)  ; FMax(a,b)
  %9264 = fdiv fast float 1.000000e+00, %9263
  %9265 = fmul fast float %9257, %9256
  %9266 = fsub fast float %9259, %9265
  %9267 = fsub fast float %9216, %9256
  %9268 = fmul fast float %9216, %9216
  %9269 = fsub fast float %9268, %9257
  %9270 = fmul fast float %9267, %9264
  %9271 = fmul fast float %9270, %9266
  %9272 = fsub fast float %9269, %9271
  %9273 = fmul fast float %9257, %9257
  %9274 = fsub fast float %9260, %9273
  %9275 = fmul fast float %9266, %9266
  %9276 = fmul fast float %9275, %9264
  %9277 = fsub fast float %9274, %9276
  %9278 = fdiv fast float %9272, %9277
  %9279 = fmul fast float %9266, %9278
  %9280 = fsub fast float %9267, %9279
  %9281 = fmul fast float %9280, %9264
  %9282 = fmul fast float %9281, %9256
  %9283 = fsub fast float 1.000000e+00, %9282
  %9284 = fmul fast float %9257, %9278
  %9285 = fsub fast float %9283, %9284
  %9286 = fmul fast float %9281, %9281
  %9287 = fmul fast float %9278, 4.000000e+00
  %9288 = fmul fast float %9287, %9285
  %9289 = fsub fast float %9286, %9288
  %9290 = call float @dx.op.unary.f32(i32 24, float %9289)  ; Sqrt(value)
  %9291 = fcmp fast oge float %9281, 0.000000e+00
  %9292 = fsub fast float -0.000000e+00, %9290
  %9293 = select i1 %9291, float %9292, float %9290
  %9294 = fsub fast float %9293, %9281
  %9295 = fdiv fast float %9294, %9278
  %9296 = fdiv fast float %9285, %9294
  %9297 = fmul fast float %9295, 5.000000e-01
  %9298 = fmul fast float %9296, 2.000000e+00
  %9299 = select i1 %9291, float %9297, float %9298
  %9300 = select i1 %9291, float %9298, float %9297
  %9301 = call float @dx.op.binary.f32(i32 35, float %9299, float %9300)  ; FMax(a,b)
  %9302 = call float @dx.op.binary.f32(i32 36, float %9299, float %9300)  ; FMin(a,b)
  %9303 = fcmp fast ogt float %9216, %9302
  br i1 %9303, label %9304, label %9314

; <label>:9304                                    ; preds = %9241
  %9305 = fsub fast float %9216, %9302
  %9306 = fsub fast float %9301, %9302
  %9307 = fmul fast float %9305, %9306
  %9308 = fmul fast float %9301, %9216
  %9309 = fadd fast float %9301, %9216
  %9310 = fmul fast float %9309, %9256
  %9311 = fadd fast float %9308, %9257
  %9312 = fsub fast float %9311, %9310
  %9313 = fdiv fast float %9312, %9307
  br label %9314

; <label>:9314                                    ; preds = %9304, %9241
  %9315 = phi float [ %9313, %9304 ], [ 0.000000e+00, %9241 ]
  %9316 = fcmp fast ogt float %9216, %9301
  %9317 = fsub fast float %9216, %9301
  br i1 %9316, label %9318, label %9328

; <label>:9318                                    ; preds = %9314
  %9319 = fsub fast float %9301, %9302
  %9320 = fmul fast float %9319, %9317
  %9321 = fmul fast float %9302, %9216
  %9322 = fadd fast float %9302, %9216
  %9323 = fmul fast float %9322, %9256
  %9324 = fsub fast float %9258, %9321
  %9325 = fadd fast float %9324, %9323
  %9326 = fdiv fast float %9325, %9320
  %9327 = fadd fast float %9326, %9315
  br label %9328

; <label>:9328                                    ; preds = %9318, %9314
  %9329 = phi float [ %9327, %9318 ], [ %9315, %9314 ]
  %9330 = fsub fast float %9216, %9302
  %9331 = fmul fast float %9330, %9317
  %9332 = fmul fast float %9302, %9301
  %9333 = fadd fast float %9302, %9301
  %9334 = fmul fast float %9333, %9256
  %9335 = fadd fast float %9332, %9257
  %9336 = fsub fast float %9335, %9334
  %9337 = fdiv fast float %9336, %9331
  %9338 = call float @dx.op.unary.f32(i32 7, float %9329)  ; Saturate(value)
  %9339 = fcmp fast oeq float %8007, 0.000000e+00
  %9340 = extractvalue %dx.types.CBufRet.f32 %9124, 0
  %9341 = fcmp fast oeq float %9340, 0.000000e+00
  %9342 = or i1 %9339, %9341
  %9343 = fmul fast float %9340, 2.000000e+00
  %9344 = fadd fast float %9125, %9126
  %9345 = fdiv fast float %9344, %9343
  %9346 = call float @dx.op.unary.f32(i32 7, float %9345)  ; Saturate(value)
  %9347 = fmul fast float %9346, 2.000000e+00
  %9348 = fsub fast float 3.000000e+00, %9347
  %9349 = fmul fast float %9346, %9346
  %9350 = fmul fast float %9349, %9348
  %9351 = select i1 %9342, float 1.000000e+00, float %9350
  %9352 = fmul fast float %9337, %8007
  %9353 = fadd fast float %9338, %9352
  %9354 = call float @dx.op.unary.f32(i32 7, float %9353)  ; Saturate(value)
  %9355 = fmul fast float %9351, %9354
  br label %9356

; <label>:9356                                    ; preds = %9328, %9208
  %9357 = phi float [ %9355, %9328 ], [ 0.000000e+00, %9208 ]
  %9358 = fsub fast float 1.000000e+00, %9357
  %9359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %9078, float %9079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9360 = extractvalue %dx.types.ResRet.f32 %9359, 0
  %9361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9362 = extractvalue %dx.types.CBufRet.i32 %9361, 2
  %9363 = icmp eq i32 %9362, 0
  br i1 %9363, label %9369, label %9364

; <label>:9364                                    ; preds = %9356
  %9365 = call float @dx.op.unary.f32(i32 7, float %9357)  ; Saturate(value)
  %9366 = fadd fast float %9360, -1.000000e+00
  %9367 = fmul fast float %9365, %9366
  %9368 = fadd fast float %9367, 1.000000e+00
  br label %9369

; <label>:9369                                    ; preds = %9364, %9356
  %9370 = phi float [ %9368, %9364 ], [ %9358, %9356 ]
  br i1 %9132, label %9371, label %9389

; <label>:9371                                    ; preds = %9369
  %9372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9373 = extractvalue %dx.types.CBufRet.f32 %9372, 1
  %9374 = fsub fast float %9209, %9373
  %9375 = call float @dx.op.unary.f32(i32 7, float %9374)  ; Saturate(value)
  %9376 = fsub fast float %9209, %9131
  %9377 = call float @dx.op.unary.f32(i32 7, float %9376)  ; Saturate(value)
  %9378 = fsub fast float %9375, %9377
  %9379 = fsub fast float %9211, %9377
  %9380 = fdiv fast float %9379, %9378
  %9381 = call float @dx.op.unary.f32(i32 7, float %9380)  ; Saturate(value)
  %9382 = fmul fast float %9381, 2.000000e+00
  %9383 = fsub fast float 3.000000e+00, %9382
  %9384 = fsub fast float %9360, %9370
  %9385 = fmul fast float %9381, %9381
  %9386 = fmul fast float %9385, %9384
  %9387 = fmul fast float %9386, %9383
  %9388 = fadd fast float %9387, %9370
  br label %9389

; <label>:9389                                    ; preds = %9371, %9369
  %9390 = phi float [ %9388, %9371 ], [ %9370, %9369 ]
  %9391 = call float @dx.op.binary.f32(i32 35, float %9360, float %9390)  ; FMax(a,b)
  %9392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9393 = extractvalue %dx.types.CBufRet.i32 %9392, 2
  %9394 = and i32 %9393, 1
  %9395 = icmp eq i32 %9394, 0
  %9396 = fcmp fast une float %9391, 1.000000e+00
  %9397 = and i1 %9396, %9395
  br i1 %9397, label %9398, label %9417

; <label>:9398                                    ; preds = %9389
  %9399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %9078, float %9079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9400 = extractvalue %dx.types.ResRet.f32 %9399, 0
  %9401 = extractvalue %dx.types.ResRet.f32 %9399, 1
  %9402 = extractvalue %dx.types.ResRet.f32 %9399, 2
  %9403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9404 = extractvalue %dx.types.CBufRet.f32 %9403, 1
  %9405 = fmul fast float %9404, %9400
  %9406 = fmul fast float %9404, %9401
  %9407 = fmul fast float %9404, %9402
  %9408 = fcmp fast ogt float %9360, 0x3FEFFF2E40000000
  %9409 = fsub fast float 1.000000e+00, %9391
  %9410 = fsub fast float 1.000000e+00, %9360
  %9411 = fdiv fast float %9409, %9410
  %9412 = call float @dx.op.unary.f32(i32 7, float %9411)  ; Saturate(value)
  %9413 = select i1 %9408, float 0.000000e+00, float %9412
  %9414 = fmul fast float %9405, %9413
  %9415 = fmul fast float %9406, %9413
  %9416 = fmul fast float %9407, %9413
  br label %9417

; <label>:9417                                    ; preds = %9398, %9389
  %9418 = phi float [ 0.000000e+00, %9389 ], [ %9414, %9398 ]
  %9419 = phi float [ 0.000000e+00, %9389 ], [ %9415, %9398 ]
  %9420 = phi float [ 0.000000e+00, %9389 ], [ %9416, %9398 ]
  %9421 = fmul fast float %9418, %8003
  %9422 = fmul fast float %9419, %8004
  %9423 = fmul fast float %9420, %8005
  %9424 = fmul fast float %9391, %9053
  %9425 = call float @dx.op.dot3.f32(i32 55, float %9391, float %9391, float %9391, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9426 = call float @dx.op.dot3.f32(i32 55, float %9421, float %9422, float %9423, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9427 = select i1 %245, float %9425, float %9391
  %9428 = select i1 %245, float 1.000000e+00, float %9391
  %9429 = select i1 %245, float %9426, float %9421
  %9430 = select i1 %245, float 0.000000e+00, float %9422
  %9431 = select i1 %245, float 0.000000e+00, float %9423
  %9432 = fmul fast float %9427, %9065
  %9433 = fmul fast float %9427, %9066
  %9434 = fmul fast float %9428, %9067
  %9435 = fadd fast float %9432, %9429
  %9436 = fadd fast float %9433, %9430
  %9437 = fadd fast float %9431, %9434
  %9438 = fmul fast float %9427, %9068
  %9439 = fmul fast float %9427, %9069
  %9440 = fmul fast float %9428, %9070
  br label %9441

; <label>:9441                                    ; preds = %9417, %9074, %9043, %8275
  %9442 = phi float [ %8280, %8275 ], [ %9065, %9043 ], [ %9435, %9417 ], [ %9065, %9074 ]
  %9443 = phi float [ %8281, %8275 ], [ %9066, %9043 ], [ %9436, %9417 ], [ %9066, %9074 ]
  %9444 = phi float [ %8282, %8275 ], [ %9067, %9043 ], [ %9437, %9417 ], [ %9067, %9074 ]
  %9445 = phi float [ %8283, %8275 ], [ %9068, %9043 ], [ %9438, %9417 ], [ %9068, %9074 ]
  %9446 = phi float [ %8284, %8275 ], [ %9069, %9043 ], [ %9439, %9417 ], [ %9069, %9074 ]
  %9447 = phi float [ %8285, %8275 ], [ %9070, %9043 ], [ %9440, %9417 ], [ %9070, %9074 ]
  %9448 = phi float [ %8286, %8275 ], [ %9053, %9043 ], [ %9424, %9417 ], [ %9053, %9074 ]
  %9449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9450 = extractvalue %dx.types.CBufRet.f32 %9449, 2
  %9451 = extractvalue %dx.types.CBufRet.f32 %9449, 3
  %9452 = fmul fast float %9450, %97
  %9453 = fmul fast float %9451, %98
  %9454 = call float @dx.op.unary.f32(i32 7, float %9452)  ; Saturate(value)
  %9455 = call float @dx.op.unary.f32(i32 7, float %9453)  ; Saturate(value)
  %9456 = select i1 %8017, i32 2, i32 0
  %9457 = or i32 %9456, 1
  %9458 = uitofp i32 %9457 to float
  %9459 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9454, float %9455, float %9458, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9460 = extractvalue %dx.types.ResRet.f32 %9459, 0
  %9461 = extractvalue %dx.types.ResRet.f32 %9459, 1
  %9462 = extractvalue %dx.types.ResRet.f32 %9459, 2
  %9463 = extractvalue %dx.types.ResRet.f32 %9459, 3
  %9464 = add nuw nsw i32 %9456, 2
  %9465 = uitofp i32 %9464 to float
  %9466 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9454, float %9455, float %9465, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9467 = extractvalue %dx.types.ResRet.f32 %9466, 0
  %9468 = extractvalue %dx.types.ResRet.f32 %9466, 1
  %9469 = extractvalue %dx.types.ResRet.f32 %9466, 2
  %9470 = extractvalue %dx.types.ResRet.f32 %9466, 3
  %9471 = call float @dx.op.binary.f32(i32 35, float %9461, float %9462)  ; FMax(a,b)
  %9472 = call float @dx.op.binary.f32(i32 35, float %9460, float %9471)  ; FMax(a,b)
  %9473 = call float @dx.op.binary.f32(i32 35, float %9472, float %9463)  ; FMax(a,b)
  %9474 = call float @dx.op.binary.f32(i32 36, float %9468, float %9469)  ; FMin(a,b)
  %9475 = call float @dx.op.binary.f32(i32 36, float %9467, float %9474)  ; FMin(a,b)
  %9476 = call float @dx.op.binary.f32(i32 36, float %9475, float %9470)  ; FMin(a,b)
  %9477 = fmul fast float %9473, 2.550000e+02
  %9478 = fadd fast float %9477, 0x3F70101020000000
  %9479 = fptoui float %9478 to i32
  %9480 = fmul fast float %9476, 2.550000e+02
  %9481 = fadd fast float %9480, 0x3F70101020000000
  %9482 = fptoui float %9481 to i32
  %9483 = icmp ult i32 %9479, %9482
  br i1 %9483, label %9484, label %9653

; <label>:9484                                    ; preds = %9441
  %9485 = fcmp fast ogt float %84, 9.843750e-01
  %9486 = fadd fast float %8279, -4.000000e+00
  %9487 = select i1 %9485, float -4.000000e+00, float %9486
  %9488 = call float @dx.op.binary.f32(i32 35, float %9487, float 0.000000e+00)  ; FMax(a,b)
  %9489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9490 = extractvalue %dx.types.CBufRet.f32 %9489, 0
  %9491 = fadd fast float %9490, %9488
  %9492 = extractvalue %dx.types.CBufRet.f32 %9489, 2
  %9493 = fmul fast float %9491, %9492
  %9494 = call float @dx.op.unary.f32(i32 23, float %9493)  ; Log(value)
  %9495 = extractvalue %dx.types.CBufRet.f32 %9489, 3
  %9496 = fmul fast float %9495, %9494
  %9497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9498 = extractvalue %dx.types.CBufRet.f32 %9497, 2
  %9499 = fmul fast float %9496, %9498
  %9500 = call float @dx.op.unary.f32(i32 7, float %9499)  ; Saturate(value)
  %9501 = uitofp i32 %9479 to float
  %9502 = uitofp i32 %9482 to float
  %9503 = fadd fast float %9501, 5.000000e-01
  %9504 = fadd fast float %9502, 5.000000e-01
  %9505 = fmul fast float %9498, %9503
  %9506 = fmul fast float %9498, %9504
  %9507 = fadd fast float %9505, 0x3F0FFB4800000000
  %9508 = fadd fast float %9506, 0xBF0FFB4800000000
  %9509 = call float @dx.op.binary.f32(i32 35, float %9500, float %9507)  ; FMax(a,b)
  %9510 = call float @dx.op.binary.f32(i32 36, float %9509, float %9508)  ; FMin(a,b)
  %9511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9512 = extractvalue %dx.types.CBufRet.f32 %9511, 1
  %9513 = extractvalue %dx.types.CBufRet.f32 %9511, 2
  %9514 = extractvalue %dx.types.CBufRet.f32 %9511, 0
  %9515 = select i1 %8017, float %9514, float 0.000000e+00
  %9516 = fmul fast float %9512, %9510
  %9517 = fadd fast float %9515, %9516
  %9518 = fadd fast float %9515, %9513
  %9519 = fsub fast float %9512, %9513
  %9520 = fadd fast float %9519, %9515
  %9521 = call float @dx.op.binary.f32(i32 35, float %9517, float %9518)  ; FMax(a,b)
  %9522 = call float @dx.op.binary.f32(i32 36, float %9521, float %9520)  ; FMin(a,b)
  %9523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %9454, float %9455, float %9522, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9524 = extractvalue %dx.types.ResRet.f32 %9523, 0
  %9525 = extractvalue %dx.types.ResRet.f32 %9523, 1
  %9526 = extractvalue %dx.types.ResRet.f32 %9523, 2
  %9527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9528 = extractvalue %dx.types.CBufRet.i32 %9527, 0
  %9529 = extractvalue %dx.types.CBufRet.i32 %9527, 1
  %9530 = uitofp i32 %9528 to float
  %9531 = uitofp i32 %9529 to float
  %9532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9533 = extractvalue %dx.types.CBufRet.f32 %9532, 0
  %9534 = extractvalue %dx.types.CBufRet.f32 %9532, 1
  %9535 = fmul fast float %9530, %9454
  %9536 = fmul fast float %9531, %9455
  %9537 = fadd fast float %9535, -5.000000e-01
  %9538 = fadd fast float %9536, -5.000000e-01
  %9539 = call float @dx.op.unary.f32(i32 22, float %9537)  ; Frc(value)
  %9540 = call float @dx.op.unary.f32(i32 22, float %9538)  ; Frc(value)
  %9541 = fmul fast float %9539, %9539
  %9542 = fmul fast float %9541, %9539
  %9543 = fsub fast float 3.000000e+00, %9539
  %9544 = fmul fast float %9541, %9543
  %9545 = fmul fast float %9539, 3.000000e+00
  %9546 = fmul fast float %9542, 3.000000e+00
  %9547 = fmul fast float %9541, 6.000000e+00
  %9548 = fsub fast float %9546, %9547
  %9549 = fadd fast float %9548, 4.000000e+00
  %9550 = fmul fast float %9549, 0x3FC5555560000000
  %9551 = fmul fast float %9542, -3.000000e+00
  %9552 = fadd fast float %9541, %9539
  %9553 = fmul fast float %9552, 3.000000e+00
  %9554 = fadd fast float %9551, 1.000000e+00
  %9555 = fadd fast float %9554, %9553
  %9556 = fmul fast float %9542, 0x3FC5555560000000
  %9557 = fmul fast float %9540, %9540
  %9558 = fmul fast float %9557, %9540
  %9559 = fsub fast float 3.000000e+00, %9540
  %9560 = fmul fast float %9557, %9559
  %9561 = fmul fast float %9540, 3.000000e+00
  %9562 = fmul fast float %9558, 3.000000e+00
  %9563 = fmul fast float %9557, 6.000000e+00
  %9564 = fsub fast float %9562, %9563
  %9565 = fadd fast float %9564, 4.000000e+00
  %9566 = fmul fast float %9565, 0x3FC5555560000000
  %9567 = fmul fast float %9558, -3.000000e+00
  %9568 = fadd fast float %9557, %9540
  %9569 = fmul fast float %9568, 3.000000e+00
  %9570 = fadd fast float %9567, 1.000000e+00
  %9571 = fadd fast float %9570, %9569
  %9572 = fmul fast float %9558, 0x3FC5555560000000
  %9573 = fadd fast float %9539, 1.000000e+00
  %9574 = fsub fast float 1.000000e+00, %9545
  %9575 = fadd fast float %9574, %9544
  %9576 = fadd fast float %9575, %9549
  %9577 = fmul fast float %9576, 0x3FC5555560000000
  %9578 = fdiv fast float %9550, %9577
  %9579 = fsub fast float %9573, %9578
  %9580 = fsub fast float 1.000000e+00, %9539
  %9581 = fadd fast float %9555, %9542
  %9582 = fmul fast float %9581, 0x3FC5555560000000
  %9583 = fdiv fast float %9556, %9582
  %9584 = fadd fast float %9580, %9583
  %9585 = fadd fast float %9540, 1.000000e+00
  %9586 = fsub fast float 1.000000e+00, %9561
  %9587 = fadd fast float %9586, %9560
  %9588 = fadd fast float %9587, %9565
  %9589 = fmul fast float %9588, 0x3FC5555560000000
  %9590 = fdiv fast float %9566, %9589
  %9591 = fsub fast float %9585, %9590
  %9592 = fsub fast float 1.000000e+00, %9540
  %9593 = fadd fast float %9571, %9558
  %9594 = fmul fast float %9593, 0x3FC5555560000000
  %9595 = fdiv fast float %9572, %9594
  %9596 = fadd fast float %9595, %9592
  %9597 = fmul fast float %9579, %9533
  %9598 = fsub fast float %9454, %9597
  %9599 = fmul fast float %9584, %9533
  %9600 = fadd fast float %9599, %9454
  %9601 = fmul fast float %9596, %9534
  %9602 = fadd fast float %9601, %9455
  %9603 = fmul fast float %9591, %9534
  %9604 = fsub fast float %9455, %9603
  %9605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9598, float %9604, float %9522, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9606 = extractvalue %dx.types.ResRet.f32 %9605, 0
  %9607 = extractvalue %dx.types.ResRet.f32 %9605, 1
  %9608 = extractvalue %dx.types.ResRet.f32 %9605, 2
  %9609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9600, float %9604, float %9522, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9610 = extractvalue %dx.types.ResRet.f32 %9609, 0
  %9611 = extractvalue %dx.types.ResRet.f32 %9609, 1
  %9612 = extractvalue %dx.types.ResRet.f32 %9609, 2
  %9613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9598, float %9602, float %9522, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9614 = extractvalue %dx.types.ResRet.f32 %9613, 0
  %9615 = extractvalue %dx.types.ResRet.f32 %9613, 1
  %9616 = extractvalue %dx.types.ResRet.f32 %9613, 2
  %9617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9600, float %9602, float %9522, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9618 = extractvalue %dx.types.ResRet.f32 %9617, 0
  %9619 = extractvalue %dx.types.ResRet.f32 %9617, 1
  %9620 = extractvalue %dx.types.ResRet.f32 %9617, 2
  %9621 = fsub fast float %9614, %9606
  %9622 = fsub fast float %9615, %9607
  %9623 = fsub fast float %9616, %9608
  %9624 = fmul fast float %9621, %9594
  %9625 = fmul fast float %9622, %9594
  %9626 = fmul fast float %9623, %9594
  %9627 = fadd fast float %9624, %9606
  %9628 = fadd fast float %9625, %9607
  %9629 = fadd fast float %9626, %9608
  %9630 = fsub fast float %9618, %9610
  %9631 = fsub fast float %9619, %9611
  %9632 = fsub fast float %9620, %9612
  %9633 = fmul fast float %9630, %9594
  %9634 = fmul fast float %9631, %9594
  %9635 = fmul fast float %9632, %9594
  %9636 = fsub fast float %9610, %9627
  %9637 = fadd fast float %9636, %9633
  %9638 = fsub fast float %9611, %9628
  %9639 = fadd fast float %9638, %9634
  %9640 = fsub fast float %9612, %9629
  %9641 = fadd fast float %9640, %9635
  %9642 = fmul fast float %9637, %9582
  %9643 = fmul fast float %9639, %9582
  %9644 = fmul fast float %9641, %9582
  %9645 = fadd fast float %9642, %9627
  %9646 = fadd fast float %9643, %9628
  %9647 = fadd fast float %9644, %9629
  %9648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9649 = extractvalue %dx.types.CBufRet.f32 %9648, 1
  %9650 = fmul fast float %9645, %9649
  %9651 = fmul fast float %9646, %9649
  %9652 = fmul fast float %9647, %9649
  br label %9653

; <label>:9653                                    ; preds = %9484, %9441
  %9654 = phi float [ %9524, %9484 ], [ 1.000000e+00, %9441 ]
  %9655 = phi float [ %9525, %9484 ], [ 1.000000e+00, %9441 ]
  %9656 = phi float [ %9526, %9484 ], [ 1.000000e+00, %9441 ]
  %9657 = phi float [ %9650, %9484 ], [ 0.000000e+00, %9441 ]
  %9658 = phi float [ %9651, %9484 ], [ 0.000000e+00, %9441 ]
  %9659 = phi float [ %9652, %9484 ], [ 0.000000e+00, %9441 ]
  %9660 = fmul fast float %9657, %8003
  %9661 = fmul fast float %9658, %8004
  %9662 = fmul fast float %9659, %8005
  %9663 = fmul fast float %9654, %9448
  %9664 = call float @dx.op.dot3.f32(i32 55, float %9654, float %9655, float %9656, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9665 = call float @dx.op.dot3.f32(i32 55, float %9660, float %9661, float %9662, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9666 = select i1 %245, float %9664, float %9654
  %9667 = select i1 %245, float %9664, float %9655
  %9668 = select i1 %245, float 1.000000e+00, float %9656
  %9669 = select i1 %245, float %9665, float %9660
  %9670 = select i1 %245, float 0.000000e+00, float %9661
  %9671 = select i1 %245, float 0.000000e+00, float %9662
  %9672 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9673 = extractvalue %dx.types.CBufRet.i32 %9672, 3
  %9674 = and i32 %9673, 3
  %9675 = icmp ne i32 %9674, 0
  %9676 = and i32 %9673, 4
  %9677 = icmp ne i32 %9676, 0
  %9678 = and i1 %9675, %9677
  %9679 = and i1 %245, %9678
  br i1 %9679, label %9680, label %9686

; <label>:9680                                    ; preds = %9653
  %9681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9682 = extractvalue %dx.types.CBufRet.f32 %9681, 1
  %9683 = fadd fast float %9663, -1.000000e+00
  %9684 = fmul fast float %9682, %9683
  %9685 = fadd fast float %9684, 1.000000e+00
  br label %9686

; <label>:9686                                    ; preds = %9680, %9653
  %9687 = phi float [ %9685, %9680 ], [ %9663, %9653 ]
  %9688 = fadd fast float %9445, %9442
  %9689 = fmul fast float %9666, %9688
  %9690 = fadd fast float %9689, %9669
  %9691 = fadd fast float %9446, %9443
  %9692 = fmul fast float %9667, %9691
  %9693 = fadd fast float %9692, %9670
  %9694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9695 = extractvalue %dx.types.CBufRet.f32 %9694, 0
  br i1 %245, label %9696, label %9711

; <label>:9696                                    ; preds = %9686
  %9697 = fadd fast float %9690, %9693
  %9698 = fmul fast float %9695, %9697
  %9699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9700 = extractvalue %dx.types.CBufRet.f32 %9699, 3
  %9701 = extractvalue %dx.types.CBufRet.f32 %7987, 1
  %9702 = fsub fast float %7992, %7986
  %9703 = fadd fast float %9702, %7993
  %9704 = fsub fast float %9703, %9701
  %9705 = extractvalue %dx.types.CBufRet.f32 %7987, 2
  %9706 = fmul fast float %9704, %9705
  %9707 = call float @dx.op.unary.f32(i32 7, float %9706)  ; Saturate(value)
  %9708 = fsub fast float %9707, %9700
  %9709 = fmul fast float %9708, %9687
  %9710 = fadd fast float %9709, %9700
  br label %9737

; <label>:9711                                    ; preds = %9686
  %9712 = fadd fast float %9447, %9444
  %9713 = fmul fast float %9668, %9712
  %9714 = fadd fast float %9713, %9671
  %9715 = fmul fast float %9695, %9690
  %9716 = fmul fast float %9695, %9693
  %9717 = fmul fast float %9695, %9714
  %9718 = call float @dx.op.binary.f32(i32 35, float %9716, float %9717)  ; FMax(a,b)
  %9719 = call float @dx.op.binary.f32(i32 35, float %9715, float %9718)  ; FMax(a,b)
  %9720 = call float @dx.op.binary.f32(i32 35, float %8004, float %8005)  ; FMax(a,b)
  %9721 = call float @dx.op.binary.f32(i32 35, float %8003, float %9720)  ; FMax(a,b)
  %9722 = call float @dx.op.binary.f32(i32 35, float %9719, float %9721)  ; FMax(a,b)
  %9723 = fcmp fast ugt float %9722, 0x3F10000000000000
  br i1 %9723, label %9725, label %9724

; <label>:9724                                    ; preds = %9711
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9725

; <label>:9725                                    ; preds = %9724, %9711
  %9726 = add i32 %48, 356
  %9727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %9726, i32 undef)  ; BufferLoad(srv,index,wot)
  %9728 = extractvalue %dx.types.ResRet.i32 %9727, 0
  %9729 = and i32 %9728, 32
  %9730 = icmp eq i32 %9729, 0
  br i1 %9730, label %9737, label %9731

; <label>:9731                                    ; preds = %9725
  %9732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9733 = extractvalue %dx.types.CBufRet.f32 %9732, 0
  %9734 = fmul fast float %9733, 0x3FE99999A0000000
  %9735 = fadd fast float %9733, %9715
  %9736 = fadd fast float %9734, %9717
  br label %9737

; <label>:9737                                    ; preds = %9731, %9725, %9696
  %9738 = phi float [ 1.000000e+00, %9696 ], [ %8004, %9731 ], [ %8004, %9725 ]
  %9739 = phi float [ 1.000000e+00, %9696 ], [ %8005, %9731 ], [ %8005, %9725 ]
  %9740 = phi float [ %9698, %9696 ], [ %9735, %9731 ], [ %9715, %9725 ]
  %9741 = phi float [ %9710, %9696 ], [ %9716, %9731 ], [ %9716, %9725 ]
  %9742 = phi float [ 1.000000e+00, %9696 ], [ %9736, %9731 ], [ %9717, %9725 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9743 = call float @dx.op.binary.f32(i32 36, float %9740, float 3.225500e+04)  ; FMin(a,b)
  %9744 = call float @dx.op.binary.f32(i32 36, float %9741, float 3.225500e+04)  ; FMin(a,b)
  %9745 = call float @dx.op.binary.f32(i32 36, float %9742, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9743)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9744)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9745)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9746 = call float @dx.op.binary.f32(i32 36, float %8003, float 3.225500e+04)  ; FMin(a,b)
  %9747 = call float @dx.op.binary.f32(i32 36, float %9738, float 3.225500e+04)  ; FMin(a,b)
  %9748 = call float @dx.op.binary.f32(i32 36, float %9739, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9746)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9747)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9748)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

