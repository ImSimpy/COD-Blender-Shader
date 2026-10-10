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
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: ec7668ac518a61193cf24cdf942f60fd
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
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
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 3 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  %48 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = alloca [12 x float], align 4
  %82 = alloca [12 x float], align 4
  %83 = alloca [4 x float], align 4
  %84 = alloca [4 x float], align 4
  %85 = alloca [4 x float], align 4
  %86 = alloca [3 x float], align 4
  %87 = alloca [3 x float], align 4
  %88 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %89 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = fmul fast float %91, %77
  %93 = fmul fast float %91, %78
  %94 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %95 = bitcast float %94 to i32
  %96 = ashr i32 %95, 1
  %97 = sub nsw i32 1597250115, %96
  %98 = bitcast i32 %97 to float
  %99 = fmul fast float %98, %68
  %100 = fmul fast float %98, %69
  %101 = fmul fast float %98, %70
  %102 = fmul fast float %69, %66
  %103 = fmul fast float %70, %65
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %70, %64
  %106 = fmul fast float %68, %66
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %68, %65
  %109 = fmul fast float %69, %64
  %110 = fsub fast float %108, %109
  %111 = fmul fast float %104, %67
  %112 = fmul fast float %107, %67
  %113 = fmul fast float %110, %67
  %114 = call float @dx.op.dot3.f32(i32 55, float %57, float %58, float %59, float %57, float %58, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %115 = bitcast float %114 to i32
  %116 = ashr i32 %115, 1
  %117 = sub nsw i32 1597250115, %116
  %118 = bitcast i32 %117 to float
  %119 = fmul fast float %118, %57
  %120 = fmul fast float %118, %58
  %121 = fmul fast float %118, %59
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %125 = fmul fast float %92, 2.000000e+00
  %126 = fmul fast float %125, %123
  %127 = fmul fast float %93, 2.000000e+00
  %128 = fmul fast float %127, %124
  %129 = fsub fast float 1.000000e+00, %126
  %130 = fsub fast float 1.000000e+00, %128
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = fmul fast float %129, %132
  %136 = fmul fast float %129, %133
  %137 = fmul fast float %129, %134
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = fmul fast float %130, %139
  %143 = fmul fast float %130, %140
  %144 = fmul fast float %130, %141
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = fadd fast float %142, %146
  %150 = fadd fast float %149, %135
  %151 = fadd fast float %143, %147
  %152 = fadd fast float %151, %136
  %153 = fadd fast float %144, %148
  %154 = fadd fast float %153, %137
  %155 = fmul fast float %150, %80
  %156 = fmul fast float %152, %80
  %157 = fmul fast float %154, %80
  %158 = fmul fast float %92, 5.000000e-01
  %159 = fmul fast float %93, 5.000000e-01
  %160 = fptosi float %158 to i32
  %161 = fptosi float %159 to i32
  %162 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %160, i32 %161, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = lshr i32 %163, 18
  %165 = uitofp i32 %164 to float
  %166 = fmul fast float %165, 0x3F4C00EBA0000000
  %167 = call float @dx.op.unary.f32(i32 21, float %166)  ; Exp(value)
  %168 = fadd fast float %167, -1.000000e+00
  %169 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %20, i32 0)  ; GetDimensions(handle,mipLevel)
  %170 = extractvalue %dx.types.Dimensions %169, 0
  %171 = sitofp i32 %170 to float
  %172 = extractvalue %dx.types.Dimensions %169, 1
  %173 = sitofp i32 %172 to float
  %174 = fcmp fast oge float %158, %171
  %175 = fcmp fast oge float %159, %173
  %176 = or i1 %174, %175
  %177 = select i1 %176, float 0x4197782600000000, float %168
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 2
  %180 = extractvalue %dx.types.CBufRet.f32 %178, 3
  %181 = fmul fast float %179, %92
  %182 = fmul fast float %180, %93
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = and i32 %184, 114688
  %186 = icmp ne i32 %185, 0
  %187 = select i1 %186, float %181, float 0.000000e+00
  %188 = select i1 %186, float %182, float 0.000000e+00
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %43, float %187, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = fmul fast float %190, 2.550000e+02
  %192 = fptoui float %191 to i32
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = extractvalue %dx.types.CBufRet.i32 %194, 3
  %196 = and i32 %195, 3
  %197 = icmp ne i32 %196, 0
  %198 = and i32 %195, 4
  %199 = icmp ne i32 %198, 0
  %200 = and i1 %197, %199
  br i1 %200, label %201, label %212

; <label>:201                                     ; preds = %0
  %202 = extractvalue %dx.types.CBufRet.f32 %193, 3
  %203 = fmul fast float %202, %93
  %204 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %205 = fmul fast float %204, %92
  %206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %42, float %205, float %203, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = fsub fast float 1.000000e+00, %207
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 0
  %211 = fcmp fast olt float %208, %210
  br label %215

; <label>:212                                     ; preds = %0
  %213 = icmp eq i32 %198, 0
  %214 = and i1 %197, %213
  br label %215

; <label>:215                                     ; preds = %212, %201
  %216 = phi i1 [ %211, %201 ], [ %214, %212 ]
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %219 = fmul fast float %218, 0x3FE3C6EF40000000
  %220 = frem fast float %92, 2.560000e+02
  %221 = frem fast float %93, 2.560000e+02
  %222 = fptoui float %220 to i32
  %223 = fptoui float %221 to i32
  %224 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 0, i32 %222, i32 %223, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = fadd fast float %225, %219
  %227 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
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

; <label>:409                                     ; preds = %215
  %410 = add i32 %48, 488
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = add i32 %412, 0
  %414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %414, %dx.types.Handle %89, float %71, float %72, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %416 = extractvalue %dx.types.ResRet.f32 %415, 0
  %417 = extractvalue %dx.types.ResRet.f32 %415, 1
  %418 = extractvalue %dx.types.ResRet.f32 %415, 2
  %419 = extractvalue %dx.types.ResRet.f32 %415, 3
  %420 = fmul fast float %419, %73
  %421 = fmul fast float %416, %74
  %422 = fmul fast float %417, %75
  %423 = fmul fast float %418, %76
  br label %424

; <label>:424                                     ; preds = %409, %215
  %425 = phi float [ %76, %215 ], [ %423, %409 ]
  %426 = phi float [ %75, %215 ], [ %422, %409 ]
  %427 = phi float [ %74, %215 ], [ %421, %409 ]
  %428 = phi float [ %73, %215 ], [ %420, %409 ]
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
  br i1 %466, label %1200, label %467

; <label>:467                                     ; preds = %452
  %468 = and i32 %461, 262144
  %469 = icmp ne i32 %468, 0
  %470 = select i1 %469, float %51, float 1.000000e+00
  %471 = select i1 %469, float %52, float 0.000000e+00
  %472 = select i1 %469, float %53, float 0.000000e+00
  %473 = select i1 %469, float %54, float 1.000000e+00
  %474 = select i1 %469, float %55, float %71
  %475 = select i1 %469, float %56, float %72
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
  %571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %572 = extractvalue %dx.types.CBufRet.f32 %571, 0
  %573 = extractvalue %dx.types.CBufRet.f32 %571, 1
  %574 = extractvalue %dx.types.CBufRet.f32 %571, 2
  %575 = fadd fast float %572, %155
  %576 = fadd fast float %573, %156
  %577 = fadd fast float %574, %157
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
  %691 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %690, %dx.types.Handle %89, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %742, %dx.types.Handle %89, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %767 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %766, %dx.types.Handle %88, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %790 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %789, %dx.types.Handle %89, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %988 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %987, %dx.types.Handle %88, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1071, %dx.types.Handle %88, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1094 = select i1 %216, float %1093, float %1090
  %1095 = call float @dx.op.dot3.f32(i32 55, float %1094, float %1091, float %1092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = select i1 %216, float 0.000000e+00, float %1090
  %1097 = select i1 %216, float %1095, float %1091
  %1098 = select i1 %216, float 0.000000e+00, float %1092
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
  %1130 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1129, %dx.types.Handle %89, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  br i1 %1164, label %1185, label %1165

; <label>:1165                                    ; preds = %1137
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = and i32 %1167, 2048
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %1185, label %1170

; <label>:1170                                    ; preds = %1165
  %1171 = add i32 %48, 472
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = add i32 %1173, 0
  %1175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1174, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1176 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1175, %dx.types.Handle %89, float %566, float %567, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 3
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = shl i32 %1179, 4
  %1181 = and i32 %1180, 32752
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = fmul fast float %1182, %1177
  %1184 = call float @dx.op.binary.f32(i32 35, float %1183, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1185

; <label>:1185                                    ; preds = %1170, %1165, %1137
  %1186 = phi float [ %1184, %1170 ], [ 0x3F70101020000000, %1165 ], [ 0x3F70101020000000, %1137 ]
  %1187 = add i32 %48, 96
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = and i32 %1189, 255
  %1191 = uitofp i32 %1190 to float
  %1192 = lshr i32 %1189, 8
  %1193 = and i32 %1192, 255
  %1194 = uitofp i32 %1193 to float
  %1195 = call float @dx.op.dot3.f32(i32 55, float %972, float %973, float %974, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1196 = fmul fast float %1194, %1195
  %1197 = fadd fast float %1196, %1191
  %1198 = fmul fast float %1197, 0x3F70101020000000
  %1199 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  br label %1200

; <label>:1200                                    ; preds = %1185, %452
  %1201 = phi float [ 0.000000e+00, %452 ], [ %1053, %1185 ]
  %1202 = phi float [ 0.000000e+00, %452 ], [ %1054, %1185 ]
  %1203 = phi float [ 0.000000e+00, %452 ], [ %972, %1185 ]
  %1204 = phi float [ 0.000000e+00, %452 ], [ %973, %1185 ]
  %1205 = phi float [ 0.000000e+00, %452 ], [ %974, %1185 ]
  %1206 = phi float [ 0.000000e+00, %452 ], [ %1100, %1185 ]
  %1207 = phi float [ 0.000000e+00, %452 ], [ %1101, %1185 ]
  %1208 = phi float [ 0.000000e+00, %452 ], [ %1102, %1185 ]
  %1209 = phi float [ 0.000000e+00, %452 ], [ %1158, %1185 ]
  %1210 = phi float [ 0.000000e+00, %452 ], [ %1159, %1185 ]
  %1211 = phi float [ 0.000000e+00, %452 ], [ %1160, %1185 ]
  %1212 = phi float [ 0.000000e+00, %452 ], [ %958, %1185 ]
  %1213 = phi float [ 0.000000e+00, %452 ], [ %754, %1185 ]
  %1214 = phi float [ 0.000000e+00, %452 ], [ %1052, %1185 ]
  %1215 = phi float [ 0.000000e+00, %452 ], [ %1055, %1185 ]
  %1216 = phi float [ 0.000000e+00, %452 ], [ %1186, %1185 ]
  %1217 = phi float [ 0.000000e+00, %452 ], [ %1199, %1185 ]
  br i1 %400, label %2204, label %1218

; <label>:1218                                    ; preds = %1200
  %1219 = icmp ult i32 %458, 2
  %1220 = add i32 %48, 40
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = add i32 %48, 44
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = or i32 %1225, %1222
  %1227 = icmp eq i32 %1226, 0
  br i1 %1227, label %2204, label %1228

; <label>:1228                                    ; preds = %1218
  %1229 = and i32 %1222, 262144
  %1230 = icmp ne i32 %1229, 0
  %1231 = select i1 %1230, float %51, float 1.000000e+00
  %1232 = select i1 %1230, float %52, float 0.000000e+00
  %1233 = select i1 %1230, float %53, float 0.000000e+00
  %1234 = select i1 %1230, float %54, float 1.000000e+00
  %1235 = select i1 %1230, float %55, float %71
  %1236 = select i1 %1230, float %56, float %72
  %1237 = add i32 %48, 300
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = lshr i32 %1239, 16
  %1241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1240)  ; LegacyF16ToF32(value)
  %1242 = fmul fast float %1241, 0x3F50624DE0000000
  %1243 = add i32 %48, 104
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = lshr i32 %1245, 16
  %1247 = and i32 %1246, 255
  %1248 = lshr i32 %1245, 24
  %1249 = add i32 %48, 308
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = and i32 %1251, 65535
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = lshr i32 %1251, 16
  %1255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1254)  ; LegacyF16ToF32(value)
  %1256 = add i32 %48, 48
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = lshr i32 %1258, 22
  %1260 = shl nuw nsw i32 %1259, 5
  %1261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1260)  ; LegacyF16ToF32(value)
  %1262 = shl i32 %1258, 4
  %1263 = and i32 %1262, 32752
  %1264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1263)  ; LegacyF16ToF32(value)
  %1265 = lshr i32 %1258, 7
  %1266 = and i32 %1265, 32752
  %1267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1266)  ; LegacyF16ToF32(value)
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 3
  %1270 = fmul fast float %1269, 1.000000e+03
  %1271 = fmul fast float %310, %1270
  %1272 = call float @dx.op.unary.f32(i32 22, float %1271)  ; Frc(value)
  %1273 = fadd fast float %1272, %300
  %1274 = fmul fast float %311, %1270
  %1275 = call float @dx.op.unary.f32(i32 22, float %1274)  ; Frc(value)
  %1276 = fadd fast float %1275, %302
  %1277 = fmul fast float %1242, %1270
  %1278 = call float @dx.op.unary.f32(i32 22, float %1277)  ; Frc(value)
  %1279 = fmul fast float %1278, 0x401921FB60000000
  %1280 = fadd fast float %1279, %1261
  %1281 = call float @dx.op.unary.f32(i32 13, float %1280)  ; Sin(value)
  %1282 = call float @dx.op.unary.f32(i32 12, float %1280)  ; Cos(value)
  %1283 = fsub fast float -0.000000e+00, %1281
  %1284 = fadd fast float %1235, -5.000000e-01
  %1285 = fadd fast float %1236, -5.000000e-01
  %1286 = fmul fast float %1253, %1284
  %1287 = fmul fast float %1255, %1285
  %1288 = fadd fast float %1286, 5.000000e-01
  %1289 = fadd fast float %1287, 5.000000e-01
  %1290 = fmul fast float %1264, %1288
  %1291 = fmul fast float %1267, %1289
  %1292 = fmul fast float %1282, %1290
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1283, float %1291, float %1292)  ; FMad(a,b,c)
  %1294 = fmul fast float %1281, %1290
  %1295 = call float @dx.op.tertiary.f32(i32 46, float %1282, float %1291, float %1294)  ; FMad(a,b,c)
  %1296 = fadd fast float %1273, %1293
  %1297 = fadd fast float %1276, %1295
  %1298 = icmp ugt i32 %1247, 1
  %1299 = icmp ugt i32 %1245, 33554431
  %1300 = or i1 %1299, %1298
  br i1 %1300, label %1301, label %1326

; <label>:1301                                    ; preds = %1228
  %1302 = add i32 %48, 244
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = lshr i32 %1304, 16
  %1306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1305)  ; LegacyF16ToF32(value)
  %1307 = fmul fast float %1269, %1306
  %1308 = call float @dx.op.unary.f32(i32 22, float %1307)  ; Frc(value)
  %1309 = mul nuw nsw i32 %1247, %1248
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1308, %1310
  %1312 = call float @dx.op.unary.f32(i32 27, float %1311)  ; Round_ni(value)
  %1313 = fptoui float %1312 to i32
  %1314 = urem i32 %1313, %1247
  %1315 = udiv i32 %1313, %1248
  %1316 = call float @dx.op.unary.f32(i32 22, float %1296)  ; Frc(value)
  %1317 = call float @dx.op.unary.f32(i32 22, float %1297)  ; Frc(value)
  %1318 = uitofp i32 %1314 to float
  %1319 = uitofp i32 %1315 to float
  %1320 = fadd fast float %1316, %1318
  %1321 = fadd fast float %1317, %1319
  %1322 = uitofp i32 %1247 to float
  %1323 = uitofp i32 %1248 to float
  %1324 = fdiv fast float %1320, %1322
  %1325 = fdiv fast float %1321, %1323
  br label %1326

; <label>:1326                                    ; preds = %1301, %1228
  %1327 = phi float [ %1324, %1301 ], [ %1296, %1228 ]
  %1328 = phi float [ %1325, %1301 ], [ %1297, %1228 ]
  %1329 = and i32 %1222, 16777216
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1440, label %1331

; <label>:1331                                    ; preds = %1326
  %1332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1332, 0
  %1334 = extractvalue %dx.types.CBufRet.f32 %1332, 1
  %1335 = extractvalue %dx.types.CBufRet.f32 %1332, 2
  %1336 = fadd fast float %1333, %155
  %1337 = fadd fast float %1334, %156
  %1338 = fadd fast float %1335, %157
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 0
  %1341 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1342 = icmp eq i32 %49, 65535
  br i1 %1342, label %1437, label %1343

; <label>:1343                                    ; preds = %1331
  %1344 = lshr i32 %49, 1
  %1345 = shl i32 %1344, 2
  %1346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1347 = extractvalue %dx.types.ResRet.i32 %1346, 0
  %1348 = and i32 %49, 1
  %1349 = icmp ne i32 %1348, 0
  %1350 = lshr i32 %1347, 16
  %1351 = and i32 %1347, 65535
  %1352 = select i1 %1349, i32 %1350, i32 %1351
  %1353 = icmp eq i32 %1352, 65535
  br i1 %1353, label %1433, label %1354

; <label>:1354                                    ; preds = %1343
  %1355 = mul nuw nsw i32 %1352, 40
  %1356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1355, i32 undef)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.ResRet.f32 %1356, 1
  %1359 = extractvalue %dx.types.ResRet.f32 %1356, 2
  %1360 = add nuw nsw i32 %1355, 12
  %1361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1360, i32 undef)  ; BufferLoad(srv,index,wot)
  %1362 = extractvalue %dx.types.ResRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.ResRet.f32 %1361, 1
  %1364 = extractvalue %dx.types.ResRet.f32 %1361, 2
  %1365 = add nuw nsw i32 %1355, 24
  %1366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = extractvalue %dx.types.ResRet.f32 %1366, 1
  %1369 = extractvalue %dx.types.ResRet.f32 %1366, 2
  %1370 = add nuw nsw i32 %1355, 36
  %1371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = fsub fast float %1336, %1357
  %1374 = fsub fast float %1337, %1358
  %1375 = fsub fast float %1338, %1359
  %1376 = fmul fast float %1372, %1373
  %1377 = fmul fast float %1372, %1374
  %1378 = fmul fast float %1372, %1375
  %1379 = call float @dx.op.unary.f32(i32 27, float %1376)  ; Round_ni(value)
  %1380 = call float @dx.op.unary.f32(i32 27, float %1377)  ; Round_ni(value)
  %1381 = call float @dx.op.unary.f32(i32 27, float %1378)  ; Round_ni(value)
  %1382 = fadd fast float %1379, 5.000000e-01
  %1383 = fadd fast float %1380, 5.000000e-01
  %1384 = fadd fast float %1381, 5.000000e-01
  %1385 = fmul fast float %1382, %1362
  %1386 = fmul fast float %1383, %1363
  %1387 = fmul fast float %1384, %1364
  %1388 = shl i32 %49, 2
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = add i32 %1390, 0
  %1392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1393 = call float @dx.op.unary.f32(i32 22, float %1385)  ; Frc(value)
  %1394 = call float @dx.op.unary.f32(i32 22, float %1386)  ; Frc(value)
  %1395 = call float @dx.op.unary.f32(i32 22, float %1387)  ; Frc(value)
  %1396 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1392, %dx.types.Handle %43, float %1393, float %1394, float %1395, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 0
  %1398 = extractvalue %dx.types.ResRet.f32 %1396, 1
  %1399 = extractvalue %dx.types.ResRet.f32 %1396, 2
  %1400 = fmul fast float %1397, 1.023000e+03
  %1401 = fmul fast float %1398, 1.023000e+03
  %1402 = fmul fast float %1399, 1.023000e+03
  %1403 = fadd fast float %1400, 5.000000e-01
  %1404 = fadd fast float %1401, 5.000000e-01
  %1405 = fadd fast float %1402, 5.000000e-01
  %1406 = call float @dx.op.unary.f32(i32 27, float %1403)  ; Round_ni(value)
  %1407 = call float @dx.op.unary.f32(i32 27, float %1404)  ; Round_ni(value)
  %1408 = call float @dx.op.unary.f32(i32 27, float %1405)  ; Round_ni(value)
  %1409 = fsub fast float %1376, %1379
  %1410 = fsub fast float %1377, %1380
  %1411 = fsub fast float %1378, %1381
  %1412 = fmul fast float %1409, 7.500000e-01
  %1413 = fmul fast float %1410, 7.500000e-01
  %1414 = fmul fast float %1411, 7.500000e-01
  %1415 = fadd fast float %1379, 1.250000e-01
  %1416 = fadd fast float %1415, %1412
  %1417 = fadd fast float %1416, %1406
  %1418 = fadd fast float %1380, 1.250000e-01
  %1419 = fadd fast float %1418, %1413
  %1420 = fadd fast float %1419, %1407
  %1421 = fadd fast float %1381, 1.250000e-01
  %1422 = fadd fast float %1421, %1414
  %1423 = fadd fast float %1422, %1408
  %1424 = fmul fast float %1417, %1367
  %1425 = fmul fast float %1420, %1368
  %1426 = fmul fast float %1423, %1369
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = add i32 %1428, 0
  %1430 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1429, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1430, %dx.types.Handle %41, float %1424, float %1425, float %1426, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1432 = extractvalue %dx.types.ResRet.f32 %1431, 0
  br label %1433

; <label>:1433                                    ; preds = %1354, %1343
  %1434 = phi float [ %1432, %1354 ], [ -1.000000e+00, %1343 ]
  %1435 = fadd fast float %1434, %1341
  %1436 = call float @dx.op.unary.f32(i32 7, float %1435)  ; Saturate(value)
  br label %1437

; <label>:1437                                    ; preds = %1433, %1331
  %1438 = phi float [ %1436, %1433 ], [ %1341, %1331 ]
  %1439 = fmul fast float %1438, %455
  br label %1440

; <label>:1440                                    ; preds = %1437, %1326
  %1441 = phi float [ %1439, %1437 ], [ %455, %1326 ]
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = and i32 %1443, 256
  %1445 = icmp eq i32 %1444, 0
  br i1 %1445, label %1492, label %1446

; <label>:1446                                    ; preds = %1440
  %1447 = add i32 %48, 428
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = add i32 %1449, 0
  %1451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1450, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1452 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1451, %dx.types.Handle %89, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1453 = extractvalue %dx.types.ResRet.f32 %1452, 0
  %1454 = add i32 %48, 116
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1454, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = shl i32 %1456, 4
  %1458 = and i32 %1457, 32752
  %1459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1458)  ; LegacyF16ToF32(value)
  %1460 = lshr i32 %1456, 7
  %1461 = and i32 %1460, 32752
  %1462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1461)  ; LegacyF16ToF32(value)
  %1463 = fsub fast float 1.000000e+00, %1441
  %1464 = call float @dx.op.binary.f32(i32 35, float %1463, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1465 = bitcast float %1441 to i32
  %1466 = sitofp i32 %1465 to float
  %1467 = fadd fast float %1466, 0xC1CFBF8940000000
  %1468 = fmul fast float %1462, %1467
  %1469 = fadd fast float %1468, 0x41CFBF8940000000
  %1470 = fptosi float %1469 to i32
  %1471 = bitcast i32 %1470 to float
  %1472 = bitcast float %1464 to i32
  %1473 = sitofp i32 %1472 to float
  %1474 = fadd fast float %1473, 0xC1CFBF8940000000
  %1475 = fmul fast float %1474, %1462
  %1476 = fadd fast float %1475, 0x41CFBF8940000000
  %1477 = fptosi float %1476 to i32
  %1478 = bitcast i32 %1477 to float
  %1479 = fmul fast float %1471, %1459
  %1480 = fmul fast float %1478, %1459
  %1481 = fsub fast float %1464, %1479
  %1482 = fadd fast float %1480, %1464
  %1483 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1484 = call float @dx.op.unary.f32(i32 7, float %1482)  ; Saturate(value)
  %1485 = fsub fast float %1453, %1483
  %1486 = fsub fast float %1484, %1483
  %1487 = bitcast float %1486 to i32
  %1488 = sub nsw i32 2129859010, %1487
  %1489 = bitcast i32 %1488 to float
  %1490 = fmul fast float %1489, %1485
  %1491 = call float @dx.op.unary.f32(i32 7, float %1490)  ; Saturate(value)
  br label %1492

; <label>:1492                                    ; preds = %1446, %1440
  %1493 = phi float [ %1491, %1446 ], [ %1441, %1440 ]
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 128
  %1497 = icmp eq i32 %1496, 0
  br i1 %1497, label %1514, label %1498

; <label>:1498                                    ; preds = %1492
  %1499 = add i32 %48, 412
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1499, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = add i32 %1501, 0
  %1503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1504 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1503, %dx.types.Handle %89, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1505 = extractvalue %dx.types.ResRet.f32 %1504, 0
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 524288
  %1509 = icmp ne i32 %1508, 0
  %1510 = fcmp fast ogt float %1505, 0x3FE0101020000000
  %1511 = select i1 %1510, float 1.000000e+00, float 0.000000e+00
  %1512 = select i1 %1509, float %1511, float %1505
  %1513 = fmul fast float %1512, %1493
  br label %1514

; <label>:1514                                    ; preds = %1498, %1492
  %1515 = phi float [ %1513, %1498 ], [ %1493, %1492 ]
  %1516 = fcmp fast ult float %1515, 0x3F70101020000000
  br i1 %1516, label %2204, label %1517

; <label>:1517                                    ; preds = %1514
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 16
  %1521 = icmp eq i32 %1520, 0
  br i1 %1521, label %1720, label %1522

; <label>:1522                                    ; preds = %1517
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = add i32 %48, 364
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = add i32 %1527, 0
  %1529 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1528, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1530 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1529, %dx.types.Handle %88, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1531 = extractvalue %dx.types.ResRet.f32 %1530, 0
  %1532 = extractvalue %dx.types.ResRet.f32 %1530, 1
  %1533 = extractvalue %dx.types.ResRet.f32 %1530, 2
  %1534 = extractvalue %dx.types.ResRet.f32 %1530, 3
  %1535 = and i32 %1524, 255
  %1536 = uitofp i32 %1535 to float
  %1537 = lshr i32 %1524, 8
  %1538 = and i32 %1537, 255
  %1539 = uitofp i32 %1538 to float
  %1540 = fmul fast float %1534, %1536
  %1541 = fadd fast float %1540, %1539
  %1542 = fmul fast float %1541, 0x3F70101000000000
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 512
  %1546 = icmp eq i32 %1545, 0
  br i1 %1546, label %1555, label %1547

; <label>:1547                                    ; preds = %1522
  %1548 = add i32 %48, 444
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = add i32 %1550, 0
  %1552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1553 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1552, %dx.types.Handle %89, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1554 = extractvalue %dx.types.ResRet.f32 %1553, 0
  br label %1555

; <label>:1555                                    ; preds = %1547, %1522
  %1556 = phi float [ %1554, %1547 ], [ 1.000000e+00, %1522 ]
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 33554432
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1667, label %1561

; <label>:1561                                    ; preds = %1555
  %1562 = add i32 %48, 240
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 65535
  %1566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1565)  ; LegacyF16ToF32(value)
  %1567 = lshr i32 %1564, 16
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = add i32 %48, 244
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = and i32 %1571, 65535
  %1573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1572)  ; LegacyF16ToF32(value)
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = lshr i32 %1575, 24
  %1577 = uitofp i32 %1576 to float
  %1578 = fmul fast float %1577, 0x3F70101020000000
  %1579 = and i32 %1575, 255
  %1580 = uitofp i32 %1579 to float
  %1581 = fmul fast float %1580, 0x3F70101020000000
  %1582 = lshr i32 %1575, 8
  %1583 = and i32 %1582, 255
  %1584 = uitofp i32 %1583 to float
  %1585 = fmul fast float %1584, 0x3F70101020000000
  %1586 = lshr i32 %1575, 16
  %1587 = and i32 %1586, 255
  %1588 = uitofp i32 %1587 to float
  %1589 = fmul fast float %1588, 0x3F70101020000000
  %1590 = add i32 %48, 236
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1590, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = lshr i32 %1592, 24
  %1594 = uitofp i32 %1593 to float
  %1595 = fmul fast float %1594, 0x3F70101020000000
  %1596 = and i32 %1592, 255
  %1597 = uitofp i32 %1596 to float
  %1598 = fmul fast float %1597, 0x3F70101020000000
  %1599 = lshr i32 %1592, 8
  %1600 = and i32 %1599, 255
  %1601 = uitofp i32 %1600 to float
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = lshr i32 %1592, 16
  %1604 = and i32 %1603, 255
  %1605 = uitofp i32 %1604 to float
  %1606 = fmul fast float %1605, 0x3F70101020000000
  %1607 = bitcast float %1531 to i32
  %1608 = ashr i32 %1607, 1
  %1609 = sub nsw i32 1597463174, %1608
  %1610 = bitcast i32 %1609 to float
  %1611 = fmul fast float %1531, 5.000000e-01
  %1612 = fmul fast float %1610, %1610
  %1613 = fmul fast float %1612, %1611
  %1614 = fsub fast float 1.500000e+00, %1613
  %1615 = fmul fast float %1610, %1531
  %1616 = fmul fast float %1615, %1614
  %1617 = bitcast float %1532 to i32
  %1618 = ashr i32 %1617, 1
  %1619 = sub nsw i32 1597463174, %1618
  %1620 = bitcast i32 %1619 to float
  %1621 = fmul fast float %1532, 5.000000e-01
  %1622 = fmul fast float %1620, %1620
  %1623 = fmul fast float %1622, %1621
  %1624 = fsub fast float 1.500000e+00, %1623
  %1625 = fmul fast float %1620, %1532
  %1626 = fmul fast float %1625, %1624
  %1627 = bitcast float %1533 to i32
  %1628 = ashr i32 %1627, 1
  %1629 = sub nsw i32 1597463174, %1628
  %1630 = bitcast i32 %1629 to float
  %1631 = fmul fast float %1533, 5.000000e-01
  %1632 = fmul fast float %1630, %1630
  %1633 = fmul fast float %1632, %1631
  %1634 = fsub fast float 1.500000e+00, %1633
  %1635 = fmul fast float %1630, %1533
  %1636 = fmul fast float %1635, %1634
  %1637 = fsub fast float %1616, %1598
  %1638 = fsub fast float %1626, %1602
  %1639 = fsub fast float %1636, %1606
  %1640 = fmul fast float %1637, %1566
  %1641 = fmul fast float %1638, %1568
  %1642 = fmul fast float %1639, %1573
  %1643 = fadd fast float %1640, %1581
  %1644 = fadd fast float %1641, %1585
  %1645 = fadd fast float %1642, %1589
  %1646 = call float @dx.op.unary.f32(i32 7, float %1643)  ; Saturate(value)
  %1647 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1648 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  %1649 = fmul fast float %1646, %1646
  %1650 = fmul fast float %1647, %1647
  %1651 = fmul fast float %1648, %1648
  %1652 = fsub fast float %1649, %1531
  %1653 = fsub fast float %1650, %1532
  %1654 = fsub fast float %1651, %1533
  %1655 = fmul fast float %1652, %1556
  %1656 = fmul fast float %1653, %1556
  %1657 = fmul fast float %1654, %1556
  %1658 = fadd fast float %1655, %1531
  %1659 = fadd fast float %1656, %1532
  %1660 = fadd fast float %1657, %1533
  %1661 = fadd fast float %1578, %1542
  %1662 = fsub fast float %1661, %1595
  %1663 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1664 = fsub fast float %1663, %1542
  %1665 = fmul fast float %1664, %1556
  %1666 = fadd fast float %1665, %1542
  br label %1720

; <label>:1667                                    ; preds = %1555
  %1668 = and i32 %1558, 134217728
  %1669 = icmp eq i32 %1668, 0
  br i1 %1669, label %1704, label %1670

; <label>:1670                                    ; preds = %1667
  %1671 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %1672 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1673 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1674 = fadd fast float %1671, -5.000000e-01
  %1675 = fadd fast float %1672, -5.000000e-01
  %1676 = fadd fast float %1673, -5.000000e-01
  %1677 = fmul fast float %1674, %1556
  %1678 = fmul fast float %1675, %1556
  %1679 = fmul fast float %1676, %1556
  %1680 = fadd fast float %1677, 5.000000e-01
  %1681 = fadd fast float %1678, 5.000000e-01
  %1682 = fadd fast float %1679, 5.000000e-01
  %1683 = call float @dx.op.unary.f32(i32 24, float %1531)  ; Sqrt(value)
  %1684 = call float @dx.op.unary.f32(i32 24, float %1532)  ; Sqrt(value)
  %1685 = call float @dx.op.unary.f32(i32 24, float %1533)  ; Sqrt(value)
  %1686 = fmul fast float %1680, 2.000000e+00
  %1687 = fsub fast float 1.000000e+00, %1686
  %1688 = fmul fast float %1687, %1683
  %1689 = fadd fast float %1688, %1686
  %1690 = fmul fast float %1689, %1683
  %1691 = fmul fast float %1681, 2.000000e+00
  %1692 = fsub fast float 1.000000e+00, %1691
  %1693 = fmul fast float %1692, %1684
  %1694 = fadd fast float %1693, %1691
  %1695 = fmul fast float %1694, %1684
  %1696 = fmul fast float %1682, 2.000000e+00
  %1697 = fsub fast float 1.000000e+00, %1696
  %1698 = fmul fast float %1697, %1685
  %1699 = fadd fast float %1698, %1696
  %1700 = fmul fast float %1699, %1685
  %1701 = fmul fast float %1690, %1690
  %1702 = fmul fast float %1695, %1695
  %1703 = fmul fast float %1700, %1700
  br label %1720

; <label>:1704                                    ; preds = %1667
  %1705 = fmul fast float %287, %287
  %1706 = fmul fast float %291, %291
  %1707 = fmul fast float %295, %295
  %1708 = fadd fast float %1705, -1.000000e+00
  %1709 = fadd fast float %1706, -1.000000e+00
  %1710 = fadd fast float %1707, -1.000000e+00
  %1711 = fmul fast float %1556, %1708
  %1712 = fmul fast float %1556, %1709
  %1713 = fmul fast float %1556, %1710
  %1714 = fadd fast float %1711, 1.000000e+00
  %1715 = fadd fast float %1712, 1.000000e+00
  %1716 = fadd fast float %1713, 1.000000e+00
  %1717 = fmul fast float %1714, %1531
  %1718 = fmul fast float %1715, %1532
  %1719 = fmul fast float %1716, %1533
  br label %1720

; <label>:1720                                    ; preds = %1704, %1670, %1561, %1517
  %1721 = phi float [ %1666, %1561 ], [ %1542, %1670 ], [ %1542, %1704 ], [ 0x3FA23C0BE0000000, %1517 ]
  %1722 = phi float [ %1658, %1561 ], [ %1701, %1670 ], [ %1717, %1704 ], [ 1.000000e+00, %1517 ]
  %1723 = phi float [ %1659, %1561 ], [ %1702, %1670 ], [ %1718, %1704 ], [ 1.000000e+00, %1517 ]
  %1724 = phi float [ %1660, %1561 ], [ %1703, %1670 ], [ %1719, %1704 ], [ 1.000000e+00, %1517 ]
  %1725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.i32 %1725, 1
  %1727 = and i32 %1726, 1
  %1728 = icmp ne i32 %1727, 0
  %1729 = add i32 %48, 356
  %1730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = and i32 %1731, 32
  %1733 = icmp ne i32 %1732, 0
  %1734 = and i1 %1728, %1733
  %1735 = select i1 %1734, float 1.000000e+00, float %1722
  %1736 = select i1 %1734, float 0x3FD3333340000000, float %1723
  %1737 = select i1 %1734, float 0x3FD3333340000000, float %1724
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = and i32 %1739, 32
  %1741 = icmp eq i32 %1740, 0
  br i1 %1741, label %1814, label %1742

; <label>:1742                                    ; preds = %1720
  %1743 = add i32 %48, 108
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = add i32 %48, 380
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = add i32 %1748, 0
  %1750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1750, %dx.types.Handle %88, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.ResRet.f32 %1751, 1
  %1754 = extractvalue %dx.types.ResRet.f32 %1751, 2
  %1755 = extractvalue %dx.types.ResRet.f32 %1751, 3
  %1756 = and i32 %1745, 255
  %1757 = uitofp i32 %1756 to float
  %1758 = lshr i32 %1745, 8
  %1759 = and i32 %1758, 255
  %1760 = uitofp i32 %1759 to float
  %1761 = lshr i32 %1745, 16
  %1762 = and i32 %1761, 255
  %1763 = uitofp i32 %1762 to float
  %1764 = fmul fast float %1763, 0x3F70101000000000
  %1765 = fmul fast float %1752, %1757
  %1766 = fadd fast float %1765, %1760
  %1767 = fmul fast float %1766, 0x3F70101000000000
  %1768 = fadd fast float %1753, -5.000000e-01
  %1769 = fadd fast float %1755, -5.000000e-01
  %1770 = fmul fast float %1768, %1764
  %1771 = fmul fast float %1769, %1764
  %1772 = fadd fast float %1770, 5.000000e-01
  %1773 = fadd fast float %1771, 5.000000e-01
  %1774 = fmul fast float %1772, 2.000000e+00
  %1775 = fadd fast float %1774, -1.000000e+00
  %1776 = fmul fast float %1773, 2.000000e+00
  %1777 = fadd fast float %1776, -1.000000e+00
  %1778 = fadd fast float %1775, %1777
  %1779 = fmul fast float %1778, 5.000000e-01
  %1780 = fsub fast float %1775, %1777
  %1781 = fmul fast float %1780, 5.000000e-01
  %1782 = call float @dx.op.unary.f32(i32 6, float %1779)  ; FAbs(value)
  %1783 = fsub fast float 1.000000e+00, %1782
  %1784 = call float @dx.op.unary.f32(i32 6, float %1781)  ; FAbs(value)
  %1785 = fsub fast float %1783, %1784
  %1786 = call float @dx.op.dot3.f32(i32 55, float %1779, float %1781, float %1785, float %1779, float %1781, float %1785)  ; Dot3(ax,ay,az,bx,by,bz)
  %1787 = call float @dx.op.unary.f32(i32 25, float %1786)  ; Rsqrt(value)
  %1788 = fmul fast float %1779, %1787
  %1789 = fmul fast float %1781, %1787
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = and i32 %1791, 67108864
  %1793 = icmp eq i32 %1792, 0
  br i1 %1793, label %1810, label %1794

; <label>:1794                                    ; preds = %1742
  %1795 = add i32 %48, 296
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = and i32 %1797, 65535
  %1799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1798)  ; LegacyF16ToF32(value)
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = and i32 %1801, 65535
  %1803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1802)  ; LegacyF16ToF32(value)
  %1804 = lshr i32 %1797, 16
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = fsub fast float %1767, %1805
  %1807 = fmul fast float %1806, %1799
  %1808 = fadd fast float %1807, %1803
  %1809 = call float @dx.op.unary.f32(i32 7, float %1808)  ; Saturate(value)
  br label %1810

; <label>:1810                                    ; preds = %1794, %1742
  %1811 = phi float [ %1809, %1794 ], [ %1767, %1742 ]
  %1812 = call float @dx.op.dot2.f32(i32 54, float %1788, float %1789, float %1231, float %1232)  ; Dot2(ax,ay,bx,by)
  %1813 = call float @dx.op.dot2.f32(i32 54, float %1788, float %1789, float %1233, float %1234)  ; Dot2(ax,ay,bx,by)
  br label %1814

; <label>:1814                                    ; preds = %1810, %1720
  %1815 = phi float [ %1811, %1810 ], [ 0x3FD6666660000000, %1720 ]
  %1816 = phi float [ %1812, %1810 ], [ 0.000000e+00, %1720 ]
  %1817 = phi float [ %1813, %1810 ], [ 0.000000e+00, %1720 ]
  %1818 = phi float [ %1754, %1810 ], [ 1.000000e+00, %1720 ]
  %1819 = add i32 %48, 176
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = lshr i32 %1821, 22
  %1823 = shl nuw nsw i32 %1822, 5
  %1824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1823)  ; LegacyF16ToF32(value)
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = and i32 %1826, 64
  %1828 = icmp eq i32 %1827, 0
  br i1 %1828, label %1862, label %1829

; <label>:1829                                    ; preds = %1814
  %1830 = add i32 %48, 396
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = add i32 %1832, 0
  %1834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = and i32 %1836, 131072
  %1838 = icmp eq i32 %1837, 0
  %1839 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1834, %dx.types.Handle %88, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  %1841 = extractvalue %dx.types.ResRet.f32 %1839, 1
  %1842 = extractvalue %dx.types.ResRet.f32 %1839, 2
  %1843 = fmul fast float %1840, %275
  %1844 = fmul fast float %1841, %278
  %1845 = fmul fast float %1842, %281
  br i1 %1838, label %1852, label %1846

; <label>:1846                                    ; preds = %1829
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 0
  %1849 = fmul fast float %1848, %1843
  %1850 = fmul fast float %1848, %1844
  %1851 = fmul fast float %1848, %1845
  br label %1852

; <label>:1852                                    ; preds = %1846, %1829
  %1853 = phi float [ %1849, %1846 ], [ %1843, %1829 ]
  %1854 = phi float [ %1850, %1846 ], [ %1844, %1829 ]
  %1855 = phi float [ %1851, %1846 ], [ %1845, %1829 ]
  %1856 = fmul fast float %1853, %1824
  %1857 = select i1 %216, float %1856, float %1853
  %1858 = call float @dx.op.dot3.f32(i32 55, float %1857, float %1854, float %1855, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1859 = select i1 %216, float 0.000000e+00, float %1853
  %1860 = select i1 %216, float %1858, float %1854
  %1861 = select i1 %216, float 0.000000e+00, float %1855
  br label %1862

; <label>:1862                                    ; preds = %1852, %1814
  %1863 = phi float [ %1859, %1852 ], [ 0.000000e+00, %1814 ]
  %1864 = phi float [ %1860, %1852 ], [ 0.000000e+00, %1814 ]
  %1865 = phi float [ %1861, %1852 ], [ 0.000000e+00, %1814 ]
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = and i32 %1867, 1024
  %1869 = icmp eq i32 %1868, 0
  br i1 %1869, label %1900, label %1870

; <label>:1870                                    ; preds = %1862
  %1871 = add i32 %48, 168
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = and i32 %1873, 255
  %1875 = uitofp i32 %1874 to float
  %1876 = fmul fast float %1875, 0x3F70101020000000
  %1877 = lshr i32 %1873, 8
  %1878 = and i32 %1877, 255
  %1879 = uitofp i32 %1878 to float
  %1880 = fmul fast float %1879, 0x3F70101020000000
  %1881 = lshr i32 %1873, 16
  %1882 = and i32 %1881, 255
  %1883 = uitofp i32 %1882 to float
  %1884 = fmul fast float %1883, 0x3F70101020000000
  %1885 = fmul fast float %1876, %1876
  %1886 = fmul fast float %1880, %1880
  %1887 = fmul fast float %1884, %1884
  %1888 = add i32 %48, 460
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = add i32 %1890, 0
  %1892 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1891, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1893 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1892, %dx.types.Handle %89, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1894 = extractvalue %dx.types.ResRet.f32 %1893, 0
  %1895 = extractvalue %dx.types.ResRet.f32 %1893, 1
  %1896 = extractvalue %dx.types.ResRet.f32 %1893, 2
  %1897 = fmul fast float %1885, %1894
  %1898 = fmul fast float %1886, %1895
  %1899 = fmul fast float %1887, %1896
  br label %1900

; <label>:1900                                    ; preds = %1870, %1862
  %1901 = phi float [ %1897, %1870 ], [ 0.000000e+00, %1862 ]
  %1902 = phi float [ %1898, %1870 ], [ 0.000000e+00, %1862 ]
  %1903 = phi float [ %1899, %1870 ], [ 0.000000e+00, %1862 ]
  %1904 = fcmp fast ogt float %1901, 0.000000e+00
  %1905 = fcmp fast ogt float %1902, 0.000000e+00
  %1906 = fcmp fast ogt float %1903, 0.000000e+00
  %1907 = call float @dx.op.unary.f32(i32 23, float %1901)  ; Log(value)
  %1908 = call float @dx.op.unary.f32(i32 23, float %1902)  ; Log(value)
  %1909 = call float @dx.op.unary.f32(i32 23, float %1903)  ; Log(value)
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = lshr i32 %1911, 7
  %1913 = and i32 %1912, 32752
  %1914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1913)  ; LegacyF16ToF32(value)
  %1915 = fmul fast float %1907, 0xBFE62E4300000000
  %1916 = fmul fast float %1915, %1914
  %1917 = fmul fast float %1908, 0xBFE62E4300000000
  %1918 = fmul fast float %1917, %1914
  %1919 = fmul fast float %1909, 0xBFE62E4300000000
  %1920 = fmul fast float %1919, %1914
  %1921 = select i1 %1904, float %1916, float 1.270000e+02
  %1922 = select i1 %1905, float %1918, float 1.270000e+02
  %1923 = select i1 %1906, float %1920, float 1.270000e+02
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = and i32 %1925, 10240
  %1927 = icmp eq i32 %1926, 0
  br i1 %1927, label %1948, label %1928

; <label>:1928                                    ; preds = %1900
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = and i32 %1930, 2048
  %1932 = icmp eq i32 %1931, 0
  br i1 %1932, label %1948, label %1933

; <label>:1933                                    ; preds = %1928
  %1934 = add i32 %48, 476
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = add i32 %1936, 0
  %1938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1937, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1939 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1938, %dx.types.Handle %89, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1940 = extractvalue %dx.types.ResRet.f32 %1939, 3
  %1941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1942 = extractvalue %dx.types.ResRet.i32 %1941, 0
  %1943 = shl i32 %1942, 4
  %1944 = and i32 %1943, 32752
  %1945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1944)  ; LegacyF16ToF32(value)
  %1946 = fmul fast float %1945, %1940
  %1947 = call float @dx.op.binary.f32(i32 35, float %1946, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1948

; <label>:1948                                    ; preds = %1933, %1928, %1900
  %1949 = phi float [ %1947, %1933 ], [ 0x3F70101020000000, %1928 ], [ 0x3F70101020000000, %1900 ]
  %1950 = add i32 %48, 112
  %1951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.i32 %1951, 0
  %1953 = and i32 %1952, 255
  %1954 = uitofp i32 %1953 to float
  %1955 = lshr i32 %1952, 8
  %1956 = and i32 %1955, 255
  %1957 = uitofp i32 %1956 to float
  %1958 = call float @dx.op.dot3.f32(i32 55, float %1735, float %1736, float %1737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1959 = fmul fast float %1957, %1958
  %1960 = fadd fast float %1959, %1954
  %1961 = fmul fast float %1960, 0x3F70101020000000
  %1962 = call float @dx.op.unary.f32(i32 7, float %1961)  ; Saturate(value)
  br i1 %1219, label %1963, label %1998

; <label>:1963                                    ; preds = %1948
  %1964 = fmul fast float %1949, 2.000000e+00
  %1965 = fcmp fast olt float %1921, 1.270000e+02
  %1966 = fcmp fast olt float %1922, 1.270000e+02
  %1967 = fcmp fast olt float %1923, 1.270000e+02
  %1968 = fmul fast float %1921, 0xBFF7154760000000
  %1969 = fmul fast float %1968, %1964
  %1970 = fmul fast float %1922, 0xBFF7154760000000
  %1971 = fmul fast float %1970, %1964
  %1972 = fmul fast float %1923, 0xBFF7154760000000
  %1973 = fmul fast float %1972, %1964
  %1974 = call float @dx.op.unary.f32(i32 21, float %1969)  ; Exp(value)
  %1975 = call float @dx.op.unary.f32(i32 21, float %1971)  ; Exp(value)
  %1976 = call float @dx.op.unary.f32(i32 21, float %1973)  ; Exp(value)
  %1977 = call float @dx.op.unary.f32(i32 7, float %1974)  ; Saturate(value)
  %1978 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  %1979 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1980 = fadd fast float %1977, -1.000000e+00
  %1981 = select i1 %1965, float %1980, float -1.000000e+00
  %1982 = fadd fast float %1978, -1.000000e+00
  %1983 = select i1 %1966, float %1982, float -1.000000e+00
  %1984 = fadd fast float %1979, -1.000000e+00
  %1985 = select i1 %1967, float %1984, float -1.000000e+00
  %1986 = fmul fast float %1981, %1515
  %1987 = fmul fast float %1983, %1515
  %1988 = fmul fast float %1985, %1515
  %1989 = fadd fast float %1986, 1.000000e+00
  %1990 = fadd fast float %1987, 1.000000e+00
  %1991 = fadd fast float %1988, 1.000000e+00
  %1992 = fmul fast float %1989, %1203
  %1993 = fmul fast float %1990, %1204
  %1994 = fmul fast float %1991, %1205
  %1995 = fmul fast float %1989, %1206
  %1996 = fmul fast float %1990, %1207
  %1997 = fmul fast float %1991, %1208
  br label %1998

; <label>:1998                                    ; preds = %1963, %1948
  %1999 = phi float [ %1992, %1963 ], [ %1203, %1948 ]
  %2000 = phi float [ %1993, %1963 ], [ %1204, %1948 ]
  %2001 = phi float [ %1994, %1963 ], [ %1205, %1948 ]
  %2002 = phi float [ %1995, %1963 ], [ %1206, %1948 ]
  %2003 = phi float [ %1996, %1963 ], [ %1207, %1948 ]
  %2004 = phi float [ %1997, %1963 ], [ %1208, %1948 ]
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = and i32 %2006, 3
  %2008 = icmp eq i32 %2007, 3
  br i1 %2008, label %2087, label %2009

; <label>:2009                                    ; preds = %1998
  %2010 = and i32 %2006, 16
  %2011 = icmp ne i32 %2010, 0
  %2012 = select i1 %2011, float %1515, float 0.000000e+00
  %2013 = icmp eq i32 %2007, 0
  br i1 %2013, label %2014, label %2042

; <label>:2014                                    ; preds = %2009
  %2015 = and i32 %2006, 64
  %2016 = icmp ne i32 %2015, 0
  %2017 = select i1 %2016, float %1515, float 0.000000e+00
  %2018 = fsub fast float %1735, %1999
  %2019 = fsub fast float %1736, %2000
  %2020 = fsub fast float %1737, %2001
  %2021 = fmul fast float %2012, %2018
  %2022 = fmul fast float %2012, %2019
  %2023 = fmul fast float %2012, %2020
  %2024 = fadd fast float %2021, %1999
  %2025 = fadd fast float %2022, %2000
  %2026 = fadd fast float %2023, %2001
  %2027 = fsub fast float %1721, %1212
  %2028 = fmul fast float %2012, %2027
  %2029 = fadd fast float %2028, %1212
  %2030 = fsub fast float %1863, %2002
  %2031 = fsub fast float %1864, %2003
  %2032 = fsub fast float %1865, %2004
  %2033 = fmul fast float %2017, %2030
  %2034 = fmul fast float %2017, %2031
  %2035 = fmul fast float %2017, %2032
  %2036 = fadd fast float %2033, %2002
  %2037 = fadd fast float %2034, %2003
  %2038 = fadd fast float %2035, %2004
  %2039 = fsub fast float %1962, %1217
  %2040 = fmul fast float %2012, %2039
  %2041 = fadd fast float %2040, %1217
  br label %2087

; <label>:2042                                    ; preds = %2009
  %2043 = icmp eq i32 %2007, 1
  br i1 %2043, label %2044, label %2057

; <label>:2044                                    ; preds = %2042
  %2045 = fadd fast float %1735, -1.000000e+00
  %2046 = fadd fast float %1736, -1.000000e+00
  %2047 = fadd fast float %1737, -1.000000e+00
  %2048 = fmul fast float %2012, %2045
  %2049 = fmul fast float %2012, %2046
  %2050 = fmul fast float %2012, %2047
  %2051 = fadd fast float %2048, 1.000000e+00
  %2052 = fadd fast float %2049, 1.000000e+00
  %2053 = fadd fast float %2050, 1.000000e+00
  %2054 = fmul fast float %2051, %1999
  %2055 = fmul fast float %2052, %2000
  %2056 = fmul fast float %2053, %2001
  br label %2087

; <label>:2057                                    ; preds = %2042
  %2058 = icmp eq i32 %2007, 2
  br i1 %2058, label %2059, label %2087

; <label>:2059                                    ; preds = %2057
  %2060 = call float @dx.op.unary.f32(i32 24, float %1735)  ; Sqrt(value)
  %2061 = call float @dx.op.unary.f32(i32 24, float %1736)  ; Sqrt(value)
  %2062 = call float @dx.op.unary.f32(i32 24, float %1737)  ; Sqrt(value)
  %2063 = fadd fast float %2060, -5.000000e-01
  %2064 = fadd fast float %2061, -5.000000e-01
  %2065 = fadd fast float %2062, -5.000000e-01
  %2066 = fmul fast float %2063, %2012
  %2067 = fmul fast float %2064, %2012
  %2068 = fmul fast float %2065, %2012
  %2069 = fadd fast float %2066, 5.000000e-01
  %2070 = fadd fast float %2067, 5.000000e-01
  %2071 = fadd fast float %2068, 5.000000e-01
  %2072 = fmul fast float %2069, 2.000000e+00
  %2073 = fsub fast float 1.000000e+00, %2072
  %2074 = fmul fast float %2073, %1999
  %2075 = fadd fast float %2074, %2072
  %2076 = fmul fast float %2075, %1999
  %2077 = fmul fast float %2070, 2.000000e+00
  %2078 = fsub fast float 1.000000e+00, %2077
  %2079 = fmul fast float %2078, %2000
  %2080 = fadd fast float %2079, %2077
  %2081 = fmul fast float %2080, %2000
  %2082 = fmul fast float %2071, 2.000000e+00
  %2083 = fsub fast float 1.000000e+00, %2082
  %2084 = fmul fast float %2083, %2001
  %2085 = fadd fast float %2084, %2082
  %2086 = fmul fast float %2085, %2001
  br label %2087

; <label>:2087                                    ; preds = %2059, %2057, %2044, %2014, %1998
  %2088 = phi float [ %1999, %1998 ], [ %2076, %2059 ], [ %1999, %2057 ], [ %2054, %2044 ], [ %2024, %2014 ]
  %2089 = phi float [ %2000, %1998 ], [ %2081, %2059 ], [ %2000, %2057 ], [ %2055, %2044 ], [ %2025, %2014 ]
  %2090 = phi float [ %2001, %1998 ], [ %2086, %2059 ], [ %2001, %2057 ], [ %2056, %2044 ], [ %2026, %2014 ]
  %2091 = phi float [ %2002, %1998 ], [ %2002, %2059 ], [ %2002, %2057 ], [ %2002, %2044 ], [ %2036, %2014 ]
  %2092 = phi float [ %2003, %1998 ], [ %2003, %2059 ], [ %2003, %2057 ], [ %2003, %2044 ], [ %2037, %2014 ]
  %2093 = phi float [ %2004, %1998 ], [ %2004, %2059 ], [ %2004, %2057 ], [ %2004, %2044 ], [ %2038, %2014 ]
  %2094 = phi float [ %1212, %1998 ], [ %1212, %2059 ], [ %1212, %2057 ], [ %1212, %2044 ], [ %2029, %2014 ]
  %2095 = phi float [ %1217, %1998 ], [ %1217, %2059 ], [ %1217, %2057 ], [ %1217, %2044 ], [ %2041, %2014 ]
  %2096 = and i32 %2006, 12
  %2097 = icmp eq i32 %2096, 12
  br i1 %2097, label %2204, label %2098

; <label>:2098                                    ; preds = %2087
  %2099 = and i32 %2006, 2097184
  %2100 = icmp eq i32 %2099, 2097184
  %2101 = select i1 %2100, float %1515, float 0.000000e+00
  %2102 = and i32 %2006, 4194336
  %2103 = icmp eq i32 %2102, 4194336
  %2104 = select i1 %2103, float %1515, float 0.000000e+00
  %2105 = and i32 %2006, 8388640
  %2106 = icmp eq i32 %2105, 8388640
  %2107 = select i1 %2106, float %1515, float 0.000000e+00
  %2108 = and i32 %2006, 1024
  %2109 = icmp ne i32 %2108, 0
  %2110 = select i1 %2109, float %1515, float 0.000000e+00
  %2111 = and i32 %2006, 2048
  %2112 = icmp ne i32 %2111, 0
  %2113 = select i1 %2112, float %1515, float 0.000000e+00
  %2114 = icmp eq i32 %2096, 0
  br i1 %2114, label %2115, label %2140

; <label>:2115                                    ; preds = %2098
  %2116 = fsub fast float %1816, %1201
  %2117 = fsub fast float %1817, %1202
  %2118 = fmul fast float %2101, %2116
  %2119 = fmul fast float %2101, %2117
  %2120 = fadd fast float %2118, %1201
  %2121 = fadd fast float %2119, %1202
  %2122 = fsub fast float %1818, %1215
  %2123 = fmul fast float %2104, %2122
  %2124 = fadd fast float %2123, %1215
  %2125 = fsub fast float %1815, %1214
  %2126 = fmul fast float %2107, %2125
  %2127 = fadd fast float %2126, %1214
  %2128 = fsub fast float %1921, %1209
  %2129 = fsub fast float %1922, %1210
  %2130 = fsub fast float %1923, %1211
  %2131 = fmul fast float %2110, %2128
  %2132 = fmul fast float %2110, %2129
  %2133 = fmul fast float %2110, %2130
  %2134 = fadd fast float %2131, %1209
  %2135 = fadd fast float %2132, %1210
  %2136 = fadd fast float %2133, %1211
  %2137 = fsub fast float %1949, %1216
  %2138 = fmul fast float %2113, %2137
  %2139 = fadd fast float %2138, %1216
  br label %2204

; <label>:2140                                    ; preds = %2098
  %2141 = icmp eq i32 %2096, 4
  br i1 %2141, label %2142, label %2182

; <label>:2142                                    ; preds = %2140
  %2143 = fmul fast float %2101, %1816
  %2144 = fmul fast float %2101, %1817
  %2145 = fadd fast float %2143, %1201
  %2146 = fadd fast float %2144, %1202
  %2147 = call float @dx.op.binary.f32(i32 36, float %1215, float %1818)  ; FMin(a,b)
  %2148 = fsub fast float %2147, %1215
  %2149 = fmul fast float %2148, %2104
  %2150 = fadd fast float %2149, %1215
  %2151 = fadd fast float %1815, %1214
  %2152 = fmul fast float %2151, 0x3FF337FAE0000000
  %2153 = fmul fast float %1214, %1214
  %2154 = fmul fast float %1815, %1815
  %2155 = fadd fast float %2154, %2153
  %2156 = fmul fast float %2155, 0x3FE5152B00000000
  %2157 = fmul fast float %1214, 0xBFCC1F85E0000000
  %2158 = fmul fast float %2157, %1815
  %2159 = fadd fast float %2158, 0xBFE1363700000000
  %2160 = fadd fast float %2159, %2152
  %2161 = fsub fast float %2160, %2156
  %2162 = fmul fast float %2151, 0x3FBA6F0D00000000
  %2163 = fmul fast float %2155, 0x3FD0432880000000
  %2164 = fmul fast float %1214, 0xBFEF110800000000
  %2165 = fmul fast float %2164, %1815
  %2166 = fadd fast float %2165, 1.000000e+00
  %2167 = fsub fast float %2166, %2162
  %2168 = fadd fast float %2167, %2163
  %2169 = fdiv fast float %2161, %2168
  %2170 = call float @dx.op.unary.f32(i32 7, float %2169)  ; Saturate(value)
  %2171 = fsub fast float %2170, %1214
  %2172 = fmul fast float %2171, %2107
  %2173 = fadd fast float %2172, %1214
  %2174 = fmul fast float %2110, %1921
  %2175 = fmul fast float %2110, %1922
  %2176 = fmul fast float %2110, %1923
  %2177 = fadd fast float %2174, %1209
  %2178 = fadd fast float %2175, %1210
  %2179 = fadd fast float %2176, %1211
  %2180 = fmul fast float %2113, %1949
  %2181 = fadd fast float %2180, %1216
  br label %2204

; <label>:2182                                    ; preds = %2140
  %2183 = icmp eq i32 %2096, 8
  br i1 %2183, label %2184, label %2204

; <label>:2184                                    ; preds = %2182
  %2185 = fmul fast float %2101, %1816
  %2186 = fmul fast float %2101, %1817
  %2187 = fadd fast float %2185, %1201
  %2188 = fadd fast float %2186, %1202
  %2189 = call float @dx.op.binary.f32(i32 36, float %1215, float %1818)  ; FMin(a,b)
  %2190 = fsub fast float %2189, %1215
  %2191 = fmul fast float %2190, %2104
  %2192 = fadd fast float %2191, %1215
  %2193 = fsub fast float %1815, %1214
  %2194 = fmul fast float %2107, %2193
  %2195 = fadd fast float %2194, %1214
  %2196 = fmul fast float %2110, %1921
  %2197 = fmul fast float %2110, %1922
  %2198 = fmul fast float %2110, %1923
  %2199 = fadd fast float %2196, %1209
  %2200 = fadd fast float %2197, %1210
  %2201 = fadd fast float %2198, %1211
  %2202 = fmul fast float %2113, %1949
  %2203 = fadd fast float %2202, %1216
  br label %2204

; <label>:2204                                    ; preds = %2184, %2182, %2142, %2115, %2087, %1514, %1218, %1200
  %2205 = phi float [ %1201, %2087 ], [ %1201, %1514 ], [ %1201, %1200 ], [ %2187, %2184 ], [ %1201, %2182 ], [ %2145, %2142 ], [ %2120, %2115 ], [ %1201, %1218 ]
  %2206 = phi float [ %1202, %2087 ], [ %1202, %1514 ], [ %1202, %1200 ], [ %2188, %2184 ], [ %1202, %2182 ], [ %2146, %2142 ], [ %2121, %2115 ], [ %1202, %1218 ]
  %2207 = phi float [ %2088, %2087 ], [ %1203, %1514 ], [ %1203, %1200 ], [ %2088, %2184 ], [ %2088, %2182 ], [ %2088, %2142 ], [ %2088, %2115 ], [ %1203, %1218 ]
  %2208 = phi float [ %2089, %2087 ], [ %1204, %1514 ], [ %1204, %1200 ], [ %2089, %2184 ], [ %2089, %2182 ], [ %2089, %2142 ], [ %2089, %2115 ], [ %1204, %1218 ]
  %2209 = phi float [ %2090, %2087 ], [ %1205, %1514 ], [ %1205, %1200 ], [ %2090, %2184 ], [ %2090, %2182 ], [ %2090, %2142 ], [ %2090, %2115 ], [ %1205, %1218 ]
  %2210 = phi float [ %2091, %2087 ], [ %1206, %1514 ], [ %1206, %1200 ], [ %2091, %2184 ], [ %2091, %2182 ], [ %2091, %2142 ], [ %2091, %2115 ], [ %1206, %1218 ]
  %2211 = phi float [ %2092, %2087 ], [ %1207, %1514 ], [ %1207, %1200 ], [ %2092, %2184 ], [ %2092, %2182 ], [ %2092, %2142 ], [ %2092, %2115 ], [ %1207, %1218 ]
  %2212 = phi float [ %2093, %2087 ], [ %1208, %1514 ], [ %1208, %1200 ], [ %2093, %2184 ], [ %2093, %2182 ], [ %2093, %2142 ], [ %2093, %2115 ], [ %1208, %1218 ]
  %2213 = phi float [ %1209, %2087 ], [ %1209, %1514 ], [ %1209, %1200 ], [ %2199, %2184 ], [ %1209, %2182 ], [ %2177, %2142 ], [ %2134, %2115 ], [ %1209, %1218 ]
  %2214 = phi float [ %1210, %2087 ], [ %1210, %1514 ], [ %1210, %1200 ], [ %2200, %2184 ], [ %1210, %2182 ], [ %2178, %2142 ], [ %2135, %2115 ], [ %1210, %1218 ]
  %2215 = phi float [ %1211, %2087 ], [ %1211, %1514 ], [ %1211, %1200 ], [ %2201, %2184 ], [ %1211, %2182 ], [ %2179, %2142 ], [ %2136, %2115 ], [ %1211, %1218 ]
  %2216 = phi float [ %2094, %2087 ], [ %1212, %1514 ], [ %1212, %1200 ], [ %2094, %2184 ], [ %2094, %2182 ], [ %2094, %2142 ], [ %2094, %2115 ], [ %1212, %1218 ]
  %2217 = phi float [ %1214, %2087 ], [ %1214, %1514 ], [ %1214, %1200 ], [ %2195, %2184 ], [ %1214, %2182 ], [ %2173, %2142 ], [ %2127, %2115 ], [ %1214, %1218 ]
  %2218 = phi float [ %1215, %2087 ], [ %1215, %1514 ], [ %1215, %1200 ], [ %2192, %2184 ], [ %1215, %2182 ], [ %2150, %2142 ], [ %2124, %2115 ], [ %1215, %1218 ]
  %2219 = phi float [ %1216, %2087 ], [ %1216, %1514 ], [ %1216, %1200 ], [ %2203, %2184 ], [ %1216, %2182 ], [ %2181, %2142 ], [ %2139, %2115 ], [ %1216, %1218 ]
  %2220 = phi float [ %2095, %2087 ], [ %1217, %1514 ], [ %1217, %1200 ], [ %2095, %2184 ], [ %2095, %2182 ], [ %2095, %2142 ], [ %2095, %2115 ], [ %1217, %1218 ]
  br i1 %402, label %3207, label %2221

; <label>:2221                                    ; preds = %2204
  %2222 = icmp ult i32 %458, 3
  %2223 = add i32 %48, 56
  %2224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.i32 %2224, 0
  %2226 = add i32 %48, 60
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2226, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = or i32 %2228, %2225
  %2230 = icmp eq i32 %2229, 0
  br i1 %2230, label %3207, label %2231

; <label>:2231                                    ; preds = %2221
  %2232 = and i32 %2225, 262144
  %2233 = icmp ne i32 %2232, 0
  %2234 = select i1 %2233, float %51, float 1.000000e+00
  %2235 = select i1 %2233, float %52, float 0.000000e+00
  %2236 = select i1 %2233, float %53, float 0.000000e+00
  %2237 = select i1 %2233, float %54, float 1.000000e+00
  %2238 = select i1 %2233, float %55, float %71
  %2239 = select i1 %2233, float %56, float %72
  %2240 = add i32 %48, 316
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = lshr i32 %2242, 16
  %2244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2243)  ; LegacyF16ToF32(value)
  %2245 = fmul fast float %2244, 0x3F50624DE0000000
  %2246 = add i32 %48, 120
  %2247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2246, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.i32 %2247, 0
  %2249 = lshr i32 %2248, 16
  %2250 = and i32 %2249, 255
  %2251 = lshr i32 %2248, 24
  %2252 = add i32 %48, 324
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = and i32 %2254, 65535
  %2256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2255)  ; LegacyF16ToF32(value)
  %2257 = lshr i32 %2254, 16
  %2258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2257)  ; LegacyF16ToF32(value)
  %2259 = add i32 %48, 64
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = lshr i32 %2261, 22
  %2263 = shl nuw nsw i32 %2262, 5
  %2264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2263)  ; LegacyF16ToF32(value)
  %2265 = shl i32 %2261, 4
  %2266 = and i32 %2265, 32752
  %2267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2266)  ; LegacyF16ToF32(value)
  %2268 = lshr i32 %2261, 7
  %2269 = and i32 %2268, 32752
  %2270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2269)  ; LegacyF16ToF32(value)
  %2271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.f32 %2271, 3
  %2273 = fmul fast float %2272, 1.000000e+03
  %2274 = fmul fast float %352, %2273
  %2275 = call float @dx.op.unary.f32(i32 22, float %2274)  ; Frc(value)
  %2276 = fadd fast float %2275, %342
  %2277 = fmul fast float %353, %2273
  %2278 = call float @dx.op.unary.f32(i32 22, float %2277)  ; Frc(value)
  %2279 = fadd fast float %2278, %344
  %2280 = fmul fast float %2245, %2273
  %2281 = call float @dx.op.unary.f32(i32 22, float %2280)  ; Frc(value)
  %2282 = fmul fast float %2281, 0x401921FB60000000
  %2283 = fadd fast float %2282, %2264
  %2284 = call float @dx.op.unary.f32(i32 13, float %2283)  ; Sin(value)
  %2285 = call float @dx.op.unary.f32(i32 12, float %2283)  ; Cos(value)
  %2286 = fsub fast float -0.000000e+00, %2284
  %2287 = fadd fast float %2238, -5.000000e-01
  %2288 = fadd fast float %2239, -5.000000e-01
  %2289 = fmul fast float %2256, %2287
  %2290 = fmul fast float %2258, %2288
  %2291 = fadd fast float %2289, 5.000000e-01
  %2292 = fadd fast float %2290, 5.000000e-01
  %2293 = fmul fast float %2267, %2291
  %2294 = fmul fast float %2270, %2292
  %2295 = fmul fast float %2285, %2293
  %2296 = call float @dx.op.tertiary.f32(i32 46, float %2286, float %2294, float %2295)  ; FMad(a,b,c)
  %2297 = fmul fast float %2284, %2293
  %2298 = call float @dx.op.tertiary.f32(i32 46, float %2285, float %2294, float %2297)  ; FMad(a,b,c)
  %2299 = fadd fast float %2276, %2296
  %2300 = fadd fast float %2279, %2298
  %2301 = icmp ugt i32 %2250, 1
  %2302 = icmp ugt i32 %2248, 33554431
  %2303 = or i1 %2302, %2301
  br i1 %2303, label %2304, label %2329

; <label>:2304                                    ; preds = %2231
  %2305 = add i32 %48, 260
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = lshr i32 %2307, 16
  %2309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2308)  ; LegacyF16ToF32(value)
  %2310 = fmul fast float %2272, %2309
  %2311 = call float @dx.op.unary.f32(i32 22, float %2310)  ; Frc(value)
  %2312 = mul nuw nsw i32 %2250, %2251
  %2313 = uitofp i32 %2312 to float
  %2314 = fmul fast float %2311, %2313
  %2315 = call float @dx.op.unary.f32(i32 27, float %2314)  ; Round_ni(value)
  %2316 = fptoui float %2315 to i32
  %2317 = urem i32 %2316, %2250
  %2318 = udiv i32 %2316, %2251
  %2319 = call float @dx.op.unary.f32(i32 22, float %2299)  ; Frc(value)
  %2320 = call float @dx.op.unary.f32(i32 22, float %2300)  ; Frc(value)
  %2321 = uitofp i32 %2317 to float
  %2322 = uitofp i32 %2318 to float
  %2323 = fadd fast float %2319, %2321
  %2324 = fadd fast float %2320, %2322
  %2325 = uitofp i32 %2250 to float
  %2326 = uitofp i32 %2251 to float
  %2327 = fdiv fast float %2323, %2325
  %2328 = fdiv fast float %2324, %2326
  br label %2329

; <label>:2329                                    ; preds = %2304, %2231
  %2330 = phi float [ %2327, %2304 ], [ %2299, %2231 ]
  %2331 = phi float [ %2328, %2304 ], [ %2300, %2231 ]
  %2332 = and i32 %2225, 16777216
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2443, label %2334

; <label>:2334                                    ; preds = %2329
  %2335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2336 = extractvalue %dx.types.CBufRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.CBufRet.f32 %2335, 1
  %2338 = extractvalue %dx.types.CBufRet.f32 %2335, 2
  %2339 = fadd fast float %2336, %155
  %2340 = fadd fast float %2337, %156
  %2341 = fadd fast float %2338, %157
  %2342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.f32 %2342, 0
  %2344 = call float @dx.op.unary.f32(i32 7, float %2343)  ; Saturate(value)
  %2345 = icmp eq i32 %49, 65535
  br i1 %2345, label %2440, label %2346

; <label>:2346                                    ; preds = %2334
  %2347 = lshr i32 %49, 1
  %2348 = shl i32 %2347, 2
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = and i32 %49, 1
  %2352 = icmp ne i32 %2351, 0
  %2353 = lshr i32 %2350, 16
  %2354 = and i32 %2350, 65535
  %2355 = select i1 %2352, i32 %2353, i32 %2354
  %2356 = icmp eq i32 %2355, 65535
  br i1 %2356, label %2436, label %2357

; <label>:2357                                    ; preds = %2346
  %2358 = mul nuw nsw i32 %2355, 40
  %2359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.f32 %2359, 0
  %2361 = extractvalue %dx.types.ResRet.f32 %2359, 1
  %2362 = extractvalue %dx.types.ResRet.f32 %2359, 2
  %2363 = add nuw nsw i32 %2358, 12
  %2364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.f32 %2364, 0
  %2366 = extractvalue %dx.types.ResRet.f32 %2364, 1
  %2367 = extractvalue %dx.types.ResRet.f32 %2364, 2
  %2368 = add nuw nsw i32 %2358, 24
  %2369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.ResRet.f32 %2369, 1
  %2372 = extractvalue %dx.types.ResRet.f32 %2369, 2
  %2373 = add nuw nsw i32 %2358, 36
  %2374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.f32 %2374, 0
  %2376 = fsub fast float %2339, %2360
  %2377 = fsub fast float %2340, %2361
  %2378 = fsub fast float %2341, %2362
  %2379 = fmul fast float %2375, %2376
  %2380 = fmul fast float %2375, %2377
  %2381 = fmul fast float %2375, %2378
  %2382 = call float @dx.op.unary.f32(i32 27, float %2379)  ; Round_ni(value)
  %2383 = call float @dx.op.unary.f32(i32 27, float %2380)  ; Round_ni(value)
  %2384 = call float @dx.op.unary.f32(i32 27, float %2381)  ; Round_ni(value)
  %2385 = fadd fast float %2382, 5.000000e-01
  %2386 = fadd fast float %2383, 5.000000e-01
  %2387 = fadd fast float %2384, 5.000000e-01
  %2388 = fmul fast float %2385, %2365
  %2389 = fmul fast float %2386, %2366
  %2390 = fmul fast float %2387, %2367
  %2391 = shl i32 %49, 2
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = add i32 %2393, 0
  %2395 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2394, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2396 = call float @dx.op.unary.f32(i32 22, float %2388)  ; Frc(value)
  %2397 = call float @dx.op.unary.f32(i32 22, float %2389)  ; Frc(value)
  %2398 = call float @dx.op.unary.f32(i32 22, float %2390)  ; Frc(value)
  %2399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2395, %dx.types.Handle %43, float %2396, float %2397, float %2398, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2400 = extractvalue %dx.types.ResRet.f32 %2399, 0
  %2401 = extractvalue %dx.types.ResRet.f32 %2399, 1
  %2402 = extractvalue %dx.types.ResRet.f32 %2399, 2
  %2403 = fmul fast float %2400, 1.023000e+03
  %2404 = fmul fast float %2401, 1.023000e+03
  %2405 = fmul fast float %2402, 1.023000e+03
  %2406 = fadd fast float %2403, 5.000000e-01
  %2407 = fadd fast float %2404, 5.000000e-01
  %2408 = fadd fast float %2405, 5.000000e-01
  %2409 = call float @dx.op.unary.f32(i32 27, float %2406)  ; Round_ni(value)
  %2410 = call float @dx.op.unary.f32(i32 27, float %2407)  ; Round_ni(value)
  %2411 = call float @dx.op.unary.f32(i32 27, float %2408)  ; Round_ni(value)
  %2412 = fsub fast float %2379, %2382
  %2413 = fsub fast float %2380, %2383
  %2414 = fsub fast float %2381, %2384
  %2415 = fmul fast float %2412, 7.500000e-01
  %2416 = fmul fast float %2413, 7.500000e-01
  %2417 = fmul fast float %2414, 7.500000e-01
  %2418 = fadd fast float %2382, 1.250000e-01
  %2419 = fadd fast float %2418, %2415
  %2420 = fadd fast float %2419, %2409
  %2421 = fadd fast float %2383, 1.250000e-01
  %2422 = fadd fast float %2421, %2416
  %2423 = fadd fast float %2422, %2410
  %2424 = fadd fast float %2384, 1.250000e-01
  %2425 = fadd fast float %2424, %2417
  %2426 = fadd fast float %2425, %2411
  %2427 = fmul fast float %2420, %2370
  %2428 = fmul fast float %2423, %2371
  %2429 = fmul fast float %2426, %2372
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = add i32 %2431, 0
  %2433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2433, %dx.types.Handle %41, float %2427, float %2428, float %2429, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  br label %2436

; <label>:2436                                    ; preds = %2357, %2346
  %2437 = phi float [ %2435, %2357 ], [ -1.000000e+00, %2346 ]
  %2438 = fadd fast float %2437, %2344
  %2439 = call float @dx.op.unary.f32(i32 7, float %2438)  ; Saturate(value)
  br label %2440

; <label>:2440                                    ; preds = %2436, %2334
  %2441 = phi float [ %2439, %2436 ], [ %2344, %2334 ]
  %2442 = fmul fast float %2441, %454
  br label %2443

; <label>:2443                                    ; preds = %2440, %2329
  %2444 = phi float [ %2442, %2440 ], [ %454, %2329 ]
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = and i32 %2446, 256
  %2448 = icmp eq i32 %2447, 0
  br i1 %2448, label %2495, label %2449

; <label>:2449                                    ; preds = %2443
  %2450 = add i32 %48, 432
  %2451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2450, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.i32 %2451, 0
  %2453 = add i32 %2452, 0
  %2454 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2453, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2455 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2454, %dx.types.Handle %89, float %2330, float %2331, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = add i32 %48, 132
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = shl i32 %2459, 4
  %2461 = and i32 %2460, 32752
  %2462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2461)  ; LegacyF16ToF32(value)
  %2463 = lshr i32 %2459, 7
  %2464 = and i32 %2463, 32752
  %2465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2464)  ; LegacyF16ToF32(value)
  %2466 = fsub fast float 1.000000e+00, %2444
  %2467 = call float @dx.op.binary.f32(i32 35, float %2466, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2468 = bitcast float %2444 to i32
  %2469 = sitofp i32 %2468 to float
  %2470 = fadd fast float %2469, 0xC1CFBF8940000000
  %2471 = fmul fast float %2465, %2470
  %2472 = fadd fast float %2471, 0x41CFBF8940000000
  %2473 = fptosi float %2472 to i32
  %2474 = bitcast i32 %2473 to float
  %2475 = bitcast float %2467 to i32
  %2476 = sitofp i32 %2475 to float
  %2477 = fadd fast float %2476, 0xC1CFBF8940000000
  %2478 = fmul fast float %2477, %2465
  %2479 = fadd fast float %2478, 0x41CFBF8940000000
  %2480 = fptosi float %2479 to i32
  %2481 = bitcast i32 %2480 to float
  %2482 = fmul fast float %2474, %2462
  %2483 = fmul fast float %2481, %2462
  %2484 = fsub fast float %2467, %2482
  %2485 = fadd fast float %2483, %2467
  %2486 = call float @dx.op.unary.f32(i32 7, float %2484)  ; Saturate(value)
  %2487 = call float @dx.op.unary.f32(i32 7, float %2485)  ; Saturate(value)
  %2488 = fsub fast float %2456, %2486
  %2489 = fsub fast float %2487, %2486
  %2490 = bitcast float %2489 to i32
  %2491 = sub nsw i32 2129859010, %2490
  %2492 = bitcast i32 %2491 to float
  %2493 = fmul fast float %2492, %2488
  %2494 = call float @dx.op.unary.f32(i32 7, float %2493)  ; Saturate(value)
  br label %2495

; <label>:2495                                    ; preds = %2449, %2443
  %2496 = phi float [ %2494, %2449 ], [ %2444, %2443 ]
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = and i32 %2498, 128
  %2500 = icmp eq i32 %2499, 0
  br i1 %2500, label %2517, label %2501

; <label>:2501                                    ; preds = %2495
  %2502 = add i32 %48, 416
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = add i32 %2504, 0
  %2506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2505, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2506, %dx.types.Handle %89, float %2330, float %2331, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2508 = extractvalue %dx.types.ResRet.f32 %2507, 0
  %2509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.i32 %2509, 0
  %2511 = and i32 %2510, 524288
  %2512 = icmp ne i32 %2511, 0
  %2513 = fcmp fast ogt float %2508, 0x3FE0101020000000
  %2514 = select i1 %2513, float 1.000000e+00, float 0.000000e+00
  %2515 = select i1 %2512, float %2514, float %2508
  %2516 = fmul fast float %2515, %2496
  br label %2517

; <label>:2517                                    ; preds = %2501, %2495
  %2518 = phi float [ %2516, %2501 ], [ %2496, %2495 ]
  %2519 = fcmp fast ult float %2518, 0x3F70101020000000
  br i1 %2519, label %3207, label %2520

; <label>:2520                                    ; preds = %2517
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = and i32 %2522, 16
  %2524 = icmp eq i32 %2523, 0
  br i1 %2524, label %2723, label %2525

; <label>:2525                                    ; preds = %2520
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2246, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.i32 %2526, 0
  %2528 = add i32 %48, 368
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = add i32 %2530, 0
  %2532 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2531, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2533 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2532, %dx.types.Handle %88, float %2330, float %2331, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2534 = extractvalue %dx.types.ResRet.f32 %2533, 0
  %2535 = extractvalue %dx.types.ResRet.f32 %2533, 1
  %2536 = extractvalue %dx.types.ResRet.f32 %2533, 2
  %2537 = extractvalue %dx.types.ResRet.f32 %2533, 3
  %2538 = and i32 %2527, 255
  %2539 = uitofp i32 %2538 to float
  %2540 = lshr i32 %2527, 8
  %2541 = and i32 %2540, 255
  %2542 = uitofp i32 %2541 to float
  %2543 = fmul fast float %2537, %2539
  %2544 = fadd fast float %2543, %2542
  %2545 = fmul fast float %2544, 0x3F70101000000000
  %2546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.i32 %2546, 0
  %2548 = and i32 %2547, 512
  %2549 = icmp eq i32 %2548, 0
  br i1 %2549, label %2558, label %2550

; <label>:2550                                    ; preds = %2525
  %2551 = add i32 %48, 448
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = add i32 %2553, 0
  %2555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2555, %dx.types.Handle %89, float %2330, float %2331, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2557 = extractvalue %dx.types.ResRet.f32 %2556, 0
  br label %2558

; <label>:2558                                    ; preds = %2550, %2525
  %2559 = phi float [ %2557, %2550 ], [ 1.000000e+00, %2525 ]
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = and i32 %2561, 33554432
  %2563 = icmp eq i32 %2562, 0
  br i1 %2563, label %2670, label %2564

; <label>:2564                                    ; preds = %2558
  %2565 = add i32 %48, 256
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, 65535
  %2569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2568)  ; LegacyF16ToF32(value)
  %2570 = lshr i32 %2567, 16
  %2571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2570)  ; LegacyF16ToF32(value)
  %2572 = add i32 %48, 260
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2572, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 65535
  %2576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2575)  ; LegacyF16ToF32(value)
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = lshr i32 %2578, 24
  %2580 = uitofp i32 %2579 to float
  %2581 = fmul fast float %2580, 0x3F70101020000000
  %2582 = and i32 %2578, 255
  %2583 = uitofp i32 %2582 to float
  %2584 = fmul fast float %2583, 0x3F70101020000000
  %2585 = lshr i32 %2578, 8
  %2586 = and i32 %2585, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = fmul fast float %2587, 0x3F70101020000000
  %2589 = lshr i32 %2578, 16
  %2590 = and i32 %2589, 255
  %2591 = uitofp i32 %2590 to float
  %2592 = fmul fast float %2591, 0x3F70101020000000
  %2593 = add i32 %48, 252
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2593, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = lshr i32 %2595, 24
  %2597 = uitofp i32 %2596 to float
  %2598 = fmul fast float %2597, 0x3F70101020000000
  %2599 = and i32 %2595, 255
  %2600 = uitofp i32 %2599 to float
  %2601 = fmul fast float %2600, 0x3F70101020000000
  %2602 = lshr i32 %2595, 8
  %2603 = and i32 %2602, 255
  %2604 = uitofp i32 %2603 to float
  %2605 = fmul fast float %2604, 0x3F70101020000000
  %2606 = lshr i32 %2595, 16
  %2607 = and i32 %2606, 255
  %2608 = uitofp i32 %2607 to float
  %2609 = fmul fast float %2608, 0x3F70101020000000
  %2610 = bitcast float %2534 to i32
  %2611 = ashr i32 %2610, 1
  %2612 = sub nsw i32 1597463174, %2611
  %2613 = bitcast i32 %2612 to float
  %2614 = fmul fast float %2534, 5.000000e-01
  %2615 = fmul fast float %2613, %2613
  %2616 = fmul fast float %2615, %2614
  %2617 = fsub fast float 1.500000e+00, %2616
  %2618 = fmul fast float %2613, %2534
  %2619 = fmul fast float %2618, %2617
  %2620 = bitcast float %2535 to i32
  %2621 = ashr i32 %2620, 1
  %2622 = sub nsw i32 1597463174, %2621
  %2623 = bitcast i32 %2622 to float
  %2624 = fmul fast float %2535, 5.000000e-01
  %2625 = fmul fast float %2623, %2623
  %2626 = fmul fast float %2625, %2624
  %2627 = fsub fast float 1.500000e+00, %2626
  %2628 = fmul fast float %2623, %2535
  %2629 = fmul fast float %2628, %2627
  %2630 = bitcast float %2536 to i32
  %2631 = ashr i32 %2630, 1
  %2632 = sub nsw i32 1597463174, %2631
  %2633 = bitcast i32 %2632 to float
  %2634 = fmul fast float %2536, 5.000000e-01
  %2635 = fmul fast float %2633, %2633
  %2636 = fmul fast float %2635, %2634
  %2637 = fsub fast float 1.500000e+00, %2636
  %2638 = fmul fast float %2633, %2536
  %2639 = fmul fast float %2638, %2637
  %2640 = fsub fast float %2619, %2601
  %2641 = fsub fast float %2629, %2605
  %2642 = fsub fast float %2639, %2609
  %2643 = fmul fast float %2640, %2569
  %2644 = fmul fast float %2641, %2571
  %2645 = fmul fast float %2642, %2576
  %2646 = fadd fast float %2643, %2584
  %2647 = fadd fast float %2644, %2588
  %2648 = fadd fast float %2645, %2592
  %2649 = call float @dx.op.unary.f32(i32 7, float %2646)  ; Saturate(value)
  %2650 = call float @dx.op.unary.f32(i32 7, float %2647)  ; Saturate(value)
  %2651 = call float @dx.op.unary.f32(i32 7, float %2648)  ; Saturate(value)
  %2652 = fmul fast float %2649, %2649
  %2653 = fmul fast float %2650, %2650
  %2654 = fmul fast float %2651, %2651
  %2655 = fsub fast float %2652, %2534
  %2656 = fsub fast float %2653, %2535
  %2657 = fsub fast float %2654, %2536
  %2658 = fmul fast float %2655, %2559
  %2659 = fmul fast float %2656, %2559
  %2660 = fmul fast float %2657, %2559
  %2661 = fadd fast float %2658, %2534
  %2662 = fadd fast float %2659, %2535
  %2663 = fadd fast float %2660, %2536
  %2664 = fadd fast float %2581, %2545
  %2665 = fsub fast float %2664, %2598
  %2666 = call float @dx.op.unary.f32(i32 7, float %2665)  ; Saturate(value)
  %2667 = fsub fast float %2666, %2545
  %2668 = fmul fast float %2667, %2559
  %2669 = fadd fast float %2668, %2545
  br label %2723

; <label>:2670                                    ; preds = %2558
  %2671 = and i32 %2561, 134217728
  %2672 = icmp eq i32 %2671, 0
  br i1 %2672, label %2707, label %2673

; <label>:2673                                    ; preds = %2670
  %2674 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %2675 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %2676 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %2677 = fadd fast float %2674, -5.000000e-01
  %2678 = fadd fast float %2675, -5.000000e-01
  %2679 = fadd fast float %2676, -5.000000e-01
  %2680 = fmul fast float %2677, %2559
  %2681 = fmul fast float %2678, %2559
  %2682 = fmul fast float %2679, %2559
  %2683 = fadd fast float %2680, 5.000000e-01
  %2684 = fadd fast float %2681, 5.000000e-01
  %2685 = fadd fast float %2682, 5.000000e-01
  %2686 = call float @dx.op.unary.f32(i32 24, float %2534)  ; Sqrt(value)
  %2687 = call float @dx.op.unary.f32(i32 24, float %2535)  ; Sqrt(value)
  %2688 = call float @dx.op.unary.f32(i32 24, float %2536)  ; Sqrt(value)
  %2689 = fmul fast float %2683, 2.000000e+00
  %2690 = fsub fast float 1.000000e+00, %2689
  %2691 = fmul fast float %2690, %2686
  %2692 = fadd fast float %2691, %2689
  %2693 = fmul fast float %2692, %2686
  %2694 = fmul fast float %2684, 2.000000e+00
  %2695 = fsub fast float 1.000000e+00, %2694
  %2696 = fmul fast float %2695, %2687
  %2697 = fadd fast float %2696, %2694
  %2698 = fmul fast float %2697, %2687
  %2699 = fmul fast float %2685, 2.000000e+00
  %2700 = fsub fast float 1.000000e+00, %2699
  %2701 = fmul fast float %2700, %2688
  %2702 = fadd fast float %2701, %2699
  %2703 = fmul fast float %2702, %2688
  %2704 = fmul fast float %2693, %2693
  %2705 = fmul fast float %2698, %2698
  %2706 = fmul fast float %2703, %2703
  br label %2723

; <label>:2707                                    ; preds = %2670
  %2708 = fmul fast float %329, %329
  %2709 = fmul fast float %333, %333
  %2710 = fmul fast float %337, %337
  %2711 = fadd fast float %2708, -1.000000e+00
  %2712 = fadd fast float %2709, -1.000000e+00
  %2713 = fadd fast float %2710, -1.000000e+00
  %2714 = fmul fast float %2559, %2711
  %2715 = fmul fast float %2559, %2712
  %2716 = fmul fast float %2559, %2713
  %2717 = fadd fast float %2714, 1.000000e+00
  %2718 = fadd fast float %2715, 1.000000e+00
  %2719 = fadd fast float %2716, 1.000000e+00
  %2720 = fmul fast float %2717, %2534
  %2721 = fmul fast float %2718, %2535
  %2722 = fmul fast float %2719, %2536
  br label %2723

; <label>:2723                                    ; preds = %2707, %2673, %2564, %2520
  %2724 = phi float [ %2669, %2564 ], [ %2545, %2673 ], [ %2545, %2707 ], [ 0x3FA23C0BE0000000, %2520 ]
  %2725 = phi float [ %2661, %2564 ], [ %2704, %2673 ], [ %2720, %2707 ], [ 1.000000e+00, %2520 ]
  %2726 = phi float [ %2662, %2564 ], [ %2705, %2673 ], [ %2721, %2707 ], [ 1.000000e+00, %2520 ]
  %2727 = phi float [ %2663, %2564 ], [ %2706, %2673 ], [ %2722, %2707 ], [ 1.000000e+00, %2520 ]
  %2728 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2729 = extractvalue %dx.types.CBufRet.i32 %2728, 1
  %2730 = and i32 %2729, 1
  %2731 = icmp ne i32 %2730, 0
  %2732 = add i32 %48, 356
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = and i32 %2734, 32
  %2736 = icmp ne i32 %2735, 0
  %2737 = and i1 %2731, %2736
  %2738 = select i1 %2737, float 1.000000e+00, float %2725
  %2739 = select i1 %2737, float 0x3FD3333340000000, float %2726
  %2740 = select i1 %2737, float 0x3FD3333340000000, float %2727
  %2741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.i32 %2741, 0
  %2743 = and i32 %2742, 32
  %2744 = icmp eq i32 %2743, 0
  br i1 %2744, label %2817, label %2745

; <label>:2745                                    ; preds = %2723
  %2746 = add i32 %48, 124
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = add i32 %48, 384
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = add i32 %2751, 0
  %2753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2752, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2754 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2753, %dx.types.Handle %88, float %2330, float %2331, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2755 = extractvalue %dx.types.ResRet.f32 %2754, 0
  %2756 = extractvalue %dx.types.ResRet.f32 %2754, 1
  %2757 = extractvalue %dx.types.ResRet.f32 %2754, 2
  %2758 = extractvalue %dx.types.ResRet.f32 %2754, 3
  %2759 = and i32 %2748, 255
  %2760 = uitofp i32 %2759 to float
  %2761 = lshr i32 %2748, 8
  %2762 = and i32 %2761, 255
  %2763 = uitofp i32 %2762 to float
  %2764 = lshr i32 %2748, 16
  %2765 = and i32 %2764, 255
  %2766 = uitofp i32 %2765 to float
  %2767 = fmul fast float %2766, 0x3F70101000000000
  %2768 = fmul fast float %2755, %2760
  %2769 = fadd fast float %2768, %2763
  %2770 = fmul fast float %2769, 0x3F70101000000000
  %2771 = fadd fast float %2756, -5.000000e-01
  %2772 = fadd fast float %2758, -5.000000e-01
  %2773 = fmul fast float %2771, %2767
  %2774 = fmul fast float %2772, %2767
  %2775 = fadd fast float %2773, 5.000000e-01
  %2776 = fadd fast float %2774, 5.000000e-01
  %2777 = fmul fast float %2775, 2.000000e+00
  %2778 = fadd fast float %2777, -1.000000e+00
  %2779 = fmul fast float %2776, 2.000000e+00
  %2780 = fadd fast float %2779, -1.000000e+00
  %2781 = fadd fast float %2778, %2780
  %2782 = fmul fast float %2781, 5.000000e-01
  %2783 = fsub fast float %2778, %2780
  %2784 = fmul fast float %2783, 5.000000e-01
  %2785 = call float @dx.op.unary.f32(i32 6, float %2782)  ; FAbs(value)
  %2786 = fsub fast float 1.000000e+00, %2785
  %2787 = call float @dx.op.unary.f32(i32 6, float %2784)  ; FAbs(value)
  %2788 = fsub fast float %2786, %2787
  %2789 = call float @dx.op.dot3.f32(i32 55, float %2782, float %2784, float %2788, float %2782, float %2784, float %2788)  ; Dot3(ax,ay,az,bx,by,bz)
  %2790 = call float @dx.op.unary.f32(i32 25, float %2789)  ; Rsqrt(value)
  %2791 = fmul fast float %2782, %2790
  %2792 = fmul fast float %2784, %2790
  %2793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2794 = extractvalue %dx.types.ResRet.i32 %2793, 0
  %2795 = and i32 %2794, 67108864
  %2796 = icmp eq i32 %2795, 0
  br i1 %2796, label %2813, label %2797

; <label>:2797                                    ; preds = %2745
  %2798 = add i32 %48, 312
  %2799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2800 = extractvalue %dx.types.ResRet.i32 %2799, 0
  %2801 = and i32 %2800, 65535
  %2802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2801)  ; LegacyF16ToF32(value)
  %2803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2804 = extractvalue %dx.types.ResRet.i32 %2803, 0
  %2805 = and i32 %2804, 65535
  %2806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2805)  ; LegacyF16ToF32(value)
  %2807 = lshr i32 %2800, 16
  %2808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2807)  ; LegacyF16ToF32(value)
  %2809 = fsub fast float %2770, %2808
  %2810 = fmul fast float %2809, %2802
  %2811 = fadd fast float %2810, %2806
  %2812 = call float @dx.op.unary.f32(i32 7, float %2811)  ; Saturate(value)
  br label %2813

; <label>:2813                                    ; preds = %2797, %2745
  %2814 = phi float [ %2812, %2797 ], [ %2770, %2745 ]
  %2815 = call float @dx.op.dot2.f32(i32 54, float %2791, float %2792, float %2234, float %2235)  ; Dot2(ax,ay,bx,by)
  %2816 = call float @dx.op.dot2.f32(i32 54, float %2791, float %2792, float %2236, float %2237)  ; Dot2(ax,ay,bx,by)
  br label %2817

; <label>:2817                                    ; preds = %2813, %2723
  %2818 = phi float [ %2814, %2813 ], [ 0x3FD6666660000000, %2723 ]
  %2819 = phi float [ %2815, %2813 ], [ 0.000000e+00, %2723 ]
  %2820 = phi float [ %2816, %2813 ], [ 0.000000e+00, %2723 ]
  %2821 = phi float [ %2757, %2813 ], [ 1.000000e+00, %2723 ]
  %2822 = add i32 %48, 192
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = lshr i32 %2824, 22
  %2826 = shl nuw nsw i32 %2825, 5
  %2827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2826)  ; LegacyF16ToF32(value)
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = and i32 %2829, 64
  %2831 = icmp eq i32 %2830, 0
  br i1 %2831, label %2865, label %2832

; <label>:2832                                    ; preds = %2817
  %2833 = add i32 %48, 400
  %2834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %2835 = extractvalue %dx.types.ResRet.i32 %2834, 0
  %2836 = add i32 %2835, 0
  %2837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2836, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = and i32 %2839, 131072
  %2841 = icmp eq i32 %2840, 0
  %2842 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2837, %dx.types.Handle %88, float %2330, float %2331, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2843 = extractvalue %dx.types.ResRet.f32 %2842, 0
  %2844 = extractvalue %dx.types.ResRet.f32 %2842, 1
  %2845 = extractvalue %dx.types.ResRet.f32 %2842, 2
  %2846 = fmul fast float %2843, %317
  %2847 = fmul fast float %2844, %320
  %2848 = fmul fast float %2845, %323
  br i1 %2841, label %2855, label %2849

; <label>:2849                                    ; preds = %2832
  %2850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2851 = extractvalue %dx.types.CBufRet.f32 %2850, 0
  %2852 = fmul fast float %2851, %2846
  %2853 = fmul fast float %2851, %2847
  %2854 = fmul fast float %2851, %2848
  br label %2855

; <label>:2855                                    ; preds = %2849, %2832
  %2856 = phi float [ %2852, %2849 ], [ %2846, %2832 ]
  %2857 = phi float [ %2853, %2849 ], [ %2847, %2832 ]
  %2858 = phi float [ %2854, %2849 ], [ %2848, %2832 ]
  %2859 = fmul fast float %2856, %2827
  %2860 = select i1 %216, float %2859, float %2856
  %2861 = call float @dx.op.dot3.f32(i32 55, float %2860, float %2857, float %2858, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2862 = select i1 %216, float 0.000000e+00, float %2856
  %2863 = select i1 %216, float %2861, float %2857
  %2864 = select i1 %216, float 0.000000e+00, float %2858
  br label %2865

; <label>:2865                                    ; preds = %2855, %2817
  %2866 = phi float [ %2862, %2855 ], [ 0.000000e+00, %2817 ]
  %2867 = phi float [ %2863, %2855 ], [ 0.000000e+00, %2817 ]
  %2868 = phi float [ %2864, %2855 ], [ 0.000000e+00, %2817 ]
  %2869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.i32 %2869, 0
  %2871 = and i32 %2870, 1024
  %2872 = icmp eq i32 %2871, 0
  br i1 %2872, label %2903, label %2873

; <label>:2873                                    ; preds = %2865
  %2874 = add i32 %48, 184
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = and i32 %2876, 255
  %2878 = uitofp i32 %2877 to float
  %2879 = fmul fast float %2878, 0x3F70101020000000
  %2880 = lshr i32 %2876, 8
  %2881 = and i32 %2880, 255
  %2882 = uitofp i32 %2881 to float
  %2883 = fmul fast float %2882, 0x3F70101020000000
  %2884 = lshr i32 %2876, 16
  %2885 = and i32 %2884, 255
  %2886 = uitofp i32 %2885 to float
  %2887 = fmul fast float %2886, 0x3F70101020000000
  %2888 = fmul fast float %2879, %2879
  %2889 = fmul fast float %2883, %2883
  %2890 = fmul fast float %2887, %2887
  %2891 = add i32 %48, 464
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = add i32 %2893, 0
  %2895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2895, %dx.types.Handle %89, float %2330, float %2331, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2897 = extractvalue %dx.types.ResRet.f32 %2896, 0
  %2898 = extractvalue %dx.types.ResRet.f32 %2896, 1
  %2899 = extractvalue %dx.types.ResRet.f32 %2896, 2
  %2900 = fmul fast float %2888, %2897
  %2901 = fmul fast float %2889, %2898
  %2902 = fmul fast float %2890, %2899
  br label %2903

; <label>:2903                                    ; preds = %2873, %2865
  %2904 = phi float [ %2900, %2873 ], [ 0.000000e+00, %2865 ]
  %2905 = phi float [ %2901, %2873 ], [ 0.000000e+00, %2865 ]
  %2906 = phi float [ %2902, %2873 ], [ 0.000000e+00, %2865 ]
  %2907 = fcmp fast ogt float %2904, 0.000000e+00
  %2908 = fcmp fast ogt float %2905, 0.000000e+00
  %2909 = fcmp fast ogt float %2906, 0.000000e+00
  %2910 = call float @dx.op.unary.f32(i32 23, float %2904)  ; Log(value)
  %2911 = call float @dx.op.unary.f32(i32 23, float %2905)  ; Log(value)
  %2912 = call float @dx.op.unary.f32(i32 23, float %2906)  ; Log(value)
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = lshr i32 %2914, 7
  %2916 = and i32 %2915, 32752
  %2917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2916)  ; LegacyF16ToF32(value)
  %2918 = fmul fast float %2910, 0xBFE62E4300000000
  %2919 = fmul fast float %2918, %2917
  %2920 = fmul fast float %2911, 0xBFE62E4300000000
  %2921 = fmul fast float %2920, %2917
  %2922 = fmul fast float %2912, 0xBFE62E4300000000
  %2923 = fmul fast float %2922, %2917
  %2924 = select i1 %2907, float %2919, float 1.270000e+02
  %2925 = select i1 %2908, float %2921, float 1.270000e+02
  %2926 = select i1 %2909, float %2923, float 1.270000e+02
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = and i32 %2928, 10240
  %2930 = icmp eq i32 %2929, 0
  br i1 %2930, label %2951, label %2931

; <label>:2931                                    ; preds = %2903
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = and i32 %2933, 2048
  %2935 = icmp eq i32 %2934, 0
  br i1 %2935, label %2951, label %2936

; <label>:2936                                    ; preds = %2931
  %2937 = add i32 %48, 480
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = add i32 %2939, 0
  %2941 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2940, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2942 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2941, %dx.types.Handle %89, float %2330, float %2331, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2943 = extractvalue %dx.types.ResRet.f32 %2942, 3
  %2944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2945 = extractvalue %dx.types.ResRet.i32 %2944, 0
  %2946 = shl i32 %2945, 4
  %2947 = and i32 %2946, 32752
  %2948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2947)  ; LegacyF16ToF32(value)
  %2949 = fmul fast float %2948, %2943
  %2950 = call float @dx.op.binary.f32(i32 35, float %2949, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2951

; <label>:2951                                    ; preds = %2936, %2931, %2903
  %2952 = phi float [ %2950, %2936 ], [ 0x3F70101020000000, %2931 ], [ 0x3F70101020000000, %2903 ]
  %2953 = add i32 %48, 128
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = and i32 %2955, 255
  %2957 = uitofp i32 %2956 to float
  %2958 = lshr i32 %2955, 8
  %2959 = and i32 %2958, 255
  %2960 = uitofp i32 %2959 to float
  %2961 = call float @dx.op.dot3.f32(i32 55, float %2738, float %2739, float %2740, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2962 = fmul fast float %2960, %2961
  %2963 = fadd fast float %2962, %2957
  %2964 = fmul fast float %2963, 0x3F70101020000000
  %2965 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  br i1 %2222, label %2966, label %3001

; <label>:2966                                    ; preds = %2951
  %2967 = fmul fast float %2952, 2.000000e+00
  %2968 = fcmp fast olt float %2924, 1.270000e+02
  %2969 = fcmp fast olt float %2925, 1.270000e+02
  %2970 = fcmp fast olt float %2926, 1.270000e+02
  %2971 = fmul fast float %2924, 0xBFF7154760000000
  %2972 = fmul fast float %2971, %2967
  %2973 = fmul fast float %2925, 0xBFF7154760000000
  %2974 = fmul fast float %2973, %2967
  %2975 = fmul fast float %2926, 0xBFF7154760000000
  %2976 = fmul fast float %2975, %2967
  %2977 = call float @dx.op.unary.f32(i32 21, float %2972)  ; Exp(value)
  %2978 = call float @dx.op.unary.f32(i32 21, float %2974)  ; Exp(value)
  %2979 = call float @dx.op.unary.f32(i32 21, float %2976)  ; Exp(value)
  %2980 = call float @dx.op.unary.f32(i32 7, float %2977)  ; Saturate(value)
  %2981 = call float @dx.op.unary.f32(i32 7, float %2978)  ; Saturate(value)
  %2982 = call float @dx.op.unary.f32(i32 7, float %2979)  ; Saturate(value)
  %2983 = fadd fast float %2980, -1.000000e+00
  %2984 = select i1 %2968, float %2983, float -1.000000e+00
  %2985 = fadd fast float %2981, -1.000000e+00
  %2986 = select i1 %2969, float %2985, float -1.000000e+00
  %2987 = fadd fast float %2982, -1.000000e+00
  %2988 = select i1 %2970, float %2987, float -1.000000e+00
  %2989 = fmul fast float %2984, %2518
  %2990 = fmul fast float %2986, %2518
  %2991 = fmul fast float %2988, %2518
  %2992 = fadd fast float %2989, 1.000000e+00
  %2993 = fadd fast float %2990, 1.000000e+00
  %2994 = fadd fast float %2991, 1.000000e+00
  %2995 = fmul fast float %2992, %2207
  %2996 = fmul fast float %2993, %2208
  %2997 = fmul fast float %2994, %2209
  %2998 = fmul fast float %2992, %2210
  %2999 = fmul fast float %2993, %2211
  %3000 = fmul fast float %2994, %2212
  br label %3001

; <label>:3001                                    ; preds = %2966, %2951
  %3002 = phi float [ %2995, %2966 ], [ %2207, %2951 ]
  %3003 = phi float [ %2996, %2966 ], [ %2208, %2951 ]
  %3004 = phi float [ %2997, %2966 ], [ %2209, %2951 ]
  %3005 = phi float [ %2998, %2966 ], [ %2210, %2951 ]
  %3006 = phi float [ %2999, %2966 ], [ %2211, %2951 ]
  %3007 = phi float [ %3000, %2966 ], [ %2212, %2951 ]
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = and i32 %3009, 3
  %3011 = icmp eq i32 %3010, 3
  br i1 %3011, label %3090, label %3012

; <label>:3012                                    ; preds = %3001
  %3013 = and i32 %3009, 16
  %3014 = icmp ne i32 %3013, 0
  %3015 = select i1 %3014, float %2518, float 0.000000e+00
  %3016 = icmp eq i32 %3010, 0
  br i1 %3016, label %3017, label %3045

; <label>:3017                                    ; preds = %3012
  %3018 = and i32 %3009, 64
  %3019 = icmp ne i32 %3018, 0
  %3020 = select i1 %3019, float %2518, float 0.000000e+00
  %3021 = fsub fast float %2738, %3002
  %3022 = fsub fast float %2739, %3003
  %3023 = fsub fast float %2740, %3004
  %3024 = fmul fast float %3015, %3021
  %3025 = fmul fast float %3015, %3022
  %3026 = fmul fast float %3015, %3023
  %3027 = fadd fast float %3024, %3002
  %3028 = fadd fast float %3025, %3003
  %3029 = fadd fast float %3026, %3004
  %3030 = fsub fast float %2724, %2216
  %3031 = fmul fast float %3015, %3030
  %3032 = fadd fast float %3031, %2216
  %3033 = fsub fast float %2866, %3005
  %3034 = fsub fast float %2867, %3006
  %3035 = fsub fast float %2868, %3007
  %3036 = fmul fast float %3020, %3033
  %3037 = fmul fast float %3020, %3034
  %3038 = fmul fast float %3020, %3035
  %3039 = fadd fast float %3036, %3005
  %3040 = fadd fast float %3037, %3006
  %3041 = fadd fast float %3038, %3007
  %3042 = fsub fast float %2965, %2220
  %3043 = fmul fast float %3015, %3042
  %3044 = fadd fast float %3043, %2220
  br label %3090

; <label>:3045                                    ; preds = %3012
  %3046 = icmp eq i32 %3010, 1
  br i1 %3046, label %3047, label %3060

; <label>:3047                                    ; preds = %3045
  %3048 = fadd fast float %2738, -1.000000e+00
  %3049 = fadd fast float %2739, -1.000000e+00
  %3050 = fadd fast float %2740, -1.000000e+00
  %3051 = fmul fast float %3015, %3048
  %3052 = fmul fast float %3015, %3049
  %3053 = fmul fast float %3015, %3050
  %3054 = fadd fast float %3051, 1.000000e+00
  %3055 = fadd fast float %3052, 1.000000e+00
  %3056 = fadd fast float %3053, 1.000000e+00
  %3057 = fmul fast float %3054, %3002
  %3058 = fmul fast float %3055, %3003
  %3059 = fmul fast float %3056, %3004
  br label %3090

; <label>:3060                                    ; preds = %3045
  %3061 = icmp eq i32 %3010, 2
  br i1 %3061, label %3062, label %3090

; <label>:3062                                    ; preds = %3060
  %3063 = call float @dx.op.unary.f32(i32 24, float %2738)  ; Sqrt(value)
  %3064 = call float @dx.op.unary.f32(i32 24, float %2739)  ; Sqrt(value)
  %3065 = call float @dx.op.unary.f32(i32 24, float %2740)  ; Sqrt(value)
  %3066 = fadd fast float %3063, -5.000000e-01
  %3067 = fadd fast float %3064, -5.000000e-01
  %3068 = fadd fast float %3065, -5.000000e-01
  %3069 = fmul fast float %3066, %3015
  %3070 = fmul fast float %3067, %3015
  %3071 = fmul fast float %3068, %3015
  %3072 = fadd fast float %3069, 5.000000e-01
  %3073 = fadd fast float %3070, 5.000000e-01
  %3074 = fadd fast float %3071, 5.000000e-01
  %3075 = fmul fast float %3072, 2.000000e+00
  %3076 = fsub fast float 1.000000e+00, %3075
  %3077 = fmul fast float %3076, %3002
  %3078 = fadd fast float %3077, %3075
  %3079 = fmul fast float %3078, %3002
  %3080 = fmul fast float %3073, 2.000000e+00
  %3081 = fsub fast float 1.000000e+00, %3080
  %3082 = fmul fast float %3081, %3003
  %3083 = fadd fast float %3082, %3080
  %3084 = fmul fast float %3083, %3003
  %3085 = fmul fast float %3074, 2.000000e+00
  %3086 = fsub fast float 1.000000e+00, %3085
  %3087 = fmul fast float %3086, %3004
  %3088 = fadd fast float %3087, %3085
  %3089 = fmul fast float %3088, %3004
  br label %3090

; <label>:3090                                    ; preds = %3062, %3060, %3047, %3017, %3001
  %3091 = phi float [ %3002, %3001 ], [ %3079, %3062 ], [ %3002, %3060 ], [ %3057, %3047 ], [ %3027, %3017 ]
  %3092 = phi float [ %3003, %3001 ], [ %3084, %3062 ], [ %3003, %3060 ], [ %3058, %3047 ], [ %3028, %3017 ]
  %3093 = phi float [ %3004, %3001 ], [ %3089, %3062 ], [ %3004, %3060 ], [ %3059, %3047 ], [ %3029, %3017 ]
  %3094 = phi float [ %3005, %3001 ], [ %3005, %3062 ], [ %3005, %3060 ], [ %3005, %3047 ], [ %3039, %3017 ]
  %3095 = phi float [ %3006, %3001 ], [ %3006, %3062 ], [ %3006, %3060 ], [ %3006, %3047 ], [ %3040, %3017 ]
  %3096 = phi float [ %3007, %3001 ], [ %3007, %3062 ], [ %3007, %3060 ], [ %3007, %3047 ], [ %3041, %3017 ]
  %3097 = phi float [ %2216, %3001 ], [ %2216, %3062 ], [ %2216, %3060 ], [ %2216, %3047 ], [ %3032, %3017 ]
  %3098 = phi float [ %2220, %3001 ], [ %2220, %3062 ], [ %2220, %3060 ], [ %2220, %3047 ], [ %3044, %3017 ]
  %3099 = and i32 %3009, 12
  %3100 = icmp eq i32 %3099, 12
  br i1 %3100, label %3207, label %3101

; <label>:3101                                    ; preds = %3090
  %3102 = and i32 %3009, 2097184
  %3103 = icmp eq i32 %3102, 2097184
  %3104 = select i1 %3103, float %2518, float 0.000000e+00
  %3105 = and i32 %3009, 4194336
  %3106 = icmp eq i32 %3105, 4194336
  %3107 = select i1 %3106, float %2518, float 0.000000e+00
  %3108 = and i32 %3009, 8388640
  %3109 = icmp eq i32 %3108, 8388640
  %3110 = select i1 %3109, float %2518, float 0.000000e+00
  %3111 = and i32 %3009, 1024
  %3112 = icmp ne i32 %3111, 0
  %3113 = select i1 %3112, float %2518, float 0.000000e+00
  %3114 = and i32 %3009, 2048
  %3115 = icmp ne i32 %3114, 0
  %3116 = select i1 %3115, float %2518, float 0.000000e+00
  %3117 = icmp eq i32 %3099, 0
  br i1 %3117, label %3118, label %3143

; <label>:3118                                    ; preds = %3101
  %3119 = fsub fast float %2819, %2205
  %3120 = fsub fast float %2820, %2206
  %3121 = fmul fast float %3104, %3119
  %3122 = fmul fast float %3104, %3120
  %3123 = fadd fast float %3121, %2205
  %3124 = fadd fast float %3122, %2206
  %3125 = fsub fast float %2821, %2218
  %3126 = fmul fast float %3107, %3125
  %3127 = fadd fast float %3126, %2218
  %3128 = fsub fast float %2818, %2217
  %3129 = fmul fast float %3110, %3128
  %3130 = fadd fast float %3129, %2217
  %3131 = fsub fast float %2924, %2213
  %3132 = fsub fast float %2925, %2214
  %3133 = fsub fast float %2926, %2215
  %3134 = fmul fast float %3113, %3131
  %3135 = fmul fast float %3113, %3132
  %3136 = fmul fast float %3113, %3133
  %3137 = fadd fast float %3134, %2213
  %3138 = fadd fast float %3135, %2214
  %3139 = fadd fast float %3136, %2215
  %3140 = fsub fast float %2952, %2219
  %3141 = fmul fast float %3116, %3140
  %3142 = fadd fast float %3141, %2219
  br label %3207

; <label>:3143                                    ; preds = %3101
  %3144 = icmp eq i32 %3099, 4
  br i1 %3144, label %3145, label %3185

; <label>:3145                                    ; preds = %3143
  %3146 = fmul fast float %3104, %2819
  %3147 = fmul fast float %3104, %2820
  %3148 = fadd fast float %3146, %2205
  %3149 = fadd fast float %3147, %2206
  %3150 = call float @dx.op.binary.f32(i32 36, float %2218, float %2821)  ; FMin(a,b)
  %3151 = fsub fast float %3150, %2218
  %3152 = fmul fast float %3151, %3107
  %3153 = fadd fast float %3152, %2218
  %3154 = fadd fast float %2818, %2217
  %3155 = fmul fast float %3154, 0x3FF337FAE0000000
  %3156 = fmul fast float %2217, %2217
  %3157 = fmul fast float %2818, %2818
  %3158 = fadd fast float %3157, %3156
  %3159 = fmul fast float %3158, 0x3FE5152B00000000
  %3160 = fmul fast float %2217, 0xBFCC1F85E0000000
  %3161 = fmul fast float %3160, %2818
  %3162 = fadd fast float %3161, 0xBFE1363700000000
  %3163 = fadd fast float %3162, %3155
  %3164 = fsub fast float %3163, %3159
  %3165 = fmul fast float %3154, 0x3FBA6F0D00000000
  %3166 = fmul fast float %3158, 0x3FD0432880000000
  %3167 = fmul fast float %2217, 0xBFEF110800000000
  %3168 = fmul fast float %3167, %2818
  %3169 = fadd fast float %3168, 1.000000e+00
  %3170 = fsub fast float %3169, %3165
  %3171 = fadd fast float %3170, %3166
  %3172 = fdiv fast float %3164, %3171
  %3173 = call float @dx.op.unary.f32(i32 7, float %3172)  ; Saturate(value)
  %3174 = fsub fast float %3173, %2217
  %3175 = fmul fast float %3174, %3110
  %3176 = fadd fast float %3175, %2217
  %3177 = fmul fast float %3113, %2924
  %3178 = fmul fast float %3113, %2925
  %3179 = fmul fast float %3113, %2926
  %3180 = fadd fast float %3177, %2213
  %3181 = fadd fast float %3178, %2214
  %3182 = fadd fast float %3179, %2215
  %3183 = fmul fast float %3116, %2952
  %3184 = fadd fast float %3183, %2219
  br label %3207

; <label>:3185                                    ; preds = %3143
  %3186 = icmp eq i32 %3099, 8
  br i1 %3186, label %3187, label %3207

; <label>:3187                                    ; preds = %3185
  %3188 = fmul fast float %3104, %2819
  %3189 = fmul fast float %3104, %2820
  %3190 = fadd fast float %3188, %2205
  %3191 = fadd fast float %3189, %2206
  %3192 = call float @dx.op.binary.f32(i32 36, float %2218, float %2821)  ; FMin(a,b)
  %3193 = fsub fast float %3192, %2218
  %3194 = fmul fast float %3193, %3107
  %3195 = fadd fast float %3194, %2218
  %3196 = fsub fast float %2818, %2217
  %3197 = fmul fast float %3110, %3196
  %3198 = fadd fast float %3197, %2217
  %3199 = fmul fast float %3113, %2924
  %3200 = fmul fast float %3113, %2925
  %3201 = fmul fast float %3113, %2926
  %3202 = fadd fast float %3199, %2213
  %3203 = fadd fast float %3200, %2214
  %3204 = fadd fast float %3201, %2215
  %3205 = fmul fast float %3116, %2952
  %3206 = fadd fast float %3205, %2219
  br label %3207

; <label>:3207                                    ; preds = %3187, %3185, %3145, %3118, %3090, %2517, %2221, %2204
  %3208 = phi float [ %2205, %3090 ], [ %2205, %2517 ], [ %2205, %2204 ], [ %3190, %3187 ], [ %2205, %3185 ], [ %3148, %3145 ], [ %3123, %3118 ], [ %2205, %2221 ]
  %3209 = phi float [ %2206, %3090 ], [ %2206, %2517 ], [ %2206, %2204 ], [ %3191, %3187 ], [ %2206, %3185 ], [ %3149, %3145 ], [ %3124, %3118 ], [ %2206, %2221 ]
  %3210 = phi float [ %3091, %3090 ], [ %2207, %2517 ], [ %2207, %2204 ], [ %3091, %3187 ], [ %3091, %3185 ], [ %3091, %3145 ], [ %3091, %3118 ], [ %2207, %2221 ]
  %3211 = phi float [ %3092, %3090 ], [ %2208, %2517 ], [ %2208, %2204 ], [ %3092, %3187 ], [ %3092, %3185 ], [ %3092, %3145 ], [ %3092, %3118 ], [ %2208, %2221 ]
  %3212 = phi float [ %3093, %3090 ], [ %2209, %2517 ], [ %2209, %2204 ], [ %3093, %3187 ], [ %3093, %3185 ], [ %3093, %3145 ], [ %3093, %3118 ], [ %2209, %2221 ]
  %3213 = phi float [ %3094, %3090 ], [ %2210, %2517 ], [ %2210, %2204 ], [ %3094, %3187 ], [ %3094, %3185 ], [ %3094, %3145 ], [ %3094, %3118 ], [ %2210, %2221 ]
  %3214 = phi float [ %3095, %3090 ], [ %2211, %2517 ], [ %2211, %2204 ], [ %3095, %3187 ], [ %3095, %3185 ], [ %3095, %3145 ], [ %3095, %3118 ], [ %2211, %2221 ]
  %3215 = phi float [ %3096, %3090 ], [ %2212, %2517 ], [ %2212, %2204 ], [ %3096, %3187 ], [ %3096, %3185 ], [ %3096, %3145 ], [ %3096, %3118 ], [ %2212, %2221 ]
  %3216 = phi float [ %2213, %3090 ], [ %2213, %2517 ], [ %2213, %2204 ], [ %3202, %3187 ], [ %2213, %3185 ], [ %3180, %3145 ], [ %3137, %3118 ], [ %2213, %2221 ]
  %3217 = phi float [ %2214, %3090 ], [ %2214, %2517 ], [ %2214, %2204 ], [ %3203, %3187 ], [ %2214, %3185 ], [ %3181, %3145 ], [ %3138, %3118 ], [ %2214, %2221 ]
  %3218 = phi float [ %2215, %3090 ], [ %2215, %2517 ], [ %2215, %2204 ], [ %3204, %3187 ], [ %2215, %3185 ], [ %3182, %3145 ], [ %3139, %3118 ], [ %2215, %2221 ]
  %3219 = phi float [ %3097, %3090 ], [ %2216, %2517 ], [ %2216, %2204 ], [ %3097, %3187 ], [ %3097, %3185 ], [ %3097, %3145 ], [ %3097, %3118 ], [ %2216, %2221 ]
  %3220 = phi float [ %2217, %3090 ], [ %2217, %2517 ], [ %2217, %2204 ], [ %3198, %3187 ], [ %2217, %3185 ], [ %3176, %3145 ], [ %3130, %3118 ], [ %2217, %2221 ]
  %3221 = phi float [ %2218, %3090 ], [ %2218, %2517 ], [ %2218, %2204 ], [ %3195, %3187 ], [ %2218, %3185 ], [ %3153, %3145 ], [ %3127, %3118 ], [ %2218, %2221 ]
  %3222 = phi float [ %2219, %3090 ], [ %2219, %2517 ], [ %2219, %2204 ], [ %3206, %3187 ], [ %2219, %3185 ], [ %3184, %3145 ], [ %3142, %3118 ], [ %2219, %2221 ]
  %3223 = phi float [ %3098, %3090 ], [ %2220, %2517 ], [ %2220, %2204 ], [ %3098, %3187 ], [ %3098, %3185 ], [ %3098, %3145 ], [ %3098, %3118 ], [ %2220, %2221 ]
  br i1 %404, label %4210, label %3224

; <label>:3224                                    ; preds = %3207
  %3225 = icmp ult i32 %458, 4
  %3226 = add i32 %48, 72
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = add i32 %48, 76
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = or i32 %3231, %3228
  %3233 = icmp eq i32 %3232, 0
  br i1 %3233, label %4210, label %3234

; <label>:3234                                    ; preds = %3224
  %3235 = and i32 %3228, 262144
  %3236 = icmp ne i32 %3235, 0
  %3237 = select i1 %3236, float %51, float 1.000000e+00
  %3238 = select i1 %3236, float %52, float 0.000000e+00
  %3239 = select i1 %3236, float %53, float 0.000000e+00
  %3240 = select i1 %3236, float %54, float 1.000000e+00
  %3241 = select i1 %3236, float %55, float %71
  %3242 = select i1 %3236, float %56, float %72
  %3243 = add i32 %48, 332
  %3244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3243, i32 undef)  ; BufferLoad(srv,index,wot)
  %3245 = extractvalue %dx.types.ResRet.i32 %3244, 0
  %3246 = lshr i32 %3245, 16
  %3247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3246)  ; LegacyF16ToF32(value)
  %3248 = fmul fast float %3247, 0x3F50624DE0000000
  %3249 = add i32 %48, 136
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = lshr i32 %3251, 16
  %3253 = and i32 %3252, 255
  %3254 = lshr i32 %3251, 24
  %3255 = add i32 %48, 340
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3255, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = and i32 %3257, 65535
  %3259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3258)  ; LegacyF16ToF32(value)
  %3260 = lshr i32 %3257, 16
  %3261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3260)  ; LegacyF16ToF32(value)
  %3262 = add i32 %48, 80
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = lshr i32 %3264, 22
  %3266 = shl nuw nsw i32 %3265, 5
  %3267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3266)  ; LegacyF16ToF32(value)
  %3268 = shl i32 %3264, 4
  %3269 = and i32 %3268, 32752
  %3270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3269)  ; LegacyF16ToF32(value)
  %3271 = lshr i32 %3264, 7
  %3272 = and i32 %3271, 32752
  %3273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3272)  ; LegacyF16ToF32(value)
  %3274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3275 = extractvalue %dx.types.CBufRet.f32 %3274, 3
  %3276 = fmul fast float %3275, 1.000000e+03
  %3277 = fmul fast float %394, %3276
  %3278 = call float @dx.op.unary.f32(i32 22, float %3277)  ; Frc(value)
  %3279 = fadd fast float %3278, %384
  %3280 = fmul fast float %395, %3276
  %3281 = call float @dx.op.unary.f32(i32 22, float %3280)  ; Frc(value)
  %3282 = fadd fast float %3281, %386
  %3283 = fmul fast float %3248, %3276
  %3284 = call float @dx.op.unary.f32(i32 22, float %3283)  ; Frc(value)
  %3285 = fmul fast float %3284, 0x401921FB60000000
  %3286 = fadd fast float %3285, %3267
  %3287 = call float @dx.op.unary.f32(i32 13, float %3286)  ; Sin(value)
  %3288 = call float @dx.op.unary.f32(i32 12, float %3286)  ; Cos(value)
  %3289 = fsub fast float -0.000000e+00, %3287
  %3290 = fadd fast float %3241, -5.000000e-01
  %3291 = fadd fast float %3242, -5.000000e-01
  %3292 = fmul fast float %3259, %3290
  %3293 = fmul fast float %3261, %3291
  %3294 = fadd fast float %3292, 5.000000e-01
  %3295 = fadd fast float %3293, 5.000000e-01
  %3296 = fmul fast float %3270, %3294
  %3297 = fmul fast float %3273, %3295
  %3298 = fmul fast float %3288, %3296
  %3299 = call float @dx.op.tertiary.f32(i32 46, float %3289, float %3297, float %3298)  ; FMad(a,b,c)
  %3300 = fmul fast float %3287, %3296
  %3301 = call float @dx.op.tertiary.f32(i32 46, float %3288, float %3297, float %3300)  ; FMad(a,b,c)
  %3302 = fadd fast float %3279, %3299
  %3303 = fadd fast float %3282, %3301
  %3304 = icmp ugt i32 %3253, 1
  %3305 = icmp ugt i32 %3251, 33554431
  %3306 = or i1 %3305, %3304
  br i1 %3306, label %3307, label %3332

; <label>:3307                                    ; preds = %3234
  %3308 = add i32 %48, 276
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = lshr i32 %3310, 16
  %3312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3311)  ; LegacyF16ToF32(value)
  %3313 = fmul fast float %3275, %3312
  %3314 = call float @dx.op.unary.f32(i32 22, float %3313)  ; Frc(value)
  %3315 = mul nuw nsw i32 %3253, %3254
  %3316 = uitofp i32 %3315 to float
  %3317 = fmul fast float %3314, %3316
  %3318 = call float @dx.op.unary.f32(i32 27, float %3317)  ; Round_ni(value)
  %3319 = fptoui float %3318 to i32
  %3320 = urem i32 %3319, %3253
  %3321 = udiv i32 %3319, %3254
  %3322 = call float @dx.op.unary.f32(i32 22, float %3302)  ; Frc(value)
  %3323 = call float @dx.op.unary.f32(i32 22, float %3303)  ; Frc(value)
  %3324 = uitofp i32 %3320 to float
  %3325 = uitofp i32 %3321 to float
  %3326 = fadd fast float %3322, %3324
  %3327 = fadd fast float %3323, %3325
  %3328 = uitofp i32 %3253 to float
  %3329 = uitofp i32 %3254 to float
  %3330 = fdiv fast float %3326, %3328
  %3331 = fdiv fast float %3327, %3329
  br label %3332

; <label>:3332                                    ; preds = %3307, %3234
  %3333 = phi float [ %3330, %3307 ], [ %3302, %3234 ]
  %3334 = phi float [ %3331, %3307 ], [ %3303, %3234 ]
  %3335 = and i32 %3228, 16777216
  %3336 = icmp eq i32 %3335, 0
  br i1 %3336, label %3446, label %3337

; <label>:3337                                    ; preds = %3332
  %3338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3339 = extractvalue %dx.types.CBufRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.CBufRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.CBufRet.f32 %3338, 2
  %3342 = fadd fast float %3339, %155
  %3343 = fadd fast float %3340, %156
  %3344 = fadd fast float %3341, %157
  %3345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3346 = extractvalue %dx.types.CBufRet.f32 %3345, 0
  %3347 = call float @dx.op.unary.f32(i32 7, float %3346)  ; Saturate(value)
  %3348 = icmp eq i32 %49, 65535
  br i1 %3348, label %3443, label %3349

; <label>:3349                                    ; preds = %3337
  %3350 = lshr i32 %49, 1
  %3351 = shl i32 %3350, 2
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3351, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = and i32 %49, 1
  %3355 = icmp ne i32 %3354, 0
  %3356 = lshr i32 %3353, 16
  %3357 = and i32 %3353, 65535
  %3358 = select i1 %3355, i32 %3356, i32 %3357
  %3359 = icmp eq i32 %3358, 65535
  br i1 %3359, label %3439, label %3360

; <label>:3360                                    ; preds = %3349
  %3361 = mul nuw nsw i32 %3358, 40
  %3362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.f32 %3362, 0
  %3364 = extractvalue %dx.types.ResRet.f32 %3362, 1
  %3365 = extractvalue %dx.types.ResRet.f32 %3362, 2
  %3366 = add nuw nsw i32 %3361, 12
  %3367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.f32 %3367, 0
  %3369 = extractvalue %dx.types.ResRet.f32 %3367, 1
  %3370 = extractvalue %dx.types.ResRet.f32 %3367, 2
  %3371 = add nuw nsw i32 %3361, 24
  %3372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.f32 %3372, 0
  %3374 = extractvalue %dx.types.ResRet.f32 %3372, 1
  %3375 = extractvalue %dx.types.ResRet.f32 %3372, 2
  %3376 = add nuw nsw i32 %3361, 36
  %3377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %3376, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.f32 %3377, 0
  %3379 = fsub fast float %3342, %3363
  %3380 = fsub fast float %3343, %3364
  %3381 = fsub fast float %3344, %3365
  %3382 = fmul fast float %3378, %3379
  %3383 = fmul fast float %3378, %3380
  %3384 = fmul fast float %3378, %3381
  %3385 = call float @dx.op.unary.f32(i32 27, float %3382)  ; Round_ni(value)
  %3386 = call float @dx.op.unary.f32(i32 27, float %3383)  ; Round_ni(value)
  %3387 = call float @dx.op.unary.f32(i32 27, float %3384)  ; Round_ni(value)
  %3388 = fadd fast float %3385, 5.000000e-01
  %3389 = fadd fast float %3386, 5.000000e-01
  %3390 = fadd fast float %3387, 5.000000e-01
  %3391 = fmul fast float %3388, %3368
  %3392 = fmul fast float %3389, %3369
  %3393 = fmul fast float %3390, %3370
  %3394 = shl i32 %49, 2
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = add i32 %3396, 0
  %3398 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3397, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3399 = call float @dx.op.unary.f32(i32 22, float %3391)  ; Frc(value)
  %3400 = call float @dx.op.unary.f32(i32 22, float %3392)  ; Frc(value)
  %3401 = call float @dx.op.unary.f32(i32 22, float %3393)  ; Frc(value)
  %3402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3398, %dx.types.Handle %43, float %3399, float %3400, float %3401, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3403 = extractvalue %dx.types.ResRet.f32 %3402, 0
  %3404 = extractvalue %dx.types.ResRet.f32 %3402, 1
  %3405 = extractvalue %dx.types.ResRet.f32 %3402, 2
  %3406 = fmul fast float %3403, 1.023000e+03
  %3407 = fmul fast float %3404, 1.023000e+03
  %3408 = fmul fast float %3405, 1.023000e+03
  %3409 = fadd fast float %3406, 5.000000e-01
  %3410 = fadd fast float %3407, 5.000000e-01
  %3411 = fadd fast float %3408, 5.000000e-01
  %3412 = call float @dx.op.unary.f32(i32 27, float %3409)  ; Round_ni(value)
  %3413 = call float @dx.op.unary.f32(i32 27, float %3410)  ; Round_ni(value)
  %3414 = call float @dx.op.unary.f32(i32 27, float %3411)  ; Round_ni(value)
  %3415 = fsub fast float %3382, %3385
  %3416 = fsub fast float %3383, %3386
  %3417 = fsub fast float %3384, %3387
  %3418 = fmul fast float %3415, 7.500000e-01
  %3419 = fmul fast float %3416, 7.500000e-01
  %3420 = fmul fast float %3417, 7.500000e-01
  %3421 = fadd fast float %3385, 1.250000e-01
  %3422 = fadd fast float %3421, %3418
  %3423 = fadd fast float %3422, %3412
  %3424 = fadd fast float %3386, 1.250000e-01
  %3425 = fadd fast float %3424, %3419
  %3426 = fadd fast float %3425, %3413
  %3427 = fadd fast float %3387, 1.250000e-01
  %3428 = fadd fast float %3427, %3420
  %3429 = fadd fast float %3428, %3414
  %3430 = fmul fast float %3423, %3373
  %3431 = fmul fast float %3426, %3374
  %3432 = fmul fast float %3429, %3375
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = add i32 %3434, 0
  %3436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3436, %dx.types.Handle %41, float %3430, float %3431, float %3432, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3438 = extractvalue %dx.types.ResRet.f32 %3437, 0
  br label %3439

; <label>:3439                                    ; preds = %3360, %3349
  %3440 = phi float [ %3438, %3360 ], [ -1.000000e+00, %3349 ]
  %3441 = fadd fast float %3440, %3347
  %3442 = call float @dx.op.unary.f32(i32 7, float %3441)  ; Saturate(value)
  br label %3443

; <label>:3443                                    ; preds = %3439, %3337
  %3444 = phi float [ %3442, %3439 ], [ %3347, %3337 ]
  %3445 = fmul fast float %3444, %453
  br label %3446

; <label>:3446                                    ; preds = %3443, %3332
  %3447 = phi float [ %3445, %3443 ], [ %453, %3332 ]
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = and i32 %3449, 256
  %3451 = icmp eq i32 %3450, 0
  br i1 %3451, label %3498, label %3452

; <label>:3452                                    ; preds = %3446
  %3453 = add i32 %48, 436
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = add i32 %3455, 0
  %3457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3458 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3457, %dx.types.Handle %89, float %3333, float %3334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3459 = extractvalue %dx.types.ResRet.f32 %3458, 0
  %3460 = add i32 %48, 148
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = shl i32 %3462, 4
  %3464 = and i32 %3463, 32752
  %3465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3464)  ; LegacyF16ToF32(value)
  %3466 = lshr i32 %3462, 7
  %3467 = and i32 %3466, 32752
  %3468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3467)  ; LegacyF16ToF32(value)
  %3469 = fsub fast float 1.000000e+00, %3447
  %3470 = call float @dx.op.binary.f32(i32 35, float %3469, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3471 = bitcast float %3447 to i32
  %3472 = sitofp i32 %3471 to float
  %3473 = fadd fast float %3472, 0xC1CFBF8940000000
  %3474 = fmul fast float %3468, %3473
  %3475 = fadd fast float %3474, 0x41CFBF8940000000
  %3476 = fptosi float %3475 to i32
  %3477 = bitcast i32 %3476 to float
  %3478 = bitcast float %3470 to i32
  %3479 = sitofp i32 %3478 to float
  %3480 = fadd fast float %3479, 0xC1CFBF8940000000
  %3481 = fmul fast float %3480, %3468
  %3482 = fadd fast float %3481, 0x41CFBF8940000000
  %3483 = fptosi float %3482 to i32
  %3484 = bitcast i32 %3483 to float
  %3485 = fmul fast float %3477, %3465
  %3486 = fmul fast float %3484, %3465
  %3487 = fsub fast float %3470, %3485
  %3488 = fadd fast float %3486, %3470
  %3489 = call float @dx.op.unary.f32(i32 7, float %3487)  ; Saturate(value)
  %3490 = call float @dx.op.unary.f32(i32 7, float %3488)  ; Saturate(value)
  %3491 = fsub fast float %3459, %3489
  %3492 = fsub fast float %3490, %3489
  %3493 = bitcast float %3492 to i32
  %3494 = sub nsw i32 2129859010, %3493
  %3495 = bitcast i32 %3494 to float
  %3496 = fmul fast float %3495, %3491
  %3497 = call float @dx.op.unary.f32(i32 7, float %3496)  ; Saturate(value)
  br label %3498

; <label>:3498                                    ; preds = %3452, %3446
  %3499 = phi float [ %3497, %3452 ], [ %3447, %3446 ]
  %3500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3501 = extractvalue %dx.types.ResRet.i32 %3500, 0
  %3502 = and i32 %3501, 128
  %3503 = icmp eq i32 %3502, 0
  br i1 %3503, label %3520, label %3504

; <label>:3504                                    ; preds = %3498
  %3505 = add i32 %48, 420
  %3506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3505, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.i32 %3506, 0
  %3508 = add i32 %3507, 0
  %3509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3510 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3509, %dx.types.Handle %89, float %3333, float %3334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3511 = extractvalue %dx.types.ResRet.f32 %3510, 0
  %3512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.i32 %3512, 0
  %3514 = and i32 %3513, 524288
  %3515 = icmp ne i32 %3514, 0
  %3516 = fcmp fast ogt float %3511, 0x3FE0101020000000
  %3517 = select i1 %3516, float 1.000000e+00, float 0.000000e+00
  %3518 = select i1 %3515, float %3517, float %3511
  %3519 = fmul fast float %3518, %3499
  br label %3520

; <label>:3520                                    ; preds = %3504, %3498
  %3521 = phi float [ %3519, %3504 ], [ %3499, %3498 ]
  %3522 = fcmp fast ult float %3521, 0x3F70101020000000
  br i1 %3522, label %4210, label %3523

; <label>:3523                                    ; preds = %3520
  %3524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.i32 %3524, 0
  %3526 = and i32 %3525, 16
  %3527 = icmp eq i32 %3526, 0
  br i1 %3527, label %3726, label %3528

; <label>:3528                                    ; preds = %3523
  %3529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.i32 %3529, 0
  %3531 = add i32 %48, 372
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3531, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = add i32 %3533, 0
  %3535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3535, %dx.types.Handle %88, float %3333, float %3334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3537 = extractvalue %dx.types.ResRet.f32 %3536, 0
  %3538 = extractvalue %dx.types.ResRet.f32 %3536, 1
  %3539 = extractvalue %dx.types.ResRet.f32 %3536, 2
  %3540 = extractvalue %dx.types.ResRet.f32 %3536, 3
  %3541 = and i32 %3530, 255
  %3542 = uitofp i32 %3541 to float
  %3543 = lshr i32 %3530, 8
  %3544 = and i32 %3543, 255
  %3545 = uitofp i32 %3544 to float
  %3546 = fmul fast float %3540, %3542
  %3547 = fadd fast float %3546, %3545
  %3548 = fmul fast float %3547, 0x3F70101000000000
  %3549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.i32 %3549, 0
  %3551 = and i32 %3550, 512
  %3552 = icmp eq i32 %3551, 0
  br i1 %3552, label %3561, label %3553

; <label>:3553                                    ; preds = %3528
  %3554 = add i32 %48, 452
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = add i32 %3556, 0
  %3558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3558, %dx.types.Handle %89, float %3333, float %3334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3560 = extractvalue %dx.types.ResRet.f32 %3559, 0
  br label %3561

; <label>:3561                                    ; preds = %3553, %3528
  %3562 = phi float [ %3560, %3553 ], [ 1.000000e+00, %3528 ]
  %3563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3564 = extractvalue %dx.types.ResRet.i32 %3563, 0
  %3565 = and i32 %3564, 33554432
  %3566 = icmp eq i32 %3565, 0
  br i1 %3566, label %3673, label %3567

; <label>:3567                                    ; preds = %3561
  %3568 = add i32 %48, 272
  %3569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.i32 %3569, 0
  %3571 = and i32 %3570, 65535
  %3572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3571)  ; LegacyF16ToF32(value)
  %3573 = lshr i32 %3570, 16
  %3574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3573)  ; LegacyF16ToF32(value)
  %3575 = add i32 %48, 276
  %3576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.i32 %3576, 0
  %3578 = and i32 %3577, 65535
  %3579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3578)  ; LegacyF16ToF32(value)
  %3580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.i32 %3580, 0
  %3582 = lshr i32 %3581, 24
  %3583 = uitofp i32 %3582 to float
  %3584 = fmul fast float %3583, 0x3F70101020000000
  %3585 = and i32 %3581, 255
  %3586 = uitofp i32 %3585 to float
  %3587 = fmul fast float %3586, 0x3F70101020000000
  %3588 = lshr i32 %3581, 8
  %3589 = and i32 %3588, 255
  %3590 = uitofp i32 %3589 to float
  %3591 = fmul fast float %3590, 0x3F70101020000000
  %3592 = lshr i32 %3581, 16
  %3593 = and i32 %3592, 255
  %3594 = uitofp i32 %3593 to float
  %3595 = fmul fast float %3594, 0x3F70101020000000
  %3596 = add i32 %48, 268
  %3597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.i32 %3597, 0
  %3599 = lshr i32 %3598, 24
  %3600 = uitofp i32 %3599 to float
  %3601 = fmul fast float %3600, 0x3F70101020000000
  %3602 = and i32 %3598, 255
  %3603 = uitofp i32 %3602 to float
  %3604 = fmul fast float %3603, 0x3F70101020000000
  %3605 = lshr i32 %3598, 8
  %3606 = and i32 %3605, 255
  %3607 = uitofp i32 %3606 to float
  %3608 = fmul fast float %3607, 0x3F70101020000000
  %3609 = lshr i32 %3598, 16
  %3610 = and i32 %3609, 255
  %3611 = uitofp i32 %3610 to float
  %3612 = fmul fast float %3611, 0x3F70101020000000
  %3613 = bitcast float %3537 to i32
  %3614 = ashr i32 %3613, 1
  %3615 = sub nsw i32 1597463174, %3614
  %3616 = bitcast i32 %3615 to float
  %3617 = fmul fast float %3537, 5.000000e-01
  %3618 = fmul fast float %3616, %3616
  %3619 = fmul fast float %3618, %3617
  %3620 = fsub fast float 1.500000e+00, %3619
  %3621 = fmul fast float %3616, %3537
  %3622 = fmul fast float %3621, %3620
  %3623 = bitcast float %3538 to i32
  %3624 = ashr i32 %3623, 1
  %3625 = sub nsw i32 1597463174, %3624
  %3626 = bitcast i32 %3625 to float
  %3627 = fmul fast float %3538, 5.000000e-01
  %3628 = fmul fast float %3626, %3626
  %3629 = fmul fast float %3628, %3627
  %3630 = fsub fast float 1.500000e+00, %3629
  %3631 = fmul fast float %3626, %3538
  %3632 = fmul fast float %3631, %3630
  %3633 = bitcast float %3539 to i32
  %3634 = ashr i32 %3633, 1
  %3635 = sub nsw i32 1597463174, %3634
  %3636 = bitcast i32 %3635 to float
  %3637 = fmul fast float %3539, 5.000000e-01
  %3638 = fmul fast float %3636, %3636
  %3639 = fmul fast float %3638, %3637
  %3640 = fsub fast float 1.500000e+00, %3639
  %3641 = fmul fast float %3636, %3539
  %3642 = fmul fast float %3641, %3640
  %3643 = fsub fast float %3622, %3604
  %3644 = fsub fast float %3632, %3608
  %3645 = fsub fast float %3642, %3612
  %3646 = fmul fast float %3643, %3572
  %3647 = fmul fast float %3644, %3574
  %3648 = fmul fast float %3645, %3579
  %3649 = fadd fast float %3646, %3587
  %3650 = fadd fast float %3647, %3591
  %3651 = fadd fast float %3648, %3595
  %3652 = call float @dx.op.unary.f32(i32 7, float %3649)  ; Saturate(value)
  %3653 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  %3654 = call float @dx.op.unary.f32(i32 7, float %3651)  ; Saturate(value)
  %3655 = fmul fast float %3652, %3652
  %3656 = fmul fast float %3653, %3653
  %3657 = fmul fast float %3654, %3654
  %3658 = fsub fast float %3655, %3537
  %3659 = fsub fast float %3656, %3538
  %3660 = fsub fast float %3657, %3539
  %3661 = fmul fast float %3658, %3562
  %3662 = fmul fast float %3659, %3562
  %3663 = fmul fast float %3660, %3562
  %3664 = fadd fast float %3661, %3537
  %3665 = fadd fast float %3662, %3538
  %3666 = fadd fast float %3663, %3539
  %3667 = fadd fast float %3584, %3548
  %3668 = fsub fast float %3667, %3601
  %3669 = call float @dx.op.unary.f32(i32 7, float %3668)  ; Saturate(value)
  %3670 = fsub fast float %3669, %3548
  %3671 = fmul fast float %3670, %3562
  %3672 = fadd fast float %3671, %3548
  br label %3726

; <label>:3673                                    ; preds = %3561
  %3674 = and i32 %3564, 134217728
  %3675 = icmp eq i32 %3674, 0
  br i1 %3675, label %3710, label %3676

; <label>:3676                                    ; preds = %3673
  %3677 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %3678 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %3679 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %3680 = fadd fast float %3677, -5.000000e-01
  %3681 = fadd fast float %3678, -5.000000e-01
  %3682 = fadd fast float %3679, -5.000000e-01
  %3683 = fmul fast float %3680, %3562
  %3684 = fmul fast float %3681, %3562
  %3685 = fmul fast float %3682, %3562
  %3686 = fadd fast float %3683, 5.000000e-01
  %3687 = fadd fast float %3684, 5.000000e-01
  %3688 = fadd fast float %3685, 5.000000e-01
  %3689 = call float @dx.op.unary.f32(i32 24, float %3537)  ; Sqrt(value)
  %3690 = call float @dx.op.unary.f32(i32 24, float %3538)  ; Sqrt(value)
  %3691 = call float @dx.op.unary.f32(i32 24, float %3539)  ; Sqrt(value)
  %3692 = fmul fast float %3686, 2.000000e+00
  %3693 = fsub fast float 1.000000e+00, %3692
  %3694 = fmul fast float %3693, %3689
  %3695 = fadd fast float %3694, %3692
  %3696 = fmul fast float %3695, %3689
  %3697 = fmul fast float %3687, 2.000000e+00
  %3698 = fsub fast float 1.000000e+00, %3697
  %3699 = fmul fast float %3698, %3690
  %3700 = fadd fast float %3699, %3697
  %3701 = fmul fast float %3700, %3690
  %3702 = fmul fast float %3688, 2.000000e+00
  %3703 = fsub fast float 1.000000e+00, %3702
  %3704 = fmul fast float %3703, %3691
  %3705 = fadd fast float %3704, %3702
  %3706 = fmul fast float %3705, %3691
  %3707 = fmul fast float %3696, %3696
  %3708 = fmul fast float %3701, %3701
  %3709 = fmul fast float %3706, %3706
  br label %3726

; <label>:3710                                    ; preds = %3673
  %3711 = fmul fast float %371, %371
  %3712 = fmul fast float %375, %375
  %3713 = fmul fast float %379, %379
  %3714 = fadd fast float %3711, -1.000000e+00
  %3715 = fadd fast float %3712, -1.000000e+00
  %3716 = fadd fast float %3713, -1.000000e+00
  %3717 = fmul fast float %3562, %3714
  %3718 = fmul fast float %3562, %3715
  %3719 = fmul fast float %3562, %3716
  %3720 = fadd fast float %3717, 1.000000e+00
  %3721 = fadd fast float %3718, 1.000000e+00
  %3722 = fadd fast float %3719, 1.000000e+00
  %3723 = fmul fast float %3720, %3537
  %3724 = fmul fast float %3721, %3538
  %3725 = fmul fast float %3722, %3539
  br label %3726

; <label>:3726                                    ; preds = %3710, %3676, %3567, %3523
  %3727 = phi float [ %3672, %3567 ], [ %3548, %3676 ], [ %3548, %3710 ], [ 0x3FA23C0BE0000000, %3523 ]
  %3728 = phi float [ %3664, %3567 ], [ %3707, %3676 ], [ %3723, %3710 ], [ 1.000000e+00, %3523 ]
  %3729 = phi float [ %3665, %3567 ], [ %3708, %3676 ], [ %3724, %3710 ], [ 1.000000e+00, %3523 ]
  %3730 = phi float [ %3666, %3567 ], [ %3709, %3676 ], [ %3725, %3710 ], [ 1.000000e+00, %3523 ]
  %3731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3732 = extractvalue %dx.types.CBufRet.i32 %3731, 1
  %3733 = and i32 %3732, 1
  %3734 = icmp ne i32 %3733, 0
  %3735 = add i32 %48, 356
  %3736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.i32 %3736, 0
  %3738 = and i32 %3737, 32
  %3739 = icmp ne i32 %3738, 0
  %3740 = and i1 %3734, %3739
  %3741 = select i1 %3740, float 1.000000e+00, float %3728
  %3742 = select i1 %3740, float 0x3FD3333340000000, float %3729
  %3743 = select i1 %3740, float 0x3FD3333340000000, float %3730
  %3744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.i32 %3744, 0
  %3746 = and i32 %3745, 32
  %3747 = icmp eq i32 %3746, 0
  br i1 %3747, label %3820, label %3748

; <label>:3748                                    ; preds = %3726
  %3749 = add i32 %48, 140
  %3750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.i32 %3750, 0
  %3752 = add i32 %48, 388
  %3753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.i32 %3753, 0
  %3755 = add i32 %3754, 0
  %3756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3755, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3757 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3756, %dx.types.Handle %88, float %3333, float %3334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3758 = extractvalue %dx.types.ResRet.f32 %3757, 0
  %3759 = extractvalue %dx.types.ResRet.f32 %3757, 1
  %3760 = extractvalue %dx.types.ResRet.f32 %3757, 2
  %3761 = extractvalue %dx.types.ResRet.f32 %3757, 3
  %3762 = and i32 %3751, 255
  %3763 = uitofp i32 %3762 to float
  %3764 = lshr i32 %3751, 8
  %3765 = and i32 %3764, 255
  %3766 = uitofp i32 %3765 to float
  %3767 = lshr i32 %3751, 16
  %3768 = and i32 %3767, 255
  %3769 = uitofp i32 %3768 to float
  %3770 = fmul fast float %3769, 0x3F70101000000000
  %3771 = fmul fast float %3758, %3763
  %3772 = fadd fast float %3771, %3766
  %3773 = fmul fast float %3772, 0x3F70101000000000
  %3774 = fadd fast float %3759, -5.000000e-01
  %3775 = fadd fast float %3761, -5.000000e-01
  %3776 = fmul fast float %3774, %3770
  %3777 = fmul fast float %3775, %3770
  %3778 = fadd fast float %3776, 5.000000e-01
  %3779 = fadd fast float %3777, 5.000000e-01
  %3780 = fmul fast float %3778, 2.000000e+00
  %3781 = fadd fast float %3780, -1.000000e+00
  %3782 = fmul fast float %3779, 2.000000e+00
  %3783 = fadd fast float %3782, -1.000000e+00
  %3784 = fadd fast float %3781, %3783
  %3785 = fmul fast float %3784, 5.000000e-01
  %3786 = fsub fast float %3781, %3783
  %3787 = fmul fast float %3786, 5.000000e-01
  %3788 = call float @dx.op.unary.f32(i32 6, float %3785)  ; FAbs(value)
  %3789 = fsub fast float 1.000000e+00, %3788
  %3790 = call float @dx.op.unary.f32(i32 6, float %3787)  ; FAbs(value)
  %3791 = fsub fast float %3789, %3790
  %3792 = call float @dx.op.dot3.f32(i32 55, float %3785, float %3787, float %3791, float %3785, float %3787, float %3791)  ; Dot3(ax,ay,az,bx,by,bz)
  %3793 = call float @dx.op.unary.f32(i32 25, float %3792)  ; Rsqrt(value)
  %3794 = fmul fast float %3785, %3793
  %3795 = fmul fast float %3787, %3793
  %3796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3797 = extractvalue %dx.types.ResRet.i32 %3796, 0
  %3798 = and i32 %3797, 67108864
  %3799 = icmp eq i32 %3798, 0
  br i1 %3799, label %3816, label %3800

; <label>:3800                                    ; preds = %3748
  %3801 = add i32 %48, 328
  %3802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3803 = extractvalue %dx.types.ResRet.i32 %3802, 0
  %3804 = and i32 %3803, 65535
  %3805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3804)  ; LegacyF16ToF32(value)
  %3806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3243, i32 undef)  ; BufferLoad(srv,index,wot)
  %3807 = extractvalue %dx.types.ResRet.i32 %3806, 0
  %3808 = and i32 %3807, 65535
  %3809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3808)  ; LegacyF16ToF32(value)
  %3810 = lshr i32 %3803, 16
  %3811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3810)  ; LegacyF16ToF32(value)
  %3812 = fsub fast float %3773, %3811
  %3813 = fmul fast float %3812, %3805
  %3814 = fadd fast float %3813, %3809
  %3815 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  br label %3816

; <label>:3816                                    ; preds = %3800, %3748
  %3817 = phi float [ %3815, %3800 ], [ %3773, %3748 ]
  %3818 = call float @dx.op.dot2.f32(i32 54, float %3794, float %3795, float %3237, float %3238)  ; Dot2(ax,ay,bx,by)
  %3819 = call float @dx.op.dot2.f32(i32 54, float %3794, float %3795, float %3239, float %3240)  ; Dot2(ax,ay,bx,by)
  br label %3820

; <label>:3820                                    ; preds = %3816, %3726
  %3821 = phi float [ %3817, %3816 ], [ 0x3FD6666660000000, %3726 ]
  %3822 = phi float [ %3818, %3816 ], [ 0.000000e+00, %3726 ]
  %3823 = phi float [ %3819, %3816 ], [ 0.000000e+00, %3726 ]
  %3824 = phi float [ %3760, %3816 ], [ 1.000000e+00, %3726 ]
  %3825 = add i32 %48, 208
  %3826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3827 = extractvalue %dx.types.ResRet.i32 %3826, 0
  %3828 = lshr i32 %3827, 22
  %3829 = shl nuw nsw i32 %3828, 5
  %3830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3829)  ; LegacyF16ToF32(value)
  %3831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.i32 %3831, 0
  %3833 = and i32 %3832, 64
  %3834 = icmp eq i32 %3833, 0
  br i1 %3834, label %3868, label %3835

; <label>:3835                                    ; preds = %3820
  %3836 = add i32 %48, 404
  %3837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.i32 %3837, 0
  %3839 = add i32 %3838, 0
  %3840 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3839, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.i32 %3841, 0
  %3843 = and i32 %3842, 131072
  %3844 = icmp eq i32 %3843, 0
  %3845 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3840, %dx.types.Handle %88, float %3333, float %3334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3846 = extractvalue %dx.types.ResRet.f32 %3845, 0
  %3847 = extractvalue %dx.types.ResRet.f32 %3845, 1
  %3848 = extractvalue %dx.types.ResRet.f32 %3845, 2
  %3849 = fmul fast float %3846, %359
  %3850 = fmul fast float %3847, %362
  %3851 = fmul fast float %3848, %365
  br i1 %3844, label %3858, label %3852

; <label>:3852                                    ; preds = %3835
  %3853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3854 = extractvalue %dx.types.CBufRet.f32 %3853, 0
  %3855 = fmul fast float %3854, %3849
  %3856 = fmul fast float %3854, %3850
  %3857 = fmul fast float %3854, %3851
  br label %3858

; <label>:3858                                    ; preds = %3852, %3835
  %3859 = phi float [ %3855, %3852 ], [ %3849, %3835 ]
  %3860 = phi float [ %3856, %3852 ], [ %3850, %3835 ]
  %3861 = phi float [ %3857, %3852 ], [ %3851, %3835 ]
  %3862 = fmul fast float %3859, %3830
  %3863 = select i1 %216, float %3862, float %3859
  %3864 = call float @dx.op.dot3.f32(i32 55, float %3863, float %3860, float %3861, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3865 = select i1 %216, float 0.000000e+00, float %3859
  %3866 = select i1 %216, float %3864, float %3860
  %3867 = select i1 %216, float 0.000000e+00, float %3861
  br label %3868

; <label>:3868                                    ; preds = %3858, %3820
  %3869 = phi float [ %3865, %3858 ], [ 0.000000e+00, %3820 ]
  %3870 = phi float [ %3866, %3858 ], [ 0.000000e+00, %3820 ]
  %3871 = phi float [ %3867, %3858 ], [ 0.000000e+00, %3820 ]
  %3872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.i32 %3872, 0
  %3874 = and i32 %3873, 1024
  %3875 = icmp eq i32 %3874, 0
  br i1 %3875, label %3906, label %3876

; <label>:3876                                    ; preds = %3868
  %3877 = add i32 %48, 200
  %3878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3877, i32 undef)  ; BufferLoad(srv,index,wot)
  %3879 = extractvalue %dx.types.ResRet.i32 %3878, 0
  %3880 = and i32 %3879, 255
  %3881 = uitofp i32 %3880 to float
  %3882 = fmul fast float %3881, 0x3F70101020000000
  %3883 = lshr i32 %3879, 8
  %3884 = and i32 %3883, 255
  %3885 = uitofp i32 %3884 to float
  %3886 = fmul fast float %3885, 0x3F70101020000000
  %3887 = lshr i32 %3879, 16
  %3888 = and i32 %3887, 255
  %3889 = uitofp i32 %3888 to float
  %3890 = fmul fast float %3889, 0x3F70101020000000
  %3891 = fmul fast float %3882, %3882
  %3892 = fmul fast float %3886, %3886
  %3893 = fmul fast float %3890, %3890
  %3894 = add i32 %48, 468
  %3895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3894, i32 undef)  ; BufferLoad(srv,index,wot)
  %3896 = extractvalue %dx.types.ResRet.i32 %3895, 0
  %3897 = add i32 %3896, 0
  %3898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3897, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3899 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3898, %dx.types.Handle %89, float %3333, float %3334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3900 = extractvalue %dx.types.ResRet.f32 %3899, 0
  %3901 = extractvalue %dx.types.ResRet.f32 %3899, 1
  %3902 = extractvalue %dx.types.ResRet.f32 %3899, 2
  %3903 = fmul fast float %3891, %3900
  %3904 = fmul fast float %3892, %3901
  %3905 = fmul fast float %3893, %3902
  br label %3906

; <label>:3906                                    ; preds = %3876, %3868
  %3907 = phi float [ %3903, %3876 ], [ 0.000000e+00, %3868 ]
  %3908 = phi float [ %3904, %3876 ], [ 0.000000e+00, %3868 ]
  %3909 = phi float [ %3905, %3876 ], [ 0.000000e+00, %3868 ]
  %3910 = fcmp fast ogt float %3907, 0.000000e+00
  %3911 = fcmp fast ogt float %3908, 0.000000e+00
  %3912 = fcmp fast ogt float %3909, 0.000000e+00
  %3913 = call float @dx.op.unary.f32(i32 23, float %3907)  ; Log(value)
  %3914 = call float @dx.op.unary.f32(i32 23, float %3908)  ; Log(value)
  %3915 = call float @dx.op.unary.f32(i32 23, float %3909)  ; Log(value)
  %3916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.i32 %3916, 0
  %3918 = lshr i32 %3917, 7
  %3919 = and i32 %3918, 32752
  %3920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3919)  ; LegacyF16ToF32(value)
  %3921 = fmul fast float %3913, 0xBFE62E4300000000
  %3922 = fmul fast float %3921, %3920
  %3923 = fmul fast float %3914, 0xBFE62E4300000000
  %3924 = fmul fast float %3923, %3920
  %3925 = fmul fast float %3915, 0xBFE62E4300000000
  %3926 = fmul fast float %3925, %3920
  %3927 = select i1 %3910, float %3922, float 1.270000e+02
  %3928 = select i1 %3911, float %3924, float 1.270000e+02
  %3929 = select i1 %3912, float %3926, float 1.270000e+02
  %3930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.i32 %3930, 0
  %3932 = and i32 %3931, 10240
  %3933 = icmp eq i32 %3932, 0
  br i1 %3933, label %3954, label %3934

; <label>:3934                                    ; preds = %3906
  %3935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.i32 %3935, 0
  %3937 = and i32 %3936, 2048
  %3938 = icmp eq i32 %3937, 0
  br i1 %3938, label %3954, label %3939

; <label>:3939                                    ; preds = %3934
  %3940 = add i32 %48, 484
  %3941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3942 = extractvalue %dx.types.ResRet.i32 %3941, 0
  %3943 = add i32 %3942, 0
  %3944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3943, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3945 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3944, %dx.types.Handle %89, float %3333, float %3334, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3946 = extractvalue %dx.types.ResRet.f32 %3945, 3
  %3947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.i32 %3947, 0
  %3949 = shl i32 %3948, 4
  %3950 = and i32 %3949, 32752
  %3951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3950)  ; LegacyF16ToF32(value)
  %3952 = fmul fast float %3951, %3946
  %3953 = call float @dx.op.binary.f32(i32 35, float %3952, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3954

; <label>:3954                                    ; preds = %3939, %3934, %3906
  %3955 = phi float [ %3953, %3939 ], [ 0x3F70101020000000, %3934 ], [ 0x3F70101020000000, %3906 ]
  %3956 = add i32 %48, 144
  %3957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3958 = extractvalue %dx.types.ResRet.i32 %3957, 0
  %3959 = and i32 %3958, 255
  %3960 = uitofp i32 %3959 to float
  %3961 = lshr i32 %3958, 8
  %3962 = and i32 %3961, 255
  %3963 = uitofp i32 %3962 to float
  %3964 = call float @dx.op.dot3.f32(i32 55, float %3741, float %3742, float %3743, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3965 = fmul fast float %3963, %3964
  %3966 = fadd fast float %3965, %3960
  %3967 = fmul fast float %3966, 0x3F70101020000000
  %3968 = call float @dx.op.unary.f32(i32 7, float %3967)  ; Saturate(value)
  br i1 %3225, label %3969, label %4004

; <label>:3969                                    ; preds = %3954
  %3970 = fmul fast float %3955, 2.000000e+00
  %3971 = fcmp fast olt float %3927, 1.270000e+02
  %3972 = fcmp fast olt float %3928, 1.270000e+02
  %3973 = fcmp fast olt float %3929, 1.270000e+02
  %3974 = fmul fast float %3927, 0xBFF7154760000000
  %3975 = fmul fast float %3974, %3970
  %3976 = fmul fast float %3928, 0xBFF7154760000000
  %3977 = fmul fast float %3976, %3970
  %3978 = fmul fast float %3929, 0xBFF7154760000000
  %3979 = fmul fast float %3978, %3970
  %3980 = call float @dx.op.unary.f32(i32 21, float %3975)  ; Exp(value)
  %3981 = call float @dx.op.unary.f32(i32 21, float %3977)  ; Exp(value)
  %3982 = call float @dx.op.unary.f32(i32 21, float %3979)  ; Exp(value)
  %3983 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  %3984 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3985 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3986 = fadd fast float %3983, -1.000000e+00
  %3987 = select i1 %3971, float %3986, float -1.000000e+00
  %3988 = fadd fast float %3984, -1.000000e+00
  %3989 = select i1 %3972, float %3988, float -1.000000e+00
  %3990 = fadd fast float %3985, -1.000000e+00
  %3991 = select i1 %3973, float %3990, float -1.000000e+00
  %3992 = fmul fast float %3987, %3521
  %3993 = fmul fast float %3989, %3521
  %3994 = fmul fast float %3991, %3521
  %3995 = fadd fast float %3992, 1.000000e+00
  %3996 = fadd fast float %3993, 1.000000e+00
  %3997 = fadd fast float %3994, 1.000000e+00
  %3998 = fmul fast float %3995, %3210
  %3999 = fmul fast float %3996, %3211
  %4000 = fmul fast float %3997, %3212
  %4001 = fmul fast float %3995, %3213
  %4002 = fmul fast float %3996, %3214
  %4003 = fmul fast float %3997, %3215
  br label %4004

; <label>:4004                                    ; preds = %3969, %3954
  %4005 = phi float [ %3998, %3969 ], [ %3210, %3954 ]
  %4006 = phi float [ %3999, %3969 ], [ %3211, %3954 ]
  %4007 = phi float [ %4000, %3969 ], [ %3212, %3954 ]
  %4008 = phi float [ %4001, %3969 ], [ %3213, %3954 ]
  %4009 = phi float [ %4002, %3969 ], [ %3214, %3954 ]
  %4010 = phi float [ %4003, %3969 ], [ %3215, %3954 ]
  %4011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.i32 %4011, 0
  %4013 = and i32 %4012, 3
  %4014 = icmp eq i32 %4013, 3
  br i1 %4014, label %4093, label %4015

; <label>:4015                                    ; preds = %4004
  %4016 = and i32 %4012, 16
  %4017 = icmp ne i32 %4016, 0
  %4018 = select i1 %4017, float %3521, float 0.000000e+00
  %4019 = icmp eq i32 %4013, 0
  br i1 %4019, label %4020, label %4048

; <label>:4020                                    ; preds = %4015
  %4021 = and i32 %4012, 64
  %4022 = icmp ne i32 %4021, 0
  %4023 = select i1 %4022, float %3521, float 0.000000e+00
  %4024 = fsub fast float %3741, %4005
  %4025 = fsub fast float %3742, %4006
  %4026 = fsub fast float %3743, %4007
  %4027 = fmul fast float %4018, %4024
  %4028 = fmul fast float %4018, %4025
  %4029 = fmul fast float %4018, %4026
  %4030 = fadd fast float %4027, %4005
  %4031 = fadd fast float %4028, %4006
  %4032 = fadd fast float %4029, %4007
  %4033 = fsub fast float %3727, %3219
  %4034 = fmul fast float %4018, %4033
  %4035 = fadd fast float %4034, %3219
  %4036 = fsub fast float %3869, %4008
  %4037 = fsub fast float %3870, %4009
  %4038 = fsub fast float %3871, %4010
  %4039 = fmul fast float %4023, %4036
  %4040 = fmul fast float %4023, %4037
  %4041 = fmul fast float %4023, %4038
  %4042 = fadd fast float %4039, %4008
  %4043 = fadd fast float %4040, %4009
  %4044 = fadd fast float %4041, %4010
  %4045 = fsub fast float %3968, %3223
  %4046 = fmul fast float %4018, %4045
  %4047 = fadd fast float %4046, %3223
  br label %4093

; <label>:4048                                    ; preds = %4015
  %4049 = icmp eq i32 %4013, 1
  br i1 %4049, label %4050, label %4063

; <label>:4050                                    ; preds = %4048
  %4051 = fadd fast float %3741, -1.000000e+00
  %4052 = fadd fast float %3742, -1.000000e+00
  %4053 = fadd fast float %3743, -1.000000e+00
  %4054 = fmul fast float %4018, %4051
  %4055 = fmul fast float %4018, %4052
  %4056 = fmul fast float %4018, %4053
  %4057 = fadd fast float %4054, 1.000000e+00
  %4058 = fadd fast float %4055, 1.000000e+00
  %4059 = fadd fast float %4056, 1.000000e+00
  %4060 = fmul fast float %4057, %4005
  %4061 = fmul fast float %4058, %4006
  %4062 = fmul fast float %4059, %4007
  br label %4093

; <label>:4063                                    ; preds = %4048
  %4064 = icmp eq i32 %4013, 2
  br i1 %4064, label %4065, label %4093

; <label>:4065                                    ; preds = %4063
  %4066 = call float @dx.op.unary.f32(i32 24, float %3741)  ; Sqrt(value)
  %4067 = call float @dx.op.unary.f32(i32 24, float %3742)  ; Sqrt(value)
  %4068 = call float @dx.op.unary.f32(i32 24, float %3743)  ; Sqrt(value)
  %4069 = fadd fast float %4066, -5.000000e-01
  %4070 = fadd fast float %4067, -5.000000e-01
  %4071 = fadd fast float %4068, -5.000000e-01
  %4072 = fmul fast float %4069, %4018
  %4073 = fmul fast float %4070, %4018
  %4074 = fmul fast float %4071, %4018
  %4075 = fadd fast float %4072, 5.000000e-01
  %4076 = fadd fast float %4073, 5.000000e-01
  %4077 = fadd fast float %4074, 5.000000e-01
  %4078 = fmul fast float %4075, 2.000000e+00
  %4079 = fsub fast float 1.000000e+00, %4078
  %4080 = fmul fast float %4079, %4005
  %4081 = fadd fast float %4080, %4078
  %4082 = fmul fast float %4081, %4005
  %4083 = fmul fast float %4076, 2.000000e+00
  %4084 = fsub fast float 1.000000e+00, %4083
  %4085 = fmul fast float %4084, %4006
  %4086 = fadd fast float %4085, %4083
  %4087 = fmul fast float %4086, %4006
  %4088 = fmul fast float %4077, 2.000000e+00
  %4089 = fsub fast float 1.000000e+00, %4088
  %4090 = fmul fast float %4089, %4007
  %4091 = fadd fast float %4090, %4088
  %4092 = fmul fast float %4091, %4007
  br label %4093

; <label>:4093                                    ; preds = %4065, %4063, %4050, %4020, %4004
  %4094 = phi float [ %4005, %4004 ], [ %4082, %4065 ], [ %4005, %4063 ], [ %4060, %4050 ], [ %4030, %4020 ]
  %4095 = phi float [ %4006, %4004 ], [ %4087, %4065 ], [ %4006, %4063 ], [ %4061, %4050 ], [ %4031, %4020 ]
  %4096 = phi float [ %4007, %4004 ], [ %4092, %4065 ], [ %4007, %4063 ], [ %4062, %4050 ], [ %4032, %4020 ]
  %4097 = phi float [ %4008, %4004 ], [ %4008, %4065 ], [ %4008, %4063 ], [ %4008, %4050 ], [ %4042, %4020 ]
  %4098 = phi float [ %4009, %4004 ], [ %4009, %4065 ], [ %4009, %4063 ], [ %4009, %4050 ], [ %4043, %4020 ]
  %4099 = phi float [ %4010, %4004 ], [ %4010, %4065 ], [ %4010, %4063 ], [ %4010, %4050 ], [ %4044, %4020 ]
  %4100 = phi float [ %3219, %4004 ], [ %3219, %4065 ], [ %3219, %4063 ], [ %3219, %4050 ], [ %4035, %4020 ]
  %4101 = phi float [ %3223, %4004 ], [ %3223, %4065 ], [ %3223, %4063 ], [ %3223, %4050 ], [ %4047, %4020 ]
  %4102 = and i32 %4012, 12
  %4103 = icmp eq i32 %4102, 12
  br i1 %4103, label %4210, label %4104

; <label>:4104                                    ; preds = %4093
  %4105 = and i32 %4012, 2097184
  %4106 = icmp eq i32 %4105, 2097184
  %4107 = select i1 %4106, float %3521, float 0.000000e+00
  %4108 = and i32 %4012, 4194336
  %4109 = icmp eq i32 %4108, 4194336
  %4110 = select i1 %4109, float %3521, float 0.000000e+00
  %4111 = and i32 %4012, 8388640
  %4112 = icmp eq i32 %4111, 8388640
  %4113 = select i1 %4112, float %3521, float 0.000000e+00
  %4114 = and i32 %4012, 1024
  %4115 = icmp ne i32 %4114, 0
  %4116 = select i1 %4115, float %3521, float 0.000000e+00
  %4117 = and i32 %4012, 2048
  %4118 = icmp ne i32 %4117, 0
  %4119 = select i1 %4118, float %3521, float 0.000000e+00
  %4120 = icmp eq i32 %4102, 0
  br i1 %4120, label %4121, label %4146

; <label>:4121                                    ; preds = %4104
  %4122 = fsub fast float %3822, %3208
  %4123 = fsub fast float %3823, %3209
  %4124 = fmul fast float %4107, %4122
  %4125 = fmul fast float %4107, %4123
  %4126 = fadd fast float %4124, %3208
  %4127 = fadd fast float %4125, %3209
  %4128 = fsub fast float %3824, %3221
  %4129 = fmul fast float %4110, %4128
  %4130 = fadd fast float %4129, %3221
  %4131 = fsub fast float %3821, %3220
  %4132 = fmul fast float %4113, %4131
  %4133 = fadd fast float %4132, %3220
  %4134 = fsub fast float %3927, %3216
  %4135 = fsub fast float %3928, %3217
  %4136 = fsub fast float %3929, %3218
  %4137 = fmul fast float %4116, %4134
  %4138 = fmul fast float %4116, %4135
  %4139 = fmul fast float %4116, %4136
  %4140 = fadd fast float %4137, %3216
  %4141 = fadd fast float %4138, %3217
  %4142 = fadd fast float %4139, %3218
  %4143 = fsub fast float %3955, %3222
  %4144 = fmul fast float %4119, %4143
  %4145 = fadd fast float %4144, %3222
  br label %4210

; <label>:4146                                    ; preds = %4104
  %4147 = icmp eq i32 %4102, 4
  br i1 %4147, label %4148, label %4188

; <label>:4148                                    ; preds = %4146
  %4149 = fmul fast float %4107, %3822
  %4150 = fmul fast float %4107, %3823
  %4151 = fadd fast float %4149, %3208
  %4152 = fadd fast float %4150, %3209
  %4153 = call float @dx.op.binary.f32(i32 36, float %3221, float %3824)  ; FMin(a,b)
  %4154 = fsub fast float %4153, %3221
  %4155 = fmul fast float %4154, %4110
  %4156 = fadd fast float %4155, %3221
  %4157 = fadd fast float %3821, %3220
  %4158 = fmul fast float %4157, 0x3FF337FAE0000000
  %4159 = fmul fast float %3220, %3220
  %4160 = fmul fast float %3821, %3821
  %4161 = fadd fast float %4160, %4159
  %4162 = fmul fast float %4161, 0x3FE5152B00000000
  %4163 = fmul fast float %3220, 0xBFCC1F85E0000000
  %4164 = fmul fast float %4163, %3821
  %4165 = fadd fast float %4164, 0xBFE1363700000000
  %4166 = fadd fast float %4165, %4158
  %4167 = fsub fast float %4166, %4162
  %4168 = fmul fast float %4157, 0x3FBA6F0D00000000
  %4169 = fmul fast float %4161, 0x3FD0432880000000
  %4170 = fmul fast float %3220, 0xBFEF110800000000
  %4171 = fmul fast float %4170, %3821
  %4172 = fadd fast float %4171, 1.000000e+00
  %4173 = fsub fast float %4172, %4168
  %4174 = fadd fast float %4173, %4169
  %4175 = fdiv fast float %4167, %4174
  %4176 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4177 = fsub fast float %4176, %3220
  %4178 = fmul fast float %4177, %4113
  %4179 = fadd fast float %4178, %3220
  %4180 = fmul fast float %4116, %3927
  %4181 = fmul fast float %4116, %3928
  %4182 = fmul fast float %4116, %3929
  %4183 = fadd fast float %4180, %3216
  %4184 = fadd fast float %4181, %3217
  %4185 = fadd fast float %4182, %3218
  %4186 = fmul fast float %4119, %3955
  %4187 = fadd fast float %4186, %3222
  br label %4210

; <label>:4188                                    ; preds = %4146
  %4189 = icmp eq i32 %4102, 8
  br i1 %4189, label %4190, label %4210

; <label>:4190                                    ; preds = %4188
  %4191 = fmul fast float %4107, %3822
  %4192 = fmul fast float %4107, %3823
  %4193 = fadd fast float %4191, %3208
  %4194 = fadd fast float %4192, %3209
  %4195 = call float @dx.op.binary.f32(i32 36, float %3221, float %3824)  ; FMin(a,b)
  %4196 = fsub fast float %4195, %3221
  %4197 = fmul fast float %4196, %4110
  %4198 = fadd fast float %4197, %3221
  %4199 = fsub fast float %3821, %3220
  %4200 = fmul fast float %4113, %4199
  %4201 = fadd fast float %4200, %3220
  %4202 = fmul fast float %4116, %3927
  %4203 = fmul fast float %4116, %3928
  %4204 = fmul fast float %4116, %3929
  %4205 = fadd fast float %4202, %3216
  %4206 = fadd fast float %4203, %3217
  %4207 = fadd fast float %4204, %3218
  %4208 = fmul fast float %4119, %3955
  %4209 = fadd fast float %4208, %3222
  br label %4210

; <label>:4210                                    ; preds = %4190, %4188, %4148, %4121, %4093, %3520, %3224, %3207
  %4211 = phi float [ %3208, %4093 ], [ %3208, %3520 ], [ %3208, %3207 ], [ %3208, %3224 ], [ %4126, %4121 ], [ %4151, %4148 ], [ %3208, %4188 ], [ %4193, %4190 ]
  %4212 = phi float [ %3209, %4093 ], [ %3209, %3520 ], [ %3209, %3207 ], [ %3209, %3224 ], [ %4127, %4121 ], [ %4152, %4148 ], [ %3209, %4188 ], [ %4194, %4190 ]
  %4213 = phi float [ %4094, %4093 ], [ %3210, %3520 ], [ %3210, %3207 ], [ %3210, %3224 ], [ %4094, %4121 ], [ %4094, %4148 ], [ %4094, %4188 ], [ %4094, %4190 ]
  %4214 = phi float [ %4095, %4093 ], [ %3211, %3520 ], [ %3211, %3207 ], [ %3211, %3224 ], [ %4095, %4121 ], [ %4095, %4148 ], [ %4095, %4188 ], [ %4095, %4190 ]
  %4215 = phi float [ %4096, %4093 ], [ %3212, %3520 ], [ %3212, %3207 ], [ %3212, %3224 ], [ %4096, %4121 ], [ %4096, %4148 ], [ %4096, %4188 ], [ %4096, %4190 ]
  %4216 = phi float [ %4097, %4093 ], [ %3213, %3520 ], [ %3213, %3207 ], [ %3213, %3224 ], [ %4097, %4121 ], [ %4097, %4148 ], [ %4097, %4188 ], [ %4097, %4190 ]
  %4217 = phi float [ %4098, %4093 ], [ %3214, %3520 ], [ %3214, %3207 ], [ %3214, %3224 ], [ %4098, %4121 ], [ %4098, %4148 ], [ %4098, %4188 ], [ %4098, %4190 ]
  %4218 = phi float [ %4099, %4093 ], [ %3215, %3520 ], [ %3215, %3207 ], [ %3215, %3224 ], [ %4099, %4121 ], [ %4099, %4148 ], [ %4099, %4188 ], [ %4099, %4190 ]
  %4219 = phi float [ %3216, %4093 ], [ %3216, %3520 ], [ %3216, %3207 ], [ %3216, %3224 ], [ %4140, %4121 ], [ %4183, %4148 ], [ %3216, %4188 ], [ %4205, %4190 ]
  %4220 = phi float [ %3217, %4093 ], [ %3217, %3520 ], [ %3217, %3207 ], [ %3217, %3224 ], [ %4141, %4121 ], [ %4184, %4148 ], [ %3217, %4188 ], [ %4206, %4190 ]
  %4221 = phi float [ %3218, %4093 ], [ %3218, %3520 ], [ %3218, %3207 ], [ %3218, %3224 ], [ %4142, %4121 ], [ %4185, %4148 ], [ %3218, %4188 ], [ %4207, %4190 ]
  %4222 = phi float [ %4100, %4093 ], [ %3219, %3520 ], [ %3219, %3207 ], [ %3219, %3224 ], [ %4100, %4121 ], [ %4100, %4148 ], [ %4100, %4188 ], [ %4100, %4190 ]
  %4223 = phi float [ %3220, %4093 ], [ %3220, %3520 ], [ %3220, %3207 ], [ %3220, %3224 ], [ %4133, %4121 ], [ %4179, %4148 ], [ %3220, %4188 ], [ %4201, %4190 ]
  %4224 = phi float [ %3221, %4093 ], [ %3221, %3520 ], [ %3221, %3207 ], [ %3221, %3224 ], [ %4130, %4121 ], [ %4156, %4148 ], [ %3221, %4188 ], [ %4198, %4190 ]
  %4225 = phi float [ %3222, %4093 ], [ %3222, %3520 ], [ %3222, %3207 ], [ %3222, %3224 ], [ %4145, %4121 ], [ %4187, %4148 ], [ %3222, %4188 ], [ %4209, %4190 ]
  %4226 = phi float [ %4101, %4093 ], [ %3223, %3520 ], [ %3223, %3207 ], [ %3223, %3224 ], [ %4101, %4121 ], [ %4101, %4148 ], [ %4101, %4188 ], [ %4101, %4190 ]
  %4227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4228 = extractvalue %dx.types.CBufRet.f32 %4227, 0
  %4229 = call float @dx.op.dot2.f32(i32 54, float %4211, float %4212, float %4211, float %4212)  ; Dot2(ax,ay,bx,by)
  %4230 = fmul fast float %4229, 0x3FE3333340000000
  %4231 = fsub fast float 1.000000e+00, %4230
  %4232 = call float @dx.op.dot3.f32(i32 55, float %4211, float %4212, float %4231, float %4211, float %4212, float %4231)  ; Dot3(ax,ay,az,bx,by,bz)
  %4233 = call float @dx.op.unary.f32(i32 25, float %4232)  ; Rsqrt(value)
  %4234 = fmul fast float %4233, %4211
  %4235 = fmul fast float %4233, %4212
  %4236 = fmul fast float %4231, %4233
  %4237 = fmul fast float %4236, %99
  %4238 = fmul fast float %4236, %100
  %4239 = fmul fast float %4236, %101
  %4240 = fmul fast float %4234, %64
  %4241 = fmul fast float %4234, %65
  %4242 = fmul fast float %4234, %66
  %4243 = fadd fast float %4237, %4240
  %4244 = fadd fast float %4238, %4241
  %4245 = fadd fast float %4239, %4242
  %4246 = fmul fast float %111, %4235
  %4247 = fmul fast float %112, %4235
  %4248 = fmul fast float %113, %4235
  %4249 = fadd fast float %4243, %4246
  %4250 = fadd fast float %4244, %4247
  %4251 = fadd fast float %4245, %4248
  %4252 = call float @dx.op.dot3.f32(i32 55, float %4249, float %4250, float %4251, float %4249, float %4250, float %4251)  ; Dot3(ax,ay,az,bx,by,bz)
  %4253 = call float @dx.op.unary.f32(i32 25, float %4252)  ; Rsqrt(value)
  %4254 = fmul fast float %4249, %4253
  %4255 = fmul fast float %4250, %4253
  %4256 = fmul fast float %4251, %4253
  %4257 = and i32 %50, 1
  %4258 = icmp eq i32 %4257, 0
  br i1 %4258, label %4259, label %4798

; <label>:4259                                    ; preds = %4210
  %4260 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4261 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4262 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4263 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4264 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4265 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4266 = fadd fast float %4260, %155
  %4267 = fadd fast float %4261, %156
  %4268 = fadd fast float %4262, %157
  %4269 = fadd fast float %4263, %155
  %4270 = fadd fast float %4264, %156
  %4271 = fadd fast float %4265, %157
  %4272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4273 = extractvalue %dx.types.CBufRet.f32 %4272, 0
  %4274 = extractvalue %dx.types.CBufRet.f32 %4272, 1
  %4275 = extractvalue %dx.types.CBufRet.f32 %4272, 2
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 2
  %4278 = extractvalue %dx.types.CBufRet.f32 %4276, 3
  %4279 = fmul fast float %4273, %92
  %4280 = fmul fast float %4279, %4277
  %4281 = fmul fast float %4274, %93
  %4282 = fmul fast float %4281, %4278
  %4283 = fptoui float %4280 to i32
  %4284 = fptoui float %4282 to i32
  %4285 = fadd fast float %4273, -1.000000e+00
  %4286 = fadd fast float %4274, -1.000000e+00
  %4287 = fptoui float %4285 to i32
  %4288 = fptoui float %4286 to i32
  %4289 = call i32 @dx.op.binary.i32(i32 40, i32 %4283, i32 %4287)  ; UMin(a,b)
  %4290 = call i32 @dx.op.binary.i32(i32 40, i32 %4284, i32 %4288)  ; UMin(a,b)
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 2
  %4293 = extractvalue %dx.types.CBufRet.f32 %4291, 3
  %4294 = fmul fast float %4292, %80
  %4295 = fsub fast float %4294, %4293
  %4296 = fadd fast float %4275, -1.000000e+00
  %4297 = call float @dx.op.binary.f32(i32 36, float %4295, float %4296)  ; FMin(a,b)
  %4298 = fptoui float %4297 to i32
  %4299 = fptoui float %4273 to i32
  %4300 = fptoui float %4274 to i32
  %4301 = mul i32 %4298, %4300
  %4302 = add i32 %4301, %4290
  %4303 = mul i32 %4302, %4299
  %4304 = add i32 %4303, %4289
  %4305 = shl i32 %4304, 2
  %4306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4305, i32 undef)  ; BufferLoad(srv,index,wot)
  %4307 = extractvalue %dx.types.ResRet.i32 %4306, 0
  %4308 = and i32 %4307, 1023
  %4309 = lshr i32 %4307, 10
  %4310 = icmp eq i32 %4308, 0
  br i1 %4310, label %4764, label %4311

; <label>:4311                                    ; preds = %4259
  %4312 = and i32 %4307, 1023
  br label %4313

; <label>:4313                                    ; preds = %4442, %4311
  %4314 = phi i32 [ %4392, %4442 ], [ 0, %4311 ]
  %4315 = phi float [ %4443, %4442 ], [ 0.000000e+00, %4311 ]
  %4316 = phi float [ %4444, %4442 ], [ %4228, %4311 ]
  %4317 = phi float [ %4445, %4442 ], [ %4226, %4311 ]
  %4318 = phi float [ %4446, %4442 ], [ %4219, %4311 ]
  %4319 = phi float [ %4447, %4442 ], [ %4220, %4311 ]
  %4320 = phi float [ %4448, %4442 ], [ %4221, %4311 ]
  %4321 = phi float [ %4449, %4442 ], [ 0.000000e+00, %4311 ]
  %4322 = phi float [ %4450, %4442 ], [ 0.000000e+00, %4311 ]
  %4323 = phi float [ %4451, %4442 ], [ %4216, %4311 ]
  %4324 = phi float [ %4452, %4442 ], [ %4217, %4311 ]
  %4325 = phi float [ %4453, %4442 ], [ %4218, %4311 ]
  %4326 = phi float [ %4454, %4442 ], [ %4254, %4311 ]
  %4327 = phi float [ %4455, %4442 ], [ %4255, %4311 ]
  %4328 = phi float [ %4456, %4442 ], [ %4256, %4311 ]
  %4329 = phi float [ %4457, %4442 ], [ %4224, %4311 ]
  %4330 = phi float [ %4458, %4442 ], [ %4223, %4311 ]
  %4331 = phi float [ %4459, %4442 ], [ 0.000000e+00, %4311 ]
  %4332 = phi float [ %4460, %4442 ], [ %4222, %4311 ]
  %4333 = phi float [ %4461, %4442 ], [ %4213, %4311 ]
  %4334 = phi float [ %4462, %4442 ], [ %4214, %4311 ]
  %4335 = phi float [ %4463, %4442 ], [ %4215, %4311 ]
  %4336 = add nuw nsw i32 %4314, %4309
  %4337 = shl i32 %4336, 2
  %4338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4337, i32 undef)  ; BufferLoad(srv,index,wot)
  %4339 = extractvalue %dx.types.ResRet.i32 %4338, 0
  %4340 = shl i32 %4339, 8
  %4341 = or i32 %4340, 48
  %4342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4341, i32 undef)  ; BufferLoad(srv,index,wot)
  %4343 = extractvalue %dx.types.ResRet.f32 %4342, 0
  %4344 = extractvalue %dx.types.ResRet.f32 %4342, 1
  %4345 = extractvalue %dx.types.ResRet.f32 %4342, 2
  %4346 = extractvalue %dx.types.ResRet.f32 %4342, 3
  %4347 = or i32 %4340, 64
  %4348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4347, i32 undef)  ; BufferLoad(srv,index,wot)
  %4349 = extractvalue %dx.types.ResRet.i32 %4348, 0
  %4350 = extractvalue %dx.types.ResRet.i32 %4348, 1
  %4351 = or i32 %4340, 80
  %4352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4353 = extractvalue %dx.types.ResRet.f32 %4352, 2
  %4354 = extractvalue %dx.types.ResRet.f32 %4352, 3
  %4355 = or i32 %4340, 96
  %4356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4355, i32 undef)  ; BufferLoad(srv,index,wot)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = extractvalue %dx.types.ResRet.f32 %4356, 1
  %4359 = extractvalue %dx.types.ResRet.f32 %4356, 2
  %4360 = extractvalue %dx.types.ResRet.f32 %4356, 3
  %4361 = or i32 %4340, 112
  %4362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4361, i32 undef)  ; BufferLoad(srv,index,wot)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 2
  %4364 = or i32 %4340, 128
  %4365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = extractvalue %dx.types.ResRet.f32 %4365, 1
  %4368 = extractvalue %dx.types.ResRet.f32 %4365, 2
  %4369 = extractvalue %dx.types.ResRet.f32 %4365, 3
  %4370 = or i32 %4340, 144
  %4371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.ResRet.f32 %4371, 1
  %4374 = extractvalue %dx.types.ResRet.f32 %4371, 2
  %4375 = extractvalue %dx.types.ResRet.f32 %4371, 3
  %4376 = or i32 %4340, 160
  %4377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4376, i32 undef)  ; BufferLoad(srv,index,wot)
  %4378 = extractvalue %dx.types.ResRet.f32 %4377, 0
  %4379 = extractvalue %dx.types.ResRet.f32 %4377, 1
  %4380 = extractvalue %dx.types.ResRet.f32 %4377, 2
  %4381 = extractvalue %dx.types.ResRet.f32 %4377, 3
  %4382 = or i32 %4340, 192
  %4383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4382, i32 undef)  ; BufferLoad(srv,index,wot)
  %4384 = extractvalue %dx.types.ResRet.i32 %4383, 0
  %4385 = or i32 %4340, 208
  %4386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4385, i32 undef)  ; BufferLoad(srv,index,wot)
  %4387 = extractvalue %dx.types.ResRet.f32 %4386, 0
  %4388 = or i32 %4340, 248
  %4389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4388, i32 undef)  ; BufferLoad(srv,index,wot)
  %4390 = extractvalue %dx.types.ResRet.f32 %4389, 0
  %4391 = extractvalue %dx.types.ResRet.f32 %4389, 1
  %4392 = add nuw nsw i32 %4314, 1
  %4393 = bitcast float %4346 to i32
  %4394 = and i32 %4393, 512
  %4395 = icmp eq i32 %4394, 0
  %4396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4398 = extractvalue %dx.types.ResRet.f32 %4396, 1
  %4399 = extractvalue %dx.types.ResRet.f32 %4396, 2
  %4400 = extractvalue %dx.types.ResRet.f32 %4396, 3
  %4401 = call float @dx.op.dot4.f32(i32 56, float %4397, float %4398, float %4399, float %4400, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4402 = or i32 %4340, 16
  %4403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = extractvalue %dx.types.ResRet.f32 %4403, 1
  %4406 = extractvalue %dx.types.ResRet.f32 %4403, 2
  %4407 = extractvalue %dx.types.ResRet.f32 %4403, 3
  %4408 = call float @dx.op.dot4.f32(i32 56, float %4404, float %4405, float %4406, float %4407, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4409 = or i32 %4340, 32
  %4410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4409, i32 undef)  ; BufferLoad(srv,index,wot)
  %4411 = extractvalue %dx.types.ResRet.f32 %4410, 0
  %4412 = extractvalue %dx.types.ResRet.f32 %4410, 1
  %4413 = extractvalue %dx.types.ResRet.f32 %4410, 2
  %4414 = extractvalue %dx.types.ResRet.f32 %4410, 3
  %4415 = call float @dx.op.dot4.f32(i32 56, float %4411, float %4412, float %4413, float %4414, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4416 = call float @dx.op.unary.f32(i32 27, float %4401)  ; Round_ni(value)
  %4417 = call float @dx.op.unary.f32(i32 6, float %4416)  ; FAbs(value)
  %4418 = call float @dx.op.unary.f32(i32 27, float %4408)  ; Round_ni(value)
  %4419 = call float @dx.op.unary.f32(i32 6, float %4418)  ; FAbs(value)
  %4420 = call float @dx.op.unary.f32(i32 6, float %4415)  ; FAbs(value)
  %4421 = call float @dx.op.unary.f32(i32 27, float %4420)  ; Round_ni(value)
  %4422 = fadd fast float %4419, %4417
  %4423 = fadd fast float %4422, %4421
  %4424 = fcmp fast oeq float %4423, 0.000000e+00
  %4425 = call float @dx.op.dot4.f32(i32 56, float %4397, float %4398, float %4399, float %4400, float %4266, float %4267, float %4268, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4426 = call float @dx.op.dot4.f32(i32 56, float %4404, float %4405, float %4406, float %4407, float %4266, float %4267, float %4268, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4427 = call float @dx.op.dot4.f32(i32 56, float %4397, float %4398, float %4399, float %4400, float %4269, float %4270, float %4271, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4428 = call float @dx.op.dot4.f32(i32 56, float %4404, float %4405, float %4406, float %4407, float %4269, float %4270, float %4271, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4429 = fsub fast float %4425, %4401
  %4430 = fsub fast float %4427, %4401
  %4431 = fsub fast float %4426, %4408
  %4432 = fsub fast float %4428, %4408
  %4433 = call float @dx.op.dot3.f32(i32 55, float %4343, float %4344, float %4345, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4435 = extractvalue %dx.types.CBufRet.f32 %4434, 2
  %4436 = fadd fast float %4435, %4433
  %4437 = call float @dx.op.unary.f32(i32 7, float %4436)  ; Saturate(value)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4434, 0
  %4439 = fcmp fast ogt float %4437, %4438
  %4440 = and i1 %4424, %4439
  %4441 = and i1 %4395, %4440
  br i1 %4441, label %4465, label %4442

; <label>:4442                                    ; preds = %4750, %4546, %4465, %4313
  %4443 = phi float [ %4315, %4465 ], [ %4549, %4546 ], [ %4549, %4750 ], [ %4315, %4313 ]
  %4444 = phi float [ %4316, %4465 ], [ %4316, %4546 ], [ %4726, %4750 ], [ %4316, %4313 ]
  %4445 = phi float [ %4317, %4465 ], [ %4317, %4546 ], [ %4724, %4750 ], [ %4317, %4313 ]
  %4446 = phi float [ %4318, %4465 ], [ %4318, %4546 ], [ %4702, %4750 ], [ %4318, %4313 ]
  %4447 = phi float [ %4319, %4465 ], [ %4319, %4546 ], [ %4703, %4750 ], [ %4319, %4313 ]
  %4448 = phi float [ %4320, %4465 ], [ %4320, %4546 ], [ %4704, %4750 ], [ %4320, %4313 ]
  %4449 = phi float [ %4321, %4465 ], [ %4321, %4546 ], [ %4673, %4750 ], [ %4321, %4313 ]
  %4450 = phi float [ %4322, %4465 ], [ %4322, %4546 ], [ %4671, %4750 ], [ %4322, %4313 ]
  %4451 = phi float [ %4323, %4465 ], [ %4323, %4546 ], [ %4760, %4750 ], [ %4323, %4313 ]
  %4452 = phi float [ %4324, %4465 ], [ %4324, %4546 ], [ %4761, %4750 ], [ %4324, %4313 ]
  %4453 = phi float [ %4325, %4465 ], [ %4325, %4546 ], [ %4762, %4750 ], [ %4325, %4313 ]
  %4454 = phi float [ %4326, %4465 ], [ %4326, %4546 ], [ %4652, %4750 ], [ %4326, %4313 ]
  %4455 = phi float [ %4327, %4465 ], [ %4327, %4546 ], [ %4653, %4750 ], [ %4327, %4313 ]
  %4456 = phi float [ %4328, %4465 ], [ %4328, %4546 ], [ %4654, %4750 ], [ %4328, %4313 ]
  %4457 = phi float [ %4329, %4465 ], [ %4329, %4546 ], [ %4682, %4750 ], [ %4329, %4313 ]
  %4458 = phi float [ %4330, %4465 ], [ %4330, %4546 ], [ %4679, %4750 ], [ %4330, %4313 ]
  %4459 = phi float [ %4331, %4465 ], [ %4331, %4546 ], [ %4676, %4750 ], [ %4331, %4313 ]
  %4460 = phi float [ %4332, %4465 ], [ %4332, %4546 ], [ %4669, %4750 ], [ %4332, %4313 ]
  %4461 = phi float [ %4333, %4465 ], [ %4333, %4546 ], [ %4664, %4750 ], [ %4333, %4313 ]
  %4462 = phi float [ %4334, %4465 ], [ %4334, %4546 ], [ %4665, %4750 ], [ %4334, %4313 ]
  %4463 = phi float [ %4335, %4465 ], [ %4335, %4546 ], [ %4666, %4750 ], [ %4335, %4313 ]
  %4464 = icmp eq i32 %4392, %4312
  br i1 %4464, label %4763, label %4313

; <label>:4465                                    ; preds = %4313
  %4466 = extractvalue %dx.types.ResRet.f32 %4362, 3
  %4467 = extractvalue %dx.types.ResRet.f32 %4362, 1
  %4468 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4469 = extractvalue %dx.types.ResRet.f32 %4352, 1
  %4470 = extractvalue %dx.types.ResRet.f32 %4352, 0
  %4471 = extractvalue %dx.types.ResRet.i32 %4348, 3
  %4472 = extractvalue %dx.types.ResRet.i32 %4348, 2
  %4473 = add i32 %4471, 0
  %4474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4473, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4475 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4476 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4474, %dx.types.Handle %4475, float %4401, float %4408, float undef, float undef, i32 0, i32 0, i32 undef, float %4429, float %4431, float undef, float %4430, float %4432, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4477 = extractvalue %dx.types.ResRet.f32 %4476, 0
  %4478 = fmul fast float %4477, %4470
  %4479 = fadd fast float %4478, %4469
  %4480 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4481 = fmul fast float %4401, %4357
  %4482 = call float @dx.op.tertiary.f32(i32 46, float %4358, float %4408, float %4481)  ; FMad(a,b,c)
  %4483 = fadd fast float %4482, %4468
  %4484 = fmul fast float %4401, %4359
  %4485 = call float @dx.op.tertiary.f32(i32 46, float %4360, float %4408, float %4484)  ; FMad(a,b,c)
  %4486 = fadd fast float %4485, %4467
  %4487 = fmul fast float %4429, %4357
  %4488 = call float @dx.op.tertiary.f32(i32 46, float %4358, float %4431, float %4487)  ; FMad(a,b,c)
  %4489 = fmul fast float %4429, %4359
  %4490 = call float @dx.op.tertiary.f32(i32 46, float %4360, float %4431, float %4489)  ; FMad(a,b,c)
  %4491 = fmul fast float %4430, %4357
  %4492 = call float @dx.op.tertiary.f32(i32 46, float %4358, float %4432, float %4491)  ; FMad(a,b,c)
  %4493 = fmul fast float %4430, %4359
  %4494 = call float @dx.op.tertiary.f32(i32 46, float %4360, float %4432, float %4493)  ; FMad(a,b,c)
  %4495 = add i32 %4472, 0
  %4496 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4495, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4497 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4496, %dx.types.Handle %4475, float %4483, float %4486, float undef, float undef, i32 0, i32 0, i32 undef, float %4488, float %4490, float undef, float %4492, float %4494, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4498 = extractvalue %dx.types.ResRet.f32 %4497, 0
  %4499 = and i32 %4393, 1024
  %4500 = icmp ne i32 %4499, 0
  %4501 = fcmp fast ogt float %4498, 0x3FE0101020000000
  %4502 = uitofp i1 %4501 to float
  %4503 = select i1 %4500, float %4502, float %4498
  %4504 = and i32 %4393, 8192
  %4505 = icmp ne i32 %4504, 0
  %4506 = select i1 %4505, float %4466, float 1.000000e+00
  %4507 = fmul fast float %4401, 2.000000e+00
  %4508 = fadd fast float %4507, -1.000000e+00
  %4509 = call float @dx.op.unary.f32(i32 6, float %4508)  ; FAbs(value)
  %4510 = fmul fast float %4509, %4390
  %4511 = fsub fast float %4510, %4390
  %4512 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4513 = fmul fast float %4408, 2.000000e+00
  %4514 = fadd fast float %4513, -1.000000e+00
  %4515 = call float @dx.op.unary.f32(i32 6, float %4514)  ; FAbs(value)
  %4516 = fmul fast float %4515, %4391
  %4517 = fsub fast float %4516, %4391
  %4518 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4519 = fmul fast float %4420, %4353
  %4520 = fsub fast float %4519, %4353
  %4521 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4522 = fmul fast float %4480, %4506
  %4523 = fmul fast float %4522, %4477
  %4524 = fmul fast float %4523, %4512
  %4525 = fmul fast float %4524, %4503
  %4526 = fmul fast float %4525, %4518
  %4527 = fmul fast float %4526, %4521
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 1
  %4530 = extractvalue %dx.types.CBufRet.f32 %4528, 0
  %4531 = fsub fast float %4437, %4530
  %4532 = fmul fast float %4531, %4529
  %4533 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4534 = fmul fast float %4527, %4354
  %4535 = fadd fast float %4527, %4354
  %4536 = fmul fast float %4535, %4363
  %4537 = fsub fast float %4536, %4363
  %4538 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4539 = and i32 %4393, 128
  %4540 = icmp ne i32 %4539, 0
  %4541 = select i1 %4540, float %4538, float %4534
  %4542 = fmul fast float %4541, %4533
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 0
  %4545 = fcmp fast ugt float %4542, %4544
  br i1 %4545, label %4546, label %4442

; <label>:4546                                    ; preds = %4465
  %4547 = select i1 %4505, float %4542, float 0.000000e+00
  %4548 = fadd fast float %4547, %4315
  %4549 = call float @dx.op.unary.f32(i32 7, float %4548)  ; Saturate(value)
  br i1 %4505, label %4442, label %4550

; <label>:4550                                    ; preds = %4546
  %4551 = and i32 %4393, 4
  %4552 = and i32 %4393, 8
  %4553 = add i32 %4349, 0
  %4554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4553, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4556 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4554, %dx.types.Handle %4555, float %4483, float %4486, float undef, float undef, i32 0, i32 0, i32 undef, float %4488, float %4490, float undef, float %4492, float %4494, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4557 = extractvalue %dx.types.ResRet.f32 %4556, 0
  %4558 = extractvalue %dx.types.ResRet.f32 %4556, 1
  %4559 = extractvalue %dx.types.ResRet.f32 %4556, 2
  %4560 = extractvalue %dx.types.ResRet.f32 %4556, 3
  %4561 = bitcast float %4375 to i32
  %4562 = and i32 %4561, 255
  %4563 = uitofp i32 %4562 to float
  %4564 = lshr i32 %4561, 8
  %4565 = and i32 %4564, 255
  %4566 = uitofp i32 %4565 to float
  %4567 = fmul fast float %4560, %4563
  %4568 = fadd fast float %4567, %4566
  %4569 = fmul fast float %4568, 0x3F70101000000000
  %4570 = add i32 %4350, 0
  %4571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4570, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4572 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4571, %dx.types.Handle %4555, float %4483, float %4486, float undef, float undef, i32 0, i32 0, i32 undef, float %4488, float %4490, float undef, float %4492, float %4494, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4573 = extractvalue %dx.types.ResRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.ResRet.f32 %4572, 1
  %4575 = extractvalue %dx.types.ResRet.f32 %4572, 2
  %4576 = extractvalue %dx.types.ResRet.f32 %4572, 3
  %4577 = bitcast float %4369 to i32
  %4578 = and i32 %4577, 255
  %4579 = uitofp i32 %4578 to float
  %4580 = lshr i32 %4577, 8
  %4581 = and i32 %4580, 255
  %4582 = uitofp i32 %4581 to float
  %4583 = lshr i32 %4577, 16
  %4584 = and i32 %4583, 255
  %4585 = uitofp i32 %4584 to float
  %4586 = fmul fast float %4585, 0x3F70101000000000
  %4587 = fmul fast float %4573, %4579
  %4588 = fadd fast float %4587, %4582
  %4589 = fmul fast float %4588, 0x3F70101000000000
  %4590 = fadd fast float %4574, -5.000000e-01
  %4591 = fadd fast float %4576, -5.000000e-01
  %4592 = fmul fast float %4590, %4586
  %4593 = fmul fast float %4591, %4586
  %4594 = fadd fast float %4592, 5.000000e-01
  %4595 = fadd fast float %4593, 5.000000e-01
  %4596 = fmul fast float %4557, %4378
  %4597 = fmul fast float %4558, %4379
  %4598 = fmul fast float %4559, %4380
  %4599 = fmul fast float %4594, 2.000000e+00
  %4600 = fadd fast float %4599, -1.000000e+00
  %4601 = fmul fast float %4595, 2.000000e+00
  %4602 = fadd fast float %4601, -1.000000e+00
  %4603 = fadd fast float %4600, %4602
  %4604 = fmul fast float %4603, 5.000000e-01
  %4605 = fsub fast float %4600, %4602
  %4606 = fmul fast float %4605, 5.000000e-01
  %4607 = call float @dx.op.unary.f32(i32 6, float %4604)  ; FAbs(value)
  %4608 = fsub fast float 1.000000e+00, %4607
  %4609 = call float @dx.op.unary.f32(i32 6, float %4606)  ; FAbs(value)
  %4610 = fsub fast float %4608, %4609
  %4611 = call float @dx.op.dot3.f32(i32 55, float %4604, float %4606, float %4610, float %4604, float %4606, float %4610)  ; Dot3(ax,ay,az,bx,by,bz)
  %4612 = call float @dx.op.unary.f32(i32 25, float %4611)  ; Rsqrt(value)
  %4613 = fmul fast float %4604, %4612
  %4614 = fmul fast float %4606, %4612
  %4615 = fmul fast float %4612, %4610
  %4616 = fmul fast float %4615, %4343
  %4617 = fmul fast float %4615, %4344
  %4618 = fmul fast float %4615, %4345
  %4619 = fmul fast float %4613, %4366
  %4620 = fmul fast float %4613, %4367
  %4621 = fmul fast float %4613, %4368
  %4622 = fadd fast float %4619, %4616
  %4623 = fadd fast float %4620, %4617
  %4624 = fadd fast float %4621, %4618
  %4625 = fmul fast float %4614, %4372
  %4626 = fmul fast float %4614, %4373
  %4627 = fmul fast float %4614, %4374
  %4628 = fadd fast float %4622, %4625
  %4629 = fadd fast float %4623, %4626
  %4630 = fadd fast float %4624, %4627
  %4631 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4629, float %4630, float %4628, float %4629, float %4630)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = call float @dx.op.unary.f32(i32 25, float %4631)  ; Rsqrt(value)
  %4633 = fmul fast float %4628, %4632
  %4634 = fmul fast float %4629, %4632
  %4635 = fmul fast float %4630, %4632
  %4636 = icmp ne i32 %4552, 0
  %4637 = select i1 %4636, float 1.000000e+00, float 0.000000e+00
  %4638 = fmul fast float %4542, %4637
  %4639 = and i32 %4393, 1
  %4640 = icmp eq i32 %4639, 0
  br i1 %4640, label %4641, label %4645

; <label>:4641                                    ; preds = %4550
  %4642 = fsub fast float %4633, %4326
  %4643 = fsub fast float %4634, %4327
  %4644 = fsub fast float %4635, %4328
  br label %4645

; <label>:4645                                    ; preds = %4641, %4550
  %4646 = phi float [ %4642, %4641 ], [ %4633, %4550 ]
  %4647 = phi float [ %4643, %4641 ], [ %4634, %4550 ]
  %4648 = phi float [ %4644, %4641 ], [ %4635, %4550 ]
  %4649 = fmul float %4648, %4638
  %4650 = fmul float %4647, %4638
  %4651 = fmul float %4646, %4638
  %4652 = fadd fast float %4651, %4326
  %4653 = fadd fast float %4650, %4327
  %4654 = fadd fast float %4649, %4328
  %4655 = icmp ne i32 %4551, 0
  %4656 = select i1 %4655, float 1.000000e+00, float 0.000000e+00
  %4657 = fmul fast float %4542, %4656
  %4658 = fsub fast float %4596, %4333
  %4659 = fsub fast float %4597, %4334
  %4660 = fsub fast float %4598, %4335
  %4661 = fmul fast float %4658, %4657
  %4662 = fmul fast float %4659, %4657
  %4663 = fmul fast float %4660, %4657
  %4664 = fadd fast float %4661, %4333
  %4665 = fadd fast float %4662, %4334
  %4666 = fadd fast float %4663, %4335
  %4667 = fsub fast float %4569, %4332
  %4668 = fmul fast float %4667, %4657
  %4669 = fadd fast float %4668, %4332
  %4670 = fmul fast float %4657, %4322
  %4671 = fsub fast float %4322, %4670
  %4672 = fmul fast float %4657, %4321
  %4673 = fsub fast float %4321, %4672
  %4674 = bitcast float %4387 to i32
  %4675 = fadd fast float %4542, %4331
  %4676 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4677 = fsub fast float %4589, %4330
  %4678 = fmul fast float %4677, %4638
  %4679 = fadd fast float %4678, %4330
  %4680 = fsub fast float %4575, %4329
  %4681 = fmul fast float %4680, %4638
  %4682 = fadd fast float %4681, %4329
  br i1 %4640, label %4691, label %4683

; <label>:4683                                    ; preds = %4645
  %4684 = and i32 %4393, 32768
  %4685 = icmp eq i32 %4684, 0
  br i1 %4685, label %4701, label %4686

; <label>:4686                                    ; preds = %4683
  %4687 = fmul fast float %4638, 1.270000e+02
  %4688 = fadd fast float %4687, %4318
  %4689 = fadd fast float %4687, %4319
  %4690 = fadd fast float %4687, %4320
  br label %4701

; <label>:4691                                    ; preds = %4645
  %4692 = fsub fast float 1.270000e+02, %4318
  %4693 = fsub fast float 1.270000e+02, %4319
  %4694 = fsub fast float 1.270000e+02, %4320
  %4695 = fmul fast float %4638, %4692
  %4696 = fmul fast float %4638, %4693
  %4697 = fmul fast float %4638, %4694
  %4698 = fadd fast float %4695, %4318
  %4699 = fadd fast float %4696, %4319
  %4700 = fadd fast float %4697, %4320
  br label %4701

; <label>:4701                                    ; preds = %4691, %4686, %4683
  %4702 = phi float [ %4688, %4686 ], [ %4318, %4683 ], [ %4698, %4691 ]
  %4703 = phi float [ %4689, %4686 ], [ %4319, %4683 ], [ %4699, %4691 ]
  %4704 = phi float [ %4690, %4686 ], [ %4320, %4683 ], [ %4700, %4691 ]
  %4705 = call float @dx.op.dot3.f32(i32 55, float %4596, float %4597, float %4598, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4707 = extractvalue %dx.types.CBufRet.f32 %4706, 0
  %4708 = extractvalue %dx.types.CBufRet.f32 %4706, 1
  %4709 = fmul fast float %4708, %4705
  %4710 = fadd fast float %4709, %4707
  %4711 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4712 = bitcast float %4381 to i32
  %4713 = and i32 %4712, 65535
  %4714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4713)  ; LegacyF16ToF32(value)
  %4715 = lshr i32 %4712, 16
  %4716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4715)  ; LegacyF16ToF32(value)
  %4717 = fcmp fast oge float %4714, 0.000000e+00
  %4718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4718, 0
  %4720 = select i1 %4717, float %4714, float %4719
  %4721 = fadd fast float %4720, %4716
  %4722 = fsub fast float %4711, %4317
  %4723 = fmul fast float %4722, %4542
  %4724 = fadd fast float %4723, %4317
  %4725 = fmul fast float %4721, %4542
  %4726 = call float @dx.op.binary.f32(i32 35, float %4316, float %4725)  ; FMax(a,b)
  %4727 = and i32 %4393, 16
  %4728 = icmp eq i32 %4727, 0
  br i1 %4728, label %4750, label %4729

; <label>:4729                                    ; preds = %4701
  %4730 = add i32 %4384, 0
  %4731 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4730, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4732 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4731, %dx.types.Handle %4555, float %4483, float %4486, float undef, float undef, i32 0, i32 0, i32 undef, float %4488, float %4490, float undef, float %4492, float %4494, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4733 = extractvalue %dx.types.ResRet.f32 %4732, 0
  %4734 = extractvalue %dx.types.ResRet.f32 %4732, 1
  %4735 = extractvalue %dx.types.ResRet.f32 %4732, 2
  %4736 = and i32 %4674, 65535
  %4737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4736)  ; LegacyF16ToF32(value)
  %4738 = fmul fast float %4733, %4378
  %4739 = fmul fast float %4734, %4379
  %4740 = fmul fast float %4735, %4380
  %4741 = and i32 %4393, 16384
  %4742 = icmp ne i32 %4741, 0
  %4743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4744 = extractvalue %dx.types.CBufRet.f32 %4743, 0
  %4745 = select i1 %4742, float %4744, float 1.000000e+00
  %4746 = fmul fast float %4745, %4737
  %4747 = fmul fast float %4738, %4746
  %4748 = fmul fast float %4739, %4746
  %4749 = fmul fast float %4740, %4746
  br label %4750

; <label>:4750                                    ; preds = %4729, %4701
  %4751 = phi float [ %4747, %4729 ], [ 0.000000e+00, %4701 ]
  %4752 = phi float [ %4748, %4729 ], [ 0.000000e+00, %4701 ]
  %4753 = phi float [ %4749, %4729 ], [ 0.000000e+00, %4701 ]
  %4754 = fsub fast float %4751, %4323
  %4755 = fsub fast float %4752, %4324
  %4756 = fsub fast float %4753, %4325
  %4757 = fmul fast float %4754, %4542
  %4758 = fmul fast float %4755, %4542
  %4759 = fmul fast float %4756, %4542
  %4760 = fadd fast float %4757, %4323
  %4761 = fadd fast float %4758, %4324
  %4762 = fadd fast float %4759, %4325
  br label %4442

; <label>:4763                                    ; preds = %4442
  br label %4764

; <label>:4764                                    ; preds = %4763, %4259
  %4765 = phi float [ 0.000000e+00, %4259 ], [ %4443, %4763 ]
  %4766 = phi float [ %4228, %4259 ], [ %4444, %4763 ]
  %4767 = phi float [ %4226, %4259 ], [ %4445, %4763 ]
  %4768 = phi float [ %4219, %4259 ], [ %4446, %4763 ]
  %4769 = phi float [ %4220, %4259 ], [ %4447, %4763 ]
  %4770 = phi float [ %4221, %4259 ], [ %4448, %4763 ]
  %4771 = phi float [ 0.000000e+00, %4259 ], [ %4449, %4763 ]
  %4772 = phi float [ 0.000000e+00, %4259 ], [ %4450, %4763 ]
  %4773 = phi float [ %4216, %4259 ], [ %4451, %4763 ]
  %4774 = phi float [ %4217, %4259 ], [ %4452, %4763 ]
  %4775 = phi float [ %4218, %4259 ], [ %4453, %4763 ]
  %4776 = phi float [ %4254, %4259 ], [ %4454, %4763 ]
  %4777 = phi float [ %4255, %4259 ], [ %4455, %4763 ]
  %4778 = phi float [ %4256, %4259 ], [ %4456, %4763 ]
  %4779 = phi float [ %4224, %4259 ], [ %4457, %4763 ]
  %4780 = phi float [ %4223, %4259 ], [ %4458, %4763 ]
  %4781 = phi float [ 0.000000e+00, %4259 ], [ %4459, %4763 ]
  %4782 = phi float [ %4222, %4259 ], [ %4460, %4763 ]
  %4783 = phi float [ %4213, %4259 ], [ %4461, %4763 ]
  %4784 = phi float [ %4214, %4259 ], [ %4462, %4763 ]
  %4785 = phi float [ %4215, %4259 ], [ %4463, %4763 ]
  %4786 = call float @dx.op.dot3.f32(i32 55, float %4776, float %4777, float %4778, float %4776, float %4777, float %4778)  ; Dot3(ax,ay,az,bx,by,bz)
  %4787 = call float @dx.op.unary.f32(i32 25, float %4786)  ; Rsqrt(value)
  %4788 = fmul fast float %4787, %4776
  %4789 = fmul fast float %4787, %4777
  %4790 = fmul fast float %4787, %4778
  %4791 = fadd fast float %4781, %1213
  %4792 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4788, float %4789, float %4790, float %4788, float %4789, float %4790)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = call float @dx.op.unary.f32(i32 25, float %4793)  ; Rsqrt(value)
  %4795 = fmul fast float %4794, %4788
  %4796 = fmul fast float %4794, %4789
  %4797 = fmul fast float %4794, %4790
  br label %4798

; <label>:4798                                    ; preds = %4764, %4210
  %4799 = phi float [ %4795, %4764 ], [ %4254, %4210 ]
  %4800 = phi float [ %4796, %4764 ], [ %4255, %4210 ]
  %4801 = phi float [ %4797, %4764 ], [ %4256, %4210 ]
  %4802 = phi float [ %4783, %4764 ], [ %4213, %4210 ]
  %4803 = phi float [ %4784, %4764 ], [ %4214, %4210 ]
  %4804 = phi float [ %4785, %4764 ], [ %4215, %4210 ]
  %4805 = phi float [ %4773, %4764 ], [ %4216, %4210 ]
  %4806 = phi float [ %4774, %4764 ], [ %4217, %4210 ]
  %4807 = phi float [ %4775, %4764 ], [ %4218, %4210 ]
  %4808 = phi float [ %4768, %4764 ], [ %4219, %4210 ]
  %4809 = phi float [ %4769, %4764 ], [ %4220, %4210 ]
  %4810 = phi float [ %4770, %4764 ], [ %4221, %4210 ]
  %4811 = phi float [ %4782, %4764 ], [ %4222, %4210 ]
  %4812 = phi float [ %4792, %4764 ], [ %1213, %4210 ]
  %4813 = phi float [ %4780, %4764 ], [ %4223, %4210 ]
  %4814 = phi float [ %4779, %4764 ], [ %4224, %4210 ]
  %4815 = phi float [ %4772, %4764 ], [ 0.000000e+00, %4210 ]
  %4816 = phi float [ %4771, %4764 ], [ 0.000000e+00, %4210 ]
  %4817 = phi float [ %4765, %4764 ], [ 0.000000e+00, %4210 ]
  %4818 = phi float [ %4766, %4764 ], [ %4228, %4210 ]
  %4819 = phi float [ %4767, %4764 ], [ %4226, %4210 ]
  %4820 = fadd fast float %4811, 0xBFB99999A0000000
  %4821 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4822 = fmul fast float %4821, 0x3FF1C71C80000000
  %4823 = call float @dx.op.binary.f32(i32 36, float %4811, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4824 = fsub fast float 1.000000e+00, %4822
  %4825 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4826 = fmul fast float %4825, %4802
  %4827 = fmul fast float %4825, %4803
  %4828 = fmul fast float %4825, %4804
  %4829 = call float @dx.op.unary.f32(i32 7, float %4826)  ; Saturate(value)
  %4830 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4831 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4832 = fmul fast float %4822, %4802
  %4833 = fmul fast float %4822, %4803
  %4834 = fmul fast float %4822, %4804
  %4835 = fadd fast float %4832, %4823
  %4836 = fadd fast float %4833, %4823
  %4837 = fadd fast float %4834, %4823
  %4838 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  %4839 = call float @dx.op.unary.f32(i32 7, float %4836)  ; Saturate(value)
  %4840 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4841 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  %4842 = call float @dx.op.binary.f32(i32 36, float %4808, float 1.270000e+02)  ; FMin(a,b)
  %4843 = call float @dx.op.binary.f32(i32 36, float %4809, float 1.270000e+02)  ; FMin(a,b)
  %4844 = call float @dx.op.binary.f32(i32 36, float %4810, float 1.270000e+02)  ; FMin(a,b)
  %4845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4846 = extractvalue %dx.types.CBufRet.i32 %4845, 3
  %4847 = and i32 %4846, 8
  %4848 = icmp ne i32 %4847, 0
  %4849 = call float @dx.op.binary.f32(i32 35, float %4829, float %4802)  ; FMax(a,b)
  %4850 = call float @dx.op.binary.f32(i32 35, float %4830, float %4802)  ; FMax(a,b)
  %4851 = call float @dx.op.binary.f32(i32 35, float %4831, float %4802)  ; FMax(a,b)
  %4852 = call float @dx.op.dot3.f32(i32 55, float %4829, float %4830, float %4831, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4853 = select i1 %216, float %4802, float %4829
  %4854 = select i1 %216, float %4852, float %4830
  %4855 = select i1 %216, float 1.000000e+00, float %4831
  %4856 = select i1 %4848, float %4849, float %4853
  %4857 = select i1 %4848, float %4850, float %4854
  %4858 = select i1 %4848, float %4851, float %4855
  %4859 = and i32 %192, 3
  %4860 = select i1 %186, i32 %4859, i32 0
  %4861 = icmp eq i32 %4860, 1
  br i1 %4861, label %4862, label %4938

; <label>:4862                                    ; preds = %4798
  %4863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.f32 %4863, 0
  %4865 = extractvalue %dx.types.CBufRet.f32 %4863, 1
  %4866 = fadd fast float %4864, %155
  %4867 = fadd fast float %4865, %156
  %4868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.f32 %4868, 0
  %4870 = extractvalue %dx.types.CBufRet.f32 %4868, 1
  %4871 = fsub fast float %4866, %4869
  %4872 = fsub fast float %4867, %4870
  %4873 = fmul fast float %4871, %4871
  %4874 = fmul fast float %4872, %4872
  %4875 = fadd fast float %4873, %4874
  %4876 = call float @dx.op.unary.f32(i32 24, float %4875)  ; Sqrt(value)
  %4877 = extractvalue %dx.types.CBufRet.f32 %4868, 2
  %4878 = fcmp fast olt float %4876, %4877
  br i1 %4878, label %4879, label %4932

; <label>:4879                                    ; preds = %4862
  %4880 = extractvalue %dx.types.CBufRet.f32 %4863, 2
  %4881 = fadd fast float %4880, %157
  %4882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4883 = extractvalue %dx.types.CBufRet.f32 %4882, 0
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = extractvalue %dx.types.CBufRet.f32 %4884, 0
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 0
  %4888 = extractvalue %dx.types.CBufRet.f32 %4882, 1
  %4889 = extractvalue %dx.types.CBufRet.f32 %4884, 1
  %4890 = extractvalue %dx.types.CBufRet.f32 %4886, 1
  %4891 = extractvalue %dx.types.CBufRet.f32 %4882, 3
  %4892 = extractvalue %dx.types.CBufRet.f32 %4884, 3
  %4893 = extractvalue %dx.types.CBufRet.f32 %4886, 3
  %4894 = fadd fast float %4891, %4866
  %4895 = fadd fast float %4892, %4867
  %4896 = fadd fast float %4881, %4893
  %4897 = fmul fast float %4894, %4883
  %4898 = call float @dx.op.tertiary.f32(i32 46, float %4895, float %4885, float %4897)  ; FMad(a,b,c)
  %4899 = call float @dx.op.tertiary.f32(i32 46, float %4896, float %4887, float %4898)  ; FMad(a,b,c)
  %4900 = fmul fast float %4894, %4888
  %4901 = call float @dx.op.tertiary.f32(i32 46, float %4895, float %4889, float %4900)  ; FMad(a,b,c)
  %4902 = call float @dx.op.tertiary.f32(i32 46, float %4896, float %4890, float %4901)  ; FMad(a,b,c)
  %4903 = fsub fast float %4899, %4891
  %4904 = fsub fast float %4902, %4892
  %4905 = fsub fast float %4903, %4869
  %4906 = fadd fast float %4905, %4877
  %4907 = fsub fast float %4904, %4870
  %4908 = fadd fast float %4907, %4877
  %4909 = extractvalue %dx.types.CBufRet.f32 %4868, 3
  %4910 = fmul fast float %4906, %4909
  %4911 = fmul fast float %4908, %4909
  %4912 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4913 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4914 = fsub fast float 1.000000e+00, %4912
  %4915 = fsub fast float 1.000000e+00, %4913
  %4916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %42, float %4914, float %4915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4917 = extractvalue %dx.types.ResRet.f32 %4916, 0
  %4918 = fcmp fast ugt float %4917, 0.000000e+00
  br i1 %4918, label %4919, label %4932

; <label>:4919                                    ; preds = %4879
  %4920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4921 = extractvalue %dx.types.CBufRet.f32 %4920, 2
  %4922 = fmul fast float %4921, %4917
  %4923 = extractvalue %dx.types.CBufRet.f32 %4920, 3
  %4924 = fadd fast float %4923, %4922
  %4925 = extractvalue %dx.types.CBufRet.f32 %4886, 2
  %4926 = fadd fast float %4924, %4893
  %4927 = fmul fast float %4899, %4887
  %4928 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4890, float %4927)  ; FMad(a,b,c)
  %4929 = call float @dx.op.tertiary.f32(i32 46, float %4926, float %4925, float %4928)  ; FMad(a,b,c)
  %4930 = fsub fast float %4929, %4893
  %4931 = fsub fast float %4930, %4880
  br label %4932

; <label>:4932                                    ; preds = %4919, %4879, %4862
  %4933 = phi i1 [ true, %4919 ], [ false, %4879 ], [ false, %4862 ]
  %4934 = phi float [ %4931, %4919 ], [ -1.310720e+05, %4879 ], [ -1.310720e+05, %4862 ]
  %4935 = fsub fast float %4934, %157
  %4936 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4937 = select i1 %4933, float %4936, float 1.000000e+00
  br label %4938

; <label>:4938                                    ; preds = %4932, %4798
  %4939 = phi float [ %4937, %4932 ], [ 0.000000e+00, %4798 ]
  %4940 = icmp eq i32 %4860, 3
  %4941 = select i1 %4940, float 1.000000e+00, float %4939
  %4942 = call float @dx.op.binary.f32(i32 35, float %4817, float %4941)  ; FMax(a,b)
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fcmp fast une float %4943, 0.000000e+00
  %4945 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %4946 = call float @dx.op.unary.f32(i32 25, float %4945)  ; Rsqrt(value)
  br i1 %4944, label %4954, label %4947

; <label>:4947                                    ; preds = %4938
  %4948 = fmul fast float %4946, %155
  %4949 = fmul fast float %4946, %156
  %4950 = fmul fast float %4946, %157
  %4951 = fsub fast float -0.000000e+00, %4948
  %4952 = fsub fast float -0.000000e+00, %4949
  %4953 = fsub fast float -0.000000e+00, %4950
  br label %5122

; <label>:4954                                    ; preds = %4938
  %4955 = fmul fast float %155, %4946
  %4956 = fsub fast float -0.000000e+00, %4955
  %4957 = fmul fast float %156, %4946
  %4958 = fsub fast float -0.000000e+00, %4957
  %4959 = fmul fast float %157, %4946
  %4960 = fsub fast float -0.000000e+00, %4959
  %4961 = call float @dx.op.dot3.f32(i32 55, float %4956, float %4958, float %4960, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4962 = fmul fast float %4943, 2.500000e+00
  %4963 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4964 = fmul fast float %4943, 0x4013FFFFE0000000
  %4965 = fadd fast float %4964, 0xBFFFFFFFE0000000
  %4966 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4967 = fmul fast float %4943, 0x4004000020000000
  %4968 = fadd fast float %4967, 0xBFF8000040000000
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4971 = fmul fast float %4820, 1.000000e+01
  %4972 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4973 = fmul fast float %4972, 2.000000e+00
  %4974 = fsub fast float 3.000000e+00, %4973
  %4975 = fmul fast float %4972, %4972
  %4976 = fmul fast float %4975, %4974
  %4977 = fsub fast float 1.000000e+00, %4976
  %4978 = fsub fast float 0x3FE3333340000000, %4841
  %4979 = fmul fast float %4978, 0x400AAAAAA0000000
  %4980 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4981 = fmul fast float %4977, %4980
  %4982 = fmul fast float %4856, 0x3FEA2B8620000000
  %4983 = fmul fast float %4857, 0x3FEA2B8620000000
  %4984 = fmul fast float %4858, 0x3FEA2B8620000000
  %4985 = fadd fast float %4982, 0x3FC81DFBA0000000
  %4986 = fmul fast float %4985, %4856
  %4987 = fadd fast float %4986, 0x3F910E6020000000
  %4988 = fadd fast float %4983, 0x3FC81DFBA0000000
  %4989 = fmul fast float %4988, %4857
  %4990 = fadd fast float %4989, 0x3F910E6020000000
  %4991 = fadd fast float %4984, 0x3FC81DFBA0000000
  %4992 = fmul fast float %4991, %4858
  %4993 = fadd fast float %4992, 0x3F910E6020000000
  %4994 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4995 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4996 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4997 = fsub fast float %4994, %4856
  %4998 = fsub fast float %4995, %4857
  %4999 = fsub fast float %4996, %4858
  %5000 = fmul fast float %4997, %4970
  %5001 = fmul fast float %5000, %4981
  %5002 = fmul fast float %4998, %4970
  %5003 = fmul fast float %5002, %4981
  %5004 = fmul fast float %4999, %4970
  %5005 = fmul fast float %5004, %4981
  %5006 = fadd fast float %5001, %4856
  %5007 = fadd fast float %5003, %4857
  %5008 = fadd fast float %5005, %4858
  %5009 = fmul fast float %4814, %4814
  %5010 = fmul fast float %5009, %5009
  %5011 = fadd fast float %4966, 1.000000e+00
  %5012 = fsub fast float %5011, %4981
  %5013 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  %5014 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5015 = call float @dx.op.unary.f32(i32 7, float %5014)  ; Saturate(value)
  %5016 = fsub fast float 1.000000e+00, %5010
  %5017 = call float @dx.op.binary.f32(i32 36, float %5013, float %5016)  ; FMin(a,b)
  %5018 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %5019 = call float @dx.op.binary.f32(i32 35, float %5017, float %5018)  ; FMax(a,b)
  %5020 = fadd fast float %5015, 0xBFE4CCCCC0000000
  %5021 = fmul fast float %5020, 0x4006DB6DA0000000
  %5022 = call float @dx.op.unary.f32(i32 7, float %5021)  ; Saturate(value)
  %5023 = fmul fast float %5022, 2.000000e+00
  %5024 = fsub fast float 3.000000e+00, %5023
  %5025 = bitcast float %4838 to i32
  %5026 = ashr i32 %5025, 1
  %5027 = add nsw i32 %5026, 532487669
  %5028 = bitcast i32 %5027 to float
  %5029 = fsub fast float 1.000000e+00, %5028
  %5030 = bitcast float %5029 to i32
  %5031 = sub nsw i32 2129859010, %5030
  %5032 = bitcast i32 %5031 to float
  %5033 = fmul fast float %5032, 2.000000e+00
  %5034 = bitcast float %4839 to i32
  %5035 = ashr i32 %5034, 1
  %5036 = add nsw i32 %5035, 532487669
  %5037 = bitcast i32 %5036 to float
  %5038 = fsub fast float 1.000000e+00, %5037
  %5039 = bitcast float %5038 to i32
  %5040 = sub nsw i32 2129859010, %5039
  %5041 = bitcast i32 %5040 to float
  %5042 = fmul fast float %5041, 2.000000e+00
  %5043 = bitcast float %4840 to i32
  %5044 = ashr i32 %5043, 1
  %5045 = add nsw i32 %5044, 532487669
  %5046 = bitcast i32 %5045 to float
  %5047 = fsub fast float 1.000000e+00, %5046
  %5048 = bitcast float %5047 to i32
  %5049 = sub nsw i32 2129859010, %5048
  %5050 = bitcast i32 %5049 to float
  %5051 = fmul fast float %5050, 2.000000e+00
  %5052 = fsub fast float 0x4002A9FBE0000000, %5033
  %5053 = fadd fast float %5033, 0x3FD54FDF00000000
  %5054 = bitcast float %5053 to i32
  %5055 = sub nsw i32 2129859010, %5054
  %5056 = bitcast i32 %5055 to float
  %5057 = fmul fast float %5056, %5052
  %5058 = fmul fast float %5057, %5057
  %5059 = fsub fast float 0x4002A9FBE0000000, %5042
  %5060 = fadd fast float %5042, 0x3FD54FDF00000000
  %5061 = bitcast float %5060 to i32
  %5062 = sub nsw i32 2129859010, %5061
  %5063 = bitcast i32 %5062 to float
  %5064 = fmul fast float %5063, %5059
  %5065 = fmul fast float %5064, %5064
  %5066 = fsub fast float 0x4002A9FBE0000000, %5051
  %5067 = fadd fast float %5051, 0x3FD54FDF00000000
  %5068 = bitcast float %5067 to i32
  %5069 = sub nsw i32 2129859010, %5068
  %5070 = bitcast i32 %5069 to float
  %5071 = fmul fast float %5070, %5066
  %5072 = fmul fast float %5071, %5071
  %5073 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5058)  ; FMax(a,b)
  %5074 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5065)  ; FMax(a,b)
  %5075 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5072)  ; FMax(a,b)
  %5076 = fsub fast float 1.000000e+00, %4961
  %5077 = fadd fast float %5076, %4977
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fsub fast float 1.000000e+00, %4941
  %5080 = fmul fast float %5019, %5079
  %5081 = fmul fast float %5022, %5022
  %5082 = fmul fast float %5081, %5080
  %5083 = fmul fast float %5082, %5024
  %5084 = fmul fast float %5079, 0xBFE99999A0000000
  %5085 = fmul fast float %5084, %4970
  %5086 = fmul fast float %5085, %4981
  %5087 = fadd fast float %5086, 1.000000e+00
  %5088 = fadd fast float %4841, -1.000000e+00
  %5089 = fmul fast float %5087, %5088
  %5090 = fadd fast float %5089, 1.000000e+00
  %5091 = fsub fast float %5073, %4838
  %5092 = fsub fast float %5074, %4839
  %5093 = fsub fast float %5075, %4840
  %5094 = fmul fast float %5083, %5091
  %5095 = fmul fast float %5083, %5092
  %5096 = fmul fast float %5083, %5093
  %5097 = fadd fast float %5094, %4838
  %5098 = fadd fast float %5095, %4839
  %5099 = fadd fast float %5096, %4840
  %5100 = fsub fast float %99, %4799
  %5101 = fsub fast float %100, %4800
  %5102 = fsub fast float %101, %4801
  %5103 = fmul fast float %5083, %5100
  %5104 = fmul fast float %5083, %5101
  %5105 = fmul fast float %5083, %5102
  %5106 = fadd fast float %5103, %4799
  %5107 = fadd fast float %5104, %4800
  %5108 = fadd fast float %5105, %4801
  %5109 = fmul fast float %5083, %5078
  %5110 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5111 = fsub fast float 1.000000e+00, %5110
  %5112 = fmul fast float %5109, %5111
  %5113 = fadd fast float %5112, %5110
  %5114 = fsub fast float 1.000000e+00, %4814
  %5115 = fmul fast float %5083, %5114
  %5116 = fadd fast float %5115, %4814
  %5117 = call float @dx.op.dot3.f32(i32 55, float %5106, float %5107, float %5108, float %5106, float %5107, float %5108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5118 = call float @dx.op.unary.f32(i32 25, float %5117)  ; Rsqrt(value)
  %5119 = fmul fast float %5106, %5118
  %5120 = fmul fast float %5107, %5118
  %5121 = fmul fast float %5108, %5118
  br label %5122

; <label>:5122                                    ; preds = %4954, %4947
  %5123 = phi float [ %4953, %4947 ], [ %4960, %4954 ]
  %5124 = phi float [ %4952, %4947 ], [ %4958, %4954 ]
  %5125 = phi float [ %4951, %4947 ], [ %4956, %4954 ]
  %5126 = phi float [ %4950, %4947 ], [ %4959, %4954 ]
  %5127 = phi float [ %4949, %4947 ], [ %4957, %4954 ]
  %5128 = phi float [ %4948, %4947 ], [ %4955, %4954 ]
  %5129 = phi float [ %4856, %4947 ], [ %5006, %4954 ]
  %5130 = phi float [ %4857, %4947 ], [ %5007, %4954 ]
  %5131 = phi float [ %4858, %4947 ], [ %5008, %4954 ]
  %5132 = phi float [ %4838, %4947 ], [ %5097, %4954 ]
  %5133 = phi float [ %4839, %4947 ], [ %5098, %4954 ]
  %5134 = phi float [ %4840, %4947 ], [ %5099, %4954 ]
  %5135 = phi float [ %4799, %4947 ], [ %5119, %4954 ]
  %5136 = phi float [ %4800, %4947 ], [ %5120, %4954 ]
  %5137 = phi float [ %4801, %4947 ], [ %5121, %4954 ]
  %5138 = phi float [ %4841, %4947 ], [ %5113, %4954 ]
  %5139 = phi float [ %4814, %4947 ], [ %5116, %4954 ]
  %5140 = select i1 %216, float 0.000000e+00, float %5134
  %5141 = call float @dx.op.dot3.f32(i32 55, float %5135, float %5136, float %5137, float %5125, float %5124, float %5123)  ; Dot3(ax,ay,az,bx,by,bz)
  %5142 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  %5143 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5127, float %5126, float %5135, float %5136, float %5137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5144 = fmul fast float %5143, 2.000000e+00
  %5145 = fmul fast float %5144, %5135
  %5146 = fmul fast float %5144, %5136
  %5147 = fmul fast float %5144, %5137
  %5148 = fsub fast float %5128, %5145
  %5149 = fsub fast float %5127, %5146
  %5150 = fsub fast float %5126, %5147
  %5151 = call float @dx.op.binary.f32(i32 36, float %5139, float 1.000000e+00)  ; FMin(a,b)
  %5152 = fsub fast float 1.000000e+00, %5151
  %5153 = bitcast float %5152 to i32
  %5154 = ashr i32 %5153, 1
  %5155 = add nsw i32 %5154, 532487669
  %5156 = bitcast i32 %5155 to float
  %5157 = fsub fast float 1.000000e+00, %5138
  %5158 = call float @dx.op.binary.f32(i32 35, float %5157, float 0x3F847AE140000000)  ; FMax(a,b)
  %5159 = fmul fast float %5158, %5158
  %5160 = fmul fast float %5159, %5159
  %5161 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %42, float %5156, float %5160, float %5161, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5163 = extractvalue %dx.types.ResRet.f32 %5162, 0
  %5164 = fsub fast float 1.000000e+00, %5139
  %5165 = bitcast float %5164 to i32
  %5166 = sub nsw i32 2129859010, %5165
  %5167 = fsub fast float 1.000000e+00, %60
  %5168 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %5169 = call float @dx.op.binary.f32(i32 35, float %5168, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5170 = fdiv fast float %5167, %5169
  %5171 = call float @dx.op.dot3.f32(i32 55, float %5135, float %5136, float %5137, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %5172 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5173 = fmul fast float %5172, 5.000000e-01
  %5174 = fadd fast float %5173, 5.000000e-01
  %5175 = fmul fast float %5174, %60
  %5176 = call float @dx.op.dot3.f32(i32 55, float %5135, float %5136, float %5137, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %5177 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5178 = fmul fast float %5177, %5170
  %5179 = fadd fast float %5175, %5178
  %5180 = fsub fast float 5.000000e-01, %5173
  %5181 = fmul fast float %5180, %5129
  %5182 = fmul fast float %5180, %5130
  %5183 = fmul fast float %5180, %5131
  %5184 = fadd fast float %5179, %5181
  %5185 = fadd fast float %5179, %5182
  %5186 = fadd fast float %5179, %5183
  %5187 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %5188 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5189 = fmul fast float %5188, 5.000000e-01
  %5190 = fadd fast float %5189, 5.000000e-01
  %5191 = fmul fast float %5190, %60
  %5192 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %5193 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5194 = fmul fast float %5193, %5170
  %5195 = fadd fast float %5191, %5194
  %5196 = fsub fast float 5.000000e-01, %5189
  %5197 = fmul fast float %5196, %5129
  %5198 = fmul fast float %5196, %5130
  %5199 = fmul fast float %5196, %5131
  %5200 = fadd fast float %5195, %5197
  %5201 = fadd fast float %5195, %5198
  %5202 = fadd fast float %5195, %5199
  %5203 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 0
  %5206 = call float @dx.op.binary.f32(i32 36, float %5129, float %5205)  ; FMin(a,b)
  %5207 = fmul fast float %5206, %5152
  %5208 = fsub fast float 1.000000e+00, %5207
  %5209 = bitcast float %5208 to i32
  %5210 = sub nsw i32 2129859010, %5209
  %5211 = bitcast i32 %5210 to float
  %5212 = call float @dx.op.binary.f32(i32 36, float %5130, float %5205)  ; FMin(a,b)
  %5213 = fmul fast float %5212, %5152
  %5214 = fsub fast float 1.000000e+00, %5213
  %5215 = bitcast float %5214 to i32
  %5216 = sub nsw i32 2129859010, %5215
  %5217 = bitcast i32 %5216 to float
  %5218 = call float @dx.op.binary.f32(i32 36, float %5131, float %5205)  ; FMin(a,b)
  %5219 = fmul fast float %5218, %5152
  %5220 = fsub fast float 1.000000e+00, %5219
  %5221 = bitcast float %5220 to i32
  %5222 = sub nsw i32 2129859010, %5221
  %5223 = bitcast i32 %5222 to float
  %5224 = fmul fast float %5151, %61
  %5225 = fmul fast float %5224, %5184
  %5226 = fmul fast float %5225, %5211
  %5227 = fmul fast float %5151, %62
  %5228 = fmul fast float %5227, %5185
  %5229 = fmul fast float %5228, %5217
  %5230 = fmul fast float %5151, %63
  %5231 = fmul fast float %5230, %5186
  %5232 = fmul fast float %5231, %5223
  %5233 = call float @dx.op.binary.f32(i32 36, float %5132, float %5205)  ; FMin(a,b)
  %5234 = fmul fast float %5233, %5152
  %5235 = fsub fast float 1.000000e+00, %5234
  %5236 = bitcast float %5235 to i32
  %5237 = sub nsw i32 2129859010, %5236
  %5238 = bitcast i32 %5237 to float
  %5239 = call float @dx.op.binary.f32(i32 36, float %5133, float %5205)  ; FMin(a,b)
  %5240 = fmul fast float %5239, %5152
  %5241 = fsub fast float 1.000000e+00, %5240
  %5242 = bitcast float %5241 to i32
  %5243 = sub nsw i32 2129859010, %5242
  %5244 = bitcast i32 %5243 to float
  %5245 = call float @dx.op.binary.f32(i32 36, float %5140, float %5205)  ; FMin(a,b)
  %5246 = fmul fast float %5245, %5152
  %5247 = fsub fast float 1.000000e+00, %5246
  %5248 = bitcast float %5247 to i32
  %5249 = sub nsw i32 2129859010, %5248
  %5250 = bitcast i32 %5249 to float
  %5251 = fmul fast float %5224, %5200
  %5252 = fmul fast float %5251, %5238
  %5253 = fmul fast float %5227, %5201
  %5254 = fmul fast float %5253, %5244
  %5255 = fmul fast float %5230, %5202
  %5256 = fmul fast float %5255, %5250
  %5257 = call float @dx.op.dot3.f32(i32 55, float %5226, float %5229, float %5232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5258 = select i1 %216, float 0.000000e+00, float %5226
  %5259 = select i1 %216, float %5257, float %5229
  %5260 = select i1 %216, float 0.000000e+00, float %5232
  %5261 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5254, float %5256, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5262 = select i1 %216, float 0.000000e+00, float %5252
  %5263 = select i1 %216, float %5261, float %5254
  %5264 = select i1 %216, float 0.000000e+00, float %5256
  %5265 = fmul fast float %4225, %4225
  %5266 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5267 = fmul fast float %5142, 9.843750e-01
  %5268 = fmul fast float %5138, 9.843750e-01
  %5269 = fadd fast float %5267, 7.812500e-03
  %5270 = fadd fast float %5268, 7.812500e-03
  %5271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %5269, float %5270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5272 = extractvalue %dx.types.ResRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.ResRet.f32 %5271, 1
  %5274 = extractvalue %dx.types.ResRet.f32 %5271, 2
  %5275 = extractvalue %dx.types.ResRet.f32 %5271, 3
  %5276 = fsub fast float 1.000000e+00, %5266
  %5277 = fsub fast float %5274, %5272
  %5278 = fsub fast float %5275, %5273
  %5279 = fmul fast float %5277, %5276
  %5280 = fmul fast float %5278, %5276
  %5281 = fadd fast float %5279, %5272
  %5282 = fadd fast float %5280, %5273
  %5283 = fmul fast float %5281, %5132
  %5284 = fmul fast float %5281, %5133
  %5285 = fmul fast float %5281, %5140
  %5286 = fadd fast float %5283, %5282
  %5287 = fadd fast float %5284, %5282
  %5288 = fadd fast float %5285, %5282
  %5289 = fcmp fast ogt float %4815, 0.000000e+00
  br i1 %5289, label %5290, label %5316

; <label>:5290                                    ; preds = %5122
  %5291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %4815, float %5142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5292 = extractvalue %dx.types.ResRet.f32 %5291, 0
  %5293 = extractvalue %dx.types.ResRet.f32 %5291, 1
  %5294 = extractvalue %dx.types.ResRet.f32 %5291, 2
  %5295 = fadd fast float %5292, -5.000000e-01
  %5296 = fadd fast float %5293, -5.000000e-01
  %5297 = fadd fast float %5294, -5.000000e-01
  %5298 = fsub fast float 1.000000e+00, %5132
  %5299 = fsub fast float 1.000000e+00, %5133
  %5300 = fsub fast float 1.000000e+00, %5140
  %5301 = fmul fast float %5132, 4.000000e+00
  %5302 = fmul fast float %5301, %5298
  %5303 = fmul fast float %5302, %5295
  %5304 = fmul fast float %5133, 4.000000e+00
  %5305 = fmul fast float %5304, %5299
  %5306 = fmul fast float %5305, %5296
  %5307 = fmul fast float %5140, 4.000000e+00
  %5308 = fmul fast float %5307, %5300
  %5309 = fmul fast float %5308, %5297
  %5310 = fadd fast float %5303, %5286
  %5311 = fadd fast float %5306, %5287
  %5312 = fadd fast float %5309, %5288
  %5313 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5314 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5312)  ; Saturate(value)
  br label %5316

; <label>:5316                                    ; preds = %5290, %5122
  %5317 = phi float [ %5313, %5290 ], [ %5286, %5122 ]
  %5318 = phi float [ %5314, %5290 ], [ %5287, %5122 ]
  %5319 = phi float [ %5315, %5290 ], [ %5288, %5122 ]
  %5320 = call float @dx.op.binary.f32(i32 35, float %5318, float %5319)  ; FMax(a,b)
  %5321 = call float @dx.op.binary.f32(i32 35, float %5317, float %5320)  ; FMax(a,b)
  %5322 = fsub fast float 1.000000e+00, %5321
  %5323 = fmul fast float %5321, %5138
  %5324 = fadd fast float %5323, %5138
  %5325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5326 = extractvalue %dx.types.CBufRet.f32 %5325, 2
  %5327 = extractvalue %dx.types.CBufRet.f32 %5325, 3
  %5328 = fmul fast float %5324, %5326
  %5329 = fadd fast float %5328, %5327
  %5330 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5331 = fsub fast float 1.000000e+00, %5163
  %5332 = fadd fast float %5331, %5330
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5334 = fcmp fast olt float %5333, 1.000000e+00
  br i1 %5334, label %5335, label %5783

; <label>:5335                                    ; preds = %5316
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 2
  %5338 = extractvalue %dx.types.CBufRet.f32 %5336, 3
  %5339 = fmul fast float %5337, %92
  %5340 = fmul fast float %5338, %93
  %5341 = fptoui float %5339 to i32
  %5342 = fptoui float %5340 to i32
  %5343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5344 = extractvalue %dx.types.CBufRet.f32 %5343, 0
  %5345 = extractvalue %dx.types.CBufRet.f32 %5343, 2
  %5346 = extractvalue %dx.types.CBufRet.f32 %5343, 3
  %5347 = fadd fast float %80, -4.000000e+00
  %5348 = call float @dx.op.binary.f32(i32 35, float %5347, float 0.000000e+00)  ; FMax(a,b)
  %5349 = fadd fast float %5348, %5344
  %5350 = fmul fast float %5349, %5345
  %5351 = call float @dx.op.unary.f32(i32 23, float %5350)  ; Log(value)
  %5352 = fmul fast float %5351, %5346
  %5353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.f32 %5353, 2
  %5355 = fmul fast float %5352, %5354
  %5356 = call float @dx.op.unary.f32(i32 7, float %5355)  ; Saturate(value)
  %5357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5358 = extractvalue %dx.types.CBufRet.i32 %5357, 1
  %5359 = add i32 %5358, -1
  %5360 = uitofp i32 %5358 to float
  %5361 = fmul fast float %5360, %5356
  %5362 = fptoui float %5361 to i32
  %5363 = call i32 @dx.op.binary.i32(i32 40, i32 %5362, i32 %5359)  ; UMin(a,b)
  %5364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.i32 %5364, 2
  %5366 = extractvalue %dx.types.CBufRet.i32 %5364, 3
  %5367 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5342, i32 %5365, i32 %5341)  ; UMad(a,b,c)
  %5368 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5363, i32 %5366, i32 %5367)  ; UMad(a,b,c)
  %5369 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %5370 = fptoui float %5369 to i32
  %5371 = lshr i32 %5370, 5
  %5372 = call i32 @dx.op.binary.i32(i32 40, i32 %5371, i32 8191)  ; UMin(a,b)
  br i1 false, label %5373, label %5380

; <label>:5373                                    ; preds = %5335
  %5374 = fadd fast float 0.000000e+00, %5150
  %5375 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5374, float %5148, float %5149, float %5374)  ; Dot3(ax,ay,az,bx,by,bz)
  %5376 = call float @dx.op.unary.f32(i32 25, float %5375)  ; Rsqrt(value)
  %5377 = fmul fast float %5376, %5148
  %5378 = fmul fast float %5376, %5149
  %5379 = fmul fast float %5374, %5376
  br label %5380

; <label>:5380                                    ; preds = %5373, %5335
  %5381 = phi float [ %5377, %5373 ], [ %5148, %5335 ]
  %5382 = phi float [ %5378, %5373 ], [ %5149, %5335 ]
  %5383 = phi float [ %5379, %5373 ], [ %5150, %5335 ]
  %5384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.i32 %5384, 2
  %5386 = add nsw i32 %5385, -1
  %5387 = call i32 @dx.op.binary.i32(i32 37, i32 %5386, i32 0)  ; IMax(a,b)
  %5388 = shl i32 %5372, 2
  %5389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5388, i32 undef)  ; BufferLoad(srv,index,wot)
  %5390 = extractvalue %dx.types.ResRet.i32 %5389, 0
  %5391 = lshr i32 %5390, 16
  %5392 = and i32 %5390, 65535
  %5393 = lshr i32 %5390, 21
  %5394 = lshr i32 %5392, 5
  %5395 = call i32 @dx.op.binary.i32(i32 40, i32 %5394, i32 %5387)  ; UMin(a,b)
  %5396 = icmp ugt i32 %5393, %5395
  br i1 %5396, label %5759, label %5397

; <label>:5397                                    ; preds = %5380
  br label %5398

; <label>:5398                                    ; preds = %5751, %5397
  %5399 = phi float [ %5752, %5751 ], [ 0.000000e+00, %5397 ]
  %5400 = phi float [ %5753, %5751 ], [ 0.000000e+00, %5397 ]
  %5401 = phi float [ %5754, %5751 ], [ 0.000000e+00, %5397 ]
  %5402 = phi float [ %5755, %5751 ], [ 1.000000e+00, %5397 ]
  %5403 = phi i32 [ %5756, %5751 ], [ %5393, %5397 ]
  %5404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.i32 %5404, 2
  %5406 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5368, i32 %5405, i32 %5403)  ; UMad(a,b,c)
  %5407 = shl i32 %5406, 2
  %5408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5407, i32 undef)  ; BufferLoad(srv,index,wot)
  %5409 = extractvalue %dx.types.ResRet.i32 %5408, 0
  %5410 = shl i32 %5403, 5
  %5411 = sub nsw i32 %5391, %5410
  %5412 = call i32 @dx.op.binary.i32(i32 37, i32 %5411, i32 0)  ; IMax(a,b)
  %5413 = call i32 @dx.op.binary.i32(i32 38, i32 %5412, i32 31)  ; IMin(a,b)
  %5414 = sub nsw i32 1, %5391
  %5415 = add nsw i32 %5414, %5392
  %5416 = call i32 @dx.op.binary.i32(i32 37, i32 %5415, i32 0)  ; IMax(a,b)
  %5417 = call i32 @dx.op.binary.i32(i32 38, i32 %5416, i32 32)  ; IMin(a,b)
  %5418 = and i32 %5417, 31
  %5419 = shl i32 -1, %5418
  %5420 = xor i32 %5419, -1
  %5421 = and i32 %5413, 31
  %5422 = shl i32 %5420, %5421
  %5423 = icmp eq i32 %5417, 32
  %5424 = select i1 %5423, i32 -1, i32 %5422
  %5425 = and i32 %5424, %5409
  %5426 = icmp eq i32 %5425, 0
  br i1 %5426, label %5751, label %5427

; <label>:5427                                    ; preds = %5398
  br label %5428

; <label>:5428                                    ; preds = %5534, %5427
  %5429 = phi float [ %5535, %5534 ], [ %5399, %5427 ]
  %5430 = phi float [ %5536, %5534 ], [ %5400, %5427 ]
  %5431 = phi float [ %5537, %5534 ], [ %5401, %5427 ]
  %5432 = phi float [ %5538, %5534 ], [ %5402, %5427 ]
  %5433 = phi i32 [ %5438, %5534 ], [ %5425, %5427 ]
  %5434 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5433)  ; FirstbitLo(value)
  %5435 = add i32 %5434, %5410
  %5436 = and i32 %5434, 31
  %5437 = shl i32 1, %5436
  %5438 = xor i32 %5437, %5433
  %5439 = mul i32 %5435, 72
  %5440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5439, i32 undef)  ; BufferLoad(srv,index,wot)
  %5441 = extractvalue %dx.types.ResRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.ResRet.f32 %5440, 1
  %5443 = extractvalue %dx.types.ResRet.f32 %5440, 2
  %5444 = add i32 %5439, 12
  %5445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %5444, i32 undef)  ; BufferLoad(srv,index,wot)
  %5446 = extractvalue %dx.types.ResRet.i32 %5445, 0
  %5447 = add i32 %5439, 16
  %5448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5447, i32 undef)  ; BufferLoad(srv,index,wot)
  %5449 = extractvalue %dx.types.ResRet.f32 %5448, 0
  %5450 = extractvalue %dx.types.ResRet.f32 %5448, 1
  %5451 = extractvalue %dx.types.ResRet.f32 %5448, 2
  %5452 = add i32 %5439, 28
  %5453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5452, i32 undef)  ; BufferLoad(srv,index,wot)
  %5454 = extractvalue %dx.types.ResRet.f32 %5453, 0
  %5455 = add i32 %5439, 32
  %5456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5455, i32 undef)  ; BufferLoad(srv,index,wot)
  %5457 = extractvalue %dx.types.ResRet.f32 %5456, 0
  %5458 = extractvalue %dx.types.ResRet.f32 %5456, 1
  %5459 = extractvalue %dx.types.ResRet.f32 %5456, 2
  %5460 = extractvalue %dx.types.ResRet.f32 %5456, 3
  %5461 = add i32 %5439, 48
  %5462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5461, i32 undef)  ; BufferLoad(srv,index,wot)
  %5463 = extractvalue %dx.types.ResRet.f32 %5462, 0
  %5464 = extractvalue %dx.types.ResRet.f32 %5462, 1
  %5465 = add i32 %5439, 56
  %5466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5465, i32 undef)  ; BufferLoad(srv,index,wot)
  %5467 = extractvalue %dx.types.ResRet.f32 %5466, 0
  %5468 = extractvalue %dx.types.ResRet.f32 %5466, 1
  %5469 = add i32 %5439, 64
  %5470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5469, i32 undef)  ; BufferLoad(srv,index,wot)
  %5471 = extractvalue %dx.types.ResRet.f32 %5470, 0
  %5472 = extractvalue %dx.types.ResRet.f32 %5470, 1
  %5473 = mul i32 %5435, 60
  %5474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5473, i32 undef)  ; BufferLoad(srv,index,wot)
  %5475 = extractvalue %dx.types.ResRet.f32 %5474, 0
  %5476 = extractvalue %dx.types.ResRet.f32 %5474, 1
  %5477 = extractvalue %dx.types.ResRet.f32 %5474, 2
  %5478 = add i32 %5473, 12
  %5479 = add i32 %5473, 48
  %5480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5479, i32 undef)  ; BufferLoad(srv,index,wot)
  %5481 = extractvalue %dx.types.ResRet.f32 %5480, 0
  %5482 = extractvalue %dx.types.ResRet.f32 %5480, 1
  %5483 = extractvalue %dx.types.ResRet.f32 %5480, 2
  %5484 = and i32 %5446, 32767
  %5485 = bitcast float %5441 to i32
  %5486 = icmp eq i32 %5485, -1
  %5487 = bitcast float %5442 to i32
  %5488 = and i32 %5446, 32768
  %5489 = icmp ne i32 %5488, 0
  %5490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5491 = extractvalue %dx.types.CBufRet.f32 %5490, 0
  %5492 = extractvalue %dx.types.CBufRet.f32 %5490, 1
  %5493 = extractvalue %dx.types.CBufRet.f32 %5490, 2
  %5494 = fsub fast float %5475, %5491
  %5495 = fsub fast float %5476, %5492
  %5496 = fsub fast float %5477, %5493
  %5497 = fsub fast float %155, %5494
  %5498 = fsub fast float %156, %5495
  %5499 = fsub fast float %157, %5496
  %5500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5478, i32 undef)  ; BufferLoad(srv,index,wot)
  %5501 = extractvalue %dx.types.ResRet.f32 %5500, 0
  %5502 = extractvalue %dx.types.ResRet.f32 %5500, 1
  %5503 = extractvalue %dx.types.ResRet.f32 %5500, 2
  %5504 = call float @dx.op.dot3.f32(i32 55, float %5497, float %5498, float %5499, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = add i32 %5473, 24
  %5506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5505, i32 undef)  ; BufferLoad(srv,index,wot)
  %5507 = extractvalue %dx.types.ResRet.f32 %5506, 0
  %5508 = extractvalue %dx.types.ResRet.f32 %5506, 1
  %5509 = extractvalue %dx.types.ResRet.f32 %5506, 2
  %5510 = call float @dx.op.dot3.f32(i32 55, float %5497, float %5498, float %5499, float %5507, float %5508, float %5509)  ; Dot3(ax,ay,az,bx,by,bz)
  %5511 = add i32 %5473, 36
  %5512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5511, i32 undef)  ; BufferLoad(srv,index,wot)
  %5513 = extractvalue %dx.types.ResRet.f32 %5512, 0
  %5514 = extractvalue %dx.types.ResRet.f32 %5512, 1
  %5515 = extractvalue %dx.types.ResRet.f32 %5512, 2
  %5516 = call float @dx.op.dot3.f32(i32 55, float %5497, float %5498, float %5499, float %5513, float %5514, float %5515)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = call float @dx.op.unary.f32(i32 6, float %5504)  ; FAbs(value)
  %5518 = call float @dx.op.unary.f32(i32 6, float %5510)  ; FAbs(value)
  %5519 = call float @dx.op.unary.f32(i32 6, float %5516)  ; FAbs(value)
  %5520 = fsub fast float %5481, %5517
  %5521 = fsub fast float %5482, %5518
  %5522 = fsub fast float %5483, %5519
  %5523 = fmul fast float %5520, %5449
  %5524 = fmul fast float %5521, %5450
  %5525 = fmul fast float %5522, %5451
  %5526 = call float @dx.op.binary.f32(i32 36, float %5524, float %5525)  ; FMin(a,b)
  %5527 = call float @dx.op.binary.f32(i32 36, float %5523, float %5526)  ; FMin(a,b)
  %5528 = call float @dx.op.unary.f32(i32 7, float %5527)  ; Saturate(value)
  %5529 = call float @dx.op.binary.f32(i32 36, float %5432, float %5528)  ; FMin(a,b)
  %5530 = uitofp i1 %5489 to float
  %5531 = fsub fast float 1.000000e+00, %5530
  %5532 = fmul fast float %5529, %5531
  %5533 = fcmp fast ogt float %5532, 0.000000e+00
  br i1 %5533, label %5540, label %5534

; <label>:5534                                    ; preds = %5682, %5428
  %5535 = phi float [ %5746, %5682 ], [ %5429, %5428 ]
  %5536 = phi float [ %5747, %5682 ], [ %5430, %5428 ]
  %5537 = phi float [ %5748, %5682 ], [ %5431, %5428 ]
  %5538 = phi float [ %5749, %5682 ], [ %5432, %5428 ]
  %5539 = icmp eq i32 %5433, %5437
  br i1 %5539, label %5750, label %5428

; <label>:5540                                    ; preds = %5428
  br i1 %5486, label %5598, label %5541

; <label>:5541                                    ; preds = %5540
  %5542 = fsub fast float -0.000000e+00, %5501
  %5543 = fsub fast float -0.000000e+00, %5502
  %5544 = fsub fast float -0.000000e+00, %5503
  %5545 = call float @dx.op.dot3.f32(i32 55, float %5381, float %5382, float %5383, float %5542, float %5543, float %5544)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = fsub fast float -0.000000e+00, %5545
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5497, float %5498, float %5499, float %5542, float %5543, float %5544)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = fadd fast float %5547, %5464
  %5549 = fadd fast float %5463, %5547
  %5550 = fsub fast float -0.000000e+00, %5549
  %5551 = fcmp ogt float %5545, -0.000000e+00
  %5552 = select i1 %5551, float %5550, float %5548
  %5553 = call float @dx.op.unary.f32(i32 6, float %5546)  ; FAbs(value)
  %5554 = fdiv fast float 1.000000e+00, %5553
  %5555 = fmul fast float %5552, %5554
  %5556 = call float @dx.op.binary.f32(i32 35, float %5555, float 0.000000e+00)  ; FMax(a,b)
  %5557 = fsub fast float -0.000000e+00, %5507
  %5558 = fsub fast float -0.000000e+00, %5508
  %5559 = fsub fast float -0.000000e+00, %5509
  %5560 = call float @dx.op.dot3.f32(i32 55, float %5381, float %5382, float %5383, float %5557, float %5558, float %5559)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = fsub fast float -0.000000e+00, %5560
  %5562 = call float @dx.op.dot3.f32(i32 55, float %5497, float %5498, float %5499, float %5557, float %5558, float %5559)  ; Dot3(ax,ay,az,bx,by,bz)
  %5563 = fadd fast float %5562, %5468
  %5564 = fadd fast float %5467, %5562
  %5565 = fsub fast float -0.000000e+00, %5564
  %5566 = fcmp ogt float %5560, -0.000000e+00
  %5567 = select i1 %5566, float %5565, float %5563
  %5568 = call float @dx.op.unary.f32(i32 6, float %5561)  ; FAbs(value)
  %5569 = fdiv fast float 1.000000e+00, %5568
  %5570 = fmul fast float %5567, %5569
  %5571 = call float @dx.op.binary.f32(i32 35, float %5570, float 0.000000e+00)  ; FMax(a,b)
  %5572 = fsub fast float -0.000000e+00, %5513
  %5573 = fsub fast float -0.000000e+00, %5514
  %5574 = fsub fast float -0.000000e+00, %5515
  %5575 = call float @dx.op.dot3.f32(i32 55, float %5381, float %5382, float %5383, float %5572, float %5573, float %5574)  ; Dot3(ax,ay,az,bx,by,bz)
  %5576 = fsub fast float -0.000000e+00, %5575
  %5577 = call float @dx.op.dot3.f32(i32 55, float %5497, float %5498, float %5499, float %5572, float %5573, float %5574)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = fadd fast float %5577, %5472
  %5579 = fadd fast float %5471, %5577
  %5580 = fsub fast float -0.000000e+00, %5579
  %5581 = fcmp ogt float %5575, -0.000000e+00
  %5582 = select i1 %5581, float %5580, float %5578
  %5583 = call float @dx.op.unary.f32(i32 6, float %5576)  ; FAbs(value)
  %5584 = fdiv fast float 1.000000e+00, %5583
  %5585 = fmul fast float %5582, %5584
  %5586 = call float @dx.op.binary.f32(i32 35, float %5585, float 0.000000e+00)  ; FMax(a,b)
  %5587 = call float @dx.op.binary.f32(i32 36, float %5571, float %5586)  ; FMin(a,b)
  %5588 = call float @dx.op.binary.f32(i32 36, float %5556, float %5587)  ; FMin(a,b)
  %5589 = fmul fast float %5588, %5381
  %5590 = fmul fast float %5588, %5382
  %5591 = fmul fast float %5588, %5383
  %5592 = fadd fast float %5589, %155
  %5593 = fadd fast float %5590, %156
  %5594 = fadd fast float %5591, %157
  %5595 = fsub fast float %5592, %5441
  %5596 = fsub fast float %5593, %5442
  %5597 = fsub fast float %5594, %5443
  br label %5605

; <label>:5598                                    ; preds = %5540
  %5599 = fmul fast float %5381, 8.096000e+03
  %5600 = fmul fast float %5382, 8.096000e+03
  %5601 = fmul fast float %5383, 8.096000e+03
  %5602 = fadd fast float %5599, %155
  %5603 = fadd fast float %5600, %156
  %5604 = fadd fast float %5601, %157
  br label %5605

; <label>:5605                                    ; preds = %5598, %5541
  %5606 = phi float [ %5381, %5598 ], [ %5595, %5541 ]
  %5607 = phi float [ %5382, %5598 ], [ %5596, %5541 ]
  %5608 = phi float [ %5383, %5598 ], [ %5597, %5541 ]
  %5609 = phi float [ %5602, %5598 ], [ %5592, %5541 ]
  %5610 = phi float [ %5603, %5598 ], [ %5593, %5541 ]
  %5611 = phi float [ %5604, %5598 ], [ %5594, %5541 ]
  %5612 = fcmp fast olt float %5460, 1.000000e+00
  br i1 %5612, label %5613, label %5644, !dx.controlflow.hints !84

; <label>:5613                                    ; preds = %5605
  %5614 = fmul fast float %5608, %5458
  %5615 = fmul fast float %5607, %5459
  %5616 = fsub fast float %5614, %5615
  %5617 = fmul fast float %5606, %5459
  %5618 = fmul fast float %5608, %5457
  %5619 = fsub fast float %5617, %5618
  %5620 = fmul fast float %5607, %5457
  %5621 = fmul fast float %5606, %5458
  %5622 = fsub fast float %5620, %5621
  %5623 = fmul fast float %5616, 2.000000e+00
  %5624 = fmul fast float %5619, 2.000000e+00
  %5625 = fmul fast float %5622, 2.000000e+00
  %5626 = fmul fast float %5623, %5460
  %5627 = fmul fast float %5624, %5460
  %5628 = fmul fast float %5625, %5460
  %5629 = fmul fast float %5625, %5458
  %5630 = fmul fast float %5624, %5459
  %5631 = fmul fast float %5623, %5459
  %5632 = fmul fast float %5625, %5457
  %5633 = fmul fast float %5624, %5457
  %5634 = fmul fast float %5623, %5458
  %5635 = fadd fast float %5629, %5606
  %5636 = fadd fast float %5635, %5626
  %5637 = fsub fast float %5636, %5630
  %5638 = fsub fast float %5607, %5632
  %5639 = fadd fast float %5638, %5627
  %5640 = fadd fast float %5639, %5631
  %5641 = fadd fast float %5628, %5608
  %5642 = fsub fast float %5641, %5634
  %5643 = fadd fast float %5642, %5633
  br label %5644

; <label>:5644                                    ; preds = %5613, %5605
  %5645 = phi float [ %5637, %5613 ], [ %5606, %5605 ]
  %5646 = phi float [ %5640, %5613 ], [ %5607, %5605 ]
  %5647 = phi float [ %5643, %5613 ], [ %5608, %5605 ]
  br i1 %5486, label %5679, label %5648

; <label>:5648                                    ; preds = %5644
  %5649 = fmul fast float %5138, 0x400187C840000000
  %5650 = fadd fast float %5649, 0xC00EFC2120000000
  %5651 = fmul fast float %5650, %5138
  %5652 = fadd fast float %5651, 0x3FE5D16340000000
  %5653 = fmul fast float %5652, %5138
  %5654 = fadd fast float %5653, 1.000000e+00
  %5655 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5656 = fsub fast float %5609, %155
  %5657 = fsub fast float %5610, %156
  %5658 = fsub fast float %5611, %157
  %5659 = fsub fast float %5609, %5441
  %5660 = fsub fast float %5610, %5442
  %5661 = fsub fast float %5611, %5443
  %5662 = call float @dx.op.dot3.f32(i32 55, float %5656, float %5657, float %5658, float %5656, float %5657, float %5658)  ; Dot3(ax,ay,az,bx,by,bz)
  %5663 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float %5659, float %5660, float %5661)  ; Dot3(ax,ay,az,bx,by,bz)
  %5664 = fadd fast float %5663, 0x3EE4F8B580000000
  %5665 = fdiv fast float %5662, %5664
  %5666 = bitcast float %5665 to i32
  %5667 = ashr i32 %5666, 1
  %5668 = add nsw i32 %5667, 532487669
  %5669 = bitcast i32 %5668 to float
  %5670 = fmul fast float %5669, %5655
  %5671 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5672 = fmul fast float %5671, 0x4009981AE0000000
  %5673 = fsub fast float 0x40111BBD80000000, %5672
  %5674 = fmul fast float %5673, %5671
  %5675 = fadd fast float %5674, 0xC0009F6020000000
  %5676 = fmul fast float %5675, %5671
  %5677 = fadd fast float %5676, 1.000000e+00
  %5678 = call float @dx.op.unary.f32(i32 7, float %5677)  ; Saturate(value)
  br label %5682

; <label>:5679                                    ; preds = %5644
  %5680 = icmp ne i32 %5487, -1
  %5681 = zext i1 %5680 to i32
  br label %5682

; <label>:5682                                    ; preds = %5679, %5648
  %5683 = phi float [ %5138, %5679 ], [ %5678, %5648 ]
  %5684 = phi i32 [ %5681, %5679 ], [ 0, %5648 ]
  %5685 = fmul float %5683, 5.000000e+00
  %5686 = fsub float 5.000000e+00, %5685
  %5687 = icmp ne i32 %5684, 0
  %5688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5689 = extractvalue %dx.types.CBufRet.f32 %5688, 3
  %5690 = fadd fast float %5689, %5686
  %5691 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5690)  ; FMax(a,b)
  %5692 = call float @dx.op.unary.f32(i32 6, float %5645)  ; FAbs(value)
  %5693 = call float @dx.op.unary.f32(i32 6, float %5646)  ; FAbs(value)
  %5694 = fadd fast float %5693, %5692
  %5695 = call float @dx.op.unary.f32(i32 6, float %5647)  ; FAbs(value)
  %5696 = fadd fast float %5694, %5695
  %5697 = fcmp fast oeq float %5696, 0.000000e+00
  %5698 = fdiv fast float 1.000000e+00, %5696
  %5699 = select i1 %5697, float 1.000000e+00, float %5698
  %5700 = fmul fast float %5699, %5645
  %5701 = fmul fast float %5699, %5646
  %5702 = call float @dx.op.unary.f32(i32 6, float %5701)  ; FAbs(value)
  %5703 = call float @dx.op.unary.f32(i32 6, float %5700)  ; FAbs(value)
  %5704 = fsub fast float 1.000000e+00, %5702
  %5705 = fsub fast float 1.000000e+00, %5703
  %5706 = fcmp fast oge float %5700, 0.000000e+00
  %5707 = fcmp fast oge float %5701, 0.000000e+00
  %5708 = select i1 %5706, float 1.000000e+00, float -1.000000e+00
  %5709 = select i1 %5707, float 1.000000e+00, float -1.000000e+00
  %5710 = fcmp fast ole float %5647, 0.000000e+00
  %5711 = fmul fast float %5708, %5704
  %5712 = fmul fast float %5709, %5705
  %5713 = select i1 %5710, float %5711, float %5700
  %5714 = select i1 %5710, float %5712, float %5701
  %5715 = fmul fast float %5713, 5.000000e-01
  %5716 = fmul fast float %5714, 5.000000e-01
  %5717 = fadd fast float %5715, 5.000000e-01
  %5718 = fadd fast float %5716, 5.000000e-01
  %5719 = uitofp i32 %5484 to float
  %5720 = call float @dx.op.binary.f32(i32 36, float %5691, float 3.000000e+00)  ; FMin(a,b)
  %5721 = fadd fast float %5720, 2.000000e+00
  %5722 = call float @dx.op.unary.f32(i32 21, float %5721)  ; Exp(value)
  %5723 = extractvalue %dx.types.CBufRet.f32 %5688, 1
  %5724 = fmul fast float %5723, %5722
  %5725 = fmul fast float %5724, 2.000000e+00
  %5726 = fsub fast float 1.000000e+00, %5725
  %5727 = fmul fast float %5717, %5726
  %5728 = fmul fast float %5718, %5726
  %5729 = fadd fast float %5727, %5724
  %5730 = fadd fast float %5728, %5724
  %5731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5729, float %5730, float %5719, float undef, i32 0, i32 0, i32 undef, float %5691)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5732 = extractvalue %dx.types.ResRet.f32 %5731, 0
  %5733 = extractvalue %dx.types.ResRet.f32 %5731, 1
  %5734 = extractvalue %dx.types.ResRet.f32 %5731, 2
  %5735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5736 = extractvalue %dx.types.CBufRet.f32 %5735, 3
  %5737 = fmul fast float %5736, %5454
  %5738 = call float @dx.op.binary.f32(i32 36, float %5203, float %5737)  ; FMin(a,b)
  %5739 = select i1 %5687, float %5738, float %5737
  %5740 = fmul fast float %5732, %5532
  %5741 = fmul fast float %5740, %5739
  %5742 = fmul fast float %5733, %5532
  %5743 = fmul fast float %5742, %5739
  %5744 = fmul fast float %5734, %5532
  %5745 = fmul fast float %5744, %5739
  %5746 = fadd fast float %5741, %5429
  %5747 = fadd fast float %5743, %5430
  %5748 = fadd fast float %5745, %5431
  %5749 = fsub fast float %5432, %5532
  br label %5534

; <label>:5750                                    ; preds = %5534
  br label %5751

; <label>:5751                                    ; preds = %5750, %5398
  %5752 = phi float [ %5399, %5398 ], [ %5535, %5750 ]
  %5753 = phi float [ %5400, %5398 ], [ %5536, %5750 ]
  %5754 = phi float [ %5401, %5398 ], [ %5537, %5750 ]
  %5755 = phi float [ %5402, %5398 ], [ %5538, %5750 ]
  %5756 = add i32 %5403, 1
  %5757 = icmp ugt i32 %5756, %5395
  br i1 %5757, label %5758, label %5398, !llvm.loop !85

; <label>:5758                                    ; preds = %5751
  br label %5759

; <label>:5759                                    ; preds = %5758, %5380
  %5760 = phi float [ 0.000000e+00, %5380 ], [ %5752, %5758 ]
  %5761 = phi float [ 0.000000e+00, %5380 ], [ %5753, %5758 ]
  %5762 = phi float [ 0.000000e+00, %5380 ], [ %5754, %5758 ]
  %5763 = call float @dx.op.dot3.f32(i32 55, float %5760, float %5761, float %5762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = select i1 %216, float 0.000000e+00, float %5760
  %5765 = select i1 %216, float %5763, float %5761
  %5766 = select i1 %216, float 0.000000e+00, float %5762
  %5767 = fcmp fast olt float %5333, 0.000000e+00
  %5768 = call float @dx.op.unary.f32(i32 6, float %5333)  ; FAbs(value)
  %5769 = fmul fast float %5768, %5262
  %5770 = fmul fast float %5768, %5263
  %5771 = fmul fast float %5768, %5264
  %5772 = select i1 %5767, float %5262, float %5769
  %5773 = select i1 %5767, float %5263, float %5770
  %5774 = select i1 %5767, float %5264, float %5771
  %5775 = fsub fast float 1.000000e+00, %5768
  %5776 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  %5777 = fmul fast float %5776, %5764
  %5778 = fmul fast float %5776, %5765
  %5779 = fmul fast float %5776, %5766
  %5780 = fadd fast float %5772, %5777
  %5781 = fadd fast float %5773, %5778
  %5782 = fadd fast float %5774, %5779
  br label %5783

; <label>:5783                                    ; preds = %5759, %5316
  %5784 = phi float [ %5262, %5316 ], [ %5780, %5759 ]
  %5785 = phi float [ %5263, %5316 ], [ %5781, %5759 ]
  %5786 = phi float [ %5264, %5316 ], [ %5782, %5759 ]
  %5787 = fmul fast float %5322, %5258
  %5788 = fmul fast float %5322, %5259
  %5789 = fmul fast float %5322, %5260
  %5790 = call float @dx.op.dot3.f32(i32 55, float %5129, float %5130, float %5131, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = fcmp fast ogt float %5790, 0x3E7FF19E20000000
  %5792 = fdiv fast float 1.000000e+00, %5790
  %5793 = select i1 %5791, float %5792, float 0.000000e+00
  %5794 = fmul fast float %5793, %5129
  %5795 = fmul fast float %5793, %5130
  %5796 = fmul fast float %5793, %5131
  %5797 = fadd fast float %5794, -1.000000e+00
  %5798 = fadd fast float %5795, -1.000000e+00
  %5799 = fadd fast float %5796, -1.000000e+00
  %5800 = fmul fast float %5797, 5.000000e-01
  %5801 = fmul fast float %5798, 5.000000e-01
  %5802 = fmul fast float %5799, 5.000000e-01
  %5803 = fadd fast float %5800, 1.000000e+00
  %5804 = fadd fast float %5801, 1.000000e+00
  %5805 = fadd fast float %5802, 1.000000e+00
  %5806 = call float @dx.op.binary.f32(i32 35, float %5142, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5807 = fdiv fast float %4225, %5806
  %5808 = fcmp fast olt float %4842, 1.270000e+02
  %5809 = fcmp fast olt float %4843, 1.270000e+02
  %5810 = fcmp fast olt float %4844, 1.270000e+02
  %5811 = fmul fast float %4842, 0xBFF7154760000000
  %5812 = fmul fast float %5811, %5807
  %5813 = fmul fast float %4843, 0xBFF7154760000000
  %5814 = fmul fast float %5813, %5807
  %5815 = fmul fast float %4844, 0xBFF7154760000000
  %5816 = fmul fast float %5815, %5807
  %5817 = call float @dx.op.unary.f32(i32 21, float %5812)  ; Exp(value)
  %5818 = call float @dx.op.unary.f32(i32 21, float %5814)  ; Exp(value)
  %5819 = call float @dx.op.unary.f32(i32 21, float %5816)  ; Exp(value)
  %5820 = call float @dx.op.unary.f32(i32 7, float %5817)  ; Saturate(value)
  %5821 = call float @dx.op.unary.f32(i32 7, float %5818)  ; Saturate(value)
  %5822 = call float @dx.op.unary.f32(i32 7, float %5819)  ; Saturate(value)
  %5823 = select i1 %5808, float %5820, float 0.000000e+00
  %5824 = select i1 %5809, float %5821, float 0.000000e+00
  %5825 = select i1 %5810, float %5822, float 0.000000e+00
  %5826 = fmul fast float %5823, %5322
  %5827 = fmul fast float %5824, %5322
  %5828 = fmul fast float %5825, %5322
  %5829 = fadd fast float %5826, -1.000000e+00
  %5830 = fadd fast float %5827, -1.000000e+00
  %5831 = fadd fast float %5828, -1.000000e+00
  %5832 = fmul fast float %5784, %5317
  %5833 = fmul fast float %5785, %5318
  %5834 = fmul fast float %5786, %5319
  %5835 = fsub fast float 1.000000e+00, %5142
  %5836 = bitcast float %5835 to i32
  %5837 = sitofp i32 %5836 to float
  %5838 = fmul fast float %5837, 5.000000e+00
  %5839 = fadd fast float %5838, 0xC1EFBF8940000000
  %5840 = fptosi float %5839 to i32
  %5841 = bitcast i32 %5840 to float
  %5842 = fmul fast float %5841, %4816
  %5843 = fmul fast float %5258, %5842
  %5844 = fmul fast float %5843, %5322
  %5845 = fmul fast float %5844, %5803
  %5846 = fmul fast float %5259, %5842
  %5847 = fmul fast float %5846, %5322
  %5848 = fmul fast float %5847, %5804
  %5849 = fmul fast float %5260, %5842
  %5850 = fmul fast float %5849, %5322
  %5851 = fmul fast float %5850, %5805
  %5852 = fmul fast float %5787, %4812
  %5853 = fmul fast float %5788, %4812
  %5854 = fmul fast float %5789, %4812
  %5855 = fadd fast float %5832, %4805
  %5856 = fadd fast float %5855, %5845
  %5857 = fmul fast float %5856, %4812
  %5858 = fadd fast float %5833, %4806
  %5859 = fadd fast float %5858, %5848
  %5860 = fmul fast float %5859, %4812
  %5861 = fadd fast float %5834, %4807
  %5862 = fadd fast float %5861, %5851
  %5863 = fmul fast float %5862, %4812
  %5864 = bitcast i32 %5166 to float
  %5865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5866 = extractvalue %dx.types.CBufRet.f32 %5865, 3
  %5867 = fcmp fast oeq float %5866, 0.000000e+00
  br i1 %5867, label %7346, label %5868

; <label>:5868                                    ; preds = %5783
  %5869 = extractvalue %dx.types.CBufRet.f32 %5865, 0
  %5870 = extractvalue %dx.types.CBufRet.f32 %5865, 1
  %5871 = extractvalue %dx.types.CBufRet.f32 %5865, 2
  %5872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5873 = extractvalue %dx.types.CBufRet.f32 %5872, 0
  %5874 = extractvalue %dx.types.CBufRet.f32 %5872, 1
  %5875 = extractvalue %dx.types.CBufRet.f32 %5872, 2
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 0
  %5878 = extractvalue %dx.types.CBufRet.f32 %5876, 1
  %5879 = call float @dx.op.dot3.f32(i32 55, float %5873, float %5874, float %5875, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5880 = select i1 %216, float %5877, float %5873
  %5881 = select i1 %216, float %5879, float %5874
  %5882 = select i1 %216, float %5878, float %5875
  %5883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5884 = extractvalue %dx.types.CBufRet.f32 %5883, 2
  %5885 = fmul fast float %5884, %99
  %5886 = fmul fast float %5884, %100
  %5887 = fmul fast float %5884, %101
  %5888 = fadd fast float %5885, %155
  %5889 = fadd fast float %5886, %156
  %5890 = fadd fast float %5887, %157
  %5891 = fcmp fast olt float %5866, 0.000000e+00
  br i1 %5891, label %6987, label %5892

; <label>:5892                                    ; preds = %5868
  %5893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5893, 0
  %5895 = extractvalue %dx.types.CBufRet.f32 %5893, 1
  %5896 = extractvalue %dx.types.CBufRet.f32 %5893, 2
  %5897 = extractvalue %dx.types.CBufRet.f32 %5893, 3
  %5898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5899 = extractvalue %dx.types.CBufRet.f32 %5898, 0
  %5900 = extractvalue %dx.types.CBufRet.f32 %5898, 1
  %5901 = extractvalue %dx.types.CBufRet.f32 %5898, 2
  %5902 = extractvalue %dx.types.CBufRet.f32 %5898, 3
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 0
  %5905 = extractvalue %dx.types.CBufRet.f32 %5903, 1
  %5906 = extractvalue %dx.types.CBufRet.f32 %5903, 2
  %5907 = extractvalue %dx.types.CBufRet.f32 %5903, 3
  %5908 = fmul fast float %5894, %5888
  %5909 = call float @dx.op.tertiary.f32(i32 46, float %5889, float %5895, float %5908)  ; FMad(a,b,c)
  %5910 = call float @dx.op.tertiary.f32(i32 46, float %5890, float %5896, float %5909)  ; FMad(a,b,c)
  %5911 = fadd fast float %5910, %5897
  %5912 = fmul fast float %5899, %5888
  %5913 = call float @dx.op.tertiary.f32(i32 46, float %5889, float %5900, float %5912)  ; FMad(a,b,c)
  %5914 = call float @dx.op.tertiary.f32(i32 46, float %5890, float %5901, float %5913)  ; FMad(a,b,c)
  %5915 = fadd fast float %5914, %5902
  %5916 = fmul fast float %5904, %5888
  %5917 = call float @dx.op.tertiary.f32(i32 46, float %5889, float %5905, float %5916)  ; FMad(a,b,c)
  %5918 = call float @dx.op.tertiary.f32(i32 46, float %5890, float %5906, float %5917)  ; FMad(a,b,c)
  %5919 = fadd fast float %5918, %5907
  %5920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5921 = extractvalue %dx.types.CBufRet.f32 %5920, 0
  %5922 = extractvalue %dx.types.CBufRet.f32 %5920, 1
  %5923 = extractvalue %dx.types.CBufRet.f32 %5920, 3
  %5924 = fmul fast float %5923, %5911
  %5925 = fmul fast float %5923, %5915
  %5926 = fadd fast float %5924, %5921
  %5927 = fadd fast float %5925, %5922
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 0
  %5930 = extractvalue %dx.types.CBufRet.f32 %5928, 1
  %5931 = extractvalue %dx.types.CBufRet.f32 %5928, 3
  %5932 = fmul fast float %5931, %5911
  %5933 = fmul fast float %5931, %5915
  %5934 = fadd fast float %5932, %5929
  %5935 = fadd fast float %5933, %5930
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5938 = fsub fast float %5937, %5919
  %5939 = extractvalue %dx.types.CBufRet.f32 %5936, 2
  %5940 = fmul fast float %5938, %5939
  %5941 = fsub fast float 1.000000e+00, %5940
  %5942 = call float @dx.op.unary.f32(i32 7, float %5941)  ; Saturate(value)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5928, 2
  %5944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5945 = extractvalue %dx.types.CBufRet.f32 %5944, 2
  %5946 = fadd fast float %5945, %5943
  %5947 = fcmp fast ogt float %5946, 0.000000e+00
  br i1 %5947, label %5948, label %5972

; <label>:5948                                    ; preds = %5892
  %5949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5950 = extractvalue %dx.types.CBufRet.f32 %5949, 0
  %5951 = extractvalue %dx.types.CBufRet.f32 %5949, 1
  %5952 = fsub fast float %5934, %5950
  %5953 = fsub fast float %5935, %5951
  %5954 = fcmp fast olt float %5952, 0.000000e+00
  %5955 = fcmp fast olt float %5953, 0.000000e+00
  %5956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5957 = extractvalue %dx.types.CBufRet.f32 %5956, 0
  %5958 = extractvalue %dx.types.CBufRet.f32 %5956, 1
  %5959 = extractvalue %dx.types.CBufRet.f32 %5956, 2
  %5960 = extractvalue %dx.types.CBufRet.f32 %5956, 3
  %5961 = select i1 %5954, float %5957, float %5959
  %5962 = select i1 %5955, float %5958, float %5960
  %5963 = fmul fast float %5961, %5952
  %5964 = fmul fast float %5962, %5953
  %5965 = call float @dx.op.unary.f32(i32 6, float %5963)  ; FAbs(value)
  %5966 = call float @dx.op.unary.f32(i32 6, float %5964)  ; FAbs(value)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5883, 0
  %5968 = call float @dx.op.binary.f32(i32 35, float %5965, float %5966)  ; FMax(a,b)
  %5969 = fsub fast float %5967, %5968
  %5970 = call float @dx.op.unary.f32(i32 7, float %5969)  ; Saturate(value)
  %5971 = fmul fast float %5970, %5942
  br label %5972

; <label>:5972                                    ; preds = %5948, %5892
  %5973 = phi float [ %5971, %5948 ], [ 0.000000e+00, %5892 ]
  %5974 = extractvalue %dx.types.CBufRet.f32 %5920, 2
  %5975 = extractvalue %dx.types.CBufRet.f32 %5944, 1
  %5976 = fadd fast float %5975, %5974
  %5977 = fcmp fast ogt float %5976, 0.000000e+00
  %5978 = extractvalue %dx.types.CBufRet.f32 %5883, 0
  br i1 %5977, label %5979, label %6002

; <label>:5979                                    ; preds = %5972
  %5980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5981 = extractvalue %dx.types.CBufRet.f32 %5980, 0
  %5982 = extractvalue %dx.types.CBufRet.f32 %5980, 1
  %5983 = fsub fast float %5926, %5981
  %5984 = fsub fast float %5927, %5982
  %5985 = fcmp fast olt float %5983, 0.000000e+00
  %5986 = fcmp fast olt float %5984, 0.000000e+00
  %5987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5988 = extractvalue %dx.types.CBufRet.f32 %5987, 0
  %5989 = extractvalue %dx.types.CBufRet.f32 %5987, 1
  %5990 = extractvalue %dx.types.CBufRet.f32 %5987, 2
  %5991 = extractvalue %dx.types.CBufRet.f32 %5987, 3
  %5992 = select i1 %5985, float %5988, float %5990
  %5993 = select i1 %5986, float %5989, float %5991
  %5994 = fmul fast float %5992, %5983
  %5995 = fmul fast float %5993, %5984
  %5996 = call float @dx.op.unary.f32(i32 6, float %5994)  ; FAbs(value)
  %5997 = call float @dx.op.unary.f32(i32 6, float %5995)  ; FAbs(value)
  %5998 = call float @dx.op.binary.f32(i32 35, float %5996, float %5997)  ; FMax(a,b)
  %5999 = fsub fast float %5978, %5998
  %6000 = call float @dx.op.unary.f32(i32 7, float %5999)  ; Saturate(value)
  %6001 = fmul fast float %6000, %5942
  br label %6002

; <label>:6002                                    ; preds = %5979, %5972
  %6003 = phi float [ %6001, %5979 ], [ 0.000000e+00, %5972 ]
  %6004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.f32 %6004, 1
  %6006 = call float @dx.op.unary.f32(i32 7, float %6005)  ; Saturate(value)
  %6007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6008 = extractvalue %dx.types.CBufRet.f32 %6007, 0
  %6009 = extractvalue %dx.types.CBufRet.f32 %6007, 1
  %6010 = fsub fast float %5911, %6008
  %6011 = fsub fast float %5915, %6009
  %6012 = fcmp fast olt float %6010, 0.000000e+00
  %6013 = fcmp fast olt float %6011, 0.000000e+00
  %6014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6015 = extractvalue %dx.types.CBufRet.f32 %6014, 0
  %6016 = extractvalue %dx.types.CBufRet.f32 %6014, 1
  %6017 = extractvalue %dx.types.CBufRet.f32 %6014, 2
  %6018 = extractvalue %dx.types.CBufRet.f32 %6014, 3
  %6019 = select i1 %6012, float %6015, float %6017
  %6020 = select i1 %6013, float %6016, float %6018
  %6021 = fmul fast float %6019, %6010
  %6022 = fmul fast float %6020, %6011
  %6023 = call float @dx.op.unary.f32(i32 6, float %6021)  ; FAbs(value)
  %6024 = call float @dx.op.unary.f32(i32 6, float %6022)  ; FAbs(value)
  %6025 = call float @dx.op.binary.f32(i32 35, float %6023, float %6024)  ; FMax(a,b)
  %6026 = fsub fast float %5978, %6025
  %6027 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6028 = call float @dx.op.binary.f32(i32 36, float %6027, float %6006)  ; FMin(a,b)
  %6029 = fmul fast float %6028, %5942
  %6030 = fsub fast float %6003, %6029
  %6031 = fsub fast float %5973, %6003
  %6032 = fsub fast float %6031, %6029
  %6033 = call float @dx.op.binary.f32(i32 35, float %6003, float %5973)  ; FMax(a,b)
  %6034 = call float @dx.op.binary.f32(i32 35, float %6029, float %6033)  ; FMax(a,b)
  %6035 = fcmp fast olt float %6034, 1.000000e+00
  br i1 %6035, label %6036, label %6434, !dx.controlflow.hints !87

; <label>:6036                                    ; preds = %6002
  %6037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6038 = extractvalue %dx.types.CBufRet.f32 %6037, 0
  %6039 = fcmp fast une float %6038, 0.000000e+00
  br i1 %6039, label %6040, label %6434, !dx.controlflow.hints !88

; <label>:6040                                    ; preds = %6036
  %6041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6042 = extractvalue %dx.types.CBufRet.f32 %6041, 0
  %6043 = extractvalue %dx.types.CBufRet.f32 %6041, 1
  %6044 = extractvalue %dx.types.CBufRet.f32 %6041, 2
  %6045 = extractvalue %dx.types.CBufRet.f32 %6041, 3
  %6046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.f32 %6046, 0
  %6048 = extractvalue %dx.types.CBufRet.f32 %6046, 1
  %6049 = extractvalue %dx.types.CBufRet.f32 %6046, 2
  %6050 = extractvalue %dx.types.CBufRet.f32 %6046, 3
  %6051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6052 = extractvalue %dx.types.CBufRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.CBufRet.f32 %6051, 1
  %6054 = extractvalue %dx.types.CBufRet.f32 %6051, 2
  %6055 = extractvalue %dx.types.CBufRet.f32 %6051, 3
  %6056 = fmul fast float %6042, %5888
  %6057 = call float @dx.op.tertiary.f32(i32 46, float %5889, float %6043, float %6056)  ; FMad(a,b,c)
  %6058 = call float @dx.op.tertiary.f32(i32 46, float %5890, float %6044, float %6057)  ; FMad(a,b,c)
  %6059 = fadd fast float %6058, %6045
  %6060 = fmul fast float %6047, %5888
  %6061 = call float @dx.op.tertiary.f32(i32 46, float %5889, float %6048, float %6060)  ; FMad(a,b,c)
  %6062 = call float @dx.op.tertiary.f32(i32 46, float %5890, float %6049, float %6061)  ; FMad(a,b,c)
  %6063 = fadd fast float %6062, %6050
  %6064 = fmul fast float %6052, %5888
  %6065 = call float @dx.op.tertiary.f32(i32 46, float %5889, float %6053, float %6064)  ; FMad(a,b,c)
  %6066 = call float @dx.op.tertiary.f32(i32 46, float %5890, float %6054, float %6065)  ; FMad(a,b,c)
  %6067 = fadd fast float %6066, %6055
  %6068 = fcmp fast oge float %6059, 1.000000e+00
  %6069 = fcmp fast oge float %6063, 1.000000e+00
  %6070 = or i1 %6068, %6069
  %6071 = fcmp fast olt float %6059, 0.000000e+00
  %6072 = fcmp fast olt float %6063, 0.000000e+00
  %6073 = or i1 %6071, %6072
  %6074 = or i1 %6070, %6073
  br i1 %6074, label %6434, label %6075, !dx.controlflow.hints !89

; <label>:6075                                    ; preds = %6040
  %6076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6077 = extractvalue %dx.types.CBufRet.f32 %6076, 0
  %6078 = extractvalue %dx.types.CBufRet.f32 %6076, 1
  %6079 = extractvalue %dx.types.CBufRet.f32 %6076, 2
  %6080 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6081 = extractvalue %dx.types.CBufRet.i32 %6080, 2
  %6082 = uitofp i32 %6081 to float
  %6083 = extractvalue %dx.types.CBufRet.i32 %6080, 3
  %6084 = uitofp i32 %6083 to float
  %6085 = extractvalue %dx.types.CBufRet.f32 %6076, 3
  %6086 = fmul fast float %6085, 2.000000e+00
  %6087 = fsub fast float %6059, %6077
  %6088 = fsub fast float %6063, %6078
  %6089 = fmul fast float %6086, %6087
  %6090 = fmul fast float %6086, %6088
  %6091 = fdiv fast float 1.000000e+00, %5871
  %6092 = fmul fast float %6090, %6091
  %6093 = call float @dx.op.unary.f32(i32 6, float %6092)  ; FAbs(value)
  %6094 = fmul fast float %6079, %5890
  %6095 = fmul fast float %6094, %6086
  %6096 = call float @dx.op.unary.f32(i32 6, float %6095)  ; FAbs(value)
  %6097 = call float @dx.op.unary.f32(i32 6, float %6089)  ; FAbs(value)
  %6098 = call float @dx.op.binary.f32(i32 35, float %6096, float %6093)  ; FMax(a,b)
  %6099 = call float @dx.op.binary.f32(i32 35, float %6097, float %6098)  ; FMax(a,b)
  %6100 = fmul fast float %6099, 2.000000e+00
  %6101 = call float @dx.op.unary.f32(i32 23, float %6100)  ; Log(value)
  %6102 = call float @dx.op.binary.f32(i32 35, float %6101, float %6082)  ; FMax(a,b)
  %6103 = call float @dx.op.unary.f32(i32 22, float %6102)  ; Frc(value)
  %6104 = fadd fast float %6103, 0xBFEA666660000000
  %6105 = fmul fast float %6104, 8.000000e+00
  %6106 = call float @dx.op.unary.f32(i32 7, float %6105)  ; Saturate(value)
  %6107 = call float @dx.op.unary.f32(i32 27, float %6102)  ; Round_ni(value)
  %6108 = fadd fast float %6107, %6106
  %6109 = call float @dx.op.binary.f32(i32 36, float %6108, float %6084)  ; FMin(a,b)
  %6110 = call float @dx.op.unary.f32(i32 27, float %6109)  ; Round_ni(value)
  %6111 = fsub fast float -0.000000e+00, %6110
  %6112 = call float @dx.op.unary.f32(i32 21, float %6111)  ; Exp(value)
  %6113 = fmul fast float %6112, %6086
  %6114 = fmul fast float %6113, %6059
  %6115 = fmul fast float %6113, %6063
  %6116 = fmul fast float %6114, 2.500000e-01
  %6117 = fmul fast float %6115, 2.500000e-01
  %6118 = fadd fast float %6116, 5.000000e-01
  %6119 = fadd fast float %6117, 5.000000e-01
  %6120 = fsub fast float %6084, %6082
  %6121 = fptoui float %6120 to i32
  %6122 = add i32 %6121, 320
  %6123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %6122)  ; CBufferLoadLegacy(handle,regIndex)
  %6124 = extractvalue %dx.types.CBufRet.f32 %6123, 0
  %6125 = extractvalue %dx.types.CBufRet.f32 %6123, 1
  %6126 = fcmp fast une float %6109, %6084
  %6127 = fsub fast float %6059, %6124
  %6128 = fsub fast float %6063, %6125
  %6129 = call float @dx.op.unary.f32(i32 6, float %6127)  ; FAbs(value)
  %6130 = call float @dx.op.unary.f32(i32 6, float %6128)  ; FAbs(value)
  %6131 = fmul fast float %6129, %6113
  %6132 = fmul fast float %6130, %6113
  %6133 = fcmp fast olt float %6131, 1.000000e+00
  %6134 = fcmp fast olt float %6132, 1.000000e+00
  %6135 = and i1 %6133, %6134
  %6136 = or i1 %6126, %6135
  br i1 %6136, label %6137, label %6434, !dx.controlflow.hints !90

; <label>:6137                                    ; preds = %6075
  %6138 = fmul fast float %6115, 5.000000e-01
  %6139 = fmul fast float %6114, 5.000000e-01
  %6140 = fadd fast float %6138, 5.000000e-01
  %6141 = fadd fast float %6139, 5.000000e-01
  %6142 = sitofp i32 %6081 to float
  %6143 = fsub fast float %6109, %6142
  %6144 = call float @dx.op.unary.f32(i32 27, float %6143)  ; Round_ni(value)
  %6145 = call float @dx.op.unary.f32(i32 22, float %6109)  ; Frc(value)
  %6146 = call float @dx.op.unary.f32(i32 22, float %6141)  ; Frc(value)
  %6147 = call float @dx.op.unary.f32(i32 22, float %6140)  ; Frc(value)
  %6148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6146, float %6147, float %6144, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6149 = extractvalue %dx.types.ResRet.f32 %6148, 0
  %6150 = extractvalue %dx.types.ResRet.f32 %6148, 1
  %6151 = extractvalue %dx.types.ResRet.f32 %6148, 2
  %6152 = extractvalue %dx.types.ResRet.f32 %6148, 3
  %6153 = fcmp fast ogt float %6145, 0.000000e+00
  br i1 %6153, label %6154, label %6175, !dx.controlflow.hints !91

; <label>:6154                                    ; preds = %6137
  %6155 = fadd fast float %6144, 1.000000e+00
  %6156 = call float @dx.op.unary.f32(i32 22, float %6118)  ; Frc(value)
  %6157 = call float @dx.op.unary.f32(i32 22, float %6119)  ; Frc(value)
  %6158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6156, float %6157, float %6155, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6159 = extractvalue %dx.types.ResRet.f32 %6158, 0
  %6160 = extractvalue %dx.types.ResRet.f32 %6158, 1
  %6161 = extractvalue %dx.types.ResRet.f32 %6158, 2
  %6162 = extractvalue %dx.types.ResRet.f32 %6158, 3
  %6163 = fsub fast float %6159, %6149
  %6164 = fsub fast float %6160, %6150
  %6165 = fsub fast float %6161, %6151
  %6166 = fsub fast float %6162, %6152
  %6167 = fmul fast float %6163, %6145
  %6168 = fmul fast float %6164, %6145
  %6169 = fmul fast float %6165, %6145
  %6170 = fmul fast float %6166, %6145
  %6171 = fadd fast float %6167, %6149
  %6172 = fadd fast float %6168, %6150
  %6173 = fadd fast float %6169, %6151
  %6174 = fadd fast float %6170, %6152
  br label %6175

; <label>:6175                                    ; preds = %6154, %6137
  %6176 = phi float [ %6171, %6154 ], [ %6149, %6137 ]
  %6177 = phi float [ %6172, %6154 ], [ %6150, %6137 ]
  %6178 = phi float [ %6173, %6154 ], [ %6151, %6137 ]
  %6179 = phi float [ %6174, %6154 ], [ %6152, %6137 ]
  %6180 = fadd fast float %6176, -5.000000e-01
  %6181 = fadd fast float %6178, -5.000000e-01
  %6182 = fmul fast float %6180, 0xBFD5555560000000
  %6183 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6181, float %6182)  ; FMad(a,b,c)
  %6184 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6177, float 0.000000e+00)  ; FMad(a,b,c)
  %6185 = fadd fast float %6184, %6179
  %6186 = fmul fast float %6180, -7.500000e-01
  %6187 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6181, float %6186)  ; FMad(a,b,c)
  %6188 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6177, float 0.000000e+00)  ; FMad(a,b,c)
  %6189 = fadd fast float %6188, %6179
  %6190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6190, 0
  %6192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6193 = extractvalue %dx.types.CBufRet.f32 %6192, 0
  %6194 = extractvalue %dx.types.CBufRet.f32 %6192, 1
  %6195 = extractvalue %dx.types.CBufRet.f32 %6192, 2
  %6196 = extractvalue %dx.types.CBufRet.f32 %6192, 3
  %6197 = fsub fast float %6193, %6183
  %6198 = fsub fast float %6194, %6185
  %6199 = fsub fast float %6195, %6187
  %6200 = fsub fast float %6196, %6189
  %6201 = fmul fast float %6197, %6191
  %6202 = fmul fast float %6198, %6191
  %6203 = fmul fast float %6199, %6191
  %6204 = fmul fast float %6200, %6191
  %6205 = fadd fast float %6201, %6183
  %6206 = fadd fast float %6202, %6185
  %6207 = fadd fast float %6203, %6187
  %6208 = fadd fast float %6204, %6189
  %6209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6210 = extractvalue %dx.types.ResRet.i32 %6209, 0
  %6211 = and i32 %6210, 536870911
  %6212 = uitofp i32 %6211 to float
  %6213 = fmul fast float %6212, %6059
  %6214 = fmul fast float %6212, %6063
  %6215 = fptoui float %6213 to i32
  %6216 = fptoui float %6214 to i32
  %6217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6218 = extractvalue %dx.types.ResRet.i32 %6217, 0
  %6219 = and i32 %6218, 31
  %6220 = lshr i32 %6215, %6219
  %6221 = lshr i32 %6216, %6219
  %6222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6223 = extractvalue %dx.types.ResRet.i32 %6222, 0
  %6224 = and i32 %6223, 31
  %6225 = shl i32 1, %6224
  %6226 = call i32 @dx.op.binary.i32(i32 40, i32 %6225, i32 4)  ; UMin(a,b)
  %6227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6228 = extractvalue %dx.types.ResRet.i32 %6227, 0
  %6229 = extractvalue %dx.types.ResRet.i32 %6227, 1
  %6230 = icmp eq i32 %6226, 0
  br i1 %6230, label %6272, label %6231

; <label>:6231                                    ; preds = %6175
  br label %6232

; <label>:6232                                    ; preds = %6260, %6231
  %6233 = phi i32 [ %6263, %6260 ], [ 0, %6231 ]
  %6234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6235 = extractvalue %dx.types.ResRet.i32 %6234, 0
  %6236 = lshr i32 %6235, 16
  %6237 = and i32 %6236, 31
  %6238 = shl i32 %6221, %6237
  %6239 = add i32 %6238, %6220
  %6240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6241 = extractvalue %dx.types.ResRet.i32 %6240, 0
  %6242 = and i32 %6241, 31
  %6243 = shl i32 %6239, %6242
  %6244 = add i32 %6243, %6233
  %6245 = shl i32 %6244, 2
  %6246 = add i32 %6245, 32
  %6247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6246, i32 undef)  ; BufferLoad(srv,index,wot)
  %6248 = extractvalue %dx.types.ResRet.i32 %6247, 0
  %6249 = icmp slt i32 %6248, 0
  %6250 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %6233
  %6251 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6233
  %6252 = bitcast float* %6250 to i32*
  %6253 = bitcast float* %6251 to i32*
  br i1 %6249, label %6254, label %6260

; <label>:6254                                    ; preds = %6232
  %6255 = and i32 %6248, 1073741823
  %6256 = add nuw nsw i32 %6255, 20
  %6257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6256, i32 undef)  ; BufferLoad(srv,index,wot)
  %6258 = extractvalue %dx.types.ResRet.i32 %6257, 0
  %6259 = extractvalue %dx.types.ResRet.i32 %6257, 1
  br label %6260

; <label>:6260                                    ; preds = %6254, %6232
  %6261 = phi i32 [ %6258, %6254 ], [ %6228, %6232 ]
  %6262 = phi i32 [ %6259, %6254 ], [ %6229, %6232 ]
  store i32 %6261, i32* %6252, align 4
  store i32 %6262, i32* %6253, align 4
  %6263 = add nuw i32 %6233, 1
  %6264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6265 = extractvalue %dx.types.CBufRet.i32 %6264, 2
  %6266 = icmp eq i32 %6265, 0
  %6267 = icmp ugt i32 %6248, -1073741825
  %6268 = and i1 %6267, %6266
  %6269 = icmp ult i32 %6263, %6226
  %6270 = and i1 %6268, %6269
  br i1 %6270, label %6232, label %6271

; <label>:6271                                    ; preds = %6260
  br label %6272

; <label>:6272                                    ; preds = %6271, %6175
  %6273 = phi i32 [ 0, %6175 ], [ %6263, %6271 ]
  %6274 = extractvalue %dx.types.CBufRet.f32 %6037, 2
  %6275 = fptoui float %6274 to i32
  %6276 = icmp eq i32 %6275, 0
  br i1 %6276, label %6328, label %6277

; <label>:6277                                    ; preds = %6272
  br label %6278

; <label>:6278                                    ; preds = %6323, %6277
  %6279 = phi i32 [ %6324, %6323 ], [ %6273, %6277 ]
  %6280 = phi i32 [ %6325, %6323 ], [ 0, %6277 ]
  %6281 = lshr i32 %6280, 2
  %6282 = and i32 %6280, 3
  %6283 = add nuw nsw i32 %6281, 83
  %6284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %6283)  ; CBufferLoadLegacy(handle,regIndex)
  %6285 = extractvalue %dx.types.CBufRet.i32 %6284, 0
  %6286 = extractvalue %dx.types.CBufRet.i32 %6284, 1
  %6287 = extractvalue %dx.types.CBufRet.i32 %6284, 2
  %6288 = extractvalue %dx.types.CBufRet.i32 %6284, 3
  %6289 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %6285, i32* %6289, align 4
  %6290 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %6286, i32* %6290, align 4
  %6291 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %6287, i32* %6291, align 4
  %6292 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %6288, i32* %6292, align 4
  %6293 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %6282
  %6294 = load i32, i32* %6293, align 4, !tbaa !92, !noalias !96
  %6295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6296 = extractvalue %dx.types.ResRet.i32 %6295, 0
  %6297 = lshr i32 %6296, 16
  %6298 = and i32 %6297, 31
  %6299 = shl i32 %6221, %6298
  %6300 = add i32 %6299, %6220
  %6301 = shl i32 %6300, 2
  %6302 = add i32 %6301, %6294
  %6303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6302, i32 undef)  ; BufferLoad(srv,index,wot)
  %6304 = extractvalue %dx.types.ResRet.i32 %6303, 0
  %6305 = icmp eq i32 %6304, 0
  br i1 %6305, label %6323, label %6306

; <label>:6306                                    ; preds = %6278
  %6307 = icmp slt i32 %6304, 0
  %6308 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %6279
  %6309 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6279
  %6310 = bitcast float* %6308 to i32*
  %6311 = bitcast float* %6309 to i32*
  br i1 %6307, label %6312, label %6319

; <label>:6312                                    ; preds = %6306
  %6313 = and i32 %6304, 1073741823
  %6314 = add i32 %6294, 20
  %6315 = add i32 %6314, %6313
  %6316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6315, i32 undef)  ; BufferLoad(srv,index,wot)
  %6317 = extractvalue %dx.types.ResRet.i32 %6316, 0
  %6318 = extractvalue %dx.types.ResRet.i32 %6316, 1
  br label %6319

; <label>:6319                                    ; preds = %6312, %6306
  %6320 = phi i32 [ %6317, %6312 ], [ %6228, %6306 ]
  %6321 = phi i32 [ %6318, %6312 ], [ %6229, %6306 ]
  store i32 %6320, i32* %6310, align 4
  store i32 %6321, i32* %6311, align 4
  %6322 = add i32 %6279, 1
  br label %6323

; <label>:6323                                    ; preds = %6319, %6278
  %6324 = phi i32 [ %6279, %6278 ], [ %6322, %6319 ]
  %6325 = add nuw i32 %6280, 1
  %6326 = icmp eq i32 %6325, %6275
  br i1 %6326, label %6327, label %6278

; <label>:6327                                    ; preds = %6323
  br label %6328

; <label>:6328                                    ; preds = %6327, %6272
  %6329 = phi i32 [ %6273, %6272 ], [ %6324, %6327 ]
  %6330 = icmp eq i32 %6329, 1
  %6331 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 0
  %6332 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  br i1 %6330, label %6333, label %6336

; <label>:6333                                    ; preds = %6328
  %6334 = load float, float* %6331, align 4
  %6335 = load float, float* %6332, align 4
  br label %6363

; <label>:6336                                    ; preds = %6328
  %6337 = load float, float* %6331, align 4
  %6338 = load float, float* %6332, align 4
  %6339 = fdiv fast float 1.000000e+00, %6338
  %6340 = fsub fast float %6337, %6339
  %6341 = icmp ugt i32 %6329, 1
  br i1 %6341, label %6342, label %6358

; <label>:6342                                    ; preds = %6336
  br label %6343

; <label>:6343                                    ; preds = %6343, %6342
  %6344 = phi float [ %6353, %6343 ], [ %6340, %6342 ]
  %6345 = phi float [ %6354, %6343 ], [ %6337, %6342 ]
  %6346 = phi i32 [ %6355, %6343 ], [ 1, %6342 ]
  %6347 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %6346
  %6348 = load float, float* %6347, align 4
  %6349 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6346
  %6350 = load float, float* %6349, align 4
  %6351 = fdiv fast float 1.000000e+00, %6350
  %6352 = fsub fast float %6348, %6351
  %6353 = call float @dx.op.binary.f32(i32 36, float %6344, float %6352)  ; FMin(a,b)
  %6354 = call float @dx.op.binary.f32(i32 35, float %6345, float %6348)  ; FMax(a,b)
  %6355 = add nuw i32 %6346, 1
  %6356 = icmp eq i32 %6355, %6329
  br i1 %6356, label %6357, label %6343

; <label>:6357                                    ; preds = %6343
  br label %6358

; <label>:6358                                    ; preds = %6357, %6336
  %6359 = phi float [ %6340, %6336 ], [ %6353, %6357 ]
  %6360 = phi float [ %6337, %6336 ], [ %6354, %6357 ]
  %6361 = fsub fast float %6360, %6359
  %6362 = fdiv fast float 1.000000e+00, %6361
  br label %6363

; <label>:6363                                    ; preds = %6358, %6333
  %6364 = phi float [ %6334, %6333 ], [ %6360, %6358 ]
  %6365 = phi float [ %6335, %6333 ], [ %6362, %6358 ]
  %6366 = fadd fast float %6067, %6364
  %6367 = fmul fast float %6366, %6365
  %6368 = call float @dx.op.unary.f32(i32 7, float %6367)  ; Saturate(value)
  %6369 = fmul fast float %6368, 2.000000e+00
  %6370 = fsub fast float 1.000000e+00, %6369
  %6371 = fmul fast float %6205, %6205
  %6372 = fsub fast float %6206, %6371
  %6373 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6372)  ; FMax(a,b)
  %6374 = fdiv fast float 1.000000e+00, %6373
  %6375 = fmul fast float %6206, %6205
  %6376 = fsub fast float %6207, %6375
  %6377 = fsub fast float %6370, %6205
  %6378 = fmul fast float %6370, %6370
  %6379 = fsub fast float %6378, %6206
  %6380 = fmul fast float %6374, %6376
  %6381 = fmul fast float %6380, %6377
  %6382 = fsub fast float %6379, %6381
  %6383 = fmul fast float %6206, %6206
  %6384 = fsub fast float %6208, %6383
  %6385 = fmul fast float %6376, %6376
  %6386 = fmul fast float %6385, %6374
  %6387 = fsub fast float %6384, %6386
  %6388 = fdiv fast float %6382, %6387
  %6389 = fmul fast float %6388, %6376
  %6390 = fsub fast float %6377, %6389
  %6391 = fmul fast float %6390, %6374
  %6392 = fmul fast float %6391, %6205
  %6393 = fsub fast float 1.000000e+00, %6392
  %6394 = fmul fast float %6388, %6206
  %6395 = fsub fast float %6393, %6394
  %6396 = fmul fast float %6391, %6391
  %6397 = fmul fast float %6388, 4.000000e+00
  %6398 = fmul fast float %6397, %6395
  %6399 = fsub fast float %6396, %6398
  %6400 = call float @dx.op.unary.f32(i32 24, float %6399)  ; Sqrt(value)
  %6401 = fcmp fast oge float %6391, 0.000000e+00
  %6402 = fsub fast float -0.000000e+00, %6400
  %6403 = select i1 %6401, float %6402, float %6400
  %6404 = fsub fast float %6403, %6391
  %6405 = fdiv fast float %6404, %6388
  %6406 = fdiv fast float %6395, %6404
  %6407 = fmul fast float %6405, 5.000000e-01
  %6408 = fmul fast float %6406, 2.000000e+00
  %6409 = select i1 %6401, float %6407, float %6408
  %6410 = select i1 %6401, float %6408, float %6407
  %6411 = call float @dx.op.binary.f32(i32 35, float %6409, float %6410)  ; FMax(a,b)
  %6412 = call float @dx.op.binary.f32(i32 36, float %6409, float %6410)  ; FMin(a,b)
  %6413 = fcmp fast ogt float %6370, %6411
  %6414 = fsub fast float %6370, %6412
  %6415 = fsub fast float %6370, %6411
  %6416 = fsub fast float %6411, %6412
  %6417 = select i1 %6413, float %6415, float %6416
  %6418 = fmul float %6414, %6417
  %6419 = select i1 %6413, float %6412, float %6370
  %6420 = fcmp fast ogt float %6370, %6412
  %6421 = fmul fast float %6419, %6411
  %6422 = fadd fast float %6419, %6411
  %6423 = fmul fast float %6422, %6205
  %6424 = fadd fast float %6421, %6206
  %6425 = fsub fast float %6424, %6423
  %6426 = fdiv fast float %6425, %6418
  %6427 = select i1 %6420, float %6426, float 0.000000e+00
  %6428 = fsub fast float 1.000000e+00, %6427
  %6429 = select i1 %6413, float %6428, float %6427
  %6430 = call float @dx.op.unary.f32(i32 7, float %6429)  ; Saturate(value)
  %6431 = extractvalue %dx.types.CBufRet.f32 %6190, 3
  %6432 = fmul fast float %6431, %6430
  %6433 = fsub fast float 1.000000e+00, %6432
  br label %6434

; <label>:6434                                    ; preds = %6363, %6075, %6040, %6036, %6002
  %6435 = phi float [ 1.000000e+00, %6002 ], [ %6433, %6363 ], [ 1.000000e+00, %6040 ], [ 1.000000e+00, %6075 ], [ 1.000000e+00, %6036 ]
  %6436 = fcmp fast ogt float %6032, 0.000000e+00
  br i1 %6436, label %6437, label %6599, !dx.controlflow.hints !105

; <label>:6437                                    ; preds = %6434
  %6438 = fadd fast float %5945, %5919
  %6439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6440 = extractvalue %dx.types.CBufRet.f32 %6439, 2
  %6441 = extractvalue %dx.types.CBufRet.f32 %6439, 3
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 2
  %6444 = call float @dx.op.binary.f32(i32 35, float %6438, float 0.000000e+00)  ; FMax(a,b)
  %6445 = fadd fast float %6444, 0x3F10000000000000
  %6446 = fcmp fast oeq float %6443, 0.000000e+00
  br i1 %6446, label %6447, label %6514

; <label>:6447                                    ; preds = %6437
  %6448 = extractvalue %dx.types.CBufRet.f32 %6439, 1
  %6449 = extractvalue %dx.types.CBufRet.f32 %6439, 0
  %6450 = fmul fast float %6449, %5934
  %6451 = fmul fast float %6448, %5935
  %6452 = fadd fast float %6450, 5.000000e-01
  %6453 = call float @dx.op.unary.f32(i32 27, float %6452)  ; Round_ni(value)
  %6454 = fadd fast float %6451, 5.000000e-01
  %6455 = call float @dx.op.unary.f32(i32 27, float %6454)  ; Round_ni(value)
  %6456 = fsub fast float %6452, %6453
  %6457 = fsub fast float %6454, %6455
  %6458 = fadd fast float %6453, -5.000000e-01
  %6459 = fadd fast float %6455, -5.000000e-01
  %6460 = fmul fast float %6456, 2.000000e+00
  %6461 = fsub fast float 3.000000e+00, %6460
  %6462 = fadd fast float %6460, 1.000000e+00
  %6463 = fsub fast float 2.000000e+00, %6456
  %6464 = bitcast float %6461 to i32
  %6465 = sub nsw i32 2129859010, %6464
  %6466 = bitcast i32 %6465 to float
  %6467 = fmul fast float %6466, %6463
  %6468 = fadd fast float %6467, -1.000000e+00
  %6469 = bitcast float %6462 to i32
  %6470 = sub nsw i32 2129859010, %6469
  %6471 = bitcast i32 %6470 to float
  %6472 = fmul fast float %6471, %6456
  %6473 = fadd fast float %6472, 1.000000e+00
  %6474 = fmul fast float %6457, 2.000000e+00
  %6475 = fsub fast float 3.000000e+00, %6474
  %6476 = fadd fast float %6474, 1.000000e+00
  %6477 = fsub fast float 2.000000e+00, %6457
  %6478 = bitcast float %6475 to i32
  %6479 = sub nsw i32 2129859010, %6478
  %6480 = bitcast i32 %6479 to float
  %6481 = fmul fast float %6480, %6477
  %6482 = fadd fast float %6481, -1.000000e+00
  %6483 = bitcast float %6476 to i32
  %6484 = sub nsw i32 2129859010, %6483
  %6485 = bitcast i32 %6484 to float
  %6486 = fmul fast float %6485, %6457
  %6487 = fadd fast float %6486, 1.000000e+00
  %6488 = fadd fast float %6468, %6458
  %6489 = fmul fast float %6488, %6440
  %6490 = fadd fast float %6482, %6459
  %6491 = fmul fast float %6490, %6441
  %6492 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6489, float %6491, float undef, float undef, i32 0, i32 0, i32 undef, float %6445)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6493 = extractvalue %dx.types.ResRet.f32 %6492, 0
  %6494 = fmul fast float %6493, %6461
  %6495 = fadd fast float %6473, %6458
  %6496 = fmul fast float %6495, %6440
  %6497 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6496, float %6491, float undef, float undef, i32 0, i32 0, i32 undef, float %6445)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6498 = extractvalue %dx.types.ResRet.f32 %6497, 0
  %6499 = fmul fast float %6498, %6462
  %6500 = fadd fast float %6487, %6459
  %6501 = fmul fast float %6500, %6441
  %6502 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6489, float %6501, float undef, float undef, i32 0, i32 0, i32 undef, float %6445)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6503 = extractvalue %dx.types.ResRet.f32 %6502, 0
  %6504 = fmul fast float %6503, %6461
  %6505 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %6496, float %6501, float undef, float undef, i32 0, i32 0, i32 undef, float %6445)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6506 = extractvalue %dx.types.ResRet.f32 %6505, 0
  %6507 = fmul fast float %6506, %6462
  %6508 = fadd fast float %6507, %6504
  %6509 = fmul fast float %6508, %6476
  %6510 = fadd fast float %6499, %6494
  %6511 = fmul fast float %6510, %6475
  %6512 = fadd fast float %6511, %6509
  %6513 = fmul fast float %6512, 6.250000e-02
  br label %6599

; <label>:6514                                    ; preds = %6437
  %6515 = fmul fast float %227, 0x401921FB60000000
  %6516 = call float @dx.op.unary.f32(i32 13, float %6515)  ; Sin(value)
  %6517 = call float @dx.op.unary.f32(i32 12, float %6515)  ; Cos(value)
  %6518 = fsub fast float -0.000000e+00, %6516
  br label %6519

; <label>:6519                                    ; preds = %6568, %6514
  %6520 = phi float [ 0.000000e+00, %6514 ], [ %6563, %6568 ]
  %6521 = phi float [ 0.000000e+00, %6514 ], [ %6565, %6568 ]
  %6522 = phi i32 [ 0, %6514 ], [ %6569, %6568 ]
  %6523 = mul i32 %6522, 2
  %6524 = add i32 0, %6523
  %6525 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6524
  %6526 = load float, float* %6525, align 4
  %6527 = mul i32 %6522, 2
  %6528 = add i32 1, %6527
  %6529 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6528
  %6530 = load float, float* %6529, align 4
  %6531 = fmul fast float %6526, %6517
  %6532 = call float @dx.op.tertiary.f32(i32 46, float %6530, float %6518, float %6531)  ; FMad(a,b,c)
  %6533 = fmul fast float %6526, %6516
  %6534 = call float @dx.op.tertiary.f32(i32 46, float %6530, float %6517, float %6533)  ; FMad(a,b,c)
  %6535 = fmul fast float %6532, %6443
  %6536 = fmul fast float %6534, %6443
  %6537 = fadd fast float %6535, %5934
  %6538 = fadd fast float %6536, %5935
  %6539 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %6537, float %6538, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6540 = extractvalue %dx.types.ResRet.f32 %6539, 0
  %6541 = extractvalue %dx.types.ResRet.f32 %6539, 1
  %6542 = extractvalue %dx.types.ResRet.f32 %6539, 2
  %6543 = extractvalue %dx.types.ResRet.f32 %6539, 3
  %6544 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %6540, float* %6544, align 4
  %6545 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %6541, float* %6545, align 4
  %6546 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %6542, float* %6546, align 4
  %6547 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %6543, float* %6547, align 4
  %6548 = fsub fast float %6540, %6445
  %6549 = fcmp fast olt float %6548, 0.000000e+00
  %6550 = select i1 %6549, float 0.000000e+00, float 1.000000e+00
  %6551 = fadd fast float %6550, %6520
  %6552 = fmul fast float %6550, %6548
  %6553 = fadd fast float %6552, %6521
  br label %6554

; <label>:6554                                    ; preds = %6554, %6519
  %6555 = phi i32 [ 1, %6519 ], [ %6566, %6554 ]
  %6556 = phi float [ %6553, %6519 ], [ %6565, %6554 ]
  %6557 = phi float [ %6551, %6519 ], [ %6563, %6554 ]
  %6558 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %6555
  %6559 = load float, float* %6558, align 4, !tbaa !106, !noalias !96
  %6560 = fsub fast float %6559, %6445
  %6561 = fcmp fast olt float %6560, 0.000000e+00
  %6562 = select i1 %6561, float 0.000000e+00, float 1.000000e+00
  %6563 = fadd fast float %6562, %6557
  %6564 = fmul fast float %6562, %6560
  %6565 = fadd fast float %6564, %6556
  %6566 = add nuw nsw i32 %6555, 1
  %6567 = icmp eq i32 %6566, 4
  br i1 %6567, label %6568, label %6554, !llvm.loop !108

; <label>:6568                                    ; preds = %6554
  %6569 = add nuw nsw i32 %6522, 1
  %6570 = icmp eq i32 %6569, 8
  br i1 %6570, label %6571, label %6519, !llvm.loop !109

; <label>:6571                                    ; preds = %6568
  %6572 = fdiv fast float 1.000000e+00, %6563
  %6573 = fmul fast float %6572, %6565
  %6574 = fdiv fast float 1.000000e+00, %6445
  %6575 = fmul fast float %6573, %6574
  %6576 = call float @dx.op.unary.f32(i32 7, float %6575)  ; Saturate(value)
  %6577 = call float @dx.op.binary.f32(i32 35, float %6576, float 0.000000e+00)  ; FMax(a,b)
  %6578 = fmul fast float %6563, 3.125000e-02
  %6579 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6580 = fmul fast float %6579, 2.000000e+00
  %6581 = fadd fast float %6580, -1.000000e+00
  %6582 = fcmp fast ogt float %6581, 0.000000e+00
  %6583 = fcmp fast olt float %6581, 0.000000e+00
  %6584 = zext i1 %6582 to i32
  %6585 = zext i1 %6583 to i32
  %6586 = sub nsw i32 %6584, %6585
  %6587 = sitofp i32 %6586 to float
  %6588 = fmul fast float %6587, %6581
  %6589 = fsub fast float 1.000000e+00, %6588
  %6590 = fmul fast float %6589, %6589
  %6591 = fmul fast float %6590, %6589
  %6592 = fsub fast float %6589, %6591
  %6593 = fmul fast float %6592, %6577
  %6594 = fsub fast float 1.000000e+00, %6591
  %6595 = fsub fast float %6594, %6593
  %6596 = fmul fast float %6587, 5.000000e-01
  %6597 = fmul fast float %6596, %6595
  %6598 = fsub fast float 5.000000e-01, %6597
  br label %6599

; <label>:6599                                    ; preds = %6571, %6447, %6434
  %6600 = phi float [ 1.000000e+00, %6434 ], [ %6513, %6447 ], [ %6598, %6571 ]
  %6601 = fcmp fast ogt float %6030, 0.000000e+00
  br i1 %6601, label %6602, label %6766, !dx.controlflow.hints !110

; <label>:6602                                    ; preds = %6599
  %6603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6604 = extractvalue %dx.types.CBufRet.f32 %6603, 1
  %6605 = fadd fast float %6604, %5919
  %6606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6607 = extractvalue %dx.types.CBufRet.f32 %6606, 2
  %6608 = extractvalue %dx.types.CBufRet.f32 %6606, 3
  %6609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6610 = extractvalue %dx.types.CBufRet.f32 %6609, 1
  %6611 = call float @dx.op.binary.f32(i32 35, float %6605, float 0.000000e+00)  ; FMax(a,b)
  %6612 = fadd fast float %6611, 0x3F10000000000000
  %6613 = fcmp fast oeq float %6610, 0.000000e+00
  br i1 %6613, label %6614, label %6681

; <label>:6614                                    ; preds = %6602
  %6615 = extractvalue %dx.types.CBufRet.f32 %6606, 1
  %6616 = extractvalue %dx.types.CBufRet.f32 %6606, 0
  %6617 = fmul fast float %6616, %5926
  %6618 = fmul fast float %6615, %5927
  %6619 = fadd fast float %6617, 5.000000e-01
  %6620 = call float @dx.op.unary.f32(i32 27, float %6619)  ; Round_ni(value)
  %6621 = fadd fast float %6618, 5.000000e-01
  %6622 = call float @dx.op.unary.f32(i32 27, float %6621)  ; Round_ni(value)
  %6623 = fsub fast float %6619, %6620
  %6624 = fsub fast float %6621, %6622
  %6625 = fadd fast float %6620, -5.000000e-01
  %6626 = fadd fast float %6622, -5.000000e-01
  %6627 = fmul fast float %6623, 2.000000e+00
  %6628 = fsub fast float 3.000000e+00, %6627
  %6629 = fadd fast float %6627, 1.000000e+00
  %6630 = fsub fast float 2.000000e+00, %6623
  %6631 = bitcast float %6628 to i32
  %6632 = sub nsw i32 2129859010, %6631
  %6633 = bitcast i32 %6632 to float
  %6634 = fmul fast float %6633, %6630
  %6635 = fadd fast float %6634, -1.000000e+00
  %6636 = bitcast float %6629 to i32
  %6637 = sub nsw i32 2129859010, %6636
  %6638 = bitcast i32 %6637 to float
  %6639 = fmul fast float %6638, %6623
  %6640 = fadd fast float %6639, 1.000000e+00
  %6641 = fmul fast float %6624, 2.000000e+00
  %6642 = fsub fast float 3.000000e+00, %6641
  %6643 = fadd fast float %6641, 1.000000e+00
  %6644 = fsub fast float 2.000000e+00, %6624
  %6645 = bitcast float %6642 to i32
  %6646 = sub nsw i32 2129859010, %6645
  %6647 = bitcast i32 %6646 to float
  %6648 = fmul fast float %6647, %6644
  %6649 = fadd fast float %6648, -1.000000e+00
  %6650 = bitcast float %6643 to i32
  %6651 = sub nsw i32 2129859010, %6650
  %6652 = bitcast i32 %6651 to float
  %6653 = fmul fast float %6652, %6624
  %6654 = fadd fast float %6653, 1.000000e+00
  %6655 = fadd fast float %6635, %6625
  %6656 = fmul fast float %6655, %6607
  %6657 = fadd fast float %6649, %6626
  %6658 = fmul fast float %6657, %6608
  %6659 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6656, float %6658, float undef, float undef, i32 0, i32 0, i32 undef, float %6612)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6660 = extractvalue %dx.types.ResRet.f32 %6659, 0
  %6661 = fmul fast float %6660, %6628
  %6662 = fadd fast float %6640, %6625
  %6663 = fmul fast float %6662, %6607
  %6664 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6663, float %6658, float undef, float undef, i32 0, i32 0, i32 undef, float %6612)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 0
  %6666 = fmul fast float %6665, %6629
  %6667 = fadd fast float %6654, %6626
  %6668 = fmul fast float %6667, %6608
  %6669 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6656, float %6668, float undef, float undef, i32 0, i32 0, i32 undef, float %6612)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6670 = extractvalue %dx.types.ResRet.f32 %6669, 0
  %6671 = fmul fast float %6670, %6628
  %6672 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6663, float %6668, float undef, float undef, i32 0, i32 0, i32 undef, float %6612)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6673 = extractvalue %dx.types.ResRet.f32 %6672, 0
  %6674 = fmul fast float %6673, %6629
  %6675 = fadd fast float %6674, %6671
  %6676 = fmul fast float %6675, %6643
  %6677 = fadd fast float %6666, %6661
  %6678 = fmul fast float %6677, %6642
  %6679 = fadd fast float %6678, %6676
  %6680 = fmul fast float %6679, 6.250000e-02
  br label %6766

; <label>:6681                                    ; preds = %6602
  %6682 = fmul fast float %227, 0x401921FB60000000
  %6683 = call float @dx.op.unary.f32(i32 13, float %6682)  ; Sin(value)
  %6684 = call float @dx.op.unary.f32(i32 12, float %6682)  ; Cos(value)
  %6685 = fsub fast float -0.000000e+00, %6683
  br label %6686

; <label>:6686                                    ; preds = %6735, %6681
  %6687 = phi float [ 0.000000e+00, %6681 ], [ %6730, %6735 ]
  %6688 = phi float [ 0.000000e+00, %6681 ], [ %6732, %6735 ]
  %6689 = phi i32 [ 0, %6681 ], [ %6736, %6735 ]
  %6690 = mul i32 %6689, 2
  %6691 = add i32 0, %6690
  %6692 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6691
  %6693 = load float, float* %6692, align 4
  %6694 = mul i32 %6689, 2
  %6695 = add i32 1, %6694
  %6696 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6695
  %6697 = load float, float* %6696, align 4
  %6698 = fmul fast float %6693, %6684
  %6699 = call float @dx.op.tertiary.f32(i32 46, float %6697, float %6685, float %6698)  ; FMad(a,b,c)
  %6700 = fmul fast float %6693, %6683
  %6701 = call float @dx.op.tertiary.f32(i32 46, float %6697, float %6684, float %6700)  ; FMad(a,b,c)
  %6702 = fmul fast float %6699, %6610
  %6703 = fmul fast float %6701, %6610
  %6704 = fadd fast float %6702, %5926
  %6705 = fadd fast float %6703, %5927
  %6706 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %6704, float %6705, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6707 = extractvalue %dx.types.ResRet.f32 %6706, 0
  %6708 = extractvalue %dx.types.ResRet.f32 %6706, 1
  %6709 = extractvalue %dx.types.ResRet.f32 %6706, 2
  %6710 = extractvalue %dx.types.ResRet.f32 %6706, 3
  %6711 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 0
  store float %6707, float* %6711, align 4
  %6712 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 1
  store float %6708, float* %6712, align 4
  %6713 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 2
  store float %6709, float* %6713, align 4
  %6714 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 3
  store float %6710, float* %6714, align 4
  %6715 = fsub fast float %6707, %6612
  %6716 = fcmp fast olt float %6715, 0.000000e+00
  %6717 = select i1 %6716, float 0.000000e+00, float 1.000000e+00
  %6718 = fadd fast float %6717, %6687
  %6719 = fmul fast float %6717, %6715
  %6720 = fadd fast float %6719, %6688
  br label %6721

; <label>:6721                                    ; preds = %6721, %6686
  %6722 = phi i32 [ 1, %6686 ], [ %6733, %6721 ]
  %6723 = phi float [ %6720, %6686 ], [ %6732, %6721 ]
  %6724 = phi float [ %6718, %6686 ], [ %6730, %6721 ]
  %6725 = getelementptr [4 x float], [4 x float]* %84, i32 0, i32 %6722
  %6726 = load float, float* %6725, align 4, !tbaa !106, !noalias !96
  %6727 = fsub fast float %6726, %6612
  %6728 = fcmp fast olt float %6727, 0.000000e+00
  %6729 = select i1 %6728, float 0.000000e+00, float 1.000000e+00
  %6730 = fadd fast float %6729, %6724
  %6731 = fmul fast float %6729, %6727
  %6732 = fadd fast float %6731, %6723
  %6733 = add nuw nsw i32 %6722, 1
  %6734 = icmp eq i32 %6733, 4
  br i1 %6734, label %6735, label %6721, !llvm.loop !108

; <label>:6735                                    ; preds = %6721
  %6736 = add nuw nsw i32 %6689, 1
  %6737 = icmp eq i32 %6736, 8
  br i1 %6737, label %6738, label %6686, !llvm.loop !109

; <label>:6738                                    ; preds = %6735
  %6739 = fdiv fast float 1.000000e+00, %6730
  %6740 = fmul fast float %6739, %6732
  %6741 = fdiv fast float 1.000000e+00, %6612
  %6742 = fmul fast float %6740, %6741
  %6743 = call float @dx.op.unary.f32(i32 7, float %6742)  ; Saturate(value)
  %6744 = call float @dx.op.binary.f32(i32 35, float %6743, float 0.000000e+00)  ; FMax(a,b)
  %6745 = fmul fast float %6730, 3.125000e-02
  %6746 = call float @dx.op.unary.f32(i32 7, float %6745)  ; Saturate(value)
  %6747 = fmul fast float %6746, 2.000000e+00
  %6748 = fadd fast float %6747, -1.000000e+00
  %6749 = fcmp fast ogt float %6748, 0.000000e+00
  %6750 = fcmp fast olt float %6748, 0.000000e+00
  %6751 = zext i1 %6749 to i32
  %6752 = zext i1 %6750 to i32
  %6753 = sub nsw i32 %6751, %6752
  %6754 = sitofp i32 %6753 to float
  %6755 = fmul fast float %6754, %6748
  %6756 = fsub fast float 1.000000e+00, %6755
  %6757 = fmul fast float %6756, %6756
  %6758 = fmul fast float %6757, %6756
  %6759 = fsub fast float %6756, %6758
  %6760 = fmul fast float %6759, %6744
  %6761 = fsub fast float 1.000000e+00, %6758
  %6762 = fsub fast float %6761, %6760
  %6763 = fmul fast float %6754, 5.000000e-01
  %6764 = fmul fast float %6763, %6762
  %6765 = fsub fast float 5.000000e-01, %6764
  br label %6766

; <label>:6766                                    ; preds = %6738, %6614, %6599
  %6767 = phi float [ 1.000000e+00, %6599 ], [ %6680, %6614 ], [ %6765, %6738 ]
  %6768 = fcmp fast ogt float %6029, 0.000000e+00
  br i1 %6768, label %6769, label %6933, !dx.controlflow.hints !111

; <label>:6769                                    ; preds = %6766
  %6770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6771 = extractvalue %dx.types.CBufRet.f32 %6770, 0
  %6772 = fadd fast float %6771, %5919
  %6773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6774 = extractvalue %dx.types.CBufRet.f32 %6773, 2
  %6775 = extractvalue %dx.types.CBufRet.f32 %6773, 3
  %6776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6777 = extractvalue %dx.types.CBufRet.f32 %6776, 0
  %6778 = call float @dx.op.binary.f32(i32 35, float %6772, float 0.000000e+00)  ; FMax(a,b)
  %6779 = fadd fast float %6778, 0x3F10000000000000
  %6780 = fcmp fast oeq float %6777, 0.000000e+00
  br i1 %6780, label %6781, label %6848

; <label>:6781                                    ; preds = %6769
  %6782 = extractvalue %dx.types.CBufRet.f32 %6773, 1
  %6783 = extractvalue %dx.types.CBufRet.f32 %6773, 0
  %6784 = fmul fast float %6783, %5911
  %6785 = fmul fast float %6782, %5915
  %6786 = fadd fast float %6784, 5.000000e-01
  %6787 = call float @dx.op.unary.f32(i32 27, float %6786)  ; Round_ni(value)
  %6788 = fadd fast float %6785, 5.000000e-01
  %6789 = call float @dx.op.unary.f32(i32 27, float %6788)  ; Round_ni(value)
  %6790 = fsub fast float %6786, %6787
  %6791 = fsub fast float %6788, %6789
  %6792 = fadd fast float %6787, -5.000000e-01
  %6793 = fadd fast float %6789, -5.000000e-01
  %6794 = fmul fast float %6790, 2.000000e+00
  %6795 = fsub fast float 3.000000e+00, %6794
  %6796 = fadd fast float %6794, 1.000000e+00
  %6797 = fsub fast float 2.000000e+00, %6790
  %6798 = bitcast float %6795 to i32
  %6799 = sub nsw i32 2129859010, %6798
  %6800 = bitcast i32 %6799 to float
  %6801 = fmul fast float %6800, %6797
  %6802 = fadd fast float %6801, -1.000000e+00
  %6803 = bitcast float %6796 to i32
  %6804 = sub nsw i32 2129859010, %6803
  %6805 = bitcast i32 %6804 to float
  %6806 = fmul fast float %6805, %6790
  %6807 = fadd fast float %6806, 1.000000e+00
  %6808 = fmul fast float %6791, 2.000000e+00
  %6809 = fsub fast float 3.000000e+00, %6808
  %6810 = fadd fast float %6808, 1.000000e+00
  %6811 = fsub fast float 2.000000e+00, %6791
  %6812 = bitcast float %6809 to i32
  %6813 = sub nsw i32 2129859010, %6812
  %6814 = bitcast i32 %6813 to float
  %6815 = fmul fast float %6814, %6811
  %6816 = fadd fast float %6815, -1.000000e+00
  %6817 = bitcast float %6810 to i32
  %6818 = sub nsw i32 2129859010, %6817
  %6819 = bitcast i32 %6818 to float
  %6820 = fmul fast float %6819, %6791
  %6821 = fadd fast float %6820, 1.000000e+00
  %6822 = fadd fast float %6802, %6792
  %6823 = fmul fast float %6822, %6774
  %6824 = fadd fast float %6816, %6793
  %6825 = fmul fast float %6824, %6775
  %6826 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6823, float %6825, float undef, float undef, i32 0, i32 0, i32 undef, float %6779)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6827 = extractvalue %dx.types.ResRet.f32 %6826, 0
  %6828 = fmul fast float %6827, %6795
  %6829 = fadd fast float %6807, %6792
  %6830 = fmul fast float %6829, %6774
  %6831 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6830, float %6825, float undef, float undef, i32 0, i32 0, i32 undef, float %6779)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6832 = extractvalue %dx.types.ResRet.f32 %6831, 0
  %6833 = fmul fast float %6832, %6796
  %6834 = fadd fast float %6821, %6793
  %6835 = fmul fast float %6834, %6775
  %6836 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6823, float %6835, float undef, float undef, i32 0, i32 0, i32 undef, float %6779)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6837 = extractvalue %dx.types.ResRet.f32 %6836, 0
  %6838 = fmul fast float %6837, %6795
  %6839 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6830, float %6835, float undef, float undef, i32 0, i32 0, i32 undef, float %6779)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6840 = extractvalue %dx.types.ResRet.f32 %6839, 0
  %6841 = fmul fast float %6840, %6796
  %6842 = fadd fast float %6841, %6838
  %6843 = fmul fast float %6842, %6810
  %6844 = fadd fast float %6833, %6828
  %6845 = fmul fast float %6844, %6809
  %6846 = fadd fast float %6845, %6843
  %6847 = fmul fast float %6846, 6.250000e-02
  br label %6933

; <label>:6848                                    ; preds = %6769
  %6849 = fmul fast float %227, 0x401921FB60000000
  %6850 = call float @dx.op.unary.f32(i32 13, float %6849)  ; Sin(value)
  %6851 = call float @dx.op.unary.f32(i32 12, float %6849)  ; Cos(value)
  %6852 = fsub fast float -0.000000e+00, %6850
  br label %6853

; <label>:6853                                    ; preds = %6902, %6848
  %6854 = phi float [ 0.000000e+00, %6848 ], [ %6897, %6902 ]
  %6855 = phi float [ 0.000000e+00, %6848 ], [ %6899, %6902 ]
  %6856 = phi i32 [ 0, %6848 ], [ %6903, %6902 ]
  %6857 = mul i32 %6856, 2
  %6858 = add i32 0, %6857
  %6859 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6858
  %6860 = load float, float* %6859, align 4
  %6861 = mul i32 %6856, 2
  %6862 = add i32 1, %6861
  %6863 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6862
  %6864 = load float, float* %6863, align 4
  %6865 = fmul fast float %6860, %6851
  %6866 = call float @dx.op.tertiary.f32(i32 46, float %6864, float %6852, float %6865)  ; FMad(a,b,c)
  %6867 = fmul fast float %6860, %6850
  %6868 = call float @dx.op.tertiary.f32(i32 46, float %6864, float %6851, float %6867)  ; FMad(a,b,c)
  %6869 = fmul fast float %6866, %6777
  %6870 = fmul fast float %6868, %6777
  %6871 = fadd fast float %6869, %5911
  %6872 = fadd fast float %6870, %5915
  %6873 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %6871, float %6872, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6874 = extractvalue %dx.types.ResRet.f32 %6873, 0
  %6875 = extractvalue %dx.types.ResRet.f32 %6873, 1
  %6876 = extractvalue %dx.types.ResRet.f32 %6873, 2
  %6877 = extractvalue %dx.types.ResRet.f32 %6873, 3
  %6878 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 0
  store float %6874, float* %6878, align 4
  %6879 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 1
  store float %6875, float* %6879, align 4
  %6880 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 2
  store float %6876, float* %6880, align 4
  %6881 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 3
  store float %6877, float* %6881, align 4
  %6882 = fsub fast float %6874, %6779
  %6883 = fcmp fast olt float %6882, 0.000000e+00
  %6884 = select i1 %6883, float 0.000000e+00, float 1.000000e+00
  %6885 = fadd fast float %6884, %6854
  %6886 = fmul fast float %6884, %6882
  %6887 = fadd fast float %6886, %6855
  br label %6888

; <label>:6888                                    ; preds = %6888, %6853
  %6889 = phi i32 [ 1, %6853 ], [ %6900, %6888 ]
  %6890 = phi float [ %6887, %6853 ], [ %6899, %6888 ]
  %6891 = phi float [ %6885, %6853 ], [ %6897, %6888 ]
  %6892 = getelementptr [4 x float], [4 x float]* %83, i32 0, i32 %6889
  %6893 = load float, float* %6892, align 4, !tbaa !106, !noalias !96
  %6894 = fsub fast float %6893, %6779
  %6895 = fcmp fast olt float %6894, 0.000000e+00
  %6896 = select i1 %6895, float 0.000000e+00, float 1.000000e+00
  %6897 = fadd fast float %6896, %6891
  %6898 = fmul fast float %6896, %6894
  %6899 = fadd fast float %6898, %6890
  %6900 = add nuw nsw i32 %6889, 1
  %6901 = icmp eq i32 %6900, 4
  br i1 %6901, label %6902, label %6888, !llvm.loop !108

; <label>:6902                                    ; preds = %6888
  %6903 = add nuw nsw i32 %6856, 1
  %6904 = icmp eq i32 %6903, 8
  br i1 %6904, label %6905, label %6853, !llvm.loop !109

; <label>:6905                                    ; preds = %6902
  %6906 = fdiv fast float 1.000000e+00, %6897
  %6907 = fmul fast float %6906, %6899
  %6908 = fdiv fast float 1.000000e+00, %6779
  %6909 = fmul fast float %6907, %6908
  %6910 = call float @dx.op.unary.f32(i32 7, float %6909)  ; Saturate(value)
  %6911 = call float @dx.op.binary.f32(i32 35, float %6910, float 0.000000e+00)  ; FMax(a,b)
  %6912 = fmul fast float %6897, 3.125000e-02
  %6913 = call float @dx.op.unary.f32(i32 7, float %6912)  ; Saturate(value)
  %6914 = fmul fast float %6913, 2.000000e+00
  %6915 = fadd fast float %6914, -1.000000e+00
  %6916 = fcmp fast ogt float %6915, 0.000000e+00
  %6917 = fcmp fast olt float %6915, 0.000000e+00
  %6918 = zext i1 %6916 to i32
  %6919 = zext i1 %6917 to i32
  %6920 = sub nsw i32 %6918, %6919
  %6921 = sitofp i32 %6920 to float
  %6922 = fmul fast float %6921, %6915
  %6923 = fsub fast float 1.000000e+00, %6922
  %6924 = fmul fast float %6923, %6923
  %6925 = fmul fast float %6924, %6923
  %6926 = fsub fast float %6923, %6925
  %6927 = fmul fast float %6926, %6911
  %6928 = fsub fast float 1.000000e+00, %6925
  %6929 = fsub fast float %6928, %6927
  %6930 = fmul fast float %6921, 5.000000e-01
  %6931 = fmul fast float %6930, %6929
  %6932 = fsub fast float 5.000000e-01, %6931
  br label %6933

; <label>:6933                                    ; preds = %6905, %6781, %6766
  %6934 = phi float [ 1.000000e+00, %6766 ], [ %6847, %6781 ], [ %6932, %6905 ]
  %6935 = fsub fast float %6600, %6435
  %6936 = fmul fast float %6935, %5973
  %6937 = fadd fast float %6936, %6435
  %6938 = fsub fast float %6767, %6937
  %6939 = fmul fast float %6938, %6003
  %6940 = fadd fast float %6939, %6937
  %6941 = fsub fast float %6934, %6940
  %6942 = fmul fast float %6941, %6029
  %6943 = fadd fast float %6942, %6940
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 2
  %6946 = fcmp fast ogt float %6945, 0.000000e+00
  br i1 %6946, label %6947, label %6987, !dx.controlflow.hints !112

; <label>:6947                                    ; preds = %6933
  %6948 = fcmp fast ugt float %6945, 0.000000e+00
  br i1 %6948, label %6949, label %6984

; <label>:6949                                    ; preds = %6947
  %6950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6951 = extractvalue %dx.types.CBufRet.f32 %6950, 0
  %6952 = extractvalue %dx.types.CBufRet.f32 %6950, 1
  %6953 = extractvalue %dx.types.CBufRet.f32 %6950, 2
  %6954 = extractvalue %dx.types.CBufRet.f32 %6950, 3
  %6955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6956 = extractvalue %dx.types.CBufRet.f32 %6955, 0
  %6957 = extractvalue %dx.types.CBufRet.f32 %6955, 1
  %6958 = extractvalue %dx.types.CBufRet.f32 %6955, 2
  %6959 = extractvalue %dx.types.CBufRet.f32 %6955, 3
  %6960 = extractvalue %dx.types.CBufRet.f32 %6944, 0
  %6961 = extractvalue %dx.types.CBufRet.f32 %6944, 1
  %6962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6963 = extractvalue %dx.types.CBufRet.f32 %6962, 0
  %6964 = extractvalue %dx.types.CBufRet.f32 %6962, 1
  %6965 = extractvalue %dx.types.CBufRet.f32 %6962, 2
  %6966 = fadd fast float %6963, %5888
  %6967 = fadd fast float %6964, %5889
  %6968 = fadd fast float %6965, %5890
  %6969 = fmul fast float %6966, %6951
  %6970 = call float @dx.op.tertiary.f32(i32 46, float %6952, float %6967, float %6969)  ; FMad(a,b,c)
  %6971 = call float @dx.op.tertiary.f32(i32 46, float %6953, float %6968, float %6970)  ; FMad(a,b,c)
  %6972 = fadd fast float %6971, %6954
  %6973 = fmul fast float %6966, %6956
  %6974 = call float @dx.op.tertiary.f32(i32 46, float %6957, float %6967, float %6973)  ; FMad(a,b,c)
  %6975 = call float @dx.op.tertiary.f32(i32 46, float %6958, float %6968, float %6974)  ; FMad(a,b,c)
  %6976 = fadd fast float %6975, %6959
  %6977 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %6972, float %6976, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6978 = extractvalue %dx.types.ResRet.f32 %6977, 0
  %6979 = fmul fast float %6978, %6961
  %6980 = fadd fast float %6979, %6960
  %6981 = call float @dx.op.unary.f32(i32 7, float %6980)  ; Saturate(value)
  %6982 = fmul fast float %6981, %6945
  %6983 = fsub fast float 1.000000e+00, %6982
  br label %6984

; <label>:6984                                    ; preds = %6949, %6947
  %6985 = phi float [ %6983, %6949 ], [ 1.000000e+00, %6947 ]
  %6986 = fmul fast float %6985, %6943
  br label %6987

; <label>:6987                                    ; preds = %6984, %6933, %5868
  %6988 = phi float [ 1.000000e+00, %5868 ], [ %6986, %6984 ], [ %6943, %6933 ]
  %6989 = call float @dx.op.binary.f32(i32 36, float %6988, float %6988)  ; FMin(a,b)
  %6990 = call float @dx.op.binary.f32(i32 36, float %6988, float %6989)  ; FMin(a,b)
  %6991 = fcmp fast ogt float %6990, 0.000000e+00
  br i1 %6991, label %6992, label %7158, !dx.controlflow.hints !113

; <label>:6992                                    ; preds = %6987
  %6993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6994 = extractvalue %dx.types.CBufRet.f32 %6993, 0
  %6995 = extractvalue %dx.types.CBufRet.f32 %6993, 1
  %6996 = extractvalue %dx.types.CBufRet.f32 %6993, 2
  %6997 = extractvalue %dx.types.CBufRet.f32 %6993, 3
  %6998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6999 = extractvalue %dx.types.CBufRet.f32 %6998, 0
  %7000 = extractvalue %dx.types.CBufRet.f32 %6998, 1
  %7001 = extractvalue %dx.types.CBufRet.f32 %6998, 2
  %7002 = extractvalue %dx.types.CBufRet.f32 %6998, 3
  %7003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7004 = extractvalue %dx.types.CBufRet.f32 %7003, 0
  %7005 = extractvalue %dx.types.CBufRet.f32 %7003, 1
  %7006 = extractvalue %dx.types.CBufRet.f32 %7003, 2
  %7007 = extractvalue %dx.types.CBufRet.f32 %7003, 3
  %7008 = fmul fast float %6994, %5888
  %7009 = call float @dx.op.tertiary.f32(i32 46, float %5889, float %6995, float %7008)  ; FMad(a,b,c)
  %7010 = call float @dx.op.tertiary.f32(i32 46, float %5890, float %6996, float %7009)  ; FMad(a,b,c)
  %7011 = fadd fast float %7010, %6997
  %7012 = fmul fast float %6999, %5888
  %7013 = call float @dx.op.tertiary.f32(i32 46, float %5889, float %7000, float %7012)  ; FMad(a,b,c)
  %7014 = call float @dx.op.tertiary.f32(i32 46, float %5890, float %7001, float %7013)  ; FMad(a,b,c)
  %7015 = fadd fast float %7014, %7002
  %7016 = fmul fast float %7004, %5888
  %7017 = call float @dx.op.tertiary.f32(i32 46, float %5889, float %7005, float %7016)  ; FMad(a,b,c)
  %7018 = call float @dx.op.tertiary.f32(i32 46, float %5890, float %7006, float %7017)  ; FMad(a,b,c)
  %7019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7020 = extractvalue %dx.types.CBufRet.f32 %7019, 0
  %7021 = extractvalue %dx.types.CBufRet.f32 %7019, 1
  %7022 = extractvalue %dx.types.CBufRet.f32 %7019, 3
  %7023 = fmul fast float %7022, %7011
  %7024 = fmul fast float %7022, %7015
  %7025 = fadd fast float %7023, %7020
  %7026 = fadd fast float %7024, %7021
  %7027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7028 = extractvalue %dx.types.CBufRet.f32 %7027, 0
  %7029 = extractvalue %dx.types.CBufRet.f32 %7027, 1
  %7030 = fsub fast float %7025, %7028
  %7031 = fsub fast float %7026, %7029
  %7032 = fcmp fast olt float %7030, 0.000000e+00
  %7033 = fcmp fast olt float %7031, 0.000000e+00
  %7034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7035 = extractvalue %dx.types.CBufRet.f32 %7034, 0
  %7036 = extractvalue %dx.types.CBufRet.f32 %7034, 1
  %7037 = extractvalue %dx.types.CBufRet.f32 %7034, 2
  %7038 = extractvalue %dx.types.CBufRet.f32 %7034, 3
  %7039 = select i1 %7032, float %7035, float %7037
  %7040 = select i1 %7033, float %7036, float %7038
  %7041 = fmul fast float %7039, %7030
  %7042 = fmul fast float %7040, %7031
  %7043 = call float @dx.op.unary.f32(i32 6, float %7041)  ; FAbs(value)
  %7044 = call float @dx.op.unary.f32(i32 6, float %7042)  ; FAbs(value)
  %7045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7046 = extractvalue %dx.types.CBufRet.f32 %7045, 0
  %7047 = call float @dx.op.binary.f32(i32 35, float %7043, float %7044)  ; FMax(a,b)
  %7048 = fsub fast float %7046, %7047
  %7049 = call float @dx.op.unary.f32(i32 7, float %7048)  ; Saturate(value)
  %7050 = fcmp fast ogt float %7049, 0.000000e+00
  br i1 %7050, label %7051, label %7092, !dx.controlflow.hints !114

; <label>:7051                                    ; preds = %6992
  %7052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %7025, float %7026, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7053 = extractvalue %dx.types.ResRet.f32 %7052, 1
  %7054 = fcmp fast ogt float %7053, 0.000000e+00
  br i1 %7054, label %7055, label %7087

; <label>:7055                                    ; preds = %7051
  %7056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %7025, float %7026, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7057 = extractvalue %dx.types.ResRet.f32 %7056, 0
  %7058 = extractvalue %dx.types.ResRet.f32 %7056, 1
  %7059 = extractvalue %dx.types.ResRet.f32 %7056, 2
  %7060 = extractvalue %dx.types.ResRet.f32 %7056, 3
  %7061 = fsub fast float 1.000000e+00, %7007
  %7062 = fsub fast float %7061, %7018
  %7063 = fmul fast float %7062, 0x400921FB60000000
  %7064 = fadd fast float %7063, 0x3FF921FB60000000
  %7065 = call float @dx.op.unary.f32(i32 13, float %7064)  ; Sin(value)
  %7066 = fadd fast float %7065, -1.000000e+00
  %7067 = fmul fast float %7066, 0x3FD45F3060000000
  %7068 = fmul fast float %7062, 0x401921FB60000000
  %7069 = fadd fast float %7068, 0x400921FB60000000
  %7070 = call float @dx.op.unary.f32(i32 13, float %7069)  ; Sin(value)
  %7071 = fadd fast float %7070, 0x3E7777A5C0000000
  %7072 = fmul fast float %7071, 0x3FC45F3060000000
  %7073 = fmul fast float %7062, 0x4022D97C80000000
  %7074 = fadd fast float %7073, 0x4012D97C80000000
  %7075 = call float @dx.op.unary.f32(i32 13, float %7074)  ; Sin(value)
  %7076 = fadd fast float %7075, 1.000000e+00
  %7077 = fmul fast float %7076, 0x3FBB2995E0000000
  %7078 = fmul fast float %7062, 0x402921FB60000000
  %7079 = fadd fast float %7078, 0x401921FB60000000
  %7080 = call float @dx.op.unary.f32(i32 13, float %7079)  ; Sin(value)
  %7081 = fadd fast float %7080, 0xBE8777A5C0000000
  %7082 = fmul fast float %7081, 0x3FB45F3060000000
  %7083 = call float @dx.op.dot4.f32(i32 56, float %7057, float %7058, float %7059, float %7060, float %7067, float %7072, float %7077, float %7082)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7084 = fmul fast float %7083, 0xBFF7154760000000
  %7085 = call float @dx.op.unary.f32(i32 21, float %7084)  ; Exp(value)
  %7086 = call float @dx.op.unary.f32(i32 7, float %7085)  ; Saturate(value)
  br label %7087

; <label>:7087                                    ; preds = %7055, %7051
  %7088 = phi float [ %7086, %7055 ], [ 1.000000e+00, %7051 ]
  %7089 = fadd fast float %7088, -1.000000e+00
  %7090 = fmul fast float %7089, %7049
  %7091 = fadd fast float %7090, 1.000000e+00
  br label %7092

; <label>:7092                                    ; preds = %7087, %6992
  %7093 = phi float [ %7091, %7087 ], [ 1.000000e+00, %6992 ]
  %7094 = fmul fast float %7093, %6988
  %7095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7096 = extractvalue %dx.types.CBufRet.f32 %7095, 0
  %7097 = extractvalue %dx.types.CBufRet.f32 %7095, 1
  %7098 = extractvalue %dx.types.CBufRet.f32 %7095, 2
  %7099 = fadd fast float %7096, %155
  %7100 = fadd fast float %7097, %156
  %7101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7102 = extractvalue %dx.types.CBufRet.f32 %7101, 1
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 0
  %7105 = extractvalue %dx.types.CBufRet.f32 %7103, 1
  %7106 = extractvalue %dx.types.CBufRet.f32 %7103, 2
  %7107 = fsub fast float -0.000000e+00, %7099
  %7108 = fsub fast float -0.000000e+00, %7100
  %7109 = fsub fast float -0.000000e+00, %157
  %7110 = fsub fast float %7109, %7098
  %7111 = fadd fast float %7110, %7102
  %7112 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7107, float %7108, float %7111)  ; Dot3(ax,ay,az,bx,by,bz)
  %7113 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7104, float %7105, float %7106)  ; Dot3(ax,ay,az,bx,by,bz)
  %7114 = fdiv fast float 1.000000e+00, %7113
  %7115 = fmul fast float %7114, %7112
  %7116 = fmul fast float %7104, %7115
  %7117 = fmul fast float %7105, %7115
  %7118 = fadd fast float %7116, %7099
  %7119 = fadd fast float %7117, %7100
  %7120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7121 = extractvalue %dx.types.CBufRet.f32 %7120, 0
  %7122 = extractvalue %dx.types.CBufRet.f32 %7120, 1
  %7123 = fsub fast float %7118, %7121
  %7124 = fsub fast float %7119, %7122
  %7125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7126 = extractvalue %dx.types.CBufRet.f32 %7125, 2
  %7127 = extractvalue %dx.types.CBufRet.f32 %7125, 3
  %7128 = fmul fast float %7123, %7126
  %7129 = fmul fast float %7124, %7127
  %7130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7131 = extractvalue %dx.types.CBufRet.i32 %7130, 3
  %7132 = icmp eq i32 %7131, 0
  br i1 %7132, label %7138, label %7133

; <label>:7133                                    ; preds = %7092
  %7134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %7128, float %7129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7135 = extractvalue %dx.types.ResRet.f32 %7134, 0
  %7136 = extractvalue %dx.types.ResRet.f32 %7134, 1
  %7137 = extractvalue %dx.types.ResRet.f32 %7134, 2
  br label %7143

; <label>:7138                                    ; preds = %7092
  %7139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7128, float %7129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7140 = extractvalue %dx.types.ResRet.f32 %7139, 0
  %7141 = extractvalue %dx.types.ResRet.f32 %7139, 1
  %7142 = extractvalue %dx.types.ResRet.f32 %7139, 2
  br label %7143

; <label>:7143                                    ; preds = %7138, %7133
  %7144 = phi float [ %7135, %7133 ], [ %7140, %7138 ]
  %7145 = phi float [ %7136, %7133 ], [ %7141, %7138 ]
  %7146 = phi float [ %7137, %7133 ], [ %7142, %7138 ]
  %7147 = extractvalue %dx.types.CBufRet.f32 %7101, 2
  %7148 = fmul fast float %7147, %7144
  %7149 = extractvalue %dx.types.CBufRet.f32 %7101, 0
  %7150 = fsub fast float %7115, %7149
  %7151 = fsub fast float %7150, %7148
  %7152 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7151)  ; FMax(a,b)
  %7153 = fmul fast float %7152, %7145
  %7154 = call float @dx.op.binary.f32(i32 36, float %7146, float %7153)  ; FMin(a,b)
  %7155 = fmul fast float %7154, 0xBFF7154760000000
  %7156 = call float @dx.op.unary.f32(i32 21, float %7155)  ; Exp(value)
  %7157 = fmul fast float %7094, %7156
  br label %7158

; <label>:7158                                    ; preds = %7143, %6987
  %7159 = phi float [ %7157, %7143 ], [ %6988, %6987 ]
  %7160 = call float @dx.op.binary.f32(i32 36, float %7159, float %7159)  ; FMin(a,b)
  %7161 = call float @dx.op.binary.f32(i32 36, float %7159, float %7160)  ; FMin(a,b)
  %7162 = fcmp fast ogt float %7161, 0.000000e+00
  br i1 %7162, label %7163, label %7346, !dx.controlflow.hints !115

; <label>:7163                                    ; preds = %7158
  %7164 = fmul fast float %7159, %5880
  %7165 = fmul fast float %7159, %5881
  %7166 = fmul fast float %7159, %5882
  %7167 = fsub fast float %5869, %5128
  %7168 = fsub fast float %5870, %5127
  %7169 = fsub fast float %5871, %5126
  %7170 = call float @dx.op.dot3.f32(i32 55, float %7167, float %7168, float %7169, float %7167, float %7168, float %7169)  ; Dot3(ax,ay,az,bx,by,bz)
  %7171 = call float @dx.op.unary.f32(i32 25, float %7170)  ; Rsqrt(value)
  %7172 = fmul fast float %7171, %7167
  %7173 = fmul fast float %7171, %7168
  %7174 = fmul fast float %7171, %7169
  %7175 = call float @dx.op.dot3.f32(i32 55, float %5869, float %5870, float %5871, float %5135, float %5136, float %5137)  ; Dot3(ax,ay,az,bx,by,bz)
  %7176 = call float @dx.op.dot3.f32(i32 55, float %5125, float %5124, float %5123, float %7172, float %7173, float %7174)  ; Dot3(ax,ay,az,bx,by,bz)
  %7177 = call float @dx.op.unary.f32(i32 7, float %7175)  ; Saturate(value)
  %7178 = fmul fast float %7177, %7177
  %7179 = fmul fast float %7178, %5864
  %7180 = call float @dx.op.unary.f32(i32 7, float %7179)  ; Saturate(value)
  %7181 = fmul fast float %7180, %7177
  %7182 = call float @dx.op.dot3.f32(i32 55, float %5135, float %5136, float %5137, float %7172, float %7173, float %7174)  ; Dot3(ax,ay,az,bx,by,bz)
  %7183 = fmul fast float %7182, %7182
  %7184 = call float @dx.op.unary.f32(i32 6, float %7175)  ; FAbs(value)
  %7185 = fsub fast float 1.000000e+00, %5160
  %7186 = fmul fast float %5142, %5142
  %7187 = fmul fast float %7186, %7185
  %7188 = fadd fast float %7187, %5160
  %7189 = bitcast float %7188 to i32
  %7190 = ashr i32 %7189, 1
  %7191 = add nsw i32 %7190, 532487669
  %7192 = bitcast i32 %7191 to float
  %7193 = fadd fast float %7192, %5142
  %7194 = fmul fast float %5160, %7183
  %7195 = fsub fast float 1.000000e+00, %7183
  %7196 = fadd fast float %7195, %7194
  %7197 = fmul fast float %7184, %7184
  %7198 = fmul fast float %7197, %7185
  %7199 = fadd fast float %7198, %5160
  %7200 = bitcast float %7199 to i32
  %7201 = ashr i32 %7200, 1
  %7202 = add nsw i32 %7201, 532487669
  %7203 = bitcast i32 %7202 to float
  %7204 = fadd fast float %7203, %7184
  %7205 = fmul fast float %7196, %7196
  %7206 = fmul fast float %7205, %7193
  %7207 = fmul fast float %7206, %7204
  %7208 = fdiv fast float 0x3FF0A00000000000, %7207
  %7209 = fmul fast float %7208, %5160
  %7210 = fmul fast float %5266, 0x3FF9999980000000
  %7211 = fsub fast float 5.000000e+00, %7210
  %7212 = call float @dx.op.unary.f32(i32 6, float %7176)  ; FAbs(value)
  %7213 = fsub fast float 1.000000e+00, %7212
  %7214 = fmul fast float %5266, 0x41D9660740000000
  %7215 = fadd fast float %7214, 0xC1EFBF8940000000
  %7216 = bitcast float %7213 to i32
  %7217 = sitofp i32 %7216 to float
  %7218 = fmul fast float %7217, %7211
  %7219 = fadd fast float %7215, %7218
  %7220 = fptosi float %7219 to i32
  %7221 = bitcast i32 %7220 to float
  %7222 = fsub fast float 1.000000e+00, %5132
  %7223 = fsub fast float 1.000000e+00, %5133
  %7224 = fsub fast float 1.000000e+00, %5140
  %7225 = fmul fast float %7221, %7222
  %7226 = fmul fast float %7221, %7223
  %7227 = fmul fast float %7221, %7224
  %7228 = fadd fast float %7225, %5132
  %7229 = fadd fast float %7226, %5133
  %7230 = fadd fast float %7227, %5140
  br i1 %5289, label %7231, label %7254

; <label>:7231                                    ; preds = %7163
  %7232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %4815, float %7212, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7233 = extractvalue %dx.types.ResRet.f32 %7232, 0
  %7234 = extractvalue %dx.types.ResRet.f32 %7232, 1
  %7235 = extractvalue %dx.types.ResRet.f32 %7232, 2
  %7236 = fadd fast float %7233, -5.000000e-01
  %7237 = fadd fast float %7234, -5.000000e-01
  %7238 = fadd fast float %7235, -5.000000e-01
  %7239 = fmul fast float %5132, 4.000000e+00
  %7240 = fmul fast float %7239, %7222
  %7241 = fmul fast float %7240, %7236
  %7242 = fmul fast float %5133, 4.000000e+00
  %7243 = fmul fast float %7242, %7223
  %7244 = fmul fast float %7243, %7237
  %7245 = fmul fast float %5140, 4.000000e+00
  %7246 = fmul fast float %7245, %7224
  %7247 = fmul fast float %7246, %7238
  %7248 = fadd fast float %7241, %7228
  %7249 = fadd fast float %7244, %7229
  %7250 = fadd fast float %7247, %7230
  %7251 = call float @dx.op.unary.f32(i32 7, float %7248)  ; Saturate(value)
  %7252 = call float @dx.op.unary.f32(i32 7, float %7249)  ; Saturate(value)
  %7253 = call float @dx.op.unary.f32(i32 7, float %7250)  ; Saturate(value)
  br label %7254

; <label>:7254                                    ; preds = %7231, %7163
  %7255 = phi float [ %7251, %7231 ], [ %7228, %7163 ]
  %7256 = phi float [ %7252, %7231 ], [ %7229, %7163 ]
  %7257 = phi float [ %7253, %7231 ], [ %7230, %7163 ]
  %7258 = fmul fast float %7175, 9.843750e-01
  %7259 = fadd fast float %7258, 7.812500e-03
  %7260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %7259, float %5270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7261 = extractvalue %dx.types.ResRet.f32 %7260, 0
  %7262 = extractvalue %dx.types.ResRet.f32 %7260, 1
  %7263 = extractvalue %dx.types.ResRet.f32 %7260, 2
  %7264 = extractvalue %dx.types.ResRet.f32 %7260, 3
  %7265 = fsub fast float %7263, %7261
  %7266 = fsub fast float %7264, %7262
  %7267 = fmul fast float %7265, %5276
  %7268 = fmul fast float %7266, %5276
  %7269 = fadd fast float %7267, %7261
  %7270 = fadd fast float %7268, %7262
  %7271 = fmul fast float %7269, %5132
  %7272 = fmul fast float %7269, %5133
  %7273 = fmul fast float %7269, %5140
  %7274 = fadd fast float %7271, %7270
  %7275 = fadd fast float %7272, %7270
  %7276 = fadd fast float %7273, %7270
  br i1 %5289, label %7277, label %7300

; <label>:7277                                    ; preds = %7254
  %7278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %4815, float %7175, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7279 = extractvalue %dx.types.ResRet.f32 %7278, 0
  %7280 = extractvalue %dx.types.ResRet.f32 %7278, 1
  %7281 = extractvalue %dx.types.ResRet.f32 %7278, 2
  %7282 = fadd fast float %7279, -5.000000e-01
  %7283 = fadd fast float %7280, -5.000000e-01
  %7284 = fadd fast float %7281, -5.000000e-01
  %7285 = fmul fast float %5132, 4.000000e+00
  %7286 = fmul fast float %7285, %7222
  %7287 = fmul fast float %7286, %7282
  %7288 = fmul fast float %5133, 4.000000e+00
  %7289 = fmul fast float %7288, %7223
  %7290 = fmul fast float %7289, %7283
  %7291 = fmul fast float %5140, 4.000000e+00
  %7292 = fmul fast float %7291, %7224
  %7293 = fmul fast float %7292, %7284
  %7294 = fadd fast float %7287, %7274
  %7295 = fadd fast float %7290, %7275
  %7296 = fadd fast float %7293, %7276
  %7297 = call float @dx.op.unary.f32(i32 7, float %7294)  ; Saturate(value)
  %7298 = call float @dx.op.unary.f32(i32 7, float %7295)  ; Saturate(value)
  %7299 = call float @dx.op.unary.f32(i32 7, float %7296)  ; Saturate(value)
  br label %7300

; <label>:7300                                    ; preds = %7277, %7254
  %7301 = phi float [ %7297, %7277 ], [ %7274, %7254 ]
  %7302 = phi float [ %7298, %7277 ], [ %7275, %7254 ]
  %7303 = phi float [ %7299, %7277 ], [ %7276, %7254 ]
  %7304 = call float @dx.op.binary.f32(i32 35, float %7302, float %7303)  ; FMax(a,b)
  %7305 = call float @dx.op.binary.f32(i32 35, float %7301, float %7304)  ; FMax(a,b)
  %7306 = fsub fast float 1.000000e+00, %7305
  %7307 = fmul fast float %7255, %7209
  %7308 = fmul fast float %7256, %7209
  %7309 = fmul fast float %7257, %7209
  %7310 = fsub fast float 1.000000e+00, %7176
  %7311 = bitcast float %7310 to i32
  %7312 = sitofp i32 %7311 to float
  %7313 = fmul fast float %7312, 5.000000e+00
  %7314 = fadd fast float %7313, 0xC1EFBF8940000000
  %7315 = fptosi float %7314 to i32
  %7316 = bitcast i32 %7315 to float
  %7317 = fmul fast float %7316, %4816
  %7318 = fmul fast float %7306, %7317
  %7319 = fmul fast float %7318, %5803
  %7320 = fmul fast float %7318, %5804
  %7321 = fmul fast float %7318, %5805
  %7322 = fadd fast float %7319, %7307
  %7323 = fadd fast float %7320, %7308
  %7324 = fadd fast float %7321, %7309
  %7325 = fmul fast float %7181, %7164
  %7326 = fmul fast float %7325, %7306
  %7327 = fmul fast float %7181, %7165
  %7328 = fmul fast float %7327, %7306
  %7329 = fmul fast float %7181, %7166
  %7330 = fmul fast float %7329, %7306
  %7331 = fmul fast float %7325, %7322
  %7332 = fmul fast float %7327, %7323
  %7333 = fmul fast float %7329, %7324
  %7334 = fadd fast float %7326, %5787
  %7335 = fmul fast float %7334, %4812
  %7336 = fadd fast float %7328, %5788
  %7337 = fmul fast float %7336, %4812
  %7338 = fadd fast float %7330, %5789
  %7339 = fmul fast float %7338, %4812
  %7340 = fadd fast float %7331, %5856
  %7341 = fmul fast float %7340, %4812
  %7342 = fadd fast float %7332, %5859
  %7343 = fmul fast float %7342, %4812
  %7344 = fadd fast float %7333, %5862
  %7345 = fmul fast float %7344, %4812
  br label %7346

; <label>:7346                                    ; preds = %7300, %7158, %5783
  %7347 = phi float [ %5857, %5783 ], [ %5857, %7158 ], [ %7341, %7300 ]
  %7348 = phi float [ %5860, %5783 ], [ %5860, %7158 ], [ %7343, %7300 ]
  %7349 = phi float [ %5863, %5783 ], [ %5863, %7158 ], [ %7345, %7300 ]
  %7350 = phi float [ %5852, %5783 ], [ %5852, %7158 ], [ %7335, %7300 ]
  %7351 = phi float [ %5853, %5783 ], [ %5853, %7158 ], [ %7337, %7300 ]
  %7352 = phi float [ %5854, %5783 ], [ %5854, %7158 ], [ %7339, %7300 ]
  %7353 = fmul fast float %4812, %4812
  %7354 = fmul fast float %7353, %5829
  %7355 = fmul fast float %7353, %5830
  %7356 = fmul fast float %7353, %5831
  %7357 = fadd fast float %7354, 1.000000e+00
  %7358 = fadd fast float %7355, 1.000000e+00
  %7359 = fadd fast float %7356, 1.000000e+00
  %7360 = call float @dx.op.dot3.f32(i32 55, float %7357, float %7358, float %7359, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7361 = fsub fast float 1.000000e+00, %7360
  %7362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7363 = extractvalue %dx.types.CBufRet.f32 %7362, 0
  %7364 = fmul fast float %7363, %5835
  %7365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.f32 %7365, 3
  %7367 = fsub fast float 1.000000e+00, %4819
  %7368 = call float @dx.op.unary.f32(i32 7, float %7367)  ; Saturate(value)
  %7369 = fadd fast float %7352, %4818
  %7370 = fmul fast float %7369, %4819
  %7371 = fmul fast float %7368, %7366
  %7372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7373 = extractvalue %dx.types.CBufRet.f32 %7372, 3
  %7374 = fmul fast float %7350, %5129
  %7375 = fmul fast float %7351, %5130
  %7376 = fmul fast float %7352, %5131
  %7377 = fcmp fast ogt float %80, %177
  %7378 = and i1 %7377, %4861
  %7379 = or i1 %4940, %7378
  %7380 = icmp eq i32 %4860, 2
  %7381 = fcmp fast ole float %80, %177
  %7382 = and i1 %7381, %7380
  %7383 = or i1 %7382, %7379
  br i1 %7378, label %7384, label %7641

; <label>:7384                                    ; preds = %7346
  %7385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7386 = extractvalue %dx.types.CBufRet.f32 %7385, 2
  %7387 = extractvalue %dx.types.CBufRet.f32 %7385, 3
  %7388 = fmul fast float %7386, %92
  %7389 = fmul fast float %7387, %93
  %7390 = call float @dx.op.unary.f32(i32 7, float %7388)  ; Saturate(value)
  %7391 = call float @dx.op.unary.f32(i32 7, float %7389)  ; Saturate(value)
  %7392 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7390, float %7391, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7393 = extractvalue %dx.types.ResRet.f32 %7392, 0
  %7394 = extractvalue %dx.types.ResRet.f32 %7392, 1
  %7395 = extractvalue %dx.types.ResRet.f32 %7392, 2
  %7396 = extractvalue %dx.types.ResRet.f32 %7392, 3
  %7397 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %7390, float %7391, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7398 = extractvalue %dx.types.ResRet.f32 %7397, 0
  %7399 = extractvalue %dx.types.ResRet.f32 %7397, 1
  %7400 = extractvalue %dx.types.ResRet.f32 %7397, 2
  %7401 = extractvalue %dx.types.ResRet.f32 %7397, 3
  %7402 = call float @dx.op.binary.f32(i32 35, float %7394, float %7395)  ; FMax(a,b)
  %7403 = call float @dx.op.binary.f32(i32 35, float %7393, float %7402)  ; FMax(a,b)
  %7404 = call float @dx.op.binary.f32(i32 35, float %7403, float %7396)  ; FMax(a,b)
  %7405 = call float @dx.op.binary.f32(i32 36, float %7399, float %7400)  ; FMin(a,b)
  %7406 = call float @dx.op.binary.f32(i32 36, float %7398, float %7405)  ; FMin(a,b)
  %7407 = call float @dx.op.binary.f32(i32 36, float %7406, float %7401)  ; FMin(a,b)
  %7408 = fmul fast float %7404, 2.550000e+02
  %7409 = fadd fast float %7408, 0x3F70101020000000
  %7410 = fptoui float %7409 to i32
  %7411 = fmul fast float %7407, 2.550000e+02
  %7412 = fadd fast float %7411, 0x3F70101020000000
  %7413 = fptoui float %7412 to i32
  %7414 = icmp ult i32 %7410, %7413
  br i1 %7414, label %7415, label %7583

; <label>:7415                                    ; preds = %7384
  %7416 = fcmp fast ogt float %79, 9.843750e-01
  %7417 = fadd fast float %80, -4.000000e+00
  %7418 = select i1 %7416, float -4.000000e+00, float %7417
  %7419 = call float @dx.op.binary.f32(i32 35, float %7418, float 0.000000e+00)  ; FMax(a,b)
  %7420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7421 = extractvalue %dx.types.CBufRet.f32 %7420, 0
  %7422 = fadd fast float %7421, %7419
  %7423 = extractvalue %dx.types.CBufRet.f32 %7420, 2
  %7424 = fmul fast float %7422, %7423
  %7425 = call float @dx.op.unary.f32(i32 23, float %7424)  ; Log(value)
  %7426 = extractvalue %dx.types.CBufRet.f32 %7420, 3
  %7427 = fmul fast float %7426, %7425
  %7428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7429 = extractvalue %dx.types.CBufRet.f32 %7428, 2
  %7430 = fmul fast float %7427, %7429
  %7431 = call float @dx.op.unary.f32(i32 7, float %7430)  ; Saturate(value)
  %7432 = uitofp i32 %7410 to float
  %7433 = uitofp i32 %7413 to float
  %7434 = fadd fast float %7432, 5.000000e-01
  %7435 = fadd fast float %7433, 5.000000e-01
  %7436 = fmul fast float %7429, %7434
  %7437 = fmul fast float %7429, %7435
  %7438 = fadd fast float %7436, 0x3F0FFB4800000000
  %7439 = fadd fast float %7437, 0xBF0FFB4800000000
  %7440 = call float @dx.op.binary.f32(i32 35, float %7431, float %7438)  ; FMax(a,b)
  %7441 = call float @dx.op.binary.f32(i32 36, float %7440, float %7439)  ; FMin(a,b)
  %7442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7443 = extractvalue %dx.types.CBufRet.f32 %7442, 1
  %7444 = extractvalue %dx.types.CBufRet.f32 %7442, 2
  %7445 = extractvalue %dx.types.CBufRet.f32 %7442, 0
  %7446 = fmul fast float %7443, %7441
  %7447 = fadd fast float %7445, %7446
  %7448 = fadd fast float %7445, %7444
  %7449 = fsub fast float %7443, %7444
  %7450 = fadd fast float %7449, %7445
  %7451 = call float @dx.op.binary.f32(i32 35, float %7447, float %7448)  ; FMax(a,b)
  %7452 = call float @dx.op.binary.f32(i32 36, float %7451, float %7450)  ; FMin(a,b)
  %7453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %7390, float %7391, float %7452, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7454 = extractvalue %dx.types.ResRet.f32 %7453, 0
  %7455 = extractvalue %dx.types.ResRet.f32 %7453, 1
  %7456 = extractvalue %dx.types.ResRet.f32 %7453, 2
  %7457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7458 = extractvalue %dx.types.CBufRet.i32 %7457, 0
  %7459 = extractvalue %dx.types.CBufRet.i32 %7457, 1
  %7460 = uitofp i32 %7458 to float
  %7461 = uitofp i32 %7459 to float
  %7462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7463 = extractvalue %dx.types.CBufRet.f32 %7462, 0
  %7464 = extractvalue %dx.types.CBufRet.f32 %7462, 1
  %7465 = fmul fast float %7460, %7390
  %7466 = fmul fast float %7461, %7391
  %7467 = fadd fast float %7465, -5.000000e-01
  %7468 = fadd fast float %7466, -5.000000e-01
  %7469 = call float @dx.op.unary.f32(i32 22, float %7467)  ; Frc(value)
  %7470 = call float @dx.op.unary.f32(i32 22, float %7468)  ; Frc(value)
  %7471 = fmul fast float %7469, %7469
  %7472 = fmul fast float %7471, %7469
  %7473 = fsub fast float 3.000000e+00, %7469
  %7474 = fmul fast float %7471, %7473
  %7475 = fmul fast float %7469, 3.000000e+00
  %7476 = fmul fast float %7472, 3.000000e+00
  %7477 = fmul fast float %7471, 6.000000e+00
  %7478 = fsub fast float %7476, %7477
  %7479 = fadd fast float %7478, 4.000000e+00
  %7480 = fmul fast float %7479, 0x3FC5555560000000
  %7481 = fmul fast float %7472, -3.000000e+00
  %7482 = fadd fast float %7471, %7469
  %7483 = fmul fast float %7482, 3.000000e+00
  %7484 = fadd fast float %7481, 1.000000e+00
  %7485 = fadd fast float %7484, %7483
  %7486 = fmul fast float %7472, 0x3FC5555560000000
  %7487 = fmul fast float %7470, %7470
  %7488 = fmul fast float %7487, %7470
  %7489 = fsub fast float 3.000000e+00, %7470
  %7490 = fmul fast float %7487, %7489
  %7491 = fmul fast float %7470, 3.000000e+00
  %7492 = fmul fast float %7488, 3.000000e+00
  %7493 = fmul fast float %7487, 6.000000e+00
  %7494 = fsub fast float %7492, %7493
  %7495 = fadd fast float %7494, 4.000000e+00
  %7496 = fmul fast float %7495, 0x3FC5555560000000
  %7497 = fmul fast float %7488, -3.000000e+00
  %7498 = fadd fast float %7487, %7470
  %7499 = fmul fast float %7498, 3.000000e+00
  %7500 = fadd fast float %7497, 1.000000e+00
  %7501 = fadd fast float %7500, %7499
  %7502 = fmul fast float %7488, 0x3FC5555560000000
  %7503 = fadd fast float %7469, 1.000000e+00
  %7504 = fsub fast float 1.000000e+00, %7475
  %7505 = fadd fast float %7504, %7474
  %7506 = fadd fast float %7505, %7479
  %7507 = fmul fast float %7506, 0x3FC5555560000000
  %7508 = fdiv fast float %7480, %7507
  %7509 = fsub fast float %7503, %7508
  %7510 = fsub fast float 1.000000e+00, %7469
  %7511 = fadd fast float %7485, %7472
  %7512 = fmul fast float %7511, 0x3FC5555560000000
  %7513 = fdiv fast float %7486, %7512
  %7514 = fadd fast float %7510, %7513
  %7515 = fadd fast float %7470, 1.000000e+00
  %7516 = fsub fast float 1.000000e+00, %7491
  %7517 = fadd fast float %7516, %7490
  %7518 = fadd fast float %7517, %7495
  %7519 = fmul fast float %7518, 0x3FC5555560000000
  %7520 = fdiv fast float %7496, %7519
  %7521 = fsub fast float %7515, %7520
  %7522 = fsub fast float 1.000000e+00, %7470
  %7523 = fadd fast float %7501, %7488
  %7524 = fmul fast float %7523, 0x3FC5555560000000
  %7525 = fdiv fast float %7502, %7524
  %7526 = fadd fast float %7525, %7522
  %7527 = fmul fast float %7509, %7463
  %7528 = fsub fast float %7390, %7527
  %7529 = fmul fast float %7514, %7463
  %7530 = fadd fast float %7529, %7390
  %7531 = fmul fast float %7526, %7464
  %7532 = fadd fast float %7531, %7391
  %7533 = fmul fast float %7521, %7464
  %7534 = fsub fast float %7391, %7533
  %7535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7528, float %7534, float %7452, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7536 = extractvalue %dx.types.ResRet.f32 %7535, 0
  %7537 = extractvalue %dx.types.ResRet.f32 %7535, 1
  %7538 = extractvalue %dx.types.ResRet.f32 %7535, 2
  %7539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7530, float %7534, float %7452, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7540 = extractvalue %dx.types.ResRet.f32 %7539, 0
  %7541 = extractvalue %dx.types.ResRet.f32 %7539, 1
  %7542 = extractvalue %dx.types.ResRet.f32 %7539, 2
  %7543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7528, float %7532, float %7452, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7544 = extractvalue %dx.types.ResRet.f32 %7543, 0
  %7545 = extractvalue %dx.types.ResRet.f32 %7543, 1
  %7546 = extractvalue %dx.types.ResRet.f32 %7543, 2
  %7547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %7530, float %7532, float %7452, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7548 = extractvalue %dx.types.ResRet.f32 %7547, 0
  %7549 = extractvalue %dx.types.ResRet.f32 %7547, 1
  %7550 = extractvalue %dx.types.ResRet.f32 %7547, 2
  %7551 = fsub fast float %7544, %7536
  %7552 = fsub fast float %7545, %7537
  %7553 = fsub fast float %7546, %7538
  %7554 = fmul fast float %7551, %7524
  %7555 = fmul fast float %7552, %7524
  %7556 = fmul fast float %7553, %7524
  %7557 = fadd fast float %7554, %7536
  %7558 = fadd fast float %7555, %7537
  %7559 = fadd fast float %7556, %7538
  %7560 = fsub fast float %7548, %7540
  %7561 = fsub fast float %7549, %7541
  %7562 = fsub fast float %7550, %7542
  %7563 = fmul fast float %7560, %7524
  %7564 = fmul fast float %7561, %7524
  %7565 = fmul fast float %7562, %7524
  %7566 = fsub fast float %7540, %7557
  %7567 = fadd fast float %7566, %7563
  %7568 = fsub fast float %7541, %7558
  %7569 = fadd fast float %7568, %7564
  %7570 = fsub fast float %7542, %7559
  %7571 = fadd fast float %7570, %7565
  %7572 = fmul fast float %7567, %7512
  %7573 = fmul fast float %7569, %7512
  %7574 = fmul fast float %7571, %7512
  %7575 = fadd fast float %7572, %7557
  %7576 = fadd fast float %7573, %7558
  %7577 = fadd fast float %7574, %7559
  %7578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7579 = extractvalue %dx.types.CBufRet.f32 %7578, 1
  %7580 = fmul fast float %7575, %7579
  %7581 = fmul fast float %7576, %7579
  %7582 = fmul fast float %7577, %7579
  br label %7583

; <label>:7583                                    ; preds = %7415, %7384
  %7584 = phi float [ %7454, %7415 ], [ 1.000000e+00, %7384 ]
  %7585 = phi float [ %7455, %7415 ], [ 1.000000e+00, %7384 ]
  %7586 = phi float [ %7456, %7415 ], [ 1.000000e+00, %7384 ]
  %7587 = phi float [ %7580, %7415 ], [ 0.000000e+00, %7384 ]
  %7588 = phi float [ %7581, %7415 ], [ 0.000000e+00, %7384 ]
  %7589 = phi float [ %7582, %7415 ], [ 0.000000e+00, %7384 ]
  %7590 = fmul fast float %7587, %7361
  %7591 = fmul fast float %7588, %7361
  %7592 = fmul fast float %7589, %7361
  %7593 = call float @dx.op.dot3.f32(i32 55, float %7584, float %7585, float %7586, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7594 = call float @dx.op.dot3.f32(i32 55, float %7590, float %7591, float %7592, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7595 = select i1 %216, float %7593, float %7584
  %7596 = select i1 %216, float %7593, float %7585
  %7597 = select i1 %216, float 1.000000e+00, float %7586
  %7598 = select i1 %216, float %7594, float %7590
  %7599 = select i1 %216, float 0.000000e+00, float %7591
  %7600 = select i1 %216, float 0.000000e+00, float %7592
  %7601 = fmul fast float %7595, %7374
  %7602 = fmul fast float %7596, %7375
  %7603 = fmul fast float %7597, %7376
  %7604 = fadd fast float %7601, %7598
  %7605 = fadd fast float %7602, %7599
  %7606 = fadd fast float %7600, %7603
  %7607 = fmul fast float %7595, %7347
  %7608 = fmul fast float %7596, %7348
  %7609 = fmul fast float %7597, %7349
  %7610 = fmul fast float %125, %7386
  %7611 = fmul fast float %127, %7387
  %7612 = fsub fast float 1.000000e+00, %7610
  %7613 = fsub fast float 1.000000e+00, %7611
  %7614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7615 = extractvalue %dx.types.CBufRet.f32 %7614, 0
  %7616 = extractvalue %dx.types.CBufRet.f32 %7614, 1
  %7617 = extractvalue %dx.types.CBufRet.f32 %7614, 2
  %7618 = fmul fast float %7612, %7615
  %7619 = fmul fast float %7612, %7616
  %7620 = fmul fast float %7612, %7617
  %7621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7622 = extractvalue %dx.types.CBufRet.f32 %7621, 0
  %7623 = extractvalue %dx.types.CBufRet.f32 %7621, 1
  %7624 = extractvalue %dx.types.CBufRet.f32 %7621, 2
  %7625 = fmul fast float %7613, %7622
  %7626 = fmul fast float %7613, %7623
  %7627 = fmul fast float %7613, %7624
  %7628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7629 = extractvalue %dx.types.CBufRet.f32 %7628, 0
  %7630 = extractvalue %dx.types.CBufRet.f32 %7628, 1
  %7631 = extractvalue %dx.types.CBufRet.f32 %7628, 2
  %7632 = fadd fast float %7625, %7629
  %7633 = fadd fast float %7632, %7618
  %7634 = fadd fast float %7626, %7630
  %7635 = fadd fast float %7634, %7619
  %7636 = fadd fast float %7627, %7631
  %7637 = fadd fast float %7636, %7620
  %7638 = fmul fast float %7633, %177
  %7639 = fmul fast float %7635, %177
  %7640 = fmul fast float %7637, %177
  br label %7641

; <label>:7641                                    ; preds = %7583, %7346
  %7642 = phi float [ %7638, %7583 ], [ %155, %7346 ]
  %7643 = phi float [ %7639, %7583 ], [ %156, %7346 ]
  %7644 = phi float [ %7640, %7583 ], [ %157, %7346 ]
  %7645 = phi float [ %177, %7583 ], [ %80, %7346 ]
  %7646 = phi float [ %7604, %7583 ], [ %7374, %7346 ]
  %7647 = phi float [ %7605, %7583 ], [ %7375, %7346 ]
  %7648 = phi float [ %7606, %7583 ], [ %7376, %7346 ]
  %7649 = phi float [ %7607, %7583 ], [ %7347, %7346 ]
  %7650 = phi float [ %7608, %7583 ], [ %7348, %7346 ]
  %7651 = phi float [ %7609, %7583 ], [ %7349, %7346 ]
  %7652 = phi float [ %7584, %7583 ], [ 1.000000e+00, %7346 ]
  br i1 %7383, label %8807, label %7653

; <label>:7653                                    ; preds = %7641
  %7654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7655 = extractvalue %dx.types.CBufRet.f32 %7654, 0
  %7656 = extractvalue %dx.types.CBufRet.f32 %7654, 1
  %7657 = extractvalue %dx.types.CBufRet.f32 %7654, 2
  %7658 = extractvalue %dx.types.CBufRet.f32 %7654, 3
  %7659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7660 = extractvalue %dx.types.CBufRet.f32 %7659, 0
  %7661 = extractvalue %dx.types.CBufRet.f32 %7659, 1
  %7662 = extractvalue %dx.types.CBufRet.f32 %7659, 2
  %7663 = extractvalue %dx.types.CBufRet.f32 %7659, 3
  %7664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7665 = extractvalue %dx.types.CBufRet.f32 %7664, 0
  %7666 = extractvalue %dx.types.CBufRet.f32 %7664, 1
  %7667 = extractvalue %dx.types.CBufRet.f32 %7664, 2
  %7668 = extractvalue %dx.types.CBufRet.f32 %7664, 3
  %7669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7670 = extractvalue %dx.types.CBufRet.f32 %7669, 0
  %7671 = extractvalue %dx.types.CBufRet.f32 %7669, 1
  %7672 = extractvalue %dx.types.CBufRet.f32 %7669, 2
  %7673 = extractvalue %dx.types.CBufRet.f32 %7669, 3
  %7674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7675 = extractvalue %dx.types.CBufRet.f32 %7674, 3
  %7676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7677 = extractvalue %dx.types.CBufRet.f32 %7676, 3
  %7678 = extractvalue %dx.types.CBufRet.f32 %7676, 0
  %7679 = extractvalue %dx.types.CBufRet.f32 %7676, 1
  %7680 = extractvalue %dx.types.CBufRet.f32 %7676, 2
  %7681 = fcmp fast olt float %7680, -5.000000e-01
  %7682 = call float @dx.op.dot3.f32(i32 55, float %7642, float %7643, float %7644, float %7642, float %7643, float %7644)  ; Dot3(ax,ay,az,bx,by,bz)
  %7683 = call float @dx.op.unary.f32(i32 25, float %7682)  ; Rsqrt(value)
  %7684 = fmul fast float %7683, %7682
  %7685 = fmul fast float %7683, %7642
  %7686 = fmul fast float %7683, %7643
  %7687 = fmul fast float %7683, %7644
  %7688 = fadd fast float %7684, %7658
  %7689 = call float @dx.op.dot3.f32(i32 55, float %7685, float %7686, float %7687, float %7655, float %7656, float %7657)  ; Dot3(ax,ay,az,bx,by,bz)
  %7690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7691 = extractvalue %dx.types.CBufRet.i32 %7690, 1
  %7692 = and i32 %7691, 1
  %7693 = icmp ne i32 %7692, 0
  %7694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7695 = extractvalue %dx.types.CBufRet.f32 %7694, 2
  %7696 = fcmp fast ogt float %7695, 0.000000e+00
  %7697 = and i1 %7693, %7696
  br i1 %7697, label %7698, label %8104, !dx.controlflow.hints !116

; <label>:7698                                    ; preds = %7653
  %7699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7700 = extractvalue %dx.types.CBufRet.f32 %7699, 3
  %7701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7702 = extractvalue %dx.types.CBufRet.f32 %7701, 2
  %7703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7704 = extractvalue %dx.types.CBufRet.f32 %7703, 2
  %7705 = fsub fast float %7702, %7704
  %7706 = and i32 %7691, 2
  %7707 = extractvalue %dx.types.CBufRet.i32 %7690, 0
  %7708 = call i32 @dx.op.binary.i32(i32 40, i32 %7707, i32 3)  ; UMin(a,b)
  %7709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7710 = extractvalue %dx.types.CBufRet.f32 %7709, 0
  %7711 = extractvalue %dx.types.CBufRet.f32 %7709, 1
  %7712 = extractvalue %dx.types.CBufRet.f32 %7703, 0
  %7713 = extractvalue %dx.types.CBufRet.f32 %7703, 1
  %7714 = fsub fast float %7710, %7712
  %7715 = fsub fast float %7711, %7713
  %7716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7717 = extractvalue %dx.types.CBufRet.f32 %7716, 0
  %7718 = fcmp fast ogt float %7717, 0.000000e+00
  %7719 = fsub fast float -0.000000e+00, %7714
  %7720 = fsub fast float -0.000000e+00, %7715
  %7721 = call float @dx.op.dot2.f32(i32 54, float %7685, float %7686, float %7685, float %7686)  ; Dot2(ax,ay,bx,by)
  %7722 = call float @dx.op.dot2.f32(i32 54, float %7685, float %7686, float %7719, float %7720)  ; Dot2(ax,ay,bx,by)
  %7723 = fmul fast float %7722, 2.000000e+00
  %7724 = call float @dx.op.dot2.f32(i32 54, float %7719, float %7720, float %7719, float %7720)  ; Dot2(ax,ay,bx,by)
  %7725 = fmul fast float %7717, %7717
  %7726 = fsub fast float %7724, %7725
  %7727 = fmul fast float %7723, %7723
  %7728 = fmul fast float %7721, 4.000000e+00
  %7729 = fmul fast float %7728, %7726
  %7730 = fsub fast float %7727, %7729
  %7731 = fcmp fast ogt float %7730, 0.000000e+00
  br i1 %7731, label %7732, label %7747

; <label>:7732                                    ; preds = %7698
  %7733 = fcmp fast ogt float %7723, 0.000000e+00
  %7734 = call float @dx.op.unary.f32(i32 24, float %7730)  ; Sqrt(value)
  %7735 = fsub fast float -0.000000e+00, %7734
  %7736 = select i1 %7733, float %7734, float %7735
  %7737 = fadd fast float %7736, %7723
  %7738 = fmul float %7737, -5.000000e-01
  %7739 = fdiv fast float %7738, %7721
  %7740 = call float @dx.op.binary.f32(i32 35, float %7739, float 0.000000e+00)  ; FMax(a,b)
  %7741 = call float @dx.op.binary.f32(i32 36, float %7684, float %7740)  ; FMin(a,b)
  %7742 = fdiv fast float %7726, %7738
  %7743 = call float @dx.op.binary.f32(i32 35, float %7742, float 0.000000e+00)  ; FMax(a,b)
  %7744 = call float @dx.op.binary.f32(i32 36, float %7684, float %7743)  ; FMin(a,b)
  %7745 = call float @dx.op.binary.f32(i32 36, float %7741, float %7744)  ; FMin(a,b)
  %7746 = call float @dx.op.binary.f32(i32 35, float %7741, float %7744)  ; FMax(a,b)
  br label %7747

; <label>:7747                                    ; preds = %7732, %7698
  %7748 = phi float [ %7746, %7732 ], [ -1.000000e+00, %7698 ]
  %7749 = phi float [ %7745, %7732 ], [ -1.000000e+00, %7698 ]
  %7750 = phi i1 [ true, %7732 ], [ false, %7698 ]
  %7751 = and i1 %7718, %7750
  br i1 %7751, label %7752, label %7754

; <label>:7752                                    ; preds = %7747
  %7753 = fcmp fast oeq float %7749, %7748
  br i1 %7753, label %8057, label %7755

; <label>:7754                                    ; preds = %7747
  br i1 %7718, label %8057, label %7755

; <label>:7755                                    ; preds = %7754, %7752
  %7756 = phi float [ %7684, %7754 ], [ %7748, %7752 ]
  %7757 = phi float [ 0.000000e+00, %7754 ], [ %7749, %7752 ]
  %7758 = icmp ne i32 %7706, 0
  %7759 = fmul fast float %7756, %7687
  %7760 = fadd fast float %7759, %7700
  %7761 = fmul fast float %7760, %7756
  %7762 = select i1 %7758, float 0.000000e+00, float %7761
  %7763 = fcmp fast oeq float %7687, 0.000000e+00
  %7764 = fdiv fast float %7705, %7687
  %7765 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7764)  ; FMax(a,b)
  %7766 = select i1 %7763, float %7756, float %7765
  %7767 = call float @dx.op.binary.f32(i32 36, float %7756, float %7766)  ; FMin(a,b)
  %7768 = fcmp fast ogt float %7687, 0.000000e+00
  %7769 = fcmp fast olt float %7705, 0.000000e+00
  br i1 %7768, label %7770, label %7827

; <label>:7770                                    ; preds = %7755
  %7771 = icmp eq i32 %7706, 0
  br i1 %7769, label %7772, label %7816

; <label>:7772                                    ; preds = %7770
  %7773 = select i1 %7771, float %7756, float 0.000000e+00
  %7774 = fsub fast float -0.000000e+00, %7773
  %7775 = call float @dx.op.unary.f32(i32 6, float %7774)  ; FAbs(value)
  %7776 = fmul fast float %7773, %7687
  %7777 = fadd fast float %7776, %7700
  %7778 = fmul fast float %7775, %7777
  %7779 = fsub fast float %7762, %7778
  %7780 = fsub fast float %7756, %7775
  %7781 = select i1 %7771, float %7780, float 0.000000e+00
  %7782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7783 = extractvalue %dx.types.CBufRet.f32 %7782, 0
  %7784 = extractvalue %dx.types.CBufRet.f32 %7782, 1
  %7785 = extractvalue %dx.types.CBufRet.f32 %7782, 2
  %7786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7787 = extractvalue %dx.types.CBufRet.f32 %7786, 0
  %7788 = extractvalue %dx.types.CBufRet.f32 %7786, 1
  %7789 = extractvalue %dx.types.CBufRet.f32 %7786, 2
  %7790 = extractvalue %dx.types.CBufRet.f32 %7786, 3
  %7791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7792 = extractvalue %dx.types.CBufRet.f32 %7791, 3
  %7793 = call float @dx.op.binary.f32(i32 36, float %7779, float %7792)  ; FMin(a,b)
  %7794 = fmul fast float %7790, %7781
  %7795 = call float @dx.op.unary.f32(i32 7, float %7794)  ; Saturate(value)
  %7796 = fsub fast float %7787, %7783
  %7797 = fsub fast float %7788, %7784
  %7798 = fsub fast float %7789, %7785
  %7799 = fmul fast float %7795, %7796
  %7800 = fmul fast float %7795, %7797
  %7801 = fmul fast float %7795, %7798
  %7802 = fadd fast float %7799, %7783
  %7803 = fadd fast float %7800, %7784
  %7804 = fadd fast float %7801, %7785
  %7805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7806 = extractvalue %dx.types.CBufRet.f32 %7805, 0
  %7807 = extractvalue %dx.types.CBufRet.f32 %7805, 1
  %7808 = fadd fast float %7807, %7806
  %7809 = call float @dx.op.unary.f32(i32 7, float %7808)  ; Saturate(value)
  %7810 = extractvalue %dx.types.CBufRet.f32 %7805, 2
  %7811 = extractvalue %dx.types.CBufRet.f32 %7805, 3
  %7812 = fadd fast float %7811, %7810
  %7813 = call float @dx.op.unary.f32(i32 7, float %7812)  ; Saturate(value)
  %7814 = fmul fast float %7809, %7793
  %7815 = fmul fast float %7814, %7813
  br label %8057

; <label>:7816                                    ; preds = %7770
  br i1 %7771, label %7817, label %7838

; <label>:7817                                    ; preds = %7816
  %7818 = call float @dx.op.binary.f32(i32 36, float %7767, float %7757)  ; FMin(a,b)
  %7819 = fsub fast float %7767, %7818
  %7820 = fsub fast float %7819, %7756
  %7821 = call float @dx.op.unary.f32(i32 6, float %7820)  ; FAbs(value)
  %7822 = fadd fast float %7819, %7756
  %7823 = fmul fast float %7822, %7687
  %7824 = fadd fast float %7823, %7700
  %7825 = fmul fast float %7824, %7821
  %7826 = fsub fast float %7762, %7825
  br label %7838

; <label>:7827                                    ; preds = %7755
  br i1 %7769, label %7828, label %7838

; <label>:7828                                    ; preds = %7827
  %7829 = call float @dx.op.binary.f32(i32 35, float %7757, float %7767)  ; FMax(a,b)
  %7830 = icmp eq i32 %7706, 0
  %7831 = select i1 %7830, float %7767, float 0.000000e+00
  %7832 = fsub fast float -0.000000e+00, %7831
  %7833 = call float @dx.op.unary.f32(i32 6, float %7832)  ; FAbs(value)
  %7834 = fmul fast float %7831, %7687
  %7835 = fadd fast float %7834, %7700
  %7836 = fmul fast float %7833, %7835
  %7837 = fsub fast float %7762, %7836
  br label %7838

; <label>:7838                                    ; preds = %7828, %7827, %7817, %7816
  %7839 = phi float [ %7757, %7816 ], [ %7757, %7817 ], [ %7829, %7828 ], [ %7757, %7827 ]
  %7840 = phi float [ 0.000000e+00, %7816 ], [ %7821, %7817 ], [ %7833, %7828 ], [ 0.000000e+00, %7827 ]
  %7841 = phi float [ %7762, %7816 ], [ %7826, %7817 ], [ %7837, %7828 ], [ %7762, %7827 ]
  %7842 = phi float [ %7767, %7816 ], [ %7767, %7817 ], [ %7756, %7828 ], [ %7756, %7827 ]
  %7843 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 0
  store float -1.000000e+00, float* %7843, align 4, !tbaa !106, !noalias !117
  %7844 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 1
  store float -1.000000e+00, float* %7844, align 4, !tbaa !106, !noalias !117
  %7845 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 2
  store float -1.000000e+00, float* %7845, align 4, !tbaa !106, !noalias !117
  %7846 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 0
  store float -1.000000e+00, float* %7846, align 4, !tbaa !106, !noalias !117
  %7847 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 1
  store float -1.000000e+00, float* %7847, align 4, !tbaa !106, !noalias !117
  %7848 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 2
  store float -1.000000e+00, float* %7848, align 4, !tbaa !106, !noalias !117
  %7849 = icmp sgt i32 %7708, 0
  br i1 %7849, label %7850, label %7911

; <label>:7850                                    ; preds = %7838
  br label %7851

; <label>:7851                                    ; preds = %7900, %7850
  %7852 = phi i32 [ %7901, %7900 ], [ 0, %7850 ]
  %7853 = phi i32 [ %7902, %7900 ], [ 0, %7850 ]
  %7854 = add nuw i32 %7853, 171
  %7855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %7854)  ; CBufferLoadLegacy(handle,regIndex)
  %7856 = extractvalue %dx.types.CBufRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.CBufRet.f32 %7855, 1
  %7858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7859 = extractvalue %dx.types.CBufRet.f32 %7858, 0
  %7860 = extractvalue %dx.types.CBufRet.f32 %7858, 1
  %7861 = fsub fast float %7856, %7859
  %7862 = fsub fast float %7857, %7860
  %7863 = extractvalue %dx.types.CBufRet.f32 %7855, 2
  %7864 = fsub fast float -0.000000e+00, %7861
  %7865 = fsub fast float -0.000000e+00, %7862
  %7866 = call float @dx.op.dot2.f32(i32 54, float %7685, float %7686, float %7864, float %7865)  ; Dot2(ax,ay,bx,by)
  %7867 = fmul fast float %7866, 2.000000e+00
  %7868 = call float @dx.op.dot2.f32(i32 54, float %7864, float %7865, float %7864, float %7865)  ; Dot2(ax,ay,bx,by)
  %7869 = fmul fast float %7863, %7863
  %7870 = fsub fast float %7868, %7869
  %7871 = fmul fast float %7867, %7867
  %7872 = fmul fast float %7728, %7870
  %7873 = fsub fast float %7871, %7872
  %7874 = fcmp fast ogt float %7873, 0.000000e+00
  br i1 %7874, label %7875, label %7890

; <label>:7875                                    ; preds = %7851
  %7876 = fcmp fast ogt float %7867, 0.000000e+00
  %7877 = call float @dx.op.unary.f32(i32 24, float %7873)  ; Sqrt(value)
  %7878 = fsub fast float -0.000000e+00, %7877
  %7879 = select i1 %7876, float %7877, float %7878
  %7880 = fadd fast float %7879, %7867
  %7881 = fmul float %7880, -5.000000e-01
  %7882 = fdiv fast float %7881, %7721
  %7883 = call float @dx.op.binary.f32(i32 35, float %7882, float 0.000000e+00)  ; FMax(a,b)
  %7884 = call float @dx.op.binary.f32(i32 36, float %7756, float %7883)  ; FMin(a,b)
  %7885 = fdiv fast float %7870, %7881
  %7886 = call float @dx.op.binary.f32(i32 35, float %7885, float 0.000000e+00)  ; FMax(a,b)
  %7887 = call float @dx.op.binary.f32(i32 36, float %7756, float %7886)  ; FMin(a,b)
  %7888 = call float @dx.op.binary.f32(i32 36, float %7884, float %7887)  ; FMin(a,b)
  %7889 = call float @dx.op.binary.f32(i32 35, float %7884, float %7887)  ; FMax(a,b)
  br label %7890

; <label>:7890                                    ; preds = %7875, %7851
  %7891 = phi float [ %7889, %7875 ], [ -1.000000e+00, %7851 ]
  %7892 = phi float [ %7888, %7875 ], [ -1.000000e+00, %7851 ]
  %7893 = phi i1 [ true, %7875 ], [ false, %7851 ]
  br i1 %7893, label %7894, label %7900

; <label>:7894                                    ; preds = %7890
  %7895 = call float @dx.op.binary.f32(i32 35, float %7839, float %7892)  ; FMax(a,b)
  %7896 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %7853
  store float %7895, float* %7896, align 4, !tbaa !106, !noalias !117
  %7897 = call float @dx.op.binary.f32(i32 35, float %7839, float %7891)  ; FMax(a,b)
  %7898 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %7853
  store float %7897, float* %7898, align 4, !tbaa !106, !noalias !117
  %7899 = add nsw i32 %7852, 1
  br label %7900

; <label>:7900                                    ; preds = %7894, %7890
  %7901 = phi i32 [ %7899, %7894 ], [ %7852, %7890 ]
  %7902 = add nuw nsw i32 %7853, 1
  %7903 = icmp eq i32 %7902, %7708
  br i1 %7903, label %7904, label %7851

; <label>:7904                                    ; preds = %7900
  %7905 = load float, float* %7845, align 4, !tbaa !106, !alias.scope !133, !noalias !136
  %7906 = load float, float* %7844, align 4, !tbaa !106, !alias.scope !139, !noalias !140
  %7907 = load float, float* %7843, align 4, !tbaa !106, !alias.scope !141, !noalias !142
  %7908 = load float, float* %7848, align 4, !tbaa !106, !alias.scope !143, !noalias !146
  %7909 = load float, float* %7847, align 4, !tbaa !106, !alias.scope !149, !noalias !150
  %7910 = load float, float* %7846, align 4, !tbaa !106, !alias.scope !151, !noalias !152
  br label %7911

; <label>:7911                                    ; preds = %7904, %7838
  %7912 = phi float [ -1.000000e+00, %7838 ], [ %7910, %7904 ]
  %7913 = phi float [ -1.000000e+00, %7838 ], [ %7909, %7904 ]
  %7914 = phi float [ -1.000000e+00, %7838 ], [ %7908, %7904 ]
  %7915 = phi float [ -1.000000e+00, %7838 ], [ %7907, %7904 ]
  %7916 = phi float [ -1.000000e+00, %7838 ], [ %7906, %7904 ]
  %7917 = phi float [ -1.000000e+00, %7838 ], [ %7905, %7904 ]
  %7918 = phi i32 [ 0, %7838 ], [ %7901, %7904 ]
  %7919 = call float @dx.op.binary.f32(i32 36, float %7916, float %7917)  ; FMin(a,b)
  %7920 = call float @dx.op.binary.f32(i32 36, float %7915, float %7919)  ; FMin(a,b)
  %7921 = call float @dx.op.binary.f32(i32 35, float %7915, float %7916)  ; FMax(a,b)
  %7922 = call float @dx.op.binary.f32(i32 36, float %7921, float %7917)  ; FMin(a,b)
  %7923 = call float @dx.op.binary.f32(i32 36, float %7915, float %7916)  ; FMin(a,b)
  %7924 = call float @dx.op.binary.f32(i32 35, float %7923, float %7922)  ; FMax(a,b)
  %7925 = call float @dx.op.binary.f32(i32 35, float %7916, float %7917)  ; FMax(a,b)
  %7926 = call float @dx.op.binary.f32(i32 35, float %7915, float %7925)  ; FMax(a,b)
  store float %7920, float* %7843, align 4, !tbaa !106, !alias.scope !141, !noalias !142
  store float %7924, float* %7844, align 4, !tbaa !106, !alias.scope !139, !noalias !140
  store float %7926, float* %7845, align 4, !tbaa !106, !alias.scope !133, !noalias !136
  %7927 = call float @dx.op.binary.f32(i32 36, float %7913, float %7914)  ; FMin(a,b)
  %7928 = call float @dx.op.binary.f32(i32 36, float %7912, float %7927)  ; FMin(a,b)
  %7929 = call float @dx.op.binary.f32(i32 35, float %7912, float %7913)  ; FMax(a,b)
  %7930 = call float @dx.op.binary.f32(i32 36, float %7929, float %7914)  ; FMin(a,b)
  %7931 = call float @dx.op.binary.f32(i32 36, float %7912, float %7913)  ; FMin(a,b)
  %7932 = call float @dx.op.binary.f32(i32 35, float %7931, float %7930)  ; FMax(a,b)
  %7933 = call float @dx.op.binary.f32(i32 35, float %7913, float %7914)  ; FMax(a,b)
  %7934 = call float @dx.op.binary.f32(i32 35, float %7912, float %7933)  ; FMax(a,b)
  store float %7928, float* %7846, align 4, !tbaa !106, !alias.scope !151, !noalias !152
  store float %7932, float* %7847, align 4, !tbaa !106, !alias.scope !149, !noalias !150
  store float %7934, float* %7848, align 4, !tbaa !106, !alias.scope !143, !noalias !146
  %7935 = sub nsw i32 3, %7918
  %7936 = icmp sgt i32 %7935, 2
  br i1 %7936, label %7937, label %7975

; <label>:7937                                    ; preds = %7911
  %7938 = icmp eq i32 %7706, 0
  %7939 = fsub fast float %7756, %7840
  %7940 = select i1 %7938, float %7939, float %7840
  %7941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.f32 %7941, 0
  %7943 = extractvalue %dx.types.CBufRet.f32 %7941, 1
  %7944 = extractvalue %dx.types.CBufRet.f32 %7941, 2
  %7945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7946 = extractvalue %dx.types.CBufRet.f32 %7945, 0
  %7947 = extractvalue %dx.types.CBufRet.f32 %7945, 1
  %7948 = extractvalue %dx.types.CBufRet.f32 %7945, 2
  %7949 = extractvalue %dx.types.CBufRet.f32 %7945, 3
  %7950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7951 = extractvalue %dx.types.CBufRet.f32 %7950, 3
  %7952 = call float @dx.op.binary.f32(i32 36, float %7841, float %7951)  ; FMin(a,b)
  %7953 = fmul fast float %7949, %7940
  %7954 = call float @dx.op.unary.f32(i32 7, float %7953)  ; Saturate(value)
  %7955 = fsub fast float %7946, %7942
  %7956 = fsub fast float %7947, %7943
  %7957 = fsub fast float %7948, %7944
  %7958 = fmul fast float %7954, %7955
  %7959 = fmul fast float %7954, %7956
  %7960 = fmul fast float %7954, %7957
  %7961 = fadd fast float %7958, %7942
  %7962 = fadd fast float %7959, %7943
  %7963 = fadd fast float %7960, %7944
  %7964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7965 = extractvalue %dx.types.CBufRet.f32 %7964, 0
  %7966 = extractvalue %dx.types.CBufRet.f32 %7964, 1
  %7967 = fadd fast float %7966, %7965
  %7968 = call float @dx.op.unary.f32(i32 7, float %7967)  ; Saturate(value)
  %7969 = extractvalue %dx.types.CBufRet.f32 %7964, 2
  %7970 = extractvalue %dx.types.CBufRet.f32 %7964, 3
  %7971 = fadd fast float %7970, %7969
  %7972 = call float @dx.op.unary.f32(i32 7, float %7971)  ; Saturate(value)
  %7973 = fmul fast float %7968, %7952
  %7974 = fmul fast float %7973, %7972
  br label %8057

; <label>:7975                                    ; preds = %7911
  %7976 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %7935
  %7977 = load float, float* %7976, align 4, !tbaa !106, !noalias !117
  %7978 = fcmp fast olt float %7977, %7842
  %7979 = icmp sgt i32 %7918, 0
  %7980 = and i1 %7979, %7978
  br i1 %7980, label %7981, label %8018

; <label>:7981                                    ; preds = %7975
  br label %7982

; <label>:7982                                    ; preds = %8011, %7981
  %7983 = phi float [ %8012, %8011 ], [ %7840, %7981 ]
  %7984 = phi float [ %8013, %8011 ], [ %7841, %7981 ]
  %7985 = phi float [ %7993, %8011 ], [ %7977, %7981 ]
  %7986 = phi i32 [ %7990, %8011 ], [ %7935, %7981 ]
  %7987 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %7986
  %7988 = load float, float* %7987, align 4, !tbaa !106, !noalias !117
  %7989 = icmp slt i32 %7986, 2
  %7990 = add nsw i32 %7986, 1
  %7991 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %7990
  %7992 = load float, float* %7991, align 4, !tbaa !106, !noalias !117
  %7993 = select i1 %7989, float %7992, float %7756
  %7994 = call float @dx.op.binary.f32(i32 36, float %7993, float %7988)  ; FMin(a,b)
  %7995 = call float @dx.op.binary.f32(i32 36, float %7842, float %7994)  ; FMin(a,b)
  %7996 = icmp eq i32 %7706, 0
  %7997 = fadd fast float %7995, %7985
  %7998 = fmul fast float %7997, %7687
  %7999 = fadd fast float %7998, %7700
  br i1 %7996, label %8005, label %8000

; <label>:8000                                    ; preds = %7982
  %8001 = fsub fast float %7995, %7985
  %8002 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8001)  ; FMax(a,b)
  %8003 = fmul fast float %8002, %7999
  %8004 = fadd fast float %8003, %7984
  br label %8011

; <label>:8005                                    ; preds = %7982
  %8006 = fsub fast float %7985, %7995
  %8007 = call float @dx.op.unary.f32(i32 6, float %8006)  ; FAbs(value)
  %8008 = fadd fast float %8007, %7983
  %8009 = fmul fast float %8007, %7999
  %8010 = fsub fast float %7984, %8009
  br label %8011

; <label>:8011                                    ; preds = %8005, %8000
  %8012 = phi float [ %8002, %8000 ], [ %8008, %8005 ]
  %8013 = phi float [ %8004, %8000 ], [ %8010, %8005 ]
  %8014 = fcmp fast olt float %7993, %7842
  %8015 = icmp slt i32 %7990, 3
  %8016 = and i1 %8015, %8014
  br i1 %8016, label %7982, label %8017

; <label>:8017                                    ; preds = %8011
  br label %8018

; <label>:8018                                    ; preds = %8017, %7975
  %8019 = phi float [ %7840, %7975 ], [ %8012, %8017 ]
  %8020 = phi float [ %7841, %7975 ], [ %8013, %8017 ]
  %8021 = fsub fast float %7756, %8019
  %8022 = select i1 %7758, float %8019, float %8021
  %8023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8024 = extractvalue %dx.types.CBufRet.f32 %8023, 0
  %8025 = extractvalue %dx.types.CBufRet.f32 %8023, 1
  %8026 = extractvalue %dx.types.CBufRet.f32 %8023, 2
  %8027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8028 = extractvalue %dx.types.CBufRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.CBufRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.CBufRet.f32 %8027, 2
  %8031 = extractvalue %dx.types.CBufRet.f32 %8027, 3
  %8032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8033 = extractvalue %dx.types.CBufRet.f32 %8032, 3
  %8034 = call float @dx.op.binary.f32(i32 36, float %8020, float %8033)  ; FMin(a,b)
  %8035 = fmul fast float %8031, %8022
  %8036 = call float @dx.op.unary.f32(i32 7, float %8035)  ; Saturate(value)
  %8037 = fsub fast float %8028, %8024
  %8038 = fsub fast float %8029, %8025
  %8039 = fsub fast float %8030, %8026
  %8040 = fmul fast float %8036, %8037
  %8041 = fmul fast float %8036, %8038
  %8042 = fmul fast float %8036, %8039
  %8043 = fadd fast float %8040, %8024
  %8044 = fadd fast float %8041, %8025
  %8045 = fadd fast float %8042, %8026
  %8046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8047 = extractvalue %dx.types.CBufRet.f32 %8046, 0
  %8048 = extractvalue %dx.types.CBufRet.f32 %8046, 1
  %8049 = fadd fast float %8048, %8047
  %8050 = call float @dx.op.unary.f32(i32 7, float %8049)  ; Saturate(value)
  %8051 = extractvalue %dx.types.CBufRet.f32 %8046, 2
  %8052 = extractvalue %dx.types.CBufRet.f32 %8046, 3
  %8053 = fadd fast float %8052, %8051
  %8054 = call float @dx.op.unary.f32(i32 7, float %8053)  ; Saturate(value)
  %8055 = fmul fast float %8050, %8034
  %8056 = fmul fast float %8055, %8054
  br label %8057

; <label>:8057                                    ; preds = %8018, %7937, %7772, %7754, %7752
  %8058 = phi float [ %7781, %7772 ], [ %7940, %7937 ], [ %8022, %8018 ], [ 0.000000e+00, %7752 ], [ 0.000000e+00, %7754 ]
  %8059 = phi float [ %7815, %7772 ], [ %7974, %7937 ], [ %8056, %8018 ], [ 0.000000e+00, %7752 ], [ 0.000000e+00, %7754 ]
  %8060 = phi float [ %7802, %7772 ], [ %7961, %7937 ], [ %8043, %8018 ], [ 0.000000e+00, %7752 ], [ 0.000000e+00, %7754 ]
  %8061 = phi float [ %7803, %7772 ], [ %7962, %7937 ], [ %8044, %8018 ], [ 0.000000e+00, %7752 ], [ 0.000000e+00, %7754 ]
  %8062 = phi float [ %7804, %7772 ], [ %7963, %7937 ], [ %8045, %8018 ], [ 0.000000e+00, %7752 ], [ 0.000000e+00, %7754 ]
  %8063 = fmul fast float %7695, %8059
  %8064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8065 = extractvalue %dx.types.CBufRet.f32 %8064, 2
  %8066 = fsub fast float %7702, %8065
  %8067 = fcmp fast olt float %8063, -2.000000e+01
  %8068 = call float @dx.op.unary.f32(i32 21, float %8063)  ; Exp(value)
  %8069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8070 = extractvalue %dx.types.CBufRet.f32 %8069, 2
  %8071 = extractvalue %dx.types.CBufRet.f32 %8069, 3
  %8072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8073 = extractvalue %dx.types.CBufRet.f32 %8072, 2
  %8074 = fmul fast float %8071, %8066
  %8075 = call float @dx.op.unary.f32(i32 7, float %8074)  ; Saturate(value)
  %8076 = fsub fast float 1.000000e+00, %8075
  %8077 = fmul fast float %7687, 5.000000e-01
  %8078 = fadd fast float %8077, 5.000000e-01
  %8079 = call float @dx.op.unary.f32(i32 7, float %8078)  ; Saturate(value)
  %8080 = fsub fast float 1.000000e+00, %8079
  %8081 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8076)  ; FMax(a,b)
  %8082 = fdiv fast float %8080, %8081
  %8083 = fsub fast float %8066, %7644
  %8084 = call float @dx.op.unary.f32(i32 6, float %8083)  ; FAbs(value)
  %8085 = fmul fast float %8084, %8070
  %8086 = call float @dx.op.unary.f32(i32 7, float %8082)  ; Saturate(value)
  %8087 = fsub fast float 1.000000e+00, %8085
  %8088 = fmul fast float %8087, %8086
  %8089 = fadd fast float %8088, %8085
  %8090 = fmul fast float %8073, %8066
  %8091 = call float @dx.op.unary.f32(i32 7, float %8090)  ; Saturate(value)
  %8092 = fsub fast float 1.000000e+00, %8089
  %8093 = fmul fast float %8092, %8091
  %8094 = fadd fast float %8093, %8089
  %8095 = call float @dx.op.unary.f32(i32 7, float %8094)  ; Saturate(value)
  %8096 = fadd fast float %8068, -1.000000e+00
  %8097 = select i1 %8067, float -1.000000e+00, float %8096
  %8098 = fmul fast float %8095, %8097
  %8099 = fadd fast float %8098, 1.000000e+00
  %8100 = fsub fast float -0.000000e+00, %8098
  %8101 = fmul fast float %8060, %8100
  %8102 = fmul fast float %8061, %8100
  %8103 = fmul fast float %8062, %8100
  br label %8104

; <label>:8104                                    ; preds = %8057, %7653
  %8105 = phi float [ %8058, %8057 ], [ 0.000000e+00, %7653 ]
  %8106 = phi float [ %8099, %8057 ], [ 1.000000e+00, %7653 ]
  %8107 = phi float [ %8101, %8057 ], [ 0.000000e+00, %7653 ]
  %8108 = phi float [ %8102, %8057 ], [ 0.000000e+00, %7653 ]
  %8109 = phi float [ %8103, %8057 ], [ 0.000000e+00, %7653 ]
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 1
  %8112 = fsub fast float 1.000000e+00, %8106
  %8113 = fmul fast float %8112, %7688
  %8114 = fmul fast float %8113, %8111
  %8115 = fsub fast float %7688, %8114
  br i1 %7681, label %8116, label %8145, !dx.controlflow.hints !153

; <label>:8116                                    ; preds = %8104
  %8117 = fmul fast float %7689, %7678
  %8118 = fadd fast float %8117, %7679
  %8119 = call float @dx.op.unary.f32(i32 7, float %8118)  ; Saturate(value)
  %8120 = fmul fast float %7660, %8115
  %8121 = fsub fast float -0.000000e+00, %8120
  %8122 = fmul fast float %7661, %8115
  %8123 = fsub fast float -0.000000e+00, %8122
  %8124 = call float @dx.op.unary.f32(i32 21, float %8121)  ; Exp(value)
  %8125 = call float @dx.op.unary.f32(i32 21, float %8123)  ; Exp(value)
  %8126 = call float @dx.op.binary.f32(i32 35, float %7668, float %8124)  ; FMax(a,b)
  %8127 = call float @dx.op.binary.f32(i32 35, float %7668, float %8125)  ; FMax(a,b)
  %8128 = fsub fast float %8127, %8126
  %8129 = fmul fast float %8128, %8119
  %8130 = fadd fast float %8129, %8126
  %8131 = call float @dx.op.unary.f32(i32 7, float %8130)  ; Saturate(value)
  %8132 = fsub fast float %7665, %7670
  %8133 = fsub fast float %7666, %7671
  %8134 = fsub fast float %7667, %7672
  %8135 = fmul fast float %8119, %8132
  %8136 = fmul fast float %8119, %8133
  %8137 = fmul fast float %8119, %8134
  %8138 = fadd fast float %8135, %7670
  %8139 = fadd fast float %8136, %7671
  %8140 = fadd fast float %8137, %7672
  %8141 = fsub fast float 1.000000e+00, %8131
  %8142 = fmul fast float %8141, %8138
  %8143 = fmul fast float %8141, %8139
  %8144 = fmul fast float %8141, %8140
  br label %8204

; <label>:8145                                    ; preds = %8104
  %8146 = fmul fast float %8115, %7677
  %8147 = call float @dx.op.unary.f32(i32 7, float %8146)  ; Saturate(value)
  %8148 = fsub fast float 2.000000e+00, %8147
  %8149 = fmul fast float %8147, 9.921875e-01
  %8150 = fmul fast float %8149, %8148
  %8151 = fadd fast float %8150, 3.906250e-03
  %8152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %8151, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8153 = extractvalue %dx.types.ResRet.f32 %8152, 0
  %8154 = fsub fast float %8147, %8153
  %8155 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8154)  ; FMax(a,b)
  %8156 = fmul fast float %7663, %7644
  %8157 = call float @dx.op.unary.f32(i32 6, float %8156)  ; FAbs(value)
  %8158 = fcmp fast ogt float %8157, 0x3EB0C6F7A0000000
  br i1 %8158, label %8159, label %8165, !dx.controlflow.hints !154

; <label>:8159                                    ; preds = %8145
  %8160 = fmul fast float %8156, 0xBFF7154760000000
  %8161 = call float @dx.op.unary.f32(i32 21, float %8160)  ; Exp(value)
  %8162 = fsub fast float 1.000000e+00, %8161
  %8163 = fdiv fast float %8162, %8156
  %8164 = fmul fast float %8163, %7673
  br label %8165

; <label>:8165                                    ; preds = %8159, %8145
  %8166 = phi float [ %8164, %8159 ], [ %7673, %8145 ]
  %8167 = fadd fast float %8166, %7675
  %8168 = fmul fast float %8167, %8155
  %8169 = fmul fast float %7660, %8168
  %8170 = fsub fast float -0.000000e+00, %8169
  %8171 = fmul fast float %7661, %8168
  %8172 = fsub fast float -0.000000e+00, %8171
  %8173 = fmul fast float %7662, %8168
  %8174 = fsub fast float -0.000000e+00, %8173
  %8175 = call float @dx.op.unary.f32(i32 21, float %8170)  ; Exp(value)
  %8176 = call float @dx.op.unary.f32(i32 21, float %8172)  ; Exp(value)
  %8177 = call float @dx.op.unary.f32(i32 21, float %8174)  ; Exp(value)
  %8178 = fmul fast float %7689, %7689
  %8179 = fadd fast float %8178, 1.000000e+00
  %8180 = fmul fast float %8179, 0x3FAE8EC8A0000000
  %8181 = fmul fast float %8180, %7670
  %8182 = fmul fast float %8180, %7671
  %8183 = fmul fast float %8180, %7672
  %8184 = fmul fast float %7689, %7668
  %8185 = fsub fast float 1.000000e+00, %8184
  %8186 = fmul fast float %7668, %7668
  %8187 = fsub fast float 1.000000e+00, %8186
  %8188 = fmul fast float %8187, 0x3FB45F3060000000
  %8189 = fmul fast float %8185, %8185
  %8190 = fdiv fast float 1.000000e+00, %8189
  %8191 = fmul fast float %8188, %8190
  %8192 = fmul fast float %8191, %7665
  %8193 = fmul fast float %8191, %7666
  %8194 = fmul fast float %8191, %7667
  %8195 = fadd fast float %8192, %8181
  %8196 = fadd fast float %8193, %8182
  %8197 = fadd fast float %8194, %8183
  %8198 = fsub fast float 1.000000e+00, %8175
  %8199 = fsub fast float 1.000000e+00, %8176
  %8200 = fsub fast float 1.000000e+00, %8177
  %8201 = fmul fast float %8195, %8198
  %8202 = fmul fast float %8196, %8199
  %8203 = fmul fast float %8197, %8200
  br label %8204

; <label>:8204                                    ; preds = %8165, %8116
  %8205 = phi float [ %8142, %8116 ], [ %8201, %8165 ]
  %8206 = phi float [ %8143, %8116 ], [ %8202, %8165 ]
  %8207 = phi float [ %8144, %8116 ], [ %8203, %8165 ]
  %8208 = phi float [ %8131, %8116 ], [ %8175, %8165 ]
  %8209 = phi float [ %8131, %8116 ], [ %8176, %8165 ]
  %8210 = phi float [ %8131, %8116 ], [ %8177, %8165 ]
  br i1 %7697, label %8211, label %8409, !dx.controlflow.hints !155

; <label>:8211                                    ; preds = %8204
  %8212 = extractvalue %dx.types.CBufRet.f32 %8110, 0
  %8213 = fmul fast float %8212, %8112
  %8214 = fsub fast float %8107, %8205
  %8215 = fsub fast float %8108, %8206
  %8216 = fsub fast float %8109, %8207
  %8217 = fmul fast float %8213, %8214
  %8218 = fmul fast float %8213, %8215
  %8219 = fmul fast float %8213, %8216
  %8220 = fadd fast float %8217, %8205
  %8221 = fadd fast float %8218, %8206
  %8222 = fadd fast float %8219, %8207
  %8223 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8208)  ; FMax(a,b)
  %8224 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8209)  ; FMax(a,b)
  %8225 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8210)  ; FMax(a,b)
  %8226 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8106)  ; FMax(a,b)
  %8227 = call float @dx.op.binary.f32(i32 35, float %8105, float %8115)  ; FMax(a,b)
  %8228 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8227)  ; FMax(a,b)
  %8229 = fdiv fast float %8105, %8228
  %8230 = call float @dx.op.unary.f32(i32 7, float %8229)  ; Saturate(value)
  %8231 = fdiv fast float %8115, %8228
  %8232 = call float @dx.op.unary.f32(i32 7, float %8231)  ; Saturate(value)
  %8233 = fcmp fast une float %8226, 1.000000e+00
  br i1 %8233, label %8234, label %8247, !dx.controlflow.hints !156

; <label>:8234                                    ; preds = %8211
  %8235 = call float @dx.op.unary.f32(i32 23, float %8226)  ; Log(value)
  %8236 = fmul fast float %8235, 0x3FE62E4300000000
  %8237 = fmul fast float %8107, %8236
  %8238 = fsub fast float -0.000000e+00, %8237
  %8239 = fmul fast float %8108, %8236
  %8240 = fsub fast float -0.000000e+00, %8239
  %8241 = fmul fast float %8109, %8236
  %8242 = fsub fast float -0.000000e+00, %8241
  %8243 = fsub fast float 1.000000e+00, %8226
  %8244 = fdiv fast float %8238, %8243
  %8245 = fdiv fast float %8240, %8243
  %8246 = fdiv fast float %8242, %8243
  br label %8247

; <label>:8247                                    ; preds = %8234, %8211
  %8248 = phi float [ %8244, %8234 ], [ %8107, %8211 ]
  %8249 = phi float [ %8245, %8234 ], [ %8108, %8211 ]
  %8250 = phi float [ %8246, %8234 ], [ %8109, %8211 ]
  %8251 = phi float [ %8236, %8234 ], [ 0.000000e+00, %8211 ]
  %8252 = fcmp fast une float %8223, 1.000000e+00
  br i1 %8252, label %8253, label %8260, !dx.controlflow.hints !157

; <label>:8253                                    ; preds = %8247
  %8254 = call float @dx.op.unary.f32(i32 23, float %8223)  ; Log(value)
  %8255 = fmul fast float %8254, 0x3FE62E4300000000
  %8256 = fmul fast float %8220, %8255
  %8257 = fsub fast float -0.000000e+00, %8256
  %8258 = fsub fast float 1.000000e+00, %8223
  %8259 = fdiv fast float %8257, %8258
  br label %8260

; <label>:8260                                    ; preds = %8253, %8247
  %8261 = phi float [ %8259, %8253 ], [ %8220, %8247 ]
  %8262 = phi float [ %8255, %8253 ], [ 0.000000e+00, %8247 ]
  %8263 = fcmp fast une float %8224, 1.000000e+00
  br i1 %8263, label %8264, label %8271, !dx.controlflow.hints !157

; <label>:8264                                    ; preds = %8260
  %8265 = call float @dx.op.unary.f32(i32 23, float %8224)  ; Log(value)
  %8266 = fmul fast float %8265, 0x3FE62E4300000000
  %8267 = fmul fast float %8221, %8266
  %8268 = fsub fast float -0.000000e+00, %8267
  %8269 = fsub fast float 1.000000e+00, %8224
  %8270 = fdiv fast float %8268, %8269
  br label %8271

; <label>:8271                                    ; preds = %8264, %8260
  %8272 = phi float [ %8270, %8264 ], [ %8221, %8260 ]
  %8273 = phi float [ %8266, %8264 ], [ 0.000000e+00, %8260 ]
  %8274 = fcmp fast une float %8225, 1.000000e+00
  br i1 %8274, label %8275, label %8282, !dx.controlflow.hints !157

; <label>:8275                                    ; preds = %8271
  %8276 = call float @dx.op.unary.f32(i32 23, float %8225)  ; Log(value)
  %8277 = fmul fast float %8276, 0x3FE62E4300000000
  %8278 = fmul fast float %8222, %8277
  %8279 = fsub fast float -0.000000e+00, %8278
  %8280 = fsub fast float 1.000000e+00, %8225
  %8281 = fdiv fast float %8279, %8280
  br label %8282

; <label>:8282                                    ; preds = %8275, %8271
  %8283 = phi float [ %8281, %8275 ], [ %8222, %8271 ]
  %8284 = phi float [ %8277, %8275 ], [ 0.000000e+00, %8271 ]
  %8285 = fmul fast float %8248, %8232
  %8286 = fmul fast float %8249, %8232
  %8287 = fmul fast float %8250, %8232
  %8288 = fmul fast float %8251, %8232
  %8289 = fmul fast float %8261, %8230
  %8290 = fmul fast float %8272, %8230
  %8291 = fmul fast float %8283, %8230
  %8292 = fmul fast float %8262, %8230
  %8293 = fmul fast float %8273, %8230
  %8294 = fmul fast float %8284, %8230
  %8295 = fadd fast float %8289, %8285
  %8296 = fadd fast float %8290, %8286
  %8297 = fadd fast float %8291, %8287
  %8298 = fadd fast float %8292, %8288
  %8299 = fadd fast float %8293, %8288
  %8300 = fadd fast float %8294, %8288
  %8301 = fcmp fast une float %8298, 0.000000e+00
  br i1 %8301, label %8302, label %8309, !dx.controlflow.hints !158

; <label>:8302                                    ; preds = %8282
  %8303 = fmul fast float %8298, 0x3FF7154760000000
  %8304 = call float @dx.op.unary.f32(i32 21, float %8303)  ; Exp(value)
  %8305 = fsub fast float 1.000000e+00, %8304
  %8306 = fmul fast float %8295, %8305
  %8307 = fsub fast float -0.000000e+00, %8306
  %8308 = fdiv fast float %8307, %8298
  br label %8309

; <label>:8309                                    ; preds = %8302, %8282
  %8310 = phi float [ %8304, %8302 ], [ 1.000000e+00, %8282 ]
  %8311 = phi float [ %8308, %8302 ], [ %8295, %8282 ]
  %8312 = fcmp fast une float %8299, 0.000000e+00
  br i1 %8312, label %8313, label %8320, !dx.controlflow.hints !158

; <label>:8313                                    ; preds = %8309
  %8314 = fmul fast float %8299, 0x3FF7154760000000
  %8315 = call float @dx.op.unary.f32(i32 21, float %8314)  ; Exp(value)
  %8316 = fsub fast float 1.000000e+00, %8315
  %8317 = fmul fast float %8296, %8316
  %8318 = fsub fast float -0.000000e+00, %8317
  %8319 = fdiv fast float %8318, %8299
  br label %8320

; <label>:8320                                    ; preds = %8313, %8309
  %8321 = phi float [ %8315, %8313 ], [ 1.000000e+00, %8309 ]
  %8322 = phi float [ %8319, %8313 ], [ %8296, %8309 ]
  %8323 = fcmp fast une float %8300, 0.000000e+00
  br i1 %8323, label %8324, label %8331, !dx.controlflow.hints !158

; <label>:8324                                    ; preds = %8320
  %8325 = fmul fast float %8300, 0x3FF7154760000000
  %8326 = call float @dx.op.unary.f32(i32 21, float %8325)  ; Exp(value)
  %8327 = fsub fast float 1.000000e+00, %8326
  %8328 = fmul fast float %8297, %8327
  %8329 = fsub fast float -0.000000e+00, %8328
  %8330 = fdiv fast float %8329, %8300
  br label %8331

; <label>:8331                                    ; preds = %8324, %8320
  %8332 = phi float [ %8326, %8324 ], [ 1.000000e+00, %8320 ]
  %8333 = phi float [ %8330, %8324 ], [ %8297, %8320 ]
  %8334 = fcmp fast ogt float %8230, %8232
  br i1 %8334, label %8335, label %8355

; <label>:8335                                    ; preds = %8331
  %8336 = fsub fast float 1.000000e+00, %8232
  %8337 = fmul fast float %8248, %8336
  %8338 = fmul fast float %8249, %8336
  %8339 = fmul fast float %8250, %8336
  %8340 = fmul fast float %8251, %8336
  %8341 = fcmp fast une float %8340, 0.000000e+00
  br i1 %8341, label %8342, label %8393, !dx.controlflow.hints !159

; <label>:8342                                    ; preds = %8335
  %8343 = fmul fast float %8340, 0x3FF7154760000000
  %8344 = call float @dx.op.unary.f32(i32 21, float %8343)  ; Exp(value)
  %8345 = fsub fast float 1.000000e+00, %8344
  %8346 = fmul fast float %8337, %8345
  %8347 = fsub fast float -0.000000e+00, %8346
  %8348 = fmul fast float %8338, %8345
  %8349 = fsub fast float -0.000000e+00, %8348
  %8350 = fmul fast float %8339, %8345
  %8351 = fsub fast float -0.000000e+00, %8350
  %8352 = fdiv fast float %8347, %8340
  %8353 = fdiv fast float %8349, %8340
  %8354 = fdiv fast float %8351, %8340
  br label %8393

; <label>:8355                                    ; preds = %8331
  %8356 = fsub fast float 1.000000e+00, %8230
  %8357 = fmul fast float %8261, %8356
  %8358 = fmul fast float %8272, %8356
  %8359 = fmul fast float %8283, %8356
  %8360 = fmul fast float %8262, %8356
  %8361 = fmul fast float %8273, %8356
  %8362 = fmul fast float %8284, %8356
  %8363 = fcmp fast une float %8360, 0.000000e+00
  br i1 %8363, label %8364, label %8371, !dx.controlflow.hints !158

; <label>:8364                                    ; preds = %8355
  %8365 = fmul fast float %8360, 0x3FF7154760000000
  %8366 = call float @dx.op.unary.f32(i32 21, float %8365)  ; Exp(value)
  %8367 = fsub fast float 1.000000e+00, %8366
  %8368 = fmul fast float %8357, %8367
  %8369 = fsub fast float -0.000000e+00, %8368
  %8370 = fdiv fast float %8369, %8360
  br label %8371

; <label>:8371                                    ; preds = %8364, %8355
  %8372 = phi float [ %8370, %8364 ], [ %8357, %8355 ]
  %8373 = phi float [ %8366, %8364 ], [ 1.000000e+00, %8355 ]
  %8374 = fcmp fast une float %8361, 0.000000e+00
  br i1 %8374, label %8375, label %8382, !dx.controlflow.hints !158

; <label>:8375                                    ; preds = %8371
  %8376 = fmul fast float %8361, 0x3FF7154760000000
  %8377 = call float @dx.op.unary.f32(i32 21, float %8376)  ; Exp(value)
  %8378 = fsub fast float 1.000000e+00, %8377
  %8379 = fmul fast float %8358, %8378
  %8380 = fsub fast float -0.000000e+00, %8379
  %8381 = fdiv fast float %8380, %8361
  br label %8382

; <label>:8382                                    ; preds = %8375, %8371
  %8383 = phi float [ %8381, %8375 ], [ %8358, %8371 ]
  %8384 = phi float [ %8377, %8375 ], [ 1.000000e+00, %8371 ]
  %8385 = fcmp fast une float %8362, 0.000000e+00
  br i1 %8385, label %8386, label %8393, !dx.controlflow.hints !158

; <label>:8386                                    ; preds = %8382
  %8387 = fmul fast float %8362, 0x3FF7154760000000
  %8388 = call float @dx.op.unary.f32(i32 21, float %8387)  ; Exp(value)
  %8389 = fsub fast float 1.000000e+00, %8388
  %8390 = fmul fast float %8359, %8389
  %8391 = fsub fast float -0.000000e+00, %8390
  %8392 = fdiv fast float %8391, %8362
  br label %8393

; <label>:8393                                    ; preds = %8386, %8382, %8342, %8335
  %8394 = phi float [ %8392, %8386 ], [ %8354, %8342 ], [ %8339, %8335 ], [ %8359, %8382 ]
  %8395 = phi float [ %8383, %8386 ], [ %8353, %8342 ], [ %8338, %8335 ], [ %8383, %8382 ]
  %8396 = phi float [ %8372, %8386 ], [ %8352, %8342 ], [ %8337, %8335 ], [ %8372, %8382 ]
  %8397 = phi float [ %8388, %8386 ], [ %8344, %8342 ], [ 1.000000e+00, %8335 ], [ 1.000000e+00, %8382 ]
  %8398 = phi float [ %8384, %8386 ], [ %8344, %8342 ], [ 1.000000e+00, %8335 ], [ %8384, %8382 ]
  %8399 = phi float [ %8373, %8386 ], [ %8344, %8342 ], [ 1.000000e+00, %8335 ], [ %8373, %8382 ]
  %8400 = fmul fast float %8399, %8311
  %8401 = fmul fast float %8398, %8322
  %8402 = fmul fast float %8397, %8333
  %8403 = fadd fast float %8400, %8396
  %8404 = fadd fast float %8401, %8395
  %8405 = fadd fast float %8402, %8394
  %8406 = fmul fast float %8399, %8310
  %8407 = fmul fast float %8398, %8321
  %8408 = fmul fast float %8397, %8332
  br label %8409

; <label>:8409                                    ; preds = %8393, %8204
  %8410 = phi float [ %8408, %8393 ], [ %8210, %8204 ]
  %8411 = phi float [ %8407, %8393 ], [ %8209, %8204 ]
  %8412 = phi float [ %8406, %8393 ], [ %8208, %8204 ]
  %8413 = phi float [ %8405, %8393 ], [ %8207, %8204 ]
  %8414 = phi float [ %8404, %8393 ], [ %8206, %8204 ]
  %8415 = phi float [ %8403, %8393 ], [ %8205, %8204 ]
  %8416 = fmul fast float %8415, %7361
  %8417 = fmul fast float %8414, %7361
  %8418 = fmul fast float %8413, %7361
  %8419 = fmul fast float %8412, %7652
  %8420 = call float @dx.op.dot3.f32(i32 55, float %8412, float %8411, float %8410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8421 = call float @dx.op.dot3.f32(i32 55, float %8416, float %8417, float %8418, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8422 = select i1 %216, float %8420, float %8412
  %8423 = select i1 %216, float %8420, float %8411
  %8424 = select i1 %216, float 1.000000e+00, float %8410
  %8425 = select i1 %216, float %8421, float %8416
  %8426 = select i1 %216, float 0.000000e+00, float %8417
  %8427 = select i1 %216, float 0.000000e+00, float %8418
  %8428 = fmul fast float %8422, %7646
  %8429 = fmul fast float %8423, %7647
  %8430 = fmul fast float %8424, %7648
  %8431 = fadd fast float %8428, %8425
  %8432 = fadd fast float %8429, %8426
  %8433 = fadd fast float %8427, %8430
  %8434 = fmul fast float %8422, %7649
  %8435 = fmul fast float %8423, %7650
  %8436 = fmul fast float %8424, %7651
  %8437 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8438 = extractvalue %dx.types.CBufRet.i32 %8437, 0
  %8439 = icmp eq i32 %8438, 0
  br i1 %8439, label %8807, label %8440, !dx.controlflow.hints !160

; <label>:8440                                    ; preds = %8409
  %8441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8442 = extractvalue %dx.types.CBufRet.f32 %8441, 2
  %8443 = extractvalue %dx.types.CBufRet.f32 %8441, 3
  %8444 = fmul fast float %8442, %92
  %8445 = fmul fast float %8443, %93
  %8446 = fmul fast float %8444, 2.000000e+00
  %8447 = fmul fast float %8445, 2.000000e+00
  %8448 = fsub fast float 1.000000e+00, %8446
  %8449 = fsub fast float 1.000000e+00, %8447
  %8450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8451 = extractvalue %dx.types.CBufRet.f32 %8450, 0
  %8452 = extractvalue %dx.types.CBufRet.f32 %8450, 1
  %8453 = extractvalue %dx.types.CBufRet.f32 %8450, 2
  %8454 = fmul fast float %8448, %8451
  %8455 = fmul fast float %8448, %8452
  %8456 = fmul fast float %8448, %8453
  %8457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8458 = extractvalue %dx.types.CBufRet.f32 %8457, 0
  %8459 = extractvalue %dx.types.CBufRet.f32 %8457, 1
  %8460 = extractvalue %dx.types.CBufRet.f32 %8457, 2
  %8461 = fmul fast float %8449, %8458
  %8462 = fmul fast float %8449, %8459
  %8463 = fmul fast float %8449, %8460
  %8464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8465 = extractvalue %dx.types.CBufRet.f32 %8464, 0
  %8466 = extractvalue %dx.types.CBufRet.f32 %8464, 1
  %8467 = extractvalue %dx.types.CBufRet.f32 %8464, 2
  %8468 = fadd fast float %8461, %8465
  %8469 = fadd fast float %8468, %8454
  %8470 = fadd fast float %8462, %8466
  %8471 = fadd fast float %8470, %8455
  %8472 = fadd fast float %8463, %8467
  %8473 = fadd fast float %8472, %8456
  %8474 = fmul fast float %8469, %7645
  %8475 = fmul fast float %8471, %7645
  %8476 = fmul fast float %8473, %7645
  %8477 = fmul fast float %8474, %8474
  %8478 = fmul fast float %8475, %8475
  %8479 = fadd fast float %8477, %8478
  %8480 = fmul fast float %8476, %8476
  %8481 = fadd fast float %8479, %8480
  %8482 = call float @dx.op.unary.f32(i32 24, float %8481)  ; Sqrt(value)
  %8483 = extractvalue %dx.types.CBufRet.f32 %7372, 0
  %8484 = fsub fast float %8482, %8483
  %8485 = extractvalue %dx.types.CBufRet.f32 %7372, 2
  %8486 = fmul fast float %8484, %8485
  %8487 = call float @dx.op.unary.f32(i32 7, float %8486)  ; Saturate(value)
  %8488 = fadd fast float %8487, -5.000000e-01
  %8489 = fmul fast float %8488, 2.000000e+00
  %8490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8491 = extractvalue %dx.types.CBufRet.f32 %8490, 2
  %8492 = call float @dx.op.binary.f32(i32 36, float %8491, float %8489)  ; FMin(a,b)
  %8493 = fsub fast float -0.000000e+00, %8491
  %8494 = fcmp fast ogt float %8492, %8493
  br i1 %8494, label %8495, label %8807, !dx.controlflow.hints !161

; <label>:8495                                    ; preds = %8440
  %8496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8497 = extractvalue %dx.types.CBufRet.f32 %8496, 3
  %8498 = fcmp fast ogt float %8497, 0.000000e+00
  br i1 %8498, label %8499, label %8574, !dx.controlflow.hints !162

; <label>:8499                                    ; preds = %8495
  %8500 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %8501 = extractvalue %dx.types.Dimensions %8500, 0
  %8502 = sitofp i32 %8501 to float
  %8503 = extractvalue %dx.types.Dimensions %8500, 1
  %8504 = sitofp i32 %8503 to float
  %8505 = fmul fast float %8444, %8502
  %8506 = fmul fast float %8445, %8504
  %8507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.f32 %8507, 1
  %8509 = fsub fast float -0.000000e+00, %8508
  %8510 = fptoui float %8509 to i32
  %8511 = fptoui float %8505 to i32
  %8512 = fptoui float %8506 to i32
  %8513 = and i32 %8510, 31
  %8514 = lshr i32 %8511, %8513
  %8515 = lshr i32 %8512, %8513
  %8516 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %8510, i32 %8514, i32 %8515, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8517 = extractvalue %dx.types.ResRet.f32 %8516, 0
  %8518 = fcmp fast olt float %8517, -1.000000e+00
  %8519 = fcmp fast ogt float %8517, -1.000000e+00
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 1
  %8522 = select i1 %8519, float %8521, float 1.000000e+00
  %8523 = fadd fast float %8517, 1.000000e+00
  %8524 = fmul fast float %8522, %8523
  %8525 = call float @dx.op.unary.f32(i32 6, float %8524)  ; FAbs(value)
  %8526 = extractvalue %dx.types.CBufRet.f32 %8520, 3
  %8527 = fcmp fast oge float %8525, %8526
  %8528 = select i1 %8527, float 0x4197782600000000, float %8525
  %8529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8530 = extractvalue %dx.types.CBufRet.f32 %8529, 0
  %8531 = extractvalue %dx.types.CBufRet.f32 %8529, 1
  %8532 = extractvalue %dx.types.CBufRet.f32 %8529, 2
  %8533 = select i1 %8518, float %8530, float %8451
  %8534 = select i1 %8518, float %8531, float %8452
  %8535 = select i1 %8518, float %8532, float %8453
  %8536 = fmul fast float %8533, %8448
  %8537 = fmul fast float %8534, %8448
  %8538 = fmul fast float %8535, %8448
  %8539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8540 = extractvalue %dx.types.CBufRet.f32 %8539, 0
  %8541 = extractvalue %dx.types.CBufRet.f32 %8539, 1
  %8542 = extractvalue %dx.types.CBufRet.f32 %8539, 2
  %8543 = select i1 %8518, float %8540, float %8458
  %8544 = select i1 %8518, float %8541, float %8459
  %8545 = select i1 %8518, float %8542, float %8460
  %8546 = fmul fast float %8543, %8449
  %8547 = fmul fast float %8544, %8449
  %8548 = fmul fast float %8545, %8449
  %8549 = fadd fast float %8546, %8536
  %8550 = fadd fast float %8547, %8537
  %8551 = fadd fast float %8548, %8538
  %8552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8553 = extractvalue %dx.types.CBufRet.f32 %8552, 0
  %8554 = extractvalue %dx.types.CBufRet.f32 %8552, 1
  %8555 = extractvalue %dx.types.CBufRet.f32 %8552, 2
  %8556 = select i1 %8518, float %8553, float %8465
  %8557 = select i1 %8518, float %8554, float %8466
  %8558 = select i1 %8518, float %8555, float %8467
  %8559 = fadd fast float %8549, %8556
  %8560 = fadd fast float %8550, %8557
  %8561 = fadd fast float %8551, %8558
  %8562 = fmul fast float %8559, %8528
  %8563 = fmul fast float %8560, %8528
  %8564 = fmul fast float %8561, %8528
  %8565 = fmul fast float %8562, %8562
  %8566 = fmul fast float %8563, %8563
  %8567 = fadd fast float %8565, %8566
  %8568 = fmul fast float %8564, %8564
  %8569 = fadd fast float %8567, %8568
  %8570 = call float @dx.op.unary.f32(i32 24, float %8569)  ; Sqrt(value)
  %8571 = fsub fast float %8570, %8483
  %8572 = fmul fast float %8571, %8485
  %8573 = call float @dx.op.unary.f32(i32 7, float %8572)  ; Saturate(value)
  br label %8574

; <label>:8574                                    ; preds = %8499, %8495
  %8575 = phi float [ %8573, %8499 ], [ 1.000000e+00, %8495 ]
  %8576 = fmul fast float %8492, 5.000000e-01
  %8577 = fadd fast float %8576, 5.000000e-01
  %8578 = call float @dx.op.unary.f32(i32 22, float %8577)  ; Frc(value)
  %8579 = call float @dx.op.unary.f32(i32 27, float %8578)  ; Round_ni(value)
  %8580 = call float @dx.op.unary.f32(i32 22, float %8578)  ; Frc(value)
  %8581 = fmul fast float %8580, 2.000000e+00
  %8582 = fadd fast float %8581, -1.000000e+00
  %8583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %8444, float %8445, float %8579, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8584 = extractvalue %dx.types.ResRet.f32 %8583, 0
  %8585 = extractvalue %dx.types.ResRet.f32 %8583, 1
  %8586 = extractvalue %dx.types.ResRet.f32 %8583, 2
  %8587 = extractvalue %dx.types.ResRet.f32 %8583, 3
  %8588 = fadd fast float %8584, -5.000000e-01
  %8589 = fadd fast float %8586, -5.000000e-01
  %8590 = fmul fast float %8588, 0xBFD5555560000000
  %8591 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8589, float %8590)  ; FMad(a,b,c)
  %8592 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8585, float 0.000000e+00)  ; FMad(a,b,c)
  %8593 = fadd fast float %8592, %8587
  %8594 = fmul fast float %8588, -7.500000e-01
  %8595 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8589, float %8594)  ; FMad(a,b,c)
  %8596 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8585, float 0.000000e+00)  ; FMad(a,b,c)
  %8597 = fadd fast float %8596, %8587
  %8598 = call float @dx.op.binary.f32(i32 35, float %8591, float -1.000000e+00)  ; FMax(a,b)
  %8599 = call float @dx.op.binary.f32(i32 35, float %8593, float -1.000000e+00)  ; FMax(a,b)
  %8600 = call float @dx.op.binary.f32(i32 35, float %8595, float -1.000000e+00)  ; FMax(a,b)
  %8601 = call float @dx.op.binary.f32(i32 35, float %8597, float -1.000000e+00)  ; FMax(a,b)
  %8602 = call float @dx.op.binary.f32(i32 36, float %8598, float 1.000000e+00)  ; FMin(a,b)
  %8603 = call float @dx.op.binary.f32(i32 36, float %8599, float 1.000000e+00)  ; FMin(a,b)
  %8604 = call float @dx.op.binary.f32(i32 36, float %8600, float 1.000000e+00)  ; FMin(a,b)
  %8605 = call float @dx.op.binary.f32(i32 36, float %8601, float 1.000000e+00)  ; FMin(a,b)
  %8606 = fcmp fast olt float %8602, 0x3FEFFF8020000000
  br i1 %8606, label %8607, label %8722, !dx.controlflow.hints !163

; <label>:8607                                    ; preds = %8574
  %8608 = extractvalue %dx.types.CBufRet.f32 %8490, 3
  %8609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8610 = extractvalue %dx.types.CBufRet.f32 %8609, 0
  %8611 = extractvalue %dx.types.CBufRet.f32 %8609, 1
  %8612 = extractvalue %dx.types.CBufRet.f32 %8609, 2
  %8613 = extractvalue %dx.types.CBufRet.f32 %8609, 3
  %8614 = fsub fast float %8610, %8602
  %8615 = fsub fast float %8611, %8603
  %8616 = fsub fast float %8612, %8604
  %8617 = fsub fast float %8613, %8605
  %8618 = fmul fast float %8614, %8608
  %8619 = fmul fast float %8615, %8608
  %8620 = fmul fast float %8616, %8608
  %8621 = fmul fast float %8617, %8608
  %8622 = fadd fast float %8618, %8602
  %8623 = fadd fast float %8619, %8603
  %8624 = fsub fast float -0.000000e+00, %8623
  %8625 = fadd fast float %8620, %8604
  %8626 = fadd fast float %8621, %8605
  %8627 = fmul fast float %8622, %8622
  %8628 = fsub fast float %8623, %8627
  %8629 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8628)  ; FMax(a,b)
  %8630 = fdiv fast float 1.000000e+00, %8629
  %8631 = fmul fast float %8623, %8622
  %8632 = fsub fast float %8625, %8631
  %8633 = fsub fast float %8582, %8622
  %8634 = fmul fast float %8582, %8582
  %8635 = fsub fast float %8634, %8623
  %8636 = fmul fast float %8633, %8630
  %8637 = fmul fast float %8636, %8632
  %8638 = fsub fast float %8635, %8637
  %8639 = fmul fast float %8623, %8623
  %8640 = fsub fast float %8626, %8639
  %8641 = fmul fast float %8632, %8632
  %8642 = fmul fast float %8641, %8630
  %8643 = fsub fast float %8640, %8642
  %8644 = fdiv fast float %8638, %8643
  %8645 = fmul fast float %8632, %8644
  %8646 = fsub fast float %8633, %8645
  %8647 = fmul fast float %8646, %8630
  %8648 = fmul fast float %8647, %8622
  %8649 = fsub fast float 1.000000e+00, %8648
  %8650 = fmul fast float %8623, %8644
  %8651 = fsub fast float %8649, %8650
  %8652 = fmul fast float %8647, %8647
  %8653 = fmul fast float %8644, 4.000000e+00
  %8654 = fmul fast float %8653, %8651
  %8655 = fsub fast float %8652, %8654
  %8656 = call float @dx.op.unary.f32(i32 24, float %8655)  ; Sqrt(value)
  %8657 = fcmp fast oge float %8647, 0.000000e+00
  %8658 = fsub fast float -0.000000e+00, %8656
  %8659 = select i1 %8657, float %8658, float %8656
  %8660 = fsub fast float %8659, %8647
  %8661 = fdiv fast float %8660, %8644
  %8662 = fdiv fast float %8651, %8660
  %8663 = fmul fast float %8661, 5.000000e-01
  %8664 = fmul fast float %8662, 2.000000e+00
  %8665 = select i1 %8657, float %8663, float %8664
  %8666 = select i1 %8657, float %8664, float %8663
  %8667 = call float @dx.op.binary.f32(i32 35, float %8665, float %8666)  ; FMax(a,b)
  %8668 = call float @dx.op.binary.f32(i32 36, float %8665, float %8666)  ; FMin(a,b)
  %8669 = fcmp fast ogt float %8582, %8668
  br i1 %8669, label %8670, label %8680

; <label>:8670                                    ; preds = %8607
  %8671 = fsub fast float %8582, %8668
  %8672 = fsub fast float %8667, %8668
  %8673 = fmul fast float %8671, %8672
  %8674 = fmul fast float %8667, %8582
  %8675 = fadd fast float %8667, %8582
  %8676 = fmul fast float %8675, %8622
  %8677 = fadd fast float %8674, %8623
  %8678 = fsub fast float %8677, %8676
  %8679 = fdiv fast float %8678, %8673
  br label %8680

; <label>:8680                                    ; preds = %8670, %8607
  %8681 = phi float [ %8679, %8670 ], [ 0.000000e+00, %8607 ]
  %8682 = fcmp fast ogt float %8582, %8667
  %8683 = fsub fast float %8582, %8667
  br i1 %8682, label %8684, label %8694

; <label>:8684                                    ; preds = %8680
  %8685 = fsub fast float %8667, %8668
  %8686 = fmul fast float %8685, %8683
  %8687 = fmul fast float %8668, %8582
  %8688 = fadd fast float %8668, %8582
  %8689 = fmul fast float %8688, %8622
  %8690 = fsub fast float %8624, %8687
  %8691 = fadd fast float %8690, %8689
  %8692 = fdiv fast float %8691, %8686
  %8693 = fadd fast float %8692, %8681
  br label %8694

; <label>:8694                                    ; preds = %8684, %8680
  %8695 = phi float [ %8693, %8684 ], [ %8681, %8680 ]
  %8696 = fsub fast float %8582, %8668
  %8697 = fmul fast float %8696, %8683
  %8698 = fmul fast float %8668, %8667
  %8699 = fadd fast float %8668, %8667
  %8700 = fmul fast float %8699, %8622
  %8701 = fadd fast float %8698, %8623
  %8702 = fsub fast float %8701, %8700
  %8703 = fdiv fast float %8702, %8697
  %8704 = call float @dx.op.unary.f32(i32 7, float %8695)  ; Saturate(value)
  %8705 = fcmp fast oeq float %7373, 0.000000e+00
  %8706 = extractvalue %dx.types.CBufRet.f32 %8490, 0
  %8707 = fcmp fast oeq float %8706, 0.000000e+00
  %8708 = or i1 %8705, %8707
  %8709 = fmul fast float %8706, 2.000000e+00
  %8710 = fadd fast float %8491, %8492
  %8711 = fdiv fast float %8710, %8709
  %8712 = call float @dx.op.unary.f32(i32 7, float %8711)  ; Saturate(value)
  %8713 = fmul fast float %8712, 2.000000e+00
  %8714 = fsub fast float 3.000000e+00, %8713
  %8715 = fmul fast float %8712, %8712
  %8716 = fmul fast float %8715, %8714
  %8717 = select i1 %8708, float 1.000000e+00, float %8716
  %8718 = fmul fast float %8703, %7373
  %8719 = fadd fast float %8704, %8718
  %8720 = call float @dx.op.unary.f32(i32 7, float %8719)  ; Saturate(value)
  %8721 = fmul fast float %8717, %8720
  br label %8722

; <label>:8722                                    ; preds = %8694, %8574
  %8723 = phi float [ %8721, %8694 ], [ 0.000000e+00, %8574 ]
  %8724 = fsub fast float 1.000000e+00, %8723
  %8725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %8444, float %8445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8726 = extractvalue %dx.types.ResRet.f32 %8725, 0
  %8727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8728 = extractvalue %dx.types.CBufRet.i32 %8727, 2
  %8729 = icmp eq i32 %8728, 0
  br i1 %8729, label %8735, label %8730

; <label>:8730                                    ; preds = %8722
  %8731 = call float @dx.op.unary.f32(i32 7, float %8723)  ; Saturate(value)
  %8732 = fadd fast float %8726, -1.000000e+00
  %8733 = fmul fast float %8731, %8732
  %8734 = fadd fast float %8733, 1.000000e+00
  br label %8735

; <label>:8735                                    ; preds = %8730, %8722
  %8736 = phi float [ %8734, %8730 ], [ %8724, %8722 ]
  br i1 %8498, label %8737, label %8755

; <label>:8737                                    ; preds = %8735
  %8738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8739 = extractvalue %dx.types.CBufRet.f32 %8738, 1
  %8740 = fsub fast float %8575, %8739
  %8741 = call float @dx.op.unary.f32(i32 7, float %8740)  ; Saturate(value)
  %8742 = fsub fast float %8575, %8497
  %8743 = call float @dx.op.unary.f32(i32 7, float %8742)  ; Saturate(value)
  %8744 = fsub fast float %8741, %8743
  %8745 = fsub fast float %8577, %8743
  %8746 = fdiv fast float %8745, %8744
  %8747 = call float @dx.op.unary.f32(i32 7, float %8746)  ; Saturate(value)
  %8748 = fmul fast float %8747, 2.000000e+00
  %8749 = fsub fast float 3.000000e+00, %8748
  %8750 = fsub fast float %8726, %8736
  %8751 = fmul fast float %8747, %8747
  %8752 = fmul fast float %8751, %8750
  %8753 = fmul fast float %8752, %8749
  %8754 = fadd fast float %8753, %8736
  br label %8755

; <label>:8755                                    ; preds = %8737, %8735
  %8756 = phi float [ %8754, %8737 ], [ %8736, %8735 ]
  %8757 = call float @dx.op.binary.f32(i32 35, float %8726, float %8756)  ; FMax(a,b)
  %8758 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8759 = extractvalue %dx.types.CBufRet.i32 %8758, 2
  %8760 = and i32 %8759, 1
  %8761 = icmp eq i32 %8760, 0
  %8762 = fcmp fast une float %8757, 1.000000e+00
  %8763 = and i1 %8762, %8761
  br i1 %8763, label %8764, label %8783

; <label>:8764                                    ; preds = %8755
  %8765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %8444, float %8445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8766 = extractvalue %dx.types.ResRet.f32 %8765, 0
  %8767 = extractvalue %dx.types.ResRet.f32 %8765, 1
  %8768 = extractvalue %dx.types.ResRet.f32 %8765, 2
  %8769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8770 = extractvalue %dx.types.CBufRet.f32 %8769, 1
  %8771 = fmul fast float %8770, %8766
  %8772 = fmul fast float %8770, %8767
  %8773 = fmul fast float %8770, %8768
  %8774 = fcmp fast ogt float %8726, 0x3FEFFF2E40000000
  %8775 = fsub fast float 1.000000e+00, %8757
  %8776 = fsub fast float 1.000000e+00, %8726
  %8777 = fdiv fast float %8775, %8776
  %8778 = call float @dx.op.unary.f32(i32 7, float %8777)  ; Saturate(value)
  %8779 = select i1 %8774, float 0.000000e+00, float %8778
  %8780 = fmul fast float %8771, %8779
  %8781 = fmul fast float %8772, %8779
  %8782 = fmul fast float %8773, %8779
  br label %8783

; <label>:8783                                    ; preds = %8764, %8755
  %8784 = phi float [ 0.000000e+00, %8755 ], [ %8780, %8764 ]
  %8785 = phi float [ 0.000000e+00, %8755 ], [ %8781, %8764 ]
  %8786 = phi float [ 0.000000e+00, %8755 ], [ %8782, %8764 ]
  %8787 = fmul fast float %8784, %7361
  %8788 = fmul fast float %8785, %7361
  %8789 = fmul fast float %8786, %7361
  %8790 = fmul fast float %8757, %8419
  %8791 = call float @dx.op.dot3.f32(i32 55, float %8757, float %8757, float %8757, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8792 = call float @dx.op.dot3.f32(i32 55, float %8787, float %8788, float %8789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8793 = select i1 %216, float %8791, float %8757
  %8794 = select i1 %216, float 1.000000e+00, float %8757
  %8795 = select i1 %216, float %8792, float %8787
  %8796 = select i1 %216, float 0.000000e+00, float %8788
  %8797 = select i1 %216, float 0.000000e+00, float %8789
  %8798 = fmul fast float %8793, %8431
  %8799 = fmul fast float %8793, %8432
  %8800 = fmul fast float %8794, %8433
  %8801 = fadd fast float %8798, %8795
  %8802 = fadd fast float %8799, %8796
  %8803 = fadd fast float %8797, %8800
  %8804 = fmul fast float %8793, %8434
  %8805 = fmul fast float %8793, %8435
  %8806 = fmul fast float %8794, %8436
  br label %8807

; <label>:8807                                    ; preds = %8783, %8440, %8409, %7641
  %8808 = phi float [ %7646, %7641 ], [ %8431, %8409 ], [ %8801, %8783 ], [ %8431, %8440 ]
  %8809 = phi float [ %7647, %7641 ], [ %8432, %8409 ], [ %8802, %8783 ], [ %8432, %8440 ]
  %8810 = phi float [ %7648, %7641 ], [ %8433, %8409 ], [ %8803, %8783 ], [ %8433, %8440 ]
  %8811 = phi float [ %7649, %7641 ], [ %8434, %8409 ], [ %8804, %8783 ], [ %8434, %8440 ]
  %8812 = phi float [ %7650, %7641 ], [ %8435, %8409 ], [ %8805, %8783 ], [ %8435, %8440 ]
  %8813 = phi float [ %7651, %7641 ], [ %8436, %8409 ], [ %8806, %8783 ], [ %8436, %8440 ]
  %8814 = phi float [ %7652, %7641 ], [ %8419, %8409 ], [ %8790, %8783 ], [ %8419, %8440 ]
  %8815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8816 = extractvalue %dx.types.CBufRet.f32 %8815, 2
  %8817 = extractvalue %dx.types.CBufRet.f32 %8815, 3
  %8818 = fmul fast float %8816, %92
  %8819 = fmul fast float %8817, %93
  %8820 = call float @dx.op.unary.f32(i32 7, float %8818)  ; Saturate(value)
  %8821 = call float @dx.op.unary.f32(i32 7, float %8819)  ; Saturate(value)
  %8822 = select i1 %7383, i32 2, i32 0
  %8823 = or i32 %8822, 1
  %8824 = uitofp i32 %8823 to float
  %8825 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8820, float %8821, float %8824, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8826 = extractvalue %dx.types.ResRet.f32 %8825, 0
  %8827 = extractvalue %dx.types.ResRet.f32 %8825, 1
  %8828 = extractvalue %dx.types.ResRet.f32 %8825, 2
  %8829 = extractvalue %dx.types.ResRet.f32 %8825, 3
  %8830 = add nuw nsw i32 %8822, 2
  %8831 = uitofp i32 %8830 to float
  %8832 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8820, float %8821, float %8831, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8833 = extractvalue %dx.types.ResRet.f32 %8832, 0
  %8834 = extractvalue %dx.types.ResRet.f32 %8832, 1
  %8835 = extractvalue %dx.types.ResRet.f32 %8832, 2
  %8836 = extractvalue %dx.types.ResRet.f32 %8832, 3
  %8837 = call float @dx.op.binary.f32(i32 35, float %8827, float %8828)  ; FMax(a,b)
  %8838 = call float @dx.op.binary.f32(i32 35, float %8826, float %8837)  ; FMax(a,b)
  %8839 = call float @dx.op.binary.f32(i32 35, float %8838, float %8829)  ; FMax(a,b)
  %8840 = call float @dx.op.binary.f32(i32 36, float %8834, float %8835)  ; FMin(a,b)
  %8841 = call float @dx.op.binary.f32(i32 36, float %8833, float %8840)  ; FMin(a,b)
  %8842 = call float @dx.op.binary.f32(i32 36, float %8841, float %8836)  ; FMin(a,b)
  %8843 = fmul fast float %8839, 2.550000e+02
  %8844 = fadd fast float %8843, 0x3F70101020000000
  %8845 = fptoui float %8844 to i32
  %8846 = fmul fast float %8842, 2.550000e+02
  %8847 = fadd fast float %8846, 0x3F70101020000000
  %8848 = fptoui float %8847 to i32
  %8849 = icmp ult i32 %8845, %8848
  br i1 %8849, label %8850, label %9019

; <label>:8850                                    ; preds = %8807
  %8851 = fcmp fast ogt float %79, 9.843750e-01
  %8852 = fadd fast float %7645, -4.000000e+00
  %8853 = select i1 %8851, float -4.000000e+00, float %8852
  %8854 = call float @dx.op.binary.f32(i32 35, float %8853, float 0.000000e+00)  ; FMax(a,b)
  %8855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8856 = extractvalue %dx.types.CBufRet.f32 %8855, 0
  %8857 = fadd fast float %8856, %8854
  %8858 = extractvalue %dx.types.CBufRet.f32 %8855, 2
  %8859 = fmul fast float %8857, %8858
  %8860 = call float @dx.op.unary.f32(i32 23, float %8859)  ; Log(value)
  %8861 = extractvalue %dx.types.CBufRet.f32 %8855, 3
  %8862 = fmul fast float %8861, %8860
  %8863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8864 = extractvalue %dx.types.CBufRet.f32 %8863, 2
  %8865 = fmul fast float %8862, %8864
  %8866 = call float @dx.op.unary.f32(i32 7, float %8865)  ; Saturate(value)
  %8867 = uitofp i32 %8845 to float
  %8868 = uitofp i32 %8848 to float
  %8869 = fadd fast float %8867, 5.000000e-01
  %8870 = fadd fast float %8868, 5.000000e-01
  %8871 = fmul fast float %8864, %8869
  %8872 = fmul fast float %8864, %8870
  %8873 = fadd fast float %8871, 0x3F0FFB4800000000
  %8874 = fadd fast float %8872, 0xBF0FFB4800000000
  %8875 = call float @dx.op.binary.f32(i32 35, float %8866, float %8873)  ; FMax(a,b)
  %8876 = call float @dx.op.binary.f32(i32 36, float %8875, float %8874)  ; FMin(a,b)
  %8877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8878 = extractvalue %dx.types.CBufRet.f32 %8877, 1
  %8879 = extractvalue %dx.types.CBufRet.f32 %8877, 2
  %8880 = extractvalue %dx.types.CBufRet.f32 %8877, 0
  %8881 = select i1 %7383, float %8880, float 0.000000e+00
  %8882 = fmul fast float %8878, %8876
  %8883 = fadd fast float %8881, %8882
  %8884 = fadd fast float %8881, %8879
  %8885 = fsub fast float %8878, %8879
  %8886 = fadd fast float %8885, %8881
  %8887 = call float @dx.op.binary.f32(i32 35, float %8883, float %8884)  ; FMax(a,b)
  %8888 = call float @dx.op.binary.f32(i32 36, float %8887, float %8886)  ; FMin(a,b)
  %8889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %8820, float %8821, float %8888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8890 = extractvalue %dx.types.ResRet.f32 %8889, 0
  %8891 = extractvalue %dx.types.ResRet.f32 %8889, 1
  %8892 = extractvalue %dx.types.ResRet.f32 %8889, 2
  %8893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8894 = extractvalue %dx.types.CBufRet.i32 %8893, 0
  %8895 = extractvalue %dx.types.CBufRet.i32 %8893, 1
  %8896 = uitofp i32 %8894 to float
  %8897 = uitofp i32 %8895 to float
  %8898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8899 = extractvalue %dx.types.CBufRet.f32 %8898, 0
  %8900 = extractvalue %dx.types.CBufRet.f32 %8898, 1
  %8901 = fmul fast float %8896, %8820
  %8902 = fmul fast float %8897, %8821
  %8903 = fadd fast float %8901, -5.000000e-01
  %8904 = fadd fast float %8902, -5.000000e-01
  %8905 = call float @dx.op.unary.f32(i32 22, float %8903)  ; Frc(value)
  %8906 = call float @dx.op.unary.f32(i32 22, float %8904)  ; Frc(value)
  %8907 = fmul fast float %8905, %8905
  %8908 = fmul fast float %8907, %8905
  %8909 = fsub fast float 3.000000e+00, %8905
  %8910 = fmul fast float %8907, %8909
  %8911 = fmul fast float %8905, 3.000000e+00
  %8912 = fmul fast float %8908, 3.000000e+00
  %8913 = fmul fast float %8907, 6.000000e+00
  %8914 = fsub fast float %8912, %8913
  %8915 = fadd fast float %8914, 4.000000e+00
  %8916 = fmul fast float %8915, 0x3FC5555560000000
  %8917 = fmul fast float %8908, -3.000000e+00
  %8918 = fadd fast float %8907, %8905
  %8919 = fmul fast float %8918, 3.000000e+00
  %8920 = fadd fast float %8917, 1.000000e+00
  %8921 = fadd fast float %8920, %8919
  %8922 = fmul fast float %8908, 0x3FC5555560000000
  %8923 = fmul fast float %8906, %8906
  %8924 = fmul fast float %8923, %8906
  %8925 = fsub fast float 3.000000e+00, %8906
  %8926 = fmul fast float %8923, %8925
  %8927 = fmul fast float %8906, 3.000000e+00
  %8928 = fmul fast float %8924, 3.000000e+00
  %8929 = fmul fast float %8923, 6.000000e+00
  %8930 = fsub fast float %8928, %8929
  %8931 = fadd fast float %8930, 4.000000e+00
  %8932 = fmul fast float %8931, 0x3FC5555560000000
  %8933 = fmul fast float %8924, -3.000000e+00
  %8934 = fadd fast float %8923, %8906
  %8935 = fmul fast float %8934, 3.000000e+00
  %8936 = fadd fast float %8933, 1.000000e+00
  %8937 = fadd fast float %8936, %8935
  %8938 = fmul fast float %8924, 0x3FC5555560000000
  %8939 = fadd fast float %8905, 1.000000e+00
  %8940 = fsub fast float 1.000000e+00, %8911
  %8941 = fadd fast float %8940, %8910
  %8942 = fadd fast float %8941, %8915
  %8943 = fmul fast float %8942, 0x3FC5555560000000
  %8944 = fdiv fast float %8916, %8943
  %8945 = fsub fast float %8939, %8944
  %8946 = fsub fast float 1.000000e+00, %8905
  %8947 = fadd fast float %8921, %8908
  %8948 = fmul fast float %8947, 0x3FC5555560000000
  %8949 = fdiv fast float %8922, %8948
  %8950 = fadd fast float %8946, %8949
  %8951 = fadd fast float %8906, 1.000000e+00
  %8952 = fsub fast float 1.000000e+00, %8927
  %8953 = fadd fast float %8952, %8926
  %8954 = fadd fast float %8953, %8931
  %8955 = fmul fast float %8954, 0x3FC5555560000000
  %8956 = fdiv fast float %8932, %8955
  %8957 = fsub fast float %8951, %8956
  %8958 = fsub fast float 1.000000e+00, %8906
  %8959 = fadd fast float %8937, %8924
  %8960 = fmul fast float %8959, 0x3FC5555560000000
  %8961 = fdiv fast float %8938, %8960
  %8962 = fadd fast float %8961, %8958
  %8963 = fmul fast float %8945, %8899
  %8964 = fsub fast float %8820, %8963
  %8965 = fmul fast float %8950, %8899
  %8966 = fadd fast float %8965, %8820
  %8967 = fmul fast float %8962, %8900
  %8968 = fadd fast float %8967, %8821
  %8969 = fmul fast float %8957, %8900
  %8970 = fsub fast float %8821, %8969
  %8971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8964, float %8970, float %8888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8972 = extractvalue %dx.types.ResRet.f32 %8971, 0
  %8973 = extractvalue %dx.types.ResRet.f32 %8971, 1
  %8974 = extractvalue %dx.types.ResRet.f32 %8971, 2
  %8975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8966, float %8970, float %8888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8976 = extractvalue %dx.types.ResRet.f32 %8975, 0
  %8977 = extractvalue %dx.types.ResRet.f32 %8975, 1
  %8978 = extractvalue %dx.types.ResRet.f32 %8975, 2
  %8979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8964, float %8968, float %8888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8980 = extractvalue %dx.types.ResRet.f32 %8979, 0
  %8981 = extractvalue %dx.types.ResRet.f32 %8979, 1
  %8982 = extractvalue %dx.types.ResRet.f32 %8979, 2
  %8983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8966, float %8968, float %8888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8984 = extractvalue %dx.types.ResRet.f32 %8983, 0
  %8985 = extractvalue %dx.types.ResRet.f32 %8983, 1
  %8986 = extractvalue %dx.types.ResRet.f32 %8983, 2
  %8987 = fsub fast float %8980, %8972
  %8988 = fsub fast float %8981, %8973
  %8989 = fsub fast float %8982, %8974
  %8990 = fmul fast float %8987, %8960
  %8991 = fmul fast float %8988, %8960
  %8992 = fmul fast float %8989, %8960
  %8993 = fadd fast float %8990, %8972
  %8994 = fadd fast float %8991, %8973
  %8995 = fadd fast float %8992, %8974
  %8996 = fsub fast float %8984, %8976
  %8997 = fsub fast float %8985, %8977
  %8998 = fsub fast float %8986, %8978
  %8999 = fmul fast float %8996, %8960
  %9000 = fmul fast float %8997, %8960
  %9001 = fmul fast float %8998, %8960
  %9002 = fsub fast float %8976, %8993
  %9003 = fadd fast float %9002, %8999
  %9004 = fsub fast float %8977, %8994
  %9005 = fadd fast float %9004, %9000
  %9006 = fsub fast float %8978, %8995
  %9007 = fadd fast float %9006, %9001
  %9008 = fmul fast float %9003, %8948
  %9009 = fmul fast float %9005, %8948
  %9010 = fmul fast float %9007, %8948
  %9011 = fadd fast float %9008, %8993
  %9012 = fadd fast float %9009, %8994
  %9013 = fadd fast float %9010, %8995
  %9014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9015 = extractvalue %dx.types.CBufRet.f32 %9014, 1
  %9016 = fmul fast float %9011, %9015
  %9017 = fmul fast float %9012, %9015
  %9018 = fmul fast float %9013, %9015
  br label %9019

; <label>:9019                                    ; preds = %8850, %8807
  %9020 = phi float [ %8890, %8850 ], [ 1.000000e+00, %8807 ]
  %9021 = phi float [ %8891, %8850 ], [ 1.000000e+00, %8807 ]
  %9022 = phi float [ %8892, %8850 ], [ 1.000000e+00, %8807 ]
  %9023 = phi float [ %9016, %8850 ], [ 0.000000e+00, %8807 ]
  %9024 = phi float [ %9017, %8850 ], [ 0.000000e+00, %8807 ]
  %9025 = phi float [ %9018, %8850 ], [ 0.000000e+00, %8807 ]
  %9026 = fmul fast float %9023, %7361
  %9027 = fmul fast float %9024, %7361
  %9028 = fmul fast float %9025, %7361
  %9029 = fmul fast float %9020, %8814
  %9030 = call float @dx.op.dot3.f32(i32 55, float %9020, float %9021, float %9022, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9031 = call float @dx.op.dot3.f32(i32 55, float %9026, float %9027, float %9028, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9032 = select i1 %216, float %9030, float %9020
  %9033 = select i1 %216, float %9030, float %9021
  %9034 = select i1 %216, float 1.000000e+00, float %9022
  %9035 = select i1 %216, float %9031, float %9026
  %9036 = select i1 %216, float 0.000000e+00, float %9027
  %9037 = select i1 %216, float 0.000000e+00, float %9028
  %9038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9039 = extractvalue %dx.types.CBufRet.i32 %9038, 3
  %9040 = and i32 %9039, 3
  %9041 = icmp ne i32 %9040, 0
  %9042 = and i32 %9039, 4
  %9043 = icmp ne i32 %9042, 0
  %9044 = and i1 %9041, %9043
  %9045 = and i1 %216, %9044
  br i1 %9045, label %9046, label %9052

; <label>:9046                                    ; preds = %9019
  %9047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9048 = extractvalue %dx.types.CBufRet.f32 %9047, 1
  %9049 = fadd fast float %9029, -1.000000e+00
  %9050 = fmul fast float %9048, %9049
  %9051 = fadd fast float %9050, 1.000000e+00
  br label %9052

; <label>:9052                                    ; preds = %9046, %9019
  %9053 = phi float [ %9051, %9046 ], [ %9029, %9019 ]
  %9054 = fadd fast float %8811, %8808
  %9055 = fmul fast float %9032, %9054
  %9056 = fadd fast float %9055, %9035
  %9057 = fadd fast float %8812, %8809
  %9058 = fmul fast float %9033, %9057
  %9059 = fadd fast float %9058, %9036
  %9060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9061 = extractvalue %dx.types.CBufRet.f32 %9060, 0
  br i1 %216, label %9062, label %9085

; <label>:9062                                    ; preds = %9052
  %9063 = fadd fast float %9056, %9059
  %9064 = fmul fast float %9061, %9063
  %9065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9066 = extractvalue %dx.types.CBufRet.f32 %9065, 3
  %9067 = extractvalue %dx.types.CBufRet.f32 %7365, 1
  %9068 = fsub fast float %7370, %7364
  %9069 = fadd fast float %9068, %7371
  %9070 = fsub fast float %9069, %9067
  %9071 = extractvalue %dx.types.CBufRet.f32 %7365, 2
  %9072 = fmul fast float %9070, %9071
  %9073 = call float @dx.op.unary.f32(i32 7, float %9072)  ; Saturate(value)
  %9074 = fsub fast float %9073, %9066
  %9075 = fmul fast float %9074, %9053
  %9076 = fadd fast float %9075, %9066
  %9077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9078 = extractvalue %dx.types.CBufRet.f32 %9077, 0
  %9079 = fsub fast float %9076, %9078
  %9080 = fmul fast float %9079, 1.000000e+01
  %9081 = call float @dx.op.unary.f32(i32 7, float %9080)  ; Saturate(value)
  %9082 = fmul fast float %9081, %7361
  %9083 = fsub fast float %7361, %9082
  %9084 = fmul fast float %9083, %9076
  br label %9109

; <label>:9085                                    ; preds = %9052
  %9086 = fadd fast float %8813, %8810
  %9087 = fmul fast float %9034, %9086
  %9088 = fadd fast float %9087, %9037
  %9089 = fmul fast float %9061, %9056
  %9090 = fmul fast float %9061, %9059
  %9091 = fmul fast float %9061, %9088
  %9092 = call float @dx.op.binary.f32(i32 35, float %9090, float %9091)  ; FMax(a,b)
  %9093 = call float @dx.op.binary.f32(i32 35, float %9089, float %9092)  ; FMax(a,b)
  %9094 = call float @dx.op.binary.f32(i32 35, float %9093, float %7361)  ; FMax(a,b)
  %9095 = fcmp fast ugt float %9094, 0x3F10000000000000
  br i1 %9095, label %9097, label %9096

; <label>:9096                                    ; preds = %9085
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9097

; <label>:9097                                    ; preds = %9096, %9085
  %9098 = add i32 %48, 356
  %9099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %9098, i32 undef)  ; BufferLoad(srv,index,wot)
  %9100 = extractvalue %dx.types.ResRet.i32 %9099, 0
  %9101 = and i32 %9100, 32
  %9102 = icmp eq i32 %9101, 0
  br i1 %9102, label %9109, label %9103

; <label>:9103                                    ; preds = %9097
  %9104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9105 = extractvalue %dx.types.CBufRet.f32 %9104, 0
  %9106 = fmul fast float %9105, 0x3FE99999A0000000
  %9107 = fadd fast float %9105, %9089
  %9108 = fadd fast float %9106, %9091
  br label %9109

; <label>:9109                                    ; preds = %9103, %9097, %9062
  %9110 = phi float [ %9064, %9062 ], [ %9107, %9103 ], [ %9089, %9097 ]
  %9111 = phi float [ %9084, %9062 ], [ %9090, %9103 ], [ %9090, %9097 ]
  %9112 = phi float [ %9083, %9062 ], [ %9108, %9103 ], [ %9091, %9097 ]
  %9113 = phi float [ %9083, %9062 ], [ %7361, %9103 ], [ %7361, %9097 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9114 = call float @dx.op.binary.f32(i32 36, float %9110, float 3.225500e+04)  ; FMin(a,b)
  %9115 = call float @dx.op.binary.f32(i32 36, float %9111, float 3.225500e+04)  ; FMin(a,b)
  %9116 = call float @dx.op.binary.f32(i32 36, float %9112, float 3.225500e+04)  ; FMin(a,b)
  %9117 = call float @dx.op.binary.f32(i32 36, float %9113, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9114)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9115)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9116)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9117)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!61 = !{[42 x i32] [i32 40, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!62 = !{void ()* @ps_main, !"ps_main", !63, !4, !83}
!63 = !{!64, !81, null}
!64 = !{!65, !68, !69, !71, !73, !74, !75, !76, !77, !78, !80}
!65 = !{i32 0, !"SV_Position", i8 9, i8 3, !66, i8 4, i32 1, i8 4, i32 0, i8 0, !67}
!66 = !{i32 0}
!67 = !{i32 3, i32 15}
!68 = !{i32 1, !"COLOR", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 1, i8 0, !67}
!69 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 2, i8 0, !70}
!70 = !{i32 3, i32 3}
!71 = !{i32 3, !"NORMAL", i8 9, i8 0, !66, i8 2, i32 1, i8 3, i32 3, i8 0, !72}
!72 = !{i32 3, i32 7}
!73 = !{i32 4, !"TANGENT", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 4, i8 0, !67}
!74 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !66, i8 2, i32 1, i8 3, i32 5, i8 0, !72}
!75 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!76 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !66, i8 2, i32 1, i8 2, i32 7, i8 0, !70}
!77 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !66, i8 2, i32 1, i8 4, i32 8, i8 0, !67}
!78 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !66, i8 1, i32 1, i8 4, i32 9, i8 0, !79}
!79 = !{i32 3, i32 13}
!80 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !66, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!81 = !{!82}
!82 = !{i32 0, !"SV_Target", i8 9, i8 16, !66, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!83 = !{i32 0, i64 16}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = !{!93, !93, i64 0}
!93 = !{!"int", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !{!97, !99, !101, !103}
!97 = distinct !{!97, !98, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!98 = distinct !{!98, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!99 = distinct !{!99, !100, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!100 = distinct !{!100, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!101 = distinct !{!101, !102, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!102 = distinct !{!102, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!103 = distinct !{!103, !104, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!104 = distinct !{!104, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = !{!107, !107, i64 0}
!107 = !{!"float", !94, i64 0}
!108 = distinct !{!108, !86}
!109 = distinct !{!109, !86}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = distinct !{!112, !"dx.controlflow.hints", i32 1}
!113 = distinct !{!113, !"dx.controlflow.hints", i32 1}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = !{!118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!118 = distinct !{!118, !119, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!119 = distinct !{!119, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!120 = distinct !{!120, !121, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!121 = distinct !{!121, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!122 = distinct !{!122, !121, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!123 = distinct !{!123, !124, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!124 = distinct !{!124, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!125 = distinct !{!125, !124, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!126 = distinct !{!126, !124, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!127 = distinct !{!127, !128, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!128 = distinct !{!128, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!129 = distinct !{!129, !128, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!130 = distinct !{!130, !128, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!131 = distinct !{!131, !132, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!132 = distinct !{!132, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"\01?sort@@YAXAIAM00@Z: %c"}
!135 = distinct !{!135, !"\01?sort@@YAXAIAM00@Z"}
!136 = !{!137, !138, !118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!137 = distinct !{!137, !135, !"\01?sort@@YAXAIAM00@Z: %a"}
!138 = distinct !{!138, !135, !"\01?sort@@YAXAIAM00@Z: %b"}
!139 = !{!138}
!140 = !{!137, !134, !118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!141 = !{!137}
!142 = !{!138, !134, !118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!143 = !{!144}
!144 = distinct !{!144, !145, !"\01?sort@@YAXAIAM00@Z: %c"}
!145 = distinct !{!145, !"\01?sort@@YAXAIAM00@Z"}
!146 = !{!147, !148, !118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!147 = distinct !{!147, !145, !"\01?sort@@YAXAIAM00@Z: %a"}
!148 = distinct !{!148, !145, !"\01?sort@@YAXAIAM00@Z: %b"}
!149 = !{!148}
!150 = !{!147, !144, !118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!151 = !{!147}
!152 = !{!148, !144, !118, !120, !122, !123, !125, !126, !127, !129, !130, !131}
!153 = distinct !{!153, !"dx.controlflow.hints", i32 1}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 2}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}

