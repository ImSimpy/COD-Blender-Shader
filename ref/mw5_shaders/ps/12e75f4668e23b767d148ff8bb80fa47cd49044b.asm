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
; shader hash: 526b8f9f4864171cd04fb3d4a5872db6
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
  %444 = add i32 %50, 552
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
  %819 = add i32 %50, 504
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
  %1159 = add i32 %50, 520
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
  %1200 = add i32 %50, 536
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
  %1612 = add i32 %50, 508
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
  %1952 = add i32 %50, 524
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
  %1993 = add i32 %50, 540
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
  %2669 = add i32 %50, 512
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
  %3009 = add i32 %50, 528
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
  %3050 = add i32 %50, 544
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
  %3726 = add i32 %50, 516
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
  %4066 = add i32 %50, 532
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
  %4107 = add i32 %50, 548
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
  %4456 = bitcast i32 %4455 to float
  %4457 = fcmp fast oge float %4456, 0.000000e+00
  %4458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4459 = extractvalue %dx.types.CBufRet.f32 %4458, 0
  %4460 = select i1 %4457, float %4456, float %4459
  %4461 = call float @dx.op.dot2.f32(i32 54, float %4434, float %4435, float %4434, float %4435)  ; Dot2(ax,ay,bx,by)
  %4462 = fmul fast float %4461, 0x3FE3333340000000
  %4463 = fsub fast float 1.000000e+00, %4462
  %4464 = call float @dx.op.dot3.f32(i32 55, float %4434, float %4435, float %4463, float %4434, float %4435, float %4463)  ; Dot3(ax,ay,az,bx,by,bz)
  %4465 = call float @dx.op.unary.f32(i32 25, float %4464)  ; Rsqrt(value)
  %4466 = fmul fast float %4465, %4434
  %4467 = fmul fast float %4465, %4435
  %4468 = fmul fast float %4463, %4465
  %4469 = fmul fast float %4468, %106
  %4470 = fmul fast float %4468, %107
  %4471 = fmul fast float %4468, %108
  %4472 = fmul fast float %4466, %71
  %4473 = fmul fast float %4466, %72
  %4474 = fmul fast float %4466, %73
  %4475 = fadd fast float %4469, %4472
  %4476 = fadd fast float %4470, %4473
  %4477 = fadd fast float %4471, %4474
  %4478 = fmul fast float %118, %4467
  %4479 = fmul fast float %119, %4467
  %4480 = fmul fast float %120, %4467
  %4481 = fadd fast float %4475, %4478
  %4482 = fadd fast float %4476, %4479
  %4483 = fadd fast float %4477, %4480
  %4484 = call float @dx.op.dot3.f32(i32 55, float %4481, float %4482, float %4483, float %4481, float %4482, float %4483)  ; Dot3(ax,ay,az,bx,by,bz)
  %4485 = call float @dx.op.unary.f32(i32 25, float %4484)  ; Rsqrt(value)
  %4486 = fmul fast float %4481, %4485
  %4487 = fmul fast float %4482, %4485
  %4488 = fmul fast float %4483, %4485
  %4489 = and i32 %52, 1
  %4490 = icmp eq i32 %4489, 0
  br i1 %4490, label %4491, label %5083

; <label>:4491                                    ; preds = %4433
  %4492 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4493 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4494 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4495 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4496 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4497 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4498 = fadd fast float %4492, %154
  %4499 = fadd fast float %4493, %155
  %4500 = fadd fast float %4494, %156
  %4501 = fadd fast float %4495, %154
  %4502 = fadd fast float %4496, %155
  %4503 = fadd fast float %4497, %156
  %4504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4505 = extractvalue %dx.types.CBufRet.f32 %4504, 0
  %4506 = extractvalue %dx.types.CBufRet.f32 %4504, 1
  %4507 = extractvalue %dx.types.CBufRet.f32 %4504, 2
  %4508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.f32 %4508, 2
  %4510 = extractvalue %dx.types.CBufRet.f32 %4508, 3
  %4511 = fmul fast float %4505, %99
  %4512 = fmul fast float %4511, %4509
  %4513 = fmul fast float %4506, %100
  %4514 = fmul fast float %4513, %4510
  %4515 = fptoui float %4512 to i32
  %4516 = fptoui float %4514 to i32
  %4517 = fadd fast float %4505, -1.000000e+00
  %4518 = fadd fast float %4506, -1.000000e+00
  %4519 = fptoui float %4517 to i32
  %4520 = fptoui float %4518 to i32
  %4521 = call i32 @dx.op.binary.i32(i32 40, i32 %4515, i32 %4519)  ; UMin(a,b)
  %4522 = call i32 @dx.op.binary.i32(i32 40, i32 %4516, i32 %4520)  ; UMin(a,b)
  %4523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4523, 2
  %4525 = extractvalue %dx.types.CBufRet.f32 %4523, 3
  %4526 = fmul fast float %4524, %87
  %4527 = fsub fast float %4526, %4525
  %4528 = fadd fast float %4507, -1.000000e+00
  %4529 = call float @dx.op.binary.f32(i32 36, float %4527, float %4528)  ; FMin(a,b)
  %4530 = fptoui float %4529 to i32
  %4531 = fptoui float %4505 to i32
  %4532 = fptoui float %4506 to i32
  %4533 = mul i32 %4530, %4532
  %4534 = add i32 %4533, %4522
  %4535 = mul i32 %4534, %4531
  %4536 = add i32 %4535, %4521
  %4537 = shl i32 %4536, 2
  %4538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4537, i32 undef)  ; BufferLoad(srv,index,wot)
  %4539 = extractvalue %dx.types.ResRet.i32 %4538, 0
  %4540 = and i32 %4539, 1023
  %4541 = lshr i32 %4539, 10
  %4542 = icmp eq i32 %4540, 0
  br i1 %4542, label %5046, label %4543

; <label>:4543                                    ; preds = %4491
  %4544 = and i32 %4539, 1023
  br label %4545

; <label>:4545                                    ; preds = %4677, %4543
  %4546 = phi i32 [ %4627, %4677 ], [ 0, %4543 ]
  %4547 = phi float [ %4678, %4677 ], [ 0.000000e+00, %4543 ]
  %4548 = phi float [ %4679, %4677 ], [ %4460, %4543 ]
  %4549 = phi float [ %4680, %4677 ], [ %4452, %4543 ]
  %4550 = phi float [ %4681, %4677 ], [ %4445, %4543 ]
  %4551 = phi float [ %4682, %4677 ], [ %4446, %4543 ]
  %4552 = phi float [ %4683, %4677 ], [ %4447, %4543 ]
  %4553 = phi float [ %4684, %4677 ], [ 0.000000e+00, %4543 ]
  %4554 = phi float [ %4685, %4677 ], [ 0.000000e+00, %4543 ]
  %4555 = phi float [ %4686, %4677 ], [ %4442, %4543 ]
  %4556 = phi float [ %4687, %4677 ], [ %4443, %4543 ]
  %4557 = phi float [ %4688, %4677 ], [ %4444, %4543 ]
  %4558 = phi float [ %4689, %4677 ], [ %4439, %4543 ]
  %4559 = phi float [ %4690, %4677 ], [ %4440, %4543 ]
  %4560 = phi float [ %4691, %4677 ], [ %4441, %4543 ]
  %4561 = phi float [ %4692, %4677 ], [ %4486, %4543 ]
  %4562 = phi float [ %4693, %4677 ], [ %4487, %4543 ]
  %4563 = phi float [ %4694, %4677 ], [ %4488, %4543 ]
  %4564 = phi float [ %4695, %4677 ], [ %4450, %4543 ]
  %4565 = phi float [ %4696, %4677 ], [ %4449, %4543 ]
  %4566 = phi float [ %4697, %4677 ], [ 0.000000e+00, %4543 ]
  %4567 = phi float [ %4698, %4677 ], [ %4448, %4543 ]
  %4568 = phi float [ %4699, %4677 ], [ %4436, %4543 ]
  %4569 = phi float [ %4700, %4677 ], [ %4437, %4543 ]
  %4570 = phi float [ %4701, %4677 ], [ %4438, %4543 ]
  %4571 = add nuw nsw i32 %4546, %4541
  %4572 = shl i32 %4571, 2
  %4573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4572, i32 undef)  ; BufferLoad(srv,index,wot)
  %4574 = extractvalue %dx.types.ResRet.i32 %4573, 0
  %4575 = shl i32 %4574, 8
  %4576 = or i32 %4575, 48
  %4577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4576, i32 undef)  ; BufferLoad(srv,index,wot)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.ResRet.f32 %4577, 1
  %4580 = extractvalue %dx.types.ResRet.f32 %4577, 2
  %4581 = extractvalue %dx.types.ResRet.f32 %4577, 3
  %4582 = or i32 %4575, 64
  %4583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4582, i32 undef)  ; BufferLoad(srv,index,wot)
  %4584 = extractvalue %dx.types.ResRet.i32 %4583, 0
  %4585 = extractvalue %dx.types.ResRet.i32 %4583, 1
  %4586 = or i32 %4575, 80
  %4587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 2
  %4589 = extractvalue %dx.types.ResRet.f32 %4587, 3
  %4590 = or i32 %4575, 96
  %4591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4590, i32 undef)  ; BufferLoad(srv,index,wot)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.f32 %4591, 1
  %4594 = extractvalue %dx.types.ResRet.f32 %4591, 2
  %4595 = extractvalue %dx.types.ResRet.f32 %4591, 3
  %4596 = or i32 %4575, 112
  %4597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4596, i32 undef)  ; BufferLoad(srv,index,wot)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 2
  %4599 = or i32 %4575, 128
  %4600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4599, i32 undef)  ; BufferLoad(srv,index,wot)
  %4601 = extractvalue %dx.types.ResRet.f32 %4600, 0
  %4602 = extractvalue %dx.types.ResRet.f32 %4600, 1
  %4603 = extractvalue %dx.types.ResRet.f32 %4600, 2
  %4604 = extractvalue %dx.types.ResRet.f32 %4600, 3
  %4605 = or i32 %4575, 144
  %4606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4605, i32 undef)  ; BufferLoad(srv,index,wot)
  %4607 = extractvalue %dx.types.ResRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.ResRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.ResRet.f32 %4606, 2
  %4610 = extractvalue %dx.types.ResRet.f32 %4606, 3
  %4611 = or i32 %4575, 160
  %4612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4611, i32 undef)  ; BufferLoad(srv,index,wot)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.ResRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.ResRet.f32 %4612, 2
  %4616 = extractvalue %dx.types.ResRet.f32 %4612, 3
  %4617 = or i32 %4575, 192
  %4618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4617, i32 undef)  ; BufferLoad(srv,index,wot)
  %4619 = extractvalue %dx.types.ResRet.i32 %4618, 0
  %4620 = or i32 %4575, 208
  %4621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4620, i32 undef)  ; BufferLoad(srv,index,wot)
  %4622 = extractvalue %dx.types.ResRet.f32 %4621, 0
  %4623 = or i32 %4575, 248
  %4624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4623, i32 undef)  ; BufferLoad(srv,index,wot)
  %4625 = extractvalue %dx.types.ResRet.f32 %4624, 0
  %4626 = extractvalue %dx.types.ResRet.f32 %4624, 1
  %4627 = add nuw nsw i32 %4546, 1
  %4628 = bitcast float %4581 to i32
  %4629 = and i32 %4628, 512
  %4630 = icmp eq i32 %4629, 0
  %4631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4632 = extractvalue %dx.types.ResRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.ResRet.f32 %4631, 1
  %4634 = extractvalue %dx.types.ResRet.f32 %4631, 2
  %4635 = extractvalue %dx.types.ResRet.f32 %4631, 3
  %4636 = call float @dx.op.dot4.f32(i32 56, float %4632, float %4633, float %4634, float %4635, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4637 = or i32 %4575, 16
  %4638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4637, i32 undef)  ; BufferLoad(srv,index,wot)
  %4639 = extractvalue %dx.types.ResRet.f32 %4638, 0
  %4640 = extractvalue %dx.types.ResRet.f32 %4638, 1
  %4641 = extractvalue %dx.types.ResRet.f32 %4638, 2
  %4642 = extractvalue %dx.types.ResRet.f32 %4638, 3
  %4643 = call float @dx.op.dot4.f32(i32 56, float %4639, float %4640, float %4641, float %4642, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4644 = or i32 %4575, 32
  %4645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4644, i32 undef)  ; BufferLoad(srv,index,wot)
  %4646 = extractvalue %dx.types.ResRet.f32 %4645, 0
  %4647 = extractvalue %dx.types.ResRet.f32 %4645, 1
  %4648 = extractvalue %dx.types.ResRet.f32 %4645, 2
  %4649 = extractvalue %dx.types.ResRet.f32 %4645, 3
  %4650 = call float @dx.op.dot4.f32(i32 56, float %4646, float %4647, float %4648, float %4649, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4651 = call float @dx.op.unary.f32(i32 27, float %4636)  ; Round_ni(value)
  %4652 = call float @dx.op.unary.f32(i32 6, float %4651)  ; FAbs(value)
  %4653 = call float @dx.op.unary.f32(i32 27, float %4643)  ; Round_ni(value)
  %4654 = call float @dx.op.unary.f32(i32 6, float %4653)  ; FAbs(value)
  %4655 = call float @dx.op.unary.f32(i32 6, float %4650)  ; FAbs(value)
  %4656 = call float @dx.op.unary.f32(i32 27, float %4655)  ; Round_ni(value)
  %4657 = fadd fast float %4654, %4652
  %4658 = fadd fast float %4657, %4656
  %4659 = fcmp fast oeq float %4658, 0.000000e+00
  %4660 = call float @dx.op.dot4.f32(i32 56, float %4632, float %4633, float %4634, float %4635, float %4498, float %4499, float %4500, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4661 = call float @dx.op.dot4.f32(i32 56, float %4639, float %4640, float %4641, float %4642, float %4498, float %4499, float %4500, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4662 = call float @dx.op.dot4.f32(i32 56, float %4632, float %4633, float %4634, float %4635, float %4501, float %4502, float %4503, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4663 = call float @dx.op.dot4.f32(i32 56, float %4639, float %4640, float %4641, float %4642, float %4501, float %4502, float %4503, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4664 = fsub fast float %4660, %4636
  %4665 = fsub fast float %4662, %4636
  %4666 = fsub fast float %4661, %4643
  %4667 = fsub fast float %4663, %4643
  %4668 = call float @dx.op.dot3.f32(i32 55, float %4578, float %4579, float %4580, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4670 = extractvalue %dx.types.CBufRet.f32 %4669, 2
  %4671 = fadd fast float %4670, %4668
  %4672 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4673 = extractvalue %dx.types.CBufRet.f32 %4669, 0
  %4674 = fcmp fast ogt float %4672, %4673
  %4675 = and i1 %4659, %4674
  %4676 = and i1 %4630, %4675
  br i1 %4676, label %4703, label %4677

; <label>:4677                                    ; preds = %5032, %4784, %4703, %4545
  %4678 = phi float [ %4547, %4703 ], [ %4787, %4784 ], [ %4787, %5032 ], [ %4547, %4545 ]
  %4679 = phi float [ %4548, %4703 ], [ %4548, %4784 ], [ %5008, %5032 ], [ %4548, %4545 ]
  %4680 = phi float [ %4549, %4703 ], [ %4549, %4784 ], [ %5006, %5032 ], [ %4549, %4545 ]
  %4681 = phi float [ %4550, %4703 ], [ %4550, %4784 ], [ %4984, %5032 ], [ %4550, %4545 ]
  %4682 = phi float [ %4551, %4703 ], [ %4551, %4784 ], [ %4985, %5032 ], [ %4551, %4545 ]
  %4683 = phi float [ %4552, %4703 ], [ %4552, %4784 ], [ %4986, %5032 ], [ %4552, %4545 ]
  %4684 = phi float [ %4553, %4703 ], [ %4553, %4784 ], [ %4911, %5032 ], [ %4553, %4545 ]
  %4685 = phi float [ %4554, %4703 ], [ %4554, %4784 ], [ %4909, %5032 ], [ %4554, %4545 ]
  %4686 = phi float [ %4555, %4703 ], [ %4555, %4784 ], [ %4954, %5032 ], [ %4555, %4545 ]
  %4687 = phi float [ %4556, %4703 ], [ %4556, %4784 ], [ %4955, %5032 ], [ %4556, %4545 ]
  %4688 = phi float [ %4557, %4703 ], [ %4557, %4784 ], [ %4956, %5032 ], [ %4557, %4545 ]
  %4689 = phi float [ %4558, %4703 ], [ %4558, %4784 ], [ %5042, %5032 ], [ %4558, %4545 ]
  %4690 = phi float [ %4559, %4703 ], [ %4559, %4784 ], [ %5043, %5032 ], [ %4559, %4545 ]
  %4691 = phi float [ %4560, %4703 ], [ %4560, %4784 ], [ %5044, %5032 ], [ %4560, %4545 ]
  %4692 = phi float [ %4561, %4703 ], [ %4561, %4784 ], [ %4890, %5032 ], [ %4561, %4545 ]
  %4693 = phi float [ %4562, %4703 ], [ %4562, %4784 ], [ %4891, %5032 ], [ %4562, %4545 ]
  %4694 = phi float [ %4563, %4703 ], [ %4563, %4784 ], [ %4892, %5032 ], [ %4563, %4545 ]
  %4695 = phi float [ %4564, %4703 ], [ %4564, %4784 ], [ %4964, %5032 ], [ %4564, %4545 ]
  %4696 = phi float [ %4565, %4703 ], [ %4565, %4784 ], [ %4961, %5032 ], [ %4565, %4545 ]
  %4697 = phi float [ %4566, %4703 ], [ %4566, %4784 ], [ %4958, %5032 ], [ %4566, %4545 ]
  %4698 = phi float [ %4567, %4703 ], [ %4567, %4784 ], [ %4907, %5032 ], [ %4567, %4545 ]
  %4699 = phi float [ %4568, %4703 ], [ %4568, %4784 ], [ %4902, %5032 ], [ %4568, %4545 ]
  %4700 = phi float [ %4569, %4703 ], [ %4569, %4784 ], [ %4903, %5032 ], [ %4569, %4545 ]
  %4701 = phi float [ %4570, %4703 ], [ %4570, %4784 ], [ %4904, %5032 ], [ %4570, %4545 ]
  %4702 = icmp eq i32 %4627, %4544
  br i1 %4702, label %5045, label %4545

; <label>:4703                                    ; preds = %4545
  %4704 = extractvalue %dx.types.ResRet.f32 %4597, 3
  %4705 = extractvalue %dx.types.ResRet.f32 %4597, 1
  %4706 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4707 = extractvalue %dx.types.ResRet.f32 %4587, 1
  %4708 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4709 = extractvalue %dx.types.ResRet.i32 %4583, 3
  %4710 = extractvalue %dx.types.ResRet.i32 %4583, 2
  %4711 = add i32 %4709, 0
  %4712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4711, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4714 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4712, %dx.types.Handle %4713, float %4636, float %4643, float undef, float undef, i32 0, i32 0, i32 undef, float %4664, float %4666, float undef, float %4665, float %4667, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4715 = extractvalue %dx.types.ResRet.f32 %4714, 0
  %4716 = fmul fast float %4715, %4708
  %4717 = fadd fast float %4716, %4707
  %4718 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4719 = fmul fast float %4636, %4592
  %4720 = call float @dx.op.tertiary.f32(i32 46, float %4593, float %4643, float %4719)  ; FMad(a,b,c)
  %4721 = fadd fast float %4720, %4706
  %4722 = fmul fast float %4636, %4594
  %4723 = call float @dx.op.tertiary.f32(i32 46, float %4595, float %4643, float %4722)  ; FMad(a,b,c)
  %4724 = fadd fast float %4723, %4705
  %4725 = fmul fast float %4664, %4592
  %4726 = call float @dx.op.tertiary.f32(i32 46, float %4593, float %4666, float %4725)  ; FMad(a,b,c)
  %4727 = fmul fast float %4664, %4594
  %4728 = call float @dx.op.tertiary.f32(i32 46, float %4595, float %4666, float %4727)  ; FMad(a,b,c)
  %4729 = fmul fast float %4665, %4592
  %4730 = call float @dx.op.tertiary.f32(i32 46, float %4593, float %4667, float %4729)  ; FMad(a,b,c)
  %4731 = fmul fast float %4665, %4594
  %4732 = call float @dx.op.tertiary.f32(i32 46, float %4595, float %4667, float %4731)  ; FMad(a,b,c)
  %4733 = add i32 %4710, 0
  %4734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4733, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4735 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4734, %dx.types.Handle %4713, float %4721, float %4724, float undef, float undef, i32 0, i32 0, i32 undef, float %4726, float %4728, float undef, float %4730, float %4732, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4736 = extractvalue %dx.types.ResRet.f32 %4735, 0
  %4737 = and i32 %4628, 1024
  %4738 = icmp ne i32 %4737, 0
  %4739 = fcmp fast ogt float %4736, 0x3FE0101020000000
  %4740 = uitofp i1 %4739 to float
  %4741 = select i1 %4738, float %4740, float %4736
  %4742 = and i32 %4628, 8192
  %4743 = icmp ne i32 %4742, 0
  %4744 = select i1 %4743, float %4704, float 1.000000e+00
  %4745 = fmul fast float %4636, 2.000000e+00
  %4746 = fadd fast float %4745, -1.000000e+00
  %4747 = call float @dx.op.unary.f32(i32 6, float %4746)  ; FAbs(value)
  %4748 = fmul fast float %4747, %4625
  %4749 = fsub fast float %4748, %4625
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4751 = fmul fast float %4643, 2.000000e+00
  %4752 = fadd fast float %4751, -1.000000e+00
  %4753 = call float @dx.op.unary.f32(i32 6, float %4752)  ; FAbs(value)
  %4754 = fmul fast float %4753, %4626
  %4755 = fsub fast float %4754, %4626
  %4756 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4757 = fmul fast float %4655, %4588
  %4758 = fsub fast float %4757, %4588
  %4759 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4760 = fmul fast float %4718, %4744
  %4761 = fmul fast float %4760, %4715
  %4762 = fmul fast float %4761, %4750
  %4763 = fmul fast float %4762, %4741
  %4764 = fmul fast float %4763, %4756
  %4765 = fmul fast float %4764, %4759
  %4766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.f32 %4766, 1
  %4768 = extractvalue %dx.types.CBufRet.f32 %4766, 0
  %4769 = fsub fast float %4672, %4768
  %4770 = fmul fast float %4769, %4767
  %4771 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4772 = fmul fast float %4765, %4589
  %4773 = fadd fast float %4765, %4589
  %4774 = fmul fast float %4773, %4598
  %4775 = fsub fast float %4774, %4598
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4777 = and i32 %4628, 128
  %4778 = icmp ne i32 %4777, 0
  %4779 = select i1 %4778, float %4776, float %4772
  %4780 = fmul fast float %4779, %4771
  %4781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4782 = extractvalue %dx.types.CBufRet.f32 %4781, 0
  %4783 = fcmp fast ugt float %4780, %4782
  br i1 %4783, label %4784, label %4677

; <label>:4784                                    ; preds = %4703
  %4785 = select i1 %4743, float %4780, float 0.000000e+00
  %4786 = fadd fast float %4785, %4547
  %4787 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  br i1 %4743, label %4677, label %4788

; <label>:4788                                    ; preds = %4784
  %4789 = and i32 %4628, 4
  %4790 = and i32 %4628, 8
  %4791 = add i32 %4584, 0
  %4792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4791, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4794 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4792, %dx.types.Handle %4793, float %4721, float %4724, float undef, float undef, i32 0, i32 0, i32 undef, float %4726, float %4728, float undef, float %4730, float %4732, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4795 = extractvalue %dx.types.ResRet.f32 %4794, 0
  %4796 = extractvalue %dx.types.ResRet.f32 %4794, 1
  %4797 = extractvalue %dx.types.ResRet.f32 %4794, 2
  %4798 = extractvalue %dx.types.ResRet.f32 %4794, 3
  %4799 = bitcast float %4610 to i32
  %4800 = and i32 %4799, 255
  %4801 = uitofp i32 %4800 to float
  %4802 = lshr i32 %4799, 8
  %4803 = and i32 %4802, 255
  %4804 = uitofp i32 %4803 to float
  %4805 = fmul fast float %4798, %4801
  %4806 = fadd fast float %4805, %4804
  %4807 = fmul fast float %4806, 0x3F70101000000000
  %4808 = add i32 %4585, 0
  %4809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4808, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4810 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4809, %dx.types.Handle %4793, float %4721, float %4724, float undef, float undef, i32 0, i32 0, i32 undef, float %4726, float %4728, float undef, float %4730, float %4732, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4811 = extractvalue %dx.types.ResRet.f32 %4810, 0
  %4812 = extractvalue %dx.types.ResRet.f32 %4810, 1
  %4813 = extractvalue %dx.types.ResRet.f32 %4810, 2
  %4814 = extractvalue %dx.types.ResRet.f32 %4810, 3
  %4815 = bitcast float %4604 to i32
  %4816 = and i32 %4815, 255
  %4817 = uitofp i32 %4816 to float
  %4818 = lshr i32 %4815, 8
  %4819 = and i32 %4818, 255
  %4820 = uitofp i32 %4819 to float
  %4821 = lshr i32 %4815, 16
  %4822 = and i32 %4821, 255
  %4823 = uitofp i32 %4822 to float
  %4824 = fmul fast float %4823, 0x3F70101000000000
  %4825 = fmul fast float %4811, %4817
  %4826 = fadd fast float %4825, %4820
  %4827 = fmul fast float %4826, 0x3F70101000000000
  %4828 = fadd fast float %4812, -5.000000e-01
  %4829 = fadd fast float %4814, -5.000000e-01
  %4830 = fmul fast float %4828, %4824
  %4831 = fmul fast float %4829, %4824
  %4832 = fadd fast float %4830, 5.000000e-01
  %4833 = fadd fast float %4831, 5.000000e-01
  %4834 = fmul fast float %4795, %4613
  %4835 = fmul fast float %4796, %4614
  %4836 = fmul fast float %4797, %4615
  %4837 = fmul fast float %4832, 2.000000e+00
  %4838 = fadd fast float %4837, -1.000000e+00
  %4839 = fmul fast float %4833, 2.000000e+00
  %4840 = fadd fast float %4839, -1.000000e+00
  %4841 = fadd fast float %4838, %4840
  %4842 = fmul fast float %4841, 5.000000e-01
  %4843 = fsub fast float %4838, %4840
  %4844 = fmul fast float %4843, 5.000000e-01
  %4845 = call float @dx.op.unary.f32(i32 6, float %4842)  ; FAbs(value)
  %4846 = fsub fast float 1.000000e+00, %4845
  %4847 = call float @dx.op.unary.f32(i32 6, float %4844)  ; FAbs(value)
  %4848 = fsub fast float %4846, %4847
  %4849 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4844, float %4848, float %4842, float %4844, float %4848)  ; Dot3(ax,ay,az,bx,by,bz)
  %4850 = call float @dx.op.unary.f32(i32 25, float %4849)  ; Rsqrt(value)
  %4851 = fmul fast float %4842, %4850
  %4852 = fmul fast float %4844, %4850
  %4853 = fmul fast float %4850, %4848
  %4854 = fmul fast float %4853, %4578
  %4855 = fmul fast float %4853, %4579
  %4856 = fmul fast float %4853, %4580
  %4857 = fmul fast float %4851, %4601
  %4858 = fmul fast float %4851, %4602
  %4859 = fmul fast float %4851, %4603
  %4860 = fadd fast float %4857, %4854
  %4861 = fadd fast float %4858, %4855
  %4862 = fadd fast float %4859, %4856
  %4863 = fmul fast float %4852, %4607
  %4864 = fmul fast float %4852, %4608
  %4865 = fmul fast float %4852, %4609
  %4866 = fadd fast float %4860, %4863
  %4867 = fadd fast float %4861, %4864
  %4868 = fadd fast float %4862, %4865
  %4869 = call float @dx.op.dot3.f32(i32 55, float %4866, float %4867, float %4868, float %4866, float %4867, float %4868)  ; Dot3(ax,ay,az,bx,by,bz)
  %4870 = call float @dx.op.unary.f32(i32 25, float %4869)  ; Rsqrt(value)
  %4871 = fmul fast float %4866, %4870
  %4872 = fmul fast float %4867, %4870
  %4873 = fmul fast float %4868, %4870
  %4874 = icmp ne i32 %4790, 0
  %4875 = select i1 %4874, float 1.000000e+00, float 0.000000e+00
  %4876 = fmul fast float %4780, %4875
  %4877 = and i32 %4628, 1
  %4878 = icmp eq i32 %4877, 0
  br i1 %4878, label %4879, label %4883

; <label>:4879                                    ; preds = %4788
  %4880 = fsub fast float %4871, %4561
  %4881 = fsub fast float %4872, %4562
  %4882 = fsub fast float %4873, %4563
  br label %4883

; <label>:4883                                    ; preds = %4879, %4788
  %4884 = phi float [ %4880, %4879 ], [ %4871, %4788 ]
  %4885 = phi float [ %4881, %4879 ], [ %4872, %4788 ]
  %4886 = phi float [ %4882, %4879 ], [ %4873, %4788 ]
  %4887 = fmul float %4886, %4876
  %4888 = fmul float %4885, %4876
  %4889 = fmul float %4884, %4876
  %4890 = fadd fast float %4889, %4561
  %4891 = fadd fast float %4888, %4562
  %4892 = fadd fast float %4887, %4563
  %4893 = icmp ne i32 %4789, 0
  %4894 = select i1 %4893, float 1.000000e+00, float 0.000000e+00
  %4895 = fmul fast float %4780, %4894
  %4896 = fsub fast float %4834, %4568
  %4897 = fsub fast float %4835, %4569
  %4898 = fsub fast float %4836, %4570
  %4899 = fmul fast float %4896, %4895
  %4900 = fmul fast float %4897, %4895
  %4901 = fmul fast float %4898, %4895
  %4902 = fadd fast float %4899, %4568
  %4903 = fadd fast float %4900, %4569
  %4904 = fadd fast float %4901, %4570
  %4905 = fsub fast float %4807, %4567
  %4906 = fmul fast float %4905, %4895
  %4907 = fadd fast float %4906, %4567
  %4908 = fmul fast float %4895, %4554
  %4909 = fsub fast float %4554, %4908
  %4910 = fmul fast float %4895, %4553
  %4911 = fsub fast float %4553, %4910
  %4912 = bitcast float %4622 to i32
  %4913 = lshr i32 %4912, 16
  %4914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4913)  ; LegacyF16ToF32(value)
  %4915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %4916 = extractvalue %dx.types.ResRet.i32 %4915, 0
  %4917 = and i32 %4916, 1
  %4918 = icmp eq i32 %4917, 0
  br i1 %4918, label %4919, label %4944

; <label>:4919                                    ; preds = %4883
  %4920 = fadd fast float %4807, 0xBFB99999A0000000
  %4921 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4922 = fmul fast float %4921, 0x3FF1C71C80000000
  %4923 = fsub fast float 1.000000e+00, %4922
  %4924 = call float @dx.op.unary.f32(i32 7, float %4923)  ; Saturate(value)
  %4925 = fmul fast float %4924, %4834
  %4926 = fmul fast float %4924, %4835
  %4927 = fmul fast float %4924, %4836
  %4928 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4929 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4930 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4931 = call float @dx.op.binary.f32(i32 35, float %4929, float %4930)  ; FMax(a,b)
  %4932 = call float @dx.op.binary.f32(i32 35, float %4928, float %4931)  ; FMax(a,b)
  %4933 = fcmp fast ogt float %4932, 0.000000e+00
  %4934 = bitcast float %4932 to i32
  %4935 = sub nsw i32 2129859010, %4934
  %4936 = bitcast i32 %4935 to float
  %4937 = select i1 %4933, float %4936, float 0.000000e+00
  %4938 = fmul fast float %4928, %4914
  %4939 = fmul fast float %4929, %4914
  %4940 = fmul fast float %4930, %4914
  %4941 = fmul fast float %4938, %4937
  %4942 = fmul fast float %4939, %4937
  %4943 = fmul fast float %4940, %4937
  br label %4944

; <label>:4944                                    ; preds = %4919, %4883
  %4945 = phi float [ %4914, %4883 ], [ %4941, %4919 ]
  %4946 = phi float [ %4914, %4883 ], [ %4942, %4919 ]
  %4947 = phi float [ %4914, %4883 ], [ %4943, %4919 ]
  %4948 = fsub fast float %4945, %4555
  %4949 = fsub fast float %4946, %4556
  %4950 = fsub fast float %4947, %4557
  %4951 = fmul fast float %4948, %4895
  %4952 = fmul fast float %4949, %4895
  %4953 = fmul fast float %4950, %4895
  %4954 = fadd fast float %4951, %4555
  %4955 = fadd fast float %4952, %4556
  %4956 = fadd fast float %4953, %4557
  %4957 = fadd fast float %4780, %4566
  %4958 = call float @dx.op.unary.f32(i32 7, float %4957)  ; Saturate(value)
  %4959 = fsub fast float %4827, %4565
  %4960 = fmul fast float %4959, %4876
  %4961 = fadd fast float %4960, %4565
  %4962 = fsub fast float %4813, %4564
  %4963 = fmul fast float %4962, %4876
  %4964 = fadd fast float %4963, %4564
  br i1 %4878, label %4973, label %4965

; <label>:4965                                    ; preds = %4944
  %4966 = and i32 %4628, 32768
  %4967 = icmp eq i32 %4966, 0
  br i1 %4967, label %4983, label %4968

; <label>:4968                                    ; preds = %4965
  %4969 = fmul fast float %4876, 1.270000e+02
  %4970 = fadd fast float %4969, %4550
  %4971 = fadd fast float %4969, %4551
  %4972 = fadd fast float %4969, %4552
  br label %4983

; <label>:4973                                    ; preds = %4944
  %4974 = fsub fast float 1.270000e+02, %4550
  %4975 = fsub fast float 1.270000e+02, %4551
  %4976 = fsub fast float 1.270000e+02, %4552
  %4977 = fmul fast float %4876, %4974
  %4978 = fmul fast float %4876, %4975
  %4979 = fmul fast float %4876, %4976
  %4980 = fadd fast float %4977, %4550
  %4981 = fadd fast float %4978, %4551
  %4982 = fadd fast float %4979, %4552
  br label %4983

; <label>:4983                                    ; preds = %4973, %4968, %4965
  %4984 = phi float [ %4970, %4968 ], [ %4550, %4965 ], [ %4980, %4973 ]
  %4985 = phi float [ %4971, %4968 ], [ %4551, %4965 ], [ %4981, %4973 ]
  %4986 = phi float [ %4972, %4968 ], [ %4552, %4965 ], [ %4982, %4973 ]
  %4987 = call float @dx.op.dot3.f32(i32 55, float %4834, float %4835, float %4836, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 0
  %4990 = extractvalue %dx.types.CBufRet.f32 %4988, 1
  %4991 = fmul fast float %4990, %4987
  %4992 = fadd fast float %4991, %4989
  %4993 = call float @dx.op.unary.f32(i32 7, float %4992)  ; Saturate(value)
  %4994 = bitcast float %4616 to i32
  %4995 = and i32 %4994, 65535
  %4996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4995)  ; LegacyF16ToF32(value)
  %4997 = lshr i32 %4994, 16
  %4998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4997)  ; LegacyF16ToF32(value)
  %4999 = fcmp fast oge float %4996, 0.000000e+00
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 0
  %5002 = select i1 %4999, float %4996, float %5001
  %5003 = fadd fast float %5002, %4998
  %5004 = fsub fast float %4993, %4549
  %5005 = fmul fast float %5004, %4780
  %5006 = fadd fast float %5005, %4549
  %5007 = fmul fast float %5003, %4780
  %5008 = call float @dx.op.binary.f32(i32 35, float %4548, float %5007)  ; FMax(a,b)
  %5009 = and i32 %4628, 16
  %5010 = icmp eq i32 %5009, 0
  br i1 %5010, label %5032, label %5011

; <label>:5011                                    ; preds = %4983
  %5012 = add i32 %4619, 0
  %5013 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5012, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5014 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5013, %dx.types.Handle %4793, float %4721, float %4724, float undef, float undef, i32 0, i32 0, i32 undef, float %4726, float %4728, float undef, float %4730, float %4732, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5015 = extractvalue %dx.types.ResRet.f32 %5014, 0
  %5016 = extractvalue %dx.types.ResRet.f32 %5014, 1
  %5017 = extractvalue %dx.types.ResRet.f32 %5014, 2
  %5018 = and i32 %4912, 65535
  %5019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5018)  ; LegacyF16ToF32(value)
  %5020 = fmul fast float %5015, %4613
  %5021 = fmul fast float %5016, %4614
  %5022 = fmul fast float %5017, %4615
  %5023 = and i32 %4628, 16384
  %5024 = icmp ne i32 %5023, 0
  %5025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5026 = extractvalue %dx.types.CBufRet.f32 %5025, 0
  %5027 = select i1 %5024, float %5026, float 1.000000e+00
  %5028 = fmul fast float %5027, %5019
  %5029 = fmul fast float %5020, %5028
  %5030 = fmul fast float %5021, %5028
  %5031 = fmul fast float %5022, %5028
  br label %5032

; <label>:5032                                    ; preds = %5011, %4983
  %5033 = phi float [ %5029, %5011 ], [ 0.000000e+00, %4983 ]
  %5034 = phi float [ %5030, %5011 ], [ 0.000000e+00, %4983 ]
  %5035 = phi float [ %5031, %5011 ], [ 0.000000e+00, %4983 ]
  %5036 = fsub fast float %5033, %4558
  %5037 = fsub fast float %5034, %4559
  %5038 = fsub fast float %5035, %4560
  %5039 = fmul fast float %5036, %4780
  %5040 = fmul fast float %5037, %4780
  %5041 = fmul fast float %5038, %4780
  %5042 = fadd fast float %5039, %4558
  %5043 = fadd fast float %5040, %4559
  %5044 = fadd fast float %5041, %4560
  br label %4677

; <label>:5045                                    ; preds = %4677
  br label %5046

; <label>:5046                                    ; preds = %5045, %4491
  %5047 = phi float [ 0.000000e+00, %4491 ], [ %4678, %5045 ]
  %5048 = phi float [ %4460, %4491 ], [ %4679, %5045 ]
  %5049 = phi float [ %4452, %4491 ], [ %4680, %5045 ]
  %5050 = phi float [ %4445, %4491 ], [ %4681, %5045 ]
  %5051 = phi float [ %4446, %4491 ], [ %4682, %5045 ]
  %5052 = phi float [ %4447, %4491 ], [ %4683, %5045 ]
  %5053 = phi float [ 0.000000e+00, %4491 ], [ %4684, %5045 ]
  %5054 = phi float [ 0.000000e+00, %4491 ], [ %4685, %5045 ]
  %5055 = phi float [ %4442, %4491 ], [ %4686, %5045 ]
  %5056 = phi float [ %4443, %4491 ], [ %4687, %5045 ]
  %5057 = phi float [ %4444, %4491 ], [ %4688, %5045 ]
  %5058 = phi float [ %4439, %4491 ], [ %4689, %5045 ]
  %5059 = phi float [ %4440, %4491 ], [ %4690, %5045 ]
  %5060 = phi float [ %4441, %4491 ], [ %4691, %5045 ]
  %5061 = phi float [ %4486, %4491 ], [ %4692, %5045 ]
  %5062 = phi float [ %4487, %4491 ], [ %4693, %5045 ]
  %5063 = phi float [ %4488, %4491 ], [ %4694, %5045 ]
  %5064 = phi float [ %4450, %4491 ], [ %4695, %5045 ]
  %5065 = phi float [ %4449, %4491 ], [ %4696, %5045 ]
  %5066 = phi float [ 0.000000e+00, %4491 ], [ %4697, %5045 ]
  %5067 = phi float [ %4448, %4491 ], [ %4698, %5045 ]
  %5068 = phi float [ %4436, %4491 ], [ %4699, %5045 ]
  %5069 = phi float [ %4437, %4491 ], [ %4700, %5045 ]
  %5070 = phi float [ %4438, %4491 ], [ %4701, %5045 ]
  %5071 = call float @dx.op.dot3.f32(i32 55, float %5061, float %5062, float %5063, float %5061, float %5062, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5072 = call float @dx.op.unary.f32(i32 25, float %5071)  ; Rsqrt(value)
  %5073 = fmul fast float %5072, %5061
  %5074 = fmul fast float %5072, %5062
  %5075 = fmul fast float %5072, %5063
  %5076 = fadd fast float %5066, %1277
  %5077 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5078 = call float @dx.op.dot3.f32(i32 55, float %5073, float %5074, float %5075, float %5073, float %5074, float %5075)  ; Dot3(ax,ay,az,bx,by,bz)
  %5079 = call float @dx.op.unary.f32(i32 25, float %5078)  ; Rsqrt(value)
  %5080 = fmul fast float %5079, %5073
  %5081 = fmul fast float %5079, %5074
  %5082 = fmul fast float %5079, %5075
  br label %5083

; <label>:5083                                    ; preds = %5046, %4433
  %5084 = phi float [ %5080, %5046 ], [ %4486, %4433 ]
  %5085 = phi float [ %5081, %5046 ], [ %4487, %4433 ]
  %5086 = phi float [ %5082, %5046 ], [ %4488, %4433 ]
  %5087 = phi float [ %5068, %5046 ], [ %4436, %4433 ]
  %5088 = phi float [ %5069, %5046 ], [ %4437, %4433 ]
  %5089 = phi float [ %5070, %5046 ], [ %4438, %4433 ]
  %5090 = phi float [ %5055, %5046 ], [ %4442, %4433 ]
  %5091 = phi float [ %5056, %5046 ], [ %4443, %4433 ]
  %5092 = phi float [ %5057, %5046 ], [ %4444, %4433 ]
  %5093 = phi float [ %5058, %5046 ], [ %4439, %4433 ]
  %5094 = phi float [ %5059, %5046 ], [ %4440, %4433 ]
  %5095 = phi float [ %5060, %5046 ], [ %4441, %4433 ]
  %5096 = phi float [ %5050, %5046 ], [ %4445, %4433 ]
  %5097 = phi float [ %5051, %5046 ], [ %4446, %4433 ]
  %5098 = phi float [ %5052, %5046 ], [ %4447, %4433 ]
  %5099 = phi float [ %5067, %5046 ], [ %4448, %4433 ]
  %5100 = phi float [ %5077, %5046 ], [ %1277, %4433 ]
  %5101 = phi float [ %5065, %5046 ], [ %4449, %4433 ]
  %5102 = phi float [ %5064, %5046 ], [ %4450, %4433 ]
  %5103 = phi float [ %5054, %5046 ], [ 0.000000e+00, %4433 ]
  %5104 = phi float [ %5053, %5046 ], [ 0.000000e+00, %4433 ]
  %5105 = phi float [ %5047, %5046 ], [ 0.000000e+00, %4433 ]
  %5106 = phi float [ %5048, %5046 ], [ %4460, %4433 ]
  %5107 = phi float [ %5049, %5046 ], [ %4452, %4433 ]
  %5108 = add i32 %50, 392
  %5109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %5108, i32 undef)  ; BufferLoad(srv,index,wot)
  %5110 = extractvalue %dx.types.ResRet.i32 %5109, 0
  %5111 = extractvalue %dx.types.ResRet.i32 %5109, 1
  %5112 = extractvalue %dx.types.ResRet.i32 %5109, 2
  %5113 = extractvalue %dx.types.ResRet.i32 %5109, 3
  %5114 = bitcast i32 %5110 to float
  %5115 = bitcast i32 %5111 to float
  %5116 = bitcast i32 %5112 to float
  %5117 = bitcast i32 %5113 to float
  %5118 = fsub fast float %5087, %5114
  %5119 = fsub fast float %5088, %5115
  %5120 = fsub fast float %5089, %5116
  %5121 = fmul fast float %5118, %188
  %5122 = fmul fast float %5119, %188
  %5123 = fmul fast float %5120, %188
  %5124 = fadd fast float %5121, %5114
  %5125 = fadd fast float %5122, %5115
  %5126 = fadd fast float %5123, %5116
  %5127 = fsub fast float %5100, %5117
  %5128 = fmul fast float %5127, %188
  %5129 = fadd fast float %5128, %5117
  %5130 = fadd fast float %5099, 0xBFB99999A0000000
  %5131 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5132 = fmul fast float %5131, 0x3FF1C71C80000000
  %5133 = call float @dx.op.binary.f32(i32 36, float %5099, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5134 = fsub fast float 1.000000e+00, %5132
  %5135 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5136 = fmul fast float %5124, %5135
  %5137 = fmul fast float %5125, %5135
  %5138 = fmul fast float %5126, %5135
  %5139 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5140 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5141 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5142 = fmul fast float %5124, %5132
  %5143 = fmul fast float %5125, %5132
  %5144 = fmul fast float %5126, %5132
  %5145 = fadd fast float %5142, %5133
  %5146 = fadd fast float %5143, %5133
  %5147 = fadd fast float %5144, %5133
  %5148 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5149 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5150 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5151 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5153 = extractvalue %dx.types.ResRet.i32 %5152, 0
  %5154 = and i32 %5153, 1
  %5155 = icmp eq i32 %5154, 0
  br i1 %5155, label %5170, label %5156

; <label>:5156                                    ; preds = %5083
  %5157 = call float @dx.op.binary.f32(i32 35, float %5140, float %5141)  ; FMax(a,b)
  %5158 = call float @dx.op.binary.f32(i32 35, float %5139, float %5157)  ; FMax(a,b)
  %5159 = fcmp fast ogt float %5158, 0.000000e+00
  %5160 = bitcast float %5158 to i32
  %5161 = sub nsw i32 2129859010, %5160
  %5162 = bitcast i32 %5161 to float
  %5163 = select i1 %5159, float %5162, float 0.000000e+00
  %5164 = fmul fast float %5139, %5090
  %5165 = fmul fast float %5140, %5091
  %5166 = fmul fast float %5141, %5092
  %5167 = fmul fast float %5164, %5163
  %5168 = fmul fast float %5165, %5163
  %5169 = fmul fast float %5166, %5163
  br label %5170

; <label>:5170                                    ; preds = %5156, %5083
  %5171 = phi float [ %5167, %5156 ], [ %5090, %5083 ]
  %5172 = phi float [ %5168, %5156 ], [ %5091, %5083 ]
  %5173 = phi float [ %5169, %5156 ], [ %5092, %5083 ]
  %5174 = call float @dx.op.binary.f32(i32 36, float %5096, float 1.270000e+02)  ; FMin(a,b)
  %5175 = call float @dx.op.binary.f32(i32 36, float %5097, float 1.270000e+02)  ; FMin(a,b)
  %5176 = call float @dx.op.binary.f32(i32 36, float %5098, float 1.270000e+02)  ; FMin(a,b)
  %5177 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.i32 %5177, 3
  %5179 = and i32 %5178, 8
  %5180 = icmp ne i32 %5179, 0
  %5181 = call float @dx.op.binary.f32(i32 35, float %5139, float %5124)  ; FMax(a,b)
  %5182 = call float @dx.op.binary.f32(i32 35, float %5140, float %5124)  ; FMax(a,b)
  %5183 = call float @dx.op.binary.f32(i32 35, float %5141, float %5124)  ; FMax(a,b)
  %5184 = call float @dx.op.dot3.f32(i32 55, float %5139, float %5140, float %5141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5185 = select i1 %247, float %5124, float %5139
  %5186 = select i1 %247, float %5184, float %5140
  %5187 = select i1 %247, float 1.000000e+00, float %5141
  %5188 = select i1 %5180, float %5181, float %5185
  %5189 = select i1 %5180, float %5182, float %5186
  %5190 = select i1 %5180, float %5183, float %5187
  %5191 = call float @dx.op.dot3.f32(i32 55, float %5171, float %5172, float %5173, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5192 = select i1 %247, float %5191, float %5171
  %5193 = select i1 %247, float %5191, float %5172
  %5194 = select i1 %247, float %5191, float %5173
  %5195 = and i32 %223, 3
  %5196 = select i1 %217, i32 %5195, i32 0
  %5197 = icmp eq i32 %5196, 1
  br i1 %5197, label %5198, label %5274

; <label>:5198                                    ; preds = %5170
  %5199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.f32 %5199, 0
  %5201 = extractvalue %dx.types.CBufRet.f32 %5199, 1
  %5202 = fadd fast float %5200, %154
  %5203 = fadd fast float %5201, %155
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 0
  %5206 = extractvalue %dx.types.CBufRet.f32 %5204, 1
  %5207 = fsub fast float %5202, %5205
  %5208 = fsub fast float %5203, %5206
  %5209 = fmul fast float %5207, %5207
  %5210 = fmul fast float %5208, %5208
  %5211 = fadd fast float %5209, %5210
  %5212 = call float @dx.op.unary.f32(i32 24, float %5211)  ; Sqrt(value)
  %5213 = extractvalue %dx.types.CBufRet.f32 %5204, 2
  %5214 = fcmp fast olt float %5212, %5213
  br i1 %5214, label %5215, label %5268

; <label>:5215                                    ; preds = %5198
  %5216 = extractvalue %dx.types.CBufRet.f32 %5199, 2
  %5217 = fadd fast float %5216, %156
  %5218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5219 = extractvalue %dx.types.CBufRet.f32 %5218, 0
  %5220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5221 = extractvalue %dx.types.CBufRet.f32 %5220, 0
  %5222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.f32 %5222, 0
  %5224 = extractvalue %dx.types.CBufRet.f32 %5218, 1
  %5225 = extractvalue %dx.types.CBufRet.f32 %5220, 1
  %5226 = extractvalue %dx.types.CBufRet.f32 %5222, 1
  %5227 = extractvalue %dx.types.CBufRet.f32 %5218, 3
  %5228 = extractvalue %dx.types.CBufRet.f32 %5220, 3
  %5229 = extractvalue %dx.types.CBufRet.f32 %5222, 3
  %5230 = fadd fast float %5227, %5202
  %5231 = fadd fast float %5228, %5203
  %5232 = fadd fast float %5217, %5229
  %5233 = fmul fast float %5230, %5219
  %5234 = call float @dx.op.tertiary.f32(i32 46, float %5231, float %5221, float %5233)  ; FMad(a,b,c)
  %5235 = call float @dx.op.tertiary.f32(i32 46, float %5232, float %5223, float %5234)  ; FMad(a,b,c)
  %5236 = fmul fast float %5230, %5224
  %5237 = call float @dx.op.tertiary.f32(i32 46, float %5231, float %5225, float %5236)  ; FMad(a,b,c)
  %5238 = call float @dx.op.tertiary.f32(i32 46, float %5232, float %5226, float %5237)  ; FMad(a,b,c)
  %5239 = fsub fast float %5235, %5227
  %5240 = fsub fast float %5238, %5228
  %5241 = fsub fast float %5239, %5205
  %5242 = fadd fast float %5241, %5213
  %5243 = fsub fast float %5240, %5206
  %5244 = fadd fast float %5243, %5213
  %5245 = extractvalue %dx.types.CBufRet.f32 %5204, 3
  %5246 = fmul fast float %5242, %5245
  %5247 = fmul fast float %5244, %5245
  %5248 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5249 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5250 = fsub fast float 1.000000e+00, %5248
  %5251 = fsub fast float 1.000000e+00, %5249
  %5252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %5250, float %5251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5253 = extractvalue %dx.types.ResRet.f32 %5252, 0
  %5254 = fcmp fast ugt float %5253, 0.000000e+00
  br i1 %5254, label %5255, label %5268

; <label>:5255                                    ; preds = %5215
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 2
  %5258 = fmul fast float %5257, %5253
  %5259 = extractvalue %dx.types.CBufRet.f32 %5256, 3
  %5260 = fadd fast float %5259, %5258
  %5261 = extractvalue %dx.types.CBufRet.f32 %5222, 2
  %5262 = fadd fast float %5260, %5229
  %5263 = fmul fast float %5235, %5223
  %5264 = call float @dx.op.tertiary.f32(i32 46, float %5238, float %5226, float %5263)  ; FMad(a,b,c)
  %5265 = call float @dx.op.tertiary.f32(i32 46, float %5262, float %5261, float %5264)  ; FMad(a,b,c)
  %5266 = fsub fast float %5265, %5229
  %5267 = fsub fast float %5266, %5216
  br label %5268

; <label>:5268                                    ; preds = %5255, %5215, %5198
  %5269 = phi i1 [ true, %5255 ], [ false, %5215 ], [ false, %5198 ]
  %5270 = phi float [ %5267, %5255 ], [ -1.310720e+05, %5215 ], [ -1.310720e+05, %5198 ]
  %5271 = fsub fast float %5270, %156
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = select i1 %5269, float %5272, float 1.000000e+00
  br label %5274

; <label>:5274                                    ; preds = %5268, %5170
  %5275 = phi float [ %5273, %5268 ], [ 0.000000e+00, %5170 ]
  %5276 = icmp eq i32 %5196, 3
  %5277 = select i1 %5276, float 1.000000e+00, float %5275
  %5278 = call float @dx.op.binary.f32(i32 35, float %5105, float %5277)  ; FMax(a,b)
  %5279 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5280 = fcmp fast une float %5279, 0.000000e+00
  %5281 = fsub fast float -0.000000e+00, %174
  %5282 = fsub fast float -0.000000e+00, %175
  %5283 = fsub fast float -0.000000e+00, %176
  br i1 %5280, label %5284, label %5446

; <label>:5284                                    ; preds = %5274
  %5285 = call float @dx.op.dot3.f32(i32 55, float %5281, float %5282, float %5283, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5286 = fmul fast float %5279, 2.500000e+00
  %5287 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5288 = fmul fast float %5279, 0x4013FFFFE0000000
  %5289 = fadd fast float %5288, 0xBFFFFFFFE0000000
  %5290 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5291 = fmul fast float %5279, 0x4004000020000000
  %5292 = fadd fast float %5291, 0xBFF8000040000000
  %5293 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5294 = call float @dx.op.unary.f32(i32 7, float %5287)  ; Saturate(value)
  %5295 = fmul fast float %5130, 1.000000e+01
  %5296 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5297 = fmul fast float %5296, 2.000000e+00
  %5298 = fsub fast float 3.000000e+00, %5297
  %5299 = fmul fast float %5296, %5296
  %5300 = fmul fast float %5299, %5298
  %5301 = fsub fast float 1.000000e+00, %5300
  %5302 = fsub fast float 0x3FE3333340000000, %5151
  %5303 = fmul fast float %5302, 0x400AAAAAA0000000
  %5304 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5305 = fmul fast float %5301, %5304
  %5306 = fmul fast float %5188, 0x3FEA2B8620000000
  %5307 = fmul fast float %5189, 0x3FEA2B8620000000
  %5308 = fmul fast float %5190, 0x3FEA2B8620000000
  %5309 = fadd fast float %5306, 0x3FC81DFBA0000000
  %5310 = fmul fast float %5309, %5188
  %5311 = fadd fast float %5310, 0x3F910E6020000000
  %5312 = fadd fast float %5307, 0x3FC81DFBA0000000
  %5313 = fmul fast float %5312, %5189
  %5314 = fadd fast float %5313, 0x3F910E6020000000
  %5315 = fadd fast float %5308, 0x3FC81DFBA0000000
  %5316 = fmul fast float %5315, %5190
  %5317 = fadd fast float %5316, 0x3F910E6020000000
  %5318 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5319 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5320 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  %5321 = fsub fast float %5318, %5188
  %5322 = fsub fast float %5319, %5189
  %5323 = fsub fast float %5320, %5190
  %5324 = fmul fast float %5321, %5294
  %5325 = fmul fast float %5324, %5305
  %5326 = fmul fast float %5322, %5294
  %5327 = fmul fast float %5326, %5305
  %5328 = fmul fast float %5323, %5294
  %5329 = fmul fast float %5328, %5305
  %5330 = fadd fast float %5325, %5188
  %5331 = fadd fast float %5327, %5189
  %5332 = fadd fast float %5329, %5190
  %5333 = fmul fast float %5102, %5102
  %5334 = fmul fast float %5333, %5333
  %5335 = fadd fast float %5290, 1.000000e+00
  %5336 = fsub fast float %5335, %5305
  %5337 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5338 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = call float @dx.op.unary.f32(i32 7, float %5338)  ; Saturate(value)
  %5340 = fsub fast float 1.000000e+00, %5334
  %5341 = call float @dx.op.binary.f32(i32 36, float %5337, float %5340)  ; FMin(a,b)
  %5342 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5343 = call float @dx.op.binary.f32(i32 35, float %5341, float %5342)  ; FMax(a,b)
  %5344 = fadd fast float %5339, 0xBFE4CCCCC0000000
  %5345 = fmul fast float %5344, 0x4006DB6DA0000000
  %5346 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5347 = fmul fast float %5346, 2.000000e+00
  %5348 = fsub fast float 3.000000e+00, %5347
  %5349 = bitcast float %5148 to i32
  %5350 = ashr i32 %5349, 1
  %5351 = add nsw i32 %5350, 532487669
  %5352 = bitcast i32 %5351 to float
  %5353 = fsub fast float 1.000000e+00, %5352
  %5354 = bitcast float %5353 to i32
  %5355 = sub nsw i32 2129859010, %5354
  %5356 = bitcast i32 %5355 to float
  %5357 = fmul fast float %5356, 2.000000e+00
  %5358 = bitcast float %5149 to i32
  %5359 = ashr i32 %5358, 1
  %5360 = add nsw i32 %5359, 532487669
  %5361 = bitcast i32 %5360 to float
  %5362 = fsub fast float 1.000000e+00, %5361
  %5363 = bitcast float %5362 to i32
  %5364 = sub nsw i32 2129859010, %5363
  %5365 = bitcast i32 %5364 to float
  %5366 = fmul fast float %5365, 2.000000e+00
  %5367 = bitcast float %5150 to i32
  %5368 = ashr i32 %5367, 1
  %5369 = add nsw i32 %5368, 532487669
  %5370 = bitcast i32 %5369 to float
  %5371 = fsub fast float 1.000000e+00, %5370
  %5372 = bitcast float %5371 to i32
  %5373 = sub nsw i32 2129859010, %5372
  %5374 = bitcast i32 %5373 to float
  %5375 = fmul fast float %5374, 2.000000e+00
  %5376 = fsub fast float 0x4002A9FBE0000000, %5357
  %5377 = fadd fast float %5357, 0x3FD54FDF00000000
  %5378 = bitcast float %5377 to i32
  %5379 = sub nsw i32 2129859010, %5378
  %5380 = bitcast i32 %5379 to float
  %5381 = fmul fast float %5380, %5376
  %5382 = fmul fast float %5381, %5381
  %5383 = fsub fast float 0x4002A9FBE0000000, %5366
  %5384 = fadd fast float %5366, 0x3FD54FDF00000000
  %5385 = bitcast float %5384 to i32
  %5386 = sub nsw i32 2129859010, %5385
  %5387 = bitcast i32 %5386 to float
  %5388 = fmul fast float %5387, %5383
  %5389 = fmul fast float %5388, %5388
  %5390 = fsub fast float 0x4002A9FBE0000000, %5375
  %5391 = fadd fast float %5375, 0x3FD54FDF00000000
  %5392 = bitcast float %5391 to i32
  %5393 = sub nsw i32 2129859010, %5392
  %5394 = bitcast i32 %5393 to float
  %5395 = fmul fast float %5394, %5390
  %5396 = fmul fast float %5395, %5395
  %5397 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5382)  ; FMax(a,b)
  %5398 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5389)  ; FMax(a,b)
  %5399 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5396)  ; FMax(a,b)
  %5400 = fsub fast float 1.000000e+00, %5285
  %5401 = fadd fast float %5400, %5301
  %5402 = call float @dx.op.unary.f32(i32 7, float %5401)  ; Saturate(value)
  %5403 = fsub fast float 1.000000e+00, %5277
  %5404 = fmul fast float %5343, %5403
  %5405 = fmul fast float %5346, %5346
  %5406 = fmul fast float %5405, %5404
  %5407 = fmul fast float %5406, %5348
  %5408 = fmul fast float %5403, 0xBFE99999A0000000
  %5409 = fmul fast float %5408, %5294
  %5410 = fmul fast float %5409, %5305
  %5411 = fadd fast float %5410, 1.000000e+00
  %5412 = fadd fast float %5151, -1.000000e+00
  %5413 = fmul fast float %5411, %5412
  %5414 = fadd fast float %5413, 1.000000e+00
  %5415 = fsub fast float %5397, %5148
  %5416 = fsub fast float %5398, %5149
  %5417 = fsub fast float %5399, %5150
  %5418 = fmul fast float %5407, %5415
  %5419 = fmul fast float %5407, %5416
  %5420 = fmul fast float %5407, %5417
  %5421 = fadd fast float %5418, %5148
  %5422 = fadd fast float %5419, %5149
  %5423 = fadd fast float %5420, %5150
  %5424 = fsub fast float %106, %5084
  %5425 = fsub fast float %107, %5085
  %5426 = fsub fast float %108, %5086
  %5427 = fmul fast float %5407, %5424
  %5428 = fmul fast float %5407, %5425
  %5429 = fmul fast float %5407, %5426
  %5430 = fadd fast float %5427, %5084
  %5431 = fadd fast float %5428, %5085
  %5432 = fadd fast float %5429, %5086
  %5433 = fmul fast float %5407, %5402
  %5434 = call float @dx.op.unary.f32(i32 7, float %5414)  ; Saturate(value)
  %5435 = fsub fast float 1.000000e+00, %5434
  %5436 = fmul fast float %5433, %5435
  %5437 = fadd fast float %5436, %5434
  %5438 = fsub fast float 1.000000e+00, %5102
  %5439 = fmul fast float %5407, %5438
  %5440 = fadd fast float %5439, %5102
  %5441 = call float @dx.op.dot3.f32(i32 55, float %5430, float %5431, float %5432, float %5430, float %5431, float %5432)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = call float @dx.op.unary.f32(i32 25, float %5441)  ; Rsqrt(value)
  %5443 = fmul fast float %5430, %5442
  %5444 = fmul fast float %5431, %5442
  %5445 = fmul fast float %5432, %5442
  br label %5446

; <label>:5446                                    ; preds = %5284, %5274
  %5447 = phi float [ %5330, %5284 ], [ %5188, %5274 ]
  %5448 = phi float [ %5331, %5284 ], [ %5189, %5274 ]
  %5449 = phi float [ %5332, %5284 ], [ %5190, %5274 ]
  %5450 = phi float [ %5421, %5284 ], [ %5148, %5274 ]
  %5451 = phi float [ %5422, %5284 ], [ %5149, %5274 ]
  %5452 = phi float [ %5423, %5284 ], [ %5150, %5274 ]
  %5453 = phi float [ %5443, %5284 ], [ %5084, %5274 ]
  %5454 = phi float [ %5444, %5284 ], [ %5085, %5274 ]
  %5455 = phi float [ %5445, %5284 ], [ %5086, %5274 ]
  %5456 = phi float [ %5437, %5284 ], [ %5151, %5274 ]
  %5457 = phi float [ %5440, %5284 ], [ %5102, %5274 ]
  %5458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5459 = extractvalue %dx.types.CBufRet.f32 %5458, 2
  %5460 = extractvalue %dx.types.CBufRet.f32 %5458, 3
  %5461 = fmul fast float %124, %5459
  %5462 = fmul fast float %126, %5460
  %5463 = fsub fast float 1.000000e+00, %5461
  %5464 = fsub fast float 1.000000e+00, %5462
  %5465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5466 = extractvalue %dx.types.CBufRet.f32 %5465, 0
  %5467 = extractvalue %dx.types.CBufRet.f32 %5465, 1
  %5468 = extractvalue %dx.types.CBufRet.f32 %5465, 2
  %5469 = fmul fast float %5463, %5466
  %5470 = fmul fast float %5463, %5467
  %5471 = fmul fast float %5463, %5468
  %5472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5473 = extractvalue %dx.types.CBufRet.f32 %5472, 0
  %5474 = extractvalue %dx.types.CBufRet.f32 %5472, 1
  %5475 = extractvalue %dx.types.CBufRet.f32 %5472, 2
  %5476 = fmul fast float %5464, %5473
  %5477 = fmul fast float %5464, %5474
  %5478 = fmul fast float %5464, %5475
  %5479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5479, 0
  %5481 = extractvalue %dx.types.CBufRet.f32 %5479, 1
  %5482 = extractvalue %dx.types.CBufRet.f32 %5479, 2
  %5483 = fadd fast float %5476, %5480
  %5484 = fadd fast float %5483, %5469
  %5485 = fadd fast float %5477, %5481
  %5486 = fadd fast float %5485, %5470
  %5487 = fadd fast float %5478, %5482
  %5488 = fadd fast float %5487, %5471
  %5489 = fmul fast float %5484, %87
  %5490 = fmul fast float %5486, %87
  %5491 = fmul fast float %5488, %87
  %5492 = select i1 %247, float 0.000000e+00, float %5452
  %5493 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5454, float %5455, float %5281, float %5282, float %5283)  ; Dot3(ax,ay,az,bx,by,bz)
  %5494 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5495 = call float @dx.op.dot3.f32(i32 55, float %174, float %175, float %176, float %5453, float %5454, float %5455)  ; Dot3(ax,ay,az,bx,by,bz)
  %5496 = fmul fast float %5495, 2.000000e+00
  %5497 = fmul fast float %5496, %5453
  %5498 = fmul fast float %5496, %5454
  %5499 = fmul fast float %5496, %5455
  %5500 = fsub fast float %174, %5497
  %5501 = fsub fast float %175, %5498
  %5502 = fsub fast float %176, %5499
  %5503 = call float @dx.op.binary.f32(i32 36, float %5457, float 1.000000e+00)  ; FMin(a,b)
  %5504 = fsub fast float 1.000000e+00, %5503
  %5505 = bitcast float %5504 to i32
  %5506 = ashr i32 %5505, 1
  %5507 = add nsw i32 %5506, 532487669
  %5508 = bitcast i32 %5507 to float
  %5509 = fsub fast float 1.000000e+00, %5456
  %5510 = call float @dx.op.binary.f32(i32 35, float %5509, float 0x3F847AE140000000)  ; FMax(a,b)
  %5511 = fmul fast float %5510, %5510
  %5512 = fmul fast float %5511, %5511
  %5513 = call float @dx.op.unary.f32(i32 7, float %5494)  ; Saturate(value)
  %5514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %44, float %5508, float %5512, float %5513, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5515 = extractvalue %dx.types.ResRet.f32 %5514, 0
  %5516 = fsub fast float 1.000000e+00, %5457
  %5517 = bitcast float %5516 to i32
  %5518 = sub nsw i32 2129859010, %5517
  %5519 = call float @dx.op.dot3.f32(i32 55, float %67, float %63, float %59, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = fmul fast float %5519, 0x3FD20DD760000000
  %5521 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %5522 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5523 = fcmp fast oeq float %5522, 0.000000e+00
  %5524 = fcmp fast oeq float %5521, 0.000000e+00
  %5525 = or i1 %5524, %5523
  br i1 %5525, label %5555, label %5526

; <label>:5526                                    ; preds = %5446
  %5527 = fsub fast float -0.000000e+00, %70
  %5528 = fsub fast float -0.000000e+00, %68
  %5529 = call float @dx.op.unary.f32(i32 24, float %5522)  ; Sqrt(value)
  %5530 = fdiv fast float %5529, %5521
  %5531 = fcmp fast ogt float %5530, 0x3FFB6F8900000000
  %5532 = select i1 %5531, float 0x3FFB6F8900000000, float %5530
  %5533 = fmul fast float %5532, 0x3FE8A23460000000
  %5534 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5535 = call float @dx.op.binary.f32(i32 35, float %5532, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5536 = fmul fast float %5534, %5521
  %5537 = fmul fast float %5535, 0x3FF279A740000000
  %5538 = fadd fast float %5537, -1.000000e+00
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5527, float %5528, float %69, float %5527, float %5528, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = call float @dx.op.unary.f32(i32 25, float %5539)  ; Rsqrt(value)
  %5541 = fmul fast float %5540, %5527
  %5542 = fmul fast float %5540, %5528
  %5543 = fmul fast float %5540, %69
  %5544 = fmul fast float %5538, %5538
  %5545 = fsub fast float 1.000000e+00, %5544
  %5546 = fmul fast float %5535, 0x40005F8BE0000000
  %5547 = fsub fast float 0x400C5BF8A0000000, %5546
  %5548 = fdiv fast float %5536, %5547
  %5549 = fmul fast float %5548, 0x3FEE31C3C0000000
  %5550 = fmul fast float %5549, %5545
  %5551 = fmul fast float %5535, 0x3FDACB7480000000
  %5552 = fadd fast float %5551, 0xBFD7347680000000
  %5553 = fmul fast float %5552, %5548
  %5554 = fmul fast float %5553, %5545
  br label %5555

; <label>:5555                                    ; preds = %5526, %5446
  %5556 = phi float [ %5541, %5526 ], [ 0.000000e+00, %5446 ]
  %5557 = phi float [ %5542, %5526 ], [ 0.000000e+00, %5446 ]
  %5558 = phi float [ %5543, %5526 ], [ 0.000000e+00, %5446 ]
  %5559 = phi float [ %5550, %5526 ], [ 0.000000e+00, %5446 ]
  %5560 = phi float [ %5554, %5526 ], [ 0.000000e+00, %5446 ]
  %5561 = call float @dx.op.dot3.f32(i32 55, float %5556, float %5557, float %5558, float %5453, float %5454, float %5455)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = fmul fast float %5561, %5561
  %5563 = fmul fast float %5562, 0x3FEE471020000000
  %5564 = fadd fast float %5563, 0xBFD42F6020000000
  %5565 = fmul fast float %5521, 0x3FD20DD760000000
  %5566 = fmul fast float %5564, %5560
  %5567 = fmul fast float %5559, 0x3FDF454380000000
  %5568 = fmul fast float %5567, %5561
  %5569 = fadd fast float %5568, %5565
  %5570 = fadd fast float %5569, %5566
  %5571 = call float @dx.op.dot3.f32(i32 55, float %5556, float %5557, float %5558, float %5500, float %5501, float %5502)  ; Dot3(ax,ay,az,bx,by,bz)
  %5572 = fmul fast float %5571, 0x3FDF454380000000
  %5573 = fmul fast float %5571, %5571
  %5574 = fmul fast float %5573, 0x3FEE471020000000
  %5575 = fadd fast float %5574, 0xBFD42F6020000000
  %5576 = call float @dx.op.dot3.f32(i32 55, float %5521, float %5559, float %5560, float 0x3FD20DD760000000, float %5572, float %5575)  ; Dot3(ax,ay,az,bx,by,bz)
  %5577 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %5578 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5579 = fcmp fast oeq float %5578, 0.000000e+00
  %5580 = fcmp fast oeq float %5577, 0.000000e+00
  %5581 = or i1 %5580, %5579
  br i1 %5581, label %5611, label %5582

; <label>:5582                                    ; preds = %5555
  %5583 = fsub fast float -0.000000e+00, %66
  %5584 = fsub fast float -0.000000e+00, %64
  %5585 = call float @dx.op.unary.f32(i32 24, float %5578)  ; Sqrt(value)
  %5586 = fdiv fast float %5585, %5577
  %5587 = fcmp fast ogt float %5586, 0x3FFB6F8900000000
  %5588 = select i1 %5587, float 0x3FFB6F8900000000, float %5586
  %5589 = fmul fast float %5588, 0x3FE8A23460000000
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = call float @dx.op.binary.f32(i32 35, float %5588, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5592 = fmul fast float %5590, %5577
  %5593 = fmul fast float %5591, 0x3FF279A740000000
  %5594 = fadd fast float %5593, -1.000000e+00
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5583, float %5584, float %65, float %5583, float %5584, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = call float @dx.op.unary.f32(i32 25, float %5595)  ; Rsqrt(value)
  %5597 = fmul fast float %5596, %5583
  %5598 = fmul fast float %5596, %5584
  %5599 = fmul fast float %5596, %65
  %5600 = fmul fast float %5594, %5594
  %5601 = fsub fast float 1.000000e+00, %5600
  %5602 = fmul fast float %5591, 0x40005F8BE0000000
  %5603 = fsub fast float 0x400C5BF8A0000000, %5602
  %5604 = fdiv fast float %5592, %5603
  %5605 = fmul fast float %5604, 0x3FEE31C3C0000000
  %5606 = fmul fast float %5605, %5601
  %5607 = fmul fast float %5591, 0x3FDACB7480000000
  %5608 = fadd fast float %5607, 0xBFD7347680000000
  %5609 = fmul fast float %5608, %5604
  %5610 = fmul fast float %5609, %5601
  br label %5611

; <label>:5611                                    ; preds = %5582, %5555
  %5612 = phi float [ %5597, %5582 ], [ 0.000000e+00, %5555 ]
  %5613 = phi float [ %5598, %5582 ], [ 0.000000e+00, %5555 ]
  %5614 = phi float [ %5599, %5582 ], [ 0.000000e+00, %5555 ]
  %5615 = phi float [ %5606, %5582 ], [ 0.000000e+00, %5555 ]
  %5616 = phi float [ %5610, %5582 ], [ 0.000000e+00, %5555 ]
  %5617 = call float @dx.op.dot3.f32(i32 55, float %5612, float %5613, float %5614, float %5453, float %5454, float %5455)  ; Dot3(ax,ay,az,bx,by,bz)
  %5618 = fmul fast float %5617, %5617
  %5619 = fmul fast float %5618, 0x3FEE471020000000
  %5620 = fadd fast float %5619, 0xBFD42F6020000000
  %5621 = fmul fast float %5577, 0x3FD20DD760000000
  %5622 = fmul fast float %5620, %5616
  %5623 = fmul fast float %5615, 0x3FDF454380000000
  %5624 = fmul fast float %5623, %5617
  %5625 = fadd fast float %5624, %5621
  %5626 = fadd fast float %5625, %5622
  %5627 = call float @dx.op.dot3.f32(i32 55, float %5612, float %5613, float %5614, float %5500, float %5501, float %5502)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = fmul fast float %5627, 0x3FDF454380000000
  %5629 = fmul fast float %5627, %5627
  %5630 = fmul fast float %5629, 0x3FEE471020000000
  %5631 = fadd fast float %5630, 0xBFD42F6020000000
  %5632 = call float @dx.op.dot3.f32(i32 55, float %5577, float %5615, float %5616, float 0x3FD20DD760000000, float %5628, float %5631)  ; Dot3(ax,ay,az,bx,by,bz)
  %5633 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %59)  ; FMax(a,b)
  %5634 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = fcmp fast oeq float %5634, 0.000000e+00
  %5636 = fcmp fast oeq float %5633, 0.000000e+00
  %5637 = or i1 %5636, %5635
  br i1 %5637, label %5667, label %5638

; <label>:5638                                    ; preds = %5611
  %5639 = fsub fast float -0.000000e+00, %62
  %5640 = fsub fast float -0.000000e+00, %60
  %5641 = call float @dx.op.unary.f32(i32 24, float %5634)  ; Sqrt(value)
  %5642 = fdiv fast float %5641, %5633
  %5643 = fcmp fast ogt float %5642, 0x3FFB6F8900000000
  %5644 = select i1 %5643, float 0x3FFB6F8900000000, float %5642
  %5645 = fmul fast float %5644, 0x3FE8A23460000000
  %5646 = call float @dx.op.unary.f32(i32 7, float %5645)  ; Saturate(value)
  %5647 = call float @dx.op.binary.f32(i32 35, float %5644, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5648 = fmul fast float %5646, %5633
  %5649 = fmul fast float %5647, 0x3FF279A740000000
  %5650 = fadd fast float %5649, -1.000000e+00
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5639, float %5640, float %61, float %5639, float %5640, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = call float @dx.op.unary.f32(i32 25, float %5651)  ; Rsqrt(value)
  %5653 = fmul fast float %5652, %5639
  %5654 = fmul fast float %5652, %5640
  %5655 = fmul fast float %5652, %61
  %5656 = fmul fast float %5650, %5650
  %5657 = fsub fast float 1.000000e+00, %5656
  %5658 = fmul fast float %5647, 0x40005F8BE0000000
  %5659 = fsub fast float 0x400C5BF8A0000000, %5658
  %5660 = fdiv fast float %5648, %5659
  %5661 = fmul fast float %5660, 0x3FEE31C3C0000000
  %5662 = fmul fast float %5661, %5657
  %5663 = fmul fast float %5647, 0x3FDACB7480000000
  %5664 = fadd fast float %5663, 0xBFD7347680000000
  %5665 = fmul fast float %5664, %5660
  %5666 = fmul fast float %5665, %5657
  br label %5667

; <label>:5667                                    ; preds = %5638, %5611
  %5668 = phi float [ %5653, %5638 ], [ 0.000000e+00, %5611 ]
  %5669 = phi float [ %5654, %5638 ], [ 0.000000e+00, %5611 ]
  %5670 = phi float [ %5655, %5638 ], [ 0.000000e+00, %5611 ]
  %5671 = phi float [ %5662, %5638 ], [ 0.000000e+00, %5611 ]
  %5672 = phi float [ %5666, %5638 ], [ 0.000000e+00, %5611 ]
  %5673 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5669, float %5670, float %5453, float %5454, float %5455)  ; Dot3(ax,ay,az,bx,by,bz)
  %5674 = fmul fast float %5673, %5673
  %5675 = fmul fast float %5674, 0x3FEE471020000000
  %5676 = fadd fast float %5675, 0xBFD42F6020000000
  %5677 = fmul fast float %5633, 0x3FD20DD760000000
  %5678 = fmul fast float %5676, %5672
  %5679 = fmul fast float %5671, 0x3FDF454380000000
  %5680 = fmul fast float %5679, %5673
  %5681 = fadd fast float %5680, %5677
  %5682 = fadd fast float %5681, %5678
  %5683 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5669, float %5670, float %5500, float %5501, float %5502)  ; Dot3(ax,ay,az,bx,by,bz)
  %5684 = fmul fast float %5683, 0x3FDF454380000000
  %5685 = fmul fast float %5683, %5683
  %5686 = fmul fast float %5685, 0x3FEE471020000000
  %5687 = fadd fast float %5686, 0xBFD42F6020000000
  %5688 = call float @dx.op.dot3.f32(i32 55, float %5633, float %5671, float %5672, float 0x3FD20DD760000000, float %5684, float %5687)  ; Dot3(ax,ay,az,bx,by,bz)
  %5689 = call float @dx.op.binary.f32(i32 35, float %5570, float 0.000000e+00)  ; FMax(a,b)
  %5690 = call float @dx.op.binary.f32(i32 35, float %5626, float 0.000000e+00)  ; FMax(a,b)
  %5691 = call float @dx.op.binary.f32(i32 35, float %5682, float 0.000000e+00)  ; FMax(a,b)
  %5692 = call float @dx.op.binary.f32(i32 35, float %5576, float 0.000000e+00)  ; FMax(a,b)
  %5693 = call float @dx.op.binary.f32(i32 35, float %5632, float 0.000000e+00)  ; FMax(a,b)
  %5694 = call float @dx.op.binary.f32(i32 35, float %5688, float 0.000000e+00)  ; FMax(a,b)
  %5695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5696 = extractvalue %dx.types.CBufRet.f32 %5695, 0
  %5697 = call float @dx.op.binary.f32(i32 36, float %5447, float %5696)  ; FMin(a,b)
  %5698 = fmul fast float %5697, %5504
  %5699 = fsub fast float 1.000000e+00, %5698
  %5700 = bitcast float %5699 to i32
  %5701 = sub nsw i32 2129859010, %5700
  %5702 = bitcast i32 %5701 to float
  %5703 = call float @dx.op.binary.f32(i32 36, float %5448, float %5696)  ; FMin(a,b)
  %5704 = fmul fast float %5703, %5504
  %5705 = fsub fast float 1.000000e+00, %5704
  %5706 = bitcast float %5705 to i32
  %5707 = sub nsw i32 2129859010, %5706
  %5708 = bitcast i32 %5707 to float
  %5709 = call float @dx.op.binary.f32(i32 36, float %5449, float %5696)  ; FMin(a,b)
  %5710 = fmul fast float %5709, %5504
  %5711 = fsub fast float 1.000000e+00, %5710
  %5712 = bitcast float %5711 to i32
  %5713 = sub nsw i32 2129859010, %5712
  %5714 = bitcast i32 %5713 to float
  %5715 = fmul fast float %5689, %5503
  %5716 = fmul fast float %5715, %5702
  %5717 = fmul fast float %5690, %5503
  %5718 = fmul fast float %5717, %5708
  %5719 = fmul fast float %5691, %5503
  %5720 = fmul fast float %5719, %5714
  %5721 = call float @dx.op.binary.f32(i32 36, float %5450, float %5696)  ; FMin(a,b)
  %5722 = fmul fast float %5721, %5504
  %5723 = fsub fast float 1.000000e+00, %5722
  %5724 = bitcast float %5723 to i32
  %5725 = sub nsw i32 2129859010, %5724
  %5726 = bitcast i32 %5725 to float
  %5727 = call float @dx.op.binary.f32(i32 36, float %5451, float %5696)  ; FMin(a,b)
  %5728 = fmul fast float %5727, %5504
  %5729 = fsub fast float 1.000000e+00, %5728
  %5730 = bitcast float %5729 to i32
  %5731 = sub nsw i32 2129859010, %5730
  %5732 = bitcast i32 %5731 to float
  %5733 = call float @dx.op.binary.f32(i32 36, float %5492, float %5696)  ; FMin(a,b)
  %5734 = fmul fast float %5733, %5504
  %5735 = fsub fast float 1.000000e+00, %5734
  %5736 = bitcast float %5735 to i32
  %5737 = sub nsw i32 2129859010, %5736
  %5738 = bitcast i32 %5737 to float
  %5739 = fmul fast float %5692, %5503
  %5740 = fmul fast float %5739, %5726
  %5741 = fmul fast float %5693, %5503
  %5742 = fmul fast float %5741, %5732
  %5743 = fmul fast float %5694, %5503
  %5744 = fmul fast float %5743, %5738
  %5745 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5718, float %5720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = select i1 %247, float 0.000000e+00, float %5716
  %5747 = select i1 %247, float %5745, float %5718
  %5748 = select i1 %247, float 0.000000e+00, float %5720
  %5749 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5742, float %5744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5750 = select i1 %247, float 0.000000e+00, float %5740
  %5751 = select i1 %247, float %5749, float %5742
  %5752 = select i1 %247, float 0.000000e+00, float %5744
  %5753 = fmul fast float %4451, %4451
  %5754 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  %5755 = fmul fast float %5494, 9.843750e-01
  %5756 = fmul fast float %5456, 9.843750e-01
  %5757 = fadd fast float %5755, 7.812500e-03
  %5758 = fadd fast float %5756, 7.812500e-03
  %5759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %5757, float %5758, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5760 = extractvalue %dx.types.ResRet.f32 %5759, 0
  %5761 = extractvalue %dx.types.ResRet.f32 %5759, 1
  %5762 = extractvalue %dx.types.ResRet.f32 %5759, 2
  %5763 = extractvalue %dx.types.ResRet.f32 %5759, 3
  %5764 = fsub fast float 1.000000e+00, %5754
  %5765 = fsub fast float %5762, %5760
  %5766 = fsub fast float %5763, %5761
  %5767 = fmul fast float %5765, %5764
  %5768 = fmul fast float %5766, %5764
  %5769 = fadd fast float %5767, %5760
  %5770 = fadd fast float %5768, %5761
  %5771 = fmul fast float %5769, %5450
  %5772 = fmul fast float %5769, %5451
  %5773 = fmul fast float %5769, %5492
  %5774 = fadd fast float %5771, %5770
  %5775 = fadd fast float %5772, %5770
  %5776 = fadd fast float %5773, %5770
  %5777 = fcmp fast ogt float %5103, 0.000000e+00
  br i1 %5777, label %5778, label %5804

; <label>:5778                                    ; preds = %5667
  %5779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5103, float %5494, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5780 = extractvalue %dx.types.ResRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.ResRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.ResRet.f32 %5779, 2
  %5783 = fadd fast float %5780, -5.000000e-01
  %5784 = fadd fast float %5781, -5.000000e-01
  %5785 = fadd fast float %5782, -5.000000e-01
  %5786 = fsub fast float 1.000000e+00, %5450
  %5787 = fsub fast float 1.000000e+00, %5451
  %5788 = fsub fast float 1.000000e+00, %5492
  %5789 = fmul fast float %5450, 4.000000e+00
  %5790 = fmul fast float %5789, %5786
  %5791 = fmul fast float %5790, %5783
  %5792 = fmul fast float %5451, 4.000000e+00
  %5793 = fmul fast float %5792, %5787
  %5794 = fmul fast float %5793, %5784
  %5795 = fmul fast float %5492, 4.000000e+00
  %5796 = fmul fast float %5795, %5788
  %5797 = fmul fast float %5796, %5785
  %5798 = fadd fast float %5791, %5774
  %5799 = fadd fast float %5794, %5775
  %5800 = fadd fast float %5797, %5776
  %5801 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5802 = call float @dx.op.unary.f32(i32 7, float %5799)  ; Saturate(value)
  %5803 = call float @dx.op.unary.f32(i32 7, float %5800)  ; Saturate(value)
  br label %5804

; <label>:5804                                    ; preds = %5778, %5667
  %5805 = phi float [ %5801, %5778 ], [ %5774, %5667 ]
  %5806 = phi float [ %5802, %5778 ], [ %5775, %5667 ]
  %5807 = phi float [ %5803, %5778 ], [ %5776, %5667 ]
  %5808 = call float @dx.op.binary.f32(i32 35, float %5806, float %5807)  ; FMax(a,b)
  %5809 = call float @dx.op.binary.f32(i32 35, float %5805, float %5808)  ; FMax(a,b)
  %5810 = fsub fast float 1.000000e+00, %5809
  %5811 = fmul fast float %5809, %5456
  %5812 = fadd fast float %5811, %5456
  %5813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5814 = extractvalue %dx.types.CBufRet.f32 %5813, 2
  %5815 = extractvalue %dx.types.CBufRet.f32 %5813, 3
  %5816 = fmul fast float %5812, %5814
  %5817 = fadd fast float %5816, %5815
  %5818 = call float @dx.op.unary.f32(i32 7, float %5817)  ; Saturate(value)
  %5819 = fsub fast float 1.000000e+00, %5515
  %5820 = fadd fast float %5819, %5818
  %5821 = call float @dx.op.unary.f32(i32 7, float %5820)  ; Saturate(value)
  %5822 = fcmp fast olt float %5821, 1.000000e+00
  br i1 %5822, label %5823, label %6271

; <label>:5823                                    ; preds = %5804
  %5824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5825 = extractvalue %dx.types.CBufRet.f32 %5824, 2
  %5826 = extractvalue %dx.types.CBufRet.f32 %5824, 3
  %5827 = fmul fast float %5825, %99
  %5828 = fmul fast float %5826, %100
  %5829 = fptoui float %5827 to i32
  %5830 = fptoui float %5828 to i32
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.CBufRet.f32 %5831, 2
  %5834 = extractvalue %dx.types.CBufRet.f32 %5831, 3
  %5835 = fadd fast float %87, -4.000000e+00
  %5836 = call float @dx.op.binary.f32(i32 35, float %5835, float 0.000000e+00)  ; FMax(a,b)
  %5837 = fadd fast float %5836, %5832
  %5838 = fmul fast float %5837, %5833
  %5839 = call float @dx.op.unary.f32(i32 23, float %5838)  ; Log(value)
  %5840 = fmul fast float %5839, %5834
  %5841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5842 = extractvalue %dx.types.CBufRet.f32 %5841, 2
  %5843 = fmul fast float %5840, %5842
  %5844 = call float @dx.op.unary.f32(i32 7, float %5843)  ; Saturate(value)
  %5845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.i32 %5845, 1
  %5847 = add i32 %5846, -1
  %5848 = uitofp i32 %5846 to float
  %5849 = fmul fast float %5848, %5844
  %5850 = fptoui float %5849 to i32
  %5851 = call i32 @dx.op.binary.i32(i32 40, i32 %5850, i32 %5847)  ; UMin(a,b)
  %5852 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.i32 %5852, 2
  %5854 = extractvalue %dx.types.CBufRet.i32 %5852, 3
  %5855 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5830, i32 %5853, i32 %5829)  ; UMad(a,b,c)
  %5856 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5851, i32 %5854, i32 %5855)  ; UMad(a,b,c)
  %5857 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %5858 = fptoui float %5857 to i32
  %5859 = lshr i32 %5858, 5
  %5860 = call i32 @dx.op.binary.i32(i32 40, i32 %5859, i32 8191)  ; UMin(a,b)
  br i1 false, label %5861, label %5868

; <label>:5861                                    ; preds = %5823
  %5862 = fadd fast float 0.000000e+00, %5502
  %5863 = call float @dx.op.dot3.f32(i32 55, float %5500, float %5501, float %5862, float %5500, float %5501, float %5862)  ; Dot3(ax,ay,az,bx,by,bz)
  %5864 = call float @dx.op.unary.f32(i32 25, float %5863)  ; Rsqrt(value)
  %5865 = fmul fast float %5864, %5500
  %5866 = fmul fast float %5864, %5501
  %5867 = fmul fast float %5862, %5864
  br label %5868

; <label>:5868                                    ; preds = %5861, %5823
  %5869 = phi float [ %5865, %5861 ], [ %5500, %5823 ]
  %5870 = phi float [ %5866, %5861 ], [ %5501, %5823 ]
  %5871 = phi float [ %5867, %5861 ], [ %5502, %5823 ]
  %5872 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5873 = extractvalue %dx.types.CBufRet.i32 %5872, 2
  %5874 = add nsw i32 %5873, -1
  %5875 = call i32 @dx.op.binary.i32(i32 37, i32 %5874, i32 0)  ; IMax(a,b)
  %5876 = shl i32 %5860, 2
  %5877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5876, i32 undef)  ; BufferLoad(srv,index,wot)
  %5878 = extractvalue %dx.types.ResRet.i32 %5877, 0
  %5879 = lshr i32 %5878, 16
  %5880 = and i32 %5878, 65535
  %5881 = lshr i32 %5878, 21
  %5882 = lshr i32 %5880, 5
  %5883 = call i32 @dx.op.binary.i32(i32 40, i32 %5882, i32 %5875)  ; UMin(a,b)
  %5884 = icmp ugt i32 %5881, %5883
  br i1 %5884, label %6247, label %5885

; <label>:5885                                    ; preds = %5868
  br label %5886

; <label>:5886                                    ; preds = %6239, %5885
  %5887 = phi float [ %6240, %6239 ], [ 0.000000e+00, %5885 ]
  %5888 = phi float [ %6241, %6239 ], [ 0.000000e+00, %5885 ]
  %5889 = phi float [ %6242, %6239 ], [ 0.000000e+00, %5885 ]
  %5890 = phi float [ %6243, %6239 ], [ 1.000000e+00, %5885 ]
  %5891 = phi i32 [ %6244, %6239 ], [ %5881, %5885 ]
  %5892 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.i32 %5892, 2
  %5894 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5856, i32 %5893, i32 %5891)  ; UMad(a,b,c)
  %5895 = shl i32 %5894, 2
  %5896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5895, i32 undef)  ; BufferLoad(srv,index,wot)
  %5897 = extractvalue %dx.types.ResRet.i32 %5896, 0
  %5898 = shl i32 %5891, 5
  %5899 = sub nsw i32 %5879, %5898
  %5900 = call i32 @dx.op.binary.i32(i32 37, i32 %5899, i32 0)  ; IMax(a,b)
  %5901 = call i32 @dx.op.binary.i32(i32 38, i32 %5900, i32 31)  ; IMin(a,b)
  %5902 = sub nsw i32 1, %5879
  %5903 = add nsw i32 %5902, %5880
  %5904 = call i32 @dx.op.binary.i32(i32 37, i32 %5903, i32 0)  ; IMax(a,b)
  %5905 = call i32 @dx.op.binary.i32(i32 38, i32 %5904, i32 32)  ; IMin(a,b)
  %5906 = and i32 %5905, 31
  %5907 = shl i32 -1, %5906
  %5908 = xor i32 %5907, -1
  %5909 = and i32 %5901, 31
  %5910 = shl i32 %5908, %5909
  %5911 = icmp eq i32 %5905, 32
  %5912 = select i1 %5911, i32 -1, i32 %5910
  %5913 = and i32 %5912, %5897
  %5914 = icmp eq i32 %5913, 0
  br i1 %5914, label %6239, label %5915

; <label>:5915                                    ; preds = %5886
  br label %5916

; <label>:5916                                    ; preds = %6022, %5915
  %5917 = phi float [ %6023, %6022 ], [ %5887, %5915 ]
  %5918 = phi float [ %6024, %6022 ], [ %5888, %5915 ]
  %5919 = phi float [ %6025, %6022 ], [ %5889, %5915 ]
  %5920 = phi float [ %6026, %6022 ], [ %5890, %5915 ]
  %5921 = phi i32 [ %5926, %6022 ], [ %5913, %5915 ]
  %5922 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5921)  ; FirstbitLo(value)
  %5923 = add i32 %5922, %5898
  %5924 = and i32 %5922, 31
  %5925 = shl i32 1, %5924
  %5926 = xor i32 %5925, %5921
  %5927 = mul i32 %5923, 72
  %5928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5927, i32 undef)  ; BufferLoad(srv,index,wot)
  %5929 = extractvalue %dx.types.ResRet.f32 %5928, 0
  %5930 = extractvalue %dx.types.ResRet.f32 %5928, 1
  %5931 = extractvalue %dx.types.ResRet.f32 %5928, 2
  %5932 = add i32 %5927, 12
  %5933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %5932, i32 undef)  ; BufferLoad(srv,index,wot)
  %5934 = extractvalue %dx.types.ResRet.i32 %5933, 0
  %5935 = add i32 %5927, 16
  %5936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5935, i32 undef)  ; BufferLoad(srv,index,wot)
  %5937 = extractvalue %dx.types.ResRet.f32 %5936, 0
  %5938 = extractvalue %dx.types.ResRet.f32 %5936, 1
  %5939 = extractvalue %dx.types.ResRet.f32 %5936, 2
  %5940 = add i32 %5927, 28
  %5941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5940, i32 undef)  ; BufferLoad(srv,index,wot)
  %5942 = extractvalue %dx.types.ResRet.f32 %5941, 0
  %5943 = add i32 %5927, 32
  %5944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5943, i32 undef)  ; BufferLoad(srv,index,wot)
  %5945 = extractvalue %dx.types.ResRet.f32 %5944, 0
  %5946 = extractvalue %dx.types.ResRet.f32 %5944, 1
  %5947 = extractvalue %dx.types.ResRet.f32 %5944, 2
  %5948 = extractvalue %dx.types.ResRet.f32 %5944, 3
  %5949 = add i32 %5927, 48
  %5950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5949, i32 undef)  ; BufferLoad(srv,index,wot)
  %5951 = extractvalue %dx.types.ResRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.ResRet.f32 %5950, 1
  %5953 = add i32 %5927, 56
  %5954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5953, i32 undef)  ; BufferLoad(srv,index,wot)
  %5955 = extractvalue %dx.types.ResRet.f32 %5954, 0
  %5956 = extractvalue %dx.types.ResRet.f32 %5954, 1
  %5957 = add i32 %5927, 64
  %5958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5957, i32 undef)  ; BufferLoad(srv,index,wot)
  %5959 = extractvalue %dx.types.ResRet.f32 %5958, 0
  %5960 = extractvalue %dx.types.ResRet.f32 %5958, 1
  %5961 = mul i32 %5923, 60
  %5962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5961, i32 undef)  ; BufferLoad(srv,index,wot)
  %5963 = extractvalue %dx.types.ResRet.f32 %5962, 0
  %5964 = extractvalue %dx.types.ResRet.f32 %5962, 1
  %5965 = extractvalue %dx.types.ResRet.f32 %5962, 2
  %5966 = add i32 %5961, 12
  %5967 = add i32 %5961, 48
  %5968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5967, i32 undef)  ; BufferLoad(srv,index,wot)
  %5969 = extractvalue %dx.types.ResRet.f32 %5968, 0
  %5970 = extractvalue %dx.types.ResRet.f32 %5968, 1
  %5971 = extractvalue %dx.types.ResRet.f32 %5968, 2
  %5972 = and i32 %5934, 32767
  %5973 = bitcast float %5929 to i32
  %5974 = icmp eq i32 %5973, -1
  %5975 = bitcast float %5930 to i32
  %5976 = and i32 %5934, 32768
  %5977 = icmp ne i32 %5976, 0
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 0
  %5980 = extractvalue %dx.types.CBufRet.f32 %5978, 1
  %5981 = extractvalue %dx.types.CBufRet.f32 %5978, 2
  %5982 = fsub fast float %5963, %5979
  %5983 = fsub fast float %5964, %5980
  %5984 = fsub fast float %5965, %5981
  %5985 = fsub fast float %154, %5982
  %5986 = fsub fast float %155, %5983
  %5987 = fsub fast float %156, %5984
  %5988 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5966, i32 undef)  ; BufferLoad(srv,index,wot)
  %5989 = extractvalue %dx.types.ResRet.f32 %5988, 0
  %5990 = extractvalue %dx.types.ResRet.f32 %5988, 1
  %5991 = extractvalue %dx.types.ResRet.f32 %5988, 2
  %5992 = call float @dx.op.dot3.f32(i32 55, float %5985, float %5986, float %5987, float %5989, float %5990, float %5991)  ; Dot3(ax,ay,az,bx,by,bz)
  %5993 = add i32 %5961, 24
  %5994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5993, i32 undef)  ; BufferLoad(srv,index,wot)
  %5995 = extractvalue %dx.types.ResRet.f32 %5994, 0
  %5996 = extractvalue %dx.types.ResRet.f32 %5994, 1
  %5997 = extractvalue %dx.types.ResRet.f32 %5994, 2
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5985, float %5986, float %5987, float %5995, float %5996, float %5997)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = add i32 %5961, 36
  %6000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5999, i32 undef)  ; BufferLoad(srv,index,wot)
  %6001 = extractvalue %dx.types.ResRet.f32 %6000, 0
  %6002 = extractvalue %dx.types.ResRet.f32 %6000, 1
  %6003 = extractvalue %dx.types.ResRet.f32 %6000, 2
  %6004 = call float @dx.op.dot3.f32(i32 55, float %5985, float %5986, float %5987, float %6001, float %6002, float %6003)  ; Dot3(ax,ay,az,bx,by,bz)
  %6005 = call float @dx.op.unary.f32(i32 6, float %5992)  ; FAbs(value)
  %6006 = call float @dx.op.unary.f32(i32 6, float %5998)  ; FAbs(value)
  %6007 = call float @dx.op.unary.f32(i32 6, float %6004)  ; FAbs(value)
  %6008 = fsub fast float %5969, %6005
  %6009 = fsub fast float %5970, %6006
  %6010 = fsub fast float %5971, %6007
  %6011 = fmul fast float %6008, %5937
  %6012 = fmul fast float %6009, %5938
  %6013 = fmul fast float %6010, %5939
  %6014 = call float @dx.op.binary.f32(i32 36, float %6012, float %6013)  ; FMin(a,b)
  %6015 = call float @dx.op.binary.f32(i32 36, float %6011, float %6014)  ; FMin(a,b)
  %6016 = call float @dx.op.unary.f32(i32 7, float %6015)  ; Saturate(value)
  %6017 = call float @dx.op.binary.f32(i32 36, float %5920, float %6016)  ; FMin(a,b)
  %6018 = uitofp i1 %5977 to float
  %6019 = fsub fast float 1.000000e+00, %6018
  %6020 = fmul fast float %6017, %6019
  %6021 = fcmp fast ogt float %6020, 0.000000e+00
  br i1 %6021, label %6028, label %6022

; <label>:6022                                    ; preds = %6170, %5916
  %6023 = phi float [ %6234, %6170 ], [ %5917, %5916 ]
  %6024 = phi float [ %6235, %6170 ], [ %5918, %5916 ]
  %6025 = phi float [ %6236, %6170 ], [ %5919, %5916 ]
  %6026 = phi float [ %6237, %6170 ], [ %5920, %5916 ]
  %6027 = icmp eq i32 %5921, %5925
  br i1 %6027, label %6238, label %5916

; <label>:6028                                    ; preds = %5916
  br i1 %5974, label %6086, label %6029

; <label>:6029                                    ; preds = %6028
  %6030 = fsub fast float -0.000000e+00, %5989
  %6031 = fsub fast float -0.000000e+00, %5990
  %6032 = fsub fast float -0.000000e+00, %5991
  %6033 = call float @dx.op.dot3.f32(i32 55, float %5869, float %5870, float %5871, float %6030, float %6031, float %6032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6034 = fsub fast float -0.000000e+00, %6033
  %6035 = call float @dx.op.dot3.f32(i32 55, float %5985, float %5986, float %5987, float %6030, float %6031, float %6032)  ; Dot3(ax,ay,az,bx,by,bz)
  %6036 = fadd fast float %6035, %5952
  %6037 = fadd fast float %5951, %6035
  %6038 = fsub fast float -0.000000e+00, %6037
  %6039 = fcmp ogt float %6033, -0.000000e+00
  %6040 = select i1 %6039, float %6038, float %6036
  %6041 = call float @dx.op.unary.f32(i32 6, float %6034)  ; FAbs(value)
  %6042 = fdiv fast float 1.000000e+00, %6041
  %6043 = fmul fast float %6040, %6042
  %6044 = call float @dx.op.binary.f32(i32 35, float %6043, float 0.000000e+00)  ; FMax(a,b)
  %6045 = fsub fast float -0.000000e+00, %5995
  %6046 = fsub fast float -0.000000e+00, %5996
  %6047 = fsub fast float -0.000000e+00, %5997
  %6048 = call float @dx.op.dot3.f32(i32 55, float %5869, float %5870, float %5871, float %6045, float %6046, float %6047)  ; Dot3(ax,ay,az,bx,by,bz)
  %6049 = fsub fast float -0.000000e+00, %6048
  %6050 = call float @dx.op.dot3.f32(i32 55, float %5985, float %5986, float %5987, float %6045, float %6046, float %6047)  ; Dot3(ax,ay,az,bx,by,bz)
  %6051 = fadd fast float %6050, %5956
  %6052 = fadd fast float %5955, %6050
  %6053 = fsub fast float -0.000000e+00, %6052
  %6054 = fcmp ogt float %6048, -0.000000e+00
  %6055 = select i1 %6054, float %6053, float %6051
  %6056 = call float @dx.op.unary.f32(i32 6, float %6049)  ; FAbs(value)
  %6057 = fdiv fast float 1.000000e+00, %6056
  %6058 = fmul fast float %6055, %6057
  %6059 = call float @dx.op.binary.f32(i32 35, float %6058, float 0.000000e+00)  ; FMax(a,b)
  %6060 = fsub fast float -0.000000e+00, %6001
  %6061 = fsub fast float -0.000000e+00, %6002
  %6062 = fsub fast float -0.000000e+00, %6003
  %6063 = call float @dx.op.dot3.f32(i32 55, float %5869, float %5870, float %5871, float %6060, float %6061, float %6062)  ; Dot3(ax,ay,az,bx,by,bz)
  %6064 = fsub fast float -0.000000e+00, %6063
  %6065 = call float @dx.op.dot3.f32(i32 55, float %5985, float %5986, float %5987, float %6060, float %6061, float %6062)  ; Dot3(ax,ay,az,bx,by,bz)
  %6066 = fadd fast float %6065, %5960
  %6067 = fadd fast float %5959, %6065
  %6068 = fsub fast float -0.000000e+00, %6067
  %6069 = fcmp ogt float %6063, -0.000000e+00
  %6070 = select i1 %6069, float %6068, float %6066
  %6071 = call float @dx.op.unary.f32(i32 6, float %6064)  ; FAbs(value)
  %6072 = fdiv fast float 1.000000e+00, %6071
  %6073 = fmul fast float %6070, %6072
  %6074 = call float @dx.op.binary.f32(i32 35, float %6073, float 0.000000e+00)  ; FMax(a,b)
  %6075 = call float @dx.op.binary.f32(i32 36, float %6059, float %6074)  ; FMin(a,b)
  %6076 = call float @dx.op.binary.f32(i32 36, float %6044, float %6075)  ; FMin(a,b)
  %6077 = fmul fast float %6076, %5869
  %6078 = fmul fast float %6076, %5870
  %6079 = fmul fast float %6076, %5871
  %6080 = fadd fast float %6077, %154
  %6081 = fadd fast float %6078, %155
  %6082 = fadd fast float %6079, %156
  %6083 = fsub fast float %6080, %5929
  %6084 = fsub fast float %6081, %5930
  %6085 = fsub fast float %6082, %5931
  br label %6093

; <label>:6086                                    ; preds = %6028
  %6087 = fmul fast float %5869, 8.096000e+03
  %6088 = fmul fast float %5870, 8.096000e+03
  %6089 = fmul fast float %5871, 8.096000e+03
  %6090 = fadd fast float %6087, %154
  %6091 = fadd fast float %6088, %155
  %6092 = fadd fast float %6089, %156
  br label %6093

; <label>:6093                                    ; preds = %6086, %6029
  %6094 = phi float [ %5869, %6086 ], [ %6083, %6029 ]
  %6095 = phi float [ %5870, %6086 ], [ %6084, %6029 ]
  %6096 = phi float [ %5871, %6086 ], [ %6085, %6029 ]
  %6097 = phi float [ %6090, %6086 ], [ %6080, %6029 ]
  %6098 = phi float [ %6091, %6086 ], [ %6081, %6029 ]
  %6099 = phi float [ %6092, %6086 ], [ %6082, %6029 ]
  %6100 = fcmp fast olt float %5948, 1.000000e+00
  br i1 %6100, label %6101, label %6132, !dx.controlflow.hints !89

; <label>:6101                                    ; preds = %6093
  %6102 = fmul fast float %6096, %5946
  %6103 = fmul fast float %6095, %5947
  %6104 = fsub fast float %6102, %6103
  %6105 = fmul fast float %6094, %5947
  %6106 = fmul fast float %6096, %5945
  %6107 = fsub fast float %6105, %6106
  %6108 = fmul fast float %6095, %5945
  %6109 = fmul fast float %6094, %5946
  %6110 = fsub fast float %6108, %6109
  %6111 = fmul fast float %6104, 2.000000e+00
  %6112 = fmul fast float %6107, 2.000000e+00
  %6113 = fmul fast float %6110, 2.000000e+00
  %6114 = fmul fast float %6111, %5948
  %6115 = fmul fast float %6112, %5948
  %6116 = fmul fast float %6113, %5948
  %6117 = fmul fast float %6113, %5946
  %6118 = fmul fast float %6112, %5947
  %6119 = fmul fast float %6111, %5947
  %6120 = fmul fast float %6113, %5945
  %6121 = fmul fast float %6112, %5945
  %6122 = fmul fast float %6111, %5946
  %6123 = fadd fast float %6117, %6094
  %6124 = fadd fast float %6123, %6114
  %6125 = fsub fast float %6124, %6118
  %6126 = fsub fast float %6095, %6120
  %6127 = fadd fast float %6126, %6115
  %6128 = fadd fast float %6127, %6119
  %6129 = fadd fast float %6116, %6096
  %6130 = fsub fast float %6129, %6122
  %6131 = fadd fast float %6130, %6121
  br label %6132

; <label>:6132                                    ; preds = %6101, %6093
  %6133 = phi float [ %6125, %6101 ], [ %6094, %6093 ]
  %6134 = phi float [ %6128, %6101 ], [ %6095, %6093 ]
  %6135 = phi float [ %6131, %6101 ], [ %6096, %6093 ]
  br i1 %5974, label %6167, label %6136

; <label>:6136                                    ; preds = %6132
  %6137 = fmul fast float %5456, 0x400187C840000000
  %6138 = fadd fast float %6137, 0xC00EFC2120000000
  %6139 = fmul fast float %6138, %5456
  %6140 = fadd fast float %6139, 0x3FE5D16340000000
  %6141 = fmul fast float %6140, %5456
  %6142 = fadd fast float %6141, 1.000000e+00
  %6143 = call float @dx.op.unary.f32(i32 7, float %6142)  ; Saturate(value)
  %6144 = fsub fast float %6097, %154
  %6145 = fsub fast float %6098, %155
  %6146 = fsub fast float %6099, %156
  %6147 = fsub fast float %6097, %5929
  %6148 = fsub fast float %6098, %5930
  %6149 = fsub fast float %6099, %5931
  %6150 = call float @dx.op.dot3.f32(i32 55, float %6144, float %6145, float %6146, float %6144, float %6145, float %6146)  ; Dot3(ax,ay,az,bx,by,bz)
  %6151 = call float @dx.op.dot3.f32(i32 55, float %6147, float %6148, float %6149, float %6147, float %6148, float %6149)  ; Dot3(ax,ay,az,bx,by,bz)
  %6152 = fadd fast float %6151, 0x3EE4F8B580000000
  %6153 = fdiv fast float %6150, %6152
  %6154 = bitcast float %6153 to i32
  %6155 = ashr i32 %6154, 1
  %6156 = add nsw i32 %6155, 532487669
  %6157 = bitcast i32 %6156 to float
  %6158 = fmul fast float %6157, %6143
  %6159 = call float @dx.op.unary.f32(i32 7, float %6158)  ; Saturate(value)
  %6160 = fmul fast float %6159, 0x4009981AE0000000
  %6161 = fsub fast float 0x40111BBD80000000, %6160
  %6162 = fmul fast float %6161, %6159
  %6163 = fadd fast float %6162, 0xC0009F6020000000
  %6164 = fmul fast float %6163, %6159
  %6165 = fadd fast float %6164, 1.000000e+00
  %6166 = call float @dx.op.unary.f32(i32 7, float %6165)  ; Saturate(value)
  br label %6170

; <label>:6167                                    ; preds = %6132
  %6168 = icmp ne i32 %5975, -1
  %6169 = zext i1 %6168 to i32
  br label %6170

; <label>:6170                                    ; preds = %6167, %6136
  %6171 = phi float [ %5456, %6167 ], [ %6166, %6136 ]
  %6172 = phi i32 [ %6169, %6167 ], [ 0, %6136 ]
  %6173 = fmul float %6171, 5.000000e+00
  %6174 = fsub float 5.000000e+00, %6173
  %6175 = icmp ne i32 %6172, 0
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 3
  %6178 = fadd fast float %6177, %6174
  %6179 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6178)  ; FMax(a,b)
  %6180 = call float @dx.op.unary.f32(i32 6, float %6133)  ; FAbs(value)
  %6181 = call float @dx.op.unary.f32(i32 6, float %6134)  ; FAbs(value)
  %6182 = fadd fast float %6181, %6180
  %6183 = call float @dx.op.unary.f32(i32 6, float %6135)  ; FAbs(value)
  %6184 = fadd fast float %6182, %6183
  %6185 = fcmp fast oeq float %6184, 0.000000e+00
  %6186 = fdiv fast float 1.000000e+00, %6184
  %6187 = select i1 %6185, float 1.000000e+00, float %6186
  %6188 = fmul fast float %6187, %6133
  %6189 = fmul fast float %6187, %6134
  %6190 = call float @dx.op.unary.f32(i32 6, float %6189)  ; FAbs(value)
  %6191 = call float @dx.op.unary.f32(i32 6, float %6188)  ; FAbs(value)
  %6192 = fsub fast float 1.000000e+00, %6190
  %6193 = fsub fast float 1.000000e+00, %6191
  %6194 = fcmp fast oge float %6188, 0.000000e+00
  %6195 = fcmp fast oge float %6189, 0.000000e+00
  %6196 = select i1 %6194, float 1.000000e+00, float -1.000000e+00
  %6197 = select i1 %6195, float 1.000000e+00, float -1.000000e+00
  %6198 = fcmp fast ole float %6135, 0.000000e+00
  %6199 = fmul fast float %6196, %6192
  %6200 = fmul fast float %6197, %6193
  %6201 = select i1 %6198, float %6199, float %6188
  %6202 = select i1 %6198, float %6200, float %6189
  %6203 = fmul fast float %6201, 5.000000e-01
  %6204 = fmul fast float %6202, 5.000000e-01
  %6205 = fadd fast float %6203, 5.000000e-01
  %6206 = fadd fast float %6204, 5.000000e-01
  %6207 = uitofp i32 %5972 to float
  %6208 = call float @dx.op.binary.f32(i32 36, float %6179, float 3.000000e+00)  ; FMin(a,b)
  %6209 = fadd fast float %6208, 2.000000e+00
  %6210 = call float @dx.op.unary.f32(i32 21, float %6209)  ; Exp(value)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6176, 1
  %6212 = fmul fast float %6211, %6210
  %6213 = fmul fast float %6212, 2.000000e+00
  %6214 = fsub fast float 1.000000e+00, %6213
  %6215 = fmul fast float %6205, %6214
  %6216 = fmul fast float %6206, %6214
  %6217 = fadd fast float %6215, %6212
  %6218 = fadd fast float %6216, %6212
  %6219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %6217, float %6218, float %6207, float undef, i32 0, i32 0, i32 undef, float %6179)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6220 = extractvalue %dx.types.ResRet.f32 %6219, 0
  %6221 = extractvalue %dx.types.ResRet.f32 %6219, 1
  %6222 = extractvalue %dx.types.ResRet.f32 %6219, 2
  %6223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6223, 3
  %6225 = fmul fast float %6224, %5942
  %6226 = call float @dx.op.binary.f32(i32 36, float %5520, float %6225)  ; FMin(a,b)
  %6227 = select i1 %6175, float %6226, float %6225
  %6228 = fmul fast float %6220, %6020
  %6229 = fmul fast float %6228, %6227
  %6230 = fmul fast float %6221, %6020
  %6231 = fmul fast float %6230, %6227
  %6232 = fmul fast float %6222, %6020
  %6233 = fmul fast float %6232, %6227
  %6234 = fadd fast float %6229, %5917
  %6235 = fadd fast float %6231, %5918
  %6236 = fadd fast float %6233, %5919
  %6237 = fsub fast float %5920, %6020
  br label %6022

; <label>:6238                                    ; preds = %6022
  br label %6239

; <label>:6239                                    ; preds = %6238, %5886
  %6240 = phi float [ %5887, %5886 ], [ %6023, %6238 ]
  %6241 = phi float [ %5888, %5886 ], [ %6024, %6238 ]
  %6242 = phi float [ %5889, %5886 ], [ %6025, %6238 ]
  %6243 = phi float [ %5890, %5886 ], [ %6026, %6238 ]
  %6244 = add i32 %5891, 1
  %6245 = icmp ugt i32 %6244, %5883
  br i1 %6245, label %6246, label %5886, !llvm.loop !90

; <label>:6246                                    ; preds = %6239
  br label %6247

; <label>:6247                                    ; preds = %6246, %5868
  %6248 = phi float [ 0.000000e+00, %5868 ], [ %6240, %6246 ]
  %6249 = phi float [ 0.000000e+00, %5868 ], [ %6241, %6246 ]
  %6250 = phi float [ 0.000000e+00, %5868 ], [ %6242, %6246 ]
  %6251 = call float @dx.op.dot3.f32(i32 55, float %6248, float %6249, float %6250, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6252 = select i1 %247, float 0.000000e+00, float %6248
  %6253 = select i1 %247, float %6251, float %6249
  %6254 = select i1 %247, float 0.000000e+00, float %6250
  %6255 = fcmp fast olt float %5821, 0.000000e+00
  %6256 = call float @dx.op.unary.f32(i32 6, float %5821)  ; FAbs(value)
  %6257 = fmul fast float %6256, %5750
  %6258 = fmul fast float %6256, %5751
  %6259 = fmul fast float %6256, %5752
  %6260 = select i1 %6255, float %5750, float %6257
  %6261 = select i1 %6255, float %5751, float %6258
  %6262 = select i1 %6255, float %5752, float %6259
  %6263 = fsub fast float 1.000000e+00, %6256
  %6264 = call float @dx.op.unary.f32(i32 7, float %6263)  ; Saturate(value)
  %6265 = fmul fast float %6264, %6252
  %6266 = fmul fast float %6264, %6253
  %6267 = fmul fast float %6264, %6254
  %6268 = fadd fast float %6260, %6265
  %6269 = fadd fast float %6261, %6266
  %6270 = fadd fast float %6262, %6267
  br label %6271

; <label>:6271                                    ; preds = %6247, %5804
  %6272 = phi float [ %5750, %5804 ], [ %6268, %6247 ]
  %6273 = phi float [ %5751, %5804 ], [ %6269, %6247 ]
  %6274 = phi float [ %5752, %5804 ], [ %6270, %6247 ]
  %6275 = fmul fast float %5810, %5746
  %6276 = fmul fast float %5810, %5747
  %6277 = fmul fast float %5810, %5748
  %6278 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %5449, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6279 = fcmp fast ogt float %6278, 0x3E7FF19E20000000
  %6280 = fdiv fast float 1.000000e+00, %6278
  %6281 = select i1 %6279, float %6280, float 0.000000e+00
  %6282 = fmul fast float %6281, %5447
  %6283 = fmul fast float %6281, %5448
  %6284 = fmul fast float %6281, %5449
  %6285 = fadd fast float %6282, -1.000000e+00
  %6286 = fadd fast float %6283, -1.000000e+00
  %6287 = fadd fast float %6284, -1.000000e+00
  %6288 = fmul fast float %6285, 5.000000e-01
  %6289 = fmul fast float %6286, 5.000000e-01
  %6290 = fmul fast float %6287, 5.000000e-01
  %6291 = fadd fast float %6288, 1.000000e+00
  %6292 = fadd fast float %6289, 1.000000e+00
  %6293 = fadd fast float %6290, 1.000000e+00
  %6294 = call float @dx.op.binary.f32(i32 35, float %5494, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6295 = fdiv fast float %4451, %6294
  %6296 = fcmp fast olt float %5174, 1.270000e+02
  %6297 = fcmp fast olt float %5175, 1.270000e+02
  %6298 = fcmp fast olt float %5176, 1.270000e+02
  %6299 = fmul fast float %5174, 0xBFF7154760000000
  %6300 = fmul fast float %6299, %6295
  %6301 = fmul fast float %5175, 0xBFF7154760000000
  %6302 = fmul fast float %6301, %6295
  %6303 = fmul fast float %5176, 0xBFF7154760000000
  %6304 = fmul fast float %6303, %6295
  %6305 = call float @dx.op.unary.f32(i32 21, float %6300)  ; Exp(value)
  %6306 = call float @dx.op.unary.f32(i32 21, float %6302)  ; Exp(value)
  %6307 = call float @dx.op.unary.f32(i32 21, float %6304)  ; Exp(value)
  %6308 = call float @dx.op.unary.f32(i32 7, float %6305)  ; Saturate(value)
  %6309 = call float @dx.op.unary.f32(i32 7, float %6306)  ; Saturate(value)
  %6310 = call float @dx.op.unary.f32(i32 7, float %6307)  ; Saturate(value)
  %6311 = select i1 %6296, float %6308, float 0.000000e+00
  %6312 = select i1 %6297, float %6309, float 0.000000e+00
  %6313 = select i1 %6298, float %6310, float 0.000000e+00
  %6314 = fmul fast float %6311, %5810
  %6315 = fmul fast float %6312, %5810
  %6316 = fmul fast float %6313, %5810
  %6317 = fadd fast float %6314, -1.000000e+00
  %6318 = fadd fast float %6315, -1.000000e+00
  %6319 = fadd fast float %6316, -1.000000e+00
  %6320 = fmul fast float %6317, %5129
  %6321 = fmul fast float %6318, %5129
  %6322 = fmul fast float %6319, %5129
  %6323 = fadd fast float %6320, 1.000000e+00
  %6324 = fadd fast float %6321, 1.000000e+00
  %6325 = fadd fast float %6322, 1.000000e+00
  %6326 = fmul fast float %5451, 0x401CF23780000000
  %6327 = fadd fast float %6326, 0x3FF32641C0000000
  %6328 = fdiv fast float 1.000000e+00, %6327
  %6329 = call float @dx.op.dot3.f32(i32 55, float %5281, float %5282, float %5283, float %5453, float %5454, float %5455)  ; Dot3(ax,ay,az,bx,by,bz)
  %6330 = fmul fast float %6328, %6328
  %6331 = fmul fast float %6329, %6329
  %6332 = fsub fast float 1.000000e+00, %6331
  %6333 = fmul fast float %6330, %6332
  %6334 = fsub fast float 1.000000e+00, %6333
  %6335 = fcmp fast oge float %6334, 0.000000e+00
  %6336 = fmul fast float %6328, %5281
  %6337 = fmul fast float %6328, %5282
  %6338 = fmul fast float %6328, %5283
  %6339 = call float @dx.op.unary.f32(i32 24, float %6334)  ; Sqrt(value)
  %6340 = fmul fast float %6329, %6328
  %6341 = fadd fast float %6340, %6339
  %6342 = fmul fast float %6341, %5453
  %6343 = fmul fast float %6341, %5454
  %6344 = fmul fast float %6341, %5455
  %6345 = fsub fast float %6336, %6342
  %6346 = fsub fast float %6337, %6343
  %6347 = fsub fast float %6338, %6344
  %6348 = select i1 %6335, float %6345, float 0.000000e+00
  %6349 = select i1 %6335, float %6346, float 0.000000e+00
  %6350 = select i1 %6335, float %6347, float 0.000000e+00
  %6351 = fmul fast float %6348, %4451
  %6352 = fmul fast float %6349, %4451
  %6353 = fmul fast float %6350, %4451
  %6354 = fadd fast float %6351, %5489
  %6355 = fadd fast float %6352, %5490
  %6356 = fadd fast float %6353, %5491
  %6357 = call float @dx.op.dot3.f32(i32 55, float %5192, float %5193, float %5194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6358 = fmul fast float %5509, %5129
  %6359 = fsub fast float 1.000000e+00, %6358
  %6360 = call float @dx.op.unary.f32(i32 7, float %6359)  ; Saturate(value)
  %6361 = fsub fast float 1.000000e+00, %6360
  %6362 = fmul fast float %5451, 0x4012D0A400000000
  %6363 = fadd fast float %6362, 0x3FDB6377A0000000
  %6364 = fmul fast float %6361, %6363
  %6365 = fadd fast float %6364, %6357
  %6366 = call float @dx.op.unary.f32(i32 7, float %6365)  ; Saturate(value)
  %6367 = fmul fast float %6272, %5805
  %6368 = fmul fast float %6273, %5806
  %6369 = fmul fast float %6274, %5807
  %6370 = fsub fast float 1.000000e+00, %5494
  %6371 = bitcast float %6370 to i32
  %6372 = sitofp i32 %6371 to float
  %6373 = fmul fast float %6372, 5.000000e+00
  %6374 = fadd fast float %6373, 0xC1EFBF8940000000
  %6375 = fptosi float %6374 to i32
  %6376 = bitcast i32 %6375 to float
  %6377 = fmul fast float %6376, %5104
  %6378 = fmul fast float %5746, %6377
  %6379 = fmul fast float %6378, %5810
  %6380 = fmul fast float %6379, %6291
  %6381 = fmul fast float %5747, %6377
  %6382 = fmul fast float %6381, %5810
  %6383 = fmul fast float %6382, %6292
  %6384 = fmul fast float %5748, %6377
  %6385 = fmul fast float %6384, %5810
  %6386 = fmul fast float %6385, %6293
  %6387 = fmul fast float %6275, %5129
  %6388 = fmul fast float %6276, %5129
  %6389 = fmul fast float %6277, %5129
  %6390 = fsub fast float 1.000000e+00, %6366
  %6391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6392 = extractvalue %dx.types.CBufRet.f32 %6391, 0
  %6393 = extractvalue %dx.types.CBufRet.f32 %6391, 1
  %6394 = extractvalue %dx.types.CBufRet.f32 %6391, 2
  %6395 = extractvalue %dx.types.CBufRet.f32 %6391, 3
  %6396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6397 = extractvalue %dx.types.CBufRet.f32 %6396, 0
  %6398 = extractvalue %dx.types.CBufRet.f32 %6396, 1
  %6399 = extractvalue %dx.types.CBufRet.f32 %6396, 2
  %6400 = extractvalue %dx.types.CBufRet.f32 %6396, 3
  %6401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6401, 0
  %6403 = extractvalue %dx.types.CBufRet.f32 %6401, 1
  %6404 = extractvalue %dx.types.CBufRet.f32 %6401, 2
  %6405 = extractvalue %dx.types.CBufRet.f32 %6401, 3
  %6406 = fmul fast float %6354, %6392
  %6407 = call float @dx.op.tertiary.f32(i32 46, float %6355, float %6393, float %6406)  ; FMad(a,b,c)
  %6408 = call float @dx.op.tertiary.f32(i32 46, float %6356, float %6394, float %6407)  ; FMad(a,b,c)
  %6409 = fadd fast float %6408, %6395
  %6410 = fmul fast float %6354, %6397
  %6411 = call float @dx.op.tertiary.f32(i32 46, float %6355, float %6398, float %6410)  ; FMad(a,b,c)
  %6412 = call float @dx.op.tertiary.f32(i32 46, float %6356, float %6399, float %6411)  ; FMad(a,b,c)
  %6413 = fadd fast float %6412, %6400
  %6414 = fmul fast float %6354, %6402
  %6415 = call float @dx.op.tertiary.f32(i32 46, float %6355, float %6403, float %6414)  ; FMad(a,b,c)
  %6416 = call float @dx.op.tertiary.f32(i32 46, float %6356, float %6404, float %6415)  ; FMad(a,b,c)
  %6417 = fadd fast float %6416, %6405
  %6418 = fdiv fast float %6409, %6417
  %6419 = fdiv fast float %6413, %6417
  %6420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6421 = extractvalue %dx.types.CBufRet.f32 %6420, 0
  %6422 = extractvalue %dx.types.CBufRet.f32 %6420, 1
  %6423 = fmul fast float %6421, %6418
  %6424 = fmul fast float %6422, %6419
  %6425 = extractvalue %dx.types.CBufRet.f32 %6420, 2
  %6426 = extractvalue %dx.types.CBufRet.f32 %6420, 3
  %6427 = fadd fast float %6423, %6425
  %6428 = fadd fast float %6424, %6426
  %6429 = call float @dx.op.unary.f32(i32 7, float %6427)  ; Saturate(value)
  %6430 = call float @dx.op.unary.f32(i32 7, float %6428)  ; Saturate(value)
  %6431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6431, 0
  %6433 = extractvalue %dx.types.CBufRet.f32 %6431, 1
  %6434 = fmul fast float %6432, %6429
  %6435 = fmul fast float %6433, %6430
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 1
  %6438 = extractvalue %dx.types.CBufRet.f32 %6436, 2
  %6439 = fsub fast float %6437, %6438
  %6440 = fmul fast float %6439, %6390
  %6441 = fadd fast float %6440, %6438
  %6442 = fmul fast float %260, 2.000000e+00
  %6443 = fmul fast float %261, 2.000000e+00
  %6444 = fadd fast float %6442, -1.000000e+00
  %6445 = fadd fast float %6443, -1.000000e+00
  %6446 = fmul fast float %6441, %6444
  %6447 = fmul fast float %6441, %6445
  %6448 = fadd fast float %6446, %6434
  %6449 = fadd fast float %6447, %6435
  %6450 = extractvalue %dx.types.CBufRet.f32 %6431, 2
  %6451 = extractvalue %dx.types.CBufRet.f32 %6431, 3
  %6452 = fmul fast float %6448, %6450
  %6453 = fmul fast float %6449, %6451
  %6454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %45, float %6452, float %6453, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6455 = extractvalue %dx.types.ResRet.f32 %6454, 0
  %6456 = fcmp fast ogt float %6455, -1.000000e+00
  %6457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6458 = extractvalue %dx.types.CBufRet.f32 %6457, 1
  %6459 = select i1 %6456, float %6458, float 1.000000e+00
  %6460 = fadd fast float %6455, 1.000000e+00
  %6461 = fmul fast float %6459, %6460
  %6462 = call float @dx.op.unary.f32(i32 6, float %6461)  ; FAbs(value)
  %6463 = fsub fast float %6462, %6417
  %6464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6465 = extractvalue %dx.types.CBufRet.f32 %6464, 2
  %6466 = fmul fast float %6465, %6462
  %6467 = fdiv fast float 1.600000e+02, %6466
  %6468 = fmul fast float %6366, %6366
  %6469 = fmul fast float %6468, 0xBFB5B17960000000
  %6470 = fmul fast float %6469, %6463
  %6471 = fmul fast float %6470, %6467
  %6472 = call float @dx.op.unary.f32(i32 21, float %6471)  ; Exp(value)
  %6473 = fmul fast float %6472, 0x3FF04B2960000000
  %6474 = fsub fast float 0x3FF04B2960000000, %6473
  %6475 = call float @dx.op.unary.f32(i32 7, float %6474)  ; Saturate(value)
  %6476 = fmul fast float %6475, 4.000000e+00
  %6477 = fadd fast float %260, -5.000000e-01
  %6478 = fadd fast float %261, -5.000000e-01
  %6479 = fmul fast float %6475, 0x3FBEB851E0000000
  %6480 = call float @dx.op.unary.f32(i32 7, float %6479)  ; Saturate(value)
  %6481 = fmul fast float %6480, %6477
  %6482 = fmul fast float %6480, %6478
  %6483 = fadd fast float %6481, %6427
  %6484 = fadd fast float %6482, %6428
  %6485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.i32 %6485, 0
  %6487 = icmp eq i32 %6486, 0
  br i1 %6487, label %6493, label %6488, !dx.controlflow.hints !92

; <label>:6488                                    ; preds = %6271
  %6489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %6483, float %6484, float undef, float undef, i32 0, i32 0, i32 undef, float %6476)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6490 = extractvalue %dx.types.ResRet.f32 %6489, 0
  %6491 = extractvalue %dx.types.ResRet.f32 %6489, 1
  %6492 = extractvalue %dx.types.ResRet.f32 %6489, 2
  br label %6498

; <label>:6493                                    ; preds = %6271
  %6494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %42, float %6483, float %6484, float undef, float undef, i32 0, i32 0, i32 undef, float %6476)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6495 = extractvalue %dx.types.ResRet.f32 %6494, 0
  %6496 = extractvalue %dx.types.ResRet.f32 %6494, 1
  %6497 = extractvalue %dx.types.ResRet.f32 %6494, 2
  br label %6498

; <label>:6498                                    ; preds = %6493, %6488
  %6499 = phi float [ %6490, %6488 ], [ %6495, %6493 ]
  %6500 = phi float [ %6491, %6488 ], [ %6496, %6493 ]
  %6501 = phi float [ %6492, %6488 ], [ %6497, %6493 ]
  %6502 = select i1 %247, float 0.000000e+00, float %6500
  %6503 = select i1 %247, float 0.000000e+00, float %6501
  %6504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6505 = extractvalue %dx.types.CBufRet.f32 %6504, 1
  %6506 = fmul fast float %6499, %6323
  %6507 = fmul fast float %6506, %6505
  %6508 = fmul fast float %6502, %6324
  %6509 = fmul fast float %6508, %6505
  %6510 = fmul fast float %6503, %6325
  %6511 = fmul fast float %6510, %6505
  %6512 = fadd fast float %6367, %5093
  %6513 = fadd fast float %6512, %6380
  %6514 = fadd fast float %6513, %6507
  %6515 = fmul fast float %6514, %5129
  %6516 = fadd fast float %6368, %5094
  %6517 = fadd fast float %6516, %6383
  %6518 = fadd fast float %6517, %6509
  %6519 = fmul fast float %6518, %5129
  %6520 = fadd fast float %6369, %5095
  %6521 = fadd fast float %6520, %6386
  %6522 = fadd fast float %6521, %6511
  %6523 = fmul fast float %6522, %5129
  %6524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.f32 %6524, 3
  %6526 = fcmp fast oeq float %6525, 0.000000e+00
  br i1 %6526, label %8130, label %6527

; <label>:6527                                    ; preds = %6498
  %6528 = extractvalue %dx.types.CBufRet.f32 %6524, 0
  %6529 = extractvalue %dx.types.CBufRet.f32 %6524, 1
  %6530 = extractvalue %dx.types.CBufRet.f32 %6524, 2
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 0
  %6533 = extractvalue %dx.types.CBufRet.f32 %6531, 1
  %6534 = extractvalue %dx.types.CBufRet.f32 %6531, 2
  %6535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6536 = extractvalue %dx.types.CBufRet.f32 %6535, 0
  %6537 = extractvalue %dx.types.CBufRet.f32 %6535, 1
  %6538 = call float @dx.op.dot3.f32(i32 55, float %6532, float %6533, float %6534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6539 = select i1 %247, float %6536, float %6532
  %6540 = select i1 %247, float %6538, float %6533
  %6541 = select i1 %247, float %6537, float %6534
  %6542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6543 = extractvalue %dx.types.CBufRet.f32 %6542, 2
  %6544 = fmul fast float %6543, %106
  %6545 = fmul fast float %6543, %107
  %6546 = fmul fast float %6543, %108
  %6547 = fadd fast float %6544, %154
  %6548 = fadd fast float %6545, %155
  %6549 = fadd fast float %6546, %156
  %6550 = fcmp fast olt float %6525, 0.000000e+00
  br i1 %6550, label %7646, label %6551

; <label>:6551                                    ; preds = %6527
  %6552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.f32 %6552, 0
  %6554 = extractvalue %dx.types.CBufRet.f32 %6552, 1
  %6555 = extractvalue %dx.types.CBufRet.f32 %6552, 2
  %6556 = extractvalue %dx.types.CBufRet.f32 %6552, 3
  %6557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6558 = extractvalue %dx.types.CBufRet.f32 %6557, 0
  %6559 = extractvalue %dx.types.CBufRet.f32 %6557, 1
  %6560 = extractvalue %dx.types.CBufRet.f32 %6557, 2
  %6561 = extractvalue %dx.types.CBufRet.f32 %6557, 3
  %6562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.f32 %6562, 0
  %6564 = extractvalue %dx.types.CBufRet.f32 %6562, 1
  %6565 = extractvalue %dx.types.CBufRet.f32 %6562, 2
  %6566 = extractvalue %dx.types.CBufRet.f32 %6562, 3
  %6567 = fmul fast float %6553, %6547
  %6568 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %6554, float %6567)  ; FMad(a,b,c)
  %6569 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %6555, float %6568)  ; FMad(a,b,c)
  %6570 = fadd fast float %6569, %6556
  %6571 = fmul fast float %6558, %6547
  %6572 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %6559, float %6571)  ; FMad(a,b,c)
  %6573 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %6560, float %6572)  ; FMad(a,b,c)
  %6574 = fadd fast float %6573, %6561
  %6575 = fmul fast float %6563, %6547
  %6576 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %6564, float %6575)  ; FMad(a,b,c)
  %6577 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %6565, float %6576)  ; FMad(a,b,c)
  %6578 = fadd fast float %6577, %6566
  %6579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6580 = extractvalue %dx.types.CBufRet.f32 %6579, 0
  %6581 = extractvalue %dx.types.CBufRet.f32 %6579, 1
  %6582 = extractvalue %dx.types.CBufRet.f32 %6579, 3
  %6583 = fmul fast float %6582, %6570
  %6584 = fmul fast float %6582, %6574
  %6585 = fadd fast float %6583, %6580
  %6586 = fadd fast float %6584, %6581
  %6587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6588 = extractvalue %dx.types.CBufRet.f32 %6587, 0
  %6589 = extractvalue %dx.types.CBufRet.f32 %6587, 1
  %6590 = extractvalue %dx.types.CBufRet.f32 %6587, 3
  %6591 = fmul fast float %6590, %6570
  %6592 = fmul fast float %6590, %6574
  %6593 = fadd fast float %6591, %6588
  %6594 = fadd fast float %6592, %6589
  %6595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.f32 %6595, 1
  %6597 = fsub fast float %6596, %6578
  %6598 = extractvalue %dx.types.CBufRet.f32 %6595, 2
  %6599 = fmul fast float %6597, %6598
  %6600 = fsub fast float 1.000000e+00, %6599
  %6601 = call float @dx.op.unary.f32(i32 7, float %6600)  ; Saturate(value)
  %6602 = extractvalue %dx.types.CBufRet.f32 %6587, 2
  %6603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6604 = extractvalue %dx.types.CBufRet.f32 %6603, 2
  %6605 = fadd fast float %6604, %6602
  %6606 = fcmp fast ogt float %6605, 0.000000e+00
  br i1 %6606, label %6607, label %6631

; <label>:6607                                    ; preds = %6551
  %6608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6609 = extractvalue %dx.types.CBufRet.f32 %6608, 0
  %6610 = extractvalue %dx.types.CBufRet.f32 %6608, 1
  %6611 = fsub fast float %6593, %6609
  %6612 = fsub fast float %6594, %6610
  %6613 = fcmp fast olt float %6611, 0.000000e+00
  %6614 = fcmp fast olt float %6612, 0.000000e+00
  %6615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6616 = extractvalue %dx.types.CBufRet.f32 %6615, 0
  %6617 = extractvalue %dx.types.CBufRet.f32 %6615, 1
  %6618 = extractvalue %dx.types.CBufRet.f32 %6615, 2
  %6619 = extractvalue %dx.types.CBufRet.f32 %6615, 3
  %6620 = select i1 %6613, float %6616, float %6618
  %6621 = select i1 %6614, float %6617, float %6619
  %6622 = fmul fast float %6620, %6611
  %6623 = fmul fast float %6621, %6612
  %6624 = call float @dx.op.unary.f32(i32 6, float %6622)  ; FAbs(value)
  %6625 = call float @dx.op.unary.f32(i32 6, float %6623)  ; FAbs(value)
  %6626 = extractvalue %dx.types.CBufRet.f32 %6542, 0
  %6627 = call float @dx.op.binary.f32(i32 35, float %6624, float %6625)  ; FMax(a,b)
  %6628 = fsub fast float %6626, %6627
  %6629 = call float @dx.op.unary.f32(i32 7, float %6628)  ; Saturate(value)
  %6630 = fmul fast float %6629, %6601
  br label %6631

; <label>:6631                                    ; preds = %6607, %6551
  %6632 = phi float [ %6630, %6607 ], [ 0.000000e+00, %6551 ]
  %6633 = extractvalue %dx.types.CBufRet.f32 %6579, 2
  %6634 = extractvalue %dx.types.CBufRet.f32 %6603, 1
  %6635 = fadd fast float %6634, %6633
  %6636 = fcmp fast ogt float %6635, 0.000000e+00
  %6637 = extractvalue %dx.types.CBufRet.f32 %6542, 0
  br i1 %6636, label %6638, label %6661

; <label>:6638                                    ; preds = %6631
  %6639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6640 = extractvalue %dx.types.CBufRet.f32 %6639, 0
  %6641 = extractvalue %dx.types.CBufRet.f32 %6639, 1
  %6642 = fsub fast float %6585, %6640
  %6643 = fsub fast float %6586, %6641
  %6644 = fcmp fast olt float %6642, 0.000000e+00
  %6645 = fcmp fast olt float %6643, 0.000000e+00
  %6646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6647 = extractvalue %dx.types.CBufRet.f32 %6646, 0
  %6648 = extractvalue %dx.types.CBufRet.f32 %6646, 1
  %6649 = extractvalue %dx.types.CBufRet.f32 %6646, 2
  %6650 = extractvalue %dx.types.CBufRet.f32 %6646, 3
  %6651 = select i1 %6644, float %6647, float %6649
  %6652 = select i1 %6645, float %6648, float %6650
  %6653 = fmul fast float %6651, %6642
  %6654 = fmul fast float %6652, %6643
  %6655 = call float @dx.op.unary.f32(i32 6, float %6653)  ; FAbs(value)
  %6656 = call float @dx.op.unary.f32(i32 6, float %6654)  ; FAbs(value)
  %6657 = call float @dx.op.binary.f32(i32 35, float %6655, float %6656)  ; FMax(a,b)
  %6658 = fsub fast float %6637, %6657
  %6659 = call float @dx.op.unary.f32(i32 7, float %6658)  ; Saturate(value)
  %6660 = fmul fast float %6659, %6601
  br label %6661

; <label>:6661                                    ; preds = %6638, %6631
  %6662 = phi float [ %6660, %6638 ], [ 0.000000e+00, %6631 ]
  %6663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6664 = extractvalue %dx.types.CBufRet.f32 %6663, 1
  %6665 = call float @dx.op.unary.f32(i32 7, float %6664)  ; Saturate(value)
  %6666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6667 = extractvalue %dx.types.CBufRet.f32 %6666, 0
  %6668 = extractvalue %dx.types.CBufRet.f32 %6666, 1
  %6669 = fsub fast float %6570, %6667
  %6670 = fsub fast float %6574, %6668
  %6671 = fcmp fast olt float %6669, 0.000000e+00
  %6672 = fcmp fast olt float %6670, 0.000000e+00
  %6673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6674 = extractvalue %dx.types.CBufRet.f32 %6673, 0
  %6675 = extractvalue %dx.types.CBufRet.f32 %6673, 1
  %6676 = extractvalue %dx.types.CBufRet.f32 %6673, 2
  %6677 = extractvalue %dx.types.CBufRet.f32 %6673, 3
  %6678 = select i1 %6671, float %6674, float %6676
  %6679 = select i1 %6672, float %6675, float %6677
  %6680 = fmul fast float %6678, %6669
  %6681 = fmul fast float %6679, %6670
  %6682 = call float @dx.op.unary.f32(i32 6, float %6680)  ; FAbs(value)
  %6683 = call float @dx.op.unary.f32(i32 6, float %6681)  ; FAbs(value)
  %6684 = call float @dx.op.binary.f32(i32 35, float %6682, float %6683)  ; FMax(a,b)
  %6685 = fsub fast float %6637, %6684
  %6686 = call float @dx.op.unary.f32(i32 7, float %6685)  ; Saturate(value)
  %6687 = call float @dx.op.binary.f32(i32 36, float %6686, float %6665)  ; FMin(a,b)
  %6688 = fmul fast float %6687, %6601
  %6689 = fsub fast float %6662, %6688
  %6690 = fsub fast float %6632, %6662
  %6691 = fsub fast float %6690, %6688
  %6692 = call float @dx.op.binary.f32(i32 35, float %6662, float %6632)  ; FMax(a,b)
  %6693 = call float @dx.op.binary.f32(i32 35, float %6688, float %6692)  ; FMax(a,b)
  %6694 = fcmp fast olt float %6693, 1.000000e+00
  br i1 %6694, label %6695, label %7093, !dx.controlflow.hints !93

; <label>:6695                                    ; preds = %6661
  %6696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6697 = extractvalue %dx.types.CBufRet.f32 %6696, 0
  %6698 = fcmp fast une float %6697, 0.000000e+00
  br i1 %6698, label %6699, label %7093, !dx.controlflow.hints !94

; <label>:6699                                    ; preds = %6695
  %6700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6701 = extractvalue %dx.types.CBufRet.f32 %6700, 0
  %6702 = extractvalue %dx.types.CBufRet.f32 %6700, 1
  %6703 = extractvalue %dx.types.CBufRet.f32 %6700, 2
  %6704 = extractvalue %dx.types.CBufRet.f32 %6700, 3
  %6705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6706 = extractvalue %dx.types.CBufRet.f32 %6705, 0
  %6707 = extractvalue %dx.types.CBufRet.f32 %6705, 1
  %6708 = extractvalue %dx.types.CBufRet.f32 %6705, 2
  %6709 = extractvalue %dx.types.CBufRet.f32 %6705, 3
  %6710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6711 = extractvalue %dx.types.CBufRet.f32 %6710, 0
  %6712 = extractvalue %dx.types.CBufRet.f32 %6710, 1
  %6713 = extractvalue %dx.types.CBufRet.f32 %6710, 2
  %6714 = extractvalue %dx.types.CBufRet.f32 %6710, 3
  %6715 = fmul fast float %6701, %6547
  %6716 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %6702, float %6715)  ; FMad(a,b,c)
  %6717 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %6703, float %6716)  ; FMad(a,b,c)
  %6718 = fadd fast float %6717, %6704
  %6719 = fmul fast float %6706, %6547
  %6720 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %6707, float %6719)  ; FMad(a,b,c)
  %6721 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %6708, float %6720)  ; FMad(a,b,c)
  %6722 = fadd fast float %6721, %6709
  %6723 = fmul fast float %6711, %6547
  %6724 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %6712, float %6723)  ; FMad(a,b,c)
  %6725 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %6713, float %6724)  ; FMad(a,b,c)
  %6726 = fadd fast float %6725, %6714
  %6727 = fcmp fast oge float %6718, 1.000000e+00
  %6728 = fcmp fast oge float %6722, 1.000000e+00
  %6729 = or i1 %6727, %6728
  %6730 = fcmp fast olt float %6718, 0.000000e+00
  %6731 = fcmp fast olt float %6722, 0.000000e+00
  %6732 = or i1 %6730, %6731
  %6733 = or i1 %6729, %6732
  br i1 %6733, label %7093, label %6734, !dx.controlflow.hints !95

; <label>:6734                                    ; preds = %6699
  %6735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6736 = extractvalue %dx.types.CBufRet.f32 %6735, 0
  %6737 = extractvalue %dx.types.CBufRet.f32 %6735, 1
  %6738 = extractvalue %dx.types.CBufRet.f32 %6735, 2
  %6739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.i32 %6739, 2
  %6741 = uitofp i32 %6740 to float
  %6742 = extractvalue %dx.types.CBufRet.i32 %6739, 3
  %6743 = uitofp i32 %6742 to float
  %6744 = extractvalue %dx.types.CBufRet.f32 %6735, 3
  %6745 = fmul fast float %6744, 2.000000e+00
  %6746 = fsub fast float %6718, %6736
  %6747 = fsub fast float %6722, %6737
  %6748 = fmul fast float %6745, %6746
  %6749 = fmul fast float %6745, %6747
  %6750 = fdiv fast float 1.000000e+00, %6530
  %6751 = fmul fast float %6749, %6750
  %6752 = call float @dx.op.unary.f32(i32 6, float %6751)  ; FAbs(value)
  %6753 = fmul fast float %6738, %6549
  %6754 = fmul fast float %6753, %6745
  %6755 = call float @dx.op.unary.f32(i32 6, float %6754)  ; FAbs(value)
  %6756 = call float @dx.op.unary.f32(i32 6, float %6748)  ; FAbs(value)
  %6757 = call float @dx.op.binary.f32(i32 35, float %6755, float %6752)  ; FMax(a,b)
  %6758 = call float @dx.op.binary.f32(i32 35, float %6756, float %6757)  ; FMax(a,b)
  %6759 = fmul fast float %6758, 2.000000e+00
  %6760 = call float @dx.op.unary.f32(i32 23, float %6759)  ; Log(value)
  %6761 = call float @dx.op.binary.f32(i32 35, float %6760, float %6741)  ; FMax(a,b)
  %6762 = call float @dx.op.unary.f32(i32 22, float %6761)  ; Frc(value)
  %6763 = fadd fast float %6762, 0xBFEA666660000000
  %6764 = fmul fast float %6763, 8.000000e+00
  %6765 = call float @dx.op.unary.f32(i32 7, float %6764)  ; Saturate(value)
  %6766 = call float @dx.op.unary.f32(i32 27, float %6761)  ; Round_ni(value)
  %6767 = fadd fast float %6766, %6765
  %6768 = call float @dx.op.binary.f32(i32 36, float %6767, float %6743)  ; FMin(a,b)
  %6769 = call float @dx.op.unary.f32(i32 27, float %6768)  ; Round_ni(value)
  %6770 = fsub fast float -0.000000e+00, %6769
  %6771 = call float @dx.op.unary.f32(i32 21, float %6770)  ; Exp(value)
  %6772 = fmul fast float %6771, %6745
  %6773 = fmul fast float %6772, %6718
  %6774 = fmul fast float %6772, %6722
  %6775 = fmul fast float %6773, 2.500000e-01
  %6776 = fmul fast float %6774, 2.500000e-01
  %6777 = fadd fast float %6775, 5.000000e-01
  %6778 = fadd fast float %6776, 5.000000e-01
  %6779 = fsub fast float %6743, %6741
  %6780 = fptoui float %6779 to i32
  %6781 = add i32 %6780, 320
  %6782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %6781)  ; CBufferLoadLegacy(handle,regIndex)
  %6783 = extractvalue %dx.types.CBufRet.f32 %6782, 0
  %6784 = extractvalue %dx.types.CBufRet.f32 %6782, 1
  %6785 = fcmp fast une float %6768, %6743
  %6786 = fsub fast float %6718, %6783
  %6787 = fsub fast float %6722, %6784
  %6788 = call float @dx.op.unary.f32(i32 6, float %6786)  ; FAbs(value)
  %6789 = call float @dx.op.unary.f32(i32 6, float %6787)  ; FAbs(value)
  %6790 = fmul fast float %6788, %6772
  %6791 = fmul fast float %6789, %6772
  %6792 = fcmp fast olt float %6790, 1.000000e+00
  %6793 = fcmp fast olt float %6791, 1.000000e+00
  %6794 = and i1 %6792, %6793
  %6795 = or i1 %6785, %6794
  br i1 %6795, label %6796, label %7093, !dx.controlflow.hints !96

; <label>:6796                                    ; preds = %6734
  %6797 = fmul fast float %6774, 5.000000e-01
  %6798 = fmul fast float %6773, 5.000000e-01
  %6799 = fadd fast float %6797, 5.000000e-01
  %6800 = fadd fast float %6798, 5.000000e-01
  %6801 = sitofp i32 %6740 to float
  %6802 = fsub fast float %6768, %6801
  %6803 = call float @dx.op.unary.f32(i32 27, float %6802)  ; Round_ni(value)
  %6804 = call float @dx.op.unary.f32(i32 22, float %6768)  ; Frc(value)
  %6805 = call float @dx.op.unary.f32(i32 22, float %6800)  ; Frc(value)
  %6806 = call float @dx.op.unary.f32(i32 22, float %6799)  ; Frc(value)
  %6807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %6805, float %6806, float %6803, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6808 = extractvalue %dx.types.ResRet.f32 %6807, 0
  %6809 = extractvalue %dx.types.ResRet.f32 %6807, 1
  %6810 = extractvalue %dx.types.ResRet.f32 %6807, 2
  %6811 = extractvalue %dx.types.ResRet.f32 %6807, 3
  %6812 = fcmp fast ogt float %6804, 0.000000e+00
  br i1 %6812, label %6813, label %6834, !dx.controlflow.hints !97

; <label>:6813                                    ; preds = %6796
  %6814 = fadd fast float %6803, 1.000000e+00
  %6815 = call float @dx.op.unary.f32(i32 22, float %6777)  ; Frc(value)
  %6816 = call float @dx.op.unary.f32(i32 22, float %6778)  ; Frc(value)
  %6817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %6815, float %6816, float %6814, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6818 = extractvalue %dx.types.ResRet.f32 %6817, 0
  %6819 = extractvalue %dx.types.ResRet.f32 %6817, 1
  %6820 = extractvalue %dx.types.ResRet.f32 %6817, 2
  %6821 = extractvalue %dx.types.ResRet.f32 %6817, 3
  %6822 = fsub fast float %6818, %6808
  %6823 = fsub fast float %6819, %6809
  %6824 = fsub fast float %6820, %6810
  %6825 = fsub fast float %6821, %6811
  %6826 = fmul fast float %6822, %6804
  %6827 = fmul fast float %6823, %6804
  %6828 = fmul fast float %6824, %6804
  %6829 = fmul fast float %6825, %6804
  %6830 = fadd fast float %6826, %6808
  %6831 = fadd fast float %6827, %6809
  %6832 = fadd fast float %6828, %6810
  %6833 = fadd fast float %6829, %6811
  br label %6834

; <label>:6834                                    ; preds = %6813, %6796
  %6835 = phi float [ %6830, %6813 ], [ %6808, %6796 ]
  %6836 = phi float [ %6831, %6813 ], [ %6809, %6796 ]
  %6837 = phi float [ %6832, %6813 ], [ %6810, %6796 ]
  %6838 = phi float [ %6833, %6813 ], [ %6811, %6796 ]
  %6839 = fadd fast float %6835, -5.000000e-01
  %6840 = fadd fast float %6837, -5.000000e-01
  %6841 = fmul fast float %6839, 0xBFD5555560000000
  %6842 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6840, float %6841)  ; FMad(a,b,c)
  %6843 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6836, float 0.000000e+00)  ; FMad(a,b,c)
  %6844 = fadd fast float %6843, %6838
  %6845 = fmul fast float %6839, -7.500000e-01
  %6846 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6840, float %6845)  ; FMad(a,b,c)
  %6847 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6836, float 0.000000e+00)  ; FMad(a,b,c)
  %6848 = fadd fast float %6847, %6838
  %6849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6850 = extractvalue %dx.types.CBufRet.f32 %6849, 0
  %6851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6852 = extractvalue %dx.types.CBufRet.f32 %6851, 0
  %6853 = extractvalue %dx.types.CBufRet.f32 %6851, 1
  %6854 = extractvalue %dx.types.CBufRet.f32 %6851, 2
  %6855 = extractvalue %dx.types.CBufRet.f32 %6851, 3
  %6856 = fsub fast float %6852, %6842
  %6857 = fsub fast float %6853, %6844
  %6858 = fsub fast float %6854, %6846
  %6859 = fsub fast float %6855, %6848
  %6860 = fmul fast float %6856, %6850
  %6861 = fmul fast float %6857, %6850
  %6862 = fmul fast float %6858, %6850
  %6863 = fmul fast float %6859, %6850
  %6864 = fadd fast float %6860, %6842
  %6865 = fadd fast float %6861, %6844
  %6866 = fadd fast float %6862, %6846
  %6867 = fadd fast float %6863, %6848
  %6868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6869 = extractvalue %dx.types.ResRet.i32 %6868, 0
  %6870 = and i32 %6869, 536870911
  %6871 = uitofp i32 %6870 to float
  %6872 = fmul fast float %6871, %6718
  %6873 = fmul fast float %6871, %6722
  %6874 = fptoui float %6872 to i32
  %6875 = fptoui float %6873 to i32
  %6876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6877 = extractvalue %dx.types.ResRet.i32 %6876, 0
  %6878 = and i32 %6877, 31
  %6879 = lshr i32 %6874, %6878
  %6880 = lshr i32 %6875, %6878
  %6881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6882 = extractvalue %dx.types.ResRet.i32 %6881, 0
  %6883 = and i32 %6882, 31
  %6884 = shl i32 1, %6883
  %6885 = call i32 @dx.op.binary.i32(i32 40, i32 %6884, i32 4)  ; UMin(a,b)
  %6886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6887 = extractvalue %dx.types.ResRet.i32 %6886, 0
  %6888 = extractvalue %dx.types.ResRet.i32 %6886, 1
  %6889 = icmp eq i32 %6885, 0
  br i1 %6889, label %6931, label %6890

; <label>:6890                                    ; preds = %6834
  br label %6891

; <label>:6891                                    ; preds = %6919, %6890
  %6892 = phi i32 [ %6922, %6919 ], [ 0, %6890 ]
  %6893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6894 = extractvalue %dx.types.ResRet.i32 %6893, 0
  %6895 = lshr i32 %6894, 16
  %6896 = and i32 %6895, 31
  %6897 = shl i32 %6880, %6896
  %6898 = add i32 %6897, %6879
  %6899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6900 = extractvalue %dx.types.ResRet.i32 %6899, 0
  %6901 = and i32 %6900, 31
  %6902 = shl i32 %6898, %6901
  %6903 = add i32 %6902, %6892
  %6904 = shl i32 %6903, 2
  %6905 = add i32 %6904, 32
  %6906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6905, i32 undef)  ; BufferLoad(srv,index,wot)
  %6907 = extractvalue %dx.types.ResRet.i32 %6906, 0
  %6908 = icmp slt i32 %6907, 0
  %6909 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6892
  %6910 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6892
  %6911 = bitcast float* %6909 to i32*
  %6912 = bitcast float* %6910 to i32*
  br i1 %6908, label %6913, label %6919

; <label>:6913                                    ; preds = %6891
  %6914 = and i32 %6907, 1073741823
  %6915 = add nuw nsw i32 %6914, 20
  %6916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6915, i32 undef)  ; BufferLoad(srv,index,wot)
  %6917 = extractvalue %dx.types.ResRet.i32 %6916, 0
  %6918 = extractvalue %dx.types.ResRet.i32 %6916, 1
  br label %6919

; <label>:6919                                    ; preds = %6913, %6891
  %6920 = phi i32 [ %6917, %6913 ], [ %6887, %6891 ]
  %6921 = phi i32 [ %6918, %6913 ], [ %6888, %6891 ]
  store i32 %6920, i32* %6911, align 4
  store i32 %6921, i32* %6912, align 4
  %6922 = add nuw i32 %6892, 1
  %6923 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6924 = extractvalue %dx.types.CBufRet.i32 %6923, 2
  %6925 = icmp eq i32 %6924, 0
  %6926 = icmp ugt i32 %6907, -1073741825
  %6927 = and i1 %6926, %6925
  %6928 = icmp ult i32 %6922, %6885
  %6929 = and i1 %6927, %6928
  br i1 %6929, label %6891, label %6930

; <label>:6930                                    ; preds = %6919
  br label %6931

; <label>:6931                                    ; preds = %6930, %6834
  %6932 = phi i32 [ 0, %6834 ], [ %6922, %6930 ]
  %6933 = extractvalue %dx.types.CBufRet.f32 %6696, 2
  %6934 = fptoui float %6933 to i32
  %6935 = icmp eq i32 %6934, 0
  br i1 %6935, label %6987, label %6936

; <label>:6936                                    ; preds = %6931
  br label %6937

; <label>:6937                                    ; preds = %6982, %6936
  %6938 = phi i32 [ %6983, %6982 ], [ %6932, %6936 ]
  %6939 = phi i32 [ %6984, %6982 ], [ 0, %6936 ]
  %6940 = lshr i32 %6939, 2
  %6941 = and i32 %6939, 3
  %6942 = add nuw nsw i32 %6940, 83
  %6943 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %6942)  ; CBufferLoadLegacy(handle,regIndex)
  %6944 = extractvalue %dx.types.CBufRet.i32 %6943, 0
  %6945 = extractvalue %dx.types.CBufRet.i32 %6943, 1
  %6946 = extractvalue %dx.types.CBufRet.i32 %6943, 2
  %6947 = extractvalue %dx.types.CBufRet.i32 %6943, 3
  %6948 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %6944, i32* %6948, align 4
  %6949 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %6945, i32* %6949, align 4
  %6950 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %6946, i32* %6950, align 4
  %6951 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %6947, i32* %6951, align 4
  %6952 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %6941
  %6953 = load i32, i32* %6952, align 4, !tbaa !98, !noalias !102
  %6954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6955 = extractvalue %dx.types.ResRet.i32 %6954, 0
  %6956 = lshr i32 %6955, 16
  %6957 = and i32 %6956, 31
  %6958 = shl i32 %6880, %6957
  %6959 = add i32 %6958, %6879
  %6960 = shl i32 %6959, 2
  %6961 = add i32 %6960, %6953
  %6962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6961, i32 undef)  ; BufferLoad(srv,index,wot)
  %6963 = extractvalue %dx.types.ResRet.i32 %6962, 0
  %6964 = icmp eq i32 %6963, 0
  br i1 %6964, label %6982, label %6965

; <label>:6965                                    ; preds = %6937
  %6966 = icmp slt i32 %6963, 0
  %6967 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6938
  %6968 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6938
  %6969 = bitcast float* %6967 to i32*
  %6970 = bitcast float* %6968 to i32*
  br i1 %6966, label %6971, label %6978

; <label>:6971                                    ; preds = %6965
  %6972 = and i32 %6963, 1073741823
  %6973 = add i32 %6953, 20
  %6974 = add i32 %6973, %6972
  %6975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6974, i32 undef)  ; BufferLoad(srv,index,wot)
  %6976 = extractvalue %dx.types.ResRet.i32 %6975, 0
  %6977 = extractvalue %dx.types.ResRet.i32 %6975, 1
  br label %6978

; <label>:6978                                    ; preds = %6971, %6965
  %6979 = phi i32 [ %6976, %6971 ], [ %6887, %6965 ]
  %6980 = phi i32 [ %6977, %6971 ], [ %6888, %6965 ]
  store i32 %6979, i32* %6969, align 4
  store i32 %6980, i32* %6970, align 4
  %6981 = add i32 %6938, 1
  br label %6982

; <label>:6982                                    ; preds = %6978, %6937
  %6983 = phi i32 [ %6938, %6937 ], [ %6981, %6978 ]
  %6984 = add nuw i32 %6939, 1
  %6985 = icmp eq i32 %6984, %6934
  br i1 %6985, label %6986, label %6937

; <label>:6986                                    ; preds = %6982
  br label %6987

; <label>:6987                                    ; preds = %6986, %6931
  %6988 = phi i32 [ %6932, %6931 ], [ %6983, %6986 ]
  %6989 = icmp eq i32 %6988, 1
  %6990 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %6991 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %6989, label %6992, label %6995

; <label>:6992                                    ; preds = %6987
  %6993 = load float, float* %6990, align 4
  %6994 = load float, float* %6991, align 4
  br label %7022

; <label>:6995                                    ; preds = %6987
  %6996 = load float, float* %6990, align 4
  %6997 = load float, float* %6991, align 4
  %6998 = fdiv fast float 1.000000e+00, %6997
  %6999 = fsub fast float %6996, %6998
  %7000 = icmp ugt i32 %6988, 1
  br i1 %7000, label %7001, label %7017

; <label>:7001                                    ; preds = %6995
  br label %7002

; <label>:7002                                    ; preds = %7002, %7001
  %7003 = phi float [ %7012, %7002 ], [ %6999, %7001 ]
  %7004 = phi float [ %7013, %7002 ], [ %6996, %7001 ]
  %7005 = phi i32 [ %7014, %7002 ], [ 1, %7001 ]
  %7006 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %7005
  %7007 = load float, float* %7006, align 4
  %7008 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %7005
  %7009 = load float, float* %7008, align 4
  %7010 = fdiv fast float 1.000000e+00, %7009
  %7011 = fsub fast float %7007, %7010
  %7012 = call float @dx.op.binary.f32(i32 36, float %7003, float %7011)  ; FMin(a,b)
  %7013 = call float @dx.op.binary.f32(i32 35, float %7004, float %7007)  ; FMax(a,b)
  %7014 = add nuw i32 %7005, 1
  %7015 = icmp eq i32 %7014, %6988
  br i1 %7015, label %7016, label %7002

; <label>:7016                                    ; preds = %7002
  br label %7017

; <label>:7017                                    ; preds = %7016, %6995
  %7018 = phi float [ %6999, %6995 ], [ %7012, %7016 ]
  %7019 = phi float [ %6996, %6995 ], [ %7013, %7016 ]
  %7020 = fsub fast float %7019, %7018
  %7021 = fdiv fast float 1.000000e+00, %7020
  br label %7022

; <label>:7022                                    ; preds = %7017, %6992
  %7023 = phi float [ %6993, %6992 ], [ %7019, %7017 ]
  %7024 = phi float [ %6994, %6992 ], [ %7021, %7017 ]
  %7025 = fadd fast float %6726, %7023
  %7026 = fmul fast float %7025, %7024
  %7027 = call float @dx.op.unary.f32(i32 7, float %7026)  ; Saturate(value)
  %7028 = fmul fast float %7027, 2.000000e+00
  %7029 = fsub fast float 1.000000e+00, %7028
  %7030 = fmul fast float %6864, %6864
  %7031 = fsub fast float %6865, %7030
  %7032 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7031)  ; FMax(a,b)
  %7033 = fdiv fast float 1.000000e+00, %7032
  %7034 = fmul fast float %6865, %6864
  %7035 = fsub fast float %6866, %7034
  %7036 = fsub fast float %7029, %6864
  %7037 = fmul fast float %7029, %7029
  %7038 = fsub fast float %7037, %6865
  %7039 = fmul fast float %7033, %7035
  %7040 = fmul fast float %7039, %7036
  %7041 = fsub fast float %7038, %7040
  %7042 = fmul fast float %6865, %6865
  %7043 = fsub fast float %6867, %7042
  %7044 = fmul fast float %7035, %7035
  %7045 = fmul fast float %7044, %7033
  %7046 = fsub fast float %7043, %7045
  %7047 = fdiv fast float %7041, %7046
  %7048 = fmul fast float %7047, %7035
  %7049 = fsub fast float %7036, %7048
  %7050 = fmul fast float %7049, %7033
  %7051 = fmul fast float %7050, %6864
  %7052 = fsub fast float 1.000000e+00, %7051
  %7053 = fmul fast float %7047, %6865
  %7054 = fsub fast float %7052, %7053
  %7055 = fmul fast float %7050, %7050
  %7056 = fmul fast float %7047, 4.000000e+00
  %7057 = fmul fast float %7056, %7054
  %7058 = fsub fast float %7055, %7057
  %7059 = call float @dx.op.unary.f32(i32 24, float %7058)  ; Sqrt(value)
  %7060 = fcmp fast oge float %7050, 0.000000e+00
  %7061 = fsub fast float -0.000000e+00, %7059
  %7062 = select i1 %7060, float %7061, float %7059
  %7063 = fsub fast float %7062, %7050
  %7064 = fdiv fast float %7063, %7047
  %7065 = fdiv fast float %7054, %7063
  %7066 = fmul fast float %7064, 5.000000e-01
  %7067 = fmul fast float %7065, 2.000000e+00
  %7068 = select i1 %7060, float %7066, float %7067
  %7069 = select i1 %7060, float %7067, float %7066
  %7070 = call float @dx.op.binary.f32(i32 35, float %7068, float %7069)  ; FMax(a,b)
  %7071 = call float @dx.op.binary.f32(i32 36, float %7068, float %7069)  ; FMin(a,b)
  %7072 = fcmp fast ogt float %7029, %7070
  %7073 = fsub fast float %7029, %7071
  %7074 = fsub fast float %7029, %7070
  %7075 = fsub fast float %7070, %7071
  %7076 = select i1 %7072, float %7074, float %7075
  %7077 = fmul float %7073, %7076
  %7078 = select i1 %7072, float %7071, float %7029
  %7079 = fcmp fast ogt float %7029, %7071
  %7080 = fmul fast float %7078, %7070
  %7081 = fadd fast float %7078, %7070
  %7082 = fmul fast float %7081, %6864
  %7083 = fadd fast float %7080, %6865
  %7084 = fsub fast float %7083, %7082
  %7085 = fdiv fast float %7084, %7077
  %7086 = select i1 %7079, float %7085, float 0.000000e+00
  %7087 = fsub fast float 1.000000e+00, %7086
  %7088 = select i1 %7072, float %7087, float %7086
  %7089 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  %7090 = extractvalue %dx.types.CBufRet.f32 %6849, 3
  %7091 = fmul fast float %7090, %7089
  %7092 = fsub fast float 1.000000e+00, %7091
  br label %7093

; <label>:7093                                    ; preds = %7022, %6734, %6699, %6695, %6661
  %7094 = phi float [ 1.000000e+00, %6661 ], [ %7092, %7022 ], [ 1.000000e+00, %6699 ], [ 1.000000e+00, %6734 ], [ 1.000000e+00, %6695 ]
  %7095 = fcmp fast ogt float %6691, 0.000000e+00
  br i1 %7095, label %7096, label %7258, !dx.controlflow.hints !111

; <label>:7096                                    ; preds = %7093
  %7097 = fadd fast float %6604, %6578
  %7098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7099 = extractvalue %dx.types.CBufRet.f32 %7098, 2
  %7100 = extractvalue %dx.types.CBufRet.f32 %7098, 3
  %7101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7102 = extractvalue %dx.types.CBufRet.f32 %7101, 2
  %7103 = call float @dx.op.binary.f32(i32 35, float %7097, float 0.000000e+00)  ; FMax(a,b)
  %7104 = fadd fast float %7103, 0x3F10000000000000
  %7105 = fcmp fast oeq float %7102, 0.000000e+00
  br i1 %7105, label %7106, label %7173

; <label>:7106                                    ; preds = %7096
  %7107 = extractvalue %dx.types.CBufRet.f32 %7098, 1
  %7108 = extractvalue %dx.types.CBufRet.f32 %7098, 0
  %7109 = fmul fast float %7108, %6593
  %7110 = fmul fast float %7107, %6594
  %7111 = fadd fast float %7109, 5.000000e-01
  %7112 = call float @dx.op.unary.f32(i32 27, float %7111)  ; Round_ni(value)
  %7113 = fadd fast float %7110, 5.000000e-01
  %7114 = call float @dx.op.unary.f32(i32 27, float %7113)  ; Round_ni(value)
  %7115 = fsub fast float %7111, %7112
  %7116 = fsub fast float %7113, %7114
  %7117 = fadd fast float %7112, -5.000000e-01
  %7118 = fadd fast float %7114, -5.000000e-01
  %7119 = fmul fast float %7115, 2.000000e+00
  %7120 = fsub fast float 3.000000e+00, %7119
  %7121 = fadd fast float %7119, 1.000000e+00
  %7122 = fsub fast float 2.000000e+00, %7115
  %7123 = bitcast float %7120 to i32
  %7124 = sub nsw i32 2129859010, %7123
  %7125 = bitcast i32 %7124 to float
  %7126 = fmul fast float %7125, %7122
  %7127 = fadd fast float %7126, -1.000000e+00
  %7128 = bitcast float %7121 to i32
  %7129 = sub nsw i32 2129859010, %7128
  %7130 = bitcast i32 %7129 to float
  %7131 = fmul fast float %7130, %7115
  %7132 = fadd fast float %7131, 1.000000e+00
  %7133 = fmul fast float %7116, 2.000000e+00
  %7134 = fsub fast float 3.000000e+00, %7133
  %7135 = fadd fast float %7133, 1.000000e+00
  %7136 = fsub fast float 2.000000e+00, %7116
  %7137 = bitcast float %7134 to i32
  %7138 = sub nsw i32 2129859010, %7137
  %7139 = bitcast i32 %7138 to float
  %7140 = fmul fast float %7139, %7136
  %7141 = fadd fast float %7140, -1.000000e+00
  %7142 = bitcast float %7135 to i32
  %7143 = sub nsw i32 2129859010, %7142
  %7144 = bitcast i32 %7143 to float
  %7145 = fmul fast float %7144, %7116
  %7146 = fadd fast float %7145, 1.000000e+00
  %7147 = fadd fast float %7127, %7117
  %7148 = fmul fast float %7147, %7099
  %7149 = fadd fast float %7141, %7118
  %7150 = fmul fast float %7149, %7100
  %7151 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7148, float %7150, float undef, float undef, i32 0, i32 0, i32 undef, float %7104)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7152 = extractvalue %dx.types.ResRet.f32 %7151, 0
  %7153 = fmul fast float %7152, %7120
  %7154 = fadd fast float %7132, %7117
  %7155 = fmul fast float %7154, %7099
  %7156 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7155, float %7150, float undef, float undef, i32 0, i32 0, i32 undef, float %7104)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7157 = extractvalue %dx.types.ResRet.f32 %7156, 0
  %7158 = fmul fast float %7157, %7121
  %7159 = fadd fast float %7146, %7118
  %7160 = fmul fast float %7159, %7100
  %7161 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7148, float %7160, float undef, float undef, i32 0, i32 0, i32 undef, float %7104)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7162 = extractvalue %dx.types.ResRet.f32 %7161, 0
  %7163 = fmul fast float %7162, %7120
  %7164 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7155, float %7160, float undef, float undef, i32 0, i32 0, i32 undef, float %7104)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7165 = extractvalue %dx.types.ResRet.f32 %7164, 0
  %7166 = fmul fast float %7165, %7121
  %7167 = fadd fast float %7166, %7163
  %7168 = fmul fast float %7167, %7135
  %7169 = fadd fast float %7158, %7153
  %7170 = fmul fast float %7169, %7134
  %7171 = fadd fast float %7170, %7168
  %7172 = fmul fast float %7171, 6.250000e-02
  br label %7258

; <label>:7173                                    ; preds = %7096
  %7174 = fmul fast float %260, 0x401921FB60000000
  %7175 = call float @dx.op.unary.f32(i32 13, float %7174)  ; Sin(value)
  %7176 = call float @dx.op.unary.f32(i32 12, float %7174)  ; Cos(value)
  %7177 = fsub fast float -0.000000e+00, %7175
  br label %7178

; <label>:7178                                    ; preds = %7227, %7173
  %7179 = phi float [ 0.000000e+00, %7173 ], [ %7222, %7227 ]
  %7180 = phi float [ 0.000000e+00, %7173 ], [ %7224, %7227 ]
  %7181 = phi i32 [ 0, %7173 ], [ %7228, %7227 ]
  %7182 = mul i32 %7181, 2
  %7183 = add i32 0, %7182
  %7184 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7183
  %7185 = load float, float* %7184, align 4
  %7186 = mul i32 %7181, 2
  %7187 = add i32 1, %7186
  %7188 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7187
  %7189 = load float, float* %7188, align 4
  %7190 = fmul fast float %7185, %7176
  %7191 = call float @dx.op.tertiary.f32(i32 46, float %7189, float %7177, float %7190)  ; FMad(a,b,c)
  %7192 = fmul fast float %7185, %7175
  %7193 = call float @dx.op.tertiary.f32(i32 46, float %7189, float %7176, float %7192)  ; FMad(a,b,c)
  %7194 = fmul fast float %7191, %7102
  %7195 = fmul fast float %7193, %7102
  %7196 = fadd fast float %7194, %6593
  %7197 = fadd fast float %7195, %6594
  %7198 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %45, float %7196, float %7197, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7199 = extractvalue %dx.types.ResRet.f32 %7198, 0
  %7200 = extractvalue %dx.types.ResRet.f32 %7198, 1
  %7201 = extractvalue %dx.types.ResRet.f32 %7198, 2
  %7202 = extractvalue %dx.types.ResRet.f32 %7198, 3
  %7203 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %7199, float* %7203, align 4
  %7204 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %7200, float* %7204, align 4
  %7205 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %7201, float* %7205, align 4
  %7206 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %7202, float* %7206, align 4
  %7207 = fsub fast float %7199, %7104
  %7208 = fcmp fast olt float %7207, 0.000000e+00
  %7209 = select i1 %7208, float 0.000000e+00, float 1.000000e+00
  %7210 = fadd fast float %7209, %7179
  %7211 = fmul fast float %7209, %7207
  %7212 = fadd fast float %7211, %7180
  br label %7213

; <label>:7213                                    ; preds = %7213, %7178
  %7214 = phi i32 [ 1, %7178 ], [ %7225, %7213 ]
  %7215 = phi float [ %7212, %7178 ], [ %7224, %7213 ]
  %7216 = phi float [ %7210, %7178 ], [ %7222, %7213 ]
  %7217 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %7214
  %7218 = load float, float* %7217, align 4, !tbaa !112, !noalias !102
  %7219 = fsub fast float %7218, %7104
  %7220 = fcmp fast olt float %7219, 0.000000e+00
  %7221 = select i1 %7220, float 0.000000e+00, float 1.000000e+00
  %7222 = fadd fast float %7221, %7216
  %7223 = fmul fast float %7221, %7219
  %7224 = fadd fast float %7223, %7215
  %7225 = add nuw nsw i32 %7214, 1
  %7226 = icmp eq i32 %7225, 4
  br i1 %7226, label %7227, label %7213, !llvm.loop !114

; <label>:7227                                    ; preds = %7213
  %7228 = add nuw nsw i32 %7181, 1
  %7229 = icmp eq i32 %7228, 8
  br i1 %7229, label %7230, label %7178, !llvm.loop !115

; <label>:7230                                    ; preds = %7227
  %7231 = fdiv fast float 1.000000e+00, %7222
  %7232 = fmul fast float %7231, %7224
  %7233 = fdiv fast float 1.000000e+00, %7104
  %7234 = fmul fast float %7232, %7233
  %7235 = call float @dx.op.unary.f32(i32 7, float %7234)  ; Saturate(value)
  %7236 = call float @dx.op.binary.f32(i32 35, float %7235, float 0.000000e+00)  ; FMax(a,b)
  %7237 = fmul fast float %7222, 3.125000e-02
  %7238 = call float @dx.op.unary.f32(i32 7, float %7237)  ; Saturate(value)
  %7239 = fmul fast float %7238, 2.000000e+00
  %7240 = fadd fast float %7239, -1.000000e+00
  %7241 = fcmp fast ogt float %7240, 0.000000e+00
  %7242 = fcmp fast olt float %7240, 0.000000e+00
  %7243 = zext i1 %7241 to i32
  %7244 = zext i1 %7242 to i32
  %7245 = sub nsw i32 %7243, %7244
  %7246 = sitofp i32 %7245 to float
  %7247 = fmul fast float %7246, %7240
  %7248 = fsub fast float 1.000000e+00, %7247
  %7249 = fmul fast float %7248, %7248
  %7250 = fmul fast float %7249, %7248
  %7251 = fsub fast float %7248, %7250
  %7252 = fmul fast float %7251, %7236
  %7253 = fsub fast float 1.000000e+00, %7250
  %7254 = fsub fast float %7253, %7252
  %7255 = fmul fast float %7246, 5.000000e-01
  %7256 = fmul fast float %7255, %7254
  %7257 = fsub fast float 5.000000e-01, %7256
  br label %7258

; <label>:7258                                    ; preds = %7230, %7106, %7093
  %7259 = phi float [ 1.000000e+00, %7093 ], [ %7172, %7106 ], [ %7257, %7230 ]
  %7260 = fcmp fast ogt float %6689, 0.000000e+00
  br i1 %7260, label %7261, label %7425, !dx.controlflow.hints !116

; <label>:7261                                    ; preds = %7258
  %7262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7263 = extractvalue %dx.types.CBufRet.f32 %7262, 1
  %7264 = fadd fast float %7263, %6578
  %7265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7266 = extractvalue %dx.types.CBufRet.f32 %7265, 2
  %7267 = extractvalue %dx.types.CBufRet.f32 %7265, 3
  %7268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7269 = extractvalue %dx.types.CBufRet.f32 %7268, 1
  %7270 = call float @dx.op.binary.f32(i32 35, float %7264, float 0.000000e+00)  ; FMax(a,b)
  %7271 = fadd fast float %7270, 0x3F10000000000000
  %7272 = fcmp fast oeq float %7269, 0.000000e+00
  br i1 %7272, label %7273, label %7340

; <label>:7273                                    ; preds = %7261
  %7274 = extractvalue %dx.types.CBufRet.f32 %7265, 1
  %7275 = extractvalue %dx.types.CBufRet.f32 %7265, 0
  %7276 = fmul fast float %7275, %6585
  %7277 = fmul fast float %7274, %6586
  %7278 = fadd fast float %7276, 5.000000e-01
  %7279 = call float @dx.op.unary.f32(i32 27, float %7278)  ; Round_ni(value)
  %7280 = fadd fast float %7277, 5.000000e-01
  %7281 = call float @dx.op.unary.f32(i32 27, float %7280)  ; Round_ni(value)
  %7282 = fsub fast float %7278, %7279
  %7283 = fsub fast float %7280, %7281
  %7284 = fadd fast float %7279, -5.000000e-01
  %7285 = fadd fast float %7281, -5.000000e-01
  %7286 = fmul fast float %7282, 2.000000e+00
  %7287 = fsub fast float 3.000000e+00, %7286
  %7288 = fadd fast float %7286, 1.000000e+00
  %7289 = fsub fast float 2.000000e+00, %7282
  %7290 = bitcast float %7287 to i32
  %7291 = sub nsw i32 2129859010, %7290
  %7292 = bitcast i32 %7291 to float
  %7293 = fmul fast float %7292, %7289
  %7294 = fadd fast float %7293, -1.000000e+00
  %7295 = bitcast float %7288 to i32
  %7296 = sub nsw i32 2129859010, %7295
  %7297 = bitcast i32 %7296 to float
  %7298 = fmul fast float %7297, %7282
  %7299 = fadd fast float %7298, 1.000000e+00
  %7300 = fmul fast float %7283, 2.000000e+00
  %7301 = fsub fast float 3.000000e+00, %7300
  %7302 = fadd fast float %7300, 1.000000e+00
  %7303 = fsub fast float 2.000000e+00, %7283
  %7304 = bitcast float %7301 to i32
  %7305 = sub nsw i32 2129859010, %7304
  %7306 = bitcast i32 %7305 to float
  %7307 = fmul fast float %7306, %7303
  %7308 = fadd fast float %7307, -1.000000e+00
  %7309 = bitcast float %7302 to i32
  %7310 = sub nsw i32 2129859010, %7309
  %7311 = bitcast i32 %7310 to float
  %7312 = fmul fast float %7311, %7283
  %7313 = fadd fast float %7312, 1.000000e+00
  %7314 = fadd fast float %7294, %7284
  %7315 = fmul fast float %7314, %7266
  %7316 = fadd fast float %7308, %7285
  %7317 = fmul fast float %7316, %7267
  %7318 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7315, float %7317, float undef, float undef, i32 0, i32 0, i32 undef, float %7271)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7319 = extractvalue %dx.types.ResRet.f32 %7318, 0
  %7320 = fmul fast float %7319, %7287
  %7321 = fadd fast float %7299, %7284
  %7322 = fmul fast float %7321, %7266
  %7323 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7322, float %7317, float undef, float undef, i32 0, i32 0, i32 undef, float %7271)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7324 = extractvalue %dx.types.ResRet.f32 %7323, 0
  %7325 = fmul fast float %7324, %7288
  %7326 = fadd fast float %7313, %7285
  %7327 = fmul fast float %7326, %7267
  %7328 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7315, float %7327, float undef, float undef, i32 0, i32 0, i32 undef, float %7271)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7329 = extractvalue %dx.types.ResRet.f32 %7328, 0
  %7330 = fmul fast float %7329, %7287
  %7331 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7322, float %7327, float undef, float undef, i32 0, i32 0, i32 undef, float %7271)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7332 = extractvalue %dx.types.ResRet.f32 %7331, 0
  %7333 = fmul fast float %7332, %7288
  %7334 = fadd fast float %7333, %7330
  %7335 = fmul fast float %7334, %7302
  %7336 = fadd fast float %7325, %7320
  %7337 = fmul fast float %7336, %7301
  %7338 = fadd fast float %7337, %7335
  %7339 = fmul fast float %7338, 6.250000e-02
  br label %7425

; <label>:7340                                    ; preds = %7261
  %7341 = fmul fast float %260, 0x401921FB60000000
  %7342 = call float @dx.op.unary.f32(i32 13, float %7341)  ; Sin(value)
  %7343 = call float @dx.op.unary.f32(i32 12, float %7341)  ; Cos(value)
  %7344 = fsub fast float -0.000000e+00, %7342
  br label %7345

; <label>:7345                                    ; preds = %7394, %7340
  %7346 = phi float [ 0.000000e+00, %7340 ], [ %7389, %7394 ]
  %7347 = phi float [ 0.000000e+00, %7340 ], [ %7391, %7394 ]
  %7348 = phi i32 [ 0, %7340 ], [ %7395, %7394 ]
  %7349 = mul i32 %7348, 2
  %7350 = add i32 0, %7349
  %7351 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7350
  %7352 = load float, float* %7351, align 4
  %7353 = mul i32 %7348, 2
  %7354 = add i32 1, %7353
  %7355 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7354
  %7356 = load float, float* %7355, align 4
  %7357 = fmul fast float %7352, %7343
  %7358 = call float @dx.op.tertiary.f32(i32 46, float %7356, float %7344, float %7357)  ; FMad(a,b,c)
  %7359 = fmul fast float %7352, %7342
  %7360 = call float @dx.op.tertiary.f32(i32 46, float %7356, float %7343, float %7359)  ; FMad(a,b,c)
  %7361 = fmul fast float %7358, %7269
  %7362 = fmul fast float %7360, %7269
  %7363 = fadd fast float %7361, %6585
  %7364 = fadd fast float %7362, %6586
  %7365 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %45, float %7363, float %7364, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7366 = extractvalue %dx.types.ResRet.f32 %7365, 0
  %7367 = extractvalue %dx.types.ResRet.f32 %7365, 1
  %7368 = extractvalue %dx.types.ResRet.f32 %7365, 2
  %7369 = extractvalue %dx.types.ResRet.f32 %7365, 3
  %7370 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %7366, float* %7370, align 4
  %7371 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %7367, float* %7371, align 4
  %7372 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %7368, float* %7372, align 4
  %7373 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %7369, float* %7373, align 4
  %7374 = fsub fast float %7366, %7271
  %7375 = fcmp fast olt float %7374, 0.000000e+00
  %7376 = select i1 %7375, float 0.000000e+00, float 1.000000e+00
  %7377 = fadd fast float %7376, %7346
  %7378 = fmul fast float %7376, %7374
  %7379 = fadd fast float %7378, %7347
  br label %7380

; <label>:7380                                    ; preds = %7380, %7345
  %7381 = phi i32 [ 1, %7345 ], [ %7392, %7380 ]
  %7382 = phi float [ %7379, %7345 ], [ %7391, %7380 ]
  %7383 = phi float [ %7377, %7345 ], [ %7389, %7380 ]
  %7384 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %7381
  %7385 = load float, float* %7384, align 4, !tbaa !112, !noalias !102
  %7386 = fsub fast float %7385, %7271
  %7387 = fcmp fast olt float %7386, 0.000000e+00
  %7388 = select i1 %7387, float 0.000000e+00, float 1.000000e+00
  %7389 = fadd fast float %7388, %7383
  %7390 = fmul fast float %7388, %7386
  %7391 = fadd fast float %7390, %7382
  %7392 = add nuw nsw i32 %7381, 1
  %7393 = icmp eq i32 %7392, 4
  br i1 %7393, label %7394, label %7380, !llvm.loop !114

; <label>:7394                                    ; preds = %7380
  %7395 = add nuw nsw i32 %7348, 1
  %7396 = icmp eq i32 %7395, 8
  br i1 %7396, label %7397, label %7345, !llvm.loop !115

; <label>:7397                                    ; preds = %7394
  %7398 = fdiv fast float 1.000000e+00, %7389
  %7399 = fmul fast float %7398, %7391
  %7400 = fdiv fast float 1.000000e+00, %7271
  %7401 = fmul fast float %7399, %7400
  %7402 = call float @dx.op.unary.f32(i32 7, float %7401)  ; Saturate(value)
  %7403 = call float @dx.op.binary.f32(i32 35, float %7402, float 0.000000e+00)  ; FMax(a,b)
  %7404 = fmul fast float %7389, 3.125000e-02
  %7405 = call float @dx.op.unary.f32(i32 7, float %7404)  ; Saturate(value)
  %7406 = fmul fast float %7405, 2.000000e+00
  %7407 = fadd fast float %7406, -1.000000e+00
  %7408 = fcmp fast ogt float %7407, 0.000000e+00
  %7409 = fcmp fast olt float %7407, 0.000000e+00
  %7410 = zext i1 %7408 to i32
  %7411 = zext i1 %7409 to i32
  %7412 = sub nsw i32 %7410, %7411
  %7413 = sitofp i32 %7412 to float
  %7414 = fmul fast float %7413, %7407
  %7415 = fsub fast float 1.000000e+00, %7414
  %7416 = fmul fast float %7415, %7415
  %7417 = fmul fast float %7416, %7415
  %7418 = fsub fast float %7415, %7417
  %7419 = fmul fast float %7418, %7403
  %7420 = fsub fast float 1.000000e+00, %7417
  %7421 = fsub fast float %7420, %7419
  %7422 = fmul fast float %7413, 5.000000e-01
  %7423 = fmul fast float %7422, %7421
  %7424 = fsub fast float 5.000000e-01, %7423
  br label %7425

; <label>:7425                                    ; preds = %7397, %7273, %7258
  %7426 = phi float [ 1.000000e+00, %7258 ], [ %7339, %7273 ], [ %7424, %7397 ]
  %7427 = fcmp fast ogt float %6688, 0.000000e+00
  br i1 %7427, label %7428, label %7592, !dx.controlflow.hints !117

; <label>:7428                                    ; preds = %7425
  %7429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7430 = extractvalue %dx.types.CBufRet.f32 %7429, 0
  %7431 = fadd fast float %7430, %6578
  %7432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7433 = extractvalue %dx.types.CBufRet.f32 %7432, 2
  %7434 = extractvalue %dx.types.CBufRet.f32 %7432, 3
  %7435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7436 = extractvalue %dx.types.CBufRet.f32 %7435, 0
  %7437 = call float @dx.op.binary.f32(i32 35, float %7431, float 0.000000e+00)  ; FMax(a,b)
  %7438 = fadd fast float %7437, 0x3F10000000000000
  %7439 = fcmp fast oeq float %7436, 0.000000e+00
  br i1 %7439, label %7440, label %7507

; <label>:7440                                    ; preds = %7428
  %7441 = extractvalue %dx.types.CBufRet.f32 %7432, 1
  %7442 = extractvalue %dx.types.CBufRet.f32 %7432, 0
  %7443 = fmul fast float %7442, %6570
  %7444 = fmul fast float %7441, %6574
  %7445 = fadd fast float %7443, 5.000000e-01
  %7446 = call float @dx.op.unary.f32(i32 27, float %7445)  ; Round_ni(value)
  %7447 = fadd fast float %7444, 5.000000e-01
  %7448 = call float @dx.op.unary.f32(i32 27, float %7447)  ; Round_ni(value)
  %7449 = fsub fast float %7445, %7446
  %7450 = fsub fast float %7447, %7448
  %7451 = fadd fast float %7446, -5.000000e-01
  %7452 = fadd fast float %7448, -5.000000e-01
  %7453 = fmul fast float %7449, 2.000000e+00
  %7454 = fsub fast float 3.000000e+00, %7453
  %7455 = fadd fast float %7453, 1.000000e+00
  %7456 = fsub fast float 2.000000e+00, %7449
  %7457 = bitcast float %7454 to i32
  %7458 = sub nsw i32 2129859010, %7457
  %7459 = bitcast i32 %7458 to float
  %7460 = fmul fast float %7459, %7456
  %7461 = fadd fast float %7460, -1.000000e+00
  %7462 = bitcast float %7455 to i32
  %7463 = sub nsw i32 2129859010, %7462
  %7464 = bitcast i32 %7463 to float
  %7465 = fmul fast float %7464, %7449
  %7466 = fadd fast float %7465, 1.000000e+00
  %7467 = fmul fast float %7450, 2.000000e+00
  %7468 = fsub fast float 3.000000e+00, %7467
  %7469 = fadd fast float %7467, 1.000000e+00
  %7470 = fsub fast float 2.000000e+00, %7450
  %7471 = bitcast float %7468 to i32
  %7472 = sub nsw i32 2129859010, %7471
  %7473 = bitcast i32 %7472 to float
  %7474 = fmul fast float %7473, %7470
  %7475 = fadd fast float %7474, -1.000000e+00
  %7476 = bitcast float %7469 to i32
  %7477 = sub nsw i32 2129859010, %7476
  %7478 = bitcast i32 %7477 to float
  %7479 = fmul fast float %7478, %7450
  %7480 = fadd fast float %7479, 1.000000e+00
  %7481 = fadd fast float %7461, %7451
  %7482 = fmul fast float %7481, %7433
  %7483 = fadd fast float %7475, %7452
  %7484 = fmul fast float %7483, %7434
  %7485 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7482, float %7484, float undef, float undef, i32 0, i32 0, i32 undef, float %7438)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7486 = extractvalue %dx.types.ResRet.f32 %7485, 0
  %7487 = fmul fast float %7486, %7454
  %7488 = fadd fast float %7466, %7451
  %7489 = fmul fast float %7488, %7433
  %7490 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7489, float %7484, float undef, float undef, i32 0, i32 0, i32 undef, float %7438)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7491 = extractvalue %dx.types.ResRet.f32 %7490, 0
  %7492 = fmul fast float %7491, %7455
  %7493 = fadd fast float %7480, %7452
  %7494 = fmul fast float %7493, %7434
  %7495 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7482, float %7494, float undef, float undef, i32 0, i32 0, i32 undef, float %7438)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7496 = extractvalue %dx.types.ResRet.f32 %7495, 0
  %7497 = fmul fast float %7496, %7454
  %7498 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7489, float %7494, float undef, float undef, i32 0, i32 0, i32 undef, float %7438)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7499 = extractvalue %dx.types.ResRet.f32 %7498, 0
  %7500 = fmul fast float %7499, %7455
  %7501 = fadd fast float %7500, %7497
  %7502 = fmul fast float %7501, %7469
  %7503 = fadd fast float %7492, %7487
  %7504 = fmul fast float %7503, %7468
  %7505 = fadd fast float %7504, %7502
  %7506 = fmul fast float %7505, 6.250000e-02
  br label %7592

; <label>:7507                                    ; preds = %7428
  %7508 = fmul fast float %260, 0x401921FB60000000
  %7509 = call float @dx.op.unary.f32(i32 13, float %7508)  ; Sin(value)
  %7510 = call float @dx.op.unary.f32(i32 12, float %7508)  ; Cos(value)
  %7511 = fsub fast float -0.000000e+00, %7509
  br label %7512

; <label>:7512                                    ; preds = %7561, %7507
  %7513 = phi float [ 0.000000e+00, %7507 ], [ %7556, %7561 ]
  %7514 = phi float [ 0.000000e+00, %7507 ], [ %7558, %7561 ]
  %7515 = phi i32 [ 0, %7507 ], [ %7562, %7561 ]
  %7516 = mul i32 %7515, 2
  %7517 = add i32 0, %7516
  %7518 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7517
  %7519 = load float, float* %7518, align 4
  %7520 = mul i32 %7515, 2
  %7521 = add i32 1, %7520
  %7522 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7521
  %7523 = load float, float* %7522, align 4
  %7524 = fmul fast float %7519, %7510
  %7525 = call float @dx.op.tertiary.f32(i32 46, float %7523, float %7511, float %7524)  ; FMad(a,b,c)
  %7526 = fmul fast float %7519, %7509
  %7527 = call float @dx.op.tertiary.f32(i32 46, float %7523, float %7510, float %7526)  ; FMad(a,b,c)
  %7528 = fmul fast float %7525, %7436
  %7529 = fmul fast float %7527, %7436
  %7530 = fadd fast float %7528, %6570
  %7531 = fadd fast float %7529, %6574
  %7532 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %45, float %7530, float %7531, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7533 = extractvalue %dx.types.ResRet.f32 %7532, 0
  %7534 = extractvalue %dx.types.ResRet.f32 %7532, 1
  %7535 = extractvalue %dx.types.ResRet.f32 %7532, 2
  %7536 = extractvalue %dx.types.ResRet.f32 %7532, 3
  %7537 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %7533, float* %7537, align 4
  %7538 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %7534, float* %7538, align 4
  %7539 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %7535, float* %7539, align 4
  %7540 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %7536, float* %7540, align 4
  %7541 = fsub fast float %7533, %7438
  %7542 = fcmp fast olt float %7541, 0.000000e+00
  %7543 = select i1 %7542, float 0.000000e+00, float 1.000000e+00
  %7544 = fadd fast float %7543, %7513
  %7545 = fmul fast float %7543, %7541
  %7546 = fadd fast float %7545, %7514
  br label %7547

; <label>:7547                                    ; preds = %7547, %7512
  %7548 = phi i32 [ 1, %7512 ], [ %7559, %7547 ]
  %7549 = phi float [ %7546, %7512 ], [ %7558, %7547 ]
  %7550 = phi float [ %7544, %7512 ], [ %7556, %7547 ]
  %7551 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7548
  %7552 = load float, float* %7551, align 4, !tbaa !112, !noalias !102
  %7553 = fsub fast float %7552, %7438
  %7554 = fcmp fast olt float %7553, 0.000000e+00
  %7555 = select i1 %7554, float 0.000000e+00, float 1.000000e+00
  %7556 = fadd fast float %7555, %7550
  %7557 = fmul fast float %7555, %7553
  %7558 = fadd fast float %7557, %7549
  %7559 = add nuw nsw i32 %7548, 1
  %7560 = icmp eq i32 %7559, 4
  br i1 %7560, label %7561, label %7547, !llvm.loop !114

; <label>:7561                                    ; preds = %7547
  %7562 = add nuw nsw i32 %7515, 1
  %7563 = icmp eq i32 %7562, 8
  br i1 %7563, label %7564, label %7512, !llvm.loop !115

; <label>:7564                                    ; preds = %7561
  %7565 = fdiv fast float 1.000000e+00, %7556
  %7566 = fmul fast float %7565, %7558
  %7567 = fdiv fast float 1.000000e+00, %7438
  %7568 = fmul fast float %7566, %7567
  %7569 = call float @dx.op.unary.f32(i32 7, float %7568)  ; Saturate(value)
  %7570 = call float @dx.op.binary.f32(i32 35, float %7569, float 0.000000e+00)  ; FMax(a,b)
  %7571 = fmul fast float %7556, 3.125000e-02
  %7572 = call float @dx.op.unary.f32(i32 7, float %7571)  ; Saturate(value)
  %7573 = fmul fast float %7572, 2.000000e+00
  %7574 = fadd fast float %7573, -1.000000e+00
  %7575 = fcmp fast ogt float %7574, 0.000000e+00
  %7576 = fcmp fast olt float %7574, 0.000000e+00
  %7577 = zext i1 %7575 to i32
  %7578 = zext i1 %7576 to i32
  %7579 = sub nsw i32 %7577, %7578
  %7580 = sitofp i32 %7579 to float
  %7581 = fmul fast float %7580, %7574
  %7582 = fsub fast float 1.000000e+00, %7581
  %7583 = fmul fast float %7582, %7582
  %7584 = fmul fast float %7583, %7582
  %7585 = fsub fast float %7582, %7584
  %7586 = fmul fast float %7585, %7570
  %7587 = fsub fast float 1.000000e+00, %7584
  %7588 = fsub fast float %7587, %7586
  %7589 = fmul fast float %7580, 5.000000e-01
  %7590 = fmul fast float %7589, %7588
  %7591 = fsub fast float 5.000000e-01, %7590
  br label %7592

; <label>:7592                                    ; preds = %7564, %7440, %7425
  %7593 = phi float [ 1.000000e+00, %7425 ], [ %7506, %7440 ], [ %7591, %7564 ]
  %7594 = fsub fast float %7259, %7094
  %7595 = fmul fast float %7594, %6632
  %7596 = fadd fast float %7595, %7094
  %7597 = fsub fast float %7426, %7596
  %7598 = fmul fast float %7597, %6662
  %7599 = fadd fast float %7598, %7596
  %7600 = fsub fast float %7593, %7599
  %7601 = fmul fast float %7600, %6688
  %7602 = fadd fast float %7601, %7599
  %7603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7604 = extractvalue %dx.types.CBufRet.f32 %7603, 2
  %7605 = fcmp fast ogt float %7604, 0.000000e+00
  br i1 %7605, label %7606, label %7646, !dx.controlflow.hints !118

; <label>:7606                                    ; preds = %7592
  %7607 = fcmp fast ugt float %7604, 0.000000e+00
  br i1 %7607, label %7608, label %7643

; <label>:7608                                    ; preds = %7606
  %7609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7610 = extractvalue %dx.types.CBufRet.f32 %7609, 0
  %7611 = extractvalue %dx.types.CBufRet.f32 %7609, 1
  %7612 = extractvalue %dx.types.CBufRet.f32 %7609, 2
  %7613 = extractvalue %dx.types.CBufRet.f32 %7609, 3
  %7614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7615 = extractvalue %dx.types.CBufRet.f32 %7614, 0
  %7616 = extractvalue %dx.types.CBufRet.f32 %7614, 1
  %7617 = extractvalue %dx.types.CBufRet.f32 %7614, 2
  %7618 = extractvalue %dx.types.CBufRet.f32 %7614, 3
  %7619 = extractvalue %dx.types.CBufRet.f32 %7603, 0
  %7620 = extractvalue %dx.types.CBufRet.f32 %7603, 1
  %7621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7622 = extractvalue %dx.types.CBufRet.f32 %7621, 0
  %7623 = extractvalue %dx.types.CBufRet.f32 %7621, 1
  %7624 = extractvalue %dx.types.CBufRet.f32 %7621, 2
  %7625 = fadd fast float %7622, %6547
  %7626 = fadd fast float %7623, %6548
  %7627 = fadd fast float %7624, %6549
  %7628 = fmul fast float %7625, %7610
  %7629 = call float @dx.op.tertiary.f32(i32 46, float %7611, float %7626, float %7628)  ; FMad(a,b,c)
  %7630 = call float @dx.op.tertiary.f32(i32 46, float %7612, float %7627, float %7629)  ; FMad(a,b,c)
  %7631 = fadd fast float %7630, %7613
  %7632 = fmul fast float %7625, %7615
  %7633 = call float @dx.op.tertiary.f32(i32 46, float %7616, float %7626, float %7632)  ; FMad(a,b,c)
  %7634 = call float @dx.op.tertiary.f32(i32 46, float %7617, float %7627, float %7633)  ; FMad(a,b,c)
  %7635 = fadd fast float %7634, %7618
  %7636 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %41, float %7631, float %7635, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7637 = extractvalue %dx.types.ResRet.f32 %7636, 0
  %7638 = fmul fast float %7637, %7620
  %7639 = fadd fast float %7638, %7619
  %7640 = call float @dx.op.unary.f32(i32 7, float %7639)  ; Saturate(value)
  %7641 = fmul fast float %7640, %7604
  %7642 = fsub fast float 1.000000e+00, %7641
  br label %7643

; <label>:7643                                    ; preds = %7608, %7606
  %7644 = phi float [ %7642, %7608 ], [ 1.000000e+00, %7606 ]
  %7645 = fmul fast float %7644, %7602
  br label %7646

; <label>:7646                                    ; preds = %7643, %7592, %6527
  %7647 = phi float [ 1.000000e+00, %6527 ], [ %7645, %7643 ], [ %7602, %7592 ]
  %7648 = call float @dx.op.binary.f32(i32 36, float %7647, float %7647)  ; FMin(a,b)
  %7649 = call float @dx.op.binary.f32(i32 36, float %7647, float %7648)  ; FMin(a,b)
  %7650 = fcmp fast ogt float %7649, 0.000000e+00
  br i1 %7650, label %7651, label %7817, !dx.controlflow.hints !119

; <label>:7651                                    ; preds = %7646
  %7652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7653 = extractvalue %dx.types.CBufRet.f32 %7652, 0
  %7654 = extractvalue %dx.types.CBufRet.f32 %7652, 1
  %7655 = extractvalue %dx.types.CBufRet.f32 %7652, 2
  %7656 = extractvalue %dx.types.CBufRet.f32 %7652, 3
  %7657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7658 = extractvalue %dx.types.CBufRet.f32 %7657, 0
  %7659 = extractvalue %dx.types.CBufRet.f32 %7657, 1
  %7660 = extractvalue %dx.types.CBufRet.f32 %7657, 2
  %7661 = extractvalue %dx.types.CBufRet.f32 %7657, 3
  %7662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7663 = extractvalue %dx.types.CBufRet.f32 %7662, 0
  %7664 = extractvalue %dx.types.CBufRet.f32 %7662, 1
  %7665 = extractvalue %dx.types.CBufRet.f32 %7662, 2
  %7666 = extractvalue %dx.types.CBufRet.f32 %7662, 3
  %7667 = fmul fast float %7653, %6547
  %7668 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %7654, float %7667)  ; FMad(a,b,c)
  %7669 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %7655, float %7668)  ; FMad(a,b,c)
  %7670 = fadd fast float %7669, %7656
  %7671 = fmul fast float %7658, %6547
  %7672 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %7659, float %7671)  ; FMad(a,b,c)
  %7673 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %7660, float %7672)  ; FMad(a,b,c)
  %7674 = fadd fast float %7673, %7661
  %7675 = fmul fast float %7663, %6547
  %7676 = call float @dx.op.tertiary.f32(i32 46, float %6548, float %7664, float %7675)  ; FMad(a,b,c)
  %7677 = call float @dx.op.tertiary.f32(i32 46, float %6549, float %7665, float %7676)  ; FMad(a,b,c)
  %7678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7679 = extractvalue %dx.types.CBufRet.f32 %7678, 0
  %7680 = extractvalue %dx.types.CBufRet.f32 %7678, 1
  %7681 = extractvalue %dx.types.CBufRet.f32 %7678, 3
  %7682 = fmul fast float %7681, %7670
  %7683 = fmul fast float %7681, %7674
  %7684 = fadd fast float %7682, %7679
  %7685 = fadd fast float %7683, %7680
  %7686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7687 = extractvalue %dx.types.CBufRet.f32 %7686, 0
  %7688 = extractvalue %dx.types.CBufRet.f32 %7686, 1
  %7689 = fsub fast float %7684, %7687
  %7690 = fsub fast float %7685, %7688
  %7691 = fcmp fast olt float %7689, 0.000000e+00
  %7692 = fcmp fast olt float %7690, 0.000000e+00
  %7693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7694 = extractvalue %dx.types.CBufRet.f32 %7693, 0
  %7695 = extractvalue %dx.types.CBufRet.f32 %7693, 1
  %7696 = extractvalue %dx.types.CBufRet.f32 %7693, 2
  %7697 = extractvalue %dx.types.CBufRet.f32 %7693, 3
  %7698 = select i1 %7691, float %7694, float %7696
  %7699 = select i1 %7692, float %7695, float %7697
  %7700 = fmul fast float %7698, %7689
  %7701 = fmul fast float %7699, %7690
  %7702 = call float @dx.op.unary.f32(i32 6, float %7700)  ; FAbs(value)
  %7703 = call float @dx.op.unary.f32(i32 6, float %7701)  ; FAbs(value)
  %7704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7705 = extractvalue %dx.types.CBufRet.f32 %7704, 0
  %7706 = call float @dx.op.binary.f32(i32 35, float %7702, float %7703)  ; FMax(a,b)
  %7707 = fsub fast float %7705, %7706
  %7708 = call float @dx.op.unary.f32(i32 7, float %7707)  ; Saturate(value)
  %7709 = fcmp fast ogt float %7708, 0.000000e+00
  br i1 %7709, label %7710, label %7751, !dx.controlflow.hints !120

; <label>:7710                                    ; preds = %7651
  %7711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %7684, float %7685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7712 = extractvalue %dx.types.ResRet.f32 %7711, 1
  %7713 = fcmp fast ogt float %7712, 0.000000e+00
  br i1 %7713, label %7714, label %7746

; <label>:7714                                    ; preds = %7710
  %7715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %7684, float %7685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7716 = extractvalue %dx.types.ResRet.f32 %7715, 0
  %7717 = extractvalue %dx.types.ResRet.f32 %7715, 1
  %7718 = extractvalue %dx.types.ResRet.f32 %7715, 2
  %7719 = extractvalue %dx.types.ResRet.f32 %7715, 3
  %7720 = fsub fast float 1.000000e+00, %7666
  %7721 = fsub fast float %7720, %7677
  %7722 = fmul fast float %7721, 0x400921FB60000000
  %7723 = fadd fast float %7722, 0x3FF921FB60000000
  %7724 = call float @dx.op.unary.f32(i32 13, float %7723)  ; Sin(value)
  %7725 = fadd fast float %7724, -1.000000e+00
  %7726 = fmul fast float %7725, 0x3FD45F3060000000
  %7727 = fmul fast float %7721, 0x401921FB60000000
  %7728 = fadd fast float %7727, 0x400921FB60000000
  %7729 = call float @dx.op.unary.f32(i32 13, float %7728)  ; Sin(value)
  %7730 = fadd fast float %7729, 0x3E7777A5C0000000
  %7731 = fmul fast float %7730, 0x3FC45F3060000000
  %7732 = fmul fast float %7721, 0x4022D97C80000000
  %7733 = fadd fast float %7732, 0x4012D97C80000000
  %7734 = call float @dx.op.unary.f32(i32 13, float %7733)  ; Sin(value)
  %7735 = fadd fast float %7734, 1.000000e+00
  %7736 = fmul fast float %7735, 0x3FBB2995E0000000
  %7737 = fmul fast float %7721, 0x402921FB60000000
  %7738 = fadd fast float %7737, 0x401921FB60000000
  %7739 = call float @dx.op.unary.f32(i32 13, float %7738)  ; Sin(value)
  %7740 = fadd fast float %7739, 0xBE8777A5C0000000
  %7741 = fmul fast float %7740, 0x3FB45F3060000000
  %7742 = call float @dx.op.dot4.f32(i32 56, float %7716, float %7717, float %7718, float %7719, float %7726, float %7731, float %7736, float %7741)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7743 = fmul fast float %7742, 0xBFF7154760000000
  %7744 = call float @dx.op.unary.f32(i32 21, float %7743)  ; Exp(value)
  %7745 = call float @dx.op.unary.f32(i32 7, float %7744)  ; Saturate(value)
  br label %7746

; <label>:7746                                    ; preds = %7714, %7710
  %7747 = phi float [ %7745, %7714 ], [ 1.000000e+00, %7710 ]
  %7748 = fadd fast float %7747, -1.000000e+00
  %7749 = fmul fast float %7748, %7708
  %7750 = fadd fast float %7749, 1.000000e+00
  br label %7751

; <label>:7751                                    ; preds = %7746, %7651
  %7752 = phi float [ %7750, %7746 ], [ 1.000000e+00, %7651 ]
  %7753 = fmul fast float %7752, %7647
  %7754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7755 = extractvalue %dx.types.CBufRet.f32 %7754, 0
  %7756 = extractvalue %dx.types.CBufRet.f32 %7754, 1
  %7757 = extractvalue %dx.types.CBufRet.f32 %7754, 2
  %7758 = fadd fast float %7755, %154
  %7759 = fadd fast float %7756, %155
  %7760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7761 = extractvalue %dx.types.CBufRet.f32 %7760, 1
  %7762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7763 = extractvalue %dx.types.CBufRet.f32 %7762, 0
  %7764 = extractvalue %dx.types.CBufRet.f32 %7762, 1
  %7765 = extractvalue %dx.types.CBufRet.f32 %7762, 2
  %7766 = fsub fast float -0.000000e+00, %7758
  %7767 = fsub fast float -0.000000e+00, %7759
  %7768 = fsub fast float -0.000000e+00, %156
  %7769 = fsub fast float %7768, %7757
  %7770 = fadd fast float %7769, %7761
  %7771 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7766, float %7767, float %7770)  ; Dot3(ax,ay,az,bx,by,bz)
  %7772 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7763, float %7764, float %7765)  ; Dot3(ax,ay,az,bx,by,bz)
  %7773 = fdiv fast float 1.000000e+00, %7772
  %7774 = fmul fast float %7773, %7771
  %7775 = fmul fast float %7763, %7774
  %7776 = fmul fast float %7764, %7774
  %7777 = fadd fast float %7775, %7758
  %7778 = fadd fast float %7776, %7759
  %7779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7780 = extractvalue %dx.types.CBufRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.CBufRet.f32 %7779, 1
  %7782 = fsub fast float %7777, %7780
  %7783 = fsub fast float %7778, %7781
  %7784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7785 = extractvalue %dx.types.CBufRet.f32 %7784, 2
  %7786 = extractvalue %dx.types.CBufRet.f32 %7784, 3
  %7787 = fmul fast float %7782, %7785
  %7788 = fmul fast float %7783, %7786
  %7789 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7790 = extractvalue %dx.types.CBufRet.i32 %7789, 3
  %7791 = icmp eq i32 %7790, 0
  br i1 %7791, label %7797, label %7792

; <label>:7792                                    ; preds = %7751
  %7793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7787, float %7788, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7794 = extractvalue %dx.types.ResRet.f32 %7793, 0
  %7795 = extractvalue %dx.types.ResRet.f32 %7793, 1
  %7796 = extractvalue %dx.types.ResRet.f32 %7793, 2
  br label %7802

; <label>:7797                                    ; preds = %7751
  %7798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %7787, float %7788, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7799 = extractvalue %dx.types.ResRet.f32 %7798, 0
  %7800 = extractvalue %dx.types.ResRet.f32 %7798, 1
  %7801 = extractvalue %dx.types.ResRet.f32 %7798, 2
  br label %7802

; <label>:7802                                    ; preds = %7797, %7792
  %7803 = phi float [ %7794, %7792 ], [ %7799, %7797 ]
  %7804 = phi float [ %7795, %7792 ], [ %7800, %7797 ]
  %7805 = phi float [ %7796, %7792 ], [ %7801, %7797 ]
  %7806 = extractvalue %dx.types.CBufRet.f32 %7760, 2
  %7807 = fmul fast float %7806, %7803
  %7808 = extractvalue %dx.types.CBufRet.f32 %7760, 0
  %7809 = fsub fast float %7774, %7808
  %7810 = fsub fast float %7809, %7807
  %7811 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7810)  ; FMax(a,b)
  %7812 = fmul fast float %7811, %7804
  %7813 = call float @dx.op.binary.f32(i32 36, float %7805, float %7812)  ; FMin(a,b)
  %7814 = fmul fast float %7813, 0xBFF7154760000000
  %7815 = call float @dx.op.unary.f32(i32 21, float %7814)  ; Exp(value)
  %7816 = fmul fast float %7753, %7815
  br label %7817

; <label>:7817                                    ; preds = %7802, %7646
  %7818 = phi float [ %7816, %7802 ], [ %7647, %7646 ]
  %7819 = call float @dx.op.binary.f32(i32 36, float %7818, float %7818)  ; FMin(a,b)
  %7820 = call float @dx.op.binary.f32(i32 36, float %7818, float %7819)  ; FMin(a,b)
  %7821 = fcmp fast ogt float %7820, 0.000000e+00
  br i1 %7821, label %7822, label %8130, !dx.controlflow.hints !121

; <label>:7822                                    ; preds = %7817
  %7823 = bitcast i32 %5518 to float
  %7824 = fmul fast float %7818, %6539
  %7825 = fmul fast float %7818, %6540
  %7826 = fmul fast float %7818, %6541
  %7827 = fsub fast float %6528, %174
  %7828 = fsub fast float %6529, %175
  %7829 = fsub fast float %6530, %176
  %7830 = call float @dx.op.dot3.f32(i32 55, float %7827, float %7828, float %7829, float %7827, float %7828, float %7829)  ; Dot3(ax,ay,az,bx,by,bz)
  %7831 = call float @dx.op.unary.f32(i32 25, float %7830)  ; Rsqrt(value)
  %7832 = fmul fast float %7831, %7827
  %7833 = fmul fast float %7831, %7828
  %7834 = fmul fast float %7831, %7829
  %7835 = call float @dx.op.dot3.f32(i32 55, float %6528, float %6529, float %6530, float %5453, float %5454, float %5455)  ; Dot3(ax,ay,az,bx,by,bz)
  %7836 = call float @dx.op.dot3.f32(i32 55, float %5281, float %5282, float %5283, float %7832, float %7833, float %7834)  ; Dot3(ax,ay,az,bx,by,bz)
  %7837 = call float @dx.op.unary.f32(i32 7, float %7835)  ; Saturate(value)
  %7838 = fmul fast float %7837, %7837
  %7839 = fmul fast float %7838, %7823
  %7840 = call float @dx.op.unary.f32(i32 7, float %7839)  ; Saturate(value)
  %7841 = fmul fast float %7840, %7837
  %7842 = call float @dx.op.dot3.f32(i32 55, float %5453, float %5454, float %5455, float %7832, float %7833, float %7834)  ; Dot3(ax,ay,az,bx,by,bz)
  %7843 = fmul fast float %7842, %7842
  %7844 = call float @dx.op.unary.f32(i32 6, float %7835)  ; FAbs(value)
  %7845 = fsub fast float 1.000000e+00, %5512
  %7846 = fmul fast float %5494, %5494
  %7847 = fmul fast float %7846, %7845
  %7848 = fadd fast float %7847, %5512
  %7849 = bitcast float %7848 to i32
  %7850 = ashr i32 %7849, 1
  %7851 = add nsw i32 %7850, 532487669
  %7852 = bitcast i32 %7851 to float
  %7853 = fadd fast float %7852, %5494
  %7854 = fmul fast float %5512, %7843
  %7855 = fsub fast float 1.000000e+00, %7843
  %7856 = fadd fast float %7855, %7854
  %7857 = fmul fast float %7844, %7844
  %7858 = fmul fast float %7857, %7845
  %7859 = fadd fast float %7858, %5512
  %7860 = bitcast float %7859 to i32
  %7861 = ashr i32 %7860, 1
  %7862 = add nsw i32 %7861, 532487669
  %7863 = bitcast i32 %7862 to float
  %7864 = fadd fast float %7863, %7844
  %7865 = fmul fast float %7856, %7856
  %7866 = fmul fast float %7865, %7853
  %7867 = fmul fast float %7866, %7864
  %7868 = fdiv fast float 0x3FF0A00000000000, %7867
  %7869 = fmul fast float %7868, %5512
  %7870 = fmul fast float %5754, 0x3FF9999980000000
  %7871 = fsub fast float 5.000000e+00, %7870
  %7872 = call float @dx.op.unary.f32(i32 6, float %7836)  ; FAbs(value)
  %7873 = fsub fast float 1.000000e+00, %7872
  %7874 = fmul fast float %5754, 0x41D9660740000000
  %7875 = fadd fast float %7874, 0xC1EFBF8940000000
  %7876 = bitcast float %7873 to i32
  %7877 = sitofp i32 %7876 to float
  %7878 = fmul fast float %7877, %7871
  %7879 = fadd fast float %7875, %7878
  %7880 = fptosi float %7879 to i32
  %7881 = bitcast i32 %7880 to float
  %7882 = fsub fast float 1.000000e+00, %5450
  %7883 = fsub fast float 1.000000e+00, %5451
  %7884 = fsub fast float 1.000000e+00, %5492
  %7885 = fmul fast float %7881, %7882
  %7886 = fmul fast float %7881, %7883
  %7887 = fmul fast float %7881, %7884
  %7888 = fadd fast float %7885, %5450
  %7889 = fadd fast float %7886, %5451
  %7890 = fadd fast float %7887, %5492
  br i1 %5777, label %7891, label %7914

; <label>:7891                                    ; preds = %7822
  %7892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5103, float %7872, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7893 = extractvalue %dx.types.ResRet.f32 %7892, 0
  %7894 = extractvalue %dx.types.ResRet.f32 %7892, 1
  %7895 = extractvalue %dx.types.ResRet.f32 %7892, 2
  %7896 = fadd fast float %7893, -5.000000e-01
  %7897 = fadd fast float %7894, -5.000000e-01
  %7898 = fadd fast float %7895, -5.000000e-01
  %7899 = fmul fast float %5450, 4.000000e+00
  %7900 = fmul fast float %7899, %7882
  %7901 = fmul fast float %7900, %7896
  %7902 = fmul fast float %5451, 4.000000e+00
  %7903 = fmul fast float %7902, %7883
  %7904 = fmul fast float %7903, %7897
  %7905 = fmul fast float %5492, 4.000000e+00
  %7906 = fmul fast float %7905, %7884
  %7907 = fmul fast float %7906, %7898
  %7908 = fadd fast float %7901, %7888
  %7909 = fadd fast float %7904, %7889
  %7910 = fadd fast float %7907, %7890
  %7911 = call float @dx.op.unary.f32(i32 7, float %7908)  ; Saturate(value)
  %7912 = call float @dx.op.unary.f32(i32 7, float %7909)  ; Saturate(value)
  %7913 = call float @dx.op.unary.f32(i32 7, float %7910)  ; Saturate(value)
  br label %7914

; <label>:7914                                    ; preds = %7891, %7822
  %7915 = phi float [ %7911, %7891 ], [ %7888, %7822 ]
  %7916 = phi float [ %7912, %7891 ], [ %7889, %7822 ]
  %7917 = phi float [ %7913, %7891 ], [ %7890, %7822 ]
  %7918 = fmul fast float %7835, 9.843750e-01
  %7919 = fadd fast float %7918, 7.812500e-03
  %7920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %7919, float %5758, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7921 = extractvalue %dx.types.ResRet.f32 %7920, 0
  %7922 = extractvalue %dx.types.ResRet.f32 %7920, 1
  %7923 = extractvalue %dx.types.ResRet.f32 %7920, 2
  %7924 = extractvalue %dx.types.ResRet.f32 %7920, 3
  %7925 = fsub fast float %7923, %7921
  %7926 = fsub fast float %7924, %7922
  %7927 = fmul fast float %7925, %5764
  %7928 = fmul fast float %7926, %5764
  %7929 = fadd fast float %7927, %7921
  %7930 = fadd fast float %7928, %7922
  %7931 = fmul fast float %7929, %5450
  %7932 = fmul fast float %7929, %5451
  %7933 = fmul fast float %7929, %5492
  %7934 = fadd fast float %7931, %7930
  %7935 = fadd fast float %7932, %7930
  %7936 = fadd fast float %7933, %7930
  br i1 %5777, label %7937, label %7960

; <label>:7937                                    ; preds = %7914
  %7938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5103, float %7835, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7939 = extractvalue %dx.types.ResRet.f32 %7938, 0
  %7940 = extractvalue %dx.types.ResRet.f32 %7938, 1
  %7941 = extractvalue %dx.types.ResRet.f32 %7938, 2
  %7942 = fadd fast float %7939, -5.000000e-01
  %7943 = fadd fast float %7940, -5.000000e-01
  %7944 = fadd fast float %7941, -5.000000e-01
  %7945 = fmul fast float %5450, 4.000000e+00
  %7946 = fmul fast float %7945, %7882
  %7947 = fmul fast float %7946, %7942
  %7948 = fmul fast float %5451, 4.000000e+00
  %7949 = fmul fast float %7948, %7883
  %7950 = fmul fast float %7949, %7943
  %7951 = fmul fast float %5492, 4.000000e+00
  %7952 = fmul fast float %7951, %7884
  %7953 = fmul fast float %7952, %7944
  %7954 = fadd fast float %7947, %7934
  %7955 = fadd fast float %7950, %7935
  %7956 = fadd fast float %7953, %7936
  %7957 = call float @dx.op.unary.f32(i32 7, float %7954)  ; Saturate(value)
  %7958 = call float @dx.op.unary.f32(i32 7, float %7955)  ; Saturate(value)
  %7959 = call float @dx.op.unary.f32(i32 7, float %7956)  ; Saturate(value)
  br label %7960

; <label>:7960                                    ; preds = %7937, %7914
  %7961 = phi float [ %7957, %7937 ], [ %7934, %7914 ]
  %7962 = phi float [ %7958, %7937 ], [ %7935, %7914 ]
  %7963 = phi float [ %7959, %7937 ], [ %7936, %7914 ]
  %7964 = call float @dx.op.binary.f32(i32 35, float %7962, float %7963)  ; FMax(a,b)
  %7965 = call float @dx.op.binary.f32(i32 35, float %7961, float %7964)  ; FMax(a,b)
  %7966 = fsub fast float 1.000000e+00, %7965
  %7967 = call float @dx.op.binary.f32(i32 35, float %7844, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7968 = fdiv fast float %4451, %7967
  %7969 = fmul fast float %6299, %7968
  %7970 = fmul fast float %6301, %7968
  %7971 = fmul fast float %6303, %7968
  %7972 = call float @dx.op.unary.f32(i32 21, float %7969)  ; Exp(value)
  %7973 = call float @dx.op.unary.f32(i32 21, float %7970)  ; Exp(value)
  %7974 = call float @dx.op.unary.f32(i32 21, float %7971)  ; Exp(value)
  %7975 = call float @dx.op.unary.f32(i32 7, float %7972)  ; Saturate(value)
  %7976 = call float @dx.op.unary.f32(i32 7, float %7973)  ; Saturate(value)
  %7977 = call float @dx.op.unary.f32(i32 7, float %7974)  ; Saturate(value)
  %7978 = select i1 %6296, float %7975, float 0.000000e+00
  %7979 = select i1 %6297, float %7976, float 0.000000e+00
  %7980 = select i1 %6298, float %7977, float 0.000000e+00
  %7981 = fsub fast float -0.000000e+00, %5453
  %7982 = fsub fast float -0.000000e+00, %5454
  %7983 = fsub fast float -0.000000e+00, %5455
  %7984 = call float @dx.op.dot3.f32(i32 55, float %6528, float %6529, float %6530, float %7981, float %7982, float %7983)  ; Dot3(ax,ay,az,bx,by,bz)
  %7985 = call float @dx.op.unary.f32(i32 7, float %7984)  ; Saturate(value)
  %7986 = fmul fast float %7985, 9.843750e-01
  %7987 = fadd fast float %7986, 7.812500e-03
  %7988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %7987, float %5758, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7989 = extractvalue %dx.types.ResRet.f32 %7988, 0
  %7990 = extractvalue %dx.types.ResRet.f32 %7988, 1
  %7991 = extractvalue %dx.types.ResRet.f32 %7988, 2
  %7992 = extractvalue %dx.types.ResRet.f32 %7988, 3
  %7993 = fsub fast float %7991, %7989
  %7994 = fsub fast float %7992, %7990
  %7995 = fmul fast float %7993, %5764
  %7996 = fmul fast float %7994, %5764
  %7997 = fadd fast float %7995, %7989
  %7998 = fadd fast float %7996, %7990
  %7999 = fmul fast float %7997, %5450
  %8000 = fmul fast float %7997, %5451
  %8001 = fmul fast float %7997, %5492
  %8002 = fadd fast float %7999, %7998
  %8003 = fadd fast float %8000, %7998
  %8004 = fadd fast float %8001, %7998
  br i1 %5777, label %8005, label %8028

; <label>:8005                                    ; preds = %7960
  %8006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5103, float %7985, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8007 = extractvalue %dx.types.ResRet.f32 %8006, 0
  %8008 = extractvalue %dx.types.ResRet.f32 %8006, 1
  %8009 = extractvalue %dx.types.ResRet.f32 %8006, 2
  %8010 = fadd fast float %8007, -5.000000e-01
  %8011 = fadd fast float %8008, -5.000000e-01
  %8012 = fadd fast float %8009, -5.000000e-01
  %8013 = fmul fast float %5450, 4.000000e+00
  %8014 = fmul fast float %8013, %7882
  %8015 = fmul fast float %8014, %8010
  %8016 = fmul fast float %5451, 4.000000e+00
  %8017 = fmul fast float %8016, %7883
  %8018 = fmul fast float %8017, %8011
  %8019 = fmul fast float %5492, 4.000000e+00
  %8020 = fmul fast float %8019, %7884
  %8021 = fmul fast float %8020, %8012
  %8022 = fadd fast float %8015, %8002
  %8023 = fadd fast float %8018, %8003
  %8024 = fadd fast float %8021, %8004
  %8025 = call float @dx.op.unary.f32(i32 7, float %8022)  ; Saturate(value)
  %8026 = call float @dx.op.unary.f32(i32 7, float %8023)  ; Saturate(value)
  %8027 = call float @dx.op.unary.f32(i32 7, float %8024)  ; Saturate(value)
  br label %8028

; <label>:8028                                    ; preds = %8005, %7960
  %8029 = phi float [ %8025, %8005 ], [ %8002, %7960 ]
  %8030 = phi float [ %8026, %8005 ], [ %8003, %7960 ]
  %8031 = phi float [ %8027, %8005 ], [ %8004, %7960 ]
  %8032 = call float @dx.op.binary.f32(i32 35, float %8030, float %8031)  ; FMax(a,b)
  %8033 = call float @dx.op.binary.f32(i32 35, float %8029, float %8032)  ; FMax(a,b)
  %8034 = fsub fast float 1.000000e+00, %8033
  %8035 = fmul fast float %5509, %6363
  %8036 = fadd fast float %6357, %8035
  %8037 = call float @dx.op.unary.f32(i32 7, float %8036)  ; Saturate(value)
  %8038 = fsub fast float %6528, %5500
  %8039 = fsub fast float %6529, %5501
  %8040 = fsub fast float %6530, %5502
  %8041 = call float @dx.op.dot3.f32(i32 55, float %8038, float %8039, float %8040, float %8038, float %8039, float %8040)  ; Dot3(ax,ay,az,bx,by,bz)
  %8042 = call float @dx.op.unary.f32(i32 25, float %8041)  ; Rsqrt(value)
  %8043 = fmul fast float %8042, %8038
  %8044 = fmul fast float %8042, %8039
  %8045 = fmul fast float %8042, %8040
  %8046 = call float @dx.op.dot3.f32(i32 55, float %7981, float %7982, float %7983, float %8043, float %8044, float %8045)  ; Dot3(ax,ay,az,bx,by,bz)
  %8047 = fmul fast float %8046, %8046
  %8048 = call float @dx.op.unary.f32(i32 6, float %7985)  ; FAbs(value)
  %8049 = call float @dx.op.binary.f32(i32 35, float %8037, float 0x3F847AE140000000)  ; FMax(a,b)
  %8050 = fmul fast float %8049, %8049
  %8051 = fmul fast float %8050, %8050
  %8052 = fsub fast float 1.000000e+00, %8051
  %8053 = fmul fast float %7846, %8052
  %8054 = fadd fast float %8053, %8051
  %8055 = bitcast float %8054 to i32
  %8056 = ashr i32 %8055, 1
  %8057 = add nsw i32 %8056, 532487669
  %8058 = bitcast i32 %8057 to float
  %8059 = fadd fast float %8058, %5494
  %8060 = fmul fast float %8051, %8047
  %8061 = fsub fast float 1.000000e+00, %8047
  %8062 = fadd fast float %8061, %8060
  %8063 = fmul fast float %8048, %8048
  %8064 = fmul fast float %8063, %8052
  %8065 = fadd fast float %8064, %8051
  %8066 = bitcast float %8065 to i32
  %8067 = ashr i32 %8066, 1
  %8068 = add nsw i32 %8067, 532487669
  %8069 = bitcast i32 %8068 to float
  %8070 = fadd fast float %8069, %8048
  %8071 = fmul fast float %8062, %8062
  %8072 = fmul fast float %8071, %8059
  %8073 = fmul fast float %8072, %8070
  %8074 = fdiv fast float 0x3FF0A00000000000, %8073
  %8075 = fmul fast float %8074, %8051
  %8076 = fmul fast float %7985, %7978
  %8077 = fmul fast float %7985, %7979
  %8078 = fmul fast float %7985, %7980
  %8079 = fmul fast float %8076, %8034
  %8080 = fmul fast float %8079, %8075
  %8081 = fmul fast float %8077, %8034
  %8082 = fmul fast float %8081, %8075
  %8083 = fmul fast float %8078, %8034
  %8084 = fmul fast float %8083, %8075
  %8085 = fmul fast float %7915, %7869
  %8086 = fmul fast float %7916, %7869
  %8087 = fmul fast float %7917, %7869
  %8088 = fsub fast float 1.000000e+00, %7836
  %8089 = bitcast float %8088 to i32
  %8090 = sitofp i32 %8089 to float
  %8091 = fmul fast float %8090, 5.000000e+00
  %8092 = fadd fast float %8091, 0xC1EFBF8940000000
  %8093 = fptosi float %8092 to i32
  %8094 = bitcast i32 %8093 to float
  %8095 = fmul fast float %8094, %5104
  %8096 = fmul fast float %7966, %8095
  %8097 = fmul fast float %8096, %6291
  %8098 = fmul fast float %8096, %6292
  %8099 = fmul fast float %8096, %6293
  %8100 = fadd fast float %8097, %8085
  %8101 = fadd fast float %8098, %8086
  %8102 = fadd fast float %8099, %8087
  %8103 = fmul fast float %8100, %7841
  %8104 = fmul fast float %8101, %7841
  %8105 = fmul fast float %8102, %7841
  %8106 = fmul fast float %7841, %7824
  %8107 = fmul fast float %8106, %7966
  %8108 = fmul fast float %7841, %7825
  %8109 = fmul fast float %8108, %7966
  %8110 = fmul fast float %7841, %7826
  %8111 = fmul fast float %8110, %7966
  %8112 = fadd fast float %8103, %8080
  %8113 = fadd fast float %8104, %8082
  %8114 = fadd fast float %8105, %8084
  %8115 = fmul fast float %8112, %7824
  %8116 = fmul fast float %8113, %7825
  %8117 = fmul fast float %8114, %7826
  %8118 = fadd fast float %8107, %6275
  %8119 = fmul fast float %8118, %5129
  %8120 = fadd fast float %8109, %6276
  %8121 = fmul fast float %8120, %5129
  %8122 = fadd fast float %8111, %6277
  %8123 = fmul fast float %8122, %5129
  %8124 = fadd fast float %8115, %6514
  %8125 = fmul fast float %8124, %5129
  %8126 = fadd fast float %8116, %6518
  %8127 = fmul fast float %8126, %5129
  %8128 = fadd fast float %8117, %6522
  %8129 = fmul fast float %8128, %5129
  br label %8130

; <label>:8130                                    ; preds = %8028, %7817, %6498
  %8131 = phi float [ %6515, %6498 ], [ %6515, %7817 ], [ %8125, %8028 ]
  %8132 = phi float [ %6519, %6498 ], [ %6519, %7817 ], [ %8127, %8028 ]
  %8133 = phi float [ %6523, %6498 ], [ %6523, %7817 ], [ %8129, %8028 ]
  %8134 = phi float [ %6387, %6498 ], [ %6387, %7817 ], [ %8119, %8028 ]
  %8135 = phi float [ %6388, %6498 ], [ %6388, %7817 ], [ %8121, %8028 ]
  %8136 = phi float [ %6389, %6498 ], [ %6389, %7817 ], [ %8123, %8028 ]
  %8137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.f32 %8137, 0
  %8139 = fmul fast float %8138, %6370
  %8140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8141 = extractvalue %dx.types.CBufRet.f32 %8140, 3
  %8142 = fsub fast float 1.000000e+00, %5107
  %8143 = call float @dx.op.unary.f32(i32 7, float %8142)  ; Saturate(value)
  %8144 = fadd fast float %8136, %5106
  %8145 = fmul fast float %8144, %5107
  %8146 = fmul fast float %8143, %8141
  %8147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8148 = extractvalue %dx.types.CBufRet.f32 %8147, 3
  %8149 = fmul fast float %8134, %5447
  %8150 = fmul fast float %8135, %5448
  %8151 = fmul fast float %8136, %5449
  %8152 = fcmp fast ogt float %87, %208
  %8153 = and i1 %8152, %5197
  %8154 = or i1 %5276, %8153
  %8155 = icmp eq i32 %5196, 2
  %8156 = fcmp fast ole float %87, %208
  %8157 = and i1 %8156, %8155
  %8158 = or i1 %8157, %8154
  br i1 %8153, label %8159, label %8413

; <label>:8159                                    ; preds = %8130
  %8160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.f32 %8160, 2
  %8162 = extractvalue %dx.types.CBufRet.f32 %8160, 3
  %8163 = fmul fast float %8161, %99
  %8164 = fmul fast float %8162, %100
  %8165 = call float @dx.op.unary.f32(i32 7, float %8163)  ; Saturate(value)
  %8166 = call float @dx.op.unary.f32(i32 7, float %8164)  ; Saturate(value)
  %8167 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8165, float %8166, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8168 = extractvalue %dx.types.ResRet.f32 %8167, 0
  %8169 = extractvalue %dx.types.ResRet.f32 %8167, 1
  %8170 = extractvalue %dx.types.ResRet.f32 %8167, 2
  %8171 = extractvalue %dx.types.ResRet.f32 %8167, 3
  %8172 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8165, float %8166, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8173 = extractvalue %dx.types.ResRet.f32 %8172, 0
  %8174 = extractvalue %dx.types.ResRet.f32 %8172, 1
  %8175 = extractvalue %dx.types.ResRet.f32 %8172, 2
  %8176 = extractvalue %dx.types.ResRet.f32 %8172, 3
  %8177 = call float @dx.op.binary.f32(i32 35, float %8169, float %8170)  ; FMax(a,b)
  %8178 = call float @dx.op.binary.f32(i32 35, float %8168, float %8177)  ; FMax(a,b)
  %8179 = call float @dx.op.binary.f32(i32 35, float %8178, float %8171)  ; FMax(a,b)
  %8180 = call float @dx.op.binary.f32(i32 36, float %8174, float %8175)  ; FMin(a,b)
  %8181 = call float @dx.op.binary.f32(i32 36, float %8173, float %8180)  ; FMin(a,b)
  %8182 = call float @dx.op.binary.f32(i32 36, float %8181, float %8176)  ; FMin(a,b)
  %8183 = fmul fast float %8179, 2.550000e+02
  %8184 = fadd fast float %8183, 0x3F70101020000000
  %8185 = fptoui float %8184 to i32
  %8186 = fmul fast float %8182, 2.550000e+02
  %8187 = fadd fast float %8186, 0x3F70101020000000
  %8188 = fptoui float %8187 to i32
  %8189 = icmp ult i32 %8185, %8188
  br i1 %8189, label %8190, label %8358

; <label>:8190                                    ; preds = %8159
  %8191 = fcmp fast ogt float %86, 9.843750e-01
  %8192 = fadd fast float %87, -4.000000e+00
  %8193 = select i1 %8191, float -4.000000e+00, float %8192
  %8194 = call float @dx.op.binary.f32(i32 35, float %8193, float 0.000000e+00)  ; FMax(a,b)
  %8195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.f32 %8195, 0
  %8197 = fadd fast float %8196, %8194
  %8198 = extractvalue %dx.types.CBufRet.f32 %8195, 2
  %8199 = fmul fast float %8197, %8198
  %8200 = call float @dx.op.unary.f32(i32 23, float %8199)  ; Log(value)
  %8201 = extractvalue %dx.types.CBufRet.f32 %8195, 3
  %8202 = fmul fast float %8201, %8200
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 2
  %8205 = fmul fast float %8202, %8204
  %8206 = call float @dx.op.unary.f32(i32 7, float %8205)  ; Saturate(value)
  %8207 = uitofp i32 %8185 to float
  %8208 = uitofp i32 %8188 to float
  %8209 = fadd fast float %8207, 5.000000e-01
  %8210 = fadd fast float %8208, 5.000000e-01
  %8211 = fmul fast float %8204, %8209
  %8212 = fmul fast float %8204, %8210
  %8213 = fadd fast float %8211, 0x3F0FFB4800000000
  %8214 = fadd fast float %8212, 0xBF0FFB4800000000
  %8215 = call float @dx.op.binary.f32(i32 35, float %8206, float %8213)  ; FMax(a,b)
  %8216 = call float @dx.op.binary.f32(i32 36, float %8215, float %8214)  ; FMin(a,b)
  %8217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8218 = extractvalue %dx.types.CBufRet.f32 %8217, 1
  %8219 = extractvalue %dx.types.CBufRet.f32 %8217, 2
  %8220 = extractvalue %dx.types.CBufRet.f32 %8217, 0
  %8221 = fmul fast float %8218, %8216
  %8222 = fadd fast float %8220, %8221
  %8223 = fadd fast float %8220, %8219
  %8224 = fsub fast float %8218, %8219
  %8225 = fadd fast float %8224, %8220
  %8226 = call float @dx.op.binary.f32(i32 35, float %8222, float %8223)  ; FMax(a,b)
  %8227 = call float @dx.op.binary.f32(i32 36, float %8226, float %8225)  ; FMin(a,b)
  %8228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %8165, float %8166, float %8227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8229 = extractvalue %dx.types.ResRet.f32 %8228, 0
  %8230 = extractvalue %dx.types.ResRet.f32 %8228, 1
  %8231 = extractvalue %dx.types.ResRet.f32 %8228, 2
  %8232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8233 = extractvalue %dx.types.CBufRet.i32 %8232, 0
  %8234 = extractvalue %dx.types.CBufRet.i32 %8232, 1
  %8235 = uitofp i32 %8233 to float
  %8236 = uitofp i32 %8234 to float
  %8237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8238 = extractvalue %dx.types.CBufRet.f32 %8237, 0
  %8239 = extractvalue %dx.types.CBufRet.f32 %8237, 1
  %8240 = fmul fast float %8235, %8165
  %8241 = fmul fast float %8236, %8166
  %8242 = fadd fast float %8240, -5.000000e-01
  %8243 = fadd fast float %8241, -5.000000e-01
  %8244 = call float @dx.op.unary.f32(i32 22, float %8242)  ; Frc(value)
  %8245 = call float @dx.op.unary.f32(i32 22, float %8243)  ; Frc(value)
  %8246 = fmul fast float %8244, %8244
  %8247 = fmul fast float %8246, %8244
  %8248 = fsub fast float 3.000000e+00, %8244
  %8249 = fmul fast float %8246, %8248
  %8250 = fmul fast float %8244, 3.000000e+00
  %8251 = fmul fast float %8247, 3.000000e+00
  %8252 = fmul fast float %8246, 6.000000e+00
  %8253 = fsub fast float %8251, %8252
  %8254 = fadd fast float %8253, 4.000000e+00
  %8255 = fmul fast float %8254, 0x3FC5555560000000
  %8256 = fmul fast float %8247, -3.000000e+00
  %8257 = fadd fast float %8246, %8244
  %8258 = fmul fast float %8257, 3.000000e+00
  %8259 = fadd fast float %8256, 1.000000e+00
  %8260 = fadd fast float %8259, %8258
  %8261 = fmul fast float %8247, 0x3FC5555560000000
  %8262 = fmul fast float %8245, %8245
  %8263 = fmul fast float %8262, %8245
  %8264 = fsub fast float 3.000000e+00, %8245
  %8265 = fmul fast float %8262, %8264
  %8266 = fmul fast float %8245, 3.000000e+00
  %8267 = fmul fast float %8263, 3.000000e+00
  %8268 = fmul fast float %8262, 6.000000e+00
  %8269 = fsub fast float %8267, %8268
  %8270 = fadd fast float %8269, 4.000000e+00
  %8271 = fmul fast float %8270, 0x3FC5555560000000
  %8272 = fmul fast float %8263, -3.000000e+00
  %8273 = fadd fast float %8262, %8245
  %8274 = fmul fast float %8273, 3.000000e+00
  %8275 = fadd fast float %8272, 1.000000e+00
  %8276 = fadd fast float %8275, %8274
  %8277 = fmul fast float %8263, 0x3FC5555560000000
  %8278 = fadd fast float %8244, 1.000000e+00
  %8279 = fsub fast float 1.000000e+00, %8250
  %8280 = fadd fast float %8279, %8249
  %8281 = fadd fast float %8280, %8254
  %8282 = fmul fast float %8281, 0x3FC5555560000000
  %8283 = fdiv fast float %8255, %8282
  %8284 = fsub fast float %8278, %8283
  %8285 = fsub fast float 1.000000e+00, %8244
  %8286 = fadd fast float %8260, %8247
  %8287 = fmul fast float %8286, 0x3FC5555560000000
  %8288 = fdiv fast float %8261, %8287
  %8289 = fadd fast float %8285, %8288
  %8290 = fadd fast float %8245, 1.000000e+00
  %8291 = fsub fast float 1.000000e+00, %8266
  %8292 = fadd fast float %8291, %8265
  %8293 = fadd fast float %8292, %8270
  %8294 = fmul fast float %8293, 0x3FC5555560000000
  %8295 = fdiv fast float %8271, %8294
  %8296 = fsub fast float %8290, %8295
  %8297 = fsub fast float 1.000000e+00, %8245
  %8298 = fadd fast float %8276, %8263
  %8299 = fmul fast float %8298, 0x3FC5555560000000
  %8300 = fdiv fast float %8277, %8299
  %8301 = fadd fast float %8300, %8297
  %8302 = fmul fast float %8284, %8238
  %8303 = fsub fast float %8165, %8302
  %8304 = fmul fast float %8289, %8238
  %8305 = fadd fast float %8304, %8165
  %8306 = fmul fast float %8301, %8239
  %8307 = fadd fast float %8306, %8166
  %8308 = fmul fast float %8296, %8239
  %8309 = fsub fast float %8166, %8308
  %8310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8303, float %8309, float %8227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8311 = extractvalue %dx.types.ResRet.f32 %8310, 0
  %8312 = extractvalue %dx.types.ResRet.f32 %8310, 1
  %8313 = extractvalue %dx.types.ResRet.f32 %8310, 2
  %8314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8305, float %8309, float %8227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8315 = extractvalue %dx.types.ResRet.f32 %8314, 0
  %8316 = extractvalue %dx.types.ResRet.f32 %8314, 1
  %8317 = extractvalue %dx.types.ResRet.f32 %8314, 2
  %8318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8303, float %8307, float %8227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8319 = extractvalue %dx.types.ResRet.f32 %8318, 0
  %8320 = extractvalue %dx.types.ResRet.f32 %8318, 1
  %8321 = extractvalue %dx.types.ResRet.f32 %8318, 2
  %8322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8305, float %8307, float %8227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8323 = extractvalue %dx.types.ResRet.f32 %8322, 0
  %8324 = extractvalue %dx.types.ResRet.f32 %8322, 1
  %8325 = extractvalue %dx.types.ResRet.f32 %8322, 2
  %8326 = fsub fast float %8319, %8311
  %8327 = fsub fast float %8320, %8312
  %8328 = fsub fast float %8321, %8313
  %8329 = fmul fast float %8326, %8299
  %8330 = fmul fast float %8327, %8299
  %8331 = fmul fast float %8328, %8299
  %8332 = fadd fast float %8329, %8311
  %8333 = fadd fast float %8330, %8312
  %8334 = fadd fast float %8331, %8313
  %8335 = fsub fast float %8323, %8315
  %8336 = fsub fast float %8324, %8316
  %8337 = fsub fast float %8325, %8317
  %8338 = fmul fast float %8335, %8299
  %8339 = fmul fast float %8336, %8299
  %8340 = fmul fast float %8337, %8299
  %8341 = fsub fast float %8315, %8332
  %8342 = fadd fast float %8341, %8338
  %8343 = fsub fast float %8316, %8333
  %8344 = fadd fast float %8343, %8339
  %8345 = fsub fast float %8317, %8334
  %8346 = fadd fast float %8345, %8340
  %8347 = fmul fast float %8342, %8287
  %8348 = fmul fast float %8344, %8287
  %8349 = fmul fast float %8346, %8287
  %8350 = fadd fast float %8347, %8332
  %8351 = fadd fast float %8348, %8333
  %8352 = fadd fast float %8349, %8334
  %8353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8354 = extractvalue %dx.types.CBufRet.f32 %8353, 1
  %8355 = fmul fast float %8350, %8354
  %8356 = fmul fast float %8351, %8354
  %8357 = fmul fast float %8352, %8354
  br label %8358

; <label>:8358                                    ; preds = %8190, %8159
  %8359 = phi float [ %8229, %8190 ], [ 1.000000e+00, %8159 ]
  %8360 = phi float [ %8230, %8190 ], [ 1.000000e+00, %8159 ]
  %8361 = phi float [ %8231, %8190 ], [ 1.000000e+00, %8159 ]
  %8362 = phi float [ %8355, %8190 ], [ 0.000000e+00, %8159 ]
  %8363 = phi float [ %8356, %8190 ], [ 0.000000e+00, %8159 ]
  %8364 = phi float [ %8357, %8190 ], [ 0.000000e+00, %8159 ]
  %8365 = call float @dx.op.dot3.f32(i32 55, float %8359, float %8360, float %8361, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8366 = call float @dx.op.dot3.f32(i32 55, float %8362, float %8363, float %8364, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8367 = select i1 %247, float %8365, float %8359
  %8368 = select i1 %247, float %8365, float %8360
  %8369 = select i1 %247, float 1.000000e+00, float %8361
  %8370 = select i1 %247, float %8366, float %8362
  %8371 = select i1 %247, float 0.000000e+00, float %8363
  %8372 = select i1 %247, float 0.000000e+00, float %8364
  %8373 = fmul fast float %8367, %8149
  %8374 = fmul fast float %8368, %8150
  %8375 = fmul fast float %8369, %8151
  %8376 = fadd fast float %8373, %8370
  %8377 = fadd fast float %8374, %8371
  %8378 = fadd fast float %8372, %8375
  %8379 = fmul fast float %8367, %8131
  %8380 = fmul fast float %8368, %8132
  %8381 = fmul fast float %8369, %8133
  %8382 = fmul fast float %124, %8161
  %8383 = fmul fast float %126, %8162
  %8384 = fsub fast float 1.000000e+00, %8382
  %8385 = fsub fast float 1.000000e+00, %8383
  %8386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8387 = extractvalue %dx.types.CBufRet.f32 %8386, 0
  %8388 = extractvalue %dx.types.CBufRet.f32 %8386, 1
  %8389 = extractvalue %dx.types.CBufRet.f32 %8386, 2
  %8390 = fmul fast float %8384, %8387
  %8391 = fmul fast float %8384, %8388
  %8392 = fmul fast float %8384, %8389
  %8393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8394 = extractvalue %dx.types.CBufRet.f32 %8393, 0
  %8395 = extractvalue %dx.types.CBufRet.f32 %8393, 1
  %8396 = extractvalue %dx.types.CBufRet.f32 %8393, 2
  %8397 = fmul fast float %8385, %8394
  %8398 = fmul fast float %8385, %8395
  %8399 = fmul fast float %8385, %8396
  %8400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8401 = extractvalue %dx.types.CBufRet.f32 %8400, 0
  %8402 = extractvalue %dx.types.CBufRet.f32 %8400, 1
  %8403 = extractvalue %dx.types.CBufRet.f32 %8400, 2
  %8404 = fadd fast float %8397, %8401
  %8405 = fadd fast float %8404, %8390
  %8406 = fadd fast float %8398, %8402
  %8407 = fadd fast float %8406, %8391
  %8408 = fadd fast float %8399, %8403
  %8409 = fadd fast float %8408, %8392
  %8410 = fmul fast float %8405, %208
  %8411 = fmul fast float %8407, %208
  %8412 = fmul fast float %8409, %208
  br label %8413

; <label>:8413                                    ; preds = %8358, %8130
  %8414 = phi float [ %8410, %8358 ], [ %154, %8130 ]
  %8415 = phi float [ %8411, %8358 ], [ %155, %8130 ]
  %8416 = phi float [ %8412, %8358 ], [ %156, %8130 ]
  %8417 = phi float [ %208, %8358 ], [ %87, %8130 ]
  %8418 = phi float [ %8376, %8358 ], [ %8149, %8130 ]
  %8419 = phi float [ %8377, %8358 ], [ %8150, %8130 ]
  %8420 = phi float [ %8378, %8358 ], [ %8151, %8130 ]
  %8421 = phi float [ %8379, %8358 ], [ %8131, %8130 ]
  %8422 = phi float [ %8380, %8358 ], [ %8132, %8130 ]
  %8423 = phi float [ %8381, %8358 ], [ %8133, %8130 ]
  %8424 = phi float [ %8359, %8358 ], [ 1.000000e+00, %8130 ]
  br i1 %8158, label %9573, label %8425

; <label>:8425                                    ; preds = %8413
  %8426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8427 = extractvalue %dx.types.CBufRet.f32 %8426, 0
  %8428 = extractvalue %dx.types.CBufRet.f32 %8426, 1
  %8429 = extractvalue %dx.types.CBufRet.f32 %8426, 2
  %8430 = extractvalue %dx.types.CBufRet.f32 %8426, 3
  %8431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8432 = extractvalue %dx.types.CBufRet.f32 %8431, 0
  %8433 = extractvalue %dx.types.CBufRet.f32 %8431, 1
  %8434 = extractvalue %dx.types.CBufRet.f32 %8431, 2
  %8435 = extractvalue %dx.types.CBufRet.f32 %8431, 3
  %8436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8437 = extractvalue %dx.types.CBufRet.f32 %8436, 0
  %8438 = extractvalue %dx.types.CBufRet.f32 %8436, 1
  %8439 = extractvalue %dx.types.CBufRet.f32 %8436, 2
  %8440 = extractvalue %dx.types.CBufRet.f32 %8436, 3
  %8441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8442 = extractvalue %dx.types.CBufRet.f32 %8441, 0
  %8443 = extractvalue %dx.types.CBufRet.f32 %8441, 1
  %8444 = extractvalue %dx.types.CBufRet.f32 %8441, 2
  %8445 = extractvalue %dx.types.CBufRet.f32 %8441, 3
  %8446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8447 = extractvalue %dx.types.CBufRet.f32 %8446, 3
  %8448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8449 = extractvalue %dx.types.CBufRet.f32 %8448, 3
  %8450 = extractvalue %dx.types.CBufRet.f32 %8448, 0
  %8451 = extractvalue %dx.types.CBufRet.f32 %8448, 1
  %8452 = extractvalue %dx.types.CBufRet.f32 %8448, 2
  %8453 = fcmp fast olt float %8452, -5.000000e-01
  %8454 = call float @dx.op.dot3.f32(i32 55, float %8414, float %8415, float %8416, float %8414, float %8415, float %8416)  ; Dot3(ax,ay,az,bx,by,bz)
  %8455 = call float @dx.op.unary.f32(i32 25, float %8454)  ; Rsqrt(value)
  %8456 = fmul fast float %8455, %8454
  %8457 = fmul fast float %8455, %8414
  %8458 = fmul fast float %8455, %8415
  %8459 = fmul fast float %8455, %8416
  %8460 = fadd fast float %8456, %8430
  %8461 = call float @dx.op.dot3.f32(i32 55, float %8457, float %8458, float %8459, float %8427, float %8428, float %8429)  ; Dot3(ax,ay,az,bx,by,bz)
  %8462 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8463 = extractvalue %dx.types.CBufRet.i32 %8462, 1
  %8464 = and i32 %8463, 1
  %8465 = icmp ne i32 %8464, 0
  %8466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8467 = extractvalue %dx.types.CBufRet.f32 %8466, 2
  %8468 = fcmp fast ogt float %8467, 0.000000e+00
  %8469 = and i1 %8465, %8468
  br i1 %8469, label %8470, label %8876, !dx.controlflow.hints !122

; <label>:8470                                    ; preds = %8425
  %8471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8472 = extractvalue %dx.types.CBufRet.f32 %8471, 3
  %8473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8474 = extractvalue %dx.types.CBufRet.f32 %8473, 2
  %8475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8476 = extractvalue %dx.types.CBufRet.f32 %8475, 2
  %8477 = fsub fast float %8474, %8476
  %8478 = and i32 %8463, 2
  %8479 = extractvalue %dx.types.CBufRet.i32 %8462, 0
  %8480 = call i32 @dx.op.binary.i32(i32 40, i32 %8479, i32 3)  ; UMin(a,b)
  %8481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8482 = extractvalue %dx.types.CBufRet.f32 %8481, 0
  %8483 = extractvalue %dx.types.CBufRet.f32 %8481, 1
  %8484 = extractvalue %dx.types.CBufRet.f32 %8475, 0
  %8485 = extractvalue %dx.types.CBufRet.f32 %8475, 1
  %8486 = fsub fast float %8482, %8484
  %8487 = fsub fast float %8483, %8485
  %8488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8489 = extractvalue %dx.types.CBufRet.f32 %8488, 0
  %8490 = fcmp fast ogt float %8489, 0.000000e+00
  %8491 = fsub fast float -0.000000e+00, %8486
  %8492 = fsub fast float -0.000000e+00, %8487
  %8493 = call float @dx.op.dot2.f32(i32 54, float %8457, float %8458, float %8457, float %8458)  ; Dot2(ax,ay,bx,by)
  %8494 = call float @dx.op.dot2.f32(i32 54, float %8457, float %8458, float %8491, float %8492)  ; Dot2(ax,ay,bx,by)
  %8495 = fmul fast float %8494, 2.000000e+00
  %8496 = call float @dx.op.dot2.f32(i32 54, float %8491, float %8492, float %8491, float %8492)  ; Dot2(ax,ay,bx,by)
  %8497 = fmul fast float %8489, %8489
  %8498 = fsub fast float %8496, %8497
  %8499 = fmul fast float %8495, %8495
  %8500 = fmul fast float %8493, 4.000000e+00
  %8501 = fmul fast float %8500, %8498
  %8502 = fsub fast float %8499, %8501
  %8503 = fcmp fast ogt float %8502, 0.000000e+00
  br i1 %8503, label %8504, label %8519

; <label>:8504                                    ; preds = %8470
  %8505 = fcmp fast ogt float %8495, 0.000000e+00
  %8506 = call float @dx.op.unary.f32(i32 24, float %8502)  ; Sqrt(value)
  %8507 = fsub fast float -0.000000e+00, %8506
  %8508 = select i1 %8505, float %8506, float %8507
  %8509 = fadd fast float %8508, %8495
  %8510 = fmul float %8509, -5.000000e-01
  %8511 = fdiv fast float %8510, %8493
  %8512 = call float @dx.op.binary.f32(i32 35, float %8511, float 0.000000e+00)  ; FMax(a,b)
  %8513 = call float @dx.op.binary.f32(i32 36, float %8456, float %8512)  ; FMin(a,b)
  %8514 = fdiv fast float %8498, %8510
  %8515 = call float @dx.op.binary.f32(i32 35, float %8514, float 0.000000e+00)  ; FMax(a,b)
  %8516 = call float @dx.op.binary.f32(i32 36, float %8456, float %8515)  ; FMin(a,b)
  %8517 = call float @dx.op.binary.f32(i32 36, float %8513, float %8516)  ; FMin(a,b)
  %8518 = call float @dx.op.binary.f32(i32 35, float %8513, float %8516)  ; FMax(a,b)
  br label %8519

; <label>:8519                                    ; preds = %8504, %8470
  %8520 = phi float [ %8518, %8504 ], [ -1.000000e+00, %8470 ]
  %8521 = phi float [ %8517, %8504 ], [ -1.000000e+00, %8470 ]
  %8522 = phi i1 [ true, %8504 ], [ false, %8470 ]
  %8523 = and i1 %8490, %8522
  br i1 %8523, label %8524, label %8526

; <label>:8524                                    ; preds = %8519
  %8525 = fcmp fast oeq float %8521, %8520
  br i1 %8525, label %8829, label %8527

; <label>:8526                                    ; preds = %8519
  br i1 %8490, label %8829, label %8527

; <label>:8527                                    ; preds = %8526, %8524
  %8528 = phi float [ %8456, %8526 ], [ %8520, %8524 ]
  %8529 = phi float [ 0.000000e+00, %8526 ], [ %8521, %8524 ]
  %8530 = icmp ne i32 %8478, 0
  %8531 = fmul fast float %8528, %8459
  %8532 = fadd fast float %8531, %8472
  %8533 = fmul fast float %8532, %8528
  %8534 = select i1 %8530, float 0.000000e+00, float %8533
  %8535 = fcmp fast oeq float %8459, 0.000000e+00
  %8536 = fdiv fast float %8477, %8459
  %8537 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8536)  ; FMax(a,b)
  %8538 = select i1 %8535, float %8528, float %8537
  %8539 = call float @dx.op.binary.f32(i32 36, float %8528, float %8538)  ; FMin(a,b)
  %8540 = fcmp fast ogt float %8459, 0.000000e+00
  %8541 = fcmp fast olt float %8477, 0.000000e+00
  br i1 %8540, label %8542, label %8599

; <label>:8542                                    ; preds = %8527
  %8543 = icmp eq i32 %8478, 0
  br i1 %8541, label %8544, label %8588

; <label>:8544                                    ; preds = %8542
  %8545 = select i1 %8543, float %8528, float 0.000000e+00
  %8546 = fsub fast float -0.000000e+00, %8545
  %8547 = call float @dx.op.unary.f32(i32 6, float %8546)  ; FAbs(value)
  %8548 = fmul fast float %8545, %8459
  %8549 = fadd fast float %8548, %8472
  %8550 = fmul fast float %8547, %8549
  %8551 = fsub fast float %8534, %8550
  %8552 = fsub fast float %8528, %8547
  %8553 = select i1 %8543, float %8552, float 0.000000e+00
  %8554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8555 = extractvalue %dx.types.CBufRet.f32 %8554, 0
  %8556 = extractvalue %dx.types.CBufRet.f32 %8554, 1
  %8557 = extractvalue %dx.types.CBufRet.f32 %8554, 2
  %8558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8559 = extractvalue %dx.types.CBufRet.f32 %8558, 0
  %8560 = extractvalue %dx.types.CBufRet.f32 %8558, 1
  %8561 = extractvalue %dx.types.CBufRet.f32 %8558, 2
  %8562 = extractvalue %dx.types.CBufRet.f32 %8558, 3
  %8563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8564 = extractvalue %dx.types.CBufRet.f32 %8563, 3
  %8565 = call float @dx.op.binary.f32(i32 36, float %8551, float %8564)  ; FMin(a,b)
  %8566 = fmul fast float %8562, %8553
  %8567 = call float @dx.op.unary.f32(i32 7, float %8566)  ; Saturate(value)
  %8568 = fsub fast float %8559, %8555
  %8569 = fsub fast float %8560, %8556
  %8570 = fsub fast float %8561, %8557
  %8571 = fmul fast float %8567, %8568
  %8572 = fmul fast float %8567, %8569
  %8573 = fmul fast float %8567, %8570
  %8574 = fadd fast float %8571, %8555
  %8575 = fadd fast float %8572, %8556
  %8576 = fadd fast float %8573, %8557
  %8577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8578 = extractvalue %dx.types.CBufRet.f32 %8577, 0
  %8579 = extractvalue %dx.types.CBufRet.f32 %8577, 1
  %8580 = fadd fast float %8579, %8578
  %8581 = call float @dx.op.unary.f32(i32 7, float %8580)  ; Saturate(value)
  %8582 = extractvalue %dx.types.CBufRet.f32 %8577, 2
  %8583 = extractvalue %dx.types.CBufRet.f32 %8577, 3
  %8584 = fadd fast float %8583, %8582
  %8585 = call float @dx.op.unary.f32(i32 7, float %8584)  ; Saturate(value)
  %8586 = fmul fast float %8581, %8565
  %8587 = fmul fast float %8586, %8585
  br label %8829

; <label>:8588                                    ; preds = %8542
  br i1 %8543, label %8589, label %8610

; <label>:8589                                    ; preds = %8588
  %8590 = call float @dx.op.binary.f32(i32 36, float %8539, float %8529)  ; FMin(a,b)
  %8591 = fsub fast float %8539, %8590
  %8592 = fsub fast float %8591, %8528
  %8593 = call float @dx.op.unary.f32(i32 6, float %8592)  ; FAbs(value)
  %8594 = fadd fast float %8591, %8528
  %8595 = fmul fast float %8594, %8459
  %8596 = fadd fast float %8595, %8472
  %8597 = fmul fast float %8596, %8593
  %8598 = fsub fast float %8534, %8597
  br label %8610

; <label>:8599                                    ; preds = %8527
  br i1 %8541, label %8600, label %8610

; <label>:8600                                    ; preds = %8599
  %8601 = call float @dx.op.binary.f32(i32 35, float %8529, float %8539)  ; FMax(a,b)
  %8602 = icmp eq i32 %8478, 0
  %8603 = select i1 %8602, float %8539, float 0.000000e+00
  %8604 = fsub fast float -0.000000e+00, %8603
  %8605 = call float @dx.op.unary.f32(i32 6, float %8604)  ; FAbs(value)
  %8606 = fmul fast float %8603, %8459
  %8607 = fadd fast float %8606, %8472
  %8608 = fmul fast float %8605, %8607
  %8609 = fsub fast float %8534, %8608
  br label %8610

; <label>:8610                                    ; preds = %8600, %8599, %8589, %8588
  %8611 = phi float [ %8529, %8588 ], [ %8529, %8589 ], [ %8601, %8600 ], [ %8529, %8599 ]
  %8612 = phi float [ 0.000000e+00, %8588 ], [ %8593, %8589 ], [ %8605, %8600 ], [ 0.000000e+00, %8599 ]
  %8613 = phi float [ %8534, %8588 ], [ %8598, %8589 ], [ %8609, %8600 ], [ %8534, %8599 ]
  %8614 = phi float [ %8539, %8588 ], [ %8539, %8589 ], [ %8528, %8600 ], [ %8528, %8599 ]
  %8615 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %8615, align 4, !tbaa !112, !noalias !123
  %8616 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %8616, align 4, !tbaa !112, !noalias !123
  %8617 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %8617, align 4, !tbaa !112, !noalias !123
  %8618 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %8618, align 4, !tbaa !112, !noalias !123
  %8619 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %8619, align 4, !tbaa !112, !noalias !123
  %8620 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %8620, align 4, !tbaa !112, !noalias !123
  %8621 = icmp sgt i32 %8480, 0
  br i1 %8621, label %8622, label %8683

; <label>:8622                                    ; preds = %8610
  br label %8623

; <label>:8623                                    ; preds = %8672, %8622
  %8624 = phi i32 [ %8673, %8672 ], [ 0, %8622 ]
  %8625 = phi i32 [ %8674, %8672 ], [ 0, %8622 ]
  %8626 = add nuw i32 %8625, 171
  %8627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %8626)  ; CBufferLoadLegacy(handle,regIndex)
  %8628 = extractvalue %dx.types.CBufRet.f32 %8627, 0
  %8629 = extractvalue %dx.types.CBufRet.f32 %8627, 1
  %8630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8631 = extractvalue %dx.types.CBufRet.f32 %8630, 0
  %8632 = extractvalue %dx.types.CBufRet.f32 %8630, 1
  %8633 = fsub fast float %8628, %8631
  %8634 = fsub fast float %8629, %8632
  %8635 = extractvalue %dx.types.CBufRet.f32 %8627, 2
  %8636 = fsub fast float -0.000000e+00, %8633
  %8637 = fsub fast float -0.000000e+00, %8634
  %8638 = call float @dx.op.dot2.f32(i32 54, float %8457, float %8458, float %8636, float %8637)  ; Dot2(ax,ay,bx,by)
  %8639 = fmul fast float %8638, 2.000000e+00
  %8640 = call float @dx.op.dot2.f32(i32 54, float %8636, float %8637, float %8636, float %8637)  ; Dot2(ax,ay,bx,by)
  %8641 = fmul fast float %8635, %8635
  %8642 = fsub fast float %8640, %8641
  %8643 = fmul fast float %8639, %8639
  %8644 = fmul fast float %8500, %8642
  %8645 = fsub fast float %8643, %8644
  %8646 = fcmp fast ogt float %8645, 0.000000e+00
  br i1 %8646, label %8647, label %8662

; <label>:8647                                    ; preds = %8623
  %8648 = fcmp fast ogt float %8639, 0.000000e+00
  %8649 = call float @dx.op.unary.f32(i32 24, float %8645)  ; Sqrt(value)
  %8650 = fsub fast float -0.000000e+00, %8649
  %8651 = select i1 %8648, float %8649, float %8650
  %8652 = fadd fast float %8651, %8639
  %8653 = fmul float %8652, -5.000000e-01
  %8654 = fdiv fast float %8653, %8493
  %8655 = call float @dx.op.binary.f32(i32 35, float %8654, float 0.000000e+00)  ; FMax(a,b)
  %8656 = call float @dx.op.binary.f32(i32 36, float %8528, float %8655)  ; FMin(a,b)
  %8657 = fdiv fast float %8642, %8653
  %8658 = call float @dx.op.binary.f32(i32 35, float %8657, float 0.000000e+00)  ; FMax(a,b)
  %8659 = call float @dx.op.binary.f32(i32 36, float %8528, float %8658)  ; FMin(a,b)
  %8660 = call float @dx.op.binary.f32(i32 36, float %8656, float %8659)  ; FMin(a,b)
  %8661 = call float @dx.op.binary.f32(i32 35, float %8656, float %8659)  ; FMax(a,b)
  br label %8662

; <label>:8662                                    ; preds = %8647, %8623
  %8663 = phi float [ %8661, %8647 ], [ -1.000000e+00, %8623 ]
  %8664 = phi float [ %8660, %8647 ], [ -1.000000e+00, %8623 ]
  %8665 = phi i1 [ true, %8647 ], [ false, %8623 ]
  br i1 %8665, label %8666, label %8672

; <label>:8666                                    ; preds = %8662
  %8667 = call float @dx.op.binary.f32(i32 35, float %8611, float %8664)  ; FMax(a,b)
  %8668 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8625
  store float %8667, float* %8668, align 4, !tbaa !112, !noalias !123
  %8669 = call float @dx.op.binary.f32(i32 35, float %8611, float %8663)  ; FMax(a,b)
  %8670 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8625
  store float %8669, float* %8670, align 4, !tbaa !112, !noalias !123
  %8671 = add nsw i32 %8624, 1
  br label %8672

; <label>:8672                                    ; preds = %8666, %8662
  %8673 = phi i32 [ %8671, %8666 ], [ %8624, %8662 ]
  %8674 = add nuw nsw i32 %8625, 1
  %8675 = icmp eq i32 %8674, %8480
  br i1 %8675, label %8676, label %8623

; <label>:8676                                    ; preds = %8672
  %8677 = load float, float* %8617, align 4, !tbaa !112, !alias.scope !139, !noalias !142
  %8678 = load float, float* %8616, align 4, !tbaa !112, !alias.scope !145, !noalias !146
  %8679 = load float, float* %8615, align 4, !tbaa !112, !alias.scope !147, !noalias !148
  %8680 = load float, float* %8620, align 4, !tbaa !112, !alias.scope !149, !noalias !152
  %8681 = load float, float* %8619, align 4, !tbaa !112, !alias.scope !155, !noalias !156
  %8682 = load float, float* %8618, align 4, !tbaa !112, !alias.scope !157, !noalias !158
  br label %8683

; <label>:8683                                    ; preds = %8676, %8610
  %8684 = phi float [ -1.000000e+00, %8610 ], [ %8682, %8676 ]
  %8685 = phi float [ -1.000000e+00, %8610 ], [ %8681, %8676 ]
  %8686 = phi float [ -1.000000e+00, %8610 ], [ %8680, %8676 ]
  %8687 = phi float [ -1.000000e+00, %8610 ], [ %8679, %8676 ]
  %8688 = phi float [ -1.000000e+00, %8610 ], [ %8678, %8676 ]
  %8689 = phi float [ -1.000000e+00, %8610 ], [ %8677, %8676 ]
  %8690 = phi i32 [ 0, %8610 ], [ %8673, %8676 ]
  %8691 = call float @dx.op.binary.f32(i32 36, float %8688, float %8689)  ; FMin(a,b)
  %8692 = call float @dx.op.binary.f32(i32 36, float %8687, float %8691)  ; FMin(a,b)
  %8693 = call float @dx.op.binary.f32(i32 35, float %8687, float %8688)  ; FMax(a,b)
  %8694 = call float @dx.op.binary.f32(i32 36, float %8693, float %8689)  ; FMin(a,b)
  %8695 = call float @dx.op.binary.f32(i32 36, float %8687, float %8688)  ; FMin(a,b)
  %8696 = call float @dx.op.binary.f32(i32 35, float %8695, float %8694)  ; FMax(a,b)
  %8697 = call float @dx.op.binary.f32(i32 35, float %8688, float %8689)  ; FMax(a,b)
  %8698 = call float @dx.op.binary.f32(i32 35, float %8687, float %8697)  ; FMax(a,b)
  store float %8692, float* %8615, align 4, !tbaa !112, !alias.scope !147, !noalias !148
  store float %8696, float* %8616, align 4, !tbaa !112, !alias.scope !145, !noalias !146
  store float %8698, float* %8617, align 4, !tbaa !112, !alias.scope !139, !noalias !142
  %8699 = call float @dx.op.binary.f32(i32 36, float %8685, float %8686)  ; FMin(a,b)
  %8700 = call float @dx.op.binary.f32(i32 36, float %8684, float %8699)  ; FMin(a,b)
  %8701 = call float @dx.op.binary.f32(i32 35, float %8684, float %8685)  ; FMax(a,b)
  %8702 = call float @dx.op.binary.f32(i32 36, float %8701, float %8686)  ; FMin(a,b)
  %8703 = call float @dx.op.binary.f32(i32 36, float %8684, float %8685)  ; FMin(a,b)
  %8704 = call float @dx.op.binary.f32(i32 35, float %8703, float %8702)  ; FMax(a,b)
  %8705 = call float @dx.op.binary.f32(i32 35, float %8685, float %8686)  ; FMax(a,b)
  %8706 = call float @dx.op.binary.f32(i32 35, float %8684, float %8705)  ; FMax(a,b)
  store float %8700, float* %8618, align 4, !tbaa !112, !alias.scope !157, !noalias !158
  store float %8704, float* %8619, align 4, !tbaa !112, !alias.scope !155, !noalias !156
  store float %8706, float* %8620, align 4, !tbaa !112, !alias.scope !149, !noalias !152
  %8707 = sub nsw i32 3, %8690
  %8708 = icmp sgt i32 %8707, 2
  br i1 %8708, label %8709, label %8747

; <label>:8709                                    ; preds = %8683
  %8710 = icmp eq i32 %8478, 0
  %8711 = fsub fast float %8528, %8612
  %8712 = select i1 %8710, float %8711, float %8612
  %8713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8714 = extractvalue %dx.types.CBufRet.f32 %8713, 0
  %8715 = extractvalue %dx.types.CBufRet.f32 %8713, 1
  %8716 = extractvalue %dx.types.CBufRet.f32 %8713, 2
  %8717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8718 = extractvalue %dx.types.CBufRet.f32 %8717, 0
  %8719 = extractvalue %dx.types.CBufRet.f32 %8717, 1
  %8720 = extractvalue %dx.types.CBufRet.f32 %8717, 2
  %8721 = extractvalue %dx.types.CBufRet.f32 %8717, 3
  %8722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8723 = extractvalue %dx.types.CBufRet.f32 %8722, 3
  %8724 = call float @dx.op.binary.f32(i32 36, float %8613, float %8723)  ; FMin(a,b)
  %8725 = fmul fast float %8721, %8712
  %8726 = call float @dx.op.unary.f32(i32 7, float %8725)  ; Saturate(value)
  %8727 = fsub fast float %8718, %8714
  %8728 = fsub fast float %8719, %8715
  %8729 = fsub fast float %8720, %8716
  %8730 = fmul fast float %8726, %8727
  %8731 = fmul fast float %8726, %8728
  %8732 = fmul fast float %8726, %8729
  %8733 = fadd fast float %8730, %8714
  %8734 = fadd fast float %8731, %8715
  %8735 = fadd fast float %8732, %8716
  %8736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8737 = extractvalue %dx.types.CBufRet.f32 %8736, 0
  %8738 = extractvalue %dx.types.CBufRet.f32 %8736, 1
  %8739 = fadd fast float %8738, %8737
  %8740 = call float @dx.op.unary.f32(i32 7, float %8739)  ; Saturate(value)
  %8741 = extractvalue %dx.types.CBufRet.f32 %8736, 2
  %8742 = extractvalue %dx.types.CBufRet.f32 %8736, 3
  %8743 = fadd fast float %8742, %8741
  %8744 = call float @dx.op.unary.f32(i32 7, float %8743)  ; Saturate(value)
  %8745 = fmul fast float %8740, %8724
  %8746 = fmul fast float %8745, %8744
  br label %8829

; <label>:8747                                    ; preds = %8683
  %8748 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8707
  %8749 = load float, float* %8748, align 4, !tbaa !112, !noalias !123
  %8750 = fcmp fast olt float %8749, %8614
  %8751 = icmp sgt i32 %8690, 0
  %8752 = and i1 %8751, %8750
  br i1 %8752, label %8753, label %8790

; <label>:8753                                    ; preds = %8747
  br label %8754

; <label>:8754                                    ; preds = %8783, %8753
  %8755 = phi float [ %8784, %8783 ], [ %8612, %8753 ]
  %8756 = phi float [ %8785, %8783 ], [ %8613, %8753 ]
  %8757 = phi float [ %8765, %8783 ], [ %8749, %8753 ]
  %8758 = phi i32 [ %8762, %8783 ], [ %8707, %8753 ]
  %8759 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8758
  %8760 = load float, float* %8759, align 4, !tbaa !112, !noalias !123
  %8761 = icmp slt i32 %8758, 2
  %8762 = add nsw i32 %8758, 1
  %8763 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8762
  %8764 = load float, float* %8763, align 4, !tbaa !112, !noalias !123
  %8765 = select i1 %8761, float %8764, float %8528
  %8766 = call float @dx.op.binary.f32(i32 36, float %8765, float %8760)  ; FMin(a,b)
  %8767 = call float @dx.op.binary.f32(i32 36, float %8614, float %8766)  ; FMin(a,b)
  %8768 = icmp eq i32 %8478, 0
  %8769 = fadd fast float %8767, %8757
  %8770 = fmul fast float %8769, %8459
  %8771 = fadd fast float %8770, %8472
  br i1 %8768, label %8777, label %8772

; <label>:8772                                    ; preds = %8754
  %8773 = fsub fast float %8767, %8757
  %8774 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8773)  ; FMax(a,b)
  %8775 = fmul fast float %8774, %8771
  %8776 = fadd fast float %8775, %8756
  br label %8783

; <label>:8777                                    ; preds = %8754
  %8778 = fsub fast float %8757, %8767
  %8779 = call float @dx.op.unary.f32(i32 6, float %8778)  ; FAbs(value)
  %8780 = fadd fast float %8779, %8755
  %8781 = fmul fast float %8779, %8771
  %8782 = fsub fast float %8756, %8781
  br label %8783

; <label>:8783                                    ; preds = %8777, %8772
  %8784 = phi float [ %8774, %8772 ], [ %8780, %8777 ]
  %8785 = phi float [ %8776, %8772 ], [ %8782, %8777 ]
  %8786 = fcmp fast olt float %8765, %8614
  %8787 = icmp slt i32 %8762, 3
  %8788 = and i1 %8787, %8786
  br i1 %8788, label %8754, label %8789

; <label>:8789                                    ; preds = %8783
  br label %8790

; <label>:8790                                    ; preds = %8789, %8747
  %8791 = phi float [ %8612, %8747 ], [ %8784, %8789 ]
  %8792 = phi float [ %8613, %8747 ], [ %8785, %8789 ]
  %8793 = fsub fast float %8528, %8791
  %8794 = select i1 %8530, float %8791, float %8793
  %8795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8796 = extractvalue %dx.types.CBufRet.f32 %8795, 0
  %8797 = extractvalue %dx.types.CBufRet.f32 %8795, 1
  %8798 = extractvalue %dx.types.CBufRet.f32 %8795, 2
  %8799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8800 = extractvalue %dx.types.CBufRet.f32 %8799, 0
  %8801 = extractvalue %dx.types.CBufRet.f32 %8799, 1
  %8802 = extractvalue %dx.types.CBufRet.f32 %8799, 2
  %8803 = extractvalue %dx.types.CBufRet.f32 %8799, 3
  %8804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8805 = extractvalue %dx.types.CBufRet.f32 %8804, 3
  %8806 = call float @dx.op.binary.f32(i32 36, float %8792, float %8805)  ; FMin(a,b)
  %8807 = fmul fast float %8803, %8794
  %8808 = call float @dx.op.unary.f32(i32 7, float %8807)  ; Saturate(value)
  %8809 = fsub fast float %8800, %8796
  %8810 = fsub fast float %8801, %8797
  %8811 = fsub fast float %8802, %8798
  %8812 = fmul fast float %8808, %8809
  %8813 = fmul fast float %8808, %8810
  %8814 = fmul fast float %8808, %8811
  %8815 = fadd fast float %8812, %8796
  %8816 = fadd fast float %8813, %8797
  %8817 = fadd fast float %8814, %8798
  %8818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8819 = extractvalue %dx.types.CBufRet.f32 %8818, 0
  %8820 = extractvalue %dx.types.CBufRet.f32 %8818, 1
  %8821 = fadd fast float %8820, %8819
  %8822 = call float @dx.op.unary.f32(i32 7, float %8821)  ; Saturate(value)
  %8823 = extractvalue %dx.types.CBufRet.f32 %8818, 2
  %8824 = extractvalue %dx.types.CBufRet.f32 %8818, 3
  %8825 = fadd fast float %8824, %8823
  %8826 = call float @dx.op.unary.f32(i32 7, float %8825)  ; Saturate(value)
  %8827 = fmul fast float %8822, %8806
  %8828 = fmul fast float %8827, %8826
  br label %8829

; <label>:8829                                    ; preds = %8790, %8709, %8544, %8526, %8524
  %8830 = phi float [ %8553, %8544 ], [ %8712, %8709 ], [ %8794, %8790 ], [ 0.000000e+00, %8524 ], [ 0.000000e+00, %8526 ]
  %8831 = phi float [ %8587, %8544 ], [ %8746, %8709 ], [ %8828, %8790 ], [ 0.000000e+00, %8524 ], [ 0.000000e+00, %8526 ]
  %8832 = phi float [ %8574, %8544 ], [ %8733, %8709 ], [ %8815, %8790 ], [ 0.000000e+00, %8524 ], [ 0.000000e+00, %8526 ]
  %8833 = phi float [ %8575, %8544 ], [ %8734, %8709 ], [ %8816, %8790 ], [ 0.000000e+00, %8524 ], [ 0.000000e+00, %8526 ]
  %8834 = phi float [ %8576, %8544 ], [ %8735, %8709 ], [ %8817, %8790 ], [ 0.000000e+00, %8524 ], [ 0.000000e+00, %8526 ]
  %8835 = fmul fast float %8467, %8831
  %8836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8837 = extractvalue %dx.types.CBufRet.f32 %8836, 2
  %8838 = fsub fast float %8474, %8837
  %8839 = fcmp fast olt float %8835, -2.000000e+01
  %8840 = call float @dx.op.unary.f32(i32 21, float %8835)  ; Exp(value)
  %8841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8842 = extractvalue %dx.types.CBufRet.f32 %8841, 2
  %8843 = extractvalue %dx.types.CBufRet.f32 %8841, 3
  %8844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8845 = extractvalue %dx.types.CBufRet.f32 %8844, 2
  %8846 = fmul fast float %8843, %8838
  %8847 = call float @dx.op.unary.f32(i32 7, float %8846)  ; Saturate(value)
  %8848 = fsub fast float 1.000000e+00, %8847
  %8849 = fmul fast float %8459, 5.000000e-01
  %8850 = fadd fast float %8849, 5.000000e-01
  %8851 = call float @dx.op.unary.f32(i32 7, float %8850)  ; Saturate(value)
  %8852 = fsub fast float 1.000000e+00, %8851
  %8853 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8848)  ; FMax(a,b)
  %8854 = fdiv fast float %8852, %8853
  %8855 = fsub fast float %8838, %8416
  %8856 = call float @dx.op.unary.f32(i32 6, float %8855)  ; FAbs(value)
  %8857 = fmul fast float %8856, %8842
  %8858 = call float @dx.op.unary.f32(i32 7, float %8854)  ; Saturate(value)
  %8859 = fsub fast float 1.000000e+00, %8857
  %8860 = fmul fast float %8859, %8858
  %8861 = fadd fast float %8860, %8857
  %8862 = fmul fast float %8845, %8838
  %8863 = call float @dx.op.unary.f32(i32 7, float %8862)  ; Saturate(value)
  %8864 = fsub fast float 1.000000e+00, %8861
  %8865 = fmul fast float %8864, %8863
  %8866 = fadd fast float %8865, %8861
  %8867 = call float @dx.op.unary.f32(i32 7, float %8866)  ; Saturate(value)
  %8868 = fadd fast float %8840, -1.000000e+00
  %8869 = select i1 %8839, float -1.000000e+00, float %8868
  %8870 = fmul fast float %8867, %8869
  %8871 = fadd fast float %8870, 1.000000e+00
  %8872 = fsub fast float -0.000000e+00, %8870
  %8873 = fmul fast float %8832, %8872
  %8874 = fmul fast float %8833, %8872
  %8875 = fmul fast float %8834, %8872
  br label %8876

; <label>:8876                                    ; preds = %8829, %8425
  %8877 = phi float [ %8830, %8829 ], [ 0.000000e+00, %8425 ]
  %8878 = phi float [ %8871, %8829 ], [ 1.000000e+00, %8425 ]
  %8879 = phi float [ %8873, %8829 ], [ 0.000000e+00, %8425 ]
  %8880 = phi float [ %8874, %8829 ], [ 0.000000e+00, %8425 ]
  %8881 = phi float [ %8875, %8829 ], [ 0.000000e+00, %8425 ]
  %8882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8883 = extractvalue %dx.types.CBufRet.f32 %8882, 1
  %8884 = fsub fast float 1.000000e+00, %8878
  %8885 = fmul fast float %8884, %8460
  %8886 = fmul fast float %8885, %8883
  %8887 = fsub fast float %8460, %8886
  br i1 %8453, label %8888, label %8917, !dx.controlflow.hints !159

; <label>:8888                                    ; preds = %8876
  %8889 = fmul fast float %8461, %8450
  %8890 = fadd fast float %8889, %8451
  %8891 = call float @dx.op.unary.f32(i32 7, float %8890)  ; Saturate(value)
  %8892 = fmul fast float %8432, %8887
  %8893 = fsub fast float -0.000000e+00, %8892
  %8894 = fmul fast float %8433, %8887
  %8895 = fsub fast float -0.000000e+00, %8894
  %8896 = call float @dx.op.unary.f32(i32 21, float %8893)  ; Exp(value)
  %8897 = call float @dx.op.unary.f32(i32 21, float %8895)  ; Exp(value)
  %8898 = call float @dx.op.binary.f32(i32 35, float %8440, float %8896)  ; FMax(a,b)
  %8899 = call float @dx.op.binary.f32(i32 35, float %8440, float %8897)  ; FMax(a,b)
  %8900 = fsub fast float %8899, %8898
  %8901 = fmul fast float %8900, %8891
  %8902 = fadd fast float %8901, %8898
  %8903 = call float @dx.op.unary.f32(i32 7, float %8902)  ; Saturate(value)
  %8904 = fsub fast float %8437, %8442
  %8905 = fsub fast float %8438, %8443
  %8906 = fsub fast float %8439, %8444
  %8907 = fmul fast float %8891, %8904
  %8908 = fmul fast float %8891, %8905
  %8909 = fmul fast float %8891, %8906
  %8910 = fadd fast float %8907, %8442
  %8911 = fadd fast float %8908, %8443
  %8912 = fadd fast float %8909, %8444
  %8913 = fsub fast float 1.000000e+00, %8903
  %8914 = fmul fast float %8913, %8910
  %8915 = fmul fast float %8913, %8911
  %8916 = fmul fast float %8913, %8912
  br label %8976

; <label>:8917                                    ; preds = %8876
  %8918 = fmul fast float %8887, %8449
  %8919 = call float @dx.op.unary.f32(i32 7, float %8918)  ; Saturate(value)
  %8920 = fsub fast float 2.000000e+00, %8919
  %8921 = fmul fast float %8919, 9.921875e-01
  %8922 = fmul fast float %8921, %8920
  %8923 = fadd fast float %8922, 3.906250e-03
  %8924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8923, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8925 = extractvalue %dx.types.ResRet.f32 %8924, 0
  %8926 = fsub fast float %8919, %8925
  %8927 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8926)  ; FMax(a,b)
  %8928 = fmul fast float %8435, %8416
  %8929 = call float @dx.op.unary.f32(i32 6, float %8928)  ; FAbs(value)
  %8930 = fcmp fast ogt float %8929, 0x3EB0C6F7A0000000
  br i1 %8930, label %8931, label %8937, !dx.controlflow.hints !160

; <label>:8931                                    ; preds = %8917
  %8932 = fmul fast float %8928, 0xBFF7154760000000
  %8933 = call float @dx.op.unary.f32(i32 21, float %8932)  ; Exp(value)
  %8934 = fsub fast float 1.000000e+00, %8933
  %8935 = fdiv fast float %8934, %8928
  %8936 = fmul fast float %8935, %8445
  br label %8937

; <label>:8937                                    ; preds = %8931, %8917
  %8938 = phi float [ %8936, %8931 ], [ %8445, %8917 ]
  %8939 = fadd fast float %8938, %8447
  %8940 = fmul fast float %8939, %8927
  %8941 = fmul fast float %8432, %8940
  %8942 = fsub fast float -0.000000e+00, %8941
  %8943 = fmul fast float %8433, %8940
  %8944 = fsub fast float -0.000000e+00, %8943
  %8945 = fmul fast float %8434, %8940
  %8946 = fsub fast float -0.000000e+00, %8945
  %8947 = call float @dx.op.unary.f32(i32 21, float %8942)  ; Exp(value)
  %8948 = call float @dx.op.unary.f32(i32 21, float %8944)  ; Exp(value)
  %8949 = call float @dx.op.unary.f32(i32 21, float %8946)  ; Exp(value)
  %8950 = fmul fast float %8461, %8461
  %8951 = fadd fast float %8950, 1.000000e+00
  %8952 = fmul fast float %8951, 0x3FAE8EC8A0000000
  %8953 = fmul fast float %8952, %8442
  %8954 = fmul fast float %8952, %8443
  %8955 = fmul fast float %8952, %8444
  %8956 = fmul fast float %8461, %8440
  %8957 = fsub fast float 1.000000e+00, %8956
  %8958 = fmul fast float %8440, %8440
  %8959 = fsub fast float 1.000000e+00, %8958
  %8960 = fmul fast float %8959, 0x3FB45F3060000000
  %8961 = fmul fast float %8957, %8957
  %8962 = fdiv fast float 1.000000e+00, %8961
  %8963 = fmul fast float %8960, %8962
  %8964 = fmul fast float %8963, %8437
  %8965 = fmul fast float %8963, %8438
  %8966 = fmul fast float %8963, %8439
  %8967 = fadd fast float %8964, %8953
  %8968 = fadd fast float %8965, %8954
  %8969 = fadd fast float %8966, %8955
  %8970 = fsub fast float 1.000000e+00, %8947
  %8971 = fsub fast float 1.000000e+00, %8948
  %8972 = fsub fast float 1.000000e+00, %8949
  %8973 = fmul fast float %8967, %8970
  %8974 = fmul fast float %8968, %8971
  %8975 = fmul fast float %8969, %8972
  br label %8976

; <label>:8976                                    ; preds = %8937, %8888
  %8977 = phi float [ %8914, %8888 ], [ %8973, %8937 ]
  %8978 = phi float [ %8915, %8888 ], [ %8974, %8937 ]
  %8979 = phi float [ %8916, %8888 ], [ %8975, %8937 ]
  %8980 = phi float [ %8903, %8888 ], [ %8947, %8937 ]
  %8981 = phi float [ %8903, %8888 ], [ %8948, %8937 ]
  %8982 = phi float [ %8903, %8888 ], [ %8949, %8937 ]
  br i1 %8469, label %8983, label %9181, !dx.controlflow.hints !161

; <label>:8983                                    ; preds = %8976
  %8984 = extractvalue %dx.types.CBufRet.f32 %8882, 0
  %8985 = fmul fast float %8984, %8884
  %8986 = fsub fast float %8879, %8977
  %8987 = fsub fast float %8880, %8978
  %8988 = fsub fast float %8881, %8979
  %8989 = fmul fast float %8985, %8986
  %8990 = fmul fast float %8985, %8987
  %8991 = fmul fast float %8985, %8988
  %8992 = fadd fast float %8989, %8977
  %8993 = fadd fast float %8990, %8978
  %8994 = fadd fast float %8991, %8979
  %8995 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8980)  ; FMax(a,b)
  %8996 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8981)  ; FMax(a,b)
  %8997 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8982)  ; FMax(a,b)
  %8998 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8878)  ; FMax(a,b)
  %8999 = call float @dx.op.binary.f32(i32 35, float %8877, float %8887)  ; FMax(a,b)
  %9000 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8999)  ; FMax(a,b)
  %9001 = fdiv fast float %8877, %9000
  %9002 = call float @dx.op.unary.f32(i32 7, float %9001)  ; Saturate(value)
  %9003 = fdiv fast float %8887, %9000
  %9004 = call float @dx.op.unary.f32(i32 7, float %9003)  ; Saturate(value)
  %9005 = fcmp fast une float %8998, 1.000000e+00
  br i1 %9005, label %9006, label %9019, !dx.controlflow.hints !162

; <label>:9006                                    ; preds = %8983
  %9007 = call float @dx.op.unary.f32(i32 23, float %8998)  ; Log(value)
  %9008 = fmul fast float %9007, 0x3FE62E4300000000
  %9009 = fmul fast float %8879, %9008
  %9010 = fsub fast float -0.000000e+00, %9009
  %9011 = fmul fast float %8880, %9008
  %9012 = fsub fast float -0.000000e+00, %9011
  %9013 = fmul fast float %8881, %9008
  %9014 = fsub fast float -0.000000e+00, %9013
  %9015 = fsub fast float 1.000000e+00, %8998
  %9016 = fdiv fast float %9010, %9015
  %9017 = fdiv fast float %9012, %9015
  %9018 = fdiv fast float %9014, %9015
  br label %9019

; <label>:9019                                    ; preds = %9006, %8983
  %9020 = phi float [ %9016, %9006 ], [ %8879, %8983 ]
  %9021 = phi float [ %9017, %9006 ], [ %8880, %8983 ]
  %9022 = phi float [ %9018, %9006 ], [ %8881, %8983 ]
  %9023 = phi float [ %9008, %9006 ], [ 0.000000e+00, %8983 ]
  %9024 = fcmp fast une float %8995, 1.000000e+00
  br i1 %9024, label %9025, label %9032, !dx.controlflow.hints !163

; <label>:9025                                    ; preds = %9019
  %9026 = call float @dx.op.unary.f32(i32 23, float %8995)  ; Log(value)
  %9027 = fmul fast float %9026, 0x3FE62E4300000000
  %9028 = fmul fast float %8992, %9027
  %9029 = fsub fast float -0.000000e+00, %9028
  %9030 = fsub fast float 1.000000e+00, %8995
  %9031 = fdiv fast float %9029, %9030
  br label %9032

; <label>:9032                                    ; preds = %9025, %9019
  %9033 = phi float [ %9031, %9025 ], [ %8992, %9019 ]
  %9034 = phi float [ %9027, %9025 ], [ 0.000000e+00, %9019 ]
  %9035 = fcmp fast une float %8996, 1.000000e+00
  br i1 %9035, label %9036, label %9043, !dx.controlflow.hints !163

; <label>:9036                                    ; preds = %9032
  %9037 = call float @dx.op.unary.f32(i32 23, float %8996)  ; Log(value)
  %9038 = fmul fast float %9037, 0x3FE62E4300000000
  %9039 = fmul fast float %8993, %9038
  %9040 = fsub fast float -0.000000e+00, %9039
  %9041 = fsub fast float 1.000000e+00, %8996
  %9042 = fdiv fast float %9040, %9041
  br label %9043

; <label>:9043                                    ; preds = %9036, %9032
  %9044 = phi float [ %9042, %9036 ], [ %8993, %9032 ]
  %9045 = phi float [ %9038, %9036 ], [ 0.000000e+00, %9032 ]
  %9046 = fcmp fast une float %8997, 1.000000e+00
  br i1 %9046, label %9047, label %9054, !dx.controlflow.hints !163

; <label>:9047                                    ; preds = %9043
  %9048 = call float @dx.op.unary.f32(i32 23, float %8997)  ; Log(value)
  %9049 = fmul fast float %9048, 0x3FE62E4300000000
  %9050 = fmul fast float %8994, %9049
  %9051 = fsub fast float -0.000000e+00, %9050
  %9052 = fsub fast float 1.000000e+00, %8997
  %9053 = fdiv fast float %9051, %9052
  br label %9054

; <label>:9054                                    ; preds = %9047, %9043
  %9055 = phi float [ %9053, %9047 ], [ %8994, %9043 ]
  %9056 = phi float [ %9049, %9047 ], [ 0.000000e+00, %9043 ]
  %9057 = fmul fast float %9020, %9004
  %9058 = fmul fast float %9021, %9004
  %9059 = fmul fast float %9022, %9004
  %9060 = fmul fast float %9023, %9004
  %9061 = fmul fast float %9033, %9002
  %9062 = fmul fast float %9044, %9002
  %9063 = fmul fast float %9055, %9002
  %9064 = fmul fast float %9034, %9002
  %9065 = fmul fast float %9045, %9002
  %9066 = fmul fast float %9056, %9002
  %9067 = fadd fast float %9061, %9057
  %9068 = fadd fast float %9062, %9058
  %9069 = fadd fast float %9063, %9059
  %9070 = fadd fast float %9064, %9060
  %9071 = fadd fast float %9065, %9060
  %9072 = fadd fast float %9066, %9060
  %9073 = fcmp fast une float %9070, 0.000000e+00
  br i1 %9073, label %9074, label %9081, !dx.controlflow.hints !164

; <label>:9074                                    ; preds = %9054
  %9075 = fmul fast float %9070, 0x3FF7154760000000
  %9076 = call float @dx.op.unary.f32(i32 21, float %9075)  ; Exp(value)
  %9077 = fsub fast float 1.000000e+00, %9076
  %9078 = fmul fast float %9067, %9077
  %9079 = fsub fast float -0.000000e+00, %9078
  %9080 = fdiv fast float %9079, %9070
  br label %9081

; <label>:9081                                    ; preds = %9074, %9054
  %9082 = phi float [ %9076, %9074 ], [ 1.000000e+00, %9054 ]
  %9083 = phi float [ %9080, %9074 ], [ %9067, %9054 ]
  %9084 = fcmp fast une float %9071, 0.000000e+00
  br i1 %9084, label %9085, label %9092, !dx.controlflow.hints !164

; <label>:9085                                    ; preds = %9081
  %9086 = fmul fast float %9071, 0x3FF7154760000000
  %9087 = call float @dx.op.unary.f32(i32 21, float %9086)  ; Exp(value)
  %9088 = fsub fast float 1.000000e+00, %9087
  %9089 = fmul fast float %9068, %9088
  %9090 = fsub fast float -0.000000e+00, %9089
  %9091 = fdiv fast float %9090, %9071
  br label %9092

; <label>:9092                                    ; preds = %9085, %9081
  %9093 = phi float [ %9087, %9085 ], [ 1.000000e+00, %9081 ]
  %9094 = phi float [ %9091, %9085 ], [ %9068, %9081 ]
  %9095 = fcmp fast une float %9072, 0.000000e+00
  br i1 %9095, label %9096, label %9103, !dx.controlflow.hints !164

; <label>:9096                                    ; preds = %9092
  %9097 = fmul fast float %9072, 0x3FF7154760000000
  %9098 = call float @dx.op.unary.f32(i32 21, float %9097)  ; Exp(value)
  %9099 = fsub fast float 1.000000e+00, %9098
  %9100 = fmul fast float %9069, %9099
  %9101 = fsub fast float -0.000000e+00, %9100
  %9102 = fdiv fast float %9101, %9072
  br label %9103

; <label>:9103                                    ; preds = %9096, %9092
  %9104 = phi float [ %9098, %9096 ], [ 1.000000e+00, %9092 ]
  %9105 = phi float [ %9102, %9096 ], [ %9069, %9092 ]
  %9106 = fcmp fast ogt float %9002, %9004
  br i1 %9106, label %9107, label %9127

; <label>:9107                                    ; preds = %9103
  %9108 = fsub fast float 1.000000e+00, %9004
  %9109 = fmul fast float %9020, %9108
  %9110 = fmul fast float %9021, %9108
  %9111 = fmul fast float %9022, %9108
  %9112 = fmul fast float %9023, %9108
  %9113 = fcmp fast une float %9112, 0.000000e+00
  br i1 %9113, label %9114, label %9165, !dx.controlflow.hints !165

; <label>:9114                                    ; preds = %9107
  %9115 = fmul fast float %9112, 0x3FF7154760000000
  %9116 = call float @dx.op.unary.f32(i32 21, float %9115)  ; Exp(value)
  %9117 = fsub fast float 1.000000e+00, %9116
  %9118 = fmul fast float %9109, %9117
  %9119 = fsub fast float -0.000000e+00, %9118
  %9120 = fmul fast float %9110, %9117
  %9121 = fsub fast float -0.000000e+00, %9120
  %9122 = fmul fast float %9111, %9117
  %9123 = fsub fast float -0.000000e+00, %9122
  %9124 = fdiv fast float %9119, %9112
  %9125 = fdiv fast float %9121, %9112
  %9126 = fdiv fast float %9123, %9112
  br label %9165

; <label>:9127                                    ; preds = %9103
  %9128 = fsub fast float 1.000000e+00, %9002
  %9129 = fmul fast float %9033, %9128
  %9130 = fmul fast float %9044, %9128
  %9131 = fmul fast float %9055, %9128
  %9132 = fmul fast float %9034, %9128
  %9133 = fmul fast float %9045, %9128
  %9134 = fmul fast float %9056, %9128
  %9135 = fcmp fast une float %9132, 0.000000e+00
  br i1 %9135, label %9136, label %9143, !dx.controlflow.hints !164

; <label>:9136                                    ; preds = %9127
  %9137 = fmul fast float %9132, 0x3FF7154760000000
  %9138 = call float @dx.op.unary.f32(i32 21, float %9137)  ; Exp(value)
  %9139 = fsub fast float 1.000000e+00, %9138
  %9140 = fmul fast float %9129, %9139
  %9141 = fsub fast float -0.000000e+00, %9140
  %9142 = fdiv fast float %9141, %9132
  br label %9143

; <label>:9143                                    ; preds = %9136, %9127
  %9144 = phi float [ %9142, %9136 ], [ %9129, %9127 ]
  %9145 = phi float [ %9138, %9136 ], [ 1.000000e+00, %9127 ]
  %9146 = fcmp fast une float %9133, 0.000000e+00
  br i1 %9146, label %9147, label %9154, !dx.controlflow.hints !164

; <label>:9147                                    ; preds = %9143
  %9148 = fmul fast float %9133, 0x3FF7154760000000
  %9149 = call float @dx.op.unary.f32(i32 21, float %9148)  ; Exp(value)
  %9150 = fsub fast float 1.000000e+00, %9149
  %9151 = fmul fast float %9130, %9150
  %9152 = fsub fast float -0.000000e+00, %9151
  %9153 = fdiv fast float %9152, %9133
  br label %9154

; <label>:9154                                    ; preds = %9147, %9143
  %9155 = phi float [ %9153, %9147 ], [ %9130, %9143 ]
  %9156 = phi float [ %9149, %9147 ], [ 1.000000e+00, %9143 ]
  %9157 = fcmp fast une float %9134, 0.000000e+00
  br i1 %9157, label %9158, label %9165, !dx.controlflow.hints !164

; <label>:9158                                    ; preds = %9154
  %9159 = fmul fast float %9134, 0x3FF7154760000000
  %9160 = call float @dx.op.unary.f32(i32 21, float %9159)  ; Exp(value)
  %9161 = fsub fast float 1.000000e+00, %9160
  %9162 = fmul fast float %9131, %9161
  %9163 = fsub fast float -0.000000e+00, %9162
  %9164 = fdiv fast float %9163, %9134
  br label %9165

; <label>:9165                                    ; preds = %9158, %9154, %9114, %9107
  %9166 = phi float [ %9164, %9158 ], [ %9126, %9114 ], [ %9111, %9107 ], [ %9131, %9154 ]
  %9167 = phi float [ %9155, %9158 ], [ %9125, %9114 ], [ %9110, %9107 ], [ %9155, %9154 ]
  %9168 = phi float [ %9144, %9158 ], [ %9124, %9114 ], [ %9109, %9107 ], [ %9144, %9154 ]
  %9169 = phi float [ %9160, %9158 ], [ %9116, %9114 ], [ 1.000000e+00, %9107 ], [ 1.000000e+00, %9154 ]
  %9170 = phi float [ %9156, %9158 ], [ %9116, %9114 ], [ 1.000000e+00, %9107 ], [ %9156, %9154 ]
  %9171 = phi float [ %9145, %9158 ], [ %9116, %9114 ], [ 1.000000e+00, %9107 ], [ %9145, %9154 ]
  %9172 = fmul fast float %9171, %9083
  %9173 = fmul fast float %9170, %9094
  %9174 = fmul fast float %9169, %9105
  %9175 = fadd fast float %9172, %9168
  %9176 = fadd fast float %9173, %9167
  %9177 = fadd fast float %9174, %9166
  %9178 = fmul fast float %9171, %9082
  %9179 = fmul fast float %9170, %9093
  %9180 = fmul fast float %9169, %9104
  br label %9181

; <label>:9181                                    ; preds = %9165, %8976
  %9182 = phi float [ %9180, %9165 ], [ %8982, %8976 ]
  %9183 = phi float [ %9179, %9165 ], [ %8981, %8976 ]
  %9184 = phi float [ %9178, %9165 ], [ %8980, %8976 ]
  %9185 = phi float [ %9177, %9165 ], [ %8979, %8976 ]
  %9186 = phi float [ %9176, %9165 ], [ %8978, %8976 ]
  %9187 = phi float [ %9175, %9165 ], [ %8977, %8976 ]
  %9188 = fmul fast float %9184, %8424
  %9189 = call float @dx.op.dot3.f32(i32 55, float %9184, float %9183, float %9182, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9190 = call float @dx.op.dot3.f32(i32 55, float %9187, float %9186, float %9185, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9191 = select i1 %247, float %9189, float %9184
  %9192 = select i1 %247, float %9189, float %9183
  %9193 = select i1 %247, float 1.000000e+00, float %9182
  %9194 = select i1 %247, float %9190, float %9187
  %9195 = select i1 %247, float 0.000000e+00, float %9186
  %9196 = select i1 %247, float 0.000000e+00, float %9185
  %9197 = fmul fast float %9191, %8418
  %9198 = fmul fast float %9192, %8419
  %9199 = fmul fast float %9193, %8420
  %9200 = fadd fast float %9197, %9194
  %9201 = fadd fast float %9198, %9195
  %9202 = fadd fast float %9196, %9199
  %9203 = fmul fast float %9191, %8421
  %9204 = fmul fast float %9192, %8422
  %9205 = fmul fast float %9193, %8423
  %9206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9207 = extractvalue %dx.types.CBufRet.i32 %9206, 0
  %9208 = icmp eq i32 %9207, 0
  br i1 %9208, label %9573, label %9209, !dx.controlflow.hints !166

; <label>:9209                                    ; preds = %9181
  %9210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9211 = extractvalue %dx.types.CBufRet.f32 %9210, 2
  %9212 = extractvalue %dx.types.CBufRet.f32 %9210, 3
  %9213 = fmul fast float %9211, %99
  %9214 = fmul fast float %9212, %100
  %9215 = fmul fast float %9213, 2.000000e+00
  %9216 = fmul fast float %9214, 2.000000e+00
  %9217 = fsub fast float 1.000000e+00, %9215
  %9218 = fsub fast float 1.000000e+00, %9216
  %9219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9220 = extractvalue %dx.types.CBufRet.f32 %9219, 0
  %9221 = extractvalue %dx.types.CBufRet.f32 %9219, 1
  %9222 = extractvalue %dx.types.CBufRet.f32 %9219, 2
  %9223 = fmul fast float %9217, %9220
  %9224 = fmul fast float %9217, %9221
  %9225 = fmul fast float %9217, %9222
  %9226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9227 = extractvalue %dx.types.CBufRet.f32 %9226, 0
  %9228 = extractvalue %dx.types.CBufRet.f32 %9226, 1
  %9229 = extractvalue %dx.types.CBufRet.f32 %9226, 2
  %9230 = fmul fast float %9218, %9227
  %9231 = fmul fast float %9218, %9228
  %9232 = fmul fast float %9218, %9229
  %9233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9234 = extractvalue %dx.types.CBufRet.f32 %9233, 0
  %9235 = extractvalue %dx.types.CBufRet.f32 %9233, 1
  %9236 = extractvalue %dx.types.CBufRet.f32 %9233, 2
  %9237 = fadd fast float %9230, %9234
  %9238 = fadd fast float %9237, %9223
  %9239 = fadd fast float %9231, %9235
  %9240 = fadd fast float %9239, %9224
  %9241 = fadd fast float %9232, %9236
  %9242 = fadd fast float %9241, %9225
  %9243 = fmul fast float %9238, %8417
  %9244 = fmul fast float %9240, %8417
  %9245 = fmul fast float %9242, %8417
  %9246 = fmul fast float %9243, %9243
  %9247 = fmul fast float %9244, %9244
  %9248 = fadd fast float %9246, %9247
  %9249 = fmul fast float %9245, %9245
  %9250 = fadd fast float %9248, %9249
  %9251 = call float @dx.op.unary.f32(i32 24, float %9250)  ; Sqrt(value)
  %9252 = extractvalue %dx.types.CBufRet.f32 %8147, 0
  %9253 = fsub fast float %9251, %9252
  %9254 = extractvalue %dx.types.CBufRet.f32 %8147, 2
  %9255 = fmul fast float %9253, %9254
  %9256 = call float @dx.op.unary.f32(i32 7, float %9255)  ; Saturate(value)
  %9257 = fadd fast float %9256, -5.000000e-01
  %9258 = fmul fast float %9257, 2.000000e+00
  %9259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9260 = extractvalue %dx.types.CBufRet.f32 %9259, 2
  %9261 = call float @dx.op.binary.f32(i32 36, float %9260, float %9258)  ; FMin(a,b)
  %9262 = fsub fast float -0.000000e+00, %9260
  %9263 = fcmp fast ogt float %9261, %9262
  br i1 %9263, label %9264, label %9573, !dx.controlflow.hints !167

; <label>:9264                                    ; preds = %9209
  %9265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9266 = extractvalue %dx.types.CBufRet.f32 %9265, 3
  %9267 = fcmp fast ogt float %9266, 0.000000e+00
  br i1 %9267, label %9268, label %9343, !dx.controlflow.hints !168

; <label>:9268                                    ; preds = %9264
  %9269 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9270 = extractvalue %dx.types.Dimensions %9269, 0
  %9271 = sitofp i32 %9270 to float
  %9272 = extractvalue %dx.types.Dimensions %9269, 1
  %9273 = sitofp i32 %9272 to float
  %9274 = fmul fast float %9213, %9271
  %9275 = fmul fast float %9214, %9273
  %9276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9277 = extractvalue %dx.types.CBufRet.f32 %9276, 1
  %9278 = fsub fast float -0.000000e+00, %9277
  %9279 = fptoui float %9278 to i32
  %9280 = fptoui float %9274 to i32
  %9281 = fptoui float %9275 to i32
  %9282 = and i32 %9279, 31
  %9283 = lshr i32 %9280, %9282
  %9284 = lshr i32 %9281, %9282
  %9285 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9279, i32 %9283, i32 %9284, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9286 = extractvalue %dx.types.ResRet.f32 %9285, 0
  %9287 = fcmp fast olt float %9286, -1.000000e+00
  %9288 = fcmp fast ogt float %9286, -1.000000e+00
  %9289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9290 = extractvalue %dx.types.CBufRet.f32 %9289, 1
  %9291 = select i1 %9288, float %9290, float 1.000000e+00
  %9292 = fadd fast float %9286, 1.000000e+00
  %9293 = fmul fast float %9291, %9292
  %9294 = call float @dx.op.unary.f32(i32 6, float %9293)  ; FAbs(value)
  %9295 = extractvalue %dx.types.CBufRet.f32 %9289, 3
  %9296 = fcmp fast oge float %9294, %9295
  %9297 = select i1 %9296, float 0x4197782600000000, float %9294
  %9298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9299 = extractvalue %dx.types.CBufRet.f32 %9298, 0
  %9300 = extractvalue %dx.types.CBufRet.f32 %9298, 1
  %9301 = extractvalue %dx.types.CBufRet.f32 %9298, 2
  %9302 = select i1 %9287, float %9299, float %9220
  %9303 = select i1 %9287, float %9300, float %9221
  %9304 = select i1 %9287, float %9301, float %9222
  %9305 = fmul fast float %9302, %9217
  %9306 = fmul fast float %9303, %9217
  %9307 = fmul fast float %9304, %9217
  %9308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9309 = extractvalue %dx.types.CBufRet.f32 %9308, 0
  %9310 = extractvalue %dx.types.CBufRet.f32 %9308, 1
  %9311 = extractvalue %dx.types.CBufRet.f32 %9308, 2
  %9312 = select i1 %9287, float %9309, float %9227
  %9313 = select i1 %9287, float %9310, float %9228
  %9314 = select i1 %9287, float %9311, float %9229
  %9315 = fmul fast float %9312, %9218
  %9316 = fmul fast float %9313, %9218
  %9317 = fmul fast float %9314, %9218
  %9318 = fadd fast float %9315, %9305
  %9319 = fadd fast float %9316, %9306
  %9320 = fadd fast float %9317, %9307
  %9321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9322 = extractvalue %dx.types.CBufRet.f32 %9321, 0
  %9323 = extractvalue %dx.types.CBufRet.f32 %9321, 1
  %9324 = extractvalue %dx.types.CBufRet.f32 %9321, 2
  %9325 = select i1 %9287, float %9322, float %9234
  %9326 = select i1 %9287, float %9323, float %9235
  %9327 = select i1 %9287, float %9324, float %9236
  %9328 = fadd fast float %9318, %9325
  %9329 = fadd fast float %9319, %9326
  %9330 = fadd fast float %9320, %9327
  %9331 = fmul fast float %9328, %9297
  %9332 = fmul fast float %9329, %9297
  %9333 = fmul fast float %9330, %9297
  %9334 = fmul fast float %9331, %9331
  %9335 = fmul fast float %9332, %9332
  %9336 = fadd fast float %9334, %9335
  %9337 = fmul fast float %9333, %9333
  %9338 = fadd fast float %9336, %9337
  %9339 = call float @dx.op.unary.f32(i32 24, float %9338)  ; Sqrt(value)
  %9340 = fsub fast float %9339, %9252
  %9341 = fmul fast float %9340, %9254
  %9342 = call float @dx.op.unary.f32(i32 7, float %9341)  ; Saturate(value)
  br label %9343

; <label>:9343                                    ; preds = %9268, %9264
  %9344 = phi float [ %9342, %9268 ], [ 1.000000e+00, %9264 ]
  %9345 = fmul fast float %9261, 5.000000e-01
  %9346 = fadd fast float %9345, 5.000000e-01
  %9347 = call float @dx.op.unary.f32(i32 22, float %9346)  ; Frc(value)
  %9348 = call float @dx.op.unary.f32(i32 27, float %9347)  ; Round_ni(value)
  %9349 = call float @dx.op.unary.f32(i32 22, float %9347)  ; Frc(value)
  %9350 = fmul fast float %9349, 2.000000e+00
  %9351 = fadd fast float %9350, -1.000000e+00
  %9352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %9213, float %9214, float %9348, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9353 = extractvalue %dx.types.ResRet.f32 %9352, 0
  %9354 = extractvalue %dx.types.ResRet.f32 %9352, 1
  %9355 = extractvalue %dx.types.ResRet.f32 %9352, 2
  %9356 = extractvalue %dx.types.ResRet.f32 %9352, 3
  %9357 = fadd fast float %9353, -5.000000e-01
  %9358 = fadd fast float %9355, -5.000000e-01
  %9359 = fmul fast float %9357, 0xBFD5555560000000
  %9360 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9358, float %9359)  ; FMad(a,b,c)
  %9361 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9354, float 0.000000e+00)  ; FMad(a,b,c)
  %9362 = fadd fast float %9361, %9356
  %9363 = fmul fast float %9357, -7.500000e-01
  %9364 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9358, float %9363)  ; FMad(a,b,c)
  %9365 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9354, float 0.000000e+00)  ; FMad(a,b,c)
  %9366 = fadd fast float %9365, %9356
  %9367 = call float @dx.op.binary.f32(i32 35, float %9360, float -1.000000e+00)  ; FMax(a,b)
  %9368 = call float @dx.op.binary.f32(i32 35, float %9362, float -1.000000e+00)  ; FMax(a,b)
  %9369 = call float @dx.op.binary.f32(i32 35, float %9364, float -1.000000e+00)  ; FMax(a,b)
  %9370 = call float @dx.op.binary.f32(i32 35, float %9366, float -1.000000e+00)  ; FMax(a,b)
  %9371 = call float @dx.op.binary.f32(i32 36, float %9367, float 1.000000e+00)  ; FMin(a,b)
  %9372 = call float @dx.op.binary.f32(i32 36, float %9368, float 1.000000e+00)  ; FMin(a,b)
  %9373 = call float @dx.op.binary.f32(i32 36, float %9369, float 1.000000e+00)  ; FMin(a,b)
  %9374 = call float @dx.op.binary.f32(i32 36, float %9370, float 1.000000e+00)  ; FMin(a,b)
  %9375 = fcmp fast olt float %9371, 0x3FEFFF8020000000
  br i1 %9375, label %9376, label %9491, !dx.controlflow.hints !169

; <label>:9376                                    ; preds = %9343
  %9377 = extractvalue %dx.types.CBufRet.f32 %9259, 3
  %9378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9379 = extractvalue %dx.types.CBufRet.f32 %9378, 0
  %9380 = extractvalue %dx.types.CBufRet.f32 %9378, 1
  %9381 = extractvalue %dx.types.CBufRet.f32 %9378, 2
  %9382 = extractvalue %dx.types.CBufRet.f32 %9378, 3
  %9383 = fsub fast float %9379, %9371
  %9384 = fsub fast float %9380, %9372
  %9385 = fsub fast float %9381, %9373
  %9386 = fsub fast float %9382, %9374
  %9387 = fmul fast float %9383, %9377
  %9388 = fmul fast float %9384, %9377
  %9389 = fmul fast float %9385, %9377
  %9390 = fmul fast float %9386, %9377
  %9391 = fadd fast float %9387, %9371
  %9392 = fadd fast float %9388, %9372
  %9393 = fsub fast float -0.000000e+00, %9392
  %9394 = fadd fast float %9389, %9373
  %9395 = fadd fast float %9390, %9374
  %9396 = fmul fast float %9391, %9391
  %9397 = fsub fast float %9392, %9396
  %9398 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9397)  ; FMax(a,b)
  %9399 = fdiv fast float 1.000000e+00, %9398
  %9400 = fmul fast float %9392, %9391
  %9401 = fsub fast float %9394, %9400
  %9402 = fsub fast float %9351, %9391
  %9403 = fmul fast float %9351, %9351
  %9404 = fsub fast float %9403, %9392
  %9405 = fmul fast float %9402, %9399
  %9406 = fmul fast float %9405, %9401
  %9407 = fsub fast float %9404, %9406
  %9408 = fmul fast float %9392, %9392
  %9409 = fsub fast float %9395, %9408
  %9410 = fmul fast float %9401, %9401
  %9411 = fmul fast float %9410, %9399
  %9412 = fsub fast float %9409, %9411
  %9413 = fdiv fast float %9407, %9412
  %9414 = fmul fast float %9401, %9413
  %9415 = fsub fast float %9402, %9414
  %9416 = fmul fast float %9415, %9399
  %9417 = fmul fast float %9416, %9391
  %9418 = fsub fast float 1.000000e+00, %9417
  %9419 = fmul fast float %9392, %9413
  %9420 = fsub fast float %9418, %9419
  %9421 = fmul fast float %9416, %9416
  %9422 = fmul fast float %9413, 4.000000e+00
  %9423 = fmul fast float %9422, %9420
  %9424 = fsub fast float %9421, %9423
  %9425 = call float @dx.op.unary.f32(i32 24, float %9424)  ; Sqrt(value)
  %9426 = fcmp fast oge float %9416, 0.000000e+00
  %9427 = fsub fast float -0.000000e+00, %9425
  %9428 = select i1 %9426, float %9427, float %9425
  %9429 = fsub fast float %9428, %9416
  %9430 = fdiv fast float %9429, %9413
  %9431 = fdiv fast float %9420, %9429
  %9432 = fmul fast float %9430, 5.000000e-01
  %9433 = fmul fast float %9431, 2.000000e+00
  %9434 = select i1 %9426, float %9432, float %9433
  %9435 = select i1 %9426, float %9433, float %9432
  %9436 = call float @dx.op.binary.f32(i32 35, float %9434, float %9435)  ; FMax(a,b)
  %9437 = call float @dx.op.binary.f32(i32 36, float %9434, float %9435)  ; FMin(a,b)
  %9438 = fcmp fast ogt float %9351, %9437
  br i1 %9438, label %9439, label %9449

; <label>:9439                                    ; preds = %9376
  %9440 = fsub fast float %9351, %9437
  %9441 = fsub fast float %9436, %9437
  %9442 = fmul fast float %9440, %9441
  %9443 = fmul fast float %9436, %9351
  %9444 = fadd fast float %9436, %9351
  %9445 = fmul fast float %9444, %9391
  %9446 = fadd fast float %9443, %9392
  %9447 = fsub fast float %9446, %9445
  %9448 = fdiv fast float %9447, %9442
  br label %9449

; <label>:9449                                    ; preds = %9439, %9376
  %9450 = phi float [ %9448, %9439 ], [ 0.000000e+00, %9376 ]
  %9451 = fcmp fast ogt float %9351, %9436
  %9452 = fsub fast float %9351, %9436
  br i1 %9451, label %9453, label %9463

; <label>:9453                                    ; preds = %9449
  %9454 = fsub fast float %9436, %9437
  %9455 = fmul fast float %9454, %9452
  %9456 = fmul fast float %9437, %9351
  %9457 = fadd fast float %9437, %9351
  %9458 = fmul fast float %9457, %9391
  %9459 = fsub fast float %9393, %9456
  %9460 = fadd fast float %9459, %9458
  %9461 = fdiv fast float %9460, %9455
  %9462 = fadd fast float %9461, %9450
  br label %9463

; <label>:9463                                    ; preds = %9453, %9449
  %9464 = phi float [ %9462, %9453 ], [ %9450, %9449 ]
  %9465 = fsub fast float %9351, %9437
  %9466 = fmul fast float %9465, %9452
  %9467 = fmul fast float %9437, %9436
  %9468 = fadd fast float %9437, %9436
  %9469 = fmul fast float %9468, %9391
  %9470 = fadd fast float %9467, %9392
  %9471 = fsub fast float %9470, %9469
  %9472 = fdiv fast float %9471, %9466
  %9473 = call float @dx.op.unary.f32(i32 7, float %9464)  ; Saturate(value)
  %9474 = fcmp fast oeq float %8148, 0.000000e+00
  %9475 = extractvalue %dx.types.CBufRet.f32 %9259, 0
  %9476 = fcmp fast oeq float %9475, 0.000000e+00
  %9477 = or i1 %9474, %9476
  %9478 = fmul fast float %9475, 2.000000e+00
  %9479 = fadd fast float %9260, %9261
  %9480 = fdiv fast float %9479, %9478
  %9481 = call float @dx.op.unary.f32(i32 7, float %9480)  ; Saturate(value)
  %9482 = fmul fast float %9481, 2.000000e+00
  %9483 = fsub fast float 3.000000e+00, %9482
  %9484 = fmul fast float %9481, %9481
  %9485 = fmul fast float %9484, %9483
  %9486 = select i1 %9477, float 1.000000e+00, float %9485
  %9487 = fmul fast float %9472, %8148
  %9488 = fadd fast float %9473, %9487
  %9489 = call float @dx.op.unary.f32(i32 7, float %9488)  ; Saturate(value)
  %9490 = fmul fast float %9486, %9489
  br label %9491

; <label>:9491                                    ; preds = %9463, %9343
  %9492 = phi float [ %9490, %9463 ], [ 0.000000e+00, %9343 ]
  %9493 = fsub fast float 1.000000e+00, %9492
  %9494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %9213, float %9214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9495 = extractvalue %dx.types.ResRet.f32 %9494, 0
  %9496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9497 = extractvalue %dx.types.CBufRet.i32 %9496, 2
  %9498 = icmp eq i32 %9497, 0
  br i1 %9498, label %9504, label %9499

; <label>:9499                                    ; preds = %9491
  %9500 = call float @dx.op.unary.f32(i32 7, float %9492)  ; Saturate(value)
  %9501 = fadd fast float %9495, -1.000000e+00
  %9502 = fmul fast float %9500, %9501
  %9503 = fadd fast float %9502, 1.000000e+00
  br label %9504

; <label>:9504                                    ; preds = %9499, %9491
  %9505 = phi float [ %9503, %9499 ], [ %9493, %9491 ]
  br i1 %9267, label %9506, label %9524

; <label>:9506                                    ; preds = %9504
  %9507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9508 = extractvalue %dx.types.CBufRet.f32 %9507, 1
  %9509 = fsub fast float %9344, %9508
  %9510 = call float @dx.op.unary.f32(i32 7, float %9509)  ; Saturate(value)
  %9511 = fsub fast float %9344, %9266
  %9512 = call float @dx.op.unary.f32(i32 7, float %9511)  ; Saturate(value)
  %9513 = fsub fast float %9510, %9512
  %9514 = fsub fast float %9346, %9512
  %9515 = fdiv fast float %9514, %9513
  %9516 = call float @dx.op.unary.f32(i32 7, float %9515)  ; Saturate(value)
  %9517 = fmul fast float %9516, 2.000000e+00
  %9518 = fsub fast float 3.000000e+00, %9517
  %9519 = fsub fast float %9495, %9505
  %9520 = fmul fast float %9516, %9516
  %9521 = fmul fast float %9520, %9519
  %9522 = fmul fast float %9521, %9518
  %9523 = fadd fast float %9522, %9505
  br label %9524

; <label>:9524                                    ; preds = %9506, %9504
  %9525 = phi float [ %9523, %9506 ], [ %9505, %9504 ]
  %9526 = call float @dx.op.binary.f32(i32 35, float %9495, float %9525)  ; FMax(a,b)
  %9527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9528 = extractvalue %dx.types.CBufRet.i32 %9527, 2
  %9529 = and i32 %9528, 1
  %9530 = icmp eq i32 %9529, 0
  %9531 = fcmp fast une float %9526, 1.000000e+00
  %9532 = and i1 %9531, %9530
  br i1 %9532, label %9533, label %9552

; <label>:9533                                    ; preds = %9524
  %9534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %9213, float %9214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9535 = extractvalue %dx.types.ResRet.f32 %9534, 0
  %9536 = extractvalue %dx.types.ResRet.f32 %9534, 1
  %9537 = extractvalue %dx.types.ResRet.f32 %9534, 2
  %9538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9539 = extractvalue %dx.types.CBufRet.f32 %9538, 1
  %9540 = fmul fast float %9539, %9535
  %9541 = fmul fast float %9539, %9536
  %9542 = fmul fast float %9539, %9537
  %9543 = fcmp fast ogt float %9495, 0x3FEFFF2E40000000
  %9544 = fsub fast float 1.000000e+00, %9526
  %9545 = fsub fast float 1.000000e+00, %9495
  %9546 = fdiv fast float %9544, %9545
  %9547 = call float @dx.op.unary.f32(i32 7, float %9546)  ; Saturate(value)
  %9548 = select i1 %9543, float 0.000000e+00, float %9547
  %9549 = fmul fast float %9540, %9548
  %9550 = fmul fast float %9541, %9548
  %9551 = fmul fast float %9542, %9548
  br label %9552

; <label>:9552                                    ; preds = %9533, %9524
  %9553 = phi float [ 0.000000e+00, %9524 ], [ %9549, %9533 ]
  %9554 = phi float [ 0.000000e+00, %9524 ], [ %9550, %9533 ]
  %9555 = phi float [ 0.000000e+00, %9524 ], [ %9551, %9533 ]
  %9556 = fmul fast float %9526, %9188
  %9557 = call float @dx.op.dot3.f32(i32 55, float %9526, float %9526, float %9526, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9558 = call float @dx.op.dot3.f32(i32 55, float %9553, float %9554, float %9555, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9559 = select i1 %247, float %9557, float %9526
  %9560 = select i1 %247, float 1.000000e+00, float %9526
  %9561 = select i1 %247, float %9558, float %9553
  %9562 = select i1 %247, float 0.000000e+00, float %9554
  %9563 = select i1 %247, float 0.000000e+00, float %9555
  %9564 = fmul fast float %9559, %9200
  %9565 = fmul fast float %9559, %9201
  %9566 = fmul fast float %9560, %9202
  %9567 = fadd fast float %9564, %9561
  %9568 = fadd fast float %9565, %9562
  %9569 = fadd fast float %9563, %9566
  %9570 = fmul fast float %9559, %9203
  %9571 = fmul fast float %9559, %9204
  %9572 = fmul fast float %9560, %9205
  br label %9573

; <label>:9573                                    ; preds = %9552, %9209, %9181, %8413
  %9574 = phi float [ %8418, %8413 ], [ %9200, %9181 ], [ %9567, %9552 ], [ %9200, %9209 ]
  %9575 = phi float [ %8419, %8413 ], [ %9201, %9181 ], [ %9568, %9552 ], [ %9201, %9209 ]
  %9576 = phi float [ %8420, %8413 ], [ %9202, %9181 ], [ %9569, %9552 ], [ %9202, %9209 ]
  %9577 = phi float [ %8421, %8413 ], [ %9203, %9181 ], [ %9570, %9552 ], [ %9203, %9209 ]
  %9578 = phi float [ %8422, %8413 ], [ %9204, %9181 ], [ %9571, %9552 ], [ %9204, %9209 ]
  %9579 = phi float [ %8423, %8413 ], [ %9205, %9181 ], [ %9572, %9552 ], [ %9205, %9209 ]
  %9580 = phi float [ %8424, %8413 ], [ %9188, %9181 ], [ %9556, %9552 ], [ %9188, %9209 ]
  %9581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9582 = extractvalue %dx.types.CBufRet.f32 %9581, 2
  %9583 = extractvalue %dx.types.CBufRet.f32 %9581, 3
  %9584 = fmul fast float %9582, %99
  %9585 = fmul fast float %9583, %100
  %9586 = call float @dx.op.unary.f32(i32 7, float %9584)  ; Saturate(value)
  %9587 = call float @dx.op.unary.f32(i32 7, float %9585)  ; Saturate(value)
  %9588 = select i1 %8158, i32 2, i32 0
  %9589 = or i32 %9588, 1
  %9590 = uitofp i32 %9589 to float
  %9591 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %9586, float %9587, float %9590, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9592 = extractvalue %dx.types.ResRet.f32 %9591, 0
  %9593 = extractvalue %dx.types.ResRet.f32 %9591, 1
  %9594 = extractvalue %dx.types.ResRet.f32 %9591, 2
  %9595 = extractvalue %dx.types.ResRet.f32 %9591, 3
  %9596 = add nuw nsw i32 %9588, 2
  %9597 = uitofp i32 %9596 to float
  %9598 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %9586, float %9587, float %9597, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9599 = extractvalue %dx.types.ResRet.f32 %9598, 0
  %9600 = extractvalue %dx.types.ResRet.f32 %9598, 1
  %9601 = extractvalue %dx.types.ResRet.f32 %9598, 2
  %9602 = extractvalue %dx.types.ResRet.f32 %9598, 3
  %9603 = call float @dx.op.binary.f32(i32 35, float %9593, float %9594)  ; FMax(a,b)
  %9604 = call float @dx.op.binary.f32(i32 35, float %9592, float %9603)  ; FMax(a,b)
  %9605 = call float @dx.op.binary.f32(i32 35, float %9604, float %9595)  ; FMax(a,b)
  %9606 = call float @dx.op.binary.f32(i32 36, float %9600, float %9601)  ; FMin(a,b)
  %9607 = call float @dx.op.binary.f32(i32 36, float %9599, float %9606)  ; FMin(a,b)
  %9608 = call float @dx.op.binary.f32(i32 36, float %9607, float %9602)  ; FMin(a,b)
  %9609 = fmul fast float %9605, 2.550000e+02
  %9610 = fadd fast float %9609, 0x3F70101020000000
  %9611 = fptoui float %9610 to i32
  %9612 = fmul fast float %9608, 2.550000e+02
  %9613 = fadd fast float %9612, 0x3F70101020000000
  %9614 = fptoui float %9613 to i32
  %9615 = icmp ult i32 %9611, %9614
  br i1 %9615, label %9616, label %9785

; <label>:9616                                    ; preds = %9573
  %9617 = fcmp fast ogt float %86, 9.843750e-01
  %9618 = fadd fast float %8417, -4.000000e+00
  %9619 = select i1 %9617, float -4.000000e+00, float %9618
  %9620 = call float @dx.op.binary.f32(i32 35, float %9619, float 0.000000e+00)  ; FMax(a,b)
  %9621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9622 = extractvalue %dx.types.CBufRet.f32 %9621, 0
  %9623 = fadd fast float %9622, %9620
  %9624 = extractvalue %dx.types.CBufRet.f32 %9621, 2
  %9625 = fmul fast float %9623, %9624
  %9626 = call float @dx.op.unary.f32(i32 23, float %9625)  ; Log(value)
  %9627 = extractvalue %dx.types.CBufRet.f32 %9621, 3
  %9628 = fmul fast float %9627, %9626
  %9629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9630 = extractvalue %dx.types.CBufRet.f32 %9629, 2
  %9631 = fmul fast float %9628, %9630
  %9632 = call float @dx.op.unary.f32(i32 7, float %9631)  ; Saturate(value)
  %9633 = uitofp i32 %9611 to float
  %9634 = uitofp i32 %9614 to float
  %9635 = fadd fast float %9633, 5.000000e-01
  %9636 = fadd fast float %9634, 5.000000e-01
  %9637 = fmul fast float %9630, %9635
  %9638 = fmul fast float %9630, %9636
  %9639 = fadd fast float %9637, 0x3F0FFB4800000000
  %9640 = fadd fast float %9638, 0xBF0FFB4800000000
  %9641 = call float @dx.op.binary.f32(i32 35, float %9632, float %9639)  ; FMax(a,b)
  %9642 = call float @dx.op.binary.f32(i32 36, float %9641, float %9640)  ; FMin(a,b)
  %9643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9644 = extractvalue %dx.types.CBufRet.f32 %9643, 1
  %9645 = extractvalue %dx.types.CBufRet.f32 %9643, 2
  %9646 = extractvalue %dx.types.CBufRet.f32 %9643, 0
  %9647 = select i1 %8158, float %9646, float 0.000000e+00
  %9648 = fmul fast float %9644, %9642
  %9649 = fadd fast float %9647, %9648
  %9650 = fadd fast float %9647, %9645
  %9651 = fsub fast float %9644, %9645
  %9652 = fadd fast float %9651, %9647
  %9653 = call float @dx.op.binary.f32(i32 35, float %9649, float %9650)  ; FMax(a,b)
  %9654 = call float @dx.op.binary.f32(i32 36, float %9653, float %9652)  ; FMin(a,b)
  %9655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %9586, float %9587, float %9654, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9656 = extractvalue %dx.types.ResRet.f32 %9655, 0
  %9657 = extractvalue %dx.types.ResRet.f32 %9655, 1
  %9658 = extractvalue %dx.types.ResRet.f32 %9655, 2
  %9659 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9660 = extractvalue %dx.types.CBufRet.i32 %9659, 0
  %9661 = extractvalue %dx.types.CBufRet.i32 %9659, 1
  %9662 = uitofp i32 %9660 to float
  %9663 = uitofp i32 %9661 to float
  %9664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9665 = extractvalue %dx.types.CBufRet.f32 %9664, 0
  %9666 = extractvalue %dx.types.CBufRet.f32 %9664, 1
  %9667 = fmul fast float %9662, %9586
  %9668 = fmul fast float %9663, %9587
  %9669 = fadd fast float %9667, -5.000000e-01
  %9670 = fadd fast float %9668, -5.000000e-01
  %9671 = call float @dx.op.unary.f32(i32 22, float %9669)  ; Frc(value)
  %9672 = call float @dx.op.unary.f32(i32 22, float %9670)  ; Frc(value)
  %9673 = fmul fast float %9671, %9671
  %9674 = fmul fast float %9673, %9671
  %9675 = fsub fast float 3.000000e+00, %9671
  %9676 = fmul fast float %9673, %9675
  %9677 = fmul fast float %9671, 3.000000e+00
  %9678 = fmul fast float %9674, 3.000000e+00
  %9679 = fmul fast float %9673, 6.000000e+00
  %9680 = fsub fast float %9678, %9679
  %9681 = fadd fast float %9680, 4.000000e+00
  %9682 = fmul fast float %9681, 0x3FC5555560000000
  %9683 = fmul fast float %9674, -3.000000e+00
  %9684 = fadd fast float %9673, %9671
  %9685 = fmul fast float %9684, 3.000000e+00
  %9686 = fadd fast float %9683, 1.000000e+00
  %9687 = fadd fast float %9686, %9685
  %9688 = fmul fast float %9674, 0x3FC5555560000000
  %9689 = fmul fast float %9672, %9672
  %9690 = fmul fast float %9689, %9672
  %9691 = fsub fast float 3.000000e+00, %9672
  %9692 = fmul fast float %9689, %9691
  %9693 = fmul fast float %9672, 3.000000e+00
  %9694 = fmul fast float %9690, 3.000000e+00
  %9695 = fmul fast float %9689, 6.000000e+00
  %9696 = fsub fast float %9694, %9695
  %9697 = fadd fast float %9696, 4.000000e+00
  %9698 = fmul fast float %9697, 0x3FC5555560000000
  %9699 = fmul fast float %9690, -3.000000e+00
  %9700 = fadd fast float %9689, %9672
  %9701 = fmul fast float %9700, 3.000000e+00
  %9702 = fadd fast float %9699, 1.000000e+00
  %9703 = fadd fast float %9702, %9701
  %9704 = fmul fast float %9690, 0x3FC5555560000000
  %9705 = fadd fast float %9671, 1.000000e+00
  %9706 = fsub fast float 1.000000e+00, %9677
  %9707 = fadd fast float %9706, %9676
  %9708 = fadd fast float %9707, %9681
  %9709 = fmul fast float %9708, 0x3FC5555560000000
  %9710 = fdiv fast float %9682, %9709
  %9711 = fsub fast float %9705, %9710
  %9712 = fsub fast float 1.000000e+00, %9671
  %9713 = fadd fast float %9687, %9674
  %9714 = fmul fast float %9713, 0x3FC5555560000000
  %9715 = fdiv fast float %9688, %9714
  %9716 = fadd fast float %9712, %9715
  %9717 = fadd fast float %9672, 1.000000e+00
  %9718 = fsub fast float 1.000000e+00, %9693
  %9719 = fadd fast float %9718, %9692
  %9720 = fadd fast float %9719, %9697
  %9721 = fmul fast float %9720, 0x3FC5555560000000
  %9722 = fdiv fast float %9698, %9721
  %9723 = fsub fast float %9717, %9722
  %9724 = fsub fast float 1.000000e+00, %9672
  %9725 = fadd fast float %9703, %9690
  %9726 = fmul fast float %9725, 0x3FC5555560000000
  %9727 = fdiv fast float %9704, %9726
  %9728 = fadd fast float %9727, %9724
  %9729 = fmul fast float %9711, %9665
  %9730 = fsub fast float %9586, %9729
  %9731 = fmul fast float %9716, %9665
  %9732 = fadd fast float %9731, %9586
  %9733 = fmul fast float %9728, %9666
  %9734 = fadd fast float %9733, %9587
  %9735 = fmul fast float %9723, %9666
  %9736 = fsub fast float %9587, %9735
  %9737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9730, float %9736, float %9654, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9738 = extractvalue %dx.types.ResRet.f32 %9737, 0
  %9739 = extractvalue %dx.types.ResRet.f32 %9737, 1
  %9740 = extractvalue %dx.types.ResRet.f32 %9737, 2
  %9741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9732, float %9736, float %9654, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9742 = extractvalue %dx.types.ResRet.f32 %9741, 0
  %9743 = extractvalue %dx.types.ResRet.f32 %9741, 1
  %9744 = extractvalue %dx.types.ResRet.f32 %9741, 2
  %9745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9730, float %9734, float %9654, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9746 = extractvalue %dx.types.ResRet.f32 %9745, 0
  %9747 = extractvalue %dx.types.ResRet.f32 %9745, 1
  %9748 = extractvalue %dx.types.ResRet.f32 %9745, 2
  %9749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9732, float %9734, float %9654, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9750 = extractvalue %dx.types.ResRet.f32 %9749, 0
  %9751 = extractvalue %dx.types.ResRet.f32 %9749, 1
  %9752 = extractvalue %dx.types.ResRet.f32 %9749, 2
  %9753 = fsub fast float %9746, %9738
  %9754 = fsub fast float %9747, %9739
  %9755 = fsub fast float %9748, %9740
  %9756 = fmul fast float %9753, %9726
  %9757 = fmul fast float %9754, %9726
  %9758 = fmul fast float %9755, %9726
  %9759 = fadd fast float %9756, %9738
  %9760 = fadd fast float %9757, %9739
  %9761 = fadd fast float %9758, %9740
  %9762 = fsub fast float %9750, %9742
  %9763 = fsub fast float %9751, %9743
  %9764 = fsub fast float %9752, %9744
  %9765 = fmul fast float %9762, %9726
  %9766 = fmul fast float %9763, %9726
  %9767 = fmul fast float %9764, %9726
  %9768 = fsub fast float %9742, %9759
  %9769 = fadd fast float %9768, %9765
  %9770 = fsub fast float %9743, %9760
  %9771 = fadd fast float %9770, %9766
  %9772 = fsub fast float %9744, %9761
  %9773 = fadd fast float %9772, %9767
  %9774 = fmul fast float %9769, %9714
  %9775 = fmul fast float %9771, %9714
  %9776 = fmul fast float %9773, %9714
  %9777 = fadd fast float %9774, %9759
  %9778 = fadd fast float %9775, %9760
  %9779 = fadd fast float %9776, %9761
  %9780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9781 = extractvalue %dx.types.CBufRet.f32 %9780, 1
  %9782 = fmul fast float %9777, %9781
  %9783 = fmul fast float %9778, %9781
  %9784 = fmul fast float %9779, %9781
  br label %9785

; <label>:9785                                    ; preds = %9616, %9573
  %9786 = phi float [ %9656, %9616 ], [ 1.000000e+00, %9573 ]
  %9787 = phi float [ %9657, %9616 ], [ 1.000000e+00, %9573 ]
  %9788 = phi float [ %9658, %9616 ], [ 1.000000e+00, %9573 ]
  %9789 = phi float [ %9782, %9616 ], [ 0.000000e+00, %9573 ]
  %9790 = phi float [ %9783, %9616 ], [ 0.000000e+00, %9573 ]
  %9791 = phi float [ %9784, %9616 ], [ 0.000000e+00, %9573 ]
  %9792 = fmul fast float %9786, %9580
  %9793 = call float @dx.op.dot3.f32(i32 55, float %9786, float %9787, float %9788, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9794 = call float @dx.op.dot3.f32(i32 55, float %9789, float %9790, float %9791, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9795 = select i1 %247, float %9793, float %9786
  %9796 = select i1 %247, float %9793, float %9787
  %9797 = select i1 %247, float 1.000000e+00, float %9788
  %9798 = select i1 %247, float %9794, float %9789
  %9799 = select i1 %247, float 0.000000e+00, float %9790
  %9800 = select i1 %247, float 0.000000e+00, float %9791
  %9801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9802 = extractvalue %dx.types.CBufRet.i32 %9801, 3
  %9803 = and i32 %9802, 3
  %9804 = icmp ne i32 %9803, 0
  %9805 = and i32 %9802, 4
  %9806 = icmp ne i32 %9805, 0
  %9807 = and i1 %9804, %9806
  %9808 = and i1 %247, %9807
  br i1 %9808, label %9809, label %9815

; <label>:9809                                    ; preds = %9785
  %9810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9811 = extractvalue %dx.types.CBufRet.f32 %9810, 1
  %9812 = fadd fast float %9792, -1.000000e+00
  %9813 = fmul fast float %9811, %9812
  %9814 = fadd fast float %9813, 1.000000e+00
  br label %9815

; <label>:9815                                    ; preds = %9809, %9785
  %9816 = phi float [ %9814, %9809 ], [ %9792, %9785 ]
  %9817 = fadd fast float %9577, %9574
  %9818 = fmul fast float %9795, %9817
  %9819 = fadd fast float %9818, %9798
  %9820 = fadd fast float %9578, %9575
  %9821 = fmul fast float %9796, %9820
  %9822 = fadd fast float %9821, %9799
  %9823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9824 = extractvalue %dx.types.CBufRet.f32 %9823, 0
  br i1 %247, label %9825, label %9840

; <label>:9825                                    ; preds = %9815
  %9826 = fadd fast float %9819, %9822
  %9827 = fmul fast float %9824, %9826
  %9828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9829 = extractvalue %dx.types.CBufRet.f32 %9828, 3
  %9830 = extractvalue %dx.types.CBufRet.f32 %8140, 1
  %9831 = fsub fast float %8145, %8139
  %9832 = fadd fast float %9831, %8146
  %9833 = fsub fast float %9832, %9830
  %9834 = extractvalue %dx.types.CBufRet.f32 %8140, 2
  %9835 = fmul fast float %9833, %9834
  %9836 = call float @dx.op.unary.f32(i32 7, float %9835)  ; Saturate(value)
  %9837 = fsub fast float %9836, %9829
  %9838 = fmul fast float %9837, %9816
  %9839 = fadd fast float %9838, %9829
  br label %9864

; <label>:9840                                    ; preds = %9815
  %9841 = fadd fast float %9579, %9576
  %9842 = fmul fast float %9797, %9841
  %9843 = fadd fast float %9842, %9800
  %9844 = fmul fast float %9824, %9819
  %9845 = fmul fast float %9824, %9822
  %9846 = fmul fast float %9824, %9843
  %9847 = call float @dx.op.binary.f32(i32 35, float %9845, float %9846)  ; FMax(a,b)
  %9848 = call float @dx.op.binary.f32(i32 35, float %9844, float %9847)  ; FMax(a,b)
  %9849 = call float @dx.op.binary.f32(i32 35, float %9848, float 1.000000e+00)  ; FMax(a,b)
  %9850 = fcmp fast ugt float %9849, 0x3F10000000000000
  br i1 %9850, label %9852, label %9851

; <label>:9851                                    ; preds = %9840
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9852

; <label>:9852                                    ; preds = %9851, %9840
  %9853 = add i32 %50, 356
  %9854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %9853, i32 undef)  ; BufferLoad(srv,index,wot)
  %9855 = extractvalue %dx.types.ResRet.i32 %9854, 0
  %9856 = and i32 %9855, 32
  %9857 = icmp eq i32 %9856, 0
  br i1 %9857, label %9864, label %9858

; <label>:9858                                    ; preds = %9852
  %9859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9860 = extractvalue %dx.types.CBufRet.f32 %9859, 0
  %9861 = fmul fast float %9860, 0x3FE99999A0000000
  %9862 = fadd fast float %9860, %9844
  %9863 = fadd fast float %9861, %9846
  br label %9864

; <label>:9864                                    ; preds = %9858, %9852, %9825
  %9865 = phi float [ %9827, %9825 ], [ %9862, %9858 ], [ %9844, %9852 ]
  %9866 = phi float [ %9839, %9825 ], [ %9845, %9858 ], [ %9845, %9852 ]
  %9867 = phi float [ 1.000000e+00, %9825 ], [ %9863, %9858 ], [ %9846, %9852 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9868 = call float @dx.op.binary.f32(i32 36, float %9865, float 3.225500e+04)  ; FMin(a,b)
  %9869 = call float @dx.op.binary.f32(i32 36, float %9866, float 3.225500e+04)  ; FMin(a,b)
  %9870 = call float @dx.op.binary.f32(i32 36, float %9867, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9868)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9869)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9870)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

