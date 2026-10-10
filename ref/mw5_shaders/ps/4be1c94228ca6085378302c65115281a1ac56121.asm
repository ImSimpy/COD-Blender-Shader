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
; shader hash: c8a890bd5f5f481be1e68a374efd9b8b
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
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %224 = fadd fast float %223, %217
  %225 = call float @dx.op.unary.f32(i32 22, float %224)  ; Frc(value)
  %226 = add i32 %49, 156
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = shl i32 %228, 4
  %230 = and i32 %229, 32752
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %228, 7
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %228, 22
  %236 = shl nuw nsw i32 %235, 5
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = add i32 %49, 216
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = and i32 %240, 255
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F70101020000000
  %244 = lshr i32 %240, 8
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F70101020000000
  %248 = lshr i32 %240, 16
  %249 = and i32 %248, 255
  %250 = uitofp i32 %249 to float
  %251 = fmul fast float %250, 0x3F70101020000000
  %252 = add i32 %49, 36
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 65535
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %254, 16
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = add i32 %49, 288
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = and i32 %261, 65535
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = lshr i32 %261, 16
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = fmul fast float %263, 0x3F50624DE0000000
  %267 = fmul fast float %265, 0x3F50624DE0000000
  %268 = add i32 %49, 172
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = shl i32 %270, 4
  %272 = and i32 %271, 32752
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %270, 7
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %270, 22
  %278 = shl nuw nsw i32 %277, 5
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = add i32 %49, 232
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = lshr i32 %282, 8
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = lshr i32 %282, 16
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = add i32 %49, 52
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 65535
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %296, 16
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = add i32 %49, 304
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = fmul fast float %305, 0x3F50624DE0000000
  %309 = fmul fast float %307, 0x3F50624DE0000000
  %310 = add i32 %49, 188
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = shl i32 %312, 4
  %314 = and i32 %313, 32752
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %312, 7
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %312, 22
  %320 = shl nuw nsw i32 %319, 5
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = add i32 %49, 248
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = lshr i32 %324, 8
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = lshr i32 %324, 16
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = add i32 %49, 68
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 65535
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %338, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = add i32 %49, 320
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = and i32 %345, 65535
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = lshr i32 %345, 16
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = fmul fast float %347, 0x3F50624DE0000000
  %351 = fmul fast float %349, 0x3F50624DE0000000
  %352 = add i32 %49, 204
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = shl i32 %354, 4
  %356 = and i32 %355, 32752
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %354, 7
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %354, 22
  %362 = shl nuw nsw i32 %361, 5
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = add i32 %49, 264
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = and i32 %366, 255
  %368 = uitofp i32 %367 to float
  %369 = fmul fast float %368, 0x3F70101020000000
  %370 = lshr i32 %366, 8
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = lshr i32 %366, 16
  %375 = and i32 %374, 255
  %376 = uitofp i32 %375 to float
  %377 = fmul fast float %376, 0x3F70101020000000
  %378 = add i32 %49, 84
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 65535
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = lshr i32 %380, 16
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = add i32 %49, 336
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = and i32 %387, 65535
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = lshr i32 %387, 16
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = fmul fast float %389, 0x3F50624DE0000000
  %393 = fmul fast float %391, 0x3F50624DE0000000
  %394 = add i32 %49, 348
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 32
  %398 = icmp eq i32 %397, 0
  %399 = and i32 %396, 64
  %400 = icmp eq i32 %399, 0
  %401 = and i32 %396, 128
  %402 = icmp eq i32 %401, 0
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 2
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %422, label %407

; <label>:407                                     ; preds = %213
  %408 = add i32 %49, 488
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = add i32 %410, 0
  %412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %412, %dx.types.Handle %95, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %414 = extractvalue %dx.types.ResRet.f32 %413, 0
  %415 = extractvalue %dx.types.ResRet.f32 %413, 1
  %416 = extractvalue %dx.types.ResRet.f32 %413, 2
  %417 = extractvalue %dx.types.ResRet.f32 %413, 3
  %418 = fmul fast float %417, %79
  %419 = fmul fast float %414, %80
  %420 = fmul fast float %415, %81
  %421 = fmul fast float %416, %82
  br label %422

; <label>:422                                     ; preds = %407, %213
  %423 = phi float [ %82, %213 ], [ %421, %407 ]
  %424 = phi float [ %81, %213 ], [ %420, %407 ]
  %425 = phi float [ %80, %213 ], [ %419, %407 ]
  %426 = phi float [ %79, %213 ], [ %418, %407 ]
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 2
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %450, label %431

; <label>:431                                     ; preds = %422
  %432 = add i32 %49, 44
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 1
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %436, float %425, float 1.000000e+00
  %438 = add i32 %49, 60
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 1
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %442, float %424, float 1.000000e+00
  %444 = add i32 %49, 76
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, float %423, float 1.000000e+00
  br label %450

; <label>:450                                     ; preds = %431, %422
  %451 = phi float [ %423, %422 ], [ %449, %431 ]
  %452 = phi float [ %424, %422 ], [ %443, %431 ]
  %453 = phi float [ %425, %422 ], [ %437, %431 ]
  %454 = lshr i32 %428, 20
  %455 = and i32 %454, 3
  %456 = add nuw nsw i32 %455, 1
  %457 = add i32 %49, 24
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = add i32 %49, 28
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = or i32 %462, %459
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %1225, label %465

; <label>:465                                     ; preds = %450
  %466 = and i32 %459, 262144
  %467 = icmp ne i32 %466, 0
  %468 = select i1 %467, float %52, float 1.000000e+00
  %469 = select i1 %467, float %53, float 0.000000e+00
  %470 = select i1 %467, float %54, float 0.000000e+00
  %471 = select i1 %467, float %55, float 1.000000e+00
  %472 = select i1 %467, float %56, float %77
  %473 = select i1 %467, float %57, float %78
  %474 = add i32 %49, 284
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = lshr i32 %476, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = fmul fast float %478, 0x3F50624DE0000000
  %480 = add i32 %49, 88
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = lshr i32 %482, 16
  %484 = and i32 %483, 255
  %485 = lshr i32 %482, 24
  %486 = add i32 %49, 292
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = and i32 %488, 65535
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = lshr i32 %488, 16
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = add i32 %49, 32
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = lshr i32 %495, 22
  %497 = shl nuw nsw i32 %496, 5
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = shl i32 %495, 4
  %500 = and i32 %499, 32752
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = lshr i32 %495, 7
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 3
  %507 = fmul fast float %506, 1.000000e+03
  %508 = fmul fast float %266, %507
  %509 = call float @dx.op.unary.f32(i32 22, float %508)  ; Frc(value)
  %510 = fadd fast float %509, %256
  %511 = fmul fast float %267, %507
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = fadd fast float %512, %258
  %514 = fmul fast float %479, %507
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fmul fast float %515, 0x401921FB60000000
  %517 = fadd fast float %516, %498
  %518 = call float @dx.op.unary.f32(i32 13, float %517)  ; Sin(value)
  %519 = call float @dx.op.unary.f32(i32 12, float %517)  ; Cos(value)
  %520 = fsub fast float -0.000000e+00, %518
  %521 = fadd fast float %472, -5.000000e-01
  %522 = fadd fast float %473, -5.000000e-01
  %523 = fmul fast float %490, %521
  %524 = fmul fast float %492, %522
  %525 = fadd fast float %523, 5.000000e-01
  %526 = fadd fast float %524, 5.000000e-01
  %527 = fmul fast float %501, %525
  %528 = fmul fast float %504, %526
  %529 = fmul fast float %519, %527
  %530 = call float @dx.op.tertiary.f32(i32 46, float %520, float %528, float %529)  ; FMad(a,b,c)
  %531 = fmul fast float %518, %527
  %532 = call float @dx.op.tertiary.f32(i32 46, float %519, float %528, float %531)  ; FMad(a,b,c)
  %533 = fadd fast float %510, %530
  %534 = fadd fast float %513, %532
  %535 = icmp ugt i32 %484, 1
  %536 = icmp ugt i32 %482, 33554431
  %537 = or i1 %536, %535
  br i1 %537, label %538, label %563

; <label>:538                                     ; preds = %465
  %539 = add i32 %49, 228
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = lshr i32 %541, 16
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = fmul fast float %506, %543
  %545 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %546 = mul nuw nsw i32 %484, %485
  %547 = uitofp i32 %546 to float
  %548 = fmul fast float %545, %547
  %549 = call float @dx.op.unary.f32(i32 27, float %548)  ; Round_ni(value)
  %550 = fptoui float %549 to i32
  %551 = urem i32 %550, %484
  %552 = udiv i32 %550, %485
  %553 = call float @dx.op.unary.f32(i32 22, float %533)  ; Frc(value)
  %554 = call float @dx.op.unary.f32(i32 22, float %534)  ; Frc(value)
  %555 = uitofp i32 %551 to float
  %556 = uitofp i32 %552 to float
  %557 = fadd fast float %553, %555
  %558 = fadd fast float %554, %556
  %559 = uitofp i32 %484 to float
  %560 = uitofp i32 %485 to float
  %561 = fdiv fast float %557, %559
  %562 = fdiv fast float %558, %560
  br label %563

; <label>:563                                     ; preds = %538, %465
  %564 = phi float [ %561, %538 ], [ %533, %465 ]
  %565 = phi float [ %562, %538 ], [ %534, %465 ]
  %566 = and i32 %459, 16777216
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %677, label %568

; <label>:568                                     ; preds = %563
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 0
  %571 = extractvalue %dx.types.CBufRet.f32 %569, 1
  %572 = extractvalue %dx.types.CBufRet.f32 %569, 2
  %573 = fadd fast float %570, %153
  %574 = fadd fast float %571, %154
  %575 = fadd fast float %572, %155
  %576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %577 = extractvalue %dx.types.CBufRet.f32 %576, 0
  %578 = call float @dx.op.unary.f32(i32 7, float %577)  ; Saturate(value)
  %579 = icmp eq i32 %50, 65535
  br i1 %579, label %674, label %580

; <label>:580                                     ; preds = %568
  %581 = lshr i32 %50, 1
  %582 = shl i32 %581, 2
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = and i32 %50, 1
  %586 = icmp ne i32 %585, 0
  %587 = lshr i32 %584, 16
  %588 = and i32 %584, 65535
  %589 = select i1 %586, i32 %587, i32 %588
  %590 = icmp eq i32 %589, 65535
  br i1 %590, label %670, label %591

; <label>:591                                     ; preds = %580
  %592 = mul nuw nsw i32 %589, 40
  %593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = extractvalue %dx.types.ResRet.f32 %593, 1
  %596 = extractvalue %dx.types.ResRet.f32 %593, 2
  %597 = add nuw nsw i32 %592, 12
  %598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.f32 %598, 0
  %600 = extractvalue %dx.types.ResRet.f32 %598, 1
  %601 = extractvalue %dx.types.ResRet.f32 %598, 2
  %602 = add nuw nsw i32 %592, 24
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = extractvalue %dx.types.ResRet.f32 %603, 1
  %606 = extractvalue %dx.types.ResRet.f32 %603, 2
  %607 = add nuw nsw i32 %592, 36
  %608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = fsub fast float %573, %594
  %611 = fsub fast float %574, %595
  %612 = fsub fast float %575, %596
  %613 = fmul fast float %609, %610
  %614 = fmul fast float %609, %611
  %615 = fmul fast float %609, %612
  %616 = call float @dx.op.unary.f32(i32 27, float %613)  ; Round_ni(value)
  %617 = call float @dx.op.unary.f32(i32 27, float %614)  ; Round_ni(value)
  %618 = call float @dx.op.unary.f32(i32 27, float %615)  ; Round_ni(value)
  %619 = fadd fast float %616, 5.000000e-01
  %620 = fadd fast float %617, 5.000000e-01
  %621 = fadd fast float %618, 5.000000e-01
  %622 = fmul fast float %619, %599
  %623 = fmul fast float %620, %600
  %624 = fmul fast float %621, %601
  %625 = shl i32 %50, 2
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = add i32 %627, 0
  %629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %628, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %630 = call float @dx.op.unary.f32(i32 22, float %622)  ; Frc(value)
  %631 = call float @dx.op.unary.f32(i32 22, float %623)  ; Frc(value)
  %632 = call float @dx.op.unary.f32(i32 22, float %624)  ; Frc(value)
  %633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %629, %dx.types.Handle %44, float %630, float %631, float %632, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 0
  %635 = extractvalue %dx.types.ResRet.f32 %633, 1
  %636 = extractvalue %dx.types.ResRet.f32 %633, 2
  %637 = fmul fast float %634, 1.023000e+03
  %638 = fmul fast float %635, 1.023000e+03
  %639 = fmul fast float %636, 1.023000e+03
  %640 = fadd fast float %637, 5.000000e-01
  %641 = fadd fast float %638, 5.000000e-01
  %642 = fadd fast float %639, 5.000000e-01
  %643 = call float @dx.op.unary.f32(i32 27, float %640)  ; Round_ni(value)
  %644 = call float @dx.op.unary.f32(i32 27, float %641)  ; Round_ni(value)
  %645 = call float @dx.op.unary.f32(i32 27, float %642)  ; Round_ni(value)
  %646 = fsub fast float %613, %616
  %647 = fsub fast float %614, %617
  %648 = fsub fast float %615, %618
  %649 = fmul fast float %646, 7.500000e-01
  %650 = fmul fast float %647, 7.500000e-01
  %651 = fmul fast float %648, 7.500000e-01
  %652 = fadd fast float %616, 1.250000e-01
  %653 = fadd fast float %652, %649
  %654 = fadd fast float %653, %643
  %655 = fadd fast float %617, 1.250000e-01
  %656 = fadd fast float %655, %650
  %657 = fadd fast float %656, %644
  %658 = fadd fast float %618, 1.250000e-01
  %659 = fadd fast float %658, %651
  %660 = fadd fast float %659, %645
  %661 = fmul fast float %654, %604
  %662 = fmul fast float %657, %605
  %663 = fmul fast float %660, %606
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = add i32 %665, 0
  %667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %666, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %667, %dx.types.Handle %42, float %661, float %662, float %663, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %669 = extractvalue %dx.types.ResRet.f32 %668, 0
  br label %670

; <label>:670                                     ; preds = %591, %580
  %671 = phi float [ %669, %591 ], [ -1.000000e+00, %580 ]
  %672 = fadd fast float %671, %578
  %673 = call float @dx.op.unary.f32(i32 7, float %672)  ; Saturate(value)
  br label %674

; <label>:674                                     ; preds = %670, %568
  %675 = phi float [ %673, %670 ], [ %578, %568 ]
  %676 = fmul fast float %675, %426
  br label %677

; <label>:677                                     ; preds = %674, %563
  %678 = phi float [ %676, %674 ], [ %426, %563 ]
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 256
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %729, label %683

; <label>:683                                     ; preds = %677
  %684 = add i32 %49, 424
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %684, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = add i32 %686, 0
  %688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %687, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %689 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %688, %dx.types.Handle %95, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %690 = extractvalue %dx.types.ResRet.f32 %689, 0
  %691 = add i32 %49, 100
  %692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %691, i32 undef)  ; BufferLoad(srv,index,wot)
  %693 = extractvalue %dx.types.ResRet.i32 %692, 0
  %694 = shl i32 %693, 4
  %695 = and i32 %694, 32752
  %696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %695)  ; LegacyF16ToF32(value)
  %697 = lshr i32 %693, 7
  %698 = and i32 %697, 32752
  %699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %698)  ; LegacyF16ToF32(value)
  %700 = fsub fast float 1.000000e+00, %678
  %701 = call float @dx.op.binary.f32(i32 35, float %700, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %702 = bitcast float %678 to i32
  %703 = sitofp i32 %702 to float
  %704 = fadd fast float %703, 0xC1CFBF8940000000
  %705 = fmul fast float %699, %704
  %706 = fadd fast float %705, 0x41CFBF8940000000
  %707 = fptosi float %706 to i32
  %708 = bitcast i32 %707 to float
  %709 = bitcast float %701 to i32
  %710 = sitofp i32 %709 to float
  %711 = fadd fast float %710, 0xC1CFBF8940000000
  %712 = fmul fast float %711, %699
  %713 = fadd fast float %712, 0x41CFBF8940000000
  %714 = fptosi float %713 to i32
  %715 = bitcast i32 %714 to float
  %716 = fmul fast float %708, %696
  %717 = fmul fast float %715, %696
  %718 = fsub fast float %701, %716
  %719 = fadd fast float %717, %701
  %720 = call float @dx.op.unary.f32(i32 7, float %718)  ; Saturate(value)
  %721 = call float @dx.op.unary.f32(i32 7, float %719)  ; Saturate(value)
  %722 = fsub fast float %690, %720
  %723 = fsub fast float %721, %720
  %724 = bitcast float %723 to i32
  %725 = sub nsw i32 2129859010, %724
  %726 = bitcast i32 %725 to float
  %727 = fmul fast float %726, %722
  %728 = call float @dx.op.unary.f32(i32 7, float %727)  ; Saturate(value)
  br label %729

; <label>:729                                     ; preds = %683, %677
  %730 = phi float [ %728, %683 ], [ %678, %677 ]
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 128
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %751, label %735

; <label>:735                                     ; preds = %729
  %736 = add i32 %49, 408
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = add i32 %738, 0
  %740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %739, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %741 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %740, %dx.types.Handle %95, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %742 = extractvalue %dx.types.ResRet.f32 %741, 0
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 524288
  %746 = icmp ne i32 %745, 0
  %747 = fcmp fast ogt float %742, 0x3FE0101020000000
  %748 = select i1 %747, float 1.000000e+00, float 0.000000e+00
  %749 = select i1 %746, float %748, float %742
  %750 = fmul fast float %749, %730
  br label %751

; <label>:751                                     ; preds = %735, %729
  %752 = phi float [ %750, %735 ], [ %730, %729 ]
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 16
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %955, label %757

; <label>:757                                     ; preds = %751
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = add i32 %49, 360
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = add i32 %762, 0
  %764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %763, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %765 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %764, %dx.types.Handle %94, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %766 = extractvalue %dx.types.ResRet.f32 %765, 0
  %767 = extractvalue %dx.types.ResRet.f32 %765, 1
  %768 = extractvalue %dx.types.ResRet.f32 %765, 2
  %769 = extractvalue %dx.types.ResRet.f32 %765, 3
  %770 = and i32 %759, 255
  %771 = uitofp i32 %770 to float
  %772 = lshr i32 %759, 8
  %773 = and i32 %772, 255
  %774 = uitofp i32 %773 to float
  %775 = fmul fast float %769, %771
  %776 = fadd fast float %775, %774
  %777 = fmul fast float %776, 0x3F70101000000000
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = and i32 %779, 512
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %790, label %782

; <label>:782                                     ; preds = %757
  %783 = add i32 %49, 440
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = add i32 %785, 0
  %787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %788 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %787, %dx.types.Handle %95, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %789 = extractvalue %dx.types.ResRet.f32 %788, 0
  br label %790

; <label>:790                                     ; preds = %782, %757
  %791 = phi float [ %789, %782 ], [ 1.000000e+00, %757 ]
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 33554432
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %902, label %796

; <label>:796                                     ; preds = %790
  %797 = add i32 %49, 224
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 65535
  %801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %800)  ; LegacyF16ToF32(value)
  %802 = lshr i32 %799, 16
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = add i32 %49, 228
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 65535
  %808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %807)  ; LegacyF16ToF32(value)
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = lshr i32 %810, 24
  %812 = uitofp i32 %811 to float
  %813 = fmul fast float %812, 0x3F70101020000000
  %814 = and i32 %810, 255
  %815 = uitofp i32 %814 to float
  %816 = fmul fast float %815, 0x3F70101020000000
  %817 = lshr i32 %810, 8
  %818 = and i32 %817, 255
  %819 = uitofp i32 %818 to float
  %820 = fmul fast float %819, 0x3F70101020000000
  %821 = lshr i32 %810, 16
  %822 = and i32 %821, 255
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %823, 0x3F70101020000000
  %825 = add i32 %49, 220
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = lshr i32 %827, 24
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = and i32 %827, 255
  %832 = uitofp i32 %831 to float
  %833 = fmul fast float %832, 0x3F70101020000000
  %834 = lshr i32 %827, 8
  %835 = and i32 %834, 255
  %836 = uitofp i32 %835 to float
  %837 = fmul fast float %836, 0x3F70101020000000
  %838 = lshr i32 %827, 16
  %839 = and i32 %838, 255
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F70101020000000
  %842 = bitcast float %766 to i32
  %843 = ashr i32 %842, 1
  %844 = sub nsw i32 1597463174, %843
  %845 = bitcast i32 %844 to float
  %846 = fmul fast float %766, 5.000000e-01
  %847 = fmul fast float %845, %845
  %848 = fmul fast float %847, %846
  %849 = fsub fast float 1.500000e+00, %848
  %850 = fmul fast float %845, %766
  %851 = fmul fast float %850, %849
  %852 = bitcast float %767 to i32
  %853 = ashr i32 %852, 1
  %854 = sub nsw i32 1597463174, %853
  %855 = bitcast i32 %854 to float
  %856 = fmul fast float %767, 5.000000e-01
  %857 = fmul fast float %855, %855
  %858 = fmul fast float %857, %856
  %859 = fsub fast float 1.500000e+00, %858
  %860 = fmul fast float %855, %767
  %861 = fmul fast float %860, %859
  %862 = bitcast float %768 to i32
  %863 = ashr i32 %862, 1
  %864 = sub nsw i32 1597463174, %863
  %865 = bitcast i32 %864 to float
  %866 = fmul fast float %768, 5.000000e-01
  %867 = fmul fast float %865, %865
  %868 = fmul fast float %867, %866
  %869 = fsub fast float 1.500000e+00, %868
  %870 = fmul fast float %865, %768
  %871 = fmul fast float %870, %869
  %872 = fsub fast float %851, %833
  %873 = fsub fast float %861, %837
  %874 = fsub fast float %871, %841
  %875 = fmul fast float %872, %801
  %876 = fmul fast float %873, %803
  %877 = fmul fast float %874, %808
  %878 = fadd fast float %875, %816
  %879 = fadd fast float %876, %820
  %880 = fadd fast float %877, %824
  %881 = call float @dx.op.unary.f32(i32 7, float %878)  ; Saturate(value)
  %882 = call float @dx.op.unary.f32(i32 7, float %879)  ; Saturate(value)
  %883 = call float @dx.op.unary.f32(i32 7, float %880)  ; Saturate(value)
  %884 = fmul fast float %881, %881
  %885 = fmul fast float %882, %882
  %886 = fmul fast float %883, %883
  %887 = fsub fast float %884, %766
  %888 = fsub fast float %885, %767
  %889 = fsub fast float %886, %768
  %890 = fmul fast float %887, %791
  %891 = fmul fast float %888, %791
  %892 = fmul fast float %889, %791
  %893 = fadd fast float %890, %766
  %894 = fadd fast float %891, %767
  %895 = fadd fast float %892, %768
  %896 = fadd fast float %813, %777
  %897 = fsub fast float %896, %830
  %898 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %899 = fsub fast float %898, %777
  %900 = fmul fast float %899, %791
  %901 = fadd fast float %900, %777
  br label %955

; <label>:902                                     ; preds = %790
  %903 = and i32 %793, 134217728
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %939, label %905

; <label>:905                                     ; preds = %902
  %906 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %907 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %908 = call float @dx.op.unary.f32(i32 24, float %251)  ; Sqrt(value)
  %909 = fadd fast float %906, -5.000000e-01
  %910 = fadd fast float %907, -5.000000e-01
  %911 = fadd fast float %908, -5.000000e-01
  %912 = fmul fast float %909, %791
  %913 = fmul fast float %910, %791
  %914 = fmul fast float %911, %791
  %915 = fadd fast float %912, 5.000000e-01
  %916 = fadd fast float %913, 5.000000e-01
  %917 = fadd fast float %914, 5.000000e-01
  %918 = call float @dx.op.unary.f32(i32 24, float %766)  ; Sqrt(value)
  %919 = call float @dx.op.unary.f32(i32 24, float %767)  ; Sqrt(value)
  %920 = call float @dx.op.unary.f32(i32 24, float %768)  ; Sqrt(value)
  %921 = fmul fast float %915, 2.000000e+00
  %922 = fsub fast float 1.000000e+00, %921
  %923 = fmul fast float %922, %918
  %924 = fadd fast float %923, %921
  %925 = fmul fast float %924, %918
  %926 = fmul fast float %916, 2.000000e+00
  %927 = fsub fast float 1.000000e+00, %926
  %928 = fmul fast float %927, %919
  %929 = fadd fast float %928, %926
  %930 = fmul fast float %929, %919
  %931 = fmul fast float %917, 2.000000e+00
  %932 = fsub fast float 1.000000e+00, %931
  %933 = fmul fast float %932, %920
  %934 = fadd fast float %933, %931
  %935 = fmul fast float %934, %920
  %936 = fmul fast float %925, %925
  %937 = fmul fast float %930, %930
  %938 = fmul fast float %935, %935
  br label %955

; <label>:939                                     ; preds = %902
  %940 = fmul fast float %243, %243
  %941 = fmul fast float %247, %247
  %942 = fmul fast float %251, %251
  %943 = fadd fast float %940, -1.000000e+00
  %944 = fadd fast float %941, -1.000000e+00
  %945 = fadd fast float %942, -1.000000e+00
  %946 = fmul fast float %791, %943
  %947 = fmul fast float %791, %944
  %948 = fmul fast float %791, %945
  %949 = fadd fast float %946, 1.000000e+00
  %950 = fadd fast float %947, 1.000000e+00
  %951 = fadd fast float %948, 1.000000e+00
  %952 = fmul fast float %949, %766
  %953 = fmul fast float %950, %767
  %954 = fmul fast float %951, %768
  br label %955

; <label>:955                                     ; preds = %939, %905, %796, %751
  %956 = phi float [ %901, %796 ], [ %777, %905 ], [ %777, %939 ], [ 0x3FA23C0BE0000000, %751 ]
  %957 = phi float [ %893, %796 ], [ %936, %905 ], [ %952, %939 ], [ 1.000000e+00, %751 ]
  %958 = phi float [ %894, %796 ], [ %937, %905 ], [ %953, %939 ], [ 1.000000e+00, %751 ]
  %959 = phi float [ %895, %796 ], [ %938, %905 ], [ %954, %939 ], [ 1.000000e+00, %751 ]
  %960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.i32 %960, 1
  %962 = and i32 %961, 1
  %963 = icmp ne i32 %962, 0
  %964 = add i32 %49, 356
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = and i32 %966, 32
  %968 = icmp ne i32 %967, 0
  %969 = and i1 %963, %968
  %970 = select i1 %969, float 1.000000e+00, float %957
  %971 = select i1 %969, float 0x3FD3333340000000, float %958
  %972 = select i1 %969, float 0x3FD3333340000000, float %959
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = and i32 %974, 32
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %1049, label %977

; <label>:977                                     ; preds = %955
  %978 = add i32 %49, 92
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = add i32 %49, 376
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = add i32 %983, 0
  %985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %986 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %985, %dx.types.Handle %94, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %987 = extractvalue %dx.types.ResRet.f32 %986, 0
  %988 = extractvalue %dx.types.ResRet.f32 %986, 1
  %989 = extractvalue %dx.types.ResRet.f32 %986, 2
  %990 = extractvalue %dx.types.ResRet.f32 %986, 3
  %991 = and i32 %980, 255
  %992 = uitofp i32 %991 to float
  %993 = lshr i32 %980, 8
  %994 = and i32 %993, 255
  %995 = uitofp i32 %994 to float
  %996 = lshr i32 %980, 16
  %997 = and i32 %996, 255
  %998 = uitofp i32 %997 to float
  %999 = fmul fast float %998, 0x3F70101000000000
  %1000 = fmul fast float %987, %992
  %1001 = fadd fast float %1000, %995
  %1002 = fmul fast float %1001, 0x3F70101000000000
  %1003 = fadd fast float %988, -5.000000e-01
  %1004 = fadd fast float %990, -5.000000e-01
  %1005 = fmul fast float %1003, %999
  %1006 = fmul fast float %1004, %999
  %1007 = fadd fast float %1005, 5.000000e-01
  %1008 = fadd fast float %1006, 5.000000e-01
  %1009 = fmul fast float %1007, 2.000000e+00
  %1010 = fadd fast float %1009, -1.000000e+00
  %1011 = fmul fast float %1008, 2.000000e+00
  %1012 = fadd fast float %1011, -1.000000e+00
  %1013 = fadd fast float %1010, %1012
  %1014 = fmul fast float %1013, 5.000000e-01
  %1015 = fsub fast float %1010, %1012
  %1016 = fmul fast float %1015, 5.000000e-01
  %1017 = call float @dx.op.unary.f32(i32 6, float %1014)  ; FAbs(value)
  %1018 = fsub fast float 1.000000e+00, %1017
  %1019 = call float @dx.op.unary.f32(i32 6, float %1016)  ; FAbs(value)
  %1020 = fsub fast float %1018, %1019
  %1021 = call float @dx.op.dot3.f32(i32 55, float %1014, float %1016, float %1020, float %1014, float %1016, float %1020)  ; Dot3(ax,ay,az,bx,by,bz)
  %1022 = call float @dx.op.unary.f32(i32 25, float %1021)  ; Rsqrt(value)
  %1023 = fmul fast float %1014, %1022
  %1024 = fmul fast float %1016, %1022
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = and i32 %1026, 67108864
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1045, label %1029

; <label>:1029                                    ; preds = %977
  %1030 = add i32 %49, 280
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = and i32 %1032, 65535
  %1034 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1033)  ; LegacyF16ToF32(value)
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %1036, 65535
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = lshr i32 %1032, 16
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = fsub fast float %1002, %1040
  %1042 = fmul fast float %1041, %1034
  %1043 = fadd fast float %1042, %1038
  %1044 = call float @dx.op.unary.f32(i32 7, float %1043)  ; Saturate(value)
  br label %1045

; <label>:1045                                    ; preds = %1029, %977
  %1046 = phi float [ %1044, %1029 ], [ %1002, %977 ]
  %1047 = call float @dx.op.dot2.f32(i32 54, float %1023, float %1024, float %468, float %469)  ; Dot2(ax,ay,bx,by)
  %1048 = call float @dx.op.dot2.f32(i32 54, float %1023, float %1024, float %470, float %471)  ; Dot2(ax,ay,bx,by)
  br label %1049

; <label>:1049                                    ; preds = %1045, %955
  %1050 = phi float [ %1046, %1045 ], [ 0x3FD6666660000000, %955 ]
  %1051 = phi float [ %1047, %1045 ], [ 0.000000e+00, %955 ]
  %1052 = phi float [ %1048, %1045 ], [ 0.000000e+00, %955 ]
  %1053 = phi float [ %989, %1045 ], [ 1.000000e+00, %955 ]
  %1054 = add i32 %49, 160
  %1055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.i32 %1055, 0
  %1057 = lshr i32 %1056, 22
  %1058 = shl nuw nsw i32 %1057, 5
  %1059 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1058)  ; LegacyF16ToF32(value)
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = and i32 %1061, 64
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1097, label %1064

; <label>:1064                                    ; preds = %1049
  %1065 = add i32 %49, 392
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = add i32 %1067, 0
  %1069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1068, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = and i32 %1071, 131072
  %1073 = icmp eq i32 %1072, 0
  %1074 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1069, %dx.types.Handle %94, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1078 = fmul fast float %1075, %231
  %1079 = fmul fast float %1076, %234
  %1080 = fmul fast float %1077, %237
  br i1 %1073, label %1087, label %1081

; <label>:1081                                    ; preds = %1064
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 0
  %1084 = fmul fast float %1083, %1078
  %1085 = fmul fast float %1083, %1079
  %1086 = fmul fast float %1083, %1080
  br label %1087

; <label>:1087                                    ; preds = %1081, %1064
  %1088 = phi float [ %1084, %1081 ], [ %1078, %1064 ]
  %1089 = phi float [ %1085, %1081 ], [ %1079, %1064 ]
  %1090 = phi float [ %1086, %1081 ], [ %1080, %1064 ]
  %1091 = fmul fast float %1088, %1059
  %1092 = select i1 %214, float %1091, float %1088
  %1093 = call float @dx.op.dot3.f32(i32 55, float %1092, float %1089, float %1090, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1094 = select i1 %214, float 0.000000e+00, float %1088
  %1095 = select i1 %214, float %1093, float %1089
  %1096 = select i1 %214, float 0.000000e+00, float %1090
  br label %1097

; <label>:1097                                    ; preds = %1087, %1049
  %1098 = phi float [ %1094, %1087 ], [ 0.000000e+00, %1049 ]
  %1099 = phi float [ %1095, %1087 ], [ 0.000000e+00, %1049 ]
  %1100 = phi float [ %1096, %1087 ], [ 0.000000e+00, %1049 ]
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = and i32 %1102, 1024
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1135, label %1105

; <label>:1105                                    ; preds = %1097
  %1106 = add i32 %49, 152
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 255
  %1110 = uitofp i32 %1109 to float
  %1111 = fmul fast float %1110, 0x3F70101020000000
  %1112 = lshr i32 %1108, 8
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = fmul fast float %1114, 0x3F70101020000000
  %1116 = lshr i32 %1108, 16
  %1117 = and i32 %1116, 255
  %1118 = uitofp i32 %1117 to float
  %1119 = fmul fast float %1118, 0x3F70101020000000
  %1120 = fmul fast float %1111, %1111
  %1121 = fmul fast float %1115, %1115
  %1122 = fmul fast float %1119, %1119
  %1123 = add i32 %49, 456
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = add i32 %1125, 0
  %1127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1126, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1128 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1127, %dx.types.Handle %95, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1128, 2
  %1132 = fmul fast float %1120, %1129
  %1133 = fmul fast float %1121, %1130
  %1134 = fmul fast float %1122, %1131
  br label %1135

; <label>:1135                                    ; preds = %1105, %1097
  %1136 = phi float [ %1132, %1105 ], [ 0.000000e+00, %1097 ]
  %1137 = phi float [ %1133, %1105 ], [ 0.000000e+00, %1097 ]
  %1138 = phi float [ %1134, %1105 ], [ 0.000000e+00, %1097 ]
  %1139 = fcmp fast ogt float %1136, 0.000000e+00
  %1140 = fcmp fast ogt float %1137, 0.000000e+00
  %1141 = fcmp fast ogt float %1138, 0.000000e+00
  %1142 = call float @dx.op.unary.f32(i32 23, float %1136)  ; Log(value)
  %1143 = call float @dx.op.unary.f32(i32 23, float %1137)  ; Log(value)
  %1144 = call float @dx.op.unary.f32(i32 23, float %1138)  ; Log(value)
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = lshr i32 %1146, 7
  %1148 = and i32 %1147, 32752
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  %1150 = fmul fast float %1142, 0xBFE62E4300000000
  %1151 = fmul fast float %1150, %1149
  %1152 = fmul fast float %1143, 0xBFE62E4300000000
  %1153 = fmul fast float %1152, %1149
  %1154 = fmul fast float %1144, 0xBFE62E4300000000
  %1155 = fmul fast float %1154, %1149
  %1156 = select i1 %1139, float %1151, float 1.270000e+02
  %1157 = select i1 %1140, float %1153, float 1.270000e+02
  %1158 = select i1 %1141, float %1155, float 1.270000e+02
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 10240
  %1162 = icmp eq i32 %1161, 0
  br i1 %1162, label %1207, label %1163

; <label>:1163                                    ; preds = %1135
  %1164 = add i32 %49, 472
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = add i32 %1166, 0
  %1168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1169 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1168, %dx.types.Handle %95, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 1
  %1171 = extractvalue %dx.types.ResRet.f32 %1169, 3
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = and i32 %1173, 1048576
  %1175 = icmp ne i32 %1174, 0
  %1176 = and i32 %1173, 8192
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1193, label %1178

; <label>:1178                                    ; preds = %1163
  %1179 = extractvalue %dx.types.ResRet.f32 %1169, 2
  %1180 = select i1 %1175, float %1179, float %1170
  %1181 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1182 = select i1 %1175, float %1181, float %1170
  %1183 = add i32 %49, 96
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = lshr i32 %1185, 16
  %1187 = and i32 %1186, 255
  %1188 = uitofp i32 %1187 to float
  %1189 = fmul fast float %1188, 0x3F80101020000000
  %1190 = fmul fast float %1189, %1182
  %1191 = fmul fast float %1189, %1170
  %1192 = fmul fast float %1189, %1180
  br label %1193

; <label>:1193                                    ; preds = %1178, %1163
  %1194 = phi float [ %1190, %1178 ], [ 0.000000e+00, %1163 ]
  %1195 = phi float [ %1191, %1178 ], [ 0.000000e+00, %1163 ]
  %1196 = phi float [ %1192, %1178 ], [ 0.000000e+00, %1163 ]
  %1197 = and i32 %1173, 2048
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1207, label %1199

; <label>:1199                                    ; preds = %1193
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = shl i32 %1201, 4
  %1203 = and i32 %1202, 32752
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = fmul fast float %1204, %1171
  %1206 = call float @dx.op.binary.f32(i32 35, float %1205, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1207

; <label>:1207                                    ; preds = %1199, %1193, %1135
  %1208 = phi float [ %1194, %1199 ], [ %1194, %1193 ], [ 0.000000e+00, %1135 ]
  %1209 = phi float [ %1195, %1199 ], [ %1195, %1193 ], [ 0.000000e+00, %1135 ]
  %1210 = phi float [ %1196, %1199 ], [ %1196, %1193 ], [ 0.000000e+00, %1135 ]
  %1211 = phi float [ %1206, %1199 ], [ 0x3F70101020000000, %1193 ], [ 0x3F70101020000000, %1135 ]
  %1212 = add i32 %49, 96
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = and i32 %1214, 255
  %1216 = uitofp i32 %1215 to float
  %1217 = lshr i32 %1214, 8
  %1218 = and i32 %1217, 255
  %1219 = uitofp i32 %1218 to float
  %1220 = call float @dx.op.dot3.f32(i32 55, float %970, float %971, float %972, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1221 = fmul fast float %1219, %1220
  %1222 = fadd fast float %1221, %1216
  %1223 = fmul fast float %1222, 0x3F70101020000000
  %1224 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  br label %1225

; <label>:1225                                    ; preds = %1207, %450
  %1226 = phi float [ 0.000000e+00, %450 ], [ %1051, %1207 ]
  %1227 = phi float [ 0.000000e+00, %450 ], [ %1052, %1207 ]
  %1228 = phi float [ 0.000000e+00, %450 ], [ %970, %1207 ]
  %1229 = phi float [ 0.000000e+00, %450 ], [ %971, %1207 ]
  %1230 = phi float [ 0.000000e+00, %450 ], [ %972, %1207 ]
  %1231 = phi float [ 0.000000e+00, %450 ], [ %1098, %1207 ]
  %1232 = phi float [ 0.000000e+00, %450 ], [ %1099, %1207 ]
  %1233 = phi float [ 0.000000e+00, %450 ], [ %1100, %1207 ]
  %1234 = phi float [ 0.000000e+00, %450 ], [ %1208, %1207 ]
  %1235 = phi float [ 0.000000e+00, %450 ], [ %1209, %1207 ]
  %1236 = phi float [ 0.000000e+00, %450 ], [ %1210, %1207 ]
  %1237 = phi float [ 0.000000e+00, %450 ], [ %1156, %1207 ]
  %1238 = phi float [ 0.000000e+00, %450 ], [ %1157, %1207 ]
  %1239 = phi float [ 0.000000e+00, %450 ], [ %1158, %1207 ]
  %1240 = phi float [ 0.000000e+00, %450 ], [ %956, %1207 ]
  %1241 = phi float [ 0.000000e+00, %450 ], [ %752, %1207 ]
  %1242 = phi float [ 0.000000e+00, %450 ], [ %1050, %1207 ]
  %1243 = phi float [ 0.000000e+00, %450 ], [ %1053, %1207 ]
  %1244 = phi float [ 0.000000e+00, %450 ], [ %1211, %1207 ]
  %1245 = phi float [ 0.000000e+00, %450 ], [ %1224, %1207 ]
  br i1 %398, label %2283, label %1246

; <label>:1246                                    ; preds = %1225
  %1247 = icmp ult i32 %456, 2
  %1248 = add i32 %49, 40
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = add i32 %49, 44
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = or i32 %1253, %1250
  %1255 = icmp eq i32 %1254, 0
  br i1 %1255, label %2283, label %1256

; <label>:1256                                    ; preds = %1246
  %1257 = and i32 %1250, 262144
  %1258 = icmp ne i32 %1257, 0
  %1259 = select i1 %1258, float %52, float 1.000000e+00
  %1260 = select i1 %1258, float %53, float 0.000000e+00
  %1261 = select i1 %1258, float %54, float 0.000000e+00
  %1262 = select i1 %1258, float %55, float 1.000000e+00
  %1263 = select i1 %1258, float %56, float %77
  %1264 = select i1 %1258, float %57, float %78
  %1265 = add i32 %49, 300
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = lshr i32 %1267, 16
  %1269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1268)  ; LegacyF16ToF32(value)
  %1270 = fmul fast float %1269, 0x3F50624DE0000000
  %1271 = add i32 %49, 104
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = lshr i32 %1273, 16
  %1275 = and i32 %1274, 255
  %1276 = lshr i32 %1273, 24
  %1277 = add i32 %49, 308
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = and i32 %1279, 65535
  %1281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1280)  ; LegacyF16ToF32(value)
  %1282 = lshr i32 %1279, 16
  %1283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1282)  ; LegacyF16ToF32(value)
  %1284 = add i32 %49, 48
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = lshr i32 %1286, 22
  %1288 = shl nuw nsw i32 %1287, 5
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = shl i32 %1286, 4
  %1291 = and i32 %1290, 32752
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = lshr i32 %1286, 7
  %1294 = and i32 %1293, 32752
  %1295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1294)  ; LegacyF16ToF32(value)
  %1296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1297 = extractvalue %dx.types.CBufRet.f32 %1296, 3
  %1298 = fmul fast float %1297, 1.000000e+03
  %1299 = fmul fast float %308, %1298
  %1300 = call float @dx.op.unary.f32(i32 22, float %1299)  ; Frc(value)
  %1301 = fadd fast float %1300, %298
  %1302 = fmul fast float %309, %1298
  %1303 = call float @dx.op.unary.f32(i32 22, float %1302)  ; Frc(value)
  %1304 = fadd fast float %1303, %300
  %1305 = fmul fast float %1270, %1298
  %1306 = call float @dx.op.unary.f32(i32 22, float %1305)  ; Frc(value)
  %1307 = fmul fast float %1306, 0x401921FB60000000
  %1308 = fadd fast float %1307, %1289
  %1309 = call float @dx.op.unary.f32(i32 13, float %1308)  ; Sin(value)
  %1310 = call float @dx.op.unary.f32(i32 12, float %1308)  ; Cos(value)
  %1311 = fsub fast float -0.000000e+00, %1309
  %1312 = fadd fast float %1263, -5.000000e-01
  %1313 = fadd fast float %1264, -5.000000e-01
  %1314 = fmul fast float %1281, %1312
  %1315 = fmul fast float %1283, %1313
  %1316 = fadd fast float %1314, 5.000000e-01
  %1317 = fadd fast float %1315, 5.000000e-01
  %1318 = fmul fast float %1292, %1316
  %1319 = fmul fast float %1295, %1317
  %1320 = fmul fast float %1310, %1318
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1311, float %1319, float %1320)  ; FMad(a,b,c)
  %1322 = fmul fast float %1309, %1318
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1310, float %1319, float %1322)  ; FMad(a,b,c)
  %1324 = fadd fast float %1301, %1321
  %1325 = fadd fast float %1304, %1323
  %1326 = icmp ugt i32 %1275, 1
  %1327 = icmp ugt i32 %1273, 33554431
  %1328 = or i1 %1327, %1326
  br i1 %1328, label %1329, label %1354

; <label>:1329                                    ; preds = %1256
  %1330 = add i32 %49, 244
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = lshr i32 %1332, 16
  %1334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1333)  ; LegacyF16ToF32(value)
  %1335 = fmul fast float %1297, %1334
  %1336 = call float @dx.op.unary.f32(i32 22, float %1335)  ; Frc(value)
  %1337 = mul nuw nsw i32 %1275, %1276
  %1338 = uitofp i32 %1337 to float
  %1339 = fmul fast float %1336, %1338
  %1340 = call float @dx.op.unary.f32(i32 27, float %1339)  ; Round_ni(value)
  %1341 = fptoui float %1340 to i32
  %1342 = urem i32 %1341, %1275
  %1343 = udiv i32 %1341, %1276
  %1344 = call float @dx.op.unary.f32(i32 22, float %1324)  ; Frc(value)
  %1345 = call float @dx.op.unary.f32(i32 22, float %1325)  ; Frc(value)
  %1346 = uitofp i32 %1342 to float
  %1347 = uitofp i32 %1343 to float
  %1348 = fadd fast float %1344, %1346
  %1349 = fadd fast float %1345, %1347
  %1350 = uitofp i32 %1275 to float
  %1351 = uitofp i32 %1276 to float
  %1352 = fdiv fast float %1348, %1350
  %1353 = fdiv fast float %1349, %1351
  br label %1354

; <label>:1354                                    ; preds = %1329, %1256
  %1355 = phi float [ %1352, %1329 ], [ %1324, %1256 ]
  %1356 = phi float [ %1353, %1329 ], [ %1325, %1256 ]
  %1357 = and i32 %1250, 16777216
  %1358 = icmp eq i32 %1357, 0
  br i1 %1358, label %1468, label %1359

; <label>:1359                                    ; preds = %1354
  %1360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1361 = extractvalue %dx.types.CBufRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.CBufRet.f32 %1360, 1
  %1363 = extractvalue %dx.types.CBufRet.f32 %1360, 2
  %1364 = fadd fast float %1361, %153
  %1365 = fadd fast float %1362, %154
  %1366 = fadd fast float %1363, %155
  %1367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.f32 %1367, 0
  %1369 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1370 = icmp eq i32 %50, 65535
  br i1 %1370, label %1465, label %1371

; <label>:1371                                    ; preds = %1359
  %1372 = lshr i32 %50, 1
  %1373 = shl i32 %1372, 2
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = and i32 %50, 1
  %1377 = icmp ne i32 %1376, 0
  %1378 = lshr i32 %1375, 16
  %1379 = and i32 %1375, 65535
  %1380 = select i1 %1377, i32 %1378, i32 %1379
  %1381 = icmp eq i32 %1380, 65535
  br i1 %1381, label %1461, label %1382

; <label>:1382                                    ; preds = %1371
  %1383 = mul nuw nsw i32 %1380, 40
  %1384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.f32 %1384, 0
  %1386 = extractvalue %dx.types.ResRet.f32 %1384, 1
  %1387 = extractvalue %dx.types.ResRet.f32 %1384, 2
  %1388 = add nuw nsw i32 %1383, 12
  %1389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  %1391 = extractvalue %dx.types.ResRet.f32 %1389, 1
  %1392 = extractvalue %dx.types.ResRet.f32 %1389, 2
  %1393 = add nuw nsw i32 %1383, 24
  %1394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.f32 %1394, 0
  %1396 = extractvalue %dx.types.ResRet.f32 %1394, 1
  %1397 = extractvalue %dx.types.ResRet.f32 %1394, 2
  %1398 = add nuw nsw i32 %1383, 36
  %1399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1398, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.f32 %1399, 0
  %1401 = fsub fast float %1364, %1385
  %1402 = fsub fast float %1365, %1386
  %1403 = fsub fast float %1366, %1387
  %1404 = fmul fast float %1400, %1401
  %1405 = fmul fast float %1400, %1402
  %1406 = fmul fast float %1400, %1403
  %1407 = call float @dx.op.unary.f32(i32 27, float %1404)  ; Round_ni(value)
  %1408 = call float @dx.op.unary.f32(i32 27, float %1405)  ; Round_ni(value)
  %1409 = call float @dx.op.unary.f32(i32 27, float %1406)  ; Round_ni(value)
  %1410 = fadd fast float %1407, 5.000000e-01
  %1411 = fadd fast float %1408, 5.000000e-01
  %1412 = fadd fast float %1409, 5.000000e-01
  %1413 = fmul fast float %1410, %1390
  %1414 = fmul fast float %1411, %1391
  %1415 = fmul fast float %1412, %1392
  %1416 = shl i32 %50, 2
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1416, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = add i32 %1418, 0
  %1420 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1419, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1421 = call float @dx.op.unary.f32(i32 22, float %1413)  ; Frc(value)
  %1422 = call float @dx.op.unary.f32(i32 22, float %1414)  ; Frc(value)
  %1423 = call float @dx.op.unary.f32(i32 22, float %1415)  ; Frc(value)
  %1424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1420, %dx.types.Handle %44, float %1421, float %1422, float %1423, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = fmul fast float %1425, 1.023000e+03
  %1429 = fmul fast float %1426, 1.023000e+03
  %1430 = fmul fast float %1427, 1.023000e+03
  %1431 = fadd fast float %1428, 5.000000e-01
  %1432 = fadd fast float %1429, 5.000000e-01
  %1433 = fadd fast float %1430, 5.000000e-01
  %1434 = call float @dx.op.unary.f32(i32 27, float %1431)  ; Round_ni(value)
  %1435 = call float @dx.op.unary.f32(i32 27, float %1432)  ; Round_ni(value)
  %1436 = call float @dx.op.unary.f32(i32 27, float %1433)  ; Round_ni(value)
  %1437 = fsub fast float %1404, %1407
  %1438 = fsub fast float %1405, %1408
  %1439 = fsub fast float %1406, %1409
  %1440 = fmul fast float %1437, 7.500000e-01
  %1441 = fmul fast float %1438, 7.500000e-01
  %1442 = fmul fast float %1439, 7.500000e-01
  %1443 = fadd fast float %1407, 1.250000e-01
  %1444 = fadd fast float %1443, %1440
  %1445 = fadd fast float %1444, %1434
  %1446 = fadd fast float %1408, 1.250000e-01
  %1447 = fadd fast float %1446, %1441
  %1448 = fadd fast float %1447, %1435
  %1449 = fadd fast float %1409, 1.250000e-01
  %1450 = fadd fast float %1449, %1442
  %1451 = fadd fast float %1450, %1436
  %1452 = fmul fast float %1445, %1395
  %1453 = fmul fast float %1448, %1396
  %1454 = fmul fast float %1451, %1397
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1416, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = add i32 %1456, 0
  %1458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1458, %dx.types.Handle %42, float %1452, float %1453, float %1454, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1460 = extractvalue %dx.types.ResRet.f32 %1459, 0
  br label %1461

; <label>:1461                                    ; preds = %1382, %1371
  %1462 = phi float [ %1460, %1382 ], [ -1.000000e+00, %1371 ]
  %1463 = fadd fast float %1462, %1369
  %1464 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  br label %1465

; <label>:1465                                    ; preds = %1461, %1359
  %1466 = phi float [ %1464, %1461 ], [ %1369, %1359 ]
  %1467 = fmul fast float %1466, %453
  br label %1468

; <label>:1468                                    ; preds = %1465, %1354
  %1469 = phi float [ %1467, %1465 ], [ %453, %1354 ]
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = and i32 %1471, 256
  %1473 = icmp eq i32 %1472, 0
  br i1 %1473, label %1520, label %1474

; <label>:1474                                    ; preds = %1468
  %1475 = add i32 %49, 428
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1475, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = add i32 %1477, 0
  %1479 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1478, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1480 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1479, %dx.types.Handle %95, float %1355, float %1356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1481 = extractvalue %dx.types.ResRet.f32 %1480, 0
  %1482 = add i32 %49, 116
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = shl i32 %1484, 4
  %1486 = and i32 %1485, 32752
  %1487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1486)  ; LegacyF16ToF32(value)
  %1488 = lshr i32 %1484, 7
  %1489 = and i32 %1488, 32752
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = fsub fast float 1.000000e+00, %1469
  %1492 = call float @dx.op.binary.f32(i32 35, float %1491, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1493 = bitcast float %1469 to i32
  %1494 = sitofp i32 %1493 to float
  %1495 = fadd fast float %1494, 0xC1CFBF8940000000
  %1496 = fmul fast float %1490, %1495
  %1497 = fadd fast float %1496, 0x41CFBF8940000000
  %1498 = fptosi float %1497 to i32
  %1499 = bitcast i32 %1498 to float
  %1500 = bitcast float %1492 to i32
  %1501 = sitofp i32 %1500 to float
  %1502 = fadd fast float %1501, 0xC1CFBF8940000000
  %1503 = fmul fast float %1502, %1490
  %1504 = fadd fast float %1503, 0x41CFBF8940000000
  %1505 = fptosi float %1504 to i32
  %1506 = bitcast i32 %1505 to float
  %1507 = fmul fast float %1499, %1487
  %1508 = fmul fast float %1506, %1487
  %1509 = fsub fast float %1492, %1507
  %1510 = fadd fast float %1508, %1492
  %1511 = call float @dx.op.unary.f32(i32 7, float %1509)  ; Saturate(value)
  %1512 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1513 = fsub fast float %1481, %1511
  %1514 = fsub fast float %1512, %1511
  %1515 = bitcast float %1514 to i32
  %1516 = sub nsw i32 2129859010, %1515
  %1517 = bitcast i32 %1516 to float
  %1518 = fmul fast float %1517, %1513
  %1519 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  br label %1520

; <label>:1520                                    ; preds = %1474, %1468
  %1521 = phi float [ %1519, %1474 ], [ %1469, %1468 ]
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 128
  %1525 = icmp eq i32 %1524, 0
  br i1 %1525, label %1542, label %1526

; <label>:1526                                    ; preds = %1520
  %1527 = add i32 %49, 412
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = add i32 %1529, 0
  %1531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1531, %dx.types.Handle %95, float %1355, float %1356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1533 = extractvalue %dx.types.ResRet.f32 %1532, 0
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 524288
  %1537 = icmp ne i32 %1536, 0
  %1538 = fcmp fast ogt float %1533, 0x3FE0101020000000
  %1539 = select i1 %1538, float 1.000000e+00, float 0.000000e+00
  %1540 = select i1 %1537, float %1539, float %1533
  %1541 = fmul fast float %1540, %1521
  br label %1542

; <label>:1542                                    ; preds = %1526, %1520
  %1543 = phi float [ %1541, %1526 ], [ %1521, %1520 ]
  %1544 = fcmp fast ult float %1543, 0x3F70101020000000
  br i1 %1544, label %2283, label %1545

; <label>:1545                                    ; preds = %1542
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 16
  %1549 = icmp eq i32 %1548, 0
  br i1 %1549, label %1748, label %1550

; <label>:1550                                    ; preds = %1545
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = add i32 %49, 364
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1553, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = add i32 %1555, 0
  %1557 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1556, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1558 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1557, %dx.types.Handle %94, float %1355, float %1356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1559 = extractvalue %dx.types.ResRet.f32 %1558, 0
  %1560 = extractvalue %dx.types.ResRet.f32 %1558, 1
  %1561 = extractvalue %dx.types.ResRet.f32 %1558, 2
  %1562 = extractvalue %dx.types.ResRet.f32 %1558, 3
  %1563 = and i32 %1552, 255
  %1564 = uitofp i32 %1563 to float
  %1565 = lshr i32 %1552, 8
  %1566 = and i32 %1565, 255
  %1567 = uitofp i32 %1566 to float
  %1568 = fmul fast float %1562, %1564
  %1569 = fadd fast float %1568, %1567
  %1570 = fmul fast float %1569, 0x3F70101000000000
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = and i32 %1572, 512
  %1574 = icmp eq i32 %1573, 0
  br i1 %1574, label %1583, label %1575

; <label>:1575                                    ; preds = %1550
  %1576 = add i32 %49, 444
  %1577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1576, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.i32 %1577, 0
  %1579 = add i32 %1578, 0
  %1580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1579, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1581 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1580, %dx.types.Handle %95, float %1355, float %1356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 0
  br label %1583

; <label>:1583                                    ; preds = %1575, %1550
  %1584 = phi float [ %1582, %1575 ], [ 1.000000e+00, %1550 ]
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = and i32 %1586, 33554432
  %1588 = icmp eq i32 %1587, 0
  br i1 %1588, label %1695, label %1589

; <label>:1589                                    ; preds = %1583
  %1590 = add i32 %49, 240
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1590, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = and i32 %1592, 65535
  %1594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1593)  ; LegacyF16ToF32(value)
  %1595 = lshr i32 %1592, 16
  %1596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1595)  ; LegacyF16ToF32(value)
  %1597 = add i32 %49, 244
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = and i32 %1599, 65535
  %1601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1600)  ; LegacyF16ToF32(value)
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = lshr i32 %1603, 24
  %1605 = uitofp i32 %1604 to float
  %1606 = fmul fast float %1605, 0x3F70101020000000
  %1607 = and i32 %1603, 255
  %1608 = uitofp i32 %1607 to float
  %1609 = fmul fast float %1608, 0x3F70101020000000
  %1610 = lshr i32 %1603, 8
  %1611 = and i32 %1610, 255
  %1612 = uitofp i32 %1611 to float
  %1613 = fmul fast float %1612, 0x3F70101020000000
  %1614 = lshr i32 %1603, 16
  %1615 = and i32 %1614, 255
  %1616 = uitofp i32 %1615 to float
  %1617 = fmul fast float %1616, 0x3F70101020000000
  %1618 = add i32 %49, 236
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1618, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = lshr i32 %1620, 24
  %1622 = uitofp i32 %1621 to float
  %1623 = fmul fast float %1622, 0x3F70101020000000
  %1624 = and i32 %1620, 255
  %1625 = uitofp i32 %1624 to float
  %1626 = fmul fast float %1625, 0x3F70101020000000
  %1627 = lshr i32 %1620, 8
  %1628 = and i32 %1627, 255
  %1629 = uitofp i32 %1628 to float
  %1630 = fmul fast float %1629, 0x3F70101020000000
  %1631 = lshr i32 %1620, 16
  %1632 = and i32 %1631, 255
  %1633 = uitofp i32 %1632 to float
  %1634 = fmul fast float %1633, 0x3F70101020000000
  %1635 = bitcast float %1559 to i32
  %1636 = ashr i32 %1635, 1
  %1637 = sub nsw i32 1597463174, %1636
  %1638 = bitcast i32 %1637 to float
  %1639 = fmul fast float %1559, 5.000000e-01
  %1640 = fmul fast float %1638, %1638
  %1641 = fmul fast float %1640, %1639
  %1642 = fsub fast float 1.500000e+00, %1641
  %1643 = fmul fast float %1638, %1559
  %1644 = fmul fast float %1643, %1642
  %1645 = bitcast float %1560 to i32
  %1646 = ashr i32 %1645, 1
  %1647 = sub nsw i32 1597463174, %1646
  %1648 = bitcast i32 %1647 to float
  %1649 = fmul fast float %1560, 5.000000e-01
  %1650 = fmul fast float %1648, %1648
  %1651 = fmul fast float %1650, %1649
  %1652 = fsub fast float 1.500000e+00, %1651
  %1653 = fmul fast float %1648, %1560
  %1654 = fmul fast float %1653, %1652
  %1655 = bitcast float %1561 to i32
  %1656 = ashr i32 %1655, 1
  %1657 = sub nsw i32 1597463174, %1656
  %1658 = bitcast i32 %1657 to float
  %1659 = fmul fast float %1561, 5.000000e-01
  %1660 = fmul fast float %1658, %1658
  %1661 = fmul fast float %1660, %1659
  %1662 = fsub fast float 1.500000e+00, %1661
  %1663 = fmul fast float %1658, %1561
  %1664 = fmul fast float %1663, %1662
  %1665 = fsub fast float %1644, %1626
  %1666 = fsub fast float %1654, %1630
  %1667 = fsub fast float %1664, %1634
  %1668 = fmul fast float %1665, %1594
  %1669 = fmul fast float %1666, %1596
  %1670 = fmul fast float %1667, %1601
  %1671 = fadd fast float %1668, %1609
  %1672 = fadd fast float %1669, %1613
  %1673 = fadd fast float %1670, %1617
  %1674 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  %1675 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1676 = call float @dx.op.unary.f32(i32 7, float %1673)  ; Saturate(value)
  %1677 = fmul fast float %1674, %1674
  %1678 = fmul fast float %1675, %1675
  %1679 = fmul fast float %1676, %1676
  %1680 = fsub fast float %1677, %1559
  %1681 = fsub fast float %1678, %1560
  %1682 = fsub fast float %1679, %1561
  %1683 = fmul fast float %1680, %1584
  %1684 = fmul fast float %1681, %1584
  %1685 = fmul fast float %1682, %1584
  %1686 = fadd fast float %1683, %1559
  %1687 = fadd fast float %1684, %1560
  %1688 = fadd fast float %1685, %1561
  %1689 = fadd fast float %1606, %1570
  %1690 = fsub fast float %1689, %1623
  %1691 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1692 = fsub fast float %1691, %1570
  %1693 = fmul fast float %1692, %1584
  %1694 = fadd fast float %1693, %1570
  br label %1748

; <label>:1695                                    ; preds = %1583
  %1696 = and i32 %1586, 134217728
  %1697 = icmp eq i32 %1696, 0
  br i1 %1697, label %1732, label %1698

; <label>:1698                                    ; preds = %1695
  %1699 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %1700 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %1701 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1702 = fadd fast float %1699, -5.000000e-01
  %1703 = fadd fast float %1700, -5.000000e-01
  %1704 = fadd fast float %1701, -5.000000e-01
  %1705 = fmul fast float %1702, %1584
  %1706 = fmul fast float %1703, %1584
  %1707 = fmul fast float %1704, %1584
  %1708 = fadd fast float %1705, 5.000000e-01
  %1709 = fadd fast float %1706, 5.000000e-01
  %1710 = fadd fast float %1707, 5.000000e-01
  %1711 = call float @dx.op.unary.f32(i32 24, float %1559)  ; Sqrt(value)
  %1712 = call float @dx.op.unary.f32(i32 24, float %1560)  ; Sqrt(value)
  %1713 = call float @dx.op.unary.f32(i32 24, float %1561)  ; Sqrt(value)
  %1714 = fmul fast float %1708, 2.000000e+00
  %1715 = fsub fast float 1.000000e+00, %1714
  %1716 = fmul fast float %1715, %1711
  %1717 = fadd fast float %1716, %1714
  %1718 = fmul fast float %1717, %1711
  %1719 = fmul fast float %1709, 2.000000e+00
  %1720 = fsub fast float 1.000000e+00, %1719
  %1721 = fmul fast float %1720, %1712
  %1722 = fadd fast float %1721, %1719
  %1723 = fmul fast float %1722, %1712
  %1724 = fmul fast float %1710, 2.000000e+00
  %1725 = fsub fast float 1.000000e+00, %1724
  %1726 = fmul fast float %1725, %1713
  %1727 = fadd fast float %1726, %1724
  %1728 = fmul fast float %1727, %1713
  %1729 = fmul fast float %1718, %1718
  %1730 = fmul fast float %1723, %1723
  %1731 = fmul fast float %1728, %1728
  br label %1748

; <label>:1732                                    ; preds = %1695
  %1733 = fmul fast float %285, %285
  %1734 = fmul fast float %289, %289
  %1735 = fmul fast float %293, %293
  %1736 = fadd fast float %1733, -1.000000e+00
  %1737 = fadd fast float %1734, -1.000000e+00
  %1738 = fadd fast float %1735, -1.000000e+00
  %1739 = fmul fast float %1584, %1736
  %1740 = fmul fast float %1584, %1737
  %1741 = fmul fast float %1584, %1738
  %1742 = fadd fast float %1739, 1.000000e+00
  %1743 = fadd fast float %1740, 1.000000e+00
  %1744 = fadd fast float %1741, 1.000000e+00
  %1745 = fmul fast float %1742, %1559
  %1746 = fmul fast float %1743, %1560
  %1747 = fmul fast float %1744, %1561
  br label %1748

; <label>:1748                                    ; preds = %1732, %1698, %1589, %1545
  %1749 = phi float [ %1694, %1589 ], [ %1570, %1698 ], [ %1570, %1732 ], [ 0x3FA23C0BE0000000, %1545 ]
  %1750 = phi float [ %1686, %1589 ], [ %1729, %1698 ], [ %1745, %1732 ], [ 1.000000e+00, %1545 ]
  %1751 = phi float [ %1687, %1589 ], [ %1730, %1698 ], [ %1746, %1732 ], [ 1.000000e+00, %1545 ]
  %1752 = phi float [ %1688, %1589 ], [ %1731, %1698 ], [ %1747, %1732 ], [ 1.000000e+00, %1545 ]
  %1753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.i32 %1753, 1
  %1755 = and i32 %1754, 1
  %1756 = icmp ne i32 %1755, 0
  %1757 = add i32 %49, 356
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1757, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = and i32 %1759, 32
  %1761 = icmp ne i32 %1760, 0
  %1762 = and i1 %1756, %1761
  %1763 = select i1 %1762, float 1.000000e+00, float %1750
  %1764 = select i1 %1762, float 0x3FD3333340000000, float %1751
  %1765 = select i1 %1762, float 0x3FD3333340000000, float %1752
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = and i32 %1767, 32
  %1769 = icmp eq i32 %1768, 0
  br i1 %1769, label %1842, label %1770

; <label>:1770                                    ; preds = %1748
  %1771 = add i32 %49, 108
  %1772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.i32 %1772, 0
  %1774 = add i32 %49, 380
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = add i32 %1776, 0
  %1778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1777, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1779 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1778, %dx.types.Handle %94, float %1355, float %1356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1780 = extractvalue %dx.types.ResRet.f32 %1779, 0
  %1781 = extractvalue %dx.types.ResRet.f32 %1779, 1
  %1782 = extractvalue %dx.types.ResRet.f32 %1779, 2
  %1783 = extractvalue %dx.types.ResRet.f32 %1779, 3
  %1784 = and i32 %1773, 255
  %1785 = uitofp i32 %1784 to float
  %1786 = lshr i32 %1773, 8
  %1787 = and i32 %1786, 255
  %1788 = uitofp i32 %1787 to float
  %1789 = lshr i32 %1773, 16
  %1790 = and i32 %1789, 255
  %1791 = uitofp i32 %1790 to float
  %1792 = fmul fast float %1791, 0x3F70101000000000
  %1793 = fmul fast float %1780, %1785
  %1794 = fadd fast float %1793, %1788
  %1795 = fmul fast float %1794, 0x3F70101000000000
  %1796 = fadd fast float %1781, -5.000000e-01
  %1797 = fadd fast float %1783, -5.000000e-01
  %1798 = fmul fast float %1796, %1792
  %1799 = fmul fast float %1797, %1792
  %1800 = fadd fast float %1798, 5.000000e-01
  %1801 = fadd fast float %1799, 5.000000e-01
  %1802 = fmul fast float %1800, 2.000000e+00
  %1803 = fadd fast float %1802, -1.000000e+00
  %1804 = fmul fast float %1801, 2.000000e+00
  %1805 = fadd fast float %1804, -1.000000e+00
  %1806 = fadd fast float %1803, %1805
  %1807 = fmul fast float %1806, 5.000000e-01
  %1808 = fsub fast float %1803, %1805
  %1809 = fmul fast float %1808, 5.000000e-01
  %1810 = call float @dx.op.unary.f32(i32 6, float %1807)  ; FAbs(value)
  %1811 = fsub fast float 1.000000e+00, %1810
  %1812 = call float @dx.op.unary.f32(i32 6, float %1809)  ; FAbs(value)
  %1813 = fsub fast float %1811, %1812
  %1814 = call float @dx.op.dot3.f32(i32 55, float %1807, float %1809, float %1813, float %1807, float %1809, float %1813)  ; Dot3(ax,ay,az,bx,by,bz)
  %1815 = call float @dx.op.unary.f32(i32 25, float %1814)  ; Rsqrt(value)
  %1816 = fmul fast float %1807, %1815
  %1817 = fmul fast float %1809, %1815
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = and i32 %1819, 67108864
  %1821 = icmp eq i32 %1820, 0
  br i1 %1821, label %1838, label %1822

; <label>:1822                                    ; preds = %1770
  %1823 = add i32 %49, 296
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = and i32 %1825, 65535
  %1827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1826)  ; LegacyF16ToF32(value)
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = and i32 %1829, 65535
  %1831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1830)  ; LegacyF16ToF32(value)
  %1832 = lshr i32 %1825, 16
  %1833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1832)  ; LegacyF16ToF32(value)
  %1834 = fsub fast float %1795, %1833
  %1835 = fmul fast float %1834, %1827
  %1836 = fadd fast float %1835, %1831
  %1837 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  br label %1838

; <label>:1838                                    ; preds = %1822, %1770
  %1839 = phi float [ %1837, %1822 ], [ %1795, %1770 ]
  %1840 = call float @dx.op.dot2.f32(i32 54, float %1816, float %1817, float %1259, float %1260)  ; Dot2(ax,ay,bx,by)
  %1841 = call float @dx.op.dot2.f32(i32 54, float %1816, float %1817, float %1261, float %1262)  ; Dot2(ax,ay,bx,by)
  br label %1842

; <label>:1842                                    ; preds = %1838, %1748
  %1843 = phi float [ %1839, %1838 ], [ 0x3FD6666660000000, %1748 ]
  %1844 = phi float [ %1840, %1838 ], [ 0.000000e+00, %1748 ]
  %1845 = phi float [ %1841, %1838 ], [ 0.000000e+00, %1748 ]
  %1846 = phi float [ %1782, %1838 ], [ 1.000000e+00, %1748 ]
  %1847 = add i32 %49, 176
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = lshr i32 %1849, 22
  %1851 = shl nuw nsw i32 %1850, 5
  %1852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1851)  ; LegacyF16ToF32(value)
  %1853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1854 = extractvalue %dx.types.ResRet.i32 %1853, 0
  %1855 = and i32 %1854, 64
  %1856 = icmp eq i32 %1855, 0
  br i1 %1856, label %1890, label %1857

; <label>:1857                                    ; preds = %1842
  %1858 = add i32 %49, 396
  %1859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1858, i32 undef)  ; BufferLoad(srv,index,wot)
  %1860 = extractvalue %dx.types.ResRet.i32 %1859, 0
  %1861 = add i32 %1860, 0
  %1862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1861, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.i32 %1863, 0
  %1865 = and i32 %1864, 131072
  %1866 = icmp eq i32 %1865, 0
  %1867 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1862, %dx.types.Handle %94, float %1355, float %1356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1868 = extractvalue %dx.types.ResRet.f32 %1867, 0
  %1869 = extractvalue %dx.types.ResRet.f32 %1867, 1
  %1870 = extractvalue %dx.types.ResRet.f32 %1867, 2
  %1871 = fmul fast float %1868, %273
  %1872 = fmul fast float %1869, %276
  %1873 = fmul fast float %1870, %279
  br i1 %1866, label %1880, label %1874

; <label>:1874                                    ; preds = %1857
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 0
  %1877 = fmul fast float %1876, %1871
  %1878 = fmul fast float %1876, %1872
  %1879 = fmul fast float %1876, %1873
  br label %1880

; <label>:1880                                    ; preds = %1874, %1857
  %1881 = phi float [ %1877, %1874 ], [ %1871, %1857 ]
  %1882 = phi float [ %1878, %1874 ], [ %1872, %1857 ]
  %1883 = phi float [ %1879, %1874 ], [ %1873, %1857 ]
  %1884 = fmul fast float %1881, %1852
  %1885 = select i1 %214, float %1884, float %1881
  %1886 = call float @dx.op.dot3.f32(i32 55, float %1885, float %1882, float %1883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1887 = select i1 %214, float 0.000000e+00, float %1881
  %1888 = select i1 %214, float %1886, float %1882
  %1889 = select i1 %214, float 0.000000e+00, float %1883
  br label %1890

; <label>:1890                                    ; preds = %1880, %1842
  %1891 = phi float [ %1887, %1880 ], [ 0.000000e+00, %1842 ]
  %1892 = phi float [ %1888, %1880 ], [ 0.000000e+00, %1842 ]
  %1893 = phi float [ %1889, %1880 ], [ 0.000000e+00, %1842 ]
  %1894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.i32 %1894, 0
  %1896 = and i32 %1895, 1024
  %1897 = icmp eq i32 %1896, 0
  br i1 %1897, label %1928, label %1898

; <label>:1898                                    ; preds = %1890
  %1899 = add i32 %49, 168
  %1900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.i32 %1900, 0
  %1902 = and i32 %1901, 255
  %1903 = uitofp i32 %1902 to float
  %1904 = fmul fast float %1903, 0x3F70101020000000
  %1905 = lshr i32 %1901, 8
  %1906 = and i32 %1905, 255
  %1907 = uitofp i32 %1906 to float
  %1908 = fmul fast float %1907, 0x3F70101020000000
  %1909 = lshr i32 %1901, 16
  %1910 = and i32 %1909, 255
  %1911 = uitofp i32 %1910 to float
  %1912 = fmul fast float %1911, 0x3F70101020000000
  %1913 = fmul fast float %1904, %1904
  %1914 = fmul fast float %1908, %1908
  %1915 = fmul fast float %1912, %1912
  %1916 = add i32 %49, 460
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = add i32 %1918, 0
  %1920 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1919, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1921 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1920, %dx.types.Handle %95, float %1355, float %1356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1922 = extractvalue %dx.types.ResRet.f32 %1921, 0
  %1923 = extractvalue %dx.types.ResRet.f32 %1921, 1
  %1924 = extractvalue %dx.types.ResRet.f32 %1921, 2
  %1925 = fmul fast float %1913, %1922
  %1926 = fmul fast float %1914, %1923
  %1927 = fmul fast float %1915, %1924
  br label %1928

; <label>:1928                                    ; preds = %1898, %1890
  %1929 = phi float [ %1925, %1898 ], [ 0.000000e+00, %1890 ]
  %1930 = phi float [ %1926, %1898 ], [ 0.000000e+00, %1890 ]
  %1931 = phi float [ %1927, %1898 ], [ 0.000000e+00, %1890 ]
  %1932 = fcmp fast ogt float %1929, 0.000000e+00
  %1933 = fcmp fast ogt float %1930, 0.000000e+00
  %1934 = fcmp fast ogt float %1931, 0.000000e+00
  %1935 = call float @dx.op.unary.f32(i32 23, float %1929)  ; Log(value)
  %1936 = call float @dx.op.unary.f32(i32 23, float %1930)  ; Log(value)
  %1937 = call float @dx.op.unary.f32(i32 23, float %1931)  ; Log(value)
  %1938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.i32 %1938, 0
  %1940 = lshr i32 %1939, 7
  %1941 = and i32 %1940, 32752
  %1942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1941)  ; LegacyF16ToF32(value)
  %1943 = fmul fast float %1935, 0xBFE62E4300000000
  %1944 = fmul fast float %1943, %1942
  %1945 = fmul fast float %1936, 0xBFE62E4300000000
  %1946 = fmul fast float %1945, %1942
  %1947 = fmul fast float %1937, 0xBFE62E4300000000
  %1948 = fmul fast float %1947, %1942
  %1949 = select i1 %1932, float %1944, float 1.270000e+02
  %1950 = select i1 %1933, float %1946, float 1.270000e+02
  %1951 = select i1 %1934, float %1948, float 1.270000e+02
  %1952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.i32 %1952, 0
  %1954 = and i32 %1953, 10240
  %1955 = icmp eq i32 %1954, 0
  br i1 %1955, label %2000, label %1956

; <label>:1956                                    ; preds = %1928
  %1957 = add i32 %49, 476
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = add i32 %1959, 0
  %1961 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1960, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1962 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1961, %dx.types.Handle %95, float %1355, float %1356, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1963 = extractvalue %dx.types.ResRet.f32 %1962, 1
  %1964 = extractvalue %dx.types.ResRet.f32 %1962, 3
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = and i32 %1966, 1048576
  %1968 = icmp ne i32 %1967, 0
  %1969 = and i32 %1966, 8192
  %1970 = icmp eq i32 %1969, 0
  br i1 %1970, label %1986, label %1971

; <label>:1971                                    ; preds = %1956
  %1972 = extractvalue %dx.types.ResRet.f32 %1962, 2
  %1973 = select i1 %1968, float %1972, float %1963
  %1974 = extractvalue %dx.types.ResRet.f32 %1962, 0
  %1975 = select i1 %1968, float %1974, float %1963
  %1976 = add i32 %49, 112
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = lshr i32 %1978, 16
  %1980 = and i32 %1979, 255
  %1981 = uitofp i32 %1980 to float
  %1982 = fmul fast float %1981, 0x3F80101020000000
  %1983 = fmul fast float %1982, %1975
  %1984 = fmul fast float %1982, %1963
  %1985 = fmul fast float %1982, %1973
  br label %1986

; <label>:1986                                    ; preds = %1971, %1956
  %1987 = phi float [ %1983, %1971 ], [ 0.000000e+00, %1956 ]
  %1988 = phi float [ %1984, %1971 ], [ 0.000000e+00, %1956 ]
  %1989 = phi float [ %1985, %1971 ], [ 0.000000e+00, %1956 ]
  %1990 = and i32 %1966, 2048
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %2000, label %1992

; <label>:1992                                    ; preds = %1986
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = shl i32 %1994, 4
  %1996 = and i32 %1995, 32752
  %1997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1996)  ; LegacyF16ToF32(value)
  %1998 = fmul fast float %1997, %1964
  %1999 = call float @dx.op.binary.f32(i32 35, float %1998, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2000

; <label>:2000                                    ; preds = %1992, %1986, %1928
  %2001 = phi float [ %1987, %1992 ], [ %1987, %1986 ], [ 0.000000e+00, %1928 ]
  %2002 = phi float [ %1988, %1992 ], [ %1988, %1986 ], [ 0.000000e+00, %1928 ]
  %2003 = phi float [ %1989, %1992 ], [ %1989, %1986 ], [ 0.000000e+00, %1928 ]
  %2004 = phi float [ %1999, %1992 ], [ 0x3F70101020000000, %1986 ], [ 0x3F70101020000000, %1928 ]
  %2005 = add i32 %49, 112
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = and i32 %2007, 255
  %2009 = uitofp i32 %2008 to float
  %2010 = lshr i32 %2007, 8
  %2011 = and i32 %2010, 255
  %2012 = uitofp i32 %2011 to float
  %2013 = call float @dx.op.dot3.f32(i32 55, float %1763, float %1764, float %1765, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2014 = fmul fast float %2012, %2013
  %2015 = fadd fast float %2014, %2009
  %2016 = fmul fast float %2015, 0x3F70101020000000
  %2017 = call float @dx.op.unary.f32(i32 7, float %2016)  ; Saturate(value)
  br i1 %1247, label %2018, label %2053

; <label>:2018                                    ; preds = %2000
  %2019 = fmul fast float %2004, 2.000000e+00
  %2020 = fcmp fast olt float %1949, 1.270000e+02
  %2021 = fcmp fast olt float %1950, 1.270000e+02
  %2022 = fcmp fast olt float %1951, 1.270000e+02
  %2023 = fmul fast float %1949, 0xBFF7154760000000
  %2024 = fmul fast float %2023, %2019
  %2025 = fmul fast float %1950, 0xBFF7154760000000
  %2026 = fmul fast float %2025, %2019
  %2027 = fmul fast float %1951, 0xBFF7154760000000
  %2028 = fmul fast float %2027, %2019
  %2029 = call float @dx.op.unary.f32(i32 21, float %2024)  ; Exp(value)
  %2030 = call float @dx.op.unary.f32(i32 21, float %2026)  ; Exp(value)
  %2031 = call float @dx.op.unary.f32(i32 21, float %2028)  ; Exp(value)
  %2032 = call float @dx.op.unary.f32(i32 7, float %2029)  ; Saturate(value)
  %2033 = call float @dx.op.unary.f32(i32 7, float %2030)  ; Saturate(value)
  %2034 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  %2035 = fadd fast float %2032, -1.000000e+00
  %2036 = select i1 %2020, float %2035, float -1.000000e+00
  %2037 = fadd fast float %2033, -1.000000e+00
  %2038 = select i1 %2021, float %2037, float -1.000000e+00
  %2039 = fadd fast float %2034, -1.000000e+00
  %2040 = select i1 %2022, float %2039, float -1.000000e+00
  %2041 = fmul fast float %2036, %1543
  %2042 = fmul fast float %2038, %1543
  %2043 = fmul fast float %2040, %1543
  %2044 = fadd fast float %2041, 1.000000e+00
  %2045 = fadd fast float %2042, 1.000000e+00
  %2046 = fadd fast float %2043, 1.000000e+00
  %2047 = fmul fast float %2044, %1228
  %2048 = fmul fast float %2045, %1229
  %2049 = fmul fast float %2046, %1230
  %2050 = fmul fast float %2044, %1231
  %2051 = fmul fast float %2045, %1232
  %2052 = fmul fast float %2046, %1233
  br label %2053

; <label>:2053                                    ; preds = %2018, %2000
  %2054 = phi float [ %2047, %2018 ], [ %1228, %2000 ]
  %2055 = phi float [ %2048, %2018 ], [ %1229, %2000 ]
  %2056 = phi float [ %2049, %2018 ], [ %1230, %2000 ]
  %2057 = phi float [ %2050, %2018 ], [ %1231, %2000 ]
  %2058 = phi float [ %2051, %2018 ], [ %1232, %2000 ]
  %2059 = phi float [ %2052, %2018 ], [ %1233, %2000 ]
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = and i32 %2061, 3
  %2063 = icmp eq i32 %2062, 3
  br i1 %2063, label %2142, label %2064

; <label>:2064                                    ; preds = %2053
  %2065 = and i32 %2061, 16
  %2066 = icmp ne i32 %2065, 0
  %2067 = select i1 %2066, float %1543, float 0.000000e+00
  %2068 = icmp eq i32 %2062, 0
  br i1 %2068, label %2069, label %2097

; <label>:2069                                    ; preds = %2064
  %2070 = and i32 %2061, 64
  %2071 = icmp ne i32 %2070, 0
  %2072 = select i1 %2071, float %1543, float 0.000000e+00
  %2073 = fsub fast float %1763, %2054
  %2074 = fsub fast float %1764, %2055
  %2075 = fsub fast float %1765, %2056
  %2076 = fmul fast float %2067, %2073
  %2077 = fmul fast float %2067, %2074
  %2078 = fmul fast float %2067, %2075
  %2079 = fadd fast float %2076, %2054
  %2080 = fadd fast float %2077, %2055
  %2081 = fadd fast float %2078, %2056
  %2082 = fsub fast float %1749, %1240
  %2083 = fmul fast float %2067, %2082
  %2084 = fadd fast float %2083, %1240
  %2085 = fsub fast float %1891, %2057
  %2086 = fsub fast float %1892, %2058
  %2087 = fsub fast float %1893, %2059
  %2088 = fmul fast float %2072, %2085
  %2089 = fmul fast float %2072, %2086
  %2090 = fmul fast float %2072, %2087
  %2091 = fadd fast float %2088, %2057
  %2092 = fadd fast float %2089, %2058
  %2093 = fadd fast float %2090, %2059
  %2094 = fsub fast float %2017, %1245
  %2095 = fmul fast float %2067, %2094
  %2096 = fadd fast float %2095, %1245
  br label %2142

; <label>:2097                                    ; preds = %2064
  %2098 = icmp eq i32 %2062, 1
  br i1 %2098, label %2099, label %2112

; <label>:2099                                    ; preds = %2097
  %2100 = fadd fast float %1763, -1.000000e+00
  %2101 = fadd fast float %1764, -1.000000e+00
  %2102 = fadd fast float %1765, -1.000000e+00
  %2103 = fmul fast float %2067, %2100
  %2104 = fmul fast float %2067, %2101
  %2105 = fmul fast float %2067, %2102
  %2106 = fadd fast float %2103, 1.000000e+00
  %2107 = fadd fast float %2104, 1.000000e+00
  %2108 = fadd fast float %2105, 1.000000e+00
  %2109 = fmul fast float %2106, %2054
  %2110 = fmul fast float %2107, %2055
  %2111 = fmul fast float %2108, %2056
  br label %2142

; <label>:2112                                    ; preds = %2097
  %2113 = icmp eq i32 %2062, 2
  br i1 %2113, label %2114, label %2142

; <label>:2114                                    ; preds = %2112
  %2115 = call float @dx.op.unary.f32(i32 24, float %1763)  ; Sqrt(value)
  %2116 = call float @dx.op.unary.f32(i32 24, float %1764)  ; Sqrt(value)
  %2117 = call float @dx.op.unary.f32(i32 24, float %1765)  ; Sqrt(value)
  %2118 = fadd fast float %2115, -5.000000e-01
  %2119 = fadd fast float %2116, -5.000000e-01
  %2120 = fadd fast float %2117, -5.000000e-01
  %2121 = fmul fast float %2118, %2067
  %2122 = fmul fast float %2119, %2067
  %2123 = fmul fast float %2120, %2067
  %2124 = fadd fast float %2121, 5.000000e-01
  %2125 = fadd fast float %2122, 5.000000e-01
  %2126 = fadd fast float %2123, 5.000000e-01
  %2127 = fmul fast float %2124, 2.000000e+00
  %2128 = fsub fast float 1.000000e+00, %2127
  %2129 = fmul fast float %2128, %2054
  %2130 = fadd fast float %2129, %2127
  %2131 = fmul fast float %2130, %2054
  %2132 = fmul fast float %2125, 2.000000e+00
  %2133 = fsub fast float 1.000000e+00, %2132
  %2134 = fmul fast float %2133, %2055
  %2135 = fadd fast float %2134, %2132
  %2136 = fmul fast float %2135, %2055
  %2137 = fmul fast float %2126, 2.000000e+00
  %2138 = fsub fast float 1.000000e+00, %2137
  %2139 = fmul fast float %2138, %2056
  %2140 = fadd fast float %2139, %2137
  %2141 = fmul fast float %2140, %2056
  br label %2142

; <label>:2142                                    ; preds = %2114, %2112, %2099, %2069, %2053
  %2143 = phi float [ %2054, %2053 ], [ %2131, %2114 ], [ %2054, %2112 ], [ %2109, %2099 ], [ %2079, %2069 ]
  %2144 = phi float [ %2055, %2053 ], [ %2136, %2114 ], [ %2055, %2112 ], [ %2110, %2099 ], [ %2080, %2069 ]
  %2145 = phi float [ %2056, %2053 ], [ %2141, %2114 ], [ %2056, %2112 ], [ %2111, %2099 ], [ %2081, %2069 ]
  %2146 = phi float [ %2057, %2053 ], [ %2057, %2114 ], [ %2057, %2112 ], [ %2057, %2099 ], [ %2091, %2069 ]
  %2147 = phi float [ %2058, %2053 ], [ %2058, %2114 ], [ %2058, %2112 ], [ %2058, %2099 ], [ %2092, %2069 ]
  %2148 = phi float [ %2059, %2053 ], [ %2059, %2114 ], [ %2059, %2112 ], [ %2059, %2099 ], [ %2093, %2069 ]
  %2149 = phi float [ %1240, %2053 ], [ %1240, %2114 ], [ %1240, %2112 ], [ %1240, %2099 ], [ %2084, %2069 ]
  %2150 = phi float [ %1245, %2053 ], [ %1245, %2114 ], [ %1245, %2112 ], [ %1245, %2099 ], [ %2096, %2069 ]
  %2151 = and i32 %2061, 12
  %2152 = icmp eq i32 %2151, 12
  br i1 %2152, label %2283, label %2153

; <label>:2153                                    ; preds = %2142
  %2154 = and i32 %2061, 2097184
  %2155 = icmp eq i32 %2154, 2097184
  %2156 = select i1 %2155, float %1543, float 0.000000e+00
  %2157 = and i32 %2061, 4194336
  %2158 = icmp eq i32 %2157, 4194336
  %2159 = select i1 %2158, float %1543, float 0.000000e+00
  %2160 = and i32 %2061, 8388640
  %2161 = icmp eq i32 %2160, 8388640
  %2162 = select i1 %2161, float %1543, float 0.000000e+00
  %2163 = and i32 %2061, 1024
  %2164 = icmp ne i32 %2163, 0
  %2165 = select i1 %2164, float %1543, float 0.000000e+00
  %2166 = and i32 %2061, 2048
  %2167 = icmp ne i32 %2166, 0
  %2168 = select i1 %2167, float %1543, float 0.000000e+00
  %2169 = and i32 %2061, 8192
  %2170 = icmp ne i32 %2169, 0
  %2171 = select i1 %2170, float %1543, float 0.000000e+00
  %2172 = icmp eq i32 %2151, 0
  br i1 %2172, label %2173, label %2207

; <label>:2173                                    ; preds = %2153
  %2174 = fsub fast float %1844, %1226
  %2175 = fsub fast float %1845, %1227
  %2176 = fmul fast float %2156, %2174
  %2177 = fmul fast float %2156, %2175
  %2178 = fadd fast float %2176, %1226
  %2179 = fadd fast float %2177, %1227
  %2180 = fsub fast float %1846, %1243
  %2181 = fmul fast float %2159, %2180
  %2182 = fadd fast float %2181, %1243
  %2183 = fsub fast float %1843, %1242
  %2184 = fmul fast float %2162, %2183
  %2185 = fadd fast float %2184, %1242
  %2186 = fsub fast float %1949, %1237
  %2187 = fsub fast float %1950, %1238
  %2188 = fsub fast float %1951, %1239
  %2189 = fmul fast float %2165, %2186
  %2190 = fmul fast float %2165, %2187
  %2191 = fmul fast float %2165, %2188
  %2192 = fadd fast float %2189, %1237
  %2193 = fadd fast float %2190, %1238
  %2194 = fadd fast float %2191, %1239
  %2195 = fsub fast float %2004, %1244
  %2196 = fmul fast float %2168, %2195
  %2197 = fadd fast float %2196, %1244
  %2198 = fsub fast float %2001, %1234
  %2199 = fsub fast float %2002, %1235
  %2200 = fsub fast float %2003, %1236
  %2201 = fmul fast float %2171, %2198
  %2202 = fmul fast float %2171, %2199
  %2203 = fmul fast float %2171, %2200
  %2204 = fadd fast float %2201, %1234
  %2205 = fadd fast float %2202, %1235
  %2206 = fadd fast float %2203, %1236
  br label %2283

; <label>:2207                                    ; preds = %2153
  %2208 = icmp eq i32 %2151, 4
  br i1 %2208, label %2209, label %2255

; <label>:2209                                    ; preds = %2207
  %2210 = fmul fast float %2156, %1844
  %2211 = fmul fast float %2156, %1845
  %2212 = fadd fast float %2210, %1226
  %2213 = fadd fast float %2211, %1227
  %2214 = call float @dx.op.binary.f32(i32 36, float %1243, float %1846)  ; FMin(a,b)
  %2215 = fsub fast float %2214, %1243
  %2216 = fmul fast float %2215, %2159
  %2217 = fadd fast float %2216, %1243
  %2218 = fadd fast float %1843, %1242
  %2219 = fmul fast float %2218, 0x3FF337FAE0000000
  %2220 = fmul fast float %1242, %1242
  %2221 = fmul fast float %1843, %1843
  %2222 = fadd fast float %2221, %2220
  %2223 = fmul fast float %2222, 0x3FE5152B00000000
  %2224 = fmul fast float %1242, 0xBFCC1F85E0000000
  %2225 = fmul fast float %2224, %1843
  %2226 = fadd fast float %2225, 0xBFE1363700000000
  %2227 = fadd fast float %2226, %2219
  %2228 = fsub fast float %2227, %2223
  %2229 = fmul fast float %2218, 0x3FBA6F0D00000000
  %2230 = fmul fast float %2222, 0x3FD0432880000000
  %2231 = fmul fast float %1242, 0xBFEF110800000000
  %2232 = fmul fast float %2231, %1843
  %2233 = fadd fast float %2232, 1.000000e+00
  %2234 = fsub fast float %2233, %2229
  %2235 = fadd fast float %2234, %2230
  %2236 = fdiv fast float %2228, %2235
  %2237 = call float @dx.op.unary.f32(i32 7, float %2236)  ; Saturate(value)
  %2238 = fsub fast float %2237, %1242
  %2239 = fmul fast float %2238, %2162
  %2240 = fadd fast float %2239, %1242
  %2241 = fmul fast float %2165, %1949
  %2242 = fmul fast float %2165, %1950
  %2243 = fmul fast float %2165, %1951
  %2244 = fadd fast float %2241, %1237
  %2245 = fadd fast float %2242, %1238
  %2246 = fadd fast float %2243, %1239
  %2247 = fmul fast float %2168, %2004
  %2248 = fadd fast float %2247, %1244
  %2249 = fmul fast float %2171, %2001
  %2250 = fmul fast float %2171, %2002
  %2251 = fmul fast float %2171, %2003
  %2252 = fadd fast float %2249, %1234
  %2253 = fadd fast float %2250, %1235
  %2254 = fadd fast float %2251, %1236
  br label %2283

; <label>:2255                                    ; preds = %2207
  %2256 = icmp eq i32 %2151, 8
  br i1 %2256, label %2257, label %2283

; <label>:2257                                    ; preds = %2255
  %2258 = fmul fast float %2156, %1844
  %2259 = fmul fast float %2156, %1845
  %2260 = fadd fast float %2258, %1226
  %2261 = fadd fast float %2259, %1227
  %2262 = call float @dx.op.binary.f32(i32 36, float %1243, float %1846)  ; FMin(a,b)
  %2263 = fsub fast float %2262, %1243
  %2264 = fmul fast float %2263, %2159
  %2265 = fadd fast float %2264, %1243
  %2266 = fsub fast float %1843, %1242
  %2267 = fmul fast float %2162, %2266
  %2268 = fadd fast float %2267, %1242
  %2269 = fmul fast float %2165, %1949
  %2270 = fmul fast float %2165, %1950
  %2271 = fmul fast float %2165, %1951
  %2272 = fadd fast float %2269, %1237
  %2273 = fadd fast float %2270, %1238
  %2274 = fadd fast float %2271, %1239
  %2275 = fmul fast float %2168, %2004
  %2276 = fadd fast float %2275, %1244
  %2277 = fmul fast float %2171, %2001
  %2278 = fmul fast float %2171, %2002
  %2279 = fmul fast float %2171, %2003
  %2280 = fadd fast float %2277, %1234
  %2281 = fadd fast float %2278, %1235
  %2282 = fadd fast float %2279, %1236
  br label %2283

; <label>:2283                                    ; preds = %2257, %2255, %2209, %2173, %2142, %1542, %1246, %1225
  %2284 = phi float [ %1226, %2142 ], [ %1226, %1542 ], [ %1226, %1225 ], [ %2260, %2257 ], [ %1226, %2255 ], [ %2212, %2209 ], [ %2178, %2173 ], [ %1226, %1246 ]
  %2285 = phi float [ %1227, %2142 ], [ %1227, %1542 ], [ %1227, %1225 ], [ %2261, %2257 ], [ %1227, %2255 ], [ %2213, %2209 ], [ %2179, %2173 ], [ %1227, %1246 ]
  %2286 = phi float [ %2143, %2142 ], [ %1228, %1542 ], [ %1228, %1225 ], [ %2143, %2257 ], [ %2143, %2255 ], [ %2143, %2209 ], [ %2143, %2173 ], [ %1228, %1246 ]
  %2287 = phi float [ %2144, %2142 ], [ %1229, %1542 ], [ %1229, %1225 ], [ %2144, %2257 ], [ %2144, %2255 ], [ %2144, %2209 ], [ %2144, %2173 ], [ %1229, %1246 ]
  %2288 = phi float [ %2145, %2142 ], [ %1230, %1542 ], [ %1230, %1225 ], [ %2145, %2257 ], [ %2145, %2255 ], [ %2145, %2209 ], [ %2145, %2173 ], [ %1230, %1246 ]
  %2289 = phi float [ %2146, %2142 ], [ %1231, %1542 ], [ %1231, %1225 ], [ %2146, %2257 ], [ %2146, %2255 ], [ %2146, %2209 ], [ %2146, %2173 ], [ %1231, %1246 ]
  %2290 = phi float [ %2147, %2142 ], [ %1232, %1542 ], [ %1232, %1225 ], [ %2147, %2257 ], [ %2147, %2255 ], [ %2147, %2209 ], [ %2147, %2173 ], [ %1232, %1246 ]
  %2291 = phi float [ %2148, %2142 ], [ %1233, %1542 ], [ %1233, %1225 ], [ %2148, %2257 ], [ %2148, %2255 ], [ %2148, %2209 ], [ %2148, %2173 ], [ %1233, %1246 ]
  %2292 = phi float [ %1234, %2142 ], [ %1234, %1542 ], [ %1234, %1225 ], [ %2280, %2257 ], [ %1234, %2255 ], [ %2252, %2209 ], [ %2204, %2173 ], [ %1234, %1246 ]
  %2293 = phi float [ %1235, %2142 ], [ %1235, %1542 ], [ %1235, %1225 ], [ %2281, %2257 ], [ %1235, %2255 ], [ %2253, %2209 ], [ %2205, %2173 ], [ %1235, %1246 ]
  %2294 = phi float [ %1236, %2142 ], [ %1236, %1542 ], [ %1236, %1225 ], [ %2282, %2257 ], [ %1236, %2255 ], [ %2254, %2209 ], [ %2206, %2173 ], [ %1236, %1246 ]
  %2295 = phi float [ %1237, %2142 ], [ %1237, %1542 ], [ %1237, %1225 ], [ %2272, %2257 ], [ %1237, %2255 ], [ %2244, %2209 ], [ %2192, %2173 ], [ %1237, %1246 ]
  %2296 = phi float [ %1238, %2142 ], [ %1238, %1542 ], [ %1238, %1225 ], [ %2273, %2257 ], [ %1238, %2255 ], [ %2245, %2209 ], [ %2193, %2173 ], [ %1238, %1246 ]
  %2297 = phi float [ %1239, %2142 ], [ %1239, %1542 ], [ %1239, %1225 ], [ %2274, %2257 ], [ %1239, %2255 ], [ %2246, %2209 ], [ %2194, %2173 ], [ %1239, %1246 ]
  %2298 = phi float [ %2149, %2142 ], [ %1240, %1542 ], [ %1240, %1225 ], [ %2149, %2257 ], [ %2149, %2255 ], [ %2149, %2209 ], [ %2149, %2173 ], [ %1240, %1246 ]
  %2299 = phi float [ %1242, %2142 ], [ %1242, %1542 ], [ %1242, %1225 ], [ %2268, %2257 ], [ %1242, %2255 ], [ %2240, %2209 ], [ %2185, %2173 ], [ %1242, %1246 ]
  %2300 = phi float [ %1243, %2142 ], [ %1243, %1542 ], [ %1243, %1225 ], [ %2265, %2257 ], [ %1243, %2255 ], [ %2217, %2209 ], [ %2182, %2173 ], [ %1243, %1246 ]
  %2301 = phi float [ %1244, %2142 ], [ %1244, %1542 ], [ %1244, %1225 ], [ %2276, %2257 ], [ %1244, %2255 ], [ %2248, %2209 ], [ %2197, %2173 ], [ %1244, %1246 ]
  %2302 = phi float [ %2150, %2142 ], [ %1245, %1542 ], [ %1245, %1225 ], [ %2150, %2257 ], [ %2150, %2255 ], [ %2150, %2209 ], [ %2150, %2173 ], [ %1245, %1246 ]
  br i1 %400, label %3340, label %2303

; <label>:2303                                    ; preds = %2283
  %2304 = icmp ult i32 %456, 3
  %2305 = add i32 %49, 56
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = add i32 %49, 60
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2308, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = or i32 %2310, %2307
  %2312 = icmp eq i32 %2311, 0
  br i1 %2312, label %3340, label %2313

; <label>:2313                                    ; preds = %2303
  %2314 = and i32 %2307, 262144
  %2315 = icmp ne i32 %2314, 0
  %2316 = select i1 %2315, float %52, float 1.000000e+00
  %2317 = select i1 %2315, float %53, float 0.000000e+00
  %2318 = select i1 %2315, float %54, float 0.000000e+00
  %2319 = select i1 %2315, float %55, float 1.000000e+00
  %2320 = select i1 %2315, float %56, float %77
  %2321 = select i1 %2315, float %57, float %78
  %2322 = add i32 %49, 316
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = lshr i32 %2324, 16
  %2326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2325)  ; LegacyF16ToF32(value)
  %2327 = fmul fast float %2326, 0x3F50624DE0000000
  %2328 = add i32 %49, 120
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = lshr i32 %2330, 16
  %2332 = and i32 %2331, 255
  %2333 = lshr i32 %2330, 24
  %2334 = add i32 %49, 324
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = and i32 %2336, 65535
  %2338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2337)  ; LegacyF16ToF32(value)
  %2339 = lshr i32 %2336, 16
  %2340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2339)  ; LegacyF16ToF32(value)
  %2341 = add i32 %49, 64
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = lshr i32 %2343, 22
  %2345 = shl nuw nsw i32 %2344, 5
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = shl i32 %2343, 4
  %2348 = and i32 %2347, 32752
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = lshr i32 %2343, 7
  %2351 = and i32 %2350, 32752
  %2352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2351)  ; LegacyF16ToF32(value)
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 3
  %2355 = fmul fast float %2354, 1.000000e+03
  %2356 = fmul fast float %350, %2355
  %2357 = call float @dx.op.unary.f32(i32 22, float %2356)  ; Frc(value)
  %2358 = fadd fast float %2357, %340
  %2359 = fmul fast float %351, %2355
  %2360 = call float @dx.op.unary.f32(i32 22, float %2359)  ; Frc(value)
  %2361 = fadd fast float %2360, %342
  %2362 = fmul fast float %2327, %2355
  %2363 = call float @dx.op.unary.f32(i32 22, float %2362)  ; Frc(value)
  %2364 = fmul fast float %2363, 0x401921FB60000000
  %2365 = fadd fast float %2364, %2346
  %2366 = call float @dx.op.unary.f32(i32 13, float %2365)  ; Sin(value)
  %2367 = call float @dx.op.unary.f32(i32 12, float %2365)  ; Cos(value)
  %2368 = fsub fast float -0.000000e+00, %2366
  %2369 = fadd fast float %2320, -5.000000e-01
  %2370 = fadd fast float %2321, -5.000000e-01
  %2371 = fmul fast float %2338, %2369
  %2372 = fmul fast float %2340, %2370
  %2373 = fadd fast float %2371, 5.000000e-01
  %2374 = fadd fast float %2372, 5.000000e-01
  %2375 = fmul fast float %2349, %2373
  %2376 = fmul fast float %2352, %2374
  %2377 = fmul fast float %2367, %2375
  %2378 = call float @dx.op.tertiary.f32(i32 46, float %2368, float %2376, float %2377)  ; FMad(a,b,c)
  %2379 = fmul fast float %2366, %2375
  %2380 = call float @dx.op.tertiary.f32(i32 46, float %2367, float %2376, float %2379)  ; FMad(a,b,c)
  %2381 = fadd fast float %2358, %2378
  %2382 = fadd fast float %2361, %2380
  %2383 = icmp ugt i32 %2332, 1
  %2384 = icmp ugt i32 %2330, 33554431
  %2385 = or i1 %2384, %2383
  br i1 %2385, label %2386, label %2411

; <label>:2386                                    ; preds = %2313
  %2387 = add i32 %49, 260
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = lshr i32 %2389, 16
  %2391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2390)  ; LegacyF16ToF32(value)
  %2392 = fmul fast float %2354, %2391
  %2393 = call float @dx.op.unary.f32(i32 22, float %2392)  ; Frc(value)
  %2394 = mul nuw nsw i32 %2332, %2333
  %2395 = uitofp i32 %2394 to float
  %2396 = fmul fast float %2393, %2395
  %2397 = call float @dx.op.unary.f32(i32 27, float %2396)  ; Round_ni(value)
  %2398 = fptoui float %2397 to i32
  %2399 = urem i32 %2398, %2332
  %2400 = udiv i32 %2398, %2333
  %2401 = call float @dx.op.unary.f32(i32 22, float %2381)  ; Frc(value)
  %2402 = call float @dx.op.unary.f32(i32 22, float %2382)  ; Frc(value)
  %2403 = uitofp i32 %2399 to float
  %2404 = uitofp i32 %2400 to float
  %2405 = fadd fast float %2401, %2403
  %2406 = fadd fast float %2402, %2404
  %2407 = uitofp i32 %2332 to float
  %2408 = uitofp i32 %2333 to float
  %2409 = fdiv fast float %2405, %2407
  %2410 = fdiv fast float %2406, %2408
  br label %2411

; <label>:2411                                    ; preds = %2386, %2313
  %2412 = phi float [ %2409, %2386 ], [ %2381, %2313 ]
  %2413 = phi float [ %2410, %2386 ], [ %2382, %2313 ]
  %2414 = and i32 %2307, 16777216
  %2415 = icmp eq i32 %2414, 0
  br i1 %2415, label %2525, label %2416

; <label>:2416                                    ; preds = %2411
  %2417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.f32 %2417, 0
  %2419 = extractvalue %dx.types.CBufRet.f32 %2417, 1
  %2420 = extractvalue %dx.types.CBufRet.f32 %2417, 2
  %2421 = fadd fast float %2418, %153
  %2422 = fadd fast float %2419, %154
  %2423 = fadd fast float %2420, %155
  %2424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2425 = extractvalue %dx.types.CBufRet.f32 %2424, 0
  %2426 = call float @dx.op.unary.f32(i32 7, float %2425)  ; Saturate(value)
  %2427 = icmp eq i32 %50, 65535
  br i1 %2427, label %2522, label %2428

; <label>:2428                                    ; preds = %2416
  %2429 = lshr i32 %50, 1
  %2430 = shl i32 %2429, 2
  %2431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.i32 %2431, 0
  %2433 = and i32 %50, 1
  %2434 = icmp ne i32 %2433, 0
  %2435 = lshr i32 %2432, 16
  %2436 = and i32 %2432, 65535
  %2437 = select i1 %2434, i32 %2435, i32 %2436
  %2438 = icmp eq i32 %2437, 65535
  br i1 %2438, label %2518, label %2439

; <label>:2439                                    ; preds = %2428
  %2440 = mul nuw nsw i32 %2437, 40
  %2441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.f32 %2441, 0
  %2443 = extractvalue %dx.types.ResRet.f32 %2441, 1
  %2444 = extractvalue %dx.types.ResRet.f32 %2441, 2
  %2445 = add nuw nsw i32 %2440, 12
  %2446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.f32 %2446, 0
  %2448 = extractvalue %dx.types.ResRet.f32 %2446, 1
  %2449 = extractvalue %dx.types.ResRet.f32 %2446, 2
  %2450 = add nuw nsw i32 %2440, 24
  %2451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2450, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.f32 %2451, 0
  %2453 = extractvalue %dx.types.ResRet.f32 %2451, 1
  %2454 = extractvalue %dx.types.ResRet.f32 %2451, 2
  %2455 = add nuw nsw i32 %2440, 36
  %2456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.f32 %2456, 0
  %2458 = fsub fast float %2421, %2442
  %2459 = fsub fast float %2422, %2443
  %2460 = fsub fast float %2423, %2444
  %2461 = fmul fast float %2457, %2458
  %2462 = fmul fast float %2457, %2459
  %2463 = fmul fast float %2457, %2460
  %2464 = call float @dx.op.unary.f32(i32 27, float %2461)  ; Round_ni(value)
  %2465 = call float @dx.op.unary.f32(i32 27, float %2462)  ; Round_ni(value)
  %2466 = call float @dx.op.unary.f32(i32 27, float %2463)  ; Round_ni(value)
  %2467 = fadd fast float %2464, 5.000000e-01
  %2468 = fadd fast float %2465, 5.000000e-01
  %2469 = fadd fast float %2466, 5.000000e-01
  %2470 = fmul fast float %2467, %2447
  %2471 = fmul fast float %2468, %2448
  %2472 = fmul fast float %2469, %2449
  %2473 = shl i32 %50, 2
  %2474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2473, i32 undef)  ; BufferLoad(srv,index,wot)
  %2475 = extractvalue %dx.types.ResRet.i32 %2474, 0
  %2476 = add i32 %2475, 0
  %2477 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2476, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2478 = call float @dx.op.unary.f32(i32 22, float %2470)  ; Frc(value)
  %2479 = call float @dx.op.unary.f32(i32 22, float %2471)  ; Frc(value)
  %2480 = call float @dx.op.unary.f32(i32 22, float %2472)  ; Frc(value)
  %2481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2477, %dx.types.Handle %44, float %2478, float %2479, float %2480, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2482 = extractvalue %dx.types.ResRet.f32 %2481, 0
  %2483 = extractvalue %dx.types.ResRet.f32 %2481, 1
  %2484 = extractvalue %dx.types.ResRet.f32 %2481, 2
  %2485 = fmul fast float %2482, 1.023000e+03
  %2486 = fmul fast float %2483, 1.023000e+03
  %2487 = fmul fast float %2484, 1.023000e+03
  %2488 = fadd fast float %2485, 5.000000e-01
  %2489 = fadd fast float %2486, 5.000000e-01
  %2490 = fadd fast float %2487, 5.000000e-01
  %2491 = call float @dx.op.unary.f32(i32 27, float %2488)  ; Round_ni(value)
  %2492 = call float @dx.op.unary.f32(i32 27, float %2489)  ; Round_ni(value)
  %2493 = call float @dx.op.unary.f32(i32 27, float %2490)  ; Round_ni(value)
  %2494 = fsub fast float %2461, %2464
  %2495 = fsub fast float %2462, %2465
  %2496 = fsub fast float %2463, %2466
  %2497 = fmul fast float %2494, 7.500000e-01
  %2498 = fmul fast float %2495, 7.500000e-01
  %2499 = fmul fast float %2496, 7.500000e-01
  %2500 = fadd fast float %2464, 1.250000e-01
  %2501 = fadd fast float %2500, %2497
  %2502 = fadd fast float %2501, %2491
  %2503 = fadd fast float %2465, 1.250000e-01
  %2504 = fadd fast float %2503, %2498
  %2505 = fadd fast float %2504, %2492
  %2506 = fadd fast float %2466, 1.250000e-01
  %2507 = fadd fast float %2506, %2499
  %2508 = fadd fast float %2507, %2493
  %2509 = fmul fast float %2502, %2452
  %2510 = fmul fast float %2505, %2453
  %2511 = fmul fast float %2508, %2454
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2473, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = add i32 %2513, 0
  %2515 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2514, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2515, %dx.types.Handle %42, float %2509, float %2510, float %2511, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2517 = extractvalue %dx.types.ResRet.f32 %2516, 0
  br label %2518

; <label>:2518                                    ; preds = %2439, %2428
  %2519 = phi float [ %2517, %2439 ], [ -1.000000e+00, %2428 ]
  %2520 = fadd fast float %2519, %2426
  %2521 = call float @dx.op.unary.f32(i32 7, float %2520)  ; Saturate(value)
  br label %2522

; <label>:2522                                    ; preds = %2518, %2416
  %2523 = phi float [ %2521, %2518 ], [ %2426, %2416 ]
  %2524 = fmul fast float %2523, %452
  br label %2525

; <label>:2525                                    ; preds = %2522, %2411
  %2526 = phi float [ %2524, %2522 ], [ %452, %2411 ]
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = and i32 %2528, 256
  %2530 = icmp eq i32 %2529, 0
  br i1 %2530, label %2577, label %2531

; <label>:2531                                    ; preds = %2525
  %2532 = add i32 %49, 432
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = add i32 %2534, 0
  %2536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2537 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2536, %dx.types.Handle %95, float %2412, float %2413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2538 = extractvalue %dx.types.ResRet.f32 %2537, 0
  %2539 = add i32 %49, 132
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = shl i32 %2541, 4
  %2543 = and i32 %2542, 32752
  %2544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2543)  ; LegacyF16ToF32(value)
  %2545 = lshr i32 %2541, 7
  %2546 = and i32 %2545, 32752
  %2547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2546)  ; LegacyF16ToF32(value)
  %2548 = fsub fast float 1.000000e+00, %2526
  %2549 = call float @dx.op.binary.f32(i32 35, float %2548, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2550 = bitcast float %2526 to i32
  %2551 = sitofp i32 %2550 to float
  %2552 = fadd fast float %2551, 0xC1CFBF8940000000
  %2553 = fmul fast float %2547, %2552
  %2554 = fadd fast float %2553, 0x41CFBF8940000000
  %2555 = fptosi float %2554 to i32
  %2556 = bitcast i32 %2555 to float
  %2557 = bitcast float %2549 to i32
  %2558 = sitofp i32 %2557 to float
  %2559 = fadd fast float %2558, 0xC1CFBF8940000000
  %2560 = fmul fast float %2559, %2547
  %2561 = fadd fast float %2560, 0x41CFBF8940000000
  %2562 = fptosi float %2561 to i32
  %2563 = bitcast i32 %2562 to float
  %2564 = fmul fast float %2556, %2544
  %2565 = fmul fast float %2563, %2544
  %2566 = fsub fast float %2549, %2564
  %2567 = fadd fast float %2565, %2549
  %2568 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  %2569 = call float @dx.op.unary.f32(i32 7, float %2567)  ; Saturate(value)
  %2570 = fsub fast float %2538, %2568
  %2571 = fsub fast float %2569, %2568
  %2572 = bitcast float %2571 to i32
  %2573 = sub nsw i32 2129859010, %2572
  %2574 = bitcast i32 %2573 to float
  %2575 = fmul fast float %2574, %2570
  %2576 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  br label %2577

; <label>:2577                                    ; preds = %2531, %2525
  %2578 = phi float [ %2576, %2531 ], [ %2526, %2525 ]
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 128
  %2582 = icmp eq i32 %2581, 0
  br i1 %2582, label %2599, label %2583

; <label>:2583                                    ; preds = %2577
  %2584 = add i32 %49, 416
  %2585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2584, i32 undef)  ; BufferLoad(srv,index,wot)
  %2586 = extractvalue %dx.types.ResRet.i32 %2585, 0
  %2587 = add i32 %2586, 0
  %2588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2587, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2589 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2588, %dx.types.Handle %95, float %2412, float %2413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2590 = extractvalue %dx.types.ResRet.f32 %2589, 0
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = and i32 %2592, 524288
  %2594 = icmp ne i32 %2593, 0
  %2595 = fcmp fast ogt float %2590, 0x3FE0101020000000
  %2596 = select i1 %2595, float 1.000000e+00, float 0.000000e+00
  %2597 = select i1 %2594, float %2596, float %2590
  %2598 = fmul fast float %2597, %2578
  br label %2599

; <label>:2599                                    ; preds = %2583, %2577
  %2600 = phi float [ %2598, %2583 ], [ %2578, %2577 ]
  %2601 = fcmp fast ult float %2600, 0x3F70101020000000
  br i1 %2601, label %3340, label %2602

; <label>:2602                                    ; preds = %2599
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = and i32 %2604, 16
  %2606 = icmp eq i32 %2605, 0
  br i1 %2606, label %2805, label %2607

; <label>:2607                                    ; preds = %2602
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = add i32 %49, 368
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = add i32 %2612, 0
  %2614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2613, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2615 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2614, %dx.types.Handle %94, float %2412, float %2413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2616 = extractvalue %dx.types.ResRet.f32 %2615, 0
  %2617 = extractvalue %dx.types.ResRet.f32 %2615, 1
  %2618 = extractvalue %dx.types.ResRet.f32 %2615, 2
  %2619 = extractvalue %dx.types.ResRet.f32 %2615, 3
  %2620 = and i32 %2609, 255
  %2621 = uitofp i32 %2620 to float
  %2622 = lshr i32 %2609, 8
  %2623 = and i32 %2622, 255
  %2624 = uitofp i32 %2623 to float
  %2625 = fmul fast float %2619, %2621
  %2626 = fadd fast float %2625, %2624
  %2627 = fmul fast float %2626, 0x3F70101000000000
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = and i32 %2629, 512
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %2640, label %2632

; <label>:2632                                    ; preds = %2607
  %2633 = add i32 %49, 448
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = add i32 %2635, 0
  %2637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2636, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2638 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2637, %dx.types.Handle %95, float %2412, float %2413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2639 = extractvalue %dx.types.ResRet.f32 %2638, 0
  br label %2640

; <label>:2640                                    ; preds = %2632, %2607
  %2641 = phi float [ %2639, %2632 ], [ 1.000000e+00, %2607 ]
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = and i32 %2643, 33554432
  %2645 = icmp eq i32 %2644, 0
  br i1 %2645, label %2752, label %2646

; <label>:2646                                    ; preds = %2640
  %2647 = add i32 %49, 256
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = and i32 %2649, 65535
  %2651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2650)  ; LegacyF16ToF32(value)
  %2652 = lshr i32 %2649, 16
  %2653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2652)  ; LegacyF16ToF32(value)
  %2654 = add i32 %49, 260
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = and i32 %2656, 65535
  %2658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2657)  ; LegacyF16ToF32(value)
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = lshr i32 %2660, 24
  %2662 = uitofp i32 %2661 to float
  %2663 = fmul fast float %2662, 0x3F70101020000000
  %2664 = and i32 %2660, 255
  %2665 = uitofp i32 %2664 to float
  %2666 = fmul fast float %2665, 0x3F70101020000000
  %2667 = lshr i32 %2660, 8
  %2668 = and i32 %2667, 255
  %2669 = uitofp i32 %2668 to float
  %2670 = fmul fast float %2669, 0x3F70101020000000
  %2671 = lshr i32 %2660, 16
  %2672 = and i32 %2671, 255
  %2673 = uitofp i32 %2672 to float
  %2674 = fmul fast float %2673, 0x3F70101020000000
  %2675 = add i32 %49, 252
  %2676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2675, i32 undef)  ; BufferLoad(srv,index,wot)
  %2677 = extractvalue %dx.types.ResRet.i32 %2676, 0
  %2678 = lshr i32 %2677, 24
  %2679 = uitofp i32 %2678 to float
  %2680 = fmul fast float %2679, 0x3F70101020000000
  %2681 = and i32 %2677, 255
  %2682 = uitofp i32 %2681 to float
  %2683 = fmul fast float %2682, 0x3F70101020000000
  %2684 = lshr i32 %2677, 8
  %2685 = and i32 %2684, 255
  %2686 = uitofp i32 %2685 to float
  %2687 = fmul fast float %2686, 0x3F70101020000000
  %2688 = lshr i32 %2677, 16
  %2689 = and i32 %2688, 255
  %2690 = uitofp i32 %2689 to float
  %2691 = fmul fast float %2690, 0x3F70101020000000
  %2692 = bitcast float %2616 to i32
  %2693 = ashr i32 %2692, 1
  %2694 = sub nsw i32 1597463174, %2693
  %2695 = bitcast i32 %2694 to float
  %2696 = fmul fast float %2616, 5.000000e-01
  %2697 = fmul fast float %2695, %2695
  %2698 = fmul fast float %2697, %2696
  %2699 = fsub fast float 1.500000e+00, %2698
  %2700 = fmul fast float %2695, %2616
  %2701 = fmul fast float %2700, %2699
  %2702 = bitcast float %2617 to i32
  %2703 = ashr i32 %2702, 1
  %2704 = sub nsw i32 1597463174, %2703
  %2705 = bitcast i32 %2704 to float
  %2706 = fmul fast float %2617, 5.000000e-01
  %2707 = fmul fast float %2705, %2705
  %2708 = fmul fast float %2707, %2706
  %2709 = fsub fast float 1.500000e+00, %2708
  %2710 = fmul fast float %2705, %2617
  %2711 = fmul fast float %2710, %2709
  %2712 = bitcast float %2618 to i32
  %2713 = ashr i32 %2712, 1
  %2714 = sub nsw i32 1597463174, %2713
  %2715 = bitcast i32 %2714 to float
  %2716 = fmul fast float %2618, 5.000000e-01
  %2717 = fmul fast float %2715, %2715
  %2718 = fmul fast float %2717, %2716
  %2719 = fsub fast float 1.500000e+00, %2718
  %2720 = fmul fast float %2715, %2618
  %2721 = fmul fast float %2720, %2719
  %2722 = fsub fast float %2701, %2683
  %2723 = fsub fast float %2711, %2687
  %2724 = fsub fast float %2721, %2691
  %2725 = fmul fast float %2722, %2651
  %2726 = fmul fast float %2723, %2653
  %2727 = fmul fast float %2724, %2658
  %2728 = fadd fast float %2725, %2666
  %2729 = fadd fast float %2726, %2670
  %2730 = fadd fast float %2727, %2674
  %2731 = call float @dx.op.unary.f32(i32 7, float %2728)  ; Saturate(value)
  %2732 = call float @dx.op.unary.f32(i32 7, float %2729)  ; Saturate(value)
  %2733 = call float @dx.op.unary.f32(i32 7, float %2730)  ; Saturate(value)
  %2734 = fmul fast float %2731, %2731
  %2735 = fmul fast float %2732, %2732
  %2736 = fmul fast float %2733, %2733
  %2737 = fsub fast float %2734, %2616
  %2738 = fsub fast float %2735, %2617
  %2739 = fsub fast float %2736, %2618
  %2740 = fmul fast float %2737, %2641
  %2741 = fmul fast float %2738, %2641
  %2742 = fmul fast float %2739, %2641
  %2743 = fadd fast float %2740, %2616
  %2744 = fadd fast float %2741, %2617
  %2745 = fadd fast float %2742, %2618
  %2746 = fadd fast float %2663, %2627
  %2747 = fsub fast float %2746, %2680
  %2748 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2749 = fsub fast float %2748, %2627
  %2750 = fmul fast float %2749, %2641
  %2751 = fadd fast float %2750, %2627
  br label %2805

; <label>:2752                                    ; preds = %2640
  %2753 = and i32 %2643, 134217728
  %2754 = icmp eq i32 %2753, 0
  br i1 %2754, label %2789, label %2755

; <label>:2755                                    ; preds = %2752
  %2756 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %2757 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %2758 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %2759 = fadd fast float %2756, -5.000000e-01
  %2760 = fadd fast float %2757, -5.000000e-01
  %2761 = fadd fast float %2758, -5.000000e-01
  %2762 = fmul fast float %2759, %2641
  %2763 = fmul fast float %2760, %2641
  %2764 = fmul fast float %2761, %2641
  %2765 = fadd fast float %2762, 5.000000e-01
  %2766 = fadd fast float %2763, 5.000000e-01
  %2767 = fadd fast float %2764, 5.000000e-01
  %2768 = call float @dx.op.unary.f32(i32 24, float %2616)  ; Sqrt(value)
  %2769 = call float @dx.op.unary.f32(i32 24, float %2617)  ; Sqrt(value)
  %2770 = call float @dx.op.unary.f32(i32 24, float %2618)  ; Sqrt(value)
  %2771 = fmul fast float %2765, 2.000000e+00
  %2772 = fsub fast float 1.000000e+00, %2771
  %2773 = fmul fast float %2772, %2768
  %2774 = fadd fast float %2773, %2771
  %2775 = fmul fast float %2774, %2768
  %2776 = fmul fast float %2766, 2.000000e+00
  %2777 = fsub fast float 1.000000e+00, %2776
  %2778 = fmul fast float %2777, %2769
  %2779 = fadd fast float %2778, %2776
  %2780 = fmul fast float %2779, %2769
  %2781 = fmul fast float %2767, 2.000000e+00
  %2782 = fsub fast float 1.000000e+00, %2781
  %2783 = fmul fast float %2782, %2770
  %2784 = fadd fast float %2783, %2781
  %2785 = fmul fast float %2784, %2770
  %2786 = fmul fast float %2775, %2775
  %2787 = fmul fast float %2780, %2780
  %2788 = fmul fast float %2785, %2785
  br label %2805

; <label>:2789                                    ; preds = %2752
  %2790 = fmul fast float %327, %327
  %2791 = fmul fast float %331, %331
  %2792 = fmul fast float %335, %335
  %2793 = fadd fast float %2790, -1.000000e+00
  %2794 = fadd fast float %2791, -1.000000e+00
  %2795 = fadd fast float %2792, -1.000000e+00
  %2796 = fmul fast float %2641, %2793
  %2797 = fmul fast float %2641, %2794
  %2798 = fmul fast float %2641, %2795
  %2799 = fadd fast float %2796, 1.000000e+00
  %2800 = fadd fast float %2797, 1.000000e+00
  %2801 = fadd fast float %2798, 1.000000e+00
  %2802 = fmul fast float %2799, %2616
  %2803 = fmul fast float %2800, %2617
  %2804 = fmul fast float %2801, %2618
  br label %2805

; <label>:2805                                    ; preds = %2789, %2755, %2646, %2602
  %2806 = phi float [ %2751, %2646 ], [ %2627, %2755 ], [ %2627, %2789 ], [ 0x3FA23C0BE0000000, %2602 ]
  %2807 = phi float [ %2743, %2646 ], [ %2786, %2755 ], [ %2802, %2789 ], [ 1.000000e+00, %2602 ]
  %2808 = phi float [ %2744, %2646 ], [ %2787, %2755 ], [ %2803, %2789 ], [ 1.000000e+00, %2602 ]
  %2809 = phi float [ %2745, %2646 ], [ %2788, %2755 ], [ %2804, %2789 ], [ 1.000000e+00, %2602 ]
  %2810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2811 = extractvalue %dx.types.CBufRet.i32 %2810, 1
  %2812 = and i32 %2811, 1
  %2813 = icmp ne i32 %2812, 0
  %2814 = add i32 %49, 356
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = and i32 %2816, 32
  %2818 = icmp ne i32 %2817, 0
  %2819 = and i1 %2813, %2818
  %2820 = select i1 %2819, float 1.000000e+00, float %2807
  %2821 = select i1 %2819, float 0x3FD3333340000000, float %2808
  %2822 = select i1 %2819, float 0x3FD3333340000000, float %2809
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = and i32 %2824, 32
  %2826 = icmp eq i32 %2825, 0
  br i1 %2826, label %2899, label %2827

; <label>:2827                                    ; preds = %2805
  %2828 = add i32 %49, 124
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = add i32 %49, 384
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = add i32 %2833, 0
  %2835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2834, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2836 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2835, %dx.types.Handle %94, float %2412, float %2413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.ResRet.f32 %2836, 1
  %2839 = extractvalue %dx.types.ResRet.f32 %2836, 2
  %2840 = extractvalue %dx.types.ResRet.f32 %2836, 3
  %2841 = and i32 %2830, 255
  %2842 = uitofp i32 %2841 to float
  %2843 = lshr i32 %2830, 8
  %2844 = and i32 %2843, 255
  %2845 = uitofp i32 %2844 to float
  %2846 = lshr i32 %2830, 16
  %2847 = and i32 %2846, 255
  %2848 = uitofp i32 %2847 to float
  %2849 = fmul fast float %2848, 0x3F70101000000000
  %2850 = fmul fast float %2837, %2842
  %2851 = fadd fast float %2850, %2845
  %2852 = fmul fast float %2851, 0x3F70101000000000
  %2853 = fadd fast float %2838, -5.000000e-01
  %2854 = fadd fast float %2840, -5.000000e-01
  %2855 = fmul fast float %2853, %2849
  %2856 = fmul fast float %2854, %2849
  %2857 = fadd fast float %2855, 5.000000e-01
  %2858 = fadd fast float %2856, 5.000000e-01
  %2859 = fmul fast float %2857, 2.000000e+00
  %2860 = fadd fast float %2859, -1.000000e+00
  %2861 = fmul fast float %2858, 2.000000e+00
  %2862 = fadd fast float %2861, -1.000000e+00
  %2863 = fadd fast float %2860, %2862
  %2864 = fmul fast float %2863, 5.000000e-01
  %2865 = fsub fast float %2860, %2862
  %2866 = fmul fast float %2865, 5.000000e-01
  %2867 = call float @dx.op.unary.f32(i32 6, float %2864)  ; FAbs(value)
  %2868 = fsub fast float 1.000000e+00, %2867
  %2869 = call float @dx.op.unary.f32(i32 6, float %2866)  ; FAbs(value)
  %2870 = fsub fast float %2868, %2869
  %2871 = call float @dx.op.dot3.f32(i32 55, float %2864, float %2866, float %2870, float %2864, float %2866, float %2870)  ; Dot3(ax,ay,az,bx,by,bz)
  %2872 = call float @dx.op.unary.f32(i32 25, float %2871)  ; Rsqrt(value)
  %2873 = fmul fast float %2864, %2872
  %2874 = fmul fast float %2866, %2872
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = and i32 %2876, 67108864
  %2878 = icmp eq i32 %2877, 0
  br i1 %2878, label %2895, label %2879

; <label>:2879                                    ; preds = %2827
  %2880 = add i32 %49, 312
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = and i32 %2882, 65535
  %2884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2883)  ; LegacyF16ToF32(value)
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = and i32 %2886, 65535
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = lshr i32 %2882, 16
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = fsub fast float %2852, %2890
  %2892 = fmul fast float %2891, %2884
  %2893 = fadd fast float %2892, %2888
  %2894 = call float @dx.op.unary.f32(i32 7, float %2893)  ; Saturate(value)
  br label %2895

; <label>:2895                                    ; preds = %2879, %2827
  %2896 = phi float [ %2894, %2879 ], [ %2852, %2827 ]
  %2897 = call float @dx.op.dot2.f32(i32 54, float %2873, float %2874, float %2316, float %2317)  ; Dot2(ax,ay,bx,by)
  %2898 = call float @dx.op.dot2.f32(i32 54, float %2873, float %2874, float %2318, float %2319)  ; Dot2(ax,ay,bx,by)
  br label %2899

; <label>:2899                                    ; preds = %2895, %2805
  %2900 = phi float [ %2896, %2895 ], [ 0x3FD6666660000000, %2805 ]
  %2901 = phi float [ %2897, %2895 ], [ 0.000000e+00, %2805 ]
  %2902 = phi float [ %2898, %2895 ], [ 0.000000e+00, %2805 ]
  %2903 = phi float [ %2839, %2895 ], [ 1.000000e+00, %2805 ]
  %2904 = add i32 %49, 192
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2904, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = lshr i32 %2906, 22
  %2908 = shl nuw nsw i32 %2907, 5
  %2909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2908)  ; LegacyF16ToF32(value)
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = and i32 %2911, 64
  %2913 = icmp eq i32 %2912, 0
  br i1 %2913, label %2947, label %2914

; <label>:2914                                    ; preds = %2899
  %2915 = add i32 %49, 400
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = add i32 %2917, 0
  %2919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = and i32 %2921, 131072
  %2923 = icmp eq i32 %2922, 0
  %2924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2919, %dx.types.Handle %94, float %2412, float %2413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2925 = extractvalue %dx.types.ResRet.f32 %2924, 0
  %2926 = extractvalue %dx.types.ResRet.f32 %2924, 1
  %2927 = extractvalue %dx.types.ResRet.f32 %2924, 2
  %2928 = fmul fast float %2925, %315
  %2929 = fmul fast float %2926, %318
  %2930 = fmul fast float %2927, %321
  br i1 %2923, label %2937, label %2931

; <label>:2931                                    ; preds = %2914
  %2932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2933 = extractvalue %dx.types.CBufRet.f32 %2932, 0
  %2934 = fmul fast float %2933, %2928
  %2935 = fmul fast float %2933, %2929
  %2936 = fmul fast float %2933, %2930
  br label %2937

; <label>:2937                                    ; preds = %2931, %2914
  %2938 = phi float [ %2934, %2931 ], [ %2928, %2914 ]
  %2939 = phi float [ %2935, %2931 ], [ %2929, %2914 ]
  %2940 = phi float [ %2936, %2931 ], [ %2930, %2914 ]
  %2941 = fmul fast float %2938, %2909
  %2942 = select i1 %214, float %2941, float %2938
  %2943 = call float @dx.op.dot3.f32(i32 55, float %2942, float %2939, float %2940, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2944 = select i1 %214, float 0.000000e+00, float %2938
  %2945 = select i1 %214, float %2943, float %2939
  %2946 = select i1 %214, float 0.000000e+00, float %2940
  br label %2947

; <label>:2947                                    ; preds = %2937, %2899
  %2948 = phi float [ %2944, %2937 ], [ 0.000000e+00, %2899 ]
  %2949 = phi float [ %2945, %2937 ], [ 0.000000e+00, %2899 ]
  %2950 = phi float [ %2946, %2937 ], [ 0.000000e+00, %2899 ]
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = and i32 %2952, 1024
  %2954 = icmp eq i32 %2953, 0
  br i1 %2954, label %2985, label %2955

; <label>:2955                                    ; preds = %2947
  %2956 = add i32 %49, 184
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = and i32 %2958, 255
  %2960 = uitofp i32 %2959 to float
  %2961 = fmul fast float %2960, 0x3F70101020000000
  %2962 = lshr i32 %2958, 8
  %2963 = and i32 %2962, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = fmul fast float %2964, 0x3F70101020000000
  %2966 = lshr i32 %2958, 16
  %2967 = and i32 %2966, 255
  %2968 = uitofp i32 %2967 to float
  %2969 = fmul fast float %2968, 0x3F70101020000000
  %2970 = fmul fast float %2961, %2961
  %2971 = fmul fast float %2965, %2965
  %2972 = fmul fast float %2969, %2969
  %2973 = add i32 %49, 464
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = add i32 %2975, 0
  %2977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2976, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2978 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2977, %dx.types.Handle %95, float %2412, float %2413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2979 = extractvalue %dx.types.ResRet.f32 %2978, 0
  %2980 = extractvalue %dx.types.ResRet.f32 %2978, 1
  %2981 = extractvalue %dx.types.ResRet.f32 %2978, 2
  %2982 = fmul fast float %2970, %2979
  %2983 = fmul fast float %2971, %2980
  %2984 = fmul fast float %2972, %2981
  br label %2985

; <label>:2985                                    ; preds = %2955, %2947
  %2986 = phi float [ %2982, %2955 ], [ 0.000000e+00, %2947 ]
  %2987 = phi float [ %2983, %2955 ], [ 0.000000e+00, %2947 ]
  %2988 = phi float [ %2984, %2955 ], [ 0.000000e+00, %2947 ]
  %2989 = fcmp fast ogt float %2986, 0.000000e+00
  %2990 = fcmp fast ogt float %2987, 0.000000e+00
  %2991 = fcmp fast ogt float %2988, 0.000000e+00
  %2992 = call float @dx.op.unary.f32(i32 23, float %2986)  ; Log(value)
  %2993 = call float @dx.op.unary.f32(i32 23, float %2987)  ; Log(value)
  %2994 = call float @dx.op.unary.f32(i32 23, float %2988)  ; Log(value)
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2904, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = lshr i32 %2996, 7
  %2998 = and i32 %2997, 32752
  %2999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2998)  ; LegacyF16ToF32(value)
  %3000 = fmul fast float %2992, 0xBFE62E4300000000
  %3001 = fmul fast float %3000, %2999
  %3002 = fmul fast float %2993, 0xBFE62E4300000000
  %3003 = fmul fast float %3002, %2999
  %3004 = fmul fast float %2994, 0xBFE62E4300000000
  %3005 = fmul fast float %3004, %2999
  %3006 = select i1 %2989, float %3001, float 1.270000e+02
  %3007 = select i1 %2990, float %3003, float 1.270000e+02
  %3008 = select i1 %2991, float %3005, float 1.270000e+02
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = and i32 %3010, 10240
  %3012 = icmp eq i32 %3011, 0
  br i1 %3012, label %3057, label %3013

; <label>:3013                                    ; preds = %2985
  %3014 = add i32 %49, 480
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3014, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = add i32 %3016, 0
  %3018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3017, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3019 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3018, %dx.types.Handle %95, float %2412, float %2413, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3020 = extractvalue %dx.types.ResRet.f32 %3019, 1
  %3021 = extractvalue %dx.types.ResRet.f32 %3019, 3
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = and i32 %3023, 1048576
  %3025 = icmp ne i32 %3024, 0
  %3026 = and i32 %3023, 8192
  %3027 = icmp eq i32 %3026, 0
  br i1 %3027, label %3043, label %3028

; <label>:3028                                    ; preds = %3013
  %3029 = extractvalue %dx.types.ResRet.f32 %3019, 2
  %3030 = select i1 %3025, float %3029, float %3020
  %3031 = extractvalue %dx.types.ResRet.f32 %3019, 0
  %3032 = select i1 %3025, float %3031, float %3020
  %3033 = add i32 %49, 128
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = lshr i32 %3035, 16
  %3037 = and i32 %3036, 255
  %3038 = uitofp i32 %3037 to float
  %3039 = fmul fast float %3038, 0x3F80101020000000
  %3040 = fmul fast float %3039, %3032
  %3041 = fmul fast float %3039, %3020
  %3042 = fmul fast float %3039, %3030
  br label %3043

; <label>:3043                                    ; preds = %3028, %3013
  %3044 = phi float [ %3040, %3028 ], [ 0.000000e+00, %3013 ]
  %3045 = phi float [ %3041, %3028 ], [ 0.000000e+00, %3013 ]
  %3046 = phi float [ %3042, %3028 ], [ 0.000000e+00, %3013 ]
  %3047 = and i32 %3023, 2048
  %3048 = icmp eq i32 %3047, 0
  br i1 %3048, label %3057, label %3049

; <label>:3049                                    ; preds = %3043
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2904, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = shl i32 %3051, 4
  %3053 = and i32 %3052, 32752
  %3054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3053)  ; LegacyF16ToF32(value)
  %3055 = fmul fast float %3054, %3021
  %3056 = call float @dx.op.binary.f32(i32 35, float %3055, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3057

; <label>:3057                                    ; preds = %3049, %3043, %2985
  %3058 = phi float [ %3044, %3049 ], [ %3044, %3043 ], [ 0.000000e+00, %2985 ]
  %3059 = phi float [ %3045, %3049 ], [ %3045, %3043 ], [ 0.000000e+00, %2985 ]
  %3060 = phi float [ %3046, %3049 ], [ %3046, %3043 ], [ 0.000000e+00, %2985 ]
  %3061 = phi float [ %3056, %3049 ], [ 0x3F70101020000000, %3043 ], [ 0x3F70101020000000, %2985 ]
  %3062 = add i32 %49, 128
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3062, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = and i32 %3064, 255
  %3066 = uitofp i32 %3065 to float
  %3067 = lshr i32 %3064, 8
  %3068 = and i32 %3067, 255
  %3069 = uitofp i32 %3068 to float
  %3070 = call float @dx.op.dot3.f32(i32 55, float %2820, float %2821, float %2822, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3071 = fmul fast float %3069, %3070
  %3072 = fadd fast float %3071, %3066
  %3073 = fmul fast float %3072, 0x3F70101020000000
  %3074 = call float @dx.op.unary.f32(i32 7, float %3073)  ; Saturate(value)
  br i1 %2304, label %3075, label %3110

; <label>:3075                                    ; preds = %3057
  %3076 = fmul fast float %3061, 2.000000e+00
  %3077 = fcmp fast olt float %3006, 1.270000e+02
  %3078 = fcmp fast olt float %3007, 1.270000e+02
  %3079 = fcmp fast olt float %3008, 1.270000e+02
  %3080 = fmul fast float %3006, 0xBFF7154760000000
  %3081 = fmul fast float %3080, %3076
  %3082 = fmul fast float %3007, 0xBFF7154760000000
  %3083 = fmul fast float %3082, %3076
  %3084 = fmul fast float %3008, 0xBFF7154760000000
  %3085 = fmul fast float %3084, %3076
  %3086 = call float @dx.op.unary.f32(i32 21, float %3081)  ; Exp(value)
  %3087 = call float @dx.op.unary.f32(i32 21, float %3083)  ; Exp(value)
  %3088 = call float @dx.op.unary.f32(i32 21, float %3085)  ; Exp(value)
  %3089 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  %3090 = call float @dx.op.unary.f32(i32 7, float %3087)  ; Saturate(value)
  %3091 = call float @dx.op.unary.f32(i32 7, float %3088)  ; Saturate(value)
  %3092 = fadd fast float %3089, -1.000000e+00
  %3093 = select i1 %3077, float %3092, float -1.000000e+00
  %3094 = fadd fast float %3090, -1.000000e+00
  %3095 = select i1 %3078, float %3094, float -1.000000e+00
  %3096 = fadd fast float %3091, -1.000000e+00
  %3097 = select i1 %3079, float %3096, float -1.000000e+00
  %3098 = fmul fast float %3093, %2600
  %3099 = fmul fast float %3095, %2600
  %3100 = fmul fast float %3097, %2600
  %3101 = fadd fast float %3098, 1.000000e+00
  %3102 = fadd fast float %3099, 1.000000e+00
  %3103 = fadd fast float %3100, 1.000000e+00
  %3104 = fmul fast float %3101, %2286
  %3105 = fmul fast float %3102, %2287
  %3106 = fmul fast float %3103, %2288
  %3107 = fmul fast float %3101, %2289
  %3108 = fmul fast float %3102, %2290
  %3109 = fmul fast float %3103, %2291
  br label %3110

; <label>:3110                                    ; preds = %3075, %3057
  %3111 = phi float [ %3104, %3075 ], [ %2286, %3057 ]
  %3112 = phi float [ %3105, %3075 ], [ %2287, %3057 ]
  %3113 = phi float [ %3106, %3075 ], [ %2288, %3057 ]
  %3114 = phi float [ %3107, %3075 ], [ %2289, %3057 ]
  %3115 = phi float [ %3108, %3075 ], [ %2290, %3057 ]
  %3116 = phi float [ %3109, %3075 ], [ %2291, %3057 ]
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = and i32 %3118, 3
  %3120 = icmp eq i32 %3119, 3
  br i1 %3120, label %3199, label %3121

; <label>:3121                                    ; preds = %3110
  %3122 = and i32 %3118, 16
  %3123 = icmp ne i32 %3122, 0
  %3124 = select i1 %3123, float %2600, float 0.000000e+00
  %3125 = icmp eq i32 %3119, 0
  br i1 %3125, label %3126, label %3154

; <label>:3126                                    ; preds = %3121
  %3127 = and i32 %3118, 64
  %3128 = icmp ne i32 %3127, 0
  %3129 = select i1 %3128, float %2600, float 0.000000e+00
  %3130 = fsub fast float %2820, %3111
  %3131 = fsub fast float %2821, %3112
  %3132 = fsub fast float %2822, %3113
  %3133 = fmul fast float %3124, %3130
  %3134 = fmul fast float %3124, %3131
  %3135 = fmul fast float %3124, %3132
  %3136 = fadd fast float %3133, %3111
  %3137 = fadd fast float %3134, %3112
  %3138 = fadd fast float %3135, %3113
  %3139 = fsub fast float %2806, %2298
  %3140 = fmul fast float %3124, %3139
  %3141 = fadd fast float %3140, %2298
  %3142 = fsub fast float %2948, %3114
  %3143 = fsub fast float %2949, %3115
  %3144 = fsub fast float %2950, %3116
  %3145 = fmul fast float %3129, %3142
  %3146 = fmul fast float %3129, %3143
  %3147 = fmul fast float %3129, %3144
  %3148 = fadd fast float %3145, %3114
  %3149 = fadd fast float %3146, %3115
  %3150 = fadd fast float %3147, %3116
  %3151 = fsub fast float %3074, %2302
  %3152 = fmul fast float %3124, %3151
  %3153 = fadd fast float %3152, %2302
  br label %3199

; <label>:3154                                    ; preds = %3121
  %3155 = icmp eq i32 %3119, 1
  br i1 %3155, label %3156, label %3169

; <label>:3156                                    ; preds = %3154
  %3157 = fadd fast float %2820, -1.000000e+00
  %3158 = fadd fast float %2821, -1.000000e+00
  %3159 = fadd fast float %2822, -1.000000e+00
  %3160 = fmul fast float %3124, %3157
  %3161 = fmul fast float %3124, %3158
  %3162 = fmul fast float %3124, %3159
  %3163 = fadd fast float %3160, 1.000000e+00
  %3164 = fadd fast float %3161, 1.000000e+00
  %3165 = fadd fast float %3162, 1.000000e+00
  %3166 = fmul fast float %3163, %3111
  %3167 = fmul fast float %3164, %3112
  %3168 = fmul fast float %3165, %3113
  br label %3199

; <label>:3169                                    ; preds = %3154
  %3170 = icmp eq i32 %3119, 2
  br i1 %3170, label %3171, label %3199

; <label>:3171                                    ; preds = %3169
  %3172 = call float @dx.op.unary.f32(i32 24, float %2820)  ; Sqrt(value)
  %3173 = call float @dx.op.unary.f32(i32 24, float %2821)  ; Sqrt(value)
  %3174 = call float @dx.op.unary.f32(i32 24, float %2822)  ; Sqrt(value)
  %3175 = fadd fast float %3172, -5.000000e-01
  %3176 = fadd fast float %3173, -5.000000e-01
  %3177 = fadd fast float %3174, -5.000000e-01
  %3178 = fmul fast float %3175, %3124
  %3179 = fmul fast float %3176, %3124
  %3180 = fmul fast float %3177, %3124
  %3181 = fadd fast float %3178, 5.000000e-01
  %3182 = fadd fast float %3179, 5.000000e-01
  %3183 = fadd fast float %3180, 5.000000e-01
  %3184 = fmul fast float %3181, 2.000000e+00
  %3185 = fsub fast float 1.000000e+00, %3184
  %3186 = fmul fast float %3185, %3111
  %3187 = fadd fast float %3186, %3184
  %3188 = fmul fast float %3187, %3111
  %3189 = fmul fast float %3182, 2.000000e+00
  %3190 = fsub fast float 1.000000e+00, %3189
  %3191 = fmul fast float %3190, %3112
  %3192 = fadd fast float %3191, %3189
  %3193 = fmul fast float %3192, %3112
  %3194 = fmul fast float %3183, 2.000000e+00
  %3195 = fsub fast float 1.000000e+00, %3194
  %3196 = fmul fast float %3195, %3113
  %3197 = fadd fast float %3196, %3194
  %3198 = fmul fast float %3197, %3113
  br label %3199

; <label>:3199                                    ; preds = %3171, %3169, %3156, %3126, %3110
  %3200 = phi float [ %3111, %3110 ], [ %3188, %3171 ], [ %3111, %3169 ], [ %3166, %3156 ], [ %3136, %3126 ]
  %3201 = phi float [ %3112, %3110 ], [ %3193, %3171 ], [ %3112, %3169 ], [ %3167, %3156 ], [ %3137, %3126 ]
  %3202 = phi float [ %3113, %3110 ], [ %3198, %3171 ], [ %3113, %3169 ], [ %3168, %3156 ], [ %3138, %3126 ]
  %3203 = phi float [ %3114, %3110 ], [ %3114, %3171 ], [ %3114, %3169 ], [ %3114, %3156 ], [ %3148, %3126 ]
  %3204 = phi float [ %3115, %3110 ], [ %3115, %3171 ], [ %3115, %3169 ], [ %3115, %3156 ], [ %3149, %3126 ]
  %3205 = phi float [ %3116, %3110 ], [ %3116, %3171 ], [ %3116, %3169 ], [ %3116, %3156 ], [ %3150, %3126 ]
  %3206 = phi float [ %2298, %3110 ], [ %2298, %3171 ], [ %2298, %3169 ], [ %2298, %3156 ], [ %3141, %3126 ]
  %3207 = phi float [ %2302, %3110 ], [ %2302, %3171 ], [ %2302, %3169 ], [ %2302, %3156 ], [ %3153, %3126 ]
  %3208 = and i32 %3118, 12
  %3209 = icmp eq i32 %3208, 12
  br i1 %3209, label %3340, label %3210

; <label>:3210                                    ; preds = %3199
  %3211 = and i32 %3118, 2097184
  %3212 = icmp eq i32 %3211, 2097184
  %3213 = select i1 %3212, float %2600, float 0.000000e+00
  %3214 = and i32 %3118, 4194336
  %3215 = icmp eq i32 %3214, 4194336
  %3216 = select i1 %3215, float %2600, float 0.000000e+00
  %3217 = and i32 %3118, 8388640
  %3218 = icmp eq i32 %3217, 8388640
  %3219 = select i1 %3218, float %2600, float 0.000000e+00
  %3220 = and i32 %3118, 1024
  %3221 = icmp ne i32 %3220, 0
  %3222 = select i1 %3221, float %2600, float 0.000000e+00
  %3223 = and i32 %3118, 2048
  %3224 = icmp ne i32 %3223, 0
  %3225 = select i1 %3224, float %2600, float 0.000000e+00
  %3226 = and i32 %3118, 8192
  %3227 = icmp ne i32 %3226, 0
  %3228 = select i1 %3227, float %2600, float 0.000000e+00
  %3229 = icmp eq i32 %3208, 0
  br i1 %3229, label %3230, label %3264

; <label>:3230                                    ; preds = %3210
  %3231 = fsub fast float %2901, %2284
  %3232 = fsub fast float %2902, %2285
  %3233 = fmul fast float %3213, %3231
  %3234 = fmul fast float %3213, %3232
  %3235 = fadd fast float %3233, %2284
  %3236 = fadd fast float %3234, %2285
  %3237 = fsub fast float %2903, %2300
  %3238 = fmul fast float %3216, %3237
  %3239 = fadd fast float %3238, %2300
  %3240 = fsub fast float %2900, %2299
  %3241 = fmul fast float %3219, %3240
  %3242 = fadd fast float %3241, %2299
  %3243 = fsub fast float %3006, %2295
  %3244 = fsub fast float %3007, %2296
  %3245 = fsub fast float %3008, %2297
  %3246 = fmul fast float %3222, %3243
  %3247 = fmul fast float %3222, %3244
  %3248 = fmul fast float %3222, %3245
  %3249 = fadd fast float %3246, %2295
  %3250 = fadd fast float %3247, %2296
  %3251 = fadd fast float %3248, %2297
  %3252 = fsub fast float %3061, %2301
  %3253 = fmul fast float %3225, %3252
  %3254 = fadd fast float %3253, %2301
  %3255 = fsub fast float %3058, %2292
  %3256 = fsub fast float %3059, %2293
  %3257 = fsub fast float %3060, %2294
  %3258 = fmul fast float %3228, %3255
  %3259 = fmul fast float %3228, %3256
  %3260 = fmul fast float %3228, %3257
  %3261 = fadd fast float %3258, %2292
  %3262 = fadd fast float %3259, %2293
  %3263 = fadd fast float %3260, %2294
  br label %3340

; <label>:3264                                    ; preds = %3210
  %3265 = icmp eq i32 %3208, 4
  br i1 %3265, label %3266, label %3312

; <label>:3266                                    ; preds = %3264
  %3267 = fmul fast float %3213, %2901
  %3268 = fmul fast float %3213, %2902
  %3269 = fadd fast float %3267, %2284
  %3270 = fadd fast float %3268, %2285
  %3271 = call float @dx.op.binary.f32(i32 36, float %2300, float %2903)  ; FMin(a,b)
  %3272 = fsub fast float %3271, %2300
  %3273 = fmul fast float %3272, %3216
  %3274 = fadd fast float %3273, %2300
  %3275 = fadd fast float %2900, %2299
  %3276 = fmul fast float %3275, 0x3FF337FAE0000000
  %3277 = fmul fast float %2299, %2299
  %3278 = fmul fast float %2900, %2900
  %3279 = fadd fast float %3278, %3277
  %3280 = fmul fast float %3279, 0x3FE5152B00000000
  %3281 = fmul fast float %2299, 0xBFCC1F85E0000000
  %3282 = fmul fast float %3281, %2900
  %3283 = fadd fast float %3282, 0xBFE1363700000000
  %3284 = fadd fast float %3283, %3276
  %3285 = fsub fast float %3284, %3280
  %3286 = fmul fast float %3275, 0x3FBA6F0D00000000
  %3287 = fmul fast float %3279, 0x3FD0432880000000
  %3288 = fmul fast float %2299, 0xBFEF110800000000
  %3289 = fmul fast float %3288, %2900
  %3290 = fadd fast float %3289, 1.000000e+00
  %3291 = fsub fast float %3290, %3286
  %3292 = fadd fast float %3291, %3287
  %3293 = fdiv fast float %3285, %3292
  %3294 = call float @dx.op.unary.f32(i32 7, float %3293)  ; Saturate(value)
  %3295 = fsub fast float %3294, %2299
  %3296 = fmul fast float %3295, %3219
  %3297 = fadd fast float %3296, %2299
  %3298 = fmul fast float %3222, %3006
  %3299 = fmul fast float %3222, %3007
  %3300 = fmul fast float %3222, %3008
  %3301 = fadd fast float %3298, %2295
  %3302 = fadd fast float %3299, %2296
  %3303 = fadd fast float %3300, %2297
  %3304 = fmul fast float %3225, %3061
  %3305 = fadd fast float %3304, %2301
  %3306 = fmul fast float %3228, %3058
  %3307 = fmul fast float %3228, %3059
  %3308 = fmul fast float %3228, %3060
  %3309 = fadd fast float %3306, %2292
  %3310 = fadd fast float %3307, %2293
  %3311 = fadd fast float %3308, %2294
  br label %3340

; <label>:3312                                    ; preds = %3264
  %3313 = icmp eq i32 %3208, 8
  br i1 %3313, label %3314, label %3340

; <label>:3314                                    ; preds = %3312
  %3315 = fmul fast float %3213, %2901
  %3316 = fmul fast float %3213, %2902
  %3317 = fadd fast float %3315, %2284
  %3318 = fadd fast float %3316, %2285
  %3319 = call float @dx.op.binary.f32(i32 36, float %2300, float %2903)  ; FMin(a,b)
  %3320 = fsub fast float %3319, %2300
  %3321 = fmul fast float %3320, %3216
  %3322 = fadd fast float %3321, %2300
  %3323 = fsub fast float %2900, %2299
  %3324 = fmul fast float %3219, %3323
  %3325 = fadd fast float %3324, %2299
  %3326 = fmul fast float %3222, %3006
  %3327 = fmul fast float %3222, %3007
  %3328 = fmul fast float %3222, %3008
  %3329 = fadd fast float %3326, %2295
  %3330 = fadd fast float %3327, %2296
  %3331 = fadd fast float %3328, %2297
  %3332 = fmul fast float %3225, %3061
  %3333 = fadd fast float %3332, %2301
  %3334 = fmul fast float %3228, %3058
  %3335 = fmul fast float %3228, %3059
  %3336 = fmul fast float %3228, %3060
  %3337 = fadd fast float %3334, %2292
  %3338 = fadd fast float %3335, %2293
  %3339 = fadd fast float %3336, %2294
  br label %3340

; <label>:3340                                    ; preds = %3314, %3312, %3266, %3230, %3199, %2599, %2303, %2283
  %3341 = phi float [ %2284, %3199 ], [ %2284, %2599 ], [ %2284, %2283 ], [ %3317, %3314 ], [ %2284, %3312 ], [ %3269, %3266 ], [ %3235, %3230 ], [ %2284, %2303 ]
  %3342 = phi float [ %2285, %3199 ], [ %2285, %2599 ], [ %2285, %2283 ], [ %3318, %3314 ], [ %2285, %3312 ], [ %3270, %3266 ], [ %3236, %3230 ], [ %2285, %2303 ]
  %3343 = phi float [ %3200, %3199 ], [ %2286, %2599 ], [ %2286, %2283 ], [ %3200, %3314 ], [ %3200, %3312 ], [ %3200, %3266 ], [ %3200, %3230 ], [ %2286, %2303 ]
  %3344 = phi float [ %3201, %3199 ], [ %2287, %2599 ], [ %2287, %2283 ], [ %3201, %3314 ], [ %3201, %3312 ], [ %3201, %3266 ], [ %3201, %3230 ], [ %2287, %2303 ]
  %3345 = phi float [ %3202, %3199 ], [ %2288, %2599 ], [ %2288, %2283 ], [ %3202, %3314 ], [ %3202, %3312 ], [ %3202, %3266 ], [ %3202, %3230 ], [ %2288, %2303 ]
  %3346 = phi float [ %3203, %3199 ], [ %2289, %2599 ], [ %2289, %2283 ], [ %3203, %3314 ], [ %3203, %3312 ], [ %3203, %3266 ], [ %3203, %3230 ], [ %2289, %2303 ]
  %3347 = phi float [ %3204, %3199 ], [ %2290, %2599 ], [ %2290, %2283 ], [ %3204, %3314 ], [ %3204, %3312 ], [ %3204, %3266 ], [ %3204, %3230 ], [ %2290, %2303 ]
  %3348 = phi float [ %3205, %3199 ], [ %2291, %2599 ], [ %2291, %2283 ], [ %3205, %3314 ], [ %3205, %3312 ], [ %3205, %3266 ], [ %3205, %3230 ], [ %2291, %2303 ]
  %3349 = phi float [ %2292, %3199 ], [ %2292, %2599 ], [ %2292, %2283 ], [ %3337, %3314 ], [ %2292, %3312 ], [ %3309, %3266 ], [ %3261, %3230 ], [ %2292, %2303 ]
  %3350 = phi float [ %2293, %3199 ], [ %2293, %2599 ], [ %2293, %2283 ], [ %3338, %3314 ], [ %2293, %3312 ], [ %3310, %3266 ], [ %3262, %3230 ], [ %2293, %2303 ]
  %3351 = phi float [ %2294, %3199 ], [ %2294, %2599 ], [ %2294, %2283 ], [ %3339, %3314 ], [ %2294, %3312 ], [ %3311, %3266 ], [ %3263, %3230 ], [ %2294, %2303 ]
  %3352 = phi float [ %2295, %3199 ], [ %2295, %2599 ], [ %2295, %2283 ], [ %3329, %3314 ], [ %2295, %3312 ], [ %3301, %3266 ], [ %3249, %3230 ], [ %2295, %2303 ]
  %3353 = phi float [ %2296, %3199 ], [ %2296, %2599 ], [ %2296, %2283 ], [ %3330, %3314 ], [ %2296, %3312 ], [ %3302, %3266 ], [ %3250, %3230 ], [ %2296, %2303 ]
  %3354 = phi float [ %2297, %3199 ], [ %2297, %2599 ], [ %2297, %2283 ], [ %3331, %3314 ], [ %2297, %3312 ], [ %3303, %3266 ], [ %3251, %3230 ], [ %2297, %2303 ]
  %3355 = phi float [ %3206, %3199 ], [ %2298, %2599 ], [ %2298, %2283 ], [ %3206, %3314 ], [ %3206, %3312 ], [ %3206, %3266 ], [ %3206, %3230 ], [ %2298, %2303 ]
  %3356 = phi float [ %2299, %3199 ], [ %2299, %2599 ], [ %2299, %2283 ], [ %3325, %3314 ], [ %2299, %3312 ], [ %3297, %3266 ], [ %3242, %3230 ], [ %2299, %2303 ]
  %3357 = phi float [ %2300, %3199 ], [ %2300, %2599 ], [ %2300, %2283 ], [ %3322, %3314 ], [ %2300, %3312 ], [ %3274, %3266 ], [ %3239, %3230 ], [ %2300, %2303 ]
  %3358 = phi float [ %2301, %3199 ], [ %2301, %2599 ], [ %2301, %2283 ], [ %3333, %3314 ], [ %2301, %3312 ], [ %3305, %3266 ], [ %3254, %3230 ], [ %2301, %2303 ]
  %3359 = phi float [ %3207, %3199 ], [ %2302, %2599 ], [ %2302, %2283 ], [ %3207, %3314 ], [ %3207, %3312 ], [ %3207, %3266 ], [ %3207, %3230 ], [ %2302, %2303 ]
  br i1 %402, label %4397, label %3360

; <label>:3360                                    ; preds = %3340
  %3361 = icmp ult i32 %456, 4
  %3362 = add i32 %49, 72
  %3363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.i32 %3363, 0
  %3365 = add i32 %49, 76
  %3366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.i32 %3366, 0
  %3368 = or i32 %3367, %3364
  %3369 = icmp eq i32 %3368, 0
  br i1 %3369, label %4397, label %3370

; <label>:3370                                    ; preds = %3360
  %3371 = and i32 %3364, 262144
  %3372 = icmp ne i32 %3371, 0
  %3373 = select i1 %3372, float %52, float 1.000000e+00
  %3374 = select i1 %3372, float %53, float 0.000000e+00
  %3375 = select i1 %3372, float %54, float 0.000000e+00
  %3376 = select i1 %3372, float %55, float 1.000000e+00
  %3377 = select i1 %3372, float %56, float %77
  %3378 = select i1 %3372, float %57, float %78
  %3379 = add i32 %49, 332
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = lshr i32 %3381, 16
  %3383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3382)  ; LegacyF16ToF32(value)
  %3384 = fmul fast float %3383, 0x3F50624DE0000000
  %3385 = add i32 %49, 136
  %3386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3387 = extractvalue %dx.types.ResRet.i32 %3386, 0
  %3388 = lshr i32 %3387, 16
  %3389 = and i32 %3388, 255
  %3390 = lshr i32 %3387, 24
  %3391 = add i32 %49, 340
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = and i32 %3393, 65535
  %3395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3394)  ; LegacyF16ToF32(value)
  %3396 = lshr i32 %3393, 16
  %3397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3396)  ; LegacyF16ToF32(value)
  %3398 = add i32 %49, 80
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = lshr i32 %3400, 22
  %3402 = shl nuw nsw i32 %3401, 5
  %3403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3402)  ; LegacyF16ToF32(value)
  %3404 = shl i32 %3400, 4
  %3405 = and i32 %3404, 32752
  %3406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3405)  ; LegacyF16ToF32(value)
  %3407 = lshr i32 %3400, 7
  %3408 = and i32 %3407, 32752
  %3409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3408)  ; LegacyF16ToF32(value)
  %3410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3411 = extractvalue %dx.types.CBufRet.f32 %3410, 3
  %3412 = fmul fast float %3411, 1.000000e+03
  %3413 = fmul fast float %392, %3412
  %3414 = call float @dx.op.unary.f32(i32 22, float %3413)  ; Frc(value)
  %3415 = fadd fast float %3414, %382
  %3416 = fmul fast float %393, %3412
  %3417 = call float @dx.op.unary.f32(i32 22, float %3416)  ; Frc(value)
  %3418 = fadd fast float %3417, %384
  %3419 = fmul fast float %3384, %3412
  %3420 = call float @dx.op.unary.f32(i32 22, float %3419)  ; Frc(value)
  %3421 = fmul fast float %3420, 0x401921FB60000000
  %3422 = fadd fast float %3421, %3403
  %3423 = call float @dx.op.unary.f32(i32 13, float %3422)  ; Sin(value)
  %3424 = call float @dx.op.unary.f32(i32 12, float %3422)  ; Cos(value)
  %3425 = fsub fast float -0.000000e+00, %3423
  %3426 = fadd fast float %3377, -5.000000e-01
  %3427 = fadd fast float %3378, -5.000000e-01
  %3428 = fmul fast float %3395, %3426
  %3429 = fmul fast float %3397, %3427
  %3430 = fadd fast float %3428, 5.000000e-01
  %3431 = fadd fast float %3429, 5.000000e-01
  %3432 = fmul fast float %3406, %3430
  %3433 = fmul fast float %3409, %3431
  %3434 = fmul fast float %3424, %3432
  %3435 = call float @dx.op.tertiary.f32(i32 46, float %3425, float %3433, float %3434)  ; FMad(a,b,c)
  %3436 = fmul fast float %3423, %3432
  %3437 = call float @dx.op.tertiary.f32(i32 46, float %3424, float %3433, float %3436)  ; FMad(a,b,c)
  %3438 = fadd fast float %3415, %3435
  %3439 = fadd fast float %3418, %3437
  %3440 = icmp ugt i32 %3389, 1
  %3441 = icmp ugt i32 %3387, 33554431
  %3442 = or i1 %3441, %3440
  br i1 %3442, label %3443, label %3468

; <label>:3443                                    ; preds = %3370
  %3444 = add i32 %49, 276
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = lshr i32 %3446, 16
  %3448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3447)  ; LegacyF16ToF32(value)
  %3449 = fmul fast float %3411, %3448
  %3450 = call float @dx.op.unary.f32(i32 22, float %3449)  ; Frc(value)
  %3451 = mul nuw nsw i32 %3389, %3390
  %3452 = uitofp i32 %3451 to float
  %3453 = fmul fast float %3450, %3452
  %3454 = call float @dx.op.unary.f32(i32 27, float %3453)  ; Round_ni(value)
  %3455 = fptoui float %3454 to i32
  %3456 = urem i32 %3455, %3389
  %3457 = udiv i32 %3455, %3390
  %3458 = call float @dx.op.unary.f32(i32 22, float %3438)  ; Frc(value)
  %3459 = call float @dx.op.unary.f32(i32 22, float %3439)  ; Frc(value)
  %3460 = uitofp i32 %3456 to float
  %3461 = uitofp i32 %3457 to float
  %3462 = fadd fast float %3458, %3460
  %3463 = fadd fast float %3459, %3461
  %3464 = uitofp i32 %3389 to float
  %3465 = uitofp i32 %3390 to float
  %3466 = fdiv fast float %3462, %3464
  %3467 = fdiv fast float %3463, %3465
  br label %3468

; <label>:3468                                    ; preds = %3443, %3370
  %3469 = phi float [ %3466, %3443 ], [ %3438, %3370 ]
  %3470 = phi float [ %3467, %3443 ], [ %3439, %3370 ]
  %3471 = and i32 %3364, 16777216
  %3472 = icmp eq i32 %3471, 0
  br i1 %3472, label %3582, label %3473

; <label>:3473                                    ; preds = %3468
  %3474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3475 = extractvalue %dx.types.CBufRet.f32 %3474, 0
  %3476 = extractvalue %dx.types.CBufRet.f32 %3474, 1
  %3477 = extractvalue %dx.types.CBufRet.f32 %3474, 2
  %3478 = fadd fast float %3475, %153
  %3479 = fadd fast float %3476, %154
  %3480 = fadd fast float %3477, %155
  %3481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3482 = extractvalue %dx.types.CBufRet.f32 %3481, 0
  %3483 = call float @dx.op.unary.f32(i32 7, float %3482)  ; Saturate(value)
  %3484 = icmp eq i32 %50, 65535
  br i1 %3484, label %3579, label %3485

; <label>:3485                                    ; preds = %3473
  %3486 = lshr i32 %50, 1
  %3487 = shl i32 %3486, 2
  %3488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3487, i32 undef)  ; BufferLoad(srv,index,wot)
  %3489 = extractvalue %dx.types.ResRet.i32 %3488, 0
  %3490 = and i32 %50, 1
  %3491 = icmp ne i32 %3490, 0
  %3492 = lshr i32 %3489, 16
  %3493 = and i32 %3489, 65535
  %3494 = select i1 %3491, i32 %3492, i32 %3493
  %3495 = icmp eq i32 %3494, 65535
  br i1 %3495, label %3575, label %3496

; <label>:3496                                    ; preds = %3485
  %3497 = mul nuw nsw i32 %3494, 40
  %3498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = extractvalue %dx.types.ResRet.f32 %3498, 1
  %3501 = extractvalue %dx.types.ResRet.f32 %3498, 2
  %3502 = add nuw nsw i32 %3497, 12
  %3503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3502, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.f32 %3503, 0
  %3505 = extractvalue %dx.types.ResRet.f32 %3503, 1
  %3506 = extractvalue %dx.types.ResRet.f32 %3503, 2
  %3507 = add nuw nsw i32 %3497, 24
  %3508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3507, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.f32 %3508, 0
  %3510 = extractvalue %dx.types.ResRet.f32 %3508, 1
  %3511 = extractvalue %dx.types.ResRet.f32 %3508, 2
  %3512 = add nuw nsw i32 %3497, 36
  %3513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3514 = extractvalue %dx.types.ResRet.f32 %3513, 0
  %3515 = fsub fast float %3478, %3499
  %3516 = fsub fast float %3479, %3500
  %3517 = fsub fast float %3480, %3501
  %3518 = fmul fast float %3514, %3515
  %3519 = fmul fast float %3514, %3516
  %3520 = fmul fast float %3514, %3517
  %3521 = call float @dx.op.unary.f32(i32 27, float %3518)  ; Round_ni(value)
  %3522 = call float @dx.op.unary.f32(i32 27, float %3519)  ; Round_ni(value)
  %3523 = call float @dx.op.unary.f32(i32 27, float %3520)  ; Round_ni(value)
  %3524 = fadd fast float %3521, 5.000000e-01
  %3525 = fadd fast float %3522, 5.000000e-01
  %3526 = fadd fast float %3523, 5.000000e-01
  %3527 = fmul fast float %3524, %3504
  %3528 = fmul fast float %3525, %3505
  %3529 = fmul fast float %3526, %3506
  %3530 = shl i32 %50, 2
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = add i32 %3532, 0
  %3534 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3533, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3535 = call float @dx.op.unary.f32(i32 22, float %3527)  ; Frc(value)
  %3536 = call float @dx.op.unary.f32(i32 22, float %3528)  ; Frc(value)
  %3537 = call float @dx.op.unary.f32(i32 22, float %3529)  ; Frc(value)
  %3538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3534, %dx.types.Handle %44, float %3535, float %3536, float %3537, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3539 = extractvalue %dx.types.ResRet.f32 %3538, 0
  %3540 = extractvalue %dx.types.ResRet.f32 %3538, 1
  %3541 = extractvalue %dx.types.ResRet.f32 %3538, 2
  %3542 = fmul fast float %3539, 1.023000e+03
  %3543 = fmul fast float %3540, 1.023000e+03
  %3544 = fmul fast float %3541, 1.023000e+03
  %3545 = fadd fast float %3542, 5.000000e-01
  %3546 = fadd fast float %3543, 5.000000e-01
  %3547 = fadd fast float %3544, 5.000000e-01
  %3548 = call float @dx.op.unary.f32(i32 27, float %3545)  ; Round_ni(value)
  %3549 = call float @dx.op.unary.f32(i32 27, float %3546)  ; Round_ni(value)
  %3550 = call float @dx.op.unary.f32(i32 27, float %3547)  ; Round_ni(value)
  %3551 = fsub fast float %3518, %3521
  %3552 = fsub fast float %3519, %3522
  %3553 = fsub fast float %3520, %3523
  %3554 = fmul fast float %3551, 7.500000e-01
  %3555 = fmul fast float %3552, 7.500000e-01
  %3556 = fmul fast float %3553, 7.500000e-01
  %3557 = fadd fast float %3521, 1.250000e-01
  %3558 = fadd fast float %3557, %3554
  %3559 = fadd fast float %3558, %3548
  %3560 = fadd fast float %3522, 1.250000e-01
  %3561 = fadd fast float %3560, %3555
  %3562 = fadd fast float %3561, %3549
  %3563 = fadd fast float %3523, 1.250000e-01
  %3564 = fadd fast float %3563, %3556
  %3565 = fadd fast float %3564, %3550
  %3566 = fmul fast float %3559, %3509
  %3567 = fmul fast float %3562, %3510
  %3568 = fmul fast float %3565, %3511
  %3569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.i32 %3569, 0
  %3571 = add i32 %3570, 0
  %3572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3571, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3572, %dx.types.Handle %42, float %3566, float %3567, float %3568, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3574 = extractvalue %dx.types.ResRet.f32 %3573, 0
  br label %3575

; <label>:3575                                    ; preds = %3496, %3485
  %3576 = phi float [ %3574, %3496 ], [ -1.000000e+00, %3485 ]
  %3577 = fadd fast float %3576, %3483
  %3578 = call float @dx.op.unary.f32(i32 7, float %3577)  ; Saturate(value)
  br label %3579

; <label>:3579                                    ; preds = %3575, %3473
  %3580 = phi float [ %3578, %3575 ], [ %3483, %3473 ]
  %3581 = fmul fast float %3580, %451
  br label %3582

; <label>:3582                                    ; preds = %3579, %3468
  %3583 = phi float [ %3581, %3579 ], [ %451, %3468 ]
  %3584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.i32 %3584, 0
  %3586 = and i32 %3585, 256
  %3587 = icmp eq i32 %3586, 0
  br i1 %3587, label %3634, label %3588

; <label>:3588                                    ; preds = %3582
  %3589 = add i32 %49, 436
  %3590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3589, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.i32 %3590, 0
  %3592 = add i32 %3591, 0
  %3593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3592, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3594 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3593, %dx.types.Handle %95, float %3469, float %3470, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = add i32 %49, 148
  %3597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.i32 %3597, 0
  %3599 = shl i32 %3598, 4
  %3600 = and i32 %3599, 32752
  %3601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3600)  ; LegacyF16ToF32(value)
  %3602 = lshr i32 %3598, 7
  %3603 = and i32 %3602, 32752
  %3604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3603)  ; LegacyF16ToF32(value)
  %3605 = fsub fast float 1.000000e+00, %3583
  %3606 = call float @dx.op.binary.f32(i32 35, float %3605, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3607 = bitcast float %3583 to i32
  %3608 = sitofp i32 %3607 to float
  %3609 = fadd fast float %3608, 0xC1CFBF8940000000
  %3610 = fmul fast float %3604, %3609
  %3611 = fadd fast float %3610, 0x41CFBF8940000000
  %3612 = fptosi float %3611 to i32
  %3613 = bitcast i32 %3612 to float
  %3614 = bitcast float %3606 to i32
  %3615 = sitofp i32 %3614 to float
  %3616 = fadd fast float %3615, 0xC1CFBF8940000000
  %3617 = fmul fast float %3616, %3604
  %3618 = fadd fast float %3617, 0x41CFBF8940000000
  %3619 = fptosi float %3618 to i32
  %3620 = bitcast i32 %3619 to float
  %3621 = fmul fast float %3613, %3601
  %3622 = fmul fast float %3620, %3601
  %3623 = fsub fast float %3606, %3621
  %3624 = fadd fast float %3622, %3606
  %3625 = call float @dx.op.unary.f32(i32 7, float %3623)  ; Saturate(value)
  %3626 = call float @dx.op.unary.f32(i32 7, float %3624)  ; Saturate(value)
  %3627 = fsub fast float %3595, %3625
  %3628 = fsub fast float %3626, %3625
  %3629 = bitcast float %3628 to i32
  %3630 = sub nsw i32 2129859010, %3629
  %3631 = bitcast i32 %3630 to float
  %3632 = fmul fast float %3631, %3627
  %3633 = call float @dx.op.unary.f32(i32 7, float %3632)  ; Saturate(value)
  br label %3634

; <label>:3634                                    ; preds = %3588, %3582
  %3635 = phi float [ %3633, %3588 ], [ %3583, %3582 ]
  %3636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.i32 %3636, 0
  %3638 = and i32 %3637, 128
  %3639 = icmp eq i32 %3638, 0
  br i1 %3639, label %3656, label %3640

; <label>:3640                                    ; preds = %3634
  %3641 = add i32 %49, 420
  %3642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.i32 %3642, 0
  %3644 = add i32 %3643, 0
  %3645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3644, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3646 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3645, %dx.types.Handle %95, float %3469, float %3470, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3647 = extractvalue %dx.types.ResRet.f32 %3646, 0
  %3648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.i32 %3648, 0
  %3650 = and i32 %3649, 524288
  %3651 = icmp ne i32 %3650, 0
  %3652 = fcmp fast ogt float %3647, 0x3FE0101020000000
  %3653 = select i1 %3652, float 1.000000e+00, float 0.000000e+00
  %3654 = select i1 %3651, float %3653, float %3647
  %3655 = fmul fast float %3654, %3635
  br label %3656

; <label>:3656                                    ; preds = %3640, %3634
  %3657 = phi float [ %3655, %3640 ], [ %3635, %3634 ]
  %3658 = fcmp fast ult float %3657, 0x3F70101020000000
  br i1 %3658, label %4397, label %3659

; <label>:3659                                    ; preds = %3656
  %3660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.i32 %3660, 0
  %3662 = and i32 %3661, 16
  %3663 = icmp eq i32 %3662, 0
  br i1 %3663, label %3862, label %3664

; <label>:3664                                    ; preds = %3659
  %3665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3385, i32 undef)  ; BufferLoad(srv,index,wot)
  %3666 = extractvalue %dx.types.ResRet.i32 %3665, 0
  %3667 = add i32 %49, 372
  %3668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3667, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.i32 %3668, 0
  %3670 = add i32 %3669, 0
  %3671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3670, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3672 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3671, %dx.types.Handle %94, float %3469, float %3470, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3673 = extractvalue %dx.types.ResRet.f32 %3672, 0
  %3674 = extractvalue %dx.types.ResRet.f32 %3672, 1
  %3675 = extractvalue %dx.types.ResRet.f32 %3672, 2
  %3676 = extractvalue %dx.types.ResRet.f32 %3672, 3
  %3677 = and i32 %3666, 255
  %3678 = uitofp i32 %3677 to float
  %3679 = lshr i32 %3666, 8
  %3680 = and i32 %3679, 255
  %3681 = uitofp i32 %3680 to float
  %3682 = fmul fast float %3676, %3678
  %3683 = fadd fast float %3682, %3681
  %3684 = fmul fast float %3683, 0x3F70101000000000
  %3685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3686 = extractvalue %dx.types.ResRet.i32 %3685, 0
  %3687 = and i32 %3686, 512
  %3688 = icmp eq i32 %3687, 0
  br i1 %3688, label %3697, label %3689

; <label>:3689                                    ; preds = %3664
  %3690 = add i32 %49, 452
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3690, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = add i32 %3692, 0
  %3694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3694, %dx.types.Handle %95, float %3469, float %3470, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3696 = extractvalue %dx.types.ResRet.f32 %3695, 0
  br label %3697

; <label>:3697                                    ; preds = %3689, %3664
  %3698 = phi float [ %3696, %3689 ], [ 1.000000e+00, %3664 ]
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = and i32 %3700, 33554432
  %3702 = icmp eq i32 %3701, 0
  br i1 %3702, label %3809, label %3703

; <label>:3703                                    ; preds = %3697
  %3704 = add i32 %49, 272
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = and i32 %3706, 65535
  %3708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3707)  ; LegacyF16ToF32(value)
  %3709 = lshr i32 %3706, 16
  %3710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3709)  ; LegacyF16ToF32(value)
  %3711 = add i32 %49, 276
  %3712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3711, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.i32 %3712, 0
  %3714 = and i32 %3713, 65535
  %3715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3714)  ; LegacyF16ToF32(value)
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = lshr i32 %3717, 24
  %3719 = uitofp i32 %3718 to float
  %3720 = fmul fast float %3719, 0x3F70101020000000
  %3721 = and i32 %3717, 255
  %3722 = uitofp i32 %3721 to float
  %3723 = fmul fast float %3722, 0x3F70101020000000
  %3724 = lshr i32 %3717, 8
  %3725 = and i32 %3724, 255
  %3726 = uitofp i32 %3725 to float
  %3727 = fmul fast float %3726, 0x3F70101020000000
  %3728 = lshr i32 %3717, 16
  %3729 = and i32 %3728, 255
  %3730 = uitofp i32 %3729 to float
  %3731 = fmul fast float %3730, 0x3F70101020000000
  %3732 = add i32 %49, 268
  %3733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3732, i32 undef)  ; BufferLoad(srv,index,wot)
  %3734 = extractvalue %dx.types.ResRet.i32 %3733, 0
  %3735 = lshr i32 %3734, 24
  %3736 = uitofp i32 %3735 to float
  %3737 = fmul fast float %3736, 0x3F70101020000000
  %3738 = and i32 %3734, 255
  %3739 = uitofp i32 %3738 to float
  %3740 = fmul fast float %3739, 0x3F70101020000000
  %3741 = lshr i32 %3734, 8
  %3742 = and i32 %3741, 255
  %3743 = uitofp i32 %3742 to float
  %3744 = fmul fast float %3743, 0x3F70101020000000
  %3745 = lshr i32 %3734, 16
  %3746 = and i32 %3745, 255
  %3747 = uitofp i32 %3746 to float
  %3748 = fmul fast float %3747, 0x3F70101020000000
  %3749 = bitcast float %3673 to i32
  %3750 = ashr i32 %3749, 1
  %3751 = sub nsw i32 1597463174, %3750
  %3752 = bitcast i32 %3751 to float
  %3753 = fmul fast float %3673, 5.000000e-01
  %3754 = fmul fast float %3752, %3752
  %3755 = fmul fast float %3754, %3753
  %3756 = fsub fast float 1.500000e+00, %3755
  %3757 = fmul fast float %3752, %3673
  %3758 = fmul fast float %3757, %3756
  %3759 = bitcast float %3674 to i32
  %3760 = ashr i32 %3759, 1
  %3761 = sub nsw i32 1597463174, %3760
  %3762 = bitcast i32 %3761 to float
  %3763 = fmul fast float %3674, 5.000000e-01
  %3764 = fmul fast float %3762, %3762
  %3765 = fmul fast float %3764, %3763
  %3766 = fsub fast float 1.500000e+00, %3765
  %3767 = fmul fast float %3762, %3674
  %3768 = fmul fast float %3767, %3766
  %3769 = bitcast float %3675 to i32
  %3770 = ashr i32 %3769, 1
  %3771 = sub nsw i32 1597463174, %3770
  %3772 = bitcast i32 %3771 to float
  %3773 = fmul fast float %3675, 5.000000e-01
  %3774 = fmul fast float %3772, %3772
  %3775 = fmul fast float %3774, %3773
  %3776 = fsub fast float 1.500000e+00, %3775
  %3777 = fmul fast float %3772, %3675
  %3778 = fmul fast float %3777, %3776
  %3779 = fsub fast float %3758, %3740
  %3780 = fsub fast float %3768, %3744
  %3781 = fsub fast float %3778, %3748
  %3782 = fmul fast float %3779, %3708
  %3783 = fmul fast float %3780, %3710
  %3784 = fmul fast float %3781, %3715
  %3785 = fadd fast float %3782, %3723
  %3786 = fadd fast float %3783, %3727
  %3787 = fadd fast float %3784, %3731
  %3788 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  %3789 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  %3790 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3791 = fmul fast float %3788, %3788
  %3792 = fmul fast float %3789, %3789
  %3793 = fmul fast float %3790, %3790
  %3794 = fsub fast float %3791, %3673
  %3795 = fsub fast float %3792, %3674
  %3796 = fsub fast float %3793, %3675
  %3797 = fmul fast float %3794, %3698
  %3798 = fmul fast float %3795, %3698
  %3799 = fmul fast float %3796, %3698
  %3800 = fadd fast float %3797, %3673
  %3801 = fadd fast float %3798, %3674
  %3802 = fadd fast float %3799, %3675
  %3803 = fadd fast float %3720, %3684
  %3804 = fsub fast float %3803, %3737
  %3805 = call float @dx.op.unary.f32(i32 7, float %3804)  ; Saturate(value)
  %3806 = fsub fast float %3805, %3684
  %3807 = fmul fast float %3806, %3698
  %3808 = fadd fast float %3807, %3684
  br label %3862

; <label>:3809                                    ; preds = %3697
  %3810 = and i32 %3700, 134217728
  %3811 = icmp eq i32 %3810, 0
  br i1 %3811, label %3846, label %3812

; <label>:3812                                    ; preds = %3809
  %3813 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %3814 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %3815 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %3816 = fadd fast float %3813, -5.000000e-01
  %3817 = fadd fast float %3814, -5.000000e-01
  %3818 = fadd fast float %3815, -5.000000e-01
  %3819 = fmul fast float %3816, %3698
  %3820 = fmul fast float %3817, %3698
  %3821 = fmul fast float %3818, %3698
  %3822 = fadd fast float %3819, 5.000000e-01
  %3823 = fadd fast float %3820, 5.000000e-01
  %3824 = fadd fast float %3821, 5.000000e-01
  %3825 = call float @dx.op.unary.f32(i32 24, float %3673)  ; Sqrt(value)
  %3826 = call float @dx.op.unary.f32(i32 24, float %3674)  ; Sqrt(value)
  %3827 = call float @dx.op.unary.f32(i32 24, float %3675)  ; Sqrt(value)
  %3828 = fmul fast float %3822, 2.000000e+00
  %3829 = fsub fast float 1.000000e+00, %3828
  %3830 = fmul fast float %3829, %3825
  %3831 = fadd fast float %3830, %3828
  %3832 = fmul fast float %3831, %3825
  %3833 = fmul fast float %3823, 2.000000e+00
  %3834 = fsub fast float 1.000000e+00, %3833
  %3835 = fmul fast float %3834, %3826
  %3836 = fadd fast float %3835, %3833
  %3837 = fmul fast float %3836, %3826
  %3838 = fmul fast float %3824, 2.000000e+00
  %3839 = fsub fast float 1.000000e+00, %3838
  %3840 = fmul fast float %3839, %3827
  %3841 = fadd fast float %3840, %3838
  %3842 = fmul fast float %3841, %3827
  %3843 = fmul fast float %3832, %3832
  %3844 = fmul fast float %3837, %3837
  %3845 = fmul fast float %3842, %3842
  br label %3862

; <label>:3846                                    ; preds = %3809
  %3847 = fmul fast float %369, %369
  %3848 = fmul fast float %373, %373
  %3849 = fmul fast float %377, %377
  %3850 = fadd fast float %3847, -1.000000e+00
  %3851 = fadd fast float %3848, -1.000000e+00
  %3852 = fadd fast float %3849, -1.000000e+00
  %3853 = fmul fast float %3698, %3850
  %3854 = fmul fast float %3698, %3851
  %3855 = fmul fast float %3698, %3852
  %3856 = fadd fast float %3853, 1.000000e+00
  %3857 = fadd fast float %3854, 1.000000e+00
  %3858 = fadd fast float %3855, 1.000000e+00
  %3859 = fmul fast float %3856, %3673
  %3860 = fmul fast float %3857, %3674
  %3861 = fmul fast float %3858, %3675
  br label %3862

; <label>:3862                                    ; preds = %3846, %3812, %3703, %3659
  %3863 = phi float [ %3808, %3703 ], [ %3684, %3812 ], [ %3684, %3846 ], [ 0x3FA23C0BE0000000, %3659 ]
  %3864 = phi float [ %3800, %3703 ], [ %3843, %3812 ], [ %3859, %3846 ], [ 1.000000e+00, %3659 ]
  %3865 = phi float [ %3801, %3703 ], [ %3844, %3812 ], [ %3860, %3846 ], [ 1.000000e+00, %3659 ]
  %3866 = phi float [ %3802, %3703 ], [ %3845, %3812 ], [ %3861, %3846 ], [ 1.000000e+00, %3659 ]
  %3867 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3868 = extractvalue %dx.types.CBufRet.i32 %3867, 1
  %3869 = and i32 %3868, 1
  %3870 = icmp ne i32 %3869, 0
  %3871 = add i32 %49, 356
  %3872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.i32 %3872, 0
  %3874 = and i32 %3873, 32
  %3875 = icmp ne i32 %3874, 0
  %3876 = and i1 %3870, %3875
  %3877 = select i1 %3876, float 1.000000e+00, float %3864
  %3878 = select i1 %3876, float 0x3FD3333340000000, float %3865
  %3879 = select i1 %3876, float 0x3FD3333340000000, float %3866
  %3880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.i32 %3880, 0
  %3882 = and i32 %3881, 32
  %3883 = icmp eq i32 %3882, 0
  br i1 %3883, label %3956, label %3884

; <label>:3884                                    ; preds = %3862
  %3885 = add i32 %49, 140
  %3886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3887 = extractvalue %dx.types.ResRet.i32 %3886, 0
  %3888 = add i32 %49, 388
  %3889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.i32 %3889, 0
  %3891 = add i32 %3890, 0
  %3892 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3891, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3893 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3892, %dx.types.Handle %94, float %3469, float %3470, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3894 = extractvalue %dx.types.ResRet.f32 %3893, 0
  %3895 = extractvalue %dx.types.ResRet.f32 %3893, 1
  %3896 = extractvalue %dx.types.ResRet.f32 %3893, 2
  %3897 = extractvalue %dx.types.ResRet.f32 %3893, 3
  %3898 = and i32 %3887, 255
  %3899 = uitofp i32 %3898 to float
  %3900 = lshr i32 %3887, 8
  %3901 = and i32 %3900, 255
  %3902 = uitofp i32 %3901 to float
  %3903 = lshr i32 %3887, 16
  %3904 = and i32 %3903, 255
  %3905 = uitofp i32 %3904 to float
  %3906 = fmul fast float %3905, 0x3F70101000000000
  %3907 = fmul fast float %3894, %3899
  %3908 = fadd fast float %3907, %3902
  %3909 = fmul fast float %3908, 0x3F70101000000000
  %3910 = fadd fast float %3895, -5.000000e-01
  %3911 = fadd fast float %3897, -5.000000e-01
  %3912 = fmul fast float %3910, %3906
  %3913 = fmul fast float %3911, %3906
  %3914 = fadd fast float %3912, 5.000000e-01
  %3915 = fadd fast float %3913, 5.000000e-01
  %3916 = fmul fast float %3914, 2.000000e+00
  %3917 = fadd fast float %3916, -1.000000e+00
  %3918 = fmul fast float %3915, 2.000000e+00
  %3919 = fadd fast float %3918, -1.000000e+00
  %3920 = fadd fast float %3917, %3919
  %3921 = fmul fast float %3920, 5.000000e-01
  %3922 = fsub fast float %3917, %3919
  %3923 = fmul fast float %3922, 5.000000e-01
  %3924 = call float @dx.op.unary.f32(i32 6, float %3921)  ; FAbs(value)
  %3925 = fsub fast float 1.000000e+00, %3924
  %3926 = call float @dx.op.unary.f32(i32 6, float %3923)  ; FAbs(value)
  %3927 = fsub fast float %3925, %3926
  %3928 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3923, float %3927, float %3921, float %3923, float %3927)  ; Dot3(ax,ay,az,bx,by,bz)
  %3929 = call float @dx.op.unary.f32(i32 25, float %3928)  ; Rsqrt(value)
  %3930 = fmul fast float %3921, %3929
  %3931 = fmul fast float %3923, %3929
  %3932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3933 = extractvalue %dx.types.ResRet.i32 %3932, 0
  %3934 = and i32 %3933, 67108864
  %3935 = icmp eq i32 %3934, 0
  br i1 %3935, label %3952, label %3936

; <label>:3936                                    ; preds = %3884
  %3937 = add i32 %49, 328
  %3938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3937, i32 undef)  ; BufferLoad(srv,index,wot)
  %3939 = extractvalue %dx.types.ResRet.i32 %3938, 0
  %3940 = and i32 %3939, 65535
  %3941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3940)  ; LegacyF16ToF32(value)
  %3942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.i32 %3942, 0
  %3944 = and i32 %3943, 65535
  %3945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3944)  ; LegacyF16ToF32(value)
  %3946 = lshr i32 %3939, 16
  %3947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3946)  ; LegacyF16ToF32(value)
  %3948 = fsub fast float %3909, %3947
  %3949 = fmul fast float %3948, %3941
  %3950 = fadd fast float %3949, %3945
  %3951 = call float @dx.op.unary.f32(i32 7, float %3950)  ; Saturate(value)
  br label %3952

; <label>:3952                                    ; preds = %3936, %3884
  %3953 = phi float [ %3951, %3936 ], [ %3909, %3884 ]
  %3954 = call float @dx.op.dot2.f32(i32 54, float %3930, float %3931, float %3373, float %3374)  ; Dot2(ax,ay,bx,by)
  %3955 = call float @dx.op.dot2.f32(i32 54, float %3930, float %3931, float %3375, float %3376)  ; Dot2(ax,ay,bx,by)
  br label %3956

; <label>:3956                                    ; preds = %3952, %3862
  %3957 = phi float [ %3953, %3952 ], [ 0x3FD6666660000000, %3862 ]
  %3958 = phi float [ %3954, %3952 ], [ 0.000000e+00, %3862 ]
  %3959 = phi float [ %3955, %3952 ], [ 0.000000e+00, %3862 ]
  %3960 = phi float [ %3896, %3952 ], [ 1.000000e+00, %3862 ]
  %3961 = add i32 %49, 208
  %3962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3961, i32 undef)  ; BufferLoad(srv,index,wot)
  %3963 = extractvalue %dx.types.ResRet.i32 %3962, 0
  %3964 = lshr i32 %3963, 22
  %3965 = shl nuw nsw i32 %3964, 5
  %3966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3965)  ; LegacyF16ToF32(value)
  %3967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3968 = extractvalue %dx.types.ResRet.i32 %3967, 0
  %3969 = and i32 %3968, 64
  %3970 = icmp eq i32 %3969, 0
  br i1 %3970, label %4004, label %3971

; <label>:3971                                    ; preds = %3956
  %3972 = add i32 %49, 404
  %3973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3972, i32 undef)  ; BufferLoad(srv,index,wot)
  %3974 = extractvalue %dx.types.ResRet.i32 %3973, 0
  %3975 = add i32 %3974, 0
  %3976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3978 = extractvalue %dx.types.ResRet.i32 %3977, 0
  %3979 = and i32 %3978, 131072
  %3980 = icmp eq i32 %3979, 0
  %3981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3976, %dx.types.Handle %94, float %3469, float %3470, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3982 = extractvalue %dx.types.ResRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.ResRet.f32 %3981, 1
  %3984 = extractvalue %dx.types.ResRet.f32 %3981, 2
  %3985 = fmul fast float %3982, %357
  %3986 = fmul fast float %3983, %360
  %3987 = fmul fast float %3984, %363
  br i1 %3980, label %3994, label %3988

; <label>:3988                                    ; preds = %3971
  %3989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3990 = extractvalue %dx.types.CBufRet.f32 %3989, 0
  %3991 = fmul fast float %3990, %3985
  %3992 = fmul fast float %3990, %3986
  %3993 = fmul fast float %3990, %3987
  br label %3994

; <label>:3994                                    ; preds = %3988, %3971
  %3995 = phi float [ %3991, %3988 ], [ %3985, %3971 ]
  %3996 = phi float [ %3992, %3988 ], [ %3986, %3971 ]
  %3997 = phi float [ %3993, %3988 ], [ %3987, %3971 ]
  %3998 = fmul fast float %3995, %3966
  %3999 = select i1 %214, float %3998, float %3995
  %4000 = call float @dx.op.dot3.f32(i32 55, float %3999, float %3996, float %3997, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4001 = select i1 %214, float 0.000000e+00, float %3995
  %4002 = select i1 %214, float %4000, float %3996
  %4003 = select i1 %214, float 0.000000e+00, float %3997
  br label %4004

; <label>:4004                                    ; preds = %3994, %3956
  %4005 = phi float [ %4001, %3994 ], [ 0.000000e+00, %3956 ]
  %4006 = phi float [ %4002, %3994 ], [ 0.000000e+00, %3956 ]
  %4007 = phi float [ %4003, %3994 ], [ 0.000000e+00, %3956 ]
  %4008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4009 = extractvalue %dx.types.ResRet.i32 %4008, 0
  %4010 = and i32 %4009, 1024
  %4011 = icmp eq i32 %4010, 0
  br i1 %4011, label %4042, label %4012

; <label>:4012                                    ; preds = %4004
  %4013 = add i32 %49, 200
  %4014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4013, i32 undef)  ; BufferLoad(srv,index,wot)
  %4015 = extractvalue %dx.types.ResRet.i32 %4014, 0
  %4016 = and i32 %4015, 255
  %4017 = uitofp i32 %4016 to float
  %4018 = fmul fast float %4017, 0x3F70101020000000
  %4019 = lshr i32 %4015, 8
  %4020 = and i32 %4019, 255
  %4021 = uitofp i32 %4020 to float
  %4022 = fmul fast float %4021, 0x3F70101020000000
  %4023 = lshr i32 %4015, 16
  %4024 = and i32 %4023, 255
  %4025 = uitofp i32 %4024 to float
  %4026 = fmul fast float %4025, 0x3F70101020000000
  %4027 = fmul fast float %4018, %4018
  %4028 = fmul fast float %4022, %4022
  %4029 = fmul fast float %4026, %4026
  %4030 = add i32 %49, 468
  %4031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4030, i32 undef)  ; BufferLoad(srv,index,wot)
  %4032 = extractvalue %dx.types.ResRet.i32 %4031, 0
  %4033 = add i32 %4032, 0
  %4034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4034, %dx.types.Handle %95, float %3469, float %3470, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.ResRet.f32 %4035, 1
  %4038 = extractvalue %dx.types.ResRet.f32 %4035, 2
  %4039 = fmul fast float %4027, %4036
  %4040 = fmul fast float %4028, %4037
  %4041 = fmul fast float %4029, %4038
  br label %4042

; <label>:4042                                    ; preds = %4012, %4004
  %4043 = phi float [ %4039, %4012 ], [ 0.000000e+00, %4004 ]
  %4044 = phi float [ %4040, %4012 ], [ 0.000000e+00, %4004 ]
  %4045 = phi float [ %4041, %4012 ], [ 0.000000e+00, %4004 ]
  %4046 = fcmp fast ogt float %4043, 0.000000e+00
  %4047 = fcmp fast ogt float %4044, 0.000000e+00
  %4048 = fcmp fast ogt float %4045, 0.000000e+00
  %4049 = call float @dx.op.unary.f32(i32 23, float %4043)  ; Log(value)
  %4050 = call float @dx.op.unary.f32(i32 23, float %4044)  ; Log(value)
  %4051 = call float @dx.op.unary.f32(i32 23, float %4045)  ; Log(value)
  %4052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3961, i32 undef)  ; BufferLoad(srv,index,wot)
  %4053 = extractvalue %dx.types.ResRet.i32 %4052, 0
  %4054 = lshr i32 %4053, 7
  %4055 = and i32 %4054, 32752
  %4056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4055)  ; LegacyF16ToF32(value)
  %4057 = fmul fast float %4049, 0xBFE62E4300000000
  %4058 = fmul fast float %4057, %4056
  %4059 = fmul fast float %4050, 0xBFE62E4300000000
  %4060 = fmul fast float %4059, %4056
  %4061 = fmul fast float %4051, 0xBFE62E4300000000
  %4062 = fmul fast float %4061, %4056
  %4063 = select i1 %4046, float %4058, float 1.270000e+02
  %4064 = select i1 %4047, float %4060, float 1.270000e+02
  %4065 = select i1 %4048, float %4062, float 1.270000e+02
  %4066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4067 = extractvalue %dx.types.ResRet.i32 %4066, 0
  %4068 = and i32 %4067, 10240
  %4069 = icmp eq i32 %4068, 0
  br i1 %4069, label %4114, label %4070

; <label>:4070                                    ; preds = %4042
  %4071 = add i32 %49, 484
  %4072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4071, i32 undef)  ; BufferLoad(srv,index,wot)
  %4073 = extractvalue %dx.types.ResRet.i32 %4072, 0
  %4074 = add i32 %4073, 0
  %4075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4075, %dx.types.Handle %95, float %3469, float %3470, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4077 = extractvalue %dx.types.ResRet.f32 %4076, 1
  %4078 = extractvalue %dx.types.ResRet.f32 %4076, 3
  %4079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4080 = extractvalue %dx.types.ResRet.i32 %4079, 0
  %4081 = and i32 %4080, 1048576
  %4082 = icmp ne i32 %4081, 0
  %4083 = and i32 %4080, 8192
  %4084 = icmp eq i32 %4083, 0
  br i1 %4084, label %4100, label %4085

; <label>:4085                                    ; preds = %4070
  %4086 = extractvalue %dx.types.ResRet.f32 %4076, 2
  %4087 = select i1 %4082, float %4086, float %4077
  %4088 = extractvalue %dx.types.ResRet.f32 %4076, 0
  %4089 = select i1 %4082, float %4088, float %4077
  %4090 = add i32 %49, 144
  %4091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4090, i32 undef)  ; BufferLoad(srv,index,wot)
  %4092 = extractvalue %dx.types.ResRet.i32 %4091, 0
  %4093 = lshr i32 %4092, 16
  %4094 = and i32 %4093, 255
  %4095 = uitofp i32 %4094 to float
  %4096 = fmul fast float %4095, 0x3F80101020000000
  %4097 = fmul fast float %4096, %4089
  %4098 = fmul fast float %4096, %4077
  %4099 = fmul fast float %4096, %4087
  br label %4100

; <label>:4100                                    ; preds = %4085, %4070
  %4101 = phi float [ %4097, %4085 ], [ 0.000000e+00, %4070 ]
  %4102 = phi float [ %4098, %4085 ], [ 0.000000e+00, %4070 ]
  %4103 = phi float [ %4099, %4085 ], [ 0.000000e+00, %4070 ]
  %4104 = and i32 %4080, 2048
  %4105 = icmp eq i32 %4104, 0
  br i1 %4105, label %4114, label %4106

; <label>:4106                                    ; preds = %4100
  %4107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3961, i32 undef)  ; BufferLoad(srv,index,wot)
  %4108 = extractvalue %dx.types.ResRet.i32 %4107, 0
  %4109 = shl i32 %4108, 4
  %4110 = and i32 %4109, 32752
  %4111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4110)  ; LegacyF16ToF32(value)
  %4112 = fmul fast float %4111, %4078
  %4113 = call float @dx.op.binary.f32(i32 35, float %4112, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4114

; <label>:4114                                    ; preds = %4106, %4100, %4042
  %4115 = phi float [ %4101, %4106 ], [ %4101, %4100 ], [ 0.000000e+00, %4042 ]
  %4116 = phi float [ %4102, %4106 ], [ %4102, %4100 ], [ 0.000000e+00, %4042 ]
  %4117 = phi float [ %4103, %4106 ], [ %4103, %4100 ], [ 0.000000e+00, %4042 ]
  %4118 = phi float [ %4113, %4106 ], [ 0x3F70101020000000, %4100 ], [ 0x3F70101020000000, %4042 ]
  %4119 = add i32 %49, 144
  %4120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4119, i32 undef)  ; BufferLoad(srv,index,wot)
  %4121 = extractvalue %dx.types.ResRet.i32 %4120, 0
  %4122 = and i32 %4121, 255
  %4123 = uitofp i32 %4122 to float
  %4124 = lshr i32 %4121, 8
  %4125 = and i32 %4124, 255
  %4126 = uitofp i32 %4125 to float
  %4127 = call float @dx.op.dot3.f32(i32 55, float %3877, float %3878, float %3879, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4128 = fmul fast float %4126, %4127
  %4129 = fadd fast float %4128, %4123
  %4130 = fmul fast float %4129, 0x3F70101020000000
  %4131 = call float @dx.op.unary.f32(i32 7, float %4130)  ; Saturate(value)
  br i1 %3361, label %4132, label %4167

; <label>:4132                                    ; preds = %4114
  %4133 = fmul fast float %4118, 2.000000e+00
  %4134 = fcmp fast olt float %4063, 1.270000e+02
  %4135 = fcmp fast olt float %4064, 1.270000e+02
  %4136 = fcmp fast olt float %4065, 1.270000e+02
  %4137 = fmul fast float %4063, 0xBFF7154760000000
  %4138 = fmul fast float %4137, %4133
  %4139 = fmul fast float %4064, 0xBFF7154760000000
  %4140 = fmul fast float %4139, %4133
  %4141 = fmul fast float %4065, 0xBFF7154760000000
  %4142 = fmul fast float %4141, %4133
  %4143 = call float @dx.op.unary.f32(i32 21, float %4138)  ; Exp(value)
  %4144 = call float @dx.op.unary.f32(i32 21, float %4140)  ; Exp(value)
  %4145 = call float @dx.op.unary.f32(i32 21, float %4142)  ; Exp(value)
  %4146 = call float @dx.op.unary.f32(i32 7, float %4143)  ; Saturate(value)
  %4147 = call float @dx.op.unary.f32(i32 7, float %4144)  ; Saturate(value)
  %4148 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4149 = fadd fast float %4146, -1.000000e+00
  %4150 = select i1 %4134, float %4149, float -1.000000e+00
  %4151 = fadd fast float %4147, -1.000000e+00
  %4152 = select i1 %4135, float %4151, float -1.000000e+00
  %4153 = fadd fast float %4148, -1.000000e+00
  %4154 = select i1 %4136, float %4153, float -1.000000e+00
  %4155 = fmul fast float %4150, %3657
  %4156 = fmul fast float %4152, %3657
  %4157 = fmul fast float %4154, %3657
  %4158 = fadd fast float %4155, 1.000000e+00
  %4159 = fadd fast float %4156, 1.000000e+00
  %4160 = fadd fast float %4157, 1.000000e+00
  %4161 = fmul fast float %4158, %3343
  %4162 = fmul fast float %4159, %3344
  %4163 = fmul fast float %4160, %3345
  %4164 = fmul fast float %4158, %3346
  %4165 = fmul fast float %4159, %3347
  %4166 = fmul fast float %4160, %3348
  br label %4167

; <label>:4167                                    ; preds = %4132, %4114
  %4168 = phi float [ %4161, %4132 ], [ %3343, %4114 ]
  %4169 = phi float [ %4162, %4132 ], [ %3344, %4114 ]
  %4170 = phi float [ %4163, %4132 ], [ %3345, %4114 ]
  %4171 = phi float [ %4164, %4132 ], [ %3346, %4114 ]
  %4172 = phi float [ %4165, %4132 ], [ %3347, %4114 ]
  %4173 = phi float [ %4166, %4132 ], [ %3348, %4114 ]
  %4174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4175 = extractvalue %dx.types.ResRet.i32 %4174, 0
  %4176 = and i32 %4175, 3
  %4177 = icmp eq i32 %4176, 3
  br i1 %4177, label %4256, label %4178

; <label>:4178                                    ; preds = %4167
  %4179 = and i32 %4175, 16
  %4180 = icmp ne i32 %4179, 0
  %4181 = select i1 %4180, float %3657, float 0.000000e+00
  %4182 = icmp eq i32 %4176, 0
  br i1 %4182, label %4183, label %4211

; <label>:4183                                    ; preds = %4178
  %4184 = and i32 %4175, 64
  %4185 = icmp ne i32 %4184, 0
  %4186 = select i1 %4185, float %3657, float 0.000000e+00
  %4187 = fsub fast float %3877, %4168
  %4188 = fsub fast float %3878, %4169
  %4189 = fsub fast float %3879, %4170
  %4190 = fmul fast float %4181, %4187
  %4191 = fmul fast float %4181, %4188
  %4192 = fmul fast float %4181, %4189
  %4193 = fadd fast float %4190, %4168
  %4194 = fadd fast float %4191, %4169
  %4195 = fadd fast float %4192, %4170
  %4196 = fsub fast float %3863, %3355
  %4197 = fmul fast float %4181, %4196
  %4198 = fadd fast float %4197, %3355
  %4199 = fsub fast float %4005, %4171
  %4200 = fsub fast float %4006, %4172
  %4201 = fsub fast float %4007, %4173
  %4202 = fmul fast float %4186, %4199
  %4203 = fmul fast float %4186, %4200
  %4204 = fmul fast float %4186, %4201
  %4205 = fadd fast float %4202, %4171
  %4206 = fadd fast float %4203, %4172
  %4207 = fadd fast float %4204, %4173
  %4208 = fsub fast float %4131, %3359
  %4209 = fmul fast float %4181, %4208
  %4210 = fadd fast float %4209, %3359
  br label %4256

; <label>:4211                                    ; preds = %4178
  %4212 = icmp eq i32 %4176, 1
  br i1 %4212, label %4213, label %4226

; <label>:4213                                    ; preds = %4211
  %4214 = fadd fast float %3877, -1.000000e+00
  %4215 = fadd fast float %3878, -1.000000e+00
  %4216 = fadd fast float %3879, -1.000000e+00
  %4217 = fmul fast float %4181, %4214
  %4218 = fmul fast float %4181, %4215
  %4219 = fmul fast float %4181, %4216
  %4220 = fadd fast float %4217, 1.000000e+00
  %4221 = fadd fast float %4218, 1.000000e+00
  %4222 = fadd fast float %4219, 1.000000e+00
  %4223 = fmul fast float %4220, %4168
  %4224 = fmul fast float %4221, %4169
  %4225 = fmul fast float %4222, %4170
  br label %4256

; <label>:4226                                    ; preds = %4211
  %4227 = icmp eq i32 %4176, 2
  br i1 %4227, label %4228, label %4256

; <label>:4228                                    ; preds = %4226
  %4229 = call float @dx.op.unary.f32(i32 24, float %3877)  ; Sqrt(value)
  %4230 = call float @dx.op.unary.f32(i32 24, float %3878)  ; Sqrt(value)
  %4231 = call float @dx.op.unary.f32(i32 24, float %3879)  ; Sqrt(value)
  %4232 = fadd fast float %4229, -5.000000e-01
  %4233 = fadd fast float %4230, -5.000000e-01
  %4234 = fadd fast float %4231, -5.000000e-01
  %4235 = fmul fast float %4232, %4181
  %4236 = fmul fast float %4233, %4181
  %4237 = fmul fast float %4234, %4181
  %4238 = fadd fast float %4235, 5.000000e-01
  %4239 = fadd fast float %4236, 5.000000e-01
  %4240 = fadd fast float %4237, 5.000000e-01
  %4241 = fmul fast float %4238, 2.000000e+00
  %4242 = fsub fast float 1.000000e+00, %4241
  %4243 = fmul fast float %4242, %4168
  %4244 = fadd fast float %4243, %4241
  %4245 = fmul fast float %4244, %4168
  %4246 = fmul fast float %4239, 2.000000e+00
  %4247 = fsub fast float 1.000000e+00, %4246
  %4248 = fmul fast float %4247, %4169
  %4249 = fadd fast float %4248, %4246
  %4250 = fmul fast float %4249, %4169
  %4251 = fmul fast float %4240, 2.000000e+00
  %4252 = fsub fast float 1.000000e+00, %4251
  %4253 = fmul fast float %4252, %4170
  %4254 = fadd fast float %4253, %4251
  %4255 = fmul fast float %4254, %4170
  br label %4256

; <label>:4256                                    ; preds = %4228, %4226, %4213, %4183, %4167
  %4257 = phi float [ %4168, %4167 ], [ %4245, %4228 ], [ %4168, %4226 ], [ %4223, %4213 ], [ %4193, %4183 ]
  %4258 = phi float [ %4169, %4167 ], [ %4250, %4228 ], [ %4169, %4226 ], [ %4224, %4213 ], [ %4194, %4183 ]
  %4259 = phi float [ %4170, %4167 ], [ %4255, %4228 ], [ %4170, %4226 ], [ %4225, %4213 ], [ %4195, %4183 ]
  %4260 = phi float [ %4171, %4167 ], [ %4171, %4228 ], [ %4171, %4226 ], [ %4171, %4213 ], [ %4205, %4183 ]
  %4261 = phi float [ %4172, %4167 ], [ %4172, %4228 ], [ %4172, %4226 ], [ %4172, %4213 ], [ %4206, %4183 ]
  %4262 = phi float [ %4173, %4167 ], [ %4173, %4228 ], [ %4173, %4226 ], [ %4173, %4213 ], [ %4207, %4183 ]
  %4263 = phi float [ %3355, %4167 ], [ %3355, %4228 ], [ %3355, %4226 ], [ %3355, %4213 ], [ %4198, %4183 ]
  %4264 = phi float [ %3359, %4167 ], [ %3359, %4228 ], [ %3359, %4226 ], [ %3359, %4213 ], [ %4210, %4183 ]
  %4265 = and i32 %4175, 12
  %4266 = icmp eq i32 %4265, 12
  br i1 %4266, label %4397, label %4267

; <label>:4267                                    ; preds = %4256
  %4268 = and i32 %4175, 2097184
  %4269 = icmp eq i32 %4268, 2097184
  %4270 = select i1 %4269, float %3657, float 0.000000e+00
  %4271 = and i32 %4175, 4194336
  %4272 = icmp eq i32 %4271, 4194336
  %4273 = select i1 %4272, float %3657, float 0.000000e+00
  %4274 = and i32 %4175, 8388640
  %4275 = icmp eq i32 %4274, 8388640
  %4276 = select i1 %4275, float %3657, float 0.000000e+00
  %4277 = and i32 %4175, 1024
  %4278 = icmp ne i32 %4277, 0
  %4279 = select i1 %4278, float %3657, float 0.000000e+00
  %4280 = and i32 %4175, 2048
  %4281 = icmp ne i32 %4280, 0
  %4282 = select i1 %4281, float %3657, float 0.000000e+00
  %4283 = and i32 %4175, 8192
  %4284 = icmp ne i32 %4283, 0
  %4285 = select i1 %4284, float %3657, float 0.000000e+00
  %4286 = icmp eq i32 %4265, 0
  br i1 %4286, label %4287, label %4321

; <label>:4287                                    ; preds = %4267
  %4288 = fsub fast float %3958, %3341
  %4289 = fsub fast float %3959, %3342
  %4290 = fmul fast float %4270, %4288
  %4291 = fmul fast float %4270, %4289
  %4292 = fadd fast float %4290, %3341
  %4293 = fadd fast float %4291, %3342
  %4294 = fsub fast float %3960, %3357
  %4295 = fmul fast float %4273, %4294
  %4296 = fadd fast float %4295, %3357
  %4297 = fsub fast float %3957, %3356
  %4298 = fmul fast float %4276, %4297
  %4299 = fadd fast float %4298, %3356
  %4300 = fsub fast float %4063, %3352
  %4301 = fsub fast float %4064, %3353
  %4302 = fsub fast float %4065, %3354
  %4303 = fmul fast float %4279, %4300
  %4304 = fmul fast float %4279, %4301
  %4305 = fmul fast float %4279, %4302
  %4306 = fadd fast float %4303, %3352
  %4307 = fadd fast float %4304, %3353
  %4308 = fadd fast float %4305, %3354
  %4309 = fsub fast float %4118, %3358
  %4310 = fmul fast float %4282, %4309
  %4311 = fadd fast float %4310, %3358
  %4312 = fsub fast float %4115, %3349
  %4313 = fsub fast float %4116, %3350
  %4314 = fsub fast float %4117, %3351
  %4315 = fmul fast float %4285, %4312
  %4316 = fmul fast float %4285, %4313
  %4317 = fmul fast float %4285, %4314
  %4318 = fadd fast float %4315, %3349
  %4319 = fadd fast float %4316, %3350
  %4320 = fadd fast float %4317, %3351
  br label %4397

; <label>:4321                                    ; preds = %4267
  %4322 = icmp eq i32 %4265, 4
  br i1 %4322, label %4323, label %4369

; <label>:4323                                    ; preds = %4321
  %4324 = fmul fast float %4270, %3958
  %4325 = fmul fast float %4270, %3959
  %4326 = fadd fast float %4324, %3341
  %4327 = fadd fast float %4325, %3342
  %4328 = call float @dx.op.binary.f32(i32 36, float %3357, float %3960)  ; FMin(a,b)
  %4329 = fsub fast float %4328, %3357
  %4330 = fmul fast float %4329, %4273
  %4331 = fadd fast float %4330, %3357
  %4332 = fadd fast float %3957, %3356
  %4333 = fmul fast float %4332, 0x3FF337FAE0000000
  %4334 = fmul fast float %3356, %3356
  %4335 = fmul fast float %3957, %3957
  %4336 = fadd fast float %4335, %4334
  %4337 = fmul fast float %4336, 0x3FE5152B00000000
  %4338 = fmul fast float %3356, 0xBFCC1F85E0000000
  %4339 = fmul fast float %4338, %3957
  %4340 = fadd fast float %4339, 0xBFE1363700000000
  %4341 = fadd fast float %4340, %4333
  %4342 = fsub fast float %4341, %4337
  %4343 = fmul fast float %4332, 0x3FBA6F0D00000000
  %4344 = fmul fast float %4336, 0x3FD0432880000000
  %4345 = fmul fast float %3356, 0xBFEF110800000000
  %4346 = fmul fast float %4345, %3957
  %4347 = fadd fast float %4346, 1.000000e+00
  %4348 = fsub fast float %4347, %4343
  %4349 = fadd fast float %4348, %4344
  %4350 = fdiv fast float %4342, %4349
  %4351 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4352 = fsub fast float %4351, %3356
  %4353 = fmul fast float %4352, %4276
  %4354 = fadd fast float %4353, %3356
  %4355 = fmul fast float %4279, %4063
  %4356 = fmul fast float %4279, %4064
  %4357 = fmul fast float %4279, %4065
  %4358 = fadd fast float %4355, %3352
  %4359 = fadd fast float %4356, %3353
  %4360 = fadd fast float %4357, %3354
  %4361 = fmul fast float %4282, %4118
  %4362 = fadd fast float %4361, %3358
  %4363 = fmul fast float %4285, %4115
  %4364 = fmul fast float %4285, %4116
  %4365 = fmul fast float %4285, %4117
  %4366 = fadd fast float %4363, %3349
  %4367 = fadd fast float %4364, %3350
  %4368 = fadd fast float %4365, %3351
  br label %4397

; <label>:4369                                    ; preds = %4321
  %4370 = icmp eq i32 %4265, 8
  br i1 %4370, label %4371, label %4397

; <label>:4371                                    ; preds = %4369
  %4372 = fmul fast float %4270, %3958
  %4373 = fmul fast float %4270, %3959
  %4374 = fadd fast float %4372, %3341
  %4375 = fadd fast float %4373, %3342
  %4376 = call float @dx.op.binary.f32(i32 36, float %3357, float %3960)  ; FMin(a,b)
  %4377 = fsub fast float %4376, %3357
  %4378 = fmul fast float %4377, %4273
  %4379 = fadd fast float %4378, %3357
  %4380 = fsub fast float %3957, %3356
  %4381 = fmul fast float %4276, %4380
  %4382 = fadd fast float %4381, %3356
  %4383 = fmul fast float %4279, %4063
  %4384 = fmul fast float %4279, %4064
  %4385 = fmul fast float %4279, %4065
  %4386 = fadd fast float %4383, %3352
  %4387 = fadd fast float %4384, %3353
  %4388 = fadd fast float %4385, %3354
  %4389 = fmul fast float %4282, %4118
  %4390 = fadd fast float %4389, %3358
  %4391 = fmul fast float %4285, %4115
  %4392 = fmul fast float %4285, %4116
  %4393 = fmul fast float %4285, %4117
  %4394 = fadd fast float %4391, %3349
  %4395 = fadd fast float %4392, %3350
  %4396 = fadd fast float %4393, %3351
  br label %4397

; <label>:4397                                    ; preds = %4371, %4369, %4323, %4287, %4256, %3656, %3360, %3340
  %4398 = phi float [ %3341, %4256 ], [ %3341, %3656 ], [ %3341, %3340 ], [ %3341, %3360 ], [ %4292, %4287 ], [ %4326, %4323 ], [ %3341, %4369 ], [ %4374, %4371 ]
  %4399 = phi float [ %3342, %4256 ], [ %3342, %3656 ], [ %3342, %3340 ], [ %3342, %3360 ], [ %4293, %4287 ], [ %4327, %4323 ], [ %3342, %4369 ], [ %4375, %4371 ]
  %4400 = phi float [ %4257, %4256 ], [ %3343, %3656 ], [ %3343, %3340 ], [ %3343, %3360 ], [ %4257, %4287 ], [ %4257, %4323 ], [ %4257, %4369 ], [ %4257, %4371 ]
  %4401 = phi float [ %4258, %4256 ], [ %3344, %3656 ], [ %3344, %3340 ], [ %3344, %3360 ], [ %4258, %4287 ], [ %4258, %4323 ], [ %4258, %4369 ], [ %4258, %4371 ]
  %4402 = phi float [ %4259, %4256 ], [ %3345, %3656 ], [ %3345, %3340 ], [ %3345, %3360 ], [ %4259, %4287 ], [ %4259, %4323 ], [ %4259, %4369 ], [ %4259, %4371 ]
  %4403 = phi float [ %4260, %4256 ], [ %3346, %3656 ], [ %3346, %3340 ], [ %3346, %3360 ], [ %4260, %4287 ], [ %4260, %4323 ], [ %4260, %4369 ], [ %4260, %4371 ]
  %4404 = phi float [ %4261, %4256 ], [ %3347, %3656 ], [ %3347, %3340 ], [ %3347, %3360 ], [ %4261, %4287 ], [ %4261, %4323 ], [ %4261, %4369 ], [ %4261, %4371 ]
  %4405 = phi float [ %4262, %4256 ], [ %3348, %3656 ], [ %3348, %3340 ], [ %3348, %3360 ], [ %4262, %4287 ], [ %4262, %4323 ], [ %4262, %4369 ], [ %4262, %4371 ]
  %4406 = phi float [ %3349, %4256 ], [ %3349, %3656 ], [ %3349, %3340 ], [ %3349, %3360 ], [ %4318, %4287 ], [ %4366, %4323 ], [ %3349, %4369 ], [ %4394, %4371 ]
  %4407 = phi float [ %3350, %4256 ], [ %3350, %3656 ], [ %3350, %3340 ], [ %3350, %3360 ], [ %4319, %4287 ], [ %4367, %4323 ], [ %3350, %4369 ], [ %4395, %4371 ]
  %4408 = phi float [ %3351, %4256 ], [ %3351, %3656 ], [ %3351, %3340 ], [ %3351, %3360 ], [ %4320, %4287 ], [ %4368, %4323 ], [ %3351, %4369 ], [ %4396, %4371 ]
  %4409 = phi float [ %3352, %4256 ], [ %3352, %3656 ], [ %3352, %3340 ], [ %3352, %3360 ], [ %4306, %4287 ], [ %4358, %4323 ], [ %3352, %4369 ], [ %4386, %4371 ]
  %4410 = phi float [ %3353, %4256 ], [ %3353, %3656 ], [ %3353, %3340 ], [ %3353, %3360 ], [ %4307, %4287 ], [ %4359, %4323 ], [ %3353, %4369 ], [ %4387, %4371 ]
  %4411 = phi float [ %3354, %4256 ], [ %3354, %3656 ], [ %3354, %3340 ], [ %3354, %3360 ], [ %4308, %4287 ], [ %4360, %4323 ], [ %3354, %4369 ], [ %4388, %4371 ]
  %4412 = phi float [ %4263, %4256 ], [ %3355, %3656 ], [ %3355, %3340 ], [ %3355, %3360 ], [ %4263, %4287 ], [ %4263, %4323 ], [ %4263, %4369 ], [ %4263, %4371 ]
  %4413 = phi float [ %3356, %4256 ], [ %3356, %3656 ], [ %3356, %3340 ], [ %3356, %3360 ], [ %4299, %4287 ], [ %4354, %4323 ], [ %3356, %4369 ], [ %4382, %4371 ]
  %4414 = phi float [ %3357, %4256 ], [ %3357, %3656 ], [ %3357, %3340 ], [ %3357, %3360 ], [ %4296, %4287 ], [ %4331, %4323 ], [ %3357, %4369 ], [ %4379, %4371 ]
  %4415 = phi float [ %3358, %4256 ], [ %3358, %3656 ], [ %3358, %3340 ], [ %3358, %3360 ], [ %4311, %4287 ], [ %4362, %4323 ], [ %3358, %4369 ], [ %4390, %4371 ]
  %4416 = phi float [ %4264, %4256 ], [ %3359, %3656 ], [ %3359, %3340 ], [ %3359, %3360 ], [ %4264, %4287 ], [ %4264, %4323 ], [ %4264, %4369 ], [ %4264, %4371 ]
  %4417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.f32 %4417, 0
  %4419 = call float @dx.op.dot2.f32(i32 54, float %4398, float %4399, float %4398, float %4399)  ; Dot2(ax,ay,bx,by)
  %4420 = fmul fast float %4419, 0x3FE3333340000000
  %4421 = fsub fast float 1.000000e+00, %4420
  %4422 = call float @dx.op.dot3.f32(i32 55, float %4398, float %4399, float %4421, float %4398, float %4399, float %4421)  ; Dot3(ax,ay,az,bx,by,bz)
  %4423 = call float @dx.op.unary.f32(i32 25, float %4422)  ; Rsqrt(value)
  %4424 = fmul fast float %4423, %4398
  %4425 = fmul fast float %4423, %4399
  %4426 = fmul fast float %4421, %4423
  %4427 = fmul fast float %4426, %105
  %4428 = fmul fast float %4426, %106
  %4429 = fmul fast float %4426, %107
  %4430 = fmul fast float %4424, %70
  %4431 = fmul fast float %4424, %71
  %4432 = fmul fast float %4424, %72
  %4433 = fadd fast float %4427, %4430
  %4434 = fadd fast float %4428, %4431
  %4435 = fadd fast float %4429, %4432
  %4436 = fmul fast float %117, %4425
  %4437 = fmul fast float %118, %4425
  %4438 = fmul fast float %119, %4425
  %4439 = fadd fast float %4433, %4436
  %4440 = fadd fast float %4434, %4437
  %4441 = fadd fast float %4435, %4438
  %4442 = call float @dx.op.dot3.f32(i32 55, float %4439, float %4440, float %4441, float %4439, float %4440, float %4441)  ; Dot3(ax,ay,az,bx,by,bz)
  %4443 = call float @dx.op.unary.f32(i32 25, float %4442)  ; Rsqrt(value)
  %4444 = fmul fast float %4439, %4443
  %4445 = fmul fast float %4440, %4443
  %4446 = fmul fast float %4441, %4443
  %4447 = and i32 %51, 1
  %4448 = icmp eq i32 %4447, 0
  br i1 %4448, label %4449, label %5041

; <label>:4449                                    ; preds = %4397
  %4450 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %4451 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4452 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4453 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %4454 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4455 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4456 = fadd fast float %4450, %153
  %4457 = fadd fast float %4451, %154
  %4458 = fadd fast float %4452, %155
  %4459 = fadd fast float %4453, %153
  %4460 = fadd fast float %4454, %154
  %4461 = fadd fast float %4455, %155
  %4462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4462, 0
  %4464 = extractvalue %dx.types.CBufRet.f32 %4462, 1
  %4465 = extractvalue %dx.types.CBufRet.f32 %4462, 2
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4468 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4469 = fmul fast float %4463, %98
  %4470 = fmul fast float %4469, %4467
  %4471 = fmul fast float %4464, %99
  %4472 = fmul fast float %4471, %4468
  %4473 = fptoui float %4470 to i32
  %4474 = fptoui float %4472 to i32
  %4475 = fadd fast float %4463, -1.000000e+00
  %4476 = fadd fast float %4464, -1.000000e+00
  %4477 = fptoui float %4475 to i32
  %4478 = fptoui float %4476 to i32
  %4479 = call i32 @dx.op.binary.i32(i32 40, i32 %4473, i32 %4477)  ; UMin(a,b)
  %4480 = call i32 @dx.op.binary.i32(i32 40, i32 %4474, i32 %4478)  ; UMin(a,b)
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 2
  %4483 = extractvalue %dx.types.CBufRet.f32 %4481, 3
  %4484 = fmul fast float %4482, %86
  %4485 = fsub fast float %4484, %4483
  %4486 = fadd fast float %4465, -1.000000e+00
  %4487 = call float @dx.op.binary.f32(i32 36, float %4485, float %4486)  ; FMin(a,b)
  %4488 = fptoui float %4487 to i32
  %4489 = fptoui float %4463 to i32
  %4490 = fptoui float %4464 to i32
  %4491 = mul i32 %4488, %4490
  %4492 = add i32 %4491, %4480
  %4493 = mul i32 %4492, %4489
  %4494 = add i32 %4493, %4479
  %4495 = shl i32 %4494, 2
  %4496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4495, i32 undef)  ; BufferLoad(srv,index,wot)
  %4497 = extractvalue %dx.types.ResRet.i32 %4496, 0
  %4498 = and i32 %4497, 1023
  %4499 = lshr i32 %4497, 10
  %4500 = icmp eq i32 %4498, 0
  br i1 %4500, label %5004, label %4501

; <label>:4501                                    ; preds = %4449
  %4502 = and i32 %4497, 1023
  br label %4503

; <label>:4503                                    ; preds = %4635, %4501
  %4504 = phi i32 [ %4585, %4635 ], [ 0, %4501 ]
  %4505 = phi float [ %4636, %4635 ], [ 0.000000e+00, %4501 ]
  %4506 = phi float [ %4637, %4635 ], [ %4418, %4501 ]
  %4507 = phi float [ %4638, %4635 ], [ %4416, %4501 ]
  %4508 = phi float [ %4639, %4635 ], [ %4409, %4501 ]
  %4509 = phi float [ %4640, %4635 ], [ %4410, %4501 ]
  %4510 = phi float [ %4641, %4635 ], [ %4411, %4501 ]
  %4511 = phi float [ %4642, %4635 ], [ 0.000000e+00, %4501 ]
  %4512 = phi float [ %4643, %4635 ], [ 0.000000e+00, %4501 ]
  %4513 = phi float [ %4644, %4635 ], [ %4406, %4501 ]
  %4514 = phi float [ %4645, %4635 ], [ %4407, %4501 ]
  %4515 = phi float [ %4646, %4635 ], [ %4408, %4501 ]
  %4516 = phi float [ %4647, %4635 ], [ %4403, %4501 ]
  %4517 = phi float [ %4648, %4635 ], [ %4404, %4501 ]
  %4518 = phi float [ %4649, %4635 ], [ %4405, %4501 ]
  %4519 = phi float [ %4650, %4635 ], [ %4444, %4501 ]
  %4520 = phi float [ %4651, %4635 ], [ %4445, %4501 ]
  %4521 = phi float [ %4652, %4635 ], [ %4446, %4501 ]
  %4522 = phi float [ %4653, %4635 ], [ %4414, %4501 ]
  %4523 = phi float [ %4654, %4635 ], [ %4413, %4501 ]
  %4524 = phi float [ %4655, %4635 ], [ 0.000000e+00, %4501 ]
  %4525 = phi float [ %4656, %4635 ], [ %4412, %4501 ]
  %4526 = phi float [ %4657, %4635 ], [ %4400, %4501 ]
  %4527 = phi float [ %4658, %4635 ], [ %4401, %4501 ]
  %4528 = phi float [ %4659, %4635 ], [ %4402, %4501 ]
  %4529 = add nuw nsw i32 %4504, %4499
  %4530 = shl i32 %4529, 2
  %4531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4530, i32 undef)  ; BufferLoad(srv,index,wot)
  %4532 = extractvalue %dx.types.ResRet.i32 %4531, 0
  %4533 = shl i32 %4532, 8
  %4534 = or i32 %4533, 48
  %4535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4534, i32 undef)  ; BufferLoad(srv,index,wot)
  %4536 = extractvalue %dx.types.ResRet.f32 %4535, 0
  %4537 = extractvalue %dx.types.ResRet.f32 %4535, 1
  %4538 = extractvalue %dx.types.ResRet.f32 %4535, 2
  %4539 = extractvalue %dx.types.ResRet.f32 %4535, 3
  %4540 = or i32 %4533, 64
  %4541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4540, i32 undef)  ; BufferLoad(srv,index,wot)
  %4542 = extractvalue %dx.types.ResRet.i32 %4541, 0
  %4543 = extractvalue %dx.types.ResRet.i32 %4541, 1
  %4544 = or i32 %4533, 80
  %4545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4544, i32 undef)  ; BufferLoad(srv,index,wot)
  %4546 = extractvalue %dx.types.ResRet.f32 %4545, 2
  %4547 = extractvalue %dx.types.ResRet.f32 %4545, 3
  %4548 = or i32 %4533, 96
  %4549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4551 = extractvalue %dx.types.ResRet.f32 %4549, 1
  %4552 = extractvalue %dx.types.ResRet.f32 %4549, 2
  %4553 = extractvalue %dx.types.ResRet.f32 %4549, 3
  %4554 = or i32 %4533, 112
  %4555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4554, i32 undef)  ; BufferLoad(srv,index,wot)
  %4556 = extractvalue %dx.types.ResRet.f32 %4555, 2
  %4557 = or i32 %4533, 128
  %4558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.f32 %4558, 0
  %4560 = extractvalue %dx.types.ResRet.f32 %4558, 1
  %4561 = extractvalue %dx.types.ResRet.f32 %4558, 2
  %4562 = extractvalue %dx.types.ResRet.f32 %4558, 3
  %4563 = or i32 %4533, 144
  %4564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4563, i32 undef)  ; BufferLoad(srv,index,wot)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4566 = extractvalue %dx.types.ResRet.f32 %4564, 1
  %4567 = extractvalue %dx.types.ResRet.f32 %4564, 2
  %4568 = extractvalue %dx.types.ResRet.f32 %4564, 3
  %4569 = or i32 %4533, 160
  %4570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = extractvalue %dx.types.ResRet.f32 %4570, 1
  %4573 = extractvalue %dx.types.ResRet.f32 %4570, 2
  %4574 = extractvalue %dx.types.ResRet.f32 %4570, 3
  %4575 = or i32 %4533, 192
  %4576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.i32 %4576, 0
  %4578 = or i32 %4533, 208
  %4579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4578, i32 undef)  ; BufferLoad(srv,index,wot)
  %4580 = extractvalue %dx.types.ResRet.f32 %4579, 0
  %4581 = or i32 %4533, 248
  %4582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4581, i32 undef)  ; BufferLoad(srv,index,wot)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = add nuw nsw i32 %4504, 1
  %4586 = bitcast float %4539 to i32
  %4587 = and i32 %4586, 512
  %4588 = icmp eq i32 %4587, 0
  %4589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4533, i32 undef)  ; BufferLoad(srv,index,wot)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = extractvalue %dx.types.ResRet.f32 %4589, 1
  %4592 = extractvalue %dx.types.ResRet.f32 %4589, 2
  %4593 = extractvalue %dx.types.ResRet.f32 %4589, 3
  %4594 = call float @dx.op.dot4.f32(i32 56, float %4590, float %4591, float %4592, float %4593, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4595 = or i32 %4533, 16
  %4596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4595, i32 undef)  ; BufferLoad(srv,index,wot)
  %4597 = extractvalue %dx.types.ResRet.f32 %4596, 0
  %4598 = extractvalue %dx.types.ResRet.f32 %4596, 1
  %4599 = extractvalue %dx.types.ResRet.f32 %4596, 2
  %4600 = extractvalue %dx.types.ResRet.f32 %4596, 3
  %4601 = call float @dx.op.dot4.f32(i32 56, float %4597, float %4598, float %4599, float %4600, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4602 = or i32 %4533, 32
  %4603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4602, i32 undef)  ; BufferLoad(srv,index,wot)
  %4604 = extractvalue %dx.types.ResRet.f32 %4603, 0
  %4605 = extractvalue %dx.types.ResRet.f32 %4603, 1
  %4606 = extractvalue %dx.types.ResRet.f32 %4603, 2
  %4607 = extractvalue %dx.types.ResRet.f32 %4603, 3
  %4608 = call float @dx.op.dot4.f32(i32 56, float %4604, float %4605, float %4606, float %4607, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4609 = call float @dx.op.unary.f32(i32 27, float %4594)  ; Round_ni(value)
  %4610 = call float @dx.op.unary.f32(i32 6, float %4609)  ; FAbs(value)
  %4611 = call float @dx.op.unary.f32(i32 27, float %4601)  ; Round_ni(value)
  %4612 = call float @dx.op.unary.f32(i32 6, float %4611)  ; FAbs(value)
  %4613 = call float @dx.op.unary.f32(i32 6, float %4608)  ; FAbs(value)
  %4614 = call float @dx.op.unary.f32(i32 27, float %4613)  ; Round_ni(value)
  %4615 = fadd fast float %4612, %4610
  %4616 = fadd fast float %4615, %4614
  %4617 = fcmp fast oeq float %4616, 0.000000e+00
  %4618 = call float @dx.op.dot4.f32(i32 56, float %4590, float %4591, float %4592, float %4593, float %4456, float %4457, float %4458, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4619 = call float @dx.op.dot4.f32(i32 56, float %4597, float %4598, float %4599, float %4600, float %4456, float %4457, float %4458, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4620 = call float @dx.op.dot4.f32(i32 56, float %4590, float %4591, float %4592, float %4593, float %4459, float %4460, float %4461, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4621 = call float @dx.op.dot4.f32(i32 56, float %4597, float %4598, float %4599, float %4600, float %4459, float %4460, float %4461, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4622 = fsub fast float %4618, %4594
  %4623 = fsub fast float %4620, %4594
  %4624 = fsub fast float %4619, %4601
  %4625 = fsub fast float %4621, %4601
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4536, float %4537, float %4538, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.f32 %4627, 2
  %4629 = fadd fast float %4628, %4626
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4627, 0
  %4632 = fcmp fast ogt float %4630, %4631
  %4633 = and i1 %4617, %4632
  %4634 = and i1 %4588, %4633
  br i1 %4634, label %4661, label %4635

; <label>:4635                                    ; preds = %4990, %4742, %4661, %4503
  %4636 = phi float [ %4505, %4661 ], [ %4745, %4742 ], [ %4745, %4990 ], [ %4505, %4503 ]
  %4637 = phi float [ %4506, %4661 ], [ %4506, %4742 ], [ %4966, %4990 ], [ %4506, %4503 ]
  %4638 = phi float [ %4507, %4661 ], [ %4507, %4742 ], [ %4964, %4990 ], [ %4507, %4503 ]
  %4639 = phi float [ %4508, %4661 ], [ %4508, %4742 ], [ %4942, %4990 ], [ %4508, %4503 ]
  %4640 = phi float [ %4509, %4661 ], [ %4509, %4742 ], [ %4943, %4990 ], [ %4509, %4503 ]
  %4641 = phi float [ %4510, %4661 ], [ %4510, %4742 ], [ %4944, %4990 ], [ %4510, %4503 ]
  %4642 = phi float [ %4511, %4661 ], [ %4511, %4742 ], [ %4869, %4990 ], [ %4511, %4503 ]
  %4643 = phi float [ %4512, %4661 ], [ %4512, %4742 ], [ %4867, %4990 ], [ %4512, %4503 ]
  %4644 = phi float [ %4513, %4661 ], [ %4513, %4742 ], [ %4912, %4990 ], [ %4513, %4503 ]
  %4645 = phi float [ %4514, %4661 ], [ %4514, %4742 ], [ %4913, %4990 ], [ %4514, %4503 ]
  %4646 = phi float [ %4515, %4661 ], [ %4515, %4742 ], [ %4914, %4990 ], [ %4515, %4503 ]
  %4647 = phi float [ %4516, %4661 ], [ %4516, %4742 ], [ %5000, %4990 ], [ %4516, %4503 ]
  %4648 = phi float [ %4517, %4661 ], [ %4517, %4742 ], [ %5001, %4990 ], [ %4517, %4503 ]
  %4649 = phi float [ %4518, %4661 ], [ %4518, %4742 ], [ %5002, %4990 ], [ %4518, %4503 ]
  %4650 = phi float [ %4519, %4661 ], [ %4519, %4742 ], [ %4848, %4990 ], [ %4519, %4503 ]
  %4651 = phi float [ %4520, %4661 ], [ %4520, %4742 ], [ %4849, %4990 ], [ %4520, %4503 ]
  %4652 = phi float [ %4521, %4661 ], [ %4521, %4742 ], [ %4850, %4990 ], [ %4521, %4503 ]
  %4653 = phi float [ %4522, %4661 ], [ %4522, %4742 ], [ %4922, %4990 ], [ %4522, %4503 ]
  %4654 = phi float [ %4523, %4661 ], [ %4523, %4742 ], [ %4919, %4990 ], [ %4523, %4503 ]
  %4655 = phi float [ %4524, %4661 ], [ %4524, %4742 ], [ %4916, %4990 ], [ %4524, %4503 ]
  %4656 = phi float [ %4525, %4661 ], [ %4525, %4742 ], [ %4865, %4990 ], [ %4525, %4503 ]
  %4657 = phi float [ %4526, %4661 ], [ %4526, %4742 ], [ %4860, %4990 ], [ %4526, %4503 ]
  %4658 = phi float [ %4527, %4661 ], [ %4527, %4742 ], [ %4861, %4990 ], [ %4527, %4503 ]
  %4659 = phi float [ %4528, %4661 ], [ %4528, %4742 ], [ %4862, %4990 ], [ %4528, %4503 ]
  %4660 = icmp eq i32 %4585, %4502
  br i1 %4660, label %5003, label %4503

; <label>:4661                                    ; preds = %4503
  %4662 = extractvalue %dx.types.ResRet.f32 %4555, 3
  %4663 = extractvalue %dx.types.ResRet.f32 %4555, 1
  %4664 = extractvalue %dx.types.ResRet.f32 %4555, 0
  %4665 = extractvalue %dx.types.ResRet.f32 %4545, 1
  %4666 = extractvalue %dx.types.ResRet.f32 %4545, 0
  %4667 = extractvalue %dx.types.ResRet.i32 %4541, 3
  %4668 = extractvalue %dx.types.ResRet.i32 %4541, 2
  %4669 = add i32 %4667, 0
  %4670 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4669, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4672 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4670, %dx.types.Handle %4671, float %4594, float %4601, float undef, float undef, i32 0, i32 0, i32 undef, float %4622, float %4624, float undef, float %4623, float %4625, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = fmul fast float %4673, %4666
  %4675 = fadd fast float %4674, %4665
  %4676 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4677 = fmul fast float %4594, %4550
  %4678 = call float @dx.op.tertiary.f32(i32 46, float %4551, float %4601, float %4677)  ; FMad(a,b,c)
  %4679 = fadd fast float %4678, %4664
  %4680 = fmul fast float %4594, %4552
  %4681 = call float @dx.op.tertiary.f32(i32 46, float %4553, float %4601, float %4680)  ; FMad(a,b,c)
  %4682 = fadd fast float %4681, %4663
  %4683 = fmul fast float %4622, %4550
  %4684 = call float @dx.op.tertiary.f32(i32 46, float %4551, float %4624, float %4683)  ; FMad(a,b,c)
  %4685 = fmul fast float %4622, %4552
  %4686 = call float @dx.op.tertiary.f32(i32 46, float %4553, float %4624, float %4685)  ; FMad(a,b,c)
  %4687 = fmul fast float %4623, %4550
  %4688 = call float @dx.op.tertiary.f32(i32 46, float %4551, float %4625, float %4687)  ; FMad(a,b,c)
  %4689 = fmul fast float %4623, %4552
  %4690 = call float @dx.op.tertiary.f32(i32 46, float %4553, float %4625, float %4689)  ; FMad(a,b,c)
  %4691 = add i32 %4668, 0
  %4692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4691, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4693 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4692, %dx.types.Handle %4671, float %4679, float %4682, float undef, float undef, i32 0, i32 0, i32 undef, float %4684, float %4686, float undef, float %4688, float %4690, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4694 = extractvalue %dx.types.ResRet.f32 %4693, 0
  %4695 = and i32 %4586, 1024
  %4696 = icmp ne i32 %4695, 0
  %4697 = fcmp fast ogt float %4694, 0x3FE0101020000000
  %4698 = uitofp i1 %4697 to float
  %4699 = select i1 %4696, float %4698, float %4694
  %4700 = and i32 %4586, 8192
  %4701 = icmp ne i32 %4700, 0
  %4702 = select i1 %4701, float %4662, float 1.000000e+00
  %4703 = fmul fast float %4594, 2.000000e+00
  %4704 = fadd fast float %4703, -1.000000e+00
  %4705 = call float @dx.op.unary.f32(i32 6, float %4704)  ; FAbs(value)
  %4706 = fmul fast float %4705, %4583
  %4707 = fsub fast float %4706, %4583
  %4708 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4709 = fmul fast float %4601, 2.000000e+00
  %4710 = fadd fast float %4709, -1.000000e+00
  %4711 = call float @dx.op.unary.f32(i32 6, float %4710)  ; FAbs(value)
  %4712 = fmul fast float %4711, %4584
  %4713 = fsub fast float %4712, %4584
  %4714 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4715 = fmul fast float %4613, %4546
  %4716 = fsub fast float %4715, %4546
  %4717 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  %4718 = fmul fast float %4676, %4702
  %4719 = fmul fast float %4718, %4673
  %4720 = fmul fast float %4719, %4708
  %4721 = fmul fast float %4720, %4699
  %4722 = fmul fast float %4721, %4714
  %4723 = fmul fast float %4722, %4717
  %4724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4725 = extractvalue %dx.types.CBufRet.f32 %4724, 1
  %4726 = extractvalue %dx.types.CBufRet.f32 %4724, 0
  %4727 = fsub fast float %4630, %4726
  %4728 = fmul fast float %4727, %4725
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fmul fast float %4723, %4547
  %4731 = fadd fast float %4723, %4547
  %4732 = fmul fast float %4731, %4556
  %4733 = fsub fast float %4732, %4556
  %4734 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4735 = and i32 %4586, 128
  %4736 = icmp ne i32 %4735, 0
  %4737 = select i1 %4736, float %4734, float %4730
  %4738 = fmul fast float %4737, %4729
  %4739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4740 = extractvalue %dx.types.CBufRet.f32 %4739, 0
  %4741 = fcmp fast ugt float %4738, %4740
  br i1 %4741, label %4742, label %4635

; <label>:4742                                    ; preds = %4661
  %4743 = select i1 %4701, float %4738, float 0.000000e+00
  %4744 = fadd fast float %4743, %4505
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  br i1 %4701, label %4635, label %4746

; <label>:4746                                    ; preds = %4742
  %4747 = and i32 %4586, 4
  %4748 = and i32 %4586, 8
  %4749 = add i32 %4542, 0
  %4750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4749, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4752 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4750, %dx.types.Handle %4751, float %4679, float %4682, float undef, float undef, i32 0, i32 0, i32 undef, float %4684, float %4686, float undef, float %4688, float %4690, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4753 = extractvalue %dx.types.ResRet.f32 %4752, 0
  %4754 = extractvalue %dx.types.ResRet.f32 %4752, 1
  %4755 = extractvalue %dx.types.ResRet.f32 %4752, 2
  %4756 = extractvalue %dx.types.ResRet.f32 %4752, 3
  %4757 = bitcast float %4568 to i32
  %4758 = and i32 %4757, 255
  %4759 = uitofp i32 %4758 to float
  %4760 = lshr i32 %4757, 8
  %4761 = and i32 %4760, 255
  %4762 = uitofp i32 %4761 to float
  %4763 = fmul fast float %4756, %4759
  %4764 = fadd fast float %4763, %4762
  %4765 = fmul fast float %4764, 0x3F70101000000000
  %4766 = add i32 %4543, 0
  %4767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4766, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4768 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4767, %dx.types.Handle %4751, float %4679, float %4682, float undef, float undef, i32 0, i32 0, i32 undef, float %4684, float %4686, float undef, float %4688, float %4690, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4769 = extractvalue %dx.types.ResRet.f32 %4768, 0
  %4770 = extractvalue %dx.types.ResRet.f32 %4768, 1
  %4771 = extractvalue %dx.types.ResRet.f32 %4768, 2
  %4772 = extractvalue %dx.types.ResRet.f32 %4768, 3
  %4773 = bitcast float %4562 to i32
  %4774 = and i32 %4773, 255
  %4775 = uitofp i32 %4774 to float
  %4776 = lshr i32 %4773, 8
  %4777 = and i32 %4776, 255
  %4778 = uitofp i32 %4777 to float
  %4779 = lshr i32 %4773, 16
  %4780 = and i32 %4779, 255
  %4781 = uitofp i32 %4780 to float
  %4782 = fmul fast float %4781, 0x3F70101000000000
  %4783 = fmul fast float %4769, %4775
  %4784 = fadd fast float %4783, %4778
  %4785 = fmul fast float %4784, 0x3F70101000000000
  %4786 = fadd fast float %4770, -5.000000e-01
  %4787 = fadd fast float %4772, -5.000000e-01
  %4788 = fmul fast float %4786, %4782
  %4789 = fmul fast float %4787, %4782
  %4790 = fadd fast float %4788, 5.000000e-01
  %4791 = fadd fast float %4789, 5.000000e-01
  %4792 = fmul fast float %4753, %4571
  %4793 = fmul fast float %4754, %4572
  %4794 = fmul fast float %4755, %4573
  %4795 = fmul fast float %4790, 2.000000e+00
  %4796 = fadd fast float %4795, -1.000000e+00
  %4797 = fmul fast float %4791, 2.000000e+00
  %4798 = fadd fast float %4797, -1.000000e+00
  %4799 = fadd fast float %4796, %4798
  %4800 = fmul fast float %4799, 5.000000e-01
  %4801 = fsub fast float %4796, %4798
  %4802 = fmul fast float %4801, 5.000000e-01
  %4803 = call float @dx.op.unary.f32(i32 6, float %4800)  ; FAbs(value)
  %4804 = fsub fast float 1.000000e+00, %4803
  %4805 = call float @dx.op.unary.f32(i32 6, float %4802)  ; FAbs(value)
  %4806 = fsub fast float %4804, %4805
  %4807 = call float @dx.op.dot3.f32(i32 55, float %4800, float %4802, float %4806, float %4800, float %4802, float %4806)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = call float @dx.op.unary.f32(i32 25, float %4807)  ; Rsqrt(value)
  %4809 = fmul fast float %4800, %4808
  %4810 = fmul fast float %4802, %4808
  %4811 = fmul fast float %4808, %4806
  %4812 = fmul fast float %4811, %4536
  %4813 = fmul fast float %4811, %4537
  %4814 = fmul fast float %4811, %4538
  %4815 = fmul fast float %4809, %4559
  %4816 = fmul fast float %4809, %4560
  %4817 = fmul fast float %4809, %4561
  %4818 = fadd fast float %4815, %4812
  %4819 = fadd fast float %4816, %4813
  %4820 = fadd fast float %4817, %4814
  %4821 = fmul fast float %4810, %4565
  %4822 = fmul fast float %4810, %4566
  %4823 = fmul fast float %4810, %4567
  %4824 = fadd fast float %4818, %4821
  %4825 = fadd fast float %4819, %4822
  %4826 = fadd fast float %4820, %4823
  %4827 = call float @dx.op.dot3.f32(i32 55, float %4824, float %4825, float %4826, float %4824, float %4825, float %4826)  ; Dot3(ax,ay,az,bx,by,bz)
  %4828 = call float @dx.op.unary.f32(i32 25, float %4827)  ; Rsqrt(value)
  %4829 = fmul fast float %4824, %4828
  %4830 = fmul fast float %4825, %4828
  %4831 = fmul fast float %4826, %4828
  %4832 = icmp ne i32 %4748, 0
  %4833 = select i1 %4832, float 1.000000e+00, float 0.000000e+00
  %4834 = fmul fast float %4738, %4833
  %4835 = and i32 %4586, 1
  %4836 = icmp eq i32 %4835, 0
  br i1 %4836, label %4837, label %4841

; <label>:4837                                    ; preds = %4746
  %4838 = fsub fast float %4829, %4519
  %4839 = fsub fast float %4830, %4520
  %4840 = fsub fast float %4831, %4521
  br label %4841

; <label>:4841                                    ; preds = %4837, %4746
  %4842 = phi float [ %4838, %4837 ], [ %4829, %4746 ]
  %4843 = phi float [ %4839, %4837 ], [ %4830, %4746 ]
  %4844 = phi float [ %4840, %4837 ], [ %4831, %4746 ]
  %4845 = fmul float %4844, %4834
  %4846 = fmul float %4843, %4834
  %4847 = fmul float %4842, %4834
  %4848 = fadd fast float %4847, %4519
  %4849 = fadd fast float %4846, %4520
  %4850 = fadd fast float %4845, %4521
  %4851 = icmp ne i32 %4747, 0
  %4852 = select i1 %4851, float 1.000000e+00, float 0.000000e+00
  %4853 = fmul fast float %4738, %4852
  %4854 = fsub fast float %4792, %4526
  %4855 = fsub fast float %4793, %4527
  %4856 = fsub fast float %4794, %4528
  %4857 = fmul fast float %4854, %4853
  %4858 = fmul fast float %4855, %4853
  %4859 = fmul fast float %4856, %4853
  %4860 = fadd fast float %4857, %4526
  %4861 = fadd fast float %4858, %4527
  %4862 = fadd fast float %4859, %4528
  %4863 = fsub fast float %4765, %4525
  %4864 = fmul fast float %4863, %4853
  %4865 = fadd fast float %4864, %4525
  %4866 = fmul fast float %4853, %4512
  %4867 = fsub fast float %4512, %4866
  %4868 = fmul fast float %4853, %4511
  %4869 = fsub fast float %4511, %4868
  %4870 = bitcast float %4580 to i32
  %4871 = lshr i32 %4870, 16
  %4872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4871)  ; LegacyF16ToF32(value)
  %4873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %4874 = extractvalue %dx.types.ResRet.i32 %4873, 0
  %4875 = and i32 %4874, 1
  %4876 = icmp eq i32 %4875, 0
  br i1 %4876, label %4877, label %4902

; <label>:4877                                    ; preds = %4841
  %4878 = fadd fast float %4765, 0xBFB99999A0000000
  %4879 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4880 = fmul fast float %4879, 0x3FF1C71C80000000
  %4881 = fsub fast float 1.000000e+00, %4880
  %4882 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4883 = fmul fast float %4882, %4792
  %4884 = fmul fast float %4882, %4793
  %4885 = fmul fast float %4882, %4794
  %4886 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4887 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4888 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4889 = call float @dx.op.binary.f32(i32 35, float %4887, float %4888)  ; FMax(a,b)
  %4890 = call float @dx.op.binary.f32(i32 35, float %4886, float %4889)  ; FMax(a,b)
  %4891 = fcmp fast ogt float %4890, 0.000000e+00
  %4892 = bitcast float %4890 to i32
  %4893 = sub nsw i32 2129859010, %4892
  %4894 = bitcast i32 %4893 to float
  %4895 = select i1 %4891, float %4894, float 0.000000e+00
  %4896 = fmul fast float %4886, %4872
  %4897 = fmul fast float %4887, %4872
  %4898 = fmul fast float %4888, %4872
  %4899 = fmul fast float %4896, %4895
  %4900 = fmul fast float %4897, %4895
  %4901 = fmul fast float %4898, %4895
  br label %4902

; <label>:4902                                    ; preds = %4877, %4841
  %4903 = phi float [ %4872, %4841 ], [ %4899, %4877 ]
  %4904 = phi float [ %4872, %4841 ], [ %4900, %4877 ]
  %4905 = phi float [ %4872, %4841 ], [ %4901, %4877 ]
  %4906 = fsub fast float %4903, %4513
  %4907 = fsub fast float %4904, %4514
  %4908 = fsub fast float %4905, %4515
  %4909 = fmul fast float %4906, %4853
  %4910 = fmul fast float %4907, %4853
  %4911 = fmul fast float %4908, %4853
  %4912 = fadd fast float %4909, %4513
  %4913 = fadd fast float %4910, %4514
  %4914 = fadd fast float %4911, %4515
  %4915 = fadd fast float %4738, %4524
  %4916 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4917 = fsub fast float %4785, %4523
  %4918 = fmul fast float %4917, %4834
  %4919 = fadd fast float %4918, %4523
  %4920 = fsub fast float %4771, %4522
  %4921 = fmul fast float %4920, %4834
  %4922 = fadd fast float %4921, %4522
  br i1 %4836, label %4931, label %4923

; <label>:4923                                    ; preds = %4902
  %4924 = and i32 %4586, 32768
  %4925 = icmp eq i32 %4924, 0
  br i1 %4925, label %4941, label %4926

; <label>:4926                                    ; preds = %4923
  %4927 = fmul fast float %4834, 1.270000e+02
  %4928 = fadd fast float %4927, %4508
  %4929 = fadd fast float %4927, %4509
  %4930 = fadd fast float %4927, %4510
  br label %4941

; <label>:4931                                    ; preds = %4902
  %4932 = fsub fast float 1.270000e+02, %4508
  %4933 = fsub fast float 1.270000e+02, %4509
  %4934 = fsub fast float 1.270000e+02, %4510
  %4935 = fmul fast float %4834, %4932
  %4936 = fmul fast float %4834, %4933
  %4937 = fmul fast float %4834, %4934
  %4938 = fadd fast float %4935, %4508
  %4939 = fadd fast float %4936, %4509
  %4940 = fadd fast float %4937, %4510
  br label %4941

; <label>:4941                                    ; preds = %4931, %4926, %4923
  %4942 = phi float [ %4928, %4926 ], [ %4508, %4923 ], [ %4938, %4931 ]
  %4943 = phi float [ %4929, %4926 ], [ %4509, %4923 ], [ %4939, %4931 ]
  %4944 = phi float [ %4930, %4926 ], [ %4510, %4923 ], [ %4940, %4931 ]
  %4945 = call float @dx.op.dot3.f32(i32 55, float %4792, float %4793, float %4794, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4947 = extractvalue %dx.types.CBufRet.f32 %4946, 0
  %4948 = extractvalue %dx.types.CBufRet.f32 %4946, 1
  %4949 = fmul fast float %4948, %4945
  %4950 = fadd fast float %4949, %4947
  %4951 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4952 = bitcast float %4574 to i32
  %4953 = and i32 %4952, 65535
  %4954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4953)  ; LegacyF16ToF32(value)
  %4955 = lshr i32 %4952, 16
  %4956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4955)  ; LegacyF16ToF32(value)
  %4957 = fcmp fast oge float %4954, 0.000000e+00
  %4958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4959 = extractvalue %dx.types.CBufRet.f32 %4958, 0
  %4960 = select i1 %4957, float %4954, float %4959
  %4961 = fadd fast float %4960, %4956
  %4962 = fsub fast float %4951, %4507
  %4963 = fmul fast float %4962, %4738
  %4964 = fadd fast float %4963, %4507
  %4965 = fmul fast float %4961, %4738
  %4966 = call float @dx.op.binary.f32(i32 35, float %4506, float %4965)  ; FMax(a,b)
  %4967 = and i32 %4586, 16
  %4968 = icmp eq i32 %4967, 0
  br i1 %4968, label %4990, label %4969

; <label>:4969                                    ; preds = %4941
  %4970 = add i32 %4577, 0
  %4971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4970, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4972 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4971, %dx.types.Handle %4751, float %4679, float %4682, float undef, float undef, i32 0, i32 0, i32 undef, float %4684, float %4686, float undef, float %4688, float %4690, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4973 = extractvalue %dx.types.ResRet.f32 %4972, 0
  %4974 = extractvalue %dx.types.ResRet.f32 %4972, 1
  %4975 = extractvalue %dx.types.ResRet.f32 %4972, 2
  %4976 = and i32 %4870, 65535
  %4977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4976)  ; LegacyF16ToF32(value)
  %4978 = fmul fast float %4973, %4571
  %4979 = fmul fast float %4974, %4572
  %4980 = fmul fast float %4975, %4573
  %4981 = and i32 %4586, 16384
  %4982 = icmp ne i32 %4981, 0
  %4983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4983, 0
  %4985 = select i1 %4982, float %4984, float 1.000000e+00
  %4986 = fmul fast float %4985, %4977
  %4987 = fmul fast float %4978, %4986
  %4988 = fmul fast float %4979, %4986
  %4989 = fmul fast float %4980, %4986
  br label %4990

; <label>:4990                                    ; preds = %4969, %4941
  %4991 = phi float [ %4987, %4969 ], [ 0.000000e+00, %4941 ]
  %4992 = phi float [ %4988, %4969 ], [ 0.000000e+00, %4941 ]
  %4993 = phi float [ %4989, %4969 ], [ 0.000000e+00, %4941 ]
  %4994 = fsub fast float %4991, %4516
  %4995 = fsub fast float %4992, %4517
  %4996 = fsub fast float %4993, %4518
  %4997 = fmul fast float %4994, %4738
  %4998 = fmul fast float %4995, %4738
  %4999 = fmul fast float %4996, %4738
  %5000 = fadd fast float %4997, %4516
  %5001 = fadd fast float %4998, %4517
  %5002 = fadd fast float %4999, %4518
  br label %4635

; <label>:5003                                    ; preds = %4635
  br label %5004

; <label>:5004                                    ; preds = %5003, %4449
  %5005 = phi float [ 0.000000e+00, %4449 ], [ %4636, %5003 ]
  %5006 = phi float [ %4418, %4449 ], [ %4637, %5003 ]
  %5007 = phi float [ %4416, %4449 ], [ %4638, %5003 ]
  %5008 = phi float [ %4409, %4449 ], [ %4639, %5003 ]
  %5009 = phi float [ %4410, %4449 ], [ %4640, %5003 ]
  %5010 = phi float [ %4411, %4449 ], [ %4641, %5003 ]
  %5011 = phi float [ 0.000000e+00, %4449 ], [ %4642, %5003 ]
  %5012 = phi float [ 0.000000e+00, %4449 ], [ %4643, %5003 ]
  %5013 = phi float [ %4406, %4449 ], [ %4644, %5003 ]
  %5014 = phi float [ %4407, %4449 ], [ %4645, %5003 ]
  %5015 = phi float [ %4408, %4449 ], [ %4646, %5003 ]
  %5016 = phi float [ %4403, %4449 ], [ %4647, %5003 ]
  %5017 = phi float [ %4404, %4449 ], [ %4648, %5003 ]
  %5018 = phi float [ %4405, %4449 ], [ %4649, %5003 ]
  %5019 = phi float [ %4444, %4449 ], [ %4650, %5003 ]
  %5020 = phi float [ %4445, %4449 ], [ %4651, %5003 ]
  %5021 = phi float [ %4446, %4449 ], [ %4652, %5003 ]
  %5022 = phi float [ %4414, %4449 ], [ %4653, %5003 ]
  %5023 = phi float [ %4413, %4449 ], [ %4654, %5003 ]
  %5024 = phi float [ 0.000000e+00, %4449 ], [ %4655, %5003 ]
  %5025 = phi float [ %4412, %4449 ], [ %4656, %5003 ]
  %5026 = phi float [ %4400, %4449 ], [ %4657, %5003 ]
  %5027 = phi float [ %4401, %4449 ], [ %4658, %5003 ]
  %5028 = phi float [ %4402, %4449 ], [ %4659, %5003 ]
  %5029 = call float @dx.op.dot3.f32(i32 55, float %5019, float %5020, float %5021, float %5019, float %5020, float %5021)  ; Dot3(ax,ay,az,bx,by,bz)
  %5030 = call float @dx.op.unary.f32(i32 25, float %5029)  ; Rsqrt(value)
  %5031 = fmul fast float %5030, %5019
  %5032 = fmul fast float %5030, %5020
  %5033 = fmul fast float %5030, %5021
  %5034 = fadd fast float %5024, %1241
  %5035 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5036 = call float @dx.op.dot3.f32(i32 55, float %5031, float %5032, float %5033, float %5031, float %5032, float %5033)  ; Dot3(ax,ay,az,bx,by,bz)
  %5037 = call float @dx.op.unary.f32(i32 25, float %5036)  ; Rsqrt(value)
  %5038 = fmul fast float %5037, %5031
  %5039 = fmul fast float %5037, %5032
  %5040 = fmul fast float %5037, %5033
  br label %5041

; <label>:5041                                    ; preds = %5004, %4397
  %5042 = phi float [ %5038, %5004 ], [ %4444, %4397 ]
  %5043 = phi float [ %5039, %5004 ], [ %4445, %4397 ]
  %5044 = phi float [ %5040, %5004 ], [ %4446, %4397 ]
  %5045 = phi float [ %5026, %5004 ], [ %4400, %4397 ]
  %5046 = phi float [ %5027, %5004 ], [ %4401, %4397 ]
  %5047 = phi float [ %5028, %5004 ], [ %4402, %4397 ]
  %5048 = phi float [ %5016, %5004 ], [ %4403, %4397 ]
  %5049 = phi float [ %5017, %5004 ], [ %4404, %4397 ]
  %5050 = phi float [ %5018, %5004 ], [ %4405, %4397 ]
  %5051 = phi float [ %5013, %5004 ], [ %4406, %4397 ]
  %5052 = phi float [ %5014, %5004 ], [ %4407, %4397 ]
  %5053 = phi float [ %5015, %5004 ], [ %4408, %4397 ]
  %5054 = phi float [ %5008, %5004 ], [ %4409, %4397 ]
  %5055 = phi float [ %5009, %5004 ], [ %4410, %4397 ]
  %5056 = phi float [ %5010, %5004 ], [ %4411, %4397 ]
  %5057 = phi float [ %5025, %5004 ], [ %4412, %4397 ]
  %5058 = phi float [ %5035, %5004 ], [ %1241, %4397 ]
  %5059 = phi float [ %5023, %5004 ], [ %4413, %4397 ]
  %5060 = phi float [ %5022, %5004 ], [ %4414, %4397 ]
  %5061 = phi float [ %5012, %5004 ], [ 0.000000e+00, %4397 ]
  %5062 = phi float [ %5011, %5004 ], [ 0.000000e+00, %4397 ]
  %5063 = phi float [ %5005, %5004 ], [ 0.000000e+00, %4397 ]
  %5064 = phi float [ %5006, %5004 ], [ %4418, %4397 ]
  %5065 = phi float [ %5007, %5004 ], [ %4416, %4397 ]
  %5066 = fadd fast float %5057, 0xBFB99999A0000000
  %5067 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5068 = fmul fast float %5067, 0x3FF1C71C80000000
  %5069 = call float @dx.op.binary.f32(i32 36, float %5057, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5070 = fsub fast float 1.000000e+00, %5068
  %5071 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5072 = fmul fast float %5071, %5045
  %5073 = fmul fast float %5071, %5046
  %5074 = fmul fast float %5071, %5047
  %5075 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5076 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5077 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5078 = fmul fast float %5068, %5045
  %5079 = fmul fast float %5068, %5046
  %5080 = fmul fast float %5068, %5047
  %5081 = fadd fast float %5078, %5069
  %5082 = fadd fast float %5079, %5069
  %5083 = fadd fast float %5080, %5069
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5086 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5087 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %5089 = extractvalue %dx.types.ResRet.i32 %5088, 0
  %5090 = and i32 %5089, 1
  %5091 = icmp eq i32 %5090, 0
  br i1 %5091, label %5106, label %5092

; <label>:5092                                    ; preds = %5041
  %5093 = call float @dx.op.binary.f32(i32 35, float %5076, float %5077)  ; FMax(a,b)
  %5094 = call float @dx.op.binary.f32(i32 35, float %5075, float %5093)  ; FMax(a,b)
  %5095 = fcmp fast ogt float %5094, 0.000000e+00
  %5096 = bitcast float %5094 to i32
  %5097 = sub nsw i32 2129859010, %5096
  %5098 = bitcast i32 %5097 to float
  %5099 = select i1 %5095, float %5098, float 0.000000e+00
  %5100 = fmul fast float %5075, %5051
  %5101 = fmul fast float %5076, %5052
  %5102 = fmul fast float %5077, %5053
  %5103 = fmul fast float %5100, %5099
  %5104 = fmul fast float %5101, %5099
  %5105 = fmul fast float %5102, %5099
  br label %5106

; <label>:5106                                    ; preds = %5092, %5041
  %5107 = phi float [ %5103, %5092 ], [ %5051, %5041 ]
  %5108 = phi float [ %5104, %5092 ], [ %5052, %5041 ]
  %5109 = phi float [ %5105, %5092 ], [ %5053, %5041 ]
  %5110 = call float @dx.op.binary.f32(i32 36, float %5054, float 1.270000e+02)  ; FMin(a,b)
  %5111 = call float @dx.op.binary.f32(i32 36, float %5055, float 1.270000e+02)  ; FMin(a,b)
  %5112 = call float @dx.op.binary.f32(i32 36, float %5056, float 1.270000e+02)  ; FMin(a,b)
  %5113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.i32 %5113, 3
  %5115 = and i32 %5114, 8
  %5116 = icmp ne i32 %5115, 0
  %5117 = call float @dx.op.binary.f32(i32 35, float %5075, float %5045)  ; FMax(a,b)
  %5118 = call float @dx.op.binary.f32(i32 35, float %5076, float %5045)  ; FMax(a,b)
  %5119 = call float @dx.op.binary.f32(i32 35, float %5077, float %5045)  ; FMax(a,b)
  %5120 = call float @dx.op.dot3.f32(i32 55, float %5075, float %5076, float %5077, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5121 = select i1 %214, float %5045, float %5075
  %5122 = select i1 %214, float %5120, float %5076
  %5123 = select i1 %214, float 1.000000e+00, float %5077
  %5124 = select i1 %5116, float %5117, float %5121
  %5125 = select i1 %5116, float %5118, float %5122
  %5126 = select i1 %5116, float %5119, float %5123
  %5127 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5108, float %5109, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = select i1 %214, float %5127, float %5107
  %5129 = select i1 %214, float %5127, float %5108
  %5130 = select i1 %214, float %5127, float %5109
  %5131 = and i32 %190, 3
  %5132 = select i1 %184, i32 %5131, i32 0
  %5133 = icmp eq i32 %5132, 1
  br i1 %5133, label %5134, label %5210

; <label>:5134                                    ; preds = %5106
  %5135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5136 = extractvalue %dx.types.CBufRet.f32 %5135, 0
  %5137 = extractvalue %dx.types.CBufRet.f32 %5135, 1
  %5138 = fadd fast float %5136, %153
  %5139 = fadd fast float %5137, %154
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5143 = fsub fast float %5138, %5141
  %5144 = fsub fast float %5139, %5142
  %5145 = fmul fast float %5143, %5143
  %5146 = fmul fast float %5144, %5144
  %5147 = fadd fast float %5145, %5146
  %5148 = call float @dx.op.unary.f32(i32 24, float %5147)  ; Sqrt(value)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5150 = fcmp fast olt float %5148, %5149
  br i1 %5150, label %5151, label %5204

; <label>:5151                                    ; preds = %5134
  %5152 = extractvalue %dx.types.CBufRet.f32 %5135, 2
  %5153 = fadd fast float %5152, %155
  %5154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5155 = extractvalue %dx.types.CBufRet.f32 %5154, 0
  %5156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5157 = extractvalue %dx.types.CBufRet.f32 %5156, 0
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = extractvalue %dx.types.CBufRet.f32 %5154, 1
  %5161 = extractvalue %dx.types.CBufRet.f32 %5156, 1
  %5162 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5163 = extractvalue %dx.types.CBufRet.f32 %5154, 3
  %5164 = extractvalue %dx.types.CBufRet.f32 %5156, 3
  %5165 = extractvalue %dx.types.CBufRet.f32 %5158, 3
  %5166 = fadd fast float %5163, %5138
  %5167 = fadd fast float %5164, %5139
  %5168 = fadd fast float %5153, %5165
  %5169 = fmul fast float %5166, %5155
  %5170 = call float @dx.op.tertiary.f32(i32 46, float %5167, float %5157, float %5169)  ; FMad(a,b,c)
  %5171 = call float @dx.op.tertiary.f32(i32 46, float %5168, float %5159, float %5170)  ; FMad(a,b,c)
  %5172 = fmul fast float %5166, %5160
  %5173 = call float @dx.op.tertiary.f32(i32 46, float %5167, float %5161, float %5172)  ; FMad(a,b,c)
  %5174 = call float @dx.op.tertiary.f32(i32 46, float %5168, float %5162, float %5173)  ; FMad(a,b,c)
  %5175 = fsub fast float %5171, %5163
  %5176 = fsub fast float %5174, %5164
  %5177 = fsub fast float %5175, %5141
  %5178 = fadd fast float %5177, %5149
  %5179 = fsub fast float %5176, %5142
  %5180 = fadd fast float %5179, %5149
  %5181 = extractvalue %dx.types.CBufRet.f32 %5140, 3
  %5182 = fmul fast float %5178, %5181
  %5183 = fmul fast float %5180, %5181
  %5184 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5185 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5186 = fsub fast float 1.000000e+00, %5184
  %5187 = fsub fast float 1.000000e+00, %5185
  %5188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %43, float %5186, float %5187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5189 = extractvalue %dx.types.ResRet.f32 %5188, 0
  %5190 = fcmp fast ugt float %5189, 0.000000e+00
  br i1 %5190, label %5191, label %5204

; <label>:5191                                    ; preds = %5151
  %5192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5193 = extractvalue %dx.types.CBufRet.f32 %5192, 2
  %5194 = fmul fast float %5193, %5189
  %5195 = extractvalue %dx.types.CBufRet.f32 %5192, 3
  %5196 = fadd fast float %5195, %5194
  %5197 = extractvalue %dx.types.CBufRet.f32 %5158, 2
  %5198 = fadd fast float %5196, %5165
  %5199 = fmul fast float %5171, %5159
  %5200 = call float @dx.op.tertiary.f32(i32 46, float %5174, float %5162, float %5199)  ; FMad(a,b,c)
  %5201 = call float @dx.op.tertiary.f32(i32 46, float %5198, float %5197, float %5200)  ; FMad(a,b,c)
  %5202 = fsub fast float %5201, %5165
  %5203 = fsub fast float %5202, %5152
  br label %5204

; <label>:5204                                    ; preds = %5191, %5151, %5134
  %5205 = phi i1 [ true, %5191 ], [ false, %5151 ], [ false, %5134 ]
  %5206 = phi float [ %5203, %5191 ], [ -1.310720e+05, %5151 ], [ -1.310720e+05, %5134 ]
  %5207 = fsub fast float %5206, %155
  %5208 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  %5209 = select i1 %5205, float %5208, float 1.000000e+00
  br label %5210

; <label>:5210                                    ; preds = %5204, %5106
  %5211 = phi float [ %5209, %5204 ], [ 0.000000e+00, %5106 ]
  %5212 = icmp eq i32 %5132, 3
  %5213 = select i1 %5212, float 1.000000e+00, float %5211
  %5214 = call float @dx.op.binary.f32(i32 35, float %5063, float %5213)  ; FMax(a,b)
  %5215 = call float @dx.op.unary.f32(i32 7, float %5214)  ; Saturate(value)
  %5216 = fcmp fast une float %5215, 0.000000e+00
  %5217 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %5218 = call float @dx.op.unary.f32(i32 25, float %5217)  ; Rsqrt(value)
  br i1 %5216, label %5226, label %5219

; <label>:5219                                    ; preds = %5210
  %5220 = fmul fast float %5218, %153
  %5221 = fmul fast float %5218, %154
  %5222 = fmul fast float %5218, %155
  %5223 = fsub fast float -0.000000e+00, %5220
  %5224 = fsub fast float -0.000000e+00, %5221
  %5225 = fsub fast float -0.000000e+00, %5222
  br label %5394

; <label>:5226                                    ; preds = %5210
  %5227 = fmul fast float %153, %5218
  %5228 = fsub fast float -0.000000e+00, %5227
  %5229 = fmul fast float %154, %5218
  %5230 = fsub fast float -0.000000e+00, %5229
  %5231 = fmul fast float %155, %5218
  %5232 = fsub fast float -0.000000e+00, %5231
  %5233 = call float @dx.op.dot3.f32(i32 55, float %5228, float %5230, float %5232, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5234 = fmul fast float %5215, 2.500000e+00
  %5235 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5236 = fmul fast float %5215, 0x4013FFFFE0000000
  %5237 = fadd fast float %5236, 0xBFFFFFFFE0000000
  %5238 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5239 = fmul fast float %5215, 0x4004000020000000
  %5240 = fadd fast float %5239, 0xBFF8000040000000
  %5241 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5242 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5243 = fmul fast float %5066, 1.000000e+01
  %5244 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5245 = fmul fast float %5244, 2.000000e+00
  %5246 = fsub fast float 3.000000e+00, %5245
  %5247 = fmul fast float %5244, %5244
  %5248 = fmul fast float %5247, %5246
  %5249 = fsub fast float 1.000000e+00, %5248
  %5250 = fsub fast float 0x3FE3333340000000, %5087
  %5251 = fmul fast float %5250, 0x400AAAAAA0000000
  %5252 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5253 = fmul fast float %5249, %5252
  %5254 = fmul fast float %5124, 0x3FEA2B8620000000
  %5255 = fmul fast float %5125, 0x3FEA2B8620000000
  %5256 = fmul fast float %5126, 0x3FEA2B8620000000
  %5257 = fadd fast float %5254, 0x3FC81DFBA0000000
  %5258 = fmul fast float %5257, %5124
  %5259 = fadd fast float %5258, 0x3F910E6020000000
  %5260 = fadd fast float %5255, 0x3FC81DFBA0000000
  %5261 = fmul fast float %5260, %5125
  %5262 = fadd fast float %5261, 0x3F910E6020000000
  %5263 = fadd fast float %5256, 0x3FC81DFBA0000000
  %5264 = fmul fast float %5263, %5126
  %5265 = fadd fast float %5264, 0x3F910E6020000000
  %5266 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  %5267 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5268 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5269 = fsub fast float %5266, %5124
  %5270 = fsub fast float %5267, %5125
  %5271 = fsub fast float %5268, %5126
  %5272 = fmul fast float %5269, %5242
  %5273 = fmul fast float %5272, %5253
  %5274 = fmul fast float %5270, %5242
  %5275 = fmul fast float %5274, %5253
  %5276 = fmul fast float %5271, %5242
  %5277 = fmul fast float %5276, %5253
  %5278 = fadd fast float %5273, %5124
  %5279 = fadd fast float %5275, %5125
  %5280 = fadd fast float %5277, %5126
  %5281 = fmul fast float %5060, %5060
  %5282 = fmul fast float %5281, %5281
  %5283 = fadd fast float %5238, 1.000000e+00
  %5284 = fsub fast float %5283, %5253
  %5285 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5286 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5287 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5288 = fsub fast float 1.000000e+00, %5282
  %5289 = call float @dx.op.binary.f32(i32 36, float %5285, float %5288)  ; FMin(a,b)
  %5290 = call float @dx.op.unary.f32(i32 7, float %5241)  ; Saturate(value)
  %5291 = call float @dx.op.binary.f32(i32 35, float %5289, float %5290)  ; FMax(a,b)
  %5292 = fadd fast float %5287, 0xBFE4CCCCC0000000
  %5293 = fmul fast float %5292, 0x4006DB6DA0000000
  %5294 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5295 = fmul fast float %5294, 2.000000e+00
  %5296 = fsub fast float 3.000000e+00, %5295
  %5297 = bitcast float %5084 to i32
  %5298 = ashr i32 %5297, 1
  %5299 = add nsw i32 %5298, 532487669
  %5300 = bitcast i32 %5299 to float
  %5301 = fsub fast float 1.000000e+00, %5300
  %5302 = bitcast float %5301 to i32
  %5303 = sub nsw i32 2129859010, %5302
  %5304 = bitcast i32 %5303 to float
  %5305 = fmul fast float %5304, 2.000000e+00
  %5306 = bitcast float %5085 to i32
  %5307 = ashr i32 %5306, 1
  %5308 = add nsw i32 %5307, 532487669
  %5309 = bitcast i32 %5308 to float
  %5310 = fsub fast float 1.000000e+00, %5309
  %5311 = bitcast float %5310 to i32
  %5312 = sub nsw i32 2129859010, %5311
  %5313 = bitcast i32 %5312 to float
  %5314 = fmul fast float %5313, 2.000000e+00
  %5315 = bitcast float %5086 to i32
  %5316 = ashr i32 %5315, 1
  %5317 = add nsw i32 %5316, 532487669
  %5318 = bitcast i32 %5317 to float
  %5319 = fsub fast float 1.000000e+00, %5318
  %5320 = bitcast float %5319 to i32
  %5321 = sub nsw i32 2129859010, %5320
  %5322 = bitcast i32 %5321 to float
  %5323 = fmul fast float %5322, 2.000000e+00
  %5324 = fsub fast float 0x4002A9FBE0000000, %5305
  %5325 = fadd fast float %5305, 0x3FD54FDF00000000
  %5326 = bitcast float %5325 to i32
  %5327 = sub nsw i32 2129859010, %5326
  %5328 = bitcast i32 %5327 to float
  %5329 = fmul fast float %5328, %5324
  %5330 = fmul fast float %5329, %5329
  %5331 = fsub fast float 0x4002A9FBE0000000, %5314
  %5332 = fadd fast float %5314, 0x3FD54FDF00000000
  %5333 = bitcast float %5332 to i32
  %5334 = sub nsw i32 2129859010, %5333
  %5335 = bitcast i32 %5334 to float
  %5336 = fmul fast float %5335, %5331
  %5337 = fmul fast float %5336, %5336
  %5338 = fsub fast float 0x4002A9FBE0000000, %5323
  %5339 = fadd fast float %5323, 0x3FD54FDF00000000
  %5340 = bitcast float %5339 to i32
  %5341 = sub nsw i32 2129859010, %5340
  %5342 = bitcast i32 %5341 to float
  %5343 = fmul fast float %5342, %5338
  %5344 = fmul fast float %5343, %5343
  %5345 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5330)  ; FMax(a,b)
  %5346 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5337)  ; FMax(a,b)
  %5347 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5344)  ; FMax(a,b)
  %5348 = fsub fast float 1.000000e+00, %5233
  %5349 = fadd fast float %5348, %5249
  %5350 = call float @dx.op.unary.f32(i32 7, float %5349)  ; Saturate(value)
  %5351 = fsub fast float 1.000000e+00, %5213
  %5352 = fmul fast float %5291, %5351
  %5353 = fmul fast float %5294, %5294
  %5354 = fmul fast float %5353, %5352
  %5355 = fmul fast float %5354, %5296
  %5356 = fmul fast float %5351, 0xBFE99999A0000000
  %5357 = fmul fast float %5356, %5242
  %5358 = fmul fast float %5357, %5253
  %5359 = fadd fast float %5358, 1.000000e+00
  %5360 = fadd fast float %5087, -1.000000e+00
  %5361 = fmul fast float %5359, %5360
  %5362 = fadd fast float %5361, 1.000000e+00
  %5363 = fsub fast float %5345, %5084
  %5364 = fsub fast float %5346, %5085
  %5365 = fsub fast float %5347, %5086
  %5366 = fmul fast float %5355, %5363
  %5367 = fmul fast float %5355, %5364
  %5368 = fmul fast float %5355, %5365
  %5369 = fadd fast float %5366, %5084
  %5370 = fadd fast float %5367, %5085
  %5371 = fadd fast float %5368, %5086
  %5372 = fsub fast float %105, %5042
  %5373 = fsub fast float %106, %5043
  %5374 = fsub fast float %107, %5044
  %5375 = fmul fast float %5355, %5372
  %5376 = fmul fast float %5355, %5373
  %5377 = fmul fast float %5355, %5374
  %5378 = fadd fast float %5375, %5042
  %5379 = fadd fast float %5376, %5043
  %5380 = fadd fast float %5377, %5044
  %5381 = fmul fast float %5355, %5350
  %5382 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5383 = fsub fast float 1.000000e+00, %5382
  %5384 = fmul fast float %5381, %5383
  %5385 = fadd fast float %5384, %5382
  %5386 = fsub fast float 1.000000e+00, %5060
  %5387 = fmul fast float %5355, %5386
  %5388 = fadd fast float %5387, %5060
  %5389 = call float @dx.op.dot3.f32(i32 55, float %5378, float %5379, float %5380, float %5378, float %5379, float %5380)  ; Dot3(ax,ay,az,bx,by,bz)
  %5390 = call float @dx.op.unary.f32(i32 25, float %5389)  ; Rsqrt(value)
  %5391 = fmul fast float %5378, %5390
  %5392 = fmul fast float %5379, %5390
  %5393 = fmul fast float %5380, %5390
  br label %5394

; <label>:5394                                    ; preds = %5226, %5219
  %5395 = phi float [ %5225, %5219 ], [ %5232, %5226 ]
  %5396 = phi float [ %5224, %5219 ], [ %5230, %5226 ]
  %5397 = phi float [ %5223, %5219 ], [ %5228, %5226 ]
  %5398 = phi float [ %5222, %5219 ], [ %5231, %5226 ]
  %5399 = phi float [ %5221, %5219 ], [ %5229, %5226 ]
  %5400 = phi float [ %5220, %5219 ], [ %5227, %5226 ]
  %5401 = phi float [ %5124, %5219 ], [ %5278, %5226 ]
  %5402 = phi float [ %5125, %5219 ], [ %5279, %5226 ]
  %5403 = phi float [ %5126, %5219 ], [ %5280, %5226 ]
  %5404 = phi float [ %5042, %5219 ], [ %5391, %5226 ]
  %5405 = phi float [ %5043, %5219 ], [ %5392, %5226 ]
  %5406 = phi float [ %5044, %5219 ], [ %5393, %5226 ]
  %5407 = phi float [ %5084, %5219 ], [ %5369, %5226 ]
  %5408 = phi float [ %5085, %5219 ], [ %5370, %5226 ]
  %5409 = phi float [ %5086, %5219 ], [ %5371, %5226 ]
  %5410 = phi float [ %5087, %5219 ], [ %5385, %5226 ]
  %5411 = phi float [ %5060, %5219 ], [ %5388, %5226 ]
  %5412 = select i1 %214, float 0.000000e+00, float %5409
  %5413 = call float @dx.op.dot3.f32(i32 55, float %5404, float %5405, float %5406, float %5397, float %5396, float %5395)  ; Dot3(ax,ay,az,bx,by,bz)
  %5414 = call float @dx.op.unary.f32(i32 7, float %5413)  ; Saturate(value)
  %5415 = call float @dx.op.dot3.f32(i32 55, float %5400, float %5399, float %5398, float %5404, float %5405, float %5406)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = fmul fast float %5415, 2.000000e+00
  %5417 = fmul fast float %5416, %5404
  %5418 = fmul fast float %5416, %5405
  %5419 = fmul fast float %5416, %5406
  %5420 = fsub fast float %5400, %5417
  %5421 = fsub fast float %5399, %5418
  %5422 = fsub fast float %5398, %5419
  %5423 = call float @dx.op.binary.f32(i32 36, float %5411, float 1.000000e+00)  ; FMin(a,b)
  %5424 = fsub fast float 1.000000e+00, %5423
  %5425 = bitcast float %5424 to i32
  %5426 = ashr i32 %5425, 1
  %5427 = add nsw i32 %5426, 532487669
  %5428 = bitcast i32 %5427 to float
  %5429 = fsub fast float 1.000000e+00, %5410
  %5430 = call float @dx.op.binary.f32(i32 35, float %5429, float 0x3F847AE140000000)  ; FMax(a,b)
  %5431 = fmul fast float %5430, %5430
  %5432 = fmul fast float %5431, %5431
  %5433 = call float @dx.op.unary.f32(i32 7, float %5414)  ; Saturate(value)
  %5434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %43, float %5428, float %5432, float %5433, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 0
  %5436 = fsub fast float 1.000000e+00, %5411
  %5437 = bitcast float %5436 to i32
  %5438 = sub nsw i32 2129859010, %5437
  %5439 = call float @dx.op.dot3.f32(i32 55, float %66, float %62, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5440 = fmul fast float %5439, 0x3FD20DD760000000
  %5441 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %5442 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5443 = fcmp fast oeq float %5442, 0.000000e+00
  %5444 = fcmp fast oeq float %5441, 0.000000e+00
  %5445 = or i1 %5444, %5443
  br i1 %5445, label %5475, label %5446

; <label>:5446                                    ; preds = %5394
  %5447 = fsub fast float -0.000000e+00, %69
  %5448 = fsub fast float -0.000000e+00, %67
  %5449 = call float @dx.op.unary.f32(i32 24, float %5442)  ; Sqrt(value)
  %5450 = fdiv fast float %5449, %5441
  %5451 = fcmp fast ogt float %5450, 0x3FFB6F8900000000
  %5452 = select i1 %5451, float 0x3FFB6F8900000000, float %5450
  %5453 = fmul fast float %5452, 0x3FE8A23460000000
  %5454 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5455 = call float @dx.op.binary.f32(i32 35, float %5452, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5456 = fmul fast float %5454, %5441
  %5457 = fmul fast float %5455, 0x3FF279A740000000
  %5458 = fadd fast float %5457, -1.000000e+00
  %5459 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %68, float %5447, float %5448, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5460 = call float @dx.op.unary.f32(i32 25, float %5459)  ; Rsqrt(value)
  %5461 = fmul fast float %5460, %5447
  %5462 = fmul fast float %5460, %5448
  %5463 = fmul fast float %5460, %68
  %5464 = fmul fast float %5458, %5458
  %5465 = fsub fast float 1.000000e+00, %5464
  %5466 = fmul fast float %5455, 0x40005F8BE0000000
  %5467 = fsub fast float 0x400C5BF8A0000000, %5466
  %5468 = fdiv fast float %5456, %5467
  %5469 = fmul fast float %5468, 0x3FEE31C3C0000000
  %5470 = fmul fast float %5469, %5465
  %5471 = fmul fast float %5455, 0x3FDACB7480000000
  %5472 = fadd fast float %5471, 0xBFD7347680000000
  %5473 = fmul fast float %5472, %5468
  %5474 = fmul fast float %5473, %5465
  br label %5475

; <label>:5475                                    ; preds = %5446, %5394
  %5476 = phi float [ %5461, %5446 ], [ 0.000000e+00, %5394 ]
  %5477 = phi float [ %5462, %5446 ], [ 0.000000e+00, %5394 ]
  %5478 = phi float [ %5463, %5446 ], [ 0.000000e+00, %5394 ]
  %5479 = phi float [ %5470, %5446 ], [ 0.000000e+00, %5394 ]
  %5480 = phi float [ %5474, %5446 ], [ 0.000000e+00, %5394 ]
  %5481 = call float @dx.op.dot3.f32(i32 55, float %5476, float %5477, float %5478, float %5404, float %5405, float %5406)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = fmul fast float %5481, 0x3FDF454380000000
  %5483 = fmul fast float %5481, %5481
  %5484 = fmul fast float %5483, 0x3FEE471020000000
  %5485 = fadd fast float %5484, 0xBFD42F6020000000
  %5486 = fmul fast float %5441, 0x3FD20DD760000000
  %5487 = fmul fast float %5485, %5480
  %5488 = fadd fast float %5487, %5486
  %5489 = fmul fast float %5482, %5479
  %5490 = fadd fast float %5488, %5489
  %5491 = fsub fast float %5488, %5489
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5476, float %5477, float %5478, float %5420, float %5421, float %5422)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = fmul fast float %5492, 0x3FDF454380000000
  %5494 = fmul fast float %5492, %5492
  %5495 = fmul fast float %5494, 0x3FEE471020000000
  %5496 = fadd fast float %5495, 0xBFD42F6020000000
  %5497 = call float @dx.op.dot3.f32(i32 55, float %5441, float %5479, float %5480, float 0x3FD20DD760000000, float %5493, float %5496)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %5499 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5500 = fcmp fast oeq float %5499, 0.000000e+00
  %5501 = fcmp fast oeq float %5498, 0.000000e+00
  %5502 = or i1 %5501, %5500
  br i1 %5502, label %5532, label %5503

; <label>:5503                                    ; preds = %5475
  %5504 = fsub fast float -0.000000e+00, %65
  %5505 = fsub fast float -0.000000e+00, %63
  %5506 = call float @dx.op.unary.f32(i32 24, float %5499)  ; Sqrt(value)
  %5507 = fdiv fast float %5506, %5498
  %5508 = fcmp fast ogt float %5507, 0x3FFB6F8900000000
  %5509 = select i1 %5508, float 0x3FFB6F8900000000, float %5507
  %5510 = fmul fast float %5509, 0x3FE8A23460000000
  %5511 = call float @dx.op.unary.f32(i32 7, float %5510)  ; Saturate(value)
  %5512 = call float @dx.op.binary.f32(i32 35, float %5509, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5513 = fmul fast float %5511, %5498
  %5514 = fmul fast float %5512, 0x3FF279A740000000
  %5515 = fadd fast float %5514, -1.000000e+00
  %5516 = call float @dx.op.dot3.f32(i32 55, float %5504, float %5505, float %64, float %5504, float %5505, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = call float @dx.op.unary.f32(i32 25, float %5516)  ; Rsqrt(value)
  %5518 = fmul fast float %5517, %5504
  %5519 = fmul fast float %5517, %5505
  %5520 = fmul fast float %5517, %64
  %5521 = fmul fast float %5515, %5515
  %5522 = fsub fast float 1.000000e+00, %5521
  %5523 = fmul fast float %5512, 0x40005F8BE0000000
  %5524 = fsub fast float 0x400C5BF8A0000000, %5523
  %5525 = fdiv fast float %5513, %5524
  %5526 = fmul fast float %5525, 0x3FEE31C3C0000000
  %5527 = fmul fast float %5526, %5522
  %5528 = fmul fast float %5512, 0x3FDACB7480000000
  %5529 = fadd fast float %5528, 0xBFD7347680000000
  %5530 = fmul fast float %5529, %5525
  %5531 = fmul fast float %5530, %5522
  br label %5532

; <label>:5532                                    ; preds = %5503, %5475
  %5533 = phi float [ %5518, %5503 ], [ 0.000000e+00, %5475 ]
  %5534 = phi float [ %5519, %5503 ], [ 0.000000e+00, %5475 ]
  %5535 = phi float [ %5520, %5503 ], [ 0.000000e+00, %5475 ]
  %5536 = phi float [ %5527, %5503 ], [ 0.000000e+00, %5475 ]
  %5537 = phi float [ %5531, %5503 ], [ 0.000000e+00, %5475 ]
  %5538 = call float @dx.op.dot3.f32(i32 55, float %5533, float %5534, float %5535, float %5404, float %5405, float %5406)  ; Dot3(ax,ay,az,bx,by,bz)
  %5539 = fmul fast float %5538, 0x3FDF454380000000
  %5540 = fmul fast float %5538, %5538
  %5541 = fmul fast float %5540, 0x3FEE471020000000
  %5542 = fadd fast float %5541, 0xBFD42F6020000000
  %5543 = fmul fast float %5498, 0x3FD20DD760000000
  %5544 = fmul fast float %5542, %5537
  %5545 = fadd fast float %5544, %5543
  %5546 = fmul fast float %5539, %5536
  %5547 = fadd fast float %5545, %5546
  %5548 = fsub fast float %5545, %5546
  %5549 = call float @dx.op.dot3.f32(i32 55, float %5533, float %5534, float %5535, float %5420, float %5421, float %5422)  ; Dot3(ax,ay,az,bx,by,bz)
  %5550 = fmul fast float %5549, 0x3FDF454380000000
  %5551 = fmul fast float %5549, %5549
  %5552 = fmul fast float %5551, 0x3FEE471020000000
  %5553 = fadd fast float %5552, 0xBFD42F6020000000
  %5554 = call float @dx.op.dot3.f32(i32 55, float %5498, float %5536, float %5537, float 0x3FD20DD760000000, float %5550, float %5553)  ; Dot3(ax,ay,az,bx,by,bz)
  %5555 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5556 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5557 = fcmp fast oeq float %5556, 0.000000e+00
  %5558 = fcmp fast oeq float %5555, 0.000000e+00
  %5559 = or i1 %5558, %5557
  br i1 %5559, label %5589, label %5560

; <label>:5560                                    ; preds = %5532
  %5561 = fsub fast float -0.000000e+00, %61
  %5562 = fsub fast float -0.000000e+00, %59
  %5563 = call float @dx.op.unary.f32(i32 24, float %5556)  ; Sqrt(value)
  %5564 = fdiv fast float %5563, %5555
  %5565 = fcmp fast ogt float %5564, 0x3FFB6F8900000000
  %5566 = select i1 %5565, float 0x3FFB6F8900000000, float %5564
  %5567 = fmul fast float %5566, 0x3FE8A23460000000
  %5568 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5569 = call float @dx.op.binary.f32(i32 35, float %5566, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5570 = fmul fast float %5568, %5555
  %5571 = fmul fast float %5569, 0x3FF279A740000000
  %5572 = fadd fast float %5571, -1.000000e+00
  %5573 = call float @dx.op.dot3.f32(i32 55, float %5561, float %5562, float %60, float %5561, float %5562, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = call float @dx.op.unary.f32(i32 25, float %5573)  ; Rsqrt(value)
  %5575 = fmul fast float %5574, %5561
  %5576 = fmul fast float %5574, %5562
  %5577 = fmul fast float %5574, %60
  %5578 = fmul fast float %5572, %5572
  %5579 = fsub fast float 1.000000e+00, %5578
  %5580 = fmul fast float %5569, 0x40005F8BE0000000
  %5581 = fsub fast float 0x400C5BF8A0000000, %5580
  %5582 = fdiv fast float %5570, %5581
  %5583 = fmul fast float %5582, 0x3FEE31C3C0000000
  %5584 = fmul fast float %5583, %5579
  %5585 = fmul fast float %5569, 0x3FDACB7480000000
  %5586 = fadd fast float %5585, 0xBFD7347680000000
  %5587 = fmul fast float %5586, %5582
  %5588 = fmul fast float %5587, %5579
  br label %5589

; <label>:5589                                    ; preds = %5560, %5532
  %5590 = phi float [ %5575, %5560 ], [ 0.000000e+00, %5532 ]
  %5591 = phi float [ %5576, %5560 ], [ 0.000000e+00, %5532 ]
  %5592 = phi float [ %5577, %5560 ], [ 0.000000e+00, %5532 ]
  %5593 = phi float [ %5584, %5560 ], [ 0.000000e+00, %5532 ]
  %5594 = phi float [ %5588, %5560 ], [ 0.000000e+00, %5532 ]
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5591, float %5592, float %5404, float %5405, float %5406)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = fmul fast float %5595, 0x3FDF454380000000
  %5597 = fmul fast float %5595, %5595
  %5598 = fmul fast float %5597, 0x3FEE471020000000
  %5599 = fadd fast float %5598, 0xBFD42F6020000000
  %5600 = fmul fast float %5555, 0x3FD20DD760000000
  %5601 = fmul fast float %5599, %5594
  %5602 = fadd fast float %5601, %5600
  %5603 = fmul fast float %5596, %5593
  %5604 = fadd fast float %5602, %5603
  %5605 = fsub fast float %5602, %5603
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5591, float %5592, float %5420, float %5421, float %5422)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = fmul fast float %5606, 0x3FDF454380000000
  %5608 = fmul fast float %5606, %5606
  %5609 = fmul fast float %5608, 0x3FEE471020000000
  %5610 = fadd fast float %5609, 0xBFD42F6020000000
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5555, float %5593, float %5594, float 0x3FD20DD760000000, float %5607, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = call float @dx.op.binary.f32(i32 35, float %5490, float 0.000000e+00)  ; FMax(a,b)
  %5613 = call float @dx.op.binary.f32(i32 35, float %5547, float 0.000000e+00)  ; FMax(a,b)
  %5614 = call float @dx.op.binary.f32(i32 35, float %5604, float 0.000000e+00)  ; FMax(a,b)
  %5615 = call float @dx.op.binary.f32(i32 35, float %5491, float 0.000000e+00)  ; FMax(a,b)
  %5616 = call float @dx.op.binary.f32(i32 35, float %5548, float 0.000000e+00)  ; FMax(a,b)
  %5617 = call float @dx.op.binary.f32(i32 35, float %5605, float 0.000000e+00)  ; FMax(a,b)
  %5618 = call float @dx.op.binary.f32(i32 35, float %5497, float 0.000000e+00)  ; FMax(a,b)
  %5619 = call float @dx.op.binary.f32(i32 35, float %5554, float 0.000000e+00)  ; FMax(a,b)
  %5620 = call float @dx.op.binary.f32(i32 35, float %5611, float 0.000000e+00)  ; FMax(a,b)
  %5621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5622 = extractvalue %dx.types.CBufRet.f32 %5621, 0
  %5623 = call float @dx.op.binary.f32(i32 36, float %5401, float %5622)  ; FMin(a,b)
  %5624 = fmul fast float %5623, %5424
  %5625 = fsub fast float 1.000000e+00, %5624
  %5626 = bitcast float %5625 to i32
  %5627 = sub nsw i32 2129859010, %5626
  %5628 = bitcast i32 %5627 to float
  %5629 = call float @dx.op.binary.f32(i32 36, float %5402, float %5622)  ; FMin(a,b)
  %5630 = fmul fast float %5629, %5424
  %5631 = fsub fast float 1.000000e+00, %5630
  %5632 = bitcast float %5631 to i32
  %5633 = sub nsw i32 2129859010, %5632
  %5634 = bitcast i32 %5633 to float
  %5635 = call float @dx.op.binary.f32(i32 36, float %5403, float %5622)  ; FMin(a,b)
  %5636 = fmul fast float %5635, %5424
  %5637 = fsub fast float 1.000000e+00, %5636
  %5638 = bitcast float %5637 to i32
  %5639 = sub nsw i32 2129859010, %5638
  %5640 = bitcast i32 %5639 to float
  %5641 = fmul fast float %5612, %5423
  %5642 = fmul fast float %5641, %5628
  %5643 = fmul fast float %5613, %5423
  %5644 = fmul fast float %5643, %5634
  %5645 = fmul fast float %5614, %5423
  %5646 = fmul fast float %5645, %5640
  %5647 = call float @dx.op.binary.f32(i32 36, float %5407, float %5622)  ; FMin(a,b)
  %5648 = fmul fast float %5647, %5424
  %5649 = fsub fast float 1.000000e+00, %5648
  %5650 = bitcast float %5649 to i32
  %5651 = sub nsw i32 2129859010, %5650
  %5652 = bitcast i32 %5651 to float
  %5653 = call float @dx.op.binary.f32(i32 36, float %5408, float %5622)  ; FMin(a,b)
  %5654 = fmul fast float %5653, %5424
  %5655 = fsub fast float 1.000000e+00, %5654
  %5656 = bitcast float %5655 to i32
  %5657 = sub nsw i32 2129859010, %5656
  %5658 = bitcast i32 %5657 to float
  %5659 = call float @dx.op.binary.f32(i32 36, float %5412, float %5622)  ; FMin(a,b)
  %5660 = fmul fast float %5659, %5424
  %5661 = fsub fast float 1.000000e+00, %5660
  %5662 = bitcast float %5661 to i32
  %5663 = sub nsw i32 2129859010, %5662
  %5664 = bitcast i32 %5663 to float
  %5665 = fmul fast float %5618, %5423
  %5666 = fmul fast float %5665, %5652
  %5667 = fmul fast float %5619, %5423
  %5668 = fmul fast float %5667, %5658
  %5669 = fmul fast float %5620, %5423
  %5670 = fmul fast float %5669, %5664
  %5671 = call float @dx.op.dot3.f32(i32 55, float %5642, float %5644, float %5646, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5672 = select i1 %214, float 0.000000e+00, float %5642
  %5673 = select i1 %214, float %5671, float %5644
  %5674 = select i1 %214, float 0.000000e+00, float %5646
  %5675 = call float @dx.op.dot3.f32(i32 55, float %5615, float %5616, float %5617, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = select i1 %214, float 0.000000e+00, float %5615
  %5677 = select i1 %214, float %5675, float %5616
  %5678 = select i1 %214, float 0.000000e+00, float %5617
  %5679 = call float @dx.op.dot3.f32(i32 55, float %5666, float %5668, float %5670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5680 = select i1 %214, float 0.000000e+00, float %5666
  %5681 = select i1 %214, float %5679, float %5668
  %5682 = select i1 %214, float 0.000000e+00, float %5670
  %5683 = fmul fast float %4415, %4415
  %5684 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5685 = fmul fast float %5414, 9.843750e-01
  %5686 = fmul fast float %5410, 9.843750e-01
  %5687 = fadd fast float %5685, 7.812500e-03
  %5688 = fadd fast float %5686, 7.812500e-03
  %5689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %5687, float %5688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5690 = extractvalue %dx.types.ResRet.f32 %5689, 0
  %5691 = extractvalue %dx.types.ResRet.f32 %5689, 1
  %5692 = extractvalue %dx.types.ResRet.f32 %5689, 2
  %5693 = extractvalue %dx.types.ResRet.f32 %5689, 3
  %5694 = fsub fast float 1.000000e+00, %5684
  %5695 = fsub fast float %5692, %5690
  %5696 = fsub fast float %5693, %5691
  %5697 = fmul fast float %5695, %5694
  %5698 = fmul fast float %5696, %5694
  %5699 = fadd fast float %5697, %5690
  %5700 = fadd fast float %5698, %5691
  %5701 = fmul fast float %5699, %5407
  %5702 = fmul fast float %5699, %5408
  %5703 = fmul fast float %5699, %5412
  %5704 = fadd fast float %5701, %5700
  %5705 = fadd fast float %5702, %5700
  %5706 = fadd fast float %5703, %5700
  %5707 = fcmp fast ogt float %5061, 0.000000e+00
  br i1 %5707, label %5708, label %5734

; <label>:5708                                    ; preds = %5589
  %5709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5061, float %5414, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5710 = extractvalue %dx.types.ResRet.f32 %5709, 0
  %5711 = extractvalue %dx.types.ResRet.f32 %5709, 1
  %5712 = extractvalue %dx.types.ResRet.f32 %5709, 2
  %5713 = fadd fast float %5710, -5.000000e-01
  %5714 = fadd fast float %5711, -5.000000e-01
  %5715 = fadd fast float %5712, -5.000000e-01
  %5716 = fsub fast float 1.000000e+00, %5407
  %5717 = fsub fast float 1.000000e+00, %5408
  %5718 = fsub fast float 1.000000e+00, %5412
  %5719 = fmul fast float %5407, 4.000000e+00
  %5720 = fmul fast float %5719, %5716
  %5721 = fmul fast float %5720, %5713
  %5722 = fmul fast float %5408, 4.000000e+00
  %5723 = fmul fast float %5722, %5717
  %5724 = fmul fast float %5723, %5714
  %5725 = fmul fast float %5412, 4.000000e+00
  %5726 = fmul fast float %5725, %5718
  %5727 = fmul fast float %5726, %5715
  %5728 = fadd fast float %5721, %5704
  %5729 = fadd fast float %5724, %5705
  %5730 = fadd fast float %5727, %5706
  %5731 = call float @dx.op.unary.f32(i32 7, float %5728)  ; Saturate(value)
  %5732 = call float @dx.op.unary.f32(i32 7, float %5729)  ; Saturate(value)
  %5733 = call float @dx.op.unary.f32(i32 7, float %5730)  ; Saturate(value)
  br label %5734

; <label>:5734                                    ; preds = %5708, %5589
  %5735 = phi float [ %5731, %5708 ], [ %5704, %5589 ]
  %5736 = phi float [ %5732, %5708 ], [ %5705, %5589 ]
  %5737 = phi float [ %5733, %5708 ], [ %5706, %5589 ]
  %5738 = call float @dx.op.binary.f32(i32 35, float %5736, float %5737)  ; FMax(a,b)
  %5739 = call float @dx.op.binary.f32(i32 35, float %5735, float %5738)  ; FMax(a,b)
  %5740 = fsub fast float 1.000000e+00, %5739
  %5741 = fmul fast float %5739, %5410
  %5742 = fadd fast float %5741, %5410
  %5743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5744 = extractvalue %dx.types.CBufRet.f32 %5743, 2
  %5745 = extractvalue %dx.types.CBufRet.f32 %5743, 3
  %5746 = fmul fast float %5742, %5744
  %5747 = fadd fast float %5746, %5745
  %5748 = call float @dx.op.unary.f32(i32 7, float %5747)  ; Saturate(value)
  %5749 = fsub fast float 1.000000e+00, %5435
  %5750 = fadd fast float %5749, %5748
  %5751 = call float @dx.op.unary.f32(i32 7, float %5750)  ; Saturate(value)
  %5752 = fcmp fast olt float %5751, 1.000000e+00
  br i1 %5752, label %5753, label %6307

; <label>:5753                                    ; preds = %5734
  %5754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5755 = extractvalue %dx.types.CBufRet.f32 %5754, 2
  %5756 = extractvalue %dx.types.CBufRet.f32 %5754, 3
  %5757 = fmul fast float %5755, %98
  %5758 = fmul fast float %5756, %99
  %5759 = fptoui float %5757 to i32
  %5760 = fptoui float %5758 to i32
  %5761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5762 = extractvalue %dx.types.CBufRet.f32 %5761, 0
  %5763 = extractvalue %dx.types.CBufRet.f32 %5761, 2
  %5764 = extractvalue %dx.types.CBufRet.f32 %5761, 3
  %5765 = fadd fast float %86, -4.000000e+00
  %5766 = call float @dx.op.binary.f32(i32 35, float %5765, float 0.000000e+00)  ; FMax(a,b)
  %5767 = fadd fast float %5766, %5762
  %5768 = fmul fast float %5767, %5763
  %5769 = call float @dx.op.unary.f32(i32 23, float %5768)  ; Log(value)
  %5770 = fmul fast float %5769, %5764
  %5771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5772 = extractvalue %dx.types.CBufRet.f32 %5771, 2
  %5773 = fmul fast float %5770, %5772
  %5774 = call float @dx.op.unary.f32(i32 7, float %5773)  ; Saturate(value)
  %5775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.i32 %5775, 1
  %5777 = add i32 %5776, -1
  %5778 = uitofp i32 %5776 to float
  %5779 = fmul fast float %5778, %5774
  %5780 = fptoui float %5779 to i32
  %5781 = call i32 @dx.op.binary.i32(i32 40, i32 %5780, i32 %5777)  ; UMin(a,b)
  %5782 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.i32 %5782, 2
  %5784 = extractvalue %dx.types.CBufRet.i32 %5782, 3
  %5785 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5760, i32 %5783, i32 %5759)  ; UMad(a,b,c)
  %5786 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5781, i32 %5784, i32 %5785)  ; UMad(a,b,c)
  %5787 = call float @dx.op.binary.f32(i32 35, float %86, float 0.000000e+00)  ; FMax(a,b)
  %5788 = fptoui float %5787 to i32
  %5789 = lshr i32 %5788, 5
  %5790 = call i32 @dx.op.binary.i32(i32 40, i32 %5789, i32 8191)  ; UMin(a,b)
  br i1 false, label %5791, label %5798

; <label>:5791                                    ; preds = %5753
  %5792 = fadd fast float 0.000000e+00, %5422
  %5793 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5792, float %5420, float %5421, float %5792)  ; Dot3(ax,ay,az,bx,by,bz)
  %5794 = call float @dx.op.unary.f32(i32 25, float %5793)  ; Rsqrt(value)
  %5795 = fmul fast float %5794, %5420
  %5796 = fmul fast float %5794, %5421
  %5797 = fmul fast float %5792, %5794
  br label %5798

; <label>:5798                                    ; preds = %5791, %5753
  %5799 = phi float [ %5795, %5791 ], [ %5420, %5753 ]
  %5800 = phi float [ %5796, %5791 ], [ %5421, %5753 ]
  %5801 = phi float [ %5797, %5791 ], [ %5422, %5753 ]
  %5802 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5803 = extractvalue %dx.types.CBufRet.i32 %5802, 2
  %5804 = add nsw i32 %5803, -1
  %5805 = call i32 @dx.op.binary.i32(i32 37, i32 %5804, i32 0)  ; IMax(a,b)
  %5806 = shl i32 %5790, 2
  %5807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5806, i32 undef)  ; BufferLoad(srv,index,wot)
  %5808 = extractvalue %dx.types.ResRet.i32 %5807, 0
  %5809 = lshr i32 %5808, 16
  %5810 = and i32 %5808, 65535
  %5811 = lshr i32 %5808, 21
  %5812 = lshr i32 %5810, 5
  %5813 = call i32 @dx.op.binary.i32(i32 40, i32 %5812, i32 %5805)  ; UMin(a,b)
  %5814 = icmp ugt i32 %5811, %5813
  br i1 %5814, label %6195, label %5815

; <label>:5815                                    ; preds = %5798
  br label %5816

; <label>:5816                                    ; preds = %6184, %5815
  %5817 = phi float [ %6185, %6184 ], [ 0.000000e+00, %5815 ]
  %5818 = phi float [ %6186, %6184 ], [ 0.000000e+00, %5815 ]
  %5819 = phi float [ %6187, %6184 ], [ 0.000000e+00, %5815 ]
  %5820 = phi float [ %6188, %6184 ], [ 1.000000e+00, %5815 ]
  %5821 = phi i32 [ %6192, %6184 ], [ %5811, %5815 ]
  %5822 = phi float [ %6189, %6184 ], [ 0.000000e+00, %5815 ]
  %5823 = phi float [ %6190, %6184 ], [ 0.000000e+00, %5815 ]
  %5824 = phi float [ %6191, %6184 ], [ 0.000000e+00, %5815 ]
  %5825 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5826 = extractvalue %dx.types.CBufRet.i32 %5825, 2
  %5827 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5786, i32 %5826, i32 %5821)  ; UMad(a,b,c)
  %5828 = shl i32 %5827, 2
  %5829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5828, i32 undef)  ; BufferLoad(srv,index,wot)
  %5830 = extractvalue %dx.types.ResRet.i32 %5829, 0
  %5831 = shl i32 %5821, 5
  %5832 = sub nsw i32 %5809, %5831
  %5833 = call i32 @dx.op.binary.i32(i32 37, i32 %5832, i32 0)  ; IMax(a,b)
  %5834 = call i32 @dx.op.binary.i32(i32 38, i32 %5833, i32 31)  ; IMin(a,b)
  %5835 = sub nsw i32 1, %5809
  %5836 = add nsw i32 %5835, %5810
  %5837 = call i32 @dx.op.binary.i32(i32 37, i32 %5836, i32 0)  ; IMax(a,b)
  %5838 = call i32 @dx.op.binary.i32(i32 38, i32 %5837, i32 32)  ; IMin(a,b)
  %5839 = and i32 %5838, 31
  %5840 = shl i32 -1, %5839
  %5841 = xor i32 %5840, -1
  %5842 = and i32 %5834, 31
  %5843 = shl i32 %5841, %5842
  %5844 = icmp eq i32 %5838, 32
  %5845 = select i1 %5844, i32 -1, i32 %5843
  %5846 = and i32 %5845, %5830
  %5847 = icmp eq i32 %5846, 0
  br i1 %5847, label %6184, label %5848

; <label>:5848                                    ; preds = %5816
  br label %5849

; <label>:5849                                    ; preds = %5958, %5848
  %5850 = phi float [ %5959, %5958 ], [ %5817, %5848 ]
  %5851 = phi float [ %5960, %5958 ], [ %5818, %5848 ]
  %5852 = phi float [ %5961, %5958 ], [ %5819, %5848 ]
  %5853 = phi float [ %5962, %5958 ], [ %5820, %5848 ]
  %5854 = phi i32 [ %5862, %5958 ], [ %5846, %5848 ]
  %5855 = phi float [ %5963, %5958 ], [ %5822, %5848 ]
  %5856 = phi float [ %5964, %5958 ], [ %5823, %5848 ]
  %5857 = phi float [ %5965, %5958 ], [ %5824, %5848 ]
  %5858 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5854)  ; FirstbitLo(value)
  %5859 = add i32 %5858, %5831
  %5860 = and i32 %5858, 31
  %5861 = shl i32 1, %5860
  %5862 = xor i32 %5861, %5854
  %5863 = mul i32 %5859, 72
  %5864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5863, i32 undef)  ; BufferLoad(srv,index,wot)
  %5865 = extractvalue %dx.types.ResRet.f32 %5864, 0
  %5866 = extractvalue %dx.types.ResRet.f32 %5864, 1
  %5867 = extractvalue %dx.types.ResRet.f32 %5864, 2
  %5868 = add i32 %5863, 12
  %5869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %5868, i32 undef)  ; BufferLoad(srv,index,wot)
  %5870 = extractvalue %dx.types.ResRet.i32 %5869, 0
  %5871 = add i32 %5863, 16
  %5872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5871, i32 undef)  ; BufferLoad(srv,index,wot)
  %5873 = extractvalue %dx.types.ResRet.f32 %5872, 0
  %5874 = extractvalue %dx.types.ResRet.f32 %5872, 1
  %5875 = extractvalue %dx.types.ResRet.f32 %5872, 2
  %5876 = add i32 %5863, 28
  %5877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5876, i32 undef)  ; BufferLoad(srv,index,wot)
  %5878 = extractvalue %dx.types.ResRet.f32 %5877, 0
  %5879 = add i32 %5863, 32
  %5880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5879, i32 undef)  ; BufferLoad(srv,index,wot)
  %5881 = extractvalue %dx.types.ResRet.f32 %5880, 0
  %5882 = extractvalue %dx.types.ResRet.f32 %5880, 1
  %5883 = extractvalue %dx.types.ResRet.f32 %5880, 2
  %5884 = extractvalue %dx.types.ResRet.f32 %5880, 3
  %5885 = add i32 %5863, 48
  %5886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5885, i32 undef)  ; BufferLoad(srv,index,wot)
  %5887 = extractvalue %dx.types.ResRet.f32 %5886, 0
  %5888 = extractvalue %dx.types.ResRet.f32 %5886, 1
  %5889 = add i32 %5863, 56
  %5890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5889, i32 undef)  ; BufferLoad(srv,index,wot)
  %5891 = extractvalue %dx.types.ResRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.ResRet.f32 %5890, 1
  %5893 = add i32 %5863, 64
  %5894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5893, i32 undef)  ; BufferLoad(srv,index,wot)
  %5895 = extractvalue %dx.types.ResRet.f32 %5894, 0
  %5896 = extractvalue %dx.types.ResRet.f32 %5894, 1
  %5897 = mul i32 %5859, 60
  %5898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5897, i32 undef)  ; BufferLoad(srv,index,wot)
  %5899 = extractvalue %dx.types.ResRet.f32 %5898, 0
  %5900 = extractvalue %dx.types.ResRet.f32 %5898, 1
  %5901 = extractvalue %dx.types.ResRet.f32 %5898, 2
  %5902 = add i32 %5897, 12
  %5903 = add i32 %5897, 48
  %5904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5903, i32 undef)  ; BufferLoad(srv,index,wot)
  %5905 = extractvalue %dx.types.ResRet.f32 %5904, 0
  %5906 = extractvalue %dx.types.ResRet.f32 %5904, 1
  %5907 = extractvalue %dx.types.ResRet.f32 %5904, 2
  %5908 = and i32 %5870, 32767
  %5909 = bitcast float %5865 to i32
  %5910 = icmp eq i32 %5909, -1
  %5911 = bitcast float %5866 to i32
  %5912 = and i32 %5870, 32768
  %5913 = icmp ne i32 %5912, 0
  %5914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5915 = extractvalue %dx.types.CBufRet.f32 %5914, 0
  %5916 = extractvalue %dx.types.CBufRet.f32 %5914, 1
  %5917 = extractvalue %dx.types.CBufRet.f32 %5914, 2
  %5918 = fsub fast float %5899, %5915
  %5919 = fsub fast float %5900, %5916
  %5920 = fsub fast float %5901, %5917
  %5921 = fsub fast float %153, %5918
  %5922 = fsub fast float %154, %5919
  %5923 = fsub fast float %155, %5920
  %5924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5902, i32 undef)  ; BufferLoad(srv,index,wot)
  %5925 = extractvalue %dx.types.ResRet.f32 %5924, 0
  %5926 = extractvalue %dx.types.ResRet.f32 %5924, 1
  %5927 = extractvalue %dx.types.ResRet.f32 %5924, 2
  %5928 = call float @dx.op.dot3.f32(i32 55, float %5921, float %5922, float %5923, float %5925, float %5926, float %5927)  ; Dot3(ax,ay,az,bx,by,bz)
  %5929 = add i32 %5897, 24
  %5930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5929, i32 undef)  ; BufferLoad(srv,index,wot)
  %5931 = extractvalue %dx.types.ResRet.f32 %5930, 0
  %5932 = extractvalue %dx.types.ResRet.f32 %5930, 1
  %5933 = extractvalue %dx.types.ResRet.f32 %5930, 2
  %5934 = call float @dx.op.dot3.f32(i32 55, float %5921, float %5922, float %5923, float %5931, float %5932, float %5933)  ; Dot3(ax,ay,az,bx,by,bz)
  %5935 = add i32 %5897, 36
  %5936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5935, i32 undef)  ; BufferLoad(srv,index,wot)
  %5937 = extractvalue %dx.types.ResRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.ResRet.f32 %5936, 1
  %5939 = extractvalue %dx.types.ResRet.f32 %5936, 2
  %5940 = call float @dx.op.dot3.f32(i32 55, float %5921, float %5922, float %5923, float %5937, float %5938, float %5939)  ; Dot3(ax,ay,az,bx,by,bz)
  %5941 = call float @dx.op.unary.f32(i32 6, float %5928)  ; FAbs(value)
  %5942 = call float @dx.op.unary.f32(i32 6, float %5934)  ; FAbs(value)
  %5943 = call float @dx.op.unary.f32(i32 6, float %5940)  ; FAbs(value)
  %5944 = fsub fast float %5905, %5941
  %5945 = fsub fast float %5906, %5942
  %5946 = fsub fast float %5907, %5943
  %5947 = fmul fast float %5944, %5873
  %5948 = fmul fast float %5945, %5874
  %5949 = fmul fast float %5946, %5875
  %5950 = call float @dx.op.binary.f32(i32 36, float %5948, float %5949)  ; FMin(a,b)
  %5951 = call float @dx.op.binary.f32(i32 36, float %5947, float %5950)  ; FMin(a,b)
  %5952 = call float @dx.op.unary.f32(i32 7, float %5951)  ; Saturate(value)
  %5953 = call float @dx.op.binary.f32(i32 36, float %5853, float %5952)  ; FMin(a,b)
  %5954 = uitofp i1 %5913 to float
  %5955 = fsub fast float 1.000000e+00, %5954
  %5956 = fmul fast float %5953, %5955
  %5957 = fcmp fast ogt float %5956, 0.000000e+00
  br i1 %5957, label %5967, label %5958

; <label>:5958                                    ; preds = %6109, %5849
  %5959 = phi float [ %6173, %6109 ], [ %5850, %5849 ]
  %5960 = phi float [ %6174, %6109 ], [ %5851, %5849 ]
  %5961 = phi float [ %6175, %6109 ], [ %5852, %5849 ]
  %5962 = phi float [ %6182, %6109 ], [ %5853, %5849 ]
  %5963 = phi float [ %6179, %6109 ], [ %5855, %5849 ]
  %5964 = phi float [ %6180, %6109 ], [ %5856, %5849 ]
  %5965 = phi float [ %6181, %6109 ], [ %5857, %5849 ]
  %5966 = icmp eq i32 %5854, %5861
  br i1 %5966, label %6183, label %5849

; <label>:5967                                    ; preds = %5849
  br i1 %5910, label %6025, label %5968

; <label>:5968                                    ; preds = %5967
  %5969 = fsub fast float -0.000000e+00, %5925
  %5970 = fsub fast float -0.000000e+00, %5926
  %5971 = fsub fast float -0.000000e+00, %5927
  %5972 = call float @dx.op.dot3.f32(i32 55, float %5799, float %5800, float %5801, float %5969, float %5970, float %5971)  ; Dot3(ax,ay,az,bx,by,bz)
  %5973 = fsub fast float -0.000000e+00, %5972
  %5974 = call float @dx.op.dot3.f32(i32 55, float %5921, float %5922, float %5923, float %5969, float %5970, float %5971)  ; Dot3(ax,ay,az,bx,by,bz)
  %5975 = fadd fast float %5974, %5888
  %5976 = fadd fast float %5887, %5974
  %5977 = fsub fast float -0.000000e+00, %5976
  %5978 = fcmp ogt float %5972, -0.000000e+00
  %5979 = select i1 %5978, float %5977, float %5975
  %5980 = call float @dx.op.unary.f32(i32 6, float %5973)  ; FAbs(value)
  %5981 = fdiv fast float 1.000000e+00, %5980
  %5982 = fmul fast float %5979, %5981
  %5983 = call float @dx.op.binary.f32(i32 35, float %5982, float 0.000000e+00)  ; FMax(a,b)
  %5984 = fsub fast float -0.000000e+00, %5931
  %5985 = fsub fast float -0.000000e+00, %5932
  %5986 = fsub fast float -0.000000e+00, %5933
  %5987 = call float @dx.op.dot3.f32(i32 55, float %5799, float %5800, float %5801, float %5984, float %5985, float %5986)  ; Dot3(ax,ay,az,bx,by,bz)
  %5988 = fsub fast float -0.000000e+00, %5987
  %5989 = call float @dx.op.dot3.f32(i32 55, float %5921, float %5922, float %5923, float %5984, float %5985, float %5986)  ; Dot3(ax,ay,az,bx,by,bz)
  %5990 = fadd fast float %5989, %5892
  %5991 = fadd fast float %5891, %5989
  %5992 = fsub fast float -0.000000e+00, %5991
  %5993 = fcmp ogt float %5987, -0.000000e+00
  %5994 = select i1 %5993, float %5992, float %5990
  %5995 = call float @dx.op.unary.f32(i32 6, float %5988)  ; FAbs(value)
  %5996 = fdiv fast float 1.000000e+00, %5995
  %5997 = fmul fast float %5994, %5996
  %5998 = call float @dx.op.binary.f32(i32 35, float %5997, float 0.000000e+00)  ; FMax(a,b)
  %5999 = fsub fast float -0.000000e+00, %5937
  %6000 = fsub fast float -0.000000e+00, %5938
  %6001 = fsub fast float -0.000000e+00, %5939
  %6002 = call float @dx.op.dot3.f32(i32 55, float %5799, float %5800, float %5801, float %5999, float %6000, float %6001)  ; Dot3(ax,ay,az,bx,by,bz)
  %6003 = fsub fast float -0.000000e+00, %6002
  %6004 = call float @dx.op.dot3.f32(i32 55, float %5921, float %5922, float %5923, float %5999, float %6000, float %6001)  ; Dot3(ax,ay,az,bx,by,bz)
  %6005 = fadd fast float %6004, %5896
  %6006 = fadd fast float %5895, %6004
  %6007 = fsub fast float -0.000000e+00, %6006
  %6008 = fcmp ogt float %6002, -0.000000e+00
  %6009 = select i1 %6008, float %6007, float %6005
  %6010 = call float @dx.op.unary.f32(i32 6, float %6003)  ; FAbs(value)
  %6011 = fdiv fast float 1.000000e+00, %6010
  %6012 = fmul fast float %6009, %6011
  %6013 = call float @dx.op.binary.f32(i32 35, float %6012, float 0.000000e+00)  ; FMax(a,b)
  %6014 = call float @dx.op.binary.f32(i32 36, float %5998, float %6013)  ; FMin(a,b)
  %6015 = call float @dx.op.binary.f32(i32 36, float %5983, float %6014)  ; FMin(a,b)
  %6016 = fmul fast float %6015, %5799
  %6017 = fmul fast float %6015, %5800
  %6018 = fmul fast float %6015, %5801
  %6019 = fadd fast float %6016, %153
  %6020 = fadd fast float %6017, %154
  %6021 = fadd fast float %6018, %155
  %6022 = fsub fast float %6019, %5865
  %6023 = fsub fast float %6020, %5866
  %6024 = fsub fast float %6021, %5867
  br label %6032

; <label>:6025                                    ; preds = %5967
  %6026 = fmul fast float %5799, 8.096000e+03
  %6027 = fmul fast float %5800, 8.096000e+03
  %6028 = fmul fast float %5801, 8.096000e+03
  %6029 = fadd fast float %6026, %153
  %6030 = fadd fast float %6027, %154
  %6031 = fadd fast float %6028, %155
  br label %6032

; <label>:6032                                    ; preds = %6025, %5968
  %6033 = phi float [ %5799, %6025 ], [ %6022, %5968 ]
  %6034 = phi float [ %5800, %6025 ], [ %6023, %5968 ]
  %6035 = phi float [ %5801, %6025 ], [ %6024, %5968 ]
  %6036 = phi float [ %6029, %6025 ], [ %6019, %5968 ]
  %6037 = phi float [ %6030, %6025 ], [ %6020, %5968 ]
  %6038 = phi float [ %6031, %6025 ], [ %6021, %5968 ]
  %6039 = fcmp fast olt float %5884, 1.000000e+00
  br i1 %6039, label %6040, label %6071, !dx.controlflow.hints !86

; <label>:6040                                    ; preds = %6032
  %6041 = fmul fast float %6035, %5882
  %6042 = fmul fast float %6034, %5883
  %6043 = fsub fast float %6041, %6042
  %6044 = fmul fast float %6033, %5883
  %6045 = fmul fast float %6035, %5881
  %6046 = fsub fast float %6044, %6045
  %6047 = fmul fast float %6034, %5881
  %6048 = fmul fast float %6033, %5882
  %6049 = fsub fast float %6047, %6048
  %6050 = fmul fast float %6043, 2.000000e+00
  %6051 = fmul fast float %6046, 2.000000e+00
  %6052 = fmul fast float %6049, 2.000000e+00
  %6053 = fmul fast float %6050, %5884
  %6054 = fmul fast float %6051, %5884
  %6055 = fmul fast float %6052, %5884
  %6056 = fmul fast float %6052, %5882
  %6057 = fmul fast float %6051, %5883
  %6058 = fmul fast float %6050, %5883
  %6059 = fmul fast float %6052, %5881
  %6060 = fmul fast float %6051, %5881
  %6061 = fmul fast float %6050, %5882
  %6062 = fadd fast float %6056, %6033
  %6063 = fadd fast float %6062, %6053
  %6064 = fsub fast float %6063, %6057
  %6065 = fsub fast float %6034, %6059
  %6066 = fadd fast float %6065, %6054
  %6067 = fadd fast float %6066, %6058
  %6068 = fadd fast float %6055, %6035
  %6069 = fsub fast float %6068, %6061
  %6070 = fadd fast float %6069, %6060
  br label %6071

; <label>:6071                                    ; preds = %6040, %6032
  %6072 = phi float [ %6064, %6040 ], [ %6033, %6032 ]
  %6073 = phi float [ %6067, %6040 ], [ %6034, %6032 ]
  %6074 = phi float [ %6070, %6040 ], [ %6035, %6032 ]
  br i1 %5910, label %6106, label %6075

; <label>:6075                                    ; preds = %6071
  %6076 = fmul fast float %5410, 0x400187C840000000
  %6077 = fadd fast float %6076, 0xC00EFC2120000000
  %6078 = fmul fast float %6077, %5410
  %6079 = fadd fast float %6078, 0x3FE5D16340000000
  %6080 = fmul fast float %6079, %5410
  %6081 = fadd fast float %6080, 1.000000e+00
  %6082 = call float @dx.op.unary.f32(i32 7, float %6081)  ; Saturate(value)
  %6083 = fsub fast float %6036, %153
  %6084 = fsub fast float %6037, %154
  %6085 = fsub fast float %6038, %155
  %6086 = fsub fast float %6036, %5865
  %6087 = fsub fast float %6037, %5866
  %6088 = fsub fast float %6038, %5867
  %6089 = call float @dx.op.dot3.f32(i32 55, float %6083, float %6084, float %6085, float %6083, float %6084, float %6085)  ; Dot3(ax,ay,az,bx,by,bz)
  %6090 = call float @dx.op.dot3.f32(i32 55, float %6086, float %6087, float %6088, float %6086, float %6087, float %6088)  ; Dot3(ax,ay,az,bx,by,bz)
  %6091 = fadd fast float %6090, 0x3EE4F8B580000000
  %6092 = fdiv fast float %6089, %6091
  %6093 = bitcast float %6092 to i32
  %6094 = ashr i32 %6093, 1
  %6095 = add nsw i32 %6094, 532487669
  %6096 = bitcast i32 %6095 to float
  %6097 = fmul fast float %6096, %6082
  %6098 = call float @dx.op.unary.f32(i32 7, float %6097)  ; Saturate(value)
  %6099 = fmul fast float %6098, 0x4009981AE0000000
  %6100 = fsub fast float 0x40111BBD80000000, %6099
  %6101 = fmul fast float %6100, %6098
  %6102 = fadd fast float %6101, 0xC0009F6020000000
  %6103 = fmul fast float %6102, %6098
  %6104 = fadd fast float %6103, 1.000000e+00
  %6105 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  br label %6109

; <label>:6106                                    ; preds = %6071
  %6107 = icmp ne i32 %5911, -1
  %6108 = zext i1 %6107 to i32
  br label %6109

; <label>:6109                                    ; preds = %6106, %6075
  %6110 = phi float [ %5410, %6106 ], [ %6105, %6075 ]
  %6111 = phi i32 [ %6108, %6106 ], [ 0, %6075 ]
  %6112 = fmul float %6110, 5.000000e+00
  %6113 = fsub float 5.000000e+00, %6112
  %6114 = icmp ne i32 %6111, 0
  %6115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.f32 %6115, 3
  %6117 = fadd fast float %6116, %6113
  %6118 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6117)  ; FMax(a,b)
  %6119 = call float @dx.op.unary.f32(i32 6, float %6072)  ; FAbs(value)
  %6120 = call float @dx.op.unary.f32(i32 6, float %6073)  ; FAbs(value)
  %6121 = fadd fast float %6120, %6119
  %6122 = call float @dx.op.unary.f32(i32 6, float %6074)  ; FAbs(value)
  %6123 = fadd fast float %6121, %6122
  %6124 = fcmp fast oeq float %6123, 0.000000e+00
  %6125 = fdiv fast float 1.000000e+00, %6123
  %6126 = select i1 %6124, float 1.000000e+00, float %6125
  %6127 = fmul fast float %6126, %6072
  %6128 = fmul fast float %6126, %6073
  %6129 = call float @dx.op.unary.f32(i32 6, float %6128)  ; FAbs(value)
  %6130 = call float @dx.op.unary.f32(i32 6, float %6127)  ; FAbs(value)
  %6131 = fsub fast float 1.000000e+00, %6129
  %6132 = fsub fast float 1.000000e+00, %6130
  %6133 = fcmp fast oge float %6127, 0.000000e+00
  %6134 = fcmp fast oge float %6128, 0.000000e+00
  %6135 = select i1 %6133, float 1.000000e+00, float -1.000000e+00
  %6136 = select i1 %6134, float 1.000000e+00, float -1.000000e+00
  %6137 = fcmp fast ole float %6074, 0.000000e+00
  %6138 = fmul fast float %6135, %6131
  %6139 = fmul fast float %6136, %6132
  %6140 = select i1 %6137, float %6138, float %6127
  %6141 = select i1 %6137, float %6139, float %6128
  %6142 = fmul fast float %6140, 5.000000e-01
  %6143 = fmul fast float %6141, 5.000000e-01
  %6144 = fadd fast float %6142, 5.000000e-01
  %6145 = fadd fast float %6143, 5.000000e-01
  %6146 = uitofp i32 %5908 to float
  %6147 = call float @dx.op.binary.f32(i32 36, float %6118, float 3.000000e+00)  ; FMin(a,b)
  %6148 = fadd fast float %6147, 2.000000e+00
  %6149 = call float @dx.op.unary.f32(i32 21, float %6148)  ; Exp(value)
  %6150 = extractvalue %dx.types.CBufRet.f32 %6115, 1
  %6151 = fmul fast float %6150, %6149
  %6152 = fmul fast float %6151, 2.000000e+00
  %6153 = fsub fast float 1.000000e+00, %6152
  %6154 = fmul fast float %6144, %6153
  %6155 = fmul fast float %6145, %6153
  %6156 = fadd fast float %6154, %6151
  %6157 = fadd fast float %6155, %6151
  %6158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %41, float %6156, float %6157, float %6146, float undef, i32 0, i32 0, i32 undef, float %6118)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6159 = extractvalue %dx.types.ResRet.f32 %6158, 0
  %6160 = extractvalue %dx.types.ResRet.f32 %6158, 1
  %6161 = extractvalue %dx.types.ResRet.f32 %6158, 2
  %6162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.f32 %6162, 3
  %6164 = fmul fast float %6163, %5878
  %6165 = call float @dx.op.binary.f32(i32 36, float %5440, float %6164)  ; FMin(a,b)
  %6166 = select i1 %6114, float %6165, float %6164
  %6167 = fmul fast float %6159, %5956
  %6168 = fmul fast float %6167, %6166
  %6169 = fmul fast float %6160, %5956
  %6170 = fmul fast float %6169, %6166
  %6171 = fmul fast float %6161, %5956
  %6172 = fmul fast float %6171, %6166
  %6173 = fadd fast float %6168, %5850
  %6174 = fadd fast float %6170, %5851
  %6175 = fadd fast float %6172, %5852
  %6176 = fmul fast float %6036, %5956
  %6177 = fmul fast float %6037, %5956
  %6178 = fmul fast float %6038, %5956
  %6179 = fadd fast float %6176, %5855
  %6180 = fadd fast float %6177, %5856
  %6181 = fadd fast float %6178, %5857
  %6182 = fsub fast float %5853, %5956
  br label %5958

; <label>:6183                                    ; preds = %5958
  br label %6184

; <label>:6184                                    ; preds = %6183, %5816
  %6185 = phi float [ %5817, %5816 ], [ %5959, %6183 ]
  %6186 = phi float [ %5818, %5816 ], [ %5960, %6183 ]
  %6187 = phi float [ %5819, %5816 ], [ %5961, %6183 ]
  %6188 = phi float [ %5820, %5816 ], [ %5962, %6183 ]
  %6189 = phi float [ %5822, %5816 ], [ %5963, %6183 ]
  %6190 = phi float [ %5823, %5816 ], [ %5964, %6183 ]
  %6191 = phi float [ %5824, %5816 ], [ %5965, %6183 ]
  %6192 = add i32 %5821, 1
  %6193 = icmp ugt i32 %6192, %5813
  br i1 %6193, label %6194, label %5816, !llvm.loop !87

; <label>:6194                                    ; preds = %6184
  br label %6195

; <label>:6195                                    ; preds = %6194, %5798
  %6196 = phi float [ 0.000000e+00, %5798 ], [ %6185, %6194 ]
  %6197 = phi float [ 0.000000e+00, %5798 ], [ %6186, %6194 ]
  %6198 = phi float [ 0.000000e+00, %5798 ], [ %6187, %6194 ]
  %6199 = phi float [ 0.000000e+00, %5798 ], [ %6189, %6194 ]
  %6200 = phi float [ 0.000000e+00, %5798 ], [ %6190, %6194 ]
  %6201 = phi float [ 0.000000e+00, %5798 ], [ %6191, %6194 ]
  %6202 = call float @dx.op.dot3.f32(i32 55, float %6196, float %6197, float %6198, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6203 = select i1 %214, float 0.000000e+00, float %6196
  %6204 = select i1 %214, float %6202, float %6197
  %6205 = select i1 %214, float 0.000000e+00, float %6198
  %6206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %6207 = extractvalue %dx.types.CBufRet.f32 %6206, 0
  %6208 = extractvalue %dx.types.CBufRet.f32 %6206, 1
  %6209 = extractvalue %dx.types.CBufRet.f32 %6206, 2
  %6210 = extractvalue %dx.types.CBufRet.f32 %6206, 3
  %6211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %6212 = extractvalue %dx.types.CBufRet.f32 %6211, 0
  %6213 = extractvalue %dx.types.CBufRet.f32 %6211, 1
  %6214 = extractvalue %dx.types.CBufRet.f32 %6211, 2
  %6215 = extractvalue %dx.types.CBufRet.f32 %6211, 3
  %6216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %6217 = extractvalue %dx.types.CBufRet.f32 %6216, 0
  %6218 = extractvalue %dx.types.CBufRet.f32 %6216, 1
  %6219 = extractvalue %dx.types.CBufRet.f32 %6216, 2
  %6220 = extractvalue %dx.types.CBufRet.f32 %6216, 3
  %6221 = call float @dx.op.dot3.f32(i32 55, float %6217, float %6218, float %6219, float %5420, float %5421, float %5422)  ; Dot3(ax,ay,az,bx,by,bz)
  %6222 = call float @dx.op.dot3.f32(i32 55, float %6199, float %6200, float %6201, float %6217, float %6218, float %6219)  ; Dot3(ax,ay,az,bx,by,bz)
  %6223 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %6217, float %6218, float %6219)  ; Dot3(ax,ay,az,bx,by,bz)
  %6224 = fadd fast float %5410, -1.000000e+00
  %6225 = fsub fast float %6222, %6223
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 2
  %6228 = fmul fast float %6227, %6222
  %6229 = fdiv fast float 1.600000e+02, %6228
  %6230 = fmul fast float %6224, %6224
  %6231 = fmul fast float %6230, 0xBFB5B17960000000
  %6232 = fmul fast float %6231, %6225
  %6233 = fmul fast float %6232, %6229
  %6234 = call float @dx.op.unary.f32(i32 21, float %6233)  ; Exp(value)
  %6235 = fmul fast float %6234, 0x3FF04B2960000000
  %6236 = fsub fast float 0x3FF04B2960000000, %6235
  %6237 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6238 = fmul fast float %6237, 4.000000e+00
  %6239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6239, 0
  %6241 = extractvalue %dx.types.CBufRet.f32 %6239, 1
  %6242 = extractvalue %dx.types.CBufRet.f32 %6239, 2
  %6243 = fadd fast float %6240, %6199
  %6244 = fadd fast float %6241, %6200
  %6245 = fadd fast float %6242, %6201
  %6246 = fmul fast float %6243, %6207
  %6247 = call float @dx.op.tertiary.f32(i32 46, float %6244, float %6208, float %6246)  ; FMad(a,b,c)
  %6248 = call float @dx.op.tertiary.f32(i32 46, float %6245, float %6209, float %6247)  ; FMad(a,b,c)
  %6249 = fadd fast float %6248, %6210
  %6250 = fmul fast float %6243, %6212
  %6251 = call float @dx.op.tertiary.f32(i32 46, float %6244, float %6213, float %6250)  ; FMad(a,b,c)
  %6252 = call float @dx.op.tertiary.f32(i32 46, float %6245, float %6214, float %6251)  ; FMad(a,b,c)
  %6253 = fadd fast float %6252, %6215
  %6254 = fmul fast float %6243, %6217
  %6255 = call float @dx.op.tertiary.f32(i32 46, float %6244, float %6218, float %6254)  ; FMad(a,b,c)
  %6256 = call float @dx.op.tertiary.f32(i32 46, float %6245, float %6219, float %6255)  ; FMad(a,b,c)
  %6257 = fadd fast float %6256, %6220
  %6258 = fdiv fast float %6249, %6257
  %6259 = fdiv fast float %6253, %6257
  %6260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.CBufRet.f32 %6260, 1
  %6263 = fmul fast float %6261, %6258
  %6264 = fmul fast float %6262, %6259
  %6265 = extractvalue %dx.types.CBufRet.f32 %6260, 2
  %6266 = extractvalue %dx.types.CBufRet.f32 %6260, 3
  %6267 = fadd fast float %6263, %6265
  %6268 = fadd fast float %6264, %6266
  %6269 = fmul fast float %6221, 8.000000e+00
  %6270 = call float @dx.op.unary.f32(i32 7, float %6269)  ; Saturate(value)
  %6271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6271, 0
  %6273 = fmul fast float %6267, 2.000000e+00
  %6274 = fmul fast float %6268, 2.000000e+00
  %6275 = fadd fast float %6273, -1.000000e+00
  %6276 = fadd fast float %6274, -1.000000e+00
  %6277 = fmul fast float %6275, %6275
  %6278 = fsub fast float 1.000000e+00, %6277
  %6279 = call float @dx.op.unary.f32(i32 7, float %6278)  ; Saturate(value)
  %6280 = fmul fast float %6276, %6276
  %6281 = fsub fast float 1.000000e+00, %6280
  %6282 = call float @dx.op.unary.f32(i32 7, float %6281)  ; Saturate(value)
  %6283 = fmul fast float %6272, %6279
  %6284 = fmul fast float %6283, %6282
  %6285 = call float @dx.op.unary.f32(i32 7, float %6284)  ; Saturate(value)
  %6286 = fmul fast float %6285, %6270
  %6287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %6267, float %6268, float undef, float undef, i32 0, i32 0, i32 undef, float %6238)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6288 = extractvalue %dx.types.ResRet.f32 %6287, 0
  %6289 = extractvalue %dx.types.ResRet.f32 %6287, 1
  %6290 = extractvalue %dx.types.ResRet.f32 %6287, 2
  %6291 = select i1 %214, float 0.000000e+00, float %6289
  %6292 = select i1 %214, float 0.000000e+00, float %6290
  %6293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6294 = extractvalue %dx.types.CBufRet.f32 %6293, 2
  %6295 = fmul fast float %6294, %6288
  %6296 = fmul fast float %6291, %6294
  %6297 = fmul fast float %6292, %6294
  %6298 = fsub fast float %6295, %6203
  %6299 = fsub fast float %6296, %6204
  %6300 = fsub fast float %6297, %6205
  %6301 = fmul fast float %6298, %6286
  %6302 = fmul fast float %6299, %6286
  %6303 = fmul fast float %6300, %6286
  %6304 = fadd fast float %6301, %6203
  %6305 = fadd fast float %6302, %6204
  %6306 = fadd fast float %6303, %6205
  br label %6307

; <label>:6307                                    ; preds = %6195, %5734
  %6308 = phi float [ %5680, %5734 ], [ %6304, %6195 ]
  %6309 = phi float [ %5681, %5734 ], [ %6305, %6195 ]
  %6310 = phi float [ %5682, %5734 ], [ %6306, %6195 ]
  %6311 = call float @dx.op.dot3.f32(i32 55, float %5401, float %5402, float %5403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6312 = fcmp fast ogt float %6311, 0x3E7FF19E20000000
  %6313 = fdiv fast float 1.000000e+00, %6311
  %6314 = select i1 %6312, float %6313, float 0.000000e+00
  %6315 = fmul fast float %6314, %5401
  %6316 = fmul fast float %6314, %5402
  %6317 = fmul fast float %6314, %5403
  %6318 = fadd fast float %6315, -1.000000e+00
  %6319 = fadd fast float %6316, -1.000000e+00
  %6320 = fadd fast float %6317, -1.000000e+00
  %6321 = fmul fast float %6318, 5.000000e-01
  %6322 = fmul fast float %6319, 5.000000e-01
  %6323 = fmul fast float %6320, 5.000000e-01
  %6324 = fadd fast float %6321, 1.000000e+00
  %6325 = fadd fast float %6322, 1.000000e+00
  %6326 = fadd fast float %6323, 1.000000e+00
  %6327 = call float @dx.op.binary.f32(i32 35, float %5414, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6328 = fdiv fast float %4415, %6327
  %6329 = fcmp fast olt float %5110, 1.270000e+02
  %6330 = fcmp fast olt float %5111, 1.270000e+02
  %6331 = fcmp fast olt float %5112, 1.270000e+02
  %6332 = fmul fast float %5110, 0xBFF7154760000000
  %6333 = fmul fast float %6332, %6328
  %6334 = fmul fast float %5111, 0xBFF7154760000000
  %6335 = fmul fast float %6334, %6328
  %6336 = fmul fast float %5112, 0xBFF7154760000000
  %6337 = fmul fast float %6336, %6328
  %6338 = call float @dx.op.unary.f32(i32 21, float %6333)  ; Exp(value)
  %6339 = call float @dx.op.unary.f32(i32 21, float %6335)  ; Exp(value)
  %6340 = call float @dx.op.unary.f32(i32 21, float %6337)  ; Exp(value)
  %6341 = call float @dx.op.unary.f32(i32 7, float %6338)  ; Saturate(value)
  %6342 = call float @dx.op.unary.f32(i32 7, float %6339)  ; Saturate(value)
  %6343 = call float @dx.op.unary.f32(i32 7, float %6340)  ; Saturate(value)
  %6344 = select i1 %6329, float %6341, float 0.000000e+00
  %6345 = select i1 %6330, float %6342, float 0.000000e+00
  %6346 = select i1 %6331, float %6343, float 0.000000e+00
  %6347 = fmul fast float %6344, %5740
  %6348 = fmul fast float %6345, %5740
  %6349 = fmul fast float %6346, %5740
  %6350 = fadd fast float %6347, -1.000000e+00
  %6351 = fadd fast float %6348, -1.000000e+00
  %6352 = fadd fast float %6349, -1.000000e+00
  %6353 = fmul fast float %6350, %5058
  %6354 = fmul fast float %6351, %5058
  %6355 = fmul fast float %6352, %5058
  %6356 = fmul fast float %6308, %5735
  %6357 = fmul fast float %6309, %5736
  %6358 = fmul fast float %6310, %5737
  %6359 = fsub fast float 1.000000e+00, %5414
  %6360 = bitcast float %6359 to i32
  %6361 = sitofp i32 %6360 to float
  %6362 = fmul fast float %6361, 5.000000e+00
  %6363 = fadd fast float %6362, 0xC1EFBF8940000000
  %6364 = fptosi float %6363 to i32
  %6365 = bitcast i32 %6364 to float
  %6366 = fmul fast float %6365, %5062
  %6367 = fmul fast float %5672, %6366
  %6368 = fmul fast float %6367, %5740
  %6369 = fmul fast float %6368, %6324
  %6370 = fmul fast float %5673, %6366
  %6371 = fmul fast float %6370, %5740
  %6372 = fmul fast float %6371, %6325
  %6373 = fmul fast float %5674, %6366
  %6374 = fmul fast float %6373, %5740
  %6375 = fmul fast float %6374, %6326
  %6376 = fadd fast float %6356, %5048
  %6377 = fadd fast float %6376, %6369
  %6378 = fmul fast float %6377, %5058
  %6379 = fadd fast float %6357, %5049
  %6380 = fadd fast float %6379, %6372
  %6381 = fmul fast float %6380, %5058
  %6382 = fadd fast float %6358, %5050
  %6383 = fadd fast float %6382, %6375
  %6384 = fmul fast float %6383, %5058
  %6385 = fmul fast float %5408, 0x4012D0A400000000
  %6386 = fadd fast float %6355, 1.000000e+00
  %6387 = fadd fast float %6354, 1.000000e+00
  %6388 = fadd fast float %6353, 1.000000e+00
  %6389 = fmul fast float %5740, %5674
  %6390 = fmul fast float %5740, %5673
  %6391 = fmul fast float %5740, %5672
  %6392 = fmul fast float %5429, %5058
  %6393 = fsub fast float 1.000000e+00, %6392
  %6394 = call float @dx.op.unary.f32(i32 7, float %6393)  ; Saturate(value)
  %6395 = fsub fast float 1.000000e+00, %6394
  %6396 = fadd fast float %6385, 0x3FDB6377A0000000
  %6397 = fmul fast float %6395, %6396
  %6398 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5129, float %5130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6399 = fadd fast float %6397, %6398
  %6400 = call float @dx.op.unary.f32(i32 7, float %6399)  ; Saturate(value)
  %6401 = call float @dx.op.binary.f32(i32 35, float %6400, float 0x3F847AE140000000)  ; FMax(a,b)
  %6402 = fmul fast float %6401, %6401
  %6403 = fmul fast float %6402, %6402
  %6404 = fmul fast float %6403, 0xC00A935000000000
  %6405 = call float @dx.op.unary.f32(i32 21, float %6404)  ; Exp(value)
  %6406 = fsub fast float 1.000000e+00, %6405
  %6407 = fmul fast float %6388, %5676
  %6408 = fmul fast float %6407, %6406
  %6409 = fmul fast float %6387, %5677
  %6410 = fmul fast float %6409, %6406
  %6411 = fmul fast float %6386, %5678
  %6412 = fmul fast float %6411, %6406
  %6413 = fadd fast float %6408, %6391
  %6414 = fmul fast float %6413, %5058
  %6415 = fadd fast float %6410, %6390
  %6416 = fmul fast float %6415, %5058
  %6417 = fadd fast float %6412, %6389
  %6418 = fmul fast float %6417, %5058
  %6419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6420 = extractvalue %dx.types.CBufRet.f32 %6419, 3
  %6421 = fcmp fast oeq float %6420, 0.000000e+00
  br i1 %6421, label %8025, label %6422

; <label>:6422                                    ; preds = %6307
  %6423 = extractvalue %dx.types.CBufRet.f32 %6419, 0
  %6424 = extractvalue %dx.types.CBufRet.f32 %6419, 1
  %6425 = extractvalue %dx.types.CBufRet.f32 %6419, 2
  %6426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6427 = extractvalue %dx.types.CBufRet.f32 %6426, 0
  %6428 = extractvalue %dx.types.CBufRet.f32 %6426, 1
  %6429 = extractvalue %dx.types.CBufRet.f32 %6426, 2
  %6430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6431 = extractvalue %dx.types.CBufRet.f32 %6430, 0
  %6432 = extractvalue %dx.types.CBufRet.f32 %6430, 1
  %6433 = call float @dx.op.dot3.f32(i32 55, float %6427, float %6428, float %6429, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6434 = select i1 %214, float %6431, float %6427
  %6435 = select i1 %214, float %6433, float %6428
  %6436 = select i1 %214, float %6432, float %6429
  %6437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6438 = extractvalue %dx.types.CBufRet.f32 %6437, 2
  %6439 = fmul fast float %6438, %105
  %6440 = fmul fast float %6438, %106
  %6441 = fmul fast float %6438, %107
  %6442 = fadd fast float %6439, %153
  %6443 = fadd fast float %6440, %154
  %6444 = fadd fast float %6441, %155
  %6445 = fcmp fast olt float %6420, 0.000000e+00
  br i1 %6445, label %7541, label %6446

; <label>:6446                                    ; preds = %6422
  %6447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6448 = extractvalue %dx.types.CBufRet.f32 %6447, 0
  %6449 = extractvalue %dx.types.CBufRet.f32 %6447, 1
  %6450 = extractvalue %dx.types.CBufRet.f32 %6447, 2
  %6451 = extractvalue %dx.types.CBufRet.f32 %6447, 3
  %6452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.f32 %6452, 0
  %6454 = extractvalue %dx.types.CBufRet.f32 %6452, 1
  %6455 = extractvalue %dx.types.CBufRet.f32 %6452, 2
  %6456 = extractvalue %dx.types.CBufRet.f32 %6452, 3
  %6457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6458 = extractvalue %dx.types.CBufRet.f32 %6457, 0
  %6459 = extractvalue %dx.types.CBufRet.f32 %6457, 1
  %6460 = extractvalue %dx.types.CBufRet.f32 %6457, 2
  %6461 = extractvalue %dx.types.CBufRet.f32 %6457, 3
  %6462 = fmul fast float %6448, %6442
  %6463 = call float @dx.op.tertiary.f32(i32 46, float %6443, float %6449, float %6462)  ; FMad(a,b,c)
  %6464 = call float @dx.op.tertiary.f32(i32 46, float %6444, float %6450, float %6463)  ; FMad(a,b,c)
  %6465 = fadd fast float %6464, %6451
  %6466 = fmul fast float %6453, %6442
  %6467 = call float @dx.op.tertiary.f32(i32 46, float %6443, float %6454, float %6466)  ; FMad(a,b,c)
  %6468 = call float @dx.op.tertiary.f32(i32 46, float %6444, float %6455, float %6467)  ; FMad(a,b,c)
  %6469 = fadd fast float %6468, %6456
  %6470 = fmul fast float %6458, %6442
  %6471 = call float @dx.op.tertiary.f32(i32 46, float %6443, float %6459, float %6470)  ; FMad(a,b,c)
  %6472 = call float @dx.op.tertiary.f32(i32 46, float %6444, float %6460, float %6471)  ; FMad(a,b,c)
  %6473 = fadd fast float %6472, %6461
  %6474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6475 = extractvalue %dx.types.CBufRet.f32 %6474, 0
  %6476 = extractvalue %dx.types.CBufRet.f32 %6474, 1
  %6477 = extractvalue %dx.types.CBufRet.f32 %6474, 3
  %6478 = fmul fast float %6477, %6465
  %6479 = fmul fast float %6477, %6469
  %6480 = fadd fast float %6478, %6475
  %6481 = fadd fast float %6479, %6476
  %6482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.f32 %6482, 0
  %6484 = extractvalue %dx.types.CBufRet.f32 %6482, 1
  %6485 = extractvalue %dx.types.CBufRet.f32 %6482, 3
  %6486 = fmul fast float %6485, %6465
  %6487 = fmul fast float %6485, %6469
  %6488 = fadd fast float %6486, %6483
  %6489 = fadd fast float %6487, %6484
  %6490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6490, 1
  %6492 = fsub fast float %6491, %6473
  %6493 = extractvalue %dx.types.CBufRet.f32 %6490, 2
  %6494 = fmul fast float %6492, %6493
  %6495 = fsub fast float 1.000000e+00, %6494
  %6496 = call float @dx.op.unary.f32(i32 7, float %6495)  ; Saturate(value)
  %6497 = extractvalue %dx.types.CBufRet.f32 %6482, 2
  %6498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6499 = extractvalue %dx.types.CBufRet.f32 %6498, 2
  %6500 = fadd fast float %6499, %6497
  %6501 = fcmp fast ogt float %6500, 0.000000e+00
  br i1 %6501, label %6502, label %6526

; <label>:6502                                    ; preds = %6446
  %6503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6504 = extractvalue %dx.types.CBufRet.f32 %6503, 0
  %6505 = extractvalue %dx.types.CBufRet.f32 %6503, 1
  %6506 = fsub fast float %6488, %6504
  %6507 = fsub fast float %6489, %6505
  %6508 = fcmp fast olt float %6506, 0.000000e+00
  %6509 = fcmp fast olt float %6507, 0.000000e+00
  %6510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6511 = extractvalue %dx.types.CBufRet.f32 %6510, 0
  %6512 = extractvalue %dx.types.CBufRet.f32 %6510, 1
  %6513 = extractvalue %dx.types.CBufRet.f32 %6510, 2
  %6514 = extractvalue %dx.types.CBufRet.f32 %6510, 3
  %6515 = select i1 %6508, float %6511, float %6513
  %6516 = select i1 %6509, float %6512, float %6514
  %6517 = fmul fast float %6515, %6506
  %6518 = fmul fast float %6516, %6507
  %6519 = call float @dx.op.unary.f32(i32 6, float %6517)  ; FAbs(value)
  %6520 = call float @dx.op.unary.f32(i32 6, float %6518)  ; FAbs(value)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6437, 0
  %6522 = call float @dx.op.binary.f32(i32 35, float %6519, float %6520)  ; FMax(a,b)
  %6523 = fsub fast float %6521, %6522
  %6524 = call float @dx.op.unary.f32(i32 7, float %6523)  ; Saturate(value)
  %6525 = fmul fast float %6524, %6496
  br label %6526

; <label>:6526                                    ; preds = %6502, %6446
  %6527 = phi float [ %6525, %6502 ], [ 0.000000e+00, %6446 ]
  %6528 = extractvalue %dx.types.CBufRet.f32 %6474, 2
  %6529 = extractvalue %dx.types.CBufRet.f32 %6498, 1
  %6530 = fadd fast float %6529, %6528
  %6531 = fcmp fast ogt float %6530, 0.000000e+00
  %6532 = extractvalue %dx.types.CBufRet.f32 %6437, 0
  br i1 %6531, label %6533, label %6556

; <label>:6533                                    ; preds = %6526
  %6534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6534, 0
  %6536 = extractvalue %dx.types.CBufRet.f32 %6534, 1
  %6537 = fsub fast float %6480, %6535
  %6538 = fsub fast float %6481, %6536
  %6539 = fcmp fast olt float %6537, 0.000000e+00
  %6540 = fcmp fast olt float %6538, 0.000000e+00
  %6541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6542 = extractvalue %dx.types.CBufRet.f32 %6541, 0
  %6543 = extractvalue %dx.types.CBufRet.f32 %6541, 1
  %6544 = extractvalue %dx.types.CBufRet.f32 %6541, 2
  %6545 = extractvalue %dx.types.CBufRet.f32 %6541, 3
  %6546 = select i1 %6539, float %6542, float %6544
  %6547 = select i1 %6540, float %6543, float %6545
  %6548 = fmul fast float %6546, %6537
  %6549 = fmul fast float %6547, %6538
  %6550 = call float @dx.op.unary.f32(i32 6, float %6548)  ; FAbs(value)
  %6551 = call float @dx.op.unary.f32(i32 6, float %6549)  ; FAbs(value)
  %6552 = call float @dx.op.binary.f32(i32 35, float %6550, float %6551)  ; FMax(a,b)
  %6553 = fsub fast float %6532, %6552
  %6554 = call float @dx.op.unary.f32(i32 7, float %6553)  ; Saturate(value)
  %6555 = fmul fast float %6554, %6496
  br label %6556

; <label>:6556                                    ; preds = %6533, %6526
  %6557 = phi float [ %6555, %6533 ], [ 0.000000e+00, %6526 ]
  %6558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6559 = extractvalue %dx.types.CBufRet.f32 %6558, 1
  %6560 = call float @dx.op.unary.f32(i32 7, float %6559)  ; Saturate(value)
  %6561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6562 = extractvalue %dx.types.CBufRet.f32 %6561, 0
  %6563 = extractvalue %dx.types.CBufRet.f32 %6561, 1
  %6564 = fsub fast float %6465, %6562
  %6565 = fsub fast float %6469, %6563
  %6566 = fcmp fast olt float %6564, 0.000000e+00
  %6567 = fcmp fast olt float %6565, 0.000000e+00
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 0
  %6570 = extractvalue %dx.types.CBufRet.f32 %6568, 1
  %6571 = extractvalue %dx.types.CBufRet.f32 %6568, 2
  %6572 = extractvalue %dx.types.CBufRet.f32 %6568, 3
  %6573 = select i1 %6566, float %6569, float %6571
  %6574 = select i1 %6567, float %6570, float %6572
  %6575 = fmul fast float %6573, %6564
  %6576 = fmul fast float %6574, %6565
  %6577 = call float @dx.op.unary.f32(i32 6, float %6575)  ; FAbs(value)
  %6578 = call float @dx.op.unary.f32(i32 6, float %6576)  ; FAbs(value)
  %6579 = call float @dx.op.binary.f32(i32 35, float %6577, float %6578)  ; FMax(a,b)
  %6580 = fsub fast float %6532, %6579
  %6581 = call float @dx.op.unary.f32(i32 7, float %6580)  ; Saturate(value)
  %6582 = call float @dx.op.binary.f32(i32 36, float %6581, float %6560)  ; FMin(a,b)
  %6583 = fmul fast float %6582, %6496
  %6584 = fsub fast float %6557, %6583
  %6585 = fsub fast float %6527, %6557
  %6586 = fsub fast float %6585, %6583
  %6587 = call float @dx.op.binary.f32(i32 35, float %6557, float %6527)  ; FMax(a,b)
  %6588 = call float @dx.op.binary.f32(i32 35, float %6583, float %6587)  ; FMax(a,b)
  %6589 = fcmp fast olt float %6588, 1.000000e+00
  br i1 %6589, label %6590, label %6988, !dx.controlflow.hints !89

; <label>:6590                                    ; preds = %6556
  %6591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6592 = extractvalue %dx.types.CBufRet.f32 %6591, 0
  %6593 = fcmp fast une float %6592, 0.000000e+00
  br i1 %6593, label %6594, label %6988, !dx.controlflow.hints !90

; <label>:6594                                    ; preds = %6590
  %6595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.f32 %6595, 0
  %6597 = extractvalue %dx.types.CBufRet.f32 %6595, 1
  %6598 = extractvalue %dx.types.CBufRet.f32 %6595, 2
  %6599 = extractvalue %dx.types.CBufRet.f32 %6595, 3
  %6600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6601 = extractvalue %dx.types.CBufRet.f32 %6600, 0
  %6602 = extractvalue %dx.types.CBufRet.f32 %6600, 1
  %6603 = extractvalue %dx.types.CBufRet.f32 %6600, 2
  %6604 = extractvalue %dx.types.CBufRet.f32 %6600, 3
  %6605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6605, 0
  %6607 = extractvalue %dx.types.CBufRet.f32 %6605, 1
  %6608 = extractvalue %dx.types.CBufRet.f32 %6605, 2
  %6609 = extractvalue %dx.types.CBufRet.f32 %6605, 3
  %6610 = fmul fast float %6596, %6442
  %6611 = call float @dx.op.tertiary.f32(i32 46, float %6443, float %6597, float %6610)  ; FMad(a,b,c)
  %6612 = call float @dx.op.tertiary.f32(i32 46, float %6444, float %6598, float %6611)  ; FMad(a,b,c)
  %6613 = fadd fast float %6612, %6599
  %6614 = fmul fast float %6601, %6442
  %6615 = call float @dx.op.tertiary.f32(i32 46, float %6443, float %6602, float %6614)  ; FMad(a,b,c)
  %6616 = call float @dx.op.tertiary.f32(i32 46, float %6444, float %6603, float %6615)  ; FMad(a,b,c)
  %6617 = fadd fast float %6616, %6604
  %6618 = fmul fast float %6606, %6442
  %6619 = call float @dx.op.tertiary.f32(i32 46, float %6443, float %6607, float %6618)  ; FMad(a,b,c)
  %6620 = call float @dx.op.tertiary.f32(i32 46, float %6444, float %6608, float %6619)  ; FMad(a,b,c)
  %6621 = fadd fast float %6620, %6609
  %6622 = fcmp fast oge float %6613, 1.000000e+00
  %6623 = fcmp fast oge float %6617, 1.000000e+00
  %6624 = or i1 %6622, %6623
  %6625 = fcmp fast olt float %6613, 0.000000e+00
  %6626 = fcmp fast olt float %6617, 0.000000e+00
  %6627 = or i1 %6625, %6626
  %6628 = or i1 %6624, %6627
  br i1 %6628, label %6988, label %6629, !dx.controlflow.hints !91

; <label>:6629                                    ; preds = %6594
  %6630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6631 = extractvalue %dx.types.CBufRet.f32 %6630, 0
  %6632 = extractvalue %dx.types.CBufRet.f32 %6630, 1
  %6633 = extractvalue %dx.types.CBufRet.f32 %6630, 2
  %6634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6635 = extractvalue %dx.types.CBufRet.i32 %6634, 2
  %6636 = uitofp i32 %6635 to float
  %6637 = extractvalue %dx.types.CBufRet.i32 %6634, 3
  %6638 = uitofp i32 %6637 to float
  %6639 = extractvalue %dx.types.CBufRet.f32 %6630, 3
  %6640 = fmul fast float %6639, 2.000000e+00
  %6641 = fsub fast float %6613, %6631
  %6642 = fsub fast float %6617, %6632
  %6643 = fmul fast float %6640, %6641
  %6644 = fmul fast float %6640, %6642
  %6645 = fdiv fast float 1.000000e+00, %6425
  %6646 = fmul fast float %6644, %6645
  %6647 = call float @dx.op.unary.f32(i32 6, float %6646)  ; FAbs(value)
  %6648 = fmul fast float %6633, %6444
  %6649 = fmul fast float %6648, %6640
  %6650 = call float @dx.op.unary.f32(i32 6, float %6649)  ; FAbs(value)
  %6651 = call float @dx.op.unary.f32(i32 6, float %6643)  ; FAbs(value)
  %6652 = call float @dx.op.binary.f32(i32 35, float %6650, float %6647)  ; FMax(a,b)
  %6653 = call float @dx.op.binary.f32(i32 35, float %6651, float %6652)  ; FMax(a,b)
  %6654 = fmul fast float %6653, 2.000000e+00
  %6655 = call float @dx.op.unary.f32(i32 23, float %6654)  ; Log(value)
  %6656 = call float @dx.op.binary.f32(i32 35, float %6655, float %6636)  ; FMax(a,b)
  %6657 = call float @dx.op.unary.f32(i32 22, float %6656)  ; Frc(value)
  %6658 = fadd fast float %6657, 0xBFEA666660000000
  %6659 = fmul fast float %6658, 8.000000e+00
  %6660 = call float @dx.op.unary.f32(i32 7, float %6659)  ; Saturate(value)
  %6661 = call float @dx.op.unary.f32(i32 27, float %6656)  ; Round_ni(value)
  %6662 = fadd fast float %6661, %6660
  %6663 = call float @dx.op.binary.f32(i32 36, float %6662, float %6638)  ; FMin(a,b)
  %6664 = call float @dx.op.unary.f32(i32 27, float %6663)  ; Round_ni(value)
  %6665 = fsub fast float -0.000000e+00, %6664
  %6666 = call float @dx.op.unary.f32(i32 21, float %6665)  ; Exp(value)
  %6667 = fmul fast float %6666, %6640
  %6668 = fmul fast float %6667, %6613
  %6669 = fmul fast float %6667, %6617
  %6670 = fmul fast float %6668, 2.500000e-01
  %6671 = fmul fast float %6669, 2.500000e-01
  %6672 = fadd fast float %6670, 5.000000e-01
  %6673 = fadd fast float %6671, 5.000000e-01
  %6674 = fsub fast float %6638, %6636
  %6675 = fptoui float %6674 to i32
  %6676 = add i32 %6675, 320
  %6677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %6676)  ; CBufferLoadLegacy(handle,regIndex)
  %6678 = extractvalue %dx.types.CBufRet.f32 %6677, 0
  %6679 = extractvalue %dx.types.CBufRet.f32 %6677, 1
  %6680 = fcmp fast une float %6663, %6638
  %6681 = fsub fast float %6613, %6678
  %6682 = fsub fast float %6617, %6679
  %6683 = call float @dx.op.unary.f32(i32 6, float %6681)  ; FAbs(value)
  %6684 = call float @dx.op.unary.f32(i32 6, float %6682)  ; FAbs(value)
  %6685 = fmul fast float %6683, %6667
  %6686 = fmul fast float %6684, %6667
  %6687 = fcmp fast olt float %6685, 1.000000e+00
  %6688 = fcmp fast olt float %6686, 1.000000e+00
  %6689 = and i1 %6687, %6688
  %6690 = or i1 %6680, %6689
  br i1 %6690, label %6691, label %6988, !dx.controlflow.hints !92

; <label>:6691                                    ; preds = %6629
  %6692 = fmul fast float %6669, 5.000000e-01
  %6693 = fmul fast float %6668, 5.000000e-01
  %6694 = fadd fast float %6692, 5.000000e-01
  %6695 = fadd fast float %6693, 5.000000e-01
  %6696 = sitofp i32 %6635 to float
  %6697 = fsub fast float %6663, %6696
  %6698 = call float @dx.op.unary.f32(i32 27, float %6697)  ; Round_ni(value)
  %6699 = call float @dx.op.unary.f32(i32 22, float %6663)  ; Frc(value)
  %6700 = call float @dx.op.unary.f32(i32 22, float %6695)  ; Frc(value)
  %6701 = call float @dx.op.unary.f32(i32 22, float %6694)  ; Frc(value)
  %6702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6700, float %6701, float %6698, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6703 = extractvalue %dx.types.ResRet.f32 %6702, 0
  %6704 = extractvalue %dx.types.ResRet.f32 %6702, 1
  %6705 = extractvalue %dx.types.ResRet.f32 %6702, 2
  %6706 = extractvalue %dx.types.ResRet.f32 %6702, 3
  %6707 = fcmp fast ogt float %6699, 0.000000e+00
  br i1 %6707, label %6708, label %6729, !dx.controlflow.hints !93

; <label>:6708                                    ; preds = %6691
  %6709 = fadd fast float %6698, 1.000000e+00
  %6710 = call float @dx.op.unary.f32(i32 22, float %6672)  ; Frc(value)
  %6711 = call float @dx.op.unary.f32(i32 22, float %6673)  ; Frc(value)
  %6712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6710, float %6711, float %6709, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6713 = extractvalue %dx.types.ResRet.f32 %6712, 0
  %6714 = extractvalue %dx.types.ResRet.f32 %6712, 1
  %6715 = extractvalue %dx.types.ResRet.f32 %6712, 2
  %6716 = extractvalue %dx.types.ResRet.f32 %6712, 3
  %6717 = fsub fast float %6713, %6703
  %6718 = fsub fast float %6714, %6704
  %6719 = fsub fast float %6715, %6705
  %6720 = fsub fast float %6716, %6706
  %6721 = fmul fast float %6717, %6699
  %6722 = fmul fast float %6718, %6699
  %6723 = fmul fast float %6719, %6699
  %6724 = fmul fast float %6720, %6699
  %6725 = fadd fast float %6721, %6703
  %6726 = fadd fast float %6722, %6704
  %6727 = fadd fast float %6723, %6705
  %6728 = fadd fast float %6724, %6706
  br label %6729

; <label>:6729                                    ; preds = %6708, %6691
  %6730 = phi float [ %6725, %6708 ], [ %6703, %6691 ]
  %6731 = phi float [ %6726, %6708 ], [ %6704, %6691 ]
  %6732 = phi float [ %6727, %6708 ], [ %6705, %6691 ]
  %6733 = phi float [ %6728, %6708 ], [ %6706, %6691 ]
  %6734 = fadd fast float %6730, -5.000000e-01
  %6735 = fadd fast float %6732, -5.000000e-01
  %6736 = fmul fast float %6734, 0xBFD5555560000000
  %6737 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6735, float %6736)  ; FMad(a,b,c)
  %6738 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6731, float 0.000000e+00)  ; FMad(a,b,c)
  %6739 = fadd fast float %6738, %6733
  %6740 = fmul fast float %6734, -7.500000e-01
  %6741 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6735, float %6740)  ; FMad(a,b,c)
  %6742 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6731, float 0.000000e+00)  ; FMad(a,b,c)
  %6743 = fadd fast float %6742, %6733
  %6744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6745 = extractvalue %dx.types.CBufRet.f32 %6744, 0
  %6746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6747 = extractvalue %dx.types.CBufRet.f32 %6746, 0
  %6748 = extractvalue %dx.types.CBufRet.f32 %6746, 1
  %6749 = extractvalue %dx.types.CBufRet.f32 %6746, 2
  %6750 = extractvalue %dx.types.CBufRet.f32 %6746, 3
  %6751 = fsub fast float %6747, %6737
  %6752 = fsub fast float %6748, %6739
  %6753 = fsub fast float %6749, %6741
  %6754 = fsub fast float %6750, %6743
  %6755 = fmul fast float %6751, %6745
  %6756 = fmul fast float %6752, %6745
  %6757 = fmul fast float %6753, %6745
  %6758 = fmul fast float %6754, %6745
  %6759 = fadd fast float %6755, %6737
  %6760 = fadd fast float %6756, %6739
  %6761 = fadd fast float %6757, %6741
  %6762 = fadd fast float %6758, %6743
  %6763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6764 = extractvalue %dx.types.ResRet.i32 %6763, 0
  %6765 = and i32 %6764, 536870911
  %6766 = uitofp i32 %6765 to float
  %6767 = fmul fast float %6766, %6613
  %6768 = fmul fast float %6766, %6617
  %6769 = fptoui float %6767 to i32
  %6770 = fptoui float %6768 to i32
  %6771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6772 = extractvalue %dx.types.ResRet.i32 %6771, 0
  %6773 = and i32 %6772, 31
  %6774 = lshr i32 %6769, %6773
  %6775 = lshr i32 %6770, %6773
  %6776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6777 = extractvalue %dx.types.ResRet.i32 %6776, 0
  %6778 = and i32 %6777, 31
  %6779 = shl i32 1, %6778
  %6780 = call i32 @dx.op.binary.i32(i32 40, i32 %6779, i32 4)  ; UMin(a,b)
  %6781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6782 = extractvalue %dx.types.ResRet.i32 %6781, 0
  %6783 = extractvalue %dx.types.ResRet.i32 %6781, 1
  %6784 = icmp eq i32 %6780, 0
  br i1 %6784, label %6826, label %6785

; <label>:6785                                    ; preds = %6729
  br label %6786

; <label>:6786                                    ; preds = %6814, %6785
  %6787 = phi i32 [ %6817, %6814 ], [ 0, %6785 ]
  %6788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6789 = extractvalue %dx.types.ResRet.i32 %6788, 0
  %6790 = lshr i32 %6789, 16
  %6791 = and i32 %6790, 31
  %6792 = shl i32 %6775, %6791
  %6793 = add i32 %6792, %6774
  %6794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6795 = extractvalue %dx.types.ResRet.i32 %6794, 0
  %6796 = and i32 %6795, 31
  %6797 = shl i32 %6793, %6796
  %6798 = add i32 %6797, %6787
  %6799 = shl i32 %6798, 2
  %6800 = add i32 %6799, 32
  %6801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6800, i32 undef)  ; BufferLoad(srv,index,wot)
  %6802 = extractvalue %dx.types.ResRet.i32 %6801, 0
  %6803 = icmp slt i32 %6802, 0
  %6804 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6787
  %6805 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6787
  %6806 = bitcast float* %6804 to i32*
  %6807 = bitcast float* %6805 to i32*
  br i1 %6803, label %6808, label %6814

; <label>:6808                                    ; preds = %6786
  %6809 = and i32 %6802, 1073741823
  %6810 = add nuw nsw i32 %6809, 20
  %6811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6810, i32 undef)  ; BufferLoad(srv,index,wot)
  %6812 = extractvalue %dx.types.ResRet.i32 %6811, 0
  %6813 = extractvalue %dx.types.ResRet.i32 %6811, 1
  br label %6814

; <label>:6814                                    ; preds = %6808, %6786
  %6815 = phi i32 [ %6812, %6808 ], [ %6782, %6786 ]
  %6816 = phi i32 [ %6813, %6808 ], [ %6783, %6786 ]
  store i32 %6815, i32* %6806, align 4
  store i32 %6816, i32* %6807, align 4
  %6817 = add nuw i32 %6787, 1
  %6818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6819 = extractvalue %dx.types.CBufRet.i32 %6818, 2
  %6820 = icmp eq i32 %6819, 0
  %6821 = icmp ugt i32 %6802, -1073741825
  %6822 = and i1 %6821, %6820
  %6823 = icmp ult i32 %6817, %6780
  %6824 = and i1 %6822, %6823
  br i1 %6824, label %6786, label %6825

; <label>:6825                                    ; preds = %6814
  br label %6826

; <label>:6826                                    ; preds = %6825, %6729
  %6827 = phi i32 [ 0, %6729 ], [ %6817, %6825 ]
  %6828 = extractvalue %dx.types.CBufRet.f32 %6591, 2
  %6829 = fptoui float %6828 to i32
  %6830 = icmp eq i32 %6829, 0
  br i1 %6830, label %6882, label %6831

; <label>:6831                                    ; preds = %6826
  br label %6832

; <label>:6832                                    ; preds = %6877, %6831
  %6833 = phi i32 [ %6878, %6877 ], [ %6827, %6831 ]
  %6834 = phi i32 [ %6879, %6877 ], [ 0, %6831 ]
  %6835 = lshr i32 %6834, 2
  %6836 = and i32 %6834, 3
  %6837 = add nuw nsw i32 %6835, 83
  %6838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 %6837)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.i32 %6838, 0
  %6840 = extractvalue %dx.types.CBufRet.i32 %6838, 1
  %6841 = extractvalue %dx.types.CBufRet.i32 %6838, 2
  %6842 = extractvalue %dx.types.CBufRet.i32 %6838, 3
  %6843 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 0
  store i32 %6839, i32* %6843, align 4
  %6844 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 1
  store i32 %6840, i32* %6844, align 4
  %6845 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 2
  store i32 %6841, i32* %6845, align 4
  %6846 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 3
  store i32 %6842, i32* %6846, align 4
  %6847 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 %6836
  %6848 = load i32, i32* %6847, align 4, !tbaa !94, !noalias !98
  %6849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6850 = extractvalue %dx.types.ResRet.i32 %6849, 0
  %6851 = lshr i32 %6850, 16
  %6852 = and i32 %6851, 31
  %6853 = shl i32 %6775, %6852
  %6854 = add i32 %6853, %6774
  %6855 = shl i32 %6854, 2
  %6856 = add i32 %6855, %6848
  %6857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6856, i32 undef)  ; BufferLoad(srv,index,wot)
  %6858 = extractvalue %dx.types.ResRet.i32 %6857, 0
  %6859 = icmp eq i32 %6858, 0
  br i1 %6859, label %6877, label %6860

; <label>:6860                                    ; preds = %6832
  %6861 = icmp slt i32 %6858, 0
  %6862 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6833
  %6863 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6833
  %6864 = bitcast float* %6862 to i32*
  %6865 = bitcast float* %6863 to i32*
  br i1 %6861, label %6866, label %6873

; <label>:6866                                    ; preds = %6860
  %6867 = and i32 %6858, 1073741823
  %6868 = add i32 %6848, 20
  %6869 = add i32 %6868, %6867
  %6870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6869, i32 undef)  ; BufferLoad(srv,index,wot)
  %6871 = extractvalue %dx.types.ResRet.i32 %6870, 0
  %6872 = extractvalue %dx.types.ResRet.i32 %6870, 1
  br label %6873

; <label>:6873                                    ; preds = %6866, %6860
  %6874 = phi i32 [ %6871, %6866 ], [ %6782, %6860 ]
  %6875 = phi i32 [ %6872, %6866 ], [ %6783, %6860 ]
  store i32 %6874, i32* %6864, align 4
  store i32 %6875, i32* %6865, align 4
  %6876 = add i32 %6833, 1
  br label %6877

; <label>:6877                                    ; preds = %6873, %6832
  %6878 = phi i32 [ %6833, %6832 ], [ %6876, %6873 ]
  %6879 = add nuw i32 %6834, 1
  %6880 = icmp eq i32 %6879, %6829
  br i1 %6880, label %6881, label %6832

; <label>:6881                                    ; preds = %6877
  br label %6882

; <label>:6882                                    ; preds = %6881, %6826
  %6883 = phi i32 [ %6827, %6826 ], [ %6878, %6881 ]
  %6884 = icmp eq i32 %6883, 1
  %6885 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  %6886 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  br i1 %6884, label %6887, label %6890

; <label>:6887                                    ; preds = %6882
  %6888 = load float, float* %6885, align 4
  %6889 = load float, float* %6886, align 4
  br label %6917

; <label>:6890                                    ; preds = %6882
  %6891 = load float, float* %6885, align 4
  %6892 = load float, float* %6886, align 4
  %6893 = fdiv fast float 1.000000e+00, %6892
  %6894 = fsub fast float %6891, %6893
  %6895 = icmp ugt i32 %6883, 1
  br i1 %6895, label %6896, label %6912

; <label>:6896                                    ; preds = %6890
  br label %6897

; <label>:6897                                    ; preds = %6897, %6896
  %6898 = phi float [ %6907, %6897 ], [ %6894, %6896 ]
  %6899 = phi float [ %6908, %6897 ], [ %6891, %6896 ]
  %6900 = phi i32 [ %6909, %6897 ], [ 1, %6896 ]
  %6901 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6900
  %6902 = load float, float* %6901, align 4
  %6903 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6900
  %6904 = load float, float* %6903, align 4
  %6905 = fdiv fast float 1.000000e+00, %6904
  %6906 = fsub fast float %6902, %6905
  %6907 = call float @dx.op.binary.f32(i32 36, float %6898, float %6906)  ; FMin(a,b)
  %6908 = call float @dx.op.binary.f32(i32 35, float %6899, float %6902)  ; FMax(a,b)
  %6909 = add nuw i32 %6900, 1
  %6910 = icmp eq i32 %6909, %6883
  br i1 %6910, label %6911, label %6897

; <label>:6911                                    ; preds = %6897
  br label %6912

; <label>:6912                                    ; preds = %6911, %6890
  %6913 = phi float [ %6894, %6890 ], [ %6907, %6911 ]
  %6914 = phi float [ %6891, %6890 ], [ %6908, %6911 ]
  %6915 = fsub fast float %6914, %6913
  %6916 = fdiv fast float 1.000000e+00, %6915
  br label %6917

; <label>:6917                                    ; preds = %6912, %6887
  %6918 = phi float [ %6888, %6887 ], [ %6914, %6912 ]
  %6919 = phi float [ %6889, %6887 ], [ %6916, %6912 ]
  %6920 = fadd fast float %6621, %6918
  %6921 = fmul fast float %6920, %6919
  %6922 = call float @dx.op.unary.f32(i32 7, float %6921)  ; Saturate(value)
  %6923 = fmul fast float %6922, 2.000000e+00
  %6924 = fsub fast float 1.000000e+00, %6923
  %6925 = fmul fast float %6759, %6759
  %6926 = fsub fast float %6760, %6925
  %6927 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6926)  ; FMax(a,b)
  %6928 = fdiv fast float 1.000000e+00, %6927
  %6929 = fmul fast float %6760, %6759
  %6930 = fsub fast float %6761, %6929
  %6931 = fsub fast float %6924, %6759
  %6932 = fmul fast float %6924, %6924
  %6933 = fsub fast float %6932, %6760
  %6934 = fmul fast float %6928, %6930
  %6935 = fmul fast float %6934, %6931
  %6936 = fsub fast float %6933, %6935
  %6937 = fmul fast float %6760, %6760
  %6938 = fsub fast float %6762, %6937
  %6939 = fmul fast float %6930, %6930
  %6940 = fmul fast float %6939, %6928
  %6941 = fsub fast float %6938, %6940
  %6942 = fdiv fast float %6936, %6941
  %6943 = fmul fast float %6942, %6930
  %6944 = fsub fast float %6931, %6943
  %6945 = fmul fast float %6944, %6928
  %6946 = fmul fast float %6945, %6759
  %6947 = fsub fast float 1.000000e+00, %6946
  %6948 = fmul fast float %6942, %6760
  %6949 = fsub fast float %6947, %6948
  %6950 = fmul fast float %6945, %6945
  %6951 = fmul fast float %6942, 4.000000e+00
  %6952 = fmul fast float %6951, %6949
  %6953 = fsub fast float %6950, %6952
  %6954 = call float @dx.op.unary.f32(i32 24, float %6953)  ; Sqrt(value)
  %6955 = fcmp fast oge float %6945, 0.000000e+00
  %6956 = fsub fast float -0.000000e+00, %6954
  %6957 = select i1 %6955, float %6956, float %6954
  %6958 = fsub fast float %6957, %6945
  %6959 = fdiv fast float %6958, %6942
  %6960 = fdiv fast float %6949, %6958
  %6961 = fmul fast float %6959, 5.000000e-01
  %6962 = fmul fast float %6960, 2.000000e+00
  %6963 = select i1 %6955, float %6961, float %6962
  %6964 = select i1 %6955, float %6962, float %6961
  %6965 = call float @dx.op.binary.f32(i32 35, float %6963, float %6964)  ; FMax(a,b)
  %6966 = call float @dx.op.binary.f32(i32 36, float %6963, float %6964)  ; FMin(a,b)
  %6967 = fcmp fast ogt float %6924, %6965
  %6968 = fsub fast float %6924, %6966
  %6969 = fsub fast float %6924, %6965
  %6970 = fsub fast float %6965, %6966
  %6971 = select i1 %6967, float %6969, float %6970
  %6972 = fmul float %6968, %6971
  %6973 = select i1 %6967, float %6966, float %6924
  %6974 = fcmp fast ogt float %6924, %6966
  %6975 = fmul fast float %6973, %6965
  %6976 = fadd fast float %6973, %6965
  %6977 = fmul fast float %6976, %6759
  %6978 = fadd fast float %6975, %6760
  %6979 = fsub fast float %6978, %6977
  %6980 = fdiv fast float %6979, %6972
  %6981 = select i1 %6974, float %6980, float 0.000000e+00
  %6982 = fsub fast float 1.000000e+00, %6981
  %6983 = select i1 %6967, float %6982, float %6981
  %6984 = call float @dx.op.unary.f32(i32 7, float %6983)  ; Saturate(value)
  %6985 = extractvalue %dx.types.CBufRet.f32 %6744, 3
  %6986 = fmul fast float %6985, %6984
  %6987 = fsub fast float 1.000000e+00, %6986
  br label %6988

; <label>:6988                                    ; preds = %6917, %6629, %6594, %6590, %6556
  %6989 = phi float [ 1.000000e+00, %6556 ], [ %6987, %6917 ], [ 1.000000e+00, %6594 ], [ 1.000000e+00, %6629 ], [ 1.000000e+00, %6590 ]
  %6990 = fcmp fast ogt float %6586, 0.000000e+00
  br i1 %6990, label %6991, label %7153, !dx.controlflow.hints !107

; <label>:6991                                    ; preds = %6988
  %6992 = fadd fast float %6499, %6473
  %6993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6994 = extractvalue %dx.types.CBufRet.f32 %6993, 2
  %6995 = extractvalue %dx.types.CBufRet.f32 %6993, 3
  %6996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6997 = extractvalue %dx.types.CBufRet.f32 %6996, 2
  %6998 = call float @dx.op.binary.f32(i32 35, float %6992, float 0.000000e+00)  ; FMax(a,b)
  %6999 = fadd fast float %6998, 0x3F10000000000000
  %7000 = fcmp fast oeq float %6997, 0.000000e+00
  br i1 %7000, label %7001, label %7068

; <label>:7001                                    ; preds = %6991
  %7002 = extractvalue %dx.types.CBufRet.f32 %6993, 1
  %7003 = extractvalue %dx.types.CBufRet.f32 %6993, 0
  %7004 = fmul fast float %7003, %6488
  %7005 = fmul fast float %7002, %6489
  %7006 = fadd fast float %7004, 5.000000e-01
  %7007 = call float @dx.op.unary.f32(i32 27, float %7006)  ; Round_ni(value)
  %7008 = fadd fast float %7005, 5.000000e-01
  %7009 = call float @dx.op.unary.f32(i32 27, float %7008)  ; Round_ni(value)
  %7010 = fsub fast float %7006, %7007
  %7011 = fsub fast float %7008, %7009
  %7012 = fadd fast float %7007, -5.000000e-01
  %7013 = fadd fast float %7009, -5.000000e-01
  %7014 = fmul fast float %7010, 2.000000e+00
  %7015 = fsub fast float 3.000000e+00, %7014
  %7016 = fadd fast float %7014, 1.000000e+00
  %7017 = fsub fast float 2.000000e+00, %7010
  %7018 = bitcast float %7015 to i32
  %7019 = sub nsw i32 2129859010, %7018
  %7020 = bitcast i32 %7019 to float
  %7021 = fmul fast float %7020, %7017
  %7022 = fadd fast float %7021, -1.000000e+00
  %7023 = bitcast float %7016 to i32
  %7024 = sub nsw i32 2129859010, %7023
  %7025 = bitcast i32 %7024 to float
  %7026 = fmul fast float %7025, %7010
  %7027 = fadd fast float %7026, 1.000000e+00
  %7028 = fmul fast float %7011, 2.000000e+00
  %7029 = fsub fast float 3.000000e+00, %7028
  %7030 = fadd fast float %7028, 1.000000e+00
  %7031 = fsub fast float 2.000000e+00, %7011
  %7032 = bitcast float %7029 to i32
  %7033 = sub nsw i32 2129859010, %7032
  %7034 = bitcast i32 %7033 to float
  %7035 = fmul fast float %7034, %7031
  %7036 = fadd fast float %7035, -1.000000e+00
  %7037 = bitcast float %7030 to i32
  %7038 = sub nsw i32 2129859010, %7037
  %7039 = bitcast i32 %7038 to float
  %7040 = fmul fast float %7039, %7011
  %7041 = fadd fast float %7040, 1.000000e+00
  %7042 = fadd fast float %7022, %7012
  %7043 = fmul fast float %7042, %6994
  %7044 = fadd fast float %7036, %7013
  %7045 = fmul fast float %7044, %6995
  %7046 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7043, float %7045, float undef, float undef, i32 0, i32 0, i32 undef, float %6999)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7047 = extractvalue %dx.types.ResRet.f32 %7046, 0
  %7048 = fmul fast float %7047, %7015
  %7049 = fadd fast float %7027, %7012
  %7050 = fmul fast float %7049, %6994
  %7051 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7050, float %7045, float undef, float undef, i32 0, i32 0, i32 undef, float %6999)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7052 = extractvalue %dx.types.ResRet.f32 %7051, 0
  %7053 = fmul fast float %7052, %7016
  %7054 = fadd fast float %7041, %7013
  %7055 = fmul fast float %7054, %6995
  %7056 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7043, float %7055, float undef, float undef, i32 0, i32 0, i32 undef, float %6999)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7057 = extractvalue %dx.types.ResRet.f32 %7056, 0
  %7058 = fmul fast float %7057, %7015
  %7059 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7050, float %7055, float undef, float undef, i32 0, i32 0, i32 undef, float %6999)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7060 = extractvalue %dx.types.ResRet.f32 %7059, 0
  %7061 = fmul fast float %7060, %7016
  %7062 = fadd fast float %7061, %7058
  %7063 = fmul fast float %7062, %7030
  %7064 = fadd fast float %7053, %7048
  %7065 = fmul fast float %7064, %7029
  %7066 = fadd fast float %7065, %7063
  %7067 = fmul fast float %7066, 6.250000e-02
  br label %7153

; <label>:7068                                    ; preds = %6991
  %7069 = fmul fast float %225, 0x401921FB60000000
  %7070 = call float @dx.op.unary.f32(i32 13, float %7069)  ; Sin(value)
  %7071 = call float @dx.op.unary.f32(i32 12, float %7069)  ; Cos(value)
  %7072 = fsub fast float -0.000000e+00, %7070
  br label %7073

; <label>:7073                                    ; preds = %7122, %7068
  %7074 = phi float [ 0.000000e+00, %7068 ], [ %7117, %7122 ]
  %7075 = phi float [ 0.000000e+00, %7068 ], [ %7119, %7122 ]
  %7076 = phi i32 [ 0, %7068 ], [ %7123, %7122 ]
  %7077 = mul i32 %7076, 2
  %7078 = add i32 0, %7077
  %7079 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7078
  %7080 = load float, float* %7079, align 4
  %7081 = mul i32 %7076, 2
  %7082 = add i32 1, %7081
  %7083 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7082
  %7084 = load float, float* %7083, align 4
  %7085 = fmul fast float %7080, %7071
  %7086 = call float @dx.op.tertiary.f32(i32 46, float %7084, float %7072, float %7085)  ; FMad(a,b,c)
  %7087 = fmul fast float %7080, %7070
  %7088 = call float @dx.op.tertiary.f32(i32 46, float %7084, float %7071, float %7087)  ; FMad(a,b,c)
  %7089 = fmul fast float %7086, %6997
  %7090 = fmul fast float %7088, %6997
  %7091 = fadd fast float %7089, %6488
  %7092 = fadd fast float %7090, %6489
  %7093 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %44, float %7091, float %7092, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7094 = extractvalue %dx.types.ResRet.f32 %7093, 0
  %7095 = extractvalue %dx.types.ResRet.f32 %7093, 1
  %7096 = extractvalue %dx.types.ResRet.f32 %7093, 2
  %7097 = extractvalue %dx.types.ResRet.f32 %7093, 3
  %7098 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %7094, float* %7098, align 4
  %7099 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %7095, float* %7099, align 4
  %7100 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %7096, float* %7100, align 4
  %7101 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %7097, float* %7101, align 4
  %7102 = fsub fast float %7094, %6999
  %7103 = fcmp fast olt float %7102, 0.000000e+00
  %7104 = select i1 %7103, float 0.000000e+00, float 1.000000e+00
  %7105 = fadd fast float %7104, %7074
  %7106 = fmul fast float %7104, %7102
  %7107 = fadd fast float %7106, %7075
  br label %7108

; <label>:7108                                    ; preds = %7108, %7073
  %7109 = phi i32 [ 1, %7073 ], [ %7120, %7108 ]
  %7110 = phi float [ %7107, %7073 ], [ %7119, %7108 ]
  %7111 = phi float [ %7105, %7073 ], [ %7117, %7108 ]
  %7112 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %7109
  %7113 = load float, float* %7112, align 4, !tbaa !108, !noalias !98
  %7114 = fsub fast float %7113, %6999
  %7115 = fcmp fast olt float %7114, 0.000000e+00
  %7116 = select i1 %7115, float 0.000000e+00, float 1.000000e+00
  %7117 = fadd fast float %7116, %7111
  %7118 = fmul fast float %7116, %7114
  %7119 = fadd fast float %7118, %7110
  %7120 = add nuw nsw i32 %7109, 1
  %7121 = icmp eq i32 %7120, 4
  br i1 %7121, label %7122, label %7108, !llvm.loop !110

; <label>:7122                                    ; preds = %7108
  %7123 = add nuw nsw i32 %7076, 1
  %7124 = icmp eq i32 %7123, 8
  br i1 %7124, label %7125, label %7073, !llvm.loop !111

; <label>:7125                                    ; preds = %7122
  %7126 = fdiv fast float 1.000000e+00, %7117
  %7127 = fmul fast float %7126, %7119
  %7128 = fdiv fast float 1.000000e+00, %6999
  %7129 = fmul fast float %7127, %7128
  %7130 = call float @dx.op.unary.f32(i32 7, float %7129)  ; Saturate(value)
  %7131 = call float @dx.op.binary.f32(i32 35, float %7130, float 0.000000e+00)  ; FMax(a,b)
  %7132 = fmul fast float %7117, 3.125000e-02
  %7133 = call float @dx.op.unary.f32(i32 7, float %7132)  ; Saturate(value)
  %7134 = fmul fast float %7133, 2.000000e+00
  %7135 = fadd fast float %7134, -1.000000e+00
  %7136 = fcmp fast ogt float %7135, 0.000000e+00
  %7137 = fcmp fast olt float %7135, 0.000000e+00
  %7138 = zext i1 %7136 to i32
  %7139 = zext i1 %7137 to i32
  %7140 = sub nsw i32 %7138, %7139
  %7141 = sitofp i32 %7140 to float
  %7142 = fmul fast float %7141, %7135
  %7143 = fsub fast float 1.000000e+00, %7142
  %7144 = fmul fast float %7143, %7143
  %7145 = fmul fast float %7144, %7143
  %7146 = fsub fast float %7143, %7145
  %7147 = fmul fast float %7146, %7131
  %7148 = fsub fast float 1.000000e+00, %7145
  %7149 = fsub fast float %7148, %7147
  %7150 = fmul fast float %7141, 5.000000e-01
  %7151 = fmul fast float %7150, %7149
  %7152 = fsub fast float 5.000000e-01, %7151
  br label %7153

; <label>:7153                                    ; preds = %7125, %7001, %6988
  %7154 = phi float [ 1.000000e+00, %6988 ], [ %7067, %7001 ], [ %7152, %7125 ]
  %7155 = fcmp fast ogt float %6584, 0.000000e+00
  br i1 %7155, label %7156, label %7320, !dx.controlflow.hints !112

; <label>:7156                                    ; preds = %7153
  %7157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7158 = extractvalue %dx.types.CBufRet.f32 %7157, 1
  %7159 = fadd fast float %7158, %6473
  %7160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7161 = extractvalue %dx.types.CBufRet.f32 %7160, 2
  %7162 = extractvalue %dx.types.CBufRet.f32 %7160, 3
  %7163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7164 = extractvalue %dx.types.CBufRet.f32 %7163, 1
  %7165 = call float @dx.op.binary.f32(i32 35, float %7159, float 0.000000e+00)  ; FMax(a,b)
  %7166 = fadd fast float %7165, 0x3F10000000000000
  %7167 = fcmp fast oeq float %7164, 0.000000e+00
  br i1 %7167, label %7168, label %7235

; <label>:7168                                    ; preds = %7156
  %7169 = extractvalue %dx.types.CBufRet.f32 %7160, 1
  %7170 = extractvalue %dx.types.CBufRet.f32 %7160, 0
  %7171 = fmul fast float %7170, %6480
  %7172 = fmul fast float %7169, %6481
  %7173 = fadd fast float %7171, 5.000000e-01
  %7174 = call float @dx.op.unary.f32(i32 27, float %7173)  ; Round_ni(value)
  %7175 = fadd fast float %7172, 5.000000e-01
  %7176 = call float @dx.op.unary.f32(i32 27, float %7175)  ; Round_ni(value)
  %7177 = fsub fast float %7173, %7174
  %7178 = fsub fast float %7175, %7176
  %7179 = fadd fast float %7174, -5.000000e-01
  %7180 = fadd fast float %7176, -5.000000e-01
  %7181 = fmul fast float %7177, 2.000000e+00
  %7182 = fsub fast float 3.000000e+00, %7181
  %7183 = fadd fast float %7181, 1.000000e+00
  %7184 = fsub fast float 2.000000e+00, %7177
  %7185 = bitcast float %7182 to i32
  %7186 = sub nsw i32 2129859010, %7185
  %7187 = bitcast i32 %7186 to float
  %7188 = fmul fast float %7187, %7184
  %7189 = fadd fast float %7188, -1.000000e+00
  %7190 = bitcast float %7183 to i32
  %7191 = sub nsw i32 2129859010, %7190
  %7192 = bitcast i32 %7191 to float
  %7193 = fmul fast float %7192, %7177
  %7194 = fadd fast float %7193, 1.000000e+00
  %7195 = fmul fast float %7178, 2.000000e+00
  %7196 = fsub fast float 3.000000e+00, %7195
  %7197 = fadd fast float %7195, 1.000000e+00
  %7198 = fsub fast float 2.000000e+00, %7178
  %7199 = bitcast float %7196 to i32
  %7200 = sub nsw i32 2129859010, %7199
  %7201 = bitcast i32 %7200 to float
  %7202 = fmul fast float %7201, %7198
  %7203 = fadd fast float %7202, -1.000000e+00
  %7204 = bitcast float %7197 to i32
  %7205 = sub nsw i32 2129859010, %7204
  %7206 = bitcast i32 %7205 to float
  %7207 = fmul fast float %7206, %7178
  %7208 = fadd fast float %7207, 1.000000e+00
  %7209 = fadd fast float %7189, %7179
  %7210 = fmul fast float %7209, %7161
  %7211 = fadd fast float %7203, %7180
  %7212 = fmul fast float %7211, %7162
  %7213 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7210, float %7212, float undef, float undef, i32 0, i32 0, i32 undef, float %7166)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7214 = extractvalue %dx.types.ResRet.f32 %7213, 0
  %7215 = fmul fast float %7214, %7182
  %7216 = fadd fast float %7194, %7179
  %7217 = fmul fast float %7216, %7161
  %7218 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7217, float %7212, float undef, float undef, i32 0, i32 0, i32 undef, float %7166)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7219 = extractvalue %dx.types.ResRet.f32 %7218, 0
  %7220 = fmul fast float %7219, %7183
  %7221 = fadd fast float %7208, %7180
  %7222 = fmul fast float %7221, %7162
  %7223 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7210, float %7222, float undef, float undef, i32 0, i32 0, i32 undef, float %7166)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7224 = extractvalue %dx.types.ResRet.f32 %7223, 0
  %7225 = fmul fast float %7224, %7182
  %7226 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7217, float %7222, float undef, float undef, i32 0, i32 0, i32 undef, float %7166)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7227 = extractvalue %dx.types.ResRet.f32 %7226, 0
  %7228 = fmul fast float %7227, %7183
  %7229 = fadd fast float %7228, %7225
  %7230 = fmul fast float %7229, %7197
  %7231 = fadd fast float %7220, %7215
  %7232 = fmul fast float %7231, %7196
  %7233 = fadd fast float %7232, %7230
  %7234 = fmul fast float %7233, 6.250000e-02
  br label %7320

; <label>:7235                                    ; preds = %7156
  %7236 = fmul fast float %225, 0x401921FB60000000
  %7237 = call float @dx.op.unary.f32(i32 13, float %7236)  ; Sin(value)
  %7238 = call float @dx.op.unary.f32(i32 12, float %7236)  ; Cos(value)
  %7239 = fsub fast float -0.000000e+00, %7237
  br label %7240

; <label>:7240                                    ; preds = %7289, %7235
  %7241 = phi float [ 0.000000e+00, %7235 ], [ %7284, %7289 ]
  %7242 = phi float [ 0.000000e+00, %7235 ], [ %7286, %7289 ]
  %7243 = phi i32 [ 0, %7235 ], [ %7290, %7289 ]
  %7244 = mul i32 %7243, 2
  %7245 = add i32 0, %7244
  %7246 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7245
  %7247 = load float, float* %7246, align 4
  %7248 = mul i32 %7243, 2
  %7249 = add i32 1, %7248
  %7250 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7249
  %7251 = load float, float* %7250, align 4
  %7252 = fmul fast float %7247, %7238
  %7253 = call float @dx.op.tertiary.f32(i32 46, float %7251, float %7239, float %7252)  ; FMad(a,b,c)
  %7254 = fmul fast float %7247, %7237
  %7255 = call float @dx.op.tertiary.f32(i32 46, float %7251, float %7238, float %7254)  ; FMad(a,b,c)
  %7256 = fmul fast float %7253, %7164
  %7257 = fmul fast float %7255, %7164
  %7258 = fadd fast float %7256, %6480
  %7259 = fadd fast float %7257, %6481
  %7260 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %44, float %7258, float %7259, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7261 = extractvalue %dx.types.ResRet.f32 %7260, 0
  %7262 = extractvalue %dx.types.ResRet.f32 %7260, 1
  %7263 = extractvalue %dx.types.ResRet.f32 %7260, 2
  %7264 = extractvalue %dx.types.ResRet.f32 %7260, 3
  %7265 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %7261, float* %7265, align 4
  %7266 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %7262, float* %7266, align 4
  %7267 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %7263, float* %7267, align 4
  %7268 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %7264, float* %7268, align 4
  %7269 = fsub fast float %7261, %7166
  %7270 = fcmp fast olt float %7269, 0.000000e+00
  %7271 = select i1 %7270, float 0.000000e+00, float 1.000000e+00
  %7272 = fadd fast float %7271, %7241
  %7273 = fmul fast float %7271, %7269
  %7274 = fadd fast float %7273, %7242
  br label %7275

; <label>:7275                                    ; preds = %7275, %7240
  %7276 = phi i32 [ 1, %7240 ], [ %7287, %7275 ]
  %7277 = phi float [ %7274, %7240 ], [ %7286, %7275 ]
  %7278 = phi float [ %7272, %7240 ], [ %7284, %7275 ]
  %7279 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7276
  %7280 = load float, float* %7279, align 4, !tbaa !108, !noalias !98
  %7281 = fsub fast float %7280, %7166
  %7282 = fcmp fast olt float %7281, 0.000000e+00
  %7283 = select i1 %7282, float 0.000000e+00, float 1.000000e+00
  %7284 = fadd fast float %7283, %7278
  %7285 = fmul fast float %7283, %7281
  %7286 = fadd fast float %7285, %7277
  %7287 = add nuw nsw i32 %7276, 1
  %7288 = icmp eq i32 %7287, 4
  br i1 %7288, label %7289, label %7275, !llvm.loop !110

; <label>:7289                                    ; preds = %7275
  %7290 = add nuw nsw i32 %7243, 1
  %7291 = icmp eq i32 %7290, 8
  br i1 %7291, label %7292, label %7240, !llvm.loop !111

; <label>:7292                                    ; preds = %7289
  %7293 = fdiv fast float 1.000000e+00, %7284
  %7294 = fmul fast float %7293, %7286
  %7295 = fdiv fast float 1.000000e+00, %7166
  %7296 = fmul fast float %7294, %7295
  %7297 = call float @dx.op.unary.f32(i32 7, float %7296)  ; Saturate(value)
  %7298 = call float @dx.op.binary.f32(i32 35, float %7297, float 0.000000e+00)  ; FMax(a,b)
  %7299 = fmul fast float %7284, 3.125000e-02
  %7300 = call float @dx.op.unary.f32(i32 7, float %7299)  ; Saturate(value)
  %7301 = fmul fast float %7300, 2.000000e+00
  %7302 = fadd fast float %7301, -1.000000e+00
  %7303 = fcmp fast ogt float %7302, 0.000000e+00
  %7304 = fcmp fast olt float %7302, 0.000000e+00
  %7305 = zext i1 %7303 to i32
  %7306 = zext i1 %7304 to i32
  %7307 = sub nsw i32 %7305, %7306
  %7308 = sitofp i32 %7307 to float
  %7309 = fmul fast float %7308, %7302
  %7310 = fsub fast float 1.000000e+00, %7309
  %7311 = fmul fast float %7310, %7310
  %7312 = fmul fast float %7311, %7310
  %7313 = fsub fast float %7310, %7312
  %7314 = fmul fast float %7313, %7298
  %7315 = fsub fast float 1.000000e+00, %7312
  %7316 = fsub fast float %7315, %7314
  %7317 = fmul fast float %7308, 5.000000e-01
  %7318 = fmul fast float %7317, %7316
  %7319 = fsub fast float 5.000000e-01, %7318
  br label %7320

; <label>:7320                                    ; preds = %7292, %7168, %7153
  %7321 = phi float [ 1.000000e+00, %7153 ], [ %7234, %7168 ], [ %7319, %7292 ]
  %7322 = fcmp fast ogt float %6583, 0.000000e+00
  br i1 %7322, label %7323, label %7487, !dx.controlflow.hints !113

; <label>:7323                                    ; preds = %7320
  %7324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7325 = extractvalue %dx.types.CBufRet.f32 %7324, 0
  %7326 = fadd fast float %7325, %6473
  %7327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7328 = extractvalue %dx.types.CBufRet.f32 %7327, 2
  %7329 = extractvalue %dx.types.CBufRet.f32 %7327, 3
  %7330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.f32 %7330, 0
  %7332 = call float @dx.op.binary.f32(i32 35, float %7326, float 0.000000e+00)  ; FMax(a,b)
  %7333 = fadd fast float %7332, 0x3F10000000000000
  %7334 = fcmp fast oeq float %7331, 0.000000e+00
  br i1 %7334, label %7335, label %7402

; <label>:7335                                    ; preds = %7323
  %7336 = extractvalue %dx.types.CBufRet.f32 %7327, 1
  %7337 = extractvalue %dx.types.CBufRet.f32 %7327, 0
  %7338 = fmul fast float %7337, %6465
  %7339 = fmul fast float %7336, %6469
  %7340 = fadd fast float %7338, 5.000000e-01
  %7341 = call float @dx.op.unary.f32(i32 27, float %7340)  ; Round_ni(value)
  %7342 = fadd fast float %7339, 5.000000e-01
  %7343 = call float @dx.op.unary.f32(i32 27, float %7342)  ; Round_ni(value)
  %7344 = fsub fast float %7340, %7341
  %7345 = fsub fast float %7342, %7343
  %7346 = fadd fast float %7341, -5.000000e-01
  %7347 = fadd fast float %7343, -5.000000e-01
  %7348 = fmul fast float %7344, 2.000000e+00
  %7349 = fsub fast float 3.000000e+00, %7348
  %7350 = fadd fast float %7348, 1.000000e+00
  %7351 = fsub fast float 2.000000e+00, %7344
  %7352 = bitcast float %7349 to i32
  %7353 = sub nsw i32 2129859010, %7352
  %7354 = bitcast i32 %7353 to float
  %7355 = fmul fast float %7354, %7351
  %7356 = fadd fast float %7355, -1.000000e+00
  %7357 = bitcast float %7350 to i32
  %7358 = sub nsw i32 2129859010, %7357
  %7359 = bitcast i32 %7358 to float
  %7360 = fmul fast float %7359, %7344
  %7361 = fadd fast float %7360, 1.000000e+00
  %7362 = fmul fast float %7345, 2.000000e+00
  %7363 = fsub fast float 3.000000e+00, %7362
  %7364 = fadd fast float %7362, 1.000000e+00
  %7365 = fsub fast float 2.000000e+00, %7345
  %7366 = bitcast float %7363 to i32
  %7367 = sub nsw i32 2129859010, %7366
  %7368 = bitcast i32 %7367 to float
  %7369 = fmul fast float %7368, %7365
  %7370 = fadd fast float %7369, -1.000000e+00
  %7371 = bitcast float %7364 to i32
  %7372 = sub nsw i32 2129859010, %7371
  %7373 = bitcast i32 %7372 to float
  %7374 = fmul fast float %7373, %7345
  %7375 = fadd fast float %7374, 1.000000e+00
  %7376 = fadd fast float %7356, %7346
  %7377 = fmul fast float %7376, %7328
  %7378 = fadd fast float %7370, %7347
  %7379 = fmul fast float %7378, %7329
  %7380 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7377, float %7379, float undef, float undef, i32 0, i32 0, i32 undef, float %7333)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7381 = extractvalue %dx.types.ResRet.f32 %7380, 0
  %7382 = fmul fast float %7381, %7349
  %7383 = fadd fast float %7361, %7346
  %7384 = fmul fast float %7383, %7328
  %7385 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7384, float %7379, float undef, float undef, i32 0, i32 0, i32 undef, float %7333)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7386 = extractvalue %dx.types.ResRet.f32 %7385, 0
  %7387 = fmul fast float %7386, %7350
  %7388 = fadd fast float %7375, %7347
  %7389 = fmul fast float %7388, %7329
  %7390 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7377, float %7389, float undef, float undef, i32 0, i32 0, i32 undef, float %7333)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7391 = extractvalue %dx.types.ResRet.f32 %7390, 0
  %7392 = fmul fast float %7391, %7349
  %7393 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7384, float %7389, float undef, float undef, i32 0, i32 0, i32 undef, float %7333)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7394 = extractvalue %dx.types.ResRet.f32 %7393, 0
  %7395 = fmul fast float %7394, %7350
  %7396 = fadd fast float %7395, %7392
  %7397 = fmul fast float %7396, %7364
  %7398 = fadd fast float %7387, %7382
  %7399 = fmul fast float %7398, %7363
  %7400 = fadd fast float %7399, %7397
  %7401 = fmul fast float %7400, 6.250000e-02
  br label %7487

; <label>:7402                                    ; preds = %7323
  %7403 = fmul fast float %225, 0x401921FB60000000
  %7404 = call float @dx.op.unary.f32(i32 13, float %7403)  ; Sin(value)
  %7405 = call float @dx.op.unary.f32(i32 12, float %7403)  ; Cos(value)
  %7406 = fsub fast float -0.000000e+00, %7404
  br label %7407

; <label>:7407                                    ; preds = %7456, %7402
  %7408 = phi float [ 0.000000e+00, %7402 ], [ %7451, %7456 ]
  %7409 = phi float [ 0.000000e+00, %7402 ], [ %7453, %7456 ]
  %7410 = phi i32 [ 0, %7402 ], [ %7457, %7456 ]
  %7411 = mul i32 %7410, 2
  %7412 = add i32 0, %7411
  %7413 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7412
  %7414 = load float, float* %7413, align 4
  %7415 = mul i32 %7410, 2
  %7416 = add i32 1, %7415
  %7417 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7416
  %7418 = load float, float* %7417, align 4
  %7419 = fmul fast float %7414, %7405
  %7420 = call float @dx.op.tertiary.f32(i32 46, float %7418, float %7406, float %7419)  ; FMad(a,b,c)
  %7421 = fmul fast float %7414, %7404
  %7422 = call float @dx.op.tertiary.f32(i32 46, float %7418, float %7405, float %7421)  ; FMad(a,b,c)
  %7423 = fmul fast float %7420, %7331
  %7424 = fmul fast float %7422, %7331
  %7425 = fadd fast float %7423, %6465
  %7426 = fadd fast float %7424, %6469
  %7427 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %44, float %7425, float %7426, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7428 = extractvalue %dx.types.ResRet.f32 %7427, 0
  %7429 = extractvalue %dx.types.ResRet.f32 %7427, 1
  %7430 = extractvalue %dx.types.ResRet.f32 %7427, 2
  %7431 = extractvalue %dx.types.ResRet.f32 %7427, 3
  %7432 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 0
  store float %7428, float* %7432, align 4
  %7433 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 1
  store float %7429, float* %7433, align 4
  %7434 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 2
  store float %7430, float* %7434, align 4
  %7435 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 3
  store float %7431, float* %7435, align 4
  %7436 = fsub fast float %7428, %7333
  %7437 = fcmp fast olt float %7436, 0.000000e+00
  %7438 = select i1 %7437, float 0.000000e+00, float 1.000000e+00
  %7439 = fadd fast float %7438, %7408
  %7440 = fmul fast float %7438, %7436
  %7441 = fadd fast float %7440, %7409
  br label %7442

; <label>:7442                                    ; preds = %7442, %7407
  %7443 = phi i32 [ 1, %7407 ], [ %7454, %7442 ]
  %7444 = phi float [ %7441, %7407 ], [ %7453, %7442 ]
  %7445 = phi float [ %7439, %7407 ], [ %7451, %7442 ]
  %7446 = getelementptr [4 x float], [4 x float]* %89, i32 0, i32 %7443
  %7447 = load float, float* %7446, align 4, !tbaa !108, !noalias !98
  %7448 = fsub fast float %7447, %7333
  %7449 = fcmp fast olt float %7448, 0.000000e+00
  %7450 = select i1 %7449, float 0.000000e+00, float 1.000000e+00
  %7451 = fadd fast float %7450, %7445
  %7452 = fmul fast float %7450, %7448
  %7453 = fadd fast float %7452, %7444
  %7454 = add nuw nsw i32 %7443, 1
  %7455 = icmp eq i32 %7454, 4
  br i1 %7455, label %7456, label %7442, !llvm.loop !110

; <label>:7456                                    ; preds = %7442
  %7457 = add nuw nsw i32 %7410, 1
  %7458 = icmp eq i32 %7457, 8
  br i1 %7458, label %7459, label %7407, !llvm.loop !111

; <label>:7459                                    ; preds = %7456
  %7460 = fdiv fast float 1.000000e+00, %7451
  %7461 = fmul fast float %7460, %7453
  %7462 = fdiv fast float 1.000000e+00, %7333
  %7463 = fmul fast float %7461, %7462
  %7464 = call float @dx.op.unary.f32(i32 7, float %7463)  ; Saturate(value)
  %7465 = call float @dx.op.binary.f32(i32 35, float %7464, float 0.000000e+00)  ; FMax(a,b)
  %7466 = fmul fast float %7451, 3.125000e-02
  %7467 = call float @dx.op.unary.f32(i32 7, float %7466)  ; Saturate(value)
  %7468 = fmul fast float %7467, 2.000000e+00
  %7469 = fadd fast float %7468, -1.000000e+00
  %7470 = fcmp fast ogt float %7469, 0.000000e+00
  %7471 = fcmp fast olt float %7469, 0.000000e+00
  %7472 = zext i1 %7470 to i32
  %7473 = zext i1 %7471 to i32
  %7474 = sub nsw i32 %7472, %7473
  %7475 = sitofp i32 %7474 to float
  %7476 = fmul fast float %7475, %7469
  %7477 = fsub fast float 1.000000e+00, %7476
  %7478 = fmul fast float %7477, %7477
  %7479 = fmul fast float %7478, %7477
  %7480 = fsub fast float %7477, %7479
  %7481 = fmul fast float %7480, %7465
  %7482 = fsub fast float 1.000000e+00, %7479
  %7483 = fsub fast float %7482, %7481
  %7484 = fmul fast float %7475, 5.000000e-01
  %7485 = fmul fast float %7484, %7483
  %7486 = fsub fast float 5.000000e-01, %7485
  br label %7487

; <label>:7487                                    ; preds = %7459, %7335, %7320
  %7488 = phi float [ 1.000000e+00, %7320 ], [ %7401, %7335 ], [ %7486, %7459 ]
  %7489 = fsub fast float %7154, %6989
  %7490 = fmul fast float %7489, %6527
  %7491 = fadd fast float %7490, %6989
  %7492 = fsub fast float %7321, %7491
  %7493 = fmul fast float %7492, %6557
  %7494 = fadd fast float %7493, %7491
  %7495 = fsub fast float %7488, %7494
  %7496 = fmul fast float %7495, %6583
  %7497 = fadd fast float %7496, %7494
  %7498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7499 = extractvalue %dx.types.CBufRet.f32 %7498, 2
  %7500 = fcmp fast ogt float %7499, 0.000000e+00
  br i1 %7500, label %7501, label %7541, !dx.controlflow.hints !114

; <label>:7501                                    ; preds = %7487
  %7502 = fcmp fast ugt float %7499, 0.000000e+00
  br i1 %7502, label %7503, label %7538

; <label>:7503                                    ; preds = %7501
  %7504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7505 = extractvalue %dx.types.CBufRet.f32 %7504, 0
  %7506 = extractvalue %dx.types.CBufRet.f32 %7504, 1
  %7507 = extractvalue %dx.types.CBufRet.f32 %7504, 2
  %7508 = extractvalue %dx.types.CBufRet.f32 %7504, 3
  %7509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7510 = extractvalue %dx.types.CBufRet.f32 %7509, 0
  %7511 = extractvalue %dx.types.CBufRet.f32 %7509, 1
  %7512 = extractvalue %dx.types.CBufRet.f32 %7509, 2
  %7513 = extractvalue %dx.types.CBufRet.f32 %7509, 3
  %7514 = extractvalue %dx.types.CBufRet.f32 %7498, 0
  %7515 = extractvalue %dx.types.CBufRet.f32 %7498, 1
  %7516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7517 = extractvalue %dx.types.CBufRet.f32 %7516, 0
  %7518 = extractvalue %dx.types.CBufRet.f32 %7516, 1
  %7519 = extractvalue %dx.types.CBufRet.f32 %7516, 2
  %7520 = fadd fast float %7517, %6442
  %7521 = fadd fast float %7518, %6443
  %7522 = fadd fast float %7519, %6444
  %7523 = fmul fast float %7520, %7505
  %7524 = call float @dx.op.tertiary.f32(i32 46, float %7506, float %7521, float %7523)  ; FMad(a,b,c)
  %7525 = call float @dx.op.tertiary.f32(i32 46, float %7507, float %7522, float %7524)  ; FMad(a,b,c)
  %7526 = fadd fast float %7525, %7508
  %7527 = fmul fast float %7520, %7510
  %7528 = call float @dx.op.tertiary.f32(i32 46, float %7511, float %7521, float %7527)  ; FMad(a,b,c)
  %7529 = call float @dx.op.tertiary.f32(i32 46, float %7512, float %7522, float %7528)  ; FMad(a,b,c)
  %7530 = fadd fast float %7529, %7513
  %7531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %40, float %7526, float %7530, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7532 = extractvalue %dx.types.ResRet.f32 %7531, 0
  %7533 = fmul fast float %7532, %7515
  %7534 = fadd fast float %7533, %7514
  %7535 = call float @dx.op.unary.f32(i32 7, float %7534)  ; Saturate(value)
  %7536 = fmul fast float %7535, %7499
  %7537 = fsub fast float 1.000000e+00, %7536
  br label %7538

; <label>:7538                                    ; preds = %7503, %7501
  %7539 = phi float [ %7537, %7503 ], [ 1.000000e+00, %7501 ]
  %7540 = fmul fast float %7539, %7497
  br label %7541

; <label>:7541                                    ; preds = %7538, %7487, %6422
  %7542 = phi float [ 1.000000e+00, %6422 ], [ %7540, %7538 ], [ %7497, %7487 ]
  %7543 = call float @dx.op.binary.f32(i32 36, float %7542, float %7542)  ; FMin(a,b)
  %7544 = call float @dx.op.binary.f32(i32 36, float %7542, float %7543)  ; FMin(a,b)
  %7545 = fcmp fast ogt float %7544, 0.000000e+00
  br i1 %7545, label %7546, label %7712, !dx.controlflow.hints !115

; <label>:7546                                    ; preds = %7541
  %7547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7548 = extractvalue %dx.types.CBufRet.f32 %7547, 0
  %7549 = extractvalue %dx.types.CBufRet.f32 %7547, 1
  %7550 = extractvalue %dx.types.CBufRet.f32 %7547, 2
  %7551 = extractvalue %dx.types.CBufRet.f32 %7547, 3
  %7552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7553 = extractvalue %dx.types.CBufRet.f32 %7552, 0
  %7554 = extractvalue %dx.types.CBufRet.f32 %7552, 1
  %7555 = extractvalue %dx.types.CBufRet.f32 %7552, 2
  %7556 = extractvalue %dx.types.CBufRet.f32 %7552, 3
  %7557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7558 = extractvalue %dx.types.CBufRet.f32 %7557, 0
  %7559 = extractvalue %dx.types.CBufRet.f32 %7557, 1
  %7560 = extractvalue %dx.types.CBufRet.f32 %7557, 2
  %7561 = extractvalue %dx.types.CBufRet.f32 %7557, 3
  %7562 = fmul fast float %7548, %6442
  %7563 = call float @dx.op.tertiary.f32(i32 46, float %6443, float %7549, float %7562)  ; FMad(a,b,c)
  %7564 = call float @dx.op.tertiary.f32(i32 46, float %6444, float %7550, float %7563)  ; FMad(a,b,c)
  %7565 = fadd fast float %7564, %7551
  %7566 = fmul fast float %7553, %6442
  %7567 = call float @dx.op.tertiary.f32(i32 46, float %6443, float %7554, float %7566)  ; FMad(a,b,c)
  %7568 = call float @dx.op.tertiary.f32(i32 46, float %6444, float %7555, float %7567)  ; FMad(a,b,c)
  %7569 = fadd fast float %7568, %7556
  %7570 = fmul fast float %7558, %6442
  %7571 = call float @dx.op.tertiary.f32(i32 46, float %6443, float %7559, float %7570)  ; FMad(a,b,c)
  %7572 = call float @dx.op.tertiary.f32(i32 46, float %6444, float %7560, float %7571)  ; FMad(a,b,c)
  %7573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7574 = extractvalue %dx.types.CBufRet.f32 %7573, 0
  %7575 = extractvalue %dx.types.CBufRet.f32 %7573, 1
  %7576 = extractvalue %dx.types.CBufRet.f32 %7573, 3
  %7577 = fmul fast float %7576, %7565
  %7578 = fmul fast float %7576, %7569
  %7579 = fadd fast float %7577, %7574
  %7580 = fadd fast float %7578, %7575
  %7581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7582 = extractvalue %dx.types.CBufRet.f32 %7581, 0
  %7583 = extractvalue %dx.types.CBufRet.f32 %7581, 1
  %7584 = fsub fast float %7579, %7582
  %7585 = fsub fast float %7580, %7583
  %7586 = fcmp fast olt float %7584, 0.000000e+00
  %7587 = fcmp fast olt float %7585, 0.000000e+00
  %7588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7589 = extractvalue %dx.types.CBufRet.f32 %7588, 0
  %7590 = extractvalue %dx.types.CBufRet.f32 %7588, 1
  %7591 = extractvalue %dx.types.CBufRet.f32 %7588, 2
  %7592 = extractvalue %dx.types.CBufRet.f32 %7588, 3
  %7593 = select i1 %7586, float %7589, float %7591
  %7594 = select i1 %7587, float %7590, float %7592
  %7595 = fmul fast float %7593, %7584
  %7596 = fmul fast float %7594, %7585
  %7597 = call float @dx.op.unary.f32(i32 6, float %7595)  ; FAbs(value)
  %7598 = call float @dx.op.unary.f32(i32 6, float %7596)  ; FAbs(value)
  %7599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7600 = extractvalue %dx.types.CBufRet.f32 %7599, 0
  %7601 = call float @dx.op.binary.f32(i32 35, float %7597, float %7598)  ; FMax(a,b)
  %7602 = fsub fast float %7600, %7601
  %7603 = call float @dx.op.unary.f32(i32 7, float %7602)  ; Saturate(value)
  %7604 = fcmp fast ogt float %7603, 0.000000e+00
  br i1 %7604, label %7605, label %7646, !dx.controlflow.hints !116

; <label>:7605                                    ; preds = %7546
  %7606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %7579, float %7580, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7607 = extractvalue %dx.types.ResRet.f32 %7606, 1
  %7608 = fcmp fast ogt float %7607, 0.000000e+00
  br i1 %7608, label %7609, label %7641

; <label>:7609                                    ; preds = %7605
  %7610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %43, float %7579, float %7580, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7611 = extractvalue %dx.types.ResRet.f32 %7610, 0
  %7612 = extractvalue %dx.types.ResRet.f32 %7610, 1
  %7613 = extractvalue %dx.types.ResRet.f32 %7610, 2
  %7614 = extractvalue %dx.types.ResRet.f32 %7610, 3
  %7615 = fsub fast float 1.000000e+00, %7561
  %7616 = fsub fast float %7615, %7572
  %7617 = fmul fast float %7616, 0x400921FB60000000
  %7618 = fadd fast float %7617, 0x3FF921FB60000000
  %7619 = call float @dx.op.unary.f32(i32 13, float %7618)  ; Sin(value)
  %7620 = fadd fast float %7619, -1.000000e+00
  %7621 = fmul fast float %7620, 0x3FD45F3060000000
  %7622 = fmul fast float %7616, 0x401921FB60000000
  %7623 = fadd fast float %7622, 0x400921FB60000000
  %7624 = call float @dx.op.unary.f32(i32 13, float %7623)  ; Sin(value)
  %7625 = fadd fast float %7624, 0x3E7777A5C0000000
  %7626 = fmul fast float %7625, 0x3FC45F3060000000
  %7627 = fmul fast float %7616, 0x4022D97C80000000
  %7628 = fadd fast float %7627, 0x4012D97C80000000
  %7629 = call float @dx.op.unary.f32(i32 13, float %7628)  ; Sin(value)
  %7630 = fadd fast float %7629, 1.000000e+00
  %7631 = fmul fast float %7630, 0x3FBB2995E0000000
  %7632 = fmul fast float %7616, 0x402921FB60000000
  %7633 = fadd fast float %7632, 0x401921FB60000000
  %7634 = call float @dx.op.unary.f32(i32 13, float %7633)  ; Sin(value)
  %7635 = fadd fast float %7634, 0xBE8777A5C0000000
  %7636 = fmul fast float %7635, 0x3FB45F3060000000
  %7637 = call float @dx.op.dot4.f32(i32 56, float %7611, float %7612, float %7613, float %7614, float %7621, float %7626, float %7631, float %7636)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7638 = fmul fast float %7637, 0xBFF7154760000000
  %7639 = call float @dx.op.unary.f32(i32 21, float %7638)  ; Exp(value)
  %7640 = call float @dx.op.unary.f32(i32 7, float %7639)  ; Saturate(value)
  br label %7641

; <label>:7641                                    ; preds = %7609, %7605
  %7642 = phi float [ %7640, %7609 ], [ 1.000000e+00, %7605 ]
  %7643 = fadd fast float %7642, -1.000000e+00
  %7644 = fmul fast float %7643, %7603
  %7645 = fadd fast float %7644, 1.000000e+00
  br label %7646

; <label>:7646                                    ; preds = %7641, %7546
  %7647 = phi float [ %7645, %7641 ], [ 1.000000e+00, %7546 ]
  %7648 = fmul fast float %7647, %7542
  %7649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7650 = extractvalue %dx.types.CBufRet.f32 %7649, 0
  %7651 = extractvalue %dx.types.CBufRet.f32 %7649, 1
  %7652 = extractvalue %dx.types.CBufRet.f32 %7649, 2
  %7653 = fadd fast float %7650, %153
  %7654 = fadd fast float %7651, %154
  %7655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7656 = extractvalue %dx.types.CBufRet.f32 %7655, 1
  %7657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7658 = extractvalue %dx.types.CBufRet.f32 %7657, 0
  %7659 = extractvalue %dx.types.CBufRet.f32 %7657, 1
  %7660 = extractvalue %dx.types.CBufRet.f32 %7657, 2
  %7661 = fsub fast float -0.000000e+00, %7653
  %7662 = fsub fast float -0.000000e+00, %7654
  %7663 = fsub fast float -0.000000e+00, %155
  %7664 = fsub fast float %7663, %7652
  %7665 = fadd fast float %7664, %7656
  %7666 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7661, float %7662, float %7665)  ; Dot3(ax,ay,az,bx,by,bz)
  %7667 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7658, float %7659, float %7660)  ; Dot3(ax,ay,az,bx,by,bz)
  %7668 = fdiv fast float 1.000000e+00, %7667
  %7669 = fmul fast float %7668, %7666
  %7670 = fmul fast float %7658, %7669
  %7671 = fmul fast float %7659, %7669
  %7672 = fadd fast float %7670, %7653
  %7673 = fadd fast float %7671, %7654
  %7674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7675 = extractvalue %dx.types.CBufRet.f32 %7674, 0
  %7676 = extractvalue %dx.types.CBufRet.f32 %7674, 1
  %7677 = fsub fast float %7672, %7675
  %7678 = fsub fast float %7673, %7676
  %7679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7680 = extractvalue %dx.types.CBufRet.f32 %7679, 2
  %7681 = extractvalue %dx.types.CBufRet.f32 %7679, 3
  %7682 = fmul fast float %7677, %7680
  %7683 = fmul fast float %7678, %7681
  %7684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7685 = extractvalue %dx.types.CBufRet.i32 %7684, 3
  %7686 = icmp eq i32 %7685, 0
  br i1 %7686, label %7692, label %7687

; <label>:7687                                    ; preds = %7646
  %7688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7682, float %7683, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7689 = extractvalue %dx.types.ResRet.f32 %7688, 0
  %7690 = extractvalue %dx.types.ResRet.f32 %7688, 1
  %7691 = extractvalue %dx.types.ResRet.f32 %7688, 2
  br label %7697

; <label>:7692                                    ; preds = %7646
  %7693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7682, float %7683, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7694 = extractvalue %dx.types.ResRet.f32 %7693, 0
  %7695 = extractvalue %dx.types.ResRet.f32 %7693, 1
  %7696 = extractvalue %dx.types.ResRet.f32 %7693, 2
  br label %7697

; <label>:7697                                    ; preds = %7692, %7687
  %7698 = phi float [ %7689, %7687 ], [ %7694, %7692 ]
  %7699 = phi float [ %7690, %7687 ], [ %7695, %7692 ]
  %7700 = phi float [ %7691, %7687 ], [ %7696, %7692 ]
  %7701 = extractvalue %dx.types.CBufRet.f32 %7655, 2
  %7702 = fmul fast float %7701, %7698
  %7703 = extractvalue %dx.types.CBufRet.f32 %7655, 0
  %7704 = fsub fast float %7669, %7703
  %7705 = fsub fast float %7704, %7702
  %7706 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7705)  ; FMax(a,b)
  %7707 = fmul fast float %7706, %7699
  %7708 = call float @dx.op.binary.f32(i32 36, float %7700, float %7707)  ; FMin(a,b)
  %7709 = fmul fast float %7708, 0xBFF7154760000000
  %7710 = call float @dx.op.unary.f32(i32 21, float %7709)  ; Exp(value)
  %7711 = fmul fast float %7648, %7710
  br label %7712

; <label>:7712                                    ; preds = %7697, %7541
  %7713 = phi float [ %7711, %7697 ], [ %7542, %7541 ]
  %7714 = call float @dx.op.binary.f32(i32 36, float %7713, float %7713)  ; FMin(a,b)
  %7715 = call float @dx.op.binary.f32(i32 36, float %7713, float %7714)  ; FMin(a,b)
  %7716 = fcmp fast ogt float %7715, 0.000000e+00
  br i1 %7716, label %7717, label %8025, !dx.controlflow.hints !117

; <label>:7717                                    ; preds = %7712
  %7718 = bitcast i32 %5438 to float
  %7719 = fmul fast float %7713, %6434
  %7720 = fmul fast float %7713, %6435
  %7721 = fmul fast float %7713, %6436
  %7722 = fsub fast float %6423, %5400
  %7723 = fsub fast float %6424, %5399
  %7724 = fsub fast float %6425, %5398
  %7725 = call float @dx.op.dot3.f32(i32 55, float %7722, float %7723, float %7724, float %7722, float %7723, float %7724)  ; Dot3(ax,ay,az,bx,by,bz)
  %7726 = call float @dx.op.unary.f32(i32 25, float %7725)  ; Rsqrt(value)
  %7727 = fmul fast float %7726, %7722
  %7728 = fmul fast float %7726, %7723
  %7729 = fmul fast float %7726, %7724
  %7730 = call float @dx.op.dot3.f32(i32 55, float %6423, float %6424, float %6425, float %5404, float %5405, float %5406)  ; Dot3(ax,ay,az,bx,by,bz)
  %7731 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5396, float %5395, float %7727, float %7728, float %7729)  ; Dot3(ax,ay,az,bx,by,bz)
  %7732 = call float @dx.op.unary.f32(i32 7, float %7730)  ; Saturate(value)
  %7733 = fmul fast float %7732, %7732
  %7734 = fmul fast float %7733, %7718
  %7735 = call float @dx.op.unary.f32(i32 7, float %7734)  ; Saturate(value)
  %7736 = fmul fast float %7735, %7732
  %7737 = call float @dx.op.dot3.f32(i32 55, float %5404, float %5405, float %5406, float %7727, float %7728, float %7729)  ; Dot3(ax,ay,az,bx,by,bz)
  %7738 = fmul fast float %7737, %7737
  %7739 = call float @dx.op.unary.f32(i32 6, float %7730)  ; FAbs(value)
  %7740 = fsub fast float 1.000000e+00, %5432
  %7741 = fmul fast float %5414, %5414
  %7742 = fmul fast float %7741, %7740
  %7743 = fadd fast float %7742, %5432
  %7744 = bitcast float %7743 to i32
  %7745 = ashr i32 %7744, 1
  %7746 = add nsw i32 %7745, 532487669
  %7747 = bitcast i32 %7746 to float
  %7748 = fadd fast float %7747, %5414
  %7749 = fmul fast float %5432, %7738
  %7750 = fsub fast float 1.000000e+00, %7738
  %7751 = fadd fast float %7750, %7749
  %7752 = fmul fast float %7739, %7739
  %7753 = fmul fast float %7752, %7740
  %7754 = fadd fast float %7753, %5432
  %7755 = bitcast float %7754 to i32
  %7756 = ashr i32 %7755, 1
  %7757 = add nsw i32 %7756, 532487669
  %7758 = bitcast i32 %7757 to float
  %7759 = fadd fast float %7758, %7739
  %7760 = fmul fast float %7751, %7751
  %7761 = fmul fast float %7760, %7748
  %7762 = fmul fast float %7761, %7759
  %7763 = fdiv fast float 0x3FF0A00000000000, %7762
  %7764 = fmul fast float %7763, %5432
  %7765 = fmul fast float %5684, 0x3FF9999980000000
  %7766 = fsub fast float 5.000000e+00, %7765
  %7767 = call float @dx.op.unary.f32(i32 6, float %7731)  ; FAbs(value)
  %7768 = fsub fast float 1.000000e+00, %7767
  %7769 = fmul fast float %5684, 0x41D9660740000000
  %7770 = fadd fast float %7769, 0xC1EFBF8940000000
  %7771 = bitcast float %7768 to i32
  %7772 = sitofp i32 %7771 to float
  %7773 = fmul fast float %7772, %7766
  %7774 = fadd fast float %7770, %7773
  %7775 = fptosi float %7774 to i32
  %7776 = bitcast i32 %7775 to float
  %7777 = fsub fast float 1.000000e+00, %5407
  %7778 = fsub fast float 1.000000e+00, %5408
  %7779 = fsub fast float 1.000000e+00, %5412
  %7780 = fmul fast float %7776, %7777
  %7781 = fmul fast float %7776, %7778
  %7782 = fmul fast float %7776, %7779
  %7783 = fadd fast float %7780, %5407
  %7784 = fadd fast float %7781, %5408
  %7785 = fadd fast float %7782, %5412
  br i1 %5707, label %7786, label %7809

; <label>:7786                                    ; preds = %7717
  %7787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5061, float %7767, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7788 = extractvalue %dx.types.ResRet.f32 %7787, 0
  %7789 = extractvalue %dx.types.ResRet.f32 %7787, 1
  %7790 = extractvalue %dx.types.ResRet.f32 %7787, 2
  %7791 = fadd fast float %7788, -5.000000e-01
  %7792 = fadd fast float %7789, -5.000000e-01
  %7793 = fadd fast float %7790, -5.000000e-01
  %7794 = fmul fast float %5407, 4.000000e+00
  %7795 = fmul fast float %7794, %7777
  %7796 = fmul fast float %7795, %7791
  %7797 = fmul fast float %5408, 4.000000e+00
  %7798 = fmul fast float %7797, %7778
  %7799 = fmul fast float %7798, %7792
  %7800 = fmul fast float %5412, 4.000000e+00
  %7801 = fmul fast float %7800, %7779
  %7802 = fmul fast float %7801, %7793
  %7803 = fadd fast float %7796, %7783
  %7804 = fadd fast float %7799, %7784
  %7805 = fadd fast float %7802, %7785
  %7806 = call float @dx.op.unary.f32(i32 7, float %7803)  ; Saturate(value)
  %7807 = call float @dx.op.unary.f32(i32 7, float %7804)  ; Saturate(value)
  %7808 = call float @dx.op.unary.f32(i32 7, float %7805)  ; Saturate(value)
  br label %7809

; <label>:7809                                    ; preds = %7786, %7717
  %7810 = phi float [ %7806, %7786 ], [ %7783, %7717 ]
  %7811 = phi float [ %7807, %7786 ], [ %7784, %7717 ]
  %7812 = phi float [ %7808, %7786 ], [ %7785, %7717 ]
  %7813 = fmul fast float %7730, 9.843750e-01
  %7814 = fadd fast float %7813, 7.812500e-03
  %7815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %7814, float %5688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7816 = extractvalue %dx.types.ResRet.f32 %7815, 0
  %7817 = extractvalue %dx.types.ResRet.f32 %7815, 1
  %7818 = extractvalue %dx.types.ResRet.f32 %7815, 2
  %7819 = extractvalue %dx.types.ResRet.f32 %7815, 3
  %7820 = fsub fast float %7818, %7816
  %7821 = fsub fast float %7819, %7817
  %7822 = fmul fast float %7820, %5694
  %7823 = fmul fast float %7821, %5694
  %7824 = fadd fast float %7822, %7816
  %7825 = fadd fast float %7823, %7817
  %7826 = fmul fast float %7824, %5407
  %7827 = fmul fast float %7824, %5408
  %7828 = fmul fast float %7824, %5412
  %7829 = fadd fast float %7826, %7825
  %7830 = fadd fast float %7827, %7825
  %7831 = fadd fast float %7828, %7825
  br i1 %5707, label %7832, label %7855

; <label>:7832                                    ; preds = %7809
  %7833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5061, float %7730, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7834 = extractvalue %dx.types.ResRet.f32 %7833, 0
  %7835 = extractvalue %dx.types.ResRet.f32 %7833, 1
  %7836 = extractvalue %dx.types.ResRet.f32 %7833, 2
  %7837 = fadd fast float %7834, -5.000000e-01
  %7838 = fadd fast float %7835, -5.000000e-01
  %7839 = fadd fast float %7836, -5.000000e-01
  %7840 = fmul fast float %5407, 4.000000e+00
  %7841 = fmul fast float %7840, %7777
  %7842 = fmul fast float %7841, %7837
  %7843 = fmul fast float %5408, 4.000000e+00
  %7844 = fmul fast float %7843, %7778
  %7845 = fmul fast float %7844, %7838
  %7846 = fmul fast float %5412, 4.000000e+00
  %7847 = fmul fast float %7846, %7779
  %7848 = fmul fast float %7847, %7839
  %7849 = fadd fast float %7842, %7829
  %7850 = fadd fast float %7845, %7830
  %7851 = fadd fast float %7848, %7831
  %7852 = call float @dx.op.unary.f32(i32 7, float %7849)  ; Saturate(value)
  %7853 = call float @dx.op.unary.f32(i32 7, float %7850)  ; Saturate(value)
  %7854 = call float @dx.op.unary.f32(i32 7, float %7851)  ; Saturate(value)
  br label %7855

; <label>:7855                                    ; preds = %7832, %7809
  %7856 = phi float [ %7852, %7832 ], [ %7829, %7809 ]
  %7857 = phi float [ %7853, %7832 ], [ %7830, %7809 ]
  %7858 = phi float [ %7854, %7832 ], [ %7831, %7809 ]
  %7859 = call float @dx.op.binary.f32(i32 35, float %7857, float %7858)  ; FMax(a,b)
  %7860 = call float @dx.op.binary.f32(i32 35, float %7856, float %7859)  ; FMax(a,b)
  %7861 = fsub fast float 1.000000e+00, %7860
  %7862 = call float @dx.op.binary.f32(i32 35, float %7739, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7863 = fdiv fast float %4415, %7862
  %7864 = fmul fast float %6332, %7863
  %7865 = fmul fast float %6334, %7863
  %7866 = fmul fast float %6336, %7863
  %7867 = call float @dx.op.unary.f32(i32 21, float %7864)  ; Exp(value)
  %7868 = call float @dx.op.unary.f32(i32 21, float %7865)  ; Exp(value)
  %7869 = call float @dx.op.unary.f32(i32 21, float %7866)  ; Exp(value)
  %7870 = call float @dx.op.unary.f32(i32 7, float %7867)  ; Saturate(value)
  %7871 = call float @dx.op.unary.f32(i32 7, float %7868)  ; Saturate(value)
  %7872 = call float @dx.op.unary.f32(i32 7, float %7869)  ; Saturate(value)
  %7873 = select i1 %6329, float %7870, float 0.000000e+00
  %7874 = select i1 %6330, float %7871, float 0.000000e+00
  %7875 = select i1 %6331, float %7872, float 0.000000e+00
  %7876 = fsub fast float -0.000000e+00, %5404
  %7877 = fsub fast float -0.000000e+00, %5405
  %7878 = fsub fast float -0.000000e+00, %5406
  %7879 = call float @dx.op.dot3.f32(i32 55, float %6423, float %6424, float %6425, float %7876, float %7877, float %7878)  ; Dot3(ax,ay,az,bx,by,bz)
  %7880 = call float @dx.op.unary.f32(i32 7, float %7879)  ; Saturate(value)
  %7881 = fmul fast float %7880, 9.843750e-01
  %7882 = fadd fast float %7881, 7.812500e-03
  %7883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %7882, float %5688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7884 = extractvalue %dx.types.ResRet.f32 %7883, 0
  %7885 = extractvalue %dx.types.ResRet.f32 %7883, 1
  %7886 = extractvalue %dx.types.ResRet.f32 %7883, 2
  %7887 = extractvalue %dx.types.ResRet.f32 %7883, 3
  %7888 = fsub fast float %7886, %7884
  %7889 = fsub fast float %7887, %7885
  %7890 = fmul fast float %7888, %5694
  %7891 = fmul fast float %7889, %5694
  %7892 = fadd fast float %7890, %7884
  %7893 = fadd fast float %7891, %7885
  %7894 = fmul fast float %7892, %5407
  %7895 = fmul fast float %7892, %5408
  %7896 = fmul fast float %7892, %5412
  %7897 = fadd fast float %7894, %7893
  %7898 = fadd fast float %7895, %7893
  %7899 = fadd fast float %7896, %7893
  br i1 %5707, label %7900, label %7923

; <label>:7900                                    ; preds = %7855
  %7901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5061, float %7880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7902 = extractvalue %dx.types.ResRet.f32 %7901, 0
  %7903 = extractvalue %dx.types.ResRet.f32 %7901, 1
  %7904 = extractvalue %dx.types.ResRet.f32 %7901, 2
  %7905 = fadd fast float %7902, -5.000000e-01
  %7906 = fadd fast float %7903, -5.000000e-01
  %7907 = fadd fast float %7904, -5.000000e-01
  %7908 = fmul fast float %5407, 4.000000e+00
  %7909 = fmul fast float %7908, %7777
  %7910 = fmul fast float %7909, %7905
  %7911 = fmul fast float %5408, 4.000000e+00
  %7912 = fmul fast float %7911, %7778
  %7913 = fmul fast float %7912, %7906
  %7914 = fmul fast float %5412, 4.000000e+00
  %7915 = fmul fast float %7914, %7779
  %7916 = fmul fast float %7915, %7907
  %7917 = fadd fast float %7910, %7897
  %7918 = fadd fast float %7913, %7898
  %7919 = fadd fast float %7916, %7899
  %7920 = call float @dx.op.unary.f32(i32 7, float %7917)  ; Saturate(value)
  %7921 = call float @dx.op.unary.f32(i32 7, float %7918)  ; Saturate(value)
  %7922 = call float @dx.op.unary.f32(i32 7, float %7919)  ; Saturate(value)
  br label %7923

; <label>:7923                                    ; preds = %7900, %7855
  %7924 = phi float [ %7920, %7900 ], [ %7897, %7855 ]
  %7925 = phi float [ %7921, %7900 ], [ %7898, %7855 ]
  %7926 = phi float [ %7922, %7900 ], [ %7899, %7855 ]
  %7927 = call float @dx.op.binary.f32(i32 35, float %7925, float %7926)  ; FMax(a,b)
  %7928 = call float @dx.op.binary.f32(i32 35, float %7924, float %7927)  ; FMax(a,b)
  %7929 = fsub fast float 1.000000e+00, %7928
  %7930 = fmul fast float %5429, %6396
  %7931 = fadd fast float %6398, %7930
  %7932 = call float @dx.op.unary.f32(i32 7, float %7931)  ; Saturate(value)
  %7933 = fsub fast float %6423, %5420
  %7934 = fsub fast float %6424, %5421
  %7935 = fsub fast float %6425, %5422
  %7936 = call float @dx.op.dot3.f32(i32 55, float %7933, float %7934, float %7935, float %7933, float %7934, float %7935)  ; Dot3(ax,ay,az,bx,by,bz)
  %7937 = call float @dx.op.unary.f32(i32 25, float %7936)  ; Rsqrt(value)
  %7938 = fmul fast float %7937, %7933
  %7939 = fmul fast float %7937, %7934
  %7940 = fmul fast float %7937, %7935
  %7941 = call float @dx.op.dot3.f32(i32 55, float %7876, float %7877, float %7878, float %7938, float %7939, float %7940)  ; Dot3(ax,ay,az,bx,by,bz)
  %7942 = fmul fast float %7941, %7941
  %7943 = call float @dx.op.unary.f32(i32 6, float %7880)  ; FAbs(value)
  %7944 = call float @dx.op.binary.f32(i32 35, float %7932, float 0x3F847AE140000000)  ; FMax(a,b)
  %7945 = fmul fast float %7944, %7944
  %7946 = fmul fast float %7945, %7945
  %7947 = fsub fast float 1.000000e+00, %7946
  %7948 = fmul fast float %7741, %7947
  %7949 = fadd fast float %7948, %7946
  %7950 = bitcast float %7949 to i32
  %7951 = ashr i32 %7950, 1
  %7952 = add nsw i32 %7951, 532487669
  %7953 = bitcast i32 %7952 to float
  %7954 = fadd fast float %7953, %5414
  %7955 = fmul fast float %7946, %7942
  %7956 = fsub fast float 1.000000e+00, %7942
  %7957 = fadd fast float %7956, %7955
  %7958 = fmul fast float %7943, %7943
  %7959 = fmul fast float %7958, %7947
  %7960 = fadd fast float %7959, %7946
  %7961 = bitcast float %7960 to i32
  %7962 = ashr i32 %7961, 1
  %7963 = add nsw i32 %7962, 532487669
  %7964 = bitcast i32 %7963 to float
  %7965 = fadd fast float %7964, %7943
  %7966 = fmul fast float %7957, %7957
  %7967 = fmul fast float %7966, %7954
  %7968 = fmul fast float %7967, %7965
  %7969 = fdiv fast float 0x3FF0A00000000000, %7968
  %7970 = fmul fast float %7969, %7946
  %7971 = fmul fast float %7880, %7873
  %7972 = fmul fast float %7880, %7874
  %7973 = fmul fast float %7880, %7875
  %7974 = fmul fast float %7971, %7929
  %7975 = fmul fast float %7974, %7970
  %7976 = fmul fast float %7972, %7929
  %7977 = fmul fast float %7976, %7970
  %7978 = fmul fast float %7973, %7929
  %7979 = fmul fast float %7978, %7970
  %7980 = fmul fast float %7810, %7764
  %7981 = fmul fast float %7811, %7764
  %7982 = fmul fast float %7812, %7764
  %7983 = fsub fast float 1.000000e+00, %7731
  %7984 = bitcast float %7983 to i32
  %7985 = sitofp i32 %7984 to float
  %7986 = fmul fast float %7985, 5.000000e+00
  %7987 = fadd fast float %7986, 0xC1EFBF8940000000
  %7988 = fptosi float %7987 to i32
  %7989 = bitcast i32 %7988 to float
  %7990 = fmul fast float %7989, %5062
  %7991 = fmul fast float %7861, %7990
  %7992 = fmul fast float %7991, %6324
  %7993 = fmul fast float %7991, %6325
  %7994 = fmul fast float %7991, %6326
  %7995 = fadd fast float %7992, %7980
  %7996 = fadd fast float %7993, %7981
  %7997 = fadd fast float %7994, %7982
  %7998 = fmul fast float %7995, %7736
  %7999 = fmul fast float %7996, %7736
  %8000 = fmul fast float %7997, %7736
  %8001 = fmul fast float %7736, %7719
  %8002 = fmul fast float %8001, %7861
  %8003 = fmul fast float %7736, %7720
  %8004 = fmul fast float %8003, %7861
  %8005 = fmul fast float %7736, %7721
  %8006 = fmul fast float %8005, %7861
  %8007 = fadd fast float %7998, %7975
  %8008 = fadd fast float %7999, %7977
  %8009 = fadd fast float %8000, %7979
  %8010 = fmul fast float %8007, %7719
  %8011 = fmul fast float %8008, %7720
  %8012 = fmul fast float %8009, %7721
  %8013 = fadd fast float %8002, %6413
  %8014 = fmul fast float %8013, %5058
  %8015 = fadd fast float %8004, %6415
  %8016 = fmul fast float %8015, %5058
  %8017 = fadd fast float %8006, %6417
  %8018 = fmul fast float %8017, %5058
  %8019 = fadd fast float %8010, %6377
  %8020 = fmul fast float %8019, %5058
  %8021 = fadd fast float %8011, %6380
  %8022 = fmul fast float %8021, %5058
  %8023 = fadd fast float %8012, %6383
  %8024 = fmul fast float %8023, %5058
  br label %8025

; <label>:8025                                    ; preds = %7923, %7712, %6307
  %8026 = phi float [ %6378, %6307 ], [ %6378, %7712 ], [ %8020, %7923 ]
  %8027 = phi float [ %6381, %6307 ], [ %6381, %7712 ], [ %8022, %7923 ]
  %8028 = phi float [ %6384, %6307 ], [ %6384, %7712 ], [ %8024, %7923 ]
  %8029 = phi float [ %6414, %6307 ], [ %6414, %7712 ], [ %8014, %7923 ]
  %8030 = phi float [ %6416, %6307 ], [ %6416, %7712 ], [ %8016, %7923 ]
  %8031 = phi float [ %6418, %6307 ], [ %6418, %7712 ], [ %8018, %7923 ]
  %8032 = fmul fast float %6353, %5058
  %8033 = fmul fast float %6354, %5058
  %8034 = fmul fast float %6355, %5058
  %8035 = fadd fast float %8032, 1.000000e+00
  %8036 = fadd fast float %8033, 1.000000e+00
  %8037 = fadd fast float %8034, 1.000000e+00
  %8038 = call float @dx.op.dot3.f32(i32 55, float %8035, float %8036, float %8037, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8039 = fsub fast float 1.000000e+00, %8038
  %8040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8041 = extractvalue %dx.types.CBufRet.f32 %8040, 0
  %8042 = fmul fast float %8041, %6359
  %8043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8044 = extractvalue %dx.types.CBufRet.f32 %8043, 3
  %8045 = fsub fast float 1.000000e+00, %5065
  %8046 = call float @dx.op.unary.f32(i32 7, float %8045)  ; Saturate(value)
  %8047 = fadd fast float %8031, %5064
  %8048 = fmul fast float %8047, %5065
  %8049 = fmul fast float %8046, %8044
  %8050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8051 = extractvalue %dx.types.CBufRet.f32 %8050, 3
  %8052 = fmul fast float %8029, %5401
  %8053 = fmul fast float %8030, %5402
  %8054 = fmul fast float %8031, %5403
  %8055 = fcmp fast ogt float %86, %175
  %8056 = and i1 %8055, %5133
  %8057 = or i1 %5212, %8056
  %8058 = icmp eq i32 %5132, 2
  %8059 = fcmp fast ole float %86, %175
  %8060 = and i1 %8059, %8058
  %8061 = or i1 %8060, %8057
  br i1 %8056, label %8062, label %8319

; <label>:8062                                    ; preds = %8025
  %8063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8064 = extractvalue %dx.types.CBufRet.f32 %8063, 2
  %8065 = extractvalue %dx.types.CBufRet.f32 %8063, 3
  %8066 = fmul fast float %8064, %98
  %8067 = fmul fast float %8065, %99
  %8068 = call float @dx.op.unary.f32(i32 7, float %8066)  ; Saturate(value)
  %8069 = call float @dx.op.unary.f32(i32 7, float %8067)  ; Saturate(value)
  %8070 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8068, float %8069, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8071 = extractvalue %dx.types.ResRet.f32 %8070, 0
  %8072 = extractvalue %dx.types.ResRet.f32 %8070, 1
  %8073 = extractvalue %dx.types.ResRet.f32 %8070, 2
  %8074 = extractvalue %dx.types.ResRet.f32 %8070, 3
  %8075 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8068, float %8069, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8076 = extractvalue %dx.types.ResRet.f32 %8075, 0
  %8077 = extractvalue %dx.types.ResRet.f32 %8075, 1
  %8078 = extractvalue %dx.types.ResRet.f32 %8075, 2
  %8079 = extractvalue %dx.types.ResRet.f32 %8075, 3
  %8080 = call float @dx.op.binary.f32(i32 35, float %8072, float %8073)  ; FMax(a,b)
  %8081 = call float @dx.op.binary.f32(i32 35, float %8071, float %8080)  ; FMax(a,b)
  %8082 = call float @dx.op.binary.f32(i32 35, float %8081, float %8074)  ; FMax(a,b)
  %8083 = call float @dx.op.binary.f32(i32 36, float %8077, float %8078)  ; FMin(a,b)
  %8084 = call float @dx.op.binary.f32(i32 36, float %8076, float %8083)  ; FMin(a,b)
  %8085 = call float @dx.op.binary.f32(i32 36, float %8084, float %8079)  ; FMin(a,b)
  %8086 = fmul fast float %8082, 2.550000e+02
  %8087 = fadd fast float %8086, 0x3F70101020000000
  %8088 = fptoui float %8087 to i32
  %8089 = fmul fast float %8085, 2.550000e+02
  %8090 = fadd fast float %8089, 0x3F70101020000000
  %8091 = fptoui float %8090 to i32
  %8092 = icmp ult i32 %8088, %8091
  br i1 %8092, label %8093, label %8261

; <label>:8093                                    ; preds = %8062
  %8094 = fcmp fast ogt float %85, 9.843750e-01
  %8095 = fadd fast float %86, -4.000000e+00
  %8096 = select i1 %8094, float -4.000000e+00, float %8095
  %8097 = call float @dx.op.binary.f32(i32 35, float %8096, float 0.000000e+00)  ; FMax(a,b)
  %8098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8099 = extractvalue %dx.types.CBufRet.f32 %8098, 0
  %8100 = fadd fast float %8099, %8097
  %8101 = extractvalue %dx.types.CBufRet.f32 %8098, 2
  %8102 = fmul fast float %8100, %8101
  %8103 = call float @dx.op.unary.f32(i32 23, float %8102)  ; Log(value)
  %8104 = extractvalue %dx.types.CBufRet.f32 %8098, 3
  %8105 = fmul fast float %8104, %8103
  %8106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8107 = extractvalue %dx.types.CBufRet.f32 %8106, 2
  %8108 = fmul fast float %8105, %8107
  %8109 = call float @dx.op.unary.f32(i32 7, float %8108)  ; Saturate(value)
  %8110 = uitofp i32 %8088 to float
  %8111 = uitofp i32 %8091 to float
  %8112 = fadd fast float %8110, 5.000000e-01
  %8113 = fadd fast float %8111, 5.000000e-01
  %8114 = fmul fast float %8107, %8112
  %8115 = fmul fast float %8107, %8113
  %8116 = fadd fast float %8114, 0x3F0FFB4800000000
  %8117 = fadd fast float %8115, 0xBF0FFB4800000000
  %8118 = call float @dx.op.binary.f32(i32 35, float %8109, float %8116)  ; FMax(a,b)
  %8119 = call float @dx.op.binary.f32(i32 36, float %8118, float %8117)  ; FMin(a,b)
  %8120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8121 = extractvalue %dx.types.CBufRet.f32 %8120, 1
  %8122 = extractvalue %dx.types.CBufRet.f32 %8120, 2
  %8123 = extractvalue %dx.types.CBufRet.f32 %8120, 0
  %8124 = fmul fast float %8121, %8119
  %8125 = fadd fast float %8123, %8124
  %8126 = fadd fast float %8123, %8122
  %8127 = fsub fast float %8121, %8122
  %8128 = fadd fast float %8127, %8123
  %8129 = call float @dx.op.binary.f32(i32 35, float %8125, float %8126)  ; FMax(a,b)
  %8130 = call float @dx.op.binary.f32(i32 36, float %8129, float %8128)  ; FMin(a,b)
  %8131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %8068, float %8069, float %8130, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8132 = extractvalue %dx.types.ResRet.f32 %8131, 0
  %8133 = extractvalue %dx.types.ResRet.f32 %8131, 1
  %8134 = extractvalue %dx.types.ResRet.f32 %8131, 2
  %8135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8136 = extractvalue %dx.types.CBufRet.i32 %8135, 0
  %8137 = extractvalue %dx.types.CBufRet.i32 %8135, 1
  %8138 = uitofp i32 %8136 to float
  %8139 = uitofp i32 %8137 to float
  %8140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8141 = extractvalue %dx.types.CBufRet.f32 %8140, 0
  %8142 = extractvalue %dx.types.CBufRet.f32 %8140, 1
  %8143 = fmul fast float %8138, %8068
  %8144 = fmul fast float %8139, %8069
  %8145 = fadd fast float %8143, -5.000000e-01
  %8146 = fadd fast float %8144, -5.000000e-01
  %8147 = call float @dx.op.unary.f32(i32 22, float %8145)  ; Frc(value)
  %8148 = call float @dx.op.unary.f32(i32 22, float %8146)  ; Frc(value)
  %8149 = fmul fast float %8147, %8147
  %8150 = fmul fast float %8149, %8147
  %8151 = fsub fast float 3.000000e+00, %8147
  %8152 = fmul fast float %8149, %8151
  %8153 = fmul fast float %8147, 3.000000e+00
  %8154 = fmul fast float %8150, 3.000000e+00
  %8155 = fmul fast float %8149, 6.000000e+00
  %8156 = fsub fast float %8154, %8155
  %8157 = fadd fast float %8156, 4.000000e+00
  %8158 = fmul fast float %8157, 0x3FC5555560000000
  %8159 = fmul fast float %8150, -3.000000e+00
  %8160 = fadd fast float %8149, %8147
  %8161 = fmul fast float %8160, 3.000000e+00
  %8162 = fadd fast float %8159, 1.000000e+00
  %8163 = fadd fast float %8162, %8161
  %8164 = fmul fast float %8150, 0x3FC5555560000000
  %8165 = fmul fast float %8148, %8148
  %8166 = fmul fast float %8165, %8148
  %8167 = fsub fast float 3.000000e+00, %8148
  %8168 = fmul fast float %8165, %8167
  %8169 = fmul fast float %8148, 3.000000e+00
  %8170 = fmul fast float %8166, 3.000000e+00
  %8171 = fmul fast float %8165, 6.000000e+00
  %8172 = fsub fast float %8170, %8171
  %8173 = fadd fast float %8172, 4.000000e+00
  %8174 = fmul fast float %8173, 0x3FC5555560000000
  %8175 = fmul fast float %8166, -3.000000e+00
  %8176 = fadd fast float %8165, %8148
  %8177 = fmul fast float %8176, 3.000000e+00
  %8178 = fadd fast float %8175, 1.000000e+00
  %8179 = fadd fast float %8178, %8177
  %8180 = fmul fast float %8166, 0x3FC5555560000000
  %8181 = fadd fast float %8147, 1.000000e+00
  %8182 = fsub fast float 1.000000e+00, %8153
  %8183 = fadd fast float %8182, %8152
  %8184 = fadd fast float %8183, %8157
  %8185 = fmul fast float %8184, 0x3FC5555560000000
  %8186 = fdiv fast float %8158, %8185
  %8187 = fsub fast float %8181, %8186
  %8188 = fsub fast float 1.000000e+00, %8147
  %8189 = fadd fast float %8163, %8150
  %8190 = fmul fast float %8189, 0x3FC5555560000000
  %8191 = fdiv fast float %8164, %8190
  %8192 = fadd fast float %8188, %8191
  %8193 = fadd fast float %8148, 1.000000e+00
  %8194 = fsub fast float 1.000000e+00, %8169
  %8195 = fadd fast float %8194, %8168
  %8196 = fadd fast float %8195, %8173
  %8197 = fmul fast float %8196, 0x3FC5555560000000
  %8198 = fdiv fast float %8174, %8197
  %8199 = fsub fast float %8193, %8198
  %8200 = fsub fast float 1.000000e+00, %8148
  %8201 = fadd fast float %8179, %8166
  %8202 = fmul fast float %8201, 0x3FC5555560000000
  %8203 = fdiv fast float %8180, %8202
  %8204 = fadd fast float %8203, %8200
  %8205 = fmul fast float %8187, %8141
  %8206 = fsub fast float %8068, %8205
  %8207 = fmul fast float %8192, %8141
  %8208 = fadd fast float %8207, %8068
  %8209 = fmul fast float %8204, %8142
  %8210 = fadd fast float %8209, %8069
  %8211 = fmul fast float %8199, %8142
  %8212 = fsub fast float %8069, %8211
  %8213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8206, float %8212, float %8130, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8214 = extractvalue %dx.types.ResRet.f32 %8213, 0
  %8215 = extractvalue %dx.types.ResRet.f32 %8213, 1
  %8216 = extractvalue %dx.types.ResRet.f32 %8213, 2
  %8217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8208, float %8212, float %8130, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8218 = extractvalue %dx.types.ResRet.f32 %8217, 0
  %8219 = extractvalue %dx.types.ResRet.f32 %8217, 1
  %8220 = extractvalue %dx.types.ResRet.f32 %8217, 2
  %8221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8206, float %8210, float %8130, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8222 = extractvalue %dx.types.ResRet.f32 %8221, 0
  %8223 = extractvalue %dx.types.ResRet.f32 %8221, 1
  %8224 = extractvalue %dx.types.ResRet.f32 %8221, 2
  %8225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8208, float %8210, float %8130, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8226 = extractvalue %dx.types.ResRet.f32 %8225, 0
  %8227 = extractvalue %dx.types.ResRet.f32 %8225, 1
  %8228 = extractvalue %dx.types.ResRet.f32 %8225, 2
  %8229 = fsub fast float %8222, %8214
  %8230 = fsub fast float %8223, %8215
  %8231 = fsub fast float %8224, %8216
  %8232 = fmul fast float %8229, %8202
  %8233 = fmul fast float %8230, %8202
  %8234 = fmul fast float %8231, %8202
  %8235 = fadd fast float %8232, %8214
  %8236 = fadd fast float %8233, %8215
  %8237 = fadd fast float %8234, %8216
  %8238 = fsub fast float %8226, %8218
  %8239 = fsub fast float %8227, %8219
  %8240 = fsub fast float %8228, %8220
  %8241 = fmul fast float %8238, %8202
  %8242 = fmul fast float %8239, %8202
  %8243 = fmul fast float %8240, %8202
  %8244 = fsub fast float %8218, %8235
  %8245 = fadd fast float %8244, %8241
  %8246 = fsub fast float %8219, %8236
  %8247 = fadd fast float %8246, %8242
  %8248 = fsub fast float %8220, %8237
  %8249 = fadd fast float %8248, %8243
  %8250 = fmul fast float %8245, %8190
  %8251 = fmul fast float %8247, %8190
  %8252 = fmul fast float %8249, %8190
  %8253 = fadd fast float %8250, %8235
  %8254 = fadd fast float %8251, %8236
  %8255 = fadd fast float %8252, %8237
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 1
  %8258 = fmul fast float %8253, %8257
  %8259 = fmul fast float %8254, %8257
  %8260 = fmul fast float %8255, %8257
  br label %8261

; <label>:8261                                    ; preds = %8093, %8062
  %8262 = phi float [ %8132, %8093 ], [ 1.000000e+00, %8062 ]
  %8263 = phi float [ %8133, %8093 ], [ 1.000000e+00, %8062 ]
  %8264 = phi float [ %8134, %8093 ], [ 1.000000e+00, %8062 ]
  %8265 = phi float [ %8258, %8093 ], [ 0.000000e+00, %8062 ]
  %8266 = phi float [ %8259, %8093 ], [ 0.000000e+00, %8062 ]
  %8267 = phi float [ %8260, %8093 ], [ 0.000000e+00, %8062 ]
  %8268 = fmul fast float %8265, %8039
  %8269 = fmul fast float %8266, %8039
  %8270 = fmul fast float %8267, %8039
  %8271 = call float @dx.op.dot3.f32(i32 55, float %8262, float %8263, float %8264, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8272 = call float @dx.op.dot3.f32(i32 55, float %8268, float %8269, float %8270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8273 = select i1 %214, float %8271, float %8262
  %8274 = select i1 %214, float %8271, float %8263
  %8275 = select i1 %214, float 1.000000e+00, float %8264
  %8276 = select i1 %214, float %8272, float %8268
  %8277 = select i1 %214, float 0.000000e+00, float %8269
  %8278 = select i1 %214, float 0.000000e+00, float %8270
  %8279 = fmul fast float %8273, %8052
  %8280 = fmul fast float %8274, %8053
  %8281 = fmul fast float %8275, %8054
  %8282 = fadd fast float %8279, %8276
  %8283 = fadd fast float %8280, %8277
  %8284 = fadd fast float %8278, %8281
  %8285 = fmul fast float %8273, %8026
  %8286 = fmul fast float %8274, %8027
  %8287 = fmul fast float %8275, %8028
  %8288 = fmul fast float %123, %8064
  %8289 = fmul fast float %125, %8065
  %8290 = fsub fast float 1.000000e+00, %8288
  %8291 = fsub fast float 1.000000e+00, %8289
  %8292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8293 = extractvalue %dx.types.CBufRet.f32 %8292, 0
  %8294 = extractvalue %dx.types.CBufRet.f32 %8292, 1
  %8295 = extractvalue %dx.types.CBufRet.f32 %8292, 2
  %8296 = fmul fast float %8290, %8293
  %8297 = fmul fast float %8290, %8294
  %8298 = fmul fast float %8290, %8295
  %8299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.f32 %8299, 0
  %8301 = extractvalue %dx.types.CBufRet.f32 %8299, 1
  %8302 = extractvalue %dx.types.CBufRet.f32 %8299, 2
  %8303 = fmul fast float %8291, %8300
  %8304 = fmul fast float %8291, %8301
  %8305 = fmul fast float %8291, %8302
  %8306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8307 = extractvalue %dx.types.CBufRet.f32 %8306, 0
  %8308 = extractvalue %dx.types.CBufRet.f32 %8306, 1
  %8309 = extractvalue %dx.types.CBufRet.f32 %8306, 2
  %8310 = fadd fast float %8303, %8307
  %8311 = fadd fast float %8310, %8296
  %8312 = fadd fast float %8304, %8308
  %8313 = fadd fast float %8312, %8297
  %8314 = fadd fast float %8305, %8309
  %8315 = fadd fast float %8314, %8298
  %8316 = fmul fast float %8311, %175
  %8317 = fmul fast float %8313, %175
  %8318 = fmul fast float %8315, %175
  br label %8319

; <label>:8319                                    ; preds = %8261, %8025
  %8320 = phi float [ %8316, %8261 ], [ %153, %8025 ]
  %8321 = phi float [ %8317, %8261 ], [ %154, %8025 ]
  %8322 = phi float [ %8318, %8261 ], [ %155, %8025 ]
  %8323 = phi float [ %175, %8261 ], [ %86, %8025 ]
  %8324 = phi float [ %8282, %8261 ], [ %8052, %8025 ]
  %8325 = phi float [ %8283, %8261 ], [ %8053, %8025 ]
  %8326 = phi float [ %8284, %8261 ], [ %8054, %8025 ]
  %8327 = phi float [ %8285, %8261 ], [ %8026, %8025 ]
  %8328 = phi float [ %8286, %8261 ], [ %8027, %8025 ]
  %8329 = phi float [ %8287, %8261 ], [ %8028, %8025 ]
  %8330 = phi float [ %8262, %8261 ], [ 1.000000e+00, %8025 ]
  br i1 %8061, label %9485, label %8331

; <label>:8331                                    ; preds = %8319
  %8332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8333 = extractvalue %dx.types.CBufRet.f32 %8332, 0
  %8334 = extractvalue %dx.types.CBufRet.f32 %8332, 1
  %8335 = extractvalue %dx.types.CBufRet.f32 %8332, 2
  %8336 = extractvalue %dx.types.CBufRet.f32 %8332, 3
  %8337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8338 = extractvalue %dx.types.CBufRet.f32 %8337, 0
  %8339 = extractvalue %dx.types.CBufRet.f32 %8337, 1
  %8340 = extractvalue %dx.types.CBufRet.f32 %8337, 2
  %8341 = extractvalue %dx.types.CBufRet.f32 %8337, 3
  %8342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8343 = extractvalue %dx.types.CBufRet.f32 %8342, 0
  %8344 = extractvalue %dx.types.CBufRet.f32 %8342, 1
  %8345 = extractvalue %dx.types.CBufRet.f32 %8342, 2
  %8346 = extractvalue %dx.types.CBufRet.f32 %8342, 3
  %8347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8348 = extractvalue %dx.types.CBufRet.f32 %8347, 0
  %8349 = extractvalue %dx.types.CBufRet.f32 %8347, 1
  %8350 = extractvalue %dx.types.CBufRet.f32 %8347, 2
  %8351 = extractvalue %dx.types.CBufRet.f32 %8347, 3
  %8352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8353 = extractvalue %dx.types.CBufRet.f32 %8352, 3
  %8354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8355 = extractvalue %dx.types.CBufRet.f32 %8354, 3
  %8356 = extractvalue %dx.types.CBufRet.f32 %8354, 0
  %8357 = extractvalue %dx.types.CBufRet.f32 %8354, 1
  %8358 = extractvalue %dx.types.CBufRet.f32 %8354, 2
  %8359 = fcmp fast olt float %8358, -5.000000e-01
  %8360 = call float @dx.op.dot3.f32(i32 55, float %8320, float %8321, float %8322, float %8320, float %8321, float %8322)  ; Dot3(ax,ay,az,bx,by,bz)
  %8361 = call float @dx.op.unary.f32(i32 25, float %8360)  ; Rsqrt(value)
  %8362 = fmul fast float %8361, %8360
  %8363 = fmul fast float %8361, %8320
  %8364 = fmul fast float %8361, %8321
  %8365 = fmul fast float %8361, %8322
  %8366 = fadd fast float %8362, %8336
  %8367 = call float @dx.op.dot3.f32(i32 55, float %8363, float %8364, float %8365, float %8333, float %8334, float %8335)  ; Dot3(ax,ay,az,bx,by,bz)
  %8368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8369 = extractvalue %dx.types.CBufRet.i32 %8368, 1
  %8370 = and i32 %8369, 1
  %8371 = icmp ne i32 %8370, 0
  %8372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8373 = extractvalue %dx.types.CBufRet.f32 %8372, 2
  %8374 = fcmp fast ogt float %8373, 0.000000e+00
  %8375 = and i1 %8371, %8374
  br i1 %8375, label %8376, label %8782, !dx.controlflow.hints !118

; <label>:8376                                    ; preds = %8331
  %8377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8378 = extractvalue %dx.types.CBufRet.f32 %8377, 3
  %8379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8380 = extractvalue %dx.types.CBufRet.f32 %8379, 2
  %8381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8382 = extractvalue %dx.types.CBufRet.f32 %8381, 2
  %8383 = fsub fast float %8380, %8382
  %8384 = and i32 %8369, 2
  %8385 = extractvalue %dx.types.CBufRet.i32 %8368, 0
  %8386 = call i32 @dx.op.binary.i32(i32 40, i32 %8385, i32 3)  ; UMin(a,b)
  %8387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.f32 %8387, 0
  %8389 = extractvalue %dx.types.CBufRet.f32 %8387, 1
  %8390 = extractvalue %dx.types.CBufRet.f32 %8381, 0
  %8391 = extractvalue %dx.types.CBufRet.f32 %8381, 1
  %8392 = fsub fast float %8388, %8390
  %8393 = fsub fast float %8389, %8391
  %8394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8395 = extractvalue %dx.types.CBufRet.f32 %8394, 0
  %8396 = fcmp fast ogt float %8395, 0.000000e+00
  %8397 = fsub fast float -0.000000e+00, %8392
  %8398 = fsub fast float -0.000000e+00, %8393
  %8399 = call float @dx.op.dot2.f32(i32 54, float %8363, float %8364, float %8363, float %8364)  ; Dot2(ax,ay,bx,by)
  %8400 = call float @dx.op.dot2.f32(i32 54, float %8363, float %8364, float %8397, float %8398)  ; Dot2(ax,ay,bx,by)
  %8401 = fmul fast float %8400, 2.000000e+00
  %8402 = call float @dx.op.dot2.f32(i32 54, float %8397, float %8398, float %8397, float %8398)  ; Dot2(ax,ay,bx,by)
  %8403 = fmul fast float %8395, %8395
  %8404 = fsub fast float %8402, %8403
  %8405 = fmul fast float %8401, %8401
  %8406 = fmul fast float %8399, 4.000000e+00
  %8407 = fmul fast float %8406, %8404
  %8408 = fsub fast float %8405, %8407
  %8409 = fcmp fast ogt float %8408, 0.000000e+00
  br i1 %8409, label %8410, label %8425

; <label>:8410                                    ; preds = %8376
  %8411 = fcmp fast ogt float %8401, 0.000000e+00
  %8412 = call float @dx.op.unary.f32(i32 24, float %8408)  ; Sqrt(value)
  %8413 = fsub fast float -0.000000e+00, %8412
  %8414 = select i1 %8411, float %8412, float %8413
  %8415 = fadd fast float %8414, %8401
  %8416 = fmul float %8415, -5.000000e-01
  %8417 = fdiv fast float %8416, %8399
  %8418 = call float @dx.op.binary.f32(i32 35, float %8417, float 0.000000e+00)  ; FMax(a,b)
  %8419 = call float @dx.op.binary.f32(i32 36, float %8362, float %8418)  ; FMin(a,b)
  %8420 = fdiv fast float %8404, %8416
  %8421 = call float @dx.op.binary.f32(i32 35, float %8420, float 0.000000e+00)  ; FMax(a,b)
  %8422 = call float @dx.op.binary.f32(i32 36, float %8362, float %8421)  ; FMin(a,b)
  %8423 = call float @dx.op.binary.f32(i32 36, float %8419, float %8422)  ; FMin(a,b)
  %8424 = call float @dx.op.binary.f32(i32 35, float %8419, float %8422)  ; FMax(a,b)
  br label %8425

; <label>:8425                                    ; preds = %8410, %8376
  %8426 = phi float [ %8424, %8410 ], [ -1.000000e+00, %8376 ]
  %8427 = phi float [ %8423, %8410 ], [ -1.000000e+00, %8376 ]
  %8428 = phi i1 [ true, %8410 ], [ false, %8376 ]
  %8429 = and i1 %8396, %8428
  br i1 %8429, label %8430, label %8432

; <label>:8430                                    ; preds = %8425
  %8431 = fcmp fast oeq float %8427, %8426
  br i1 %8431, label %8735, label %8433

; <label>:8432                                    ; preds = %8425
  br i1 %8396, label %8735, label %8433

; <label>:8433                                    ; preds = %8432, %8430
  %8434 = phi float [ %8362, %8432 ], [ %8426, %8430 ]
  %8435 = phi float [ 0.000000e+00, %8432 ], [ %8427, %8430 ]
  %8436 = icmp ne i32 %8384, 0
  %8437 = fmul fast float %8434, %8365
  %8438 = fadd fast float %8437, %8378
  %8439 = fmul fast float %8438, %8434
  %8440 = select i1 %8436, float 0.000000e+00, float %8439
  %8441 = fcmp fast oeq float %8365, 0.000000e+00
  %8442 = fdiv fast float %8383, %8365
  %8443 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8442)  ; FMax(a,b)
  %8444 = select i1 %8441, float %8434, float %8443
  %8445 = call float @dx.op.binary.f32(i32 36, float %8434, float %8444)  ; FMin(a,b)
  %8446 = fcmp fast ogt float %8365, 0.000000e+00
  %8447 = fcmp fast olt float %8383, 0.000000e+00
  br i1 %8446, label %8448, label %8505

; <label>:8448                                    ; preds = %8433
  %8449 = icmp eq i32 %8384, 0
  br i1 %8447, label %8450, label %8494

; <label>:8450                                    ; preds = %8448
  %8451 = select i1 %8449, float %8434, float 0.000000e+00
  %8452 = fsub fast float -0.000000e+00, %8451
  %8453 = call float @dx.op.unary.f32(i32 6, float %8452)  ; FAbs(value)
  %8454 = fmul fast float %8451, %8365
  %8455 = fadd fast float %8454, %8378
  %8456 = fmul fast float %8453, %8455
  %8457 = fsub fast float %8440, %8456
  %8458 = fsub fast float %8434, %8453
  %8459 = select i1 %8449, float %8458, float 0.000000e+00
  %8460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8461 = extractvalue %dx.types.CBufRet.f32 %8460, 0
  %8462 = extractvalue %dx.types.CBufRet.f32 %8460, 1
  %8463 = extractvalue %dx.types.CBufRet.f32 %8460, 2
  %8464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8465 = extractvalue %dx.types.CBufRet.f32 %8464, 0
  %8466 = extractvalue %dx.types.CBufRet.f32 %8464, 1
  %8467 = extractvalue %dx.types.CBufRet.f32 %8464, 2
  %8468 = extractvalue %dx.types.CBufRet.f32 %8464, 3
  %8469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8470 = extractvalue %dx.types.CBufRet.f32 %8469, 3
  %8471 = call float @dx.op.binary.f32(i32 36, float %8457, float %8470)  ; FMin(a,b)
  %8472 = fmul fast float %8468, %8459
  %8473 = call float @dx.op.unary.f32(i32 7, float %8472)  ; Saturate(value)
  %8474 = fsub fast float %8465, %8461
  %8475 = fsub fast float %8466, %8462
  %8476 = fsub fast float %8467, %8463
  %8477 = fmul fast float %8473, %8474
  %8478 = fmul fast float %8473, %8475
  %8479 = fmul fast float %8473, %8476
  %8480 = fadd fast float %8477, %8461
  %8481 = fadd fast float %8478, %8462
  %8482 = fadd fast float %8479, %8463
  %8483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8484 = extractvalue %dx.types.CBufRet.f32 %8483, 0
  %8485 = extractvalue %dx.types.CBufRet.f32 %8483, 1
  %8486 = fadd fast float %8485, %8484
  %8487 = call float @dx.op.unary.f32(i32 7, float %8486)  ; Saturate(value)
  %8488 = extractvalue %dx.types.CBufRet.f32 %8483, 2
  %8489 = extractvalue %dx.types.CBufRet.f32 %8483, 3
  %8490 = fadd fast float %8489, %8488
  %8491 = call float @dx.op.unary.f32(i32 7, float %8490)  ; Saturate(value)
  %8492 = fmul fast float %8487, %8471
  %8493 = fmul fast float %8492, %8491
  br label %8735

; <label>:8494                                    ; preds = %8448
  br i1 %8449, label %8495, label %8516

; <label>:8495                                    ; preds = %8494
  %8496 = call float @dx.op.binary.f32(i32 36, float %8445, float %8435)  ; FMin(a,b)
  %8497 = fsub fast float %8445, %8496
  %8498 = fsub fast float %8497, %8434
  %8499 = call float @dx.op.unary.f32(i32 6, float %8498)  ; FAbs(value)
  %8500 = fadd fast float %8497, %8434
  %8501 = fmul fast float %8500, %8365
  %8502 = fadd fast float %8501, %8378
  %8503 = fmul fast float %8502, %8499
  %8504 = fsub fast float %8440, %8503
  br label %8516

; <label>:8505                                    ; preds = %8433
  br i1 %8447, label %8506, label %8516

; <label>:8506                                    ; preds = %8505
  %8507 = call float @dx.op.binary.f32(i32 35, float %8435, float %8445)  ; FMax(a,b)
  %8508 = icmp eq i32 %8384, 0
  %8509 = select i1 %8508, float %8445, float 0.000000e+00
  %8510 = fsub fast float -0.000000e+00, %8509
  %8511 = call float @dx.op.unary.f32(i32 6, float %8510)  ; FAbs(value)
  %8512 = fmul fast float %8509, %8365
  %8513 = fadd fast float %8512, %8378
  %8514 = fmul fast float %8511, %8513
  %8515 = fsub fast float %8440, %8514
  br label %8516

; <label>:8516                                    ; preds = %8506, %8505, %8495, %8494
  %8517 = phi float [ %8435, %8494 ], [ %8435, %8495 ], [ %8507, %8506 ], [ %8435, %8505 ]
  %8518 = phi float [ 0.000000e+00, %8494 ], [ %8499, %8495 ], [ %8511, %8506 ], [ 0.000000e+00, %8505 ]
  %8519 = phi float [ %8440, %8494 ], [ %8504, %8495 ], [ %8515, %8506 ], [ %8440, %8505 ]
  %8520 = phi float [ %8445, %8494 ], [ %8445, %8495 ], [ %8434, %8506 ], [ %8434, %8505 ]
  %8521 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %8521, align 4, !tbaa !108, !noalias !119
  %8522 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %8522, align 4, !tbaa !108, !noalias !119
  %8523 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %8523, align 4, !tbaa !108, !noalias !119
  %8524 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %8524, align 4, !tbaa !108, !noalias !119
  %8525 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %8525, align 4, !tbaa !108, !noalias !119
  %8526 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %8526, align 4, !tbaa !108, !noalias !119
  %8527 = icmp sgt i32 %8386, 0
  br i1 %8527, label %8528, label %8589

; <label>:8528                                    ; preds = %8516
  br label %8529

; <label>:8529                                    ; preds = %8578, %8528
  %8530 = phi i32 [ %8579, %8578 ], [ 0, %8528 ]
  %8531 = phi i32 [ %8580, %8578 ], [ 0, %8528 ]
  %8532 = add nuw i32 %8531, 171
  %8533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %8532)  ; CBufferLoadLegacy(handle,regIndex)
  %8534 = extractvalue %dx.types.CBufRet.f32 %8533, 0
  %8535 = extractvalue %dx.types.CBufRet.f32 %8533, 1
  %8536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8537 = extractvalue %dx.types.CBufRet.f32 %8536, 0
  %8538 = extractvalue %dx.types.CBufRet.f32 %8536, 1
  %8539 = fsub fast float %8534, %8537
  %8540 = fsub fast float %8535, %8538
  %8541 = extractvalue %dx.types.CBufRet.f32 %8533, 2
  %8542 = fsub fast float -0.000000e+00, %8539
  %8543 = fsub fast float -0.000000e+00, %8540
  %8544 = call float @dx.op.dot2.f32(i32 54, float %8363, float %8364, float %8542, float %8543)  ; Dot2(ax,ay,bx,by)
  %8545 = fmul fast float %8544, 2.000000e+00
  %8546 = call float @dx.op.dot2.f32(i32 54, float %8542, float %8543, float %8542, float %8543)  ; Dot2(ax,ay,bx,by)
  %8547 = fmul fast float %8541, %8541
  %8548 = fsub fast float %8546, %8547
  %8549 = fmul fast float %8545, %8545
  %8550 = fmul fast float %8406, %8548
  %8551 = fsub fast float %8549, %8550
  %8552 = fcmp fast ogt float %8551, 0.000000e+00
  br i1 %8552, label %8553, label %8568

; <label>:8553                                    ; preds = %8529
  %8554 = fcmp fast ogt float %8545, 0.000000e+00
  %8555 = call float @dx.op.unary.f32(i32 24, float %8551)  ; Sqrt(value)
  %8556 = fsub fast float -0.000000e+00, %8555
  %8557 = select i1 %8554, float %8555, float %8556
  %8558 = fadd fast float %8557, %8545
  %8559 = fmul float %8558, -5.000000e-01
  %8560 = fdiv fast float %8559, %8399
  %8561 = call float @dx.op.binary.f32(i32 35, float %8560, float 0.000000e+00)  ; FMax(a,b)
  %8562 = call float @dx.op.binary.f32(i32 36, float %8434, float %8561)  ; FMin(a,b)
  %8563 = fdiv fast float %8548, %8559
  %8564 = call float @dx.op.binary.f32(i32 35, float %8563, float 0.000000e+00)  ; FMax(a,b)
  %8565 = call float @dx.op.binary.f32(i32 36, float %8434, float %8564)  ; FMin(a,b)
  %8566 = call float @dx.op.binary.f32(i32 36, float %8562, float %8565)  ; FMin(a,b)
  %8567 = call float @dx.op.binary.f32(i32 35, float %8562, float %8565)  ; FMax(a,b)
  br label %8568

; <label>:8568                                    ; preds = %8553, %8529
  %8569 = phi float [ %8567, %8553 ], [ -1.000000e+00, %8529 ]
  %8570 = phi float [ %8566, %8553 ], [ -1.000000e+00, %8529 ]
  %8571 = phi i1 [ true, %8553 ], [ false, %8529 ]
  br i1 %8571, label %8572, label %8578

; <label>:8572                                    ; preds = %8568
  %8573 = call float @dx.op.binary.f32(i32 35, float %8517, float %8570)  ; FMax(a,b)
  %8574 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8531
  store float %8573, float* %8574, align 4, !tbaa !108, !noalias !119
  %8575 = call float @dx.op.binary.f32(i32 35, float %8517, float %8569)  ; FMax(a,b)
  %8576 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8531
  store float %8575, float* %8576, align 4, !tbaa !108, !noalias !119
  %8577 = add nsw i32 %8530, 1
  br label %8578

; <label>:8578                                    ; preds = %8572, %8568
  %8579 = phi i32 [ %8577, %8572 ], [ %8530, %8568 ]
  %8580 = add nuw nsw i32 %8531, 1
  %8581 = icmp eq i32 %8580, %8386
  br i1 %8581, label %8582, label %8529

; <label>:8582                                    ; preds = %8578
  %8583 = load float, float* %8523, align 4, !tbaa !108, !alias.scope !135, !noalias !138
  %8584 = load float, float* %8522, align 4, !tbaa !108, !alias.scope !141, !noalias !142
  %8585 = load float, float* %8521, align 4, !tbaa !108, !alias.scope !143, !noalias !144
  %8586 = load float, float* %8526, align 4, !tbaa !108, !alias.scope !145, !noalias !148
  %8587 = load float, float* %8525, align 4, !tbaa !108, !alias.scope !151, !noalias !152
  %8588 = load float, float* %8524, align 4, !tbaa !108, !alias.scope !153, !noalias !154
  br label %8589

; <label>:8589                                    ; preds = %8582, %8516
  %8590 = phi float [ -1.000000e+00, %8516 ], [ %8588, %8582 ]
  %8591 = phi float [ -1.000000e+00, %8516 ], [ %8587, %8582 ]
  %8592 = phi float [ -1.000000e+00, %8516 ], [ %8586, %8582 ]
  %8593 = phi float [ -1.000000e+00, %8516 ], [ %8585, %8582 ]
  %8594 = phi float [ -1.000000e+00, %8516 ], [ %8584, %8582 ]
  %8595 = phi float [ -1.000000e+00, %8516 ], [ %8583, %8582 ]
  %8596 = phi i32 [ 0, %8516 ], [ %8579, %8582 ]
  %8597 = call float @dx.op.binary.f32(i32 36, float %8594, float %8595)  ; FMin(a,b)
  %8598 = call float @dx.op.binary.f32(i32 36, float %8593, float %8597)  ; FMin(a,b)
  %8599 = call float @dx.op.binary.f32(i32 35, float %8593, float %8594)  ; FMax(a,b)
  %8600 = call float @dx.op.binary.f32(i32 36, float %8599, float %8595)  ; FMin(a,b)
  %8601 = call float @dx.op.binary.f32(i32 36, float %8593, float %8594)  ; FMin(a,b)
  %8602 = call float @dx.op.binary.f32(i32 35, float %8601, float %8600)  ; FMax(a,b)
  %8603 = call float @dx.op.binary.f32(i32 35, float %8594, float %8595)  ; FMax(a,b)
  %8604 = call float @dx.op.binary.f32(i32 35, float %8593, float %8603)  ; FMax(a,b)
  store float %8598, float* %8521, align 4, !tbaa !108, !alias.scope !143, !noalias !144
  store float %8602, float* %8522, align 4, !tbaa !108, !alias.scope !141, !noalias !142
  store float %8604, float* %8523, align 4, !tbaa !108, !alias.scope !135, !noalias !138
  %8605 = call float @dx.op.binary.f32(i32 36, float %8591, float %8592)  ; FMin(a,b)
  %8606 = call float @dx.op.binary.f32(i32 36, float %8590, float %8605)  ; FMin(a,b)
  %8607 = call float @dx.op.binary.f32(i32 35, float %8590, float %8591)  ; FMax(a,b)
  %8608 = call float @dx.op.binary.f32(i32 36, float %8607, float %8592)  ; FMin(a,b)
  %8609 = call float @dx.op.binary.f32(i32 36, float %8590, float %8591)  ; FMin(a,b)
  %8610 = call float @dx.op.binary.f32(i32 35, float %8609, float %8608)  ; FMax(a,b)
  %8611 = call float @dx.op.binary.f32(i32 35, float %8591, float %8592)  ; FMax(a,b)
  %8612 = call float @dx.op.binary.f32(i32 35, float %8590, float %8611)  ; FMax(a,b)
  store float %8606, float* %8524, align 4, !tbaa !108, !alias.scope !153, !noalias !154
  store float %8610, float* %8525, align 4, !tbaa !108, !alias.scope !151, !noalias !152
  store float %8612, float* %8526, align 4, !tbaa !108, !alias.scope !145, !noalias !148
  %8613 = sub nsw i32 3, %8596
  %8614 = icmp sgt i32 %8613, 2
  br i1 %8614, label %8615, label %8653

; <label>:8615                                    ; preds = %8589
  %8616 = icmp eq i32 %8384, 0
  %8617 = fsub fast float %8434, %8518
  %8618 = select i1 %8616, float %8617, float %8518
  %8619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8620 = extractvalue %dx.types.CBufRet.f32 %8619, 0
  %8621 = extractvalue %dx.types.CBufRet.f32 %8619, 1
  %8622 = extractvalue %dx.types.CBufRet.f32 %8619, 2
  %8623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8624 = extractvalue %dx.types.CBufRet.f32 %8623, 0
  %8625 = extractvalue %dx.types.CBufRet.f32 %8623, 1
  %8626 = extractvalue %dx.types.CBufRet.f32 %8623, 2
  %8627 = extractvalue %dx.types.CBufRet.f32 %8623, 3
  %8628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8629 = extractvalue %dx.types.CBufRet.f32 %8628, 3
  %8630 = call float @dx.op.binary.f32(i32 36, float %8519, float %8629)  ; FMin(a,b)
  %8631 = fmul fast float %8627, %8618
  %8632 = call float @dx.op.unary.f32(i32 7, float %8631)  ; Saturate(value)
  %8633 = fsub fast float %8624, %8620
  %8634 = fsub fast float %8625, %8621
  %8635 = fsub fast float %8626, %8622
  %8636 = fmul fast float %8632, %8633
  %8637 = fmul fast float %8632, %8634
  %8638 = fmul fast float %8632, %8635
  %8639 = fadd fast float %8636, %8620
  %8640 = fadd fast float %8637, %8621
  %8641 = fadd fast float %8638, %8622
  %8642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8643 = extractvalue %dx.types.CBufRet.f32 %8642, 0
  %8644 = extractvalue %dx.types.CBufRet.f32 %8642, 1
  %8645 = fadd fast float %8644, %8643
  %8646 = call float @dx.op.unary.f32(i32 7, float %8645)  ; Saturate(value)
  %8647 = extractvalue %dx.types.CBufRet.f32 %8642, 2
  %8648 = extractvalue %dx.types.CBufRet.f32 %8642, 3
  %8649 = fadd fast float %8648, %8647
  %8650 = call float @dx.op.unary.f32(i32 7, float %8649)  ; Saturate(value)
  %8651 = fmul fast float %8646, %8630
  %8652 = fmul fast float %8651, %8650
  br label %8735

; <label>:8653                                    ; preds = %8589
  %8654 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8613
  %8655 = load float, float* %8654, align 4, !tbaa !108, !noalias !119
  %8656 = fcmp fast olt float %8655, %8520
  %8657 = icmp sgt i32 %8596, 0
  %8658 = and i1 %8657, %8656
  br i1 %8658, label %8659, label %8696

; <label>:8659                                    ; preds = %8653
  br label %8660

; <label>:8660                                    ; preds = %8689, %8659
  %8661 = phi float [ %8690, %8689 ], [ %8518, %8659 ]
  %8662 = phi float [ %8691, %8689 ], [ %8519, %8659 ]
  %8663 = phi float [ %8671, %8689 ], [ %8655, %8659 ]
  %8664 = phi i32 [ %8668, %8689 ], [ %8613, %8659 ]
  %8665 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8664
  %8666 = load float, float* %8665, align 4, !tbaa !108, !noalias !119
  %8667 = icmp slt i32 %8664, 2
  %8668 = add nsw i32 %8664, 1
  %8669 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8668
  %8670 = load float, float* %8669, align 4, !tbaa !108, !noalias !119
  %8671 = select i1 %8667, float %8670, float %8434
  %8672 = call float @dx.op.binary.f32(i32 36, float %8671, float %8666)  ; FMin(a,b)
  %8673 = call float @dx.op.binary.f32(i32 36, float %8520, float %8672)  ; FMin(a,b)
  %8674 = icmp eq i32 %8384, 0
  %8675 = fadd fast float %8673, %8663
  %8676 = fmul fast float %8675, %8365
  %8677 = fadd fast float %8676, %8378
  br i1 %8674, label %8683, label %8678

; <label>:8678                                    ; preds = %8660
  %8679 = fsub fast float %8673, %8663
  %8680 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8679)  ; FMax(a,b)
  %8681 = fmul fast float %8680, %8677
  %8682 = fadd fast float %8681, %8662
  br label %8689

; <label>:8683                                    ; preds = %8660
  %8684 = fsub fast float %8663, %8673
  %8685 = call float @dx.op.unary.f32(i32 6, float %8684)  ; FAbs(value)
  %8686 = fadd fast float %8685, %8661
  %8687 = fmul fast float %8685, %8677
  %8688 = fsub fast float %8662, %8687
  br label %8689

; <label>:8689                                    ; preds = %8683, %8678
  %8690 = phi float [ %8680, %8678 ], [ %8686, %8683 ]
  %8691 = phi float [ %8682, %8678 ], [ %8688, %8683 ]
  %8692 = fcmp fast olt float %8671, %8520
  %8693 = icmp slt i32 %8668, 3
  %8694 = and i1 %8693, %8692
  br i1 %8694, label %8660, label %8695

; <label>:8695                                    ; preds = %8689
  br label %8696

; <label>:8696                                    ; preds = %8695, %8653
  %8697 = phi float [ %8518, %8653 ], [ %8690, %8695 ]
  %8698 = phi float [ %8519, %8653 ], [ %8691, %8695 ]
  %8699 = fsub fast float %8434, %8697
  %8700 = select i1 %8436, float %8697, float %8699
  %8701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8702 = extractvalue %dx.types.CBufRet.f32 %8701, 0
  %8703 = extractvalue %dx.types.CBufRet.f32 %8701, 1
  %8704 = extractvalue %dx.types.CBufRet.f32 %8701, 2
  %8705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8706 = extractvalue %dx.types.CBufRet.f32 %8705, 0
  %8707 = extractvalue %dx.types.CBufRet.f32 %8705, 1
  %8708 = extractvalue %dx.types.CBufRet.f32 %8705, 2
  %8709 = extractvalue %dx.types.CBufRet.f32 %8705, 3
  %8710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8711 = extractvalue %dx.types.CBufRet.f32 %8710, 3
  %8712 = call float @dx.op.binary.f32(i32 36, float %8698, float %8711)  ; FMin(a,b)
  %8713 = fmul fast float %8709, %8700
  %8714 = call float @dx.op.unary.f32(i32 7, float %8713)  ; Saturate(value)
  %8715 = fsub fast float %8706, %8702
  %8716 = fsub fast float %8707, %8703
  %8717 = fsub fast float %8708, %8704
  %8718 = fmul fast float %8714, %8715
  %8719 = fmul fast float %8714, %8716
  %8720 = fmul fast float %8714, %8717
  %8721 = fadd fast float %8718, %8702
  %8722 = fadd fast float %8719, %8703
  %8723 = fadd fast float %8720, %8704
  %8724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8725 = extractvalue %dx.types.CBufRet.f32 %8724, 0
  %8726 = extractvalue %dx.types.CBufRet.f32 %8724, 1
  %8727 = fadd fast float %8726, %8725
  %8728 = call float @dx.op.unary.f32(i32 7, float %8727)  ; Saturate(value)
  %8729 = extractvalue %dx.types.CBufRet.f32 %8724, 2
  %8730 = extractvalue %dx.types.CBufRet.f32 %8724, 3
  %8731 = fadd fast float %8730, %8729
  %8732 = call float @dx.op.unary.f32(i32 7, float %8731)  ; Saturate(value)
  %8733 = fmul fast float %8728, %8712
  %8734 = fmul fast float %8733, %8732
  br label %8735

; <label>:8735                                    ; preds = %8696, %8615, %8450, %8432, %8430
  %8736 = phi float [ %8459, %8450 ], [ %8618, %8615 ], [ %8700, %8696 ], [ 0.000000e+00, %8430 ], [ 0.000000e+00, %8432 ]
  %8737 = phi float [ %8493, %8450 ], [ %8652, %8615 ], [ %8734, %8696 ], [ 0.000000e+00, %8430 ], [ 0.000000e+00, %8432 ]
  %8738 = phi float [ %8480, %8450 ], [ %8639, %8615 ], [ %8721, %8696 ], [ 0.000000e+00, %8430 ], [ 0.000000e+00, %8432 ]
  %8739 = phi float [ %8481, %8450 ], [ %8640, %8615 ], [ %8722, %8696 ], [ 0.000000e+00, %8430 ], [ 0.000000e+00, %8432 ]
  %8740 = phi float [ %8482, %8450 ], [ %8641, %8615 ], [ %8723, %8696 ], [ 0.000000e+00, %8430 ], [ 0.000000e+00, %8432 ]
  %8741 = fmul fast float %8373, %8737
  %8742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8743 = extractvalue %dx.types.CBufRet.f32 %8742, 2
  %8744 = fsub fast float %8380, %8743
  %8745 = fcmp fast olt float %8741, -2.000000e+01
  %8746 = call float @dx.op.unary.f32(i32 21, float %8741)  ; Exp(value)
  %8747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8748 = extractvalue %dx.types.CBufRet.f32 %8747, 2
  %8749 = extractvalue %dx.types.CBufRet.f32 %8747, 3
  %8750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8751 = extractvalue %dx.types.CBufRet.f32 %8750, 2
  %8752 = fmul fast float %8749, %8744
  %8753 = call float @dx.op.unary.f32(i32 7, float %8752)  ; Saturate(value)
  %8754 = fsub fast float 1.000000e+00, %8753
  %8755 = fmul fast float %8365, 5.000000e-01
  %8756 = fadd fast float %8755, 5.000000e-01
  %8757 = call float @dx.op.unary.f32(i32 7, float %8756)  ; Saturate(value)
  %8758 = fsub fast float 1.000000e+00, %8757
  %8759 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8754)  ; FMax(a,b)
  %8760 = fdiv fast float %8758, %8759
  %8761 = fsub fast float %8744, %8322
  %8762 = call float @dx.op.unary.f32(i32 6, float %8761)  ; FAbs(value)
  %8763 = fmul fast float %8762, %8748
  %8764 = call float @dx.op.unary.f32(i32 7, float %8760)  ; Saturate(value)
  %8765 = fsub fast float 1.000000e+00, %8763
  %8766 = fmul fast float %8765, %8764
  %8767 = fadd fast float %8766, %8763
  %8768 = fmul fast float %8751, %8744
  %8769 = call float @dx.op.unary.f32(i32 7, float %8768)  ; Saturate(value)
  %8770 = fsub fast float 1.000000e+00, %8767
  %8771 = fmul fast float %8770, %8769
  %8772 = fadd fast float %8771, %8767
  %8773 = call float @dx.op.unary.f32(i32 7, float %8772)  ; Saturate(value)
  %8774 = fadd fast float %8746, -1.000000e+00
  %8775 = select i1 %8745, float -1.000000e+00, float %8774
  %8776 = fmul fast float %8773, %8775
  %8777 = fadd fast float %8776, 1.000000e+00
  %8778 = fsub fast float -0.000000e+00, %8776
  %8779 = fmul fast float %8738, %8778
  %8780 = fmul fast float %8739, %8778
  %8781 = fmul fast float %8740, %8778
  br label %8782

; <label>:8782                                    ; preds = %8735, %8331
  %8783 = phi float [ %8736, %8735 ], [ 0.000000e+00, %8331 ]
  %8784 = phi float [ %8777, %8735 ], [ 1.000000e+00, %8331 ]
  %8785 = phi float [ %8779, %8735 ], [ 0.000000e+00, %8331 ]
  %8786 = phi float [ %8780, %8735 ], [ 0.000000e+00, %8331 ]
  %8787 = phi float [ %8781, %8735 ], [ 0.000000e+00, %8331 ]
  %8788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8789 = extractvalue %dx.types.CBufRet.f32 %8788, 1
  %8790 = fsub fast float 1.000000e+00, %8784
  %8791 = fmul fast float %8790, %8366
  %8792 = fmul fast float %8791, %8789
  %8793 = fsub fast float %8366, %8792
  br i1 %8359, label %8794, label %8823, !dx.controlflow.hints !155

; <label>:8794                                    ; preds = %8782
  %8795 = fmul fast float %8367, %8356
  %8796 = fadd fast float %8795, %8357
  %8797 = call float @dx.op.unary.f32(i32 7, float %8796)  ; Saturate(value)
  %8798 = fmul fast float %8338, %8793
  %8799 = fsub fast float -0.000000e+00, %8798
  %8800 = fmul fast float %8339, %8793
  %8801 = fsub fast float -0.000000e+00, %8800
  %8802 = call float @dx.op.unary.f32(i32 21, float %8799)  ; Exp(value)
  %8803 = call float @dx.op.unary.f32(i32 21, float %8801)  ; Exp(value)
  %8804 = call float @dx.op.binary.f32(i32 35, float %8346, float %8802)  ; FMax(a,b)
  %8805 = call float @dx.op.binary.f32(i32 35, float %8346, float %8803)  ; FMax(a,b)
  %8806 = fsub fast float %8805, %8804
  %8807 = fmul fast float %8806, %8797
  %8808 = fadd fast float %8807, %8804
  %8809 = call float @dx.op.unary.f32(i32 7, float %8808)  ; Saturate(value)
  %8810 = fsub fast float %8343, %8348
  %8811 = fsub fast float %8344, %8349
  %8812 = fsub fast float %8345, %8350
  %8813 = fmul fast float %8797, %8810
  %8814 = fmul fast float %8797, %8811
  %8815 = fmul fast float %8797, %8812
  %8816 = fadd fast float %8813, %8348
  %8817 = fadd fast float %8814, %8349
  %8818 = fadd fast float %8815, %8350
  %8819 = fsub fast float 1.000000e+00, %8809
  %8820 = fmul fast float %8819, %8816
  %8821 = fmul fast float %8819, %8817
  %8822 = fmul fast float %8819, %8818
  br label %8882

; <label>:8823                                    ; preds = %8782
  %8824 = fmul fast float %8793, %8355
  %8825 = call float @dx.op.unary.f32(i32 7, float %8824)  ; Saturate(value)
  %8826 = fsub fast float 2.000000e+00, %8825
  %8827 = fmul fast float %8825, 9.921875e-01
  %8828 = fmul fast float %8827, %8826
  %8829 = fadd fast float %8828, 3.906250e-03
  %8830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %8829, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8831 = extractvalue %dx.types.ResRet.f32 %8830, 0
  %8832 = fsub fast float %8825, %8831
  %8833 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8832)  ; FMax(a,b)
  %8834 = fmul fast float %8341, %8322
  %8835 = call float @dx.op.unary.f32(i32 6, float %8834)  ; FAbs(value)
  %8836 = fcmp fast ogt float %8835, 0x3EB0C6F7A0000000
  br i1 %8836, label %8837, label %8843, !dx.controlflow.hints !156

; <label>:8837                                    ; preds = %8823
  %8838 = fmul fast float %8834, 0xBFF7154760000000
  %8839 = call float @dx.op.unary.f32(i32 21, float %8838)  ; Exp(value)
  %8840 = fsub fast float 1.000000e+00, %8839
  %8841 = fdiv fast float %8840, %8834
  %8842 = fmul fast float %8841, %8351
  br label %8843

; <label>:8843                                    ; preds = %8837, %8823
  %8844 = phi float [ %8842, %8837 ], [ %8351, %8823 ]
  %8845 = fadd fast float %8844, %8353
  %8846 = fmul fast float %8845, %8833
  %8847 = fmul fast float %8338, %8846
  %8848 = fsub fast float -0.000000e+00, %8847
  %8849 = fmul fast float %8339, %8846
  %8850 = fsub fast float -0.000000e+00, %8849
  %8851 = fmul fast float %8340, %8846
  %8852 = fsub fast float -0.000000e+00, %8851
  %8853 = call float @dx.op.unary.f32(i32 21, float %8848)  ; Exp(value)
  %8854 = call float @dx.op.unary.f32(i32 21, float %8850)  ; Exp(value)
  %8855 = call float @dx.op.unary.f32(i32 21, float %8852)  ; Exp(value)
  %8856 = fmul fast float %8367, %8367
  %8857 = fadd fast float %8856, 1.000000e+00
  %8858 = fmul fast float %8857, 0x3FAE8EC8A0000000
  %8859 = fmul fast float %8858, %8348
  %8860 = fmul fast float %8858, %8349
  %8861 = fmul fast float %8858, %8350
  %8862 = fmul fast float %8367, %8346
  %8863 = fsub fast float 1.000000e+00, %8862
  %8864 = fmul fast float %8346, %8346
  %8865 = fsub fast float 1.000000e+00, %8864
  %8866 = fmul fast float %8865, 0x3FB45F3060000000
  %8867 = fmul fast float %8863, %8863
  %8868 = fdiv fast float 1.000000e+00, %8867
  %8869 = fmul fast float %8866, %8868
  %8870 = fmul fast float %8869, %8343
  %8871 = fmul fast float %8869, %8344
  %8872 = fmul fast float %8869, %8345
  %8873 = fadd fast float %8870, %8859
  %8874 = fadd fast float %8871, %8860
  %8875 = fadd fast float %8872, %8861
  %8876 = fsub fast float 1.000000e+00, %8853
  %8877 = fsub fast float 1.000000e+00, %8854
  %8878 = fsub fast float 1.000000e+00, %8855
  %8879 = fmul fast float %8873, %8876
  %8880 = fmul fast float %8874, %8877
  %8881 = fmul fast float %8875, %8878
  br label %8882

; <label>:8882                                    ; preds = %8843, %8794
  %8883 = phi float [ %8820, %8794 ], [ %8879, %8843 ]
  %8884 = phi float [ %8821, %8794 ], [ %8880, %8843 ]
  %8885 = phi float [ %8822, %8794 ], [ %8881, %8843 ]
  %8886 = phi float [ %8809, %8794 ], [ %8853, %8843 ]
  %8887 = phi float [ %8809, %8794 ], [ %8854, %8843 ]
  %8888 = phi float [ %8809, %8794 ], [ %8855, %8843 ]
  br i1 %8375, label %8889, label %9087, !dx.controlflow.hints !157

; <label>:8889                                    ; preds = %8882
  %8890 = extractvalue %dx.types.CBufRet.f32 %8788, 0
  %8891 = fmul fast float %8890, %8790
  %8892 = fsub fast float %8785, %8883
  %8893 = fsub fast float %8786, %8884
  %8894 = fsub fast float %8787, %8885
  %8895 = fmul fast float %8891, %8892
  %8896 = fmul fast float %8891, %8893
  %8897 = fmul fast float %8891, %8894
  %8898 = fadd fast float %8895, %8883
  %8899 = fadd fast float %8896, %8884
  %8900 = fadd fast float %8897, %8885
  %8901 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8886)  ; FMax(a,b)
  %8902 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8887)  ; FMax(a,b)
  %8903 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8888)  ; FMax(a,b)
  %8904 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8784)  ; FMax(a,b)
  %8905 = call float @dx.op.binary.f32(i32 35, float %8783, float %8793)  ; FMax(a,b)
  %8906 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8905)  ; FMax(a,b)
  %8907 = fdiv fast float %8783, %8906
  %8908 = call float @dx.op.unary.f32(i32 7, float %8907)  ; Saturate(value)
  %8909 = fdiv fast float %8793, %8906
  %8910 = call float @dx.op.unary.f32(i32 7, float %8909)  ; Saturate(value)
  %8911 = fcmp fast une float %8904, 1.000000e+00
  br i1 %8911, label %8912, label %8925, !dx.controlflow.hints !158

; <label>:8912                                    ; preds = %8889
  %8913 = call float @dx.op.unary.f32(i32 23, float %8904)  ; Log(value)
  %8914 = fmul fast float %8913, 0x3FE62E4300000000
  %8915 = fmul fast float %8785, %8914
  %8916 = fsub fast float -0.000000e+00, %8915
  %8917 = fmul fast float %8786, %8914
  %8918 = fsub fast float -0.000000e+00, %8917
  %8919 = fmul fast float %8787, %8914
  %8920 = fsub fast float -0.000000e+00, %8919
  %8921 = fsub fast float 1.000000e+00, %8904
  %8922 = fdiv fast float %8916, %8921
  %8923 = fdiv fast float %8918, %8921
  %8924 = fdiv fast float %8920, %8921
  br label %8925

; <label>:8925                                    ; preds = %8912, %8889
  %8926 = phi float [ %8922, %8912 ], [ %8785, %8889 ]
  %8927 = phi float [ %8923, %8912 ], [ %8786, %8889 ]
  %8928 = phi float [ %8924, %8912 ], [ %8787, %8889 ]
  %8929 = phi float [ %8914, %8912 ], [ 0.000000e+00, %8889 ]
  %8930 = fcmp fast une float %8901, 1.000000e+00
  br i1 %8930, label %8931, label %8938, !dx.controlflow.hints !159

; <label>:8931                                    ; preds = %8925
  %8932 = call float @dx.op.unary.f32(i32 23, float %8901)  ; Log(value)
  %8933 = fmul fast float %8932, 0x3FE62E4300000000
  %8934 = fmul fast float %8898, %8933
  %8935 = fsub fast float -0.000000e+00, %8934
  %8936 = fsub fast float 1.000000e+00, %8901
  %8937 = fdiv fast float %8935, %8936
  br label %8938

; <label>:8938                                    ; preds = %8931, %8925
  %8939 = phi float [ %8937, %8931 ], [ %8898, %8925 ]
  %8940 = phi float [ %8933, %8931 ], [ 0.000000e+00, %8925 ]
  %8941 = fcmp fast une float %8902, 1.000000e+00
  br i1 %8941, label %8942, label %8949, !dx.controlflow.hints !159

; <label>:8942                                    ; preds = %8938
  %8943 = call float @dx.op.unary.f32(i32 23, float %8902)  ; Log(value)
  %8944 = fmul fast float %8943, 0x3FE62E4300000000
  %8945 = fmul fast float %8899, %8944
  %8946 = fsub fast float -0.000000e+00, %8945
  %8947 = fsub fast float 1.000000e+00, %8902
  %8948 = fdiv fast float %8946, %8947
  br label %8949

; <label>:8949                                    ; preds = %8942, %8938
  %8950 = phi float [ %8948, %8942 ], [ %8899, %8938 ]
  %8951 = phi float [ %8944, %8942 ], [ 0.000000e+00, %8938 ]
  %8952 = fcmp fast une float %8903, 1.000000e+00
  br i1 %8952, label %8953, label %8960, !dx.controlflow.hints !159

; <label>:8953                                    ; preds = %8949
  %8954 = call float @dx.op.unary.f32(i32 23, float %8903)  ; Log(value)
  %8955 = fmul fast float %8954, 0x3FE62E4300000000
  %8956 = fmul fast float %8900, %8955
  %8957 = fsub fast float -0.000000e+00, %8956
  %8958 = fsub fast float 1.000000e+00, %8903
  %8959 = fdiv fast float %8957, %8958
  br label %8960

; <label>:8960                                    ; preds = %8953, %8949
  %8961 = phi float [ %8959, %8953 ], [ %8900, %8949 ]
  %8962 = phi float [ %8955, %8953 ], [ 0.000000e+00, %8949 ]
  %8963 = fmul fast float %8926, %8910
  %8964 = fmul fast float %8927, %8910
  %8965 = fmul fast float %8928, %8910
  %8966 = fmul fast float %8929, %8910
  %8967 = fmul fast float %8939, %8908
  %8968 = fmul fast float %8950, %8908
  %8969 = fmul fast float %8961, %8908
  %8970 = fmul fast float %8940, %8908
  %8971 = fmul fast float %8951, %8908
  %8972 = fmul fast float %8962, %8908
  %8973 = fadd fast float %8967, %8963
  %8974 = fadd fast float %8968, %8964
  %8975 = fadd fast float %8969, %8965
  %8976 = fadd fast float %8970, %8966
  %8977 = fadd fast float %8971, %8966
  %8978 = fadd fast float %8972, %8966
  %8979 = fcmp fast une float %8976, 0.000000e+00
  br i1 %8979, label %8980, label %8987, !dx.controlflow.hints !160

; <label>:8980                                    ; preds = %8960
  %8981 = fmul fast float %8976, 0x3FF7154760000000
  %8982 = call float @dx.op.unary.f32(i32 21, float %8981)  ; Exp(value)
  %8983 = fsub fast float 1.000000e+00, %8982
  %8984 = fmul fast float %8973, %8983
  %8985 = fsub fast float -0.000000e+00, %8984
  %8986 = fdiv fast float %8985, %8976
  br label %8987

; <label>:8987                                    ; preds = %8980, %8960
  %8988 = phi float [ %8982, %8980 ], [ 1.000000e+00, %8960 ]
  %8989 = phi float [ %8986, %8980 ], [ %8973, %8960 ]
  %8990 = fcmp fast une float %8977, 0.000000e+00
  br i1 %8990, label %8991, label %8998, !dx.controlflow.hints !160

; <label>:8991                                    ; preds = %8987
  %8992 = fmul fast float %8977, 0x3FF7154760000000
  %8993 = call float @dx.op.unary.f32(i32 21, float %8992)  ; Exp(value)
  %8994 = fsub fast float 1.000000e+00, %8993
  %8995 = fmul fast float %8974, %8994
  %8996 = fsub fast float -0.000000e+00, %8995
  %8997 = fdiv fast float %8996, %8977
  br label %8998

; <label>:8998                                    ; preds = %8991, %8987
  %8999 = phi float [ %8993, %8991 ], [ 1.000000e+00, %8987 ]
  %9000 = phi float [ %8997, %8991 ], [ %8974, %8987 ]
  %9001 = fcmp fast une float %8978, 0.000000e+00
  br i1 %9001, label %9002, label %9009, !dx.controlflow.hints !160

; <label>:9002                                    ; preds = %8998
  %9003 = fmul fast float %8978, 0x3FF7154760000000
  %9004 = call float @dx.op.unary.f32(i32 21, float %9003)  ; Exp(value)
  %9005 = fsub fast float 1.000000e+00, %9004
  %9006 = fmul fast float %8975, %9005
  %9007 = fsub fast float -0.000000e+00, %9006
  %9008 = fdiv fast float %9007, %8978
  br label %9009

; <label>:9009                                    ; preds = %9002, %8998
  %9010 = phi float [ %9004, %9002 ], [ 1.000000e+00, %8998 ]
  %9011 = phi float [ %9008, %9002 ], [ %8975, %8998 ]
  %9012 = fcmp fast ogt float %8908, %8910
  br i1 %9012, label %9013, label %9033

; <label>:9013                                    ; preds = %9009
  %9014 = fsub fast float 1.000000e+00, %8910
  %9015 = fmul fast float %8926, %9014
  %9016 = fmul fast float %8927, %9014
  %9017 = fmul fast float %8928, %9014
  %9018 = fmul fast float %8929, %9014
  %9019 = fcmp fast une float %9018, 0.000000e+00
  br i1 %9019, label %9020, label %9071, !dx.controlflow.hints !161

; <label>:9020                                    ; preds = %9013
  %9021 = fmul fast float %9018, 0x3FF7154760000000
  %9022 = call float @dx.op.unary.f32(i32 21, float %9021)  ; Exp(value)
  %9023 = fsub fast float 1.000000e+00, %9022
  %9024 = fmul fast float %9015, %9023
  %9025 = fsub fast float -0.000000e+00, %9024
  %9026 = fmul fast float %9016, %9023
  %9027 = fsub fast float -0.000000e+00, %9026
  %9028 = fmul fast float %9017, %9023
  %9029 = fsub fast float -0.000000e+00, %9028
  %9030 = fdiv fast float %9025, %9018
  %9031 = fdiv fast float %9027, %9018
  %9032 = fdiv fast float %9029, %9018
  br label %9071

; <label>:9033                                    ; preds = %9009
  %9034 = fsub fast float 1.000000e+00, %8908
  %9035 = fmul fast float %8939, %9034
  %9036 = fmul fast float %8950, %9034
  %9037 = fmul fast float %8961, %9034
  %9038 = fmul fast float %8940, %9034
  %9039 = fmul fast float %8951, %9034
  %9040 = fmul fast float %8962, %9034
  %9041 = fcmp fast une float %9038, 0.000000e+00
  br i1 %9041, label %9042, label %9049, !dx.controlflow.hints !160

; <label>:9042                                    ; preds = %9033
  %9043 = fmul fast float %9038, 0x3FF7154760000000
  %9044 = call float @dx.op.unary.f32(i32 21, float %9043)  ; Exp(value)
  %9045 = fsub fast float 1.000000e+00, %9044
  %9046 = fmul fast float %9035, %9045
  %9047 = fsub fast float -0.000000e+00, %9046
  %9048 = fdiv fast float %9047, %9038
  br label %9049

; <label>:9049                                    ; preds = %9042, %9033
  %9050 = phi float [ %9048, %9042 ], [ %9035, %9033 ]
  %9051 = phi float [ %9044, %9042 ], [ 1.000000e+00, %9033 ]
  %9052 = fcmp fast une float %9039, 0.000000e+00
  br i1 %9052, label %9053, label %9060, !dx.controlflow.hints !160

; <label>:9053                                    ; preds = %9049
  %9054 = fmul fast float %9039, 0x3FF7154760000000
  %9055 = call float @dx.op.unary.f32(i32 21, float %9054)  ; Exp(value)
  %9056 = fsub fast float 1.000000e+00, %9055
  %9057 = fmul fast float %9036, %9056
  %9058 = fsub fast float -0.000000e+00, %9057
  %9059 = fdiv fast float %9058, %9039
  br label %9060

; <label>:9060                                    ; preds = %9053, %9049
  %9061 = phi float [ %9059, %9053 ], [ %9036, %9049 ]
  %9062 = phi float [ %9055, %9053 ], [ 1.000000e+00, %9049 ]
  %9063 = fcmp fast une float %9040, 0.000000e+00
  br i1 %9063, label %9064, label %9071, !dx.controlflow.hints !160

; <label>:9064                                    ; preds = %9060
  %9065 = fmul fast float %9040, 0x3FF7154760000000
  %9066 = call float @dx.op.unary.f32(i32 21, float %9065)  ; Exp(value)
  %9067 = fsub fast float 1.000000e+00, %9066
  %9068 = fmul fast float %9037, %9067
  %9069 = fsub fast float -0.000000e+00, %9068
  %9070 = fdiv fast float %9069, %9040
  br label %9071

; <label>:9071                                    ; preds = %9064, %9060, %9020, %9013
  %9072 = phi float [ %9070, %9064 ], [ %9032, %9020 ], [ %9017, %9013 ], [ %9037, %9060 ]
  %9073 = phi float [ %9061, %9064 ], [ %9031, %9020 ], [ %9016, %9013 ], [ %9061, %9060 ]
  %9074 = phi float [ %9050, %9064 ], [ %9030, %9020 ], [ %9015, %9013 ], [ %9050, %9060 ]
  %9075 = phi float [ %9066, %9064 ], [ %9022, %9020 ], [ 1.000000e+00, %9013 ], [ 1.000000e+00, %9060 ]
  %9076 = phi float [ %9062, %9064 ], [ %9022, %9020 ], [ 1.000000e+00, %9013 ], [ %9062, %9060 ]
  %9077 = phi float [ %9051, %9064 ], [ %9022, %9020 ], [ 1.000000e+00, %9013 ], [ %9051, %9060 ]
  %9078 = fmul fast float %9077, %8989
  %9079 = fmul fast float %9076, %9000
  %9080 = fmul fast float %9075, %9011
  %9081 = fadd fast float %9078, %9074
  %9082 = fadd fast float %9079, %9073
  %9083 = fadd fast float %9080, %9072
  %9084 = fmul fast float %9077, %8988
  %9085 = fmul fast float %9076, %8999
  %9086 = fmul fast float %9075, %9010
  br label %9087

; <label>:9087                                    ; preds = %9071, %8882
  %9088 = phi float [ %9086, %9071 ], [ %8888, %8882 ]
  %9089 = phi float [ %9085, %9071 ], [ %8887, %8882 ]
  %9090 = phi float [ %9084, %9071 ], [ %8886, %8882 ]
  %9091 = phi float [ %9083, %9071 ], [ %8885, %8882 ]
  %9092 = phi float [ %9082, %9071 ], [ %8884, %8882 ]
  %9093 = phi float [ %9081, %9071 ], [ %8883, %8882 ]
  %9094 = fmul fast float %9093, %8039
  %9095 = fmul fast float %9092, %8039
  %9096 = fmul fast float %9091, %8039
  %9097 = fmul fast float %9090, %8330
  %9098 = call float @dx.op.dot3.f32(i32 55, float %9090, float %9089, float %9088, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9099 = call float @dx.op.dot3.f32(i32 55, float %9094, float %9095, float %9096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9100 = select i1 %214, float %9098, float %9090
  %9101 = select i1 %214, float %9098, float %9089
  %9102 = select i1 %214, float 1.000000e+00, float %9088
  %9103 = select i1 %214, float %9099, float %9094
  %9104 = select i1 %214, float 0.000000e+00, float %9095
  %9105 = select i1 %214, float 0.000000e+00, float %9096
  %9106 = fmul fast float %9100, %8324
  %9107 = fmul fast float %9101, %8325
  %9108 = fmul fast float %9102, %8326
  %9109 = fadd fast float %9106, %9103
  %9110 = fadd fast float %9107, %9104
  %9111 = fadd fast float %9105, %9108
  %9112 = fmul fast float %9100, %8327
  %9113 = fmul fast float %9101, %8328
  %9114 = fmul fast float %9102, %8329
  %9115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9116 = extractvalue %dx.types.CBufRet.i32 %9115, 0
  %9117 = icmp eq i32 %9116, 0
  br i1 %9117, label %9485, label %9118, !dx.controlflow.hints !162

; <label>:9118                                    ; preds = %9087
  %9119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9120 = extractvalue %dx.types.CBufRet.f32 %9119, 2
  %9121 = extractvalue %dx.types.CBufRet.f32 %9119, 3
  %9122 = fmul fast float %9120, %98
  %9123 = fmul fast float %9121, %99
  %9124 = fmul fast float %9122, 2.000000e+00
  %9125 = fmul fast float %9123, 2.000000e+00
  %9126 = fsub fast float 1.000000e+00, %9124
  %9127 = fsub fast float 1.000000e+00, %9125
  %9128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9129 = extractvalue %dx.types.CBufRet.f32 %9128, 0
  %9130 = extractvalue %dx.types.CBufRet.f32 %9128, 1
  %9131 = extractvalue %dx.types.CBufRet.f32 %9128, 2
  %9132 = fmul fast float %9126, %9129
  %9133 = fmul fast float %9126, %9130
  %9134 = fmul fast float %9126, %9131
  %9135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9136 = extractvalue %dx.types.CBufRet.f32 %9135, 0
  %9137 = extractvalue %dx.types.CBufRet.f32 %9135, 1
  %9138 = extractvalue %dx.types.CBufRet.f32 %9135, 2
  %9139 = fmul fast float %9127, %9136
  %9140 = fmul fast float %9127, %9137
  %9141 = fmul fast float %9127, %9138
  %9142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9143 = extractvalue %dx.types.CBufRet.f32 %9142, 0
  %9144 = extractvalue %dx.types.CBufRet.f32 %9142, 1
  %9145 = extractvalue %dx.types.CBufRet.f32 %9142, 2
  %9146 = fadd fast float %9139, %9143
  %9147 = fadd fast float %9146, %9132
  %9148 = fadd fast float %9140, %9144
  %9149 = fadd fast float %9148, %9133
  %9150 = fadd fast float %9141, %9145
  %9151 = fadd fast float %9150, %9134
  %9152 = fmul fast float %9147, %8323
  %9153 = fmul fast float %9149, %8323
  %9154 = fmul fast float %9151, %8323
  %9155 = fmul fast float %9152, %9152
  %9156 = fmul fast float %9153, %9153
  %9157 = fadd fast float %9155, %9156
  %9158 = fmul fast float %9154, %9154
  %9159 = fadd fast float %9157, %9158
  %9160 = call float @dx.op.unary.f32(i32 24, float %9159)  ; Sqrt(value)
  %9161 = extractvalue %dx.types.CBufRet.f32 %8050, 0
  %9162 = fsub fast float %9160, %9161
  %9163 = extractvalue %dx.types.CBufRet.f32 %8050, 2
  %9164 = fmul fast float %9162, %9163
  %9165 = call float @dx.op.unary.f32(i32 7, float %9164)  ; Saturate(value)
  %9166 = fadd fast float %9165, -5.000000e-01
  %9167 = fmul fast float %9166, 2.000000e+00
  %9168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9169 = extractvalue %dx.types.CBufRet.f32 %9168, 2
  %9170 = call float @dx.op.binary.f32(i32 36, float %9169, float %9167)  ; FMin(a,b)
  %9171 = fsub fast float -0.000000e+00, %9169
  %9172 = fcmp fast ogt float %9170, %9171
  br i1 %9172, label %9173, label %9485, !dx.controlflow.hints !163

; <label>:9173                                    ; preds = %9118
  %9174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9175 = extractvalue %dx.types.CBufRet.f32 %9174, 3
  %9176 = fcmp fast ogt float %9175, 0.000000e+00
  br i1 %9176, label %9177, label %9252, !dx.controlflow.hints !164

; <label>:9177                                    ; preds = %9173
  %9178 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9179 = extractvalue %dx.types.Dimensions %9178, 0
  %9180 = sitofp i32 %9179 to float
  %9181 = extractvalue %dx.types.Dimensions %9178, 1
  %9182 = sitofp i32 %9181 to float
  %9183 = fmul fast float %9122, %9180
  %9184 = fmul fast float %9123, %9182
  %9185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9186 = extractvalue %dx.types.CBufRet.f32 %9185, 1
  %9187 = fsub fast float -0.000000e+00, %9186
  %9188 = fptoui float %9187 to i32
  %9189 = fptoui float %9183 to i32
  %9190 = fptoui float %9184 to i32
  %9191 = and i32 %9188, 31
  %9192 = lshr i32 %9189, %9191
  %9193 = lshr i32 %9190, %9191
  %9194 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9188, i32 %9192, i32 %9193, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9195 = extractvalue %dx.types.ResRet.f32 %9194, 0
  %9196 = fcmp fast olt float %9195, -1.000000e+00
  %9197 = fcmp fast ogt float %9195, -1.000000e+00
  %9198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9199 = extractvalue %dx.types.CBufRet.f32 %9198, 1
  %9200 = select i1 %9197, float %9199, float 1.000000e+00
  %9201 = fadd fast float %9195, 1.000000e+00
  %9202 = fmul fast float %9200, %9201
  %9203 = call float @dx.op.unary.f32(i32 6, float %9202)  ; FAbs(value)
  %9204 = extractvalue %dx.types.CBufRet.f32 %9198, 3
  %9205 = fcmp fast oge float %9203, %9204
  %9206 = select i1 %9205, float 0x4197782600000000, float %9203
  %9207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9208 = extractvalue %dx.types.CBufRet.f32 %9207, 0
  %9209 = extractvalue %dx.types.CBufRet.f32 %9207, 1
  %9210 = extractvalue %dx.types.CBufRet.f32 %9207, 2
  %9211 = select i1 %9196, float %9208, float %9129
  %9212 = select i1 %9196, float %9209, float %9130
  %9213 = select i1 %9196, float %9210, float %9131
  %9214 = fmul fast float %9211, %9126
  %9215 = fmul fast float %9212, %9126
  %9216 = fmul fast float %9213, %9126
  %9217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9218 = extractvalue %dx.types.CBufRet.f32 %9217, 0
  %9219 = extractvalue %dx.types.CBufRet.f32 %9217, 1
  %9220 = extractvalue %dx.types.CBufRet.f32 %9217, 2
  %9221 = select i1 %9196, float %9218, float %9136
  %9222 = select i1 %9196, float %9219, float %9137
  %9223 = select i1 %9196, float %9220, float %9138
  %9224 = fmul fast float %9221, %9127
  %9225 = fmul fast float %9222, %9127
  %9226 = fmul fast float %9223, %9127
  %9227 = fadd fast float %9224, %9214
  %9228 = fadd fast float %9225, %9215
  %9229 = fadd fast float %9226, %9216
  %9230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9231 = extractvalue %dx.types.CBufRet.f32 %9230, 0
  %9232 = extractvalue %dx.types.CBufRet.f32 %9230, 1
  %9233 = extractvalue %dx.types.CBufRet.f32 %9230, 2
  %9234 = select i1 %9196, float %9231, float %9143
  %9235 = select i1 %9196, float %9232, float %9144
  %9236 = select i1 %9196, float %9233, float %9145
  %9237 = fadd fast float %9227, %9234
  %9238 = fadd fast float %9228, %9235
  %9239 = fadd fast float %9229, %9236
  %9240 = fmul fast float %9237, %9206
  %9241 = fmul fast float %9238, %9206
  %9242 = fmul fast float %9239, %9206
  %9243 = fmul fast float %9240, %9240
  %9244 = fmul fast float %9241, %9241
  %9245 = fadd fast float %9243, %9244
  %9246 = fmul fast float %9242, %9242
  %9247 = fadd fast float %9245, %9246
  %9248 = call float @dx.op.unary.f32(i32 24, float %9247)  ; Sqrt(value)
  %9249 = fsub fast float %9248, %9161
  %9250 = fmul fast float %9249, %9163
  %9251 = call float @dx.op.unary.f32(i32 7, float %9250)  ; Saturate(value)
  br label %9252

; <label>:9252                                    ; preds = %9177, %9173
  %9253 = phi float [ %9251, %9177 ], [ 1.000000e+00, %9173 ]
  %9254 = fmul fast float %9170, 5.000000e-01
  %9255 = fadd fast float %9254, 5.000000e-01
  %9256 = call float @dx.op.unary.f32(i32 22, float %9255)  ; Frc(value)
  %9257 = call float @dx.op.unary.f32(i32 27, float %9256)  ; Round_ni(value)
  %9258 = call float @dx.op.unary.f32(i32 22, float %9256)  ; Frc(value)
  %9259 = fmul fast float %9258, 2.000000e+00
  %9260 = fadd fast float %9259, -1.000000e+00
  %9261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %9122, float %9123, float %9257, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9262 = extractvalue %dx.types.ResRet.f32 %9261, 0
  %9263 = extractvalue %dx.types.ResRet.f32 %9261, 1
  %9264 = extractvalue %dx.types.ResRet.f32 %9261, 2
  %9265 = extractvalue %dx.types.ResRet.f32 %9261, 3
  %9266 = fadd fast float %9262, -5.000000e-01
  %9267 = fadd fast float %9264, -5.000000e-01
  %9268 = fmul fast float %9266, 0xBFD5555560000000
  %9269 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9267, float %9268)  ; FMad(a,b,c)
  %9270 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9263, float 0.000000e+00)  ; FMad(a,b,c)
  %9271 = fadd fast float %9270, %9265
  %9272 = fmul fast float %9266, -7.500000e-01
  %9273 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9267, float %9272)  ; FMad(a,b,c)
  %9274 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9263, float 0.000000e+00)  ; FMad(a,b,c)
  %9275 = fadd fast float %9274, %9265
  %9276 = call float @dx.op.binary.f32(i32 35, float %9269, float -1.000000e+00)  ; FMax(a,b)
  %9277 = call float @dx.op.binary.f32(i32 35, float %9271, float -1.000000e+00)  ; FMax(a,b)
  %9278 = call float @dx.op.binary.f32(i32 35, float %9273, float -1.000000e+00)  ; FMax(a,b)
  %9279 = call float @dx.op.binary.f32(i32 35, float %9275, float -1.000000e+00)  ; FMax(a,b)
  %9280 = call float @dx.op.binary.f32(i32 36, float %9276, float 1.000000e+00)  ; FMin(a,b)
  %9281 = call float @dx.op.binary.f32(i32 36, float %9277, float 1.000000e+00)  ; FMin(a,b)
  %9282 = call float @dx.op.binary.f32(i32 36, float %9278, float 1.000000e+00)  ; FMin(a,b)
  %9283 = call float @dx.op.binary.f32(i32 36, float %9279, float 1.000000e+00)  ; FMin(a,b)
  %9284 = fcmp fast olt float %9280, 0x3FEFFF8020000000
  br i1 %9284, label %9285, label %9400, !dx.controlflow.hints !165

; <label>:9285                                    ; preds = %9252
  %9286 = extractvalue %dx.types.CBufRet.f32 %9168, 3
  %9287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9288 = extractvalue %dx.types.CBufRet.f32 %9287, 0
  %9289 = extractvalue %dx.types.CBufRet.f32 %9287, 1
  %9290 = extractvalue %dx.types.CBufRet.f32 %9287, 2
  %9291 = extractvalue %dx.types.CBufRet.f32 %9287, 3
  %9292 = fsub fast float %9288, %9280
  %9293 = fsub fast float %9289, %9281
  %9294 = fsub fast float %9290, %9282
  %9295 = fsub fast float %9291, %9283
  %9296 = fmul fast float %9292, %9286
  %9297 = fmul fast float %9293, %9286
  %9298 = fmul fast float %9294, %9286
  %9299 = fmul fast float %9295, %9286
  %9300 = fadd fast float %9296, %9280
  %9301 = fadd fast float %9297, %9281
  %9302 = fsub fast float -0.000000e+00, %9301
  %9303 = fadd fast float %9298, %9282
  %9304 = fadd fast float %9299, %9283
  %9305 = fmul fast float %9300, %9300
  %9306 = fsub fast float %9301, %9305
  %9307 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9306)  ; FMax(a,b)
  %9308 = fdiv fast float 1.000000e+00, %9307
  %9309 = fmul fast float %9301, %9300
  %9310 = fsub fast float %9303, %9309
  %9311 = fsub fast float %9260, %9300
  %9312 = fmul fast float %9260, %9260
  %9313 = fsub fast float %9312, %9301
  %9314 = fmul fast float %9311, %9308
  %9315 = fmul fast float %9314, %9310
  %9316 = fsub fast float %9313, %9315
  %9317 = fmul fast float %9301, %9301
  %9318 = fsub fast float %9304, %9317
  %9319 = fmul fast float %9310, %9310
  %9320 = fmul fast float %9319, %9308
  %9321 = fsub fast float %9318, %9320
  %9322 = fdiv fast float %9316, %9321
  %9323 = fmul fast float %9310, %9322
  %9324 = fsub fast float %9311, %9323
  %9325 = fmul fast float %9324, %9308
  %9326 = fmul fast float %9325, %9300
  %9327 = fsub fast float 1.000000e+00, %9326
  %9328 = fmul fast float %9301, %9322
  %9329 = fsub fast float %9327, %9328
  %9330 = fmul fast float %9325, %9325
  %9331 = fmul fast float %9322, 4.000000e+00
  %9332 = fmul fast float %9331, %9329
  %9333 = fsub fast float %9330, %9332
  %9334 = call float @dx.op.unary.f32(i32 24, float %9333)  ; Sqrt(value)
  %9335 = fcmp fast oge float %9325, 0.000000e+00
  %9336 = fsub fast float -0.000000e+00, %9334
  %9337 = select i1 %9335, float %9336, float %9334
  %9338 = fsub fast float %9337, %9325
  %9339 = fdiv fast float %9338, %9322
  %9340 = fdiv fast float %9329, %9338
  %9341 = fmul fast float %9339, 5.000000e-01
  %9342 = fmul fast float %9340, 2.000000e+00
  %9343 = select i1 %9335, float %9341, float %9342
  %9344 = select i1 %9335, float %9342, float %9341
  %9345 = call float @dx.op.binary.f32(i32 35, float %9343, float %9344)  ; FMax(a,b)
  %9346 = call float @dx.op.binary.f32(i32 36, float %9343, float %9344)  ; FMin(a,b)
  %9347 = fcmp fast ogt float %9260, %9346
  br i1 %9347, label %9348, label %9358

; <label>:9348                                    ; preds = %9285
  %9349 = fsub fast float %9260, %9346
  %9350 = fsub fast float %9345, %9346
  %9351 = fmul fast float %9349, %9350
  %9352 = fmul fast float %9345, %9260
  %9353 = fadd fast float %9345, %9260
  %9354 = fmul fast float %9353, %9300
  %9355 = fadd fast float %9352, %9301
  %9356 = fsub fast float %9355, %9354
  %9357 = fdiv fast float %9356, %9351
  br label %9358

; <label>:9358                                    ; preds = %9348, %9285
  %9359 = phi float [ %9357, %9348 ], [ 0.000000e+00, %9285 ]
  %9360 = fcmp fast ogt float %9260, %9345
  %9361 = fsub fast float %9260, %9345
  br i1 %9360, label %9362, label %9372

; <label>:9362                                    ; preds = %9358
  %9363 = fsub fast float %9345, %9346
  %9364 = fmul fast float %9363, %9361
  %9365 = fmul fast float %9346, %9260
  %9366 = fadd fast float %9346, %9260
  %9367 = fmul fast float %9366, %9300
  %9368 = fsub fast float %9302, %9365
  %9369 = fadd fast float %9368, %9367
  %9370 = fdiv fast float %9369, %9364
  %9371 = fadd fast float %9370, %9359
  br label %9372

; <label>:9372                                    ; preds = %9362, %9358
  %9373 = phi float [ %9371, %9362 ], [ %9359, %9358 ]
  %9374 = fsub fast float %9260, %9346
  %9375 = fmul fast float %9374, %9361
  %9376 = fmul fast float %9346, %9345
  %9377 = fadd fast float %9346, %9345
  %9378 = fmul fast float %9377, %9300
  %9379 = fadd fast float %9376, %9301
  %9380 = fsub fast float %9379, %9378
  %9381 = fdiv fast float %9380, %9375
  %9382 = call float @dx.op.unary.f32(i32 7, float %9373)  ; Saturate(value)
  %9383 = fcmp fast oeq float %8051, 0.000000e+00
  %9384 = extractvalue %dx.types.CBufRet.f32 %9168, 0
  %9385 = fcmp fast oeq float %9384, 0.000000e+00
  %9386 = or i1 %9383, %9385
  %9387 = fmul fast float %9384, 2.000000e+00
  %9388 = fadd fast float %9169, %9170
  %9389 = fdiv fast float %9388, %9387
  %9390 = call float @dx.op.unary.f32(i32 7, float %9389)  ; Saturate(value)
  %9391 = fmul fast float %9390, 2.000000e+00
  %9392 = fsub fast float 3.000000e+00, %9391
  %9393 = fmul fast float %9390, %9390
  %9394 = fmul fast float %9393, %9392
  %9395 = select i1 %9386, float 1.000000e+00, float %9394
  %9396 = fmul fast float %9381, %8051
  %9397 = fadd fast float %9382, %9396
  %9398 = call float @dx.op.unary.f32(i32 7, float %9397)  ; Saturate(value)
  %9399 = fmul fast float %9395, %9398
  br label %9400

; <label>:9400                                    ; preds = %9372, %9252
  %9401 = phi float [ %9399, %9372 ], [ 0.000000e+00, %9252 ]
  %9402 = fsub fast float 1.000000e+00, %9401
  %9403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %43, float %9122, float %9123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9404 = extractvalue %dx.types.ResRet.f32 %9403, 0
  %9405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9406 = extractvalue %dx.types.CBufRet.i32 %9405, 2
  %9407 = icmp eq i32 %9406, 0
  br i1 %9407, label %9413, label %9408

; <label>:9408                                    ; preds = %9400
  %9409 = call float @dx.op.unary.f32(i32 7, float %9401)  ; Saturate(value)
  %9410 = fadd fast float %9404, -1.000000e+00
  %9411 = fmul fast float %9409, %9410
  %9412 = fadd fast float %9411, 1.000000e+00
  br label %9413

; <label>:9413                                    ; preds = %9408, %9400
  %9414 = phi float [ %9412, %9408 ], [ %9402, %9400 ]
  br i1 %9176, label %9415, label %9433

; <label>:9415                                    ; preds = %9413
  %9416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9417 = extractvalue %dx.types.CBufRet.f32 %9416, 1
  %9418 = fsub fast float %9253, %9417
  %9419 = call float @dx.op.unary.f32(i32 7, float %9418)  ; Saturate(value)
  %9420 = fsub fast float %9253, %9175
  %9421 = call float @dx.op.unary.f32(i32 7, float %9420)  ; Saturate(value)
  %9422 = fsub fast float %9419, %9421
  %9423 = fsub fast float %9255, %9421
  %9424 = fdiv fast float %9423, %9422
  %9425 = call float @dx.op.unary.f32(i32 7, float %9424)  ; Saturate(value)
  %9426 = fmul fast float %9425, 2.000000e+00
  %9427 = fsub fast float 3.000000e+00, %9426
  %9428 = fsub fast float %9404, %9414
  %9429 = fmul fast float %9425, %9425
  %9430 = fmul fast float %9429, %9428
  %9431 = fmul fast float %9430, %9427
  %9432 = fadd fast float %9431, %9414
  br label %9433

; <label>:9433                                    ; preds = %9415, %9413
  %9434 = phi float [ %9432, %9415 ], [ %9414, %9413 ]
  %9435 = call float @dx.op.binary.f32(i32 35, float %9404, float %9434)  ; FMax(a,b)
  %9436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9437 = extractvalue %dx.types.CBufRet.i32 %9436, 2
  %9438 = and i32 %9437, 1
  %9439 = icmp eq i32 %9438, 0
  %9440 = fcmp fast une float %9435, 1.000000e+00
  %9441 = and i1 %9440, %9439
  br i1 %9441, label %9442, label %9461

; <label>:9442                                    ; preds = %9433
  %9443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %9122, float %9123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9444 = extractvalue %dx.types.ResRet.f32 %9443, 0
  %9445 = extractvalue %dx.types.ResRet.f32 %9443, 1
  %9446 = extractvalue %dx.types.ResRet.f32 %9443, 2
  %9447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9448 = extractvalue %dx.types.CBufRet.f32 %9447, 1
  %9449 = fmul fast float %9448, %9444
  %9450 = fmul fast float %9448, %9445
  %9451 = fmul fast float %9448, %9446
  %9452 = fcmp fast ogt float %9404, 0x3FEFFF2E40000000
  %9453 = fsub fast float 1.000000e+00, %9435
  %9454 = fsub fast float 1.000000e+00, %9404
  %9455 = fdiv fast float %9453, %9454
  %9456 = call float @dx.op.unary.f32(i32 7, float %9455)  ; Saturate(value)
  %9457 = select i1 %9452, float 0.000000e+00, float %9456
  %9458 = fmul fast float %9449, %9457
  %9459 = fmul fast float %9450, %9457
  %9460 = fmul fast float %9451, %9457
  br label %9461

; <label>:9461                                    ; preds = %9442, %9433
  %9462 = phi float [ 0.000000e+00, %9433 ], [ %9458, %9442 ]
  %9463 = phi float [ 0.000000e+00, %9433 ], [ %9459, %9442 ]
  %9464 = phi float [ 0.000000e+00, %9433 ], [ %9460, %9442 ]
  %9465 = fmul fast float %9462, %8039
  %9466 = fmul fast float %9463, %8039
  %9467 = fmul fast float %9464, %8039
  %9468 = fmul fast float %9435, %9097
  %9469 = call float @dx.op.dot3.f32(i32 55, float %9435, float %9435, float %9435, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9470 = call float @dx.op.dot3.f32(i32 55, float %9465, float %9466, float %9467, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9471 = select i1 %214, float %9469, float %9435
  %9472 = select i1 %214, float 1.000000e+00, float %9435
  %9473 = select i1 %214, float %9470, float %9465
  %9474 = select i1 %214, float 0.000000e+00, float %9466
  %9475 = select i1 %214, float 0.000000e+00, float %9467
  %9476 = fmul fast float %9471, %9109
  %9477 = fmul fast float %9471, %9110
  %9478 = fmul fast float %9472, %9111
  %9479 = fadd fast float %9476, %9473
  %9480 = fadd fast float %9477, %9474
  %9481 = fadd fast float %9475, %9478
  %9482 = fmul fast float %9471, %9112
  %9483 = fmul fast float %9471, %9113
  %9484 = fmul fast float %9472, %9114
  br label %9485

; <label>:9485                                    ; preds = %9461, %9118, %9087, %8319
  %9486 = phi float [ %8324, %8319 ], [ %9109, %9087 ], [ %9479, %9461 ], [ %9109, %9118 ]
  %9487 = phi float [ %8325, %8319 ], [ %9110, %9087 ], [ %9480, %9461 ], [ %9110, %9118 ]
  %9488 = phi float [ %8326, %8319 ], [ %9111, %9087 ], [ %9481, %9461 ], [ %9111, %9118 ]
  %9489 = phi float [ %8327, %8319 ], [ %9112, %9087 ], [ %9482, %9461 ], [ %9112, %9118 ]
  %9490 = phi float [ %8328, %8319 ], [ %9113, %9087 ], [ %9483, %9461 ], [ %9113, %9118 ]
  %9491 = phi float [ %8329, %8319 ], [ %9114, %9087 ], [ %9484, %9461 ], [ %9114, %9118 ]
  %9492 = phi float [ %8330, %8319 ], [ %9097, %9087 ], [ %9468, %9461 ], [ %9097, %9118 ]
  %9493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9494 = extractvalue %dx.types.CBufRet.f32 %9493, 2
  %9495 = extractvalue %dx.types.CBufRet.f32 %9493, 3
  %9496 = fmul fast float %9494, %98
  %9497 = fmul fast float %9495, %99
  %9498 = call float @dx.op.unary.f32(i32 7, float %9496)  ; Saturate(value)
  %9499 = call float @dx.op.unary.f32(i32 7, float %9497)  ; Saturate(value)
  %9500 = select i1 %8061, i32 2, i32 0
  %9501 = or i32 %9500, 1
  %9502 = uitofp i32 %9501 to float
  %9503 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9498, float %9499, float %9502, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9504 = extractvalue %dx.types.ResRet.f32 %9503, 0
  %9505 = extractvalue %dx.types.ResRet.f32 %9503, 1
  %9506 = extractvalue %dx.types.ResRet.f32 %9503, 2
  %9507 = extractvalue %dx.types.ResRet.f32 %9503, 3
  %9508 = add nuw nsw i32 %9500, 2
  %9509 = uitofp i32 %9508 to float
  %9510 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9498, float %9499, float %9509, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9511 = extractvalue %dx.types.ResRet.f32 %9510, 0
  %9512 = extractvalue %dx.types.ResRet.f32 %9510, 1
  %9513 = extractvalue %dx.types.ResRet.f32 %9510, 2
  %9514 = extractvalue %dx.types.ResRet.f32 %9510, 3
  %9515 = call float @dx.op.binary.f32(i32 35, float %9505, float %9506)  ; FMax(a,b)
  %9516 = call float @dx.op.binary.f32(i32 35, float %9504, float %9515)  ; FMax(a,b)
  %9517 = call float @dx.op.binary.f32(i32 35, float %9516, float %9507)  ; FMax(a,b)
  %9518 = call float @dx.op.binary.f32(i32 36, float %9512, float %9513)  ; FMin(a,b)
  %9519 = call float @dx.op.binary.f32(i32 36, float %9511, float %9518)  ; FMin(a,b)
  %9520 = call float @dx.op.binary.f32(i32 36, float %9519, float %9514)  ; FMin(a,b)
  %9521 = fmul fast float %9517, 2.550000e+02
  %9522 = fadd fast float %9521, 0x3F70101020000000
  %9523 = fptoui float %9522 to i32
  %9524 = fmul fast float %9520, 2.550000e+02
  %9525 = fadd fast float %9524, 0x3F70101020000000
  %9526 = fptoui float %9525 to i32
  %9527 = icmp ult i32 %9523, %9526
  br i1 %9527, label %9528, label %9697

; <label>:9528                                    ; preds = %9485
  %9529 = fcmp fast ogt float %85, 9.843750e-01
  %9530 = fadd fast float %8323, -4.000000e+00
  %9531 = select i1 %9529, float -4.000000e+00, float %9530
  %9532 = call float @dx.op.binary.f32(i32 35, float %9531, float 0.000000e+00)  ; FMax(a,b)
  %9533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9534 = extractvalue %dx.types.CBufRet.f32 %9533, 0
  %9535 = fadd fast float %9534, %9532
  %9536 = extractvalue %dx.types.CBufRet.f32 %9533, 2
  %9537 = fmul fast float %9535, %9536
  %9538 = call float @dx.op.unary.f32(i32 23, float %9537)  ; Log(value)
  %9539 = extractvalue %dx.types.CBufRet.f32 %9533, 3
  %9540 = fmul fast float %9539, %9538
  %9541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9542 = extractvalue %dx.types.CBufRet.f32 %9541, 2
  %9543 = fmul fast float %9540, %9542
  %9544 = call float @dx.op.unary.f32(i32 7, float %9543)  ; Saturate(value)
  %9545 = uitofp i32 %9523 to float
  %9546 = uitofp i32 %9526 to float
  %9547 = fadd fast float %9545, 5.000000e-01
  %9548 = fadd fast float %9546, 5.000000e-01
  %9549 = fmul fast float %9542, %9547
  %9550 = fmul fast float %9542, %9548
  %9551 = fadd fast float %9549, 0x3F0FFB4800000000
  %9552 = fadd fast float %9550, 0xBF0FFB4800000000
  %9553 = call float @dx.op.binary.f32(i32 35, float %9544, float %9551)  ; FMax(a,b)
  %9554 = call float @dx.op.binary.f32(i32 36, float %9553, float %9552)  ; FMin(a,b)
  %9555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9556 = extractvalue %dx.types.CBufRet.f32 %9555, 1
  %9557 = extractvalue %dx.types.CBufRet.f32 %9555, 2
  %9558 = extractvalue %dx.types.CBufRet.f32 %9555, 0
  %9559 = select i1 %8061, float %9558, float 0.000000e+00
  %9560 = fmul fast float %9556, %9554
  %9561 = fadd fast float %9559, %9560
  %9562 = fadd fast float %9559, %9557
  %9563 = fsub fast float %9556, %9557
  %9564 = fadd fast float %9563, %9559
  %9565 = call float @dx.op.binary.f32(i32 35, float %9561, float %9562)  ; FMax(a,b)
  %9566 = call float @dx.op.binary.f32(i32 36, float %9565, float %9564)  ; FMin(a,b)
  %9567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %9498, float %9499, float %9566, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9568 = extractvalue %dx.types.ResRet.f32 %9567, 0
  %9569 = extractvalue %dx.types.ResRet.f32 %9567, 1
  %9570 = extractvalue %dx.types.ResRet.f32 %9567, 2
  %9571 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9572 = extractvalue %dx.types.CBufRet.i32 %9571, 0
  %9573 = extractvalue %dx.types.CBufRet.i32 %9571, 1
  %9574 = uitofp i32 %9572 to float
  %9575 = uitofp i32 %9573 to float
  %9576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9577 = extractvalue %dx.types.CBufRet.f32 %9576, 0
  %9578 = extractvalue %dx.types.CBufRet.f32 %9576, 1
  %9579 = fmul fast float %9574, %9498
  %9580 = fmul fast float %9575, %9499
  %9581 = fadd fast float %9579, -5.000000e-01
  %9582 = fadd fast float %9580, -5.000000e-01
  %9583 = call float @dx.op.unary.f32(i32 22, float %9581)  ; Frc(value)
  %9584 = call float @dx.op.unary.f32(i32 22, float %9582)  ; Frc(value)
  %9585 = fmul fast float %9583, %9583
  %9586 = fmul fast float %9585, %9583
  %9587 = fsub fast float 3.000000e+00, %9583
  %9588 = fmul fast float %9585, %9587
  %9589 = fmul fast float %9583, 3.000000e+00
  %9590 = fmul fast float %9586, 3.000000e+00
  %9591 = fmul fast float %9585, 6.000000e+00
  %9592 = fsub fast float %9590, %9591
  %9593 = fadd fast float %9592, 4.000000e+00
  %9594 = fmul fast float %9593, 0x3FC5555560000000
  %9595 = fmul fast float %9586, -3.000000e+00
  %9596 = fadd fast float %9585, %9583
  %9597 = fmul fast float %9596, 3.000000e+00
  %9598 = fadd fast float %9595, 1.000000e+00
  %9599 = fadd fast float %9598, %9597
  %9600 = fmul fast float %9586, 0x3FC5555560000000
  %9601 = fmul fast float %9584, %9584
  %9602 = fmul fast float %9601, %9584
  %9603 = fsub fast float 3.000000e+00, %9584
  %9604 = fmul fast float %9601, %9603
  %9605 = fmul fast float %9584, 3.000000e+00
  %9606 = fmul fast float %9602, 3.000000e+00
  %9607 = fmul fast float %9601, 6.000000e+00
  %9608 = fsub fast float %9606, %9607
  %9609 = fadd fast float %9608, 4.000000e+00
  %9610 = fmul fast float %9609, 0x3FC5555560000000
  %9611 = fmul fast float %9602, -3.000000e+00
  %9612 = fadd fast float %9601, %9584
  %9613 = fmul fast float %9612, 3.000000e+00
  %9614 = fadd fast float %9611, 1.000000e+00
  %9615 = fadd fast float %9614, %9613
  %9616 = fmul fast float %9602, 0x3FC5555560000000
  %9617 = fadd fast float %9583, 1.000000e+00
  %9618 = fsub fast float 1.000000e+00, %9589
  %9619 = fadd fast float %9618, %9588
  %9620 = fadd fast float %9619, %9593
  %9621 = fmul fast float %9620, 0x3FC5555560000000
  %9622 = fdiv fast float %9594, %9621
  %9623 = fsub fast float %9617, %9622
  %9624 = fsub fast float 1.000000e+00, %9583
  %9625 = fadd fast float %9599, %9586
  %9626 = fmul fast float %9625, 0x3FC5555560000000
  %9627 = fdiv fast float %9600, %9626
  %9628 = fadd fast float %9624, %9627
  %9629 = fadd fast float %9584, 1.000000e+00
  %9630 = fsub fast float 1.000000e+00, %9605
  %9631 = fadd fast float %9630, %9604
  %9632 = fadd fast float %9631, %9609
  %9633 = fmul fast float %9632, 0x3FC5555560000000
  %9634 = fdiv fast float %9610, %9633
  %9635 = fsub fast float %9629, %9634
  %9636 = fsub fast float 1.000000e+00, %9584
  %9637 = fadd fast float %9615, %9602
  %9638 = fmul fast float %9637, 0x3FC5555560000000
  %9639 = fdiv fast float %9616, %9638
  %9640 = fadd fast float %9639, %9636
  %9641 = fmul fast float %9623, %9577
  %9642 = fsub fast float %9498, %9641
  %9643 = fmul fast float %9628, %9577
  %9644 = fadd fast float %9643, %9498
  %9645 = fmul fast float %9640, %9578
  %9646 = fadd fast float %9645, %9499
  %9647 = fmul fast float %9635, %9578
  %9648 = fsub fast float %9499, %9647
  %9649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9642, float %9648, float %9566, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9650 = extractvalue %dx.types.ResRet.f32 %9649, 0
  %9651 = extractvalue %dx.types.ResRet.f32 %9649, 1
  %9652 = extractvalue %dx.types.ResRet.f32 %9649, 2
  %9653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9644, float %9648, float %9566, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9654 = extractvalue %dx.types.ResRet.f32 %9653, 0
  %9655 = extractvalue %dx.types.ResRet.f32 %9653, 1
  %9656 = extractvalue %dx.types.ResRet.f32 %9653, 2
  %9657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9642, float %9646, float %9566, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9658 = extractvalue %dx.types.ResRet.f32 %9657, 0
  %9659 = extractvalue %dx.types.ResRet.f32 %9657, 1
  %9660 = extractvalue %dx.types.ResRet.f32 %9657, 2
  %9661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9644, float %9646, float %9566, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9662 = extractvalue %dx.types.ResRet.f32 %9661, 0
  %9663 = extractvalue %dx.types.ResRet.f32 %9661, 1
  %9664 = extractvalue %dx.types.ResRet.f32 %9661, 2
  %9665 = fsub fast float %9658, %9650
  %9666 = fsub fast float %9659, %9651
  %9667 = fsub fast float %9660, %9652
  %9668 = fmul fast float %9665, %9638
  %9669 = fmul fast float %9666, %9638
  %9670 = fmul fast float %9667, %9638
  %9671 = fadd fast float %9668, %9650
  %9672 = fadd fast float %9669, %9651
  %9673 = fadd fast float %9670, %9652
  %9674 = fsub fast float %9662, %9654
  %9675 = fsub fast float %9663, %9655
  %9676 = fsub fast float %9664, %9656
  %9677 = fmul fast float %9674, %9638
  %9678 = fmul fast float %9675, %9638
  %9679 = fmul fast float %9676, %9638
  %9680 = fsub fast float %9654, %9671
  %9681 = fadd fast float %9680, %9677
  %9682 = fsub fast float %9655, %9672
  %9683 = fadd fast float %9682, %9678
  %9684 = fsub fast float %9656, %9673
  %9685 = fadd fast float %9684, %9679
  %9686 = fmul fast float %9681, %9626
  %9687 = fmul fast float %9683, %9626
  %9688 = fmul fast float %9685, %9626
  %9689 = fadd fast float %9686, %9671
  %9690 = fadd fast float %9687, %9672
  %9691 = fadd fast float %9688, %9673
  %9692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9693 = extractvalue %dx.types.CBufRet.f32 %9692, 1
  %9694 = fmul fast float %9689, %9693
  %9695 = fmul fast float %9690, %9693
  %9696 = fmul fast float %9691, %9693
  br label %9697

; <label>:9697                                    ; preds = %9528, %9485
  %9698 = phi float [ %9568, %9528 ], [ 1.000000e+00, %9485 ]
  %9699 = phi float [ %9569, %9528 ], [ 1.000000e+00, %9485 ]
  %9700 = phi float [ %9570, %9528 ], [ 1.000000e+00, %9485 ]
  %9701 = phi float [ %9694, %9528 ], [ 0.000000e+00, %9485 ]
  %9702 = phi float [ %9695, %9528 ], [ 0.000000e+00, %9485 ]
  %9703 = phi float [ %9696, %9528 ], [ 0.000000e+00, %9485 ]
  %9704 = fmul fast float %9701, %8039
  %9705 = fmul fast float %9702, %8039
  %9706 = fmul fast float %9703, %8039
  %9707 = fmul fast float %9698, %9492
  %9708 = call float @dx.op.dot3.f32(i32 55, float %9698, float %9699, float %9700, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9709 = call float @dx.op.dot3.f32(i32 55, float %9704, float %9705, float %9706, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9710 = select i1 %214, float %9708, float %9698
  %9711 = select i1 %214, float %9708, float %9699
  %9712 = select i1 %214, float 1.000000e+00, float %9700
  %9713 = select i1 %214, float %9709, float %9704
  %9714 = select i1 %214, float 0.000000e+00, float %9705
  %9715 = select i1 %214, float 0.000000e+00, float %9706
  %9716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9717 = extractvalue %dx.types.CBufRet.i32 %9716, 3
  %9718 = and i32 %9717, 3
  %9719 = icmp ne i32 %9718, 0
  %9720 = and i32 %9717, 4
  %9721 = icmp ne i32 %9720, 0
  %9722 = and i1 %9719, %9721
  %9723 = and i1 %214, %9722
  br i1 %9723, label %9724, label %9730

; <label>:9724                                    ; preds = %9697
  %9725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9726 = extractvalue %dx.types.CBufRet.f32 %9725, 1
  %9727 = fadd fast float %9707, -1.000000e+00
  %9728 = fmul fast float %9726, %9727
  %9729 = fadd fast float %9728, 1.000000e+00
  br label %9730

; <label>:9730                                    ; preds = %9724, %9697
  %9731 = phi float [ %9729, %9724 ], [ %9707, %9697 ]
  %9732 = fadd fast float %9489, %9486
  %9733 = fmul fast float %9710, %9732
  %9734 = fadd fast float %9733, %9713
  %9735 = fadd fast float %9490, %9487
  %9736 = fmul fast float %9711, %9735
  %9737 = fadd fast float %9736, %9714
  %9738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9739 = extractvalue %dx.types.CBufRet.f32 %9738, 0
  br i1 %214, label %9740, label %9763

; <label>:9740                                    ; preds = %9730
  %9741 = fadd fast float %9734, %9737
  %9742 = fmul fast float %9739, %9741
  %9743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9744 = extractvalue %dx.types.CBufRet.f32 %9743, 3
  %9745 = extractvalue %dx.types.CBufRet.f32 %8043, 1
  %9746 = fsub fast float %8048, %8042
  %9747 = fadd fast float %9746, %8049
  %9748 = fsub fast float %9747, %9745
  %9749 = extractvalue %dx.types.CBufRet.f32 %8043, 2
  %9750 = fmul fast float %9748, %9749
  %9751 = call float @dx.op.unary.f32(i32 7, float %9750)  ; Saturate(value)
  %9752 = fsub fast float %9751, %9744
  %9753 = fmul fast float %9752, %9731
  %9754 = fadd fast float %9753, %9744
  %9755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9756 = extractvalue %dx.types.CBufRet.f32 %9755, 0
  %9757 = fsub fast float %9754, %9756
  %9758 = fmul fast float %9757, 1.000000e+01
  %9759 = call float @dx.op.unary.f32(i32 7, float %9758)  ; Saturate(value)
  %9760 = fmul fast float %9759, %8038
  %9761 = fadd fast float %9760, %8039
  %9762 = fmul fast float %9761, %9754
  br label %9787

; <label>:9763                                    ; preds = %9730
  %9764 = fadd fast float %9491, %9488
  %9765 = fmul fast float %9712, %9764
  %9766 = fadd fast float %9765, %9715
  %9767 = fmul fast float %9739, %9734
  %9768 = fmul fast float %9739, %9737
  %9769 = fmul fast float %9739, %9766
  %9770 = call float @dx.op.binary.f32(i32 35, float %9768, float %9769)  ; FMax(a,b)
  %9771 = call float @dx.op.binary.f32(i32 35, float %9767, float %9770)  ; FMax(a,b)
  %9772 = call float @dx.op.binary.f32(i32 35, float %9771, float %8039)  ; FMax(a,b)
  %9773 = fcmp fast ugt float %9772, 0x3F10000000000000
  br i1 %9773, label %9775, label %9774

; <label>:9774                                    ; preds = %9763
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9775

; <label>:9775                                    ; preds = %9774, %9763
  %9776 = add i32 %49, 356
  %9777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %9776, i32 undef)  ; BufferLoad(srv,index,wot)
  %9778 = extractvalue %dx.types.ResRet.i32 %9777, 0
  %9779 = and i32 %9778, 32
  %9780 = icmp eq i32 %9779, 0
  br i1 %9780, label %9787, label %9781

; <label>:9781                                    ; preds = %9775
  %9782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9783 = extractvalue %dx.types.CBufRet.f32 %9782, 0
  %9784 = fmul fast float %9783, 0x3FE99999A0000000
  %9785 = fadd fast float %9783, %9767
  %9786 = fadd fast float %9784, %9769
  br label %9787

; <label>:9787                                    ; preds = %9781, %9775, %9740
  %9788 = phi float [ %9742, %9740 ], [ %9785, %9781 ], [ %9767, %9775 ]
  %9789 = phi float [ %9762, %9740 ], [ %9768, %9781 ], [ %9768, %9775 ]
  %9790 = phi float [ %9761, %9740 ], [ %9786, %9781 ], [ %9769, %9775 ]
  %9791 = phi float [ %9761, %9740 ], [ %8039, %9781 ], [ %8039, %9775 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9792 = call float @dx.op.binary.f32(i32 36, float %9788, float 3.225500e+04)  ; FMin(a,b)
  %9793 = call float @dx.op.binary.f32(i32 36, float %9789, float 3.225500e+04)  ; FMin(a,b)
  %9794 = call float @dx.op.binary.f32(i32 36, float %9790, float 3.225500e+04)  ; FMin(a,b)
  %9795 = call float @dx.op.binary.f32(i32 36, float %9791, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9792)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9793)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9794)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9795)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!53 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
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

