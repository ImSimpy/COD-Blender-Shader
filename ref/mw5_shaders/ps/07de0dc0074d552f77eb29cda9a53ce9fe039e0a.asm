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
; shader hash: e98158626af27ac89988132c1413572b
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
  %407 = add i32 %48, 472
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
  br i1 %463, label %1166, label %464

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
  %1102 = and i32 %1101, 10240
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1148, label %1104

; <label>:1104                                    ; preds = %1096
  %1105 = add i32 %48, 456
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %1107, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1109, %dx.types.Handle %94, float %563, float %564, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 1
  %1112 = extractvalue %dx.types.ResRet.f32 %1110, 3
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 1048576
  %1116 = icmp ne i32 %1115, 0
  %1117 = and i32 %1114, 8192
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1134, label %1119

; <label>:1119                                    ; preds = %1104
  %1120 = extractvalue %dx.types.ResRet.f32 %1110, 2
  %1121 = select i1 %1116, float %1120, float %1111
  %1122 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1123 = select i1 %1116, float %1122, float %1111
  %1124 = add i32 %48, 96
  %1125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1124, i32 undef)  ; BufferLoad(srv,index,wot)
  %1126 = extractvalue %dx.types.ResRet.i32 %1125, 0
  %1127 = lshr i32 %1126, 16
  %1128 = and i32 %1127, 255
  %1129 = uitofp i32 %1128 to float
  %1130 = fmul fast float %1129, 0x3F80101020000000
  %1131 = fmul fast float %1130, %1123
  %1132 = fmul fast float %1130, %1111
  %1133 = fmul fast float %1130, %1121
  br label %1134

; <label>:1134                                    ; preds = %1119, %1104
  %1135 = phi float [ %1131, %1119 ], [ 0.000000e+00, %1104 ]
  %1136 = phi float [ %1132, %1119 ], [ 0.000000e+00, %1104 ]
  %1137 = phi float [ %1133, %1119 ], [ 0.000000e+00, %1104 ]
  %1138 = and i32 %1114, 2048
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1148, label %1140

; <label>:1140                                    ; preds = %1134
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = shl i32 %1142, 4
  %1144 = and i32 %1143, 32752
  %1145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1144)  ; LegacyF16ToF32(value)
  %1146 = fmul fast float %1145, %1112
  %1147 = call float @dx.op.binary.f32(i32 35, float %1146, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1148

; <label>:1148                                    ; preds = %1140, %1134, %1096
  %1149 = phi float [ %1135, %1140 ], [ %1135, %1134 ], [ 0.000000e+00, %1096 ]
  %1150 = phi float [ %1136, %1140 ], [ %1136, %1134 ], [ 0.000000e+00, %1096 ]
  %1151 = phi float [ %1137, %1140 ], [ %1137, %1134 ], [ 0.000000e+00, %1096 ]
  %1152 = phi float [ %1147, %1140 ], [ 0x3F70101020000000, %1134 ], [ 0x3F70101020000000, %1096 ]
  %1153 = add i32 %48, 96
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = and i32 %1155, 255
  %1157 = uitofp i32 %1156 to float
  %1158 = lshr i32 %1155, 8
  %1159 = and i32 %1158, 255
  %1160 = uitofp i32 %1159 to float
  %1161 = call float @dx.op.dot3.f32(i32 55, float %969, float %970, float %971, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1162 = fmul fast float %1160, %1161
  %1163 = fadd fast float %1162, %1157
  %1164 = fmul fast float %1163, 0x3F70101020000000
  %1165 = call float @dx.op.unary.f32(i32 7, float %1164)  ; Saturate(value)
  br label %1166

; <label>:1166                                    ; preds = %1148, %449
  %1167 = phi float [ 0.000000e+00, %449 ], [ %1050, %1148 ]
  %1168 = phi float [ 0.000000e+00, %449 ], [ %1051, %1148 ]
  %1169 = phi float [ 0.000000e+00, %449 ], [ %969, %1148 ]
  %1170 = phi float [ 0.000000e+00, %449 ], [ %970, %1148 ]
  %1171 = phi float [ 0.000000e+00, %449 ], [ %971, %1148 ]
  %1172 = phi float [ 0.000000e+00, %449 ], [ %1149, %1148 ]
  %1173 = phi float [ 0.000000e+00, %449 ], [ %1150, %1148 ]
  %1174 = phi float [ 0.000000e+00, %449 ], [ %1151, %1148 ]
  %1175 = phi float [ 0.000000e+00, %449 ], [ %1097, %1148 ]
  %1176 = phi float [ 0.000000e+00, %449 ], [ %1098, %1148 ]
  %1177 = phi float [ 0.000000e+00, %449 ], [ %1099, %1148 ]
  %1178 = phi float [ 0.000000e+00, %449 ], [ %955, %1148 ]
  %1179 = phi float [ 0.000000e+00, %449 ], [ %751, %1148 ]
  %1180 = phi float [ 0.000000e+00, %449 ], [ %1049, %1148 ]
  %1181 = phi float [ 0.000000e+00, %449 ], [ %1052, %1148 ]
  %1182 = phi float [ 0.000000e+00, %449 ], [ %1152, %1148 ]
  %1183 = phi float [ 0.000000e+00, %449 ], [ %1165, %1148 ]
  br i1 %397, label %2112, label %1184

; <label>:1184                                    ; preds = %1166
  %1185 = icmp ult i32 %455, 2
  %1186 = add i32 %48, 40
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = add i32 %48, 44
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = or i32 %1191, %1188
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %2112, label %1194

; <label>:1194                                    ; preds = %1184
  %1195 = and i32 %1188, 262144
  %1196 = icmp ne i32 %1195, 0
  %1197 = select i1 %1196, float %51, float 1.000000e+00
  %1198 = select i1 %1196, float %52, float 0.000000e+00
  %1199 = select i1 %1196, float %53, float 0.000000e+00
  %1200 = select i1 %1196, float %54, float 1.000000e+00
  %1201 = select i1 %1196, float %55, float %76
  %1202 = select i1 %1196, float %56, float %77
  %1203 = add i32 %48, 300
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = lshr i32 %1205, 16
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = fmul fast float %1207, 0x3F50624DE0000000
  %1209 = add i32 %48, 104
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = lshr i32 %1211, 16
  %1213 = and i32 %1212, 255
  %1214 = lshr i32 %1211, 24
  %1215 = add i32 %48, 308
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = and i32 %1217, 65535
  %1219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1218)  ; LegacyF16ToF32(value)
  %1220 = lshr i32 %1217, 16
  %1221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1220)  ; LegacyF16ToF32(value)
  %1222 = add i32 %48, 48
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = lshr i32 %1224, 22
  %1226 = shl nuw nsw i32 %1225, 5
  %1227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1226)  ; LegacyF16ToF32(value)
  %1228 = shl i32 %1224, 4
  %1229 = and i32 %1228, 32752
  %1230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1229)  ; LegacyF16ToF32(value)
  %1231 = lshr i32 %1224, 7
  %1232 = and i32 %1231, 32752
  %1233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1232)  ; LegacyF16ToF32(value)
  %1234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.f32 %1234, 3
  %1236 = fmul fast float %1235, 1.000000e+03
  %1237 = fmul fast float %307, %1236
  %1238 = call float @dx.op.unary.f32(i32 22, float %1237)  ; Frc(value)
  %1239 = fadd fast float %1238, %297
  %1240 = fmul fast float %308, %1236
  %1241 = call float @dx.op.unary.f32(i32 22, float %1240)  ; Frc(value)
  %1242 = fadd fast float %1241, %299
  %1243 = fmul fast float %1208, %1236
  %1244 = call float @dx.op.unary.f32(i32 22, float %1243)  ; Frc(value)
  %1245 = fmul fast float %1244, 0x401921FB60000000
  %1246 = fadd fast float %1245, %1227
  %1247 = call float @dx.op.unary.f32(i32 13, float %1246)  ; Sin(value)
  %1248 = call float @dx.op.unary.f32(i32 12, float %1246)  ; Cos(value)
  %1249 = fsub fast float -0.000000e+00, %1247
  %1250 = fadd fast float %1201, -5.000000e-01
  %1251 = fadd fast float %1202, -5.000000e-01
  %1252 = fmul fast float %1219, %1250
  %1253 = fmul fast float %1221, %1251
  %1254 = fadd fast float %1252, 5.000000e-01
  %1255 = fadd fast float %1253, 5.000000e-01
  %1256 = fmul fast float %1230, %1254
  %1257 = fmul fast float %1233, %1255
  %1258 = fmul fast float %1248, %1256
  %1259 = call float @dx.op.tertiary.f32(i32 46, float %1249, float %1257, float %1258)  ; FMad(a,b,c)
  %1260 = fmul fast float %1247, %1256
  %1261 = call float @dx.op.tertiary.f32(i32 46, float %1248, float %1257, float %1260)  ; FMad(a,b,c)
  %1262 = fadd fast float %1239, %1259
  %1263 = fadd fast float %1242, %1261
  %1264 = icmp ugt i32 %1213, 1
  %1265 = icmp ugt i32 %1211, 33554431
  %1266 = or i1 %1265, %1264
  br i1 %1266, label %1267, label %1292

; <label>:1267                                    ; preds = %1194
  %1268 = add i32 %48, 244
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = lshr i32 %1270, 16
  %1272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1271)  ; LegacyF16ToF32(value)
  %1273 = fmul fast float %1235, %1272
  %1274 = call float @dx.op.unary.f32(i32 22, float %1273)  ; Frc(value)
  %1275 = mul nuw nsw i32 %1213, %1214
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1274, %1276
  %1278 = call float @dx.op.unary.f32(i32 27, float %1277)  ; Round_ni(value)
  %1279 = fptoui float %1278 to i32
  %1280 = urem i32 %1279, %1213
  %1281 = udiv i32 %1279, %1214
  %1282 = call float @dx.op.unary.f32(i32 22, float %1262)  ; Frc(value)
  %1283 = call float @dx.op.unary.f32(i32 22, float %1263)  ; Frc(value)
  %1284 = uitofp i32 %1280 to float
  %1285 = uitofp i32 %1281 to float
  %1286 = fadd fast float %1282, %1284
  %1287 = fadd fast float %1283, %1285
  %1288 = uitofp i32 %1213 to float
  %1289 = uitofp i32 %1214 to float
  %1290 = fdiv fast float %1286, %1288
  %1291 = fdiv fast float %1287, %1289
  br label %1292

; <label>:1292                                    ; preds = %1267, %1194
  %1293 = phi float [ %1290, %1267 ], [ %1262, %1194 ]
  %1294 = phi float [ %1291, %1267 ], [ %1263, %1194 ]
  %1295 = and i32 %1188, 16777216
  %1296 = icmp eq i32 %1295, 0
  br i1 %1296, label %1406, label %1297

; <label>:1297                                    ; preds = %1292
  %1298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1299 = extractvalue %dx.types.CBufRet.f32 %1298, 0
  %1300 = extractvalue %dx.types.CBufRet.f32 %1298, 1
  %1301 = extractvalue %dx.types.CBufRet.f32 %1298, 2
  %1302 = fadd fast float %1299, %152
  %1303 = fadd fast float %1300, %153
  %1304 = fadd fast float %1301, %154
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1307 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1308 = icmp eq i32 %49, 65535
  br i1 %1308, label %1403, label %1309

; <label>:1309                                    ; preds = %1297
  %1310 = lshr i32 %49, 1
  %1311 = shl i32 %1310, 2
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = and i32 %49, 1
  %1315 = icmp ne i32 %1314, 0
  %1316 = lshr i32 %1313, 16
  %1317 = and i32 %1313, 65535
  %1318 = select i1 %1315, i32 %1316, i32 %1317
  %1319 = icmp eq i32 %1318, 65535
  br i1 %1319, label %1399, label %1320

; <label>:1320                                    ; preds = %1309
  %1321 = mul nuw nsw i32 %1318, 40
  %1322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.f32 %1322, 0
  %1324 = extractvalue %dx.types.ResRet.f32 %1322, 1
  %1325 = extractvalue %dx.types.ResRet.f32 %1322, 2
  %1326 = add nuw nsw i32 %1321, 12
  %1327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.f32 %1327, 0
  %1329 = extractvalue %dx.types.ResRet.f32 %1327, 1
  %1330 = extractvalue %dx.types.ResRet.f32 %1327, 2
  %1331 = add nuw nsw i32 %1321, 24
  %1332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.f32 %1332, 0
  %1334 = extractvalue %dx.types.ResRet.f32 %1332, 1
  %1335 = extractvalue %dx.types.ResRet.f32 %1332, 2
  %1336 = add nuw nsw i32 %1321, 36
  %1337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.f32 %1337, 0
  %1339 = fsub fast float %1302, %1323
  %1340 = fsub fast float %1303, %1324
  %1341 = fsub fast float %1304, %1325
  %1342 = fmul fast float %1338, %1339
  %1343 = fmul fast float %1338, %1340
  %1344 = fmul fast float %1338, %1341
  %1345 = call float @dx.op.unary.f32(i32 27, float %1342)  ; Round_ni(value)
  %1346 = call float @dx.op.unary.f32(i32 27, float %1343)  ; Round_ni(value)
  %1347 = call float @dx.op.unary.f32(i32 27, float %1344)  ; Round_ni(value)
  %1348 = fadd fast float %1345, 5.000000e-01
  %1349 = fadd fast float %1346, 5.000000e-01
  %1350 = fadd fast float %1347, 5.000000e-01
  %1351 = fmul fast float %1348, %1328
  %1352 = fmul fast float %1349, %1329
  %1353 = fmul fast float %1350, %1330
  %1354 = shl i32 %49, 2
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = add i32 %1356, 0
  %1358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1359 = call float @dx.op.unary.f32(i32 22, float %1351)  ; Frc(value)
  %1360 = call float @dx.op.unary.f32(i32 22, float %1352)  ; Frc(value)
  %1361 = call float @dx.op.unary.f32(i32 22, float %1353)  ; Frc(value)
  %1362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1358, %dx.types.Handle %43, float %1359, float %1360, float %1361, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1363 = extractvalue %dx.types.ResRet.f32 %1362, 0
  %1364 = extractvalue %dx.types.ResRet.f32 %1362, 1
  %1365 = extractvalue %dx.types.ResRet.f32 %1362, 2
  %1366 = fmul fast float %1363, 1.023000e+03
  %1367 = fmul fast float %1364, 1.023000e+03
  %1368 = fmul fast float %1365, 1.023000e+03
  %1369 = fadd fast float %1366, 5.000000e-01
  %1370 = fadd fast float %1367, 5.000000e-01
  %1371 = fadd fast float %1368, 5.000000e-01
  %1372 = call float @dx.op.unary.f32(i32 27, float %1369)  ; Round_ni(value)
  %1373 = call float @dx.op.unary.f32(i32 27, float %1370)  ; Round_ni(value)
  %1374 = call float @dx.op.unary.f32(i32 27, float %1371)  ; Round_ni(value)
  %1375 = fsub fast float %1342, %1345
  %1376 = fsub fast float %1343, %1346
  %1377 = fsub fast float %1344, %1347
  %1378 = fmul fast float %1375, 7.500000e-01
  %1379 = fmul fast float %1376, 7.500000e-01
  %1380 = fmul fast float %1377, 7.500000e-01
  %1381 = fadd fast float %1345, 1.250000e-01
  %1382 = fadd fast float %1381, %1378
  %1383 = fadd fast float %1382, %1372
  %1384 = fadd fast float %1346, 1.250000e-01
  %1385 = fadd fast float %1384, %1379
  %1386 = fadd fast float %1385, %1373
  %1387 = fadd fast float %1347, 1.250000e-01
  %1388 = fadd fast float %1387, %1380
  %1389 = fadd fast float %1388, %1374
  %1390 = fmul fast float %1383, %1333
  %1391 = fmul fast float %1386, %1334
  %1392 = fmul fast float %1389, %1335
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = add i32 %1394, 0
  %1396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1395, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1396, %dx.types.Handle %41, float %1390, float %1391, float %1392, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1398 = extractvalue %dx.types.ResRet.f32 %1397, 0
  br label %1399

; <label>:1399                                    ; preds = %1320, %1309
  %1400 = phi float [ %1398, %1320 ], [ -1.000000e+00, %1309 ]
  %1401 = fadd fast float %1400, %1307
  %1402 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  br label %1403

; <label>:1403                                    ; preds = %1399, %1297
  %1404 = phi float [ %1402, %1399 ], [ %1307, %1297 ]
  %1405 = fmul fast float %1404, %452
  br label %1406

; <label>:1406                                    ; preds = %1403, %1292
  %1407 = phi float [ %1405, %1403 ], [ %452, %1292 ]
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = and i32 %1409, 256
  %1411 = icmp eq i32 %1410, 0
  br i1 %1411, label %1458, label %1412

; <label>:1412                                    ; preds = %1406
  %1413 = add i32 %48, 428
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = add i32 %1415, 0
  %1417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1417, %dx.types.Handle %94, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = add i32 %48, 116
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = shl i32 %1422, 4
  %1424 = and i32 %1423, 32752
  %1425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1424)  ; LegacyF16ToF32(value)
  %1426 = lshr i32 %1422, 7
  %1427 = and i32 %1426, 32752
  %1428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1427)  ; LegacyF16ToF32(value)
  %1429 = fsub fast float 1.000000e+00, %1407
  %1430 = call float @dx.op.binary.f32(i32 35, float %1429, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1431 = bitcast float %1407 to i32
  %1432 = sitofp i32 %1431 to float
  %1433 = fadd fast float %1432, 0xC1CFBF8940000000
  %1434 = fmul fast float %1428, %1433
  %1435 = fadd fast float %1434, 0x41CFBF8940000000
  %1436 = fptosi float %1435 to i32
  %1437 = bitcast i32 %1436 to float
  %1438 = bitcast float %1430 to i32
  %1439 = sitofp i32 %1438 to float
  %1440 = fadd fast float %1439, 0xC1CFBF8940000000
  %1441 = fmul fast float %1440, %1428
  %1442 = fadd fast float %1441, 0x41CFBF8940000000
  %1443 = fptosi float %1442 to i32
  %1444 = bitcast i32 %1443 to float
  %1445 = fmul fast float %1437, %1425
  %1446 = fmul fast float %1444, %1425
  %1447 = fsub fast float %1430, %1445
  %1448 = fadd fast float %1446, %1430
  %1449 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1450 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  %1451 = fsub fast float %1419, %1449
  %1452 = fsub fast float %1450, %1449
  %1453 = bitcast float %1452 to i32
  %1454 = sub nsw i32 2129859010, %1453
  %1455 = bitcast i32 %1454 to float
  %1456 = fmul fast float %1455, %1451
  %1457 = call float @dx.op.unary.f32(i32 7, float %1456)  ; Saturate(value)
  br label %1458

; <label>:1458                                    ; preds = %1412, %1406
  %1459 = phi float [ %1457, %1412 ], [ %1407, %1406 ]
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = and i32 %1461, 128
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %1480, label %1464

; <label>:1464                                    ; preds = %1458
  %1465 = add i32 %48, 412
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = add i32 %1467, 0
  %1469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1470 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1469, %dx.types.Handle %94, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1471 = extractvalue %dx.types.ResRet.f32 %1470, 0
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = and i32 %1473, 524288
  %1475 = icmp ne i32 %1474, 0
  %1476 = fcmp fast ogt float %1471, 0x3FE0101020000000
  %1477 = select i1 %1476, float 1.000000e+00, float 0.000000e+00
  %1478 = select i1 %1475, float %1477, float %1471
  %1479 = fmul fast float %1478, %1459
  br label %1480

; <label>:1480                                    ; preds = %1464, %1458
  %1481 = phi float [ %1479, %1464 ], [ %1459, %1458 ]
  %1482 = fcmp fast ult float %1481, 0x3F70101020000000
  br i1 %1482, label %2112, label %1483

; <label>:1483                                    ; preds = %1480
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 16
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %1686, label %1488

; <label>:1488                                    ; preds = %1483
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = add i32 %48, 364
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = add i32 %1493, 0
  %1495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1496 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1495, %dx.types.Handle %93, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1497 = extractvalue %dx.types.ResRet.f32 %1496, 0
  %1498 = extractvalue %dx.types.ResRet.f32 %1496, 1
  %1499 = extractvalue %dx.types.ResRet.f32 %1496, 2
  %1500 = extractvalue %dx.types.ResRet.f32 %1496, 3
  %1501 = and i32 %1490, 255
  %1502 = uitofp i32 %1501 to float
  %1503 = lshr i32 %1490, 8
  %1504 = and i32 %1503, 255
  %1505 = uitofp i32 %1504 to float
  %1506 = fmul fast float %1500, %1502
  %1507 = fadd fast float %1506, %1505
  %1508 = fmul fast float %1507, 0x3F70101000000000
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = and i32 %1510, 512
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1521, label %1513

; <label>:1513                                    ; preds = %1488
  %1514 = add i32 %48, 444
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = add i32 %1516, 0
  %1518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1518, %dx.types.Handle %94, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1520 = extractvalue %dx.types.ResRet.f32 %1519, 0
  br label %1521

; <label>:1521                                    ; preds = %1513, %1488
  %1522 = phi float [ %1520, %1513 ], [ 1.000000e+00, %1488 ]
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 33554432
  %1526 = icmp eq i32 %1525, 0
  br i1 %1526, label %1633, label %1527

; <label>:1527                                    ; preds = %1521
  %1528 = add i32 %48, 240
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1528, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = and i32 %1530, 65535
  %1532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1531)  ; LegacyF16ToF32(value)
  %1533 = lshr i32 %1530, 16
  %1534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1533)  ; LegacyF16ToF32(value)
  %1535 = add i32 %48, 244
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = and i32 %1537, 65535
  %1539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1538)  ; LegacyF16ToF32(value)
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = lshr i32 %1541, 24
  %1543 = uitofp i32 %1542 to float
  %1544 = fmul fast float %1543, 0x3F70101020000000
  %1545 = and i32 %1541, 255
  %1546 = uitofp i32 %1545 to float
  %1547 = fmul fast float %1546, 0x3F70101020000000
  %1548 = lshr i32 %1541, 8
  %1549 = and i32 %1548, 255
  %1550 = uitofp i32 %1549 to float
  %1551 = fmul fast float %1550, 0x3F70101020000000
  %1552 = lshr i32 %1541, 16
  %1553 = and i32 %1552, 255
  %1554 = uitofp i32 %1553 to float
  %1555 = fmul fast float %1554, 0x3F70101020000000
  %1556 = add i32 %48, 236
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = lshr i32 %1558, 24
  %1560 = uitofp i32 %1559 to float
  %1561 = fmul fast float %1560, 0x3F70101020000000
  %1562 = and i32 %1558, 255
  %1563 = uitofp i32 %1562 to float
  %1564 = fmul fast float %1563, 0x3F70101020000000
  %1565 = lshr i32 %1558, 8
  %1566 = and i32 %1565, 255
  %1567 = uitofp i32 %1566 to float
  %1568 = fmul fast float %1567, 0x3F70101020000000
  %1569 = lshr i32 %1558, 16
  %1570 = and i32 %1569, 255
  %1571 = uitofp i32 %1570 to float
  %1572 = fmul fast float %1571, 0x3F70101020000000
  %1573 = bitcast float %1497 to i32
  %1574 = ashr i32 %1573, 1
  %1575 = sub nsw i32 1597463174, %1574
  %1576 = bitcast i32 %1575 to float
  %1577 = fmul fast float %1497, 5.000000e-01
  %1578 = fmul fast float %1576, %1576
  %1579 = fmul fast float %1578, %1577
  %1580 = fsub fast float 1.500000e+00, %1579
  %1581 = fmul fast float %1576, %1497
  %1582 = fmul fast float %1581, %1580
  %1583 = bitcast float %1498 to i32
  %1584 = ashr i32 %1583, 1
  %1585 = sub nsw i32 1597463174, %1584
  %1586 = bitcast i32 %1585 to float
  %1587 = fmul fast float %1498, 5.000000e-01
  %1588 = fmul fast float %1586, %1586
  %1589 = fmul fast float %1588, %1587
  %1590 = fsub fast float 1.500000e+00, %1589
  %1591 = fmul fast float %1586, %1498
  %1592 = fmul fast float %1591, %1590
  %1593 = bitcast float %1499 to i32
  %1594 = ashr i32 %1593, 1
  %1595 = sub nsw i32 1597463174, %1594
  %1596 = bitcast i32 %1595 to float
  %1597 = fmul fast float %1499, 5.000000e-01
  %1598 = fmul fast float %1596, %1596
  %1599 = fmul fast float %1598, %1597
  %1600 = fsub fast float 1.500000e+00, %1599
  %1601 = fmul fast float %1596, %1499
  %1602 = fmul fast float %1601, %1600
  %1603 = fsub fast float %1582, %1564
  %1604 = fsub fast float %1592, %1568
  %1605 = fsub fast float %1602, %1572
  %1606 = fmul fast float %1603, %1532
  %1607 = fmul fast float %1604, %1534
  %1608 = fmul fast float %1605, %1539
  %1609 = fadd fast float %1606, %1547
  %1610 = fadd fast float %1607, %1551
  %1611 = fadd fast float %1608, %1555
  %1612 = call float @dx.op.unary.f32(i32 7, float %1609)  ; Saturate(value)
  %1613 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1614 = call float @dx.op.unary.f32(i32 7, float %1611)  ; Saturate(value)
  %1615 = fmul fast float %1612, %1612
  %1616 = fmul fast float %1613, %1613
  %1617 = fmul fast float %1614, %1614
  %1618 = fsub fast float %1615, %1497
  %1619 = fsub fast float %1616, %1498
  %1620 = fsub fast float %1617, %1499
  %1621 = fmul fast float %1618, %1522
  %1622 = fmul fast float %1619, %1522
  %1623 = fmul fast float %1620, %1522
  %1624 = fadd fast float %1621, %1497
  %1625 = fadd fast float %1622, %1498
  %1626 = fadd fast float %1623, %1499
  %1627 = fadd fast float %1544, %1508
  %1628 = fsub fast float %1627, %1561
  %1629 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  %1630 = fsub fast float %1629, %1508
  %1631 = fmul fast float %1630, %1522
  %1632 = fadd fast float %1631, %1508
  br label %1686

; <label>:1633                                    ; preds = %1521
  %1634 = and i32 %1524, 134217728
  %1635 = icmp eq i32 %1634, 0
  br i1 %1635, label %1670, label %1636

; <label>:1636                                    ; preds = %1633
  %1637 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %1638 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1639 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1640 = fadd fast float %1637, -5.000000e-01
  %1641 = fadd fast float %1638, -5.000000e-01
  %1642 = fadd fast float %1639, -5.000000e-01
  %1643 = fmul fast float %1640, %1522
  %1644 = fmul fast float %1641, %1522
  %1645 = fmul fast float %1642, %1522
  %1646 = fadd fast float %1643, 5.000000e-01
  %1647 = fadd fast float %1644, 5.000000e-01
  %1648 = fadd fast float %1645, 5.000000e-01
  %1649 = call float @dx.op.unary.f32(i32 24, float %1497)  ; Sqrt(value)
  %1650 = call float @dx.op.unary.f32(i32 24, float %1498)  ; Sqrt(value)
  %1651 = call float @dx.op.unary.f32(i32 24, float %1499)  ; Sqrt(value)
  %1652 = fmul fast float %1646, 2.000000e+00
  %1653 = fsub fast float 1.000000e+00, %1652
  %1654 = fmul fast float %1653, %1649
  %1655 = fadd fast float %1654, %1652
  %1656 = fmul fast float %1655, %1649
  %1657 = fmul fast float %1647, 2.000000e+00
  %1658 = fsub fast float 1.000000e+00, %1657
  %1659 = fmul fast float %1658, %1650
  %1660 = fadd fast float %1659, %1657
  %1661 = fmul fast float %1660, %1650
  %1662 = fmul fast float %1648, 2.000000e+00
  %1663 = fsub fast float 1.000000e+00, %1662
  %1664 = fmul fast float %1663, %1651
  %1665 = fadd fast float %1664, %1662
  %1666 = fmul fast float %1665, %1651
  %1667 = fmul fast float %1656, %1656
  %1668 = fmul fast float %1661, %1661
  %1669 = fmul fast float %1666, %1666
  br label %1686

; <label>:1670                                    ; preds = %1633
  %1671 = fmul fast float %284, %284
  %1672 = fmul fast float %288, %288
  %1673 = fmul fast float %292, %292
  %1674 = fadd fast float %1671, -1.000000e+00
  %1675 = fadd fast float %1672, -1.000000e+00
  %1676 = fadd fast float %1673, -1.000000e+00
  %1677 = fmul fast float %1522, %1674
  %1678 = fmul fast float %1522, %1675
  %1679 = fmul fast float %1522, %1676
  %1680 = fadd fast float %1677, 1.000000e+00
  %1681 = fadd fast float %1678, 1.000000e+00
  %1682 = fadd fast float %1679, 1.000000e+00
  %1683 = fmul fast float %1680, %1497
  %1684 = fmul fast float %1681, %1498
  %1685 = fmul fast float %1682, %1499
  br label %1686

; <label>:1686                                    ; preds = %1670, %1636, %1527, %1483
  %1687 = phi float [ %1632, %1527 ], [ %1508, %1636 ], [ %1508, %1670 ], [ 0x3FA23C0BE0000000, %1483 ]
  %1688 = phi float [ %1624, %1527 ], [ %1667, %1636 ], [ %1683, %1670 ], [ 1.000000e+00, %1483 ]
  %1689 = phi float [ %1625, %1527 ], [ %1668, %1636 ], [ %1684, %1670 ], [ 1.000000e+00, %1483 ]
  %1690 = phi float [ %1626, %1527 ], [ %1669, %1636 ], [ %1685, %1670 ], [ 1.000000e+00, %1483 ]
  %1691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.i32 %1691, 1
  %1693 = and i32 %1692, 1
  %1694 = icmp ne i32 %1693, 0
  %1695 = add i32 %48, 356
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = and i32 %1697, 32
  %1699 = icmp ne i32 %1698, 0
  %1700 = and i1 %1694, %1699
  %1701 = select i1 %1700, float 1.000000e+00, float %1688
  %1702 = select i1 %1700, float 0x3FD3333340000000, float %1689
  %1703 = select i1 %1700, float 0x3FD3333340000000, float %1690
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = and i32 %1705, 32
  %1707 = icmp eq i32 %1706, 0
  br i1 %1707, label %1780, label %1708

; <label>:1708                                    ; preds = %1686
  %1709 = add i32 %48, 108
  %1710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.i32 %1710, 0
  %1712 = add i32 %48, 380
  %1713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.i32 %1713, 0
  %1715 = add i32 %1714, 0
  %1716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1715, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1717 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1716, %dx.types.Handle %93, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1718 = extractvalue %dx.types.ResRet.f32 %1717, 0
  %1719 = extractvalue %dx.types.ResRet.f32 %1717, 1
  %1720 = extractvalue %dx.types.ResRet.f32 %1717, 2
  %1721 = extractvalue %dx.types.ResRet.f32 %1717, 3
  %1722 = and i32 %1711, 255
  %1723 = uitofp i32 %1722 to float
  %1724 = lshr i32 %1711, 8
  %1725 = and i32 %1724, 255
  %1726 = uitofp i32 %1725 to float
  %1727 = lshr i32 %1711, 16
  %1728 = and i32 %1727, 255
  %1729 = uitofp i32 %1728 to float
  %1730 = fmul fast float %1729, 0x3F70101000000000
  %1731 = fmul fast float %1718, %1723
  %1732 = fadd fast float %1731, %1726
  %1733 = fmul fast float %1732, 0x3F70101000000000
  %1734 = fadd fast float %1719, -5.000000e-01
  %1735 = fadd fast float %1721, -5.000000e-01
  %1736 = fmul fast float %1734, %1730
  %1737 = fmul fast float %1735, %1730
  %1738 = fadd fast float %1736, 5.000000e-01
  %1739 = fadd fast float %1737, 5.000000e-01
  %1740 = fmul fast float %1738, 2.000000e+00
  %1741 = fadd fast float %1740, -1.000000e+00
  %1742 = fmul fast float %1739, 2.000000e+00
  %1743 = fadd fast float %1742, -1.000000e+00
  %1744 = fadd fast float %1741, %1743
  %1745 = fmul fast float %1744, 5.000000e-01
  %1746 = fsub fast float %1741, %1743
  %1747 = fmul fast float %1746, 5.000000e-01
  %1748 = call float @dx.op.unary.f32(i32 6, float %1745)  ; FAbs(value)
  %1749 = fsub fast float 1.000000e+00, %1748
  %1750 = call float @dx.op.unary.f32(i32 6, float %1747)  ; FAbs(value)
  %1751 = fsub fast float %1749, %1750
  %1752 = call float @dx.op.dot3.f32(i32 55, float %1745, float %1747, float %1751, float %1745, float %1747, float %1751)  ; Dot3(ax,ay,az,bx,by,bz)
  %1753 = call float @dx.op.unary.f32(i32 25, float %1752)  ; Rsqrt(value)
  %1754 = fmul fast float %1745, %1753
  %1755 = fmul fast float %1747, %1753
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = and i32 %1757, 67108864
  %1759 = icmp eq i32 %1758, 0
  br i1 %1759, label %1776, label %1760

; <label>:1760                                    ; preds = %1708
  %1761 = add i32 %48, 296
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = and i32 %1763, 65535
  %1765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1764)  ; LegacyF16ToF32(value)
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = and i32 %1767, 65535
  %1769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1768)  ; LegacyF16ToF32(value)
  %1770 = lshr i32 %1763, 16
  %1771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1770)  ; LegacyF16ToF32(value)
  %1772 = fsub fast float %1733, %1771
  %1773 = fmul fast float %1772, %1765
  %1774 = fadd fast float %1773, %1769
  %1775 = call float @dx.op.unary.f32(i32 7, float %1774)  ; Saturate(value)
  br label %1776

; <label>:1776                                    ; preds = %1760, %1708
  %1777 = phi float [ %1775, %1760 ], [ %1733, %1708 ]
  %1778 = call float @dx.op.dot2.f32(i32 54, float %1754, float %1755, float %1197, float %1198)  ; Dot2(ax,ay,bx,by)
  %1779 = call float @dx.op.dot2.f32(i32 54, float %1754, float %1755, float %1199, float %1200)  ; Dot2(ax,ay,bx,by)
  br label %1780

; <label>:1780                                    ; preds = %1776, %1686
  %1781 = phi float [ %1777, %1776 ], [ 0x3FD6666660000000, %1686 ]
  %1782 = phi float [ %1778, %1776 ], [ 0.000000e+00, %1686 ]
  %1783 = phi float [ %1779, %1776 ], [ 0.000000e+00, %1686 ]
  %1784 = phi float [ %1720, %1776 ], [ 1.000000e+00, %1686 ]
  %1785 = add i32 %48, 176
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = lshr i32 %1787, 22
  %1789 = shl nuw nsw i32 %1788, 5
  %1790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1789)  ; LegacyF16ToF32(value)
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = and i32 %1792, 64
  %1794 = icmp eq i32 %1793, 0
  br i1 %1794, label %1828, label %1795

; <label>:1795                                    ; preds = %1780
  %1796 = add i32 %48, 396
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1796, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = add i32 %1798, 0
  %1800 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1799, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = and i32 %1802, 131072
  %1804 = icmp eq i32 %1803, 0
  %1805 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1800, %dx.types.Handle %93, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1806 = extractvalue %dx.types.ResRet.f32 %1805, 0
  %1807 = extractvalue %dx.types.ResRet.f32 %1805, 1
  %1808 = extractvalue %dx.types.ResRet.f32 %1805, 2
  %1809 = fmul fast float %1806, %272
  %1810 = fmul fast float %1807, %275
  %1811 = fmul fast float %1808, %278
  br i1 %1804, label %1818, label %1812

; <label>:1812                                    ; preds = %1795
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 0
  %1815 = fmul fast float %1814, %1809
  %1816 = fmul fast float %1814, %1810
  %1817 = fmul fast float %1814, %1811
  br label %1818

; <label>:1818                                    ; preds = %1812, %1795
  %1819 = phi float [ %1815, %1812 ], [ %1809, %1795 ]
  %1820 = phi float [ %1816, %1812 ], [ %1810, %1795 ]
  %1821 = phi float [ %1817, %1812 ], [ %1811, %1795 ]
  %1822 = fmul fast float %1819, %1790
  %1823 = select i1 %213, float %1822, float %1819
  %1824 = call float @dx.op.dot3.f32(i32 55, float %1823, float %1820, float %1821, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1825 = select i1 %213, float 0.000000e+00, float %1819
  %1826 = select i1 %213, float %1824, float %1820
  %1827 = select i1 %213, float 0.000000e+00, float %1821
  br label %1828

; <label>:1828                                    ; preds = %1818, %1780
  %1829 = phi float [ %1825, %1818 ], [ 0.000000e+00, %1780 ]
  %1830 = phi float [ %1826, %1818 ], [ 0.000000e+00, %1780 ]
  %1831 = phi float [ %1827, %1818 ], [ 0.000000e+00, %1780 ]
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = and i32 %1833, 10240
  %1835 = icmp eq i32 %1834, 0
  br i1 %1835, label %1880, label %1836

; <label>:1836                                    ; preds = %1828
  %1837 = add i32 %48, 460
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = add i32 %1839, 0
  %1841 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1840, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1842 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1841, %dx.types.Handle %94, float %1293, float %1294, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1843 = extractvalue %dx.types.ResRet.f32 %1842, 1
  %1844 = extractvalue %dx.types.ResRet.f32 %1842, 3
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = and i32 %1846, 1048576
  %1848 = icmp ne i32 %1847, 0
  %1849 = and i32 %1846, 8192
  %1850 = icmp eq i32 %1849, 0
  br i1 %1850, label %1866, label %1851

; <label>:1851                                    ; preds = %1836
  %1852 = extractvalue %dx.types.ResRet.f32 %1842, 2
  %1853 = select i1 %1848, float %1852, float %1843
  %1854 = extractvalue %dx.types.ResRet.f32 %1842, 0
  %1855 = select i1 %1848, float %1854, float %1843
  %1856 = add i32 %48, 112
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = lshr i32 %1858, 16
  %1860 = and i32 %1859, 255
  %1861 = uitofp i32 %1860 to float
  %1862 = fmul fast float %1861, 0x3F80101020000000
  %1863 = fmul fast float %1862, %1855
  %1864 = fmul fast float %1862, %1843
  %1865 = fmul fast float %1862, %1853
  br label %1866

; <label>:1866                                    ; preds = %1851, %1836
  %1867 = phi float [ %1863, %1851 ], [ 0.000000e+00, %1836 ]
  %1868 = phi float [ %1864, %1851 ], [ 0.000000e+00, %1836 ]
  %1869 = phi float [ %1865, %1851 ], [ 0.000000e+00, %1836 ]
  %1870 = and i32 %1846, 2048
  %1871 = icmp eq i32 %1870, 0
  br i1 %1871, label %1880, label %1872

; <label>:1872                                    ; preds = %1866
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = shl i32 %1874, 4
  %1876 = and i32 %1875, 32752
  %1877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1876)  ; LegacyF16ToF32(value)
  %1878 = fmul fast float %1877, %1844
  %1879 = call float @dx.op.binary.f32(i32 35, float %1878, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1880

; <label>:1880                                    ; preds = %1872, %1866, %1828
  %1881 = phi float [ %1867, %1872 ], [ %1867, %1866 ], [ 0.000000e+00, %1828 ]
  %1882 = phi float [ %1868, %1872 ], [ %1868, %1866 ], [ 0.000000e+00, %1828 ]
  %1883 = phi float [ %1869, %1872 ], [ %1869, %1866 ], [ 0.000000e+00, %1828 ]
  %1884 = phi float [ %1879, %1872 ], [ 0x3F70101020000000, %1866 ], [ 0x3F70101020000000, %1828 ]
  %1885 = add i32 %48, 112
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = and i32 %1887, 255
  %1889 = uitofp i32 %1888 to float
  %1890 = lshr i32 %1887, 8
  %1891 = and i32 %1890, 255
  %1892 = uitofp i32 %1891 to float
  %1893 = call float @dx.op.dot3.f32(i32 55, float %1701, float %1702, float %1703, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1894 = fmul fast float %1892, %1893
  %1895 = fadd fast float %1894, %1889
  %1896 = fmul fast float %1895, 0x3F70101020000000
  %1897 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  br i1 %1185, label %1898, label %1906

; <label>:1898                                    ; preds = %1880
  %1899 = fsub fast float 1.000000e+00, %1481
  %1900 = fmul fast float %1899, %1169
  %1901 = fmul fast float %1899, %1170
  %1902 = fmul fast float %1899, %1171
  %1903 = fmul fast float %1899, %1175
  %1904 = fmul fast float %1899, %1176
  %1905 = fmul fast float %1899, %1177
  br label %1906

; <label>:1906                                    ; preds = %1898, %1880
  %1907 = phi float [ %1900, %1898 ], [ %1169, %1880 ]
  %1908 = phi float [ %1901, %1898 ], [ %1170, %1880 ]
  %1909 = phi float [ %1902, %1898 ], [ %1171, %1880 ]
  %1910 = phi float [ %1903, %1898 ], [ %1175, %1880 ]
  %1911 = phi float [ %1904, %1898 ], [ %1176, %1880 ]
  %1912 = phi float [ %1905, %1898 ], [ %1177, %1880 ]
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = and i32 %1914, 3
  %1916 = icmp eq i32 %1915, 3
  br i1 %1916, label %1995, label %1917

; <label>:1917                                    ; preds = %1906
  %1918 = and i32 %1914, 16
  %1919 = icmp ne i32 %1918, 0
  %1920 = select i1 %1919, float %1481, float 0.000000e+00
  %1921 = icmp eq i32 %1915, 0
  br i1 %1921, label %1922, label %1950

; <label>:1922                                    ; preds = %1917
  %1923 = and i32 %1914, 64
  %1924 = icmp ne i32 %1923, 0
  %1925 = select i1 %1924, float %1481, float 0.000000e+00
  %1926 = fsub fast float %1701, %1907
  %1927 = fsub fast float %1702, %1908
  %1928 = fsub fast float %1703, %1909
  %1929 = fmul fast float %1920, %1926
  %1930 = fmul fast float %1920, %1927
  %1931 = fmul fast float %1920, %1928
  %1932 = fadd fast float %1929, %1907
  %1933 = fadd fast float %1930, %1908
  %1934 = fadd fast float %1931, %1909
  %1935 = fsub fast float %1687, %1178
  %1936 = fmul fast float %1920, %1935
  %1937 = fadd fast float %1936, %1178
  %1938 = fsub fast float %1829, %1910
  %1939 = fsub fast float %1830, %1911
  %1940 = fsub fast float %1831, %1912
  %1941 = fmul fast float %1925, %1938
  %1942 = fmul fast float %1925, %1939
  %1943 = fmul fast float %1925, %1940
  %1944 = fadd fast float %1941, %1910
  %1945 = fadd fast float %1942, %1911
  %1946 = fadd fast float %1943, %1912
  %1947 = fsub fast float %1897, %1183
  %1948 = fmul fast float %1920, %1947
  %1949 = fadd fast float %1948, %1183
  br label %1995

; <label>:1950                                    ; preds = %1917
  %1951 = icmp eq i32 %1915, 1
  br i1 %1951, label %1952, label %1965

; <label>:1952                                    ; preds = %1950
  %1953 = fadd fast float %1701, -1.000000e+00
  %1954 = fadd fast float %1702, -1.000000e+00
  %1955 = fadd fast float %1703, -1.000000e+00
  %1956 = fmul fast float %1920, %1953
  %1957 = fmul fast float %1920, %1954
  %1958 = fmul fast float %1920, %1955
  %1959 = fadd fast float %1956, 1.000000e+00
  %1960 = fadd fast float %1957, 1.000000e+00
  %1961 = fadd fast float %1958, 1.000000e+00
  %1962 = fmul fast float %1959, %1907
  %1963 = fmul fast float %1960, %1908
  %1964 = fmul fast float %1961, %1909
  br label %1995

; <label>:1965                                    ; preds = %1950
  %1966 = icmp eq i32 %1915, 2
  br i1 %1966, label %1967, label %1995

; <label>:1967                                    ; preds = %1965
  %1968 = call float @dx.op.unary.f32(i32 24, float %1701)  ; Sqrt(value)
  %1969 = call float @dx.op.unary.f32(i32 24, float %1702)  ; Sqrt(value)
  %1970 = call float @dx.op.unary.f32(i32 24, float %1703)  ; Sqrt(value)
  %1971 = fadd fast float %1968, -5.000000e-01
  %1972 = fadd fast float %1969, -5.000000e-01
  %1973 = fadd fast float %1970, -5.000000e-01
  %1974 = fmul fast float %1971, %1920
  %1975 = fmul fast float %1972, %1920
  %1976 = fmul fast float %1973, %1920
  %1977 = fadd fast float %1974, 5.000000e-01
  %1978 = fadd fast float %1975, 5.000000e-01
  %1979 = fadd fast float %1976, 5.000000e-01
  %1980 = fmul fast float %1977, 2.000000e+00
  %1981 = fsub fast float 1.000000e+00, %1980
  %1982 = fmul fast float %1981, %1907
  %1983 = fadd fast float %1982, %1980
  %1984 = fmul fast float %1983, %1907
  %1985 = fmul fast float %1978, 2.000000e+00
  %1986 = fsub fast float 1.000000e+00, %1985
  %1987 = fmul fast float %1986, %1908
  %1988 = fadd fast float %1987, %1985
  %1989 = fmul fast float %1988, %1908
  %1990 = fmul fast float %1979, 2.000000e+00
  %1991 = fsub fast float 1.000000e+00, %1990
  %1992 = fmul fast float %1991, %1909
  %1993 = fadd fast float %1992, %1990
  %1994 = fmul fast float %1993, %1909
  br label %1995

; <label>:1995                                    ; preds = %1967, %1965, %1952, %1922, %1906
  %1996 = phi float [ %1907, %1906 ], [ %1984, %1967 ], [ %1907, %1965 ], [ %1962, %1952 ], [ %1932, %1922 ]
  %1997 = phi float [ %1908, %1906 ], [ %1989, %1967 ], [ %1908, %1965 ], [ %1963, %1952 ], [ %1933, %1922 ]
  %1998 = phi float [ %1909, %1906 ], [ %1994, %1967 ], [ %1909, %1965 ], [ %1964, %1952 ], [ %1934, %1922 ]
  %1999 = phi float [ %1910, %1906 ], [ %1910, %1967 ], [ %1910, %1965 ], [ %1910, %1952 ], [ %1944, %1922 ]
  %2000 = phi float [ %1911, %1906 ], [ %1911, %1967 ], [ %1911, %1965 ], [ %1911, %1952 ], [ %1945, %1922 ]
  %2001 = phi float [ %1912, %1906 ], [ %1912, %1967 ], [ %1912, %1965 ], [ %1912, %1952 ], [ %1946, %1922 ]
  %2002 = phi float [ %1178, %1906 ], [ %1178, %1967 ], [ %1178, %1965 ], [ %1178, %1952 ], [ %1937, %1922 ]
  %2003 = phi float [ %1183, %1906 ], [ %1183, %1967 ], [ %1183, %1965 ], [ %1183, %1952 ], [ %1949, %1922 ]
  %2004 = and i32 %1914, 12
  %2005 = icmp eq i32 %2004, 12
  br i1 %2005, label %2112, label %2006

; <label>:2006                                    ; preds = %1995
  %2007 = and i32 %1914, 2097184
  %2008 = icmp eq i32 %2007, 2097184
  %2009 = select i1 %2008, float %1481, float 0.000000e+00
  %2010 = and i32 %1914, 4194336
  %2011 = icmp eq i32 %2010, 4194336
  %2012 = select i1 %2011, float %1481, float 0.000000e+00
  %2013 = and i32 %1914, 8388640
  %2014 = icmp eq i32 %2013, 8388640
  %2015 = select i1 %2014, float %1481, float 0.000000e+00
  %2016 = and i32 %1914, 2048
  %2017 = icmp ne i32 %2016, 0
  %2018 = select i1 %2017, float %1481, float 0.000000e+00
  %2019 = and i32 %1914, 8192
  %2020 = icmp ne i32 %2019, 0
  %2021 = select i1 %2020, float %1481, float 0.000000e+00
  %2022 = icmp eq i32 %2004, 0
  br i1 %2022, label %2023, label %2048

; <label>:2023                                    ; preds = %2006
  %2024 = fsub fast float %1782, %1167
  %2025 = fsub fast float %1783, %1168
  %2026 = fmul fast float %2009, %2024
  %2027 = fmul fast float %2009, %2025
  %2028 = fadd fast float %2026, %1167
  %2029 = fadd fast float %2027, %1168
  %2030 = fsub fast float %1784, %1181
  %2031 = fmul fast float %2012, %2030
  %2032 = fadd fast float %2031, %1181
  %2033 = fsub fast float %1781, %1180
  %2034 = fmul fast float %2015, %2033
  %2035 = fadd fast float %2034, %1180
  %2036 = fsub fast float %1884, %1182
  %2037 = fmul fast float %2018, %2036
  %2038 = fadd fast float %2037, %1182
  %2039 = fsub fast float %1881, %1172
  %2040 = fsub fast float %1882, %1173
  %2041 = fsub fast float %1883, %1174
  %2042 = fmul fast float %2021, %2039
  %2043 = fmul fast float %2021, %2040
  %2044 = fmul fast float %2021, %2041
  %2045 = fadd fast float %2042, %1172
  %2046 = fadd fast float %2043, %1173
  %2047 = fadd fast float %2044, %1174
  br label %2112

; <label>:2048                                    ; preds = %2006
  %2049 = icmp eq i32 %2004, 4
  br i1 %2049, label %2050, label %2090

; <label>:2050                                    ; preds = %2048
  %2051 = fmul fast float %2009, %1782
  %2052 = fmul fast float %2009, %1783
  %2053 = fadd fast float %2051, %1167
  %2054 = fadd fast float %2052, %1168
  %2055 = call float @dx.op.binary.f32(i32 36, float %1181, float %1784)  ; FMin(a,b)
  %2056 = fsub fast float %2055, %1181
  %2057 = fmul fast float %2056, %2012
  %2058 = fadd fast float %2057, %1181
  %2059 = fadd fast float %1781, %1180
  %2060 = fmul fast float %2059, 0x3FF337FAE0000000
  %2061 = fmul fast float %1180, %1180
  %2062 = fmul fast float %1781, %1781
  %2063 = fadd fast float %2062, %2061
  %2064 = fmul fast float %2063, 0x3FE5152B00000000
  %2065 = fmul fast float %1180, 0xBFCC1F85E0000000
  %2066 = fmul fast float %2065, %1781
  %2067 = fadd fast float %2066, 0xBFE1363700000000
  %2068 = fadd fast float %2067, %2060
  %2069 = fsub fast float %2068, %2064
  %2070 = fmul fast float %2059, 0x3FBA6F0D00000000
  %2071 = fmul fast float %2063, 0x3FD0432880000000
  %2072 = fmul fast float %1180, 0xBFEF110800000000
  %2073 = fmul fast float %2072, %1781
  %2074 = fadd fast float %2073, 1.000000e+00
  %2075 = fsub fast float %2074, %2070
  %2076 = fadd fast float %2075, %2071
  %2077 = fdiv fast float %2069, %2076
  %2078 = call float @dx.op.unary.f32(i32 7, float %2077)  ; Saturate(value)
  %2079 = fsub fast float %2078, %1180
  %2080 = fmul fast float %2079, %2015
  %2081 = fadd fast float %2080, %1180
  %2082 = fmul fast float %2018, %1884
  %2083 = fadd fast float %2082, %1182
  %2084 = fmul fast float %2021, %1881
  %2085 = fmul fast float %2021, %1882
  %2086 = fmul fast float %2021, %1883
  %2087 = fadd fast float %2084, %1172
  %2088 = fadd fast float %2085, %1173
  %2089 = fadd fast float %2086, %1174
  br label %2112

; <label>:2090                                    ; preds = %2048
  %2091 = icmp eq i32 %2004, 8
  br i1 %2091, label %2092, label %2112

; <label>:2092                                    ; preds = %2090
  %2093 = fmul fast float %2009, %1782
  %2094 = fmul fast float %2009, %1783
  %2095 = fadd fast float %2093, %1167
  %2096 = fadd fast float %2094, %1168
  %2097 = call float @dx.op.binary.f32(i32 36, float %1181, float %1784)  ; FMin(a,b)
  %2098 = fsub fast float %2097, %1181
  %2099 = fmul fast float %2098, %2012
  %2100 = fadd fast float %2099, %1181
  %2101 = fsub fast float %1781, %1180
  %2102 = fmul fast float %2015, %2101
  %2103 = fadd fast float %2102, %1180
  %2104 = fmul fast float %2018, %1884
  %2105 = fadd fast float %2104, %1182
  %2106 = fmul fast float %2021, %1881
  %2107 = fmul fast float %2021, %1882
  %2108 = fmul fast float %2021, %1883
  %2109 = fadd fast float %2106, %1172
  %2110 = fadd fast float %2107, %1173
  %2111 = fadd fast float %2108, %1174
  br label %2112

; <label>:2112                                    ; preds = %2092, %2090, %2050, %2023, %1995, %1480, %1184, %1166
  %2113 = phi float [ %1167, %1995 ], [ %1167, %1480 ], [ %1167, %1166 ], [ %2095, %2092 ], [ %1167, %2090 ], [ %2053, %2050 ], [ %2028, %2023 ], [ %1167, %1184 ]
  %2114 = phi float [ %1168, %1995 ], [ %1168, %1480 ], [ %1168, %1166 ], [ %2096, %2092 ], [ %1168, %2090 ], [ %2054, %2050 ], [ %2029, %2023 ], [ %1168, %1184 ]
  %2115 = phi float [ %1996, %1995 ], [ %1169, %1480 ], [ %1169, %1166 ], [ %1996, %2092 ], [ %1996, %2090 ], [ %1996, %2050 ], [ %1996, %2023 ], [ %1169, %1184 ]
  %2116 = phi float [ %1997, %1995 ], [ %1170, %1480 ], [ %1170, %1166 ], [ %1997, %2092 ], [ %1997, %2090 ], [ %1997, %2050 ], [ %1997, %2023 ], [ %1170, %1184 ]
  %2117 = phi float [ %1998, %1995 ], [ %1171, %1480 ], [ %1171, %1166 ], [ %1998, %2092 ], [ %1998, %2090 ], [ %1998, %2050 ], [ %1998, %2023 ], [ %1171, %1184 ]
  %2118 = phi float [ %1172, %1995 ], [ %1172, %1480 ], [ %1172, %1166 ], [ %2109, %2092 ], [ %1172, %2090 ], [ %2087, %2050 ], [ %2045, %2023 ], [ %1172, %1184 ]
  %2119 = phi float [ %1173, %1995 ], [ %1173, %1480 ], [ %1173, %1166 ], [ %2110, %2092 ], [ %1173, %2090 ], [ %2088, %2050 ], [ %2046, %2023 ], [ %1173, %1184 ]
  %2120 = phi float [ %1174, %1995 ], [ %1174, %1480 ], [ %1174, %1166 ], [ %2111, %2092 ], [ %1174, %2090 ], [ %2089, %2050 ], [ %2047, %2023 ], [ %1174, %1184 ]
  %2121 = phi float [ %1999, %1995 ], [ %1175, %1480 ], [ %1175, %1166 ], [ %1999, %2092 ], [ %1999, %2090 ], [ %1999, %2050 ], [ %1999, %2023 ], [ %1175, %1184 ]
  %2122 = phi float [ %2000, %1995 ], [ %1176, %1480 ], [ %1176, %1166 ], [ %2000, %2092 ], [ %2000, %2090 ], [ %2000, %2050 ], [ %2000, %2023 ], [ %1176, %1184 ]
  %2123 = phi float [ %2001, %1995 ], [ %1177, %1480 ], [ %1177, %1166 ], [ %2001, %2092 ], [ %2001, %2090 ], [ %2001, %2050 ], [ %2001, %2023 ], [ %1177, %1184 ]
  %2124 = phi float [ %2002, %1995 ], [ %1178, %1480 ], [ %1178, %1166 ], [ %2002, %2092 ], [ %2002, %2090 ], [ %2002, %2050 ], [ %2002, %2023 ], [ %1178, %1184 ]
  %2125 = phi float [ %1180, %1995 ], [ %1180, %1480 ], [ %1180, %1166 ], [ %2103, %2092 ], [ %1180, %2090 ], [ %2081, %2050 ], [ %2035, %2023 ], [ %1180, %1184 ]
  %2126 = phi float [ %1181, %1995 ], [ %1181, %1480 ], [ %1181, %1166 ], [ %2100, %2092 ], [ %1181, %2090 ], [ %2058, %2050 ], [ %2032, %2023 ], [ %1181, %1184 ]
  %2127 = phi float [ %1182, %1995 ], [ %1182, %1480 ], [ %1182, %1166 ], [ %2105, %2092 ], [ %1182, %2090 ], [ %2083, %2050 ], [ %2038, %2023 ], [ %1182, %1184 ]
  %2128 = phi float [ %2003, %1995 ], [ %1183, %1480 ], [ %1183, %1166 ], [ %2003, %2092 ], [ %2003, %2090 ], [ %2003, %2050 ], [ %2003, %2023 ], [ %1183, %1184 ]
  br i1 %399, label %3057, label %2129

; <label>:2129                                    ; preds = %2112
  %2130 = icmp ult i32 %455, 3
  %2131 = add i32 %48, 56
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = add i32 %48, 60
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2134, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = or i32 %2136, %2133
  %2138 = icmp eq i32 %2137, 0
  br i1 %2138, label %3057, label %2139

; <label>:2139                                    ; preds = %2129
  %2140 = and i32 %2133, 262144
  %2141 = icmp ne i32 %2140, 0
  %2142 = select i1 %2141, float %51, float 1.000000e+00
  %2143 = select i1 %2141, float %52, float 0.000000e+00
  %2144 = select i1 %2141, float %53, float 0.000000e+00
  %2145 = select i1 %2141, float %54, float 1.000000e+00
  %2146 = select i1 %2141, float %55, float %76
  %2147 = select i1 %2141, float %56, float %77
  %2148 = add i32 %48, 316
  %2149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.i32 %2149, 0
  %2151 = lshr i32 %2150, 16
  %2152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2151)  ; LegacyF16ToF32(value)
  %2153 = fmul fast float %2152, 0x3F50624DE0000000
  %2154 = add i32 %48, 120
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = lshr i32 %2156, 16
  %2158 = and i32 %2157, 255
  %2159 = lshr i32 %2156, 24
  %2160 = add i32 %48, 324
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = and i32 %2162, 65535
  %2164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2163)  ; LegacyF16ToF32(value)
  %2165 = lshr i32 %2162, 16
  %2166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2165)  ; LegacyF16ToF32(value)
  %2167 = add i32 %48, 64
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = lshr i32 %2169, 22
  %2171 = shl nuw nsw i32 %2170, 5
  %2172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2171)  ; LegacyF16ToF32(value)
  %2173 = shl i32 %2169, 4
  %2174 = and i32 %2173, 32752
  %2175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2174)  ; LegacyF16ToF32(value)
  %2176 = lshr i32 %2169, 7
  %2177 = and i32 %2176, 32752
  %2178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2177)  ; LegacyF16ToF32(value)
  %2179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2180 = extractvalue %dx.types.CBufRet.f32 %2179, 3
  %2181 = fmul fast float %2180, 1.000000e+03
  %2182 = fmul fast float %349, %2181
  %2183 = call float @dx.op.unary.f32(i32 22, float %2182)  ; Frc(value)
  %2184 = fadd fast float %2183, %339
  %2185 = fmul fast float %350, %2181
  %2186 = call float @dx.op.unary.f32(i32 22, float %2185)  ; Frc(value)
  %2187 = fadd fast float %2186, %341
  %2188 = fmul fast float %2153, %2181
  %2189 = call float @dx.op.unary.f32(i32 22, float %2188)  ; Frc(value)
  %2190 = fmul fast float %2189, 0x401921FB60000000
  %2191 = fadd fast float %2190, %2172
  %2192 = call float @dx.op.unary.f32(i32 13, float %2191)  ; Sin(value)
  %2193 = call float @dx.op.unary.f32(i32 12, float %2191)  ; Cos(value)
  %2194 = fsub fast float -0.000000e+00, %2192
  %2195 = fadd fast float %2146, -5.000000e-01
  %2196 = fadd fast float %2147, -5.000000e-01
  %2197 = fmul fast float %2164, %2195
  %2198 = fmul fast float %2166, %2196
  %2199 = fadd fast float %2197, 5.000000e-01
  %2200 = fadd fast float %2198, 5.000000e-01
  %2201 = fmul fast float %2175, %2199
  %2202 = fmul fast float %2178, %2200
  %2203 = fmul fast float %2193, %2201
  %2204 = call float @dx.op.tertiary.f32(i32 46, float %2194, float %2202, float %2203)  ; FMad(a,b,c)
  %2205 = fmul fast float %2192, %2201
  %2206 = call float @dx.op.tertiary.f32(i32 46, float %2193, float %2202, float %2205)  ; FMad(a,b,c)
  %2207 = fadd fast float %2184, %2204
  %2208 = fadd fast float %2187, %2206
  %2209 = icmp ugt i32 %2158, 1
  %2210 = icmp ugt i32 %2156, 33554431
  %2211 = or i1 %2210, %2209
  br i1 %2211, label %2212, label %2237

; <label>:2212                                    ; preds = %2139
  %2213 = add i32 %48, 260
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = lshr i32 %2215, 16
  %2217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2216)  ; LegacyF16ToF32(value)
  %2218 = fmul fast float %2180, %2217
  %2219 = call float @dx.op.unary.f32(i32 22, float %2218)  ; Frc(value)
  %2220 = mul nuw nsw i32 %2158, %2159
  %2221 = uitofp i32 %2220 to float
  %2222 = fmul fast float %2219, %2221
  %2223 = call float @dx.op.unary.f32(i32 27, float %2222)  ; Round_ni(value)
  %2224 = fptoui float %2223 to i32
  %2225 = urem i32 %2224, %2158
  %2226 = udiv i32 %2224, %2159
  %2227 = call float @dx.op.unary.f32(i32 22, float %2207)  ; Frc(value)
  %2228 = call float @dx.op.unary.f32(i32 22, float %2208)  ; Frc(value)
  %2229 = uitofp i32 %2225 to float
  %2230 = uitofp i32 %2226 to float
  %2231 = fadd fast float %2227, %2229
  %2232 = fadd fast float %2228, %2230
  %2233 = uitofp i32 %2158 to float
  %2234 = uitofp i32 %2159 to float
  %2235 = fdiv fast float %2231, %2233
  %2236 = fdiv fast float %2232, %2234
  br label %2237

; <label>:2237                                    ; preds = %2212, %2139
  %2238 = phi float [ %2235, %2212 ], [ %2207, %2139 ]
  %2239 = phi float [ %2236, %2212 ], [ %2208, %2139 ]
  %2240 = and i32 %2133, 16777216
  %2241 = icmp eq i32 %2240, 0
  br i1 %2241, label %2351, label %2242

; <label>:2242                                    ; preds = %2237
  %2243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.f32 %2243, 0
  %2245 = extractvalue %dx.types.CBufRet.f32 %2243, 1
  %2246 = extractvalue %dx.types.CBufRet.f32 %2243, 2
  %2247 = fadd fast float %2244, %152
  %2248 = fadd fast float %2245, %153
  %2249 = fadd fast float %2246, %154
  %2250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2251 = extractvalue %dx.types.CBufRet.f32 %2250, 0
  %2252 = call float @dx.op.unary.f32(i32 7, float %2251)  ; Saturate(value)
  %2253 = icmp eq i32 %49, 65535
  br i1 %2253, label %2348, label %2254

; <label>:2254                                    ; preds = %2242
  %2255 = lshr i32 %49, 1
  %2256 = shl i32 %2255, 2
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = and i32 %49, 1
  %2260 = icmp ne i32 %2259, 0
  %2261 = lshr i32 %2258, 16
  %2262 = and i32 %2258, 65535
  %2263 = select i1 %2260, i32 %2261, i32 %2262
  %2264 = icmp eq i32 %2263, 65535
  br i1 %2264, label %2344, label %2265

; <label>:2265                                    ; preds = %2254
  %2266 = mul nuw nsw i32 %2263, 40
  %2267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.f32 %2267, 0
  %2269 = extractvalue %dx.types.ResRet.f32 %2267, 1
  %2270 = extractvalue %dx.types.ResRet.f32 %2267, 2
  %2271 = add nuw nsw i32 %2266, 12
  %2272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.f32 %2272, 0
  %2274 = extractvalue %dx.types.ResRet.f32 %2272, 1
  %2275 = extractvalue %dx.types.ResRet.f32 %2272, 2
  %2276 = add nuw nsw i32 %2266, 24
  %2277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.f32 %2277, 0
  %2279 = extractvalue %dx.types.ResRet.f32 %2277, 1
  %2280 = extractvalue %dx.types.ResRet.f32 %2277, 2
  %2281 = add nuw nsw i32 %2266, 36
  %2282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2281, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.f32 %2282, 0
  %2284 = fsub fast float %2247, %2268
  %2285 = fsub fast float %2248, %2269
  %2286 = fsub fast float %2249, %2270
  %2287 = fmul fast float %2283, %2284
  %2288 = fmul fast float %2283, %2285
  %2289 = fmul fast float %2283, %2286
  %2290 = call float @dx.op.unary.f32(i32 27, float %2287)  ; Round_ni(value)
  %2291 = call float @dx.op.unary.f32(i32 27, float %2288)  ; Round_ni(value)
  %2292 = call float @dx.op.unary.f32(i32 27, float %2289)  ; Round_ni(value)
  %2293 = fadd fast float %2290, 5.000000e-01
  %2294 = fadd fast float %2291, 5.000000e-01
  %2295 = fadd fast float %2292, 5.000000e-01
  %2296 = fmul fast float %2293, %2273
  %2297 = fmul fast float %2294, %2274
  %2298 = fmul fast float %2295, %2275
  %2299 = shl i32 %49, 2
  %2300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2299, i32 undef)  ; BufferLoad(srv,index,wot)
  %2301 = extractvalue %dx.types.ResRet.i32 %2300, 0
  %2302 = add i32 %2301, 0
  %2303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2304 = call float @dx.op.unary.f32(i32 22, float %2296)  ; Frc(value)
  %2305 = call float @dx.op.unary.f32(i32 22, float %2297)  ; Frc(value)
  %2306 = call float @dx.op.unary.f32(i32 22, float %2298)  ; Frc(value)
  %2307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2303, %dx.types.Handle %43, float %2304, float %2305, float %2306, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2308 = extractvalue %dx.types.ResRet.f32 %2307, 0
  %2309 = extractvalue %dx.types.ResRet.f32 %2307, 1
  %2310 = extractvalue %dx.types.ResRet.f32 %2307, 2
  %2311 = fmul fast float %2308, 1.023000e+03
  %2312 = fmul fast float %2309, 1.023000e+03
  %2313 = fmul fast float %2310, 1.023000e+03
  %2314 = fadd fast float %2311, 5.000000e-01
  %2315 = fadd fast float %2312, 5.000000e-01
  %2316 = fadd fast float %2313, 5.000000e-01
  %2317 = call float @dx.op.unary.f32(i32 27, float %2314)  ; Round_ni(value)
  %2318 = call float @dx.op.unary.f32(i32 27, float %2315)  ; Round_ni(value)
  %2319 = call float @dx.op.unary.f32(i32 27, float %2316)  ; Round_ni(value)
  %2320 = fsub fast float %2287, %2290
  %2321 = fsub fast float %2288, %2291
  %2322 = fsub fast float %2289, %2292
  %2323 = fmul fast float %2320, 7.500000e-01
  %2324 = fmul fast float %2321, 7.500000e-01
  %2325 = fmul fast float %2322, 7.500000e-01
  %2326 = fadd fast float %2290, 1.250000e-01
  %2327 = fadd fast float %2326, %2323
  %2328 = fadd fast float %2327, %2317
  %2329 = fadd fast float %2291, 1.250000e-01
  %2330 = fadd fast float %2329, %2324
  %2331 = fadd fast float %2330, %2318
  %2332 = fadd fast float %2292, 1.250000e-01
  %2333 = fadd fast float %2332, %2325
  %2334 = fadd fast float %2333, %2319
  %2335 = fmul fast float %2328, %2278
  %2336 = fmul fast float %2331, %2279
  %2337 = fmul fast float %2334, %2280
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2299, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = add i32 %2339, 0
  %2341 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2340, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2341, %dx.types.Handle %41, float %2335, float %2336, float %2337, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2343 = extractvalue %dx.types.ResRet.f32 %2342, 0
  br label %2344

; <label>:2344                                    ; preds = %2265, %2254
  %2345 = phi float [ %2343, %2265 ], [ -1.000000e+00, %2254 ]
  %2346 = fadd fast float %2345, %2252
  %2347 = call float @dx.op.unary.f32(i32 7, float %2346)  ; Saturate(value)
  br label %2348

; <label>:2348                                    ; preds = %2344, %2242
  %2349 = phi float [ %2347, %2344 ], [ %2252, %2242 ]
  %2350 = fmul fast float %2349, %451
  br label %2351

; <label>:2351                                    ; preds = %2348, %2237
  %2352 = phi float [ %2350, %2348 ], [ %451, %2237 ]
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %2354, 256
  %2356 = icmp eq i32 %2355, 0
  br i1 %2356, label %2403, label %2357

; <label>:2357                                    ; preds = %2351
  %2358 = add i32 %48, 432
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = add i32 %2360, 0
  %2362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2361, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2363 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2362, %dx.types.Handle %94, float %2238, float %2239, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2364 = extractvalue %dx.types.ResRet.f32 %2363, 0
  %2365 = add i32 %48, 132
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = shl i32 %2367, 4
  %2369 = and i32 %2368, 32752
  %2370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2369)  ; LegacyF16ToF32(value)
  %2371 = lshr i32 %2367, 7
  %2372 = and i32 %2371, 32752
  %2373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2372)  ; LegacyF16ToF32(value)
  %2374 = fsub fast float 1.000000e+00, %2352
  %2375 = call float @dx.op.binary.f32(i32 35, float %2374, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2376 = bitcast float %2352 to i32
  %2377 = sitofp i32 %2376 to float
  %2378 = fadd fast float %2377, 0xC1CFBF8940000000
  %2379 = fmul fast float %2373, %2378
  %2380 = fadd fast float %2379, 0x41CFBF8940000000
  %2381 = fptosi float %2380 to i32
  %2382 = bitcast i32 %2381 to float
  %2383 = bitcast float %2375 to i32
  %2384 = sitofp i32 %2383 to float
  %2385 = fadd fast float %2384, 0xC1CFBF8940000000
  %2386 = fmul fast float %2385, %2373
  %2387 = fadd fast float %2386, 0x41CFBF8940000000
  %2388 = fptosi float %2387 to i32
  %2389 = bitcast i32 %2388 to float
  %2390 = fmul fast float %2382, %2370
  %2391 = fmul fast float %2389, %2370
  %2392 = fsub fast float %2375, %2390
  %2393 = fadd fast float %2391, %2375
  %2394 = call float @dx.op.unary.f32(i32 7, float %2392)  ; Saturate(value)
  %2395 = call float @dx.op.unary.f32(i32 7, float %2393)  ; Saturate(value)
  %2396 = fsub fast float %2364, %2394
  %2397 = fsub fast float %2395, %2394
  %2398 = bitcast float %2397 to i32
  %2399 = sub nsw i32 2129859010, %2398
  %2400 = bitcast i32 %2399 to float
  %2401 = fmul fast float %2400, %2396
  %2402 = call float @dx.op.unary.f32(i32 7, float %2401)  ; Saturate(value)
  br label %2403

; <label>:2403                                    ; preds = %2357, %2351
  %2404 = phi float [ %2402, %2357 ], [ %2352, %2351 ]
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = and i32 %2406, 128
  %2408 = icmp eq i32 %2407, 0
  br i1 %2408, label %2425, label %2409

; <label>:2409                                    ; preds = %2403
  %2410 = add i32 %48, 416
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = add i32 %2412, 0
  %2414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2414, %dx.types.Handle %94, float %2238, float %2239, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2416 = extractvalue %dx.types.ResRet.f32 %2415, 0
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = and i32 %2418, 524288
  %2420 = icmp ne i32 %2419, 0
  %2421 = fcmp fast ogt float %2416, 0x3FE0101020000000
  %2422 = select i1 %2421, float 1.000000e+00, float 0.000000e+00
  %2423 = select i1 %2420, float %2422, float %2416
  %2424 = fmul fast float %2423, %2404
  br label %2425

; <label>:2425                                    ; preds = %2409, %2403
  %2426 = phi float [ %2424, %2409 ], [ %2404, %2403 ]
  %2427 = fcmp fast ult float %2426, 0x3F70101020000000
  br i1 %2427, label %3057, label %2428

; <label>:2428                                    ; preds = %2425
  %2429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.i32 %2429, 0
  %2431 = and i32 %2430, 16
  %2432 = icmp eq i32 %2431, 0
  br i1 %2432, label %2631, label %2433

; <label>:2433                                    ; preds = %2428
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = add i32 %48, 368
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = add i32 %2438, 0
  %2440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2440, %dx.types.Handle %93, float %2238, float %2239, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2442 = extractvalue %dx.types.ResRet.f32 %2441, 0
  %2443 = extractvalue %dx.types.ResRet.f32 %2441, 1
  %2444 = extractvalue %dx.types.ResRet.f32 %2441, 2
  %2445 = extractvalue %dx.types.ResRet.f32 %2441, 3
  %2446 = and i32 %2435, 255
  %2447 = uitofp i32 %2446 to float
  %2448 = lshr i32 %2435, 8
  %2449 = and i32 %2448, 255
  %2450 = uitofp i32 %2449 to float
  %2451 = fmul fast float %2445, %2447
  %2452 = fadd fast float %2451, %2450
  %2453 = fmul fast float %2452, 0x3F70101000000000
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = and i32 %2455, 512
  %2457 = icmp eq i32 %2456, 0
  br i1 %2457, label %2466, label %2458

; <label>:2458                                    ; preds = %2433
  %2459 = add i32 %48, 448
  %2460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2459, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.i32 %2460, 0
  %2462 = add i32 %2461, 0
  %2463 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2462, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2464 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2463, %dx.types.Handle %94, float %2238, float %2239, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2465 = extractvalue %dx.types.ResRet.f32 %2464, 0
  br label %2466

; <label>:2466                                    ; preds = %2458, %2433
  %2467 = phi float [ %2465, %2458 ], [ 1.000000e+00, %2433 ]
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = and i32 %2469, 33554432
  %2471 = icmp eq i32 %2470, 0
  br i1 %2471, label %2578, label %2472

; <label>:2472                                    ; preds = %2466
  %2473 = add i32 %48, 256
  %2474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2473, i32 undef)  ; BufferLoad(srv,index,wot)
  %2475 = extractvalue %dx.types.ResRet.i32 %2474, 0
  %2476 = and i32 %2475, 65535
  %2477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2476)  ; LegacyF16ToF32(value)
  %2478 = lshr i32 %2475, 16
  %2479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2478)  ; LegacyF16ToF32(value)
  %2480 = add i32 %48, 260
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = and i32 %2482, 65535
  %2484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2483)  ; LegacyF16ToF32(value)
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = lshr i32 %2486, 24
  %2488 = uitofp i32 %2487 to float
  %2489 = fmul fast float %2488, 0x3F70101020000000
  %2490 = and i32 %2486, 255
  %2491 = uitofp i32 %2490 to float
  %2492 = fmul fast float %2491, 0x3F70101020000000
  %2493 = lshr i32 %2486, 8
  %2494 = and i32 %2493, 255
  %2495 = uitofp i32 %2494 to float
  %2496 = fmul fast float %2495, 0x3F70101020000000
  %2497 = lshr i32 %2486, 16
  %2498 = and i32 %2497, 255
  %2499 = uitofp i32 %2498 to float
  %2500 = fmul fast float %2499, 0x3F70101020000000
  %2501 = add i32 %48, 252
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2501, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = lshr i32 %2503, 24
  %2505 = uitofp i32 %2504 to float
  %2506 = fmul fast float %2505, 0x3F70101020000000
  %2507 = and i32 %2503, 255
  %2508 = uitofp i32 %2507 to float
  %2509 = fmul fast float %2508, 0x3F70101020000000
  %2510 = lshr i32 %2503, 8
  %2511 = and i32 %2510, 255
  %2512 = uitofp i32 %2511 to float
  %2513 = fmul fast float %2512, 0x3F70101020000000
  %2514 = lshr i32 %2503, 16
  %2515 = and i32 %2514, 255
  %2516 = uitofp i32 %2515 to float
  %2517 = fmul fast float %2516, 0x3F70101020000000
  %2518 = bitcast float %2442 to i32
  %2519 = ashr i32 %2518, 1
  %2520 = sub nsw i32 1597463174, %2519
  %2521 = bitcast i32 %2520 to float
  %2522 = fmul fast float %2442, 5.000000e-01
  %2523 = fmul fast float %2521, %2521
  %2524 = fmul fast float %2523, %2522
  %2525 = fsub fast float 1.500000e+00, %2524
  %2526 = fmul fast float %2521, %2442
  %2527 = fmul fast float %2526, %2525
  %2528 = bitcast float %2443 to i32
  %2529 = ashr i32 %2528, 1
  %2530 = sub nsw i32 1597463174, %2529
  %2531 = bitcast i32 %2530 to float
  %2532 = fmul fast float %2443, 5.000000e-01
  %2533 = fmul fast float %2531, %2531
  %2534 = fmul fast float %2533, %2532
  %2535 = fsub fast float 1.500000e+00, %2534
  %2536 = fmul fast float %2531, %2443
  %2537 = fmul fast float %2536, %2535
  %2538 = bitcast float %2444 to i32
  %2539 = ashr i32 %2538, 1
  %2540 = sub nsw i32 1597463174, %2539
  %2541 = bitcast i32 %2540 to float
  %2542 = fmul fast float %2444, 5.000000e-01
  %2543 = fmul fast float %2541, %2541
  %2544 = fmul fast float %2543, %2542
  %2545 = fsub fast float 1.500000e+00, %2544
  %2546 = fmul fast float %2541, %2444
  %2547 = fmul fast float %2546, %2545
  %2548 = fsub fast float %2527, %2509
  %2549 = fsub fast float %2537, %2513
  %2550 = fsub fast float %2547, %2517
  %2551 = fmul fast float %2548, %2477
  %2552 = fmul fast float %2549, %2479
  %2553 = fmul fast float %2550, %2484
  %2554 = fadd fast float %2551, %2492
  %2555 = fadd fast float %2552, %2496
  %2556 = fadd fast float %2553, %2500
  %2557 = call float @dx.op.unary.f32(i32 7, float %2554)  ; Saturate(value)
  %2558 = call float @dx.op.unary.f32(i32 7, float %2555)  ; Saturate(value)
  %2559 = call float @dx.op.unary.f32(i32 7, float %2556)  ; Saturate(value)
  %2560 = fmul fast float %2557, %2557
  %2561 = fmul fast float %2558, %2558
  %2562 = fmul fast float %2559, %2559
  %2563 = fsub fast float %2560, %2442
  %2564 = fsub fast float %2561, %2443
  %2565 = fsub fast float %2562, %2444
  %2566 = fmul fast float %2563, %2467
  %2567 = fmul fast float %2564, %2467
  %2568 = fmul fast float %2565, %2467
  %2569 = fadd fast float %2566, %2442
  %2570 = fadd fast float %2567, %2443
  %2571 = fadd fast float %2568, %2444
  %2572 = fadd fast float %2489, %2453
  %2573 = fsub fast float %2572, %2506
  %2574 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2575 = fsub fast float %2574, %2453
  %2576 = fmul fast float %2575, %2467
  %2577 = fadd fast float %2576, %2453
  br label %2631

; <label>:2578                                    ; preds = %2466
  %2579 = and i32 %2469, 134217728
  %2580 = icmp eq i32 %2579, 0
  br i1 %2580, label %2615, label %2581

; <label>:2581                                    ; preds = %2578
  %2582 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %2583 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2584 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2585 = fadd fast float %2582, -5.000000e-01
  %2586 = fadd fast float %2583, -5.000000e-01
  %2587 = fadd fast float %2584, -5.000000e-01
  %2588 = fmul fast float %2585, %2467
  %2589 = fmul fast float %2586, %2467
  %2590 = fmul fast float %2587, %2467
  %2591 = fadd fast float %2588, 5.000000e-01
  %2592 = fadd fast float %2589, 5.000000e-01
  %2593 = fadd fast float %2590, 5.000000e-01
  %2594 = call float @dx.op.unary.f32(i32 24, float %2442)  ; Sqrt(value)
  %2595 = call float @dx.op.unary.f32(i32 24, float %2443)  ; Sqrt(value)
  %2596 = call float @dx.op.unary.f32(i32 24, float %2444)  ; Sqrt(value)
  %2597 = fmul fast float %2591, 2.000000e+00
  %2598 = fsub fast float 1.000000e+00, %2597
  %2599 = fmul fast float %2598, %2594
  %2600 = fadd fast float %2599, %2597
  %2601 = fmul fast float %2600, %2594
  %2602 = fmul fast float %2592, 2.000000e+00
  %2603 = fsub fast float 1.000000e+00, %2602
  %2604 = fmul fast float %2603, %2595
  %2605 = fadd fast float %2604, %2602
  %2606 = fmul fast float %2605, %2595
  %2607 = fmul fast float %2593, 2.000000e+00
  %2608 = fsub fast float 1.000000e+00, %2607
  %2609 = fmul fast float %2608, %2596
  %2610 = fadd fast float %2609, %2607
  %2611 = fmul fast float %2610, %2596
  %2612 = fmul fast float %2601, %2601
  %2613 = fmul fast float %2606, %2606
  %2614 = fmul fast float %2611, %2611
  br label %2631

; <label>:2615                                    ; preds = %2578
  %2616 = fmul fast float %326, %326
  %2617 = fmul fast float %330, %330
  %2618 = fmul fast float %334, %334
  %2619 = fadd fast float %2616, -1.000000e+00
  %2620 = fadd fast float %2617, -1.000000e+00
  %2621 = fadd fast float %2618, -1.000000e+00
  %2622 = fmul fast float %2467, %2619
  %2623 = fmul fast float %2467, %2620
  %2624 = fmul fast float %2467, %2621
  %2625 = fadd fast float %2622, 1.000000e+00
  %2626 = fadd fast float %2623, 1.000000e+00
  %2627 = fadd fast float %2624, 1.000000e+00
  %2628 = fmul fast float %2625, %2442
  %2629 = fmul fast float %2626, %2443
  %2630 = fmul fast float %2627, %2444
  br label %2631

; <label>:2631                                    ; preds = %2615, %2581, %2472, %2428
  %2632 = phi float [ %2577, %2472 ], [ %2453, %2581 ], [ %2453, %2615 ], [ 0x3FA23C0BE0000000, %2428 ]
  %2633 = phi float [ %2569, %2472 ], [ %2612, %2581 ], [ %2628, %2615 ], [ 1.000000e+00, %2428 ]
  %2634 = phi float [ %2570, %2472 ], [ %2613, %2581 ], [ %2629, %2615 ], [ 1.000000e+00, %2428 ]
  %2635 = phi float [ %2571, %2472 ], [ %2614, %2581 ], [ %2630, %2615 ], [ 1.000000e+00, %2428 ]
  %2636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2637 = extractvalue %dx.types.CBufRet.i32 %2636, 1
  %2638 = and i32 %2637, 1
  %2639 = icmp ne i32 %2638, 0
  %2640 = add i32 %48, 356
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = and i32 %2642, 32
  %2644 = icmp ne i32 %2643, 0
  %2645 = and i1 %2639, %2644
  %2646 = select i1 %2645, float 1.000000e+00, float %2633
  %2647 = select i1 %2645, float 0x3FD3333340000000, float %2634
  %2648 = select i1 %2645, float 0x3FD3333340000000, float %2635
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = and i32 %2650, 32
  %2652 = icmp eq i32 %2651, 0
  br i1 %2652, label %2725, label %2653

; <label>:2653                                    ; preds = %2631
  %2654 = add i32 %48, 124
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = add i32 %48, 384
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = add i32 %2659, 0
  %2661 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2660, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2662 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2661, %dx.types.Handle %93, float %2238, float %2239, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2663 = extractvalue %dx.types.ResRet.f32 %2662, 0
  %2664 = extractvalue %dx.types.ResRet.f32 %2662, 1
  %2665 = extractvalue %dx.types.ResRet.f32 %2662, 2
  %2666 = extractvalue %dx.types.ResRet.f32 %2662, 3
  %2667 = and i32 %2656, 255
  %2668 = uitofp i32 %2667 to float
  %2669 = lshr i32 %2656, 8
  %2670 = and i32 %2669, 255
  %2671 = uitofp i32 %2670 to float
  %2672 = lshr i32 %2656, 16
  %2673 = and i32 %2672, 255
  %2674 = uitofp i32 %2673 to float
  %2675 = fmul fast float %2674, 0x3F70101000000000
  %2676 = fmul fast float %2663, %2668
  %2677 = fadd fast float %2676, %2671
  %2678 = fmul fast float %2677, 0x3F70101000000000
  %2679 = fadd fast float %2664, -5.000000e-01
  %2680 = fadd fast float %2666, -5.000000e-01
  %2681 = fmul fast float %2679, %2675
  %2682 = fmul fast float %2680, %2675
  %2683 = fadd fast float %2681, 5.000000e-01
  %2684 = fadd fast float %2682, 5.000000e-01
  %2685 = fmul fast float %2683, 2.000000e+00
  %2686 = fadd fast float %2685, -1.000000e+00
  %2687 = fmul fast float %2684, 2.000000e+00
  %2688 = fadd fast float %2687, -1.000000e+00
  %2689 = fadd fast float %2686, %2688
  %2690 = fmul fast float %2689, 5.000000e-01
  %2691 = fsub fast float %2686, %2688
  %2692 = fmul fast float %2691, 5.000000e-01
  %2693 = call float @dx.op.unary.f32(i32 6, float %2690)  ; FAbs(value)
  %2694 = fsub fast float 1.000000e+00, %2693
  %2695 = call float @dx.op.unary.f32(i32 6, float %2692)  ; FAbs(value)
  %2696 = fsub fast float %2694, %2695
  %2697 = call float @dx.op.dot3.f32(i32 55, float %2690, float %2692, float %2696, float %2690, float %2692, float %2696)  ; Dot3(ax,ay,az,bx,by,bz)
  %2698 = call float @dx.op.unary.f32(i32 25, float %2697)  ; Rsqrt(value)
  %2699 = fmul fast float %2690, %2698
  %2700 = fmul fast float %2692, %2698
  %2701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2702 = extractvalue %dx.types.ResRet.i32 %2701, 0
  %2703 = and i32 %2702, 67108864
  %2704 = icmp eq i32 %2703, 0
  br i1 %2704, label %2721, label %2705

; <label>:2705                                    ; preds = %2653
  %2706 = add i32 %48, 312
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = and i32 %2708, 65535
  %2710 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2709)  ; LegacyF16ToF32(value)
  %2711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2712 = extractvalue %dx.types.ResRet.i32 %2711, 0
  %2713 = and i32 %2712, 65535
  %2714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2713)  ; LegacyF16ToF32(value)
  %2715 = lshr i32 %2708, 16
  %2716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2715)  ; LegacyF16ToF32(value)
  %2717 = fsub fast float %2678, %2716
  %2718 = fmul fast float %2717, %2710
  %2719 = fadd fast float %2718, %2714
  %2720 = call float @dx.op.unary.f32(i32 7, float %2719)  ; Saturate(value)
  br label %2721

; <label>:2721                                    ; preds = %2705, %2653
  %2722 = phi float [ %2720, %2705 ], [ %2678, %2653 ]
  %2723 = call float @dx.op.dot2.f32(i32 54, float %2699, float %2700, float %2142, float %2143)  ; Dot2(ax,ay,bx,by)
  %2724 = call float @dx.op.dot2.f32(i32 54, float %2699, float %2700, float %2144, float %2145)  ; Dot2(ax,ay,bx,by)
  br label %2725

; <label>:2725                                    ; preds = %2721, %2631
  %2726 = phi float [ %2722, %2721 ], [ 0x3FD6666660000000, %2631 ]
  %2727 = phi float [ %2723, %2721 ], [ 0.000000e+00, %2631 ]
  %2728 = phi float [ %2724, %2721 ], [ 0.000000e+00, %2631 ]
  %2729 = phi float [ %2665, %2721 ], [ 1.000000e+00, %2631 ]
  %2730 = add i32 %48, 192
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = lshr i32 %2732, 22
  %2734 = shl nuw nsw i32 %2733, 5
  %2735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2734)  ; LegacyF16ToF32(value)
  %2736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2737 = extractvalue %dx.types.ResRet.i32 %2736, 0
  %2738 = and i32 %2737, 64
  %2739 = icmp eq i32 %2738, 0
  br i1 %2739, label %2773, label %2740

; <label>:2740                                    ; preds = %2725
  %2741 = add i32 %48, 400
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = add i32 %2743, 0
  %2745 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2744, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = and i32 %2747, 131072
  %2749 = icmp eq i32 %2748, 0
  %2750 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2745, %dx.types.Handle %93, float %2238, float %2239, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2751 = extractvalue %dx.types.ResRet.f32 %2750, 0
  %2752 = extractvalue %dx.types.ResRet.f32 %2750, 1
  %2753 = extractvalue %dx.types.ResRet.f32 %2750, 2
  %2754 = fmul fast float %2751, %314
  %2755 = fmul fast float %2752, %317
  %2756 = fmul fast float %2753, %320
  br i1 %2749, label %2763, label %2757

; <label>:2757                                    ; preds = %2740
  %2758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2759 = extractvalue %dx.types.CBufRet.f32 %2758, 0
  %2760 = fmul fast float %2759, %2754
  %2761 = fmul fast float %2759, %2755
  %2762 = fmul fast float %2759, %2756
  br label %2763

; <label>:2763                                    ; preds = %2757, %2740
  %2764 = phi float [ %2760, %2757 ], [ %2754, %2740 ]
  %2765 = phi float [ %2761, %2757 ], [ %2755, %2740 ]
  %2766 = phi float [ %2762, %2757 ], [ %2756, %2740 ]
  %2767 = fmul fast float %2764, %2735
  %2768 = select i1 %213, float %2767, float %2764
  %2769 = call float @dx.op.dot3.f32(i32 55, float %2768, float %2765, float %2766, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2770 = select i1 %213, float 0.000000e+00, float %2764
  %2771 = select i1 %213, float %2769, float %2765
  %2772 = select i1 %213, float 0.000000e+00, float %2766
  br label %2773

; <label>:2773                                    ; preds = %2763, %2725
  %2774 = phi float [ %2770, %2763 ], [ 0.000000e+00, %2725 ]
  %2775 = phi float [ %2771, %2763 ], [ 0.000000e+00, %2725 ]
  %2776 = phi float [ %2772, %2763 ], [ 0.000000e+00, %2725 ]
  %2777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.i32 %2777, 0
  %2779 = and i32 %2778, 10240
  %2780 = icmp eq i32 %2779, 0
  br i1 %2780, label %2825, label %2781

; <label>:2781                                    ; preds = %2773
  %2782 = add i32 %48, 464
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = add i32 %2784, 0
  %2786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2785, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2787 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2786, %dx.types.Handle %94, float %2238, float %2239, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2788 = extractvalue %dx.types.ResRet.f32 %2787, 1
  %2789 = extractvalue %dx.types.ResRet.f32 %2787, 3
  %2790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2791 = extractvalue %dx.types.ResRet.i32 %2790, 0
  %2792 = and i32 %2791, 1048576
  %2793 = icmp ne i32 %2792, 0
  %2794 = and i32 %2791, 8192
  %2795 = icmp eq i32 %2794, 0
  br i1 %2795, label %2811, label %2796

; <label>:2796                                    ; preds = %2781
  %2797 = extractvalue %dx.types.ResRet.f32 %2787, 2
  %2798 = select i1 %2793, float %2797, float %2788
  %2799 = extractvalue %dx.types.ResRet.f32 %2787, 0
  %2800 = select i1 %2793, float %2799, float %2788
  %2801 = add i32 %48, 128
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = lshr i32 %2803, 16
  %2805 = and i32 %2804, 255
  %2806 = uitofp i32 %2805 to float
  %2807 = fmul fast float %2806, 0x3F80101020000000
  %2808 = fmul fast float %2807, %2800
  %2809 = fmul fast float %2807, %2788
  %2810 = fmul fast float %2807, %2798
  br label %2811

; <label>:2811                                    ; preds = %2796, %2781
  %2812 = phi float [ %2808, %2796 ], [ 0.000000e+00, %2781 ]
  %2813 = phi float [ %2809, %2796 ], [ 0.000000e+00, %2781 ]
  %2814 = phi float [ %2810, %2796 ], [ 0.000000e+00, %2781 ]
  %2815 = and i32 %2791, 2048
  %2816 = icmp eq i32 %2815, 0
  br i1 %2816, label %2825, label %2817

; <label>:2817                                    ; preds = %2811
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = shl i32 %2819, 4
  %2821 = and i32 %2820, 32752
  %2822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2821)  ; LegacyF16ToF32(value)
  %2823 = fmul fast float %2822, %2789
  %2824 = call float @dx.op.binary.f32(i32 35, float %2823, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2825

; <label>:2825                                    ; preds = %2817, %2811, %2773
  %2826 = phi float [ %2812, %2817 ], [ %2812, %2811 ], [ 0.000000e+00, %2773 ]
  %2827 = phi float [ %2813, %2817 ], [ %2813, %2811 ], [ 0.000000e+00, %2773 ]
  %2828 = phi float [ %2814, %2817 ], [ %2814, %2811 ], [ 0.000000e+00, %2773 ]
  %2829 = phi float [ %2824, %2817 ], [ 0x3F70101020000000, %2811 ], [ 0x3F70101020000000, %2773 ]
  %2830 = add i32 %48, 128
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = and i32 %2832, 255
  %2834 = uitofp i32 %2833 to float
  %2835 = lshr i32 %2832, 8
  %2836 = and i32 %2835, 255
  %2837 = uitofp i32 %2836 to float
  %2838 = call float @dx.op.dot3.f32(i32 55, float %2646, float %2647, float %2648, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2839 = fmul fast float %2837, %2838
  %2840 = fadd fast float %2839, %2834
  %2841 = fmul fast float %2840, 0x3F70101020000000
  %2842 = call float @dx.op.unary.f32(i32 7, float %2841)  ; Saturate(value)
  br i1 %2130, label %2843, label %2851

; <label>:2843                                    ; preds = %2825
  %2844 = fsub fast float 1.000000e+00, %2426
  %2845 = fmul fast float %2844, %2115
  %2846 = fmul fast float %2844, %2116
  %2847 = fmul fast float %2844, %2117
  %2848 = fmul fast float %2844, %2121
  %2849 = fmul fast float %2844, %2122
  %2850 = fmul fast float %2844, %2123
  br label %2851

; <label>:2851                                    ; preds = %2843, %2825
  %2852 = phi float [ %2845, %2843 ], [ %2115, %2825 ]
  %2853 = phi float [ %2846, %2843 ], [ %2116, %2825 ]
  %2854 = phi float [ %2847, %2843 ], [ %2117, %2825 ]
  %2855 = phi float [ %2848, %2843 ], [ %2121, %2825 ]
  %2856 = phi float [ %2849, %2843 ], [ %2122, %2825 ]
  %2857 = phi float [ %2850, %2843 ], [ %2123, %2825 ]
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = and i32 %2859, 3
  %2861 = icmp eq i32 %2860, 3
  br i1 %2861, label %2940, label %2862

; <label>:2862                                    ; preds = %2851
  %2863 = and i32 %2859, 16
  %2864 = icmp ne i32 %2863, 0
  %2865 = select i1 %2864, float %2426, float 0.000000e+00
  %2866 = icmp eq i32 %2860, 0
  br i1 %2866, label %2867, label %2895

; <label>:2867                                    ; preds = %2862
  %2868 = and i32 %2859, 64
  %2869 = icmp ne i32 %2868, 0
  %2870 = select i1 %2869, float %2426, float 0.000000e+00
  %2871 = fsub fast float %2646, %2852
  %2872 = fsub fast float %2647, %2853
  %2873 = fsub fast float %2648, %2854
  %2874 = fmul fast float %2865, %2871
  %2875 = fmul fast float %2865, %2872
  %2876 = fmul fast float %2865, %2873
  %2877 = fadd fast float %2874, %2852
  %2878 = fadd fast float %2875, %2853
  %2879 = fadd fast float %2876, %2854
  %2880 = fsub fast float %2632, %2124
  %2881 = fmul fast float %2865, %2880
  %2882 = fadd fast float %2881, %2124
  %2883 = fsub fast float %2774, %2855
  %2884 = fsub fast float %2775, %2856
  %2885 = fsub fast float %2776, %2857
  %2886 = fmul fast float %2870, %2883
  %2887 = fmul fast float %2870, %2884
  %2888 = fmul fast float %2870, %2885
  %2889 = fadd fast float %2886, %2855
  %2890 = fadd fast float %2887, %2856
  %2891 = fadd fast float %2888, %2857
  %2892 = fsub fast float %2842, %2128
  %2893 = fmul fast float %2865, %2892
  %2894 = fadd fast float %2893, %2128
  br label %2940

; <label>:2895                                    ; preds = %2862
  %2896 = icmp eq i32 %2860, 1
  br i1 %2896, label %2897, label %2910

; <label>:2897                                    ; preds = %2895
  %2898 = fadd fast float %2646, -1.000000e+00
  %2899 = fadd fast float %2647, -1.000000e+00
  %2900 = fadd fast float %2648, -1.000000e+00
  %2901 = fmul fast float %2865, %2898
  %2902 = fmul fast float %2865, %2899
  %2903 = fmul fast float %2865, %2900
  %2904 = fadd fast float %2901, 1.000000e+00
  %2905 = fadd fast float %2902, 1.000000e+00
  %2906 = fadd fast float %2903, 1.000000e+00
  %2907 = fmul fast float %2904, %2852
  %2908 = fmul fast float %2905, %2853
  %2909 = fmul fast float %2906, %2854
  br label %2940

; <label>:2910                                    ; preds = %2895
  %2911 = icmp eq i32 %2860, 2
  br i1 %2911, label %2912, label %2940

; <label>:2912                                    ; preds = %2910
  %2913 = call float @dx.op.unary.f32(i32 24, float %2646)  ; Sqrt(value)
  %2914 = call float @dx.op.unary.f32(i32 24, float %2647)  ; Sqrt(value)
  %2915 = call float @dx.op.unary.f32(i32 24, float %2648)  ; Sqrt(value)
  %2916 = fadd fast float %2913, -5.000000e-01
  %2917 = fadd fast float %2914, -5.000000e-01
  %2918 = fadd fast float %2915, -5.000000e-01
  %2919 = fmul fast float %2916, %2865
  %2920 = fmul fast float %2917, %2865
  %2921 = fmul fast float %2918, %2865
  %2922 = fadd fast float %2919, 5.000000e-01
  %2923 = fadd fast float %2920, 5.000000e-01
  %2924 = fadd fast float %2921, 5.000000e-01
  %2925 = fmul fast float %2922, 2.000000e+00
  %2926 = fsub fast float 1.000000e+00, %2925
  %2927 = fmul fast float %2926, %2852
  %2928 = fadd fast float %2927, %2925
  %2929 = fmul fast float %2928, %2852
  %2930 = fmul fast float %2923, 2.000000e+00
  %2931 = fsub fast float 1.000000e+00, %2930
  %2932 = fmul fast float %2931, %2853
  %2933 = fadd fast float %2932, %2930
  %2934 = fmul fast float %2933, %2853
  %2935 = fmul fast float %2924, 2.000000e+00
  %2936 = fsub fast float 1.000000e+00, %2935
  %2937 = fmul fast float %2936, %2854
  %2938 = fadd fast float %2937, %2935
  %2939 = fmul fast float %2938, %2854
  br label %2940

; <label>:2940                                    ; preds = %2912, %2910, %2897, %2867, %2851
  %2941 = phi float [ %2852, %2851 ], [ %2929, %2912 ], [ %2852, %2910 ], [ %2907, %2897 ], [ %2877, %2867 ]
  %2942 = phi float [ %2853, %2851 ], [ %2934, %2912 ], [ %2853, %2910 ], [ %2908, %2897 ], [ %2878, %2867 ]
  %2943 = phi float [ %2854, %2851 ], [ %2939, %2912 ], [ %2854, %2910 ], [ %2909, %2897 ], [ %2879, %2867 ]
  %2944 = phi float [ %2855, %2851 ], [ %2855, %2912 ], [ %2855, %2910 ], [ %2855, %2897 ], [ %2889, %2867 ]
  %2945 = phi float [ %2856, %2851 ], [ %2856, %2912 ], [ %2856, %2910 ], [ %2856, %2897 ], [ %2890, %2867 ]
  %2946 = phi float [ %2857, %2851 ], [ %2857, %2912 ], [ %2857, %2910 ], [ %2857, %2897 ], [ %2891, %2867 ]
  %2947 = phi float [ %2124, %2851 ], [ %2124, %2912 ], [ %2124, %2910 ], [ %2124, %2897 ], [ %2882, %2867 ]
  %2948 = phi float [ %2128, %2851 ], [ %2128, %2912 ], [ %2128, %2910 ], [ %2128, %2897 ], [ %2894, %2867 ]
  %2949 = and i32 %2859, 12
  %2950 = icmp eq i32 %2949, 12
  br i1 %2950, label %3057, label %2951

; <label>:2951                                    ; preds = %2940
  %2952 = and i32 %2859, 2097184
  %2953 = icmp eq i32 %2952, 2097184
  %2954 = select i1 %2953, float %2426, float 0.000000e+00
  %2955 = and i32 %2859, 4194336
  %2956 = icmp eq i32 %2955, 4194336
  %2957 = select i1 %2956, float %2426, float 0.000000e+00
  %2958 = and i32 %2859, 8388640
  %2959 = icmp eq i32 %2958, 8388640
  %2960 = select i1 %2959, float %2426, float 0.000000e+00
  %2961 = and i32 %2859, 2048
  %2962 = icmp ne i32 %2961, 0
  %2963 = select i1 %2962, float %2426, float 0.000000e+00
  %2964 = and i32 %2859, 8192
  %2965 = icmp ne i32 %2964, 0
  %2966 = select i1 %2965, float %2426, float 0.000000e+00
  %2967 = icmp eq i32 %2949, 0
  br i1 %2967, label %2968, label %2993

; <label>:2968                                    ; preds = %2951
  %2969 = fsub fast float %2727, %2113
  %2970 = fsub fast float %2728, %2114
  %2971 = fmul fast float %2954, %2969
  %2972 = fmul fast float %2954, %2970
  %2973 = fadd fast float %2971, %2113
  %2974 = fadd fast float %2972, %2114
  %2975 = fsub fast float %2729, %2126
  %2976 = fmul fast float %2957, %2975
  %2977 = fadd fast float %2976, %2126
  %2978 = fsub fast float %2726, %2125
  %2979 = fmul fast float %2960, %2978
  %2980 = fadd fast float %2979, %2125
  %2981 = fsub fast float %2829, %2127
  %2982 = fmul fast float %2963, %2981
  %2983 = fadd fast float %2982, %2127
  %2984 = fsub fast float %2826, %2118
  %2985 = fsub fast float %2827, %2119
  %2986 = fsub fast float %2828, %2120
  %2987 = fmul fast float %2966, %2984
  %2988 = fmul fast float %2966, %2985
  %2989 = fmul fast float %2966, %2986
  %2990 = fadd fast float %2987, %2118
  %2991 = fadd fast float %2988, %2119
  %2992 = fadd fast float %2989, %2120
  br label %3057

; <label>:2993                                    ; preds = %2951
  %2994 = icmp eq i32 %2949, 4
  br i1 %2994, label %2995, label %3035

; <label>:2995                                    ; preds = %2993
  %2996 = fmul fast float %2954, %2727
  %2997 = fmul fast float %2954, %2728
  %2998 = fadd fast float %2996, %2113
  %2999 = fadd fast float %2997, %2114
  %3000 = call float @dx.op.binary.f32(i32 36, float %2126, float %2729)  ; FMin(a,b)
  %3001 = fsub fast float %3000, %2126
  %3002 = fmul fast float %3001, %2957
  %3003 = fadd fast float %3002, %2126
  %3004 = fadd fast float %2726, %2125
  %3005 = fmul fast float %3004, 0x3FF337FAE0000000
  %3006 = fmul fast float %2125, %2125
  %3007 = fmul fast float %2726, %2726
  %3008 = fadd fast float %3007, %3006
  %3009 = fmul fast float %3008, 0x3FE5152B00000000
  %3010 = fmul fast float %2125, 0xBFCC1F85E0000000
  %3011 = fmul fast float %3010, %2726
  %3012 = fadd fast float %3011, 0xBFE1363700000000
  %3013 = fadd fast float %3012, %3005
  %3014 = fsub fast float %3013, %3009
  %3015 = fmul fast float %3004, 0x3FBA6F0D00000000
  %3016 = fmul fast float %3008, 0x3FD0432880000000
  %3017 = fmul fast float %2125, 0xBFEF110800000000
  %3018 = fmul fast float %3017, %2726
  %3019 = fadd fast float %3018, 1.000000e+00
  %3020 = fsub fast float %3019, %3015
  %3021 = fadd fast float %3020, %3016
  %3022 = fdiv fast float %3014, %3021
  %3023 = call float @dx.op.unary.f32(i32 7, float %3022)  ; Saturate(value)
  %3024 = fsub fast float %3023, %2125
  %3025 = fmul fast float %3024, %2960
  %3026 = fadd fast float %3025, %2125
  %3027 = fmul fast float %2963, %2829
  %3028 = fadd fast float %3027, %2127
  %3029 = fmul fast float %2966, %2826
  %3030 = fmul fast float %2966, %2827
  %3031 = fmul fast float %2966, %2828
  %3032 = fadd fast float %3029, %2118
  %3033 = fadd fast float %3030, %2119
  %3034 = fadd fast float %3031, %2120
  br label %3057

; <label>:3035                                    ; preds = %2993
  %3036 = icmp eq i32 %2949, 8
  br i1 %3036, label %3037, label %3057

; <label>:3037                                    ; preds = %3035
  %3038 = fmul fast float %2954, %2727
  %3039 = fmul fast float %2954, %2728
  %3040 = fadd fast float %3038, %2113
  %3041 = fadd fast float %3039, %2114
  %3042 = call float @dx.op.binary.f32(i32 36, float %2126, float %2729)  ; FMin(a,b)
  %3043 = fsub fast float %3042, %2126
  %3044 = fmul fast float %3043, %2957
  %3045 = fadd fast float %3044, %2126
  %3046 = fsub fast float %2726, %2125
  %3047 = fmul fast float %2960, %3046
  %3048 = fadd fast float %3047, %2125
  %3049 = fmul fast float %2963, %2829
  %3050 = fadd fast float %3049, %2127
  %3051 = fmul fast float %2966, %2826
  %3052 = fmul fast float %2966, %2827
  %3053 = fmul fast float %2966, %2828
  %3054 = fadd fast float %3051, %2118
  %3055 = fadd fast float %3052, %2119
  %3056 = fadd fast float %3053, %2120
  br label %3057

; <label>:3057                                    ; preds = %3037, %3035, %2995, %2968, %2940, %2425, %2129, %2112
  %3058 = phi float [ %2113, %2940 ], [ %2113, %2425 ], [ %2113, %2112 ], [ %3040, %3037 ], [ %2113, %3035 ], [ %2998, %2995 ], [ %2973, %2968 ], [ %2113, %2129 ]
  %3059 = phi float [ %2114, %2940 ], [ %2114, %2425 ], [ %2114, %2112 ], [ %3041, %3037 ], [ %2114, %3035 ], [ %2999, %2995 ], [ %2974, %2968 ], [ %2114, %2129 ]
  %3060 = phi float [ %2941, %2940 ], [ %2115, %2425 ], [ %2115, %2112 ], [ %2941, %3037 ], [ %2941, %3035 ], [ %2941, %2995 ], [ %2941, %2968 ], [ %2115, %2129 ]
  %3061 = phi float [ %2942, %2940 ], [ %2116, %2425 ], [ %2116, %2112 ], [ %2942, %3037 ], [ %2942, %3035 ], [ %2942, %2995 ], [ %2942, %2968 ], [ %2116, %2129 ]
  %3062 = phi float [ %2943, %2940 ], [ %2117, %2425 ], [ %2117, %2112 ], [ %2943, %3037 ], [ %2943, %3035 ], [ %2943, %2995 ], [ %2943, %2968 ], [ %2117, %2129 ]
  %3063 = phi float [ %2118, %2940 ], [ %2118, %2425 ], [ %2118, %2112 ], [ %3054, %3037 ], [ %2118, %3035 ], [ %3032, %2995 ], [ %2990, %2968 ], [ %2118, %2129 ]
  %3064 = phi float [ %2119, %2940 ], [ %2119, %2425 ], [ %2119, %2112 ], [ %3055, %3037 ], [ %2119, %3035 ], [ %3033, %2995 ], [ %2991, %2968 ], [ %2119, %2129 ]
  %3065 = phi float [ %2120, %2940 ], [ %2120, %2425 ], [ %2120, %2112 ], [ %3056, %3037 ], [ %2120, %3035 ], [ %3034, %2995 ], [ %2992, %2968 ], [ %2120, %2129 ]
  %3066 = phi float [ %2944, %2940 ], [ %2121, %2425 ], [ %2121, %2112 ], [ %2944, %3037 ], [ %2944, %3035 ], [ %2944, %2995 ], [ %2944, %2968 ], [ %2121, %2129 ]
  %3067 = phi float [ %2945, %2940 ], [ %2122, %2425 ], [ %2122, %2112 ], [ %2945, %3037 ], [ %2945, %3035 ], [ %2945, %2995 ], [ %2945, %2968 ], [ %2122, %2129 ]
  %3068 = phi float [ %2946, %2940 ], [ %2123, %2425 ], [ %2123, %2112 ], [ %2946, %3037 ], [ %2946, %3035 ], [ %2946, %2995 ], [ %2946, %2968 ], [ %2123, %2129 ]
  %3069 = phi float [ %2947, %2940 ], [ %2124, %2425 ], [ %2124, %2112 ], [ %2947, %3037 ], [ %2947, %3035 ], [ %2947, %2995 ], [ %2947, %2968 ], [ %2124, %2129 ]
  %3070 = phi float [ %2125, %2940 ], [ %2125, %2425 ], [ %2125, %2112 ], [ %3048, %3037 ], [ %2125, %3035 ], [ %3026, %2995 ], [ %2980, %2968 ], [ %2125, %2129 ]
  %3071 = phi float [ %2126, %2940 ], [ %2126, %2425 ], [ %2126, %2112 ], [ %3045, %3037 ], [ %2126, %3035 ], [ %3003, %2995 ], [ %2977, %2968 ], [ %2126, %2129 ]
  %3072 = phi float [ %2127, %2940 ], [ %2127, %2425 ], [ %2127, %2112 ], [ %3050, %3037 ], [ %2127, %3035 ], [ %3028, %2995 ], [ %2983, %2968 ], [ %2127, %2129 ]
  %3073 = phi float [ %2948, %2940 ], [ %2128, %2425 ], [ %2128, %2112 ], [ %2948, %3037 ], [ %2948, %3035 ], [ %2948, %2995 ], [ %2948, %2968 ], [ %2128, %2129 ]
  br i1 %401, label %4002, label %3074

; <label>:3074                                    ; preds = %3057
  %3075 = icmp ult i32 %455, 4
  %3076 = add i32 %48, 72
  %3077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3078 = extractvalue %dx.types.ResRet.i32 %3077, 0
  %3079 = add i32 %48, 76
  %3080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3079, i32 undef)  ; BufferLoad(srv,index,wot)
  %3081 = extractvalue %dx.types.ResRet.i32 %3080, 0
  %3082 = or i32 %3081, %3078
  %3083 = icmp eq i32 %3082, 0
  br i1 %3083, label %4002, label %3084

; <label>:3084                                    ; preds = %3074
  %3085 = and i32 %3078, 262144
  %3086 = icmp ne i32 %3085, 0
  %3087 = select i1 %3086, float %51, float 1.000000e+00
  %3088 = select i1 %3086, float %52, float 0.000000e+00
  %3089 = select i1 %3086, float %53, float 0.000000e+00
  %3090 = select i1 %3086, float %54, float 1.000000e+00
  %3091 = select i1 %3086, float %55, float %76
  %3092 = select i1 %3086, float %56, float %77
  %3093 = add i32 %48, 332
  %3094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3093, i32 undef)  ; BufferLoad(srv,index,wot)
  %3095 = extractvalue %dx.types.ResRet.i32 %3094, 0
  %3096 = lshr i32 %3095, 16
  %3097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3096)  ; LegacyF16ToF32(value)
  %3098 = fmul fast float %3097, 0x3F50624DE0000000
  %3099 = add i32 %48, 136
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = lshr i32 %3101, 16
  %3103 = and i32 %3102, 255
  %3104 = lshr i32 %3101, 24
  %3105 = add i32 %48, 340
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = and i32 %3107, 65535
  %3109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3108)  ; LegacyF16ToF32(value)
  %3110 = lshr i32 %3107, 16
  %3111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3110)  ; LegacyF16ToF32(value)
  %3112 = add i32 %48, 80
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = lshr i32 %3114, 22
  %3116 = shl nuw nsw i32 %3115, 5
  %3117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3116)  ; LegacyF16ToF32(value)
  %3118 = shl i32 %3114, 4
  %3119 = and i32 %3118, 32752
  %3120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3119)  ; LegacyF16ToF32(value)
  %3121 = lshr i32 %3114, 7
  %3122 = and i32 %3121, 32752
  %3123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3122)  ; LegacyF16ToF32(value)
  %3124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3125 = extractvalue %dx.types.CBufRet.f32 %3124, 3
  %3126 = fmul fast float %3125, 1.000000e+03
  %3127 = fmul fast float %391, %3126
  %3128 = call float @dx.op.unary.f32(i32 22, float %3127)  ; Frc(value)
  %3129 = fadd fast float %3128, %381
  %3130 = fmul fast float %392, %3126
  %3131 = call float @dx.op.unary.f32(i32 22, float %3130)  ; Frc(value)
  %3132 = fadd fast float %3131, %383
  %3133 = fmul fast float %3098, %3126
  %3134 = call float @dx.op.unary.f32(i32 22, float %3133)  ; Frc(value)
  %3135 = fmul fast float %3134, 0x401921FB60000000
  %3136 = fadd fast float %3135, %3117
  %3137 = call float @dx.op.unary.f32(i32 13, float %3136)  ; Sin(value)
  %3138 = call float @dx.op.unary.f32(i32 12, float %3136)  ; Cos(value)
  %3139 = fsub fast float -0.000000e+00, %3137
  %3140 = fadd fast float %3091, -5.000000e-01
  %3141 = fadd fast float %3092, -5.000000e-01
  %3142 = fmul fast float %3109, %3140
  %3143 = fmul fast float %3111, %3141
  %3144 = fadd fast float %3142, 5.000000e-01
  %3145 = fadd fast float %3143, 5.000000e-01
  %3146 = fmul fast float %3120, %3144
  %3147 = fmul fast float %3123, %3145
  %3148 = fmul fast float %3138, %3146
  %3149 = call float @dx.op.tertiary.f32(i32 46, float %3139, float %3147, float %3148)  ; FMad(a,b,c)
  %3150 = fmul fast float %3137, %3146
  %3151 = call float @dx.op.tertiary.f32(i32 46, float %3138, float %3147, float %3150)  ; FMad(a,b,c)
  %3152 = fadd fast float %3129, %3149
  %3153 = fadd fast float %3132, %3151
  %3154 = icmp ugt i32 %3103, 1
  %3155 = icmp ugt i32 %3101, 33554431
  %3156 = or i1 %3155, %3154
  br i1 %3156, label %3157, label %3182

; <label>:3157                                    ; preds = %3084
  %3158 = add i32 %48, 276
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3158, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = lshr i32 %3160, 16
  %3162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3161)  ; LegacyF16ToF32(value)
  %3163 = fmul fast float %3125, %3162
  %3164 = call float @dx.op.unary.f32(i32 22, float %3163)  ; Frc(value)
  %3165 = mul nuw nsw i32 %3103, %3104
  %3166 = uitofp i32 %3165 to float
  %3167 = fmul fast float %3164, %3166
  %3168 = call float @dx.op.unary.f32(i32 27, float %3167)  ; Round_ni(value)
  %3169 = fptoui float %3168 to i32
  %3170 = urem i32 %3169, %3103
  %3171 = udiv i32 %3169, %3104
  %3172 = call float @dx.op.unary.f32(i32 22, float %3152)  ; Frc(value)
  %3173 = call float @dx.op.unary.f32(i32 22, float %3153)  ; Frc(value)
  %3174 = uitofp i32 %3170 to float
  %3175 = uitofp i32 %3171 to float
  %3176 = fadd fast float %3172, %3174
  %3177 = fadd fast float %3173, %3175
  %3178 = uitofp i32 %3103 to float
  %3179 = uitofp i32 %3104 to float
  %3180 = fdiv fast float %3176, %3178
  %3181 = fdiv fast float %3177, %3179
  br label %3182

; <label>:3182                                    ; preds = %3157, %3084
  %3183 = phi float [ %3180, %3157 ], [ %3152, %3084 ]
  %3184 = phi float [ %3181, %3157 ], [ %3153, %3084 ]
  %3185 = and i32 %3078, 16777216
  %3186 = icmp eq i32 %3185, 0
  br i1 %3186, label %3296, label %3187

; <label>:3187                                    ; preds = %3182
  %3188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3189 = extractvalue %dx.types.CBufRet.f32 %3188, 0
  %3190 = extractvalue %dx.types.CBufRet.f32 %3188, 1
  %3191 = extractvalue %dx.types.CBufRet.f32 %3188, 2
  %3192 = fadd fast float %3189, %152
  %3193 = fadd fast float %3190, %153
  %3194 = fadd fast float %3191, %154
  %3195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3196 = extractvalue %dx.types.CBufRet.f32 %3195, 0
  %3197 = call float @dx.op.unary.f32(i32 7, float %3196)  ; Saturate(value)
  %3198 = icmp eq i32 %49, 65535
  br i1 %3198, label %3293, label %3199

; <label>:3199                                    ; preds = %3187
  %3200 = lshr i32 %49, 1
  %3201 = shl i32 %3200, 2
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = and i32 %49, 1
  %3205 = icmp ne i32 %3204, 0
  %3206 = lshr i32 %3203, 16
  %3207 = and i32 %3203, 65535
  %3208 = select i1 %3205, i32 %3206, i32 %3207
  %3209 = icmp eq i32 %3208, 65535
  br i1 %3209, label %3289, label %3210

; <label>:3210                                    ; preds = %3199
  %3211 = mul nuw nsw i32 %3208, 40
  %3212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.f32 %3212, 0
  %3214 = extractvalue %dx.types.ResRet.f32 %3212, 1
  %3215 = extractvalue %dx.types.ResRet.f32 %3212, 2
  %3216 = add nuw nsw i32 %3211, 12
  %3217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3216, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.f32 %3217, 0
  %3219 = extractvalue %dx.types.ResRet.f32 %3217, 1
  %3220 = extractvalue %dx.types.ResRet.f32 %3217, 2
  %3221 = add nuw nsw i32 %3211, 24
  %3222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3221, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.f32 %3222, 0
  %3224 = extractvalue %dx.types.ResRet.f32 %3222, 1
  %3225 = extractvalue %dx.types.ResRet.f32 %3222, 2
  %3226 = add nuw nsw i32 %3211, 36
  %3227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.f32 %3227, 0
  %3229 = fsub fast float %3192, %3213
  %3230 = fsub fast float %3193, %3214
  %3231 = fsub fast float %3194, %3215
  %3232 = fmul fast float %3228, %3229
  %3233 = fmul fast float %3228, %3230
  %3234 = fmul fast float %3228, %3231
  %3235 = call float @dx.op.unary.f32(i32 27, float %3232)  ; Round_ni(value)
  %3236 = call float @dx.op.unary.f32(i32 27, float %3233)  ; Round_ni(value)
  %3237 = call float @dx.op.unary.f32(i32 27, float %3234)  ; Round_ni(value)
  %3238 = fadd fast float %3235, 5.000000e-01
  %3239 = fadd fast float %3236, 5.000000e-01
  %3240 = fadd fast float %3237, 5.000000e-01
  %3241 = fmul fast float %3238, %3218
  %3242 = fmul fast float %3239, %3219
  %3243 = fmul fast float %3240, %3220
  %3244 = shl i32 %49, 2
  %3245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3244, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.i32 %3245, 0
  %3247 = add i32 %3246, 0
  %3248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3249 = call float @dx.op.unary.f32(i32 22, float %3241)  ; Frc(value)
  %3250 = call float @dx.op.unary.f32(i32 22, float %3242)  ; Frc(value)
  %3251 = call float @dx.op.unary.f32(i32 22, float %3243)  ; Frc(value)
  %3252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3248, %dx.types.Handle %43, float %3249, float %3250, float %3251, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3253 = extractvalue %dx.types.ResRet.f32 %3252, 0
  %3254 = extractvalue %dx.types.ResRet.f32 %3252, 1
  %3255 = extractvalue %dx.types.ResRet.f32 %3252, 2
  %3256 = fmul fast float %3253, 1.023000e+03
  %3257 = fmul fast float %3254, 1.023000e+03
  %3258 = fmul fast float %3255, 1.023000e+03
  %3259 = fadd fast float %3256, 5.000000e-01
  %3260 = fadd fast float %3257, 5.000000e-01
  %3261 = fadd fast float %3258, 5.000000e-01
  %3262 = call float @dx.op.unary.f32(i32 27, float %3259)  ; Round_ni(value)
  %3263 = call float @dx.op.unary.f32(i32 27, float %3260)  ; Round_ni(value)
  %3264 = call float @dx.op.unary.f32(i32 27, float %3261)  ; Round_ni(value)
  %3265 = fsub fast float %3232, %3235
  %3266 = fsub fast float %3233, %3236
  %3267 = fsub fast float %3234, %3237
  %3268 = fmul fast float %3265, 7.500000e-01
  %3269 = fmul fast float %3266, 7.500000e-01
  %3270 = fmul fast float %3267, 7.500000e-01
  %3271 = fadd fast float %3235, 1.250000e-01
  %3272 = fadd fast float %3271, %3268
  %3273 = fadd fast float %3272, %3262
  %3274 = fadd fast float %3236, 1.250000e-01
  %3275 = fadd fast float %3274, %3269
  %3276 = fadd fast float %3275, %3263
  %3277 = fadd fast float %3237, 1.250000e-01
  %3278 = fadd fast float %3277, %3270
  %3279 = fadd fast float %3278, %3264
  %3280 = fmul fast float %3273, %3223
  %3281 = fmul fast float %3276, %3224
  %3282 = fmul fast float %3279, %3225
  %3283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3244, i32 undef)  ; BufferLoad(srv,index,wot)
  %3284 = extractvalue %dx.types.ResRet.i32 %3283, 0
  %3285 = add i32 %3284, 0
  %3286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3286, %dx.types.Handle %41, float %3280, float %3281, float %3282, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3288 = extractvalue %dx.types.ResRet.f32 %3287, 0
  br label %3289

; <label>:3289                                    ; preds = %3210, %3199
  %3290 = phi float [ %3288, %3210 ], [ -1.000000e+00, %3199 ]
  %3291 = fadd fast float %3290, %3197
  %3292 = call float @dx.op.unary.f32(i32 7, float %3291)  ; Saturate(value)
  br label %3293

; <label>:3293                                    ; preds = %3289, %3187
  %3294 = phi float [ %3292, %3289 ], [ %3197, %3187 ]
  %3295 = fmul fast float %3294, %450
  br label %3296

; <label>:3296                                    ; preds = %3293, %3182
  %3297 = phi float [ %3295, %3293 ], [ %450, %3182 ]
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = and i32 %3299, 256
  %3301 = icmp eq i32 %3300, 0
  br i1 %3301, label %3348, label %3302

; <label>:3302                                    ; preds = %3296
  %3303 = add i32 %48, 436
  %3304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3303, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.i32 %3304, 0
  %3306 = add i32 %3305, 0
  %3307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3308 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3307, %dx.types.Handle %94, float %3183, float %3184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3309 = extractvalue %dx.types.ResRet.f32 %3308, 0
  %3310 = add i32 %48, 148
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.i32 %3311, 0
  %3313 = shl i32 %3312, 4
  %3314 = and i32 %3313, 32752
  %3315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3314)  ; LegacyF16ToF32(value)
  %3316 = lshr i32 %3312, 7
  %3317 = and i32 %3316, 32752
  %3318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3317)  ; LegacyF16ToF32(value)
  %3319 = fsub fast float 1.000000e+00, %3297
  %3320 = call float @dx.op.binary.f32(i32 35, float %3319, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3321 = bitcast float %3297 to i32
  %3322 = sitofp i32 %3321 to float
  %3323 = fadd fast float %3322, 0xC1CFBF8940000000
  %3324 = fmul fast float %3318, %3323
  %3325 = fadd fast float %3324, 0x41CFBF8940000000
  %3326 = fptosi float %3325 to i32
  %3327 = bitcast i32 %3326 to float
  %3328 = bitcast float %3320 to i32
  %3329 = sitofp i32 %3328 to float
  %3330 = fadd fast float %3329, 0xC1CFBF8940000000
  %3331 = fmul fast float %3330, %3318
  %3332 = fadd fast float %3331, 0x41CFBF8940000000
  %3333 = fptosi float %3332 to i32
  %3334 = bitcast i32 %3333 to float
  %3335 = fmul fast float %3327, %3315
  %3336 = fmul fast float %3334, %3315
  %3337 = fsub fast float %3320, %3335
  %3338 = fadd fast float %3336, %3320
  %3339 = call float @dx.op.unary.f32(i32 7, float %3337)  ; Saturate(value)
  %3340 = call float @dx.op.unary.f32(i32 7, float %3338)  ; Saturate(value)
  %3341 = fsub fast float %3309, %3339
  %3342 = fsub fast float %3340, %3339
  %3343 = bitcast float %3342 to i32
  %3344 = sub nsw i32 2129859010, %3343
  %3345 = bitcast i32 %3344 to float
  %3346 = fmul fast float %3345, %3341
  %3347 = call float @dx.op.unary.f32(i32 7, float %3346)  ; Saturate(value)
  br label %3348

; <label>:3348                                    ; preds = %3302, %3296
  %3349 = phi float [ %3347, %3302 ], [ %3297, %3296 ]
  %3350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.i32 %3350, 0
  %3352 = and i32 %3351, 128
  %3353 = icmp eq i32 %3352, 0
  br i1 %3353, label %3370, label %3354

; <label>:3354                                    ; preds = %3348
  %3355 = add i32 %48, 420
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = add i32 %3357, 0
  %3359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3358, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3360 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3359, %dx.types.Handle %94, float %3183, float %3184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3361 = extractvalue %dx.types.ResRet.f32 %3360, 0
  %3362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.i32 %3362, 0
  %3364 = and i32 %3363, 524288
  %3365 = icmp ne i32 %3364, 0
  %3366 = fcmp fast ogt float %3361, 0x3FE0101020000000
  %3367 = select i1 %3366, float 1.000000e+00, float 0.000000e+00
  %3368 = select i1 %3365, float %3367, float %3361
  %3369 = fmul fast float %3368, %3349
  br label %3370

; <label>:3370                                    ; preds = %3354, %3348
  %3371 = phi float [ %3369, %3354 ], [ %3349, %3348 ]
  %3372 = fcmp fast ult float %3371, 0x3F70101020000000
  br i1 %3372, label %4002, label %3373

; <label>:3373                                    ; preds = %3370
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = and i32 %3375, 16
  %3377 = icmp eq i32 %3376, 0
  br i1 %3377, label %3576, label %3378

; <label>:3378                                    ; preds = %3373
  %3379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.i32 %3379, 0
  %3381 = add i32 %48, 372
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3381, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = add i32 %3383, 0
  %3385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3385, %dx.types.Handle %93, float %3183, float %3184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3387 = extractvalue %dx.types.ResRet.f32 %3386, 0
  %3388 = extractvalue %dx.types.ResRet.f32 %3386, 1
  %3389 = extractvalue %dx.types.ResRet.f32 %3386, 2
  %3390 = extractvalue %dx.types.ResRet.f32 %3386, 3
  %3391 = and i32 %3380, 255
  %3392 = uitofp i32 %3391 to float
  %3393 = lshr i32 %3380, 8
  %3394 = and i32 %3393, 255
  %3395 = uitofp i32 %3394 to float
  %3396 = fmul fast float %3390, %3392
  %3397 = fadd fast float %3396, %3395
  %3398 = fmul fast float %3397, 0x3F70101000000000
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = and i32 %3400, 512
  %3402 = icmp eq i32 %3401, 0
  br i1 %3402, label %3411, label %3403

; <label>:3403                                    ; preds = %3378
  %3404 = add i32 %48, 452
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3404, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = add i32 %3406, 0
  %3408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3409 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3408, %dx.types.Handle %94, float %3183, float %3184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3410 = extractvalue %dx.types.ResRet.f32 %3409, 0
  br label %3411

; <label>:3411                                    ; preds = %3403, %3378
  %3412 = phi float [ %3410, %3403 ], [ 1.000000e+00, %3378 ]
  %3413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.i32 %3413, 0
  %3415 = and i32 %3414, 33554432
  %3416 = icmp eq i32 %3415, 0
  br i1 %3416, label %3523, label %3417

; <label>:3417                                    ; preds = %3411
  %3418 = add i32 %48, 272
  %3419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.i32 %3419, 0
  %3421 = and i32 %3420, 65535
  %3422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3421)  ; LegacyF16ToF32(value)
  %3423 = lshr i32 %3420, 16
  %3424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3423)  ; LegacyF16ToF32(value)
  %3425 = add i32 %48, 276
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = and i32 %3427, 65535
  %3429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3428)  ; LegacyF16ToF32(value)
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = lshr i32 %3431, 24
  %3433 = uitofp i32 %3432 to float
  %3434 = fmul fast float %3433, 0x3F70101020000000
  %3435 = and i32 %3431, 255
  %3436 = uitofp i32 %3435 to float
  %3437 = fmul fast float %3436, 0x3F70101020000000
  %3438 = lshr i32 %3431, 8
  %3439 = and i32 %3438, 255
  %3440 = uitofp i32 %3439 to float
  %3441 = fmul fast float %3440, 0x3F70101020000000
  %3442 = lshr i32 %3431, 16
  %3443 = and i32 %3442, 255
  %3444 = uitofp i32 %3443 to float
  %3445 = fmul fast float %3444, 0x3F70101020000000
  %3446 = add i32 %48, 268
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = lshr i32 %3448, 24
  %3450 = uitofp i32 %3449 to float
  %3451 = fmul fast float %3450, 0x3F70101020000000
  %3452 = and i32 %3448, 255
  %3453 = uitofp i32 %3452 to float
  %3454 = fmul fast float %3453, 0x3F70101020000000
  %3455 = lshr i32 %3448, 8
  %3456 = and i32 %3455, 255
  %3457 = uitofp i32 %3456 to float
  %3458 = fmul fast float %3457, 0x3F70101020000000
  %3459 = lshr i32 %3448, 16
  %3460 = and i32 %3459, 255
  %3461 = uitofp i32 %3460 to float
  %3462 = fmul fast float %3461, 0x3F70101020000000
  %3463 = bitcast float %3387 to i32
  %3464 = ashr i32 %3463, 1
  %3465 = sub nsw i32 1597463174, %3464
  %3466 = bitcast i32 %3465 to float
  %3467 = fmul fast float %3387, 5.000000e-01
  %3468 = fmul fast float %3466, %3466
  %3469 = fmul fast float %3468, %3467
  %3470 = fsub fast float 1.500000e+00, %3469
  %3471 = fmul fast float %3466, %3387
  %3472 = fmul fast float %3471, %3470
  %3473 = bitcast float %3388 to i32
  %3474 = ashr i32 %3473, 1
  %3475 = sub nsw i32 1597463174, %3474
  %3476 = bitcast i32 %3475 to float
  %3477 = fmul fast float %3388, 5.000000e-01
  %3478 = fmul fast float %3476, %3476
  %3479 = fmul fast float %3478, %3477
  %3480 = fsub fast float 1.500000e+00, %3479
  %3481 = fmul fast float %3476, %3388
  %3482 = fmul fast float %3481, %3480
  %3483 = bitcast float %3389 to i32
  %3484 = ashr i32 %3483, 1
  %3485 = sub nsw i32 1597463174, %3484
  %3486 = bitcast i32 %3485 to float
  %3487 = fmul fast float %3389, 5.000000e-01
  %3488 = fmul fast float %3486, %3486
  %3489 = fmul fast float %3488, %3487
  %3490 = fsub fast float 1.500000e+00, %3489
  %3491 = fmul fast float %3486, %3389
  %3492 = fmul fast float %3491, %3490
  %3493 = fsub fast float %3472, %3454
  %3494 = fsub fast float %3482, %3458
  %3495 = fsub fast float %3492, %3462
  %3496 = fmul fast float %3493, %3422
  %3497 = fmul fast float %3494, %3424
  %3498 = fmul fast float %3495, %3429
  %3499 = fadd fast float %3496, %3437
  %3500 = fadd fast float %3497, %3441
  %3501 = fadd fast float %3498, %3445
  %3502 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  %3503 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  %3504 = call float @dx.op.unary.f32(i32 7, float %3501)  ; Saturate(value)
  %3505 = fmul fast float %3502, %3502
  %3506 = fmul fast float %3503, %3503
  %3507 = fmul fast float %3504, %3504
  %3508 = fsub fast float %3505, %3387
  %3509 = fsub fast float %3506, %3388
  %3510 = fsub fast float %3507, %3389
  %3511 = fmul fast float %3508, %3412
  %3512 = fmul fast float %3509, %3412
  %3513 = fmul fast float %3510, %3412
  %3514 = fadd fast float %3511, %3387
  %3515 = fadd fast float %3512, %3388
  %3516 = fadd fast float %3513, %3389
  %3517 = fadd fast float %3434, %3398
  %3518 = fsub fast float %3517, %3451
  %3519 = call float @dx.op.unary.f32(i32 7, float %3518)  ; Saturate(value)
  %3520 = fsub fast float %3519, %3398
  %3521 = fmul fast float %3520, %3412
  %3522 = fadd fast float %3521, %3398
  br label %3576

; <label>:3523                                    ; preds = %3411
  %3524 = and i32 %3414, 134217728
  %3525 = icmp eq i32 %3524, 0
  br i1 %3525, label %3560, label %3526

; <label>:3526                                    ; preds = %3523
  %3527 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %3528 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %3529 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %3530 = fadd fast float %3527, -5.000000e-01
  %3531 = fadd fast float %3528, -5.000000e-01
  %3532 = fadd fast float %3529, -5.000000e-01
  %3533 = fmul fast float %3530, %3412
  %3534 = fmul fast float %3531, %3412
  %3535 = fmul fast float %3532, %3412
  %3536 = fadd fast float %3533, 5.000000e-01
  %3537 = fadd fast float %3534, 5.000000e-01
  %3538 = fadd fast float %3535, 5.000000e-01
  %3539 = call float @dx.op.unary.f32(i32 24, float %3387)  ; Sqrt(value)
  %3540 = call float @dx.op.unary.f32(i32 24, float %3388)  ; Sqrt(value)
  %3541 = call float @dx.op.unary.f32(i32 24, float %3389)  ; Sqrt(value)
  %3542 = fmul fast float %3536, 2.000000e+00
  %3543 = fsub fast float 1.000000e+00, %3542
  %3544 = fmul fast float %3543, %3539
  %3545 = fadd fast float %3544, %3542
  %3546 = fmul fast float %3545, %3539
  %3547 = fmul fast float %3537, 2.000000e+00
  %3548 = fsub fast float 1.000000e+00, %3547
  %3549 = fmul fast float %3548, %3540
  %3550 = fadd fast float %3549, %3547
  %3551 = fmul fast float %3550, %3540
  %3552 = fmul fast float %3538, 2.000000e+00
  %3553 = fsub fast float 1.000000e+00, %3552
  %3554 = fmul fast float %3553, %3541
  %3555 = fadd fast float %3554, %3552
  %3556 = fmul fast float %3555, %3541
  %3557 = fmul fast float %3546, %3546
  %3558 = fmul fast float %3551, %3551
  %3559 = fmul fast float %3556, %3556
  br label %3576

; <label>:3560                                    ; preds = %3523
  %3561 = fmul fast float %368, %368
  %3562 = fmul fast float %372, %372
  %3563 = fmul fast float %376, %376
  %3564 = fadd fast float %3561, -1.000000e+00
  %3565 = fadd fast float %3562, -1.000000e+00
  %3566 = fadd fast float %3563, -1.000000e+00
  %3567 = fmul fast float %3412, %3564
  %3568 = fmul fast float %3412, %3565
  %3569 = fmul fast float %3412, %3566
  %3570 = fadd fast float %3567, 1.000000e+00
  %3571 = fadd fast float %3568, 1.000000e+00
  %3572 = fadd fast float %3569, 1.000000e+00
  %3573 = fmul fast float %3570, %3387
  %3574 = fmul fast float %3571, %3388
  %3575 = fmul fast float %3572, %3389
  br label %3576

; <label>:3576                                    ; preds = %3560, %3526, %3417, %3373
  %3577 = phi float [ %3522, %3417 ], [ %3398, %3526 ], [ %3398, %3560 ], [ 0x3FA23C0BE0000000, %3373 ]
  %3578 = phi float [ %3514, %3417 ], [ %3557, %3526 ], [ %3573, %3560 ], [ 1.000000e+00, %3373 ]
  %3579 = phi float [ %3515, %3417 ], [ %3558, %3526 ], [ %3574, %3560 ], [ 1.000000e+00, %3373 ]
  %3580 = phi float [ %3516, %3417 ], [ %3559, %3526 ], [ %3575, %3560 ], [ 1.000000e+00, %3373 ]
  %3581 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3582 = extractvalue %dx.types.CBufRet.i32 %3581, 1
  %3583 = and i32 %3582, 1
  %3584 = icmp ne i32 %3583, 0
  %3585 = add i32 %48, 356
  %3586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3585, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.i32 %3586, 0
  %3588 = and i32 %3587, 32
  %3589 = icmp ne i32 %3588, 0
  %3590 = and i1 %3584, %3589
  %3591 = select i1 %3590, float 1.000000e+00, float %3578
  %3592 = select i1 %3590, float 0x3FD3333340000000, float %3579
  %3593 = select i1 %3590, float 0x3FD3333340000000, float %3580
  %3594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.i32 %3594, 0
  %3596 = and i32 %3595, 32
  %3597 = icmp eq i32 %3596, 0
  br i1 %3597, label %3670, label %3598

; <label>:3598                                    ; preds = %3576
  %3599 = add i32 %48, 140
  %3600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.i32 %3600, 0
  %3602 = add i32 %48, 388
  %3603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.i32 %3603, 0
  %3605 = add i32 %3604, 0
  %3606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3605, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3607 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3606, %dx.types.Handle %93, float %3183, float %3184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = extractvalue %dx.types.ResRet.f32 %3607, 1
  %3610 = extractvalue %dx.types.ResRet.f32 %3607, 2
  %3611 = extractvalue %dx.types.ResRet.f32 %3607, 3
  %3612 = and i32 %3601, 255
  %3613 = uitofp i32 %3612 to float
  %3614 = lshr i32 %3601, 8
  %3615 = and i32 %3614, 255
  %3616 = uitofp i32 %3615 to float
  %3617 = lshr i32 %3601, 16
  %3618 = and i32 %3617, 255
  %3619 = uitofp i32 %3618 to float
  %3620 = fmul fast float %3619, 0x3F70101000000000
  %3621 = fmul fast float %3608, %3613
  %3622 = fadd fast float %3621, %3616
  %3623 = fmul fast float %3622, 0x3F70101000000000
  %3624 = fadd fast float %3609, -5.000000e-01
  %3625 = fadd fast float %3611, -5.000000e-01
  %3626 = fmul fast float %3624, %3620
  %3627 = fmul fast float %3625, %3620
  %3628 = fadd fast float %3626, 5.000000e-01
  %3629 = fadd fast float %3627, 5.000000e-01
  %3630 = fmul fast float %3628, 2.000000e+00
  %3631 = fadd fast float %3630, -1.000000e+00
  %3632 = fmul fast float %3629, 2.000000e+00
  %3633 = fadd fast float %3632, -1.000000e+00
  %3634 = fadd fast float %3631, %3633
  %3635 = fmul fast float %3634, 5.000000e-01
  %3636 = fsub fast float %3631, %3633
  %3637 = fmul fast float %3636, 5.000000e-01
  %3638 = call float @dx.op.unary.f32(i32 6, float %3635)  ; FAbs(value)
  %3639 = fsub fast float 1.000000e+00, %3638
  %3640 = call float @dx.op.unary.f32(i32 6, float %3637)  ; FAbs(value)
  %3641 = fsub fast float %3639, %3640
  %3642 = call float @dx.op.dot3.f32(i32 55, float %3635, float %3637, float %3641, float %3635, float %3637, float %3641)  ; Dot3(ax,ay,az,bx,by,bz)
  %3643 = call float @dx.op.unary.f32(i32 25, float %3642)  ; Rsqrt(value)
  %3644 = fmul fast float %3635, %3643
  %3645 = fmul fast float %3637, %3643
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 0
  %3648 = and i32 %3647, 67108864
  %3649 = icmp eq i32 %3648, 0
  br i1 %3649, label %3666, label %3650

; <label>:3650                                    ; preds = %3598
  %3651 = add i32 %48, 328
  %3652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.i32 %3652, 0
  %3654 = and i32 %3653, 65535
  %3655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3654)  ; LegacyF16ToF32(value)
  %3656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3093, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.i32 %3656, 0
  %3658 = and i32 %3657, 65535
  %3659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3658)  ; LegacyF16ToF32(value)
  %3660 = lshr i32 %3653, 16
  %3661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3660)  ; LegacyF16ToF32(value)
  %3662 = fsub fast float %3623, %3661
  %3663 = fmul fast float %3662, %3655
  %3664 = fadd fast float %3663, %3659
  %3665 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  br label %3666

; <label>:3666                                    ; preds = %3650, %3598
  %3667 = phi float [ %3665, %3650 ], [ %3623, %3598 ]
  %3668 = call float @dx.op.dot2.f32(i32 54, float %3644, float %3645, float %3087, float %3088)  ; Dot2(ax,ay,bx,by)
  %3669 = call float @dx.op.dot2.f32(i32 54, float %3644, float %3645, float %3089, float %3090)  ; Dot2(ax,ay,bx,by)
  br label %3670

; <label>:3670                                    ; preds = %3666, %3576
  %3671 = phi float [ %3667, %3666 ], [ 0x3FD6666660000000, %3576 ]
  %3672 = phi float [ %3668, %3666 ], [ 0.000000e+00, %3576 ]
  %3673 = phi float [ %3669, %3666 ], [ 0.000000e+00, %3576 ]
  %3674 = phi float [ %3610, %3666 ], [ 1.000000e+00, %3576 ]
  %3675 = add i32 %48, 208
  %3676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3675, i32 undef)  ; BufferLoad(srv,index,wot)
  %3677 = extractvalue %dx.types.ResRet.i32 %3676, 0
  %3678 = lshr i32 %3677, 22
  %3679 = shl nuw nsw i32 %3678, 5
  %3680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3679)  ; LegacyF16ToF32(value)
  %3681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.i32 %3681, 0
  %3683 = and i32 %3682, 64
  %3684 = icmp eq i32 %3683, 0
  br i1 %3684, label %3718, label %3685

; <label>:3685                                    ; preds = %3670
  %3686 = add i32 %48, 404
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = add i32 %3688, 0
  %3690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3689, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3692 = extractvalue %dx.types.ResRet.i32 %3691, 0
  %3693 = and i32 %3692, 131072
  %3694 = icmp eq i32 %3693, 0
  %3695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3690, %dx.types.Handle %93, float %3183, float %3184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3696 = extractvalue %dx.types.ResRet.f32 %3695, 0
  %3697 = extractvalue %dx.types.ResRet.f32 %3695, 1
  %3698 = extractvalue %dx.types.ResRet.f32 %3695, 2
  %3699 = fmul fast float %3696, %356
  %3700 = fmul fast float %3697, %359
  %3701 = fmul fast float %3698, %362
  br i1 %3694, label %3708, label %3702

; <label>:3702                                    ; preds = %3685
  %3703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3704 = extractvalue %dx.types.CBufRet.f32 %3703, 0
  %3705 = fmul fast float %3704, %3699
  %3706 = fmul fast float %3704, %3700
  %3707 = fmul fast float %3704, %3701
  br label %3708

; <label>:3708                                    ; preds = %3702, %3685
  %3709 = phi float [ %3705, %3702 ], [ %3699, %3685 ]
  %3710 = phi float [ %3706, %3702 ], [ %3700, %3685 ]
  %3711 = phi float [ %3707, %3702 ], [ %3701, %3685 ]
  %3712 = fmul fast float %3709, %3680
  %3713 = select i1 %213, float %3712, float %3709
  %3714 = call float @dx.op.dot3.f32(i32 55, float %3713, float %3710, float %3711, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3715 = select i1 %213, float 0.000000e+00, float %3709
  %3716 = select i1 %213, float %3714, float %3710
  %3717 = select i1 %213, float 0.000000e+00, float %3711
  br label %3718

; <label>:3718                                    ; preds = %3708, %3670
  %3719 = phi float [ %3715, %3708 ], [ 0.000000e+00, %3670 ]
  %3720 = phi float [ %3716, %3708 ], [ 0.000000e+00, %3670 ]
  %3721 = phi float [ %3717, %3708 ], [ 0.000000e+00, %3670 ]
  %3722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.i32 %3722, 0
  %3724 = and i32 %3723, 10240
  %3725 = icmp eq i32 %3724, 0
  br i1 %3725, label %3770, label %3726

; <label>:3726                                    ; preds = %3718
  %3727 = add i32 %48, 468
  %3728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.i32 %3728, 0
  %3730 = add i32 %3729, 0
  %3731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3730, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3732 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3731, %dx.types.Handle %94, float %3183, float %3184, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3733 = extractvalue %dx.types.ResRet.f32 %3732, 1
  %3734 = extractvalue %dx.types.ResRet.f32 %3732, 3
  %3735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.i32 %3735, 0
  %3737 = and i32 %3736, 1048576
  %3738 = icmp ne i32 %3737, 0
  %3739 = and i32 %3736, 8192
  %3740 = icmp eq i32 %3739, 0
  br i1 %3740, label %3756, label %3741

; <label>:3741                                    ; preds = %3726
  %3742 = extractvalue %dx.types.ResRet.f32 %3732, 2
  %3743 = select i1 %3738, float %3742, float %3733
  %3744 = extractvalue %dx.types.ResRet.f32 %3732, 0
  %3745 = select i1 %3738, float %3744, float %3733
  %3746 = add i32 %48, 144
  %3747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.i32 %3747, 0
  %3749 = lshr i32 %3748, 16
  %3750 = and i32 %3749, 255
  %3751 = uitofp i32 %3750 to float
  %3752 = fmul fast float %3751, 0x3F80101020000000
  %3753 = fmul fast float %3752, %3745
  %3754 = fmul fast float %3752, %3733
  %3755 = fmul fast float %3752, %3743
  br label %3756

; <label>:3756                                    ; preds = %3741, %3726
  %3757 = phi float [ %3753, %3741 ], [ 0.000000e+00, %3726 ]
  %3758 = phi float [ %3754, %3741 ], [ 0.000000e+00, %3726 ]
  %3759 = phi float [ %3755, %3741 ], [ 0.000000e+00, %3726 ]
  %3760 = and i32 %3736, 2048
  %3761 = icmp eq i32 %3760, 0
  br i1 %3761, label %3770, label %3762

; <label>:3762                                    ; preds = %3756
  %3763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3675, i32 undef)  ; BufferLoad(srv,index,wot)
  %3764 = extractvalue %dx.types.ResRet.i32 %3763, 0
  %3765 = shl i32 %3764, 4
  %3766 = and i32 %3765, 32752
  %3767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3766)  ; LegacyF16ToF32(value)
  %3768 = fmul fast float %3767, %3734
  %3769 = call float @dx.op.binary.f32(i32 35, float %3768, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3770

; <label>:3770                                    ; preds = %3762, %3756, %3718
  %3771 = phi float [ %3757, %3762 ], [ %3757, %3756 ], [ 0.000000e+00, %3718 ]
  %3772 = phi float [ %3758, %3762 ], [ %3758, %3756 ], [ 0.000000e+00, %3718 ]
  %3773 = phi float [ %3759, %3762 ], [ %3759, %3756 ], [ 0.000000e+00, %3718 ]
  %3774 = phi float [ %3769, %3762 ], [ 0x3F70101020000000, %3756 ], [ 0x3F70101020000000, %3718 ]
  %3775 = add i32 %48, 144
  %3776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3777 = extractvalue %dx.types.ResRet.i32 %3776, 0
  %3778 = and i32 %3777, 255
  %3779 = uitofp i32 %3778 to float
  %3780 = lshr i32 %3777, 8
  %3781 = and i32 %3780, 255
  %3782 = uitofp i32 %3781 to float
  %3783 = call float @dx.op.dot3.f32(i32 55, float %3591, float %3592, float %3593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3784 = fmul fast float %3782, %3783
  %3785 = fadd fast float %3784, %3779
  %3786 = fmul fast float %3785, 0x3F70101020000000
  %3787 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  br i1 %3075, label %3788, label %3796

; <label>:3788                                    ; preds = %3770
  %3789 = fsub fast float 1.000000e+00, %3371
  %3790 = fmul fast float %3789, %3060
  %3791 = fmul fast float %3789, %3061
  %3792 = fmul fast float %3789, %3062
  %3793 = fmul fast float %3789, %3066
  %3794 = fmul fast float %3789, %3067
  %3795 = fmul fast float %3789, %3068
  br label %3796

; <label>:3796                                    ; preds = %3788, %3770
  %3797 = phi float [ %3790, %3788 ], [ %3060, %3770 ]
  %3798 = phi float [ %3791, %3788 ], [ %3061, %3770 ]
  %3799 = phi float [ %3792, %3788 ], [ %3062, %3770 ]
  %3800 = phi float [ %3793, %3788 ], [ %3066, %3770 ]
  %3801 = phi float [ %3794, %3788 ], [ %3067, %3770 ]
  %3802 = phi float [ %3795, %3788 ], [ %3068, %3770 ]
  %3803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.i32 %3803, 0
  %3805 = and i32 %3804, 3
  %3806 = icmp eq i32 %3805, 3
  br i1 %3806, label %3885, label %3807

; <label>:3807                                    ; preds = %3796
  %3808 = and i32 %3804, 16
  %3809 = icmp ne i32 %3808, 0
  %3810 = select i1 %3809, float %3371, float 0.000000e+00
  %3811 = icmp eq i32 %3805, 0
  br i1 %3811, label %3812, label %3840

; <label>:3812                                    ; preds = %3807
  %3813 = and i32 %3804, 64
  %3814 = icmp ne i32 %3813, 0
  %3815 = select i1 %3814, float %3371, float 0.000000e+00
  %3816 = fsub fast float %3591, %3797
  %3817 = fsub fast float %3592, %3798
  %3818 = fsub fast float %3593, %3799
  %3819 = fmul fast float %3810, %3816
  %3820 = fmul fast float %3810, %3817
  %3821 = fmul fast float %3810, %3818
  %3822 = fadd fast float %3819, %3797
  %3823 = fadd fast float %3820, %3798
  %3824 = fadd fast float %3821, %3799
  %3825 = fsub fast float %3577, %3069
  %3826 = fmul fast float %3810, %3825
  %3827 = fadd fast float %3826, %3069
  %3828 = fsub fast float %3719, %3800
  %3829 = fsub fast float %3720, %3801
  %3830 = fsub fast float %3721, %3802
  %3831 = fmul fast float %3815, %3828
  %3832 = fmul fast float %3815, %3829
  %3833 = fmul fast float %3815, %3830
  %3834 = fadd fast float %3831, %3800
  %3835 = fadd fast float %3832, %3801
  %3836 = fadd fast float %3833, %3802
  %3837 = fsub fast float %3787, %3073
  %3838 = fmul fast float %3810, %3837
  %3839 = fadd fast float %3838, %3073
  br label %3885

; <label>:3840                                    ; preds = %3807
  %3841 = icmp eq i32 %3805, 1
  br i1 %3841, label %3842, label %3855

; <label>:3842                                    ; preds = %3840
  %3843 = fadd fast float %3591, -1.000000e+00
  %3844 = fadd fast float %3592, -1.000000e+00
  %3845 = fadd fast float %3593, -1.000000e+00
  %3846 = fmul fast float %3810, %3843
  %3847 = fmul fast float %3810, %3844
  %3848 = fmul fast float %3810, %3845
  %3849 = fadd fast float %3846, 1.000000e+00
  %3850 = fadd fast float %3847, 1.000000e+00
  %3851 = fadd fast float %3848, 1.000000e+00
  %3852 = fmul fast float %3849, %3797
  %3853 = fmul fast float %3850, %3798
  %3854 = fmul fast float %3851, %3799
  br label %3885

; <label>:3855                                    ; preds = %3840
  %3856 = icmp eq i32 %3805, 2
  br i1 %3856, label %3857, label %3885

; <label>:3857                                    ; preds = %3855
  %3858 = call float @dx.op.unary.f32(i32 24, float %3591)  ; Sqrt(value)
  %3859 = call float @dx.op.unary.f32(i32 24, float %3592)  ; Sqrt(value)
  %3860 = call float @dx.op.unary.f32(i32 24, float %3593)  ; Sqrt(value)
  %3861 = fadd fast float %3858, -5.000000e-01
  %3862 = fadd fast float %3859, -5.000000e-01
  %3863 = fadd fast float %3860, -5.000000e-01
  %3864 = fmul fast float %3861, %3810
  %3865 = fmul fast float %3862, %3810
  %3866 = fmul fast float %3863, %3810
  %3867 = fadd fast float %3864, 5.000000e-01
  %3868 = fadd fast float %3865, 5.000000e-01
  %3869 = fadd fast float %3866, 5.000000e-01
  %3870 = fmul fast float %3867, 2.000000e+00
  %3871 = fsub fast float 1.000000e+00, %3870
  %3872 = fmul fast float %3871, %3797
  %3873 = fadd fast float %3872, %3870
  %3874 = fmul fast float %3873, %3797
  %3875 = fmul fast float %3868, 2.000000e+00
  %3876 = fsub fast float 1.000000e+00, %3875
  %3877 = fmul fast float %3876, %3798
  %3878 = fadd fast float %3877, %3875
  %3879 = fmul fast float %3878, %3798
  %3880 = fmul fast float %3869, 2.000000e+00
  %3881 = fsub fast float 1.000000e+00, %3880
  %3882 = fmul fast float %3881, %3799
  %3883 = fadd fast float %3882, %3880
  %3884 = fmul fast float %3883, %3799
  br label %3885

; <label>:3885                                    ; preds = %3857, %3855, %3842, %3812, %3796
  %3886 = phi float [ %3797, %3796 ], [ %3874, %3857 ], [ %3797, %3855 ], [ %3852, %3842 ], [ %3822, %3812 ]
  %3887 = phi float [ %3798, %3796 ], [ %3879, %3857 ], [ %3798, %3855 ], [ %3853, %3842 ], [ %3823, %3812 ]
  %3888 = phi float [ %3799, %3796 ], [ %3884, %3857 ], [ %3799, %3855 ], [ %3854, %3842 ], [ %3824, %3812 ]
  %3889 = phi float [ %3800, %3796 ], [ %3800, %3857 ], [ %3800, %3855 ], [ %3800, %3842 ], [ %3834, %3812 ]
  %3890 = phi float [ %3801, %3796 ], [ %3801, %3857 ], [ %3801, %3855 ], [ %3801, %3842 ], [ %3835, %3812 ]
  %3891 = phi float [ %3802, %3796 ], [ %3802, %3857 ], [ %3802, %3855 ], [ %3802, %3842 ], [ %3836, %3812 ]
  %3892 = phi float [ %3069, %3796 ], [ %3069, %3857 ], [ %3069, %3855 ], [ %3069, %3842 ], [ %3827, %3812 ]
  %3893 = phi float [ %3073, %3796 ], [ %3073, %3857 ], [ %3073, %3855 ], [ %3073, %3842 ], [ %3839, %3812 ]
  %3894 = and i32 %3804, 12
  %3895 = icmp eq i32 %3894, 12
  br i1 %3895, label %4002, label %3896

; <label>:3896                                    ; preds = %3885
  %3897 = and i32 %3804, 2097184
  %3898 = icmp eq i32 %3897, 2097184
  %3899 = select i1 %3898, float %3371, float 0.000000e+00
  %3900 = and i32 %3804, 4194336
  %3901 = icmp eq i32 %3900, 4194336
  %3902 = select i1 %3901, float %3371, float 0.000000e+00
  %3903 = and i32 %3804, 8388640
  %3904 = icmp eq i32 %3903, 8388640
  %3905 = select i1 %3904, float %3371, float 0.000000e+00
  %3906 = and i32 %3804, 2048
  %3907 = icmp ne i32 %3906, 0
  %3908 = select i1 %3907, float %3371, float 0.000000e+00
  %3909 = and i32 %3804, 8192
  %3910 = icmp ne i32 %3909, 0
  %3911 = select i1 %3910, float %3371, float 0.000000e+00
  %3912 = icmp eq i32 %3894, 0
  br i1 %3912, label %3913, label %3938

; <label>:3913                                    ; preds = %3896
  %3914 = fsub fast float %3672, %3058
  %3915 = fsub fast float %3673, %3059
  %3916 = fmul fast float %3899, %3914
  %3917 = fmul fast float %3899, %3915
  %3918 = fadd fast float %3916, %3058
  %3919 = fadd fast float %3917, %3059
  %3920 = fsub fast float %3674, %3071
  %3921 = fmul fast float %3902, %3920
  %3922 = fadd fast float %3921, %3071
  %3923 = fsub fast float %3671, %3070
  %3924 = fmul fast float %3905, %3923
  %3925 = fadd fast float %3924, %3070
  %3926 = fsub fast float %3774, %3072
  %3927 = fmul fast float %3908, %3926
  %3928 = fadd fast float %3927, %3072
  %3929 = fsub fast float %3771, %3063
  %3930 = fsub fast float %3772, %3064
  %3931 = fsub fast float %3773, %3065
  %3932 = fmul fast float %3911, %3929
  %3933 = fmul fast float %3911, %3930
  %3934 = fmul fast float %3911, %3931
  %3935 = fadd fast float %3932, %3063
  %3936 = fadd fast float %3933, %3064
  %3937 = fadd fast float %3934, %3065
  br label %4002

; <label>:3938                                    ; preds = %3896
  %3939 = icmp eq i32 %3894, 4
  br i1 %3939, label %3940, label %3980

; <label>:3940                                    ; preds = %3938
  %3941 = fmul fast float %3899, %3672
  %3942 = fmul fast float %3899, %3673
  %3943 = fadd fast float %3941, %3058
  %3944 = fadd fast float %3942, %3059
  %3945 = call float @dx.op.binary.f32(i32 36, float %3071, float %3674)  ; FMin(a,b)
  %3946 = fsub fast float %3945, %3071
  %3947 = fmul fast float %3946, %3902
  %3948 = fadd fast float %3947, %3071
  %3949 = fadd fast float %3671, %3070
  %3950 = fmul fast float %3949, 0x3FF337FAE0000000
  %3951 = fmul fast float %3070, %3070
  %3952 = fmul fast float %3671, %3671
  %3953 = fadd fast float %3952, %3951
  %3954 = fmul fast float %3953, 0x3FE5152B00000000
  %3955 = fmul fast float %3070, 0xBFCC1F85E0000000
  %3956 = fmul fast float %3955, %3671
  %3957 = fadd fast float %3956, 0xBFE1363700000000
  %3958 = fadd fast float %3957, %3950
  %3959 = fsub fast float %3958, %3954
  %3960 = fmul fast float %3949, 0x3FBA6F0D00000000
  %3961 = fmul fast float %3953, 0x3FD0432880000000
  %3962 = fmul fast float %3070, 0xBFEF110800000000
  %3963 = fmul fast float %3962, %3671
  %3964 = fadd fast float %3963, 1.000000e+00
  %3965 = fsub fast float %3964, %3960
  %3966 = fadd fast float %3965, %3961
  %3967 = fdiv fast float %3959, %3966
  %3968 = call float @dx.op.unary.f32(i32 7, float %3967)  ; Saturate(value)
  %3969 = fsub fast float %3968, %3070
  %3970 = fmul fast float %3969, %3905
  %3971 = fadd fast float %3970, %3070
  %3972 = fmul fast float %3908, %3774
  %3973 = fadd fast float %3972, %3072
  %3974 = fmul fast float %3911, %3771
  %3975 = fmul fast float %3911, %3772
  %3976 = fmul fast float %3911, %3773
  %3977 = fadd fast float %3974, %3063
  %3978 = fadd fast float %3975, %3064
  %3979 = fadd fast float %3976, %3065
  br label %4002

; <label>:3980                                    ; preds = %3938
  %3981 = icmp eq i32 %3894, 8
  br i1 %3981, label %3982, label %4002

; <label>:3982                                    ; preds = %3980
  %3983 = fmul fast float %3899, %3672
  %3984 = fmul fast float %3899, %3673
  %3985 = fadd fast float %3983, %3058
  %3986 = fadd fast float %3984, %3059
  %3987 = call float @dx.op.binary.f32(i32 36, float %3071, float %3674)  ; FMin(a,b)
  %3988 = fsub fast float %3987, %3071
  %3989 = fmul fast float %3988, %3902
  %3990 = fadd fast float %3989, %3071
  %3991 = fsub fast float %3671, %3070
  %3992 = fmul fast float %3905, %3991
  %3993 = fadd fast float %3992, %3070
  %3994 = fmul fast float %3908, %3774
  %3995 = fadd fast float %3994, %3072
  %3996 = fmul fast float %3911, %3771
  %3997 = fmul fast float %3911, %3772
  %3998 = fmul fast float %3911, %3773
  %3999 = fadd fast float %3996, %3063
  %4000 = fadd fast float %3997, %3064
  %4001 = fadd fast float %3998, %3065
  br label %4002

; <label>:4002                                    ; preds = %3982, %3980, %3940, %3913, %3885, %3370, %3074, %3057
  %4003 = phi float [ %3058, %3885 ], [ %3058, %3370 ], [ %3058, %3057 ], [ %3058, %3074 ], [ %3918, %3913 ], [ %3943, %3940 ], [ %3058, %3980 ], [ %3985, %3982 ]
  %4004 = phi float [ %3059, %3885 ], [ %3059, %3370 ], [ %3059, %3057 ], [ %3059, %3074 ], [ %3919, %3913 ], [ %3944, %3940 ], [ %3059, %3980 ], [ %3986, %3982 ]
  %4005 = phi float [ %3886, %3885 ], [ %3060, %3370 ], [ %3060, %3057 ], [ %3060, %3074 ], [ %3886, %3913 ], [ %3886, %3940 ], [ %3886, %3980 ], [ %3886, %3982 ]
  %4006 = phi float [ %3887, %3885 ], [ %3061, %3370 ], [ %3061, %3057 ], [ %3061, %3074 ], [ %3887, %3913 ], [ %3887, %3940 ], [ %3887, %3980 ], [ %3887, %3982 ]
  %4007 = phi float [ %3888, %3885 ], [ %3062, %3370 ], [ %3062, %3057 ], [ %3062, %3074 ], [ %3888, %3913 ], [ %3888, %3940 ], [ %3888, %3980 ], [ %3888, %3982 ]
  %4008 = phi float [ %3063, %3885 ], [ %3063, %3370 ], [ %3063, %3057 ], [ %3063, %3074 ], [ %3935, %3913 ], [ %3977, %3940 ], [ %3063, %3980 ], [ %3999, %3982 ]
  %4009 = phi float [ %3064, %3885 ], [ %3064, %3370 ], [ %3064, %3057 ], [ %3064, %3074 ], [ %3936, %3913 ], [ %3978, %3940 ], [ %3064, %3980 ], [ %4000, %3982 ]
  %4010 = phi float [ %3065, %3885 ], [ %3065, %3370 ], [ %3065, %3057 ], [ %3065, %3074 ], [ %3937, %3913 ], [ %3979, %3940 ], [ %3065, %3980 ], [ %4001, %3982 ]
  %4011 = phi float [ %3889, %3885 ], [ %3066, %3370 ], [ %3066, %3057 ], [ %3066, %3074 ], [ %3889, %3913 ], [ %3889, %3940 ], [ %3889, %3980 ], [ %3889, %3982 ]
  %4012 = phi float [ %3890, %3885 ], [ %3067, %3370 ], [ %3067, %3057 ], [ %3067, %3074 ], [ %3890, %3913 ], [ %3890, %3940 ], [ %3890, %3980 ], [ %3890, %3982 ]
  %4013 = phi float [ %3891, %3885 ], [ %3068, %3370 ], [ %3068, %3057 ], [ %3068, %3074 ], [ %3891, %3913 ], [ %3891, %3940 ], [ %3891, %3980 ], [ %3891, %3982 ]
  %4014 = phi float [ %3892, %3885 ], [ %3069, %3370 ], [ %3069, %3057 ], [ %3069, %3074 ], [ %3892, %3913 ], [ %3892, %3940 ], [ %3892, %3980 ], [ %3892, %3982 ]
  %4015 = phi float [ %3070, %3885 ], [ %3070, %3370 ], [ %3070, %3057 ], [ %3070, %3074 ], [ %3925, %3913 ], [ %3971, %3940 ], [ %3070, %3980 ], [ %3993, %3982 ]
  %4016 = phi float [ %3071, %3885 ], [ %3071, %3370 ], [ %3071, %3057 ], [ %3071, %3074 ], [ %3922, %3913 ], [ %3948, %3940 ], [ %3071, %3980 ], [ %3990, %3982 ]
  %4017 = phi float [ %3072, %3885 ], [ %3072, %3370 ], [ %3072, %3057 ], [ %3072, %3074 ], [ %3928, %3913 ], [ %3973, %3940 ], [ %3072, %3980 ], [ %3995, %3982 ]
  %4018 = phi float [ %3893, %3885 ], [ %3073, %3370 ], [ %3073, %3057 ], [ %3073, %3074 ], [ %3893, %3913 ], [ %3893, %3940 ], [ %3893, %3980 ], [ %3893, %3982 ]
  %4019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.f32 %4019, 0
  %4021 = call float @dx.op.dot2.f32(i32 54, float %4003, float %4004, float %4003, float %4004)  ; Dot2(ax,ay,bx,by)
  %4022 = fmul fast float %4021, 0x3FE3333340000000
  %4023 = fsub fast float 1.000000e+00, %4022
  %4024 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4004, float %4023, float %4003, float %4004, float %4023)  ; Dot3(ax,ay,az,bx,by,bz)
  %4025 = call float @dx.op.unary.f32(i32 25, float %4024)  ; Rsqrt(value)
  %4026 = fmul fast float %4025, %4003
  %4027 = fmul fast float %4025, %4004
  %4028 = fmul fast float %4023, %4025
  %4029 = fmul fast float %4028, %104
  %4030 = fmul fast float %4028, %105
  %4031 = fmul fast float %4028, %106
  %4032 = fmul fast float %4026, %69
  %4033 = fmul fast float %4026, %70
  %4034 = fmul fast float %4026, %71
  %4035 = fadd fast float %4029, %4032
  %4036 = fadd fast float %4030, %4033
  %4037 = fadd fast float %4031, %4034
  %4038 = fmul fast float %116, %4027
  %4039 = fmul fast float %117, %4027
  %4040 = fmul fast float %118, %4027
  %4041 = fadd fast float %4035, %4038
  %4042 = fadd fast float %4036, %4039
  %4043 = fadd fast float %4037, %4040
  %4044 = call float @dx.op.dot3.f32(i32 55, float %4041, float %4042, float %4043, float %4041, float %4042, float %4043)  ; Dot3(ax,ay,az,bx,by,bz)
  %4045 = call float @dx.op.unary.f32(i32 25, float %4044)  ; Rsqrt(value)
  %4046 = fmul fast float %4041, %4045
  %4047 = fmul fast float %4042, %4045
  %4048 = fmul fast float %4043, %4045
  %4049 = and i32 %50, 1
  %4050 = icmp eq i32 %4049, 0
  br i1 %4050, label %4051, label %4612

; <label>:4051                                    ; preds = %4002
  %4052 = call float @dx.op.unary.f32(i32 83, float %152)  ; DerivCoarseX(value)
  %4053 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %4054 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4055 = call float @dx.op.unary.f32(i32 84, float %152)  ; DerivCoarseY(value)
  %4056 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %4057 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4058 = fadd fast float %4052, %152
  %4059 = fadd fast float %4053, %153
  %4060 = fadd fast float %4054, %154
  %4061 = fadd fast float %4055, %152
  %4062 = fadd fast float %4056, %153
  %4063 = fadd fast float %4057, %154
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 0
  %4066 = extractvalue %dx.types.CBufRet.f32 %4064, 1
  %4067 = extractvalue %dx.types.CBufRet.f32 %4064, 2
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 2
  %4070 = extractvalue %dx.types.CBufRet.f32 %4068, 3
  %4071 = fmul fast float %4065, %97
  %4072 = fmul fast float %4071, %4069
  %4073 = fmul fast float %4066, %98
  %4074 = fmul fast float %4073, %4070
  %4075 = fptoui float %4072 to i32
  %4076 = fptoui float %4074 to i32
  %4077 = fadd fast float %4065, -1.000000e+00
  %4078 = fadd fast float %4066, -1.000000e+00
  %4079 = fptoui float %4077 to i32
  %4080 = fptoui float %4078 to i32
  %4081 = call i32 @dx.op.binary.i32(i32 40, i32 %4075, i32 %4079)  ; UMin(a,b)
  %4082 = call i32 @dx.op.binary.i32(i32 40, i32 %4076, i32 %4080)  ; UMin(a,b)
  %4083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4083, 2
  %4085 = extractvalue %dx.types.CBufRet.f32 %4083, 3
  %4086 = fmul fast float %4084, %85
  %4087 = fsub fast float %4086, %4085
  %4088 = fadd fast float %4067, -1.000000e+00
  %4089 = call float @dx.op.binary.f32(i32 36, float %4087, float %4088)  ; FMin(a,b)
  %4090 = fptoui float %4089 to i32
  %4091 = fptoui float %4065 to i32
  %4092 = fptoui float %4066 to i32
  %4093 = mul i32 %4090, %4092
  %4094 = add i32 %4093, %4082
  %4095 = mul i32 %4094, %4091
  %4096 = add i32 %4095, %4081
  %4097 = shl i32 %4096, 2
  %4098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4097, i32 undef)  ; BufferLoad(srv,index,wot)
  %4099 = extractvalue %dx.types.ResRet.i32 %4098, 0
  %4100 = and i32 %4099, 1023
  %4101 = lshr i32 %4099, 10
  %4102 = icmp eq i32 %4100, 0
  br i1 %4102, label %4578, label %4103

; <label>:4103                                    ; preds = %4051
  %4104 = and i32 %4099, 1023
  br label %4105

; <label>:4105                                    ; preds = %4234, %4103
  %4106 = phi i32 [ %4184, %4234 ], [ 0, %4103 ]
  %4107 = phi float [ %4235, %4234 ], [ 0.000000e+00, %4103 ]
  %4108 = phi float [ %4236, %4234 ], [ %4020, %4103 ]
  %4109 = phi float [ %4237, %4234 ], [ %4018, %4103 ]
  %4110 = phi float [ %4238, %4234 ], [ 0.000000e+00, %4103 ]
  %4111 = phi float [ %4239, %4234 ], [ 0.000000e+00, %4103 ]
  %4112 = phi float [ %4240, %4234 ], [ %4008, %4103 ]
  %4113 = phi float [ %4241, %4234 ], [ %4009, %4103 ]
  %4114 = phi float [ %4242, %4234 ], [ %4010, %4103 ]
  %4115 = phi float [ %4243, %4234 ], [ %4011, %4103 ]
  %4116 = phi float [ %4244, %4234 ], [ %4012, %4103 ]
  %4117 = phi float [ %4245, %4234 ], [ %4013, %4103 ]
  %4118 = phi float [ %4246, %4234 ], [ %4046, %4103 ]
  %4119 = phi float [ %4247, %4234 ], [ %4047, %4103 ]
  %4120 = phi float [ %4248, %4234 ], [ %4048, %4103 ]
  %4121 = phi float [ %4249, %4234 ], [ %4016, %4103 ]
  %4122 = phi float [ %4250, %4234 ], [ %4015, %4103 ]
  %4123 = phi float [ %4251, %4234 ], [ 0.000000e+00, %4103 ]
  %4124 = phi float [ %4252, %4234 ], [ %4014, %4103 ]
  %4125 = phi float [ %4253, %4234 ], [ %4005, %4103 ]
  %4126 = phi float [ %4254, %4234 ], [ %4006, %4103 ]
  %4127 = phi float [ %4255, %4234 ], [ %4007, %4103 ]
  %4128 = add nuw nsw i32 %4106, %4101
  %4129 = shl i32 %4128, 2
  %4130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4129, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.i32 %4130, 0
  %4132 = shl i32 %4131, 8
  %4133 = or i32 %4132, 48
  %4134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.ResRet.f32 %4134, 1
  %4137 = extractvalue %dx.types.ResRet.f32 %4134, 2
  %4138 = extractvalue %dx.types.ResRet.f32 %4134, 3
  %4139 = or i32 %4132, 64
  %4140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4139, i32 undef)  ; BufferLoad(srv,index,wot)
  %4141 = extractvalue %dx.types.ResRet.i32 %4140, 0
  %4142 = extractvalue %dx.types.ResRet.i32 %4140, 1
  %4143 = or i32 %4132, 80
  %4144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.f32 %4144, 2
  %4146 = extractvalue %dx.types.ResRet.f32 %4144, 3
  %4147 = or i32 %4132, 96
  %4148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4147, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4150 = extractvalue %dx.types.ResRet.f32 %4148, 1
  %4151 = extractvalue %dx.types.ResRet.f32 %4148, 2
  %4152 = extractvalue %dx.types.ResRet.f32 %4148, 3
  %4153 = or i32 %4132, 112
  %4154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4153, i32 undef)  ; BufferLoad(srv,index,wot)
  %4155 = extractvalue %dx.types.ResRet.f32 %4154, 2
  %4156 = or i32 %4132, 128
  %4157 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4156, i32 undef)  ; BufferLoad(srv,index,wot)
  %4158 = extractvalue %dx.types.ResRet.f32 %4157, 0
  %4159 = extractvalue %dx.types.ResRet.f32 %4157, 1
  %4160 = extractvalue %dx.types.ResRet.f32 %4157, 2
  %4161 = extractvalue %dx.types.ResRet.f32 %4157, 3
  %4162 = or i32 %4132, 144
  %4163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4162, i32 undef)  ; BufferLoad(srv,index,wot)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.ResRet.f32 %4163, 1
  %4166 = extractvalue %dx.types.ResRet.f32 %4163, 2
  %4167 = extractvalue %dx.types.ResRet.f32 %4163, 3
  %4168 = or i32 %4132, 160
  %4169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.ResRet.f32 %4169, 2
  %4173 = extractvalue %dx.types.ResRet.f32 %4169, 3
  %4174 = or i32 %4132, 192
  %4175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4174, i32 undef)  ; BufferLoad(srv,index,wot)
  %4176 = extractvalue %dx.types.ResRet.i32 %4175, 0
  %4177 = or i32 %4132, 208
  %4178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4177, i32 undef)  ; BufferLoad(srv,index,wot)
  %4179 = extractvalue %dx.types.ResRet.f32 %4178, 0
  %4180 = or i32 %4132, 248
  %4181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.ResRet.f32 %4181, 1
  %4184 = add nuw nsw i32 %4106, 1
  %4185 = bitcast float %4138 to i32
  %4186 = and i32 %4185, 512
  %4187 = icmp eq i32 %4186, 0
  %4188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4132, i32 undef)  ; BufferLoad(srv,index,wot)
  %4189 = extractvalue %dx.types.ResRet.f32 %4188, 0
  %4190 = extractvalue %dx.types.ResRet.f32 %4188, 1
  %4191 = extractvalue %dx.types.ResRet.f32 %4188, 2
  %4192 = extractvalue %dx.types.ResRet.f32 %4188, 3
  %4193 = call float @dx.op.dot4.f32(i32 56, float %4189, float %4190, float %4191, float %4192, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4194 = or i32 %4132, 16
  %4195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4194, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.ResRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.ResRet.f32 %4195, 2
  %4199 = extractvalue %dx.types.ResRet.f32 %4195, 3
  %4200 = call float @dx.op.dot4.f32(i32 56, float %4196, float %4197, float %4198, float %4199, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4201 = or i32 %4132, 32
  %4202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4201, i32 undef)  ; BufferLoad(srv,index,wot)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = extractvalue %dx.types.ResRet.f32 %4202, 1
  %4205 = extractvalue %dx.types.ResRet.f32 %4202, 2
  %4206 = extractvalue %dx.types.ResRet.f32 %4202, 3
  %4207 = call float @dx.op.dot4.f32(i32 56, float %4203, float %4204, float %4205, float %4206, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4208 = call float @dx.op.unary.f32(i32 27, float %4193)  ; Round_ni(value)
  %4209 = call float @dx.op.unary.f32(i32 6, float %4208)  ; FAbs(value)
  %4210 = call float @dx.op.unary.f32(i32 27, float %4200)  ; Round_ni(value)
  %4211 = call float @dx.op.unary.f32(i32 6, float %4210)  ; FAbs(value)
  %4212 = call float @dx.op.unary.f32(i32 6, float %4207)  ; FAbs(value)
  %4213 = call float @dx.op.unary.f32(i32 27, float %4212)  ; Round_ni(value)
  %4214 = fadd fast float %4211, %4209
  %4215 = fadd fast float %4214, %4213
  %4216 = fcmp fast oeq float %4215, 0.000000e+00
  %4217 = call float @dx.op.dot4.f32(i32 56, float %4189, float %4190, float %4191, float %4192, float %4058, float %4059, float %4060, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4218 = call float @dx.op.dot4.f32(i32 56, float %4196, float %4197, float %4198, float %4199, float %4058, float %4059, float %4060, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4219 = call float @dx.op.dot4.f32(i32 56, float %4189, float %4190, float %4191, float %4192, float %4061, float %4062, float %4063, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4220 = call float @dx.op.dot4.f32(i32 56, float %4196, float %4197, float %4198, float %4199, float %4061, float %4062, float %4063, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4221 = fsub fast float %4217, %4193
  %4222 = fsub fast float %4219, %4193
  %4223 = fsub fast float %4218, %4200
  %4224 = fsub fast float %4220, %4200
  %4225 = call float @dx.op.dot3.f32(i32 55, float %4135, float %4136, float %4137, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4226, 2
  %4228 = fadd fast float %4227, %4225
  %4229 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4226, 0
  %4231 = fcmp fast ogt float %4229, %4230
  %4232 = and i1 %4216, %4231
  %4233 = and i1 %4187, %4232
  br i1 %4233, label %4257, label %4234

; <label>:4234                                    ; preds = %4564, %4338, %4257, %4105
  %4235 = phi float [ %4107, %4257 ], [ %4341, %4338 ], [ %4341, %4564 ], [ %4107, %4105 ]
  %4236 = phi float [ %4108, %4257 ], [ %4108, %4338 ], [ %4540, %4564 ], [ %4108, %4105 ]
  %4237 = phi float [ %4109, %4257 ], [ %4109, %4338 ], [ %4538, %4564 ], [ %4109, %4105 ]
  %4238 = phi float [ %4110, %4257 ], [ %4110, %4338 ], [ %4465, %4564 ], [ %4110, %4105 ]
  %4239 = phi float [ %4111, %4257 ], [ %4111, %4338 ], [ %4463, %4564 ], [ %4111, %4105 ]
  %4240 = phi float [ %4112, %4257 ], [ %4112, %4338 ], [ %4508, %4564 ], [ %4112, %4105 ]
  %4241 = phi float [ %4113, %4257 ], [ %4113, %4338 ], [ %4509, %4564 ], [ %4113, %4105 ]
  %4242 = phi float [ %4114, %4257 ], [ %4114, %4338 ], [ %4510, %4564 ], [ %4114, %4105 ]
  %4243 = phi float [ %4115, %4257 ], [ %4115, %4338 ], [ %4574, %4564 ], [ %4115, %4105 ]
  %4244 = phi float [ %4116, %4257 ], [ %4116, %4338 ], [ %4575, %4564 ], [ %4116, %4105 ]
  %4245 = phi float [ %4117, %4257 ], [ %4117, %4338 ], [ %4576, %4564 ], [ %4117, %4105 ]
  %4246 = phi float [ %4118, %4257 ], [ %4118, %4338 ], [ %4444, %4564 ], [ %4118, %4105 ]
  %4247 = phi float [ %4119, %4257 ], [ %4119, %4338 ], [ %4445, %4564 ], [ %4119, %4105 ]
  %4248 = phi float [ %4120, %4257 ], [ %4120, %4338 ], [ %4446, %4564 ], [ %4120, %4105 ]
  %4249 = phi float [ %4121, %4257 ], [ %4121, %4338 ], [ %4518, %4564 ], [ %4121, %4105 ]
  %4250 = phi float [ %4122, %4257 ], [ %4122, %4338 ], [ %4515, %4564 ], [ %4122, %4105 ]
  %4251 = phi float [ %4123, %4257 ], [ %4123, %4338 ], [ %4512, %4564 ], [ %4123, %4105 ]
  %4252 = phi float [ %4124, %4257 ], [ %4124, %4338 ], [ %4461, %4564 ], [ %4124, %4105 ]
  %4253 = phi float [ %4125, %4257 ], [ %4125, %4338 ], [ %4456, %4564 ], [ %4125, %4105 ]
  %4254 = phi float [ %4126, %4257 ], [ %4126, %4338 ], [ %4457, %4564 ], [ %4126, %4105 ]
  %4255 = phi float [ %4127, %4257 ], [ %4127, %4338 ], [ %4458, %4564 ], [ %4127, %4105 ]
  %4256 = icmp eq i32 %4184, %4104
  br i1 %4256, label %4577, label %4105

; <label>:4257                                    ; preds = %4105
  %4258 = extractvalue %dx.types.ResRet.f32 %4154, 3
  %4259 = extractvalue %dx.types.ResRet.f32 %4154, 1
  %4260 = extractvalue %dx.types.ResRet.f32 %4154, 0
  %4261 = extractvalue %dx.types.ResRet.f32 %4144, 1
  %4262 = extractvalue %dx.types.ResRet.f32 %4144, 0
  %4263 = extractvalue %dx.types.ResRet.i32 %4140, 3
  %4264 = extractvalue %dx.types.ResRet.i32 %4140, 2
  %4265 = add i32 %4263, 0
  %4266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4265, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4268 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4266, %dx.types.Handle %4267, float %4193, float %4200, float undef, float undef, i32 0, i32 0, i32 undef, float %4221, float %4223, float undef, float %4222, float %4224, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = fmul fast float %4269, %4262
  %4271 = fadd fast float %4270, %4261
  %4272 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4273 = fmul fast float %4193, %4149
  %4274 = call float @dx.op.tertiary.f32(i32 46, float %4150, float %4200, float %4273)  ; FMad(a,b,c)
  %4275 = fadd fast float %4274, %4260
  %4276 = fmul fast float %4193, %4151
  %4277 = call float @dx.op.tertiary.f32(i32 46, float %4152, float %4200, float %4276)  ; FMad(a,b,c)
  %4278 = fadd fast float %4277, %4259
  %4279 = fmul fast float %4221, %4149
  %4280 = call float @dx.op.tertiary.f32(i32 46, float %4150, float %4223, float %4279)  ; FMad(a,b,c)
  %4281 = fmul fast float %4221, %4151
  %4282 = call float @dx.op.tertiary.f32(i32 46, float %4152, float %4223, float %4281)  ; FMad(a,b,c)
  %4283 = fmul fast float %4222, %4149
  %4284 = call float @dx.op.tertiary.f32(i32 46, float %4150, float %4224, float %4283)  ; FMad(a,b,c)
  %4285 = fmul fast float %4222, %4151
  %4286 = call float @dx.op.tertiary.f32(i32 46, float %4152, float %4224, float %4285)  ; FMad(a,b,c)
  %4287 = add i32 %4264, 0
  %4288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4287, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4289 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4288, %dx.types.Handle %4267, float %4275, float %4278, float undef, float undef, i32 0, i32 0, i32 undef, float %4280, float %4282, float undef, float %4284, float %4286, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = and i32 %4185, 1024
  %4292 = icmp ne i32 %4291, 0
  %4293 = fcmp fast ogt float %4290, 0x3FE0101020000000
  %4294 = uitofp i1 %4293 to float
  %4295 = select i1 %4292, float %4294, float %4290
  %4296 = and i32 %4185, 8192
  %4297 = icmp ne i32 %4296, 0
  %4298 = select i1 %4297, float %4258, float 1.000000e+00
  %4299 = fmul fast float %4193, 2.000000e+00
  %4300 = fadd fast float %4299, -1.000000e+00
  %4301 = call float @dx.op.unary.f32(i32 6, float %4300)  ; FAbs(value)
  %4302 = fmul fast float %4301, %4182
  %4303 = fsub fast float %4302, %4182
  %4304 = call float @dx.op.unary.f32(i32 7, float %4303)  ; Saturate(value)
  %4305 = fmul fast float %4200, 2.000000e+00
  %4306 = fadd fast float %4305, -1.000000e+00
  %4307 = call float @dx.op.unary.f32(i32 6, float %4306)  ; FAbs(value)
  %4308 = fmul fast float %4307, %4183
  %4309 = fsub fast float %4308, %4183
  %4310 = call float @dx.op.unary.f32(i32 7, float %4309)  ; Saturate(value)
  %4311 = fmul fast float %4212, %4145
  %4312 = fsub fast float %4311, %4145
  %4313 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  %4314 = fmul fast float %4272, %4298
  %4315 = fmul fast float %4314, %4269
  %4316 = fmul fast float %4315, %4304
  %4317 = fmul fast float %4316, %4295
  %4318 = fmul fast float %4317, %4310
  %4319 = fmul fast float %4318, %4313
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 1
  %4322 = extractvalue %dx.types.CBufRet.f32 %4320, 0
  %4323 = fsub fast float %4229, %4322
  %4324 = fmul fast float %4323, %4321
  %4325 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4326 = fmul fast float %4319, %4146
  %4327 = fadd fast float %4319, %4146
  %4328 = fmul fast float %4327, %4155
  %4329 = fsub fast float %4328, %4155
  %4330 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4331 = and i32 %4185, 128
  %4332 = icmp ne i32 %4331, 0
  %4333 = select i1 %4332, float %4330, float %4326
  %4334 = fmul fast float %4333, %4325
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 0
  %4337 = fcmp fast ugt float %4334, %4336
  br i1 %4337, label %4338, label %4234

; <label>:4338                                    ; preds = %4257
  %4339 = select i1 %4297, float %4334, float 0.000000e+00
  %4340 = fadd fast float %4339, %4107
  %4341 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  br i1 %4297, label %4234, label %4342

; <label>:4342                                    ; preds = %4338
  %4343 = and i32 %4185, 4
  %4344 = and i32 %4185, 8
  %4345 = add i32 %4141, 0
  %4346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4345, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4348 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4346, %dx.types.Handle %4347, float %4275, float %4278, float undef, float undef, i32 0, i32 0, i32 undef, float %4280, float %4282, float undef, float %4284, float %4286, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4349 = extractvalue %dx.types.ResRet.f32 %4348, 0
  %4350 = extractvalue %dx.types.ResRet.f32 %4348, 1
  %4351 = extractvalue %dx.types.ResRet.f32 %4348, 2
  %4352 = extractvalue %dx.types.ResRet.f32 %4348, 3
  %4353 = bitcast float %4167 to i32
  %4354 = and i32 %4353, 255
  %4355 = uitofp i32 %4354 to float
  %4356 = lshr i32 %4353, 8
  %4357 = and i32 %4356, 255
  %4358 = uitofp i32 %4357 to float
  %4359 = fmul fast float %4352, %4355
  %4360 = fadd fast float %4359, %4358
  %4361 = fmul fast float %4360, 0x3F70101000000000
  %4362 = add i32 %4142, 0
  %4363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4362, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4364 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4363, %dx.types.Handle %4347, float %4275, float %4278, float undef, float undef, i32 0, i32 0, i32 undef, float %4280, float %4282, float undef, float %4284, float %4286, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4365 = extractvalue %dx.types.ResRet.f32 %4364, 0
  %4366 = extractvalue %dx.types.ResRet.f32 %4364, 1
  %4367 = extractvalue %dx.types.ResRet.f32 %4364, 2
  %4368 = extractvalue %dx.types.ResRet.f32 %4364, 3
  %4369 = bitcast float %4161 to i32
  %4370 = and i32 %4369, 255
  %4371 = uitofp i32 %4370 to float
  %4372 = lshr i32 %4369, 8
  %4373 = and i32 %4372, 255
  %4374 = uitofp i32 %4373 to float
  %4375 = lshr i32 %4369, 16
  %4376 = and i32 %4375, 255
  %4377 = uitofp i32 %4376 to float
  %4378 = fmul fast float %4377, 0x3F70101000000000
  %4379 = fmul fast float %4365, %4371
  %4380 = fadd fast float %4379, %4374
  %4381 = fmul fast float %4380, 0x3F70101000000000
  %4382 = fadd fast float %4366, -5.000000e-01
  %4383 = fadd fast float %4368, -5.000000e-01
  %4384 = fmul fast float %4382, %4378
  %4385 = fmul fast float %4383, %4378
  %4386 = fadd fast float %4384, 5.000000e-01
  %4387 = fadd fast float %4385, 5.000000e-01
  %4388 = fmul fast float %4349, %4170
  %4389 = fmul fast float %4350, %4171
  %4390 = fmul fast float %4351, %4172
  %4391 = fmul fast float %4386, 2.000000e+00
  %4392 = fadd fast float %4391, -1.000000e+00
  %4393 = fmul fast float %4387, 2.000000e+00
  %4394 = fadd fast float %4393, -1.000000e+00
  %4395 = fadd fast float %4392, %4394
  %4396 = fmul fast float %4395, 5.000000e-01
  %4397 = fsub fast float %4392, %4394
  %4398 = fmul fast float %4397, 5.000000e-01
  %4399 = call float @dx.op.unary.f32(i32 6, float %4396)  ; FAbs(value)
  %4400 = fsub fast float 1.000000e+00, %4399
  %4401 = call float @dx.op.unary.f32(i32 6, float %4398)  ; FAbs(value)
  %4402 = fsub fast float %4400, %4401
  %4403 = call float @dx.op.dot3.f32(i32 55, float %4396, float %4398, float %4402, float %4396, float %4398, float %4402)  ; Dot3(ax,ay,az,bx,by,bz)
  %4404 = call float @dx.op.unary.f32(i32 25, float %4403)  ; Rsqrt(value)
  %4405 = fmul fast float %4396, %4404
  %4406 = fmul fast float %4398, %4404
  %4407 = fmul fast float %4404, %4402
  %4408 = fmul fast float %4407, %4135
  %4409 = fmul fast float %4407, %4136
  %4410 = fmul fast float %4407, %4137
  %4411 = fmul fast float %4405, %4158
  %4412 = fmul fast float %4405, %4159
  %4413 = fmul fast float %4405, %4160
  %4414 = fadd fast float %4411, %4408
  %4415 = fadd fast float %4412, %4409
  %4416 = fadd fast float %4413, %4410
  %4417 = fmul fast float %4406, %4164
  %4418 = fmul fast float %4406, %4165
  %4419 = fmul fast float %4406, %4166
  %4420 = fadd fast float %4414, %4417
  %4421 = fadd fast float %4415, %4418
  %4422 = fadd fast float %4416, %4419
  %4423 = call float @dx.op.dot3.f32(i32 55, float %4420, float %4421, float %4422, float %4420, float %4421, float %4422)  ; Dot3(ax,ay,az,bx,by,bz)
  %4424 = call float @dx.op.unary.f32(i32 25, float %4423)  ; Rsqrt(value)
  %4425 = fmul fast float %4420, %4424
  %4426 = fmul fast float %4421, %4424
  %4427 = fmul fast float %4422, %4424
  %4428 = icmp ne i32 %4344, 0
  %4429 = select i1 %4428, float 1.000000e+00, float 0.000000e+00
  %4430 = fmul fast float %4334, %4429
  %4431 = and i32 %4185, 1
  %4432 = icmp eq i32 %4431, 0
  br i1 %4432, label %4433, label %4437

; <label>:4433                                    ; preds = %4342
  %4434 = fsub fast float %4425, %4118
  %4435 = fsub fast float %4426, %4119
  %4436 = fsub fast float %4427, %4120
  br label %4437

; <label>:4437                                    ; preds = %4433, %4342
  %4438 = phi float [ %4434, %4433 ], [ %4425, %4342 ]
  %4439 = phi float [ %4435, %4433 ], [ %4426, %4342 ]
  %4440 = phi float [ %4436, %4433 ], [ %4427, %4342 ]
  %4441 = fmul float %4440, %4430
  %4442 = fmul float %4439, %4430
  %4443 = fmul float %4438, %4430
  %4444 = fadd fast float %4443, %4118
  %4445 = fadd fast float %4442, %4119
  %4446 = fadd fast float %4441, %4120
  %4447 = icmp ne i32 %4343, 0
  %4448 = select i1 %4447, float 1.000000e+00, float 0.000000e+00
  %4449 = fmul fast float %4334, %4448
  %4450 = fsub fast float %4388, %4125
  %4451 = fsub fast float %4389, %4126
  %4452 = fsub fast float %4390, %4127
  %4453 = fmul fast float %4450, %4449
  %4454 = fmul fast float %4451, %4449
  %4455 = fmul fast float %4452, %4449
  %4456 = fadd fast float %4453, %4125
  %4457 = fadd fast float %4454, %4126
  %4458 = fadd fast float %4455, %4127
  %4459 = fsub fast float %4361, %4124
  %4460 = fmul fast float %4459, %4449
  %4461 = fadd fast float %4460, %4124
  %4462 = fmul fast float %4449, %4111
  %4463 = fsub fast float %4111, %4462
  %4464 = fmul fast float %4449, %4110
  %4465 = fsub fast float %4110, %4464
  %4466 = bitcast float %4179 to i32
  %4467 = lshr i32 %4466, 16
  %4468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4467)  ; LegacyF16ToF32(value)
  %4469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4470 = extractvalue %dx.types.ResRet.i32 %4469, 0
  %4471 = and i32 %4470, 1
  %4472 = icmp eq i32 %4471, 0
  br i1 %4472, label %4473, label %4498

; <label>:4473                                    ; preds = %4437
  %4474 = fadd fast float %4361, 0xBFB99999A0000000
  %4475 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4476 = fmul fast float %4475, 0x3FF1C71C80000000
  %4477 = fsub fast float 1.000000e+00, %4476
  %4478 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4479 = fmul fast float %4478, %4388
  %4480 = fmul fast float %4478, %4389
  %4481 = fmul fast float %4478, %4390
  %4482 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4483 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4484 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4485 = call float @dx.op.binary.f32(i32 35, float %4483, float %4484)  ; FMax(a,b)
  %4486 = call float @dx.op.binary.f32(i32 35, float %4482, float %4485)  ; FMax(a,b)
  %4487 = fcmp fast ogt float %4486, 0.000000e+00
  %4488 = bitcast float %4486 to i32
  %4489 = sub nsw i32 2129859010, %4488
  %4490 = bitcast i32 %4489 to float
  %4491 = select i1 %4487, float %4490, float 0.000000e+00
  %4492 = fmul fast float %4482, %4468
  %4493 = fmul fast float %4483, %4468
  %4494 = fmul fast float %4484, %4468
  %4495 = fmul fast float %4492, %4491
  %4496 = fmul fast float %4493, %4491
  %4497 = fmul fast float %4494, %4491
  br label %4498

; <label>:4498                                    ; preds = %4473, %4437
  %4499 = phi float [ %4468, %4437 ], [ %4495, %4473 ]
  %4500 = phi float [ %4468, %4437 ], [ %4496, %4473 ]
  %4501 = phi float [ %4468, %4437 ], [ %4497, %4473 ]
  %4502 = fsub fast float %4499, %4112
  %4503 = fsub fast float %4500, %4113
  %4504 = fsub fast float %4501, %4114
  %4505 = fmul fast float %4502, %4449
  %4506 = fmul fast float %4503, %4449
  %4507 = fmul fast float %4504, %4449
  %4508 = fadd fast float %4505, %4112
  %4509 = fadd fast float %4506, %4113
  %4510 = fadd fast float %4507, %4114
  %4511 = fadd fast float %4334, %4123
  %4512 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4513 = fsub fast float %4381, %4122
  %4514 = fmul fast float %4513, %4430
  %4515 = fadd fast float %4514, %4122
  %4516 = fsub fast float %4367, %4121
  %4517 = fmul fast float %4516, %4430
  %4518 = fadd fast float %4517, %4121
  %4519 = call float @dx.op.dot3.f32(i32 55, float %4388, float %4389, float %4390, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4521 = extractvalue %dx.types.CBufRet.f32 %4520, 0
  %4522 = extractvalue %dx.types.CBufRet.f32 %4520, 1
  %4523 = fmul fast float %4522, %4519
  %4524 = fadd fast float %4523, %4521
  %4525 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4526 = bitcast float %4173 to i32
  %4527 = and i32 %4526, 65535
  %4528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4527)  ; LegacyF16ToF32(value)
  %4529 = lshr i32 %4526, 16
  %4530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4529)  ; LegacyF16ToF32(value)
  %4531 = fcmp fast oge float %4528, 0.000000e+00
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 0
  %4534 = select i1 %4531, float %4528, float %4533
  %4535 = fadd fast float %4534, %4530
  %4536 = fsub fast float %4525, %4109
  %4537 = fmul fast float %4536, %4334
  %4538 = fadd fast float %4537, %4109
  %4539 = fmul fast float %4535, %4334
  %4540 = call float @dx.op.binary.f32(i32 35, float %4108, float %4539)  ; FMax(a,b)
  %4541 = and i32 %4185, 16
  %4542 = icmp eq i32 %4541, 0
  br i1 %4542, label %4564, label %4543

; <label>:4543                                    ; preds = %4498
  %4544 = add i32 %4176, 0
  %4545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4544, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4546 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4545, %dx.types.Handle %4347, float %4275, float %4278, float undef, float undef, i32 0, i32 0, i32 undef, float %4280, float %4282, float undef, float %4284, float %4286, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4547 = extractvalue %dx.types.ResRet.f32 %4546, 0
  %4548 = extractvalue %dx.types.ResRet.f32 %4546, 1
  %4549 = extractvalue %dx.types.ResRet.f32 %4546, 2
  %4550 = and i32 %4466, 65535
  %4551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4550)  ; LegacyF16ToF32(value)
  %4552 = fmul fast float %4547, %4170
  %4553 = fmul fast float %4548, %4171
  %4554 = fmul fast float %4549, %4172
  %4555 = and i32 %4185, 16384
  %4556 = icmp ne i32 %4555, 0
  %4557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4558 = extractvalue %dx.types.CBufRet.f32 %4557, 0
  %4559 = select i1 %4556, float %4558, float 1.000000e+00
  %4560 = fmul fast float %4559, %4551
  %4561 = fmul fast float %4552, %4560
  %4562 = fmul fast float %4553, %4560
  %4563 = fmul fast float %4554, %4560
  br label %4564

; <label>:4564                                    ; preds = %4543, %4498
  %4565 = phi float [ %4561, %4543 ], [ 0.000000e+00, %4498 ]
  %4566 = phi float [ %4562, %4543 ], [ 0.000000e+00, %4498 ]
  %4567 = phi float [ %4563, %4543 ], [ 0.000000e+00, %4498 ]
  %4568 = fsub fast float %4565, %4115
  %4569 = fsub fast float %4566, %4116
  %4570 = fsub fast float %4567, %4117
  %4571 = fmul fast float %4568, %4334
  %4572 = fmul fast float %4569, %4334
  %4573 = fmul fast float %4570, %4334
  %4574 = fadd fast float %4571, %4115
  %4575 = fadd fast float %4572, %4116
  %4576 = fadd fast float %4573, %4117
  br label %4234

; <label>:4577                                    ; preds = %4234
  br label %4578

; <label>:4578                                    ; preds = %4577, %4051
  %4579 = phi float [ 0.000000e+00, %4051 ], [ %4235, %4577 ]
  %4580 = phi float [ %4020, %4051 ], [ %4236, %4577 ]
  %4581 = phi float [ %4018, %4051 ], [ %4237, %4577 ]
  %4582 = phi float [ 0.000000e+00, %4051 ], [ %4238, %4577 ]
  %4583 = phi float [ 0.000000e+00, %4051 ], [ %4239, %4577 ]
  %4584 = phi float [ %4008, %4051 ], [ %4240, %4577 ]
  %4585 = phi float [ %4009, %4051 ], [ %4241, %4577 ]
  %4586 = phi float [ %4010, %4051 ], [ %4242, %4577 ]
  %4587 = phi float [ %4011, %4051 ], [ %4243, %4577 ]
  %4588 = phi float [ %4012, %4051 ], [ %4244, %4577 ]
  %4589 = phi float [ %4013, %4051 ], [ %4245, %4577 ]
  %4590 = phi float [ %4046, %4051 ], [ %4246, %4577 ]
  %4591 = phi float [ %4047, %4051 ], [ %4247, %4577 ]
  %4592 = phi float [ %4048, %4051 ], [ %4248, %4577 ]
  %4593 = phi float [ %4016, %4051 ], [ %4249, %4577 ]
  %4594 = phi float [ %4015, %4051 ], [ %4250, %4577 ]
  %4595 = phi float [ 0.000000e+00, %4051 ], [ %4251, %4577 ]
  %4596 = phi float [ %4014, %4051 ], [ %4252, %4577 ]
  %4597 = phi float [ %4005, %4051 ], [ %4253, %4577 ]
  %4598 = phi float [ %4006, %4051 ], [ %4254, %4577 ]
  %4599 = phi float [ %4007, %4051 ], [ %4255, %4577 ]
  %4600 = call float @dx.op.dot3.f32(i32 55, float %4590, float %4591, float %4592, float %4590, float %4591, float %4592)  ; Dot3(ax,ay,az,bx,by,bz)
  %4601 = call float @dx.op.unary.f32(i32 25, float %4600)  ; Rsqrt(value)
  %4602 = fmul fast float %4601, %4590
  %4603 = fmul fast float %4601, %4591
  %4604 = fmul fast float %4601, %4592
  %4605 = fadd fast float %4595, %1179
  %4606 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4607 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4604, float %4602, float %4603, float %4604)  ; Dot3(ax,ay,az,bx,by,bz)
  %4608 = call float @dx.op.unary.f32(i32 25, float %4607)  ; Rsqrt(value)
  %4609 = fmul fast float %4608, %4602
  %4610 = fmul fast float %4608, %4603
  %4611 = fmul fast float %4608, %4604
  br label %4612

; <label>:4612                                    ; preds = %4578, %4002
  %4613 = phi float [ %4609, %4578 ], [ %4046, %4002 ]
  %4614 = phi float [ %4610, %4578 ], [ %4047, %4002 ]
  %4615 = phi float [ %4611, %4578 ], [ %4048, %4002 ]
  %4616 = phi float [ %4597, %4578 ], [ %4005, %4002 ]
  %4617 = phi float [ %4598, %4578 ], [ %4006, %4002 ]
  %4618 = phi float [ %4599, %4578 ], [ %4007, %4002 ]
  %4619 = phi float [ %4587, %4578 ], [ %4011, %4002 ]
  %4620 = phi float [ %4588, %4578 ], [ %4012, %4002 ]
  %4621 = phi float [ %4589, %4578 ], [ %4013, %4002 ]
  %4622 = phi float [ %4584, %4578 ], [ %4008, %4002 ]
  %4623 = phi float [ %4585, %4578 ], [ %4009, %4002 ]
  %4624 = phi float [ %4586, %4578 ], [ %4010, %4002 ]
  %4625 = phi float [ %4596, %4578 ], [ %4014, %4002 ]
  %4626 = phi float [ %4606, %4578 ], [ %1179, %4002 ]
  %4627 = phi float [ %4594, %4578 ], [ %4015, %4002 ]
  %4628 = phi float [ %4593, %4578 ], [ %4016, %4002 ]
  %4629 = phi float [ %4583, %4578 ], [ 0.000000e+00, %4002 ]
  %4630 = phi float [ %4582, %4578 ], [ 0.000000e+00, %4002 ]
  %4631 = phi float [ %4579, %4578 ], [ 0.000000e+00, %4002 ]
  %4632 = phi float [ %4580, %4578 ], [ %4020, %4002 ]
  %4633 = phi float [ %4581, %4578 ], [ %4018, %4002 ]
  %4634 = fadd fast float %4625, 0xBFB99999A0000000
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = fmul fast float %4635, 0x3FF1C71C80000000
  %4637 = call float @dx.op.binary.f32(i32 36, float %4625, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4638 = fsub fast float 1.000000e+00, %4636
  %4639 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4640 = fmul fast float %4639, %4616
  %4641 = fmul fast float %4639, %4617
  %4642 = fmul fast float %4639, %4618
  %4643 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4644 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4645 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4646 = fmul fast float %4636, %4616
  %4647 = fmul fast float %4636, %4617
  %4648 = fmul fast float %4636, %4618
  %4649 = fadd fast float %4646, %4637
  %4650 = fadd fast float %4647, %4637
  %4651 = fadd fast float %4648, %4637
  %4652 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4653 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4654 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4655 = call float @dx.op.unary.f32(i32 7, float %4627)  ; Saturate(value)
  %4656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4657 = extractvalue %dx.types.ResRet.i32 %4656, 0
  %4658 = and i32 %4657, 1
  %4659 = icmp eq i32 %4658, 0
  br i1 %4659, label %4674, label %4660

; <label>:4660                                    ; preds = %4612
  %4661 = call float @dx.op.binary.f32(i32 35, float %4644, float %4645)  ; FMax(a,b)
  %4662 = call float @dx.op.binary.f32(i32 35, float %4643, float %4661)  ; FMax(a,b)
  %4663 = fcmp fast ogt float %4662, 0.000000e+00
  %4664 = bitcast float %4662 to i32
  %4665 = sub nsw i32 2129859010, %4664
  %4666 = bitcast i32 %4665 to float
  %4667 = select i1 %4663, float %4666, float 0.000000e+00
  %4668 = fmul fast float %4643, %4622
  %4669 = fmul fast float %4644, %4623
  %4670 = fmul fast float %4645, %4624
  %4671 = fmul fast float %4668, %4667
  %4672 = fmul fast float %4669, %4667
  %4673 = fmul fast float %4670, %4667
  br label %4674

; <label>:4674                                    ; preds = %4660, %4612
  %4675 = phi float [ %4671, %4660 ], [ %4622, %4612 ]
  %4676 = phi float [ %4672, %4660 ], [ %4623, %4612 ]
  %4677 = phi float [ %4673, %4660 ], [ %4624, %4612 ]
  %4678 = fadd fast float %4643, 0xBFD51EB860000000
  %4679 = fadd fast float %4644, 0xBFD51EB860000000
  %4680 = fadd fast float %4645, 0xBFD51EB860000000
  %4681 = fmul fast float %4678, %4678
  %4682 = fmul fast float %4679, %4679
  %4683 = fmul fast float %4680, %4680
  %4684 = fmul fast float %4681, %4681
  %4685 = fmul fast float %4684, 1.000000e+02
  %4686 = fmul fast float %4682, %4682
  %4687 = fmul fast float %4686, 1.000000e+02
  %4688 = fmul fast float %4683, %4683
  %4689 = fmul fast float %4688, 1.000000e+02
  %4690 = fadd fast float %4685, 3.500000e+00
  %4691 = fadd fast float %4687, 3.500000e+00
  %4692 = fadd fast float %4689, 3.500000e+00
  %4693 = call float @dx.op.binary.f32(i32 35, float %4675, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4694 = call float @dx.op.binary.f32(i32 35, float %4676, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4695 = call float @dx.op.binary.f32(i32 35, float %4677, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4696 = fdiv fast float %4690, %4693
  %4697 = fdiv fast float %4691, %4694
  %4698 = fdiv fast float %4692, %4695
  %4699 = fmul fast float %4017, 0xBFF7154760000000
  %4700 = fmul fast float %4699, %4696
  %4701 = call float @dx.op.unary.f32(i32 21, float %4700)  ; Exp(value)
  %4702 = fmul fast float %4701, 2.500000e-01
  %4703 = fmul fast float %4017, 0xBFDEC709E0000000
  %4704 = fmul fast float %4703, %4696
  %4705 = call float @dx.op.unary.f32(i32 21, float %4704)  ; Exp(value)
  %4706 = fmul fast float %4705, 7.500000e-01
  %4707 = fmul fast float %4699, %4697
  %4708 = call float @dx.op.unary.f32(i32 21, float %4707)  ; Exp(value)
  %4709 = fmul fast float %4708, 2.500000e-01
  %4710 = fmul fast float %4703, %4697
  %4711 = call float @dx.op.unary.f32(i32 21, float %4710)  ; Exp(value)
  %4712 = fmul fast float %4711, 7.500000e-01
  %4713 = fmul fast float %4699, %4698
  %4714 = call float @dx.op.unary.f32(i32 21, float %4713)  ; Exp(value)
  %4715 = fmul fast float %4714, 2.500000e-01
  %4716 = fmul fast float %4703, %4698
  %4717 = call float @dx.op.unary.f32(i32 21, float %4716)  ; Exp(value)
  %4718 = fmul fast float %4717, 7.500000e-01
  %4719 = fadd fast float %4702, %4706
  %4720 = fadd fast float %4709, %4712
  %4721 = fadd fast float %4715, %4718
  %4722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.i32 %4722, 3
  %4724 = and i32 %4723, 8
  %4725 = icmp ne i32 %4724, 0
  %4726 = call float @dx.op.binary.f32(i32 35, float %4643, float %4616)  ; FMax(a,b)
  %4727 = call float @dx.op.binary.f32(i32 35, float %4644, float %4616)  ; FMax(a,b)
  %4728 = call float @dx.op.binary.f32(i32 35, float %4645, float %4616)  ; FMax(a,b)
  %4729 = call float @dx.op.dot3.f32(i32 55, float %4643, float %4644, float %4645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4730 = select i1 %213, float %4616, float %4643
  %4731 = select i1 %213, float %4729, float %4644
  %4732 = select i1 %213, float 1.000000e+00, float %4645
  %4733 = select i1 %4725, float %4726, float %4730
  %4734 = select i1 %4725, float %4727, float %4731
  %4735 = select i1 %4725, float %4728, float %4732
  %4736 = and i32 %189, 3
  %4737 = select i1 %183, i32 %4736, i32 0
  %4738 = icmp eq i32 %4737, 1
  br i1 %4738, label %4739, label %4815

; <label>:4739                                    ; preds = %4674
  %4740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.f32 %4740, 0
  %4742 = extractvalue %dx.types.CBufRet.f32 %4740, 1
  %4743 = fadd fast float %4741, %152
  %4744 = fadd fast float %4742, %153
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 0
  %4747 = extractvalue %dx.types.CBufRet.f32 %4745, 1
  %4748 = fsub fast float %4743, %4746
  %4749 = fsub fast float %4744, %4747
  %4750 = fmul fast float %4748, %4748
  %4751 = fmul fast float %4749, %4749
  %4752 = fadd fast float %4750, %4751
  %4753 = call float @dx.op.unary.f32(i32 24, float %4752)  ; Sqrt(value)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4745, 2
  %4755 = fcmp fast olt float %4753, %4754
  br i1 %4755, label %4756, label %4809

; <label>:4756                                    ; preds = %4739
  %4757 = extractvalue %dx.types.CBufRet.f32 %4740, 2
  %4758 = fadd fast float %4757, %154
  %4759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.f32 %4759, 0
  %4761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4762 = extractvalue %dx.types.CBufRet.f32 %4761, 0
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 0
  %4765 = extractvalue %dx.types.CBufRet.f32 %4759, 1
  %4766 = extractvalue %dx.types.CBufRet.f32 %4761, 1
  %4767 = extractvalue %dx.types.CBufRet.f32 %4763, 1
  %4768 = extractvalue %dx.types.CBufRet.f32 %4759, 3
  %4769 = extractvalue %dx.types.CBufRet.f32 %4761, 3
  %4770 = extractvalue %dx.types.CBufRet.f32 %4763, 3
  %4771 = fadd fast float %4768, %4743
  %4772 = fadd fast float %4769, %4744
  %4773 = fadd fast float %4758, %4770
  %4774 = fmul fast float %4771, %4760
  %4775 = call float @dx.op.tertiary.f32(i32 46, float %4772, float %4762, float %4774)  ; FMad(a,b,c)
  %4776 = call float @dx.op.tertiary.f32(i32 46, float %4773, float %4764, float %4775)  ; FMad(a,b,c)
  %4777 = fmul fast float %4771, %4765
  %4778 = call float @dx.op.tertiary.f32(i32 46, float %4772, float %4766, float %4777)  ; FMad(a,b,c)
  %4779 = call float @dx.op.tertiary.f32(i32 46, float %4773, float %4767, float %4778)  ; FMad(a,b,c)
  %4780 = fsub fast float %4776, %4768
  %4781 = fsub fast float %4779, %4769
  %4782 = fsub fast float %4780, %4746
  %4783 = fadd fast float %4782, %4754
  %4784 = fsub fast float %4781, %4747
  %4785 = fadd fast float %4784, %4754
  %4786 = extractvalue %dx.types.CBufRet.f32 %4745, 3
  %4787 = fmul fast float %4783, %4786
  %4788 = fmul fast float %4785, %4786
  %4789 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4790 = call float @dx.op.unary.f32(i32 7, float %4788)  ; Saturate(value)
  %4791 = fsub fast float 1.000000e+00, %4789
  %4792 = fsub fast float 1.000000e+00, %4790
  %4793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %42, float %4791, float %4792, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4794 = extractvalue %dx.types.ResRet.f32 %4793, 0
  %4795 = fcmp fast ugt float %4794, 0.000000e+00
  br i1 %4795, label %4796, label %4809

; <label>:4796                                    ; preds = %4756
  %4797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4797, 2
  %4799 = fmul fast float %4798, %4794
  %4800 = extractvalue %dx.types.CBufRet.f32 %4797, 3
  %4801 = fadd fast float %4800, %4799
  %4802 = extractvalue %dx.types.CBufRet.f32 %4763, 2
  %4803 = fadd fast float %4801, %4770
  %4804 = fmul fast float %4776, %4764
  %4805 = call float @dx.op.tertiary.f32(i32 46, float %4779, float %4767, float %4804)  ; FMad(a,b,c)
  %4806 = call float @dx.op.tertiary.f32(i32 46, float %4803, float %4802, float %4805)  ; FMad(a,b,c)
  %4807 = fsub fast float %4806, %4770
  %4808 = fsub fast float %4807, %4757
  br label %4809

; <label>:4809                                    ; preds = %4796, %4756, %4739
  %4810 = phi i1 [ true, %4796 ], [ false, %4756 ], [ false, %4739 ]
  %4811 = phi float [ %4808, %4796 ], [ -1.310720e+05, %4756 ], [ -1.310720e+05, %4739 ]
  %4812 = fsub fast float %4811, %154
  %4813 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4814 = select i1 %4810, float %4813, float 1.000000e+00
  br label %4815

; <label>:4815                                    ; preds = %4809, %4674
  %4816 = phi float [ %4814, %4809 ], [ 0.000000e+00, %4674 ]
  %4817 = icmp eq i32 %4737, 3
  %4818 = select i1 %4817, float 1.000000e+00, float %4816
  %4819 = call float @dx.op.binary.f32(i32 35, float %4631, float %4818)  ; FMax(a,b)
  %4820 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4821 = fcmp fast une float %4820, 0.000000e+00
  %4822 = call float @dx.op.dot3.f32(i32 55, float %152, float %153, float %154, float %152, float %153, float %154)  ; Dot3(ax,ay,az,bx,by,bz)
  %4823 = call float @dx.op.unary.f32(i32 25, float %4822)  ; Rsqrt(value)
  br i1 %4821, label %4831, label %4824

; <label>:4824                                    ; preds = %4815
  %4825 = fmul fast float %4823, %152
  %4826 = fmul fast float %4823, %153
  %4827 = fmul fast float %4823, %154
  %4828 = fsub fast float -0.000000e+00, %4825
  %4829 = fsub fast float -0.000000e+00, %4826
  %4830 = fsub fast float -0.000000e+00, %4827
  br label %4999

; <label>:4831                                    ; preds = %4815
  %4832 = fmul fast float %152, %4823
  %4833 = fsub fast float -0.000000e+00, %4832
  %4834 = fmul fast float %153, %4823
  %4835 = fsub fast float -0.000000e+00, %4834
  %4836 = fmul fast float %154, %4823
  %4837 = fsub fast float -0.000000e+00, %4836
  %4838 = call float @dx.op.dot3.f32(i32 55, float %4833, float %4835, float %4837, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4839 = fmul fast float %4820, 2.500000e+00
  %4840 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4841 = fmul fast float %4820, 0x4013FFFFE0000000
  %4842 = fadd fast float %4841, 0xBFFFFFFFE0000000
  %4843 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4844 = fmul fast float %4820, 0x4004000020000000
  %4845 = fadd fast float %4844, 0xBFF8000040000000
  %4846 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4847 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4848 = fmul fast float %4634, 1.000000e+01
  %4849 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4850 = fmul fast float %4849, 2.000000e+00
  %4851 = fsub fast float 3.000000e+00, %4850
  %4852 = fmul fast float %4849, %4849
  %4853 = fmul fast float %4852, %4851
  %4854 = fsub fast float 1.000000e+00, %4853
  %4855 = fsub fast float 0x3FE3333340000000, %4655
  %4856 = fmul fast float %4855, 0x400AAAAAA0000000
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = fmul fast float %4854, %4857
  %4859 = fmul fast float %4733, 0x3FEA2B8620000000
  %4860 = fmul fast float %4734, 0x3FEA2B8620000000
  %4861 = fmul fast float %4735, 0x3FEA2B8620000000
  %4862 = fadd fast float %4859, 0x3FC81DFBA0000000
  %4863 = fmul fast float %4862, %4733
  %4864 = fadd fast float %4863, 0x3F910E6020000000
  %4865 = fadd fast float %4860, 0x3FC81DFBA0000000
  %4866 = fmul fast float %4865, %4734
  %4867 = fadd fast float %4866, 0x3F910E6020000000
  %4868 = fadd fast float %4861, 0x3FC81DFBA0000000
  %4869 = fmul fast float %4868, %4735
  %4870 = fadd fast float %4869, 0x3F910E6020000000
  %4871 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4872 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4873 = call float @dx.op.unary.f32(i32 7, float %4870)  ; Saturate(value)
  %4874 = fsub fast float %4871, %4733
  %4875 = fsub fast float %4872, %4734
  %4876 = fsub fast float %4873, %4735
  %4877 = fmul fast float %4874, %4847
  %4878 = fmul fast float %4877, %4858
  %4879 = fmul fast float %4875, %4847
  %4880 = fmul fast float %4879, %4858
  %4881 = fmul fast float %4876, %4847
  %4882 = fmul fast float %4881, %4858
  %4883 = fadd fast float %4878, %4733
  %4884 = fadd fast float %4880, %4734
  %4885 = fadd fast float %4882, %4735
  %4886 = fmul fast float %4628, %4628
  %4887 = fmul fast float %4886, %4886
  %4888 = fadd fast float %4843, 1.000000e+00
  %4889 = fsub fast float %4888, %4858
  %4890 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4891 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fsub fast float 1.000000e+00, %4887
  %4894 = call float @dx.op.binary.f32(i32 36, float %4890, float %4893)  ; FMin(a,b)
  %4895 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4896 = call float @dx.op.binary.f32(i32 35, float %4894, float %4895)  ; FMax(a,b)
  %4897 = fadd fast float %4892, 0xBFE4CCCCC0000000
  %4898 = fmul fast float %4897, 0x4006DB6DA0000000
  %4899 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4900 = fmul fast float %4899, 2.000000e+00
  %4901 = fsub fast float 3.000000e+00, %4900
  %4902 = bitcast float %4652 to i32
  %4903 = ashr i32 %4902, 1
  %4904 = add nsw i32 %4903, 532487669
  %4905 = bitcast i32 %4904 to float
  %4906 = fsub fast float 1.000000e+00, %4905
  %4907 = bitcast float %4906 to i32
  %4908 = sub nsw i32 2129859010, %4907
  %4909 = bitcast i32 %4908 to float
  %4910 = fmul fast float %4909, 2.000000e+00
  %4911 = bitcast float %4653 to i32
  %4912 = ashr i32 %4911, 1
  %4913 = add nsw i32 %4912, 532487669
  %4914 = bitcast i32 %4913 to float
  %4915 = fsub fast float 1.000000e+00, %4914
  %4916 = bitcast float %4915 to i32
  %4917 = sub nsw i32 2129859010, %4916
  %4918 = bitcast i32 %4917 to float
  %4919 = fmul fast float %4918, 2.000000e+00
  %4920 = bitcast float %4654 to i32
  %4921 = ashr i32 %4920, 1
  %4922 = add nsw i32 %4921, 532487669
  %4923 = bitcast i32 %4922 to float
  %4924 = fsub fast float 1.000000e+00, %4923
  %4925 = bitcast float %4924 to i32
  %4926 = sub nsw i32 2129859010, %4925
  %4927 = bitcast i32 %4926 to float
  %4928 = fmul fast float %4927, 2.000000e+00
  %4929 = fsub fast float 0x4002A9FBE0000000, %4910
  %4930 = fadd fast float %4910, 0x3FD54FDF00000000
  %4931 = bitcast float %4930 to i32
  %4932 = sub nsw i32 2129859010, %4931
  %4933 = bitcast i32 %4932 to float
  %4934 = fmul fast float %4933, %4929
  %4935 = fmul fast float %4934, %4934
  %4936 = fsub fast float 0x4002A9FBE0000000, %4919
  %4937 = fadd fast float %4919, 0x3FD54FDF00000000
  %4938 = bitcast float %4937 to i32
  %4939 = sub nsw i32 2129859010, %4938
  %4940 = bitcast i32 %4939 to float
  %4941 = fmul fast float %4940, %4936
  %4942 = fmul fast float %4941, %4941
  %4943 = fsub fast float 0x4002A9FBE0000000, %4928
  %4944 = fadd fast float %4928, 0x3FD54FDF00000000
  %4945 = bitcast float %4944 to i32
  %4946 = sub nsw i32 2129859010, %4945
  %4947 = bitcast i32 %4946 to float
  %4948 = fmul fast float %4947, %4943
  %4949 = fmul fast float %4948, %4948
  %4950 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4935)  ; FMax(a,b)
  %4951 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4942)  ; FMax(a,b)
  %4952 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4949)  ; FMax(a,b)
  %4953 = fsub fast float 1.000000e+00, %4838
  %4954 = fadd fast float %4953, %4854
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = fsub fast float 1.000000e+00, %4818
  %4957 = fmul fast float %4896, %4956
  %4958 = fmul fast float %4899, %4899
  %4959 = fmul fast float %4958, %4957
  %4960 = fmul fast float %4959, %4901
  %4961 = fmul fast float %4956, 0xBFE99999A0000000
  %4962 = fmul fast float %4961, %4847
  %4963 = fmul fast float %4962, %4858
  %4964 = fadd fast float %4963, 1.000000e+00
  %4965 = fadd fast float %4655, -1.000000e+00
  %4966 = fmul fast float %4964, %4965
  %4967 = fadd fast float %4966, 1.000000e+00
  %4968 = fsub fast float %4950, %4652
  %4969 = fsub fast float %4951, %4653
  %4970 = fsub fast float %4952, %4654
  %4971 = fmul fast float %4960, %4968
  %4972 = fmul fast float %4960, %4969
  %4973 = fmul fast float %4960, %4970
  %4974 = fadd fast float %4971, %4652
  %4975 = fadd fast float %4972, %4653
  %4976 = fadd fast float %4973, %4654
  %4977 = fsub fast float %104, %4613
  %4978 = fsub fast float %105, %4614
  %4979 = fsub fast float %106, %4615
  %4980 = fmul fast float %4960, %4977
  %4981 = fmul fast float %4960, %4978
  %4982 = fmul fast float %4960, %4979
  %4983 = fadd fast float %4980, %4613
  %4984 = fadd fast float %4981, %4614
  %4985 = fadd fast float %4982, %4615
  %4986 = fmul fast float %4960, %4955
  %4987 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4988 = fsub fast float 1.000000e+00, %4987
  %4989 = fmul fast float %4986, %4988
  %4990 = fadd fast float %4989, %4987
  %4991 = fsub fast float 1.000000e+00, %4628
  %4992 = fmul fast float %4960, %4991
  %4993 = fadd fast float %4992, %4628
  %4994 = call float @dx.op.dot3.f32(i32 55, float %4983, float %4984, float %4985, float %4983, float %4984, float %4985)  ; Dot3(ax,ay,az,bx,by,bz)
  %4995 = call float @dx.op.unary.f32(i32 25, float %4994)  ; Rsqrt(value)
  %4996 = fmul fast float %4983, %4995
  %4997 = fmul fast float %4984, %4995
  %4998 = fmul fast float %4985, %4995
  br label %4999

; <label>:4999                                    ; preds = %4831, %4824
  %5000 = phi float [ %4830, %4824 ], [ %4837, %4831 ]
  %5001 = phi float [ %4829, %4824 ], [ %4835, %4831 ]
  %5002 = phi float [ %4828, %4824 ], [ %4833, %4831 ]
  %5003 = phi float [ %4827, %4824 ], [ %4836, %4831 ]
  %5004 = phi float [ %4826, %4824 ], [ %4834, %4831 ]
  %5005 = phi float [ %4825, %4824 ], [ %4832, %4831 ]
  %5006 = phi float [ %4652, %4824 ], [ %4974, %4831 ]
  %5007 = phi float [ %4653, %4824 ], [ %4975, %4831 ]
  %5008 = phi float [ %4654, %4824 ], [ %4976, %4831 ]
  %5009 = phi float [ %4733, %4824 ], [ %4883, %4831 ]
  %5010 = phi float [ %4734, %4824 ], [ %4884, %4831 ]
  %5011 = phi float [ %4735, %4824 ], [ %4885, %4831 ]
  %5012 = phi float [ %4613, %4824 ], [ %4996, %4831 ]
  %5013 = phi float [ %4614, %4824 ], [ %4997, %4831 ]
  %5014 = phi float [ %4615, %4824 ], [ %4998, %4831 ]
  %5015 = phi float [ %4655, %4824 ], [ %4990, %4831 ]
  %5016 = phi float [ %4628, %4824 ], [ %4993, %4831 ]
  %5017 = select i1 %213, float 0.000000e+00, float %5008
  %5018 = call float @dx.op.dot3.f32(i32 55, float %5012, float %5013, float %5014, float %5002, float %5001, float %5000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5019 = call float @dx.op.unary.f32(i32 7, float %5018)  ; Saturate(value)
  %5020 = call float @dx.op.dot3.f32(i32 55, float %5005, float %5004, float %5003, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5021 = fmul fast float %5020, 2.000000e+00
  %5022 = fmul fast float %5021, %5012
  %5023 = fmul fast float %5021, %5013
  %5024 = fmul fast float %5021, %5014
  %5025 = fsub fast float %5005, %5022
  %5026 = fsub fast float %5004, %5023
  %5027 = fsub fast float %5003, %5024
  %5028 = call float @dx.op.binary.f32(i32 36, float %5016, float 1.000000e+00)  ; FMin(a,b)
  %5029 = fsub fast float 1.000000e+00, %5028
  %5030 = bitcast float %5029 to i32
  %5031 = ashr i32 %5030, 1
  %5032 = add nsw i32 %5031, 532487669
  %5033 = bitcast i32 %5032 to float
  %5034 = fsub fast float 1.000000e+00, %5015
  %5035 = call float @dx.op.binary.f32(i32 35, float %5034, float 0x3F847AE140000000)  ; FMax(a,b)
  %5036 = fmul fast float %5035, %5035
  %5037 = fmul fast float %5036, %5036
  %5038 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  %5039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %42, float %5033, float %5037, float %5038, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5040 = extractvalue %dx.types.ResRet.f32 %5039, 0
  %5041 = fsub fast float 1.000000e+00, %5016
  %5042 = bitcast float %5041 to i32
  %5043 = sub nsw i32 2129859010, %5042
  %5044 = call float @dx.op.dot3.f32(i32 55, float %65, float %61, float %57, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5045 = fmul fast float %5044, 0x3FD20DD760000000
  %5046 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5047 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5048 = fcmp fast oeq float %5047, 0.000000e+00
  %5049 = fcmp fast oeq float %5046, 0.000000e+00
  %5050 = or i1 %5049, %5048
  br i1 %5050, label %5080, label %5051

; <label>:5051                                    ; preds = %4999
  %5052 = fsub fast float -0.000000e+00, %68
  %5053 = fsub fast float -0.000000e+00, %66
  %5054 = call float @dx.op.unary.f32(i32 24, float %5047)  ; Sqrt(value)
  %5055 = fdiv fast float %5054, %5046
  %5056 = fcmp fast ogt float %5055, 0x3FFB6F8900000000
  %5057 = select i1 %5056, float 0x3FFB6F8900000000, float %5055
  %5058 = fmul fast float %5057, 0x3FE8A23460000000
  %5059 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5060 = call float @dx.op.binary.f32(i32 35, float %5057, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5061 = fmul fast float %5059, %5046
  %5062 = fmul fast float %5060, 0x3FF279A740000000
  %5063 = fadd fast float %5062, -1.000000e+00
  %5064 = call float @dx.op.dot3.f32(i32 55, float %5052, float %5053, float %67, float %5052, float %5053, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5065 = call float @dx.op.unary.f32(i32 25, float %5064)  ; Rsqrt(value)
  %5066 = fmul fast float %5065, %5052
  %5067 = fmul fast float %5065, %5053
  %5068 = fmul fast float %5065, %67
  %5069 = fmul fast float %5063, %5063
  %5070 = fsub fast float 1.000000e+00, %5069
  %5071 = fmul fast float %5060, 0x40005F8BE0000000
  %5072 = fsub fast float 0x400C5BF8A0000000, %5071
  %5073 = fdiv fast float %5061, %5072
  %5074 = fmul fast float %5073, 0x3FEE31C3C0000000
  %5075 = fmul fast float %5074, %5070
  %5076 = fmul fast float %5060, 0x3FDACB7480000000
  %5077 = fadd fast float %5076, 0xBFD7347680000000
  %5078 = fmul fast float %5077, %5073
  %5079 = fmul fast float %5078, %5070
  br label %5080

; <label>:5080                                    ; preds = %5051, %4999
  %5081 = phi float [ %5066, %5051 ], [ 0.000000e+00, %4999 ]
  %5082 = phi float [ %5067, %5051 ], [ 0.000000e+00, %4999 ]
  %5083 = phi float [ %5068, %5051 ], [ 0.000000e+00, %4999 ]
  %5084 = phi float [ %5075, %5051 ], [ 0.000000e+00, %4999 ]
  %5085 = phi float [ %5079, %5051 ], [ 0.000000e+00, %4999 ]
  %5086 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5083, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5087 = fmul fast float %5086, 0x3FDF454380000000
  %5088 = fmul fast float %5086, %5086
  %5089 = fmul fast float %5088, 0x3FEE471020000000
  %5090 = fadd fast float %5089, 0xBFD42F6020000000
  %5091 = fmul fast float %5046, 0x3FD20DD760000000
  %5092 = fmul fast float %5090, %5085
  %5093 = fadd fast float %5092, %5091
  %5094 = fmul fast float %5087, %5084
  %5095 = fadd fast float %5093, %5094
  %5096 = fsub fast float %5093, %5094
  %5097 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5083, float %5025, float %5026, float %5027)  ; Dot3(ax,ay,az,bx,by,bz)
  %5098 = fmul fast float %5097, 0x3FDF454380000000
  %5099 = fmul fast float %5097, %5097
  %5100 = fmul fast float %5099, 0x3FEE471020000000
  %5101 = fadd fast float %5100, 0xBFD42F6020000000
  %5102 = call float @dx.op.dot3.f32(i32 55, float %5046, float %5084, float %5085, float 0x3FD20DD760000000, float %5098, float %5101)  ; Dot3(ax,ay,az,bx,by,bz)
  %5103 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %61)  ; FMax(a,b)
  %5104 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = fcmp fast oeq float %5104, 0.000000e+00
  %5106 = fcmp fast oeq float %5103, 0.000000e+00
  %5107 = or i1 %5106, %5105
  br i1 %5107, label %5137, label %5108

; <label>:5108                                    ; preds = %5080
  %5109 = fsub fast float -0.000000e+00, %64
  %5110 = fsub fast float -0.000000e+00, %62
  %5111 = call float @dx.op.unary.f32(i32 24, float %5104)  ; Sqrt(value)
  %5112 = fdiv fast float %5111, %5103
  %5113 = fcmp fast ogt float %5112, 0x3FFB6F8900000000
  %5114 = select i1 %5113, float 0x3FFB6F8900000000, float %5112
  %5115 = fmul fast float %5114, 0x3FE8A23460000000
  %5116 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5117 = call float @dx.op.binary.f32(i32 35, float %5114, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5118 = fmul fast float %5116, %5103
  %5119 = fmul fast float %5117, 0x3FF279A740000000
  %5120 = fadd fast float %5119, -1.000000e+00
  %5121 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5110, float %63, float %5109, float %5110, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5122 = call float @dx.op.unary.f32(i32 25, float %5121)  ; Rsqrt(value)
  %5123 = fmul fast float %5122, %5109
  %5124 = fmul fast float %5122, %5110
  %5125 = fmul fast float %5122, %63
  %5126 = fmul fast float %5120, %5120
  %5127 = fsub fast float 1.000000e+00, %5126
  %5128 = fmul fast float %5117, 0x40005F8BE0000000
  %5129 = fsub fast float 0x400C5BF8A0000000, %5128
  %5130 = fdiv fast float %5118, %5129
  %5131 = fmul fast float %5130, 0x3FEE31C3C0000000
  %5132 = fmul fast float %5131, %5127
  %5133 = fmul fast float %5117, 0x3FDACB7480000000
  %5134 = fadd fast float %5133, 0xBFD7347680000000
  %5135 = fmul fast float %5134, %5130
  %5136 = fmul fast float %5135, %5127
  br label %5137

; <label>:5137                                    ; preds = %5108, %5080
  %5138 = phi float [ %5123, %5108 ], [ 0.000000e+00, %5080 ]
  %5139 = phi float [ %5124, %5108 ], [ 0.000000e+00, %5080 ]
  %5140 = phi float [ %5125, %5108 ], [ 0.000000e+00, %5080 ]
  %5141 = phi float [ %5132, %5108 ], [ 0.000000e+00, %5080 ]
  %5142 = phi float [ %5136, %5108 ], [ 0.000000e+00, %5080 ]
  %5143 = call float @dx.op.dot3.f32(i32 55, float %5138, float %5139, float %5140, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5144 = fmul fast float %5143, 0x3FDF454380000000
  %5145 = fmul fast float %5143, %5143
  %5146 = fmul fast float %5145, 0x3FEE471020000000
  %5147 = fadd fast float %5146, 0xBFD42F6020000000
  %5148 = fmul fast float %5103, 0x3FD20DD760000000
  %5149 = fmul fast float %5147, %5142
  %5150 = fadd fast float %5149, %5148
  %5151 = fmul fast float %5144, %5141
  %5152 = fadd fast float %5150, %5151
  %5153 = fsub fast float %5150, %5151
  %5154 = call float @dx.op.dot3.f32(i32 55, float %5138, float %5139, float %5140, float %5025, float %5026, float %5027)  ; Dot3(ax,ay,az,bx,by,bz)
  %5155 = fmul fast float %5154, 0x3FDF454380000000
  %5156 = fmul fast float %5154, %5154
  %5157 = fmul fast float %5156, 0x3FEE471020000000
  %5158 = fadd fast float %5157, 0xBFD42F6020000000
  %5159 = call float @dx.op.dot3.f32(i32 55, float %5103, float %5141, float %5142, float 0x3FD20DD760000000, float %5155, float %5158)  ; Dot3(ax,ay,az,bx,by,bz)
  %5160 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %5161 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5162 = fcmp fast oeq float %5161, 0.000000e+00
  %5163 = fcmp fast oeq float %5160, 0.000000e+00
  %5164 = or i1 %5163, %5162
  br i1 %5164, label %5194, label %5165

; <label>:5165                                    ; preds = %5137
  %5166 = fsub fast float -0.000000e+00, %60
  %5167 = fsub fast float -0.000000e+00, %58
  %5168 = call float @dx.op.unary.f32(i32 24, float %5161)  ; Sqrt(value)
  %5169 = fdiv fast float %5168, %5160
  %5170 = fcmp fast ogt float %5169, 0x3FFB6F8900000000
  %5171 = select i1 %5170, float 0x3FFB6F8900000000, float %5169
  %5172 = fmul fast float %5171, 0x3FE8A23460000000
  %5173 = call float @dx.op.unary.f32(i32 7, float %5172)  ; Saturate(value)
  %5174 = call float @dx.op.binary.f32(i32 35, float %5171, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5175 = fmul fast float %5173, %5160
  %5176 = fmul fast float %5174, 0x3FF279A740000000
  %5177 = fadd fast float %5176, -1.000000e+00
  %5178 = call float @dx.op.dot3.f32(i32 55, float %5166, float %5167, float %59, float %5166, float %5167, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5179 = call float @dx.op.unary.f32(i32 25, float %5178)  ; Rsqrt(value)
  %5180 = fmul fast float %5179, %5166
  %5181 = fmul fast float %5179, %5167
  %5182 = fmul fast float %5179, %59
  %5183 = fmul fast float %5177, %5177
  %5184 = fsub fast float 1.000000e+00, %5183
  %5185 = fmul fast float %5174, 0x40005F8BE0000000
  %5186 = fsub fast float 0x400C5BF8A0000000, %5185
  %5187 = fdiv fast float %5175, %5186
  %5188 = fmul fast float %5187, 0x3FEE31C3C0000000
  %5189 = fmul fast float %5188, %5184
  %5190 = fmul fast float %5174, 0x3FDACB7480000000
  %5191 = fadd fast float %5190, 0xBFD7347680000000
  %5192 = fmul fast float %5191, %5187
  %5193 = fmul fast float %5192, %5184
  br label %5194

; <label>:5194                                    ; preds = %5165, %5137
  %5195 = phi float [ %5180, %5165 ], [ 0.000000e+00, %5137 ]
  %5196 = phi float [ %5181, %5165 ], [ 0.000000e+00, %5137 ]
  %5197 = phi float [ %5182, %5165 ], [ 0.000000e+00, %5137 ]
  %5198 = phi float [ %5189, %5165 ], [ 0.000000e+00, %5137 ]
  %5199 = phi float [ %5193, %5165 ], [ 0.000000e+00, %5137 ]
  %5200 = call float @dx.op.dot3.f32(i32 55, float %5195, float %5196, float %5197, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %5201 = fmul fast float %5200, 0x3FDF454380000000
  %5202 = fmul fast float %5200, %5200
  %5203 = fmul fast float %5202, 0x3FEE471020000000
  %5204 = fadd fast float %5203, 0xBFD42F6020000000
  %5205 = fmul fast float %5160, 0x3FD20DD760000000
  %5206 = fmul fast float %5204, %5199
  %5207 = fadd fast float %5206, %5205
  %5208 = fmul fast float %5201, %5198
  %5209 = fadd fast float %5207, %5208
  %5210 = fsub fast float %5207, %5208
  %5211 = call float @dx.op.dot3.f32(i32 55, float %5195, float %5196, float %5197, float %5025, float %5026, float %5027)  ; Dot3(ax,ay,az,bx,by,bz)
  %5212 = fmul fast float %5211, 0x3FDF454380000000
  %5213 = fmul fast float %5211, %5211
  %5214 = fmul fast float %5213, 0x3FEE471020000000
  %5215 = fadd fast float %5214, 0xBFD42F6020000000
  %5216 = call float @dx.op.dot3.f32(i32 55, float %5160, float %5198, float %5199, float 0x3FD20DD760000000, float %5212, float %5215)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = call float @dx.op.binary.f32(i32 35, float %5095, float 0.000000e+00)  ; FMax(a,b)
  %5218 = call float @dx.op.binary.f32(i32 35, float %5152, float 0.000000e+00)  ; FMax(a,b)
  %5219 = call float @dx.op.binary.f32(i32 35, float %5209, float 0.000000e+00)  ; FMax(a,b)
  %5220 = call float @dx.op.binary.f32(i32 35, float %5096, float 0.000000e+00)  ; FMax(a,b)
  %5221 = call float @dx.op.binary.f32(i32 35, float %5153, float 0.000000e+00)  ; FMax(a,b)
  %5222 = call float @dx.op.binary.f32(i32 35, float %5210, float 0.000000e+00)  ; FMax(a,b)
  %5223 = call float @dx.op.binary.f32(i32 35, float %5102, float 0.000000e+00)  ; FMax(a,b)
  %5224 = call float @dx.op.binary.f32(i32 35, float %5159, float 0.000000e+00)  ; FMax(a,b)
  %5225 = call float @dx.op.binary.f32(i32 35, float %5216, float 0.000000e+00)  ; FMax(a,b)
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 0
  %5228 = call float @dx.op.binary.f32(i32 36, float %5009, float %5227)  ; FMin(a,b)
  %5229 = fmul fast float %5228, %5029
  %5230 = fsub fast float 1.000000e+00, %5229
  %5231 = bitcast float %5230 to i32
  %5232 = sub nsw i32 2129859010, %5231
  %5233 = bitcast i32 %5232 to float
  %5234 = call float @dx.op.binary.f32(i32 36, float %5010, float %5227)  ; FMin(a,b)
  %5235 = fmul fast float %5234, %5029
  %5236 = fsub fast float 1.000000e+00, %5235
  %5237 = bitcast float %5236 to i32
  %5238 = sub nsw i32 2129859010, %5237
  %5239 = bitcast i32 %5238 to float
  %5240 = call float @dx.op.binary.f32(i32 36, float %5011, float %5227)  ; FMin(a,b)
  %5241 = fmul fast float %5240, %5029
  %5242 = fsub fast float 1.000000e+00, %5241
  %5243 = bitcast float %5242 to i32
  %5244 = sub nsw i32 2129859010, %5243
  %5245 = bitcast i32 %5244 to float
  %5246 = fmul fast float %5217, %5028
  %5247 = fmul fast float %5246, %5233
  %5248 = fmul fast float %5218, %5028
  %5249 = fmul fast float %5248, %5239
  %5250 = fmul fast float %5219, %5028
  %5251 = fmul fast float %5250, %5245
  %5252 = call float @dx.op.binary.f32(i32 36, float %5006, float %5227)  ; FMin(a,b)
  %5253 = fmul fast float %5252, %5029
  %5254 = fsub fast float 1.000000e+00, %5253
  %5255 = bitcast float %5254 to i32
  %5256 = sub nsw i32 2129859010, %5255
  %5257 = bitcast i32 %5256 to float
  %5258 = call float @dx.op.binary.f32(i32 36, float %5007, float %5227)  ; FMin(a,b)
  %5259 = fmul fast float %5258, %5029
  %5260 = fsub fast float 1.000000e+00, %5259
  %5261 = bitcast float %5260 to i32
  %5262 = sub nsw i32 2129859010, %5261
  %5263 = bitcast i32 %5262 to float
  %5264 = call float @dx.op.binary.f32(i32 36, float %5017, float %5227)  ; FMin(a,b)
  %5265 = fmul fast float %5264, %5029
  %5266 = fsub fast float 1.000000e+00, %5265
  %5267 = bitcast float %5266 to i32
  %5268 = sub nsw i32 2129859010, %5267
  %5269 = bitcast i32 %5268 to float
  %5270 = fmul fast float %5223, %5028
  %5271 = fmul fast float %5270, %5257
  %5272 = fmul fast float %5224, %5028
  %5273 = fmul fast float %5272, %5263
  %5274 = fmul fast float %5225, %5028
  %5275 = fmul fast float %5274, %5269
  %5276 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5249, float %5251, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5277 = select i1 %213, float 0.000000e+00, float %5247
  %5278 = select i1 %213, float %5276, float %5249
  %5279 = select i1 %213, float 0.000000e+00, float %5251
  %5280 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5281 = select i1 %213, float 0.000000e+00, float %5220
  %5282 = select i1 %213, float %5280, float %5221
  %5283 = select i1 %213, float 0.000000e+00, float %5222
  %5284 = call float @dx.op.dot3.f32(i32 55, float %5271, float %5273, float %5275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5285 = select i1 %213, float 0.000000e+00, float %5271
  %5286 = select i1 %213, float %5284, float %5273
  %5287 = select i1 %213, float 0.000000e+00, float %5275
  %5288 = fmul fast float %5019, 9.843750e-01
  %5289 = fmul fast float %5015, 9.843750e-01
  %5290 = fadd fast float %5288, 7.812500e-03
  %5291 = fadd fast float %5289, 7.812500e-03
  %5292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %5290, float %5291, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 2
  %5294 = extractvalue %dx.types.ResRet.f32 %5292, 3
  %5295 = fmul fast float %5293, %5006
  %5296 = fmul fast float %5293, %5007
  %5297 = fmul fast float %5293, %5017
  %5298 = fadd fast float %5295, %5294
  %5299 = fadd fast float %5296, %5294
  %5300 = fadd fast float %5297, %5294
  %5301 = fcmp fast ogt float %4629, 0.000000e+00
  br i1 %5301, label %5302, label %5328

; <label>:5302                                    ; preds = %5194
  %5303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %4629, float %5019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.ResRet.f32 %5303, 1
  %5306 = extractvalue %dx.types.ResRet.f32 %5303, 2
  %5307 = fadd fast float %5304, -5.000000e-01
  %5308 = fadd fast float %5305, -5.000000e-01
  %5309 = fadd fast float %5306, -5.000000e-01
  %5310 = fsub fast float 1.000000e+00, %5006
  %5311 = fsub fast float 1.000000e+00, %5007
  %5312 = fsub fast float 1.000000e+00, %5017
  %5313 = fmul fast float %5006, 4.000000e+00
  %5314 = fmul fast float %5313, %5310
  %5315 = fmul fast float %5314, %5307
  %5316 = fmul fast float %5007, 4.000000e+00
  %5317 = fmul fast float %5316, %5311
  %5318 = fmul fast float %5317, %5308
  %5319 = fmul fast float %5017, 4.000000e+00
  %5320 = fmul fast float %5319, %5312
  %5321 = fmul fast float %5320, %5309
  %5322 = fadd fast float %5315, %5298
  %5323 = fadd fast float %5318, %5299
  %5324 = fadd fast float %5321, %5300
  %5325 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5326 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5327 = call float @dx.op.unary.f32(i32 7, float %5324)  ; Saturate(value)
  br label %5328

; <label>:5328                                    ; preds = %5302, %5194
  %5329 = phi float [ %5325, %5302 ], [ %5298, %5194 ]
  %5330 = phi float [ %5326, %5302 ], [ %5299, %5194 ]
  %5331 = phi float [ %5327, %5302 ], [ %5300, %5194 ]
  %5332 = call float @dx.op.binary.f32(i32 35, float %5330, float %5331)  ; FMax(a,b)
  %5333 = call float @dx.op.binary.f32(i32 35, float %5329, float %5332)  ; FMax(a,b)
  %5334 = fsub fast float 1.000000e+00, %5333
  %5335 = fmul fast float %5333, %5015
  %5336 = fadd fast float %5335, %5015
  %5337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.f32 %5337, 2
  %5339 = extractvalue %dx.types.CBufRet.f32 %5337, 3
  %5340 = fmul fast float %5336, %5338
  %5341 = fadd fast float %5340, %5339
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = fsub fast float 1.000000e+00, %5040
  %5344 = fadd fast float %5343, %5342
  %5345 = call float @dx.op.unary.f32(i32 7, float %5344)  ; Saturate(value)
  %5346 = fcmp fast olt float %5345, 1.000000e+00
  br i1 %5346, label %5347, label %5795

; <label>:5347                                    ; preds = %5328
  %5348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5348, 2
  %5350 = extractvalue %dx.types.CBufRet.f32 %5348, 3
  %5351 = fmul fast float %5349, %97
  %5352 = fmul fast float %5350, %98
  %5353 = fptoui float %5351 to i32
  %5354 = fptoui float %5352 to i32
  %5355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5356 = extractvalue %dx.types.CBufRet.f32 %5355, 0
  %5357 = extractvalue %dx.types.CBufRet.f32 %5355, 2
  %5358 = extractvalue %dx.types.CBufRet.f32 %5355, 3
  %5359 = fadd fast float %85, -4.000000e+00
  %5360 = call float @dx.op.binary.f32(i32 35, float %5359, float 0.000000e+00)  ; FMax(a,b)
  %5361 = fadd fast float %5360, %5356
  %5362 = fmul fast float %5361, %5357
  %5363 = call float @dx.op.unary.f32(i32 23, float %5362)  ; Log(value)
  %5364 = fmul fast float %5363, %5358
  %5365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5366 = extractvalue %dx.types.CBufRet.f32 %5365, 2
  %5367 = fmul fast float %5364, %5366
  %5368 = call float @dx.op.unary.f32(i32 7, float %5367)  ; Saturate(value)
  %5369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5370 = extractvalue %dx.types.CBufRet.i32 %5369, 1
  %5371 = add i32 %5370, -1
  %5372 = uitofp i32 %5370 to float
  %5373 = fmul fast float %5372, %5368
  %5374 = fptoui float %5373 to i32
  %5375 = call i32 @dx.op.binary.i32(i32 40, i32 %5374, i32 %5371)  ; UMin(a,b)
  %5376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.i32 %5376, 2
  %5378 = extractvalue %dx.types.CBufRet.i32 %5376, 3
  %5379 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5354, i32 %5377, i32 %5353)  ; UMad(a,b,c)
  %5380 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5375, i32 %5378, i32 %5379)  ; UMad(a,b,c)
  %5381 = call float @dx.op.binary.f32(i32 35, float %85, float 0.000000e+00)  ; FMax(a,b)
  %5382 = fptoui float %5381 to i32
  %5383 = lshr i32 %5382, 5
  %5384 = call i32 @dx.op.binary.i32(i32 40, i32 %5383, i32 8191)  ; UMin(a,b)
  br i1 false, label %5385, label %5392

; <label>:5385                                    ; preds = %5347
  %5386 = fadd fast float 0.000000e+00, %5027
  %5387 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5026, float %5386, float %5025, float %5026, float %5386)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = call float @dx.op.unary.f32(i32 25, float %5387)  ; Rsqrt(value)
  %5389 = fmul fast float %5388, %5025
  %5390 = fmul fast float %5388, %5026
  %5391 = fmul fast float %5386, %5388
  br label %5392

; <label>:5392                                    ; preds = %5385, %5347
  %5393 = phi float [ %5389, %5385 ], [ %5025, %5347 ]
  %5394 = phi float [ %5390, %5385 ], [ %5026, %5347 ]
  %5395 = phi float [ %5391, %5385 ], [ %5027, %5347 ]
  %5396 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5397 = extractvalue %dx.types.CBufRet.i32 %5396, 2
  %5398 = add nsw i32 %5397, -1
  %5399 = call i32 @dx.op.binary.i32(i32 37, i32 %5398, i32 0)  ; IMax(a,b)
  %5400 = shl i32 %5384, 2
  %5401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5400, i32 undef)  ; BufferLoad(srv,index,wot)
  %5402 = extractvalue %dx.types.ResRet.i32 %5401, 0
  %5403 = lshr i32 %5402, 16
  %5404 = and i32 %5402, 65535
  %5405 = lshr i32 %5402, 21
  %5406 = lshr i32 %5404, 5
  %5407 = call i32 @dx.op.binary.i32(i32 40, i32 %5406, i32 %5399)  ; UMin(a,b)
  %5408 = icmp ugt i32 %5405, %5407
  br i1 %5408, label %5771, label %5409

; <label>:5409                                    ; preds = %5392
  br label %5410

; <label>:5410                                    ; preds = %5763, %5409
  %5411 = phi float [ %5764, %5763 ], [ 0.000000e+00, %5409 ]
  %5412 = phi float [ %5765, %5763 ], [ 0.000000e+00, %5409 ]
  %5413 = phi float [ %5766, %5763 ], [ 0.000000e+00, %5409 ]
  %5414 = phi float [ %5767, %5763 ], [ 1.000000e+00, %5409 ]
  %5415 = phi i32 [ %5768, %5763 ], [ %5405, %5409 ]
  %5416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5417 = extractvalue %dx.types.CBufRet.i32 %5416, 2
  %5418 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5380, i32 %5417, i32 %5415)  ; UMad(a,b,c)
  %5419 = shl i32 %5418, 2
  %5420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5419, i32 undef)  ; BufferLoad(srv,index,wot)
  %5421 = extractvalue %dx.types.ResRet.i32 %5420, 0
  %5422 = shl i32 %5415, 5
  %5423 = sub nsw i32 %5403, %5422
  %5424 = call i32 @dx.op.binary.i32(i32 37, i32 %5423, i32 0)  ; IMax(a,b)
  %5425 = call i32 @dx.op.binary.i32(i32 38, i32 %5424, i32 31)  ; IMin(a,b)
  %5426 = sub nsw i32 1, %5403
  %5427 = add nsw i32 %5426, %5404
  %5428 = call i32 @dx.op.binary.i32(i32 37, i32 %5427, i32 0)  ; IMax(a,b)
  %5429 = call i32 @dx.op.binary.i32(i32 38, i32 %5428, i32 32)  ; IMin(a,b)
  %5430 = and i32 %5429, 31
  %5431 = shl i32 -1, %5430
  %5432 = xor i32 %5431, -1
  %5433 = and i32 %5425, 31
  %5434 = shl i32 %5432, %5433
  %5435 = icmp eq i32 %5429, 32
  %5436 = select i1 %5435, i32 -1, i32 %5434
  %5437 = and i32 %5436, %5421
  %5438 = icmp eq i32 %5437, 0
  br i1 %5438, label %5763, label %5439

; <label>:5439                                    ; preds = %5410
  br label %5440

; <label>:5440                                    ; preds = %5546, %5439
  %5441 = phi float [ %5547, %5546 ], [ %5411, %5439 ]
  %5442 = phi float [ %5548, %5546 ], [ %5412, %5439 ]
  %5443 = phi float [ %5549, %5546 ], [ %5413, %5439 ]
  %5444 = phi float [ %5550, %5546 ], [ %5414, %5439 ]
  %5445 = phi i32 [ %5450, %5546 ], [ %5437, %5439 ]
  %5446 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5445)  ; FirstbitLo(value)
  %5447 = add i32 %5446, %5422
  %5448 = and i32 %5446, 31
  %5449 = shl i32 1, %5448
  %5450 = xor i32 %5449, %5445
  %5451 = mul i32 %5447, 72
  %5452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5451, i32 undef)  ; BufferLoad(srv,index,wot)
  %5453 = extractvalue %dx.types.ResRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.ResRet.f32 %5452, 1
  %5455 = extractvalue %dx.types.ResRet.f32 %5452, 2
  %5456 = add i32 %5451, 12
  %5457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5456, i32 undef)  ; BufferLoad(srv,index,wot)
  %5458 = extractvalue %dx.types.ResRet.i32 %5457, 0
  %5459 = add i32 %5451, 16
  %5460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5459, i32 undef)  ; BufferLoad(srv,index,wot)
  %5461 = extractvalue %dx.types.ResRet.f32 %5460, 0
  %5462 = extractvalue %dx.types.ResRet.f32 %5460, 1
  %5463 = extractvalue %dx.types.ResRet.f32 %5460, 2
  %5464 = add i32 %5451, 28
  %5465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5464, i32 undef)  ; BufferLoad(srv,index,wot)
  %5466 = extractvalue %dx.types.ResRet.f32 %5465, 0
  %5467 = add i32 %5451, 32
  %5468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5467, i32 undef)  ; BufferLoad(srv,index,wot)
  %5469 = extractvalue %dx.types.ResRet.f32 %5468, 0
  %5470 = extractvalue %dx.types.ResRet.f32 %5468, 1
  %5471 = extractvalue %dx.types.ResRet.f32 %5468, 2
  %5472 = extractvalue %dx.types.ResRet.f32 %5468, 3
  %5473 = add i32 %5451, 48
  %5474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5473, i32 undef)  ; BufferLoad(srv,index,wot)
  %5475 = extractvalue %dx.types.ResRet.f32 %5474, 0
  %5476 = extractvalue %dx.types.ResRet.f32 %5474, 1
  %5477 = add i32 %5451, 56
  %5478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5477, i32 undef)  ; BufferLoad(srv,index,wot)
  %5479 = extractvalue %dx.types.ResRet.f32 %5478, 0
  %5480 = extractvalue %dx.types.ResRet.f32 %5478, 1
  %5481 = add i32 %5451, 64
  %5482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5481, i32 undef)  ; BufferLoad(srv,index,wot)
  %5483 = extractvalue %dx.types.ResRet.f32 %5482, 0
  %5484 = extractvalue %dx.types.ResRet.f32 %5482, 1
  %5485 = mul i32 %5447, 60
  %5486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5485, i32 undef)  ; BufferLoad(srv,index,wot)
  %5487 = extractvalue %dx.types.ResRet.f32 %5486, 0
  %5488 = extractvalue %dx.types.ResRet.f32 %5486, 1
  %5489 = extractvalue %dx.types.ResRet.f32 %5486, 2
  %5490 = add i32 %5485, 12
  %5491 = add i32 %5485, 48
  %5492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5491, i32 undef)  ; BufferLoad(srv,index,wot)
  %5493 = extractvalue %dx.types.ResRet.f32 %5492, 0
  %5494 = extractvalue %dx.types.ResRet.f32 %5492, 1
  %5495 = extractvalue %dx.types.ResRet.f32 %5492, 2
  %5496 = and i32 %5458, 32767
  %5497 = bitcast float %5453 to i32
  %5498 = icmp eq i32 %5497, -1
  %5499 = bitcast float %5454 to i32
  %5500 = and i32 %5458, 32768
  %5501 = icmp ne i32 %5500, 0
  %5502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5503 = extractvalue %dx.types.CBufRet.f32 %5502, 0
  %5504 = extractvalue %dx.types.CBufRet.f32 %5502, 1
  %5505 = extractvalue %dx.types.CBufRet.f32 %5502, 2
  %5506 = fsub fast float %5487, %5503
  %5507 = fsub fast float %5488, %5504
  %5508 = fsub fast float %5489, %5505
  %5509 = fsub fast float %152, %5506
  %5510 = fsub fast float %153, %5507
  %5511 = fsub fast float %154, %5508
  %5512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5490, i32 undef)  ; BufferLoad(srv,index,wot)
  %5513 = extractvalue %dx.types.ResRet.f32 %5512, 0
  %5514 = extractvalue %dx.types.ResRet.f32 %5512, 1
  %5515 = extractvalue %dx.types.ResRet.f32 %5512, 2
  %5516 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %5511, float %5513, float %5514, float %5515)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = add i32 %5485, 24
  %5518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5517, i32 undef)  ; BufferLoad(srv,index,wot)
  %5519 = extractvalue %dx.types.ResRet.f32 %5518, 0
  %5520 = extractvalue %dx.types.ResRet.f32 %5518, 1
  %5521 = extractvalue %dx.types.ResRet.f32 %5518, 2
  %5522 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %5511, float %5519, float %5520, float %5521)  ; Dot3(ax,ay,az,bx,by,bz)
  %5523 = add i32 %5485, 36
  %5524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5523, i32 undef)  ; BufferLoad(srv,index,wot)
  %5525 = extractvalue %dx.types.ResRet.f32 %5524, 0
  %5526 = extractvalue %dx.types.ResRet.f32 %5524, 1
  %5527 = extractvalue %dx.types.ResRet.f32 %5524, 2
  %5528 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %5511, float %5525, float %5526, float %5527)  ; Dot3(ax,ay,az,bx,by,bz)
  %5529 = call float @dx.op.unary.f32(i32 6, float %5516)  ; FAbs(value)
  %5530 = call float @dx.op.unary.f32(i32 6, float %5522)  ; FAbs(value)
  %5531 = call float @dx.op.unary.f32(i32 6, float %5528)  ; FAbs(value)
  %5532 = fsub fast float %5493, %5529
  %5533 = fsub fast float %5494, %5530
  %5534 = fsub fast float %5495, %5531
  %5535 = fmul fast float %5532, %5461
  %5536 = fmul fast float %5533, %5462
  %5537 = fmul fast float %5534, %5463
  %5538 = call float @dx.op.binary.f32(i32 36, float %5536, float %5537)  ; FMin(a,b)
  %5539 = call float @dx.op.binary.f32(i32 36, float %5535, float %5538)  ; FMin(a,b)
  %5540 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5541 = call float @dx.op.binary.f32(i32 36, float %5444, float %5540)  ; FMin(a,b)
  %5542 = uitofp i1 %5501 to float
  %5543 = fsub fast float 1.000000e+00, %5542
  %5544 = fmul fast float %5541, %5543
  %5545 = fcmp fast ogt float %5544, 0.000000e+00
  br i1 %5545, label %5552, label %5546

; <label>:5546                                    ; preds = %5694, %5440
  %5547 = phi float [ %5758, %5694 ], [ %5441, %5440 ]
  %5548 = phi float [ %5759, %5694 ], [ %5442, %5440 ]
  %5549 = phi float [ %5760, %5694 ], [ %5443, %5440 ]
  %5550 = phi float [ %5761, %5694 ], [ %5444, %5440 ]
  %5551 = icmp eq i32 %5445, %5449
  br i1 %5551, label %5762, label %5440

; <label>:5552                                    ; preds = %5440
  br i1 %5498, label %5610, label %5553

; <label>:5553                                    ; preds = %5552
  %5554 = fsub fast float -0.000000e+00, %5513
  %5555 = fsub fast float -0.000000e+00, %5514
  %5556 = fsub fast float -0.000000e+00, %5515
  %5557 = call float @dx.op.dot3.f32(i32 55, float %5393, float %5394, float %5395, float %5554, float %5555, float %5556)  ; Dot3(ax,ay,az,bx,by,bz)
  %5558 = fsub fast float -0.000000e+00, %5557
  %5559 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %5511, float %5554, float %5555, float %5556)  ; Dot3(ax,ay,az,bx,by,bz)
  %5560 = fadd fast float %5559, %5476
  %5561 = fadd fast float %5475, %5559
  %5562 = fsub fast float -0.000000e+00, %5561
  %5563 = fcmp ogt float %5557, -0.000000e+00
  %5564 = select i1 %5563, float %5562, float %5560
  %5565 = call float @dx.op.unary.f32(i32 6, float %5558)  ; FAbs(value)
  %5566 = fdiv fast float 1.000000e+00, %5565
  %5567 = fmul fast float %5564, %5566
  %5568 = call float @dx.op.binary.f32(i32 35, float %5567, float 0.000000e+00)  ; FMax(a,b)
  %5569 = fsub fast float -0.000000e+00, %5519
  %5570 = fsub fast float -0.000000e+00, %5520
  %5571 = fsub fast float -0.000000e+00, %5521
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5393, float %5394, float %5395, float %5569, float %5570, float %5571)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = fsub fast float -0.000000e+00, %5572
  %5574 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %5511, float %5569, float %5570, float %5571)  ; Dot3(ax,ay,az,bx,by,bz)
  %5575 = fadd fast float %5574, %5480
  %5576 = fadd fast float %5479, %5574
  %5577 = fsub fast float -0.000000e+00, %5576
  %5578 = fcmp ogt float %5572, -0.000000e+00
  %5579 = select i1 %5578, float %5577, float %5575
  %5580 = call float @dx.op.unary.f32(i32 6, float %5573)  ; FAbs(value)
  %5581 = fdiv fast float 1.000000e+00, %5580
  %5582 = fmul fast float %5579, %5581
  %5583 = call float @dx.op.binary.f32(i32 35, float %5582, float 0.000000e+00)  ; FMax(a,b)
  %5584 = fsub fast float -0.000000e+00, %5525
  %5585 = fsub fast float -0.000000e+00, %5526
  %5586 = fsub fast float -0.000000e+00, %5527
  %5587 = call float @dx.op.dot3.f32(i32 55, float %5393, float %5394, float %5395, float %5584, float %5585, float %5586)  ; Dot3(ax,ay,az,bx,by,bz)
  %5588 = fsub fast float -0.000000e+00, %5587
  %5589 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %5511, float %5584, float %5585, float %5586)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = fadd fast float %5589, %5484
  %5591 = fadd fast float %5483, %5589
  %5592 = fsub fast float -0.000000e+00, %5591
  %5593 = fcmp ogt float %5587, -0.000000e+00
  %5594 = select i1 %5593, float %5592, float %5590
  %5595 = call float @dx.op.unary.f32(i32 6, float %5588)  ; FAbs(value)
  %5596 = fdiv fast float 1.000000e+00, %5595
  %5597 = fmul fast float %5594, %5596
  %5598 = call float @dx.op.binary.f32(i32 35, float %5597, float 0.000000e+00)  ; FMax(a,b)
  %5599 = call float @dx.op.binary.f32(i32 36, float %5583, float %5598)  ; FMin(a,b)
  %5600 = call float @dx.op.binary.f32(i32 36, float %5568, float %5599)  ; FMin(a,b)
  %5601 = fmul fast float %5600, %5393
  %5602 = fmul fast float %5600, %5394
  %5603 = fmul fast float %5600, %5395
  %5604 = fadd fast float %5601, %152
  %5605 = fadd fast float %5602, %153
  %5606 = fadd fast float %5603, %154
  %5607 = fsub fast float %5604, %5453
  %5608 = fsub fast float %5605, %5454
  %5609 = fsub fast float %5606, %5455
  br label %5617

; <label>:5610                                    ; preds = %5552
  %5611 = fmul fast float %5393, 8.096000e+03
  %5612 = fmul fast float %5394, 8.096000e+03
  %5613 = fmul fast float %5395, 8.096000e+03
  %5614 = fadd fast float %5611, %152
  %5615 = fadd fast float %5612, %153
  %5616 = fadd fast float %5613, %154
  br label %5617

; <label>:5617                                    ; preds = %5610, %5553
  %5618 = phi float [ %5393, %5610 ], [ %5607, %5553 ]
  %5619 = phi float [ %5394, %5610 ], [ %5608, %5553 ]
  %5620 = phi float [ %5395, %5610 ], [ %5609, %5553 ]
  %5621 = phi float [ %5614, %5610 ], [ %5604, %5553 ]
  %5622 = phi float [ %5615, %5610 ], [ %5605, %5553 ]
  %5623 = phi float [ %5616, %5610 ], [ %5606, %5553 ]
  %5624 = fcmp fast olt float %5472, 1.000000e+00
  br i1 %5624, label %5625, label %5656, !dx.controlflow.hints !85

; <label>:5625                                    ; preds = %5617
  %5626 = fmul fast float %5620, %5470
  %5627 = fmul fast float %5619, %5471
  %5628 = fsub fast float %5626, %5627
  %5629 = fmul fast float %5618, %5471
  %5630 = fmul fast float %5620, %5469
  %5631 = fsub fast float %5629, %5630
  %5632 = fmul fast float %5619, %5469
  %5633 = fmul fast float %5618, %5470
  %5634 = fsub fast float %5632, %5633
  %5635 = fmul fast float %5628, 2.000000e+00
  %5636 = fmul fast float %5631, 2.000000e+00
  %5637 = fmul fast float %5634, 2.000000e+00
  %5638 = fmul fast float %5635, %5472
  %5639 = fmul fast float %5636, %5472
  %5640 = fmul fast float %5637, %5472
  %5641 = fmul fast float %5637, %5470
  %5642 = fmul fast float %5636, %5471
  %5643 = fmul fast float %5635, %5471
  %5644 = fmul fast float %5637, %5469
  %5645 = fmul fast float %5636, %5469
  %5646 = fmul fast float %5635, %5470
  %5647 = fadd fast float %5641, %5618
  %5648 = fadd fast float %5647, %5638
  %5649 = fsub fast float %5648, %5642
  %5650 = fsub fast float %5619, %5644
  %5651 = fadd fast float %5650, %5639
  %5652 = fadd fast float %5651, %5643
  %5653 = fadd fast float %5640, %5620
  %5654 = fsub fast float %5653, %5646
  %5655 = fadd fast float %5654, %5645
  br label %5656

; <label>:5656                                    ; preds = %5625, %5617
  %5657 = phi float [ %5649, %5625 ], [ %5618, %5617 ]
  %5658 = phi float [ %5652, %5625 ], [ %5619, %5617 ]
  %5659 = phi float [ %5655, %5625 ], [ %5620, %5617 ]
  br i1 %5498, label %5691, label %5660

; <label>:5660                                    ; preds = %5656
  %5661 = fmul fast float %5015, 0x400187C840000000
  %5662 = fadd fast float %5661, 0xC00EFC2120000000
  %5663 = fmul fast float %5662, %5015
  %5664 = fadd fast float %5663, 0x3FE5D16340000000
  %5665 = fmul fast float %5664, %5015
  %5666 = fadd fast float %5665, 1.000000e+00
  %5667 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5668 = fsub fast float %5621, %152
  %5669 = fsub fast float %5622, %153
  %5670 = fsub fast float %5623, %154
  %5671 = fsub fast float %5621, %5453
  %5672 = fsub fast float %5622, %5454
  %5673 = fsub fast float %5623, %5455
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5668, float %5669, float %5670, float %5668, float %5669, float %5670)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = call float @dx.op.dot3.f32(i32 55, float %5671, float %5672, float %5673, float %5671, float %5672, float %5673)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = fadd fast float %5675, 0x3EE4F8B580000000
  %5677 = fdiv fast float %5674, %5676
  %5678 = bitcast float %5677 to i32
  %5679 = ashr i32 %5678, 1
  %5680 = add nsw i32 %5679, 532487669
  %5681 = bitcast i32 %5680 to float
  %5682 = fmul fast float %5681, %5667
  %5683 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  %5684 = fmul fast float %5683, 0x4009981AE0000000
  %5685 = fsub fast float 0x40111BBD80000000, %5684
  %5686 = fmul fast float %5685, %5683
  %5687 = fadd fast float %5686, 0xC0009F6020000000
  %5688 = fmul fast float %5687, %5683
  %5689 = fadd fast float %5688, 1.000000e+00
  %5690 = call float @dx.op.unary.f32(i32 7, float %5689)  ; Saturate(value)
  br label %5694

; <label>:5691                                    ; preds = %5656
  %5692 = icmp ne i32 %5499, -1
  %5693 = zext i1 %5692 to i32
  br label %5694

; <label>:5694                                    ; preds = %5691, %5660
  %5695 = phi float [ %5015, %5691 ], [ %5690, %5660 ]
  %5696 = phi i32 [ %5693, %5691 ], [ 0, %5660 ]
  %5697 = fmul float %5695, 5.000000e+00
  %5698 = fsub float 5.000000e+00, %5697
  %5699 = icmp ne i32 %5696, 0
  %5700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5701 = extractvalue %dx.types.CBufRet.f32 %5700, 3
  %5702 = fadd fast float %5701, %5698
  %5703 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5702)  ; FMax(a,b)
  %5704 = call float @dx.op.unary.f32(i32 6, float %5657)  ; FAbs(value)
  %5705 = call float @dx.op.unary.f32(i32 6, float %5658)  ; FAbs(value)
  %5706 = fadd fast float %5705, %5704
  %5707 = call float @dx.op.unary.f32(i32 6, float %5659)  ; FAbs(value)
  %5708 = fadd fast float %5706, %5707
  %5709 = fcmp fast oeq float %5708, 0.000000e+00
  %5710 = fdiv fast float 1.000000e+00, %5708
  %5711 = select i1 %5709, float 1.000000e+00, float %5710
  %5712 = fmul fast float %5711, %5657
  %5713 = fmul fast float %5711, %5658
  %5714 = call float @dx.op.unary.f32(i32 6, float %5713)  ; FAbs(value)
  %5715 = call float @dx.op.unary.f32(i32 6, float %5712)  ; FAbs(value)
  %5716 = fsub fast float 1.000000e+00, %5714
  %5717 = fsub fast float 1.000000e+00, %5715
  %5718 = fcmp fast oge float %5712, 0.000000e+00
  %5719 = fcmp fast oge float %5713, 0.000000e+00
  %5720 = select i1 %5718, float 1.000000e+00, float -1.000000e+00
  %5721 = select i1 %5719, float 1.000000e+00, float -1.000000e+00
  %5722 = fcmp fast ole float %5659, 0.000000e+00
  %5723 = fmul fast float %5720, %5716
  %5724 = fmul fast float %5721, %5717
  %5725 = select i1 %5722, float %5723, float %5712
  %5726 = select i1 %5722, float %5724, float %5713
  %5727 = fmul fast float %5725, 5.000000e-01
  %5728 = fmul fast float %5726, 5.000000e-01
  %5729 = fadd fast float %5727, 5.000000e-01
  %5730 = fadd fast float %5728, 5.000000e-01
  %5731 = uitofp i32 %5496 to float
  %5732 = call float @dx.op.binary.f32(i32 36, float %5703, float 3.000000e+00)  ; FMin(a,b)
  %5733 = fadd fast float %5732, 2.000000e+00
  %5734 = call float @dx.op.unary.f32(i32 21, float %5733)  ; Exp(value)
  %5735 = extractvalue %dx.types.CBufRet.f32 %5700, 1
  %5736 = fmul fast float %5735, %5734
  %5737 = fmul fast float %5736, 2.000000e+00
  %5738 = fsub fast float 1.000000e+00, %5737
  %5739 = fmul fast float %5729, %5738
  %5740 = fmul fast float %5730, %5738
  %5741 = fadd fast float %5739, %5736
  %5742 = fadd fast float %5740, %5736
  %5743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5741, float %5742, float %5731, float undef, i32 0, i32 0, i32 undef, float %5703)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5744 = extractvalue %dx.types.ResRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.ResRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.ResRet.f32 %5743, 2
  %5747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5748 = extractvalue %dx.types.CBufRet.f32 %5747, 3
  %5749 = fmul fast float %5748, %5466
  %5750 = call float @dx.op.binary.f32(i32 36, float %5045, float %5749)  ; FMin(a,b)
  %5751 = select i1 %5699, float %5750, float %5749
  %5752 = fmul fast float %5744, %5544
  %5753 = fmul fast float %5752, %5751
  %5754 = fmul fast float %5745, %5544
  %5755 = fmul fast float %5754, %5751
  %5756 = fmul fast float %5746, %5544
  %5757 = fmul fast float %5756, %5751
  %5758 = fadd fast float %5753, %5441
  %5759 = fadd fast float %5755, %5442
  %5760 = fadd fast float %5757, %5443
  %5761 = fsub fast float %5444, %5544
  br label %5546

; <label>:5762                                    ; preds = %5546
  br label %5763

; <label>:5763                                    ; preds = %5762, %5410
  %5764 = phi float [ %5411, %5410 ], [ %5547, %5762 ]
  %5765 = phi float [ %5412, %5410 ], [ %5548, %5762 ]
  %5766 = phi float [ %5413, %5410 ], [ %5549, %5762 ]
  %5767 = phi float [ %5414, %5410 ], [ %5550, %5762 ]
  %5768 = add i32 %5415, 1
  %5769 = icmp ugt i32 %5768, %5407
  br i1 %5769, label %5770, label %5410, !llvm.loop !86

; <label>:5770                                    ; preds = %5763
  br label %5771

; <label>:5771                                    ; preds = %5770, %5392
  %5772 = phi float [ 0.000000e+00, %5392 ], [ %5764, %5770 ]
  %5773 = phi float [ 0.000000e+00, %5392 ], [ %5765, %5770 ]
  %5774 = phi float [ 0.000000e+00, %5392 ], [ %5766, %5770 ]
  %5775 = call float @dx.op.dot3.f32(i32 55, float %5772, float %5773, float %5774, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5776 = select i1 %213, float 0.000000e+00, float %5772
  %5777 = select i1 %213, float %5775, float %5773
  %5778 = select i1 %213, float 0.000000e+00, float %5774
  %5779 = fcmp fast olt float %5345, 0.000000e+00
  %5780 = call float @dx.op.unary.f32(i32 6, float %5345)  ; FAbs(value)
  %5781 = fmul fast float %5780, %5285
  %5782 = fmul fast float %5780, %5286
  %5783 = fmul fast float %5780, %5287
  %5784 = select i1 %5779, float %5285, float %5781
  %5785 = select i1 %5779, float %5286, float %5782
  %5786 = select i1 %5779, float %5287, float %5783
  %5787 = fsub fast float 1.000000e+00, %5780
  %5788 = call float @dx.op.unary.f32(i32 7, float %5787)  ; Saturate(value)
  %5789 = fmul fast float %5788, %5776
  %5790 = fmul fast float %5788, %5777
  %5791 = fmul fast float %5788, %5778
  %5792 = fadd fast float %5784, %5789
  %5793 = fadd fast float %5785, %5790
  %5794 = fadd fast float %5786, %5791
  br label %5795

; <label>:5795                                    ; preds = %5771, %5328
  %5796 = phi float [ %5285, %5328 ], [ %5792, %5771 ]
  %5797 = phi float [ %5286, %5328 ], [ %5793, %5771 ]
  %5798 = phi float [ %5287, %5328 ], [ %5794, %5771 ]
  %5799 = call float @dx.op.dot3.f32(i32 55, float %5009, float %5010, float %5011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5800 = fcmp fast ogt float %5799, 0x3E7FF19E20000000
  %5801 = fdiv fast float 1.000000e+00, %5799
  %5802 = select i1 %5800, float %5801, float 0.000000e+00
  %5803 = fmul fast float %5802, %5009
  %5804 = fmul fast float %5802, %5010
  %5805 = fmul fast float %5802, %5011
  %5806 = fadd fast float %5803, -1.000000e+00
  %5807 = fadd fast float %5804, -1.000000e+00
  %5808 = fadd fast float %5805, -1.000000e+00
  %5809 = fmul fast float %5806, 5.000000e-01
  %5810 = fmul fast float %5807, 5.000000e-01
  %5811 = fmul fast float %5808, 5.000000e-01
  %5812 = fadd fast float %5809, 1.000000e+00
  %5813 = fadd fast float %5810, 1.000000e+00
  %5814 = fadd fast float %5811, 1.000000e+00
  %5815 = fmul fast float %5334, %4719
  %5816 = fmul fast float %5334, %4720
  %5817 = fmul fast float %5334, %4721
  %5818 = fadd fast float %5815, -1.000000e+00
  %5819 = fadd fast float %5816, -1.000000e+00
  %5820 = fadd fast float %5817, -1.000000e+00
  %5821 = fmul fast float %5818, %4626
  %5822 = fmul fast float %5819, %4626
  %5823 = fmul fast float %5820, %4626
  %5824 = fmul fast float %5796, %5329
  %5825 = fmul fast float %5797, %5330
  %5826 = fmul fast float %5798, %5331
  %5827 = fsub fast float 1.000000e+00, %5019
  %5828 = bitcast float %5827 to i32
  %5829 = sitofp i32 %5828 to float
  %5830 = fmul fast float %5829, 5.000000e+00
  %5831 = fadd fast float %5830, 0xC1EFBF8940000000
  %5832 = fptosi float %5831 to i32
  %5833 = bitcast i32 %5832 to float
  %5834 = fmul fast float %5833, %4630
  %5835 = fmul fast float %5277, %5834
  %5836 = fmul fast float %5835, %5334
  %5837 = fmul fast float %5836, %5812
  %5838 = fmul fast float %5278, %5834
  %5839 = fmul fast float %5838, %5334
  %5840 = fmul fast float %5839, %5813
  %5841 = fmul fast float %5279, %5834
  %5842 = fmul fast float %5841, %5334
  %5843 = fmul fast float %5842, %5814
  %5844 = fadd fast float %5824, %4619
  %5845 = fadd fast float %5844, %5837
  %5846 = fmul fast float %5845, %4626
  %5847 = fadd fast float %5825, %4620
  %5848 = fadd fast float %5847, %5840
  %5849 = fmul fast float %5848, %4626
  %5850 = fadd fast float %5826, %4621
  %5851 = fadd fast float %5850, %5843
  %5852 = fmul fast float %5851, %4626
  %5853 = fadd fast float %5823, 1.000000e+00
  %5854 = fadd fast float %5822, 1.000000e+00
  %5855 = fadd fast float %5821, 1.000000e+00
  %5856 = fmul fast float %5334, %5279
  %5857 = fmul fast float %5334, %5278
  %5858 = fmul fast float %5334, %5277
  %5859 = fmul fast float %5855, %5281
  %5860 = fmul fast float %5854, %5282
  %5861 = fmul fast float %5853, %5283
  %5862 = fadd fast float %5859, %5858
  %5863 = fmul fast float %5862, %4626
  %5864 = fadd fast float %5860, %5857
  %5865 = fmul fast float %5864, %4626
  %5866 = fadd fast float %5861, %5856
  %5867 = fmul fast float %5866, %4626
  %5868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5869 = extractvalue %dx.types.CBufRet.f32 %5868, 3
  %5870 = fcmp fast oeq float %5869, 0.000000e+00
  br i1 %5870, label %7392, label %5871

; <label>:5871                                    ; preds = %5795
  %5872 = extractvalue %dx.types.CBufRet.f32 %5868, 0
  %5873 = extractvalue %dx.types.CBufRet.f32 %5868, 1
  %5874 = extractvalue %dx.types.CBufRet.f32 %5868, 2
  %5875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5876 = extractvalue %dx.types.CBufRet.f32 %5875, 0
  %5877 = extractvalue %dx.types.CBufRet.f32 %5875, 1
  %5878 = extractvalue %dx.types.CBufRet.f32 %5875, 2
  %5879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5880 = extractvalue %dx.types.CBufRet.f32 %5879, 0
  %5881 = extractvalue %dx.types.CBufRet.f32 %5879, 1
  %5882 = call float @dx.op.dot3.f32(i32 55, float %5876, float %5877, float %5878, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5883 = select i1 %213, float %5880, float %5876
  %5884 = select i1 %213, float %5882, float %5877
  %5885 = select i1 %213, float %5881, float %5878
  %5886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.f32 %5886, 2
  %5888 = fmul fast float %5887, %104
  %5889 = fmul fast float %5887, %105
  %5890 = fmul fast float %5887, %106
  %5891 = fadd fast float %5888, %152
  %5892 = fadd fast float %5889, %153
  %5893 = fadd fast float %5890, %154
  %5894 = fcmp fast olt float %5869, 0.000000e+00
  br i1 %5894, label %6990, label %5895

; <label>:5895                                    ; preds = %5871
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.CBufRet.f32 %5896, 1
  %5899 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %5900 = extractvalue %dx.types.CBufRet.f32 %5896, 3
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 0
  %5903 = extractvalue %dx.types.CBufRet.f32 %5901, 1
  %5904 = extractvalue %dx.types.CBufRet.f32 %5901, 2
  %5905 = extractvalue %dx.types.CBufRet.f32 %5901, 3
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 0
  %5908 = extractvalue %dx.types.CBufRet.f32 %5906, 1
  %5909 = extractvalue %dx.types.CBufRet.f32 %5906, 2
  %5910 = extractvalue %dx.types.CBufRet.f32 %5906, 3
  %5911 = fmul fast float %5897, %5891
  %5912 = call float @dx.op.tertiary.f32(i32 46, float %5892, float %5898, float %5911)  ; FMad(a,b,c)
  %5913 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %5899, float %5912)  ; FMad(a,b,c)
  %5914 = fadd fast float %5913, %5900
  %5915 = fmul fast float %5902, %5891
  %5916 = call float @dx.op.tertiary.f32(i32 46, float %5892, float %5903, float %5915)  ; FMad(a,b,c)
  %5917 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %5904, float %5916)  ; FMad(a,b,c)
  %5918 = fadd fast float %5917, %5905
  %5919 = fmul fast float %5907, %5891
  %5920 = call float @dx.op.tertiary.f32(i32 46, float %5892, float %5908, float %5919)  ; FMad(a,b,c)
  %5921 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %5909, float %5920)  ; FMad(a,b,c)
  %5922 = fadd fast float %5921, %5910
  %5923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5924 = extractvalue %dx.types.CBufRet.f32 %5923, 0
  %5925 = extractvalue %dx.types.CBufRet.f32 %5923, 1
  %5926 = extractvalue %dx.types.CBufRet.f32 %5923, 3
  %5927 = fmul fast float %5926, %5914
  %5928 = fmul fast float %5926, %5918
  %5929 = fadd fast float %5927, %5924
  %5930 = fadd fast float %5928, %5925
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5933 = extractvalue %dx.types.CBufRet.f32 %5931, 1
  %5934 = extractvalue %dx.types.CBufRet.f32 %5931, 3
  %5935 = fmul fast float %5934, %5914
  %5936 = fmul fast float %5934, %5918
  %5937 = fadd fast float %5935, %5932
  %5938 = fadd fast float %5936, %5933
  %5939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5940 = extractvalue %dx.types.CBufRet.f32 %5939, 1
  %5941 = fsub fast float %5940, %5922
  %5942 = extractvalue %dx.types.CBufRet.f32 %5939, 2
  %5943 = fmul fast float %5941, %5942
  %5944 = fsub fast float 1.000000e+00, %5943
  %5945 = call float @dx.op.unary.f32(i32 7, float %5944)  ; Saturate(value)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5931, 2
  %5947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5948 = extractvalue %dx.types.CBufRet.f32 %5947, 2
  %5949 = fadd fast float %5948, %5946
  %5950 = fcmp fast ogt float %5949, 0.000000e+00
  br i1 %5950, label %5951, label %5975

; <label>:5951                                    ; preds = %5895
  %5952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5952, 0
  %5954 = extractvalue %dx.types.CBufRet.f32 %5952, 1
  %5955 = fsub fast float %5937, %5953
  %5956 = fsub fast float %5938, %5954
  %5957 = fcmp fast olt float %5955, 0.000000e+00
  %5958 = fcmp fast olt float %5956, 0.000000e+00
  %5959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5960 = extractvalue %dx.types.CBufRet.f32 %5959, 0
  %5961 = extractvalue %dx.types.CBufRet.f32 %5959, 1
  %5962 = extractvalue %dx.types.CBufRet.f32 %5959, 2
  %5963 = extractvalue %dx.types.CBufRet.f32 %5959, 3
  %5964 = select i1 %5957, float %5960, float %5962
  %5965 = select i1 %5958, float %5961, float %5963
  %5966 = fmul fast float %5964, %5955
  %5967 = fmul fast float %5965, %5956
  %5968 = call float @dx.op.unary.f32(i32 6, float %5966)  ; FAbs(value)
  %5969 = call float @dx.op.unary.f32(i32 6, float %5967)  ; FAbs(value)
  %5970 = extractvalue %dx.types.CBufRet.f32 %5886, 0
  %5971 = call float @dx.op.binary.f32(i32 35, float %5968, float %5969)  ; FMax(a,b)
  %5972 = fsub fast float %5970, %5971
  %5973 = call float @dx.op.unary.f32(i32 7, float %5972)  ; Saturate(value)
  %5974 = fmul fast float %5973, %5945
  br label %5975

; <label>:5975                                    ; preds = %5951, %5895
  %5976 = phi float [ %5974, %5951 ], [ 0.000000e+00, %5895 ]
  %5977 = extractvalue %dx.types.CBufRet.f32 %5923, 2
  %5978 = extractvalue %dx.types.CBufRet.f32 %5947, 1
  %5979 = fadd fast float %5978, %5977
  %5980 = fcmp fast ogt float %5979, 0.000000e+00
  %5981 = extractvalue %dx.types.CBufRet.f32 %5886, 0
  br i1 %5980, label %5982, label %6005

; <label>:5982                                    ; preds = %5975
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 0
  %5985 = extractvalue %dx.types.CBufRet.f32 %5983, 1
  %5986 = fsub fast float %5929, %5984
  %5987 = fsub fast float %5930, %5985
  %5988 = fcmp fast olt float %5986, 0.000000e+00
  %5989 = fcmp fast olt float %5987, 0.000000e+00
  %5990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.f32 %5990, 0
  %5992 = extractvalue %dx.types.CBufRet.f32 %5990, 1
  %5993 = extractvalue %dx.types.CBufRet.f32 %5990, 2
  %5994 = extractvalue %dx.types.CBufRet.f32 %5990, 3
  %5995 = select i1 %5988, float %5991, float %5993
  %5996 = select i1 %5989, float %5992, float %5994
  %5997 = fmul fast float %5995, %5986
  %5998 = fmul fast float %5996, %5987
  %5999 = call float @dx.op.unary.f32(i32 6, float %5997)  ; FAbs(value)
  %6000 = call float @dx.op.unary.f32(i32 6, float %5998)  ; FAbs(value)
  %6001 = call float @dx.op.binary.f32(i32 35, float %5999, float %6000)  ; FMax(a,b)
  %6002 = fsub fast float %5981, %6001
  %6003 = call float @dx.op.unary.f32(i32 7, float %6002)  ; Saturate(value)
  %6004 = fmul fast float %6003, %5945
  br label %6005

; <label>:6005                                    ; preds = %5982, %5975
  %6006 = phi float [ %6004, %5982 ], [ 0.000000e+00, %5975 ]
  %6007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6008 = extractvalue %dx.types.CBufRet.f32 %6007, 1
  %6009 = call float @dx.op.unary.f32(i32 7, float %6008)  ; Saturate(value)
  %6010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6011 = extractvalue %dx.types.CBufRet.f32 %6010, 0
  %6012 = extractvalue %dx.types.CBufRet.f32 %6010, 1
  %6013 = fsub fast float %5914, %6011
  %6014 = fsub fast float %5918, %6012
  %6015 = fcmp fast olt float %6013, 0.000000e+00
  %6016 = fcmp fast olt float %6014, 0.000000e+00
  %6017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.f32 %6017, 0
  %6019 = extractvalue %dx.types.CBufRet.f32 %6017, 1
  %6020 = extractvalue %dx.types.CBufRet.f32 %6017, 2
  %6021 = extractvalue %dx.types.CBufRet.f32 %6017, 3
  %6022 = select i1 %6015, float %6018, float %6020
  %6023 = select i1 %6016, float %6019, float %6021
  %6024 = fmul fast float %6022, %6013
  %6025 = fmul fast float %6023, %6014
  %6026 = call float @dx.op.unary.f32(i32 6, float %6024)  ; FAbs(value)
  %6027 = call float @dx.op.unary.f32(i32 6, float %6025)  ; FAbs(value)
  %6028 = call float @dx.op.binary.f32(i32 35, float %6026, float %6027)  ; FMax(a,b)
  %6029 = fsub fast float %5981, %6028
  %6030 = call float @dx.op.unary.f32(i32 7, float %6029)  ; Saturate(value)
  %6031 = call float @dx.op.binary.f32(i32 36, float %6030, float %6009)  ; FMin(a,b)
  %6032 = fmul fast float %6031, %5945
  %6033 = fsub fast float %6006, %6032
  %6034 = fsub fast float %5976, %6006
  %6035 = fsub fast float %6034, %6032
  %6036 = call float @dx.op.binary.f32(i32 35, float %6006, float %5976)  ; FMax(a,b)
  %6037 = call float @dx.op.binary.f32(i32 35, float %6032, float %6036)  ; FMax(a,b)
  %6038 = fcmp fast olt float %6037, 1.000000e+00
  br i1 %6038, label %6039, label %6437, !dx.controlflow.hints !88

; <label>:6039                                    ; preds = %6005
  %6040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6041 = extractvalue %dx.types.CBufRet.f32 %6040, 0
  %6042 = fcmp fast une float %6041, 0.000000e+00
  br i1 %6042, label %6043, label %6437, !dx.controlflow.hints !89

; <label>:6043                                    ; preds = %6039
  %6044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.f32 %6044, 0
  %6046 = extractvalue %dx.types.CBufRet.f32 %6044, 1
  %6047 = extractvalue %dx.types.CBufRet.f32 %6044, 2
  %6048 = extractvalue %dx.types.CBufRet.f32 %6044, 3
  %6049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6050 = extractvalue %dx.types.CBufRet.f32 %6049, 0
  %6051 = extractvalue %dx.types.CBufRet.f32 %6049, 1
  %6052 = extractvalue %dx.types.CBufRet.f32 %6049, 2
  %6053 = extractvalue %dx.types.CBufRet.f32 %6049, 3
  %6054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6055 = extractvalue %dx.types.CBufRet.f32 %6054, 0
  %6056 = extractvalue %dx.types.CBufRet.f32 %6054, 1
  %6057 = extractvalue %dx.types.CBufRet.f32 %6054, 2
  %6058 = extractvalue %dx.types.CBufRet.f32 %6054, 3
  %6059 = fmul fast float %6045, %5891
  %6060 = call float @dx.op.tertiary.f32(i32 46, float %5892, float %6046, float %6059)  ; FMad(a,b,c)
  %6061 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %6047, float %6060)  ; FMad(a,b,c)
  %6062 = fadd fast float %6061, %6048
  %6063 = fmul fast float %6050, %5891
  %6064 = call float @dx.op.tertiary.f32(i32 46, float %5892, float %6051, float %6063)  ; FMad(a,b,c)
  %6065 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %6052, float %6064)  ; FMad(a,b,c)
  %6066 = fadd fast float %6065, %6053
  %6067 = fmul fast float %6055, %5891
  %6068 = call float @dx.op.tertiary.f32(i32 46, float %5892, float %6056, float %6067)  ; FMad(a,b,c)
  %6069 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %6057, float %6068)  ; FMad(a,b,c)
  %6070 = fadd fast float %6069, %6058
  %6071 = fcmp fast oge float %6062, 1.000000e+00
  %6072 = fcmp fast oge float %6066, 1.000000e+00
  %6073 = or i1 %6071, %6072
  %6074 = fcmp fast olt float %6062, 0.000000e+00
  %6075 = fcmp fast olt float %6066, 0.000000e+00
  %6076 = or i1 %6074, %6075
  %6077 = or i1 %6073, %6076
  br i1 %6077, label %6437, label %6078, !dx.controlflow.hints !90

; <label>:6078                                    ; preds = %6043
  %6079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6080 = extractvalue %dx.types.CBufRet.f32 %6079, 0
  %6081 = extractvalue %dx.types.CBufRet.f32 %6079, 1
  %6082 = extractvalue %dx.types.CBufRet.f32 %6079, 2
  %6083 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6084 = extractvalue %dx.types.CBufRet.i32 %6083, 2
  %6085 = uitofp i32 %6084 to float
  %6086 = extractvalue %dx.types.CBufRet.i32 %6083, 3
  %6087 = uitofp i32 %6086 to float
  %6088 = extractvalue %dx.types.CBufRet.f32 %6079, 3
  %6089 = fmul fast float %6088, 2.000000e+00
  %6090 = fsub fast float %6062, %6080
  %6091 = fsub fast float %6066, %6081
  %6092 = fmul fast float %6089, %6090
  %6093 = fmul fast float %6089, %6091
  %6094 = fdiv fast float 1.000000e+00, %5874
  %6095 = fmul fast float %6093, %6094
  %6096 = call float @dx.op.unary.f32(i32 6, float %6095)  ; FAbs(value)
  %6097 = fmul fast float %6082, %5893
  %6098 = fmul fast float %6097, %6089
  %6099 = call float @dx.op.unary.f32(i32 6, float %6098)  ; FAbs(value)
  %6100 = call float @dx.op.unary.f32(i32 6, float %6092)  ; FAbs(value)
  %6101 = call float @dx.op.binary.f32(i32 35, float %6099, float %6096)  ; FMax(a,b)
  %6102 = call float @dx.op.binary.f32(i32 35, float %6100, float %6101)  ; FMax(a,b)
  %6103 = fmul fast float %6102, 2.000000e+00
  %6104 = call float @dx.op.unary.f32(i32 23, float %6103)  ; Log(value)
  %6105 = call float @dx.op.binary.f32(i32 35, float %6104, float %6085)  ; FMax(a,b)
  %6106 = call float @dx.op.unary.f32(i32 22, float %6105)  ; Frc(value)
  %6107 = fadd fast float %6106, 0xBFEA666660000000
  %6108 = fmul fast float %6107, 8.000000e+00
  %6109 = call float @dx.op.unary.f32(i32 7, float %6108)  ; Saturate(value)
  %6110 = call float @dx.op.unary.f32(i32 27, float %6105)  ; Round_ni(value)
  %6111 = fadd fast float %6110, %6109
  %6112 = call float @dx.op.binary.f32(i32 36, float %6111, float %6087)  ; FMin(a,b)
  %6113 = call float @dx.op.unary.f32(i32 27, float %6112)  ; Round_ni(value)
  %6114 = fsub fast float -0.000000e+00, %6113
  %6115 = call float @dx.op.unary.f32(i32 21, float %6114)  ; Exp(value)
  %6116 = fmul fast float %6115, %6089
  %6117 = fmul fast float %6116, %6062
  %6118 = fmul fast float %6116, %6066
  %6119 = fmul fast float %6117, 2.500000e-01
  %6120 = fmul fast float %6118, 2.500000e-01
  %6121 = fadd fast float %6119, 5.000000e-01
  %6122 = fadd fast float %6120, 5.000000e-01
  %6123 = fsub fast float %6087, %6085
  %6124 = fptoui float %6123 to i32
  %6125 = add i32 %6124, 320
  %6126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %6125)  ; CBufferLoadLegacy(handle,regIndex)
  %6127 = extractvalue %dx.types.CBufRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.CBufRet.f32 %6126, 1
  %6129 = fcmp fast une float %6112, %6087
  %6130 = fsub fast float %6062, %6127
  %6131 = fsub fast float %6066, %6128
  %6132 = call float @dx.op.unary.f32(i32 6, float %6130)  ; FAbs(value)
  %6133 = call float @dx.op.unary.f32(i32 6, float %6131)  ; FAbs(value)
  %6134 = fmul fast float %6132, %6116
  %6135 = fmul fast float %6133, %6116
  %6136 = fcmp fast olt float %6134, 1.000000e+00
  %6137 = fcmp fast olt float %6135, 1.000000e+00
  %6138 = and i1 %6136, %6137
  %6139 = or i1 %6129, %6138
  br i1 %6139, label %6140, label %6437, !dx.controlflow.hints !91

; <label>:6140                                    ; preds = %6078
  %6141 = fmul fast float %6118, 5.000000e-01
  %6142 = fmul fast float %6117, 5.000000e-01
  %6143 = fadd fast float %6141, 5.000000e-01
  %6144 = fadd fast float %6142, 5.000000e-01
  %6145 = sitofp i32 %6084 to float
  %6146 = fsub fast float %6112, %6145
  %6147 = call float @dx.op.unary.f32(i32 27, float %6146)  ; Round_ni(value)
  %6148 = call float @dx.op.unary.f32(i32 22, float %6112)  ; Frc(value)
  %6149 = call float @dx.op.unary.f32(i32 22, float %6144)  ; Frc(value)
  %6150 = call float @dx.op.unary.f32(i32 22, float %6143)  ; Frc(value)
  %6151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6149, float %6150, float %6147, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6152 = extractvalue %dx.types.ResRet.f32 %6151, 0
  %6153 = extractvalue %dx.types.ResRet.f32 %6151, 1
  %6154 = extractvalue %dx.types.ResRet.f32 %6151, 2
  %6155 = extractvalue %dx.types.ResRet.f32 %6151, 3
  %6156 = fcmp fast ogt float %6148, 0.000000e+00
  br i1 %6156, label %6157, label %6178, !dx.controlflow.hints !92

; <label>:6157                                    ; preds = %6140
  %6158 = fadd fast float %6147, 1.000000e+00
  %6159 = call float @dx.op.unary.f32(i32 22, float %6121)  ; Frc(value)
  %6160 = call float @dx.op.unary.f32(i32 22, float %6122)  ; Frc(value)
  %6161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6159, float %6160, float %6158, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6162 = extractvalue %dx.types.ResRet.f32 %6161, 0
  %6163 = extractvalue %dx.types.ResRet.f32 %6161, 1
  %6164 = extractvalue %dx.types.ResRet.f32 %6161, 2
  %6165 = extractvalue %dx.types.ResRet.f32 %6161, 3
  %6166 = fsub fast float %6162, %6152
  %6167 = fsub fast float %6163, %6153
  %6168 = fsub fast float %6164, %6154
  %6169 = fsub fast float %6165, %6155
  %6170 = fmul fast float %6166, %6148
  %6171 = fmul fast float %6167, %6148
  %6172 = fmul fast float %6168, %6148
  %6173 = fmul fast float %6169, %6148
  %6174 = fadd fast float %6170, %6152
  %6175 = fadd fast float %6171, %6153
  %6176 = fadd fast float %6172, %6154
  %6177 = fadd fast float %6173, %6155
  br label %6178

; <label>:6178                                    ; preds = %6157, %6140
  %6179 = phi float [ %6174, %6157 ], [ %6152, %6140 ]
  %6180 = phi float [ %6175, %6157 ], [ %6153, %6140 ]
  %6181 = phi float [ %6176, %6157 ], [ %6154, %6140 ]
  %6182 = phi float [ %6177, %6157 ], [ %6155, %6140 ]
  %6183 = fadd fast float %6179, -5.000000e-01
  %6184 = fadd fast float %6181, -5.000000e-01
  %6185 = fmul fast float %6183, 0xBFD5555560000000
  %6186 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6184, float %6185)  ; FMad(a,b,c)
  %6187 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6180, float 0.000000e+00)  ; FMad(a,b,c)
  %6188 = fadd fast float %6187, %6182
  %6189 = fmul fast float %6183, -7.500000e-01
  %6190 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6184, float %6189)  ; FMad(a,b,c)
  %6191 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6180, float 0.000000e+00)  ; FMad(a,b,c)
  %6192 = fadd fast float %6191, %6182
  %6193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6194 = extractvalue %dx.types.CBufRet.f32 %6193, 0
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 0
  %6197 = extractvalue %dx.types.CBufRet.f32 %6195, 1
  %6198 = extractvalue %dx.types.CBufRet.f32 %6195, 2
  %6199 = extractvalue %dx.types.CBufRet.f32 %6195, 3
  %6200 = fsub fast float %6196, %6186
  %6201 = fsub fast float %6197, %6188
  %6202 = fsub fast float %6198, %6190
  %6203 = fsub fast float %6199, %6192
  %6204 = fmul fast float %6200, %6194
  %6205 = fmul fast float %6201, %6194
  %6206 = fmul fast float %6202, %6194
  %6207 = fmul fast float %6203, %6194
  %6208 = fadd fast float %6204, %6186
  %6209 = fadd fast float %6205, %6188
  %6210 = fadd fast float %6206, %6190
  %6211 = fadd fast float %6207, %6192
  %6212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6213 = extractvalue %dx.types.ResRet.i32 %6212, 0
  %6214 = and i32 %6213, 536870911
  %6215 = uitofp i32 %6214 to float
  %6216 = fmul fast float %6215, %6062
  %6217 = fmul fast float %6215, %6066
  %6218 = fptoui float %6216 to i32
  %6219 = fptoui float %6217 to i32
  %6220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6221 = extractvalue %dx.types.ResRet.i32 %6220, 0
  %6222 = and i32 %6221, 31
  %6223 = lshr i32 %6218, %6222
  %6224 = lshr i32 %6219, %6222
  %6225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6226 = extractvalue %dx.types.ResRet.i32 %6225, 0
  %6227 = and i32 %6226, 31
  %6228 = shl i32 1, %6227
  %6229 = call i32 @dx.op.binary.i32(i32 40, i32 %6228, i32 4)  ; UMin(a,b)
  %6230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6231 = extractvalue %dx.types.ResRet.i32 %6230, 0
  %6232 = extractvalue %dx.types.ResRet.i32 %6230, 1
  %6233 = icmp eq i32 %6229, 0
  br i1 %6233, label %6275, label %6234

; <label>:6234                                    ; preds = %6178
  br label %6235

; <label>:6235                                    ; preds = %6263, %6234
  %6236 = phi i32 [ %6266, %6263 ], [ 0, %6234 ]
  %6237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6238 = extractvalue %dx.types.ResRet.i32 %6237, 0
  %6239 = lshr i32 %6238, 16
  %6240 = and i32 %6239, 31
  %6241 = shl i32 %6224, %6240
  %6242 = add i32 %6241, %6223
  %6243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6244 = extractvalue %dx.types.ResRet.i32 %6243, 0
  %6245 = and i32 %6244, 31
  %6246 = shl i32 %6242, %6245
  %6247 = add i32 %6246, %6236
  %6248 = shl i32 %6247, 2
  %6249 = add i32 %6248, 32
  %6250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6249, i32 undef)  ; BufferLoad(srv,index,wot)
  %6251 = extractvalue %dx.types.ResRet.i32 %6250, 0
  %6252 = icmp slt i32 %6251, 0
  %6253 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6236
  %6254 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6236
  %6255 = bitcast float* %6253 to i32*
  %6256 = bitcast float* %6254 to i32*
  br i1 %6252, label %6257, label %6263

; <label>:6257                                    ; preds = %6235
  %6258 = and i32 %6251, 1073741823
  %6259 = add nuw nsw i32 %6258, 20
  %6260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6259, i32 undef)  ; BufferLoad(srv,index,wot)
  %6261 = extractvalue %dx.types.ResRet.i32 %6260, 0
  %6262 = extractvalue %dx.types.ResRet.i32 %6260, 1
  br label %6263

; <label>:6263                                    ; preds = %6257, %6235
  %6264 = phi i32 [ %6261, %6257 ], [ %6231, %6235 ]
  %6265 = phi i32 [ %6262, %6257 ], [ %6232, %6235 ]
  store i32 %6264, i32* %6255, align 4
  store i32 %6265, i32* %6256, align 4
  %6266 = add nuw i32 %6236, 1
  %6267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6268 = extractvalue %dx.types.CBufRet.i32 %6267, 2
  %6269 = icmp eq i32 %6268, 0
  %6270 = icmp ugt i32 %6251, -1073741825
  %6271 = and i1 %6270, %6269
  %6272 = icmp ult i32 %6266, %6229
  %6273 = and i1 %6271, %6272
  br i1 %6273, label %6235, label %6274

; <label>:6274                                    ; preds = %6263
  br label %6275

; <label>:6275                                    ; preds = %6274, %6178
  %6276 = phi i32 [ 0, %6178 ], [ %6266, %6274 ]
  %6277 = extractvalue %dx.types.CBufRet.f32 %6040, 2
  %6278 = fptoui float %6277 to i32
  %6279 = icmp eq i32 %6278, 0
  br i1 %6279, label %6331, label %6280

; <label>:6280                                    ; preds = %6275
  br label %6281

; <label>:6281                                    ; preds = %6326, %6280
  %6282 = phi i32 [ %6327, %6326 ], [ %6276, %6280 ]
  %6283 = phi i32 [ %6328, %6326 ], [ 0, %6280 ]
  %6284 = lshr i32 %6283, 2
  %6285 = and i32 %6283, 3
  %6286 = add nuw nsw i32 %6284, 83
  %6287 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %6286)  ; CBufferLoadLegacy(handle,regIndex)
  %6288 = extractvalue %dx.types.CBufRet.i32 %6287, 0
  %6289 = extractvalue %dx.types.CBufRet.i32 %6287, 1
  %6290 = extractvalue %dx.types.CBufRet.i32 %6287, 2
  %6291 = extractvalue %dx.types.CBufRet.i32 %6287, 3
  %6292 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %6288, i32* %6292, align 4
  %6293 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %6289, i32* %6293, align 4
  %6294 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %6290, i32* %6294, align 4
  %6295 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %6291, i32* %6295, align 4
  %6296 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %6285
  %6297 = load i32, i32* %6296, align 4, !tbaa !93, !noalias !97
  %6298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6299 = extractvalue %dx.types.ResRet.i32 %6298, 0
  %6300 = lshr i32 %6299, 16
  %6301 = and i32 %6300, 31
  %6302 = shl i32 %6224, %6301
  %6303 = add i32 %6302, %6223
  %6304 = shl i32 %6303, 2
  %6305 = add i32 %6304, %6297
  %6306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6305, i32 undef)  ; BufferLoad(srv,index,wot)
  %6307 = extractvalue %dx.types.ResRet.i32 %6306, 0
  %6308 = icmp eq i32 %6307, 0
  br i1 %6308, label %6326, label %6309

; <label>:6309                                    ; preds = %6281
  %6310 = icmp slt i32 %6307, 0
  %6311 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6282
  %6312 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6282
  %6313 = bitcast float* %6311 to i32*
  %6314 = bitcast float* %6312 to i32*
  br i1 %6310, label %6315, label %6322

; <label>:6315                                    ; preds = %6309
  %6316 = and i32 %6307, 1073741823
  %6317 = add i32 %6297, 20
  %6318 = add i32 %6317, %6316
  %6319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6318, i32 undef)  ; BufferLoad(srv,index,wot)
  %6320 = extractvalue %dx.types.ResRet.i32 %6319, 0
  %6321 = extractvalue %dx.types.ResRet.i32 %6319, 1
  br label %6322

; <label>:6322                                    ; preds = %6315, %6309
  %6323 = phi i32 [ %6320, %6315 ], [ %6231, %6309 ]
  %6324 = phi i32 [ %6321, %6315 ], [ %6232, %6309 ]
  store i32 %6323, i32* %6313, align 4
  store i32 %6324, i32* %6314, align 4
  %6325 = add i32 %6282, 1
  br label %6326

; <label>:6326                                    ; preds = %6322, %6281
  %6327 = phi i32 [ %6282, %6281 ], [ %6325, %6322 ]
  %6328 = add nuw i32 %6283, 1
  %6329 = icmp eq i32 %6328, %6278
  br i1 %6329, label %6330, label %6281

; <label>:6330                                    ; preds = %6326
  br label %6331

; <label>:6331                                    ; preds = %6330, %6275
  %6332 = phi i32 [ %6276, %6275 ], [ %6327, %6330 ]
  %6333 = icmp eq i32 %6332, 1
  %6334 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 0
  %6335 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  br i1 %6333, label %6336, label %6339

; <label>:6336                                    ; preds = %6331
  %6337 = load float, float* %6334, align 4
  %6338 = load float, float* %6335, align 4
  br label %6366

; <label>:6339                                    ; preds = %6331
  %6340 = load float, float* %6334, align 4
  %6341 = load float, float* %6335, align 4
  %6342 = fdiv fast float 1.000000e+00, %6341
  %6343 = fsub fast float %6340, %6342
  %6344 = icmp ugt i32 %6332, 1
  br i1 %6344, label %6345, label %6361

; <label>:6345                                    ; preds = %6339
  br label %6346

; <label>:6346                                    ; preds = %6346, %6345
  %6347 = phi float [ %6356, %6346 ], [ %6343, %6345 ]
  %6348 = phi float [ %6357, %6346 ], [ %6340, %6345 ]
  %6349 = phi i32 [ %6358, %6346 ], [ 1, %6345 ]
  %6350 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6349
  %6351 = load float, float* %6350, align 4
  %6352 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6349
  %6353 = load float, float* %6352, align 4
  %6354 = fdiv fast float 1.000000e+00, %6353
  %6355 = fsub fast float %6351, %6354
  %6356 = call float @dx.op.binary.f32(i32 36, float %6347, float %6355)  ; FMin(a,b)
  %6357 = call float @dx.op.binary.f32(i32 35, float %6348, float %6351)  ; FMax(a,b)
  %6358 = add nuw i32 %6349, 1
  %6359 = icmp eq i32 %6358, %6332
  br i1 %6359, label %6360, label %6346

; <label>:6360                                    ; preds = %6346
  br label %6361

; <label>:6361                                    ; preds = %6360, %6339
  %6362 = phi float [ %6343, %6339 ], [ %6356, %6360 ]
  %6363 = phi float [ %6340, %6339 ], [ %6357, %6360 ]
  %6364 = fsub fast float %6363, %6362
  %6365 = fdiv fast float 1.000000e+00, %6364
  br label %6366

; <label>:6366                                    ; preds = %6361, %6336
  %6367 = phi float [ %6337, %6336 ], [ %6363, %6361 ]
  %6368 = phi float [ %6338, %6336 ], [ %6365, %6361 ]
  %6369 = fadd fast float %6070, %6367
  %6370 = fmul fast float %6369, %6368
  %6371 = call float @dx.op.unary.f32(i32 7, float %6370)  ; Saturate(value)
  %6372 = fmul fast float %6371, 2.000000e+00
  %6373 = fsub fast float 1.000000e+00, %6372
  %6374 = fmul fast float %6208, %6208
  %6375 = fsub fast float %6209, %6374
  %6376 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6375)  ; FMax(a,b)
  %6377 = fdiv fast float 1.000000e+00, %6376
  %6378 = fmul fast float %6209, %6208
  %6379 = fsub fast float %6210, %6378
  %6380 = fsub fast float %6373, %6208
  %6381 = fmul fast float %6373, %6373
  %6382 = fsub fast float %6381, %6209
  %6383 = fmul fast float %6377, %6379
  %6384 = fmul fast float %6383, %6380
  %6385 = fsub fast float %6382, %6384
  %6386 = fmul fast float %6209, %6209
  %6387 = fsub fast float %6211, %6386
  %6388 = fmul fast float %6379, %6379
  %6389 = fmul fast float %6388, %6377
  %6390 = fsub fast float %6387, %6389
  %6391 = fdiv fast float %6385, %6390
  %6392 = fmul fast float %6391, %6379
  %6393 = fsub fast float %6380, %6392
  %6394 = fmul fast float %6393, %6377
  %6395 = fmul fast float %6394, %6208
  %6396 = fsub fast float 1.000000e+00, %6395
  %6397 = fmul fast float %6391, %6209
  %6398 = fsub fast float %6396, %6397
  %6399 = fmul fast float %6394, %6394
  %6400 = fmul fast float %6391, 4.000000e+00
  %6401 = fmul fast float %6400, %6398
  %6402 = fsub fast float %6399, %6401
  %6403 = call float @dx.op.unary.f32(i32 24, float %6402)  ; Sqrt(value)
  %6404 = fcmp fast oge float %6394, 0.000000e+00
  %6405 = fsub fast float -0.000000e+00, %6403
  %6406 = select i1 %6404, float %6405, float %6403
  %6407 = fsub fast float %6406, %6394
  %6408 = fdiv fast float %6407, %6391
  %6409 = fdiv fast float %6398, %6407
  %6410 = fmul fast float %6408, 5.000000e-01
  %6411 = fmul fast float %6409, 2.000000e+00
  %6412 = select i1 %6404, float %6410, float %6411
  %6413 = select i1 %6404, float %6411, float %6410
  %6414 = call float @dx.op.binary.f32(i32 35, float %6412, float %6413)  ; FMax(a,b)
  %6415 = call float @dx.op.binary.f32(i32 36, float %6412, float %6413)  ; FMin(a,b)
  %6416 = fcmp fast ogt float %6373, %6414
  %6417 = fsub fast float %6373, %6415
  %6418 = fsub fast float %6373, %6414
  %6419 = fsub fast float %6414, %6415
  %6420 = select i1 %6416, float %6418, float %6419
  %6421 = fmul float %6417, %6420
  %6422 = select i1 %6416, float %6415, float %6373
  %6423 = fcmp fast ogt float %6373, %6415
  %6424 = fmul fast float %6422, %6414
  %6425 = fadd fast float %6422, %6414
  %6426 = fmul fast float %6425, %6208
  %6427 = fadd fast float %6424, %6209
  %6428 = fsub fast float %6427, %6426
  %6429 = fdiv fast float %6428, %6421
  %6430 = select i1 %6423, float %6429, float 0.000000e+00
  %6431 = fsub fast float 1.000000e+00, %6430
  %6432 = select i1 %6416, float %6431, float %6430
  %6433 = call float @dx.op.unary.f32(i32 7, float %6432)  ; Saturate(value)
  %6434 = extractvalue %dx.types.CBufRet.f32 %6193, 3
  %6435 = fmul fast float %6434, %6433
  %6436 = fsub fast float 1.000000e+00, %6435
  br label %6437

; <label>:6437                                    ; preds = %6366, %6078, %6043, %6039, %6005
  %6438 = phi float [ 1.000000e+00, %6005 ], [ %6436, %6366 ], [ 1.000000e+00, %6043 ], [ 1.000000e+00, %6078 ], [ 1.000000e+00, %6039 ]
  %6439 = fcmp fast ogt float %6035, 0.000000e+00
  br i1 %6439, label %6440, label %6602, !dx.controlflow.hints !106

; <label>:6440                                    ; preds = %6437
  %6441 = fadd fast float %5948, %5922
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 2
  %6444 = extractvalue %dx.types.CBufRet.f32 %6442, 3
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 2
  %6447 = call float @dx.op.binary.f32(i32 35, float %6441, float 0.000000e+00)  ; FMax(a,b)
  %6448 = fadd fast float %6447, 0x3F10000000000000
  %6449 = fcmp fast oeq float %6446, 0.000000e+00
  br i1 %6449, label %6450, label %6517

; <label>:6450                                    ; preds = %6440
  %6451 = extractvalue %dx.types.CBufRet.f32 %6442, 1
  %6452 = extractvalue %dx.types.CBufRet.f32 %6442, 0
  %6453 = fmul fast float %6452, %5937
  %6454 = fmul fast float %6451, %5938
  %6455 = fadd fast float %6453, 5.000000e-01
  %6456 = call float @dx.op.unary.f32(i32 27, float %6455)  ; Round_ni(value)
  %6457 = fadd fast float %6454, 5.000000e-01
  %6458 = call float @dx.op.unary.f32(i32 27, float %6457)  ; Round_ni(value)
  %6459 = fsub fast float %6455, %6456
  %6460 = fsub fast float %6457, %6458
  %6461 = fadd fast float %6456, -5.000000e-01
  %6462 = fadd fast float %6458, -5.000000e-01
  %6463 = fmul fast float %6459, 2.000000e+00
  %6464 = fsub fast float 3.000000e+00, %6463
  %6465 = fadd fast float %6463, 1.000000e+00
  %6466 = fsub fast float 2.000000e+00, %6459
  %6467 = bitcast float %6464 to i32
  %6468 = sub nsw i32 2129859010, %6467
  %6469 = bitcast i32 %6468 to float
  %6470 = fmul fast float %6469, %6466
  %6471 = fadd fast float %6470, -1.000000e+00
  %6472 = bitcast float %6465 to i32
  %6473 = sub nsw i32 2129859010, %6472
  %6474 = bitcast i32 %6473 to float
  %6475 = fmul fast float %6474, %6459
  %6476 = fadd fast float %6475, 1.000000e+00
  %6477 = fmul fast float %6460, 2.000000e+00
  %6478 = fsub fast float 3.000000e+00, %6477
  %6479 = fadd fast float %6477, 1.000000e+00
  %6480 = fsub fast float 2.000000e+00, %6460
  %6481 = bitcast float %6478 to i32
  %6482 = sub nsw i32 2129859010, %6481
  %6483 = bitcast i32 %6482 to float
  %6484 = fmul fast float %6483, %6480
  %6485 = fadd fast float %6484, -1.000000e+00
  %6486 = bitcast float %6479 to i32
  %6487 = sub nsw i32 2129859010, %6486
  %6488 = bitcast i32 %6487 to float
  %6489 = fmul fast float %6488, %6460
  %6490 = fadd fast float %6489, 1.000000e+00
  %6491 = fadd fast float %6471, %6461
  %6492 = fmul fast float %6491, %6443
  %6493 = fadd fast float %6485, %6462
  %6494 = fmul fast float %6493, %6444
  %6495 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6492, float %6494, float undef, float undef, i32 0, i32 0, i32 undef, float %6448)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6496 = extractvalue %dx.types.ResRet.f32 %6495, 0
  %6497 = fmul fast float %6496, %6464
  %6498 = fadd fast float %6476, %6461
  %6499 = fmul fast float %6498, %6443
  %6500 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6499, float %6494, float undef, float undef, i32 0, i32 0, i32 undef, float %6448)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6501 = extractvalue %dx.types.ResRet.f32 %6500, 0
  %6502 = fmul fast float %6501, %6465
  %6503 = fadd fast float %6490, %6462
  %6504 = fmul fast float %6503, %6444
  %6505 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6492, float %6504, float undef, float undef, i32 0, i32 0, i32 undef, float %6448)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6506 = extractvalue %dx.types.ResRet.f32 %6505, 0
  %6507 = fmul fast float %6506, %6464
  %6508 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6499, float %6504, float undef, float undef, i32 0, i32 0, i32 undef, float %6448)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6509 = extractvalue %dx.types.ResRet.f32 %6508, 0
  %6510 = fmul fast float %6509, %6465
  %6511 = fadd fast float %6510, %6507
  %6512 = fmul fast float %6511, %6479
  %6513 = fadd fast float %6502, %6497
  %6514 = fmul fast float %6513, %6478
  %6515 = fadd fast float %6514, %6512
  %6516 = fmul fast float %6515, 6.250000e-02
  br label %6602

; <label>:6517                                    ; preds = %6440
  %6518 = fmul fast float %224, 0x401921FB60000000
  %6519 = call float @dx.op.unary.f32(i32 13, float %6518)  ; Sin(value)
  %6520 = call float @dx.op.unary.f32(i32 12, float %6518)  ; Cos(value)
  %6521 = fsub fast float -0.000000e+00, %6519
  br label %6522

; <label>:6522                                    ; preds = %6571, %6517
  %6523 = phi float [ 0.000000e+00, %6517 ], [ %6566, %6571 ]
  %6524 = phi float [ 0.000000e+00, %6517 ], [ %6568, %6571 ]
  %6525 = phi i32 [ 0, %6517 ], [ %6572, %6571 ]
  %6526 = mul i32 %6525, 2
  %6527 = add i32 0, %6526
  %6528 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6527
  %6529 = load float, float* %6528, align 4
  %6530 = mul i32 %6525, 2
  %6531 = add i32 1, %6530
  %6532 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6531
  %6533 = load float, float* %6532, align 4
  %6534 = fmul fast float %6529, %6520
  %6535 = call float @dx.op.tertiary.f32(i32 46, float %6533, float %6521, float %6534)  ; FMad(a,b,c)
  %6536 = fmul fast float %6529, %6519
  %6537 = call float @dx.op.tertiary.f32(i32 46, float %6533, float %6520, float %6536)  ; FMad(a,b,c)
  %6538 = fmul fast float %6535, %6446
  %6539 = fmul fast float %6537, %6446
  %6540 = fadd fast float %6538, %5937
  %6541 = fadd fast float %6539, %5938
  %6542 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %6540, float %6541, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6543 = extractvalue %dx.types.ResRet.f32 %6542, 0
  %6544 = extractvalue %dx.types.ResRet.f32 %6542, 1
  %6545 = extractvalue %dx.types.ResRet.f32 %6542, 2
  %6546 = extractvalue %dx.types.ResRet.f32 %6542, 3
  %6547 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %6543, float* %6547, align 4
  %6548 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %6544, float* %6548, align 4
  %6549 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %6545, float* %6549, align 4
  %6550 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %6546, float* %6550, align 4
  %6551 = fsub fast float %6543, %6448
  %6552 = fcmp fast olt float %6551, 0.000000e+00
  %6553 = select i1 %6552, float 0.000000e+00, float 1.000000e+00
  %6554 = fadd fast float %6553, %6523
  %6555 = fmul fast float %6553, %6551
  %6556 = fadd fast float %6555, %6524
  br label %6557

; <label>:6557                                    ; preds = %6557, %6522
  %6558 = phi i32 [ 1, %6522 ], [ %6569, %6557 ]
  %6559 = phi float [ %6556, %6522 ], [ %6568, %6557 ]
  %6560 = phi float [ %6554, %6522 ], [ %6566, %6557 ]
  %6561 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %6558
  %6562 = load float, float* %6561, align 4, !tbaa !107, !noalias !97
  %6563 = fsub fast float %6562, %6448
  %6564 = fcmp fast olt float %6563, 0.000000e+00
  %6565 = select i1 %6564, float 0.000000e+00, float 1.000000e+00
  %6566 = fadd fast float %6565, %6560
  %6567 = fmul fast float %6565, %6563
  %6568 = fadd fast float %6567, %6559
  %6569 = add nuw nsw i32 %6558, 1
  %6570 = icmp eq i32 %6569, 4
  br i1 %6570, label %6571, label %6557, !llvm.loop !109

; <label>:6571                                    ; preds = %6557
  %6572 = add nuw nsw i32 %6525, 1
  %6573 = icmp eq i32 %6572, 8
  br i1 %6573, label %6574, label %6522, !llvm.loop !110

; <label>:6574                                    ; preds = %6571
  %6575 = fdiv fast float 1.000000e+00, %6566
  %6576 = fmul fast float %6575, %6568
  %6577 = fdiv fast float 1.000000e+00, %6448
  %6578 = fmul fast float %6576, %6577
  %6579 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6580 = call float @dx.op.binary.f32(i32 35, float %6579, float 0.000000e+00)  ; FMax(a,b)
  %6581 = fmul fast float %6566, 3.125000e-02
  %6582 = call float @dx.op.unary.f32(i32 7, float %6581)  ; Saturate(value)
  %6583 = fmul fast float %6582, 2.000000e+00
  %6584 = fadd fast float %6583, -1.000000e+00
  %6585 = fcmp fast ogt float %6584, 0.000000e+00
  %6586 = fcmp fast olt float %6584, 0.000000e+00
  %6587 = zext i1 %6585 to i32
  %6588 = zext i1 %6586 to i32
  %6589 = sub nsw i32 %6587, %6588
  %6590 = sitofp i32 %6589 to float
  %6591 = fmul fast float %6590, %6584
  %6592 = fsub fast float 1.000000e+00, %6591
  %6593 = fmul fast float %6592, %6592
  %6594 = fmul fast float %6593, %6592
  %6595 = fsub fast float %6592, %6594
  %6596 = fmul fast float %6595, %6580
  %6597 = fsub fast float 1.000000e+00, %6594
  %6598 = fsub fast float %6597, %6596
  %6599 = fmul fast float %6590, 5.000000e-01
  %6600 = fmul fast float %6599, %6598
  %6601 = fsub fast float 5.000000e-01, %6600
  br label %6602

; <label>:6602                                    ; preds = %6574, %6450, %6437
  %6603 = phi float [ 1.000000e+00, %6437 ], [ %6516, %6450 ], [ %6601, %6574 ]
  %6604 = fcmp fast ogt float %6033, 0.000000e+00
  br i1 %6604, label %6605, label %6769, !dx.controlflow.hints !111

; <label>:6605                                    ; preds = %6602
  %6606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6607 = extractvalue %dx.types.CBufRet.f32 %6606, 1
  %6608 = fadd fast float %6607, %5922
  %6609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6610 = extractvalue %dx.types.CBufRet.f32 %6609, 2
  %6611 = extractvalue %dx.types.CBufRet.f32 %6609, 3
  %6612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6613 = extractvalue %dx.types.CBufRet.f32 %6612, 1
  %6614 = call float @dx.op.binary.f32(i32 35, float %6608, float 0.000000e+00)  ; FMax(a,b)
  %6615 = fadd fast float %6614, 0x3F10000000000000
  %6616 = fcmp fast oeq float %6613, 0.000000e+00
  br i1 %6616, label %6617, label %6684

; <label>:6617                                    ; preds = %6605
  %6618 = extractvalue %dx.types.CBufRet.f32 %6609, 1
  %6619 = extractvalue %dx.types.CBufRet.f32 %6609, 0
  %6620 = fmul fast float %6619, %5929
  %6621 = fmul fast float %6618, %5930
  %6622 = fadd fast float %6620, 5.000000e-01
  %6623 = call float @dx.op.unary.f32(i32 27, float %6622)  ; Round_ni(value)
  %6624 = fadd fast float %6621, 5.000000e-01
  %6625 = call float @dx.op.unary.f32(i32 27, float %6624)  ; Round_ni(value)
  %6626 = fsub fast float %6622, %6623
  %6627 = fsub fast float %6624, %6625
  %6628 = fadd fast float %6623, -5.000000e-01
  %6629 = fadd fast float %6625, -5.000000e-01
  %6630 = fmul fast float %6626, 2.000000e+00
  %6631 = fsub fast float 3.000000e+00, %6630
  %6632 = fadd fast float %6630, 1.000000e+00
  %6633 = fsub fast float 2.000000e+00, %6626
  %6634 = bitcast float %6631 to i32
  %6635 = sub nsw i32 2129859010, %6634
  %6636 = bitcast i32 %6635 to float
  %6637 = fmul fast float %6636, %6633
  %6638 = fadd fast float %6637, -1.000000e+00
  %6639 = bitcast float %6632 to i32
  %6640 = sub nsw i32 2129859010, %6639
  %6641 = bitcast i32 %6640 to float
  %6642 = fmul fast float %6641, %6626
  %6643 = fadd fast float %6642, 1.000000e+00
  %6644 = fmul fast float %6627, 2.000000e+00
  %6645 = fsub fast float 3.000000e+00, %6644
  %6646 = fadd fast float %6644, 1.000000e+00
  %6647 = fsub fast float 2.000000e+00, %6627
  %6648 = bitcast float %6645 to i32
  %6649 = sub nsw i32 2129859010, %6648
  %6650 = bitcast i32 %6649 to float
  %6651 = fmul fast float %6650, %6647
  %6652 = fadd fast float %6651, -1.000000e+00
  %6653 = bitcast float %6646 to i32
  %6654 = sub nsw i32 2129859010, %6653
  %6655 = bitcast i32 %6654 to float
  %6656 = fmul fast float %6655, %6627
  %6657 = fadd fast float %6656, 1.000000e+00
  %6658 = fadd fast float %6638, %6628
  %6659 = fmul fast float %6658, %6610
  %6660 = fadd fast float %6652, %6629
  %6661 = fmul fast float %6660, %6611
  %6662 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6659, float %6661, float undef, float undef, i32 0, i32 0, i32 undef, float %6615)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6663 = extractvalue %dx.types.ResRet.f32 %6662, 0
  %6664 = fmul fast float %6663, %6631
  %6665 = fadd fast float %6643, %6628
  %6666 = fmul fast float %6665, %6610
  %6667 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6666, float %6661, float undef, float undef, i32 0, i32 0, i32 undef, float %6615)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6668 = extractvalue %dx.types.ResRet.f32 %6667, 0
  %6669 = fmul fast float %6668, %6632
  %6670 = fadd fast float %6657, %6629
  %6671 = fmul fast float %6670, %6611
  %6672 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6659, float %6671, float undef, float undef, i32 0, i32 0, i32 undef, float %6615)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6673 = extractvalue %dx.types.ResRet.f32 %6672, 0
  %6674 = fmul fast float %6673, %6631
  %6675 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6666, float %6671, float undef, float undef, i32 0, i32 0, i32 undef, float %6615)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6676 = extractvalue %dx.types.ResRet.f32 %6675, 0
  %6677 = fmul fast float %6676, %6632
  %6678 = fadd fast float %6677, %6674
  %6679 = fmul fast float %6678, %6646
  %6680 = fadd fast float %6669, %6664
  %6681 = fmul fast float %6680, %6645
  %6682 = fadd fast float %6681, %6679
  %6683 = fmul fast float %6682, 6.250000e-02
  br label %6769

; <label>:6684                                    ; preds = %6605
  %6685 = fmul fast float %224, 0x401921FB60000000
  %6686 = call float @dx.op.unary.f32(i32 13, float %6685)  ; Sin(value)
  %6687 = call float @dx.op.unary.f32(i32 12, float %6685)  ; Cos(value)
  %6688 = fsub fast float -0.000000e+00, %6686
  br label %6689

; <label>:6689                                    ; preds = %6738, %6684
  %6690 = phi float [ 0.000000e+00, %6684 ], [ %6733, %6738 ]
  %6691 = phi float [ 0.000000e+00, %6684 ], [ %6735, %6738 ]
  %6692 = phi i32 [ 0, %6684 ], [ %6739, %6738 ]
  %6693 = mul i32 %6692, 2
  %6694 = add i32 0, %6693
  %6695 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6694
  %6696 = load float, float* %6695, align 4
  %6697 = mul i32 %6692, 2
  %6698 = add i32 1, %6697
  %6699 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6698
  %6700 = load float, float* %6699, align 4
  %6701 = fmul fast float %6696, %6687
  %6702 = call float @dx.op.tertiary.f32(i32 46, float %6700, float %6688, float %6701)  ; FMad(a,b,c)
  %6703 = fmul fast float %6696, %6686
  %6704 = call float @dx.op.tertiary.f32(i32 46, float %6700, float %6687, float %6703)  ; FMad(a,b,c)
  %6705 = fmul fast float %6702, %6613
  %6706 = fmul fast float %6704, %6613
  %6707 = fadd fast float %6705, %5929
  %6708 = fadd fast float %6706, %5930
  %6709 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %6707, float %6708, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6710 = extractvalue %dx.types.ResRet.f32 %6709, 0
  %6711 = extractvalue %dx.types.ResRet.f32 %6709, 1
  %6712 = extractvalue %dx.types.ResRet.f32 %6709, 2
  %6713 = extractvalue %dx.types.ResRet.f32 %6709, 3
  %6714 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 0
  store float %6710, float* %6714, align 4
  %6715 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 1
  store float %6711, float* %6715, align 4
  %6716 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 2
  store float %6712, float* %6716, align 4
  %6717 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 3
  store float %6713, float* %6717, align 4
  %6718 = fsub fast float %6710, %6615
  %6719 = fcmp fast olt float %6718, 0.000000e+00
  %6720 = select i1 %6719, float 0.000000e+00, float 1.000000e+00
  %6721 = fadd fast float %6720, %6690
  %6722 = fmul fast float %6720, %6718
  %6723 = fadd fast float %6722, %6691
  br label %6724

; <label>:6724                                    ; preds = %6724, %6689
  %6725 = phi i32 [ 1, %6689 ], [ %6736, %6724 ]
  %6726 = phi float [ %6723, %6689 ], [ %6735, %6724 ]
  %6727 = phi float [ %6721, %6689 ], [ %6733, %6724 ]
  %6728 = getelementptr [4 x float], [4 x float]* %89, i32 0, i32 %6725
  %6729 = load float, float* %6728, align 4, !tbaa !107, !noalias !97
  %6730 = fsub fast float %6729, %6615
  %6731 = fcmp fast olt float %6730, 0.000000e+00
  %6732 = select i1 %6731, float 0.000000e+00, float 1.000000e+00
  %6733 = fadd fast float %6732, %6727
  %6734 = fmul fast float %6732, %6730
  %6735 = fadd fast float %6734, %6726
  %6736 = add nuw nsw i32 %6725, 1
  %6737 = icmp eq i32 %6736, 4
  br i1 %6737, label %6738, label %6724, !llvm.loop !109

; <label>:6738                                    ; preds = %6724
  %6739 = add nuw nsw i32 %6692, 1
  %6740 = icmp eq i32 %6739, 8
  br i1 %6740, label %6741, label %6689, !llvm.loop !110

; <label>:6741                                    ; preds = %6738
  %6742 = fdiv fast float 1.000000e+00, %6733
  %6743 = fmul fast float %6742, %6735
  %6744 = fdiv fast float 1.000000e+00, %6615
  %6745 = fmul fast float %6743, %6744
  %6746 = call float @dx.op.unary.f32(i32 7, float %6745)  ; Saturate(value)
  %6747 = call float @dx.op.binary.f32(i32 35, float %6746, float 0.000000e+00)  ; FMax(a,b)
  %6748 = fmul fast float %6733, 3.125000e-02
  %6749 = call float @dx.op.unary.f32(i32 7, float %6748)  ; Saturate(value)
  %6750 = fmul fast float %6749, 2.000000e+00
  %6751 = fadd fast float %6750, -1.000000e+00
  %6752 = fcmp fast ogt float %6751, 0.000000e+00
  %6753 = fcmp fast olt float %6751, 0.000000e+00
  %6754 = zext i1 %6752 to i32
  %6755 = zext i1 %6753 to i32
  %6756 = sub nsw i32 %6754, %6755
  %6757 = sitofp i32 %6756 to float
  %6758 = fmul fast float %6757, %6751
  %6759 = fsub fast float 1.000000e+00, %6758
  %6760 = fmul fast float %6759, %6759
  %6761 = fmul fast float %6760, %6759
  %6762 = fsub fast float %6759, %6761
  %6763 = fmul fast float %6762, %6747
  %6764 = fsub fast float 1.000000e+00, %6761
  %6765 = fsub fast float %6764, %6763
  %6766 = fmul fast float %6757, 5.000000e-01
  %6767 = fmul fast float %6766, %6765
  %6768 = fsub fast float 5.000000e-01, %6767
  br label %6769

; <label>:6769                                    ; preds = %6741, %6617, %6602
  %6770 = phi float [ 1.000000e+00, %6602 ], [ %6683, %6617 ], [ %6768, %6741 ]
  %6771 = fcmp fast ogt float %6032, 0.000000e+00
  br i1 %6771, label %6772, label %6936, !dx.controlflow.hints !112

; <label>:6772                                    ; preds = %6769
  %6773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6774 = extractvalue %dx.types.CBufRet.f32 %6773, 0
  %6775 = fadd fast float %6774, %5922
  %6776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6777 = extractvalue %dx.types.CBufRet.f32 %6776, 2
  %6778 = extractvalue %dx.types.CBufRet.f32 %6776, 3
  %6779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6780 = extractvalue %dx.types.CBufRet.f32 %6779, 0
  %6781 = call float @dx.op.binary.f32(i32 35, float %6775, float 0.000000e+00)  ; FMax(a,b)
  %6782 = fadd fast float %6781, 0x3F10000000000000
  %6783 = fcmp fast oeq float %6780, 0.000000e+00
  br i1 %6783, label %6784, label %6851

; <label>:6784                                    ; preds = %6772
  %6785 = extractvalue %dx.types.CBufRet.f32 %6776, 1
  %6786 = extractvalue %dx.types.CBufRet.f32 %6776, 0
  %6787 = fmul fast float %6786, %5914
  %6788 = fmul fast float %6785, %5918
  %6789 = fadd fast float %6787, 5.000000e-01
  %6790 = call float @dx.op.unary.f32(i32 27, float %6789)  ; Round_ni(value)
  %6791 = fadd fast float %6788, 5.000000e-01
  %6792 = call float @dx.op.unary.f32(i32 27, float %6791)  ; Round_ni(value)
  %6793 = fsub fast float %6789, %6790
  %6794 = fsub fast float %6791, %6792
  %6795 = fadd fast float %6790, -5.000000e-01
  %6796 = fadd fast float %6792, -5.000000e-01
  %6797 = fmul fast float %6793, 2.000000e+00
  %6798 = fsub fast float 3.000000e+00, %6797
  %6799 = fadd fast float %6797, 1.000000e+00
  %6800 = fsub fast float 2.000000e+00, %6793
  %6801 = bitcast float %6798 to i32
  %6802 = sub nsw i32 2129859010, %6801
  %6803 = bitcast i32 %6802 to float
  %6804 = fmul fast float %6803, %6800
  %6805 = fadd fast float %6804, -1.000000e+00
  %6806 = bitcast float %6799 to i32
  %6807 = sub nsw i32 2129859010, %6806
  %6808 = bitcast i32 %6807 to float
  %6809 = fmul fast float %6808, %6793
  %6810 = fadd fast float %6809, 1.000000e+00
  %6811 = fmul fast float %6794, 2.000000e+00
  %6812 = fsub fast float 3.000000e+00, %6811
  %6813 = fadd fast float %6811, 1.000000e+00
  %6814 = fsub fast float 2.000000e+00, %6794
  %6815 = bitcast float %6812 to i32
  %6816 = sub nsw i32 2129859010, %6815
  %6817 = bitcast i32 %6816 to float
  %6818 = fmul fast float %6817, %6814
  %6819 = fadd fast float %6818, -1.000000e+00
  %6820 = bitcast float %6813 to i32
  %6821 = sub nsw i32 2129859010, %6820
  %6822 = bitcast i32 %6821 to float
  %6823 = fmul fast float %6822, %6794
  %6824 = fadd fast float %6823, 1.000000e+00
  %6825 = fadd fast float %6805, %6795
  %6826 = fmul fast float %6825, %6777
  %6827 = fadd fast float %6819, %6796
  %6828 = fmul fast float %6827, %6778
  %6829 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6826, float %6828, float undef, float undef, i32 0, i32 0, i32 undef, float %6782)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6830 = extractvalue %dx.types.ResRet.f32 %6829, 0
  %6831 = fmul fast float %6830, %6798
  %6832 = fadd fast float %6810, %6795
  %6833 = fmul fast float %6832, %6777
  %6834 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6833, float %6828, float undef, float undef, i32 0, i32 0, i32 undef, float %6782)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6835 = extractvalue %dx.types.ResRet.f32 %6834, 0
  %6836 = fmul fast float %6835, %6799
  %6837 = fadd fast float %6824, %6796
  %6838 = fmul fast float %6837, %6778
  %6839 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6826, float %6838, float undef, float undef, i32 0, i32 0, i32 undef, float %6782)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6840 = extractvalue %dx.types.ResRet.f32 %6839, 0
  %6841 = fmul fast float %6840, %6798
  %6842 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6833, float %6838, float undef, float undef, i32 0, i32 0, i32 undef, float %6782)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6843 = extractvalue %dx.types.ResRet.f32 %6842, 0
  %6844 = fmul fast float %6843, %6799
  %6845 = fadd fast float %6844, %6841
  %6846 = fmul fast float %6845, %6813
  %6847 = fadd fast float %6836, %6831
  %6848 = fmul fast float %6847, %6812
  %6849 = fadd fast float %6848, %6846
  %6850 = fmul fast float %6849, 6.250000e-02
  br label %6936

; <label>:6851                                    ; preds = %6772
  %6852 = fmul fast float %224, 0x401921FB60000000
  %6853 = call float @dx.op.unary.f32(i32 13, float %6852)  ; Sin(value)
  %6854 = call float @dx.op.unary.f32(i32 12, float %6852)  ; Cos(value)
  %6855 = fsub fast float -0.000000e+00, %6853
  br label %6856

; <label>:6856                                    ; preds = %6905, %6851
  %6857 = phi float [ 0.000000e+00, %6851 ], [ %6900, %6905 ]
  %6858 = phi float [ 0.000000e+00, %6851 ], [ %6902, %6905 ]
  %6859 = phi i32 [ 0, %6851 ], [ %6906, %6905 ]
  %6860 = mul i32 %6859, 2
  %6861 = add i32 0, %6860
  %6862 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6861
  %6863 = load float, float* %6862, align 4
  %6864 = mul i32 %6859, 2
  %6865 = add i32 1, %6864
  %6866 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6865
  %6867 = load float, float* %6866, align 4
  %6868 = fmul fast float %6863, %6854
  %6869 = call float @dx.op.tertiary.f32(i32 46, float %6867, float %6855, float %6868)  ; FMad(a,b,c)
  %6870 = fmul fast float %6863, %6853
  %6871 = call float @dx.op.tertiary.f32(i32 46, float %6867, float %6854, float %6870)  ; FMad(a,b,c)
  %6872 = fmul fast float %6869, %6780
  %6873 = fmul fast float %6871, %6780
  %6874 = fadd fast float %6872, %5914
  %6875 = fadd fast float %6873, %5918
  %6876 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %6874, float %6875, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6877 = extractvalue %dx.types.ResRet.f32 %6876, 0
  %6878 = extractvalue %dx.types.ResRet.f32 %6876, 1
  %6879 = extractvalue %dx.types.ResRet.f32 %6876, 2
  %6880 = extractvalue %dx.types.ResRet.f32 %6876, 3
  %6881 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 0
  store float %6877, float* %6881, align 4
  %6882 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 1
  store float %6878, float* %6882, align 4
  %6883 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 2
  store float %6879, float* %6883, align 4
  %6884 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 3
  store float %6880, float* %6884, align 4
  %6885 = fsub fast float %6877, %6782
  %6886 = fcmp fast olt float %6885, 0.000000e+00
  %6887 = select i1 %6886, float 0.000000e+00, float 1.000000e+00
  %6888 = fadd fast float %6887, %6857
  %6889 = fmul fast float %6887, %6885
  %6890 = fadd fast float %6889, %6858
  br label %6891

; <label>:6891                                    ; preds = %6891, %6856
  %6892 = phi i32 [ 1, %6856 ], [ %6903, %6891 ]
  %6893 = phi float [ %6890, %6856 ], [ %6902, %6891 ]
  %6894 = phi float [ %6888, %6856 ], [ %6900, %6891 ]
  %6895 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 %6892
  %6896 = load float, float* %6895, align 4, !tbaa !107, !noalias !97
  %6897 = fsub fast float %6896, %6782
  %6898 = fcmp fast olt float %6897, 0.000000e+00
  %6899 = select i1 %6898, float 0.000000e+00, float 1.000000e+00
  %6900 = fadd fast float %6899, %6894
  %6901 = fmul fast float %6899, %6897
  %6902 = fadd fast float %6901, %6893
  %6903 = add nuw nsw i32 %6892, 1
  %6904 = icmp eq i32 %6903, 4
  br i1 %6904, label %6905, label %6891, !llvm.loop !109

; <label>:6905                                    ; preds = %6891
  %6906 = add nuw nsw i32 %6859, 1
  %6907 = icmp eq i32 %6906, 8
  br i1 %6907, label %6908, label %6856, !llvm.loop !110

; <label>:6908                                    ; preds = %6905
  %6909 = fdiv fast float 1.000000e+00, %6900
  %6910 = fmul fast float %6909, %6902
  %6911 = fdiv fast float 1.000000e+00, %6782
  %6912 = fmul fast float %6910, %6911
  %6913 = call float @dx.op.unary.f32(i32 7, float %6912)  ; Saturate(value)
  %6914 = call float @dx.op.binary.f32(i32 35, float %6913, float 0.000000e+00)  ; FMax(a,b)
  %6915 = fmul fast float %6900, 3.125000e-02
  %6916 = call float @dx.op.unary.f32(i32 7, float %6915)  ; Saturate(value)
  %6917 = fmul fast float %6916, 2.000000e+00
  %6918 = fadd fast float %6917, -1.000000e+00
  %6919 = fcmp fast ogt float %6918, 0.000000e+00
  %6920 = fcmp fast olt float %6918, 0.000000e+00
  %6921 = zext i1 %6919 to i32
  %6922 = zext i1 %6920 to i32
  %6923 = sub nsw i32 %6921, %6922
  %6924 = sitofp i32 %6923 to float
  %6925 = fmul fast float %6924, %6918
  %6926 = fsub fast float 1.000000e+00, %6925
  %6927 = fmul fast float %6926, %6926
  %6928 = fmul fast float %6927, %6926
  %6929 = fsub fast float %6926, %6928
  %6930 = fmul fast float %6929, %6914
  %6931 = fsub fast float 1.000000e+00, %6928
  %6932 = fsub fast float %6931, %6930
  %6933 = fmul fast float %6924, 5.000000e-01
  %6934 = fmul fast float %6933, %6932
  %6935 = fsub fast float 5.000000e-01, %6934
  br label %6936

; <label>:6936                                    ; preds = %6908, %6784, %6769
  %6937 = phi float [ 1.000000e+00, %6769 ], [ %6850, %6784 ], [ %6935, %6908 ]
  %6938 = fsub fast float %6603, %6438
  %6939 = fmul fast float %6938, %5976
  %6940 = fadd fast float %6939, %6438
  %6941 = fsub fast float %6770, %6940
  %6942 = fmul fast float %6941, %6006
  %6943 = fadd fast float %6942, %6940
  %6944 = fsub fast float %6937, %6943
  %6945 = fmul fast float %6944, %6032
  %6946 = fadd fast float %6945, %6943
  %6947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6948 = extractvalue %dx.types.CBufRet.f32 %6947, 2
  %6949 = fcmp fast ogt float %6948, 0.000000e+00
  br i1 %6949, label %6950, label %6990, !dx.controlflow.hints !113

; <label>:6950                                    ; preds = %6936
  %6951 = fcmp fast ugt float %6948, 0.000000e+00
  br i1 %6951, label %6952, label %6987

; <label>:6952                                    ; preds = %6950
  %6953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6954 = extractvalue %dx.types.CBufRet.f32 %6953, 0
  %6955 = extractvalue %dx.types.CBufRet.f32 %6953, 1
  %6956 = extractvalue %dx.types.CBufRet.f32 %6953, 2
  %6957 = extractvalue %dx.types.CBufRet.f32 %6953, 3
  %6958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6959 = extractvalue %dx.types.CBufRet.f32 %6958, 0
  %6960 = extractvalue %dx.types.CBufRet.f32 %6958, 1
  %6961 = extractvalue %dx.types.CBufRet.f32 %6958, 2
  %6962 = extractvalue %dx.types.CBufRet.f32 %6958, 3
  %6963 = extractvalue %dx.types.CBufRet.f32 %6947, 0
  %6964 = extractvalue %dx.types.CBufRet.f32 %6947, 1
  %6965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6966 = extractvalue %dx.types.CBufRet.f32 %6965, 0
  %6967 = extractvalue %dx.types.CBufRet.f32 %6965, 1
  %6968 = extractvalue %dx.types.CBufRet.f32 %6965, 2
  %6969 = fadd fast float %6966, %5891
  %6970 = fadd fast float %6967, %5892
  %6971 = fadd fast float %6968, %5893
  %6972 = fmul fast float %6969, %6954
  %6973 = call float @dx.op.tertiary.f32(i32 46, float %6955, float %6970, float %6972)  ; FMad(a,b,c)
  %6974 = call float @dx.op.tertiary.f32(i32 46, float %6956, float %6971, float %6973)  ; FMad(a,b,c)
  %6975 = fadd fast float %6974, %6957
  %6976 = fmul fast float %6969, %6959
  %6977 = call float @dx.op.tertiary.f32(i32 46, float %6960, float %6970, float %6976)  ; FMad(a,b,c)
  %6978 = call float @dx.op.tertiary.f32(i32 46, float %6961, float %6971, float %6977)  ; FMad(a,b,c)
  %6979 = fadd fast float %6978, %6962
  %6980 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %6975, float %6979, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6981 = extractvalue %dx.types.ResRet.f32 %6980, 0
  %6982 = fmul fast float %6981, %6964
  %6983 = fadd fast float %6982, %6963
  %6984 = call float @dx.op.unary.f32(i32 7, float %6983)  ; Saturate(value)
  %6985 = fmul fast float %6984, %6948
  %6986 = fsub fast float 1.000000e+00, %6985
  br label %6987

; <label>:6987                                    ; preds = %6952, %6950
  %6988 = phi float [ %6986, %6952 ], [ 1.000000e+00, %6950 ]
  %6989 = fmul fast float %6988, %6946
  br label %6990

; <label>:6990                                    ; preds = %6987, %6936, %5871
  %6991 = phi float [ 1.000000e+00, %5871 ], [ %6989, %6987 ], [ %6946, %6936 ]
  %6992 = call float @dx.op.binary.f32(i32 36, float %6991, float %6991)  ; FMin(a,b)
  %6993 = call float @dx.op.binary.f32(i32 36, float %6991, float %6992)  ; FMin(a,b)
  %6994 = fcmp fast ogt float %6993, 0.000000e+00
  br i1 %6994, label %6995, label %7161, !dx.controlflow.hints !114

; <label>:6995                                    ; preds = %6990
  %6996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6997 = extractvalue %dx.types.CBufRet.f32 %6996, 0
  %6998 = extractvalue %dx.types.CBufRet.f32 %6996, 1
  %6999 = extractvalue %dx.types.CBufRet.f32 %6996, 2
  %7000 = extractvalue %dx.types.CBufRet.f32 %6996, 3
  %7001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7002 = extractvalue %dx.types.CBufRet.f32 %7001, 0
  %7003 = extractvalue %dx.types.CBufRet.f32 %7001, 1
  %7004 = extractvalue %dx.types.CBufRet.f32 %7001, 2
  %7005 = extractvalue %dx.types.CBufRet.f32 %7001, 3
  %7006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7007 = extractvalue %dx.types.CBufRet.f32 %7006, 0
  %7008 = extractvalue %dx.types.CBufRet.f32 %7006, 1
  %7009 = extractvalue %dx.types.CBufRet.f32 %7006, 2
  %7010 = extractvalue %dx.types.CBufRet.f32 %7006, 3
  %7011 = fmul fast float %6997, %5891
  %7012 = call float @dx.op.tertiary.f32(i32 46, float %5892, float %6998, float %7011)  ; FMad(a,b,c)
  %7013 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %6999, float %7012)  ; FMad(a,b,c)
  %7014 = fadd fast float %7013, %7000
  %7015 = fmul fast float %7002, %5891
  %7016 = call float @dx.op.tertiary.f32(i32 46, float %5892, float %7003, float %7015)  ; FMad(a,b,c)
  %7017 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %7004, float %7016)  ; FMad(a,b,c)
  %7018 = fadd fast float %7017, %7005
  %7019 = fmul fast float %7007, %5891
  %7020 = call float @dx.op.tertiary.f32(i32 46, float %5892, float %7008, float %7019)  ; FMad(a,b,c)
  %7021 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %7009, float %7020)  ; FMad(a,b,c)
  %7022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7023 = extractvalue %dx.types.CBufRet.f32 %7022, 0
  %7024 = extractvalue %dx.types.CBufRet.f32 %7022, 1
  %7025 = extractvalue %dx.types.CBufRet.f32 %7022, 3
  %7026 = fmul fast float %7025, %7014
  %7027 = fmul fast float %7025, %7018
  %7028 = fadd fast float %7026, %7023
  %7029 = fadd fast float %7027, %7024
  %7030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7031 = extractvalue %dx.types.CBufRet.f32 %7030, 0
  %7032 = extractvalue %dx.types.CBufRet.f32 %7030, 1
  %7033 = fsub fast float %7028, %7031
  %7034 = fsub fast float %7029, %7032
  %7035 = fcmp fast olt float %7033, 0.000000e+00
  %7036 = fcmp fast olt float %7034, 0.000000e+00
  %7037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7038 = extractvalue %dx.types.CBufRet.f32 %7037, 0
  %7039 = extractvalue %dx.types.CBufRet.f32 %7037, 1
  %7040 = extractvalue %dx.types.CBufRet.f32 %7037, 2
  %7041 = extractvalue %dx.types.CBufRet.f32 %7037, 3
  %7042 = select i1 %7035, float %7038, float %7040
  %7043 = select i1 %7036, float %7039, float %7041
  %7044 = fmul fast float %7042, %7033
  %7045 = fmul fast float %7043, %7034
  %7046 = call float @dx.op.unary.f32(i32 6, float %7044)  ; FAbs(value)
  %7047 = call float @dx.op.unary.f32(i32 6, float %7045)  ; FAbs(value)
  %7048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7049 = extractvalue %dx.types.CBufRet.f32 %7048, 0
  %7050 = call float @dx.op.binary.f32(i32 35, float %7046, float %7047)  ; FMax(a,b)
  %7051 = fsub fast float %7049, %7050
  %7052 = call float @dx.op.unary.f32(i32 7, float %7051)  ; Saturate(value)
  %7053 = fcmp fast ogt float %7052, 0.000000e+00
  br i1 %7053, label %7054, label %7095, !dx.controlflow.hints !115

; <label>:7054                                    ; preds = %6995
  %7055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %7028, float %7029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7056 = extractvalue %dx.types.ResRet.f32 %7055, 1
  %7057 = fcmp fast ogt float %7056, 0.000000e+00
  br i1 %7057, label %7058, label %7090

; <label>:7058                                    ; preds = %7054
  %7059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %7028, float %7029, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7060 = extractvalue %dx.types.ResRet.f32 %7059, 0
  %7061 = extractvalue %dx.types.ResRet.f32 %7059, 1
  %7062 = extractvalue %dx.types.ResRet.f32 %7059, 2
  %7063 = extractvalue %dx.types.ResRet.f32 %7059, 3
  %7064 = fsub fast float 1.000000e+00, %7010
  %7065 = fsub fast float %7064, %7021
  %7066 = fmul fast float %7065, 0x400921FB60000000
  %7067 = fadd fast float %7066, 0x3FF921FB60000000
  %7068 = call float @dx.op.unary.f32(i32 13, float %7067)  ; Sin(value)
  %7069 = fadd fast float %7068, -1.000000e+00
  %7070 = fmul fast float %7069, 0x3FD45F3060000000
  %7071 = fmul fast float %7065, 0x401921FB60000000
  %7072 = fadd fast float %7071, 0x400921FB60000000
  %7073 = call float @dx.op.unary.f32(i32 13, float %7072)  ; Sin(value)
  %7074 = fadd fast float %7073, 0x3E7777A5C0000000
  %7075 = fmul fast float %7074, 0x3FC45F3060000000
  %7076 = fmul fast float %7065, 0x4022D97C80000000
  %7077 = fadd fast float %7076, 0x4012D97C80000000
  %7078 = call float @dx.op.unary.f32(i32 13, float %7077)  ; Sin(value)
  %7079 = fadd fast float %7078, 1.000000e+00
  %7080 = fmul fast float %7079, 0x3FBB2995E0000000
  %7081 = fmul fast float %7065, 0x402921FB60000000
  %7082 = fadd fast float %7081, 0x401921FB60000000
  %7083 = call float @dx.op.unary.f32(i32 13, float %7082)  ; Sin(value)
  %7084 = fadd fast float %7083, 0xBE8777A5C0000000
  %7085 = fmul fast float %7084, 0x3FB45F3060000000
  %7086 = call float @dx.op.dot4.f32(i32 56, float %7060, float %7061, float %7062, float %7063, float %7070, float %7075, float %7080, float %7085)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7087 = fmul fast float %7086, 0xBFF7154760000000
  %7088 = call float @dx.op.unary.f32(i32 21, float %7087)  ; Exp(value)
  %7089 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  br label %7090

; <label>:7090                                    ; preds = %7058, %7054
  %7091 = phi float [ %7089, %7058 ], [ 1.000000e+00, %7054 ]
  %7092 = fadd fast float %7091, -1.000000e+00
  %7093 = fmul fast float %7092, %7052
  %7094 = fadd fast float %7093, 1.000000e+00
  br label %7095

; <label>:7095                                    ; preds = %7090, %6995
  %7096 = phi float [ %7094, %7090 ], [ 1.000000e+00, %6995 ]
  %7097 = fmul fast float %7096, %6991
  %7098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7099 = extractvalue %dx.types.CBufRet.f32 %7098, 0
  %7100 = extractvalue %dx.types.CBufRet.f32 %7098, 1
  %7101 = extractvalue %dx.types.CBufRet.f32 %7098, 2
  %7102 = fadd fast float %7099, %152
  %7103 = fadd fast float %7100, %153
  %7104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7105 = extractvalue %dx.types.CBufRet.f32 %7104, 1
  %7106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7107 = extractvalue %dx.types.CBufRet.f32 %7106, 0
  %7108 = extractvalue %dx.types.CBufRet.f32 %7106, 1
  %7109 = extractvalue %dx.types.CBufRet.f32 %7106, 2
  %7110 = fsub fast float -0.000000e+00, %7102
  %7111 = fsub fast float -0.000000e+00, %7103
  %7112 = fsub fast float -0.000000e+00, %154
  %7113 = fsub fast float %7112, %7101
  %7114 = fadd fast float %7113, %7105
  %7115 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7110, float %7111, float %7114)  ; Dot3(ax,ay,az,bx,by,bz)
  %7116 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7107, float %7108, float %7109)  ; Dot3(ax,ay,az,bx,by,bz)
  %7117 = fdiv fast float 1.000000e+00, %7116
  %7118 = fmul fast float %7117, %7115
  %7119 = fmul fast float %7107, %7118
  %7120 = fmul fast float %7108, %7118
  %7121 = fadd fast float %7119, %7102
  %7122 = fadd fast float %7120, %7103
  %7123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7124 = extractvalue %dx.types.CBufRet.f32 %7123, 0
  %7125 = extractvalue %dx.types.CBufRet.f32 %7123, 1
  %7126 = fsub fast float %7121, %7124
  %7127 = fsub fast float %7122, %7125
  %7128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7129 = extractvalue %dx.types.CBufRet.f32 %7128, 2
  %7130 = extractvalue %dx.types.CBufRet.f32 %7128, 3
  %7131 = fmul fast float %7126, %7129
  %7132 = fmul fast float %7127, %7130
  %7133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7134 = extractvalue %dx.types.CBufRet.i32 %7133, 3
  %7135 = icmp eq i32 %7134, 0
  br i1 %7135, label %7141, label %7136

; <label>:7136                                    ; preds = %7095
  %7137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %7131, float %7132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7138 = extractvalue %dx.types.ResRet.f32 %7137, 0
  %7139 = extractvalue %dx.types.ResRet.f32 %7137, 1
  %7140 = extractvalue %dx.types.ResRet.f32 %7137, 2
  br label %7146

; <label>:7141                                    ; preds = %7095
  %7142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7131, float %7132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7143 = extractvalue %dx.types.ResRet.f32 %7142, 0
  %7144 = extractvalue %dx.types.ResRet.f32 %7142, 1
  %7145 = extractvalue %dx.types.ResRet.f32 %7142, 2
  br label %7146

; <label>:7146                                    ; preds = %7141, %7136
  %7147 = phi float [ %7138, %7136 ], [ %7143, %7141 ]
  %7148 = phi float [ %7139, %7136 ], [ %7144, %7141 ]
  %7149 = phi float [ %7140, %7136 ], [ %7145, %7141 ]
  %7150 = extractvalue %dx.types.CBufRet.f32 %7104, 2
  %7151 = fmul fast float %7150, %7147
  %7152 = extractvalue %dx.types.CBufRet.f32 %7104, 0
  %7153 = fsub fast float %7118, %7152
  %7154 = fsub fast float %7153, %7151
  %7155 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7154)  ; FMax(a,b)
  %7156 = fmul fast float %7155, %7148
  %7157 = call float @dx.op.binary.f32(i32 36, float %7149, float %7156)  ; FMin(a,b)
  %7158 = fmul fast float %7157, 0xBFF7154760000000
  %7159 = call float @dx.op.unary.f32(i32 21, float %7158)  ; Exp(value)
  %7160 = fmul fast float %7097, %7159
  br label %7161

; <label>:7161                                    ; preds = %7146, %6990
  %7162 = phi float [ %7160, %7146 ], [ %6991, %6990 ]
  %7163 = call float @dx.op.binary.f32(i32 36, float %7162, float %7162)  ; FMin(a,b)
  %7164 = call float @dx.op.binary.f32(i32 36, float %7162, float %7163)  ; FMin(a,b)
  %7165 = fcmp fast ogt float %7164, 0.000000e+00
  br i1 %7165, label %7166, label %7392, !dx.controlflow.hints !116

; <label>:7166                                    ; preds = %7161
  %7167 = bitcast i32 %5043 to float
  %7168 = fmul fast float %7162, %5883
  %7169 = fmul fast float %7162, %5884
  %7170 = fmul fast float %7162, %5885
  %7171 = fsub fast float %5872, %5005
  %7172 = fsub fast float %5873, %5004
  %7173 = fsub fast float %5874, %5003
  %7174 = call float @dx.op.dot3.f32(i32 55, float %7171, float %7172, float %7173, float %7171, float %7172, float %7173)  ; Dot3(ax,ay,az,bx,by,bz)
  %7175 = call float @dx.op.unary.f32(i32 25, float %7174)  ; Rsqrt(value)
  %7176 = fmul fast float %7175, %7171
  %7177 = fmul fast float %7175, %7172
  %7178 = fmul fast float %7175, %7173
  %7179 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %5874, float %5012, float %5013, float %5014)  ; Dot3(ax,ay,az,bx,by,bz)
  %7180 = call float @dx.op.dot3.f32(i32 55, float %5002, float %5001, float %5000, float %7176, float %7177, float %7178)  ; Dot3(ax,ay,az,bx,by,bz)
  %7181 = call float @dx.op.unary.f32(i32 7, float %7179)  ; Saturate(value)
  %7182 = fmul fast float %7181, %7181
  %7183 = fmul fast float %7182, %7167
  %7184 = call float @dx.op.unary.f32(i32 7, float %7183)  ; Saturate(value)
  %7185 = fmul fast float %7184, %7181
  %7186 = call float @dx.op.dot3.f32(i32 55, float %5012, float %5013, float %5014, float %7176, float %7177, float %7178)  ; Dot3(ax,ay,az,bx,by,bz)
  %7187 = fmul fast float %7186, %7186
  %7188 = call float @dx.op.unary.f32(i32 6, float %7179)  ; FAbs(value)
  %7189 = fsub fast float 1.000000e+00, %5037
  %7190 = fmul fast float %5019, %5019
  %7191 = fmul fast float %7190, %7189
  %7192 = fadd fast float %7191, %5037
  %7193 = bitcast float %7192 to i32
  %7194 = ashr i32 %7193, 1
  %7195 = add nsw i32 %7194, 532487669
  %7196 = bitcast i32 %7195 to float
  %7197 = fadd fast float %7196, %5019
  %7198 = fmul fast float %5037, %7187
  %7199 = fsub fast float 1.000000e+00, %7187
  %7200 = fadd fast float %7199, %7198
  %7201 = fmul fast float %7188, %7188
  %7202 = fmul fast float %7201, %7189
  %7203 = fadd fast float %7202, %5037
  %7204 = bitcast float %7203 to i32
  %7205 = ashr i32 %7204, 1
  %7206 = add nsw i32 %7205, 532487669
  %7207 = bitcast i32 %7206 to float
  %7208 = fadd fast float %7207, %7188
  %7209 = fmul fast float %7200, %7200
  %7210 = fmul fast float %7209, %7197
  %7211 = fmul fast float %7210, %7208
  %7212 = fdiv fast float 0x3FF0A00000000000, %7211
  %7213 = fmul fast float %7212, %5037
  %7214 = call float @dx.op.unary.f32(i32 6, float %7180)  ; FAbs(value)
  %7215 = fsub fast float 1.000000e+00, %7214
  %7216 = bitcast float %7215 to i32
  %7217 = sitofp i32 %7216 to float
  %7218 = fmul fast float %7217, 5.000000e+00
  %7219 = fadd fast float %7218, 0xC1EFBF8940000000
  %7220 = fptosi float %7219 to i32
  %7221 = bitcast i32 %7220 to float
  %7222 = fsub fast float 1.000000e+00, %5006
  %7223 = fsub fast float 1.000000e+00, %5007
  %7224 = fsub fast float 1.000000e+00, %5017
  %7225 = fmul fast float %7221, %7222
  %7226 = fmul fast float %7221, %7223
  %7227 = fmul fast float %7221, %7224
  %7228 = fadd fast float %7225, %5006
  %7229 = fadd fast float %7226, %5007
  %7230 = fadd fast float %7227, %5017
  br i1 %5301, label %7231, label %7254

; <label>:7231                                    ; preds = %7166
  %7232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %4629, float %7214, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7233 = extractvalue %dx.types.ResRet.f32 %7232, 0
  %7234 = extractvalue %dx.types.ResRet.f32 %7232, 1
  %7235 = extractvalue %dx.types.ResRet.f32 %7232, 2
  %7236 = fadd fast float %7233, -5.000000e-01
  %7237 = fadd fast float %7234, -5.000000e-01
  %7238 = fadd fast float %7235, -5.000000e-01
  %7239 = fmul fast float %5006, 4.000000e+00
  %7240 = fmul fast float %7239, %7222
  %7241 = fmul fast float %7240, %7236
  %7242 = fmul fast float %5007, 4.000000e+00
  %7243 = fmul fast float %7242, %7223
  %7244 = fmul fast float %7243, %7237
  %7245 = fmul fast float %5017, 4.000000e+00
  %7246 = fmul fast float %7245, %7224
  %7247 = fmul fast float %7246, %7238
  %7248 = fadd fast float %7241, %7228
  %7249 = fadd fast float %7244, %7229
  %7250 = fadd fast float %7247, %7230
  %7251 = call float @dx.op.unary.f32(i32 7, float %7248)  ; Saturate(value)
  %7252 = call float @dx.op.unary.f32(i32 7, float %7249)  ; Saturate(value)
  %7253 = call float @dx.op.unary.f32(i32 7, float %7250)  ; Saturate(value)
  br label %7254

; <label>:7254                                    ; preds = %7231, %7166
  %7255 = phi float [ %7251, %7231 ], [ %7228, %7166 ]
  %7256 = phi float [ %7252, %7231 ], [ %7229, %7166 ]
  %7257 = phi float [ %7253, %7231 ], [ %7230, %7166 ]
  %7258 = fmul fast float %7179, 9.843750e-01
  %7259 = fadd fast float %7258, 7.812500e-03
  %7260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7259, float %5291, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7261 = extractvalue %dx.types.ResRet.f32 %7260, 2
  %7262 = extractvalue %dx.types.ResRet.f32 %7260, 3
  %7263 = fmul fast float %7261, %5006
  %7264 = fmul fast float %7261, %5007
  %7265 = fmul fast float %7261, %5017
  %7266 = fadd fast float %7263, %7262
  %7267 = fadd fast float %7264, %7262
  %7268 = fadd fast float %7265, %7262
  br i1 %5301, label %7269, label %7292

; <label>:7269                                    ; preds = %7254
  %7270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %4629, float %7179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7271 = extractvalue %dx.types.ResRet.f32 %7270, 0
  %7272 = extractvalue %dx.types.ResRet.f32 %7270, 1
  %7273 = extractvalue %dx.types.ResRet.f32 %7270, 2
  %7274 = fadd fast float %7271, -5.000000e-01
  %7275 = fadd fast float %7272, -5.000000e-01
  %7276 = fadd fast float %7273, -5.000000e-01
  %7277 = fmul fast float %5006, 4.000000e+00
  %7278 = fmul fast float %7277, %7222
  %7279 = fmul fast float %7278, %7274
  %7280 = fmul fast float %5007, 4.000000e+00
  %7281 = fmul fast float %7280, %7223
  %7282 = fmul fast float %7281, %7275
  %7283 = fmul fast float %5017, 4.000000e+00
  %7284 = fmul fast float %7283, %7224
  %7285 = fmul fast float %7284, %7276
  %7286 = fadd fast float %7279, %7266
  %7287 = fadd fast float %7282, %7267
  %7288 = fadd fast float %7285, %7268
  %7289 = call float @dx.op.unary.f32(i32 7, float %7286)  ; Saturate(value)
  %7290 = call float @dx.op.unary.f32(i32 7, float %7287)  ; Saturate(value)
  %7291 = call float @dx.op.unary.f32(i32 7, float %7288)  ; Saturate(value)
  br label %7292

; <label>:7292                                    ; preds = %7269, %7254
  %7293 = phi float [ %7289, %7269 ], [ %7266, %7254 ]
  %7294 = phi float [ %7290, %7269 ], [ %7267, %7254 ]
  %7295 = phi float [ %7291, %7269 ], [ %7268, %7254 ]
  %7296 = call float @dx.op.binary.f32(i32 35, float %7294, float %7295)  ; FMax(a,b)
  %7297 = call float @dx.op.binary.f32(i32 35, float %7293, float %7296)  ; FMax(a,b)
  %7298 = fsub fast float 1.000000e+00, %7297
  %7299 = fsub fast float -0.000000e+00, %5012
  %7300 = fsub fast float -0.000000e+00, %5013
  %7301 = fsub fast float -0.000000e+00, %5014
  %7302 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %5874, float %7299, float %7300, float %7301)  ; Dot3(ax,ay,az,bx,by,bz)
  %7303 = call float @dx.op.unary.f32(i32 7, float %7302)  ; Saturate(value)
  %7304 = fmul fast float %7303, 9.843750e-01
  %7305 = fadd fast float %7304, 7.812500e-03
  %7306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7305, float %5291, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7307 = extractvalue %dx.types.ResRet.f32 %7306, 2
  %7308 = extractvalue %dx.types.ResRet.f32 %7306, 3
  %7309 = fmul fast float %7307, %5006
  %7310 = fmul fast float %7307, %5007
  %7311 = fmul fast float %7307, %5017
  %7312 = fadd fast float %7309, %7308
  %7313 = fadd fast float %7310, %7308
  %7314 = fadd fast float %7311, %7308
  br i1 %5301, label %7315, label %7338

; <label>:7315                                    ; preds = %7292
  %7316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %4629, float %7303, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7317 = extractvalue %dx.types.ResRet.f32 %7316, 0
  %7318 = extractvalue %dx.types.ResRet.f32 %7316, 1
  %7319 = extractvalue %dx.types.ResRet.f32 %7316, 2
  %7320 = fadd fast float %7317, -5.000000e-01
  %7321 = fadd fast float %7318, -5.000000e-01
  %7322 = fadd fast float %7319, -5.000000e-01
  %7323 = fmul fast float %5006, 4.000000e+00
  %7324 = fmul fast float %7323, %7222
  %7325 = fmul fast float %7324, %7320
  %7326 = fmul fast float %5007, 4.000000e+00
  %7327 = fmul fast float %7326, %7223
  %7328 = fmul fast float %7327, %7321
  %7329 = fmul fast float %5017, 4.000000e+00
  %7330 = fmul fast float %7329, %7224
  %7331 = fmul fast float %7330, %7322
  %7332 = fadd fast float %7325, %7312
  %7333 = fadd fast float %7328, %7313
  %7334 = fadd fast float %7331, %7314
  %7335 = call float @dx.op.unary.f32(i32 7, float %7332)  ; Saturate(value)
  %7336 = call float @dx.op.unary.f32(i32 7, float %7333)  ; Saturate(value)
  %7337 = call float @dx.op.unary.f32(i32 7, float %7334)  ; Saturate(value)
  br label %7338

; <label>:7338                                    ; preds = %7315, %7292
  %7339 = phi float [ %7335, %7315 ], [ %7312, %7292 ]
  %7340 = phi float [ %7336, %7315 ], [ %7313, %7292 ]
  %7341 = phi float [ %7337, %7315 ], [ %7314, %7292 ]
  %7342 = call float @dx.op.binary.f32(i32 35, float %7340, float %7341)  ; FMax(a,b)
  %7343 = call float @dx.op.binary.f32(i32 35, float %7339, float %7342)  ; FMax(a,b)
  %7344 = fsub fast float 1.000000e+00, %7343
  %7345 = fmul fast float %7344, %7303
  %7346 = fmul fast float %7345, %4719
  %7347 = fmul fast float %7345, %4720
  %7348 = fmul fast float %7345, %4721
  %7349 = fmul fast float %7255, %7213
  %7350 = fmul fast float %7256, %7213
  %7351 = fmul fast float %7257, %7213
  %7352 = fsub fast float 1.000000e+00, %7180
  %7353 = bitcast float %7352 to i32
  %7354 = sitofp i32 %7353 to float
  %7355 = fmul fast float %7354, 5.000000e+00
  %7356 = fadd fast float %7355, 0xC1EFBF8940000000
  %7357 = fptosi float %7356 to i32
  %7358 = bitcast i32 %7357 to float
  %7359 = fmul fast float %7358, %4630
  %7360 = fmul fast float %7298, %7359
  %7361 = fmul fast float %7360, %5812
  %7362 = fmul fast float %7360, %5813
  %7363 = fmul fast float %7360, %5814
  %7364 = fmul fast float %7298, %7185
  %7365 = fadd fast float %7361, %7349
  %7366 = fadd fast float %7362, %7350
  %7367 = fadd fast float %7363, %7351
  %7368 = fadd fast float %7346, %7364
  %7369 = fadd fast float %7347, %7364
  %7370 = fadd fast float %7348, %7364
  %7371 = fmul fast float %7368, %7168
  %7372 = fmul fast float %7369, %7169
  %7373 = fmul fast float %7370, %7170
  %7374 = fmul fast float %7185, %7168
  %7375 = fmul fast float %7374, %7365
  %7376 = fmul fast float %7185, %7169
  %7377 = fmul fast float %7376, %7366
  %7378 = fmul fast float %7185, %7170
  %7379 = fmul fast float %7378, %7367
  %7380 = fadd fast float %7371, %5862
  %7381 = fmul fast float %7380, %4626
  %7382 = fadd fast float %7372, %5864
  %7383 = fmul fast float %7382, %4626
  %7384 = fadd fast float %7373, %5866
  %7385 = fmul fast float %7384, %4626
  %7386 = fadd fast float %7375, %5845
  %7387 = fmul fast float %7386, %4626
  %7388 = fadd fast float %7377, %5848
  %7389 = fmul fast float %7388, %4626
  %7390 = fadd fast float %7379, %5851
  %7391 = fmul fast float %7390, %4626
  br label %7392

; <label>:7392                                    ; preds = %7338, %7161, %5795
  %7393 = phi float [ %5846, %5795 ], [ %5846, %7161 ], [ %7387, %7338 ]
  %7394 = phi float [ %5849, %5795 ], [ %5849, %7161 ], [ %7389, %7338 ]
  %7395 = phi float [ %5852, %5795 ], [ %5852, %7161 ], [ %7391, %7338 ]
  %7396 = phi float [ %5863, %5795 ], [ %5863, %7161 ], [ %7381, %7338 ]
  %7397 = phi float [ %5865, %5795 ], [ %5865, %7161 ], [ %7383, %7338 ]
  %7398 = phi float [ %5867, %5795 ], [ %5867, %7161 ], [ %7385, %7338 ]
  %7399 = fmul fast float %5821, %4626
  %7400 = fmul fast float %5822, %4626
  %7401 = fmul fast float %5823, %4626
  %7402 = fadd fast float %7399, 1.000000e+00
  %7403 = fadd fast float %7400, 1.000000e+00
  %7404 = fadd fast float %7401, 1.000000e+00
  %7405 = call float @dx.op.dot3.f32(i32 55, float %7402, float %7403, float %7404, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7406 = fsub fast float 1.000000e+00, %7405
  %7407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7408 = extractvalue %dx.types.CBufRet.f32 %7407, 0
  %7409 = fmul fast float %7408, %5827
  %7410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7411 = extractvalue %dx.types.CBufRet.f32 %7410, 3
  %7412 = fsub fast float 1.000000e+00, %4633
  %7413 = call float @dx.op.unary.f32(i32 7, float %7412)  ; Saturate(value)
  %7414 = fadd fast float %7398, %4632
  %7415 = fmul fast float %7414, %4633
  %7416 = fmul fast float %7413, %7411
  %7417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7418 = extractvalue %dx.types.CBufRet.f32 %7417, 3
  %7419 = fmul fast float %7396, %5009
  %7420 = fmul fast float %7397, %5010
  %7421 = fmul fast float %7398, %5011
  %7422 = fcmp fast ogt float %85, %174
  %7423 = and i1 %7422, %4738
  %7424 = or i1 %4817, %7423
  %7425 = icmp eq i32 %4737, 2
  %7426 = fcmp fast ole float %85, %174
  %7427 = and i1 %7426, %7425
  %7428 = or i1 %7427, %7424
  br i1 %7423, label %7429, label %7686

; <label>:7429                                    ; preds = %7392
  %7430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7431 = extractvalue %dx.types.CBufRet.f32 %7430, 2
  %7432 = extractvalue %dx.types.CBufRet.f32 %7430, 3
  %7433 = fmul fast float %7431, %97
  %7434 = fmul fast float %7432, %98
  %7435 = call float @dx.op.unary.f32(i32 7, float %7433)  ; Saturate(value)
  %7436 = call float @dx.op.unary.f32(i32 7, float %7434)  ; Saturate(value)
  %7437 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7435, float %7436, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7438 = extractvalue %dx.types.ResRet.f32 %7437, 0
  %7439 = extractvalue %dx.types.ResRet.f32 %7437, 1
  %7440 = extractvalue %dx.types.ResRet.f32 %7437, 2
  %7441 = extractvalue %dx.types.ResRet.f32 %7437, 3
  %7442 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7435, float %7436, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7443 = extractvalue %dx.types.ResRet.f32 %7442, 0
  %7444 = extractvalue %dx.types.ResRet.f32 %7442, 1
  %7445 = extractvalue %dx.types.ResRet.f32 %7442, 2
  %7446 = extractvalue %dx.types.ResRet.f32 %7442, 3
  %7447 = call float @dx.op.binary.f32(i32 35, float %7439, float %7440)  ; FMax(a,b)
  %7448 = call float @dx.op.binary.f32(i32 35, float %7438, float %7447)  ; FMax(a,b)
  %7449 = call float @dx.op.binary.f32(i32 35, float %7448, float %7441)  ; FMax(a,b)
  %7450 = call float @dx.op.binary.f32(i32 36, float %7444, float %7445)  ; FMin(a,b)
  %7451 = call float @dx.op.binary.f32(i32 36, float %7443, float %7450)  ; FMin(a,b)
  %7452 = call float @dx.op.binary.f32(i32 36, float %7451, float %7446)  ; FMin(a,b)
  %7453 = fmul fast float %7449, 2.550000e+02
  %7454 = fadd fast float %7453, 0x3F70101020000000
  %7455 = fptoui float %7454 to i32
  %7456 = fmul fast float %7452, 2.550000e+02
  %7457 = fadd fast float %7456, 0x3F70101020000000
  %7458 = fptoui float %7457 to i32
  %7459 = icmp ult i32 %7455, %7458
  br i1 %7459, label %7460, label %7628

; <label>:7460                                    ; preds = %7429
  %7461 = fcmp fast ogt float %84, 9.843750e-01
  %7462 = fadd fast float %85, -4.000000e+00
  %7463 = select i1 %7461, float -4.000000e+00, float %7462
  %7464 = call float @dx.op.binary.f32(i32 35, float %7463, float 0.000000e+00)  ; FMax(a,b)
  %7465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7466 = extractvalue %dx.types.CBufRet.f32 %7465, 0
  %7467 = fadd fast float %7466, %7464
  %7468 = extractvalue %dx.types.CBufRet.f32 %7465, 2
  %7469 = fmul fast float %7467, %7468
  %7470 = call float @dx.op.unary.f32(i32 23, float %7469)  ; Log(value)
  %7471 = extractvalue %dx.types.CBufRet.f32 %7465, 3
  %7472 = fmul fast float %7471, %7470
  %7473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7474 = extractvalue %dx.types.CBufRet.f32 %7473, 2
  %7475 = fmul fast float %7472, %7474
  %7476 = call float @dx.op.unary.f32(i32 7, float %7475)  ; Saturate(value)
  %7477 = uitofp i32 %7455 to float
  %7478 = uitofp i32 %7458 to float
  %7479 = fadd fast float %7477, 5.000000e-01
  %7480 = fadd fast float %7478, 5.000000e-01
  %7481 = fmul fast float %7474, %7479
  %7482 = fmul fast float %7474, %7480
  %7483 = fadd fast float %7481, 0x3F0FFB4800000000
  %7484 = fadd fast float %7482, 0xBF0FFB4800000000
  %7485 = call float @dx.op.binary.f32(i32 35, float %7476, float %7483)  ; FMax(a,b)
  %7486 = call float @dx.op.binary.f32(i32 36, float %7485, float %7484)  ; FMin(a,b)
  %7487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7488 = extractvalue %dx.types.CBufRet.f32 %7487, 1
  %7489 = extractvalue %dx.types.CBufRet.f32 %7487, 2
  %7490 = extractvalue %dx.types.CBufRet.f32 %7487, 0
  %7491 = fmul fast float %7488, %7486
  %7492 = fadd fast float %7490, %7491
  %7493 = fadd fast float %7490, %7489
  %7494 = fsub fast float %7488, %7489
  %7495 = fadd fast float %7494, %7490
  %7496 = call float @dx.op.binary.f32(i32 35, float %7492, float %7493)  ; FMax(a,b)
  %7497 = call float @dx.op.binary.f32(i32 36, float %7496, float %7495)  ; FMin(a,b)
  %7498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %7435, float %7436, float %7497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7499 = extractvalue %dx.types.ResRet.f32 %7498, 0
  %7500 = extractvalue %dx.types.ResRet.f32 %7498, 1
  %7501 = extractvalue %dx.types.ResRet.f32 %7498, 2
  %7502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.i32 %7502, 0
  %7504 = extractvalue %dx.types.CBufRet.i32 %7502, 1
  %7505 = uitofp i32 %7503 to float
  %7506 = uitofp i32 %7504 to float
  %7507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7508 = extractvalue %dx.types.CBufRet.f32 %7507, 0
  %7509 = extractvalue %dx.types.CBufRet.f32 %7507, 1
  %7510 = fmul fast float %7505, %7435
  %7511 = fmul fast float %7506, %7436
  %7512 = fadd fast float %7510, -5.000000e-01
  %7513 = fadd fast float %7511, -5.000000e-01
  %7514 = call float @dx.op.unary.f32(i32 22, float %7512)  ; Frc(value)
  %7515 = call float @dx.op.unary.f32(i32 22, float %7513)  ; Frc(value)
  %7516 = fmul fast float %7514, %7514
  %7517 = fmul fast float %7516, %7514
  %7518 = fsub fast float 3.000000e+00, %7514
  %7519 = fmul fast float %7516, %7518
  %7520 = fmul fast float %7514, 3.000000e+00
  %7521 = fmul fast float %7517, 3.000000e+00
  %7522 = fmul fast float %7516, 6.000000e+00
  %7523 = fsub fast float %7521, %7522
  %7524 = fadd fast float %7523, 4.000000e+00
  %7525 = fmul fast float %7524, 0x3FC5555560000000
  %7526 = fmul fast float %7517, -3.000000e+00
  %7527 = fadd fast float %7516, %7514
  %7528 = fmul fast float %7527, 3.000000e+00
  %7529 = fadd fast float %7526, 1.000000e+00
  %7530 = fadd fast float %7529, %7528
  %7531 = fmul fast float %7517, 0x3FC5555560000000
  %7532 = fmul fast float %7515, %7515
  %7533 = fmul fast float %7532, %7515
  %7534 = fsub fast float 3.000000e+00, %7515
  %7535 = fmul fast float %7532, %7534
  %7536 = fmul fast float %7515, 3.000000e+00
  %7537 = fmul fast float %7533, 3.000000e+00
  %7538 = fmul fast float %7532, 6.000000e+00
  %7539 = fsub fast float %7537, %7538
  %7540 = fadd fast float %7539, 4.000000e+00
  %7541 = fmul fast float %7540, 0x3FC5555560000000
  %7542 = fmul fast float %7533, -3.000000e+00
  %7543 = fadd fast float %7532, %7515
  %7544 = fmul fast float %7543, 3.000000e+00
  %7545 = fadd fast float %7542, 1.000000e+00
  %7546 = fadd fast float %7545, %7544
  %7547 = fmul fast float %7533, 0x3FC5555560000000
  %7548 = fadd fast float %7514, 1.000000e+00
  %7549 = fsub fast float 1.000000e+00, %7520
  %7550 = fadd fast float %7549, %7519
  %7551 = fadd fast float %7550, %7524
  %7552 = fmul fast float %7551, 0x3FC5555560000000
  %7553 = fdiv fast float %7525, %7552
  %7554 = fsub fast float %7548, %7553
  %7555 = fsub fast float 1.000000e+00, %7514
  %7556 = fadd fast float %7530, %7517
  %7557 = fmul fast float %7556, 0x3FC5555560000000
  %7558 = fdiv fast float %7531, %7557
  %7559 = fadd fast float %7555, %7558
  %7560 = fadd fast float %7515, 1.000000e+00
  %7561 = fsub fast float 1.000000e+00, %7536
  %7562 = fadd fast float %7561, %7535
  %7563 = fadd fast float %7562, %7540
  %7564 = fmul fast float %7563, 0x3FC5555560000000
  %7565 = fdiv fast float %7541, %7564
  %7566 = fsub fast float %7560, %7565
  %7567 = fsub fast float 1.000000e+00, %7515
  %7568 = fadd fast float %7546, %7533
  %7569 = fmul fast float %7568, 0x3FC5555560000000
  %7570 = fdiv fast float %7547, %7569
  %7571 = fadd fast float %7570, %7567
  %7572 = fmul fast float %7554, %7508
  %7573 = fsub fast float %7435, %7572
  %7574 = fmul fast float %7559, %7508
  %7575 = fadd fast float %7574, %7435
  %7576 = fmul fast float %7571, %7509
  %7577 = fadd fast float %7576, %7436
  %7578 = fmul fast float %7566, %7509
  %7579 = fsub fast float %7436, %7578
  %7580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7573, float %7579, float %7497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7581 = extractvalue %dx.types.ResRet.f32 %7580, 0
  %7582 = extractvalue %dx.types.ResRet.f32 %7580, 1
  %7583 = extractvalue %dx.types.ResRet.f32 %7580, 2
  %7584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7575, float %7579, float %7497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7585 = extractvalue %dx.types.ResRet.f32 %7584, 0
  %7586 = extractvalue %dx.types.ResRet.f32 %7584, 1
  %7587 = extractvalue %dx.types.ResRet.f32 %7584, 2
  %7588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7573, float %7577, float %7497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7589 = extractvalue %dx.types.ResRet.f32 %7588, 0
  %7590 = extractvalue %dx.types.ResRet.f32 %7588, 1
  %7591 = extractvalue %dx.types.ResRet.f32 %7588, 2
  %7592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7575, float %7577, float %7497, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7593 = extractvalue %dx.types.ResRet.f32 %7592, 0
  %7594 = extractvalue %dx.types.ResRet.f32 %7592, 1
  %7595 = extractvalue %dx.types.ResRet.f32 %7592, 2
  %7596 = fsub fast float %7589, %7581
  %7597 = fsub fast float %7590, %7582
  %7598 = fsub fast float %7591, %7583
  %7599 = fmul fast float %7596, %7569
  %7600 = fmul fast float %7597, %7569
  %7601 = fmul fast float %7598, %7569
  %7602 = fadd fast float %7599, %7581
  %7603 = fadd fast float %7600, %7582
  %7604 = fadd fast float %7601, %7583
  %7605 = fsub fast float %7593, %7585
  %7606 = fsub fast float %7594, %7586
  %7607 = fsub fast float %7595, %7587
  %7608 = fmul fast float %7605, %7569
  %7609 = fmul fast float %7606, %7569
  %7610 = fmul fast float %7607, %7569
  %7611 = fsub fast float %7585, %7602
  %7612 = fadd fast float %7611, %7608
  %7613 = fsub fast float %7586, %7603
  %7614 = fadd fast float %7613, %7609
  %7615 = fsub fast float %7587, %7604
  %7616 = fadd fast float %7615, %7610
  %7617 = fmul fast float %7612, %7557
  %7618 = fmul fast float %7614, %7557
  %7619 = fmul fast float %7616, %7557
  %7620 = fadd fast float %7617, %7602
  %7621 = fadd fast float %7618, %7603
  %7622 = fadd fast float %7619, %7604
  %7623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7624 = extractvalue %dx.types.CBufRet.f32 %7623, 1
  %7625 = fmul fast float %7620, %7624
  %7626 = fmul fast float %7621, %7624
  %7627 = fmul fast float %7622, %7624
  br label %7628

; <label>:7628                                    ; preds = %7460, %7429
  %7629 = phi float [ %7499, %7460 ], [ 1.000000e+00, %7429 ]
  %7630 = phi float [ %7500, %7460 ], [ 1.000000e+00, %7429 ]
  %7631 = phi float [ %7501, %7460 ], [ 1.000000e+00, %7429 ]
  %7632 = phi float [ %7625, %7460 ], [ 0.000000e+00, %7429 ]
  %7633 = phi float [ %7626, %7460 ], [ 0.000000e+00, %7429 ]
  %7634 = phi float [ %7627, %7460 ], [ 0.000000e+00, %7429 ]
  %7635 = fmul fast float %7632, %7406
  %7636 = fmul fast float %7633, %7406
  %7637 = fmul fast float %7634, %7406
  %7638 = call float @dx.op.dot3.f32(i32 55, float %7629, float %7630, float %7631, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7639 = call float @dx.op.dot3.f32(i32 55, float %7635, float %7636, float %7637, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7640 = select i1 %213, float %7638, float %7629
  %7641 = select i1 %213, float %7638, float %7630
  %7642 = select i1 %213, float 1.000000e+00, float %7631
  %7643 = select i1 %213, float %7639, float %7635
  %7644 = select i1 %213, float 0.000000e+00, float %7636
  %7645 = select i1 %213, float 0.000000e+00, float %7637
  %7646 = fmul fast float %7640, %7419
  %7647 = fmul fast float %7641, %7420
  %7648 = fmul fast float %7642, %7421
  %7649 = fadd fast float %7646, %7643
  %7650 = fadd fast float %7647, %7644
  %7651 = fadd fast float %7645, %7648
  %7652 = fmul fast float %7640, %7393
  %7653 = fmul fast float %7641, %7394
  %7654 = fmul fast float %7642, %7395
  %7655 = fmul fast float %122, %7431
  %7656 = fmul fast float %124, %7432
  %7657 = fsub fast float 1.000000e+00, %7655
  %7658 = fsub fast float 1.000000e+00, %7656
  %7659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7660 = extractvalue %dx.types.CBufRet.f32 %7659, 0
  %7661 = extractvalue %dx.types.CBufRet.f32 %7659, 1
  %7662 = extractvalue %dx.types.CBufRet.f32 %7659, 2
  %7663 = fmul fast float %7657, %7660
  %7664 = fmul fast float %7657, %7661
  %7665 = fmul fast float %7657, %7662
  %7666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7667 = extractvalue %dx.types.CBufRet.f32 %7666, 0
  %7668 = extractvalue %dx.types.CBufRet.f32 %7666, 1
  %7669 = extractvalue %dx.types.CBufRet.f32 %7666, 2
  %7670 = fmul fast float %7658, %7667
  %7671 = fmul fast float %7658, %7668
  %7672 = fmul fast float %7658, %7669
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 0
  %7675 = extractvalue %dx.types.CBufRet.f32 %7673, 1
  %7676 = extractvalue %dx.types.CBufRet.f32 %7673, 2
  %7677 = fadd fast float %7670, %7674
  %7678 = fadd fast float %7677, %7663
  %7679 = fadd fast float %7671, %7675
  %7680 = fadd fast float %7679, %7664
  %7681 = fadd fast float %7672, %7676
  %7682 = fadd fast float %7681, %7665
  %7683 = fmul fast float %7678, %174
  %7684 = fmul fast float %7680, %174
  %7685 = fmul fast float %7682, %174
  br label %7686

; <label>:7686                                    ; preds = %7628, %7392
  %7687 = phi float [ %7683, %7628 ], [ %152, %7392 ]
  %7688 = phi float [ %7684, %7628 ], [ %153, %7392 ]
  %7689 = phi float [ %7685, %7628 ], [ %154, %7392 ]
  %7690 = phi float [ %174, %7628 ], [ %85, %7392 ]
  %7691 = phi float [ %7649, %7628 ], [ %7419, %7392 ]
  %7692 = phi float [ %7650, %7628 ], [ %7420, %7392 ]
  %7693 = phi float [ %7651, %7628 ], [ %7421, %7392 ]
  %7694 = phi float [ %7652, %7628 ], [ %7393, %7392 ]
  %7695 = phi float [ %7653, %7628 ], [ %7394, %7392 ]
  %7696 = phi float [ %7654, %7628 ], [ %7395, %7392 ]
  %7697 = phi float [ %7629, %7628 ], [ 1.000000e+00, %7392 ]
  br i1 %7428, label %8852, label %7698

; <label>:7698                                    ; preds = %7686
  %7699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7700 = extractvalue %dx.types.CBufRet.f32 %7699, 0
  %7701 = extractvalue %dx.types.CBufRet.f32 %7699, 1
  %7702 = extractvalue %dx.types.CBufRet.f32 %7699, 2
  %7703 = extractvalue %dx.types.CBufRet.f32 %7699, 3
  %7704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7705 = extractvalue %dx.types.CBufRet.f32 %7704, 0
  %7706 = extractvalue %dx.types.CBufRet.f32 %7704, 1
  %7707 = extractvalue %dx.types.CBufRet.f32 %7704, 2
  %7708 = extractvalue %dx.types.CBufRet.f32 %7704, 3
  %7709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7710 = extractvalue %dx.types.CBufRet.f32 %7709, 0
  %7711 = extractvalue %dx.types.CBufRet.f32 %7709, 1
  %7712 = extractvalue %dx.types.CBufRet.f32 %7709, 2
  %7713 = extractvalue %dx.types.CBufRet.f32 %7709, 3
  %7714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7715 = extractvalue %dx.types.CBufRet.f32 %7714, 0
  %7716 = extractvalue %dx.types.CBufRet.f32 %7714, 1
  %7717 = extractvalue %dx.types.CBufRet.f32 %7714, 2
  %7718 = extractvalue %dx.types.CBufRet.f32 %7714, 3
  %7719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7720 = extractvalue %dx.types.CBufRet.f32 %7719, 3
  %7721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7722 = extractvalue %dx.types.CBufRet.f32 %7721, 3
  %7723 = extractvalue %dx.types.CBufRet.f32 %7721, 0
  %7724 = extractvalue %dx.types.CBufRet.f32 %7721, 1
  %7725 = extractvalue %dx.types.CBufRet.f32 %7721, 2
  %7726 = fcmp fast olt float %7725, -5.000000e-01
  %7727 = call float @dx.op.dot3.f32(i32 55, float %7687, float %7688, float %7689, float %7687, float %7688, float %7689)  ; Dot3(ax,ay,az,bx,by,bz)
  %7728 = call float @dx.op.unary.f32(i32 25, float %7727)  ; Rsqrt(value)
  %7729 = fmul fast float %7728, %7727
  %7730 = fmul fast float %7728, %7687
  %7731 = fmul fast float %7728, %7688
  %7732 = fmul fast float %7728, %7689
  %7733 = fadd fast float %7729, %7703
  %7734 = call float @dx.op.dot3.f32(i32 55, float %7730, float %7731, float %7732, float %7700, float %7701, float %7702)  ; Dot3(ax,ay,az,bx,by,bz)
  %7735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7736 = extractvalue %dx.types.CBufRet.i32 %7735, 1
  %7737 = and i32 %7736, 1
  %7738 = icmp ne i32 %7737, 0
  %7739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7740 = extractvalue %dx.types.CBufRet.f32 %7739, 2
  %7741 = fcmp fast ogt float %7740, 0.000000e+00
  %7742 = and i1 %7738, %7741
  br i1 %7742, label %7743, label %8149, !dx.controlflow.hints !117

; <label>:7743                                    ; preds = %7698
  %7744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7745 = extractvalue %dx.types.CBufRet.f32 %7744, 3
  %7746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7747 = extractvalue %dx.types.CBufRet.f32 %7746, 2
  %7748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7749 = extractvalue %dx.types.CBufRet.f32 %7748, 2
  %7750 = fsub fast float %7747, %7749
  %7751 = and i32 %7736, 2
  %7752 = extractvalue %dx.types.CBufRet.i32 %7735, 0
  %7753 = call i32 @dx.op.binary.i32(i32 40, i32 %7752, i32 3)  ; UMin(a,b)
  %7754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7755 = extractvalue %dx.types.CBufRet.f32 %7754, 0
  %7756 = extractvalue %dx.types.CBufRet.f32 %7754, 1
  %7757 = extractvalue %dx.types.CBufRet.f32 %7748, 0
  %7758 = extractvalue %dx.types.CBufRet.f32 %7748, 1
  %7759 = fsub fast float %7755, %7757
  %7760 = fsub fast float %7756, %7758
  %7761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7762 = extractvalue %dx.types.CBufRet.f32 %7761, 0
  %7763 = fcmp fast ogt float %7762, 0.000000e+00
  %7764 = fsub fast float -0.000000e+00, %7759
  %7765 = fsub fast float -0.000000e+00, %7760
  %7766 = call float @dx.op.dot2.f32(i32 54, float %7730, float %7731, float %7730, float %7731)  ; Dot2(ax,ay,bx,by)
  %7767 = call float @dx.op.dot2.f32(i32 54, float %7730, float %7731, float %7764, float %7765)  ; Dot2(ax,ay,bx,by)
  %7768 = fmul fast float %7767, 2.000000e+00
  %7769 = call float @dx.op.dot2.f32(i32 54, float %7764, float %7765, float %7764, float %7765)  ; Dot2(ax,ay,bx,by)
  %7770 = fmul fast float %7762, %7762
  %7771 = fsub fast float %7769, %7770
  %7772 = fmul fast float %7768, %7768
  %7773 = fmul fast float %7766, 4.000000e+00
  %7774 = fmul fast float %7773, %7771
  %7775 = fsub fast float %7772, %7774
  %7776 = fcmp fast ogt float %7775, 0.000000e+00
  br i1 %7776, label %7777, label %7792

; <label>:7777                                    ; preds = %7743
  %7778 = fcmp fast ogt float %7768, 0.000000e+00
  %7779 = call float @dx.op.unary.f32(i32 24, float %7775)  ; Sqrt(value)
  %7780 = fsub fast float -0.000000e+00, %7779
  %7781 = select i1 %7778, float %7779, float %7780
  %7782 = fadd fast float %7781, %7768
  %7783 = fmul float %7782, -5.000000e-01
  %7784 = fdiv fast float %7783, %7766
  %7785 = call float @dx.op.binary.f32(i32 35, float %7784, float 0.000000e+00)  ; FMax(a,b)
  %7786 = call float @dx.op.binary.f32(i32 36, float %7729, float %7785)  ; FMin(a,b)
  %7787 = fdiv fast float %7771, %7783
  %7788 = call float @dx.op.binary.f32(i32 35, float %7787, float 0.000000e+00)  ; FMax(a,b)
  %7789 = call float @dx.op.binary.f32(i32 36, float %7729, float %7788)  ; FMin(a,b)
  %7790 = call float @dx.op.binary.f32(i32 36, float %7786, float %7789)  ; FMin(a,b)
  %7791 = call float @dx.op.binary.f32(i32 35, float %7786, float %7789)  ; FMax(a,b)
  br label %7792

; <label>:7792                                    ; preds = %7777, %7743
  %7793 = phi float [ %7791, %7777 ], [ -1.000000e+00, %7743 ]
  %7794 = phi float [ %7790, %7777 ], [ -1.000000e+00, %7743 ]
  %7795 = phi i1 [ true, %7777 ], [ false, %7743 ]
  %7796 = and i1 %7763, %7795
  br i1 %7796, label %7797, label %7799

; <label>:7797                                    ; preds = %7792
  %7798 = fcmp fast oeq float %7794, %7793
  br i1 %7798, label %8102, label %7800

; <label>:7799                                    ; preds = %7792
  br i1 %7763, label %8102, label %7800

; <label>:7800                                    ; preds = %7799, %7797
  %7801 = phi float [ %7729, %7799 ], [ %7793, %7797 ]
  %7802 = phi float [ 0.000000e+00, %7799 ], [ %7794, %7797 ]
  %7803 = icmp ne i32 %7751, 0
  %7804 = fmul fast float %7801, %7732
  %7805 = fadd fast float %7804, %7745
  %7806 = fmul fast float %7805, %7801
  %7807 = select i1 %7803, float 0.000000e+00, float %7806
  %7808 = fcmp fast oeq float %7732, 0.000000e+00
  %7809 = fdiv fast float %7750, %7732
  %7810 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7809)  ; FMax(a,b)
  %7811 = select i1 %7808, float %7801, float %7810
  %7812 = call float @dx.op.binary.f32(i32 36, float %7801, float %7811)  ; FMin(a,b)
  %7813 = fcmp fast ogt float %7732, 0.000000e+00
  %7814 = fcmp fast olt float %7750, 0.000000e+00
  br i1 %7813, label %7815, label %7872

; <label>:7815                                    ; preds = %7800
  %7816 = icmp eq i32 %7751, 0
  br i1 %7814, label %7817, label %7861

; <label>:7817                                    ; preds = %7815
  %7818 = select i1 %7816, float %7801, float 0.000000e+00
  %7819 = fsub fast float -0.000000e+00, %7818
  %7820 = call float @dx.op.unary.f32(i32 6, float %7819)  ; FAbs(value)
  %7821 = fmul fast float %7818, %7732
  %7822 = fadd fast float %7821, %7745
  %7823 = fmul fast float %7820, %7822
  %7824 = fsub fast float %7807, %7823
  %7825 = fsub fast float %7801, %7820
  %7826 = select i1 %7816, float %7825, float 0.000000e+00
  %7827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7828 = extractvalue %dx.types.CBufRet.f32 %7827, 0
  %7829 = extractvalue %dx.types.CBufRet.f32 %7827, 1
  %7830 = extractvalue %dx.types.CBufRet.f32 %7827, 2
  %7831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7832 = extractvalue %dx.types.CBufRet.f32 %7831, 0
  %7833 = extractvalue %dx.types.CBufRet.f32 %7831, 1
  %7834 = extractvalue %dx.types.CBufRet.f32 %7831, 2
  %7835 = extractvalue %dx.types.CBufRet.f32 %7831, 3
  %7836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7837 = extractvalue %dx.types.CBufRet.f32 %7836, 3
  %7838 = call float @dx.op.binary.f32(i32 36, float %7824, float %7837)  ; FMin(a,b)
  %7839 = fmul fast float %7835, %7826
  %7840 = call float @dx.op.unary.f32(i32 7, float %7839)  ; Saturate(value)
  %7841 = fsub fast float %7832, %7828
  %7842 = fsub fast float %7833, %7829
  %7843 = fsub fast float %7834, %7830
  %7844 = fmul fast float %7840, %7841
  %7845 = fmul fast float %7840, %7842
  %7846 = fmul fast float %7840, %7843
  %7847 = fadd fast float %7844, %7828
  %7848 = fadd fast float %7845, %7829
  %7849 = fadd fast float %7846, %7830
  %7850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7851 = extractvalue %dx.types.CBufRet.f32 %7850, 0
  %7852 = extractvalue %dx.types.CBufRet.f32 %7850, 1
  %7853 = fadd fast float %7852, %7851
  %7854 = call float @dx.op.unary.f32(i32 7, float %7853)  ; Saturate(value)
  %7855 = extractvalue %dx.types.CBufRet.f32 %7850, 2
  %7856 = extractvalue %dx.types.CBufRet.f32 %7850, 3
  %7857 = fadd fast float %7856, %7855
  %7858 = call float @dx.op.unary.f32(i32 7, float %7857)  ; Saturate(value)
  %7859 = fmul fast float %7854, %7838
  %7860 = fmul fast float %7859, %7858
  br label %8102

; <label>:7861                                    ; preds = %7815
  br i1 %7816, label %7862, label %7883

; <label>:7862                                    ; preds = %7861
  %7863 = call float @dx.op.binary.f32(i32 36, float %7812, float %7802)  ; FMin(a,b)
  %7864 = fsub fast float %7812, %7863
  %7865 = fsub fast float %7864, %7801
  %7866 = call float @dx.op.unary.f32(i32 6, float %7865)  ; FAbs(value)
  %7867 = fadd fast float %7864, %7801
  %7868 = fmul fast float %7867, %7732
  %7869 = fadd fast float %7868, %7745
  %7870 = fmul fast float %7869, %7866
  %7871 = fsub fast float %7807, %7870
  br label %7883

; <label>:7872                                    ; preds = %7800
  br i1 %7814, label %7873, label %7883

; <label>:7873                                    ; preds = %7872
  %7874 = call float @dx.op.binary.f32(i32 35, float %7802, float %7812)  ; FMax(a,b)
  %7875 = icmp eq i32 %7751, 0
  %7876 = select i1 %7875, float %7812, float 0.000000e+00
  %7877 = fsub fast float -0.000000e+00, %7876
  %7878 = call float @dx.op.unary.f32(i32 6, float %7877)  ; FAbs(value)
  %7879 = fmul fast float %7876, %7732
  %7880 = fadd fast float %7879, %7745
  %7881 = fmul fast float %7878, %7880
  %7882 = fsub fast float %7807, %7881
  br label %7883

; <label>:7883                                    ; preds = %7873, %7872, %7862, %7861
  %7884 = phi float [ %7802, %7861 ], [ %7802, %7862 ], [ %7874, %7873 ], [ %7802, %7872 ]
  %7885 = phi float [ 0.000000e+00, %7861 ], [ %7866, %7862 ], [ %7878, %7873 ], [ 0.000000e+00, %7872 ]
  %7886 = phi float [ %7807, %7861 ], [ %7871, %7862 ], [ %7882, %7873 ], [ %7807, %7872 ]
  %7887 = phi float [ %7812, %7861 ], [ %7812, %7862 ], [ %7801, %7873 ], [ %7801, %7872 ]
  %7888 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %7888, align 4, !tbaa !107, !noalias !118
  %7889 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %7889, align 4, !tbaa !107, !noalias !118
  %7890 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %7890, align 4, !tbaa !107, !noalias !118
  %7891 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %7891, align 4, !tbaa !107, !noalias !118
  %7892 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %7892, align 4, !tbaa !107, !noalias !118
  %7893 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %7893, align 4, !tbaa !107, !noalias !118
  %7894 = icmp sgt i32 %7753, 0
  br i1 %7894, label %7895, label %7956

; <label>:7895                                    ; preds = %7883
  br label %7896

; <label>:7896                                    ; preds = %7945, %7895
  %7897 = phi i32 [ %7946, %7945 ], [ 0, %7895 ]
  %7898 = phi i32 [ %7947, %7945 ], [ 0, %7895 ]
  %7899 = add nuw i32 %7898, 171
  %7900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %7899)  ; CBufferLoadLegacy(handle,regIndex)
  %7901 = extractvalue %dx.types.CBufRet.f32 %7900, 0
  %7902 = extractvalue %dx.types.CBufRet.f32 %7900, 1
  %7903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7904 = extractvalue %dx.types.CBufRet.f32 %7903, 0
  %7905 = extractvalue %dx.types.CBufRet.f32 %7903, 1
  %7906 = fsub fast float %7901, %7904
  %7907 = fsub fast float %7902, %7905
  %7908 = extractvalue %dx.types.CBufRet.f32 %7900, 2
  %7909 = fsub fast float -0.000000e+00, %7906
  %7910 = fsub fast float -0.000000e+00, %7907
  %7911 = call float @dx.op.dot2.f32(i32 54, float %7730, float %7731, float %7909, float %7910)  ; Dot2(ax,ay,bx,by)
  %7912 = fmul fast float %7911, 2.000000e+00
  %7913 = call float @dx.op.dot2.f32(i32 54, float %7909, float %7910, float %7909, float %7910)  ; Dot2(ax,ay,bx,by)
  %7914 = fmul fast float %7908, %7908
  %7915 = fsub fast float %7913, %7914
  %7916 = fmul fast float %7912, %7912
  %7917 = fmul fast float %7773, %7915
  %7918 = fsub fast float %7916, %7917
  %7919 = fcmp fast ogt float %7918, 0.000000e+00
  br i1 %7919, label %7920, label %7935

; <label>:7920                                    ; preds = %7896
  %7921 = fcmp fast ogt float %7912, 0.000000e+00
  %7922 = call float @dx.op.unary.f32(i32 24, float %7918)  ; Sqrt(value)
  %7923 = fsub fast float -0.000000e+00, %7922
  %7924 = select i1 %7921, float %7922, float %7923
  %7925 = fadd fast float %7924, %7912
  %7926 = fmul float %7925, -5.000000e-01
  %7927 = fdiv fast float %7926, %7766
  %7928 = call float @dx.op.binary.f32(i32 35, float %7927, float 0.000000e+00)  ; FMax(a,b)
  %7929 = call float @dx.op.binary.f32(i32 36, float %7801, float %7928)  ; FMin(a,b)
  %7930 = fdiv fast float %7915, %7926
  %7931 = call float @dx.op.binary.f32(i32 35, float %7930, float 0.000000e+00)  ; FMax(a,b)
  %7932 = call float @dx.op.binary.f32(i32 36, float %7801, float %7931)  ; FMin(a,b)
  %7933 = call float @dx.op.binary.f32(i32 36, float %7929, float %7932)  ; FMin(a,b)
  %7934 = call float @dx.op.binary.f32(i32 35, float %7929, float %7932)  ; FMax(a,b)
  br label %7935

; <label>:7935                                    ; preds = %7920, %7896
  %7936 = phi float [ %7934, %7920 ], [ -1.000000e+00, %7896 ]
  %7937 = phi float [ %7933, %7920 ], [ -1.000000e+00, %7896 ]
  %7938 = phi i1 [ true, %7920 ], [ false, %7896 ]
  br i1 %7938, label %7939, label %7945

; <label>:7939                                    ; preds = %7935
  %7940 = call float @dx.op.binary.f32(i32 35, float %7884, float %7937)  ; FMax(a,b)
  %7941 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7898
  store float %7940, float* %7941, align 4, !tbaa !107, !noalias !118
  %7942 = call float @dx.op.binary.f32(i32 35, float %7884, float %7936)  ; FMax(a,b)
  %7943 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %7898
  store float %7942, float* %7943, align 4, !tbaa !107, !noalias !118
  %7944 = add nsw i32 %7897, 1
  br label %7945

; <label>:7945                                    ; preds = %7939, %7935
  %7946 = phi i32 [ %7944, %7939 ], [ %7897, %7935 ]
  %7947 = add nuw nsw i32 %7898, 1
  %7948 = icmp eq i32 %7947, %7753
  br i1 %7948, label %7949, label %7896

; <label>:7949                                    ; preds = %7945
  %7950 = load float, float* %7890, align 4, !tbaa !107, !alias.scope !134, !noalias !137
  %7951 = load float, float* %7889, align 4, !tbaa !107, !alias.scope !140, !noalias !141
  %7952 = load float, float* %7888, align 4, !tbaa !107, !alias.scope !142, !noalias !143
  %7953 = load float, float* %7893, align 4, !tbaa !107, !alias.scope !144, !noalias !147
  %7954 = load float, float* %7892, align 4, !tbaa !107, !alias.scope !150, !noalias !151
  %7955 = load float, float* %7891, align 4, !tbaa !107, !alias.scope !152, !noalias !153
  br label %7956

; <label>:7956                                    ; preds = %7949, %7883
  %7957 = phi float [ -1.000000e+00, %7883 ], [ %7955, %7949 ]
  %7958 = phi float [ -1.000000e+00, %7883 ], [ %7954, %7949 ]
  %7959 = phi float [ -1.000000e+00, %7883 ], [ %7953, %7949 ]
  %7960 = phi float [ -1.000000e+00, %7883 ], [ %7952, %7949 ]
  %7961 = phi float [ -1.000000e+00, %7883 ], [ %7951, %7949 ]
  %7962 = phi float [ -1.000000e+00, %7883 ], [ %7950, %7949 ]
  %7963 = phi i32 [ 0, %7883 ], [ %7946, %7949 ]
  %7964 = call float @dx.op.binary.f32(i32 36, float %7961, float %7962)  ; FMin(a,b)
  %7965 = call float @dx.op.binary.f32(i32 36, float %7960, float %7964)  ; FMin(a,b)
  %7966 = call float @dx.op.binary.f32(i32 35, float %7960, float %7961)  ; FMax(a,b)
  %7967 = call float @dx.op.binary.f32(i32 36, float %7966, float %7962)  ; FMin(a,b)
  %7968 = call float @dx.op.binary.f32(i32 36, float %7960, float %7961)  ; FMin(a,b)
  %7969 = call float @dx.op.binary.f32(i32 35, float %7968, float %7967)  ; FMax(a,b)
  %7970 = call float @dx.op.binary.f32(i32 35, float %7961, float %7962)  ; FMax(a,b)
  %7971 = call float @dx.op.binary.f32(i32 35, float %7960, float %7970)  ; FMax(a,b)
  store float %7965, float* %7888, align 4, !tbaa !107, !alias.scope !142, !noalias !143
  store float %7969, float* %7889, align 4, !tbaa !107, !alias.scope !140, !noalias !141
  store float %7971, float* %7890, align 4, !tbaa !107, !alias.scope !134, !noalias !137
  %7972 = call float @dx.op.binary.f32(i32 36, float %7958, float %7959)  ; FMin(a,b)
  %7973 = call float @dx.op.binary.f32(i32 36, float %7957, float %7972)  ; FMin(a,b)
  %7974 = call float @dx.op.binary.f32(i32 35, float %7957, float %7958)  ; FMax(a,b)
  %7975 = call float @dx.op.binary.f32(i32 36, float %7974, float %7959)  ; FMin(a,b)
  %7976 = call float @dx.op.binary.f32(i32 36, float %7957, float %7958)  ; FMin(a,b)
  %7977 = call float @dx.op.binary.f32(i32 35, float %7976, float %7975)  ; FMax(a,b)
  %7978 = call float @dx.op.binary.f32(i32 35, float %7958, float %7959)  ; FMax(a,b)
  %7979 = call float @dx.op.binary.f32(i32 35, float %7957, float %7978)  ; FMax(a,b)
  store float %7973, float* %7891, align 4, !tbaa !107, !alias.scope !152, !noalias !153
  store float %7977, float* %7892, align 4, !tbaa !107, !alias.scope !150, !noalias !151
  store float %7979, float* %7893, align 4, !tbaa !107, !alias.scope !144, !noalias !147
  %7980 = sub nsw i32 3, %7963
  %7981 = icmp sgt i32 %7980, 2
  br i1 %7981, label %7982, label %8020

; <label>:7982                                    ; preds = %7956
  %7983 = icmp eq i32 %7751, 0
  %7984 = fsub fast float %7801, %7885
  %7985 = select i1 %7983, float %7984, float %7885
  %7986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7987 = extractvalue %dx.types.CBufRet.f32 %7986, 0
  %7988 = extractvalue %dx.types.CBufRet.f32 %7986, 1
  %7989 = extractvalue %dx.types.CBufRet.f32 %7986, 2
  %7990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7991 = extractvalue %dx.types.CBufRet.f32 %7990, 0
  %7992 = extractvalue %dx.types.CBufRet.f32 %7990, 1
  %7993 = extractvalue %dx.types.CBufRet.f32 %7990, 2
  %7994 = extractvalue %dx.types.CBufRet.f32 %7990, 3
  %7995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7996 = extractvalue %dx.types.CBufRet.f32 %7995, 3
  %7997 = call float @dx.op.binary.f32(i32 36, float %7886, float %7996)  ; FMin(a,b)
  %7998 = fmul fast float %7994, %7985
  %7999 = call float @dx.op.unary.f32(i32 7, float %7998)  ; Saturate(value)
  %8000 = fsub fast float %7991, %7987
  %8001 = fsub fast float %7992, %7988
  %8002 = fsub fast float %7993, %7989
  %8003 = fmul fast float %7999, %8000
  %8004 = fmul fast float %7999, %8001
  %8005 = fmul fast float %7999, %8002
  %8006 = fadd fast float %8003, %7987
  %8007 = fadd fast float %8004, %7988
  %8008 = fadd fast float %8005, %7989
  %8009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8010 = extractvalue %dx.types.CBufRet.f32 %8009, 0
  %8011 = extractvalue %dx.types.CBufRet.f32 %8009, 1
  %8012 = fadd fast float %8011, %8010
  %8013 = call float @dx.op.unary.f32(i32 7, float %8012)  ; Saturate(value)
  %8014 = extractvalue %dx.types.CBufRet.f32 %8009, 2
  %8015 = extractvalue %dx.types.CBufRet.f32 %8009, 3
  %8016 = fadd fast float %8015, %8014
  %8017 = call float @dx.op.unary.f32(i32 7, float %8016)  ; Saturate(value)
  %8018 = fmul fast float %8013, %7997
  %8019 = fmul fast float %8018, %8017
  br label %8102

; <label>:8020                                    ; preds = %7956
  %8021 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %7980
  %8022 = load float, float* %8021, align 4, !tbaa !107, !noalias !118
  %8023 = fcmp fast olt float %8022, %7887
  %8024 = icmp sgt i32 %7963, 0
  %8025 = and i1 %8024, %8023
  br i1 %8025, label %8026, label %8063

; <label>:8026                                    ; preds = %8020
  br label %8027

; <label>:8027                                    ; preds = %8056, %8026
  %8028 = phi float [ %8057, %8056 ], [ %7885, %8026 ]
  %8029 = phi float [ %8058, %8056 ], [ %7886, %8026 ]
  %8030 = phi float [ %8038, %8056 ], [ %8022, %8026 ]
  %8031 = phi i32 [ %8035, %8056 ], [ %7980, %8026 ]
  %8032 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8031
  %8033 = load float, float* %8032, align 4, !tbaa !107, !noalias !118
  %8034 = icmp slt i32 %8031, 2
  %8035 = add nsw i32 %8031, 1
  %8036 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8035
  %8037 = load float, float* %8036, align 4, !tbaa !107, !noalias !118
  %8038 = select i1 %8034, float %8037, float %7801
  %8039 = call float @dx.op.binary.f32(i32 36, float %8038, float %8033)  ; FMin(a,b)
  %8040 = call float @dx.op.binary.f32(i32 36, float %7887, float %8039)  ; FMin(a,b)
  %8041 = icmp eq i32 %7751, 0
  %8042 = fadd fast float %8040, %8030
  %8043 = fmul fast float %8042, %7732
  %8044 = fadd fast float %8043, %7745
  br i1 %8041, label %8050, label %8045

; <label>:8045                                    ; preds = %8027
  %8046 = fsub fast float %8040, %8030
  %8047 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8046)  ; FMax(a,b)
  %8048 = fmul fast float %8047, %8044
  %8049 = fadd fast float %8048, %8029
  br label %8056

; <label>:8050                                    ; preds = %8027
  %8051 = fsub fast float %8030, %8040
  %8052 = call float @dx.op.unary.f32(i32 6, float %8051)  ; FAbs(value)
  %8053 = fadd fast float %8052, %8028
  %8054 = fmul fast float %8052, %8044
  %8055 = fsub fast float %8029, %8054
  br label %8056

; <label>:8056                                    ; preds = %8050, %8045
  %8057 = phi float [ %8047, %8045 ], [ %8053, %8050 ]
  %8058 = phi float [ %8049, %8045 ], [ %8055, %8050 ]
  %8059 = fcmp fast olt float %8038, %7887
  %8060 = icmp slt i32 %8035, 3
  %8061 = and i1 %8060, %8059
  br i1 %8061, label %8027, label %8062

; <label>:8062                                    ; preds = %8056
  br label %8063

; <label>:8063                                    ; preds = %8062, %8020
  %8064 = phi float [ %7885, %8020 ], [ %8057, %8062 ]
  %8065 = phi float [ %7886, %8020 ], [ %8058, %8062 ]
  %8066 = fsub fast float %7801, %8064
  %8067 = select i1 %7803, float %8064, float %8066
  %8068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8069 = extractvalue %dx.types.CBufRet.f32 %8068, 0
  %8070 = extractvalue %dx.types.CBufRet.f32 %8068, 1
  %8071 = extractvalue %dx.types.CBufRet.f32 %8068, 2
  %8072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8073 = extractvalue %dx.types.CBufRet.f32 %8072, 0
  %8074 = extractvalue %dx.types.CBufRet.f32 %8072, 1
  %8075 = extractvalue %dx.types.CBufRet.f32 %8072, 2
  %8076 = extractvalue %dx.types.CBufRet.f32 %8072, 3
  %8077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8078 = extractvalue %dx.types.CBufRet.f32 %8077, 3
  %8079 = call float @dx.op.binary.f32(i32 36, float %8065, float %8078)  ; FMin(a,b)
  %8080 = fmul fast float %8076, %8067
  %8081 = call float @dx.op.unary.f32(i32 7, float %8080)  ; Saturate(value)
  %8082 = fsub fast float %8073, %8069
  %8083 = fsub fast float %8074, %8070
  %8084 = fsub fast float %8075, %8071
  %8085 = fmul fast float %8081, %8082
  %8086 = fmul fast float %8081, %8083
  %8087 = fmul fast float %8081, %8084
  %8088 = fadd fast float %8085, %8069
  %8089 = fadd fast float %8086, %8070
  %8090 = fadd fast float %8087, %8071
  %8091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.f32 %8091, 0
  %8093 = extractvalue %dx.types.CBufRet.f32 %8091, 1
  %8094 = fadd fast float %8093, %8092
  %8095 = call float @dx.op.unary.f32(i32 7, float %8094)  ; Saturate(value)
  %8096 = extractvalue %dx.types.CBufRet.f32 %8091, 2
  %8097 = extractvalue %dx.types.CBufRet.f32 %8091, 3
  %8098 = fadd fast float %8097, %8096
  %8099 = call float @dx.op.unary.f32(i32 7, float %8098)  ; Saturate(value)
  %8100 = fmul fast float %8095, %8079
  %8101 = fmul fast float %8100, %8099
  br label %8102

; <label>:8102                                    ; preds = %8063, %7982, %7817, %7799, %7797
  %8103 = phi float [ %7826, %7817 ], [ %7985, %7982 ], [ %8067, %8063 ], [ 0.000000e+00, %7797 ], [ 0.000000e+00, %7799 ]
  %8104 = phi float [ %7860, %7817 ], [ %8019, %7982 ], [ %8101, %8063 ], [ 0.000000e+00, %7797 ], [ 0.000000e+00, %7799 ]
  %8105 = phi float [ %7847, %7817 ], [ %8006, %7982 ], [ %8088, %8063 ], [ 0.000000e+00, %7797 ], [ 0.000000e+00, %7799 ]
  %8106 = phi float [ %7848, %7817 ], [ %8007, %7982 ], [ %8089, %8063 ], [ 0.000000e+00, %7797 ], [ 0.000000e+00, %7799 ]
  %8107 = phi float [ %7849, %7817 ], [ %8008, %7982 ], [ %8090, %8063 ], [ 0.000000e+00, %7797 ], [ 0.000000e+00, %7799 ]
  %8108 = fmul fast float %7740, %8104
  %8109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8110 = extractvalue %dx.types.CBufRet.f32 %8109, 2
  %8111 = fsub fast float %7747, %8110
  %8112 = fcmp fast olt float %8108, -2.000000e+01
  %8113 = call float @dx.op.unary.f32(i32 21, float %8108)  ; Exp(value)
  %8114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8115 = extractvalue %dx.types.CBufRet.f32 %8114, 2
  %8116 = extractvalue %dx.types.CBufRet.f32 %8114, 3
  %8117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8118 = extractvalue %dx.types.CBufRet.f32 %8117, 2
  %8119 = fmul fast float %8116, %8111
  %8120 = call float @dx.op.unary.f32(i32 7, float %8119)  ; Saturate(value)
  %8121 = fsub fast float 1.000000e+00, %8120
  %8122 = fmul fast float %7732, 5.000000e-01
  %8123 = fadd fast float %8122, 5.000000e-01
  %8124 = call float @dx.op.unary.f32(i32 7, float %8123)  ; Saturate(value)
  %8125 = fsub fast float 1.000000e+00, %8124
  %8126 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8121)  ; FMax(a,b)
  %8127 = fdiv fast float %8125, %8126
  %8128 = fsub fast float %8111, %7689
  %8129 = call float @dx.op.unary.f32(i32 6, float %8128)  ; FAbs(value)
  %8130 = fmul fast float %8129, %8115
  %8131 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  %8132 = fsub fast float 1.000000e+00, %8130
  %8133 = fmul fast float %8132, %8131
  %8134 = fadd fast float %8133, %8130
  %8135 = fmul fast float %8118, %8111
  %8136 = call float @dx.op.unary.f32(i32 7, float %8135)  ; Saturate(value)
  %8137 = fsub fast float 1.000000e+00, %8134
  %8138 = fmul fast float %8137, %8136
  %8139 = fadd fast float %8138, %8134
  %8140 = call float @dx.op.unary.f32(i32 7, float %8139)  ; Saturate(value)
  %8141 = fadd fast float %8113, -1.000000e+00
  %8142 = select i1 %8112, float -1.000000e+00, float %8141
  %8143 = fmul fast float %8140, %8142
  %8144 = fadd fast float %8143, 1.000000e+00
  %8145 = fsub fast float -0.000000e+00, %8143
  %8146 = fmul fast float %8105, %8145
  %8147 = fmul fast float %8106, %8145
  %8148 = fmul fast float %8107, %8145
  br label %8149

; <label>:8149                                    ; preds = %8102, %7698
  %8150 = phi float [ %8103, %8102 ], [ 0.000000e+00, %7698 ]
  %8151 = phi float [ %8144, %8102 ], [ 1.000000e+00, %7698 ]
  %8152 = phi float [ %8146, %8102 ], [ 0.000000e+00, %7698 ]
  %8153 = phi float [ %8147, %8102 ], [ 0.000000e+00, %7698 ]
  %8154 = phi float [ %8148, %8102 ], [ 0.000000e+00, %7698 ]
  %8155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8156 = extractvalue %dx.types.CBufRet.f32 %8155, 1
  %8157 = fsub fast float 1.000000e+00, %8151
  %8158 = fmul fast float %8157, %7733
  %8159 = fmul fast float %8158, %8156
  %8160 = fsub fast float %7733, %8159
  br i1 %7726, label %8161, label %8190, !dx.controlflow.hints !154

; <label>:8161                                    ; preds = %8149
  %8162 = fmul fast float %7734, %7723
  %8163 = fadd fast float %8162, %7724
  %8164 = call float @dx.op.unary.f32(i32 7, float %8163)  ; Saturate(value)
  %8165 = fmul fast float %7705, %8160
  %8166 = fsub fast float -0.000000e+00, %8165
  %8167 = fmul fast float %7706, %8160
  %8168 = fsub fast float -0.000000e+00, %8167
  %8169 = call float @dx.op.unary.f32(i32 21, float %8166)  ; Exp(value)
  %8170 = call float @dx.op.unary.f32(i32 21, float %8168)  ; Exp(value)
  %8171 = call float @dx.op.binary.f32(i32 35, float %7713, float %8169)  ; FMax(a,b)
  %8172 = call float @dx.op.binary.f32(i32 35, float %7713, float %8170)  ; FMax(a,b)
  %8173 = fsub fast float %8172, %8171
  %8174 = fmul fast float %8173, %8164
  %8175 = fadd fast float %8174, %8171
  %8176 = call float @dx.op.unary.f32(i32 7, float %8175)  ; Saturate(value)
  %8177 = fsub fast float %7710, %7715
  %8178 = fsub fast float %7711, %7716
  %8179 = fsub fast float %7712, %7717
  %8180 = fmul fast float %8164, %8177
  %8181 = fmul fast float %8164, %8178
  %8182 = fmul fast float %8164, %8179
  %8183 = fadd fast float %8180, %7715
  %8184 = fadd fast float %8181, %7716
  %8185 = fadd fast float %8182, %7717
  %8186 = fsub fast float 1.000000e+00, %8176
  %8187 = fmul fast float %8186, %8183
  %8188 = fmul fast float %8186, %8184
  %8189 = fmul fast float %8186, %8185
  br label %8249

; <label>:8190                                    ; preds = %8149
  %8191 = fmul fast float %8160, %7722
  %8192 = call float @dx.op.unary.f32(i32 7, float %8191)  ; Saturate(value)
  %8193 = fsub fast float 2.000000e+00, %8192
  %8194 = fmul fast float %8192, 9.921875e-01
  %8195 = fmul fast float %8194, %8193
  %8196 = fadd fast float %8195, 3.906250e-03
  %8197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %8196, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8198 = extractvalue %dx.types.ResRet.f32 %8197, 0
  %8199 = fsub fast float %8192, %8198
  %8200 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8199)  ; FMax(a,b)
  %8201 = fmul fast float %7708, %7689
  %8202 = call float @dx.op.unary.f32(i32 6, float %8201)  ; FAbs(value)
  %8203 = fcmp fast ogt float %8202, 0x3EB0C6F7A0000000
  br i1 %8203, label %8204, label %8210, !dx.controlflow.hints !155

; <label>:8204                                    ; preds = %8190
  %8205 = fmul fast float %8201, 0xBFF7154760000000
  %8206 = call float @dx.op.unary.f32(i32 21, float %8205)  ; Exp(value)
  %8207 = fsub fast float 1.000000e+00, %8206
  %8208 = fdiv fast float %8207, %8201
  %8209 = fmul fast float %8208, %7718
  br label %8210

; <label>:8210                                    ; preds = %8204, %8190
  %8211 = phi float [ %8209, %8204 ], [ %7718, %8190 ]
  %8212 = fadd fast float %8211, %7720
  %8213 = fmul fast float %8212, %8200
  %8214 = fmul fast float %7705, %8213
  %8215 = fsub fast float -0.000000e+00, %8214
  %8216 = fmul fast float %7706, %8213
  %8217 = fsub fast float -0.000000e+00, %8216
  %8218 = fmul fast float %7707, %8213
  %8219 = fsub fast float -0.000000e+00, %8218
  %8220 = call float @dx.op.unary.f32(i32 21, float %8215)  ; Exp(value)
  %8221 = call float @dx.op.unary.f32(i32 21, float %8217)  ; Exp(value)
  %8222 = call float @dx.op.unary.f32(i32 21, float %8219)  ; Exp(value)
  %8223 = fmul fast float %7734, %7734
  %8224 = fadd fast float %8223, 1.000000e+00
  %8225 = fmul fast float %8224, 0x3FAE8EC8A0000000
  %8226 = fmul fast float %8225, %7715
  %8227 = fmul fast float %8225, %7716
  %8228 = fmul fast float %8225, %7717
  %8229 = fmul fast float %7734, %7713
  %8230 = fsub fast float 1.000000e+00, %8229
  %8231 = fmul fast float %7713, %7713
  %8232 = fsub fast float 1.000000e+00, %8231
  %8233 = fmul fast float %8232, 0x3FB45F3060000000
  %8234 = fmul fast float %8230, %8230
  %8235 = fdiv fast float 1.000000e+00, %8234
  %8236 = fmul fast float %8233, %8235
  %8237 = fmul fast float %8236, %7710
  %8238 = fmul fast float %8236, %7711
  %8239 = fmul fast float %8236, %7712
  %8240 = fadd fast float %8237, %8226
  %8241 = fadd fast float %8238, %8227
  %8242 = fadd fast float %8239, %8228
  %8243 = fsub fast float 1.000000e+00, %8220
  %8244 = fsub fast float 1.000000e+00, %8221
  %8245 = fsub fast float 1.000000e+00, %8222
  %8246 = fmul fast float %8240, %8243
  %8247 = fmul fast float %8241, %8244
  %8248 = fmul fast float %8242, %8245
  br label %8249

; <label>:8249                                    ; preds = %8210, %8161
  %8250 = phi float [ %8187, %8161 ], [ %8246, %8210 ]
  %8251 = phi float [ %8188, %8161 ], [ %8247, %8210 ]
  %8252 = phi float [ %8189, %8161 ], [ %8248, %8210 ]
  %8253 = phi float [ %8176, %8161 ], [ %8220, %8210 ]
  %8254 = phi float [ %8176, %8161 ], [ %8221, %8210 ]
  %8255 = phi float [ %8176, %8161 ], [ %8222, %8210 ]
  br i1 %7742, label %8256, label %8454, !dx.controlflow.hints !156

; <label>:8256                                    ; preds = %8249
  %8257 = extractvalue %dx.types.CBufRet.f32 %8155, 0
  %8258 = fmul fast float %8257, %8157
  %8259 = fsub fast float %8152, %8250
  %8260 = fsub fast float %8153, %8251
  %8261 = fsub fast float %8154, %8252
  %8262 = fmul fast float %8258, %8259
  %8263 = fmul fast float %8258, %8260
  %8264 = fmul fast float %8258, %8261
  %8265 = fadd fast float %8262, %8250
  %8266 = fadd fast float %8263, %8251
  %8267 = fadd fast float %8264, %8252
  %8268 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8253)  ; FMax(a,b)
  %8269 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8254)  ; FMax(a,b)
  %8270 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8255)  ; FMax(a,b)
  %8271 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8151)  ; FMax(a,b)
  %8272 = call float @dx.op.binary.f32(i32 35, float %8150, float %8160)  ; FMax(a,b)
  %8273 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8272)  ; FMax(a,b)
  %8274 = fdiv fast float %8150, %8273
  %8275 = call float @dx.op.unary.f32(i32 7, float %8274)  ; Saturate(value)
  %8276 = fdiv fast float %8160, %8273
  %8277 = call float @dx.op.unary.f32(i32 7, float %8276)  ; Saturate(value)
  %8278 = fcmp fast une float %8271, 1.000000e+00
  br i1 %8278, label %8279, label %8292, !dx.controlflow.hints !157

; <label>:8279                                    ; preds = %8256
  %8280 = call float @dx.op.unary.f32(i32 23, float %8271)  ; Log(value)
  %8281 = fmul fast float %8280, 0x3FE62E4300000000
  %8282 = fmul fast float %8152, %8281
  %8283 = fsub fast float -0.000000e+00, %8282
  %8284 = fmul fast float %8153, %8281
  %8285 = fsub fast float -0.000000e+00, %8284
  %8286 = fmul fast float %8154, %8281
  %8287 = fsub fast float -0.000000e+00, %8286
  %8288 = fsub fast float 1.000000e+00, %8271
  %8289 = fdiv fast float %8283, %8288
  %8290 = fdiv fast float %8285, %8288
  %8291 = fdiv fast float %8287, %8288
  br label %8292

; <label>:8292                                    ; preds = %8279, %8256
  %8293 = phi float [ %8289, %8279 ], [ %8152, %8256 ]
  %8294 = phi float [ %8290, %8279 ], [ %8153, %8256 ]
  %8295 = phi float [ %8291, %8279 ], [ %8154, %8256 ]
  %8296 = phi float [ %8281, %8279 ], [ 0.000000e+00, %8256 ]
  %8297 = fcmp fast une float %8268, 1.000000e+00
  br i1 %8297, label %8298, label %8305, !dx.controlflow.hints !158

; <label>:8298                                    ; preds = %8292
  %8299 = call float @dx.op.unary.f32(i32 23, float %8268)  ; Log(value)
  %8300 = fmul fast float %8299, 0x3FE62E4300000000
  %8301 = fmul fast float %8265, %8300
  %8302 = fsub fast float -0.000000e+00, %8301
  %8303 = fsub fast float 1.000000e+00, %8268
  %8304 = fdiv fast float %8302, %8303
  br label %8305

; <label>:8305                                    ; preds = %8298, %8292
  %8306 = phi float [ %8304, %8298 ], [ %8265, %8292 ]
  %8307 = phi float [ %8300, %8298 ], [ 0.000000e+00, %8292 ]
  %8308 = fcmp fast une float %8269, 1.000000e+00
  br i1 %8308, label %8309, label %8316, !dx.controlflow.hints !158

; <label>:8309                                    ; preds = %8305
  %8310 = call float @dx.op.unary.f32(i32 23, float %8269)  ; Log(value)
  %8311 = fmul fast float %8310, 0x3FE62E4300000000
  %8312 = fmul fast float %8266, %8311
  %8313 = fsub fast float -0.000000e+00, %8312
  %8314 = fsub fast float 1.000000e+00, %8269
  %8315 = fdiv fast float %8313, %8314
  br label %8316

; <label>:8316                                    ; preds = %8309, %8305
  %8317 = phi float [ %8315, %8309 ], [ %8266, %8305 ]
  %8318 = phi float [ %8311, %8309 ], [ 0.000000e+00, %8305 ]
  %8319 = fcmp fast une float %8270, 1.000000e+00
  br i1 %8319, label %8320, label %8327, !dx.controlflow.hints !158

; <label>:8320                                    ; preds = %8316
  %8321 = call float @dx.op.unary.f32(i32 23, float %8270)  ; Log(value)
  %8322 = fmul fast float %8321, 0x3FE62E4300000000
  %8323 = fmul fast float %8267, %8322
  %8324 = fsub fast float -0.000000e+00, %8323
  %8325 = fsub fast float 1.000000e+00, %8270
  %8326 = fdiv fast float %8324, %8325
  br label %8327

; <label>:8327                                    ; preds = %8320, %8316
  %8328 = phi float [ %8326, %8320 ], [ %8267, %8316 ]
  %8329 = phi float [ %8322, %8320 ], [ 0.000000e+00, %8316 ]
  %8330 = fmul fast float %8293, %8277
  %8331 = fmul fast float %8294, %8277
  %8332 = fmul fast float %8295, %8277
  %8333 = fmul fast float %8296, %8277
  %8334 = fmul fast float %8306, %8275
  %8335 = fmul fast float %8317, %8275
  %8336 = fmul fast float %8328, %8275
  %8337 = fmul fast float %8307, %8275
  %8338 = fmul fast float %8318, %8275
  %8339 = fmul fast float %8329, %8275
  %8340 = fadd fast float %8334, %8330
  %8341 = fadd fast float %8335, %8331
  %8342 = fadd fast float %8336, %8332
  %8343 = fadd fast float %8337, %8333
  %8344 = fadd fast float %8338, %8333
  %8345 = fadd fast float %8339, %8333
  %8346 = fcmp fast une float %8343, 0.000000e+00
  br i1 %8346, label %8347, label %8354, !dx.controlflow.hints !159

; <label>:8347                                    ; preds = %8327
  %8348 = fmul fast float %8343, 0x3FF7154760000000
  %8349 = call float @dx.op.unary.f32(i32 21, float %8348)  ; Exp(value)
  %8350 = fsub fast float 1.000000e+00, %8349
  %8351 = fmul fast float %8340, %8350
  %8352 = fsub fast float -0.000000e+00, %8351
  %8353 = fdiv fast float %8352, %8343
  br label %8354

; <label>:8354                                    ; preds = %8347, %8327
  %8355 = phi float [ %8349, %8347 ], [ 1.000000e+00, %8327 ]
  %8356 = phi float [ %8353, %8347 ], [ %8340, %8327 ]
  %8357 = fcmp fast une float %8344, 0.000000e+00
  br i1 %8357, label %8358, label %8365, !dx.controlflow.hints !159

; <label>:8358                                    ; preds = %8354
  %8359 = fmul fast float %8344, 0x3FF7154760000000
  %8360 = call float @dx.op.unary.f32(i32 21, float %8359)  ; Exp(value)
  %8361 = fsub fast float 1.000000e+00, %8360
  %8362 = fmul fast float %8341, %8361
  %8363 = fsub fast float -0.000000e+00, %8362
  %8364 = fdiv fast float %8363, %8344
  br label %8365

; <label>:8365                                    ; preds = %8358, %8354
  %8366 = phi float [ %8360, %8358 ], [ 1.000000e+00, %8354 ]
  %8367 = phi float [ %8364, %8358 ], [ %8341, %8354 ]
  %8368 = fcmp fast une float %8345, 0.000000e+00
  br i1 %8368, label %8369, label %8376, !dx.controlflow.hints !159

; <label>:8369                                    ; preds = %8365
  %8370 = fmul fast float %8345, 0x3FF7154760000000
  %8371 = call float @dx.op.unary.f32(i32 21, float %8370)  ; Exp(value)
  %8372 = fsub fast float 1.000000e+00, %8371
  %8373 = fmul fast float %8342, %8372
  %8374 = fsub fast float -0.000000e+00, %8373
  %8375 = fdiv fast float %8374, %8345
  br label %8376

; <label>:8376                                    ; preds = %8369, %8365
  %8377 = phi float [ %8371, %8369 ], [ 1.000000e+00, %8365 ]
  %8378 = phi float [ %8375, %8369 ], [ %8342, %8365 ]
  %8379 = fcmp fast ogt float %8275, %8277
  br i1 %8379, label %8380, label %8400

; <label>:8380                                    ; preds = %8376
  %8381 = fsub fast float 1.000000e+00, %8277
  %8382 = fmul fast float %8293, %8381
  %8383 = fmul fast float %8294, %8381
  %8384 = fmul fast float %8295, %8381
  %8385 = fmul fast float %8296, %8381
  %8386 = fcmp fast une float %8385, 0.000000e+00
  br i1 %8386, label %8387, label %8438, !dx.controlflow.hints !160

; <label>:8387                                    ; preds = %8380
  %8388 = fmul fast float %8385, 0x3FF7154760000000
  %8389 = call float @dx.op.unary.f32(i32 21, float %8388)  ; Exp(value)
  %8390 = fsub fast float 1.000000e+00, %8389
  %8391 = fmul fast float %8382, %8390
  %8392 = fsub fast float -0.000000e+00, %8391
  %8393 = fmul fast float %8383, %8390
  %8394 = fsub fast float -0.000000e+00, %8393
  %8395 = fmul fast float %8384, %8390
  %8396 = fsub fast float -0.000000e+00, %8395
  %8397 = fdiv fast float %8392, %8385
  %8398 = fdiv fast float %8394, %8385
  %8399 = fdiv fast float %8396, %8385
  br label %8438

; <label>:8400                                    ; preds = %8376
  %8401 = fsub fast float 1.000000e+00, %8275
  %8402 = fmul fast float %8306, %8401
  %8403 = fmul fast float %8317, %8401
  %8404 = fmul fast float %8328, %8401
  %8405 = fmul fast float %8307, %8401
  %8406 = fmul fast float %8318, %8401
  %8407 = fmul fast float %8329, %8401
  %8408 = fcmp fast une float %8405, 0.000000e+00
  br i1 %8408, label %8409, label %8416, !dx.controlflow.hints !159

; <label>:8409                                    ; preds = %8400
  %8410 = fmul fast float %8405, 0x3FF7154760000000
  %8411 = call float @dx.op.unary.f32(i32 21, float %8410)  ; Exp(value)
  %8412 = fsub fast float 1.000000e+00, %8411
  %8413 = fmul fast float %8402, %8412
  %8414 = fsub fast float -0.000000e+00, %8413
  %8415 = fdiv fast float %8414, %8405
  br label %8416

; <label>:8416                                    ; preds = %8409, %8400
  %8417 = phi float [ %8415, %8409 ], [ %8402, %8400 ]
  %8418 = phi float [ %8411, %8409 ], [ 1.000000e+00, %8400 ]
  %8419 = fcmp fast une float %8406, 0.000000e+00
  br i1 %8419, label %8420, label %8427, !dx.controlflow.hints !159

; <label>:8420                                    ; preds = %8416
  %8421 = fmul fast float %8406, 0x3FF7154760000000
  %8422 = call float @dx.op.unary.f32(i32 21, float %8421)  ; Exp(value)
  %8423 = fsub fast float 1.000000e+00, %8422
  %8424 = fmul fast float %8403, %8423
  %8425 = fsub fast float -0.000000e+00, %8424
  %8426 = fdiv fast float %8425, %8406
  br label %8427

; <label>:8427                                    ; preds = %8420, %8416
  %8428 = phi float [ %8426, %8420 ], [ %8403, %8416 ]
  %8429 = phi float [ %8422, %8420 ], [ 1.000000e+00, %8416 ]
  %8430 = fcmp fast une float %8407, 0.000000e+00
  br i1 %8430, label %8431, label %8438, !dx.controlflow.hints !159

; <label>:8431                                    ; preds = %8427
  %8432 = fmul fast float %8407, 0x3FF7154760000000
  %8433 = call float @dx.op.unary.f32(i32 21, float %8432)  ; Exp(value)
  %8434 = fsub fast float 1.000000e+00, %8433
  %8435 = fmul fast float %8404, %8434
  %8436 = fsub fast float -0.000000e+00, %8435
  %8437 = fdiv fast float %8436, %8407
  br label %8438

; <label>:8438                                    ; preds = %8431, %8427, %8387, %8380
  %8439 = phi float [ %8437, %8431 ], [ %8399, %8387 ], [ %8384, %8380 ], [ %8404, %8427 ]
  %8440 = phi float [ %8428, %8431 ], [ %8398, %8387 ], [ %8383, %8380 ], [ %8428, %8427 ]
  %8441 = phi float [ %8417, %8431 ], [ %8397, %8387 ], [ %8382, %8380 ], [ %8417, %8427 ]
  %8442 = phi float [ %8433, %8431 ], [ %8389, %8387 ], [ 1.000000e+00, %8380 ], [ 1.000000e+00, %8427 ]
  %8443 = phi float [ %8429, %8431 ], [ %8389, %8387 ], [ 1.000000e+00, %8380 ], [ %8429, %8427 ]
  %8444 = phi float [ %8418, %8431 ], [ %8389, %8387 ], [ 1.000000e+00, %8380 ], [ %8418, %8427 ]
  %8445 = fmul fast float %8444, %8356
  %8446 = fmul fast float %8443, %8367
  %8447 = fmul fast float %8442, %8378
  %8448 = fadd fast float %8445, %8441
  %8449 = fadd fast float %8446, %8440
  %8450 = fadd fast float %8447, %8439
  %8451 = fmul fast float %8444, %8355
  %8452 = fmul fast float %8443, %8366
  %8453 = fmul fast float %8442, %8377
  br label %8454

; <label>:8454                                    ; preds = %8438, %8249
  %8455 = phi float [ %8453, %8438 ], [ %8255, %8249 ]
  %8456 = phi float [ %8452, %8438 ], [ %8254, %8249 ]
  %8457 = phi float [ %8451, %8438 ], [ %8253, %8249 ]
  %8458 = phi float [ %8450, %8438 ], [ %8252, %8249 ]
  %8459 = phi float [ %8449, %8438 ], [ %8251, %8249 ]
  %8460 = phi float [ %8448, %8438 ], [ %8250, %8249 ]
  %8461 = fmul fast float %8460, %7406
  %8462 = fmul fast float %8459, %7406
  %8463 = fmul fast float %8458, %7406
  %8464 = fmul fast float %8457, %7697
  %8465 = call float @dx.op.dot3.f32(i32 55, float %8457, float %8456, float %8455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8466 = call float @dx.op.dot3.f32(i32 55, float %8461, float %8462, float %8463, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8467 = select i1 %213, float %8465, float %8457
  %8468 = select i1 %213, float %8465, float %8456
  %8469 = select i1 %213, float 1.000000e+00, float %8455
  %8470 = select i1 %213, float %8466, float %8461
  %8471 = select i1 %213, float 0.000000e+00, float %8462
  %8472 = select i1 %213, float 0.000000e+00, float %8463
  %8473 = fmul fast float %8467, %7691
  %8474 = fmul fast float %8468, %7692
  %8475 = fmul fast float %8469, %7693
  %8476 = fadd fast float %8473, %8470
  %8477 = fadd fast float %8474, %8471
  %8478 = fadd fast float %8472, %8475
  %8479 = fmul fast float %8467, %7694
  %8480 = fmul fast float %8468, %7695
  %8481 = fmul fast float %8469, %7696
  %8482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.i32 %8482, 0
  %8484 = icmp eq i32 %8483, 0
  br i1 %8484, label %8852, label %8485, !dx.controlflow.hints !161

; <label>:8485                                    ; preds = %8454
  %8486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8487 = extractvalue %dx.types.CBufRet.f32 %8486, 2
  %8488 = extractvalue %dx.types.CBufRet.f32 %8486, 3
  %8489 = fmul fast float %8487, %97
  %8490 = fmul fast float %8488, %98
  %8491 = fmul fast float %8489, 2.000000e+00
  %8492 = fmul fast float %8490, 2.000000e+00
  %8493 = fsub fast float 1.000000e+00, %8491
  %8494 = fsub fast float 1.000000e+00, %8492
  %8495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8496 = extractvalue %dx.types.CBufRet.f32 %8495, 0
  %8497 = extractvalue %dx.types.CBufRet.f32 %8495, 1
  %8498 = extractvalue %dx.types.CBufRet.f32 %8495, 2
  %8499 = fmul fast float %8493, %8496
  %8500 = fmul fast float %8493, %8497
  %8501 = fmul fast float %8493, %8498
  %8502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8503 = extractvalue %dx.types.CBufRet.f32 %8502, 0
  %8504 = extractvalue %dx.types.CBufRet.f32 %8502, 1
  %8505 = extractvalue %dx.types.CBufRet.f32 %8502, 2
  %8506 = fmul fast float %8494, %8503
  %8507 = fmul fast float %8494, %8504
  %8508 = fmul fast float %8494, %8505
  %8509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8510 = extractvalue %dx.types.CBufRet.f32 %8509, 0
  %8511 = extractvalue %dx.types.CBufRet.f32 %8509, 1
  %8512 = extractvalue %dx.types.CBufRet.f32 %8509, 2
  %8513 = fadd fast float %8506, %8510
  %8514 = fadd fast float %8513, %8499
  %8515 = fadd fast float %8507, %8511
  %8516 = fadd fast float %8515, %8500
  %8517 = fadd fast float %8508, %8512
  %8518 = fadd fast float %8517, %8501
  %8519 = fmul fast float %8514, %7690
  %8520 = fmul fast float %8516, %7690
  %8521 = fmul fast float %8518, %7690
  %8522 = fmul fast float %8519, %8519
  %8523 = fmul fast float %8520, %8520
  %8524 = fadd fast float %8522, %8523
  %8525 = fmul fast float %8521, %8521
  %8526 = fadd fast float %8524, %8525
  %8527 = call float @dx.op.unary.f32(i32 24, float %8526)  ; Sqrt(value)
  %8528 = extractvalue %dx.types.CBufRet.f32 %7417, 0
  %8529 = fsub fast float %8527, %8528
  %8530 = extractvalue %dx.types.CBufRet.f32 %7417, 2
  %8531 = fmul fast float %8529, %8530
  %8532 = call float @dx.op.unary.f32(i32 7, float %8531)  ; Saturate(value)
  %8533 = fadd fast float %8532, -5.000000e-01
  %8534 = fmul fast float %8533, 2.000000e+00
  %8535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8536 = extractvalue %dx.types.CBufRet.f32 %8535, 2
  %8537 = call float @dx.op.binary.f32(i32 36, float %8536, float %8534)  ; FMin(a,b)
  %8538 = fsub fast float -0.000000e+00, %8536
  %8539 = fcmp fast ogt float %8537, %8538
  br i1 %8539, label %8540, label %8852, !dx.controlflow.hints !162

; <label>:8540                                    ; preds = %8485
  %8541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8542 = extractvalue %dx.types.CBufRet.f32 %8541, 3
  %8543 = fcmp fast ogt float %8542, 0.000000e+00
  br i1 %8543, label %8544, label %8619, !dx.controlflow.hints !163

; <label>:8544                                    ; preds = %8540
  %8545 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %8546 = extractvalue %dx.types.Dimensions %8545, 0
  %8547 = sitofp i32 %8546 to float
  %8548 = extractvalue %dx.types.Dimensions %8545, 1
  %8549 = sitofp i32 %8548 to float
  %8550 = fmul fast float %8489, %8547
  %8551 = fmul fast float %8490, %8549
  %8552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8553 = extractvalue %dx.types.CBufRet.f32 %8552, 1
  %8554 = fsub fast float -0.000000e+00, %8553
  %8555 = fptoui float %8554 to i32
  %8556 = fptoui float %8550 to i32
  %8557 = fptoui float %8551 to i32
  %8558 = and i32 %8555, 31
  %8559 = lshr i32 %8556, %8558
  %8560 = lshr i32 %8557, %8558
  %8561 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %8555, i32 %8559, i32 %8560, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8562 = extractvalue %dx.types.ResRet.f32 %8561, 0
  %8563 = fcmp fast olt float %8562, -1.000000e+00
  %8564 = fcmp fast ogt float %8562, -1.000000e+00
  %8565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8566 = extractvalue %dx.types.CBufRet.f32 %8565, 1
  %8567 = select i1 %8564, float %8566, float 1.000000e+00
  %8568 = fadd fast float %8562, 1.000000e+00
  %8569 = fmul fast float %8567, %8568
  %8570 = call float @dx.op.unary.f32(i32 6, float %8569)  ; FAbs(value)
  %8571 = extractvalue %dx.types.CBufRet.f32 %8565, 3
  %8572 = fcmp fast oge float %8570, %8571
  %8573 = select i1 %8572, float 0x4197782600000000, float %8570
  %8574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8575 = extractvalue %dx.types.CBufRet.f32 %8574, 0
  %8576 = extractvalue %dx.types.CBufRet.f32 %8574, 1
  %8577 = extractvalue %dx.types.CBufRet.f32 %8574, 2
  %8578 = select i1 %8563, float %8575, float %8496
  %8579 = select i1 %8563, float %8576, float %8497
  %8580 = select i1 %8563, float %8577, float %8498
  %8581 = fmul fast float %8578, %8493
  %8582 = fmul fast float %8579, %8493
  %8583 = fmul fast float %8580, %8493
  %8584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8585 = extractvalue %dx.types.CBufRet.f32 %8584, 0
  %8586 = extractvalue %dx.types.CBufRet.f32 %8584, 1
  %8587 = extractvalue %dx.types.CBufRet.f32 %8584, 2
  %8588 = select i1 %8563, float %8585, float %8503
  %8589 = select i1 %8563, float %8586, float %8504
  %8590 = select i1 %8563, float %8587, float %8505
  %8591 = fmul fast float %8588, %8494
  %8592 = fmul fast float %8589, %8494
  %8593 = fmul fast float %8590, %8494
  %8594 = fadd fast float %8591, %8581
  %8595 = fadd fast float %8592, %8582
  %8596 = fadd fast float %8593, %8583
  %8597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8598 = extractvalue %dx.types.CBufRet.f32 %8597, 0
  %8599 = extractvalue %dx.types.CBufRet.f32 %8597, 1
  %8600 = extractvalue %dx.types.CBufRet.f32 %8597, 2
  %8601 = select i1 %8563, float %8598, float %8510
  %8602 = select i1 %8563, float %8599, float %8511
  %8603 = select i1 %8563, float %8600, float %8512
  %8604 = fadd fast float %8594, %8601
  %8605 = fadd fast float %8595, %8602
  %8606 = fadd fast float %8596, %8603
  %8607 = fmul fast float %8604, %8573
  %8608 = fmul fast float %8605, %8573
  %8609 = fmul fast float %8606, %8573
  %8610 = fmul fast float %8607, %8607
  %8611 = fmul fast float %8608, %8608
  %8612 = fadd fast float %8610, %8611
  %8613 = fmul fast float %8609, %8609
  %8614 = fadd fast float %8612, %8613
  %8615 = call float @dx.op.unary.f32(i32 24, float %8614)  ; Sqrt(value)
  %8616 = fsub fast float %8615, %8528
  %8617 = fmul fast float %8616, %8530
  %8618 = call float @dx.op.unary.f32(i32 7, float %8617)  ; Saturate(value)
  br label %8619

; <label>:8619                                    ; preds = %8544, %8540
  %8620 = phi float [ %8618, %8544 ], [ 1.000000e+00, %8540 ]
  %8621 = fmul fast float %8537, 5.000000e-01
  %8622 = fadd fast float %8621, 5.000000e-01
  %8623 = call float @dx.op.unary.f32(i32 22, float %8622)  ; Frc(value)
  %8624 = call float @dx.op.unary.f32(i32 27, float %8623)  ; Round_ni(value)
  %8625 = call float @dx.op.unary.f32(i32 22, float %8623)  ; Frc(value)
  %8626 = fmul fast float %8625, 2.000000e+00
  %8627 = fadd fast float %8626, -1.000000e+00
  %8628 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %8489, float %8490, float %8624, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8629 = extractvalue %dx.types.ResRet.f32 %8628, 0
  %8630 = extractvalue %dx.types.ResRet.f32 %8628, 1
  %8631 = extractvalue %dx.types.ResRet.f32 %8628, 2
  %8632 = extractvalue %dx.types.ResRet.f32 %8628, 3
  %8633 = fadd fast float %8629, -5.000000e-01
  %8634 = fadd fast float %8631, -5.000000e-01
  %8635 = fmul fast float %8633, 0xBFD5555560000000
  %8636 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8634, float %8635)  ; FMad(a,b,c)
  %8637 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8630, float 0.000000e+00)  ; FMad(a,b,c)
  %8638 = fadd fast float %8637, %8632
  %8639 = fmul fast float %8633, -7.500000e-01
  %8640 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8634, float %8639)  ; FMad(a,b,c)
  %8641 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8630, float 0.000000e+00)  ; FMad(a,b,c)
  %8642 = fadd fast float %8641, %8632
  %8643 = call float @dx.op.binary.f32(i32 35, float %8636, float -1.000000e+00)  ; FMax(a,b)
  %8644 = call float @dx.op.binary.f32(i32 35, float %8638, float -1.000000e+00)  ; FMax(a,b)
  %8645 = call float @dx.op.binary.f32(i32 35, float %8640, float -1.000000e+00)  ; FMax(a,b)
  %8646 = call float @dx.op.binary.f32(i32 35, float %8642, float -1.000000e+00)  ; FMax(a,b)
  %8647 = call float @dx.op.binary.f32(i32 36, float %8643, float 1.000000e+00)  ; FMin(a,b)
  %8648 = call float @dx.op.binary.f32(i32 36, float %8644, float 1.000000e+00)  ; FMin(a,b)
  %8649 = call float @dx.op.binary.f32(i32 36, float %8645, float 1.000000e+00)  ; FMin(a,b)
  %8650 = call float @dx.op.binary.f32(i32 36, float %8646, float 1.000000e+00)  ; FMin(a,b)
  %8651 = fcmp fast olt float %8647, 0x3FEFFF8020000000
  br i1 %8651, label %8652, label %8767, !dx.controlflow.hints !164

; <label>:8652                                    ; preds = %8619
  %8653 = extractvalue %dx.types.CBufRet.f32 %8535, 3
  %8654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8655 = extractvalue %dx.types.CBufRet.f32 %8654, 0
  %8656 = extractvalue %dx.types.CBufRet.f32 %8654, 1
  %8657 = extractvalue %dx.types.CBufRet.f32 %8654, 2
  %8658 = extractvalue %dx.types.CBufRet.f32 %8654, 3
  %8659 = fsub fast float %8655, %8647
  %8660 = fsub fast float %8656, %8648
  %8661 = fsub fast float %8657, %8649
  %8662 = fsub fast float %8658, %8650
  %8663 = fmul fast float %8659, %8653
  %8664 = fmul fast float %8660, %8653
  %8665 = fmul fast float %8661, %8653
  %8666 = fmul fast float %8662, %8653
  %8667 = fadd fast float %8663, %8647
  %8668 = fadd fast float %8664, %8648
  %8669 = fsub fast float -0.000000e+00, %8668
  %8670 = fadd fast float %8665, %8649
  %8671 = fadd fast float %8666, %8650
  %8672 = fmul fast float %8667, %8667
  %8673 = fsub fast float %8668, %8672
  %8674 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8673)  ; FMax(a,b)
  %8675 = fdiv fast float 1.000000e+00, %8674
  %8676 = fmul fast float %8668, %8667
  %8677 = fsub fast float %8670, %8676
  %8678 = fsub fast float %8627, %8667
  %8679 = fmul fast float %8627, %8627
  %8680 = fsub fast float %8679, %8668
  %8681 = fmul fast float %8678, %8675
  %8682 = fmul fast float %8681, %8677
  %8683 = fsub fast float %8680, %8682
  %8684 = fmul fast float %8668, %8668
  %8685 = fsub fast float %8671, %8684
  %8686 = fmul fast float %8677, %8677
  %8687 = fmul fast float %8686, %8675
  %8688 = fsub fast float %8685, %8687
  %8689 = fdiv fast float %8683, %8688
  %8690 = fmul fast float %8677, %8689
  %8691 = fsub fast float %8678, %8690
  %8692 = fmul fast float %8691, %8675
  %8693 = fmul fast float %8692, %8667
  %8694 = fsub fast float 1.000000e+00, %8693
  %8695 = fmul fast float %8668, %8689
  %8696 = fsub fast float %8694, %8695
  %8697 = fmul fast float %8692, %8692
  %8698 = fmul fast float %8689, 4.000000e+00
  %8699 = fmul fast float %8698, %8696
  %8700 = fsub fast float %8697, %8699
  %8701 = call float @dx.op.unary.f32(i32 24, float %8700)  ; Sqrt(value)
  %8702 = fcmp fast oge float %8692, 0.000000e+00
  %8703 = fsub fast float -0.000000e+00, %8701
  %8704 = select i1 %8702, float %8703, float %8701
  %8705 = fsub fast float %8704, %8692
  %8706 = fdiv fast float %8705, %8689
  %8707 = fdiv fast float %8696, %8705
  %8708 = fmul fast float %8706, 5.000000e-01
  %8709 = fmul fast float %8707, 2.000000e+00
  %8710 = select i1 %8702, float %8708, float %8709
  %8711 = select i1 %8702, float %8709, float %8708
  %8712 = call float @dx.op.binary.f32(i32 35, float %8710, float %8711)  ; FMax(a,b)
  %8713 = call float @dx.op.binary.f32(i32 36, float %8710, float %8711)  ; FMin(a,b)
  %8714 = fcmp fast ogt float %8627, %8713
  br i1 %8714, label %8715, label %8725

; <label>:8715                                    ; preds = %8652
  %8716 = fsub fast float %8627, %8713
  %8717 = fsub fast float %8712, %8713
  %8718 = fmul fast float %8716, %8717
  %8719 = fmul fast float %8712, %8627
  %8720 = fadd fast float %8712, %8627
  %8721 = fmul fast float %8720, %8667
  %8722 = fadd fast float %8719, %8668
  %8723 = fsub fast float %8722, %8721
  %8724 = fdiv fast float %8723, %8718
  br label %8725

; <label>:8725                                    ; preds = %8715, %8652
  %8726 = phi float [ %8724, %8715 ], [ 0.000000e+00, %8652 ]
  %8727 = fcmp fast ogt float %8627, %8712
  %8728 = fsub fast float %8627, %8712
  br i1 %8727, label %8729, label %8739

; <label>:8729                                    ; preds = %8725
  %8730 = fsub fast float %8712, %8713
  %8731 = fmul fast float %8730, %8728
  %8732 = fmul fast float %8713, %8627
  %8733 = fadd fast float %8713, %8627
  %8734 = fmul fast float %8733, %8667
  %8735 = fsub fast float %8669, %8732
  %8736 = fadd fast float %8735, %8734
  %8737 = fdiv fast float %8736, %8731
  %8738 = fadd fast float %8737, %8726
  br label %8739

; <label>:8739                                    ; preds = %8729, %8725
  %8740 = phi float [ %8738, %8729 ], [ %8726, %8725 ]
  %8741 = fsub fast float %8627, %8713
  %8742 = fmul fast float %8741, %8728
  %8743 = fmul fast float %8713, %8712
  %8744 = fadd fast float %8713, %8712
  %8745 = fmul fast float %8744, %8667
  %8746 = fadd fast float %8743, %8668
  %8747 = fsub fast float %8746, %8745
  %8748 = fdiv fast float %8747, %8742
  %8749 = call float @dx.op.unary.f32(i32 7, float %8740)  ; Saturate(value)
  %8750 = fcmp fast oeq float %7418, 0.000000e+00
  %8751 = extractvalue %dx.types.CBufRet.f32 %8535, 0
  %8752 = fcmp fast oeq float %8751, 0.000000e+00
  %8753 = or i1 %8750, %8752
  %8754 = fmul fast float %8751, 2.000000e+00
  %8755 = fadd fast float %8536, %8537
  %8756 = fdiv fast float %8755, %8754
  %8757 = call float @dx.op.unary.f32(i32 7, float %8756)  ; Saturate(value)
  %8758 = fmul fast float %8757, 2.000000e+00
  %8759 = fsub fast float 3.000000e+00, %8758
  %8760 = fmul fast float %8757, %8757
  %8761 = fmul fast float %8760, %8759
  %8762 = select i1 %8753, float 1.000000e+00, float %8761
  %8763 = fmul fast float %8748, %7418
  %8764 = fadd fast float %8749, %8763
  %8765 = call float @dx.op.unary.f32(i32 7, float %8764)  ; Saturate(value)
  %8766 = fmul fast float %8762, %8765
  br label %8767

; <label>:8767                                    ; preds = %8739, %8619
  %8768 = phi float [ %8766, %8739 ], [ 0.000000e+00, %8619 ]
  %8769 = fsub fast float 1.000000e+00, %8768
  %8770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %8489, float %8490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8771 = extractvalue %dx.types.ResRet.f32 %8770, 0
  %8772 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8773 = extractvalue %dx.types.CBufRet.i32 %8772, 2
  %8774 = icmp eq i32 %8773, 0
  br i1 %8774, label %8780, label %8775

; <label>:8775                                    ; preds = %8767
  %8776 = call float @dx.op.unary.f32(i32 7, float %8768)  ; Saturate(value)
  %8777 = fadd fast float %8771, -1.000000e+00
  %8778 = fmul fast float %8776, %8777
  %8779 = fadd fast float %8778, 1.000000e+00
  br label %8780

; <label>:8780                                    ; preds = %8775, %8767
  %8781 = phi float [ %8779, %8775 ], [ %8769, %8767 ]
  br i1 %8543, label %8782, label %8800

; <label>:8782                                    ; preds = %8780
  %8783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8784 = extractvalue %dx.types.CBufRet.f32 %8783, 1
  %8785 = fsub fast float %8620, %8784
  %8786 = call float @dx.op.unary.f32(i32 7, float %8785)  ; Saturate(value)
  %8787 = fsub fast float %8620, %8542
  %8788 = call float @dx.op.unary.f32(i32 7, float %8787)  ; Saturate(value)
  %8789 = fsub fast float %8786, %8788
  %8790 = fsub fast float %8622, %8788
  %8791 = fdiv fast float %8790, %8789
  %8792 = call float @dx.op.unary.f32(i32 7, float %8791)  ; Saturate(value)
  %8793 = fmul fast float %8792, 2.000000e+00
  %8794 = fsub fast float 3.000000e+00, %8793
  %8795 = fsub fast float %8771, %8781
  %8796 = fmul fast float %8792, %8792
  %8797 = fmul fast float %8796, %8795
  %8798 = fmul fast float %8797, %8794
  %8799 = fadd fast float %8798, %8781
  br label %8800

; <label>:8800                                    ; preds = %8782, %8780
  %8801 = phi float [ %8799, %8782 ], [ %8781, %8780 ]
  %8802 = call float @dx.op.binary.f32(i32 35, float %8771, float %8801)  ; FMax(a,b)
  %8803 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8804 = extractvalue %dx.types.CBufRet.i32 %8803, 2
  %8805 = and i32 %8804, 1
  %8806 = icmp eq i32 %8805, 0
  %8807 = fcmp fast une float %8802, 1.000000e+00
  %8808 = and i1 %8807, %8806
  br i1 %8808, label %8809, label %8828

; <label>:8809                                    ; preds = %8800
  %8810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %8489, float %8490, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8811 = extractvalue %dx.types.ResRet.f32 %8810, 0
  %8812 = extractvalue %dx.types.ResRet.f32 %8810, 1
  %8813 = extractvalue %dx.types.ResRet.f32 %8810, 2
  %8814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8815 = extractvalue %dx.types.CBufRet.f32 %8814, 1
  %8816 = fmul fast float %8815, %8811
  %8817 = fmul fast float %8815, %8812
  %8818 = fmul fast float %8815, %8813
  %8819 = fcmp fast ogt float %8771, 0x3FEFFF2E40000000
  %8820 = fsub fast float 1.000000e+00, %8802
  %8821 = fsub fast float 1.000000e+00, %8771
  %8822 = fdiv fast float %8820, %8821
  %8823 = call float @dx.op.unary.f32(i32 7, float %8822)  ; Saturate(value)
  %8824 = select i1 %8819, float 0.000000e+00, float %8823
  %8825 = fmul fast float %8816, %8824
  %8826 = fmul fast float %8817, %8824
  %8827 = fmul fast float %8818, %8824
  br label %8828

; <label>:8828                                    ; preds = %8809, %8800
  %8829 = phi float [ 0.000000e+00, %8800 ], [ %8825, %8809 ]
  %8830 = phi float [ 0.000000e+00, %8800 ], [ %8826, %8809 ]
  %8831 = phi float [ 0.000000e+00, %8800 ], [ %8827, %8809 ]
  %8832 = fmul fast float %8829, %7406
  %8833 = fmul fast float %8830, %7406
  %8834 = fmul fast float %8831, %7406
  %8835 = fmul fast float %8802, %8464
  %8836 = call float @dx.op.dot3.f32(i32 55, float %8802, float %8802, float %8802, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8837 = call float @dx.op.dot3.f32(i32 55, float %8832, float %8833, float %8834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8838 = select i1 %213, float %8836, float %8802
  %8839 = select i1 %213, float 1.000000e+00, float %8802
  %8840 = select i1 %213, float %8837, float %8832
  %8841 = select i1 %213, float 0.000000e+00, float %8833
  %8842 = select i1 %213, float 0.000000e+00, float %8834
  %8843 = fmul fast float %8838, %8476
  %8844 = fmul fast float %8838, %8477
  %8845 = fmul fast float %8839, %8478
  %8846 = fadd fast float %8843, %8840
  %8847 = fadd fast float %8844, %8841
  %8848 = fadd fast float %8842, %8845
  %8849 = fmul fast float %8838, %8479
  %8850 = fmul fast float %8838, %8480
  %8851 = fmul fast float %8839, %8481
  br label %8852

; <label>:8852                                    ; preds = %8828, %8485, %8454, %7686
  %8853 = phi float [ %7691, %7686 ], [ %8476, %8454 ], [ %8846, %8828 ], [ %8476, %8485 ]
  %8854 = phi float [ %7692, %7686 ], [ %8477, %8454 ], [ %8847, %8828 ], [ %8477, %8485 ]
  %8855 = phi float [ %7693, %7686 ], [ %8478, %8454 ], [ %8848, %8828 ], [ %8478, %8485 ]
  %8856 = phi float [ %7694, %7686 ], [ %8479, %8454 ], [ %8849, %8828 ], [ %8479, %8485 ]
  %8857 = phi float [ %7695, %7686 ], [ %8480, %8454 ], [ %8850, %8828 ], [ %8480, %8485 ]
  %8858 = phi float [ %7696, %7686 ], [ %8481, %8454 ], [ %8851, %8828 ], [ %8481, %8485 ]
  %8859 = phi float [ %7697, %7686 ], [ %8464, %8454 ], [ %8835, %8828 ], [ %8464, %8485 ]
  %8860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8861 = extractvalue %dx.types.CBufRet.f32 %8860, 2
  %8862 = extractvalue %dx.types.CBufRet.f32 %8860, 3
  %8863 = fmul fast float %8861, %97
  %8864 = fmul fast float %8862, %98
  %8865 = call float @dx.op.unary.f32(i32 7, float %8863)  ; Saturate(value)
  %8866 = call float @dx.op.unary.f32(i32 7, float %8864)  ; Saturate(value)
  %8867 = select i1 %7428, i32 2, i32 0
  %8868 = or i32 %8867, 1
  %8869 = uitofp i32 %8868 to float
  %8870 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8865, float %8866, float %8869, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8871 = extractvalue %dx.types.ResRet.f32 %8870, 0
  %8872 = extractvalue %dx.types.ResRet.f32 %8870, 1
  %8873 = extractvalue %dx.types.ResRet.f32 %8870, 2
  %8874 = extractvalue %dx.types.ResRet.f32 %8870, 3
  %8875 = add nuw nsw i32 %8867, 2
  %8876 = uitofp i32 %8875 to float
  %8877 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8865, float %8866, float %8876, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8878 = extractvalue %dx.types.ResRet.f32 %8877, 0
  %8879 = extractvalue %dx.types.ResRet.f32 %8877, 1
  %8880 = extractvalue %dx.types.ResRet.f32 %8877, 2
  %8881 = extractvalue %dx.types.ResRet.f32 %8877, 3
  %8882 = call float @dx.op.binary.f32(i32 35, float %8872, float %8873)  ; FMax(a,b)
  %8883 = call float @dx.op.binary.f32(i32 35, float %8871, float %8882)  ; FMax(a,b)
  %8884 = call float @dx.op.binary.f32(i32 35, float %8883, float %8874)  ; FMax(a,b)
  %8885 = call float @dx.op.binary.f32(i32 36, float %8879, float %8880)  ; FMin(a,b)
  %8886 = call float @dx.op.binary.f32(i32 36, float %8878, float %8885)  ; FMin(a,b)
  %8887 = call float @dx.op.binary.f32(i32 36, float %8886, float %8881)  ; FMin(a,b)
  %8888 = fmul fast float %8884, 2.550000e+02
  %8889 = fadd fast float %8888, 0x3F70101020000000
  %8890 = fptoui float %8889 to i32
  %8891 = fmul fast float %8887, 2.550000e+02
  %8892 = fadd fast float %8891, 0x3F70101020000000
  %8893 = fptoui float %8892 to i32
  %8894 = icmp ult i32 %8890, %8893
  br i1 %8894, label %8895, label %9064

; <label>:8895                                    ; preds = %8852
  %8896 = fcmp fast ogt float %84, 9.843750e-01
  %8897 = fadd fast float %7690, -4.000000e+00
  %8898 = select i1 %8896, float -4.000000e+00, float %8897
  %8899 = call float @dx.op.binary.f32(i32 35, float %8898, float 0.000000e+00)  ; FMax(a,b)
  %8900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8901 = extractvalue %dx.types.CBufRet.f32 %8900, 0
  %8902 = fadd fast float %8901, %8899
  %8903 = extractvalue %dx.types.CBufRet.f32 %8900, 2
  %8904 = fmul fast float %8902, %8903
  %8905 = call float @dx.op.unary.f32(i32 23, float %8904)  ; Log(value)
  %8906 = extractvalue %dx.types.CBufRet.f32 %8900, 3
  %8907 = fmul fast float %8906, %8905
  %8908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8909 = extractvalue %dx.types.CBufRet.f32 %8908, 2
  %8910 = fmul fast float %8907, %8909
  %8911 = call float @dx.op.unary.f32(i32 7, float %8910)  ; Saturate(value)
  %8912 = uitofp i32 %8890 to float
  %8913 = uitofp i32 %8893 to float
  %8914 = fadd fast float %8912, 5.000000e-01
  %8915 = fadd fast float %8913, 5.000000e-01
  %8916 = fmul fast float %8909, %8914
  %8917 = fmul fast float %8909, %8915
  %8918 = fadd fast float %8916, 0x3F0FFB4800000000
  %8919 = fadd fast float %8917, 0xBF0FFB4800000000
  %8920 = call float @dx.op.binary.f32(i32 35, float %8911, float %8918)  ; FMax(a,b)
  %8921 = call float @dx.op.binary.f32(i32 36, float %8920, float %8919)  ; FMin(a,b)
  %8922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8923 = extractvalue %dx.types.CBufRet.f32 %8922, 1
  %8924 = extractvalue %dx.types.CBufRet.f32 %8922, 2
  %8925 = extractvalue %dx.types.CBufRet.f32 %8922, 0
  %8926 = select i1 %7428, float %8925, float 0.000000e+00
  %8927 = fmul fast float %8923, %8921
  %8928 = fadd fast float %8926, %8927
  %8929 = fadd fast float %8926, %8924
  %8930 = fsub fast float %8923, %8924
  %8931 = fadd fast float %8930, %8926
  %8932 = call float @dx.op.binary.f32(i32 35, float %8928, float %8929)  ; FMax(a,b)
  %8933 = call float @dx.op.binary.f32(i32 36, float %8932, float %8931)  ; FMin(a,b)
  %8934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %8865, float %8866, float %8933, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8935 = extractvalue %dx.types.ResRet.f32 %8934, 0
  %8936 = extractvalue %dx.types.ResRet.f32 %8934, 1
  %8937 = extractvalue %dx.types.ResRet.f32 %8934, 2
  %8938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.i32 %8938, 0
  %8940 = extractvalue %dx.types.CBufRet.i32 %8938, 1
  %8941 = uitofp i32 %8939 to float
  %8942 = uitofp i32 %8940 to float
  %8943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8944 = extractvalue %dx.types.CBufRet.f32 %8943, 0
  %8945 = extractvalue %dx.types.CBufRet.f32 %8943, 1
  %8946 = fmul fast float %8941, %8865
  %8947 = fmul fast float %8942, %8866
  %8948 = fadd fast float %8946, -5.000000e-01
  %8949 = fadd fast float %8947, -5.000000e-01
  %8950 = call float @dx.op.unary.f32(i32 22, float %8948)  ; Frc(value)
  %8951 = call float @dx.op.unary.f32(i32 22, float %8949)  ; Frc(value)
  %8952 = fmul fast float %8950, %8950
  %8953 = fmul fast float %8952, %8950
  %8954 = fsub fast float 3.000000e+00, %8950
  %8955 = fmul fast float %8952, %8954
  %8956 = fmul fast float %8950, 3.000000e+00
  %8957 = fmul fast float %8953, 3.000000e+00
  %8958 = fmul fast float %8952, 6.000000e+00
  %8959 = fsub fast float %8957, %8958
  %8960 = fadd fast float %8959, 4.000000e+00
  %8961 = fmul fast float %8960, 0x3FC5555560000000
  %8962 = fmul fast float %8953, -3.000000e+00
  %8963 = fadd fast float %8952, %8950
  %8964 = fmul fast float %8963, 3.000000e+00
  %8965 = fadd fast float %8962, 1.000000e+00
  %8966 = fadd fast float %8965, %8964
  %8967 = fmul fast float %8953, 0x3FC5555560000000
  %8968 = fmul fast float %8951, %8951
  %8969 = fmul fast float %8968, %8951
  %8970 = fsub fast float 3.000000e+00, %8951
  %8971 = fmul fast float %8968, %8970
  %8972 = fmul fast float %8951, 3.000000e+00
  %8973 = fmul fast float %8969, 3.000000e+00
  %8974 = fmul fast float %8968, 6.000000e+00
  %8975 = fsub fast float %8973, %8974
  %8976 = fadd fast float %8975, 4.000000e+00
  %8977 = fmul fast float %8976, 0x3FC5555560000000
  %8978 = fmul fast float %8969, -3.000000e+00
  %8979 = fadd fast float %8968, %8951
  %8980 = fmul fast float %8979, 3.000000e+00
  %8981 = fadd fast float %8978, 1.000000e+00
  %8982 = fadd fast float %8981, %8980
  %8983 = fmul fast float %8969, 0x3FC5555560000000
  %8984 = fadd fast float %8950, 1.000000e+00
  %8985 = fsub fast float 1.000000e+00, %8956
  %8986 = fadd fast float %8985, %8955
  %8987 = fadd fast float %8986, %8960
  %8988 = fmul fast float %8987, 0x3FC5555560000000
  %8989 = fdiv fast float %8961, %8988
  %8990 = fsub fast float %8984, %8989
  %8991 = fsub fast float 1.000000e+00, %8950
  %8992 = fadd fast float %8966, %8953
  %8993 = fmul fast float %8992, 0x3FC5555560000000
  %8994 = fdiv fast float %8967, %8993
  %8995 = fadd fast float %8991, %8994
  %8996 = fadd fast float %8951, 1.000000e+00
  %8997 = fsub fast float 1.000000e+00, %8972
  %8998 = fadd fast float %8997, %8971
  %8999 = fadd fast float %8998, %8976
  %9000 = fmul fast float %8999, 0x3FC5555560000000
  %9001 = fdiv fast float %8977, %9000
  %9002 = fsub fast float %8996, %9001
  %9003 = fsub fast float 1.000000e+00, %8951
  %9004 = fadd fast float %8982, %8969
  %9005 = fmul fast float %9004, 0x3FC5555560000000
  %9006 = fdiv fast float %8983, %9005
  %9007 = fadd fast float %9006, %9003
  %9008 = fmul fast float %8990, %8944
  %9009 = fsub fast float %8865, %9008
  %9010 = fmul fast float %8995, %8944
  %9011 = fadd fast float %9010, %8865
  %9012 = fmul fast float %9007, %8945
  %9013 = fadd fast float %9012, %8866
  %9014 = fmul fast float %9002, %8945
  %9015 = fsub fast float %8866, %9014
  %9016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9009, float %9015, float %8933, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9017 = extractvalue %dx.types.ResRet.f32 %9016, 0
  %9018 = extractvalue %dx.types.ResRet.f32 %9016, 1
  %9019 = extractvalue %dx.types.ResRet.f32 %9016, 2
  %9020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9011, float %9015, float %8933, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9021 = extractvalue %dx.types.ResRet.f32 %9020, 0
  %9022 = extractvalue %dx.types.ResRet.f32 %9020, 1
  %9023 = extractvalue %dx.types.ResRet.f32 %9020, 2
  %9024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9009, float %9013, float %8933, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9025 = extractvalue %dx.types.ResRet.f32 %9024, 0
  %9026 = extractvalue %dx.types.ResRet.f32 %9024, 1
  %9027 = extractvalue %dx.types.ResRet.f32 %9024, 2
  %9028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9011, float %9013, float %8933, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9029 = extractvalue %dx.types.ResRet.f32 %9028, 0
  %9030 = extractvalue %dx.types.ResRet.f32 %9028, 1
  %9031 = extractvalue %dx.types.ResRet.f32 %9028, 2
  %9032 = fsub fast float %9025, %9017
  %9033 = fsub fast float %9026, %9018
  %9034 = fsub fast float %9027, %9019
  %9035 = fmul fast float %9032, %9005
  %9036 = fmul fast float %9033, %9005
  %9037 = fmul fast float %9034, %9005
  %9038 = fadd fast float %9035, %9017
  %9039 = fadd fast float %9036, %9018
  %9040 = fadd fast float %9037, %9019
  %9041 = fsub fast float %9029, %9021
  %9042 = fsub fast float %9030, %9022
  %9043 = fsub fast float %9031, %9023
  %9044 = fmul fast float %9041, %9005
  %9045 = fmul fast float %9042, %9005
  %9046 = fmul fast float %9043, %9005
  %9047 = fsub fast float %9021, %9038
  %9048 = fadd fast float %9047, %9044
  %9049 = fsub fast float %9022, %9039
  %9050 = fadd fast float %9049, %9045
  %9051 = fsub fast float %9023, %9040
  %9052 = fadd fast float %9051, %9046
  %9053 = fmul fast float %9048, %8993
  %9054 = fmul fast float %9050, %8993
  %9055 = fmul fast float %9052, %8993
  %9056 = fadd fast float %9053, %9038
  %9057 = fadd fast float %9054, %9039
  %9058 = fadd fast float %9055, %9040
  %9059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9060 = extractvalue %dx.types.CBufRet.f32 %9059, 1
  %9061 = fmul fast float %9056, %9060
  %9062 = fmul fast float %9057, %9060
  %9063 = fmul fast float %9058, %9060
  br label %9064

; <label>:9064                                    ; preds = %8895, %8852
  %9065 = phi float [ %8935, %8895 ], [ 1.000000e+00, %8852 ]
  %9066 = phi float [ %8936, %8895 ], [ 1.000000e+00, %8852 ]
  %9067 = phi float [ %8937, %8895 ], [ 1.000000e+00, %8852 ]
  %9068 = phi float [ %9061, %8895 ], [ 0.000000e+00, %8852 ]
  %9069 = phi float [ %9062, %8895 ], [ 0.000000e+00, %8852 ]
  %9070 = phi float [ %9063, %8895 ], [ 0.000000e+00, %8852 ]
  %9071 = fmul fast float %9068, %7406
  %9072 = fmul fast float %9069, %7406
  %9073 = fmul fast float %9070, %7406
  %9074 = fmul fast float %9065, %8859
  %9075 = call float @dx.op.dot3.f32(i32 55, float %9065, float %9066, float %9067, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9076 = call float @dx.op.dot3.f32(i32 55, float %9071, float %9072, float %9073, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9077 = select i1 %213, float %9075, float %9065
  %9078 = select i1 %213, float %9075, float %9066
  %9079 = select i1 %213, float 1.000000e+00, float %9067
  %9080 = select i1 %213, float %9076, float %9071
  %9081 = select i1 %213, float 0.000000e+00, float %9072
  %9082 = select i1 %213, float 0.000000e+00, float %9073
  %9083 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9084 = extractvalue %dx.types.CBufRet.i32 %9083, 3
  %9085 = and i32 %9084, 3
  %9086 = icmp ne i32 %9085, 0
  %9087 = and i32 %9084, 4
  %9088 = icmp ne i32 %9087, 0
  %9089 = and i1 %9086, %9088
  %9090 = and i1 %213, %9089
  br i1 %9090, label %9091, label %9097

; <label>:9091                                    ; preds = %9064
  %9092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9093 = extractvalue %dx.types.CBufRet.f32 %9092, 1
  %9094 = fadd fast float %9074, -1.000000e+00
  %9095 = fmul fast float %9093, %9094
  %9096 = fadd fast float %9095, 1.000000e+00
  br label %9097

; <label>:9097                                    ; preds = %9091, %9064
  %9098 = phi float [ %9096, %9091 ], [ %9074, %9064 ]
  %9099 = fadd fast float %8856, %8853
  %9100 = fmul fast float %9077, %9099
  %9101 = fadd fast float %9100, %9080
  %9102 = fadd fast float %8857, %8854
  %9103 = fmul fast float %9078, %9102
  %9104 = fadd fast float %9103, %9081
  %9105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9106 = extractvalue %dx.types.CBufRet.f32 %9105, 0
  br i1 %213, label %9107, label %9130

; <label>:9107                                    ; preds = %9097
  %9108 = fadd fast float %9101, %9104
  %9109 = fmul fast float %9106, %9108
  %9110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9111 = extractvalue %dx.types.CBufRet.f32 %9110, 3
  %9112 = extractvalue %dx.types.CBufRet.f32 %7410, 1
  %9113 = fsub fast float %7415, %7409
  %9114 = fadd fast float %9113, %7416
  %9115 = fsub fast float %9114, %9112
  %9116 = extractvalue %dx.types.CBufRet.f32 %7410, 2
  %9117 = fmul fast float %9115, %9116
  %9118 = call float @dx.op.unary.f32(i32 7, float %9117)  ; Saturate(value)
  %9119 = fsub fast float %9118, %9111
  %9120 = fmul fast float %9119, %9098
  %9121 = fadd fast float %9120, %9111
  %9122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9123 = extractvalue %dx.types.CBufRet.f32 %9122, 0
  %9124 = fsub fast float %9121, %9123
  %9125 = fmul fast float %9124, 1.000000e+01
  %9126 = call float @dx.op.unary.f32(i32 7, float %9125)  ; Saturate(value)
  %9127 = fmul fast float %9126, %7405
  %9128 = fadd fast float %9127, %7406
  %9129 = fmul fast float %9128, %9121
  br label %9154

; <label>:9130                                    ; preds = %9097
  %9131 = fadd fast float %8858, %8855
  %9132 = fmul fast float %9079, %9131
  %9133 = fadd fast float %9132, %9082
  %9134 = fmul fast float %9106, %9101
  %9135 = fmul fast float %9106, %9104
  %9136 = fmul fast float %9106, %9133
  %9137 = call float @dx.op.binary.f32(i32 35, float %9135, float %9136)  ; FMax(a,b)
  %9138 = call float @dx.op.binary.f32(i32 35, float %9134, float %9137)  ; FMax(a,b)
  %9139 = call float @dx.op.binary.f32(i32 35, float %9138, float %7406)  ; FMax(a,b)
  %9140 = fcmp fast ugt float %9139, 0x3F10000000000000
  br i1 %9140, label %9142, label %9141

; <label>:9141                                    ; preds = %9130
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9142

; <label>:9142                                    ; preds = %9141, %9130
  %9143 = add i32 %48, 356
  %9144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %9143, i32 undef)  ; BufferLoad(srv,index,wot)
  %9145 = extractvalue %dx.types.ResRet.i32 %9144, 0
  %9146 = and i32 %9145, 32
  %9147 = icmp eq i32 %9146, 0
  br i1 %9147, label %9154, label %9148

; <label>:9148                                    ; preds = %9142
  %9149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9150 = extractvalue %dx.types.CBufRet.f32 %9149, 0
  %9151 = fmul fast float %9150, 0x3FE99999A0000000
  %9152 = fadd fast float %9150, %9134
  %9153 = fadd fast float %9151, %9136
  br label %9154

; <label>:9154                                    ; preds = %9148, %9142, %9107
  %9155 = phi float [ %9109, %9107 ], [ %9152, %9148 ], [ %9134, %9142 ]
  %9156 = phi float [ %9129, %9107 ], [ %9135, %9148 ], [ %9135, %9142 ]
  %9157 = phi float [ %9128, %9107 ], [ %9153, %9148 ], [ %9136, %9142 ]
  %9158 = phi float [ %9128, %9107 ], [ %7406, %9148 ], [ %7406, %9142 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9159 = call float @dx.op.binary.f32(i32 36, float %9155, float 3.225500e+04)  ; FMin(a,b)
  %9160 = call float @dx.op.binary.f32(i32 36, float %9156, float 3.225500e+04)  ; FMin(a,b)
  %9161 = call float @dx.op.binary.f32(i32 36, float %9157, float 3.225500e+04)  ; FMin(a,b)
  %9162 = call float @dx.op.binary.f32(i32 36, float %9158, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9159)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9160)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9161)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9162)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

