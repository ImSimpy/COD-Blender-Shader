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
; shader hash: fe7db637fbbcd04cc57d596d87567341
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
;   [192 x i8] (type annotation not present)
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
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
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
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
  %190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
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
  %223 = extractvalue %dx.types.ResRet.f32 %221, 1
  %224 = fadd fast float %222, %216
  %225 = fadd fast float %223, %216
  %226 = call float @dx.op.unary.f32(i32 22, float %224)  ; Frc(value)
  %227 = call float @dx.op.unary.f32(i32 22, float %225)  ; Frc(value)
  %228 = add i32 %48, 156
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = shl i32 %230, 4
  %232 = and i32 %231, 32752
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %230, 7
  %235 = and i32 %234, 32752
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %230, 22
  %238 = shl nuw nsw i32 %237, 5
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = add i32 %48, 216
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 255
  %244 = uitofp i32 %243 to float
  %245 = fmul fast float %244, 0x3F70101020000000
  %246 = lshr i32 %242, 8
  %247 = and i32 %246, 255
  %248 = uitofp i32 %247 to float
  %249 = fmul fast float %248, 0x3F70101020000000
  %250 = lshr i32 %242, 16
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = add i32 %48, 36
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 65535
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = lshr i32 %256, 16
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = add i32 %48, 288
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 65535
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %263, 16
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = fmul fast float %265, 0x3F50624DE0000000
  %269 = fmul fast float %267, 0x3F50624DE0000000
  %270 = add i32 %48, 172
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = shl i32 %272, 4
  %274 = and i32 %273, 32752
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %272, 7
  %277 = and i32 %276, 32752
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %272, 22
  %280 = shl nuw nsw i32 %279, 5
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = add i32 %48, 232
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = lshr i32 %284, 8
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = lshr i32 %284, 16
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = add i32 %48, 52
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 65535
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = lshr i32 %298, 16
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = add i32 %48, 304
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 65535
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %305, 16
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = fmul fast float %307, 0x3F50624DE0000000
  %311 = fmul fast float %309, 0x3F50624DE0000000
  %312 = add i32 %48, 188
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = shl i32 %314, 4
  %316 = and i32 %315, 32752
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %314, 7
  %319 = and i32 %318, 32752
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %314, 22
  %322 = shl nuw nsw i32 %321, 5
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = add i32 %48, 248
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = lshr i32 %326, 8
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = lshr i32 %326, 16
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = add i32 %48, 68
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 65535
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = lshr i32 %340, 16
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = add i32 %48, 320
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 65535
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = lshr i32 %347, 16
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = fmul fast float %349, 0x3F50624DE0000000
  %353 = fmul fast float %351, 0x3F50624DE0000000
  %354 = add i32 %48, 204
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = shl i32 %356, 4
  %358 = and i32 %357, 32752
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %356, 7
  %361 = and i32 %360, 32752
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = lshr i32 %356, 22
  %364 = shl nuw nsw i32 %363, 5
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = add i32 %48, 264
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = lshr i32 %368, 8
  %373 = and i32 %372, 255
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = lshr i32 %368, 16
  %377 = and i32 %376, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = add i32 %48, 84
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 65535
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = lshr i32 %382, 16
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = add i32 %48, 336
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 65535
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = lshr i32 %389, 16
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = fmul fast float %391, 0x3F50624DE0000000
  %395 = fmul fast float %393, 0x3F50624DE0000000
  %396 = add i32 %48, 348
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = and i32 %398, 32
  %400 = icmp eq i32 %399, 0
  %401 = and i32 %398, 64
  %402 = icmp eq i32 %401, 0
  %403 = and i32 %398, 128
  %404 = icmp eq i32 %403, 0
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 2
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %424, label %409

; <label>:409                                     ; preds = %212
  %410 = add i32 %48, 488
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = add i32 %412, 0
  %414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %414, %dx.types.Handle %94, float %76, float %77, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = extractvalue %dx.types.ResRet.f32 %415, 3
  %420 = fmul fast float %419, %78
  %421 = fmul fast float %416, %79
  %422 = fmul fast float %417, %80
  %423 = fmul fast float %418, %81
  br label %424

; <label>:424                                     ; preds = %409, %212
  %425 = phi float [ %81, %212 ], [ %423, %409 ]
  %426 = phi float [ %80, %212 ], [ %422, %409 ]
  %427 = phi float [ %79, %212 ], [ %421, %409 ]
  %428 = phi float [ %78, %212 ], [ %420, %409 ]
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 2
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %452, label %433

; <label>:433                                     ; preds = %424
  %434 = add i32 %48, 44
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 1
  %438 = icmp ne i32 %437, 0
  %439 = select i1 %438, float %427, float 1.000000e+00
  %440 = add i32 %48, 60
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 1
  %444 = icmp ne i32 %443, 0
  %445 = select i1 %444, float %426, float 1.000000e+00
  %446 = add i32 %48, 76
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 1
  %450 = icmp ne i32 %449, 0
  %451 = select i1 %450, float %425, float 1.000000e+00
  br label %452

; <label>:452                                     ; preds = %433, %424
  %453 = phi float [ %425, %424 ], [ %451, %433 ]
  %454 = phi float [ %426, %424 ], [ %445, %433 ]
  %455 = phi float [ %427, %424 ], [ %439, %433 ]
  %456 = lshr i32 %430, 20
  %457 = and i32 %456, 3
  %458 = add nuw nsw i32 %457, 1
  %459 = add i32 %48, 24
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = add i32 %48, 28
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = or i32 %464, %461
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %1227, label %467

; <label>:467                                     ; preds = %452
  %468 = and i32 %461, 262144
  %469 = icmp ne i32 %468, 0
  %470 = select i1 %469, float %51, float 1.000000e+00
  %471 = select i1 %469, float %52, float 0.000000e+00
  %472 = select i1 %469, float %53, float 0.000000e+00
  %473 = select i1 %469, float %54, float 1.000000e+00
  %474 = select i1 %469, float %55, float %76
  %475 = select i1 %469, float %56, float %77
  %476 = add i32 %48, 284
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = lshr i32 %478, 16
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = fmul fast float %480, 0x3F50624DE0000000
  %482 = add i32 %48, 88
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = lshr i32 %484, 16
  %486 = and i32 %485, 255
  %487 = lshr i32 %484, 24
  %488 = add i32 %48, 292
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = and i32 %490, 65535
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = lshr i32 %490, 16
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = add i32 %48, 32
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = lshr i32 %497, 22
  %499 = shl nuw nsw i32 %498, 5
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = shl i32 %497, 4
  %502 = and i32 %501, 32752
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = lshr i32 %497, 7
  %505 = and i32 %504, 32752
  %506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %505)  ; LegacyF16ToF32(value)
  %507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %508 = extractvalue %dx.types.CBufRet.f32 %507, 3
  %509 = fmul fast float %508, 1.000000e+03
  %510 = fmul fast float %268, %509
  %511 = call float @dx.op.unary.f32(i32 22, float %510)  ; Frc(value)
  %512 = fadd fast float %511, %258
  %513 = fmul fast float %269, %509
  %514 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %515 = fadd fast float %514, %260
  %516 = fmul fast float %481, %509
  %517 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %518 = fmul fast float %517, 0x401921FB60000000
  %519 = fadd fast float %518, %500
  %520 = call float @dx.op.unary.f32(i32 13, float %519)  ; Sin(value)
  %521 = call float @dx.op.unary.f32(i32 12, float %519)  ; Cos(value)
  %522 = fsub fast float -0.000000e+00, %520
  %523 = fadd fast float %474, -5.000000e-01
  %524 = fadd fast float %475, -5.000000e-01
  %525 = fmul fast float %492, %523
  %526 = fmul fast float %494, %524
  %527 = fadd fast float %525, 5.000000e-01
  %528 = fadd fast float %526, 5.000000e-01
  %529 = fmul fast float %503, %527
  %530 = fmul fast float %506, %528
  %531 = fmul fast float %521, %529
  %532 = call float @dx.op.tertiary.f32(i32 46, float %522, float %530, float %531)  ; FMad(a,b,c)
  %533 = fmul fast float %520, %529
  %534 = call float @dx.op.tertiary.f32(i32 46, float %521, float %530, float %533)  ; FMad(a,b,c)
  %535 = fadd fast float %512, %532
  %536 = fadd fast float %515, %534
  %537 = icmp ugt i32 %486, 1
  %538 = icmp ugt i32 %484, 33554431
  %539 = or i1 %538, %537
  br i1 %539, label %540, label %565

; <label>:540                                     ; preds = %467
  %541 = add i32 %48, 228
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = lshr i32 %543, 16
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = fmul fast float %508, %545
  %547 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %548 = mul nuw nsw i32 %486, %487
  %549 = uitofp i32 %548 to float
  %550 = fmul fast float %547, %549
  %551 = call float @dx.op.unary.f32(i32 27, float %550)  ; Round_ni(value)
  %552 = fptoui float %551 to i32
  %553 = urem i32 %552, %486
  %554 = udiv i32 %552, %487
  %555 = call float @dx.op.unary.f32(i32 22, float %535)  ; Frc(value)
  %556 = call float @dx.op.unary.f32(i32 22, float %536)  ; Frc(value)
  %557 = uitofp i32 %553 to float
  %558 = uitofp i32 %554 to float
  %559 = fadd fast float %555, %557
  %560 = fadd fast float %556, %558
  %561 = uitofp i32 %486 to float
  %562 = uitofp i32 %487 to float
  %563 = fdiv fast float %559, %561
  %564 = fdiv fast float %560, %562
  br label %565

; <label>:565                                     ; preds = %540, %467
  %566 = phi float [ %563, %540 ], [ %535, %467 ]
  %567 = phi float [ %564, %540 ], [ %536, %467 ]
  %568 = and i32 %461, 16777216
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %679, label %570

; <label>:570                                     ; preds = %565
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %573 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %574 = extractvalue %dx.types.CBufRet.f32 %571, 2
  %575 = fadd fast float %572, %152
  %576 = fadd fast float %573, %153
  %577 = fadd fast float %574, %154
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 0
  %580 = call float @dx.op.unary.f32(i32 7, float %579)  ; Saturate(value)
  %581 = icmp eq i32 %49, 65535
  br i1 %581, label %676, label %582

; <label>:582                                     ; preds = %570
  %583 = lshr i32 %49, 1
  %584 = shl i32 %583, 2
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %49, 1
  %588 = icmp ne i32 %587, 0
  %589 = lshr i32 %586, 16
  %590 = and i32 %586, 65535
  %591 = select i1 %588, i32 %589, i32 %590
  %592 = icmp eq i32 %591, 65535
  br i1 %592, label %672, label %593

; <label>:593                                     ; preds = %582
  %594 = mul nuw nsw i32 %591, 40
  %595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = extractvalue %dx.types.ResRet.f32 %595, 1
  %598 = extractvalue %dx.types.ResRet.f32 %595, 2
  %599 = add nuw nsw i32 %594, 12
  %600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = extractvalue %dx.types.ResRet.f32 %600, 2
  %604 = add nuw nsw i32 %594, 24
  %605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = extractvalue %dx.types.ResRet.f32 %605, 1
  %608 = extractvalue %dx.types.ResRet.f32 %605, 2
  %609 = add nuw nsw i32 %594, 36
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = fsub fast float %575, %596
  %613 = fsub fast float %576, %597
  %614 = fsub fast float %577, %598
  %615 = fmul fast float %611, %612
  %616 = fmul fast float %611, %613
  %617 = fmul fast float %611, %614
  %618 = call float @dx.op.unary.f32(i32 27, float %615)  ; Round_ni(value)
  %619 = call float @dx.op.unary.f32(i32 27, float %616)  ; Round_ni(value)
  %620 = call float @dx.op.unary.f32(i32 27, float %617)  ; Round_ni(value)
  %621 = fadd fast float %618, 5.000000e-01
  %622 = fadd fast float %619, 5.000000e-01
  %623 = fadd fast float %620, 5.000000e-01
  %624 = fmul fast float %621, %601
  %625 = fmul fast float %622, %602
  %626 = fmul fast float %623, %603
  %627 = shl i32 %49, 2
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = add i32 %629, 0
  %631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %630, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %632 = call float @dx.op.unary.f32(i32 22, float %624)  ; Frc(value)
  %633 = call float @dx.op.unary.f32(i32 22, float %625)  ; Frc(value)
  %634 = call float @dx.op.unary.f32(i32 22, float %626)  ; Frc(value)
  %635 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %631, %dx.types.Handle %43, float %632, float %633, float %634, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %636 = extractvalue %dx.types.ResRet.f32 %635, 0
  %637 = extractvalue %dx.types.ResRet.f32 %635, 1
  %638 = extractvalue %dx.types.ResRet.f32 %635, 2
  %639 = fmul fast float %636, 1.023000e+03
  %640 = fmul fast float %637, 1.023000e+03
  %641 = fmul fast float %638, 1.023000e+03
  %642 = fadd fast float %639, 5.000000e-01
  %643 = fadd fast float %640, 5.000000e-01
  %644 = fadd fast float %641, 5.000000e-01
  %645 = call float @dx.op.unary.f32(i32 27, float %642)  ; Round_ni(value)
  %646 = call float @dx.op.unary.f32(i32 27, float %643)  ; Round_ni(value)
  %647 = call float @dx.op.unary.f32(i32 27, float %644)  ; Round_ni(value)
  %648 = fsub fast float %615, %618
  %649 = fsub fast float %616, %619
  %650 = fsub fast float %617, %620
  %651 = fmul fast float %648, 7.500000e-01
  %652 = fmul fast float %649, 7.500000e-01
  %653 = fmul fast float %650, 7.500000e-01
  %654 = fadd fast float %618, 1.250000e-01
  %655 = fadd fast float %654, %651
  %656 = fadd fast float %655, %645
  %657 = fadd fast float %619, 1.250000e-01
  %658 = fadd fast float %657, %652
  %659 = fadd fast float %658, %646
  %660 = fadd fast float %620, 1.250000e-01
  %661 = fadd fast float %660, %653
  %662 = fadd fast float %661, %647
  %663 = fmul fast float %656, %606
  %664 = fmul fast float %659, %607
  %665 = fmul fast float %662, %608
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = add i32 %667, 0
  %669 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %668, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %669, %dx.types.Handle %41, float %663, float %664, float %665, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  br label %672

; <label>:672                                     ; preds = %593, %582
  %673 = phi float [ %671, %593 ], [ -1.000000e+00, %582 ]
  %674 = fadd fast float %673, %580
  %675 = call float @dx.op.unary.f32(i32 7, float %674)  ; Saturate(value)
  br label %676

; <label>:676                                     ; preds = %672, %570
  %677 = phi float [ %675, %672 ], [ %580, %570 ]
  %678 = fmul fast float %677, %428
  br label %679

; <label>:679                                     ; preds = %676, %565
  %680 = phi float [ %678, %676 ], [ %428, %565 ]
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 256
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %731, label %685

; <label>:685                                     ; preds = %679
  %686 = add i32 %48, 424
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = add i32 %688, 0
  %690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %689, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %691 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %690, %dx.types.Handle %94, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %692 = extractvalue %dx.types.ResRet.f32 %691, 0
  %693 = add i32 %48, 100
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = shl i32 %695, 4
  %697 = and i32 %696, 32752
  %698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %697)  ; LegacyF16ToF32(value)
  %699 = lshr i32 %695, 7
  %700 = and i32 %699, 32752
  %701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %700)  ; LegacyF16ToF32(value)
  %702 = fsub fast float 1.000000e+00, %680
  %703 = call float @dx.op.binary.f32(i32 35, float %702, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %704 = bitcast float %680 to i32
  %705 = sitofp i32 %704 to float
  %706 = fadd fast float %705, 0xC1CFBF8940000000
  %707 = fmul fast float %701, %706
  %708 = fadd fast float %707, 0x41CFBF8940000000
  %709 = fptosi float %708 to i32
  %710 = bitcast i32 %709 to float
  %711 = bitcast float %703 to i32
  %712 = sitofp i32 %711 to float
  %713 = fadd fast float %712, 0xC1CFBF8940000000
  %714 = fmul fast float %713, %701
  %715 = fadd fast float %714, 0x41CFBF8940000000
  %716 = fptosi float %715 to i32
  %717 = bitcast i32 %716 to float
  %718 = fmul fast float %710, %698
  %719 = fmul fast float %717, %698
  %720 = fsub fast float %703, %718
  %721 = fadd fast float %719, %703
  %722 = call float @dx.op.unary.f32(i32 7, float %720)  ; Saturate(value)
  %723 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  %724 = fsub fast float %692, %722
  %725 = fsub fast float %723, %722
  %726 = bitcast float %725 to i32
  %727 = sub nsw i32 2129859010, %726
  %728 = bitcast i32 %727 to float
  %729 = fmul fast float %728, %724
  %730 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  br label %731

; <label>:731                                     ; preds = %685, %679
  %732 = phi float [ %730, %685 ], [ %680, %679 ]
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 128
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %753, label %737

; <label>:737                                     ; preds = %731
  %738 = add i32 %48, 408
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = add i32 %740, 0
  %742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %742, %dx.types.Handle %94, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 524288
  %748 = icmp ne i32 %747, 0
  %749 = fcmp fast ogt float %744, 0x3FE0101020000000
  %750 = select i1 %749, float 1.000000e+00, float 0.000000e+00
  %751 = select i1 %748, float %750, float %744
  %752 = fmul fast float %751, %732
  br label %753

; <label>:753                                     ; preds = %737, %731
  %754 = phi float [ %752, %737 ], [ %732, %731 ]
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = and i32 %756, 16
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %957, label %759

; <label>:759                                     ; preds = %753
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = add i32 %48, 360
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = add i32 %764, 0
  %766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %765, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %767 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %766, %dx.types.Handle %93, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 0
  %769 = extractvalue %dx.types.ResRet.f32 %767, 1
  %770 = extractvalue %dx.types.ResRet.f32 %767, 2
  %771 = extractvalue %dx.types.ResRet.f32 %767, 3
  %772 = and i32 %761, 255
  %773 = uitofp i32 %772 to float
  %774 = lshr i32 %761, 8
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = fmul fast float %771, %773
  %778 = fadd fast float %777, %776
  %779 = fmul fast float %778, 0x3F70101000000000
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = and i32 %781, 512
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %792, label %784

; <label>:784                                     ; preds = %759
  %785 = add i32 %48, 440
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = add i32 %787, 0
  %789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %788, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %790 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %789, %dx.types.Handle %94, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %791 = extractvalue %dx.types.ResRet.f32 %790, 0
  br label %792

; <label>:792                                     ; preds = %784, %759
  %793 = phi float [ %791, %784 ], [ 1.000000e+00, %759 ]
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = and i32 %795, 33554432
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %904, label %798

; <label>:798                                     ; preds = %792
  %799 = add i32 %48, 224
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = and i32 %801, 65535
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = lshr i32 %801, 16
  %805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %804)  ; LegacyF16ToF32(value)
  %806 = add i32 %48, 228
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 65535
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = lshr i32 %812, 24
  %814 = uitofp i32 %813 to float
  %815 = fmul fast float %814, 0x3F70101020000000
  %816 = and i32 %812, 255
  %817 = uitofp i32 %816 to float
  %818 = fmul fast float %817, 0x3F70101020000000
  %819 = lshr i32 %812, 8
  %820 = and i32 %819, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F70101020000000
  %823 = lshr i32 %812, 16
  %824 = and i32 %823, 255
  %825 = uitofp i32 %824 to float
  %826 = fmul fast float %825, 0x3F70101020000000
  %827 = add i32 %48, 220
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = lshr i32 %829, 24
  %831 = uitofp i32 %830 to float
  %832 = fmul fast float %831, 0x3F70101020000000
  %833 = and i32 %829, 255
  %834 = uitofp i32 %833 to float
  %835 = fmul fast float %834, 0x3F70101020000000
  %836 = lshr i32 %829, 8
  %837 = and i32 %836, 255
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F70101020000000
  %840 = lshr i32 %829, 16
  %841 = and i32 %840, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F70101020000000
  %844 = bitcast float %768 to i32
  %845 = ashr i32 %844, 1
  %846 = sub nsw i32 1597463174, %845
  %847 = bitcast i32 %846 to float
  %848 = fmul fast float %768, 5.000000e-01
  %849 = fmul fast float %847, %847
  %850 = fmul fast float %849, %848
  %851 = fsub fast float 1.500000e+00, %850
  %852 = fmul fast float %847, %768
  %853 = fmul fast float %852, %851
  %854 = bitcast float %769 to i32
  %855 = ashr i32 %854, 1
  %856 = sub nsw i32 1597463174, %855
  %857 = bitcast i32 %856 to float
  %858 = fmul fast float %769, 5.000000e-01
  %859 = fmul fast float %857, %857
  %860 = fmul fast float %859, %858
  %861 = fsub fast float 1.500000e+00, %860
  %862 = fmul fast float %857, %769
  %863 = fmul fast float %862, %861
  %864 = bitcast float %770 to i32
  %865 = ashr i32 %864, 1
  %866 = sub nsw i32 1597463174, %865
  %867 = bitcast i32 %866 to float
  %868 = fmul fast float %770, 5.000000e-01
  %869 = fmul fast float %867, %867
  %870 = fmul fast float %869, %868
  %871 = fsub fast float 1.500000e+00, %870
  %872 = fmul fast float %867, %770
  %873 = fmul fast float %872, %871
  %874 = fsub fast float %853, %835
  %875 = fsub fast float %863, %839
  %876 = fsub fast float %873, %843
  %877 = fmul fast float %874, %803
  %878 = fmul fast float %875, %805
  %879 = fmul fast float %876, %810
  %880 = fadd fast float %877, %818
  %881 = fadd fast float %878, %822
  %882 = fadd fast float %879, %826
  %883 = call float @dx.op.unary.f32(i32 7, float %880)  ; Saturate(value)
  %884 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %885 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %886 = fmul fast float %883, %883
  %887 = fmul fast float %884, %884
  %888 = fmul fast float %885, %885
  %889 = fsub fast float %886, %768
  %890 = fsub fast float %887, %769
  %891 = fsub fast float %888, %770
  %892 = fmul fast float %889, %793
  %893 = fmul fast float %890, %793
  %894 = fmul fast float %891, %793
  %895 = fadd fast float %892, %768
  %896 = fadd fast float %893, %769
  %897 = fadd fast float %894, %770
  %898 = fadd fast float %815, %779
  %899 = fsub fast float %898, %832
  %900 = call float @dx.op.unary.f32(i32 7, float %899)  ; Saturate(value)
  %901 = fsub fast float %900, %779
  %902 = fmul fast float %901, %793
  %903 = fadd fast float %902, %779
  br label %957

; <label>:904                                     ; preds = %792
  %905 = and i32 %795, 134217728
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %941, label %907

; <label>:907                                     ; preds = %904
  %908 = call float @dx.op.unary.f32(i32 24, float %245)  ; Sqrt(value)
  %909 = call float @dx.op.unary.f32(i32 24, float %249)  ; Sqrt(value)
  %910 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %911 = fadd fast float %908, -5.000000e-01
  %912 = fadd fast float %909, -5.000000e-01
  %913 = fadd fast float %910, -5.000000e-01
  %914 = fmul fast float %911, %793
  %915 = fmul fast float %912, %793
  %916 = fmul fast float %913, %793
  %917 = fadd fast float %914, 5.000000e-01
  %918 = fadd fast float %915, 5.000000e-01
  %919 = fadd fast float %916, 5.000000e-01
  %920 = call float @dx.op.unary.f32(i32 24, float %768)  ; Sqrt(value)
  %921 = call float @dx.op.unary.f32(i32 24, float %769)  ; Sqrt(value)
  %922 = call float @dx.op.unary.f32(i32 24, float %770)  ; Sqrt(value)
  %923 = fmul fast float %917, 2.000000e+00
  %924 = fsub fast float 1.000000e+00, %923
  %925 = fmul fast float %924, %920
  %926 = fadd fast float %925, %923
  %927 = fmul fast float %926, %920
  %928 = fmul fast float %918, 2.000000e+00
  %929 = fsub fast float 1.000000e+00, %928
  %930 = fmul fast float %929, %921
  %931 = fadd fast float %930, %928
  %932 = fmul fast float %931, %921
  %933 = fmul fast float %919, 2.000000e+00
  %934 = fsub fast float 1.000000e+00, %933
  %935 = fmul fast float %934, %922
  %936 = fadd fast float %935, %933
  %937 = fmul fast float %936, %922
  %938 = fmul fast float %927, %927
  %939 = fmul fast float %932, %932
  %940 = fmul fast float %937, %937
  br label %957

; <label>:941                                     ; preds = %904
  %942 = fmul fast float %245, %245
  %943 = fmul fast float %249, %249
  %944 = fmul fast float %253, %253
  %945 = fadd fast float %942, -1.000000e+00
  %946 = fadd fast float %943, -1.000000e+00
  %947 = fadd fast float %944, -1.000000e+00
  %948 = fmul fast float %793, %945
  %949 = fmul fast float %793, %946
  %950 = fmul fast float %793, %947
  %951 = fadd fast float %948, 1.000000e+00
  %952 = fadd fast float %949, 1.000000e+00
  %953 = fadd fast float %950, 1.000000e+00
  %954 = fmul fast float %951, %768
  %955 = fmul fast float %952, %769
  %956 = fmul fast float %953, %770
  br label %957

; <label>:957                                     ; preds = %941, %907, %798, %753
  %958 = phi float [ %903, %798 ], [ %779, %907 ], [ %779, %941 ], [ 0x3FA23C0BE0000000, %753 ]
  %959 = phi float [ %895, %798 ], [ %938, %907 ], [ %954, %941 ], [ 1.000000e+00, %753 ]
  %960 = phi float [ %896, %798 ], [ %939, %907 ], [ %955, %941 ], [ 1.000000e+00, %753 ]
  %961 = phi float [ %897, %798 ], [ %940, %907 ], [ %956, %941 ], [ 1.000000e+00, %753 ]
  %962 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.i32 %962, 1
  %964 = and i32 %963, 1
  %965 = icmp ne i32 %964, 0
  %966 = add i32 %48, 356
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = and i32 %968, 32
  %970 = icmp ne i32 %969, 0
  %971 = and i1 %965, %970
  %972 = select i1 %971, float 1.000000e+00, float %959
  %973 = select i1 %971, float 0x3FD3333340000000, float %960
  %974 = select i1 %971, float 0x3FD3333340000000, float %961
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, 32
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %1051, label %979

; <label>:979                                     ; preds = %957
  %980 = add i32 %48, 92
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = add i32 %48, 376
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = add i32 %985, 0
  %987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %988 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %987, %dx.types.Handle %93, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  %990 = extractvalue %dx.types.ResRet.f32 %988, 1
  %991 = extractvalue %dx.types.ResRet.f32 %988, 2
  %992 = extractvalue %dx.types.ResRet.f32 %988, 3
  %993 = and i32 %982, 255
  %994 = uitofp i32 %993 to float
  %995 = lshr i32 %982, 8
  %996 = and i32 %995, 255
  %997 = uitofp i32 %996 to float
  %998 = lshr i32 %982, 16
  %999 = and i32 %998, 255
  %1000 = uitofp i32 %999 to float
  %1001 = fmul fast float %1000, 0x3F70101000000000
  %1002 = fmul fast float %989, %994
  %1003 = fadd fast float %1002, %997
  %1004 = fmul fast float %1003, 0x3F70101000000000
  %1005 = fadd fast float %990, -5.000000e-01
  %1006 = fadd fast float %992, -5.000000e-01
  %1007 = fmul fast float %1005, %1001
  %1008 = fmul fast float %1006, %1001
  %1009 = fadd fast float %1007, 5.000000e-01
  %1010 = fadd fast float %1008, 5.000000e-01
  %1011 = fmul fast float %1009, 2.000000e+00
  %1012 = fadd fast float %1011, -1.000000e+00
  %1013 = fmul fast float %1010, 2.000000e+00
  %1014 = fadd fast float %1013, -1.000000e+00
  %1015 = fadd fast float %1012, %1014
  %1016 = fmul fast float %1015, 5.000000e-01
  %1017 = fsub fast float %1012, %1014
  %1018 = fmul fast float %1017, 5.000000e-01
  %1019 = call float @dx.op.unary.f32(i32 6, float %1016)  ; FAbs(value)
  %1020 = fsub fast float 1.000000e+00, %1019
  %1021 = call float @dx.op.unary.f32(i32 6, float %1018)  ; FAbs(value)
  %1022 = fsub fast float %1020, %1021
  %1023 = call float @dx.op.dot3.f32(i32 55, float %1016, float %1018, float %1022, float %1016, float %1018, float %1022)  ; Dot3(ax,ay,az,bx,by,bz)
  %1024 = call float @dx.op.unary.f32(i32 25, float %1023)  ; Rsqrt(value)
  %1025 = fmul fast float %1016, %1024
  %1026 = fmul fast float %1018, %1024
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = and i32 %1028, 67108864
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1047, label %1031

; <label>:1031                                    ; preds = %979
  %1032 = add i32 %48, 280
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %1034, 65535
  %1036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1035)  ; LegacyF16ToF32(value)
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 65535
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = lshr i32 %1034, 16
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = fsub fast float %1004, %1042
  %1044 = fmul fast float %1043, %1036
  %1045 = fadd fast float %1044, %1040
  %1046 = call float @dx.op.unary.f32(i32 7, float %1045)  ; Saturate(value)
  br label %1047

; <label>:1047                                    ; preds = %1031, %979
  %1048 = phi float [ %1046, %1031 ], [ %1004, %979 ]
  %1049 = call float @dx.op.dot2.f32(i32 54, float %1025, float %1026, float %470, float %471)  ; Dot2(ax,ay,bx,by)
  %1050 = call float @dx.op.dot2.f32(i32 54, float %1025, float %1026, float %472, float %473)  ; Dot2(ax,ay,bx,by)
  br label %1051

; <label>:1051                                    ; preds = %1047, %957
  %1052 = phi float [ %1048, %1047 ], [ 0x3FD6666660000000, %957 ]
  %1053 = phi float [ %1049, %1047 ], [ 0.000000e+00, %957 ]
  %1054 = phi float [ %1050, %1047 ], [ 0.000000e+00, %957 ]
  %1055 = phi float [ %991, %1047 ], [ 1.000000e+00, %957 ]
  %1056 = add i32 %48, 160
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = lshr i32 %1058, 22
  %1060 = shl nuw nsw i32 %1059, 5
  %1061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1060)  ; LegacyF16ToF32(value)
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = and i32 %1063, 64
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %1099, label %1066

; <label>:1066                                    ; preds = %1051
  %1067 = add i32 %48, 392
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = add i32 %1069, 0
  %1071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = and i32 %1073, 131072
  %1075 = icmp eq i32 %1074, 0
  %1076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1071, %dx.types.Handle %93, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = fmul fast float %1077, %233
  %1081 = fmul fast float %1078, %236
  %1082 = fmul fast float %1079, %239
  br i1 %1075, label %1089, label %1083

; <label>:1083                                    ; preds = %1066
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 0
  %1086 = fmul fast float %1085, %1080
  %1087 = fmul fast float %1085, %1081
  %1088 = fmul fast float %1085, %1082
  br label %1089

; <label>:1089                                    ; preds = %1083, %1066
  %1090 = phi float [ %1086, %1083 ], [ %1080, %1066 ]
  %1091 = phi float [ %1087, %1083 ], [ %1081, %1066 ]
  %1092 = phi float [ %1088, %1083 ], [ %1082, %1066 ]
  %1093 = fmul fast float %1090, %1061
  %1094 = select i1 %213, float %1093, float %1090
  %1095 = call float @dx.op.dot3.f32(i32 55, float %1094, float %1091, float %1092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = select i1 %213, float 0.000000e+00, float %1090
  %1097 = select i1 %213, float %1095, float %1091
  %1098 = select i1 %213, float 0.000000e+00, float %1092
  br label %1099

; <label>:1099                                    ; preds = %1089, %1051
  %1100 = phi float [ %1096, %1089 ], [ 0.000000e+00, %1051 ]
  %1101 = phi float [ %1097, %1089 ], [ 0.000000e+00, %1051 ]
  %1102 = phi float [ %1098, %1089 ], [ 0.000000e+00, %1051 ]
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = and i32 %1104, 1024
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1137, label %1107

; <label>:1107                                    ; preds = %1099
  %1108 = add i32 %48, 152
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 255
  %1112 = uitofp i32 %1111 to float
  %1113 = fmul fast float %1112, 0x3F70101020000000
  %1114 = lshr i32 %1110, 8
  %1115 = and i32 %1114, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = fmul fast float %1116, 0x3F70101020000000
  %1118 = lshr i32 %1110, 16
  %1119 = and i32 %1118, 255
  %1120 = uitofp i32 %1119 to float
  %1121 = fmul fast float %1120, 0x3F70101020000000
  %1122 = fmul fast float %1113, %1113
  %1123 = fmul fast float %1117, %1117
  %1124 = fmul fast float %1121, %1121
  %1125 = add i32 %48, 456
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1125, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = add i32 %1127, 0
  %1129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1128, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1130 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1129, %dx.types.Handle %94, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1131 = extractvalue %dx.types.ResRet.f32 %1130, 0
  %1132 = extractvalue %dx.types.ResRet.f32 %1130, 1
  %1133 = extractvalue %dx.types.ResRet.f32 %1130, 2
  %1134 = fmul fast float %1122, %1131
  %1135 = fmul fast float %1123, %1132
  %1136 = fmul fast float %1124, %1133
  br label %1137

; <label>:1137                                    ; preds = %1107, %1099
  %1138 = phi float [ %1134, %1107 ], [ 0.000000e+00, %1099 ]
  %1139 = phi float [ %1135, %1107 ], [ 0.000000e+00, %1099 ]
  %1140 = phi float [ %1136, %1107 ], [ 0.000000e+00, %1099 ]
  %1141 = fcmp fast ogt float %1138, 0.000000e+00
  %1142 = fcmp fast ogt float %1139, 0.000000e+00
  %1143 = fcmp fast ogt float %1140, 0.000000e+00
  %1144 = call float @dx.op.unary.f32(i32 23, float %1138)  ; Log(value)
  %1145 = call float @dx.op.unary.f32(i32 23, float %1139)  ; Log(value)
  %1146 = call float @dx.op.unary.f32(i32 23, float %1140)  ; Log(value)
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = lshr i32 %1148, 7
  %1150 = and i32 %1149, 32752
  %1151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1150)  ; LegacyF16ToF32(value)
  %1152 = fmul fast float %1144, 0xBFE62E4300000000
  %1153 = fmul fast float %1152, %1151
  %1154 = fmul fast float %1145, 0xBFE62E4300000000
  %1155 = fmul fast float %1154, %1151
  %1156 = fmul fast float %1146, 0xBFE62E4300000000
  %1157 = fmul fast float %1156, %1151
  %1158 = select i1 %1141, float %1153, float 1.270000e+02
  %1159 = select i1 %1142, float %1155, float 1.270000e+02
  %1160 = select i1 %1143, float %1157, float 1.270000e+02
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 10240
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1209, label %1165

; <label>:1165                                    ; preds = %1137
  %1166 = add i32 %48, 472
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = add i32 %1168, 0
  %1170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1171 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1170, %dx.types.Handle %94, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 1
  %1173 = extractvalue %dx.types.ResRet.f32 %1171, 3
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = and i32 %1175, 1048576
  %1177 = icmp ne i32 %1176, 0
  %1178 = and i32 %1175, 8192
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1195, label %1180

; <label>:1180                                    ; preds = %1165
  %1181 = extractvalue %dx.types.ResRet.f32 %1171, 2
  %1182 = select i1 %1177, float %1181, float %1172
  %1183 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1184 = select i1 %1177, float %1183, float %1172
  %1185 = add i32 %48, 96
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = lshr i32 %1187, 16
  %1189 = and i32 %1188, 255
  %1190 = uitofp i32 %1189 to float
  %1191 = fmul fast float %1190, 0x3F80101020000000
  %1192 = fmul fast float %1191, %1184
  %1193 = fmul fast float %1191, %1172
  %1194 = fmul fast float %1191, %1182
  br label %1195

; <label>:1195                                    ; preds = %1180, %1165
  %1196 = phi float [ %1192, %1180 ], [ 0.000000e+00, %1165 ]
  %1197 = phi float [ %1193, %1180 ], [ 0.000000e+00, %1165 ]
  %1198 = phi float [ %1194, %1180 ], [ 0.000000e+00, %1165 ]
  %1199 = and i32 %1175, 2048
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1209, label %1201

; <label>:1201                                    ; preds = %1195
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = shl i32 %1203, 4
  %1205 = and i32 %1204, 32752
  %1206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1205)  ; LegacyF16ToF32(value)
  %1207 = fmul fast float %1206, %1173
  %1208 = call float @dx.op.binary.f32(i32 35, float %1207, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1209

; <label>:1209                                    ; preds = %1201, %1195, %1137
  %1210 = phi float [ %1196, %1201 ], [ %1196, %1195 ], [ 0.000000e+00, %1137 ]
  %1211 = phi float [ %1197, %1201 ], [ %1197, %1195 ], [ 0.000000e+00, %1137 ]
  %1212 = phi float [ %1198, %1201 ], [ %1198, %1195 ], [ 0.000000e+00, %1137 ]
  %1213 = phi float [ %1208, %1201 ], [ 0x3F70101020000000, %1195 ], [ 0x3F70101020000000, %1137 ]
  %1214 = add i32 %48, 96
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = and i32 %1216, 255
  %1218 = uitofp i32 %1217 to float
  %1219 = lshr i32 %1216, 8
  %1220 = and i32 %1219, 255
  %1221 = uitofp i32 %1220 to float
  %1222 = call float @dx.op.dot3.f32(i32 55, float %972, float %973, float %974, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1223 = fmul fast float %1221, %1222
  %1224 = fadd fast float %1223, %1218
  %1225 = fmul fast float %1224, 0x3F70101020000000
  %1226 = call float @dx.op.unary.f32(i32 7, float %1225)  ; Saturate(value)
  br label %1227

; <label>:1227                                    ; preds = %1209, %452
  %1228 = phi float [ 0.000000e+00, %452 ], [ %1053, %1209 ]
  %1229 = phi float [ 0.000000e+00, %452 ], [ %1054, %1209 ]
  %1230 = phi float [ 0.000000e+00, %452 ], [ %972, %1209 ]
  %1231 = phi float [ 0.000000e+00, %452 ], [ %973, %1209 ]
  %1232 = phi float [ 0.000000e+00, %452 ], [ %974, %1209 ]
  %1233 = phi float [ 0.000000e+00, %452 ], [ %1100, %1209 ]
  %1234 = phi float [ 0.000000e+00, %452 ], [ %1101, %1209 ]
  %1235 = phi float [ 0.000000e+00, %452 ], [ %1102, %1209 ]
  %1236 = phi float [ 0.000000e+00, %452 ], [ %1210, %1209 ]
  %1237 = phi float [ 0.000000e+00, %452 ], [ %1211, %1209 ]
  %1238 = phi float [ 0.000000e+00, %452 ], [ %1212, %1209 ]
  %1239 = phi float [ 0.000000e+00, %452 ], [ %1158, %1209 ]
  %1240 = phi float [ 0.000000e+00, %452 ], [ %1159, %1209 ]
  %1241 = phi float [ 0.000000e+00, %452 ], [ %1160, %1209 ]
  %1242 = phi float [ 0.000000e+00, %452 ], [ %958, %1209 ]
  %1243 = phi float [ 0.000000e+00, %452 ], [ %754, %1209 ]
  %1244 = phi float [ 0.000000e+00, %452 ], [ %1052, %1209 ]
  %1245 = phi float [ 0.000000e+00, %452 ], [ %1055, %1209 ]
  %1246 = phi float [ 0.000000e+00, %452 ], [ %1213, %1209 ]
  %1247 = phi float [ 0.000000e+00, %452 ], [ %1226, %1209 ]
  br i1 %400, label %2285, label %1248

; <label>:1248                                    ; preds = %1227
  %1249 = icmp ult i32 %458, 2
  %1250 = add i32 %48, 40
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = add i32 %48, 44
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = or i32 %1255, %1252
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %2285, label %1258

; <label>:1258                                    ; preds = %1248
  %1259 = and i32 %1252, 262144
  %1260 = icmp ne i32 %1259, 0
  %1261 = select i1 %1260, float %51, float 1.000000e+00
  %1262 = select i1 %1260, float %52, float 0.000000e+00
  %1263 = select i1 %1260, float %53, float 0.000000e+00
  %1264 = select i1 %1260, float %54, float 1.000000e+00
  %1265 = select i1 %1260, float %55, float %76
  %1266 = select i1 %1260, float %56, float %77
  %1267 = add i32 %48, 300
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = lshr i32 %1269, 16
  %1271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1270)  ; LegacyF16ToF32(value)
  %1272 = fmul fast float %1271, 0x3F50624DE0000000
  %1273 = add i32 %48, 104
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = lshr i32 %1275, 16
  %1277 = and i32 %1276, 255
  %1278 = lshr i32 %1275, 24
  %1279 = add i32 %48, 308
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = and i32 %1281, 65535
  %1283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1282)  ; LegacyF16ToF32(value)
  %1284 = lshr i32 %1281, 16
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = add i32 %48, 48
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = lshr i32 %1288, 22
  %1290 = shl nuw nsw i32 %1289, 5
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = shl i32 %1288, 4
  %1293 = and i32 %1292, 32752
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = lshr i32 %1288, 7
  %1296 = and i32 %1295, 32752
  %1297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1296)  ; LegacyF16ToF32(value)
  %1298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1299 = extractvalue %dx.types.CBufRet.f32 %1298, 3
  %1300 = fmul fast float %1299, 1.000000e+03
  %1301 = fmul fast float %310, %1300
  %1302 = call float @dx.op.unary.f32(i32 22, float %1301)  ; Frc(value)
  %1303 = fadd fast float %1302, %300
  %1304 = fmul fast float %311, %1300
  %1305 = call float @dx.op.unary.f32(i32 22, float %1304)  ; Frc(value)
  %1306 = fadd fast float %1305, %302
  %1307 = fmul fast float %1272, %1300
  %1308 = call float @dx.op.unary.f32(i32 22, float %1307)  ; Frc(value)
  %1309 = fmul fast float %1308, 0x401921FB60000000
  %1310 = fadd fast float %1309, %1291
  %1311 = call float @dx.op.unary.f32(i32 13, float %1310)  ; Sin(value)
  %1312 = call float @dx.op.unary.f32(i32 12, float %1310)  ; Cos(value)
  %1313 = fsub fast float -0.000000e+00, %1311
  %1314 = fadd fast float %1265, -5.000000e-01
  %1315 = fadd fast float %1266, -5.000000e-01
  %1316 = fmul fast float %1283, %1314
  %1317 = fmul fast float %1285, %1315
  %1318 = fadd fast float %1316, 5.000000e-01
  %1319 = fadd fast float %1317, 5.000000e-01
  %1320 = fmul fast float %1294, %1318
  %1321 = fmul fast float %1297, %1319
  %1322 = fmul fast float %1312, %1320
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1313, float %1321, float %1322)  ; FMad(a,b,c)
  %1324 = fmul fast float %1311, %1320
  %1325 = call float @dx.op.tertiary.f32(i32 46, float %1312, float %1321, float %1324)  ; FMad(a,b,c)
  %1326 = fadd fast float %1303, %1323
  %1327 = fadd fast float %1306, %1325
  %1328 = icmp ugt i32 %1277, 1
  %1329 = icmp ugt i32 %1275, 33554431
  %1330 = or i1 %1329, %1328
  br i1 %1330, label %1331, label %1356

; <label>:1331                                    ; preds = %1258
  %1332 = add i32 %48, 244
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = lshr i32 %1334, 16
  %1336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1335)  ; LegacyF16ToF32(value)
  %1337 = fmul fast float %1299, %1336
  %1338 = call float @dx.op.unary.f32(i32 22, float %1337)  ; Frc(value)
  %1339 = mul nuw nsw i32 %1277, %1278
  %1340 = uitofp i32 %1339 to float
  %1341 = fmul fast float %1338, %1340
  %1342 = call float @dx.op.unary.f32(i32 27, float %1341)  ; Round_ni(value)
  %1343 = fptoui float %1342 to i32
  %1344 = urem i32 %1343, %1277
  %1345 = udiv i32 %1343, %1278
  %1346 = call float @dx.op.unary.f32(i32 22, float %1326)  ; Frc(value)
  %1347 = call float @dx.op.unary.f32(i32 22, float %1327)  ; Frc(value)
  %1348 = uitofp i32 %1344 to float
  %1349 = uitofp i32 %1345 to float
  %1350 = fadd fast float %1346, %1348
  %1351 = fadd fast float %1347, %1349
  %1352 = uitofp i32 %1277 to float
  %1353 = uitofp i32 %1278 to float
  %1354 = fdiv fast float %1350, %1352
  %1355 = fdiv fast float %1351, %1353
  br label %1356

; <label>:1356                                    ; preds = %1331, %1258
  %1357 = phi float [ %1354, %1331 ], [ %1326, %1258 ]
  %1358 = phi float [ %1355, %1331 ], [ %1327, %1258 ]
  %1359 = and i32 %1252, 16777216
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1470, label %1361

; <label>:1361                                    ; preds = %1356
  %1362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.CBufRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.CBufRet.f32 %1362, 2
  %1366 = fadd fast float %1363, %152
  %1367 = fadd fast float %1364, %153
  %1368 = fadd fast float %1365, %154
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1372 = icmp eq i32 %49, 65535
  br i1 %1372, label %1467, label %1373

; <label>:1373                                    ; preds = %1361
  %1374 = lshr i32 %49, 1
  %1375 = shl i32 %1374, 2
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = and i32 %49, 1
  %1379 = icmp ne i32 %1378, 0
  %1380 = lshr i32 %1377, 16
  %1381 = and i32 %1377, 65535
  %1382 = select i1 %1379, i32 %1380, i32 %1381
  %1383 = icmp eq i32 %1382, 65535
  br i1 %1383, label %1463, label %1384

; <label>:1384                                    ; preds = %1373
  %1385 = mul nuw nsw i32 %1382, 40
  %1386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  %1388 = extractvalue %dx.types.ResRet.f32 %1386, 1
  %1389 = extractvalue %dx.types.ResRet.f32 %1386, 2
  %1390 = add nuw nsw i32 %1385, 12
  %1391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.f32 %1391, 0
  %1393 = extractvalue %dx.types.ResRet.f32 %1391, 1
  %1394 = extractvalue %dx.types.ResRet.f32 %1391, 2
  %1395 = add nuw nsw i32 %1385, 24
  %1396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 0
  %1398 = extractvalue %dx.types.ResRet.f32 %1396, 1
  %1399 = extractvalue %dx.types.ResRet.f32 %1396, 2
  %1400 = add nuw nsw i32 %1385, 36
  %1401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1400, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  %1403 = fsub fast float %1366, %1387
  %1404 = fsub fast float %1367, %1388
  %1405 = fsub fast float %1368, %1389
  %1406 = fmul fast float %1402, %1403
  %1407 = fmul fast float %1402, %1404
  %1408 = fmul fast float %1402, %1405
  %1409 = call float @dx.op.unary.f32(i32 27, float %1406)  ; Round_ni(value)
  %1410 = call float @dx.op.unary.f32(i32 27, float %1407)  ; Round_ni(value)
  %1411 = call float @dx.op.unary.f32(i32 27, float %1408)  ; Round_ni(value)
  %1412 = fadd fast float %1409, 5.000000e-01
  %1413 = fadd fast float %1410, 5.000000e-01
  %1414 = fadd fast float %1411, 5.000000e-01
  %1415 = fmul fast float %1412, %1392
  %1416 = fmul fast float %1413, %1393
  %1417 = fmul fast float %1414, %1394
  %1418 = shl i32 %49, 2
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = add i32 %1420, 0
  %1422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1423 = call float @dx.op.unary.f32(i32 22, float %1415)  ; Frc(value)
  %1424 = call float @dx.op.unary.f32(i32 22, float %1416)  ; Frc(value)
  %1425 = call float @dx.op.unary.f32(i32 22, float %1417)  ; Frc(value)
  %1426 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1422, %dx.types.Handle %43, float %1423, float %1424, float %1425, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1427 = extractvalue %dx.types.ResRet.f32 %1426, 0
  %1428 = extractvalue %dx.types.ResRet.f32 %1426, 1
  %1429 = extractvalue %dx.types.ResRet.f32 %1426, 2
  %1430 = fmul fast float %1427, 1.023000e+03
  %1431 = fmul fast float %1428, 1.023000e+03
  %1432 = fmul fast float %1429, 1.023000e+03
  %1433 = fadd fast float %1430, 5.000000e-01
  %1434 = fadd fast float %1431, 5.000000e-01
  %1435 = fadd fast float %1432, 5.000000e-01
  %1436 = call float @dx.op.unary.f32(i32 27, float %1433)  ; Round_ni(value)
  %1437 = call float @dx.op.unary.f32(i32 27, float %1434)  ; Round_ni(value)
  %1438 = call float @dx.op.unary.f32(i32 27, float %1435)  ; Round_ni(value)
  %1439 = fsub fast float %1406, %1409
  %1440 = fsub fast float %1407, %1410
  %1441 = fsub fast float %1408, %1411
  %1442 = fmul fast float %1439, 7.500000e-01
  %1443 = fmul fast float %1440, 7.500000e-01
  %1444 = fmul fast float %1441, 7.500000e-01
  %1445 = fadd fast float %1409, 1.250000e-01
  %1446 = fadd fast float %1445, %1442
  %1447 = fadd fast float %1446, %1436
  %1448 = fadd fast float %1410, 1.250000e-01
  %1449 = fadd fast float %1448, %1443
  %1450 = fadd fast float %1449, %1437
  %1451 = fadd fast float %1411, 1.250000e-01
  %1452 = fadd fast float %1451, %1444
  %1453 = fadd fast float %1452, %1438
  %1454 = fmul fast float %1447, %1397
  %1455 = fmul fast float %1450, %1398
  %1456 = fmul fast float %1453, %1399
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = add i32 %1458, 0
  %1460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1460, %dx.types.Handle %41, float %1454, float %1455, float %1456, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1462 = extractvalue %dx.types.ResRet.f32 %1461, 0
  br label %1463

; <label>:1463                                    ; preds = %1384, %1373
  %1464 = phi float [ %1462, %1384 ], [ -1.000000e+00, %1373 ]
  %1465 = fadd fast float %1464, %1371
  %1466 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  br label %1467

; <label>:1467                                    ; preds = %1463, %1361
  %1468 = phi float [ %1466, %1463 ], [ %1371, %1361 ]
  %1469 = fmul fast float %1468, %455
  br label %1470

; <label>:1470                                    ; preds = %1467, %1356
  %1471 = phi float [ %1469, %1467 ], [ %455, %1356 ]
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = and i32 %1473, 256
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1522, label %1476

; <label>:1476                                    ; preds = %1470
  %1477 = add i32 %48, 428
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = add i32 %1479, 0
  %1481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1481, %dx.types.Handle %94, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1483 = extractvalue %dx.types.ResRet.f32 %1482, 0
  %1484 = add i32 %48, 116
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = shl i32 %1486, 4
  %1488 = and i32 %1487, 32752
  %1489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1488)  ; LegacyF16ToF32(value)
  %1490 = lshr i32 %1486, 7
  %1491 = and i32 %1490, 32752
  %1492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1491)  ; LegacyF16ToF32(value)
  %1493 = fsub fast float 1.000000e+00, %1471
  %1494 = call float @dx.op.binary.f32(i32 35, float %1493, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1495 = bitcast float %1471 to i32
  %1496 = sitofp i32 %1495 to float
  %1497 = fadd fast float %1496, 0xC1CFBF8940000000
  %1498 = fmul fast float %1492, %1497
  %1499 = fadd fast float %1498, 0x41CFBF8940000000
  %1500 = fptosi float %1499 to i32
  %1501 = bitcast i32 %1500 to float
  %1502 = bitcast float %1494 to i32
  %1503 = sitofp i32 %1502 to float
  %1504 = fadd fast float %1503, 0xC1CFBF8940000000
  %1505 = fmul fast float %1504, %1492
  %1506 = fadd fast float %1505, 0x41CFBF8940000000
  %1507 = fptosi float %1506 to i32
  %1508 = bitcast i32 %1507 to float
  %1509 = fmul fast float %1501, %1489
  %1510 = fmul fast float %1508, %1489
  %1511 = fsub fast float %1494, %1509
  %1512 = fadd fast float %1510, %1494
  %1513 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1514 = call float @dx.op.unary.f32(i32 7, float %1512)  ; Saturate(value)
  %1515 = fsub fast float %1483, %1513
  %1516 = fsub fast float %1514, %1513
  %1517 = bitcast float %1516 to i32
  %1518 = sub nsw i32 2129859010, %1517
  %1519 = bitcast i32 %1518 to float
  %1520 = fmul fast float %1519, %1515
  %1521 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  br label %1522

; <label>:1522                                    ; preds = %1476, %1470
  %1523 = phi float [ %1521, %1476 ], [ %1471, %1470 ]
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 128
  %1527 = icmp eq i32 %1526, 0
  br i1 %1527, label %1544, label %1528

; <label>:1528                                    ; preds = %1522
  %1529 = add i32 %48, 412
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = add i32 %1531, 0
  %1533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1533, %dx.types.Handle %94, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = and i32 %1537, 524288
  %1539 = icmp ne i32 %1538, 0
  %1540 = fcmp fast ogt float %1535, 0x3FE0101020000000
  %1541 = select i1 %1540, float 1.000000e+00, float 0.000000e+00
  %1542 = select i1 %1539, float %1541, float %1535
  %1543 = fmul fast float %1542, %1523
  br label %1544

; <label>:1544                                    ; preds = %1528, %1522
  %1545 = phi float [ %1543, %1528 ], [ %1523, %1522 ]
  %1546 = fcmp fast ult float %1545, 0x3F70101020000000
  br i1 %1546, label %2285, label %1547

; <label>:1547                                    ; preds = %1544
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 16
  %1551 = icmp eq i32 %1550, 0
  br i1 %1551, label %1750, label %1552

; <label>:1552                                    ; preds = %1547
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = add i32 %48, 364
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1555, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = add i32 %1557, 0
  %1559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1558, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1559, %dx.types.Handle %93, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1561 = extractvalue %dx.types.ResRet.f32 %1560, 0
  %1562 = extractvalue %dx.types.ResRet.f32 %1560, 1
  %1563 = extractvalue %dx.types.ResRet.f32 %1560, 2
  %1564 = extractvalue %dx.types.ResRet.f32 %1560, 3
  %1565 = and i32 %1554, 255
  %1566 = uitofp i32 %1565 to float
  %1567 = lshr i32 %1554, 8
  %1568 = and i32 %1567, 255
  %1569 = uitofp i32 %1568 to float
  %1570 = fmul fast float %1564, %1566
  %1571 = fadd fast float %1570, %1569
  %1572 = fmul fast float %1571, 0x3F70101000000000
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = and i32 %1574, 512
  %1576 = icmp eq i32 %1575, 0
  br i1 %1576, label %1585, label %1577

; <label>:1577                                    ; preds = %1552
  %1578 = add i32 %48, 444
  %1579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1578, i32 undef)  ; BufferLoad(srv,index,wot)
  %1580 = extractvalue %dx.types.ResRet.i32 %1579, 0
  %1581 = add i32 %1580, 0
  %1582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1582, %dx.types.Handle %94, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1584 = extractvalue %dx.types.ResRet.f32 %1583, 0
  br label %1585

; <label>:1585                                    ; preds = %1577, %1552
  %1586 = phi float [ %1584, %1577 ], [ 1.000000e+00, %1552 ]
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = and i32 %1588, 33554432
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1697, label %1591

; <label>:1591                                    ; preds = %1585
  %1592 = add i32 %48, 240
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 65535
  %1596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1595)  ; LegacyF16ToF32(value)
  %1597 = lshr i32 %1594, 16
  %1598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1597)  ; LegacyF16ToF32(value)
  %1599 = add i32 %48, 244
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 65535
  %1603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1602)  ; LegacyF16ToF32(value)
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = lshr i32 %1605, 24
  %1607 = uitofp i32 %1606 to float
  %1608 = fmul fast float %1607, 0x3F70101020000000
  %1609 = and i32 %1605, 255
  %1610 = uitofp i32 %1609 to float
  %1611 = fmul fast float %1610, 0x3F70101020000000
  %1612 = lshr i32 %1605, 8
  %1613 = and i32 %1612, 255
  %1614 = uitofp i32 %1613 to float
  %1615 = fmul fast float %1614, 0x3F70101020000000
  %1616 = lshr i32 %1605, 16
  %1617 = and i32 %1616, 255
  %1618 = uitofp i32 %1617 to float
  %1619 = fmul fast float %1618, 0x3F70101020000000
  %1620 = add i32 %48, 236
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1620, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = lshr i32 %1622, 24
  %1624 = uitofp i32 %1623 to float
  %1625 = fmul fast float %1624, 0x3F70101020000000
  %1626 = and i32 %1622, 255
  %1627 = uitofp i32 %1626 to float
  %1628 = fmul fast float %1627, 0x3F70101020000000
  %1629 = lshr i32 %1622, 8
  %1630 = and i32 %1629, 255
  %1631 = uitofp i32 %1630 to float
  %1632 = fmul fast float %1631, 0x3F70101020000000
  %1633 = lshr i32 %1622, 16
  %1634 = and i32 %1633, 255
  %1635 = uitofp i32 %1634 to float
  %1636 = fmul fast float %1635, 0x3F70101020000000
  %1637 = bitcast float %1561 to i32
  %1638 = ashr i32 %1637, 1
  %1639 = sub nsw i32 1597463174, %1638
  %1640 = bitcast i32 %1639 to float
  %1641 = fmul fast float %1561, 5.000000e-01
  %1642 = fmul fast float %1640, %1640
  %1643 = fmul fast float %1642, %1641
  %1644 = fsub fast float 1.500000e+00, %1643
  %1645 = fmul fast float %1640, %1561
  %1646 = fmul fast float %1645, %1644
  %1647 = bitcast float %1562 to i32
  %1648 = ashr i32 %1647, 1
  %1649 = sub nsw i32 1597463174, %1648
  %1650 = bitcast i32 %1649 to float
  %1651 = fmul fast float %1562, 5.000000e-01
  %1652 = fmul fast float %1650, %1650
  %1653 = fmul fast float %1652, %1651
  %1654 = fsub fast float 1.500000e+00, %1653
  %1655 = fmul fast float %1650, %1562
  %1656 = fmul fast float %1655, %1654
  %1657 = bitcast float %1563 to i32
  %1658 = ashr i32 %1657, 1
  %1659 = sub nsw i32 1597463174, %1658
  %1660 = bitcast i32 %1659 to float
  %1661 = fmul fast float %1563, 5.000000e-01
  %1662 = fmul fast float %1660, %1660
  %1663 = fmul fast float %1662, %1661
  %1664 = fsub fast float 1.500000e+00, %1663
  %1665 = fmul fast float %1660, %1563
  %1666 = fmul fast float %1665, %1664
  %1667 = fsub fast float %1646, %1628
  %1668 = fsub fast float %1656, %1632
  %1669 = fsub fast float %1666, %1636
  %1670 = fmul fast float %1667, %1596
  %1671 = fmul fast float %1668, %1598
  %1672 = fmul fast float %1669, %1603
  %1673 = fadd fast float %1670, %1611
  %1674 = fadd fast float %1671, %1615
  %1675 = fadd fast float %1672, %1619
  %1676 = call float @dx.op.unary.f32(i32 7, float %1673)  ; Saturate(value)
  %1677 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1678 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1679 = fmul fast float %1676, %1676
  %1680 = fmul fast float %1677, %1677
  %1681 = fmul fast float %1678, %1678
  %1682 = fsub fast float %1679, %1561
  %1683 = fsub fast float %1680, %1562
  %1684 = fsub fast float %1681, %1563
  %1685 = fmul fast float %1682, %1586
  %1686 = fmul fast float %1683, %1586
  %1687 = fmul fast float %1684, %1586
  %1688 = fadd fast float %1685, %1561
  %1689 = fadd fast float %1686, %1562
  %1690 = fadd fast float %1687, %1563
  %1691 = fadd fast float %1608, %1572
  %1692 = fsub fast float %1691, %1625
  %1693 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1694 = fsub fast float %1693, %1572
  %1695 = fmul fast float %1694, %1586
  %1696 = fadd fast float %1695, %1572
  br label %1750

; <label>:1697                                    ; preds = %1585
  %1698 = and i32 %1588, 134217728
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %1734, label %1700

; <label>:1700                                    ; preds = %1697
  %1701 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %1702 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1703 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1704 = fadd fast float %1701, -5.000000e-01
  %1705 = fadd fast float %1702, -5.000000e-01
  %1706 = fadd fast float %1703, -5.000000e-01
  %1707 = fmul fast float %1704, %1586
  %1708 = fmul fast float %1705, %1586
  %1709 = fmul fast float %1706, %1586
  %1710 = fadd fast float %1707, 5.000000e-01
  %1711 = fadd fast float %1708, 5.000000e-01
  %1712 = fadd fast float %1709, 5.000000e-01
  %1713 = call float @dx.op.unary.f32(i32 24, float %1561)  ; Sqrt(value)
  %1714 = call float @dx.op.unary.f32(i32 24, float %1562)  ; Sqrt(value)
  %1715 = call float @dx.op.unary.f32(i32 24, float %1563)  ; Sqrt(value)
  %1716 = fmul fast float %1710, 2.000000e+00
  %1717 = fsub fast float 1.000000e+00, %1716
  %1718 = fmul fast float %1717, %1713
  %1719 = fadd fast float %1718, %1716
  %1720 = fmul fast float %1719, %1713
  %1721 = fmul fast float %1711, 2.000000e+00
  %1722 = fsub fast float 1.000000e+00, %1721
  %1723 = fmul fast float %1722, %1714
  %1724 = fadd fast float %1723, %1721
  %1725 = fmul fast float %1724, %1714
  %1726 = fmul fast float %1712, 2.000000e+00
  %1727 = fsub fast float 1.000000e+00, %1726
  %1728 = fmul fast float %1727, %1715
  %1729 = fadd fast float %1728, %1726
  %1730 = fmul fast float %1729, %1715
  %1731 = fmul fast float %1720, %1720
  %1732 = fmul fast float %1725, %1725
  %1733 = fmul fast float %1730, %1730
  br label %1750

; <label>:1734                                    ; preds = %1697
  %1735 = fmul fast float %287, %287
  %1736 = fmul fast float %291, %291
  %1737 = fmul fast float %295, %295
  %1738 = fadd fast float %1735, -1.000000e+00
  %1739 = fadd fast float %1736, -1.000000e+00
  %1740 = fadd fast float %1737, -1.000000e+00
  %1741 = fmul fast float %1586, %1738
  %1742 = fmul fast float %1586, %1739
  %1743 = fmul fast float %1586, %1740
  %1744 = fadd fast float %1741, 1.000000e+00
  %1745 = fadd fast float %1742, 1.000000e+00
  %1746 = fadd fast float %1743, 1.000000e+00
  %1747 = fmul fast float %1744, %1561
  %1748 = fmul fast float %1745, %1562
  %1749 = fmul fast float %1746, %1563
  br label %1750

; <label>:1750                                    ; preds = %1734, %1700, %1591, %1547
  %1751 = phi float [ %1696, %1591 ], [ %1572, %1700 ], [ %1572, %1734 ], [ 0x3FA23C0BE0000000, %1547 ]
  %1752 = phi float [ %1688, %1591 ], [ %1731, %1700 ], [ %1747, %1734 ], [ 1.000000e+00, %1547 ]
  %1753 = phi float [ %1689, %1591 ], [ %1732, %1700 ], [ %1748, %1734 ], [ 1.000000e+00, %1547 ]
  %1754 = phi float [ %1690, %1591 ], [ %1733, %1700 ], [ %1749, %1734 ], [ 1.000000e+00, %1547 ]
  %1755 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1756 = extractvalue %dx.types.CBufRet.i32 %1755, 1
  %1757 = and i32 %1756, 1
  %1758 = icmp ne i32 %1757, 0
  %1759 = add i32 %48, 356
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = and i32 %1761, 32
  %1763 = icmp ne i32 %1762, 0
  %1764 = and i1 %1758, %1763
  %1765 = select i1 %1764, float 1.000000e+00, float %1752
  %1766 = select i1 %1764, float 0x3FD3333340000000, float %1753
  %1767 = select i1 %1764, float 0x3FD3333340000000, float %1754
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = and i32 %1769, 32
  %1771 = icmp eq i32 %1770, 0
  br i1 %1771, label %1844, label %1772

; <label>:1772                                    ; preds = %1750
  %1773 = add i32 %48, 108
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = add i32 %48, 380
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = add i32 %1778, 0
  %1780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1779, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1781 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1780, %dx.types.Handle %93, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1782 = extractvalue %dx.types.ResRet.f32 %1781, 0
  %1783 = extractvalue %dx.types.ResRet.f32 %1781, 1
  %1784 = extractvalue %dx.types.ResRet.f32 %1781, 2
  %1785 = extractvalue %dx.types.ResRet.f32 %1781, 3
  %1786 = and i32 %1775, 255
  %1787 = uitofp i32 %1786 to float
  %1788 = lshr i32 %1775, 8
  %1789 = and i32 %1788, 255
  %1790 = uitofp i32 %1789 to float
  %1791 = lshr i32 %1775, 16
  %1792 = and i32 %1791, 255
  %1793 = uitofp i32 %1792 to float
  %1794 = fmul fast float %1793, 0x3F70101000000000
  %1795 = fmul fast float %1782, %1787
  %1796 = fadd fast float %1795, %1790
  %1797 = fmul fast float %1796, 0x3F70101000000000
  %1798 = fadd fast float %1783, -5.000000e-01
  %1799 = fadd fast float %1785, -5.000000e-01
  %1800 = fmul fast float %1798, %1794
  %1801 = fmul fast float %1799, %1794
  %1802 = fadd fast float %1800, 5.000000e-01
  %1803 = fadd fast float %1801, 5.000000e-01
  %1804 = fmul fast float %1802, 2.000000e+00
  %1805 = fadd fast float %1804, -1.000000e+00
  %1806 = fmul fast float %1803, 2.000000e+00
  %1807 = fadd fast float %1806, -1.000000e+00
  %1808 = fadd fast float %1805, %1807
  %1809 = fmul fast float %1808, 5.000000e-01
  %1810 = fsub fast float %1805, %1807
  %1811 = fmul fast float %1810, 5.000000e-01
  %1812 = call float @dx.op.unary.f32(i32 6, float %1809)  ; FAbs(value)
  %1813 = fsub fast float 1.000000e+00, %1812
  %1814 = call float @dx.op.unary.f32(i32 6, float %1811)  ; FAbs(value)
  %1815 = fsub fast float %1813, %1814
  %1816 = call float @dx.op.dot3.f32(i32 55, float %1809, float %1811, float %1815, float %1809, float %1811, float %1815)  ; Dot3(ax,ay,az,bx,by,bz)
  %1817 = call float @dx.op.unary.f32(i32 25, float %1816)  ; Rsqrt(value)
  %1818 = fmul fast float %1809, %1817
  %1819 = fmul fast float %1811, %1817
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = and i32 %1821, 67108864
  %1823 = icmp eq i32 %1822, 0
  br i1 %1823, label %1840, label %1824

; <label>:1824                                    ; preds = %1772
  %1825 = add i32 %48, 296
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = and i32 %1827, 65535
  %1829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1828)  ; LegacyF16ToF32(value)
  %1830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.i32 %1830, 0
  %1832 = and i32 %1831, 65535
  %1833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1832)  ; LegacyF16ToF32(value)
  %1834 = lshr i32 %1827, 16
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = fsub fast float %1797, %1835
  %1837 = fmul fast float %1836, %1829
  %1838 = fadd fast float %1837, %1833
  %1839 = call float @dx.op.unary.f32(i32 7, float %1838)  ; Saturate(value)
  br label %1840

; <label>:1840                                    ; preds = %1824, %1772
  %1841 = phi float [ %1839, %1824 ], [ %1797, %1772 ]
  %1842 = call float @dx.op.dot2.f32(i32 54, float %1818, float %1819, float %1261, float %1262)  ; Dot2(ax,ay,bx,by)
  %1843 = call float @dx.op.dot2.f32(i32 54, float %1818, float %1819, float %1263, float %1264)  ; Dot2(ax,ay,bx,by)
  br label %1844

; <label>:1844                                    ; preds = %1840, %1750
  %1845 = phi float [ %1841, %1840 ], [ 0x3FD6666660000000, %1750 ]
  %1846 = phi float [ %1842, %1840 ], [ 0.000000e+00, %1750 ]
  %1847 = phi float [ %1843, %1840 ], [ 0.000000e+00, %1750 ]
  %1848 = phi float [ %1784, %1840 ], [ 1.000000e+00, %1750 ]
  %1849 = add i32 %48, 176
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = lshr i32 %1851, 22
  %1853 = shl nuw nsw i32 %1852, 5
  %1854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1853)  ; LegacyF16ToF32(value)
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = and i32 %1856, 64
  %1858 = icmp eq i32 %1857, 0
  br i1 %1858, label %1892, label %1859

; <label>:1859                                    ; preds = %1844
  %1860 = add i32 %48, 396
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = add i32 %1862, 0
  %1864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1863, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = and i32 %1866, 131072
  %1868 = icmp eq i32 %1867, 0
  %1869 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1864, %dx.types.Handle %93, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1870 = extractvalue %dx.types.ResRet.f32 %1869, 0
  %1871 = extractvalue %dx.types.ResRet.f32 %1869, 1
  %1872 = extractvalue %dx.types.ResRet.f32 %1869, 2
  %1873 = fmul fast float %1870, %275
  %1874 = fmul fast float %1871, %278
  %1875 = fmul fast float %1872, %281
  br i1 %1868, label %1882, label %1876

; <label>:1876                                    ; preds = %1859
  %1877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1878 = extractvalue %dx.types.CBufRet.f32 %1877, 0
  %1879 = fmul fast float %1878, %1873
  %1880 = fmul fast float %1878, %1874
  %1881 = fmul fast float %1878, %1875
  br label %1882

; <label>:1882                                    ; preds = %1876, %1859
  %1883 = phi float [ %1879, %1876 ], [ %1873, %1859 ]
  %1884 = phi float [ %1880, %1876 ], [ %1874, %1859 ]
  %1885 = phi float [ %1881, %1876 ], [ %1875, %1859 ]
  %1886 = fmul fast float %1883, %1854
  %1887 = select i1 %213, float %1886, float %1883
  %1888 = call float @dx.op.dot3.f32(i32 55, float %1887, float %1884, float %1885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1889 = select i1 %213, float 0.000000e+00, float %1883
  %1890 = select i1 %213, float %1888, float %1884
  %1891 = select i1 %213, float 0.000000e+00, float %1885
  br label %1892

; <label>:1892                                    ; preds = %1882, %1844
  %1893 = phi float [ %1889, %1882 ], [ 0.000000e+00, %1844 ]
  %1894 = phi float [ %1890, %1882 ], [ 0.000000e+00, %1844 ]
  %1895 = phi float [ %1891, %1882 ], [ 0.000000e+00, %1844 ]
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = and i32 %1897, 1024
  %1899 = icmp eq i32 %1898, 0
  br i1 %1899, label %1930, label %1900

; <label>:1900                                    ; preds = %1892
  %1901 = add i32 %48, 168
  %1902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.i32 %1902, 0
  %1904 = and i32 %1903, 255
  %1905 = uitofp i32 %1904 to float
  %1906 = fmul fast float %1905, 0x3F70101020000000
  %1907 = lshr i32 %1903, 8
  %1908 = and i32 %1907, 255
  %1909 = uitofp i32 %1908 to float
  %1910 = fmul fast float %1909, 0x3F70101020000000
  %1911 = lshr i32 %1903, 16
  %1912 = and i32 %1911, 255
  %1913 = uitofp i32 %1912 to float
  %1914 = fmul fast float %1913, 0x3F70101020000000
  %1915 = fmul fast float %1906, %1906
  %1916 = fmul fast float %1910, %1910
  %1917 = fmul fast float %1914, %1914
  %1918 = add i32 %48, 460
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = add i32 %1920, 0
  %1922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1921, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1923 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1922, %dx.types.Handle %94, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1924 = extractvalue %dx.types.ResRet.f32 %1923, 0
  %1925 = extractvalue %dx.types.ResRet.f32 %1923, 1
  %1926 = extractvalue %dx.types.ResRet.f32 %1923, 2
  %1927 = fmul fast float %1915, %1924
  %1928 = fmul fast float %1916, %1925
  %1929 = fmul fast float %1917, %1926
  br label %1930

; <label>:1930                                    ; preds = %1900, %1892
  %1931 = phi float [ %1927, %1900 ], [ 0.000000e+00, %1892 ]
  %1932 = phi float [ %1928, %1900 ], [ 0.000000e+00, %1892 ]
  %1933 = phi float [ %1929, %1900 ], [ 0.000000e+00, %1892 ]
  %1934 = fcmp fast ogt float %1931, 0.000000e+00
  %1935 = fcmp fast ogt float %1932, 0.000000e+00
  %1936 = fcmp fast ogt float %1933, 0.000000e+00
  %1937 = call float @dx.op.unary.f32(i32 23, float %1931)  ; Log(value)
  %1938 = call float @dx.op.unary.f32(i32 23, float %1932)  ; Log(value)
  %1939 = call float @dx.op.unary.f32(i32 23, float %1933)  ; Log(value)
  %1940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.i32 %1940, 0
  %1942 = lshr i32 %1941, 7
  %1943 = and i32 %1942, 32752
  %1944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1943)  ; LegacyF16ToF32(value)
  %1945 = fmul fast float %1937, 0xBFE62E4300000000
  %1946 = fmul fast float %1945, %1944
  %1947 = fmul fast float %1938, 0xBFE62E4300000000
  %1948 = fmul fast float %1947, %1944
  %1949 = fmul fast float %1939, 0xBFE62E4300000000
  %1950 = fmul fast float %1949, %1944
  %1951 = select i1 %1934, float %1946, float 1.270000e+02
  %1952 = select i1 %1935, float %1948, float 1.270000e+02
  %1953 = select i1 %1936, float %1950, float 1.270000e+02
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = and i32 %1955, 10240
  %1957 = icmp eq i32 %1956, 0
  br i1 %1957, label %2002, label %1958

; <label>:1958                                    ; preds = %1930
  %1959 = add i32 %48, 476
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = add i32 %1961, 0
  %1963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1963, %dx.types.Handle %94, float %1357, float %1358, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 1
  %1966 = extractvalue %dx.types.ResRet.f32 %1964, 3
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = and i32 %1968, 1048576
  %1970 = icmp ne i32 %1969, 0
  %1971 = and i32 %1968, 8192
  %1972 = icmp eq i32 %1971, 0
  br i1 %1972, label %1988, label %1973

; <label>:1973                                    ; preds = %1958
  %1974 = extractvalue %dx.types.ResRet.f32 %1964, 2
  %1975 = select i1 %1970, float %1974, float %1965
  %1976 = extractvalue %dx.types.ResRet.f32 %1964, 0
  %1977 = select i1 %1970, float %1976, float %1965
  %1978 = add i32 %48, 112
  %1979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1978, i32 undef)  ; BufferLoad(srv,index,wot)
  %1980 = extractvalue %dx.types.ResRet.i32 %1979, 0
  %1981 = lshr i32 %1980, 16
  %1982 = and i32 %1981, 255
  %1983 = uitofp i32 %1982 to float
  %1984 = fmul fast float %1983, 0x3F80101020000000
  %1985 = fmul fast float %1984, %1977
  %1986 = fmul fast float %1984, %1965
  %1987 = fmul fast float %1984, %1975
  br label %1988

; <label>:1988                                    ; preds = %1973, %1958
  %1989 = phi float [ %1985, %1973 ], [ 0.000000e+00, %1958 ]
  %1990 = phi float [ %1986, %1973 ], [ 0.000000e+00, %1958 ]
  %1991 = phi float [ %1987, %1973 ], [ 0.000000e+00, %1958 ]
  %1992 = and i32 %1968, 2048
  %1993 = icmp eq i32 %1992, 0
  br i1 %1993, label %2002, label %1994

; <label>:1994                                    ; preds = %1988
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = shl i32 %1996, 4
  %1998 = and i32 %1997, 32752
  %1999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1998)  ; LegacyF16ToF32(value)
  %2000 = fmul fast float %1999, %1966
  %2001 = call float @dx.op.binary.f32(i32 35, float %2000, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2002

; <label>:2002                                    ; preds = %1994, %1988, %1930
  %2003 = phi float [ %1989, %1994 ], [ %1989, %1988 ], [ 0.000000e+00, %1930 ]
  %2004 = phi float [ %1990, %1994 ], [ %1990, %1988 ], [ 0.000000e+00, %1930 ]
  %2005 = phi float [ %1991, %1994 ], [ %1991, %1988 ], [ 0.000000e+00, %1930 ]
  %2006 = phi float [ %2001, %1994 ], [ 0x3F70101020000000, %1988 ], [ 0x3F70101020000000, %1930 ]
  %2007 = add i32 %48, 112
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = and i32 %2009, 255
  %2011 = uitofp i32 %2010 to float
  %2012 = lshr i32 %2009, 8
  %2013 = and i32 %2012, 255
  %2014 = uitofp i32 %2013 to float
  %2015 = call float @dx.op.dot3.f32(i32 55, float %1765, float %1766, float %1767, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2016 = fmul fast float %2014, %2015
  %2017 = fadd fast float %2016, %2011
  %2018 = fmul fast float %2017, 0x3F70101020000000
  %2019 = call float @dx.op.unary.f32(i32 7, float %2018)  ; Saturate(value)
  br i1 %1249, label %2020, label %2055

; <label>:2020                                    ; preds = %2002
  %2021 = fmul fast float %2006, 2.000000e+00
  %2022 = fcmp fast olt float %1951, 1.270000e+02
  %2023 = fcmp fast olt float %1952, 1.270000e+02
  %2024 = fcmp fast olt float %1953, 1.270000e+02
  %2025 = fmul fast float %1951, 0xBFF7154760000000
  %2026 = fmul fast float %2025, %2021
  %2027 = fmul fast float %1952, 0xBFF7154760000000
  %2028 = fmul fast float %2027, %2021
  %2029 = fmul fast float %1953, 0xBFF7154760000000
  %2030 = fmul fast float %2029, %2021
  %2031 = call float @dx.op.unary.f32(i32 21, float %2026)  ; Exp(value)
  %2032 = call float @dx.op.unary.f32(i32 21, float %2028)  ; Exp(value)
  %2033 = call float @dx.op.unary.f32(i32 21, float %2030)  ; Exp(value)
  %2034 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  %2035 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2036 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2037 = fadd fast float %2034, -1.000000e+00
  %2038 = select i1 %2022, float %2037, float -1.000000e+00
  %2039 = fadd fast float %2035, -1.000000e+00
  %2040 = select i1 %2023, float %2039, float -1.000000e+00
  %2041 = fadd fast float %2036, -1.000000e+00
  %2042 = select i1 %2024, float %2041, float -1.000000e+00
  %2043 = fmul fast float %2038, %1545
  %2044 = fmul fast float %2040, %1545
  %2045 = fmul fast float %2042, %1545
  %2046 = fadd fast float %2043, 1.000000e+00
  %2047 = fadd fast float %2044, 1.000000e+00
  %2048 = fadd fast float %2045, 1.000000e+00
  %2049 = fmul fast float %2046, %1230
  %2050 = fmul fast float %2047, %1231
  %2051 = fmul fast float %2048, %1232
  %2052 = fmul fast float %2046, %1233
  %2053 = fmul fast float %2047, %1234
  %2054 = fmul fast float %2048, %1235
  br label %2055

; <label>:2055                                    ; preds = %2020, %2002
  %2056 = phi float [ %2049, %2020 ], [ %1230, %2002 ]
  %2057 = phi float [ %2050, %2020 ], [ %1231, %2002 ]
  %2058 = phi float [ %2051, %2020 ], [ %1232, %2002 ]
  %2059 = phi float [ %2052, %2020 ], [ %1233, %2002 ]
  %2060 = phi float [ %2053, %2020 ], [ %1234, %2002 ]
  %2061 = phi float [ %2054, %2020 ], [ %1235, %2002 ]
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = and i32 %2063, 3
  %2065 = icmp eq i32 %2064, 3
  br i1 %2065, label %2144, label %2066

; <label>:2066                                    ; preds = %2055
  %2067 = and i32 %2063, 16
  %2068 = icmp ne i32 %2067, 0
  %2069 = select i1 %2068, float %1545, float 0.000000e+00
  %2070 = icmp eq i32 %2064, 0
  br i1 %2070, label %2071, label %2099

; <label>:2071                                    ; preds = %2066
  %2072 = and i32 %2063, 64
  %2073 = icmp ne i32 %2072, 0
  %2074 = select i1 %2073, float %1545, float 0.000000e+00
  %2075 = fsub fast float %1765, %2056
  %2076 = fsub fast float %1766, %2057
  %2077 = fsub fast float %1767, %2058
  %2078 = fmul fast float %2069, %2075
  %2079 = fmul fast float %2069, %2076
  %2080 = fmul fast float %2069, %2077
  %2081 = fadd fast float %2078, %2056
  %2082 = fadd fast float %2079, %2057
  %2083 = fadd fast float %2080, %2058
  %2084 = fsub fast float %1751, %1242
  %2085 = fmul fast float %2069, %2084
  %2086 = fadd fast float %2085, %1242
  %2087 = fsub fast float %1893, %2059
  %2088 = fsub fast float %1894, %2060
  %2089 = fsub fast float %1895, %2061
  %2090 = fmul fast float %2074, %2087
  %2091 = fmul fast float %2074, %2088
  %2092 = fmul fast float %2074, %2089
  %2093 = fadd fast float %2090, %2059
  %2094 = fadd fast float %2091, %2060
  %2095 = fadd fast float %2092, %2061
  %2096 = fsub fast float %2019, %1247
  %2097 = fmul fast float %2069, %2096
  %2098 = fadd fast float %2097, %1247
  br label %2144

; <label>:2099                                    ; preds = %2066
  %2100 = icmp eq i32 %2064, 1
  br i1 %2100, label %2101, label %2114

; <label>:2101                                    ; preds = %2099
  %2102 = fadd fast float %1765, -1.000000e+00
  %2103 = fadd fast float %1766, -1.000000e+00
  %2104 = fadd fast float %1767, -1.000000e+00
  %2105 = fmul fast float %2069, %2102
  %2106 = fmul fast float %2069, %2103
  %2107 = fmul fast float %2069, %2104
  %2108 = fadd fast float %2105, 1.000000e+00
  %2109 = fadd fast float %2106, 1.000000e+00
  %2110 = fadd fast float %2107, 1.000000e+00
  %2111 = fmul fast float %2108, %2056
  %2112 = fmul fast float %2109, %2057
  %2113 = fmul fast float %2110, %2058
  br label %2144

; <label>:2114                                    ; preds = %2099
  %2115 = icmp eq i32 %2064, 2
  br i1 %2115, label %2116, label %2144

; <label>:2116                                    ; preds = %2114
  %2117 = call float @dx.op.unary.f32(i32 24, float %1765)  ; Sqrt(value)
  %2118 = call float @dx.op.unary.f32(i32 24, float %1766)  ; Sqrt(value)
  %2119 = call float @dx.op.unary.f32(i32 24, float %1767)  ; Sqrt(value)
  %2120 = fadd fast float %2117, -5.000000e-01
  %2121 = fadd fast float %2118, -5.000000e-01
  %2122 = fadd fast float %2119, -5.000000e-01
  %2123 = fmul fast float %2120, %2069
  %2124 = fmul fast float %2121, %2069
  %2125 = fmul fast float %2122, %2069
  %2126 = fadd fast float %2123, 5.000000e-01
  %2127 = fadd fast float %2124, 5.000000e-01
  %2128 = fadd fast float %2125, 5.000000e-01
  %2129 = fmul fast float %2126, 2.000000e+00
  %2130 = fsub fast float 1.000000e+00, %2129
  %2131 = fmul fast float %2130, %2056
  %2132 = fadd fast float %2131, %2129
  %2133 = fmul fast float %2132, %2056
  %2134 = fmul fast float %2127, 2.000000e+00
  %2135 = fsub fast float 1.000000e+00, %2134
  %2136 = fmul fast float %2135, %2057
  %2137 = fadd fast float %2136, %2134
  %2138 = fmul fast float %2137, %2057
  %2139 = fmul fast float %2128, 2.000000e+00
  %2140 = fsub fast float 1.000000e+00, %2139
  %2141 = fmul fast float %2140, %2058
  %2142 = fadd fast float %2141, %2139
  %2143 = fmul fast float %2142, %2058
  br label %2144

; <label>:2144                                    ; preds = %2116, %2114, %2101, %2071, %2055
  %2145 = phi float [ %2056, %2055 ], [ %2133, %2116 ], [ %2056, %2114 ], [ %2111, %2101 ], [ %2081, %2071 ]
  %2146 = phi float [ %2057, %2055 ], [ %2138, %2116 ], [ %2057, %2114 ], [ %2112, %2101 ], [ %2082, %2071 ]
  %2147 = phi float [ %2058, %2055 ], [ %2143, %2116 ], [ %2058, %2114 ], [ %2113, %2101 ], [ %2083, %2071 ]
  %2148 = phi float [ %2059, %2055 ], [ %2059, %2116 ], [ %2059, %2114 ], [ %2059, %2101 ], [ %2093, %2071 ]
  %2149 = phi float [ %2060, %2055 ], [ %2060, %2116 ], [ %2060, %2114 ], [ %2060, %2101 ], [ %2094, %2071 ]
  %2150 = phi float [ %2061, %2055 ], [ %2061, %2116 ], [ %2061, %2114 ], [ %2061, %2101 ], [ %2095, %2071 ]
  %2151 = phi float [ %1242, %2055 ], [ %1242, %2116 ], [ %1242, %2114 ], [ %1242, %2101 ], [ %2086, %2071 ]
  %2152 = phi float [ %1247, %2055 ], [ %1247, %2116 ], [ %1247, %2114 ], [ %1247, %2101 ], [ %2098, %2071 ]
  %2153 = and i32 %2063, 12
  %2154 = icmp eq i32 %2153, 12
  br i1 %2154, label %2285, label %2155

; <label>:2155                                    ; preds = %2144
  %2156 = and i32 %2063, 2097184
  %2157 = icmp eq i32 %2156, 2097184
  %2158 = select i1 %2157, float %1545, float 0.000000e+00
  %2159 = and i32 %2063, 4194336
  %2160 = icmp eq i32 %2159, 4194336
  %2161 = select i1 %2160, float %1545, float 0.000000e+00
  %2162 = and i32 %2063, 8388640
  %2163 = icmp eq i32 %2162, 8388640
  %2164 = select i1 %2163, float %1545, float 0.000000e+00
  %2165 = and i32 %2063, 1024
  %2166 = icmp ne i32 %2165, 0
  %2167 = select i1 %2166, float %1545, float 0.000000e+00
  %2168 = and i32 %2063, 2048
  %2169 = icmp ne i32 %2168, 0
  %2170 = select i1 %2169, float %1545, float 0.000000e+00
  %2171 = and i32 %2063, 8192
  %2172 = icmp ne i32 %2171, 0
  %2173 = select i1 %2172, float %1545, float 0.000000e+00
  %2174 = icmp eq i32 %2153, 0
  br i1 %2174, label %2175, label %2209

; <label>:2175                                    ; preds = %2155
  %2176 = fsub fast float %1846, %1228
  %2177 = fsub fast float %1847, %1229
  %2178 = fmul fast float %2158, %2176
  %2179 = fmul fast float %2158, %2177
  %2180 = fadd fast float %2178, %1228
  %2181 = fadd fast float %2179, %1229
  %2182 = fsub fast float %1848, %1245
  %2183 = fmul fast float %2161, %2182
  %2184 = fadd fast float %2183, %1245
  %2185 = fsub fast float %1845, %1244
  %2186 = fmul fast float %2164, %2185
  %2187 = fadd fast float %2186, %1244
  %2188 = fsub fast float %1951, %1239
  %2189 = fsub fast float %1952, %1240
  %2190 = fsub fast float %1953, %1241
  %2191 = fmul fast float %2167, %2188
  %2192 = fmul fast float %2167, %2189
  %2193 = fmul fast float %2167, %2190
  %2194 = fadd fast float %2191, %1239
  %2195 = fadd fast float %2192, %1240
  %2196 = fadd fast float %2193, %1241
  %2197 = fsub fast float %2006, %1246
  %2198 = fmul fast float %2170, %2197
  %2199 = fadd fast float %2198, %1246
  %2200 = fsub fast float %2003, %1236
  %2201 = fsub fast float %2004, %1237
  %2202 = fsub fast float %2005, %1238
  %2203 = fmul fast float %2173, %2200
  %2204 = fmul fast float %2173, %2201
  %2205 = fmul fast float %2173, %2202
  %2206 = fadd fast float %2203, %1236
  %2207 = fadd fast float %2204, %1237
  %2208 = fadd fast float %2205, %1238
  br label %2285

; <label>:2209                                    ; preds = %2155
  %2210 = icmp eq i32 %2153, 4
  br i1 %2210, label %2211, label %2257

; <label>:2211                                    ; preds = %2209
  %2212 = fmul fast float %2158, %1846
  %2213 = fmul fast float %2158, %1847
  %2214 = fadd fast float %2212, %1228
  %2215 = fadd fast float %2213, %1229
  %2216 = call float @dx.op.binary.f32(i32 36, float %1245, float %1848)  ; FMin(a,b)
  %2217 = fsub fast float %2216, %1245
  %2218 = fmul fast float %2217, %2161
  %2219 = fadd fast float %2218, %1245
  %2220 = fadd fast float %1845, %1244
  %2221 = fmul fast float %2220, 0x3FF337FAE0000000
  %2222 = fmul fast float %1244, %1244
  %2223 = fmul fast float %1845, %1845
  %2224 = fadd fast float %2223, %2222
  %2225 = fmul fast float %2224, 0x3FE5152B00000000
  %2226 = fmul fast float %1244, 0xBFCC1F85E0000000
  %2227 = fmul fast float %2226, %1845
  %2228 = fadd fast float %2227, 0xBFE1363700000000
  %2229 = fadd fast float %2228, %2221
  %2230 = fsub fast float %2229, %2225
  %2231 = fmul fast float %2220, 0x3FBA6F0D00000000
  %2232 = fmul fast float %2224, 0x3FD0432880000000
  %2233 = fmul fast float %1244, 0xBFEF110800000000
  %2234 = fmul fast float %2233, %1845
  %2235 = fadd fast float %2234, 1.000000e+00
  %2236 = fsub fast float %2235, %2231
  %2237 = fadd fast float %2236, %2232
  %2238 = fdiv fast float %2230, %2237
  %2239 = call float @dx.op.unary.f32(i32 7, float %2238)  ; Saturate(value)
  %2240 = fsub fast float %2239, %1244
  %2241 = fmul fast float %2240, %2164
  %2242 = fadd fast float %2241, %1244
  %2243 = fmul fast float %2167, %1951
  %2244 = fmul fast float %2167, %1952
  %2245 = fmul fast float %2167, %1953
  %2246 = fadd fast float %2243, %1239
  %2247 = fadd fast float %2244, %1240
  %2248 = fadd fast float %2245, %1241
  %2249 = fmul fast float %2170, %2006
  %2250 = fadd fast float %2249, %1246
  %2251 = fmul fast float %2173, %2003
  %2252 = fmul fast float %2173, %2004
  %2253 = fmul fast float %2173, %2005
  %2254 = fadd fast float %2251, %1236
  %2255 = fadd fast float %2252, %1237
  %2256 = fadd fast float %2253, %1238
  br label %2285

; <label>:2257                                    ; preds = %2209
  %2258 = icmp eq i32 %2153, 8
  br i1 %2258, label %2259, label %2285

; <label>:2259                                    ; preds = %2257
  %2260 = fmul fast float %2158, %1846
  %2261 = fmul fast float %2158, %1847
  %2262 = fadd fast float %2260, %1228
  %2263 = fadd fast float %2261, %1229
  %2264 = call float @dx.op.binary.f32(i32 36, float %1245, float %1848)  ; FMin(a,b)
  %2265 = fsub fast float %2264, %1245
  %2266 = fmul fast float %2265, %2161
  %2267 = fadd fast float %2266, %1245
  %2268 = fsub fast float %1845, %1244
  %2269 = fmul fast float %2164, %2268
  %2270 = fadd fast float %2269, %1244
  %2271 = fmul fast float %2167, %1951
  %2272 = fmul fast float %2167, %1952
  %2273 = fmul fast float %2167, %1953
  %2274 = fadd fast float %2271, %1239
  %2275 = fadd fast float %2272, %1240
  %2276 = fadd fast float %2273, %1241
  %2277 = fmul fast float %2170, %2006
  %2278 = fadd fast float %2277, %1246
  %2279 = fmul fast float %2173, %2003
  %2280 = fmul fast float %2173, %2004
  %2281 = fmul fast float %2173, %2005
  %2282 = fadd fast float %2279, %1236
  %2283 = fadd fast float %2280, %1237
  %2284 = fadd fast float %2281, %1238
  br label %2285

; <label>:2285                                    ; preds = %2259, %2257, %2211, %2175, %2144, %1544, %1248, %1227
  %2286 = phi float [ %1228, %2144 ], [ %1228, %1544 ], [ %1228, %1227 ], [ %2262, %2259 ], [ %1228, %2257 ], [ %2214, %2211 ], [ %2180, %2175 ], [ %1228, %1248 ]
  %2287 = phi float [ %1229, %2144 ], [ %1229, %1544 ], [ %1229, %1227 ], [ %2263, %2259 ], [ %1229, %2257 ], [ %2215, %2211 ], [ %2181, %2175 ], [ %1229, %1248 ]
  %2288 = phi float [ %2145, %2144 ], [ %1230, %1544 ], [ %1230, %1227 ], [ %2145, %2259 ], [ %2145, %2257 ], [ %2145, %2211 ], [ %2145, %2175 ], [ %1230, %1248 ]
  %2289 = phi float [ %2146, %2144 ], [ %1231, %1544 ], [ %1231, %1227 ], [ %2146, %2259 ], [ %2146, %2257 ], [ %2146, %2211 ], [ %2146, %2175 ], [ %1231, %1248 ]
  %2290 = phi float [ %2147, %2144 ], [ %1232, %1544 ], [ %1232, %1227 ], [ %2147, %2259 ], [ %2147, %2257 ], [ %2147, %2211 ], [ %2147, %2175 ], [ %1232, %1248 ]
  %2291 = phi float [ %2148, %2144 ], [ %1233, %1544 ], [ %1233, %1227 ], [ %2148, %2259 ], [ %2148, %2257 ], [ %2148, %2211 ], [ %2148, %2175 ], [ %1233, %1248 ]
  %2292 = phi float [ %2149, %2144 ], [ %1234, %1544 ], [ %1234, %1227 ], [ %2149, %2259 ], [ %2149, %2257 ], [ %2149, %2211 ], [ %2149, %2175 ], [ %1234, %1248 ]
  %2293 = phi float [ %2150, %2144 ], [ %1235, %1544 ], [ %1235, %1227 ], [ %2150, %2259 ], [ %2150, %2257 ], [ %2150, %2211 ], [ %2150, %2175 ], [ %1235, %1248 ]
  %2294 = phi float [ %1236, %2144 ], [ %1236, %1544 ], [ %1236, %1227 ], [ %2282, %2259 ], [ %1236, %2257 ], [ %2254, %2211 ], [ %2206, %2175 ], [ %1236, %1248 ]
  %2295 = phi float [ %1237, %2144 ], [ %1237, %1544 ], [ %1237, %1227 ], [ %2283, %2259 ], [ %1237, %2257 ], [ %2255, %2211 ], [ %2207, %2175 ], [ %1237, %1248 ]
  %2296 = phi float [ %1238, %2144 ], [ %1238, %1544 ], [ %1238, %1227 ], [ %2284, %2259 ], [ %1238, %2257 ], [ %2256, %2211 ], [ %2208, %2175 ], [ %1238, %1248 ]
  %2297 = phi float [ %1239, %2144 ], [ %1239, %1544 ], [ %1239, %1227 ], [ %2274, %2259 ], [ %1239, %2257 ], [ %2246, %2211 ], [ %2194, %2175 ], [ %1239, %1248 ]
  %2298 = phi float [ %1240, %2144 ], [ %1240, %1544 ], [ %1240, %1227 ], [ %2275, %2259 ], [ %1240, %2257 ], [ %2247, %2211 ], [ %2195, %2175 ], [ %1240, %1248 ]
  %2299 = phi float [ %1241, %2144 ], [ %1241, %1544 ], [ %1241, %1227 ], [ %2276, %2259 ], [ %1241, %2257 ], [ %2248, %2211 ], [ %2196, %2175 ], [ %1241, %1248 ]
  %2300 = phi float [ %2151, %2144 ], [ %1242, %1544 ], [ %1242, %1227 ], [ %2151, %2259 ], [ %2151, %2257 ], [ %2151, %2211 ], [ %2151, %2175 ], [ %1242, %1248 ]
  %2301 = phi float [ %1244, %2144 ], [ %1244, %1544 ], [ %1244, %1227 ], [ %2270, %2259 ], [ %1244, %2257 ], [ %2242, %2211 ], [ %2187, %2175 ], [ %1244, %1248 ]
  %2302 = phi float [ %1245, %2144 ], [ %1245, %1544 ], [ %1245, %1227 ], [ %2267, %2259 ], [ %1245, %2257 ], [ %2219, %2211 ], [ %2184, %2175 ], [ %1245, %1248 ]
  %2303 = phi float [ %1246, %2144 ], [ %1246, %1544 ], [ %1246, %1227 ], [ %2278, %2259 ], [ %1246, %2257 ], [ %2250, %2211 ], [ %2199, %2175 ], [ %1246, %1248 ]
  %2304 = phi float [ %2152, %2144 ], [ %1247, %1544 ], [ %1247, %1227 ], [ %2152, %2259 ], [ %2152, %2257 ], [ %2152, %2211 ], [ %2152, %2175 ], [ %1247, %1248 ]
  br i1 %402, label %3342, label %2305

; <label>:2305                                    ; preds = %2285
  %2306 = icmp ult i32 %458, 3
  %2307 = add i32 %48, 56
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = add i32 %48, 60
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = or i32 %2312, %2309
  %2314 = icmp eq i32 %2313, 0
  br i1 %2314, label %3342, label %2315

; <label>:2315                                    ; preds = %2305
  %2316 = and i32 %2309, 262144
  %2317 = icmp ne i32 %2316, 0
  %2318 = select i1 %2317, float %51, float 1.000000e+00
  %2319 = select i1 %2317, float %52, float 0.000000e+00
  %2320 = select i1 %2317, float %53, float 0.000000e+00
  %2321 = select i1 %2317, float %54, float 1.000000e+00
  %2322 = select i1 %2317, float %55, float %76
  %2323 = select i1 %2317, float %56, float %77
  %2324 = add i32 %48, 316
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = lshr i32 %2326, 16
  %2328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2327)  ; LegacyF16ToF32(value)
  %2329 = fmul fast float %2328, 0x3F50624DE0000000
  %2330 = add i32 %48, 120
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = lshr i32 %2332, 16
  %2334 = and i32 %2333, 255
  %2335 = lshr i32 %2332, 24
  %2336 = add i32 %48, 324
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = and i32 %2338, 65535
  %2340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2339)  ; LegacyF16ToF32(value)
  %2341 = lshr i32 %2338, 16
  %2342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2341)  ; LegacyF16ToF32(value)
  %2343 = add i32 %48, 64
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = lshr i32 %2345, 22
  %2347 = shl nuw nsw i32 %2346, 5
  %2348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2347)  ; LegacyF16ToF32(value)
  %2349 = shl i32 %2345, 4
  %2350 = and i32 %2349, 32752
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = lshr i32 %2345, 7
  %2353 = and i32 %2352, 32752
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 3
  %2357 = fmul fast float %2356, 1.000000e+03
  %2358 = fmul fast float %352, %2357
  %2359 = call float @dx.op.unary.f32(i32 22, float %2358)  ; Frc(value)
  %2360 = fadd fast float %2359, %342
  %2361 = fmul fast float %353, %2357
  %2362 = call float @dx.op.unary.f32(i32 22, float %2361)  ; Frc(value)
  %2363 = fadd fast float %2362, %344
  %2364 = fmul fast float %2329, %2357
  %2365 = call float @dx.op.unary.f32(i32 22, float %2364)  ; Frc(value)
  %2366 = fmul fast float %2365, 0x401921FB60000000
  %2367 = fadd fast float %2366, %2348
  %2368 = call float @dx.op.unary.f32(i32 13, float %2367)  ; Sin(value)
  %2369 = call float @dx.op.unary.f32(i32 12, float %2367)  ; Cos(value)
  %2370 = fsub fast float -0.000000e+00, %2368
  %2371 = fadd fast float %2322, -5.000000e-01
  %2372 = fadd fast float %2323, -5.000000e-01
  %2373 = fmul fast float %2340, %2371
  %2374 = fmul fast float %2342, %2372
  %2375 = fadd fast float %2373, 5.000000e-01
  %2376 = fadd fast float %2374, 5.000000e-01
  %2377 = fmul fast float %2351, %2375
  %2378 = fmul fast float %2354, %2376
  %2379 = fmul fast float %2369, %2377
  %2380 = call float @dx.op.tertiary.f32(i32 46, float %2370, float %2378, float %2379)  ; FMad(a,b,c)
  %2381 = fmul fast float %2368, %2377
  %2382 = call float @dx.op.tertiary.f32(i32 46, float %2369, float %2378, float %2381)  ; FMad(a,b,c)
  %2383 = fadd fast float %2360, %2380
  %2384 = fadd fast float %2363, %2382
  %2385 = icmp ugt i32 %2334, 1
  %2386 = icmp ugt i32 %2332, 33554431
  %2387 = or i1 %2386, %2385
  br i1 %2387, label %2388, label %2413

; <label>:2388                                    ; preds = %2315
  %2389 = add i32 %48, 260
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2389, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = lshr i32 %2391, 16
  %2393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2392)  ; LegacyF16ToF32(value)
  %2394 = fmul fast float %2356, %2393
  %2395 = call float @dx.op.unary.f32(i32 22, float %2394)  ; Frc(value)
  %2396 = mul nuw nsw i32 %2334, %2335
  %2397 = uitofp i32 %2396 to float
  %2398 = fmul fast float %2395, %2397
  %2399 = call float @dx.op.unary.f32(i32 27, float %2398)  ; Round_ni(value)
  %2400 = fptoui float %2399 to i32
  %2401 = urem i32 %2400, %2334
  %2402 = udiv i32 %2400, %2335
  %2403 = call float @dx.op.unary.f32(i32 22, float %2383)  ; Frc(value)
  %2404 = call float @dx.op.unary.f32(i32 22, float %2384)  ; Frc(value)
  %2405 = uitofp i32 %2401 to float
  %2406 = uitofp i32 %2402 to float
  %2407 = fadd fast float %2403, %2405
  %2408 = fadd fast float %2404, %2406
  %2409 = uitofp i32 %2334 to float
  %2410 = uitofp i32 %2335 to float
  %2411 = fdiv fast float %2407, %2409
  %2412 = fdiv fast float %2408, %2410
  br label %2413

; <label>:2413                                    ; preds = %2388, %2315
  %2414 = phi float [ %2411, %2388 ], [ %2383, %2315 ]
  %2415 = phi float [ %2412, %2388 ], [ %2384, %2315 ]
  %2416 = and i32 %2309, 16777216
  %2417 = icmp eq i32 %2416, 0
  br i1 %2417, label %2527, label %2418

; <label>:2418                                    ; preds = %2413
  %2419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2420 = extractvalue %dx.types.CBufRet.f32 %2419, 0
  %2421 = extractvalue %dx.types.CBufRet.f32 %2419, 1
  %2422 = extractvalue %dx.types.CBufRet.f32 %2419, 2
  %2423 = fadd fast float %2420, %152
  %2424 = fadd fast float %2421, %153
  %2425 = fadd fast float %2422, %154
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 0
  %2428 = call float @dx.op.unary.f32(i32 7, float %2427)  ; Saturate(value)
  %2429 = icmp eq i32 %49, 65535
  br i1 %2429, label %2524, label %2430

; <label>:2430                                    ; preds = %2418
  %2431 = lshr i32 %49, 1
  %2432 = shl i32 %2431, 2
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = and i32 %49, 1
  %2436 = icmp ne i32 %2435, 0
  %2437 = lshr i32 %2434, 16
  %2438 = and i32 %2434, 65535
  %2439 = select i1 %2436, i32 %2437, i32 %2438
  %2440 = icmp eq i32 %2439, 65535
  br i1 %2440, label %2520, label %2441

; <label>:2441                                    ; preds = %2430
  %2442 = mul nuw nsw i32 %2439, 40
  %2443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2442, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.f32 %2443, 0
  %2445 = extractvalue %dx.types.ResRet.f32 %2443, 1
  %2446 = extractvalue %dx.types.ResRet.f32 %2443, 2
  %2447 = add nuw nsw i32 %2442, 12
  %2448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.f32 %2448, 0
  %2450 = extractvalue %dx.types.ResRet.f32 %2448, 1
  %2451 = extractvalue %dx.types.ResRet.f32 %2448, 2
  %2452 = add nuw nsw i32 %2442, 24
  %2453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.ResRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.ResRet.f32 %2453, 2
  %2457 = add nuw nsw i32 %2442, 36
  %2458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.f32 %2458, 0
  %2460 = fsub fast float %2423, %2444
  %2461 = fsub fast float %2424, %2445
  %2462 = fsub fast float %2425, %2446
  %2463 = fmul fast float %2459, %2460
  %2464 = fmul fast float %2459, %2461
  %2465 = fmul fast float %2459, %2462
  %2466 = call float @dx.op.unary.f32(i32 27, float %2463)  ; Round_ni(value)
  %2467 = call float @dx.op.unary.f32(i32 27, float %2464)  ; Round_ni(value)
  %2468 = call float @dx.op.unary.f32(i32 27, float %2465)  ; Round_ni(value)
  %2469 = fadd fast float %2466, 5.000000e-01
  %2470 = fadd fast float %2467, 5.000000e-01
  %2471 = fadd fast float %2468, 5.000000e-01
  %2472 = fmul fast float %2469, %2449
  %2473 = fmul fast float %2470, %2450
  %2474 = fmul fast float %2471, %2451
  %2475 = shl i32 %49, 2
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = add i32 %2477, 0
  %2479 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2478, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2480 = call float @dx.op.unary.f32(i32 22, float %2472)  ; Frc(value)
  %2481 = call float @dx.op.unary.f32(i32 22, float %2473)  ; Frc(value)
  %2482 = call float @dx.op.unary.f32(i32 22, float %2474)  ; Frc(value)
  %2483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2479, %dx.types.Handle %43, float %2480, float %2481, float %2482, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2484 = extractvalue %dx.types.ResRet.f32 %2483, 0
  %2485 = extractvalue %dx.types.ResRet.f32 %2483, 1
  %2486 = extractvalue %dx.types.ResRet.f32 %2483, 2
  %2487 = fmul fast float %2484, 1.023000e+03
  %2488 = fmul fast float %2485, 1.023000e+03
  %2489 = fmul fast float %2486, 1.023000e+03
  %2490 = fadd fast float %2487, 5.000000e-01
  %2491 = fadd fast float %2488, 5.000000e-01
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = call float @dx.op.unary.f32(i32 27, float %2490)  ; Round_ni(value)
  %2494 = call float @dx.op.unary.f32(i32 27, float %2491)  ; Round_ni(value)
  %2495 = call float @dx.op.unary.f32(i32 27, float %2492)  ; Round_ni(value)
  %2496 = fsub fast float %2463, %2466
  %2497 = fsub fast float %2464, %2467
  %2498 = fsub fast float %2465, %2468
  %2499 = fmul fast float %2496, 7.500000e-01
  %2500 = fmul fast float %2497, 7.500000e-01
  %2501 = fmul fast float %2498, 7.500000e-01
  %2502 = fadd fast float %2466, 1.250000e-01
  %2503 = fadd fast float %2502, %2499
  %2504 = fadd fast float %2503, %2493
  %2505 = fadd fast float %2467, 1.250000e-01
  %2506 = fadd fast float %2505, %2500
  %2507 = fadd fast float %2506, %2494
  %2508 = fadd fast float %2468, 1.250000e-01
  %2509 = fadd fast float %2508, %2501
  %2510 = fadd fast float %2509, %2495
  %2511 = fmul fast float %2504, %2454
  %2512 = fmul fast float %2507, %2455
  %2513 = fmul fast float %2510, %2456
  %2514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.i32 %2514, 0
  %2516 = add i32 %2515, 0
  %2517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2517, %dx.types.Handle %41, float %2511, float %2512, float %2513, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2519 = extractvalue %dx.types.ResRet.f32 %2518, 0
  br label %2520

; <label>:2520                                    ; preds = %2441, %2430
  %2521 = phi float [ %2519, %2441 ], [ -1.000000e+00, %2430 ]
  %2522 = fadd fast float %2521, %2428
  %2523 = call float @dx.op.unary.f32(i32 7, float %2522)  ; Saturate(value)
  br label %2524

; <label>:2524                                    ; preds = %2520, %2418
  %2525 = phi float [ %2523, %2520 ], [ %2428, %2418 ]
  %2526 = fmul fast float %2525, %454
  br label %2527

; <label>:2527                                    ; preds = %2524, %2413
  %2528 = phi float [ %2526, %2524 ], [ %454, %2413 ]
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = and i32 %2530, 256
  %2532 = icmp eq i32 %2531, 0
  br i1 %2532, label %2579, label %2533

; <label>:2533                                    ; preds = %2527
  %2534 = add i32 %48, 432
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = add i32 %2536, 0
  %2538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2539 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2538, %dx.types.Handle %94, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2540 = extractvalue %dx.types.ResRet.f32 %2539, 0
  %2541 = add i32 %48, 132
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = shl i32 %2543, 4
  %2545 = and i32 %2544, 32752
  %2546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2545)  ; LegacyF16ToF32(value)
  %2547 = lshr i32 %2543, 7
  %2548 = and i32 %2547, 32752
  %2549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2548)  ; LegacyF16ToF32(value)
  %2550 = fsub fast float 1.000000e+00, %2528
  %2551 = call float @dx.op.binary.f32(i32 35, float %2550, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2552 = bitcast float %2528 to i32
  %2553 = sitofp i32 %2552 to float
  %2554 = fadd fast float %2553, 0xC1CFBF8940000000
  %2555 = fmul fast float %2549, %2554
  %2556 = fadd fast float %2555, 0x41CFBF8940000000
  %2557 = fptosi float %2556 to i32
  %2558 = bitcast i32 %2557 to float
  %2559 = bitcast float %2551 to i32
  %2560 = sitofp i32 %2559 to float
  %2561 = fadd fast float %2560, 0xC1CFBF8940000000
  %2562 = fmul fast float %2561, %2549
  %2563 = fadd fast float %2562, 0x41CFBF8940000000
  %2564 = fptosi float %2563 to i32
  %2565 = bitcast i32 %2564 to float
  %2566 = fmul fast float %2558, %2546
  %2567 = fmul fast float %2565, %2546
  %2568 = fsub fast float %2551, %2566
  %2569 = fadd fast float %2567, %2551
  %2570 = call float @dx.op.unary.f32(i32 7, float %2568)  ; Saturate(value)
  %2571 = call float @dx.op.unary.f32(i32 7, float %2569)  ; Saturate(value)
  %2572 = fsub fast float %2540, %2570
  %2573 = fsub fast float %2571, %2570
  %2574 = bitcast float %2573 to i32
  %2575 = sub nsw i32 2129859010, %2574
  %2576 = bitcast i32 %2575 to float
  %2577 = fmul fast float %2576, %2572
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  br label %2579

; <label>:2579                                    ; preds = %2533, %2527
  %2580 = phi float [ %2578, %2533 ], [ %2528, %2527 ]
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = and i32 %2582, 128
  %2584 = icmp eq i32 %2583, 0
  br i1 %2584, label %2601, label %2585

; <label>:2585                                    ; preds = %2579
  %2586 = add i32 %48, 416
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = add i32 %2588, 0
  %2590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2590, %dx.types.Handle %94, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2592 = extractvalue %dx.types.ResRet.f32 %2591, 0
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = and i32 %2594, 524288
  %2596 = icmp ne i32 %2595, 0
  %2597 = fcmp fast ogt float %2592, 0x3FE0101020000000
  %2598 = select i1 %2597, float 1.000000e+00, float 0.000000e+00
  %2599 = select i1 %2596, float %2598, float %2592
  %2600 = fmul fast float %2599, %2580
  br label %2601

; <label>:2601                                    ; preds = %2585, %2579
  %2602 = phi float [ %2600, %2585 ], [ %2580, %2579 ]
  %2603 = fcmp fast ult float %2602, 0x3F70101020000000
  br i1 %2603, label %3342, label %2604

; <label>:2604                                    ; preds = %2601
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = and i32 %2606, 16
  %2608 = icmp eq i32 %2607, 0
  br i1 %2608, label %2807, label %2609

; <label>:2609                                    ; preds = %2604
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = add i32 %48, 368
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = add i32 %2614, 0
  %2616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2615, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2616, %dx.types.Handle %93, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2618 = extractvalue %dx.types.ResRet.f32 %2617, 0
  %2619 = extractvalue %dx.types.ResRet.f32 %2617, 1
  %2620 = extractvalue %dx.types.ResRet.f32 %2617, 2
  %2621 = extractvalue %dx.types.ResRet.f32 %2617, 3
  %2622 = and i32 %2611, 255
  %2623 = uitofp i32 %2622 to float
  %2624 = lshr i32 %2611, 8
  %2625 = and i32 %2624, 255
  %2626 = uitofp i32 %2625 to float
  %2627 = fmul fast float %2621, %2623
  %2628 = fadd fast float %2627, %2626
  %2629 = fmul fast float %2628, 0x3F70101000000000
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = and i32 %2631, 512
  %2633 = icmp eq i32 %2632, 0
  br i1 %2633, label %2642, label %2634

; <label>:2634                                    ; preds = %2609
  %2635 = add i32 %48, 448
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = add i32 %2637, 0
  %2639 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2638, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2640 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2639, %dx.types.Handle %94, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2641 = extractvalue %dx.types.ResRet.f32 %2640, 0
  br label %2642

; <label>:2642                                    ; preds = %2634, %2609
  %2643 = phi float [ %2641, %2634 ], [ 1.000000e+00, %2609 ]
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = and i32 %2645, 33554432
  %2647 = icmp eq i32 %2646, 0
  br i1 %2647, label %2754, label %2648

; <label>:2648                                    ; preds = %2642
  %2649 = add i32 %48, 256
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 65535
  %2653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2652)  ; LegacyF16ToF32(value)
  %2654 = lshr i32 %2651, 16
  %2655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2654)  ; LegacyF16ToF32(value)
  %2656 = add i32 %48, 260
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2656, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = and i32 %2658, 65535
  %2660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2659)  ; LegacyF16ToF32(value)
  %2661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2662 = extractvalue %dx.types.ResRet.i32 %2661, 0
  %2663 = lshr i32 %2662, 24
  %2664 = uitofp i32 %2663 to float
  %2665 = fmul fast float %2664, 0x3F70101020000000
  %2666 = and i32 %2662, 255
  %2667 = uitofp i32 %2666 to float
  %2668 = fmul fast float %2667, 0x3F70101020000000
  %2669 = lshr i32 %2662, 8
  %2670 = and i32 %2669, 255
  %2671 = uitofp i32 %2670 to float
  %2672 = fmul fast float %2671, 0x3F70101020000000
  %2673 = lshr i32 %2662, 16
  %2674 = and i32 %2673, 255
  %2675 = uitofp i32 %2674 to float
  %2676 = fmul fast float %2675, 0x3F70101020000000
  %2677 = add i32 %48, 252
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = lshr i32 %2679, 24
  %2681 = uitofp i32 %2680 to float
  %2682 = fmul fast float %2681, 0x3F70101020000000
  %2683 = and i32 %2679, 255
  %2684 = uitofp i32 %2683 to float
  %2685 = fmul fast float %2684, 0x3F70101020000000
  %2686 = lshr i32 %2679, 8
  %2687 = and i32 %2686, 255
  %2688 = uitofp i32 %2687 to float
  %2689 = fmul fast float %2688, 0x3F70101020000000
  %2690 = lshr i32 %2679, 16
  %2691 = and i32 %2690, 255
  %2692 = uitofp i32 %2691 to float
  %2693 = fmul fast float %2692, 0x3F70101020000000
  %2694 = bitcast float %2618 to i32
  %2695 = ashr i32 %2694, 1
  %2696 = sub nsw i32 1597463174, %2695
  %2697 = bitcast i32 %2696 to float
  %2698 = fmul fast float %2618, 5.000000e-01
  %2699 = fmul fast float %2697, %2697
  %2700 = fmul fast float %2699, %2698
  %2701 = fsub fast float 1.500000e+00, %2700
  %2702 = fmul fast float %2697, %2618
  %2703 = fmul fast float %2702, %2701
  %2704 = bitcast float %2619 to i32
  %2705 = ashr i32 %2704, 1
  %2706 = sub nsw i32 1597463174, %2705
  %2707 = bitcast i32 %2706 to float
  %2708 = fmul fast float %2619, 5.000000e-01
  %2709 = fmul fast float %2707, %2707
  %2710 = fmul fast float %2709, %2708
  %2711 = fsub fast float 1.500000e+00, %2710
  %2712 = fmul fast float %2707, %2619
  %2713 = fmul fast float %2712, %2711
  %2714 = bitcast float %2620 to i32
  %2715 = ashr i32 %2714, 1
  %2716 = sub nsw i32 1597463174, %2715
  %2717 = bitcast i32 %2716 to float
  %2718 = fmul fast float %2620, 5.000000e-01
  %2719 = fmul fast float %2717, %2717
  %2720 = fmul fast float %2719, %2718
  %2721 = fsub fast float 1.500000e+00, %2720
  %2722 = fmul fast float %2717, %2620
  %2723 = fmul fast float %2722, %2721
  %2724 = fsub fast float %2703, %2685
  %2725 = fsub fast float %2713, %2689
  %2726 = fsub fast float %2723, %2693
  %2727 = fmul fast float %2724, %2653
  %2728 = fmul fast float %2725, %2655
  %2729 = fmul fast float %2726, %2660
  %2730 = fadd fast float %2727, %2668
  %2731 = fadd fast float %2728, %2672
  %2732 = fadd fast float %2729, %2676
  %2733 = call float @dx.op.unary.f32(i32 7, float %2730)  ; Saturate(value)
  %2734 = call float @dx.op.unary.f32(i32 7, float %2731)  ; Saturate(value)
  %2735 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2736 = fmul fast float %2733, %2733
  %2737 = fmul fast float %2734, %2734
  %2738 = fmul fast float %2735, %2735
  %2739 = fsub fast float %2736, %2618
  %2740 = fsub fast float %2737, %2619
  %2741 = fsub fast float %2738, %2620
  %2742 = fmul fast float %2739, %2643
  %2743 = fmul fast float %2740, %2643
  %2744 = fmul fast float %2741, %2643
  %2745 = fadd fast float %2742, %2618
  %2746 = fadd fast float %2743, %2619
  %2747 = fadd fast float %2744, %2620
  %2748 = fadd fast float %2665, %2629
  %2749 = fsub fast float %2748, %2682
  %2750 = call float @dx.op.unary.f32(i32 7, float %2749)  ; Saturate(value)
  %2751 = fsub fast float %2750, %2629
  %2752 = fmul fast float %2751, %2643
  %2753 = fadd fast float %2752, %2629
  br label %2807

; <label>:2754                                    ; preds = %2642
  %2755 = and i32 %2645, 134217728
  %2756 = icmp eq i32 %2755, 0
  br i1 %2756, label %2791, label %2757

; <label>:2757                                    ; preds = %2754
  %2758 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %2759 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %2760 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %2761 = fadd fast float %2758, -5.000000e-01
  %2762 = fadd fast float %2759, -5.000000e-01
  %2763 = fadd fast float %2760, -5.000000e-01
  %2764 = fmul fast float %2761, %2643
  %2765 = fmul fast float %2762, %2643
  %2766 = fmul fast float %2763, %2643
  %2767 = fadd fast float %2764, 5.000000e-01
  %2768 = fadd fast float %2765, 5.000000e-01
  %2769 = fadd fast float %2766, 5.000000e-01
  %2770 = call float @dx.op.unary.f32(i32 24, float %2618)  ; Sqrt(value)
  %2771 = call float @dx.op.unary.f32(i32 24, float %2619)  ; Sqrt(value)
  %2772 = call float @dx.op.unary.f32(i32 24, float %2620)  ; Sqrt(value)
  %2773 = fmul fast float %2767, 2.000000e+00
  %2774 = fsub fast float 1.000000e+00, %2773
  %2775 = fmul fast float %2774, %2770
  %2776 = fadd fast float %2775, %2773
  %2777 = fmul fast float %2776, %2770
  %2778 = fmul fast float %2768, 2.000000e+00
  %2779 = fsub fast float 1.000000e+00, %2778
  %2780 = fmul fast float %2779, %2771
  %2781 = fadd fast float %2780, %2778
  %2782 = fmul fast float %2781, %2771
  %2783 = fmul fast float %2769, 2.000000e+00
  %2784 = fsub fast float 1.000000e+00, %2783
  %2785 = fmul fast float %2784, %2772
  %2786 = fadd fast float %2785, %2783
  %2787 = fmul fast float %2786, %2772
  %2788 = fmul fast float %2777, %2777
  %2789 = fmul fast float %2782, %2782
  %2790 = fmul fast float %2787, %2787
  br label %2807

; <label>:2791                                    ; preds = %2754
  %2792 = fmul fast float %329, %329
  %2793 = fmul fast float %333, %333
  %2794 = fmul fast float %337, %337
  %2795 = fadd fast float %2792, -1.000000e+00
  %2796 = fadd fast float %2793, -1.000000e+00
  %2797 = fadd fast float %2794, -1.000000e+00
  %2798 = fmul fast float %2643, %2795
  %2799 = fmul fast float %2643, %2796
  %2800 = fmul fast float %2643, %2797
  %2801 = fadd fast float %2798, 1.000000e+00
  %2802 = fadd fast float %2799, 1.000000e+00
  %2803 = fadd fast float %2800, 1.000000e+00
  %2804 = fmul fast float %2801, %2618
  %2805 = fmul fast float %2802, %2619
  %2806 = fmul fast float %2803, %2620
  br label %2807

; <label>:2807                                    ; preds = %2791, %2757, %2648, %2604
  %2808 = phi float [ %2753, %2648 ], [ %2629, %2757 ], [ %2629, %2791 ], [ 0x3FA23C0BE0000000, %2604 ]
  %2809 = phi float [ %2745, %2648 ], [ %2788, %2757 ], [ %2804, %2791 ], [ 1.000000e+00, %2604 ]
  %2810 = phi float [ %2746, %2648 ], [ %2789, %2757 ], [ %2805, %2791 ], [ 1.000000e+00, %2604 ]
  %2811 = phi float [ %2747, %2648 ], [ %2790, %2757 ], [ %2806, %2791 ], [ 1.000000e+00, %2604 ]
  %2812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2813 = extractvalue %dx.types.CBufRet.i32 %2812, 1
  %2814 = and i32 %2813, 1
  %2815 = icmp ne i32 %2814, 0
  %2816 = add i32 %48, 356
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = and i32 %2818, 32
  %2820 = icmp ne i32 %2819, 0
  %2821 = and i1 %2815, %2820
  %2822 = select i1 %2821, float 1.000000e+00, float %2809
  %2823 = select i1 %2821, float 0x3FD3333340000000, float %2810
  %2824 = select i1 %2821, float 0x3FD3333340000000, float %2811
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = and i32 %2826, 32
  %2828 = icmp eq i32 %2827, 0
  br i1 %2828, label %2901, label %2829

; <label>:2829                                    ; preds = %2807
  %2830 = add i32 %48, 124
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = add i32 %48, 384
  %2834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %2835 = extractvalue %dx.types.ResRet.i32 %2834, 0
  %2836 = add i32 %2835, 0
  %2837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2836, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2838 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2837, %dx.types.Handle %93, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2839 = extractvalue %dx.types.ResRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.ResRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.ResRet.f32 %2838, 2
  %2842 = extractvalue %dx.types.ResRet.f32 %2838, 3
  %2843 = and i32 %2832, 255
  %2844 = uitofp i32 %2843 to float
  %2845 = lshr i32 %2832, 8
  %2846 = and i32 %2845, 255
  %2847 = uitofp i32 %2846 to float
  %2848 = lshr i32 %2832, 16
  %2849 = and i32 %2848, 255
  %2850 = uitofp i32 %2849 to float
  %2851 = fmul fast float %2850, 0x3F70101000000000
  %2852 = fmul fast float %2839, %2844
  %2853 = fadd fast float %2852, %2847
  %2854 = fmul fast float %2853, 0x3F70101000000000
  %2855 = fadd fast float %2840, -5.000000e-01
  %2856 = fadd fast float %2842, -5.000000e-01
  %2857 = fmul fast float %2855, %2851
  %2858 = fmul fast float %2856, %2851
  %2859 = fadd fast float %2857, 5.000000e-01
  %2860 = fadd fast float %2858, 5.000000e-01
  %2861 = fmul fast float %2859, 2.000000e+00
  %2862 = fadd fast float %2861, -1.000000e+00
  %2863 = fmul fast float %2860, 2.000000e+00
  %2864 = fadd fast float %2863, -1.000000e+00
  %2865 = fadd fast float %2862, %2864
  %2866 = fmul fast float %2865, 5.000000e-01
  %2867 = fsub fast float %2862, %2864
  %2868 = fmul fast float %2867, 5.000000e-01
  %2869 = call float @dx.op.unary.f32(i32 6, float %2866)  ; FAbs(value)
  %2870 = fsub fast float 1.000000e+00, %2869
  %2871 = call float @dx.op.unary.f32(i32 6, float %2868)  ; FAbs(value)
  %2872 = fsub fast float %2870, %2871
  %2873 = call float @dx.op.dot3.f32(i32 55, float %2866, float %2868, float %2872, float %2866, float %2868, float %2872)  ; Dot3(ax,ay,az,bx,by,bz)
  %2874 = call float @dx.op.unary.f32(i32 25, float %2873)  ; Rsqrt(value)
  %2875 = fmul fast float %2866, %2874
  %2876 = fmul fast float %2868, %2874
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = and i32 %2878, 67108864
  %2880 = icmp eq i32 %2879, 0
  br i1 %2880, label %2897, label %2881

; <label>:2881                                    ; preds = %2829
  %2882 = add i32 %48, 312
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = and i32 %2884, 65535
  %2886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2885)  ; LegacyF16ToF32(value)
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = and i32 %2888, 65535
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = lshr i32 %2884, 16
  %2892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2891)  ; LegacyF16ToF32(value)
  %2893 = fsub fast float %2854, %2892
  %2894 = fmul fast float %2893, %2886
  %2895 = fadd fast float %2894, %2890
  %2896 = call float @dx.op.unary.f32(i32 7, float %2895)  ; Saturate(value)
  br label %2897

; <label>:2897                                    ; preds = %2881, %2829
  %2898 = phi float [ %2896, %2881 ], [ %2854, %2829 ]
  %2899 = call float @dx.op.dot2.f32(i32 54, float %2875, float %2876, float %2318, float %2319)  ; Dot2(ax,ay,bx,by)
  %2900 = call float @dx.op.dot2.f32(i32 54, float %2875, float %2876, float %2320, float %2321)  ; Dot2(ax,ay,bx,by)
  br label %2901

; <label>:2901                                    ; preds = %2897, %2807
  %2902 = phi float [ %2898, %2897 ], [ 0x3FD6666660000000, %2807 ]
  %2903 = phi float [ %2899, %2897 ], [ 0.000000e+00, %2807 ]
  %2904 = phi float [ %2900, %2897 ], [ 0.000000e+00, %2807 ]
  %2905 = phi float [ %2841, %2897 ], [ 1.000000e+00, %2807 ]
  %2906 = add i32 %48, 192
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = lshr i32 %2908, 22
  %2910 = shl nuw nsw i32 %2909, 5
  %2911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2910)  ; LegacyF16ToF32(value)
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = and i32 %2913, 64
  %2915 = icmp eq i32 %2914, 0
  br i1 %2915, label %2949, label %2916

; <label>:2916                                    ; preds = %2901
  %2917 = add i32 %48, 400
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2917, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = add i32 %2919, 0
  %2921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = and i32 %2923, 131072
  %2925 = icmp eq i32 %2924, 0
  %2926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2921, %dx.types.Handle %93, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2927 = extractvalue %dx.types.ResRet.f32 %2926, 0
  %2928 = extractvalue %dx.types.ResRet.f32 %2926, 1
  %2929 = extractvalue %dx.types.ResRet.f32 %2926, 2
  %2930 = fmul fast float %2927, %317
  %2931 = fmul fast float %2928, %320
  %2932 = fmul fast float %2929, %323
  br i1 %2925, label %2939, label %2933

; <label>:2933                                    ; preds = %2916
  %2934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2935 = extractvalue %dx.types.CBufRet.f32 %2934, 0
  %2936 = fmul fast float %2935, %2930
  %2937 = fmul fast float %2935, %2931
  %2938 = fmul fast float %2935, %2932
  br label %2939

; <label>:2939                                    ; preds = %2933, %2916
  %2940 = phi float [ %2936, %2933 ], [ %2930, %2916 ]
  %2941 = phi float [ %2937, %2933 ], [ %2931, %2916 ]
  %2942 = phi float [ %2938, %2933 ], [ %2932, %2916 ]
  %2943 = fmul fast float %2940, %2911
  %2944 = select i1 %213, float %2943, float %2940
  %2945 = call float @dx.op.dot3.f32(i32 55, float %2944, float %2941, float %2942, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2946 = select i1 %213, float 0.000000e+00, float %2940
  %2947 = select i1 %213, float %2945, float %2941
  %2948 = select i1 %213, float 0.000000e+00, float %2942
  br label %2949

; <label>:2949                                    ; preds = %2939, %2901
  %2950 = phi float [ %2946, %2939 ], [ 0.000000e+00, %2901 ]
  %2951 = phi float [ %2947, %2939 ], [ 0.000000e+00, %2901 ]
  %2952 = phi float [ %2948, %2939 ], [ 0.000000e+00, %2901 ]
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = and i32 %2954, 1024
  %2956 = icmp eq i32 %2955, 0
  br i1 %2956, label %2987, label %2957

; <label>:2957                                    ; preds = %2949
  %2958 = add i32 %48, 184
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %2960, 255
  %2962 = uitofp i32 %2961 to float
  %2963 = fmul fast float %2962, 0x3F70101020000000
  %2964 = lshr i32 %2960, 8
  %2965 = and i32 %2964, 255
  %2966 = uitofp i32 %2965 to float
  %2967 = fmul fast float %2966, 0x3F70101020000000
  %2968 = lshr i32 %2960, 16
  %2969 = and i32 %2968, 255
  %2970 = uitofp i32 %2969 to float
  %2971 = fmul fast float %2970, 0x3F70101020000000
  %2972 = fmul fast float %2963, %2963
  %2973 = fmul fast float %2967, %2967
  %2974 = fmul fast float %2971, %2971
  %2975 = add i32 %48, 464
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = add i32 %2977, 0
  %2979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2980 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2979, %dx.types.Handle %94, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2981 = extractvalue %dx.types.ResRet.f32 %2980, 0
  %2982 = extractvalue %dx.types.ResRet.f32 %2980, 1
  %2983 = extractvalue %dx.types.ResRet.f32 %2980, 2
  %2984 = fmul fast float %2972, %2981
  %2985 = fmul fast float %2973, %2982
  %2986 = fmul fast float %2974, %2983
  br label %2987

; <label>:2987                                    ; preds = %2957, %2949
  %2988 = phi float [ %2984, %2957 ], [ 0.000000e+00, %2949 ]
  %2989 = phi float [ %2985, %2957 ], [ 0.000000e+00, %2949 ]
  %2990 = phi float [ %2986, %2957 ], [ 0.000000e+00, %2949 ]
  %2991 = fcmp fast ogt float %2988, 0.000000e+00
  %2992 = fcmp fast ogt float %2989, 0.000000e+00
  %2993 = fcmp fast ogt float %2990, 0.000000e+00
  %2994 = call float @dx.op.unary.f32(i32 23, float %2988)  ; Log(value)
  %2995 = call float @dx.op.unary.f32(i32 23, float %2989)  ; Log(value)
  %2996 = call float @dx.op.unary.f32(i32 23, float %2990)  ; Log(value)
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = lshr i32 %2998, 7
  %3000 = and i32 %2999, 32752
  %3001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3000)  ; LegacyF16ToF32(value)
  %3002 = fmul fast float %2994, 0xBFE62E4300000000
  %3003 = fmul fast float %3002, %3001
  %3004 = fmul fast float %2995, 0xBFE62E4300000000
  %3005 = fmul fast float %3004, %3001
  %3006 = fmul fast float %2996, 0xBFE62E4300000000
  %3007 = fmul fast float %3006, %3001
  %3008 = select i1 %2991, float %3003, float 1.270000e+02
  %3009 = select i1 %2992, float %3005, float 1.270000e+02
  %3010 = select i1 %2993, float %3007, float 1.270000e+02
  %3011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3012 = extractvalue %dx.types.ResRet.i32 %3011, 0
  %3013 = and i32 %3012, 10240
  %3014 = icmp eq i32 %3013, 0
  br i1 %3014, label %3059, label %3015

; <label>:3015                                    ; preds = %2987
  %3016 = add i32 %48, 480
  %3017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3016, i32 undef)  ; BufferLoad(srv,index,wot)
  %3018 = extractvalue %dx.types.ResRet.i32 %3017, 0
  %3019 = add i32 %3018, 0
  %3020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3021 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3020, %dx.types.Handle %94, float %2414, float %2415, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3022 = extractvalue %dx.types.ResRet.f32 %3021, 1
  %3023 = extractvalue %dx.types.ResRet.f32 %3021, 3
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = and i32 %3025, 1048576
  %3027 = icmp ne i32 %3026, 0
  %3028 = and i32 %3025, 8192
  %3029 = icmp eq i32 %3028, 0
  br i1 %3029, label %3045, label %3030

; <label>:3030                                    ; preds = %3015
  %3031 = extractvalue %dx.types.ResRet.f32 %3021, 2
  %3032 = select i1 %3027, float %3031, float %3022
  %3033 = extractvalue %dx.types.ResRet.f32 %3021, 0
  %3034 = select i1 %3027, float %3033, float %3022
  %3035 = add i32 %48, 128
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3035, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = lshr i32 %3037, 16
  %3039 = and i32 %3038, 255
  %3040 = uitofp i32 %3039 to float
  %3041 = fmul fast float %3040, 0x3F80101020000000
  %3042 = fmul fast float %3041, %3034
  %3043 = fmul fast float %3041, %3022
  %3044 = fmul fast float %3041, %3032
  br label %3045

; <label>:3045                                    ; preds = %3030, %3015
  %3046 = phi float [ %3042, %3030 ], [ 0.000000e+00, %3015 ]
  %3047 = phi float [ %3043, %3030 ], [ 0.000000e+00, %3015 ]
  %3048 = phi float [ %3044, %3030 ], [ 0.000000e+00, %3015 ]
  %3049 = and i32 %3025, 2048
  %3050 = icmp eq i32 %3049, 0
  br i1 %3050, label %3059, label %3051

; <label>:3051                                    ; preds = %3045
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = shl i32 %3053, 4
  %3055 = and i32 %3054, 32752
  %3056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3055)  ; LegacyF16ToF32(value)
  %3057 = fmul fast float %3056, %3023
  %3058 = call float @dx.op.binary.f32(i32 35, float %3057, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3059

; <label>:3059                                    ; preds = %3051, %3045, %2987
  %3060 = phi float [ %3046, %3051 ], [ %3046, %3045 ], [ 0.000000e+00, %2987 ]
  %3061 = phi float [ %3047, %3051 ], [ %3047, %3045 ], [ 0.000000e+00, %2987 ]
  %3062 = phi float [ %3048, %3051 ], [ %3048, %3045 ], [ 0.000000e+00, %2987 ]
  %3063 = phi float [ %3058, %3051 ], [ 0x3F70101020000000, %3045 ], [ 0x3F70101020000000, %2987 ]
  %3064 = add i32 %48, 128
  %3065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3064, i32 undef)  ; BufferLoad(srv,index,wot)
  %3066 = extractvalue %dx.types.ResRet.i32 %3065, 0
  %3067 = and i32 %3066, 255
  %3068 = uitofp i32 %3067 to float
  %3069 = lshr i32 %3066, 8
  %3070 = and i32 %3069, 255
  %3071 = uitofp i32 %3070 to float
  %3072 = call float @dx.op.dot3.f32(i32 55, float %2822, float %2823, float %2824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3073 = fmul fast float %3071, %3072
  %3074 = fadd fast float %3073, %3068
  %3075 = fmul fast float %3074, 0x3F70101020000000
  %3076 = call float @dx.op.unary.f32(i32 7, float %3075)  ; Saturate(value)
  br i1 %2306, label %3077, label %3112

; <label>:3077                                    ; preds = %3059
  %3078 = fmul fast float %3063, 2.000000e+00
  %3079 = fcmp fast olt float %3008, 1.270000e+02
  %3080 = fcmp fast olt float %3009, 1.270000e+02
  %3081 = fcmp fast olt float %3010, 1.270000e+02
  %3082 = fmul fast float %3008, 0xBFF7154760000000
  %3083 = fmul fast float %3082, %3078
  %3084 = fmul fast float %3009, 0xBFF7154760000000
  %3085 = fmul fast float %3084, %3078
  %3086 = fmul fast float %3010, 0xBFF7154760000000
  %3087 = fmul fast float %3086, %3078
  %3088 = call float @dx.op.unary.f32(i32 21, float %3083)  ; Exp(value)
  %3089 = call float @dx.op.unary.f32(i32 21, float %3085)  ; Exp(value)
  %3090 = call float @dx.op.unary.f32(i32 21, float %3087)  ; Exp(value)
  %3091 = call float @dx.op.unary.f32(i32 7, float %3088)  ; Saturate(value)
  %3092 = call float @dx.op.unary.f32(i32 7, float %3089)  ; Saturate(value)
  %3093 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3094 = fadd fast float %3091, -1.000000e+00
  %3095 = select i1 %3079, float %3094, float -1.000000e+00
  %3096 = fadd fast float %3092, -1.000000e+00
  %3097 = select i1 %3080, float %3096, float -1.000000e+00
  %3098 = fadd fast float %3093, -1.000000e+00
  %3099 = select i1 %3081, float %3098, float -1.000000e+00
  %3100 = fmul fast float %3095, %2602
  %3101 = fmul fast float %3097, %2602
  %3102 = fmul fast float %3099, %2602
  %3103 = fadd fast float %3100, 1.000000e+00
  %3104 = fadd fast float %3101, 1.000000e+00
  %3105 = fadd fast float %3102, 1.000000e+00
  %3106 = fmul fast float %3103, %2288
  %3107 = fmul fast float %3104, %2289
  %3108 = fmul fast float %3105, %2290
  %3109 = fmul fast float %3103, %2291
  %3110 = fmul fast float %3104, %2292
  %3111 = fmul fast float %3105, %2293
  br label %3112

; <label>:3112                                    ; preds = %3077, %3059
  %3113 = phi float [ %3106, %3077 ], [ %2288, %3059 ]
  %3114 = phi float [ %3107, %3077 ], [ %2289, %3059 ]
  %3115 = phi float [ %3108, %3077 ], [ %2290, %3059 ]
  %3116 = phi float [ %3109, %3077 ], [ %2291, %3059 ]
  %3117 = phi float [ %3110, %3077 ], [ %2292, %3059 ]
  %3118 = phi float [ %3111, %3077 ], [ %2293, %3059 ]
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = and i32 %3120, 3
  %3122 = icmp eq i32 %3121, 3
  br i1 %3122, label %3201, label %3123

; <label>:3123                                    ; preds = %3112
  %3124 = and i32 %3120, 16
  %3125 = icmp ne i32 %3124, 0
  %3126 = select i1 %3125, float %2602, float 0.000000e+00
  %3127 = icmp eq i32 %3121, 0
  br i1 %3127, label %3128, label %3156

; <label>:3128                                    ; preds = %3123
  %3129 = and i32 %3120, 64
  %3130 = icmp ne i32 %3129, 0
  %3131 = select i1 %3130, float %2602, float 0.000000e+00
  %3132 = fsub fast float %2822, %3113
  %3133 = fsub fast float %2823, %3114
  %3134 = fsub fast float %2824, %3115
  %3135 = fmul fast float %3126, %3132
  %3136 = fmul fast float %3126, %3133
  %3137 = fmul fast float %3126, %3134
  %3138 = fadd fast float %3135, %3113
  %3139 = fadd fast float %3136, %3114
  %3140 = fadd fast float %3137, %3115
  %3141 = fsub fast float %2808, %2300
  %3142 = fmul fast float %3126, %3141
  %3143 = fadd fast float %3142, %2300
  %3144 = fsub fast float %2950, %3116
  %3145 = fsub fast float %2951, %3117
  %3146 = fsub fast float %2952, %3118
  %3147 = fmul fast float %3131, %3144
  %3148 = fmul fast float %3131, %3145
  %3149 = fmul fast float %3131, %3146
  %3150 = fadd fast float %3147, %3116
  %3151 = fadd fast float %3148, %3117
  %3152 = fadd fast float %3149, %3118
  %3153 = fsub fast float %3076, %2304
  %3154 = fmul fast float %3126, %3153
  %3155 = fadd fast float %3154, %2304
  br label %3201

; <label>:3156                                    ; preds = %3123
  %3157 = icmp eq i32 %3121, 1
  br i1 %3157, label %3158, label %3171

; <label>:3158                                    ; preds = %3156
  %3159 = fadd fast float %2822, -1.000000e+00
  %3160 = fadd fast float %2823, -1.000000e+00
  %3161 = fadd fast float %2824, -1.000000e+00
  %3162 = fmul fast float %3126, %3159
  %3163 = fmul fast float %3126, %3160
  %3164 = fmul fast float %3126, %3161
  %3165 = fadd fast float %3162, 1.000000e+00
  %3166 = fadd fast float %3163, 1.000000e+00
  %3167 = fadd fast float %3164, 1.000000e+00
  %3168 = fmul fast float %3165, %3113
  %3169 = fmul fast float %3166, %3114
  %3170 = fmul fast float %3167, %3115
  br label %3201

; <label>:3171                                    ; preds = %3156
  %3172 = icmp eq i32 %3121, 2
  br i1 %3172, label %3173, label %3201

; <label>:3173                                    ; preds = %3171
  %3174 = call float @dx.op.unary.f32(i32 24, float %2822)  ; Sqrt(value)
  %3175 = call float @dx.op.unary.f32(i32 24, float %2823)  ; Sqrt(value)
  %3176 = call float @dx.op.unary.f32(i32 24, float %2824)  ; Sqrt(value)
  %3177 = fadd fast float %3174, -5.000000e-01
  %3178 = fadd fast float %3175, -5.000000e-01
  %3179 = fadd fast float %3176, -5.000000e-01
  %3180 = fmul fast float %3177, %3126
  %3181 = fmul fast float %3178, %3126
  %3182 = fmul fast float %3179, %3126
  %3183 = fadd fast float %3180, 5.000000e-01
  %3184 = fadd fast float %3181, 5.000000e-01
  %3185 = fadd fast float %3182, 5.000000e-01
  %3186 = fmul fast float %3183, 2.000000e+00
  %3187 = fsub fast float 1.000000e+00, %3186
  %3188 = fmul fast float %3187, %3113
  %3189 = fadd fast float %3188, %3186
  %3190 = fmul fast float %3189, %3113
  %3191 = fmul fast float %3184, 2.000000e+00
  %3192 = fsub fast float 1.000000e+00, %3191
  %3193 = fmul fast float %3192, %3114
  %3194 = fadd fast float %3193, %3191
  %3195 = fmul fast float %3194, %3114
  %3196 = fmul fast float %3185, 2.000000e+00
  %3197 = fsub fast float 1.000000e+00, %3196
  %3198 = fmul fast float %3197, %3115
  %3199 = fadd fast float %3198, %3196
  %3200 = fmul fast float %3199, %3115
  br label %3201

; <label>:3201                                    ; preds = %3173, %3171, %3158, %3128, %3112
  %3202 = phi float [ %3113, %3112 ], [ %3190, %3173 ], [ %3113, %3171 ], [ %3168, %3158 ], [ %3138, %3128 ]
  %3203 = phi float [ %3114, %3112 ], [ %3195, %3173 ], [ %3114, %3171 ], [ %3169, %3158 ], [ %3139, %3128 ]
  %3204 = phi float [ %3115, %3112 ], [ %3200, %3173 ], [ %3115, %3171 ], [ %3170, %3158 ], [ %3140, %3128 ]
  %3205 = phi float [ %3116, %3112 ], [ %3116, %3173 ], [ %3116, %3171 ], [ %3116, %3158 ], [ %3150, %3128 ]
  %3206 = phi float [ %3117, %3112 ], [ %3117, %3173 ], [ %3117, %3171 ], [ %3117, %3158 ], [ %3151, %3128 ]
  %3207 = phi float [ %3118, %3112 ], [ %3118, %3173 ], [ %3118, %3171 ], [ %3118, %3158 ], [ %3152, %3128 ]
  %3208 = phi float [ %2300, %3112 ], [ %2300, %3173 ], [ %2300, %3171 ], [ %2300, %3158 ], [ %3143, %3128 ]
  %3209 = phi float [ %2304, %3112 ], [ %2304, %3173 ], [ %2304, %3171 ], [ %2304, %3158 ], [ %3155, %3128 ]
  %3210 = and i32 %3120, 12
  %3211 = icmp eq i32 %3210, 12
  br i1 %3211, label %3342, label %3212

; <label>:3212                                    ; preds = %3201
  %3213 = and i32 %3120, 2097184
  %3214 = icmp eq i32 %3213, 2097184
  %3215 = select i1 %3214, float %2602, float 0.000000e+00
  %3216 = and i32 %3120, 4194336
  %3217 = icmp eq i32 %3216, 4194336
  %3218 = select i1 %3217, float %2602, float 0.000000e+00
  %3219 = and i32 %3120, 8388640
  %3220 = icmp eq i32 %3219, 8388640
  %3221 = select i1 %3220, float %2602, float 0.000000e+00
  %3222 = and i32 %3120, 1024
  %3223 = icmp ne i32 %3222, 0
  %3224 = select i1 %3223, float %2602, float 0.000000e+00
  %3225 = and i32 %3120, 2048
  %3226 = icmp ne i32 %3225, 0
  %3227 = select i1 %3226, float %2602, float 0.000000e+00
  %3228 = and i32 %3120, 8192
  %3229 = icmp ne i32 %3228, 0
  %3230 = select i1 %3229, float %2602, float 0.000000e+00
  %3231 = icmp eq i32 %3210, 0
  br i1 %3231, label %3232, label %3266

; <label>:3232                                    ; preds = %3212
  %3233 = fsub fast float %2903, %2286
  %3234 = fsub fast float %2904, %2287
  %3235 = fmul fast float %3215, %3233
  %3236 = fmul fast float %3215, %3234
  %3237 = fadd fast float %3235, %2286
  %3238 = fadd fast float %3236, %2287
  %3239 = fsub fast float %2905, %2302
  %3240 = fmul fast float %3218, %3239
  %3241 = fadd fast float %3240, %2302
  %3242 = fsub fast float %2902, %2301
  %3243 = fmul fast float %3221, %3242
  %3244 = fadd fast float %3243, %2301
  %3245 = fsub fast float %3008, %2297
  %3246 = fsub fast float %3009, %2298
  %3247 = fsub fast float %3010, %2299
  %3248 = fmul fast float %3224, %3245
  %3249 = fmul fast float %3224, %3246
  %3250 = fmul fast float %3224, %3247
  %3251 = fadd fast float %3248, %2297
  %3252 = fadd fast float %3249, %2298
  %3253 = fadd fast float %3250, %2299
  %3254 = fsub fast float %3063, %2303
  %3255 = fmul fast float %3227, %3254
  %3256 = fadd fast float %3255, %2303
  %3257 = fsub fast float %3060, %2294
  %3258 = fsub fast float %3061, %2295
  %3259 = fsub fast float %3062, %2296
  %3260 = fmul fast float %3230, %3257
  %3261 = fmul fast float %3230, %3258
  %3262 = fmul fast float %3230, %3259
  %3263 = fadd fast float %3260, %2294
  %3264 = fadd fast float %3261, %2295
  %3265 = fadd fast float %3262, %2296
  br label %3342

; <label>:3266                                    ; preds = %3212
  %3267 = icmp eq i32 %3210, 4
  br i1 %3267, label %3268, label %3314

; <label>:3268                                    ; preds = %3266
  %3269 = fmul fast float %3215, %2903
  %3270 = fmul fast float %3215, %2904
  %3271 = fadd fast float %3269, %2286
  %3272 = fadd fast float %3270, %2287
  %3273 = call float @dx.op.binary.f32(i32 36, float %2302, float %2905)  ; FMin(a,b)
  %3274 = fsub fast float %3273, %2302
  %3275 = fmul fast float %3274, %3218
  %3276 = fadd fast float %3275, %2302
  %3277 = fadd fast float %2902, %2301
  %3278 = fmul fast float %3277, 0x3FF337FAE0000000
  %3279 = fmul fast float %2301, %2301
  %3280 = fmul fast float %2902, %2902
  %3281 = fadd fast float %3280, %3279
  %3282 = fmul fast float %3281, 0x3FE5152B00000000
  %3283 = fmul fast float %2301, 0xBFCC1F85E0000000
  %3284 = fmul fast float %3283, %2902
  %3285 = fadd fast float %3284, 0xBFE1363700000000
  %3286 = fadd fast float %3285, %3278
  %3287 = fsub fast float %3286, %3282
  %3288 = fmul fast float %3277, 0x3FBA6F0D00000000
  %3289 = fmul fast float %3281, 0x3FD0432880000000
  %3290 = fmul fast float %2301, 0xBFEF110800000000
  %3291 = fmul fast float %3290, %2902
  %3292 = fadd fast float %3291, 1.000000e+00
  %3293 = fsub fast float %3292, %3288
  %3294 = fadd fast float %3293, %3289
  %3295 = fdiv fast float %3287, %3294
  %3296 = call float @dx.op.unary.f32(i32 7, float %3295)  ; Saturate(value)
  %3297 = fsub fast float %3296, %2301
  %3298 = fmul fast float %3297, %3221
  %3299 = fadd fast float %3298, %2301
  %3300 = fmul fast float %3224, %3008
  %3301 = fmul fast float %3224, %3009
  %3302 = fmul fast float %3224, %3010
  %3303 = fadd fast float %3300, %2297
  %3304 = fadd fast float %3301, %2298
  %3305 = fadd fast float %3302, %2299
  %3306 = fmul fast float %3227, %3063
  %3307 = fadd fast float %3306, %2303
  %3308 = fmul fast float %3230, %3060
  %3309 = fmul fast float %3230, %3061
  %3310 = fmul fast float %3230, %3062
  %3311 = fadd fast float %3308, %2294
  %3312 = fadd fast float %3309, %2295
  %3313 = fadd fast float %3310, %2296
  br label %3342

; <label>:3314                                    ; preds = %3266
  %3315 = icmp eq i32 %3210, 8
  br i1 %3315, label %3316, label %3342

; <label>:3316                                    ; preds = %3314
  %3317 = fmul fast float %3215, %2903
  %3318 = fmul fast float %3215, %2904
  %3319 = fadd fast float %3317, %2286
  %3320 = fadd fast float %3318, %2287
  %3321 = call float @dx.op.binary.f32(i32 36, float %2302, float %2905)  ; FMin(a,b)
  %3322 = fsub fast float %3321, %2302
  %3323 = fmul fast float %3322, %3218
  %3324 = fadd fast float %3323, %2302
  %3325 = fsub fast float %2902, %2301
  %3326 = fmul fast float %3221, %3325
  %3327 = fadd fast float %3326, %2301
  %3328 = fmul fast float %3224, %3008
  %3329 = fmul fast float %3224, %3009
  %3330 = fmul fast float %3224, %3010
  %3331 = fadd fast float %3328, %2297
  %3332 = fadd fast float %3329, %2298
  %3333 = fadd fast float %3330, %2299
  %3334 = fmul fast float %3227, %3063
  %3335 = fadd fast float %3334, %2303
  %3336 = fmul fast float %3230, %3060
  %3337 = fmul fast float %3230, %3061
  %3338 = fmul fast float %3230, %3062
  %3339 = fadd fast float %3336, %2294
  %3340 = fadd fast float %3337, %2295
  %3341 = fadd fast float %3338, %2296
  br label %3342

; <label>:3342                                    ; preds = %3316, %3314, %3268, %3232, %3201, %2601, %2305, %2285
  %3343 = phi float [ %2286, %3201 ], [ %2286, %2601 ], [ %2286, %2285 ], [ %3319, %3316 ], [ %2286, %3314 ], [ %3271, %3268 ], [ %3237, %3232 ], [ %2286, %2305 ]
  %3344 = phi float [ %2287, %3201 ], [ %2287, %2601 ], [ %2287, %2285 ], [ %3320, %3316 ], [ %2287, %3314 ], [ %3272, %3268 ], [ %3238, %3232 ], [ %2287, %2305 ]
  %3345 = phi float [ %3202, %3201 ], [ %2288, %2601 ], [ %2288, %2285 ], [ %3202, %3316 ], [ %3202, %3314 ], [ %3202, %3268 ], [ %3202, %3232 ], [ %2288, %2305 ]
  %3346 = phi float [ %3203, %3201 ], [ %2289, %2601 ], [ %2289, %2285 ], [ %3203, %3316 ], [ %3203, %3314 ], [ %3203, %3268 ], [ %3203, %3232 ], [ %2289, %2305 ]
  %3347 = phi float [ %3204, %3201 ], [ %2290, %2601 ], [ %2290, %2285 ], [ %3204, %3316 ], [ %3204, %3314 ], [ %3204, %3268 ], [ %3204, %3232 ], [ %2290, %2305 ]
  %3348 = phi float [ %3205, %3201 ], [ %2291, %2601 ], [ %2291, %2285 ], [ %3205, %3316 ], [ %3205, %3314 ], [ %3205, %3268 ], [ %3205, %3232 ], [ %2291, %2305 ]
  %3349 = phi float [ %3206, %3201 ], [ %2292, %2601 ], [ %2292, %2285 ], [ %3206, %3316 ], [ %3206, %3314 ], [ %3206, %3268 ], [ %3206, %3232 ], [ %2292, %2305 ]
  %3350 = phi float [ %3207, %3201 ], [ %2293, %2601 ], [ %2293, %2285 ], [ %3207, %3316 ], [ %3207, %3314 ], [ %3207, %3268 ], [ %3207, %3232 ], [ %2293, %2305 ]
  %3351 = phi float [ %2294, %3201 ], [ %2294, %2601 ], [ %2294, %2285 ], [ %3339, %3316 ], [ %2294, %3314 ], [ %3311, %3268 ], [ %3263, %3232 ], [ %2294, %2305 ]
  %3352 = phi float [ %2295, %3201 ], [ %2295, %2601 ], [ %2295, %2285 ], [ %3340, %3316 ], [ %2295, %3314 ], [ %3312, %3268 ], [ %3264, %3232 ], [ %2295, %2305 ]
  %3353 = phi float [ %2296, %3201 ], [ %2296, %2601 ], [ %2296, %2285 ], [ %3341, %3316 ], [ %2296, %3314 ], [ %3313, %3268 ], [ %3265, %3232 ], [ %2296, %2305 ]
  %3354 = phi float [ %2297, %3201 ], [ %2297, %2601 ], [ %2297, %2285 ], [ %3331, %3316 ], [ %2297, %3314 ], [ %3303, %3268 ], [ %3251, %3232 ], [ %2297, %2305 ]
  %3355 = phi float [ %2298, %3201 ], [ %2298, %2601 ], [ %2298, %2285 ], [ %3332, %3316 ], [ %2298, %3314 ], [ %3304, %3268 ], [ %3252, %3232 ], [ %2298, %2305 ]
  %3356 = phi float [ %2299, %3201 ], [ %2299, %2601 ], [ %2299, %2285 ], [ %3333, %3316 ], [ %2299, %3314 ], [ %3305, %3268 ], [ %3253, %3232 ], [ %2299, %2305 ]
  %3357 = phi float [ %3208, %3201 ], [ %2300, %2601 ], [ %2300, %2285 ], [ %3208, %3316 ], [ %3208, %3314 ], [ %3208, %3268 ], [ %3208, %3232 ], [ %2300, %2305 ]
  %3358 = phi float [ %2301, %3201 ], [ %2301, %2601 ], [ %2301, %2285 ], [ %3327, %3316 ], [ %2301, %3314 ], [ %3299, %3268 ], [ %3244, %3232 ], [ %2301, %2305 ]
  %3359 = phi float [ %2302, %3201 ], [ %2302, %2601 ], [ %2302, %2285 ], [ %3324, %3316 ], [ %2302, %3314 ], [ %3276, %3268 ], [ %3241, %3232 ], [ %2302, %2305 ]
  %3360 = phi float [ %2303, %3201 ], [ %2303, %2601 ], [ %2303, %2285 ], [ %3335, %3316 ], [ %2303, %3314 ], [ %3307, %3268 ], [ %3256, %3232 ], [ %2303, %2305 ]
  %3361 = phi float [ %3209, %3201 ], [ %2304, %2601 ], [ %2304, %2285 ], [ %3209, %3316 ], [ %3209, %3314 ], [ %3209, %3268 ], [ %3209, %3232 ], [ %2304, %2305 ]
  br i1 %404, label %4399, label %3362

; <label>:3362                                    ; preds = %3342
  %3363 = icmp ult i32 %458, 4
  %3364 = add i32 %48, 72
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = add i32 %48, 76
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = or i32 %3369, %3366
  %3371 = icmp eq i32 %3370, 0
  br i1 %3371, label %4399, label %3372

; <label>:3372                                    ; preds = %3362
  %3373 = and i32 %3366, 262144
  %3374 = icmp ne i32 %3373, 0
  %3375 = select i1 %3374, float %51, float 1.000000e+00
  %3376 = select i1 %3374, float %52, float 0.000000e+00
  %3377 = select i1 %3374, float %53, float 0.000000e+00
  %3378 = select i1 %3374, float %54, float 1.000000e+00
  %3379 = select i1 %3374, float %55, float %76
  %3380 = select i1 %3374, float %56, float %77
  %3381 = add i32 %48, 332
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = lshr i32 %3383, 16
  %3385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3384)  ; LegacyF16ToF32(value)
  %3386 = fmul fast float %3385, 0x3F50624DE0000000
  %3387 = add i32 %48, 136
  %3388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.i32 %3388, 0
  %3390 = lshr i32 %3389, 16
  %3391 = and i32 %3390, 255
  %3392 = lshr i32 %3389, 24
  %3393 = add i32 %48, 340
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = and i32 %3395, 65535
  %3397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3396)  ; LegacyF16ToF32(value)
  %3398 = lshr i32 %3395, 16
  %3399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3398)  ; LegacyF16ToF32(value)
  %3400 = add i32 %48, 80
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = lshr i32 %3402, 22
  %3404 = shl nuw nsw i32 %3403, 5
  %3405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3404)  ; LegacyF16ToF32(value)
  %3406 = shl i32 %3402, 4
  %3407 = and i32 %3406, 32752
  %3408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3407)  ; LegacyF16ToF32(value)
  %3409 = lshr i32 %3402, 7
  %3410 = and i32 %3409, 32752
  %3411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3410)  ; LegacyF16ToF32(value)
  %3412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3413 = extractvalue %dx.types.CBufRet.f32 %3412, 3
  %3414 = fmul fast float %3413, 1.000000e+03
  %3415 = fmul fast float %394, %3414
  %3416 = call float @dx.op.unary.f32(i32 22, float %3415)  ; Frc(value)
  %3417 = fadd fast float %3416, %384
  %3418 = fmul fast float %395, %3414
  %3419 = call float @dx.op.unary.f32(i32 22, float %3418)  ; Frc(value)
  %3420 = fadd fast float %3419, %386
  %3421 = fmul fast float %3386, %3414
  %3422 = call float @dx.op.unary.f32(i32 22, float %3421)  ; Frc(value)
  %3423 = fmul fast float %3422, 0x401921FB60000000
  %3424 = fadd fast float %3423, %3405
  %3425 = call float @dx.op.unary.f32(i32 13, float %3424)  ; Sin(value)
  %3426 = call float @dx.op.unary.f32(i32 12, float %3424)  ; Cos(value)
  %3427 = fsub fast float -0.000000e+00, %3425
  %3428 = fadd fast float %3379, -5.000000e-01
  %3429 = fadd fast float %3380, -5.000000e-01
  %3430 = fmul fast float %3397, %3428
  %3431 = fmul fast float %3399, %3429
  %3432 = fadd fast float %3430, 5.000000e-01
  %3433 = fadd fast float %3431, 5.000000e-01
  %3434 = fmul fast float %3408, %3432
  %3435 = fmul fast float %3411, %3433
  %3436 = fmul fast float %3426, %3434
  %3437 = call float @dx.op.tertiary.f32(i32 46, float %3427, float %3435, float %3436)  ; FMad(a,b,c)
  %3438 = fmul fast float %3425, %3434
  %3439 = call float @dx.op.tertiary.f32(i32 46, float %3426, float %3435, float %3438)  ; FMad(a,b,c)
  %3440 = fadd fast float %3417, %3437
  %3441 = fadd fast float %3420, %3439
  %3442 = icmp ugt i32 %3391, 1
  %3443 = icmp ugt i32 %3389, 33554431
  %3444 = or i1 %3443, %3442
  br i1 %3444, label %3445, label %3470

; <label>:3445                                    ; preds = %3372
  %3446 = add i32 %48, 276
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = lshr i32 %3448, 16
  %3450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3449)  ; LegacyF16ToF32(value)
  %3451 = fmul fast float %3413, %3450
  %3452 = call float @dx.op.unary.f32(i32 22, float %3451)  ; Frc(value)
  %3453 = mul nuw nsw i32 %3391, %3392
  %3454 = uitofp i32 %3453 to float
  %3455 = fmul fast float %3452, %3454
  %3456 = call float @dx.op.unary.f32(i32 27, float %3455)  ; Round_ni(value)
  %3457 = fptoui float %3456 to i32
  %3458 = urem i32 %3457, %3391
  %3459 = udiv i32 %3457, %3392
  %3460 = call float @dx.op.unary.f32(i32 22, float %3440)  ; Frc(value)
  %3461 = call float @dx.op.unary.f32(i32 22, float %3441)  ; Frc(value)
  %3462 = uitofp i32 %3458 to float
  %3463 = uitofp i32 %3459 to float
  %3464 = fadd fast float %3460, %3462
  %3465 = fadd fast float %3461, %3463
  %3466 = uitofp i32 %3391 to float
  %3467 = uitofp i32 %3392 to float
  %3468 = fdiv fast float %3464, %3466
  %3469 = fdiv fast float %3465, %3467
  br label %3470

; <label>:3470                                    ; preds = %3445, %3372
  %3471 = phi float [ %3468, %3445 ], [ %3440, %3372 ]
  %3472 = phi float [ %3469, %3445 ], [ %3441, %3372 ]
  %3473 = and i32 %3366, 16777216
  %3474 = icmp eq i32 %3473, 0
  br i1 %3474, label %3584, label %3475

; <label>:3475                                    ; preds = %3470
  %3476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3477 = extractvalue %dx.types.CBufRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.CBufRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.CBufRet.f32 %3476, 2
  %3480 = fadd fast float %3477, %152
  %3481 = fadd fast float %3478, %153
  %3482 = fadd fast float %3479, %154
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 0
  %3485 = call float @dx.op.unary.f32(i32 7, float %3484)  ; Saturate(value)
  %3486 = icmp eq i32 %49, 65535
  br i1 %3486, label %3581, label %3487

; <label>:3487                                    ; preds = %3475
  %3488 = lshr i32 %49, 1
  %3489 = shl i32 %3488, 2
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = and i32 %49, 1
  %3493 = icmp ne i32 %3492, 0
  %3494 = lshr i32 %3491, 16
  %3495 = and i32 %3491, 65535
  %3496 = select i1 %3493, i32 %3494, i32 %3495
  %3497 = icmp eq i32 %3496, 65535
  br i1 %3497, label %3577, label %3498

; <label>:3498                                    ; preds = %3487
  %3499 = mul nuw nsw i32 %3496, 40
  %3500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.f32 %3500, 0
  %3502 = extractvalue %dx.types.ResRet.f32 %3500, 1
  %3503 = extractvalue %dx.types.ResRet.f32 %3500, 2
  %3504 = add nuw nsw i32 %3499, 12
  %3505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3504, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.f32 %3505, 0
  %3507 = extractvalue %dx.types.ResRet.f32 %3505, 1
  %3508 = extractvalue %dx.types.ResRet.f32 %3505, 2
  %3509 = add nuw nsw i32 %3499, 24
  %3510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3509, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.f32 %3510, 0
  %3512 = extractvalue %dx.types.ResRet.f32 %3510, 1
  %3513 = extractvalue %dx.types.ResRet.f32 %3510, 2
  %3514 = add nuw nsw i32 %3499, 36
  %3515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3514, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.f32 %3515, 0
  %3517 = fsub fast float %3480, %3501
  %3518 = fsub fast float %3481, %3502
  %3519 = fsub fast float %3482, %3503
  %3520 = fmul fast float %3516, %3517
  %3521 = fmul fast float %3516, %3518
  %3522 = fmul fast float %3516, %3519
  %3523 = call float @dx.op.unary.f32(i32 27, float %3520)  ; Round_ni(value)
  %3524 = call float @dx.op.unary.f32(i32 27, float %3521)  ; Round_ni(value)
  %3525 = call float @dx.op.unary.f32(i32 27, float %3522)  ; Round_ni(value)
  %3526 = fadd fast float %3523, 5.000000e-01
  %3527 = fadd fast float %3524, 5.000000e-01
  %3528 = fadd fast float %3525, 5.000000e-01
  %3529 = fmul fast float %3526, %3506
  %3530 = fmul fast float %3527, %3507
  %3531 = fmul fast float %3528, %3508
  %3532 = shl i32 %49, 2
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = add i32 %3534, 0
  %3536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3537 = call float @dx.op.unary.f32(i32 22, float %3529)  ; Frc(value)
  %3538 = call float @dx.op.unary.f32(i32 22, float %3530)  ; Frc(value)
  %3539 = call float @dx.op.unary.f32(i32 22, float %3531)  ; Frc(value)
  %3540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3536, %dx.types.Handle %43, float %3537, float %3538, float %3539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3541 = extractvalue %dx.types.ResRet.f32 %3540, 0
  %3542 = extractvalue %dx.types.ResRet.f32 %3540, 1
  %3543 = extractvalue %dx.types.ResRet.f32 %3540, 2
  %3544 = fmul fast float %3541, 1.023000e+03
  %3545 = fmul fast float %3542, 1.023000e+03
  %3546 = fmul fast float %3543, 1.023000e+03
  %3547 = fadd fast float %3544, 5.000000e-01
  %3548 = fadd fast float %3545, 5.000000e-01
  %3549 = fadd fast float %3546, 5.000000e-01
  %3550 = call float @dx.op.unary.f32(i32 27, float %3547)  ; Round_ni(value)
  %3551 = call float @dx.op.unary.f32(i32 27, float %3548)  ; Round_ni(value)
  %3552 = call float @dx.op.unary.f32(i32 27, float %3549)  ; Round_ni(value)
  %3553 = fsub fast float %3520, %3523
  %3554 = fsub fast float %3521, %3524
  %3555 = fsub fast float %3522, %3525
  %3556 = fmul fast float %3553, 7.500000e-01
  %3557 = fmul fast float %3554, 7.500000e-01
  %3558 = fmul fast float %3555, 7.500000e-01
  %3559 = fadd fast float %3523, 1.250000e-01
  %3560 = fadd fast float %3559, %3556
  %3561 = fadd fast float %3560, %3550
  %3562 = fadd fast float %3524, 1.250000e-01
  %3563 = fadd fast float %3562, %3557
  %3564 = fadd fast float %3563, %3551
  %3565 = fadd fast float %3525, 1.250000e-01
  %3566 = fadd fast float %3565, %3558
  %3567 = fadd fast float %3566, %3552
  %3568 = fmul fast float %3561, %3511
  %3569 = fmul fast float %3564, %3512
  %3570 = fmul fast float %3567, %3513
  %3571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.i32 %3571, 0
  %3573 = add i32 %3572, 0
  %3574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3574, %dx.types.Handle %41, float %3568, float %3569, float %3570, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  br label %3577

; <label>:3577                                    ; preds = %3498, %3487
  %3578 = phi float [ %3576, %3498 ], [ -1.000000e+00, %3487 ]
  %3579 = fadd fast float %3578, %3485
  %3580 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  br label %3581

; <label>:3581                                    ; preds = %3577, %3475
  %3582 = phi float [ %3580, %3577 ], [ %3485, %3475 ]
  %3583 = fmul fast float %3582, %453
  br label %3584

; <label>:3584                                    ; preds = %3581, %3470
  %3585 = phi float [ %3583, %3581 ], [ %453, %3470 ]
  %3586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.i32 %3586, 0
  %3588 = and i32 %3587, 256
  %3589 = icmp eq i32 %3588, 0
  br i1 %3589, label %3636, label %3590

; <label>:3590                                    ; preds = %3584
  %3591 = add i32 %48, 436
  %3592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.i32 %3592, 0
  %3594 = add i32 %3593, 0
  %3595 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3594, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3596 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3595, %dx.types.Handle %94, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = add i32 %48, 148
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = shl i32 %3600, 4
  %3602 = and i32 %3601, 32752
  %3603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3602)  ; LegacyF16ToF32(value)
  %3604 = lshr i32 %3600, 7
  %3605 = and i32 %3604, 32752
  %3606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3605)  ; LegacyF16ToF32(value)
  %3607 = fsub fast float 1.000000e+00, %3585
  %3608 = call float @dx.op.binary.f32(i32 35, float %3607, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3609 = bitcast float %3585 to i32
  %3610 = sitofp i32 %3609 to float
  %3611 = fadd fast float %3610, 0xC1CFBF8940000000
  %3612 = fmul fast float %3606, %3611
  %3613 = fadd fast float %3612, 0x41CFBF8940000000
  %3614 = fptosi float %3613 to i32
  %3615 = bitcast i32 %3614 to float
  %3616 = bitcast float %3608 to i32
  %3617 = sitofp i32 %3616 to float
  %3618 = fadd fast float %3617, 0xC1CFBF8940000000
  %3619 = fmul fast float %3618, %3606
  %3620 = fadd fast float %3619, 0x41CFBF8940000000
  %3621 = fptosi float %3620 to i32
  %3622 = bitcast i32 %3621 to float
  %3623 = fmul fast float %3615, %3603
  %3624 = fmul fast float %3622, %3603
  %3625 = fsub fast float %3608, %3623
  %3626 = fadd fast float %3624, %3608
  %3627 = call float @dx.op.unary.f32(i32 7, float %3625)  ; Saturate(value)
  %3628 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  %3629 = fsub fast float %3597, %3627
  %3630 = fsub fast float %3628, %3627
  %3631 = bitcast float %3630 to i32
  %3632 = sub nsw i32 2129859010, %3631
  %3633 = bitcast i32 %3632 to float
  %3634 = fmul fast float %3633, %3629
  %3635 = call float @dx.op.unary.f32(i32 7, float %3634)  ; Saturate(value)
  br label %3636

; <label>:3636                                    ; preds = %3590, %3584
  %3637 = phi float [ %3635, %3590 ], [ %3585, %3584 ]
  %3638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.i32 %3638, 0
  %3640 = and i32 %3639, 128
  %3641 = icmp eq i32 %3640, 0
  br i1 %3641, label %3658, label %3642

; <label>:3642                                    ; preds = %3636
  %3643 = add i32 %48, 420
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = add i32 %3645, 0
  %3647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3648 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3647, %dx.types.Handle %94, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.i32 %3650, 0
  %3652 = and i32 %3651, 524288
  %3653 = icmp ne i32 %3652, 0
  %3654 = fcmp fast ogt float %3649, 0x3FE0101020000000
  %3655 = select i1 %3654, float 1.000000e+00, float 0.000000e+00
  %3656 = select i1 %3653, float %3655, float %3649
  %3657 = fmul fast float %3656, %3637
  br label %3658

; <label>:3658                                    ; preds = %3642, %3636
  %3659 = phi float [ %3657, %3642 ], [ %3637, %3636 ]
  %3660 = fcmp fast ult float %3659, 0x3F70101020000000
  br i1 %3660, label %4399, label %3661

; <label>:3661                                    ; preds = %3658
  %3662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3663 = extractvalue %dx.types.ResRet.i32 %3662, 0
  %3664 = and i32 %3663, 16
  %3665 = icmp eq i32 %3664, 0
  br i1 %3665, label %3864, label %3666

; <label>:3666                                    ; preds = %3661
  %3667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.i32 %3667, 0
  %3669 = add i32 %48, 372
  %3670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3669, i32 undef)  ; BufferLoad(srv,index,wot)
  %3671 = extractvalue %dx.types.ResRet.i32 %3670, 0
  %3672 = add i32 %3671, 0
  %3673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3674 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3673, %dx.types.Handle %93, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3675 = extractvalue %dx.types.ResRet.f32 %3674, 0
  %3676 = extractvalue %dx.types.ResRet.f32 %3674, 1
  %3677 = extractvalue %dx.types.ResRet.f32 %3674, 2
  %3678 = extractvalue %dx.types.ResRet.f32 %3674, 3
  %3679 = and i32 %3668, 255
  %3680 = uitofp i32 %3679 to float
  %3681 = lshr i32 %3668, 8
  %3682 = and i32 %3681, 255
  %3683 = uitofp i32 %3682 to float
  %3684 = fmul fast float %3678, %3680
  %3685 = fadd fast float %3684, %3683
  %3686 = fmul fast float %3685, 0x3F70101000000000
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = and i32 %3688, 512
  %3690 = icmp eq i32 %3689, 0
  br i1 %3690, label %3699, label %3691

; <label>:3691                                    ; preds = %3666
  %3692 = add i32 %48, 452
  %3693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.i32 %3693, 0
  %3695 = add i32 %3694, 0
  %3696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3695, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3697 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3696, %dx.types.Handle %94, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3698 = extractvalue %dx.types.ResRet.f32 %3697, 0
  br label %3699

; <label>:3699                                    ; preds = %3691, %3666
  %3700 = phi float [ %3698, %3691 ], [ 1.000000e+00, %3666 ]
  %3701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.i32 %3701, 0
  %3703 = and i32 %3702, 33554432
  %3704 = icmp eq i32 %3703, 0
  br i1 %3704, label %3811, label %3705

; <label>:3705                                    ; preds = %3699
  %3706 = add i32 %48, 272
  %3707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3706, i32 undef)  ; BufferLoad(srv,index,wot)
  %3708 = extractvalue %dx.types.ResRet.i32 %3707, 0
  %3709 = and i32 %3708, 65535
  %3710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3709)  ; LegacyF16ToF32(value)
  %3711 = lshr i32 %3708, 16
  %3712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3711)  ; LegacyF16ToF32(value)
  %3713 = add i32 %48, 276
  %3714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3713, i32 undef)  ; BufferLoad(srv,index,wot)
  %3715 = extractvalue %dx.types.ResRet.i32 %3714, 0
  %3716 = and i32 %3715, 65535
  %3717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3716)  ; LegacyF16ToF32(value)
  %3718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.i32 %3718, 0
  %3720 = lshr i32 %3719, 24
  %3721 = uitofp i32 %3720 to float
  %3722 = fmul fast float %3721, 0x3F70101020000000
  %3723 = and i32 %3719, 255
  %3724 = uitofp i32 %3723 to float
  %3725 = fmul fast float %3724, 0x3F70101020000000
  %3726 = lshr i32 %3719, 8
  %3727 = and i32 %3726, 255
  %3728 = uitofp i32 %3727 to float
  %3729 = fmul fast float %3728, 0x3F70101020000000
  %3730 = lshr i32 %3719, 16
  %3731 = and i32 %3730, 255
  %3732 = uitofp i32 %3731 to float
  %3733 = fmul fast float %3732, 0x3F70101020000000
  %3734 = add i32 %48, 268
  %3735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3734, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.i32 %3735, 0
  %3737 = lshr i32 %3736, 24
  %3738 = uitofp i32 %3737 to float
  %3739 = fmul fast float %3738, 0x3F70101020000000
  %3740 = and i32 %3736, 255
  %3741 = uitofp i32 %3740 to float
  %3742 = fmul fast float %3741, 0x3F70101020000000
  %3743 = lshr i32 %3736, 8
  %3744 = and i32 %3743, 255
  %3745 = uitofp i32 %3744 to float
  %3746 = fmul fast float %3745, 0x3F70101020000000
  %3747 = lshr i32 %3736, 16
  %3748 = and i32 %3747, 255
  %3749 = uitofp i32 %3748 to float
  %3750 = fmul fast float %3749, 0x3F70101020000000
  %3751 = bitcast float %3675 to i32
  %3752 = ashr i32 %3751, 1
  %3753 = sub nsw i32 1597463174, %3752
  %3754 = bitcast i32 %3753 to float
  %3755 = fmul fast float %3675, 5.000000e-01
  %3756 = fmul fast float %3754, %3754
  %3757 = fmul fast float %3756, %3755
  %3758 = fsub fast float 1.500000e+00, %3757
  %3759 = fmul fast float %3754, %3675
  %3760 = fmul fast float %3759, %3758
  %3761 = bitcast float %3676 to i32
  %3762 = ashr i32 %3761, 1
  %3763 = sub nsw i32 1597463174, %3762
  %3764 = bitcast i32 %3763 to float
  %3765 = fmul fast float %3676, 5.000000e-01
  %3766 = fmul fast float %3764, %3764
  %3767 = fmul fast float %3766, %3765
  %3768 = fsub fast float 1.500000e+00, %3767
  %3769 = fmul fast float %3764, %3676
  %3770 = fmul fast float %3769, %3768
  %3771 = bitcast float %3677 to i32
  %3772 = ashr i32 %3771, 1
  %3773 = sub nsw i32 1597463174, %3772
  %3774 = bitcast i32 %3773 to float
  %3775 = fmul fast float %3677, 5.000000e-01
  %3776 = fmul fast float %3774, %3774
  %3777 = fmul fast float %3776, %3775
  %3778 = fsub fast float 1.500000e+00, %3777
  %3779 = fmul fast float %3774, %3677
  %3780 = fmul fast float %3779, %3778
  %3781 = fsub fast float %3760, %3742
  %3782 = fsub fast float %3770, %3746
  %3783 = fsub fast float %3780, %3750
  %3784 = fmul fast float %3781, %3710
  %3785 = fmul fast float %3782, %3712
  %3786 = fmul fast float %3783, %3717
  %3787 = fadd fast float %3784, %3725
  %3788 = fadd fast float %3785, %3729
  %3789 = fadd fast float %3786, %3733
  %3790 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3791 = call float @dx.op.unary.f32(i32 7, float %3788)  ; Saturate(value)
  %3792 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3793 = fmul fast float %3790, %3790
  %3794 = fmul fast float %3791, %3791
  %3795 = fmul fast float %3792, %3792
  %3796 = fsub fast float %3793, %3675
  %3797 = fsub fast float %3794, %3676
  %3798 = fsub fast float %3795, %3677
  %3799 = fmul fast float %3796, %3700
  %3800 = fmul fast float %3797, %3700
  %3801 = fmul fast float %3798, %3700
  %3802 = fadd fast float %3799, %3675
  %3803 = fadd fast float %3800, %3676
  %3804 = fadd fast float %3801, %3677
  %3805 = fadd fast float %3722, %3686
  %3806 = fsub fast float %3805, %3739
  %3807 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3808 = fsub fast float %3807, %3686
  %3809 = fmul fast float %3808, %3700
  %3810 = fadd fast float %3809, %3686
  br label %3864

; <label>:3811                                    ; preds = %3699
  %3812 = and i32 %3702, 134217728
  %3813 = icmp eq i32 %3812, 0
  br i1 %3813, label %3848, label %3814

; <label>:3814                                    ; preds = %3811
  %3815 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %3816 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %3817 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %3818 = fadd fast float %3815, -5.000000e-01
  %3819 = fadd fast float %3816, -5.000000e-01
  %3820 = fadd fast float %3817, -5.000000e-01
  %3821 = fmul fast float %3818, %3700
  %3822 = fmul fast float %3819, %3700
  %3823 = fmul fast float %3820, %3700
  %3824 = fadd fast float %3821, 5.000000e-01
  %3825 = fadd fast float %3822, 5.000000e-01
  %3826 = fadd fast float %3823, 5.000000e-01
  %3827 = call float @dx.op.unary.f32(i32 24, float %3675)  ; Sqrt(value)
  %3828 = call float @dx.op.unary.f32(i32 24, float %3676)  ; Sqrt(value)
  %3829 = call float @dx.op.unary.f32(i32 24, float %3677)  ; Sqrt(value)
  %3830 = fmul fast float %3824, 2.000000e+00
  %3831 = fsub fast float 1.000000e+00, %3830
  %3832 = fmul fast float %3831, %3827
  %3833 = fadd fast float %3832, %3830
  %3834 = fmul fast float %3833, %3827
  %3835 = fmul fast float %3825, 2.000000e+00
  %3836 = fsub fast float 1.000000e+00, %3835
  %3837 = fmul fast float %3836, %3828
  %3838 = fadd fast float %3837, %3835
  %3839 = fmul fast float %3838, %3828
  %3840 = fmul fast float %3826, 2.000000e+00
  %3841 = fsub fast float 1.000000e+00, %3840
  %3842 = fmul fast float %3841, %3829
  %3843 = fadd fast float %3842, %3840
  %3844 = fmul fast float %3843, %3829
  %3845 = fmul fast float %3834, %3834
  %3846 = fmul fast float %3839, %3839
  %3847 = fmul fast float %3844, %3844
  br label %3864

; <label>:3848                                    ; preds = %3811
  %3849 = fmul fast float %371, %371
  %3850 = fmul fast float %375, %375
  %3851 = fmul fast float %379, %379
  %3852 = fadd fast float %3849, -1.000000e+00
  %3853 = fadd fast float %3850, -1.000000e+00
  %3854 = fadd fast float %3851, -1.000000e+00
  %3855 = fmul fast float %3700, %3852
  %3856 = fmul fast float %3700, %3853
  %3857 = fmul fast float %3700, %3854
  %3858 = fadd fast float %3855, 1.000000e+00
  %3859 = fadd fast float %3856, 1.000000e+00
  %3860 = fadd fast float %3857, 1.000000e+00
  %3861 = fmul fast float %3858, %3675
  %3862 = fmul fast float %3859, %3676
  %3863 = fmul fast float %3860, %3677
  br label %3864

; <label>:3864                                    ; preds = %3848, %3814, %3705, %3661
  %3865 = phi float [ %3810, %3705 ], [ %3686, %3814 ], [ %3686, %3848 ], [ 0x3FA23C0BE0000000, %3661 ]
  %3866 = phi float [ %3802, %3705 ], [ %3845, %3814 ], [ %3861, %3848 ], [ 1.000000e+00, %3661 ]
  %3867 = phi float [ %3803, %3705 ], [ %3846, %3814 ], [ %3862, %3848 ], [ 1.000000e+00, %3661 ]
  %3868 = phi float [ %3804, %3705 ], [ %3847, %3814 ], [ %3863, %3848 ], [ 1.000000e+00, %3661 ]
  %3869 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3870 = extractvalue %dx.types.CBufRet.i32 %3869, 1
  %3871 = and i32 %3870, 1
  %3872 = icmp ne i32 %3871, 0
  %3873 = add i32 %48, 356
  %3874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3873, i32 undef)  ; BufferLoad(srv,index,wot)
  %3875 = extractvalue %dx.types.ResRet.i32 %3874, 0
  %3876 = and i32 %3875, 32
  %3877 = icmp ne i32 %3876, 0
  %3878 = and i1 %3872, %3877
  %3879 = select i1 %3878, float 1.000000e+00, float %3866
  %3880 = select i1 %3878, float 0x3FD3333340000000, float %3867
  %3881 = select i1 %3878, float 0x3FD3333340000000, float %3868
  %3882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.i32 %3882, 0
  %3884 = and i32 %3883, 32
  %3885 = icmp eq i32 %3884, 0
  br i1 %3885, label %3958, label %3886

; <label>:3886                                    ; preds = %3864
  %3887 = add i32 %48, 140
  %3888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.i32 %3888, 0
  %3890 = add i32 %48, 388
  %3891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3890, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.i32 %3891, 0
  %3893 = add i32 %3892, 0
  %3894 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3893, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3895 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3894, %dx.types.Handle %93, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3896 = extractvalue %dx.types.ResRet.f32 %3895, 0
  %3897 = extractvalue %dx.types.ResRet.f32 %3895, 1
  %3898 = extractvalue %dx.types.ResRet.f32 %3895, 2
  %3899 = extractvalue %dx.types.ResRet.f32 %3895, 3
  %3900 = and i32 %3889, 255
  %3901 = uitofp i32 %3900 to float
  %3902 = lshr i32 %3889, 8
  %3903 = and i32 %3902, 255
  %3904 = uitofp i32 %3903 to float
  %3905 = lshr i32 %3889, 16
  %3906 = and i32 %3905, 255
  %3907 = uitofp i32 %3906 to float
  %3908 = fmul fast float %3907, 0x3F70101000000000
  %3909 = fmul fast float %3896, %3901
  %3910 = fadd fast float %3909, %3904
  %3911 = fmul fast float %3910, 0x3F70101000000000
  %3912 = fadd fast float %3897, -5.000000e-01
  %3913 = fadd fast float %3899, -5.000000e-01
  %3914 = fmul fast float %3912, %3908
  %3915 = fmul fast float %3913, %3908
  %3916 = fadd fast float %3914, 5.000000e-01
  %3917 = fadd fast float %3915, 5.000000e-01
  %3918 = fmul fast float %3916, 2.000000e+00
  %3919 = fadd fast float %3918, -1.000000e+00
  %3920 = fmul fast float %3917, 2.000000e+00
  %3921 = fadd fast float %3920, -1.000000e+00
  %3922 = fadd fast float %3919, %3921
  %3923 = fmul fast float %3922, 5.000000e-01
  %3924 = fsub fast float %3919, %3921
  %3925 = fmul fast float %3924, 5.000000e-01
  %3926 = call float @dx.op.unary.f32(i32 6, float %3923)  ; FAbs(value)
  %3927 = fsub fast float 1.000000e+00, %3926
  %3928 = call float @dx.op.unary.f32(i32 6, float %3925)  ; FAbs(value)
  %3929 = fsub fast float %3927, %3928
  %3930 = call float @dx.op.dot3.f32(i32 55, float %3923, float %3925, float %3929, float %3923, float %3925, float %3929)  ; Dot3(ax,ay,az,bx,by,bz)
  %3931 = call float @dx.op.unary.f32(i32 25, float %3930)  ; Rsqrt(value)
  %3932 = fmul fast float %3923, %3931
  %3933 = fmul fast float %3925, %3931
  %3934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.i32 %3934, 0
  %3936 = and i32 %3935, 67108864
  %3937 = icmp eq i32 %3936, 0
  br i1 %3937, label %3954, label %3938

; <label>:3938                                    ; preds = %3886
  %3939 = add i32 %48, 328
  %3940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.i32 %3940, 0
  %3942 = and i32 %3941, 65535
  %3943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3942)  ; LegacyF16ToF32(value)
  %3944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.i32 %3944, 0
  %3946 = and i32 %3945, 65535
  %3947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3946)  ; LegacyF16ToF32(value)
  %3948 = lshr i32 %3941, 16
  %3949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3948)  ; LegacyF16ToF32(value)
  %3950 = fsub fast float %3911, %3949
  %3951 = fmul fast float %3950, %3943
  %3952 = fadd fast float %3951, %3947
  %3953 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  br label %3954

; <label>:3954                                    ; preds = %3938, %3886
  %3955 = phi float [ %3953, %3938 ], [ %3911, %3886 ]
  %3956 = call float @dx.op.dot2.f32(i32 54, float %3932, float %3933, float %3375, float %3376)  ; Dot2(ax,ay,bx,by)
  %3957 = call float @dx.op.dot2.f32(i32 54, float %3932, float %3933, float %3377, float %3378)  ; Dot2(ax,ay,bx,by)
  br label %3958

; <label>:3958                                    ; preds = %3954, %3864
  %3959 = phi float [ %3955, %3954 ], [ 0x3FD6666660000000, %3864 ]
  %3960 = phi float [ %3956, %3954 ], [ 0.000000e+00, %3864 ]
  %3961 = phi float [ %3957, %3954 ], [ 0.000000e+00, %3864 ]
  %3962 = phi float [ %3898, %3954 ], [ 1.000000e+00, %3864 ]
  %3963 = add i32 %48, 208
  %3964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3963, i32 undef)  ; BufferLoad(srv,index,wot)
  %3965 = extractvalue %dx.types.ResRet.i32 %3964, 0
  %3966 = lshr i32 %3965, 22
  %3967 = shl nuw nsw i32 %3966, 5
  %3968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3967)  ; LegacyF16ToF32(value)
  %3969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3970 = extractvalue %dx.types.ResRet.i32 %3969, 0
  %3971 = and i32 %3970, 64
  %3972 = icmp eq i32 %3971, 0
  br i1 %3972, label %4006, label %3973

; <label>:3973                                    ; preds = %3958
  %3974 = add i32 %48, 404
  %3975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.i32 %3975, 0
  %3977 = add i32 %3976, 0
  %3978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3977, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3980 = extractvalue %dx.types.ResRet.i32 %3979, 0
  %3981 = and i32 %3980, 131072
  %3982 = icmp eq i32 %3981, 0
  %3983 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3978, %dx.types.Handle %93, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3984 = extractvalue %dx.types.ResRet.f32 %3983, 0
  %3985 = extractvalue %dx.types.ResRet.f32 %3983, 1
  %3986 = extractvalue %dx.types.ResRet.f32 %3983, 2
  %3987 = fmul fast float %3984, %359
  %3988 = fmul fast float %3985, %362
  %3989 = fmul fast float %3986, %365
  br i1 %3982, label %3996, label %3990

; <label>:3990                                    ; preds = %3973
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3993 = fmul fast float %3992, %3987
  %3994 = fmul fast float %3992, %3988
  %3995 = fmul fast float %3992, %3989
  br label %3996

; <label>:3996                                    ; preds = %3990, %3973
  %3997 = phi float [ %3993, %3990 ], [ %3987, %3973 ]
  %3998 = phi float [ %3994, %3990 ], [ %3988, %3973 ]
  %3999 = phi float [ %3995, %3990 ], [ %3989, %3973 ]
  %4000 = fmul fast float %3997, %3968
  %4001 = select i1 %213, float %4000, float %3997
  %4002 = call float @dx.op.dot3.f32(i32 55, float %4001, float %3998, float %3999, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4003 = select i1 %213, float 0.000000e+00, float %3997
  %4004 = select i1 %213, float %4002, float %3998
  %4005 = select i1 %213, float 0.000000e+00, float %3999
  br label %4006

; <label>:4006                                    ; preds = %3996, %3958
  %4007 = phi float [ %4003, %3996 ], [ 0.000000e+00, %3958 ]
  %4008 = phi float [ %4004, %3996 ], [ 0.000000e+00, %3958 ]
  %4009 = phi float [ %4005, %3996 ], [ 0.000000e+00, %3958 ]
  %4010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4011 = extractvalue %dx.types.ResRet.i32 %4010, 0
  %4012 = and i32 %4011, 1024
  %4013 = icmp eq i32 %4012, 0
  br i1 %4013, label %4044, label %4014

; <label>:4014                                    ; preds = %4006
  %4015 = add i32 %48, 200
  %4016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4015, i32 undef)  ; BufferLoad(srv,index,wot)
  %4017 = extractvalue %dx.types.ResRet.i32 %4016, 0
  %4018 = and i32 %4017, 255
  %4019 = uitofp i32 %4018 to float
  %4020 = fmul fast float %4019, 0x3F70101020000000
  %4021 = lshr i32 %4017, 8
  %4022 = and i32 %4021, 255
  %4023 = uitofp i32 %4022 to float
  %4024 = fmul fast float %4023, 0x3F70101020000000
  %4025 = lshr i32 %4017, 16
  %4026 = and i32 %4025, 255
  %4027 = uitofp i32 %4026 to float
  %4028 = fmul fast float %4027, 0x3F70101020000000
  %4029 = fmul fast float %4020, %4020
  %4030 = fmul fast float %4024, %4024
  %4031 = fmul fast float %4028, %4028
  %4032 = add i32 %48, 468
  %4033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4032, i32 undef)  ; BufferLoad(srv,index,wot)
  %4034 = extractvalue %dx.types.ResRet.i32 %4033, 0
  %4035 = add i32 %4034, 0
  %4036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4036, %dx.types.Handle %94, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.ResRet.f32 %4037, 2
  %4041 = fmul fast float %4029, %4038
  %4042 = fmul fast float %4030, %4039
  %4043 = fmul fast float %4031, %4040
  br label %4044

; <label>:4044                                    ; preds = %4014, %4006
  %4045 = phi float [ %4041, %4014 ], [ 0.000000e+00, %4006 ]
  %4046 = phi float [ %4042, %4014 ], [ 0.000000e+00, %4006 ]
  %4047 = phi float [ %4043, %4014 ], [ 0.000000e+00, %4006 ]
  %4048 = fcmp fast ogt float %4045, 0.000000e+00
  %4049 = fcmp fast ogt float %4046, 0.000000e+00
  %4050 = fcmp fast ogt float %4047, 0.000000e+00
  %4051 = call float @dx.op.unary.f32(i32 23, float %4045)  ; Log(value)
  %4052 = call float @dx.op.unary.f32(i32 23, float %4046)  ; Log(value)
  %4053 = call float @dx.op.unary.f32(i32 23, float %4047)  ; Log(value)
  %4054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3963, i32 undef)  ; BufferLoad(srv,index,wot)
  %4055 = extractvalue %dx.types.ResRet.i32 %4054, 0
  %4056 = lshr i32 %4055, 7
  %4057 = and i32 %4056, 32752
  %4058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4057)  ; LegacyF16ToF32(value)
  %4059 = fmul fast float %4051, 0xBFE62E4300000000
  %4060 = fmul fast float %4059, %4058
  %4061 = fmul fast float %4052, 0xBFE62E4300000000
  %4062 = fmul fast float %4061, %4058
  %4063 = fmul fast float %4053, 0xBFE62E4300000000
  %4064 = fmul fast float %4063, %4058
  %4065 = select i1 %4048, float %4060, float 1.270000e+02
  %4066 = select i1 %4049, float %4062, float 1.270000e+02
  %4067 = select i1 %4050, float %4064, float 1.270000e+02
  %4068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4069 = extractvalue %dx.types.ResRet.i32 %4068, 0
  %4070 = and i32 %4069, 10240
  %4071 = icmp eq i32 %4070, 0
  br i1 %4071, label %4116, label %4072

; <label>:4072                                    ; preds = %4044
  %4073 = add i32 %48, 484
  %4074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.i32 %4074, 0
  %4076 = add i32 %4075, 0
  %4077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4077, %dx.types.Handle %94, float %3471, float %3472, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4079 = extractvalue %dx.types.ResRet.f32 %4078, 1
  %4080 = extractvalue %dx.types.ResRet.f32 %4078, 3
  %4081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4082 = extractvalue %dx.types.ResRet.i32 %4081, 0
  %4083 = and i32 %4082, 1048576
  %4084 = icmp ne i32 %4083, 0
  %4085 = and i32 %4082, 8192
  %4086 = icmp eq i32 %4085, 0
  br i1 %4086, label %4102, label %4087

; <label>:4087                                    ; preds = %4072
  %4088 = extractvalue %dx.types.ResRet.f32 %4078, 2
  %4089 = select i1 %4084, float %4088, float %4079
  %4090 = extractvalue %dx.types.ResRet.f32 %4078, 0
  %4091 = select i1 %4084, float %4090, float %4079
  %4092 = add i32 %48, 144
  %4093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4092, i32 undef)  ; BufferLoad(srv,index,wot)
  %4094 = extractvalue %dx.types.ResRet.i32 %4093, 0
  %4095 = lshr i32 %4094, 16
  %4096 = and i32 %4095, 255
  %4097 = uitofp i32 %4096 to float
  %4098 = fmul fast float %4097, 0x3F80101020000000
  %4099 = fmul fast float %4098, %4091
  %4100 = fmul fast float %4098, %4079
  %4101 = fmul fast float %4098, %4089
  br label %4102

; <label>:4102                                    ; preds = %4087, %4072
  %4103 = phi float [ %4099, %4087 ], [ 0.000000e+00, %4072 ]
  %4104 = phi float [ %4100, %4087 ], [ 0.000000e+00, %4072 ]
  %4105 = phi float [ %4101, %4087 ], [ 0.000000e+00, %4072 ]
  %4106 = and i32 %4082, 2048
  %4107 = icmp eq i32 %4106, 0
  br i1 %4107, label %4116, label %4108

; <label>:4108                                    ; preds = %4102
  %4109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3963, i32 undef)  ; BufferLoad(srv,index,wot)
  %4110 = extractvalue %dx.types.ResRet.i32 %4109, 0
  %4111 = shl i32 %4110, 4
  %4112 = and i32 %4111, 32752
  %4113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4112)  ; LegacyF16ToF32(value)
  %4114 = fmul fast float %4113, %4080
  %4115 = call float @dx.op.binary.f32(i32 35, float %4114, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4116

; <label>:4116                                    ; preds = %4108, %4102, %4044
  %4117 = phi float [ %4103, %4108 ], [ %4103, %4102 ], [ 0.000000e+00, %4044 ]
  %4118 = phi float [ %4104, %4108 ], [ %4104, %4102 ], [ 0.000000e+00, %4044 ]
  %4119 = phi float [ %4105, %4108 ], [ %4105, %4102 ], [ 0.000000e+00, %4044 ]
  %4120 = phi float [ %4115, %4108 ], [ 0x3F70101020000000, %4102 ], [ 0x3F70101020000000, %4044 ]
  %4121 = add i32 %48, 144
  %4122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4121, i32 undef)  ; BufferLoad(srv,index,wot)
  %4123 = extractvalue %dx.types.ResRet.i32 %4122, 0
  %4124 = and i32 %4123, 255
  %4125 = uitofp i32 %4124 to float
  %4126 = lshr i32 %4123, 8
  %4127 = and i32 %4126, 255
  %4128 = uitofp i32 %4127 to float
  %4129 = call float @dx.op.dot3.f32(i32 55, float %3879, float %3880, float %3881, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4130 = fmul fast float %4128, %4129
  %4131 = fadd fast float %4130, %4125
  %4132 = fmul fast float %4131, 0x3F70101020000000
  %4133 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  br i1 %3363, label %4134, label %4169

; <label>:4134                                    ; preds = %4116
  %4135 = fmul fast float %4120, 2.000000e+00
  %4136 = fcmp fast olt float %4065, 1.270000e+02
  %4137 = fcmp fast olt float %4066, 1.270000e+02
  %4138 = fcmp fast olt float %4067, 1.270000e+02
  %4139 = fmul fast float %4065, 0xBFF7154760000000
  %4140 = fmul fast float %4139, %4135
  %4141 = fmul fast float %4066, 0xBFF7154760000000
  %4142 = fmul fast float %4141, %4135
  %4143 = fmul fast float %4067, 0xBFF7154760000000
  %4144 = fmul fast float %4143, %4135
  %4145 = call float @dx.op.unary.f32(i32 21, float %4140)  ; Exp(value)
  %4146 = call float @dx.op.unary.f32(i32 21, float %4142)  ; Exp(value)
  %4147 = call float @dx.op.unary.f32(i32 21, float %4144)  ; Exp(value)
  %4148 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4149 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4150 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4151 = fadd fast float %4148, -1.000000e+00
  %4152 = select i1 %4136, float %4151, float -1.000000e+00
  %4153 = fadd fast float %4149, -1.000000e+00
  %4154 = select i1 %4137, float %4153, float -1.000000e+00
  %4155 = fadd fast float %4150, -1.000000e+00
  %4156 = select i1 %4138, float %4155, float -1.000000e+00
  %4157 = fmul fast float %4152, %3659
  %4158 = fmul fast float %4154, %3659
  %4159 = fmul fast float %4156, %3659
  %4160 = fadd fast float %4157, 1.000000e+00
  %4161 = fadd fast float %4158, 1.000000e+00
  %4162 = fadd fast float %4159, 1.000000e+00
  %4163 = fmul fast float %4160, %3345
  %4164 = fmul fast float %4161, %3346
  %4165 = fmul fast float %4162, %3347
  %4166 = fmul fast float %4160, %3348
  %4167 = fmul fast float %4161, %3349
  %4168 = fmul fast float %4162, %3350
  br label %4169

; <label>:4169                                    ; preds = %4134, %4116
  %4170 = phi float [ %4163, %4134 ], [ %3345, %4116 ]
  %4171 = phi float [ %4164, %4134 ], [ %3346, %4116 ]
  %4172 = phi float [ %4165, %4134 ], [ %3347, %4116 ]
  %4173 = phi float [ %4166, %4134 ], [ %3348, %4116 ]
  %4174 = phi float [ %4167, %4134 ], [ %3349, %4116 ]
  %4175 = phi float [ %4168, %4134 ], [ %3350, %4116 ]
  %4176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.i32 %4176, 0
  %4178 = and i32 %4177, 3
  %4179 = icmp eq i32 %4178, 3
  br i1 %4179, label %4258, label %4180

; <label>:4180                                    ; preds = %4169
  %4181 = and i32 %4177, 16
  %4182 = icmp ne i32 %4181, 0
  %4183 = select i1 %4182, float %3659, float 0.000000e+00
  %4184 = icmp eq i32 %4178, 0
  br i1 %4184, label %4185, label %4213

; <label>:4185                                    ; preds = %4180
  %4186 = and i32 %4177, 64
  %4187 = icmp ne i32 %4186, 0
  %4188 = select i1 %4187, float %3659, float 0.000000e+00
  %4189 = fsub fast float %3879, %4170
  %4190 = fsub fast float %3880, %4171
  %4191 = fsub fast float %3881, %4172
  %4192 = fmul fast float %4183, %4189
  %4193 = fmul fast float %4183, %4190
  %4194 = fmul fast float %4183, %4191
  %4195 = fadd fast float %4192, %4170
  %4196 = fadd fast float %4193, %4171
  %4197 = fadd fast float %4194, %4172
  %4198 = fsub fast float %3865, %3357
  %4199 = fmul fast float %4183, %4198
  %4200 = fadd fast float %4199, %3357
  %4201 = fsub fast float %4007, %4173
  %4202 = fsub fast float %4008, %4174
  %4203 = fsub fast float %4009, %4175
  %4204 = fmul fast float %4188, %4201
  %4205 = fmul fast float %4188, %4202
  %4206 = fmul fast float %4188, %4203
  %4207 = fadd fast float %4204, %4173
  %4208 = fadd fast float %4205, %4174
  %4209 = fadd fast float %4206, %4175
  %4210 = fsub fast float %4133, %3361
  %4211 = fmul fast float %4183, %4210
  %4212 = fadd fast float %4211, %3361
  br label %4258

; <label>:4213                                    ; preds = %4180
  %4214 = icmp eq i32 %4178, 1
  br i1 %4214, label %4215, label %4228

; <label>:4215                                    ; preds = %4213
  %4216 = fadd fast float %3879, -1.000000e+00
  %4217 = fadd fast float %3880, -1.000000e+00
  %4218 = fadd fast float %3881, -1.000000e+00
  %4219 = fmul fast float %4183, %4216
  %4220 = fmul fast float %4183, %4217
  %4221 = fmul fast float %4183, %4218
  %4222 = fadd fast float %4219, 1.000000e+00
  %4223 = fadd fast float %4220, 1.000000e+00
  %4224 = fadd fast float %4221, 1.000000e+00
  %4225 = fmul fast float %4222, %4170
  %4226 = fmul fast float %4223, %4171
  %4227 = fmul fast float %4224, %4172
  br label %4258

; <label>:4228                                    ; preds = %4213
  %4229 = icmp eq i32 %4178, 2
  br i1 %4229, label %4230, label %4258

; <label>:4230                                    ; preds = %4228
  %4231 = call float @dx.op.unary.f32(i32 24, float %3879)  ; Sqrt(value)
  %4232 = call float @dx.op.unary.f32(i32 24, float %3880)  ; Sqrt(value)
  %4233 = call float @dx.op.unary.f32(i32 24, float %3881)  ; Sqrt(value)
  %4234 = fadd fast float %4231, -5.000000e-01
  %4235 = fadd fast float %4232, -5.000000e-01
  %4236 = fadd fast float %4233, -5.000000e-01
  %4237 = fmul fast float %4234, %4183
  %4238 = fmul fast float %4235, %4183
  %4239 = fmul fast float %4236, %4183
  %4240 = fadd fast float %4237, 5.000000e-01
  %4241 = fadd fast float %4238, 5.000000e-01
  %4242 = fadd fast float %4239, 5.000000e-01
  %4243 = fmul fast float %4240, 2.000000e+00
  %4244 = fsub fast float 1.000000e+00, %4243
  %4245 = fmul fast float %4244, %4170
  %4246 = fadd fast float %4245, %4243
  %4247 = fmul fast float %4246, %4170
  %4248 = fmul fast float %4241, 2.000000e+00
  %4249 = fsub fast float 1.000000e+00, %4248
  %4250 = fmul fast float %4249, %4171
  %4251 = fadd fast float %4250, %4248
  %4252 = fmul fast float %4251, %4171
  %4253 = fmul fast float %4242, 2.000000e+00
  %4254 = fsub fast float 1.000000e+00, %4253
  %4255 = fmul fast float %4254, %4172
  %4256 = fadd fast float %4255, %4253
  %4257 = fmul fast float %4256, %4172
  br label %4258

; <label>:4258                                    ; preds = %4230, %4228, %4215, %4185, %4169
  %4259 = phi float [ %4170, %4169 ], [ %4247, %4230 ], [ %4170, %4228 ], [ %4225, %4215 ], [ %4195, %4185 ]
  %4260 = phi float [ %4171, %4169 ], [ %4252, %4230 ], [ %4171, %4228 ], [ %4226, %4215 ], [ %4196, %4185 ]
  %4261 = phi float [ %4172, %4169 ], [ %4257, %4230 ], [ %4172, %4228 ], [ %4227, %4215 ], [ %4197, %4185 ]
  %4262 = phi float [ %4173, %4169 ], [ %4173, %4230 ], [ %4173, %4228 ], [ %4173, %4215 ], [ %4207, %4185 ]
  %4263 = phi float [ %4174, %4169 ], [ %4174, %4230 ], [ %4174, %4228 ], [ %4174, %4215 ], [ %4208, %4185 ]
  %4264 = phi float [ %4175, %4169 ], [ %4175, %4230 ], [ %4175, %4228 ], [ %4175, %4215 ], [ %4209, %4185 ]
  %4265 = phi float [ %3357, %4169 ], [ %3357, %4230 ], [ %3357, %4228 ], [ %3357, %4215 ], [ %4200, %4185 ]
  %4266 = phi float [ %3361, %4169 ], [ %3361, %4230 ], [ %3361, %4228 ], [ %3361, %4215 ], [ %4212, %4185 ]
  %4267 = and i32 %4177, 12
  %4268 = icmp eq i32 %4267, 12
  br i1 %4268, label %4399, label %4269

; <label>:4269                                    ; preds = %4258
  %4270 = and i32 %4177, 2097184
  %4271 = icmp eq i32 %4270, 2097184
  %4272 = select i1 %4271, float %3659, float 0.000000e+00
  %4273 = and i32 %4177, 4194336
  %4274 = icmp eq i32 %4273, 4194336
  %4275 = select i1 %4274, float %3659, float 0.000000e+00
  %4276 = and i32 %4177, 8388640
  %4277 = icmp eq i32 %4276, 8388640
  %4278 = select i1 %4277, float %3659, float 0.000000e+00
  %4279 = and i32 %4177, 1024
  %4280 = icmp ne i32 %4279, 0
  %4281 = select i1 %4280, float %3659, float 0.000000e+00
  %4282 = and i32 %4177, 2048
  %4283 = icmp ne i32 %4282, 0
  %4284 = select i1 %4283, float %3659, float 0.000000e+00
  %4285 = and i32 %4177, 8192
  %4286 = icmp ne i32 %4285, 0
  %4287 = select i1 %4286, float %3659, float 0.000000e+00
  %4288 = icmp eq i32 %4267, 0
  br i1 %4288, label %4289, label %4323

; <label>:4289                                    ; preds = %4269
  %4290 = fsub fast float %3960, %3343
  %4291 = fsub fast float %3961, %3344
  %4292 = fmul fast float %4272, %4290
  %4293 = fmul fast float %4272, %4291
  %4294 = fadd fast float %4292, %3343
  %4295 = fadd fast float %4293, %3344
  %4296 = fsub fast float %3962, %3359
  %4297 = fmul fast float %4275, %4296
  %4298 = fadd fast float %4297, %3359
  %4299 = fsub fast float %3959, %3358
  %4300 = fmul fast float %4278, %4299
  %4301 = fadd fast float %4300, %3358
  %4302 = fsub fast float %4065, %3354
  %4303 = fsub fast float %4066, %3355
  %4304 = fsub fast float %4067, %3356
  %4305 = fmul fast float %4281, %4302
  %4306 = fmul fast float %4281, %4303
  %4307 = fmul fast float %4281, %4304
  %4308 = fadd fast float %4305, %3354
  %4309 = fadd fast float %4306, %3355
  %4310 = fadd fast float %4307, %3356
  %4311 = fsub fast float %4120, %3360
  %4312 = fmul fast float %4284, %4311
  %4313 = fadd fast float %4312, %3360
  %4314 = fsub fast float %4117, %3351
  %4315 = fsub fast float %4118, %3352
  %4316 = fsub fast float %4119, %3353
  %4317 = fmul fast float %4287, %4314
  %4318 = fmul fast float %4287, %4315
  %4319 = fmul fast float %4287, %4316
  %4320 = fadd fast float %4317, %3351
  %4321 = fadd fast float %4318, %3352
  %4322 = fadd fast float %4319, %3353
  br label %4399

; <label>:4323                                    ; preds = %4269
  %4324 = icmp eq i32 %4267, 4
  br i1 %4324, label %4325, label %4371

; <label>:4325                                    ; preds = %4323
  %4326 = fmul fast float %4272, %3960
  %4327 = fmul fast float %4272, %3961
  %4328 = fadd fast float %4326, %3343
  %4329 = fadd fast float %4327, %3344
  %4330 = call float @dx.op.binary.f32(i32 36, float %3359, float %3962)  ; FMin(a,b)
  %4331 = fsub fast float %4330, %3359
  %4332 = fmul fast float %4331, %4275
  %4333 = fadd fast float %4332, %3359
  %4334 = fadd fast float %3959, %3358
  %4335 = fmul fast float %4334, 0x3FF337FAE0000000
  %4336 = fmul fast float %3358, %3358
  %4337 = fmul fast float %3959, %3959
  %4338 = fadd fast float %4337, %4336
  %4339 = fmul fast float %4338, 0x3FE5152B00000000
  %4340 = fmul fast float %3358, 0xBFCC1F85E0000000
  %4341 = fmul fast float %4340, %3959
  %4342 = fadd fast float %4341, 0xBFE1363700000000
  %4343 = fadd fast float %4342, %4335
  %4344 = fsub fast float %4343, %4339
  %4345 = fmul fast float %4334, 0x3FBA6F0D00000000
  %4346 = fmul fast float %4338, 0x3FD0432880000000
  %4347 = fmul fast float %3358, 0xBFEF110800000000
  %4348 = fmul fast float %4347, %3959
  %4349 = fadd fast float %4348, 1.000000e+00
  %4350 = fsub fast float %4349, %4345
  %4351 = fadd fast float %4350, %4346
  %4352 = fdiv fast float %4344, %4351
  %4353 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4354 = fsub fast float %4353, %3358
  %4355 = fmul fast float %4354, %4278
  %4356 = fadd fast float %4355, %3358
  %4357 = fmul fast float %4281, %4065
  %4358 = fmul fast float %4281, %4066
  %4359 = fmul fast float %4281, %4067
  %4360 = fadd fast float %4357, %3354
  %4361 = fadd fast float %4358, %3355
  %4362 = fadd fast float %4359, %3356
  %4363 = fmul fast float %4284, %4120
  %4364 = fadd fast float %4363, %3360
  %4365 = fmul fast float %4287, %4117
  %4366 = fmul fast float %4287, %4118
  %4367 = fmul fast float %4287, %4119
  %4368 = fadd fast float %4365, %3351
  %4369 = fadd fast float %4366, %3352
  %4370 = fadd fast float %4367, %3353
  br label %4399

; <label>:4371                                    ; preds = %4323
  %4372 = icmp eq i32 %4267, 8
  br i1 %4372, label %4373, label %4399

; <label>:4373                                    ; preds = %4371
  %4374 = fmul fast float %4272, %3960
  %4375 = fmul fast float %4272, %3961
  %4376 = fadd fast float %4374, %3343
  %4377 = fadd fast float %4375, %3344
  %4378 = call float @dx.op.binary.f32(i32 36, float %3359, float %3962)  ; FMin(a,b)
  %4379 = fsub fast float %4378, %3359
  %4380 = fmul fast float %4379, %4275
  %4381 = fadd fast float %4380, %3359
  %4382 = fsub fast float %3959, %3358
  %4383 = fmul fast float %4278, %4382
  %4384 = fadd fast float %4383, %3358
  %4385 = fmul fast float %4281, %4065
  %4386 = fmul fast float %4281, %4066
  %4387 = fmul fast float %4281, %4067
  %4388 = fadd fast float %4385, %3354
  %4389 = fadd fast float %4386, %3355
  %4390 = fadd fast float %4387, %3356
  %4391 = fmul fast float %4284, %4120
  %4392 = fadd fast float %4391, %3360
  %4393 = fmul fast float %4287, %4117
  %4394 = fmul fast float %4287, %4118
  %4395 = fmul fast float %4287, %4119
  %4396 = fadd fast float %4393, %3351
  %4397 = fadd fast float %4394, %3352
  %4398 = fadd fast float %4395, %3353
  br label %4399

; <label>:4399                                    ; preds = %4373, %4371, %4325, %4289, %4258, %3658, %3362, %3342
  %4400 = phi float [ %3343, %4258 ], [ %3343, %3658 ], [ %3343, %3342 ], [ %3343, %3362 ], [ %4294, %4289 ], [ %4328, %4325 ], [ %3343, %4371 ], [ %4376, %4373 ]
  %4401 = phi float [ %3344, %4258 ], [ %3344, %3658 ], [ %3344, %3342 ], [ %3344, %3362 ], [ %4295, %4289 ], [ %4329, %4325 ], [ %3344, %4371 ], [ %4377, %4373 ]
  %4402 = phi float [ %4259, %4258 ], [ %3345, %3658 ], [ %3345, %3342 ], [ %3345, %3362 ], [ %4259, %4289 ], [ %4259, %4325 ], [ %4259, %4371 ], [ %4259, %4373 ]
  %4403 = phi float [ %4260, %4258 ], [ %3346, %3658 ], [ %3346, %3342 ], [ %3346, %3362 ], [ %4260, %4289 ], [ %4260, %4325 ], [ %4260, %4371 ], [ %4260, %4373 ]
  %4404 = phi float [ %4261, %4258 ], [ %3347, %3658 ], [ %3347, %3342 ], [ %3347, %3362 ], [ %4261, %4289 ], [ %4261, %4325 ], [ %4261, %4371 ], [ %4261, %4373 ]
  %4405 = phi float [ %4262, %4258 ], [ %3348, %3658 ], [ %3348, %3342 ], [ %3348, %3362 ], [ %4262, %4289 ], [ %4262, %4325 ], [ %4262, %4371 ], [ %4262, %4373 ]
  %4406 = phi float [ %4263, %4258 ], [ %3349, %3658 ], [ %3349, %3342 ], [ %3349, %3362 ], [ %4263, %4289 ], [ %4263, %4325 ], [ %4263, %4371 ], [ %4263, %4373 ]
  %4407 = phi float [ %4264, %4258 ], [ %3350, %3658 ], [ %3350, %3342 ], [ %3350, %3362 ], [ %4264, %4289 ], [ %4264, %4325 ], [ %4264, %4371 ], [ %4264, %4373 ]
  %4408 = phi float [ %3351, %4258 ], [ %3351, %3658 ], [ %3351, %3342 ], [ %3351, %3362 ], [ %4320, %4289 ], [ %4368, %4325 ], [ %3351, %4371 ], [ %4396, %4373 ]
  %4409 = phi float [ %3352, %4258 ], [ %3352, %3658 ], [ %3352, %3342 ], [ %3352, %3362 ], [ %4321, %4289 ], [ %4369, %4325 ], [ %3352, %4371 ], [ %4397, %4373 ]
  %4410 = phi float [ %3353, %4258 ], [ %3353, %3658 ], [ %3353, %3342 ], [ %3353, %3362 ], [ %4322, %4289 ], [ %4370, %4325 ], [ %3353, %4371 ], [ %4398, %4373 ]
  %4411 = phi float [ %3354, %4258 ], [ %3354, %3658 ], [ %3354, %3342 ], [ %3354, %3362 ], [ %4308, %4289 ], [ %4360, %4325 ], [ %3354, %4371 ], [ %4388, %4373 ]
  %4412 = phi float [ %3355, %4258 ], [ %3355, %3658 ], [ %3355, %3342 ], [ %3355, %3362 ], [ %4309, %4289 ], [ %4361, %4325 ], [ %3355, %4371 ], [ %4389, %4373 ]
  %4413 = phi float [ %3356, %4258 ], [ %3356, %3658 ], [ %3356, %3342 ], [ %3356, %3362 ], [ %4310, %4289 ], [ %4362, %4325 ], [ %3356, %4371 ], [ %4390, %4373 ]
  %4414 = phi float [ %4265, %4258 ], [ %3357, %3658 ], [ %3357, %3342 ], [ %3357, %3362 ], [ %4265, %4289 ], [ %4265, %4325 ], [ %4265, %4371 ], [ %4265, %4373 ]
  %4415 = phi float [ %3358, %4258 ], [ %3358, %3658 ], [ %3358, %3342 ], [ %3358, %3362 ], [ %4301, %4289 ], [ %4356, %4325 ], [ %3358, %4371 ], [ %4384, %4373 ]
  %4416 = phi float [ %3359, %4258 ], [ %3359, %3658 ], [ %3359, %3342 ], [ %3359, %3362 ], [ %4298, %4289 ], [ %4333, %4325 ], [ %3359, %4371 ], [ %4381, %4373 ]
  %4417 = phi float [ %3360, %4258 ], [ %3360, %3658 ], [ %3360, %3342 ], [ %3360, %3362 ], [ %4313, %4289 ], [ %4364, %4325 ], [ %3360, %4371 ], [ %4392, %4373 ]
  %4418 = phi float [ %4266, %4258 ], [ %3361, %3658 ], [ %3361, %3342 ], [ %3361, %3362 ], [ %4266, %4289 ], [ %4266, %4325 ], [ %4266, %4371 ], [ %4266, %4373 ]
  %4419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4420 = extractvalue %dx.types.CBufRet.f32 %4419, 0
  %4421 = call float @dx.op.dot2.f32(i32 54, float %4400, float %4401, float %4400, float %4401)  ; Dot2(ax,ay,bx,by)
  %4422 = fmul fast float %4421, 0x3FE3333340000000
  %4423 = fsub fast float 1.000000e+00, %4422
  %4424 = call float @dx.op.dot3.f32(i32 55, float %4400, float %4401, float %4423, float %4400, float %4401, float %4423)  ; Dot3(ax,ay,az,bx,by,bz)
  %4425 = call float @dx.op.unary.f32(i32 25, float %4424)  ; Rsqrt(value)
  %4426 = fmul fast float %4425, %4400
  %4427 = fmul fast float %4425, %4401
  %4428 = fmul fast float %4423, %4425
  %4429 = fmul fast float %4428, %104
  %4430 = fmul fast float %4428, %105
  %4431 = fmul fast float %4428, %106
  %4432 = fmul fast float %4426, %69
  %4433 = fmul fast float %4426, %70
  %4434 = fmul fast float %4426, %71
  %4435 = fadd fast float %4429, %4432
  %4436 = fadd fast float %4430, %4433
  %4437 = fadd fast float %4431, %4434
  %4438 = fmul fast float %116, %4427
  %4439 = fmul fast float %117, %4427
  %4440 = fmul fast float %118, %4427
  %4441 = fadd fast float %4435, %4438
  %4442 = fadd fast float %4436, %4439
  %4443 = fadd fast float %4437, %4440
  %4444 = call float @dx.op.dot3.f32(i32 55, float %4441, float %4442, float %4443, float %4441, float %4442, float %4443)  ; Dot3(ax,ay,az,bx,by,bz)
  %4445 = call float @dx.op.unary.f32(i32 25, float %4444)  ; Rsqrt(value)
  %4446 = fmul fast float %4441, %4445
  %4447 = fmul fast float %4442, %4445
  %4448 = fmul fast float %4443, %4445
  %4449 = and i32 %50, 1
  %4450 = icmp eq i32 %4449, 0
  br i1 %4450, label %4451, label %5043

; <label>:4451                                    ; preds = %4399
  %4452 = call float @dx.op.unary.f32(i32 83, float %152)  ; DerivCoarseX(value)
  %4453 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %4454 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4455 = call float @dx.op.unary.f32(i32 84, float %152)  ; DerivCoarseY(value)
  %4456 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %4457 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4458 = fadd fast float %4452, %152
  %4459 = fadd fast float %4453, %153
  %4460 = fadd fast float %4454, %154
  %4461 = fadd fast float %4455, %152
  %4462 = fadd fast float %4456, %153
  %4463 = fadd fast float %4457, %154
  %4464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4465 = extractvalue %dx.types.CBufRet.f32 %4464, 0
  %4466 = extractvalue %dx.types.CBufRet.f32 %4464, 1
  %4467 = extractvalue %dx.types.CBufRet.f32 %4464, 2
  %4468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4468, 2
  %4470 = extractvalue %dx.types.CBufRet.f32 %4468, 3
  %4471 = fmul fast float %4465, %97
  %4472 = fmul fast float %4471, %4469
  %4473 = fmul fast float %4466, %98
  %4474 = fmul fast float %4473, %4470
  %4475 = fptoui float %4472 to i32
  %4476 = fptoui float %4474 to i32
  %4477 = fadd fast float %4465, -1.000000e+00
  %4478 = fadd fast float %4466, -1.000000e+00
  %4479 = fptoui float %4477 to i32
  %4480 = fptoui float %4478 to i32
  %4481 = call i32 @dx.op.binary.i32(i32 40, i32 %4475, i32 %4479)  ; UMin(a,b)
  %4482 = call i32 @dx.op.binary.i32(i32 40, i32 %4476, i32 %4480)  ; UMin(a,b)
  %4483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4484 = extractvalue %dx.types.CBufRet.f32 %4483, 2
  %4485 = extractvalue %dx.types.CBufRet.f32 %4483, 3
  %4486 = fmul fast float %4484, %85
  %4487 = fsub fast float %4486, %4485
  %4488 = fadd fast float %4467, -1.000000e+00
  %4489 = call float @dx.op.binary.f32(i32 36, float %4487, float %4488)  ; FMin(a,b)
  %4490 = fptoui float %4489 to i32
  %4491 = fptoui float %4465 to i32
  %4492 = fptoui float %4466 to i32
  %4493 = mul i32 %4490, %4492
  %4494 = add i32 %4493, %4482
  %4495 = mul i32 %4494, %4491
  %4496 = add i32 %4495, %4481
  %4497 = shl i32 %4496, 2
  %4498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4497, i32 undef)  ; BufferLoad(srv,index,wot)
  %4499 = extractvalue %dx.types.ResRet.i32 %4498, 0
  %4500 = and i32 %4499, 1023
  %4501 = lshr i32 %4499, 10
  %4502 = icmp eq i32 %4500, 0
  br i1 %4502, label %5006, label %4503

; <label>:4503                                    ; preds = %4451
  %4504 = and i32 %4499, 1023
  br label %4505

; <label>:4505                                    ; preds = %4637, %4503
  %4506 = phi i32 [ %4587, %4637 ], [ 0, %4503 ]
  %4507 = phi float [ %4638, %4637 ], [ 0.000000e+00, %4503 ]
  %4508 = phi float [ %4639, %4637 ], [ %4420, %4503 ]
  %4509 = phi float [ %4640, %4637 ], [ %4418, %4503 ]
  %4510 = phi float [ %4641, %4637 ], [ %4411, %4503 ]
  %4511 = phi float [ %4642, %4637 ], [ %4412, %4503 ]
  %4512 = phi float [ %4643, %4637 ], [ %4413, %4503 ]
  %4513 = phi float [ %4644, %4637 ], [ 0.000000e+00, %4503 ]
  %4514 = phi float [ %4645, %4637 ], [ 0.000000e+00, %4503 ]
  %4515 = phi float [ %4646, %4637 ], [ %4408, %4503 ]
  %4516 = phi float [ %4647, %4637 ], [ %4409, %4503 ]
  %4517 = phi float [ %4648, %4637 ], [ %4410, %4503 ]
  %4518 = phi float [ %4649, %4637 ], [ %4405, %4503 ]
  %4519 = phi float [ %4650, %4637 ], [ %4406, %4503 ]
  %4520 = phi float [ %4651, %4637 ], [ %4407, %4503 ]
  %4521 = phi float [ %4652, %4637 ], [ %4446, %4503 ]
  %4522 = phi float [ %4653, %4637 ], [ %4447, %4503 ]
  %4523 = phi float [ %4654, %4637 ], [ %4448, %4503 ]
  %4524 = phi float [ %4655, %4637 ], [ %4416, %4503 ]
  %4525 = phi float [ %4656, %4637 ], [ %4415, %4503 ]
  %4526 = phi float [ %4657, %4637 ], [ 0.000000e+00, %4503 ]
  %4527 = phi float [ %4658, %4637 ], [ %4414, %4503 ]
  %4528 = phi float [ %4659, %4637 ], [ %4402, %4503 ]
  %4529 = phi float [ %4660, %4637 ], [ %4403, %4503 ]
  %4530 = phi float [ %4661, %4637 ], [ %4404, %4503 ]
  %4531 = add nuw nsw i32 %4506, %4501
  %4532 = shl i32 %4531, 2
  %4533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4532, i32 undef)  ; BufferLoad(srv,index,wot)
  %4534 = extractvalue %dx.types.ResRet.i32 %4533, 0
  %4535 = shl i32 %4534, 8
  %4536 = or i32 %4535, 48
  %4537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4536, i32 undef)  ; BufferLoad(srv,index,wot)
  %4538 = extractvalue %dx.types.ResRet.f32 %4537, 0
  %4539 = extractvalue %dx.types.ResRet.f32 %4537, 1
  %4540 = extractvalue %dx.types.ResRet.f32 %4537, 2
  %4541 = extractvalue %dx.types.ResRet.f32 %4537, 3
  %4542 = or i32 %4535, 64
  %4543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4542, i32 undef)  ; BufferLoad(srv,index,wot)
  %4544 = extractvalue %dx.types.ResRet.i32 %4543, 0
  %4545 = extractvalue %dx.types.ResRet.i32 %4543, 1
  %4546 = or i32 %4535, 80
  %4547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4546, i32 undef)  ; BufferLoad(srv,index,wot)
  %4548 = extractvalue %dx.types.ResRet.f32 %4547, 2
  %4549 = extractvalue %dx.types.ResRet.f32 %4547, 3
  %4550 = or i32 %4535, 96
  %4551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4550, i32 undef)  ; BufferLoad(srv,index,wot)
  %4552 = extractvalue %dx.types.ResRet.f32 %4551, 0
  %4553 = extractvalue %dx.types.ResRet.f32 %4551, 1
  %4554 = extractvalue %dx.types.ResRet.f32 %4551, 2
  %4555 = extractvalue %dx.types.ResRet.f32 %4551, 3
  %4556 = or i32 %4535, 112
  %4557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 2
  %4559 = or i32 %4535, 128
  %4560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4559, i32 undef)  ; BufferLoad(srv,index,wot)
  %4561 = extractvalue %dx.types.ResRet.f32 %4560, 0
  %4562 = extractvalue %dx.types.ResRet.f32 %4560, 1
  %4563 = extractvalue %dx.types.ResRet.f32 %4560, 2
  %4564 = extractvalue %dx.types.ResRet.f32 %4560, 3
  %4565 = or i32 %4535, 144
  %4566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4565, i32 undef)  ; BufferLoad(srv,index,wot)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = extractvalue %dx.types.ResRet.f32 %4566, 1
  %4569 = extractvalue %dx.types.ResRet.f32 %4566, 2
  %4570 = extractvalue %dx.types.ResRet.f32 %4566, 3
  %4571 = or i32 %4535, 160
  %4572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.ResRet.f32 %4572, 1
  %4575 = extractvalue %dx.types.ResRet.f32 %4572, 2
  %4576 = extractvalue %dx.types.ResRet.f32 %4572, 3
  %4577 = or i32 %4535, 192
  %4578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.i32 %4578, 0
  %4580 = or i32 %4535, 208
  %4581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4580, i32 undef)  ; BufferLoad(srv,index,wot)
  %4582 = extractvalue %dx.types.ResRet.f32 %4581, 0
  %4583 = or i32 %4535, 248
  %4584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.ResRet.f32 %4584, 1
  %4587 = add nuw nsw i32 %4506, 1
  %4588 = bitcast float %4541 to i32
  %4589 = and i32 %4588, 512
  %4590 = icmp eq i32 %4589, 0
  %4591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4535, i32 undef)  ; BufferLoad(srv,index,wot)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.f32 %4591, 1
  %4594 = extractvalue %dx.types.ResRet.f32 %4591, 2
  %4595 = extractvalue %dx.types.ResRet.f32 %4591, 3
  %4596 = call float @dx.op.dot4.f32(i32 56, float %4592, float %4593, float %4594, float %4595, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4597 = or i32 %4535, 16
  %4598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4597, i32 undef)  ; BufferLoad(srv,index,wot)
  %4599 = extractvalue %dx.types.ResRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.ResRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.ResRet.f32 %4598, 2
  %4602 = extractvalue %dx.types.ResRet.f32 %4598, 3
  %4603 = call float @dx.op.dot4.f32(i32 56, float %4599, float %4600, float %4601, float %4602, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4604 = or i32 %4535, 32
  %4605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4604, i32 undef)  ; BufferLoad(srv,index,wot)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.ResRet.f32 %4605, 2
  %4609 = extractvalue %dx.types.ResRet.f32 %4605, 3
  %4610 = call float @dx.op.dot4.f32(i32 56, float %4606, float %4607, float %4608, float %4609, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4611 = call float @dx.op.unary.f32(i32 27, float %4596)  ; Round_ni(value)
  %4612 = call float @dx.op.unary.f32(i32 6, float %4611)  ; FAbs(value)
  %4613 = call float @dx.op.unary.f32(i32 27, float %4603)  ; Round_ni(value)
  %4614 = call float @dx.op.unary.f32(i32 6, float %4613)  ; FAbs(value)
  %4615 = call float @dx.op.unary.f32(i32 6, float %4610)  ; FAbs(value)
  %4616 = call float @dx.op.unary.f32(i32 27, float %4615)  ; Round_ni(value)
  %4617 = fadd fast float %4614, %4612
  %4618 = fadd fast float %4617, %4616
  %4619 = fcmp fast oeq float %4618, 0.000000e+00
  %4620 = call float @dx.op.dot4.f32(i32 56, float %4592, float %4593, float %4594, float %4595, float %4458, float %4459, float %4460, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4621 = call float @dx.op.dot4.f32(i32 56, float %4599, float %4600, float %4601, float %4602, float %4458, float %4459, float %4460, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4622 = call float @dx.op.dot4.f32(i32 56, float %4592, float %4593, float %4594, float %4595, float %4461, float %4462, float %4463, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4623 = call float @dx.op.dot4.f32(i32 56, float %4599, float %4600, float %4601, float %4602, float %4461, float %4462, float %4463, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4624 = fsub fast float %4620, %4596
  %4625 = fsub fast float %4622, %4596
  %4626 = fsub fast float %4621, %4603
  %4627 = fsub fast float %4623, %4603
  %4628 = call float @dx.op.dot3.f32(i32 55, float %4538, float %4539, float %4540, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4629, 2
  %4631 = fadd fast float %4630, %4628
  %4632 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4629, 0
  %4634 = fcmp fast ogt float %4632, %4633
  %4635 = and i1 %4619, %4634
  %4636 = and i1 %4590, %4635
  br i1 %4636, label %4663, label %4637

; <label>:4637                                    ; preds = %4992, %4744, %4663, %4505
  %4638 = phi float [ %4507, %4663 ], [ %4747, %4744 ], [ %4747, %4992 ], [ %4507, %4505 ]
  %4639 = phi float [ %4508, %4663 ], [ %4508, %4744 ], [ %4968, %4992 ], [ %4508, %4505 ]
  %4640 = phi float [ %4509, %4663 ], [ %4509, %4744 ], [ %4966, %4992 ], [ %4509, %4505 ]
  %4641 = phi float [ %4510, %4663 ], [ %4510, %4744 ], [ %4944, %4992 ], [ %4510, %4505 ]
  %4642 = phi float [ %4511, %4663 ], [ %4511, %4744 ], [ %4945, %4992 ], [ %4511, %4505 ]
  %4643 = phi float [ %4512, %4663 ], [ %4512, %4744 ], [ %4946, %4992 ], [ %4512, %4505 ]
  %4644 = phi float [ %4513, %4663 ], [ %4513, %4744 ], [ %4871, %4992 ], [ %4513, %4505 ]
  %4645 = phi float [ %4514, %4663 ], [ %4514, %4744 ], [ %4869, %4992 ], [ %4514, %4505 ]
  %4646 = phi float [ %4515, %4663 ], [ %4515, %4744 ], [ %4914, %4992 ], [ %4515, %4505 ]
  %4647 = phi float [ %4516, %4663 ], [ %4516, %4744 ], [ %4915, %4992 ], [ %4516, %4505 ]
  %4648 = phi float [ %4517, %4663 ], [ %4517, %4744 ], [ %4916, %4992 ], [ %4517, %4505 ]
  %4649 = phi float [ %4518, %4663 ], [ %4518, %4744 ], [ %5002, %4992 ], [ %4518, %4505 ]
  %4650 = phi float [ %4519, %4663 ], [ %4519, %4744 ], [ %5003, %4992 ], [ %4519, %4505 ]
  %4651 = phi float [ %4520, %4663 ], [ %4520, %4744 ], [ %5004, %4992 ], [ %4520, %4505 ]
  %4652 = phi float [ %4521, %4663 ], [ %4521, %4744 ], [ %4850, %4992 ], [ %4521, %4505 ]
  %4653 = phi float [ %4522, %4663 ], [ %4522, %4744 ], [ %4851, %4992 ], [ %4522, %4505 ]
  %4654 = phi float [ %4523, %4663 ], [ %4523, %4744 ], [ %4852, %4992 ], [ %4523, %4505 ]
  %4655 = phi float [ %4524, %4663 ], [ %4524, %4744 ], [ %4924, %4992 ], [ %4524, %4505 ]
  %4656 = phi float [ %4525, %4663 ], [ %4525, %4744 ], [ %4921, %4992 ], [ %4525, %4505 ]
  %4657 = phi float [ %4526, %4663 ], [ %4526, %4744 ], [ %4918, %4992 ], [ %4526, %4505 ]
  %4658 = phi float [ %4527, %4663 ], [ %4527, %4744 ], [ %4867, %4992 ], [ %4527, %4505 ]
  %4659 = phi float [ %4528, %4663 ], [ %4528, %4744 ], [ %4862, %4992 ], [ %4528, %4505 ]
  %4660 = phi float [ %4529, %4663 ], [ %4529, %4744 ], [ %4863, %4992 ], [ %4529, %4505 ]
  %4661 = phi float [ %4530, %4663 ], [ %4530, %4744 ], [ %4864, %4992 ], [ %4530, %4505 ]
  %4662 = icmp eq i32 %4587, %4504
  br i1 %4662, label %5005, label %4505

; <label>:4663                                    ; preds = %4505
  %4664 = extractvalue %dx.types.ResRet.f32 %4557, 3
  %4665 = extractvalue %dx.types.ResRet.f32 %4557, 1
  %4666 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4667 = extractvalue %dx.types.ResRet.f32 %4547, 1
  %4668 = extractvalue %dx.types.ResRet.f32 %4547, 0
  %4669 = extractvalue %dx.types.ResRet.i32 %4543, 3
  %4670 = extractvalue %dx.types.ResRet.i32 %4543, 2
  %4671 = add i32 %4669, 0
  %4672 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4671, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4674 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4672, %dx.types.Handle %4673, float %4596, float %4603, float undef, float undef, i32 0, i32 0, i32 undef, float %4624, float %4626, float undef, float %4625, float %4627, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4675 = extractvalue %dx.types.ResRet.f32 %4674, 0
  %4676 = fmul fast float %4675, %4668
  %4677 = fadd fast float %4676, %4667
  %4678 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4679 = fmul fast float %4596, %4552
  %4680 = call float @dx.op.tertiary.f32(i32 46, float %4553, float %4603, float %4679)  ; FMad(a,b,c)
  %4681 = fadd fast float %4680, %4666
  %4682 = fmul fast float %4596, %4554
  %4683 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4603, float %4682)  ; FMad(a,b,c)
  %4684 = fadd fast float %4683, %4665
  %4685 = fmul fast float %4624, %4552
  %4686 = call float @dx.op.tertiary.f32(i32 46, float %4553, float %4626, float %4685)  ; FMad(a,b,c)
  %4687 = fmul fast float %4624, %4554
  %4688 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4626, float %4687)  ; FMad(a,b,c)
  %4689 = fmul fast float %4625, %4552
  %4690 = call float @dx.op.tertiary.f32(i32 46, float %4553, float %4627, float %4689)  ; FMad(a,b,c)
  %4691 = fmul fast float %4625, %4554
  %4692 = call float @dx.op.tertiary.f32(i32 46, float %4555, float %4627, float %4691)  ; FMad(a,b,c)
  %4693 = add i32 %4670, 0
  %4694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4693, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4695 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4694, %dx.types.Handle %4673, float %4681, float %4684, float undef, float undef, i32 0, i32 0, i32 undef, float %4686, float %4688, float undef, float %4690, float %4692, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4696 = extractvalue %dx.types.ResRet.f32 %4695, 0
  %4697 = and i32 %4588, 1024
  %4698 = icmp ne i32 %4697, 0
  %4699 = fcmp fast ogt float %4696, 0x3FE0101020000000
  %4700 = uitofp i1 %4699 to float
  %4701 = select i1 %4698, float %4700, float %4696
  %4702 = and i32 %4588, 8192
  %4703 = icmp ne i32 %4702, 0
  %4704 = select i1 %4703, float %4664, float 1.000000e+00
  %4705 = fmul fast float %4596, 2.000000e+00
  %4706 = fadd fast float %4705, -1.000000e+00
  %4707 = call float @dx.op.unary.f32(i32 6, float %4706)  ; FAbs(value)
  %4708 = fmul fast float %4707, %4585
  %4709 = fsub fast float %4708, %4585
  %4710 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4711 = fmul fast float %4603, 2.000000e+00
  %4712 = fadd fast float %4711, -1.000000e+00
  %4713 = call float @dx.op.unary.f32(i32 6, float %4712)  ; FAbs(value)
  %4714 = fmul fast float %4713, %4586
  %4715 = fsub fast float %4714, %4586
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = fmul fast float %4615, %4548
  %4718 = fsub fast float %4717, %4548
  %4719 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4720 = fmul fast float %4678, %4704
  %4721 = fmul fast float %4720, %4675
  %4722 = fmul fast float %4721, %4710
  %4723 = fmul fast float %4722, %4701
  %4724 = fmul fast float %4723, %4716
  %4725 = fmul fast float %4724, %4719
  %4726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4727 = extractvalue %dx.types.CBufRet.f32 %4726, 1
  %4728 = extractvalue %dx.types.CBufRet.f32 %4726, 0
  %4729 = fsub fast float %4632, %4728
  %4730 = fmul fast float %4729, %4727
  %4731 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4732 = fmul fast float %4725, %4549
  %4733 = fadd fast float %4725, %4549
  %4734 = fmul fast float %4733, %4558
  %4735 = fsub fast float %4734, %4558
  %4736 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4737 = and i32 %4588, 128
  %4738 = icmp ne i32 %4737, 0
  %4739 = select i1 %4738, float %4736, float %4732
  %4740 = fmul fast float %4739, %4731
  %4741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.f32 %4741, 0
  %4743 = fcmp fast ugt float %4740, %4742
  br i1 %4743, label %4744, label %4637

; <label>:4744                                    ; preds = %4663
  %4745 = select i1 %4703, float %4740, float 0.000000e+00
  %4746 = fadd fast float %4745, %4507
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  br i1 %4703, label %4637, label %4748

; <label>:4748                                    ; preds = %4744
  %4749 = and i32 %4588, 4
  %4750 = and i32 %4588, 8
  %4751 = add i32 %4544, 0
  %4752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4751, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4754 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4752, %dx.types.Handle %4753, float %4681, float %4684, float undef, float undef, i32 0, i32 0, i32 undef, float %4686, float %4688, float undef, float %4690, float %4692, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4755 = extractvalue %dx.types.ResRet.f32 %4754, 0
  %4756 = extractvalue %dx.types.ResRet.f32 %4754, 1
  %4757 = extractvalue %dx.types.ResRet.f32 %4754, 2
  %4758 = extractvalue %dx.types.ResRet.f32 %4754, 3
  %4759 = bitcast float %4570 to i32
  %4760 = and i32 %4759, 255
  %4761 = uitofp i32 %4760 to float
  %4762 = lshr i32 %4759, 8
  %4763 = and i32 %4762, 255
  %4764 = uitofp i32 %4763 to float
  %4765 = fmul fast float %4758, %4761
  %4766 = fadd fast float %4765, %4764
  %4767 = fmul fast float %4766, 0x3F70101000000000
  %4768 = add i32 %4545, 0
  %4769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4768, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4770 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4769, %dx.types.Handle %4753, float %4681, float %4684, float undef, float undef, i32 0, i32 0, i32 undef, float %4686, float %4688, float undef, float %4690, float %4692, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4771 = extractvalue %dx.types.ResRet.f32 %4770, 0
  %4772 = extractvalue %dx.types.ResRet.f32 %4770, 1
  %4773 = extractvalue %dx.types.ResRet.f32 %4770, 2
  %4774 = extractvalue %dx.types.ResRet.f32 %4770, 3
  %4775 = bitcast float %4564 to i32
  %4776 = and i32 %4775, 255
  %4777 = uitofp i32 %4776 to float
  %4778 = lshr i32 %4775, 8
  %4779 = and i32 %4778, 255
  %4780 = uitofp i32 %4779 to float
  %4781 = lshr i32 %4775, 16
  %4782 = and i32 %4781, 255
  %4783 = uitofp i32 %4782 to float
  %4784 = fmul fast float %4783, 0x3F70101000000000
  %4785 = fmul fast float %4771, %4777
  %4786 = fadd fast float %4785, %4780
  %4787 = fmul fast float %4786, 0x3F70101000000000
  %4788 = fadd fast float %4772, -5.000000e-01
  %4789 = fadd fast float %4774, -5.000000e-01
  %4790 = fmul fast float %4788, %4784
  %4791 = fmul fast float %4789, %4784
  %4792 = fadd fast float %4790, 5.000000e-01
  %4793 = fadd fast float %4791, 5.000000e-01
  %4794 = fmul fast float %4755, %4573
  %4795 = fmul fast float %4756, %4574
  %4796 = fmul fast float %4757, %4575
  %4797 = fmul fast float %4792, 2.000000e+00
  %4798 = fadd fast float %4797, -1.000000e+00
  %4799 = fmul fast float %4793, 2.000000e+00
  %4800 = fadd fast float %4799, -1.000000e+00
  %4801 = fadd fast float %4798, %4800
  %4802 = fmul fast float %4801, 5.000000e-01
  %4803 = fsub fast float %4798, %4800
  %4804 = fmul fast float %4803, 5.000000e-01
  %4805 = call float @dx.op.unary.f32(i32 6, float %4802)  ; FAbs(value)
  %4806 = fsub fast float 1.000000e+00, %4805
  %4807 = call float @dx.op.unary.f32(i32 6, float %4804)  ; FAbs(value)
  %4808 = fsub fast float %4806, %4807
  %4809 = call float @dx.op.dot3.f32(i32 55, float %4802, float %4804, float %4808, float %4802, float %4804, float %4808)  ; Dot3(ax,ay,az,bx,by,bz)
  %4810 = call float @dx.op.unary.f32(i32 25, float %4809)  ; Rsqrt(value)
  %4811 = fmul fast float %4802, %4810
  %4812 = fmul fast float %4804, %4810
  %4813 = fmul fast float %4810, %4808
  %4814 = fmul fast float %4813, %4538
  %4815 = fmul fast float %4813, %4539
  %4816 = fmul fast float %4813, %4540
  %4817 = fmul fast float %4811, %4561
  %4818 = fmul fast float %4811, %4562
  %4819 = fmul fast float %4811, %4563
  %4820 = fadd fast float %4817, %4814
  %4821 = fadd fast float %4818, %4815
  %4822 = fadd fast float %4819, %4816
  %4823 = fmul fast float %4812, %4567
  %4824 = fmul fast float %4812, %4568
  %4825 = fmul fast float %4812, %4569
  %4826 = fadd fast float %4820, %4823
  %4827 = fadd fast float %4821, %4824
  %4828 = fadd fast float %4822, %4825
  %4829 = call float @dx.op.dot3.f32(i32 55, float %4826, float %4827, float %4828, float %4826, float %4827, float %4828)  ; Dot3(ax,ay,az,bx,by,bz)
  %4830 = call float @dx.op.unary.f32(i32 25, float %4829)  ; Rsqrt(value)
  %4831 = fmul fast float %4826, %4830
  %4832 = fmul fast float %4827, %4830
  %4833 = fmul fast float %4828, %4830
  %4834 = icmp ne i32 %4750, 0
  %4835 = select i1 %4834, float 1.000000e+00, float 0.000000e+00
  %4836 = fmul fast float %4740, %4835
  %4837 = and i32 %4588, 1
  %4838 = icmp eq i32 %4837, 0
  br i1 %4838, label %4839, label %4843

; <label>:4839                                    ; preds = %4748
  %4840 = fsub fast float %4831, %4521
  %4841 = fsub fast float %4832, %4522
  %4842 = fsub fast float %4833, %4523
  br label %4843

; <label>:4843                                    ; preds = %4839, %4748
  %4844 = phi float [ %4840, %4839 ], [ %4831, %4748 ]
  %4845 = phi float [ %4841, %4839 ], [ %4832, %4748 ]
  %4846 = phi float [ %4842, %4839 ], [ %4833, %4748 ]
  %4847 = fmul float %4846, %4836
  %4848 = fmul float %4845, %4836
  %4849 = fmul float %4844, %4836
  %4850 = fadd fast float %4849, %4521
  %4851 = fadd fast float %4848, %4522
  %4852 = fadd fast float %4847, %4523
  %4853 = icmp ne i32 %4749, 0
  %4854 = select i1 %4853, float 1.000000e+00, float 0.000000e+00
  %4855 = fmul fast float %4740, %4854
  %4856 = fsub fast float %4794, %4528
  %4857 = fsub fast float %4795, %4529
  %4858 = fsub fast float %4796, %4530
  %4859 = fmul fast float %4856, %4855
  %4860 = fmul fast float %4857, %4855
  %4861 = fmul fast float %4858, %4855
  %4862 = fadd fast float %4859, %4528
  %4863 = fadd fast float %4860, %4529
  %4864 = fadd fast float %4861, %4530
  %4865 = fsub fast float %4767, %4527
  %4866 = fmul fast float %4865, %4855
  %4867 = fadd fast float %4866, %4527
  %4868 = fmul fast float %4855, %4514
  %4869 = fsub fast float %4514, %4868
  %4870 = fmul fast float %4855, %4513
  %4871 = fsub fast float %4513, %4870
  %4872 = bitcast float %4582 to i32
  %4873 = lshr i32 %4872, 16
  %4874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4873)  ; LegacyF16ToF32(value)
  %4875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %4876 = extractvalue %dx.types.ResRet.i32 %4875, 0
  %4877 = and i32 %4876, 1
  %4878 = icmp eq i32 %4877, 0
  br i1 %4878, label %4879, label %4904

; <label>:4879                                    ; preds = %4843
  %4880 = fadd fast float %4767, 0xBFB99999A0000000
  %4881 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4882 = fmul fast float %4881, 0x3FF1C71C80000000
  %4883 = fsub fast float 1.000000e+00, %4882
  %4884 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4885 = fmul fast float %4884, %4794
  %4886 = fmul fast float %4884, %4795
  %4887 = fmul fast float %4884, %4796
  %4888 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4889 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4890 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4891 = call float @dx.op.binary.f32(i32 35, float %4889, float %4890)  ; FMax(a,b)
  %4892 = call float @dx.op.binary.f32(i32 35, float %4888, float %4891)  ; FMax(a,b)
  %4893 = fcmp fast ogt float %4892, 0.000000e+00
  %4894 = bitcast float %4892 to i32
  %4895 = sub nsw i32 2129859010, %4894
  %4896 = bitcast i32 %4895 to float
  %4897 = select i1 %4893, float %4896, float 0.000000e+00
  %4898 = fmul fast float %4888, %4874
  %4899 = fmul fast float %4889, %4874
  %4900 = fmul fast float %4890, %4874
  %4901 = fmul fast float %4898, %4897
  %4902 = fmul fast float %4899, %4897
  %4903 = fmul fast float %4900, %4897
  br label %4904

; <label>:4904                                    ; preds = %4879, %4843
  %4905 = phi float [ %4874, %4843 ], [ %4901, %4879 ]
  %4906 = phi float [ %4874, %4843 ], [ %4902, %4879 ]
  %4907 = phi float [ %4874, %4843 ], [ %4903, %4879 ]
  %4908 = fsub fast float %4905, %4515
  %4909 = fsub fast float %4906, %4516
  %4910 = fsub fast float %4907, %4517
  %4911 = fmul fast float %4908, %4855
  %4912 = fmul fast float %4909, %4855
  %4913 = fmul fast float %4910, %4855
  %4914 = fadd fast float %4911, %4515
  %4915 = fadd fast float %4912, %4516
  %4916 = fadd fast float %4913, %4517
  %4917 = fadd fast float %4740, %4526
  %4918 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4919 = fsub fast float %4787, %4525
  %4920 = fmul fast float %4919, %4836
  %4921 = fadd fast float %4920, %4525
  %4922 = fsub fast float %4773, %4524
  %4923 = fmul fast float %4922, %4836
  %4924 = fadd fast float %4923, %4524
  br i1 %4838, label %4933, label %4925

; <label>:4925                                    ; preds = %4904
  %4926 = and i32 %4588, 32768
  %4927 = icmp eq i32 %4926, 0
  br i1 %4927, label %4943, label %4928

; <label>:4928                                    ; preds = %4925
  %4929 = fmul fast float %4836, 1.270000e+02
  %4930 = fadd fast float %4929, %4510
  %4931 = fadd fast float %4929, %4511
  %4932 = fadd fast float %4929, %4512
  br label %4943

; <label>:4933                                    ; preds = %4904
  %4934 = fsub fast float 1.270000e+02, %4510
  %4935 = fsub fast float 1.270000e+02, %4511
  %4936 = fsub fast float 1.270000e+02, %4512
  %4937 = fmul fast float %4836, %4934
  %4938 = fmul fast float %4836, %4935
  %4939 = fmul fast float %4836, %4936
  %4940 = fadd fast float %4937, %4510
  %4941 = fadd fast float %4938, %4511
  %4942 = fadd fast float %4939, %4512
  br label %4943

; <label>:4943                                    ; preds = %4933, %4928, %4925
  %4944 = phi float [ %4930, %4928 ], [ %4510, %4925 ], [ %4940, %4933 ]
  %4945 = phi float [ %4931, %4928 ], [ %4511, %4925 ], [ %4941, %4933 ]
  %4946 = phi float [ %4932, %4928 ], [ %4512, %4925 ], [ %4942, %4933 ]
  %4947 = call float @dx.op.dot3.f32(i32 55, float %4794, float %4795, float %4796, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.f32 %4948, 0
  %4950 = extractvalue %dx.types.CBufRet.f32 %4948, 1
  %4951 = fmul fast float %4950, %4947
  %4952 = fadd fast float %4951, %4949
  %4953 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4954 = bitcast float %4576 to i32
  %4955 = and i32 %4954, 65535
  %4956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4955)  ; LegacyF16ToF32(value)
  %4957 = lshr i32 %4954, 16
  %4958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4957)  ; LegacyF16ToF32(value)
  %4959 = fcmp fast oge float %4956, 0.000000e+00
  %4960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.f32 %4960, 0
  %4962 = select i1 %4959, float %4956, float %4961
  %4963 = fadd fast float %4962, %4958
  %4964 = fsub fast float %4953, %4509
  %4965 = fmul fast float %4964, %4740
  %4966 = fadd fast float %4965, %4509
  %4967 = fmul fast float %4963, %4740
  %4968 = call float @dx.op.binary.f32(i32 35, float %4508, float %4967)  ; FMax(a,b)
  %4969 = and i32 %4588, 16
  %4970 = icmp eq i32 %4969, 0
  br i1 %4970, label %4992, label %4971

; <label>:4971                                    ; preds = %4943
  %4972 = add i32 %4579, 0
  %4973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4972, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4974 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4973, %dx.types.Handle %4753, float %4681, float %4684, float undef, float undef, i32 0, i32 0, i32 undef, float %4686, float %4688, float undef, float %4690, float %4692, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4975 = extractvalue %dx.types.ResRet.f32 %4974, 0
  %4976 = extractvalue %dx.types.ResRet.f32 %4974, 1
  %4977 = extractvalue %dx.types.ResRet.f32 %4974, 2
  %4978 = and i32 %4872, 65535
  %4979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4978)  ; LegacyF16ToF32(value)
  %4980 = fmul fast float %4975, %4573
  %4981 = fmul fast float %4976, %4574
  %4982 = fmul fast float %4977, %4575
  %4983 = and i32 %4588, 16384
  %4984 = icmp ne i32 %4983, 0
  %4985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.f32 %4985, 0
  %4987 = select i1 %4984, float %4986, float 1.000000e+00
  %4988 = fmul fast float %4987, %4979
  %4989 = fmul fast float %4980, %4988
  %4990 = fmul fast float %4981, %4988
  %4991 = fmul fast float %4982, %4988
  br label %4992

; <label>:4992                                    ; preds = %4971, %4943
  %4993 = phi float [ %4989, %4971 ], [ 0.000000e+00, %4943 ]
  %4994 = phi float [ %4990, %4971 ], [ 0.000000e+00, %4943 ]
  %4995 = phi float [ %4991, %4971 ], [ 0.000000e+00, %4943 ]
  %4996 = fsub fast float %4993, %4518
  %4997 = fsub fast float %4994, %4519
  %4998 = fsub fast float %4995, %4520
  %4999 = fmul fast float %4996, %4740
  %5000 = fmul fast float %4997, %4740
  %5001 = fmul fast float %4998, %4740
  %5002 = fadd fast float %4999, %4518
  %5003 = fadd fast float %5000, %4519
  %5004 = fadd fast float %5001, %4520
  br label %4637

; <label>:5005                                    ; preds = %4637
  br label %5006

; <label>:5006                                    ; preds = %5005, %4451
  %5007 = phi float [ 0.000000e+00, %4451 ], [ %4638, %5005 ]
  %5008 = phi float [ %4420, %4451 ], [ %4639, %5005 ]
  %5009 = phi float [ %4418, %4451 ], [ %4640, %5005 ]
  %5010 = phi float [ %4411, %4451 ], [ %4641, %5005 ]
  %5011 = phi float [ %4412, %4451 ], [ %4642, %5005 ]
  %5012 = phi float [ %4413, %4451 ], [ %4643, %5005 ]
  %5013 = phi float [ 0.000000e+00, %4451 ], [ %4644, %5005 ]
  %5014 = phi float [ 0.000000e+00, %4451 ], [ %4645, %5005 ]
  %5015 = phi float [ %4408, %4451 ], [ %4646, %5005 ]
  %5016 = phi float [ %4409, %4451 ], [ %4647, %5005 ]
  %5017 = phi float [ %4410, %4451 ], [ %4648, %5005 ]
  %5018 = phi float [ %4405, %4451 ], [ %4649, %5005 ]
  %5019 = phi float [ %4406, %4451 ], [ %4650, %5005 ]
  %5020 = phi float [ %4407, %4451 ], [ %4651, %5005 ]
  %5021 = phi float [ %4446, %4451 ], [ %4652, %5005 ]
  %5022 = phi float [ %4447, %4451 ], [ %4653, %5005 ]
  %5023 = phi float [ %4448, %4451 ], [ %4654, %5005 ]
  %5024 = phi float [ %4416, %4451 ], [ %4655, %5005 ]
  %5025 = phi float [ %4415, %4451 ], [ %4656, %5005 ]
  %5026 = phi float [ 0.000000e+00, %4451 ], [ %4657, %5005 ]
  %5027 = phi float [ %4414, %4451 ], [ %4658, %5005 ]
  %5028 = phi float [ %4402, %4451 ], [ %4659, %5005 ]
  %5029 = phi float [ %4403, %4451 ], [ %4660, %5005 ]
  %5030 = phi float [ %4404, %4451 ], [ %4661, %5005 ]
  %5031 = call float @dx.op.dot3.f32(i32 55, float %5021, float %5022, float %5023, float %5021, float %5022, float %5023)  ; Dot3(ax,ay,az,bx,by,bz)
  %5032 = call float @dx.op.unary.f32(i32 25, float %5031)  ; Rsqrt(value)
  %5033 = fmul fast float %5032, %5021
  %5034 = fmul fast float %5032, %5022
  %5035 = fmul fast float %5032, %5023
  %5036 = fadd fast float %5026, %1243
  %5037 = call float @dx.op.unary.f32(i32 7, float %5036)  ; Saturate(value)
  %5038 = call float @dx.op.dot3.f32(i32 55, float %5033, float %5034, float %5035, float %5033, float %5034, float %5035)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = call float @dx.op.unary.f32(i32 25, float %5038)  ; Rsqrt(value)
  %5040 = fmul fast float %5039, %5033
  %5041 = fmul fast float %5039, %5034
  %5042 = fmul fast float %5039, %5035
  br label %5043

; <label>:5043                                    ; preds = %5006, %4399
  %5044 = phi float [ %5040, %5006 ], [ %4446, %4399 ]
  %5045 = phi float [ %5041, %5006 ], [ %4447, %4399 ]
  %5046 = phi float [ %5042, %5006 ], [ %4448, %4399 ]
  %5047 = phi float [ %5028, %5006 ], [ %4402, %4399 ]
  %5048 = phi float [ %5029, %5006 ], [ %4403, %4399 ]
  %5049 = phi float [ %5030, %5006 ], [ %4404, %4399 ]
  %5050 = phi float [ %5015, %5006 ], [ %4408, %4399 ]
  %5051 = phi float [ %5016, %5006 ], [ %4409, %4399 ]
  %5052 = phi float [ %5017, %5006 ], [ %4410, %4399 ]
  %5053 = phi float [ %5018, %5006 ], [ %4405, %4399 ]
  %5054 = phi float [ %5019, %5006 ], [ %4406, %4399 ]
  %5055 = phi float [ %5020, %5006 ], [ %4407, %4399 ]
  %5056 = phi float [ %5010, %5006 ], [ %4411, %4399 ]
  %5057 = phi float [ %5011, %5006 ], [ %4412, %4399 ]
  %5058 = phi float [ %5012, %5006 ], [ %4413, %4399 ]
  %5059 = phi float [ %5027, %5006 ], [ %4414, %4399 ]
  %5060 = phi float [ %5037, %5006 ], [ %1243, %4399 ]
  %5061 = phi float [ %5025, %5006 ], [ %4415, %4399 ]
  %5062 = phi float [ %5024, %5006 ], [ %4416, %4399 ]
  %5063 = phi float [ %5014, %5006 ], [ 0.000000e+00, %4399 ]
  %5064 = phi float [ %5013, %5006 ], [ 0.000000e+00, %4399 ]
  %5065 = phi float [ %5007, %5006 ], [ 0.000000e+00, %4399 ]
  %5066 = phi float [ %5008, %5006 ], [ %4420, %4399 ]
  %5067 = phi float [ %5009, %5006 ], [ %4418, %4399 ]
  %5068 = fadd fast float %5059, 0xBFB99999A0000000
  %5069 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5070 = fmul fast float %5069, 0x3FF1C71C80000000
  %5071 = call float @dx.op.binary.f32(i32 36, float %5059, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5072 = fsub fast float 1.000000e+00, %5070
  %5073 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5074 = fmul fast float %5073, %5047
  %5075 = fmul fast float %5073, %5048
  %5076 = fmul fast float %5073, %5049
  %5077 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5078 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5079 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5080 = fmul fast float %5070, %5047
  %5081 = fmul fast float %5070, %5048
  %5082 = fmul fast float %5070, %5049
  %5083 = fadd fast float %5080, %5071
  %5084 = fadd fast float %5081, %5071
  %5085 = fadd fast float %5082, %5071
  %5086 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5087 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5088 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5089 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %5091 = extractvalue %dx.types.ResRet.i32 %5090, 0
  %5092 = and i32 %5091, 1
  %5093 = icmp eq i32 %5092, 0
  br i1 %5093, label %5108, label %5094

; <label>:5094                                    ; preds = %5043
  %5095 = call float @dx.op.binary.f32(i32 35, float %5078, float %5079)  ; FMax(a,b)
  %5096 = call float @dx.op.binary.f32(i32 35, float %5077, float %5095)  ; FMax(a,b)
  %5097 = fcmp fast ogt float %5096, 0.000000e+00
  %5098 = bitcast float %5096 to i32
  %5099 = sub nsw i32 2129859010, %5098
  %5100 = bitcast i32 %5099 to float
  %5101 = select i1 %5097, float %5100, float 0.000000e+00
  %5102 = fmul fast float %5077, %5050
  %5103 = fmul fast float %5078, %5051
  %5104 = fmul fast float %5079, %5052
  %5105 = fmul fast float %5102, %5101
  %5106 = fmul fast float %5103, %5101
  %5107 = fmul fast float %5104, %5101
  br label %5108

; <label>:5108                                    ; preds = %5094, %5043
  %5109 = phi float [ %5105, %5094 ], [ %5050, %5043 ]
  %5110 = phi float [ %5106, %5094 ], [ %5051, %5043 ]
  %5111 = phi float [ %5107, %5094 ], [ %5052, %5043 ]
  %5112 = call float @dx.op.binary.f32(i32 36, float %5056, float 1.270000e+02)  ; FMin(a,b)
  %5113 = call float @dx.op.binary.f32(i32 36, float %5057, float 1.270000e+02)  ; FMin(a,b)
  %5114 = call float @dx.op.binary.f32(i32 36, float %5058, float 1.270000e+02)  ; FMin(a,b)
  %5115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5116 = extractvalue %dx.types.CBufRet.i32 %5115, 3
  %5117 = and i32 %5116, 8
  %5118 = icmp ne i32 %5117, 0
  %5119 = call float @dx.op.binary.f32(i32 35, float %5077, float %5047)  ; FMax(a,b)
  %5120 = call float @dx.op.binary.f32(i32 35, float %5078, float %5047)  ; FMax(a,b)
  %5121 = call float @dx.op.binary.f32(i32 35, float %5079, float %5047)  ; FMax(a,b)
  %5122 = call float @dx.op.dot3.f32(i32 55, float %5077, float %5078, float %5079, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5123 = select i1 %213, float %5047, float %5077
  %5124 = select i1 %213, float %5122, float %5078
  %5125 = select i1 %213, float 1.000000e+00, float %5079
  %5126 = select i1 %5118, float %5119, float %5123
  %5127 = select i1 %5118, float %5120, float %5124
  %5128 = select i1 %5118, float %5121, float %5125
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5110, float %5111, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = select i1 %213, float %5129, float %5109
  %5131 = select i1 %213, float %5129, float %5110
  %5132 = select i1 %213, float %5129, float %5111
  %5133 = and i32 %189, 3
  %5134 = select i1 %183, i32 %5133, i32 0
  %5135 = icmp eq i32 %5134, 1
  br i1 %5135, label %5136, label %5212

; <label>:5136                                    ; preds = %5108
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = extractvalue %dx.types.CBufRet.f32 %5137, 1
  %5140 = fadd fast float %5138, %152
  %5141 = fadd fast float %5139, %153
  %5142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.f32 %5142, 0
  %5144 = extractvalue %dx.types.CBufRet.f32 %5142, 1
  %5145 = fsub fast float %5140, %5143
  %5146 = fsub fast float %5141, %5144
  %5147 = fmul fast float %5145, %5145
  %5148 = fmul fast float %5146, %5146
  %5149 = fadd fast float %5147, %5148
  %5150 = call float @dx.op.unary.f32(i32 24, float %5149)  ; Sqrt(value)
  %5151 = extractvalue %dx.types.CBufRet.f32 %5142, 2
  %5152 = fcmp fast olt float %5150, %5151
  br i1 %5152, label %5153, label %5206

; <label>:5153                                    ; preds = %5136
  %5154 = extractvalue %dx.types.CBufRet.f32 %5137, 2
  %5155 = fadd fast float %5154, %154
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.CBufRet.f32 %5156, 1
  %5163 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5164 = extractvalue %dx.types.CBufRet.f32 %5160, 1
  %5165 = extractvalue %dx.types.CBufRet.f32 %5156, 3
  %5166 = extractvalue %dx.types.CBufRet.f32 %5158, 3
  %5167 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5168 = fadd fast float %5165, %5140
  %5169 = fadd fast float %5166, %5141
  %5170 = fadd fast float %5155, %5167
  %5171 = fmul fast float %5168, %5157
  %5172 = call float @dx.op.tertiary.f32(i32 46, float %5169, float %5159, float %5171)  ; FMad(a,b,c)
  %5173 = call float @dx.op.tertiary.f32(i32 46, float %5170, float %5161, float %5172)  ; FMad(a,b,c)
  %5174 = fmul fast float %5168, %5162
  %5175 = call float @dx.op.tertiary.f32(i32 46, float %5169, float %5163, float %5174)  ; FMad(a,b,c)
  %5176 = call float @dx.op.tertiary.f32(i32 46, float %5170, float %5164, float %5175)  ; FMad(a,b,c)
  %5177 = fsub fast float %5173, %5165
  %5178 = fsub fast float %5176, %5166
  %5179 = fsub fast float %5177, %5143
  %5180 = fadd fast float %5179, %5151
  %5181 = fsub fast float %5178, %5144
  %5182 = fadd fast float %5181, %5151
  %5183 = extractvalue %dx.types.CBufRet.f32 %5142, 3
  %5184 = fmul fast float %5180, %5183
  %5185 = fmul fast float %5182, %5183
  %5186 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5187 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5188 = fsub fast float 1.000000e+00, %5186
  %5189 = fsub fast float 1.000000e+00, %5187
  %5190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %42, float %5188, float %5189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5191 = extractvalue %dx.types.ResRet.f32 %5190, 0
  %5192 = fcmp fast ugt float %5191, 0.000000e+00
  br i1 %5192, label %5193, label %5206

; <label>:5193                                    ; preds = %5153
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 2
  %5196 = fmul fast float %5195, %5191
  %5197 = extractvalue %dx.types.CBufRet.f32 %5194, 3
  %5198 = fadd fast float %5197, %5196
  %5199 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5200 = fadd fast float %5198, %5167
  %5201 = fmul fast float %5173, %5161
  %5202 = call float @dx.op.tertiary.f32(i32 46, float %5176, float %5164, float %5201)  ; FMad(a,b,c)
  %5203 = call float @dx.op.tertiary.f32(i32 46, float %5200, float %5199, float %5202)  ; FMad(a,b,c)
  %5204 = fsub fast float %5203, %5167
  %5205 = fsub fast float %5204, %5154
  br label %5206

; <label>:5206                                    ; preds = %5193, %5153, %5136
  %5207 = phi i1 [ true, %5193 ], [ false, %5153 ], [ false, %5136 ]
  %5208 = phi float [ %5205, %5193 ], [ -1.310720e+05, %5153 ], [ -1.310720e+05, %5136 ]
  %5209 = fsub fast float %5208, %154
  %5210 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5211 = select i1 %5207, float %5210, float 1.000000e+00
  br label %5212

; <label>:5212                                    ; preds = %5206, %5108
  %5213 = phi float [ %5211, %5206 ], [ 0.000000e+00, %5108 ]
  %5214 = icmp eq i32 %5134, 3
  %5215 = select i1 %5214, float 1.000000e+00, float %5213
  %5216 = call float @dx.op.binary.f32(i32 35, float %5065, float %5215)  ; FMax(a,b)
  %5217 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5218 = fcmp fast une float %5217, 0.000000e+00
  br i1 %5218, label %5219, label %5389

; <label>:5219                                    ; preds = %5212
  %5220 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %152, float %153, float %154)  ; Dot3(ax,ay,az,bx,by,bz)
  %5221 = call float @dx.op.unary.f32(i32 25, float %5220)  ; Rsqrt(value)
  %5222 = fmul fast float %152, %5221
  %5223 = fsub fast float -0.000000e+00, %5222
  %5224 = fmul fast float %153, %5221
  %5225 = fsub fast float -0.000000e+00, %5224
  %5226 = fmul fast float %154, %5221
  %5227 = fsub fast float -0.000000e+00, %5226
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5223, float %5225, float %5227, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = fmul fast float %5217, 2.500000e+00
  %5230 = call float @dx.op.unary.f32(i32 7, float %5229)  ; Saturate(value)
  %5231 = fmul fast float %5217, 0x4013FFFFE0000000
  %5232 = fadd fast float %5231, 0xBFFFFFFFE0000000
  %5233 = call float @dx.op.unary.f32(i32 7, float %5232)  ; Saturate(value)
  %5234 = fmul fast float %5217, 0x4004000020000000
  %5235 = fadd fast float %5234, 0xBFF8000040000000
  %5236 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5237 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5238 = fmul fast float %5068, 1.000000e+01
  %5239 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5240 = fmul fast float %5239, 2.000000e+00
  %5241 = fsub fast float 3.000000e+00, %5240
  %5242 = fmul fast float %5239, %5239
  %5243 = fmul fast float %5242, %5241
  %5244 = fsub fast float 1.000000e+00, %5243
  %5245 = fsub fast float 0x3FE3333340000000, %5089
  %5246 = fmul fast float %5245, 0x400AAAAAA0000000
  %5247 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5248 = fmul fast float %5244, %5247
  %5249 = fmul fast float %5126, 0x3FEA2B8620000000
  %5250 = fmul fast float %5127, 0x3FEA2B8620000000
  %5251 = fmul fast float %5128, 0x3FEA2B8620000000
  %5252 = fadd fast float %5249, 0x3FC81DFBA0000000
  %5253 = fmul fast float %5252, %5126
  %5254 = fadd fast float %5253, 0x3F910E6020000000
  %5255 = fadd fast float %5250, 0x3FC81DFBA0000000
  %5256 = fmul fast float %5255, %5127
  %5257 = fadd fast float %5256, 0x3F910E6020000000
  %5258 = fadd fast float %5251, 0x3FC81DFBA0000000
  %5259 = fmul fast float %5258, %5128
  %5260 = fadd fast float %5259, 0x3F910E6020000000
  %5261 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5262 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5263 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5264 = fsub fast float %5261, %5126
  %5265 = fsub fast float %5262, %5127
  %5266 = fsub fast float %5263, %5128
  %5267 = fmul fast float %5264, %5237
  %5268 = fmul fast float %5267, %5248
  %5269 = fmul fast float %5265, %5237
  %5270 = fmul fast float %5269, %5248
  %5271 = fmul fast float %5266, %5237
  %5272 = fmul fast float %5271, %5248
  %5273 = fadd fast float %5268, %5126
  %5274 = fadd fast float %5270, %5127
  %5275 = fadd fast float %5272, %5128
  %5276 = fmul fast float %5062, %5062
  %5277 = fmul fast float %5276, %5276
  %5278 = fadd fast float %5233, 1.000000e+00
  %5279 = fsub fast float %5278, %5248
  %5280 = call float @dx.op.unary.f32(i32 7, float %5279)  ; Saturate(value)
  %5281 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5283 = fsub fast float 1.000000e+00, %5277
  %5284 = call float @dx.op.binary.f32(i32 36, float %5280, float %5283)  ; FMin(a,b)
  %5285 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5286 = call float @dx.op.binary.f32(i32 35, float %5284, float %5285)  ; FMax(a,b)
  %5287 = fadd fast float %5282, 0xBFE4CCCCC0000000
  %5288 = fmul fast float %5287, 0x4006DB6DA0000000
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = fmul fast float %5289, 2.000000e+00
  %5291 = fsub fast float 3.000000e+00, %5290
  %5292 = bitcast float %5086 to i32
  %5293 = ashr i32 %5292, 1
  %5294 = add nsw i32 %5293, 532487669
  %5295 = bitcast i32 %5294 to float
  %5296 = fsub fast float 1.000000e+00, %5295
  %5297 = bitcast float %5296 to i32
  %5298 = sub nsw i32 2129859010, %5297
  %5299 = bitcast i32 %5298 to float
  %5300 = fmul fast float %5299, 2.000000e+00
  %5301 = bitcast float %5087 to i32
  %5302 = ashr i32 %5301, 1
  %5303 = add nsw i32 %5302, 532487669
  %5304 = bitcast i32 %5303 to float
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = bitcast float %5305 to i32
  %5307 = sub nsw i32 2129859010, %5306
  %5308 = bitcast i32 %5307 to float
  %5309 = fmul fast float %5308, 2.000000e+00
  %5310 = bitcast float %5088 to i32
  %5311 = ashr i32 %5310, 1
  %5312 = add nsw i32 %5311, 532487669
  %5313 = bitcast i32 %5312 to float
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = bitcast float %5314 to i32
  %5316 = sub nsw i32 2129859010, %5315
  %5317 = bitcast i32 %5316 to float
  %5318 = fmul fast float %5317, 2.000000e+00
  %5319 = fsub fast float 0x4002A9FBE0000000, %5300
  %5320 = fadd fast float %5300, 0x3FD54FDF00000000
  %5321 = bitcast float %5320 to i32
  %5322 = sub nsw i32 2129859010, %5321
  %5323 = bitcast i32 %5322 to float
  %5324 = fmul fast float %5323, %5319
  %5325 = fmul fast float %5324, %5324
  %5326 = fsub fast float 0x4002A9FBE0000000, %5309
  %5327 = fadd fast float %5309, 0x3FD54FDF00000000
  %5328 = bitcast float %5327 to i32
  %5329 = sub nsw i32 2129859010, %5328
  %5330 = bitcast i32 %5329 to float
  %5331 = fmul fast float %5330, %5326
  %5332 = fmul fast float %5331, %5331
  %5333 = fsub fast float 0x4002A9FBE0000000, %5318
  %5334 = fadd fast float %5318, 0x3FD54FDF00000000
  %5335 = bitcast float %5334 to i32
  %5336 = sub nsw i32 2129859010, %5335
  %5337 = bitcast i32 %5336 to float
  %5338 = fmul fast float %5337, %5333
  %5339 = fmul fast float %5338, %5338
  %5340 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5325)  ; FMax(a,b)
  %5341 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5332)  ; FMax(a,b)
  %5342 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5339)  ; FMax(a,b)
  %5343 = fsub fast float 1.000000e+00, %5228
  %5344 = fadd fast float %5343, %5244
  %5345 = call float @dx.op.unary.f32(i32 7, float %5344)  ; Saturate(value)
  %5346 = fsub fast float 1.000000e+00, %5215
  %5347 = fmul fast float %5286, %5346
  %5348 = fmul fast float %5289, %5289
  %5349 = fmul fast float %5348, %5347
  %5350 = fmul fast float %5349, %5291
  %5351 = fmul fast float %5346, 0xBFE99999A0000000
  %5352 = fmul fast float %5351, %5237
  %5353 = fmul fast float %5352, %5248
  %5354 = fadd fast float %5353, 1.000000e+00
  %5355 = fadd fast float %5089, -1.000000e+00
  %5356 = fmul fast float %5354, %5355
  %5357 = fadd fast float %5356, 1.000000e+00
  %5358 = fsub fast float %5340, %5086
  %5359 = fsub fast float %5341, %5087
  %5360 = fsub fast float %5342, %5088
  %5361 = fmul fast float %5350, %5358
  %5362 = fmul fast float %5350, %5359
  %5363 = fmul fast float %5350, %5360
  %5364 = fadd fast float %5361, %5086
  %5365 = fadd fast float %5362, %5087
  %5366 = fadd fast float %5363, %5088
  %5367 = fsub fast float %104, %5044
  %5368 = fsub fast float %105, %5045
  %5369 = fsub fast float %106, %5046
  %5370 = fmul fast float %5350, %5367
  %5371 = fmul fast float %5350, %5368
  %5372 = fmul fast float %5350, %5369
  %5373 = fadd fast float %5370, %5044
  %5374 = fadd fast float %5371, %5045
  %5375 = fadd fast float %5372, %5046
  %5376 = fmul fast float %5350, %5345
  %5377 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5378 = fsub fast float 1.000000e+00, %5377
  %5379 = fmul fast float %5376, %5378
  %5380 = fadd fast float %5379, %5377
  %5381 = fsub fast float 1.000000e+00, %5062
  %5382 = fmul fast float %5350, %5381
  %5383 = fadd fast float %5382, %5062
  %5384 = call float @dx.op.dot3.f32(i32 55, float %5373, float %5374, float %5375, float %5373, float %5374, float %5375)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = call float @dx.op.unary.f32(i32 25, float %5384)  ; Rsqrt(value)
  %5386 = fmul fast float %5373, %5385
  %5387 = fmul fast float %5374, %5385
  %5388 = fmul fast float %5375, %5385
  br label %5389

; <label>:5389                                    ; preds = %5219, %5212
  %5390 = phi float [ %5273, %5219 ], [ %5126, %5212 ]
  %5391 = phi float [ %5274, %5219 ], [ %5127, %5212 ]
  %5392 = phi float [ %5275, %5219 ], [ %5128, %5212 ]
  %5393 = phi float [ %5386, %5219 ], [ %5044, %5212 ]
  %5394 = phi float [ %5387, %5219 ], [ %5045, %5212 ]
  %5395 = phi float [ %5388, %5219 ], [ %5046, %5212 ]
  %5396 = phi float [ %5364, %5219 ], [ %5086, %5212 ]
  %5397 = phi float [ %5365, %5219 ], [ %5087, %5212 ]
  %5398 = phi float [ %5366, %5219 ], [ %5088, %5212 ]
  %5399 = phi float [ %5380, %5219 ], [ %5089, %5212 ]
  %5400 = phi float [ %5383, %5219 ], [ %5062, %5212 ]
  %5401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %5402 = extractvalue %dx.types.CBufRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.CBufRet.f32 %5401, 1
  %5404 = fmul fast float %5402, 5.000000e-01
  %5405 = fmul fast float %5403, 5.000000e-01
  %5406 = extractvalue %dx.types.CBufRet.f32 %5401, 2
  %5407 = extractvalue %dx.types.CBufRet.f32 %5401, 3
  %5408 = fmul fast float %5406, 2.000000e+00
  %5409 = fmul fast float %5407, 2.000000e+00
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 0
  %5412 = extractvalue %dx.types.CBufRet.f32 %5410, 1
  %5413 = extractvalue %dx.types.CBufRet.f32 %5410, 2
  %5414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5415 = extractvalue %dx.types.CBufRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.CBufRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.CBufRet.f32 %5414, 2
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 0
  %5420 = extractvalue %dx.types.CBufRet.f32 %5418, 1
  %5421 = extractvalue %dx.types.CBufRet.f32 %5418, 2
  %5422 = fmul fast float %5411, %104
  %5423 = call float @dx.op.tertiary.f32(i32 46, float %105, float %5412, float %5422)  ; FMad(a,b,c)
  %5424 = call float @dx.op.tertiary.f32(i32 46, float %106, float %5413, float %5423)  ; FMad(a,b,c)
  %5425 = fmul fast float %5415, %104
  %5426 = call float @dx.op.tertiary.f32(i32 46, float %105, float %5416, float %5425)  ; FMad(a,b,c)
  %5427 = call float @dx.op.tertiary.f32(i32 46, float %106, float %5417, float %5426)  ; FMad(a,b,c)
  %5428 = fmul fast float %5419, %104
  %5429 = call float @dx.op.tertiary.f32(i32 46, float %105, float %5420, float %5428)  ; FMad(a,b,c)
  %5430 = call float @dx.op.tertiary.f32(i32 46, float %106, float %5421, float %5429)  ; FMad(a,b,c)
  %5431 = fmul fast float %227, 5.000000e+00
  %5432 = call float @dx.op.unary.f32(i32 22, float %5431)  ; Frc(value)
  %5433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %5434 = extractvalue %dx.types.CBufRet.f32 %5433, 2
  %5435 = extractvalue %dx.types.CBufRet.f32 %5433, 3
  %5436 = fmul fast float %5434, 5.120000e+02
  %5437 = fmul fast float %5435, 5.120000e+02
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 0
  %5440 = extractvalue %dx.types.CBufRet.f32 %5438, 1
  %5441 = extractvalue %dx.types.CBufRet.f32 %5438, 2
  %5442 = extractvalue %dx.types.CBufRet.f32 %5438, 3
  %5443 = fmul fast float %5406, %97
  %5444 = fmul fast float %5407, %98
  %5445 = call float @dx.op.unary.f32(i32 6, float %85)  ; FAbs(value)
  %5446 = fmul fast float %5436, %5406
  %5447 = fmul fast float %5437, %5407
  %5448 = fmul fast float %5445, %5441
  %5449 = fmul fast float %5442, %5445
  %5450 = fsub fast float -0.000000e+00, %5449
  %5451 = fdiv fast float 3.000000e+00, %5448
  %5452 = fdiv fast float 3.000000e+00, %5450
  %5453 = call float @dx.op.binary.f32(i32 36, float %5446, float %5451)  ; FMin(a,b)
  %5454 = call float @dx.op.binary.f32(i32 36, float %5447, float %5452)  ; FMin(a,b)
  %5455 = fmul fast float %5443, %5439
  %5456 = fmul fast float %5444, %5440
  %5457 = fsub fast float %5455, %5441
  %5458 = fsub fast float %5456, %5442
  %5459 = fmul fast float %5457, %5445
  %5460 = fmul fast float %5458, %5445
  %5461 = fsub fast float -0.000000e+00, %5459
  %5462 = fsub fast float -0.000000e+00, %5460
  %5463 = fsub fast float -0.000000e+00, %5445
  %5464 = call float @dx.op.dot3.f32(i32 55, float %5461, float %5462, float %5463, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %5465 = call float @dx.op.unary.f32(i32 25, float %5464)  ; Rsqrt(value)
  %5466 = fmul fast float %5465, %5461
  %5467 = fmul fast float %5465, %5462
  %5468 = fmul fast float %5465, %5463
  %5469 = fmul fast float %5445, 0x3FEFEB8520000000
  %5470 = fmul fast float %5404, %5453
  %5471 = fmul fast float %5405, %5454
  %5472 = fmul fast float %5470, %5470
  %5473 = fmul fast float %5471, %5471
  %5474 = fadd fast float %5473, %5472
  %5475 = call float @dx.op.unary.f32(i32 24, float %5474)  ; Sqrt(value)
  %5476 = fmul fast float %5475, 3.125000e-02
  br label %5477

; <label>:5477                                    ; preds = %5664, %5389
  %5478 = phi i32 [ 0, %5389 ], [ %5767, %5664 ]
  %5479 = phi float [ 0.000000e+00, %5389 ], [ %5766, %5664 ]
  %5480 = sitofp i32 %5478 to float
  %5481 = fadd fast float %5480, %226
  %5482 = fmul fast float %5481, 0x3FF921FB60000000
  %5483 = call float @dx.op.unary.f32(i32 12, float %5482)  ; Cos(value)
  %5484 = call float @dx.op.unary.f32(i32 13, float %5482)  ; Sin(value)
  %5485 = fsub fast float -0.000000e+00, %5484
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5424, float %5427, float %5430)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = call float @dx.op.unary.f32(i32 6, float %5486)  ; FAbs(value)
  %5488 = call float @dx.op.unary.f32(i32 6, float %5487)  ; FAbs(value)
  %5489 = fcmp fast ogt float %5488, 0x3EB0C6F7A0000000
  %5490 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5485, float 0.000000e+00, float %5424, float %5427, float %5430)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = fsub fast float -0.000000e+00, %5490
  %5492 = fdiv fast float %5491, %5487
  %5493 = select i1 %5489, float %5492, float 0.000000e+00
  %5494 = fmul fast float %5493, %5493
  %5495 = fadd fast float %5494, 1.000000e+00
  %5496 = call float @dx.op.unary.f32(i32 25, float %5495)  ; Rsqrt(value)
  %5497 = fmul fast float %5493, %5496
  br label %5498

; <label>:5498                                    ; preds = %5498, %5477
  %5499 = phi float [ %5497, %5477 ], [ %5577, %5498 ]
  %5500 = phi float [ 6.000000e+00, %5477 ], [ %5565, %5498 ]
  %5501 = phi i32 [ 0, %5477 ], [ %5578, %5498 ]
  %5502 = sitofp i32 %5501 to float
  %5503 = fadd fast float %5502, %5432
  %5504 = fmul fast float %5503, 5.000000e-01
  %5505 = fmul fast float %5504, %5504
  %5506 = fmul fast float %5505, %5476
  %5507 = call float @dx.op.binary.f32(i32 36, float %5506, float 3.000000e+00)  ; FMin(a,b)
  %5508 = fadd fast float %5507, 1.000000e+00
  %5509 = fmul fast float %5505, %5453
  %5510 = fmul fast float %5505, %5454
  %5511 = fadd fast float %5509, %5408
  %5512 = fmul fast float %5511, %5483
  %5513 = fadd fast float %5512, %5443
  %5514 = fadd fast float %5510, %5409
  %5515 = fmul fast float %5514, %5484
  %5516 = fadd fast float %5515, %5444
  %5517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %43, float %5513, float %5516, float undef, float undef, i32 0, i32 0, i32 undef, float %5508)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5518 = extractvalue %dx.types.ResRet.f32 %5517, 0
  %5519 = fcmp fast ogt float %5518, -1.000000e+00
  %5520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5521 = extractvalue %dx.types.CBufRet.f32 %5520, 1
  %5522 = select i1 %5519, float %5521, float 1.000000e+00
  %5523 = fadd fast float %5518, 1.000000e+00
  %5524 = fmul fast float %5522, %5523
  %5525 = call float @dx.op.unary.f32(i32 6, float %5524)  ; FAbs(value)
  %5526 = call float @dx.op.unary.f32(i32 6, float %5525)  ; FAbs(value)
  %5527 = fmul fast float %5513, %5439
  %5528 = fmul fast float %5516, %5440
  %5529 = fsub fast float %5527, %5441
  %5530 = fsub fast float %5528, %5442
  %5531 = fmul fast float %5529, %5526
  %5532 = fmul fast float %5530, %5526
  %5533 = fsub fast float %5531, %5459
  %5534 = fsub fast float %5532, %5460
  %5535 = fsub fast float %5526, %5469
  %5536 = call float @dx.op.dot3.f32(i32 55, float %5533, float %5534, float %5535, float %5533, float %5534, float %5535)  ; Dot3(ax,ay,az,bx,by,bz)
  %5537 = call float @dx.op.dot3.f32(i32 55, float %5533, float %5534, float %5535, float %5424, float %5427, float %5430)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = fsub fast float -0.000000e+00, %5537
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5533, float %5534, float %5535, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = call float @dx.op.unary.f32(i32 25, float %5536)  ; Rsqrt(value)
  %5541 = fmul fast float %5540, %5539
  %5542 = bitcast float %5536 to i32
  %5543 = ashr i32 %5542, 1
  %5544 = add nsw i32 %5543, 532487669
  %5545 = bitcast i32 %5544 to float
  %5546 = fmul fast float %5545, 0x3FE5555640000000
  %5547 = fsub fast float 0x40000000C0000000, %5546
  %5548 = call float @dx.op.unary.f32(i32 7, float %5547)  ; Saturate(value)
  %5549 = fmul fast float %5545, 0x3FCC71C780000000
  %5550 = fsub fast float 0x3FF55555A0000000, %5549
  %5551 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5552 = fmul fast float %5526, 0x3F947AE140000000
  %5553 = fadd fast float %5552, -1.000000e+00
  %5554 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5555 = fsub fast float %5551, %5548
  %5556 = fmul fast float %5554, %5555
  %5557 = fadd fast float %5556, %5548
  %5558 = fmul fast float %5525, %85
  %5559 = fcmp fast ogt float %5558, 0.000000e+00
  %5560 = select i1 %5559, float %5557, float 0.000000e+00
  %5561 = fadd fast float %5541, 1.000000e+00
  %5562 = fmul fast float %5560, %5561
  %5563 = fadd fast float %5562, -1.000000e+00
  %5564 = fcmp fast ogt float %5563, %5499
  %5565 = select i1 %5564, float %5538, float %5500
  %5566 = fsub fast float %5538, %5565
  %5567 = fmul fast float %5566, 0x400AAAA4C0000000
  %5568 = fadd fast float %5567, 0xBFDFFFF900000000
  %5569 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5570 = fmul fast float %5537, 0x401AAAB640000000
  %5571 = fadd fast float %5570, 0x3FF0000700000000
  %5572 = call float @dx.op.unary.f32(i32 7, float %5571)  ; Saturate(value)
  %5573 = fmul fast float %5569, 2.000000e+00
  %5574 = fmul fast float %5573, %5572
  %5575 = fsub fast float %5499, %5574
  %5576 = fcmp ole float %5563, %5575
  %5577 = select i1 %5576, float %5575, float %5563
  %5578 = add nuw nsw i32 %5501, 1
  %5579 = icmp eq i32 %5578, 2
  br i1 %5579, label %5580, label %5498

; <label>:5580                                    ; preds = %5498
  %5581 = fsub fast float -0.000000e+00, %5497
  br label %5582

; <label>:5582                                    ; preds = %5582, %5580
  %5583 = phi float [ %5581, %5580 ], [ %5661, %5582 ]
  %5584 = phi float [ 6.000000e+00, %5580 ], [ %5649, %5582 ]
  %5585 = phi i32 [ 0, %5580 ], [ %5662, %5582 ]
  %5586 = sitofp i32 %5585 to float
  %5587 = fadd fast float %5586, %5432
  %5588 = fmul fast float %5587, 5.000000e-01
  %5589 = fmul fast float %5588, %5588
  %5590 = fmul fast float %5589, %5476
  %5591 = call float @dx.op.binary.f32(i32 36, float %5590, float 3.000000e+00)  ; FMin(a,b)
  %5592 = fadd fast float %5591, 1.000000e+00
  %5593 = fmul fast float %5589, %5453
  %5594 = fmul fast float %5589, %5454
  %5595 = fadd fast float %5593, %5408
  %5596 = fmul fast float %5483, %5595
  %5597 = fsub fast float %5443, %5596
  %5598 = fadd fast float %5594, %5409
  %5599 = fmul fast float %5484, %5598
  %5600 = fsub fast float %5444, %5599
  %5601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %43, float %5597, float %5600, float undef, float undef, i32 0, i32 0, i32 undef, float %5592)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5602 = extractvalue %dx.types.ResRet.f32 %5601, 0
  %5603 = fcmp fast ogt float %5602, -1.000000e+00
  %5604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5605 = extractvalue %dx.types.CBufRet.f32 %5604, 1
  %5606 = select i1 %5603, float %5605, float 1.000000e+00
  %5607 = fadd fast float %5602, 1.000000e+00
  %5608 = fmul fast float %5606, %5607
  %5609 = call float @dx.op.unary.f32(i32 6, float %5608)  ; FAbs(value)
  %5610 = call float @dx.op.unary.f32(i32 6, float %5609)  ; FAbs(value)
  %5611 = fmul fast float %5597, %5439
  %5612 = fmul fast float %5600, %5440
  %5613 = fsub fast float %5611, %5441
  %5614 = fsub fast float %5612, %5442
  %5615 = fmul fast float %5613, %5610
  %5616 = fmul fast float %5614, %5610
  %5617 = fsub fast float %5615, %5459
  %5618 = fsub fast float %5616, %5460
  %5619 = fsub fast float %5610, %5469
  %5620 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %5621 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %5424, float %5427, float %5430)  ; Dot3(ax,ay,az,bx,by,bz)
  %5622 = fsub fast float -0.000000e+00, %5621
  %5623 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = call float @dx.op.unary.f32(i32 25, float %5620)  ; Rsqrt(value)
  %5625 = fmul fast float %5624, %5623
  %5626 = bitcast float %5620 to i32
  %5627 = ashr i32 %5626, 1
  %5628 = add nsw i32 %5627, 532487669
  %5629 = bitcast i32 %5628 to float
  %5630 = fmul fast float %5629, 0x3FE5555640000000
  %5631 = fsub fast float 0x40000000C0000000, %5630
  %5632 = call float @dx.op.unary.f32(i32 7, float %5631)  ; Saturate(value)
  %5633 = fmul fast float %5629, 0x3FCC71C780000000
  %5634 = fsub fast float 0x3FF55555A0000000, %5633
  %5635 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  %5636 = fmul fast float %5610, 0x3F947AE140000000
  %5637 = fadd fast float %5636, -1.000000e+00
  %5638 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5639 = fsub fast float %5635, %5632
  %5640 = fmul fast float %5638, %5639
  %5641 = fadd fast float %5640, %5632
  %5642 = fmul fast float %5609, %85
  %5643 = fcmp fast ogt float %5642, 0.000000e+00
  %5644 = select i1 %5643, float %5641, float 0.000000e+00
  %5645 = fadd fast float %5625, 1.000000e+00
  %5646 = fmul fast float %5644, %5645
  %5647 = fadd fast float %5646, -1.000000e+00
  %5648 = fcmp fast ogt float %5647, %5583
  %5649 = select i1 %5648, float %5622, float %5584
  %5650 = fsub fast float %5622, %5649
  %5651 = fmul fast float %5650, 0x400AAAA4C0000000
  %5652 = fadd fast float %5651, 0xBFDFFFF900000000
  %5653 = call float @dx.op.unary.f32(i32 7, float %5652)  ; Saturate(value)
  %5654 = fmul fast float %5621, 0x401AAAB640000000
  %5655 = fadd fast float %5654, 0x3FF0000700000000
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fmul fast float %5653, 2.000000e+00
  %5658 = fmul fast float %5657, %5656
  %5659 = fsub fast float %5583, %5658
  %5660 = fcmp ole float %5647, %5659
  %5661 = select i1 %5660, float %5659, float %5647
  %5662 = add nuw nsw i32 %5585, 1
  %5663 = icmp eq i32 %5662, 2
  br i1 %5663, label %5664, label %5582

; <label>:5664                                    ; preds = %5582
  %5665 = fmul fast float %5468, %5485
  %5666 = fmul fast float %5468, %5483
  %5667 = fsub fast float -0.000000e+00, %5666
  %5668 = fmul fast float %5483, %5467
  %5669 = fmul fast float %5466, %5485
  %5670 = fsub fast float %5668, %5669
  %5671 = call float @dx.op.dot3.f32(i32 55, float %5424, float %5427, float %5430, float %5665, float %5667, float %5670)  ; Dot3(ax,ay,az,bx,by,bz)
  %5672 = fmul fast float %5671, %5665
  %5673 = fmul fast float %5671, %5667
  %5674 = fmul fast float %5671, %5670
  %5675 = fsub fast float %5424, %5672
  %5676 = fsub fast float %5427, %5673
  %5677 = fsub fast float %5430, %5674
  %5678 = fmul fast float %5675, %5675
  %5679 = fmul fast float %5676, %5676
  %5680 = fadd fast float %5678, %5679
  %5681 = fmul fast float %5677, %5677
  %5682 = fadd fast float %5680, %5681
  %5683 = call float @dx.op.unary.f32(i32 24, float %5682)  ; Sqrt(value)
  %5684 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5485, float 0.000000e+00, float %5675, float %5676, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5685 = call float @dx.op.dot3.f32(i32 55, float %5483, float %5485, float 0.000000e+00, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5686 = fmul fast float %5685, %5466
  %5687 = fmul fast float %5685, %5467
  %5688 = fmul fast float %5685, %5468
  %5689 = call float @dx.op.dot3.f32(i32 55, float %5686, float %5687, float %5688, float %5675, float %5676, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5690 = fcmp fast oge float %5684, %5689
  %5691 = fdiv fast float 1.000000e+00, %5683
  %5692 = call float @dx.op.dot3.f32(i32 55, float %5675, float %5676, float %5677, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5693 = fmul fast float %5692, %5691
  %5694 = call float @dx.op.unary.f32(i32 7, float %5693)  ; Saturate(value)
  %5695 = fmul fast float %5694, %5694
  %5696 = fsub fast float 1.000000e+00, %5695
  %5697 = bitcast float %5696 to i32
  %5698 = ashr i32 %5697, 1
  %5699 = add nsw i32 %5698, 532487669
  %5700 = bitcast i32 %5699 to float
  %5701 = call float @dx.op.unary.f32(i32 6, float %5694)  ; FAbs(value)
  %5702 = fmul fast float %5701, 0x3FC40AE960000000
  %5703 = fsub fast float 0x3FF921FB60000000, %5702
  %5704 = fsub fast float 1.000000e+00, %5701
  %5705 = bitcast float %5704 to i32
  %5706 = ashr i32 %5705, 1
  %5707 = add nsw i32 %5706, 532487669
  %5708 = bitcast i32 %5707 to float
  %5709 = fmul fast float %5708, %5703
  %5710 = fcmp fast oge float %5694, 0.000000e+00
  %5711 = fsub fast float 0x400921FB60000000, %5709
  %5712 = select i1 %5710, float %5709, float %5711
  %5713 = fsub fast float -0.000000e+00, %5700
  %5714 = select i1 %5690, float %5713, float %5700
  %5715 = fsub fast float -0.000000e+00, %5712
  %5716 = select i1 %5690, float %5715, float %5712
  %5717 = call float @dx.op.unary.f32(i32 6, float %5577)  ; FAbs(value)
  %5718 = fmul fast float %5717, 0x3FC40AE960000000
  %5719 = fsub fast float 0x3FF921FB60000000, %5718
  %5720 = fsub fast float 1.000000e+00, %5717
  %5721 = bitcast float %5720 to i32
  %5722 = ashr i32 %5721, 1
  %5723 = add nsw i32 %5722, 532487669
  %5724 = bitcast i32 %5723 to float
  %5725 = fmul fast float %5724, %5719
  %5726 = fcmp fast oge float %5577, 0.000000e+00
  %5727 = fsub fast float 0x400921FB60000000, %5725
  %5728 = select i1 %5726, float %5725, float %5727
  %5729 = call float @dx.op.unary.f32(i32 6, float %5661)  ; FAbs(value)
  %5730 = fmul fast float %5729, 0x3FC40AE960000000
  %5731 = fsub fast float 0x3FF921FB60000000, %5730
  %5732 = fsub fast float 1.000000e+00, %5729
  %5733 = bitcast float %5732 to i32
  %5734 = ashr i32 %5733, 1
  %5735 = add nsw i32 %5734, 532487669
  %5736 = bitcast i32 %5735 to float
  %5737 = fmul fast float %5736, %5731
  %5738 = fcmp fast oge float %5661, 0.000000e+00
  %5739 = fsub fast float 0x400921FB60000000, %5737
  %5740 = select i1 %5738, float %5737, float %5739
  %5741 = fsub fast float -0.000000e+00, %5716
  %5742 = fsub fast float %5741, %5728
  %5743 = call float @dx.op.binary.f32(i32 35, float %5742, float 0xBFF921FB60000000)  ; FMax(a,b)
  %5744 = call float @dx.op.binary.f32(i32 36, float %5743, float 0x3FF921FB60000000)  ; FMin(a,b)
  %5745 = fadd fast float %5716, %5744
  %5746 = fsub fast float %5740, %5716
  %5747 = call float @dx.op.binary.f32(i32 35, float %5746, float 0xBFF921FB60000000)  ; FMax(a,b)
  %5748 = call float @dx.op.binary.f32(i32 36, float %5747, float 0x3FF921FB60000000)  ; FMin(a,b)
  %5749 = fadd fast float %5716, %5748
  %5750 = fmul fast float %5745, 2.000000e+00
  %5751 = fsub fast float %5750, %5716
  %5752 = call float @dx.op.unary.f32(i32 12, float %5751)  ; Cos(value)
  %5753 = fsub fast float -0.000000e+00, %5752
  %5754 = fmul fast float %5749, 2.000000e+00
  %5755 = fsub fast float %5754, %5716
  %5756 = call float @dx.op.unary.f32(i32 12, float %5755)  ; Cos(value)
  %5757 = fmul fast float %5694, 2.000000e+00
  %5758 = fadd fast float %5749, %5745
  %5759 = fmul fast float %5714, %5758
  %5760 = fmul fast float %5759, 2.000000e+00
  %5761 = fsub fast float %5753, %5756
  %5762 = fadd fast float %5761, %5757
  %5763 = fadd fast float %5762, %5760
  %5764 = fmul fast float %5683, 2.500000e-01
  %5765 = fmul fast float %5764, %5763
  %5766 = fadd fast float %5765, %5479
  %5767 = add nuw nsw i32 %5478, 1
  %5768 = icmp eq i32 %5767, 2
  br i1 %5768, label %5769, label %5477

; <label>:5769                                    ; preds = %5664
  %5770 = fmul fast float %5766, 5.000000e-01
  %5771 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %152, float %153, float %154)  ; Dot3(ax,ay,az,bx,by,bz)
  %5772 = call float @dx.op.unary.f32(i32 25, float %5771)  ; Rsqrt(value)
  %5773 = fmul fast float %5772, %152
  %5774 = fmul fast float %5772, %153
  %5775 = fmul fast float %5772, %154
  %5776 = fsub fast float -0.000000e+00, %5773
  %5777 = fsub fast float -0.000000e+00, %5774
  %5778 = fsub fast float -0.000000e+00, %5775
  %5779 = select i1 %213, float 0.000000e+00, float %5398
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5393, float %5394, float %5395, float %5776, float %5777, float %5778)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = call float @dx.op.unary.f32(i32 7, float %5780)  ; Saturate(value)
  %5782 = call float @dx.op.dot3.f32(i32 55, float %5773, float %5774, float %5775, float %5393, float %5394, float %5395)  ; Dot3(ax,ay,az,bx,by,bz)
  %5783 = fmul fast float %5782, 2.000000e+00
  %5784 = fmul fast float %5783, %5393
  %5785 = fmul fast float %5783, %5394
  %5786 = fmul fast float %5783, %5395
  %5787 = fsub fast float %5773, %5784
  %5788 = fsub fast float %5774, %5785
  %5789 = fsub fast float %5775, %5786
  %5790 = call float @dx.op.binary.f32(i32 36, float %5400, float %5770)  ; FMin(a,b)
  %5791 = fsub fast float 1.000000e+00, %5790
  %5792 = bitcast float %5791 to i32
  %5793 = ashr i32 %5792, 1
  %5794 = add nsw i32 %5793, 532487669
  %5795 = bitcast i32 %5794 to float
  %5796 = fsub fast float 1.000000e+00, %5399
  %5797 = call float @dx.op.binary.f32(i32 35, float %5796, float 0x3F847AE140000000)  ; FMax(a,b)
  %5798 = fmul fast float %5797, %5797
  %5799 = fmul fast float %5798, %5798
  %5800 = call float @dx.op.unary.f32(i32 7, float %5781)  ; Saturate(value)
  %5801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %42, float %5795, float %5799, float %5800, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5802 = extractvalue %dx.types.ResRet.f32 %5801, 0
  %5803 = fsub fast float 1.000000e+00, %5400
  %5804 = bitcast float %5803 to i32
  %5805 = sub nsw i32 2129859010, %5804
  %5806 = call float @dx.op.dot3.f32(i32 55, float %65, float %61, float %57, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = fmul fast float %5806, 0x3FD20DD760000000
  %5808 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5809 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5810 = fcmp fast oeq float %5809, 0.000000e+00
  %5811 = fcmp fast oeq float %5808, 0.000000e+00
  %5812 = or i1 %5811, %5810
  br i1 %5812, label %5842, label %5813

; <label>:5813                                    ; preds = %5769
  %5814 = fsub fast float -0.000000e+00, %68
  %5815 = fsub fast float -0.000000e+00, %66
  %5816 = call float @dx.op.unary.f32(i32 24, float %5809)  ; Sqrt(value)
  %5817 = fdiv fast float %5816, %5808
  %5818 = fcmp fast ogt float %5817, 0x3FFB6F8900000000
  %5819 = select i1 %5818, float 0x3FFB6F8900000000, float %5817
  %5820 = fmul fast float %5819, 0x3FE8A23460000000
  %5821 = call float @dx.op.unary.f32(i32 7, float %5820)  ; Saturate(value)
  %5822 = call float @dx.op.binary.f32(i32 35, float %5819, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5823 = fmul fast float %5821, %5808
  %5824 = fmul fast float %5822, 0x3FF279A740000000
  %5825 = fadd fast float %5824, -1.000000e+00
  %5826 = call float @dx.op.dot3.f32(i32 55, float %5814, float %5815, float %67, float %5814, float %5815, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5827 = call float @dx.op.unary.f32(i32 25, float %5826)  ; Rsqrt(value)
  %5828 = fmul fast float %5827, %5814
  %5829 = fmul fast float %5827, %5815
  %5830 = fmul fast float %5827, %67
  %5831 = fmul fast float %5825, %5825
  %5832 = fsub fast float 1.000000e+00, %5831
  %5833 = fmul fast float %5822, 0x40005F8BE0000000
  %5834 = fsub fast float 0x400C5BF8A0000000, %5833
  %5835 = fdiv fast float %5823, %5834
  %5836 = fmul fast float %5835, 0x3FEE31C3C0000000
  %5837 = fmul fast float %5836, %5832
  %5838 = fmul fast float %5822, 0x3FDACB7480000000
  %5839 = fadd fast float %5838, 0xBFD7347680000000
  %5840 = fmul fast float %5839, %5835
  %5841 = fmul fast float %5840, %5832
  br label %5842

; <label>:5842                                    ; preds = %5813, %5769
  %5843 = phi float [ %5828, %5813 ], [ 0.000000e+00, %5769 ]
  %5844 = phi float [ %5829, %5813 ], [ 0.000000e+00, %5769 ]
  %5845 = phi float [ %5830, %5813 ], [ 0.000000e+00, %5769 ]
  %5846 = phi float [ %5837, %5813 ], [ 0.000000e+00, %5769 ]
  %5847 = phi float [ %5841, %5813 ], [ 0.000000e+00, %5769 ]
  %5848 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %5393, float %5394, float %5395)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = fmul fast float %5848, 0x3FDF454380000000
  %5850 = fmul fast float %5848, %5848
  %5851 = fmul fast float %5850, 0x3FEE471020000000
  %5852 = fadd fast float %5851, 0xBFD42F6020000000
  %5853 = fmul fast float %5808, 0x3FD20DD760000000
  %5854 = fmul fast float %5852, %5847
  %5855 = fadd fast float %5854, %5853
  %5856 = fmul fast float %5849, %5846
  %5857 = fadd fast float %5855, %5856
  %5858 = fsub fast float %5855, %5856
  %5859 = call float @dx.op.dot3.f32(i32 55, float %5843, float %5844, float %5845, float %5787, float %5788, float %5789)  ; Dot3(ax,ay,az,bx,by,bz)
  %5860 = fmul fast float %5859, 0x3FDF454380000000
  %5861 = fmul fast float %5859, %5859
  %5862 = fmul fast float %5861, 0x3FEE471020000000
  %5863 = fadd fast float %5862, 0xBFD42F6020000000
  %5864 = call float @dx.op.dot3.f32(i32 55, float %5808, float %5846, float %5847, float 0x3FD20DD760000000, float %5860, float %5863)  ; Dot3(ax,ay,az,bx,by,bz)
  %5865 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %61)  ; FMax(a,b)
  %5866 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = fcmp fast oeq float %5866, 0.000000e+00
  %5868 = fcmp fast oeq float %5865, 0.000000e+00
  %5869 = or i1 %5868, %5867
  br i1 %5869, label %5899, label %5870

; <label>:5870                                    ; preds = %5842
  %5871 = fsub fast float -0.000000e+00, %64
  %5872 = fsub fast float -0.000000e+00, %62
  %5873 = call float @dx.op.unary.f32(i32 24, float %5866)  ; Sqrt(value)
  %5874 = fdiv fast float %5873, %5865
  %5875 = fcmp fast ogt float %5874, 0x3FFB6F8900000000
  %5876 = select i1 %5875, float 0x3FFB6F8900000000, float %5874
  %5877 = fmul fast float %5876, 0x3FE8A23460000000
  %5878 = call float @dx.op.unary.f32(i32 7, float %5877)  ; Saturate(value)
  %5879 = call float @dx.op.binary.f32(i32 35, float %5876, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5880 = fmul fast float %5878, %5865
  %5881 = fmul fast float %5879, 0x3FF279A740000000
  %5882 = fadd fast float %5881, -1.000000e+00
  %5883 = call float @dx.op.dot3.f32(i32 55, float %5871, float %5872, float %63, float %5871, float %5872, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5884 = call float @dx.op.unary.f32(i32 25, float %5883)  ; Rsqrt(value)
  %5885 = fmul fast float %5884, %5871
  %5886 = fmul fast float %5884, %5872
  %5887 = fmul fast float %5884, %63
  %5888 = fmul fast float %5882, %5882
  %5889 = fsub fast float 1.000000e+00, %5888
  %5890 = fmul fast float %5879, 0x40005F8BE0000000
  %5891 = fsub fast float 0x400C5BF8A0000000, %5890
  %5892 = fdiv fast float %5880, %5891
  %5893 = fmul fast float %5892, 0x3FEE31C3C0000000
  %5894 = fmul fast float %5893, %5889
  %5895 = fmul fast float %5879, 0x3FDACB7480000000
  %5896 = fadd fast float %5895, 0xBFD7347680000000
  %5897 = fmul fast float %5896, %5892
  %5898 = fmul fast float %5897, %5889
  br label %5899

; <label>:5899                                    ; preds = %5870, %5842
  %5900 = phi float [ %5885, %5870 ], [ 0.000000e+00, %5842 ]
  %5901 = phi float [ %5886, %5870 ], [ 0.000000e+00, %5842 ]
  %5902 = phi float [ %5887, %5870 ], [ 0.000000e+00, %5842 ]
  %5903 = phi float [ %5894, %5870 ], [ 0.000000e+00, %5842 ]
  %5904 = phi float [ %5898, %5870 ], [ 0.000000e+00, %5842 ]
  %5905 = call float @dx.op.dot3.f32(i32 55, float %5900, float %5901, float %5902, float %5393, float %5394, float %5395)  ; Dot3(ax,ay,az,bx,by,bz)
  %5906 = fmul fast float %5905, 0x3FDF454380000000
  %5907 = fmul fast float %5905, %5905
  %5908 = fmul fast float %5907, 0x3FEE471020000000
  %5909 = fadd fast float %5908, 0xBFD42F6020000000
  %5910 = fmul fast float %5865, 0x3FD20DD760000000
  %5911 = fmul fast float %5909, %5904
  %5912 = fadd fast float %5911, %5910
  %5913 = fmul fast float %5906, %5903
  %5914 = fadd fast float %5912, %5913
  %5915 = fsub fast float %5912, %5913
  %5916 = call float @dx.op.dot3.f32(i32 55, float %5900, float %5901, float %5902, float %5787, float %5788, float %5789)  ; Dot3(ax,ay,az,bx,by,bz)
  %5917 = fmul fast float %5916, 0x3FDF454380000000
  %5918 = fmul fast float %5916, %5916
  %5919 = fmul fast float %5918, 0x3FEE471020000000
  %5920 = fadd fast float %5919, 0xBFD42F6020000000
  %5921 = call float @dx.op.dot3.f32(i32 55, float %5865, float %5903, float %5904, float 0x3FD20DD760000000, float %5917, float %5920)  ; Dot3(ax,ay,az,bx,by,bz)
  %5922 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %5923 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5924 = fcmp fast oeq float %5923, 0.000000e+00
  %5925 = fcmp fast oeq float %5922, 0.000000e+00
  %5926 = or i1 %5925, %5924
  br i1 %5926, label %5956, label %5927

; <label>:5927                                    ; preds = %5899
  %5928 = fsub fast float -0.000000e+00, %60
  %5929 = fsub fast float -0.000000e+00, %58
  %5930 = call float @dx.op.unary.f32(i32 24, float %5923)  ; Sqrt(value)
  %5931 = fdiv fast float %5930, %5922
  %5932 = fcmp fast ogt float %5931, 0x3FFB6F8900000000
  %5933 = select i1 %5932, float 0x3FFB6F8900000000, float %5931
  %5934 = fmul fast float %5933, 0x3FE8A23460000000
  %5935 = call float @dx.op.unary.f32(i32 7, float %5934)  ; Saturate(value)
  %5936 = call float @dx.op.binary.f32(i32 35, float %5933, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5937 = fmul fast float %5935, %5922
  %5938 = fmul fast float %5936, 0x3FF279A740000000
  %5939 = fadd fast float %5938, -1.000000e+00
  %5940 = call float @dx.op.dot3.f32(i32 55, float %5928, float %5929, float %59, float %5928, float %5929, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5941 = call float @dx.op.unary.f32(i32 25, float %5940)  ; Rsqrt(value)
  %5942 = fmul fast float %5941, %5928
  %5943 = fmul fast float %5941, %5929
  %5944 = fmul fast float %5941, %59
  %5945 = fmul fast float %5939, %5939
  %5946 = fsub fast float 1.000000e+00, %5945
  %5947 = fmul fast float %5936, 0x40005F8BE0000000
  %5948 = fsub fast float 0x400C5BF8A0000000, %5947
  %5949 = fdiv fast float %5937, %5948
  %5950 = fmul fast float %5949, 0x3FEE31C3C0000000
  %5951 = fmul fast float %5950, %5946
  %5952 = fmul fast float %5936, 0x3FDACB7480000000
  %5953 = fadd fast float %5952, 0xBFD7347680000000
  %5954 = fmul fast float %5953, %5949
  %5955 = fmul fast float %5954, %5946
  br label %5956

; <label>:5956                                    ; preds = %5927, %5899
  %5957 = phi float [ %5942, %5927 ], [ 0.000000e+00, %5899 ]
  %5958 = phi float [ %5943, %5927 ], [ 0.000000e+00, %5899 ]
  %5959 = phi float [ %5944, %5927 ], [ 0.000000e+00, %5899 ]
  %5960 = phi float [ %5951, %5927 ], [ 0.000000e+00, %5899 ]
  %5961 = phi float [ %5955, %5927 ], [ 0.000000e+00, %5899 ]
  %5962 = call float @dx.op.dot3.f32(i32 55, float %5957, float %5958, float %5959, float %5393, float %5394, float %5395)  ; Dot3(ax,ay,az,bx,by,bz)
  %5963 = fmul fast float %5962, 0x3FDF454380000000
  %5964 = fmul fast float %5962, %5962
  %5965 = fmul fast float %5964, 0x3FEE471020000000
  %5966 = fadd fast float %5965, 0xBFD42F6020000000
  %5967 = fmul fast float %5922, 0x3FD20DD760000000
  %5968 = fmul fast float %5966, %5961
  %5969 = fadd fast float %5968, %5967
  %5970 = fmul fast float %5963, %5960
  %5971 = fadd fast float %5969, %5970
  %5972 = fsub fast float %5969, %5970
  %5973 = call float @dx.op.dot3.f32(i32 55, float %5957, float %5958, float %5959, float %5787, float %5788, float %5789)  ; Dot3(ax,ay,az,bx,by,bz)
  %5974 = fmul fast float %5973, 0x3FDF454380000000
  %5975 = fmul fast float %5973, %5973
  %5976 = fmul fast float %5975, 0x3FEE471020000000
  %5977 = fadd fast float %5976, 0xBFD42F6020000000
  %5978 = call float @dx.op.dot3.f32(i32 55, float %5922, float %5960, float %5961, float 0x3FD20DD760000000, float %5974, float %5977)  ; Dot3(ax,ay,az,bx,by,bz)
  %5979 = call float @dx.op.binary.f32(i32 35, float %5857, float 0.000000e+00)  ; FMax(a,b)
  %5980 = call float @dx.op.binary.f32(i32 35, float %5914, float 0.000000e+00)  ; FMax(a,b)
  %5981 = call float @dx.op.binary.f32(i32 35, float %5971, float 0.000000e+00)  ; FMax(a,b)
  %5982 = call float @dx.op.binary.f32(i32 35, float %5858, float 0.000000e+00)  ; FMax(a,b)
  %5983 = call float @dx.op.binary.f32(i32 35, float %5915, float 0.000000e+00)  ; FMax(a,b)
  %5984 = call float @dx.op.binary.f32(i32 35, float %5972, float 0.000000e+00)  ; FMax(a,b)
  %5985 = call float @dx.op.binary.f32(i32 35, float %5864, float 0.000000e+00)  ; FMax(a,b)
  %5986 = call float @dx.op.binary.f32(i32 35, float %5921, float 0.000000e+00)  ; FMax(a,b)
  %5987 = call float @dx.op.binary.f32(i32 35, float %5978, float 0.000000e+00)  ; FMax(a,b)
  %5988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5989 = extractvalue %dx.types.CBufRet.f32 %5988, 0
  %5990 = call float @dx.op.binary.f32(i32 36, float %5390, float %5989)  ; FMin(a,b)
  %5991 = fmul fast float %5990, %5791
  %5992 = fsub fast float 1.000000e+00, %5991
  %5993 = bitcast float %5992 to i32
  %5994 = sub nsw i32 2129859010, %5993
  %5995 = bitcast i32 %5994 to float
  %5996 = call float @dx.op.binary.f32(i32 36, float %5391, float %5989)  ; FMin(a,b)
  %5997 = fmul fast float %5996, %5791
  %5998 = fsub fast float 1.000000e+00, %5997
  %5999 = bitcast float %5998 to i32
  %6000 = sub nsw i32 2129859010, %5999
  %6001 = bitcast i32 %6000 to float
  %6002 = call float @dx.op.binary.f32(i32 36, float %5392, float %5989)  ; FMin(a,b)
  %6003 = fmul fast float %6002, %5791
  %6004 = fsub fast float 1.000000e+00, %6003
  %6005 = bitcast float %6004 to i32
  %6006 = sub nsw i32 2129859010, %6005
  %6007 = bitcast i32 %6006 to float
  %6008 = fmul fast float %5979, %5790
  %6009 = fmul fast float %6008, %5995
  %6010 = fmul fast float %5980, %5790
  %6011 = fmul fast float %6010, %6001
  %6012 = fmul fast float %5981, %5790
  %6013 = fmul fast float %6012, %6007
  %6014 = call float @dx.op.binary.f32(i32 36, float %5396, float %5989)  ; FMin(a,b)
  %6015 = fmul fast float %6014, %5791
  %6016 = fsub fast float 1.000000e+00, %6015
  %6017 = bitcast float %6016 to i32
  %6018 = sub nsw i32 2129859010, %6017
  %6019 = bitcast i32 %6018 to float
  %6020 = call float @dx.op.binary.f32(i32 36, float %5397, float %5989)  ; FMin(a,b)
  %6021 = fmul fast float %6020, %5791
  %6022 = fsub fast float 1.000000e+00, %6021
  %6023 = bitcast float %6022 to i32
  %6024 = sub nsw i32 2129859010, %6023
  %6025 = bitcast i32 %6024 to float
  %6026 = call float @dx.op.binary.f32(i32 36, float %5779, float %5989)  ; FMin(a,b)
  %6027 = fmul fast float %6026, %5791
  %6028 = fsub fast float 1.000000e+00, %6027
  %6029 = bitcast float %6028 to i32
  %6030 = sub nsw i32 2129859010, %6029
  %6031 = bitcast i32 %6030 to float
  %6032 = fmul fast float %5985, %5790
  %6033 = fmul fast float %6032, %6019
  %6034 = fmul fast float %5986, %5790
  %6035 = fmul fast float %6034, %6025
  %6036 = fmul fast float %5987, %5790
  %6037 = fmul fast float %6036, %6031
  %6038 = call float @dx.op.dot3.f32(i32 55, float %6009, float %6011, float %6013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6039 = select i1 %213, float 0.000000e+00, float %6009
  %6040 = select i1 %213, float %6038, float %6011
  %6041 = select i1 %213, float 0.000000e+00, float %6013
  %6042 = call float @dx.op.dot3.f32(i32 55, float %5982, float %5983, float %5984, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6043 = select i1 %213, float 0.000000e+00, float %5982
  %6044 = select i1 %213, float %6042, float %5983
  %6045 = select i1 %213, float 0.000000e+00, float %5984
  %6046 = call float @dx.op.dot3.f32(i32 55, float %6033, float %6035, float %6037, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6047 = select i1 %213, float 0.000000e+00, float %6033
  %6048 = select i1 %213, float %6046, float %6035
  %6049 = select i1 %213, float 0.000000e+00, float %6037
  %6050 = fmul fast float %4417, %4417
  %6051 = call float @dx.op.unary.f32(i32 7, float %6050)  ; Saturate(value)
  %6052 = fmul fast float %5781, 9.843750e-01
  %6053 = fmul fast float %5399, 9.843750e-01
  %6054 = fadd fast float %6052, 7.812500e-03
  %6055 = fadd fast float %6053, 7.812500e-03
  %6056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %6054, float %6055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6057 = extractvalue %dx.types.ResRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.ResRet.f32 %6056, 1
  %6059 = extractvalue %dx.types.ResRet.f32 %6056, 2
  %6060 = extractvalue %dx.types.ResRet.f32 %6056, 3
  %6061 = fsub fast float 1.000000e+00, %6051
  %6062 = fsub fast float %6059, %6057
  %6063 = fsub fast float %6060, %6058
  %6064 = fmul fast float %6062, %6061
  %6065 = fmul fast float %6063, %6061
  %6066 = fadd fast float %6064, %6057
  %6067 = fadd fast float %6065, %6058
  %6068 = fmul fast float %6066, %5396
  %6069 = fmul fast float %6066, %5397
  %6070 = fmul fast float %6066, %5779
  %6071 = fadd fast float %6068, %6067
  %6072 = fadd fast float %6069, %6067
  %6073 = fadd fast float %6070, %6067
  %6074 = fcmp fast ogt float %5063, 0.000000e+00
  br i1 %6074, label %6075, label %6101

; <label>:6075                                    ; preds = %5956
  %6076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5063, float %5781, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6077 = extractvalue %dx.types.ResRet.f32 %6076, 0
  %6078 = extractvalue %dx.types.ResRet.f32 %6076, 1
  %6079 = extractvalue %dx.types.ResRet.f32 %6076, 2
  %6080 = fadd fast float %6077, -5.000000e-01
  %6081 = fadd fast float %6078, -5.000000e-01
  %6082 = fadd fast float %6079, -5.000000e-01
  %6083 = fsub fast float 1.000000e+00, %5396
  %6084 = fsub fast float 1.000000e+00, %5397
  %6085 = fsub fast float 1.000000e+00, %5779
  %6086 = fmul fast float %5396, 4.000000e+00
  %6087 = fmul fast float %6086, %6083
  %6088 = fmul fast float %6087, %6080
  %6089 = fmul fast float %5397, 4.000000e+00
  %6090 = fmul fast float %6089, %6084
  %6091 = fmul fast float %6090, %6081
  %6092 = fmul fast float %5779, 4.000000e+00
  %6093 = fmul fast float %6092, %6085
  %6094 = fmul fast float %6093, %6082
  %6095 = fadd fast float %6088, %6071
  %6096 = fadd fast float %6091, %6072
  %6097 = fadd fast float %6094, %6073
  %6098 = call float @dx.op.unary.f32(i32 7, float %6095)  ; Saturate(value)
  %6099 = call float @dx.op.unary.f32(i32 7, float %6096)  ; Saturate(value)
  %6100 = call float @dx.op.unary.f32(i32 7, float %6097)  ; Saturate(value)
  br label %6101

; <label>:6101                                    ; preds = %6075, %5956
  %6102 = phi float [ %6098, %6075 ], [ %6071, %5956 ]
  %6103 = phi float [ %6099, %6075 ], [ %6072, %5956 ]
  %6104 = phi float [ %6100, %6075 ], [ %6073, %5956 ]
  %6105 = call float @dx.op.binary.f32(i32 35, float %6103, float %6104)  ; FMax(a,b)
  %6106 = call float @dx.op.binary.f32(i32 35, float %6102, float %6105)  ; FMax(a,b)
  %6107 = fsub fast float 1.000000e+00, %6106
  %6108 = fmul fast float %6106, %5399
  %6109 = fadd fast float %6108, %5399
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 2
  %6112 = extractvalue %dx.types.CBufRet.f32 %6110, 3
  %6113 = fmul fast float %6109, %6111
  %6114 = fadd fast float %6113, %6112
  %6115 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  %6116 = fsub fast float 1.000000e+00, %5802
  %6117 = fadd fast float %6116, %6115
  %6118 = call float @dx.op.unary.f32(i32 7, float %6117)  ; Saturate(value)
  %6119 = fcmp fast olt float %6118, 1.000000e+00
  br i1 %6119, label %6120, label %6568

; <label>:6120                                    ; preds = %6101
  %6121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = extractvalue %dx.types.CBufRet.f32 %6121, 2
  %6123 = extractvalue %dx.types.CBufRet.f32 %6121, 3
  %6124 = fmul fast float %6122, %97
  %6125 = fmul fast float %6123, %98
  %6126 = fptoui float %6124 to i32
  %6127 = fptoui float %6125 to i32
  %6128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6129 = extractvalue %dx.types.CBufRet.f32 %6128, 0
  %6130 = extractvalue %dx.types.CBufRet.f32 %6128, 2
  %6131 = extractvalue %dx.types.CBufRet.f32 %6128, 3
  %6132 = fadd fast float %85, -4.000000e+00
  %6133 = call float @dx.op.binary.f32(i32 35, float %6132, float 0.000000e+00)  ; FMax(a,b)
  %6134 = fadd fast float %6133, %6129
  %6135 = fmul fast float %6134, %6130
  %6136 = call float @dx.op.unary.f32(i32 23, float %6135)  ; Log(value)
  %6137 = fmul fast float %6136, %6131
  %6138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6139 = extractvalue %dx.types.CBufRet.f32 %6138, 2
  %6140 = fmul fast float %6137, %6139
  %6141 = call float @dx.op.unary.f32(i32 7, float %6140)  ; Saturate(value)
  %6142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6143 = extractvalue %dx.types.CBufRet.i32 %6142, 1
  %6144 = add i32 %6143, -1
  %6145 = uitofp i32 %6143 to float
  %6146 = fmul fast float %6145, %6141
  %6147 = fptoui float %6146 to i32
  %6148 = call i32 @dx.op.binary.i32(i32 40, i32 %6147, i32 %6144)  ; UMin(a,b)
  %6149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6150 = extractvalue %dx.types.CBufRet.i32 %6149, 2
  %6151 = extractvalue %dx.types.CBufRet.i32 %6149, 3
  %6152 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6127, i32 %6150, i32 %6126)  ; UMad(a,b,c)
  %6153 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6148, i32 %6151, i32 %6152)  ; UMad(a,b,c)
  %6154 = call float @dx.op.binary.f32(i32 35, float %85, float 0.000000e+00)  ; FMax(a,b)
  %6155 = fptoui float %6154 to i32
  %6156 = lshr i32 %6155, 5
  %6157 = call i32 @dx.op.binary.i32(i32 40, i32 %6156, i32 8191)  ; UMin(a,b)
  br i1 false, label %6158, label %6165

; <label>:6158                                    ; preds = %6120
  %6159 = fadd fast float 0.000000e+00, %5789
  %6160 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %6159, float %5787, float %5788, float %6159)  ; Dot3(ax,ay,az,bx,by,bz)
  %6161 = call float @dx.op.unary.f32(i32 25, float %6160)  ; Rsqrt(value)
  %6162 = fmul fast float %6161, %5787
  %6163 = fmul fast float %6161, %5788
  %6164 = fmul fast float %6159, %6161
  br label %6165

; <label>:6165                                    ; preds = %6158, %6120
  %6166 = phi float [ %6162, %6158 ], [ %5787, %6120 ]
  %6167 = phi float [ %6163, %6158 ], [ %5788, %6120 ]
  %6168 = phi float [ %6164, %6158 ], [ %5789, %6120 ]
  %6169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.i32 %6169, 2
  %6171 = add nsw i32 %6170, -1
  %6172 = call i32 @dx.op.binary.i32(i32 37, i32 %6171, i32 0)  ; IMax(a,b)
  %6173 = shl i32 %6157, 2
  %6174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6173, i32 undef)  ; BufferLoad(srv,index,wot)
  %6175 = extractvalue %dx.types.ResRet.i32 %6174, 0
  %6176 = lshr i32 %6175, 16
  %6177 = and i32 %6175, 65535
  %6178 = lshr i32 %6175, 21
  %6179 = lshr i32 %6177, 5
  %6180 = call i32 @dx.op.binary.i32(i32 40, i32 %6179, i32 %6172)  ; UMin(a,b)
  %6181 = icmp ugt i32 %6178, %6180
  br i1 %6181, label %6544, label %6182

; <label>:6182                                    ; preds = %6165
  br label %6183

; <label>:6183                                    ; preds = %6536, %6182
  %6184 = phi float [ %6537, %6536 ], [ 0.000000e+00, %6182 ]
  %6185 = phi float [ %6538, %6536 ], [ 0.000000e+00, %6182 ]
  %6186 = phi float [ %6539, %6536 ], [ 0.000000e+00, %6182 ]
  %6187 = phi float [ %6540, %6536 ], [ 1.000000e+00, %6182 ]
  %6188 = phi i32 [ %6541, %6536 ], [ %6178, %6182 ]
  %6189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6190 = extractvalue %dx.types.CBufRet.i32 %6189, 2
  %6191 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6153, i32 %6190, i32 %6188)  ; UMad(a,b,c)
  %6192 = shl i32 %6191, 2
  %6193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6192, i32 undef)  ; BufferLoad(srv,index,wot)
  %6194 = extractvalue %dx.types.ResRet.i32 %6193, 0
  %6195 = shl i32 %6188, 5
  %6196 = sub nsw i32 %6176, %6195
  %6197 = call i32 @dx.op.binary.i32(i32 37, i32 %6196, i32 0)  ; IMax(a,b)
  %6198 = call i32 @dx.op.binary.i32(i32 38, i32 %6197, i32 31)  ; IMin(a,b)
  %6199 = sub nsw i32 1, %6176
  %6200 = add nsw i32 %6199, %6177
  %6201 = call i32 @dx.op.binary.i32(i32 37, i32 %6200, i32 0)  ; IMax(a,b)
  %6202 = call i32 @dx.op.binary.i32(i32 38, i32 %6201, i32 32)  ; IMin(a,b)
  %6203 = and i32 %6202, 31
  %6204 = shl i32 -1, %6203
  %6205 = xor i32 %6204, -1
  %6206 = and i32 %6198, 31
  %6207 = shl i32 %6205, %6206
  %6208 = icmp eq i32 %6202, 32
  %6209 = select i1 %6208, i32 -1, i32 %6207
  %6210 = and i32 %6209, %6194
  %6211 = icmp eq i32 %6210, 0
  br i1 %6211, label %6536, label %6212

; <label>:6212                                    ; preds = %6183
  br label %6213

; <label>:6213                                    ; preds = %6319, %6212
  %6214 = phi float [ %6320, %6319 ], [ %6184, %6212 ]
  %6215 = phi float [ %6321, %6319 ], [ %6185, %6212 ]
  %6216 = phi float [ %6322, %6319 ], [ %6186, %6212 ]
  %6217 = phi float [ %6323, %6319 ], [ %6187, %6212 ]
  %6218 = phi i32 [ %6223, %6319 ], [ %6210, %6212 ]
  %6219 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6218)  ; FirstbitLo(value)
  %6220 = add i32 %6219, %6195
  %6221 = and i32 %6219, 31
  %6222 = shl i32 1, %6221
  %6223 = xor i32 %6222, %6218
  %6224 = mul i32 %6220, 72
  %6225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6224, i32 undef)  ; BufferLoad(srv,index,wot)
  %6226 = extractvalue %dx.types.ResRet.f32 %6225, 0
  %6227 = extractvalue %dx.types.ResRet.f32 %6225, 1
  %6228 = extractvalue %dx.types.ResRet.f32 %6225, 2
  %6229 = add i32 %6224, 12
  %6230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6229, i32 undef)  ; BufferLoad(srv,index,wot)
  %6231 = extractvalue %dx.types.ResRet.i32 %6230, 0
  %6232 = add i32 %6224, 16
  %6233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6232, i32 undef)  ; BufferLoad(srv,index,wot)
  %6234 = extractvalue %dx.types.ResRet.f32 %6233, 0
  %6235 = extractvalue %dx.types.ResRet.f32 %6233, 1
  %6236 = extractvalue %dx.types.ResRet.f32 %6233, 2
  %6237 = add i32 %6224, 28
  %6238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6237, i32 undef)  ; BufferLoad(srv,index,wot)
  %6239 = extractvalue %dx.types.ResRet.f32 %6238, 0
  %6240 = add i32 %6224, 32
  %6241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6240, i32 undef)  ; BufferLoad(srv,index,wot)
  %6242 = extractvalue %dx.types.ResRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.ResRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.ResRet.f32 %6241, 2
  %6245 = extractvalue %dx.types.ResRet.f32 %6241, 3
  %6246 = add i32 %6224, 48
  %6247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6246, i32 undef)  ; BufferLoad(srv,index,wot)
  %6248 = extractvalue %dx.types.ResRet.f32 %6247, 0
  %6249 = extractvalue %dx.types.ResRet.f32 %6247, 1
  %6250 = add i32 %6224, 56
  %6251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6250, i32 undef)  ; BufferLoad(srv,index,wot)
  %6252 = extractvalue %dx.types.ResRet.f32 %6251, 0
  %6253 = extractvalue %dx.types.ResRet.f32 %6251, 1
  %6254 = add i32 %6224, 64
  %6255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6254, i32 undef)  ; BufferLoad(srv,index,wot)
  %6256 = extractvalue %dx.types.ResRet.f32 %6255, 0
  %6257 = extractvalue %dx.types.ResRet.f32 %6255, 1
  %6258 = mul i32 %6220, 60
  %6259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6258, i32 undef)  ; BufferLoad(srv,index,wot)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 0
  %6261 = extractvalue %dx.types.ResRet.f32 %6259, 1
  %6262 = extractvalue %dx.types.ResRet.f32 %6259, 2
  %6263 = add i32 %6258, 12
  %6264 = add i32 %6258, 48
  %6265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6264, i32 undef)  ; BufferLoad(srv,index,wot)
  %6266 = extractvalue %dx.types.ResRet.f32 %6265, 0
  %6267 = extractvalue %dx.types.ResRet.f32 %6265, 1
  %6268 = extractvalue %dx.types.ResRet.f32 %6265, 2
  %6269 = and i32 %6231, 32767
  %6270 = bitcast float %6226 to i32
  %6271 = icmp eq i32 %6270, -1
  %6272 = bitcast float %6227 to i32
  %6273 = and i32 %6231, 32768
  %6274 = icmp ne i32 %6273, 0
  %6275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6276 = extractvalue %dx.types.CBufRet.f32 %6275, 0
  %6277 = extractvalue %dx.types.CBufRet.f32 %6275, 1
  %6278 = extractvalue %dx.types.CBufRet.f32 %6275, 2
  %6279 = fsub fast float %6260, %6276
  %6280 = fsub fast float %6261, %6277
  %6281 = fsub fast float %6262, %6278
  %6282 = fsub fast float %152, %6279
  %6283 = fsub fast float %153, %6280
  %6284 = fsub fast float %154, %6281
  %6285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6263, i32 undef)  ; BufferLoad(srv,index,wot)
  %6286 = extractvalue %dx.types.ResRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.ResRet.f32 %6285, 1
  %6288 = extractvalue %dx.types.ResRet.f32 %6285, 2
  %6289 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %6286, float %6287, float %6288)  ; Dot3(ax,ay,az,bx,by,bz)
  %6290 = add i32 %6258, 24
  %6291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6290, i32 undef)  ; BufferLoad(srv,index,wot)
  %6292 = extractvalue %dx.types.ResRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.ResRet.f32 %6291, 1
  %6294 = extractvalue %dx.types.ResRet.f32 %6291, 2
  %6295 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %6292, float %6293, float %6294)  ; Dot3(ax,ay,az,bx,by,bz)
  %6296 = add i32 %6258, 36
  %6297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6296, i32 undef)  ; BufferLoad(srv,index,wot)
  %6298 = extractvalue %dx.types.ResRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.ResRet.f32 %6297, 1
  %6300 = extractvalue %dx.types.ResRet.f32 %6297, 2
  %6301 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %6298, float %6299, float %6300)  ; Dot3(ax,ay,az,bx,by,bz)
  %6302 = call float @dx.op.unary.f32(i32 6, float %6289)  ; FAbs(value)
  %6303 = call float @dx.op.unary.f32(i32 6, float %6295)  ; FAbs(value)
  %6304 = call float @dx.op.unary.f32(i32 6, float %6301)  ; FAbs(value)
  %6305 = fsub fast float %6266, %6302
  %6306 = fsub fast float %6267, %6303
  %6307 = fsub fast float %6268, %6304
  %6308 = fmul fast float %6305, %6234
  %6309 = fmul fast float %6306, %6235
  %6310 = fmul fast float %6307, %6236
  %6311 = call float @dx.op.binary.f32(i32 36, float %6309, float %6310)  ; FMin(a,b)
  %6312 = call float @dx.op.binary.f32(i32 36, float %6308, float %6311)  ; FMin(a,b)
  %6313 = call float @dx.op.unary.f32(i32 7, float %6312)  ; Saturate(value)
  %6314 = call float @dx.op.binary.f32(i32 36, float %6217, float %6313)  ; FMin(a,b)
  %6315 = uitofp i1 %6274 to float
  %6316 = fsub fast float 1.000000e+00, %6315
  %6317 = fmul fast float %6314, %6316
  %6318 = fcmp fast ogt float %6317, 0.000000e+00
  br i1 %6318, label %6325, label %6319

; <label>:6319                                    ; preds = %6467, %6213
  %6320 = phi float [ %6531, %6467 ], [ %6214, %6213 ]
  %6321 = phi float [ %6532, %6467 ], [ %6215, %6213 ]
  %6322 = phi float [ %6533, %6467 ], [ %6216, %6213 ]
  %6323 = phi float [ %6534, %6467 ], [ %6217, %6213 ]
  %6324 = icmp eq i32 %6218, %6222
  br i1 %6324, label %6535, label %6213

; <label>:6325                                    ; preds = %6213
  br i1 %6271, label %6383, label %6326

; <label>:6326                                    ; preds = %6325
  %6327 = fsub fast float -0.000000e+00, %6286
  %6328 = fsub fast float -0.000000e+00, %6287
  %6329 = fsub fast float -0.000000e+00, %6288
  %6330 = call float @dx.op.dot3.f32(i32 55, float %6166, float %6167, float %6168, float %6327, float %6328, float %6329)  ; Dot3(ax,ay,az,bx,by,bz)
  %6331 = fsub fast float -0.000000e+00, %6330
  %6332 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %6327, float %6328, float %6329)  ; Dot3(ax,ay,az,bx,by,bz)
  %6333 = fadd fast float %6332, %6249
  %6334 = fadd fast float %6248, %6332
  %6335 = fsub fast float -0.000000e+00, %6334
  %6336 = fcmp ogt float %6330, -0.000000e+00
  %6337 = select i1 %6336, float %6335, float %6333
  %6338 = call float @dx.op.unary.f32(i32 6, float %6331)  ; FAbs(value)
  %6339 = fdiv fast float 1.000000e+00, %6338
  %6340 = fmul fast float %6337, %6339
  %6341 = call float @dx.op.binary.f32(i32 35, float %6340, float 0.000000e+00)  ; FMax(a,b)
  %6342 = fsub fast float -0.000000e+00, %6292
  %6343 = fsub fast float -0.000000e+00, %6293
  %6344 = fsub fast float -0.000000e+00, %6294
  %6345 = call float @dx.op.dot3.f32(i32 55, float %6166, float %6167, float %6168, float %6342, float %6343, float %6344)  ; Dot3(ax,ay,az,bx,by,bz)
  %6346 = fsub fast float -0.000000e+00, %6345
  %6347 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %6342, float %6343, float %6344)  ; Dot3(ax,ay,az,bx,by,bz)
  %6348 = fadd fast float %6347, %6253
  %6349 = fadd fast float %6252, %6347
  %6350 = fsub fast float -0.000000e+00, %6349
  %6351 = fcmp ogt float %6345, -0.000000e+00
  %6352 = select i1 %6351, float %6350, float %6348
  %6353 = call float @dx.op.unary.f32(i32 6, float %6346)  ; FAbs(value)
  %6354 = fdiv fast float 1.000000e+00, %6353
  %6355 = fmul fast float %6352, %6354
  %6356 = call float @dx.op.binary.f32(i32 35, float %6355, float 0.000000e+00)  ; FMax(a,b)
  %6357 = fsub fast float -0.000000e+00, %6298
  %6358 = fsub fast float -0.000000e+00, %6299
  %6359 = fsub fast float -0.000000e+00, %6300
  %6360 = call float @dx.op.dot3.f32(i32 55, float %6166, float %6167, float %6168, float %6357, float %6358, float %6359)  ; Dot3(ax,ay,az,bx,by,bz)
  %6361 = fsub fast float -0.000000e+00, %6360
  %6362 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %6357, float %6358, float %6359)  ; Dot3(ax,ay,az,bx,by,bz)
  %6363 = fadd fast float %6362, %6257
  %6364 = fadd fast float %6256, %6362
  %6365 = fsub fast float -0.000000e+00, %6364
  %6366 = fcmp ogt float %6360, -0.000000e+00
  %6367 = select i1 %6366, float %6365, float %6363
  %6368 = call float @dx.op.unary.f32(i32 6, float %6361)  ; FAbs(value)
  %6369 = fdiv fast float 1.000000e+00, %6368
  %6370 = fmul fast float %6367, %6369
  %6371 = call float @dx.op.binary.f32(i32 35, float %6370, float 0.000000e+00)  ; FMax(a,b)
  %6372 = call float @dx.op.binary.f32(i32 36, float %6356, float %6371)  ; FMin(a,b)
  %6373 = call float @dx.op.binary.f32(i32 36, float %6341, float %6372)  ; FMin(a,b)
  %6374 = fmul fast float %6373, %6166
  %6375 = fmul fast float %6373, %6167
  %6376 = fmul fast float %6373, %6168
  %6377 = fadd fast float %6374, %152
  %6378 = fadd fast float %6375, %153
  %6379 = fadd fast float %6376, %154
  %6380 = fsub fast float %6377, %6226
  %6381 = fsub fast float %6378, %6227
  %6382 = fsub fast float %6379, %6228
  br label %6390

; <label>:6383                                    ; preds = %6325
  %6384 = fmul fast float %6166, 8.096000e+03
  %6385 = fmul fast float %6167, 8.096000e+03
  %6386 = fmul fast float %6168, 8.096000e+03
  %6387 = fadd fast float %6384, %152
  %6388 = fadd fast float %6385, %153
  %6389 = fadd fast float %6386, %154
  br label %6390

; <label>:6390                                    ; preds = %6383, %6326
  %6391 = phi float [ %6166, %6383 ], [ %6380, %6326 ]
  %6392 = phi float [ %6167, %6383 ], [ %6381, %6326 ]
  %6393 = phi float [ %6168, %6383 ], [ %6382, %6326 ]
  %6394 = phi float [ %6387, %6383 ], [ %6377, %6326 ]
  %6395 = phi float [ %6388, %6383 ], [ %6378, %6326 ]
  %6396 = phi float [ %6389, %6383 ], [ %6379, %6326 ]
  %6397 = fcmp fast olt float %6245, 1.000000e+00
  br i1 %6397, label %6398, label %6429, !dx.controlflow.hints !85

; <label>:6398                                    ; preds = %6390
  %6399 = fmul fast float %6393, %6243
  %6400 = fmul fast float %6392, %6244
  %6401 = fsub fast float %6399, %6400
  %6402 = fmul fast float %6391, %6244
  %6403 = fmul fast float %6393, %6242
  %6404 = fsub fast float %6402, %6403
  %6405 = fmul fast float %6392, %6242
  %6406 = fmul fast float %6391, %6243
  %6407 = fsub fast float %6405, %6406
  %6408 = fmul fast float %6401, 2.000000e+00
  %6409 = fmul fast float %6404, 2.000000e+00
  %6410 = fmul fast float %6407, 2.000000e+00
  %6411 = fmul fast float %6408, %6245
  %6412 = fmul fast float %6409, %6245
  %6413 = fmul fast float %6410, %6245
  %6414 = fmul fast float %6410, %6243
  %6415 = fmul fast float %6409, %6244
  %6416 = fmul fast float %6408, %6244
  %6417 = fmul fast float %6410, %6242
  %6418 = fmul fast float %6409, %6242
  %6419 = fmul fast float %6408, %6243
  %6420 = fadd fast float %6414, %6391
  %6421 = fadd fast float %6420, %6411
  %6422 = fsub fast float %6421, %6415
  %6423 = fsub fast float %6392, %6417
  %6424 = fadd fast float %6423, %6412
  %6425 = fadd fast float %6424, %6416
  %6426 = fadd fast float %6413, %6393
  %6427 = fsub fast float %6426, %6419
  %6428 = fadd fast float %6427, %6418
  br label %6429

; <label>:6429                                    ; preds = %6398, %6390
  %6430 = phi float [ %6422, %6398 ], [ %6391, %6390 ]
  %6431 = phi float [ %6425, %6398 ], [ %6392, %6390 ]
  %6432 = phi float [ %6428, %6398 ], [ %6393, %6390 ]
  br i1 %6271, label %6464, label %6433

; <label>:6433                                    ; preds = %6429
  %6434 = fmul fast float %5399, 0x400187C840000000
  %6435 = fadd fast float %6434, 0xC00EFC2120000000
  %6436 = fmul fast float %6435, %5399
  %6437 = fadd fast float %6436, 0x3FE5D16340000000
  %6438 = fmul fast float %6437, %5399
  %6439 = fadd fast float %6438, 1.000000e+00
  %6440 = call float @dx.op.unary.f32(i32 7, float %6439)  ; Saturate(value)
  %6441 = fsub fast float %6394, %152
  %6442 = fsub fast float %6395, %153
  %6443 = fsub fast float %6396, %154
  %6444 = fsub fast float %6394, %6226
  %6445 = fsub fast float %6395, %6227
  %6446 = fsub fast float %6396, %6228
  %6447 = call float @dx.op.dot3.f32(i32 55, float %6441, float %6442, float %6443, float %6441, float %6442, float %6443)  ; Dot3(ax,ay,az,bx,by,bz)
  %6448 = call float @dx.op.dot3.f32(i32 55, float %6444, float %6445, float %6446, float %6444, float %6445, float %6446)  ; Dot3(ax,ay,az,bx,by,bz)
  %6449 = fadd fast float %6448, 0x3EE4F8B580000000
  %6450 = fdiv fast float %6447, %6449
  %6451 = bitcast float %6450 to i32
  %6452 = ashr i32 %6451, 1
  %6453 = add nsw i32 %6452, 532487669
  %6454 = bitcast i32 %6453 to float
  %6455 = fmul fast float %6454, %6440
  %6456 = call float @dx.op.unary.f32(i32 7, float %6455)  ; Saturate(value)
  %6457 = fmul fast float %6456, 0x4009981AE0000000
  %6458 = fsub fast float 0x40111BBD80000000, %6457
  %6459 = fmul fast float %6458, %6456
  %6460 = fadd fast float %6459, 0xC0009F6020000000
  %6461 = fmul fast float %6460, %6456
  %6462 = fadd fast float %6461, 1.000000e+00
  %6463 = call float @dx.op.unary.f32(i32 7, float %6462)  ; Saturate(value)
  br label %6467

; <label>:6464                                    ; preds = %6429
  %6465 = icmp ne i32 %6272, -1
  %6466 = zext i1 %6465 to i32
  br label %6467

; <label>:6467                                    ; preds = %6464, %6433
  %6468 = phi float [ %5399, %6464 ], [ %6463, %6433 ]
  %6469 = phi i32 [ %6466, %6464 ], [ 0, %6433 ]
  %6470 = fmul float %6468, 5.000000e+00
  %6471 = fsub float 5.000000e+00, %6470
  %6472 = icmp ne i32 %6469, 0
  %6473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6474 = extractvalue %dx.types.CBufRet.f32 %6473, 3
  %6475 = fadd fast float %6474, %6471
  %6476 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6475)  ; FMax(a,b)
  %6477 = call float @dx.op.unary.f32(i32 6, float %6430)  ; FAbs(value)
  %6478 = call float @dx.op.unary.f32(i32 6, float %6431)  ; FAbs(value)
  %6479 = fadd fast float %6478, %6477
  %6480 = call float @dx.op.unary.f32(i32 6, float %6432)  ; FAbs(value)
  %6481 = fadd fast float %6479, %6480
  %6482 = fcmp fast oeq float %6481, 0.000000e+00
  %6483 = fdiv fast float 1.000000e+00, %6481
  %6484 = select i1 %6482, float 1.000000e+00, float %6483
  %6485 = fmul fast float %6484, %6430
  %6486 = fmul fast float %6484, %6431
  %6487 = call float @dx.op.unary.f32(i32 6, float %6486)  ; FAbs(value)
  %6488 = call float @dx.op.unary.f32(i32 6, float %6485)  ; FAbs(value)
  %6489 = fsub fast float 1.000000e+00, %6487
  %6490 = fsub fast float 1.000000e+00, %6488
  %6491 = fcmp fast oge float %6485, 0.000000e+00
  %6492 = fcmp fast oge float %6486, 0.000000e+00
  %6493 = select i1 %6491, float 1.000000e+00, float -1.000000e+00
  %6494 = select i1 %6492, float 1.000000e+00, float -1.000000e+00
  %6495 = fcmp fast ole float %6432, 0.000000e+00
  %6496 = fmul fast float %6493, %6489
  %6497 = fmul fast float %6494, %6490
  %6498 = select i1 %6495, float %6496, float %6485
  %6499 = select i1 %6495, float %6497, float %6486
  %6500 = fmul fast float %6498, 5.000000e-01
  %6501 = fmul fast float %6499, 5.000000e-01
  %6502 = fadd fast float %6500, 5.000000e-01
  %6503 = fadd fast float %6501, 5.000000e-01
  %6504 = uitofp i32 %6269 to float
  %6505 = call float @dx.op.binary.f32(i32 36, float %6476, float 3.000000e+00)  ; FMin(a,b)
  %6506 = fadd fast float %6505, 2.000000e+00
  %6507 = call float @dx.op.unary.f32(i32 21, float %6506)  ; Exp(value)
  %6508 = extractvalue %dx.types.CBufRet.f32 %6473, 1
  %6509 = fmul fast float %6508, %6507
  %6510 = fmul fast float %6509, 2.000000e+00
  %6511 = fsub fast float 1.000000e+00, %6510
  %6512 = fmul fast float %6502, %6511
  %6513 = fmul fast float %6503, %6511
  %6514 = fadd fast float %6512, %6509
  %6515 = fadd fast float %6513, %6509
  %6516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %6514, float %6515, float %6504, float undef, i32 0, i32 0, i32 undef, float %6476)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6517 = extractvalue %dx.types.ResRet.f32 %6516, 0
  %6518 = extractvalue %dx.types.ResRet.f32 %6516, 1
  %6519 = extractvalue %dx.types.ResRet.f32 %6516, 2
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 3
  %6522 = fmul fast float %6521, %6239
  %6523 = call float @dx.op.binary.f32(i32 36, float %5807, float %6522)  ; FMin(a,b)
  %6524 = select i1 %6472, float %6523, float %6522
  %6525 = fmul fast float %6517, %6317
  %6526 = fmul fast float %6525, %6524
  %6527 = fmul fast float %6518, %6317
  %6528 = fmul fast float %6527, %6524
  %6529 = fmul fast float %6519, %6317
  %6530 = fmul fast float %6529, %6524
  %6531 = fadd fast float %6526, %6214
  %6532 = fadd fast float %6528, %6215
  %6533 = fadd fast float %6530, %6216
  %6534 = fsub fast float %6217, %6317
  br label %6319

; <label>:6535                                    ; preds = %6319
  br label %6536

; <label>:6536                                    ; preds = %6535, %6183
  %6537 = phi float [ %6184, %6183 ], [ %6320, %6535 ]
  %6538 = phi float [ %6185, %6183 ], [ %6321, %6535 ]
  %6539 = phi float [ %6186, %6183 ], [ %6322, %6535 ]
  %6540 = phi float [ %6187, %6183 ], [ %6323, %6535 ]
  %6541 = add i32 %6188, 1
  %6542 = icmp ugt i32 %6541, %6180
  br i1 %6542, label %6543, label %6183, !llvm.loop !86

; <label>:6543                                    ; preds = %6536
  br label %6544

; <label>:6544                                    ; preds = %6543, %6165
  %6545 = phi float [ 0.000000e+00, %6165 ], [ %6537, %6543 ]
  %6546 = phi float [ 0.000000e+00, %6165 ], [ %6538, %6543 ]
  %6547 = phi float [ 0.000000e+00, %6165 ], [ %6539, %6543 ]
  %6548 = call float @dx.op.dot3.f32(i32 55, float %6545, float %6546, float %6547, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6549 = select i1 %213, float 0.000000e+00, float %6545
  %6550 = select i1 %213, float %6548, float %6546
  %6551 = select i1 %213, float 0.000000e+00, float %6547
  %6552 = fcmp fast olt float %6118, 0.000000e+00
  %6553 = call float @dx.op.unary.f32(i32 6, float %6118)  ; FAbs(value)
  %6554 = fmul fast float %6553, %6047
  %6555 = fmul fast float %6553, %6048
  %6556 = fmul fast float %6553, %6049
  %6557 = select i1 %6552, float %6047, float %6554
  %6558 = select i1 %6552, float %6048, float %6555
  %6559 = select i1 %6552, float %6049, float %6556
  %6560 = fsub fast float 1.000000e+00, %6553
  %6561 = call float @dx.op.unary.f32(i32 7, float %6560)  ; Saturate(value)
  %6562 = fmul fast float %6561, %6549
  %6563 = fmul fast float %6561, %6550
  %6564 = fmul fast float %6561, %6551
  %6565 = fadd fast float %6557, %6562
  %6566 = fadd fast float %6558, %6563
  %6567 = fadd fast float %6559, %6564
  br label %6568

; <label>:6568                                    ; preds = %6544, %6101
  %6569 = phi float [ %6047, %6101 ], [ %6565, %6544 ]
  %6570 = phi float [ %6048, %6101 ], [ %6566, %6544 ]
  %6571 = phi float [ %6049, %6101 ], [ %6567, %6544 ]
  %6572 = call float @dx.op.dot3.f32(i32 55, float %5390, float %5391, float %5392, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6573 = fcmp fast ogt float %6572, 0x3E7FF19E20000000
  %6574 = fdiv fast float 1.000000e+00, %6572
  %6575 = select i1 %6573, float %6574, float 0.000000e+00
  %6576 = fmul fast float %6575, %5390
  %6577 = fmul fast float %6575, %5391
  %6578 = fmul fast float %6575, %5392
  %6579 = fadd fast float %6576, -1.000000e+00
  %6580 = fadd fast float %6577, -1.000000e+00
  %6581 = fadd fast float %6578, -1.000000e+00
  %6582 = fmul fast float %6579, 5.000000e-01
  %6583 = fmul fast float %6580, 5.000000e-01
  %6584 = fmul fast float %6581, 5.000000e-01
  %6585 = fadd fast float %6582, 1.000000e+00
  %6586 = fadd fast float %6583, 1.000000e+00
  %6587 = fadd fast float %6584, 1.000000e+00
  %6588 = call float @dx.op.binary.f32(i32 35, float %5781, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6589 = fdiv fast float %4417, %6588
  %6590 = fcmp fast olt float %5112, 1.270000e+02
  %6591 = fcmp fast olt float %5113, 1.270000e+02
  %6592 = fcmp fast olt float %5114, 1.270000e+02
  %6593 = fmul fast float %5112, 0xBFF7154760000000
  %6594 = fmul fast float %6593, %6589
  %6595 = fmul fast float %5113, 0xBFF7154760000000
  %6596 = fmul fast float %6595, %6589
  %6597 = fmul fast float %5114, 0xBFF7154760000000
  %6598 = fmul fast float %6597, %6589
  %6599 = call float @dx.op.unary.f32(i32 21, float %6594)  ; Exp(value)
  %6600 = call float @dx.op.unary.f32(i32 21, float %6596)  ; Exp(value)
  %6601 = call float @dx.op.unary.f32(i32 21, float %6598)  ; Exp(value)
  %6602 = call float @dx.op.unary.f32(i32 7, float %6599)  ; Saturate(value)
  %6603 = call float @dx.op.unary.f32(i32 7, float %6600)  ; Saturate(value)
  %6604 = call float @dx.op.unary.f32(i32 7, float %6601)  ; Saturate(value)
  %6605 = select i1 %6590, float %6602, float 0.000000e+00
  %6606 = select i1 %6591, float %6603, float 0.000000e+00
  %6607 = select i1 %6592, float %6604, float 0.000000e+00
  %6608 = fmul fast float %6605, %6107
  %6609 = fmul fast float %6606, %6107
  %6610 = fmul fast float %6607, %6107
  %6611 = fadd fast float %6608, -1.000000e+00
  %6612 = fadd fast float %6609, -1.000000e+00
  %6613 = fadd fast float %6610, -1.000000e+00
  %6614 = fmul fast float %6611, %5060
  %6615 = fmul fast float %6612, %5060
  %6616 = fmul fast float %6613, %5060
  %6617 = fmul fast float %6569, %6102
  %6618 = fmul fast float %6570, %6103
  %6619 = fmul fast float %6571, %6104
  %6620 = fsub fast float 1.000000e+00, %5781
  %6621 = bitcast float %6620 to i32
  %6622 = sitofp i32 %6621 to float
  %6623 = fmul fast float %6622, 5.000000e+00
  %6624 = fadd fast float %6623, 0xC1EFBF8940000000
  %6625 = fptosi float %6624 to i32
  %6626 = bitcast i32 %6625 to float
  %6627 = fmul fast float %6626, %5064
  %6628 = fmul fast float %6039, %6627
  %6629 = fmul fast float %6628, %6107
  %6630 = fmul fast float %6629, %6585
  %6631 = fmul fast float %6040, %6627
  %6632 = fmul fast float %6631, %6107
  %6633 = fmul fast float %6632, %6586
  %6634 = fmul fast float %6041, %6627
  %6635 = fmul fast float %6634, %6107
  %6636 = fmul fast float %6635, %6587
  %6637 = fadd fast float %6617, %5053
  %6638 = fadd fast float %6637, %6630
  %6639 = fmul fast float %6638, %5060
  %6640 = fadd fast float %6618, %5054
  %6641 = fadd fast float %6640, %6633
  %6642 = fmul fast float %6641, %5060
  %6643 = fadd fast float %6619, %5055
  %6644 = fadd fast float %6643, %6636
  %6645 = fmul fast float %6644, %5060
  %6646 = fmul fast float %5397, 0x4012D0A400000000
  %6647 = fadd fast float %6616, 1.000000e+00
  %6648 = fadd fast float %6615, 1.000000e+00
  %6649 = fadd fast float %6614, 1.000000e+00
  %6650 = fmul fast float %6107, %6041
  %6651 = fmul fast float %6107, %6040
  %6652 = fmul fast float %6107, %6039
  %6653 = fmul fast float %5796, %5060
  %6654 = fsub fast float 1.000000e+00, %6653
  %6655 = call float @dx.op.unary.f32(i32 7, float %6654)  ; Saturate(value)
  %6656 = fsub fast float 1.000000e+00, %6655
  %6657 = fadd fast float %6646, 0x3FDB6377A0000000
  %6658 = fmul fast float %6656, %6657
  %6659 = call float @dx.op.dot3.f32(i32 55, float %5130, float %5131, float %5132, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6660 = fadd fast float %6658, %6659
  %6661 = call float @dx.op.unary.f32(i32 7, float %6660)  ; Saturate(value)
  %6662 = call float @dx.op.binary.f32(i32 35, float %6661, float 0x3F847AE140000000)  ; FMax(a,b)
  %6663 = fmul fast float %6662, %6662
  %6664 = fmul fast float %6663, %6663
  %6665 = fmul fast float %6664, 0xC00A935000000000
  %6666 = call float @dx.op.unary.f32(i32 21, float %6665)  ; Exp(value)
  %6667 = fsub fast float 1.000000e+00, %6666
  %6668 = fmul fast float %6649, %6043
  %6669 = fmul fast float %6668, %6667
  %6670 = fmul fast float %6648, %6044
  %6671 = fmul fast float %6670, %6667
  %6672 = fmul fast float %6647, %6045
  %6673 = fmul fast float %6672, %6667
  %6674 = fadd fast float %6669, %6652
  %6675 = fmul fast float %6674, %5060
  %6676 = fadd fast float %6671, %6651
  %6677 = fmul fast float %6676, %5060
  %6678 = fadd fast float %6673, %6650
  %6679 = fmul fast float %6678, %5060
  %6680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6681 = extractvalue %dx.types.CBufRet.f32 %6680, 3
  %6682 = fcmp fast oeq float %6681, 0.000000e+00
  br i1 %6682, label %8286, label %6683

; <label>:6683                                    ; preds = %6568
  %6684 = extractvalue %dx.types.CBufRet.f32 %6680, 0
  %6685 = extractvalue %dx.types.CBufRet.f32 %6680, 1
  %6686 = extractvalue %dx.types.CBufRet.f32 %6680, 2
  %6687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6688 = extractvalue %dx.types.CBufRet.f32 %6687, 0
  %6689 = extractvalue %dx.types.CBufRet.f32 %6687, 1
  %6690 = extractvalue %dx.types.CBufRet.f32 %6687, 2
  %6691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6691, 0
  %6693 = extractvalue %dx.types.CBufRet.f32 %6691, 1
  %6694 = call float @dx.op.dot3.f32(i32 55, float %6688, float %6689, float %6690, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6695 = select i1 %213, float %6692, float %6688
  %6696 = select i1 %213, float %6694, float %6689
  %6697 = select i1 %213, float %6693, float %6690
  %6698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6699 = extractvalue %dx.types.CBufRet.f32 %6698, 2
  %6700 = fmul fast float %6699, %104
  %6701 = fmul fast float %6699, %105
  %6702 = fmul fast float %6699, %106
  %6703 = fadd fast float %6700, %152
  %6704 = fadd fast float %6701, %153
  %6705 = fadd fast float %6702, %154
  %6706 = fcmp fast olt float %6681, 0.000000e+00
  br i1 %6706, label %7802, label %6707

; <label>:6707                                    ; preds = %6683
  %6708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6709 = extractvalue %dx.types.CBufRet.f32 %6708, 0
  %6710 = extractvalue %dx.types.CBufRet.f32 %6708, 1
  %6711 = extractvalue %dx.types.CBufRet.f32 %6708, 2
  %6712 = extractvalue %dx.types.CBufRet.f32 %6708, 3
  %6713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6714 = extractvalue %dx.types.CBufRet.f32 %6713, 0
  %6715 = extractvalue %dx.types.CBufRet.f32 %6713, 1
  %6716 = extractvalue %dx.types.CBufRet.f32 %6713, 2
  %6717 = extractvalue %dx.types.CBufRet.f32 %6713, 3
  %6718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6718, 0
  %6720 = extractvalue %dx.types.CBufRet.f32 %6718, 1
  %6721 = extractvalue %dx.types.CBufRet.f32 %6718, 2
  %6722 = extractvalue %dx.types.CBufRet.f32 %6718, 3
  %6723 = fmul fast float %6709, %6703
  %6724 = call float @dx.op.tertiary.f32(i32 46, float %6704, float %6710, float %6723)  ; FMad(a,b,c)
  %6725 = call float @dx.op.tertiary.f32(i32 46, float %6705, float %6711, float %6724)  ; FMad(a,b,c)
  %6726 = fadd fast float %6725, %6712
  %6727 = fmul fast float %6714, %6703
  %6728 = call float @dx.op.tertiary.f32(i32 46, float %6704, float %6715, float %6727)  ; FMad(a,b,c)
  %6729 = call float @dx.op.tertiary.f32(i32 46, float %6705, float %6716, float %6728)  ; FMad(a,b,c)
  %6730 = fadd fast float %6729, %6717
  %6731 = fmul fast float %6719, %6703
  %6732 = call float @dx.op.tertiary.f32(i32 46, float %6704, float %6720, float %6731)  ; FMad(a,b,c)
  %6733 = call float @dx.op.tertiary.f32(i32 46, float %6705, float %6721, float %6732)  ; FMad(a,b,c)
  %6734 = fadd fast float %6733, %6722
  %6735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6736 = extractvalue %dx.types.CBufRet.f32 %6735, 0
  %6737 = extractvalue %dx.types.CBufRet.f32 %6735, 1
  %6738 = extractvalue %dx.types.CBufRet.f32 %6735, 3
  %6739 = fmul fast float %6738, %6726
  %6740 = fmul fast float %6738, %6730
  %6741 = fadd fast float %6739, %6736
  %6742 = fadd fast float %6740, %6737
  %6743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6744 = extractvalue %dx.types.CBufRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.CBufRet.f32 %6743, 1
  %6746 = extractvalue %dx.types.CBufRet.f32 %6743, 3
  %6747 = fmul fast float %6746, %6726
  %6748 = fmul fast float %6746, %6730
  %6749 = fadd fast float %6747, %6744
  %6750 = fadd fast float %6748, %6745
  %6751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6752 = extractvalue %dx.types.CBufRet.f32 %6751, 1
  %6753 = fsub fast float %6752, %6734
  %6754 = extractvalue %dx.types.CBufRet.f32 %6751, 2
  %6755 = fmul fast float %6753, %6754
  %6756 = fsub fast float 1.000000e+00, %6755
  %6757 = call float @dx.op.unary.f32(i32 7, float %6756)  ; Saturate(value)
  %6758 = extractvalue %dx.types.CBufRet.f32 %6743, 2
  %6759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6759, 2
  %6761 = fadd fast float %6760, %6758
  %6762 = fcmp fast ogt float %6761, 0.000000e+00
  br i1 %6762, label %6763, label %6787

; <label>:6763                                    ; preds = %6707
  %6764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6765 = extractvalue %dx.types.CBufRet.f32 %6764, 0
  %6766 = extractvalue %dx.types.CBufRet.f32 %6764, 1
  %6767 = fsub fast float %6749, %6765
  %6768 = fsub fast float %6750, %6766
  %6769 = fcmp fast olt float %6767, 0.000000e+00
  %6770 = fcmp fast olt float %6768, 0.000000e+00
  %6771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6772 = extractvalue %dx.types.CBufRet.f32 %6771, 0
  %6773 = extractvalue %dx.types.CBufRet.f32 %6771, 1
  %6774 = extractvalue %dx.types.CBufRet.f32 %6771, 2
  %6775 = extractvalue %dx.types.CBufRet.f32 %6771, 3
  %6776 = select i1 %6769, float %6772, float %6774
  %6777 = select i1 %6770, float %6773, float %6775
  %6778 = fmul fast float %6776, %6767
  %6779 = fmul fast float %6777, %6768
  %6780 = call float @dx.op.unary.f32(i32 6, float %6778)  ; FAbs(value)
  %6781 = call float @dx.op.unary.f32(i32 6, float %6779)  ; FAbs(value)
  %6782 = extractvalue %dx.types.CBufRet.f32 %6698, 0
  %6783 = call float @dx.op.binary.f32(i32 35, float %6780, float %6781)  ; FMax(a,b)
  %6784 = fsub fast float %6782, %6783
  %6785 = call float @dx.op.unary.f32(i32 7, float %6784)  ; Saturate(value)
  %6786 = fmul fast float %6785, %6757
  br label %6787

; <label>:6787                                    ; preds = %6763, %6707
  %6788 = phi float [ %6786, %6763 ], [ 0.000000e+00, %6707 ]
  %6789 = extractvalue %dx.types.CBufRet.f32 %6735, 2
  %6790 = extractvalue %dx.types.CBufRet.f32 %6759, 1
  %6791 = fadd fast float %6790, %6789
  %6792 = fcmp fast ogt float %6791, 0.000000e+00
  %6793 = extractvalue %dx.types.CBufRet.f32 %6698, 0
  br i1 %6792, label %6794, label %6817

; <label>:6794                                    ; preds = %6787
  %6795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.f32 %6795, 0
  %6797 = extractvalue %dx.types.CBufRet.f32 %6795, 1
  %6798 = fsub fast float %6741, %6796
  %6799 = fsub fast float %6742, %6797
  %6800 = fcmp fast olt float %6798, 0.000000e+00
  %6801 = fcmp fast olt float %6799, 0.000000e+00
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 0
  %6804 = extractvalue %dx.types.CBufRet.f32 %6802, 1
  %6805 = extractvalue %dx.types.CBufRet.f32 %6802, 2
  %6806 = extractvalue %dx.types.CBufRet.f32 %6802, 3
  %6807 = select i1 %6800, float %6803, float %6805
  %6808 = select i1 %6801, float %6804, float %6806
  %6809 = fmul fast float %6807, %6798
  %6810 = fmul fast float %6808, %6799
  %6811 = call float @dx.op.unary.f32(i32 6, float %6809)  ; FAbs(value)
  %6812 = call float @dx.op.unary.f32(i32 6, float %6810)  ; FAbs(value)
  %6813 = call float @dx.op.binary.f32(i32 35, float %6811, float %6812)  ; FMax(a,b)
  %6814 = fsub fast float %6793, %6813
  %6815 = call float @dx.op.unary.f32(i32 7, float %6814)  ; Saturate(value)
  %6816 = fmul fast float %6815, %6757
  br label %6817

; <label>:6817                                    ; preds = %6794, %6787
  %6818 = phi float [ %6816, %6794 ], [ 0.000000e+00, %6787 ]
  %6819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6820 = extractvalue %dx.types.CBufRet.f32 %6819, 1
  %6821 = call float @dx.op.unary.f32(i32 7, float %6820)  ; Saturate(value)
  %6822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6823 = extractvalue %dx.types.CBufRet.f32 %6822, 0
  %6824 = extractvalue %dx.types.CBufRet.f32 %6822, 1
  %6825 = fsub fast float %6726, %6823
  %6826 = fsub fast float %6730, %6824
  %6827 = fcmp fast olt float %6825, 0.000000e+00
  %6828 = fcmp fast olt float %6826, 0.000000e+00
  %6829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6830 = extractvalue %dx.types.CBufRet.f32 %6829, 0
  %6831 = extractvalue %dx.types.CBufRet.f32 %6829, 1
  %6832 = extractvalue %dx.types.CBufRet.f32 %6829, 2
  %6833 = extractvalue %dx.types.CBufRet.f32 %6829, 3
  %6834 = select i1 %6827, float %6830, float %6832
  %6835 = select i1 %6828, float %6831, float %6833
  %6836 = fmul fast float %6834, %6825
  %6837 = fmul fast float %6835, %6826
  %6838 = call float @dx.op.unary.f32(i32 6, float %6836)  ; FAbs(value)
  %6839 = call float @dx.op.unary.f32(i32 6, float %6837)  ; FAbs(value)
  %6840 = call float @dx.op.binary.f32(i32 35, float %6838, float %6839)  ; FMax(a,b)
  %6841 = fsub fast float %6793, %6840
  %6842 = call float @dx.op.unary.f32(i32 7, float %6841)  ; Saturate(value)
  %6843 = call float @dx.op.binary.f32(i32 36, float %6842, float %6821)  ; FMin(a,b)
  %6844 = fmul fast float %6843, %6757
  %6845 = fsub fast float %6818, %6844
  %6846 = fsub fast float %6788, %6818
  %6847 = fsub fast float %6846, %6844
  %6848 = call float @dx.op.binary.f32(i32 35, float %6844, float %6818)  ; FMax(a,b)
  %6849 = call float @dx.op.binary.f32(i32 35, float %6848, float %6788)  ; FMax(a,b)
  %6850 = fcmp fast olt float %6849, 1.000000e+00
  br i1 %6850, label %6851, label %7249, !dx.controlflow.hints !88

; <label>:6851                                    ; preds = %6817
  %6852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6853 = extractvalue %dx.types.CBufRet.f32 %6852, 0
  %6854 = fcmp fast une float %6853, 0.000000e+00
  br i1 %6854, label %6855, label %7249, !dx.controlflow.hints !89

; <label>:6855                                    ; preds = %6851
  %6856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6857 = extractvalue %dx.types.CBufRet.f32 %6856, 0
  %6858 = extractvalue %dx.types.CBufRet.f32 %6856, 1
  %6859 = extractvalue %dx.types.CBufRet.f32 %6856, 2
  %6860 = extractvalue %dx.types.CBufRet.f32 %6856, 3
  %6861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6861, 0
  %6863 = extractvalue %dx.types.CBufRet.f32 %6861, 1
  %6864 = extractvalue %dx.types.CBufRet.f32 %6861, 2
  %6865 = extractvalue %dx.types.CBufRet.f32 %6861, 3
  %6866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6867 = extractvalue %dx.types.CBufRet.f32 %6866, 0
  %6868 = extractvalue %dx.types.CBufRet.f32 %6866, 1
  %6869 = extractvalue %dx.types.CBufRet.f32 %6866, 2
  %6870 = extractvalue %dx.types.CBufRet.f32 %6866, 3
  %6871 = fmul fast float %6857, %6703
  %6872 = call float @dx.op.tertiary.f32(i32 46, float %6704, float %6858, float %6871)  ; FMad(a,b,c)
  %6873 = call float @dx.op.tertiary.f32(i32 46, float %6705, float %6859, float %6872)  ; FMad(a,b,c)
  %6874 = fadd fast float %6873, %6860
  %6875 = fmul fast float %6862, %6703
  %6876 = call float @dx.op.tertiary.f32(i32 46, float %6704, float %6863, float %6875)  ; FMad(a,b,c)
  %6877 = call float @dx.op.tertiary.f32(i32 46, float %6705, float %6864, float %6876)  ; FMad(a,b,c)
  %6878 = fadd fast float %6877, %6865
  %6879 = fmul fast float %6867, %6703
  %6880 = call float @dx.op.tertiary.f32(i32 46, float %6704, float %6868, float %6879)  ; FMad(a,b,c)
  %6881 = call float @dx.op.tertiary.f32(i32 46, float %6705, float %6869, float %6880)  ; FMad(a,b,c)
  %6882 = fadd fast float %6881, %6870
  %6883 = fcmp fast oge float %6874, 1.000000e+00
  %6884 = fcmp fast oge float %6878, 1.000000e+00
  %6885 = or i1 %6883, %6884
  %6886 = fcmp fast olt float %6874, 0.000000e+00
  %6887 = fcmp fast olt float %6878, 0.000000e+00
  %6888 = or i1 %6886, %6887
  %6889 = or i1 %6885, %6888
  br i1 %6889, label %7249, label %6890, !dx.controlflow.hints !90

; <label>:6890                                    ; preds = %6855
  %6891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6892 = extractvalue %dx.types.CBufRet.f32 %6891, 0
  %6893 = extractvalue %dx.types.CBufRet.f32 %6891, 1
  %6894 = extractvalue %dx.types.CBufRet.f32 %6891, 2
  %6895 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6896 = extractvalue %dx.types.CBufRet.i32 %6895, 2
  %6897 = uitofp i32 %6896 to float
  %6898 = extractvalue %dx.types.CBufRet.i32 %6895, 3
  %6899 = uitofp i32 %6898 to float
  %6900 = extractvalue %dx.types.CBufRet.f32 %6891, 3
  %6901 = fmul fast float %6900, 2.000000e+00
  %6902 = fsub fast float %6874, %6892
  %6903 = fsub fast float %6878, %6893
  %6904 = fmul fast float %6901, %6902
  %6905 = fmul fast float %6901, %6903
  %6906 = fdiv fast float 1.000000e+00, %6686
  %6907 = fmul fast float %6905, %6906
  %6908 = call float @dx.op.unary.f32(i32 6, float %6907)  ; FAbs(value)
  %6909 = fmul fast float %6894, %6705
  %6910 = fmul fast float %6909, %6901
  %6911 = call float @dx.op.unary.f32(i32 6, float %6910)  ; FAbs(value)
  %6912 = call float @dx.op.unary.f32(i32 6, float %6904)  ; FAbs(value)
  %6913 = call float @dx.op.binary.f32(i32 35, float %6912, float %6911)  ; FMax(a,b)
  %6914 = call float @dx.op.binary.f32(i32 35, float %6913, float %6908)  ; FMax(a,b)
  %6915 = fmul fast float %6914, 2.000000e+00
  %6916 = call float @dx.op.unary.f32(i32 23, float %6915)  ; Log(value)
  %6917 = call float @dx.op.binary.f32(i32 35, float %6916, float %6897)  ; FMax(a,b)
  %6918 = call float @dx.op.unary.f32(i32 22, float %6917)  ; Frc(value)
  %6919 = fadd fast float %6918, 0xBFEA666660000000
  %6920 = fmul fast float %6919, 8.000000e+00
  %6921 = call float @dx.op.unary.f32(i32 7, float %6920)  ; Saturate(value)
  %6922 = call float @dx.op.unary.f32(i32 27, float %6917)  ; Round_ni(value)
  %6923 = fadd fast float %6922, %6921
  %6924 = call float @dx.op.binary.f32(i32 36, float %6923, float %6899)  ; FMin(a,b)
  %6925 = call float @dx.op.unary.f32(i32 27, float %6924)  ; Round_ni(value)
  %6926 = fsub fast float -0.000000e+00, %6925
  %6927 = call float @dx.op.unary.f32(i32 21, float %6926)  ; Exp(value)
  %6928 = fmul fast float %6927, %6901
  %6929 = fmul fast float %6928, %6874
  %6930 = fmul fast float %6928, %6878
  %6931 = fmul fast float %6929, 2.500000e-01
  %6932 = fmul fast float %6930, 2.500000e-01
  %6933 = fadd fast float %6931, 5.000000e-01
  %6934 = fadd fast float %6932, 5.000000e-01
  %6935 = fsub fast float %6899, %6897
  %6936 = fptoui float %6935 to i32
  %6937 = add i32 %6936, 320
  %6938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %6937)  ; CBufferLoadLegacy(handle,regIndex)
  %6939 = extractvalue %dx.types.CBufRet.f32 %6938, 0
  %6940 = extractvalue %dx.types.CBufRet.f32 %6938, 1
  %6941 = fcmp fast une float %6924, %6899
  %6942 = fsub fast float %6874, %6939
  %6943 = fsub fast float %6878, %6940
  %6944 = call float @dx.op.unary.f32(i32 6, float %6942)  ; FAbs(value)
  %6945 = call float @dx.op.unary.f32(i32 6, float %6943)  ; FAbs(value)
  %6946 = fmul fast float %6944, %6928
  %6947 = fmul fast float %6945, %6928
  %6948 = fcmp fast olt float %6946, 1.000000e+00
  %6949 = fcmp fast olt float %6947, 1.000000e+00
  %6950 = and i1 %6948, %6949
  %6951 = or i1 %6941, %6950
  br i1 %6951, label %6952, label %7249, !dx.controlflow.hints !91

; <label>:6952                                    ; preds = %6890
  %6953 = fmul fast float %6930, 5.000000e-01
  %6954 = fmul fast float %6929, 5.000000e-01
  %6955 = fadd fast float %6953, 5.000000e-01
  %6956 = fadd fast float %6954, 5.000000e-01
  %6957 = sitofp i32 %6896 to float
  %6958 = fsub fast float %6924, %6957
  %6959 = call float @dx.op.unary.f32(i32 27, float %6958)  ; Round_ni(value)
  %6960 = call float @dx.op.unary.f32(i32 22, float %6924)  ; Frc(value)
  %6961 = call float @dx.op.unary.f32(i32 22, float %6956)  ; Frc(value)
  %6962 = call float @dx.op.unary.f32(i32 22, float %6955)  ; Frc(value)
  %6963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6961, float %6962, float %6959, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6964 = extractvalue %dx.types.ResRet.f32 %6963, 0
  %6965 = extractvalue %dx.types.ResRet.f32 %6963, 1
  %6966 = extractvalue %dx.types.ResRet.f32 %6963, 2
  %6967 = extractvalue %dx.types.ResRet.f32 %6963, 3
  %6968 = fcmp fast ogt float %6960, 0.000000e+00
  br i1 %6968, label %6969, label %6990, !dx.controlflow.hints !92

; <label>:6969                                    ; preds = %6952
  %6970 = fadd fast float %6959, 1.000000e+00
  %6971 = call float @dx.op.unary.f32(i32 22, float %6933)  ; Frc(value)
  %6972 = call float @dx.op.unary.f32(i32 22, float %6934)  ; Frc(value)
  %6973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6971, float %6972, float %6970, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6974 = extractvalue %dx.types.ResRet.f32 %6973, 0
  %6975 = extractvalue %dx.types.ResRet.f32 %6973, 1
  %6976 = extractvalue %dx.types.ResRet.f32 %6973, 2
  %6977 = extractvalue %dx.types.ResRet.f32 %6973, 3
  %6978 = fsub fast float %6974, %6964
  %6979 = fsub fast float %6975, %6965
  %6980 = fsub fast float %6976, %6966
  %6981 = fsub fast float %6977, %6967
  %6982 = fmul fast float %6978, %6960
  %6983 = fmul fast float %6979, %6960
  %6984 = fmul fast float %6980, %6960
  %6985 = fmul fast float %6981, %6960
  %6986 = fadd fast float %6982, %6964
  %6987 = fadd fast float %6983, %6965
  %6988 = fadd fast float %6984, %6966
  %6989 = fadd fast float %6985, %6967
  br label %6990

; <label>:6990                                    ; preds = %6969, %6952
  %6991 = phi float [ %6986, %6969 ], [ %6964, %6952 ]
  %6992 = phi float [ %6987, %6969 ], [ %6965, %6952 ]
  %6993 = phi float [ %6988, %6969 ], [ %6966, %6952 ]
  %6994 = phi float [ %6989, %6969 ], [ %6967, %6952 ]
  %6995 = fadd fast float %6991, -5.000000e-01
  %6996 = fadd fast float %6993, -5.000000e-01
  %6997 = fmul fast float %6995, 0xBFD5555560000000
  %6998 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6996, float %6997)  ; FMad(a,b,c)
  %6999 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6992, float 0.000000e+00)  ; FMad(a,b,c)
  %7000 = fadd fast float %6999, %6994
  %7001 = fmul fast float %6995, -7.500000e-01
  %7002 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6996, float %7001)  ; FMad(a,b,c)
  %7003 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6992, float 0.000000e+00)  ; FMad(a,b,c)
  %7004 = fadd fast float %7003, %6994
  %7005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7006 = extractvalue %dx.types.CBufRet.f32 %7005, 0
  %7007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7008 = extractvalue %dx.types.CBufRet.f32 %7007, 0
  %7009 = extractvalue %dx.types.CBufRet.f32 %7007, 1
  %7010 = extractvalue %dx.types.CBufRet.f32 %7007, 2
  %7011 = extractvalue %dx.types.CBufRet.f32 %7007, 3
  %7012 = fsub fast float %7008, %6998
  %7013 = fsub fast float %7009, %7000
  %7014 = fsub fast float %7010, %7002
  %7015 = fsub fast float %7011, %7004
  %7016 = fmul fast float %7012, %7006
  %7017 = fmul fast float %7013, %7006
  %7018 = fmul fast float %7014, %7006
  %7019 = fmul fast float %7015, %7006
  %7020 = fadd fast float %7016, %6998
  %7021 = fadd fast float %7017, %7000
  %7022 = fadd fast float %7018, %7002
  %7023 = fadd fast float %7019, %7004
  %7024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7025 = extractvalue %dx.types.ResRet.i32 %7024, 0
  %7026 = and i32 %7025, 536870911
  %7027 = uitofp i32 %7026 to float
  %7028 = fmul fast float %7027, %6874
  %7029 = fmul fast float %7027, %6878
  %7030 = fptoui float %7028 to i32
  %7031 = fptoui float %7029 to i32
  %7032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7033 = extractvalue %dx.types.ResRet.i32 %7032, 0
  %7034 = and i32 %7033, 31
  %7035 = lshr i32 %7030, %7034
  %7036 = lshr i32 %7031, %7034
  %7037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7038 = extractvalue %dx.types.ResRet.i32 %7037, 0
  %7039 = and i32 %7038, 31
  %7040 = shl i32 1, %7039
  %7041 = call i32 @dx.op.binary.i32(i32 40, i32 %7040, i32 4)  ; UMin(a,b)
  %7042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7043 = extractvalue %dx.types.ResRet.i32 %7042, 0
  %7044 = extractvalue %dx.types.ResRet.i32 %7042, 1
  %7045 = icmp eq i32 %7041, 0
  br i1 %7045, label %7087, label %7046

; <label>:7046                                    ; preds = %6990
  br label %7047

; <label>:7047                                    ; preds = %7075, %7046
  %7048 = phi i32 [ %7078, %7075 ], [ 0, %7046 ]
  %7049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7050 = extractvalue %dx.types.ResRet.i32 %7049, 0
  %7051 = lshr i32 %7050, 16
  %7052 = and i32 %7051, 31
  %7053 = shl i32 %7036, %7052
  %7054 = add i32 %7053, %7035
  %7055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7056 = extractvalue %dx.types.ResRet.i32 %7055, 0
  %7057 = and i32 %7056, 31
  %7058 = shl i32 %7054, %7057
  %7059 = add i32 %7058, %7048
  %7060 = shl i32 %7059, 2
  %7061 = add i32 %7060, 32
  %7062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7061, i32 undef)  ; BufferLoad(srv,index,wot)
  %7063 = extractvalue %dx.types.ResRet.i32 %7062, 0
  %7064 = icmp slt i32 %7063, 0
  %7065 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %7048
  %7066 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %7048
  %7067 = bitcast float* %7065 to i32*
  %7068 = bitcast float* %7066 to i32*
  br i1 %7064, label %7069, label %7075

; <label>:7069                                    ; preds = %7047
  %7070 = and i32 %7063, 1073741823
  %7071 = add nuw nsw i32 %7070, 20
  %7072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7071, i32 undef)  ; BufferLoad(srv,index,wot)
  %7073 = extractvalue %dx.types.ResRet.i32 %7072, 0
  %7074 = extractvalue %dx.types.ResRet.i32 %7072, 1
  br label %7075

; <label>:7075                                    ; preds = %7069, %7047
  %7076 = phi i32 [ %7073, %7069 ], [ %7043, %7047 ]
  %7077 = phi i32 [ %7074, %7069 ], [ %7044, %7047 ]
  store i32 %7076, i32* %7067, align 4
  store i32 %7077, i32* %7068, align 4
  %7078 = add nuw i32 %7048, 1
  %7079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7080 = extractvalue %dx.types.CBufRet.i32 %7079, 2
  %7081 = icmp eq i32 %7080, 0
  %7082 = icmp ugt i32 %7063, -1073741825
  %7083 = and i1 %7082, %7081
  %7084 = icmp ult i32 %7078, %7041
  %7085 = and i1 %7083, %7084
  br i1 %7085, label %7047, label %7086

; <label>:7086                                    ; preds = %7075
  br label %7087

; <label>:7087                                    ; preds = %7086, %6990
  %7088 = phi i32 [ 0, %6990 ], [ %7078, %7086 ]
  %7089 = extractvalue %dx.types.CBufRet.f32 %6852, 2
  %7090 = fptoui float %7089 to i32
  %7091 = icmp eq i32 %7090, 0
  br i1 %7091, label %7143, label %7092

; <label>:7092                                    ; preds = %7087
  br label %7093

; <label>:7093                                    ; preds = %7138, %7092
  %7094 = phi i32 [ %7139, %7138 ], [ %7088, %7092 ]
  %7095 = phi i32 [ %7140, %7138 ], [ 0, %7092 ]
  %7096 = lshr i32 %7095, 2
  %7097 = and i32 %7095, 3
  %7098 = add nuw nsw i32 %7096, 83
  %7099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %7098)  ; CBufferLoadLegacy(handle,regIndex)
  %7100 = extractvalue %dx.types.CBufRet.i32 %7099, 0
  %7101 = extractvalue %dx.types.CBufRet.i32 %7099, 1
  %7102 = extractvalue %dx.types.CBufRet.i32 %7099, 2
  %7103 = extractvalue %dx.types.CBufRet.i32 %7099, 3
  %7104 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %7100, i32* %7104, align 4
  %7105 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %7101, i32* %7105, align 4
  %7106 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %7102, i32* %7106, align 4
  %7107 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %7103, i32* %7107, align 4
  %7108 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %7097
  %7109 = load i32, i32* %7108, align 4, !tbaa !93, !noalias !97
  %7110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7111 = extractvalue %dx.types.ResRet.i32 %7110, 0
  %7112 = lshr i32 %7111, 16
  %7113 = and i32 %7112, 31
  %7114 = shl i32 %7036, %7113
  %7115 = add i32 %7114, %7035
  %7116 = shl i32 %7115, 2
  %7117 = add i32 %7116, %7109
  %7118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7117, i32 undef)  ; BufferLoad(srv,index,wot)
  %7119 = extractvalue %dx.types.ResRet.i32 %7118, 0
  %7120 = icmp eq i32 %7119, 0
  br i1 %7120, label %7138, label %7121

; <label>:7121                                    ; preds = %7093
  %7122 = icmp slt i32 %7119, 0
  %7123 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %7094
  %7124 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %7094
  %7125 = bitcast float* %7123 to i32*
  %7126 = bitcast float* %7124 to i32*
  br i1 %7122, label %7127, label %7134

; <label>:7127                                    ; preds = %7121
  %7128 = and i32 %7119, 1073741823
  %7129 = add i32 %7109, 20
  %7130 = add i32 %7129, %7128
  %7131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7130, i32 undef)  ; BufferLoad(srv,index,wot)
  %7132 = extractvalue %dx.types.ResRet.i32 %7131, 0
  %7133 = extractvalue %dx.types.ResRet.i32 %7131, 1
  br label %7134

; <label>:7134                                    ; preds = %7127, %7121
  %7135 = phi i32 [ %7132, %7127 ], [ %7043, %7121 ]
  %7136 = phi i32 [ %7133, %7127 ], [ %7044, %7121 ]
  store i32 %7135, i32* %7125, align 4
  store i32 %7136, i32* %7126, align 4
  %7137 = add i32 %7094, 1
  br label %7138

; <label>:7138                                    ; preds = %7134, %7093
  %7139 = phi i32 [ %7094, %7093 ], [ %7137, %7134 ]
  %7140 = add nuw i32 %7095, 1
  %7141 = icmp eq i32 %7140, %7090
  br i1 %7141, label %7142, label %7093

; <label>:7142                                    ; preds = %7138
  br label %7143

; <label>:7143                                    ; preds = %7142, %7087
  %7144 = phi i32 [ %7088, %7087 ], [ %7139, %7142 ]
  %7145 = icmp eq i32 %7144, 1
  %7146 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 0
  %7147 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  br i1 %7145, label %7148, label %7151

; <label>:7148                                    ; preds = %7143
  %7149 = load float, float* %7146, align 4
  %7150 = load float, float* %7147, align 4
  br label %7178

; <label>:7151                                    ; preds = %7143
  %7152 = load float, float* %7146, align 4
  %7153 = load float, float* %7147, align 4
  %7154 = fdiv fast float 1.000000e+00, %7153
  %7155 = fsub fast float %7152, %7154
  %7156 = icmp ugt i32 %7144, 1
  br i1 %7156, label %7157, label %7173

; <label>:7157                                    ; preds = %7151
  br label %7158

; <label>:7158                                    ; preds = %7158, %7157
  %7159 = phi float [ %7168, %7158 ], [ %7155, %7157 ]
  %7160 = phi float [ %7169, %7158 ], [ %7152, %7157 ]
  %7161 = phi i32 [ %7170, %7158 ], [ 1, %7157 ]
  %7162 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %7161
  %7163 = load float, float* %7162, align 4
  %7164 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %7161
  %7165 = load float, float* %7164, align 4
  %7166 = fdiv fast float 1.000000e+00, %7165
  %7167 = fsub fast float %7163, %7166
  %7168 = call float @dx.op.binary.f32(i32 36, float %7159, float %7167)  ; FMin(a,b)
  %7169 = call float @dx.op.binary.f32(i32 35, float %7160, float %7163)  ; FMax(a,b)
  %7170 = add nuw i32 %7161, 1
  %7171 = icmp eq i32 %7170, %7144
  br i1 %7171, label %7172, label %7158

; <label>:7172                                    ; preds = %7158
  br label %7173

; <label>:7173                                    ; preds = %7172, %7151
  %7174 = phi float [ %7155, %7151 ], [ %7168, %7172 ]
  %7175 = phi float [ %7152, %7151 ], [ %7169, %7172 ]
  %7176 = fsub fast float %7175, %7174
  %7177 = fdiv fast float 1.000000e+00, %7176
  br label %7178

; <label>:7178                                    ; preds = %7173, %7148
  %7179 = phi float [ %7149, %7148 ], [ %7175, %7173 ]
  %7180 = phi float [ %7150, %7148 ], [ %7177, %7173 ]
  %7181 = fadd fast float %6882, %7179
  %7182 = fmul fast float %7181, %7180
  %7183 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  %7184 = fmul fast float %7183, 2.000000e+00
  %7185 = fsub fast float 1.000000e+00, %7184
  %7186 = fmul fast float %7020, %7020
  %7187 = fsub fast float %7021, %7186
  %7188 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7187)  ; FMax(a,b)
  %7189 = fdiv fast float 1.000000e+00, %7188
  %7190 = fmul fast float %7021, %7020
  %7191 = fsub fast float %7022, %7190
  %7192 = fsub fast float %7185, %7020
  %7193 = fmul fast float %7185, %7185
  %7194 = fsub fast float %7193, %7021
  %7195 = fmul fast float %7189, %7191
  %7196 = fmul fast float %7195, %7192
  %7197 = fsub fast float %7194, %7196
  %7198 = fmul fast float %7021, %7021
  %7199 = fsub fast float %7023, %7198
  %7200 = fmul fast float %7191, %7191
  %7201 = fmul fast float %7200, %7189
  %7202 = fsub fast float %7199, %7201
  %7203 = fdiv fast float %7197, %7202
  %7204 = fmul fast float %7203, %7191
  %7205 = fsub fast float %7192, %7204
  %7206 = fmul fast float %7205, %7189
  %7207 = fmul fast float %7206, %7020
  %7208 = fsub fast float 1.000000e+00, %7207
  %7209 = fmul fast float %7203, %7021
  %7210 = fsub fast float %7208, %7209
  %7211 = fmul fast float %7206, %7206
  %7212 = fmul fast float %7203, 4.000000e+00
  %7213 = fmul fast float %7212, %7210
  %7214 = fsub fast float %7211, %7213
  %7215 = call float @dx.op.unary.f32(i32 24, float %7214)  ; Sqrt(value)
  %7216 = fcmp fast oge float %7206, 0.000000e+00
  %7217 = fsub fast float -0.000000e+00, %7215
  %7218 = select i1 %7216, float %7217, float %7215
  %7219 = fsub fast float %7218, %7206
  %7220 = fdiv fast float %7219, %7203
  %7221 = fdiv fast float %7210, %7219
  %7222 = fmul fast float %7220, 5.000000e-01
  %7223 = fmul fast float %7221, 2.000000e+00
  %7224 = select i1 %7216, float %7222, float %7223
  %7225 = select i1 %7216, float %7223, float %7222
  %7226 = call float @dx.op.binary.f32(i32 35, float %7224, float %7225)  ; FMax(a,b)
  %7227 = call float @dx.op.binary.f32(i32 36, float %7224, float %7225)  ; FMin(a,b)
  %7228 = fcmp fast ogt float %7185, %7226
  %7229 = fsub fast float %7185, %7227
  %7230 = fsub fast float %7185, %7226
  %7231 = fsub fast float %7226, %7227
  %7232 = select i1 %7228, float %7230, float %7231
  %7233 = fmul float %7229, %7232
  %7234 = select i1 %7228, float %7227, float %7185
  %7235 = fcmp fast ogt float %7185, %7227
  %7236 = fmul fast float %7234, %7226
  %7237 = fadd fast float %7234, %7226
  %7238 = fmul fast float %7237, %7020
  %7239 = fadd fast float %7236, %7021
  %7240 = fsub fast float %7239, %7238
  %7241 = fdiv fast float %7240, %7233
  %7242 = select i1 %7235, float %7241, float 0.000000e+00
  %7243 = fsub fast float 1.000000e+00, %7242
  %7244 = select i1 %7228, float %7243, float %7242
  %7245 = call float @dx.op.unary.f32(i32 7, float %7244)  ; Saturate(value)
  %7246 = extractvalue %dx.types.CBufRet.f32 %7005, 3
  %7247 = fmul fast float %7246, %7245
  %7248 = fsub fast float 1.000000e+00, %7247
  br label %7249

; <label>:7249                                    ; preds = %7178, %6890, %6855, %6851, %6817
  %7250 = phi float [ 1.000000e+00, %6817 ], [ %7248, %7178 ], [ 1.000000e+00, %6855 ], [ 1.000000e+00, %6890 ], [ 1.000000e+00, %6851 ]
  %7251 = fcmp fast ogt float %6847, 0.000000e+00
  br i1 %7251, label %7252, label %7414, !dx.controlflow.hints !106

; <label>:7252                                    ; preds = %7249
  %7253 = fadd fast float %6760, %6734
  %7254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7255 = extractvalue %dx.types.CBufRet.f32 %7254, 2
  %7256 = extractvalue %dx.types.CBufRet.f32 %7254, 3
  %7257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7258 = extractvalue %dx.types.CBufRet.f32 %7257, 2
  %7259 = call float @dx.op.binary.f32(i32 35, float %7253, float 0.000000e+00)  ; FMax(a,b)
  %7260 = fadd fast float %7259, 0x3F10000000000000
  %7261 = fcmp fast oeq float %7258, 0.000000e+00
  br i1 %7261, label %7262, label %7329

; <label>:7262                                    ; preds = %7252
  %7263 = extractvalue %dx.types.CBufRet.f32 %7254, 1
  %7264 = extractvalue %dx.types.CBufRet.f32 %7254, 0
  %7265 = fmul fast float %7264, %6749
  %7266 = fmul fast float %7263, %6750
  %7267 = fadd fast float %7265, 5.000000e-01
  %7268 = call float @dx.op.unary.f32(i32 27, float %7267)  ; Round_ni(value)
  %7269 = fadd fast float %7266, 5.000000e-01
  %7270 = call float @dx.op.unary.f32(i32 27, float %7269)  ; Round_ni(value)
  %7271 = fsub fast float %7267, %7268
  %7272 = fsub fast float %7269, %7270
  %7273 = fadd fast float %7268, -5.000000e-01
  %7274 = fadd fast float %7270, -5.000000e-01
  %7275 = fmul fast float %7271, 2.000000e+00
  %7276 = fsub fast float 3.000000e+00, %7275
  %7277 = fadd fast float %7275, 1.000000e+00
  %7278 = fsub fast float 2.000000e+00, %7271
  %7279 = bitcast float %7276 to i32
  %7280 = sub nsw i32 2129859010, %7279
  %7281 = bitcast i32 %7280 to float
  %7282 = fmul fast float %7281, %7278
  %7283 = fadd fast float %7282, -1.000000e+00
  %7284 = bitcast float %7277 to i32
  %7285 = sub nsw i32 2129859010, %7284
  %7286 = bitcast i32 %7285 to float
  %7287 = fmul fast float %7286, %7271
  %7288 = fadd fast float %7287, 1.000000e+00
  %7289 = fmul fast float %7272, 2.000000e+00
  %7290 = fsub fast float 3.000000e+00, %7289
  %7291 = fadd fast float %7289, 1.000000e+00
  %7292 = fsub fast float 2.000000e+00, %7272
  %7293 = bitcast float %7290 to i32
  %7294 = sub nsw i32 2129859010, %7293
  %7295 = bitcast i32 %7294 to float
  %7296 = fmul fast float %7295, %7292
  %7297 = fadd fast float %7296, -1.000000e+00
  %7298 = bitcast float %7291 to i32
  %7299 = sub nsw i32 2129859010, %7298
  %7300 = bitcast i32 %7299 to float
  %7301 = fmul fast float %7300, %7272
  %7302 = fadd fast float %7301, 1.000000e+00
  %7303 = fadd fast float %7283, %7273
  %7304 = fmul fast float %7303, %7255
  %7305 = fadd fast float %7297, %7274
  %7306 = fmul fast float %7305, %7256
  %7307 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %7304, float %7306, float undef, float undef, i32 0, i32 0, i32 undef, float %7260)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7308 = extractvalue %dx.types.ResRet.f32 %7307, 0
  %7309 = fmul fast float %7308, %7276
  %7310 = fadd fast float %7288, %7273
  %7311 = fmul fast float %7310, %7255
  %7312 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %7311, float %7306, float undef, float undef, i32 0, i32 0, i32 undef, float %7260)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7313 = extractvalue %dx.types.ResRet.f32 %7312, 0
  %7314 = fmul fast float %7313, %7277
  %7315 = fadd fast float %7302, %7274
  %7316 = fmul fast float %7315, %7256
  %7317 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %7304, float %7316, float undef, float undef, i32 0, i32 0, i32 undef, float %7260)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7318 = extractvalue %dx.types.ResRet.f32 %7317, 0
  %7319 = fmul fast float %7318, %7276
  %7320 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %7311, float %7316, float undef, float undef, i32 0, i32 0, i32 undef, float %7260)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7321 = extractvalue %dx.types.ResRet.f32 %7320, 0
  %7322 = fmul fast float %7321, %7277
  %7323 = fadd fast float %7322, %7319
  %7324 = fmul fast float %7323, %7291
  %7325 = fadd fast float %7314, %7309
  %7326 = fmul fast float %7325, %7290
  %7327 = fadd fast float %7326, %7324
  %7328 = fmul fast float %7327, 6.250000e-02
  br label %7414

; <label>:7329                                    ; preds = %7252
  %7330 = fmul fast float %226, 0x401921FB60000000
  %7331 = call float @dx.op.unary.f32(i32 13, float %7330)  ; Sin(value)
  %7332 = call float @dx.op.unary.f32(i32 12, float %7330)  ; Cos(value)
  %7333 = fsub fast float -0.000000e+00, %7331
  br label %7334

; <label>:7334                                    ; preds = %7383, %7329
  %7335 = phi float [ 0.000000e+00, %7329 ], [ %7378, %7383 ]
  %7336 = phi float [ 0.000000e+00, %7329 ], [ %7380, %7383 ]
  %7337 = phi i32 [ 0, %7329 ], [ %7384, %7383 ]
  %7338 = mul i32 %7337, 2
  %7339 = add i32 0, %7338
  %7340 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7339
  %7341 = load float, float* %7340, align 4
  %7342 = mul i32 %7337, 2
  %7343 = add i32 1, %7342
  %7344 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7343
  %7345 = load float, float* %7344, align 4
  %7346 = fmul fast float %7341, %7332
  %7347 = call float @dx.op.tertiary.f32(i32 46, float %7345, float %7333, float %7346)  ; FMad(a,b,c)
  %7348 = fmul fast float %7341, %7331
  %7349 = call float @dx.op.tertiary.f32(i32 46, float %7345, float %7332, float %7348)  ; FMad(a,b,c)
  %7350 = fmul fast float %7347, %7258
  %7351 = fmul fast float %7349, %7258
  %7352 = fadd fast float %7350, %6749
  %7353 = fadd fast float %7351, %6750
  %7354 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %7352, float %7353, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7355 = extractvalue %dx.types.ResRet.f32 %7354, 0
  %7356 = extractvalue %dx.types.ResRet.f32 %7354, 1
  %7357 = extractvalue %dx.types.ResRet.f32 %7354, 2
  %7358 = extractvalue %dx.types.ResRet.f32 %7354, 3
  %7359 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %7355, float* %7359, align 4
  %7360 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %7356, float* %7360, align 4
  %7361 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %7357, float* %7361, align 4
  %7362 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %7358, float* %7362, align 4
  %7363 = fsub fast float %7355, %7260
  %7364 = fcmp fast olt float %7363, 0.000000e+00
  %7365 = select i1 %7364, float 0.000000e+00, float 1.000000e+00
  %7366 = fadd fast float %7365, %7335
  %7367 = fmul fast float %7365, %7363
  %7368 = fadd fast float %7367, %7336
  br label %7369

; <label>:7369                                    ; preds = %7369, %7334
  %7370 = phi i32 [ 1, %7334 ], [ %7381, %7369 ]
  %7371 = phi float [ %7368, %7334 ], [ %7380, %7369 ]
  %7372 = phi float [ %7366, %7334 ], [ %7378, %7369 ]
  %7373 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7370
  %7374 = load float, float* %7373, align 4, !tbaa !107, !noalias !97
  %7375 = fsub fast float %7374, %7260
  %7376 = fcmp fast olt float %7375, 0.000000e+00
  %7377 = select i1 %7376, float 0.000000e+00, float 1.000000e+00
  %7378 = fadd fast float %7377, %7372
  %7379 = fmul fast float %7377, %7375
  %7380 = fadd fast float %7379, %7371
  %7381 = add nuw nsw i32 %7370, 1
  %7382 = icmp eq i32 %7381, 4
  br i1 %7382, label %7383, label %7369, !llvm.loop !109

; <label>:7383                                    ; preds = %7369
  %7384 = add nuw nsw i32 %7337, 1
  %7385 = icmp eq i32 %7384, 8
  br i1 %7385, label %7386, label %7334, !llvm.loop !110

; <label>:7386                                    ; preds = %7383
  %7387 = fdiv fast float 1.000000e+00, %7378
  %7388 = fmul fast float %7387, %7380
  %7389 = fdiv fast float 1.000000e+00, %7260
  %7390 = fmul fast float %7388, %7389
  %7391 = call float @dx.op.unary.f32(i32 7, float %7390)  ; Saturate(value)
  %7392 = call float @dx.op.binary.f32(i32 35, float %7391, float 0.000000e+00)  ; FMax(a,b)
  %7393 = fmul fast float %7378, 3.125000e-02
  %7394 = call float @dx.op.unary.f32(i32 7, float %7393)  ; Saturate(value)
  %7395 = fmul fast float %7394, 2.000000e+00
  %7396 = fadd fast float %7395, -1.000000e+00
  %7397 = fcmp fast ogt float %7396, 0.000000e+00
  %7398 = fcmp fast olt float %7396, 0.000000e+00
  %7399 = zext i1 %7397 to i32
  %7400 = zext i1 %7398 to i32
  %7401 = sub nsw i32 %7399, %7400
  %7402 = sitofp i32 %7401 to float
  %7403 = fmul fast float %7402, %7396
  %7404 = fsub fast float 1.000000e+00, %7403
  %7405 = fmul fast float %7404, %7404
  %7406 = fmul fast float %7405, %7404
  %7407 = fsub fast float %7404, %7406
  %7408 = fmul fast float %7407, %7392
  %7409 = fsub fast float 1.000000e+00, %7406
  %7410 = fsub fast float %7409, %7408
  %7411 = fmul fast float %7402, 5.000000e-01
  %7412 = fmul fast float %7411, %7410
  %7413 = fsub fast float 5.000000e-01, %7412
  br label %7414

; <label>:7414                                    ; preds = %7386, %7262, %7249
  %7415 = phi float [ 1.000000e+00, %7249 ], [ %7328, %7262 ], [ %7413, %7386 ]
  %7416 = fcmp fast ogt float %6845, 0.000000e+00
  br i1 %7416, label %7417, label %7581, !dx.controlflow.hints !111

; <label>:7417                                    ; preds = %7414
  %7418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7419 = extractvalue %dx.types.CBufRet.f32 %7418, 1
  %7420 = fadd fast float %7419, %6734
  %7421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7422 = extractvalue %dx.types.CBufRet.f32 %7421, 2
  %7423 = extractvalue %dx.types.CBufRet.f32 %7421, 3
  %7424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7425 = extractvalue %dx.types.CBufRet.f32 %7424, 1
  %7426 = call float @dx.op.binary.f32(i32 35, float %7420, float 0.000000e+00)  ; FMax(a,b)
  %7427 = fadd fast float %7426, 0x3F10000000000000
  %7428 = fcmp fast oeq float %7425, 0.000000e+00
  br i1 %7428, label %7429, label %7496

; <label>:7429                                    ; preds = %7417
  %7430 = extractvalue %dx.types.CBufRet.f32 %7421, 1
  %7431 = extractvalue %dx.types.CBufRet.f32 %7421, 0
  %7432 = fmul fast float %7431, %6741
  %7433 = fmul fast float %7430, %6742
  %7434 = fadd fast float %7432, 5.000000e-01
  %7435 = call float @dx.op.unary.f32(i32 27, float %7434)  ; Round_ni(value)
  %7436 = fadd fast float %7433, 5.000000e-01
  %7437 = call float @dx.op.unary.f32(i32 27, float %7436)  ; Round_ni(value)
  %7438 = fsub fast float %7434, %7435
  %7439 = fsub fast float %7436, %7437
  %7440 = fadd fast float %7435, -5.000000e-01
  %7441 = fadd fast float %7437, -5.000000e-01
  %7442 = fmul fast float %7438, 2.000000e+00
  %7443 = fsub fast float 3.000000e+00, %7442
  %7444 = fadd fast float %7442, 1.000000e+00
  %7445 = fsub fast float 2.000000e+00, %7438
  %7446 = bitcast float %7443 to i32
  %7447 = sub nsw i32 2129859010, %7446
  %7448 = bitcast i32 %7447 to float
  %7449 = fmul fast float %7448, %7445
  %7450 = fadd fast float %7449, -1.000000e+00
  %7451 = bitcast float %7444 to i32
  %7452 = sub nsw i32 2129859010, %7451
  %7453 = bitcast i32 %7452 to float
  %7454 = fmul fast float %7453, %7438
  %7455 = fadd fast float %7454, 1.000000e+00
  %7456 = fmul fast float %7439, 2.000000e+00
  %7457 = fsub fast float 3.000000e+00, %7456
  %7458 = fadd fast float %7456, 1.000000e+00
  %7459 = fsub fast float 2.000000e+00, %7439
  %7460 = bitcast float %7457 to i32
  %7461 = sub nsw i32 2129859010, %7460
  %7462 = bitcast i32 %7461 to float
  %7463 = fmul fast float %7462, %7459
  %7464 = fadd fast float %7463, -1.000000e+00
  %7465 = bitcast float %7458 to i32
  %7466 = sub nsw i32 2129859010, %7465
  %7467 = bitcast i32 %7466 to float
  %7468 = fmul fast float %7467, %7439
  %7469 = fadd fast float %7468, 1.000000e+00
  %7470 = fadd fast float %7450, %7440
  %7471 = fmul fast float %7470, %7422
  %7472 = fadd fast float %7464, %7441
  %7473 = fmul fast float %7472, %7423
  %7474 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7471, float %7473, float undef, float undef, i32 0, i32 0, i32 undef, float %7427)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7475 = extractvalue %dx.types.ResRet.f32 %7474, 0
  %7476 = fmul fast float %7475, %7443
  %7477 = fadd fast float %7455, %7440
  %7478 = fmul fast float %7477, %7422
  %7479 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7478, float %7473, float undef, float undef, i32 0, i32 0, i32 undef, float %7427)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7480 = extractvalue %dx.types.ResRet.f32 %7479, 0
  %7481 = fmul fast float %7480, %7444
  %7482 = fadd fast float %7469, %7441
  %7483 = fmul fast float %7482, %7423
  %7484 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7471, float %7483, float undef, float undef, i32 0, i32 0, i32 undef, float %7427)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7485 = extractvalue %dx.types.ResRet.f32 %7484, 0
  %7486 = fmul fast float %7485, %7443
  %7487 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7478, float %7483, float undef, float undef, i32 0, i32 0, i32 undef, float %7427)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7488 = extractvalue %dx.types.ResRet.f32 %7487, 0
  %7489 = fmul fast float %7488, %7444
  %7490 = fadd fast float %7489, %7486
  %7491 = fmul fast float %7490, %7458
  %7492 = fadd fast float %7481, %7476
  %7493 = fmul fast float %7492, %7457
  %7494 = fadd fast float %7493, %7491
  %7495 = fmul fast float %7494, 6.250000e-02
  br label %7581

; <label>:7496                                    ; preds = %7417
  %7497 = fmul fast float %226, 0x401921FB60000000
  %7498 = call float @dx.op.unary.f32(i32 13, float %7497)  ; Sin(value)
  %7499 = call float @dx.op.unary.f32(i32 12, float %7497)  ; Cos(value)
  %7500 = fsub fast float -0.000000e+00, %7498
  br label %7501

; <label>:7501                                    ; preds = %7550, %7496
  %7502 = phi float [ 0.000000e+00, %7496 ], [ %7545, %7550 ]
  %7503 = phi float [ 0.000000e+00, %7496 ], [ %7547, %7550 ]
  %7504 = phi i32 [ 0, %7496 ], [ %7551, %7550 ]
  %7505 = mul i32 %7504, 2
  %7506 = add i32 0, %7505
  %7507 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7506
  %7508 = load float, float* %7507, align 4
  %7509 = mul i32 %7504, 2
  %7510 = add i32 1, %7509
  %7511 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7510
  %7512 = load float, float* %7511, align 4
  %7513 = fmul fast float %7508, %7499
  %7514 = call float @dx.op.tertiary.f32(i32 46, float %7512, float %7500, float %7513)  ; FMad(a,b,c)
  %7515 = fmul fast float %7508, %7498
  %7516 = call float @dx.op.tertiary.f32(i32 46, float %7512, float %7499, float %7515)  ; FMad(a,b,c)
  %7517 = fmul fast float %7514, %7425
  %7518 = fmul fast float %7516, %7425
  %7519 = fadd fast float %7517, %6741
  %7520 = fadd fast float %7518, %6742
  %7521 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %7519, float %7520, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7522 = extractvalue %dx.types.ResRet.f32 %7521, 0
  %7523 = extractvalue %dx.types.ResRet.f32 %7521, 1
  %7524 = extractvalue %dx.types.ResRet.f32 %7521, 2
  %7525 = extractvalue %dx.types.ResRet.f32 %7521, 3
  %7526 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 0
  store float %7522, float* %7526, align 4
  %7527 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 1
  store float %7523, float* %7527, align 4
  %7528 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 2
  store float %7524, float* %7528, align 4
  %7529 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 3
  store float %7525, float* %7529, align 4
  %7530 = fsub fast float %7522, %7427
  %7531 = fcmp fast olt float %7530, 0.000000e+00
  %7532 = select i1 %7531, float 0.000000e+00, float 1.000000e+00
  %7533 = fadd fast float %7532, %7502
  %7534 = fmul fast float %7532, %7530
  %7535 = fadd fast float %7534, %7503
  br label %7536

; <label>:7536                                    ; preds = %7536, %7501
  %7537 = phi i32 [ 1, %7501 ], [ %7548, %7536 ]
  %7538 = phi float [ %7535, %7501 ], [ %7547, %7536 ]
  %7539 = phi float [ %7533, %7501 ], [ %7545, %7536 ]
  %7540 = getelementptr [4 x float], [4 x float]* %89, i32 0, i32 %7537
  %7541 = load float, float* %7540, align 4, !tbaa !107, !noalias !97
  %7542 = fsub fast float %7541, %7427
  %7543 = fcmp fast olt float %7542, 0.000000e+00
  %7544 = select i1 %7543, float 0.000000e+00, float 1.000000e+00
  %7545 = fadd fast float %7544, %7539
  %7546 = fmul fast float %7544, %7542
  %7547 = fadd fast float %7546, %7538
  %7548 = add nuw nsw i32 %7537, 1
  %7549 = icmp eq i32 %7548, 4
  br i1 %7549, label %7550, label %7536, !llvm.loop !109

; <label>:7550                                    ; preds = %7536
  %7551 = add nuw nsw i32 %7504, 1
  %7552 = icmp eq i32 %7551, 8
  br i1 %7552, label %7553, label %7501, !llvm.loop !110

; <label>:7553                                    ; preds = %7550
  %7554 = fdiv fast float 1.000000e+00, %7545
  %7555 = fmul fast float %7554, %7547
  %7556 = fdiv fast float 1.000000e+00, %7427
  %7557 = fmul fast float %7555, %7556
  %7558 = call float @dx.op.unary.f32(i32 7, float %7557)  ; Saturate(value)
  %7559 = call float @dx.op.binary.f32(i32 35, float %7558, float 0.000000e+00)  ; FMax(a,b)
  %7560 = fmul fast float %7545, 3.125000e-02
  %7561 = call float @dx.op.unary.f32(i32 7, float %7560)  ; Saturate(value)
  %7562 = fmul fast float %7561, 2.000000e+00
  %7563 = fadd fast float %7562, -1.000000e+00
  %7564 = fcmp fast ogt float %7563, 0.000000e+00
  %7565 = fcmp fast olt float %7563, 0.000000e+00
  %7566 = zext i1 %7564 to i32
  %7567 = zext i1 %7565 to i32
  %7568 = sub nsw i32 %7566, %7567
  %7569 = sitofp i32 %7568 to float
  %7570 = fmul fast float %7569, %7563
  %7571 = fsub fast float 1.000000e+00, %7570
  %7572 = fmul fast float %7571, %7571
  %7573 = fmul fast float %7572, %7571
  %7574 = fsub fast float %7571, %7573
  %7575 = fmul fast float %7574, %7559
  %7576 = fsub fast float 1.000000e+00, %7573
  %7577 = fsub fast float %7576, %7575
  %7578 = fmul fast float %7569, 5.000000e-01
  %7579 = fmul fast float %7578, %7577
  %7580 = fsub fast float 5.000000e-01, %7579
  br label %7581

; <label>:7581                                    ; preds = %7553, %7429, %7414
  %7582 = phi float [ 1.000000e+00, %7414 ], [ %7495, %7429 ], [ %7580, %7553 ]
  %7583 = fcmp fast ogt float %6844, 0.000000e+00
  br i1 %7583, label %7584, label %7748, !dx.controlflow.hints !112

; <label>:7584                                    ; preds = %7581
  %7585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7586 = extractvalue %dx.types.CBufRet.f32 %7585, 0
  %7587 = fadd fast float %7586, %6734
  %7588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7589 = extractvalue %dx.types.CBufRet.f32 %7588, 2
  %7590 = extractvalue %dx.types.CBufRet.f32 %7588, 3
  %7591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7592 = extractvalue %dx.types.CBufRet.f32 %7591, 0
  %7593 = call float @dx.op.binary.f32(i32 35, float %7587, float 0.000000e+00)  ; FMax(a,b)
  %7594 = fadd fast float %7593, 0x3F10000000000000
  %7595 = fcmp fast oeq float %7592, 0.000000e+00
  br i1 %7595, label %7596, label %7663

; <label>:7596                                    ; preds = %7584
  %7597 = extractvalue %dx.types.CBufRet.f32 %7588, 1
  %7598 = extractvalue %dx.types.CBufRet.f32 %7588, 0
  %7599 = fmul fast float %7598, %6726
  %7600 = fmul fast float %7597, %6730
  %7601 = fadd fast float %7599, 5.000000e-01
  %7602 = call float @dx.op.unary.f32(i32 27, float %7601)  ; Round_ni(value)
  %7603 = fadd fast float %7600, 5.000000e-01
  %7604 = call float @dx.op.unary.f32(i32 27, float %7603)  ; Round_ni(value)
  %7605 = fsub fast float %7601, %7602
  %7606 = fsub fast float %7603, %7604
  %7607 = fadd fast float %7602, -5.000000e-01
  %7608 = fadd fast float %7604, -5.000000e-01
  %7609 = fmul fast float %7605, 2.000000e+00
  %7610 = fsub fast float 3.000000e+00, %7609
  %7611 = fadd fast float %7609, 1.000000e+00
  %7612 = fsub fast float 2.000000e+00, %7605
  %7613 = bitcast float %7610 to i32
  %7614 = sub nsw i32 2129859010, %7613
  %7615 = bitcast i32 %7614 to float
  %7616 = fmul fast float %7615, %7612
  %7617 = fadd fast float %7616, -1.000000e+00
  %7618 = bitcast float %7611 to i32
  %7619 = sub nsw i32 2129859010, %7618
  %7620 = bitcast i32 %7619 to float
  %7621 = fmul fast float %7620, %7605
  %7622 = fadd fast float %7621, 1.000000e+00
  %7623 = fmul fast float %7606, 2.000000e+00
  %7624 = fsub fast float 3.000000e+00, %7623
  %7625 = fadd fast float %7623, 1.000000e+00
  %7626 = fsub fast float 2.000000e+00, %7606
  %7627 = bitcast float %7624 to i32
  %7628 = sub nsw i32 2129859010, %7627
  %7629 = bitcast i32 %7628 to float
  %7630 = fmul fast float %7629, %7626
  %7631 = fadd fast float %7630, -1.000000e+00
  %7632 = bitcast float %7625 to i32
  %7633 = sub nsw i32 2129859010, %7632
  %7634 = bitcast i32 %7633 to float
  %7635 = fmul fast float %7634, %7606
  %7636 = fadd fast float %7635, 1.000000e+00
  %7637 = fadd fast float %7617, %7607
  %7638 = fmul fast float %7637, %7589
  %7639 = fadd fast float %7631, %7608
  %7640 = fmul fast float %7639, %7590
  %7641 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7638, float %7640, float undef, float undef, i32 0, i32 0, i32 undef, float %7594)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7642 = extractvalue %dx.types.ResRet.f32 %7641, 0
  %7643 = fmul fast float %7642, %7610
  %7644 = fadd fast float %7622, %7607
  %7645 = fmul fast float %7644, %7589
  %7646 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7645, float %7640, float undef, float undef, i32 0, i32 0, i32 undef, float %7594)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7647 = extractvalue %dx.types.ResRet.f32 %7646, 0
  %7648 = fmul fast float %7647, %7611
  %7649 = fadd fast float %7636, %7608
  %7650 = fmul fast float %7649, %7590
  %7651 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7638, float %7650, float undef, float undef, i32 0, i32 0, i32 undef, float %7594)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7652 = extractvalue %dx.types.ResRet.f32 %7651, 0
  %7653 = fmul fast float %7652, %7610
  %7654 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7645, float %7650, float undef, float undef, i32 0, i32 0, i32 undef, float %7594)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7655 = extractvalue %dx.types.ResRet.f32 %7654, 0
  %7656 = fmul fast float %7655, %7611
  %7657 = fadd fast float %7656, %7653
  %7658 = fmul fast float %7657, %7625
  %7659 = fadd fast float %7648, %7643
  %7660 = fmul fast float %7659, %7624
  %7661 = fadd fast float %7660, %7658
  %7662 = fmul fast float %7661, 6.250000e-02
  br label %7748

; <label>:7663                                    ; preds = %7584
  %7664 = fmul fast float %226, 0x401921FB60000000
  %7665 = call float @dx.op.unary.f32(i32 13, float %7664)  ; Sin(value)
  %7666 = call float @dx.op.unary.f32(i32 12, float %7664)  ; Cos(value)
  %7667 = fsub fast float -0.000000e+00, %7665
  br label %7668

; <label>:7668                                    ; preds = %7717, %7663
  %7669 = phi float [ 0.000000e+00, %7663 ], [ %7712, %7717 ]
  %7670 = phi float [ 0.000000e+00, %7663 ], [ %7714, %7717 ]
  %7671 = phi i32 [ 0, %7663 ], [ %7718, %7717 ]
  %7672 = mul i32 %7671, 2
  %7673 = add i32 0, %7672
  %7674 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7673
  %7675 = load float, float* %7674, align 4
  %7676 = mul i32 %7671, 2
  %7677 = add i32 1, %7676
  %7678 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7677
  %7679 = load float, float* %7678, align 4
  %7680 = fmul fast float %7675, %7666
  %7681 = call float @dx.op.tertiary.f32(i32 46, float %7679, float %7667, float %7680)  ; FMad(a,b,c)
  %7682 = fmul fast float %7675, %7665
  %7683 = call float @dx.op.tertiary.f32(i32 46, float %7679, float %7666, float %7682)  ; FMad(a,b,c)
  %7684 = fmul fast float %7681, %7592
  %7685 = fmul fast float %7683, %7592
  %7686 = fadd fast float %7684, %6726
  %7687 = fadd fast float %7685, %6730
  %7688 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %7686, float %7687, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7689 = extractvalue %dx.types.ResRet.f32 %7688, 0
  %7690 = extractvalue %dx.types.ResRet.f32 %7688, 1
  %7691 = extractvalue %dx.types.ResRet.f32 %7688, 2
  %7692 = extractvalue %dx.types.ResRet.f32 %7688, 3
  %7693 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 0
  store float %7689, float* %7693, align 4
  %7694 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 1
  store float %7690, float* %7694, align 4
  %7695 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 2
  store float %7691, float* %7695, align 4
  %7696 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 3
  store float %7692, float* %7696, align 4
  %7697 = fsub fast float %7689, %7594
  %7698 = fcmp fast olt float %7697, 0.000000e+00
  %7699 = select i1 %7698, float 0.000000e+00, float 1.000000e+00
  %7700 = fadd fast float %7699, %7669
  %7701 = fmul fast float %7699, %7697
  %7702 = fadd fast float %7701, %7670
  br label %7703

; <label>:7703                                    ; preds = %7703, %7668
  %7704 = phi i32 [ 1, %7668 ], [ %7715, %7703 ]
  %7705 = phi float [ %7702, %7668 ], [ %7714, %7703 ]
  %7706 = phi float [ %7700, %7668 ], [ %7712, %7703 ]
  %7707 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 %7704
  %7708 = load float, float* %7707, align 4, !tbaa !107, !noalias !97
  %7709 = fsub fast float %7708, %7594
  %7710 = fcmp fast olt float %7709, 0.000000e+00
  %7711 = select i1 %7710, float 0.000000e+00, float 1.000000e+00
  %7712 = fadd fast float %7711, %7706
  %7713 = fmul fast float %7711, %7709
  %7714 = fadd fast float %7713, %7705
  %7715 = add nuw nsw i32 %7704, 1
  %7716 = icmp eq i32 %7715, 4
  br i1 %7716, label %7717, label %7703, !llvm.loop !109

; <label>:7717                                    ; preds = %7703
  %7718 = add nuw nsw i32 %7671, 1
  %7719 = icmp eq i32 %7718, 8
  br i1 %7719, label %7720, label %7668, !llvm.loop !110

; <label>:7720                                    ; preds = %7717
  %7721 = fdiv fast float 1.000000e+00, %7712
  %7722 = fmul fast float %7721, %7714
  %7723 = fdiv fast float 1.000000e+00, %7594
  %7724 = fmul fast float %7722, %7723
  %7725 = call float @dx.op.unary.f32(i32 7, float %7724)  ; Saturate(value)
  %7726 = call float @dx.op.binary.f32(i32 35, float %7725, float 0.000000e+00)  ; FMax(a,b)
  %7727 = fmul fast float %7712, 3.125000e-02
  %7728 = call float @dx.op.unary.f32(i32 7, float %7727)  ; Saturate(value)
  %7729 = fmul fast float %7728, 2.000000e+00
  %7730 = fadd fast float %7729, -1.000000e+00
  %7731 = fcmp fast ogt float %7730, 0.000000e+00
  %7732 = fcmp fast olt float %7730, 0.000000e+00
  %7733 = zext i1 %7731 to i32
  %7734 = zext i1 %7732 to i32
  %7735 = sub nsw i32 %7733, %7734
  %7736 = sitofp i32 %7735 to float
  %7737 = fmul fast float %7736, %7730
  %7738 = fsub fast float 1.000000e+00, %7737
  %7739 = fmul fast float %7738, %7738
  %7740 = fmul fast float %7739, %7738
  %7741 = fsub fast float %7738, %7740
  %7742 = fmul fast float %7741, %7726
  %7743 = fsub fast float 1.000000e+00, %7740
  %7744 = fsub fast float %7743, %7742
  %7745 = fmul fast float %7736, 5.000000e-01
  %7746 = fmul fast float %7745, %7744
  %7747 = fsub fast float 5.000000e-01, %7746
  br label %7748

; <label>:7748                                    ; preds = %7720, %7596, %7581
  %7749 = phi float [ 1.000000e+00, %7581 ], [ %7662, %7596 ], [ %7747, %7720 ]
  %7750 = fsub fast float %7415, %7250
  %7751 = fmul fast float %7750, %6788
  %7752 = fadd fast float %7751, %7250
  %7753 = fsub fast float %7582, %7752
  %7754 = fmul fast float %7753, %6818
  %7755 = fadd fast float %7754, %7752
  %7756 = fsub fast float %7749, %7755
  %7757 = fmul fast float %7756, %6844
  %7758 = fadd fast float %7757, %7755
  %7759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7760 = extractvalue %dx.types.CBufRet.f32 %7759, 2
  %7761 = fcmp fast ogt float %7760, 0.000000e+00
  br i1 %7761, label %7762, label %7802, !dx.controlflow.hints !113

; <label>:7762                                    ; preds = %7748
  %7763 = fcmp fast ugt float %7760, 0.000000e+00
  br i1 %7763, label %7764, label %7799

; <label>:7764                                    ; preds = %7762
  %7765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7766 = extractvalue %dx.types.CBufRet.f32 %7765, 0
  %7767 = extractvalue %dx.types.CBufRet.f32 %7765, 1
  %7768 = extractvalue %dx.types.CBufRet.f32 %7765, 2
  %7769 = extractvalue %dx.types.CBufRet.f32 %7765, 3
  %7770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7771 = extractvalue %dx.types.CBufRet.f32 %7770, 0
  %7772 = extractvalue %dx.types.CBufRet.f32 %7770, 1
  %7773 = extractvalue %dx.types.CBufRet.f32 %7770, 2
  %7774 = extractvalue %dx.types.CBufRet.f32 %7770, 3
  %7775 = extractvalue %dx.types.CBufRet.f32 %7759, 0
  %7776 = extractvalue %dx.types.CBufRet.f32 %7759, 1
  %7777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7778 = extractvalue %dx.types.CBufRet.f32 %7777, 0
  %7779 = extractvalue %dx.types.CBufRet.f32 %7777, 1
  %7780 = extractvalue %dx.types.CBufRet.f32 %7777, 2
  %7781 = fadd fast float %7778, %6703
  %7782 = fadd fast float %7779, %6704
  %7783 = fadd fast float %7780, %6705
  %7784 = fmul fast float %7781, %7766
  %7785 = call float @dx.op.tertiary.f32(i32 46, float %7767, float %7782, float %7784)  ; FMad(a,b,c)
  %7786 = call float @dx.op.tertiary.f32(i32 46, float %7768, float %7783, float %7785)  ; FMad(a,b,c)
  %7787 = fadd fast float %7786, %7769
  %7788 = fmul fast float %7781, %7771
  %7789 = call float @dx.op.tertiary.f32(i32 46, float %7772, float %7782, float %7788)  ; FMad(a,b,c)
  %7790 = call float @dx.op.tertiary.f32(i32 46, float %7773, float %7783, float %7789)  ; FMad(a,b,c)
  %7791 = fadd fast float %7790, %7774
  %7792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %7787, float %7791, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7793 = extractvalue %dx.types.ResRet.f32 %7792, 0
  %7794 = fmul fast float %7793, %7776
  %7795 = fadd fast float %7794, %7775
  %7796 = call float @dx.op.unary.f32(i32 7, float %7795)  ; Saturate(value)
  %7797 = fmul fast float %7796, %7760
  %7798 = fsub fast float 1.000000e+00, %7797
  br label %7799

; <label>:7799                                    ; preds = %7764, %7762
  %7800 = phi float [ %7798, %7764 ], [ 1.000000e+00, %7762 ]
  %7801 = fmul fast float %7800, %7758
  br label %7802

; <label>:7802                                    ; preds = %7799, %7748, %6683
  %7803 = phi float [ 1.000000e+00, %6683 ], [ %7801, %7799 ], [ %7758, %7748 ]
  %7804 = call float @dx.op.binary.f32(i32 36, float %7803, float %7803)  ; FMin(a,b)
  %7805 = call float @dx.op.binary.f32(i32 36, float %7803, float %7804)  ; FMin(a,b)
  %7806 = fcmp fast ogt float %7805, 0.000000e+00
  br i1 %7806, label %7807, label %7973, !dx.controlflow.hints !114

; <label>:7807                                    ; preds = %7802
  %7808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7809 = extractvalue %dx.types.CBufRet.f32 %7808, 0
  %7810 = extractvalue %dx.types.CBufRet.f32 %7808, 1
  %7811 = extractvalue %dx.types.CBufRet.f32 %7808, 2
  %7812 = extractvalue %dx.types.CBufRet.f32 %7808, 3
  %7813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7814 = extractvalue %dx.types.CBufRet.f32 %7813, 0
  %7815 = extractvalue %dx.types.CBufRet.f32 %7813, 1
  %7816 = extractvalue %dx.types.CBufRet.f32 %7813, 2
  %7817 = extractvalue %dx.types.CBufRet.f32 %7813, 3
  %7818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7819 = extractvalue %dx.types.CBufRet.f32 %7818, 0
  %7820 = extractvalue %dx.types.CBufRet.f32 %7818, 1
  %7821 = extractvalue %dx.types.CBufRet.f32 %7818, 2
  %7822 = extractvalue %dx.types.CBufRet.f32 %7818, 3
  %7823 = fmul fast float %7809, %6703
  %7824 = call float @dx.op.tertiary.f32(i32 46, float %6704, float %7810, float %7823)  ; FMad(a,b,c)
  %7825 = call float @dx.op.tertiary.f32(i32 46, float %6705, float %7811, float %7824)  ; FMad(a,b,c)
  %7826 = fadd fast float %7825, %7812
  %7827 = fmul fast float %7814, %6703
  %7828 = call float @dx.op.tertiary.f32(i32 46, float %6704, float %7815, float %7827)  ; FMad(a,b,c)
  %7829 = call float @dx.op.tertiary.f32(i32 46, float %6705, float %7816, float %7828)  ; FMad(a,b,c)
  %7830 = fadd fast float %7829, %7817
  %7831 = fmul fast float %7819, %6703
  %7832 = call float @dx.op.tertiary.f32(i32 46, float %6704, float %7820, float %7831)  ; FMad(a,b,c)
  %7833 = call float @dx.op.tertiary.f32(i32 46, float %6705, float %7821, float %7832)  ; FMad(a,b,c)
  %7834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7835 = extractvalue %dx.types.CBufRet.f32 %7834, 0
  %7836 = extractvalue %dx.types.CBufRet.f32 %7834, 1
  %7837 = extractvalue %dx.types.CBufRet.f32 %7834, 3
  %7838 = fmul fast float %7837, %7826
  %7839 = fmul fast float %7837, %7830
  %7840 = fadd fast float %7838, %7835
  %7841 = fadd fast float %7839, %7836
  %7842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7843 = extractvalue %dx.types.CBufRet.f32 %7842, 0
  %7844 = extractvalue %dx.types.CBufRet.f32 %7842, 1
  %7845 = fsub fast float %7840, %7843
  %7846 = fsub fast float %7841, %7844
  %7847 = fcmp fast olt float %7845, 0.000000e+00
  %7848 = fcmp fast olt float %7846, 0.000000e+00
  %7849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7850 = extractvalue %dx.types.CBufRet.f32 %7849, 0
  %7851 = extractvalue %dx.types.CBufRet.f32 %7849, 1
  %7852 = extractvalue %dx.types.CBufRet.f32 %7849, 2
  %7853 = extractvalue %dx.types.CBufRet.f32 %7849, 3
  %7854 = select i1 %7847, float %7850, float %7852
  %7855 = select i1 %7848, float %7851, float %7853
  %7856 = fmul fast float %7854, %7845
  %7857 = fmul fast float %7855, %7846
  %7858 = call float @dx.op.unary.f32(i32 6, float %7856)  ; FAbs(value)
  %7859 = call float @dx.op.unary.f32(i32 6, float %7857)  ; FAbs(value)
  %7860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7861 = extractvalue %dx.types.CBufRet.f32 %7860, 0
  %7862 = call float @dx.op.binary.f32(i32 35, float %7858, float %7859)  ; FMax(a,b)
  %7863 = fsub fast float %7861, %7862
  %7864 = call float @dx.op.unary.f32(i32 7, float %7863)  ; Saturate(value)
  %7865 = fcmp fast ogt float %7864, 0.000000e+00
  br i1 %7865, label %7866, label %7907, !dx.controlflow.hints !115

; <label>:7866                                    ; preds = %7807
  %7867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %7840, float %7841, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7868 = extractvalue %dx.types.ResRet.f32 %7867, 1
  %7869 = fcmp fast ogt float %7868, 0.000000e+00
  br i1 %7869, label %7870, label %7902

; <label>:7870                                    ; preds = %7866
  %7871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %7840, float %7841, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7872 = extractvalue %dx.types.ResRet.f32 %7871, 0
  %7873 = extractvalue %dx.types.ResRet.f32 %7871, 1
  %7874 = extractvalue %dx.types.ResRet.f32 %7871, 2
  %7875 = extractvalue %dx.types.ResRet.f32 %7871, 3
  %7876 = fsub fast float 1.000000e+00, %7822
  %7877 = fsub fast float %7876, %7833
  %7878 = fmul fast float %7877, 0x400921FB60000000
  %7879 = fadd fast float %7878, 0x3FF921FB60000000
  %7880 = call float @dx.op.unary.f32(i32 13, float %7879)  ; Sin(value)
  %7881 = fadd fast float %7880, -1.000000e+00
  %7882 = fmul fast float %7881, 0x3FD45F3060000000
  %7883 = fmul fast float %7877, 0x401921FB60000000
  %7884 = fadd fast float %7883, 0x400921FB60000000
  %7885 = call float @dx.op.unary.f32(i32 13, float %7884)  ; Sin(value)
  %7886 = fadd fast float %7885, 0x3E7777A5C0000000
  %7887 = fmul fast float %7886, 0x3FC45F3060000000
  %7888 = fmul fast float %7877, 0x4022D97C80000000
  %7889 = fadd fast float %7888, 0x4012D97C80000000
  %7890 = call float @dx.op.unary.f32(i32 13, float %7889)  ; Sin(value)
  %7891 = fadd fast float %7890, 1.000000e+00
  %7892 = fmul fast float %7891, 0x3FBB2995E0000000
  %7893 = fmul fast float %7877, 0x402921FB60000000
  %7894 = fadd fast float %7893, 0x401921FB60000000
  %7895 = call float @dx.op.unary.f32(i32 13, float %7894)  ; Sin(value)
  %7896 = fadd fast float %7895, 0xBE8777A5C0000000
  %7897 = fmul fast float %7896, 0x3FB45F3060000000
  %7898 = call float @dx.op.dot4.f32(i32 56, float %7872, float %7873, float %7874, float %7875, float %7882, float %7887, float %7892, float %7897)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7899 = fmul fast float %7898, 0xBFF7154760000000
  %7900 = call float @dx.op.unary.f32(i32 21, float %7899)  ; Exp(value)
  %7901 = call float @dx.op.unary.f32(i32 7, float %7900)  ; Saturate(value)
  br label %7902

; <label>:7902                                    ; preds = %7870, %7866
  %7903 = phi float [ %7901, %7870 ], [ 1.000000e+00, %7866 ]
  %7904 = fadd fast float %7903, -1.000000e+00
  %7905 = fmul fast float %7904, %7864
  %7906 = fadd fast float %7905, 1.000000e+00
  br label %7907

; <label>:7907                                    ; preds = %7902, %7807
  %7908 = phi float [ %7906, %7902 ], [ 1.000000e+00, %7807 ]
  %7909 = fmul fast float %7908, %7803
  %7910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7911 = extractvalue %dx.types.CBufRet.f32 %7910, 0
  %7912 = extractvalue %dx.types.CBufRet.f32 %7910, 1
  %7913 = extractvalue %dx.types.CBufRet.f32 %7910, 2
  %7914 = fadd fast float %7911, %152
  %7915 = fadd fast float %7912, %153
  %7916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.f32 %7916, 1
  %7918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7919 = extractvalue %dx.types.CBufRet.f32 %7918, 0
  %7920 = extractvalue %dx.types.CBufRet.f32 %7918, 1
  %7921 = extractvalue %dx.types.CBufRet.f32 %7918, 2
  %7922 = fsub fast float -0.000000e+00, %7914
  %7923 = fsub fast float -0.000000e+00, %7915
  %7924 = fsub fast float -0.000000e+00, %154
  %7925 = fsub fast float %7924, %7913
  %7926 = fadd fast float %7925, %7917
  %7927 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7922, float %7923, float %7926)  ; Dot3(ax,ay,az,bx,by,bz)
  %7928 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7919, float %7920, float %7921)  ; Dot3(ax,ay,az,bx,by,bz)
  %7929 = fdiv fast float 1.000000e+00, %7928
  %7930 = fmul fast float %7929, %7927
  %7931 = fmul fast float %7919, %7930
  %7932 = fmul fast float %7920, %7930
  %7933 = fadd fast float %7931, %7914
  %7934 = fadd fast float %7932, %7915
  %7935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7936 = extractvalue %dx.types.CBufRet.f32 %7935, 0
  %7937 = extractvalue %dx.types.CBufRet.f32 %7935, 1
  %7938 = fsub fast float %7933, %7936
  %7939 = fsub fast float %7934, %7937
  %7940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7941 = extractvalue %dx.types.CBufRet.f32 %7940, 2
  %7942 = extractvalue %dx.types.CBufRet.f32 %7940, 3
  %7943 = fmul fast float %7938, %7941
  %7944 = fmul fast float %7939, %7942
  %7945 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7946 = extractvalue %dx.types.CBufRet.i32 %7945, 3
  %7947 = icmp eq i32 %7946, 0
  br i1 %7947, label %7953, label %7948

; <label>:7948                                    ; preds = %7907
  %7949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %7943, float %7944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7950 = extractvalue %dx.types.ResRet.f32 %7949, 0
  %7951 = extractvalue %dx.types.ResRet.f32 %7949, 1
  %7952 = extractvalue %dx.types.ResRet.f32 %7949, 2
  br label %7958

; <label>:7953                                    ; preds = %7907
  %7954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7943, float %7944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7955 = extractvalue %dx.types.ResRet.f32 %7954, 0
  %7956 = extractvalue %dx.types.ResRet.f32 %7954, 1
  %7957 = extractvalue %dx.types.ResRet.f32 %7954, 2
  br label %7958

; <label>:7958                                    ; preds = %7953, %7948
  %7959 = phi float [ %7950, %7948 ], [ %7955, %7953 ]
  %7960 = phi float [ %7951, %7948 ], [ %7956, %7953 ]
  %7961 = phi float [ %7952, %7948 ], [ %7957, %7953 ]
  %7962 = extractvalue %dx.types.CBufRet.f32 %7916, 2
  %7963 = fmul fast float %7962, %7959
  %7964 = extractvalue %dx.types.CBufRet.f32 %7916, 0
  %7965 = fsub fast float %7930, %7964
  %7966 = fsub fast float %7965, %7963
  %7967 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7966)  ; FMax(a,b)
  %7968 = fmul fast float %7967, %7960
  %7969 = call float @dx.op.binary.f32(i32 36, float %7961, float %7968)  ; FMin(a,b)
  %7970 = fmul fast float %7969, 0xBFF7154760000000
  %7971 = call float @dx.op.unary.f32(i32 21, float %7970)  ; Exp(value)
  %7972 = fmul fast float %7909, %7971
  br label %7973

; <label>:7973                                    ; preds = %7958, %7802
  %7974 = phi float [ %7972, %7958 ], [ %7803, %7802 ]
  %7975 = call float @dx.op.binary.f32(i32 36, float %7974, float %7974)  ; FMin(a,b)
  %7976 = call float @dx.op.binary.f32(i32 36, float %7974, float %7975)  ; FMin(a,b)
  %7977 = fcmp fast ogt float %7976, 0.000000e+00
  br i1 %7977, label %7978, label %8286, !dx.controlflow.hints !116

; <label>:7978                                    ; preds = %7973
  %7979 = bitcast i32 %5805 to float
  %7980 = fmul fast float %7974, %6695
  %7981 = fmul fast float %7974, %6696
  %7982 = fmul fast float %7974, %6697
  %7983 = fsub fast float %6684, %5773
  %7984 = fsub fast float %6685, %5774
  %7985 = fsub fast float %6686, %5775
  %7986 = call float @dx.op.dot3.f32(i32 55, float %7983, float %7984, float %7985, float %7983, float %7984, float %7985)  ; Dot3(ax,ay,az,bx,by,bz)
  %7987 = call float @dx.op.unary.f32(i32 25, float %7986)  ; Rsqrt(value)
  %7988 = fmul fast float %7987, %7983
  %7989 = fmul fast float %7987, %7984
  %7990 = fmul fast float %7987, %7985
  %7991 = call float @dx.op.dot3.f32(i32 55, float %6684, float %6685, float %6686, float %5393, float %5394, float %5395)  ; Dot3(ax,ay,az,bx,by,bz)
  %7992 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5777, float %5778, float %7988, float %7989, float %7990)  ; Dot3(ax,ay,az,bx,by,bz)
  %7993 = call float @dx.op.unary.f32(i32 7, float %7991)  ; Saturate(value)
  %7994 = fmul fast float %7993, %7993
  %7995 = fmul fast float %7994, %7979
  %7996 = call float @dx.op.unary.f32(i32 7, float %7995)  ; Saturate(value)
  %7997 = fmul fast float %7996, %7993
  %7998 = call float @dx.op.dot3.f32(i32 55, float %5393, float %5394, float %5395, float %7988, float %7989, float %7990)  ; Dot3(ax,ay,az,bx,by,bz)
  %7999 = fmul fast float %7998, %7998
  %8000 = call float @dx.op.unary.f32(i32 6, float %7991)  ; FAbs(value)
  %8001 = fsub fast float 1.000000e+00, %5799
  %8002 = fmul fast float %5781, %5781
  %8003 = fmul fast float %8002, %8001
  %8004 = fadd fast float %8003, %5799
  %8005 = bitcast float %8004 to i32
  %8006 = ashr i32 %8005, 1
  %8007 = add nsw i32 %8006, 532487669
  %8008 = bitcast i32 %8007 to float
  %8009 = fadd fast float %8008, %5781
  %8010 = fmul fast float %5799, %7999
  %8011 = fsub fast float 1.000000e+00, %7999
  %8012 = fadd fast float %8011, %8010
  %8013 = fmul fast float %8000, %8000
  %8014 = fmul fast float %8013, %8001
  %8015 = fadd fast float %8014, %5799
  %8016 = bitcast float %8015 to i32
  %8017 = ashr i32 %8016, 1
  %8018 = add nsw i32 %8017, 532487669
  %8019 = bitcast i32 %8018 to float
  %8020 = fadd fast float %8019, %8000
  %8021 = fmul fast float %8012, %8012
  %8022 = fmul fast float %8021, %8009
  %8023 = fmul fast float %8022, %8020
  %8024 = fdiv fast float 0x3FF0A00000000000, %8023
  %8025 = fmul fast float %8024, %5799
  %8026 = fmul fast float %6051, 0x3FF9999980000000
  %8027 = fsub fast float 5.000000e+00, %8026
  %8028 = call float @dx.op.unary.f32(i32 6, float %7992)  ; FAbs(value)
  %8029 = fsub fast float 1.000000e+00, %8028
  %8030 = fmul fast float %6051, 0x41D9660740000000
  %8031 = fadd fast float %8030, 0xC1EFBF8940000000
  %8032 = bitcast float %8029 to i32
  %8033 = sitofp i32 %8032 to float
  %8034 = fmul fast float %8033, %8027
  %8035 = fadd fast float %8031, %8034
  %8036 = fptosi float %8035 to i32
  %8037 = bitcast i32 %8036 to float
  %8038 = fsub fast float 1.000000e+00, %5396
  %8039 = fsub fast float 1.000000e+00, %5397
  %8040 = fsub fast float 1.000000e+00, %5779
  %8041 = fmul fast float %8037, %8038
  %8042 = fmul fast float %8037, %8039
  %8043 = fmul fast float %8037, %8040
  %8044 = fadd fast float %8041, %5396
  %8045 = fadd fast float %8042, %5397
  %8046 = fadd fast float %8043, %5779
  br i1 %6074, label %8047, label %8070

; <label>:8047                                    ; preds = %7978
  %8048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5063, float %8028, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8049 = extractvalue %dx.types.ResRet.f32 %8048, 0
  %8050 = extractvalue %dx.types.ResRet.f32 %8048, 1
  %8051 = extractvalue %dx.types.ResRet.f32 %8048, 2
  %8052 = fadd fast float %8049, -5.000000e-01
  %8053 = fadd fast float %8050, -5.000000e-01
  %8054 = fadd fast float %8051, -5.000000e-01
  %8055 = fmul fast float %5396, 4.000000e+00
  %8056 = fmul fast float %8055, %8038
  %8057 = fmul fast float %8056, %8052
  %8058 = fmul fast float %5397, 4.000000e+00
  %8059 = fmul fast float %8058, %8039
  %8060 = fmul fast float %8059, %8053
  %8061 = fmul fast float %5779, 4.000000e+00
  %8062 = fmul fast float %8061, %8040
  %8063 = fmul fast float %8062, %8054
  %8064 = fadd fast float %8057, %8044
  %8065 = fadd fast float %8060, %8045
  %8066 = fadd fast float %8063, %8046
  %8067 = call float @dx.op.unary.f32(i32 7, float %8064)  ; Saturate(value)
  %8068 = call float @dx.op.unary.f32(i32 7, float %8065)  ; Saturate(value)
  %8069 = call float @dx.op.unary.f32(i32 7, float %8066)  ; Saturate(value)
  br label %8070

; <label>:8070                                    ; preds = %8047, %7978
  %8071 = phi float [ %8067, %8047 ], [ %8044, %7978 ]
  %8072 = phi float [ %8068, %8047 ], [ %8045, %7978 ]
  %8073 = phi float [ %8069, %8047 ], [ %8046, %7978 ]
  %8074 = fmul fast float %7991, 9.843750e-01
  %8075 = fadd fast float %8074, 7.812500e-03
  %8076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %8075, float %6055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8077 = extractvalue %dx.types.ResRet.f32 %8076, 0
  %8078 = extractvalue %dx.types.ResRet.f32 %8076, 1
  %8079 = extractvalue %dx.types.ResRet.f32 %8076, 2
  %8080 = extractvalue %dx.types.ResRet.f32 %8076, 3
  %8081 = fsub fast float %8079, %8077
  %8082 = fsub fast float %8080, %8078
  %8083 = fmul fast float %8081, %6061
  %8084 = fmul fast float %8082, %6061
  %8085 = fadd fast float %8083, %8077
  %8086 = fadd fast float %8084, %8078
  %8087 = fmul fast float %8085, %5396
  %8088 = fmul fast float %8085, %5397
  %8089 = fmul fast float %8085, %5779
  %8090 = fadd fast float %8087, %8086
  %8091 = fadd fast float %8088, %8086
  %8092 = fadd fast float %8089, %8086
  br i1 %6074, label %8093, label %8116

; <label>:8093                                    ; preds = %8070
  %8094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5063, float %7991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8095 = extractvalue %dx.types.ResRet.f32 %8094, 0
  %8096 = extractvalue %dx.types.ResRet.f32 %8094, 1
  %8097 = extractvalue %dx.types.ResRet.f32 %8094, 2
  %8098 = fadd fast float %8095, -5.000000e-01
  %8099 = fadd fast float %8096, -5.000000e-01
  %8100 = fadd fast float %8097, -5.000000e-01
  %8101 = fmul fast float %5396, 4.000000e+00
  %8102 = fmul fast float %8101, %8038
  %8103 = fmul fast float %8102, %8098
  %8104 = fmul fast float %5397, 4.000000e+00
  %8105 = fmul fast float %8104, %8039
  %8106 = fmul fast float %8105, %8099
  %8107 = fmul fast float %5779, 4.000000e+00
  %8108 = fmul fast float %8107, %8040
  %8109 = fmul fast float %8108, %8100
  %8110 = fadd fast float %8103, %8090
  %8111 = fadd fast float %8106, %8091
  %8112 = fadd fast float %8109, %8092
  %8113 = call float @dx.op.unary.f32(i32 7, float %8110)  ; Saturate(value)
  %8114 = call float @dx.op.unary.f32(i32 7, float %8111)  ; Saturate(value)
  %8115 = call float @dx.op.unary.f32(i32 7, float %8112)  ; Saturate(value)
  br label %8116

; <label>:8116                                    ; preds = %8093, %8070
  %8117 = phi float [ %8113, %8093 ], [ %8090, %8070 ]
  %8118 = phi float [ %8114, %8093 ], [ %8091, %8070 ]
  %8119 = phi float [ %8115, %8093 ], [ %8092, %8070 ]
  %8120 = call float @dx.op.binary.f32(i32 35, float %8118, float %8119)  ; FMax(a,b)
  %8121 = call float @dx.op.binary.f32(i32 35, float %8117, float %8120)  ; FMax(a,b)
  %8122 = fsub fast float 1.000000e+00, %8121
  %8123 = call float @dx.op.binary.f32(i32 35, float %8000, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8124 = fdiv fast float %4417, %8123
  %8125 = fmul fast float %6593, %8124
  %8126 = fmul fast float %6595, %8124
  %8127 = fmul fast float %6597, %8124
  %8128 = call float @dx.op.unary.f32(i32 21, float %8125)  ; Exp(value)
  %8129 = call float @dx.op.unary.f32(i32 21, float %8126)  ; Exp(value)
  %8130 = call float @dx.op.unary.f32(i32 21, float %8127)  ; Exp(value)
  %8131 = call float @dx.op.unary.f32(i32 7, float %8128)  ; Saturate(value)
  %8132 = call float @dx.op.unary.f32(i32 7, float %8129)  ; Saturate(value)
  %8133 = call float @dx.op.unary.f32(i32 7, float %8130)  ; Saturate(value)
  %8134 = select i1 %6590, float %8131, float 0.000000e+00
  %8135 = select i1 %6591, float %8132, float 0.000000e+00
  %8136 = select i1 %6592, float %8133, float 0.000000e+00
  %8137 = fsub fast float -0.000000e+00, %5393
  %8138 = fsub fast float -0.000000e+00, %5394
  %8139 = fsub fast float -0.000000e+00, %5395
  %8140 = call float @dx.op.dot3.f32(i32 55, float %6684, float %6685, float %6686, float %8137, float %8138, float %8139)  ; Dot3(ax,ay,az,bx,by,bz)
  %8141 = call float @dx.op.unary.f32(i32 7, float %8140)  ; Saturate(value)
  %8142 = fmul fast float %8141, 9.843750e-01
  %8143 = fadd fast float %8142, 7.812500e-03
  %8144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %8143, float %6055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8145 = extractvalue %dx.types.ResRet.f32 %8144, 0
  %8146 = extractvalue %dx.types.ResRet.f32 %8144, 1
  %8147 = extractvalue %dx.types.ResRet.f32 %8144, 2
  %8148 = extractvalue %dx.types.ResRet.f32 %8144, 3
  %8149 = fsub fast float %8147, %8145
  %8150 = fsub fast float %8148, %8146
  %8151 = fmul fast float %8149, %6061
  %8152 = fmul fast float %8150, %6061
  %8153 = fadd fast float %8151, %8145
  %8154 = fadd fast float %8152, %8146
  %8155 = fmul fast float %8153, %5396
  %8156 = fmul fast float %8153, %5397
  %8157 = fmul fast float %8153, %5779
  %8158 = fadd fast float %8155, %8154
  %8159 = fadd fast float %8156, %8154
  %8160 = fadd fast float %8157, %8154
  br i1 %6074, label %8161, label %8184

; <label>:8161                                    ; preds = %8116
  %8162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5063, float %8141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8163 = extractvalue %dx.types.ResRet.f32 %8162, 0
  %8164 = extractvalue %dx.types.ResRet.f32 %8162, 1
  %8165 = extractvalue %dx.types.ResRet.f32 %8162, 2
  %8166 = fadd fast float %8163, -5.000000e-01
  %8167 = fadd fast float %8164, -5.000000e-01
  %8168 = fadd fast float %8165, -5.000000e-01
  %8169 = fmul fast float %5396, 4.000000e+00
  %8170 = fmul fast float %8169, %8038
  %8171 = fmul fast float %8170, %8166
  %8172 = fmul fast float %5397, 4.000000e+00
  %8173 = fmul fast float %8172, %8039
  %8174 = fmul fast float %8173, %8167
  %8175 = fmul fast float %5779, 4.000000e+00
  %8176 = fmul fast float %8175, %8040
  %8177 = fmul fast float %8176, %8168
  %8178 = fadd fast float %8171, %8158
  %8179 = fadd fast float %8174, %8159
  %8180 = fadd fast float %8177, %8160
  %8181 = call float @dx.op.unary.f32(i32 7, float %8178)  ; Saturate(value)
  %8182 = call float @dx.op.unary.f32(i32 7, float %8179)  ; Saturate(value)
  %8183 = call float @dx.op.unary.f32(i32 7, float %8180)  ; Saturate(value)
  br label %8184

; <label>:8184                                    ; preds = %8161, %8116
  %8185 = phi float [ %8181, %8161 ], [ %8158, %8116 ]
  %8186 = phi float [ %8182, %8161 ], [ %8159, %8116 ]
  %8187 = phi float [ %8183, %8161 ], [ %8160, %8116 ]
  %8188 = call float @dx.op.binary.f32(i32 35, float %8186, float %8187)  ; FMax(a,b)
  %8189 = call float @dx.op.binary.f32(i32 35, float %8185, float %8188)  ; FMax(a,b)
  %8190 = fsub fast float 1.000000e+00, %8189
  %8191 = fmul fast float %5796, %6657
  %8192 = fadd fast float %6659, %8191
  %8193 = call float @dx.op.unary.f32(i32 7, float %8192)  ; Saturate(value)
  %8194 = fsub fast float %6684, %5787
  %8195 = fsub fast float %6685, %5788
  %8196 = fsub fast float %6686, %5789
  %8197 = call float @dx.op.dot3.f32(i32 55, float %8194, float %8195, float %8196, float %8194, float %8195, float %8196)  ; Dot3(ax,ay,az,bx,by,bz)
  %8198 = call float @dx.op.unary.f32(i32 25, float %8197)  ; Rsqrt(value)
  %8199 = fmul fast float %8198, %8194
  %8200 = fmul fast float %8198, %8195
  %8201 = fmul fast float %8198, %8196
  %8202 = call float @dx.op.dot3.f32(i32 55, float %8137, float %8138, float %8139, float %8199, float %8200, float %8201)  ; Dot3(ax,ay,az,bx,by,bz)
  %8203 = fmul fast float %8202, %8202
  %8204 = call float @dx.op.unary.f32(i32 6, float %8141)  ; FAbs(value)
  %8205 = call float @dx.op.binary.f32(i32 35, float %8193, float 0x3F847AE140000000)  ; FMax(a,b)
  %8206 = fmul fast float %8205, %8205
  %8207 = fmul fast float %8206, %8206
  %8208 = fsub fast float 1.000000e+00, %8207
  %8209 = fmul fast float %8002, %8208
  %8210 = fadd fast float %8209, %8207
  %8211 = bitcast float %8210 to i32
  %8212 = ashr i32 %8211, 1
  %8213 = add nsw i32 %8212, 532487669
  %8214 = bitcast i32 %8213 to float
  %8215 = fadd fast float %8214, %5781
  %8216 = fmul fast float %8207, %8203
  %8217 = fsub fast float 1.000000e+00, %8203
  %8218 = fadd fast float %8217, %8216
  %8219 = fmul fast float %8204, %8204
  %8220 = fmul fast float %8219, %8208
  %8221 = fadd fast float %8220, %8207
  %8222 = bitcast float %8221 to i32
  %8223 = ashr i32 %8222, 1
  %8224 = add nsw i32 %8223, 532487669
  %8225 = bitcast i32 %8224 to float
  %8226 = fadd fast float %8225, %8204
  %8227 = fmul fast float %8218, %8218
  %8228 = fmul fast float %8227, %8215
  %8229 = fmul fast float %8228, %8226
  %8230 = fdiv fast float 0x3FF0A00000000000, %8229
  %8231 = fmul fast float %8230, %8207
  %8232 = fmul fast float %8141, %8134
  %8233 = fmul fast float %8141, %8135
  %8234 = fmul fast float %8141, %8136
  %8235 = fmul fast float %8232, %8190
  %8236 = fmul fast float %8235, %8231
  %8237 = fmul fast float %8233, %8190
  %8238 = fmul fast float %8237, %8231
  %8239 = fmul fast float %8234, %8190
  %8240 = fmul fast float %8239, %8231
  %8241 = fmul fast float %8071, %8025
  %8242 = fmul fast float %8072, %8025
  %8243 = fmul fast float %8073, %8025
  %8244 = fsub fast float 1.000000e+00, %7992
  %8245 = bitcast float %8244 to i32
  %8246 = sitofp i32 %8245 to float
  %8247 = fmul fast float %8246, 5.000000e+00
  %8248 = fadd fast float %8247, 0xC1EFBF8940000000
  %8249 = fptosi float %8248 to i32
  %8250 = bitcast i32 %8249 to float
  %8251 = fmul fast float %8250, %5064
  %8252 = fmul fast float %8122, %8251
  %8253 = fmul fast float %8252, %6585
  %8254 = fmul fast float %8252, %6586
  %8255 = fmul fast float %8252, %6587
  %8256 = fadd fast float %8253, %8241
  %8257 = fadd fast float %8254, %8242
  %8258 = fadd fast float %8255, %8243
  %8259 = fmul fast float %8256, %7997
  %8260 = fmul fast float %8257, %7997
  %8261 = fmul fast float %8258, %7997
  %8262 = fmul fast float %7997, %7980
  %8263 = fmul fast float %8262, %8122
  %8264 = fmul fast float %7997, %7981
  %8265 = fmul fast float %8264, %8122
  %8266 = fmul fast float %7997, %7982
  %8267 = fmul fast float %8266, %8122
  %8268 = fadd fast float %8259, %8236
  %8269 = fadd fast float %8260, %8238
  %8270 = fadd fast float %8261, %8240
  %8271 = fmul fast float %8268, %7980
  %8272 = fmul fast float %8269, %7981
  %8273 = fmul fast float %8270, %7982
  %8274 = fadd fast float %8263, %6674
  %8275 = fmul fast float %8274, %5060
  %8276 = fadd fast float %8265, %6676
  %8277 = fmul fast float %8276, %5060
  %8278 = fadd fast float %8267, %6678
  %8279 = fmul fast float %8278, %5060
  %8280 = fadd fast float %8271, %6638
  %8281 = fmul fast float %8280, %5060
  %8282 = fadd fast float %8272, %6641
  %8283 = fmul fast float %8282, %5060
  %8284 = fadd fast float %8273, %6644
  %8285 = fmul fast float %8284, %5060
  br label %8286

; <label>:8286                                    ; preds = %8184, %7973, %6568
  %8287 = phi float [ %6639, %6568 ], [ %6639, %7973 ], [ %8281, %8184 ]
  %8288 = phi float [ %6642, %6568 ], [ %6642, %7973 ], [ %8283, %8184 ]
  %8289 = phi float [ %6645, %6568 ], [ %6645, %7973 ], [ %8285, %8184 ]
  %8290 = phi float [ %6675, %6568 ], [ %6675, %7973 ], [ %8275, %8184 ]
  %8291 = phi float [ %6677, %6568 ], [ %6677, %7973 ], [ %8277, %8184 ]
  %8292 = phi float [ %6679, %6568 ], [ %6679, %7973 ], [ %8279, %8184 ]
  %8293 = fmul fast float %6614, %5060
  %8294 = fmul fast float %6615, %5060
  %8295 = fmul fast float %6616, %5060
  %8296 = fadd fast float %8293, 1.000000e+00
  %8297 = fadd fast float %8294, 1.000000e+00
  %8298 = fadd fast float %8295, 1.000000e+00
  %8299 = call float @dx.op.dot3.f32(i32 55, float %8296, float %8297, float %8298, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8300 = fsub fast float 1.000000e+00, %8299
  %8301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8302 = extractvalue %dx.types.CBufRet.f32 %8301, 0
  %8303 = fmul fast float %8302, %6620
  %8304 = fsub fast float 1.000000e+00, %5770
  %8305 = extractvalue %dx.types.CBufRet.f32 %8301, 2
  %8306 = fmul fast float %8305, %8304
  %8307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8308 = extractvalue %dx.types.CBufRet.f32 %8307, 3
  %8309 = fsub fast float 1.000000e+00, %5067
  %8310 = call float @dx.op.unary.f32(i32 7, float %8309)  ; Saturate(value)
  %8311 = fadd fast float %8292, %5066
  %8312 = fmul fast float %8311, %5067
  %8313 = fmul fast float %8310, %8308
  %8314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8315 = extractvalue %dx.types.CBufRet.f32 %8314, 3
  %8316 = fmul fast float %8290, %5390
  %8317 = fmul fast float %8291, %5391
  %8318 = fmul fast float %8292, %5392
  %8319 = fcmp fast ogt float %85, %174
  %8320 = and i1 %8319, %5135
  %8321 = or i1 %5214, %8320
  %8322 = icmp eq i32 %5134, 2
  %8323 = fcmp fast ole float %85, %174
  %8324 = and i1 %8323, %8322
  %8325 = or i1 %8324, %8321
  br i1 %8320, label %8326, label %8583

; <label>:8326                                    ; preds = %8286
  %8327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %8328 = extractvalue %dx.types.CBufRet.f32 %8327, 2
  %8329 = extractvalue %dx.types.CBufRet.f32 %8327, 3
  %8330 = fmul fast float %8328, %97
  %8331 = fmul fast float %8329, %98
  %8332 = call float @dx.op.unary.f32(i32 7, float %8330)  ; Saturate(value)
  %8333 = call float @dx.op.unary.f32(i32 7, float %8331)  ; Saturate(value)
  %8334 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8332, float %8333, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8335 = extractvalue %dx.types.ResRet.f32 %8334, 0
  %8336 = extractvalue %dx.types.ResRet.f32 %8334, 1
  %8337 = extractvalue %dx.types.ResRet.f32 %8334, 2
  %8338 = extractvalue %dx.types.ResRet.f32 %8334, 3
  %8339 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8332, float %8333, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8340 = extractvalue %dx.types.ResRet.f32 %8339, 0
  %8341 = extractvalue %dx.types.ResRet.f32 %8339, 1
  %8342 = extractvalue %dx.types.ResRet.f32 %8339, 2
  %8343 = extractvalue %dx.types.ResRet.f32 %8339, 3
  %8344 = call float @dx.op.binary.f32(i32 35, float %8336, float %8337)  ; FMax(a,b)
  %8345 = call float @dx.op.binary.f32(i32 35, float %8335, float %8344)  ; FMax(a,b)
  %8346 = call float @dx.op.binary.f32(i32 35, float %8345, float %8338)  ; FMax(a,b)
  %8347 = call float @dx.op.binary.f32(i32 36, float %8341, float %8342)  ; FMin(a,b)
  %8348 = call float @dx.op.binary.f32(i32 36, float %8340, float %8347)  ; FMin(a,b)
  %8349 = call float @dx.op.binary.f32(i32 36, float %8348, float %8343)  ; FMin(a,b)
  %8350 = fmul fast float %8346, 2.550000e+02
  %8351 = fadd fast float %8350, 0x3F70101020000000
  %8352 = fptoui float %8351 to i32
  %8353 = fmul fast float %8349, 2.550000e+02
  %8354 = fadd fast float %8353, 0x3F70101020000000
  %8355 = fptoui float %8354 to i32
  %8356 = icmp ult i32 %8352, %8355
  br i1 %8356, label %8357, label %8525

; <label>:8357                                    ; preds = %8326
  %8358 = fcmp fast ogt float %84, 9.843750e-01
  %8359 = fadd fast float %85, -4.000000e+00
  %8360 = select i1 %8358, float -4.000000e+00, float %8359
  %8361 = call float @dx.op.binary.f32(i32 35, float %8360, float 0.000000e+00)  ; FMax(a,b)
  %8362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8363 = extractvalue %dx.types.CBufRet.f32 %8362, 0
  %8364 = fadd fast float %8363, %8361
  %8365 = extractvalue %dx.types.CBufRet.f32 %8362, 2
  %8366 = fmul fast float %8364, %8365
  %8367 = call float @dx.op.unary.f32(i32 23, float %8366)  ; Log(value)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8362, 3
  %8369 = fmul fast float %8368, %8367
  %8370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8371 = extractvalue %dx.types.CBufRet.f32 %8370, 2
  %8372 = fmul fast float %8369, %8371
  %8373 = call float @dx.op.unary.f32(i32 7, float %8372)  ; Saturate(value)
  %8374 = uitofp i32 %8352 to float
  %8375 = uitofp i32 %8355 to float
  %8376 = fadd fast float %8374, 5.000000e-01
  %8377 = fadd fast float %8375, 5.000000e-01
  %8378 = fmul fast float %8371, %8376
  %8379 = fmul fast float %8371, %8377
  %8380 = fadd fast float %8378, 0x3F0FFB4800000000
  %8381 = fadd fast float %8379, 0xBF0FFB4800000000
  %8382 = call float @dx.op.binary.f32(i32 35, float %8373, float %8380)  ; FMax(a,b)
  %8383 = call float @dx.op.binary.f32(i32 36, float %8382, float %8381)  ; FMin(a,b)
  %8384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8384, 1
  %8386 = extractvalue %dx.types.CBufRet.f32 %8384, 2
  %8387 = extractvalue %dx.types.CBufRet.f32 %8384, 0
  %8388 = fmul fast float %8385, %8383
  %8389 = fadd fast float %8387, %8388
  %8390 = fadd fast float %8387, %8386
  %8391 = fsub fast float %8385, %8386
  %8392 = fadd fast float %8391, %8387
  %8393 = call float @dx.op.binary.f32(i32 35, float %8389, float %8390)  ; FMax(a,b)
  %8394 = call float @dx.op.binary.f32(i32 36, float %8393, float %8392)  ; FMin(a,b)
  %8395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %8332, float %8333, float %8394, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8396 = extractvalue %dx.types.ResRet.f32 %8395, 0
  %8397 = extractvalue %dx.types.ResRet.f32 %8395, 1
  %8398 = extractvalue %dx.types.ResRet.f32 %8395, 2
  %8399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8400 = extractvalue %dx.types.CBufRet.i32 %8399, 0
  %8401 = extractvalue %dx.types.CBufRet.i32 %8399, 1
  %8402 = uitofp i32 %8400 to float
  %8403 = uitofp i32 %8401 to float
  %8404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8405 = extractvalue %dx.types.CBufRet.f32 %8404, 0
  %8406 = extractvalue %dx.types.CBufRet.f32 %8404, 1
  %8407 = fmul fast float %8402, %8332
  %8408 = fmul fast float %8403, %8333
  %8409 = fadd fast float %8407, -5.000000e-01
  %8410 = fadd fast float %8408, -5.000000e-01
  %8411 = call float @dx.op.unary.f32(i32 22, float %8409)  ; Frc(value)
  %8412 = call float @dx.op.unary.f32(i32 22, float %8410)  ; Frc(value)
  %8413 = fmul fast float %8411, %8411
  %8414 = fmul fast float %8413, %8411
  %8415 = fsub fast float 3.000000e+00, %8411
  %8416 = fmul fast float %8413, %8415
  %8417 = fmul fast float %8411, 3.000000e+00
  %8418 = fmul fast float %8414, 3.000000e+00
  %8419 = fmul fast float %8413, 6.000000e+00
  %8420 = fsub fast float %8418, %8419
  %8421 = fadd fast float %8420, 4.000000e+00
  %8422 = fmul fast float %8421, 0x3FC5555560000000
  %8423 = fmul fast float %8414, -3.000000e+00
  %8424 = fadd fast float %8413, %8411
  %8425 = fmul fast float %8424, 3.000000e+00
  %8426 = fadd fast float %8423, 1.000000e+00
  %8427 = fadd fast float %8426, %8425
  %8428 = fmul fast float %8414, 0x3FC5555560000000
  %8429 = fmul fast float %8412, %8412
  %8430 = fmul fast float %8429, %8412
  %8431 = fsub fast float 3.000000e+00, %8412
  %8432 = fmul fast float %8429, %8431
  %8433 = fmul fast float %8412, 3.000000e+00
  %8434 = fmul fast float %8430, 3.000000e+00
  %8435 = fmul fast float %8429, 6.000000e+00
  %8436 = fsub fast float %8434, %8435
  %8437 = fadd fast float %8436, 4.000000e+00
  %8438 = fmul fast float %8437, 0x3FC5555560000000
  %8439 = fmul fast float %8430, -3.000000e+00
  %8440 = fadd fast float %8429, %8412
  %8441 = fmul fast float %8440, 3.000000e+00
  %8442 = fadd fast float %8439, 1.000000e+00
  %8443 = fadd fast float %8442, %8441
  %8444 = fmul fast float %8430, 0x3FC5555560000000
  %8445 = fadd fast float %8411, 1.000000e+00
  %8446 = fsub fast float 1.000000e+00, %8417
  %8447 = fadd fast float %8446, %8416
  %8448 = fadd fast float %8447, %8421
  %8449 = fmul fast float %8448, 0x3FC5555560000000
  %8450 = fdiv fast float %8422, %8449
  %8451 = fsub fast float %8445, %8450
  %8452 = fsub fast float 1.000000e+00, %8411
  %8453 = fadd fast float %8427, %8414
  %8454 = fmul fast float %8453, 0x3FC5555560000000
  %8455 = fdiv fast float %8428, %8454
  %8456 = fadd fast float %8452, %8455
  %8457 = fadd fast float %8412, 1.000000e+00
  %8458 = fsub fast float 1.000000e+00, %8433
  %8459 = fadd fast float %8458, %8432
  %8460 = fadd fast float %8459, %8437
  %8461 = fmul fast float %8460, 0x3FC5555560000000
  %8462 = fdiv fast float %8438, %8461
  %8463 = fsub fast float %8457, %8462
  %8464 = fsub fast float 1.000000e+00, %8412
  %8465 = fadd fast float %8443, %8430
  %8466 = fmul fast float %8465, 0x3FC5555560000000
  %8467 = fdiv fast float %8444, %8466
  %8468 = fadd fast float %8467, %8464
  %8469 = fmul fast float %8451, %8405
  %8470 = fsub fast float %8332, %8469
  %8471 = fmul fast float %8456, %8405
  %8472 = fadd fast float %8471, %8332
  %8473 = fmul fast float %8468, %8406
  %8474 = fadd fast float %8473, %8333
  %8475 = fmul fast float %8463, %8406
  %8476 = fsub fast float %8333, %8475
  %8477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8470, float %8476, float %8394, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8478 = extractvalue %dx.types.ResRet.f32 %8477, 0
  %8479 = extractvalue %dx.types.ResRet.f32 %8477, 1
  %8480 = extractvalue %dx.types.ResRet.f32 %8477, 2
  %8481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8472, float %8476, float %8394, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8482 = extractvalue %dx.types.ResRet.f32 %8481, 0
  %8483 = extractvalue %dx.types.ResRet.f32 %8481, 1
  %8484 = extractvalue %dx.types.ResRet.f32 %8481, 2
  %8485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8470, float %8474, float %8394, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8486 = extractvalue %dx.types.ResRet.f32 %8485, 0
  %8487 = extractvalue %dx.types.ResRet.f32 %8485, 1
  %8488 = extractvalue %dx.types.ResRet.f32 %8485, 2
  %8489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8472, float %8474, float %8394, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8490 = extractvalue %dx.types.ResRet.f32 %8489, 0
  %8491 = extractvalue %dx.types.ResRet.f32 %8489, 1
  %8492 = extractvalue %dx.types.ResRet.f32 %8489, 2
  %8493 = fsub fast float %8486, %8478
  %8494 = fsub fast float %8487, %8479
  %8495 = fsub fast float %8488, %8480
  %8496 = fmul fast float %8493, %8466
  %8497 = fmul fast float %8494, %8466
  %8498 = fmul fast float %8495, %8466
  %8499 = fadd fast float %8496, %8478
  %8500 = fadd fast float %8497, %8479
  %8501 = fadd fast float %8498, %8480
  %8502 = fsub fast float %8490, %8482
  %8503 = fsub fast float %8491, %8483
  %8504 = fsub fast float %8492, %8484
  %8505 = fmul fast float %8502, %8466
  %8506 = fmul fast float %8503, %8466
  %8507 = fmul fast float %8504, %8466
  %8508 = fsub fast float %8482, %8499
  %8509 = fadd fast float %8508, %8505
  %8510 = fsub fast float %8483, %8500
  %8511 = fadd fast float %8510, %8506
  %8512 = fsub fast float %8484, %8501
  %8513 = fadd fast float %8512, %8507
  %8514 = fmul fast float %8509, %8454
  %8515 = fmul fast float %8511, %8454
  %8516 = fmul fast float %8513, %8454
  %8517 = fadd fast float %8514, %8499
  %8518 = fadd fast float %8515, %8500
  %8519 = fadd fast float %8516, %8501
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 1
  %8522 = fmul fast float %8517, %8521
  %8523 = fmul fast float %8518, %8521
  %8524 = fmul fast float %8519, %8521
  br label %8525

; <label>:8525                                    ; preds = %8357, %8326
  %8526 = phi float [ %8396, %8357 ], [ 1.000000e+00, %8326 ]
  %8527 = phi float [ %8397, %8357 ], [ 1.000000e+00, %8326 ]
  %8528 = phi float [ %8398, %8357 ], [ 1.000000e+00, %8326 ]
  %8529 = phi float [ %8522, %8357 ], [ 0.000000e+00, %8326 ]
  %8530 = phi float [ %8523, %8357 ], [ 0.000000e+00, %8326 ]
  %8531 = phi float [ %8524, %8357 ], [ 0.000000e+00, %8326 ]
  %8532 = fmul fast float %8529, %8300
  %8533 = fmul fast float %8530, %8300
  %8534 = fmul fast float %8531, %8300
  %8535 = call float @dx.op.dot3.f32(i32 55, float %8526, float %8527, float %8528, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8536 = call float @dx.op.dot3.f32(i32 55, float %8532, float %8533, float %8534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8537 = select i1 %213, float %8535, float %8526
  %8538 = select i1 %213, float %8535, float %8527
  %8539 = select i1 %213, float 1.000000e+00, float %8528
  %8540 = select i1 %213, float %8536, float %8532
  %8541 = select i1 %213, float 0.000000e+00, float %8533
  %8542 = select i1 %213, float 0.000000e+00, float %8534
  %8543 = fmul fast float %8537, %8316
  %8544 = fmul fast float %8538, %8317
  %8545 = fmul fast float %8539, %8318
  %8546 = fadd fast float %8543, %8540
  %8547 = fadd fast float %8544, %8541
  %8548 = fadd fast float %8542, %8545
  %8549 = fmul fast float %8537, %8287
  %8550 = fmul fast float %8538, %8288
  %8551 = fmul fast float %8539, %8289
  %8552 = fmul fast float %122, %8328
  %8553 = fmul fast float %124, %8329
  %8554 = fsub fast float 1.000000e+00, %8552
  %8555 = fsub fast float 1.000000e+00, %8553
  %8556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8557 = extractvalue %dx.types.CBufRet.f32 %8556, 0
  %8558 = extractvalue %dx.types.CBufRet.f32 %8556, 1
  %8559 = extractvalue %dx.types.CBufRet.f32 %8556, 2
  %8560 = fmul fast float %8554, %8557
  %8561 = fmul fast float %8554, %8558
  %8562 = fmul fast float %8554, %8559
  %8563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8564 = extractvalue %dx.types.CBufRet.f32 %8563, 0
  %8565 = extractvalue %dx.types.CBufRet.f32 %8563, 1
  %8566 = extractvalue %dx.types.CBufRet.f32 %8563, 2
  %8567 = fmul fast float %8555, %8564
  %8568 = fmul fast float %8555, %8565
  %8569 = fmul fast float %8555, %8566
  %8570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8571 = extractvalue %dx.types.CBufRet.f32 %8570, 0
  %8572 = extractvalue %dx.types.CBufRet.f32 %8570, 1
  %8573 = extractvalue %dx.types.CBufRet.f32 %8570, 2
  %8574 = fadd fast float %8567, %8571
  %8575 = fadd fast float %8574, %8560
  %8576 = fadd fast float %8568, %8572
  %8577 = fadd fast float %8576, %8561
  %8578 = fadd fast float %8569, %8573
  %8579 = fadd fast float %8578, %8562
  %8580 = fmul fast float %8575, %174
  %8581 = fmul fast float %8577, %174
  %8582 = fmul fast float %8579, %174
  br label %8583

; <label>:8583                                    ; preds = %8525, %8286
  %8584 = phi float [ %8580, %8525 ], [ %152, %8286 ]
  %8585 = phi float [ %8581, %8525 ], [ %153, %8286 ]
  %8586 = phi float [ %8582, %8525 ], [ %154, %8286 ]
  %8587 = phi float [ %174, %8525 ], [ %85, %8286 ]
  %8588 = phi float [ %8546, %8525 ], [ %8316, %8286 ]
  %8589 = phi float [ %8547, %8525 ], [ %8317, %8286 ]
  %8590 = phi float [ %8548, %8525 ], [ %8318, %8286 ]
  %8591 = phi float [ %8549, %8525 ], [ %8287, %8286 ]
  %8592 = phi float [ %8550, %8525 ], [ %8288, %8286 ]
  %8593 = phi float [ %8551, %8525 ], [ %8289, %8286 ]
  %8594 = phi float [ %8526, %8525 ], [ 1.000000e+00, %8286 ]
  br i1 %8325, label %9745, label %8595

; <label>:8595                                    ; preds = %8583
  %8596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8597 = extractvalue %dx.types.CBufRet.f32 %8596, 0
  %8598 = extractvalue %dx.types.CBufRet.f32 %8596, 1
  %8599 = extractvalue %dx.types.CBufRet.f32 %8596, 2
  %8600 = extractvalue %dx.types.CBufRet.f32 %8596, 3
  %8601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8602 = extractvalue %dx.types.CBufRet.f32 %8601, 0
  %8603 = extractvalue %dx.types.CBufRet.f32 %8601, 1
  %8604 = extractvalue %dx.types.CBufRet.f32 %8601, 2
  %8605 = extractvalue %dx.types.CBufRet.f32 %8601, 3
  %8606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8607 = extractvalue %dx.types.CBufRet.f32 %8606, 0
  %8608 = extractvalue %dx.types.CBufRet.f32 %8606, 1
  %8609 = extractvalue %dx.types.CBufRet.f32 %8606, 2
  %8610 = extractvalue %dx.types.CBufRet.f32 %8606, 3
  %8611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.f32 %8611, 0
  %8613 = extractvalue %dx.types.CBufRet.f32 %8611, 1
  %8614 = extractvalue %dx.types.CBufRet.f32 %8611, 2
  %8615 = extractvalue %dx.types.CBufRet.f32 %8611, 3
  %8616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8617 = extractvalue %dx.types.CBufRet.f32 %8616, 3
  %8618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8619 = extractvalue %dx.types.CBufRet.f32 %8618, 3
  %8620 = extractvalue %dx.types.CBufRet.f32 %8618, 0
  %8621 = extractvalue %dx.types.CBufRet.f32 %8618, 1
  %8622 = extractvalue %dx.types.CBufRet.f32 %8618, 2
  %8623 = fcmp fast olt float %8622, -5.000000e-01
  %8624 = call float @dx.op.dot3.f32(i32 55, float %8584, float %8585, float %8586, float %8584, float %8585, float %8586)  ; Dot3(ax,ay,az,bx,by,bz)
  %8625 = call float @dx.op.unary.f32(i32 25, float %8624)  ; Rsqrt(value)
  %8626 = fmul fast float %8625, %8624
  %8627 = fmul fast float %8625, %8584
  %8628 = fmul fast float %8625, %8585
  %8629 = fmul fast float %8625, %8586
  %8630 = fadd fast float %8626, %8600
  %8631 = call float @dx.op.dot3.f32(i32 55, float %8627, float %8628, float %8629, float %8597, float %8598, float %8599)  ; Dot3(ax,ay,az,bx,by,bz)
  %8632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8633 = extractvalue %dx.types.CBufRet.i32 %8632, 1
  %8634 = and i32 %8633, 1
  %8635 = icmp ne i32 %8634, 0
  %8636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8637 = extractvalue %dx.types.CBufRet.f32 %8636, 2
  %8638 = fcmp fast ogt float %8637, 0.000000e+00
  %8639 = and i1 %8635, %8638
  br i1 %8639, label %8640, label %9042, !dx.controlflow.hints !117

; <label>:8640                                    ; preds = %8595
  %8641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8642 = extractvalue %dx.types.CBufRet.f32 %8641, 3
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 2
  %8645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8646 = extractvalue %dx.types.CBufRet.f32 %8645, 2
  %8647 = fsub fast float %8644, %8646
  %8648 = and i32 %8633, 2
  %8649 = extractvalue %dx.types.CBufRet.i32 %8632, 0
  %8650 = call i32 @dx.op.binary.i32(i32 40, i32 %8649, i32 3)  ; UMin(a,b)
  %8651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8652 = extractvalue %dx.types.CBufRet.f32 %8651, 0
  %8653 = extractvalue %dx.types.CBufRet.f32 %8651, 1
  %8654 = extractvalue %dx.types.CBufRet.f32 %8645, 0
  %8655 = extractvalue %dx.types.CBufRet.f32 %8645, 1
  %8656 = fsub fast float %8652, %8654
  %8657 = fsub fast float %8653, %8655
  %8658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8659 = extractvalue %dx.types.CBufRet.f32 %8658, 0
  %8660 = fcmp fast ogt float %8659, 0.000000e+00
  %8661 = fsub fast float -0.000000e+00, %8656
  %8662 = fsub fast float -0.000000e+00, %8657
  %8663 = call float @dx.op.dot2.f32(i32 54, float %8627, float %8628, float %8627, float %8628)  ; Dot2(ax,ay,bx,by)
  %8664 = call float @dx.op.dot2.f32(i32 54, float %8627, float %8628, float %8661, float %8662)  ; Dot2(ax,ay,bx,by)
  %8665 = fmul fast float %8664, 2.000000e+00
  %8666 = call float @dx.op.dot2.f32(i32 54, float %8661, float %8662, float %8661, float %8662)  ; Dot2(ax,ay,bx,by)
  %8667 = fmul fast float %8659, %8659
  %8668 = fsub fast float %8666, %8667
  %8669 = fmul fast float %8665, %8665
  %8670 = fmul fast float %8663, 4.000000e+00
  %8671 = fmul fast float %8670, %8668
  %8672 = fsub fast float %8669, %8671
  %8673 = fcmp fast ogt float %8672, 0.000000e+00
  br i1 %8673, label %8674, label %8689

; <label>:8674                                    ; preds = %8640
  %8675 = fcmp fast ogt float %8665, 0.000000e+00
  %8676 = call float @dx.op.unary.f32(i32 24, float %8672)  ; Sqrt(value)
  %8677 = fsub fast float -0.000000e+00, %8676
  %8678 = select i1 %8675, float %8676, float %8677
  %8679 = fadd fast float %8678, %8665
  %8680 = fmul float %8679, -5.000000e-01
  %8681 = fdiv fast float %8680, %8663
  %8682 = call float @dx.op.binary.f32(i32 35, float %8681, float 0.000000e+00)  ; FMax(a,b)
  %8683 = call float @dx.op.binary.f32(i32 36, float %8626, float %8682)  ; FMin(a,b)
  %8684 = fdiv fast float %8668, %8680
  %8685 = call float @dx.op.binary.f32(i32 35, float %8684, float 0.000000e+00)  ; FMax(a,b)
  %8686 = call float @dx.op.binary.f32(i32 36, float %8626, float %8685)  ; FMin(a,b)
  %8687 = call float @dx.op.binary.f32(i32 36, float %8683, float %8686)  ; FMin(a,b)
  %8688 = call float @dx.op.binary.f32(i32 35, float %8683, float %8686)  ; FMax(a,b)
  br label %8689

; <label>:8689                                    ; preds = %8674, %8640
  %8690 = phi float [ %8688, %8674 ], [ -1.000000e+00, %8640 ]
  %8691 = phi float [ %8687, %8674 ], [ -1.000000e+00, %8640 ]
  %8692 = phi i1 [ true, %8674 ], [ false, %8640 ]
  %8693 = and i1 %8660, %8692
  br i1 %8693, label %8694, label %8696

; <label>:8694                                    ; preds = %8689
  %8695 = fcmp fast oeq float %8691, %8690
  br i1 %8695, label %8995, label %8697

; <label>:8696                                    ; preds = %8689
  br i1 %8660, label %8995, label %8697

; <label>:8697                                    ; preds = %8696, %8694
  %8698 = phi float [ %8626, %8696 ], [ %8690, %8694 ]
  %8699 = phi float [ 0.000000e+00, %8696 ], [ %8691, %8694 ]
  %8700 = icmp ne i32 %8648, 0
  %8701 = fmul fast float %8698, %8629
  %8702 = fadd fast float %8701, %8642
  %8703 = fmul fast float %8702, %8698
  %8704 = select i1 %8700, float 0.000000e+00, float %8703
  %8705 = fcmp fast oeq float %8629, 0.000000e+00
  %8706 = fdiv fast float %8647, %8629
  %8707 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8706)  ; FMax(a,b)
  %8708 = select i1 %8705, float %8698, float %8707
  %8709 = call float @dx.op.binary.f32(i32 36, float %8698, float %8708)  ; FMin(a,b)
  %8710 = fcmp fast ogt float %8629, 0.000000e+00
  %8711 = fcmp fast olt float %8647, 0.000000e+00
  br i1 %8710, label %8712, label %8769

; <label>:8712                                    ; preds = %8697
  %8713 = icmp eq i32 %8648, 0
  br i1 %8711, label %8714, label %8758

; <label>:8714                                    ; preds = %8712
  %8715 = select i1 %8713, float %8698, float 0.000000e+00
  %8716 = fsub fast float -0.000000e+00, %8715
  %8717 = call float @dx.op.unary.f32(i32 6, float %8716)  ; FAbs(value)
  %8718 = fmul fast float %8715, %8629
  %8719 = fadd fast float %8718, %8642
  %8720 = fmul fast float %8717, %8719
  %8721 = fsub fast float %8704, %8720
  %8722 = fsub fast float %8698, %8717
  %8723 = select i1 %8713, float %8722, float 0.000000e+00
  %8724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8725 = extractvalue %dx.types.CBufRet.f32 %8724, 0
  %8726 = extractvalue %dx.types.CBufRet.f32 %8724, 1
  %8727 = extractvalue %dx.types.CBufRet.f32 %8724, 2
  %8728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8729 = extractvalue %dx.types.CBufRet.f32 %8728, 0
  %8730 = extractvalue %dx.types.CBufRet.f32 %8728, 1
  %8731 = extractvalue %dx.types.CBufRet.f32 %8728, 2
  %8732 = extractvalue %dx.types.CBufRet.f32 %8728, 3
  %8733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8734 = extractvalue %dx.types.CBufRet.f32 %8733, 3
  %8735 = call float @dx.op.binary.f32(i32 36, float %8721, float %8734)  ; FMin(a,b)
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
  %8747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
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
  br label %8995

; <label>:8758                                    ; preds = %8712
  br i1 %8713, label %8759, label %8780

; <label>:8759                                    ; preds = %8758
  %8760 = call float @dx.op.binary.f32(i32 36, float %8709, float %8699)  ; FMin(a,b)
  %8761 = fsub fast float %8709, %8760
  %8762 = fsub fast float %8761, %8698
  %8763 = call float @dx.op.unary.f32(i32 6, float %8762)  ; FAbs(value)
  %8764 = fadd fast float %8761, %8698
  %8765 = fmul fast float %8764, %8629
  %8766 = fadd fast float %8765, %8642
  %8767 = fmul fast float %8766, %8763
  %8768 = fsub fast float %8704, %8767
  br label %8780

; <label>:8769                                    ; preds = %8697
  br i1 %8711, label %8770, label %8780

; <label>:8770                                    ; preds = %8769
  %8771 = call float @dx.op.binary.f32(i32 35, float %8699, float %8709)  ; FMax(a,b)
  %8772 = icmp eq i32 %8648, 0
  %8773 = select i1 %8772, float %8709, float 0.000000e+00
  %8774 = fsub fast float -0.000000e+00, %8773
  %8775 = call float @dx.op.unary.f32(i32 6, float %8774)  ; FAbs(value)
  %8776 = fmul fast float %8773, %8629
  %8777 = fadd fast float %8776, %8642
  %8778 = fmul fast float %8775, %8777
  %8779 = fsub fast float %8704, %8778
  br label %8780

; <label>:8780                                    ; preds = %8770, %8769, %8759, %8758
  %8781 = phi float [ %8699, %8758 ], [ %8699, %8759 ], [ %8771, %8770 ], [ %8699, %8769 ]
  %8782 = phi float [ 0.000000e+00, %8758 ], [ %8763, %8759 ], [ %8775, %8770 ], [ 0.000000e+00, %8769 ]
  %8783 = phi float [ %8704, %8758 ], [ %8768, %8759 ], [ %8779, %8770 ], [ %8704, %8769 ]
  %8784 = phi float [ %8709, %8758 ], [ %8709, %8759 ], [ %8698, %8770 ], [ %8698, %8769 ]
  %8785 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %8785, align 4, !tbaa !107, !noalias !118
  %8786 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %8786, align 4, !tbaa !107, !noalias !118
  %8787 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %8787, align 4, !tbaa !107, !noalias !118
  %8788 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %8788, align 4, !tbaa !107, !noalias !118
  %8789 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %8789, align 4, !tbaa !107, !noalias !118
  %8790 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %8790, align 4, !tbaa !107, !noalias !118
  %8791 = icmp sgt i32 %8650, 0
  br i1 %8791, label %8792, label %8853

; <label>:8792                                    ; preds = %8780
  br label %8793

; <label>:8793                                    ; preds = %8842, %8792
  %8794 = phi i32 [ %8843, %8842 ], [ 0, %8792 ]
  %8795 = phi i32 [ %8844, %8842 ], [ 0, %8792 ]
  %8796 = add nuw i32 %8795, 171
  %8797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %8796)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8797, 0
  %8799 = extractvalue %dx.types.CBufRet.f32 %8797, 1
  %8800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8801 = extractvalue %dx.types.CBufRet.f32 %8800, 0
  %8802 = extractvalue %dx.types.CBufRet.f32 %8800, 1
  %8803 = fsub fast float %8798, %8801
  %8804 = fsub fast float %8799, %8802
  %8805 = extractvalue %dx.types.CBufRet.f32 %8797, 2
  %8806 = fsub fast float -0.000000e+00, %8803
  %8807 = fsub fast float -0.000000e+00, %8804
  %8808 = call float @dx.op.dot2.f32(i32 54, float %8627, float %8628, float %8806, float %8807)  ; Dot2(ax,ay,bx,by)
  %8809 = fmul fast float %8808, 2.000000e+00
  %8810 = call float @dx.op.dot2.f32(i32 54, float %8806, float %8807, float %8806, float %8807)  ; Dot2(ax,ay,bx,by)
  %8811 = fmul fast float %8805, %8805
  %8812 = fsub fast float %8810, %8811
  %8813 = fmul fast float %8809, %8809
  %8814 = fmul fast float %8670, %8812
  %8815 = fsub fast float %8813, %8814
  %8816 = fcmp fast ogt float %8815, 0.000000e+00
  br i1 %8816, label %8817, label %8832

; <label>:8817                                    ; preds = %8793
  %8818 = fcmp fast ogt float %8809, 0.000000e+00
  %8819 = call float @dx.op.unary.f32(i32 24, float %8815)  ; Sqrt(value)
  %8820 = fsub fast float -0.000000e+00, %8819
  %8821 = select i1 %8818, float %8819, float %8820
  %8822 = fadd fast float %8821, %8809
  %8823 = fmul float %8822, -5.000000e-01
  %8824 = fdiv fast float %8823, %8663
  %8825 = call float @dx.op.binary.f32(i32 35, float %8824, float 0.000000e+00)  ; FMax(a,b)
  %8826 = call float @dx.op.binary.f32(i32 36, float %8698, float %8825)  ; FMin(a,b)
  %8827 = fdiv fast float %8812, %8823
  %8828 = call float @dx.op.binary.f32(i32 35, float %8827, float 0.000000e+00)  ; FMax(a,b)
  %8829 = call float @dx.op.binary.f32(i32 36, float %8698, float %8828)  ; FMin(a,b)
  %8830 = call float @dx.op.binary.f32(i32 36, float %8826, float %8829)  ; FMin(a,b)
  %8831 = call float @dx.op.binary.f32(i32 35, float %8826, float %8829)  ; FMax(a,b)
  br label %8832

; <label>:8832                                    ; preds = %8817, %8793
  %8833 = phi float [ %8831, %8817 ], [ -1.000000e+00, %8793 ]
  %8834 = phi float [ %8830, %8817 ], [ -1.000000e+00, %8793 ]
  %8835 = phi i1 [ true, %8817 ], [ false, %8793 ]
  br i1 %8835, label %8836, label %8842

; <label>:8836                                    ; preds = %8832
  %8837 = call float @dx.op.binary.f32(i32 35, float %8781, float %8834)  ; FMax(a,b)
  %8838 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8795
  store float %8837, float* %8838, align 4, !tbaa !107, !noalias !118
  %8839 = call float @dx.op.binary.f32(i32 35, float %8781, float %8833)  ; FMax(a,b)
  %8840 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8795
  store float %8839, float* %8840, align 4, !tbaa !107, !noalias !118
  %8841 = add nsw i32 %8794, 1
  br label %8842

; <label>:8842                                    ; preds = %8836, %8832
  %8843 = phi i32 [ %8841, %8836 ], [ %8794, %8832 ]
  %8844 = add nuw nsw i32 %8795, 1
  %8845 = icmp eq i32 %8844, %8650
  br i1 %8845, label %8846, label %8793

; <label>:8846                                    ; preds = %8842
  %8847 = load float, float* %8787, align 4, !tbaa !107, !alias.scope !134, !noalias !137
  %8848 = load float, float* %8786, align 4, !tbaa !107, !alias.scope !140, !noalias !141
  %8849 = load float, float* %8785, align 4, !tbaa !107, !alias.scope !142, !noalias !143
  %8850 = load float, float* %8790, align 4, !tbaa !107, !alias.scope !144, !noalias !147
  %8851 = load float, float* %8789, align 4, !tbaa !107, !alias.scope !150, !noalias !151
  %8852 = load float, float* %8788, align 4, !tbaa !107, !alias.scope !152, !noalias !153
  br label %8853

; <label>:8853                                    ; preds = %8846, %8780
  %8854 = phi float [ -1.000000e+00, %8780 ], [ %8852, %8846 ]
  %8855 = phi float [ -1.000000e+00, %8780 ], [ %8851, %8846 ]
  %8856 = phi float [ -1.000000e+00, %8780 ], [ %8850, %8846 ]
  %8857 = phi float [ -1.000000e+00, %8780 ], [ %8849, %8846 ]
  %8858 = phi float [ -1.000000e+00, %8780 ], [ %8848, %8846 ]
  %8859 = phi float [ -1.000000e+00, %8780 ], [ %8847, %8846 ]
  %8860 = phi i32 [ 0, %8780 ], [ %8843, %8846 ]
  %8861 = call float @dx.op.binary.f32(i32 36, float %8857, float %8858)  ; FMin(a,b)
  %8862 = call float @dx.op.binary.f32(i32 36, float %8861, float %8859)  ; FMin(a,b)
  %8863 = call float @dx.op.binary.f32(i32 35, float %8857, float %8858)  ; FMax(a,b)
  %8864 = call float @dx.op.binary.f32(i32 36, float %8863, float %8859)  ; FMin(a,b)
  %8865 = call float @dx.op.binary.f32(i32 35, float %8861, float %8864)  ; FMax(a,b)
  %8866 = call float @dx.op.binary.f32(i32 35, float %8863, float %8859)  ; FMax(a,b)
  store float %8862, float* %8785, align 4, !tbaa !107, !alias.scope !142, !noalias !143
  store float %8865, float* %8786, align 4, !tbaa !107, !alias.scope !140, !noalias !141
  store float %8866, float* %8787, align 4, !tbaa !107, !alias.scope !134, !noalias !137
  %8867 = call float @dx.op.binary.f32(i32 36, float %8854, float %8855)  ; FMin(a,b)
  %8868 = call float @dx.op.binary.f32(i32 36, float %8867, float %8856)  ; FMin(a,b)
  %8869 = call float @dx.op.binary.f32(i32 35, float %8854, float %8855)  ; FMax(a,b)
  %8870 = call float @dx.op.binary.f32(i32 36, float %8869, float %8856)  ; FMin(a,b)
  %8871 = call float @dx.op.binary.f32(i32 35, float %8867, float %8870)  ; FMax(a,b)
  %8872 = call float @dx.op.binary.f32(i32 35, float %8869, float %8856)  ; FMax(a,b)
  store float %8868, float* %8788, align 4, !tbaa !107, !alias.scope !152, !noalias !153
  store float %8871, float* %8789, align 4, !tbaa !107, !alias.scope !150, !noalias !151
  store float %8872, float* %8790, align 4, !tbaa !107, !alias.scope !144, !noalias !147
  %8873 = sub nsw i32 3, %8860
  %8874 = icmp sgt i32 %8873, 2
  br i1 %8874, label %8875, label %8913

; <label>:8875                                    ; preds = %8853
  %8876 = icmp eq i32 %8648, 0
  %8877 = fsub fast float %8698, %8782
  %8878 = select i1 %8876, float %8877, float %8782
  %8879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8880 = extractvalue %dx.types.CBufRet.f32 %8879, 0
  %8881 = extractvalue %dx.types.CBufRet.f32 %8879, 1
  %8882 = extractvalue %dx.types.CBufRet.f32 %8879, 2
  %8883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8884 = extractvalue %dx.types.CBufRet.f32 %8883, 0
  %8885 = extractvalue %dx.types.CBufRet.f32 %8883, 1
  %8886 = extractvalue %dx.types.CBufRet.f32 %8883, 2
  %8887 = extractvalue %dx.types.CBufRet.f32 %8883, 3
  %8888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.f32 %8888, 3
  %8890 = call float @dx.op.binary.f32(i32 36, float %8783, float %8889)  ; FMin(a,b)
  %8891 = fmul fast float %8887, %8878
  %8892 = call float @dx.op.unary.f32(i32 7, float %8891)  ; Saturate(value)
  %8893 = fsub fast float %8884, %8880
  %8894 = fsub fast float %8885, %8881
  %8895 = fsub fast float %8886, %8882
  %8896 = fmul fast float %8892, %8893
  %8897 = fmul fast float %8892, %8894
  %8898 = fmul fast float %8892, %8895
  %8899 = fadd fast float %8896, %8880
  %8900 = fadd fast float %8897, %8881
  %8901 = fadd fast float %8898, %8882
  %8902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8903 = extractvalue %dx.types.CBufRet.f32 %8902, 0
  %8904 = extractvalue %dx.types.CBufRet.f32 %8902, 1
  %8905 = fadd fast float %8904, %8903
  %8906 = call float @dx.op.unary.f32(i32 7, float %8905)  ; Saturate(value)
  %8907 = extractvalue %dx.types.CBufRet.f32 %8902, 2
  %8908 = extractvalue %dx.types.CBufRet.f32 %8902, 3
  %8909 = fadd fast float %8908, %8907
  %8910 = call float @dx.op.unary.f32(i32 7, float %8909)  ; Saturate(value)
  %8911 = fmul fast float %8906, %8890
  %8912 = fmul fast float %8911, %8910
  br label %8995

; <label>:8913                                    ; preds = %8853
  %8914 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8873
  %8915 = load float, float* %8914, align 4, !tbaa !107, !noalias !118
  %8916 = fcmp fast olt float %8915, %8784
  %8917 = icmp sgt i32 %8860, 0
  %8918 = and i1 %8917, %8916
  br i1 %8918, label %8919, label %8956

; <label>:8919                                    ; preds = %8913
  br label %8920

; <label>:8920                                    ; preds = %8949, %8919
  %8921 = phi float [ %8950, %8949 ], [ %8782, %8919 ]
  %8922 = phi float [ %8951, %8949 ], [ %8783, %8919 ]
  %8923 = phi float [ %8931, %8949 ], [ %8915, %8919 ]
  %8924 = phi i32 [ %8928, %8949 ], [ %8873, %8919 ]
  %8925 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8924
  %8926 = load float, float* %8925, align 4, !tbaa !107, !noalias !118
  %8927 = icmp slt i32 %8924, 2
  %8928 = add nsw i32 %8924, 1
  %8929 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8928
  %8930 = load float, float* %8929, align 4, !tbaa !107, !noalias !118
  %8931 = select i1 %8927, float %8930, float %8698
  %8932 = call float @dx.op.binary.f32(i32 36, float %8931, float %8926)  ; FMin(a,b)
  %8933 = call float @dx.op.binary.f32(i32 36, float %8784, float %8932)  ; FMin(a,b)
  %8934 = icmp eq i32 %8648, 0
  %8935 = fadd fast float %8933, %8923
  %8936 = fmul fast float %8935, %8629
  %8937 = fadd fast float %8936, %8642
  br i1 %8934, label %8943, label %8938

; <label>:8938                                    ; preds = %8920
  %8939 = fsub fast float %8933, %8923
  %8940 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8939)  ; FMax(a,b)
  %8941 = fmul fast float %8940, %8937
  %8942 = fadd fast float %8941, %8922
  br label %8949

; <label>:8943                                    ; preds = %8920
  %8944 = fsub fast float %8923, %8933
  %8945 = call float @dx.op.unary.f32(i32 6, float %8944)  ; FAbs(value)
  %8946 = fadd fast float %8945, %8921
  %8947 = fmul fast float %8945, %8937
  %8948 = fsub fast float %8922, %8947
  br label %8949

; <label>:8949                                    ; preds = %8943, %8938
  %8950 = phi float [ %8940, %8938 ], [ %8946, %8943 ]
  %8951 = phi float [ %8942, %8938 ], [ %8948, %8943 ]
  %8952 = fcmp fast olt float %8931, %8784
  %8953 = icmp slt i32 %8928, 3
  %8954 = and i1 %8953, %8952
  br i1 %8954, label %8920, label %8955

; <label>:8955                                    ; preds = %8949
  br label %8956

; <label>:8956                                    ; preds = %8955, %8913
  %8957 = phi float [ %8782, %8913 ], [ %8950, %8955 ]
  %8958 = phi float [ %8783, %8913 ], [ %8951, %8955 ]
  %8959 = fsub fast float %8698, %8957
  %8960 = select i1 %8700, float %8957, float %8959
  %8961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8962 = extractvalue %dx.types.CBufRet.f32 %8961, 0
  %8963 = extractvalue %dx.types.CBufRet.f32 %8961, 1
  %8964 = extractvalue %dx.types.CBufRet.f32 %8961, 2
  %8965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.f32 %8965, 0
  %8967 = extractvalue %dx.types.CBufRet.f32 %8965, 1
  %8968 = extractvalue %dx.types.CBufRet.f32 %8965, 2
  %8969 = extractvalue %dx.types.CBufRet.f32 %8965, 3
  %8970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8971 = extractvalue %dx.types.CBufRet.f32 %8970, 3
  %8972 = call float @dx.op.binary.f32(i32 36, float %8958, float %8971)  ; FMin(a,b)
  %8973 = fmul fast float %8969, %8960
  %8974 = call float @dx.op.unary.f32(i32 7, float %8973)  ; Saturate(value)
  %8975 = fsub fast float %8966, %8962
  %8976 = fsub fast float %8967, %8963
  %8977 = fsub fast float %8968, %8964
  %8978 = fmul fast float %8974, %8975
  %8979 = fmul fast float %8974, %8976
  %8980 = fmul fast float %8974, %8977
  %8981 = fadd fast float %8978, %8962
  %8982 = fadd fast float %8979, %8963
  %8983 = fadd fast float %8980, %8964
  %8984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8985 = extractvalue %dx.types.CBufRet.f32 %8984, 0
  %8986 = extractvalue %dx.types.CBufRet.f32 %8984, 1
  %8987 = fadd fast float %8986, %8985
  %8988 = call float @dx.op.unary.f32(i32 7, float %8987)  ; Saturate(value)
  %8989 = extractvalue %dx.types.CBufRet.f32 %8984, 2
  %8990 = extractvalue %dx.types.CBufRet.f32 %8984, 3
  %8991 = fadd fast float %8990, %8989
  %8992 = call float @dx.op.unary.f32(i32 7, float %8991)  ; Saturate(value)
  %8993 = fmul fast float %8988, %8972
  %8994 = fmul fast float %8993, %8992
  br label %8995

; <label>:8995                                    ; preds = %8956, %8875, %8714, %8696, %8694
  %8996 = phi float [ %8723, %8714 ], [ %8878, %8875 ], [ %8960, %8956 ], [ 0.000000e+00, %8694 ], [ 0.000000e+00, %8696 ]
  %8997 = phi float [ %8757, %8714 ], [ %8912, %8875 ], [ %8994, %8956 ], [ 0.000000e+00, %8694 ], [ 0.000000e+00, %8696 ]
  %8998 = phi float [ %8744, %8714 ], [ %8899, %8875 ], [ %8981, %8956 ], [ 0.000000e+00, %8694 ], [ 0.000000e+00, %8696 ]
  %8999 = phi float [ %8745, %8714 ], [ %8900, %8875 ], [ %8982, %8956 ], [ 0.000000e+00, %8694 ], [ 0.000000e+00, %8696 ]
  %9000 = phi float [ %8746, %8714 ], [ %8901, %8875 ], [ %8983, %8956 ], [ 0.000000e+00, %8694 ], [ 0.000000e+00, %8696 ]
  %9001 = fmul fast float %8637, %8997
  %9002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9003 = extractvalue %dx.types.CBufRet.f32 %9002, 2
  %9004 = fsub fast float %8644, %9003
  %9005 = fcmp fast olt float %9001, -2.000000e+01
  %9006 = call float @dx.op.unary.f32(i32 21, float %9001)  ; Exp(value)
  %9007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9008 = extractvalue %dx.types.CBufRet.f32 %9007, 2
  %9009 = extractvalue %dx.types.CBufRet.f32 %9007, 3
  %9010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9011 = extractvalue %dx.types.CBufRet.f32 %9010, 2
  %9012 = fmul fast float %9009, %9004
  %9013 = call float @dx.op.unary.f32(i32 7, float %9012)  ; Saturate(value)
  %9014 = fsub fast float 1.000000e+00, %9013
  %9015 = fmul fast float %8629, 5.000000e-01
  %9016 = fadd fast float %9015, 5.000000e-01
  %9017 = call float @dx.op.unary.f32(i32 7, float %9016)  ; Saturate(value)
  %9018 = fsub fast float 1.000000e+00, %9017
  %9019 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9014)  ; FMax(a,b)
  %9020 = fdiv fast float %9018, %9019
  %9021 = fsub fast float %9004, %8586
  %9022 = call float @dx.op.unary.f32(i32 6, float %9021)  ; FAbs(value)
  %9023 = fmul fast float %9022, %9008
  %9024 = call float @dx.op.unary.f32(i32 7, float %9020)  ; Saturate(value)
  %9025 = fsub fast float 1.000000e+00, %9023
  %9026 = fmul fast float %9025, %9024
  %9027 = fadd fast float %9026, %9023
  %9028 = fmul fast float %9011, %9004
  %9029 = call float @dx.op.unary.f32(i32 7, float %9028)  ; Saturate(value)
  %9030 = fsub fast float 1.000000e+00, %9027
  %9031 = fmul fast float %9030, %9029
  %9032 = fadd fast float %9031, %9027
  %9033 = call float @dx.op.unary.f32(i32 7, float %9032)  ; Saturate(value)
  %9034 = fadd fast float %9006, -1.000000e+00
  %9035 = select i1 %9005, float -1.000000e+00, float %9034
  %9036 = fmul fast float %9033, %9035
  %9037 = fadd fast float %9036, 1.000000e+00
  %9038 = fsub fast float -0.000000e+00, %9036
  %9039 = fmul fast float %8998, %9038
  %9040 = fmul fast float %8999, %9038
  %9041 = fmul fast float %9000, %9038
  br label %9042

; <label>:9042                                    ; preds = %8995, %8595
  %9043 = phi float [ %8996, %8995 ], [ 0.000000e+00, %8595 ]
  %9044 = phi float [ %9037, %8995 ], [ 1.000000e+00, %8595 ]
  %9045 = phi float [ %9039, %8995 ], [ 0.000000e+00, %8595 ]
  %9046 = phi float [ %9040, %8995 ], [ 0.000000e+00, %8595 ]
  %9047 = phi float [ %9041, %8995 ], [ 0.000000e+00, %8595 ]
  %9048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9049 = extractvalue %dx.types.CBufRet.f32 %9048, 1
  %9050 = fsub fast float 1.000000e+00, %9044
  %9051 = fmul fast float %9050, %8630
  %9052 = fmul fast float %9051, %9049
  %9053 = fsub fast float %8630, %9052
  br i1 %8623, label %9054, label %9083, !dx.controlflow.hints !154

; <label>:9054                                    ; preds = %9042
  %9055 = fmul fast float %8631, %8620
  %9056 = fadd fast float %9055, %8621
  %9057 = call float @dx.op.unary.f32(i32 7, float %9056)  ; Saturate(value)
  %9058 = fmul fast float %8602, %9053
  %9059 = fsub fast float -0.000000e+00, %9058
  %9060 = fmul fast float %8603, %9053
  %9061 = fsub fast float -0.000000e+00, %9060
  %9062 = call float @dx.op.unary.f32(i32 21, float %9059)  ; Exp(value)
  %9063 = call float @dx.op.unary.f32(i32 21, float %9061)  ; Exp(value)
  %9064 = call float @dx.op.binary.f32(i32 35, float %8610, float %9062)  ; FMax(a,b)
  %9065 = call float @dx.op.binary.f32(i32 35, float %8610, float %9063)  ; FMax(a,b)
  %9066 = fsub fast float %9065, %9064
  %9067 = fmul fast float %9066, %9057
  %9068 = fadd fast float %9067, %9064
  %9069 = call float @dx.op.unary.f32(i32 7, float %9068)  ; Saturate(value)
  %9070 = fsub fast float %8607, %8612
  %9071 = fsub fast float %8608, %8613
  %9072 = fsub fast float %8609, %8614
  %9073 = fmul fast float %9057, %9070
  %9074 = fmul fast float %9057, %9071
  %9075 = fmul fast float %9057, %9072
  %9076 = fadd fast float %9073, %8612
  %9077 = fadd fast float %9074, %8613
  %9078 = fadd fast float %9075, %8614
  %9079 = fsub fast float 1.000000e+00, %9069
  %9080 = fmul fast float %9079, %9076
  %9081 = fmul fast float %9079, %9077
  %9082 = fmul fast float %9079, %9078
  br label %9142

; <label>:9083                                    ; preds = %9042
  %9084 = fmul fast float %9053, %8619
  %9085 = call float @dx.op.unary.f32(i32 7, float %9084)  ; Saturate(value)
  %9086 = fsub fast float 2.000000e+00, %9085
  %9087 = fmul fast float %9085, 9.921875e-01
  %9088 = fmul fast float %9087, %9086
  %9089 = fadd fast float %9088, 3.906250e-03
  %9090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %9089, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9091 = extractvalue %dx.types.ResRet.f32 %9090, 0
  %9092 = fsub fast float %9085, %9091
  %9093 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9092)  ; FMax(a,b)
  %9094 = fmul fast float %8605, %8586
  %9095 = call float @dx.op.unary.f32(i32 6, float %9094)  ; FAbs(value)
  %9096 = fcmp fast ogt float %9095, 0x3EB0C6F7A0000000
  br i1 %9096, label %9097, label %9103, !dx.controlflow.hints !155

; <label>:9097                                    ; preds = %9083
  %9098 = fmul fast float %9094, 0xBFF7154760000000
  %9099 = call float @dx.op.unary.f32(i32 21, float %9098)  ; Exp(value)
  %9100 = fsub fast float 1.000000e+00, %9099
  %9101 = fdiv fast float %9100, %9094
  %9102 = fmul fast float %9101, %8615
  br label %9103

; <label>:9103                                    ; preds = %9097, %9083
  %9104 = phi float [ %9102, %9097 ], [ %8615, %9083 ]
  %9105 = fadd fast float %9104, %8617
  %9106 = fmul fast float %9105, %9093
  %9107 = fmul fast float %8602, %9106
  %9108 = fsub fast float -0.000000e+00, %9107
  %9109 = fmul fast float %8603, %9106
  %9110 = fsub fast float -0.000000e+00, %9109
  %9111 = fmul fast float %8604, %9106
  %9112 = fsub fast float -0.000000e+00, %9111
  %9113 = call float @dx.op.unary.f32(i32 21, float %9108)  ; Exp(value)
  %9114 = call float @dx.op.unary.f32(i32 21, float %9110)  ; Exp(value)
  %9115 = call float @dx.op.unary.f32(i32 21, float %9112)  ; Exp(value)
  %9116 = fmul fast float %8631, %8631
  %9117 = fadd fast float %9116, 1.000000e+00
  %9118 = fmul fast float %9117, 0x3FAE8EC8A0000000
  %9119 = fmul fast float %9118, %8612
  %9120 = fmul fast float %9118, %8613
  %9121 = fmul fast float %9118, %8614
  %9122 = fmul fast float %8631, %8610
  %9123 = fsub fast float 1.000000e+00, %9122
  %9124 = fmul fast float %8610, %8610
  %9125 = fsub fast float 1.000000e+00, %9124
  %9126 = fmul fast float %9125, 0x3FB45F3060000000
  %9127 = fmul fast float %9123, %9123
  %9128 = fdiv fast float 1.000000e+00, %9127
  %9129 = fmul fast float %9126, %9128
  %9130 = fmul fast float %9129, %8607
  %9131 = fmul fast float %9129, %8608
  %9132 = fmul fast float %9129, %8609
  %9133 = fadd fast float %9130, %9119
  %9134 = fadd fast float %9131, %9120
  %9135 = fadd fast float %9132, %9121
  %9136 = fsub fast float 1.000000e+00, %9113
  %9137 = fsub fast float 1.000000e+00, %9114
  %9138 = fsub fast float 1.000000e+00, %9115
  %9139 = fmul fast float %9133, %9136
  %9140 = fmul fast float %9134, %9137
  %9141 = fmul fast float %9135, %9138
  br label %9142

; <label>:9142                                    ; preds = %9103, %9054
  %9143 = phi float [ %9080, %9054 ], [ %9139, %9103 ]
  %9144 = phi float [ %9081, %9054 ], [ %9140, %9103 ]
  %9145 = phi float [ %9082, %9054 ], [ %9141, %9103 ]
  %9146 = phi float [ %9069, %9054 ], [ %9113, %9103 ]
  %9147 = phi float [ %9069, %9054 ], [ %9114, %9103 ]
  %9148 = phi float [ %9069, %9054 ], [ %9115, %9103 ]
  br i1 %8639, label %9149, label %9347, !dx.controlflow.hints !156

; <label>:9149                                    ; preds = %9142
  %9150 = extractvalue %dx.types.CBufRet.f32 %9048, 0
  %9151 = fmul fast float %9150, %9050
  %9152 = fsub fast float %9045, %9143
  %9153 = fsub fast float %9046, %9144
  %9154 = fsub fast float %9047, %9145
  %9155 = fmul fast float %9151, %9152
  %9156 = fmul fast float %9151, %9153
  %9157 = fmul fast float %9151, %9154
  %9158 = fadd fast float %9155, %9143
  %9159 = fadd fast float %9156, %9144
  %9160 = fadd fast float %9157, %9145
  %9161 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9146)  ; FMax(a,b)
  %9162 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9147)  ; FMax(a,b)
  %9163 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9148)  ; FMax(a,b)
  %9164 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9044)  ; FMax(a,b)
  %9165 = call float @dx.op.binary.f32(i32 35, float %9043, float %9053)  ; FMax(a,b)
  %9166 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9165)  ; FMax(a,b)
  %9167 = fdiv fast float %9043, %9166
  %9168 = call float @dx.op.unary.f32(i32 7, float %9167)  ; Saturate(value)
  %9169 = fdiv fast float %9053, %9166
  %9170 = call float @dx.op.unary.f32(i32 7, float %9169)  ; Saturate(value)
  %9171 = fcmp fast une float %9164, 1.000000e+00
  br i1 %9171, label %9172, label %9185, !dx.controlflow.hints !157

; <label>:9172                                    ; preds = %9149
  %9173 = call float @dx.op.unary.f32(i32 23, float %9164)  ; Log(value)
  %9174 = fmul fast float %9173, 0x3FE62E4300000000
  %9175 = fmul fast float %9045, %9174
  %9176 = fsub fast float -0.000000e+00, %9175
  %9177 = fmul fast float %9046, %9174
  %9178 = fsub fast float -0.000000e+00, %9177
  %9179 = fmul fast float %9047, %9174
  %9180 = fsub fast float -0.000000e+00, %9179
  %9181 = fsub fast float 1.000000e+00, %9164
  %9182 = fdiv fast float %9176, %9181
  %9183 = fdiv fast float %9178, %9181
  %9184 = fdiv fast float %9180, %9181
  br label %9185

; <label>:9185                                    ; preds = %9172, %9149
  %9186 = phi float [ %9182, %9172 ], [ %9045, %9149 ]
  %9187 = phi float [ %9183, %9172 ], [ %9046, %9149 ]
  %9188 = phi float [ %9184, %9172 ], [ %9047, %9149 ]
  %9189 = phi float [ %9174, %9172 ], [ 0.000000e+00, %9149 ]
  %9190 = fcmp fast une float %9161, 1.000000e+00
  br i1 %9190, label %9191, label %9198, !dx.controlflow.hints !158

; <label>:9191                                    ; preds = %9185
  %9192 = call float @dx.op.unary.f32(i32 23, float %9161)  ; Log(value)
  %9193 = fmul fast float %9192, 0x3FE62E4300000000
  %9194 = fmul fast float %9158, %9193
  %9195 = fsub fast float -0.000000e+00, %9194
  %9196 = fsub fast float 1.000000e+00, %9161
  %9197 = fdiv fast float %9195, %9196
  br label %9198

; <label>:9198                                    ; preds = %9191, %9185
  %9199 = phi float [ %9197, %9191 ], [ %9158, %9185 ]
  %9200 = phi float [ %9193, %9191 ], [ 0.000000e+00, %9185 ]
  %9201 = fcmp fast une float %9162, 1.000000e+00
  br i1 %9201, label %9202, label %9209, !dx.controlflow.hints !158

; <label>:9202                                    ; preds = %9198
  %9203 = call float @dx.op.unary.f32(i32 23, float %9162)  ; Log(value)
  %9204 = fmul fast float %9203, 0x3FE62E4300000000
  %9205 = fmul fast float %9159, %9204
  %9206 = fsub fast float -0.000000e+00, %9205
  %9207 = fsub fast float 1.000000e+00, %9162
  %9208 = fdiv fast float %9206, %9207
  br label %9209

; <label>:9209                                    ; preds = %9202, %9198
  %9210 = phi float [ %9208, %9202 ], [ %9159, %9198 ]
  %9211 = phi float [ %9204, %9202 ], [ 0.000000e+00, %9198 ]
  %9212 = fcmp fast une float %9163, 1.000000e+00
  br i1 %9212, label %9213, label %9220, !dx.controlflow.hints !158

; <label>:9213                                    ; preds = %9209
  %9214 = call float @dx.op.unary.f32(i32 23, float %9163)  ; Log(value)
  %9215 = fmul fast float %9214, 0x3FE62E4300000000
  %9216 = fmul fast float %9160, %9215
  %9217 = fsub fast float -0.000000e+00, %9216
  %9218 = fsub fast float 1.000000e+00, %9163
  %9219 = fdiv fast float %9217, %9218
  br label %9220

; <label>:9220                                    ; preds = %9213, %9209
  %9221 = phi float [ %9219, %9213 ], [ %9160, %9209 ]
  %9222 = phi float [ %9215, %9213 ], [ 0.000000e+00, %9209 ]
  %9223 = fmul fast float %9186, %9170
  %9224 = fmul fast float %9187, %9170
  %9225 = fmul fast float %9188, %9170
  %9226 = fmul fast float %9189, %9170
  %9227 = fmul fast float %9199, %9168
  %9228 = fmul fast float %9210, %9168
  %9229 = fmul fast float %9221, %9168
  %9230 = fmul fast float %9200, %9168
  %9231 = fmul fast float %9211, %9168
  %9232 = fmul fast float %9222, %9168
  %9233 = fadd fast float %9227, %9223
  %9234 = fadd fast float %9228, %9224
  %9235 = fadd fast float %9229, %9225
  %9236 = fadd fast float %9230, %9226
  %9237 = fadd fast float %9231, %9226
  %9238 = fadd fast float %9232, %9226
  %9239 = fcmp fast une float %9236, 0.000000e+00
  br i1 %9239, label %9240, label %9247, !dx.controlflow.hints !159

; <label>:9240                                    ; preds = %9220
  %9241 = fmul fast float %9236, 0x3FF7154760000000
  %9242 = call float @dx.op.unary.f32(i32 21, float %9241)  ; Exp(value)
  %9243 = fsub fast float 1.000000e+00, %9242
  %9244 = fmul fast float %9233, %9243
  %9245 = fsub fast float -0.000000e+00, %9244
  %9246 = fdiv fast float %9245, %9236
  br label %9247

; <label>:9247                                    ; preds = %9240, %9220
  %9248 = phi float [ %9242, %9240 ], [ 1.000000e+00, %9220 ]
  %9249 = phi float [ %9246, %9240 ], [ %9233, %9220 ]
  %9250 = fcmp fast une float %9237, 0.000000e+00
  br i1 %9250, label %9251, label %9258, !dx.controlflow.hints !159

; <label>:9251                                    ; preds = %9247
  %9252 = fmul fast float %9237, 0x3FF7154760000000
  %9253 = call float @dx.op.unary.f32(i32 21, float %9252)  ; Exp(value)
  %9254 = fsub fast float 1.000000e+00, %9253
  %9255 = fmul fast float %9234, %9254
  %9256 = fsub fast float -0.000000e+00, %9255
  %9257 = fdiv fast float %9256, %9237
  br label %9258

; <label>:9258                                    ; preds = %9251, %9247
  %9259 = phi float [ %9253, %9251 ], [ 1.000000e+00, %9247 ]
  %9260 = phi float [ %9257, %9251 ], [ %9234, %9247 ]
  %9261 = fcmp fast une float %9238, 0.000000e+00
  br i1 %9261, label %9262, label %9269, !dx.controlflow.hints !159

; <label>:9262                                    ; preds = %9258
  %9263 = fmul fast float %9238, 0x3FF7154760000000
  %9264 = call float @dx.op.unary.f32(i32 21, float %9263)  ; Exp(value)
  %9265 = fsub fast float 1.000000e+00, %9264
  %9266 = fmul fast float %9235, %9265
  %9267 = fsub fast float -0.000000e+00, %9266
  %9268 = fdiv fast float %9267, %9238
  br label %9269

; <label>:9269                                    ; preds = %9262, %9258
  %9270 = phi float [ %9264, %9262 ], [ 1.000000e+00, %9258 ]
  %9271 = phi float [ %9268, %9262 ], [ %9235, %9258 ]
  %9272 = fcmp fast ogt float %9168, %9170
  br i1 %9272, label %9273, label %9293

; <label>:9273                                    ; preds = %9269
  %9274 = fsub fast float 1.000000e+00, %9170
  %9275 = fmul fast float %9186, %9274
  %9276 = fmul fast float %9187, %9274
  %9277 = fmul fast float %9188, %9274
  %9278 = fmul fast float %9189, %9274
  %9279 = fcmp fast une float %9278, 0.000000e+00
  br i1 %9279, label %9280, label %9331, !dx.controlflow.hints !160

; <label>:9280                                    ; preds = %9273
  %9281 = fmul fast float %9278, 0x3FF7154760000000
  %9282 = call float @dx.op.unary.f32(i32 21, float %9281)  ; Exp(value)
  %9283 = fsub fast float 1.000000e+00, %9282
  %9284 = fmul fast float %9275, %9283
  %9285 = fsub fast float -0.000000e+00, %9284
  %9286 = fmul fast float %9276, %9283
  %9287 = fsub fast float -0.000000e+00, %9286
  %9288 = fmul fast float %9277, %9283
  %9289 = fsub fast float -0.000000e+00, %9288
  %9290 = fdiv fast float %9285, %9278
  %9291 = fdiv fast float %9287, %9278
  %9292 = fdiv fast float %9289, %9278
  br label %9331

; <label>:9293                                    ; preds = %9269
  %9294 = fsub fast float 1.000000e+00, %9168
  %9295 = fmul fast float %9199, %9294
  %9296 = fmul fast float %9210, %9294
  %9297 = fmul fast float %9221, %9294
  %9298 = fmul fast float %9200, %9294
  %9299 = fmul fast float %9211, %9294
  %9300 = fmul fast float %9222, %9294
  %9301 = fcmp fast une float %9298, 0.000000e+00
  br i1 %9301, label %9302, label %9309, !dx.controlflow.hints !159

; <label>:9302                                    ; preds = %9293
  %9303 = fmul fast float %9298, 0x3FF7154760000000
  %9304 = call float @dx.op.unary.f32(i32 21, float %9303)  ; Exp(value)
  %9305 = fsub fast float 1.000000e+00, %9304
  %9306 = fmul fast float %9295, %9305
  %9307 = fsub fast float -0.000000e+00, %9306
  %9308 = fdiv fast float %9307, %9298
  br label %9309

; <label>:9309                                    ; preds = %9302, %9293
  %9310 = phi float [ %9308, %9302 ], [ %9295, %9293 ]
  %9311 = phi float [ %9304, %9302 ], [ 1.000000e+00, %9293 ]
  %9312 = fcmp fast une float %9299, 0.000000e+00
  br i1 %9312, label %9313, label %9320, !dx.controlflow.hints !159

; <label>:9313                                    ; preds = %9309
  %9314 = fmul fast float %9299, 0x3FF7154760000000
  %9315 = call float @dx.op.unary.f32(i32 21, float %9314)  ; Exp(value)
  %9316 = fsub fast float 1.000000e+00, %9315
  %9317 = fmul fast float %9296, %9316
  %9318 = fsub fast float -0.000000e+00, %9317
  %9319 = fdiv fast float %9318, %9299
  br label %9320

; <label>:9320                                    ; preds = %9313, %9309
  %9321 = phi float [ %9319, %9313 ], [ %9296, %9309 ]
  %9322 = phi float [ %9315, %9313 ], [ 1.000000e+00, %9309 ]
  %9323 = fcmp fast une float %9300, 0.000000e+00
  br i1 %9323, label %9324, label %9331, !dx.controlflow.hints !159

; <label>:9324                                    ; preds = %9320
  %9325 = fmul fast float %9300, 0x3FF7154760000000
  %9326 = call float @dx.op.unary.f32(i32 21, float %9325)  ; Exp(value)
  %9327 = fsub fast float 1.000000e+00, %9326
  %9328 = fmul fast float %9297, %9327
  %9329 = fsub fast float -0.000000e+00, %9328
  %9330 = fdiv fast float %9329, %9300
  br label %9331

; <label>:9331                                    ; preds = %9324, %9320, %9280, %9273
  %9332 = phi float [ %9330, %9324 ], [ %9292, %9280 ], [ %9277, %9273 ], [ %9297, %9320 ]
  %9333 = phi float [ %9321, %9324 ], [ %9291, %9280 ], [ %9276, %9273 ], [ %9321, %9320 ]
  %9334 = phi float [ %9310, %9324 ], [ %9290, %9280 ], [ %9275, %9273 ], [ %9310, %9320 ]
  %9335 = phi float [ %9326, %9324 ], [ %9282, %9280 ], [ 1.000000e+00, %9273 ], [ 1.000000e+00, %9320 ]
  %9336 = phi float [ %9322, %9324 ], [ %9282, %9280 ], [ 1.000000e+00, %9273 ], [ %9322, %9320 ]
  %9337 = phi float [ %9311, %9324 ], [ %9282, %9280 ], [ 1.000000e+00, %9273 ], [ %9311, %9320 ]
  %9338 = fmul fast float %9337, %9249
  %9339 = fmul fast float %9336, %9260
  %9340 = fmul fast float %9335, %9271
  %9341 = fadd fast float %9338, %9334
  %9342 = fadd fast float %9339, %9333
  %9343 = fadd fast float %9340, %9332
  %9344 = fmul fast float %9337, %9248
  %9345 = fmul fast float %9336, %9259
  %9346 = fmul fast float %9335, %9270
  br label %9347

; <label>:9347                                    ; preds = %9331, %9142
  %9348 = phi float [ %9346, %9331 ], [ %9148, %9142 ]
  %9349 = phi float [ %9345, %9331 ], [ %9147, %9142 ]
  %9350 = phi float [ %9344, %9331 ], [ %9146, %9142 ]
  %9351 = phi float [ %9343, %9331 ], [ %9145, %9142 ]
  %9352 = phi float [ %9342, %9331 ], [ %9144, %9142 ]
  %9353 = phi float [ %9341, %9331 ], [ %9143, %9142 ]
  %9354 = fmul fast float %9353, %8300
  %9355 = fmul fast float %9352, %8300
  %9356 = fmul fast float %9351, %8300
  %9357 = fmul fast float %9350, %8594
  %9358 = call float @dx.op.dot3.f32(i32 55, float %9350, float %9349, float %9348, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9359 = call float @dx.op.dot3.f32(i32 55, float %9354, float %9355, float %9356, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9360 = select i1 %213, float %9358, float %9350
  %9361 = select i1 %213, float %9358, float %9349
  %9362 = select i1 %213, float 1.000000e+00, float %9348
  %9363 = select i1 %213, float %9359, float %9354
  %9364 = select i1 %213, float 0.000000e+00, float %9355
  %9365 = select i1 %213, float 0.000000e+00, float %9356
  %9366 = fmul fast float %9360, %8588
  %9367 = fmul fast float %9361, %8589
  %9368 = fmul fast float %9362, %8590
  %9369 = fadd fast float %9366, %9363
  %9370 = fadd fast float %9367, %9364
  %9371 = fadd fast float %9365, %9368
  %9372 = fmul fast float %9360, %8591
  %9373 = fmul fast float %9361, %8592
  %9374 = fmul fast float %9362, %8593
  %9375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9376 = extractvalue %dx.types.CBufRet.i32 %9375, 0
  %9377 = icmp eq i32 %9376, 0
  br i1 %9377, label %9745, label %9378, !dx.controlflow.hints !161

; <label>:9378                                    ; preds = %9347
  %9379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %9380 = extractvalue %dx.types.CBufRet.f32 %9379, 2
  %9381 = extractvalue %dx.types.CBufRet.f32 %9379, 3
  %9382 = fmul fast float %9380, %97
  %9383 = fmul fast float %9381, %98
  %9384 = fmul fast float %9382, 2.000000e+00
  %9385 = fmul fast float %9383, 2.000000e+00
  %9386 = fsub fast float 1.000000e+00, %9384
  %9387 = fsub fast float 1.000000e+00, %9385
  %9388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9389 = extractvalue %dx.types.CBufRet.f32 %9388, 0
  %9390 = extractvalue %dx.types.CBufRet.f32 %9388, 1
  %9391 = extractvalue %dx.types.CBufRet.f32 %9388, 2
  %9392 = fmul fast float %9386, %9389
  %9393 = fmul fast float %9386, %9390
  %9394 = fmul fast float %9386, %9391
  %9395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9396 = extractvalue %dx.types.CBufRet.f32 %9395, 0
  %9397 = extractvalue %dx.types.CBufRet.f32 %9395, 1
  %9398 = extractvalue %dx.types.CBufRet.f32 %9395, 2
  %9399 = fmul fast float %9387, %9396
  %9400 = fmul fast float %9387, %9397
  %9401 = fmul fast float %9387, %9398
  %9402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9403 = extractvalue %dx.types.CBufRet.f32 %9402, 0
  %9404 = extractvalue %dx.types.CBufRet.f32 %9402, 1
  %9405 = extractvalue %dx.types.CBufRet.f32 %9402, 2
  %9406 = fadd fast float %9399, %9403
  %9407 = fadd fast float %9406, %9392
  %9408 = fadd fast float %9400, %9404
  %9409 = fadd fast float %9408, %9393
  %9410 = fadd fast float %9401, %9405
  %9411 = fadd fast float %9410, %9394
  %9412 = fmul fast float %9407, %8587
  %9413 = fmul fast float %9409, %8587
  %9414 = fmul fast float %9411, %8587
  %9415 = fmul fast float %9412, %9412
  %9416 = fmul fast float %9413, %9413
  %9417 = fadd fast float %9415, %9416
  %9418 = fmul fast float %9414, %9414
  %9419 = fadd fast float %9417, %9418
  %9420 = call float @dx.op.unary.f32(i32 24, float %9419)  ; Sqrt(value)
  %9421 = extractvalue %dx.types.CBufRet.f32 %8314, 0
  %9422 = fsub fast float %9420, %9421
  %9423 = extractvalue %dx.types.CBufRet.f32 %8314, 2
  %9424 = fmul fast float %9422, %9423
  %9425 = call float @dx.op.unary.f32(i32 7, float %9424)  ; Saturate(value)
  %9426 = fadd fast float %9425, -5.000000e-01
  %9427 = fmul fast float %9426, 2.000000e+00
  %9428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9429 = extractvalue %dx.types.CBufRet.f32 %9428, 2
  %9430 = call float @dx.op.binary.f32(i32 36, float %9429, float %9427)  ; FMin(a,b)
  %9431 = fsub fast float -0.000000e+00, %9429
  %9432 = fcmp fast ogt float %9430, %9431
  br i1 %9432, label %9433, label %9745, !dx.controlflow.hints !162

; <label>:9433                                    ; preds = %9378
  %9434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9435 = extractvalue %dx.types.CBufRet.f32 %9434, 3
  %9436 = fcmp fast ogt float %9435, 0.000000e+00
  br i1 %9436, label %9437, label %9512, !dx.controlflow.hints !163

; <label>:9437                                    ; preds = %9433
  %9438 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %9439 = extractvalue %dx.types.Dimensions %9438, 0
  %9440 = sitofp i32 %9439 to float
  %9441 = extractvalue %dx.types.Dimensions %9438, 1
  %9442 = sitofp i32 %9441 to float
  %9443 = fmul fast float %9382, %9440
  %9444 = fmul fast float %9383, %9442
  %9445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9446 = extractvalue %dx.types.CBufRet.f32 %9445, 1
  %9447 = fsub fast float -0.000000e+00, %9446
  %9448 = fptoui float %9447 to i32
  %9449 = fptoui float %9443 to i32
  %9450 = fptoui float %9444 to i32
  %9451 = and i32 %9448, 31
  %9452 = lshr i32 %9449, %9451
  %9453 = lshr i32 %9450, %9451
  %9454 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %9448, i32 %9452, i32 %9453, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9455 = extractvalue %dx.types.ResRet.f32 %9454, 0
  %9456 = fcmp fast olt float %9455, -1.000000e+00
  %9457 = fcmp fast ogt float %9455, -1.000000e+00
  %9458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9459 = extractvalue %dx.types.CBufRet.f32 %9458, 1
  %9460 = select i1 %9457, float %9459, float 1.000000e+00
  %9461 = fadd fast float %9455, 1.000000e+00
  %9462 = fmul fast float %9460, %9461
  %9463 = call float @dx.op.unary.f32(i32 6, float %9462)  ; FAbs(value)
  %9464 = extractvalue %dx.types.CBufRet.f32 %9458, 3
  %9465 = fcmp fast oge float %9463, %9464
  %9466 = select i1 %9465, float 0x4197782600000000, float %9463
  %9467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9468 = extractvalue %dx.types.CBufRet.f32 %9467, 0
  %9469 = extractvalue %dx.types.CBufRet.f32 %9467, 1
  %9470 = extractvalue %dx.types.CBufRet.f32 %9467, 2
  %9471 = select i1 %9456, float %9468, float %9389
  %9472 = select i1 %9456, float %9469, float %9390
  %9473 = select i1 %9456, float %9470, float %9391
  %9474 = fmul fast float %9471, %9386
  %9475 = fmul fast float %9472, %9386
  %9476 = fmul fast float %9473, %9386
  %9477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9478 = extractvalue %dx.types.CBufRet.f32 %9477, 0
  %9479 = extractvalue %dx.types.CBufRet.f32 %9477, 1
  %9480 = extractvalue %dx.types.CBufRet.f32 %9477, 2
  %9481 = select i1 %9456, float %9478, float %9396
  %9482 = select i1 %9456, float %9479, float %9397
  %9483 = select i1 %9456, float %9480, float %9398
  %9484 = fmul fast float %9481, %9387
  %9485 = fmul fast float %9482, %9387
  %9486 = fmul fast float %9483, %9387
  %9487 = fadd fast float %9484, %9474
  %9488 = fadd fast float %9485, %9475
  %9489 = fadd fast float %9486, %9476
  %9490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9491 = extractvalue %dx.types.CBufRet.f32 %9490, 0
  %9492 = extractvalue %dx.types.CBufRet.f32 %9490, 1
  %9493 = extractvalue %dx.types.CBufRet.f32 %9490, 2
  %9494 = select i1 %9456, float %9491, float %9403
  %9495 = select i1 %9456, float %9492, float %9404
  %9496 = select i1 %9456, float %9493, float %9405
  %9497 = fadd fast float %9487, %9494
  %9498 = fadd fast float %9488, %9495
  %9499 = fadd fast float %9489, %9496
  %9500 = fmul fast float %9497, %9466
  %9501 = fmul fast float %9498, %9466
  %9502 = fmul fast float %9499, %9466
  %9503 = fmul fast float %9500, %9500
  %9504 = fmul fast float %9501, %9501
  %9505 = fadd fast float %9503, %9504
  %9506 = fmul fast float %9502, %9502
  %9507 = fadd fast float %9505, %9506
  %9508 = call float @dx.op.unary.f32(i32 24, float %9507)  ; Sqrt(value)
  %9509 = fsub fast float %9508, %9421
  %9510 = fmul fast float %9509, %9423
  %9511 = call float @dx.op.unary.f32(i32 7, float %9510)  ; Saturate(value)
  br label %9512

; <label>:9512                                    ; preds = %9437, %9433
  %9513 = phi float [ %9511, %9437 ], [ 1.000000e+00, %9433 ]
  %9514 = fmul fast float %9430, 5.000000e-01
  %9515 = fadd fast float %9514, 5.000000e-01
  %9516 = call float @dx.op.unary.f32(i32 22, float %9515)  ; Frc(value)
  %9517 = call float @dx.op.unary.f32(i32 27, float %9516)  ; Round_ni(value)
  %9518 = call float @dx.op.unary.f32(i32 22, float %9516)  ; Frc(value)
  %9519 = fmul fast float %9518, 2.000000e+00
  %9520 = fadd fast float %9519, -1.000000e+00
  %9521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %9382, float %9383, float %9517, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9522 = extractvalue %dx.types.ResRet.f32 %9521, 0
  %9523 = extractvalue %dx.types.ResRet.f32 %9521, 1
  %9524 = extractvalue %dx.types.ResRet.f32 %9521, 2
  %9525 = extractvalue %dx.types.ResRet.f32 %9521, 3
  %9526 = fadd fast float %9522, -5.000000e-01
  %9527 = fadd fast float %9524, -5.000000e-01
  %9528 = fmul fast float %9526, 0xBFD5555560000000
  %9529 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9527, float %9528)  ; FMad(a,b,c)
  %9530 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9523, float 0.000000e+00)  ; FMad(a,b,c)
  %9531 = fadd fast float %9530, %9525
  %9532 = fmul fast float %9526, -7.500000e-01
  %9533 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9527, float %9532)  ; FMad(a,b,c)
  %9534 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9523, float 0.000000e+00)  ; FMad(a,b,c)
  %9535 = fadd fast float %9534, %9525
  %9536 = call float @dx.op.binary.f32(i32 35, float %9529, float -1.000000e+00)  ; FMax(a,b)
  %9537 = call float @dx.op.binary.f32(i32 35, float %9531, float -1.000000e+00)  ; FMax(a,b)
  %9538 = call float @dx.op.binary.f32(i32 35, float %9533, float -1.000000e+00)  ; FMax(a,b)
  %9539 = call float @dx.op.binary.f32(i32 35, float %9535, float -1.000000e+00)  ; FMax(a,b)
  %9540 = call float @dx.op.binary.f32(i32 36, float %9536, float 1.000000e+00)  ; FMin(a,b)
  %9541 = call float @dx.op.binary.f32(i32 36, float %9537, float 1.000000e+00)  ; FMin(a,b)
  %9542 = call float @dx.op.binary.f32(i32 36, float %9538, float 1.000000e+00)  ; FMin(a,b)
  %9543 = call float @dx.op.binary.f32(i32 36, float %9539, float 1.000000e+00)  ; FMin(a,b)
  %9544 = fcmp fast olt float %9540, 0x3FEFFF8020000000
  br i1 %9544, label %9545, label %9660, !dx.controlflow.hints !164

; <label>:9545                                    ; preds = %9512
  %9546 = extractvalue %dx.types.CBufRet.f32 %9428, 3
  %9547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9548 = extractvalue %dx.types.CBufRet.f32 %9547, 0
  %9549 = extractvalue %dx.types.CBufRet.f32 %9547, 1
  %9550 = extractvalue %dx.types.CBufRet.f32 %9547, 2
  %9551 = extractvalue %dx.types.CBufRet.f32 %9547, 3
  %9552 = fsub fast float %9548, %9540
  %9553 = fsub fast float %9549, %9541
  %9554 = fsub fast float %9550, %9542
  %9555 = fsub fast float %9551, %9543
  %9556 = fmul fast float %9552, %9546
  %9557 = fmul fast float %9553, %9546
  %9558 = fmul fast float %9554, %9546
  %9559 = fmul fast float %9555, %9546
  %9560 = fadd fast float %9556, %9540
  %9561 = fadd fast float %9557, %9541
  %9562 = fsub fast float -0.000000e+00, %9561
  %9563 = fadd fast float %9558, %9542
  %9564 = fadd fast float %9559, %9543
  %9565 = fmul fast float %9560, %9560
  %9566 = fsub fast float %9561, %9565
  %9567 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9566)  ; FMax(a,b)
  %9568 = fdiv fast float 1.000000e+00, %9567
  %9569 = fmul fast float %9561, %9560
  %9570 = fsub fast float %9563, %9569
  %9571 = fsub fast float %9520, %9560
  %9572 = fmul fast float %9520, %9520
  %9573 = fsub fast float %9572, %9561
  %9574 = fmul fast float %9571, %9568
  %9575 = fmul fast float %9574, %9570
  %9576 = fsub fast float %9573, %9575
  %9577 = fmul fast float %9561, %9561
  %9578 = fsub fast float %9564, %9577
  %9579 = fmul fast float %9570, %9570
  %9580 = fmul fast float %9579, %9568
  %9581 = fsub fast float %9578, %9580
  %9582 = fdiv fast float %9576, %9581
  %9583 = fmul fast float %9570, %9582
  %9584 = fsub fast float %9571, %9583
  %9585 = fmul fast float %9584, %9568
  %9586 = fmul fast float %9585, %9560
  %9587 = fsub fast float 1.000000e+00, %9586
  %9588 = fmul fast float %9561, %9582
  %9589 = fsub fast float %9587, %9588
  %9590 = fmul fast float %9585, %9585
  %9591 = fmul fast float %9582, 4.000000e+00
  %9592 = fmul fast float %9591, %9589
  %9593 = fsub fast float %9590, %9592
  %9594 = call float @dx.op.unary.f32(i32 24, float %9593)  ; Sqrt(value)
  %9595 = fcmp fast oge float %9585, 0.000000e+00
  %9596 = fsub fast float -0.000000e+00, %9594
  %9597 = select i1 %9595, float %9596, float %9594
  %9598 = fsub fast float %9597, %9585
  %9599 = fdiv fast float %9598, %9582
  %9600 = fdiv fast float %9589, %9598
  %9601 = fmul fast float %9599, 5.000000e-01
  %9602 = fmul fast float %9600, 2.000000e+00
  %9603 = select i1 %9595, float %9601, float %9602
  %9604 = select i1 %9595, float %9602, float %9601
  %9605 = call float @dx.op.binary.f32(i32 35, float %9603, float %9604)  ; FMax(a,b)
  %9606 = call float @dx.op.binary.f32(i32 36, float %9603, float %9604)  ; FMin(a,b)
  %9607 = fcmp fast ogt float %9520, %9606
  br i1 %9607, label %9608, label %9618

; <label>:9608                                    ; preds = %9545
  %9609 = fsub fast float %9520, %9606
  %9610 = fsub fast float %9605, %9606
  %9611 = fmul fast float %9609, %9610
  %9612 = fmul fast float %9605, %9520
  %9613 = fadd fast float %9605, %9520
  %9614 = fmul fast float %9613, %9560
  %9615 = fadd fast float %9612, %9561
  %9616 = fsub fast float %9615, %9614
  %9617 = fdiv fast float %9616, %9611
  br label %9618

; <label>:9618                                    ; preds = %9608, %9545
  %9619 = phi float [ %9617, %9608 ], [ 0.000000e+00, %9545 ]
  %9620 = fcmp fast ogt float %9520, %9605
  %9621 = fsub fast float %9520, %9605
  br i1 %9620, label %9622, label %9632

; <label>:9622                                    ; preds = %9618
  %9623 = fsub fast float %9605, %9606
  %9624 = fmul fast float %9623, %9621
  %9625 = fmul fast float %9606, %9520
  %9626 = fadd fast float %9606, %9520
  %9627 = fmul fast float %9626, %9560
  %9628 = fsub fast float %9562, %9625
  %9629 = fadd fast float %9628, %9627
  %9630 = fdiv fast float %9629, %9624
  %9631 = fadd fast float %9630, %9619
  br label %9632

; <label>:9632                                    ; preds = %9622, %9618
  %9633 = phi float [ %9631, %9622 ], [ %9619, %9618 ]
  %9634 = fsub fast float %9520, %9606
  %9635 = fmul fast float %9634, %9621
  %9636 = fmul fast float %9606, %9605
  %9637 = fadd fast float %9606, %9605
  %9638 = fmul fast float %9637, %9560
  %9639 = fadd fast float %9636, %9561
  %9640 = fsub fast float %9639, %9638
  %9641 = fdiv fast float %9640, %9635
  %9642 = call float @dx.op.unary.f32(i32 7, float %9633)  ; Saturate(value)
  %9643 = fcmp fast oeq float %8315, 0.000000e+00
  %9644 = extractvalue %dx.types.CBufRet.f32 %9428, 0
  %9645 = fcmp fast oeq float %9644, 0.000000e+00
  %9646 = or i1 %9643, %9645
  %9647 = fmul fast float %9644, 2.000000e+00
  %9648 = fadd fast float %9429, %9430
  %9649 = fdiv fast float %9648, %9647
  %9650 = call float @dx.op.unary.f32(i32 7, float %9649)  ; Saturate(value)
  %9651 = fmul fast float %9650, 2.000000e+00
  %9652 = fsub fast float 3.000000e+00, %9651
  %9653 = fmul fast float %9650, %9650
  %9654 = fmul fast float %9653, %9652
  %9655 = select i1 %9646, float 1.000000e+00, float %9654
  %9656 = fmul fast float %9641, %8315
  %9657 = fadd fast float %9642, %9656
  %9658 = call float @dx.op.unary.f32(i32 7, float %9657)  ; Saturate(value)
  %9659 = fmul fast float %9655, %9658
  br label %9660

; <label>:9660                                    ; preds = %9632, %9512
  %9661 = phi float [ %9659, %9632 ], [ 0.000000e+00, %9512 ]
  %9662 = fsub fast float 1.000000e+00, %9661
  %9663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %9382, float %9383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9664 = extractvalue %dx.types.ResRet.f32 %9663, 0
  %9665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9666 = extractvalue %dx.types.CBufRet.i32 %9665, 2
  %9667 = icmp eq i32 %9666, 0
  br i1 %9667, label %9673, label %9668

; <label>:9668                                    ; preds = %9660
  %9669 = call float @dx.op.unary.f32(i32 7, float %9661)  ; Saturate(value)
  %9670 = fadd fast float %9664, -1.000000e+00
  %9671 = fmul fast float %9669, %9670
  %9672 = fadd fast float %9671, 1.000000e+00
  br label %9673

; <label>:9673                                    ; preds = %9668, %9660
  %9674 = phi float [ %9672, %9668 ], [ %9662, %9660 ]
  br i1 %9436, label %9675, label %9693

; <label>:9675                                    ; preds = %9673
  %9676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9677 = extractvalue %dx.types.CBufRet.f32 %9676, 1
  %9678 = fsub fast float %9513, %9677
  %9679 = call float @dx.op.unary.f32(i32 7, float %9678)  ; Saturate(value)
  %9680 = fsub fast float %9513, %9435
  %9681 = call float @dx.op.unary.f32(i32 7, float %9680)  ; Saturate(value)
  %9682 = fsub fast float %9679, %9681
  %9683 = fsub fast float %9515, %9681
  %9684 = fdiv fast float %9683, %9682
  %9685 = call float @dx.op.unary.f32(i32 7, float %9684)  ; Saturate(value)
  %9686 = fmul fast float %9685, 2.000000e+00
  %9687 = fsub fast float 3.000000e+00, %9686
  %9688 = fsub fast float %9664, %9674
  %9689 = fmul fast float %9685, %9685
  %9690 = fmul fast float %9689, %9688
  %9691 = fmul fast float %9690, %9687
  %9692 = fadd fast float %9691, %9674
  br label %9693

; <label>:9693                                    ; preds = %9675, %9673
  %9694 = phi float [ %9692, %9675 ], [ %9674, %9673 ]
  %9695 = call float @dx.op.binary.f32(i32 35, float %9664, float %9694)  ; FMax(a,b)
  %9696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9697 = extractvalue %dx.types.CBufRet.i32 %9696, 2
  %9698 = and i32 %9697, 1
  %9699 = icmp eq i32 %9698, 0
  %9700 = fcmp fast une float %9695, 1.000000e+00
  %9701 = and i1 %9700, %9699
  br i1 %9701, label %9702, label %9721

; <label>:9702                                    ; preds = %9693
  %9703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %9382, float %9383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9704 = extractvalue %dx.types.ResRet.f32 %9703, 0
  %9705 = extractvalue %dx.types.ResRet.f32 %9703, 1
  %9706 = extractvalue %dx.types.ResRet.f32 %9703, 2
  %9707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9708 = extractvalue %dx.types.CBufRet.f32 %9707, 1
  %9709 = fmul fast float %9708, %9704
  %9710 = fmul fast float %9708, %9705
  %9711 = fmul fast float %9708, %9706
  %9712 = fcmp fast ogt float %9664, 0x3FEFFF2E40000000
  %9713 = fsub fast float 1.000000e+00, %9695
  %9714 = fsub fast float 1.000000e+00, %9664
  %9715 = fdiv fast float %9713, %9714
  %9716 = call float @dx.op.unary.f32(i32 7, float %9715)  ; Saturate(value)
  %9717 = select i1 %9712, float 0.000000e+00, float %9716
  %9718 = fmul fast float %9709, %9717
  %9719 = fmul fast float %9710, %9717
  %9720 = fmul fast float %9711, %9717
  br label %9721

; <label>:9721                                    ; preds = %9702, %9693
  %9722 = phi float [ 0.000000e+00, %9693 ], [ %9718, %9702 ]
  %9723 = phi float [ 0.000000e+00, %9693 ], [ %9719, %9702 ]
  %9724 = phi float [ 0.000000e+00, %9693 ], [ %9720, %9702 ]
  %9725 = fmul fast float %9722, %8300
  %9726 = fmul fast float %9723, %8300
  %9727 = fmul fast float %9724, %8300
  %9728 = fmul fast float %9695, %9357
  %9729 = call float @dx.op.dot3.f32(i32 55, float %9695, float %9695, float %9695, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9730 = call float @dx.op.dot3.f32(i32 55, float %9725, float %9726, float %9727, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9731 = select i1 %213, float %9729, float %9695
  %9732 = select i1 %213, float 1.000000e+00, float %9695
  %9733 = select i1 %213, float %9730, float %9725
  %9734 = select i1 %213, float 0.000000e+00, float %9726
  %9735 = select i1 %213, float 0.000000e+00, float %9727
  %9736 = fmul fast float %9731, %9369
  %9737 = fmul fast float %9731, %9370
  %9738 = fmul fast float %9732, %9371
  %9739 = fadd fast float %9736, %9733
  %9740 = fadd fast float %9737, %9734
  %9741 = fadd fast float %9735, %9738
  %9742 = fmul fast float %9731, %9372
  %9743 = fmul fast float %9731, %9373
  %9744 = fmul fast float %9732, %9374
  br label %9745

; <label>:9745                                    ; preds = %9721, %9378, %9347, %8583
  %9746 = phi float [ %8588, %8583 ], [ %9369, %9347 ], [ %9739, %9721 ], [ %9369, %9378 ]
  %9747 = phi float [ %8589, %8583 ], [ %9370, %9347 ], [ %9740, %9721 ], [ %9370, %9378 ]
  %9748 = phi float [ %8590, %8583 ], [ %9371, %9347 ], [ %9741, %9721 ], [ %9371, %9378 ]
  %9749 = phi float [ %8591, %8583 ], [ %9372, %9347 ], [ %9742, %9721 ], [ %9372, %9378 ]
  %9750 = phi float [ %8592, %8583 ], [ %9373, %9347 ], [ %9743, %9721 ], [ %9373, %9378 ]
  %9751 = phi float [ %8593, %8583 ], [ %9374, %9347 ], [ %9744, %9721 ], [ %9374, %9378 ]
  %9752 = phi float [ %8594, %8583 ], [ %9357, %9347 ], [ %9728, %9721 ], [ %9357, %9378 ]
  %9753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %9754 = extractvalue %dx.types.CBufRet.f32 %9753, 2
  %9755 = extractvalue %dx.types.CBufRet.f32 %9753, 3
  %9756 = fmul fast float %9754, %97
  %9757 = fmul fast float %9755, %98
  %9758 = call float @dx.op.unary.f32(i32 7, float %9756)  ; Saturate(value)
  %9759 = call float @dx.op.unary.f32(i32 7, float %9757)  ; Saturate(value)
  %9760 = select i1 %8325, i32 2, i32 0
  %9761 = or i32 %9760, 1
  %9762 = uitofp i32 %9761 to float
  %9763 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9758, float %9759, float %9762, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9764 = extractvalue %dx.types.ResRet.f32 %9763, 0
  %9765 = extractvalue %dx.types.ResRet.f32 %9763, 1
  %9766 = extractvalue %dx.types.ResRet.f32 %9763, 2
  %9767 = extractvalue %dx.types.ResRet.f32 %9763, 3
  %9768 = add nuw nsw i32 %9760, 2
  %9769 = uitofp i32 %9768 to float
  %9770 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9758, float %9759, float %9769, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9771 = extractvalue %dx.types.ResRet.f32 %9770, 0
  %9772 = extractvalue %dx.types.ResRet.f32 %9770, 1
  %9773 = extractvalue %dx.types.ResRet.f32 %9770, 2
  %9774 = extractvalue %dx.types.ResRet.f32 %9770, 3
  %9775 = call float @dx.op.binary.f32(i32 35, float %9765, float %9766)  ; FMax(a,b)
  %9776 = call float @dx.op.binary.f32(i32 35, float %9764, float %9775)  ; FMax(a,b)
  %9777 = call float @dx.op.binary.f32(i32 35, float %9776, float %9767)  ; FMax(a,b)
  %9778 = call float @dx.op.binary.f32(i32 36, float %9772, float %9773)  ; FMin(a,b)
  %9779 = call float @dx.op.binary.f32(i32 36, float %9771, float %9778)  ; FMin(a,b)
  %9780 = call float @dx.op.binary.f32(i32 36, float %9779, float %9774)  ; FMin(a,b)
  %9781 = fmul fast float %9777, 2.550000e+02
  %9782 = fadd fast float %9781, 0x3F70101020000000
  %9783 = fptoui float %9782 to i32
  %9784 = fmul fast float %9780, 2.550000e+02
  %9785 = fadd fast float %9784, 0x3F70101020000000
  %9786 = fptoui float %9785 to i32
  %9787 = icmp ult i32 %9783, %9786
  br i1 %9787, label %9788, label %9957

; <label>:9788                                    ; preds = %9745
  %9789 = fcmp fast ogt float %84, 9.843750e-01
  %9790 = fadd fast float %8587, -4.000000e+00
  %9791 = select i1 %9789, float -4.000000e+00, float %9790
  %9792 = call float @dx.op.binary.f32(i32 35, float %9791, float 0.000000e+00)  ; FMax(a,b)
  %9793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9794 = extractvalue %dx.types.CBufRet.f32 %9793, 0
  %9795 = fadd fast float %9794, %9792
  %9796 = extractvalue %dx.types.CBufRet.f32 %9793, 2
  %9797 = fmul fast float %9795, %9796
  %9798 = call float @dx.op.unary.f32(i32 23, float %9797)  ; Log(value)
  %9799 = extractvalue %dx.types.CBufRet.f32 %9793, 3
  %9800 = fmul fast float %9799, %9798
  %9801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9802 = extractvalue %dx.types.CBufRet.f32 %9801, 2
  %9803 = fmul fast float %9800, %9802
  %9804 = call float @dx.op.unary.f32(i32 7, float %9803)  ; Saturate(value)
  %9805 = uitofp i32 %9783 to float
  %9806 = uitofp i32 %9786 to float
  %9807 = fadd fast float %9805, 5.000000e-01
  %9808 = fadd fast float %9806, 5.000000e-01
  %9809 = fmul fast float %9802, %9807
  %9810 = fmul fast float %9802, %9808
  %9811 = fadd fast float %9809, 0x3F0FFB4800000000
  %9812 = fadd fast float %9810, 0xBF0FFB4800000000
  %9813 = call float @dx.op.binary.f32(i32 35, float %9804, float %9811)  ; FMax(a,b)
  %9814 = call float @dx.op.binary.f32(i32 36, float %9813, float %9812)  ; FMin(a,b)
  %9815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9816 = extractvalue %dx.types.CBufRet.f32 %9815, 1
  %9817 = extractvalue %dx.types.CBufRet.f32 %9815, 2
  %9818 = extractvalue %dx.types.CBufRet.f32 %9815, 0
  %9819 = select i1 %8325, float %9818, float 0.000000e+00
  %9820 = fmul fast float %9816, %9814
  %9821 = fadd fast float %9819, %9820
  %9822 = fadd fast float %9819, %9817
  %9823 = fsub fast float %9816, %9817
  %9824 = fadd fast float %9823, %9819
  %9825 = call float @dx.op.binary.f32(i32 35, float %9821, float %9822)  ; FMax(a,b)
  %9826 = call float @dx.op.binary.f32(i32 36, float %9825, float %9824)  ; FMin(a,b)
  %9827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %9758, float %9759, float %9826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9828 = extractvalue %dx.types.ResRet.f32 %9827, 0
  %9829 = extractvalue %dx.types.ResRet.f32 %9827, 1
  %9830 = extractvalue %dx.types.ResRet.f32 %9827, 2
  %9831 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9832 = extractvalue %dx.types.CBufRet.i32 %9831, 0
  %9833 = extractvalue %dx.types.CBufRet.i32 %9831, 1
  %9834 = uitofp i32 %9832 to float
  %9835 = uitofp i32 %9833 to float
  %9836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9837 = extractvalue %dx.types.CBufRet.f32 %9836, 0
  %9838 = extractvalue %dx.types.CBufRet.f32 %9836, 1
  %9839 = fmul fast float %9834, %9758
  %9840 = fmul fast float %9835, %9759
  %9841 = fadd fast float %9839, -5.000000e-01
  %9842 = fadd fast float %9840, -5.000000e-01
  %9843 = call float @dx.op.unary.f32(i32 22, float %9841)  ; Frc(value)
  %9844 = call float @dx.op.unary.f32(i32 22, float %9842)  ; Frc(value)
  %9845 = fmul fast float %9843, %9843
  %9846 = fmul fast float %9845, %9843
  %9847 = fsub fast float 3.000000e+00, %9843
  %9848 = fmul fast float %9845, %9847
  %9849 = fmul fast float %9843, 3.000000e+00
  %9850 = fmul fast float %9846, 3.000000e+00
  %9851 = fmul fast float %9845, 6.000000e+00
  %9852 = fsub fast float %9850, %9851
  %9853 = fadd fast float %9852, 4.000000e+00
  %9854 = fmul fast float %9853, 0x3FC5555560000000
  %9855 = fmul fast float %9846, -3.000000e+00
  %9856 = fadd fast float %9845, %9843
  %9857 = fmul fast float %9856, 3.000000e+00
  %9858 = fadd fast float %9855, 1.000000e+00
  %9859 = fadd fast float %9858, %9857
  %9860 = fmul fast float %9846, 0x3FC5555560000000
  %9861 = fmul fast float %9844, %9844
  %9862 = fmul fast float %9861, %9844
  %9863 = fsub fast float 3.000000e+00, %9844
  %9864 = fmul fast float %9861, %9863
  %9865 = fmul fast float %9844, 3.000000e+00
  %9866 = fmul fast float %9862, 3.000000e+00
  %9867 = fmul fast float %9861, 6.000000e+00
  %9868 = fsub fast float %9866, %9867
  %9869 = fadd fast float %9868, 4.000000e+00
  %9870 = fmul fast float %9869, 0x3FC5555560000000
  %9871 = fmul fast float %9862, -3.000000e+00
  %9872 = fadd fast float %9861, %9844
  %9873 = fmul fast float %9872, 3.000000e+00
  %9874 = fadd fast float %9871, 1.000000e+00
  %9875 = fadd fast float %9874, %9873
  %9876 = fmul fast float %9862, 0x3FC5555560000000
  %9877 = fadd fast float %9843, 1.000000e+00
  %9878 = fsub fast float 1.000000e+00, %9849
  %9879 = fadd fast float %9878, %9848
  %9880 = fadd fast float %9879, %9853
  %9881 = fmul fast float %9880, 0x3FC5555560000000
  %9882 = fdiv fast float %9854, %9881
  %9883 = fsub fast float %9877, %9882
  %9884 = fsub fast float 1.000000e+00, %9843
  %9885 = fadd fast float %9859, %9846
  %9886 = fmul fast float %9885, 0x3FC5555560000000
  %9887 = fdiv fast float %9860, %9886
  %9888 = fadd fast float %9884, %9887
  %9889 = fadd fast float %9844, 1.000000e+00
  %9890 = fsub fast float 1.000000e+00, %9865
  %9891 = fadd fast float %9890, %9864
  %9892 = fadd fast float %9891, %9869
  %9893 = fmul fast float %9892, 0x3FC5555560000000
  %9894 = fdiv fast float %9870, %9893
  %9895 = fsub fast float %9889, %9894
  %9896 = fsub fast float 1.000000e+00, %9844
  %9897 = fadd fast float %9875, %9862
  %9898 = fmul fast float %9897, 0x3FC5555560000000
  %9899 = fdiv fast float %9876, %9898
  %9900 = fadd fast float %9899, %9896
  %9901 = fmul fast float %9883, %9837
  %9902 = fsub fast float %9758, %9901
  %9903 = fmul fast float %9888, %9837
  %9904 = fadd fast float %9903, %9758
  %9905 = fmul fast float %9900, %9838
  %9906 = fadd fast float %9905, %9759
  %9907 = fmul fast float %9895, %9838
  %9908 = fsub fast float %9759, %9907
  %9909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9902, float %9908, float %9826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9910 = extractvalue %dx.types.ResRet.f32 %9909, 0
  %9911 = extractvalue %dx.types.ResRet.f32 %9909, 1
  %9912 = extractvalue %dx.types.ResRet.f32 %9909, 2
  %9913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9904, float %9908, float %9826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9914 = extractvalue %dx.types.ResRet.f32 %9913, 0
  %9915 = extractvalue %dx.types.ResRet.f32 %9913, 1
  %9916 = extractvalue %dx.types.ResRet.f32 %9913, 2
  %9917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9902, float %9906, float %9826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9918 = extractvalue %dx.types.ResRet.f32 %9917, 0
  %9919 = extractvalue %dx.types.ResRet.f32 %9917, 1
  %9920 = extractvalue %dx.types.ResRet.f32 %9917, 2
  %9921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9904, float %9906, float %9826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9922 = extractvalue %dx.types.ResRet.f32 %9921, 0
  %9923 = extractvalue %dx.types.ResRet.f32 %9921, 1
  %9924 = extractvalue %dx.types.ResRet.f32 %9921, 2
  %9925 = fsub fast float %9918, %9910
  %9926 = fsub fast float %9919, %9911
  %9927 = fsub fast float %9920, %9912
  %9928 = fmul fast float %9925, %9898
  %9929 = fmul fast float %9926, %9898
  %9930 = fmul fast float %9927, %9898
  %9931 = fadd fast float %9928, %9910
  %9932 = fadd fast float %9929, %9911
  %9933 = fadd fast float %9930, %9912
  %9934 = fsub fast float %9922, %9914
  %9935 = fsub fast float %9923, %9915
  %9936 = fsub fast float %9924, %9916
  %9937 = fmul fast float %9934, %9898
  %9938 = fmul fast float %9935, %9898
  %9939 = fmul fast float %9936, %9898
  %9940 = fsub fast float %9914, %9931
  %9941 = fadd fast float %9940, %9937
  %9942 = fsub fast float %9915, %9932
  %9943 = fadd fast float %9942, %9938
  %9944 = fsub fast float %9916, %9933
  %9945 = fadd fast float %9944, %9939
  %9946 = fmul fast float %9941, %9886
  %9947 = fmul fast float %9943, %9886
  %9948 = fmul fast float %9945, %9886
  %9949 = fadd fast float %9946, %9931
  %9950 = fadd fast float %9947, %9932
  %9951 = fadd fast float %9948, %9933
  %9952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9953 = extractvalue %dx.types.CBufRet.f32 %9952, 1
  %9954 = fmul fast float %9949, %9953
  %9955 = fmul fast float %9950, %9953
  %9956 = fmul fast float %9951, %9953
  br label %9957

; <label>:9957                                    ; preds = %9788, %9745
  %9958 = phi float [ %9828, %9788 ], [ 1.000000e+00, %9745 ]
  %9959 = phi float [ %9829, %9788 ], [ 1.000000e+00, %9745 ]
  %9960 = phi float [ %9830, %9788 ], [ 1.000000e+00, %9745 ]
  %9961 = phi float [ %9954, %9788 ], [ 0.000000e+00, %9745 ]
  %9962 = phi float [ %9955, %9788 ], [ 0.000000e+00, %9745 ]
  %9963 = phi float [ %9956, %9788 ], [ 0.000000e+00, %9745 ]
  %9964 = fmul fast float %9961, %8300
  %9965 = fmul fast float %9962, %8300
  %9966 = fmul fast float %9963, %8300
  %9967 = fmul fast float %9958, %9752
  %9968 = call float @dx.op.dot3.f32(i32 55, float %9958, float %9959, float %9960, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9969 = call float @dx.op.dot3.f32(i32 55, float %9964, float %9965, float %9966, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9970 = select i1 %213, float %9968, float %9958
  %9971 = select i1 %213, float %9968, float %9959
  %9972 = select i1 %213, float 1.000000e+00, float %9960
  %9973 = select i1 %213, float %9969, float %9964
  %9974 = select i1 %213, float 0.000000e+00, float %9965
  %9975 = select i1 %213, float 0.000000e+00, float %9966
  %9976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9977 = extractvalue %dx.types.CBufRet.i32 %9976, 3
  %9978 = and i32 %9977, 3
  %9979 = icmp ne i32 %9978, 0
  %9980 = and i32 %9977, 4
  %9981 = icmp ne i32 %9980, 0
  %9982 = and i1 %9979, %9981
  %9983 = and i1 %213, %9982
  br i1 %9983, label %9984, label %9990

; <label>:9984                                    ; preds = %9957
  %9985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9986 = extractvalue %dx.types.CBufRet.f32 %9985, 1
  %9987 = fadd fast float %9967, -1.000000e+00
  %9988 = fmul fast float %9986, %9987
  %9989 = fadd fast float %9988, 1.000000e+00
  br label %9990

; <label>:9990                                    ; preds = %9984, %9957
  %9991 = phi float [ %9989, %9984 ], [ %9967, %9957 ]
  %9992 = fadd fast float %9749, %9746
  %9993 = fmul fast float %9970, %9992
  %9994 = fadd fast float %9993, %9973
  %9995 = fadd fast float %9750, %9747
  %9996 = fmul fast float %9971, %9995
  %9997 = fadd fast float %9996, %9974
  %9998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9999 = extractvalue %dx.types.CBufRet.f32 %9998, 0
  br i1 %213, label %10000, label %10024

; <label>:10000                                   ; preds = %9990
  %10001 = fadd fast float %9994, %9997
  %10002 = fmul fast float %9999, %10001
  %10003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10004 = extractvalue %dx.types.CBufRet.f32 %10003, 3
  %10005 = extractvalue %dx.types.CBufRet.f32 %8307, 1
  %10006 = fsub fast float %8312, %8303
  %10007 = fsub fast float %10006, %8306
  %10008 = fadd fast float %10007, %8313
  %10009 = fsub fast float %10008, %10005
  %10010 = extractvalue %dx.types.CBufRet.f32 %8307, 2
  %10011 = fmul fast float %10009, %10010
  %10012 = call float @dx.op.unary.f32(i32 7, float %10011)  ; Saturate(value)
  %10013 = fsub fast float %10012, %10004
  %10014 = fmul fast float %10013, %9991
  %10015 = fadd fast float %10014, %10004
  %10016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10017 = extractvalue %dx.types.CBufRet.f32 %10016, 0
  %10018 = fsub fast float %10015, %10017
  %10019 = fmul fast float %10018, 1.000000e+01
  %10020 = call float @dx.op.unary.f32(i32 7, float %10019)  ; Saturate(value)
  %10021 = fmul fast float %10020, %8299
  %10022 = fadd fast float %10021, %8300
  %10023 = fmul fast float %10022, %10015
  br label %10048

; <label>:10024                                   ; preds = %9990
  %10025 = fadd fast float %9751, %9748
  %10026 = fmul fast float %9972, %10025
  %10027 = fadd fast float %10026, %9975
  %10028 = fmul fast float %9999, %9994
  %10029 = fmul fast float %9999, %9997
  %10030 = fmul fast float %9999, %10027
  %10031 = call float @dx.op.binary.f32(i32 35, float %10028, float %10029)  ; FMax(a,b)
  %10032 = call float @dx.op.binary.f32(i32 35, float %10031, float %10030)  ; FMax(a,b)
  %10033 = call float @dx.op.binary.f32(i32 35, float %10032, float %8300)  ; FMax(a,b)
  %10034 = fcmp fast ugt float %10033, 0x3F10000000000000
  br i1 %10034, label %10036, label %10035

; <label>:10035                                   ; preds = %10024
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10036

; <label>:10036                                   ; preds = %10035, %10024
  %10037 = add i32 %48, 356
  %10038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %10037, i32 undef)  ; BufferLoad(srv,index,wot)
  %10039 = extractvalue %dx.types.ResRet.i32 %10038, 0
  %10040 = and i32 %10039, 32
  %10041 = icmp eq i32 %10040, 0
  br i1 %10041, label %10048, label %10042

; <label>:10042                                   ; preds = %10036
  %10043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10044 = extractvalue %dx.types.CBufRet.f32 %10043, 0
  %10045 = fmul fast float %10044, 0x3FE99999A0000000
  %10046 = fadd fast float %10044, %10028
  %10047 = fadd fast float %10045, %10030
  br label %10048

; <label>:10048                                   ; preds = %10042, %10036, %10000
  %10049 = phi float [ %10002, %10000 ], [ %10046, %10042 ], [ %10028, %10036 ]
  %10050 = phi float [ %10023, %10000 ], [ %10029, %10042 ], [ %10029, %10036 ]
  %10051 = phi float [ %10022, %10000 ], [ %10047, %10042 ], [ %10030, %10036 ]
  %10052 = phi float [ %10022, %10000 ], [ %8300, %10042 ], [ %8300, %10036 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10053 = call float @dx.op.binary.f32(i32 36, float %10049, float 3.225500e+04)  ; FMin(a,b)
  %10054 = call float @dx.op.binary.f32(i32 36, float %10050, float 3.225500e+04)  ; FMin(a,b)
  %10055 = call float @dx.op.binary.f32(i32 36, float %10051, float 3.225500e+04)  ; FMin(a,b)
  %10056 = call float @dx.op.binary.f32(i32 36, float %10052, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10053)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10054)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10055)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %10056)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!52 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
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

