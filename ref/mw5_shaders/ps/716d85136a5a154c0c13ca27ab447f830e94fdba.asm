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
; shader hash: 0c941beca554daae1acdabdf3d27bd60
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
  %407 = add i32 %48, 504
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
  %782 = add i32 %48, 456
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
  %1122 = add i32 %48, 472
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
  %1163 = add i32 %48, 488
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
  %1575 = add i32 %48, 460
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
  %1915 = add i32 %48, 476
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
  %1956 = add i32 %48, 492
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
  %2632 = add i32 %48, 464
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
  %2972 = add i32 %48, 480
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
  %3013 = add i32 %48, 496
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
  %3689 = add i32 %48, 468
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
  %4029 = add i32 %48, 484
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
  %4070 = add i32 %48, 500
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
  %4419 = bitcast i32 %4418 to float
  %4420 = fcmp fast oge float %4419, 0.000000e+00
  %4421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4422 = extractvalue %dx.types.CBufRet.f32 %4421, 0
  %4423 = select i1 %4420, float %4419, float %4422
  %4424 = call float @dx.op.dot2.f32(i32 54, float %4397, float %4398, float %4397, float %4398)  ; Dot2(ax,ay,bx,by)
  %4425 = fmul fast float %4424, 0x3FE3333340000000
  %4426 = fsub fast float 1.000000e+00, %4425
  %4427 = call float @dx.op.dot3.f32(i32 55, float %4397, float %4398, float %4426, float %4397, float %4398, float %4426)  ; Dot3(ax,ay,az,bx,by,bz)
  %4428 = call float @dx.op.unary.f32(i32 25, float %4427)  ; Rsqrt(value)
  %4429 = fmul fast float %4428, %4397
  %4430 = fmul fast float %4428, %4398
  %4431 = fmul fast float %4426, %4428
  %4432 = fmul fast float %4431, %104
  %4433 = fmul fast float %4431, %105
  %4434 = fmul fast float %4431, %106
  %4435 = fmul fast float %4429, %69
  %4436 = fmul fast float %4429, %70
  %4437 = fmul fast float %4429, %71
  %4438 = fadd fast float %4432, %4435
  %4439 = fadd fast float %4433, %4436
  %4440 = fadd fast float %4434, %4437
  %4441 = fmul fast float %116, %4430
  %4442 = fmul fast float %117, %4430
  %4443 = fmul fast float %118, %4430
  %4444 = fadd fast float %4438, %4441
  %4445 = fadd fast float %4439, %4442
  %4446 = fadd fast float %4440, %4443
  %4447 = call float @dx.op.dot3.f32(i32 55, float %4444, float %4445, float %4446, float %4444, float %4445, float %4446)  ; Dot3(ax,ay,az,bx,by,bz)
  %4448 = call float @dx.op.unary.f32(i32 25, float %4447)  ; Rsqrt(value)
  %4449 = fmul fast float %4444, %4448
  %4450 = fmul fast float %4445, %4448
  %4451 = fmul fast float %4446, %4448
  %4452 = and i32 %50, 1
  %4453 = icmp eq i32 %4452, 0
  br i1 %4453, label %4454, label %5046

; <label>:4454                                    ; preds = %4396
  %4455 = call float @dx.op.unary.f32(i32 83, float %152)  ; DerivCoarseX(value)
  %4456 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %4457 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4458 = call float @dx.op.unary.f32(i32 84, float %152)  ; DerivCoarseY(value)
  %4459 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %4460 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4461 = fadd fast float %4455, %152
  %4462 = fadd fast float %4456, %153
  %4463 = fadd fast float %4457, %154
  %4464 = fadd fast float %4458, %152
  %4465 = fadd fast float %4459, %153
  %4466 = fadd fast float %4460, %154
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 0
  %4469 = extractvalue %dx.types.CBufRet.f32 %4467, 1
  %4470 = extractvalue %dx.types.CBufRet.f32 %4467, 2
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 2
  %4473 = extractvalue %dx.types.CBufRet.f32 %4471, 3
  %4474 = fmul fast float %4468, %97
  %4475 = fmul fast float %4474, %4472
  %4476 = fmul fast float %4469, %98
  %4477 = fmul fast float %4476, %4473
  %4478 = fptoui float %4475 to i32
  %4479 = fptoui float %4477 to i32
  %4480 = fadd fast float %4468, -1.000000e+00
  %4481 = fadd fast float %4469, -1.000000e+00
  %4482 = fptoui float %4480 to i32
  %4483 = fptoui float %4481 to i32
  %4484 = call i32 @dx.op.binary.i32(i32 40, i32 %4478, i32 %4482)  ; UMin(a,b)
  %4485 = call i32 @dx.op.binary.i32(i32 40, i32 %4479, i32 %4483)  ; UMin(a,b)
  %4486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4487 = extractvalue %dx.types.CBufRet.f32 %4486, 2
  %4488 = extractvalue %dx.types.CBufRet.f32 %4486, 3
  %4489 = fmul fast float %4487, %85
  %4490 = fsub fast float %4489, %4488
  %4491 = fadd fast float %4470, -1.000000e+00
  %4492 = call float @dx.op.binary.f32(i32 36, float %4490, float %4491)  ; FMin(a,b)
  %4493 = fptoui float %4492 to i32
  %4494 = fptoui float %4468 to i32
  %4495 = fptoui float %4469 to i32
  %4496 = mul i32 %4493, %4495
  %4497 = add i32 %4496, %4485
  %4498 = mul i32 %4497, %4494
  %4499 = add i32 %4498, %4484
  %4500 = shl i32 %4499, 2
  %4501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4500, i32 undef)  ; BufferLoad(srv,index,wot)
  %4502 = extractvalue %dx.types.ResRet.i32 %4501, 0
  %4503 = and i32 %4502, 1023
  %4504 = lshr i32 %4502, 10
  %4505 = icmp eq i32 %4503, 0
  br i1 %4505, label %5009, label %4506

; <label>:4506                                    ; preds = %4454
  %4507 = and i32 %4502, 1023
  br label %4508

; <label>:4508                                    ; preds = %4640, %4506
  %4509 = phi i32 [ %4590, %4640 ], [ 0, %4506 ]
  %4510 = phi float [ %4641, %4640 ], [ 0.000000e+00, %4506 ]
  %4511 = phi float [ %4642, %4640 ], [ %4423, %4506 ]
  %4512 = phi float [ %4643, %4640 ], [ %4415, %4506 ]
  %4513 = phi float [ %4644, %4640 ], [ %4408, %4506 ]
  %4514 = phi float [ %4645, %4640 ], [ %4409, %4506 ]
  %4515 = phi float [ %4646, %4640 ], [ %4410, %4506 ]
  %4516 = phi float [ %4647, %4640 ], [ 0.000000e+00, %4506 ]
  %4517 = phi float [ %4648, %4640 ], [ 0.000000e+00, %4506 ]
  %4518 = phi float [ %4649, %4640 ], [ %4405, %4506 ]
  %4519 = phi float [ %4650, %4640 ], [ %4406, %4506 ]
  %4520 = phi float [ %4651, %4640 ], [ %4407, %4506 ]
  %4521 = phi float [ %4652, %4640 ], [ %4402, %4506 ]
  %4522 = phi float [ %4653, %4640 ], [ %4403, %4506 ]
  %4523 = phi float [ %4654, %4640 ], [ %4404, %4506 ]
  %4524 = phi float [ %4655, %4640 ], [ %4449, %4506 ]
  %4525 = phi float [ %4656, %4640 ], [ %4450, %4506 ]
  %4526 = phi float [ %4657, %4640 ], [ %4451, %4506 ]
  %4527 = phi float [ %4658, %4640 ], [ %4413, %4506 ]
  %4528 = phi float [ %4659, %4640 ], [ %4412, %4506 ]
  %4529 = phi float [ %4660, %4640 ], [ 0.000000e+00, %4506 ]
  %4530 = phi float [ %4661, %4640 ], [ %4411, %4506 ]
  %4531 = phi float [ %4662, %4640 ], [ %4399, %4506 ]
  %4532 = phi float [ %4663, %4640 ], [ %4400, %4506 ]
  %4533 = phi float [ %4664, %4640 ], [ %4401, %4506 ]
  %4534 = add nuw nsw i32 %4509, %4504
  %4535 = shl i32 %4534, 2
  %4536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4535, i32 undef)  ; BufferLoad(srv,index,wot)
  %4537 = extractvalue %dx.types.ResRet.i32 %4536, 0
  %4538 = shl i32 %4537, 8
  %4539 = or i32 %4538, 48
  %4540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = extractvalue %dx.types.ResRet.f32 %4540, 1
  %4543 = extractvalue %dx.types.ResRet.f32 %4540, 2
  %4544 = extractvalue %dx.types.ResRet.f32 %4540, 3
  %4545 = or i32 %4538, 64
  %4546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4545, i32 undef)  ; BufferLoad(srv,index,wot)
  %4547 = extractvalue %dx.types.ResRet.i32 %4546, 0
  %4548 = extractvalue %dx.types.ResRet.i32 %4546, 1
  %4549 = or i32 %4538, 80
  %4550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4549, i32 undef)  ; BufferLoad(srv,index,wot)
  %4551 = extractvalue %dx.types.ResRet.f32 %4550, 2
  %4552 = extractvalue %dx.types.ResRet.f32 %4550, 3
  %4553 = or i32 %4538, 96
  %4554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.f32 %4554, 0
  %4556 = extractvalue %dx.types.ResRet.f32 %4554, 1
  %4557 = extractvalue %dx.types.ResRet.f32 %4554, 2
  %4558 = extractvalue %dx.types.ResRet.f32 %4554, 3
  %4559 = or i32 %4538, 112
  %4560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4559, i32 undef)  ; BufferLoad(srv,index,wot)
  %4561 = extractvalue %dx.types.ResRet.f32 %4560, 2
  %4562 = or i32 %4538, 128
  %4563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4566 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4567 = extractvalue %dx.types.ResRet.f32 %4563, 3
  %4568 = or i32 %4538, 144
  %4569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4568, i32 undef)  ; BufferLoad(srv,index,wot)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4573 = extractvalue %dx.types.ResRet.f32 %4569, 3
  %4574 = or i32 %4538, 160
  %4575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4574, i32 undef)  ; BufferLoad(srv,index,wot)
  %4576 = extractvalue %dx.types.ResRet.f32 %4575, 0
  %4577 = extractvalue %dx.types.ResRet.f32 %4575, 1
  %4578 = extractvalue %dx.types.ResRet.f32 %4575, 2
  %4579 = extractvalue %dx.types.ResRet.f32 %4575, 3
  %4580 = or i32 %4538, 192
  %4581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4580, i32 undef)  ; BufferLoad(srv,index,wot)
  %4582 = extractvalue %dx.types.ResRet.i32 %4581, 0
  %4583 = or i32 %4538, 208
  %4584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = or i32 %4538, 248
  %4587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = extractvalue %dx.types.ResRet.f32 %4587, 1
  %4590 = add nuw nsw i32 %4509, 1
  %4591 = bitcast float %4544 to i32
  %4592 = and i32 %4591, 512
  %4593 = icmp eq i32 %4592, 0
  %4594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4538, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.f32 %4594, 0
  %4596 = extractvalue %dx.types.ResRet.f32 %4594, 1
  %4597 = extractvalue %dx.types.ResRet.f32 %4594, 2
  %4598 = extractvalue %dx.types.ResRet.f32 %4594, 3
  %4599 = call float @dx.op.dot4.f32(i32 56, float %4595, float %4596, float %4597, float %4598, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4600 = or i32 %4538, 16
  %4601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.ResRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.ResRet.f32 %4601, 2
  %4605 = extractvalue %dx.types.ResRet.f32 %4601, 3
  %4606 = call float @dx.op.dot4.f32(i32 56, float %4602, float %4603, float %4604, float %4605, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4607 = or i32 %4538, 32
  %4608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4607, i32 undef)  ; BufferLoad(srv,index,wot)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.ResRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.ResRet.f32 %4608, 2
  %4612 = extractvalue %dx.types.ResRet.f32 %4608, 3
  %4613 = call float @dx.op.dot4.f32(i32 56, float %4609, float %4610, float %4611, float %4612, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4614 = call float @dx.op.unary.f32(i32 27, float %4599)  ; Round_ni(value)
  %4615 = call float @dx.op.unary.f32(i32 6, float %4614)  ; FAbs(value)
  %4616 = call float @dx.op.unary.f32(i32 27, float %4606)  ; Round_ni(value)
  %4617 = call float @dx.op.unary.f32(i32 6, float %4616)  ; FAbs(value)
  %4618 = call float @dx.op.unary.f32(i32 6, float %4613)  ; FAbs(value)
  %4619 = call float @dx.op.unary.f32(i32 27, float %4618)  ; Round_ni(value)
  %4620 = fadd fast float %4617, %4615
  %4621 = fadd fast float %4620, %4619
  %4622 = fcmp fast oeq float %4621, 0.000000e+00
  %4623 = call float @dx.op.dot4.f32(i32 56, float %4595, float %4596, float %4597, float %4598, float %4461, float %4462, float %4463, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4624 = call float @dx.op.dot4.f32(i32 56, float %4602, float %4603, float %4604, float %4605, float %4461, float %4462, float %4463, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4625 = call float @dx.op.dot4.f32(i32 56, float %4595, float %4596, float %4597, float %4598, float %4464, float %4465, float %4466, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4626 = call float @dx.op.dot4.f32(i32 56, float %4602, float %4603, float %4604, float %4605, float %4464, float %4465, float %4466, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4627 = fsub fast float %4623, %4599
  %4628 = fsub fast float %4625, %4599
  %4629 = fsub fast float %4624, %4606
  %4630 = fsub fast float %4626, %4606
  %4631 = call float @dx.op.dot3.f32(i32 55, float %4541, float %4542, float %4543, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 2
  %4634 = fadd fast float %4633, %4631
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4637 = fcmp fast ogt float %4635, %4636
  %4638 = and i1 %4622, %4637
  %4639 = and i1 %4593, %4638
  br i1 %4639, label %4666, label %4640

; <label>:4640                                    ; preds = %4995, %4747, %4666, %4508
  %4641 = phi float [ %4510, %4666 ], [ %4750, %4747 ], [ %4750, %4995 ], [ %4510, %4508 ]
  %4642 = phi float [ %4511, %4666 ], [ %4511, %4747 ], [ %4971, %4995 ], [ %4511, %4508 ]
  %4643 = phi float [ %4512, %4666 ], [ %4512, %4747 ], [ %4969, %4995 ], [ %4512, %4508 ]
  %4644 = phi float [ %4513, %4666 ], [ %4513, %4747 ], [ %4947, %4995 ], [ %4513, %4508 ]
  %4645 = phi float [ %4514, %4666 ], [ %4514, %4747 ], [ %4948, %4995 ], [ %4514, %4508 ]
  %4646 = phi float [ %4515, %4666 ], [ %4515, %4747 ], [ %4949, %4995 ], [ %4515, %4508 ]
  %4647 = phi float [ %4516, %4666 ], [ %4516, %4747 ], [ %4874, %4995 ], [ %4516, %4508 ]
  %4648 = phi float [ %4517, %4666 ], [ %4517, %4747 ], [ %4872, %4995 ], [ %4517, %4508 ]
  %4649 = phi float [ %4518, %4666 ], [ %4518, %4747 ], [ %4917, %4995 ], [ %4518, %4508 ]
  %4650 = phi float [ %4519, %4666 ], [ %4519, %4747 ], [ %4918, %4995 ], [ %4519, %4508 ]
  %4651 = phi float [ %4520, %4666 ], [ %4520, %4747 ], [ %4919, %4995 ], [ %4520, %4508 ]
  %4652 = phi float [ %4521, %4666 ], [ %4521, %4747 ], [ %5005, %4995 ], [ %4521, %4508 ]
  %4653 = phi float [ %4522, %4666 ], [ %4522, %4747 ], [ %5006, %4995 ], [ %4522, %4508 ]
  %4654 = phi float [ %4523, %4666 ], [ %4523, %4747 ], [ %5007, %4995 ], [ %4523, %4508 ]
  %4655 = phi float [ %4524, %4666 ], [ %4524, %4747 ], [ %4853, %4995 ], [ %4524, %4508 ]
  %4656 = phi float [ %4525, %4666 ], [ %4525, %4747 ], [ %4854, %4995 ], [ %4525, %4508 ]
  %4657 = phi float [ %4526, %4666 ], [ %4526, %4747 ], [ %4855, %4995 ], [ %4526, %4508 ]
  %4658 = phi float [ %4527, %4666 ], [ %4527, %4747 ], [ %4927, %4995 ], [ %4527, %4508 ]
  %4659 = phi float [ %4528, %4666 ], [ %4528, %4747 ], [ %4924, %4995 ], [ %4528, %4508 ]
  %4660 = phi float [ %4529, %4666 ], [ %4529, %4747 ], [ %4921, %4995 ], [ %4529, %4508 ]
  %4661 = phi float [ %4530, %4666 ], [ %4530, %4747 ], [ %4870, %4995 ], [ %4530, %4508 ]
  %4662 = phi float [ %4531, %4666 ], [ %4531, %4747 ], [ %4865, %4995 ], [ %4531, %4508 ]
  %4663 = phi float [ %4532, %4666 ], [ %4532, %4747 ], [ %4866, %4995 ], [ %4532, %4508 ]
  %4664 = phi float [ %4533, %4666 ], [ %4533, %4747 ], [ %4867, %4995 ], [ %4533, %4508 ]
  %4665 = icmp eq i32 %4590, %4507
  br i1 %4665, label %5008, label %4508

; <label>:4666                                    ; preds = %4508
  %4667 = extractvalue %dx.types.ResRet.f32 %4560, 3
  %4668 = extractvalue %dx.types.ResRet.f32 %4560, 1
  %4669 = extractvalue %dx.types.ResRet.f32 %4560, 0
  %4670 = extractvalue %dx.types.ResRet.f32 %4550, 1
  %4671 = extractvalue %dx.types.ResRet.f32 %4550, 0
  %4672 = extractvalue %dx.types.ResRet.i32 %4546, 3
  %4673 = extractvalue %dx.types.ResRet.i32 %4546, 2
  %4674 = add i32 %4672, 0
  %4675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4674, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4677 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4675, %dx.types.Handle %4676, float %4599, float %4606, float undef, float undef, i32 0, i32 0, i32 undef, float %4627, float %4629, float undef, float %4628, float %4630, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4678 = extractvalue %dx.types.ResRet.f32 %4677, 0
  %4679 = fmul fast float %4678, %4671
  %4680 = fadd fast float %4679, %4670
  %4681 = call float @dx.op.unary.f32(i32 7, float %4680)  ; Saturate(value)
  %4682 = fmul fast float %4599, %4555
  %4683 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4606, float %4682)  ; FMad(a,b,c)
  %4684 = fadd fast float %4683, %4669
  %4685 = fmul fast float %4599, %4557
  %4686 = call float @dx.op.tertiary.f32(i32 46, float %4558, float %4606, float %4685)  ; FMad(a,b,c)
  %4687 = fadd fast float %4686, %4668
  %4688 = fmul fast float %4627, %4555
  %4689 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4629, float %4688)  ; FMad(a,b,c)
  %4690 = fmul fast float %4627, %4557
  %4691 = call float @dx.op.tertiary.f32(i32 46, float %4558, float %4629, float %4690)  ; FMad(a,b,c)
  %4692 = fmul fast float %4628, %4555
  %4693 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4630, float %4692)  ; FMad(a,b,c)
  %4694 = fmul fast float %4628, %4557
  %4695 = call float @dx.op.tertiary.f32(i32 46, float %4558, float %4630, float %4694)  ; FMad(a,b,c)
  %4696 = add i32 %4673, 0
  %4697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4696, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4698 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4697, %dx.types.Handle %4676, float %4684, float %4687, float undef, float undef, i32 0, i32 0, i32 undef, float %4689, float %4691, float undef, float %4693, float %4695, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4699 = extractvalue %dx.types.ResRet.f32 %4698, 0
  %4700 = and i32 %4591, 1024
  %4701 = icmp ne i32 %4700, 0
  %4702 = fcmp fast ogt float %4699, 0x3FE0101020000000
  %4703 = uitofp i1 %4702 to float
  %4704 = select i1 %4701, float %4703, float %4699
  %4705 = and i32 %4591, 8192
  %4706 = icmp ne i32 %4705, 0
  %4707 = select i1 %4706, float %4667, float 1.000000e+00
  %4708 = fmul fast float %4599, 2.000000e+00
  %4709 = fadd fast float %4708, -1.000000e+00
  %4710 = call float @dx.op.unary.f32(i32 6, float %4709)  ; FAbs(value)
  %4711 = fmul fast float %4710, %4588
  %4712 = fsub fast float %4711, %4588
  %4713 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4714 = fmul fast float %4606, 2.000000e+00
  %4715 = fadd fast float %4714, -1.000000e+00
  %4716 = call float @dx.op.unary.f32(i32 6, float %4715)  ; FAbs(value)
  %4717 = fmul fast float %4716, %4589
  %4718 = fsub fast float %4717, %4589
  %4719 = call float @dx.op.unary.f32(i32 7, float %4718)  ; Saturate(value)
  %4720 = fmul fast float %4618, %4551
  %4721 = fsub fast float %4720, %4551
  %4722 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4723 = fmul fast float %4681, %4707
  %4724 = fmul fast float %4723, %4678
  %4725 = fmul fast float %4724, %4713
  %4726 = fmul fast float %4725, %4704
  %4727 = fmul fast float %4726, %4719
  %4728 = fmul fast float %4727, %4722
  %4729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4730 = extractvalue %dx.types.CBufRet.f32 %4729, 1
  %4731 = extractvalue %dx.types.CBufRet.f32 %4729, 0
  %4732 = fsub fast float %4635, %4731
  %4733 = fmul fast float %4732, %4730
  %4734 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4735 = fmul fast float %4728, %4552
  %4736 = fadd fast float %4728, %4552
  %4737 = fmul fast float %4736, %4561
  %4738 = fsub fast float %4737, %4561
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = and i32 %4591, 128
  %4741 = icmp ne i32 %4740, 0
  %4742 = select i1 %4741, float %4739, float %4735
  %4743 = fmul fast float %4742, %4734
  %4744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.f32 %4744, 0
  %4746 = fcmp fast ugt float %4743, %4745
  br i1 %4746, label %4747, label %4640

; <label>:4747                                    ; preds = %4666
  %4748 = select i1 %4706, float %4743, float 0.000000e+00
  %4749 = fadd fast float %4748, %4510
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  br i1 %4706, label %4640, label %4751

; <label>:4751                                    ; preds = %4747
  %4752 = and i32 %4591, 4
  %4753 = and i32 %4591, 8
  %4754 = add i32 %4547, 0
  %4755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4754, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4757 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4755, %dx.types.Handle %4756, float %4684, float %4687, float undef, float undef, i32 0, i32 0, i32 undef, float %4689, float %4691, float undef, float %4693, float %4695, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4758 = extractvalue %dx.types.ResRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.ResRet.f32 %4757, 1
  %4760 = extractvalue %dx.types.ResRet.f32 %4757, 2
  %4761 = extractvalue %dx.types.ResRet.f32 %4757, 3
  %4762 = bitcast float %4573 to i32
  %4763 = and i32 %4762, 255
  %4764 = uitofp i32 %4763 to float
  %4765 = lshr i32 %4762, 8
  %4766 = and i32 %4765, 255
  %4767 = uitofp i32 %4766 to float
  %4768 = fmul fast float %4761, %4764
  %4769 = fadd fast float %4768, %4767
  %4770 = fmul fast float %4769, 0x3F70101000000000
  %4771 = add i32 %4548, 0
  %4772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4771, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4773 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4772, %dx.types.Handle %4756, float %4684, float %4687, float undef, float undef, i32 0, i32 0, i32 undef, float %4689, float %4691, float undef, float %4693, float %4695, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4774 = extractvalue %dx.types.ResRet.f32 %4773, 0
  %4775 = extractvalue %dx.types.ResRet.f32 %4773, 1
  %4776 = extractvalue %dx.types.ResRet.f32 %4773, 2
  %4777 = extractvalue %dx.types.ResRet.f32 %4773, 3
  %4778 = bitcast float %4567 to i32
  %4779 = and i32 %4778, 255
  %4780 = uitofp i32 %4779 to float
  %4781 = lshr i32 %4778, 8
  %4782 = and i32 %4781, 255
  %4783 = uitofp i32 %4782 to float
  %4784 = lshr i32 %4778, 16
  %4785 = and i32 %4784, 255
  %4786 = uitofp i32 %4785 to float
  %4787 = fmul fast float %4786, 0x3F70101000000000
  %4788 = fmul fast float %4774, %4780
  %4789 = fadd fast float %4788, %4783
  %4790 = fmul fast float %4789, 0x3F70101000000000
  %4791 = fadd fast float %4775, -5.000000e-01
  %4792 = fadd fast float %4777, -5.000000e-01
  %4793 = fmul fast float %4791, %4787
  %4794 = fmul fast float %4792, %4787
  %4795 = fadd fast float %4793, 5.000000e-01
  %4796 = fadd fast float %4794, 5.000000e-01
  %4797 = fmul fast float %4758, %4576
  %4798 = fmul fast float %4759, %4577
  %4799 = fmul fast float %4760, %4578
  %4800 = fmul fast float %4795, 2.000000e+00
  %4801 = fadd fast float %4800, -1.000000e+00
  %4802 = fmul fast float %4796, 2.000000e+00
  %4803 = fadd fast float %4802, -1.000000e+00
  %4804 = fadd fast float %4801, %4803
  %4805 = fmul fast float %4804, 5.000000e-01
  %4806 = fsub fast float %4801, %4803
  %4807 = fmul fast float %4806, 5.000000e-01
  %4808 = call float @dx.op.unary.f32(i32 6, float %4805)  ; FAbs(value)
  %4809 = fsub fast float 1.000000e+00, %4808
  %4810 = call float @dx.op.unary.f32(i32 6, float %4807)  ; FAbs(value)
  %4811 = fsub fast float %4809, %4810
  %4812 = call float @dx.op.dot3.f32(i32 55, float %4805, float %4807, float %4811, float %4805, float %4807, float %4811)  ; Dot3(ax,ay,az,bx,by,bz)
  %4813 = call float @dx.op.unary.f32(i32 25, float %4812)  ; Rsqrt(value)
  %4814 = fmul fast float %4805, %4813
  %4815 = fmul fast float %4807, %4813
  %4816 = fmul fast float %4813, %4811
  %4817 = fmul fast float %4816, %4541
  %4818 = fmul fast float %4816, %4542
  %4819 = fmul fast float %4816, %4543
  %4820 = fmul fast float %4814, %4564
  %4821 = fmul fast float %4814, %4565
  %4822 = fmul fast float %4814, %4566
  %4823 = fadd fast float %4820, %4817
  %4824 = fadd fast float %4821, %4818
  %4825 = fadd fast float %4822, %4819
  %4826 = fmul fast float %4815, %4570
  %4827 = fmul fast float %4815, %4571
  %4828 = fmul fast float %4815, %4572
  %4829 = fadd fast float %4823, %4826
  %4830 = fadd fast float %4824, %4827
  %4831 = fadd fast float %4825, %4828
  %4832 = call float @dx.op.dot3.f32(i32 55, float %4829, float %4830, float %4831, float %4829, float %4830, float %4831)  ; Dot3(ax,ay,az,bx,by,bz)
  %4833 = call float @dx.op.unary.f32(i32 25, float %4832)  ; Rsqrt(value)
  %4834 = fmul fast float %4829, %4833
  %4835 = fmul fast float %4830, %4833
  %4836 = fmul fast float %4831, %4833
  %4837 = icmp ne i32 %4753, 0
  %4838 = select i1 %4837, float 1.000000e+00, float 0.000000e+00
  %4839 = fmul fast float %4743, %4838
  %4840 = and i32 %4591, 1
  %4841 = icmp eq i32 %4840, 0
  br i1 %4841, label %4842, label %4846

; <label>:4842                                    ; preds = %4751
  %4843 = fsub fast float %4834, %4524
  %4844 = fsub fast float %4835, %4525
  %4845 = fsub fast float %4836, %4526
  br label %4846

; <label>:4846                                    ; preds = %4842, %4751
  %4847 = phi float [ %4843, %4842 ], [ %4834, %4751 ]
  %4848 = phi float [ %4844, %4842 ], [ %4835, %4751 ]
  %4849 = phi float [ %4845, %4842 ], [ %4836, %4751 ]
  %4850 = fmul float %4849, %4839
  %4851 = fmul float %4848, %4839
  %4852 = fmul float %4847, %4839
  %4853 = fadd fast float %4852, %4524
  %4854 = fadd fast float %4851, %4525
  %4855 = fadd fast float %4850, %4526
  %4856 = icmp ne i32 %4752, 0
  %4857 = select i1 %4856, float 1.000000e+00, float 0.000000e+00
  %4858 = fmul fast float %4743, %4857
  %4859 = fsub fast float %4797, %4531
  %4860 = fsub fast float %4798, %4532
  %4861 = fsub fast float %4799, %4533
  %4862 = fmul fast float %4859, %4858
  %4863 = fmul fast float %4860, %4858
  %4864 = fmul fast float %4861, %4858
  %4865 = fadd fast float %4862, %4531
  %4866 = fadd fast float %4863, %4532
  %4867 = fadd fast float %4864, %4533
  %4868 = fsub fast float %4770, %4530
  %4869 = fmul fast float %4868, %4858
  %4870 = fadd fast float %4869, %4530
  %4871 = fmul fast float %4858, %4517
  %4872 = fsub fast float %4517, %4871
  %4873 = fmul fast float %4858, %4516
  %4874 = fsub fast float %4516, %4873
  %4875 = bitcast float %4585 to i32
  %4876 = lshr i32 %4875, 16
  %4877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4876)  ; LegacyF16ToF32(value)
  %4878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4879 = extractvalue %dx.types.ResRet.i32 %4878, 0
  %4880 = and i32 %4879, 1
  %4881 = icmp eq i32 %4880, 0
  br i1 %4881, label %4882, label %4907

; <label>:4882                                    ; preds = %4846
  %4883 = fadd fast float %4770, 0xBFB99999A0000000
  %4884 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4885 = fmul fast float %4884, 0x3FF1C71C80000000
  %4886 = fsub fast float 1.000000e+00, %4885
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4888 = fmul fast float %4887, %4797
  %4889 = fmul fast float %4887, %4798
  %4890 = fmul fast float %4887, %4799
  %4891 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4892 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4893 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4894 = call float @dx.op.binary.f32(i32 35, float %4892, float %4893)  ; FMax(a,b)
  %4895 = call float @dx.op.binary.f32(i32 35, float %4891, float %4894)  ; FMax(a,b)
  %4896 = fcmp fast ogt float %4895, 0.000000e+00
  %4897 = bitcast float %4895 to i32
  %4898 = sub nsw i32 2129859010, %4897
  %4899 = bitcast i32 %4898 to float
  %4900 = select i1 %4896, float %4899, float 0.000000e+00
  %4901 = fmul fast float %4891, %4877
  %4902 = fmul fast float %4892, %4877
  %4903 = fmul fast float %4893, %4877
  %4904 = fmul fast float %4901, %4900
  %4905 = fmul fast float %4902, %4900
  %4906 = fmul fast float %4903, %4900
  br label %4907

; <label>:4907                                    ; preds = %4882, %4846
  %4908 = phi float [ %4877, %4846 ], [ %4904, %4882 ]
  %4909 = phi float [ %4877, %4846 ], [ %4905, %4882 ]
  %4910 = phi float [ %4877, %4846 ], [ %4906, %4882 ]
  %4911 = fsub fast float %4908, %4518
  %4912 = fsub fast float %4909, %4519
  %4913 = fsub fast float %4910, %4520
  %4914 = fmul fast float %4911, %4858
  %4915 = fmul fast float %4912, %4858
  %4916 = fmul fast float %4913, %4858
  %4917 = fadd fast float %4914, %4518
  %4918 = fadd fast float %4915, %4519
  %4919 = fadd fast float %4916, %4520
  %4920 = fadd fast float %4743, %4529
  %4921 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4922 = fsub fast float %4790, %4528
  %4923 = fmul fast float %4922, %4839
  %4924 = fadd fast float %4923, %4528
  %4925 = fsub fast float %4776, %4527
  %4926 = fmul fast float %4925, %4839
  %4927 = fadd fast float %4926, %4527
  br i1 %4841, label %4936, label %4928

; <label>:4928                                    ; preds = %4907
  %4929 = and i32 %4591, 32768
  %4930 = icmp eq i32 %4929, 0
  br i1 %4930, label %4946, label %4931

; <label>:4931                                    ; preds = %4928
  %4932 = fmul fast float %4839, 1.270000e+02
  %4933 = fadd fast float %4932, %4513
  %4934 = fadd fast float %4932, %4514
  %4935 = fadd fast float %4932, %4515
  br label %4946

; <label>:4936                                    ; preds = %4907
  %4937 = fsub fast float 1.270000e+02, %4513
  %4938 = fsub fast float 1.270000e+02, %4514
  %4939 = fsub fast float 1.270000e+02, %4515
  %4940 = fmul fast float %4839, %4937
  %4941 = fmul fast float %4839, %4938
  %4942 = fmul fast float %4839, %4939
  %4943 = fadd fast float %4940, %4513
  %4944 = fadd fast float %4941, %4514
  %4945 = fadd fast float %4942, %4515
  br label %4946

; <label>:4946                                    ; preds = %4936, %4931, %4928
  %4947 = phi float [ %4933, %4931 ], [ %4513, %4928 ], [ %4943, %4936 ]
  %4948 = phi float [ %4934, %4931 ], [ %4514, %4928 ], [ %4944, %4936 ]
  %4949 = phi float [ %4935, %4931 ], [ %4515, %4928 ], [ %4945, %4936 ]
  %4950 = call float @dx.op.dot3.f32(i32 55, float %4797, float %4798, float %4799, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4952 = extractvalue %dx.types.CBufRet.f32 %4951, 0
  %4953 = extractvalue %dx.types.CBufRet.f32 %4951, 1
  %4954 = fmul fast float %4953, %4950
  %4955 = fadd fast float %4954, %4952
  %4956 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4957 = bitcast float %4579 to i32
  %4958 = and i32 %4957, 65535
  %4959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4958)  ; LegacyF16ToF32(value)
  %4960 = lshr i32 %4957, 16
  %4961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4960)  ; LegacyF16ToF32(value)
  %4962 = fcmp fast oge float %4959, 0.000000e+00
  %4963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4964 = extractvalue %dx.types.CBufRet.f32 %4963, 0
  %4965 = select i1 %4962, float %4959, float %4964
  %4966 = fadd fast float %4965, %4961
  %4967 = fsub fast float %4956, %4512
  %4968 = fmul fast float %4967, %4743
  %4969 = fadd fast float %4968, %4512
  %4970 = fmul fast float %4966, %4743
  %4971 = call float @dx.op.binary.f32(i32 35, float %4511, float %4970)  ; FMax(a,b)
  %4972 = and i32 %4591, 16
  %4973 = icmp eq i32 %4972, 0
  br i1 %4973, label %4995, label %4974

; <label>:4974                                    ; preds = %4946
  %4975 = add i32 %4582, 0
  %4976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4975, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4977 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4976, %dx.types.Handle %4756, float %4684, float %4687, float undef, float undef, i32 0, i32 0, i32 undef, float %4689, float %4691, float undef, float %4693, float %4695, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4978 = extractvalue %dx.types.ResRet.f32 %4977, 0
  %4979 = extractvalue %dx.types.ResRet.f32 %4977, 1
  %4980 = extractvalue %dx.types.ResRet.f32 %4977, 2
  %4981 = and i32 %4875, 65535
  %4982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4981)  ; LegacyF16ToF32(value)
  %4983 = fmul fast float %4978, %4576
  %4984 = fmul fast float %4979, %4577
  %4985 = fmul fast float %4980, %4578
  %4986 = and i32 %4591, 16384
  %4987 = icmp ne i32 %4986, 0
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 0
  %4990 = select i1 %4987, float %4989, float 1.000000e+00
  %4991 = fmul fast float %4990, %4982
  %4992 = fmul fast float %4983, %4991
  %4993 = fmul fast float %4984, %4991
  %4994 = fmul fast float %4985, %4991
  br label %4995

; <label>:4995                                    ; preds = %4974, %4946
  %4996 = phi float [ %4992, %4974 ], [ 0.000000e+00, %4946 ]
  %4997 = phi float [ %4993, %4974 ], [ 0.000000e+00, %4946 ]
  %4998 = phi float [ %4994, %4974 ], [ 0.000000e+00, %4946 ]
  %4999 = fsub fast float %4996, %4521
  %5000 = fsub fast float %4997, %4522
  %5001 = fsub fast float %4998, %4523
  %5002 = fmul fast float %4999, %4743
  %5003 = fmul fast float %5000, %4743
  %5004 = fmul fast float %5001, %4743
  %5005 = fadd fast float %5002, %4521
  %5006 = fadd fast float %5003, %4522
  %5007 = fadd fast float %5004, %4523
  br label %4640

; <label>:5008                                    ; preds = %4640
  br label %5009

; <label>:5009                                    ; preds = %5008, %4454
  %5010 = phi float [ 0.000000e+00, %4454 ], [ %4641, %5008 ]
  %5011 = phi float [ %4423, %4454 ], [ %4642, %5008 ]
  %5012 = phi float [ %4415, %4454 ], [ %4643, %5008 ]
  %5013 = phi float [ %4408, %4454 ], [ %4644, %5008 ]
  %5014 = phi float [ %4409, %4454 ], [ %4645, %5008 ]
  %5015 = phi float [ %4410, %4454 ], [ %4646, %5008 ]
  %5016 = phi float [ 0.000000e+00, %4454 ], [ %4647, %5008 ]
  %5017 = phi float [ 0.000000e+00, %4454 ], [ %4648, %5008 ]
  %5018 = phi float [ %4405, %4454 ], [ %4649, %5008 ]
  %5019 = phi float [ %4406, %4454 ], [ %4650, %5008 ]
  %5020 = phi float [ %4407, %4454 ], [ %4651, %5008 ]
  %5021 = phi float [ %4402, %4454 ], [ %4652, %5008 ]
  %5022 = phi float [ %4403, %4454 ], [ %4653, %5008 ]
  %5023 = phi float [ %4404, %4454 ], [ %4654, %5008 ]
  %5024 = phi float [ %4449, %4454 ], [ %4655, %5008 ]
  %5025 = phi float [ %4450, %4454 ], [ %4656, %5008 ]
  %5026 = phi float [ %4451, %4454 ], [ %4657, %5008 ]
  %5027 = phi float [ %4413, %4454 ], [ %4658, %5008 ]
  %5028 = phi float [ %4412, %4454 ], [ %4659, %5008 ]
  %5029 = phi float [ 0.000000e+00, %4454 ], [ %4660, %5008 ]
  %5030 = phi float [ %4411, %4454 ], [ %4661, %5008 ]
  %5031 = phi float [ %4399, %4454 ], [ %4662, %5008 ]
  %5032 = phi float [ %4400, %4454 ], [ %4663, %5008 ]
  %5033 = phi float [ %4401, %4454 ], [ %4664, %5008 ]
  %5034 = call float @dx.op.dot3.f32(i32 55, float %5024, float %5025, float %5026, float %5024, float %5025, float %5026)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = call float @dx.op.unary.f32(i32 25, float %5034)  ; Rsqrt(value)
  %5036 = fmul fast float %5035, %5024
  %5037 = fmul fast float %5035, %5025
  %5038 = fmul fast float %5035, %5026
  %5039 = fadd fast float %5029, %1240
  %5040 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5041 = call float @dx.op.dot3.f32(i32 55, float %5036, float %5037, float %5038, float %5036, float %5037, float %5038)  ; Dot3(ax,ay,az,bx,by,bz)
  %5042 = call float @dx.op.unary.f32(i32 25, float %5041)  ; Rsqrt(value)
  %5043 = fmul fast float %5042, %5036
  %5044 = fmul fast float %5042, %5037
  %5045 = fmul fast float %5042, %5038
  br label %5046

; <label>:5046                                    ; preds = %5009, %4396
  %5047 = phi float [ %5043, %5009 ], [ %4449, %4396 ]
  %5048 = phi float [ %5044, %5009 ], [ %4450, %4396 ]
  %5049 = phi float [ %5045, %5009 ], [ %4451, %4396 ]
  %5050 = phi float [ %5021, %5009 ], [ %4402, %4396 ]
  %5051 = phi float [ %5022, %5009 ], [ %4403, %4396 ]
  %5052 = phi float [ %5023, %5009 ], [ %4404, %4396 ]
  %5053 = phi float [ %5018, %5009 ], [ %4405, %4396 ]
  %5054 = phi float [ %5019, %5009 ], [ %4406, %4396 ]
  %5055 = phi float [ %5020, %5009 ], [ %4407, %4396 ]
  %5056 = phi float [ %5013, %5009 ], [ %4408, %4396 ]
  %5057 = phi float [ %5014, %5009 ], [ %4409, %4396 ]
  %5058 = phi float [ %5015, %5009 ], [ %4410, %4396 ]
  %5059 = phi float [ %5031, %5009 ], [ %4399, %4396 ]
  %5060 = phi float [ %5032, %5009 ], [ %4400, %4396 ]
  %5061 = phi float [ %5033, %5009 ], [ %4401, %4396 ]
  %5062 = phi float [ %5030, %5009 ], [ %4411, %4396 ]
  %5063 = phi float [ %5040, %5009 ], [ %1240, %4396 ]
  %5064 = phi float [ %5028, %5009 ], [ %4412, %4396 ]
  %5065 = phi float [ %5027, %5009 ], [ %4413, %4396 ]
  %5066 = phi float [ %5017, %5009 ], [ 0.000000e+00, %4396 ]
  %5067 = phi float [ %5016, %5009 ], [ 0.000000e+00, %4396 ]
  %5068 = phi float [ %5010, %5009 ], [ 0.000000e+00, %4396 ]
  %5069 = phi float [ %5011, %5009 ], [ %4423, %4396 ]
  %5070 = phi float [ %5012, %5009 ], [ %4415, %4396 ]
  %5071 = fadd fast float %5062, 0xBFB99999A0000000
  %5072 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  %5073 = fmul fast float %5072, 0x3FF1C71C80000000
  %5074 = call float @dx.op.binary.f32(i32 36, float %5062, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5075 = fsub fast float 1.000000e+00, %5073
  %5076 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5077 = fmul fast float %5076, %5059
  %5078 = fmul fast float %5076, %5060
  %5079 = fmul fast float %5076, %5061
  %5080 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5081 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5082 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5083 = fmul fast float %5073, %5059
  %5084 = fmul fast float %5073, %5060
  %5085 = fmul fast float %5073, %5061
  %5086 = fadd fast float %5083, %5074
  %5087 = fadd fast float %5084, %5074
  %5088 = fadd fast float %5085, %5074
  %5089 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5092 = call float @dx.op.unary.f32(i32 7, float %5064)  ; Saturate(value)
  %5093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %5094 = extractvalue %dx.types.ResRet.i32 %5093, 0
  %5095 = and i32 %5094, 1
  %5096 = icmp eq i32 %5095, 0
  br i1 %5096, label %5111, label %5097

; <label>:5097                                    ; preds = %5046
  %5098 = call float @dx.op.binary.f32(i32 35, float %5081, float %5082)  ; FMax(a,b)
  %5099 = call float @dx.op.binary.f32(i32 35, float %5080, float %5098)  ; FMax(a,b)
  %5100 = fcmp fast ogt float %5099, 0.000000e+00
  %5101 = bitcast float %5099 to i32
  %5102 = sub nsw i32 2129859010, %5101
  %5103 = bitcast i32 %5102 to float
  %5104 = select i1 %5100, float %5103, float 0.000000e+00
  %5105 = fmul fast float %5080, %5053
  %5106 = fmul fast float %5081, %5054
  %5107 = fmul fast float %5082, %5055
  %5108 = fmul fast float %5105, %5104
  %5109 = fmul fast float %5106, %5104
  %5110 = fmul fast float %5107, %5104
  br label %5111

; <label>:5111                                    ; preds = %5097, %5046
  %5112 = phi float [ %5108, %5097 ], [ %5053, %5046 ]
  %5113 = phi float [ %5109, %5097 ], [ %5054, %5046 ]
  %5114 = phi float [ %5110, %5097 ], [ %5055, %5046 ]
  %5115 = call float @dx.op.binary.f32(i32 36, float %5056, float 1.270000e+02)  ; FMin(a,b)
  %5116 = call float @dx.op.binary.f32(i32 36, float %5057, float 1.270000e+02)  ; FMin(a,b)
  %5117 = call float @dx.op.binary.f32(i32 36, float %5058, float 1.270000e+02)  ; FMin(a,b)
  %5118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.i32 %5118, 3
  %5120 = and i32 %5119, 8
  %5121 = icmp ne i32 %5120, 0
  %5122 = call float @dx.op.binary.f32(i32 35, float %5080, float %5059)  ; FMax(a,b)
  %5123 = call float @dx.op.binary.f32(i32 35, float %5081, float %5059)  ; FMax(a,b)
  %5124 = call float @dx.op.binary.f32(i32 35, float %5082, float %5059)  ; FMax(a,b)
  %5125 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %5082, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5126 = select i1 %213, float %5059, float %5080
  %5127 = select i1 %213, float %5125, float %5081
  %5128 = select i1 %213, float 1.000000e+00, float %5082
  %5129 = select i1 %5121, float %5122, float %5126
  %5130 = select i1 %5121, float %5123, float %5127
  %5131 = select i1 %5121, float %5124, float %5128
  %5132 = call float @dx.op.dot3.f32(i32 55, float %5112, float %5113, float %5114, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5133 = select i1 %213, float %5132, float %5112
  %5134 = select i1 %213, float %5132, float %5113
  %5135 = select i1 %213, float %5132, float %5114
  %5136 = and i32 %189, 3
  %5137 = select i1 %183, i32 %5136, i32 0
  %5138 = icmp eq i32 %5137, 1
  br i1 %5138, label %5139, label %5215

; <label>:5139                                    ; preds = %5111
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5143 = fadd fast float %5141, %152
  %5144 = fadd fast float %5142, %153
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 0
  %5147 = extractvalue %dx.types.CBufRet.f32 %5145, 1
  %5148 = fsub fast float %5143, %5146
  %5149 = fsub fast float %5144, %5147
  %5150 = fmul fast float %5148, %5148
  %5151 = fmul fast float %5149, %5149
  %5152 = fadd fast float %5150, %5151
  %5153 = call float @dx.op.unary.f32(i32 24, float %5152)  ; Sqrt(value)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5145, 2
  %5155 = fcmp fast olt float %5153, %5154
  br i1 %5155, label %5156, label %5209

; <label>:5156                                    ; preds = %5139
  %5157 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5158 = fadd fast float %5157, %154
  %5159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5159, 0
  %5161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5162 = extractvalue %dx.types.CBufRet.f32 %5161, 0
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 0
  %5165 = extractvalue %dx.types.CBufRet.f32 %5159, 1
  %5166 = extractvalue %dx.types.CBufRet.f32 %5161, 1
  %5167 = extractvalue %dx.types.CBufRet.f32 %5163, 1
  %5168 = extractvalue %dx.types.CBufRet.f32 %5159, 3
  %5169 = extractvalue %dx.types.CBufRet.f32 %5161, 3
  %5170 = extractvalue %dx.types.CBufRet.f32 %5163, 3
  %5171 = fadd fast float %5168, %5143
  %5172 = fadd fast float %5169, %5144
  %5173 = fadd fast float %5158, %5170
  %5174 = fmul fast float %5171, %5160
  %5175 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5162, float %5174)  ; FMad(a,b,c)
  %5176 = call float @dx.op.tertiary.f32(i32 46, float %5173, float %5164, float %5175)  ; FMad(a,b,c)
  %5177 = fmul fast float %5171, %5165
  %5178 = call float @dx.op.tertiary.f32(i32 46, float %5172, float %5166, float %5177)  ; FMad(a,b,c)
  %5179 = call float @dx.op.tertiary.f32(i32 46, float %5173, float %5167, float %5178)  ; FMad(a,b,c)
  %5180 = fsub fast float %5176, %5168
  %5181 = fsub fast float %5179, %5169
  %5182 = fsub fast float %5180, %5146
  %5183 = fadd fast float %5182, %5154
  %5184 = fsub fast float %5181, %5147
  %5185 = fadd fast float %5184, %5154
  %5186 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5187 = fmul fast float %5183, %5186
  %5188 = fmul fast float %5185, %5186
  %5189 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5190 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5191 = fsub fast float 1.000000e+00, %5189
  %5192 = fsub fast float 1.000000e+00, %5190
  %5193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %42, float %5191, float %5192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5194 = extractvalue %dx.types.ResRet.f32 %5193, 0
  %5195 = fcmp fast ugt float %5194, 0.000000e+00
  br i1 %5195, label %5196, label %5209

; <label>:5196                                    ; preds = %5156
  %5197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5197, 2
  %5199 = fmul fast float %5198, %5194
  %5200 = extractvalue %dx.types.CBufRet.f32 %5197, 3
  %5201 = fadd fast float %5200, %5199
  %5202 = extractvalue %dx.types.CBufRet.f32 %5163, 2
  %5203 = fadd fast float %5201, %5170
  %5204 = fmul fast float %5176, %5164
  %5205 = call float @dx.op.tertiary.f32(i32 46, float %5179, float %5167, float %5204)  ; FMad(a,b,c)
  %5206 = call float @dx.op.tertiary.f32(i32 46, float %5203, float %5202, float %5205)  ; FMad(a,b,c)
  %5207 = fsub fast float %5206, %5170
  %5208 = fsub fast float %5207, %5157
  br label %5209

; <label>:5209                                    ; preds = %5196, %5156, %5139
  %5210 = phi i1 [ true, %5196 ], [ false, %5156 ], [ false, %5139 ]
  %5211 = phi float [ %5208, %5196 ], [ -1.310720e+05, %5156 ], [ -1.310720e+05, %5139 ]
  %5212 = fsub fast float %5211, %154
  %5213 = call float @dx.op.unary.f32(i32 7, float %5212)  ; Saturate(value)
  %5214 = select i1 %5210, float %5213, float 1.000000e+00
  br label %5215

; <label>:5215                                    ; preds = %5209, %5111
  %5216 = phi float [ %5214, %5209 ], [ 0.000000e+00, %5111 ]
  %5217 = icmp eq i32 %5137, 3
  %5218 = select i1 %5217, float 1.000000e+00, float %5216
  %5219 = call float @dx.op.binary.f32(i32 35, float %5068, float %5218)  ; FMax(a,b)
  %5220 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5221 = fcmp fast une float %5220, 0.000000e+00
  %5222 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %152, float %153, float %154)  ; Dot3(ax,ay,az,bx,by,bz)
  %5223 = call float @dx.op.unary.f32(i32 25, float %5222)  ; Rsqrt(value)
  br i1 %5221, label %5231, label %5224

; <label>:5224                                    ; preds = %5215
  %5225 = fmul fast float %5223, %152
  %5226 = fmul fast float %5223, %153
  %5227 = fmul fast float %5223, %154
  %5228 = fsub fast float -0.000000e+00, %5225
  %5229 = fsub fast float -0.000000e+00, %5226
  %5230 = fsub fast float -0.000000e+00, %5227
  br label %5399

; <label>:5231                                    ; preds = %5215
  %5232 = fmul fast float %152, %5223
  %5233 = fsub fast float -0.000000e+00, %5232
  %5234 = fmul fast float %153, %5223
  %5235 = fsub fast float -0.000000e+00, %5234
  %5236 = fmul fast float %154, %5223
  %5237 = fsub fast float -0.000000e+00, %5236
  %5238 = call float @dx.op.dot3.f32(i32 55, float %5233, float %5235, float %5237, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5239 = fmul fast float %5220, 2.500000e+00
  %5240 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5241 = fmul fast float %5220, 0x4013FFFFE0000000
  %5242 = fadd fast float %5241, 0xBFFFFFFFE0000000
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = fmul fast float %5220, 0x4004000020000000
  %5245 = fadd fast float %5244, 0xBFF8000040000000
  %5246 = call float @dx.op.unary.f32(i32 7, float %5245)  ; Saturate(value)
  %5247 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5248 = fmul fast float %5071, 1.000000e+01
  %5249 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5250 = fmul fast float %5249, 2.000000e+00
  %5251 = fsub fast float 3.000000e+00, %5250
  %5252 = fmul fast float %5249, %5249
  %5253 = fmul fast float %5252, %5251
  %5254 = fsub fast float 1.000000e+00, %5253
  %5255 = fsub fast float 0x3FE3333340000000, %5092
  %5256 = fmul fast float %5255, 0x400AAAAAA0000000
  %5257 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5258 = fmul fast float %5254, %5257
  %5259 = fmul fast float %5129, 0x3FEA2B8620000000
  %5260 = fmul fast float %5130, 0x3FEA2B8620000000
  %5261 = fmul fast float %5131, 0x3FEA2B8620000000
  %5262 = fadd fast float %5259, 0x3FC81DFBA0000000
  %5263 = fmul fast float %5262, %5129
  %5264 = fadd fast float %5263, 0x3F910E6020000000
  %5265 = fadd fast float %5260, 0x3FC81DFBA0000000
  %5266 = fmul fast float %5265, %5130
  %5267 = fadd fast float %5266, 0x3F910E6020000000
  %5268 = fadd fast float %5261, 0x3FC81DFBA0000000
  %5269 = fmul fast float %5268, %5131
  %5270 = fadd fast float %5269, 0x3F910E6020000000
  %5271 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5272 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5273 = call float @dx.op.unary.f32(i32 7, float %5270)  ; Saturate(value)
  %5274 = fsub fast float %5271, %5129
  %5275 = fsub fast float %5272, %5130
  %5276 = fsub fast float %5273, %5131
  %5277 = fmul fast float %5274, %5247
  %5278 = fmul fast float %5277, %5258
  %5279 = fmul fast float %5275, %5247
  %5280 = fmul fast float %5279, %5258
  %5281 = fmul fast float %5276, %5247
  %5282 = fmul fast float %5281, %5258
  %5283 = fadd fast float %5278, %5129
  %5284 = fadd fast float %5280, %5130
  %5285 = fadd fast float %5282, %5131
  %5286 = fmul fast float %5065, %5065
  %5287 = fmul fast float %5286, %5286
  %5288 = fadd fast float %5243, 1.000000e+00
  %5289 = fsub fast float %5288, %5258
  %5290 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5291 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = fsub fast float 1.000000e+00, %5287
  %5294 = call float @dx.op.binary.f32(i32 36, float %5290, float %5293)  ; FMin(a,b)
  %5295 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5296 = call float @dx.op.binary.f32(i32 35, float %5294, float %5295)  ; FMax(a,b)
  %5297 = fadd fast float %5292, 0xBFE4CCCCC0000000
  %5298 = fmul fast float %5297, 0x4006DB6DA0000000
  %5299 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5300 = fmul fast float %5299, 2.000000e+00
  %5301 = fsub fast float 3.000000e+00, %5300
  %5302 = bitcast float %5089 to i32
  %5303 = ashr i32 %5302, 1
  %5304 = add nsw i32 %5303, 532487669
  %5305 = bitcast i32 %5304 to float
  %5306 = fsub fast float 1.000000e+00, %5305
  %5307 = bitcast float %5306 to i32
  %5308 = sub nsw i32 2129859010, %5307
  %5309 = bitcast i32 %5308 to float
  %5310 = fmul fast float %5309, 2.000000e+00
  %5311 = bitcast float %5090 to i32
  %5312 = ashr i32 %5311, 1
  %5313 = add nsw i32 %5312, 532487669
  %5314 = bitcast i32 %5313 to float
  %5315 = fsub fast float 1.000000e+00, %5314
  %5316 = bitcast float %5315 to i32
  %5317 = sub nsw i32 2129859010, %5316
  %5318 = bitcast i32 %5317 to float
  %5319 = fmul fast float %5318, 2.000000e+00
  %5320 = bitcast float %5091 to i32
  %5321 = ashr i32 %5320, 1
  %5322 = add nsw i32 %5321, 532487669
  %5323 = bitcast i32 %5322 to float
  %5324 = fsub fast float 1.000000e+00, %5323
  %5325 = bitcast float %5324 to i32
  %5326 = sub nsw i32 2129859010, %5325
  %5327 = bitcast i32 %5326 to float
  %5328 = fmul fast float %5327, 2.000000e+00
  %5329 = fsub fast float 0x4002A9FBE0000000, %5310
  %5330 = fadd fast float %5310, 0x3FD54FDF00000000
  %5331 = bitcast float %5330 to i32
  %5332 = sub nsw i32 2129859010, %5331
  %5333 = bitcast i32 %5332 to float
  %5334 = fmul fast float %5333, %5329
  %5335 = fmul fast float %5334, %5334
  %5336 = fsub fast float 0x4002A9FBE0000000, %5319
  %5337 = fadd fast float %5319, 0x3FD54FDF00000000
  %5338 = bitcast float %5337 to i32
  %5339 = sub nsw i32 2129859010, %5338
  %5340 = bitcast i32 %5339 to float
  %5341 = fmul fast float %5340, %5336
  %5342 = fmul fast float %5341, %5341
  %5343 = fsub fast float 0x4002A9FBE0000000, %5328
  %5344 = fadd fast float %5328, 0x3FD54FDF00000000
  %5345 = bitcast float %5344 to i32
  %5346 = sub nsw i32 2129859010, %5345
  %5347 = bitcast i32 %5346 to float
  %5348 = fmul fast float %5347, %5343
  %5349 = fmul fast float %5348, %5348
  %5350 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5335)  ; FMax(a,b)
  %5351 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5342)  ; FMax(a,b)
  %5352 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5349)  ; FMax(a,b)
  %5353 = fsub fast float 1.000000e+00, %5238
  %5354 = fadd fast float %5353, %5254
  %5355 = call float @dx.op.unary.f32(i32 7, float %5354)  ; Saturate(value)
  %5356 = fsub fast float 1.000000e+00, %5218
  %5357 = fmul fast float %5296, %5356
  %5358 = fmul fast float %5299, %5299
  %5359 = fmul fast float %5358, %5357
  %5360 = fmul fast float %5359, %5301
  %5361 = fmul fast float %5356, 0xBFE99999A0000000
  %5362 = fmul fast float %5361, %5247
  %5363 = fmul fast float %5362, %5258
  %5364 = fadd fast float %5363, 1.000000e+00
  %5365 = fadd fast float %5092, -1.000000e+00
  %5366 = fmul fast float %5364, %5365
  %5367 = fadd fast float %5366, 1.000000e+00
  %5368 = fsub fast float %5350, %5089
  %5369 = fsub fast float %5351, %5090
  %5370 = fsub fast float %5352, %5091
  %5371 = fmul fast float %5360, %5368
  %5372 = fmul fast float %5360, %5369
  %5373 = fmul fast float %5360, %5370
  %5374 = fadd fast float %5371, %5089
  %5375 = fadd fast float %5372, %5090
  %5376 = fadd fast float %5373, %5091
  %5377 = fsub fast float %104, %5047
  %5378 = fsub fast float %105, %5048
  %5379 = fsub fast float %106, %5049
  %5380 = fmul fast float %5360, %5377
  %5381 = fmul fast float %5360, %5378
  %5382 = fmul fast float %5360, %5379
  %5383 = fadd fast float %5380, %5047
  %5384 = fadd fast float %5381, %5048
  %5385 = fadd fast float %5382, %5049
  %5386 = fmul fast float %5360, %5355
  %5387 = call float @dx.op.unary.f32(i32 7, float %5367)  ; Saturate(value)
  %5388 = fsub fast float 1.000000e+00, %5387
  %5389 = fmul fast float %5386, %5388
  %5390 = fadd fast float %5389, %5387
  %5391 = fsub fast float 1.000000e+00, %5065
  %5392 = fmul fast float %5360, %5391
  %5393 = fadd fast float %5392, %5065
  %5394 = call float @dx.op.dot3.f32(i32 55, float %5383, float %5384, float %5385, float %5383, float %5384, float %5385)  ; Dot3(ax,ay,az,bx,by,bz)
  %5395 = call float @dx.op.unary.f32(i32 25, float %5394)  ; Rsqrt(value)
  %5396 = fmul fast float %5383, %5395
  %5397 = fmul fast float %5384, %5395
  %5398 = fmul fast float %5385, %5395
  br label %5399

; <label>:5399                                    ; preds = %5231, %5224
  %5400 = phi float [ %5230, %5224 ], [ %5237, %5231 ]
  %5401 = phi float [ %5229, %5224 ], [ %5235, %5231 ]
  %5402 = phi float [ %5228, %5224 ], [ %5233, %5231 ]
  %5403 = phi float [ %5227, %5224 ], [ %5236, %5231 ]
  %5404 = phi float [ %5226, %5224 ], [ %5234, %5231 ]
  %5405 = phi float [ %5225, %5224 ], [ %5232, %5231 ]
  %5406 = phi float [ %5129, %5224 ], [ %5283, %5231 ]
  %5407 = phi float [ %5130, %5224 ], [ %5284, %5231 ]
  %5408 = phi float [ %5131, %5224 ], [ %5285, %5231 ]
  %5409 = phi float [ %5047, %5224 ], [ %5396, %5231 ]
  %5410 = phi float [ %5048, %5224 ], [ %5397, %5231 ]
  %5411 = phi float [ %5049, %5224 ], [ %5398, %5231 ]
  %5412 = phi float [ %5089, %5224 ], [ %5374, %5231 ]
  %5413 = phi float [ %5090, %5224 ], [ %5375, %5231 ]
  %5414 = phi float [ %5091, %5224 ], [ %5376, %5231 ]
  %5415 = phi float [ %5092, %5224 ], [ %5390, %5231 ]
  %5416 = phi float [ %5065, %5224 ], [ %5393, %5231 ]
  %5417 = select i1 %213, float 0.000000e+00, float %5414
  %5418 = call float @dx.op.dot3.f32(i32 55, float %5409, float %5410, float %5411, float %5402, float %5401, float %5400)  ; Dot3(ax,ay,az,bx,by,bz)
  %5419 = call float @dx.op.unary.f32(i32 7, float %5418)  ; Saturate(value)
  %5420 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5404, float %5403, float %5409, float %5410, float %5411)  ; Dot3(ax,ay,az,bx,by,bz)
  %5421 = fmul fast float %5420, 2.000000e+00
  %5422 = fmul fast float %5421, %5409
  %5423 = fmul fast float %5421, %5410
  %5424 = fmul fast float %5421, %5411
  %5425 = fsub fast float %5405, %5422
  %5426 = fsub fast float %5404, %5423
  %5427 = fsub fast float %5403, %5424
  %5428 = call float @dx.op.binary.f32(i32 36, float %5416, float 1.000000e+00)  ; FMin(a,b)
  %5429 = fsub fast float 1.000000e+00, %5428
  %5430 = bitcast float %5429 to i32
  %5431 = ashr i32 %5430, 1
  %5432 = add nsw i32 %5431, 532487669
  %5433 = bitcast i32 %5432 to float
  %5434 = fsub fast float 1.000000e+00, %5415
  %5435 = call float @dx.op.binary.f32(i32 35, float %5434, float 0x3F847AE140000000)  ; FMax(a,b)
  %5436 = fmul fast float %5435, %5435
  %5437 = fmul fast float %5436, %5436
  %5438 = call float @dx.op.unary.f32(i32 7, float %5419)  ; Saturate(value)
  %5439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %42, float %5433, float %5437, float %5438, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5440 = extractvalue %dx.types.ResRet.f32 %5439, 0
  %5441 = fsub fast float 1.000000e+00, %5416
  %5442 = bitcast float %5441 to i32
  %5443 = sub nsw i32 2129859010, %5442
  %5444 = call float @dx.op.dot3.f32(i32 55, float %65, float %61, float %57, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = fmul fast float %5444, 0x3FD20DD760000000
  %5446 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5447 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5448 = fcmp fast oeq float %5447, 0.000000e+00
  %5449 = fcmp fast oeq float %5446, 0.000000e+00
  %5450 = or i1 %5449, %5448
  br i1 %5450, label %5480, label %5451

; <label>:5451                                    ; preds = %5399
  %5452 = fsub fast float -0.000000e+00, %68
  %5453 = fsub fast float -0.000000e+00, %66
  %5454 = call float @dx.op.unary.f32(i32 24, float %5447)  ; Sqrt(value)
  %5455 = fdiv fast float %5454, %5446
  %5456 = fcmp fast ogt float %5455, 0x3FFB6F8900000000
  %5457 = select i1 %5456, float 0x3FFB6F8900000000, float %5455
  %5458 = fmul fast float %5457, 0x3FE8A23460000000
  %5459 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5460 = call float @dx.op.binary.f32(i32 35, float %5457, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5461 = fmul fast float %5459, %5446
  %5462 = fmul fast float %5460, 0x3FF279A740000000
  %5463 = fadd fast float %5462, -1.000000e+00
  %5464 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %67, float %5452, float %5453, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5465 = call float @dx.op.unary.f32(i32 25, float %5464)  ; Rsqrt(value)
  %5466 = fmul fast float %5465, %5452
  %5467 = fmul fast float %5465, %5453
  %5468 = fmul fast float %5465, %67
  %5469 = fmul fast float %5463, %5463
  %5470 = fsub fast float 1.000000e+00, %5469
  %5471 = fmul fast float %5460, 0x40005F8BE0000000
  %5472 = fsub fast float 0x400C5BF8A0000000, %5471
  %5473 = fdiv fast float %5461, %5472
  %5474 = fmul fast float %5473, 0x3FEE31C3C0000000
  %5475 = fmul fast float %5474, %5470
  %5476 = fmul fast float %5460, 0x3FDACB7480000000
  %5477 = fadd fast float %5476, 0xBFD7347680000000
  %5478 = fmul fast float %5477, %5473
  %5479 = fmul fast float %5478, %5470
  br label %5480

; <label>:5480                                    ; preds = %5451, %5399
  %5481 = phi float [ %5466, %5451 ], [ 0.000000e+00, %5399 ]
  %5482 = phi float [ %5467, %5451 ], [ 0.000000e+00, %5399 ]
  %5483 = phi float [ %5468, %5451 ], [ 0.000000e+00, %5399 ]
  %5484 = phi float [ %5475, %5451 ], [ 0.000000e+00, %5399 ]
  %5485 = phi float [ %5479, %5451 ], [ 0.000000e+00, %5399 ]
  %5486 = call float @dx.op.dot3.f32(i32 55, float %5481, float %5482, float %5483, float %5409, float %5410, float %5411)  ; Dot3(ax,ay,az,bx,by,bz)
  %5487 = fmul fast float %5486, 0x3FDF454380000000
  %5488 = fmul fast float %5486, %5486
  %5489 = fmul fast float %5488, 0x3FEE471020000000
  %5490 = fadd fast float %5489, 0xBFD42F6020000000
  %5491 = fmul fast float %5446, 0x3FD20DD760000000
  %5492 = fmul fast float %5490, %5485
  %5493 = fadd fast float %5492, %5491
  %5494 = fmul fast float %5487, %5484
  %5495 = fadd fast float %5493, %5494
  %5496 = fsub fast float %5493, %5494
  %5497 = call float @dx.op.dot3.f32(i32 55, float %5481, float %5482, float %5483, float %5425, float %5426, float %5427)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = fmul fast float %5497, 0x3FDF454380000000
  %5499 = fmul fast float %5497, %5497
  %5500 = fmul fast float %5499, 0x3FEE471020000000
  %5501 = fadd fast float %5500, 0xBFD42F6020000000
  %5502 = call float @dx.op.dot3.f32(i32 55, float %5446, float %5484, float %5485, float 0x3FD20DD760000000, float %5498, float %5501)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %61)  ; FMax(a,b)
  %5504 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = fcmp fast oeq float %5504, 0.000000e+00
  %5506 = fcmp fast oeq float %5503, 0.000000e+00
  %5507 = or i1 %5506, %5505
  br i1 %5507, label %5537, label %5508

; <label>:5508                                    ; preds = %5480
  %5509 = fsub fast float -0.000000e+00, %64
  %5510 = fsub fast float -0.000000e+00, %62
  %5511 = call float @dx.op.unary.f32(i32 24, float %5504)  ; Sqrt(value)
  %5512 = fdiv fast float %5511, %5503
  %5513 = fcmp fast ogt float %5512, 0x3FFB6F8900000000
  %5514 = select i1 %5513, float 0x3FFB6F8900000000, float %5512
  %5515 = fmul fast float %5514, 0x3FE8A23460000000
  %5516 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  %5517 = call float @dx.op.binary.f32(i32 35, float %5514, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5518 = fmul fast float %5516, %5503
  %5519 = fmul fast float %5517, 0x3FF279A740000000
  %5520 = fadd fast float %5519, -1.000000e+00
  %5521 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %63, float %5509, float %5510, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5522 = call float @dx.op.unary.f32(i32 25, float %5521)  ; Rsqrt(value)
  %5523 = fmul fast float %5522, %5509
  %5524 = fmul fast float %5522, %5510
  %5525 = fmul fast float %5522, %63
  %5526 = fmul fast float %5520, %5520
  %5527 = fsub fast float 1.000000e+00, %5526
  %5528 = fmul fast float %5517, 0x40005F8BE0000000
  %5529 = fsub fast float 0x400C5BF8A0000000, %5528
  %5530 = fdiv fast float %5518, %5529
  %5531 = fmul fast float %5530, 0x3FEE31C3C0000000
  %5532 = fmul fast float %5531, %5527
  %5533 = fmul fast float %5517, 0x3FDACB7480000000
  %5534 = fadd fast float %5533, 0xBFD7347680000000
  %5535 = fmul fast float %5534, %5530
  %5536 = fmul fast float %5535, %5527
  br label %5537

; <label>:5537                                    ; preds = %5508, %5480
  %5538 = phi float [ %5523, %5508 ], [ 0.000000e+00, %5480 ]
  %5539 = phi float [ %5524, %5508 ], [ 0.000000e+00, %5480 ]
  %5540 = phi float [ %5525, %5508 ], [ 0.000000e+00, %5480 ]
  %5541 = phi float [ %5532, %5508 ], [ 0.000000e+00, %5480 ]
  %5542 = phi float [ %5536, %5508 ], [ 0.000000e+00, %5480 ]
  %5543 = call float @dx.op.dot3.f32(i32 55, float %5538, float %5539, float %5540, float %5409, float %5410, float %5411)  ; Dot3(ax,ay,az,bx,by,bz)
  %5544 = fmul fast float %5543, 0x3FDF454380000000
  %5545 = fmul fast float %5543, %5543
  %5546 = fmul fast float %5545, 0x3FEE471020000000
  %5547 = fadd fast float %5546, 0xBFD42F6020000000
  %5548 = fmul fast float %5503, 0x3FD20DD760000000
  %5549 = fmul fast float %5547, %5542
  %5550 = fadd fast float %5549, %5548
  %5551 = fmul fast float %5544, %5541
  %5552 = fadd fast float %5550, %5551
  %5553 = fsub fast float %5550, %5551
  %5554 = call float @dx.op.dot3.f32(i32 55, float %5538, float %5539, float %5540, float %5425, float %5426, float %5427)  ; Dot3(ax,ay,az,bx,by,bz)
  %5555 = fmul fast float %5554, 0x3FDF454380000000
  %5556 = fmul fast float %5554, %5554
  %5557 = fmul fast float %5556, 0x3FEE471020000000
  %5558 = fadd fast float %5557, 0xBFD42F6020000000
  %5559 = call float @dx.op.dot3.f32(i32 55, float %5503, float %5541, float %5542, float 0x3FD20DD760000000, float %5555, float %5558)  ; Dot3(ax,ay,az,bx,by,bz)
  %5560 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %5561 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = fcmp fast oeq float %5561, 0.000000e+00
  %5563 = fcmp fast oeq float %5560, 0.000000e+00
  %5564 = or i1 %5563, %5562
  br i1 %5564, label %5594, label %5565

; <label>:5565                                    ; preds = %5537
  %5566 = fsub fast float -0.000000e+00, %60
  %5567 = fsub fast float -0.000000e+00, %58
  %5568 = call float @dx.op.unary.f32(i32 24, float %5561)  ; Sqrt(value)
  %5569 = fdiv fast float %5568, %5560
  %5570 = fcmp fast ogt float %5569, 0x3FFB6F8900000000
  %5571 = select i1 %5570, float 0x3FFB6F8900000000, float %5569
  %5572 = fmul fast float %5571, 0x3FE8A23460000000
  %5573 = call float @dx.op.unary.f32(i32 7, float %5572)  ; Saturate(value)
  %5574 = call float @dx.op.binary.f32(i32 35, float %5571, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5575 = fmul fast float %5573, %5560
  %5576 = fmul fast float %5574, 0x3FF279A740000000
  %5577 = fadd fast float %5576, -1.000000e+00
  %5578 = call float @dx.op.dot3.f32(i32 55, float %5566, float %5567, float %59, float %5566, float %5567, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5579 = call float @dx.op.unary.f32(i32 25, float %5578)  ; Rsqrt(value)
  %5580 = fmul fast float %5579, %5566
  %5581 = fmul fast float %5579, %5567
  %5582 = fmul fast float %5579, %59
  %5583 = fmul fast float %5577, %5577
  %5584 = fsub fast float 1.000000e+00, %5583
  %5585 = fmul fast float %5574, 0x40005F8BE0000000
  %5586 = fsub fast float 0x400C5BF8A0000000, %5585
  %5587 = fdiv fast float %5575, %5586
  %5588 = fmul fast float %5587, 0x3FEE31C3C0000000
  %5589 = fmul fast float %5588, %5584
  %5590 = fmul fast float %5574, 0x3FDACB7480000000
  %5591 = fadd fast float %5590, 0xBFD7347680000000
  %5592 = fmul fast float %5591, %5587
  %5593 = fmul fast float %5592, %5584
  br label %5594

; <label>:5594                                    ; preds = %5565, %5537
  %5595 = phi float [ %5580, %5565 ], [ 0.000000e+00, %5537 ]
  %5596 = phi float [ %5581, %5565 ], [ 0.000000e+00, %5537 ]
  %5597 = phi float [ %5582, %5565 ], [ 0.000000e+00, %5537 ]
  %5598 = phi float [ %5589, %5565 ], [ 0.000000e+00, %5537 ]
  %5599 = phi float [ %5593, %5565 ], [ 0.000000e+00, %5537 ]
  %5600 = call float @dx.op.dot3.f32(i32 55, float %5595, float %5596, float %5597, float %5409, float %5410, float %5411)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = fmul fast float %5600, 0x3FDF454380000000
  %5602 = fmul fast float %5600, %5600
  %5603 = fmul fast float %5602, 0x3FEE471020000000
  %5604 = fadd fast float %5603, 0xBFD42F6020000000
  %5605 = fmul fast float %5560, 0x3FD20DD760000000
  %5606 = fmul fast float %5604, %5599
  %5607 = fadd fast float %5606, %5605
  %5608 = fmul fast float %5601, %5598
  %5609 = fadd fast float %5607, %5608
  %5610 = fsub fast float %5607, %5608
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5595, float %5596, float %5597, float %5425, float %5426, float %5427)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = fmul fast float %5611, 0x3FDF454380000000
  %5613 = fmul fast float %5611, %5611
  %5614 = fmul fast float %5613, 0x3FEE471020000000
  %5615 = fadd fast float %5614, 0xBFD42F6020000000
  %5616 = call float @dx.op.dot3.f32(i32 55, float %5560, float %5598, float %5599, float 0x3FD20DD760000000, float %5612, float %5615)  ; Dot3(ax,ay,az,bx,by,bz)
  %5617 = call float @dx.op.binary.f32(i32 35, float %5495, float 0.000000e+00)  ; FMax(a,b)
  %5618 = call float @dx.op.binary.f32(i32 35, float %5552, float 0.000000e+00)  ; FMax(a,b)
  %5619 = call float @dx.op.binary.f32(i32 35, float %5609, float 0.000000e+00)  ; FMax(a,b)
  %5620 = call float @dx.op.binary.f32(i32 35, float %5496, float 0.000000e+00)  ; FMax(a,b)
  %5621 = call float @dx.op.binary.f32(i32 35, float %5553, float 0.000000e+00)  ; FMax(a,b)
  %5622 = call float @dx.op.binary.f32(i32 35, float %5610, float 0.000000e+00)  ; FMax(a,b)
  %5623 = call float @dx.op.binary.f32(i32 35, float %5502, float 0.000000e+00)  ; FMax(a,b)
  %5624 = call float @dx.op.binary.f32(i32 35, float %5559, float 0.000000e+00)  ; FMax(a,b)
  %5625 = call float @dx.op.binary.f32(i32 35, float %5616, float 0.000000e+00)  ; FMax(a,b)
  %5626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5627 = extractvalue %dx.types.CBufRet.f32 %5626, 0
  %5628 = call float @dx.op.binary.f32(i32 36, float %5406, float %5627)  ; FMin(a,b)
  %5629 = fmul fast float %5628, %5429
  %5630 = fsub fast float 1.000000e+00, %5629
  %5631 = bitcast float %5630 to i32
  %5632 = sub nsw i32 2129859010, %5631
  %5633 = bitcast i32 %5632 to float
  %5634 = call float @dx.op.binary.f32(i32 36, float %5407, float %5627)  ; FMin(a,b)
  %5635 = fmul fast float %5634, %5429
  %5636 = fsub fast float 1.000000e+00, %5635
  %5637 = bitcast float %5636 to i32
  %5638 = sub nsw i32 2129859010, %5637
  %5639 = bitcast i32 %5638 to float
  %5640 = call float @dx.op.binary.f32(i32 36, float %5408, float %5627)  ; FMin(a,b)
  %5641 = fmul fast float %5640, %5429
  %5642 = fsub fast float 1.000000e+00, %5641
  %5643 = bitcast float %5642 to i32
  %5644 = sub nsw i32 2129859010, %5643
  %5645 = bitcast i32 %5644 to float
  %5646 = fmul fast float %5617, %5428
  %5647 = fmul fast float %5646, %5633
  %5648 = fmul fast float %5618, %5428
  %5649 = fmul fast float %5648, %5639
  %5650 = fmul fast float %5619, %5428
  %5651 = fmul fast float %5650, %5645
  %5652 = call float @dx.op.binary.f32(i32 36, float %5412, float %5627)  ; FMin(a,b)
  %5653 = fmul fast float %5652, %5429
  %5654 = fsub fast float 1.000000e+00, %5653
  %5655 = bitcast float %5654 to i32
  %5656 = sub nsw i32 2129859010, %5655
  %5657 = bitcast i32 %5656 to float
  %5658 = call float @dx.op.binary.f32(i32 36, float %5413, float %5627)  ; FMin(a,b)
  %5659 = fmul fast float %5658, %5429
  %5660 = fsub fast float 1.000000e+00, %5659
  %5661 = bitcast float %5660 to i32
  %5662 = sub nsw i32 2129859010, %5661
  %5663 = bitcast i32 %5662 to float
  %5664 = call float @dx.op.binary.f32(i32 36, float %5417, float %5627)  ; FMin(a,b)
  %5665 = fmul fast float %5664, %5429
  %5666 = fsub fast float 1.000000e+00, %5665
  %5667 = bitcast float %5666 to i32
  %5668 = sub nsw i32 2129859010, %5667
  %5669 = bitcast i32 %5668 to float
  %5670 = fmul fast float %5623, %5428
  %5671 = fmul fast float %5670, %5657
  %5672 = fmul fast float %5624, %5428
  %5673 = fmul fast float %5672, %5663
  %5674 = fmul fast float %5625, %5428
  %5675 = fmul fast float %5674, %5669
  %5676 = call float @dx.op.dot3.f32(i32 55, float %5647, float %5649, float %5651, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5677 = select i1 %213, float 0.000000e+00, float %5647
  %5678 = select i1 %213, float %5676, float %5649
  %5679 = select i1 %213, float 0.000000e+00, float %5651
  %5680 = call float @dx.op.dot3.f32(i32 55, float %5620, float %5621, float %5622, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5681 = select i1 %213, float 0.000000e+00, float %5620
  %5682 = select i1 %213, float %5680, float %5621
  %5683 = select i1 %213, float 0.000000e+00, float %5622
  %5684 = call float @dx.op.dot3.f32(i32 55, float %5671, float %5673, float %5675, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5685 = select i1 %213, float 0.000000e+00, float %5671
  %5686 = select i1 %213, float %5684, float %5673
  %5687 = select i1 %213, float 0.000000e+00, float %5675
  %5688 = fmul fast float %4414, %4414
  %5689 = call float @dx.op.unary.f32(i32 7, float %5688)  ; Saturate(value)
  %5690 = fmul fast float %5419, 9.843750e-01
  %5691 = fmul fast float %5415, 9.843750e-01
  %5692 = fadd fast float %5690, 7.812500e-03
  %5693 = fadd fast float %5691, 7.812500e-03
  %5694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %5692, float %5693, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5695 = extractvalue %dx.types.ResRet.f32 %5694, 0
  %5696 = extractvalue %dx.types.ResRet.f32 %5694, 1
  %5697 = extractvalue %dx.types.ResRet.f32 %5694, 2
  %5698 = extractvalue %dx.types.ResRet.f32 %5694, 3
  %5699 = fsub fast float 1.000000e+00, %5689
  %5700 = fsub fast float %5697, %5695
  %5701 = fsub fast float %5698, %5696
  %5702 = fmul fast float %5700, %5699
  %5703 = fmul fast float %5701, %5699
  %5704 = fadd fast float %5702, %5695
  %5705 = fadd fast float %5703, %5696
  %5706 = fmul fast float %5704, %5412
  %5707 = fmul fast float %5704, %5413
  %5708 = fmul fast float %5704, %5417
  %5709 = fadd fast float %5706, %5705
  %5710 = fadd fast float %5707, %5705
  %5711 = fadd fast float %5708, %5705
  %5712 = fcmp fast ogt float %5066, 0.000000e+00
  br i1 %5712, label %5713, label %5739

; <label>:5713                                    ; preds = %5594
  %5714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5066, float %5419, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5715 = extractvalue %dx.types.ResRet.f32 %5714, 0
  %5716 = extractvalue %dx.types.ResRet.f32 %5714, 1
  %5717 = extractvalue %dx.types.ResRet.f32 %5714, 2
  %5718 = fadd fast float %5715, -5.000000e-01
  %5719 = fadd fast float %5716, -5.000000e-01
  %5720 = fadd fast float %5717, -5.000000e-01
  %5721 = fsub fast float 1.000000e+00, %5412
  %5722 = fsub fast float 1.000000e+00, %5413
  %5723 = fsub fast float 1.000000e+00, %5417
  %5724 = fmul fast float %5412, 4.000000e+00
  %5725 = fmul fast float %5724, %5721
  %5726 = fmul fast float %5725, %5718
  %5727 = fmul fast float %5413, 4.000000e+00
  %5728 = fmul fast float %5727, %5722
  %5729 = fmul fast float %5728, %5719
  %5730 = fmul fast float %5417, 4.000000e+00
  %5731 = fmul fast float %5730, %5723
  %5732 = fmul fast float %5731, %5720
  %5733 = fadd fast float %5726, %5709
  %5734 = fadd fast float %5729, %5710
  %5735 = fadd fast float %5732, %5711
  %5736 = call float @dx.op.unary.f32(i32 7, float %5733)  ; Saturate(value)
  %5737 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5738 = call float @dx.op.unary.f32(i32 7, float %5735)  ; Saturate(value)
  br label %5739

; <label>:5739                                    ; preds = %5713, %5594
  %5740 = phi float [ %5736, %5713 ], [ %5709, %5594 ]
  %5741 = phi float [ %5737, %5713 ], [ %5710, %5594 ]
  %5742 = phi float [ %5738, %5713 ], [ %5711, %5594 ]
  %5743 = call float @dx.op.binary.f32(i32 35, float %5741, float %5742)  ; FMax(a,b)
  %5744 = call float @dx.op.binary.f32(i32 35, float %5740, float %5743)  ; FMax(a,b)
  %5745 = fsub fast float 1.000000e+00, %5744
  %5746 = fmul fast float %5744, %5415
  %5747 = fadd fast float %5746, %5415
  %5748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.f32 %5748, 2
  %5750 = extractvalue %dx.types.CBufRet.f32 %5748, 3
  %5751 = fmul fast float %5747, %5749
  %5752 = fadd fast float %5751, %5750
  %5753 = call float @dx.op.unary.f32(i32 7, float %5752)  ; Saturate(value)
  %5754 = fsub fast float 1.000000e+00, %5440
  %5755 = fadd fast float %5754, %5753
  %5756 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5757 = fcmp fast olt float %5756, 1.000000e+00
  br i1 %5757, label %5758, label %6206

; <label>:5758                                    ; preds = %5739
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 2
  %5761 = extractvalue %dx.types.CBufRet.f32 %5759, 3
  %5762 = fmul fast float %5760, %97
  %5763 = fmul fast float %5761, %98
  %5764 = fptoui float %5762 to i32
  %5765 = fptoui float %5763 to i32
  %5766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5767 = extractvalue %dx.types.CBufRet.f32 %5766, 0
  %5768 = extractvalue %dx.types.CBufRet.f32 %5766, 2
  %5769 = extractvalue %dx.types.CBufRet.f32 %5766, 3
  %5770 = fadd fast float %85, -4.000000e+00
  %5771 = call float @dx.op.binary.f32(i32 35, float %5770, float 0.000000e+00)  ; FMax(a,b)
  %5772 = fadd fast float %5771, %5767
  %5773 = fmul fast float %5772, %5768
  %5774 = call float @dx.op.unary.f32(i32 23, float %5773)  ; Log(value)
  %5775 = fmul fast float %5774, %5769
  %5776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5777 = extractvalue %dx.types.CBufRet.f32 %5776, 2
  %5778 = fmul fast float %5775, %5777
  %5779 = call float @dx.op.unary.f32(i32 7, float %5778)  ; Saturate(value)
  %5780 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5781 = extractvalue %dx.types.CBufRet.i32 %5780, 1
  %5782 = add i32 %5781, -1
  %5783 = uitofp i32 %5781 to float
  %5784 = fmul fast float %5783, %5779
  %5785 = fptoui float %5784 to i32
  %5786 = call i32 @dx.op.binary.i32(i32 40, i32 %5785, i32 %5782)  ; UMin(a,b)
  %5787 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.i32 %5787, 2
  %5789 = extractvalue %dx.types.CBufRet.i32 %5787, 3
  %5790 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5765, i32 %5788, i32 %5764)  ; UMad(a,b,c)
  %5791 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5786, i32 %5789, i32 %5790)  ; UMad(a,b,c)
  %5792 = call float @dx.op.binary.f32(i32 35, float %85, float 0.000000e+00)  ; FMax(a,b)
  %5793 = fptoui float %5792 to i32
  %5794 = lshr i32 %5793, 5
  %5795 = call i32 @dx.op.binary.i32(i32 40, i32 %5794, i32 8191)  ; UMin(a,b)
  br i1 false, label %5796, label %5803

; <label>:5796                                    ; preds = %5758
  %5797 = fadd fast float 0.000000e+00, %5427
  %5798 = call float @dx.op.dot3.f32(i32 55, float %5425, float %5426, float %5797, float %5425, float %5426, float %5797)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = call float @dx.op.unary.f32(i32 25, float %5798)  ; Rsqrt(value)
  %5800 = fmul fast float %5799, %5425
  %5801 = fmul fast float %5799, %5426
  %5802 = fmul fast float %5797, %5799
  br label %5803

; <label>:5803                                    ; preds = %5796, %5758
  %5804 = phi float [ %5800, %5796 ], [ %5425, %5758 ]
  %5805 = phi float [ %5801, %5796 ], [ %5426, %5758 ]
  %5806 = phi float [ %5802, %5796 ], [ %5427, %5758 ]
  %5807 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.i32 %5807, 2
  %5809 = add nsw i32 %5808, -1
  %5810 = call i32 @dx.op.binary.i32(i32 37, i32 %5809, i32 0)  ; IMax(a,b)
  %5811 = shl i32 %5795, 2
  %5812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5811, i32 undef)  ; BufferLoad(srv,index,wot)
  %5813 = extractvalue %dx.types.ResRet.i32 %5812, 0
  %5814 = lshr i32 %5813, 16
  %5815 = and i32 %5813, 65535
  %5816 = lshr i32 %5813, 21
  %5817 = lshr i32 %5815, 5
  %5818 = call i32 @dx.op.binary.i32(i32 40, i32 %5817, i32 %5810)  ; UMin(a,b)
  %5819 = icmp ugt i32 %5816, %5818
  br i1 %5819, label %6182, label %5820

; <label>:5820                                    ; preds = %5803
  br label %5821

; <label>:5821                                    ; preds = %6174, %5820
  %5822 = phi float [ %6175, %6174 ], [ 0.000000e+00, %5820 ]
  %5823 = phi float [ %6176, %6174 ], [ 0.000000e+00, %5820 ]
  %5824 = phi float [ %6177, %6174 ], [ 0.000000e+00, %5820 ]
  %5825 = phi float [ %6178, %6174 ], [ 1.000000e+00, %5820 ]
  %5826 = phi i32 [ %6179, %6174 ], [ %5816, %5820 ]
  %5827 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5828 = extractvalue %dx.types.CBufRet.i32 %5827, 2
  %5829 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5791, i32 %5828, i32 %5826)  ; UMad(a,b,c)
  %5830 = shl i32 %5829, 2
  %5831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5830, i32 undef)  ; BufferLoad(srv,index,wot)
  %5832 = extractvalue %dx.types.ResRet.i32 %5831, 0
  %5833 = shl i32 %5826, 5
  %5834 = sub nsw i32 %5814, %5833
  %5835 = call i32 @dx.op.binary.i32(i32 37, i32 %5834, i32 0)  ; IMax(a,b)
  %5836 = call i32 @dx.op.binary.i32(i32 38, i32 %5835, i32 31)  ; IMin(a,b)
  %5837 = sub nsw i32 1, %5814
  %5838 = add nsw i32 %5837, %5815
  %5839 = call i32 @dx.op.binary.i32(i32 37, i32 %5838, i32 0)  ; IMax(a,b)
  %5840 = call i32 @dx.op.binary.i32(i32 38, i32 %5839, i32 32)  ; IMin(a,b)
  %5841 = and i32 %5840, 31
  %5842 = shl i32 -1, %5841
  %5843 = xor i32 %5842, -1
  %5844 = and i32 %5836, 31
  %5845 = shl i32 %5843, %5844
  %5846 = icmp eq i32 %5840, 32
  %5847 = select i1 %5846, i32 -1, i32 %5845
  %5848 = and i32 %5847, %5832
  %5849 = icmp eq i32 %5848, 0
  br i1 %5849, label %6174, label %5850

; <label>:5850                                    ; preds = %5821
  br label %5851

; <label>:5851                                    ; preds = %5957, %5850
  %5852 = phi float [ %5958, %5957 ], [ %5822, %5850 ]
  %5853 = phi float [ %5959, %5957 ], [ %5823, %5850 ]
  %5854 = phi float [ %5960, %5957 ], [ %5824, %5850 ]
  %5855 = phi float [ %5961, %5957 ], [ %5825, %5850 ]
  %5856 = phi i32 [ %5861, %5957 ], [ %5848, %5850 ]
  %5857 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5856)  ; FirstbitLo(value)
  %5858 = add i32 %5857, %5833
  %5859 = and i32 %5857, 31
  %5860 = shl i32 1, %5859
  %5861 = xor i32 %5860, %5856
  %5862 = mul i32 %5858, 72
  %5863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5862, i32 undef)  ; BufferLoad(srv,index,wot)
  %5864 = extractvalue %dx.types.ResRet.f32 %5863, 0
  %5865 = extractvalue %dx.types.ResRet.f32 %5863, 1
  %5866 = extractvalue %dx.types.ResRet.f32 %5863, 2
  %5867 = add i32 %5862, 12
  %5868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5867, i32 undef)  ; BufferLoad(srv,index,wot)
  %5869 = extractvalue %dx.types.ResRet.i32 %5868, 0
  %5870 = add i32 %5862, 16
  %5871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5870, i32 undef)  ; BufferLoad(srv,index,wot)
  %5872 = extractvalue %dx.types.ResRet.f32 %5871, 0
  %5873 = extractvalue %dx.types.ResRet.f32 %5871, 1
  %5874 = extractvalue %dx.types.ResRet.f32 %5871, 2
  %5875 = add i32 %5862, 28
  %5876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5875, i32 undef)  ; BufferLoad(srv,index,wot)
  %5877 = extractvalue %dx.types.ResRet.f32 %5876, 0
  %5878 = add i32 %5862, 32
  %5879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5878, i32 undef)  ; BufferLoad(srv,index,wot)
  %5880 = extractvalue %dx.types.ResRet.f32 %5879, 0
  %5881 = extractvalue %dx.types.ResRet.f32 %5879, 1
  %5882 = extractvalue %dx.types.ResRet.f32 %5879, 2
  %5883 = extractvalue %dx.types.ResRet.f32 %5879, 3
  %5884 = add i32 %5862, 48
  %5885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5884, i32 undef)  ; BufferLoad(srv,index,wot)
  %5886 = extractvalue %dx.types.ResRet.f32 %5885, 0
  %5887 = extractvalue %dx.types.ResRet.f32 %5885, 1
  %5888 = add i32 %5862, 56
  %5889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5888, i32 undef)  ; BufferLoad(srv,index,wot)
  %5890 = extractvalue %dx.types.ResRet.f32 %5889, 0
  %5891 = extractvalue %dx.types.ResRet.f32 %5889, 1
  %5892 = add i32 %5862, 64
  %5893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5892, i32 undef)  ; BufferLoad(srv,index,wot)
  %5894 = extractvalue %dx.types.ResRet.f32 %5893, 0
  %5895 = extractvalue %dx.types.ResRet.f32 %5893, 1
  %5896 = mul i32 %5858, 60
  %5897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5896, i32 undef)  ; BufferLoad(srv,index,wot)
  %5898 = extractvalue %dx.types.ResRet.f32 %5897, 0
  %5899 = extractvalue %dx.types.ResRet.f32 %5897, 1
  %5900 = extractvalue %dx.types.ResRet.f32 %5897, 2
  %5901 = add i32 %5896, 12
  %5902 = add i32 %5896, 48
  %5903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5902, i32 undef)  ; BufferLoad(srv,index,wot)
  %5904 = extractvalue %dx.types.ResRet.f32 %5903, 0
  %5905 = extractvalue %dx.types.ResRet.f32 %5903, 1
  %5906 = extractvalue %dx.types.ResRet.f32 %5903, 2
  %5907 = and i32 %5869, 32767
  %5908 = bitcast float %5864 to i32
  %5909 = icmp eq i32 %5908, -1
  %5910 = bitcast float %5865 to i32
  %5911 = and i32 %5869, 32768
  %5912 = icmp ne i32 %5911, 0
  %5913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5913, 0
  %5915 = extractvalue %dx.types.CBufRet.f32 %5913, 1
  %5916 = extractvalue %dx.types.CBufRet.f32 %5913, 2
  %5917 = fsub fast float %5898, %5914
  %5918 = fsub fast float %5899, %5915
  %5919 = fsub fast float %5900, %5916
  %5920 = fsub fast float %152, %5917
  %5921 = fsub fast float %153, %5918
  %5922 = fsub fast float %154, %5919
  %5923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5901, i32 undef)  ; BufferLoad(srv,index,wot)
  %5924 = extractvalue %dx.types.ResRet.f32 %5923, 0
  %5925 = extractvalue %dx.types.ResRet.f32 %5923, 1
  %5926 = extractvalue %dx.types.ResRet.f32 %5923, 2
  %5927 = call float @dx.op.dot3.f32(i32 55, float %5920, float %5921, float %5922, float %5924, float %5925, float %5926)  ; Dot3(ax,ay,az,bx,by,bz)
  %5928 = add i32 %5896, 24
  %5929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5928, i32 undef)  ; BufferLoad(srv,index,wot)
  %5930 = extractvalue %dx.types.ResRet.f32 %5929, 0
  %5931 = extractvalue %dx.types.ResRet.f32 %5929, 1
  %5932 = extractvalue %dx.types.ResRet.f32 %5929, 2
  %5933 = call float @dx.op.dot3.f32(i32 55, float %5920, float %5921, float %5922, float %5930, float %5931, float %5932)  ; Dot3(ax,ay,az,bx,by,bz)
  %5934 = add i32 %5896, 36
  %5935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5934, i32 undef)  ; BufferLoad(srv,index,wot)
  %5936 = extractvalue %dx.types.ResRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.ResRet.f32 %5935, 1
  %5938 = extractvalue %dx.types.ResRet.f32 %5935, 2
  %5939 = call float @dx.op.dot3.f32(i32 55, float %5920, float %5921, float %5922, float %5936, float %5937, float %5938)  ; Dot3(ax,ay,az,bx,by,bz)
  %5940 = call float @dx.op.unary.f32(i32 6, float %5927)  ; FAbs(value)
  %5941 = call float @dx.op.unary.f32(i32 6, float %5933)  ; FAbs(value)
  %5942 = call float @dx.op.unary.f32(i32 6, float %5939)  ; FAbs(value)
  %5943 = fsub fast float %5904, %5940
  %5944 = fsub fast float %5905, %5941
  %5945 = fsub fast float %5906, %5942
  %5946 = fmul fast float %5943, %5872
  %5947 = fmul fast float %5944, %5873
  %5948 = fmul fast float %5945, %5874
  %5949 = call float @dx.op.binary.f32(i32 36, float %5947, float %5948)  ; FMin(a,b)
  %5950 = call float @dx.op.binary.f32(i32 36, float %5946, float %5949)  ; FMin(a,b)
  %5951 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5952 = call float @dx.op.binary.f32(i32 36, float %5855, float %5951)  ; FMin(a,b)
  %5953 = uitofp i1 %5912 to float
  %5954 = fsub fast float 1.000000e+00, %5953
  %5955 = fmul fast float %5952, %5954
  %5956 = fcmp fast ogt float %5955, 0.000000e+00
  br i1 %5956, label %5963, label %5957

; <label>:5957                                    ; preds = %6105, %5851
  %5958 = phi float [ %6169, %6105 ], [ %5852, %5851 ]
  %5959 = phi float [ %6170, %6105 ], [ %5853, %5851 ]
  %5960 = phi float [ %6171, %6105 ], [ %5854, %5851 ]
  %5961 = phi float [ %6172, %6105 ], [ %5855, %5851 ]
  %5962 = icmp eq i32 %5856, %5860
  br i1 %5962, label %6173, label %5851

; <label>:5963                                    ; preds = %5851
  br i1 %5909, label %6021, label %5964

; <label>:5964                                    ; preds = %5963
  %5965 = fsub fast float -0.000000e+00, %5924
  %5966 = fsub fast float -0.000000e+00, %5925
  %5967 = fsub fast float -0.000000e+00, %5926
  %5968 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %5806, float %5965, float %5966, float %5967)  ; Dot3(ax,ay,az,bx,by,bz)
  %5969 = fsub fast float -0.000000e+00, %5968
  %5970 = call float @dx.op.dot3.f32(i32 55, float %5920, float %5921, float %5922, float %5965, float %5966, float %5967)  ; Dot3(ax,ay,az,bx,by,bz)
  %5971 = fadd fast float %5970, %5887
  %5972 = fadd fast float %5886, %5970
  %5973 = fsub fast float -0.000000e+00, %5972
  %5974 = fcmp ogt float %5968, -0.000000e+00
  %5975 = select i1 %5974, float %5973, float %5971
  %5976 = call float @dx.op.unary.f32(i32 6, float %5969)  ; FAbs(value)
  %5977 = fdiv fast float 1.000000e+00, %5976
  %5978 = fmul fast float %5975, %5977
  %5979 = call float @dx.op.binary.f32(i32 35, float %5978, float 0.000000e+00)  ; FMax(a,b)
  %5980 = fsub fast float -0.000000e+00, %5930
  %5981 = fsub fast float -0.000000e+00, %5931
  %5982 = fsub fast float -0.000000e+00, %5932
  %5983 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %5806, float %5980, float %5981, float %5982)  ; Dot3(ax,ay,az,bx,by,bz)
  %5984 = fsub fast float -0.000000e+00, %5983
  %5985 = call float @dx.op.dot3.f32(i32 55, float %5920, float %5921, float %5922, float %5980, float %5981, float %5982)  ; Dot3(ax,ay,az,bx,by,bz)
  %5986 = fadd fast float %5985, %5891
  %5987 = fadd fast float %5890, %5985
  %5988 = fsub fast float -0.000000e+00, %5987
  %5989 = fcmp ogt float %5983, -0.000000e+00
  %5990 = select i1 %5989, float %5988, float %5986
  %5991 = call float @dx.op.unary.f32(i32 6, float %5984)  ; FAbs(value)
  %5992 = fdiv fast float 1.000000e+00, %5991
  %5993 = fmul fast float %5990, %5992
  %5994 = call float @dx.op.binary.f32(i32 35, float %5993, float 0.000000e+00)  ; FMax(a,b)
  %5995 = fsub fast float -0.000000e+00, %5936
  %5996 = fsub fast float -0.000000e+00, %5937
  %5997 = fsub fast float -0.000000e+00, %5938
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %5806, float %5995, float %5996, float %5997)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = fsub fast float -0.000000e+00, %5998
  %6000 = call float @dx.op.dot3.f32(i32 55, float %5920, float %5921, float %5922, float %5995, float %5996, float %5997)  ; Dot3(ax,ay,az,bx,by,bz)
  %6001 = fadd fast float %6000, %5895
  %6002 = fadd fast float %5894, %6000
  %6003 = fsub fast float -0.000000e+00, %6002
  %6004 = fcmp ogt float %5998, -0.000000e+00
  %6005 = select i1 %6004, float %6003, float %6001
  %6006 = call float @dx.op.unary.f32(i32 6, float %5999)  ; FAbs(value)
  %6007 = fdiv fast float 1.000000e+00, %6006
  %6008 = fmul fast float %6005, %6007
  %6009 = call float @dx.op.binary.f32(i32 35, float %6008, float 0.000000e+00)  ; FMax(a,b)
  %6010 = call float @dx.op.binary.f32(i32 36, float %5994, float %6009)  ; FMin(a,b)
  %6011 = call float @dx.op.binary.f32(i32 36, float %5979, float %6010)  ; FMin(a,b)
  %6012 = fmul fast float %6011, %5804
  %6013 = fmul fast float %6011, %5805
  %6014 = fmul fast float %6011, %5806
  %6015 = fadd fast float %6012, %152
  %6016 = fadd fast float %6013, %153
  %6017 = fadd fast float %6014, %154
  %6018 = fsub fast float %6015, %5864
  %6019 = fsub fast float %6016, %5865
  %6020 = fsub fast float %6017, %5866
  br label %6028

; <label>:6021                                    ; preds = %5963
  %6022 = fmul fast float %5804, 8.096000e+03
  %6023 = fmul fast float %5805, 8.096000e+03
  %6024 = fmul fast float %5806, 8.096000e+03
  %6025 = fadd fast float %6022, %152
  %6026 = fadd fast float %6023, %153
  %6027 = fadd fast float %6024, %154
  br label %6028

; <label>:6028                                    ; preds = %6021, %5964
  %6029 = phi float [ %5804, %6021 ], [ %6018, %5964 ]
  %6030 = phi float [ %5805, %6021 ], [ %6019, %5964 ]
  %6031 = phi float [ %5806, %6021 ], [ %6020, %5964 ]
  %6032 = phi float [ %6025, %6021 ], [ %6015, %5964 ]
  %6033 = phi float [ %6026, %6021 ], [ %6016, %5964 ]
  %6034 = phi float [ %6027, %6021 ], [ %6017, %5964 ]
  %6035 = fcmp fast olt float %5883, 1.000000e+00
  br i1 %6035, label %6036, label %6067, !dx.controlflow.hints !85

; <label>:6036                                    ; preds = %6028
  %6037 = fmul fast float %6031, %5881
  %6038 = fmul fast float %6030, %5882
  %6039 = fsub fast float %6037, %6038
  %6040 = fmul fast float %6029, %5882
  %6041 = fmul fast float %6031, %5880
  %6042 = fsub fast float %6040, %6041
  %6043 = fmul fast float %6030, %5880
  %6044 = fmul fast float %6029, %5881
  %6045 = fsub fast float %6043, %6044
  %6046 = fmul fast float %6039, 2.000000e+00
  %6047 = fmul fast float %6042, 2.000000e+00
  %6048 = fmul fast float %6045, 2.000000e+00
  %6049 = fmul fast float %6046, %5883
  %6050 = fmul fast float %6047, %5883
  %6051 = fmul fast float %6048, %5883
  %6052 = fmul fast float %6048, %5881
  %6053 = fmul fast float %6047, %5882
  %6054 = fmul fast float %6046, %5882
  %6055 = fmul fast float %6048, %5880
  %6056 = fmul fast float %6047, %5880
  %6057 = fmul fast float %6046, %5881
  %6058 = fadd fast float %6052, %6029
  %6059 = fadd fast float %6058, %6049
  %6060 = fsub fast float %6059, %6053
  %6061 = fsub fast float %6030, %6055
  %6062 = fadd fast float %6061, %6050
  %6063 = fadd fast float %6062, %6054
  %6064 = fadd fast float %6051, %6031
  %6065 = fsub fast float %6064, %6057
  %6066 = fadd fast float %6065, %6056
  br label %6067

; <label>:6067                                    ; preds = %6036, %6028
  %6068 = phi float [ %6060, %6036 ], [ %6029, %6028 ]
  %6069 = phi float [ %6063, %6036 ], [ %6030, %6028 ]
  %6070 = phi float [ %6066, %6036 ], [ %6031, %6028 ]
  br i1 %5909, label %6102, label %6071

; <label>:6071                                    ; preds = %6067
  %6072 = fmul fast float %5415, 0x400187C840000000
  %6073 = fadd fast float %6072, 0xC00EFC2120000000
  %6074 = fmul fast float %6073, %5415
  %6075 = fadd fast float %6074, 0x3FE5D16340000000
  %6076 = fmul fast float %6075, %5415
  %6077 = fadd fast float %6076, 1.000000e+00
  %6078 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  %6079 = fsub fast float %6032, %152
  %6080 = fsub fast float %6033, %153
  %6081 = fsub fast float %6034, %154
  %6082 = fsub fast float %6032, %5864
  %6083 = fsub fast float %6033, %5865
  %6084 = fsub fast float %6034, %5866
  %6085 = call float @dx.op.dot3.f32(i32 55, float %6079, float %6080, float %6081, float %6079, float %6080, float %6081)  ; Dot3(ax,ay,az,bx,by,bz)
  %6086 = call float @dx.op.dot3.f32(i32 55, float %6082, float %6083, float %6084, float %6082, float %6083, float %6084)  ; Dot3(ax,ay,az,bx,by,bz)
  %6087 = fadd fast float %6086, 0x3EE4F8B580000000
  %6088 = fdiv fast float %6085, %6087
  %6089 = bitcast float %6088 to i32
  %6090 = ashr i32 %6089, 1
  %6091 = add nsw i32 %6090, 532487669
  %6092 = bitcast i32 %6091 to float
  %6093 = fmul fast float %6092, %6078
  %6094 = call float @dx.op.unary.f32(i32 7, float %6093)  ; Saturate(value)
  %6095 = fmul fast float %6094, 0x4009981AE0000000
  %6096 = fsub fast float 0x40111BBD80000000, %6095
  %6097 = fmul fast float %6096, %6094
  %6098 = fadd fast float %6097, 0xC0009F6020000000
  %6099 = fmul fast float %6098, %6094
  %6100 = fadd fast float %6099, 1.000000e+00
  %6101 = call float @dx.op.unary.f32(i32 7, float %6100)  ; Saturate(value)
  br label %6105

; <label>:6102                                    ; preds = %6067
  %6103 = icmp ne i32 %5910, -1
  %6104 = zext i1 %6103 to i32
  br label %6105

; <label>:6105                                    ; preds = %6102, %6071
  %6106 = phi float [ %5415, %6102 ], [ %6101, %6071 ]
  %6107 = phi i32 [ %6104, %6102 ], [ 0, %6071 ]
  %6108 = fmul float %6106, 5.000000e+00
  %6109 = fsub float 5.000000e+00, %6108
  %6110 = icmp ne i32 %6107, 0
  %6111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6112 = extractvalue %dx.types.CBufRet.f32 %6111, 3
  %6113 = fadd fast float %6112, %6109
  %6114 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6113)  ; FMax(a,b)
  %6115 = call float @dx.op.unary.f32(i32 6, float %6068)  ; FAbs(value)
  %6116 = call float @dx.op.unary.f32(i32 6, float %6069)  ; FAbs(value)
  %6117 = fadd fast float %6116, %6115
  %6118 = call float @dx.op.unary.f32(i32 6, float %6070)  ; FAbs(value)
  %6119 = fadd fast float %6117, %6118
  %6120 = fcmp fast oeq float %6119, 0.000000e+00
  %6121 = fdiv fast float 1.000000e+00, %6119
  %6122 = select i1 %6120, float 1.000000e+00, float %6121
  %6123 = fmul fast float %6122, %6068
  %6124 = fmul fast float %6122, %6069
  %6125 = call float @dx.op.unary.f32(i32 6, float %6124)  ; FAbs(value)
  %6126 = call float @dx.op.unary.f32(i32 6, float %6123)  ; FAbs(value)
  %6127 = fsub fast float 1.000000e+00, %6125
  %6128 = fsub fast float 1.000000e+00, %6126
  %6129 = fcmp fast oge float %6123, 0.000000e+00
  %6130 = fcmp fast oge float %6124, 0.000000e+00
  %6131 = select i1 %6129, float 1.000000e+00, float -1.000000e+00
  %6132 = select i1 %6130, float 1.000000e+00, float -1.000000e+00
  %6133 = fcmp fast ole float %6070, 0.000000e+00
  %6134 = fmul fast float %6131, %6127
  %6135 = fmul fast float %6132, %6128
  %6136 = select i1 %6133, float %6134, float %6123
  %6137 = select i1 %6133, float %6135, float %6124
  %6138 = fmul fast float %6136, 5.000000e-01
  %6139 = fmul fast float %6137, 5.000000e-01
  %6140 = fadd fast float %6138, 5.000000e-01
  %6141 = fadd fast float %6139, 5.000000e-01
  %6142 = uitofp i32 %5907 to float
  %6143 = call float @dx.op.binary.f32(i32 36, float %6114, float 3.000000e+00)  ; FMin(a,b)
  %6144 = fadd fast float %6143, 2.000000e+00
  %6145 = call float @dx.op.unary.f32(i32 21, float %6144)  ; Exp(value)
  %6146 = extractvalue %dx.types.CBufRet.f32 %6111, 1
  %6147 = fmul fast float %6146, %6145
  %6148 = fmul fast float %6147, 2.000000e+00
  %6149 = fsub fast float 1.000000e+00, %6148
  %6150 = fmul fast float %6140, %6149
  %6151 = fmul fast float %6141, %6149
  %6152 = fadd fast float %6150, %6147
  %6153 = fadd fast float %6151, %6147
  %6154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %6152, float %6153, float %6142, float undef, i32 0, i32 0, i32 undef, float %6114)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6155 = extractvalue %dx.types.ResRet.f32 %6154, 0
  %6156 = extractvalue %dx.types.ResRet.f32 %6154, 1
  %6157 = extractvalue %dx.types.ResRet.f32 %6154, 2
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6158, 3
  %6160 = fmul fast float %6159, %5877
  %6161 = call float @dx.op.binary.f32(i32 36, float %5445, float %6160)  ; FMin(a,b)
  %6162 = select i1 %6110, float %6161, float %6160
  %6163 = fmul fast float %6155, %5955
  %6164 = fmul fast float %6163, %6162
  %6165 = fmul fast float %6156, %5955
  %6166 = fmul fast float %6165, %6162
  %6167 = fmul fast float %6157, %5955
  %6168 = fmul fast float %6167, %6162
  %6169 = fadd fast float %6164, %5852
  %6170 = fadd fast float %6166, %5853
  %6171 = fadd fast float %6168, %5854
  %6172 = fsub fast float %5855, %5955
  br label %5957

; <label>:6173                                    ; preds = %5957
  br label %6174

; <label>:6174                                    ; preds = %6173, %5821
  %6175 = phi float [ %5822, %5821 ], [ %5958, %6173 ]
  %6176 = phi float [ %5823, %5821 ], [ %5959, %6173 ]
  %6177 = phi float [ %5824, %5821 ], [ %5960, %6173 ]
  %6178 = phi float [ %5825, %5821 ], [ %5961, %6173 ]
  %6179 = add i32 %5826, 1
  %6180 = icmp ugt i32 %6179, %5818
  br i1 %6180, label %6181, label %5821, !llvm.loop !86

; <label>:6181                                    ; preds = %6174
  br label %6182

; <label>:6182                                    ; preds = %6181, %5803
  %6183 = phi float [ 0.000000e+00, %5803 ], [ %6175, %6181 ]
  %6184 = phi float [ 0.000000e+00, %5803 ], [ %6176, %6181 ]
  %6185 = phi float [ 0.000000e+00, %5803 ], [ %6177, %6181 ]
  %6186 = call float @dx.op.dot3.f32(i32 55, float %6183, float %6184, float %6185, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6187 = select i1 %213, float 0.000000e+00, float %6183
  %6188 = select i1 %213, float %6186, float %6184
  %6189 = select i1 %213, float 0.000000e+00, float %6185
  %6190 = fcmp fast olt float %5756, 0.000000e+00
  %6191 = call float @dx.op.unary.f32(i32 6, float %5756)  ; FAbs(value)
  %6192 = fmul fast float %6191, %5685
  %6193 = fmul fast float %6191, %5686
  %6194 = fmul fast float %6191, %5687
  %6195 = select i1 %6190, float %5685, float %6192
  %6196 = select i1 %6190, float %5686, float %6193
  %6197 = select i1 %6190, float %5687, float %6194
  %6198 = fsub fast float 1.000000e+00, %6191
  %6199 = call float @dx.op.unary.f32(i32 7, float %6198)  ; Saturate(value)
  %6200 = fmul fast float %6199, %6187
  %6201 = fmul fast float %6199, %6188
  %6202 = fmul fast float %6199, %6189
  %6203 = fadd fast float %6195, %6200
  %6204 = fadd fast float %6196, %6201
  %6205 = fadd fast float %6197, %6202
  br label %6206

; <label>:6206                                    ; preds = %6182, %5739
  %6207 = phi float [ %5685, %5739 ], [ %6203, %6182 ]
  %6208 = phi float [ %5686, %5739 ], [ %6204, %6182 ]
  %6209 = phi float [ %5687, %5739 ], [ %6205, %6182 ]
  %6210 = call float @dx.op.dot3.f32(i32 55, float %5406, float %5407, float %5408, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6211 = fcmp fast ogt float %6210, 0x3E7FF19E20000000
  %6212 = fdiv fast float 1.000000e+00, %6210
  %6213 = select i1 %6211, float %6212, float 0.000000e+00
  %6214 = fmul fast float %6213, %5406
  %6215 = fmul fast float %6213, %5407
  %6216 = fmul fast float %6213, %5408
  %6217 = fadd fast float %6214, -1.000000e+00
  %6218 = fadd fast float %6215, -1.000000e+00
  %6219 = fadd fast float %6216, -1.000000e+00
  %6220 = fmul fast float %6217, 5.000000e-01
  %6221 = fmul fast float %6218, 5.000000e-01
  %6222 = fmul fast float %6219, 5.000000e-01
  %6223 = fadd fast float %6220, 1.000000e+00
  %6224 = fadd fast float %6221, 1.000000e+00
  %6225 = fadd fast float %6222, 1.000000e+00
  %6226 = call float @dx.op.binary.f32(i32 35, float %5419, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6227 = fdiv fast float %4414, %6226
  %6228 = fcmp fast olt float %5115, 1.270000e+02
  %6229 = fcmp fast olt float %5116, 1.270000e+02
  %6230 = fcmp fast olt float %5117, 1.270000e+02
  %6231 = fmul fast float %5115, 0xBFF7154760000000
  %6232 = fmul fast float %6231, %6227
  %6233 = fmul fast float %5116, 0xBFF7154760000000
  %6234 = fmul fast float %6233, %6227
  %6235 = fmul fast float %5117, 0xBFF7154760000000
  %6236 = fmul fast float %6235, %6227
  %6237 = call float @dx.op.unary.f32(i32 21, float %6232)  ; Exp(value)
  %6238 = call float @dx.op.unary.f32(i32 21, float %6234)  ; Exp(value)
  %6239 = call float @dx.op.unary.f32(i32 21, float %6236)  ; Exp(value)
  %6240 = call float @dx.op.unary.f32(i32 7, float %6237)  ; Saturate(value)
  %6241 = call float @dx.op.unary.f32(i32 7, float %6238)  ; Saturate(value)
  %6242 = call float @dx.op.unary.f32(i32 7, float %6239)  ; Saturate(value)
  %6243 = select i1 %6228, float %6240, float 0.000000e+00
  %6244 = select i1 %6229, float %6241, float 0.000000e+00
  %6245 = select i1 %6230, float %6242, float 0.000000e+00
  %6246 = fmul fast float %6243, %5745
  %6247 = fmul fast float %6244, %5745
  %6248 = fmul fast float %6245, %5745
  %6249 = fadd fast float %6246, -1.000000e+00
  %6250 = fadd fast float %6247, -1.000000e+00
  %6251 = fadd fast float %6248, -1.000000e+00
  %6252 = fmul fast float %6249, %5063
  %6253 = fmul fast float %6250, %5063
  %6254 = fmul fast float %6251, %5063
  %6255 = fmul fast float %6207, %5740
  %6256 = fmul fast float %6208, %5741
  %6257 = fmul fast float %6209, %5742
  %6258 = fsub fast float 1.000000e+00, %5419
  %6259 = bitcast float %6258 to i32
  %6260 = sitofp i32 %6259 to float
  %6261 = fmul fast float %6260, 5.000000e+00
  %6262 = fadd fast float %6261, 0xC1EFBF8940000000
  %6263 = fptosi float %6262 to i32
  %6264 = bitcast i32 %6263 to float
  %6265 = fmul fast float %6264, %5067
  %6266 = fmul fast float %5677, %6265
  %6267 = fmul fast float %6266, %5745
  %6268 = fmul fast float %6267, %6223
  %6269 = fmul fast float %5678, %6265
  %6270 = fmul fast float %6269, %5745
  %6271 = fmul fast float %6270, %6224
  %6272 = fmul fast float %5679, %6265
  %6273 = fmul fast float %6272, %5745
  %6274 = fmul fast float %6273, %6225
  %6275 = fadd fast float %6255, %5050
  %6276 = fadd fast float %6275, %6268
  %6277 = fmul fast float %6276, %5063
  %6278 = fadd fast float %6256, %5051
  %6279 = fadd fast float %6278, %6271
  %6280 = fmul fast float %6279, %5063
  %6281 = fadd fast float %6257, %5052
  %6282 = fadd fast float %6281, %6274
  %6283 = fmul fast float %6282, %5063
  %6284 = fmul fast float %5413, 0x4012D0A400000000
  %6285 = fadd fast float %6254, 1.000000e+00
  %6286 = fadd fast float %6253, 1.000000e+00
  %6287 = fadd fast float %6252, 1.000000e+00
  %6288 = fmul fast float %5745, %5679
  %6289 = fmul fast float %5745, %5678
  %6290 = fmul fast float %5745, %5677
  %6291 = fmul fast float %5434, %5063
  %6292 = fsub fast float 1.000000e+00, %6291
  %6293 = call float @dx.op.unary.f32(i32 7, float %6292)  ; Saturate(value)
  %6294 = fsub fast float 1.000000e+00, %6293
  %6295 = fadd fast float %6284, 0x3FDB6377A0000000
  %6296 = fmul fast float %6294, %6295
  %6297 = call float @dx.op.dot3.f32(i32 55, float %5133, float %5134, float %5135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6298 = fadd fast float %6296, %6297
  %6299 = call float @dx.op.unary.f32(i32 7, float %6298)  ; Saturate(value)
  %6300 = call float @dx.op.binary.f32(i32 35, float %6299, float 0x3F847AE140000000)  ; FMax(a,b)
  %6301 = fmul fast float %6300, %6300
  %6302 = fmul fast float %6301, %6301
  %6303 = fmul fast float %6302, 0xC00A935000000000
  %6304 = call float @dx.op.unary.f32(i32 21, float %6303)  ; Exp(value)
  %6305 = fsub fast float 1.000000e+00, %6304
  %6306 = fmul fast float %6287, %5681
  %6307 = fmul fast float %6306, %6305
  %6308 = fmul fast float %6286, %5682
  %6309 = fmul fast float %6308, %6305
  %6310 = fmul fast float %6285, %5683
  %6311 = fmul fast float %6310, %6305
  %6312 = fadd fast float %6307, %6290
  %6313 = fmul fast float %6312, %5063
  %6314 = fadd fast float %6309, %6289
  %6315 = fmul fast float %6314, %5063
  %6316 = fadd fast float %6311, %6288
  %6317 = fmul fast float %6316, %5063
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6319 = extractvalue %dx.types.CBufRet.f32 %6318, 3
  %6320 = fcmp fast oeq float %6319, 0.000000e+00
  br i1 %6320, label %7924, label %6321

; <label>:6321                                    ; preds = %6206
  %6322 = extractvalue %dx.types.CBufRet.f32 %6318, 0
  %6323 = extractvalue %dx.types.CBufRet.f32 %6318, 1
  %6324 = extractvalue %dx.types.CBufRet.f32 %6318, 2
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6327 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6328 = extractvalue %dx.types.CBufRet.f32 %6325, 2
  %6329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6330 = extractvalue %dx.types.CBufRet.f32 %6329, 0
  %6331 = extractvalue %dx.types.CBufRet.f32 %6329, 1
  %6332 = call float @dx.op.dot3.f32(i32 55, float %6326, float %6327, float %6328, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6333 = select i1 %213, float %6330, float %6326
  %6334 = select i1 %213, float %6332, float %6327
  %6335 = select i1 %213, float %6331, float %6328
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 2
  %6338 = fmul fast float %6337, %104
  %6339 = fmul fast float %6337, %105
  %6340 = fmul fast float %6337, %106
  %6341 = fadd fast float %6338, %152
  %6342 = fadd fast float %6339, %153
  %6343 = fadd fast float %6340, %154
  %6344 = fcmp fast olt float %6319, 0.000000e+00
  br i1 %6344, label %7440, label %6345

; <label>:6345                                    ; preds = %6321
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 0
  %6348 = extractvalue %dx.types.CBufRet.f32 %6346, 1
  %6349 = extractvalue %dx.types.CBufRet.f32 %6346, 2
  %6350 = extractvalue %dx.types.CBufRet.f32 %6346, 3
  %6351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6352 = extractvalue %dx.types.CBufRet.f32 %6351, 0
  %6353 = extractvalue %dx.types.CBufRet.f32 %6351, 1
  %6354 = extractvalue %dx.types.CBufRet.f32 %6351, 2
  %6355 = extractvalue %dx.types.CBufRet.f32 %6351, 3
  %6356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.f32 %6356, 0
  %6358 = extractvalue %dx.types.CBufRet.f32 %6356, 1
  %6359 = extractvalue %dx.types.CBufRet.f32 %6356, 2
  %6360 = extractvalue %dx.types.CBufRet.f32 %6356, 3
  %6361 = fmul fast float %6347, %6341
  %6362 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %6348, float %6361)  ; FMad(a,b,c)
  %6363 = call float @dx.op.tertiary.f32(i32 46, float %6343, float %6349, float %6362)  ; FMad(a,b,c)
  %6364 = fadd fast float %6363, %6350
  %6365 = fmul fast float %6352, %6341
  %6366 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %6353, float %6365)  ; FMad(a,b,c)
  %6367 = call float @dx.op.tertiary.f32(i32 46, float %6343, float %6354, float %6366)  ; FMad(a,b,c)
  %6368 = fadd fast float %6367, %6355
  %6369 = fmul fast float %6357, %6341
  %6370 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %6358, float %6369)  ; FMad(a,b,c)
  %6371 = call float @dx.op.tertiary.f32(i32 46, float %6343, float %6359, float %6370)  ; FMad(a,b,c)
  %6372 = fadd fast float %6371, %6360
  %6373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6374 = extractvalue %dx.types.CBufRet.f32 %6373, 0
  %6375 = extractvalue %dx.types.CBufRet.f32 %6373, 1
  %6376 = extractvalue %dx.types.CBufRet.f32 %6373, 3
  %6377 = fmul fast float %6376, %6364
  %6378 = fmul fast float %6376, %6368
  %6379 = fadd fast float %6377, %6374
  %6380 = fadd fast float %6378, %6375
  %6381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6381, 0
  %6383 = extractvalue %dx.types.CBufRet.f32 %6381, 1
  %6384 = extractvalue %dx.types.CBufRet.f32 %6381, 3
  %6385 = fmul fast float %6384, %6364
  %6386 = fmul fast float %6384, %6368
  %6387 = fadd fast float %6385, %6382
  %6388 = fadd fast float %6386, %6383
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 1
  %6391 = fsub fast float %6390, %6372
  %6392 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6393 = fmul fast float %6391, %6392
  %6394 = fsub fast float 1.000000e+00, %6393
  %6395 = call float @dx.op.unary.f32(i32 7, float %6394)  ; Saturate(value)
  %6396 = extractvalue %dx.types.CBufRet.f32 %6381, 2
  %6397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6398 = extractvalue %dx.types.CBufRet.f32 %6397, 2
  %6399 = fadd fast float %6398, %6396
  %6400 = fcmp fast ogt float %6399, 0.000000e+00
  br i1 %6400, label %6401, label %6425

; <label>:6401                                    ; preds = %6345
  %6402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6403 = extractvalue %dx.types.CBufRet.f32 %6402, 0
  %6404 = extractvalue %dx.types.CBufRet.f32 %6402, 1
  %6405 = fsub fast float %6387, %6403
  %6406 = fsub fast float %6388, %6404
  %6407 = fcmp fast olt float %6405, 0.000000e+00
  %6408 = fcmp fast olt float %6406, 0.000000e+00
  %6409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6410 = extractvalue %dx.types.CBufRet.f32 %6409, 0
  %6411 = extractvalue %dx.types.CBufRet.f32 %6409, 1
  %6412 = extractvalue %dx.types.CBufRet.f32 %6409, 2
  %6413 = extractvalue %dx.types.CBufRet.f32 %6409, 3
  %6414 = select i1 %6407, float %6410, float %6412
  %6415 = select i1 %6408, float %6411, float %6413
  %6416 = fmul fast float %6414, %6405
  %6417 = fmul fast float %6415, %6406
  %6418 = call float @dx.op.unary.f32(i32 6, float %6416)  ; FAbs(value)
  %6419 = call float @dx.op.unary.f32(i32 6, float %6417)  ; FAbs(value)
  %6420 = extractvalue %dx.types.CBufRet.f32 %6336, 0
  %6421 = call float @dx.op.binary.f32(i32 35, float %6418, float %6419)  ; FMax(a,b)
  %6422 = fsub fast float %6420, %6421
  %6423 = call float @dx.op.unary.f32(i32 7, float %6422)  ; Saturate(value)
  %6424 = fmul fast float %6423, %6395
  br label %6425

; <label>:6425                                    ; preds = %6401, %6345
  %6426 = phi float [ %6424, %6401 ], [ 0.000000e+00, %6345 ]
  %6427 = extractvalue %dx.types.CBufRet.f32 %6373, 2
  %6428 = extractvalue %dx.types.CBufRet.f32 %6397, 1
  %6429 = fadd fast float %6428, %6427
  %6430 = fcmp fast ogt float %6429, 0.000000e+00
  %6431 = extractvalue %dx.types.CBufRet.f32 %6336, 0
  br i1 %6430, label %6432, label %6455

; <label>:6432                                    ; preds = %6425
  %6433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6434 = extractvalue %dx.types.CBufRet.f32 %6433, 0
  %6435 = extractvalue %dx.types.CBufRet.f32 %6433, 1
  %6436 = fsub fast float %6379, %6434
  %6437 = fsub fast float %6380, %6435
  %6438 = fcmp fast olt float %6436, 0.000000e+00
  %6439 = fcmp fast olt float %6437, 0.000000e+00
  %6440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6441 = extractvalue %dx.types.CBufRet.f32 %6440, 0
  %6442 = extractvalue %dx.types.CBufRet.f32 %6440, 1
  %6443 = extractvalue %dx.types.CBufRet.f32 %6440, 2
  %6444 = extractvalue %dx.types.CBufRet.f32 %6440, 3
  %6445 = select i1 %6438, float %6441, float %6443
  %6446 = select i1 %6439, float %6442, float %6444
  %6447 = fmul fast float %6445, %6436
  %6448 = fmul fast float %6446, %6437
  %6449 = call float @dx.op.unary.f32(i32 6, float %6447)  ; FAbs(value)
  %6450 = call float @dx.op.unary.f32(i32 6, float %6448)  ; FAbs(value)
  %6451 = call float @dx.op.binary.f32(i32 35, float %6449, float %6450)  ; FMax(a,b)
  %6452 = fsub fast float %6431, %6451
  %6453 = call float @dx.op.unary.f32(i32 7, float %6452)  ; Saturate(value)
  %6454 = fmul fast float %6453, %6395
  br label %6455

; <label>:6455                                    ; preds = %6432, %6425
  %6456 = phi float [ %6454, %6432 ], [ 0.000000e+00, %6425 ]
  %6457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6458 = extractvalue %dx.types.CBufRet.f32 %6457, 1
  %6459 = call float @dx.op.unary.f32(i32 7, float %6458)  ; Saturate(value)
  %6460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6461 = extractvalue %dx.types.CBufRet.f32 %6460, 0
  %6462 = extractvalue %dx.types.CBufRet.f32 %6460, 1
  %6463 = fsub fast float %6364, %6461
  %6464 = fsub fast float %6368, %6462
  %6465 = fcmp fast olt float %6463, 0.000000e+00
  %6466 = fcmp fast olt float %6464, 0.000000e+00
  %6467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6468 = extractvalue %dx.types.CBufRet.f32 %6467, 0
  %6469 = extractvalue %dx.types.CBufRet.f32 %6467, 1
  %6470 = extractvalue %dx.types.CBufRet.f32 %6467, 2
  %6471 = extractvalue %dx.types.CBufRet.f32 %6467, 3
  %6472 = select i1 %6465, float %6468, float %6470
  %6473 = select i1 %6466, float %6469, float %6471
  %6474 = fmul fast float %6472, %6463
  %6475 = fmul fast float %6473, %6464
  %6476 = call float @dx.op.unary.f32(i32 6, float %6474)  ; FAbs(value)
  %6477 = call float @dx.op.unary.f32(i32 6, float %6475)  ; FAbs(value)
  %6478 = call float @dx.op.binary.f32(i32 35, float %6476, float %6477)  ; FMax(a,b)
  %6479 = fsub fast float %6431, %6478
  %6480 = call float @dx.op.unary.f32(i32 7, float %6479)  ; Saturate(value)
  %6481 = call float @dx.op.binary.f32(i32 36, float %6480, float %6459)  ; FMin(a,b)
  %6482 = fmul fast float %6481, %6395
  %6483 = fsub fast float %6456, %6482
  %6484 = fsub fast float %6426, %6456
  %6485 = fsub fast float %6484, %6482
  %6486 = call float @dx.op.binary.f32(i32 35, float %6456, float %6426)  ; FMax(a,b)
  %6487 = call float @dx.op.binary.f32(i32 35, float %6482, float %6486)  ; FMax(a,b)
  %6488 = fcmp fast olt float %6487, 1.000000e+00
  br i1 %6488, label %6489, label %6887, !dx.controlflow.hints !88

; <label>:6489                                    ; preds = %6455
  %6490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6490, 0
  %6492 = fcmp fast une float %6491, 0.000000e+00
  br i1 %6492, label %6493, label %6887, !dx.controlflow.hints !89

; <label>:6493                                    ; preds = %6489
  %6494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6495 = extractvalue %dx.types.CBufRet.f32 %6494, 0
  %6496 = extractvalue %dx.types.CBufRet.f32 %6494, 1
  %6497 = extractvalue %dx.types.CBufRet.f32 %6494, 2
  %6498 = extractvalue %dx.types.CBufRet.f32 %6494, 3
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 0
  %6501 = extractvalue %dx.types.CBufRet.f32 %6499, 1
  %6502 = extractvalue %dx.types.CBufRet.f32 %6499, 2
  %6503 = extractvalue %dx.types.CBufRet.f32 %6499, 3
  %6504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6505 = extractvalue %dx.types.CBufRet.f32 %6504, 0
  %6506 = extractvalue %dx.types.CBufRet.f32 %6504, 1
  %6507 = extractvalue %dx.types.CBufRet.f32 %6504, 2
  %6508 = extractvalue %dx.types.CBufRet.f32 %6504, 3
  %6509 = fmul fast float %6495, %6341
  %6510 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %6496, float %6509)  ; FMad(a,b,c)
  %6511 = call float @dx.op.tertiary.f32(i32 46, float %6343, float %6497, float %6510)  ; FMad(a,b,c)
  %6512 = fadd fast float %6511, %6498
  %6513 = fmul fast float %6500, %6341
  %6514 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %6501, float %6513)  ; FMad(a,b,c)
  %6515 = call float @dx.op.tertiary.f32(i32 46, float %6343, float %6502, float %6514)  ; FMad(a,b,c)
  %6516 = fadd fast float %6515, %6503
  %6517 = fmul fast float %6505, %6341
  %6518 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %6506, float %6517)  ; FMad(a,b,c)
  %6519 = call float @dx.op.tertiary.f32(i32 46, float %6343, float %6507, float %6518)  ; FMad(a,b,c)
  %6520 = fadd fast float %6519, %6508
  %6521 = fcmp fast oge float %6512, 1.000000e+00
  %6522 = fcmp fast oge float %6516, 1.000000e+00
  %6523 = or i1 %6521, %6522
  %6524 = fcmp fast olt float %6512, 0.000000e+00
  %6525 = fcmp fast olt float %6516, 0.000000e+00
  %6526 = or i1 %6524, %6525
  %6527 = or i1 %6523, %6526
  br i1 %6527, label %6887, label %6528, !dx.controlflow.hints !90

; <label>:6528                                    ; preds = %6493
  %6529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6530 = extractvalue %dx.types.CBufRet.f32 %6529, 0
  %6531 = extractvalue %dx.types.CBufRet.f32 %6529, 1
  %6532 = extractvalue %dx.types.CBufRet.f32 %6529, 2
  %6533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6534 = extractvalue %dx.types.CBufRet.i32 %6533, 2
  %6535 = uitofp i32 %6534 to float
  %6536 = extractvalue %dx.types.CBufRet.i32 %6533, 3
  %6537 = uitofp i32 %6536 to float
  %6538 = extractvalue %dx.types.CBufRet.f32 %6529, 3
  %6539 = fmul fast float %6538, 2.000000e+00
  %6540 = fsub fast float %6512, %6530
  %6541 = fsub fast float %6516, %6531
  %6542 = fmul fast float %6539, %6540
  %6543 = fmul fast float %6539, %6541
  %6544 = fdiv fast float 1.000000e+00, %6324
  %6545 = fmul fast float %6543, %6544
  %6546 = call float @dx.op.unary.f32(i32 6, float %6545)  ; FAbs(value)
  %6547 = fmul fast float %6532, %6343
  %6548 = fmul fast float %6547, %6539
  %6549 = call float @dx.op.unary.f32(i32 6, float %6548)  ; FAbs(value)
  %6550 = call float @dx.op.unary.f32(i32 6, float %6542)  ; FAbs(value)
  %6551 = call float @dx.op.binary.f32(i32 35, float %6549, float %6546)  ; FMax(a,b)
  %6552 = call float @dx.op.binary.f32(i32 35, float %6550, float %6551)  ; FMax(a,b)
  %6553 = fmul fast float %6552, 2.000000e+00
  %6554 = call float @dx.op.unary.f32(i32 23, float %6553)  ; Log(value)
  %6555 = call float @dx.op.binary.f32(i32 35, float %6554, float %6535)  ; FMax(a,b)
  %6556 = call float @dx.op.unary.f32(i32 22, float %6555)  ; Frc(value)
  %6557 = fadd fast float %6556, 0xBFEA666660000000
  %6558 = fmul fast float %6557, 8.000000e+00
  %6559 = call float @dx.op.unary.f32(i32 7, float %6558)  ; Saturate(value)
  %6560 = call float @dx.op.unary.f32(i32 27, float %6555)  ; Round_ni(value)
  %6561 = fadd fast float %6560, %6559
  %6562 = call float @dx.op.binary.f32(i32 36, float %6561, float %6537)  ; FMin(a,b)
  %6563 = call float @dx.op.unary.f32(i32 27, float %6562)  ; Round_ni(value)
  %6564 = fsub fast float -0.000000e+00, %6563
  %6565 = call float @dx.op.unary.f32(i32 21, float %6564)  ; Exp(value)
  %6566 = fmul fast float %6565, %6539
  %6567 = fmul fast float %6566, %6512
  %6568 = fmul fast float %6566, %6516
  %6569 = fmul fast float %6567, 2.500000e-01
  %6570 = fmul fast float %6568, 2.500000e-01
  %6571 = fadd fast float %6569, 5.000000e-01
  %6572 = fadd fast float %6570, 5.000000e-01
  %6573 = fsub fast float %6537, %6535
  %6574 = fptoui float %6573 to i32
  %6575 = add i32 %6574, 320
  %6576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %6575)  ; CBufferLoadLegacy(handle,regIndex)
  %6577 = extractvalue %dx.types.CBufRet.f32 %6576, 0
  %6578 = extractvalue %dx.types.CBufRet.f32 %6576, 1
  %6579 = fcmp fast une float %6562, %6537
  %6580 = fsub fast float %6512, %6577
  %6581 = fsub fast float %6516, %6578
  %6582 = call float @dx.op.unary.f32(i32 6, float %6580)  ; FAbs(value)
  %6583 = call float @dx.op.unary.f32(i32 6, float %6581)  ; FAbs(value)
  %6584 = fmul fast float %6582, %6566
  %6585 = fmul fast float %6583, %6566
  %6586 = fcmp fast olt float %6584, 1.000000e+00
  %6587 = fcmp fast olt float %6585, 1.000000e+00
  %6588 = and i1 %6586, %6587
  %6589 = or i1 %6579, %6588
  br i1 %6589, label %6590, label %6887, !dx.controlflow.hints !91

; <label>:6590                                    ; preds = %6528
  %6591 = fmul fast float %6568, 5.000000e-01
  %6592 = fmul fast float %6567, 5.000000e-01
  %6593 = fadd fast float %6591, 5.000000e-01
  %6594 = fadd fast float %6592, 5.000000e-01
  %6595 = sitofp i32 %6534 to float
  %6596 = fsub fast float %6562, %6595
  %6597 = call float @dx.op.unary.f32(i32 27, float %6596)  ; Round_ni(value)
  %6598 = call float @dx.op.unary.f32(i32 22, float %6562)  ; Frc(value)
  %6599 = call float @dx.op.unary.f32(i32 22, float %6594)  ; Frc(value)
  %6600 = call float @dx.op.unary.f32(i32 22, float %6593)  ; Frc(value)
  %6601 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6599, float %6600, float %6597, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6602 = extractvalue %dx.types.ResRet.f32 %6601, 0
  %6603 = extractvalue %dx.types.ResRet.f32 %6601, 1
  %6604 = extractvalue %dx.types.ResRet.f32 %6601, 2
  %6605 = extractvalue %dx.types.ResRet.f32 %6601, 3
  %6606 = fcmp fast ogt float %6598, 0.000000e+00
  br i1 %6606, label %6607, label %6628, !dx.controlflow.hints !92

; <label>:6607                                    ; preds = %6590
  %6608 = fadd fast float %6597, 1.000000e+00
  %6609 = call float @dx.op.unary.f32(i32 22, float %6571)  ; Frc(value)
  %6610 = call float @dx.op.unary.f32(i32 22, float %6572)  ; Frc(value)
  %6611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6609, float %6610, float %6608, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6612 = extractvalue %dx.types.ResRet.f32 %6611, 0
  %6613 = extractvalue %dx.types.ResRet.f32 %6611, 1
  %6614 = extractvalue %dx.types.ResRet.f32 %6611, 2
  %6615 = extractvalue %dx.types.ResRet.f32 %6611, 3
  %6616 = fsub fast float %6612, %6602
  %6617 = fsub fast float %6613, %6603
  %6618 = fsub fast float %6614, %6604
  %6619 = fsub fast float %6615, %6605
  %6620 = fmul fast float %6616, %6598
  %6621 = fmul fast float %6617, %6598
  %6622 = fmul fast float %6618, %6598
  %6623 = fmul fast float %6619, %6598
  %6624 = fadd fast float %6620, %6602
  %6625 = fadd fast float %6621, %6603
  %6626 = fadd fast float %6622, %6604
  %6627 = fadd fast float %6623, %6605
  br label %6628

; <label>:6628                                    ; preds = %6607, %6590
  %6629 = phi float [ %6624, %6607 ], [ %6602, %6590 ]
  %6630 = phi float [ %6625, %6607 ], [ %6603, %6590 ]
  %6631 = phi float [ %6626, %6607 ], [ %6604, %6590 ]
  %6632 = phi float [ %6627, %6607 ], [ %6605, %6590 ]
  %6633 = fadd fast float %6629, -5.000000e-01
  %6634 = fadd fast float %6631, -5.000000e-01
  %6635 = fmul fast float %6633, 0xBFD5555560000000
  %6636 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6634, float %6635)  ; FMad(a,b,c)
  %6637 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6630, float 0.000000e+00)  ; FMad(a,b,c)
  %6638 = fadd fast float %6637, %6632
  %6639 = fmul fast float %6633, -7.500000e-01
  %6640 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6634, float %6639)  ; FMad(a,b,c)
  %6641 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6630, float 0.000000e+00)  ; FMad(a,b,c)
  %6642 = fadd fast float %6641, %6632
  %6643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6644 = extractvalue %dx.types.CBufRet.f32 %6643, 0
  %6645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6646 = extractvalue %dx.types.CBufRet.f32 %6645, 0
  %6647 = extractvalue %dx.types.CBufRet.f32 %6645, 1
  %6648 = extractvalue %dx.types.CBufRet.f32 %6645, 2
  %6649 = extractvalue %dx.types.CBufRet.f32 %6645, 3
  %6650 = fsub fast float %6646, %6636
  %6651 = fsub fast float %6647, %6638
  %6652 = fsub fast float %6648, %6640
  %6653 = fsub fast float %6649, %6642
  %6654 = fmul fast float %6650, %6644
  %6655 = fmul fast float %6651, %6644
  %6656 = fmul fast float %6652, %6644
  %6657 = fmul fast float %6653, %6644
  %6658 = fadd fast float %6654, %6636
  %6659 = fadd fast float %6655, %6638
  %6660 = fadd fast float %6656, %6640
  %6661 = fadd fast float %6657, %6642
  %6662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6663 = extractvalue %dx.types.ResRet.i32 %6662, 0
  %6664 = and i32 %6663, 536870911
  %6665 = uitofp i32 %6664 to float
  %6666 = fmul fast float %6665, %6512
  %6667 = fmul fast float %6665, %6516
  %6668 = fptoui float %6666 to i32
  %6669 = fptoui float %6667 to i32
  %6670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6671 = extractvalue %dx.types.ResRet.i32 %6670, 0
  %6672 = and i32 %6671, 31
  %6673 = lshr i32 %6668, %6672
  %6674 = lshr i32 %6669, %6672
  %6675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6676 = extractvalue %dx.types.ResRet.i32 %6675, 0
  %6677 = and i32 %6676, 31
  %6678 = shl i32 1, %6677
  %6679 = call i32 @dx.op.binary.i32(i32 40, i32 %6678, i32 4)  ; UMin(a,b)
  %6680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6681 = extractvalue %dx.types.ResRet.i32 %6680, 0
  %6682 = extractvalue %dx.types.ResRet.i32 %6680, 1
  %6683 = icmp eq i32 %6679, 0
  br i1 %6683, label %6725, label %6684

; <label>:6684                                    ; preds = %6628
  br label %6685

; <label>:6685                                    ; preds = %6713, %6684
  %6686 = phi i32 [ %6716, %6713 ], [ 0, %6684 ]
  %6687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6688 = extractvalue %dx.types.ResRet.i32 %6687, 0
  %6689 = lshr i32 %6688, 16
  %6690 = and i32 %6689, 31
  %6691 = shl i32 %6674, %6690
  %6692 = add i32 %6691, %6673
  %6693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6694 = extractvalue %dx.types.ResRet.i32 %6693, 0
  %6695 = and i32 %6694, 31
  %6696 = shl i32 %6692, %6695
  %6697 = add i32 %6696, %6686
  %6698 = shl i32 %6697, 2
  %6699 = add i32 %6698, 32
  %6700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6699, i32 undef)  ; BufferLoad(srv,index,wot)
  %6701 = extractvalue %dx.types.ResRet.i32 %6700, 0
  %6702 = icmp slt i32 %6701, 0
  %6703 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6686
  %6704 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6686
  %6705 = bitcast float* %6703 to i32*
  %6706 = bitcast float* %6704 to i32*
  br i1 %6702, label %6707, label %6713

; <label>:6707                                    ; preds = %6685
  %6708 = and i32 %6701, 1073741823
  %6709 = add nuw nsw i32 %6708, 20
  %6710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6709, i32 undef)  ; BufferLoad(srv,index,wot)
  %6711 = extractvalue %dx.types.ResRet.i32 %6710, 0
  %6712 = extractvalue %dx.types.ResRet.i32 %6710, 1
  br label %6713

; <label>:6713                                    ; preds = %6707, %6685
  %6714 = phi i32 [ %6711, %6707 ], [ %6681, %6685 ]
  %6715 = phi i32 [ %6712, %6707 ], [ %6682, %6685 ]
  store i32 %6714, i32* %6705, align 4
  store i32 %6715, i32* %6706, align 4
  %6716 = add nuw i32 %6686, 1
  %6717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.i32 %6717, 2
  %6719 = icmp eq i32 %6718, 0
  %6720 = icmp ugt i32 %6701, -1073741825
  %6721 = and i1 %6720, %6719
  %6722 = icmp ult i32 %6716, %6679
  %6723 = and i1 %6721, %6722
  br i1 %6723, label %6685, label %6724

; <label>:6724                                    ; preds = %6713
  br label %6725

; <label>:6725                                    ; preds = %6724, %6628
  %6726 = phi i32 [ 0, %6628 ], [ %6716, %6724 ]
  %6727 = extractvalue %dx.types.CBufRet.f32 %6490, 2
  %6728 = fptoui float %6727 to i32
  %6729 = icmp eq i32 %6728, 0
  br i1 %6729, label %6781, label %6730

; <label>:6730                                    ; preds = %6725
  br label %6731

; <label>:6731                                    ; preds = %6776, %6730
  %6732 = phi i32 [ %6777, %6776 ], [ %6726, %6730 ]
  %6733 = phi i32 [ %6778, %6776 ], [ 0, %6730 ]
  %6734 = lshr i32 %6733, 2
  %6735 = and i32 %6733, 3
  %6736 = add nuw nsw i32 %6734, 83
  %6737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %6736)  ; CBufferLoadLegacy(handle,regIndex)
  %6738 = extractvalue %dx.types.CBufRet.i32 %6737, 0
  %6739 = extractvalue %dx.types.CBufRet.i32 %6737, 1
  %6740 = extractvalue %dx.types.CBufRet.i32 %6737, 2
  %6741 = extractvalue %dx.types.CBufRet.i32 %6737, 3
  %6742 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %6738, i32* %6742, align 4
  %6743 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %6739, i32* %6743, align 4
  %6744 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %6740, i32* %6744, align 4
  %6745 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %6741, i32* %6745, align 4
  %6746 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %6735
  %6747 = load i32, i32* %6746, align 4, !tbaa !93, !noalias !97
  %6748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6749 = extractvalue %dx.types.ResRet.i32 %6748, 0
  %6750 = lshr i32 %6749, 16
  %6751 = and i32 %6750, 31
  %6752 = shl i32 %6674, %6751
  %6753 = add i32 %6752, %6673
  %6754 = shl i32 %6753, 2
  %6755 = add i32 %6754, %6747
  %6756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6755, i32 undef)  ; BufferLoad(srv,index,wot)
  %6757 = extractvalue %dx.types.ResRet.i32 %6756, 0
  %6758 = icmp eq i32 %6757, 0
  br i1 %6758, label %6776, label %6759

; <label>:6759                                    ; preds = %6731
  %6760 = icmp slt i32 %6757, 0
  %6761 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6732
  %6762 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6732
  %6763 = bitcast float* %6761 to i32*
  %6764 = bitcast float* %6762 to i32*
  br i1 %6760, label %6765, label %6772

; <label>:6765                                    ; preds = %6759
  %6766 = and i32 %6757, 1073741823
  %6767 = add i32 %6747, 20
  %6768 = add i32 %6767, %6766
  %6769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6768, i32 undef)  ; BufferLoad(srv,index,wot)
  %6770 = extractvalue %dx.types.ResRet.i32 %6769, 0
  %6771 = extractvalue %dx.types.ResRet.i32 %6769, 1
  br label %6772

; <label>:6772                                    ; preds = %6765, %6759
  %6773 = phi i32 [ %6770, %6765 ], [ %6681, %6759 ]
  %6774 = phi i32 [ %6771, %6765 ], [ %6682, %6759 ]
  store i32 %6773, i32* %6763, align 4
  store i32 %6774, i32* %6764, align 4
  %6775 = add i32 %6732, 1
  br label %6776

; <label>:6776                                    ; preds = %6772, %6731
  %6777 = phi i32 [ %6732, %6731 ], [ %6775, %6772 ]
  %6778 = add nuw i32 %6733, 1
  %6779 = icmp eq i32 %6778, %6728
  br i1 %6779, label %6780, label %6731

; <label>:6780                                    ; preds = %6776
  br label %6781

; <label>:6781                                    ; preds = %6780, %6725
  %6782 = phi i32 [ %6726, %6725 ], [ %6777, %6780 ]
  %6783 = icmp eq i32 %6782, 1
  %6784 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 0
  %6785 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  br i1 %6783, label %6786, label %6789

; <label>:6786                                    ; preds = %6781
  %6787 = load float, float* %6784, align 4
  %6788 = load float, float* %6785, align 4
  br label %6816

; <label>:6789                                    ; preds = %6781
  %6790 = load float, float* %6784, align 4
  %6791 = load float, float* %6785, align 4
  %6792 = fdiv fast float 1.000000e+00, %6791
  %6793 = fsub fast float %6790, %6792
  %6794 = icmp ugt i32 %6782, 1
  br i1 %6794, label %6795, label %6811

; <label>:6795                                    ; preds = %6789
  br label %6796

; <label>:6796                                    ; preds = %6796, %6795
  %6797 = phi float [ %6806, %6796 ], [ %6793, %6795 ]
  %6798 = phi float [ %6807, %6796 ], [ %6790, %6795 ]
  %6799 = phi i32 [ %6808, %6796 ], [ 1, %6795 ]
  %6800 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6799
  %6801 = load float, float* %6800, align 4
  %6802 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6799
  %6803 = load float, float* %6802, align 4
  %6804 = fdiv fast float 1.000000e+00, %6803
  %6805 = fsub fast float %6801, %6804
  %6806 = call float @dx.op.binary.f32(i32 36, float %6797, float %6805)  ; FMin(a,b)
  %6807 = call float @dx.op.binary.f32(i32 35, float %6798, float %6801)  ; FMax(a,b)
  %6808 = add nuw i32 %6799, 1
  %6809 = icmp eq i32 %6808, %6782
  br i1 %6809, label %6810, label %6796

; <label>:6810                                    ; preds = %6796
  br label %6811

; <label>:6811                                    ; preds = %6810, %6789
  %6812 = phi float [ %6793, %6789 ], [ %6806, %6810 ]
  %6813 = phi float [ %6790, %6789 ], [ %6807, %6810 ]
  %6814 = fsub fast float %6813, %6812
  %6815 = fdiv fast float 1.000000e+00, %6814
  br label %6816

; <label>:6816                                    ; preds = %6811, %6786
  %6817 = phi float [ %6787, %6786 ], [ %6813, %6811 ]
  %6818 = phi float [ %6788, %6786 ], [ %6815, %6811 ]
  %6819 = fadd fast float %6520, %6817
  %6820 = fmul fast float %6819, %6818
  %6821 = call float @dx.op.unary.f32(i32 7, float %6820)  ; Saturate(value)
  %6822 = fmul fast float %6821, 2.000000e+00
  %6823 = fsub fast float 1.000000e+00, %6822
  %6824 = fmul fast float %6658, %6658
  %6825 = fsub fast float %6659, %6824
  %6826 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6825)  ; FMax(a,b)
  %6827 = fdiv fast float 1.000000e+00, %6826
  %6828 = fmul fast float %6659, %6658
  %6829 = fsub fast float %6660, %6828
  %6830 = fsub fast float %6823, %6658
  %6831 = fmul fast float %6823, %6823
  %6832 = fsub fast float %6831, %6659
  %6833 = fmul fast float %6827, %6829
  %6834 = fmul fast float %6833, %6830
  %6835 = fsub fast float %6832, %6834
  %6836 = fmul fast float %6659, %6659
  %6837 = fsub fast float %6661, %6836
  %6838 = fmul fast float %6829, %6829
  %6839 = fmul fast float %6838, %6827
  %6840 = fsub fast float %6837, %6839
  %6841 = fdiv fast float %6835, %6840
  %6842 = fmul fast float %6841, %6829
  %6843 = fsub fast float %6830, %6842
  %6844 = fmul fast float %6843, %6827
  %6845 = fmul fast float %6844, %6658
  %6846 = fsub fast float 1.000000e+00, %6845
  %6847 = fmul fast float %6841, %6659
  %6848 = fsub fast float %6846, %6847
  %6849 = fmul fast float %6844, %6844
  %6850 = fmul fast float %6841, 4.000000e+00
  %6851 = fmul fast float %6850, %6848
  %6852 = fsub fast float %6849, %6851
  %6853 = call float @dx.op.unary.f32(i32 24, float %6852)  ; Sqrt(value)
  %6854 = fcmp fast oge float %6844, 0.000000e+00
  %6855 = fsub fast float -0.000000e+00, %6853
  %6856 = select i1 %6854, float %6855, float %6853
  %6857 = fsub fast float %6856, %6844
  %6858 = fdiv fast float %6857, %6841
  %6859 = fdiv fast float %6848, %6857
  %6860 = fmul fast float %6858, 5.000000e-01
  %6861 = fmul fast float %6859, 2.000000e+00
  %6862 = select i1 %6854, float %6860, float %6861
  %6863 = select i1 %6854, float %6861, float %6860
  %6864 = call float @dx.op.binary.f32(i32 35, float %6862, float %6863)  ; FMax(a,b)
  %6865 = call float @dx.op.binary.f32(i32 36, float %6862, float %6863)  ; FMin(a,b)
  %6866 = fcmp fast ogt float %6823, %6864
  %6867 = fsub fast float %6823, %6865
  %6868 = fsub fast float %6823, %6864
  %6869 = fsub fast float %6864, %6865
  %6870 = select i1 %6866, float %6868, float %6869
  %6871 = fmul float %6867, %6870
  %6872 = select i1 %6866, float %6865, float %6823
  %6873 = fcmp fast ogt float %6823, %6865
  %6874 = fmul fast float %6872, %6864
  %6875 = fadd fast float %6872, %6864
  %6876 = fmul fast float %6875, %6658
  %6877 = fadd fast float %6874, %6659
  %6878 = fsub fast float %6877, %6876
  %6879 = fdiv fast float %6878, %6871
  %6880 = select i1 %6873, float %6879, float 0.000000e+00
  %6881 = fsub fast float 1.000000e+00, %6880
  %6882 = select i1 %6866, float %6881, float %6880
  %6883 = call float @dx.op.unary.f32(i32 7, float %6882)  ; Saturate(value)
  %6884 = extractvalue %dx.types.CBufRet.f32 %6643, 3
  %6885 = fmul fast float %6884, %6883
  %6886 = fsub fast float 1.000000e+00, %6885
  br label %6887

; <label>:6887                                    ; preds = %6816, %6528, %6493, %6489, %6455
  %6888 = phi float [ 1.000000e+00, %6455 ], [ %6886, %6816 ], [ 1.000000e+00, %6493 ], [ 1.000000e+00, %6528 ], [ 1.000000e+00, %6489 ]
  %6889 = fcmp fast ogt float %6485, 0.000000e+00
  br i1 %6889, label %6890, label %7052, !dx.controlflow.hints !106

; <label>:6890                                    ; preds = %6887
  %6891 = fadd fast float %6398, %6372
  %6892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6893 = extractvalue %dx.types.CBufRet.f32 %6892, 2
  %6894 = extractvalue %dx.types.CBufRet.f32 %6892, 3
  %6895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6896 = extractvalue %dx.types.CBufRet.f32 %6895, 2
  %6897 = call float @dx.op.binary.f32(i32 35, float %6891, float 0.000000e+00)  ; FMax(a,b)
  %6898 = fadd fast float %6897, 0x3F10000000000000
  %6899 = fcmp fast oeq float %6896, 0.000000e+00
  br i1 %6899, label %6900, label %6967

; <label>:6900                                    ; preds = %6890
  %6901 = extractvalue %dx.types.CBufRet.f32 %6892, 1
  %6902 = extractvalue %dx.types.CBufRet.f32 %6892, 0
  %6903 = fmul fast float %6902, %6387
  %6904 = fmul fast float %6901, %6388
  %6905 = fadd fast float %6903, 5.000000e-01
  %6906 = call float @dx.op.unary.f32(i32 27, float %6905)  ; Round_ni(value)
  %6907 = fadd fast float %6904, 5.000000e-01
  %6908 = call float @dx.op.unary.f32(i32 27, float %6907)  ; Round_ni(value)
  %6909 = fsub fast float %6905, %6906
  %6910 = fsub fast float %6907, %6908
  %6911 = fadd fast float %6906, -5.000000e-01
  %6912 = fadd fast float %6908, -5.000000e-01
  %6913 = fmul fast float %6909, 2.000000e+00
  %6914 = fsub fast float 3.000000e+00, %6913
  %6915 = fadd fast float %6913, 1.000000e+00
  %6916 = fsub fast float 2.000000e+00, %6909
  %6917 = bitcast float %6914 to i32
  %6918 = sub nsw i32 2129859010, %6917
  %6919 = bitcast i32 %6918 to float
  %6920 = fmul fast float %6919, %6916
  %6921 = fadd fast float %6920, -1.000000e+00
  %6922 = bitcast float %6915 to i32
  %6923 = sub nsw i32 2129859010, %6922
  %6924 = bitcast i32 %6923 to float
  %6925 = fmul fast float %6924, %6909
  %6926 = fadd fast float %6925, 1.000000e+00
  %6927 = fmul fast float %6910, 2.000000e+00
  %6928 = fsub fast float 3.000000e+00, %6927
  %6929 = fadd fast float %6927, 1.000000e+00
  %6930 = fsub fast float 2.000000e+00, %6910
  %6931 = bitcast float %6928 to i32
  %6932 = sub nsw i32 2129859010, %6931
  %6933 = bitcast i32 %6932 to float
  %6934 = fmul fast float %6933, %6930
  %6935 = fadd fast float %6934, -1.000000e+00
  %6936 = bitcast float %6929 to i32
  %6937 = sub nsw i32 2129859010, %6936
  %6938 = bitcast i32 %6937 to float
  %6939 = fmul fast float %6938, %6910
  %6940 = fadd fast float %6939, 1.000000e+00
  %6941 = fadd fast float %6921, %6911
  %6942 = fmul fast float %6941, %6893
  %6943 = fadd fast float %6935, %6912
  %6944 = fmul fast float %6943, %6894
  %6945 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6942, float %6944, float undef, float undef, i32 0, i32 0, i32 undef, float %6898)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6946 = extractvalue %dx.types.ResRet.f32 %6945, 0
  %6947 = fmul fast float %6946, %6914
  %6948 = fadd fast float %6926, %6911
  %6949 = fmul fast float %6948, %6893
  %6950 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6949, float %6944, float undef, float undef, i32 0, i32 0, i32 undef, float %6898)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6951 = extractvalue %dx.types.ResRet.f32 %6950, 0
  %6952 = fmul fast float %6951, %6915
  %6953 = fadd fast float %6940, %6912
  %6954 = fmul fast float %6953, %6894
  %6955 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6942, float %6954, float undef, float undef, i32 0, i32 0, i32 undef, float %6898)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6956 = extractvalue %dx.types.ResRet.f32 %6955, 0
  %6957 = fmul fast float %6956, %6914
  %6958 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6949, float %6954, float undef, float undef, i32 0, i32 0, i32 undef, float %6898)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6959 = extractvalue %dx.types.ResRet.f32 %6958, 0
  %6960 = fmul fast float %6959, %6915
  %6961 = fadd fast float %6960, %6957
  %6962 = fmul fast float %6961, %6929
  %6963 = fadd fast float %6952, %6947
  %6964 = fmul fast float %6963, %6928
  %6965 = fadd fast float %6964, %6962
  %6966 = fmul fast float %6965, 6.250000e-02
  br label %7052

; <label>:6967                                    ; preds = %6890
  %6968 = fmul fast float %224, 0x401921FB60000000
  %6969 = call float @dx.op.unary.f32(i32 13, float %6968)  ; Sin(value)
  %6970 = call float @dx.op.unary.f32(i32 12, float %6968)  ; Cos(value)
  %6971 = fsub fast float -0.000000e+00, %6969
  br label %6972

; <label>:6972                                    ; preds = %7021, %6967
  %6973 = phi float [ 0.000000e+00, %6967 ], [ %7016, %7021 ]
  %6974 = phi float [ 0.000000e+00, %6967 ], [ %7018, %7021 ]
  %6975 = phi i32 [ 0, %6967 ], [ %7022, %7021 ]
  %6976 = mul i32 %6975, 2
  %6977 = add i32 0, %6976
  %6978 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6977
  %6979 = load float, float* %6978, align 4
  %6980 = mul i32 %6975, 2
  %6981 = add i32 1, %6980
  %6982 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6981
  %6983 = load float, float* %6982, align 4
  %6984 = fmul fast float %6979, %6970
  %6985 = call float @dx.op.tertiary.f32(i32 46, float %6983, float %6971, float %6984)  ; FMad(a,b,c)
  %6986 = fmul fast float %6979, %6969
  %6987 = call float @dx.op.tertiary.f32(i32 46, float %6983, float %6970, float %6986)  ; FMad(a,b,c)
  %6988 = fmul fast float %6985, %6896
  %6989 = fmul fast float %6987, %6896
  %6990 = fadd fast float %6988, %6387
  %6991 = fadd fast float %6989, %6388
  %6992 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %6990, float %6991, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6993 = extractvalue %dx.types.ResRet.f32 %6992, 0
  %6994 = extractvalue %dx.types.ResRet.f32 %6992, 1
  %6995 = extractvalue %dx.types.ResRet.f32 %6992, 2
  %6996 = extractvalue %dx.types.ResRet.f32 %6992, 3
  %6997 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %6993, float* %6997, align 4
  %6998 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %6994, float* %6998, align 4
  %6999 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %6995, float* %6999, align 4
  %7000 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %6996, float* %7000, align 4
  %7001 = fsub fast float %6993, %6898
  %7002 = fcmp fast olt float %7001, 0.000000e+00
  %7003 = select i1 %7002, float 0.000000e+00, float 1.000000e+00
  %7004 = fadd fast float %7003, %6973
  %7005 = fmul fast float %7003, %7001
  %7006 = fadd fast float %7005, %6974
  br label %7007

; <label>:7007                                    ; preds = %7007, %6972
  %7008 = phi i32 [ 1, %6972 ], [ %7019, %7007 ]
  %7009 = phi float [ %7006, %6972 ], [ %7018, %7007 ]
  %7010 = phi float [ %7004, %6972 ], [ %7016, %7007 ]
  %7011 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7008
  %7012 = load float, float* %7011, align 4, !tbaa !107, !noalias !97
  %7013 = fsub fast float %7012, %6898
  %7014 = fcmp fast olt float %7013, 0.000000e+00
  %7015 = select i1 %7014, float 0.000000e+00, float 1.000000e+00
  %7016 = fadd fast float %7015, %7010
  %7017 = fmul fast float %7015, %7013
  %7018 = fadd fast float %7017, %7009
  %7019 = add nuw nsw i32 %7008, 1
  %7020 = icmp eq i32 %7019, 4
  br i1 %7020, label %7021, label %7007, !llvm.loop !109

; <label>:7021                                    ; preds = %7007
  %7022 = add nuw nsw i32 %6975, 1
  %7023 = icmp eq i32 %7022, 8
  br i1 %7023, label %7024, label %6972, !llvm.loop !110

; <label>:7024                                    ; preds = %7021
  %7025 = fdiv fast float 1.000000e+00, %7016
  %7026 = fmul fast float %7025, %7018
  %7027 = fdiv fast float 1.000000e+00, %6898
  %7028 = fmul fast float %7026, %7027
  %7029 = call float @dx.op.unary.f32(i32 7, float %7028)  ; Saturate(value)
  %7030 = call float @dx.op.binary.f32(i32 35, float %7029, float 0.000000e+00)  ; FMax(a,b)
  %7031 = fmul fast float %7016, 3.125000e-02
  %7032 = call float @dx.op.unary.f32(i32 7, float %7031)  ; Saturate(value)
  %7033 = fmul fast float %7032, 2.000000e+00
  %7034 = fadd fast float %7033, -1.000000e+00
  %7035 = fcmp fast ogt float %7034, 0.000000e+00
  %7036 = fcmp fast olt float %7034, 0.000000e+00
  %7037 = zext i1 %7035 to i32
  %7038 = zext i1 %7036 to i32
  %7039 = sub nsw i32 %7037, %7038
  %7040 = sitofp i32 %7039 to float
  %7041 = fmul fast float %7040, %7034
  %7042 = fsub fast float 1.000000e+00, %7041
  %7043 = fmul fast float %7042, %7042
  %7044 = fmul fast float %7043, %7042
  %7045 = fsub fast float %7042, %7044
  %7046 = fmul fast float %7045, %7030
  %7047 = fsub fast float 1.000000e+00, %7044
  %7048 = fsub fast float %7047, %7046
  %7049 = fmul fast float %7040, 5.000000e-01
  %7050 = fmul fast float %7049, %7048
  %7051 = fsub fast float 5.000000e-01, %7050
  br label %7052

; <label>:7052                                    ; preds = %7024, %6900, %6887
  %7053 = phi float [ 1.000000e+00, %6887 ], [ %6966, %6900 ], [ %7051, %7024 ]
  %7054 = fcmp fast ogt float %6483, 0.000000e+00
  br i1 %7054, label %7055, label %7219, !dx.controlflow.hints !111

; <label>:7055                                    ; preds = %7052
  %7056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7057 = extractvalue %dx.types.CBufRet.f32 %7056, 1
  %7058 = fadd fast float %7057, %6372
  %7059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7060 = extractvalue %dx.types.CBufRet.f32 %7059, 2
  %7061 = extractvalue %dx.types.CBufRet.f32 %7059, 3
  %7062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7063 = extractvalue %dx.types.CBufRet.f32 %7062, 1
  %7064 = call float @dx.op.binary.f32(i32 35, float %7058, float 0.000000e+00)  ; FMax(a,b)
  %7065 = fadd fast float %7064, 0x3F10000000000000
  %7066 = fcmp fast oeq float %7063, 0.000000e+00
  br i1 %7066, label %7067, label %7134

; <label>:7067                                    ; preds = %7055
  %7068 = extractvalue %dx.types.CBufRet.f32 %7059, 1
  %7069 = extractvalue %dx.types.CBufRet.f32 %7059, 0
  %7070 = fmul fast float %7069, %6379
  %7071 = fmul fast float %7068, %6380
  %7072 = fadd fast float %7070, 5.000000e-01
  %7073 = call float @dx.op.unary.f32(i32 27, float %7072)  ; Round_ni(value)
  %7074 = fadd fast float %7071, 5.000000e-01
  %7075 = call float @dx.op.unary.f32(i32 27, float %7074)  ; Round_ni(value)
  %7076 = fsub fast float %7072, %7073
  %7077 = fsub fast float %7074, %7075
  %7078 = fadd fast float %7073, -5.000000e-01
  %7079 = fadd fast float %7075, -5.000000e-01
  %7080 = fmul fast float %7076, 2.000000e+00
  %7081 = fsub fast float 3.000000e+00, %7080
  %7082 = fadd fast float %7080, 1.000000e+00
  %7083 = fsub fast float 2.000000e+00, %7076
  %7084 = bitcast float %7081 to i32
  %7085 = sub nsw i32 2129859010, %7084
  %7086 = bitcast i32 %7085 to float
  %7087 = fmul fast float %7086, %7083
  %7088 = fadd fast float %7087, -1.000000e+00
  %7089 = bitcast float %7082 to i32
  %7090 = sub nsw i32 2129859010, %7089
  %7091 = bitcast i32 %7090 to float
  %7092 = fmul fast float %7091, %7076
  %7093 = fadd fast float %7092, 1.000000e+00
  %7094 = fmul fast float %7077, 2.000000e+00
  %7095 = fsub fast float 3.000000e+00, %7094
  %7096 = fadd fast float %7094, 1.000000e+00
  %7097 = fsub fast float 2.000000e+00, %7077
  %7098 = bitcast float %7095 to i32
  %7099 = sub nsw i32 2129859010, %7098
  %7100 = bitcast i32 %7099 to float
  %7101 = fmul fast float %7100, %7097
  %7102 = fadd fast float %7101, -1.000000e+00
  %7103 = bitcast float %7096 to i32
  %7104 = sub nsw i32 2129859010, %7103
  %7105 = bitcast i32 %7104 to float
  %7106 = fmul fast float %7105, %7077
  %7107 = fadd fast float %7106, 1.000000e+00
  %7108 = fadd fast float %7088, %7078
  %7109 = fmul fast float %7108, %7060
  %7110 = fadd fast float %7102, %7079
  %7111 = fmul fast float %7110, %7061
  %7112 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7109, float %7111, float undef, float undef, i32 0, i32 0, i32 undef, float %7065)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7113 = extractvalue %dx.types.ResRet.f32 %7112, 0
  %7114 = fmul fast float %7113, %7081
  %7115 = fadd fast float %7093, %7078
  %7116 = fmul fast float %7115, %7060
  %7117 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7116, float %7111, float undef, float undef, i32 0, i32 0, i32 undef, float %7065)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7118 = extractvalue %dx.types.ResRet.f32 %7117, 0
  %7119 = fmul fast float %7118, %7082
  %7120 = fadd fast float %7107, %7079
  %7121 = fmul fast float %7120, %7061
  %7122 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7109, float %7121, float undef, float undef, i32 0, i32 0, i32 undef, float %7065)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7123 = extractvalue %dx.types.ResRet.f32 %7122, 0
  %7124 = fmul fast float %7123, %7081
  %7125 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7116, float %7121, float undef, float undef, i32 0, i32 0, i32 undef, float %7065)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7126 = extractvalue %dx.types.ResRet.f32 %7125, 0
  %7127 = fmul fast float %7126, %7082
  %7128 = fadd fast float %7127, %7124
  %7129 = fmul fast float %7128, %7096
  %7130 = fadd fast float %7119, %7114
  %7131 = fmul fast float %7130, %7095
  %7132 = fadd fast float %7131, %7129
  %7133 = fmul fast float %7132, 6.250000e-02
  br label %7219

; <label>:7134                                    ; preds = %7055
  %7135 = fmul fast float %224, 0x401921FB60000000
  %7136 = call float @dx.op.unary.f32(i32 13, float %7135)  ; Sin(value)
  %7137 = call float @dx.op.unary.f32(i32 12, float %7135)  ; Cos(value)
  %7138 = fsub fast float -0.000000e+00, %7136
  br label %7139

; <label>:7139                                    ; preds = %7188, %7134
  %7140 = phi float [ 0.000000e+00, %7134 ], [ %7183, %7188 ]
  %7141 = phi float [ 0.000000e+00, %7134 ], [ %7185, %7188 ]
  %7142 = phi i32 [ 0, %7134 ], [ %7189, %7188 ]
  %7143 = mul i32 %7142, 2
  %7144 = add i32 0, %7143
  %7145 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7144
  %7146 = load float, float* %7145, align 4
  %7147 = mul i32 %7142, 2
  %7148 = add i32 1, %7147
  %7149 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7148
  %7150 = load float, float* %7149, align 4
  %7151 = fmul fast float %7146, %7137
  %7152 = call float @dx.op.tertiary.f32(i32 46, float %7150, float %7138, float %7151)  ; FMad(a,b,c)
  %7153 = fmul fast float %7146, %7136
  %7154 = call float @dx.op.tertiary.f32(i32 46, float %7150, float %7137, float %7153)  ; FMad(a,b,c)
  %7155 = fmul fast float %7152, %7063
  %7156 = fmul fast float %7154, %7063
  %7157 = fadd fast float %7155, %6379
  %7158 = fadd fast float %7156, %6380
  %7159 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %7157, float %7158, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7160 = extractvalue %dx.types.ResRet.f32 %7159, 0
  %7161 = extractvalue %dx.types.ResRet.f32 %7159, 1
  %7162 = extractvalue %dx.types.ResRet.f32 %7159, 2
  %7163 = extractvalue %dx.types.ResRet.f32 %7159, 3
  %7164 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 0
  store float %7160, float* %7164, align 4
  %7165 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 1
  store float %7161, float* %7165, align 4
  %7166 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 2
  store float %7162, float* %7166, align 4
  %7167 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 3
  store float %7163, float* %7167, align 4
  %7168 = fsub fast float %7160, %7065
  %7169 = fcmp fast olt float %7168, 0.000000e+00
  %7170 = select i1 %7169, float 0.000000e+00, float 1.000000e+00
  %7171 = fadd fast float %7170, %7140
  %7172 = fmul fast float %7170, %7168
  %7173 = fadd fast float %7172, %7141
  br label %7174

; <label>:7174                                    ; preds = %7174, %7139
  %7175 = phi i32 [ 1, %7139 ], [ %7186, %7174 ]
  %7176 = phi float [ %7173, %7139 ], [ %7185, %7174 ]
  %7177 = phi float [ %7171, %7139 ], [ %7183, %7174 ]
  %7178 = getelementptr [4 x float], [4 x float]* %89, i32 0, i32 %7175
  %7179 = load float, float* %7178, align 4, !tbaa !107, !noalias !97
  %7180 = fsub fast float %7179, %7065
  %7181 = fcmp fast olt float %7180, 0.000000e+00
  %7182 = select i1 %7181, float 0.000000e+00, float 1.000000e+00
  %7183 = fadd fast float %7182, %7177
  %7184 = fmul fast float %7182, %7180
  %7185 = fadd fast float %7184, %7176
  %7186 = add nuw nsw i32 %7175, 1
  %7187 = icmp eq i32 %7186, 4
  br i1 %7187, label %7188, label %7174, !llvm.loop !109

; <label>:7188                                    ; preds = %7174
  %7189 = add nuw nsw i32 %7142, 1
  %7190 = icmp eq i32 %7189, 8
  br i1 %7190, label %7191, label %7139, !llvm.loop !110

; <label>:7191                                    ; preds = %7188
  %7192 = fdiv fast float 1.000000e+00, %7183
  %7193 = fmul fast float %7192, %7185
  %7194 = fdiv fast float 1.000000e+00, %7065
  %7195 = fmul fast float %7193, %7194
  %7196 = call float @dx.op.unary.f32(i32 7, float %7195)  ; Saturate(value)
  %7197 = call float @dx.op.binary.f32(i32 35, float %7196, float 0.000000e+00)  ; FMax(a,b)
  %7198 = fmul fast float %7183, 3.125000e-02
  %7199 = call float @dx.op.unary.f32(i32 7, float %7198)  ; Saturate(value)
  %7200 = fmul fast float %7199, 2.000000e+00
  %7201 = fadd fast float %7200, -1.000000e+00
  %7202 = fcmp fast ogt float %7201, 0.000000e+00
  %7203 = fcmp fast olt float %7201, 0.000000e+00
  %7204 = zext i1 %7202 to i32
  %7205 = zext i1 %7203 to i32
  %7206 = sub nsw i32 %7204, %7205
  %7207 = sitofp i32 %7206 to float
  %7208 = fmul fast float %7207, %7201
  %7209 = fsub fast float 1.000000e+00, %7208
  %7210 = fmul fast float %7209, %7209
  %7211 = fmul fast float %7210, %7209
  %7212 = fsub fast float %7209, %7211
  %7213 = fmul fast float %7212, %7197
  %7214 = fsub fast float 1.000000e+00, %7211
  %7215 = fsub fast float %7214, %7213
  %7216 = fmul fast float %7207, 5.000000e-01
  %7217 = fmul fast float %7216, %7215
  %7218 = fsub fast float 5.000000e-01, %7217
  br label %7219

; <label>:7219                                    ; preds = %7191, %7067, %7052
  %7220 = phi float [ 1.000000e+00, %7052 ], [ %7133, %7067 ], [ %7218, %7191 ]
  %7221 = fcmp fast ogt float %6482, 0.000000e+00
  br i1 %7221, label %7222, label %7386, !dx.controlflow.hints !112

; <label>:7222                                    ; preds = %7219
  %7223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7224 = extractvalue %dx.types.CBufRet.f32 %7223, 0
  %7225 = fadd fast float %7224, %6372
  %7226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7227 = extractvalue %dx.types.CBufRet.f32 %7226, 2
  %7228 = extractvalue %dx.types.CBufRet.f32 %7226, 3
  %7229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7230 = extractvalue %dx.types.CBufRet.f32 %7229, 0
  %7231 = call float @dx.op.binary.f32(i32 35, float %7225, float 0.000000e+00)  ; FMax(a,b)
  %7232 = fadd fast float %7231, 0x3F10000000000000
  %7233 = fcmp fast oeq float %7230, 0.000000e+00
  br i1 %7233, label %7234, label %7301

; <label>:7234                                    ; preds = %7222
  %7235 = extractvalue %dx.types.CBufRet.f32 %7226, 1
  %7236 = extractvalue %dx.types.CBufRet.f32 %7226, 0
  %7237 = fmul fast float %7236, %6364
  %7238 = fmul fast float %7235, %6368
  %7239 = fadd fast float %7237, 5.000000e-01
  %7240 = call float @dx.op.unary.f32(i32 27, float %7239)  ; Round_ni(value)
  %7241 = fadd fast float %7238, 5.000000e-01
  %7242 = call float @dx.op.unary.f32(i32 27, float %7241)  ; Round_ni(value)
  %7243 = fsub fast float %7239, %7240
  %7244 = fsub fast float %7241, %7242
  %7245 = fadd fast float %7240, -5.000000e-01
  %7246 = fadd fast float %7242, -5.000000e-01
  %7247 = fmul fast float %7243, 2.000000e+00
  %7248 = fsub fast float 3.000000e+00, %7247
  %7249 = fadd fast float %7247, 1.000000e+00
  %7250 = fsub fast float 2.000000e+00, %7243
  %7251 = bitcast float %7248 to i32
  %7252 = sub nsw i32 2129859010, %7251
  %7253 = bitcast i32 %7252 to float
  %7254 = fmul fast float %7253, %7250
  %7255 = fadd fast float %7254, -1.000000e+00
  %7256 = bitcast float %7249 to i32
  %7257 = sub nsw i32 2129859010, %7256
  %7258 = bitcast i32 %7257 to float
  %7259 = fmul fast float %7258, %7243
  %7260 = fadd fast float %7259, 1.000000e+00
  %7261 = fmul fast float %7244, 2.000000e+00
  %7262 = fsub fast float 3.000000e+00, %7261
  %7263 = fadd fast float %7261, 1.000000e+00
  %7264 = fsub fast float 2.000000e+00, %7244
  %7265 = bitcast float %7262 to i32
  %7266 = sub nsw i32 2129859010, %7265
  %7267 = bitcast i32 %7266 to float
  %7268 = fmul fast float %7267, %7264
  %7269 = fadd fast float %7268, -1.000000e+00
  %7270 = bitcast float %7263 to i32
  %7271 = sub nsw i32 2129859010, %7270
  %7272 = bitcast i32 %7271 to float
  %7273 = fmul fast float %7272, %7244
  %7274 = fadd fast float %7273, 1.000000e+00
  %7275 = fadd fast float %7255, %7245
  %7276 = fmul fast float %7275, %7227
  %7277 = fadd fast float %7269, %7246
  %7278 = fmul fast float %7277, %7228
  %7279 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7276, float %7278, float undef, float undef, i32 0, i32 0, i32 undef, float %7232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7280 = extractvalue %dx.types.ResRet.f32 %7279, 0
  %7281 = fmul fast float %7280, %7248
  %7282 = fadd fast float %7260, %7245
  %7283 = fmul fast float %7282, %7227
  %7284 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7283, float %7278, float undef, float undef, i32 0, i32 0, i32 undef, float %7232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7285 = extractvalue %dx.types.ResRet.f32 %7284, 0
  %7286 = fmul fast float %7285, %7249
  %7287 = fadd fast float %7274, %7246
  %7288 = fmul fast float %7287, %7228
  %7289 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7276, float %7288, float undef, float undef, i32 0, i32 0, i32 undef, float %7232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7290 = extractvalue %dx.types.ResRet.f32 %7289, 0
  %7291 = fmul fast float %7290, %7248
  %7292 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7283, float %7288, float undef, float undef, i32 0, i32 0, i32 undef, float %7232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7293 = extractvalue %dx.types.ResRet.f32 %7292, 0
  %7294 = fmul fast float %7293, %7249
  %7295 = fadd fast float %7294, %7291
  %7296 = fmul fast float %7295, %7263
  %7297 = fadd fast float %7286, %7281
  %7298 = fmul fast float %7297, %7262
  %7299 = fadd fast float %7298, %7296
  %7300 = fmul fast float %7299, 6.250000e-02
  br label %7386

; <label>:7301                                    ; preds = %7222
  %7302 = fmul fast float %224, 0x401921FB60000000
  %7303 = call float @dx.op.unary.f32(i32 13, float %7302)  ; Sin(value)
  %7304 = call float @dx.op.unary.f32(i32 12, float %7302)  ; Cos(value)
  %7305 = fsub fast float -0.000000e+00, %7303
  br label %7306

; <label>:7306                                    ; preds = %7355, %7301
  %7307 = phi float [ 0.000000e+00, %7301 ], [ %7350, %7355 ]
  %7308 = phi float [ 0.000000e+00, %7301 ], [ %7352, %7355 ]
  %7309 = phi i32 [ 0, %7301 ], [ %7356, %7355 ]
  %7310 = mul i32 %7309, 2
  %7311 = add i32 0, %7310
  %7312 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7311
  %7313 = load float, float* %7312, align 4
  %7314 = mul i32 %7309, 2
  %7315 = add i32 1, %7314
  %7316 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7315
  %7317 = load float, float* %7316, align 4
  %7318 = fmul fast float %7313, %7304
  %7319 = call float @dx.op.tertiary.f32(i32 46, float %7317, float %7305, float %7318)  ; FMad(a,b,c)
  %7320 = fmul fast float %7313, %7303
  %7321 = call float @dx.op.tertiary.f32(i32 46, float %7317, float %7304, float %7320)  ; FMad(a,b,c)
  %7322 = fmul fast float %7319, %7230
  %7323 = fmul fast float %7321, %7230
  %7324 = fadd fast float %7322, %6364
  %7325 = fadd fast float %7323, %6368
  %7326 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %7324, float %7325, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7327 = extractvalue %dx.types.ResRet.f32 %7326, 0
  %7328 = extractvalue %dx.types.ResRet.f32 %7326, 1
  %7329 = extractvalue %dx.types.ResRet.f32 %7326, 2
  %7330 = extractvalue %dx.types.ResRet.f32 %7326, 3
  %7331 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 0
  store float %7327, float* %7331, align 4
  %7332 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 1
  store float %7328, float* %7332, align 4
  %7333 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 2
  store float %7329, float* %7333, align 4
  %7334 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 3
  store float %7330, float* %7334, align 4
  %7335 = fsub fast float %7327, %7232
  %7336 = fcmp fast olt float %7335, 0.000000e+00
  %7337 = select i1 %7336, float 0.000000e+00, float 1.000000e+00
  %7338 = fadd fast float %7337, %7307
  %7339 = fmul fast float %7337, %7335
  %7340 = fadd fast float %7339, %7308
  br label %7341

; <label>:7341                                    ; preds = %7341, %7306
  %7342 = phi i32 [ 1, %7306 ], [ %7353, %7341 ]
  %7343 = phi float [ %7340, %7306 ], [ %7352, %7341 ]
  %7344 = phi float [ %7338, %7306 ], [ %7350, %7341 ]
  %7345 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 %7342
  %7346 = load float, float* %7345, align 4, !tbaa !107, !noalias !97
  %7347 = fsub fast float %7346, %7232
  %7348 = fcmp fast olt float %7347, 0.000000e+00
  %7349 = select i1 %7348, float 0.000000e+00, float 1.000000e+00
  %7350 = fadd fast float %7349, %7344
  %7351 = fmul fast float %7349, %7347
  %7352 = fadd fast float %7351, %7343
  %7353 = add nuw nsw i32 %7342, 1
  %7354 = icmp eq i32 %7353, 4
  br i1 %7354, label %7355, label %7341, !llvm.loop !109

; <label>:7355                                    ; preds = %7341
  %7356 = add nuw nsw i32 %7309, 1
  %7357 = icmp eq i32 %7356, 8
  br i1 %7357, label %7358, label %7306, !llvm.loop !110

; <label>:7358                                    ; preds = %7355
  %7359 = fdiv fast float 1.000000e+00, %7350
  %7360 = fmul fast float %7359, %7352
  %7361 = fdiv fast float 1.000000e+00, %7232
  %7362 = fmul fast float %7360, %7361
  %7363 = call float @dx.op.unary.f32(i32 7, float %7362)  ; Saturate(value)
  %7364 = call float @dx.op.binary.f32(i32 35, float %7363, float 0.000000e+00)  ; FMax(a,b)
  %7365 = fmul fast float %7350, 3.125000e-02
  %7366 = call float @dx.op.unary.f32(i32 7, float %7365)  ; Saturate(value)
  %7367 = fmul fast float %7366, 2.000000e+00
  %7368 = fadd fast float %7367, -1.000000e+00
  %7369 = fcmp fast ogt float %7368, 0.000000e+00
  %7370 = fcmp fast olt float %7368, 0.000000e+00
  %7371 = zext i1 %7369 to i32
  %7372 = zext i1 %7370 to i32
  %7373 = sub nsw i32 %7371, %7372
  %7374 = sitofp i32 %7373 to float
  %7375 = fmul fast float %7374, %7368
  %7376 = fsub fast float 1.000000e+00, %7375
  %7377 = fmul fast float %7376, %7376
  %7378 = fmul fast float %7377, %7376
  %7379 = fsub fast float %7376, %7378
  %7380 = fmul fast float %7379, %7364
  %7381 = fsub fast float 1.000000e+00, %7378
  %7382 = fsub fast float %7381, %7380
  %7383 = fmul fast float %7374, 5.000000e-01
  %7384 = fmul fast float %7383, %7382
  %7385 = fsub fast float 5.000000e-01, %7384
  br label %7386

; <label>:7386                                    ; preds = %7358, %7234, %7219
  %7387 = phi float [ 1.000000e+00, %7219 ], [ %7300, %7234 ], [ %7385, %7358 ]
  %7388 = fsub fast float %7053, %6888
  %7389 = fmul fast float %7388, %6426
  %7390 = fadd fast float %7389, %6888
  %7391 = fsub fast float %7220, %7390
  %7392 = fmul fast float %7391, %6456
  %7393 = fadd fast float %7392, %7390
  %7394 = fsub fast float %7387, %7393
  %7395 = fmul fast float %7394, %6482
  %7396 = fadd fast float %7395, %7393
  %7397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7398 = extractvalue %dx.types.CBufRet.f32 %7397, 2
  %7399 = fcmp fast ogt float %7398, 0.000000e+00
  br i1 %7399, label %7400, label %7440, !dx.controlflow.hints !113

; <label>:7400                                    ; preds = %7386
  %7401 = fcmp fast ugt float %7398, 0.000000e+00
  br i1 %7401, label %7402, label %7437

; <label>:7402                                    ; preds = %7400
  %7403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7404 = extractvalue %dx.types.CBufRet.f32 %7403, 0
  %7405 = extractvalue %dx.types.CBufRet.f32 %7403, 1
  %7406 = extractvalue %dx.types.CBufRet.f32 %7403, 2
  %7407 = extractvalue %dx.types.CBufRet.f32 %7403, 3
  %7408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7409 = extractvalue %dx.types.CBufRet.f32 %7408, 0
  %7410 = extractvalue %dx.types.CBufRet.f32 %7408, 1
  %7411 = extractvalue %dx.types.CBufRet.f32 %7408, 2
  %7412 = extractvalue %dx.types.CBufRet.f32 %7408, 3
  %7413 = extractvalue %dx.types.CBufRet.f32 %7397, 0
  %7414 = extractvalue %dx.types.CBufRet.f32 %7397, 1
  %7415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7416 = extractvalue %dx.types.CBufRet.f32 %7415, 0
  %7417 = extractvalue %dx.types.CBufRet.f32 %7415, 1
  %7418 = extractvalue %dx.types.CBufRet.f32 %7415, 2
  %7419 = fadd fast float %7416, %6341
  %7420 = fadd fast float %7417, %6342
  %7421 = fadd fast float %7418, %6343
  %7422 = fmul fast float %7419, %7404
  %7423 = call float @dx.op.tertiary.f32(i32 46, float %7405, float %7420, float %7422)  ; FMad(a,b,c)
  %7424 = call float @dx.op.tertiary.f32(i32 46, float %7406, float %7421, float %7423)  ; FMad(a,b,c)
  %7425 = fadd fast float %7424, %7407
  %7426 = fmul fast float %7419, %7409
  %7427 = call float @dx.op.tertiary.f32(i32 46, float %7410, float %7420, float %7426)  ; FMad(a,b,c)
  %7428 = call float @dx.op.tertiary.f32(i32 46, float %7411, float %7421, float %7427)  ; FMad(a,b,c)
  %7429 = fadd fast float %7428, %7412
  %7430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %7425, float %7429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7431 = extractvalue %dx.types.ResRet.f32 %7430, 0
  %7432 = fmul fast float %7431, %7414
  %7433 = fadd fast float %7432, %7413
  %7434 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  %7435 = fmul fast float %7434, %7398
  %7436 = fsub fast float 1.000000e+00, %7435
  br label %7437

; <label>:7437                                    ; preds = %7402, %7400
  %7438 = phi float [ %7436, %7402 ], [ 1.000000e+00, %7400 ]
  %7439 = fmul fast float %7438, %7396
  br label %7440

; <label>:7440                                    ; preds = %7437, %7386, %6321
  %7441 = phi float [ 1.000000e+00, %6321 ], [ %7439, %7437 ], [ %7396, %7386 ]
  %7442 = call float @dx.op.binary.f32(i32 36, float %7441, float %7441)  ; FMin(a,b)
  %7443 = call float @dx.op.binary.f32(i32 36, float %7441, float %7442)  ; FMin(a,b)
  %7444 = fcmp fast ogt float %7443, 0.000000e+00
  br i1 %7444, label %7445, label %7611, !dx.controlflow.hints !114

; <label>:7445                                    ; preds = %7440
  %7446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7447 = extractvalue %dx.types.CBufRet.f32 %7446, 0
  %7448 = extractvalue %dx.types.CBufRet.f32 %7446, 1
  %7449 = extractvalue %dx.types.CBufRet.f32 %7446, 2
  %7450 = extractvalue %dx.types.CBufRet.f32 %7446, 3
  %7451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7452 = extractvalue %dx.types.CBufRet.f32 %7451, 0
  %7453 = extractvalue %dx.types.CBufRet.f32 %7451, 1
  %7454 = extractvalue %dx.types.CBufRet.f32 %7451, 2
  %7455 = extractvalue %dx.types.CBufRet.f32 %7451, 3
  %7456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7457 = extractvalue %dx.types.CBufRet.f32 %7456, 0
  %7458 = extractvalue %dx.types.CBufRet.f32 %7456, 1
  %7459 = extractvalue %dx.types.CBufRet.f32 %7456, 2
  %7460 = extractvalue %dx.types.CBufRet.f32 %7456, 3
  %7461 = fmul fast float %7447, %6341
  %7462 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %7448, float %7461)  ; FMad(a,b,c)
  %7463 = call float @dx.op.tertiary.f32(i32 46, float %6343, float %7449, float %7462)  ; FMad(a,b,c)
  %7464 = fadd fast float %7463, %7450
  %7465 = fmul fast float %7452, %6341
  %7466 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %7453, float %7465)  ; FMad(a,b,c)
  %7467 = call float @dx.op.tertiary.f32(i32 46, float %6343, float %7454, float %7466)  ; FMad(a,b,c)
  %7468 = fadd fast float %7467, %7455
  %7469 = fmul fast float %7457, %6341
  %7470 = call float @dx.op.tertiary.f32(i32 46, float %6342, float %7458, float %7469)  ; FMad(a,b,c)
  %7471 = call float @dx.op.tertiary.f32(i32 46, float %6343, float %7459, float %7470)  ; FMad(a,b,c)
  %7472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7473 = extractvalue %dx.types.CBufRet.f32 %7472, 0
  %7474 = extractvalue %dx.types.CBufRet.f32 %7472, 1
  %7475 = extractvalue %dx.types.CBufRet.f32 %7472, 3
  %7476 = fmul fast float %7475, %7464
  %7477 = fmul fast float %7475, %7468
  %7478 = fadd fast float %7476, %7473
  %7479 = fadd fast float %7477, %7474
  %7480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7481 = extractvalue %dx.types.CBufRet.f32 %7480, 0
  %7482 = extractvalue %dx.types.CBufRet.f32 %7480, 1
  %7483 = fsub fast float %7478, %7481
  %7484 = fsub fast float %7479, %7482
  %7485 = fcmp fast olt float %7483, 0.000000e+00
  %7486 = fcmp fast olt float %7484, 0.000000e+00
  %7487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7488 = extractvalue %dx.types.CBufRet.f32 %7487, 0
  %7489 = extractvalue %dx.types.CBufRet.f32 %7487, 1
  %7490 = extractvalue %dx.types.CBufRet.f32 %7487, 2
  %7491 = extractvalue %dx.types.CBufRet.f32 %7487, 3
  %7492 = select i1 %7485, float %7488, float %7490
  %7493 = select i1 %7486, float %7489, float %7491
  %7494 = fmul fast float %7492, %7483
  %7495 = fmul fast float %7493, %7484
  %7496 = call float @dx.op.unary.f32(i32 6, float %7494)  ; FAbs(value)
  %7497 = call float @dx.op.unary.f32(i32 6, float %7495)  ; FAbs(value)
  %7498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7499 = extractvalue %dx.types.CBufRet.f32 %7498, 0
  %7500 = call float @dx.op.binary.f32(i32 35, float %7496, float %7497)  ; FMax(a,b)
  %7501 = fsub fast float %7499, %7500
  %7502 = call float @dx.op.unary.f32(i32 7, float %7501)  ; Saturate(value)
  %7503 = fcmp fast ogt float %7502, 0.000000e+00
  br i1 %7503, label %7504, label %7545, !dx.controlflow.hints !115

; <label>:7504                                    ; preds = %7445
  %7505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %7478, float %7479, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7506 = extractvalue %dx.types.ResRet.f32 %7505, 1
  %7507 = fcmp fast ogt float %7506, 0.000000e+00
  br i1 %7507, label %7508, label %7540

; <label>:7508                                    ; preds = %7504
  %7509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %7478, float %7479, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7510 = extractvalue %dx.types.ResRet.f32 %7509, 0
  %7511 = extractvalue %dx.types.ResRet.f32 %7509, 1
  %7512 = extractvalue %dx.types.ResRet.f32 %7509, 2
  %7513 = extractvalue %dx.types.ResRet.f32 %7509, 3
  %7514 = fsub fast float 1.000000e+00, %7460
  %7515 = fsub fast float %7514, %7471
  %7516 = fmul fast float %7515, 0x400921FB60000000
  %7517 = fadd fast float %7516, 0x3FF921FB60000000
  %7518 = call float @dx.op.unary.f32(i32 13, float %7517)  ; Sin(value)
  %7519 = fadd fast float %7518, -1.000000e+00
  %7520 = fmul fast float %7519, 0x3FD45F3060000000
  %7521 = fmul fast float %7515, 0x401921FB60000000
  %7522 = fadd fast float %7521, 0x400921FB60000000
  %7523 = call float @dx.op.unary.f32(i32 13, float %7522)  ; Sin(value)
  %7524 = fadd fast float %7523, 0x3E7777A5C0000000
  %7525 = fmul fast float %7524, 0x3FC45F3060000000
  %7526 = fmul fast float %7515, 0x4022D97C80000000
  %7527 = fadd fast float %7526, 0x4012D97C80000000
  %7528 = call float @dx.op.unary.f32(i32 13, float %7527)  ; Sin(value)
  %7529 = fadd fast float %7528, 1.000000e+00
  %7530 = fmul fast float %7529, 0x3FBB2995E0000000
  %7531 = fmul fast float %7515, 0x402921FB60000000
  %7532 = fadd fast float %7531, 0x401921FB60000000
  %7533 = call float @dx.op.unary.f32(i32 13, float %7532)  ; Sin(value)
  %7534 = fadd fast float %7533, 0xBE8777A5C0000000
  %7535 = fmul fast float %7534, 0x3FB45F3060000000
  %7536 = call float @dx.op.dot4.f32(i32 56, float %7510, float %7511, float %7512, float %7513, float %7520, float %7525, float %7530, float %7535)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7537 = fmul fast float %7536, 0xBFF7154760000000
  %7538 = call float @dx.op.unary.f32(i32 21, float %7537)  ; Exp(value)
  %7539 = call float @dx.op.unary.f32(i32 7, float %7538)  ; Saturate(value)
  br label %7540

; <label>:7540                                    ; preds = %7508, %7504
  %7541 = phi float [ %7539, %7508 ], [ 1.000000e+00, %7504 ]
  %7542 = fadd fast float %7541, -1.000000e+00
  %7543 = fmul fast float %7542, %7502
  %7544 = fadd fast float %7543, 1.000000e+00
  br label %7545

; <label>:7545                                    ; preds = %7540, %7445
  %7546 = phi float [ %7544, %7540 ], [ 1.000000e+00, %7445 ]
  %7547 = fmul fast float %7546, %7441
  %7548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7549 = extractvalue %dx.types.CBufRet.f32 %7548, 0
  %7550 = extractvalue %dx.types.CBufRet.f32 %7548, 1
  %7551 = extractvalue %dx.types.CBufRet.f32 %7548, 2
  %7552 = fadd fast float %7549, %152
  %7553 = fadd fast float %7550, %153
  %7554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7555 = extractvalue %dx.types.CBufRet.f32 %7554, 1
  %7556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7557 = extractvalue %dx.types.CBufRet.f32 %7556, 0
  %7558 = extractvalue %dx.types.CBufRet.f32 %7556, 1
  %7559 = extractvalue %dx.types.CBufRet.f32 %7556, 2
  %7560 = fsub fast float -0.000000e+00, %7552
  %7561 = fsub fast float -0.000000e+00, %7553
  %7562 = fsub fast float -0.000000e+00, %154
  %7563 = fsub fast float %7562, %7551
  %7564 = fadd fast float %7563, %7555
  %7565 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7560, float %7561, float %7564)  ; Dot3(ax,ay,az,bx,by,bz)
  %7566 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7557, float %7558, float %7559)  ; Dot3(ax,ay,az,bx,by,bz)
  %7567 = fdiv fast float 1.000000e+00, %7566
  %7568 = fmul fast float %7567, %7565
  %7569 = fmul fast float %7557, %7568
  %7570 = fmul fast float %7558, %7568
  %7571 = fadd fast float %7569, %7552
  %7572 = fadd fast float %7570, %7553
  %7573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7574 = extractvalue %dx.types.CBufRet.f32 %7573, 0
  %7575 = extractvalue %dx.types.CBufRet.f32 %7573, 1
  %7576 = fsub fast float %7571, %7574
  %7577 = fsub fast float %7572, %7575
  %7578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7579 = extractvalue %dx.types.CBufRet.f32 %7578, 2
  %7580 = extractvalue %dx.types.CBufRet.f32 %7578, 3
  %7581 = fmul fast float %7576, %7579
  %7582 = fmul fast float %7577, %7580
  %7583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7584 = extractvalue %dx.types.CBufRet.i32 %7583, 3
  %7585 = icmp eq i32 %7584, 0
  br i1 %7585, label %7591, label %7586

; <label>:7586                                    ; preds = %7545
  %7587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %7581, float %7582, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7588 = extractvalue %dx.types.ResRet.f32 %7587, 0
  %7589 = extractvalue %dx.types.ResRet.f32 %7587, 1
  %7590 = extractvalue %dx.types.ResRet.f32 %7587, 2
  br label %7596

; <label>:7591                                    ; preds = %7545
  %7592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7581, float %7582, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7593 = extractvalue %dx.types.ResRet.f32 %7592, 0
  %7594 = extractvalue %dx.types.ResRet.f32 %7592, 1
  %7595 = extractvalue %dx.types.ResRet.f32 %7592, 2
  br label %7596

; <label>:7596                                    ; preds = %7591, %7586
  %7597 = phi float [ %7588, %7586 ], [ %7593, %7591 ]
  %7598 = phi float [ %7589, %7586 ], [ %7594, %7591 ]
  %7599 = phi float [ %7590, %7586 ], [ %7595, %7591 ]
  %7600 = extractvalue %dx.types.CBufRet.f32 %7554, 2
  %7601 = fmul fast float %7600, %7597
  %7602 = extractvalue %dx.types.CBufRet.f32 %7554, 0
  %7603 = fsub fast float %7568, %7602
  %7604 = fsub fast float %7603, %7601
  %7605 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7604)  ; FMax(a,b)
  %7606 = fmul fast float %7605, %7598
  %7607 = call float @dx.op.binary.f32(i32 36, float %7599, float %7606)  ; FMin(a,b)
  %7608 = fmul fast float %7607, 0xBFF7154760000000
  %7609 = call float @dx.op.unary.f32(i32 21, float %7608)  ; Exp(value)
  %7610 = fmul fast float %7547, %7609
  br label %7611

; <label>:7611                                    ; preds = %7596, %7440
  %7612 = phi float [ %7610, %7596 ], [ %7441, %7440 ]
  %7613 = call float @dx.op.binary.f32(i32 36, float %7612, float %7612)  ; FMin(a,b)
  %7614 = call float @dx.op.binary.f32(i32 36, float %7612, float %7613)  ; FMin(a,b)
  %7615 = fcmp fast ogt float %7614, 0.000000e+00
  br i1 %7615, label %7616, label %7924, !dx.controlflow.hints !116

; <label>:7616                                    ; preds = %7611
  %7617 = bitcast i32 %5443 to float
  %7618 = fmul fast float %7612, %6333
  %7619 = fmul fast float %7612, %6334
  %7620 = fmul fast float %7612, %6335
  %7621 = fsub fast float %6322, %5405
  %7622 = fsub fast float %6323, %5404
  %7623 = fsub fast float %6324, %5403
  %7624 = call float @dx.op.dot3.f32(i32 55, float %7621, float %7622, float %7623, float %7621, float %7622, float %7623)  ; Dot3(ax,ay,az,bx,by,bz)
  %7625 = call float @dx.op.unary.f32(i32 25, float %7624)  ; Rsqrt(value)
  %7626 = fmul fast float %7625, %7621
  %7627 = fmul fast float %7625, %7622
  %7628 = fmul fast float %7625, %7623
  %7629 = call float @dx.op.dot3.f32(i32 55, float %6322, float %6323, float %6324, float %5409, float %5410, float %5411)  ; Dot3(ax,ay,az,bx,by,bz)
  %7630 = call float @dx.op.dot3.f32(i32 55, float %5402, float %5401, float %5400, float %7626, float %7627, float %7628)  ; Dot3(ax,ay,az,bx,by,bz)
  %7631 = call float @dx.op.unary.f32(i32 7, float %7629)  ; Saturate(value)
  %7632 = fmul fast float %7631, %7631
  %7633 = fmul fast float %7632, %7617
  %7634 = call float @dx.op.unary.f32(i32 7, float %7633)  ; Saturate(value)
  %7635 = fmul fast float %7634, %7631
  %7636 = call float @dx.op.dot3.f32(i32 55, float %5409, float %5410, float %5411, float %7626, float %7627, float %7628)  ; Dot3(ax,ay,az,bx,by,bz)
  %7637 = fmul fast float %7636, %7636
  %7638 = call float @dx.op.unary.f32(i32 6, float %7629)  ; FAbs(value)
  %7639 = fsub fast float 1.000000e+00, %5437
  %7640 = fmul fast float %5419, %5419
  %7641 = fmul fast float %7640, %7639
  %7642 = fadd fast float %7641, %5437
  %7643 = bitcast float %7642 to i32
  %7644 = ashr i32 %7643, 1
  %7645 = add nsw i32 %7644, 532487669
  %7646 = bitcast i32 %7645 to float
  %7647 = fadd fast float %7646, %5419
  %7648 = fmul fast float %5437, %7637
  %7649 = fsub fast float 1.000000e+00, %7637
  %7650 = fadd fast float %7649, %7648
  %7651 = fmul fast float %7638, %7638
  %7652 = fmul fast float %7651, %7639
  %7653 = fadd fast float %7652, %5437
  %7654 = bitcast float %7653 to i32
  %7655 = ashr i32 %7654, 1
  %7656 = add nsw i32 %7655, 532487669
  %7657 = bitcast i32 %7656 to float
  %7658 = fadd fast float %7657, %7638
  %7659 = fmul fast float %7650, %7650
  %7660 = fmul fast float %7659, %7647
  %7661 = fmul fast float %7660, %7658
  %7662 = fdiv fast float 0x3FF0A00000000000, %7661
  %7663 = fmul fast float %7662, %5437
  %7664 = fmul fast float %5689, 0x3FF9999980000000
  %7665 = fsub fast float 5.000000e+00, %7664
  %7666 = call float @dx.op.unary.f32(i32 6, float %7630)  ; FAbs(value)
  %7667 = fsub fast float 1.000000e+00, %7666
  %7668 = fmul fast float %5689, 0x41D9660740000000
  %7669 = fadd fast float %7668, 0xC1EFBF8940000000
  %7670 = bitcast float %7667 to i32
  %7671 = sitofp i32 %7670 to float
  %7672 = fmul fast float %7671, %7665
  %7673 = fadd fast float %7669, %7672
  %7674 = fptosi float %7673 to i32
  %7675 = bitcast i32 %7674 to float
  %7676 = fsub fast float 1.000000e+00, %5412
  %7677 = fsub fast float 1.000000e+00, %5413
  %7678 = fsub fast float 1.000000e+00, %5417
  %7679 = fmul fast float %7675, %7676
  %7680 = fmul fast float %7675, %7677
  %7681 = fmul fast float %7675, %7678
  %7682 = fadd fast float %7679, %5412
  %7683 = fadd fast float %7680, %5413
  %7684 = fadd fast float %7681, %5417
  br i1 %5712, label %7685, label %7708

; <label>:7685                                    ; preds = %7616
  %7686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5066, float %7666, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7687 = extractvalue %dx.types.ResRet.f32 %7686, 0
  %7688 = extractvalue %dx.types.ResRet.f32 %7686, 1
  %7689 = extractvalue %dx.types.ResRet.f32 %7686, 2
  %7690 = fadd fast float %7687, -5.000000e-01
  %7691 = fadd fast float %7688, -5.000000e-01
  %7692 = fadd fast float %7689, -5.000000e-01
  %7693 = fmul fast float %5412, 4.000000e+00
  %7694 = fmul fast float %7693, %7676
  %7695 = fmul fast float %7694, %7690
  %7696 = fmul fast float %5413, 4.000000e+00
  %7697 = fmul fast float %7696, %7677
  %7698 = fmul fast float %7697, %7691
  %7699 = fmul fast float %5417, 4.000000e+00
  %7700 = fmul fast float %7699, %7678
  %7701 = fmul fast float %7700, %7692
  %7702 = fadd fast float %7695, %7682
  %7703 = fadd fast float %7698, %7683
  %7704 = fadd fast float %7701, %7684
  %7705 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  %7706 = call float @dx.op.unary.f32(i32 7, float %7703)  ; Saturate(value)
  %7707 = call float @dx.op.unary.f32(i32 7, float %7704)  ; Saturate(value)
  br label %7708

; <label>:7708                                    ; preds = %7685, %7616
  %7709 = phi float [ %7705, %7685 ], [ %7682, %7616 ]
  %7710 = phi float [ %7706, %7685 ], [ %7683, %7616 ]
  %7711 = phi float [ %7707, %7685 ], [ %7684, %7616 ]
  %7712 = fmul fast float %7629, 9.843750e-01
  %7713 = fadd fast float %7712, 7.812500e-03
  %7714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7713, float %5693, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7715 = extractvalue %dx.types.ResRet.f32 %7714, 0
  %7716 = extractvalue %dx.types.ResRet.f32 %7714, 1
  %7717 = extractvalue %dx.types.ResRet.f32 %7714, 2
  %7718 = extractvalue %dx.types.ResRet.f32 %7714, 3
  %7719 = fsub fast float %7717, %7715
  %7720 = fsub fast float %7718, %7716
  %7721 = fmul fast float %7719, %5699
  %7722 = fmul fast float %7720, %5699
  %7723 = fadd fast float %7721, %7715
  %7724 = fadd fast float %7722, %7716
  %7725 = fmul fast float %7723, %5412
  %7726 = fmul fast float %7723, %5413
  %7727 = fmul fast float %7723, %5417
  %7728 = fadd fast float %7725, %7724
  %7729 = fadd fast float %7726, %7724
  %7730 = fadd fast float %7727, %7724
  br i1 %5712, label %7731, label %7754

; <label>:7731                                    ; preds = %7708
  %7732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5066, float %7629, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7733 = extractvalue %dx.types.ResRet.f32 %7732, 0
  %7734 = extractvalue %dx.types.ResRet.f32 %7732, 1
  %7735 = extractvalue %dx.types.ResRet.f32 %7732, 2
  %7736 = fadd fast float %7733, -5.000000e-01
  %7737 = fadd fast float %7734, -5.000000e-01
  %7738 = fadd fast float %7735, -5.000000e-01
  %7739 = fmul fast float %5412, 4.000000e+00
  %7740 = fmul fast float %7739, %7676
  %7741 = fmul fast float %7740, %7736
  %7742 = fmul fast float %5413, 4.000000e+00
  %7743 = fmul fast float %7742, %7677
  %7744 = fmul fast float %7743, %7737
  %7745 = fmul fast float %5417, 4.000000e+00
  %7746 = fmul fast float %7745, %7678
  %7747 = fmul fast float %7746, %7738
  %7748 = fadd fast float %7741, %7728
  %7749 = fadd fast float %7744, %7729
  %7750 = fadd fast float %7747, %7730
  %7751 = call float @dx.op.unary.f32(i32 7, float %7748)  ; Saturate(value)
  %7752 = call float @dx.op.unary.f32(i32 7, float %7749)  ; Saturate(value)
  %7753 = call float @dx.op.unary.f32(i32 7, float %7750)  ; Saturate(value)
  br label %7754

; <label>:7754                                    ; preds = %7731, %7708
  %7755 = phi float [ %7751, %7731 ], [ %7728, %7708 ]
  %7756 = phi float [ %7752, %7731 ], [ %7729, %7708 ]
  %7757 = phi float [ %7753, %7731 ], [ %7730, %7708 ]
  %7758 = call float @dx.op.binary.f32(i32 35, float %7756, float %7757)  ; FMax(a,b)
  %7759 = call float @dx.op.binary.f32(i32 35, float %7755, float %7758)  ; FMax(a,b)
  %7760 = fsub fast float 1.000000e+00, %7759
  %7761 = call float @dx.op.binary.f32(i32 35, float %7638, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7762 = fdiv fast float %4414, %7761
  %7763 = fmul fast float %6231, %7762
  %7764 = fmul fast float %6233, %7762
  %7765 = fmul fast float %6235, %7762
  %7766 = call float @dx.op.unary.f32(i32 21, float %7763)  ; Exp(value)
  %7767 = call float @dx.op.unary.f32(i32 21, float %7764)  ; Exp(value)
  %7768 = call float @dx.op.unary.f32(i32 21, float %7765)  ; Exp(value)
  %7769 = call float @dx.op.unary.f32(i32 7, float %7766)  ; Saturate(value)
  %7770 = call float @dx.op.unary.f32(i32 7, float %7767)  ; Saturate(value)
  %7771 = call float @dx.op.unary.f32(i32 7, float %7768)  ; Saturate(value)
  %7772 = select i1 %6228, float %7769, float 0.000000e+00
  %7773 = select i1 %6229, float %7770, float 0.000000e+00
  %7774 = select i1 %6230, float %7771, float 0.000000e+00
  %7775 = fsub fast float -0.000000e+00, %5409
  %7776 = fsub fast float -0.000000e+00, %5410
  %7777 = fsub fast float -0.000000e+00, %5411
  %7778 = call float @dx.op.dot3.f32(i32 55, float %6322, float %6323, float %6324, float %7775, float %7776, float %7777)  ; Dot3(ax,ay,az,bx,by,bz)
  %7779 = call float @dx.op.unary.f32(i32 7, float %7778)  ; Saturate(value)
  %7780 = fmul fast float %7779, 9.843750e-01
  %7781 = fadd fast float %7780, 7.812500e-03
  %7782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7781, float %5693, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7783 = extractvalue %dx.types.ResRet.f32 %7782, 0
  %7784 = extractvalue %dx.types.ResRet.f32 %7782, 1
  %7785 = extractvalue %dx.types.ResRet.f32 %7782, 2
  %7786 = extractvalue %dx.types.ResRet.f32 %7782, 3
  %7787 = fsub fast float %7785, %7783
  %7788 = fsub fast float %7786, %7784
  %7789 = fmul fast float %7787, %5699
  %7790 = fmul fast float %7788, %5699
  %7791 = fadd fast float %7789, %7783
  %7792 = fadd fast float %7790, %7784
  %7793 = fmul fast float %7791, %5412
  %7794 = fmul fast float %7791, %5413
  %7795 = fmul fast float %7791, %5417
  %7796 = fadd fast float %7793, %7792
  %7797 = fadd fast float %7794, %7792
  %7798 = fadd fast float %7795, %7792
  br i1 %5712, label %7799, label %7822

; <label>:7799                                    ; preds = %7754
  %7800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5066, float %7779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7801 = extractvalue %dx.types.ResRet.f32 %7800, 0
  %7802 = extractvalue %dx.types.ResRet.f32 %7800, 1
  %7803 = extractvalue %dx.types.ResRet.f32 %7800, 2
  %7804 = fadd fast float %7801, -5.000000e-01
  %7805 = fadd fast float %7802, -5.000000e-01
  %7806 = fadd fast float %7803, -5.000000e-01
  %7807 = fmul fast float %5412, 4.000000e+00
  %7808 = fmul fast float %7807, %7676
  %7809 = fmul fast float %7808, %7804
  %7810 = fmul fast float %5413, 4.000000e+00
  %7811 = fmul fast float %7810, %7677
  %7812 = fmul fast float %7811, %7805
  %7813 = fmul fast float %5417, 4.000000e+00
  %7814 = fmul fast float %7813, %7678
  %7815 = fmul fast float %7814, %7806
  %7816 = fadd fast float %7809, %7796
  %7817 = fadd fast float %7812, %7797
  %7818 = fadd fast float %7815, %7798
  %7819 = call float @dx.op.unary.f32(i32 7, float %7816)  ; Saturate(value)
  %7820 = call float @dx.op.unary.f32(i32 7, float %7817)  ; Saturate(value)
  %7821 = call float @dx.op.unary.f32(i32 7, float %7818)  ; Saturate(value)
  br label %7822

; <label>:7822                                    ; preds = %7799, %7754
  %7823 = phi float [ %7819, %7799 ], [ %7796, %7754 ]
  %7824 = phi float [ %7820, %7799 ], [ %7797, %7754 ]
  %7825 = phi float [ %7821, %7799 ], [ %7798, %7754 ]
  %7826 = call float @dx.op.binary.f32(i32 35, float %7824, float %7825)  ; FMax(a,b)
  %7827 = call float @dx.op.binary.f32(i32 35, float %7823, float %7826)  ; FMax(a,b)
  %7828 = fsub fast float 1.000000e+00, %7827
  %7829 = fmul fast float %5434, %6295
  %7830 = fadd fast float %6297, %7829
  %7831 = call float @dx.op.unary.f32(i32 7, float %7830)  ; Saturate(value)
  %7832 = fsub fast float %6322, %5425
  %7833 = fsub fast float %6323, %5426
  %7834 = fsub fast float %6324, %5427
  %7835 = call float @dx.op.dot3.f32(i32 55, float %7832, float %7833, float %7834, float %7832, float %7833, float %7834)  ; Dot3(ax,ay,az,bx,by,bz)
  %7836 = call float @dx.op.unary.f32(i32 25, float %7835)  ; Rsqrt(value)
  %7837 = fmul fast float %7836, %7832
  %7838 = fmul fast float %7836, %7833
  %7839 = fmul fast float %7836, %7834
  %7840 = call float @dx.op.dot3.f32(i32 55, float %7775, float %7776, float %7777, float %7837, float %7838, float %7839)  ; Dot3(ax,ay,az,bx,by,bz)
  %7841 = fmul fast float %7840, %7840
  %7842 = call float @dx.op.unary.f32(i32 6, float %7779)  ; FAbs(value)
  %7843 = call float @dx.op.binary.f32(i32 35, float %7831, float 0x3F847AE140000000)  ; FMax(a,b)
  %7844 = fmul fast float %7843, %7843
  %7845 = fmul fast float %7844, %7844
  %7846 = fsub fast float 1.000000e+00, %7845
  %7847 = fmul fast float %7640, %7846
  %7848 = fadd fast float %7847, %7845
  %7849 = bitcast float %7848 to i32
  %7850 = ashr i32 %7849, 1
  %7851 = add nsw i32 %7850, 532487669
  %7852 = bitcast i32 %7851 to float
  %7853 = fadd fast float %7852, %5419
  %7854 = fmul fast float %7845, %7841
  %7855 = fsub fast float 1.000000e+00, %7841
  %7856 = fadd fast float %7855, %7854
  %7857 = fmul fast float %7842, %7842
  %7858 = fmul fast float %7857, %7846
  %7859 = fadd fast float %7858, %7845
  %7860 = bitcast float %7859 to i32
  %7861 = ashr i32 %7860, 1
  %7862 = add nsw i32 %7861, 532487669
  %7863 = bitcast i32 %7862 to float
  %7864 = fadd fast float %7863, %7842
  %7865 = fmul fast float %7856, %7856
  %7866 = fmul fast float %7865, %7853
  %7867 = fmul fast float %7866, %7864
  %7868 = fdiv fast float 0x3FF0A00000000000, %7867
  %7869 = fmul fast float %7868, %7845
  %7870 = fmul fast float %7779, %7772
  %7871 = fmul fast float %7779, %7773
  %7872 = fmul fast float %7779, %7774
  %7873 = fmul fast float %7870, %7828
  %7874 = fmul fast float %7873, %7869
  %7875 = fmul fast float %7871, %7828
  %7876 = fmul fast float %7875, %7869
  %7877 = fmul fast float %7872, %7828
  %7878 = fmul fast float %7877, %7869
  %7879 = fmul fast float %7709, %7663
  %7880 = fmul fast float %7710, %7663
  %7881 = fmul fast float %7711, %7663
  %7882 = fsub fast float 1.000000e+00, %7630
  %7883 = bitcast float %7882 to i32
  %7884 = sitofp i32 %7883 to float
  %7885 = fmul fast float %7884, 5.000000e+00
  %7886 = fadd fast float %7885, 0xC1EFBF8940000000
  %7887 = fptosi float %7886 to i32
  %7888 = bitcast i32 %7887 to float
  %7889 = fmul fast float %7888, %5067
  %7890 = fmul fast float %7760, %7889
  %7891 = fmul fast float %7890, %6223
  %7892 = fmul fast float %7890, %6224
  %7893 = fmul fast float %7890, %6225
  %7894 = fadd fast float %7891, %7879
  %7895 = fadd fast float %7892, %7880
  %7896 = fadd fast float %7893, %7881
  %7897 = fmul fast float %7894, %7635
  %7898 = fmul fast float %7895, %7635
  %7899 = fmul fast float %7896, %7635
  %7900 = fmul fast float %7635, %7618
  %7901 = fmul fast float %7900, %7760
  %7902 = fmul fast float %7635, %7619
  %7903 = fmul fast float %7902, %7760
  %7904 = fmul fast float %7635, %7620
  %7905 = fmul fast float %7904, %7760
  %7906 = fadd fast float %7897, %7874
  %7907 = fadd fast float %7898, %7876
  %7908 = fadd fast float %7899, %7878
  %7909 = fmul fast float %7906, %7618
  %7910 = fmul fast float %7907, %7619
  %7911 = fmul fast float %7908, %7620
  %7912 = fadd fast float %7901, %6312
  %7913 = fmul fast float %7912, %5063
  %7914 = fadd fast float %7903, %6314
  %7915 = fmul fast float %7914, %5063
  %7916 = fadd fast float %7905, %6316
  %7917 = fmul fast float %7916, %5063
  %7918 = fadd fast float %7909, %6276
  %7919 = fmul fast float %7918, %5063
  %7920 = fadd fast float %7910, %6279
  %7921 = fmul fast float %7920, %5063
  %7922 = fadd fast float %7911, %6282
  %7923 = fmul fast float %7922, %5063
  br label %7924

; <label>:7924                                    ; preds = %7822, %7611, %6206
  %7925 = phi float [ %6277, %6206 ], [ %6277, %7611 ], [ %7919, %7822 ]
  %7926 = phi float [ %6280, %6206 ], [ %6280, %7611 ], [ %7921, %7822 ]
  %7927 = phi float [ %6283, %6206 ], [ %6283, %7611 ], [ %7923, %7822 ]
  %7928 = phi float [ %6313, %6206 ], [ %6313, %7611 ], [ %7913, %7822 ]
  %7929 = phi float [ %6315, %6206 ], [ %6315, %7611 ], [ %7915, %7822 ]
  %7930 = phi float [ %6317, %6206 ], [ %6317, %7611 ], [ %7917, %7822 ]
  %7931 = fmul fast float %6252, %5063
  %7932 = fmul fast float %6253, %5063
  %7933 = fmul fast float %6254, %5063
  %7934 = fadd fast float %7931, 1.000000e+00
  %7935 = fadd fast float %7932, 1.000000e+00
  %7936 = fadd fast float %7933, 1.000000e+00
  %7937 = call float @dx.op.dot3.f32(i32 55, float %7934, float %7935, float %7936, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7938 = fsub fast float 1.000000e+00, %7937
  %7939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7940 = extractvalue %dx.types.CBufRet.f32 %7939, 0
  %7941 = fmul fast float %7940, %6258
  %7942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7943 = extractvalue %dx.types.CBufRet.f32 %7942, 3
  %7944 = fsub fast float 1.000000e+00, %5070
  %7945 = call float @dx.op.unary.f32(i32 7, float %7944)  ; Saturate(value)
  %7946 = fadd fast float %7930, %5069
  %7947 = fmul fast float %7946, %5070
  %7948 = fmul fast float %7945, %7943
  %7949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7950 = extractvalue %dx.types.CBufRet.f32 %7949, 3
  %7951 = fmul fast float %7928, %5406
  %7952 = fmul fast float %7929, %5407
  %7953 = fmul fast float %7930, %5408
  %7954 = fcmp fast ogt float %85, %174
  %7955 = and i1 %7954, %5138
  %7956 = or i1 %5217, %7955
  %7957 = icmp eq i32 %5137, 2
  %7958 = fcmp fast ole float %85, %174
  %7959 = and i1 %7958, %7957
  %7960 = or i1 %7959, %7956
  br i1 %7955, label %7961, label %8218

; <label>:7961                                    ; preds = %7924
  %7962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7963 = extractvalue %dx.types.CBufRet.f32 %7962, 2
  %7964 = extractvalue %dx.types.CBufRet.f32 %7962, 3
  %7965 = fmul fast float %7963, %97
  %7966 = fmul fast float %7964, %98
  %7967 = call float @dx.op.unary.f32(i32 7, float %7965)  ; Saturate(value)
  %7968 = call float @dx.op.unary.f32(i32 7, float %7966)  ; Saturate(value)
  %7969 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7967, float %7968, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7970 = extractvalue %dx.types.ResRet.f32 %7969, 0
  %7971 = extractvalue %dx.types.ResRet.f32 %7969, 1
  %7972 = extractvalue %dx.types.ResRet.f32 %7969, 2
  %7973 = extractvalue %dx.types.ResRet.f32 %7969, 3
  %7974 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7967, float %7968, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7975 = extractvalue %dx.types.ResRet.f32 %7974, 0
  %7976 = extractvalue %dx.types.ResRet.f32 %7974, 1
  %7977 = extractvalue %dx.types.ResRet.f32 %7974, 2
  %7978 = extractvalue %dx.types.ResRet.f32 %7974, 3
  %7979 = call float @dx.op.binary.f32(i32 35, float %7971, float %7972)  ; FMax(a,b)
  %7980 = call float @dx.op.binary.f32(i32 35, float %7970, float %7979)  ; FMax(a,b)
  %7981 = call float @dx.op.binary.f32(i32 35, float %7980, float %7973)  ; FMax(a,b)
  %7982 = call float @dx.op.binary.f32(i32 36, float %7976, float %7977)  ; FMin(a,b)
  %7983 = call float @dx.op.binary.f32(i32 36, float %7975, float %7982)  ; FMin(a,b)
  %7984 = call float @dx.op.binary.f32(i32 36, float %7983, float %7978)  ; FMin(a,b)
  %7985 = fmul fast float %7981, 2.550000e+02
  %7986 = fadd fast float %7985, 0x3F70101020000000
  %7987 = fptoui float %7986 to i32
  %7988 = fmul fast float %7984, 2.550000e+02
  %7989 = fadd fast float %7988, 0x3F70101020000000
  %7990 = fptoui float %7989 to i32
  %7991 = icmp ult i32 %7987, %7990
  br i1 %7991, label %7992, label %8160

; <label>:7992                                    ; preds = %7961
  %7993 = fcmp fast ogt float %84, 9.843750e-01
  %7994 = fadd fast float %85, -4.000000e+00
  %7995 = select i1 %7993, float -4.000000e+00, float %7994
  %7996 = call float @dx.op.binary.f32(i32 35, float %7995, float 0.000000e+00)  ; FMax(a,b)
  %7997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7998 = extractvalue %dx.types.CBufRet.f32 %7997, 0
  %7999 = fadd fast float %7998, %7996
  %8000 = extractvalue %dx.types.CBufRet.f32 %7997, 2
  %8001 = fmul fast float %7999, %8000
  %8002 = call float @dx.op.unary.f32(i32 23, float %8001)  ; Log(value)
  %8003 = extractvalue %dx.types.CBufRet.f32 %7997, 3
  %8004 = fmul fast float %8003, %8002
  %8005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8006 = extractvalue %dx.types.CBufRet.f32 %8005, 2
  %8007 = fmul fast float %8004, %8006
  %8008 = call float @dx.op.unary.f32(i32 7, float %8007)  ; Saturate(value)
  %8009 = uitofp i32 %7987 to float
  %8010 = uitofp i32 %7990 to float
  %8011 = fadd fast float %8009, 5.000000e-01
  %8012 = fadd fast float %8010, 5.000000e-01
  %8013 = fmul fast float %8006, %8011
  %8014 = fmul fast float %8006, %8012
  %8015 = fadd fast float %8013, 0x3F0FFB4800000000
  %8016 = fadd fast float %8014, 0xBF0FFB4800000000
  %8017 = call float @dx.op.binary.f32(i32 35, float %8008, float %8015)  ; FMax(a,b)
  %8018 = call float @dx.op.binary.f32(i32 36, float %8017, float %8016)  ; FMin(a,b)
  %8019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8020 = extractvalue %dx.types.CBufRet.f32 %8019, 1
  %8021 = extractvalue %dx.types.CBufRet.f32 %8019, 2
  %8022 = extractvalue %dx.types.CBufRet.f32 %8019, 0
  %8023 = fmul fast float %8020, %8018
  %8024 = fadd fast float %8022, %8023
  %8025 = fadd fast float %8022, %8021
  %8026 = fsub fast float %8020, %8021
  %8027 = fadd fast float %8026, %8022
  %8028 = call float @dx.op.binary.f32(i32 35, float %8024, float %8025)  ; FMax(a,b)
  %8029 = call float @dx.op.binary.f32(i32 36, float %8028, float %8027)  ; FMin(a,b)
  %8030 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %7967, float %7968, float %8029, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8031 = extractvalue %dx.types.ResRet.f32 %8030, 0
  %8032 = extractvalue %dx.types.ResRet.f32 %8030, 1
  %8033 = extractvalue %dx.types.ResRet.f32 %8030, 2
  %8034 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8035 = extractvalue %dx.types.CBufRet.i32 %8034, 0
  %8036 = extractvalue %dx.types.CBufRet.i32 %8034, 1
  %8037 = uitofp i32 %8035 to float
  %8038 = uitofp i32 %8036 to float
  %8039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8040 = extractvalue %dx.types.CBufRet.f32 %8039, 0
  %8041 = extractvalue %dx.types.CBufRet.f32 %8039, 1
  %8042 = fmul fast float %8037, %7967
  %8043 = fmul fast float %8038, %7968
  %8044 = fadd fast float %8042, -5.000000e-01
  %8045 = fadd fast float %8043, -5.000000e-01
  %8046 = call float @dx.op.unary.f32(i32 22, float %8044)  ; Frc(value)
  %8047 = call float @dx.op.unary.f32(i32 22, float %8045)  ; Frc(value)
  %8048 = fmul fast float %8046, %8046
  %8049 = fmul fast float %8048, %8046
  %8050 = fsub fast float 3.000000e+00, %8046
  %8051 = fmul fast float %8048, %8050
  %8052 = fmul fast float %8046, 3.000000e+00
  %8053 = fmul fast float %8049, 3.000000e+00
  %8054 = fmul fast float %8048, 6.000000e+00
  %8055 = fsub fast float %8053, %8054
  %8056 = fadd fast float %8055, 4.000000e+00
  %8057 = fmul fast float %8056, 0x3FC5555560000000
  %8058 = fmul fast float %8049, -3.000000e+00
  %8059 = fadd fast float %8048, %8046
  %8060 = fmul fast float %8059, 3.000000e+00
  %8061 = fadd fast float %8058, 1.000000e+00
  %8062 = fadd fast float %8061, %8060
  %8063 = fmul fast float %8049, 0x3FC5555560000000
  %8064 = fmul fast float %8047, %8047
  %8065 = fmul fast float %8064, %8047
  %8066 = fsub fast float 3.000000e+00, %8047
  %8067 = fmul fast float %8064, %8066
  %8068 = fmul fast float %8047, 3.000000e+00
  %8069 = fmul fast float %8065, 3.000000e+00
  %8070 = fmul fast float %8064, 6.000000e+00
  %8071 = fsub fast float %8069, %8070
  %8072 = fadd fast float %8071, 4.000000e+00
  %8073 = fmul fast float %8072, 0x3FC5555560000000
  %8074 = fmul fast float %8065, -3.000000e+00
  %8075 = fadd fast float %8064, %8047
  %8076 = fmul fast float %8075, 3.000000e+00
  %8077 = fadd fast float %8074, 1.000000e+00
  %8078 = fadd fast float %8077, %8076
  %8079 = fmul fast float %8065, 0x3FC5555560000000
  %8080 = fadd fast float %8046, 1.000000e+00
  %8081 = fsub fast float 1.000000e+00, %8052
  %8082 = fadd fast float %8081, %8051
  %8083 = fadd fast float %8082, %8056
  %8084 = fmul fast float %8083, 0x3FC5555560000000
  %8085 = fdiv fast float %8057, %8084
  %8086 = fsub fast float %8080, %8085
  %8087 = fsub fast float 1.000000e+00, %8046
  %8088 = fadd fast float %8062, %8049
  %8089 = fmul fast float %8088, 0x3FC5555560000000
  %8090 = fdiv fast float %8063, %8089
  %8091 = fadd fast float %8087, %8090
  %8092 = fadd fast float %8047, 1.000000e+00
  %8093 = fsub fast float 1.000000e+00, %8068
  %8094 = fadd fast float %8093, %8067
  %8095 = fadd fast float %8094, %8072
  %8096 = fmul fast float %8095, 0x3FC5555560000000
  %8097 = fdiv fast float %8073, %8096
  %8098 = fsub fast float %8092, %8097
  %8099 = fsub fast float 1.000000e+00, %8047
  %8100 = fadd fast float %8078, %8065
  %8101 = fmul fast float %8100, 0x3FC5555560000000
  %8102 = fdiv fast float %8079, %8101
  %8103 = fadd fast float %8102, %8099
  %8104 = fmul fast float %8086, %8040
  %8105 = fsub fast float %7967, %8104
  %8106 = fmul fast float %8091, %8040
  %8107 = fadd fast float %8106, %7967
  %8108 = fmul fast float %8103, %8041
  %8109 = fadd fast float %8108, %7968
  %8110 = fmul fast float %8098, %8041
  %8111 = fsub fast float %7968, %8110
  %8112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8105, float %8111, float %8029, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8113 = extractvalue %dx.types.ResRet.f32 %8112, 0
  %8114 = extractvalue %dx.types.ResRet.f32 %8112, 1
  %8115 = extractvalue %dx.types.ResRet.f32 %8112, 2
  %8116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8107, float %8111, float %8029, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8117 = extractvalue %dx.types.ResRet.f32 %8116, 0
  %8118 = extractvalue %dx.types.ResRet.f32 %8116, 1
  %8119 = extractvalue %dx.types.ResRet.f32 %8116, 2
  %8120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8105, float %8109, float %8029, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8121 = extractvalue %dx.types.ResRet.f32 %8120, 0
  %8122 = extractvalue %dx.types.ResRet.f32 %8120, 1
  %8123 = extractvalue %dx.types.ResRet.f32 %8120, 2
  %8124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8107, float %8109, float %8029, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8125 = extractvalue %dx.types.ResRet.f32 %8124, 0
  %8126 = extractvalue %dx.types.ResRet.f32 %8124, 1
  %8127 = extractvalue %dx.types.ResRet.f32 %8124, 2
  %8128 = fsub fast float %8121, %8113
  %8129 = fsub fast float %8122, %8114
  %8130 = fsub fast float %8123, %8115
  %8131 = fmul fast float %8128, %8101
  %8132 = fmul fast float %8129, %8101
  %8133 = fmul fast float %8130, %8101
  %8134 = fadd fast float %8131, %8113
  %8135 = fadd fast float %8132, %8114
  %8136 = fadd fast float %8133, %8115
  %8137 = fsub fast float %8125, %8117
  %8138 = fsub fast float %8126, %8118
  %8139 = fsub fast float %8127, %8119
  %8140 = fmul fast float %8137, %8101
  %8141 = fmul fast float %8138, %8101
  %8142 = fmul fast float %8139, %8101
  %8143 = fsub fast float %8117, %8134
  %8144 = fadd fast float %8143, %8140
  %8145 = fsub fast float %8118, %8135
  %8146 = fadd fast float %8145, %8141
  %8147 = fsub fast float %8119, %8136
  %8148 = fadd fast float %8147, %8142
  %8149 = fmul fast float %8144, %8089
  %8150 = fmul fast float %8146, %8089
  %8151 = fmul fast float %8148, %8089
  %8152 = fadd fast float %8149, %8134
  %8153 = fadd fast float %8150, %8135
  %8154 = fadd fast float %8151, %8136
  %8155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8156 = extractvalue %dx.types.CBufRet.f32 %8155, 1
  %8157 = fmul fast float %8152, %8156
  %8158 = fmul fast float %8153, %8156
  %8159 = fmul fast float %8154, %8156
  br label %8160

; <label>:8160                                    ; preds = %7992, %7961
  %8161 = phi float [ %8031, %7992 ], [ 1.000000e+00, %7961 ]
  %8162 = phi float [ %8032, %7992 ], [ 1.000000e+00, %7961 ]
  %8163 = phi float [ %8033, %7992 ], [ 1.000000e+00, %7961 ]
  %8164 = phi float [ %8157, %7992 ], [ 0.000000e+00, %7961 ]
  %8165 = phi float [ %8158, %7992 ], [ 0.000000e+00, %7961 ]
  %8166 = phi float [ %8159, %7992 ], [ 0.000000e+00, %7961 ]
  %8167 = fmul fast float %8164, %7938
  %8168 = fmul fast float %8165, %7938
  %8169 = fmul fast float %8166, %7938
  %8170 = call float @dx.op.dot3.f32(i32 55, float %8161, float %8162, float %8163, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8171 = call float @dx.op.dot3.f32(i32 55, float %8167, float %8168, float %8169, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8172 = select i1 %213, float %8170, float %8161
  %8173 = select i1 %213, float %8170, float %8162
  %8174 = select i1 %213, float 1.000000e+00, float %8163
  %8175 = select i1 %213, float %8171, float %8167
  %8176 = select i1 %213, float 0.000000e+00, float %8168
  %8177 = select i1 %213, float 0.000000e+00, float %8169
  %8178 = fmul fast float %8172, %7951
  %8179 = fmul fast float %8173, %7952
  %8180 = fmul fast float %8174, %7953
  %8181 = fadd fast float %8178, %8175
  %8182 = fadd fast float %8179, %8176
  %8183 = fadd fast float %8177, %8180
  %8184 = fmul fast float %8172, %7925
  %8185 = fmul fast float %8173, %7926
  %8186 = fmul fast float %8174, %7927
  %8187 = fmul fast float %122, %7963
  %8188 = fmul fast float %124, %7964
  %8189 = fsub fast float 1.000000e+00, %8187
  %8190 = fsub fast float 1.000000e+00, %8188
  %8191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8192 = extractvalue %dx.types.CBufRet.f32 %8191, 0
  %8193 = extractvalue %dx.types.CBufRet.f32 %8191, 1
  %8194 = extractvalue %dx.types.CBufRet.f32 %8191, 2
  %8195 = fmul fast float %8189, %8192
  %8196 = fmul fast float %8189, %8193
  %8197 = fmul fast float %8189, %8194
  %8198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8199 = extractvalue %dx.types.CBufRet.f32 %8198, 0
  %8200 = extractvalue %dx.types.CBufRet.f32 %8198, 1
  %8201 = extractvalue %dx.types.CBufRet.f32 %8198, 2
  %8202 = fmul fast float %8190, %8199
  %8203 = fmul fast float %8190, %8200
  %8204 = fmul fast float %8190, %8201
  %8205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8206 = extractvalue %dx.types.CBufRet.f32 %8205, 0
  %8207 = extractvalue %dx.types.CBufRet.f32 %8205, 1
  %8208 = extractvalue %dx.types.CBufRet.f32 %8205, 2
  %8209 = fadd fast float %8202, %8206
  %8210 = fadd fast float %8209, %8195
  %8211 = fadd fast float %8203, %8207
  %8212 = fadd fast float %8211, %8196
  %8213 = fadd fast float %8204, %8208
  %8214 = fadd fast float %8213, %8197
  %8215 = fmul fast float %8210, %174
  %8216 = fmul fast float %8212, %174
  %8217 = fmul fast float %8214, %174
  br label %8218

; <label>:8218                                    ; preds = %8160, %7924
  %8219 = phi float [ %8215, %8160 ], [ %152, %7924 ]
  %8220 = phi float [ %8216, %8160 ], [ %153, %7924 ]
  %8221 = phi float [ %8217, %8160 ], [ %154, %7924 ]
  %8222 = phi float [ %174, %8160 ], [ %85, %7924 ]
  %8223 = phi float [ %8181, %8160 ], [ %7951, %7924 ]
  %8224 = phi float [ %8182, %8160 ], [ %7952, %7924 ]
  %8225 = phi float [ %8183, %8160 ], [ %7953, %7924 ]
  %8226 = phi float [ %8184, %8160 ], [ %7925, %7924 ]
  %8227 = phi float [ %8185, %8160 ], [ %7926, %7924 ]
  %8228 = phi float [ %8186, %8160 ], [ %7927, %7924 ]
  %8229 = phi float [ %8161, %8160 ], [ 1.000000e+00, %7924 ]
  br i1 %7960, label %9384, label %8230

; <label>:8230                                    ; preds = %8218
  %8231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8232 = extractvalue %dx.types.CBufRet.f32 %8231, 0
  %8233 = extractvalue %dx.types.CBufRet.f32 %8231, 1
  %8234 = extractvalue %dx.types.CBufRet.f32 %8231, 2
  %8235 = extractvalue %dx.types.CBufRet.f32 %8231, 3
  %8236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8237 = extractvalue %dx.types.CBufRet.f32 %8236, 0
  %8238 = extractvalue %dx.types.CBufRet.f32 %8236, 1
  %8239 = extractvalue %dx.types.CBufRet.f32 %8236, 2
  %8240 = extractvalue %dx.types.CBufRet.f32 %8236, 3
  %8241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8242 = extractvalue %dx.types.CBufRet.f32 %8241, 0
  %8243 = extractvalue %dx.types.CBufRet.f32 %8241, 1
  %8244 = extractvalue %dx.types.CBufRet.f32 %8241, 2
  %8245 = extractvalue %dx.types.CBufRet.f32 %8241, 3
  %8246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8247 = extractvalue %dx.types.CBufRet.f32 %8246, 0
  %8248 = extractvalue %dx.types.CBufRet.f32 %8246, 1
  %8249 = extractvalue %dx.types.CBufRet.f32 %8246, 2
  %8250 = extractvalue %dx.types.CBufRet.f32 %8246, 3
  %8251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8252 = extractvalue %dx.types.CBufRet.f32 %8251, 3
  %8253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8254 = extractvalue %dx.types.CBufRet.f32 %8253, 3
  %8255 = extractvalue %dx.types.CBufRet.f32 %8253, 0
  %8256 = extractvalue %dx.types.CBufRet.f32 %8253, 1
  %8257 = extractvalue %dx.types.CBufRet.f32 %8253, 2
  %8258 = fcmp fast olt float %8257, -5.000000e-01
  %8259 = call float @dx.op.dot3.f32(i32 55, float %8219, float %8220, float %8221, float %8219, float %8220, float %8221)  ; Dot3(ax,ay,az,bx,by,bz)
  %8260 = call float @dx.op.unary.f32(i32 25, float %8259)  ; Rsqrt(value)
  %8261 = fmul fast float %8260, %8259
  %8262 = fmul fast float %8260, %8219
  %8263 = fmul fast float %8260, %8220
  %8264 = fmul fast float %8260, %8221
  %8265 = fadd fast float %8261, %8235
  %8266 = call float @dx.op.dot3.f32(i32 55, float %8262, float %8263, float %8264, float %8232, float %8233, float %8234)  ; Dot3(ax,ay,az,bx,by,bz)
  %8267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8268 = extractvalue %dx.types.CBufRet.i32 %8267, 1
  %8269 = and i32 %8268, 1
  %8270 = icmp ne i32 %8269, 0
  %8271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8272 = extractvalue %dx.types.CBufRet.f32 %8271, 2
  %8273 = fcmp fast ogt float %8272, 0.000000e+00
  %8274 = and i1 %8270, %8273
  br i1 %8274, label %8275, label %8681, !dx.controlflow.hints !117

; <label>:8275                                    ; preds = %8230
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 3
  %8278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8279 = extractvalue %dx.types.CBufRet.f32 %8278, 2
  %8280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8281 = extractvalue %dx.types.CBufRet.f32 %8280, 2
  %8282 = fsub fast float %8279, %8281
  %8283 = and i32 %8268, 2
  %8284 = extractvalue %dx.types.CBufRet.i32 %8267, 0
  %8285 = call i32 @dx.op.binary.i32(i32 40, i32 %8284, i32 3)  ; UMin(a,b)
  %8286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8287 = extractvalue %dx.types.CBufRet.f32 %8286, 0
  %8288 = extractvalue %dx.types.CBufRet.f32 %8286, 1
  %8289 = extractvalue %dx.types.CBufRet.f32 %8280, 0
  %8290 = extractvalue %dx.types.CBufRet.f32 %8280, 1
  %8291 = fsub fast float %8287, %8289
  %8292 = fsub fast float %8288, %8290
  %8293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8294 = extractvalue %dx.types.CBufRet.f32 %8293, 0
  %8295 = fcmp fast ogt float %8294, 0.000000e+00
  %8296 = fsub fast float -0.000000e+00, %8291
  %8297 = fsub fast float -0.000000e+00, %8292
  %8298 = call float @dx.op.dot2.f32(i32 54, float %8262, float %8263, float %8262, float %8263)  ; Dot2(ax,ay,bx,by)
  %8299 = call float @dx.op.dot2.f32(i32 54, float %8262, float %8263, float %8296, float %8297)  ; Dot2(ax,ay,bx,by)
  %8300 = fmul fast float %8299, 2.000000e+00
  %8301 = call float @dx.op.dot2.f32(i32 54, float %8296, float %8297, float %8296, float %8297)  ; Dot2(ax,ay,bx,by)
  %8302 = fmul fast float %8294, %8294
  %8303 = fsub fast float %8301, %8302
  %8304 = fmul fast float %8300, %8300
  %8305 = fmul fast float %8298, 4.000000e+00
  %8306 = fmul fast float %8305, %8303
  %8307 = fsub fast float %8304, %8306
  %8308 = fcmp fast ogt float %8307, 0.000000e+00
  br i1 %8308, label %8309, label %8324

; <label>:8309                                    ; preds = %8275
  %8310 = fcmp fast ogt float %8300, 0.000000e+00
  %8311 = call float @dx.op.unary.f32(i32 24, float %8307)  ; Sqrt(value)
  %8312 = fsub fast float -0.000000e+00, %8311
  %8313 = select i1 %8310, float %8311, float %8312
  %8314 = fadd fast float %8313, %8300
  %8315 = fmul float %8314, -5.000000e-01
  %8316 = fdiv fast float %8315, %8298
  %8317 = call float @dx.op.binary.f32(i32 35, float %8316, float 0.000000e+00)  ; FMax(a,b)
  %8318 = call float @dx.op.binary.f32(i32 36, float %8261, float %8317)  ; FMin(a,b)
  %8319 = fdiv fast float %8303, %8315
  %8320 = call float @dx.op.binary.f32(i32 35, float %8319, float 0.000000e+00)  ; FMax(a,b)
  %8321 = call float @dx.op.binary.f32(i32 36, float %8261, float %8320)  ; FMin(a,b)
  %8322 = call float @dx.op.binary.f32(i32 36, float %8318, float %8321)  ; FMin(a,b)
  %8323 = call float @dx.op.binary.f32(i32 35, float %8318, float %8321)  ; FMax(a,b)
  br label %8324

; <label>:8324                                    ; preds = %8309, %8275
  %8325 = phi float [ %8323, %8309 ], [ -1.000000e+00, %8275 ]
  %8326 = phi float [ %8322, %8309 ], [ -1.000000e+00, %8275 ]
  %8327 = phi i1 [ true, %8309 ], [ false, %8275 ]
  %8328 = and i1 %8295, %8327
  br i1 %8328, label %8329, label %8331

; <label>:8329                                    ; preds = %8324
  %8330 = fcmp fast oeq float %8326, %8325
  br i1 %8330, label %8634, label %8332

; <label>:8331                                    ; preds = %8324
  br i1 %8295, label %8634, label %8332

; <label>:8332                                    ; preds = %8331, %8329
  %8333 = phi float [ %8261, %8331 ], [ %8325, %8329 ]
  %8334 = phi float [ 0.000000e+00, %8331 ], [ %8326, %8329 ]
  %8335 = icmp ne i32 %8283, 0
  %8336 = fmul fast float %8333, %8264
  %8337 = fadd fast float %8336, %8277
  %8338 = fmul fast float %8337, %8333
  %8339 = select i1 %8335, float 0.000000e+00, float %8338
  %8340 = fcmp fast oeq float %8264, 0.000000e+00
  %8341 = fdiv fast float %8282, %8264
  %8342 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8341)  ; FMax(a,b)
  %8343 = select i1 %8340, float %8333, float %8342
  %8344 = call float @dx.op.binary.f32(i32 36, float %8333, float %8343)  ; FMin(a,b)
  %8345 = fcmp fast ogt float %8264, 0.000000e+00
  %8346 = fcmp fast olt float %8282, 0.000000e+00
  br i1 %8345, label %8347, label %8404

; <label>:8347                                    ; preds = %8332
  %8348 = icmp eq i32 %8283, 0
  br i1 %8346, label %8349, label %8393

; <label>:8349                                    ; preds = %8347
  %8350 = select i1 %8348, float %8333, float 0.000000e+00
  %8351 = fsub fast float -0.000000e+00, %8350
  %8352 = call float @dx.op.unary.f32(i32 6, float %8351)  ; FAbs(value)
  %8353 = fmul fast float %8350, %8264
  %8354 = fadd fast float %8353, %8277
  %8355 = fmul fast float %8352, %8354
  %8356 = fsub fast float %8339, %8355
  %8357 = fsub fast float %8333, %8352
  %8358 = select i1 %8348, float %8357, float 0.000000e+00
  %8359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8360 = extractvalue %dx.types.CBufRet.f32 %8359, 0
  %8361 = extractvalue %dx.types.CBufRet.f32 %8359, 1
  %8362 = extractvalue %dx.types.CBufRet.f32 %8359, 2
  %8363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8364 = extractvalue %dx.types.CBufRet.f32 %8363, 0
  %8365 = extractvalue %dx.types.CBufRet.f32 %8363, 1
  %8366 = extractvalue %dx.types.CBufRet.f32 %8363, 2
  %8367 = extractvalue %dx.types.CBufRet.f32 %8363, 3
  %8368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8369 = extractvalue %dx.types.CBufRet.f32 %8368, 3
  %8370 = call float @dx.op.binary.f32(i32 36, float %8356, float %8369)  ; FMin(a,b)
  %8371 = fmul fast float %8367, %8358
  %8372 = call float @dx.op.unary.f32(i32 7, float %8371)  ; Saturate(value)
  %8373 = fsub fast float %8364, %8360
  %8374 = fsub fast float %8365, %8361
  %8375 = fsub fast float %8366, %8362
  %8376 = fmul fast float %8372, %8373
  %8377 = fmul fast float %8372, %8374
  %8378 = fmul fast float %8372, %8375
  %8379 = fadd fast float %8376, %8360
  %8380 = fadd fast float %8377, %8361
  %8381 = fadd fast float %8378, %8362
  %8382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8383 = extractvalue %dx.types.CBufRet.f32 %8382, 0
  %8384 = extractvalue %dx.types.CBufRet.f32 %8382, 1
  %8385 = fadd fast float %8384, %8383
  %8386 = call float @dx.op.unary.f32(i32 7, float %8385)  ; Saturate(value)
  %8387 = extractvalue %dx.types.CBufRet.f32 %8382, 2
  %8388 = extractvalue %dx.types.CBufRet.f32 %8382, 3
  %8389 = fadd fast float %8388, %8387
  %8390 = call float @dx.op.unary.f32(i32 7, float %8389)  ; Saturate(value)
  %8391 = fmul fast float %8386, %8370
  %8392 = fmul fast float %8391, %8390
  br label %8634

; <label>:8393                                    ; preds = %8347
  br i1 %8348, label %8394, label %8415

; <label>:8394                                    ; preds = %8393
  %8395 = call float @dx.op.binary.f32(i32 36, float %8344, float %8334)  ; FMin(a,b)
  %8396 = fsub fast float %8344, %8395
  %8397 = fsub fast float %8396, %8333
  %8398 = call float @dx.op.unary.f32(i32 6, float %8397)  ; FAbs(value)
  %8399 = fadd fast float %8396, %8333
  %8400 = fmul fast float %8399, %8264
  %8401 = fadd fast float %8400, %8277
  %8402 = fmul fast float %8401, %8398
  %8403 = fsub fast float %8339, %8402
  br label %8415

; <label>:8404                                    ; preds = %8332
  br i1 %8346, label %8405, label %8415

; <label>:8405                                    ; preds = %8404
  %8406 = call float @dx.op.binary.f32(i32 35, float %8334, float %8344)  ; FMax(a,b)
  %8407 = icmp eq i32 %8283, 0
  %8408 = select i1 %8407, float %8344, float 0.000000e+00
  %8409 = fsub fast float -0.000000e+00, %8408
  %8410 = call float @dx.op.unary.f32(i32 6, float %8409)  ; FAbs(value)
  %8411 = fmul fast float %8408, %8264
  %8412 = fadd fast float %8411, %8277
  %8413 = fmul fast float %8410, %8412
  %8414 = fsub fast float %8339, %8413
  br label %8415

; <label>:8415                                    ; preds = %8405, %8404, %8394, %8393
  %8416 = phi float [ %8334, %8393 ], [ %8334, %8394 ], [ %8406, %8405 ], [ %8334, %8404 ]
  %8417 = phi float [ 0.000000e+00, %8393 ], [ %8398, %8394 ], [ %8410, %8405 ], [ 0.000000e+00, %8404 ]
  %8418 = phi float [ %8339, %8393 ], [ %8403, %8394 ], [ %8414, %8405 ], [ %8339, %8404 ]
  %8419 = phi float [ %8344, %8393 ], [ %8344, %8394 ], [ %8333, %8405 ], [ %8333, %8404 ]
  %8420 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %8420, align 4, !tbaa !107, !noalias !118
  %8421 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %8421, align 4, !tbaa !107, !noalias !118
  %8422 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %8422, align 4, !tbaa !107, !noalias !118
  %8423 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %8423, align 4, !tbaa !107, !noalias !118
  %8424 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %8424, align 4, !tbaa !107, !noalias !118
  %8425 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %8425, align 4, !tbaa !107, !noalias !118
  %8426 = icmp sgt i32 %8285, 0
  br i1 %8426, label %8427, label %8488

; <label>:8427                                    ; preds = %8415
  br label %8428

; <label>:8428                                    ; preds = %8477, %8427
  %8429 = phi i32 [ %8478, %8477 ], [ 0, %8427 ]
  %8430 = phi i32 [ %8479, %8477 ], [ 0, %8427 ]
  %8431 = add nuw i32 %8430, 171
  %8432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %8431)  ; CBufferLoadLegacy(handle,regIndex)
  %8433 = extractvalue %dx.types.CBufRet.f32 %8432, 0
  %8434 = extractvalue %dx.types.CBufRet.f32 %8432, 1
  %8435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8436 = extractvalue %dx.types.CBufRet.f32 %8435, 0
  %8437 = extractvalue %dx.types.CBufRet.f32 %8435, 1
  %8438 = fsub fast float %8433, %8436
  %8439 = fsub fast float %8434, %8437
  %8440 = extractvalue %dx.types.CBufRet.f32 %8432, 2
  %8441 = fsub fast float -0.000000e+00, %8438
  %8442 = fsub fast float -0.000000e+00, %8439
  %8443 = call float @dx.op.dot2.f32(i32 54, float %8262, float %8263, float %8441, float %8442)  ; Dot2(ax,ay,bx,by)
  %8444 = fmul fast float %8443, 2.000000e+00
  %8445 = call float @dx.op.dot2.f32(i32 54, float %8441, float %8442, float %8441, float %8442)  ; Dot2(ax,ay,bx,by)
  %8446 = fmul fast float %8440, %8440
  %8447 = fsub fast float %8445, %8446
  %8448 = fmul fast float %8444, %8444
  %8449 = fmul fast float %8305, %8447
  %8450 = fsub fast float %8448, %8449
  %8451 = fcmp fast ogt float %8450, 0.000000e+00
  br i1 %8451, label %8452, label %8467

; <label>:8452                                    ; preds = %8428
  %8453 = fcmp fast ogt float %8444, 0.000000e+00
  %8454 = call float @dx.op.unary.f32(i32 24, float %8450)  ; Sqrt(value)
  %8455 = fsub fast float -0.000000e+00, %8454
  %8456 = select i1 %8453, float %8454, float %8455
  %8457 = fadd fast float %8456, %8444
  %8458 = fmul float %8457, -5.000000e-01
  %8459 = fdiv fast float %8458, %8298
  %8460 = call float @dx.op.binary.f32(i32 35, float %8459, float 0.000000e+00)  ; FMax(a,b)
  %8461 = call float @dx.op.binary.f32(i32 36, float %8333, float %8460)  ; FMin(a,b)
  %8462 = fdiv fast float %8447, %8458
  %8463 = call float @dx.op.binary.f32(i32 35, float %8462, float 0.000000e+00)  ; FMax(a,b)
  %8464 = call float @dx.op.binary.f32(i32 36, float %8333, float %8463)  ; FMin(a,b)
  %8465 = call float @dx.op.binary.f32(i32 36, float %8461, float %8464)  ; FMin(a,b)
  %8466 = call float @dx.op.binary.f32(i32 35, float %8461, float %8464)  ; FMax(a,b)
  br label %8467

; <label>:8467                                    ; preds = %8452, %8428
  %8468 = phi float [ %8466, %8452 ], [ -1.000000e+00, %8428 ]
  %8469 = phi float [ %8465, %8452 ], [ -1.000000e+00, %8428 ]
  %8470 = phi i1 [ true, %8452 ], [ false, %8428 ]
  br i1 %8470, label %8471, label %8477

; <label>:8471                                    ; preds = %8467
  %8472 = call float @dx.op.binary.f32(i32 35, float %8416, float %8469)  ; FMax(a,b)
  %8473 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8430
  store float %8472, float* %8473, align 4, !tbaa !107, !noalias !118
  %8474 = call float @dx.op.binary.f32(i32 35, float %8416, float %8468)  ; FMax(a,b)
  %8475 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8430
  store float %8474, float* %8475, align 4, !tbaa !107, !noalias !118
  %8476 = add nsw i32 %8429, 1
  br label %8477

; <label>:8477                                    ; preds = %8471, %8467
  %8478 = phi i32 [ %8476, %8471 ], [ %8429, %8467 ]
  %8479 = add nuw nsw i32 %8430, 1
  %8480 = icmp eq i32 %8479, %8285
  br i1 %8480, label %8481, label %8428

; <label>:8481                                    ; preds = %8477
  %8482 = load float, float* %8422, align 4, !tbaa !107, !alias.scope !134, !noalias !137
  %8483 = load float, float* %8421, align 4, !tbaa !107, !alias.scope !140, !noalias !141
  %8484 = load float, float* %8420, align 4, !tbaa !107, !alias.scope !142, !noalias !143
  %8485 = load float, float* %8425, align 4, !tbaa !107, !alias.scope !144, !noalias !147
  %8486 = load float, float* %8424, align 4, !tbaa !107, !alias.scope !150, !noalias !151
  %8487 = load float, float* %8423, align 4, !tbaa !107, !alias.scope !152, !noalias !153
  br label %8488

; <label>:8488                                    ; preds = %8481, %8415
  %8489 = phi float [ -1.000000e+00, %8415 ], [ %8487, %8481 ]
  %8490 = phi float [ -1.000000e+00, %8415 ], [ %8486, %8481 ]
  %8491 = phi float [ -1.000000e+00, %8415 ], [ %8485, %8481 ]
  %8492 = phi float [ -1.000000e+00, %8415 ], [ %8484, %8481 ]
  %8493 = phi float [ -1.000000e+00, %8415 ], [ %8483, %8481 ]
  %8494 = phi float [ -1.000000e+00, %8415 ], [ %8482, %8481 ]
  %8495 = phi i32 [ 0, %8415 ], [ %8478, %8481 ]
  %8496 = call float @dx.op.binary.f32(i32 36, float %8493, float %8494)  ; FMin(a,b)
  %8497 = call float @dx.op.binary.f32(i32 36, float %8492, float %8496)  ; FMin(a,b)
  %8498 = call float @dx.op.binary.f32(i32 35, float %8492, float %8493)  ; FMax(a,b)
  %8499 = call float @dx.op.binary.f32(i32 36, float %8498, float %8494)  ; FMin(a,b)
  %8500 = call float @dx.op.binary.f32(i32 36, float %8492, float %8493)  ; FMin(a,b)
  %8501 = call float @dx.op.binary.f32(i32 35, float %8500, float %8499)  ; FMax(a,b)
  %8502 = call float @dx.op.binary.f32(i32 35, float %8493, float %8494)  ; FMax(a,b)
  %8503 = call float @dx.op.binary.f32(i32 35, float %8492, float %8502)  ; FMax(a,b)
  store float %8497, float* %8420, align 4, !tbaa !107, !alias.scope !142, !noalias !143
  store float %8501, float* %8421, align 4, !tbaa !107, !alias.scope !140, !noalias !141
  store float %8503, float* %8422, align 4, !tbaa !107, !alias.scope !134, !noalias !137
  %8504 = call float @dx.op.binary.f32(i32 36, float %8490, float %8491)  ; FMin(a,b)
  %8505 = call float @dx.op.binary.f32(i32 36, float %8489, float %8504)  ; FMin(a,b)
  %8506 = call float @dx.op.binary.f32(i32 35, float %8489, float %8490)  ; FMax(a,b)
  %8507 = call float @dx.op.binary.f32(i32 36, float %8506, float %8491)  ; FMin(a,b)
  %8508 = call float @dx.op.binary.f32(i32 36, float %8489, float %8490)  ; FMin(a,b)
  %8509 = call float @dx.op.binary.f32(i32 35, float %8508, float %8507)  ; FMax(a,b)
  %8510 = call float @dx.op.binary.f32(i32 35, float %8490, float %8491)  ; FMax(a,b)
  %8511 = call float @dx.op.binary.f32(i32 35, float %8489, float %8510)  ; FMax(a,b)
  store float %8505, float* %8423, align 4, !tbaa !107, !alias.scope !152, !noalias !153
  store float %8509, float* %8424, align 4, !tbaa !107, !alias.scope !150, !noalias !151
  store float %8511, float* %8425, align 4, !tbaa !107, !alias.scope !144, !noalias !147
  %8512 = sub nsw i32 3, %8495
  %8513 = icmp sgt i32 %8512, 2
  br i1 %8513, label %8514, label %8552

; <label>:8514                                    ; preds = %8488
  %8515 = icmp eq i32 %8283, 0
  %8516 = fsub fast float %8333, %8417
  %8517 = select i1 %8515, float %8516, float %8417
  %8518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8519 = extractvalue %dx.types.CBufRet.f32 %8518, 0
  %8520 = extractvalue %dx.types.CBufRet.f32 %8518, 1
  %8521 = extractvalue %dx.types.CBufRet.f32 %8518, 2
  %8522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.f32 %8522, 0
  %8524 = extractvalue %dx.types.CBufRet.f32 %8522, 1
  %8525 = extractvalue %dx.types.CBufRet.f32 %8522, 2
  %8526 = extractvalue %dx.types.CBufRet.f32 %8522, 3
  %8527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8528 = extractvalue %dx.types.CBufRet.f32 %8527, 3
  %8529 = call float @dx.op.binary.f32(i32 36, float %8418, float %8528)  ; FMin(a,b)
  %8530 = fmul fast float %8526, %8517
  %8531 = call float @dx.op.unary.f32(i32 7, float %8530)  ; Saturate(value)
  %8532 = fsub fast float %8523, %8519
  %8533 = fsub fast float %8524, %8520
  %8534 = fsub fast float %8525, %8521
  %8535 = fmul fast float %8531, %8532
  %8536 = fmul fast float %8531, %8533
  %8537 = fmul fast float %8531, %8534
  %8538 = fadd fast float %8535, %8519
  %8539 = fadd fast float %8536, %8520
  %8540 = fadd fast float %8537, %8521
  %8541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8542 = extractvalue %dx.types.CBufRet.f32 %8541, 0
  %8543 = extractvalue %dx.types.CBufRet.f32 %8541, 1
  %8544 = fadd fast float %8543, %8542
  %8545 = call float @dx.op.unary.f32(i32 7, float %8544)  ; Saturate(value)
  %8546 = extractvalue %dx.types.CBufRet.f32 %8541, 2
  %8547 = extractvalue %dx.types.CBufRet.f32 %8541, 3
  %8548 = fadd fast float %8547, %8546
  %8549 = call float @dx.op.unary.f32(i32 7, float %8548)  ; Saturate(value)
  %8550 = fmul fast float %8545, %8529
  %8551 = fmul fast float %8550, %8549
  br label %8634

; <label>:8552                                    ; preds = %8488
  %8553 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8512
  %8554 = load float, float* %8553, align 4, !tbaa !107, !noalias !118
  %8555 = fcmp fast olt float %8554, %8419
  %8556 = icmp sgt i32 %8495, 0
  %8557 = and i1 %8556, %8555
  br i1 %8557, label %8558, label %8595

; <label>:8558                                    ; preds = %8552
  br label %8559

; <label>:8559                                    ; preds = %8588, %8558
  %8560 = phi float [ %8589, %8588 ], [ %8417, %8558 ]
  %8561 = phi float [ %8590, %8588 ], [ %8418, %8558 ]
  %8562 = phi float [ %8570, %8588 ], [ %8554, %8558 ]
  %8563 = phi i32 [ %8567, %8588 ], [ %8512, %8558 ]
  %8564 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8563
  %8565 = load float, float* %8564, align 4, !tbaa !107, !noalias !118
  %8566 = icmp slt i32 %8563, 2
  %8567 = add nsw i32 %8563, 1
  %8568 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8567
  %8569 = load float, float* %8568, align 4, !tbaa !107, !noalias !118
  %8570 = select i1 %8566, float %8569, float %8333
  %8571 = call float @dx.op.binary.f32(i32 36, float %8570, float %8565)  ; FMin(a,b)
  %8572 = call float @dx.op.binary.f32(i32 36, float %8419, float %8571)  ; FMin(a,b)
  %8573 = icmp eq i32 %8283, 0
  %8574 = fadd fast float %8572, %8562
  %8575 = fmul fast float %8574, %8264
  %8576 = fadd fast float %8575, %8277
  br i1 %8573, label %8582, label %8577

; <label>:8577                                    ; preds = %8559
  %8578 = fsub fast float %8572, %8562
  %8579 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8578)  ; FMax(a,b)
  %8580 = fmul fast float %8579, %8576
  %8581 = fadd fast float %8580, %8561
  br label %8588

; <label>:8582                                    ; preds = %8559
  %8583 = fsub fast float %8562, %8572
  %8584 = call float @dx.op.unary.f32(i32 6, float %8583)  ; FAbs(value)
  %8585 = fadd fast float %8584, %8560
  %8586 = fmul fast float %8584, %8576
  %8587 = fsub fast float %8561, %8586
  br label %8588

; <label>:8588                                    ; preds = %8582, %8577
  %8589 = phi float [ %8579, %8577 ], [ %8585, %8582 ]
  %8590 = phi float [ %8581, %8577 ], [ %8587, %8582 ]
  %8591 = fcmp fast olt float %8570, %8419
  %8592 = icmp slt i32 %8567, 3
  %8593 = and i1 %8592, %8591
  br i1 %8593, label %8559, label %8594

; <label>:8594                                    ; preds = %8588
  br label %8595

; <label>:8595                                    ; preds = %8594, %8552
  %8596 = phi float [ %8417, %8552 ], [ %8589, %8594 ]
  %8597 = phi float [ %8418, %8552 ], [ %8590, %8594 ]
  %8598 = fsub fast float %8333, %8596
  %8599 = select i1 %8335, float %8596, float %8598
  %8600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8601 = extractvalue %dx.types.CBufRet.f32 %8600, 0
  %8602 = extractvalue %dx.types.CBufRet.f32 %8600, 1
  %8603 = extractvalue %dx.types.CBufRet.f32 %8600, 2
  %8604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8605 = extractvalue %dx.types.CBufRet.f32 %8604, 0
  %8606 = extractvalue %dx.types.CBufRet.f32 %8604, 1
  %8607 = extractvalue %dx.types.CBufRet.f32 %8604, 2
  %8608 = extractvalue %dx.types.CBufRet.f32 %8604, 3
  %8609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8610 = extractvalue %dx.types.CBufRet.f32 %8609, 3
  %8611 = call float @dx.op.binary.f32(i32 36, float %8597, float %8610)  ; FMin(a,b)
  %8612 = fmul fast float %8608, %8599
  %8613 = call float @dx.op.unary.f32(i32 7, float %8612)  ; Saturate(value)
  %8614 = fsub fast float %8605, %8601
  %8615 = fsub fast float %8606, %8602
  %8616 = fsub fast float %8607, %8603
  %8617 = fmul fast float %8613, %8614
  %8618 = fmul fast float %8613, %8615
  %8619 = fmul fast float %8613, %8616
  %8620 = fadd fast float %8617, %8601
  %8621 = fadd fast float %8618, %8602
  %8622 = fadd fast float %8619, %8603
  %8623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8624 = extractvalue %dx.types.CBufRet.f32 %8623, 0
  %8625 = extractvalue %dx.types.CBufRet.f32 %8623, 1
  %8626 = fadd fast float %8625, %8624
  %8627 = call float @dx.op.unary.f32(i32 7, float %8626)  ; Saturate(value)
  %8628 = extractvalue %dx.types.CBufRet.f32 %8623, 2
  %8629 = extractvalue %dx.types.CBufRet.f32 %8623, 3
  %8630 = fadd fast float %8629, %8628
  %8631 = call float @dx.op.unary.f32(i32 7, float %8630)  ; Saturate(value)
  %8632 = fmul fast float %8627, %8611
  %8633 = fmul fast float %8632, %8631
  br label %8634

; <label>:8634                                    ; preds = %8595, %8514, %8349, %8331, %8329
  %8635 = phi float [ %8358, %8349 ], [ %8517, %8514 ], [ %8599, %8595 ], [ 0.000000e+00, %8329 ], [ 0.000000e+00, %8331 ]
  %8636 = phi float [ %8392, %8349 ], [ %8551, %8514 ], [ %8633, %8595 ], [ 0.000000e+00, %8329 ], [ 0.000000e+00, %8331 ]
  %8637 = phi float [ %8379, %8349 ], [ %8538, %8514 ], [ %8620, %8595 ], [ 0.000000e+00, %8329 ], [ 0.000000e+00, %8331 ]
  %8638 = phi float [ %8380, %8349 ], [ %8539, %8514 ], [ %8621, %8595 ], [ 0.000000e+00, %8329 ], [ 0.000000e+00, %8331 ]
  %8639 = phi float [ %8381, %8349 ], [ %8540, %8514 ], [ %8622, %8595 ], [ 0.000000e+00, %8329 ], [ 0.000000e+00, %8331 ]
  %8640 = fmul fast float %8272, %8636
  %8641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8642 = extractvalue %dx.types.CBufRet.f32 %8641, 2
  %8643 = fsub fast float %8279, %8642
  %8644 = fcmp fast olt float %8640, -2.000000e+01
  %8645 = call float @dx.op.unary.f32(i32 21, float %8640)  ; Exp(value)
  %8646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8646, 2
  %8648 = extractvalue %dx.types.CBufRet.f32 %8646, 3
  %8649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8650 = extractvalue %dx.types.CBufRet.f32 %8649, 2
  %8651 = fmul fast float %8648, %8643
  %8652 = call float @dx.op.unary.f32(i32 7, float %8651)  ; Saturate(value)
  %8653 = fsub fast float 1.000000e+00, %8652
  %8654 = fmul fast float %8264, 5.000000e-01
  %8655 = fadd fast float %8654, 5.000000e-01
  %8656 = call float @dx.op.unary.f32(i32 7, float %8655)  ; Saturate(value)
  %8657 = fsub fast float 1.000000e+00, %8656
  %8658 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8653)  ; FMax(a,b)
  %8659 = fdiv fast float %8657, %8658
  %8660 = fsub fast float %8643, %8221
  %8661 = call float @dx.op.unary.f32(i32 6, float %8660)  ; FAbs(value)
  %8662 = fmul fast float %8661, %8647
  %8663 = call float @dx.op.unary.f32(i32 7, float %8659)  ; Saturate(value)
  %8664 = fsub fast float 1.000000e+00, %8662
  %8665 = fmul fast float %8664, %8663
  %8666 = fadd fast float %8665, %8662
  %8667 = fmul fast float %8650, %8643
  %8668 = call float @dx.op.unary.f32(i32 7, float %8667)  ; Saturate(value)
  %8669 = fsub fast float 1.000000e+00, %8666
  %8670 = fmul fast float %8669, %8668
  %8671 = fadd fast float %8670, %8666
  %8672 = call float @dx.op.unary.f32(i32 7, float %8671)  ; Saturate(value)
  %8673 = fadd fast float %8645, -1.000000e+00
  %8674 = select i1 %8644, float -1.000000e+00, float %8673
  %8675 = fmul fast float %8672, %8674
  %8676 = fadd fast float %8675, 1.000000e+00
  %8677 = fsub fast float -0.000000e+00, %8675
  %8678 = fmul fast float %8637, %8677
  %8679 = fmul fast float %8638, %8677
  %8680 = fmul fast float %8639, %8677
  br label %8681

; <label>:8681                                    ; preds = %8634, %8230
  %8682 = phi float [ %8635, %8634 ], [ 0.000000e+00, %8230 ]
  %8683 = phi float [ %8676, %8634 ], [ 1.000000e+00, %8230 ]
  %8684 = phi float [ %8678, %8634 ], [ 0.000000e+00, %8230 ]
  %8685 = phi float [ %8679, %8634 ], [ 0.000000e+00, %8230 ]
  %8686 = phi float [ %8680, %8634 ], [ 0.000000e+00, %8230 ]
  %8687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8688 = extractvalue %dx.types.CBufRet.f32 %8687, 1
  %8689 = fsub fast float 1.000000e+00, %8683
  %8690 = fmul fast float %8689, %8265
  %8691 = fmul fast float %8690, %8688
  %8692 = fsub fast float %8265, %8691
  br i1 %8258, label %8693, label %8722, !dx.controlflow.hints !154

; <label>:8693                                    ; preds = %8681
  %8694 = fmul fast float %8266, %8255
  %8695 = fadd fast float %8694, %8256
  %8696 = call float @dx.op.unary.f32(i32 7, float %8695)  ; Saturate(value)
  %8697 = fmul fast float %8237, %8692
  %8698 = fsub fast float -0.000000e+00, %8697
  %8699 = fmul fast float %8238, %8692
  %8700 = fsub fast float -0.000000e+00, %8699
  %8701 = call float @dx.op.unary.f32(i32 21, float %8698)  ; Exp(value)
  %8702 = call float @dx.op.unary.f32(i32 21, float %8700)  ; Exp(value)
  %8703 = call float @dx.op.binary.f32(i32 35, float %8245, float %8701)  ; FMax(a,b)
  %8704 = call float @dx.op.binary.f32(i32 35, float %8245, float %8702)  ; FMax(a,b)
  %8705 = fsub fast float %8704, %8703
  %8706 = fmul fast float %8705, %8696
  %8707 = fadd fast float %8706, %8703
  %8708 = call float @dx.op.unary.f32(i32 7, float %8707)  ; Saturate(value)
  %8709 = fsub fast float %8242, %8247
  %8710 = fsub fast float %8243, %8248
  %8711 = fsub fast float %8244, %8249
  %8712 = fmul fast float %8696, %8709
  %8713 = fmul fast float %8696, %8710
  %8714 = fmul fast float %8696, %8711
  %8715 = fadd fast float %8712, %8247
  %8716 = fadd fast float %8713, %8248
  %8717 = fadd fast float %8714, %8249
  %8718 = fsub fast float 1.000000e+00, %8708
  %8719 = fmul fast float %8718, %8715
  %8720 = fmul fast float %8718, %8716
  %8721 = fmul fast float %8718, %8717
  br label %8781

; <label>:8722                                    ; preds = %8681
  %8723 = fmul fast float %8692, %8254
  %8724 = call float @dx.op.unary.f32(i32 7, float %8723)  ; Saturate(value)
  %8725 = fsub fast float 2.000000e+00, %8724
  %8726 = fmul fast float %8724, 9.921875e-01
  %8727 = fmul fast float %8726, %8725
  %8728 = fadd fast float %8727, 3.906250e-03
  %8729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %8728, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8730 = extractvalue %dx.types.ResRet.f32 %8729, 0
  %8731 = fsub fast float %8724, %8730
  %8732 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8731)  ; FMax(a,b)
  %8733 = fmul fast float %8240, %8221
  %8734 = call float @dx.op.unary.f32(i32 6, float %8733)  ; FAbs(value)
  %8735 = fcmp fast ogt float %8734, 0x3EB0C6F7A0000000
  br i1 %8735, label %8736, label %8742, !dx.controlflow.hints !155

; <label>:8736                                    ; preds = %8722
  %8737 = fmul fast float %8733, 0xBFF7154760000000
  %8738 = call float @dx.op.unary.f32(i32 21, float %8737)  ; Exp(value)
  %8739 = fsub fast float 1.000000e+00, %8738
  %8740 = fdiv fast float %8739, %8733
  %8741 = fmul fast float %8740, %8250
  br label %8742

; <label>:8742                                    ; preds = %8736, %8722
  %8743 = phi float [ %8741, %8736 ], [ %8250, %8722 ]
  %8744 = fadd fast float %8743, %8252
  %8745 = fmul fast float %8744, %8732
  %8746 = fmul fast float %8237, %8745
  %8747 = fsub fast float -0.000000e+00, %8746
  %8748 = fmul fast float %8238, %8745
  %8749 = fsub fast float -0.000000e+00, %8748
  %8750 = fmul fast float %8239, %8745
  %8751 = fsub fast float -0.000000e+00, %8750
  %8752 = call float @dx.op.unary.f32(i32 21, float %8747)  ; Exp(value)
  %8753 = call float @dx.op.unary.f32(i32 21, float %8749)  ; Exp(value)
  %8754 = call float @dx.op.unary.f32(i32 21, float %8751)  ; Exp(value)
  %8755 = fmul fast float %8266, %8266
  %8756 = fadd fast float %8755, 1.000000e+00
  %8757 = fmul fast float %8756, 0x3FAE8EC8A0000000
  %8758 = fmul fast float %8757, %8247
  %8759 = fmul fast float %8757, %8248
  %8760 = fmul fast float %8757, %8249
  %8761 = fmul fast float %8266, %8245
  %8762 = fsub fast float 1.000000e+00, %8761
  %8763 = fmul fast float %8245, %8245
  %8764 = fsub fast float 1.000000e+00, %8763
  %8765 = fmul fast float %8764, 0x3FB45F3060000000
  %8766 = fmul fast float %8762, %8762
  %8767 = fdiv fast float 1.000000e+00, %8766
  %8768 = fmul fast float %8765, %8767
  %8769 = fmul fast float %8768, %8242
  %8770 = fmul fast float %8768, %8243
  %8771 = fmul fast float %8768, %8244
  %8772 = fadd fast float %8769, %8758
  %8773 = fadd fast float %8770, %8759
  %8774 = fadd fast float %8771, %8760
  %8775 = fsub fast float 1.000000e+00, %8752
  %8776 = fsub fast float 1.000000e+00, %8753
  %8777 = fsub fast float 1.000000e+00, %8754
  %8778 = fmul fast float %8772, %8775
  %8779 = fmul fast float %8773, %8776
  %8780 = fmul fast float %8774, %8777
  br label %8781

; <label>:8781                                    ; preds = %8742, %8693
  %8782 = phi float [ %8719, %8693 ], [ %8778, %8742 ]
  %8783 = phi float [ %8720, %8693 ], [ %8779, %8742 ]
  %8784 = phi float [ %8721, %8693 ], [ %8780, %8742 ]
  %8785 = phi float [ %8708, %8693 ], [ %8752, %8742 ]
  %8786 = phi float [ %8708, %8693 ], [ %8753, %8742 ]
  %8787 = phi float [ %8708, %8693 ], [ %8754, %8742 ]
  br i1 %8274, label %8788, label %8986, !dx.controlflow.hints !156

; <label>:8788                                    ; preds = %8781
  %8789 = extractvalue %dx.types.CBufRet.f32 %8687, 0
  %8790 = fmul fast float %8789, %8689
  %8791 = fsub fast float %8684, %8782
  %8792 = fsub fast float %8685, %8783
  %8793 = fsub fast float %8686, %8784
  %8794 = fmul fast float %8790, %8791
  %8795 = fmul fast float %8790, %8792
  %8796 = fmul fast float %8790, %8793
  %8797 = fadd fast float %8794, %8782
  %8798 = fadd fast float %8795, %8783
  %8799 = fadd fast float %8796, %8784
  %8800 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8785)  ; FMax(a,b)
  %8801 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8786)  ; FMax(a,b)
  %8802 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8787)  ; FMax(a,b)
  %8803 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8683)  ; FMax(a,b)
  %8804 = call float @dx.op.binary.f32(i32 35, float %8682, float %8692)  ; FMax(a,b)
  %8805 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8804)  ; FMax(a,b)
  %8806 = fdiv fast float %8682, %8805
  %8807 = call float @dx.op.unary.f32(i32 7, float %8806)  ; Saturate(value)
  %8808 = fdiv fast float %8692, %8805
  %8809 = call float @dx.op.unary.f32(i32 7, float %8808)  ; Saturate(value)
  %8810 = fcmp fast une float %8803, 1.000000e+00
  br i1 %8810, label %8811, label %8824, !dx.controlflow.hints !157

; <label>:8811                                    ; preds = %8788
  %8812 = call float @dx.op.unary.f32(i32 23, float %8803)  ; Log(value)
  %8813 = fmul fast float %8812, 0x3FE62E4300000000
  %8814 = fmul fast float %8684, %8813
  %8815 = fsub fast float -0.000000e+00, %8814
  %8816 = fmul fast float %8685, %8813
  %8817 = fsub fast float -0.000000e+00, %8816
  %8818 = fmul fast float %8686, %8813
  %8819 = fsub fast float -0.000000e+00, %8818
  %8820 = fsub fast float 1.000000e+00, %8803
  %8821 = fdiv fast float %8815, %8820
  %8822 = fdiv fast float %8817, %8820
  %8823 = fdiv fast float %8819, %8820
  br label %8824

; <label>:8824                                    ; preds = %8811, %8788
  %8825 = phi float [ %8821, %8811 ], [ %8684, %8788 ]
  %8826 = phi float [ %8822, %8811 ], [ %8685, %8788 ]
  %8827 = phi float [ %8823, %8811 ], [ %8686, %8788 ]
  %8828 = phi float [ %8813, %8811 ], [ 0.000000e+00, %8788 ]
  %8829 = fcmp fast une float %8800, 1.000000e+00
  br i1 %8829, label %8830, label %8837, !dx.controlflow.hints !158

; <label>:8830                                    ; preds = %8824
  %8831 = call float @dx.op.unary.f32(i32 23, float %8800)  ; Log(value)
  %8832 = fmul fast float %8831, 0x3FE62E4300000000
  %8833 = fmul fast float %8797, %8832
  %8834 = fsub fast float -0.000000e+00, %8833
  %8835 = fsub fast float 1.000000e+00, %8800
  %8836 = fdiv fast float %8834, %8835
  br label %8837

; <label>:8837                                    ; preds = %8830, %8824
  %8838 = phi float [ %8836, %8830 ], [ %8797, %8824 ]
  %8839 = phi float [ %8832, %8830 ], [ 0.000000e+00, %8824 ]
  %8840 = fcmp fast une float %8801, 1.000000e+00
  br i1 %8840, label %8841, label %8848, !dx.controlflow.hints !158

; <label>:8841                                    ; preds = %8837
  %8842 = call float @dx.op.unary.f32(i32 23, float %8801)  ; Log(value)
  %8843 = fmul fast float %8842, 0x3FE62E4300000000
  %8844 = fmul fast float %8798, %8843
  %8845 = fsub fast float -0.000000e+00, %8844
  %8846 = fsub fast float 1.000000e+00, %8801
  %8847 = fdiv fast float %8845, %8846
  br label %8848

; <label>:8848                                    ; preds = %8841, %8837
  %8849 = phi float [ %8847, %8841 ], [ %8798, %8837 ]
  %8850 = phi float [ %8843, %8841 ], [ 0.000000e+00, %8837 ]
  %8851 = fcmp fast une float %8802, 1.000000e+00
  br i1 %8851, label %8852, label %8859, !dx.controlflow.hints !158

; <label>:8852                                    ; preds = %8848
  %8853 = call float @dx.op.unary.f32(i32 23, float %8802)  ; Log(value)
  %8854 = fmul fast float %8853, 0x3FE62E4300000000
  %8855 = fmul fast float %8799, %8854
  %8856 = fsub fast float -0.000000e+00, %8855
  %8857 = fsub fast float 1.000000e+00, %8802
  %8858 = fdiv fast float %8856, %8857
  br label %8859

; <label>:8859                                    ; preds = %8852, %8848
  %8860 = phi float [ %8858, %8852 ], [ %8799, %8848 ]
  %8861 = phi float [ %8854, %8852 ], [ 0.000000e+00, %8848 ]
  %8862 = fmul fast float %8825, %8809
  %8863 = fmul fast float %8826, %8809
  %8864 = fmul fast float %8827, %8809
  %8865 = fmul fast float %8828, %8809
  %8866 = fmul fast float %8838, %8807
  %8867 = fmul fast float %8849, %8807
  %8868 = fmul fast float %8860, %8807
  %8869 = fmul fast float %8839, %8807
  %8870 = fmul fast float %8850, %8807
  %8871 = fmul fast float %8861, %8807
  %8872 = fadd fast float %8866, %8862
  %8873 = fadd fast float %8867, %8863
  %8874 = fadd fast float %8868, %8864
  %8875 = fadd fast float %8869, %8865
  %8876 = fadd fast float %8870, %8865
  %8877 = fadd fast float %8871, %8865
  %8878 = fcmp fast une float %8875, 0.000000e+00
  br i1 %8878, label %8879, label %8886, !dx.controlflow.hints !159

; <label>:8879                                    ; preds = %8859
  %8880 = fmul fast float %8875, 0x3FF7154760000000
  %8881 = call float @dx.op.unary.f32(i32 21, float %8880)  ; Exp(value)
  %8882 = fsub fast float 1.000000e+00, %8881
  %8883 = fmul fast float %8872, %8882
  %8884 = fsub fast float -0.000000e+00, %8883
  %8885 = fdiv fast float %8884, %8875
  br label %8886

; <label>:8886                                    ; preds = %8879, %8859
  %8887 = phi float [ %8881, %8879 ], [ 1.000000e+00, %8859 ]
  %8888 = phi float [ %8885, %8879 ], [ %8872, %8859 ]
  %8889 = fcmp fast une float %8876, 0.000000e+00
  br i1 %8889, label %8890, label %8897, !dx.controlflow.hints !159

; <label>:8890                                    ; preds = %8886
  %8891 = fmul fast float %8876, 0x3FF7154760000000
  %8892 = call float @dx.op.unary.f32(i32 21, float %8891)  ; Exp(value)
  %8893 = fsub fast float 1.000000e+00, %8892
  %8894 = fmul fast float %8873, %8893
  %8895 = fsub fast float -0.000000e+00, %8894
  %8896 = fdiv fast float %8895, %8876
  br label %8897

; <label>:8897                                    ; preds = %8890, %8886
  %8898 = phi float [ %8892, %8890 ], [ 1.000000e+00, %8886 ]
  %8899 = phi float [ %8896, %8890 ], [ %8873, %8886 ]
  %8900 = fcmp fast une float %8877, 0.000000e+00
  br i1 %8900, label %8901, label %8908, !dx.controlflow.hints !159

; <label>:8901                                    ; preds = %8897
  %8902 = fmul fast float %8877, 0x3FF7154760000000
  %8903 = call float @dx.op.unary.f32(i32 21, float %8902)  ; Exp(value)
  %8904 = fsub fast float 1.000000e+00, %8903
  %8905 = fmul fast float %8874, %8904
  %8906 = fsub fast float -0.000000e+00, %8905
  %8907 = fdiv fast float %8906, %8877
  br label %8908

; <label>:8908                                    ; preds = %8901, %8897
  %8909 = phi float [ %8903, %8901 ], [ 1.000000e+00, %8897 ]
  %8910 = phi float [ %8907, %8901 ], [ %8874, %8897 ]
  %8911 = fcmp fast ogt float %8807, %8809
  br i1 %8911, label %8912, label %8932

; <label>:8912                                    ; preds = %8908
  %8913 = fsub fast float 1.000000e+00, %8809
  %8914 = fmul fast float %8825, %8913
  %8915 = fmul fast float %8826, %8913
  %8916 = fmul fast float %8827, %8913
  %8917 = fmul fast float %8828, %8913
  %8918 = fcmp fast une float %8917, 0.000000e+00
  br i1 %8918, label %8919, label %8970, !dx.controlflow.hints !160

; <label>:8919                                    ; preds = %8912
  %8920 = fmul fast float %8917, 0x3FF7154760000000
  %8921 = call float @dx.op.unary.f32(i32 21, float %8920)  ; Exp(value)
  %8922 = fsub fast float 1.000000e+00, %8921
  %8923 = fmul fast float %8914, %8922
  %8924 = fsub fast float -0.000000e+00, %8923
  %8925 = fmul fast float %8915, %8922
  %8926 = fsub fast float -0.000000e+00, %8925
  %8927 = fmul fast float %8916, %8922
  %8928 = fsub fast float -0.000000e+00, %8927
  %8929 = fdiv fast float %8924, %8917
  %8930 = fdiv fast float %8926, %8917
  %8931 = fdiv fast float %8928, %8917
  br label %8970

; <label>:8932                                    ; preds = %8908
  %8933 = fsub fast float 1.000000e+00, %8807
  %8934 = fmul fast float %8838, %8933
  %8935 = fmul fast float %8849, %8933
  %8936 = fmul fast float %8860, %8933
  %8937 = fmul fast float %8839, %8933
  %8938 = fmul fast float %8850, %8933
  %8939 = fmul fast float %8861, %8933
  %8940 = fcmp fast une float %8937, 0.000000e+00
  br i1 %8940, label %8941, label %8948, !dx.controlflow.hints !159

; <label>:8941                                    ; preds = %8932
  %8942 = fmul fast float %8937, 0x3FF7154760000000
  %8943 = call float @dx.op.unary.f32(i32 21, float %8942)  ; Exp(value)
  %8944 = fsub fast float 1.000000e+00, %8943
  %8945 = fmul fast float %8934, %8944
  %8946 = fsub fast float -0.000000e+00, %8945
  %8947 = fdiv fast float %8946, %8937
  br label %8948

; <label>:8948                                    ; preds = %8941, %8932
  %8949 = phi float [ %8947, %8941 ], [ %8934, %8932 ]
  %8950 = phi float [ %8943, %8941 ], [ 1.000000e+00, %8932 ]
  %8951 = fcmp fast une float %8938, 0.000000e+00
  br i1 %8951, label %8952, label %8959, !dx.controlflow.hints !159

; <label>:8952                                    ; preds = %8948
  %8953 = fmul fast float %8938, 0x3FF7154760000000
  %8954 = call float @dx.op.unary.f32(i32 21, float %8953)  ; Exp(value)
  %8955 = fsub fast float 1.000000e+00, %8954
  %8956 = fmul fast float %8935, %8955
  %8957 = fsub fast float -0.000000e+00, %8956
  %8958 = fdiv fast float %8957, %8938
  br label %8959

; <label>:8959                                    ; preds = %8952, %8948
  %8960 = phi float [ %8958, %8952 ], [ %8935, %8948 ]
  %8961 = phi float [ %8954, %8952 ], [ 1.000000e+00, %8948 ]
  %8962 = fcmp fast une float %8939, 0.000000e+00
  br i1 %8962, label %8963, label %8970, !dx.controlflow.hints !159

; <label>:8963                                    ; preds = %8959
  %8964 = fmul fast float %8939, 0x3FF7154760000000
  %8965 = call float @dx.op.unary.f32(i32 21, float %8964)  ; Exp(value)
  %8966 = fsub fast float 1.000000e+00, %8965
  %8967 = fmul fast float %8936, %8966
  %8968 = fsub fast float -0.000000e+00, %8967
  %8969 = fdiv fast float %8968, %8939
  br label %8970

; <label>:8970                                    ; preds = %8963, %8959, %8919, %8912
  %8971 = phi float [ %8969, %8963 ], [ %8931, %8919 ], [ %8916, %8912 ], [ %8936, %8959 ]
  %8972 = phi float [ %8960, %8963 ], [ %8930, %8919 ], [ %8915, %8912 ], [ %8960, %8959 ]
  %8973 = phi float [ %8949, %8963 ], [ %8929, %8919 ], [ %8914, %8912 ], [ %8949, %8959 ]
  %8974 = phi float [ %8965, %8963 ], [ %8921, %8919 ], [ 1.000000e+00, %8912 ], [ 1.000000e+00, %8959 ]
  %8975 = phi float [ %8961, %8963 ], [ %8921, %8919 ], [ 1.000000e+00, %8912 ], [ %8961, %8959 ]
  %8976 = phi float [ %8950, %8963 ], [ %8921, %8919 ], [ 1.000000e+00, %8912 ], [ %8950, %8959 ]
  %8977 = fmul fast float %8976, %8888
  %8978 = fmul fast float %8975, %8899
  %8979 = fmul fast float %8974, %8910
  %8980 = fadd fast float %8977, %8973
  %8981 = fadd fast float %8978, %8972
  %8982 = fadd fast float %8979, %8971
  %8983 = fmul fast float %8976, %8887
  %8984 = fmul fast float %8975, %8898
  %8985 = fmul fast float %8974, %8909
  br label %8986

; <label>:8986                                    ; preds = %8970, %8781
  %8987 = phi float [ %8985, %8970 ], [ %8787, %8781 ]
  %8988 = phi float [ %8984, %8970 ], [ %8786, %8781 ]
  %8989 = phi float [ %8983, %8970 ], [ %8785, %8781 ]
  %8990 = phi float [ %8982, %8970 ], [ %8784, %8781 ]
  %8991 = phi float [ %8981, %8970 ], [ %8783, %8781 ]
  %8992 = phi float [ %8980, %8970 ], [ %8782, %8781 ]
  %8993 = fmul fast float %8992, %7938
  %8994 = fmul fast float %8991, %7938
  %8995 = fmul fast float %8990, %7938
  %8996 = fmul fast float %8989, %8229
  %8997 = call float @dx.op.dot3.f32(i32 55, float %8989, float %8988, float %8987, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8998 = call float @dx.op.dot3.f32(i32 55, float %8993, float %8994, float %8995, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8999 = select i1 %213, float %8997, float %8989
  %9000 = select i1 %213, float %8997, float %8988
  %9001 = select i1 %213, float 1.000000e+00, float %8987
  %9002 = select i1 %213, float %8998, float %8993
  %9003 = select i1 %213, float 0.000000e+00, float %8994
  %9004 = select i1 %213, float 0.000000e+00, float %8995
  %9005 = fmul fast float %8999, %8223
  %9006 = fmul fast float %9000, %8224
  %9007 = fmul fast float %9001, %8225
  %9008 = fadd fast float %9005, %9002
  %9009 = fadd fast float %9006, %9003
  %9010 = fadd fast float %9004, %9007
  %9011 = fmul fast float %8999, %8226
  %9012 = fmul fast float %9000, %8227
  %9013 = fmul fast float %9001, %8228
  %9014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9015 = extractvalue %dx.types.CBufRet.i32 %9014, 0
  %9016 = icmp eq i32 %9015, 0
  br i1 %9016, label %9384, label %9017, !dx.controlflow.hints !161

; <label>:9017                                    ; preds = %8986
  %9018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9019 = extractvalue %dx.types.CBufRet.f32 %9018, 2
  %9020 = extractvalue %dx.types.CBufRet.f32 %9018, 3
  %9021 = fmul fast float %9019, %97
  %9022 = fmul fast float %9020, %98
  %9023 = fmul fast float %9021, 2.000000e+00
  %9024 = fmul fast float %9022, 2.000000e+00
  %9025 = fsub fast float 1.000000e+00, %9023
  %9026 = fsub fast float 1.000000e+00, %9024
  %9027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9028 = extractvalue %dx.types.CBufRet.f32 %9027, 0
  %9029 = extractvalue %dx.types.CBufRet.f32 %9027, 1
  %9030 = extractvalue %dx.types.CBufRet.f32 %9027, 2
  %9031 = fmul fast float %9025, %9028
  %9032 = fmul fast float %9025, %9029
  %9033 = fmul fast float %9025, %9030
  %9034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9035 = extractvalue %dx.types.CBufRet.f32 %9034, 0
  %9036 = extractvalue %dx.types.CBufRet.f32 %9034, 1
  %9037 = extractvalue %dx.types.CBufRet.f32 %9034, 2
  %9038 = fmul fast float %9026, %9035
  %9039 = fmul fast float %9026, %9036
  %9040 = fmul fast float %9026, %9037
  %9041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9042 = extractvalue %dx.types.CBufRet.f32 %9041, 0
  %9043 = extractvalue %dx.types.CBufRet.f32 %9041, 1
  %9044 = extractvalue %dx.types.CBufRet.f32 %9041, 2
  %9045 = fadd fast float %9038, %9042
  %9046 = fadd fast float %9045, %9031
  %9047 = fadd fast float %9039, %9043
  %9048 = fadd fast float %9047, %9032
  %9049 = fadd fast float %9040, %9044
  %9050 = fadd fast float %9049, %9033
  %9051 = fmul fast float %9046, %8222
  %9052 = fmul fast float %9048, %8222
  %9053 = fmul fast float %9050, %8222
  %9054 = fmul fast float %9051, %9051
  %9055 = fmul fast float %9052, %9052
  %9056 = fadd fast float %9054, %9055
  %9057 = fmul fast float %9053, %9053
  %9058 = fadd fast float %9056, %9057
  %9059 = call float @dx.op.unary.f32(i32 24, float %9058)  ; Sqrt(value)
  %9060 = extractvalue %dx.types.CBufRet.f32 %7949, 0
  %9061 = fsub fast float %9059, %9060
  %9062 = extractvalue %dx.types.CBufRet.f32 %7949, 2
  %9063 = fmul fast float %9061, %9062
  %9064 = call float @dx.op.unary.f32(i32 7, float %9063)  ; Saturate(value)
  %9065 = fadd fast float %9064, -5.000000e-01
  %9066 = fmul fast float %9065, 2.000000e+00
  %9067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9068 = extractvalue %dx.types.CBufRet.f32 %9067, 2
  %9069 = call float @dx.op.binary.f32(i32 36, float %9068, float %9066)  ; FMin(a,b)
  %9070 = fsub fast float -0.000000e+00, %9068
  %9071 = fcmp fast ogt float %9069, %9070
  br i1 %9071, label %9072, label %9384, !dx.controlflow.hints !162

; <label>:9072                                    ; preds = %9017
  %9073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9074 = extractvalue %dx.types.CBufRet.f32 %9073, 3
  %9075 = fcmp fast ogt float %9074, 0.000000e+00
  br i1 %9075, label %9076, label %9151, !dx.controlflow.hints !163

; <label>:9076                                    ; preds = %9072
  %9077 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %9078 = extractvalue %dx.types.Dimensions %9077, 0
  %9079 = sitofp i32 %9078 to float
  %9080 = extractvalue %dx.types.Dimensions %9077, 1
  %9081 = sitofp i32 %9080 to float
  %9082 = fmul fast float %9021, %9079
  %9083 = fmul fast float %9022, %9081
  %9084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.f32 %9084, 1
  %9086 = fsub fast float -0.000000e+00, %9085
  %9087 = fptoui float %9086 to i32
  %9088 = fptoui float %9082 to i32
  %9089 = fptoui float %9083 to i32
  %9090 = and i32 %9087, 31
  %9091 = lshr i32 %9088, %9090
  %9092 = lshr i32 %9089, %9090
  %9093 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %9087, i32 %9091, i32 %9092, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9094 = extractvalue %dx.types.ResRet.f32 %9093, 0
  %9095 = fcmp fast olt float %9094, -1.000000e+00
  %9096 = fcmp fast ogt float %9094, -1.000000e+00
  %9097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9098 = extractvalue %dx.types.CBufRet.f32 %9097, 1
  %9099 = select i1 %9096, float %9098, float 1.000000e+00
  %9100 = fadd fast float %9094, 1.000000e+00
  %9101 = fmul fast float %9099, %9100
  %9102 = call float @dx.op.unary.f32(i32 6, float %9101)  ; FAbs(value)
  %9103 = extractvalue %dx.types.CBufRet.f32 %9097, 3
  %9104 = fcmp fast oge float %9102, %9103
  %9105 = select i1 %9104, float 0x4197782600000000, float %9102
  %9106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9107 = extractvalue %dx.types.CBufRet.f32 %9106, 0
  %9108 = extractvalue %dx.types.CBufRet.f32 %9106, 1
  %9109 = extractvalue %dx.types.CBufRet.f32 %9106, 2
  %9110 = select i1 %9095, float %9107, float %9028
  %9111 = select i1 %9095, float %9108, float %9029
  %9112 = select i1 %9095, float %9109, float %9030
  %9113 = fmul fast float %9110, %9025
  %9114 = fmul fast float %9111, %9025
  %9115 = fmul fast float %9112, %9025
  %9116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9117 = extractvalue %dx.types.CBufRet.f32 %9116, 0
  %9118 = extractvalue %dx.types.CBufRet.f32 %9116, 1
  %9119 = extractvalue %dx.types.CBufRet.f32 %9116, 2
  %9120 = select i1 %9095, float %9117, float %9035
  %9121 = select i1 %9095, float %9118, float %9036
  %9122 = select i1 %9095, float %9119, float %9037
  %9123 = fmul fast float %9120, %9026
  %9124 = fmul fast float %9121, %9026
  %9125 = fmul fast float %9122, %9026
  %9126 = fadd fast float %9123, %9113
  %9127 = fadd fast float %9124, %9114
  %9128 = fadd fast float %9125, %9115
  %9129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9130 = extractvalue %dx.types.CBufRet.f32 %9129, 0
  %9131 = extractvalue %dx.types.CBufRet.f32 %9129, 1
  %9132 = extractvalue %dx.types.CBufRet.f32 %9129, 2
  %9133 = select i1 %9095, float %9130, float %9042
  %9134 = select i1 %9095, float %9131, float %9043
  %9135 = select i1 %9095, float %9132, float %9044
  %9136 = fadd fast float %9126, %9133
  %9137 = fadd fast float %9127, %9134
  %9138 = fadd fast float %9128, %9135
  %9139 = fmul fast float %9136, %9105
  %9140 = fmul fast float %9137, %9105
  %9141 = fmul fast float %9138, %9105
  %9142 = fmul fast float %9139, %9139
  %9143 = fmul fast float %9140, %9140
  %9144 = fadd fast float %9142, %9143
  %9145 = fmul fast float %9141, %9141
  %9146 = fadd fast float %9144, %9145
  %9147 = call float @dx.op.unary.f32(i32 24, float %9146)  ; Sqrt(value)
  %9148 = fsub fast float %9147, %9060
  %9149 = fmul fast float %9148, %9062
  %9150 = call float @dx.op.unary.f32(i32 7, float %9149)  ; Saturate(value)
  br label %9151

; <label>:9151                                    ; preds = %9076, %9072
  %9152 = phi float [ %9150, %9076 ], [ 1.000000e+00, %9072 ]
  %9153 = fmul fast float %9069, 5.000000e-01
  %9154 = fadd fast float %9153, 5.000000e-01
  %9155 = call float @dx.op.unary.f32(i32 22, float %9154)  ; Frc(value)
  %9156 = call float @dx.op.unary.f32(i32 27, float %9155)  ; Round_ni(value)
  %9157 = call float @dx.op.unary.f32(i32 22, float %9155)  ; Frc(value)
  %9158 = fmul fast float %9157, 2.000000e+00
  %9159 = fadd fast float %9158, -1.000000e+00
  %9160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %9021, float %9022, float %9156, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9161 = extractvalue %dx.types.ResRet.f32 %9160, 0
  %9162 = extractvalue %dx.types.ResRet.f32 %9160, 1
  %9163 = extractvalue %dx.types.ResRet.f32 %9160, 2
  %9164 = extractvalue %dx.types.ResRet.f32 %9160, 3
  %9165 = fadd fast float %9161, -5.000000e-01
  %9166 = fadd fast float %9163, -5.000000e-01
  %9167 = fmul fast float %9165, 0xBFD5555560000000
  %9168 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9166, float %9167)  ; FMad(a,b,c)
  %9169 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9162, float 0.000000e+00)  ; FMad(a,b,c)
  %9170 = fadd fast float %9169, %9164
  %9171 = fmul fast float %9165, -7.500000e-01
  %9172 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9166, float %9171)  ; FMad(a,b,c)
  %9173 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9162, float 0.000000e+00)  ; FMad(a,b,c)
  %9174 = fadd fast float %9173, %9164
  %9175 = call float @dx.op.binary.f32(i32 35, float %9168, float -1.000000e+00)  ; FMax(a,b)
  %9176 = call float @dx.op.binary.f32(i32 35, float %9170, float -1.000000e+00)  ; FMax(a,b)
  %9177 = call float @dx.op.binary.f32(i32 35, float %9172, float -1.000000e+00)  ; FMax(a,b)
  %9178 = call float @dx.op.binary.f32(i32 35, float %9174, float -1.000000e+00)  ; FMax(a,b)
  %9179 = call float @dx.op.binary.f32(i32 36, float %9175, float 1.000000e+00)  ; FMin(a,b)
  %9180 = call float @dx.op.binary.f32(i32 36, float %9176, float 1.000000e+00)  ; FMin(a,b)
  %9181 = call float @dx.op.binary.f32(i32 36, float %9177, float 1.000000e+00)  ; FMin(a,b)
  %9182 = call float @dx.op.binary.f32(i32 36, float %9178, float 1.000000e+00)  ; FMin(a,b)
  %9183 = fcmp fast olt float %9179, 0x3FEFFF8020000000
  br i1 %9183, label %9184, label %9299, !dx.controlflow.hints !164

; <label>:9184                                    ; preds = %9151
  %9185 = extractvalue %dx.types.CBufRet.f32 %9067, 3
  %9186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9187 = extractvalue %dx.types.CBufRet.f32 %9186, 0
  %9188 = extractvalue %dx.types.CBufRet.f32 %9186, 1
  %9189 = extractvalue %dx.types.CBufRet.f32 %9186, 2
  %9190 = extractvalue %dx.types.CBufRet.f32 %9186, 3
  %9191 = fsub fast float %9187, %9179
  %9192 = fsub fast float %9188, %9180
  %9193 = fsub fast float %9189, %9181
  %9194 = fsub fast float %9190, %9182
  %9195 = fmul fast float %9191, %9185
  %9196 = fmul fast float %9192, %9185
  %9197 = fmul fast float %9193, %9185
  %9198 = fmul fast float %9194, %9185
  %9199 = fadd fast float %9195, %9179
  %9200 = fadd fast float %9196, %9180
  %9201 = fsub fast float -0.000000e+00, %9200
  %9202 = fadd fast float %9197, %9181
  %9203 = fadd fast float %9198, %9182
  %9204 = fmul fast float %9199, %9199
  %9205 = fsub fast float %9200, %9204
  %9206 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9205)  ; FMax(a,b)
  %9207 = fdiv fast float 1.000000e+00, %9206
  %9208 = fmul fast float %9200, %9199
  %9209 = fsub fast float %9202, %9208
  %9210 = fsub fast float %9159, %9199
  %9211 = fmul fast float %9159, %9159
  %9212 = fsub fast float %9211, %9200
  %9213 = fmul fast float %9210, %9207
  %9214 = fmul fast float %9213, %9209
  %9215 = fsub fast float %9212, %9214
  %9216 = fmul fast float %9200, %9200
  %9217 = fsub fast float %9203, %9216
  %9218 = fmul fast float %9209, %9209
  %9219 = fmul fast float %9218, %9207
  %9220 = fsub fast float %9217, %9219
  %9221 = fdiv fast float %9215, %9220
  %9222 = fmul fast float %9209, %9221
  %9223 = fsub fast float %9210, %9222
  %9224 = fmul fast float %9223, %9207
  %9225 = fmul fast float %9224, %9199
  %9226 = fsub fast float 1.000000e+00, %9225
  %9227 = fmul fast float %9200, %9221
  %9228 = fsub fast float %9226, %9227
  %9229 = fmul fast float %9224, %9224
  %9230 = fmul fast float %9221, 4.000000e+00
  %9231 = fmul fast float %9230, %9228
  %9232 = fsub fast float %9229, %9231
  %9233 = call float @dx.op.unary.f32(i32 24, float %9232)  ; Sqrt(value)
  %9234 = fcmp fast oge float %9224, 0.000000e+00
  %9235 = fsub fast float -0.000000e+00, %9233
  %9236 = select i1 %9234, float %9235, float %9233
  %9237 = fsub fast float %9236, %9224
  %9238 = fdiv fast float %9237, %9221
  %9239 = fdiv fast float %9228, %9237
  %9240 = fmul fast float %9238, 5.000000e-01
  %9241 = fmul fast float %9239, 2.000000e+00
  %9242 = select i1 %9234, float %9240, float %9241
  %9243 = select i1 %9234, float %9241, float %9240
  %9244 = call float @dx.op.binary.f32(i32 35, float %9242, float %9243)  ; FMax(a,b)
  %9245 = call float @dx.op.binary.f32(i32 36, float %9242, float %9243)  ; FMin(a,b)
  %9246 = fcmp fast ogt float %9159, %9245
  br i1 %9246, label %9247, label %9257

; <label>:9247                                    ; preds = %9184
  %9248 = fsub fast float %9159, %9245
  %9249 = fsub fast float %9244, %9245
  %9250 = fmul fast float %9248, %9249
  %9251 = fmul fast float %9244, %9159
  %9252 = fadd fast float %9244, %9159
  %9253 = fmul fast float %9252, %9199
  %9254 = fadd fast float %9251, %9200
  %9255 = fsub fast float %9254, %9253
  %9256 = fdiv fast float %9255, %9250
  br label %9257

; <label>:9257                                    ; preds = %9247, %9184
  %9258 = phi float [ %9256, %9247 ], [ 0.000000e+00, %9184 ]
  %9259 = fcmp fast ogt float %9159, %9244
  %9260 = fsub fast float %9159, %9244
  br i1 %9259, label %9261, label %9271

; <label>:9261                                    ; preds = %9257
  %9262 = fsub fast float %9244, %9245
  %9263 = fmul fast float %9262, %9260
  %9264 = fmul fast float %9245, %9159
  %9265 = fadd fast float %9245, %9159
  %9266 = fmul fast float %9265, %9199
  %9267 = fsub fast float %9201, %9264
  %9268 = fadd fast float %9267, %9266
  %9269 = fdiv fast float %9268, %9263
  %9270 = fadd fast float %9269, %9258
  br label %9271

; <label>:9271                                    ; preds = %9261, %9257
  %9272 = phi float [ %9270, %9261 ], [ %9258, %9257 ]
  %9273 = fsub fast float %9159, %9245
  %9274 = fmul fast float %9273, %9260
  %9275 = fmul fast float %9245, %9244
  %9276 = fadd fast float %9245, %9244
  %9277 = fmul fast float %9276, %9199
  %9278 = fadd fast float %9275, %9200
  %9279 = fsub fast float %9278, %9277
  %9280 = fdiv fast float %9279, %9274
  %9281 = call float @dx.op.unary.f32(i32 7, float %9272)  ; Saturate(value)
  %9282 = fcmp fast oeq float %7950, 0.000000e+00
  %9283 = extractvalue %dx.types.CBufRet.f32 %9067, 0
  %9284 = fcmp fast oeq float %9283, 0.000000e+00
  %9285 = or i1 %9282, %9284
  %9286 = fmul fast float %9283, 2.000000e+00
  %9287 = fadd fast float %9068, %9069
  %9288 = fdiv fast float %9287, %9286
  %9289 = call float @dx.op.unary.f32(i32 7, float %9288)  ; Saturate(value)
  %9290 = fmul fast float %9289, 2.000000e+00
  %9291 = fsub fast float 3.000000e+00, %9290
  %9292 = fmul fast float %9289, %9289
  %9293 = fmul fast float %9292, %9291
  %9294 = select i1 %9285, float 1.000000e+00, float %9293
  %9295 = fmul fast float %9280, %7950
  %9296 = fadd fast float %9281, %9295
  %9297 = call float @dx.op.unary.f32(i32 7, float %9296)  ; Saturate(value)
  %9298 = fmul fast float %9294, %9297
  br label %9299

; <label>:9299                                    ; preds = %9271, %9151
  %9300 = phi float [ %9298, %9271 ], [ 0.000000e+00, %9151 ]
  %9301 = fsub fast float 1.000000e+00, %9300
  %9302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %9021, float %9022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9303 = extractvalue %dx.types.ResRet.f32 %9302, 0
  %9304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9305 = extractvalue %dx.types.CBufRet.i32 %9304, 2
  %9306 = icmp eq i32 %9305, 0
  br i1 %9306, label %9312, label %9307

; <label>:9307                                    ; preds = %9299
  %9308 = call float @dx.op.unary.f32(i32 7, float %9300)  ; Saturate(value)
  %9309 = fadd fast float %9303, -1.000000e+00
  %9310 = fmul fast float %9308, %9309
  %9311 = fadd fast float %9310, 1.000000e+00
  br label %9312

; <label>:9312                                    ; preds = %9307, %9299
  %9313 = phi float [ %9311, %9307 ], [ %9301, %9299 ]
  br i1 %9075, label %9314, label %9332

; <label>:9314                                    ; preds = %9312
  %9315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9316 = extractvalue %dx.types.CBufRet.f32 %9315, 1
  %9317 = fsub fast float %9152, %9316
  %9318 = call float @dx.op.unary.f32(i32 7, float %9317)  ; Saturate(value)
  %9319 = fsub fast float %9152, %9074
  %9320 = call float @dx.op.unary.f32(i32 7, float %9319)  ; Saturate(value)
  %9321 = fsub fast float %9318, %9320
  %9322 = fsub fast float %9154, %9320
  %9323 = fdiv fast float %9322, %9321
  %9324 = call float @dx.op.unary.f32(i32 7, float %9323)  ; Saturate(value)
  %9325 = fmul fast float %9324, 2.000000e+00
  %9326 = fsub fast float 3.000000e+00, %9325
  %9327 = fsub fast float %9303, %9313
  %9328 = fmul fast float %9324, %9324
  %9329 = fmul fast float %9328, %9327
  %9330 = fmul fast float %9329, %9326
  %9331 = fadd fast float %9330, %9313
  br label %9332

; <label>:9332                                    ; preds = %9314, %9312
  %9333 = phi float [ %9331, %9314 ], [ %9313, %9312 ]
  %9334 = call float @dx.op.binary.f32(i32 35, float %9303, float %9333)  ; FMax(a,b)
  %9335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9336 = extractvalue %dx.types.CBufRet.i32 %9335, 2
  %9337 = and i32 %9336, 1
  %9338 = icmp eq i32 %9337, 0
  %9339 = fcmp fast une float %9334, 1.000000e+00
  %9340 = and i1 %9339, %9338
  br i1 %9340, label %9341, label %9360

; <label>:9341                                    ; preds = %9332
  %9342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %9021, float %9022, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9343 = extractvalue %dx.types.ResRet.f32 %9342, 0
  %9344 = extractvalue %dx.types.ResRet.f32 %9342, 1
  %9345 = extractvalue %dx.types.ResRet.f32 %9342, 2
  %9346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9347 = extractvalue %dx.types.CBufRet.f32 %9346, 1
  %9348 = fmul fast float %9347, %9343
  %9349 = fmul fast float %9347, %9344
  %9350 = fmul fast float %9347, %9345
  %9351 = fcmp fast ogt float %9303, 0x3FEFFF2E40000000
  %9352 = fsub fast float 1.000000e+00, %9334
  %9353 = fsub fast float 1.000000e+00, %9303
  %9354 = fdiv fast float %9352, %9353
  %9355 = call float @dx.op.unary.f32(i32 7, float %9354)  ; Saturate(value)
  %9356 = select i1 %9351, float 0.000000e+00, float %9355
  %9357 = fmul fast float %9348, %9356
  %9358 = fmul fast float %9349, %9356
  %9359 = fmul fast float %9350, %9356
  br label %9360

; <label>:9360                                    ; preds = %9341, %9332
  %9361 = phi float [ 0.000000e+00, %9332 ], [ %9357, %9341 ]
  %9362 = phi float [ 0.000000e+00, %9332 ], [ %9358, %9341 ]
  %9363 = phi float [ 0.000000e+00, %9332 ], [ %9359, %9341 ]
  %9364 = fmul fast float %9361, %7938
  %9365 = fmul fast float %9362, %7938
  %9366 = fmul fast float %9363, %7938
  %9367 = fmul fast float %9334, %8996
  %9368 = call float @dx.op.dot3.f32(i32 55, float %9334, float %9334, float %9334, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9369 = call float @dx.op.dot3.f32(i32 55, float %9364, float %9365, float %9366, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9370 = select i1 %213, float %9368, float %9334
  %9371 = select i1 %213, float 1.000000e+00, float %9334
  %9372 = select i1 %213, float %9369, float %9364
  %9373 = select i1 %213, float 0.000000e+00, float %9365
  %9374 = select i1 %213, float 0.000000e+00, float %9366
  %9375 = fmul fast float %9370, %9008
  %9376 = fmul fast float %9370, %9009
  %9377 = fmul fast float %9371, %9010
  %9378 = fadd fast float %9375, %9372
  %9379 = fadd fast float %9376, %9373
  %9380 = fadd fast float %9374, %9377
  %9381 = fmul fast float %9370, %9011
  %9382 = fmul fast float %9370, %9012
  %9383 = fmul fast float %9371, %9013
  br label %9384

; <label>:9384                                    ; preds = %9360, %9017, %8986, %8218
  %9385 = phi float [ %8223, %8218 ], [ %9008, %8986 ], [ %9378, %9360 ], [ %9008, %9017 ]
  %9386 = phi float [ %8224, %8218 ], [ %9009, %8986 ], [ %9379, %9360 ], [ %9009, %9017 ]
  %9387 = phi float [ %8225, %8218 ], [ %9010, %8986 ], [ %9380, %9360 ], [ %9010, %9017 ]
  %9388 = phi float [ %8226, %8218 ], [ %9011, %8986 ], [ %9381, %9360 ], [ %9011, %9017 ]
  %9389 = phi float [ %8227, %8218 ], [ %9012, %8986 ], [ %9382, %9360 ], [ %9012, %9017 ]
  %9390 = phi float [ %8228, %8218 ], [ %9013, %8986 ], [ %9383, %9360 ], [ %9013, %9017 ]
  %9391 = phi float [ %8229, %8218 ], [ %8996, %8986 ], [ %9367, %9360 ], [ %8996, %9017 ]
  %9392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9393 = extractvalue %dx.types.CBufRet.f32 %9392, 2
  %9394 = extractvalue %dx.types.CBufRet.f32 %9392, 3
  %9395 = fmul fast float %9393, %97
  %9396 = fmul fast float %9394, %98
  %9397 = call float @dx.op.unary.f32(i32 7, float %9395)  ; Saturate(value)
  %9398 = call float @dx.op.unary.f32(i32 7, float %9396)  ; Saturate(value)
  %9399 = select i1 %7960, i32 2, i32 0
  %9400 = or i32 %9399, 1
  %9401 = uitofp i32 %9400 to float
  %9402 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9397, float %9398, float %9401, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9403 = extractvalue %dx.types.ResRet.f32 %9402, 0
  %9404 = extractvalue %dx.types.ResRet.f32 %9402, 1
  %9405 = extractvalue %dx.types.ResRet.f32 %9402, 2
  %9406 = extractvalue %dx.types.ResRet.f32 %9402, 3
  %9407 = add nuw nsw i32 %9399, 2
  %9408 = uitofp i32 %9407 to float
  %9409 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9397, float %9398, float %9408, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9410 = extractvalue %dx.types.ResRet.f32 %9409, 0
  %9411 = extractvalue %dx.types.ResRet.f32 %9409, 1
  %9412 = extractvalue %dx.types.ResRet.f32 %9409, 2
  %9413 = extractvalue %dx.types.ResRet.f32 %9409, 3
  %9414 = call float @dx.op.binary.f32(i32 35, float %9404, float %9405)  ; FMax(a,b)
  %9415 = call float @dx.op.binary.f32(i32 35, float %9403, float %9414)  ; FMax(a,b)
  %9416 = call float @dx.op.binary.f32(i32 35, float %9415, float %9406)  ; FMax(a,b)
  %9417 = call float @dx.op.binary.f32(i32 36, float %9411, float %9412)  ; FMin(a,b)
  %9418 = call float @dx.op.binary.f32(i32 36, float %9410, float %9417)  ; FMin(a,b)
  %9419 = call float @dx.op.binary.f32(i32 36, float %9418, float %9413)  ; FMin(a,b)
  %9420 = fmul fast float %9416, 2.550000e+02
  %9421 = fadd fast float %9420, 0x3F70101020000000
  %9422 = fptoui float %9421 to i32
  %9423 = fmul fast float %9419, 2.550000e+02
  %9424 = fadd fast float %9423, 0x3F70101020000000
  %9425 = fptoui float %9424 to i32
  %9426 = icmp ult i32 %9422, %9425
  br i1 %9426, label %9427, label %9596

; <label>:9427                                    ; preds = %9384
  %9428 = fcmp fast ogt float %84, 9.843750e-01
  %9429 = fadd fast float %8222, -4.000000e+00
  %9430 = select i1 %9428, float -4.000000e+00, float %9429
  %9431 = call float @dx.op.binary.f32(i32 35, float %9430, float 0.000000e+00)  ; FMax(a,b)
  %9432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9433 = extractvalue %dx.types.CBufRet.f32 %9432, 0
  %9434 = fadd fast float %9433, %9431
  %9435 = extractvalue %dx.types.CBufRet.f32 %9432, 2
  %9436 = fmul fast float %9434, %9435
  %9437 = call float @dx.op.unary.f32(i32 23, float %9436)  ; Log(value)
  %9438 = extractvalue %dx.types.CBufRet.f32 %9432, 3
  %9439 = fmul fast float %9438, %9437
  %9440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9441 = extractvalue %dx.types.CBufRet.f32 %9440, 2
  %9442 = fmul fast float %9439, %9441
  %9443 = call float @dx.op.unary.f32(i32 7, float %9442)  ; Saturate(value)
  %9444 = uitofp i32 %9422 to float
  %9445 = uitofp i32 %9425 to float
  %9446 = fadd fast float %9444, 5.000000e-01
  %9447 = fadd fast float %9445, 5.000000e-01
  %9448 = fmul fast float %9441, %9446
  %9449 = fmul fast float %9441, %9447
  %9450 = fadd fast float %9448, 0x3F0FFB4800000000
  %9451 = fadd fast float %9449, 0xBF0FFB4800000000
  %9452 = call float @dx.op.binary.f32(i32 35, float %9443, float %9450)  ; FMax(a,b)
  %9453 = call float @dx.op.binary.f32(i32 36, float %9452, float %9451)  ; FMin(a,b)
  %9454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9455 = extractvalue %dx.types.CBufRet.f32 %9454, 1
  %9456 = extractvalue %dx.types.CBufRet.f32 %9454, 2
  %9457 = extractvalue %dx.types.CBufRet.f32 %9454, 0
  %9458 = select i1 %7960, float %9457, float 0.000000e+00
  %9459 = fmul fast float %9455, %9453
  %9460 = fadd fast float %9458, %9459
  %9461 = fadd fast float %9458, %9456
  %9462 = fsub fast float %9455, %9456
  %9463 = fadd fast float %9462, %9458
  %9464 = call float @dx.op.binary.f32(i32 35, float %9460, float %9461)  ; FMax(a,b)
  %9465 = call float @dx.op.binary.f32(i32 36, float %9464, float %9463)  ; FMin(a,b)
  %9466 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %9397, float %9398, float %9465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9467 = extractvalue %dx.types.ResRet.f32 %9466, 0
  %9468 = extractvalue %dx.types.ResRet.f32 %9466, 1
  %9469 = extractvalue %dx.types.ResRet.f32 %9466, 2
  %9470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9471 = extractvalue %dx.types.CBufRet.i32 %9470, 0
  %9472 = extractvalue %dx.types.CBufRet.i32 %9470, 1
  %9473 = uitofp i32 %9471 to float
  %9474 = uitofp i32 %9472 to float
  %9475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9476 = extractvalue %dx.types.CBufRet.f32 %9475, 0
  %9477 = extractvalue %dx.types.CBufRet.f32 %9475, 1
  %9478 = fmul fast float %9473, %9397
  %9479 = fmul fast float %9474, %9398
  %9480 = fadd fast float %9478, -5.000000e-01
  %9481 = fadd fast float %9479, -5.000000e-01
  %9482 = call float @dx.op.unary.f32(i32 22, float %9480)  ; Frc(value)
  %9483 = call float @dx.op.unary.f32(i32 22, float %9481)  ; Frc(value)
  %9484 = fmul fast float %9482, %9482
  %9485 = fmul fast float %9484, %9482
  %9486 = fsub fast float 3.000000e+00, %9482
  %9487 = fmul fast float %9484, %9486
  %9488 = fmul fast float %9482, 3.000000e+00
  %9489 = fmul fast float %9485, 3.000000e+00
  %9490 = fmul fast float %9484, 6.000000e+00
  %9491 = fsub fast float %9489, %9490
  %9492 = fadd fast float %9491, 4.000000e+00
  %9493 = fmul fast float %9492, 0x3FC5555560000000
  %9494 = fmul fast float %9485, -3.000000e+00
  %9495 = fadd fast float %9484, %9482
  %9496 = fmul fast float %9495, 3.000000e+00
  %9497 = fadd fast float %9494, 1.000000e+00
  %9498 = fadd fast float %9497, %9496
  %9499 = fmul fast float %9485, 0x3FC5555560000000
  %9500 = fmul fast float %9483, %9483
  %9501 = fmul fast float %9500, %9483
  %9502 = fsub fast float 3.000000e+00, %9483
  %9503 = fmul fast float %9500, %9502
  %9504 = fmul fast float %9483, 3.000000e+00
  %9505 = fmul fast float %9501, 3.000000e+00
  %9506 = fmul fast float %9500, 6.000000e+00
  %9507 = fsub fast float %9505, %9506
  %9508 = fadd fast float %9507, 4.000000e+00
  %9509 = fmul fast float %9508, 0x3FC5555560000000
  %9510 = fmul fast float %9501, -3.000000e+00
  %9511 = fadd fast float %9500, %9483
  %9512 = fmul fast float %9511, 3.000000e+00
  %9513 = fadd fast float %9510, 1.000000e+00
  %9514 = fadd fast float %9513, %9512
  %9515 = fmul fast float %9501, 0x3FC5555560000000
  %9516 = fadd fast float %9482, 1.000000e+00
  %9517 = fsub fast float 1.000000e+00, %9488
  %9518 = fadd fast float %9517, %9487
  %9519 = fadd fast float %9518, %9492
  %9520 = fmul fast float %9519, 0x3FC5555560000000
  %9521 = fdiv fast float %9493, %9520
  %9522 = fsub fast float %9516, %9521
  %9523 = fsub fast float 1.000000e+00, %9482
  %9524 = fadd fast float %9498, %9485
  %9525 = fmul fast float %9524, 0x3FC5555560000000
  %9526 = fdiv fast float %9499, %9525
  %9527 = fadd fast float %9523, %9526
  %9528 = fadd fast float %9483, 1.000000e+00
  %9529 = fsub fast float 1.000000e+00, %9504
  %9530 = fadd fast float %9529, %9503
  %9531 = fadd fast float %9530, %9508
  %9532 = fmul fast float %9531, 0x3FC5555560000000
  %9533 = fdiv fast float %9509, %9532
  %9534 = fsub fast float %9528, %9533
  %9535 = fsub fast float 1.000000e+00, %9483
  %9536 = fadd fast float %9514, %9501
  %9537 = fmul fast float %9536, 0x3FC5555560000000
  %9538 = fdiv fast float %9515, %9537
  %9539 = fadd fast float %9538, %9535
  %9540 = fmul fast float %9522, %9476
  %9541 = fsub fast float %9397, %9540
  %9542 = fmul fast float %9527, %9476
  %9543 = fadd fast float %9542, %9397
  %9544 = fmul fast float %9539, %9477
  %9545 = fadd fast float %9544, %9398
  %9546 = fmul fast float %9534, %9477
  %9547 = fsub fast float %9398, %9546
  %9548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9541, float %9547, float %9465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9549 = extractvalue %dx.types.ResRet.f32 %9548, 0
  %9550 = extractvalue %dx.types.ResRet.f32 %9548, 1
  %9551 = extractvalue %dx.types.ResRet.f32 %9548, 2
  %9552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9543, float %9547, float %9465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9553 = extractvalue %dx.types.ResRet.f32 %9552, 0
  %9554 = extractvalue %dx.types.ResRet.f32 %9552, 1
  %9555 = extractvalue %dx.types.ResRet.f32 %9552, 2
  %9556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9541, float %9545, float %9465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9557 = extractvalue %dx.types.ResRet.f32 %9556, 0
  %9558 = extractvalue %dx.types.ResRet.f32 %9556, 1
  %9559 = extractvalue %dx.types.ResRet.f32 %9556, 2
  %9560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9543, float %9545, float %9465, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9561 = extractvalue %dx.types.ResRet.f32 %9560, 0
  %9562 = extractvalue %dx.types.ResRet.f32 %9560, 1
  %9563 = extractvalue %dx.types.ResRet.f32 %9560, 2
  %9564 = fsub fast float %9557, %9549
  %9565 = fsub fast float %9558, %9550
  %9566 = fsub fast float %9559, %9551
  %9567 = fmul fast float %9564, %9537
  %9568 = fmul fast float %9565, %9537
  %9569 = fmul fast float %9566, %9537
  %9570 = fadd fast float %9567, %9549
  %9571 = fadd fast float %9568, %9550
  %9572 = fadd fast float %9569, %9551
  %9573 = fsub fast float %9561, %9553
  %9574 = fsub fast float %9562, %9554
  %9575 = fsub fast float %9563, %9555
  %9576 = fmul fast float %9573, %9537
  %9577 = fmul fast float %9574, %9537
  %9578 = fmul fast float %9575, %9537
  %9579 = fsub fast float %9553, %9570
  %9580 = fadd fast float %9579, %9576
  %9581 = fsub fast float %9554, %9571
  %9582 = fadd fast float %9581, %9577
  %9583 = fsub fast float %9555, %9572
  %9584 = fadd fast float %9583, %9578
  %9585 = fmul fast float %9580, %9525
  %9586 = fmul fast float %9582, %9525
  %9587 = fmul fast float %9584, %9525
  %9588 = fadd fast float %9585, %9570
  %9589 = fadd fast float %9586, %9571
  %9590 = fadd fast float %9587, %9572
  %9591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9592 = extractvalue %dx.types.CBufRet.f32 %9591, 1
  %9593 = fmul fast float %9588, %9592
  %9594 = fmul fast float %9589, %9592
  %9595 = fmul fast float %9590, %9592
  br label %9596

; <label>:9596                                    ; preds = %9427, %9384
  %9597 = phi float [ %9467, %9427 ], [ 1.000000e+00, %9384 ]
  %9598 = phi float [ %9468, %9427 ], [ 1.000000e+00, %9384 ]
  %9599 = phi float [ %9469, %9427 ], [ 1.000000e+00, %9384 ]
  %9600 = phi float [ %9593, %9427 ], [ 0.000000e+00, %9384 ]
  %9601 = phi float [ %9594, %9427 ], [ 0.000000e+00, %9384 ]
  %9602 = phi float [ %9595, %9427 ], [ 0.000000e+00, %9384 ]
  %9603 = fmul fast float %9600, %7938
  %9604 = fmul fast float %9601, %7938
  %9605 = fmul fast float %9602, %7938
  %9606 = fmul fast float %9597, %9391
  %9607 = call float @dx.op.dot3.f32(i32 55, float %9597, float %9598, float %9599, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9608 = call float @dx.op.dot3.f32(i32 55, float %9603, float %9604, float %9605, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9609 = select i1 %213, float %9607, float %9597
  %9610 = select i1 %213, float %9607, float %9598
  %9611 = select i1 %213, float 1.000000e+00, float %9599
  %9612 = select i1 %213, float %9608, float %9603
  %9613 = select i1 %213, float 0.000000e+00, float %9604
  %9614 = select i1 %213, float 0.000000e+00, float %9605
  %9615 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9616 = extractvalue %dx.types.CBufRet.i32 %9615, 3
  %9617 = and i32 %9616, 3
  %9618 = icmp ne i32 %9617, 0
  %9619 = and i32 %9616, 4
  %9620 = icmp ne i32 %9619, 0
  %9621 = and i1 %9618, %9620
  %9622 = and i1 %213, %9621
  br i1 %9622, label %9623, label %9629

; <label>:9623                                    ; preds = %9596
  %9624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9625 = extractvalue %dx.types.CBufRet.f32 %9624, 1
  %9626 = fadd fast float %9606, -1.000000e+00
  %9627 = fmul fast float %9625, %9626
  %9628 = fadd fast float %9627, 1.000000e+00
  br label %9629

; <label>:9629                                    ; preds = %9623, %9596
  %9630 = phi float [ %9628, %9623 ], [ %9606, %9596 ]
  %9631 = fadd fast float %9388, %9385
  %9632 = fmul fast float %9609, %9631
  %9633 = fadd fast float %9632, %9612
  %9634 = fadd fast float %9389, %9386
  %9635 = fmul fast float %9610, %9634
  %9636 = fadd fast float %9635, %9613
  %9637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9638 = extractvalue %dx.types.CBufRet.f32 %9637, 0
  br i1 %213, label %9639, label %9662

; <label>:9639                                    ; preds = %9629
  %9640 = fadd fast float %9633, %9636
  %9641 = fmul fast float %9638, %9640
  %9642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9643 = extractvalue %dx.types.CBufRet.f32 %9642, 3
  %9644 = extractvalue %dx.types.CBufRet.f32 %7942, 1
  %9645 = fsub fast float %7947, %7941
  %9646 = fadd fast float %9645, %7948
  %9647 = fsub fast float %9646, %9644
  %9648 = extractvalue %dx.types.CBufRet.f32 %7942, 2
  %9649 = fmul fast float %9647, %9648
  %9650 = call float @dx.op.unary.f32(i32 7, float %9649)  ; Saturate(value)
  %9651 = fsub fast float %9650, %9643
  %9652 = fmul fast float %9651, %9630
  %9653 = fadd fast float %9652, %9643
  %9654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9655 = extractvalue %dx.types.CBufRet.f32 %9654, 0
  %9656 = fsub fast float %9653, %9655
  %9657 = fmul fast float %9656, 1.000000e+01
  %9658 = call float @dx.op.unary.f32(i32 7, float %9657)  ; Saturate(value)
  %9659 = fmul fast float %9658, %7937
  %9660 = fadd fast float %9659, %7938
  %9661 = fmul fast float %9660, %9653
  br label %9686

; <label>:9662                                    ; preds = %9629
  %9663 = fadd fast float %9390, %9387
  %9664 = fmul fast float %9611, %9663
  %9665 = fadd fast float %9664, %9614
  %9666 = fmul fast float %9638, %9633
  %9667 = fmul fast float %9638, %9636
  %9668 = fmul fast float %9638, %9665
  %9669 = call float @dx.op.binary.f32(i32 35, float %9667, float %9668)  ; FMax(a,b)
  %9670 = call float @dx.op.binary.f32(i32 35, float %9666, float %9669)  ; FMax(a,b)
  %9671 = call float @dx.op.binary.f32(i32 35, float %9670, float %7938)  ; FMax(a,b)
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

; <label>:9686                                    ; preds = %9680, %9674, %9639
  %9687 = phi float [ %9641, %9639 ], [ %9684, %9680 ], [ %9666, %9674 ]
  %9688 = phi float [ %9661, %9639 ], [ %9667, %9680 ], [ %9667, %9674 ]
  %9689 = phi float [ %9660, %9639 ], [ %9685, %9680 ], [ %9668, %9674 ]
  %9690 = phi float [ %9660, %9639 ], [ %7938, %9680 ], [ %7938, %9674 ]
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

