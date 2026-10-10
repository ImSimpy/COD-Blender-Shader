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
; shader hash: fd98cf5c66e7cc69ccd07e1e818d8da6
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
  %439 = add i32 %48, 536
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
  %715 = add i32 %48, 472
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
  %767 = add i32 %48, 456
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
  %791 = add i32 %48, 408
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
  %814 = add i32 %48, 488
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
  %1012 = add i32 %48, 424
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
  %1096 = add i32 %48, 440
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
  %1154 = add i32 %48, 504
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
  %1195 = add i32 %48, 520
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
  %1506 = add i32 %48, 476
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
  %1558 = add i32 %48, 460
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
  %1584 = add i32 %48, 412
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
  %1607 = add i32 %48, 492
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
  %1805 = add i32 %48, 428
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
  %1889 = add i32 %48, 444
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
  %1947 = add i32 %48, 508
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
  %1988 = add i32 %48, 524
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
  %2563 = add i32 %48, 480
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
  %2615 = add i32 %48, 464
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
  %2641 = add i32 %48, 416
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
  %2664 = add i32 %48, 496
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
  %2862 = add i32 %48, 432
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
  %2946 = add i32 %48, 448
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
  %3004 = add i32 %48, 512
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
  %3045 = add i32 %48, 528
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
  %3620 = add i32 %48, 484
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
  %3672 = add i32 %48, 468
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
  %3698 = add i32 %48, 420
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
  %3721 = add i32 %48, 500
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
  %3919 = add i32 %48, 436
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
  %4003 = add i32 %48, 452
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
  %4061 = add i32 %48, 516
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
  %4102 = add i32 %48, 532
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
  %4448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4448, 0
  %4450 = call float @dx.op.dot2.f32(i32 54, float %4429, float %4430, float %4429, float %4430)  ; Dot2(ax,ay,bx,by)
  %4451 = fmul fast float %4450, 0x3FE3333340000000
  %4452 = fsub fast float 1.000000e+00, %4451
  %4453 = call float @dx.op.dot3.f32(i32 55, float %4429, float %4430, float %4452, float %4429, float %4430, float %4452)  ; Dot3(ax,ay,az,bx,by,bz)
  %4454 = call float @dx.op.unary.f32(i32 25, float %4453)  ; Rsqrt(value)
  %4455 = fmul fast float %4454, %4429
  %4456 = fmul fast float %4454, %4430
  %4457 = fmul fast float %4452, %4454
  %4458 = fmul fast float %4457, %104
  %4459 = fmul fast float %4457, %105
  %4460 = fmul fast float %4457, %106
  %4461 = fmul fast float %4455, %69
  %4462 = fmul fast float %4455, %70
  %4463 = fmul fast float %4455, %71
  %4464 = fadd fast float %4458, %4461
  %4465 = fadd fast float %4459, %4462
  %4466 = fadd fast float %4460, %4463
  %4467 = fmul fast float %116, %4456
  %4468 = fmul fast float %117, %4456
  %4469 = fmul fast float %118, %4456
  %4470 = fadd fast float %4464, %4467
  %4471 = fadd fast float %4465, %4468
  %4472 = fadd fast float %4466, %4469
  %4473 = call float @dx.op.dot3.f32(i32 55, float %4470, float %4471, float %4472, float %4470, float %4471, float %4472)  ; Dot3(ax,ay,az,bx,by,bz)
  %4474 = call float @dx.op.unary.f32(i32 25, float %4473)  ; Rsqrt(value)
  %4475 = fmul fast float %4470, %4474
  %4476 = fmul fast float %4471, %4474
  %4477 = fmul fast float %4472, %4474
  %4478 = and i32 %50, 1
  %4479 = icmp eq i32 %4478, 0
  br i1 %4479, label %4480, label %5072

; <label>:4480                                    ; preds = %4428
  %4481 = call float @dx.op.unary.f32(i32 83, float %152)  ; DerivCoarseX(value)
  %4482 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %4483 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4484 = call float @dx.op.unary.f32(i32 84, float %152)  ; DerivCoarseY(value)
  %4485 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %4486 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4487 = fadd fast float %4481, %152
  %4488 = fadd fast float %4482, %153
  %4489 = fadd fast float %4483, %154
  %4490 = fadd fast float %4484, %152
  %4491 = fadd fast float %4485, %153
  %4492 = fadd fast float %4486, %154
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 0
  %4495 = extractvalue %dx.types.CBufRet.f32 %4493, 1
  %4496 = extractvalue %dx.types.CBufRet.f32 %4493, 2
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 2
  %4499 = extractvalue %dx.types.CBufRet.f32 %4497, 3
  %4500 = fmul fast float %4494, %97
  %4501 = fmul fast float %4500, %4498
  %4502 = fmul fast float %4495, %98
  %4503 = fmul fast float %4502, %4499
  %4504 = fptoui float %4501 to i32
  %4505 = fptoui float %4503 to i32
  %4506 = fadd fast float %4494, -1.000000e+00
  %4507 = fadd fast float %4495, -1.000000e+00
  %4508 = fptoui float %4506 to i32
  %4509 = fptoui float %4507 to i32
  %4510 = call i32 @dx.op.binary.i32(i32 40, i32 %4504, i32 %4508)  ; UMin(a,b)
  %4511 = call i32 @dx.op.binary.i32(i32 40, i32 %4505, i32 %4509)  ; UMin(a,b)
  %4512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4513 = extractvalue %dx.types.CBufRet.f32 %4512, 2
  %4514 = extractvalue %dx.types.CBufRet.f32 %4512, 3
  %4515 = fmul fast float %4513, %85
  %4516 = fsub fast float %4515, %4514
  %4517 = fadd fast float %4496, -1.000000e+00
  %4518 = call float @dx.op.binary.f32(i32 36, float %4516, float %4517)  ; FMin(a,b)
  %4519 = fptoui float %4518 to i32
  %4520 = fptoui float %4494 to i32
  %4521 = fptoui float %4495 to i32
  %4522 = mul i32 %4519, %4521
  %4523 = add i32 %4522, %4511
  %4524 = mul i32 %4523, %4520
  %4525 = add i32 %4524, %4510
  %4526 = shl i32 %4525, 2
  %4527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4526, i32 undef)  ; BufferLoad(srv,index,wot)
  %4528 = extractvalue %dx.types.ResRet.i32 %4527, 0
  %4529 = and i32 %4528, 1023
  %4530 = lshr i32 %4528, 10
  %4531 = icmp eq i32 %4529, 0
  br i1 %4531, label %5035, label %4532

; <label>:4532                                    ; preds = %4480
  %4533 = and i32 %4528, 1023
  br label %4534

; <label>:4534                                    ; preds = %4666, %4532
  %4535 = phi i32 [ %4616, %4666 ], [ 0, %4532 ]
  %4536 = phi float [ %4667, %4666 ], [ 0.000000e+00, %4532 ]
  %4537 = phi float [ %4668, %4666 ], [ %4449, %4532 ]
  %4538 = phi float [ %4669, %4666 ], [ %4447, %4532 ]
  %4539 = phi float [ %4670, %4666 ], [ %4440, %4532 ]
  %4540 = phi float [ %4671, %4666 ], [ %4441, %4532 ]
  %4541 = phi float [ %4672, %4666 ], [ %4442, %4532 ]
  %4542 = phi float [ %4673, %4666 ], [ 0.000000e+00, %4532 ]
  %4543 = phi float [ %4674, %4666 ], [ 0.000000e+00, %4532 ]
  %4544 = phi float [ %4675, %4666 ], [ %4437, %4532 ]
  %4545 = phi float [ %4676, %4666 ], [ %4438, %4532 ]
  %4546 = phi float [ %4677, %4666 ], [ %4439, %4532 ]
  %4547 = phi float [ %4678, %4666 ], [ %4434, %4532 ]
  %4548 = phi float [ %4679, %4666 ], [ %4435, %4532 ]
  %4549 = phi float [ %4680, %4666 ], [ %4436, %4532 ]
  %4550 = phi float [ %4681, %4666 ], [ %4475, %4532 ]
  %4551 = phi float [ %4682, %4666 ], [ %4476, %4532 ]
  %4552 = phi float [ %4683, %4666 ], [ %4477, %4532 ]
  %4553 = phi float [ %4684, %4666 ], [ %4445, %4532 ]
  %4554 = phi float [ %4685, %4666 ], [ %4444, %4532 ]
  %4555 = phi float [ %4686, %4666 ], [ 0.000000e+00, %4532 ]
  %4556 = phi float [ %4687, %4666 ], [ %4443, %4532 ]
  %4557 = phi float [ %4688, %4666 ], [ %4431, %4532 ]
  %4558 = phi float [ %4689, %4666 ], [ %4432, %4532 ]
  %4559 = phi float [ %4690, %4666 ], [ %4433, %4532 ]
  %4560 = add nuw nsw i32 %4535, %4530
  %4561 = shl i32 %4560, 2
  %4562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4561, i32 undef)  ; BufferLoad(srv,index,wot)
  %4563 = extractvalue %dx.types.ResRet.i32 %4562, 0
  %4564 = shl i32 %4563, 8
  %4565 = or i32 %4564, 48
  %4566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4565, i32 undef)  ; BufferLoad(srv,index,wot)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = extractvalue %dx.types.ResRet.f32 %4566, 1
  %4569 = extractvalue %dx.types.ResRet.f32 %4566, 2
  %4570 = extractvalue %dx.types.ResRet.f32 %4566, 3
  %4571 = or i32 %4564, 64
  %4572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4571, i32 undef)  ; BufferLoad(srv,index,wot)
  %4573 = extractvalue %dx.types.ResRet.i32 %4572, 0
  %4574 = extractvalue %dx.types.ResRet.i32 %4572, 1
  %4575 = or i32 %4564, 80
  %4576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4575, i32 undef)  ; BufferLoad(srv,index,wot)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 2
  %4578 = extractvalue %dx.types.ResRet.f32 %4576, 3
  %4579 = or i32 %4564, 96
  %4580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4579, i32 undef)  ; BufferLoad(srv,index,wot)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4582 = extractvalue %dx.types.ResRet.f32 %4580, 1
  %4583 = extractvalue %dx.types.ResRet.f32 %4580, 2
  %4584 = extractvalue %dx.types.ResRet.f32 %4580, 3
  %4585 = or i32 %4564, 112
  %4586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4585, i32 undef)  ; BufferLoad(srv,index,wot)
  %4587 = extractvalue %dx.types.ResRet.f32 %4586, 2
  %4588 = or i32 %4564, 128
  %4589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4588, i32 undef)  ; BufferLoad(srv,index,wot)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = extractvalue %dx.types.ResRet.f32 %4589, 1
  %4592 = extractvalue %dx.types.ResRet.f32 %4589, 2
  %4593 = extractvalue %dx.types.ResRet.f32 %4589, 3
  %4594 = or i32 %4564, 144
  %4595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4594, i32 undef)  ; BufferLoad(srv,index,wot)
  %4596 = extractvalue %dx.types.ResRet.f32 %4595, 0
  %4597 = extractvalue %dx.types.ResRet.f32 %4595, 1
  %4598 = extractvalue %dx.types.ResRet.f32 %4595, 2
  %4599 = extractvalue %dx.types.ResRet.f32 %4595, 3
  %4600 = or i32 %4564, 160
  %4601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.ResRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.ResRet.f32 %4601, 2
  %4605 = extractvalue %dx.types.ResRet.f32 %4601, 3
  %4606 = or i32 %4564, 192
  %4607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4606, i32 undef)  ; BufferLoad(srv,index,wot)
  %4608 = extractvalue %dx.types.ResRet.i32 %4607, 0
  %4609 = or i32 %4564, 208
  %4610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4609, i32 undef)  ; BufferLoad(srv,index,wot)
  %4611 = extractvalue %dx.types.ResRet.f32 %4610, 0
  %4612 = or i32 %4564, 248
  %4613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4612, i32 undef)  ; BufferLoad(srv,index,wot)
  %4614 = extractvalue %dx.types.ResRet.f32 %4613, 0
  %4615 = extractvalue %dx.types.ResRet.f32 %4613, 1
  %4616 = add nuw nsw i32 %4535, 1
  %4617 = bitcast float %4570 to i32
  %4618 = and i32 %4617, 512
  %4619 = icmp eq i32 %4618, 0
  %4620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4564, i32 undef)  ; BufferLoad(srv,index,wot)
  %4621 = extractvalue %dx.types.ResRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.ResRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.ResRet.f32 %4620, 2
  %4624 = extractvalue %dx.types.ResRet.f32 %4620, 3
  %4625 = call float @dx.op.dot4.f32(i32 56, float %4621, float %4622, float %4623, float %4624, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4626 = or i32 %4564, 16
  %4627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4626, i32 undef)  ; BufferLoad(srv,index,wot)
  %4628 = extractvalue %dx.types.ResRet.f32 %4627, 0
  %4629 = extractvalue %dx.types.ResRet.f32 %4627, 1
  %4630 = extractvalue %dx.types.ResRet.f32 %4627, 2
  %4631 = extractvalue %dx.types.ResRet.f32 %4627, 3
  %4632 = call float @dx.op.dot4.f32(i32 56, float %4628, float %4629, float %4630, float %4631, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4633 = or i32 %4564, 32
  %4634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4633, i32 undef)  ; BufferLoad(srv,index,wot)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = extractvalue %dx.types.ResRet.f32 %4634, 1
  %4637 = extractvalue %dx.types.ResRet.f32 %4634, 2
  %4638 = extractvalue %dx.types.ResRet.f32 %4634, 3
  %4639 = call float @dx.op.dot4.f32(i32 56, float %4635, float %4636, float %4637, float %4638, float %152, float %153, float %154, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4640 = call float @dx.op.unary.f32(i32 27, float %4625)  ; Round_ni(value)
  %4641 = call float @dx.op.unary.f32(i32 6, float %4640)  ; FAbs(value)
  %4642 = call float @dx.op.unary.f32(i32 27, float %4632)  ; Round_ni(value)
  %4643 = call float @dx.op.unary.f32(i32 6, float %4642)  ; FAbs(value)
  %4644 = call float @dx.op.unary.f32(i32 6, float %4639)  ; FAbs(value)
  %4645 = call float @dx.op.unary.f32(i32 27, float %4644)  ; Round_ni(value)
  %4646 = fadd fast float %4643, %4641
  %4647 = fadd fast float %4646, %4645
  %4648 = fcmp fast oeq float %4647, 0.000000e+00
  %4649 = call float @dx.op.dot4.f32(i32 56, float %4621, float %4622, float %4623, float %4624, float %4487, float %4488, float %4489, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4650 = call float @dx.op.dot4.f32(i32 56, float %4628, float %4629, float %4630, float %4631, float %4487, float %4488, float %4489, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4651 = call float @dx.op.dot4.f32(i32 56, float %4621, float %4622, float %4623, float %4624, float %4490, float %4491, float %4492, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4652 = call float @dx.op.dot4.f32(i32 56, float %4628, float %4629, float %4630, float %4631, float %4490, float %4491, float %4492, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4653 = fsub fast float %4649, %4625
  %4654 = fsub fast float %4651, %4625
  %4655 = fsub fast float %4650, %4632
  %4656 = fsub fast float %4652, %4632
  %4657 = call float @dx.op.dot3.f32(i32 55, float %4567, float %4568, float %4569, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4659 = extractvalue %dx.types.CBufRet.f32 %4658, 2
  %4660 = fadd fast float %4659, %4657
  %4661 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4662 = extractvalue %dx.types.CBufRet.f32 %4658, 0
  %4663 = fcmp fast ogt float %4661, %4662
  %4664 = and i1 %4648, %4663
  %4665 = and i1 %4619, %4664
  br i1 %4665, label %4692, label %4666

; <label>:4666                                    ; preds = %5021, %4773, %4692, %4534
  %4667 = phi float [ %4536, %4692 ], [ %4776, %4773 ], [ %4776, %5021 ], [ %4536, %4534 ]
  %4668 = phi float [ %4537, %4692 ], [ %4537, %4773 ], [ %4997, %5021 ], [ %4537, %4534 ]
  %4669 = phi float [ %4538, %4692 ], [ %4538, %4773 ], [ %4995, %5021 ], [ %4538, %4534 ]
  %4670 = phi float [ %4539, %4692 ], [ %4539, %4773 ], [ %4973, %5021 ], [ %4539, %4534 ]
  %4671 = phi float [ %4540, %4692 ], [ %4540, %4773 ], [ %4974, %5021 ], [ %4540, %4534 ]
  %4672 = phi float [ %4541, %4692 ], [ %4541, %4773 ], [ %4975, %5021 ], [ %4541, %4534 ]
  %4673 = phi float [ %4542, %4692 ], [ %4542, %4773 ], [ %4900, %5021 ], [ %4542, %4534 ]
  %4674 = phi float [ %4543, %4692 ], [ %4543, %4773 ], [ %4898, %5021 ], [ %4543, %4534 ]
  %4675 = phi float [ %4544, %4692 ], [ %4544, %4773 ], [ %4943, %5021 ], [ %4544, %4534 ]
  %4676 = phi float [ %4545, %4692 ], [ %4545, %4773 ], [ %4944, %5021 ], [ %4545, %4534 ]
  %4677 = phi float [ %4546, %4692 ], [ %4546, %4773 ], [ %4945, %5021 ], [ %4546, %4534 ]
  %4678 = phi float [ %4547, %4692 ], [ %4547, %4773 ], [ %5031, %5021 ], [ %4547, %4534 ]
  %4679 = phi float [ %4548, %4692 ], [ %4548, %4773 ], [ %5032, %5021 ], [ %4548, %4534 ]
  %4680 = phi float [ %4549, %4692 ], [ %4549, %4773 ], [ %5033, %5021 ], [ %4549, %4534 ]
  %4681 = phi float [ %4550, %4692 ], [ %4550, %4773 ], [ %4879, %5021 ], [ %4550, %4534 ]
  %4682 = phi float [ %4551, %4692 ], [ %4551, %4773 ], [ %4880, %5021 ], [ %4551, %4534 ]
  %4683 = phi float [ %4552, %4692 ], [ %4552, %4773 ], [ %4881, %5021 ], [ %4552, %4534 ]
  %4684 = phi float [ %4553, %4692 ], [ %4553, %4773 ], [ %4953, %5021 ], [ %4553, %4534 ]
  %4685 = phi float [ %4554, %4692 ], [ %4554, %4773 ], [ %4950, %5021 ], [ %4554, %4534 ]
  %4686 = phi float [ %4555, %4692 ], [ %4555, %4773 ], [ %4947, %5021 ], [ %4555, %4534 ]
  %4687 = phi float [ %4556, %4692 ], [ %4556, %4773 ], [ %4896, %5021 ], [ %4556, %4534 ]
  %4688 = phi float [ %4557, %4692 ], [ %4557, %4773 ], [ %4891, %5021 ], [ %4557, %4534 ]
  %4689 = phi float [ %4558, %4692 ], [ %4558, %4773 ], [ %4892, %5021 ], [ %4558, %4534 ]
  %4690 = phi float [ %4559, %4692 ], [ %4559, %4773 ], [ %4893, %5021 ], [ %4559, %4534 ]
  %4691 = icmp eq i32 %4616, %4533
  br i1 %4691, label %5034, label %4534

; <label>:4692                                    ; preds = %4534
  %4693 = extractvalue %dx.types.ResRet.f32 %4586, 3
  %4694 = extractvalue %dx.types.ResRet.f32 %4586, 1
  %4695 = extractvalue %dx.types.ResRet.f32 %4586, 0
  %4696 = extractvalue %dx.types.ResRet.f32 %4576, 1
  %4697 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4698 = extractvalue %dx.types.ResRet.i32 %4572, 3
  %4699 = extractvalue %dx.types.ResRet.i32 %4572, 2
  %4700 = add i32 %4698, 0
  %4701 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4700, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4702 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4703 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4701, %dx.types.Handle %4702, float %4625, float %4632, float undef, float undef, i32 0, i32 0, i32 undef, float %4653, float %4655, float undef, float %4654, float %4656, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4704 = extractvalue %dx.types.ResRet.f32 %4703, 0
  %4705 = fmul fast float %4704, %4697
  %4706 = fadd fast float %4705, %4696
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = fmul fast float %4625, %4581
  %4709 = call float @dx.op.tertiary.f32(i32 46, float %4582, float %4632, float %4708)  ; FMad(a,b,c)
  %4710 = fadd fast float %4709, %4695
  %4711 = fmul fast float %4625, %4583
  %4712 = call float @dx.op.tertiary.f32(i32 46, float %4584, float %4632, float %4711)  ; FMad(a,b,c)
  %4713 = fadd fast float %4712, %4694
  %4714 = fmul fast float %4653, %4581
  %4715 = call float @dx.op.tertiary.f32(i32 46, float %4582, float %4655, float %4714)  ; FMad(a,b,c)
  %4716 = fmul fast float %4653, %4583
  %4717 = call float @dx.op.tertiary.f32(i32 46, float %4584, float %4655, float %4716)  ; FMad(a,b,c)
  %4718 = fmul fast float %4654, %4581
  %4719 = call float @dx.op.tertiary.f32(i32 46, float %4582, float %4656, float %4718)  ; FMad(a,b,c)
  %4720 = fmul fast float %4654, %4583
  %4721 = call float @dx.op.tertiary.f32(i32 46, float %4584, float %4656, float %4720)  ; FMad(a,b,c)
  %4722 = add i32 %4699, 0
  %4723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4722, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4724 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4723, %dx.types.Handle %4702, float %4710, float %4713, float undef, float undef, i32 0, i32 0, i32 undef, float %4715, float %4717, float undef, float %4719, float %4721, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4725 = extractvalue %dx.types.ResRet.f32 %4724, 0
  %4726 = and i32 %4617, 1024
  %4727 = icmp ne i32 %4726, 0
  %4728 = fcmp fast ogt float %4725, 0x3FE0101020000000
  %4729 = uitofp i1 %4728 to float
  %4730 = select i1 %4727, float %4729, float %4725
  %4731 = and i32 %4617, 8192
  %4732 = icmp ne i32 %4731, 0
  %4733 = select i1 %4732, float %4693, float 1.000000e+00
  %4734 = fmul fast float %4625, 2.000000e+00
  %4735 = fadd fast float %4734, -1.000000e+00
  %4736 = call float @dx.op.unary.f32(i32 6, float %4735)  ; FAbs(value)
  %4737 = fmul fast float %4736, %4614
  %4738 = fsub fast float %4737, %4614
  %4739 = call float @dx.op.unary.f32(i32 7, float %4738)  ; Saturate(value)
  %4740 = fmul fast float %4632, 2.000000e+00
  %4741 = fadd fast float %4740, -1.000000e+00
  %4742 = call float @dx.op.unary.f32(i32 6, float %4741)  ; FAbs(value)
  %4743 = fmul fast float %4742, %4615
  %4744 = fsub fast float %4743, %4615
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4644, %4577
  %4747 = fsub fast float %4746, %4577
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4749 = fmul fast float %4707, %4733
  %4750 = fmul fast float %4749, %4704
  %4751 = fmul fast float %4750, %4739
  %4752 = fmul fast float %4751, %4730
  %4753 = fmul fast float %4752, %4745
  %4754 = fmul fast float %4753, %4748
  %4755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4756 = extractvalue %dx.types.CBufRet.f32 %4755, 1
  %4757 = extractvalue %dx.types.CBufRet.f32 %4755, 0
  %4758 = fsub fast float %4661, %4757
  %4759 = fmul fast float %4758, %4756
  %4760 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4761 = fmul fast float %4754, %4578
  %4762 = fadd fast float %4754, %4578
  %4763 = fmul fast float %4762, %4587
  %4764 = fsub fast float %4763, %4587
  %4765 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4766 = and i32 %4617, 128
  %4767 = icmp ne i32 %4766, 0
  %4768 = select i1 %4767, float %4765, float %4761
  %4769 = fmul fast float %4768, %4760
  %4770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4770, 0
  %4772 = fcmp fast ugt float %4769, %4771
  br i1 %4772, label %4773, label %4666

; <label>:4773                                    ; preds = %4692
  %4774 = select i1 %4732, float %4769, float 0.000000e+00
  %4775 = fadd fast float %4774, %4536
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  br i1 %4732, label %4666, label %4777

; <label>:4777                                    ; preds = %4773
  %4778 = and i32 %4617, 4
  %4779 = and i32 %4617, 8
  %4780 = add i32 %4573, 0
  %4781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4780, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4783 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4781, %dx.types.Handle %4782, float %4710, float %4713, float undef, float undef, i32 0, i32 0, i32 undef, float %4715, float %4717, float undef, float %4719, float %4721, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4784 = extractvalue %dx.types.ResRet.f32 %4783, 0
  %4785 = extractvalue %dx.types.ResRet.f32 %4783, 1
  %4786 = extractvalue %dx.types.ResRet.f32 %4783, 2
  %4787 = extractvalue %dx.types.ResRet.f32 %4783, 3
  %4788 = bitcast float %4599 to i32
  %4789 = and i32 %4788, 255
  %4790 = uitofp i32 %4789 to float
  %4791 = lshr i32 %4788, 8
  %4792 = and i32 %4791, 255
  %4793 = uitofp i32 %4792 to float
  %4794 = fmul fast float %4787, %4790
  %4795 = fadd fast float %4794, %4793
  %4796 = fmul fast float %4795, 0x3F70101000000000
  %4797 = add i32 %4574, 0
  %4798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4797, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4799 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4798, %dx.types.Handle %4782, float %4710, float %4713, float undef, float undef, i32 0, i32 0, i32 undef, float %4715, float %4717, float undef, float %4719, float %4721, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4800 = extractvalue %dx.types.ResRet.f32 %4799, 0
  %4801 = extractvalue %dx.types.ResRet.f32 %4799, 1
  %4802 = extractvalue %dx.types.ResRet.f32 %4799, 2
  %4803 = extractvalue %dx.types.ResRet.f32 %4799, 3
  %4804 = bitcast float %4593 to i32
  %4805 = and i32 %4804, 255
  %4806 = uitofp i32 %4805 to float
  %4807 = lshr i32 %4804, 8
  %4808 = and i32 %4807, 255
  %4809 = uitofp i32 %4808 to float
  %4810 = lshr i32 %4804, 16
  %4811 = and i32 %4810, 255
  %4812 = uitofp i32 %4811 to float
  %4813 = fmul fast float %4812, 0x3F70101000000000
  %4814 = fmul fast float %4800, %4806
  %4815 = fadd fast float %4814, %4809
  %4816 = fmul fast float %4815, 0x3F70101000000000
  %4817 = fadd fast float %4801, -5.000000e-01
  %4818 = fadd fast float %4803, -5.000000e-01
  %4819 = fmul fast float %4817, %4813
  %4820 = fmul fast float %4818, %4813
  %4821 = fadd fast float %4819, 5.000000e-01
  %4822 = fadd fast float %4820, 5.000000e-01
  %4823 = fmul fast float %4784, %4602
  %4824 = fmul fast float %4785, %4603
  %4825 = fmul fast float %4786, %4604
  %4826 = fmul fast float %4821, 2.000000e+00
  %4827 = fadd fast float %4826, -1.000000e+00
  %4828 = fmul fast float %4822, 2.000000e+00
  %4829 = fadd fast float %4828, -1.000000e+00
  %4830 = fadd fast float %4827, %4829
  %4831 = fmul fast float %4830, 5.000000e-01
  %4832 = fsub fast float %4827, %4829
  %4833 = fmul fast float %4832, 5.000000e-01
  %4834 = call float @dx.op.unary.f32(i32 6, float %4831)  ; FAbs(value)
  %4835 = fsub fast float 1.000000e+00, %4834
  %4836 = call float @dx.op.unary.f32(i32 6, float %4833)  ; FAbs(value)
  %4837 = fsub fast float %4835, %4836
  %4838 = call float @dx.op.dot3.f32(i32 55, float %4831, float %4833, float %4837, float %4831, float %4833, float %4837)  ; Dot3(ax,ay,az,bx,by,bz)
  %4839 = call float @dx.op.unary.f32(i32 25, float %4838)  ; Rsqrt(value)
  %4840 = fmul fast float %4831, %4839
  %4841 = fmul fast float %4833, %4839
  %4842 = fmul fast float %4839, %4837
  %4843 = fmul fast float %4842, %4567
  %4844 = fmul fast float %4842, %4568
  %4845 = fmul fast float %4842, %4569
  %4846 = fmul fast float %4840, %4590
  %4847 = fmul fast float %4840, %4591
  %4848 = fmul fast float %4840, %4592
  %4849 = fadd fast float %4846, %4843
  %4850 = fadd fast float %4847, %4844
  %4851 = fadd fast float %4848, %4845
  %4852 = fmul fast float %4841, %4596
  %4853 = fmul fast float %4841, %4597
  %4854 = fmul fast float %4841, %4598
  %4855 = fadd fast float %4849, %4852
  %4856 = fadd fast float %4850, %4853
  %4857 = fadd fast float %4851, %4854
  %4858 = call float @dx.op.dot3.f32(i32 55, float %4855, float %4856, float %4857, float %4855, float %4856, float %4857)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = call float @dx.op.unary.f32(i32 25, float %4858)  ; Rsqrt(value)
  %4860 = fmul fast float %4855, %4859
  %4861 = fmul fast float %4856, %4859
  %4862 = fmul fast float %4857, %4859
  %4863 = icmp ne i32 %4779, 0
  %4864 = select i1 %4863, float 1.000000e+00, float 0.000000e+00
  %4865 = fmul fast float %4769, %4864
  %4866 = and i32 %4617, 1
  %4867 = icmp eq i32 %4866, 0
  br i1 %4867, label %4868, label %4872

; <label>:4868                                    ; preds = %4777
  %4869 = fsub fast float %4860, %4550
  %4870 = fsub fast float %4861, %4551
  %4871 = fsub fast float %4862, %4552
  br label %4872

; <label>:4872                                    ; preds = %4868, %4777
  %4873 = phi float [ %4869, %4868 ], [ %4860, %4777 ]
  %4874 = phi float [ %4870, %4868 ], [ %4861, %4777 ]
  %4875 = phi float [ %4871, %4868 ], [ %4862, %4777 ]
  %4876 = fmul float %4875, %4865
  %4877 = fmul float %4874, %4865
  %4878 = fmul float %4873, %4865
  %4879 = fadd fast float %4878, %4550
  %4880 = fadd fast float %4877, %4551
  %4881 = fadd fast float %4876, %4552
  %4882 = icmp ne i32 %4778, 0
  %4883 = select i1 %4882, float 1.000000e+00, float 0.000000e+00
  %4884 = fmul fast float %4769, %4883
  %4885 = fsub fast float %4823, %4557
  %4886 = fsub fast float %4824, %4558
  %4887 = fsub fast float %4825, %4559
  %4888 = fmul fast float %4885, %4884
  %4889 = fmul fast float %4886, %4884
  %4890 = fmul fast float %4887, %4884
  %4891 = fadd fast float %4888, %4557
  %4892 = fadd fast float %4889, %4558
  %4893 = fadd fast float %4890, %4559
  %4894 = fsub fast float %4796, %4556
  %4895 = fmul fast float %4894, %4884
  %4896 = fadd fast float %4895, %4556
  %4897 = fmul fast float %4884, %4543
  %4898 = fsub fast float %4543, %4897
  %4899 = fmul fast float %4884, %4542
  %4900 = fsub fast float %4542, %4899
  %4901 = bitcast float %4611 to i32
  %4902 = lshr i32 %4901, 16
  %4903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4902)  ; LegacyF16ToF32(value)
  %4904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %4905 = extractvalue %dx.types.ResRet.i32 %4904, 0
  %4906 = and i32 %4905, 1
  %4907 = icmp eq i32 %4906, 0
  br i1 %4907, label %4908, label %4933

; <label>:4908                                    ; preds = %4872
  %4909 = fadd fast float %4796, 0xBFB99999A0000000
  %4910 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4911 = fmul fast float %4910, 0x3FF1C71C80000000
  %4912 = fsub fast float 1.000000e+00, %4911
  %4913 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4914 = fmul fast float %4913, %4823
  %4915 = fmul fast float %4913, %4824
  %4916 = fmul fast float %4913, %4825
  %4917 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4918 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4919 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4920 = call float @dx.op.binary.f32(i32 35, float %4918, float %4919)  ; FMax(a,b)
  %4921 = call float @dx.op.binary.f32(i32 35, float %4917, float %4920)  ; FMax(a,b)
  %4922 = fcmp fast ogt float %4921, 0.000000e+00
  %4923 = bitcast float %4921 to i32
  %4924 = sub nsw i32 2129859010, %4923
  %4925 = bitcast i32 %4924 to float
  %4926 = select i1 %4922, float %4925, float 0.000000e+00
  %4927 = fmul fast float %4917, %4903
  %4928 = fmul fast float %4918, %4903
  %4929 = fmul fast float %4919, %4903
  %4930 = fmul fast float %4927, %4926
  %4931 = fmul fast float %4928, %4926
  %4932 = fmul fast float %4929, %4926
  br label %4933

; <label>:4933                                    ; preds = %4908, %4872
  %4934 = phi float [ %4903, %4872 ], [ %4930, %4908 ]
  %4935 = phi float [ %4903, %4872 ], [ %4931, %4908 ]
  %4936 = phi float [ %4903, %4872 ], [ %4932, %4908 ]
  %4937 = fsub fast float %4934, %4544
  %4938 = fsub fast float %4935, %4545
  %4939 = fsub fast float %4936, %4546
  %4940 = fmul fast float %4937, %4884
  %4941 = fmul fast float %4938, %4884
  %4942 = fmul fast float %4939, %4884
  %4943 = fadd fast float %4940, %4544
  %4944 = fadd fast float %4941, %4545
  %4945 = fadd fast float %4942, %4546
  %4946 = fadd fast float %4769, %4555
  %4947 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4948 = fsub fast float %4816, %4554
  %4949 = fmul fast float %4948, %4865
  %4950 = fadd fast float %4949, %4554
  %4951 = fsub fast float %4802, %4553
  %4952 = fmul fast float %4951, %4865
  %4953 = fadd fast float %4952, %4553
  br i1 %4867, label %4962, label %4954

; <label>:4954                                    ; preds = %4933
  %4955 = and i32 %4617, 32768
  %4956 = icmp eq i32 %4955, 0
  br i1 %4956, label %4972, label %4957

; <label>:4957                                    ; preds = %4954
  %4958 = fmul fast float %4865, 1.270000e+02
  %4959 = fadd fast float %4958, %4539
  %4960 = fadd fast float %4958, %4540
  %4961 = fadd fast float %4958, %4541
  br label %4972

; <label>:4962                                    ; preds = %4933
  %4963 = fsub fast float 1.270000e+02, %4539
  %4964 = fsub fast float 1.270000e+02, %4540
  %4965 = fsub fast float 1.270000e+02, %4541
  %4966 = fmul fast float %4865, %4963
  %4967 = fmul fast float %4865, %4964
  %4968 = fmul fast float %4865, %4965
  %4969 = fadd fast float %4966, %4539
  %4970 = fadd fast float %4967, %4540
  %4971 = fadd fast float %4968, %4541
  br label %4972

; <label>:4972                                    ; preds = %4962, %4957, %4954
  %4973 = phi float [ %4959, %4957 ], [ %4539, %4954 ], [ %4969, %4962 ]
  %4974 = phi float [ %4960, %4957 ], [ %4540, %4954 ], [ %4970, %4962 ]
  %4975 = phi float [ %4961, %4957 ], [ %4541, %4954 ], [ %4971, %4962 ]
  %4976 = call float @dx.op.dot3.f32(i32 55, float %4823, float %4824, float %4825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4978 = extractvalue %dx.types.CBufRet.f32 %4977, 0
  %4979 = extractvalue %dx.types.CBufRet.f32 %4977, 1
  %4980 = fmul fast float %4979, %4976
  %4981 = fadd fast float %4980, %4978
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = bitcast float %4605 to i32
  %4984 = and i32 %4983, 65535
  %4985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4984)  ; LegacyF16ToF32(value)
  %4986 = lshr i32 %4983, 16
  %4987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4986)  ; LegacyF16ToF32(value)
  %4988 = fcmp fast oge float %4985, 0.000000e+00
  %4989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.f32 %4989, 0
  %4991 = select i1 %4988, float %4985, float %4990
  %4992 = fadd fast float %4991, %4987
  %4993 = fsub fast float %4982, %4538
  %4994 = fmul fast float %4993, %4769
  %4995 = fadd fast float %4994, %4538
  %4996 = fmul fast float %4992, %4769
  %4997 = call float @dx.op.binary.f32(i32 35, float %4537, float %4996)  ; FMax(a,b)
  %4998 = and i32 %4617, 16
  %4999 = icmp eq i32 %4998, 0
  br i1 %4999, label %5021, label %5000

; <label>:5000                                    ; preds = %4972
  %5001 = add i32 %4608, 0
  %5002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5001, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5003 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5002, %dx.types.Handle %4782, float %4710, float %4713, float undef, float undef, i32 0, i32 0, i32 undef, float %4715, float %4717, float undef, float %4719, float %4721, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5004 = extractvalue %dx.types.ResRet.f32 %5003, 0
  %5005 = extractvalue %dx.types.ResRet.f32 %5003, 1
  %5006 = extractvalue %dx.types.ResRet.f32 %5003, 2
  %5007 = and i32 %4901, 65535
  %5008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5007)  ; LegacyF16ToF32(value)
  %5009 = fmul fast float %5004, %4602
  %5010 = fmul fast float %5005, %4603
  %5011 = fmul fast float %5006, %4604
  %5012 = and i32 %4617, 16384
  %5013 = icmp ne i32 %5012, 0
  %5014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.f32 %5014, 0
  %5016 = select i1 %5013, float %5015, float 1.000000e+00
  %5017 = fmul fast float %5016, %5008
  %5018 = fmul fast float %5009, %5017
  %5019 = fmul fast float %5010, %5017
  %5020 = fmul fast float %5011, %5017
  br label %5021

; <label>:5021                                    ; preds = %5000, %4972
  %5022 = phi float [ %5018, %5000 ], [ 0.000000e+00, %4972 ]
  %5023 = phi float [ %5019, %5000 ], [ 0.000000e+00, %4972 ]
  %5024 = phi float [ %5020, %5000 ], [ 0.000000e+00, %4972 ]
  %5025 = fsub fast float %5022, %4547
  %5026 = fsub fast float %5023, %4548
  %5027 = fsub fast float %5024, %4549
  %5028 = fmul fast float %5025, %4769
  %5029 = fmul fast float %5026, %4769
  %5030 = fmul fast float %5027, %4769
  %5031 = fadd fast float %5028, %4547
  %5032 = fadd fast float %5029, %4548
  %5033 = fadd fast float %5030, %4549
  br label %4666

; <label>:5034                                    ; preds = %4666
  br label %5035

; <label>:5035                                    ; preds = %5034, %4480
  %5036 = phi float [ 0.000000e+00, %4480 ], [ %4667, %5034 ]
  %5037 = phi float [ %4449, %4480 ], [ %4668, %5034 ]
  %5038 = phi float [ %4447, %4480 ], [ %4669, %5034 ]
  %5039 = phi float [ %4440, %4480 ], [ %4670, %5034 ]
  %5040 = phi float [ %4441, %4480 ], [ %4671, %5034 ]
  %5041 = phi float [ %4442, %4480 ], [ %4672, %5034 ]
  %5042 = phi float [ 0.000000e+00, %4480 ], [ %4673, %5034 ]
  %5043 = phi float [ 0.000000e+00, %4480 ], [ %4674, %5034 ]
  %5044 = phi float [ %4437, %4480 ], [ %4675, %5034 ]
  %5045 = phi float [ %4438, %4480 ], [ %4676, %5034 ]
  %5046 = phi float [ %4439, %4480 ], [ %4677, %5034 ]
  %5047 = phi float [ %4434, %4480 ], [ %4678, %5034 ]
  %5048 = phi float [ %4435, %4480 ], [ %4679, %5034 ]
  %5049 = phi float [ %4436, %4480 ], [ %4680, %5034 ]
  %5050 = phi float [ %4475, %4480 ], [ %4681, %5034 ]
  %5051 = phi float [ %4476, %4480 ], [ %4682, %5034 ]
  %5052 = phi float [ %4477, %4480 ], [ %4683, %5034 ]
  %5053 = phi float [ %4445, %4480 ], [ %4684, %5034 ]
  %5054 = phi float [ %4444, %4480 ], [ %4685, %5034 ]
  %5055 = phi float [ 0.000000e+00, %4480 ], [ %4686, %5034 ]
  %5056 = phi float [ %4443, %4480 ], [ %4687, %5034 ]
  %5057 = phi float [ %4431, %4480 ], [ %4688, %5034 ]
  %5058 = phi float [ %4432, %4480 ], [ %4689, %5034 ]
  %5059 = phi float [ %4433, %4480 ], [ %4690, %5034 ]
  %5060 = call float @dx.op.dot3.f32(i32 55, float %5050, float %5051, float %5052, float %5050, float %5051, float %5052)  ; Dot3(ax,ay,az,bx,by,bz)
  %5061 = call float @dx.op.unary.f32(i32 25, float %5060)  ; Rsqrt(value)
  %5062 = fmul fast float %5061, %5050
  %5063 = fmul fast float %5061, %5051
  %5064 = fmul fast float %5061, %5052
  %5065 = fadd fast float %5055, %1272
  %5066 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5067 = call float @dx.op.dot3.f32(i32 55, float %5062, float %5063, float %5064, float %5062, float %5063, float %5064)  ; Dot3(ax,ay,az,bx,by,bz)
  %5068 = call float @dx.op.unary.f32(i32 25, float %5067)  ; Rsqrt(value)
  %5069 = fmul fast float %5068, %5062
  %5070 = fmul fast float %5068, %5063
  %5071 = fmul fast float %5068, %5064
  br label %5072

; <label>:5072                                    ; preds = %5035, %4428
  %5073 = phi float [ %5069, %5035 ], [ %4475, %4428 ]
  %5074 = phi float [ %5070, %5035 ], [ %4476, %4428 ]
  %5075 = phi float [ %5071, %5035 ], [ %4477, %4428 ]
  %5076 = phi float [ %5047, %5035 ], [ %4434, %4428 ]
  %5077 = phi float [ %5048, %5035 ], [ %4435, %4428 ]
  %5078 = phi float [ %5049, %5035 ], [ %4436, %4428 ]
  %5079 = phi float [ %5039, %5035 ], [ %4440, %4428 ]
  %5080 = phi float [ %5040, %5035 ], [ %4441, %4428 ]
  %5081 = phi float [ %5041, %5035 ], [ %4442, %4428 ]
  %5082 = phi float [ %5044, %5035 ], [ %4437, %4428 ]
  %5083 = phi float [ %5045, %5035 ], [ %4438, %4428 ]
  %5084 = phi float [ %5046, %5035 ], [ %4439, %4428 ]
  %5085 = phi float [ %5057, %5035 ], [ %4431, %4428 ]
  %5086 = phi float [ %5058, %5035 ], [ %4432, %4428 ]
  %5087 = phi float [ %5059, %5035 ], [ %4433, %4428 ]
  %5088 = phi float [ %5056, %5035 ], [ %4443, %4428 ]
  %5089 = phi float [ %5066, %5035 ], [ %1272, %4428 ]
  %5090 = phi float [ %5054, %5035 ], [ %4444, %4428 ]
  %5091 = phi float [ %5053, %5035 ], [ %4445, %4428 ]
  %5092 = phi float [ %5043, %5035 ], [ 0.000000e+00, %4428 ]
  %5093 = phi float [ %5042, %5035 ], [ 0.000000e+00, %4428 ]
  %5094 = phi float [ %5036, %5035 ], [ 0.000000e+00, %4428 ]
  %5095 = phi float [ %5037, %5035 ], [ %4449, %4428 ]
  %5096 = phi float [ %5038, %5035 ], [ %4447, %4428 ]
  %5097 = add i32 %48, 392
  %5098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %5097, i32 undef)  ; BufferLoad(srv,index,wot)
  %5099 = extractvalue %dx.types.ResRet.i32 %5098, 0
  %5100 = extractvalue %dx.types.ResRet.i32 %5098, 1
  %5101 = extractvalue %dx.types.ResRet.i32 %5098, 2
  %5102 = extractvalue %dx.types.ResRet.i32 %5098, 3
  %5103 = bitcast i32 %5099 to float
  %5104 = bitcast i32 %5100 to float
  %5105 = bitcast i32 %5101 to float
  %5106 = bitcast i32 %5102 to float
  %5107 = fsub fast float %5085, %5103
  %5108 = fsub fast float %5086, %5104
  %5109 = fsub fast float %5087, %5105
  %5110 = fmul fast float %5107, %186
  %5111 = fmul fast float %5108, %186
  %5112 = fmul fast float %5109, %186
  %5113 = fadd fast float %5110, %5103
  %5114 = fadd fast float %5111, %5104
  %5115 = fadd fast float %5112, %5105
  %5116 = fsub fast float %5089, %5106
  %5117 = fmul fast float %5116, %186
  %5118 = fadd fast float %5117, %5106
  %5119 = fadd fast float %5088, 0xBFB99999A0000000
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = fmul fast float %5120, 0x3FF1C71C80000000
  %5122 = call float @dx.op.binary.f32(i32 36, float %5088, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5123 = fsub fast float 1.000000e+00, %5121
  %5124 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5125 = fmul fast float %5113, %5124
  %5126 = fmul fast float %5114, %5124
  %5127 = fmul fast float %5115, %5124
  %5128 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5129 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5130 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5131 = fmul fast float %5113, %5121
  %5132 = fmul fast float %5114, %5121
  %5133 = fmul fast float %5115, %5121
  %5134 = fadd fast float %5131, %5122
  %5135 = fadd fast float %5132, %5122
  %5136 = fadd fast float %5133, %5122
  %5137 = call float @dx.op.unary.f32(i32 7, float %5134)  ; Saturate(value)
  %5138 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5139 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5140 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %5142 = extractvalue %dx.types.ResRet.i32 %5141, 0
  %5143 = and i32 %5142, 1
  %5144 = icmp eq i32 %5143, 0
  br i1 %5144, label %5159, label %5145

; <label>:5145                                    ; preds = %5072
  %5146 = call float @dx.op.binary.f32(i32 35, float %5129, float %5130)  ; FMax(a,b)
  %5147 = call float @dx.op.binary.f32(i32 35, float %5128, float %5146)  ; FMax(a,b)
  %5148 = fcmp fast ogt float %5147, 0.000000e+00
  %5149 = bitcast float %5147 to i32
  %5150 = sub nsw i32 2129859010, %5149
  %5151 = bitcast i32 %5150 to float
  %5152 = select i1 %5148, float %5151, float 0.000000e+00
  %5153 = fmul fast float %5128, %5082
  %5154 = fmul fast float %5129, %5083
  %5155 = fmul fast float %5130, %5084
  %5156 = fmul fast float %5153, %5152
  %5157 = fmul fast float %5154, %5152
  %5158 = fmul fast float %5155, %5152
  br label %5159

; <label>:5159                                    ; preds = %5145, %5072
  %5160 = phi float [ %5156, %5145 ], [ %5082, %5072 ]
  %5161 = phi float [ %5157, %5145 ], [ %5083, %5072 ]
  %5162 = phi float [ %5158, %5145 ], [ %5084, %5072 ]
  %5163 = call float @dx.op.binary.f32(i32 36, float %5079, float 1.270000e+02)  ; FMin(a,b)
  %5164 = call float @dx.op.binary.f32(i32 36, float %5080, float 1.270000e+02)  ; FMin(a,b)
  %5165 = call float @dx.op.binary.f32(i32 36, float %5081, float 1.270000e+02)  ; FMin(a,b)
  %5166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.i32 %5166, 3
  %5168 = and i32 %5167, 8
  %5169 = icmp ne i32 %5168, 0
  %5170 = call float @dx.op.binary.f32(i32 35, float %5128, float %5113)  ; FMax(a,b)
  %5171 = call float @dx.op.binary.f32(i32 35, float %5129, float %5113)  ; FMax(a,b)
  %5172 = call float @dx.op.binary.f32(i32 35, float %5130, float %5113)  ; FMax(a,b)
  %5173 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5129, float %5130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = select i1 %245, float %5113, float %5128
  %5175 = select i1 %245, float %5173, float %5129
  %5176 = select i1 %245, float 1.000000e+00, float %5130
  %5177 = select i1 %5169, float %5170, float %5174
  %5178 = select i1 %5169, float %5171, float %5175
  %5179 = select i1 %5169, float %5172, float %5176
  %5180 = call float @dx.op.dot3.f32(i32 55, float %5160, float %5161, float %5162, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5181 = select i1 %245, float %5180, float %5160
  %5182 = select i1 %245, float %5180, float %5161
  %5183 = select i1 %245, float %5180, float %5162
  %5184 = and i32 %221, 3
  %5185 = select i1 %215, i32 %5184, i32 0
  %5186 = icmp eq i32 %5185, 1
  br i1 %5186, label %5187, label %5263

; <label>:5187                                    ; preds = %5159
  %5188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5189 = extractvalue %dx.types.CBufRet.f32 %5188, 0
  %5190 = extractvalue %dx.types.CBufRet.f32 %5188, 1
  %5191 = fadd fast float %5189, %152
  %5192 = fadd fast float %5190, %153
  %5193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5194 = extractvalue %dx.types.CBufRet.f32 %5193, 0
  %5195 = extractvalue %dx.types.CBufRet.f32 %5193, 1
  %5196 = fsub fast float %5191, %5194
  %5197 = fsub fast float %5192, %5195
  %5198 = fmul fast float %5196, %5196
  %5199 = fmul fast float %5197, %5197
  %5200 = fadd fast float %5198, %5199
  %5201 = call float @dx.op.unary.f32(i32 24, float %5200)  ; Sqrt(value)
  %5202 = extractvalue %dx.types.CBufRet.f32 %5193, 2
  %5203 = fcmp fast olt float %5201, %5202
  br i1 %5203, label %5204, label %5257

; <label>:5204                                    ; preds = %5187
  %5205 = extractvalue %dx.types.CBufRet.f32 %5188, 2
  %5206 = fadd fast float %5205, %154
  %5207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5208 = extractvalue %dx.types.CBufRet.f32 %5207, 0
  %5209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5210 = extractvalue %dx.types.CBufRet.f32 %5209, 0
  %5211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5212 = extractvalue %dx.types.CBufRet.f32 %5211, 0
  %5213 = extractvalue %dx.types.CBufRet.f32 %5207, 1
  %5214 = extractvalue %dx.types.CBufRet.f32 %5209, 1
  %5215 = extractvalue %dx.types.CBufRet.f32 %5211, 1
  %5216 = extractvalue %dx.types.CBufRet.f32 %5207, 3
  %5217 = extractvalue %dx.types.CBufRet.f32 %5209, 3
  %5218 = extractvalue %dx.types.CBufRet.f32 %5211, 3
  %5219 = fadd fast float %5216, %5191
  %5220 = fadd fast float %5217, %5192
  %5221 = fadd fast float %5206, %5218
  %5222 = fmul fast float %5219, %5208
  %5223 = call float @dx.op.tertiary.f32(i32 46, float %5220, float %5210, float %5222)  ; FMad(a,b,c)
  %5224 = call float @dx.op.tertiary.f32(i32 46, float %5221, float %5212, float %5223)  ; FMad(a,b,c)
  %5225 = fmul fast float %5219, %5213
  %5226 = call float @dx.op.tertiary.f32(i32 46, float %5220, float %5214, float %5225)  ; FMad(a,b,c)
  %5227 = call float @dx.op.tertiary.f32(i32 46, float %5221, float %5215, float %5226)  ; FMad(a,b,c)
  %5228 = fsub fast float %5224, %5216
  %5229 = fsub fast float %5227, %5217
  %5230 = fsub fast float %5228, %5194
  %5231 = fadd fast float %5230, %5202
  %5232 = fsub fast float %5229, %5195
  %5233 = fadd fast float %5232, %5202
  %5234 = extractvalue %dx.types.CBufRet.f32 %5193, 3
  %5235 = fmul fast float %5231, %5234
  %5236 = fmul fast float %5233, %5234
  %5237 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5238 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5239 = fsub fast float 1.000000e+00, %5237
  %5240 = fsub fast float 1.000000e+00, %5238
  %5241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %42, float %5239, float %5240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 0
  %5243 = fcmp fast ugt float %5242, 0.000000e+00
  br i1 %5243, label %5244, label %5257

; <label>:5244                                    ; preds = %5204
  %5245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5245, 2
  %5247 = fmul fast float %5246, %5242
  %5248 = extractvalue %dx.types.CBufRet.f32 %5245, 3
  %5249 = fadd fast float %5248, %5247
  %5250 = extractvalue %dx.types.CBufRet.f32 %5211, 2
  %5251 = fadd fast float %5249, %5218
  %5252 = fmul fast float %5224, %5212
  %5253 = call float @dx.op.tertiary.f32(i32 46, float %5227, float %5215, float %5252)  ; FMad(a,b,c)
  %5254 = call float @dx.op.tertiary.f32(i32 46, float %5251, float %5250, float %5253)  ; FMad(a,b,c)
  %5255 = fsub fast float %5254, %5218
  %5256 = fsub fast float %5255, %5205
  br label %5257

; <label>:5257                                    ; preds = %5244, %5204, %5187
  %5258 = phi i1 [ true, %5244 ], [ false, %5204 ], [ false, %5187 ]
  %5259 = phi float [ %5256, %5244 ], [ -1.310720e+05, %5204 ], [ -1.310720e+05, %5187 ]
  %5260 = fsub fast float %5259, %154
  %5261 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5262 = select i1 %5258, float %5261, float 1.000000e+00
  br label %5263

; <label>:5263                                    ; preds = %5257, %5159
  %5264 = phi float [ %5262, %5257 ], [ 0.000000e+00, %5159 ]
  %5265 = icmp eq i32 %5185, 3
  %5266 = select i1 %5265, float 1.000000e+00, float %5264
  %5267 = call float @dx.op.binary.f32(i32 35, float %5094, float %5266)  ; FMax(a,b)
  %5268 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5269 = fcmp fast une float %5268, 0.000000e+00
  %5270 = fsub fast float -0.000000e+00, %172
  %5271 = fsub fast float -0.000000e+00, %173
  %5272 = fsub fast float -0.000000e+00, %174
  br i1 %5269, label %5273, label %5435

; <label>:5273                                    ; preds = %5263
  %5274 = call float @dx.op.dot3.f32(i32 55, float %5270, float %5271, float %5272, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = fmul fast float %5268, 2.500000e+00
  %5276 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5277 = fmul fast float %5268, 0x4013FFFFE0000000
  %5278 = fadd fast float %5277, 0xBFFFFFFFE0000000
  %5279 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5280 = fmul fast float %5268, 0x4004000020000000
  %5281 = fadd fast float %5280, 0xBFF8000040000000
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5283 = call float @dx.op.unary.f32(i32 7, float %5276)  ; Saturate(value)
  %5284 = fmul fast float %5119, 1.000000e+01
  %5285 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5286 = fmul fast float %5285, 2.000000e+00
  %5287 = fsub fast float 3.000000e+00, %5286
  %5288 = fmul fast float %5285, %5285
  %5289 = fmul fast float %5288, %5287
  %5290 = fsub fast float 1.000000e+00, %5289
  %5291 = fsub fast float 0x3FE3333340000000, %5140
  %5292 = fmul fast float %5291, 0x400AAAAAA0000000
  %5293 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5294 = fmul fast float %5290, %5293
  %5295 = fmul fast float %5177, 0x3FEA2B8620000000
  %5296 = fmul fast float %5178, 0x3FEA2B8620000000
  %5297 = fmul fast float %5179, 0x3FEA2B8620000000
  %5298 = fadd fast float %5295, 0x3FC81DFBA0000000
  %5299 = fmul fast float %5298, %5177
  %5300 = fadd fast float %5299, 0x3F910E6020000000
  %5301 = fadd fast float %5296, 0x3FC81DFBA0000000
  %5302 = fmul fast float %5301, %5178
  %5303 = fadd fast float %5302, 0x3F910E6020000000
  %5304 = fadd fast float %5297, 0x3FC81DFBA0000000
  %5305 = fmul fast float %5304, %5179
  %5306 = fadd fast float %5305, 0x3F910E6020000000
  %5307 = call float @dx.op.unary.f32(i32 7, float %5300)  ; Saturate(value)
  %5308 = call float @dx.op.unary.f32(i32 7, float %5303)  ; Saturate(value)
  %5309 = call float @dx.op.unary.f32(i32 7, float %5306)  ; Saturate(value)
  %5310 = fsub fast float %5307, %5177
  %5311 = fsub fast float %5308, %5178
  %5312 = fsub fast float %5309, %5179
  %5313 = fmul fast float %5310, %5283
  %5314 = fmul fast float %5313, %5294
  %5315 = fmul fast float %5311, %5283
  %5316 = fmul fast float %5315, %5294
  %5317 = fmul fast float %5312, %5283
  %5318 = fmul fast float %5317, %5294
  %5319 = fadd fast float %5314, %5177
  %5320 = fadd fast float %5316, %5178
  %5321 = fadd fast float %5318, %5179
  %5322 = fmul fast float %5091, %5091
  %5323 = fmul fast float %5322, %5322
  %5324 = fadd fast float %5279, 1.000000e+00
  %5325 = fsub fast float %5324, %5294
  %5326 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5327 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5329 = fsub fast float 1.000000e+00, %5323
  %5330 = call float @dx.op.binary.f32(i32 36, float %5326, float %5329)  ; FMin(a,b)
  %5331 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5332 = call float @dx.op.binary.f32(i32 35, float %5330, float %5331)  ; FMax(a,b)
  %5333 = fadd fast float %5328, 0xBFE4CCCCC0000000
  %5334 = fmul fast float %5333, 0x4006DB6DA0000000
  %5335 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5336 = fmul fast float %5335, 2.000000e+00
  %5337 = fsub fast float 3.000000e+00, %5336
  %5338 = bitcast float %5137 to i32
  %5339 = ashr i32 %5338, 1
  %5340 = add nsw i32 %5339, 532487669
  %5341 = bitcast i32 %5340 to float
  %5342 = fsub fast float 1.000000e+00, %5341
  %5343 = bitcast float %5342 to i32
  %5344 = sub nsw i32 2129859010, %5343
  %5345 = bitcast i32 %5344 to float
  %5346 = fmul fast float %5345, 2.000000e+00
  %5347 = bitcast float %5138 to i32
  %5348 = ashr i32 %5347, 1
  %5349 = add nsw i32 %5348, 532487669
  %5350 = bitcast i32 %5349 to float
  %5351 = fsub fast float 1.000000e+00, %5350
  %5352 = bitcast float %5351 to i32
  %5353 = sub nsw i32 2129859010, %5352
  %5354 = bitcast i32 %5353 to float
  %5355 = fmul fast float %5354, 2.000000e+00
  %5356 = bitcast float %5139 to i32
  %5357 = ashr i32 %5356, 1
  %5358 = add nsw i32 %5357, 532487669
  %5359 = bitcast i32 %5358 to float
  %5360 = fsub fast float 1.000000e+00, %5359
  %5361 = bitcast float %5360 to i32
  %5362 = sub nsw i32 2129859010, %5361
  %5363 = bitcast i32 %5362 to float
  %5364 = fmul fast float %5363, 2.000000e+00
  %5365 = fsub fast float 0x4002A9FBE0000000, %5346
  %5366 = fadd fast float %5346, 0x3FD54FDF00000000
  %5367 = bitcast float %5366 to i32
  %5368 = sub nsw i32 2129859010, %5367
  %5369 = bitcast i32 %5368 to float
  %5370 = fmul fast float %5369, %5365
  %5371 = fmul fast float %5370, %5370
  %5372 = fsub fast float 0x4002A9FBE0000000, %5355
  %5373 = fadd fast float %5355, 0x3FD54FDF00000000
  %5374 = bitcast float %5373 to i32
  %5375 = sub nsw i32 2129859010, %5374
  %5376 = bitcast i32 %5375 to float
  %5377 = fmul fast float %5376, %5372
  %5378 = fmul fast float %5377, %5377
  %5379 = fsub fast float 0x4002A9FBE0000000, %5364
  %5380 = fadd fast float %5364, 0x3FD54FDF00000000
  %5381 = bitcast float %5380 to i32
  %5382 = sub nsw i32 2129859010, %5381
  %5383 = bitcast i32 %5382 to float
  %5384 = fmul fast float %5383, %5379
  %5385 = fmul fast float %5384, %5384
  %5386 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5371)  ; FMax(a,b)
  %5387 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5378)  ; FMax(a,b)
  %5388 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5385)  ; FMax(a,b)
  %5389 = fsub fast float 1.000000e+00, %5274
  %5390 = fadd fast float %5389, %5290
  %5391 = call float @dx.op.unary.f32(i32 7, float %5390)  ; Saturate(value)
  %5392 = fsub fast float 1.000000e+00, %5266
  %5393 = fmul fast float %5332, %5392
  %5394 = fmul fast float %5335, %5335
  %5395 = fmul fast float %5394, %5393
  %5396 = fmul fast float %5395, %5337
  %5397 = fmul fast float %5392, 0xBFE99999A0000000
  %5398 = fmul fast float %5397, %5283
  %5399 = fmul fast float %5398, %5294
  %5400 = fadd fast float %5399, 1.000000e+00
  %5401 = fadd fast float %5140, -1.000000e+00
  %5402 = fmul fast float %5400, %5401
  %5403 = fadd fast float %5402, 1.000000e+00
  %5404 = fsub fast float %5386, %5137
  %5405 = fsub fast float %5387, %5138
  %5406 = fsub fast float %5388, %5139
  %5407 = fmul fast float %5396, %5404
  %5408 = fmul fast float %5396, %5405
  %5409 = fmul fast float %5396, %5406
  %5410 = fadd fast float %5407, %5137
  %5411 = fadd fast float %5408, %5138
  %5412 = fadd fast float %5409, %5139
  %5413 = fsub fast float %104, %5073
  %5414 = fsub fast float %105, %5074
  %5415 = fsub fast float %106, %5075
  %5416 = fmul fast float %5396, %5413
  %5417 = fmul fast float %5396, %5414
  %5418 = fmul fast float %5396, %5415
  %5419 = fadd fast float %5416, %5073
  %5420 = fadd fast float %5417, %5074
  %5421 = fadd fast float %5418, %5075
  %5422 = fmul fast float %5396, %5391
  %5423 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  %5424 = fsub fast float 1.000000e+00, %5423
  %5425 = fmul fast float %5422, %5424
  %5426 = fadd fast float %5425, %5423
  %5427 = fsub fast float 1.000000e+00, %5091
  %5428 = fmul fast float %5396, %5427
  %5429 = fadd fast float %5428, %5091
  %5430 = call float @dx.op.dot3.f32(i32 55, float %5419, float %5420, float %5421, float %5419, float %5420, float %5421)  ; Dot3(ax,ay,az,bx,by,bz)
  %5431 = call float @dx.op.unary.f32(i32 25, float %5430)  ; Rsqrt(value)
  %5432 = fmul fast float %5419, %5431
  %5433 = fmul fast float %5420, %5431
  %5434 = fmul fast float %5421, %5431
  br label %5435

; <label>:5435                                    ; preds = %5273, %5263
  %5436 = phi float [ %5432, %5273 ], [ %5073, %5263 ]
  %5437 = phi float [ %5433, %5273 ], [ %5074, %5263 ]
  %5438 = phi float [ %5434, %5273 ], [ %5075, %5263 ]
  %5439 = phi float [ %5410, %5273 ], [ %5137, %5263 ]
  %5440 = phi float [ %5411, %5273 ], [ %5138, %5263 ]
  %5441 = phi float [ %5412, %5273 ], [ %5139, %5263 ]
  %5442 = phi float [ %5319, %5273 ], [ %5177, %5263 ]
  %5443 = phi float [ %5320, %5273 ], [ %5178, %5263 ]
  %5444 = phi float [ %5321, %5273 ], [ %5179, %5263 ]
  %5445 = phi float [ %5426, %5273 ], [ %5140, %5263 ]
  %5446 = phi float [ %5429, %5273 ], [ %5091, %5263 ]
  %5447 = select i1 %245, float 0.000000e+00, float %5441
  %5448 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float %5270, float %5271, float %5272)  ; Dot3(ax,ay,az,bx,by,bz)
  %5449 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5450 = call float @dx.op.dot3.f32(i32 55, float %172, float %173, float %174, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5451 = fmul fast float %5450, 2.000000e+00
  %5452 = fmul fast float %5451, %5436
  %5453 = fmul fast float %5451, %5437
  %5454 = fmul fast float %5451, %5438
  %5455 = fsub fast float %172, %5452
  %5456 = fsub fast float %173, %5453
  %5457 = fsub fast float %174, %5454
  %5458 = call float @dx.op.binary.f32(i32 36, float %5446, float 1.000000e+00)  ; FMin(a,b)
  %5459 = fsub fast float 1.000000e+00, %5458
  %5460 = bitcast float %5459 to i32
  %5461 = ashr i32 %5460, 1
  %5462 = add nsw i32 %5461, 532487669
  %5463 = bitcast i32 %5462 to float
  %5464 = fsub fast float 1.000000e+00, %5445
  %5465 = call float @dx.op.binary.f32(i32 35, float %5464, float 0x3F847AE140000000)  ; FMax(a,b)
  %5466 = fmul fast float %5465, %5465
  %5467 = fmul fast float %5466, %5466
  %5468 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %42, float %5463, float %5467, float %5468, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5470 = extractvalue %dx.types.ResRet.f32 %5469, 0
  %5471 = fsub fast float 1.000000e+00, %5446
  %5472 = bitcast float %5471 to i32
  %5473 = sub nsw i32 2129859010, %5472
  %5474 = call float @dx.op.dot3.f32(i32 55, float %65, float %61, float %57, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = fmul fast float %5474, 0x3FD20DD760000000
  %5476 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %65)  ; FMax(a,b)
  %5477 = call float @dx.op.dot3.f32(i32 55, float %66, float %67, float %68, float %66, float %67, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = fcmp fast oeq float %5477, 0.000000e+00
  %5479 = fcmp fast oeq float %5476, 0.000000e+00
  %5480 = or i1 %5479, %5478
  br i1 %5480, label %5510, label %5481

; <label>:5481                                    ; preds = %5435
  %5482 = fsub fast float -0.000000e+00, %68
  %5483 = fsub fast float -0.000000e+00, %66
  %5484 = call float @dx.op.unary.f32(i32 24, float %5477)  ; Sqrt(value)
  %5485 = fdiv fast float %5484, %5476
  %5486 = fcmp fast ogt float %5485, 0x3FFB6F8900000000
  %5487 = select i1 %5486, float 0x3FFB6F8900000000, float %5485
  %5488 = fmul fast float %5487, 0x3FE8A23460000000
  %5489 = call float @dx.op.unary.f32(i32 7, float %5488)  ; Saturate(value)
  %5490 = call float @dx.op.binary.f32(i32 35, float %5487, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5491 = fmul fast float %5489, %5476
  %5492 = fmul fast float %5490, 0x3FF279A740000000
  %5493 = fadd fast float %5492, -1.000000e+00
  %5494 = call float @dx.op.dot3.f32(i32 55, float %5482, float %5483, float %67, float %5482, float %5483, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = call float @dx.op.unary.f32(i32 25, float %5494)  ; Rsqrt(value)
  %5496 = fmul fast float %5495, %5482
  %5497 = fmul fast float %5495, %5483
  %5498 = fmul fast float %5495, %67
  %5499 = fmul fast float %5493, %5493
  %5500 = fsub fast float 1.000000e+00, %5499
  %5501 = fmul fast float %5490, 0x40005F8BE0000000
  %5502 = fsub fast float 0x400C5BF8A0000000, %5501
  %5503 = fdiv fast float %5491, %5502
  %5504 = fmul fast float %5503, 0x3FEE31C3C0000000
  %5505 = fmul fast float %5504, %5500
  %5506 = fmul fast float %5490, 0x3FDACB7480000000
  %5507 = fadd fast float %5506, 0xBFD7347680000000
  %5508 = fmul fast float %5507, %5503
  %5509 = fmul fast float %5508, %5500
  br label %5510

; <label>:5510                                    ; preds = %5481, %5435
  %5511 = phi float [ %5496, %5481 ], [ 0.000000e+00, %5435 ]
  %5512 = phi float [ %5497, %5481 ], [ 0.000000e+00, %5435 ]
  %5513 = phi float [ %5498, %5481 ], [ 0.000000e+00, %5435 ]
  %5514 = phi float [ %5505, %5481 ], [ 0.000000e+00, %5435 ]
  %5515 = phi float [ %5509, %5481 ], [ 0.000000e+00, %5435 ]
  %5516 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = fmul fast float %5516, 0x3FDF454380000000
  %5518 = fmul fast float %5516, %5516
  %5519 = fmul fast float %5518, 0x3FEE471020000000
  %5520 = fadd fast float %5519, 0xBFD42F6020000000
  %5521 = fmul fast float %5476, 0x3FD20DD760000000
  %5522 = fmul fast float %5520, %5515
  %5523 = fadd fast float %5522, %5521
  %5524 = fmul fast float %5517, %5514
  %5525 = fadd fast float %5523, %5524
  %5526 = fsub fast float %5523, %5524
  %5527 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = fmul fast float %5527, 0x3FDF454380000000
  %5529 = fmul fast float %5527, %5527
  %5530 = fmul fast float %5529, 0x3FEE471020000000
  %5531 = fadd fast float %5530, 0xBFD42F6020000000
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5476, float %5514, float %5515, float 0x3FD20DD760000000, float %5528, float %5531)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %61)  ; FMax(a,b)
  %5534 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = fcmp fast oeq float %5534, 0.000000e+00
  %5536 = fcmp fast oeq float %5533, 0.000000e+00
  %5537 = or i1 %5536, %5535
  br i1 %5537, label %5567, label %5538

; <label>:5538                                    ; preds = %5510
  %5539 = fsub fast float -0.000000e+00, %64
  %5540 = fsub fast float -0.000000e+00, %62
  %5541 = call float @dx.op.unary.f32(i32 24, float %5534)  ; Sqrt(value)
  %5542 = fdiv fast float %5541, %5533
  %5543 = fcmp fast ogt float %5542, 0x3FFB6F8900000000
  %5544 = select i1 %5543, float 0x3FFB6F8900000000, float %5542
  %5545 = fmul fast float %5544, 0x3FE8A23460000000
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = call float @dx.op.binary.f32(i32 35, float %5544, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5548 = fmul fast float %5546, %5533
  %5549 = fmul fast float %5547, 0x3FF279A740000000
  %5550 = fadd fast float %5549, -1.000000e+00
  %5551 = call float @dx.op.dot3.f32(i32 55, float %5539, float %5540, float %63, float %5539, float %5540, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %5552 = call float @dx.op.unary.f32(i32 25, float %5551)  ; Rsqrt(value)
  %5553 = fmul fast float %5552, %5539
  %5554 = fmul fast float %5552, %5540
  %5555 = fmul fast float %5552, %63
  %5556 = fmul fast float %5550, %5550
  %5557 = fsub fast float 1.000000e+00, %5556
  %5558 = fmul fast float %5547, 0x40005F8BE0000000
  %5559 = fsub fast float 0x400C5BF8A0000000, %5558
  %5560 = fdiv fast float %5548, %5559
  %5561 = fmul fast float %5560, 0x3FEE31C3C0000000
  %5562 = fmul fast float %5561, %5557
  %5563 = fmul fast float %5547, 0x3FDACB7480000000
  %5564 = fadd fast float %5563, 0xBFD7347680000000
  %5565 = fmul fast float %5564, %5560
  %5566 = fmul fast float %5565, %5557
  br label %5567

; <label>:5567                                    ; preds = %5538, %5510
  %5568 = phi float [ %5553, %5538 ], [ 0.000000e+00, %5510 ]
  %5569 = phi float [ %5554, %5538 ], [ 0.000000e+00, %5510 ]
  %5570 = phi float [ %5555, %5538 ], [ 0.000000e+00, %5510 ]
  %5571 = phi float [ %5562, %5538 ], [ 0.000000e+00, %5510 ]
  %5572 = phi float [ %5566, %5538 ], [ 0.000000e+00, %5510 ]
  %5573 = call float @dx.op.dot3.f32(i32 55, float %5568, float %5569, float %5570, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = fmul fast float %5573, 0x3FDF454380000000
  %5575 = fmul fast float %5573, %5573
  %5576 = fmul fast float %5575, 0x3FEE471020000000
  %5577 = fadd fast float %5576, 0xBFD42F6020000000
  %5578 = fmul fast float %5533, 0x3FD20DD760000000
  %5579 = fmul fast float %5577, %5572
  %5580 = fadd fast float %5579, %5578
  %5581 = fmul fast float %5574, %5571
  %5582 = fadd fast float %5580, %5581
  %5583 = fsub fast float %5580, %5581
  %5584 = call float @dx.op.dot3.f32(i32 55, float %5568, float %5569, float %5570, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = fmul fast float %5584, 0x3FDF454380000000
  %5586 = fmul fast float %5584, %5584
  %5587 = fmul fast float %5586, 0x3FEE471020000000
  %5588 = fadd fast float %5587, 0xBFD42F6020000000
  %5589 = call float @dx.op.dot3.f32(i32 55, float %5533, float %5571, float %5572, float 0x3FD20DD760000000, float %5585, float %5588)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %5591 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = fcmp fast oeq float %5591, 0.000000e+00
  %5593 = fcmp fast oeq float %5590, 0.000000e+00
  %5594 = or i1 %5593, %5592
  br i1 %5594, label %5624, label %5595

; <label>:5595                                    ; preds = %5567
  %5596 = fsub fast float -0.000000e+00, %60
  %5597 = fsub fast float -0.000000e+00, %58
  %5598 = call float @dx.op.unary.f32(i32 24, float %5591)  ; Sqrt(value)
  %5599 = fdiv fast float %5598, %5590
  %5600 = fcmp fast ogt float %5599, 0x3FFB6F8900000000
  %5601 = select i1 %5600, float 0x3FFB6F8900000000, float %5599
  %5602 = fmul fast float %5601, 0x3FE8A23460000000
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = call float @dx.op.binary.f32(i32 35, float %5601, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5605 = fmul fast float %5603, %5590
  %5606 = fmul fast float %5604, 0x3FF279A740000000
  %5607 = fadd fast float %5606, -1.000000e+00
  %5608 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5597, float %59, float %5596, float %5597, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = call float @dx.op.unary.f32(i32 25, float %5608)  ; Rsqrt(value)
  %5610 = fmul fast float %5609, %5596
  %5611 = fmul fast float %5609, %5597
  %5612 = fmul fast float %5609, %59
  %5613 = fmul fast float %5607, %5607
  %5614 = fsub fast float 1.000000e+00, %5613
  %5615 = fmul fast float %5604, 0x40005F8BE0000000
  %5616 = fsub fast float 0x400C5BF8A0000000, %5615
  %5617 = fdiv fast float %5605, %5616
  %5618 = fmul fast float %5617, 0x3FEE31C3C0000000
  %5619 = fmul fast float %5618, %5614
  %5620 = fmul fast float %5604, 0x3FDACB7480000000
  %5621 = fadd fast float %5620, 0xBFD7347680000000
  %5622 = fmul fast float %5621, %5617
  %5623 = fmul fast float %5622, %5614
  br label %5624

; <label>:5624                                    ; preds = %5595, %5567
  %5625 = phi float [ %5610, %5595 ], [ 0.000000e+00, %5567 ]
  %5626 = phi float [ %5611, %5595 ], [ 0.000000e+00, %5567 ]
  %5627 = phi float [ %5612, %5595 ], [ 0.000000e+00, %5567 ]
  %5628 = phi float [ %5619, %5595 ], [ 0.000000e+00, %5567 ]
  %5629 = phi float [ %5623, %5595 ], [ 0.000000e+00, %5567 ]
  %5630 = call float @dx.op.dot3.f32(i32 55, float %5625, float %5626, float %5627, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5631 = fmul fast float %5630, 0x3FDF454380000000
  %5632 = fmul fast float %5630, %5630
  %5633 = fmul fast float %5632, 0x3FEE471020000000
  %5634 = fadd fast float %5633, 0xBFD42F6020000000
  %5635 = fmul fast float %5590, 0x3FD20DD760000000
  %5636 = fmul fast float %5634, %5629
  %5637 = fadd fast float %5636, %5635
  %5638 = fmul fast float %5631, %5628
  %5639 = fadd fast float %5637, %5638
  %5640 = fsub fast float %5637, %5638
  %5641 = call float @dx.op.dot3.f32(i32 55, float %5625, float %5626, float %5627, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = fmul fast float %5641, 0x3FDF454380000000
  %5643 = fmul fast float %5641, %5641
  %5644 = fmul fast float %5643, 0x3FEE471020000000
  %5645 = fadd fast float %5644, 0xBFD42F6020000000
  %5646 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5628, float %5629, float 0x3FD20DD760000000, float %5642, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5647 = call float @dx.op.binary.f32(i32 35, float %5525, float 0.000000e+00)  ; FMax(a,b)
  %5648 = call float @dx.op.binary.f32(i32 35, float %5582, float 0.000000e+00)  ; FMax(a,b)
  %5649 = call float @dx.op.binary.f32(i32 35, float %5639, float 0.000000e+00)  ; FMax(a,b)
  %5650 = call float @dx.op.binary.f32(i32 35, float %5526, float 0.000000e+00)  ; FMax(a,b)
  %5651 = call float @dx.op.binary.f32(i32 35, float %5583, float 0.000000e+00)  ; FMax(a,b)
  %5652 = call float @dx.op.binary.f32(i32 35, float %5640, float 0.000000e+00)  ; FMax(a,b)
  %5653 = call float @dx.op.binary.f32(i32 35, float %5532, float 0.000000e+00)  ; FMax(a,b)
  %5654 = call float @dx.op.binary.f32(i32 35, float %5589, float 0.000000e+00)  ; FMax(a,b)
  %5655 = call float @dx.op.binary.f32(i32 35, float %5646, float 0.000000e+00)  ; FMax(a,b)
  %5656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5657 = extractvalue %dx.types.CBufRet.f32 %5656, 0
  %5658 = call float @dx.op.binary.f32(i32 36, float %5442, float %5657)  ; FMin(a,b)
  %5659 = fmul fast float %5658, %5459
  %5660 = fsub fast float 1.000000e+00, %5659
  %5661 = bitcast float %5660 to i32
  %5662 = sub nsw i32 2129859010, %5661
  %5663 = bitcast i32 %5662 to float
  %5664 = call float @dx.op.binary.f32(i32 36, float %5443, float %5657)  ; FMin(a,b)
  %5665 = fmul fast float %5664, %5459
  %5666 = fsub fast float 1.000000e+00, %5665
  %5667 = bitcast float %5666 to i32
  %5668 = sub nsw i32 2129859010, %5667
  %5669 = bitcast i32 %5668 to float
  %5670 = call float @dx.op.binary.f32(i32 36, float %5444, float %5657)  ; FMin(a,b)
  %5671 = fmul fast float %5670, %5459
  %5672 = fsub fast float 1.000000e+00, %5671
  %5673 = bitcast float %5672 to i32
  %5674 = sub nsw i32 2129859010, %5673
  %5675 = bitcast i32 %5674 to float
  %5676 = fmul fast float %5647, %5458
  %5677 = fmul fast float %5676, %5663
  %5678 = fmul fast float %5648, %5458
  %5679 = fmul fast float %5678, %5669
  %5680 = fmul fast float %5649, %5458
  %5681 = fmul fast float %5680, %5675
  %5682 = call float @dx.op.binary.f32(i32 36, float %5439, float %5657)  ; FMin(a,b)
  %5683 = fmul fast float %5682, %5459
  %5684 = fsub fast float 1.000000e+00, %5683
  %5685 = bitcast float %5684 to i32
  %5686 = sub nsw i32 2129859010, %5685
  %5687 = bitcast i32 %5686 to float
  %5688 = call float @dx.op.binary.f32(i32 36, float %5440, float %5657)  ; FMin(a,b)
  %5689 = fmul fast float %5688, %5459
  %5690 = fsub fast float 1.000000e+00, %5689
  %5691 = bitcast float %5690 to i32
  %5692 = sub nsw i32 2129859010, %5691
  %5693 = bitcast i32 %5692 to float
  %5694 = call float @dx.op.binary.f32(i32 36, float %5447, float %5657)  ; FMin(a,b)
  %5695 = fmul fast float %5694, %5459
  %5696 = fsub fast float 1.000000e+00, %5695
  %5697 = bitcast float %5696 to i32
  %5698 = sub nsw i32 2129859010, %5697
  %5699 = bitcast i32 %5698 to float
  %5700 = fmul fast float %5653, %5458
  %5701 = fmul fast float %5700, %5687
  %5702 = fmul fast float %5654, %5458
  %5703 = fmul fast float %5702, %5693
  %5704 = fmul fast float %5655, %5458
  %5705 = fmul fast float %5704, %5699
  %5706 = call float @dx.op.dot3.f32(i32 55, float %5677, float %5679, float %5681, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5707 = select i1 %245, float 0.000000e+00, float %5677
  %5708 = select i1 %245, float %5706, float %5679
  %5709 = select i1 %245, float 0.000000e+00, float %5681
  %5710 = call float @dx.op.dot3.f32(i32 55, float %5650, float %5651, float %5652, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5711 = select i1 %245, float 0.000000e+00, float %5650
  %5712 = select i1 %245, float %5710, float %5651
  %5713 = select i1 %245, float 0.000000e+00, float %5652
  %5714 = call float @dx.op.dot3.f32(i32 55, float %5701, float %5703, float %5705, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5715 = select i1 %245, float 0.000000e+00, float %5701
  %5716 = select i1 %245, float %5714, float %5703
  %5717 = select i1 %245, float 0.000000e+00, float %5705
  %5718 = fmul fast float %4446, %4446
  %5719 = call float @dx.op.unary.f32(i32 7, float %5718)  ; Saturate(value)
  %5720 = fmul fast float %5449, 9.843750e-01
  %5721 = fmul fast float %5445, 9.843750e-01
  %5722 = fadd fast float %5720, 7.812500e-03
  %5723 = fadd fast float %5721, 7.812500e-03
  %5724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %5722, float %5723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5725 = extractvalue %dx.types.ResRet.f32 %5724, 0
  %5726 = extractvalue %dx.types.ResRet.f32 %5724, 1
  %5727 = extractvalue %dx.types.ResRet.f32 %5724, 2
  %5728 = extractvalue %dx.types.ResRet.f32 %5724, 3
  %5729 = fsub fast float 1.000000e+00, %5719
  %5730 = fsub fast float %5727, %5725
  %5731 = fsub fast float %5728, %5726
  %5732 = fmul fast float %5730, %5729
  %5733 = fmul fast float %5731, %5729
  %5734 = fadd fast float %5732, %5725
  %5735 = fadd fast float %5733, %5726
  %5736 = fmul fast float %5734, %5439
  %5737 = fmul fast float %5734, %5440
  %5738 = fmul fast float %5734, %5447
  %5739 = fadd fast float %5736, %5735
  %5740 = fadd fast float %5737, %5735
  %5741 = fadd fast float %5738, %5735
  %5742 = fcmp fast ogt float %5092, 0.000000e+00
  br i1 %5742, label %5743, label %5769

; <label>:5743                                    ; preds = %5624
  %5744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5092, float %5449, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5745 = extractvalue %dx.types.ResRet.f32 %5744, 0
  %5746 = extractvalue %dx.types.ResRet.f32 %5744, 1
  %5747 = extractvalue %dx.types.ResRet.f32 %5744, 2
  %5748 = fadd fast float %5745, -5.000000e-01
  %5749 = fadd fast float %5746, -5.000000e-01
  %5750 = fadd fast float %5747, -5.000000e-01
  %5751 = fsub fast float 1.000000e+00, %5439
  %5752 = fsub fast float 1.000000e+00, %5440
  %5753 = fsub fast float 1.000000e+00, %5447
  %5754 = fmul fast float %5439, 4.000000e+00
  %5755 = fmul fast float %5754, %5751
  %5756 = fmul fast float %5755, %5748
  %5757 = fmul fast float %5440, 4.000000e+00
  %5758 = fmul fast float %5757, %5752
  %5759 = fmul fast float %5758, %5749
  %5760 = fmul fast float %5447, 4.000000e+00
  %5761 = fmul fast float %5760, %5753
  %5762 = fmul fast float %5761, %5750
  %5763 = fadd fast float %5756, %5739
  %5764 = fadd fast float %5759, %5740
  %5765 = fadd fast float %5762, %5741
  %5766 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  %5767 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5768 = call float @dx.op.unary.f32(i32 7, float %5765)  ; Saturate(value)
  br label %5769

; <label>:5769                                    ; preds = %5743, %5624
  %5770 = phi float [ %5766, %5743 ], [ %5739, %5624 ]
  %5771 = phi float [ %5767, %5743 ], [ %5740, %5624 ]
  %5772 = phi float [ %5768, %5743 ], [ %5741, %5624 ]
  %5773 = call float @dx.op.binary.f32(i32 35, float %5771, float %5772)  ; FMax(a,b)
  %5774 = call float @dx.op.binary.f32(i32 35, float %5770, float %5773)  ; FMax(a,b)
  %5775 = fsub fast float 1.000000e+00, %5774
  %5776 = fmul fast float %5774, %5445
  %5777 = fadd fast float %5776, %5445
  %5778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5779 = extractvalue %dx.types.CBufRet.f32 %5778, 2
  %5780 = extractvalue %dx.types.CBufRet.f32 %5778, 3
  %5781 = fmul fast float %5777, %5779
  %5782 = fadd fast float %5781, %5780
  %5783 = call float @dx.op.unary.f32(i32 7, float %5782)  ; Saturate(value)
  %5784 = fsub fast float 1.000000e+00, %5470
  %5785 = fadd fast float %5784, %5783
  %5786 = call float @dx.op.unary.f32(i32 7, float %5785)  ; Saturate(value)
  %5787 = fcmp fast olt float %5786, 1.000000e+00
  br i1 %5787, label %5788, label %6236

; <label>:5788                                    ; preds = %5769
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 2
  %5791 = extractvalue %dx.types.CBufRet.f32 %5789, 3
  %5792 = fmul fast float %5790, %97
  %5793 = fmul fast float %5791, %98
  %5794 = fptoui float %5792 to i32
  %5795 = fptoui float %5793 to i32
  %5796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5797 = extractvalue %dx.types.CBufRet.f32 %5796, 0
  %5798 = extractvalue %dx.types.CBufRet.f32 %5796, 2
  %5799 = extractvalue %dx.types.CBufRet.f32 %5796, 3
  %5800 = fadd fast float %85, -4.000000e+00
  %5801 = call float @dx.op.binary.f32(i32 35, float %5800, float 0.000000e+00)  ; FMax(a,b)
  %5802 = fadd fast float %5801, %5797
  %5803 = fmul fast float %5802, %5798
  %5804 = call float @dx.op.unary.f32(i32 23, float %5803)  ; Log(value)
  %5805 = fmul fast float %5804, %5799
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 2
  %5808 = fmul fast float %5805, %5807
  %5809 = call float @dx.op.unary.f32(i32 7, float %5808)  ; Saturate(value)
  %5810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.i32 %5810, 1
  %5812 = add i32 %5811, -1
  %5813 = uitofp i32 %5811 to float
  %5814 = fmul fast float %5813, %5809
  %5815 = fptoui float %5814 to i32
  %5816 = call i32 @dx.op.binary.i32(i32 40, i32 %5815, i32 %5812)  ; UMin(a,b)
  %5817 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.i32 %5817, 2
  %5819 = extractvalue %dx.types.CBufRet.i32 %5817, 3
  %5820 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5795, i32 %5818, i32 %5794)  ; UMad(a,b,c)
  %5821 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5816, i32 %5819, i32 %5820)  ; UMad(a,b,c)
  %5822 = call float @dx.op.binary.f32(i32 35, float %85, float 0.000000e+00)  ; FMax(a,b)
  %5823 = fptoui float %5822 to i32
  %5824 = lshr i32 %5823, 5
  %5825 = call i32 @dx.op.binary.i32(i32 40, i32 %5824, i32 8191)  ; UMin(a,b)
  br i1 false, label %5826, label %5833

; <label>:5826                                    ; preds = %5788
  %5827 = fadd fast float 0.000000e+00, %5457
  %5828 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5827, float %5455, float %5456, float %5827)  ; Dot3(ax,ay,az,bx,by,bz)
  %5829 = call float @dx.op.unary.f32(i32 25, float %5828)  ; Rsqrt(value)
  %5830 = fmul fast float %5829, %5455
  %5831 = fmul fast float %5829, %5456
  %5832 = fmul fast float %5827, %5829
  br label %5833

; <label>:5833                                    ; preds = %5826, %5788
  %5834 = phi float [ %5830, %5826 ], [ %5455, %5788 ]
  %5835 = phi float [ %5831, %5826 ], [ %5456, %5788 ]
  %5836 = phi float [ %5832, %5826 ], [ %5457, %5788 ]
  %5837 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.i32 %5837, 2
  %5839 = add nsw i32 %5838, -1
  %5840 = call i32 @dx.op.binary.i32(i32 37, i32 %5839, i32 0)  ; IMax(a,b)
  %5841 = shl i32 %5825, 2
  %5842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5841, i32 undef)  ; BufferLoad(srv,index,wot)
  %5843 = extractvalue %dx.types.ResRet.i32 %5842, 0
  %5844 = lshr i32 %5843, 16
  %5845 = and i32 %5843, 65535
  %5846 = lshr i32 %5843, 21
  %5847 = lshr i32 %5845, 5
  %5848 = call i32 @dx.op.binary.i32(i32 40, i32 %5847, i32 %5840)  ; UMin(a,b)
  %5849 = icmp ugt i32 %5846, %5848
  br i1 %5849, label %6212, label %5850

; <label>:5850                                    ; preds = %5833
  br label %5851

; <label>:5851                                    ; preds = %6204, %5850
  %5852 = phi float [ %6205, %6204 ], [ 0.000000e+00, %5850 ]
  %5853 = phi float [ %6206, %6204 ], [ 0.000000e+00, %5850 ]
  %5854 = phi float [ %6207, %6204 ], [ 0.000000e+00, %5850 ]
  %5855 = phi float [ %6208, %6204 ], [ 1.000000e+00, %5850 ]
  %5856 = phi i32 [ %6209, %6204 ], [ %5846, %5850 ]
  %5857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.i32 %5857, 2
  %5859 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5821, i32 %5858, i32 %5856)  ; UMad(a,b,c)
  %5860 = shl i32 %5859, 2
  %5861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5860, i32 undef)  ; BufferLoad(srv,index,wot)
  %5862 = extractvalue %dx.types.ResRet.i32 %5861, 0
  %5863 = shl i32 %5856, 5
  %5864 = sub nsw i32 %5844, %5863
  %5865 = call i32 @dx.op.binary.i32(i32 37, i32 %5864, i32 0)  ; IMax(a,b)
  %5866 = call i32 @dx.op.binary.i32(i32 38, i32 %5865, i32 31)  ; IMin(a,b)
  %5867 = sub nsw i32 1, %5844
  %5868 = add nsw i32 %5867, %5845
  %5869 = call i32 @dx.op.binary.i32(i32 37, i32 %5868, i32 0)  ; IMax(a,b)
  %5870 = call i32 @dx.op.binary.i32(i32 38, i32 %5869, i32 32)  ; IMin(a,b)
  %5871 = and i32 %5870, 31
  %5872 = shl i32 -1, %5871
  %5873 = xor i32 %5872, -1
  %5874 = and i32 %5866, 31
  %5875 = shl i32 %5873, %5874
  %5876 = icmp eq i32 %5870, 32
  %5877 = select i1 %5876, i32 -1, i32 %5875
  %5878 = and i32 %5877, %5862
  %5879 = icmp eq i32 %5878, 0
  br i1 %5879, label %6204, label %5880

; <label>:5880                                    ; preds = %5851
  br label %5881

; <label>:5881                                    ; preds = %5987, %5880
  %5882 = phi float [ %5988, %5987 ], [ %5852, %5880 ]
  %5883 = phi float [ %5989, %5987 ], [ %5853, %5880 ]
  %5884 = phi float [ %5990, %5987 ], [ %5854, %5880 ]
  %5885 = phi float [ %5991, %5987 ], [ %5855, %5880 ]
  %5886 = phi i32 [ %5891, %5987 ], [ %5878, %5880 ]
  %5887 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5886)  ; FirstbitLo(value)
  %5888 = add i32 %5887, %5863
  %5889 = and i32 %5887, 31
  %5890 = shl i32 1, %5889
  %5891 = xor i32 %5890, %5886
  %5892 = mul i32 %5888, 72
  %5893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5892, i32 undef)  ; BufferLoad(srv,index,wot)
  %5894 = extractvalue %dx.types.ResRet.f32 %5893, 0
  %5895 = extractvalue %dx.types.ResRet.f32 %5893, 1
  %5896 = extractvalue %dx.types.ResRet.f32 %5893, 2
  %5897 = add i32 %5892, 12
  %5898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5897, i32 undef)  ; BufferLoad(srv,index,wot)
  %5899 = extractvalue %dx.types.ResRet.i32 %5898, 0
  %5900 = add i32 %5892, 16
  %5901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5900, i32 undef)  ; BufferLoad(srv,index,wot)
  %5902 = extractvalue %dx.types.ResRet.f32 %5901, 0
  %5903 = extractvalue %dx.types.ResRet.f32 %5901, 1
  %5904 = extractvalue %dx.types.ResRet.f32 %5901, 2
  %5905 = add i32 %5892, 28
  %5906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5905, i32 undef)  ; BufferLoad(srv,index,wot)
  %5907 = extractvalue %dx.types.ResRet.f32 %5906, 0
  %5908 = add i32 %5892, 32
  %5909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5908, i32 undef)  ; BufferLoad(srv,index,wot)
  %5910 = extractvalue %dx.types.ResRet.f32 %5909, 0
  %5911 = extractvalue %dx.types.ResRet.f32 %5909, 1
  %5912 = extractvalue %dx.types.ResRet.f32 %5909, 2
  %5913 = extractvalue %dx.types.ResRet.f32 %5909, 3
  %5914 = add i32 %5892, 48
  %5915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5914, i32 undef)  ; BufferLoad(srv,index,wot)
  %5916 = extractvalue %dx.types.ResRet.f32 %5915, 0
  %5917 = extractvalue %dx.types.ResRet.f32 %5915, 1
  %5918 = add i32 %5892, 56
  %5919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5918, i32 undef)  ; BufferLoad(srv,index,wot)
  %5920 = extractvalue %dx.types.ResRet.f32 %5919, 0
  %5921 = extractvalue %dx.types.ResRet.f32 %5919, 1
  %5922 = add i32 %5892, 64
  %5923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5922, i32 undef)  ; BufferLoad(srv,index,wot)
  %5924 = extractvalue %dx.types.ResRet.f32 %5923, 0
  %5925 = extractvalue %dx.types.ResRet.f32 %5923, 1
  %5926 = mul i32 %5888, 60
  %5927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5926, i32 undef)  ; BufferLoad(srv,index,wot)
  %5928 = extractvalue %dx.types.ResRet.f32 %5927, 0
  %5929 = extractvalue %dx.types.ResRet.f32 %5927, 1
  %5930 = extractvalue %dx.types.ResRet.f32 %5927, 2
  %5931 = add i32 %5926, 12
  %5932 = add i32 %5926, 48
  %5933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5932, i32 undef)  ; BufferLoad(srv,index,wot)
  %5934 = extractvalue %dx.types.ResRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.ResRet.f32 %5933, 1
  %5936 = extractvalue %dx.types.ResRet.f32 %5933, 2
  %5937 = and i32 %5899, 32767
  %5938 = bitcast float %5894 to i32
  %5939 = icmp eq i32 %5938, -1
  %5940 = bitcast float %5895 to i32
  %5941 = and i32 %5899, 32768
  %5942 = icmp ne i32 %5941, 0
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.CBufRet.f32 %5943, 1
  %5946 = extractvalue %dx.types.CBufRet.f32 %5943, 2
  %5947 = fsub fast float %5928, %5944
  %5948 = fsub fast float %5929, %5945
  %5949 = fsub fast float %5930, %5946
  %5950 = fsub fast float %152, %5947
  %5951 = fsub fast float %153, %5948
  %5952 = fsub fast float %154, %5949
  %5953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5931, i32 undef)  ; BufferLoad(srv,index,wot)
  %5954 = extractvalue %dx.types.ResRet.f32 %5953, 0
  %5955 = extractvalue %dx.types.ResRet.f32 %5953, 1
  %5956 = extractvalue %dx.types.ResRet.f32 %5953, 2
  %5957 = call float @dx.op.dot3.f32(i32 55, float %5950, float %5951, float %5952, float %5954, float %5955, float %5956)  ; Dot3(ax,ay,az,bx,by,bz)
  %5958 = add i32 %5926, 24
  %5959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5958, i32 undef)  ; BufferLoad(srv,index,wot)
  %5960 = extractvalue %dx.types.ResRet.f32 %5959, 0
  %5961 = extractvalue %dx.types.ResRet.f32 %5959, 1
  %5962 = extractvalue %dx.types.ResRet.f32 %5959, 2
  %5963 = call float @dx.op.dot3.f32(i32 55, float %5950, float %5951, float %5952, float %5960, float %5961, float %5962)  ; Dot3(ax,ay,az,bx,by,bz)
  %5964 = add i32 %5926, 36
  %5965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5964, i32 undef)  ; BufferLoad(srv,index,wot)
  %5966 = extractvalue %dx.types.ResRet.f32 %5965, 0
  %5967 = extractvalue %dx.types.ResRet.f32 %5965, 1
  %5968 = extractvalue %dx.types.ResRet.f32 %5965, 2
  %5969 = call float @dx.op.dot3.f32(i32 55, float %5950, float %5951, float %5952, float %5966, float %5967, float %5968)  ; Dot3(ax,ay,az,bx,by,bz)
  %5970 = call float @dx.op.unary.f32(i32 6, float %5957)  ; FAbs(value)
  %5971 = call float @dx.op.unary.f32(i32 6, float %5963)  ; FAbs(value)
  %5972 = call float @dx.op.unary.f32(i32 6, float %5969)  ; FAbs(value)
  %5973 = fsub fast float %5934, %5970
  %5974 = fsub fast float %5935, %5971
  %5975 = fsub fast float %5936, %5972
  %5976 = fmul fast float %5973, %5902
  %5977 = fmul fast float %5974, %5903
  %5978 = fmul fast float %5975, %5904
  %5979 = call float @dx.op.binary.f32(i32 36, float %5977, float %5978)  ; FMin(a,b)
  %5980 = call float @dx.op.binary.f32(i32 36, float %5976, float %5979)  ; FMin(a,b)
  %5981 = call float @dx.op.unary.f32(i32 7, float %5980)  ; Saturate(value)
  %5982 = call float @dx.op.binary.f32(i32 36, float %5885, float %5981)  ; FMin(a,b)
  %5983 = uitofp i1 %5942 to float
  %5984 = fsub fast float 1.000000e+00, %5983
  %5985 = fmul fast float %5982, %5984
  %5986 = fcmp fast ogt float %5985, 0.000000e+00
  br i1 %5986, label %5993, label %5987

; <label>:5987                                    ; preds = %6135, %5881
  %5988 = phi float [ %6199, %6135 ], [ %5882, %5881 ]
  %5989 = phi float [ %6200, %6135 ], [ %5883, %5881 ]
  %5990 = phi float [ %6201, %6135 ], [ %5884, %5881 ]
  %5991 = phi float [ %6202, %6135 ], [ %5885, %5881 ]
  %5992 = icmp eq i32 %5886, %5890
  br i1 %5992, label %6203, label %5881

; <label>:5993                                    ; preds = %5881
  br i1 %5939, label %6051, label %5994

; <label>:5994                                    ; preds = %5993
  %5995 = fsub fast float -0.000000e+00, %5954
  %5996 = fsub fast float -0.000000e+00, %5955
  %5997 = fsub fast float -0.000000e+00, %5956
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5834, float %5835, float %5836, float %5995, float %5996, float %5997)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = fsub fast float -0.000000e+00, %5998
  %6000 = call float @dx.op.dot3.f32(i32 55, float %5950, float %5951, float %5952, float %5995, float %5996, float %5997)  ; Dot3(ax,ay,az,bx,by,bz)
  %6001 = fadd fast float %6000, %5917
  %6002 = fadd fast float %5916, %6000
  %6003 = fsub fast float -0.000000e+00, %6002
  %6004 = fcmp ogt float %5998, -0.000000e+00
  %6005 = select i1 %6004, float %6003, float %6001
  %6006 = call float @dx.op.unary.f32(i32 6, float %5999)  ; FAbs(value)
  %6007 = fdiv fast float 1.000000e+00, %6006
  %6008 = fmul fast float %6005, %6007
  %6009 = call float @dx.op.binary.f32(i32 35, float %6008, float 0.000000e+00)  ; FMax(a,b)
  %6010 = fsub fast float -0.000000e+00, %5960
  %6011 = fsub fast float -0.000000e+00, %5961
  %6012 = fsub fast float -0.000000e+00, %5962
  %6013 = call float @dx.op.dot3.f32(i32 55, float %5834, float %5835, float %5836, float %6010, float %6011, float %6012)  ; Dot3(ax,ay,az,bx,by,bz)
  %6014 = fsub fast float -0.000000e+00, %6013
  %6015 = call float @dx.op.dot3.f32(i32 55, float %5950, float %5951, float %5952, float %6010, float %6011, float %6012)  ; Dot3(ax,ay,az,bx,by,bz)
  %6016 = fadd fast float %6015, %5921
  %6017 = fadd fast float %5920, %6015
  %6018 = fsub fast float -0.000000e+00, %6017
  %6019 = fcmp ogt float %6013, -0.000000e+00
  %6020 = select i1 %6019, float %6018, float %6016
  %6021 = call float @dx.op.unary.f32(i32 6, float %6014)  ; FAbs(value)
  %6022 = fdiv fast float 1.000000e+00, %6021
  %6023 = fmul fast float %6020, %6022
  %6024 = call float @dx.op.binary.f32(i32 35, float %6023, float 0.000000e+00)  ; FMax(a,b)
  %6025 = fsub fast float -0.000000e+00, %5966
  %6026 = fsub fast float -0.000000e+00, %5967
  %6027 = fsub fast float -0.000000e+00, %5968
  %6028 = call float @dx.op.dot3.f32(i32 55, float %5834, float %5835, float %5836, float %6025, float %6026, float %6027)  ; Dot3(ax,ay,az,bx,by,bz)
  %6029 = fsub fast float -0.000000e+00, %6028
  %6030 = call float @dx.op.dot3.f32(i32 55, float %5950, float %5951, float %5952, float %6025, float %6026, float %6027)  ; Dot3(ax,ay,az,bx,by,bz)
  %6031 = fadd fast float %6030, %5925
  %6032 = fadd fast float %5924, %6030
  %6033 = fsub fast float -0.000000e+00, %6032
  %6034 = fcmp ogt float %6028, -0.000000e+00
  %6035 = select i1 %6034, float %6033, float %6031
  %6036 = call float @dx.op.unary.f32(i32 6, float %6029)  ; FAbs(value)
  %6037 = fdiv fast float 1.000000e+00, %6036
  %6038 = fmul fast float %6035, %6037
  %6039 = call float @dx.op.binary.f32(i32 35, float %6038, float 0.000000e+00)  ; FMax(a,b)
  %6040 = call float @dx.op.binary.f32(i32 36, float %6024, float %6039)  ; FMin(a,b)
  %6041 = call float @dx.op.binary.f32(i32 36, float %6009, float %6040)  ; FMin(a,b)
  %6042 = fmul fast float %6041, %5834
  %6043 = fmul fast float %6041, %5835
  %6044 = fmul fast float %6041, %5836
  %6045 = fadd fast float %6042, %152
  %6046 = fadd fast float %6043, %153
  %6047 = fadd fast float %6044, %154
  %6048 = fsub fast float %6045, %5894
  %6049 = fsub fast float %6046, %5895
  %6050 = fsub fast float %6047, %5896
  br label %6058

; <label>:6051                                    ; preds = %5993
  %6052 = fmul fast float %5834, 8.096000e+03
  %6053 = fmul fast float %5835, 8.096000e+03
  %6054 = fmul fast float %5836, 8.096000e+03
  %6055 = fadd fast float %6052, %152
  %6056 = fadd fast float %6053, %153
  %6057 = fadd fast float %6054, %154
  br label %6058

; <label>:6058                                    ; preds = %6051, %5994
  %6059 = phi float [ %5834, %6051 ], [ %6048, %5994 ]
  %6060 = phi float [ %5835, %6051 ], [ %6049, %5994 ]
  %6061 = phi float [ %5836, %6051 ], [ %6050, %5994 ]
  %6062 = phi float [ %6055, %6051 ], [ %6045, %5994 ]
  %6063 = phi float [ %6056, %6051 ], [ %6046, %5994 ]
  %6064 = phi float [ %6057, %6051 ], [ %6047, %5994 ]
  %6065 = fcmp fast olt float %5913, 1.000000e+00
  br i1 %6065, label %6066, label %6097, !dx.controlflow.hints !87

; <label>:6066                                    ; preds = %6058
  %6067 = fmul fast float %6061, %5911
  %6068 = fmul fast float %6060, %5912
  %6069 = fsub fast float %6067, %6068
  %6070 = fmul fast float %6059, %5912
  %6071 = fmul fast float %6061, %5910
  %6072 = fsub fast float %6070, %6071
  %6073 = fmul fast float %6060, %5910
  %6074 = fmul fast float %6059, %5911
  %6075 = fsub fast float %6073, %6074
  %6076 = fmul fast float %6069, 2.000000e+00
  %6077 = fmul fast float %6072, 2.000000e+00
  %6078 = fmul fast float %6075, 2.000000e+00
  %6079 = fmul fast float %6076, %5913
  %6080 = fmul fast float %6077, %5913
  %6081 = fmul fast float %6078, %5913
  %6082 = fmul fast float %6078, %5911
  %6083 = fmul fast float %6077, %5912
  %6084 = fmul fast float %6076, %5912
  %6085 = fmul fast float %6078, %5910
  %6086 = fmul fast float %6077, %5910
  %6087 = fmul fast float %6076, %5911
  %6088 = fadd fast float %6082, %6059
  %6089 = fadd fast float %6088, %6079
  %6090 = fsub fast float %6089, %6083
  %6091 = fsub fast float %6060, %6085
  %6092 = fadd fast float %6091, %6080
  %6093 = fadd fast float %6092, %6084
  %6094 = fadd fast float %6081, %6061
  %6095 = fsub fast float %6094, %6087
  %6096 = fadd fast float %6095, %6086
  br label %6097

; <label>:6097                                    ; preds = %6066, %6058
  %6098 = phi float [ %6090, %6066 ], [ %6059, %6058 ]
  %6099 = phi float [ %6093, %6066 ], [ %6060, %6058 ]
  %6100 = phi float [ %6096, %6066 ], [ %6061, %6058 ]
  br i1 %5939, label %6132, label %6101

; <label>:6101                                    ; preds = %6097
  %6102 = fmul fast float %5445, 0x400187C840000000
  %6103 = fadd fast float %6102, 0xC00EFC2120000000
  %6104 = fmul fast float %6103, %5445
  %6105 = fadd fast float %6104, 0x3FE5D16340000000
  %6106 = fmul fast float %6105, %5445
  %6107 = fadd fast float %6106, 1.000000e+00
  %6108 = call float @dx.op.unary.f32(i32 7, float %6107)  ; Saturate(value)
  %6109 = fsub fast float %6062, %152
  %6110 = fsub fast float %6063, %153
  %6111 = fsub fast float %6064, %154
  %6112 = fsub fast float %6062, %5894
  %6113 = fsub fast float %6063, %5895
  %6114 = fsub fast float %6064, %5896
  %6115 = call float @dx.op.dot3.f32(i32 55, float %6109, float %6110, float %6111, float %6109, float %6110, float %6111)  ; Dot3(ax,ay,az,bx,by,bz)
  %6116 = call float @dx.op.dot3.f32(i32 55, float %6112, float %6113, float %6114, float %6112, float %6113, float %6114)  ; Dot3(ax,ay,az,bx,by,bz)
  %6117 = fadd fast float %6116, 0x3EE4F8B580000000
  %6118 = fdiv fast float %6115, %6117
  %6119 = bitcast float %6118 to i32
  %6120 = ashr i32 %6119, 1
  %6121 = add nsw i32 %6120, 532487669
  %6122 = bitcast i32 %6121 to float
  %6123 = fmul fast float %6122, %6108
  %6124 = call float @dx.op.unary.f32(i32 7, float %6123)  ; Saturate(value)
  %6125 = fmul fast float %6124, 0x4009981AE0000000
  %6126 = fsub fast float 0x40111BBD80000000, %6125
  %6127 = fmul fast float %6126, %6124
  %6128 = fadd fast float %6127, 0xC0009F6020000000
  %6129 = fmul fast float %6128, %6124
  %6130 = fadd fast float %6129, 1.000000e+00
  %6131 = call float @dx.op.unary.f32(i32 7, float %6130)  ; Saturate(value)
  br label %6135

; <label>:6132                                    ; preds = %6097
  %6133 = icmp ne i32 %5940, -1
  %6134 = zext i1 %6133 to i32
  br label %6135

; <label>:6135                                    ; preds = %6132, %6101
  %6136 = phi float [ %5445, %6132 ], [ %6131, %6101 ]
  %6137 = phi i32 [ %6134, %6132 ], [ 0, %6101 ]
  %6138 = fmul float %6136, 5.000000e+00
  %6139 = fsub float 5.000000e+00, %6138
  %6140 = icmp ne i32 %6137, 0
  %6141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.f32 %6141, 3
  %6143 = fadd fast float %6142, %6139
  %6144 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6143)  ; FMax(a,b)
  %6145 = call float @dx.op.unary.f32(i32 6, float %6098)  ; FAbs(value)
  %6146 = call float @dx.op.unary.f32(i32 6, float %6099)  ; FAbs(value)
  %6147 = fadd fast float %6146, %6145
  %6148 = call float @dx.op.unary.f32(i32 6, float %6100)  ; FAbs(value)
  %6149 = fadd fast float %6147, %6148
  %6150 = fcmp fast oeq float %6149, 0.000000e+00
  %6151 = fdiv fast float 1.000000e+00, %6149
  %6152 = select i1 %6150, float 1.000000e+00, float %6151
  %6153 = fmul fast float %6152, %6098
  %6154 = fmul fast float %6152, %6099
  %6155 = call float @dx.op.unary.f32(i32 6, float %6154)  ; FAbs(value)
  %6156 = call float @dx.op.unary.f32(i32 6, float %6153)  ; FAbs(value)
  %6157 = fsub fast float 1.000000e+00, %6155
  %6158 = fsub fast float 1.000000e+00, %6156
  %6159 = fcmp fast oge float %6153, 0.000000e+00
  %6160 = fcmp fast oge float %6154, 0.000000e+00
  %6161 = select i1 %6159, float 1.000000e+00, float -1.000000e+00
  %6162 = select i1 %6160, float 1.000000e+00, float -1.000000e+00
  %6163 = fcmp fast ole float %6100, 0.000000e+00
  %6164 = fmul fast float %6161, %6157
  %6165 = fmul fast float %6162, %6158
  %6166 = select i1 %6163, float %6164, float %6153
  %6167 = select i1 %6163, float %6165, float %6154
  %6168 = fmul fast float %6166, 5.000000e-01
  %6169 = fmul fast float %6167, 5.000000e-01
  %6170 = fadd fast float %6168, 5.000000e-01
  %6171 = fadd fast float %6169, 5.000000e-01
  %6172 = uitofp i32 %5937 to float
  %6173 = call float @dx.op.binary.f32(i32 36, float %6144, float 3.000000e+00)  ; FMin(a,b)
  %6174 = fadd fast float %6173, 2.000000e+00
  %6175 = call float @dx.op.unary.f32(i32 21, float %6174)  ; Exp(value)
  %6176 = extractvalue %dx.types.CBufRet.f32 %6141, 1
  %6177 = fmul fast float %6176, %6175
  %6178 = fmul fast float %6177, 2.000000e+00
  %6179 = fsub fast float 1.000000e+00, %6178
  %6180 = fmul fast float %6170, %6179
  %6181 = fmul fast float %6171, %6179
  %6182 = fadd fast float %6180, %6177
  %6183 = fadd fast float %6181, %6177
  %6184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %6182, float %6183, float %6172, float undef, i32 0, i32 0, i32 undef, float %6144)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6185 = extractvalue %dx.types.ResRet.f32 %6184, 0
  %6186 = extractvalue %dx.types.ResRet.f32 %6184, 1
  %6187 = extractvalue %dx.types.ResRet.f32 %6184, 2
  %6188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6189 = extractvalue %dx.types.CBufRet.f32 %6188, 3
  %6190 = fmul fast float %6189, %5907
  %6191 = call float @dx.op.binary.f32(i32 36, float %5475, float %6190)  ; FMin(a,b)
  %6192 = select i1 %6140, float %6191, float %6190
  %6193 = fmul fast float %6185, %5985
  %6194 = fmul fast float %6193, %6192
  %6195 = fmul fast float %6186, %5985
  %6196 = fmul fast float %6195, %6192
  %6197 = fmul fast float %6187, %5985
  %6198 = fmul fast float %6197, %6192
  %6199 = fadd fast float %6194, %5882
  %6200 = fadd fast float %6196, %5883
  %6201 = fadd fast float %6198, %5884
  %6202 = fsub fast float %5885, %5985
  br label %5987

; <label>:6203                                    ; preds = %5987
  br label %6204

; <label>:6204                                    ; preds = %6203, %5851
  %6205 = phi float [ %5852, %5851 ], [ %5988, %6203 ]
  %6206 = phi float [ %5853, %5851 ], [ %5989, %6203 ]
  %6207 = phi float [ %5854, %5851 ], [ %5990, %6203 ]
  %6208 = phi float [ %5855, %5851 ], [ %5991, %6203 ]
  %6209 = add i32 %5856, 1
  %6210 = icmp ugt i32 %6209, %5848
  br i1 %6210, label %6211, label %5851, !llvm.loop !88

; <label>:6211                                    ; preds = %6204
  br label %6212

; <label>:6212                                    ; preds = %6211, %5833
  %6213 = phi float [ 0.000000e+00, %5833 ], [ %6205, %6211 ]
  %6214 = phi float [ 0.000000e+00, %5833 ], [ %6206, %6211 ]
  %6215 = phi float [ 0.000000e+00, %5833 ], [ %6207, %6211 ]
  %6216 = call float @dx.op.dot3.f32(i32 55, float %6213, float %6214, float %6215, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6217 = select i1 %245, float 0.000000e+00, float %6213
  %6218 = select i1 %245, float %6216, float %6214
  %6219 = select i1 %245, float 0.000000e+00, float %6215
  %6220 = fcmp fast olt float %5786, 0.000000e+00
  %6221 = call float @dx.op.unary.f32(i32 6, float %5786)  ; FAbs(value)
  %6222 = fmul fast float %6221, %5715
  %6223 = fmul fast float %6221, %5716
  %6224 = fmul fast float %6221, %5717
  %6225 = select i1 %6220, float %5715, float %6222
  %6226 = select i1 %6220, float %5716, float %6223
  %6227 = select i1 %6220, float %5717, float %6224
  %6228 = fsub fast float 1.000000e+00, %6221
  %6229 = call float @dx.op.unary.f32(i32 7, float %6228)  ; Saturate(value)
  %6230 = fmul fast float %6229, %6217
  %6231 = fmul fast float %6229, %6218
  %6232 = fmul fast float %6229, %6219
  %6233 = fadd fast float %6225, %6230
  %6234 = fadd fast float %6226, %6231
  %6235 = fadd fast float %6227, %6232
  br label %6236

; <label>:6236                                    ; preds = %6212, %5769
  %6237 = phi float [ %5715, %5769 ], [ %6233, %6212 ]
  %6238 = phi float [ %5716, %5769 ], [ %6234, %6212 ]
  %6239 = phi float [ %5717, %5769 ], [ %6235, %6212 ]
  %6240 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6241 = fcmp fast ogt float %6240, 0x3E7FF19E20000000
  %6242 = fdiv fast float 1.000000e+00, %6240
  %6243 = select i1 %6241, float %6242, float 0.000000e+00
  %6244 = fmul fast float %6243, %5442
  %6245 = fmul fast float %6243, %5443
  %6246 = fmul fast float %6243, %5444
  %6247 = fadd fast float %6244, -1.000000e+00
  %6248 = fadd fast float %6245, -1.000000e+00
  %6249 = fadd fast float %6246, -1.000000e+00
  %6250 = fmul fast float %6247, 5.000000e-01
  %6251 = fmul fast float %6248, 5.000000e-01
  %6252 = fmul fast float %6249, 5.000000e-01
  %6253 = fadd fast float %6250, 1.000000e+00
  %6254 = fadd fast float %6251, 1.000000e+00
  %6255 = fadd fast float %6252, 1.000000e+00
  %6256 = call float @dx.op.binary.f32(i32 35, float %5449, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6257 = fdiv fast float %4446, %6256
  %6258 = fcmp fast olt float %5163, 1.270000e+02
  %6259 = fcmp fast olt float %5164, 1.270000e+02
  %6260 = fcmp fast olt float %5165, 1.270000e+02
  %6261 = fmul fast float %5163, 0xBFF7154760000000
  %6262 = fmul fast float %6261, %6257
  %6263 = fmul fast float %5164, 0xBFF7154760000000
  %6264 = fmul fast float %6263, %6257
  %6265 = fmul fast float %5165, 0xBFF7154760000000
  %6266 = fmul fast float %6265, %6257
  %6267 = call float @dx.op.unary.f32(i32 21, float %6262)  ; Exp(value)
  %6268 = call float @dx.op.unary.f32(i32 21, float %6264)  ; Exp(value)
  %6269 = call float @dx.op.unary.f32(i32 21, float %6266)  ; Exp(value)
  %6270 = call float @dx.op.unary.f32(i32 7, float %6267)  ; Saturate(value)
  %6271 = call float @dx.op.unary.f32(i32 7, float %6268)  ; Saturate(value)
  %6272 = call float @dx.op.unary.f32(i32 7, float %6269)  ; Saturate(value)
  %6273 = select i1 %6258, float %6270, float 0.000000e+00
  %6274 = select i1 %6259, float %6271, float 0.000000e+00
  %6275 = select i1 %6260, float %6272, float 0.000000e+00
  %6276 = fmul fast float %6273, %5775
  %6277 = fmul fast float %6274, %5775
  %6278 = fmul fast float %6275, %5775
  %6279 = fadd fast float %6276, -1.000000e+00
  %6280 = fadd fast float %6277, -1.000000e+00
  %6281 = fadd fast float %6278, -1.000000e+00
  %6282 = fmul fast float %6279, %5118
  %6283 = fmul fast float %6280, %5118
  %6284 = fmul fast float %6281, %5118
  %6285 = fmul fast float %6237, %5770
  %6286 = fmul fast float %6238, %5771
  %6287 = fmul fast float %6239, %5772
  %6288 = fsub fast float 1.000000e+00, %5449
  %6289 = bitcast float %6288 to i32
  %6290 = sitofp i32 %6289 to float
  %6291 = fmul fast float %6290, 5.000000e+00
  %6292 = fadd fast float %6291, 0xC1EFBF8940000000
  %6293 = fptosi float %6292 to i32
  %6294 = bitcast i32 %6293 to float
  %6295 = fmul fast float %6294, %5093
  %6296 = fmul fast float %5707, %6295
  %6297 = fmul fast float %6296, %5775
  %6298 = fmul fast float %6297, %6253
  %6299 = fmul fast float %5708, %6295
  %6300 = fmul fast float %6299, %5775
  %6301 = fmul fast float %6300, %6254
  %6302 = fmul fast float %5709, %6295
  %6303 = fmul fast float %6302, %5775
  %6304 = fmul fast float %6303, %6255
  %6305 = fadd fast float %6285, %5076
  %6306 = fadd fast float %6305, %6298
  %6307 = fmul fast float %6306, %5118
  %6308 = fadd fast float %6286, %5077
  %6309 = fadd fast float %6308, %6301
  %6310 = fmul fast float %6309, %5118
  %6311 = fadd fast float %6287, %5078
  %6312 = fadd fast float %6311, %6304
  %6313 = fmul fast float %6312, %5118
  %6314 = fmul fast float %5440, 0x4012D0A400000000
  %6315 = fadd fast float %6284, 1.000000e+00
  %6316 = fadd fast float %6283, 1.000000e+00
  %6317 = fadd fast float %6282, 1.000000e+00
  %6318 = fmul fast float %5775, %5709
  %6319 = fmul fast float %5775, %5708
  %6320 = fmul fast float %5775, %5707
  %6321 = fmul fast float %5464, %5118
  %6322 = fsub fast float 1.000000e+00, %6321
  %6323 = call float @dx.op.unary.f32(i32 7, float %6322)  ; Saturate(value)
  %6324 = fsub fast float 1.000000e+00, %6323
  %6325 = fadd fast float %6314, 0x3FDB6377A0000000
  %6326 = fmul fast float %6324, %6325
  %6327 = call float @dx.op.dot3.f32(i32 55, float %5181, float %5182, float %5183, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6328 = fadd fast float %6326, %6327
  %6329 = call float @dx.op.unary.f32(i32 7, float %6328)  ; Saturate(value)
  %6330 = call float @dx.op.binary.f32(i32 35, float %6329, float 0x3F847AE140000000)  ; FMax(a,b)
  %6331 = fmul fast float %6330, %6330
  %6332 = fmul fast float %6331, %6331
  %6333 = fmul fast float %6332, 0xC00A935000000000
  %6334 = call float @dx.op.unary.f32(i32 21, float %6333)  ; Exp(value)
  %6335 = fsub fast float 1.000000e+00, %6334
  %6336 = fmul fast float %6317, %5711
  %6337 = fmul fast float %6336, %6335
  %6338 = fmul fast float %6316, %5712
  %6339 = fmul fast float %6338, %6335
  %6340 = fmul fast float %6315, %5713
  %6341 = fmul fast float %6340, %6335
  %6342 = fadd fast float %6337, %6320
  %6343 = fmul fast float %6342, %5118
  %6344 = fadd fast float %6339, %6319
  %6345 = fmul fast float %6344, %5118
  %6346 = fadd fast float %6341, %6318
  %6347 = fmul fast float %6346, %5118
  %6348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6348, 3
  %6350 = fcmp fast oeq float %6349, 0.000000e+00
  br i1 %6350, label %7954, label %6351

; <label>:6351                                    ; preds = %6236
  %6352 = extractvalue %dx.types.CBufRet.f32 %6348, 0
  %6353 = extractvalue %dx.types.CBufRet.f32 %6348, 1
  %6354 = extractvalue %dx.types.CBufRet.f32 %6348, 2
  %6355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6356 = extractvalue %dx.types.CBufRet.f32 %6355, 0
  %6357 = extractvalue %dx.types.CBufRet.f32 %6355, 1
  %6358 = extractvalue %dx.types.CBufRet.f32 %6355, 2
  %6359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6360 = extractvalue %dx.types.CBufRet.f32 %6359, 0
  %6361 = extractvalue %dx.types.CBufRet.f32 %6359, 1
  %6362 = call float @dx.op.dot3.f32(i32 55, float %6356, float %6357, float %6358, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6363 = select i1 %245, float %6360, float %6356
  %6364 = select i1 %245, float %6362, float %6357
  %6365 = select i1 %245, float %6361, float %6358
  %6366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6367 = extractvalue %dx.types.CBufRet.f32 %6366, 2
  %6368 = fmul fast float %6367, %104
  %6369 = fmul fast float %6367, %105
  %6370 = fmul fast float %6367, %106
  %6371 = fadd fast float %6368, %152
  %6372 = fadd fast float %6369, %153
  %6373 = fadd fast float %6370, %154
  %6374 = fcmp fast olt float %6349, 0.000000e+00
  br i1 %6374, label %7470, label %6375

; <label>:6375                                    ; preds = %6351
  %6376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6377 = extractvalue %dx.types.CBufRet.f32 %6376, 0
  %6378 = extractvalue %dx.types.CBufRet.f32 %6376, 1
  %6379 = extractvalue %dx.types.CBufRet.f32 %6376, 2
  %6380 = extractvalue %dx.types.CBufRet.f32 %6376, 3
  %6381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6382 = extractvalue %dx.types.CBufRet.f32 %6381, 0
  %6383 = extractvalue %dx.types.CBufRet.f32 %6381, 1
  %6384 = extractvalue %dx.types.CBufRet.f32 %6381, 2
  %6385 = extractvalue %dx.types.CBufRet.f32 %6381, 3
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  %6388 = extractvalue %dx.types.CBufRet.f32 %6386, 1
  %6389 = extractvalue %dx.types.CBufRet.f32 %6386, 2
  %6390 = extractvalue %dx.types.CBufRet.f32 %6386, 3
  %6391 = fmul fast float %6377, %6371
  %6392 = call float @dx.op.tertiary.f32(i32 46, float %6372, float %6378, float %6391)  ; FMad(a,b,c)
  %6393 = call float @dx.op.tertiary.f32(i32 46, float %6373, float %6379, float %6392)  ; FMad(a,b,c)
  %6394 = fadd fast float %6393, %6380
  %6395 = fmul fast float %6382, %6371
  %6396 = call float @dx.op.tertiary.f32(i32 46, float %6372, float %6383, float %6395)  ; FMad(a,b,c)
  %6397 = call float @dx.op.tertiary.f32(i32 46, float %6373, float %6384, float %6396)  ; FMad(a,b,c)
  %6398 = fadd fast float %6397, %6385
  %6399 = fmul fast float %6387, %6371
  %6400 = call float @dx.op.tertiary.f32(i32 46, float %6372, float %6388, float %6399)  ; FMad(a,b,c)
  %6401 = call float @dx.op.tertiary.f32(i32 46, float %6373, float %6389, float %6400)  ; FMad(a,b,c)
  %6402 = fadd fast float %6401, %6390
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.CBufRet.f32 %6403, 3
  %6407 = fmul fast float %6406, %6394
  %6408 = fmul fast float %6406, %6398
  %6409 = fadd fast float %6407, %6404
  %6410 = fadd fast float %6408, %6405
  %6411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6411, 0
  %6413 = extractvalue %dx.types.CBufRet.f32 %6411, 1
  %6414 = extractvalue %dx.types.CBufRet.f32 %6411, 3
  %6415 = fmul fast float %6414, %6394
  %6416 = fmul fast float %6414, %6398
  %6417 = fadd fast float %6415, %6412
  %6418 = fadd fast float %6416, %6413
  %6419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6420 = extractvalue %dx.types.CBufRet.f32 %6419, 1
  %6421 = fsub fast float %6420, %6402
  %6422 = extractvalue %dx.types.CBufRet.f32 %6419, 2
  %6423 = fmul fast float %6421, %6422
  %6424 = fsub fast float 1.000000e+00, %6423
  %6425 = call float @dx.op.unary.f32(i32 7, float %6424)  ; Saturate(value)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6411, 2
  %6427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.f32 %6427, 2
  %6429 = fadd fast float %6428, %6426
  %6430 = fcmp fast ogt float %6429, 0.000000e+00
  br i1 %6430, label %6431, label %6455

; <label>:6431                                    ; preds = %6375
  %6432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.f32 %6432, 0
  %6434 = extractvalue %dx.types.CBufRet.f32 %6432, 1
  %6435 = fsub fast float %6417, %6433
  %6436 = fsub fast float %6418, %6434
  %6437 = fcmp fast olt float %6435, 0.000000e+00
  %6438 = fcmp fast olt float %6436, 0.000000e+00
  %6439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6450 = extractvalue %dx.types.CBufRet.f32 %6366, 0
  %6451 = call float @dx.op.binary.f32(i32 35, float %6448, float %6449)  ; FMax(a,b)
  %6452 = fsub fast float %6450, %6451
  %6453 = call float @dx.op.unary.f32(i32 7, float %6452)  ; Saturate(value)
  %6454 = fmul fast float %6453, %6425
  br label %6455

; <label>:6455                                    ; preds = %6431, %6375
  %6456 = phi float [ %6454, %6431 ], [ 0.000000e+00, %6375 ]
  %6457 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6458 = extractvalue %dx.types.CBufRet.f32 %6427, 1
  %6459 = fadd fast float %6458, %6457
  %6460 = fcmp fast ogt float %6459, 0.000000e+00
  %6461 = extractvalue %dx.types.CBufRet.f32 %6366, 0
  br i1 %6460, label %6462, label %6485

; <label>:6462                                    ; preds = %6455
  %6463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6464 = extractvalue %dx.types.CBufRet.f32 %6463, 0
  %6465 = extractvalue %dx.types.CBufRet.f32 %6463, 1
  %6466 = fsub fast float %6409, %6464
  %6467 = fsub fast float %6410, %6465
  %6468 = fcmp fast olt float %6466, 0.000000e+00
  %6469 = fcmp fast olt float %6467, 0.000000e+00
  %6470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6471 = extractvalue %dx.types.CBufRet.f32 %6470, 0
  %6472 = extractvalue %dx.types.CBufRet.f32 %6470, 1
  %6473 = extractvalue %dx.types.CBufRet.f32 %6470, 2
  %6474 = extractvalue %dx.types.CBufRet.f32 %6470, 3
  %6475 = select i1 %6468, float %6471, float %6473
  %6476 = select i1 %6469, float %6472, float %6474
  %6477 = fmul fast float %6475, %6466
  %6478 = fmul fast float %6476, %6467
  %6479 = call float @dx.op.unary.f32(i32 6, float %6477)  ; FAbs(value)
  %6480 = call float @dx.op.unary.f32(i32 6, float %6478)  ; FAbs(value)
  %6481 = call float @dx.op.binary.f32(i32 35, float %6479, float %6480)  ; FMax(a,b)
  %6482 = fsub fast float %6461, %6481
  %6483 = call float @dx.op.unary.f32(i32 7, float %6482)  ; Saturate(value)
  %6484 = fmul fast float %6483, %6425
  br label %6485

; <label>:6485                                    ; preds = %6462, %6455
  %6486 = phi float [ %6484, %6462 ], [ 0.000000e+00, %6455 ]
  %6487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6488 = extractvalue %dx.types.CBufRet.f32 %6487, 1
  %6489 = call float @dx.op.unary.f32(i32 7, float %6488)  ; Saturate(value)
  %6490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6490, 0
  %6492 = extractvalue %dx.types.CBufRet.f32 %6490, 1
  %6493 = fsub fast float %6394, %6491
  %6494 = fsub fast float %6398, %6492
  %6495 = fcmp fast olt float %6493, 0.000000e+00
  %6496 = fcmp fast olt float %6494, 0.000000e+00
  %6497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6498 = extractvalue %dx.types.CBufRet.f32 %6497, 0
  %6499 = extractvalue %dx.types.CBufRet.f32 %6497, 1
  %6500 = extractvalue %dx.types.CBufRet.f32 %6497, 2
  %6501 = extractvalue %dx.types.CBufRet.f32 %6497, 3
  %6502 = select i1 %6495, float %6498, float %6500
  %6503 = select i1 %6496, float %6499, float %6501
  %6504 = fmul fast float %6502, %6493
  %6505 = fmul fast float %6503, %6494
  %6506 = call float @dx.op.unary.f32(i32 6, float %6504)  ; FAbs(value)
  %6507 = call float @dx.op.unary.f32(i32 6, float %6505)  ; FAbs(value)
  %6508 = call float @dx.op.binary.f32(i32 35, float %6506, float %6507)  ; FMax(a,b)
  %6509 = fsub fast float %6461, %6508
  %6510 = call float @dx.op.unary.f32(i32 7, float %6509)  ; Saturate(value)
  %6511 = call float @dx.op.binary.f32(i32 36, float %6510, float %6489)  ; FMin(a,b)
  %6512 = fmul fast float %6511, %6425
  %6513 = fsub fast float %6486, %6512
  %6514 = fsub fast float %6456, %6486
  %6515 = fsub fast float %6514, %6512
  %6516 = call float @dx.op.binary.f32(i32 35, float %6486, float %6456)  ; FMax(a,b)
  %6517 = call float @dx.op.binary.f32(i32 35, float %6512, float %6516)  ; FMax(a,b)
  %6518 = fcmp fast olt float %6517, 1.000000e+00
  br i1 %6518, label %6519, label %6917, !dx.controlflow.hints !90

; <label>:6519                                    ; preds = %6485
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 0
  %6522 = fcmp fast une float %6521, 0.000000e+00
  br i1 %6522, label %6523, label %6917, !dx.controlflow.hints !91

; <label>:6523                                    ; preds = %6519
  %6524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.f32 %6524, 0
  %6526 = extractvalue %dx.types.CBufRet.f32 %6524, 1
  %6527 = extractvalue %dx.types.CBufRet.f32 %6524, 2
  %6528 = extractvalue %dx.types.CBufRet.f32 %6524, 3
  %6529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6530 = extractvalue %dx.types.CBufRet.f32 %6529, 0
  %6531 = extractvalue %dx.types.CBufRet.f32 %6529, 1
  %6532 = extractvalue %dx.types.CBufRet.f32 %6529, 2
  %6533 = extractvalue %dx.types.CBufRet.f32 %6529, 3
  %6534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6534, 0
  %6536 = extractvalue %dx.types.CBufRet.f32 %6534, 1
  %6537 = extractvalue %dx.types.CBufRet.f32 %6534, 2
  %6538 = extractvalue %dx.types.CBufRet.f32 %6534, 3
  %6539 = fmul fast float %6525, %6371
  %6540 = call float @dx.op.tertiary.f32(i32 46, float %6372, float %6526, float %6539)  ; FMad(a,b,c)
  %6541 = call float @dx.op.tertiary.f32(i32 46, float %6373, float %6527, float %6540)  ; FMad(a,b,c)
  %6542 = fadd fast float %6541, %6528
  %6543 = fmul fast float %6530, %6371
  %6544 = call float @dx.op.tertiary.f32(i32 46, float %6372, float %6531, float %6543)  ; FMad(a,b,c)
  %6545 = call float @dx.op.tertiary.f32(i32 46, float %6373, float %6532, float %6544)  ; FMad(a,b,c)
  %6546 = fadd fast float %6545, %6533
  %6547 = fmul fast float %6535, %6371
  %6548 = call float @dx.op.tertiary.f32(i32 46, float %6372, float %6536, float %6547)  ; FMad(a,b,c)
  %6549 = call float @dx.op.tertiary.f32(i32 46, float %6373, float %6537, float %6548)  ; FMad(a,b,c)
  %6550 = fadd fast float %6549, %6538
  %6551 = fcmp fast oge float %6542, 1.000000e+00
  %6552 = fcmp fast oge float %6546, 1.000000e+00
  %6553 = or i1 %6551, %6552
  %6554 = fcmp fast olt float %6542, 0.000000e+00
  %6555 = fcmp fast olt float %6546, 0.000000e+00
  %6556 = or i1 %6554, %6555
  %6557 = or i1 %6553, %6556
  br i1 %6557, label %6917, label %6558, !dx.controlflow.hints !92

; <label>:6558                                    ; preds = %6523
  %6559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6560 = extractvalue %dx.types.CBufRet.f32 %6559, 0
  %6561 = extractvalue %dx.types.CBufRet.f32 %6559, 1
  %6562 = extractvalue %dx.types.CBufRet.f32 %6559, 2
  %6563 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6564 = extractvalue %dx.types.CBufRet.i32 %6563, 2
  %6565 = uitofp i32 %6564 to float
  %6566 = extractvalue %dx.types.CBufRet.i32 %6563, 3
  %6567 = uitofp i32 %6566 to float
  %6568 = extractvalue %dx.types.CBufRet.f32 %6559, 3
  %6569 = fmul fast float %6568, 2.000000e+00
  %6570 = fsub fast float %6542, %6560
  %6571 = fsub fast float %6546, %6561
  %6572 = fmul fast float %6569, %6570
  %6573 = fmul fast float %6569, %6571
  %6574 = fdiv fast float 1.000000e+00, %6354
  %6575 = fmul fast float %6573, %6574
  %6576 = call float @dx.op.unary.f32(i32 6, float %6575)  ; FAbs(value)
  %6577 = fmul fast float %6562, %6373
  %6578 = fmul fast float %6577, %6569
  %6579 = call float @dx.op.unary.f32(i32 6, float %6578)  ; FAbs(value)
  %6580 = call float @dx.op.unary.f32(i32 6, float %6572)  ; FAbs(value)
  %6581 = call float @dx.op.binary.f32(i32 35, float %6579, float %6576)  ; FMax(a,b)
  %6582 = call float @dx.op.binary.f32(i32 35, float %6580, float %6581)  ; FMax(a,b)
  %6583 = fmul fast float %6582, 2.000000e+00
  %6584 = call float @dx.op.unary.f32(i32 23, float %6583)  ; Log(value)
  %6585 = call float @dx.op.binary.f32(i32 35, float %6584, float %6565)  ; FMax(a,b)
  %6586 = call float @dx.op.unary.f32(i32 22, float %6585)  ; Frc(value)
  %6587 = fadd fast float %6586, 0xBFEA666660000000
  %6588 = fmul fast float %6587, 8.000000e+00
  %6589 = call float @dx.op.unary.f32(i32 7, float %6588)  ; Saturate(value)
  %6590 = call float @dx.op.unary.f32(i32 27, float %6585)  ; Round_ni(value)
  %6591 = fadd fast float %6590, %6589
  %6592 = call float @dx.op.binary.f32(i32 36, float %6591, float %6567)  ; FMin(a,b)
  %6593 = call float @dx.op.unary.f32(i32 27, float %6592)  ; Round_ni(value)
  %6594 = fsub fast float -0.000000e+00, %6593
  %6595 = call float @dx.op.unary.f32(i32 21, float %6594)  ; Exp(value)
  %6596 = fmul fast float %6595, %6569
  %6597 = fmul fast float %6596, %6542
  %6598 = fmul fast float %6596, %6546
  %6599 = fmul fast float %6597, 2.500000e-01
  %6600 = fmul fast float %6598, 2.500000e-01
  %6601 = fadd fast float %6599, 5.000000e-01
  %6602 = fadd fast float %6600, 5.000000e-01
  %6603 = fsub fast float %6567, %6565
  %6604 = fptoui float %6603 to i32
  %6605 = add i32 %6604, 320
  %6606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %6605)  ; CBufferLoadLegacy(handle,regIndex)
  %6607 = extractvalue %dx.types.CBufRet.f32 %6606, 0
  %6608 = extractvalue %dx.types.CBufRet.f32 %6606, 1
  %6609 = fcmp fast une float %6592, %6567
  %6610 = fsub fast float %6542, %6607
  %6611 = fsub fast float %6546, %6608
  %6612 = call float @dx.op.unary.f32(i32 6, float %6610)  ; FAbs(value)
  %6613 = call float @dx.op.unary.f32(i32 6, float %6611)  ; FAbs(value)
  %6614 = fmul fast float %6612, %6596
  %6615 = fmul fast float %6613, %6596
  %6616 = fcmp fast olt float %6614, 1.000000e+00
  %6617 = fcmp fast olt float %6615, 1.000000e+00
  %6618 = and i1 %6616, %6617
  %6619 = or i1 %6609, %6618
  br i1 %6619, label %6620, label %6917, !dx.controlflow.hints !93

; <label>:6620                                    ; preds = %6558
  %6621 = fmul fast float %6598, 5.000000e-01
  %6622 = fmul fast float %6597, 5.000000e-01
  %6623 = fadd fast float %6621, 5.000000e-01
  %6624 = fadd fast float %6622, 5.000000e-01
  %6625 = sitofp i32 %6564 to float
  %6626 = fsub fast float %6592, %6625
  %6627 = call float @dx.op.unary.f32(i32 27, float %6626)  ; Round_ni(value)
  %6628 = call float @dx.op.unary.f32(i32 22, float %6592)  ; Frc(value)
  %6629 = call float @dx.op.unary.f32(i32 22, float %6624)  ; Frc(value)
  %6630 = call float @dx.op.unary.f32(i32 22, float %6623)  ; Frc(value)
  %6631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6629, float %6630, float %6627, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6632 = extractvalue %dx.types.ResRet.f32 %6631, 0
  %6633 = extractvalue %dx.types.ResRet.f32 %6631, 1
  %6634 = extractvalue %dx.types.ResRet.f32 %6631, 2
  %6635 = extractvalue %dx.types.ResRet.f32 %6631, 3
  %6636 = fcmp fast ogt float %6628, 0.000000e+00
  br i1 %6636, label %6637, label %6658, !dx.controlflow.hints !94

; <label>:6637                                    ; preds = %6620
  %6638 = fadd fast float %6627, 1.000000e+00
  %6639 = call float @dx.op.unary.f32(i32 22, float %6601)  ; Frc(value)
  %6640 = call float @dx.op.unary.f32(i32 22, float %6602)  ; Frc(value)
  %6641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6639, float %6640, float %6638, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6642 = extractvalue %dx.types.ResRet.f32 %6641, 0
  %6643 = extractvalue %dx.types.ResRet.f32 %6641, 1
  %6644 = extractvalue %dx.types.ResRet.f32 %6641, 2
  %6645 = extractvalue %dx.types.ResRet.f32 %6641, 3
  %6646 = fsub fast float %6642, %6632
  %6647 = fsub fast float %6643, %6633
  %6648 = fsub fast float %6644, %6634
  %6649 = fsub fast float %6645, %6635
  %6650 = fmul fast float %6646, %6628
  %6651 = fmul fast float %6647, %6628
  %6652 = fmul fast float %6648, %6628
  %6653 = fmul fast float %6649, %6628
  %6654 = fadd fast float %6650, %6632
  %6655 = fadd fast float %6651, %6633
  %6656 = fadd fast float %6652, %6634
  %6657 = fadd fast float %6653, %6635
  br label %6658

; <label>:6658                                    ; preds = %6637, %6620
  %6659 = phi float [ %6654, %6637 ], [ %6632, %6620 ]
  %6660 = phi float [ %6655, %6637 ], [ %6633, %6620 ]
  %6661 = phi float [ %6656, %6637 ], [ %6634, %6620 ]
  %6662 = phi float [ %6657, %6637 ], [ %6635, %6620 ]
  %6663 = fadd fast float %6659, -5.000000e-01
  %6664 = fadd fast float %6661, -5.000000e-01
  %6665 = fmul fast float %6663, 0xBFD5555560000000
  %6666 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6664, float %6665)  ; FMad(a,b,c)
  %6667 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6660, float 0.000000e+00)  ; FMad(a,b,c)
  %6668 = fadd fast float %6667, %6662
  %6669 = fmul fast float %6663, -7.500000e-01
  %6670 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6664, float %6669)  ; FMad(a,b,c)
  %6671 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6660, float 0.000000e+00)  ; FMad(a,b,c)
  %6672 = fadd fast float %6671, %6662
  %6673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6674 = extractvalue %dx.types.CBufRet.f32 %6673, 0
  %6675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6676 = extractvalue %dx.types.CBufRet.f32 %6675, 0
  %6677 = extractvalue %dx.types.CBufRet.f32 %6675, 1
  %6678 = extractvalue %dx.types.CBufRet.f32 %6675, 2
  %6679 = extractvalue %dx.types.CBufRet.f32 %6675, 3
  %6680 = fsub fast float %6676, %6666
  %6681 = fsub fast float %6677, %6668
  %6682 = fsub fast float %6678, %6670
  %6683 = fsub fast float %6679, %6672
  %6684 = fmul fast float %6680, %6674
  %6685 = fmul fast float %6681, %6674
  %6686 = fmul fast float %6682, %6674
  %6687 = fmul fast float %6683, %6674
  %6688 = fadd fast float %6684, %6666
  %6689 = fadd fast float %6685, %6668
  %6690 = fadd fast float %6686, %6670
  %6691 = fadd fast float %6687, %6672
  %6692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6693 = extractvalue %dx.types.ResRet.i32 %6692, 0
  %6694 = and i32 %6693, 536870911
  %6695 = uitofp i32 %6694 to float
  %6696 = fmul fast float %6695, %6542
  %6697 = fmul fast float %6695, %6546
  %6698 = fptoui float %6696 to i32
  %6699 = fptoui float %6697 to i32
  %6700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6701 = extractvalue %dx.types.ResRet.i32 %6700, 0
  %6702 = and i32 %6701, 31
  %6703 = lshr i32 %6698, %6702
  %6704 = lshr i32 %6699, %6702
  %6705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6706 = extractvalue %dx.types.ResRet.i32 %6705, 0
  %6707 = and i32 %6706, 31
  %6708 = shl i32 1, %6707
  %6709 = call i32 @dx.op.binary.i32(i32 40, i32 %6708, i32 4)  ; UMin(a,b)
  %6710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6711 = extractvalue %dx.types.ResRet.i32 %6710, 0
  %6712 = extractvalue %dx.types.ResRet.i32 %6710, 1
  %6713 = icmp eq i32 %6709, 0
  br i1 %6713, label %6755, label %6714

; <label>:6714                                    ; preds = %6658
  br label %6715

; <label>:6715                                    ; preds = %6743, %6714
  %6716 = phi i32 [ %6746, %6743 ], [ 0, %6714 ]
  %6717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6718 = extractvalue %dx.types.ResRet.i32 %6717, 0
  %6719 = lshr i32 %6718, 16
  %6720 = and i32 %6719, 31
  %6721 = shl i32 %6704, %6720
  %6722 = add i32 %6721, %6703
  %6723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6724 = extractvalue %dx.types.ResRet.i32 %6723, 0
  %6725 = and i32 %6724, 31
  %6726 = shl i32 %6722, %6725
  %6727 = add i32 %6726, %6716
  %6728 = shl i32 %6727, 2
  %6729 = add i32 %6728, 32
  %6730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6729, i32 undef)  ; BufferLoad(srv,index,wot)
  %6731 = extractvalue %dx.types.ResRet.i32 %6730, 0
  %6732 = icmp slt i32 %6731, 0
  %6733 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6716
  %6734 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6716
  %6735 = bitcast float* %6733 to i32*
  %6736 = bitcast float* %6734 to i32*
  br i1 %6732, label %6737, label %6743

; <label>:6737                                    ; preds = %6715
  %6738 = and i32 %6731, 1073741823
  %6739 = add nuw nsw i32 %6738, 20
  %6740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6739, i32 undef)  ; BufferLoad(srv,index,wot)
  %6741 = extractvalue %dx.types.ResRet.i32 %6740, 0
  %6742 = extractvalue %dx.types.ResRet.i32 %6740, 1
  br label %6743

; <label>:6743                                    ; preds = %6737, %6715
  %6744 = phi i32 [ %6741, %6737 ], [ %6711, %6715 ]
  %6745 = phi i32 [ %6742, %6737 ], [ %6712, %6715 ]
  store i32 %6744, i32* %6735, align 4
  store i32 %6745, i32* %6736, align 4
  %6746 = add nuw i32 %6716, 1
  %6747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6748 = extractvalue %dx.types.CBufRet.i32 %6747, 2
  %6749 = icmp eq i32 %6748, 0
  %6750 = icmp ugt i32 %6731, -1073741825
  %6751 = and i1 %6750, %6749
  %6752 = icmp ult i32 %6746, %6709
  %6753 = and i1 %6751, %6752
  br i1 %6753, label %6715, label %6754

; <label>:6754                                    ; preds = %6743
  br label %6755

; <label>:6755                                    ; preds = %6754, %6658
  %6756 = phi i32 [ 0, %6658 ], [ %6746, %6754 ]
  %6757 = extractvalue %dx.types.CBufRet.f32 %6520, 2
  %6758 = fptoui float %6757 to i32
  %6759 = icmp eq i32 %6758, 0
  br i1 %6759, label %6811, label %6760

; <label>:6760                                    ; preds = %6755
  br label %6761

; <label>:6761                                    ; preds = %6806, %6760
  %6762 = phi i32 [ %6807, %6806 ], [ %6756, %6760 ]
  %6763 = phi i32 [ %6808, %6806 ], [ 0, %6760 ]
  %6764 = lshr i32 %6763, 2
  %6765 = and i32 %6763, 3
  %6766 = add nuw nsw i32 %6764, 83
  %6767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %6766)  ; CBufferLoadLegacy(handle,regIndex)
  %6768 = extractvalue %dx.types.CBufRet.i32 %6767, 0
  %6769 = extractvalue %dx.types.CBufRet.i32 %6767, 1
  %6770 = extractvalue %dx.types.CBufRet.i32 %6767, 2
  %6771 = extractvalue %dx.types.CBufRet.i32 %6767, 3
  %6772 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %6768, i32* %6772, align 4
  %6773 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %6769, i32* %6773, align 4
  %6774 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %6770, i32* %6774, align 4
  %6775 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %6771, i32* %6775, align 4
  %6776 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %6765
  %6777 = load i32, i32* %6776, align 4, !tbaa !95, !noalias !99
  %6778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6779 = extractvalue %dx.types.ResRet.i32 %6778, 0
  %6780 = lshr i32 %6779, 16
  %6781 = and i32 %6780, 31
  %6782 = shl i32 %6704, %6781
  %6783 = add i32 %6782, %6703
  %6784 = shl i32 %6783, 2
  %6785 = add i32 %6784, %6777
  %6786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6785, i32 undef)  ; BufferLoad(srv,index,wot)
  %6787 = extractvalue %dx.types.ResRet.i32 %6786, 0
  %6788 = icmp eq i32 %6787, 0
  br i1 %6788, label %6806, label %6789

; <label>:6789                                    ; preds = %6761
  %6790 = icmp slt i32 %6787, 0
  %6791 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6762
  %6792 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6762
  %6793 = bitcast float* %6791 to i32*
  %6794 = bitcast float* %6792 to i32*
  br i1 %6790, label %6795, label %6802

; <label>:6795                                    ; preds = %6789
  %6796 = and i32 %6787, 1073741823
  %6797 = add i32 %6777, 20
  %6798 = add i32 %6797, %6796
  %6799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6798, i32 undef)  ; BufferLoad(srv,index,wot)
  %6800 = extractvalue %dx.types.ResRet.i32 %6799, 0
  %6801 = extractvalue %dx.types.ResRet.i32 %6799, 1
  br label %6802

; <label>:6802                                    ; preds = %6795, %6789
  %6803 = phi i32 [ %6800, %6795 ], [ %6711, %6789 ]
  %6804 = phi i32 [ %6801, %6795 ], [ %6712, %6789 ]
  store i32 %6803, i32* %6793, align 4
  store i32 %6804, i32* %6794, align 4
  %6805 = add i32 %6762, 1
  br label %6806

; <label>:6806                                    ; preds = %6802, %6761
  %6807 = phi i32 [ %6762, %6761 ], [ %6805, %6802 ]
  %6808 = add nuw i32 %6763, 1
  %6809 = icmp eq i32 %6808, %6758
  br i1 %6809, label %6810, label %6761

; <label>:6810                                    ; preds = %6806
  br label %6811

; <label>:6811                                    ; preds = %6810, %6755
  %6812 = phi i32 [ %6756, %6755 ], [ %6807, %6810 ]
  %6813 = icmp eq i32 %6812, 1
  %6814 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 0
  %6815 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  br i1 %6813, label %6816, label %6819

; <label>:6816                                    ; preds = %6811
  %6817 = load float, float* %6814, align 4
  %6818 = load float, float* %6815, align 4
  br label %6846

; <label>:6819                                    ; preds = %6811
  %6820 = load float, float* %6814, align 4
  %6821 = load float, float* %6815, align 4
  %6822 = fdiv fast float 1.000000e+00, %6821
  %6823 = fsub fast float %6820, %6822
  %6824 = icmp ugt i32 %6812, 1
  br i1 %6824, label %6825, label %6841

; <label>:6825                                    ; preds = %6819
  br label %6826

; <label>:6826                                    ; preds = %6826, %6825
  %6827 = phi float [ %6836, %6826 ], [ %6823, %6825 ]
  %6828 = phi float [ %6837, %6826 ], [ %6820, %6825 ]
  %6829 = phi i32 [ %6838, %6826 ], [ 1, %6825 ]
  %6830 = getelementptr [12 x float], [12 x float]* %86, i32 0, i32 %6829
  %6831 = load float, float* %6830, align 4
  %6832 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6829
  %6833 = load float, float* %6832, align 4
  %6834 = fdiv fast float 1.000000e+00, %6833
  %6835 = fsub fast float %6831, %6834
  %6836 = call float @dx.op.binary.f32(i32 36, float %6827, float %6835)  ; FMin(a,b)
  %6837 = call float @dx.op.binary.f32(i32 35, float %6828, float %6831)  ; FMax(a,b)
  %6838 = add nuw i32 %6829, 1
  %6839 = icmp eq i32 %6838, %6812
  br i1 %6839, label %6840, label %6826

; <label>:6840                                    ; preds = %6826
  br label %6841

; <label>:6841                                    ; preds = %6840, %6819
  %6842 = phi float [ %6823, %6819 ], [ %6836, %6840 ]
  %6843 = phi float [ %6820, %6819 ], [ %6837, %6840 ]
  %6844 = fsub fast float %6843, %6842
  %6845 = fdiv fast float 1.000000e+00, %6844
  br label %6846

; <label>:6846                                    ; preds = %6841, %6816
  %6847 = phi float [ %6817, %6816 ], [ %6843, %6841 ]
  %6848 = phi float [ %6818, %6816 ], [ %6845, %6841 ]
  %6849 = fadd fast float %6550, %6847
  %6850 = fmul fast float %6849, %6848
  %6851 = call float @dx.op.unary.f32(i32 7, float %6850)  ; Saturate(value)
  %6852 = fmul fast float %6851, 2.000000e+00
  %6853 = fsub fast float 1.000000e+00, %6852
  %6854 = fmul fast float %6688, %6688
  %6855 = fsub fast float %6689, %6854
  %6856 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6855)  ; FMax(a,b)
  %6857 = fdiv fast float 1.000000e+00, %6856
  %6858 = fmul fast float %6689, %6688
  %6859 = fsub fast float %6690, %6858
  %6860 = fsub fast float %6853, %6688
  %6861 = fmul fast float %6853, %6853
  %6862 = fsub fast float %6861, %6689
  %6863 = fmul fast float %6857, %6859
  %6864 = fmul fast float %6863, %6860
  %6865 = fsub fast float %6862, %6864
  %6866 = fmul fast float %6689, %6689
  %6867 = fsub fast float %6691, %6866
  %6868 = fmul fast float %6859, %6859
  %6869 = fmul fast float %6868, %6857
  %6870 = fsub fast float %6867, %6869
  %6871 = fdiv fast float %6865, %6870
  %6872 = fmul fast float %6871, %6859
  %6873 = fsub fast float %6860, %6872
  %6874 = fmul fast float %6873, %6857
  %6875 = fmul fast float %6874, %6688
  %6876 = fsub fast float 1.000000e+00, %6875
  %6877 = fmul fast float %6871, %6689
  %6878 = fsub fast float %6876, %6877
  %6879 = fmul fast float %6874, %6874
  %6880 = fmul fast float %6871, 4.000000e+00
  %6881 = fmul fast float %6880, %6878
  %6882 = fsub fast float %6879, %6881
  %6883 = call float @dx.op.unary.f32(i32 24, float %6882)  ; Sqrt(value)
  %6884 = fcmp fast oge float %6874, 0.000000e+00
  %6885 = fsub fast float -0.000000e+00, %6883
  %6886 = select i1 %6884, float %6885, float %6883
  %6887 = fsub fast float %6886, %6874
  %6888 = fdiv fast float %6887, %6871
  %6889 = fdiv fast float %6878, %6887
  %6890 = fmul fast float %6888, 5.000000e-01
  %6891 = fmul fast float %6889, 2.000000e+00
  %6892 = select i1 %6884, float %6890, float %6891
  %6893 = select i1 %6884, float %6891, float %6890
  %6894 = call float @dx.op.binary.f32(i32 35, float %6892, float %6893)  ; FMax(a,b)
  %6895 = call float @dx.op.binary.f32(i32 36, float %6892, float %6893)  ; FMin(a,b)
  %6896 = fcmp fast ogt float %6853, %6894
  %6897 = fsub fast float %6853, %6895
  %6898 = fsub fast float %6853, %6894
  %6899 = fsub fast float %6894, %6895
  %6900 = select i1 %6896, float %6898, float %6899
  %6901 = fmul float %6897, %6900
  %6902 = select i1 %6896, float %6895, float %6853
  %6903 = fcmp fast ogt float %6853, %6895
  %6904 = fmul fast float %6902, %6894
  %6905 = fadd fast float %6902, %6894
  %6906 = fmul fast float %6905, %6688
  %6907 = fadd fast float %6904, %6689
  %6908 = fsub fast float %6907, %6906
  %6909 = fdiv fast float %6908, %6901
  %6910 = select i1 %6903, float %6909, float 0.000000e+00
  %6911 = fsub fast float 1.000000e+00, %6910
  %6912 = select i1 %6896, float %6911, float %6910
  %6913 = call float @dx.op.unary.f32(i32 7, float %6912)  ; Saturate(value)
  %6914 = extractvalue %dx.types.CBufRet.f32 %6673, 3
  %6915 = fmul fast float %6914, %6913
  %6916 = fsub fast float 1.000000e+00, %6915
  br label %6917

; <label>:6917                                    ; preds = %6846, %6558, %6523, %6519, %6485
  %6918 = phi float [ 1.000000e+00, %6485 ], [ %6916, %6846 ], [ 1.000000e+00, %6523 ], [ 1.000000e+00, %6558 ], [ 1.000000e+00, %6519 ]
  %6919 = fcmp fast ogt float %6515, 0.000000e+00
  br i1 %6919, label %6920, label %7082, !dx.controlflow.hints !108

; <label>:6920                                    ; preds = %6917
  %6921 = fadd fast float %6428, %6402
  %6922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6923 = extractvalue %dx.types.CBufRet.f32 %6922, 2
  %6924 = extractvalue %dx.types.CBufRet.f32 %6922, 3
  %6925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6926 = extractvalue %dx.types.CBufRet.f32 %6925, 2
  %6927 = call float @dx.op.binary.f32(i32 35, float %6921, float 0.000000e+00)  ; FMax(a,b)
  %6928 = fadd fast float %6927, 0x3F10000000000000
  %6929 = fcmp fast oeq float %6926, 0.000000e+00
  br i1 %6929, label %6930, label %6997

; <label>:6930                                    ; preds = %6920
  %6931 = extractvalue %dx.types.CBufRet.f32 %6922, 1
  %6932 = extractvalue %dx.types.CBufRet.f32 %6922, 0
  %6933 = fmul fast float %6932, %6417
  %6934 = fmul fast float %6931, %6418
  %6935 = fadd fast float %6933, 5.000000e-01
  %6936 = call float @dx.op.unary.f32(i32 27, float %6935)  ; Round_ni(value)
  %6937 = fadd fast float %6934, 5.000000e-01
  %6938 = call float @dx.op.unary.f32(i32 27, float %6937)  ; Round_ni(value)
  %6939 = fsub fast float %6935, %6936
  %6940 = fsub fast float %6937, %6938
  %6941 = fadd fast float %6936, -5.000000e-01
  %6942 = fadd fast float %6938, -5.000000e-01
  %6943 = fmul fast float %6939, 2.000000e+00
  %6944 = fsub fast float 3.000000e+00, %6943
  %6945 = fadd fast float %6943, 1.000000e+00
  %6946 = fsub fast float 2.000000e+00, %6939
  %6947 = bitcast float %6944 to i32
  %6948 = sub nsw i32 2129859010, %6947
  %6949 = bitcast i32 %6948 to float
  %6950 = fmul fast float %6949, %6946
  %6951 = fadd fast float %6950, -1.000000e+00
  %6952 = bitcast float %6945 to i32
  %6953 = sub nsw i32 2129859010, %6952
  %6954 = bitcast i32 %6953 to float
  %6955 = fmul fast float %6954, %6939
  %6956 = fadd fast float %6955, 1.000000e+00
  %6957 = fmul fast float %6940, 2.000000e+00
  %6958 = fsub fast float 3.000000e+00, %6957
  %6959 = fadd fast float %6957, 1.000000e+00
  %6960 = fsub fast float 2.000000e+00, %6940
  %6961 = bitcast float %6958 to i32
  %6962 = sub nsw i32 2129859010, %6961
  %6963 = bitcast i32 %6962 to float
  %6964 = fmul fast float %6963, %6960
  %6965 = fadd fast float %6964, -1.000000e+00
  %6966 = bitcast float %6959 to i32
  %6967 = sub nsw i32 2129859010, %6966
  %6968 = bitcast i32 %6967 to float
  %6969 = fmul fast float %6968, %6940
  %6970 = fadd fast float %6969, 1.000000e+00
  %6971 = fadd fast float %6951, %6941
  %6972 = fmul fast float %6971, %6923
  %6973 = fadd fast float %6965, %6942
  %6974 = fmul fast float %6973, %6924
  %6975 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6972, float %6974, float undef, float undef, i32 0, i32 0, i32 undef, float %6928)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6976 = extractvalue %dx.types.ResRet.f32 %6975, 0
  %6977 = fmul fast float %6976, %6944
  %6978 = fadd fast float %6956, %6941
  %6979 = fmul fast float %6978, %6923
  %6980 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6979, float %6974, float undef, float undef, i32 0, i32 0, i32 undef, float %6928)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6981 = extractvalue %dx.types.ResRet.f32 %6980, 0
  %6982 = fmul fast float %6981, %6945
  %6983 = fadd fast float %6970, %6942
  %6984 = fmul fast float %6983, %6924
  %6985 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6972, float %6984, float undef, float undef, i32 0, i32 0, i32 undef, float %6928)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6986 = extractvalue %dx.types.ResRet.f32 %6985, 0
  %6987 = fmul fast float %6986, %6944
  %6988 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6979, float %6984, float undef, float undef, i32 0, i32 0, i32 undef, float %6928)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6989 = extractvalue %dx.types.ResRet.f32 %6988, 0
  %6990 = fmul fast float %6989, %6945
  %6991 = fadd fast float %6990, %6987
  %6992 = fmul fast float %6991, %6959
  %6993 = fadd fast float %6982, %6977
  %6994 = fmul fast float %6993, %6958
  %6995 = fadd fast float %6994, %6992
  %6996 = fmul fast float %6995, 6.250000e-02
  br label %7082

; <label>:6997                                    ; preds = %6920
  %6998 = fmul fast float %256, 0x401921FB60000000
  %6999 = call float @dx.op.unary.f32(i32 13, float %6998)  ; Sin(value)
  %7000 = call float @dx.op.unary.f32(i32 12, float %6998)  ; Cos(value)
  %7001 = fsub fast float -0.000000e+00, %6999
  br label %7002

; <label>:7002                                    ; preds = %7051, %6997
  %7003 = phi float [ 0.000000e+00, %6997 ], [ %7046, %7051 ]
  %7004 = phi float [ 0.000000e+00, %6997 ], [ %7048, %7051 ]
  %7005 = phi i32 [ 0, %6997 ], [ %7052, %7051 ]
  %7006 = mul i32 %7005, 2
  %7007 = add i32 0, %7006
  %7008 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7007
  %7009 = load float, float* %7008, align 4
  %7010 = mul i32 %7005, 2
  %7011 = add i32 1, %7010
  %7012 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7011
  %7013 = load float, float* %7012, align 4
  %7014 = fmul fast float %7009, %7000
  %7015 = call float @dx.op.tertiary.f32(i32 46, float %7013, float %7001, float %7014)  ; FMad(a,b,c)
  %7016 = fmul fast float %7009, %6999
  %7017 = call float @dx.op.tertiary.f32(i32 46, float %7013, float %7000, float %7016)  ; FMad(a,b,c)
  %7018 = fmul fast float %7015, %6926
  %7019 = fmul fast float %7017, %6926
  %7020 = fadd fast float %7018, %6417
  %7021 = fadd fast float %7019, %6418
  %7022 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %7020, float %7021, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7023 = extractvalue %dx.types.ResRet.f32 %7022, 0
  %7024 = extractvalue %dx.types.ResRet.f32 %7022, 1
  %7025 = extractvalue %dx.types.ResRet.f32 %7022, 2
  %7026 = extractvalue %dx.types.ResRet.f32 %7022, 3
  %7027 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %7023, float* %7027, align 4
  %7028 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %7024, float* %7028, align 4
  %7029 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %7025, float* %7029, align 4
  %7030 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %7026, float* %7030, align 4
  %7031 = fsub fast float %7023, %6928
  %7032 = fcmp fast olt float %7031, 0.000000e+00
  %7033 = select i1 %7032, float 0.000000e+00, float 1.000000e+00
  %7034 = fadd fast float %7033, %7003
  %7035 = fmul fast float %7033, %7031
  %7036 = fadd fast float %7035, %7004
  br label %7037

; <label>:7037                                    ; preds = %7037, %7002
  %7038 = phi i32 [ 1, %7002 ], [ %7049, %7037 ]
  %7039 = phi float [ %7036, %7002 ], [ %7048, %7037 ]
  %7040 = phi float [ %7034, %7002 ], [ %7046, %7037 ]
  %7041 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7038
  %7042 = load float, float* %7041, align 4, !tbaa !109, !noalias !99
  %7043 = fsub fast float %7042, %6928
  %7044 = fcmp fast olt float %7043, 0.000000e+00
  %7045 = select i1 %7044, float 0.000000e+00, float 1.000000e+00
  %7046 = fadd fast float %7045, %7040
  %7047 = fmul fast float %7045, %7043
  %7048 = fadd fast float %7047, %7039
  %7049 = add nuw nsw i32 %7038, 1
  %7050 = icmp eq i32 %7049, 4
  br i1 %7050, label %7051, label %7037, !llvm.loop !111

; <label>:7051                                    ; preds = %7037
  %7052 = add nuw nsw i32 %7005, 1
  %7053 = icmp eq i32 %7052, 8
  br i1 %7053, label %7054, label %7002, !llvm.loop !112

; <label>:7054                                    ; preds = %7051
  %7055 = fdiv fast float 1.000000e+00, %7046
  %7056 = fmul fast float %7055, %7048
  %7057 = fdiv fast float 1.000000e+00, %6928
  %7058 = fmul fast float %7056, %7057
  %7059 = call float @dx.op.unary.f32(i32 7, float %7058)  ; Saturate(value)
  %7060 = call float @dx.op.binary.f32(i32 35, float %7059, float 0.000000e+00)  ; FMax(a,b)
  %7061 = fmul fast float %7046, 3.125000e-02
  %7062 = call float @dx.op.unary.f32(i32 7, float %7061)  ; Saturate(value)
  %7063 = fmul fast float %7062, 2.000000e+00
  %7064 = fadd fast float %7063, -1.000000e+00
  %7065 = fcmp fast ogt float %7064, 0.000000e+00
  %7066 = fcmp fast olt float %7064, 0.000000e+00
  %7067 = zext i1 %7065 to i32
  %7068 = zext i1 %7066 to i32
  %7069 = sub nsw i32 %7067, %7068
  %7070 = sitofp i32 %7069 to float
  %7071 = fmul fast float %7070, %7064
  %7072 = fsub fast float 1.000000e+00, %7071
  %7073 = fmul fast float %7072, %7072
  %7074 = fmul fast float %7073, %7072
  %7075 = fsub fast float %7072, %7074
  %7076 = fmul fast float %7075, %7060
  %7077 = fsub fast float 1.000000e+00, %7074
  %7078 = fsub fast float %7077, %7076
  %7079 = fmul fast float %7070, 5.000000e-01
  %7080 = fmul fast float %7079, %7078
  %7081 = fsub fast float 5.000000e-01, %7080
  br label %7082

; <label>:7082                                    ; preds = %7054, %6930, %6917
  %7083 = phi float [ 1.000000e+00, %6917 ], [ %6996, %6930 ], [ %7081, %7054 ]
  %7084 = fcmp fast ogt float %6513, 0.000000e+00
  br i1 %7084, label %7085, label %7249, !dx.controlflow.hints !113

; <label>:7085                                    ; preds = %7082
  %7086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7087 = extractvalue %dx.types.CBufRet.f32 %7086, 1
  %7088 = fadd fast float %7087, %6402
  %7089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7090 = extractvalue %dx.types.CBufRet.f32 %7089, 2
  %7091 = extractvalue %dx.types.CBufRet.f32 %7089, 3
  %7092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7093 = extractvalue %dx.types.CBufRet.f32 %7092, 1
  %7094 = call float @dx.op.binary.f32(i32 35, float %7088, float 0.000000e+00)  ; FMax(a,b)
  %7095 = fadd fast float %7094, 0x3F10000000000000
  %7096 = fcmp fast oeq float %7093, 0.000000e+00
  br i1 %7096, label %7097, label %7164

; <label>:7097                                    ; preds = %7085
  %7098 = extractvalue %dx.types.CBufRet.f32 %7089, 1
  %7099 = extractvalue %dx.types.CBufRet.f32 %7089, 0
  %7100 = fmul fast float %7099, %6409
  %7101 = fmul fast float %7098, %6410
  %7102 = fadd fast float %7100, 5.000000e-01
  %7103 = call float @dx.op.unary.f32(i32 27, float %7102)  ; Round_ni(value)
  %7104 = fadd fast float %7101, 5.000000e-01
  %7105 = call float @dx.op.unary.f32(i32 27, float %7104)  ; Round_ni(value)
  %7106 = fsub fast float %7102, %7103
  %7107 = fsub fast float %7104, %7105
  %7108 = fadd fast float %7103, -5.000000e-01
  %7109 = fadd fast float %7105, -5.000000e-01
  %7110 = fmul fast float %7106, 2.000000e+00
  %7111 = fsub fast float 3.000000e+00, %7110
  %7112 = fadd fast float %7110, 1.000000e+00
  %7113 = fsub fast float 2.000000e+00, %7106
  %7114 = bitcast float %7111 to i32
  %7115 = sub nsw i32 2129859010, %7114
  %7116 = bitcast i32 %7115 to float
  %7117 = fmul fast float %7116, %7113
  %7118 = fadd fast float %7117, -1.000000e+00
  %7119 = bitcast float %7112 to i32
  %7120 = sub nsw i32 2129859010, %7119
  %7121 = bitcast i32 %7120 to float
  %7122 = fmul fast float %7121, %7106
  %7123 = fadd fast float %7122, 1.000000e+00
  %7124 = fmul fast float %7107, 2.000000e+00
  %7125 = fsub fast float 3.000000e+00, %7124
  %7126 = fadd fast float %7124, 1.000000e+00
  %7127 = fsub fast float 2.000000e+00, %7107
  %7128 = bitcast float %7125 to i32
  %7129 = sub nsw i32 2129859010, %7128
  %7130 = bitcast i32 %7129 to float
  %7131 = fmul fast float %7130, %7127
  %7132 = fadd fast float %7131, -1.000000e+00
  %7133 = bitcast float %7126 to i32
  %7134 = sub nsw i32 2129859010, %7133
  %7135 = bitcast i32 %7134 to float
  %7136 = fmul fast float %7135, %7107
  %7137 = fadd fast float %7136, 1.000000e+00
  %7138 = fadd fast float %7118, %7108
  %7139 = fmul fast float %7138, %7090
  %7140 = fadd fast float %7132, %7109
  %7141 = fmul fast float %7140, %7091
  %7142 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7139, float %7141, float undef, float undef, i32 0, i32 0, i32 undef, float %7095)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7143 = extractvalue %dx.types.ResRet.f32 %7142, 0
  %7144 = fmul fast float %7143, %7111
  %7145 = fadd fast float %7123, %7108
  %7146 = fmul fast float %7145, %7090
  %7147 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7146, float %7141, float undef, float undef, i32 0, i32 0, i32 undef, float %7095)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7148 = extractvalue %dx.types.ResRet.f32 %7147, 0
  %7149 = fmul fast float %7148, %7112
  %7150 = fadd fast float %7137, %7109
  %7151 = fmul fast float %7150, %7091
  %7152 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7139, float %7151, float undef, float undef, i32 0, i32 0, i32 undef, float %7095)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7153 = extractvalue %dx.types.ResRet.f32 %7152, 0
  %7154 = fmul fast float %7153, %7111
  %7155 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7146, float %7151, float undef, float undef, i32 0, i32 0, i32 undef, float %7095)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7156 = extractvalue %dx.types.ResRet.f32 %7155, 0
  %7157 = fmul fast float %7156, %7112
  %7158 = fadd fast float %7157, %7154
  %7159 = fmul fast float %7158, %7126
  %7160 = fadd fast float %7149, %7144
  %7161 = fmul fast float %7160, %7125
  %7162 = fadd fast float %7161, %7159
  %7163 = fmul fast float %7162, 6.250000e-02
  br label %7249

; <label>:7164                                    ; preds = %7085
  %7165 = fmul fast float %256, 0x401921FB60000000
  %7166 = call float @dx.op.unary.f32(i32 13, float %7165)  ; Sin(value)
  %7167 = call float @dx.op.unary.f32(i32 12, float %7165)  ; Cos(value)
  %7168 = fsub fast float -0.000000e+00, %7166
  br label %7169

; <label>:7169                                    ; preds = %7218, %7164
  %7170 = phi float [ 0.000000e+00, %7164 ], [ %7213, %7218 ]
  %7171 = phi float [ 0.000000e+00, %7164 ], [ %7215, %7218 ]
  %7172 = phi i32 [ 0, %7164 ], [ %7219, %7218 ]
  %7173 = mul i32 %7172, 2
  %7174 = add i32 0, %7173
  %7175 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7174
  %7176 = load float, float* %7175, align 4
  %7177 = mul i32 %7172, 2
  %7178 = add i32 1, %7177
  %7179 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7178
  %7180 = load float, float* %7179, align 4
  %7181 = fmul fast float %7176, %7167
  %7182 = call float @dx.op.tertiary.f32(i32 46, float %7180, float %7168, float %7181)  ; FMad(a,b,c)
  %7183 = fmul fast float %7176, %7166
  %7184 = call float @dx.op.tertiary.f32(i32 46, float %7180, float %7167, float %7183)  ; FMad(a,b,c)
  %7185 = fmul fast float %7182, %7093
  %7186 = fmul fast float %7184, %7093
  %7187 = fadd fast float %7185, %6409
  %7188 = fadd fast float %7186, %6410
  %7189 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %7187, float %7188, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7190 = extractvalue %dx.types.ResRet.f32 %7189, 0
  %7191 = extractvalue %dx.types.ResRet.f32 %7189, 1
  %7192 = extractvalue %dx.types.ResRet.f32 %7189, 2
  %7193 = extractvalue %dx.types.ResRet.f32 %7189, 3
  %7194 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 0
  store float %7190, float* %7194, align 4
  %7195 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 1
  store float %7191, float* %7195, align 4
  %7196 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 2
  store float %7192, float* %7196, align 4
  %7197 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 3
  store float %7193, float* %7197, align 4
  %7198 = fsub fast float %7190, %7095
  %7199 = fcmp fast olt float %7198, 0.000000e+00
  %7200 = select i1 %7199, float 0.000000e+00, float 1.000000e+00
  %7201 = fadd fast float %7200, %7170
  %7202 = fmul fast float %7200, %7198
  %7203 = fadd fast float %7202, %7171
  br label %7204

; <label>:7204                                    ; preds = %7204, %7169
  %7205 = phi i32 [ 1, %7169 ], [ %7216, %7204 ]
  %7206 = phi float [ %7203, %7169 ], [ %7215, %7204 ]
  %7207 = phi float [ %7201, %7169 ], [ %7213, %7204 ]
  %7208 = getelementptr [4 x float], [4 x float]* %89, i32 0, i32 %7205
  %7209 = load float, float* %7208, align 4, !tbaa !109, !noalias !99
  %7210 = fsub fast float %7209, %7095
  %7211 = fcmp fast olt float %7210, 0.000000e+00
  %7212 = select i1 %7211, float 0.000000e+00, float 1.000000e+00
  %7213 = fadd fast float %7212, %7207
  %7214 = fmul fast float %7212, %7210
  %7215 = fadd fast float %7214, %7206
  %7216 = add nuw nsw i32 %7205, 1
  %7217 = icmp eq i32 %7216, 4
  br i1 %7217, label %7218, label %7204, !llvm.loop !111

; <label>:7218                                    ; preds = %7204
  %7219 = add nuw nsw i32 %7172, 1
  %7220 = icmp eq i32 %7219, 8
  br i1 %7220, label %7221, label %7169, !llvm.loop !112

; <label>:7221                                    ; preds = %7218
  %7222 = fdiv fast float 1.000000e+00, %7213
  %7223 = fmul fast float %7222, %7215
  %7224 = fdiv fast float 1.000000e+00, %7095
  %7225 = fmul fast float %7223, %7224
  %7226 = call float @dx.op.unary.f32(i32 7, float %7225)  ; Saturate(value)
  %7227 = call float @dx.op.binary.f32(i32 35, float %7226, float 0.000000e+00)  ; FMax(a,b)
  %7228 = fmul fast float %7213, 3.125000e-02
  %7229 = call float @dx.op.unary.f32(i32 7, float %7228)  ; Saturate(value)
  %7230 = fmul fast float %7229, 2.000000e+00
  %7231 = fadd fast float %7230, -1.000000e+00
  %7232 = fcmp fast ogt float %7231, 0.000000e+00
  %7233 = fcmp fast olt float %7231, 0.000000e+00
  %7234 = zext i1 %7232 to i32
  %7235 = zext i1 %7233 to i32
  %7236 = sub nsw i32 %7234, %7235
  %7237 = sitofp i32 %7236 to float
  %7238 = fmul fast float %7237, %7231
  %7239 = fsub fast float 1.000000e+00, %7238
  %7240 = fmul fast float %7239, %7239
  %7241 = fmul fast float %7240, %7239
  %7242 = fsub fast float %7239, %7241
  %7243 = fmul fast float %7242, %7227
  %7244 = fsub fast float 1.000000e+00, %7241
  %7245 = fsub fast float %7244, %7243
  %7246 = fmul fast float %7237, 5.000000e-01
  %7247 = fmul fast float %7246, %7245
  %7248 = fsub fast float 5.000000e-01, %7247
  br label %7249

; <label>:7249                                    ; preds = %7221, %7097, %7082
  %7250 = phi float [ 1.000000e+00, %7082 ], [ %7163, %7097 ], [ %7248, %7221 ]
  %7251 = fcmp fast ogt float %6512, 0.000000e+00
  br i1 %7251, label %7252, label %7416, !dx.controlflow.hints !114

; <label>:7252                                    ; preds = %7249
  %7253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7254 = extractvalue %dx.types.CBufRet.f32 %7253, 0
  %7255 = fadd fast float %7254, %6402
  %7256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7257 = extractvalue %dx.types.CBufRet.f32 %7256, 2
  %7258 = extractvalue %dx.types.CBufRet.f32 %7256, 3
  %7259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7260 = extractvalue %dx.types.CBufRet.f32 %7259, 0
  %7261 = call float @dx.op.binary.f32(i32 35, float %7255, float 0.000000e+00)  ; FMax(a,b)
  %7262 = fadd fast float %7261, 0x3F10000000000000
  %7263 = fcmp fast oeq float %7260, 0.000000e+00
  br i1 %7263, label %7264, label %7331

; <label>:7264                                    ; preds = %7252
  %7265 = extractvalue %dx.types.CBufRet.f32 %7256, 1
  %7266 = extractvalue %dx.types.CBufRet.f32 %7256, 0
  %7267 = fmul fast float %7266, %6394
  %7268 = fmul fast float %7265, %6398
  %7269 = fadd fast float %7267, 5.000000e-01
  %7270 = call float @dx.op.unary.f32(i32 27, float %7269)  ; Round_ni(value)
  %7271 = fadd fast float %7268, 5.000000e-01
  %7272 = call float @dx.op.unary.f32(i32 27, float %7271)  ; Round_ni(value)
  %7273 = fsub fast float %7269, %7270
  %7274 = fsub fast float %7271, %7272
  %7275 = fadd fast float %7270, -5.000000e-01
  %7276 = fadd fast float %7272, -5.000000e-01
  %7277 = fmul fast float %7273, 2.000000e+00
  %7278 = fsub fast float 3.000000e+00, %7277
  %7279 = fadd fast float %7277, 1.000000e+00
  %7280 = fsub fast float 2.000000e+00, %7273
  %7281 = bitcast float %7278 to i32
  %7282 = sub nsw i32 2129859010, %7281
  %7283 = bitcast i32 %7282 to float
  %7284 = fmul fast float %7283, %7280
  %7285 = fadd fast float %7284, -1.000000e+00
  %7286 = bitcast float %7279 to i32
  %7287 = sub nsw i32 2129859010, %7286
  %7288 = bitcast i32 %7287 to float
  %7289 = fmul fast float %7288, %7273
  %7290 = fadd fast float %7289, 1.000000e+00
  %7291 = fmul fast float %7274, 2.000000e+00
  %7292 = fsub fast float 3.000000e+00, %7291
  %7293 = fadd fast float %7291, 1.000000e+00
  %7294 = fsub fast float 2.000000e+00, %7274
  %7295 = bitcast float %7292 to i32
  %7296 = sub nsw i32 2129859010, %7295
  %7297 = bitcast i32 %7296 to float
  %7298 = fmul fast float %7297, %7294
  %7299 = fadd fast float %7298, -1.000000e+00
  %7300 = bitcast float %7293 to i32
  %7301 = sub nsw i32 2129859010, %7300
  %7302 = bitcast i32 %7301 to float
  %7303 = fmul fast float %7302, %7274
  %7304 = fadd fast float %7303, 1.000000e+00
  %7305 = fadd fast float %7285, %7275
  %7306 = fmul fast float %7305, %7257
  %7307 = fadd fast float %7299, %7276
  %7308 = fmul fast float %7307, %7258
  %7309 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7306, float %7308, float undef, float undef, i32 0, i32 0, i32 undef, float %7262)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7310 = extractvalue %dx.types.ResRet.f32 %7309, 0
  %7311 = fmul fast float %7310, %7278
  %7312 = fadd fast float %7290, %7275
  %7313 = fmul fast float %7312, %7257
  %7314 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7313, float %7308, float undef, float undef, i32 0, i32 0, i32 undef, float %7262)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7315 = extractvalue %dx.types.ResRet.f32 %7314, 0
  %7316 = fmul fast float %7315, %7279
  %7317 = fadd fast float %7304, %7276
  %7318 = fmul fast float %7317, %7258
  %7319 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7306, float %7318, float undef, float undef, i32 0, i32 0, i32 undef, float %7262)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7320 = extractvalue %dx.types.ResRet.f32 %7319, 0
  %7321 = fmul fast float %7320, %7278
  %7322 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7313, float %7318, float undef, float undef, i32 0, i32 0, i32 undef, float %7262)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7323 = extractvalue %dx.types.ResRet.f32 %7322, 0
  %7324 = fmul fast float %7323, %7279
  %7325 = fadd fast float %7324, %7321
  %7326 = fmul fast float %7325, %7293
  %7327 = fadd fast float %7316, %7311
  %7328 = fmul fast float %7327, %7292
  %7329 = fadd fast float %7328, %7326
  %7330 = fmul fast float %7329, 6.250000e-02
  br label %7416

; <label>:7331                                    ; preds = %7252
  %7332 = fmul fast float %256, 0x401921FB60000000
  %7333 = call float @dx.op.unary.f32(i32 13, float %7332)  ; Sin(value)
  %7334 = call float @dx.op.unary.f32(i32 12, float %7332)  ; Cos(value)
  %7335 = fsub fast float -0.000000e+00, %7333
  br label %7336

; <label>:7336                                    ; preds = %7385, %7331
  %7337 = phi float [ 0.000000e+00, %7331 ], [ %7380, %7385 ]
  %7338 = phi float [ 0.000000e+00, %7331 ], [ %7382, %7385 ]
  %7339 = phi i32 [ 0, %7331 ], [ %7386, %7385 ]
  %7340 = mul i32 %7339, 2
  %7341 = add i32 0, %7340
  %7342 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7341
  %7343 = load float, float* %7342, align 4
  %7344 = mul i32 %7339, 2
  %7345 = add i32 1, %7344
  %7346 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7345
  %7347 = load float, float* %7346, align 4
  %7348 = fmul fast float %7343, %7334
  %7349 = call float @dx.op.tertiary.f32(i32 46, float %7347, float %7335, float %7348)  ; FMad(a,b,c)
  %7350 = fmul fast float %7343, %7333
  %7351 = call float @dx.op.tertiary.f32(i32 46, float %7347, float %7334, float %7350)  ; FMad(a,b,c)
  %7352 = fmul fast float %7349, %7260
  %7353 = fmul fast float %7351, %7260
  %7354 = fadd fast float %7352, %6394
  %7355 = fadd fast float %7353, %6398
  %7356 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %7354, float %7355, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7357 = extractvalue %dx.types.ResRet.f32 %7356, 0
  %7358 = extractvalue %dx.types.ResRet.f32 %7356, 1
  %7359 = extractvalue %dx.types.ResRet.f32 %7356, 2
  %7360 = extractvalue %dx.types.ResRet.f32 %7356, 3
  %7361 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 0
  store float %7357, float* %7361, align 4
  %7362 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 1
  store float %7358, float* %7362, align 4
  %7363 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 2
  store float %7359, float* %7363, align 4
  %7364 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 3
  store float %7360, float* %7364, align 4
  %7365 = fsub fast float %7357, %7262
  %7366 = fcmp fast olt float %7365, 0.000000e+00
  %7367 = select i1 %7366, float 0.000000e+00, float 1.000000e+00
  %7368 = fadd fast float %7367, %7337
  %7369 = fmul fast float %7367, %7365
  %7370 = fadd fast float %7369, %7338
  br label %7371

; <label>:7371                                    ; preds = %7371, %7336
  %7372 = phi i32 [ 1, %7336 ], [ %7383, %7371 ]
  %7373 = phi float [ %7370, %7336 ], [ %7382, %7371 ]
  %7374 = phi float [ %7368, %7336 ], [ %7380, %7371 ]
  %7375 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 %7372
  %7376 = load float, float* %7375, align 4, !tbaa !109, !noalias !99
  %7377 = fsub fast float %7376, %7262
  %7378 = fcmp fast olt float %7377, 0.000000e+00
  %7379 = select i1 %7378, float 0.000000e+00, float 1.000000e+00
  %7380 = fadd fast float %7379, %7374
  %7381 = fmul fast float %7379, %7377
  %7382 = fadd fast float %7381, %7373
  %7383 = add nuw nsw i32 %7372, 1
  %7384 = icmp eq i32 %7383, 4
  br i1 %7384, label %7385, label %7371, !llvm.loop !111

; <label>:7385                                    ; preds = %7371
  %7386 = add nuw nsw i32 %7339, 1
  %7387 = icmp eq i32 %7386, 8
  br i1 %7387, label %7388, label %7336, !llvm.loop !112

; <label>:7388                                    ; preds = %7385
  %7389 = fdiv fast float 1.000000e+00, %7380
  %7390 = fmul fast float %7389, %7382
  %7391 = fdiv fast float 1.000000e+00, %7262
  %7392 = fmul fast float %7390, %7391
  %7393 = call float @dx.op.unary.f32(i32 7, float %7392)  ; Saturate(value)
  %7394 = call float @dx.op.binary.f32(i32 35, float %7393, float 0.000000e+00)  ; FMax(a,b)
  %7395 = fmul fast float %7380, 3.125000e-02
  %7396 = call float @dx.op.unary.f32(i32 7, float %7395)  ; Saturate(value)
  %7397 = fmul fast float %7396, 2.000000e+00
  %7398 = fadd fast float %7397, -1.000000e+00
  %7399 = fcmp fast ogt float %7398, 0.000000e+00
  %7400 = fcmp fast olt float %7398, 0.000000e+00
  %7401 = zext i1 %7399 to i32
  %7402 = zext i1 %7400 to i32
  %7403 = sub nsw i32 %7401, %7402
  %7404 = sitofp i32 %7403 to float
  %7405 = fmul fast float %7404, %7398
  %7406 = fsub fast float 1.000000e+00, %7405
  %7407 = fmul fast float %7406, %7406
  %7408 = fmul fast float %7407, %7406
  %7409 = fsub fast float %7406, %7408
  %7410 = fmul fast float %7409, %7394
  %7411 = fsub fast float 1.000000e+00, %7408
  %7412 = fsub fast float %7411, %7410
  %7413 = fmul fast float %7404, 5.000000e-01
  %7414 = fmul fast float %7413, %7412
  %7415 = fsub fast float 5.000000e-01, %7414
  br label %7416

; <label>:7416                                    ; preds = %7388, %7264, %7249
  %7417 = phi float [ 1.000000e+00, %7249 ], [ %7330, %7264 ], [ %7415, %7388 ]
  %7418 = fsub fast float %7083, %6918
  %7419 = fmul fast float %7418, %6456
  %7420 = fadd fast float %7419, %6918
  %7421 = fsub fast float %7250, %7420
  %7422 = fmul fast float %7421, %6486
  %7423 = fadd fast float %7422, %7420
  %7424 = fsub fast float %7417, %7423
  %7425 = fmul fast float %7424, %6512
  %7426 = fadd fast float %7425, %7423
  %7427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7428 = extractvalue %dx.types.CBufRet.f32 %7427, 2
  %7429 = fcmp fast ogt float %7428, 0.000000e+00
  br i1 %7429, label %7430, label %7470, !dx.controlflow.hints !115

; <label>:7430                                    ; preds = %7416
  %7431 = fcmp fast ugt float %7428, 0.000000e+00
  br i1 %7431, label %7432, label %7467

; <label>:7432                                    ; preds = %7430
  %7433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7434 = extractvalue %dx.types.CBufRet.f32 %7433, 0
  %7435 = extractvalue %dx.types.CBufRet.f32 %7433, 1
  %7436 = extractvalue %dx.types.CBufRet.f32 %7433, 2
  %7437 = extractvalue %dx.types.CBufRet.f32 %7433, 3
  %7438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7439 = extractvalue %dx.types.CBufRet.f32 %7438, 0
  %7440 = extractvalue %dx.types.CBufRet.f32 %7438, 1
  %7441 = extractvalue %dx.types.CBufRet.f32 %7438, 2
  %7442 = extractvalue %dx.types.CBufRet.f32 %7438, 3
  %7443 = extractvalue %dx.types.CBufRet.f32 %7427, 0
  %7444 = extractvalue %dx.types.CBufRet.f32 %7427, 1
  %7445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7446 = extractvalue %dx.types.CBufRet.f32 %7445, 0
  %7447 = extractvalue %dx.types.CBufRet.f32 %7445, 1
  %7448 = extractvalue %dx.types.CBufRet.f32 %7445, 2
  %7449 = fadd fast float %7446, %6371
  %7450 = fadd fast float %7447, %6372
  %7451 = fadd fast float %7448, %6373
  %7452 = fmul fast float %7449, %7434
  %7453 = call float @dx.op.tertiary.f32(i32 46, float %7435, float %7450, float %7452)  ; FMad(a,b,c)
  %7454 = call float @dx.op.tertiary.f32(i32 46, float %7436, float %7451, float %7453)  ; FMad(a,b,c)
  %7455 = fadd fast float %7454, %7437
  %7456 = fmul fast float %7449, %7439
  %7457 = call float @dx.op.tertiary.f32(i32 46, float %7440, float %7450, float %7456)  ; FMad(a,b,c)
  %7458 = call float @dx.op.tertiary.f32(i32 46, float %7441, float %7451, float %7457)  ; FMad(a,b,c)
  %7459 = fadd fast float %7458, %7442
  %7460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %7455, float %7459, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7461 = extractvalue %dx.types.ResRet.f32 %7460, 0
  %7462 = fmul fast float %7461, %7444
  %7463 = fadd fast float %7462, %7443
  %7464 = call float @dx.op.unary.f32(i32 7, float %7463)  ; Saturate(value)
  %7465 = fmul fast float %7464, %7428
  %7466 = fsub fast float 1.000000e+00, %7465
  br label %7467

; <label>:7467                                    ; preds = %7432, %7430
  %7468 = phi float [ %7466, %7432 ], [ 1.000000e+00, %7430 ]
  %7469 = fmul fast float %7468, %7426
  br label %7470

; <label>:7470                                    ; preds = %7467, %7416, %6351
  %7471 = phi float [ 1.000000e+00, %6351 ], [ %7469, %7467 ], [ %7426, %7416 ]
  %7472 = call float @dx.op.binary.f32(i32 36, float %7471, float %7471)  ; FMin(a,b)
  %7473 = call float @dx.op.binary.f32(i32 36, float %7471, float %7472)  ; FMin(a,b)
  %7474 = fcmp fast ogt float %7473, 0.000000e+00
  br i1 %7474, label %7475, label %7641, !dx.controlflow.hints !116

; <label>:7475                                    ; preds = %7470
  %7476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7477 = extractvalue %dx.types.CBufRet.f32 %7476, 0
  %7478 = extractvalue %dx.types.CBufRet.f32 %7476, 1
  %7479 = extractvalue %dx.types.CBufRet.f32 %7476, 2
  %7480 = extractvalue %dx.types.CBufRet.f32 %7476, 3
  %7481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7482 = extractvalue %dx.types.CBufRet.f32 %7481, 0
  %7483 = extractvalue %dx.types.CBufRet.f32 %7481, 1
  %7484 = extractvalue %dx.types.CBufRet.f32 %7481, 2
  %7485 = extractvalue %dx.types.CBufRet.f32 %7481, 3
  %7486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.CBufRet.f32 %7486, 1
  %7489 = extractvalue %dx.types.CBufRet.f32 %7486, 2
  %7490 = extractvalue %dx.types.CBufRet.f32 %7486, 3
  %7491 = fmul fast float %7477, %6371
  %7492 = call float @dx.op.tertiary.f32(i32 46, float %6372, float %7478, float %7491)  ; FMad(a,b,c)
  %7493 = call float @dx.op.tertiary.f32(i32 46, float %6373, float %7479, float %7492)  ; FMad(a,b,c)
  %7494 = fadd fast float %7493, %7480
  %7495 = fmul fast float %7482, %6371
  %7496 = call float @dx.op.tertiary.f32(i32 46, float %6372, float %7483, float %7495)  ; FMad(a,b,c)
  %7497 = call float @dx.op.tertiary.f32(i32 46, float %6373, float %7484, float %7496)  ; FMad(a,b,c)
  %7498 = fadd fast float %7497, %7485
  %7499 = fmul fast float %7487, %6371
  %7500 = call float @dx.op.tertiary.f32(i32 46, float %6372, float %7488, float %7499)  ; FMad(a,b,c)
  %7501 = call float @dx.op.tertiary.f32(i32 46, float %6373, float %7489, float %7500)  ; FMad(a,b,c)
  %7502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.f32 %7502, 0
  %7504 = extractvalue %dx.types.CBufRet.f32 %7502, 1
  %7505 = extractvalue %dx.types.CBufRet.f32 %7502, 3
  %7506 = fmul fast float %7505, %7494
  %7507 = fmul fast float %7505, %7498
  %7508 = fadd fast float %7506, %7503
  %7509 = fadd fast float %7507, %7504
  %7510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7511 = extractvalue %dx.types.CBufRet.f32 %7510, 0
  %7512 = extractvalue %dx.types.CBufRet.f32 %7510, 1
  %7513 = fsub fast float %7508, %7511
  %7514 = fsub fast float %7509, %7512
  %7515 = fcmp fast olt float %7513, 0.000000e+00
  %7516 = fcmp fast olt float %7514, 0.000000e+00
  %7517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7518 = extractvalue %dx.types.CBufRet.f32 %7517, 0
  %7519 = extractvalue %dx.types.CBufRet.f32 %7517, 1
  %7520 = extractvalue %dx.types.CBufRet.f32 %7517, 2
  %7521 = extractvalue %dx.types.CBufRet.f32 %7517, 3
  %7522 = select i1 %7515, float %7518, float %7520
  %7523 = select i1 %7516, float %7519, float %7521
  %7524 = fmul fast float %7522, %7513
  %7525 = fmul fast float %7523, %7514
  %7526 = call float @dx.op.unary.f32(i32 6, float %7524)  ; FAbs(value)
  %7527 = call float @dx.op.unary.f32(i32 6, float %7525)  ; FAbs(value)
  %7528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7529 = extractvalue %dx.types.CBufRet.f32 %7528, 0
  %7530 = call float @dx.op.binary.f32(i32 35, float %7526, float %7527)  ; FMax(a,b)
  %7531 = fsub fast float %7529, %7530
  %7532 = call float @dx.op.unary.f32(i32 7, float %7531)  ; Saturate(value)
  %7533 = fcmp fast ogt float %7532, 0.000000e+00
  br i1 %7533, label %7534, label %7575, !dx.controlflow.hints !117

; <label>:7534                                    ; preds = %7475
  %7535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %7508, float %7509, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7536 = extractvalue %dx.types.ResRet.f32 %7535, 1
  %7537 = fcmp fast ogt float %7536, 0.000000e+00
  br i1 %7537, label %7538, label %7570

; <label>:7538                                    ; preds = %7534
  %7539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %7508, float %7509, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7540 = extractvalue %dx.types.ResRet.f32 %7539, 0
  %7541 = extractvalue %dx.types.ResRet.f32 %7539, 1
  %7542 = extractvalue %dx.types.ResRet.f32 %7539, 2
  %7543 = extractvalue %dx.types.ResRet.f32 %7539, 3
  %7544 = fsub fast float 1.000000e+00, %7490
  %7545 = fsub fast float %7544, %7501
  %7546 = fmul fast float %7545, 0x400921FB60000000
  %7547 = fadd fast float %7546, 0x3FF921FB60000000
  %7548 = call float @dx.op.unary.f32(i32 13, float %7547)  ; Sin(value)
  %7549 = fadd fast float %7548, -1.000000e+00
  %7550 = fmul fast float %7549, 0x3FD45F3060000000
  %7551 = fmul fast float %7545, 0x401921FB60000000
  %7552 = fadd fast float %7551, 0x400921FB60000000
  %7553 = call float @dx.op.unary.f32(i32 13, float %7552)  ; Sin(value)
  %7554 = fadd fast float %7553, 0x3E7777A5C0000000
  %7555 = fmul fast float %7554, 0x3FC45F3060000000
  %7556 = fmul fast float %7545, 0x4022D97C80000000
  %7557 = fadd fast float %7556, 0x4012D97C80000000
  %7558 = call float @dx.op.unary.f32(i32 13, float %7557)  ; Sin(value)
  %7559 = fadd fast float %7558, 1.000000e+00
  %7560 = fmul fast float %7559, 0x3FBB2995E0000000
  %7561 = fmul fast float %7545, 0x402921FB60000000
  %7562 = fadd fast float %7561, 0x401921FB60000000
  %7563 = call float @dx.op.unary.f32(i32 13, float %7562)  ; Sin(value)
  %7564 = fadd fast float %7563, 0xBE8777A5C0000000
  %7565 = fmul fast float %7564, 0x3FB45F3060000000
  %7566 = call float @dx.op.dot4.f32(i32 56, float %7540, float %7541, float %7542, float %7543, float %7550, float %7555, float %7560, float %7565)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7567 = fmul fast float %7566, 0xBFF7154760000000
  %7568 = call float @dx.op.unary.f32(i32 21, float %7567)  ; Exp(value)
  %7569 = call float @dx.op.unary.f32(i32 7, float %7568)  ; Saturate(value)
  br label %7570

; <label>:7570                                    ; preds = %7538, %7534
  %7571 = phi float [ %7569, %7538 ], [ 1.000000e+00, %7534 ]
  %7572 = fadd fast float %7571, -1.000000e+00
  %7573 = fmul fast float %7572, %7532
  %7574 = fadd fast float %7573, 1.000000e+00
  br label %7575

; <label>:7575                                    ; preds = %7570, %7475
  %7576 = phi float [ %7574, %7570 ], [ 1.000000e+00, %7475 ]
  %7577 = fmul fast float %7576, %7471
  %7578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7579 = extractvalue %dx.types.CBufRet.f32 %7578, 0
  %7580 = extractvalue %dx.types.CBufRet.f32 %7578, 1
  %7581 = extractvalue %dx.types.CBufRet.f32 %7578, 2
  %7582 = fadd fast float %7579, %152
  %7583 = fadd fast float %7580, %153
  %7584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7585 = extractvalue %dx.types.CBufRet.f32 %7584, 1
  %7586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7587 = extractvalue %dx.types.CBufRet.f32 %7586, 0
  %7588 = extractvalue %dx.types.CBufRet.f32 %7586, 1
  %7589 = extractvalue %dx.types.CBufRet.f32 %7586, 2
  %7590 = fsub fast float -0.000000e+00, %7582
  %7591 = fsub fast float -0.000000e+00, %7583
  %7592 = fsub fast float -0.000000e+00, %154
  %7593 = fsub fast float %7592, %7581
  %7594 = fadd fast float %7593, %7585
  %7595 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7590, float %7591, float %7594)  ; Dot3(ax,ay,az,bx,by,bz)
  %7596 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7587, float %7588, float %7589)  ; Dot3(ax,ay,az,bx,by,bz)
  %7597 = fdiv fast float 1.000000e+00, %7596
  %7598 = fmul fast float %7597, %7595
  %7599 = fmul fast float %7587, %7598
  %7600 = fmul fast float %7588, %7598
  %7601 = fadd fast float %7599, %7582
  %7602 = fadd fast float %7600, %7583
  %7603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7604 = extractvalue %dx.types.CBufRet.f32 %7603, 0
  %7605 = extractvalue %dx.types.CBufRet.f32 %7603, 1
  %7606 = fsub fast float %7601, %7604
  %7607 = fsub fast float %7602, %7605
  %7608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7609 = extractvalue %dx.types.CBufRet.f32 %7608, 2
  %7610 = extractvalue %dx.types.CBufRet.f32 %7608, 3
  %7611 = fmul fast float %7606, %7609
  %7612 = fmul fast float %7607, %7610
  %7613 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7614 = extractvalue %dx.types.CBufRet.i32 %7613, 3
  %7615 = icmp eq i32 %7614, 0
  br i1 %7615, label %7621, label %7616

; <label>:7616                                    ; preds = %7575
  %7617 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %7611, float %7612, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7618 = extractvalue %dx.types.ResRet.f32 %7617, 0
  %7619 = extractvalue %dx.types.ResRet.f32 %7617, 1
  %7620 = extractvalue %dx.types.ResRet.f32 %7617, 2
  br label %7626

; <label>:7621                                    ; preds = %7575
  %7622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7611, float %7612, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7623 = extractvalue %dx.types.ResRet.f32 %7622, 0
  %7624 = extractvalue %dx.types.ResRet.f32 %7622, 1
  %7625 = extractvalue %dx.types.ResRet.f32 %7622, 2
  br label %7626

; <label>:7626                                    ; preds = %7621, %7616
  %7627 = phi float [ %7618, %7616 ], [ %7623, %7621 ]
  %7628 = phi float [ %7619, %7616 ], [ %7624, %7621 ]
  %7629 = phi float [ %7620, %7616 ], [ %7625, %7621 ]
  %7630 = extractvalue %dx.types.CBufRet.f32 %7584, 2
  %7631 = fmul fast float %7630, %7627
  %7632 = extractvalue %dx.types.CBufRet.f32 %7584, 0
  %7633 = fsub fast float %7598, %7632
  %7634 = fsub fast float %7633, %7631
  %7635 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7634)  ; FMax(a,b)
  %7636 = fmul fast float %7635, %7628
  %7637 = call float @dx.op.binary.f32(i32 36, float %7629, float %7636)  ; FMin(a,b)
  %7638 = fmul fast float %7637, 0xBFF7154760000000
  %7639 = call float @dx.op.unary.f32(i32 21, float %7638)  ; Exp(value)
  %7640 = fmul fast float %7577, %7639
  br label %7641

; <label>:7641                                    ; preds = %7626, %7470
  %7642 = phi float [ %7640, %7626 ], [ %7471, %7470 ]
  %7643 = call float @dx.op.binary.f32(i32 36, float %7642, float %7642)  ; FMin(a,b)
  %7644 = call float @dx.op.binary.f32(i32 36, float %7642, float %7643)  ; FMin(a,b)
  %7645 = fcmp fast ogt float %7644, 0.000000e+00
  br i1 %7645, label %7646, label %7954, !dx.controlflow.hints !118

; <label>:7646                                    ; preds = %7641
  %7647 = bitcast i32 %5473 to float
  %7648 = fmul fast float %7642, %6363
  %7649 = fmul fast float %7642, %6364
  %7650 = fmul fast float %7642, %6365
  %7651 = fsub fast float %6352, %172
  %7652 = fsub fast float %6353, %173
  %7653 = fsub fast float %6354, %174
  %7654 = call float @dx.op.dot3.f32(i32 55, float %7651, float %7652, float %7653, float %7651, float %7652, float %7653)  ; Dot3(ax,ay,az,bx,by,bz)
  %7655 = call float @dx.op.unary.f32(i32 25, float %7654)  ; Rsqrt(value)
  %7656 = fmul fast float %7655, %7651
  %7657 = fmul fast float %7655, %7652
  %7658 = fmul fast float %7655, %7653
  %7659 = call float @dx.op.dot3.f32(i32 55, float %6352, float %6353, float %6354, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %7660 = call float @dx.op.dot3.f32(i32 55, float %5270, float %5271, float %5272, float %7656, float %7657, float %7658)  ; Dot3(ax,ay,az,bx,by,bz)
  %7661 = call float @dx.op.unary.f32(i32 7, float %7659)  ; Saturate(value)
  %7662 = fmul fast float %7661, %7661
  %7663 = fmul fast float %7662, %7647
  %7664 = call float @dx.op.unary.f32(i32 7, float %7663)  ; Saturate(value)
  %7665 = fmul fast float %7664, %7661
  %7666 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float %7656, float %7657, float %7658)  ; Dot3(ax,ay,az,bx,by,bz)
  %7667 = fmul fast float %7666, %7666
  %7668 = call float @dx.op.unary.f32(i32 6, float %7659)  ; FAbs(value)
  %7669 = fsub fast float 1.000000e+00, %5467
  %7670 = fmul fast float %5449, %5449
  %7671 = fmul fast float %7670, %7669
  %7672 = fadd fast float %7671, %5467
  %7673 = bitcast float %7672 to i32
  %7674 = ashr i32 %7673, 1
  %7675 = add nsw i32 %7674, 532487669
  %7676 = bitcast i32 %7675 to float
  %7677 = fadd fast float %7676, %5449
  %7678 = fmul fast float %5467, %7667
  %7679 = fsub fast float 1.000000e+00, %7667
  %7680 = fadd fast float %7679, %7678
  %7681 = fmul fast float %7668, %7668
  %7682 = fmul fast float %7681, %7669
  %7683 = fadd fast float %7682, %5467
  %7684 = bitcast float %7683 to i32
  %7685 = ashr i32 %7684, 1
  %7686 = add nsw i32 %7685, 532487669
  %7687 = bitcast i32 %7686 to float
  %7688 = fadd fast float %7687, %7668
  %7689 = fmul fast float %7680, %7680
  %7690 = fmul fast float %7689, %7677
  %7691 = fmul fast float %7690, %7688
  %7692 = fdiv fast float 0x3FF0A00000000000, %7691
  %7693 = fmul fast float %7692, %5467
  %7694 = fmul fast float %5719, 0x3FF9999980000000
  %7695 = fsub fast float 5.000000e+00, %7694
  %7696 = call float @dx.op.unary.f32(i32 6, float %7660)  ; FAbs(value)
  %7697 = fsub fast float 1.000000e+00, %7696
  %7698 = fmul fast float %5719, 0x41D9660740000000
  %7699 = fadd fast float %7698, 0xC1EFBF8940000000
  %7700 = bitcast float %7697 to i32
  %7701 = sitofp i32 %7700 to float
  %7702 = fmul fast float %7701, %7695
  %7703 = fadd fast float %7699, %7702
  %7704 = fptosi float %7703 to i32
  %7705 = bitcast i32 %7704 to float
  %7706 = fsub fast float 1.000000e+00, %5439
  %7707 = fsub fast float 1.000000e+00, %5440
  %7708 = fsub fast float 1.000000e+00, %5447
  %7709 = fmul fast float %7705, %7706
  %7710 = fmul fast float %7705, %7707
  %7711 = fmul fast float %7705, %7708
  %7712 = fadd fast float %7709, %5439
  %7713 = fadd fast float %7710, %5440
  %7714 = fadd fast float %7711, %5447
  br i1 %5742, label %7715, label %7738

; <label>:7715                                    ; preds = %7646
  %7716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5092, float %7696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7717 = extractvalue %dx.types.ResRet.f32 %7716, 0
  %7718 = extractvalue %dx.types.ResRet.f32 %7716, 1
  %7719 = extractvalue %dx.types.ResRet.f32 %7716, 2
  %7720 = fadd fast float %7717, -5.000000e-01
  %7721 = fadd fast float %7718, -5.000000e-01
  %7722 = fadd fast float %7719, -5.000000e-01
  %7723 = fmul fast float %5439, 4.000000e+00
  %7724 = fmul fast float %7723, %7706
  %7725 = fmul fast float %7724, %7720
  %7726 = fmul fast float %5440, 4.000000e+00
  %7727 = fmul fast float %7726, %7707
  %7728 = fmul fast float %7727, %7721
  %7729 = fmul fast float %5447, 4.000000e+00
  %7730 = fmul fast float %7729, %7708
  %7731 = fmul fast float %7730, %7722
  %7732 = fadd fast float %7725, %7712
  %7733 = fadd fast float %7728, %7713
  %7734 = fadd fast float %7731, %7714
  %7735 = call float @dx.op.unary.f32(i32 7, float %7732)  ; Saturate(value)
  %7736 = call float @dx.op.unary.f32(i32 7, float %7733)  ; Saturate(value)
  %7737 = call float @dx.op.unary.f32(i32 7, float %7734)  ; Saturate(value)
  br label %7738

; <label>:7738                                    ; preds = %7715, %7646
  %7739 = phi float [ %7735, %7715 ], [ %7712, %7646 ]
  %7740 = phi float [ %7736, %7715 ], [ %7713, %7646 ]
  %7741 = phi float [ %7737, %7715 ], [ %7714, %7646 ]
  %7742 = fmul fast float %7659, 9.843750e-01
  %7743 = fadd fast float %7742, 7.812500e-03
  %7744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7743, float %5723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7745 = extractvalue %dx.types.ResRet.f32 %7744, 0
  %7746 = extractvalue %dx.types.ResRet.f32 %7744, 1
  %7747 = extractvalue %dx.types.ResRet.f32 %7744, 2
  %7748 = extractvalue %dx.types.ResRet.f32 %7744, 3
  %7749 = fsub fast float %7747, %7745
  %7750 = fsub fast float %7748, %7746
  %7751 = fmul fast float %7749, %5729
  %7752 = fmul fast float %7750, %5729
  %7753 = fadd fast float %7751, %7745
  %7754 = fadd fast float %7752, %7746
  %7755 = fmul fast float %7753, %5439
  %7756 = fmul fast float %7753, %5440
  %7757 = fmul fast float %7753, %5447
  %7758 = fadd fast float %7755, %7754
  %7759 = fadd fast float %7756, %7754
  %7760 = fadd fast float %7757, %7754
  br i1 %5742, label %7761, label %7784

; <label>:7761                                    ; preds = %7738
  %7762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5092, float %7659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7763 = extractvalue %dx.types.ResRet.f32 %7762, 0
  %7764 = extractvalue %dx.types.ResRet.f32 %7762, 1
  %7765 = extractvalue %dx.types.ResRet.f32 %7762, 2
  %7766 = fadd fast float %7763, -5.000000e-01
  %7767 = fadd fast float %7764, -5.000000e-01
  %7768 = fadd fast float %7765, -5.000000e-01
  %7769 = fmul fast float %5439, 4.000000e+00
  %7770 = fmul fast float %7769, %7706
  %7771 = fmul fast float %7770, %7766
  %7772 = fmul fast float %5440, 4.000000e+00
  %7773 = fmul fast float %7772, %7707
  %7774 = fmul fast float %7773, %7767
  %7775 = fmul fast float %5447, 4.000000e+00
  %7776 = fmul fast float %7775, %7708
  %7777 = fmul fast float %7776, %7768
  %7778 = fadd fast float %7771, %7758
  %7779 = fadd fast float %7774, %7759
  %7780 = fadd fast float %7777, %7760
  %7781 = call float @dx.op.unary.f32(i32 7, float %7778)  ; Saturate(value)
  %7782 = call float @dx.op.unary.f32(i32 7, float %7779)  ; Saturate(value)
  %7783 = call float @dx.op.unary.f32(i32 7, float %7780)  ; Saturate(value)
  br label %7784

; <label>:7784                                    ; preds = %7761, %7738
  %7785 = phi float [ %7781, %7761 ], [ %7758, %7738 ]
  %7786 = phi float [ %7782, %7761 ], [ %7759, %7738 ]
  %7787 = phi float [ %7783, %7761 ], [ %7760, %7738 ]
  %7788 = call float @dx.op.binary.f32(i32 35, float %7786, float %7787)  ; FMax(a,b)
  %7789 = call float @dx.op.binary.f32(i32 35, float %7785, float %7788)  ; FMax(a,b)
  %7790 = fsub fast float 1.000000e+00, %7789
  %7791 = call float @dx.op.binary.f32(i32 35, float %7668, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7792 = fdiv fast float %4446, %7791
  %7793 = fmul fast float %6261, %7792
  %7794 = fmul fast float %6263, %7792
  %7795 = fmul fast float %6265, %7792
  %7796 = call float @dx.op.unary.f32(i32 21, float %7793)  ; Exp(value)
  %7797 = call float @dx.op.unary.f32(i32 21, float %7794)  ; Exp(value)
  %7798 = call float @dx.op.unary.f32(i32 21, float %7795)  ; Exp(value)
  %7799 = call float @dx.op.unary.f32(i32 7, float %7796)  ; Saturate(value)
  %7800 = call float @dx.op.unary.f32(i32 7, float %7797)  ; Saturate(value)
  %7801 = call float @dx.op.unary.f32(i32 7, float %7798)  ; Saturate(value)
  %7802 = select i1 %6258, float %7799, float 0.000000e+00
  %7803 = select i1 %6259, float %7800, float 0.000000e+00
  %7804 = select i1 %6260, float %7801, float 0.000000e+00
  %7805 = fsub fast float -0.000000e+00, %5436
  %7806 = fsub fast float -0.000000e+00, %5437
  %7807 = fsub fast float -0.000000e+00, %5438
  %7808 = call float @dx.op.dot3.f32(i32 55, float %6352, float %6353, float %6354, float %7805, float %7806, float %7807)  ; Dot3(ax,ay,az,bx,by,bz)
  %7809 = call float @dx.op.unary.f32(i32 7, float %7808)  ; Saturate(value)
  %7810 = fmul fast float %7809, 9.843750e-01
  %7811 = fadd fast float %7810, 7.812500e-03
  %7812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7811, float %5723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7813 = extractvalue %dx.types.ResRet.f32 %7812, 0
  %7814 = extractvalue %dx.types.ResRet.f32 %7812, 1
  %7815 = extractvalue %dx.types.ResRet.f32 %7812, 2
  %7816 = extractvalue %dx.types.ResRet.f32 %7812, 3
  %7817 = fsub fast float %7815, %7813
  %7818 = fsub fast float %7816, %7814
  %7819 = fmul fast float %7817, %5729
  %7820 = fmul fast float %7818, %5729
  %7821 = fadd fast float %7819, %7813
  %7822 = fadd fast float %7820, %7814
  %7823 = fmul fast float %7821, %5439
  %7824 = fmul fast float %7821, %5440
  %7825 = fmul fast float %7821, %5447
  %7826 = fadd fast float %7823, %7822
  %7827 = fadd fast float %7824, %7822
  %7828 = fadd fast float %7825, %7822
  br i1 %5742, label %7829, label %7852

; <label>:7829                                    ; preds = %7784
  %7830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5092, float %7809, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7831 = extractvalue %dx.types.ResRet.f32 %7830, 0
  %7832 = extractvalue %dx.types.ResRet.f32 %7830, 1
  %7833 = extractvalue %dx.types.ResRet.f32 %7830, 2
  %7834 = fadd fast float %7831, -5.000000e-01
  %7835 = fadd fast float %7832, -5.000000e-01
  %7836 = fadd fast float %7833, -5.000000e-01
  %7837 = fmul fast float %5439, 4.000000e+00
  %7838 = fmul fast float %7837, %7706
  %7839 = fmul fast float %7838, %7834
  %7840 = fmul fast float %5440, 4.000000e+00
  %7841 = fmul fast float %7840, %7707
  %7842 = fmul fast float %7841, %7835
  %7843 = fmul fast float %5447, 4.000000e+00
  %7844 = fmul fast float %7843, %7708
  %7845 = fmul fast float %7844, %7836
  %7846 = fadd fast float %7839, %7826
  %7847 = fadd fast float %7842, %7827
  %7848 = fadd fast float %7845, %7828
  %7849 = call float @dx.op.unary.f32(i32 7, float %7846)  ; Saturate(value)
  %7850 = call float @dx.op.unary.f32(i32 7, float %7847)  ; Saturate(value)
  %7851 = call float @dx.op.unary.f32(i32 7, float %7848)  ; Saturate(value)
  br label %7852

; <label>:7852                                    ; preds = %7829, %7784
  %7853 = phi float [ %7849, %7829 ], [ %7826, %7784 ]
  %7854 = phi float [ %7850, %7829 ], [ %7827, %7784 ]
  %7855 = phi float [ %7851, %7829 ], [ %7828, %7784 ]
  %7856 = call float @dx.op.binary.f32(i32 35, float %7854, float %7855)  ; FMax(a,b)
  %7857 = call float @dx.op.binary.f32(i32 35, float %7853, float %7856)  ; FMax(a,b)
  %7858 = fsub fast float 1.000000e+00, %7857
  %7859 = fmul fast float %5464, %6325
  %7860 = fadd fast float %6327, %7859
  %7861 = call float @dx.op.unary.f32(i32 7, float %7860)  ; Saturate(value)
  %7862 = fsub fast float %6352, %5455
  %7863 = fsub fast float %6353, %5456
  %7864 = fsub fast float %6354, %5457
  %7865 = call float @dx.op.dot3.f32(i32 55, float %7862, float %7863, float %7864, float %7862, float %7863, float %7864)  ; Dot3(ax,ay,az,bx,by,bz)
  %7866 = call float @dx.op.unary.f32(i32 25, float %7865)  ; Rsqrt(value)
  %7867 = fmul fast float %7866, %7862
  %7868 = fmul fast float %7866, %7863
  %7869 = fmul fast float %7866, %7864
  %7870 = call float @dx.op.dot3.f32(i32 55, float %7805, float %7806, float %7807, float %7867, float %7868, float %7869)  ; Dot3(ax,ay,az,bx,by,bz)
  %7871 = fmul fast float %7870, %7870
  %7872 = call float @dx.op.unary.f32(i32 6, float %7809)  ; FAbs(value)
  %7873 = call float @dx.op.binary.f32(i32 35, float %7861, float 0x3F847AE140000000)  ; FMax(a,b)
  %7874 = fmul fast float %7873, %7873
  %7875 = fmul fast float %7874, %7874
  %7876 = fsub fast float 1.000000e+00, %7875
  %7877 = fmul fast float %7670, %7876
  %7878 = fadd fast float %7877, %7875
  %7879 = bitcast float %7878 to i32
  %7880 = ashr i32 %7879, 1
  %7881 = add nsw i32 %7880, 532487669
  %7882 = bitcast i32 %7881 to float
  %7883 = fadd fast float %7882, %5449
  %7884 = fmul fast float %7875, %7871
  %7885 = fsub fast float 1.000000e+00, %7871
  %7886 = fadd fast float %7885, %7884
  %7887 = fmul fast float %7872, %7872
  %7888 = fmul fast float %7887, %7876
  %7889 = fadd fast float %7888, %7875
  %7890 = bitcast float %7889 to i32
  %7891 = ashr i32 %7890, 1
  %7892 = add nsw i32 %7891, 532487669
  %7893 = bitcast i32 %7892 to float
  %7894 = fadd fast float %7893, %7872
  %7895 = fmul fast float %7886, %7886
  %7896 = fmul fast float %7895, %7883
  %7897 = fmul fast float %7896, %7894
  %7898 = fdiv fast float 0x3FF0A00000000000, %7897
  %7899 = fmul fast float %7898, %7875
  %7900 = fmul fast float %7809, %7802
  %7901 = fmul fast float %7809, %7803
  %7902 = fmul fast float %7809, %7804
  %7903 = fmul fast float %7900, %7858
  %7904 = fmul fast float %7903, %7899
  %7905 = fmul fast float %7901, %7858
  %7906 = fmul fast float %7905, %7899
  %7907 = fmul fast float %7902, %7858
  %7908 = fmul fast float %7907, %7899
  %7909 = fmul fast float %7739, %7693
  %7910 = fmul fast float %7740, %7693
  %7911 = fmul fast float %7741, %7693
  %7912 = fsub fast float 1.000000e+00, %7660
  %7913 = bitcast float %7912 to i32
  %7914 = sitofp i32 %7913 to float
  %7915 = fmul fast float %7914, 5.000000e+00
  %7916 = fadd fast float %7915, 0xC1EFBF8940000000
  %7917 = fptosi float %7916 to i32
  %7918 = bitcast i32 %7917 to float
  %7919 = fmul fast float %7918, %5093
  %7920 = fmul fast float %7790, %7919
  %7921 = fmul fast float %7920, %6253
  %7922 = fmul fast float %7920, %6254
  %7923 = fmul fast float %7920, %6255
  %7924 = fadd fast float %7921, %7909
  %7925 = fadd fast float %7922, %7910
  %7926 = fadd fast float %7923, %7911
  %7927 = fmul fast float %7924, %7665
  %7928 = fmul fast float %7925, %7665
  %7929 = fmul fast float %7926, %7665
  %7930 = fmul fast float %7665, %7648
  %7931 = fmul fast float %7930, %7790
  %7932 = fmul fast float %7665, %7649
  %7933 = fmul fast float %7932, %7790
  %7934 = fmul fast float %7665, %7650
  %7935 = fmul fast float %7934, %7790
  %7936 = fadd fast float %7927, %7904
  %7937 = fadd fast float %7928, %7906
  %7938 = fadd fast float %7929, %7908
  %7939 = fmul fast float %7936, %7648
  %7940 = fmul fast float %7937, %7649
  %7941 = fmul fast float %7938, %7650
  %7942 = fadd fast float %7931, %6342
  %7943 = fmul fast float %7942, %5118
  %7944 = fadd fast float %7933, %6344
  %7945 = fmul fast float %7944, %5118
  %7946 = fadd fast float %7935, %6346
  %7947 = fmul fast float %7946, %5118
  %7948 = fadd fast float %7939, %6306
  %7949 = fmul fast float %7948, %5118
  %7950 = fadd fast float %7940, %6309
  %7951 = fmul fast float %7950, %5118
  %7952 = fadd fast float %7941, %6312
  %7953 = fmul fast float %7952, %5118
  br label %7954

; <label>:7954                                    ; preds = %7852, %7641, %6236
  %7955 = phi float [ %6307, %6236 ], [ %6307, %7641 ], [ %7949, %7852 ]
  %7956 = phi float [ %6310, %6236 ], [ %6310, %7641 ], [ %7951, %7852 ]
  %7957 = phi float [ %6313, %6236 ], [ %6313, %7641 ], [ %7953, %7852 ]
  %7958 = phi float [ %6343, %6236 ], [ %6343, %7641 ], [ %7943, %7852 ]
  %7959 = phi float [ %6345, %6236 ], [ %6345, %7641 ], [ %7945, %7852 ]
  %7960 = phi float [ %6347, %6236 ], [ %6347, %7641 ], [ %7947, %7852 ]
  %7961 = fmul fast float %5118, %6282
  %7962 = fsub fast float -0.000000e+00, %7961
  %7963 = fmul fast float %5118, %6283
  %7964 = fsub fast float -0.000000e+00, %7963
  %7965 = fmul fast float %5118, %6284
  %7966 = fsub fast float -0.000000e+00, %7965
  %7967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7968 = extractvalue %dx.types.CBufRet.f32 %7967, 0
  %7969 = fmul fast float %7968, %6288
  %7970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7971 = extractvalue %dx.types.CBufRet.f32 %7970, 3
  %7972 = fsub fast float 1.000000e+00, %5096
  %7973 = call float @dx.op.unary.f32(i32 7, float %7972)  ; Saturate(value)
  %7974 = fadd fast float %7960, %5095
  %7975 = fmul fast float %7974, %5096
  %7976 = fmul fast float %7973, %7971
  %7977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %5097, i32 undef)  ; BufferLoad(srv,index,wot)
  %7978 = extractvalue %dx.types.ResRet.i32 %7977, 3
  %7979 = bitcast i32 %7978 to float
  %7980 = fsub fast float %7962, %7979
  %7981 = fsub fast float %7964, %7979
  %7982 = fsub fast float %7966, %7979
  %7983 = fmul fast float %7980, %186
  %7984 = fmul fast float %7981, %186
  %7985 = fmul fast float %7982, %186
  %7986 = fadd fast float %7983, %7979
  %7987 = fadd fast float %7984, %7979
  %7988 = fadd fast float %7985, %7979
  %7989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7990 = extractvalue %dx.types.CBufRet.f32 %7989, 3
  %7991 = fmul fast float %7958, %5442
  %7992 = fmul fast float %7959, %5443
  %7993 = fmul fast float %7960, %5444
  %7994 = fcmp fast ogt float %85, %206
  %7995 = and i1 %7994, %5186
  %7996 = or i1 %5265, %7995
  %7997 = icmp eq i32 %5185, 2
  %7998 = fcmp fast ole float %85, %206
  %7999 = and i1 %7998, %7997
  %8000 = or i1 %7999, %7996
  br i1 %7995, label %8001, label %8258

; <label>:8001                                    ; preds = %7954
  %8002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8003 = extractvalue %dx.types.CBufRet.f32 %8002, 2
  %8004 = extractvalue %dx.types.CBufRet.f32 %8002, 3
  %8005 = fmul fast float %8003, %97
  %8006 = fmul fast float %8004, %98
  %8007 = call float @dx.op.unary.f32(i32 7, float %8005)  ; Saturate(value)
  %8008 = call float @dx.op.unary.f32(i32 7, float %8006)  ; Saturate(value)
  %8009 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8007, float %8008, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8010 = extractvalue %dx.types.ResRet.f32 %8009, 0
  %8011 = extractvalue %dx.types.ResRet.f32 %8009, 1
  %8012 = extractvalue %dx.types.ResRet.f32 %8009, 2
  %8013 = extractvalue %dx.types.ResRet.f32 %8009, 3
  %8014 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8007, float %8008, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8015 = extractvalue %dx.types.ResRet.f32 %8014, 0
  %8016 = extractvalue %dx.types.ResRet.f32 %8014, 1
  %8017 = extractvalue %dx.types.ResRet.f32 %8014, 2
  %8018 = extractvalue %dx.types.ResRet.f32 %8014, 3
  %8019 = call float @dx.op.binary.f32(i32 35, float %8011, float %8012)  ; FMax(a,b)
  %8020 = call float @dx.op.binary.f32(i32 35, float %8010, float %8019)  ; FMax(a,b)
  %8021 = call float @dx.op.binary.f32(i32 35, float %8020, float %8013)  ; FMax(a,b)
  %8022 = call float @dx.op.binary.f32(i32 36, float %8016, float %8017)  ; FMin(a,b)
  %8023 = call float @dx.op.binary.f32(i32 36, float %8015, float %8022)  ; FMin(a,b)
  %8024 = call float @dx.op.binary.f32(i32 36, float %8023, float %8018)  ; FMin(a,b)
  %8025 = fmul fast float %8021, 2.550000e+02
  %8026 = fadd fast float %8025, 0x3F70101020000000
  %8027 = fptoui float %8026 to i32
  %8028 = fmul fast float %8024, 2.550000e+02
  %8029 = fadd fast float %8028, 0x3F70101020000000
  %8030 = fptoui float %8029 to i32
  %8031 = icmp ult i32 %8027, %8030
  br i1 %8031, label %8032, label %8200

; <label>:8032                                    ; preds = %8001
  %8033 = fcmp fast ogt float %84, 9.843750e-01
  %8034 = fadd fast float %85, -4.000000e+00
  %8035 = select i1 %8033, float -4.000000e+00, float %8034
  %8036 = call float @dx.op.binary.f32(i32 35, float %8035, float 0.000000e+00)  ; FMax(a,b)
  %8037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8038 = extractvalue %dx.types.CBufRet.f32 %8037, 0
  %8039 = fadd fast float %8038, %8036
  %8040 = extractvalue %dx.types.CBufRet.f32 %8037, 2
  %8041 = fmul fast float %8039, %8040
  %8042 = call float @dx.op.unary.f32(i32 23, float %8041)  ; Log(value)
  %8043 = extractvalue %dx.types.CBufRet.f32 %8037, 3
  %8044 = fmul fast float %8043, %8042
  %8045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8046 = extractvalue %dx.types.CBufRet.f32 %8045, 2
  %8047 = fmul fast float %8044, %8046
  %8048 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  %8049 = uitofp i32 %8027 to float
  %8050 = uitofp i32 %8030 to float
  %8051 = fadd fast float %8049, 5.000000e-01
  %8052 = fadd fast float %8050, 5.000000e-01
  %8053 = fmul fast float %8046, %8051
  %8054 = fmul fast float %8046, %8052
  %8055 = fadd fast float %8053, 0x3F0FFB4800000000
  %8056 = fadd fast float %8054, 0xBF0FFB4800000000
  %8057 = call float @dx.op.binary.f32(i32 35, float %8048, float %8055)  ; FMax(a,b)
  %8058 = call float @dx.op.binary.f32(i32 36, float %8057, float %8056)  ; FMin(a,b)
  %8059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8060 = extractvalue %dx.types.CBufRet.f32 %8059, 1
  %8061 = extractvalue %dx.types.CBufRet.f32 %8059, 2
  %8062 = extractvalue %dx.types.CBufRet.f32 %8059, 0
  %8063 = fmul fast float %8060, %8058
  %8064 = fadd fast float %8062, %8063
  %8065 = fadd fast float %8062, %8061
  %8066 = fsub fast float %8060, %8061
  %8067 = fadd fast float %8066, %8062
  %8068 = call float @dx.op.binary.f32(i32 35, float %8064, float %8065)  ; FMax(a,b)
  %8069 = call float @dx.op.binary.f32(i32 36, float %8068, float %8067)  ; FMin(a,b)
  %8070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %8007, float %8008, float %8069, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8071 = extractvalue %dx.types.ResRet.f32 %8070, 0
  %8072 = extractvalue %dx.types.ResRet.f32 %8070, 1
  %8073 = extractvalue %dx.types.ResRet.f32 %8070, 2
  %8074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8075 = extractvalue %dx.types.CBufRet.i32 %8074, 0
  %8076 = extractvalue %dx.types.CBufRet.i32 %8074, 1
  %8077 = uitofp i32 %8075 to float
  %8078 = uitofp i32 %8076 to float
  %8079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8080 = extractvalue %dx.types.CBufRet.f32 %8079, 0
  %8081 = extractvalue %dx.types.CBufRet.f32 %8079, 1
  %8082 = fmul fast float %8077, %8007
  %8083 = fmul fast float %8078, %8008
  %8084 = fadd fast float %8082, -5.000000e-01
  %8085 = fadd fast float %8083, -5.000000e-01
  %8086 = call float @dx.op.unary.f32(i32 22, float %8084)  ; Frc(value)
  %8087 = call float @dx.op.unary.f32(i32 22, float %8085)  ; Frc(value)
  %8088 = fmul fast float %8086, %8086
  %8089 = fmul fast float %8088, %8086
  %8090 = fsub fast float 3.000000e+00, %8086
  %8091 = fmul fast float %8088, %8090
  %8092 = fmul fast float %8086, 3.000000e+00
  %8093 = fmul fast float %8089, 3.000000e+00
  %8094 = fmul fast float %8088, 6.000000e+00
  %8095 = fsub fast float %8093, %8094
  %8096 = fadd fast float %8095, 4.000000e+00
  %8097 = fmul fast float %8096, 0x3FC5555560000000
  %8098 = fmul fast float %8089, -3.000000e+00
  %8099 = fadd fast float %8088, %8086
  %8100 = fmul fast float %8099, 3.000000e+00
  %8101 = fadd fast float %8098, 1.000000e+00
  %8102 = fadd fast float %8101, %8100
  %8103 = fmul fast float %8089, 0x3FC5555560000000
  %8104 = fmul fast float %8087, %8087
  %8105 = fmul fast float %8104, %8087
  %8106 = fsub fast float 3.000000e+00, %8087
  %8107 = fmul fast float %8104, %8106
  %8108 = fmul fast float %8087, 3.000000e+00
  %8109 = fmul fast float %8105, 3.000000e+00
  %8110 = fmul fast float %8104, 6.000000e+00
  %8111 = fsub fast float %8109, %8110
  %8112 = fadd fast float %8111, 4.000000e+00
  %8113 = fmul fast float %8112, 0x3FC5555560000000
  %8114 = fmul fast float %8105, -3.000000e+00
  %8115 = fadd fast float %8104, %8087
  %8116 = fmul fast float %8115, 3.000000e+00
  %8117 = fadd fast float %8114, 1.000000e+00
  %8118 = fadd fast float %8117, %8116
  %8119 = fmul fast float %8105, 0x3FC5555560000000
  %8120 = fadd fast float %8086, 1.000000e+00
  %8121 = fsub fast float 1.000000e+00, %8092
  %8122 = fadd fast float %8121, %8091
  %8123 = fadd fast float %8122, %8096
  %8124 = fmul fast float %8123, 0x3FC5555560000000
  %8125 = fdiv fast float %8097, %8124
  %8126 = fsub fast float %8120, %8125
  %8127 = fsub fast float 1.000000e+00, %8086
  %8128 = fadd fast float %8102, %8089
  %8129 = fmul fast float %8128, 0x3FC5555560000000
  %8130 = fdiv fast float %8103, %8129
  %8131 = fadd fast float %8127, %8130
  %8132 = fadd fast float %8087, 1.000000e+00
  %8133 = fsub fast float 1.000000e+00, %8108
  %8134 = fadd fast float %8133, %8107
  %8135 = fadd fast float %8134, %8112
  %8136 = fmul fast float %8135, 0x3FC5555560000000
  %8137 = fdiv fast float %8113, %8136
  %8138 = fsub fast float %8132, %8137
  %8139 = fsub fast float 1.000000e+00, %8087
  %8140 = fadd fast float %8118, %8105
  %8141 = fmul fast float %8140, 0x3FC5555560000000
  %8142 = fdiv fast float %8119, %8141
  %8143 = fadd fast float %8142, %8139
  %8144 = fmul fast float %8126, %8080
  %8145 = fsub fast float %8007, %8144
  %8146 = fmul fast float %8131, %8080
  %8147 = fadd fast float %8146, %8007
  %8148 = fmul fast float %8143, %8081
  %8149 = fadd fast float %8148, %8008
  %8150 = fmul fast float %8138, %8081
  %8151 = fsub fast float %8008, %8150
  %8152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8145, float %8151, float %8069, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8153 = extractvalue %dx.types.ResRet.f32 %8152, 0
  %8154 = extractvalue %dx.types.ResRet.f32 %8152, 1
  %8155 = extractvalue %dx.types.ResRet.f32 %8152, 2
  %8156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8147, float %8151, float %8069, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8157 = extractvalue %dx.types.ResRet.f32 %8156, 0
  %8158 = extractvalue %dx.types.ResRet.f32 %8156, 1
  %8159 = extractvalue %dx.types.ResRet.f32 %8156, 2
  %8160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8145, float %8149, float %8069, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8161 = extractvalue %dx.types.ResRet.f32 %8160, 0
  %8162 = extractvalue %dx.types.ResRet.f32 %8160, 1
  %8163 = extractvalue %dx.types.ResRet.f32 %8160, 2
  %8164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8147, float %8149, float %8069, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8165 = extractvalue %dx.types.ResRet.f32 %8164, 0
  %8166 = extractvalue %dx.types.ResRet.f32 %8164, 1
  %8167 = extractvalue %dx.types.ResRet.f32 %8164, 2
  %8168 = fsub fast float %8161, %8153
  %8169 = fsub fast float %8162, %8154
  %8170 = fsub fast float %8163, %8155
  %8171 = fmul fast float %8168, %8141
  %8172 = fmul fast float %8169, %8141
  %8173 = fmul fast float %8170, %8141
  %8174 = fadd fast float %8171, %8153
  %8175 = fadd fast float %8172, %8154
  %8176 = fadd fast float %8173, %8155
  %8177 = fsub fast float %8165, %8157
  %8178 = fsub fast float %8166, %8158
  %8179 = fsub fast float %8167, %8159
  %8180 = fmul fast float %8177, %8141
  %8181 = fmul fast float %8178, %8141
  %8182 = fmul fast float %8179, %8141
  %8183 = fsub fast float %8157, %8174
  %8184 = fadd fast float %8183, %8180
  %8185 = fsub fast float %8158, %8175
  %8186 = fadd fast float %8185, %8181
  %8187 = fsub fast float %8159, %8176
  %8188 = fadd fast float %8187, %8182
  %8189 = fmul fast float %8184, %8129
  %8190 = fmul fast float %8186, %8129
  %8191 = fmul fast float %8188, %8129
  %8192 = fadd fast float %8189, %8174
  %8193 = fadd fast float %8190, %8175
  %8194 = fadd fast float %8191, %8176
  %8195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.f32 %8195, 1
  %8197 = fmul fast float %8192, %8196
  %8198 = fmul fast float %8193, %8196
  %8199 = fmul fast float %8194, %8196
  br label %8200

; <label>:8200                                    ; preds = %8032, %8001
  %8201 = phi float [ %8071, %8032 ], [ 1.000000e+00, %8001 ]
  %8202 = phi float [ %8072, %8032 ], [ 1.000000e+00, %8001 ]
  %8203 = phi float [ %8073, %8032 ], [ 1.000000e+00, %8001 ]
  %8204 = phi float [ %8197, %8032 ], [ 0.000000e+00, %8001 ]
  %8205 = phi float [ %8198, %8032 ], [ 0.000000e+00, %8001 ]
  %8206 = phi float [ %8199, %8032 ], [ 0.000000e+00, %8001 ]
  %8207 = fmul fast float %8204, %7986
  %8208 = fmul fast float %8205, %7987
  %8209 = fmul fast float %8206, %7988
  %8210 = call float @dx.op.dot3.f32(i32 55, float %8201, float %8202, float %8203, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8211 = call float @dx.op.dot3.f32(i32 55, float %8207, float %8208, float %8209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8212 = select i1 %245, float %8210, float %8201
  %8213 = select i1 %245, float %8210, float %8202
  %8214 = select i1 %245, float 1.000000e+00, float %8203
  %8215 = select i1 %245, float %8211, float %8207
  %8216 = select i1 %245, float 0.000000e+00, float %8208
  %8217 = select i1 %245, float 0.000000e+00, float %8209
  %8218 = fmul fast float %8212, %7991
  %8219 = fmul fast float %8213, %7992
  %8220 = fmul fast float %8214, %7993
  %8221 = fadd fast float %8218, %8215
  %8222 = fadd fast float %8219, %8216
  %8223 = fadd fast float %8217, %8220
  %8224 = fmul fast float %8212, %7955
  %8225 = fmul fast float %8213, %7956
  %8226 = fmul fast float %8214, %7957
  %8227 = fmul fast float %122, %8003
  %8228 = fmul fast float %124, %8004
  %8229 = fsub fast float 1.000000e+00, %8227
  %8230 = fsub fast float 1.000000e+00, %8228
  %8231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8232 = extractvalue %dx.types.CBufRet.f32 %8231, 0
  %8233 = extractvalue %dx.types.CBufRet.f32 %8231, 1
  %8234 = extractvalue %dx.types.CBufRet.f32 %8231, 2
  %8235 = fmul fast float %8229, %8232
  %8236 = fmul fast float %8229, %8233
  %8237 = fmul fast float %8229, %8234
  %8238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8239 = extractvalue %dx.types.CBufRet.f32 %8238, 0
  %8240 = extractvalue %dx.types.CBufRet.f32 %8238, 1
  %8241 = extractvalue %dx.types.CBufRet.f32 %8238, 2
  %8242 = fmul fast float %8230, %8239
  %8243 = fmul fast float %8230, %8240
  %8244 = fmul fast float %8230, %8241
  %8245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8245, 0
  %8247 = extractvalue %dx.types.CBufRet.f32 %8245, 1
  %8248 = extractvalue %dx.types.CBufRet.f32 %8245, 2
  %8249 = fadd fast float %8242, %8246
  %8250 = fadd fast float %8249, %8235
  %8251 = fadd fast float %8243, %8247
  %8252 = fadd fast float %8251, %8236
  %8253 = fadd fast float %8244, %8248
  %8254 = fadd fast float %8253, %8237
  %8255 = fmul fast float %8250, %206
  %8256 = fmul fast float %8252, %206
  %8257 = fmul fast float %8254, %206
  br label %8258

; <label>:8258                                    ; preds = %8200, %7954
  %8259 = phi float [ %8255, %8200 ], [ %152, %7954 ]
  %8260 = phi float [ %8256, %8200 ], [ %153, %7954 ]
  %8261 = phi float [ %8257, %8200 ], [ %154, %7954 ]
  %8262 = phi float [ %206, %8200 ], [ %85, %7954 ]
  %8263 = phi float [ %8221, %8200 ], [ %7991, %7954 ]
  %8264 = phi float [ %8222, %8200 ], [ %7992, %7954 ]
  %8265 = phi float [ %8223, %8200 ], [ %7993, %7954 ]
  %8266 = phi float [ %8224, %8200 ], [ %7955, %7954 ]
  %8267 = phi float [ %8225, %8200 ], [ %7956, %7954 ]
  %8268 = phi float [ %8226, %8200 ], [ %7957, %7954 ]
  %8269 = phi float [ %8201, %8200 ], [ 1.000000e+00, %7954 ]
  br i1 %8000, label %9424, label %8270

; <label>:8270                                    ; preds = %8258
  %8271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8272 = extractvalue %dx.types.CBufRet.f32 %8271, 0
  %8273 = extractvalue %dx.types.CBufRet.f32 %8271, 1
  %8274 = extractvalue %dx.types.CBufRet.f32 %8271, 2
  %8275 = extractvalue %dx.types.CBufRet.f32 %8271, 3
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 0
  %8278 = extractvalue %dx.types.CBufRet.f32 %8276, 1
  %8279 = extractvalue %dx.types.CBufRet.f32 %8276, 2
  %8280 = extractvalue %dx.types.CBufRet.f32 %8276, 3
  %8281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8282 = extractvalue %dx.types.CBufRet.f32 %8281, 0
  %8283 = extractvalue %dx.types.CBufRet.f32 %8281, 1
  %8284 = extractvalue %dx.types.CBufRet.f32 %8281, 2
  %8285 = extractvalue %dx.types.CBufRet.f32 %8281, 3
  %8286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8287 = extractvalue %dx.types.CBufRet.f32 %8286, 0
  %8288 = extractvalue %dx.types.CBufRet.f32 %8286, 1
  %8289 = extractvalue %dx.types.CBufRet.f32 %8286, 2
  %8290 = extractvalue %dx.types.CBufRet.f32 %8286, 3
  %8291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8292 = extractvalue %dx.types.CBufRet.f32 %8291, 3
  %8293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8294 = extractvalue %dx.types.CBufRet.f32 %8293, 3
  %8295 = extractvalue %dx.types.CBufRet.f32 %8293, 0
  %8296 = extractvalue %dx.types.CBufRet.f32 %8293, 1
  %8297 = extractvalue %dx.types.CBufRet.f32 %8293, 2
  %8298 = fcmp fast olt float %8297, -5.000000e-01
  %8299 = call float @dx.op.dot3.f32(i32 55, float %8259, float %8260, float %8261, float %8259, float %8260, float %8261)  ; Dot3(ax,ay,az,bx,by,bz)
  %8300 = call float @dx.op.unary.f32(i32 25, float %8299)  ; Rsqrt(value)
  %8301 = fmul fast float %8300, %8299
  %8302 = fmul fast float %8300, %8259
  %8303 = fmul fast float %8300, %8260
  %8304 = fmul fast float %8300, %8261
  %8305 = fadd fast float %8301, %8275
  %8306 = call float @dx.op.dot3.f32(i32 55, float %8302, float %8303, float %8304, float %8272, float %8273, float %8274)  ; Dot3(ax,ay,az,bx,by,bz)
  %8307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8308 = extractvalue %dx.types.CBufRet.i32 %8307, 1
  %8309 = and i32 %8308, 1
  %8310 = icmp ne i32 %8309, 0
  %8311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8312 = extractvalue %dx.types.CBufRet.f32 %8311, 2
  %8313 = fcmp fast ogt float %8312, 0.000000e+00
  %8314 = and i1 %8310, %8313
  br i1 %8314, label %8315, label %8721, !dx.controlflow.hints !119

; <label>:8315                                    ; preds = %8270
  %8316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8317 = extractvalue %dx.types.CBufRet.f32 %8316, 3
  %8318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8319 = extractvalue %dx.types.CBufRet.f32 %8318, 2
  %8320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8321 = extractvalue %dx.types.CBufRet.f32 %8320, 2
  %8322 = fsub fast float %8319, %8321
  %8323 = and i32 %8308, 2
  %8324 = extractvalue %dx.types.CBufRet.i32 %8307, 0
  %8325 = call i32 @dx.op.binary.i32(i32 40, i32 %8324, i32 3)  ; UMin(a,b)
  %8326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8327 = extractvalue %dx.types.CBufRet.f32 %8326, 0
  %8328 = extractvalue %dx.types.CBufRet.f32 %8326, 1
  %8329 = extractvalue %dx.types.CBufRet.f32 %8320, 0
  %8330 = extractvalue %dx.types.CBufRet.f32 %8320, 1
  %8331 = fsub fast float %8327, %8329
  %8332 = fsub fast float %8328, %8330
  %8333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8334 = extractvalue %dx.types.CBufRet.f32 %8333, 0
  %8335 = fcmp fast ogt float %8334, 0.000000e+00
  %8336 = fsub fast float -0.000000e+00, %8331
  %8337 = fsub fast float -0.000000e+00, %8332
  %8338 = call float @dx.op.dot2.f32(i32 54, float %8302, float %8303, float %8302, float %8303)  ; Dot2(ax,ay,bx,by)
  %8339 = call float @dx.op.dot2.f32(i32 54, float %8302, float %8303, float %8336, float %8337)  ; Dot2(ax,ay,bx,by)
  %8340 = fmul fast float %8339, 2.000000e+00
  %8341 = call float @dx.op.dot2.f32(i32 54, float %8336, float %8337, float %8336, float %8337)  ; Dot2(ax,ay,bx,by)
  %8342 = fmul fast float %8334, %8334
  %8343 = fsub fast float %8341, %8342
  %8344 = fmul fast float %8340, %8340
  %8345 = fmul fast float %8338, 4.000000e+00
  %8346 = fmul fast float %8345, %8343
  %8347 = fsub fast float %8344, %8346
  %8348 = fcmp fast ogt float %8347, 0.000000e+00
  br i1 %8348, label %8349, label %8364

; <label>:8349                                    ; preds = %8315
  %8350 = fcmp fast ogt float %8340, 0.000000e+00
  %8351 = call float @dx.op.unary.f32(i32 24, float %8347)  ; Sqrt(value)
  %8352 = fsub fast float -0.000000e+00, %8351
  %8353 = select i1 %8350, float %8351, float %8352
  %8354 = fadd fast float %8353, %8340
  %8355 = fmul float %8354, -5.000000e-01
  %8356 = fdiv fast float %8355, %8338
  %8357 = call float @dx.op.binary.f32(i32 35, float %8356, float 0.000000e+00)  ; FMax(a,b)
  %8358 = call float @dx.op.binary.f32(i32 36, float %8301, float %8357)  ; FMin(a,b)
  %8359 = fdiv fast float %8343, %8355
  %8360 = call float @dx.op.binary.f32(i32 35, float %8359, float 0.000000e+00)  ; FMax(a,b)
  %8361 = call float @dx.op.binary.f32(i32 36, float %8301, float %8360)  ; FMin(a,b)
  %8362 = call float @dx.op.binary.f32(i32 36, float %8358, float %8361)  ; FMin(a,b)
  %8363 = call float @dx.op.binary.f32(i32 35, float %8358, float %8361)  ; FMax(a,b)
  br label %8364

; <label>:8364                                    ; preds = %8349, %8315
  %8365 = phi float [ %8363, %8349 ], [ -1.000000e+00, %8315 ]
  %8366 = phi float [ %8362, %8349 ], [ -1.000000e+00, %8315 ]
  %8367 = phi i1 [ true, %8349 ], [ false, %8315 ]
  %8368 = and i1 %8335, %8367
  br i1 %8368, label %8369, label %8371

; <label>:8369                                    ; preds = %8364
  %8370 = fcmp fast oeq float %8366, %8365
  br i1 %8370, label %8674, label %8372

; <label>:8371                                    ; preds = %8364
  br i1 %8335, label %8674, label %8372

; <label>:8372                                    ; preds = %8371, %8369
  %8373 = phi float [ %8301, %8371 ], [ %8365, %8369 ]
  %8374 = phi float [ 0.000000e+00, %8371 ], [ %8366, %8369 ]
  %8375 = icmp ne i32 %8323, 0
  %8376 = fmul fast float %8373, %8304
  %8377 = fadd fast float %8376, %8317
  %8378 = fmul fast float %8377, %8373
  %8379 = select i1 %8375, float 0.000000e+00, float %8378
  %8380 = fcmp fast oeq float %8304, 0.000000e+00
  %8381 = fdiv fast float %8322, %8304
  %8382 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8381)  ; FMax(a,b)
  %8383 = select i1 %8380, float %8373, float %8382
  %8384 = call float @dx.op.binary.f32(i32 36, float %8373, float %8383)  ; FMin(a,b)
  %8385 = fcmp fast ogt float %8304, 0.000000e+00
  %8386 = fcmp fast olt float %8322, 0.000000e+00
  br i1 %8385, label %8387, label %8444

; <label>:8387                                    ; preds = %8372
  %8388 = icmp eq i32 %8323, 0
  br i1 %8386, label %8389, label %8433

; <label>:8389                                    ; preds = %8387
  %8390 = select i1 %8388, float %8373, float 0.000000e+00
  %8391 = fsub fast float -0.000000e+00, %8390
  %8392 = call float @dx.op.unary.f32(i32 6, float %8391)  ; FAbs(value)
  %8393 = fmul fast float %8390, %8304
  %8394 = fadd fast float %8393, %8317
  %8395 = fmul fast float %8392, %8394
  %8396 = fsub fast float %8379, %8395
  %8397 = fsub fast float %8373, %8392
  %8398 = select i1 %8388, float %8397, float 0.000000e+00
  %8399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8400 = extractvalue %dx.types.CBufRet.f32 %8399, 0
  %8401 = extractvalue %dx.types.CBufRet.f32 %8399, 1
  %8402 = extractvalue %dx.types.CBufRet.f32 %8399, 2
  %8403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8404 = extractvalue %dx.types.CBufRet.f32 %8403, 0
  %8405 = extractvalue %dx.types.CBufRet.f32 %8403, 1
  %8406 = extractvalue %dx.types.CBufRet.f32 %8403, 2
  %8407 = extractvalue %dx.types.CBufRet.f32 %8403, 3
  %8408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8409 = extractvalue %dx.types.CBufRet.f32 %8408, 3
  %8410 = call float @dx.op.binary.f32(i32 36, float %8396, float %8409)  ; FMin(a,b)
  %8411 = fmul fast float %8407, %8398
  %8412 = call float @dx.op.unary.f32(i32 7, float %8411)  ; Saturate(value)
  %8413 = fsub fast float %8404, %8400
  %8414 = fsub fast float %8405, %8401
  %8415 = fsub fast float %8406, %8402
  %8416 = fmul fast float %8412, %8413
  %8417 = fmul fast float %8412, %8414
  %8418 = fmul fast float %8412, %8415
  %8419 = fadd fast float %8416, %8400
  %8420 = fadd fast float %8417, %8401
  %8421 = fadd fast float %8418, %8402
  %8422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8423 = extractvalue %dx.types.CBufRet.f32 %8422, 0
  %8424 = extractvalue %dx.types.CBufRet.f32 %8422, 1
  %8425 = fadd fast float %8424, %8423
  %8426 = call float @dx.op.unary.f32(i32 7, float %8425)  ; Saturate(value)
  %8427 = extractvalue %dx.types.CBufRet.f32 %8422, 2
  %8428 = extractvalue %dx.types.CBufRet.f32 %8422, 3
  %8429 = fadd fast float %8428, %8427
  %8430 = call float @dx.op.unary.f32(i32 7, float %8429)  ; Saturate(value)
  %8431 = fmul fast float %8426, %8410
  %8432 = fmul fast float %8431, %8430
  br label %8674

; <label>:8433                                    ; preds = %8387
  br i1 %8388, label %8434, label %8455

; <label>:8434                                    ; preds = %8433
  %8435 = call float @dx.op.binary.f32(i32 36, float %8384, float %8374)  ; FMin(a,b)
  %8436 = fsub fast float %8384, %8435
  %8437 = fsub fast float %8436, %8373
  %8438 = call float @dx.op.unary.f32(i32 6, float %8437)  ; FAbs(value)
  %8439 = fadd fast float %8436, %8373
  %8440 = fmul fast float %8439, %8304
  %8441 = fadd fast float %8440, %8317
  %8442 = fmul fast float %8441, %8438
  %8443 = fsub fast float %8379, %8442
  br label %8455

; <label>:8444                                    ; preds = %8372
  br i1 %8386, label %8445, label %8455

; <label>:8445                                    ; preds = %8444
  %8446 = call float @dx.op.binary.f32(i32 35, float %8374, float %8384)  ; FMax(a,b)
  %8447 = icmp eq i32 %8323, 0
  %8448 = select i1 %8447, float %8384, float 0.000000e+00
  %8449 = fsub fast float -0.000000e+00, %8448
  %8450 = call float @dx.op.unary.f32(i32 6, float %8449)  ; FAbs(value)
  %8451 = fmul fast float %8448, %8304
  %8452 = fadd fast float %8451, %8317
  %8453 = fmul fast float %8450, %8452
  %8454 = fsub fast float %8379, %8453
  br label %8455

; <label>:8455                                    ; preds = %8445, %8444, %8434, %8433
  %8456 = phi float [ %8374, %8433 ], [ %8374, %8434 ], [ %8446, %8445 ], [ %8374, %8444 ]
  %8457 = phi float [ 0.000000e+00, %8433 ], [ %8438, %8434 ], [ %8450, %8445 ], [ 0.000000e+00, %8444 ]
  %8458 = phi float [ %8379, %8433 ], [ %8443, %8434 ], [ %8454, %8445 ], [ %8379, %8444 ]
  %8459 = phi float [ %8384, %8433 ], [ %8384, %8434 ], [ %8373, %8445 ], [ %8373, %8444 ]
  %8460 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %8460, align 4, !tbaa !109, !noalias !120
  %8461 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %8461, align 4, !tbaa !109, !noalias !120
  %8462 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %8462, align 4, !tbaa !109, !noalias !120
  %8463 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %8463, align 4, !tbaa !109, !noalias !120
  %8464 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %8464, align 4, !tbaa !109, !noalias !120
  %8465 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %8465, align 4, !tbaa !109, !noalias !120
  %8466 = icmp sgt i32 %8325, 0
  br i1 %8466, label %8467, label %8528

; <label>:8467                                    ; preds = %8455
  br label %8468

; <label>:8468                                    ; preds = %8517, %8467
  %8469 = phi i32 [ %8518, %8517 ], [ 0, %8467 ]
  %8470 = phi i32 [ %8519, %8517 ], [ 0, %8467 ]
  %8471 = add nuw i32 %8470, 171
  %8472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %8471)  ; CBufferLoadLegacy(handle,regIndex)
  %8473 = extractvalue %dx.types.CBufRet.f32 %8472, 0
  %8474 = extractvalue %dx.types.CBufRet.f32 %8472, 1
  %8475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8476 = extractvalue %dx.types.CBufRet.f32 %8475, 0
  %8477 = extractvalue %dx.types.CBufRet.f32 %8475, 1
  %8478 = fsub fast float %8473, %8476
  %8479 = fsub fast float %8474, %8477
  %8480 = extractvalue %dx.types.CBufRet.f32 %8472, 2
  %8481 = fsub fast float -0.000000e+00, %8478
  %8482 = fsub fast float -0.000000e+00, %8479
  %8483 = call float @dx.op.dot2.f32(i32 54, float %8302, float %8303, float %8481, float %8482)  ; Dot2(ax,ay,bx,by)
  %8484 = fmul fast float %8483, 2.000000e+00
  %8485 = call float @dx.op.dot2.f32(i32 54, float %8481, float %8482, float %8481, float %8482)  ; Dot2(ax,ay,bx,by)
  %8486 = fmul fast float %8480, %8480
  %8487 = fsub fast float %8485, %8486
  %8488 = fmul fast float %8484, %8484
  %8489 = fmul fast float %8345, %8487
  %8490 = fsub fast float %8488, %8489
  %8491 = fcmp fast ogt float %8490, 0.000000e+00
  br i1 %8491, label %8492, label %8507

; <label>:8492                                    ; preds = %8468
  %8493 = fcmp fast ogt float %8484, 0.000000e+00
  %8494 = call float @dx.op.unary.f32(i32 24, float %8490)  ; Sqrt(value)
  %8495 = fsub fast float -0.000000e+00, %8494
  %8496 = select i1 %8493, float %8494, float %8495
  %8497 = fadd fast float %8496, %8484
  %8498 = fmul float %8497, -5.000000e-01
  %8499 = fdiv fast float %8498, %8338
  %8500 = call float @dx.op.binary.f32(i32 35, float %8499, float 0.000000e+00)  ; FMax(a,b)
  %8501 = call float @dx.op.binary.f32(i32 36, float %8373, float %8500)  ; FMin(a,b)
  %8502 = fdiv fast float %8487, %8498
  %8503 = call float @dx.op.binary.f32(i32 35, float %8502, float 0.000000e+00)  ; FMax(a,b)
  %8504 = call float @dx.op.binary.f32(i32 36, float %8373, float %8503)  ; FMin(a,b)
  %8505 = call float @dx.op.binary.f32(i32 36, float %8501, float %8504)  ; FMin(a,b)
  %8506 = call float @dx.op.binary.f32(i32 35, float %8501, float %8504)  ; FMax(a,b)
  br label %8507

; <label>:8507                                    ; preds = %8492, %8468
  %8508 = phi float [ %8506, %8492 ], [ -1.000000e+00, %8468 ]
  %8509 = phi float [ %8505, %8492 ], [ -1.000000e+00, %8468 ]
  %8510 = phi i1 [ true, %8492 ], [ false, %8468 ]
  br i1 %8510, label %8511, label %8517

; <label>:8511                                    ; preds = %8507
  %8512 = call float @dx.op.binary.f32(i32 35, float %8456, float %8509)  ; FMax(a,b)
  %8513 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8470
  store float %8512, float* %8513, align 4, !tbaa !109, !noalias !120
  %8514 = call float @dx.op.binary.f32(i32 35, float %8456, float %8508)  ; FMax(a,b)
  %8515 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8470
  store float %8514, float* %8515, align 4, !tbaa !109, !noalias !120
  %8516 = add nsw i32 %8469, 1
  br label %8517

; <label>:8517                                    ; preds = %8511, %8507
  %8518 = phi i32 [ %8516, %8511 ], [ %8469, %8507 ]
  %8519 = add nuw nsw i32 %8470, 1
  %8520 = icmp eq i32 %8519, %8325
  br i1 %8520, label %8521, label %8468

; <label>:8521                                    ; preds = %8517
  %8522 = load float, float* %8462, align 4, !tbaa !109, !alias.scope !136, !noalias !139
  %8523 = load float, float* %8461, align 4, !tbaa !109, !alias.scope !142, !noalias !143
  %8524 = load float, float* %8460, align 4, !tbaa !109, !alias.scope !144, !noalias !145
  %8525 = load float, float* %8465, align 4, !tbaa !109, !alias.scope !146, !noalias !149
  %8526 = load float, float* %8464, align 4, !tbaa !109, !alias.scope !152, !noalias !153
  %8527 = load float, float* %8463, align 4, !tbaa !109, !alias.scope !154, !noalias !155
  br label %8528

; <label>:8528                                    ; preds = %8521, %8455
  %8529 = phi float [ -1.000000e+00, %8455 ], [ %8527, %8521 ]
  %8530 = phi float [ -1.000000e+00, %8455 ], [ %8526, %8521 ]
  %8531 = phi float [ -1.000000e+00, %8455 ], [ %8525, %8521 ]
  %8532 = phi float [ -1.000000e+00, %8455 ], [ %8524, %8521 ]
  %8533 = phi float [ -1.000000e+00, %8455 ], [ %8523, %8521 ]
  %8534 = phi float [ -1.000000e+00, %8455 ], [ %8522, %8521 ]
  %8535 = phi i32 [ 0, %8455 ], [ %8518, %8521 ]
  %8536 = call float @dx.op.binary.f32(i32 36, float %8533, float %8534)  ; FMin(a,b)
  %8537 = call float @dx.op.binary.f32(i32 36, float %8532, float %8536)  ; FMin(a,b)
  %8538 = call float @dx.op.binary.f32(i32 35, float %8532, float %8533)  ; FMax(a,b)
  %8539 = call float @dx.op.binary.f32(i32 36, float %8538, float %8534)  ; FMin(a,b)
  %8540 = call float @dx.op.binary.f32(i32 36, float %8532, float %8533)  ; FMin(a,b)
  %8541 = call float @dx.op.binary.f32(i32 35, float %8540, float %8539)  ; FMax(a,b)
  %8542 = call float @dx.op.binary.f32(i32 35, float %8533, float %8534)  ; FMax(a,b)
  %8543 = call float @dx.op.binary.f32(i32 35, float %8532, float %8542)  ; FMax(a,b)
  store float %8537, float* %8460, align 4, !tbaa !109, !alias.scope !144, !noalias !145
  store float %8541, float* %8461, align 4, !tbaa !109, !alias.scope !142, !noalias !143
  store float %8543, float* %8462, align 4, !tbaa !109, !alias.scope !136, !noalias !139
  %8544 = call float @dx.op.binary.f32(i32 36, float %8530, float %8531)  ; FMin(a,b)
  %8545 = call float @dx.op.binary.f32(i32 36, float %8529, float %8544)  ; FMin(a,b)
  %8546 = call float @dx.op.binary.f32(i32 35, float %8529, float %8530)  ; FMax(a,b)
  %8547 = call float @dx.op.binary.f32(i32 36, float %8546, float %8531)  ; FMin(a,b)
  %8548 = call float @dx.op.binary.f32(i32 36, float %8529, float %8530)  ; FMin(a,b)
  %8549 = call float @dx.op.binary.f32(i32 35, float %8548, float %8547)  ; FMax(a,b)
  %8550 = call float @dx.op.binary.f32(i32 35, float %8530, float %8531)  ; FMax(a,b)
  %8551 = call float @dx.op.binary.f32(i32 35, float %8529, float %8550)  ; FMax(a,b)
  store float %8545, float* %8463, align 4, !tbaa !109, !alias.scope !154, !noalias !155
  store float %8549, float* %8464, align 4, !tbaa !109, !alias.scope !152, !noalias !153
  store float %8551, float* %8465, align 4, !tbaa !109, !alias.scope !146, !noalias !149
  %8552 = sub nsw i32 3, %8535
  %8553 = icmp sgt i32 %8552, 2
  br i1 %8553, label %8554, label %8592

; <label>:8554                                    ; preds = %8528
  %8555 = icmp eq i32 %8323, 0
  %8556 = fsub fast float %8373, %8457
  %8557 = select i1 %8555, float %8556, float %8457
  %8558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8559 = extractvalue %dx.types.CBufRet.f32 %8558, 0
  %8560 = extractvalue %dx.types.CBufRet.f32 %8558, 1
  %8561 = extractvalue %dx.types.CBufRet.f32 %8558, 2
  %8562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8563 = extractvalue %dx.types.CBufRet.f32 %8562, 0
  %8564 = extractvalue %dx.types.CBufRet.f32 %8562, 1
  %8565 = extractvalue %dx.types.CBufRet.f32 %8562, 2
  %8566 = extractvalue %dx.types.CBufRet.f32 %8562, 3
  %8567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8568 = extractvalue %dx.types.CBufRet.f32 %8567, 3
  %8569 = call float @dx.op.binary.f32(i32 36, float %8458, float %8568)  ; FMin(a,b)
  %8570 = fmul fast float %8566, %8557
  %8571 = call float @dx.op.unary.f32(i32 7, float %8570)  ; Saturate(value)
  %8572 = fsub fast float %8563, %8559
  %8573 = fsub fast float %8564, %8560
  %8574 = fsub fast float %8565, %8561
  %8575 = fmul fast float %8571, %8572
  %8576 = fmul fast float %8571, %8573
  %8577 = fmul fast float %8571, %8574
  %8578 = fadd fast float %8575, %8559
  %8579 = fadd fast float %8576, %8560
  %8580 = fadd fast float %8577, %8561
  %8581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8582 = extractvalue %dx.types.CBufRet.f32 %8581, 0
  %8583 = extractvalue %dx.types.CBufRet.f32 %8581, 1
  %8584 = fadd fast float %8583, %8582
  %8585 = call float @dx.op.unary.f32(i32 7, float %8584)  ; Saturate(value)
  %8586 = extractvalue %dx.types.CBufRet.f32 %8581, 2
  %8587 = extractvalue %dx.types.CBufRet.f32 %8581, 3
  %8588 = fadd fast float %8587, %8586
  %8589 = call float @dx.op.unary.f32(i32 7, float %8588)  ; Saturate(value)
  %8590 = fmul fast float %8585, %8569
  %8591 = fmul fast float %8590, %8589
  br label %8674

; <label>:8592                                    ; preds = %8528
  %8593 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8552
  %8594 = load float, float* %8593, align 4, !tbaa !109, !noalias !120
  %8595 = fcmp fast olt float %8594, %8459
  %8596 = icmp sgt i32 %8535, 0
  %8597 = and i1 %8596, %8595
  br i1 %8597, label %8598, label %8635

; <label>:8598                                    ; preds = %8592
  br label %8599

; <label>:8599                                    ; preds = %8628, %8598
  %8600 = phi float [ %8629, %8628 ], [ %8457, %8598 ]
  %8601 = phi float [ %8630, %8628 ], [ %8458, %8598 ]
  %8602 = phi float [ %8610, %8628 ], [ %8594, %8598 ]
  %8603 = phi i32 [ %8607, %8628 ], [ %8552, %8598 ]
  %8604 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8603
  %8605 = load float, float* %8604, align 4, !tbaa !109, !noalias !120
  %8606 = icmp slt i32 %8603, 2
  %8607 = add nsw i32 %8603, 1
  %8608 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8607
  %8609 = load float, float* %8608, align 4, !tbaa !109, !noalias !120
  %8610 = select i1 %8606, float %8609, float %8373
  %8611 = call float @dx.op.binary.f32(i32 36, float %8610, float %8605)  ; FMin(a,b)
  %8612 = call float @dx.op.binary.f32(i32 36, float %8459, float %8611)  ; FMin(a,b)
  %8613 = icmp eq i32 %8323, 0
  %8614 = fadd fast float %8612, %8602
  %8615 = fmul fast float %8614, %8304
  %8616 = fadd fast float %8615, %8317
  br i1 %8613, label %8622, label %8617

; <label>:8617                                    ; preds = %8599
  %8618 = fsub fast float %8612, %8602
  %8619 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8618)  ; FMax(a,b)
  %8620 = fmul fast float %8619, %8616
  %8621 = fadd fast float %8620, %8601
  br label %8628

; <label>:8622                                    ; preds = %8599
  %8623 = fsub fast float %8602, %8612
  %8624 = call float @dx.op.unary.f32(i32 6, float %8623)  ; FAbs(value)
  %8625 = fadd fast float %8624, %8600
  %8626 = fmul fast float %8624, %8616
  %8627 = fsub fast float %8601, %8626
  br label %8628

; <label>:8628                                    ; preds = %8622, %8617
  %8629 = phi float [ %8619, %8617 ], [ %8625, %8622 ]
  %8630 = phi float [ %8621, %8617 ], [ %8627, %8622 ]
  %8631 = fcmp fast olt float %8610, %8459
  %8632 = icmp slt i32 %8607, 3
  %8633 = and i1 %8632, %8631
  br i1 %8633, label %8599, label %8634

; <label>:8634                                    ; preds = %8628
  br label %8635

; <label>:8635                                    ; preds = %8634, %8592
  %8636 = phi float [ %8457, %8592 ], [ %8629, %8634 ]
  %8637 = phi float [ %8458, %8592 ], [ %8630, %8634 ]
  %8638 = fsub fast float %8373, %8636
  %8639 = select i1 %8375, float %8636, float %8638
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 0
  %8642 = extractvalue %dx.types.CBufRet.f32 %8640, 1
  %8643 = extractvalue %dx.types.CBufRet.f32 %8640, 2
  %8644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8645 = extractvalue %dx.types.CBufRet.f32 %8644, 0
  %8646 = extractvalue %dx.types.CBufRet.f32 %8644, 1
  %8647 = extractvalue %dx.types.CBufRet.f32 %8644, 2
  %8648 = extractvalue %dx.types.CBufRet.f32 %8644, 3
  %8649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8650 = extractvalue %dx.types.CBufRet.f32 %8649, 3
  %8651 = call float @dx.op.binary.f32(i32 36, float %8637, float %8650)  ; FMin(a,b)
  %8652 = fmul fast float %8648, %8639
  %8653 = call float @dx.op.unary.f32(i32 7, float %8652)  ; Saturate(value)
  %8654 = fsub fast float %8645, %8641
  %8655 = fsub fast float %8646, %8642
  %8656 = fsub fast float %8647, %8643
  %8657 = fmul fast float %8653, %8654
  %8658 = fmul fast float %8653, %8655
  %8659 = fmul fast float %8653, %8656
  %8660 = fadd fast float %8657, %8641
  %8661 = fadd fast float %8658, %8642
  %8662 = fadd fast float %8659, %8643
  %8663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8664 = extractvalue %dx.types.CBufRet.f32 %8663, 0
  %8665 = extractvalue %dx.types.CBufRet.f32 %8663, 1
  %8666 = fadd fast float %8665, %8664
  %8667 = call float @dx.op.unary.f32(i32 7, float %8666)  ; Saturate(value)
  %8668 = extractvalue %dx.types.CBufRet.f32 %8663, 2
  %8669 = extractvalue %dx.types.CBufRet.f32 %8663, 3
  %8670 = fadd fast float %8669, %8668
  %8671 = call float @dx.op.unary.f32(i32 7, float %8670)  ; Saturate(value)
  %8672 = fmul fast float %8667, %8651
  %8673 = fmul fast float %8672, %8671
  br label %8674

; <label>:8674                                    ; preds = %8635, %8554, %8389, %8371, %8369
  %8675 = phi float [ %8398, %8389 ], [ %8557, %8554 ], [ %8639, %8635 ], [ 0.000000e+00, %8369 ], [ 0.000000e+00, %8371 ]
  %8676 = phi float [ %8432, %8389 ], [ %8591, %8554 ], [ %8673, %8635 ], [ 0.000000e+00, %8369 ], [ 0.000000e+00, %8371 ]
  %8677 = phi float [ %8419, %8389 ], [ %8578, %8554 ], [ %8660, %8635 ], [ 0.000000e+00, %8369 ], [ 0.000000e+00, %8371 ]
  %8678 = phi float [ %8420, %8389 ], [ %8579, %8554 ], [ %8661, %8635 ], [ 0.000000e+00, %8369 ], [ 0.000000e+00, %8371 ]
  %8679 = phi float [ %8421, %8389 ], [ %8580, %8554 ], [ %8662, %8635 ], [ 0.000000e+00, %8369 ], [ 0.000000e+00, %8371 ]
  %8680 = fmul fast float %8312, %8676
  %8681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8682 = extractvalue %dx.types.CBufRet.f32 %8681, 2
  %8683 = fsub fast float %8319, %8682
  %8684 = fcmp fast olt float %8680, -2.000000e+01
  %8685 = call float @dx.op.unary.f32(i32 21, float %8680)  ; Exp(value)
  %8686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8687 = extractvalue %dx.types.CBufRet.f32 %8686, 2
  %8688 = extractvalue %dx.types.CBufRet.f32 %8686, 3
  %8689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8690 = extractvalue %dx.types.CBufRet.f32 %8689, 2
  %8691 = fmul fast float %8688, %8683
  %8692 = call float @dx.op.unary.f32(i32 7, float %8691)  ; Saturate(value)
  %8693 = fsub fast float 1.000000e+00, %8692
  %8694 = fmul fast float %8304, 5.000000e-01
  %8695 = fadd fast float %8694, 5.000000e-01
  %8696 = call float @dx.op.unary.f32(i32 7, float %8695)  ; Saturate(value)
  %8697 = fsub fast float 1.000000e+00, %8696
  %8698 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8693)  ; FMax(a,b)
  %8699 = fdiv fast float %8697, %8698
  %8700 = fsub fast float %8683, %8261
  %8701 = call float @dx.op.unary.f32(i32 6, float %8700)  ; FAbs(value)
  %8702 = fmul fast float %8701, %8687
  %8703 = call float @dx.op.unary.f32(i32 7, float %8699)  ; Saturate(value)
  %8704 = fsub fast float 1.000000e+00, %8702
  %8705 = fmul fast float %8704, %8703
  %8706 = fadd fast float %8705, %8702
  %8707 = fmul fast float %8690, %8683
  %8708 = call float @dx.op.unary.f32(i32 7, float %8707)  ; Saturate(value)
  %8709 = fsub fast float 1.000000e+00, %8706
  %8710 = fmul fast float %8709, %8708
  %8711 = fadd fast float %8710, %8706
  %8712 = call float @dx.op.unary.f32(i32 7, float %8711)  ; Saturate(value)
  %8713 = fadd fast float %8685, -1.000000e+00
  %8714 = select i1 %8684, float -1.000000e+00, float %8713
  %8715 = fmul fast float %8712, %8714
  %8716 = fadd fast float %8715, 1.000000e+00
  %8717 = fsub fast float -0.000000e+00, %8715
  %8718 = fmul fast float %8677, %8717
  %8719 = fmul fast float %8678, %8717
  %8720 = fmul fast float %8679, %8717
  br label %8721

; <label>:8721                                    ; preds = %8674, %8270
  %8722 = phi float [ %8675, %8674 ], [ 0.000000e+00, %8270 ]
  %8723 = phi float [ %8716, %8674 ], [ 1.000000e+00, %8270 ]
  %8724 = phi float [ %8718, %8674 ], [ 0.000000e+00, %8270 ]
  %8725 = phi float [ %8719, %8674 ], [ 0.000000e+00, %8270 ]
  %8726 = phi float [ %8720, %8674 ], [ 0.000000e+00, %8270 ]
  %8727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8728 = extractvalue %dx.types.CBufRet.f32 %8727, 1
  %8729 = fsub fast float 1.000000e+00, %8723
  %8730 = fmul fast float %8729, %8305
  %8731 = fmul fast float %8730, %8728
  %8732 = fsub fast float %8305, %8731
  br i1 %8298, label %8733, label %8762, !dx.controlflow.hints !156

; <label>:8733                                    ; preds = %8721
  %8734 = fmul fast float %8306, %8295
  %8735 = fadd fast float %8734, %8296
  %8736 = call float @dx.op.unary.f32(i32 7, float %8735)  ; Saturate(value)
  %8737 = fmul fast float %8277, %8732
  %8738 = fsub fast float -0.000000e+00, %8737
  %8739 = fmul fast float %8278, %8732
  %8740 = fsub fast float -0.000000e+00, %8739
  %8741 = call float @dx.op.unary.f32(i32 21, float %8738)  ; Exp(value)
  %8742 = call float @dx.op.unary.f32(i32 21, float %8740)  ; Exp(value)
  %8743 = call float @dx.op.binary.f32(i32 35, float %8285, float %8741)  ; FMax(a,b)
  %8744 = call float @dx.op.binary.f32(i32 35, float %8285, float %8742)  ; FMax(a,b)
  %8745 = fsub fast float %8744, %8743
  %8746 = fmul fast float %8745, %8736
  %8747 = fadd fast float %8746, %8743
  %8748 = call float @dx.op.unary.f32(i32 7, float %8747)  ; Saturate(value)
  %8749 = fsub fast float %8282, %8287
  %8750 = fsub fast float %8283, %8288
  %8751 = fsub fast float %8284, %8289
  %8752 = fmul fast float %8736, %8749
  %8753 = fmul fast float %8736, %8750
  %8754 = fmul fast float %8736, %8751
  %8755 = fadd fast float %8752, %8287
  %8756 = fadd fast float %8753, %8288
  %8757 = fadd fast float %8754, %8289
  %8758 = fsub fast float 1.000000e+00, %8748
  %8759 = fmul fast float %8758, %8755
  %8760 = fmul fast float %8758, %8756
  %8761 = fmul fast float %8758, %8757
  br label %8821

; <label>:8762                                    ; preds = %8721
  %8763 = fmul fast float %8732, %8294
  %8764 = call float @dx.op.unary.f32(i32 7, float %8763)  ; Saturate(value)
  %8765 = fsub fast float 2.000000e+00, %8764
  %8766 = fmul fast float %8764, 9.921875e-01
  %8767 = fmul fast float %8766, %8765
  %8768 = fadd fast float %8767, 3.906250e-03
  %8769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %8768, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8770 = extractvalue %dx.types.ResRet.f32 %8769, 0
  %8771 = fsub fast float %8764, %8770
  %8772 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8771)  ; FMax(a,b)
  %8773 = fmul fast float %8280, %8261
  %8774 = call float @dx.op.unary.f32(i32 6, float %8773)  ; FAbs(value)
  %8775 = fcmp fast ogt float %8774, 0x3EB0C6F7A0000000
  br i1 %8775, label %8776, label %8782, !dx.controlflow.hints !157

; <label>:8776                                    ; preds = %8762
  %8777 = fmul fast float %8773, 0xBFF7154760000000
  %8778 = call float @dx.op.unary.f32(i32 21, float %8777)  ; Exp(value)
  %8779 = fsub fast float 1.000000e+00, %8778
  %8780 = fdiv fast float %8779, %8773
  %8781 = fmul fast float %8780, %8290
  br label %8782

; <label>:8782                                    ; preds = %8776, %8762
  %8783 = phi float [ %8781, %8776 ], [ %8290, %8762 ]
  %8784 = fadd fast float %8783, %8292
  %8785 = fmul fast float %8784, %8772
  %8786 = fmul fast float %8277, %8785
  %8787 = fsub fast float -0.000000e+00, %8786
  %8788 = fmul fast float %8278, %8785
  %8789 = fsub fast float -0.000000e+00, %8788
  %8790 = fmul fast float %8279, %8785
  %8791 = fsub fast float -0.000000e+00, %8790
  %8792 = call float @dx.op.unary.f32(i32 21, float %8787)  ; Exp(value)
  %8793 = call float @dx.op.unary.f32(i32 21, float %8789)  ; Exp(value)
  %8794 = call float @dx.op.unary.f32(i32 21, float %8791)  ; Exp(value)
  %8795 = fmul fast float %8306, %8306
  %8796 = fadd fast float %8795, 1.000000e+00
  %8797 = fmul fast float %8796, 0x3FAE8EC8A0000000
  %8798 = fmul fast float %8797, %8287
  %8799 = fmul fast float %8797, %8288
  %8800 = fmul fast float %8797, %8289
  %8801 = fmul fast float %8306, %8285
  %8802 = fsub fast float 1.000000e+00, %8801
  %8803 = fmul fast float %8285, %8285
  %8804 = fsub fast float 1.000000e+00, %8803
  %8805 = fmul fast float %8804, 0x3FB45F3060000000
  %8806 = fmul fast float %8802, %8802
  %8807 = fdiv fast float 1.000000e+00, %8806
  %8808 = fmul fast float %8805, %8807
  %8809 = fmul fast float %8808, %8282
  %8810 = fmul fast float %8808, %8283
  %8811 = fmul fast float %8808, %8284
  %8812 = fadd fast float %8809, %8798
  %8813 = fadd fast float %8810, %8799
  %8814 = fadd fast float %8811, %8800
  %8815 = fsub fast float 1.000000e+00, %8792
  %8816 = fsub fast float 1.000000e+00, %8793
  %8817 = fsub fast float 1.000000e+00, %8794
  %8818 = fmul fast float %8812, %8815
  %8819 = fmul fast float %8813, %8816
  %8820 = fmul fast float %8814, %8817
  br label %8821

; <label>:8821                                    ; preds = %8782, %8733
  %8822 = phi float [ %8759, %8733 ], [ %8818, %8782 ]
  %8823 = phi float [ %8760, %8733 ], [ %8819, %8782 ]
  %8824 = phi float [ %8761, %8733 ], [ %8820, %8782 ]
  %8825 = phi float [ %8748, %8733 ], [ %8792, %8782 ]
  %8826 = phi float [ %8748, %8733 ], [ %8793, %8782 ]
  %8827 = phi float [ %8748, %8733 ], [ %8794, %8782 ]
  br i1 %8314, label %8828, label %9026, !dx.controlflow.hints !158

; <label>:8828                                    ; preds = %8821
  %8829 = extractvalue %dx.types.CBufRet.f32 %8727, 0
  %8830 = fmul fast float %8829, %8729
  %8831 = fsub fast float %8724, %8822
  %8832 = fsub fast float %8725, %8823
  %8833 = fsub fast float %8726, %8824
  %8834 = fmul fast float %8830, %8831
  %8835 = fmul fast float %8830, %8832
  %8836 = fmul fast float %8830, %8833
  %8837 = fadd fast float %8834, %8822
  %8838 = fadd fast float %8835, %8823
  %8839 = fadd fast float %8836, %8824
  %8840 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8825)  ; FMax(a,b)
  %8841 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8826)  ; FMax(a,b)
  %8842 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8827)  ; FMax(a,b)
  %8843 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8723)  ; FMax(a,b)
  %8844 = call float @dx.op.binary.f32(i32 35, float %8722, float %8732)  ; FMax(a,b)
  %8845 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8844)  ; FMax(a,b)
  %8846 = fdiv fast float %8722, %8845
  %8847 = call float @dx.op.unary.f32(i32 7, float %8846)  ; Saturate(value)
  %8848 = fdiv fast float %8732, %8845
  %8849 = call float @dx.op.unary.f32(i32 7, float %8848)  ; Saturate(value)
  %8850 = fcmp fast une float %8843, 1.000000e+00
  br i1 %8850, label %8851, label %8864, !dx.controlflow.hints !159

; <label>:8851                                    ; preds = %8828
  %8852 = call float @dx.op.unary.f32(i32 23, float %8843)  ; Log(value)
  %8853 = fmul fast float %8852, 0x3FE62E4300000000
  %8854 = fmul fast float %8724, %8853
  %8855 = fsub fast float -0.000000e+00, %8854
  %8856 = fmul fast float %8725, %8853
  %8857 = fsub fast float -0.000000e+00, %8856
  %8858 = fmul fast float %8726, %8853
  %8859 = fsub fast float -0.000000e+00, %8858
  %8860 = fsub fast float 1.000000e+00, %8843
  %8861 = fdiv fast float %8855, %8860
  %8862 = fdiv fast float %8857, %8860
  %8863 = fdiv fast float %8859, %8860
  br label %8864

; <label>:8864                                    ; preds = %8851, %8828
  %8865 = phi float [ %8861, %8851 ], [ %8724, %8828 ]
  %8866 = phi float [ %8862, %8851 ], [ %8725, %8828 ]
  %8867 = phi float [ %8863, %8851 ], [ %8726, %8828 ]
  %8868 = phi float [ %8853, %8851 ], [ 0.000000e+00, %8828 ]
  %8869 = fcmp fast une float %8840, 1.000000e+00
  br i1 %8869, label %8870, label %8877, !dx.controlflow.hints !160

; <label>:8870                                    ; preds = %8864
  %8871 = call float @dx.op.unary.f32(i32 23, float %8840)  ; Log(value)
  %8872 = fmul fast float %8871, 0x3FE62E4300000000
  %8873 = fmul fast float %8837, %8872
  %8874 = fsub fast float -0.000000e+00, %8873
  %8875 = fsub fast float 1.000000e+00, %8840
  %8876 = fdiv fast float %8874, %8875
  br label %8877

; <label>:8877                                    ; preds = %8870, %8864
  %8878 = phi float [ %8876, %8870 ], [ %8837, %8864 ]
  %8879 = phi float [ %8872, %8870 ], [ 0.000000e+00, %8864 ]
  %8880 = fcmp fast une float %8841, 1.000000e+00
  br i1 %8880, label %8881, label %8888, !dx.controlflow.hints !160

; <label>:8881                                    ; preds = %8877
  %8882 = call float @dx.op.unary.f32(i32 23, float %8841)  ; Log(value)
  %8883 = fmul fast float %8882, 0x3FE62E4300000000
  %8884 = fmul fast float %8838, %8883
  %8885 = fsub fast float -0.000000e+00, %8884
  %8886 = fsub fast float 1.000000e+00, %8841
  %8887 = fdiv fast float %8885, %8886
  br label %8888

; <label>:8888                                    ; preds = %8881, %8877
  %8889 = phi float [ %8887, %8881 ], [ %8838, %8877 ]
  %8890 = phi float [ %8883, %8881 ], [ 0.000000e+00, %8877 ]
  %8891 = fcmp fast une float %8842, 1.000000e+00
  br i1 %8891, label %8892, label %8899, !dx.controlflow.hints !160

; <label>:8892                                    ; preds = %8888
  %8893 = call float @dx.op.unary.f32(i32 23, float %8842)  ; Log(value)
  %8894 = fmul fast float %8893, 0x3FE62E4300000000
  %8895 = fmul fast float %8839, %8894
  %8896 = fsub fast float -0.000000e+00, %8895
  %8897 = fsub fast float 1.000000e+00, %8842
  %8898 = fdiv fast float %8896, %8897
  br label %8899

; <label>:8899                                    ; preds = %8892, %8888
  %8900 = phi float [ %8898, %8892 ], [ %8839, %8888 ]
  %8901 = phi float [ %8894, %8892 ], [ 0.000000e+00, %8888 ]
  %8902 = fmul fast float %8865, %8849
  %8903 = fmul fast float %8866, %8849
  %8904 = fmul fast float %8867, %8849
  %8905 = fmul fast float %8868, %8849
  %8906 = fmul fast float %8878, %8847
  %8907 = fmul fast float %8889, %8847
  %8908 = fmul fast float %8900, %8847
  %8909 = fmul fast float %8879, %8847
  %8910 = fmul fast float %8890, %8847
  %8911 = fmul fast float %8901, %8847
  %8912 = fadd fast float %8906, %8902
  %8913 = fadd fast float %8907, %8903
  %8914 = fadd fast float %8908, %8904
  %8915 = fadd fast float %8909, %8905
  %8916 = fadd fast float %8910, %8905
  %8917 = fadd fast float %8911, %8905
  %8918 = fcmp fast une float %8915, 0.000000e+00
  br i1 %8918, label %8919, label %8926, !dx.controlflow.hints !161

; <label>:8919                                    ; preds = %8899
  %8920 = fmul fast float %8915, 0x3FF7154760000000
  %8921 = call float @dx.op.unary.f32(i32 21, float %8920)  ; Exp(value)
  %8922 = fsub fast float 1.000000e+00, %8921
  %8923 = fmul fast float %8912, %8922
  %8924 = fsub fast float -0.000000e+00, %8923
  %8925 = fdiv fast float %8924, %8915
  br label %8926

; <label>:8926                                    ; preds = %8919, %8899
  %8927 = phi float [ %8921, %8919 ], [ 1.000000e+00, %8899 ]
  %8928 = phi float [ %8925, %8919 ], [ %8912, %8899 ]
  %8929 = fcmp fast une float %8916, 0.000000e+00
  br i1 %8929, label %8930, label %8937, !dx.controlflow.hints !161

; <label>:8930                                    ; preds = %8926
  %8931 = fmul fast float %8916, 0x3FF7154760000000
  %8932 = call float @dx.op.unary.f32(i32 21, float %8931)  ; Exp(value)
  %8933 = fsub fast float 1.000000e+00, %8932
  %8934 = fmul fast float %8913, %8933
  %8935 = fsub fast float -0.000000e+00, %8934
  %8936 = fdiv fast float %8935, %8916
  br label %8937

; <label>:8937                                    ; preds = %8930, %8926
  %8938 = phi float [ %8932, %8930 ], [ 1.000000e+00, %8926 ]
  %8939 = phi float [ %8936, %8930 ], [ %8913, %8926 ]
  %8940 = fcmp fast une float %8917, 0.000000e+00
  br i1 %8940, label %8941, label %8948, !dx.controlflow.hints !161

; <label>:8941                                    ; preds = %8937
  %8942 = fmul fast float %8917, 0x3FF7154760000000
  %8943 = call float @dx.op.unary.f32(i32 21, float %8942)  ; Exp(value)
  %8944 = fsub fast float 1.000000e+00, %8943
  %8945 = fmul fast float %8914, %8944
  %8946 = fsub fast float -0.000000e+00, %8945
  %8947 = fdiv fast float %8946, %8917
  br label %8948

; <label>:8948                                    ; preds = %8941, %8937
  %8949 = phi float [ %8943, %8941 ], [ 1.000000e+00, %8937 ]
  %8950 = phi float [ %8947, %8941 ], [ %8914, %8937 ]
  %8951 = fcmp fast ogt float %8847, %8849
  br i1 %8951, label %8952, label %8972

; <label>:8952                                    ; preds = %8948
  %8953 = fsub fast float 1.000000e+00, %8849
  %8954 = fmul fast float %8865, %8953
  %8955 = fmul fast float %8866, %8953
  %8956 = fmul fast float %8867, %8953
  %8957 = fmul fast float %8868, %8953
  %8958 = fcmp fast une float %8957, 0.000000e+00
  br i1 %8958, label %8959, label %9010, !dx.controlflow.hints !162

; <label>:8959                                    ; preds = %8952
  %8960 = fmul fast float %8957, 0x3FF7154760000000
  %8961 = call float @dx.op.unary.f32(i32 21, float %8960)  ; Exp(value)
  %8962 = fsub fast float 1.000000e+00, %8961
  %8963 = fmul fast float %8954, %8962
  %8964 = fsub fast float -0.000000e+00, %8963
  %8965 = fmul fast float %8955, %8962
  %8966 = fsub fast float -0.000000e+00, %8965
  %8967 = fmul fast float %8956, %8962
  %8968 = fsub fast float -0.000000e+00, %8967
  %8969 = fdiv fast float %8964, %8957
  %8970 = fdiv fast float %8966, %8957
  %8971 = fdiv fast float %8968, %8957
  br label %9010

; <label>:8972                                    ; preds = %8948
  %8973 = fsub fast float 1.000000e+00, %8847
  %8974 = fmul fast float %8878, %8973
  %8975 = fmul fast float %8889, %8973
  %8976 = fmul fast float %8900, %8973
  %8977 = fmul fast float %8879, %8973
  %8978 = fmul fast float %8890, %8973
  %8979 = fmul fast float %8901, %8973
  %8980 = fcmp fast une float %8977, 0.000000e+00
  br i1 %8980, label %8981, label %8988, !dx.controlflow.hints !161

; <label>:8981                                    ; preds = %8972
  %8982 = fmul fast float %8977, 0x3FF7154760000000
  %8983 = call float @dx.op.unary.f32(i32 21, float %8982)  ; Exp(value)
  %8984 = fsub fast float 1.000000e+00, %8983
  %8985 = fmul fast float %8974, %8984
  %8986 = fsub fast float -0.000000e+00, %8985
  %8987 = fdiv fast float %8986, %8977
  br label %8988

; <label>:8988                                    ; preds = %8981, %8972
  %8989 = phi float [ %8987, %8981 ], [ %8974, %8972 ]
  %8990 = phi float [ %8983, %8981 ], [ 1.000000e+00, %8972 ]
  %8991 = fcmp fast une float %8978, 0.000000e+00
  br i1 %8991, label %8992, label %8999, !dx.controlflow.hints !161

; <label>:8992                                    ; preds = %8988
  %8993 = fmul fast float %8978, 0x3FF7154760000000
  %8994 = call float @dx.op.unary.f32(i32 21, float %8993)  ; Exp(value)
  %8995 = fsub fast float 1.000000e+00, %8994
  %8996 = fmul fast float %8975, %8995
  %8997 = fsub fast float -0.000000e+00, %8996
  %8998 = fdiv fast float %8997, %8978
  br label %8999

; <label>:8999                                    ; preds = %8992, %8988
  %9000 = phi float [ %8998, %8992 ], [ %8975, %8988 ]
  %9001 = phi float [ %8994, %8992 ], [ 1.000000e+00, %8988 ]
  %9002 = fcmp fast une float %8979, 0.000000e+00
  br i1 %9002, label %9003, label %9010, !dx.controlflow.hints !161

; <label>:9003                                    ; preds = %8999
  %9004 = fmul fast float %8979, 0x3FF7154760000000
  %9005 = call float @dx.op.unary.f32(i32 21, float %9004)  ; Exp(value)
  %9006 = fsub fast float 1.000000e+00, %9005
  %9007 = fmul fast float %8976, %9006
  %9008 = fsub fast float -0.000000e+00, %9007
  %9009 = fdiv fast float %9008, %8979
  br label %9010

; <label>:9010                                    ; preds = %9003, %8999, %8959, %8952
  %9011 = phi float [ %9009, %9003 ], [ %8971, %8959 ], [ %8956, %8952 ], [ %8976, %8999 ]
  %9012 = phi float [ %9000, %9003 ], [ %8970, %8959 ], [ %8955, %8952 ], [ %9000, %8999 ]
  %9013 = phi float [ %8989, %9003 ], [ %8969, %8959 ], [ %8954, %8952 ], [ %8989, %8999 ]
  %9014 = phi float [ %9005, %9003 ], [ %8961, %8959 ], [ 1.000000e+00, %8952 ], [ 1.000000e+00, %8999 ]
  %9015 = phi float [ %9001, %9003 ], [ %8961, %8959 ], [ 1.000000e+00, %8952 ], [ %9001, %8999 ]
  %9016 = phi float [ %8990, %9003 ], [ %8961, %8959 ], [ 1.000000e+00, %8952 ], [ %8990, %8999 ]
  %9017 = fmul fast float %9016, %8928
  %9018 = fmul fast float %9015, %8939
  %9019 = fmul fast float %9014, %8950
  %9020 = fadd fast float %9017, %9013
  %9021 = fadd fast float %9018, %9012
  %9022 = fadd fast float %9019, %9011
  %9023 = fmul fast float %9016, %8927
  %9024 = fmul fast float %9015, %8938
  %9025 = fmul fast float %9014, %8949
  br label %9026

; <label>:9026                                    ; preds = %9010, %8821
  %9027 = phi float [ %9025, %9010 ], [ %8827, %8821 ]
  %9028 = phi float [ %9024, %9010 ], [ %8826, %8821 ]
  %9029 = phi float [ %9023, %9010 ], [ %8825, %8821 ]
  %9030 = phi float [ %9022, %9010 ], [ %8824, %8821 ]
  %9031 = phi float [ %9021, %9010 ], [ %8823, %8821 ]
  %9032 = phi float [ %9020, %9010 ], [ %8822, %8821 ]
  %9033 = fmul fast float %9032, %7986
  %9034 = fmul fast float %9031, %7987
  %9035 = fmul fast float %9030, %7988
  %9036 = fmul fast float %9029, %8269
  %9037 = call float @dx.op.dot3.f32(i32 55, float %9029, float %9028, float %9027, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9038 = call float @dx.op.dot3.f32(i32 55, float %9033, float %9034, float %9035, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9039 = select i1 %245, float %9037, float %9029
  %9040 = select i1 %245, float %9037, float %9028
  %9041 = select i1 %245, float 1.000000e+00, float %9027
  %9042 = select i1 %245, float %9038, float %9033
  %9043 = select i1 %245, float 0.000000e+00, float %9034
  %9044 = select i1 %245, float 0.000000e+00, float %9035
  %9045 = fmul fast float %9039, %8263
  %9046 = fmul fast float %9040, %8264
  %9047 = fmul fast float %9041, %8265
  %9048 = fadd fast float %9045, %9042
  %9049 = fadd fast float %9046, %9043
  %9050 = fadd fast float %9044, %9047
  %9051 = fmul fast float %9039, %8266
  %9052 = fmul fast float %9040, %8267
  %9053 = fmul fast float %9041, %8268
  %9054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9055 = extractvalue %dx.types.CBufRet.i32 %9054, 0
  %9056 = icmp eq i32 %9055, 0
  br i1 %9056, label %9424, label %9057, !dx.controlflow.hints !163

; <label>:9057                                    ; preds = %9026
  %9058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9059 = extractvalue %dx.types.CBufRet.f32 %9058, 2
  %9060 = extractvalue %dx.types.CBufRet.f32 %9058, 3
  %9061 = fmul fast float %9059, %97
  %9062 = fmul fast float %9060, %98
  %9063 = fmul fast float %9061, 2.000000e+00
  %9064 = fmul fast float %9062, 2.000000e+00
  %9065 = fsub fast float 1.000000e+00, %9063
  %9066 = fsub fast float 1.000000e+00, %9064
  %9067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9068 = extractvalue %dx.types.CBufRet.f32 %9067, 0
  %9069 = extractvalue %dx.types.CBufRet.f32 %9067, 1
  %9070 = extractvalue %dx.types.CBufRet.f32 %9067, 2
  %9071 = fmul fast float %9065, %9068
  %9072 = fmul fast float %9065, %9069
  %9073 = fmul fast float %9065, %9070
  %9074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9075 = extractvalue %dx.types.CBufRet.f32 %9074, 0
  %9076 = extractvalue %dx.types.CBufRet.f32 %9074, 1
  %9077 = extractvalue %dx.types.CBufRet.f32 %9074, 2
  %9078 = fmul fast float %9066, %9075
  %9079 = fmul fast float %9066, %9076
  %9080 = fmul fast float %9066, %9077
  %9081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9082 = extractvalue %dx.types.CBufRet.f32 %9081, 0
  %9083 = extractvalue %dx.types.CBufRet.f32 %9081, 1
  %9084 = extractvalue %dx.types.CBufRet.f32 %9081, 2
  %9085 = fadd fast float %9078, %9082
  %9086 = fadd fast float %9085, %9071
  %9087 = fadd fast float %9079, %9083
  %9088 = fadd fast float %9087, %9072
  %9089 = fadd fast float %9080, %9084
  %9090 = fadd fast float %9089, %9073
  %9091 = fmul fast float %9086, %8262
  %9092 = fmul fast float %9088, %8262
  %9093 = fmul fast float %9090, %8262
  %9094 = fmul fast float %9091, %9091
  %9095 = fmul fast float %9092, %9092
  %9096 = fadd fast float %9094, %9095
  %9097 = fmul fast float %9093, %9093
  %9098 = fadd fast float %9096, %9097
  %9099 = call float @dx.op.unary.f32(i32 24, float %9098)  ; Sqrt(value)
  %9100 = extractvalue %dx.types.CBufRet.f32 %7989, 0
  %9101 = fsub fast float %9099, %9100
  %9102 = extractvalue %dx.types.CBufRet.f32 %7989, 2
  %9103 = fmul fast float %9101, %9102
  %9104 = call float @dx.op.unary.f32(i32 7, float %9103)  ; Saturate(value)
  %9105 = fadd fast float %9104, -5.000000e-01
  %9106 = fmul fast float %9105, 2.000000e+00
  %9107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9108 = extractvalue %dx.types.CBufRet.f32 %9107, 2
  %9109 = call float @dx.op.binary.f32(i32 36, float %9108, float %9106)  ; FMin(a,b)
  %9110 = fsub fast float -0.000000e+00, %9108
  %9111 = fcmp fast ogt float %9109, %9110
  br i1 %9111, label %9112, label %9424, !dx.controlflow.hints !164

; <label>:9112                                    ; preds = %9057
  %9113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9114 = extractvalue %dx.types.CBufRet.f32 %9113, 3
  %9115 = fcmp fast ogt float %9114, 0.000000e+00
  br i1 %9115, label %9116, label %9191, !dx.controlflow.hints !165

; <label>:9116                                    ; preds = %9112
  %9117 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %9118 = extractvalue %dx.types.Dimensions %9117, 0
  %9119 = sitofp i32 %9118 to float
  %9120 = extractvalue %dx.types.Dimensions %9117, 1
  %9121 = sitofp i32 %9120 to float
  %9122 = fmul fast float %9061, %9119
  %9123 = fmul fast float %9062, %9121
  %9124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9125 = extractvalue %dx.types.CBufRet.f32 %9124, 1
  %9126 = fsub fast float -0.000000e+00, %9125
  %9127 = fptoui float %9126 to i32
  %9128 = fptoui float %9122 to i32
  %9129 = fptoui float %9123 to i32
  %9130 = and i32 %9127, 31
  %9131 = lshr i32 %9128, %9130
  %9132 = lshr i32 %9129, %9130
  %9133 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %9127, i32 %9131, i32 %9132, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9134 = extractvalue %dx.types.ResRet.f32 %9133, 0
  %9135 = fcmp fast olt float %9134, -1.000000e+00
  %9136 = fcmp fast ogt float %9134, -1.000000e+00
  %9137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9138 = extractvalue %dx.types.CBufRet.f32 %9137, 1
  %9139 = select i1 %9136, float %9138, float 1.000000e+00
  %9140 = fadd fast float %9134, 1.000000e+00
  %9141 = fmul fast float %9139, %9140
  %9142 = call float @dx.op.unary.f32(i32 6, float %9141)  ; FAbs(value)
  %9143 = extractvalue %dx.types.CBufRet.f32 %9137, 3
  %9144 = fcmp fast oge float %9142, %9143
  %9145 = select i1 %9144, float 0x4197782600000000, float %9142
  %9146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9147 = extractvalue %dx.types.CBufRet.f32 %9146, 0
  %9148 = extractvalue %dx.types.CBufRet.f32 %9146, 1
  %9149 = extractvalue %dx.types.CBufRet.f32 %9146, 2
  %9150 = select i1 %9135, float %9147, float %9068
  %9151 = select i1 %9135, float %9148, float %9069
  %9152 = select i1 %9135, float %9149, float %9070
  %9153 = fmul fast float %9150, %9065
  %9154 = fmul fast float %9151, %9065
  %9155 = fmul fast float %9152, %9065
  %9156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9157 = extractvalue %dx.types.CBufRet.f32 %9156, 0
  %9158 = extractvalue %dx.types.CBufRet.f32 %9156, 1
  %9159 = extractvalue %dx.types.CBufRet.f32 %9156, 2
  %9160 = select i1 %9135, float %9157, float %9075
  %9161 = select i1 %9135, float %9158, float %9076
  %9162 = select i1 %9135, float %9159, float %9077
  %9163 = fmul fast float %9160, %9066
  %9164 = fmul fast float %9161, %9066
  %9165 = fmul fast float %9162, %9066
  %9166 = fadd fast float %9163, %9153
  %9167 = fadd fast float %9164, %9154
  %9168 = fadd fast float %9165, %9155
  %9169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9170 = extractvalue %dx.types.CBufRet.f32 %9169, 0
  %9171 = extractvalue %dx.types.CBufRet.f32 %9169, 1
  %9172 = extractvalue %dx.types.CBufRet.f32 %9169, 2
  %9173 = select i1 %9135, float %9170, float %9082
  %9174 = select i1 %9135, float %9171, float %9083
  %9175 = select i1 %9135, float %9172, float %9084
  %9176 = fadd fast float %9166, %9173
  %9177 = fadd fast float %9167, %9174
  %9178 = fadd fast float %9168, %9175
  %9179 = fmul fast float %9176, %9145
  %9180 = fmul fast float %9177, %9145
  %9181 = fmul fast float %9178, %9145
  %9182 = fmul fast float %9179, %9179
  %9183 = fmul fast float %9180, %9180
  %9184 = fadd fast float %9182, %9183
  %9185 = fmul fast float %9181, %9181
  %9186 = fadd fast float %9184, %9185
  %9187 = call float @dx.op.unary.f32(i32 24, float %9186)  ; Sqrt(value)
  %9188 = fsub fast float %9187, %9100
  %9189 = fmul fast float %9188, %9102
  %9190 = call float @dx.op.unary.f32(i32 7, float %9189)  ; Saturate(value)
  br label %9191

; <label>:9191                                    ; preds = %9116, %9112
  %9192 = phi float [ %9190, %9116 ], [ 1.000000e+00, %9112 ]
  %9193 = fmul fast float %9109, 5.000000e-01
  %9194 = fadd fast float %9193, 5.000000e-01
  %9195 = call float @dx.op.unary.f32(i32 22, float %9194)  ; Frc(value)
  %9196 = call float @dx.op.unary.f32(i32 27, float %9195)  ; Round_ni(value)
  %9197 = call float @dx.op.unary.f32(i32 22, float %9195)  ; Frc(value)
  %9198 = fmul fast float %9197, 2.000000e+00
  %9199 = fadd fast float %9198, -1.000000e+00
  %9200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %9061, float %9062, float %9196, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9201 = extractvalue %dx.types.ResRet.f32 %9200, 0
  %9202 = extractvalue %dx.types.ResRet.f32 %9200, 1
  %9203 = extractvalue %dx.types.ResRet.f32 %9200, 2
  %9204 = extractvalue %dx.types.ResRet.f32 %9200, 3
  %9205 = fadd fast float %9201, -5.000000e-01
  %9206 = fadd fast float %9203, -5.000000e-01
  %9207 = fmul fast float %9205, 0xBFD5555560000000
  %9208 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9206, float %9207)  ; FMad(a,b,c)
  %9209 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9202, float 0.000000e+00)  ; FMad(a,b,c)
  %9210 = fadd fast float %9209, %9204
  %9211 = fmul fast float %9205, -7.500000e-01
  %9212 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9206, float %9211)  ; FMad(a,b,c)
  %9213 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9202, float 0.000000e+00)  ; FMad(a,b,c)
  %9214 = fadd fast float %9213, %9204
  %9215 = call float @dx.op.binary.f32(i32 35, float %9208, float -1.000000e+00)  ; FMax(a,b)
  %9216 = call float @dx.op.binary.f32(i32 35, float %9210, float -1.000000e+00)  ; FMax(a,b)
  %9217 = call float @dx.op.binary.f32(i32 35, float %9212, float -1.000000e+00)  ; FMax(a,b)
  %9218 = call float @dx.op.binary.f32(i32 35, float %9214, float -1.000000e+00)  ; FMax(a,b)
  %9219 = call float @dx.op.binary.f32(i32 36, float %9215, float 1.000000e+00)  ; FMin(a,b)
  %9220 = call float @dx.op.binary.f32(i32 36, float %9216, float 1.000000e+00)  ; FMin(a,b)
  %9221 = call float @dx.op.binary.f32(i32 36, float %9217, float 1.000000e+00)  ; FMin(a,b)
  %9222 = call float @dx.op.binary.f32(i32 36, float %9218, float 1.000000e+00)  ; FMin(a,b)
  %9223 = fcmp fast olt float %9219, 0x3FEFFF8020000000
  br i1 %9223, label %9224, label %9339, !dx.controlflow.hints !166

; <label>:9224                                    ; preds = %9191
  %9225 = extractvalue %dx.types.CBufRet.f32 %9107, 3
  %9226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9227 = extractvalue %dx.types.CBufRet.f32 %9226, 0
  %9228 = extractvalue %dx.types.CBufRet.f32 %9226, 1
  %9229 = extractvalue %dx.types.CBufRet.f32 %9226, 2
  %9230 = extractvalue %dx.types.CBufRet.f32 %9226, 3
  %9231 = fsub fast float %9227, %9219
  %9232 = fsub fast float %9228, %9220
  %9233 = fsub fast float %9229, %9221
  %9234 = fsub fast float %9230, %9222
  %9235 = fmul fast float %9231, %9225
  %9236 = fmul fast float %9232, %9225
  %9237 = fmul fast float %9233, %9225
  %9238 = fmul fast float %9234, %9225
  %9239 = fadd fast float %9235, %9219
  %9240 = fadd fast float %9236, %9220
  %9241 = fsub fast float -0.000000e+00, %9240
  %9242 = fadd fast float %9237, %9221
  %9243 = fadd fast float %9238, %9222
  %9244 = fmul fast float %9239, %9239
  %9245 = fsub fast float %9240, %9244
  %9246 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9245)  ; FMax(a,b)
  %9247 = fdiv fast float 1.000000e+00, %9246
  %9248 = fmul fast float %9240, %9239
  %9249 = fsub fast float %9242, %9248
  %9250 = fsub fast float %9199, %9239
  %9251 = fmul fast float %9199, %9199
  %9252 = fsub fast float %9251, %9240
  %9253 = fmul fast float %9250, %9247
  %9254 = fmul fast float %9253, %9249
  %9255 = fsub fast float %9252, %9254
  %9256 = fmul fast float %9240, %9240
  %9257 = fsub fast float %9243, %9256
  %9258 = fmul fast float %9249, %9249
  %9259 = fmul fast float %9258, %9247
  %9260 = fsub fast float %9257, %9259
  %9261 = fdiv fast float %9255, %9260
  %9262 = fmul fast float %9249, %9261
  %9263 = fsub fast float %9250, %9262
  %9264 = fmul fast float %9263, %9247
  %9265 = fmul fast float %9264, %9239
  %9266 = fsub fast float 1.000000e+00, %9265
  %9267 = fmul fast float %9240, %9261
  %9268 = fsub fast float %9266, %9267
  %9269 = fmul fast float %9264, %9264
  %9270 = fmul fast float %9261, 4.000000e+00
  %9271 = fmul fast float %9270, %9268
  %9272 = fsub fast float %9269, %9271
  %9273 = call float @dx.op.unary.f32(i32 24, float %9272)  ; Sqrt(value)
  %9274 = fcmp fast oge float %9264, 0.000000e+00
  %9275 = fsub fast float -0.000000e+00, %9273
  %9276 = select i1 %9274, float %9275, float %9273
  %9277 = fsub fast float %9276, %9264
  %9278 = fdiv fast float %9277, %9261
  %9279 = fdiv fast float %9268, %9277
  %9280 = fmul fast float %9278, 5.000000e-01
  %9281 = fmul fast float %9279, 2.000000e+00
  %9282 = select i1 %9274, float %9280, float %9281
  %9283 = select i1 %9274, float %9281, float %9280
  %9284 = call float @dx.op.binary.f32(i32 35, float %9282, float %9283)  ; FMax(a,b)
  %9285 = call float @dx.op.binary.f32(i32 36, float %9282, float %9283)  ; FMin(a,b)
  %9286 = fcmp fast ogt float %9199, %9285
  br i1 %9286, label %9287, label %9297

; <label>:9287                                    ; preds = %9224
  %9288 = fsub fast float %9199, %9285
  %9289 = fsub fast float %9284, %9285
  %9290 = fmul fast float %9288, %9289
  %9291 = fmul fast float %9284, %9199
  %9292 = fadd fast float %9284, %9199
  %9293 = fmul fast float %9292, %9239
  %9294 = fadd fast float %9291, %9240
  %9295 = fsub fast float %9294, %9293
  %9296 = fdiv fast float %9295, %9290
  br label %9297

; <label>:9297                                    ; preds = %9287, %9224
  %9298 = phi float [ %9296, %9287 ], [ 0.000000e+00, %9224 ]
  %9299 = fcmp fast ogt float %9199, %9284
  %9300 = fsub fast float %9199, %9284
  br i1 %9299, label %9301, label %9311

; <label>:9301                                    ; preds = %9297
  %9302 = fsub fast float %9284, %9285
  %9303 = fmul fast float %9302, %9300
  %9304 = fmul fast float %9285, %9199
  %9305 = fadd fast float %9285, %9199
  %9306 = fmul fast float %9305, %9239
  %9307 = fsub fast float %9241, %9304
  %9308 = fadd fast float %9307, %9306
  %9309 = fdiv fast float %9308, %9303
  %9310 = fadd fast float %9309, %9298
  br label %9311

; <label>:9311                                    ; preds = %9301, %9297
  %9312 = phi float [ %9310, %9301 ], [ %9298, %9297 ]
  %9313 = fsub fast float %9199, %9285
  %9314 = fmul fast float %9313, %9300
  %9315 = fmul fast float %9285, %9284
  %9316 = fadd fast float %9285, %9284
  %9317 = fmul fast float %9316, %9239
  %9318 = fadd fast float %9315, %9240
  %9319 = fsub fast float %9318, %9317
  %9320 = fdiv fast float %9319, %9314
  %9321 = call float @dx.op.unary.f32(i32 7, float %9312)  ; Saturate(value)
  %9322 = fcmp fast oeq float %7990, 0.000000e+00
  %9323 = extractvalue %dx.types.CBufRet.f32 %9107, 0
  %9324 = fcmp fast oeq float %9323, 0.000000e+00
  %9325 = or i1 %9322, %9324
  %9326 = fmul fast float %9323, 2.000000e+00
  %9327 = fadd fast float %9108, %9109
  %9328 = fdiv fast float %9327, %9326
  %9329 = call float @dx.op.unary.f32(i32 7, float %9328)  ; Saturate(value)
  %9330 = fmul fast float %9329, 2.000000e+00
  %9331 = fsub fast float 3.000000e+00, %9330
  %9332 = fmul fast float %9329, %9329
  %9333 = fmul fast float %9332, %9331
  %9334 = select i1 %9325, float 1.000000e+00, float %9333
  %9335 = fmul fast float %9320, %7990
  %9336 = fadd fast float %9321, %9335
  %9337 = call float @dx.op.unary.f32(i32 7, float %9336)  ; Saturate(value)
  %9338 = fmul fast float %9334, %9337
  br label %9339

; <label>:9339                                    ; preds = %9311, %9191
  %9340 = phi float [ %9338, %9311 ], [ 0.000000e+00, %9191 ]
  %9341 = fsub fast float 1.000000e+00, %9340
  %9342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %9061, float %9062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9343 = extractvalue %dx.types.ResRet.f32 %9342, 0
  %9344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9345 = extractvalue %dx.types.CBufRet.i32 %9344, 2
  %9346 = icmp eq i32 %9345, 0
  br i1 %9346, label %9352, label %9347

; <label>:9347                                    ; preds = %9339
  %9348 = call float @dx.op.unary.f32(i32 7, float %9340)  ; Saturate(value)
  %9349 = fadd fast float %9343, -1.000000e+00
  %9350 = fmul fast float %9348, %9349
  %9351 = fadd fast float %9350, 1.000000e+00
  br label %9352

; <label>:9352                                    ; preds = %9347, %9339
  %9353 = phi float [ %9351, %9347 ], [ %9341, %9339 ]
  br i1 %9115, label %9354, label %9372

; <label>:9354                                    ; preds = %9352
  %9355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9356 = extractvalue %dx.types.CBufRet.f32 %9355, 1
  %9357 = fsub fast float %9192, %9356
  %9358 = call float @dx.op.unary.f32(i32 7, float %9357)  ; Saturate(value)
  %9359 = fsub fast float %9192, %9114
  %9360 = call float @dx.op.unary.f32(i32 7, float %9359)  ; Saturate(value)
  %9361 = fsub fast float %9358, %9360
  %9362 = fsub fast float %9194, %9360
  %9363 = fdiv fast float %9362, %9361
  %9364 = call float @dx.op.unary.f32(i32 7, float %9363)  ; Saturate(value)
  %9365 = fmul fast float %9364, 2.000000e+00
  %9366 = fsub fast float 3.000000e+00, %9365
  %9367 = fsub fast float %9343, %9353
  %9368 = fmul fast float %9364, %9364
  %9369 = fmul fast float %9368, %9367
  %9370 = fmul fast float %9369, %9366
  %9371 = fadd fast float %9370, %9353
  br label %9372

; <label>:9372                                    ; preds = %9354, %9352
  %9373 = phi float [ %9371, %9354 ], [ %9353, %9352 ]
  %9374 = call float @dx.op.binary.f32(i32 35, float %9343, float %9373)  ; FMax(a,b)
  %9375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9376 = extractvalue %dx.types.CBufRet.i32 %9375, 2
  %9377 = and i32 %9376, 1
  %9378 = icmp eq i32 %9377, 0
  %9379 = fcmp fast une float %9374, 1.000000e+00
  %9380 = and i1 %9379, %9378
  br i1 %9380, label %9381, label %9400

; <label>:9381                                    ; preds = %9372
  %9382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %9061, float %9062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9383 = extractvalue %dx.types.ResRet.f32 %9382, 0
  %9384 = extractvalue %dx.types.ResRet.f32 %9382, 1
  %9385 = extractvalue %dx.types.ResRet.f32 %9382, 2
  %9386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9387 = extractvalue %dx.types.CBufRet.f32 %9386, 1
  %9388 = fmul fast float %9387, %9383
  %9389 = fmul fast float %9387, %9384
  %9390 = fmul fast float %9387, %9385
  %9391 = fcmp fast ogt float %9343, 0x3FEFFF2E40000000
  %9392 = fsub fast float 1.000000e+00, %9374
  %9393 = fsub fast float 1.000000e+00, %9343
  %9394 = fdiv fast float %9392, %9393
  %9395 = call float @dx.op.unary.f32(i32 7, float %9394)  ; Saturate(value)
  %9396 = select i1 %9391, float 0.000000e+00, float %9395
  %9397 = fmul fast float %9388, %9396
  %9398 = fmul fast float %9389, %9396
  %9399 = fmul fast float %9390, %9396
  br label %9400

; <label>:9400                                    ; preds = %9381, %9372
  %9401 = phi float [ 0.000000e+00, %9372 ], [ %9397, %9381 ]
  %9402 = phi float [ 0.000000e+00, %9372 ], [ %9398, %9381 ]
  %9403 = phi float [ 0.000000e+00, %9372 ], [ %9399, %9381 ]
  %9404 = fmul fast float %9401, %7986
  %9405 = fmul fast float %9402, %7987
  %9406 = fmul fast float %9403, %7988
  %9407 = fmul fast float %9374, %9036
  %9408 = call float @dx.op.dot3.f32(i32 55, float %9374, float %9374, float %9374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9409 = call float @dx.op.dot3.f32(i32 55, float %9404, float %9405, float %9406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9410 = select i1 %245, float %9408, float %9374
  %9411 = select i1 %245, float 1.000000e+00, float %9374
  %9412 = select i1 %245, float %9409, float %9404
  %9413 = select i1 %245, float 0.000000e+00, float %9405
  %9414 = select i1 %245, float 0.000000e+00, float %9406
  %9415 = fmul fast float %9410, %9048
  %9416 = fmul fast float %9410, %9049
  %9417 = fmul fast float %9411, %9050
  %9418 = fadd fast float %9415, %9412
  %9419 = fadd fast float %9416, %9413
  %9420 = fadd fast float %9414, %9417
  %9421 = fmul fast float %9410, %9051
  %9422 = fmul fast float %9410, %9052
  %9423 = fmul fast float %9411, %9053
  br label %9424

; <label>:9424                                    ; preds = %9400, %9057, %9026, %8258
  %9425 = phi float [ %8263, %8258 ], [ %9048, %9026 ], [ %9418, %9400 ], [ %9048, %9057 ]
  %9426 = phi float [ %8264, %8258 ], [ %9049, %9026 ], [ %9419, %9400 ], [ %9049, %9057 ]
  %9427 = phi float [ %8265, %8258 ], [ %9050, %9026 ], [ %9420, %9400 ], [ %9050, %9057 ]
  %9428 = phi float [ %8266, %8258 ], [ %9051, %9026 ], [ %9421, %9400 ], [ %9051, %9057 ]
  %9429 = phi float [ %8267, %8258 ], [ %9052, %9026 ], [ %9422, %9400 ], [ %9052, %9057 ]
  %9430 = phi float [ %8268, %8258 ], [ %9053, %9026 ], [ %9423, %9400 ], [ %9053, %9057 ]
  %9431 = phi float [ %8269, %8258 ], [ %9036, %9026 ], [ %9407, %9400 ], [ %9036, %9057 ]
  %9432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %9433 = extractvalue %dx.types.CBufRet.f32 %9432, 2
  %9434 = extractvalue %dx.types.CBufRet.f32 %9432, 3
  %9435 = fmul fast float %9433, %97
  %9436 = fmul fast float %9434, %98
  %9437 = call float @dx.op.unary.f32(i32 7, float %9435)  ; Saturate(value)
  %9438 = call float @dx.op.unary.f32(i32 7, float %9436)  ; Saturate(value)
  %9439 = select i1 %8000, i32 2, i32 0
  %9440 = or i32 %9439, 1
  %9441 = uitofp i32 %9440 to float
  %9442 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9437, float %9438, float %9441, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9443 = extractvalue %dx.types.ResRet.f32 %9442, 0
  %9444 = extractvalue %dx.types.ResRet.f32 %9442, 1
  %9445 = extractvalue %dx.types.ResRet.f32 %9442, 2
  %9446 = extractvalue %dx.types.ResRet.f32 %9442, 3
  %9447 = add nuw nsw i32 %9439, 2
  %9448 = uitofp i32 %9447 to float
  %9449 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9437, float %9438, float %9448, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9450 = extractvalue %dx.types.ResRet.f32 %9449, 0
  %9451 = extractvalue %dx.types.ResRet.f32 %9449, 1
  %9452 = extractvalue %dx.types.ResRet.f32 %9449, 2
  %9453 = extractvalue %dx.types.ResRet.f32 %9449, 3
  %9454 = call float @dx.op.binary.f32(i32 35, float %9444, float %9445)  ; FMax(a,b)
  %9455 = call float @dx.op.binary.f32(i32 35, float %9443, float %9454)  ; FMax(a,b)
  %9456 = call float @dx.op.binary.f32(i32 35, float %9455, float %9446)  ; FMax(a,b)
  %9457 = call float @dx.op.binary.f32(i32 36, float %9451, float %9452)  ; FMin(a,b)
  %9458 = call float @dx.op.binary.f32(i32 36, float %9450, float %9457)  ; FMin(a,b)
  %9459 = call float @dx.op.binary.f32(i32 36, float %9458, float %9453)  ; FMin(a,b)
  %9460 = fmul fast float %9456, 2.550000e+02
  %9461 = fadd fast float %9460, 0x3F70101020000000
  %9462 = fptoui float %9461 to i32
  %9463 = fmul fast float %9459, 2.550000e+02
  %9464 = fadd fast float %9463, 0x3F70101020000000
  %9465 = fptoui float %9464 to i32
  %9466 = icmp ult i32 %9462, %9465
  br i1 %9466, label %9467, label %9636

; <label>:9467                                    ; preds = %9424
  %9468 = fcmp fast ogt float %84, 9.843750e-01
  %9469 = fadd fast float %8262, -4.000000e+00
  %9470 = select i1 %9468, float -4.000000e+00, float %9469
  %9471 = call float @dx.op.binary.f32(i32 35, float %9470, float 0.000000e+00)  ; FMax(a,b)
  %9472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9473 = extractvalue %dx.types.CBufRet.f32 %9472, 0
  %9474 = fadd fast float %9473, %9471
  %9475 = extractvalue %dx.types.CBufRet.f32 %9472, 2
  %9476 = fmul fast float %9474, %9475
  %9477 = call float @dx.op.unary.f32(i32 23, float %9476)  ; Log(value)
  %9478 = extractvalue %dx.types.CBufRet.f32 %9472, 3
  %9479 = fmul fast float %9478, %9477
  %9480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9481 = extractvalue %dx.types.CBufRet.f32 %9480, 2
  %9482 = fmul fast float %9479, %9481
  %9483 = call float @dx.op.unary.f32(i32 7, float %9482)  ; Saturate(value)
  %9484 = uitofp i32 %9462 to float
  %9485 = uitofp i32 %9465 to float
  %9486 = fadd fast float %9484, 5.000000e-01
  %9487 = fadd fast float %9485, 5.000000e-01
  %9488 = fmul fast float %9481, %9486
  %9489 = fmul fast float %9481, %9487
  %9490 = fadd fast float %9488, 0x3F0FFB4800000000
  %9491 = fadd fast float %9489, 0xBF0FFB4800000000
  %9492 = call float @dx.op.binary.f32(i32 35, float %9483, float %9490)  ; FMax(a,b)
  %9493 = call float @dx.op.binary.f32(i32 36, float %9492, float %9491)  ; FMin(a,b)
  %9494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9495 = extractvalue %dx.types.CBufRet.f32 %9494, 1
  %9496 = extractvalue %dx.types.CBufRet.f32 %9494, 2
  %9497 = extractvalue %dx.types.CBufRet.f32 %9494, 0
  %9498 = select i1 %8000, float %9497, float 0.000000e+00
  %9499 = fmul fast float %9495, %9493
  %9500 = fadd fast float %9498, %9499
  %9501 = fadd fast float %9498, %9496
  %9502 = fsub fast float %9495, %9496
  %9503 = fadd fast float %9502, %9498
  %9504 = call float @dx.op.binary.f32(i32 35, float %9500, float %9501)  ; FMax(a,b)
  %9505 = call float @dx.op.binary.f32(i32 36, float %9504, float %9503)  ; FMin(a,b)
  %9506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %9437, float %9438, float %9505, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9507 = extractvalue %dx.types.ResRet.f32 %9506, 0
  %9508 = extractvalue %dx.types.ResRet.f32 %9506, 1
  %9509 = extractvalue %dx.types.ResRet.f32 %9506, 2
  %9510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9511 = extractvalue %dx.types.CBufRet.i32 %9510, 0
  %9512 = extractvalue %dx.types.CBufRet.i32 %9510, 1
  %9513 = uitofp i32 %9511 to float
  %9514 = uitofp i32 %9512 to float
  %9515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9516 = extractvalue %dx.types.CBufRet.f32 %9515, 0
  %9517 = extractvalue %dx.types.CBufRet.f32 %9515, 1
  %9518 = fmul fast float %9513, %9437
  %9519 = fmul fast float %9514, %9438
  %9520 = fadd fast float %9518, -5.000000e-01
  %9521 = fadd fast float %9519, -5.000000e-01
  %9522 = call float @dx.op.unary.f32(i32 22, float %9520)  ; Frc(value)
  %9523 = call float @dx.op.unary.f32(i32 22, float %9521)  ; Frc(value)
  %9524 = fmul fast float %9522, %9522
  %9525 = fmul fast float %9524, %9522
  %9526 = fsub fast float 3.000000e+00, %9522
  %9527 = fmul fast float %9524, %9526
  %9528 = fmul fast float %9522, 3.000000e+00
  %9529 = fmul fast float %9525, 3.000000e+00
  %9530 = fmul fast float %9524, 6.000000e+00
  %9531 = fsub fast float %9529, %9530
  %9532 = fadd fast float %9531, 4.000000e+00
  %9533 = fmul fast float %9532, 0x3FC5555560000000
  %9534 = fmul fast float %9525, -3.000000e+00
  %9535 = fadd fast float %9524, %9522
  %9536 = fmul fast float %9535, 3.000000e+00
  %9537 = fadd fast float %9534, 1.000000e+00
  %9538 = fadd fast float %9537, %9536
  %9539 = fmul fast float %9525, 0x3FC5555560000000
  %9540 = fmul fast float %9523, %9523
  %9541 = fmul fast float %9540, %9523
  %9542 = fsub fast float 3.000000e+00, %9523
  %9543 = fmul fast float %9540, %9542
  %9544 = fmul fast float %9523, 3.000000e+00
  %9545 = fmul fast float %9541, 3.000000e+00
  %9546 = fmul fast float %9540, 6.000000e+00
  %9547 = fsub fast float %9545, %9546
  %9548 = fadd fast float %9547, 4.000000e+00
  %9549 = fmul fast float %9548, 0x3FC5555560000000
  %9550 = fmul fast float %9541, -3.000000e+00
  %9551 = fadd fast float %9540, %9523
  %9552 = fmul fast float %9551, 3.000000e+00
  %9553 = fadd fast float %9550, 1.000000e+00
  %9554 = fadd fast float %9553, %9552
  %9555 = fmul fast float %9541, 0x3FC5555560000000
  %9556 = fadd fast float %9522, 1.000000e+00
  %9557 = fsub fast float 1.000000e+00, %9528
  %9558 = fadd fast float %9557, %9527
  %9559 = fadd fast float %9558, %9532
  %9560 = fmul fast float %9559, 0x3FC5555560000000
  %9561 = fdiv fast float %9533, %9560
  %9562 = fsub fast float %9556, %9561
  %9563 = fsub fast float 1.000000e+00, %9522
  %9564 = fadd fast float %9538, %9525
  %9565 = fmul fast float %9564, 0x3FC5555560000000
  %9566 = fdiv fast float %9539, %9565
  %9567 = fadd fast float %9563, %9566
  %9568 = fadd fast float %9523, 1.000000e+00
  %9569 = fsub fast float 1.000000e+00, %9544
  %9570 = fadd fast float %9569, %9543
  %9571 = fadd fast float %9570, %9548
  %9572 = fmul fast float %9571, 0x3FC5555560000000
  %9573 = fdiv fast float %9549, %9572
  %9574 = fsub fast float %9568, %9573
  %9575 = fsub fast float 1.000000e+00, %9523
  %9576 = fadd fast float %9554, %9541
  %9577 = fmul fast float %9576, 0x3FC5555560000000
  %9578 = fdiv fast float %9555, %9577
  %9579 = fadd fast float %9578, %9575
  %9580 = fmul fast float %9562, %9516
  %9581 = fsub fast float %9437, %9580
  %9582 = fmul fast float %9567, %9516
  %9583 = fadd fast float %9582, %9437
  %9584 = fmul fast float %9579, %9517
  %9585 = fadd fast float %9584, %9438
  %9586 = fmul fast float %9574, %9517
  %9587 = fsub fast float %9438, %9586
  %9588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9581, float %9587, float %9505, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9589 = extractvalue %dx.types.ResRet.f32 %9588, 0
  %9590 = extractvalue %dx.types.ResRet.f32 %9588, 1
  %9591 = extractvalue %dx.types.ResRet.f32 %9588, 2
  %9592 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9583, float %9587, float %9505, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9593 = extractvalue %dx.types.ResRet.f32 %9592, 0
  %9594 = extractvalue %dx.types.ResRet.f32 %9592, 1
  %9595 = extractvalue %dx.types.ResRet.f32 %9592, 2
  %9596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9581, float %9585, float %9505, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9597 = extractvalue %dx.types.ResRet.f32 %9596, 0
  %9598 = extractvalue %dx.types.ResRet.f32 %9596, 1
  %9599 = extractvalue %dx.types.ResRet.f32 %9596, 2
  %9600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9583, float %9585, float %9505, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9601 = extractvalue %dx.types.ResRet.f32 %9600, 0
  %9602 = extractvalue %dx.types.ResRet.f32 %9600, 1
  %9603 = extractvalue %dx.types.ResRet.f32 %9600, 2
  %9604 = fsub fast float %9597, %9589
  %9605 = fsub fast float %9598, %9590
  %9606 = fsub fast float %9599, %9591
  %9607 = fmul fast float %9604, %9577
  %9608 = fmul fast float %9605, %9577
  %9609 = fmul fast float %9606, %9577
  %9610 = fadd fast float %9607, %9589
  %9611 = fadd fast float %9608, %9590
  %9612 = fadd fast float %9609, %9591
  %9613 = fsub fast float %9601, %9593
  %9614 = fsub fast float %9602, %9594
  %9615 = fsub fast float %9603, %9595
  %9616 = fmul fast float %9613, %9577
  %9617 = fmul fast float %9614, %9577
  %9618 = fmul fast float %9615, %9577
  %9619 = fsub fast float %9593, %9610
  %9620 = fadd fast float %9619, %9616
  %9621 = fsub fast float %9594, %9611
  %9622 = fadd fast float %9621, %9617
  %9623 = fsub fast float %9595, %9612
  %9624 = fadd fast float %9623, %9618
  %9625 = fmul fast float %9620, %9565
  %9626 = fmul fast float %9622, %9565
  %9627 = fmul fast float %9624, %9565
  %9628 = fadd fast float %9625, %9610
  %9629 = fadd fast float %9626, %9611
  %9630 = fadd fast float %9627, %9612
  %9631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9632 = extractvalue %dx.types.CBufRet.f32 %9631, 1
  %9633 = fmul fast float %9628, %9632
  %9634 = fmul fast float %9629, %9632
  %9635 = fmul fast float %9630, %9632
  br label %9636

; <label>:9636                                    ; preds = %9467, %9424
  %9637 = phi float [ %9507, %9467 ], [ 1.000000e+00, %9424 ]
  %9638 = phi float [ %9508, %9467 ], [ 1.000000e+00, %9424 ]
  %9639 = phi float [ %9509, %9467 ], [ 1.000000e+00, %9424 ]
  %9640 = phi float [ %9633, %9467 ], [ 0.000000e+00, %9424 ]
  %9641 = phi float [ %9634, %9467 ], [ 0.000000e+00, %9424 ]
  %9642 = phi float [ %9635, %9467 ], [ 0.000000e+00, %9424 ]
  %9643 = fmul fast float %9640, %7986
  %9644 = fmul fast float %9641, %7987
  %9645 = fmul fast float %9642, %7988
  %9646 = fmul fast float %9637, %9431
  %9647 = call float @dx.op.dot3.f32(i32 55, float %9637, float %9638, float %9639, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9648 = call float @dx.op.dot3.f32(i32 55, float %9643, float %9644, float %9645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9649 = select i1 %245, float %9647, float %9637
  %9650 = select i1 %245, float %9647, float %9638
  %9651 = select i1 %245, float 1.000000e+00, float %9639
  %9652 = select i1 %245, float %9648, float %9643
  %9653 = select i1 %245, float 0.000000e+00, float %9644
  %9654 = select i1 %245, float 0.000000e+00, float %9645
  %9655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9656 = extractvalue %dx.types.CBufRet.i32 %9655, 3
  %9657 = and i32 %9656, 3
  %9658 = icmp ne i32 %9657, 0
  %9659 = and i32 %9656, 4
  %9660 = icmp ne i32 %9659, 0
  %9661 = and i1 %9658, %9660
  %9662 = and i1 %245, %9661
  br i1 %9662, label %9663, label %9669

; <label>:9663                                    ; preds = %9636
  %9664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9665 = extractvalue %dx.types.CBufRet.f32 %9664, 1
  %9666 = fadd fast float %9646, -1.000000e+00
  %9667 = fmul fast float %9665, %9666
  %9668 = fadd fast float %9667, 1.000000e+00
  br label %9669

; <label>:9669                                    ; preds = %9663, %9636
  %9670 = phi float [ %9668, %9663 ], [ %9646, %9636 ]
  %9671 = fadd fast float %9428, %9425
  %9672 = fmul fast float %9649, %9671
  %9673 = fadd fast float %9672, %9652
  %9674 = fadd fast float %9429, %9426
  %9675 = fmul fast float %9650, %9674
  %9676 = fadd fast float %9675, %9653
  %9677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9678 = extractvalue %dx.types.CBufRet.f32 %9677, 0
  br i1 %245, label %9679, label %9694

; <label>:9679                                    ; preds = %9669
  %9680 = fadd fast float %9673, %9676
  %9681 = fmul fast float %9678, %9680
  %9682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9683 = extractvalue %dx.types.CBufRet.f32 %9682, 3
  %9684 = extractvalue %dx.types.CBufRet.f32 %7970, 1
  %9685 = fsub fast float %7975, %7969
  %9686 = fadd fast float %9685, %7976
  %9687 = fsub fast float %9686, %9684
  %9688 = extractvalue %dx.types.CBufRet.f32 %7970, 2
  %9689 = fmul fast float %9687, %9688
  %9690 = call float @dx.op.unary.f32(i32 7, float %9689)  ; Saturate(value)
  %9691 = fsub fast float %9690, %9683
  %9692 = fmul fast float %9691, %9670
  %9693 = fadd fast float %9692, %9683
  br label %9720

; <label>:9694                                    ; preds = %9669
  %9695 = fadd fast float %9430, %9427
  %9696 = fmul fast float %9651, %9695
  %9697 = fadd fast float %9696, %9654
  %9698 = fmul fast float %9678, %9673
  %9699 = fmul fast float %9678, %9676
  %9700 = fmul fast float %9678, %9697
  %9701 = call float @dx.op.binary.f32(i32 35, float %9699, float %9700)  ; FMax(a,b)
  %9702 = call float @dx.op.binary.f32(i32 35, float %9698, float %9701)  ; FMax(a,b)
  %9703 = call float @dx.op.binary.f32(i32 35, float %7987, float %7988)  ; FMax(a,b)
  %9704 = call float @dx.op.binary.f32(i32 35, float %7986, float %9703)  ; FMax(a,b)
  %9705 = call float @dx.op.binary.f32(i32 35, float %9702, float %9704)  ; FMax(a,b)
  %9706 = fcmp fast ugt float %9705, 0x3F10000000000000
  br i1 %9706, label %9708, label %9707

; <label>:9707                                    ; preds = %9694
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9708

; <label>:9708                                    ; preds = %9707, %9694
  %9709 = add i32 %48, 356
  %9710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %9709, i32 undef)  ; BufferLoad(srv,index,wot)
  %9711 = extractvalue %dx.types.ResRet.i32 %9710, 0
  %9712 = and i32 %9711, 32
  %9713 = icmp eq i32 %9712, 0
  br i1 %9713, label %9720, label %9714

; <label>:9714                                    ; preds = %9708
  %9715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9716 = extractvalue %dx.types.CBufRet.f32 %9715, 0
  %9717 = fmul fast float %9716, 0x3FE99999A0000000
  %9718 = fadd fast float %9716, %9698
  %9719 = fadd fast float %9717, %9700
  br label %9720

; <label>:9720                                    ; preds = %9714, %9708, %9679
  %9721 = phi float [ 1.000000e+00, %9679 ], [ %7987, %9714 ], [ %7987, %9708 ]
  %9722 = phi float [ 1.000000e+00, %9679 ], [ %7988, %9714 ], [ %7988, %9708 ]
  %9723 = phi float [ %9681, %9679 ], [ %9718, %9714 ], [ %9698, %9708 ]
  %9724 = phi float [ %9693, %9679 ], [ %9699, %9714 ], [ %9699, %9708 ]
  %9725 = phi float [ 1.000000e+00, %9679 ], [ %9719, %9714 ], [ %9700, %9708 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9726 = call float @dx.op.binary.f32(i32 36, float %9723, float 3.225500e+04)  ; FMin(a,b)
  %9727 = call float @dx.op.binary.f32(i32 36, float %9724, float 3.225500e+04)  ; FMin(a,b)
  %9728 = call float @dx.op.binary.f32(i32 36, float %9725, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9726)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9727)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9728)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9729 = call float @dx.op.binary.f32(i32 36, float %7986, float 3.225500e+04)  ; FMin(a,b)
  %9730 = call float @dx.op.binary.f32(i32 36, float %9721, float 3.225500e+04)  ; FMin(a,b)
  %9731 = call float @dx.op.binary.f32(i32 36, float %9722, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9729)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9730)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9731)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

