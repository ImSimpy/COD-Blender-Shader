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
; shader hash: 1f76abffe46604b76ee7da61b3df2998
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
; Number of inputs: 44, outputs: 4
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
  %157 = fmul fast float %99, 5.000000e-01
  %158 = fmul fast float %100, 5.000000e-01
  %159 = fptosi float %157 to i32
  %160 = fptosi float %158 to i32
  %161 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %159, i32 %160, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = lshr i32 %162, 18
  %164 = uitofp i32 %163 to float
  %165 = fmul fast float %164, 0x3F4C00EBA0000000
  %166 = call float @dx.op.unary.f32(i32 21, float %165)  ; Exp(value)
  %167 = fadd fast float %166, -1.000000e+00
  %168 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %20, i32 0)  ; GetDimensions(handle,mipLevel)
  %169 = extractvalue %dx.types.Dimensions %168, 0
  %170 = sitofp i32 %169 to float
  %171 = extractvalue %dx.types.Dimensions %168, 1
  %172 = sitofp i32 %171 to float
  %173 = fcmp fast oge float %157, %170
  %174 = fcmp fast oge float %158, %172
  %175 = or i1 %173, %174
  %176 = select i1 %175, float 0x4197782600000000, float %167
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 2
  %179 = extractvalue %dx.types.CBufRet.f32 %177, 3
  %180 = fmul fast float %178, %99
  %181 = fmul fast float %179, %100
  %182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = and i32 %183, 114688
  %185 = icmp ne i32 %184, 0
  %186 = select i1 %185, float %180, float 0.000000e+00
  %187 = select i1 %185, float %181, float 0.000000e+00
  %188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %45, float %186, float %187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = fmul fast float %189, 2.550000e+02
  %191 = fptoui float %190 to i32
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.i32 %193, 3
  %195 = and i32 %194, 3
  %196 = icmp ne i32 %195, 0
  %197 = and i32 %194, 4
  %198 = icmp ne i32 %197, 0
  %199 = and i1 %196, %198
  br i1 %199, label %200, label %211

; <label>:200                                     ; preds = %0
  %201 = extractvalue %dx.types.CBufRet.f32 %192, 3
  %202 = fmul fast float %201, %100
  %203 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %204 = fmul fast float %203, %99
  %205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %44, float %204, float %202, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fsub fast float 1.000000e+00, %206
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %210 = fcmp fast olt float %207, %209
  br label %214

; <label>:211                                     ; preds = %0
  %212 = icmp eq i32 %197, 0
  %213 = and i1 %196, %212
  br label %214

; <label>:214                                     ; preds = %211, %200
  %215 = phi i1 [ %210, %200 ], [ %213, %211 ]
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %218 = fmul fast float %217, 0x3FE3C6EF40000000
  %219 = frem fast float %99, 2.560000e+02
  %220 = frem fast float %100, 2.560000e+02
  %221 = fptoui float %219 to i32
  %222 = fptoui float %220 to i32
  %223 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %221, i32 %222, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = extractvalue %dx.types.ResRet.f32 %223, 1
  %226 = fadd fast float %224, %218
  %227 = fadd fast float %225, %218
  %228 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %229 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %230 = add i32 %50, 156
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = shl i32 %232, 4
  %234 = and i32 %233, 32752
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %232, 7
  %237 = and i32 %236, 32752
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %232, 22
  %240 = shl nuw nsw i32 %239, 5
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = add i32 %50, 216
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F70101020000000
  %248 = lshr i32 %244, 8
  %249 = and i32 %248, 255
  %250 = uitofp i32 %249 to float
  %251 = fmul fast float %250, 0x3F70101020000000
  %252 = lshr i32 %244, 16
  %253 = and i32 %252, 255
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F70101020000000
  %256 = add i32 %50, 36
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 65535
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %258, 16
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = add i32 %50, 288
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = and i32 %265, 65535
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %265, 16
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = fmul fast float %267, 0x3F50624DE0000000
  %271 = fmul fast float %269, 0x3F50624DE0000000
  %272 = add i32 %50, 172
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = shl i32 %274, 4
  %276 = and i32 %275, 32752
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %274, 7
  %279 = and i32 %278, 32752
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %274, 22
  %282 = shl nuw nsw i32 %281, 5
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = add i32 %50, 232
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 255
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %288, 0x3F70101020000000
  %290 = lshr i32 %286, 8
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = lshr i32 %286, 16
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = add i32 %50, 52
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 65535
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %300, 16
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = add i32 %50, 304
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = and i32 %307, 65535
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %307, 16
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = fmul fast float %309, 0x3F50624DE0000000
  %313 = fmul fast float %311, 0x3F50624DE0000000
  %314 = add i32 %50, 188
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = shl i32 %316, 4
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %316, 7
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %316, 22
  %324 = shl nuw nsw i32 %323, 5
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %50, 248
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 255
  %330 = uitofp i32 %329 to float
  %331 = fmul fast float %330, 0x3F70101020000000
  %332 = lshr i32 %328, 8
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = lshr i32 %328, 16
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = add i32 %50, 68
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 65535
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = lshr i32 %342, 16
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = add i32 %50, 320
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = fmul fast float %351, 0x3F50624DE0000000
  %355 = fmul fast float %353, 0x3F50624DE0000000
  %356 = add i32 %50, 204
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = shl i32 %358, 4
  %360 = and i32 %359, 32752
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %358, 7
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %358, 22
  %366 = shl nuw nsw i32 %365, 5
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = add i32 %50, 264
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 255
  %372 = uitofp i32 %371 to float
  %373 = fmul fast float %372, 0x3F70101020000000
  %374 = lshr i32 %370, 8
  %375 = and i32 %374, 255
  %376 = uitofp i32 %375 to float
  %377 = fmul fast float %376, 0x3F70101020000000
  %378 = lshr i32 %370, 16
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = add i32 %50, 84
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 65535
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = lshr i32 %384, 16
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = add i32 %50, 336
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = and i32 %391, 65535
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %391, 16
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = fmul fast float %393, 0x3F50624DE0000000
  %397 = fmul fast float %395, 0x3F50624DE0000000
  %398 = add i32 %50, 348
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 32
  %402 = icmp eq i32 %401, 0
  %403 = and i32 %400, 64
  %404 = icmp eq i32 %403, 0
  %405 = and i32 %400, 128
  %406 = icmp eq i32 %405, 0
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = and i32 %408, 2
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %426, label %411

; <label>:411                                     ; preds = %214
  %412 = add i32 %50, 472
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = add i32 %414, 0
  %416 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %415, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %417 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %416, %dx.types.Handle %96, float %78, float %79, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %418 = extractvalue %dx.types.ResRet.f32 %417, 0
  %419 = extractvalue %dx.types.ResRet.f32 %417, 1
  %420 = extractvalue %dx.types.ResRet.f32 %417, 2
  %421 = extractvalue %dx.types.ResRet.f32 %417, 3
  %422 = fmul fast float %421, %80
  %423 = fmul fast float %418, %81
  %424 = fmul fast float %419, %82
  %425 = fmul fast float %420, %83
  br label %426

; <label>:426                                     ; preds = %411, %214
  %427 = phi float [ %83, %214 ], [ %425, %411 ]
  %428 = phi float [ %82, %214 ], [ %424, %411 ]
  %429 = phi float [ %81, %214 ], [ %423, %411 ]
  %430 = phi float [ %80, %214 ], [ %422, %411 ]
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 2
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %454, label %435

; <label>:435                                     ; preds = %426
  %436 = add i32 %50, 44
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 1
  %440 = icmp ne i32 %439, 0
  %441 = select i1 %440, float %429, float 1.000000e+00
  %442 = add i32 %50, 60
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 1
  %446 = icmp ne i32 %445, 0
  %447 = select i1 %446, float %428, float 1.000000e+00
  %448 = add i32 %50, 76
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 1
  %452 = icmp ne i32 %451, 0
  %453 = select i1 %452, float %427, float 1.000000e+00
  br label %454

; <label>:454                                     ; preds = %435, %426
  %455 = phi float [ %427, %426 ], [ %453, %435 ]
  %456 = phi float [ %428, %426 ], [ %447, %435 ]
  %457 = phi float [ %429, %426 ], [ %441, %435 ]
  %458 = lshr i32 %432, 20
  %459 = and i32 %458, 3
  %460 = add nuw nsw i32 %459, 1
  %461 = add i32 %50, 24
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = add i32 %50, 28
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = or i32 %466, %463
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %1171, label %469

; <label>:469                                     ; preds = %454
  %470 = and i32 %463, 262144
  %471 = icmp ne i32 %470, 0
  %472 = select i1 %471, float %53, float 1.000000e+00
  %473 = select i1 %471, float %54, float 0.000000e+00
  %474 = select i1 %471, float %55, float 0.000000e+00
  %475 = select i1 %471, float %56, float 1.000000e+00
  %476 = select i1 %471, float %57, float %78
  %477 = select i1 %471, float %58, float %79
  %478 = add i32 %50, 284
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = lshr i32 %480, 16
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = fmul fast float %482, 0x3F50624DE0000000
  %484 = add i32 %50, 88
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %486, 16
  %488 = and i32 %487, 255
  %489 = lshr i32 %486, 24
  %490 = add i32 %50, 292
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = and i32 %492, 65535
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = lshr i32 %492, 16
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = add i32 %50, 32
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = lshr i32 %499, 22
  %501 = shl nuw nsw i32 %500, 5
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = shl i32 %499, 4
  %504 = and i32 %503, 32752
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = lshr i32 %499, 7
  %507 = and i32 %506, 32752
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 3
  %511 = fmul fast float %510, 1.000000e+03
  %512 = fmul fast float %270, %511
  %513 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %514 = fadd fast float %513, %260
  %515 = fmul fast float %271, %511
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = fadd fast float %516, %262
  %518 = fmul fast float %483, %511
  %519 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %520 = fmul fast float %519, 0x401921FB60000000
  %521 = fadd fast float %520, %502
  %522 = call float @dx.op.unary.f32(i32 13, float %521)  ; Sin(value)
  %523 = call float @dx.op.unary.f32(i32 12, float %521)  ; Cos(value)
  %524 = fsub fast float -0.000000e+00, %522
  %525 = fadd fast float %476, -5.000000e-01
  %526 = fadd fast float %477, -5.000000e-01
  %527 = fmul fast float %494, %525
  %528 = fmul fast float %496, %526
  %529 = fadd fast float %527, 5.000000e-01
  %530 = fadd fast float %528, 5.000000e-01
  %531 = fmul fast float %505, %529
  %532 = fmul fast float %508, %530
  %533 = fmul fast float %523, %531
  %534 = call float @dx.op.tertiary.f32(i32 46, float %524, float %532, float %533)  ; FMad(a,b,c)
  %535 = fmul fast float %522, %531
  %536 = call float @dx.op.tertiary.f32(i32 46, float %523, float %532, float %535)  ; FMad(a,b,c)
  %537 = fadd fast float %514, %534
  %538 = fadd fast float %517, %536
  %539 = icmp ugt i32 %488, 1
  %540 = icmp ugt i32 %486, 33554431
  %541 = or i1 %540, %539
  br i1 %541, label %542, label %567

; <label>:542                                     ; preds = %469
  %543 = add i32 %50, 228
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = lshr i32 %545, 16
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = fmul fast float %510, %547
  %549 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %550 = mul nuw nsw i32 %488, %489
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %549, %551
  %553 = call float @dx.op.unary.f32(i32 27, float %552)  ; Round_ni(value)
  %554 = fptoui float %553 to i32
  %555 = urem i32 %554, %488
  %556 = udiv i32 %554, %489
  %557 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %558 = call float @dx.op.unary.f32(i32 22, float %538)  ; Frc(value)
  %559 = uitofp i32 %555 to float
  %560 = uitofp i32 %556 to float
  %561 = fadd fast float %557, %559
  %562 = fadd fast float %558, %560
  %563 = uitofp i32 %488 to float
  %564 = uitofp i32 %489 to float
  %565 = fdiv fast float %561, %563
  %566 = fdiv fast float %562, %564
  br label %567

; <label>:567                                     ; preds = %542, %469
  %568 = phi float [ %565, %542 ], [ %537, %469 ]
  %569 = phi float [ %566, %542 ], [ %538, %469 ]
  %570 = and i32 %463, 16777216
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %681, label %572

; <label>:572                                     ; preds = %567
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 0
  %575 = extractvalue %dx.types.CBufRet.f32 %573, 1
  %576 = extractvalue %dx.types.CBufRet.f32 %573, 2
  %577 = fadd fast float %574, %154
  %578 = fadd fast float %575, %155
  %579 = fadd fast float %576, %156
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 0
  %582 = call float @dx.op.unary.f32(i32 7, float %581)  ; Saturate(value)
  %583 = icmp eq i32 %51, 65535
  br i1 %583, label %678, label %584

; <label>:584                                     ; preds = %572
  %585 = lshr i32 %51, 1
  %586 = shl i32 %585, 2
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %51, 1
  %590 = icmp ne i32 %589, 0
  %591 = lshr i32 %588, 16
  %592 = and i32 %588, 65535
  %593 = select i1 %590, i32 %591, i32 %592
  %594 = icmp eq i32 %593, 65535
  br i1 %594, label %674, label %595

; <label>:595                                     ; preds = %584
  %596 = mul nuw nsw i32 %593, 40
  %597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = extractvalue %dx.types.ResRet.f32 %597, 2
  %601 = add nuw nsw i32 %596, 12
  %602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = add nuw nsw i32 %596, 24
  %607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = extractvalue %dx.types.ResRet.f32 %607, 1
  %610 = extractvalue %dx.types.ResRet.f32 %607, 2
  %611 = add nuw nsw i32 %596, 36
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = fsub fast float %577, %598
  %615 = fsub fast float %578, %599
  %616 = fsub fast float %579, %600
  %617 = fmul fast float %613, %614
  %618 = fmul fast float %613, %615
  %619 = fmul fast float %613, %616
  %620 = call float @dx.op.unary.f32(i32 27, float %617)  ; Round_ni(value)
  %621 = call float @dx.op.unary.f32(i32 27, float %618)  ; Round_ni(value)
  %622 = call float @dx.op.unary.f32(i32 27, float %619)  ; Round_ni(value)
  %623 = fadd fast float %620, 5.000000e-01
  %624 = fadd fast float %621, 5.000000e-01
  %625 = fadd fast float %622, 5.000000e-01
  %626 = fmul fast float %623, %603
  %627 = fmul fast float %624, %604
  %628 = fmul fast float %625, %605
  %629 = shl i32 %51, 2
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = add i32 %631, 0
  %633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %632, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %634 = call float @dx.op.unary.f32(i32 22, float %626)  ; Frc(value)
  %635 = call float @dx.op.unary.f32(i32 22, float %627)  ; Frc(value)
  %636 = call float @dx.op.unary.f32(i32 22, float %628)  ; Frc(value)
  %637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %633, %dx.types.Handle %45, float %634, float %635, float %636, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  %641 = fmul fast float %638, 1.023000e+03
  %642 = fmul fast float %639, 1.023000e+03
  %643 = fmul fast float %640, 1.023000e+03
  %644 = fadd fast float %641, 5.000000e-01
  %645 = fadd fast float %642, 5.000000e-01
  %646 = fadd fast float %643, 5.000000e-01
  %647 = call float @dx.op.unary.f32(i32 27, float %644)  ; Round_ni(value)
  %648 = call float @dx.op.unary.f32(i32 27, float %645)  ; Round_ni(value)
  %649 = call float @dx.op.unary.f32(i32 27, float %646)  ; Round_ni(value)
  %650 = fsub fast float %617, %620
  %651 = fsub fast float %618, %621
  %652 = fsub fast float %619, %622
  %653 = fmul fast float %650, 7.500000e-01
  %654 = fmul fast float %651, 7.500000e-01
  %655 = fmul fast float %652, 7.500000e-01
  %656 = fadd fast float %620, 1.250000e-01
  %657 = fadd fast float %656, %653
  %658 = fadd fast float %657, %647
  %659 = fadd fast float %621, 1.250000e-01
  %660 = fadd fast float %659, %654
  %661 = fadd fast float %660, %648
  %662 = fadd fast float %622, 1.250000e-01
  %663 = fadd fast float %662, %655
  %664 = fadd fast float %663, %649
  %665 = fmul fast float %658, %608
  %666 = fmul fast float %661, %609
  %667 = fmul fast float %664, %610
  %668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %669 = extractvalue %dx.types.ResRet.i32 %668, 0
  %670 = add i32 %669, 0
  %671 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %670, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %672 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %671, %dx.types.Handle %43, float %665, float %666, float %667, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %673 = extractvalue %dx.types.ResRet.f32 %672, 0
  br label %674

; <label>:674                                     ; preds = %595, %584
  %675 = phi float [ %673, %595 ], [ -1.000000e+00, %584 ]
  %676 = fadd fast float %675, %582
  %677 = call float @dx.op.unary.f32(i32 7, float %676)  ; Saturate(value)
  br label %678

; <label>:678                                     ; preds = %674, %572
  %679 = phi float [ %677, %674 ], [ %582, %572 ]
  %680 = fmul fast float %679, %430
  br label %681

; <label>:681                                     ; preds = %678, %567
  %682 = phi float [ %680, %678 ], [ %430, %567 ]
  %683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %684 = extractvalue %dx.types.ResRet.i32 %683, 0
  %685 = and i32 %684, 256
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %733, label %687

; <label>:687                                     ; preds = %681
  %688 = add i32 %50, 424
  %689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.i32 %689, 0
  %691 = add i32 %690, 0
  %692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %691, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %693 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %692, %dx.types.Handle %96, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %694 = extractvalue %dx.types.ResRet.f32 %693, 0
  %695 = add i32 %50, 100
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = shl i32 %697, 4
  %699 = and i32 %698, 32752
  %700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %699)  ; LegacyF16ToF32(value)
  %701 = lshr i32 %697, 7
  %702 = and i32 %701, 32752
  %703 = call float @dx.op.legacyF16ToF32(i32 131, i32 %702)  ; LegacyF16ToF32(value)
  %704 = fsub fast float 1.000000e+00, %682
  %705 = call float @dx.op.binary.f32(i32 35, float %704, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %706 = bitcast float %682 to i32
  %707 = sitofp i32 %706 to float
  %708 = fadd fast float %707, 0xC1CFBF8940000000
  %709 = fmul fast float %703, %708
  %710 = fadd fast float %709, 0x41CFBF8940000000
  %711 = fptosi float %710 to i32
  %712 = bitcast i32 %711 to float
  %713 = bitcast float %705 to i32
  %714 = sitofp i32 %713 to float
  %715 = fadd fast float %714, 0xC1CFBF8940000000
  %716 = fmul fast float %715, %703
  %717 = fadd fast float %716, 0x41CFBF8940000000
  %718 = fptosi float %717 to i32
  %719 = bitcast i32 %718 to float
  %720 = fmul fast float %712, %700
  %721 = fmul fast float %719, %700
  %722 = fsub fast float %705, %720
  %723 = fadd fast float %721, %705
  %724 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  %725 = call float @dx.op.unary.f32(i32 7, float %723)  ; Saturate(value)
  %726 = fsub fast float %694, %724
  %727 = fsub fast float %725, %724
  %728 = bitcast float %727 to i32
  %729 = sub nsw i32 2129859010, %728
  %730 = bitcast i32 %729 to float
  %731 = fmul fast float %730, %726
  %732 = call float @dx.op.unary.f32(i32 7, float %731)  ; Saturate(value)
  br label %733

; <label>:733                                     ; preds = %687, %681
  %734 = phi float [ %732, %687 ], [ %682, %681 ]
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = and i32 %736, 128
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %755, label %739

; <label>:739                                     ; preds = %733
  %740 = add i32 %50, 408
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = add i32 %742, 0
  %744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %743, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %745 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %744, %dx.types.Handle %96, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 524288
  %750 = icmp ne i32 %749, 0
  %751 = fcmp fast ogt float %746, 0x3FE0101020000000
  %752 = select i1 %751, float 1.000000e+00, float 0.000000e+00
  %753 = select i1 %750, float %752, float %746
  %754 = fmul fast float %753, %734
  br label %755

; <label>:755                                     ; preds = %739, %733
  %756 = phi float [ %754, %739 ], [ %734, %733 ]
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = and i32 %758, 16
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %959, label %761

; <label>:761                                     ; preds = %755
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = add i32 %50, 360
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = add i32 %766, 0
  %768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %767, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %769 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %768, %dx.types.Handle %95, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %770 = extractvalue %dx.types.ResRet.f32 %769, 0
  %771 = extractvalue %dx.types.ResRet.f32 %769, 1
  %772 = extractvalue %dx.types.ResRet.f32 %769, 2
  %773 = extractvalue %dx.types.ResRet.f32 %769, 3
  %774 = and i32 %763, 255
  %775 = uitofp i32 %774 to float
  %776 = lshr i32 %763, 8
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %773, %775
  %780 = fadd fast float %779, %778
  %781 = fmul fast float %780, 0x3F70101000000000
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 512
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %794, label %786

; <label>:786                                     ; preds = %761
  %787 = add i32 %50, 440
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %789, 0
  %791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %791, %dx.types.Handle %96, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  br label %794

; <label>:794                                     ; preds = %786, %761
  %795 = phi float [ %793, %786 ], [ 1.000000e+00, %761 ]
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = and i32 %797, 33554432
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %906, label %800

; <label>:800                                     ; preds = %794
  %801 = add i32 %50, 224
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = and i32 %803, 65535
  %805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %804)  ; LegacyF16ToF32(value)
  %806 = lshr i32 %803, 16
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = add i32 %50, 228
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 65535
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = lshr i32 %814, 24
  %816 = uitofp i32 %815 to float
  %817 = fmul fast float %816, 0x3F70101020000000
  %818 = and i32 %814, 255
  %819 = uitofp i32 %818 to float
  %820 = fmul fast float %819, 0x3F70101020000000
  %821 = lshr i32 %814, 8
  %822 = and i32 %821, 255
  %823 = uitofp i32 %822 to float
  %824 = fmul fast float %823, 0x3F70101020000000
  %825 = lshr i32 %814, 16
  %826 = and i32 %825, 255
  %827 = uitofp i32 %826 to float
  %828 = fmul fast float %827, 0x3F70101020000000
  %829 = add i32 %50, 220
  %830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.i32 %830, 0
  %832 = lshr i32 %831, 24
  %833 = uitofp i32 %832 to float
  %834 = fmul fast float %833, 0x3F70101020000000
  %835 = and i32 %831, 255
  %836 = uitofp i32 %835 to float
  %837 = fmul fast float %836, 0x3F70101020000000
  %838 = lshr i32 %831, 8
  %839 = and i32 %838, 255
  %840 = uitofp i32 %839 to float
  %841 = fmul fast float %840, 0x3F70101020000000
  %842 = lshr i32 %831, 16
  %843 = and i32 %842, 255
  %844 = uitofp i32 %843 to float
  %845 = fmul fast float %844, 0x3F70101020000000
  %846 = bitcast float %770 to i32
  %847 = ashr i32 %846, 1
  %848 = sub nsw i32 1597463174, %847
  %849 = bitcast i32 %848 to float
  %850 = fmul fast float %770, 5.000000e-01
  %851 = fmul fast float %849, %849
  %852 = fmul fast float %851, %850
  %853 = fsub fast float 1.500000e+00, %852
  %854 = fmul fast float %849, %770
  %855 = fmul fast float %854, %853
  %856 = bitcast float %771 to i32
  %857 = ashr i32 %856, 1
  %858 = sub nsw i32 1597463174, %857
  %859 = bitcast i32 %858 to float
  %860 = fmul fast float %771, 5.000000e-01
  %861 = fmul fast float %859, %859
  %862 = fmul fast float %861, %860
  %863 = fsub fast float 1.500000e+00, %862
  %864 = fmul fast float %859, %771
  %865 = fmul fast float %864, %863
  %866 = bitcast float %772 to i32
  %867 = ashr i32 %866, 1
  %868 = sub nsw i32 1597463174, %867
  %869 = bitcast i32 %868 to float
  %870 = fmul fast float %772, 5.000000e-01
  %871 = fmul fast float %869, %869
  %872 = fmul fast float %871, %870
  %873 = fsub fast float 1.500000e+00, %872
  %874 = fmul fast float %869, %772
  %875 = fmul fast float %874, %873
  %876 = fsub fast float %855, %837
  %877 = fsub fast float %865, %841
  %878 = fsub fast float %875, %845
  %879 = fmul fast float %876, %805
  %880 = fmul fast float %877, %807
  %881 = fmul fast float %878, %812
  %882 = fadd fast float %879, %820
  %883 = fadd fast float %880, %824
  %884 = fadd fast float %881, %828
  %885 = call float @dx.op.unary.f32(i32 7, float %882)  ; Saturate(value)
  %886 = call float @dx.op.unary.f32(i32 7, float %883)  ; Saturate(value)
  %887 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %888 = fmul fast float %885, %885
  %889 = fmul fast float %886, %886
  %890 = fmul fast float %887, %887
  %891 = fsub fast float %888, %770
  %892 = fsub fast float %889, %771
  %893 = fsub fast float %890, %772
  %894 = fmul fast float %891, %795
  %895 = fmul fast float %892, %795
  %896 = fmul fast float %893, %795
  %897 = fadd fast float %894, %770
  %898 = fadd fast float %895, %771
  %899 = fadd fast float %896, %772
  %900 = fadd fast float %817, %781
  %901 = fsub fast float %900, %834
  %902 = call float @dx.op.unary.f32(i32 7, float %901)  ; Saturate(value)
  %903 = fsub fast float %902, %781
  %904 = fmul fast float %903, %795
  %905 = fadd fast float %904, %781
  br label %959

; <label>:906                                     ; preds = %794
  %907 = and i32 %797, 134217728
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %943, label %909

; <label>:909                                     ; preds = %906
  %910 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %911 = call float @dx.op.unary.f32(i32 24, float %251)  ; Sqrt(value)
  %912 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %913 = fadd fast float %910, -5.000000e-01
  %914 = fadd fast float %911, -5.000000e-01
  %915 = fadd fast float %912, -5.000000e-01
  %916 = fmul fast float %913, %795
  %917 = fmul fast float %914, %795
  %918 = fmul fast float %915, %795
  %919 = fadd fast float %916, 5.000000e-01
  %920 = fadd fast float %917, 5.000000e-01
  %921 = fadd fast float %918, 5.000000e-01
  %922 = call float @dx.op.unary.f32(i32 24, float %770)  ; Sqrt(value)
  %923 = call float @dx.op.unary.f32(i32 24, float %771)  ; Sqrt(value)
  %924 = call float @dx.op.unary.f32(i32 24, float %772)  ; Sqrt(value)
  %925 = fmul fast float %919, 2.000000e+00
  %926 = fsub fast float 1.000000e+00, %925
  %927 = fmul fast float %926, %922
  %928 = fadd fast float %927, %925
  %929 = fmul fast float %928, %922
  %930 = fmul fast float %920, 2.000000e+00
  %931 = fsub fast float 1.000000e+00, %930
  %932 = fmul fast float %931, %923
  %933 = fadd fast float %932, %930
  %934 = fmul fast float %933, %923
  %935 = fmul fast float %921, 2.000000e+00
  %936 = fsub fast float 1.000000e+00, %935
  %937 = fmul fast float %936, %924
  %938 = fadd fast float %937, %935
  %939 = fmul fast float %938, %924
  %940 = fmul fast float %929, %929
  %941 = fmul fast float %934, %934
  %942 = fmul fast float %939, %939
  br label %959

; <label>:943                                     ; preds = %906
  %944 = fmul fast float %247, %247
  %945 = fmul fast float %251, %251
  %946 = fmul fast float %255, %255
  %947 = fadd fast float %944, -1.000000e+00
  %948 = fadd fast float %945, -1.000000e+00
  %949 = fadd fast float %946, -1.000000e+00
  %950 = fmul fast float %795, %947
  %951 = fmul fast float %795, %948
  %952 = fmul fast float %795, %949
  %953 = fadd fast float %950, 1.000000e+00
  %954 = fadd fast float %951, 1.000000e+00
  %955 = fadd fast float %952, 1.000000e+00
  %956 = fmul fast float %953, %770
  %957 = fmul fast float %954, %771
  %958 = fmul fast float %955, %772
  br label %959

; <label>:959                                     ; preds = %943, %909, %800, %755
  %960 = phi float [ %905, %800 ], [ %781, %909 ], [ %781, %943 ], [ 0x3FA23C0BE0000000, %755 ]
  %961 = phi float [ %897, %800 ], [ %940, %909 ], [ %956, %943 ], [ 1.000000e+00, %755 ]
  %962 = phi float [ %898, %800 ], [ %941, %909 ], [ %957, %943 ], [ 1.000000e+00, %755 ]
  %963 = phi float [ %899, %800 ], [ %942, %909 ], [ %958, %943 ], [ 1.000000e+00, %755 ]
  %964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %965 = extractvalue %dx.types.CBufRet.i32 %964, 1
  %966 = and i32 %965, 1
  %967 = icmp ne i32 %966, 0
  %968 = add i32 %50, 356
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = and i32 %970, 32
  %972 = icmp ne i32 %971, 0
  %973 = and i1 %967, %972
  %974 = select i1 %973, float 1.000000e+00, float %961
  %975 = select i1 %973, float 0x3FD3333340000000, float %962
  %976 = select i1 %973, float 0x3FD3333340000000, float %963
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = and i32 %978, 32
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %1053, label %981

; <label>:981                                     ; preds = %959
  %982 = add i32 %50, 92
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = add i32 %50, 376
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = add i32 %987, 0
  %989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %990 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %989, %dx.types.Handle %95, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %991 = extractvalue %dx.types.ResRet.f32 %990, 0
  %992 = extractvalue %dx.types.ResRet.f32 %990, 1
  %993 = extractvalue %dx.types.ResRet.f32 %990, 2
  %994 = extractvalue %dx.types.ResRet.f32 %990, 3
  %995 = and i32 %984, 255
  %996 = uitofp i32 %995 to float
  %997 = lshr i32 %984, 8
  %998 = and i32 %997, 255
  %999 = uitofp i32 %998 to float
  %1000 = lshr i32 %984, 16
  %1001 = and i32 %1000, 255
  %1002 = uitofp i32 %1001 to float
  %1003 = fmul fast float %1002, 0x3F70101000000000
  %1004 = fmul fast float %991, %996
  %1005 = fadd fast float %1004, %999
  %1006 = fmul fast float %1005, 0x3F70101000000000
  %1007 = fadd fast float %992, -5.000000e-01
  %1008 = fadd fast float %994, -5.000000e-01
  %1009 = fmul fast float %1007, %1003
  %1010 = fmul fast float %1008, %1003
  %1011 = fadd fast float %1009, 5.000000e-01
  %1012 = fadd fast float %1010, 5.000000e-01
  %1013 = fmul fast float %1011, 2.000000e+00
  %1014 = fadd fast float %1013, -1.000000e+00
  %1015 = fmul fast float %1012, 2.000000e+00
  %1016 = fadd fast float %1015, -1.000000e+00
  %1017 = fadd fast float %1014, %1016
  %1018 = fmul fast float %1017, 5.000000e-01
  %1019 = fsub fast float %1014, %1016
  %1020 = fmul fast float %1019, 5.000000e-01
  %1021 = call float @dx.op.unary.f32(i32 6, float %1018)  ; FAbs(value)
  %1022 = fsub fast float 1.000000e+00, %1021
  %1023 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1024 = fsub fast float %1022, %1023
  %1025 = call float @dx.op.dot3.f32(i32 55, float %1018, float %1020, float %1024, float %1018, float %1020, float %1024)  ; Dot3(ax,ay,az,bx,by,bz)
  %1026 = call float @dx.op.unary.f32(i32 25, float %1025)  ; Rsqrt(value)
  %1027 = fmul fast float %1018, %1026
  %1028 = fmul fast float %1020, %1026
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = and i32 %1030, 67108864
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1049, label %1033

; <label>:1033                                    ; preds = %981
  %1034 = add i32 %50, 280
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %1036, 65535
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.i32 %1039, 0
  %1041 = and i32 %1040, 65535
  %1042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1041)  ; LegacyF16ToF32(value)
  %1043 = lshr i32 %1036, 16
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = fsub fast float %1006, %1044
  %1046 = fmul fast float %1045, %1038
  %1047 = fadd fast float %1046, %1042
  %1048 = call float @dx.op.unary.f32(i32 7, float %1047)  ; Saturate(value)
  br label %1049

; <label>:1049                                    ; preds = %1033, %981
  %1050 = phi float [ %1048, %1033 ], [ %1006, %981 ]
  %1051 = call float @dx.op.dot2.f32(i32 54, float %1027, float %1028, float %472, float %473)  ; Dot2(ax,ay,bx,by)
  %1052 = call float @dx.op.dot2.f32(i32 54, float %1027, float %1028, float %474, float %475)  ; Dot2(ax,ay,bx,by)
  br label %1053

; <label>:1053                                    ; preds = %1049, %959
  %1054 = phi float [ %1050, %1049 ], [ 0x3FD6666660000000, %959 ]
  %1055 = phi float [ %1051, %1049 ], [ 0.000000e+00, %959 ]
  %1056 = phi float [ %1052, %1049 ], [ 0.000000e+00, %959 ]
  %1057 = phi float [ %993, %1049 ], [ 1.000000e+00, %959 ]
  %1058 = add i32 %50, 160
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = lshr i32 %1060, 22
  %1062 = shl nuw nsw i32 %1061, 5
  %1063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1062)  ; LegacyF16ToF32(value)
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = and i32 %1065, 64
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1101, label %1068

; <label>:1068                                    ; preds = %1053
  %1069 = add i32 %50, 392
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = add i32 %1071, 0
  %1073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = and i32 %1075, 131072
  %1077 = icmp eq i32 %1076, 0
  %1078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1073, %dx.types.Handle %95, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.ResRet.f32 %1078, 2
  %1082 = fmul fast float %1079, %235
  %1083 = fmul fast float %1080, %238
  %1084 = fmul fast float %1081, %241
  br i1 %1077, label %1091, label %1085

; <label>:1085                                    ; preds = %1068
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 0
  %1088 = fmul fast float %1087, %1082
  %1089 = fmul fast float %1087, %1083
  %1090 = fmul fast float %1087, %1084
  br label %1091

; <label>:1091                                    ; preds = %1085, %1068
  %1092 = phi float [ %1088, %1085 ], [ %1082, %1068 ]
  %1093 = phi float [ %1089, %1085 ], [ %1083, %1068 ]
  %1094 = phi float [ %1090, %1085 ], [ %1084, %1068 ]
  %1095 = fmul fast float %1092, %1063
  %1096 = select i1 %215, float %1095, float %1092
  %1097 = call float @dx.op.dot3.f32(i32 55, float %1096, float %1093, float %1094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1098 = select i1 %215, float 0.000000e+00, float %1092
  %1099 = select i1 %215, float %1097, float %1093
  %1100 = select i1 %215, float 0.000000e+00, float %1094
  br label %1101

; <label>:1101                                    ; preds = %1091, %1053
  %1102 = phi float [ %1098, %1091 ], [ 0.000000e+00, %1053 ]
  %1103 = phi float [ %1099, %1091 ], [ 0.000000e+00, %1053 ]
  %1104 = phi float [ %1100, %1091 ], [ 0.000000e+00, %1053 ]
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 10240
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1153, label %1109

; <label>:1109                                    ; preds = %1101
  %1110 = add i32 %50, 456
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = add i32 %1112, 0
  %1114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1115 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1114, %dx.types.Handle %96, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1115, 3
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = and i32 %1119, 1048576
  %1121 = icmp ne i32 %1120, 0
  %1122 = and i32 %1119, 8192
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1139, label %1124

; <label>:1124                                    ; preds = %1109
  %1125 = extractvalue %dx.types.ResRet.f32 %1115, 2
  %1126 = select i1 %1121, float %1125, float %1116
  %1127 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1128 = select i1 %1121, float %1127, float %1116
  %1129 = add i32 %50, 96
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = lshr i32 %1131, 16
  %1133 = and i32 %1132, 255
  %1134 = uitofp i32 %1133 to float
  %1135 = fmul fast float %1134, 0x3F80101020000000
  %1136 = fmul fast float %1135, %1128
  %1137 = fmul fast float %1135, %1116
  %1138 = fmul fast float %1135, %1126
  br label %1139

; <label>:1139                                    ; preds = %1124, %1109
  %1140 = phi float [ %1136, %1124 ], [ 0.000000e+00, %1109 ]
  %1141 = phi float [ %1137, %1124 ], [ 0.000000e+00, %1109 ]
  %1142 = phi float [ %1138, %1124 ], [ 0.000000e+00, %1109 ]
  %1143 = and i32 %1119, 2048
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1153, label %1145

; <label>:1145                                    ; preds = %1139
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = shl i32 %1147, 4
  %1149 = and i32 %1148, 32752
  %1150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1149)  ; LegacyF16ToF32(value)
  %1151 = fmul fast float %1150, %1117
  %1152 = call float @dx.op.binary.f32(i32 35, float %1151, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1153

; <label>:1153                                    ; preds = %1145, %1139, %1101
  %1154 = phi float [ %1140, %1145 ], [ %1140, %1139 ], [ 0.000000e+00, %1101 ]
  %1155 = phi float [ %1141, %1145 ], [ %1141, %1139 ], [ 0.000000e+00, %1101 ]
  %1156 = phi float [ %1142, %1145 ], [ %1142, %1139 ], [ 0.000000e+00, %1101 ]
  %1157 = phi float [ %1152, %1145 ], [ 0x3F70101020000000, %1139 ], [ 0x3F70101020000000, %1101 ]
  %1158 = add i32 %50, 96
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 255
  %1162 = uitofp i32 %1161 to float
  %1163 = lshr i32 %1160, 8
  %1164 = and i32 %1163, 255
  %1165 = uitofp i32 %1164 to float
  %1166 = call float @dx.op.dot3.f32(i32 55, float %974, float %975, float %976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1167 = fmul fast float %1165, %1166
  %1168 = fadd fast float %1167, %1162
  %1169 = fmul fast float %1168, 0x3F70101020000000
  %1170 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  br label %1171

; <label>:1171                                    ; preds = %1153, %454
  %1172 = phi float [ 0.000000e+00, %454 ], [ %1055, %1153 ]
  %1173 = phi float [ 0.000000e+00, %454 ], [ %1056, %1153 ]
  %1174 = phi float [ 0.000000e+00, %454 ], [ %974, %1153 ]
  %1175 = phi float [ 0.000000e+00, %454 ], [ %975, %1153 ]
  %1176 = phi float [ 0.000000e+00, %454 ], [ %976, %1153 ]
  %1177 = phi float [ 0.000000e+00, %454 ], [ %1102, %1153 ]
  %1178 = phi float [ 0.000000e+00, %454 ], [ %1103, %1153 ]
  %1179 = phi float [ 0.000000e+00, %454 ], [ %1104, %1153 ]
  %1180 = phi float [ 0.000000e+00, %454 ], [ %1154, %1153 ]
  %1181 = phi float [ 0.000000e+00, %454 ], [ %1155, %1153 ]
  %1182 = phi float [ 0.000000e+00, %454 ], [ %1156, %1153 ]
  %1183 = phi float [ 0.000000e+00, %454 ], [ %960, %1153 ]
  %1184 = phi float [ 0.000000e+00, %454 ], [ %756, %1153 ]
  %1185 = phi float [ 0.000000e+00, %454 ], [ %1054, %1153 ]
  %1186 = phi float [ 0.000000e+00, %454 ], [ %1057, %1153 ]
  %1187 = phi float [ 0.000000e+00, %454 ], [ %1157, %1153 ]
  %1188 = phi float [ 0.000000e+00, %454 ], [ %1170, %1153 ]
  br i1 %402, label %2117, label %1189

; <label>:1189                                    ; preds = %1171
  %1190 = icmp ult i32 %460, 2
  %1191 = add i32 %50, 40
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = add i32 %50, 44
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = or i32 %1196, %1193
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %2117, label %1199

; <label>:1199                                    ; preds = %1189
  %1200 = and i32 %1193, 262144
  %1201 = icmp ne i32 %1200, 0
  %1202 = select i1 %1201, float %53, float 1.000000e+00
  %1203 = select i1 %1201, float %54, float 0.000000e+00
  %1204 = select i1 %1201, float %55, float 0.000000e+00
  %1205 = select i1 %1201, float %56, float 1.000000e+00
  %1206 = select i1 %1201, float %57, float %78
  %1207 = select i1 %1201, float %58, float %79
  %1208 = add i32 %50, 300
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = lshr i32 %1210, 16
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = fmul fast float %1212, 0x3F50624DE0000000
  %1214 = add i32 %50, 104
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = lshr i32 %1216, 16
  %1218 = and i32 %1217, 255
  %1219 = lshr i32 %1216, 24
  %1220 = add i32 %50, 308
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 65535
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = lshr i32 %1222, 16
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = add i32 %50, 48
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = lshr i32 %1229, 22
  %1231 = shl nuw nsw i32 %1230, 5
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = shl i32 %1229, 4
  %1234 = and i32 %1233, 32752
  %1235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1234)  ; LegacyF16ToF32(value)
  %1236 = lshr i32 %1229, 7
  %1237 = and i32 %1236, 32752
  %1238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1237)  ; LegacyF16ToF32(value)
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 3
  %1241 = fmul fast float %1240, 1.000000e+03
  %1242 = fmul fast float %312, %1241
  %1243 = call float @dx.op.unary.f32(i32 22, float %1242)  ; Frc(value)
  %1244 = fadd fast float %1243, %302
  %1245 = fmul fast float %313, %1241
  %1246 = call float @dx.op.unary.f32(i32 22, float %1245)  ; Frc(value)
  %1247 = fadd fast float %1246, %304
  %1248 = fmul fast float %1213, %1241
  %1249 = call float @dx.op.unary.f32(i32 22, float %1248)  ; Frc(value)
  %1250 = fmul fast float %1249, 0x401921FB60000000
  %1251 = fadd fast float %1250, %1232
  %1252 = call float @dx.op.unary.f32(i32 13, float %1251)  ; Sin(value)
  %1253 = call float @dx.op.unary.f32(i32 12, float %1251)  ; Cos(value)
  %1254 = fsub fast float -0.000000e+00, %1252
  %1255 = fadd fast float %1206, -5.000000e-01
  %1256 = fadd fast float %1207, -5.000000e-01
  %1257 = fmul fast float %1224, %1255
  %1258 = fmul fast float %1226, %1256
  %1259 = fadd fast float %1257, 5.000000e-01
  %1260 = fadd fast float %1258, 5.000000e-01
  %1261 = fmul fast float %1235, %1259
  %1262 = fmul fast float %1238, %1260
  %1263 = fmul fast float %1253, %1261
  %1264 = call float @dx.op.tertiary.f32(i32 46, float %1254, float %1262, float %1263)  ; FMad(a,b,c)
  %1265 = fmul fast float %1252, %1261
  %1266 = call float @dx.op.tertiary.f32(i32 46, float %1253, float %1262, float %1265)  ; FMad(a,b,c)
  %1267 = fadd fast float %1244, %1264
  %1268 = fadd fast float %1247, %1266
  %1269 = icmp ugt i32 %1218, 1
  %1270 = icmp ugt i32 %1216, 33554431
  %1271 = or i1 %1270, %1269
  br i1 %1271, label %1272, label %1297

; <label>:1272                                    ; preds = %1199
  %1273 = add i32 %50, 244
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = lshr i32 %1275, 16
  %1277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1276)  ; LegacyF16ToF32(value)
  %1278 = fmul fast float %1240, %1277
  %1279 = call float @dx.op.unary.f32(i32 22, float %1278)  ; Frc(value)
  %1280 = mul nuw nsw i32 %1218, %1219
  %1281 = uitofp i32 %1280 to float
  %1282 = fmul fast float %1279, %1281
  %1283 = call float @dx.op.unary.f32(i32 27, float %1282)  ; Round_ni(value)
  %1284 = fptoui float %1283 to i32
  %1285 = urem i32 %1284, %1218
  %1286 = udiv i32 %1284, %1219
  %1287 = call float @dx.op.unary.f32(i32 22, float %1267)  ; Frc(value)
  %1288 = call float @dx.op.unary.f32(i32 22, float %1268)  ; Frc(value)
  %1289 = uitofp i32 %1285 to float
  %1290 = uitofp i32 %1286 to float
  %1291 = fadd fast float %1287, %1289
  %1292 = fadd fast float %1288, %1290
  %1293 = uitofp i32 %1218 to float
  %1294 = uitofp i32 %1219 to float
  %1295 = fdiv fast float %1291, %1293
  %1296 = fdiv fast float %1292, %1294
  br label %1297

; <label>:1297                                    ; preds = %1272, %1199
  %1298 = phi float [ %1295, %1272 ], [ %1267, %1199 ]
  %1299 = phi float [ %1296, %1272 ], [ %1268, %1199 ]
  %1300 = and i32 %1193, 16777216
  %1301 = icmp eq i32 %1300, 0
  br i1 %1301, label %1411, label %1302

; <label>:1302                                    ; preds = %1297
  %1303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1304 = extractvalue %dx.types.CBufRet.f32 %1303, 0
  %1305 = extractvalue %dx.types.CBufRet.f32 %1303, 1
  %1306 = extractvalue %dx.types.CBufRet.f32 %1303, 2
  %1307 = fadd fast float %1304, %154
  %1308 = fadd fast float %1305, %155
  %1309 = fadd fast float %1306, %156
  %1310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1311 = extractvalue %dx.types.CBufRet.f32 %1310, 0
  %1312 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1313 = icmp eq i32 %51, 65535
  br i1 %1313, label %1408, label %1314

; <label>:1314                                    ; preds = %1302
  %1315 = lshr i32 %51, 1
  %1316 = shl i32 %1315, 2
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = and i32 %51, 1
  %1320 = icmp ne i32 %1319, 0
  %1321 = lshr i32 %1318, 16
  %1322 = and i32 %1318, 65535
  %1323 = select i1 %1320, i32 %1321, i32 %1322
  %1324 = icmp eq i32 %1323, 65535
  br i1 %1324, label %1404, label %1325

; <label>:1325                                    ; preds = %1314
  %1326 = mul nuw nsw i32 %1323, 40
  %1327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.f32 %1327, 0
  %1329 = extractvalue %dx.types.ResRet.f32 %1327, 1
  %1330 = extractvalue %dx.types.ResRet.f32 %1327, 2
  %1331 = add nuw nsw i32 %1326, 12
  %1332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1331, i32 undef)  ; BufferLoad(srv,index,wot)
  %1333 = extractvalue %dx.types.ResRet.f32 %1332, 0
  %1334 = extractvalue %dx.types.ResRet.f32 %1332, 1
  %1335 = extractvalue %dx.types.ResRet.f32 %1332, 2
  %1336 = add nuw nsw i32 %1326, 24
  %1337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1336, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.f32 %1337, 0
  %1339 = extractvalue %dx.types.ResRet.f32 %1337, 1
  %1340 = extractvalue %dx.types.ResRet.f32 %1337, 2
  %1341 = add nuw nsw i32 %1326, 36
  %1342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.f32 %1342, 0
  %1344 = fsub fast float %1307, %1328
  %1345 = fsub fast float %1308, %1329
  %1346 = fsub fast float %1309, %1330
  %1347 = fmul fast float %1343, %1344
  %1348 = fmul fast float %1343, %1345
  %1349 = fmul fast float %1343, %1346
  %1350 = call float @dx.op.unary.f32(i32 27, float %1347)  ; Round_ni(value)
  %1351 = call float @dx.op.unary.f32(i32 27, float %1348)  ; Round_ni(value)
  %1352 = call float @dx.op.unary.f32(i32 27, float %1349)  ; Round_ni(value)
  %1353 = fadd fast float %1350, 5.000000e-01
  %1354 = fadd fast float %1351, 5.000000e-01
  %1355 = fadd fast float %1352, 5.000000e-01
  %1356 = fmul fast float %1353, %1333
  %1357 = fmul fast float %1354, %1334
  %1358 = fmul fast float %1355, %1335
  %1359 = shl i32 %51, 2
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = add i32 %1361, 0
  %1363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1364 = call float @dx.op.unary.f32(i32 22, float %1356)  ; Frc(value)
  %1365 = call float @dx.op.unary.f32(i32 22, float %1357)  ; Frc(value)
  %1366 = call float @dx.op.unary.f32(i32 22, float %1358)  ; Frc(value)
  %1367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1363, %dx.types.Handle %45, float %1364, float %1365, float %1366, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.ResRet.f32 %1367, 1
  %1370 = extractvalue %dx.types.ResRet.f32 %1367, 2
  %1371 = fmul fast float %1368, 1.023000e+03
  %1372 = fmul fast float %1369, 1.023000e+03
  %1373 = fmul fast float %1370, 1.023000e+03
  %1374 = fadd fast float %1371, 5.000000e-01
  %1375 = fadd fast float %1372, 5.000000e-01
  %1376 = fadd fast float %1373, 5.000000e-01
  %1377 = call float @dx.op.unary.f32(i32 27, float %1374)  ; Round_ni(value)
  %1378 = call float @dx.op.unary.f32(i32 27, float %1375)  ; Round_ni(value)
  %1379 = call float @dx.op.unary.f32(i32 27, float %1376)  ; Round_ni(value)
  %1380 = fsub fast float %1347, %1350
  %1381 = fsub fast float %1348, %1351
  %1382 = fsub fast float %1349, %1352
  %1383 = fmul fast float %1380, 7.500000e-01
  %1384 = fmul fast float %1381, 7.500000e-01
  %1385 = fmul fast float %1382, 7.500000e-01
  %1386 = fadd fast float %1350, 1.250000e-01
  %1387 = fadd fast float %1386, %1383
  %1388 = fadd fast float %1387, %1377
  %1389 = fadd fast float %1351, 1.250000e-01
  %1390 = fadd fast float %1389, %1384
  %1391 = fadd fast float %1390, %1378
  %1392 = fadd fast float %1352, 1.250000e-01
  %1393 = fadd fast float %1392, %1385
  %1394 = fadd fast float %1393, %1379
  %1395 = fmul fast float %1388, %1338
  %1396 = fmul fast float %1391, %1339
  %1397 = fmul fast float %1394, %1340
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = add i32 %1399, 0
  %1401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1400, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1401, %dx.types.Handle %43, float %1395, float %1396, float %1397, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1403 = extractvalue %dx.types.ResRet.f32 %1402, 0
  br label %1404

; <label>:1404                                    ; preds = %1325, %1314
  %1405 = phi float [ %1403, %1325 ], [ -1.000000e+00, %1314 ]
  %1406 = fadd fast float %1405, %1312
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  br label %1408

; <label>:1408                                    ; preds = %1404, %1302
  %1409 = phi float [ %1407, %1404 ], [ %1312, %1302 ]
  %1410 = fmul fast float %1409, %457
  br label %1411

; <label>:1411                                    ; preds = %1408, %1297
  %1412 = phi float [ %1410, %1408 ], [ %457, %1297 ]
  %1413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1414 = extractvalue %dx.types.ResRet.i32 %1413, 0
  %1415 = and i32 %1414, 256
  %1416 = icmp eq i32 %1415, 0
  br i1 %1416, label %1463, label %1417

; <label>:1417                                    ; preds = %1411
  %1418 = add i32 %50, 428
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1418, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = add i32 %1420, 0
  %1422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1423 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1422, %dx.types.Handle %96, float %1298, float %1299, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1424 = extractvalue %dx.types.ResRet.f32 %1423, 0
  %1425 = add i32 %50, 116
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = shl i32 %1427, 4
  %1429 = and i32 %1428, 32752
  %1430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1429)  ; LegacyF16ToF32(value)
  %1431 = lshr i32 %1427, 7
  %1432 = and i32 %1431, 32752
  %1433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1432)  ; LegacyF16ToF32(value)
  %1434 = fsub fast float 1.000000e+00, %1412
  %1435 = call float @dx.op.binary.f32(i32 35, float %1434, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1436 = bitcast float %1412 to i32
  %1437 = sitofp i32 %1436 to float
  %1438 = fadd fast float %1437, 0xC1CFBF8940000000
  %1439 = fmul fast float %1433, %1438
  %1440 = fadd fast float %1439, 0x41CFBF8940000000
  %1441 = fptosi float %1440 to i32
  %1442 = bitcast i32 %1441 to float
  %1443 = bitcast float %1435 to i32
  %1444 = sitofp i32 %1443 to float
  %1445 = fadd fast float %1444, 0xC1CFBF8940000000
  %1446 = fmul fast float %1445, %1433
  %1447 = fadd fast float %1446, 0x41CFBF8940000000
  %1448 = fptosi float %1447 to i32
  %1449 = bitcast i32 %1448 to float
  %1450 = fmul fast float %1442, %1430
  %1451 = fmul fast float %1449, %1430
  %1452 = fsub fast float %1435, %1450
  %1453 = fadd fast float %1451, %1435
  %1454 = call float @dx.op.unary.f32(i32 7, float %1452)  ; Saturate(value)
  %1455 = call float @dx.op.unary.f32(i32 7, float %1453)  ; Saturate(value)
  %1456 = fsub fast float %1424, %1454
  %1457 = fsub fast float %1455, %1454
  %1458 = bitcast float %1457 to i32
  %1459 = sub nsw i32 2129859010, %1458
  %1460 = bitcast i32 %1459 to float
  %1461 = fmul fast float %1460, %1456
  %1462 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  br label %1463

; <label>:1463                                    ; preds = %1417, %1411
  %1464 = phi float [ %1462, %1417 ], [ %1412, %1411 ]
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = and i32 %1466, 128
  %1468 = icmp eq i32 %1467, 0
  br i1 %1468, label %1485, label %1469

; <label>:1469                                    ; preds = %1463
  %1470 = add i32 %50, 412
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = add i32 %1472, 0
  %1474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1473, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1475 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1474, %dx.types.Handle %96, float %1298, float %1299, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 0
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 524288
  %1480 = icmp ne i32 %1479, 0
  %1481 = fcmp fast ogt float %1476, 0x3FE0101020000000
  %1482 = select i1 %1481, float 1.000000e+00, float 0.000000e+00
  %1483 = select i1 %1480, float %1482, float %1476
  %1484 = fmul fast float %1483, %1464
  br label %1485

; <label>:1485                                    ; preds = %1469, %1463
  %1486 = phi float [ %1484, %1469 ], [ %1464, %1463 ]
  %1487 = fcmp fast ult float %1486, 0x3F70101020000000
  br i1 %1487, label %2117, label %1488

; <label>:1488                                    ; preds = %1485
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 16
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1691, label %1493

; <label>:1493                                    ; preds = %1488
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = add i32 %50, 364
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1496, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = add i32 %1498, 0
  %1500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1499, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1501 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1500, %dx.types.Handle %95, float %1298, float %1299, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1502 = extractvalue %dx.types.ResRet.f32 %1501, 0
  %1503 = extractvalue %dx.types.ResRet.f32 %1501, 1
  %1504 = extractvalue %dx.types.ResRet.f32 %1501, 2
  %1505 = extractvalue %dx.types.ResRet.f32 %1501, 3
  %1506 = and i32 %1495, 255
  %1507 = uitofp i32 %1506 to float
  %1508 = lshr i32 %1495, 8
  %1509 = and i32 %1508, 255
  %1510 = uitofp i32 %1509 to float
  %1511 = fmul fast float %1505, %1507
  %1512 = fadd fast float %1511, %1510
  %1513 = fmul fast float %1512, 0x3F70101000000000
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 512
  %1517 = icmp eq i32 %1516, 0
  br i1 %1517, label %1526, label %1518

; <label>:1518                                    ; preds = %1493
  %1519 = add i32 %50, 444
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1519, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = add i32 %1521, 0
  %1523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1523, %dx.types.Handle %96, float %1298, float %1299, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1525 = extractvalue %dx.types.ResRet.f32 %1524, 0
  br label %1526

; <label>:1526                                    ; preds = %1518, %1493
  %1527 = phi float [ %1525, %1518 ], [ 1.000000e+00, %1493 ]
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = and i32 %1529, 33554432
  %1531 = icmp eq i32 %1530, 0
  br i1 %1531, label %1638, label %1532

; <label>:1532                                    ; preds = %1526
  %1533 = add i32 %50, 240
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 65535
  %1537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1536)  ; LegacyF16ToF32(value)
  %1538 = lshr i32 %1535, 16
  %1539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1538)  ; LegacyF16ToF32(value)
  %1540 = add i32 %50, 244
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = and i32 %1542, 65535
  %1544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1543)  ; LegacyF16ToF32(value)
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = lshr i32 %1546, 24
  %1548 = uitofp i32 %1547 to float
  %1549 = fmul fast float %1548, 0x3F70101020000000
  %1550 = and i32 %1546, 255
  %1551 = uitofp i32 %1550 to float
  %1552 = fmul fast float %1551, 0x3F70101020000000
  %1553 = lshr i32 %1546, 8
  %1554 = and i32 %1553, 255
  %1555 = uitofp i32 %1554 to float
  %1556 = fmul fast float %1555, 0x3F70101020000000
  %1557 = lshr i32 %1546, 16
  %1558 = and i32 %1557, 255
  %1559 = uitofp i32 %1558 to float
  %1560 = fmul fast float %1559, 0x3F70101020000000
  %1561 = add i32 %50, 236
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = lshr i32 %1563, 24
  %1565 = uitofp i32 %1564 to float
  %1566 = fmul fast float %1565, 0x3F70101020000000
  %1567 = and i32 %1563, 255
  %1568 = uitofp i32 %1567 to float
  %1569 = fmul fast float %1568, 0x3F70101020000000
  %1570 = lshr i32 %1563, 8
  %1571 = and i32 %1570, 255
  %1572 = uitofp i32 %1571 to float
  %1573 = fmul fast float %1572, 0x3F70101020000000
  %1574 = lshr i32 %1563, 16
  %1575 = and i32 %1574, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = fmul fast float %1576, 0x3F70101020000000
  %1578 = bitcast float %1502 to i32
  %1579 = ashr i32 %1578, 1
  %1580 = sub nsw i32 1597463174, %1579
  %1581 = bitcast i32 %1580 to float
  %1582 = fmul fast float %1502, 5.000000e-01
  %1583 = fmul fast float %1581, %1581
  %1584 = fmul fast float %1583, %1582
  %1585 = fsub fast float 1.500000e+00, %1584
  %1586 = fmul fast float %1581, %1502
  %1587 = fmul fast float %1586, %1585
  %1588 = bitcast float %1503 to i32
  %1589 = ashr i32 %1588, 1
  %1590 = sub nsw i32 1597463174, %1589
  %1591 = bitcast i32 %1590 to float
  %1592 = fmul fast float %1503, 5.000000e-01
  %1593 = fmul fast float %1591, %1591
  %1594 = fmul fast float %1593, %1592
  %1595 = fsub fast float 1.500000e+00, %1594
  %1596 = fmul fast float %1591, %1503
  %1597 = fmul fast float %1596, %1595
  %1598 = bitcast float %1504 to i32
  %1599 = ashr i32 %1598, 1
  %1600 = sub nsw i32 1597463174, %1599
  %1601 = bitcast i32 %1600 to float
  %1602 = fmul fast float %1504, 5.000000e-01
  %1603 = fmul fast float %1601, %1601
  %1604 = fmul fast float %1603, %1602
  %1605 = fsub fast float 1.500000e+00, %1604
  %1606 = fmul fast float %1601, %1504
  %1607 = fmul fast float %1606, %1605
  %1608 = fsub fast float %1587, %1569
  %1609 = fsub fast float %1597, %1573
  %1610 = fsub fast float %1607, %1577
  %1611 = fmul fast float %1608, %1537
  %1612 = fmul fast float %1609, %1539
  %1613 = fmul fast float %1610, %1544
  %1614 = fadd fast float %1611, %1552
  %1615 = fadd fast float %1612, %1556
  %1616 = fadd fast float %1613, %1560
  %1617 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1618 = call float @dx.op.unary.f32(i32 7, float %1615)  ; Saturate(value)
  %1619 = call float @dx.op.unary.f32(i32 7, float %1616)  ; Saturate(value)
  %1620 = fmul fast float %1617, %1617
  %1621 = fmul fast float %1618, %1618
  %1622 = fmul fast float %1619, %1619
  %1623 = fsub fast float %1620, %1502
  %1624 = fsub fast float %1621, %1503
  %1625 = fsub fast float %1622, %1504
  %1626 = fmul fast float %1623, %1527
  %1627 = fmul fast float %1624, %1527
  %1628 = fmul fast float %1625, %1527
  %1629 = fadd fast float %1626, %1502
  %1630 = fadd fast float %1627, %1503
  %1631 = fadd fast float %1628, %1504
  %1632 = fadd fast float %1549, %1513
  %1633 = fsub fast float %1632, %1566
  %1634 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  %1635 = fsub fast float %1634, %1513
  %1636 = fmul fast float %1635, %1527
  %1637 = fadd fast float %1636, %1513
  br label %1691

; <label>:1638                                    ; preds = %1526
  %1639 = and i32 %1529, 134217728
  %1640 = icmp eq i32 %1639, 0
  br i1 %1640, label %1675, label %1641

; <label>:1641                                    ; preds = %1638
  %1642 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %1643 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1644 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %1645 = fadd fast float %1642, -5.000000e-01
  %1646 = fadd fast float %1643, -5.000000e-01
  %1647 = fadd fast float %1644, -5.000000e-01
  %1648 = fmul fast float %1645, %1527
  %1649 = fmul fast float %1646, %1527
  %1650 = fmul fast float %1647, %1527
  %1651 = fadd fast float %1648, 5.000000e-01
  %1652 = fadd fast float %1649, 5.000000e-01
  %1653 = fadd fast float %1650, 5.000000e-01
  %1654 = call float @dx.op.unary.f32(i32 24, float %1502)  ; Sqrt(value)
  %1655 = call float @dx.op.unary.f32(i32 24, float %1503)  ; Sqrt(value)
  %1656 = call float @dx.op.unary.f32(i32 24, float %1504)  ; Sqrt(value)
  %1657 = fmul fast float %1651, 2.000000e+00
  %1658 = fsub fast float 1.000000e+00, %1657
  %1659 = fmul fast float %1658, %1654
  %1660 = fadd fast float %1659, %1657
  %1661 = fmul fast float %1660, %1654
  %1662 = fmul fast float %1652, 2.000000e+00
  %1663 = fsub fast float 1.000000e+00, %1662
  %1664 = fmul fast float %1663, %1655
  %1665 = fadd fast float %1664, %1662
  %1666 = fmul fast float %1665, %1655
  %1667 = fmul fast float %1653, 2.000000e+00
  %1668 = fsub fast float 1.000000e+00, %1667
  %1669 = fmul fast float %1668, %1656
  %1670 = fadd fast float %1669, %1667
  %1671 = fmul fast float %1670, %1656
  %1672 = fmul fast float %1661, %1661
  %1673 = fmul fast float %1666, %1666
  %1674 = fmul fast float %1671, %1671
  br label %1691

; <label>:1675                                    ; preds = %1638
  %1676 = fmul fast float %289, %289
  %1677 = fmul fast float %293, %293
  %1678 = fmul fast float %297, %297
  %1679 = fadd fast float %1676, -1.000000e+00
  %1680 = fadd fast float %1677, -1.000000e+00
  %1681 = fadd fast float %1678, -1.000000e+00
  %1682 = fmul fast float %1527, %1679
  %1683 = fmul fast float %1527, %1680
  %1684 = fmul fast float %1527, %1681
  %1685 = fadd fast float %1682, 1.000000e+00
  %1686 = fadd fast float %1683, 1.000000e+00
  %1687 = fadd fast float %1684, 1.000000e+00
  %1688 = fmul fast float %1685, %1502
  %1689 = fmul fast float %1686, %1503
  %1690 = fmul fast float %1687, %1504
  br label %1691

; <label>:1691                                    ; preds = %1675, %1641, %1532, %1488
  %1692 = phi float [ %1637, %1532 ], [ %1513, %1641 ], [ %1513, %1675 ], [ 0x3FA23C0BE0000000, %1488 ]
  %1693 = phi float [ %1629, %1532 ], [ %1672, %1641 ], [ %1688, %1675 ], [ 1.000000e+00, %1488 ]
  %1694 = phi float [ %1630, %1532 ], [ %1673, %1641 ], [ %1689, %1675 ], [ 1.000000e+00, %1488 ]
  %1695 = phi float [ %1631, %1532 ], [ %1674, %1641 ], [ %1690, %1675 ], [ 1.000000e+00, %1488 ]
  %1696 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1697 = extractvalue %dx.types.CBufRet.i32 %1696, 1
  %1698 = and i32 %1697, 1
  %1699 = icmp ne i32 %1698, 0
  %1700 = add i32 %50, 356
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1700, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = and i32 %1702, 32
  %1704 = icmp ne i32 %1703, 0
  %1705 = and i1 %1699, %1704
  %1706 = select i1 %1705, float 1.000000e+00, float %1693
  %1707 = select i1 %1705, float 0x3FD3333340000000, float %1694
  %1708 = select i1 %1705, float 0x3FD3333340000000, float %1695
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = and i32 %1710, 32
  %1712 = icmp eq i32 %1711, 0
  br i1 %1712, label %1785, label %1713

; <label>:1713                                    ; preds = %1691
  %1714 = add i32 %50, 108
  %1715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.i32 %1715, 0
  %1717 = add i32 %50, 380
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = add i32 %1719, 0
  %1721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1722 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1721, %dx.types.Handle %95, float %1298, float %1299, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1723 = extractvalue %dx.types.ResRet.f32 %1722, 0
  %1724 = extractvalue %dx.types.ResRet.f32 %1722, 1
  %1725 = extractvalue %dx.types.ResRet.f32 %1722, 2
  %1726 = extractvalue %dx.types.ResRet.f32 %1722, 3
  %1727 = and i32 %1716, 255
  %1728 = uitofp i32 %1727 to float
  %1729 = lshr i32 %1716, 8
  %1730 = and i32 %1729, 255
  %1731 = uitofp i32 %1730 to float
  %1732 = lshr i32 %1716, 16
  %1733 = and i32 %1732, 255
  %1734 = uitofp i32 %1733 to float
  %1735 = fmul fast float %1734, 0x3F70101000000000
  %1736 = fmul fast float %1723, %1728
  %1737 = fadd fast float %1736, %1731
  %1738 = fmul fast float %1737, 0x3F70101000000000
  %1739 = fadd fast float %1724, -5.000000e-01
  %1740 = fadd fast float %1726, -5.000000e-01
  %1741 = fmul fast float %1739, %1735
  %1742 = fmul fast float %1740, %1735
  %1743 = fadd fast float %1741, 5.000000e-01
  %1744 = fadd fast float %1742, 5.000000e-01
  %1745 = fmul fast float %1743, 2.000000e+00
  %1746 = fadd fast float %1745, -1.000000e+00
  %1747 = fmul fast float %1744, 2.000000e+00
  %1748 = fadd fast float %1747, -1.000000e+00
  %1749 = fadd fast float %1746, %1748
  %1750 = fmul fast float %1749, 5.000000e-01
  %1751 = fsub fast float %1746, %1748
  %1752 = fmul fast float %1751, 5.000000e-01
  %1753 = call float @dx.op.unary.f32(i32 6, float %1750)  ; FAbs(value)
  %1754 = fsub fast float 1.000000e+00, %1753
  %1755 = call float @dx.op.unary.f32(i32 6, float %1752)  ; FAbs(value)
  %1756 = fsub fast float %1754, %1755
  %1757 = call float @dx.op.dot3.f32(i32 55, float %1750, float %1752, float %1756, float %1750, float %1752, float %1756)  ; Dot3(ax,ay,az,bx,by,bz)
  %1758 = call float @dx.op.unary.f32(i32 25, float %1757)  ; Rsqrt(value)
  %1759 = fmul fast float %1750, %1758
  %1760 = fmul fast float %1752, %1758
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = and i32 %1762, 67108864
  %1764 = icmp eq i32 %1763, 0
  br i1 %1764, label %1781, label %1765

; <label>:1765                                    ; preds = %1713
  %1766 = add i32 %50, 296
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = and i32 %1768, 65535
  %1770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1769)  ; LegacyF16ToF32(value)
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = and i32 %1772, 65535
  %1774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1773)  ; LegacyF16ToF32(value)
  %1775 = lshr i32 %1768, 16
  %1776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1775)  ; LegacyF16ToF32(value)
  %1777 = fsub fast float %1738, %1776
  %1778 = fmul fast float %1777, %1770
  %1779 = fadd fast float %1778, %1774
  %1780 = call float @dx.op.unary.f32(i32 7, float %1779)  ; Saturate(value)
  br label %1781

; <label>:1781                                    ; preds = %1765, %1713
  %1782 = phi float [ %1780, %1765 ], [ %1738, %1713 ]
  %1783 = call float @dx.op.dot2.f32(i32 54, float %1759, float %1760, float %1202, float %1203)  ; Dot2(ax,ay,bx,by)
  %1784 = call float @dx.op.dot2.f32(i32 54, float %1759, float %1760, float %1204, float %1205)  ; Dot2(ax,ay,bx,by)
  br label %1785

; <label>:1785                                    ; preds = %1781, %1691
  %1786 = phi float [ %1782, %1781 ], [ 0x3FD6666660000000, %1691 ]
  %1787 = phi float [ %1783, %1781 ], [ 0.000000e+00, %1691 ]
  %1788 = phi float [ %1784, %1781 ], [ 0.000000e+00, %1691 ]
  %1789 = phi float [ %1725, %1781 ], [ 1.000000e+00, %1691 ]
  %1790 = add i32 %50, 176
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = lshr i32 %1792, 22
  %1794 = shl nuw nsw i32 %1793, 5
  %1795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1794)  ; LegacyF16ToF32(value)
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = and i32 %1797, 64
  %1799 = icmp eq i32 %1798, 0
  br i1 %1799, label %1833, label %1800

; <label>:1800                                    ; preds = %1785
  %1801 = add i32 %50, 396
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = add i32 %1803, 0
  %1805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1804, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = and i32 %1807, 131072
  %1809 = icmp eq i32 %1808, 0
  %1810 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1805, %dx.types.Handle %95, float %1298, float %1299, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1811 = extractvalue %dx.types.ResRet.f32 %1810, 0
  %1812 = extractvalue %dx.types.ResRet.f32 %1810, 1
  %1813 = extractvalue %dx.types.ResRet.f32 %1810, 2
  %1814 = fmul fast float %1811, %277
  %1815 = fmul fast float %1812, %280
  %1816 = fmul fast float %1813, %283
  br i1 %1809, label %1823, label %1817

; <label>:1817                                    ; preds = %1800
  %1818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1819 = extractvalue %dx.types.CBufRet.f32 %1818, 0
  %1820 = fmul fast float %1819, %1814
  %1821 = fmul fast float %1819, %1815
  %1822 = fmul fast float %1819, %1816
  br label %1823

; <label>:1823                                    ; preds = %1817, %1800
  %1824 = phi float [ %1820, %1817 ], [ %1814, %1800 ]
  %1825 = phi float [ %1821, %1817 ], [ %1815, %1800 ]
  %1826 = phi float [ %1822, %1817 ], [ %1816, %1800 ]
  %1827 = fmul fast float %1824, %1795
  %1828 = select i1 %215, float %1827, float %1824
  %1829 = call float @dx.op.dot3.f32(i32 55, float %1828, float %1825, float %1826, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1830 = select i1 %215, float 0.000000e+00, float %1824
  %1831 = select i1 %215, float %1829, float %1825
  %1832 = select i1 %215, float 0.000000e+00, float %1826
  br label %1833

; <label>:1833                                    ; preds = %1823, %1785
  %1834 = phi float [ %1830, %1823 ], [ 0.000000e+00, %1785 ]
  %1835 = phi float [ %1831, %1823 ], [ 0.000000e+00, %1785 ]
  %1836 = phi float [ %1832, %1823 ], [ 0.000000e+00, %1785 ]
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 10240
  %1840 = icmp eq i32 %1839, 0
  br i1 %1840, label %1885, label %1841

; <label>:1841                                    ; preds = %1833
  %1842 = add i32 %50, 460
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = add i32 %1844, 0
  %1846 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1845, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1847 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1846, %dx.types.Handle %96, float %1298, float %1299, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1848 = extractvalue %dx.types.ResRet.f32 %1847, 1
  %1849 = extractvalue %dx.types.ResRet.f32 %1847, 3
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = and i32 %1851, 1048576
  %1853 = icmp ne i32 %1852, 0
  %1854 = and i32 %1851, 8192
  %1855 = icmp eq i32 %1854, 0
  br i1 %1855, label %1871, label %1856

; <label>:1856                                    ; preds = %1841
  %1857 = extractvalue %dx.types.ResRet.f32 %1847, 2
  %1858 = select i1 %1853, float %1857, float %1848
  %1859 = extractvalue %dx.types.ResRet.f32 %1847, 0
  %1860 = select i1 %1853, float %1859, float %1848
  %1861 = add i32 %50, 112
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = lshr i32 %1863, 16
  %1865 = and i32 %1864, 255
  %1866 = uitofp i32 %1865 to float
  %1867 = fmul fast float %1866, 0x3F80101020000000
  %1868 = fmul fast float %1867, %1860
  %1869 = fmul fast float %1867, %1848
  %1870 = fmul fast float %1867, %1858
  br label %1871

; <label>:1871                                    ; preds = %1856, %1841
  %1872 = phi float [ %1868, %1856 ], [ 0.000000e+00, %1841 ]
  %1873 = phi float [ %1869, %1856 ], [ 0.000000e+00, %1841 ]
  %1874 = phi float [ %1870, %1856 ], [ 0.000000e+00, %1841 ]
  %1875 = and i32 %1851, 2048
  %1876 = icmp eq i32 %1875, 0
  br i1 %1876, label %1885, label %1877

; <label>:1877                                    ; preds = %1871
  %1878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.i32 %1878, 0
  %1880 = shl i32 %1879, 4
  %1881 = and i32 %1880, 32752
  %1882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1881)  ; LegacyF16ToF32(value)
  %1883 = fmul fast float %1882, %1849
  %1884 = call float @dx.op.binary.f32(i32 35, float %1883, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1885

; <label>:1885                                    ; preds = %1877, %1871, %1833
  %1886 = phi float [ %1872, %1877 ], [ %1872, %1871 ], [ 0.000000e+00, %1833 ]
  %1887 = phi float [ %1873, %1877 ], [ %1873, %1871 ], [ 0.000000e+00, %1833 ]
  %1888 = phi float [ %1874, %1877 ], [ %1874, %1871 ], [ 0.000000e+00, %1833 ]
  %1889 = phi float [ %1884, %1877 ], [ 0x3F70101020000000, %1871 ], [ 0x3F70101020000000, %1833 ]
  %1890 = add i32 %50, 112
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = and i32 %1892, 255
  %1894 = uitofp i32 %1893 to float
  %1895 = lshr i32 %1892, 8
  %1896 = and i32 %1895, 255
  %1897 = uitofp i32 %1896 to float
  %1898 = call float @dx.op.dot3.f32(i32 55, float %1706, float %1707, float %1708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1899 = fmul fast float %1897, %1898
  %1900 = fadd fast float %1899, %1894
  %1901 = fmul fast float %1900, 0x3F70101020000000
  %1902 = call float @dx.op.unary.f32(i32 7, float %1901)  ; Saturate(value)
  br i1 %1190, label %1903, label %1911

; <label>:1903                                    ; preds = %1885
  %1904 = fsub fast float 1.000000e+00, %1486
  %1905 = fmul fast float %1904, %1174
  %1906 = fmul fast float %1904, %1175
  %1907 = fmul fast float %1904, %1176
  %1908 = fmul fast float %1904, %1177
  %1909 = fmul fast float %1904, %1178
  %1910 = fmul fast float %1904, %1179
  br label %1911

; <label>:1911                                    ; preds = %1903, %1885
  %1912 = phi float [ %1905, %1903 ], [ %1174, %1885 ]
  %1913 = phi float [ %1906, %1903 ], [ %1175, %1885 ]
  %1914 = phi float [ %1907, %1903 ], [ %1176, %1885 ]
  %1915 = phi float [ %1908, %1903 ], [ %1177, %1885 ]
  %1916 = phi float [ %1909, %1903 ], [ %1178, %1885 ]
  %1917 = phi float [ %1910, %1903 ], [ %1179, %1885 ]
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = and i32 %1919, 3
  %1921 = icmp eq i32 %1920, 3
  br i1 %1921, label %2000, label %1922

; <label>:1922                                    ; preds = %1911
  %1923 = and i32 %1919, 16
  %1924 = icmp ne i32 %1923, 0
  %1925 = select i1 %1924, float %1486, float 0.000000e+00
  %1926 = icmp eq i32 %1920, 0
  br i1 %1926, label %1927, label %1955

; <label>:1927                                    ; preds = %1922
  %1928 = and i32 %1919, 64
  %1929 = icmp ne i32 %1928, 0
  %1930 = select i1 %1929, float %1486, float 0.000000e+00
  %1931 = fsub fast float %1706, %1912
  %1932 = fsub fast float %1707, %1913
  %1933 = fsub fast float %1708, %1914
  %1934 = fmul fast float %1925, %1931
  %1935 = fmul fast float %1925, %1932
  %1936 = fmul fast float %1925, %1933
  %1937 = fadd fast float %1934, %1912
  %1938 = fadd fast float %1935, %1913
  %1939 = fadd fast float %1936, %1914
  %1940 = fsub fast float %1692, %1183
  %1941 = fmul fast float %1925, %1940
  %1942 = fadd fast float %1941, %1183
  %1943 = fsub fast float %1834, %1915
  %1944 = fsub fast float %1835, %1916
  %1945 = fsub fast float %1836, %1917
  %1946 = fmul fast float %1930, %1943
  %1947 = fmul fast float %1930, %1944
  %1948 = fmul fast float %1930, %1945
  %1949 = fadd fast float %1946, %1915
  %1950 = fadd fast float %1947, %1916
  %1951 = fadd fast float %1948, %1917
  %1952 = fsub fast float %1902, %1188
  %1953 = fmul fast float %1925, %1952
  %1954 = fadd fast float %1953, %1188
  br label %2000

; <label>:1955                                    ; preds = %1922
  %1956 = icmp eq i32 %1920, 1
  br i1 %1956, label %1957, label %1970

; <label>:1957                                    ; preds = %1955
  %1958 = fadd fast float %1706, -1.000000e+00
  %1959 = fadd fast float %1707, -1.000000e+00
  %1960 = fadd fast float %1708, -1.000000e+00
  %1961 = fmul fast float %1925, %1958
  %1962 = fmul fast float %1925, %1959
  %1963 = fmul fast float %1925, %1960
  %1964 = fadd fast float %1961, 1.000000e+00
  %1965 = fadd fast float %1962, 1.000000e+00
  %1966 = fadd fast float %1963, 1.000000e+00
  %1967 = fmul fast float %1964, %1912
  %1968 = fmul fast float %1965, %1913
  %1969 = fmul fast float %1966, %1914
  br label %2000

; <label>:1970                                    ; preds = %1955
  %1971 = icmp eq i32 %1920, 2
  br i1 %1971, label %1972, label %2000

; <label>:1972                                    ; preds = %1970
  %1973 = call float @dx.op.unary.f32(i32 24, float %1706)  ; Sqrt(value)
  %1974 = call float @dx.op.unary.f32(i32 24, float %1707)  ; Sqrt(value)
  %1975 = call float @dx.op.unary.f32(i32 24, float %1708)  ; Sqrt(value)
  %1976 = fadd fast float %1973, -5.000000e-01
  %1977 = fadd fast float %1974, -5.000000e-01
  %1978 = fadd fast float %1975, -5.000000e-01
  %1979 = fmul fast float %1976, %1925
  %1980 = fmul fast float %1977, %1925
  %1981 = fmul fast float %1978, %1925
  %1982 = fadd fast float %1979, 5.000000e-01
  %1983 = fadd fast float %1980, 5.000000e-01
  %1984 = fadd fast float %1981, 5.000000e-01
  %1985 = fmul fast float %1982, 2.000000e+00
  %1986 = fsub fast float 1.000000e+00, %1985
  %1987 = fmul fast float %1986, %1912
  %1988 = fadd fast float %1987, %1985
  %1989 = fmul fast float %1988, %1912
  %1990 = fmul fast float %1983, 2.000000e+00
  %1991 = fsub fast float 1.000000e+00, %1990
  %1992 = fmul fast float %1991, %1913
  %1993 = fadd fast float %1992, %1990
  %1994 = fmul fast float %1993, %1913
  %1995 = fmul fast float %1984, 2.000000e+00
  %1996 = fsub fast float 1.000000e+00, %1995
  %1997 = fmul fast float %1996, %1914
  %1998 = fadd fast float %1997, %1995
  %1999 = fmul fast float %1998, %1914
  br label %2000

; <label>:2000                                    ; preds = %1972, %1970, %1957, %1927, %1911
  %2001 = phi float [ %1912, %1911 ], [ %1989, %1972 ], [ %1912, %1970 ], [ %1967, %1957 ], [ %1937, %1927 ]
  %2002 = phi float [ %1913, %1911 ], [ %1994, %1972 ], [ %1913, %1970 ], [ %1968, %1957 ], [ %1938, %1927 ]
  %2003 = phi float [ %1914, %1911 ], [ %1999, %1972 ], [ %1914, %1970 ], [ %1969, %1957 ], [ %1939, %1927 ]
  %2004 = phi float [ %1915, %1911 ], [ %1915, %1972 ], [ %1915, %1970 ], [ %1915, %1957 ], [ %1949, %1927 ]
  %2005 = phi float [ %1916, %1911 ], [ %1916, %1972 ], [ %1916, %1970 ], [ %1916, %1957 ], [ %1950, %1927 ]
  %2006 = phi float [ %1917, %1911 ], [ %1917, %1972 ], [ %1917, %1970 ], [ %1917, %1957 ], [ %1951, %1927 ]
  %2007 = phi float [ %1183, %1911 ], [ %1183, %1972 ], [ %1183, %1970 ], [ %1183, %1957 ], [ %1942, %1927 ]
  %2008 = phi float [ %1188, %1911 ], [ %1188, %1972 ], [ %1188, %1970 ], [ %1188, %1957 ], [ %1954, %1927 ]
  %2009 = and i32 %1919, 12
  %2010 = icmp eq i32 %2009, 12
  br i1 %2010, label %2117, label %2011

; <label>:2011                                    ; preds = %2000
  %2012 = and i32 %1919, 2097184
  %2013 = icmp eq i32 %2012, 2097184
  %2014 = select i1 %2013, float %1486, float 0.000000e+00
  %2015 = and i32 %1919, 4194336
  %2016 = icmp eq i32 %2015, 4194336
  %2017 = select i1 %2016, float %1486, float 0.000000e+00
  %2018 = and i32 %1919, 8388640
  %2019 = icmp eq i32 %2018, 8388640
  %2020 = select i1 %2019, float %1486, float 0.000000e+00
  %2021 = and i32 %1919, 2048
  %2022 = icmp ne i32 %2021, 0
  %2023 = select i1 %2022, float %1486, float 0.000000e+00
  %2024 = and i32 %1919, 8192
  %2025 = icmp ne i32 %2024, 0
  %2026 = select i1 %2025, float %1486, float 0.000000e+00
  %2027 = icmp eq i32 %2009, 0
  br i1 %2027, label %2028, label %2053

; <label>:2028                                    ; preds = %2011
  %2029 = fsub fast float %1787, %1172
  %2030 = fsub fast float %1788, %1173
  %2031 = fmul fast float %2014, %2029
  %2032 = fmul fast float %2014, %2030
  %2033 = fadd fast float %2031, %1172
  %2034 = fadd fast float %2032, %1173
  %2035 = fsub fast float %1789, %1186
  %2036 = fmul fast float %2017, %2035
  %2037 = fadd fast float %2036, %1186
  %2038 = fsub fast float %1786, %1185
  %2039 = fmul fast float %2020, %2038
  %2040 = fadd fast float %2039, %1185
  %2041 = fsub fast float %1889, %1187
  %2042 = fmul fast float %2023, %2041
  %2043 = fadd fast float %2042, %1187
  %2044 = fsub fast float %1886, %1180
  %2045 = fsub fast float %1887, %1181
  %2046 = fsub fast float %1888, %1182
  %2047 = fmul fast float %2026, %2044
  %2048 = fmul fast float %2026, %2045
  %2049 = fmul fast float %2026, %2046
  %2050 = fadd fast float %2047, %1180
  %2051 = fadd fast float %2048, %1181
  %2052 = fadd fast float %2049, %1182
  br label %2117

; <label>:2053                                    ; preds = %2011
  %2054 = icmp eq i32 %2009, 4
  br i1 %2054, label %2055, label %2095

; <label>:2055                                    ; preds = %2053
  %2056 = fmul fast float %2014, %1787
  %2057 = fmul fast float %2014, %1788
  %2058 = fadd fast float %2056, %1172
  %2059 = fadd fast float %2057, %1173
  %2060 = call float @dx.op.binary.f32(i32 36, float %1186, float %1789)  ; FMin(a,b)
  %2061 = fsub fast float %2060, %1186
  %2062 = fmul fast float %2061, %2017
  %2063 = fadd fast float %2062, %1186
  %2064 = fadd fast float %1786, %1185
  %2065 = fmul fast float %2064, 0x3FF337FAE0000000
  %2066 = fmul fast float %1185, %1185
  %2067 = fmul fast float %1786, %1786
  %2068 = fadd fast float %2067, %2066
  %2069 = fmul fast float %2068, 0x3FE5152B00000000
  %2070 = fmul fast float %1185, 0xBFCC1F85E0000000
  %2071 = fmul fast float %2070, %1786
  %2072 = fadd fast float %2071, 0xBFE1363700000000
  %2073 = fadd fast float %2072, %2065
  %2074 = fsub fast float %2073, %2069
  %2075 = fmul fast float %2064, 0x3FBA6F0D00000000
  %2076 = fmul fast float %2068, 0x3FD0432880000000
  %2077 = fmul fast float %1185, 0xBFEF110800000000
  %2078 = fmul fast float %2077, %1786
  %2079 = fadd fast float %2078, 1.000000e+00
  %2080 = fsub fast float %2079, %2075
  %2081 = fadd fast float %2080, %2076
  %2082 = fdiv fast float %2074, %2081
  %2083 = call float @dx.op.unary.f32(i32 7, float %2082)  ; Saturate(value)
  %2084 = fsub fast float %2083, %1185
  %2085 = fmul fast float %2084, %2020
  %2086 = fadd fast float %2085, %1185
  %2087 = fmul fast float %2023, %1889
  %2088 = fadd fast float %2087, %1187
  %2089 = fmul fast float %2026, %1886
  %2090 = fmul fast float %2026, %1887
  %2091 = fmul fast float %2026, %1888
  %2092 = fadd fast float %2089, %1180
  %2093 = fadd fast float %2090, %1181
  %2094 = fadd fast float %2091, %1182
  br label %2117

; <label>:2095                                    ; preds = %2053
  %2096 = icmp eq i32 %2009, 8
  br i1 %2096, label %2097, label %2117

; <label>:2097                                    ; preds = %2095
  %2098 = fmul fast float %2014, %1787
  %2099 = fmul fast float %2014, %1788
  %2100 = fadd fast float %2098, %1172
  %2101 = fadd fast float %2099, %1173
  %2102 = call float @dx.op.binary.f32(i32 36, float %1186, float %1789)  ; FMin(a,b)
  %2103 = fsub fast float %2102, %1186
  %2104 = fmul fast float %2103, %2017
  %2105 = fadd fast float %2104, %1186
  %2106 = fsub fast float %1786, %1185
  %2107 = fmul fast float %2020, %2106
  %2108 = fadd fast float %2107, %1185
  %2109 = fmul fast float %2023, %1889
  %2110 = fadd fast float %2109, %1187
  %2111 = fmul fast float %2026, %1886
  %2112 = fmul fast float %2026, %1887
  %2113 = fmul fast float %2026, %1888
  %2114 = fadd fast float %2111, %1180
  %2115 = fadd fast float %2112, %1181
  %2116 = fadd fast float %2113, %1182
  br label %2117

; <label>:2117                                    ; preds = %2097, %2095, %2055, %2028, %2000, %1485, %1189, %1171
  %2118 = phi float [ %1172, %2000 ], [ %1172, %1485 ], [ %1172, %1171 ], [ %2100, %2097 ], [ %1172, %2095 ], [ %2058, %2055 ], [ %2033, %2028 ], [ %1172, %1189 ]
  %2119 = phi float [ %1173, %2000 ], [ %1173, %1485 ], [ %1173, %1171 ], [ %2101, %2097 ], [ %1173, %2095 ], [ %2059, %2055 ], [ %2034, %2028 ], [ %1173, %1189 ]
  %2120 = phi float [ %2001, %2000 ], [ %1174, %1485 ], [ %1174, %1171 ], [ %2001, %2097 ], [ %2001, %2095 ], [ %2001, %2055 ], [ %2001, %2028 ], [ %1174, %1189 ]
  %2121 = phi float [ %2002, %2000 ], [ %1175, %1485 ], [ %1175, %1171 ], [ %2002, %2097 ], [ %2002, %2095 ], [ %2002, %2055 ], [ %2002, %2028 ], [ %1175, %1189 ]
  %2122 = phi float [ %2003, %2000 ], [ %1176, %1485 ], [ %1176, %1171 ], [ %2003, %2097 ], [ %2003, %2095 ], [ %2003, %2055 ], [ %2003, %2028 ], [ %1176, %1189 ]
  %2123 = phi float [ %2004, %2000 ], [ %1177, %1485 ], [ %1177, %1171 ], [ %2004, %2097 ], [ %2004, %2095 ], [ %2004, %2055 ], [ %2004, %2028 ], [ %1177, %1189 ]
  %2124 = phi float [ %2005, %2000 ], [ %1178, %1485 ], [ %1178, %1171 ], [ %2005, %2097 ], [ %2005, %2095 ], [ %2005, %2055 ], [ %2005, %2028 ], [ %1178, %1189 ]
  %2125 = phi float [ %2006, %2000 ], [ %1179, %1485 ], [ %1179, %1171 ], [ %2006, %2097 ], [ %2006, %2095 ], [ %2006, %2055 ], [ %2006, %2028 ], [ %1179, %1189 ]
  %2126 = phi float [ %1180, %2000 ], [ %1180, %1485 ], [ %1180, %1171 ], [ %2114, %2097 ], [ %1180, %2095 ], [ %2092, %2055 ], [ %2050, %2028 ], [ %1180, %1189 ]
  %2127 = phi float [ %1181, %2000 ], [ %1181, %1485 ], [ %1181, %1171 ], [ %2115, %2097 ], [ %1181, %2095 ], [ %2093, %2055 ], [ %2051, %2028 ], [ %1181, %1189 ]
  %2128 = phi float [ %1182, %2000 ], [ %1182, %1485 ], [ %1182, %1171 ], [ %2116, %2097 ], [ %1182, %2095 ], [ %2094, %2055 ], [ %2052, %2028 ], [ %1182, %1189 ]
  %2129 = phi float [ %2007, %2000 ], [ %1183, %1485 ], [ %1183, %1171 ], [ %2007, %2097 ], [ %2007, %2095 ], [ %2007, %2055 ], [ %2007, %2028 ], [ %1183, %1189 ]
  %2130 = phi float [ %1185, %2000 ], [ %1185, %1485 ], [ %1185, %1171 ], [ %2108, %2097 ], [ %1185, %2095 ], [ %2086, %2055 ], [ %2040, %2028 ], [ %1185, %1189 ]
  %2131 = phi float [ %1186, %2000 ], [ %1186, %1485 ], [ %1186, %1171 ], [ %2105, %2097 ], [ %1186, %2095 ], [ %2063, %2055 ], [ %2037, %2028 ], [ %1186, %1189 ]
  %2132 = phi float [ %1187, %2000 ], [ %1187, %1485 ], [ %1187, %1171 ], [ %2110, %2097 ], [ %1187, %2095 ], [ %2088, %2055 ], [ %2043, %2028 ], [ %1187, %1189 ]
  %2133 = phi float [ %2008, %2000 ], [ %1188, %1485 ], [ %1188, %1171 ], [ %2008, %2097 ], [ %2008, %2095 ], [ %2008, %2055 ], [ %2008, %2028 ], [ %1188, %1189 ]
  br i1 %404, label %3062, label %2134

; <label>:2134                                    ; preds = %2117
  %2135 = icmp ult i32 %460, 3
  %2136 = add i32 %50, 56
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = add i32 %50, 60
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = or i32 %2141, %2138
  %2143 = icmp eq i32 %2142, 0
  br i1 %2143, label %3062, label %2144

; <label>:2144                                    ; preds = %2134
  %2145 = and i32 %2138, 262144
  %2146 = icmp ne i32 %2145, 0
  %2147 = select i1 %2146, float %53, float 1.000000e+00
  %2148 = select i1 %2146, float %54, float 0.000000e+00
  %2149 = select i1 %2146, float %55, float 0.000000e+00
  %2150 = select i1 %2146, float %56, float 1.000000e+00
  %2151 = select i1 %2146, float %57, float %78
  %2152 = select i1 %2146, float %58, float %79
  %2153 = add i32 %50, 316
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = lshr i32 %2155, 16
  %2157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2156)  ; LegacyF16ToF32(value)
  %2158 = fmul fast float %2157, 0x3F50624DE0000000
  %2159 = add i32 %50, 120
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = lshr i32 %2161, 16
  %2163 = and i32 %2162, 255
  %2164 = lshr i32 %2161, 24
  %2165 = add i32 %50, 324
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2165, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = and i32 %2167, 65535
  %2169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2168)  ; LegacyF16ToF32(value)
  %2170 = lshr i32 %2167, 16
  %2171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2170)  ; LegacyF16ToF32(value)
  %2172 = add i32 %50, 64
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = lshr i32 %2174, 22
  %2176 = shl nuw nsw i32 %2175, 5
  %2177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2176)  ; LegacyF16ToF32(value)
  %2178 = shl i32 %2174, 4
  %2179 = and i32 %2178, 32752
  %2180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2179)  ; LegacyF16ToF32(value)
  %2181 = lshr i32 %2174, 7
  %2182 = and i32 %2181, 32752
  %2183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2182)  ; LegacyF16ToF32(value)
  %2184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.f32 %2184, 3
  %2186 = fmul fast float %2185, 1.000000e+03
  %2187 = fmul fast float %354, %2186
  %2188 = call float @dx.op.unary.f32(i32 22, float %2187)  ; Frc(value)
  %2189 = fadd fast float %2188, %344
  %2190 = fmul fast float %355, %2186
  %2191 = call float @dx.op.unary.f32(i32 22, float %2190)  ; Frc(value)
  %2192 = fadd fast float %2191, %346
  %2193 = fmul fast float %2158, %2186
  %2194 = call float @dx.op.unary.f32(i32 22, float %2193)  ; Frc(value)
  %2195 = fmul fast float %2194, 0x401921FB60000000
  %2196 = fadd fast float %2195, %2177
  %2197 = call float @dx.op.unary.f32(i32 13, float %2196)  ; Sin(value)
  %2198 = call float @dx.op.unary.f32(i32 12, float %2196)  ; Cos(value)
  %2199 = fsub fast float -0.000000e+00, %2197
  %2200 = fadd fast float %2151, -5.000000e-01
  %2201 = fadd fast float %2152, -5.000000e-01
  %2202 = fmul fast float %2169, %2200
  %2203 = fmul fast float %2171, %2201
  %2204 = fadd fast float %2202, 5.000000e-01
  %2205 = fadd fast float %2203, 5.000000e-01
  %2206 = fmul fast float %2180, %2204
  %2207 = fmul fast float %2183, %2205
  %2208 = fmul fast float %2198, %2206
  %2209 = call float @dx.op.tertiary.f32(i32 46, float %2199, float %2207, float %2208)  ; FMad(a,b,c)
  %2210 = fmul fast float %2197, %2206
  %2211 = call float @dx.op.tertiary.f32(i32 46, float %2198, float %2207, float %2210)  ; FMad(a,b,c)
  %2212 = fadd fast float %2189, %2209
  %2213 = fadd fast float %2192, %2211
  %2214 = icmp ugt i32 %2163, 1
  %2215 = icmp ugt i32 %2161, 33554431
  %2216 = or i1 %2215, %2214
  br i1 %2216, label %2217, label %2242

; <label>:2217                                    ; preds = %2144
  %2218 = add i32 %50, 260
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2218, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = lshr i32 %2220, 16
  %2222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2221)  ; LegacyF16ToF32(value)
  %2223 = fmul fast float %2185, %2222
  %2224 = call float @dx.op.unary.f32(i32 22, float %2223)  ; Frc(value)
  %2225 = mul nuw nsw i32 %2163, %2164
  %2226 = uitofp i32 %2225 to float
  %2227 = fmul fast float %2224, %2226
  %2228 = call float @dx.op.unary.f32(i32 27, float %2227)  ; Round_ni(value)
  %2229 = fptoui float %2228 to i32
  %2230 = urem i32 %2229, %2163
  %2231 = udiv i32 %2229, %2164
  %2232 = call float @dx.op.unary.f32(i32 22, float %2212)  ; Frc(value)
  %2233 = call float @dx.op.unary.f32(i32 22, float %2213)  ; Frc(value)
  %2234 = uitofp i32 %2230 to float
  %2235 = uitofp i32 %2231 to float
  %2236 = fadd fast float %2232, %2234
  %2237 = fadd fast float %2233, %2235
  %2238 = uitofp i32 %2163 to float
  %2239 = uitofp i32 %2164 to float
  %2240 = fdiv fast float %2236, %2238
  %2241 = fdiv fast float %2237, %2239
  br label %2242

; <label>:2242                                    ; preds = %2217, %2144
  %2243 = phi float [ %2240, %2217 ], [ %2212, %2144 ]
  %2244 = phi float [ %2241, %2217 ], [ %2213, %2144 ]
  %2245 = and i32 %2138, 16777216
  %2246 = icmp eq i32 %2245, 0
  br i1 %2246, label %2356, label %2247

; <label>:2247                                    ; preds = %2242
  %2248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2249 = extractvalue %dx.types.CBufRet.f32 %2248, 0
  %2250 = extractvalue %dx.types.CBufRet.f32 %2248, 1
  %2251 = extractvalue %dx.types.CBufRet.f32 %2248, 2
  %2252 = fadd fast float %2249, %154
  %2253 = fadd fast float %2250, %155
  %2254 = fadd fast float %2251, %156
  %2255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2256 = extractvalue %dx.types.CBufRet.f32 %2255, 0
  %2257 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2258 = icmp eq i32 %51, 65535
  br i1 %2258, label %2353, label %2259

; <label>:2259                                    ; preds = %2247
  %2260 = lshr i32 %51, 1
  %2261 = shl i32 %2260, 2
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = and i32 %51, 1
  %2265 = icmp ne i32 %2264, 0
  %2266 = lshr i32 %2263, 16
  %2267 = and i32 %2263, 65535
  %2268 = select i1 %2265, i32 %2266, i32 %2267
  %2269 = icmp eq i32 %2268, 65535
  br i1 %2269, label %2349, label %2270

; <label>:2270                                    ; preds = %2259
  %2271 = mul nuw nsw i32 %2268, 40
  %2272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.f32 %2272, 0
  %2274 = extractvalue %dx.types.ResRet.f32 %2272, 1
  %2275 = extractvalue %dx.types.ResRet.f32 %2272, 2
  %2276 = add nuw nsw i32 %2271, 12
  %2277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.f32 %2277, 0
  %2279 = extractvalue %dx.types.ResRet.f32 %2277, 1
  %2280 = extractvalue %dx.types.ResRet.f32 %2277, 2
  %2281 = add nuw nsw i32 %2271, 24
  %2282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2281, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.f32 %2282, 0
  %2284 = extractvalue %dx.types.ResRet.f32 %2282, 1
  %2285 = extractvalue %dx.types.ResRet.f32 %2282, 2
  %2286 = add nuw nsw i32 %2271, 36
  %2287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2286, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.f32 %2287, 0
  %2289 = fsub fast float %2252, %2273
  %2290 = fsub fast float %2253, %2274
  %2291 = fsub fast float %2254, %2275
  %2292 = fmul fast float %2288, %2289
  %2293 = fmul fast float %2288, %2290
  %2294 = fmul fast float %2288, %2291
  %2295 = call float @dx.op.unary.f32(i32 27, float %2292)  ; Round_ni(value)
  %2296 = call float @dx.op.unary.f32(i32 27, float %2293)  ; Round_ni(value)
  %2297 = call float @dx.op.unary.f32(i32 27, float %2294)  ; Round_ni(value)
  %2298 = fadd fast float %2295, 5.000000e-01
  %2299 = fadd fast float %2296, 5.000000e-01
  %2300 = fadd fast float %2297, 5.000000e-01
  %2301 = fmul fast float %2298, %2278
  %2302 = fmul fast float %2299, %2279
  %2303 = fmul fast float %2300, %2280
  %2304 = shl i32 %51, 2
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = add i32 %2306, 0
  %2308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2307, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2309 = call float @dx.op.unary.f32(i32 22, float %2301)  ; Frc(value)
  %2310 = call float @dx.op.unary.f32(i32 22, float %2302)  ; Frc(value)
  %2311 = call float @dx.op.unary.f32(i32 22, float %2303)  ; Frc(value)
  %2312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2308, %dx.types.Handle %45, float %2309, float %2310, float %2311, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2313 = extractvalue %dx.types.ResRet.f32 %2312, 0
  %2314 = extractvalue %dx.types.ResRet.f32 %2312, 1
  %2315 = extractvalue %dx.types.ResRet.f32 %2312, 2
  %2316 = fmul fast float %2313, 1.023000e+03
  %2317 = fmul fast float %2314, 1.023000e+03
  %2318 = fmul fast float %2315, 1.023000e+03
  %2319 = fadd fast float %2316, 5.000000e-01
  %2320 = fadd fast float %2317, 5.000000e-01
  %2321 = fadd fast float %2318, 5.000000e-01
  %2322 = call float @dx.op.unary.f32(i32 27, float %2319)  ; Round_ni(value)
  %2323 = call float @dx.op.unary.f32(i32 27, float %2320)  ; Round_ni(value)
  %2324 = call float @dx.op.unary.f32(i32 27, float %2321)  ; Round_ni(value)
  %2325 = fsub fast float %2292, %2295
  %2326 = fsub fast float %2293, %2296
  %2327 = fsub fast float %2294, %2297
  %2328 = fmul fast float %2325, 7.500000e-01
  %2329 = fmul fast float %2326, 7.500000e-01
  %2330 = fmul fast float %2327, 7.500000e-01
  %2331 = fadd fast float %2295, 1.250000e-01
  %2332 = fadd fast float %2331, %2328
  %2333 = fadd fast float %2332, %2322
  %2334 = fadd fast float %2296, 1.250000e-01
  %2335 = fadd fast float %2334, %2329
  %2336 = fadd fast float %2335, %2323
  %2337 = fadd fast float %2297, 1.250000e-01
  %2338 = fadd fast float %2337, %2330
  %2339 = fadd fast float %2338, %2324
  %2340 = fmul fast float %2333, %2283
  %2341 = fmul fast float %2336, %2284
  %2342 = fmul fast float %2339, %2285
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = add i32 %2344, 0
  %2346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2346, %dx.types.Handle %43, float %2340, float %2341, float %2342, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2348 = extractvalue %dx.types.ResRet.f32 %2347, 0
  br label %2349

; <label>:2349                                    ; preds = %2270, %2259
  %2350 = phi float [ %2348, %2270 ], [ -1.000000e+00, %2259 ]
  %2351 = fadd fast float %2350, %2257
  %2352 = call float @dx.op.unary.f32(i32 7, float %2351)  ; Saturate(value)
  br label %2353

; <label>:2353                                    ; preds = %2349, %2247
  %2354 = phi float [ %2352, %2349 ], [ %2257, %2247 ]
  %2355 = fmul fast float %2354, %456
  br label %2356

; <label>:2356                                    ; preds = %2353, %2242
  %2357 = phi float [ %2355, %2353 ], [ %456, %2242 ]
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 256
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %2408, label %2362

; <label>:2362                                    ; preds = %2356
  %2363 = add i32 %50, 432
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = add i32 %2365, 0
  %2367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2367, %dx.types.Handle %96, float %2243, float %2244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2369 = extractvalue %dx.types.ResRet.f32 %2368, 0
  %2370 = add i32 %50, 132
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = shl i32 %2372, 4
  %2374 = and i32 %2373, 32752
  %2375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2374)  ; LegacyF16ToF32(value)
  %2376 = lshr i32 %2372, 7
  %2377 = and i32 %2376, 32752
  %2378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2377)  ; LegacyF16ToF32(value)
  %2379 = fsub fast float 1.000000e+00, %2357
  %2380 = call float @dx.op.binary.f32(i32 35, float %2379, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2381 = bitcast float %2357 to i32
  %2382 = sitofp i32 %2381 to float
  %2383 = fadd fast float %2382, 0xC1CFBF8940000000
  %2384 = fmul fast float %2378, %2383
  %2385 = fadd fast float %2384, 0x41CFBF8940000000
  %2386 = fptosi float %2385 to i32
  %2387 = bitcast i32 %2386 to float
  %2388 = bitcast float %2380 to i32
  %2389 = sitofp i32 %2388 to float
  %2390 = fadd fast float %2389, 0xC1CFBF8940000000
  %2391 = fmul fast float %2390, %2378
  %2392 = fadd fast float %2391, 0x41CFBF8940000000
  %2393 = fptosi float %2392 to i32
  %2394 = bitcast i32 %2393 to float
  %2395 = fmul fast float %2387, %2375
  %2396 = fmul fast float %2394, %2375
  %2397 = fsub fast float %2380, %2395
  %2398 = fadd fast float %2396, %2380
  %2399 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  %2400 = call float @dx.op.unary.f32(i32 7, float %2398)  ; Saturate(value)
  %2401 = fsub fast float %2369, %2399
  %2402 = fsub fast float %2400, %2399
  %2403 = bitcast float %2402 to i32
  %2404 = sub nsw i32 2129859010, %2403
  %2405 = bitcast i32 %2404 to float
  %2406 = fmul fast float %2405, %2401
  %2407 = call float @dx.op.unary.f32(i32 7, float %2406)  ; Saturate(value)
  br label %2408

; <label>:2408                                    ; preds = %2362, %2356
  %2409 = phi float [ %2407, %2362 ], [ %2357, %2356 ]
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = and i32 %2411, 128
  %2413 = icmp eq i32 %2412, 0
  br i1 %2413, label %2430, label %2414

; <label>:2414                                    ; preds = %2408
  %2415 = add i32 %50, 416
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = add i32 %2417, 0
  %2419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2418, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2419, %dx.types.Handle %96, float %2243, float %2244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2421 = extractvalue %dx.types.ResRet.f32 %2420, 0
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = and i32 %2423, 524288
  %2425 = icmp ne i32 %2424, 0
  %2426 = fcmp fast ogt float %2421, 0x3FE0101020000000
  %2427 = select i1 %2426, float 1.000000e+00, float 0.000000e+00
  %2428 = select i1 %2425, float %2427, float %2421
  %2429 = fmul fast float %2428, %2409
  br label %2430

; <label>:2430                                    ; preds = %2414, %2408
  %2431 = phi float [ %2429, %2414 ], [ %2409, %2408 ]
  %2432 = fcmp fast ult float %2431, 0x3F70101020000000
  br i1 %2432, label %3062, label %2433

; <label>:2433                                    ; preds = %2430
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = and i32 %2435, 16
  %2437 = icmp eq i32 %2436, 0
  br i1 %2437, label %2636, label %2438

; <label>:2438                                    ; preds = %2433
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = add i32 %50, 368
  %2442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2441, i32 undef)  ; BufferLoad(srv,index,wot)
  %2443 = extractvalue %dx.types.ResRet.i32 %2442, 0
  %2444 = add i32 %2443, 0
  %2445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2444, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2445, %dx.types.Handle %95, float %2243, float %2244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2447 = extractvalue %dx.types.ResRet.f32 %2446, 0
  %2448 = extractvalue %dx.types.ResRet.f32 %2446, 1
  %2449 = extractvalue %dx.types.ResRet.f32 %2446, 2
  %2450 = extractvalue %dx.types.ResRet.f32 %2446, 3
  %2451 = and i32 %2440, 255
  %2452 = uitofp i32 %2451 to float
  %2453 = lshr i32 %2440, 8
  %2454 = and i32 %2453, 255
  %2455 = uitofp i32 %2454 to float
  %2456 = fmul fast float %2450, %2452
  %2457 = fadd fast float %2456, %2455
  %2458 = fmul fast float %2457, 0x3F70101000000000
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = and i32 %2460, 512
  %2462 = icmp eq i32 %2461, 0
  br i1 %2462, label %2471, label %2463

; <label>:2463                                    ; preds = %2438
  %2464 = add i32 %50, 448
  %2465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2464, i32 undef)  ; BufferLoad(srv,index,wot)
  %2466 = extractvalue %dx.types.ResRet.i32 %2465, 0
  %2467 = add i32 %2466, 0
  %2468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2469 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2468, %dx.types.Handle %96, float %2243, float %2244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2470 = extractvalue %dx.types.ResRet.f32 %2469, 0
  br label %2471

; <label>:2471                                    ; preds = %2463, %2438
  %2472 = phi float [ %2470, %2463 ], [ 1.000000e+00, %2438 ]
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = and i32 %2474, 33554432
  %2476 = icmp eq i32 %2475, 0
  br i1 %2476, label %2583, label %2477

; <label>:2477                                    ; preds = %2471
  %2478 = add i32 %50, 256
  %2479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2478, i32 undef)  ; BufferLoad(srv,index,wot)
  %2480 = extractvalue %dx.types.ResRet.i32 %2479, 0
  %2481 = and i32 %2480, 65535
  %2482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2481)  ; LegacyF16ToF32(value)
  %2483 = lshr i32 %2480, 16
  %2484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2483)  ; LegacyF16ToF32(value)
  %2485 = add i32 %50, 260
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = and i32 %2487, 65535
  %2489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2488)  ; LegacyF16ToF32(value)
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = lshr i32 %2491, 24
  %2493 = uitofp i32 %2492 to float
  %2494 = fmul fast float %2493, 0x3F70101020000000
  %2495 = and i32 %2491, 255
  %2496 = uitofp i32 %2495 to float
  %2497 = fmul fast float %2496, 0x3F70101020000000
  %2498 = lshr i32 %2491, 8
  %2499 = and i32 %2498, 255
  %2500 = uitofp i32 %2499 to float
  %2501 = fmul fast float %2500, 0x3F70101020000000
  %2502 = lshr i32 %2491, 16
  %2503 = and i32 %2502, 255
  %2504 = uitofp i32 %2503 to float
  %2505 = fmul fast float %2504, 0x3F70101020000000
  %2506 = add i32 %50, 252
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = lshr i32 %2508, 24
  %2510 = uitofp i32 %2509 to float
  %2511 = fmul fast float %2510, 0x3F70101020000000
  %2512 = and i32 %2508, 255
  %2513 = uitofp i32 %2512 to float
  %2514 = fmul fast float %2513, 0x3F70101020000000
  %2515 = lshr i32 %2508, 8
  %2516 = and i32 %2515, 255
  %2517 = uitofp i32 %2516 to float
  %2518 = fmul fast float %2517, 0x3F70101020000000
  %2519 = lshr i32 %2508, 16
  %2520 = and i32 %2519, 255
  %2521 = uitofp i32 %2520 to float
  %2522 = fmul fast float %2521, 0x3F70101020000000
  %2523 = bitcast float %2447 to i32
  %2524 = ashr i32 %2523, 1
  %2525 = sub nsw i32 1597463174, %2524
  %2526 = bitcast i32 %2525 to float
  %2527 = fmul fast float %2447, 5.000000e-01
  %2528 = fmul fast float %2526, %2526
  %2529 = fmul fast float %2528, %2527
  %2530 = fsub fast float 1.500000e+00, %2529
  %2531 = fmul fast float %2526, %2447
  %2532 = fmul fast float %2531, %2530
  %2533 = bitcast float %2448 to i32
  %2534 = ashr i32 %2533, 1
  %2535 = sub nsw i32 1597463174, %2534
  %2536 = bitcast i32 %2535 to float
  %2537 = fmul fast float %2448, 5.000000e-01
  %2538 = fmul fast float %2536, %2536
  %2539 = fmul fast float %2538, %2537
  %2540 = fsub fast float 1.500000e+00, %2539
  %2541 = fmul fast float %2536, %2448
  %2542 = fmul fast float %2541, %2540
  %2543 = bitcast float %2449 to i32
  %2544 = ashr i32 %2543, 1
  %2545 = sub nsw i32 1597463174, %2544
  %2546 = bitcast i32 %2545 to float
  %2547 = fmul fast float %2449, 5.000000e-01
  %2548 = fmul fast float %2546, %2546
  %2549 = fmul fast float %2548, %2547
  %2550 = fsub fast float 1.500000e+00, %2549
  %2551 = fmul fast float %2546, %2449
  %2552 = fmul fast float %2551, %2550
  %2553 = fsub fast float %2532, %2514
  %2554 = fsub fast float %2542, %2518
  %2555 = fsub fast float %2552, %2522
  %2556 = fmul fast float %2553, %2482
  %2557 = fmul fast float %2554, %2484
  %2558 = fmul fast float %2555, %2489
  %2559 = fadd fast float %2556, %2497
  %2560 = fadd fast float %2557, %2501
  %2561 = fadd fast float %2558, %2505
  %2562 = call float @dx.op.unary.f32(i32 7, float %2559)  ; Saturate(value)
  %2563 = call float @dx.op.unary.f32(i32 7, float %2560)  ; Saturate(value)
  %2564 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  %2565 = fmul fast float %2562, %2562
  %2566 = fmul fast float %2563, %2563
  %2567 = fmul fast float %2564, %2564
  %2568 = fsub fast float %2565, %2447
  %2569 = fsub fast float %2566, %2448
  %2570 = fsub fast float %2567, %2449
  %2571 = fmul fast float %2568, %2472
  %2572 = fmul fast float %2569, %2472
  %2573 = fmul fast float %2570, %2472
  %2574 = fadd fast float %2571, %2447
  %2575 = fadd fast float %2572, %2448
  %2576 = fadd fast float %2573, %2449
  %2577 = fadd fast float %2494, %2458
  %2578 = fsub fast float %2577, %2511
  %2579 = call float @dx.op.unary.f32(i32 7, float %2578)  ; Saturate(value)
  %2580 = fsub fast float %2579, %2458
  %2581 = fmul fast float %2580, %2472
  %2582 = fadd fast float %2581, %2458
  br label %2636

; <label>:2583                                    ; preds = %2471
  %2584 = and i32 %2474, 134217728
  %2585 = icmp eq i32 %2584, 0
  br i1 %2585, label %2620, label %2586

; <label>:2586                                    ; preds = %2583
  %2587 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %2588 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %2589 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %2590 = fadd fast float %2587, -5.000000e-01
  %2591 = fadd fast float %2588, -5.000000e-01
  %2592 = fadd fast float %2589, -5.000000e-01
  %2593 = fmul fast float %2590, %2472
  %2594 = fmul fast float %2591, %2472
  %2595 = fmul fast float %2592, %2472
  %2596 = fadd fast float %2593, 5.000000e-01
  %2597 = fadd fast float %2594, 5.000000e-01
  %2598 = fadd fast float %2595, 5.000000e-01
  %2599 = call float @dx.op.unary.f32(i32 24, float %2447)  ; Sqrt(value)
  %2600 = call float @dx.op.unary.f32(i32 24, float %2448)  ; Sqrt(value)
  %2601 = call float @dx.op.unary.f32(i32 24, float %2449)  ; Sqrt(value)
  %2602 = fmul fast float %2596, 2.000000e+00
  %2603 = fsub fast float 1.000000e+00, %2602
  %2604 = fmul fast float %2603, %2599
  %2605 = fadd fast float %2604, %2602
  %2606 = fmul fast float %2605, %2599
  %2607 = fmul fast float %2597, 2.000000e+00
  %2608 = fsub fast float 1.000000e+00, %2607
  %2609 = fmul fast float %2608, %2600
  %2610 = fadd fast float %2609, %2607
  %2611 = fmul fast float %2610, %2600
  %2612 = fmul fast float %2598, 2.000000e+00
  %2613 = fsub fast float 1.000000e+00, %2612
  %2614 = fmul fast float %2613, %2601
  %2615 = fadd fast float %2614, %2612
  %2616 = fmul fast float %2615, %2601
  %2617 = fmul fast float %2606, %2606
  %2618 = fmul fast float %2611, %2611
  %2619 = fmul fast float %2616, %2616
  br label %2636

; <label>:2620                                    ; preds = %2583
  %2621 = fmul fast float %331, %331
  %2622 = fmul fast float %335, %335
  %2623 = fmul fast float %339, %339
  %2624 = fadd fast float %2621, -1.000000e+00
  %2625 = fadd fast float %2622, -1.000000e+00
  %2626 = fadd fast float %2623, -1.000000e+00
  %2627 = fmul fast float %2472, %2624
  %2628 = fmul fast float %2472, %2625
  %2629 = fmul fast float %2472, %2626
  %2630 = fadd fast float %2627, 1.000000e+00
  %2631 = fadd fast float %2628, 1.000000e+00
  %2632 = fadd fast float %2629, 1.000000e+00
  %2633 = fmul fast float %2630, %2447
  %2634 = fmul fast float %2631, %2448
  %2635 = fmul fast float %2632, %2449
  br label %2636

; <label>:2636                                    ; preds = %2620, %2586, %2477, %2433
  %2637 = phi float [ %2582, %2477 ], [ %2458, %2586 ], [ %2458, %2620 ], [ 0x3FA23C0BE0000000, %2433 ]
  %2638 = phi float [ %2574, %2477 ], [ %2617, %2586 ], [ %2633, %2620 ], [ 1.000000e+00, %2433 ]
  %2639 = phi float [ %2575, %2477 ], [ %2618, %2586 ], [ %2634, %2620 ], [ 1.000000e+00, %2433 ]
  %2640 = phi float [ %2576, %2477 ], [ %2619, %2586 ], [ %2635, %2620 ], [ 1.000000e+00, %2433 ]
  %2641 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2642 = extractvalue %dx.types.CBufRet.i32 %2641, 1
  %2643 = and i32 %2642, 1
  %2644 = icmp ne i32 %2643, 0
  %2645 = add i32 %50, 356
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 32
  %2649 = icmp ne i32 %2648, 0
  %2650 = and i1 %2644, %2649
  %2651 = select i1 %2650, float 1.000000e+00, float %2638
  %2652 = select i1 %2650, float 0x3FD3333340000000, float %2639
  %2653 = select i1 %2650, float 0x3FD3333340000000, float %2640
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = and i32 %2655, 32
  %2657 = icmp eq i32 %2656, 0
  br i1 %2657, label %2730, label %2658

; <label>:2658                                    ; preds = %2636
  %2659 = add i32 %50, 124
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2659, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = add i32 %50, 384
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2662, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = add i32 %2664, 0
  %2666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2665, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2667 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2666, %dx.types.Handle %95, float %2243, float %2244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2668 = extractvalue %dx.types.ResRet.f32 %2667, 0
  %2669 = extractvalue %dx.types.ResRet.f32 %2667, 1
  %2670 = extractvalue %dx.types.ResRet.f32 %2667, 2
  %2671 = extractvalue %dx.types.ResRet.f32 %2667, 3
  %2672 = and i32 %2661, 255
  %2673 = uitofp i32 %2672 to float
  %2674 = lshr i32 %2661, 8
  %2675 = and i32 %2674, 255
  %2676 = uitofp i32 %2675 to float
  %2677 = lshr i32 %2661, 16
  %2678 = and i32 %2677, 255
  %2679 = uitofp i32 %2678 to float
  %2680 = fmul fast float %2679, 0x3F70101000000000
  %2681 = fmul fast float %2668, %2673
  %2682 = fadd fast float %2681, %2676
  %2683 = fmul fast float %2682, 0x3F70101000000000
  %2684 = fadd fast float %2669, -5.000000e-01
  %2685 = fadd fast float %2671, -5.000000e-01
  %2686 = fmul fast float %2684, %2680
  %2687 = fmul fast float %2685, %2680
  %2688 = fadd fast float %2686, 5.000000e-01
  %2689 = fadd fast float %2687, 5.000000e-01
  %2690 = fmul fast float %2688, 2.000000e+00
  %2691 = fadd fast float %2690, -1.000000e+00
  %2692 = fmul fast float %2689, 2.000000e+00
  %2693 = fadd fast float %2692, -1.000000e+00
  %2694 = fadd fast float %2691, %2693
  %2695 = fmul fast float %2694, 5.000000e-01
  %2696 = fsub fast float %2691, %2693
  %2697 = fmul fast float %2696, 5.000000e-01
  %2698 = call float @dx.op.unary.f32(i32 6, float %2695)  ; FAbs(value)
  %2699 = fsub fast float 1.000000e+00, %2698
  %2700 = call float @dx.op.unary.f32(i32 6, float %2697)  ; FAbs(value)
  %2701 = fsub fast float %2699, %2700
  %2702 = call float @dx.op.dot3.f32(i32 55, float %2695, float %2697, float %2701, float %2695, float %2697, float %2701)  ; Dot3(ax,ay,az,bx,by,bz)
  %2703 = call float @dx.op.unary.f32(i32 25, float %2702)  ; Rsqrt(value)
  %2704 = fmul fast float %2695, %2703
  %2705 = fmul fast float %2697, %2703
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = and i32 %2707, 67108864
  %2709 = icmp eq i32 %2708, 0
  br i1 %2709, label %2726, label %2710

; <label>:2710                                    ; preds = %2658
  %2711 = add i32 %50, 312
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %2713, 65535
  %2715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2714)  ; LegacyF16ToF32(value)
  %2716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.i32 %2716, 0
  %2718 = and i32 %2717, 65535
  %2719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2718)  ; LegacyF16ToF32(value)
  %2720 = lshr i32 %2713, 16
  %2721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2720)  ; LegacyF16ToF32(value)
  %2722 = fsub fast float %2683, %2721
  %2723 = fmul fast float %2722, %2715
  %2724 = fadd fast float %2723, %2719
  %2725 = call float @dx.op.unary.f32(i32 7, float %2724)  ; Saturate(value)
  br label %2726

; <label>:2726                                    ; preds = %2710, %2658
  %2727 = phi float [ %2725, %2710 ], [ %2683, %2658 ]
  %2728 = call float @dx.op.dot2.f32(i32 54, float %2704, float %2705, float %2147, float %2148)  ; Dot2(ax,ay,bx,by)
  %2729 = call float @dx.op.dot2.f32(i32 54, float %2704, float %2705, float %2149, float %2150)  ; Dot2(ax,ay,bx,by)
  br label %2730

; <label>:2730                                    ; preds = %2726, %2636
  %2731 = phi float [ %2727, %2726 ], [ 0x3FD6666660000000, %2636 ]
  %2732 = phi float [ %2728, %2726 ], [ 0.000000e+00, %2636 ]
  %2733 = phi float [ %2729, %2726 ], [ 0.000000e+00, %2636 ]
  %2734 = phi float [ %2670, %2726 ], [ 1.000000e+00, %2636 ]
  %2735 = add i32 %50, 192
  %2736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %2737 = extractvalue %dx.types.ResRet.i32 %2736, 0
  %2738 = lshr i32 %2737, 22
  %2739 = shl nuw nsw i32 %2738, 5
  %2740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2739)  ; LegacyF16ToF32(value)
  %2741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.i32 %2741, 0
  %2743 = and i32 %2742, 64
  %2744 = icmp eq i32 %2743, 0
  br i1 %2744, label %2778, label %2745

; <label>:2745                                    ; preds = %2730
  %2746 = add i32 %50, 400
  %2747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.i32 %2747, 0
  %2749 = add i32 %2748, 0
  %2750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = and i32 %2752, 131072
  %2754 = icmp eq i32 %2753, 0
  %2755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2750, %dx.types.Handle %95, float %2243, float %2244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2756 = extractvalue %dx.types.ResRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.ResRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.ResRet.f32 %2755, 2
  %2759 = fmul fast float %2756, %319
  %2760 = fmul fast float %2757, %322
  %2761 = fmul fast float %2758, %325
  br i1 %2754, label %2768, label %2762

; <label>:2762                                    ; preds = %2745
  %2763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2764 = extractvalue %dx.types.CBufRet.f32 %2763, 0
  %2765 = fmul fast float %2764, %2759
  %2766 = fmul fast float %2764, %2760
  %2767 = fmul fast float %2764, %2761
  br label %2768

; <label>:2768                                    ; preds = %2762, %2745
  %2769 = phi float [ %2765, %2762 ], [ %2759, %2745 ]
  %2770 = phi float [ %2766, %2762 ], [ %2760, %2745 ]
  %2771 = phi float [ %2767, %2762 ], [ %2761, %2745 ]
  %2772 = fmul fast float %2769, %2740
  %2773 = select i1 %215, float %2772, float %2769
  %2774 = call float @dx.op.dot3.f32(i32 55, float %2773, float %2770, float %2771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2775 = select i1 %215, float 0.000000e+00, float %2769
  %2776 = select i1 %215, float %2774, float %2770
  %2777 = select i1 %215, float 0.000000e+00, float %2771
  br label %2778

; <label>:2778                                    ; preds = %2768, %2730
  %2779 = phi float [ %2775, %2768 ], [ 0.000000e+00, %2730 ]
  %2780 = phi float [ %2776, %2768 ], [ 0.000000e+00, %2730 ]
  %2781 = phi float [ %2777, %2768 ], [ 0.000000e+00, %2730 ]
  %2782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2783 = extractvalue %dx.types.ResRet.i32 %2782, 0
  %2784 = and i32 %2783, 10240
  %2785 = icmp eq i32 %2784, 0
  br i1 %2785, label %2830, label %2786

; <label>:2786                                    ; preds = %2778
  %2787 = add i32 %50, 464
  %2788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2789 = extractvalue %dx.types.ResRet.i32 %2788, 0
  %2790 = add i32 %2789, 0
  %2791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2791, %dx.types.Handle %96, float %2243, float %2244, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2793 = extractvalue %dx.types.ResRet.f32 %2792, 1
  %2794 = extractvalue %dx.types.ResRet.f32 %2792, 3
  %2795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2796 = extractvalue %dx.types.ResRet.i32 %2795, 0
  %2797 = and i32 %2796, 1048576
  %2798 = icmp ne i32 %2797, 0
  %2799 = and i32 %2796, 8192
  %2800 = icmp eq i32 %2799, 0
  br i1 %2800, label %2816, label %2801

; <label>:2801                                    ; preds = %2786
  %2802 = extractvalue %dx.types.ResRet.f32 %2792, 2
  %2803 = select i1 %2798, float %2802, float %2793
  %2804 = extractvalue %dx.types.ResRet.f32 %2792, 0
  %2805 = select i1 %2798, float %2804, float %2793
  %2806 = add i32 %50, 128
  %2807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2808 = extractvalue %dx.types.ResRet.i32 %2807, 0
  %2809 = lshr i32 %2808, 16
  %2810 = and i32 %2809, 255
  %2811 = uitofp i32 %2810 to float
  %2812 = fmul fast float %2811, 0x3F80101020000000
  %2813 = fmul fast float %2812, %2805
  %2814 = fmul fast float %2812, %2793
  %2815 = fmul fast float %2812, %2803
  br label %2816

; <label>:2816                                    ; preds = %2801, %2786
  %2817 = phi float [ %2813, %2801 ], [ 0.000000e+00, %2786 ]
  %2818 = phi float [ %2814, %2801 ], [ 0.000000e+00, %2786 ]
  %2819 = phi float [ %2815, %2801 ], [ 0.000000e+00, %2786 ]
  %2820 = and i32 %2796, 2048
  %2821 = icmp eq i32 %2820, 0
  br i1 %2821, label %2830, label %2822

; <label>:2822                                    ; preds = %2816
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = shl i32 %2824, 4
  %2826 = and i32 %2825, 32752
  %2827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2826)  ; LegacyF16ToF32(value)
  %2828 = fmul fast float %2827, %2794
  %2829 = call float @dx.op.binary.f32(i32 35, float %2828, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2830

; <label>:2830                                    ; preds = %2822, %2816, %2778
  %2831 = phi float [ %2817, %2822 ], [ %2817, %2816 ], [ 0.000000e+00, %2778 ]
  %2832 = phi float [ %2818, %2822 ], [ %2818, %2816 ], [ 0.000000e+00, %2778 ]
  %2833 = phi float [ %2819, %2822 ], [ %2819, %2816 ], [ 0.000000e+00, %2778 ]
  %2834 = phi float [ %2829, %2822 ], [ 0x3F70101020000000, %2816 ], [ 0x3F70101020000000, %2778 ]
  %2835 = add i32 %50, 128
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = and i32 %2837, 255
  %2839 = uitofp i32 %2838 to float
  %2840 = lshr i32 %2837, 8
  %2841 = and i32 %2840, 255
  %2842 = uitofp i32 %2841 to float
  %2843 = call float @dx.op.dot3.f32(i32 55, float %2651, float %2652, float %2653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2844 = fmul fast float %2842, %2843
  %2845 = fadd fast float %2844, %2839
  %2846 = fmul fast float %2845, 0x3F70101020000000
  %2847 = call float @dx.op.unary.f32(i32 7, float %2846)  ; Saturate(value)
  br i1 %2135, label %2848, label %2856

; <label>:2848                                    ; preds = %2830
  %2849 = fsub fast float 1.000000e+00, %2431
  %2850 = fmul fast float %2849, %2120
  %2851 = fmul fast float %2849, %2121
  %2852 = fmul fast float %2849, %2122
  %2853 = fmul fast float %2849, %2123
  %2854 = fmul fast float %2849, %2124
  %2855 = fmul fast float %2849, %2125
  br label %2856

; <label>:2856                                    ; preds = %2848, %2830
  %2857 = phi float [ %2850, %2848 ], [ %2120, %2830 ]
  %2858 = phi float [ %2851, %2848 ], [ %2121, %2830 ]
  %2859 = phi float [ %2852, %2848 ], [ %2122, %2830 ]
  %2860 = phi float [ %2853, %2848 ], [ %2123, %2830 ]
  %2861 = phi float [ %2854, %2848 ], [ %2124, %2830 ]
  %2862 = phi float [ %2855, %2848 ], [ %2125, %2830 ]
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = and i32 %2864, 3
  %2866 = icmp eq i32 %2865, 3
  br i1 %2866, label %2945, label %2867

; <label>:2867                                    ; preds = %2856
  %2868 = and i32 %2864, 16
  %2869 = icmp ne i32 %2868, 0
  %2870 = select i1 %2869, float %2431, float 0.000000e+00
  %2871 = icmp eq i32 %2865, 0
  br i1 %2871, label %2872, label %2900

; <label>:2872                                    ; preds = %2867
  %2873 = and i32 %2864, 64
  %2874 = icmp ne i32 %2873, 0
  %2875 = select i1 %2874, float %2431, float 0.000000e+00
  %2876 = fsub fast float %2651, %2857
  %2877 = fsub fast float %2652, %2858
  %2878 = fsub fast float %2653, %2859
  %2879 = fmul fast float %2870, %2876
  %2880 = fmul fast float %2870, %2877
  %2881 = fmul fast float %2870, %2878
  %2882 = fadd fast float %2879, %2857
  %2883 = fadd fast float %2880, %2858
  %2884 = fadd fast float %2881, %2859
  %2885 = fsub fast float %2637, %2129
  %2886 = fmul fast float %2870, %2885
  %2887 = fadd fast float %2886, %2129
  %2888 = fsub fast float %2779, %2860
  %2889 = fsub fast float %2780, %2861
  %2890 = fsub fast float %2781, %2862
  %2891 = fmul fast float %2875, %2888
  %2892 = fmul fast float %2875, %2889
  %2893 = fmul fast float %2875, %2890
  %2894 = fadd fast float %2891, %2860
  %2895 = fadd fast float %2892, %2861
  %2896 = fadd fast float %2893, %2862
  %2897 = fsub fast float %2847, %2133
  %2898 = fmul fast float %2870, %2897
  %2899 = fadd fast float %2898, %2133
  br label %2945

; <label>:2900                                    ; preds = %2867
  %2901 = icmp eq i32 %2865, 1
  br i1 %2901, label %2902, label %2915

; <label>:2902                                    ; preds = %2900
  %2903 = fadd fast float %2651, -1.000000e+00
  %2904 = fadd fast float %2652, -1.000000e+00
  %2905 = fadd fast float %2653, -1.000000e+00
  %2906 = fmul fast float %2870, %2903
  %2907 = fmul fast float %2870, %2904
  %2908 = fmul fast float %2870, %2905
  %2909 = fadd fast float %2906, 1.000000e+00
  %2910 = fadd fast float %2907, 1.000000e+00
  %2911 = fadd fast float %2908, 1.000000e+00
  %2912 = fmul fast float %2909, %2857
  %2913 = fmul fast float %2910, %2858
  %2914 = fmul fast float %2911, %2859
  br label %2945

; <label>:2915                                    ; preds = %2900
  %2916 = icmp eq i32 %2865, 2
  br i1 %2916, label %2917, label %2945

; <label>:2917                                    ; preds = %2915
  %2918 = call float @dx.op.unary.f32(i32 24, float %2651)  ; Sqrt(value)
  %2919 = call float @dx.op.unary.f32(i32 24, float %2652)  ; Sqrt(value)
  %2920 = call float @dx.op.unary.f32(i32 24, float %2653)  ; Sqrt(value)
  %2921 = fadd fast float %2918, -5.000000e-01
  %2922 = fadd fast float %2919, -5.000000e-01
  %2923 = fadd fast float %2920, -5.000000e-01
  %2924 = fmul fast float %2921, %2870
  %2925 = fmul fast float %2922, %2870
  %2926 = fmul fast float %2923, %2870
  %2927 = fadd fast float %2924, 5.000000e-01
  %2928 = fadd fast float %2925, 5.000000e-01
  %2929 = fadd fast float %2926, 5.000000e-01
  %2930 = fmul fast float %2927, 2.000000e+00
  %2931 = fsub fast float 1.000000e+00, %2930
  %2932 = fmul fast float %2931, %2857
  %2933 = fadd fast float %2932, %2930
  %2934 = fmul fast float %2933, %2857
  %2935 = fmul fast float %2928, 2.000000e+00
  %2936 = fsub fast float 1.000000e+00, %2935
  %2937 = fmul fast float %2936, %2858
  %2938 = fadd fast float %2937, %2935
  %2939 = fmul fast float %2938, %2858
  %2940 = fmul fast float %2929, 2.000000e+00
  %2941 = fsub fast float 1.000000e+00, %2940
  %2942 = fmul fast float %2941, %2859
  %2943 = fadd fast float %2942, %2940
  %2944 = fmul fast float %2943, %2859
  br label %2945

; <label>:2945                                    ; preds = %2917, %2915, %2902, %2872, %2856
  %2946 = phi float [ %2857, %2856 ], [ %2934, %2917 ], [ %2857, %2915 ], [ %2912, %2902 ], [ %2882, %2872 ]
  %2947 = phi float [ %2858, %2856 ], [ %2939, %2917 ], [ %2858, %2915 ], [ %2913, %2902 ], [ %2883, %2872 ]
  %2948 = phi float [ %2859, %2856 ], [ %2944, %2917 ], [ %2859, %2915 ], [ %2914, %2902 ], [ %2884, %2872 ]
  %2949 = phi float [ %2860, %2856 ], [ %2860, %2917 ], [ %2860, %2915 ], [ %2860, %2902 ], [ %2894, %2872 ]
  %2950 = phi float [ %2861, %2856 ], [ %2861, %2917 ], [ %2861, %2915 ], [ %2861, %2902 ], [ %2895, %2872 ]
  %2951 = phi float [ %2862, %2856 ], [ %2862, %2917 ], [ %2862, %2915 ], [ %2862, %2902 ], [ %2896, %2872 ]
  %2952 = phi float [ %2129, %2856 ], [ %2129, %2917 ], [ %2129, %2915 ], [ %2129, %2902 ], [ %2887, %2872 ]
  %2953 = phi float [ %2133, %2856 ], [ %2133, %2917 ], [ %2133, %2915 ], [ %2133, %2902 ], [ %2899, %2872 ]
  %2954 = and i32 %2864, 12
  %2955 = icmp eq i32 %2954, 12
  br i1 %2955, label %3062, label %2956

; <label>:2956                                    ; preds = %2945
  %2957 = and i32 %2864, 2097184
  %2958 = icmp eq i32 %2957, 2097184
  %2959 = select i1 %2958, float %2431, float 0.000000e+00
  %2960 = and i32 %2864, 4194336
  %2961 = icmp eq i32 %2960, 4194336
  %2962 = select i1 %2961, float %2431, float 0.000000e+00
  %2963 = and i32 %2864, 8388640
  %2964 = icmp eq i32 %2963, 8388640
  %2965 = select i1 %2964, float %2431, float 0.000000e+00
  %2966 = and i32 %2864, 2048
  %2967 = icmp ne i32 %2966, 0
  %2968 = select i1 %2967, float %2431, float 0.000000e+00
  %2969 = and i32 %2864, 8192
  %2970 = icmp ne i32 %2969, 0
  %2971 = select i1 %2970, float %2431, float 0.000000e+00
  %2972 = icmp eq i32 %2954, 0
  br i1 %2972, label %2973, label %2998

; <label>:2973                                    ; preds = %2956
  %2974 = fsub fast float %2732, %2118
  %2975 = fsub fast float %2733, %2119
  %2976 = fmul fast float %2959, %2974
  %2977 = fmul fast float %2959, %2975
  %2978 = fadd fast float %2976, %2118
  %2979 = fadd fast float %2977, %2119
  %2980 = fsub fast float %2734, %2131
  %2981 = fmul fast float %2962, %2980
  %2982 = fadd fast float %2981, %2131
  %2983 = fsub fast float %2731, %2130
  %2984 = fmul fast float %2965, %2983
  %2985 = fadd fast float %2984, %2130
  %2986 = fsub fast float %2834, %2132
  %2987 = fmul fast float %2968, %2986
  %2988 = fadd fast float %2987, %2132
  %2989 = fsub fast float %2831, %2126
  %2990 = fsub fast float %2832, %2127
  %2991 = fsub fast float %2833, %2128
  %2992 = fmul fast float %2971, %2989
  %2993 = fmul fast float %2971, %2990
  %2994 = fmul fast float %2971, %2991
  %2995 = fadd fast float %2992, %2126
  %2996 = fadd fast float %2993, %2127
  %2997 = fadd fast float %2994, %2128
  br label %3062

; <label>:2998                                    ; preds = %2956
  %2999 = icmp eq i32 %2954, 4
  br i1 %2999, label %3000, label %3040

; <label>:3000                                    ; preds = %2998
  %3001 = fmul fast float %2959, %2732
  %3002 = fmul fast float %2959, %2733
  %3003 = fadd fast float %3001, %2118
  %3004 = fadd fast float %3002, %2119
  %3005 = call float @dx.op.binary.f32(i32 36, float %2131, float %2734)  ; FMin(a,b)
  %3006 = fsub fast float %3005, %2131
  %3007 = fmul fast float %3006, %2962
  %3008 = fadd fast float %3007, %2131
  %3009 = fadd fast float %2731, %2130
  %3010 = fmul fast float %3009, 0x3FF337FAE0000000
  %3011 = fmul fast float %2130, %2130
  %3012 = fmul fast float %2731, %2731
  %3013 = fadd fast float %3012, %3011
  %3014 = fmul fast float %3013, 0x3FE5152B00000000
  %3015 = fmul fast float %2130, 0xBFCC1F85E0000000
  %3016 = fmul fast float %3015, %2731
  %3017 = fadd fast float %3016, 0xBFE1363700000000
  %3018 = fadd fast float %3017, %3010
  %3019 = fsub fast float %3018, %3014
  %3020 = fmul fast float %3009, 0x3FBA6F0D00000000
  %3021 = fmul fast float %3013, 0x3FD0432880000000
  %3022 = fmul fast float %2130, 0xBFEF110800000000
  %3023 = fmul fast float %3022, %2731
  %3024 = fadd fast float %3023, 1.000000e+00
  %3025 = fsub fast float %3024, %3020
  %3026 = fadd fast float %3025, %3021
  %3027 = fdiv fast float %3019, %3026
  %3028 = call float @dx.op.unary.f32(i32 7, float %3027)  ; Saturate(value)
  %3029 = fsub fast float %3028, %2130
  %3030 = fmul fast float %3029, %2965
  %3031 = fadd fast float %3030, %2130
  %3032 = fmul fast float %2968, %2834
  %3033 = fadd fast float %3032, %2132
  %3034 = fmul fast float %2971, %2831
  %3035 = fmul fast float %2971, %2832
  %3036 = fmul fast float %2971, %2833
  %3037 = fadd fast float %3034, %2126
  %3038 = fadd fast float %3035, %2127
  %3039 = fadd fast float %3036, %2128
  br label %3062

; <label>:3040                                    ; preds = %2998
  %3041 = icmp eq i32 %2954, 8
  br i1 %3041, label %3042, label %3062

; <label>:3042                                    ; preds = %3040
  %3043 = fmul fast float %2959, %2732
  %3044 = fmul fast float %2959, %2733
  %3045 = fadd fast float %3043, %2118
  %3046 = fadd fast float %3044, %2119
  %3047 = call float @dx.op.binary.f32(i32 36, float %2131, float %2734)  ; FMin(a,b)
  %3048 = fsub fast float %3047, %2131
  %3049 = fmul fast float %3048, %2962
  %3050 = fadd fast float %3049, %2131
  %3051 = fsub fast float %2731, %2130
  %3052 = fmul fast float %2965, %3051
  %3053 = fadd fast float %3052, %2130
  %3054 = fmul fast float %2968, %2834
  %3055 = fadd fast float %3054, %2132
  %3056 = fmul fast float %2971, %2831
  %3057 = fmul fast float %2971, %2832
  %3058 = fmul fast float %2971, %2833
  %3059 = fadd fast float %3056, %2126
  %3060 = fadd fast float %3057, %2127
  %3061 = fadd fast float %3058, %2128
  br label %3062

; <label>:3062                                    ; preds = %3042, %3040, %3000, %2973, %2945, %2430, %2134, %2117
  %3063 = phi float [ %2118, %2945 ], [ %2118, %2430 ], [ %2118, %2117 ], [ %3045, %3042 ], [ %2118, %3040 ], [ %3003, %3000 ], [ %2978, %2973 ], [ %2118, %2134 ]
  %3064 = phi float [ %2119, %2945 ], [ %2119, %2430 ], [ %2119, %2117 ], [ %3046, %3042 ], [ %2119, %3040 ], [ %3004, %3000 ], [ %2979, %2973 ], [ %2119, %2134 ]
  %3065 = phi float [ %2946, %2945 ], [ %2120, %2430 ], [ %2120, %2117 ], [ %2946, %3042 ], [ %2946, %3040 ], [ %2946, %3000 ], [ %2946, %2973 ], [ %2120, %2134 ]
  %3066 = phi float [ %2947, %2945 ], [ %2121, %2430 ], [ %2121, %2117 ], [ %2947, %3042 ], [ %2947, %3040 ], [ %2947, %3000 ], [ %2947, %2973 ], [ %2121, %2134 ]
  %3067 = phi float [ %2948, %2945 ], [ %2122, %2430 ], [ %2122, %2117 ], [ %2948, %3042 ], [ %2948, %3040 ], [ %2948, %3000 ], [ %2948, %2973 ], [ %2122, %2134 ]
  %3068 = phi float [ %2949, %2945 ], [ %2123, %2430 ], [ %2123, %2117 ], [ %2949, %3042 ], [ %2949, %3040 ], [ %2949, %3000 ], [ %2949, %2973 ], [ %2123, %2134 ]
  %3069 = phi float [ %2950, %2945 ], [ %2124, %2430 ], [ %2124, %2117 ], [ %2950, %3042 ], [ %2950, %3040 ], [ %2950, %3000 ], [ %2950, %2973 ], [ %2124, %2134 ]
  %3070 = phi float [ %2951, %2945 ], [ %2125, %2430 ], [ %2125, %2117 ], [ %2951, %3042 ], [ %2951, %3040 ], [ %2951, %3000 ], [ %2951, %2973 ], [ %2125, %2134 ]
  %3071 = phi float [ %2126, %2945 ], [ %2126, %2430 ], [ %2126, %2117 ], [ %3059, %3042 ], [ %2126, %3040 ], [ %3037, %3000 ], [ %2995, %2973 ], [ %2126, %2134 ]
  %3072 = phi float [ %2127, %2945 ], [ %2127, %2430 ], [ %2127, %2117 ], [ %3060, %3042 ], [ %2127, %3040 ], [ %3038, %3000 ], [ %2996, %2973 ], [ %2127, %2134 ]
  %3073 = phi float [ %2128, %2945 ], [ %2128, %2430 ], [ %2128, %2117 ], [ %3061, %3042 ], [ %2128, %3040 ], [ %3039, %3000 ], [ %2997, %2973 ], [ %2128, %2134 ]
  %3074 = phi float [ %2952, %2945 ], [ %2129, %2430 ], [ %2129, %2117 ], [ %2952, %3042 ], [ %2952, %3040 ], [ %2952, %3000 ], [ %2952, %2973 ], [ %2129, %2134 ]
  %3075 = phi float [ %2130, %2945 ], [ %2130, %2430 ], [ %2130, %2117 ], [ %3053, %3042 ], [ %2130, %3040 ], [ %3031, %3000 ], [ %2985, %2973 ], [ %2130, %2134 ]
  %3076 = phi float [ %2131, %2945 ], [ %2131, %2430 ], [ %2131, %2117 ], [ %3050, %3042 ], [ %2131, %3040 ], [ %3008, %3000 ], [ %2982, %2973 ], [ %2131, %2134 ]
  %3077 = phi float [ %2132, %2945 ], [ %2132, %2430 ], [ %2132, %2117 ], [ %3055, %3042 ], [ %2132, %3040 ], [ %3033, %3000 ], [ %2988, %2973 ], [ %2132, %2134 ]
  %3078 = phi float [ %2953, %2945 ], [ %2133, %2430 ], [ %2133, %2117 ], [ %2953, %3042 ], [ %2953, %3040 ], [ %2953, %3000 ], [ %2953, %2973 ], [ %2133, %2134 ]
  br i1 %406, label %4007, label %3079

; <label>:3079                                    ; preds = %3062
  %3080 = icmp ult i32 %460, 4
  %3081 = add i32 %50, 72
  %3082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3083 = extractvalue %dx.types.ResRet.i32 %3082, 0
  %3084 = add i32 %50, 76
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3084, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = or i32 %3086, %3083
  %3088 = icmp eq i32 %3087, 0
  br i1 %3088, label %4007, label %3089

; <label>:3089                                    ; preds = %3079
  %3090 = and i32 %3083, 262144
  %3091 = icmp ne i32 %3090, 0
  %3092 = select i1 %3091, float %53, float 1.000000e+00
  %3093 = select i1 %3091, float %54, float 0.000000e+00
  %3094 = select i1 %3091, float %55, float 0.000000e+00
  %3095 = select i1 %3091, float %56, float 1.000000e+00
  %3096 = select i1 %3091, float %57, float %78
  %3097 = select i1 %3091, float %58, float %79
  %3098 = add i32 %50, 332
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3098, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = lshr i32 %3100, 16
  %3102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3101)  ; LegacyF16ToF32(value)
  %3103 = fmul fast float %3102, 0x3F50624DE0000000
  %3104 = add i32 %50, 136
  %3105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3104, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = lshr i32 %3106, 16
  %3108 = and i32 %3107, 255
  %3109 = lshr i32 %3106, 24
  %3110 = add i32 %50, 340
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = and i32 %3112, 65535
  %3114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3113)  ; LegacyF16ToF32(value)
  %3115 = lshr i32 %3112, 16
  %3116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3115)  ; LegacyF16ToF32(value)
  %3117 = add i32 %50, 80
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = lshr i32 %3119, 22
  %3121 = shl nuw nsw i32 %3120, 5
  %3122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3121)  ; LegacyF16ToF32(value)
  %3123 = shl i32 %3119, 4
  %3124 = and i32 %3123, 32752
  %3125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3124)  ; LegacyF16ToF32(value)
  %3126 = lshr i32 %3119, 7
  %3127 = and i32 %3126, 32752
  %3128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3127)  ; LegacyF16ToF32(value)
  %3129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3130 = extractvalue %dx.types.CBufRet.f32 %3129, 3
  %3131 = fmul fast float %3130, 1.000000e+03
  %3132 = fmul fast float %396, %3131
  %3133 = call float @dx.op.unary.f32(i32 22, float %3132)  ; Frc(value)
  %3134 = fadd fast float %3133, %386
  %3135 = fmul fast float %397, %3131
  %3136 = call float @dx.op.unary.f32(i32 22, float %3135)  ; Frc(value)
  %3137 = fadd fast float %3136, %388
  %3138 = fmul fast float %3103, %3131
  %3139 = call float @dx.op.unary.f32(i32 22, float %3138)  ; Frc(value)
  %3140 = fmul fast float %3139, 0x401921FB60000000
  %3141 = fadd fast float %3140, %3122
  %3142 = call float @dx.op.unary.f32(i32 13, float %3141)  ; Sin(value)
  %3143 = call float @dx.op.unary.f32(i32 12, float %3141)  ; Cos(value)
  %3144 = fsub fast float -0.000000e+00, %3142
  %3145 = fadd fast float %3096, -5.000000e-01
  %3146 = fadd fast float %3097, -5.000000e-01
  %3147 = fmul fast float %3114, %3145
  %3148 = fmul fast float %3116, %3146
  %3149 = fadd fast float %3147, 5.000000e-01
  %3150 = fadd fast float %3148, 5.000000e-01
  %3151 = fmul fast float %3125, %3149
  %3152 = fmul fast float %3128, %3150
  %3153 = fmul fast float %3143, %3151
  %3154 = call float @dx.op.tertiary.f32(i32 46, float %3144, float %3152, float %3153)  ; FMad(a,b,c)
  %3155 = fmul fast float %3142, %3151
  %3156 = call float @dx.op.tertiary.f32(i32 46, float %3143, float %3152, float %3155)  ; FMad(a,b,c)
  %3157 = fadd fast float %3134, %3154
  %3158 = fadd fast float %3137, %3156
  %3159 = icmp ugt i32 %3108, 1
  %3160 = icmp ugt i32 %3106, 33554431
  %3161 = or i1 %3160, %3159
  br i1 %3161, label %3162, label %3187

; <label>:3162                                    ; preds = %3089
  %3163 = add i32 %50, 276
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3163, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = lshr i32 %3165, 16
  %3167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3166)  ; LegacyF16ToF32(value)
  %3168 = fmul fast float %3130, %3167
  %3169 = call float @dx.op.unary.f32(i32 22, float %3168)  ; Frc(value)
  %3170 = mul nuw nsw i32 %3108, %3109
  %3171 = uitofp i32 %3170 to float
  %3172 = fmul fast float %3169, %3171
  %3173 = call float @dx.op.unary.f32(i32 27, float %3172)  ; Round_ni(value)
  %3174 = fptoui float %3173 to i32
  %3175 = urem i32 %3174, %3108
  %3176 = udiv i32 %3174, %3109
  %3177 = call float @dx.op.unary.f32(i32 22, float %3157)  ; Frc(value)
  %3178 = call float @dx.op.unary.f32(i32 22, float %3158)  ; Frc(value)
  %3179 = uitofp i32 %3175 to float
  %3180 = uitofp i32 %3176 to float
  %3181 = fadd fast float %3177, %3179
  %3182 = fadd fast float %3178, %3180
  %3183 = uitofp i32 %3108 to float
  %3184 = uitofp i32 %3109 to float
  %3185 = fdiv fast float %3181, %3183
  %3186 = fdiv fast float %3182, %3184
  br label %3187

; <label>:3187                                    ; preds = %3162, %3089
  %3188 = phi float [ %3185, %3162 ], [ %3157, %3089 ]
  %3189 = phi float [ %3186, %3162 ], [ %3158, %3089 ]
  %3190 = and i32 %3083, 16777216
  %3191 = icmp eq i32 %3190, 0
  br i1 %3191, label %3301, label %3192

; <label>:3192                                    ; preds = %3187
  %3193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3194 = extractvalue %dx.types.CBufRet.f32 %3193, 0
  %3195 = extractvalue %dx.types.CBufRet.f32 %3193, 1
  %3196 = extractvalue %dx.types.CBufRet.f32 %3193, 2
  %3197 = fadd fast float %3194, %154
  %3198 = fadd fast float %3195, %155
  %3199 = fadd fast float %3196, %156
  %3200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.f32 %3200, 0
  %3202 = call float @dx.op.unary.f32(i32 7, float %3201)  ; Saturate(value)
  %3203 = icmp eq i32 %51, 65535
  br i1 %3203, label %3298, label %3204

; <label>:3204                                    ; preds = %3192
  %3205 = lshr i32 %51, 1
  %3206 = shl i32 %3205, 2
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %51, 1
  %3210 = icmp ne i32 %3209, 0
  %3211 = lshr i32 %3208, 16
  %3212 = and i32 %3208, 65535
  %3213 = select i1 %3210, i32 %3211, i32 %3212
  %3214 = icmp eq i32 %3213, 65535
  br i1 %3214, label %3294, label %3215

; <label>:3215                                    ; preds = %3204
  %3216 = mul nuw nsw i32 %3213, 40
  %3217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3216, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.f32 %3217, 0
  %3219 = extractvalue %dx.types.ResRet.f32 %3217, 1
  %3220 = extractvalue %dx.types.ResRet.f32 %3217, 2
  %3221 = add nuw nsw i32 %3216, 12
  %3222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3221, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.f32 %3222, 0
  %3224 = extractvalue %dx.types.ResRet.f32 %3222, 1
  %3225 = extractvalue %dx.types.ResRet.f32 %3222, 2
  %3226 = add nuw nsw i32 %3216, 24
  %3227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.f32 %3227, 0
  %3229 = extractvalue %dx.types.ResRet.f32 %3227, 1
  %3230 = extractvalue %dx.types.ResRet.f32 %3227, 2
  %3231 = add nuw nsw i32 %3216, 36
  %3232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3231, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.f32 %3232, 0
  %3234 = fsub fast float %3197, %3218
  %3235 = fsub fast float %3198, %3219
  %3236 = fsub fast float %3199, %3220
  %3237 = fmul fast float %3233, %3234
  %3238 = fmul fast float %3233, %3235
  %3239 = fmul fast float %3233, %3236
  %3240 = call float @dx.op.unary.f32(i32 27, float %3237)  ; Round_ni(value)
  %3241 = call float @dx.op.unary.f32(i32 27, float %3238)  ; Round_ni(value)
  %3242 = call float @dx.op.unary.f32(i32 27, float %3239)  ; Round_ni(value)
  %3243 = fadd fast float %3240, 5.000000e-01
  %3244 = fadd fast float %3241, 5.000000e-01
  %3245 = fadd fast float %3242, 5.000000e-01
  %3246 = fmul fast float %3243, %3223
  %3247 = fmul fast float %3244, %3224
  %3248 = fmul fast float %3245, %3225
  %3249 = shl i32 %51, 2
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = add i32 %3251, 0
  %3253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3254 = call float @dx.op.unary.f32(i32 22, float %3246)  ; Frc(value)
  %3255 = call float @dx.op.unary.f32(i32 22, float %3247)  ; Frc(value)
  %3256 = call float @dx.op.unary.f32(i32 22, float %3248)  ; Frc(value)
  %3257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3253, %dx.types.Handle %45, float %3254, float %3255, float %3256, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3258 = extractvalue %dx.types.ResRet.f32 %3257, 0
  %3259 = extractvalue %dx.types.ResRet.f32 %3257, 1
  %3260 = extractvalue %dx.types.ResRet.f32 %3257, 2
  %3261 = fmul fast float %3258, 1.023000e+03
  %3262 = fmul fast float %3259, 1.023000e+03
  %3263 = fmul fast float %3260, 1.023000e+03
  %3264 = fadd fast float %3261, 5.000000e-01
  %3265 = fadd fast float %3262, 5.000000e-01
  %3266 = fadd fast float %3263, 5.000000e-01
  %3267 = call float @dx.op.unary.f32(i32 27, float %3264)  ; Round_ni(value)
  %3268 = call float @dx.op.unary.f32(i32 27, float %3265)  ; Round_ni(value)
  %3269 = call float @dx.op.unary.f32(i32 27, float %3266)  ; Round_ni(value)
  %3270 = fsub fast float %3237, %3240
  %3271 = fsub fast float %3238, %3241
  %3272 = fsub fast float %3239, %3242
  %3273 = fmul fast float %3270, 7.500000e-01
  %3274 = fmul fast float %3271, 7.500000e-01
  %3275 = fmul fast float %3272, 7.500000e-01
  %3276 = fadd fast float %3240, 1.250000e-01
  %3277 = fadd fast float %3276, %3273
  %3278 = fadd fast float %3277, %3267
  %3279 = fadd fast float %3241, 1.250000e-01
  %3280 = fadd fast float %3279, %3274
  %3281 = fadd fast float %3280, %3268
  %3282 = fadd fast float %3242, 1.250000e-01
  %3283 = fadd fast float %3282, %3275
  %3284 = fadd fast float %3283, %3269
  %3285 = fmul fast float %3278, %3228
  %3286 = fmul fast float %3281, %3229
  %3287 = fmul fast float %3284, %3230
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = add i32 %3289, 0
  %3291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3291, %dx.types.Handle %43, float %3285, float %3286, float %3287, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3293 = extractvalue %dx.types.ResRet.f32 %3292, 0
  br label %3294

; <label>:3294                                    ; preds = %3215, %3204
  %3295 = phi float [ %3293, %3215 ], [ -1.000000e+00, %3204 ]
  %3296 = fadd fast float %3295, %3202
  %3297 = call float @dx.op.unary.f32(i32 7, float %3296)  ; Saturate(value)
  br label %3298

; <label>:3298                                    ; preds = %3294, %3192
  %3299 = phi float [ %3297, %3294 ], [ %3202, %3192 ]
  %3300 = fmul fast float %3299, %455
  br label %3301

; <label>:3301                                    ; preds = %3298, %3187
  %3302 = phi float [ %3300, %3298 ], [ %455, %3187 ]
  %3303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.i32 %3303, 0
  %3305 = and i32 %3304, 256
  %3306 = icmp eq i32 %3305, 0
  br i1 %3306, label %3353, label %3307

; <label>:3307                                    ; preds = %3301
  %3308 = add i32 %50, 436
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = add i32 %3310, 0
  %3312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3313 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3312, %dx.types.Handle %96, float %3188, float %3189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3314 = extractvalue %dx.types.ResRet.f32 %3313, 0
  %3315 = add i32 %50, 148
  %3316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.i32 %3316, 0
  %3318 = shl i32 %3317, 4
  %3319 = and i32 %3318, 32752
  %3320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3319)  ; LegacyF16ToF32(value)
  %3321 = lshr i32 %3317, 7
  %3322 = and i32 %3321, 32752
  %3323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3322)  ; LegacyF16ToF32(value)
  %3324 = fsub fast float 1.000000e+00, %3302
  %3325 = call float @dx.op.binary.f32(i32 35, float %3324, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3326 = bitcast float %3302 to i32
  %3327 = sitofp i32 %3326 to float
  %3328 = fadd fast float %3327, 0xC1CFBF8940000000
  %3329 = fmul fast float %3323, %3328
  %3330 = fadd fast float %3329, 0x41CFBF8940000000
  %3331 = fptosi float %3330 to i32
  %3332 = bitcast i32 %3331 to float
  %3333 = bitcast float %3325 to i32
  %3334 = sitofp i32 %3333 to float
  %3335 = fadd fast float %3334, 0xC1CFBF8940000000
  %3336 = fmul fast float %3335, %3323
  %3337 = fadd fast float %3336, 0x41CFBF8940000000
  %3338 = fptosi float %3337 to i32
  %3339 = bitcast i32 %3338 to float
  %3340 = fmul fast float %3332, %3320
  %3341 = fmul fast float %3339, %3320
  %3342 = fsub fast float %3325, %3340
  %3343 = fadd fast float %3341, %3325
  %3344 = call float @dx.op.unary.f32(i32 7, float %3342)  ; Saturate(value)
  %3345 = call float @dx.op.unary.f32(i32 7, float %3343)  ; Saturate(value)
  %3346 = fsub fast float %3314, %3344
  %3347 = fsub fast float %3345, %3344
  %3348 = bitcast float %3347 to i32
  %3349 = sub nsw i32 2129859010, %3348
  %3350 = bitcast i32 %3349 to float
  %3351 = fmul fast float %3350, %3346
  %3352 = call float @dx.op.unary.f32(i32 7, float %3351)  ; Saturate(value)
  br label %3353

; <label>:3353                                    ; preds = %3307, %3301
  %3354 = phi float [ %3352, %3307 ], [ %3302, %3301 ]
  %3355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.i32 %3355, 0
  %3357 = and i32 %3356, 128
  %3358 = icmp eq i32 %3357, 0
  br i1 %3358, label %3375, label %3359

; <label>:3359                                    ; preds = %3353
  %3360 = add i32 %50, 420
  %3361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.i32 %3361, 0
  %3363 = add i32 %3362, 0
  %3364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3364, %dx.types.Handle %96, float %3188, float %3189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3366 = extractvalue %dx.types.ResRet.f32 %3365, 0
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = and i32 %3368, 524288
  %3370 = icmp ne i32 %3369, 0
  %3371 = fcmp fast ogt float %3366, 0x3FE0101020000000
  %3372 = select i1 %3371, float 1.000000e+00, float 0.000000e+00
  %3373 = select i1 %3370, float %3372, float %3366
  %3374 = fmul fast float %3373, %3354
  br label %3375

; <label>:3375                                    ; preds = %3359, %3353
  %3376 = phi float [ %3374, %3359 ], [ %3354, %3353 ]
  %3377 = fcmp fast ult float %3376, 0x3F70101020000000
  br i1 %3377, label %4007, label %3378

; <label>:3378                                    ; preds = %3375
  %3379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.i32 %3379, 0
  %3381 = and i32 %3380, 16
  %3382 = icmp eq i32 %3381, 0
  br i1 %3382, label %3581, label %3383

; <label>:3383                                    ; preds = %3378
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3104, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = add i32 %50, 372
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = add i32 %3388, 0
  %3390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3389, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3391 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3390, %dx.types.Handle %95, float %3188, float %3189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3392 = extractvalue %dx.types.ResRet.f32 %3391, 0
  %3393 = extractvalue %dx.types.ResRet.f32 %3391, 1
  %3394 = extractvalue %dx.types.ResRet.f32 %3391, 2
  %3395 = extractvalue %dx.types.ResRet.f32 %3391, 3
  %3396 = and i32 %3385, 255
  %3397 = uitofp i32 %3396 to float
  %3398 = lshr i32 %3385, 8
  %3399 = and i32 %3398, 255
  %3400 = uitofp i32 %3399 to float
  %3401 = fmul fast float %3395, %3397
  %3402 = fadd fast float %3401, %3400
  %3403 = fmul fast float %3402, 0x3F70101000000000
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = and i32 %3405, 512
  %3407 = icmp eq i32 %3406, 0
  br i1 %3407, label %3416, label %3408

; <label>:3408                                    ; preds = %3383
  %3409 = add i32 %50, 452
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = add i32 %3411, 0
  %3413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3413, %dx.types.Handle %96, float %3188, float %3189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3415 = extractvalue %dx.types.ResRet.f32 %3414, 0
  br label %3416

; <label>:3416                                    ; preds = %3408, %3383
  %3417 = phi float [ %3415, %3408 ], [ 1.000000e+00, %3383 ]
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = and i32 %3419, 33554432
  %3421 = icmp eq i32 %3420, 0
  br i1 %3421, label %3528, label %3422

; <label>:3422                                    ; preds = %3416
  %3423 = add i32 %50, 272
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = and i32 %3425, 65535
  %3427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3426)  ; LegacyF16ToF32(value)
  %3428 = lshr i32 %3425, 16
  %3429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3428)  ; LegacyF16ToF32(value)
  %3430 = add i32 %50, 276
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = and i32 %3432, 65535
  %3434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3433)  ; LegacyF16ToF32(value)
  %3435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3436 = extractvalue %dx.types.ResRet.i32 %3435, 0
  %3437 = lshr i32 %3436, 24
  %3438 = uitofp i32 %3437 to float
  %3439 = fmul fast float %3438, 0x3F70101020000000
  %3440 = and i32 %3436, 255
  %3441 = uitofp i32 %3440 to float
  %3442 = fmul fast float %3441, 0x3F70101020000000
  %3443 = lshr i32 %3436, 8
  %3444 = and i32 %3443, 255
  %3445 = uitofp i32 %3444 to float
  %3446 = fmul fast float %3445, 0x3F70101020000000
  %3447 = lshr i32 %3436, 16
  %3448 = and i32 %3447, 255
  %3449 = uitofp i32 %3448 to float
  %3450 = fmul fast float %3449, 0x3F70101020000000
  %3451 = add i32 %50, 268
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3451, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = lshr i32 %3453, 24
  %3455 = uitofp i32 %3454 to float
  %3456 = fmul fast float %3455, 0x3F70101020000000
  %3457 = and i32 %3453, 255
  %3458 = uitofp i32 %3457 to float
  %3459 = fmul fast float %3458, 0x3F70101020000000
  %3460 = lshr i32 %3453, 8
  %3461 = and i32 %3460, 255
  %3462 = uitofp i32 %3461 to float
  %3463 = fmul fast float %3462, 0x3F70101020000000
  %3464 = lshr i32 %3453, 16
  %3465 = and i32 %3464, 255
  %3466 = uitofp i32 %3465 to float
  %3467 = fmul fast float %3466, 0x3F70101020000000
  %3468 = bitcast float %3392 to i32
  %3469 = ashr i32 %3468, 1
  %3470 = sub nsw i32 1597463174, %3469
  %3471 = bitcast i32 %3470 to float
  %3472 = fmul fast float %3392, 5.000000e-01
  %3473 = fmul fast float %3471, %3471
  %3474 = fmul fast float %3473, %3472
  %3475 = fsub fast float 1.500000e+00, %3474
  %3476 = fmul fast float %3471, %3392
  %3477 = fmul fast float %3476, %3475
  %3478 = bitcast float %3393 to i32
  %3479 = ashr i32 %3478, 1
  %3480 = sub nsw i32 1597463174, %3479
  %3481 = bitcast i32 %3480 to float
  %3482 = fmul fast float %3393, 5.000000e-01
  %3483 = fmul fast float %3481, %3481
  %3484 = fmul fast float %3483, %3482
  %3485 = fsub fast float 1.500000e+00, %3484
  %3486 = fmul fast float %3481, %3393
  %3487 = fmul fast float %3486, %3485
  %3488 = bitcast float %3394 to i32
  %3489 = ashr i32 %3488, 1
  %3490 = sub nsw i32 1597463174, %3489
  %3491 = bitcast i32 %3490 to float
  %3492 = fmul fast float %3394, 5.000000e-01
  %3493 = fmul fast float %3491, %3491
  %3494 = fmul fast float %3493, %3492
  %3495 = fsub fast float 1.500000e+00, %3494
  %3496 = fmul fast float %3491, %3394
  %3497 = fmul fast float %3496, %3495
  %3498 = fsub fast float %3477, %3459
  %3499 = fsub fast float %3487, %3463
  %3500 = fsub fast float %3497, %3467
  %3501 = fmul fast float %3498, %3427
  %3502 = fmul fast float %3499, %3429
  %3503 = fmul fast float %3500, %3434
  %3504 = fadd fast float %3501, %3442
  %3505 = fadd fast float %3502, %3446
  %3506 = fadd fast float %3503, %3450
  %3507 = call float @dx.op.unary.f32(i32 7, float %3504)  ; Saturate(value)
  %3508 = call float @dx.op.unary.f32(i32 7, float %3505)  ; Saturate(value)
  %3509 = call float @dx.op.unary.f32(i32 7, float %3506)  ; Saturate(value)
  %3510 = fmul fast float %3507, %3507
  %3511 = fmul fast float %3508, %3508
  %3512 = fmul fast float %3509, %3509
  %3513 = fsub fast float %3510, %3392
  %3514 = fsub fast float %3511, %3393
  %3515 = fsub fast float %3512, %3394
  %3516 = fmul fast float %3513, %3417
  %3517 = fmul fast float %3514, %3417
  %3518 = fmul fast float %3515, %3417
  %3519 = fadd fast float %3516, %3392
  %3520 = fadd fast float %3517, %3393
  %3521 = fadd fast float %3518, %3394
  %3522 = fadd fast float %3439, %3403
  %3523 = fsub fast float %3522, %3456
  %3524 = call float @dx.op.unary.f32(i32 7, float %3523)  ; Saturate(value)
  %3525 = fsub fast float %3524, %3403
  %3526 = fmul fast float %3525, %3417
  %3527 = fadd fast float %3526, %3403
  br label %3581

; <label>:3528                                    ; preds = %3416
  %3529 = and i32 %3419, 134217728
  %3530 = icmp eq i32 %3529, 0
  br i1 %3530, label %3565, label %3531

; <label>:3531                                    ; preds = %3528
  %3532 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %3533 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %3534 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %3535 = fadd fast float %3532, -5.000000e-01
  %3536 = fadd fast float %3533, -5.000000e-01
  %3537 = fadd fast float %3534, -5.000000e-01
  %3538 = fmul fast float %3535, %3417
  %3539 = fmul fast float %3536, %3417
  %3540 = fmul fast float %3537, %3417
  %3541 = fadd fast float %3538, 5.000000e-01
  %3542 = fadd fast float %3539, 5.000000e-01
  %3543 = fadd fast float %3540, 5.000000e-01
  %3544 = call float @dx.op.unary.f32(i32 24, float %3392)  ; Sqrt(value)
  %3545 = call float @dx.op.unary.f32(i32 24, float %3393)  ; Sqrt(value)
  %3546 = call float @dx.op.unary.f32(i32 24, float %3394)  ; Sqrt(value)
  %3547 = fmul fast float %3541, 2.000000e+00
  %3548 = fsub fast float 1.000000e+00, %3547
  %3549 = fmul fast float %3548, %3544
  %3550 = fadd fast float %3549, %3547
  %3551 = fmul fast float %3550, %3544
  %3552 = fmul fast float %3542, 2.000000e+00
  %3553 = fsub fast float 1.000000e+00, %3552
  %3554 = fmul fast float %3553, %3545
  %3555 = fadd fast float %3554, %3552
  %3556 = fmul fast float %3555, %3545
  %3557 = fmul fast float %3543, 2.000000e+00
  %3558 = fsub fast float 1.000000e+00, %3557
  %3559 = fmul fast float %3558, %3546
  %3560 = fadd fast float %3559, %3557
  %3561 = fmul fast float %3560, %3546
  %3562 = fmul fast float %3551, %3551
  %3563 = fmul fast float %3556, %3556
  %3564 = fmul fast float %3561, %3561
  br label %3581

; <label>:3565                                    ; preds = %3528
  %3566 = fmul fast float %373, %373
  %3567 = fmul fast float %377, %377
  %3568 = fmul fast float %381, %381
  %3569 = fadd fast float %3566, -1.000000e+00
  %3570 = fadd fast float %3567, -1.000000e+00
  %3571 = fadd fast float %3568, -1.000000e+00
  %3572 = fmul fast float %3417, %3569
  %3573 = fmul fast float %3417, %3570
  %3574 = fmul fast float %3417, %3571
  %3575 = fadd fast float %3572, 1.000000e+00
  %3576 = fadd fast float %3573, 1.000000e+00
  %3577 = fadd fast float %3574, 1.000000e+00
  %3578 = fmul fast float %3575, %3392
  %3579 = fmul fast float %3576, %3393
  %3580 = fmul fast float %3577, %3394
  br label %3581

; <label>:3581                                    ; preds = %3565, %3531, %3422, %3378
  %3582 = phi float [ %3527, %3422 ], [ %3403, %3531 ], [ %3403, %3565 ], [ 0x3FA23C0BE0000000, %3378 ]
  %3583 = phi float [ %3519, %3422 ], [ %3562, %3531 ], [ %3578, %3565 ], [ 1.000000e+00, %3378 ]
  %3584 = phi float [ %3520, %3422 ], [ %3563, %3531 ], [ %3579, %3565 ], [ 1.000000e+00, %3378 ]
  %3585 = phi float [ %3521, %3422 ], [ %3564, %3531 ], [ %3580, %3565 ], [ 1.000000e+00, %3378 ]
  %3586 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3587 = extractvalue %dx.types.CBufRet.i32 %3586, 1
  %3588 = and i32 %3587, 1
  %3589 = icmp ne i32 %3588, 0
  %3590 = add i32 %50, 356
  %3591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.i32 %3591, 0
  %3593 = and i32 %3592, 32
  %3594 = icmp ne i32 %3593, 0
  %3595 = and i1 %3589, %3594
  %3596 = select i1 %3595, float 1.000000e+00, float %3583
  %3597 = select i1 %3595, float 0x3FD3333340000000, float %3584
  %3598 = select i1 %3595, float 0x3FD3333340000000, float %3585
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = and i32 %3600, 32
  %3602 = icmp eq i32 %3601, 0
  br i1 %3602, label %3675, label %3603

; <label>:3603                                    ; preds = %3581
  %3604 = add i32 %50, 140
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = add i32 %50, 388
  %3608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.i32 %3608, 0
  %3610 = add i32 %3609, 0
  %3611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3610, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3611, %dx.types.Handle %95, float %3188, float %3189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = extractvalue %dx.types.ResRet.f32 %3612, 3
  %3617 = and i32 %3606, 255
  %3618 = uitofp i32 %3617 to float
  %3619 = lshr i32 %3606, 8
  %3620 = and i32 %3619, 255
  %3621 = uitofp i32 %3620 to float
  %3622 = lshr i32 %3606, 16
  %3623 = and i32 %3622, 255
  %3624 = uitofp i32 %3623 to float
  %3625 = fmul fast float %3624, 0x3F70101000000000
  %3626 = fmul fast float %3613, %3618
  %3627 = fadd fast float %3626, %3621
  %3628 = fmul fast float %3627, 0x3F70101000000000
  %3629 = fadd fast float %3614, -5.000000e-01
  %3630 = fadd fast float %3616, -5.000000e-01
  %3631 = fmul fast float %3629, %3625
  %3632 = fmul fast float %3630, %3625
  %3633 = fadd fast float %3631, 5.000000e-01
  %3634 = fadd fast float %3632, 5.000000e-01
  %3635 = fmul fast float %3633, 2.000000e+00
  %3636 = fadd fast float %3635, -1.000000e+00
  %3637 = fmul fast float %3634, 2.000000e+00
  %3638 = fadd fast float %3637, -1.000000e+00
  %3639 = fadd fast float %3636, %3638
  %3640 = fmul fast float %3639, 5.000000e-01
  %3641 = fsub fast float %3636, %3638
  %3642 = fmul fast float %3641, 5.000000e-01
  %3643 = call float @dx.op.unary.f32(i32 6, float %3640)  ; FAbs(value)
  %3644 = fsub fast float 1.000000e+00, %3643
  %3645 = call float @dx.op.unary.f32(i32 6, float %3642)  ; FAbs(value)
  %3646 = fsub fast float %3644, %3645
  %3647 = call float @dx.op.dot3.f32(i32 55, float %3640, float %3642, float %3646, float %3640, float %3642, float %3646)  ; Dot3(ax,ay,az,bx,by,bz)
  %3648 = call float @dx.op.unary.f32(i32 25, float %3647)  ; Rsqrt(value)
  %3649 = fmul fast float %3640, %3648
  %3650 = fmul fast float %3642, %3648
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = and i32 %3652, 67108864
  %3654 = icmp eq i32 %3653, 0
  br i1 %3654, label %3671, label %3655

; <label>:3655                                    ; preds = %3603
  %3656 = add i32 %50, 328
  %3657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3656, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.i32 %3657, 0
  %3659 = and i32 %3658, 65535
  %3660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3659)  ; LegacyF16ToF32(value)
  %3661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3098, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.i32 %3661, 0
  %3663 = and i32 %3662, 65535
  %3664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3663)  ; LegacyF16ToF32(value)
  %3665 = lshr i32 %3658, 16
  %3666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3665)  ; LegacyF16ToF32(value)
  %3667 = fsub fast float %3628, %3666
  %3668 = fmul fast float %3667, %3660
  %3669 = fadd fast float %3668, %3664
  %3670 = call float @dx.op.unary.f32(i32 7, float %3669)  ; Saturate(value)
  br label %3671

; <label>:3671                                    ; preds = %3655, %3603
  %3672 = phi float [ %3670, %3655 ], [ %3628, %3603 ]
  %3673 = call float @dx.op.dot2.f32(i32 54, float %3649, float %3650, float %3092, float %3093)  ; Dot2(ax,ay,bx,by)
  %3674 = call float @dx.op.dot2.f32(i32 54, float %3649, float %3650, float %3094, float %3095)  ; Dot2(ax,ay,bx,by)
  br label %3675

; <label>:3675                                    ; preds = %3671, %3581
  %3676 = phi float [ %3672, %3671 ], [ 0x3FD6666660000000, %3581 ]
  %3677 = phi float [ %3673, %3671 ], [ 0.000000e+00, %3581 ]
  %3678 = phi float [ %3674, %3671 ], [ 0.000000e+00, %3581 ]
  %3679 = phi float [ %3615, %3671 ], [ 1.000000e+00, %3581 ]
  %3680 = add i32 %50, 208
  %3681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.i32 %3681, 0
  %3683 = lshr i32 %3682, 22
  %3684 = shl nuw nsw i32 %3683, 5
  %3685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3684)  ; LegacyF16ToF32(value)
  %3686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3687 = extractvalue %dx.types.ResRet.i32 %3686, 0
  %3688 = and i32 %3687, 64
  %3689 = icmp eq i32 %3688, 0
  br i1 %3689, label %3723, label %3690

; <label>:3690                                    ; preds = %3675
  %3691 = add i32 %50, 404
  %3692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3691, i32 undef)  ; BufferLoad(srv,index,wot)
  %3693 = extractvalue %dx.types.ResRet.i32 %3692, 0
  %3694 = add i32 %3693, 0
  %3695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3697 = extractvalue %dx.types.ResRet.i32 %3696, 0
  %3698 = and i32 %3697, 131072
  %3699 = icmp eq i32 %3698, 0
  %3700 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3695, %dx.types.Handle %95, float %3188, float %3189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3701 = extractvalue %dx.types.ResRet.f32 %3700, 0
  %3702 = extractvalue %dx.types.ResRet.f32 %3700, 1
  %3703 = extractvalue %dx.types.ResRet.f32 %3700, 2
  %3704 = fmul fast float %3701, %361
  %3705 = fmul fast float %3702, %364
  %3706 = fmul fast float %3703, %367
  br i1 %3699, label %3713, label %3707

; <label>:3707                                    ; preds = %3690
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 0
  %3710 = fmul fast float %3709, %3704
  %3711 = fmul fast float %3709, %3705
  %3712 = fmul fast float %3709, %3706
  br label %3713

; <label>:3713                                    ; preds = %3707, %3690
  %3714 = phi float [ %3710, %3707 ], [ %3704, %3690 ]
  %3715 = phi float [ %3711, %3707 ], [ %3705, %3690 ]
  %3716 = phi float [ %3712, %3707 ], [ %3706, %3690 ]
  %3717 = fmul fast float %3714, %3685
  %3718 = select i1 %215, float %3717, float %3714
  %3719 = call float @dx.op.dot3.f32(i32 55, float %3718, float %3715, float %3716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3720 = select i1 %215, float 0.000000e+00, float %3714
  %3721 = select i1 %215, float %3719, float %3715
  %3722 = select i1 %215, float 0.000000e+00, float %3716
  br label %3723

; <label>:3723                                    ; preds = %3713, %3675
  %3724 = phi float [ %3720, %3713 ], [ 0.000000e+00, %3675 ]
  %3725 = phi float [ %3721, %3713 ], [ 0.000000e+00, %3675 ]
  %3726 = phi float [ %3722, %3713 ], [ 0.000000e+00, %3675 ]
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = and i32 %3728, 10240
  %3730 = icmp eq i32 %3729, 0
  br i1 %3730, label %3775, label %3731

; <label>:3731                                    ; preds = %3723
  %3732 = add i32 %50, 468
  %3733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3732, i32 undef)  ; BufferLoad(srv,index,wot)
  %3734 = extractvalue %dx.types.ResRet.i32 %3733, 0
  %3735 = add i32 %3734, 0
  %3736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3735, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3737 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3736, %dx.types.Handle %96, float %3188, float %3189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 1
  %3739 = extractvalue %dx.types.ResRet.f32 %3737, 3
  %3740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.i32 %3740, 0
  %3742 = and i32 %3741, 1048576
  %3743 = icmp ne i32 %3742, 0
  %3744 = and i32 %3741, 8192
  %3745 = icmp eq i32 %3744, 0
  br i1 %3745, label %3761, label %3746

; <label>:3746                                    ; preds = %3731
  %3747 = extractvalue %dx.types.ResRet.f32 %3737, 2
  %3748 = select i1 %3743, float %3747, float %3738
  %3749 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3750 = select i1 %3743, float %3749, float %3738
  %3751 = add i32 %50, 144
  %3752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.i32 %3752, 0
  %3754 = lshr i32 %3753, 16
  %3755 = and i32 %3754, 255
  %3756 = uitofp i32 %3755 to float
  %3757 = fmul fast float %3756, 0x3F80101020000000
  %3758 = fmul fast float %3757, %3750
  %3759 = fmul fast float %3757, %3738
  %3760 = fmul fast float %3757, %3748
  br label %3761

; <label>:3761                                    ; preds = %3746, %3731
  %3762 = phi float [ %3758, %3746 ], [ 0.000000e+00, %3731 ]
  %3763 = phi float [ %3759, %3746 ], [ 0.000000e+00, %3731 ]
  %3764 = phi float [ %3760, %3746 ], [ 0.000000e+00, %3731 ]
  %3765 = and i32 %3741, 2048
  %3766 = icmp eq i32 %3765, 0
  br i1 %3766, label %3775, label %3767

; <label>:3767                                    ; preds = %3761
  %3768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3769 = extractvalue %dx.types.ResRet.i32 %3768, 0
  %3770 = shl i32 %3769, 4
  %3771 = and i32 %3770, 32752
  %3772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3771)  ; LegacyF16ToF32(value)
  %3773 = fmul fast float %3772, %3739
  %3774 = call float @dx.op.binary.f32(i32 35, float %3773, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3775

; <label>:3775                                    ; preds = %3767, %3761, %3723
  %3776 = phi float [ %3762, %3767 ], [ %3762, %3761 ], [ 0.000000e+00, %3723 ]
  %3777 = phi float [ %3763, %3767 ], [ %3763, %3761 ], [ 0.000000e+00, %3723 ]
  %3778 = phi float [ %3764, %3767 ], [ %3764, %3761 ], [ 0.000000e+00, %3723 ]
  %3779 = phi float [ %3774, %3767 ], [ 0x3F70101020000000, %3761 ], [ 0x3F70101020000000, %3723 ]
  %3780 = add i32 %50, 144
  %3781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3782 = extractvalue %dx.types.ResRet.i32 %3781, 0
  %3783 = and i32 %3782, 255
  %3784 = uitofp i32 %3783 to float
  %3785 = lshr i32 %3782, 8
  %3786 = and i32 %3785, 255
  %3787 = uitofp i32 %3786 to float
  %3788 = call float @dx.op.dot3.f32(i32 55, float %3596, float %3597, float %3598, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3789 = fmul fast float %3787, %3788
  %3790 = fadd fast float %3789, %3784
  %3791 = fmul fast float %3790, 0x3F70101020000000
  %3792 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  br i1 %3080, label %3793, label %3801

; <label>:3793                                    ; preds = %3775
  %3794 = fsub fast float 1.000000e+00, %3376
  %3795 = fmul fast float %3794, %3065
  %3796 = fmul fast float %3794, %3066
  %3797 = fmul fast float %3794, %3067
  %3798 = fmul fast float %3794, %3068
  %3799 = fmul fast float %3794, %3069
  %3800 = fmul fast float %3794, %3070
  br label %3801

; <label>:3801                                    ; preds = %3793, %3775
  %3802 = phi float [ %3795, %3793 ], [ %3065, %3775 ]
  %3803 = phi float [ %3796, %3793 ], [ %3066, %3775 ]
  %3804 = phi float [ %3797, %3793 ], [ %3067, %3775 ]
  %3805 = phi float [ %3798, %3793 ], [ %3068, %3775 ]
  %3806 = phi float [ %3799, %3793 ], [ %3069, %3775 ]
  %3807 = phi float [ %3800, %3793 ], [ %3070, %3775 ]
  %3808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.i32 %3808, 0
  %3810 = and i32 %3809, 3
  %3811 = icmp eq i32 %3810, 3
  br i1 %3811, label %3890, label %3812

; <label>:3812                                    ; preds = %3801
  %3813 = and i32 %3809, 16
  %3814 = icmp ne i32 %3813, 0
  %3815 = select i1 %3814, float %3376, float 0.000000e+00
  %3816 = icmp eq i32 %3810, 0
  br i1 %3816, label %3817, label %3845

; <label>:3817                                    ; preds = %3812
  %3818 = and i32 %3809, 64
  %3819 = icmp ne i32 %3818, 0
  %3820 = select i1 %3819, float %3376, float 0.000000e+00
  %3821 = fsub fast float %3596, %3802
  %3822 = fsub fast float %3597, %3803
  %3823 = fsub fast float %3598, %3804
  %3824 = fmul fast float %3815, %3821
  %3825 = fmul fast float %3815, %3822
  %3826 = fmul fast float %3815, %3823
  %3827 = fadd fast float %3824, %3802
  %3828 = fadd fast float %3825, %3803
  %3829 = fadd fast float %3826, %3804
  %3830 = fsub fast float %3582, %3074
  %3831 = fmul fast float %3815, %3830
  %3832 = fadd fast float %3831, %3074
  %3833 = fsub fast float %3724, %3805
  %3834 = fsub fast float %3725, %3806
  %3835 = fsub fast float %3726, %3807
  %3836 = fmul fast float %3820, %3833
  %3837 = fmul fast float %3820, %3834
  %3838 = fmul fast float %3820, %3835
  %3839 = fadd fast float %3836, %3805
  %3840 = fadd fast float %3837, %3806
  %3841 = fadd fast float %3838, %3807
  %3842 = fsub fast float %3792, %3078
  %3843 = fmul fast float %3815, %3842
  %3844 = fadd fast float %3843, %3078
  br label %3890

; <label>:3845                                    ; preds = %3812
  %3846 = icmp eq i32 %3810, 1
  br i1 %3846, label %3847, label %3860

; <label>:3847                                    ; preds = %3845
  %3848 = fadd fast float %3596, -1.000000e+00
  %3849 = fadd fast float %3597, -1.000000e+00
  %3850 = fadd fast float %3598, -1.000000e+00
  %3851 = fmul fast float %3815, %3848
  %3852 = fmul fast float %3815, %3849
  %3853 = fmul fast float %3815, %3850
  %3854 = fadd fast float %3851, 1.000000e+00
  %3855 = fadd fast float %3852, 1.000000e+00
  %3856 = fadd fast float %3853, 1.000000e+00
  %3857 = fmul fast float %3854, %3802
  %3858 = fmul fast float %3855, %3803
  %3859 = fmul fast float %3856, %3804
  br label %3890

; <label>:3860                                    ; preds = %3845
  %3861 = icmp eq i32 %3810, 2
  br i1 %3861, label %3862, label %3890

; <label>:3862                                    ; preds = %3860
  %3863 = call float @dx.op.unary.f32(i32 24, float %3596)  ; Sqrt(value)
  %3864 = call float @dx.op.unary.f32(i32 24, float %3597)  ; Sqrt(value)
  %3865 = call float @dx.op.unary.f32(i32 24, float %3598)  ; Sqrt(value)
  %3866 = fadd fast float %3863, -5.000000e-01
  %3867 = fadd fast float %3864, -5.000000e-01
  %3868 = fadd fast float %3865, -5.000000e-01
  %3869 = fmul fast float %3866, %3815
  %3870 = fmul fast float %3867, %3815
  %3871 = fmul fast float %3868, %3815
  %3872 = fadd fast float %3869, 5.000000e-01
  %3873 = fadd fast float %3870, 5.000000e-01
  %3874 = fadd fast float %3871, 5.000000e-01
  %3875 = fmul fast float %3872, 2.000000e+00
  %3876 = fsub fast float 1.000000e+00, %3875
  %3877 = fmul fast float %3876, %3802
  %3878 = fadd fast float %3877, %3875
  %3879 = fmul fast float %3878, %3802
  %3880 = fmul fast float %3873, 2.000000e+00
  %3881 = fsub fast float 1.000000e+00, %3880
  %3882 = fmul fast float %3881, %3803
  %3883 = fadd fast float %3882, %3880
  %3884 = fmul fast float %3883, %3803
  %3885 = fmul fast float %3874, 2.000000e+00
  %3886 = fsub fast float 1.000000e+00, %3885
  %3887 = fmul fast float %3886, %3804
  %3888 = fadd fast float %3887, %3885
  %3889 = fmul fast float %3888, %3804
  br label %3890

; <label>:3890                                    ; preds = %3862, %3860, %3847, %3817, %3801
  %3891 = phi float [ %3802, %3801 ], [ %3879, %3862 ], [ %3802, %3860 ], [ %3857, %3847 ], [ %3827, %3817 ]
  %3892 = phi float [ %3803, %3801 ], [ %3884, %3862 ], [ %3803, %3860 ], [ %3858, %3847 ], [ %3828, %3817 ]
  %3893 = phi float [ %3804, %3801 ], [ %3889, %3862 ], [ %3804, %3860 ], [ %3859, %3847 ], [ %3829, %3817 ]
  %3894 = phi float [ %3805, %3801 ], [ %3805, %3862 ], [ %3805, %3860 ], [ %3805, %3847 ], [ %3839, %3817 ]
  %3895 = phi float [ %3806, %3801 ], [ %3806, %3862 ], [ %3806, %3860 ], [ %3806, %3847 ], [ %3840, %3817 ]
  %3896 = phi float [ %3807, %3801 ], [ %3807, %3862 ], [ %3807, %3860 ], [ %3807, %3847 ], [ %3841, %3817 ]
  %3897 = phi float [ %3074, %3801 ], [ %3074, %3862 ], [ %3074, %3860 ], [ %3074, %3847 ], [ %3832, %3817 ]
  %3898 = phi float [ %3078, %3801 ], [ %3078, %3862 ], [ %3078, %3860 ], [ %3078, %3847 ], [ %3844, %3817 ]
  %3899 = and i32 %3809, 12
  %3900 = icmp eq i32 %3899, 12
  br i1 %3900, label %4007, label %3901

; <label>:3901                                    ; preds = %3890
  %3902 = and i32 %3809, 2097184
  %3903 = icmp eq i32 %3902, 2097184
  %3904 = select i1 %3903, float %3376, float 0.000000e+00
  %3905 = and i32 %3809, 4194336
  %3906 = icmp eq i32 %3905, 4194336
  %3907 = select i1 %3906, float %3376, float 0.000000e+00
  %3908 = and i32 %3809, 8388640
  %3909 = icmp eq i32 %3908, 8388640
  %3910 = select i1 %3909, float %3376, float 0.000000e+00
  %3911 = and i32 %3809, 2048
  %3912 = icmp ne i32 %3911, 0
  %3913 = select i1 %3912, float %3376, float 0.000000e+00
  %3914 = and i32 %3809, 8192
  %3915 = icmp ne i32 %3914, 0
  %3916 = select i1 %3915, float %3376, float 0.000000e+00
  %3917 = icmp eq i32 %3899, 0
  br i1 %3917, label %3918, label %3943

; <label>:3918                                    ; preds = %3901
  %3919 = fsub fast float %3677, %3063
  %3920 = fsub fast float %3678, %3064
  %3921 = fmul fast float %3904, %3919
  %3922 = fmul fast float %3904, %3920
  %3923 = fadd fast float %3921, %3063
  %3924 = fadd fast float %3922, %3064
  %3925 = fsub fast float %3679, %3076
  %3926 = fmul fast float %3907, %3925
  %3927 = fadd fast float %3926, %3076
  %3928 = fsub fast float %3676, %3075
  %3929 = fmul fast float %3910, %3928
  %3930 = fadd fast float %3929, %3075
  %3931 = fsub fast float %3779, %3077
  %3932 = fmul fast float %3913, %3931
  %3933 = fadd fast float %3932, %3077
  %3934 = fsub fast float %3776, %3071
  %3935 = fsub fast float %3777, %3072
  %3936 = fsub fast float %3778, %3073
  %3937 = fmul fast float %3916, %3934
  %3938 = fmul fast float %3916, %3935
  %3939 = fmul fast float %3916, %3936
  %3940 = fadd fast float %3937, %3071
  %3941 = fadd fast float %3938, %3072
  %3942 = fadd fast float %3939, %3073
  br label %4007

; <label>:3943                                    ; preds = %3901
  %3944 = icmp eq i32 %3899, 4
  br i1 %3944, label %3945, label %3985

; <label>:3945                                    ; preds = %3943
  %3946 = fmul fast float %3904, %3677
  %3947 = fmul fast float %3904, %3678
  %3948 = fadd fast float %3946, %3063
  %3949 = fadd fast float %3947, %3064
  %3950 = call float @dx.op.binary.f32(i32 36, float %3076, float %3679)  ; FMin(a,b)
  %3951 = fsub fast float %3950, %3076
  %3952 = fmul fast float %3951, %3907
  %3953 = fadd fast float %3952, %3076
  %3954 = fadd fast float %3676, %3075
  %3955 = fmul fast float %3954, 0x3FF337FAE0000000
  %3956 = fmul fast float %3075, %3075
  %3957 = fmul fast float %3676, %3676
  %3958 = fadd fast float %3957, %3956
  %3959 = fmul fast float %3958, 0x3FE5152B00000000
  %3960 = fmul fast float %3075, 0xBFCC1F85E0000000
  %3961 = fmul fast float %3960, %3676
  %3962 = fadd fast float %3961, 0xBFE1363700000000
  %3963 = fadd fast float %3962, %3955
  %3964 = fsub fast float %3963, %3959
  %3965 = fmul fast float %3954, 0x3FBA6F0D00000000
  %3966 = fmul fast float %3958, 0x3FD0432880000000
  %3967 = fmul fast float %3075, 0xBFEF110800000000
  %3968 = fmul fast float %3967, %3676
  %3969 = fadd fast float %3968, 1.000000e+00
  %3970 = fsub fast float %3969, %3965
  %3971 = fadd fast float %3970, %3966
  %3972 = fdiv fast float %3964, %3971
  %3973 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3974 = fsub fast float %3973, %3075
  %3975 = fmul fast float %3974, %3910
  %3976 = fadd fast float %3975, %3075
  %3977 = fmul fast float %3913, %3779
  %3978 = fadd fast float %3977, %3077
  %3979 = fmul fast float %3916, %3776
  %3980 = fmul fast float %3916, %3777
  %3981 = fmul fast float %3916, %3778
  %3982 = fadd fast float %3979, %3071
  %3983 = fadd fast float %3980, %3072
  %3984 = fadd fast float %3981, %3073
  br label %4007

; <label>:3985                                    ; preds = %3943
  %3986 = icmp eq i32 %3899, 8
  br i1 %3986, label %3987, label %4007

; <label>:3987                                    ; preds = %3985
  %3988 = fmul fast float %3904, %3677
  %3989 = fmul fast float %3904, %3678
  %3990 = fadd fast float %3988, %3063
  %3991 = fadd fast float %3989, %3064
  %3992 = call float @dx.op.binary.f32(i32 36, float %3076, float %3679)  ; FMin(a,b)
  %3993 = fsub fast float %3992, %3076
  %3994 = fmul fast float %3993, %3907
  %3995 = fadd fast float %3994, %3076
  %3996 = fsub fast float %3676, %3075
  %3997 = fmul fast float %3910, %3996
  %3998 = fadd fast float %3997, %3075
  %3999 = fmul fast float %3913, %3779
  %4000 = fadd fast float %3999, %3077
  %4001 = fmul fast float %3916, %3776
  %4002 = fmul fast float %3916, %3777
  %4003 = fmul fast float %3916, %3778
  %4004 = fadd fast float %4001, %3071
  %4005 = fadd fast float %4002, %3072
  %4006 = fadd fast float %4003, %3073
  br label %4007

; <label>:4007                                    ; preds = %3987, %3985, %3945, %3918, %3890, %3375, %3079, %3062
  %4008 = phi float [ %3063, %3890 ], [ %3063, %3375 ], [ %3063, %3062 ], [ %3063, %3079 ], [ %3923, %3918 ], [ %3948, %3945 ], [ %3063, %3985 ], [ %3990, %3987 ]
  %4009 = phi float [ %3064, %3890 ], [ %3064, %3375 ], [ %3064, %3062 ], [ %3064, %3079 ], [ %3924, %3918 ], [ %3949, %3945 ], [ %3064, %3985 ], [ %3991, %3987 ]
  %4010 = phi float [ %3891, %3890 ], [ %3065, %3375 ], [ %3065, %3062 ], [ %3065, %3079 ], [ %3891, %3918 ], [ %3891, %3945 ], [ %3891, %3985 ], [ %3891, %3987 ]
  %4011 = phi float [ %3892, %3890 ], [ %3066, %3375 ], [ %3066, %3062 ], [ %3066, %3079 ], [ %3892, %3918 ], [ %3892, %3945 ], [ %3892, %3985 ], [ %3892, %3987 ]
  %4012 = phi float [ %3893, %3890 ], [ %3067, %3375 ], [ %3067, %3062 ], [ %3067, %3079 ], [ %3893, %3918 ], [ %3893, %3945 ], [ %3893, %3985 ], [ %3893, %3987 ]
  %4013 = phi float [ %3894, %3890 ], [ %3068, %3375 ], [ %3068, %3062 ], [ %3068, %3079 ], [ %3894, %3918 ], [ %3894, %3945 ], [ %3894, %3985 ], [ %3894, %3987 ]
  %4014 = phi float [ %3895, %3890 ], [ %3069, %3375 ], [ %3069, %3062 ], [ %3069, %3079 ], [ %3895, %3918 ], [ %3895, %3945 ], [ %3895, %3985 ], [ %3895, %3987 ]
  %4015 = phi float [ %3896, %3890 ], [ %3070, %3375 ], [ %3070, %3062 ], [ %3070, %3079 ], [ %3896, %3918 ], [ %3896, %3945 ], [ %3896, %3985 ], [ %3896, %3987 ]
  %4016 = phi float [ %3071, %3890 ], [ %3071, %3375 ], [ %3071, %3062 ], [ %3071, %3079 ], [ %3940, %3918 ], [ %3982, %3945 ], [ %3071, %3985 ], [ %4004, %3987 ]
  %4017 = phi float [ %3072, %3890 ], [ %3072, %3375 ], [ %3072, %3062 ], [ %3072, %3079 ], [ %3941, %3918 ], [ %3983, %3945 ], [ %3072, %3985 ], [ %4005, %3987 ]
  %4018 = phi float [ %3073, %3890 ], [ %3073, %3375 ], [ %3073, %3062 ], [ %3073, %3079 ], [ %3942, %3918 ], [ %3984, %3945 ], [ %3073, %3985 ], [ %4006, %3987 ]
  %4019 = phi float [ %3897, %3890 ], [ %3074, %3375 ], [ %3074, %3062 ], [ %3074, %3079 ], [ %3897, %3918 ], [ %3897, %3945 ], [ %3897, %3985 ], [ %3897, %3987 ]
  %4020 = phi float [ %3075, %3890 ], [ %3075, %3375 ], [ %3075, %3062 ], [ %3075, %3079 ], [ %3930, %3918 ], [ %3976, %3945 ], [ %3075, %3985 ], [ %3998, %3987 ]
  %4021 = phi float [ %3076, %3890 ], [ %3076, %3375 ], [ %3076, %3062 ], [ %3076, %3079 ], [ %3927, %3918 ], [ %3953, %3945 ], [ %3076, %3985 ], [ %3995, %3987 ]
  %4022 = phi float [ %3077, %3890 ], [ %3077, %3375 ], [ %3077, %3062 ], [ %3077, %3079 ], [ %3933, %3918 ], [ %3978, %3945 ], [ %3077, %3985 ], [ %4000, %3987 ]
  %4023 = phi float [ %3898, %3890 ], [ %3078, %3375 ], [ %3078, %3062 ], [ %3078, %3079 ], [ %3898, %3918 ], [ %3898, %3945 ], [ %3898, %3985 ], [ %3898, %3987 ]
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 0
  %4026 = call float @dx.op.dot2.f32(i32 54, float %4008, float %4009, float %4008, float %4009)  ; Dot2(ax,ay,bx,by)
  %4027 = fmul fast float %4026, 0x3FE3333340000000
  %4028 = fsub fast float 1.000000e+00, %4027
  %4029 = call float @dx.op.dot3.f32(i32 55, float %4008, float %4009, float %4028, float %4008, float %4009, float %4028)  ; Dot3(ax,ay,az,bx,by,bz)
  %4030 = call float @dx.op.unary.f32(i32 25, float %4029)  ; Rsqrt(value)
  %4031 = fmul fast float %4030, %4008
  %4032 = fmul fast float %4030, %4009
  %4033 = fmul fast float %4028, %4030
  %4034 = fmul fast float %4033, %106
  %4035 = fmul fast float %4033, %107
  %4036 = fmul fast float %4033, %108
  %4037 = fmul fast float %4031, %71
  %4038 = fmul fast float %4031, %72
  %4039 = fmul fast float %4031, %73
  %4040 = fadd fast float %4034, %4037
  %4041 = fadd fast float %4035, %4038
  %4042 = fadd fast float %4036, %4039
  %4043 = fmul fast float %118, %4032
  %4044 = fmul fast float %119, %4032
  %4045 = fmul fast float %120, %4032
  %4046 = fadd fast float %4040, %4043
  %4047 = fadd fast float %4041, %4044
  %4048 = fadd fast float %4042, %4045
  %4049 = call float @dx.op.dot3.f32(i32 55, float %4046, float %4047, float %4048, float %4046, float %4047, float %4048)  ; Dot3(ax,ay,az,bx,by,bz)
  %4050 = call float @dx.op.unary.f32(i32 25, float %4049)  ; Rsqrt(value)
  %4051 = fmul fast float %4046, %4050
  %4052 = fmul fast float %4047, %4050
  %4053 = fmul fast float %4048, %4050
  %4054 = and i32 %52, 1
  %4055 = icmp eq i32 %4054, 0
  br i1 %4055, label %4056, label %4617

; <label>:4056                                    ; preds = %4007
  %4057 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4058 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4059 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4060 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4061 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4062 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4063 = fadd fast float %4057, %154
  %4064 = fadd fast float %4058, %155
  %4065 = fadd fast float %4059, %156
  %4066 = fadd fast float %4060, %154
  %4067 = fadd fast float %4061, %155
  %4068 = fadd fast float %4062, %156
  %4069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4069, 0
  %4071 = extractvalue %dx.types.CBufRet.f32 %4069, 1
  %4072 = extractvalue %dx.types.CBufRet.f32 %4069, 2
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 2
  %4075 = extractvalue %dx.types.CBufRet.f32 %4073, 3
  %4076 = fmul fast float %4070, %99
  %4077 = fmul fast float %4076, %4074
  %4078 = fmul fast float %4071, %100
  %4079 = fmul fast float %4078, %4075
  %4080 = fptoui float %4077 to i32
  %4081 = fptoui float %4079 to i32
  %4082 = fadd fast float %4070, -1.000000e+00
  %4083 = fadd fast float %4071, -1.000000e+00
  %4084 = fptoui float %4082 to i32
  %4085 = fptoui float %4083 to i32
  %4086 = call i32 @dx.op.binary.i32(i32 40, i32 %4080, i32 %4084)  ; UMin(a,b)
  %4087 = call i32 @dx.op.binary.i32(i32 40, i32 %4081, i32 %4085)  ; UMin(a,b)
  %4088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.f32 %4088, 2
  %4090 = extractvalue %dx.types.CBufRet.f32 %4088, 3
  %4091 = fmul fast float %4089, %87
  %4092 = fsub fast float %4091, %4090
  %4093 = fadd fast float %4072, -1.000000e+00
  %4094 = call float @dx.op.binary.f32(i32 36, float %4092, float %4093)  ; FMin(a,b)
  %4095 = fptoui float %4094 to i32
  %4096 = fptoui float %4070 to i32
  %4097 = fptoui float %4071 to i32
  %4098 = mul i32 %4095, %4097
  %4099 = add i32 %4098, %4087
  %4100 = mul i32 %4099, %4096
  %4101 = add i32 %4100, %4086
  %4102 = shl i32 %4101, 2
  %4103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4102, i32 undef)  ; BufferLoad(srv,index,wot)
  %4104 = extractvalue %dx.types.ResRet.i32 %4103, 0
  %4105 = and i32 %4104, 1023
  %4106 = lshr i32 %4104, 10
  %4107 = icmp eq i32 %4105, 0
  br i1 %4107, label %4583, label %4108

; <label>:4108                                    ; preds = %4056
  %4109 = and i32 %4104, 1023
  br label %4110

; <label>:4110                                    ; preds = %4239, %4108
  %4111 = phi i32 [ %4189, %4239 ], [ 0, %4108 ]
  %4112 = phi float [ %4240, %4239 ], [ 0.000000e+00, %4108 ]
  %4113 = phi float [ %4241, %4239 ], [ %4025, %4108 ]
  %4114 = phi float [ %4242, %4239 ], [ %4023, %4108 ]
  %4115 = phi float [ %4243, %4239 ], [ 0.000000e+00, %4108 ]
  %4116 = phi float [ %4244, %4239 ], [ 0.000000e+00, %4108 ]
  %4117 = phi float [ %4245, %4239 ], [ %4016, %4108 ]
  %4118 = phi float [ %4246, %4239 ], [ %4017, %4108 ]
  %4119 = phi float [ %4247, %4239 ], [ %4018, %4108 ]
  %4120 = phi float [ %4248, %4239 ], [ %4013, %4108 ]
  %4121 = phi float [ %4249, %4239 ], [ %4014, %4108 ]
  %4122 = phi float [ %4250, %4239 ], [ %4015, %4108 ]
  %4123 = phi float [ %4251, %4239 ], [ %4051, %4108 ]
  %4124 = phi float [ %4252, %4239 ], [ %4052, %4108 ]
  %4125 = phi float [ %4253, %4239 ], [ %4053, %4108 ]
  %4126 = phi float [ %4254, %4239 ], [ %4021, %4108 ]
  %4127 = phi float [ %4255, %4239 ], [ %4020, %4108 ]
  %4128 = phi float [ %4256, %4239 ], [ 0.000000e+00, %4108 ]
  %4129 = phi float [ %4257, %4239 ], [ %4019, %4108 ]
  %4130 = phi float [ %4258, %4239 ], [ %4010, %4108 ]
  %4131 = phi float [ %4259, %4239 ], [ %4011, %4108 ]
  %4132 = phi float [ %4260, %4239 ], [ %4012, %4108 ]
  %4133 = add nuw nsw i32 %4111, %4106
  %4134 = shl i32 %4133, 2
  %4135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4134, i32 undef)  ; BufferLoad(srv,index,wot)
  %4136 = extractvalue %dx.types.ResRet.i32 %4135, 0
  %4137 = shl i32 %4136, 8
  %4138 = or i32 %4137, 48
  %4139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.ResRet.f32 %4139, 1
  %4142 = extractvalue %dx.types.ResRet.f32 %4139, 2
  %4143 = extractvalue %dx.types.ResRet.f32 %4139, 3
  %4144 = or i32 %4137, 64
  %4145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.i32 %4145, 0
  %4147 = extractvalue %dx.types.ResRet.i32 %4145, 1
  %4148 = or i32 %4137, 80
  %4149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4148, i32 undef)  ; BufferLoad(srv,index,wot)
  %4150 = extractvalue %dx.types.ResRet.f32 %4149, 2
  %4151 = extractvalue %dx.types.ResRet.f32 %4149, 3
  %4152 = or i32 %4137, 96
  %4153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4152, i32 undef)  ; BufferLoad(srv,index,wot)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.ResRet.f32 %4153, 1
  %4156 = extractvalue %dx.types.ResRet.f32 %4153, 2
  %4157 = extractvalue %dx.types.ResRet.f32 %4153, 3
  %4158 = or i32 %4137, 112
  %4159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4158, i32 undef)  ; BufferLoad(srv,index,wot)
  %4160 = extractvalue %dx.types.ResRet.f32 %4159, 2
  %4161 = or i32 %4137, 128
  %4162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4161, i32 undef)  ; BufferLoad(srv,index,wot)
  %4163 = extractvalue %dx.types.ResRet.f32 %4162, 0
  %4164 = extractvalue %dx.types.ResRet.f32 %4162, 1
  %4165 = extractvalue %dx.types.ResRet.f32 %4162, 2
  %4166 = extractvalue %dx.types.ResRet.f32 %4162, 3
  %4167 = or i32 %4137, 144
  %4168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4167, i32 undef)  ; BufferLoad(srv,index,wot)
  %4169 = extractvalue %dx.types.ResRet.f32 %4168, 0
  %4170 = extractvalue %dx.types.ResRet.f32 %4168, 1
  %4171 = extractvalue %dx.types.ResRet.f32 %4168, 2
  %4172 = extractvalue %dx.types.ResRet.f32 %4168, 3
  %4173 = or i32 %4137, 160
  %4174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4173, i32 undef)  ; BufferLoad(srv,index,wot)
  %4175 = extractvalue %dx.types.ResRet.f32 %4174, 0
  %4176 = extractvalue %dx.types.ResRet.f32 %4174, 1
  %4177 = extractvalue %dx.types.ResRet.f32 %4174, 2
  %4178 = extractvalue %dx.types.ResRet.f32 %4174, 3
  %4179 = or i32 %4137, 192
  %4180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4179, i32 undef)  ; BufferLoad(srv,index,wot)
  %4181 = extractvalue %dx.types.ResRet.i32 %4180, 0
  %4182 = or i32 %4137, 208
  %4183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4182, i32 undef)  ; BufferLoad(srv,index,wot)
  %4184 = extractvalue %dx.types.ResRet.f32 %4183, 0
  %4185 = or i32 %4137, 248
  %4186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.ResRet.f32 %4186, 1
  %4189 = add nuw nsw i32 %4111, 1
  %4190 = bitcast float %4143 to i32
  %4191 = and i32 %4190, 512
  %4192 = icmp eq i32 %4191, 0
  %4193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4137, i32 undef)  ; BufferLoad(srv,index,wot)
  %4194 = extractvalue %dx.types.ResRet.f32 %4193, 0
  %4195 = extractvalue %dx.types.ResRet.f32 %4193, 1
  %4196 = extractvalue %dx.types.ResRet.f32 %4193, 2
  %4197 = extractvalue %dx.types.ResRet.f32 %4193, 3
  %4198 = call float @dx.op.dot4.f32(i32 56, float %4194, float %4195, float %4196, float %4197, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4199 = or i32 %4137, 16
  %4200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4199, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = extractvalue %dx.types.ResRet.f32 %4200, 3
  %4205 = call float @dx.op.dot4.f32(i32 56, float %4201, float %4202, float %4203, float %4204, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4206 = or i32 %4137, 32
  %4207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.ResRet.f32 %4207, 1
  %4210 = extractvalue %dx.types.ResRet.f32 %4207, 2
  %4211 = extractvalue %dx.types.ResRet.f32 %4207, 3
  %4212 = call float @dx.op.dot4.f32(i32 56, float %4208, float %4209, float %4210, float %4211, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4213 = call float @dx.op.unary.f32(i32 27, float %4198)  ; Round_ni(value)
  %4214 = call float @dx.op.unary.f32(i32 6, float %4213)  ; FAbs(value)
  %4215 = call float @dx.op.unary.f32(i32 27, float %4205)  ; Round_ni(value)
  %4216 = call float @dx.op.unary.f32(i32 6, float %4215)  ; FAbs(value)
  %4217 = call float @dx.op.unary.f32(i32 6, float %4212)  ; FAbs(value)
  %4218 = call float @dx.op.unary.f32(i32 27, float %4217)  ; Round_ni(value)
  %4219 = fadd fast float %4216, %4214
  %4220 = fadd fast float %4219, %4218
  %4221 = fcmp fast oeq float %4220, 0.000000e+00
  %4222 = call float @dx.op.dot4.f32(i32 56, float %4194, float %4195, float %4196, float %4197, float %4063, float %4064, float %4065, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4223 = call float @dx.op.dot4.f32(i32 56, float %4201, float %4202, float %4203, float %4204, float %4063, float %4064, float %4065, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4224 = call float @dx.op.dot4.f32(i32 56, float %4194, float %4195, float %4196, float %4197, float %4066, float %4067, float %4068, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4225 = call float @dx.op.dot4.f32(i32 56, float %4201, float %4202, float %4203, float %4204, float %4066, float %4067, float %4068, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4226 = fsub fast float %4222, %4198
  %4227 = fsub fast float %4224, %4198
  %4228 = fsub fast float %4223, %4205
  %4229 = fsub fast float %4225, %4205
  %4230 = call float @dx.op.dot3.f32(i32 55, float %4140, float %4141, float %4142, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 2
  %4233 = fadd fast float %4232, %4230
  %4234 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4235 = extractvalue %dx.types.CBufRet.f32 %4231, 0
  %4236 = fcmp fast ogt float %4234, %4235
  %4237 = and i1 %4221, %4236
  %4238 = and i1 %4192, %4237
  br i1 %4238, label %4262, label %4239

; <label>:4239                                    ; preds = %4569, %4343, %4262, %4110
  %4240 = phi float [ %4112, %4262 ], [ %4346, %4343 ], [ %4346, %4569 ], [ %4112, %4110 ]
  %4241 = phi float [ %4113, %4262 ], [ %4113, %4343 ], [ %4545, %4569 ], [ %4113, %4110 ]
  %4242 = phi float [ %4114, %4262 ], [ %4114, %4343 ], [ %4543, %4569 ], [ %4114, %4110 ]
  %4243 = phi float [ %4115, %4262 ], [ %4115, %4343 ], [ %4470, %4569 ], [ %4115, %4110 ]
  %4244 = phi float [ %4116, %4262 ], [ %4116, %4343 ], [ %4468, %4569 ], [ %4116, %4110 ]
  %4245 = phi float [ %4117, %4262 ], [ %4117, %4343 ], [ %4513, %4569 ], [ %4117, %4110 ]
  %4246 = phi float [ %4118, %4262 ], [ %4118, %4343 ], [ %4514, %4569 ], [ %4118, %4110 ]
  %4247 = phi float [ %4119, %4262 ], [ %4119, %4343 ], [ %4515, %4569 ], [ %4119, %4110 ]
  %4248 = phi float [ %4120, %4262 ], [ %4120, %4343 ], [ %4579, %4569 ], [ %4120, %4110 ]
  %4249 = phi float [ %4121, %4262 ], [ %4121, %4343 ], [ %4580, %4569 ], [ %4121, %4110 ]
  %4250 = phi float [ %4122, %4262 ], [ %4122, %4343 ], [ %4581, %4569 ], [ %4122, %4110 ]
  %4251 = phi float [ %4123, %4262 ], [ %4123, %4343 ], [ %4449, %4569 ], [ %4123, %4110 ]
  %4252 = phi float [ %4124, %4262 ], [ %4124, %4343 ], [ %4450, %4569 ], [ %4124, %4110 ]
  %4253 = phi float [ %4125, %4262 ], [ %4125, %4343 ], [ %4451, %4569 ], [ %4125, %4110 ]
  %4254 = phi float [ %4126, %4262 ], [ %4126, %4343 ], [ %4523, %4569 ], [ %4126, %4110 ]
  %4255 = phi float [ %4127, %4262 ], [ %4127, %4343 ], [ %4520, %4569 ], [ %4127, %4110 ]
  %4256 = phi float [ %4128, %4262 ], [ %4128, %4343 ], [ %4517, %4569 ], [ %4128, %4110 ]
  %4257 = phi float [ %4129, %4262 ], [ %4129, %4343 ], [ %4466, %4569 ], [ %4129, %4110 ]
  %4258 = phi float [ %4130, %4262 ], [ %4130, %4343 ], [ %4461, %4569 ], [ %4130, %4110 ]
  %4259 = phi float [ %4131, %4262 ], [ %4131, %4343 ], [ %4462, %4569 ], [ %4131, %4110 ]
  %4260 = phi float [ %4132, %4262 ], [ %4132, %4343 ], [ %4463, %4569 ], [ %4132, %4110 ]
  %4261 = icmp eq i32 %4189, %4109
  br i1 %4261, label %4582, label %4110

; <label>:4262                                    ; preds = %4110
  %4263 = extractvalue %dx.types.ResRet.f32 %4159, 3
  %4264 = extractvalue %dx.types.ResRet.f32 %4159, 1
  %4265 = extractvalue %dx.types.ResRet.f32 %4159, 0
  %4266 = extractvalue %dx.types.ResRet.f32 %4149, 1
  %4267 = extractvalue %dx.types.ResRet.f32 %4149, 0
  %4268 = extractvalue %dx.types.ResRet.i32 %4145, 3
  %4269 = extractvalue %dx.types.ResRet.i32 %4145, 2
  %4270 = add i32 %4268, 0
  %4271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4270, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4273 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4271, %dx.types.Handle %4272, float %4198, float %4205, float undef, float undef, i32 0, i32 0, i32 undef, float %4226, float %4228, float undef, float %4227, float %4229, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = fmul fast float %4274, %4267
  %4276 = fadd fast float %4275, %4266
  %4277 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4278 = fmul fast float %4198, %4154
  %4279 = call float @dx.op.tertiary.f32(i32 46, float %4155, float %4205, float %4278)  ; FMad(a,b,c)
  %4280 = fadd fast float %4279, %4265
  %4281 = fmul fast float %4198, %4156
  %4282 = call float @dx.op.tertiary.f32(i32 46, float %4157, float %4205, float %4281)  ; FMad(a,b,c)
  %4283 = fadd fast float %4282, %4264
  %4284 = fmul fast float %4226, %4154
  %4285 = call float @dx.op.tertiary.f32(i32 46, float %4155, float %4228, float %4284)  ; FMad(a,b,c)
  %4286 = fmul fast float %4226, %4156
  %4287 = call float @dx.op.tertiary.f32(i32 46, float %4157, float %4228, float %4286)  ; FMad(a,b,c)
  %4288 = fmul fast float %4227, %4154
  %4289 = call float @dx.op.tertiary.f32(i32 46, float %4155, float %4229, float %4288)  ; FMad(a,b,c)
  %4290 = fmul fast float %4227, %4156
  %4291 = call float @dx.op.tertiary.f32(i32 46, float %4157, float %4229, float %4290)  ; FMad(a,b,c)
  %4292 = add i32 %4269, 0
  %4293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4292, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4294 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4293, %dx.types.Handle %4272, float %4280, float %4283, float undef, float undef, i32 0, i32 0, i32 undef, float %4285, float %4287, float undef, float %4289, float %4291, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4296 = and i32 %4190, 1024
  %4297 = icmp ne i32 %4296, 0
  %4298 = fcmp fast ogt float %4295, 0x3FE0101020000000
  %4299 = uitofp i1 %4298 to float
  %4300 = select i1 %4297, float %4299, float %4295
  %4301 = and i32 %4190, 8192
  %4302 = icmp ne i32 %4301, 0
  %4303 = select i1 %4302, float %4263, float 1.000000e+00
  %4304 = fmul fast float %4198, 2.000000e+00
  %4305 = fadd fast float %4304, -1.000000e+00
  %4306 = call float @dx.op.unary.f32(i32 6, float %4305)  ; FAbs(value)
  %4307 = fmul fast float %4306, %4187
  %4308 = fsub fast float %4307, %4187
  %4309 = call float @dx.op.unary.f32(i32 7, float %4308)  ; Saturate(value)
  %4310 = fmul fast float %4205, 2.000000e+00
  %4311 = fadd fast float %4310, -1.000000e+00
  %4312 = call float @dx.op.unary.f32(i32 6, float %4311)  ; FAbs(value)
  %4313 = fmul fast float %4312, %4188
  %4314 = fsub fast float %4313, %4188
  %4315 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4316 = fmul fast float %4217, %4150
  %4317 = fsub fast float %4316, %4150
  %4318 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4319 = fmul fast float %4277, %4303
  %4320 = fmul fast float %4319, %4274
  %4321 = fmul fast float %4320, %4309
  %4322 = fmul fast float %4321, %4300
  %4323 = fmul fast float %4322, %4315
  %4324 = fmul fast float %4323, %4318
  %4325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.f32 %4325, 1
  %4327 = extractvalue %dx.types.CBufRet.f32 %4325, 0
  %4328 = fsub fast float %4234, %4327
  %4329 = fmul fast float %4328, %4326
  %4330 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4331 = fmul fast float %4324, %4151
  %4332 = fadd fast float %4324, %4151
  %4333 = fmul fast float %4332, %4160
  %4334 = fsub fast float %4333, %4160
  %4335 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  %4336 = and i32 %4190, 128
  %4337 = icmp ne i32 %4336, 0
  %4338 = select i1 %4337, float %4335, float %4331
  %4339 = fmul fast float %4338, %4330
  %4340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.f32 %4340, 0
  %4342 = fcmp fast ugt float %4339, %4341
  br i1 %4342, label %4343, label %4239

; <label>:4343                                    ; preds = %4262
  %4344 = select i1 %4302, float %4339, float 0.000000e+00
  %4345 = fadd fast float %4344, %4112
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  br i1 %4302, label %4239, label %4347

; <label>:4347                                    ; preds = %4343
  %4348 = and i32 %4190, 4
  %4349 = and i32 %4190, 8
  %4350 = add i32 %4146, 0
  %4351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4350, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4353 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4351, %dx.types.Handle %4352, float %4280, float %4283, float undef, float undef, i32 0, i32 0, i32 undef, float %4285, float %4287, float undef, float %4289, float %4291, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = extractvalue %dx.types.ResRet.f32 %4353, 1
  %4356 = extractvalue %dx.types.ResRet.f32 %4353, 2
  %4357 = extractvalue %dx.types.ResRet.f32 %4353, 3
  %4358 = bitcast float %4172 to i32
  %4359 = and i32 %4358, 255
  %4360 = uitofp i32 %4359 to float
  %4361 = lshr i32 %4358, 8
  %4362 = and i32 %4361, 255
  %4363 = uitofp i32 %4362 to float
  %4364 = fmul fast float %4357, %4360
  %4365 = fadd fast float %4364, %4363
  %4366 = fmul fast float %4365, 0x3F70101000000000
  %4367 = add i32 %4147, 0
  %4368 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4367, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4369 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4368, %dx.types.Handle %4352, float %4280, float %4283, float undef, float undef, i32 0, i32 0, i32 undef, float %4285, float %4287, float undef, float %4289, float %4291, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4370 = extractvalue %dx.types.ResRet.f32 %4369, 0
  %4371 = extractvalue %dx.types.ResRet.f32 %4369, 1
  %4372 = extractvalue %dx.types.ResRet.f32 %4369, 2
  %4373 = extractvalue %dx.types.ResRet.f32 %4369, 3
  %4374 = bitcast float %4166 to i32
  %4375 = and i32 %4374, 255
  %4376 = uitofp i32 %4375 to float
  %4377 = lshr i32 %4374, 8
  %4378 = and i32 %4377, 255
  %4379 = uitofp i32 %4378 to float
  %4380 = lshr i32 %4374, 16
  %4381 = and i32 %4380, 255
  %4382 = uitofp i32 %4381 to float
  %4383 = fmul fast float %4382, 0x3F70101000000000
  %4384 = fmul fast float %4370, %4376
  %4385 = fadd fast float %4384, %4379
  %4386 = fmul fast float %4385, 0x3F70101000000000
  %4387 = fadd fast float %4371, -5.000000e-01
  %4388 = fadd fast float %4373, -5.000000e-01
  %4389 = fmul fast float %4387, %4383
  %4390 = fmul fast float %4388, %4383
  %4391 = fadd fast float %4389, 5.000000e-01
  %4392 = fadd fast float %4390, 5.000000e-01
  %4393 = fmul fast float %4354, %4175
  %4394 = fmul fast float %4355, %4176
  %4395 = fmul fast float %4356, %4177
  %4396 = fmul fast float %4391, 2.000000e+00
  %4397 = fadd fast float %4396, -1.000000e+00
  %4398 = fmul fast float %4392, 2.000000e+00
  %4399 = fadd fast float %4398, -1.000000e+00
  %4400 = fadd fast float %4397, %4399
  %4401 = fmul fast float %4400, 5.000000e-01
  %4402 = fsub fast float %4397, %4399
  %4403 = fmul fast float %4402, 5.000000e-01
  %4404 = call float @dx.op.unary.f32(i32 6, float %4401)  ; FAbs(value)
  %4405 = fsub fast float 1.000000e+00, %4404
  %4406 = call float @dx.op.unary.f32(i32 6, float %4403)  ; FAbs(value)
  %4407 = fsub fast float %4405, %4406
  %4408 = call float @dx.op.dot3.f32(i32 55, float %4401, float %4403, float %4407, float %4401, float %4403, float %4407)  ; Dot3(ax,ay,az,bx,by,bz)
  %4409 = call float @dx.op.unary.f32(i32 25, float %4408)  ; Rsqrt(value)
  %4410 = fmul fast float %4401, %4409
  %4411 = fmul fast float %4403, %4409
  %4412 = fmul fast float %4409, %4407
  %4413 = fmul fast float %4412, %4140
  %4414 = fmul fast float %4412, %4141
  %4415 = fmul fast float %4412, %4142
  %4416 = fmul fast float %4410, %4163
  %4417 = fmul fast float %4410, %4164
  %4418 = fmul fast float %4410, %4165
  %4419 = fadd fast float %4416, %4413
  %4420 = fadd fast float %4417, %4414
  %4421 = fadd fast float %4418, %4415
  %4422 = fmul fast float %4411, %4169
  %4423 = fmul fast float %4411, %4170
  %4424 = fmul fast float %4411, %4171
  %4425 = fadd fast float %4419, %4422
  %4426 = fadd fast float %4420, %4423
  %4427 = fadd fast float %4421, %4424
  %4428 = call float @dx.op.dot3.f32(i32 55, float %4425, float %4426, float %4427, float %4425, float %4426, float %4427)  ; Dot3(ax,ay,az,bx,by,bz)
  %4429 = call float @dx.op.unary.f32(i32 25, float %4428)  ; Rsqrt(value)
  %4430 = fmul fast float %4425, %4429
  %4431 = fmul fast float %4426, %4429
  %4432 = fmul fast float %4427, %4429
  %4433 = icmp ne i32 %4349, 0
  %4434 = select i1 %4433, float 1.000000e+00, float 0.000000e+00
  %4435 = fmul fast float %4339, %4434
  %4436 = and i32 %4190, 1
  %4437 = icmp eq i32 %4436, 0
  br i1 %4437, label %4438, label %4442

; <label>:4438                                    ; preds = %4347
  %4439 = fsub fast float %4430, %4123
  %4440 = fsub fast float %4431, %4124
  %4441 = fsub fast float %4432, %4125
  br label %4442

; <label>:4442                                    ; preds = %4438, %4347
  %4443 = phi float [ %4439, %4438 ], [ %4430, %4347 ]
  %4444 = phi float [ %4440, %4438 ], [ %4431, %4347 ]
  %4445 = phi float [ %4441, %4438 ], [ %4432, %4347 ]
  %4446 = fmul float %4445, %4435
  %4447 = fmul float %4444, %4435
  %4448 = fmul float %4443, %4435
  %4449 = fadd fast float %4448, %4123
  %4450 = fadd fast float %4447, %4124
  %4451 = fadd fast float %4446, %4125
  %4452 = icmp ne i32 %4348, 0
  %4453 = select i1 %4452, float 1.000000e+00, float 0.000000e+00
  %4454 = fmul fast float %4339, %4453
  %4455 = fsub fast float %4393, %4130
  %4456 = fsub fast float %4394, %4131
  %4457 = fsub fast float %4395, %4132
  %4458 = fmul fast float %4455, %4454
  %4459 = fmul fast float %4456, %4454
  %4460 = fmul fast float %4457, %4454
  %4461 = fadd fast float %4458, %4130
  %4462 = fadd fast float %4459, %4131
  %4463 = fadd fast float %4460, %4132
  %4464 = fsub fast float %4366, %4129
  %4465 = fmul fast float %4464, %4454
  %4466 = fadd fast float %4465, %4129
  %4467 = fmul fast float %4454, %4116
  %4468 = fsub fast float %4116, %4467
  %4469 = fmul fast float %4454, %4115
  %4470 = fsub fast float %4115, %4469
  %4471 = bitcast float %4184 to i32
  %4472 = lshr i32 %4471, 16
  %4473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4472)  ; LegacyF16ToF32(value)
  %4474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4475 = extractvalue %dx.types.ResRet.i32 %4474, 0
  %4476 = and i32 %4475, 1
  %4477 = icmp eq i32 %4476, 0
  br i1 %4477, label %4478, label %4503

; <label>:4478                                    ; preds = %4442
  %4479 = fadd fast float %4366, 0xBFB99999A0000000
  %4480 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4481 = fmul fast float %4480, 0x3FF1C71C80000000
  %4482 = fsub fast float 1.000000e+00, %4481
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = fmul fast float %4483, %4393
  %4485 = fmul fast float %4483, %4394
  %4486 = fmul fast float %4483, %4395
  %4487 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4489 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4490 = call float @dx.op.binary.f32(i32 35, float %4488, float %4489)  ; FMax(a,b)
  %4491 = call float @dx.op.binary.f32(i32 35, float %4487, float %4490)  ; FMax(a,b)
  %4492 = fcmp fast ogt float %4491, 0.000000e+00
  %4493 = bitcast float %4491 to i32
  %4494 = sub nsw i32 2129859010, %4493
  %4495 = bitcast i32 %4494 to float
  %4496 = select i1 %4492, float %4495, float 0.000000e+00
  %4497 = fmul fast float %4487, %4473
  %4498 = fmul fast float %4488, %4473
  %4499 = fmul fast float %4489, %4473
  %4500 = fmul fast float %4497, %4496
  %4501 = fmul fast float %4498, %4496
  %4502 = fmul fast float %4499, %4496
  br label %4503

; <label>:4503                                    ; preds = %4478, %4442
  %4504 = phi float [ %4473, %4442 ], [ %4500, %4478 ]
  %4505 = phi float [ %4473, %4442 ], [ %4501, %4478 ]
  %4506 = phi float [ %4473, %4442 ], [ %4502, %4478 ]
  %4507 = fsub fast float %4504, %4117
  %4508 = fsub fast float %4505, %4118
  %4509 = fsub fast float %4506, %4119
  %4510 = fmul fast float %4507, %4454
  %4511 = fmul fast float %4508, %4454
  %4512 = fmul fast float %4509, %4454
  %4513 = fadd fast float %4510, %4117
  %4514 = fadd fast float %4511, %4118
  %4515 = fadd fast float %4512, %4119
  %4516 = fadd fast float %4339, %4128
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = fsub fast float %4386, %4127
  %4519 = fmul fast float %4518, %4435
  %4520 = fadd fast float %4519, %4127
  %4521 = fsub fast float %4372, %4126
  %4522 = fmul fast float %4521, %4435
  %4523 = fadd fast float %4522, %4126
  %4524 = call float @dx.op.dot3.f32(i32 55, float %4393, float %4394, float %4395, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4525, 0
  %4527 = extractvalue %dx.types.CBufRet.f32 %4525, 1
  %4528 = fmul fast float %4527, %4524
  %4529 = fadd fast float %4528, %4526
  %4530 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4531 = bitcast float %4178 to i32
  %4532 = and i32 %4531, 65535
  %4533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4532)  ; LegacyF16ToF32(value)
  %4534 = lshr i32 %4531, 16
  %4535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4534)  ; LegacyF16ToF32(value)
  %4536 = fcmp fast oge float %4533, 0.000000e+00
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 0
  %4539 = select i1 %4536, float %4533, float %4538
  %4540 = fadd fast float %4539, %4535
  %4541 = fsub fast float %4530, %4114
  %4542 = fmul fast float %4541, %4339
  %4543 = fadd fast float %4542, %4114
  %4544 = fmul fast float %4540, %4339
  %4545 = call float @dx.op.binary.f32(i32 35, float %4113, float %4544)  ; FMax(a,b)
  %4546 = and i32 %4190, 16
  %4547 = icmp eq i32 %4546, 0
  br i1 %4547, label %4569, label %4548

; <label>:4548                                    ; preds = %4503
  %4549 = add i32 %4181, 0
  %4550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4549, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4551 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4550, %dx.types.Handle %4352, float %4280, float %4283, float undef, float undef, i32 0, i32 0, i32 undef, float %4285, float %4287, float undef, float %4289, float %4291, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4552 = extractvalue %dx.types.ResRet.f32 %4551, 0
  %4553 = extractvalue %dx.types.ResRet.f32 %4551, 1
  %4554 = extractvalue %dx.types.ResRet.f32 %4551, 2
  %4555 = and i32 %4471, 65535
  %4556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4555)  ; LegacyF16ToF32(value)
  %4557 = fmul fast float %4552, %4175
  %4558 = fmul fast float %4553, %4176
  %4559 = fmul fast float %4554, %4177
  %4560 = and i32 %4190, 16384
  %4561 = icmp ne i32 %4560, 0
  %4562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4563 = extractvalue %dx.types.CBufRet.f32 %4562, 0
  %4564 = select i1 %4561, float %4563, float 1.000000e+00
  %4565 = fmul fast float %4564, %4556
  %4566 = fmul fast float %4557, %4565
  %4567 = fmul fast float %4558, %4565
  %4568 = fmul fast float %4559, %4565
  br label %4569

; <label>:4569                                    ; preds = %4548, %4503
  %4570 = phi float [ %4566, %4548 ], [ 0.000000e+00, %4503 ]
  %4571 = phi float [ %4567, %4548 ], [ 0.000000e+00, %4503 ]
  %4572 = phi float [ %4568, %4548 ], [ 0.000000e+00, %4503 ]
  %4573 = fsub fast float %4570, %4120
  %4574 = fsub fast float %4571, %4121
  %4575 = fsub fast float %4572, %4122
  %4576 = fmul fast float %4573, %4339
  %4577 = fmul fast float %4574, %4339
  %4578 = fmul fast float %4575, %4339
  %4579 = fadd fast float %4576, %4120
  %4580 = fadd fast float %4577, %4121
  %4581 = fadd fast float %4578, %4122
  br label %4239

; <label>:4582                                    ; preds = %4239
  br label %4583

; <label>:4583                                    ; preds = %4582, %4056
  %4584 = phi float [ 0.000000e+00, %4056 ], [ %4240, %4582 ]
  %4585 = phi float [ %4025, %4056 ], [ %4241, %4582 ]
  %4586 = phi float [ %4023, %4056 ], [ %4242, %4582 ]
  %4587 = phi float [ 0.000000e+00, %4056 ], [ %4243, %4582 ]
  %4588 = phi float [ 0.000000e+00, %4056 ], [ %4244, %4582 ]
  %4589 = phi float [ %4016, %4056 ], [ %4245, %4582 ]
  %4590 = phi float [ %4017, %4056 ], [ %4246, %4582 ]
  %4591 = phi float [ %4018, %4056 ], [ %4247, %4582 ]
  %4592 = phi float [ %4013, %4056 ], [ %4248, %4582 ]
  %4593 = phi float [ %4014, %4056 ], [ %4249, %4582 ]
  %4594 = phi float [ %4015, %4056 ], [ %4250, %4582 ]
  %4595 = phi float [ %4051, %4056 ], [ %4251, %4582 ]
  %4596 = phi float [ %4052, %4056 ], [ %4252, %4582 ]
  %4597 = phi float [ %4053, %4056 ], [ %4253, %4582 ]
  %4598 = phi float [ %4021, %4056 ], [ %4254, %4582 ]
  %4599 = phi float [ %4020, %4056 ], [ %4255, %4582 ]
  %4600 = phi float [ 0.000000e+00, %4056 ], [ %4256, %4582 ]
  %4601 = phi float [ %4019, %4056 ], [ %4257, %4582 ]
  %4602 = phi float [ %4010, %4056 ], [ %4258, %4582 ]
  %4603 = phi float [ %4011, %4056 ], [ %4259, %4582 ]
  %4604 = phi float [ %4012, %4056 ], [ %4260, %4582 ]
  %4605 = call float @dx.op.dot3.f32(i32 55, float %4595, float %4596, float %4597, float %4595, float %4596, float %4597)  ; Dot3(ax,ay,az,bx,by,bz)
  %4606 = call float @dx.op.unary.f32(i32 25, float %4605)  ; Rsqrt(value)
  %4607 = fmul fast float %4606, %4595
  %4608 = fmul fast float %4606, %4596
  %4609 = fmul fast float %4606, %4597
  %4610 = fadd fast float %4600, %1184
  %4611 = call float @dx.op.unary.f32(i32 7, float %4610)  ; Saturate(value)
  %4612 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float %4607, float %4608, float %4609)  ; Dot3(ax,ay,az,bx,by,bz)
  %4613 = call float @dx.op.unary.f32(i32 25, float %4612)  ; Rsqrt(value)
  %4614 = fmul fast float %4613, %4607
  %4615 = fmul fast float %4613, %4608
  %4616 = fmul fast float %4613, %4609
  br label %4617

; <label>:4617                                    ; preds = %4583, %4007
  %4618 = phi float [ %4614, %4583 ], [ %4051, %4007 ]
  %4619 = phi float [ %4615, %4583 ], [ %4052, %4007 ]
  %4620 = phi float [ %4616, %4583 ], [ %4053, %4007 ]
  %4621 = phi float [ %4602, %4583 ], [ %4010, %4007 ]
  %4622 = phi float [ %4603, %4583 ], [ %4011, %4007 ]
  %4623 = phi float [ %4604, %4583 ], [ %4012, %4007 ]
  %4624 = phi float [ %4589, %4583 ], [ %4016, %4007 ]
  %4625 = phi float [ %4590, %4583 ], [ %4017, %4007 ]
  %4626 = phi float [ %4591, %4583 ], [ %4018, %4007 ]
  %4627 = phi float [ %4592, %4583 ], [ %4013, %4007 ]
  %4628 = phi float [ %4593, %4583 ], [ %4014, %4007 ]
  %4629 = phi float [ %4594, %4583 ], [ %4015, %4007 ]
  %4630 = phi float [ %4601, %4583 ], [ %4019, %4007 ]
  %4631 = phi float [ %4611, %4583 ], [ %1184, %4007 ]
  %4632 = phi float [ %4599, %4583 ], [ %4020, %4007 ]
  %4633 = phi float [ %4598, %4583 ], [ %4021, %4007 ]
  %4634 = phi float [ %4588, %4583 ], [ 0.000000e+00, %4007 ]
  %4635 = phi float [ %4587, %4583 ], [ 0.000000e+00, %4007 ]
  %4636 = phi float [ %4584, %4583 ], [ 0.000000e+00, %4007 ]
  %4637 = phi float [ %4585, %4583 ], [ %4025, %4007 ]
  %4638 = phi float [ %4586, %4583 ], [ %4023, %4007 ]
  %4639 = fadd fast float %4630, 0xBFB99999A0000000
  %4640 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4641 = fmul fast float %4640, 0x3FF1C71C80000000
  %4642 = call float @dx.op.binary.f32(i32 36, float %4630, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4643 = fsub fast float 1.000000e+00, %4641
  %4644 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4645 = fmul fast float %4644, %4621
  %4646 = fmul fast float %4644, %4622
  %4647 = fmul fast float %4644, %4623
  %4648 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4650 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4651 = fmul fast float %4641, %4621
  %4652 = fmul fast float %4641, %4622
  %4653 = fmul fast float %4641, %4623
  %4654 = fadd fast float %4651, %4642
  %4655 = fadd fast float %4652, %4642
  %4656 = fadd fast float %4653, %4642
  %4657 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4658 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4659 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4660 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4662 = extractvalue %dx.types.ResRet.i32 %4661, 0
  %4663 = and i32 %4662, 1
  %4664 = icmp eq i32 %4663, 0
  br i1 %4664, label %4679, label %4665

; <label>:4665                                    ; preds = %4617
  %4666 = call float @dx.op.binary.f32(i32 35, float %4649, float %4650)  ; FMax(a,b)
  %4667 = call float @dx.op.binary.f32(i32 35, float %4648, float %4666)  ; FMax(a,b)
  %4668 = fcmp fast ogt float %4667, 0.000000e+00
  %4669 = bitcast float %4667 to i32
  %4670 = sub nsw i32 2129859010, %4669
  %4671 = bitcast i32 %4670 to float
  %4672 = select i1 %4668, float %4671, float 0.000000e+00
  %4673 = fmul fast float %4648, %4624
  %4674 = fmul fast float %4649, %4625
  %4675 = fmul fast float %4650, %4626
  %4676 = fmul fast float %4673, %4672
  %4677 = fmul fast float %4674, %4672
  %4678 = fmul fast float %4675, %4672
  br label %4679

; <label>:4679                                    ; preds = %4665, %4617
  %4680 = phi float [ %4676, %4665 ], [ %4624, %4617 ]
  %4681 = phi float [ %4677, %4665 ], [ %4625, %4617 ]
  %4682 = phi float [ %4678, %4665 ], [ %4626, %4617 ]
  %4683 = fadd fast float %4648, 0xBFD51EB860000000
  %4684 = fadd fast float %4649, 0xBFD51EB860000000
  %4685 = fadd fast float %4650, 0xBFD51EB860000000
  %4686 = fmul fast float %4683, %4683
  %4687 = fmul fast float %4684, %4684
  %4688 = fmul fast float %4685, %4685
  %4689 = fmul fast float %4686, %4686
  %4690 = fmul fast float %4689, 1.000000e+02
  %4691 = fmul fast float %4687, %4687
  %4692 = fmul fast float %4691, 1.000000e+02
  %4693 = fmul fast float %4688, %4688
  %4694 = fmul fast float %4693, 1.000000e+02
  %4695 = fadd fast float %4690, 3.500000e+00
  %4696 = fadd fast float %4692, 3.500000e+00
  %4697 = fadd fast float %4694, 3.500000e+00
  %4698 = call float @dx.op.binary.f32(i32 35, float %4680, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4699 = call float @dx.op.binary.f32(i32 35, float %4681, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4700 = call float @dx.op.binary.f32(i32 35, float %4682, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4701 = fdiv fast float %4695, %4698
  %4702 = fdiv fast float %4696, %4699
  %4703 = fdiv fast float %4697, %4700
  %4704 = fmul fast float %4022, 0xBFF7154760000000
  %4705 = fmul fast float %4704, %4701
  %4706 = call float @dx.op.unary.f32(i32 21, float %4705)  ; Exp(value)
  %4707 = fmul fast float %4706, 2.500000e-01
  %4708 = fmul fast float %4022, 0xBFDEC709E0000000
  %4709 = fmul fast float %4708, %4701
  %4710 = call float @dx.op.unary.f32(i32 21, float %4709)  ; Exp(value)
  %4711 = fmul fast float %4710, 7.500000e-01
  %4712 = fmul fast float %4704, %4702
  %4713 = call float @dx.op.unary.f32(i32 21, float %4712)  ; Exp(value)
  %4714 = fmul fast float %4713, 2.500000e-01
  %4715 = fmul fast float %4708, %4702
  %4716 = call float @dx.op.unary.f32(i32 21, float %4715)  ; Exp(value)
  %4717 = fmul fast float %4716, 7.500000e-01
  %4718 = fmul fast float %4704, %4703
  %4719 = call float @dx.op.unary.f32(i32 21, float %4718)  ; Exp(value)
  %4720 = fmul fast float %4719, 2.500000e-01
  %4721 = fmul fast float %4708, %4703
  %4722 = call float @dx.op.unary.f32(i32 21, float %4721)  ; Exp(value)
  %4723 = fmul fast float %4722, 7.500000e-01
  %4724 = fadd fast float %4707, %4711
  %4725 = fadd fast float %4714, %4717
  %4726 = fadd fast float %4720, %4723
  %4727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4728 = extractvalue %dx.types.CBufRet.i32 %4727, 3
  %4729 = and i32 %4728, 8
  %4730 = icmp ne i32 %4729, 0
  %4731 = call float @dx.op.binary.f32(i32 35, float %4648, float %4621)  ; FMax(a,b)
  %4732 = call float @dx.op.binary.f32(i32 35, float %4649, float %4621)  ; FMax(a,b)
  %4733 = call float @dx.op.binary.f32(i32 35, float %4650, float %4621)  ; FMax(a,b)
  %4734 = call float @dx.op.dot3.f32(i32 55, float %4648, float %4649, float %4650, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4735 = select i1 %215, float %4621, float %4648
  %4736 = select i1 %215, float %4734, float %4649
  %4737 = select i1 %215, float 1.000000e+00, float %4650
  %4738 = select i1 %4730, float %4731, float %4735
  %4739 = select i1 %4730, float %4732, float %4736
  %4740 = select i1 %4730, float %4733, float %4737
  %4741 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4681, float %4682, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = select i1 %215, float %4741, float %4680
  %4743 = select i1 %215, float %4741, float %4681
  %4744 = select i1 %215, float %4741, float %4682
  %4745 = and i32 %191, 3
  %4746 = select i1 %185, i32 %4745, i32 0
  %4747 = icmp eq i32 %4746, 1
  br i1 %4747, label %4748, label %4824

; <label>:4748                                    ; preds = %4679
  %4749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.f32 %4749, 0
  %4751 = extractvalue %dx.types.CBufRet.f32 %4749, 1
  %4752 = fadd fast float %4750, %154
  %4753 = fadd fast float %4751, %155
  %4754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4755 = extractvalue %dx.types.CBufRet.f32 %4754, 0
  %4756 = extractvalue %dx.types.CBufRet.f32 %4754, 1
  %4757 = fsub fast float %4752, %4755
  %4758 = fsub fast float %4753, %4756
  %4759 = fmul fast float %4757, %4757
  %4760 = fmul fast float %4758, %4758
  %4761 = fadd fast float %4759, %4760
  %4762 = call float @dx.op.unary.f32(i32 24, float %4761)  ; Sqrt(value)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4754, 2
  %4764 = fcmp fast olt float %4762, %4763
  br i1 %4764, label %4765, label %4818

; <label>:4765                                    ; preds = %4748
  %4766 = extractvalue %dx.types.CBufRet.f32 %4749, 2
  %4767 = fadd fast float %4766, %156
  %4768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4769 = extractvalue %dx.types.CBufRet.f32 %4768, 0
  %4770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4770, 0
  %4772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4773 = extractvalue %dx.types.CBufRet.f32 %4772, 0
  %4774 = extractvalue %dx.types.CBufRet.f32 %4768, 1
  %4775 = extractvalue %dx.types.CBufRet.f32 %4770, 1
  %4776 = extractvalue %dx.types.CBufRet.f32 %4772, 1
  %4777 = extractvalue %dx.types.CBufRet.f32 %4768, 3
  %4778 = extractvalue %dx.types.CBufRet.f32 %4770, 3
  %4779 = extractvalue %dx.types.CBufRet.f32 %4772, 3
  %4780 = fadd fast float %4777, %4752
  %4781 = fadd fast float %4778, %4753
  %4782 = fadd fast float %4767, %4779
  %4783 = fmul fast float %4780, %4769
  %4784 = call float @dx.op.tertiary.f32(i32 46, float %4781, float %4771, float %4783)  ; FMad(a,b,c)
  %4785 = call float @dx.op.tertiary.f32(i32 46, float %4782, float %4773, float %4784)  ; FMad(a,b,c)
  %4786 = fmul fast float %4780, %4774
  %4787 = call float @dx.op.tertiary.f32(i32 46, float %4781, float %4775, float %4786)  ; FMad(a,b,c)
  %4788 = call float @dx.op.tertiary.f32(i32 46, float %4782, float %4776, float %4787)  ; FMad(a,b,c)
  %4789 = fsub fast float %4785, %4777
  %4790 = fsub fast float %4788, %4778
  %4791 = fsub fast float %4789, %4755
  %4792 = fadd fast float %4791, %4763
  %4793 = fsub fast float %4790, %4756
  %4794 = fadd fast float %4793, %4763
  %4795 = extractvalue %dx.types.CBufRet.f32 %4754, 3
  %4796 = fmul fast float %4792, %4795
  %4797 = fmul fast float %4794, %4795
  %4798 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4799 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4800 = fsub fast float 1.000000e+00, %4798
  %4801 = fsub fast float 1.000000e+00, %4799
  %4802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %4800, float %4801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = fcmp fast ugt float %4803, 0.000000e+00
  br i1 %4804, label %4805, label %4818

; <label>:4805                                    ; preds = %4765
  %4806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4807 = extractvalue %dx.types.CBufRet.f32 %4806, 2
  %4808 = fmul fast float %4807, %4803
  %4809 = extractvalue %dx.types.CBufRet.f32 %4806, 3
  %4810 = fadd fast float %4809, %4808
  %4811 = extractvalue %dx.types.CBufRet.f32 %4772, 2
  %4812 = fadd fast float %4810, %4779
  %4813 = fmul fast float %4785, %4773
  %4814 = call float @dx.op.tertiary.f32(i32 46, float %4788, float %4776, float %4813)  ; FMad(a,b,c)
  %4815 = call float @dx.op.tertiary.f32(i32 46, float %4812, float %4811, float %4814)  ; FMad(a,b,c)
  %4816 = fsub fast float %4815, %4779
  %4817 = fsub fast float %4816, %4766
  br label %4818

; <label>:4818                                    ; preds = %4805, %4765, %4748
  %4819 = phi i1 [ true, %4805 ], [ false, %4765 ], [ false, %4748 ]
  %4820 = phi float [ %4817, %4805 ], [ -1.310720e+05, %4765 ], [ -1.310720e+05, %4748 ]
  %4821 = fsub fast float %4820, %156
  %4822 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4823 = select i1 %4819, float %4822, float 1.000000e+00
  br label %4824

; <label>:4824                                    ; preds = %4818, %4679
  %4825 = phi float [ %4823, %4818 ], [ 0.000000e+00, %4679 ]
  %4826 = icmp eq i32 %4746, 3
  %4827 = select i1 %4826, float 1.000000e+00, float %4825
  %4828 = call float @dx.op.binary.f32(i32 35, float %4636, float %4827)  ; FMax(a,b)
  %4829 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4830 = fcmp fast une float %4829, 0.000000e+00
  %4831 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %4832 = call float @dx.op.unary.f32(i32 25, float %4831)  ; Rsqrt(value)
  br i1 %4830, label %4840, label %4833

; <label>:4833                                    ; preds = %4824
  %4834 = fmul fast float %4832, %154
  %4835 = fmul fast float %4832, %155
  %4836 = fmul fast float %4832, %156
  %4837 = fsub fast float -0.000000e+00, %4834
  %4838 = fsub fast float -0.000000e+00, %4835
  %4839 = fsub fast float -0.000000e+00, %4836
  br label %5008

; <label>:4840                                    ; preds = %4824
  %4841 = fmul fast float %154, %4832
  %4842 = fsub fast float -0.000000e+00, %4841
  %4843 = fmul fast float %155, %4832
  %4844 = fsub fast float -0.000000e+00, %4843
  %4845 = fmul fast float %156, %4832
  %4846 = fsub fast float -0.000000e+00, %4845
  %4847 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4844, float %4846, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4848 = fmul fast float %4829, 2.500000e+00
  %4849 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4850 = fmul fast float %4829, 0x4013FFFFE0000000
  %4851 = fadd fast float %4850, 0xBFFFFFFFE0000000
  %4852 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4853 = fmul fast float %4829, 0x4004000020000000
  %4854 = fadd fast float %4853, 0xBFF8000040000000
  %4855 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  %4856 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4857 = fmul fast float %4639, 1.000000e+01
  %4858 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4859 = fmul fast float %4858, 2.000000e+00
  %4860 = fsub fast float 3.000000e+00, %4859
  %4861 = fmul fast float %4858, %4858
  %4862 = fmul fast float %4861, %4860
  %4863 = fsub fast float 1.000000e+00, %4862
  %4864 = fsub fast float 0x3FE3333340000000, %4660
  %4865 = fmul fast float %4864, 0x400AAAAAA0000000
  %4866 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4867 = fmul fast float %4863, %4866
  %4868 = fmul fast float %4738, 0x3FEA2B8620000000
  %4869 = fmul fast float %4739, 0x3FEA2B8620000000
  %4870 = fmul fast float %4740, 0x3FEA2B8620000000
  %4871 = fadd fast float %4868, 0x3FC81DFBA0000000
  %4872 = fmul fast float %4871, %4738
  %4873 = fadd fast float %4872, 0x3F910E6020000000
  %4874 = fadd fast float %4869, 0x3FC81DFBA0000000
  %4875 = fmul fast float %4874, %4739
  %4876 = fadd fast float %4875, 0x3F910E6020000000
  %4877 = fadd fast float %4870, 0x3FC81DFBA0000000
  %4878 = fmul fast float %4877, %4740
  %4879 = fadd fast float %4878, 0x3F910E6020000000
  %4880 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4881 = call float @dx.op.unary.f32(i32 7, float %4876)  ; Saturate(value)
  %4882 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4883 = fsub fast float %4880, %4738
  %4884 = fsub fast float %4881, %4739
  %4885 = fsub fast float %4882, %4740
  %4886 = fmul fast float %4883, %4856
  %4887 = fmul fast float %4886, %4867
  %4888 = fmul fast float %4884, %4856
  %4889 = fmul fast float %4888, %4867
  %4890 = fmul fast float %4885, %4856
  %4891 = fmul fast float %4890, %4867
  %4892 = fadd fast float %4887, %4738
  %4893 = fadd fast float %4889, %4739
  %4894 = fadd fast float %4891, %4740
  %4895 = fmul fast float %4633, %4633
  %4896 = fmul fast float %4895, %4895
  %4897 = fadd fast float %4852, 1.000000e+00
  %4898 = fsub fast float %4897, %4867
  %4899 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4900 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4901 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4902 = fsub fast float 1.000000e+00, %4896
  %4903 = call float @dx.op.binary.f32(i32 36, float %4899, float %4902)  ; FMin(a,b)
  %4904 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4905 = call float @dx.op.binary.f32(i32 35, float %4903, float %4904)  ; FMax(a,b)
  %4906 = fadd fast float %4901, 0xBFE4CCCCC0000000
  %4907 = fmul fast float %4906, 0x4006DB6DA0000000
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = fmul fast float %4908, 2.000000e+00
  %4910 = fsub fast float 3.000000e+00, %4909
  %4911 = bitcast float %4657 to i32
  %4912 = ashr i32 %4911, 1
  %4913 = add nsw i32 %4912, 532487669
  %4914 = bitcast i32 %4913 to float
  %4915 = fsub fast float 1.000000e+00, %4914
  %4916 = bitcast float %4915 to i32
  %4917 = sub nsw i32 2129859010, %4916
  %4918 = bitcast i32 %4917 to float
  %4919 = fmul fast float %4918, 2.000000e+00
  %4920 = bitcast float %4658 to i32
  %4921 = ashr i32 %4920, 1
  %4922 = add nsw i32 %4921, 532487669
  %4923 = bitcast i32 %4922 to float
  %4924 = fsub fast float 1.000000e+00, %4923
  %4925 = bitcast float %4924 to i32
  %4926 = sub nsw i32 2129859010, %4925
  %4927 = bitcast i32 %4926 to float
  %4928 = fmul fast float %4927, 2.000000e+00
  %4929 = bitcast float %4659 to i32
  %4930 = ashr i32 %4929, 1
  %4931 = add nsw i32 %4930, 532487669
  %4932 = bitcast i32 %4931 to float
  %4933 = fsub fast float 1.000000e+00, %4932
  %4934 = bitcast float %4933 to i32
  %4935 = sub nsw i32 2129859010, %4934
  %4936 = bitcast i32 %4935 to float
  %4937 = fmul fast float %4936, 2.000000e+00
  %4938 = fsub fast float 0x4002A9FBE0000000, %4919
  %4939 = fadd fast float %4919, 0x3FD54FDF00000000
  %4940 = bitcast float %4939 to i32
  %4941 = sub nsw i32 2129859010, %4940
  %4942 = bitcast i32 %4941 to float
  %4943 = fmul fast float %4942, %4938
  %4944 = fmul fast float %4943, %4943
  %4945 = fsub fast float 0x4002A9FBE0000000, %4928
  %4946 = fadd fast float %4928, 0x3FD54FDF00000000
  %4947 = bitcast float %4946 to i32
  %4948 = sub nsw i32 2129859010, %4947
  %4949 = bitcast i32 %4948 to float
  %4950 = fmul fast float %4949, %4945
  %4951 = fmul fast float %4950, %4950
  %4952 = fsub fast float 0x4002A9FBE0000000, %4937
  %4953 = fadd fast float %4937, 0x3FD54FDF00000000
  %4954 = bitcast float %4953 to i32
  %4955 = sub nsw i32 2129859010, %4954
  %4956 = bitcast i32 %4955 to float
  %4957 = fmul fast float %4956, %4952
  %4958 = fmul fast float %4957, %4957
  %4959 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4944)  ; FMax(a,b)
  %4960 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4951)  ; FMax(a,b)
  %4961 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4958)  ; FMax(a,b)
  %4962 = fsub fast float 1.000000e+00, %4847
  %4963 = fadd fast float %4962, %4863
  %4964 = call float @dx.op.unary.f32(i32 7, float %4963)  ; Saturate(value)
  %4965 = fsub fast float 1.000000e+00, %4827
  %4966 = fmul fast float %4905, %4965
  %4967 = fmul fast float %4908, %4908
  %4968 = fmul fast float %4967, %4966
  %4969 = fmul fast float %4968, %4910
  %4970 = fmul fast float %4965, 0xBFE99999A0000000
  %4971 = fmul fast float %4970, %4856
  %4972 = fmul fast float %4971, %4867
  %4973 = fadd fast float %4972, 1.000000e+00
  %4974 = fadd fast float %4660, -1.000000e+00
  %4975 = fmul fast float %4973, %4974
  %4976 = fadd fast float %4975, 1.000000e+00
  %4977 = fsub fast float %4959, %4657
  %4978 = fsub fast float %4960, %4658
  %4979 = fsub fast float %4961, %4659
  %4980 = fmul fast float %4969, %4977
  %4981 = fmul fast float %4969, %4978
  %4982 = fmul fast float %4969, %4979
  %4983 = fadd fast float %4980, %4657
  %4984 = fadd fast float %4981, %4658
  %4985 = fadd fast float %4982, %4659
  %4986 = fsub fast float %106, %4618
  %4987 = fsub fast float %107, %4619
  %4988 = fsub fast float %108, %4620
  %4989 = fmul fast float %4969, %4986
  %4990 = fmul fast float %4969, %4987
  %4991 = fmul fast float %4969, %4988
  %4992 = fadd fast float %4989, %4618
  %4993 = fadd fast float %4990, %4619
  %4994 = fadd fast float %4991, %4620
  %4995 = fmul fast float %4969, %4964
  %4996 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4997 = fsub fast float 1.000000e+00, %4996
  %4998 = fmul fast float %4995, %4997
  %4999 = fadd fast float %4998, %4996
  %5000 = fsub fast float 1.000000e+00, %4633
  %5001 = fmul fast float %4969, %5000
  %5002 = fadd fast float %5001, %4633
  %5003 = call float @dx.op.dot3.f32(i32 55, float %4992, float %4993, float %4994, float %4992, float %4993, float %4994)  ; Dot3(ax,ay,az,bx,by,bz)
  %5004 = call float @dx.op.unary.f32(i32 25, float %5003)  ; Rsqrt(value)
  %5005 = fmul fast float %4992, %5004
  %5006 = fmul fast float %4993, %5004
  %5007 = fmul fast float %4994, %5004
  br label %5008

; <label>:5008                                    ; preds = %4840, %4833
  %5009 = phi float [ %4839, %4833 ], [ %4846, %4840 ]
  %5010 = phi float [ %4838, %4833 ], [ %4844, %4840 ]
  %5011 = phi float [ %4837, %4833 ], [ %4842, %4840 ]
  %5012 = phi float [ %4836, %4833 ], [ %4845, %4840 ]
  %5013 = phi float [ %4835, %4833 ], [ %4843, %4840 ]
  %5014 = phi float [ %4834, %4833 ], [ %4841, %4840 ]
  %5015 = phi float [ %4618, %4833 ], [ %5005, %4840 ]
  %5016 = phi float [ %4619, %4833 ], [ %5006, %4840 ]
  %5017 = phi float [ %4620, %4833 ], [ %5007, %4840 ]
  %5018 = phi float [ %4738, %4833 ], [ %4892, %4840 ]
  %5019 = phi float [ %4739, %4833 ], [ %4893, %4840 ]
  %5020 = phi float [ %4740, %4833 ], [ %4894, %4840 ]
  %5021 = phi float [ %4657, %4833 ], [ %4983, %4840 ]
  %5022 = phi float [ %4658, %4833 ], [ %4984, %4840 ]
  %5023 = phi float [ %4659, %4833 ], [ %4985, %4840 ]
  %5024 = phi float [ %4660, %4833 ], [ %4999, %4840 ]
  %5025 = phi float [ %4633, %4833 ], [ %5002, %4840 ]
  %5026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5027 = extractvalue %dx.types.CBufRet.f32 %5026, 2
  %5028 = extractvalue %dx.types.CBufRet.f32 %5026, 3
  %5029 = fmul fast float %124, %5027
  %5030 = fmul fast float %126, %5028
  %5031 = fsub fast float 1.000000e+00, %5029
  %5032 = fsub fast float 1.000000e+00, %5030
  %5033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5034 = extractvalue %dx.types.CBufRet.f32 %5033, 0
  %5035 = extractvalue %dx.types.CBufRet.f32 %5033, 1
  %5036 = extractvalue %dx.types.CBufRet.f32 %5033, 2
  %5037 = fmul fast float %5031, %5034
  %5038 = fmul fast float %5031, %5035
  %5039 = fmul fast float %5031, %5036
  %5040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = extractvalue %dx.types.CBufRet.f32 %5040, 0
  %5042 = extractvalue %dx.types.CBufRet.f32 %5040, 1
  %5043 = extractvalue %dx.types.CBufRet.f32 %5040, 2
  %5044 = fmul fast float %5032, %5041
  %5045 = fmul fast float %5032, %5042
  %5046 = fmul fast float %5032, %5043
  %5047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5048 = extractvalue %dx.types.CBufRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.CBufRet.f32 %5047, 1
  %5050 = extractvalue %dx.types.CBufRet.f32 %5047, 2
  %5051 = fadd fast float %5044, %5048
  %5052 = fadd fast float %5051, %5037
  %5053 = fadd fast float %5045, %5049
  %5054 = fadd fast float %5053, %5038
  %5055 = fadd fast float %5046, %5050
  %5056 = fadd fast float %5055, %5039
  %5057 = fmul fast float %5052, %87
  %5058 = fmul fast float %5054, %87
  %5059 = fmul fast float %5056, %87
  %5060 = select i1 %215, float 0.000000e+00, float %5023
  %5061 = call float @dx.op.dot3.f32(i32 55, float %5015, float %5016, float %5017, float %5011, float %5010, float %5009)  ; Dot3(ax,ay,az,bx,by,bz)
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = call float @dx.op.dot3.f32(i32 55, float %5014, float %5013, float %5012, float %5015, float %5016, float %5017)  ; Dot3(ax,ay,az,bx,by,bz)
  %5064 = fmul fast float %5063, 2.000000e+00
  %5065 = fmul fast float %5064, %5015
  %5066 = fmul fast float %5064, %5016
  %5067 = fmul fast float %5064, %5017
  %5068 = fsub fast float %5014, %5065
  %5069 = fsub fast float %5013, %5066
  %5070 = fsub fast float %5012, %5067
  %5071 = call float @dx.op.binary.f32(i32 36, float %5025, float 1.000000e+00)  ; FMin(a,b)
  %5072 = fsub fast float 1.000000e+00, %5071
  %5073 = bitcast float %5072 to i32
  %5074 = ashr i32 %5073, 1
  %5075 = add nsw i32 %5074, 532487669
  %5076 = bitcast i32 %5075 to float
  %5077 = fsub fast float 1.000000e+00, %5024
  %5078 = call float @dx.op.binary.f32(i32 35, float %5077, float 0x3F847AE140000000)  ; FMax(a,b)
  %5079 = fmul fast float %5078, %5078
  %5080 = fmul fast float %5079, %5079
  %5081 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %44, float %5076, float %5080, float %5081, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5083 = extractvalue %dx.types.ResRet.f32 %5082, 0
  %5084 = fsub fast float 1.000000e+00, %5025
  %5085 = bitcast float %5084 to i32
  %5086 = sub nsw i32 2129859010, %5085
  %5087 = call float @dx.op.dot3.f32(i32 55, float %67, float %63, float %59, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5088 = fmul fast float %5087, 0x3FD20DD760000000
  %5089 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %5090 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5091 = fcmp fast oeq float %5090, 0.000000e+00
  %5092 = fcmp fast oeq float %5089, 0.000000e+00
  %5093 = or i1 %5092, %5091
  br i1 %5093, label %5123, label %5094

; <label>:5094                                    ; preds = %5008
  %5095 = fsub fast float -0.000000e+00, %70
  %5096 = fsub fast float -0.000000e+00, %68
  %5097 = call float @dx.op.unary.f32(i32 24, float %5090)  ; Sqrt(value)
  %5098 = fdiv fast float %5097, %5089
  %5099 = fcmp fast ogt float %5098, 0x3FFB6F8900000000
  %5100 = select i1 %5099, float 0x3FFB6F8900000000, float %5098
  %5101 = fmul fast float %5100, 0x3FE8A23460000000
  %5102 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5103 = call float @dx.op.binary.f32(i32 35, float %5100, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5104 = fmul fast float %5102, %5089
  %5105 = fmul fast float %5103, 0x3FF279A740000000
  %5106 = fadd fast float %5105, -1.000000e+00
  %5107 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %69, float %5095, float %5096, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = call float @dx.op.unary.f32(i32 25, float %5107)  ; Rsqrt(value)
  %5109 = fmul fast float %5108, %5095
  %5110 = fmul fast float %5108, %5096
  %5111 = fmul fast float %5108, %69
  %5112 = fmul fast float %5106, %5106
  %5113 = fsub fast float 1.000000e+00, %5112
  %5114 = fmul fast float %5103, 0x40005F8BE0000000
  %5115 = fsub fast float 0x400C5BF8A0000000, %5114
  %5116 = fdiv fast float %5104, %5115
  %5117 = fmul fast float %5116, 0x3FEE31C3C0000000
  %5118 = fmul fast float %5117, %5113
  %5119 = fmul fast float %5103, 0x3FDACB7480000000
  %5120 = fadd fast float %5119, 0xBFD7347680000000
  %5121 = fmul fast float %5120, %5116
  %5122 = fmul fast float %5121, %5113
  br label %5123

; <label>:5123                                    ; preds = %5094, %5008
  %5124 = phi float [ %5109, %5094 ], [ 0.000000e+00, %5008 ]
  %5125 = phi float [ %5110, %5094 ], [ 0.000000e+00, %5008 ]
  %5126 = phi float [ %5111, %5094 ], [ 0.000000e+00, %5008 ]
  %5127 = phi float [ %5118, %5094 ], [ 0.000000e+00, %5008 ]
  %5128 = phi float [ %5122, %5094 ], [ 0.000000e+00, %5008 ]
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5124, float %5125, float %5126, float %5015, float %5016, float %5017)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = fmul fast float %5129, %5129
  %5131 = fmul fast float %5130, 0x3FEE471020000000
  %5132 = fadd fast float %5131, 0xBFD42F6020000000
  %5133 = fmul fast float %5089, 0x3FD20DD760000000
  %5134 = fmul fast float %5132, %5128
  %5135 = fmul fast float %5127, 0x3FDF454380000000
  %5136 = fmul fast float %5135, %5129
  %5137 = fadd fast float %5136, %5133
  %5138 = fadd fast float %5137, %5134
  %5139 = call float @dx.op.dot3.f32(i32 55, float %5124, float %5125, float %5126, float %5068, float %5069, float %5070)  ; Dot3(ax,ay,az,bx,by,bz)
  %5140 = fmul fast float %5139, 0x3FDF454380000000
  %5141 = fmul fast float %5139, %5139
  %5142 = fmul fast float %5141, 0x3FEE471020000000
  %5143 = fadd fast float %5142, 0xBFD42F6020000000
  %5144 = call float @dx.op.dot3.f32(i32 55, float %5089, float %5127, float %5128, float 0x3FD20DD760000000, float %5140, float %5143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %5146 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5147 = fcmp fast oeq float %5146, 0.000000e+00
  %5148 = fcmp fast oeq float %5145, 0.000000e+00
  %5149 = or i1 %5148, %5147
  br i1 %5149, label %5179, label %5150

; <label>:5150                                    ; preds = %5123
  %5151 = fsub fast float -0.000000e+00, %66
  %5152 = fsub fast float -0.000000e+00, %64
  %5153 = call float @dx.op.unary.f32(i32 24, float %5146)  ; Sqrt(value)
  %5154 = fdiv fast float %5153, %5145
  %5155 = fcmp fast ogt float %5154, 0x3FFB6F8900000000
  %5156 = select i1 %5155, float 0x3FFB6F8900000000, float %5154
  %5157 = fmul fast float %5156, 0x3FE8A23460000000
  %5158 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5159 = call float @dx.op.binary.f32(i32 35, float %5156, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5160 = fmul fast float %5158, %5145
  %5161 = fmul fast float %5159, 0x3FF279A740000000
  %5162 = fadd fast float %5161, -1.000000e+00
  %5163 = call float @dx.op.dot3.f32(i32 55, float %5151, float %5152, float %65, float %5151, float %5152, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5164 = call float @dx.op.unary.f32(i32 25, float %5163)  ; Rsqrt(value)
  %5165 = fmul fast float %5164, %5151
  %5166 = fmul fast float %5164, %5152
  %5167 = fmul fast float %5164, %65
  %5168 = fmul fast float %5162, %5162
  %5169 = fsub fast float 1.000000e+00, %5168
  %5170 = fmul fast float %5159, 0x40005F8BE0000000
  %5171 = fsub fast float 0x400C5BF8A0000000, %5170
  %5172 = fdiv fast float %5160, %5171
  %5173 = fmul fast float %5172, 0x3FEE31C3C0000000
  %5174 = fmul fast float %5173, %5169
  %5175 = fmul fast float %5159, 0x3FDACB7480000000
  %5176 = fadd fast float %5175, 0xBFD7347680000000
  %5177 = fmul fast float %5176, %5172
  %5178 = fmul fast float %5177, %5169
  br label %5179

; <label>:5179                                    ; preds = %5150, %5123
  %5180 = phi float [ %5165, %5150 ], [ 0.000000e+00, %5123 ]
  %5181 = phi float [ %5166, %5150 ], [ 0.000000e+00, %5123 ]
  %5182 = phi float [ %5167, %5150 ], [ 0.000000e+00, %5123 ]
  %5183 = phi float [ %5174, %5150 ], [ 0.000000e+00, %5123 ]
  %5184 = phi float [ %5178, %5150 ], [ 0.000000e+00, %5123 ]
  %5185 = call float @dx.op.dot3.f32(i32 55, float %5180, float %5181, float %5182, float %5015, float %5016, float %5017)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = fmul fast float %5185, %5185
  %5187 = fmul fast float %5186, 0x3FEE471020000000
  %5188 = fadd fast float %5187, 0xBFD42F6020000000
  %5189 = fmul fast float %5145, 0x3FD20DD760000000
  %5190 = fmul fast float %5188, %5184
  %5191 = fmul fast float %5183, 0x3FDF454380000000
  %5192 = fmul fast float %5191, %5185
  %5193 = fadd fast float %5192, %5189
  %5194 = fadd fast float %5193, %5190
  %5195 = call float @dx.op.dot3.f32(i32 55, float %5180, float %5181, float %5182, float %5068, float %5069, float %5070)  ; Dot3(ax,ay,az,bx,by,bz)
  %5196 = fmul fast float %5195, 0x3FDF454380000000
  %5197 = fmul fast float %5195, %5195
  %5198 = fmul fast float %5197, 0x3FEE471020000000
  %5199 = fadd fast float %5198, 0xBFD42F6020000000
  %5200 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5183, float %5184, float 0x3FD20DD760000000, float %5196, float %5199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5201 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %59)  ; FMax(a,b)
  %5202 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %5203 = fcmp fast oeq float %5202, 0.000000e+00
  %5204 = fcmp fast oeq float %5201, 0.000000e+00
  %5205 = or i1 %5204, %5203
  br i1 %5205, label %5235, label %5206

; <label>:5206                                    ; preds = %5179
  %5207 = fsub fast float -0.000000e+00, %62
  %5208 = fsub fast float -0.000000e+00, %60
  %5209 = call float @dx.op.unary.f32(i32 24, float %5202)  ; Sqrt(value)
  %5210 = fdiv fast float %5209, %5201
  %5211 = fcmp fast ogt float %5210, 0x3FFB6F8900000000
  %5212 = select i1 %5211, float 0x3FFB6F8900000000, float %5210
  %5213 = fmul fast float %5212, 0x3FE8A23460000000
  %5214 = call float @dx.op.unary.f32(i32 7, float %5213)  ; Saturate(value)
  %5215 = call float @dx.op.binary.f32(i32 35, float %5212, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5216 = fmul fast float %5214, %5201
  %5217 = fmul fast float %5215, 0x3FF279A740000000
  %5218 = fadd fast float %5217, -1.000000e+00
  %5219 = call float @dx.op.dot3.f32(i32 55, float %5207, float %5208, float %61, float %5207, float %5208, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5220 = call float @dx.op.unary.f32(i32 25, float %5219)  ; Rsqrt(value)
  %5221 = fmul fast float %5220, %5207
  %5222 = fmul fast float %5220, %5208
  %5223 = fmul fast float %5220, %61
  %5224 = fmul fast float %5218, %5218
  %5225 = fsub fast float 1.000000e+00, %5224
  %5226 = fmul fast float %5215, 0x40005F8BE0000000
  %5227 = fsub fast float 0x400C5BF8A0000000, %5226
  %5228 = fdiv fast float %5216, %5227
  %5229 = fmul fast float %5228, 0x3FEE31C3C0000000
  %5230 = fmul fast float %5229, %5225
  %5231 = fmul fast float %5215, 0x3FDACB7480000000
  %5232 = fadd fast float %5231, 0xBFD7347680000000
  %5233 = fmul fast float %5232, %5228
  %5234 = fmul fast float %5233, %5225
  br label %5235

; <label>:5235                                    ; preds = %5206, %5179
  %5236 = phi float [ %5221, %5206 ], [ 0.000000e+00, %5179 ]
  %5237 = phi float [ %5222, %5206 ], [ 0.000000e+00, %5179 ]
  %5238 = phi float [ %5223, %5206 ], [ 0.000000e+00, %5179 ]
  %5239 = phi float [ %5230, %5206 ], [ 0.000000e+00, %5179 ]
  %5240 = phi float [ %5234, %5206 ], [ 0.000000e+00, %5179 ]
  %5241 = call float @dx.op.dot3.f32(i32 55, float %5236, float %5237, float %5238, float %5015, float %5016, float %5017)  ; Dot3(ax,ay,az,bx,by,bz)
  %5242 = fmul fast float %5241, %5241
  %5243 = fmul fast float %5242, 0x3FEE471020000000
  %5244 = fadd fast float %5243, 0xBFD42F6020000000
  %5245 = fmul fast float %5201, 0x3FD20DD760000000
  %5246 = fmul fast float %5244, %5240
  %5247 = fmul fast float %5239, 0x3FDF454380000000
  %5248 = fmul fast float %5247, %5241
  %5249 = fadd fast float %5248, %5245
  %5250 = fadd fast float %5249, %5246
  %5251 = call float @dx.op.dot3.f32(i32 55, float %5236, float %5237, float %5238, float %5068, float %5069, float %5070)  ; Dot3(ax,ay,az,bx,by,bz)
  %5252 = fmul fast float %5251, 0x3FDF454380000000
  %5253 = fmul fast float %5251, %5251
  %5254 = fmul fast float %5253, 0x3FEE471020000000
  %5255 = fadd fast float %5254, 0xBFD42F6020000000
  %5256 = call float @dx.op.dot3.f32(i32 55, float %5201, float %5239, float %5240, float 0x3FD20DD760000000, float %5252, float %5255)  ; Dot3(ax,ay,az,bx,by,bz)
  %5257 = call float @dx.op.binary.f32(i32 35, float %5138, float 0.000000e+00)  ; FMax(a,b)
  %5258 = call float @dx.op.binary.f32(i32 35, float %5194, float 0.000000e+00)  ; FMax(a,b)
  %5259 = call float @dx.op.binary.f32(i32 35, float %5250, float 0.000000e+00)  ; FMax(a,b)
  %5260 = call float @dx.op.binary.f32(i32 35, float %5144, float 0.000000e+00)  ; FMax(a,b)
  %5261 = call float @dx.op.binary.f32(i32 35, float %5200, float 0.000000e+00)  ; FMax(a,b)
  %5262 = call float @dx.op.binary.f32(i32 35, float %5256, float 0.000000e+00)  ; FMax(a,b)
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 0
  %5265 = call float @dx.op.binary.f32(i32 36, float %5018, float %5264)  ; FMin(a,b)
  %5266 = fmul fast float %5265, %5072
  %5267 = fsub fast float 1.000000e+00, %5266
  %5268 = bitcast float %5267 to i32
  %5269 = sub nsw i32 2129859010, %5268
  %5270 = bitcast i32 %5269 to float
  %5271 = call float @dx.op.binary.f32(i32 36, float %5019, float %5264)  ; FMin(a,b)
  %5272 = fmul fast float %5271, %5072
  %5273 = fsub fast float 1.000000e+00, %5272
  %5274 = bitcast float %5273 to i32
  %5275 = sub nsw i32 2129859010, %5274
  %5276 = bitcast i32 %5275 to float
  %5277 = call float @dx.op.binary.f32(i32 36, float %5020, float %5264)  ; FMin(a,b)
  %5278 = fmul fast float %5277, %5072
  %5279 = fsub fast float 1.000000e+00, %5278
  %5280 = bitcast float %5279 to i32
  %5281 = sub nsw i32 2129859010, %5280
  %5282 = bitcast i32 %5281 to float
  %5283 = fmul fast float %5257, %5071
  %5284 = fmul fast float %5283, %5270
  %5285 = fmul fast float %5258, %5071
  %5286 = fmul fast float %5285, %5276
  %5287 = fmul fast float %5259, %5071
  %5288 = fmul fast float %5287, %5282
  %5289 = call float @dx.op.binary.f32(i32 36, float %5021, float %5264)  ; FMin(a,b)
  %5290 = fmul fast float %5289, %5072
  %5291 = fsub fast float 1.000000e+00, %5290
  %5292 = bitcast float %5291 to i32
  %5293 = sub nsw i32 2129859010, %5292
  %5294 = bitcast i32 %5293 to float
  %5295 = call float @dx.op.binary.f32(i32 36, float %5022, float %5264)  ; FMin(a,b)
  %5296 = fmul fast float %5295, %5072
  %5297 = fsub fast float 1.000000e+00, %5296
  %5298 = bitcast float %5297 to i32
  %5299 = sub nsw i32 2129859010, %5298
  %5300 = bitcast i32 %5299 to float
  %5301 = call float @dx.op.binary.f32(i32 36, float %5060, float %5264)  ; FMin(a,b)
  %5302 = fmul fast float %5301, %5072
  %5303 = fsub fast float 1.000000e+00, %5302
  %5304 = bitcast float %5303 to i32
  %5305 = sub nsw i32 2129859010, %5304
  %5306 = bitcast i32 %5305 to float
  %5307 = fmul fast float %5260, %5071
  %5308 = fmul fast float %5307, %5294
  %5309 = fmul fast float %5261, %5071
  %5310 = fmul fast float %5309, %5300
  %5311 = fmul fast float %5262, %5071
  %5312 = fmul fast float %5311, %5306
  %5313 = call float @dx.op.dot3.f32(i32 55, float %5284, float %5286, float %5288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5314 = select i1 %215, float 0.000000e+00, float %5284
  %5315 = select i1 %215, float %5313, float %5286
  %5316 = select i1 %215, float 0.000000e+00, float %5288
  %5317 = call float @dx.op.dot3.f32(i32 55, float %5308, float %5310, float %5312, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5318 = select i1 %215, float 0.000000e+00, float %5308
  %5319 = select i1 %215, float %5317, float %5310
  %5320 = select i1 %215, float 0.000000e+00, float %5312
  %5321 = fmul fast float %5062, 9.843750e-01
  %5322 = fmul fast float %5024, 9.843750e-01
  %5323 = fadd fast float %5321, 7.812500e-03
  %5324 = fadd fast float %5322, 7.812500e-03
  %5325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %5323, float %5324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5326 = extractvalue %dx.types.ResRet.f32 %5325, 2
  %5327 = extractvalue %dx.types.ResRet.f32 %5325, 3
  %5328 = fmul fast float %5326, %5021
  %5329 = fmul fast float %5326, %5022
  %5330 = fmul fast float %5326, %5060
  %5331 = fadd fast float %5328, %5327
  %5332 = fadd fast float %5329, %5327
  %5333 = fadd fast float %5330, %5327
  %5334 = fcmp fast ogt float %4634, 0.000000e+00
  br i1 %5334, label %5335, label %5361

; <label>:5335                                    ; preds = %5235
  %5336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %4634, float %5062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5337 = extractvalue %dx.types.ResRet.f32 %5336, 0
  %5338 = extractvalue %dx.types.ResRet.f32 %5336, 1
  %5339 = extractvalue %dx.types.ResRet.f32 %5336, 2
  %5340 = fadd fast float %5337, -5.000000e-01
  %5341 = fadd fast float %5338, -5.000000e-01
  %5342 = fadd fast float %5339, -5.000000e-01
  %5343 = fsub fast float 1.000000e+00, %5021
  %5344 = fsub fast float 1.000000e+00, %5022
  %5345 = fsub fast float 1.000000e+00, %5060
  %5346 = fmul fast float %5021, 4.000000e+00
  %5347 = fmul fast float %5346, %5343
  %5348 = fmul fast float %5347, %5340
  %5349 = fmul fast float %5022, 4.000000e+00
  %5350 = fmul fast float %5349, %5344
  %5351 = fmul fast float %5350, %5341
  %5352 = fmul fast float %5060, 4.000000e+00
  %5353 = fmul fast float %5352, %5345
  %5354 = fmul fast float %5353, %5342
  %5355 = fadd fast float %5348, %5331
  %5356 = fadd fast float %5351, %5332
  %5357 = fadd fast float %5354, %5333
  %5358 = call float @dx.op.unary.f32(i32 7, float %5355)  ; Saturate(value)
  %5359 = call float @dx.op.unary.f32(i32 7, float %5356)  ; Saturate(value)
  %5360 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  br label %5361

; <label>:5361                                    ; preds = %5335, %5235
  %5362 = phi float [ %5358, %5335 ], [ %5331, %5235 ]
  %5363 = phi float [ %5359, %5335 ], [ %5332, %5235 ]
  %5364 = phi float [ %5360, %5335 ], [ %5333, %5235 ]
  %5365 = call float @dx.op.binary.f32(i32 35, float %5363, float %5364)  ; FMax(a,b)
  %5366 = call float @dx.op.binary.f32(i32 35, float %5362, float %5365)  ; FMax(a,b)
  %5367 = fsub fast float 1.000000e+00, %5366
  %5368 = fmul fast float %5366, %5024
  %5369 = fadd fast float %5368, %5024
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 2
  %5372 = extractvalue %dx.types.CBufRet.f32 %5370, 3
  %5373 = fmul fast float %5369, %5371
  %5374 = fadd fast float %5373, %5372
  %5375 = call float @dx.op.unary.f32(i32 7, float %5374)  ; Saturate(value)
  %5376 = fsub fast float 1.000000e+00, %5083
  %5377 = fadd fast float %5376, %5375
  %5378 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5379 = fcmp fast olt float %5378, 1.000000e+00
  br i1 %5379, label %5380, label %5828

; <label>:5380                                    ; preds = %5361
  %5381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5382 = extractvalue %dx.types.CBufRet.f32 %5381, 2
  %5383 = extractvalue %dx.types.CBufRet.f32 %5381, 3
  %5384 = fmul fast float %5382, %99
  %5385 = fmul fast float %5383, %100
  %5386 = fptoui float %5384 to i32
  %5387 = fptoui float %5385 to i32
  %5388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5389 = extractvalue %dx.types.CBufRet.f32 %5388, 0
  %5390 = extractvalue %dx.types.CBufRet.f32 %5388, 2
  %5391 = extractvalue %dx.types.CBufRet.f32 %5388, 3
  %5392 = fadd fast float %87, -4.000000e+00
  %5393 = call float @dx.op.binary.f32(i32 35, float %5392, float 0.000000e+00)  ; FMax(a,b)
  %5394 = fadd fast float %5393, %5389
  %5395 = fmul fast float %5394, %5390
  %5396 = call float @dx.op.unary.f32(i32 23, float %5395)  ; Log(value)
  %5397 = fmul fast float %5396, %5391
  %5398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.f32 %5398, 2
  %5400 = fmul fast float %5397, %5399
  %5401 = call float @dx.op.unary.f32(i32 7, float %5400)  ; Saturate(value)
  %5402 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5403 = extractvalue %dx.types.CBufRet.i32 %5402, 1
  %5404 = add i32 %5403, -1
  %5405 = uitofp i32 %5403 to float
  %5406 = fmul fast float %5405, %5401
  %5407 = fptoui float %5406 to i32
  %5408 = call i32 @dx.op.binary.i32(i32 40, i32 %5407, i32 %5404)  ; UMin(a,b)
  %5409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5410 = extractvalue %dx.types.CBufRet.i32 %5409, 2
  %5411 = extractvalue %dx.types.CBufRet.i32 %5409, 3
  %5412 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5387, i32 %5410, i32 %5386)  ; UMad(a,b,c)
  %5413 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5408, i32 %5411, i32 %5412)  ; UMad(a,b,c)
  %5414 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %5415 = fptoui float %5414 to i32
  %5416 = lshr i32 %5415, 5
  %5417 = call i32 @dx.op.binary.i32(i32 40, i32 %5416, i32 8191)  ; UMin(a,b)
  br i1 false, label %5418, label %5425

; <label>:5418                                    ; preds = %5380
  %5419 = fadd fast float 0.000000e+00, %5070
  %5420 = call float @dx.op.dot3.f32(i32 55, float %5068, float %5069, float %5419, float %5068, float %5069, float %5419)  ; Dot3(ax,ay,az,bx,by,bz)
  %5421 = call float @dx.op.unary.f32(i32 25, float %5420)  ; Rsqrt(value)
  %5422 = fmul fast float %5421, %5068
  %5423 = fmul fast float %5421, %5069
  %5424 = fmul fast float %5419, %5421
  br label %5425

; <label>:5425                                    ; preds = %5418, %5380
  %5426 = phi float [ %5422, %5418 ], [ %5068, %5380 ]
  %5427 = phi float [ %5423, %5418 ], [ %5069, %5380 ]
  %5428 = phi float [ %5424, %5418 ], [ %5070, %5380 ]
  %5429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5430 = extractvalue %dx.types.CBufRet.i32 %5429, 2
  %5431 = add nsw i32 %5430, -1
  %5432 = call i32 @dx.op.binary.i32(i32 37, i32 %5431, i32 0)  ; IMax(a,b)
  %5433 = shl i32 %5417, 2
  %5434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5433, i32 undef)  ; BufferLoad(srv,index,wot)
  %5435 = extractvalue %dx.types.ResRet.i32 %5434, 0
  %5436 = lshr i32 %5435, 16
  %5437 = and i32 %5435, 65535
  %5438 = lshr i32 %5435, 21
  %5439 = lshr i32 %5437, 5
  %5440 = call i32 @dx.op.binary.i32(i32 40, i32 %5439, i32 %5432)  ; UMin(a,b)
  %5441 = icmp ugt i32 %5438, %5440
  br i1 %5441, label %5804, label %5442

; <label>:5442                                    ; preds = %5425
  br label %5443

; <label>:5443                                    ; preds = %5796, %5442
  %5444 = phi float [ %5797, %5796 ], [ 0.000000e+00, %5442 ]
  %5445 = phi float [ %5798, %5796 ], [ 0.000000e+00, %5442 ]
  %5446 = phi float [ %5799, %5796 ], [ 0.000000e+00, %5442 ]
  %5447 = phi float [ %5800, %5796 ], [ 1.000000e+00, %5442 ]
  %5448 = phi i32 [ %5801, %5796 ], [ %5438, %5442 ]
  %5449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5450 = extractvalue %dx.types.CBufRet.i32 %5449, 2
  %5451 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5413, i32 %5450, i32 %5448)  ; UMad(a,b,c)
  %5452 = shl i32 %5451, 2
  %5453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5452, i32 undef)  ; BufferLoad(srv,index,wot)
  %5454 = extractvalue %dx.types.ResRet.i32 %5453, 0
  %5455 = shl i32 %5448, 5
  %5456 = sub nsw i32 %5436, %5455
  %5457 = call i32 @dx.op.binary.i32(i32 37, i32 %5456, i32 0)  ; IMax(a,b)
  %5458 = call i32 @dx.op.binary.i32(i32 38, i32 %5457, i32 31)  ; IMin(a,b)
  %5459 = sub nsw i32 1, %5436
  %5460 = add nsw i32 %5459, %5437
  %5461 = call i32 @dx.op.binary.i32(i32 37, i32 %5460, i32 0)  ; IMax(a,b)
  %5462 = call i32 @dx.op.binary.i32(i32 38, i32 %5461, i32 32)  ; IMin(a,b)
  %5463 = and i32 %5462, 31
  %5464 = shl i32 -1, %5463
  %5465 = xor i32 %5464, -1
  %5466 = and i32 %5458, 31
  %5467 = shl i32 %5465, %5466
  %5468 = icmp eq i32 %5462, 32
  %5469 = select i1 %5468, i32 -1, i32 %5467
  %5470 = and i32 %5469, %5454
  %5471 = icmp eq i32 %5470, 0
  br i1 %5471, label %5796, label %5472

; <label>:5472                                    ; preds = %5443
  br label %5473

; <label>:5473                                    ; preds = %5579, %5472
  %5474 = phi float [ %5580, %5579 ], [ %5444, %5472 ]
  %5475 = phi float [ %5581, %5579 ], [ %5445, %5472 ]
  %5476 = phi float [ %5582, %5579 ], [ %5446, %5472 ]
  %5477 = phi float [ %5583, %5579 ], [ %5447, %5472 ]
  %5478 = phi i32 [ %5483, %5579 ], [ %5470, %5472 ]
  %5479 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5478)  ; FirstbitLo(value)
  %5480 = add i32 %5479, %5455
  %5481 = and i32 %5479, 31
  %5482 = shl i32 1, %5481
  %5483 = xor i32 %5482, %5478
  %5484 = mul i32 %5480, 72
  %5485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5484, i32 undef)  ; BufferLoad(srv,index,wot)
  %5486 = extractvalue %dx.types.ResRet.f32 %5485, 0
  %5487 = extractvalue %dx.types.ResRet.f32 %5485, 1
  %5488 = extractvalue %dx.types.ResRet.f32 %5485, 2
  %5489 = add i32 %5484, 12
  %5490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %5489, i32 undef)  ; BufferLoad(srv,index,wot)
  %5491 = extractvalue %dx.types.ResRet.i32 %5490, 0
  %5492 = add i32 %5484, 16
  %5493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5492, i32 undef)  ; BufferLoad(srv,index,wot)
  %5494 = extractvalue %dx.types.ResRet.f32 %5493, 0
  %5495 = extractvalue %dx.types.ResRet.f32 %5493, 1
  %5496 = extractvalue %dx.types.ResRet.f32 %5493, 2
  %5497 = add i32 %5484, 28
  %5498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5497, i32 undef)  ; BufferLoad(srv,index,wot)
  %5499 = extractvalue %dx.types.ResRet.f32 %5498, 0
  %5500 = add i32 %5484, 32
  %5501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5500, i32 undef)  ; BufferLoad(srv,index,wot)
  %5502 = extractvalue %dx.types.ResRet.f32 %5501, 0
  %5503 = extractvalue %dx.types.ResRet.f32 %5501, 1
  %5504 = extractvalue %dx.types.ResRet.f32 %5501, 2
  %5505 = extractvalue %dx.types.ResRet.f32 %5501, 3
  %5506 = add i32 %5484, 48
  %5507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5506, i32 undef)  ; BufferLoad(srv,index,wot)
  %5508 = extractvalue %dx.types.ResRet.f32 %5507, 0
  %5509 = extractvalue %dx.types.ResRet.f32 %5507, 1
  %5510 = add i32 %5484, 56
  %5511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5510, i32 undef)  ; BufferLoad(srv,index,wot)
  %5512 = extractvalue %dx.types.ResRet.f32 %5511, 0
  %5513 = extractvalue %dx.types.ResRet.f32 %5511, 1
  %5514 = add i32 %5484, 64
  %5515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5514, i32 undef)  ; BufferLoad(srv,index,wot)
  %5516 = extractvalue %dx.types.ResRet.f32 %5515, 0
  %5517 = extractvalue %dx.types.ResRet.f32 %5515, 1
  %5518 = mul i32 %5480, 60
  %5519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5518, i32 undef)  ; BufferLoad(srv,index,wot)
  %5520 = extractvalue %dx.types.ResRet.f32 %5519, 0
  %5521 = extractvalue %dx.types.ResRet.f32 %5519, 1
  %5522 = extractvalue %dx.types.ResRet.f32 %5519, 2
  %5523 = add i32 %5518, 12
  %5524 = add i32 %5518, 48
  %5525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5524, i32 undef)  ; BufferLoad(srv,index,wot)
  %5526 = extractvalue %dx.types.ResRet.f32 %5525, 0
  %5527 = extractvalue %dx.types.ResRet.f32 %5525, 1
  %5528 = extractvalue %dx.types.ResRet.f32 %5525, 2
  %5529 = and i32 %5491, 32767
  %5530 = bitcast float %5486 to i32
  %5531 = icmp eq i32 %5530, -1
  %5532 = bitcast float %5487 to i32
  %5533 = and i32 %5491, 32768
  %5534 = icmp ne i32 %5533, 0
  %5535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5536 = extractvalue %dx.types.CBufRet.f32 %5535, 0
  %5537 = extractvalue %dx.types.CBufRet.f32 %5535, 1
  %5538 = extractvalue %dx.types.CBufRet.f32 %5535, 2
  %5539 = fsub fast float %5520, %5536
  %5540 = fsub fast float %5521, %5537
  %5541 = fsub fast float %5522, %5538
  %5542 = fsub fast float %154, %5539
  %5543 = fsub fast float %155, %5540
  %5544 = fsub fast float %156, %5541
  %5545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5523, i32 undef)  ; BufferLoad(srv,index,wot)
  %5546 = extractvalue %dx.types.ResRet.f32 %5545, 0
  %5547 = extractvalue %dx.types.ResRet.f32 %5545, 1
  %5548 = extractvalue %dx.types.ResRet.f32 %5545, 2
  %5549 = call float @dx.op.dot3.f32(i32 55, float %5542, float %5543, float %5544, float %5546, float %5547, float %5548)  ; Dot3(ax,ay,az,bx,by,bz)
  %5550 = add i32 %5518, 24
  %5551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5550, i32 undef)  ; BufferLoad(srv,index,wot)
  %5552 = extractvalue %dx.types.ResRet.f32 %5551, 0
  %5553 = extractvalue %dx.types.ResRet.f32 %5551, 1
  %5554 = extractvalue %dx.types.ResRet.f32 %5551, 2
  %5555 = call float @dx.op.dot3.f32(i32 55, float %5542, float %5543, float %5544, float %5552, float %5553, float %5554)  ; Dot3(ax,ay,az,bx,by,bz)
  %5556 = add i32 %5518, 36
  %5557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5556, i32 undef)  ; BufferLoad(srv,index,wot)
  %5558 = extractvalue %dx.types.ResRet.f32 %5557, 0
  %5559 = extractvalue %dx.types.ResRet.f32 %5557, 1
  %5560 = extractvalue %dx.types.ResRet.f32 %5557, 2
  %5561 = call float @dx.op.dot3.f32(i32 55, float %5542, float %5543, float %5544, float %5558, float %5559, float %5560)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = call float @dx.op.unary.f32(i32 6, float %5549)  ; FAbs(value)
  %5563 = call float @dx.op.unary.f32(i32 6, float %5555)  ; FAbs(value)
  %5564 = call float @dx.op.unary.f32(i32 6, float %5561)  ; FAbs(value)
  %5565 = fsub fast float %5526, %5562
  %5566 = fsub fast float %5527, %5563
  %5567 = fsub fast float %5528, %5564
  %5568 = fmul fast float %5565, %5494
  %5569 = fmul fast float %5566, %5495
  %5570 = fmul fast float %5567, %5496
  %5571 = call float @dx.op.binary.f32(i32 36, float %5569, float %5570)  ; FMin(a,b)
  %5572 = call float @dx.op.binary.f32(i32 36, float %5568, float %5571)  ; FMin(a,b)
  %5573 = call float @dx.op.unary.f32(i32 7, float %5572)  ; Saturate(value)
  %5574 = call float @dx.op.binary.f32(i32 36, float %5477, float %5573)  ; FMin(a,b)
  %5575 = uitofp i1 %5534 to float
  %5576 = fsub fast float 1.000000e+00, %5575
  %5577 = fmul fast float %5574, %5576
  %5578 = fcmp fast ogt float %5577, 0.000000e+00
  br i1 %5578, label %5585, label %5579

; <label>:5579                                    ; preds = %5727, %5473
  %5580 = phi float [ %5791, %5727 ], [ %5474, %5473 ]
  %5581 = phi float [ %5792, %5727 ], [ %5475, %5473 ]
  %5582 = phi float [ %5793, %5727 ], [ %5476, %5473 ]
  %5583 = phi float [ %5794, %5727 ], [ %5477, %5473 ]
  %5584 = icmp eq i32 %5478, %5482
  br i1 %5584, label %5795, label %5473

; <label>:5585                                    ; preds = %5473
  br i1 %5531, label %5643, label %5586

; <label>:5586                                    ; preds = %5585
  %5587 = fsub fast float -0.000000e+00, %5546
  %5588 = fsub fast float -0.000000e+00, %5547
  %5589 = fsub fast float -0.000000e+00, %5548
  %5590 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5587, float %5588, float %5589)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = fsub fast float -0.000000e+00, %5590
  %5592 = call float @dx.op.dot3.f32(i32 55, float %5542, float %5543, float %5544, float %5587, float %5588, float %5589)  ; Dot3(ax,ay,az,bx,by,bz)
  %5593 = fadd fast float %5592, %5509
  %5594 = fadd fast float %5508, %5592
  %5595 = fsub fast float -0.000000e+00, %5594
  %5596 = fcmp ogt float %5590, -0.000000e+00
  %5597 = select i1 %5596, float %5595, float %5593
  %5598 = call float @dx.op.unary.f32(i32 6, float %5591)  ; FAbs(value)
  %5599 = fdiv fast float 1.000000e+00, %5598
  %5600 = fmul fast float %5597, %5599
  %5601 = call float @dx.op.binary.f32(i32 35, float %5600, float 0.000000e+00)  ; FMax(a,b)
  %5602 = fsub fast float -0.000000e+00, %5552
  %5603 = fsub fast float -0.000000e+00, %5553
  %5604 = fsub fast float -0.000000e+00, %5554
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5602, float %5603, float %5604)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = fsub fast float -0.000000e+00, %5605
  %5607 = call float @dx.op.dot3.f32(i32 55, float %5542, float %5543, float %5544, float %5602, float %5603, float %5604)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = fadd fast float %5607, %5513
  %5609 = fadd fast float %5512, %5607
  %5610 = fsub fast float -0.000000e+00, %5609
  %5611 = fcmp ogt float %5605, -0.000000e+00
  %5612 = select i1 %5611, float %5610, float %5608
  %5613 = call float @dx.op.unary.f32(i32 6, float %5606)  ; FAbs(value)
  %5614 = fdiv fast float 1.000000e+00, %5613
  %5615 = fmul fast float %5612, %5614
  %5616 = call float @dx.op.binary.f32(i32 35, float %5615, float 0.000000e+00)  ; FMax(a,b)
  %5617 = fsub fast float -0.000000e+00, %5558
  %5618 = fsub fast float -0.000000e+00, %5559
  %5619 = fsub fast float -0.000000e+00, %5560
  %5620 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %5621 = fsub fast float -0.000000e+00, %5620
  %5622 = call float @dx.op.dot3.f32(i32 55, float %5542, float %5543, float %5544, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %5623 = fadd fast float %5622, %5517
  %5624 = fadd fast float %5516, %5622
  %5625 = fsub fast float -0.000000e+00, %5624
  %5626 = fcmp ogt float %5620, -0.000000e+00
  %5627 = select i1 %5626, float %5625, float %5623
  %5628 = call float @dx.op.unary.f32(i32 6, float %5621)  ; FAbs(value)
  %5629 = fdiv fast float 1.000000e+00, %5628
  %5630 = fmul fast float %5627, %5629
  %5631 = call float @dx.op.binary.f32(i32 35, float %5630, float 0.000000e+00)  ; FMax(a,b)
  %5632 = call float @dx.op.binary.f32(i32 36, float %5616, float %5631)  ; FMin(a,b)
  %5633 = call float @dx.op.binary.f32(i32 36, float %5601, float %5632)  ; FMin(a,b)
  %5634 = fmul fast float %5633, %5426
  %5635 = fmul fast float %5633, %5427
  %5636 = fmul fast float %5633, %5428
  %5637 = fadd fast float %5634, %154
  %5638 = fadd fast float %5635, %155
  %5639 = fadd fast float %5636, %156
  %5640 = fsub fast float %5637, %5486
  %5641 = fsub fast float %5638, %5487
  %5642 = fsub fast float %5639, %5488
  br label %5650

; <label>:5643                                    ; preds = %5585
  %5644 = fmul fast float %5426, 8.096000e+03
  %5645 = fmul fast float %5427, 8.096000e+03
  %5646 = fmul fast float %5428, 8.096000e+03
  %5647 = fadd fast float %5644, %154
  %5648 = fadd fast float %5645, %155
  %5649 = fadd fast float %5646, %156
  br label %5650

; <label>:5650                                    ; preds = %5643, %5586
  %5651 = phi float [ %5426, %5643 ], [ %5640, %5586 ]
  %5652 = phi float [ %5427, %5643 ], [ %5641, %5586 ]
  %5653 = phi float [ %5428, %5643 ], [ %5642, %5586 ]
  %5654 = phi float [ %5647, %5643 ], [ %5637, %5586 ]
  %5655 = phi float [ %5648, %5643 ], [ %5638, %5586 ]
  %5656 = phi float [ %5649, %5643 ], [ %5639, %5586 ]
  %5657 = fcmp fast olt float %5505, 1.000000e+00
  br i1 %5657, label %5658, label %5689, !dx.controlflow.hints !87

; <label>:5658                                    ; preds = %5650
  %5659 = fmul fast float %5653, %5503
  %5660 = fmul fast float %5652, %5504
  %5661 = fsub fast float %5659, %5660
  %5662 = fmul fast float %5651, %5504
  %5663 = fmul fast float %5653, %5502
  %5664 = fsub fast float %5662, %5663
  %5665 = fmul fast float %5652, %5502
  %5666 = fmul fast float %5651, %5503
  %5667 = fsub fast float %5665, %5666
  %5668 = fmul fast float %5661, 2.000000e+00
  %5669 = fmul fast float %5664, 2.000000e+00
  %5670 = fmul fast float %5667, 2.000000e+00
  %5671 = fmul fast float %5668, %5505
  %5672 = fmul fast float %5669, %5505
  %5673 = fmul fast float %5670, %5505
  %5674 = fmul fast float %5670, %5503
  %5675 = fmul fast float %5669, %5504
  %5676 = fmul fast float %5668, %5504
  %5677 = fmul fast float %5670, %5502
  %5678 = fmul fast float %5669, %5502
  %5679 = fmul fast float %5668, %5503
  %5680 = fadd fast float %5674, %5651
  %5681 = fadd fast float %5680, %5671
  %5682 = fsub fast float %5681, %5675
  %5683 = fsub fast float %5652, %5677
  %5684 = fadd fast float %5683, %5672
  %5685 = fadd fast float %5684, %5676
  %5686 = fadd fast float %5673, %5653
  %5687 = fsub fast float %5686, %5679
  %5688 = fadd fast float %5687, %5678
  br label %5689

; <label>:5689                                    ; preds = %5658, %5650
  %5690 = phi float [ %5682, %5658 ], [ %5651, %5650 ]
  %5691 = phi float [ %5685, %5658 ], [ %5652, %5650 ]
  %5692 = phi float [ %5688, %5658 ], [ %5653, %5650 ]
  br i1 %5531, label %5724, label %5693

; <label>:5693                                    ; preds = %5689
  %5694 = fmul fast float %5024, 0x400187C840000000
  %5695 = fadd fast float %5694, 0xC00EFC2120000000
  %5696 = fmul fast float %5695, %5024
  %5697 = fadd fast float %5696, 0x3FE5D16340000000
  %5698 = fmul fast float %5697, %5024
  %5699 = fadd fast float %5698, 1.000000e+00
  %5700 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5701 = fsub fast float %5654, %154
  %5702 = fsub fast float %5655, %155
  %5703 = fsub fast float %5656, %156
  %5704 = fsub fast float %5654, %5486
  %5705 = fsub fast float %5655, %5487
  %5706 = fsub fast float %5656, %5488
  %5707 = call float @dx.op.dot3.f32(i32 55, float %5701, float %5702, float %5703, float %5701, float %5702, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5705, float %5706, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5709 = fadd fast float %5708, 0x3EE4F8B580000000
  %5710 = fdiv fast float %5707, %5709
  %5711 = bitcast float %5710 to i32
  %5712 = ashr i32 %5711, 1
  %5713 = add nsw i32 %5712, 532487669
  %5714 = bitcast i32 %5713 to float
  %5715 = fmul fast float %5714, %5700
  %5716 = call float @dx.op.unary.f32(i32 7, float %5715)  ; Saturate(value)
  %5717 = fmul fast float %5716, 0x4009981AE0000000
  %5718 = fsub fast float 0x40111BBD80000000, %5717
  %5719 = fmul fast float %5718, %5716
  %5720 = fadd fast float %5719, 0xC0009F6020000000
  %5721 = fmul fast float %5720, %5716
  %5722 = fadd fast float %5721, 1.000000e+00
  %5723 = call float @dx.op.unary.f32(i32 7, float %5722)  ; Saturate(value)
  br label %5727

; <label>:5724                                    ; preds = %5689
  %5725 = icmp ne i32 %5532, -1
  %5726 = zext i1 %5725 to i32
  br label %5727

; <label>:5727                                    ; preds = %5724, %5693
  %5728 = phi float [ %5024, %5724 ], [ %5723, %5693 ]
  %5729 = phi i32 [ %5726, %5724 ], [ 0, %5693 ]
  %5730 = fmul float %5728, 5.000000e+00
  %5731 = fsub float 5.000000e+00, %5730
  %5732 = icmp ne i32 %5729, 0
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 3
  %5735 = fadd fast float %5734, %5731
  %5736 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5735)  ; FMax(a,b)
  %5737 = call float @dx.op.unary.f32(i32 6, float %5690)  ; FAbs(value)
  %5738 = call float @dx.op.unary.f32(i32 6, float %5691)  ; FAbs(value)
  %5739 = fadd fast float %5738, %5737
  %5740 = call float @dx.op.unary.f32(i32 6, float %5692)  ; FAbs(value)
  %5741 = fadd fast float %5739, %5740
  %5742 = fcmp fast oeq float %5741, 0.000000e+00
  %5743 = fdiv fast float 1.000000e+00, %5741
  %5744 = select i1 %5742, float 1.000000e+00, float %5743
  %5745 = fmul fast float %5744, %5690
  %5746 = fmul fast float %5744, %5691
  %5747 = call float @dx.op.unary.f32(i32 6, float %5746)  ; FAbs(value)
  %5748 = call float @dx.op.unary.f32(i32 6, float %5745)  ; FAbs(value)
  %5749 = fsub fast float 1.000000e+00, %5747
  %5750 = fsub fast float 1.000000e+00, %5748
  %5751 = fcmp fast oge float %5745, 0.000000e+00
  %5752 = fcmp fast oge float %5746, 0.000000e+00
  %5753 = select i1 %5751, float 1.000000e+00, float -1.000000e+00
  %5754 = select i1 %5752, float 1.000000e+00, float -1.000000e+00
  %5755 = fcmp fast ole float %5692, 0.000000e+00
  %5756 = fmul fast float %5753, %5749
  %5757 = fmul fast float %5754, %5750
  %5758 = select i1 %5755, float %5756, float %5745
  %5759 = select i1 %5755, float %5757, float %5746
  %5760 = fmul fast float %5758, 5.000000e-01
  %5761 = fmul fast float %5759, 5.000000e-01
  %5762 = fadd fast float %5760, 5.000000e-01
  %5763 = fadd fast float %5761, 5.000000e-01
  %5764 = uitofp i32 %5529 to float
  %5765 = call float @dx.op.binary.f32(i32 36, float %5736, float 3.000000e+00)  ; FMin(a,b)
  %5766 = fadd fast float %5765, 2.000000e+00
  %5767 = call float @dx.op.unary.f32(i32 21, float %5766)  ; Exp(value)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5733, 1
  %5769 = fmul fast float %5768, %5767
  %5770 = fmul fast float %5769, 2.000000e+00
  %5771 = fsub fast float 1.000000e+00, %5770
  %5772 = fmul fast float %5762, %5771
  %5773 = fmul fast float %5763, %5771
  %5774 = fadd fast float %5772, %5769
  %5775 = fadd fast float %5773, %5769
  %5776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %5774, float %5775, float %5764, float undef, i32 0, i32 0, i32 undef, float %5736)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5777 = extractvalue %dx.types.ResRet.f32 %5776, 0
  %5778 = extractvalue %dx.types.ResRet.f32 %5776, 1
  %5779 = extractvalue %dx.types.ResRet.f32 %5776, 2
  %5780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5781 = extractvalue %dx.types.CBufRet.f32 %5780, 3
  %5782 = fmul fast float %5781, %5499
  %5783 = call float @dx.op.binary.f32(i32 36, float %5088, float %5782)  ; FMin(a,b)
  %5784 = select i1 %5732, float %5783, float %5782
  %5785 = fmul fast float %5777, %5577
  %5786 = fmul fast float %5785, %5784
  %5787 = fmul fast float %5778, %5577
  %5788 = fmul fast float %5787, %5784
  %5789 = fmul fast float %5779, %5577
  %5790 = fmul fast float %5789, %5784
  %5791 = fadd fast float %5786, %5474
  %5792 = fadd fast float %5788, %5475
  %5793 = fadd fast float %5790, %5476
  %5794 = fsub fast float %5477, %5577
  br label %5579

; <label>:5795                                    ; preds = %5579
  br label %5796

; <label>:5796                                    ; preds = %5795, %5443
  %5797 = phi float [ %5444, %5443 ], [ %5580, %5795 ]
  %5798 = phi float [ %5445, %5443 ], [ %5581, %5795 ]
  %5799 = phi float [ %5446, %5443 ], [ %5582, %5795 ]
  %5800 = phi float [ %5447, %5443 ], [ %5583, %5795 ]
  %5801 = add i32 %5448, 1
  %5802 = icmp ugt i32 %5801, %5440
  br i1 %5802, label %5803, label %5443, !llvm.loop !88

; <label>:5803                                    ; preds = %5796
  br label %5804

; <label>:5804                                    ; preds = %5803, %5425
  %5805 = phi float [ 0.000000e+00, %5425 ], [ %5797, %5803 ]
  %5806 = phi float [ 0.000000e+00, %5425 ], [ %5798, %5803 ]
  %5807 = phi float [ 0.000000e+00, %5425 ], [ %5799, %5803 ]
  %5808 = call float @dx.op.dot3.f32(i32 55, float %5805, float %5806, float %5807, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5809 = select i1 %215, float 0.000000e+00, float %5805
  %5810 = select i1 %215, float %5808, float %5806
  %5811 = select i1 %215, float 0.000000e+00, float %5807
  %5812 = fcmp fast olt float %5378, 0.000000e+00
  %5813 = call float @dx.op.unary.f32(i32 6, float %5378)  ; FAbs(value)
  %5814 = fmul fast float %5813, %5318
  %5815 = fmul fast float %5813, %5319
  %5816 = fmul fast float %5813, %5320
  %5817 = select i1 %5812, float %5318, float %5814
  %5818 = select i1 %5812, float %5319, float %5815
  %5819 = select i1 %5812, float %5320, float %5816
  %5820 = fsub fast float 1.000000e+00, %5813
  %5821 = call float @dx.op.unary.f32(i32 7, float %5820)  ; Saturate(value)
  %5822 = fmul fast float %5821, %5809
  %5823 = fmul fast float %5821, %5810
  %5824 = fmul fast float %5821, %5811
  %5825 = fadd fast float %5817, %5822
  %5826 = fadd fast float %5818, %5823
  %5827 = fadd fast float %5819, %5824
  br label %5828

; <label>:5828                                    ; preds = %5804, %5361
  %5829 = phi float [ %5318, %5361 ], [ %5825, %5804 ]
  %5830 = phi float [ %5319, %5361 ], [ %5826, %5804 ]
  %5831 = phi float [ %5320, %5361 ], [ %5827, %5804 ]
  %5832 = fmul fast float %5367, %5314
  %5833 = fmul fast float %5367, %5315
  %5834 = fmul fast float %5367, %5316
  %5835 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5019, float %5020, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5836 = fcmp fast ogt float %5835, 0x3E7FF19E20000000
  %5837 = fdiv fast float 1.000000e+00, %5835
  %5838 = select i1 %5836, float %5837, float 0.000000e+00
  %5839 = fmul fast float %5838, %5018
  %5840 = fmul fast float %5838, %5019
  %5841 = fmul fast float %5838, %5020
  %5842 = fadd fast float %5839, -1.000000e+00
  %5843 = fadd fast float %5840, -1.000000e+00
  %5844 = fadd fast float %5841, -1.000000e+00
  %5845 = fmul fast float %5842, 5.000000e-01
  %5846 = fmul fast float %5843, 5.000000e-01
  %5847 = fmul fast float %5844, 5.000000e-01
  %5848 = fadd fast float %5845, 1.000000e+00
  %5849 = fadd fast float %5846, 1.000000e+00
  %5850 = fadd fast float %5847, 1.000000e+00
  %5851 = fmul fast float %5367, %4724
  %5852 = fmul fast float %5367, %4725
  %5853 = fmul fast float %5367, %4726
  %5854 = fadd fast float %5851, -1.000000e+00
  %5855 = fadd fast float %5852, -1.000000e+00
  %5856 = fadd fast float %5853, -1.000000e+00
  %5857 = fmul fast float %5854, %4631
  %5858 = fmul fast float %5855, %4631
  %5859 = fmul fast float %5856, %4631
  %5860 = fadd fast float %5857, 1.000000e+00
  %5861 = fadd fast float %5858, 1.000000e+00
  %5862 = fadd fast float %5859, 1.000000e+00
  %5863 = fmul fast float %5022, 0x401CF23780000000
  %5864 = fadd fast float %5863, 0x3FF32641C0000000
  %5865 = fdiv fast float 1.000000e+00, %5864
  %5866 = call float @dx.op.dot3.f32(i32 55, float %5011, float %5010, float %5009, float %5015, float %5016, float %5017)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = fmul fast float %5865, %5865
  %5868 = fmul fast float %5866, %5866
  %5869 = fsub fast float 1.000000e+00, %5868
  %5870 = fmul fast float %5867, %5869
  %5871 = fsub fast float 1.000000e+00, %5870
  %5872 = fcmp fast oge float %5871, 0.000000e+00
  %5873 = fmul fast float %5865, %5011
  %5874 = fmul fast float %5865, %5010
  %5875 = fmul fast float %5865, %5009
  %5876 = call float @dx.op.unary.f32(i32 24, float %5871)  ; Sqrt(value)
  %5877 = fmul fast float %5866, %5865
  %5878 = fadd fast float %5877, %5876
  %5879 = fmul fast float %5878, %5015
  %5880 = fmul fast float %5878, %5016
  %5881 = fmul fast float %5878, %5017
  %5882 = fsub fast float %5873, %5879
  %5883 = fsub fast float %5874, %5880
  %5884 = fsub fast float %5875, %5881
  %5885 = select i1 %5872, float %5882, float 0.000000e+00
  %5886 = select i1 %5872, float %5883, float 0.000000e+00
  %5887 = select i1 %5872, float %5884, float 0.000000e+00
  %5888 = fmul fast float %5885, %4022
  %5889 = fmul fast float %5886, %4022
  %5890 = fmul fast float %5887, %4022
  %5891 = fadd fast float %5888, %5057
  %5892 = fadd fast float %5889, %5058
  %5893 = fadd fast float %5890, %5059
  %5894 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4743, float %4744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5895 = fmul fast float %5077, %4631
  %5896 = fsub fast float 1.000000e+00, %5895
  %5897 = call float @dx.op.unary.f32(i32 7, float %5896)  ; Saturate(value)
  %5898 = fsub fast float 1.000000e+00, %5897
  %5899 = fmul fast float %5022, 0x4012D0A400000000
  %5900 = fadd fast float %5899, 0x3FDB6377A0000000
  %5901 = fmul fast float %5898, %5900
  %5902 = fadd fast float %5901, %5894
  %5903 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5904 = fmul fast float %5829, %5362
  %5905 = fmul fast float %5830, %5363
  %5906 = fmul fast float %5831, %5364
  %5907 = fsub fast float 1.000000e+00, %5062
  %5908 = bitcast float %5907 to i32
  %5909 = sitofp i32 %5908 to float
  %5910 = fmul fast float %5909, 5.000000e+00
  %5911 = fadd fast float %5910, 0xC1EFBF8940000000
  %5912 = fptosi float %5911 to i32
  %5913 = bitcast i32 %5912 to float
  %5914 = fmul fast float %5913, %4635
  %5915 = fmul fast float %5314, %5914
  %5916 = fmul fast float %5915, %5367
  %5917 = fmul fast float %5916, %5848
  %5918 = fmul fast float %5315, %5914
  %5919 = fmul fast float %5918, %5367
  %5920 = fmul fast float %5919, %5849
  %5921 = fmul fast float %5316, %5914
  %5922 = fmul fast float %5921, %5367
  %5923 = fmul fast float %5922, %5850
  %5924 = fmul fast float %5832, %4631
  %5925 = fmul fast float %5833, %4631
  %5926 = fmul fast float %5834, %4631
  %5927 = fsub fast float 1.000000e+00, %5903
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 0
  %5930 = extractvalue %dx.types.CBufRet.f32 %5928, 1
  %5931 = extractvalue %dx.types.CBufRet.f32 %5928, 2
  %5932 = extractvalue %dx.types.CBufRet.f32 %5928, 3
  %5933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5934 = extractvalue %dx.types.CBufRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.CBufRet.f32 %5933, 1
  %5936 = extractvalue %dx.types.CBufRet.f32 %5933, 2
  %5937 = extractvalue %dx.types.CBufRet.f32 %5933, 3
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.CBufRet.f32 %5938, 1
  %5941 = extractvalue %dx.types.CBufRet.f32 %5938, 2
  %5942 = extractvalue %dx.types.CBufRet.f32 %5938, 3
  %5943 = fmul fast float %5891, %5929
  %5944 = call float @dx.op.tertiary.f32(i32 46, float %5892, float %5930, float %5943)  ; FMad(a,b,c)
  %5945 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %5931, float %5944)  ; FMad(a,b,c)
  %5946 = fadd fast float %5945, %5932
  %5947 = fmul fast float %5891, %5934
  %5948 = call float @dx.op.tertiary.f32(i32 46, float %5892, float %5935, float %5947)  ; FMad(a,b,c)
  %5949 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %5936, float %5948)  ; FMad(a,b,c)
  %5950 = fadd fast float %5949, %5937
  %5951 = fmul fast float %5891, %5939
  %5952 = call float @dx.op.tertiary.f32(i32 46, float %5892, float %5940, float %5951)  ; FMad(a,b,c)
  %5953 = call float @dx.op.tertiary.f32(i32 46, float %5893, float %5941, float %5952)  ; FMad(a,b,c)
  %5954 = fadd fast float %5953, %5942
  %5955 = fdiv fast float %5946, %5954
  %5956 = fdiv fast float %5950, %5954
  %5957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5958 = extractvalue %dx.types.CBufRet.f32 %5957, 0
  %5959 = extractvalue %dx.types.CBufRet.f32 %5957, 1
  %5960 = fmul fast float %5958, %5955
  %5961 = fmul fast float %5959, %5956
  %5962 = extractvalue %dx.types.CBufRet.f32 %5957, 2
  %5963 = extractvalue %dx.types.CBufRet.f32 %5957, 3
  %5964 = fadd fast float %5960, %5962
  %5965 = fadd fast float %5961, %5963
  %5966 = call float @dx.op.unary.f32(i32 7, float %5964)  ; Saturate(value)
  %5967 = call float @dx.op.unary.f32(i32 7, float %5965)  ; Saturate(value)
  %5968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5969 = extractvalue %dx.types.CBufRet.f32 %5968, 0
  %5970 = extractvalue %dx.types.CBufRet.f32 %5968, 1
  %5971 = fmul fast float %5969, %5966
  %5972 = fmul fast float %5970, %5967
  %5973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5974 = extractvalue %dx.types.CBufRet.f32 %5973, 1
  %5975 = extractvalue %dx.types.CBufRet.f32 %5973, 2
  %5976 = fsub fast float %5974, %5975
  %5977 = fmul fast float %5976, %5927
  %5978 = fadd fast float %5977, %5975
  %5979 = fmul fast float %228, 2.000000e+00
  %5980 = fmul fast float %229, 2.000000e+00
  %5981 = fadd fast float %5979, -1.000000e+00
  %5982 = fadd fast float %5980, -1.000000e+00
  %5983 = fmul fast float %5978, %5981
  %5984 = fmul fast float %5978, %5982
  %5985 = fadd fast float %5983, %5971
  %5986 = fadd fast float %5984, %5972
  %5987 = extractvalue %dx.types.CBufRet.f32 %5968, 2
  %5988 = extractvalue %dx.types.CBufRet.f32 %5968, 3
  %5989 = fmul fast float %5985, %5987
  %5990 = fmul fast float %5986, %5988
  %5991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %45, float %5989, float %5990, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5992 = extractvalue %dx.types.ResRet.f32 %5991, 0
  %5993 = fcmp fast ogt float %5992, -1.000000e+00
  %5994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5995 = extractvalue %dx.types.CBufRet.f32 %5994, 1
  %5996 = select i1 %5993, float %5995, float 1.000000e+00
  %5997 = fadd fast float %5992, 1.000000e+00
  %5998 = fmul fast float %5996, %5997
  %5999 = call float @dx.op.unary.f32(i32 6, float %5998)  ; FAbs(value)
  %6000 = fsub fast float %5999, %5954
  %6001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6002 = extractvalue %dx.types.CBufRet.f32 %6001, 2
  %6003 = fmul fast float %6002, %5999
  %6004 = fdiv fast float 1.600000e+02, %6003
  %6005 = fmul fast float %5903, %5903
  %6006 = fmul fast float %6005, 0xBFB5B17960000000
  %6007 = fmul fast float %6006, %6000
  %6008 = fmul fast float %6007, %6004
  %6009 = call float @dx.op.unary.f32(i32 21, float %6008)  ; Exp(value)
  %6010 = fmul fast float %6009, 0x3FF04B2960000000
  %6011 = fsub fast float 0x3FF04B2960000000, %6010
  %6012 = call float @dx.op.unary.f32(i32 7, float %6011)  ; Saturate(value)
  %6013 = fmul fast float %6012, 4.000000e+00
  %6014 = fadd fast float %228, -5.000000e-01
  %6015 = fadd fast float %229, -5.000000e-01
  %6016 = fmul fast float %6012, 0x3FBEB851E0000000
  %6017 = call float @dx.op.unary.f32(i32 7, float %6016)  ; Saturate(value)
  %6018 = fmul fast float %6017, %6014
  %6019 = fmul fast float %6017, %6015
  %6020 = fadd fast float %6018, %5964
  %6021 = fadd fast float %6019, %5965
  %6022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6023 = extractvalue %dx.types.CBufRet.i32 %6022, 0
  %6024 = icmp eq i32 %6023, 0
  br i1 %6024, label %6030, label %6025, !dx.controlflow.hints !90

; <label>:6025                                    ; preds = %5828
  %6026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %6020, float %6021, float undef, float undef, i32 0, i32 0, i32 undef, float %6013)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6027 = extractvalue %dx.types.ResRet.f32 %6026, 0
  %6028 = extractvalue %dx.types.ResRet.f32 %6026, 1
  %6029 = extractvalue %dx.types.ResRet.f32 %6026, 2
  br label %6035

; <label>:6030                                    ; preds = %5828
  %6031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %42, float %6020, float %6021, float undef, float undef, i32 0, i32 0, i32 undef, float %6013)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6032 = extractvalue %dx.types.ResRet.f32 %6031, 0
  %6033 = extractvalue %dx.types.ResRet.f32 %6031, 1
  %6034 = extractvalue %dx.types.ResRet.f32 %6031, 2
  br label %6035

; <label>:6035                                    ; preds = %6030, %6025
  %6036 = phi float [ %6027, %6025 ], [ %6032, %6030 ]
  %6037 = phi float [ %6028, %6025 ], [ %6033, %6030 ]
  %6038 = phi float [ %6029, %6025 ], [ %6034, %6030 ]
  %6039 = select i1 %215, float 0.000000e+00, float %6037
  %6040 = select i1 %215, float 0.000000e+00, float %6038
  %6041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6042 = extractvalue %dx.types.CBufRet.f32 %6041, 1
  %6043 = fmul fast float %6036, %5860
  %6044 = fmul fast float %6043, %6042
  %6045 = fmul fast float %6039, %5861
  %6046 = fmul fast float %6045, %6042
  %6047 = fmul fast float %6040, %5862
  %6048 = fmul fast float %6047, %6042
  %6049 = fadd fast float %5904, %4627
  %6050 = fadd fast float %6049, %5917
  %6051 = fadd fast float %6050, %6044
  %6052 = fmul fast float %6051, %4631
  %6053 = fadd fast float %5905, %4628
  %6054 = fadd fast float %6053, %5920
  %6055 = fadd fast float %6054, %6046
  %6056 = fmul fast float %6055, %4631
  %6057 = fadd fast float %5906, %4629
  %6058 = fadd fast float %6057, %5923
  %6059 = fadd fast float %6058, %6048
  %6060 = fmul fast float %6059, %4631
  %6061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6062 = extractvalue %dx.types.CBufRet.f32 %6061, 3
  %6063 = fcmp fast oeq float %6062, 0.000000e+00
  br i1 %6063, label %7585, label %6064

; <label>:6064                                    ; preds = %6035
  %6065 = extractvalue %dx.types.CBufRet.f32 %6061, 0
  %6066 = extractvalue %dx.types.CBufRet.f32 %6061, 1
  %6067 = extractvalue %dx.types.CBufRet.f32 %6061, 2
  %6068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6069 = extractvalue %dx.types.CBufRet.f32 %6068, 0
  %6070 = extractvalue %dx.types.CBufRet.f32 %6068, 1
  %6071 = extractvalue %dx.types.CBufRet.f32 %6068, 2
  %6072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6073 = extractvalue %dx.types.CBufRet.f32 %6072, 0
  %6074 = extractvalue %dx.types.CBufRet.f32 %6072, 1
  %6075 = call float @dx.op.dot3.f32(i32 55, float %6069, float %6070, float %6071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6076 = select i1 %215, float %6073, float %6069
  %6077 = select i1 %215, float %6075, float %6070
  %6078 = select i1 %215, float %6074, float %6071
  %6079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6080 = extractvalue %dx.types.CBufRet.f32 %6079, 2
  %6081 = fmul fast float %6080, %106
  %6082 = fmul fast float %6080, %107
  %6083 = fmul fast float %6080, %108
  %6084 = fadd fast float %6081, %154
  %6085 = fadd fast float %6082, %155
  %6086 = fadd fast float %6083, %156
  %6087 = fcmp fast olt float %6062, 0.000000e+00
  br i1 %6087, label %7183, label %6088

; <label>:6088                                    ; preds = %6064
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 0
  %6091 = extractvalue %dx.types.CBufRet.f32 %6089, 1
  %6092 = extractvalue %dx.types.CBufRet.f32 %6089, 2
  %6093 = extractvalue %dx.types.CBufRet.f32 %6089, 3
  %6094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.f32 %6094, 0
  %6096 = extractvalue %dx.types.CBufRet.f32 %6094, 1
  %6097 = extractvalue %dx.types.CBufRet.f32 %6094, 2
  %6098 = extractvalue %dx.types.CBufRet.f32 %6094, 3
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 0
  %6101 = extractvalue %dx.types.CBufRet.f32 %6099, 1
  %6102 = extractvalue %dx.types.CBufRet.f32 %6099, 2
  %6103 = extractvalue %dx.types.CBufRet.f32 %6099, 3
  %6104 = fmul fast float %6090, %6084
  %6105 = call float @dx.op.tertiary.f32(i32 46, float %6085, float %6091, float %6104)  ; FMad(a,b,c)
  %6106 = call float @dx.op.tertiary.f32(i32 46, float %6086, float %6092, float %6105)  ; FMad(a,b,c)
  %6107 = fadd fast float %6106, %6093
  %6108 = fmul fast float %6095, %6084
  %6109 = call float @dx.op.tertiary.f32(i32 46, float %6085, float %6096, float %6108)  ; FMad(a,b,c)
  %6110 = call float @dx.op.tertiary.f32(i32 46, float %6086, float %6097, float %6109)  ; FMad(a,b,c)
  %6111 = fadd fast float %6110, %6098
  %6112 = fmul fast float %6100, %6084
  %6113 = call float @dx.op.tertiary.f32(i32 46, float %6085, float %6101, float %6112)  ; FMad(a,b,c)
  %6114 = call float @dx.op.tertiary.f32(i32 46, float %6086, float %6102, float %6113)  ; FMad(a,b,c)
  %6115 = fadd fast float %6114, %6103
  %6116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6117 = extractvalue %dx.types.CBufRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.CBufRet.f32 %6116, 1
  %6119 = extractvalue %dx.types.CBufRet.f32 %6116, 3
  %6120 = fmul fast float %6119, %6107
  %6121 = fmul fast float %6119, %6111
  %6122 = fadd fast float %6120, %6117
  %6123 = fadd fast float %6121, %6118
  %6124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6125 = extractvalue %dx.types.CBufRet.f32 %6124, 0
  %6126 = extractvalue %dx.types.CBufRet.f32 %6124, 1
  %6127 = extractvalue %dx.types.CBufRet.f32 %6124, 3
  %6128 = fmul fast float %6127, %6107
  %6129 = fmul fast float %6127, %6111
  %6130 = fadd fast float %6128, %6125
  %6131 = fadd fast float %6129, %6126
  %6132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6133 = extractvalue %dx.types.CBufRet.f32 %6132, 1
  %6134 = fsub fast float %6133, %6115
  %6135 = extractvalue %dx.types.CBufRet.f32 %6132, 2
  %6136 = fmul fast float %6134, %6135
  %6137 = fsub fast float 1.000000e+00, %6136
  %6138 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6139 = extractvalue %dx.types.CBufRet.f32 %6124, 2
  %6140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6141 = extractvalue %dx.types.CBufRet.f32 %6140, 2
  %6142 = fadd fast float %6141, %6139
  %6143 = fcmp fast ogt float %6142, 0.000000e+00
  br i1 %6143, label %6144, label %6168

; <label>:6144                                    ; preds = %6088
  %6145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6146 = extractvalue %dx.types.CBufRet.f32 %6145, 0
  %6147 = extractvalue %dx.types.CBufRet.f32 %6145, 1
  %6148 = fsub fast float %6130, %6146
  %6149 = fsub fast float %6131, %6147
  %6150 = fcmp fast olt float %6148, 0.000000e+00
  %6151 = fcmp fast olt float %6149, 0.000000e+00
  %6152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6153 = extractvalue %dx.types.CBufRet.f32 %6152, 0
  %6154 = extractvalue %dx.types.CBufRet.f32 %6152, 1
  %6155 = extractvalue %dx.types.CBufRet.f32 %6152, 2
  %6156 = extractvalue %dx.types.CBufRet.f32 %6152, 3
  %6157 = select i1 %6150, float %6153, float %6155
  %6158 = select i1 %6151, float %6154, float %6156
  %6159 = fmul fast float %6157, %6148
  %6160 = fmul fast float %6158, %6149
  %6161 = call float @dx.op.unary.f32(i32 6, float %6159)  ; FAbs(value)
  %6162 = call float @dx.op.unary.f32(i32 6, float %6160)  ; FAbs(value)
  %6163 = extractvalue %dx.types.CBufRet.f32 %6079, 0
  %6164 = call float @dx.op.binary.f32(i32 35, float %6161, float %6162)  ; FMax(a,b)
  %6165 = fsub fast float %6163, %6164
  %6166 = call float @dx.op.unary.f32(i32 7, float %6165)  ; Saturate(value)
  %6167 = fmul fast float %6166, %6138
  br label %6168

; <label>:6168                                    ; preds = %6144, %6088
  %6169 = phi float [ %6167, %6144 ], [ 0.000000e+00, %6088 ]
  %6170 = extractvalue %dx.types.CBufRet.f32 %6116, 2
  %6171 = extractvalue %dx.types.CBufRet.f32 %6140, 1
  %6172 = fadd fast float %6171, %6170
  %6173 = fcmp fast ogt float %6172, 0.000000e+00
  %6174 = extractvalue %dx.types.CBufRet.f32 %6079, 0
  br i1 %6173, label %6175, label %6198

; <label>:6175                                    ; preds = %6168
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = extractvalue %dx.types.CBufRet.f32 %6176, 1
  %6179 = fsub fast float %6122, %6177
  %6180 = fsub fast float %6123, %6178
  %6181 = fcmp fast olt float %6179, 0.000000e+00
  %6182 = fcmp fast olt float %6180, 0.000000e+00
  %6183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6184 = extractvalue %dx.types.CBufRet.f32 %6183, 0
  %6185 = extractvalue %dx.types.CBufRet.f32 %6183, 1
  %6186 = extractvalue %dx.types.CBufRet.f32 %6183, 2
  %6187 = extractvalue %dx.types.CBufRet.f32 %6183, 3
  %6188 = select i1 %6181, float %6184, float %6186
  %6189 = select i1 %6182, float %6185, float %6187
  %6190 = fmul fast float %6188, %6179
  %6191 = fmul fast float %6189, %6180
  %6192 = call float @dx.op.unary.f32(i32 6, float %6190)  ; FAbs(value)
  %6193 = call float @dx.op.unary.f32(i32 6, float %6191)  ; FAbs(value)
  %6194 = call float @dx.op.binary.f32(i32 35, float %6192, float %6193)  ; FMax(a,b)
  %6195 = fsub fast float %6174, %6194
  %6196 = call float @dx.op.unary.f32(i32 7, float %6195)  ; Saturate(value)
  %6197 = fmul fast float %6196, %6138
  br label %6198

; <label>:6198                                    ; preds = %6175, %6168
  %6199 = phi float [ %6197, %6175 ], [ 0.000000e+00, %6168 ]
  %6200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6201 = extractvalue %dx.types.CBufRet.f32 %6200, 1
  %6202 = call float @dx.op.unary.f32(i32 7, float %6201)  ; Saturate(value)
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 0
  %6205 = extractvalue %dx.types.CBufRet.f32 %6203, 1
  %6206 = fsub fast float %6107, %6204
  %6207 = fsub fast float %6111, %6205
  %6208 = fcmp fast olt float %6206, 0.000000e+00
  %6209 = fcmp fast olt float %6207, 0.000000e+00
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.CBufRet.f32 %6210, 1
  %6213 = extractvalue %dx.types.CBufRet.f32 %6210, 2
  %6214 = extractvalue %dx.types.CBufRet.f32 %6210, 3
  %6215 = select i1 %6208, float %6211, float %6213
  %6216 = select i1 %6209, float %6212, float %6214
  %6217 = fmul fast float %6215, %6206
  %6218 = fmul fast float %6216, %6207
  %6219 = call float @dx.op.unary.f32(i32 6, float %6217)  ; FAbs(value)
  %6220 = call float @dx.op.unary.f32(i32 6, float %6218)  ; FAbs(value)
  %6221 = call float @dx.op.binary.f32(i32 35, float %6219, float %6220)  ; FMax(a,b)
  %6222 = fsub fast float %6174, %6221
  %6223 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  %6224 = call float @dx.op.binary.f32(i32 36, float %6223, float %6202)  ; FMin(a,b)
  %6225 = fmul fast float %6224, %6138
  %6226 = fsub fast float %6199, %6225
  %6227 = fsub fast float %6169, %6199
  %6228 = fsub fast float %6227, %6225
  %6229 = call float @dx.op.binary.f32(i32 35, float %6199, float %6169)  ; FMax(a,b)
  %6230 = call float @dx.op.binary.f32(i32 35, float %6225, float %6229)  ; FMax(a,b)
  %6231 = fcmp fast olt float %6230, 1.000000e+00
  br i1 %6231, label %6232, label %6630, !dx.controlflow.hints !91

; <label>:6232                                    ; preds = %6198
  %6233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6234 = extractvalue %dx.types.CBufRet.f32 %6233, 0
  %6235 = fcmp fast une float %6234, 0.000000e+00
  br i1 %6235, label %6236, label %6630, !dx.controlflow.hints !92

; <label>:6236                                    ; preds = %6232
  %6237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6238 = extractvalue %dx.types.CBufRet.f32 %6237, 0
  %6239 = extractvalue %dx.types.CBufRet.f32 %6237, 1
  %6240 = extractvalue %dx.types.CBufRet.f32 %6237, 2
  %6241 = extractvalue %dx.types.CBufRet.f32 %6237, 3
  %6242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6242, 0
  %6244 = extractvalue %dx.types.CBufRet.f32 %6242, 1
  %6245 = extractvalue %dx.types.CBufRet.f32 %6242, 2
  %6246 = extractvalue %dx.types.CBufRet.f32 %6242, 3
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 0
  %6249 = extractvalue %dx.types.CBufRet.f32 %6247, 1
  %6250 = extractvalue %dx.types.CBufRet.f32 %6247, 2
  %6251 = extractvalue %dx.types.CBufRet.f32 %6247, 3
  %6252 = fmul fast float %6238, %6084
  %6253 = call float @dx.op.tertiary.f32(i32 46, float %6085, float %6239, float %6252)  ; FMad(a,b,c)
  %6254 = call float @dx.op.tertiary.f32(i32 46, float %6086, float %6240, float %6253)  ; FMad(a,b,c)
  %6255 = fadd fast float %6254, %6241
  %6256 = fmul fast float %6243, %6084
  %6257 = call float @dx.op.tertiary.f32(i32 46, float %6085, float %6244, float %6256)  ; FMad(a,b,c)
  %6258 = call float @dx.op.tertiary.f32(i32 46, float %6086, float %6245, float %6257)  ; FMad(a,b,c)
  %6259 = fadd fast float %6258, %6246
  %6260 = fmul fast float %6248, %6084
  %6261 = call float @dx.op.tertiary.f32(i32 46, float %6085, float %6249, float %6260)  ; FMad(a,b,c)
  %6262 = call float @dx.op.tertiary.f32(i32 46, float %6086, float %6250, float %6261)  ; FMad(a,b,c)
  %6263 = fadd fast float %6262, %6251
  %6264 = fcmp fast oge float %6255, 1.000000e+00
  %6265 = fcmp fast oge float %6259, 1.000000e+00
  %6266 = or i1 %6264, %6265
  %6267 = fcmp fast olt float %6255, 0.000000e+00
  %6268 = fcmp fast olt float %6259, 0.000000e+00
  %6269 = or i1 %6267, %6268
  %6270 = or i1 %6266, %6269
  br i1 %6270, label %6630, label %6271, !dx.controlflow.hints !93

; <label>:6271                                    ; preds = %6236
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 0
  %6274 = extractvalue %dx.types.CBufRet.f32 %6272, 1
  %6275 = extractvalue %dx.types.CBufRet.f32 %6272, 2
  %6276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.i32 %6276, 2
  %6278 = uitofp i32 %6277 to float
  %6279 = extractvalue %dx.types.CBufRet.i32 %6276, 3
  %6280 = uitofp i32 %6279 to float
  %6281 = extractvalue %dx.types.CBufRet.f32 %6272, 3
  %6282 = fmul fast float %6281, 2.000000e+00
  %6283 = fsub fast float %6255, %6273
  %6284 = fsub fast float %6259, %6274
  %6285 = fmul fast float %6282, %6283
  %6286 = fmul fast float %6282, %6284
  %6287 = fdiv fast float 1.000000e+00, %6067
  %6288 = fmul fast float %6286, %6287
  %6289 = call float @dx.op.unary.f32(i32 6, float %6288)  ; FAbs(value)
  %6290 = fmul fast float %6275, %6086
  %6291 = fmul fast float %6290, %6282
  %6292 = call float @dx.op.unary.f32(i32 6, float %6291)  ; FAbs(value)
  %6293 = call float @dx.op.unary.f32(i32 6, float %6285)  ; FAbs(value)
  %6294 = call float @dx.op.binary.f32(i32 35, float %6292, float %6289)  ; FMax(a,b)
  %6295 = call float @dx.op.binary.f32(i32 35, float %6293, float %6294)  ; FMax(a,b)
  %6296 = fmul fast float %6295, 2.000000e+00
  %6297 = call float @dx.op.unary.f32(i32 23, float %6296)  ; Log(value)
  %6298 = call float @dx.op.binary.f32(i32 35, float %6297, float %6278)  ; FMax(a,b)
  %6299 = call float @dx.op.unary.f32(i32 22, float %6298)  ; Frc(value)
  %6300 = fadd fast float %6299, 0xBFEA666660000000
  %6301 = fmul fast float %6300, 8.000000e+00
  %6302 = call float @dx.op.unary.f32(i32 7, float %6301)  ; Saturate(value)
  %6303 = call float @dx.op.unary.f32(i32 27, float %6298)  ; Round_ni(value)
  %6304 = fadd fast float %6303, %6302
  %6305 = call float @dx.op.binary.f32(i32 36, float %6304, float %6280)  ; FMin(a,b)
  %6306 = call float @dx.op.unary.f32(i32 27, float %6305)  ; Round_ni(value)
  %6307 = fsub fast float -0.000000e+00, %6306
  %6308 = call float @dx.op.unary.f32(i32 21, float %6307)  ; Exp(value)
  %6309 = fmul fast float %6308, %6282
  %6310 = fmul fast float %6309, %6255
  %6311 = fmul fast float %6309, %6259
  %6312 = fmul fast float %6310, 2.500000e-01
  %6313 = fmul fast float %6311, 2.500000e-01
  %6314 = fadd fast float %6312, 5.000000e-01
  %6315 = fadd fast float %6313, 5.000000e-01
  %6316 = fsub fast float %6280, %6278
  %6317 = fptoui float %6316 to i32
  %6318 = add i32 %6317, 320
  %6319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %6318)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.f32 %6319, 0
  %6321 = extractvalue %dx.types.CBufRet.f32 %6319, 1
  %6322 = fcmp fast une float %6305, %6280
  %6323 = fsub fast float %6255, %6320
  %6324 = fsub fast float %6259, %6321
  %6325 = call float @dx.op.unary.f32(i32 6, float %6323)  ; FAbs(value)
  %6326 = call float @dx.op.unary.f32(i32 6, float %6324)  ; FAbs(value)
  %6327 = fmul fast float %6325, %6309
  %6328 = fmul fast float %6326, %6309
  %6329 = fcmp fast olt float %6327, 1.000000e+00
  %6330 = fcmp fast olt float %6328, 1.000000e+00
  %6331 = and i1 %6329, %6330
  %6332 = or i1 %6322, %6331
  br i1 %6332, label %6333, label %6630, !dx.controlflow.hints !94

; <label>:6333                                    ; preds = %6271
  %6334 = fmul fast float %6311, 5.000000e-01
  %6335 = fmul fast float %6310, 5.000000e-01
  %6336 = fadd fast float %6334, 5.000000e-01
  %6337 = fadd fast float %6335, 5.000000e-01
  %6338 = sitofp i32 %6277 to float
  %6339 = fsub fast float %6305, %6338
  %6340 = call float @dx.op.unary.f32(i32 27, float %6339)  ; Round_ni(value)
  %6341 = call float @dx.op.unary.f32(i32 22, float %6305)  ; Frc(value)
  %6342 = call float @dx.op.unary.f32(i32 22, float %6337)  ; Frc(value)
  %6343 = call float @dx.op.unary.f32(i32 22, float %6336)  ; Frc(value)
  %6344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %6342, float %6343, float %6340, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6345 = extractvalue %dx.types.ResRet.f32 %6344, 0
  %6346 = extractvalue %dx.types.ResRet.f32 %6344, 1
  %6347 = extractvalue %dx.types.ResRet.f32 %6344, 2
  %6348 = extractvalue %dx.types.ResRet.f32 %6344, 3
  %6349 = fcmp fast ogt float %6341, 0.000000e+00
  br i1 %6349, label %6350, label %6371, !dx.controlflow.hints !95

; <label>:6350                                    ; preds = %6333
  %6351 = fadd fast float %6340, 1.000000e+00
  %6352 = call float @dx.op.unary.f32(i32 22, float %6314)  ; Frc(value)
  %6353 = call float @dx.op.unary.f32(i32 22, float %6315)  ; Frc(value)
  %6354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %6352, float %6353, float %6351, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6355 = extractvalue %dx.types.ResRet.f32 %6354, 0
  %6356 = extractvalue %dx.types.ResRet.f32 %6354, 1
  %6357 = extractvalue %dx.types.ResRet.f32 %6354, 2
  %6358 = extractvalue %dx.types.ResRet.f32 %6354, 3
  %6359 = fsub fast float %6355, %6345
  %6360 = fsub fast float %6356, %6346
  %6361 = fsub fast float %6357, %6347
  %6362 = fsub fast float %6358, %6348
  %6363 = fmul fast float %6359, %6341
  %6364 = fmul fast float %6360, %6341
  %6365 = fmul fast float %6361, %6341
  %6366 = fmul fast float %6362, %6341
  %6367 = fadd fast float %6363, %6345
  %6368 = fadd fast float %6364, %6346
  %6369 = fadd fast float %6365, %6347
  %6370 = fadd fast float %6366, %6348
  br label %6371

; <label>:6371                                    ; preds = %6350, %6333
  %6372 = phi float [ %6367, %6350 ], [ %6345, %6333 ]
  %6373 = phi float [ %6368, %6350 ], [ %6346, %6333 ]
  %6374 = phi float [ %6369, %6350 ], [ %6347, %6333 ]
  %6375 = phi float [ %6370, %6350 ], [ %6348, %6333 ]
  %6376 = fadd fast float %6372, -5.000000e-01
  %6377 = fadd fast float %6374, -5.000000e-01
  %6378 = fmul fast float %6376, 0xBFD5555560000000
  %6379 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6377, float %6378)  ; FMad(a,b,c)
  %6380 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6373, float 0.000000e+00)  ; FMad(a,b,c)
  %6381 = fadd fast float %6380, %6375
  %6382 = fmul fast float %6376, -7.500000e-01
  %6383 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6377, float %6382)  ; FMad(a,b,c)
  %6384 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6373, float 0.000000e+00)  ; FMad(a,b,c)
  %6385 = fadd fast float %6384, %6375
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  %6388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6389 = extractvalue %dx.types.CBufRet.f32 %6388, 0
  %6390 = extractvalue %dx.types.CBufRet.f32 %6388, 1
  %6391 = extractvalue %dx.types.CBufRet.f32 %6388, 2
  %6392 = extractvalue %dx.types.CBufRet.f32 %6388, 3
  %6393 = fsub fast float %6389, %6379
  %6394 = fsub fast float %6390, %6381
  %6395 = fsub fast float %6391, %6383
  %6396 = fsub fast float %6392, %6385
  %6397 = fmul fast float %6393, %6387
  %6398 = fmul fast float %6394, %6387
  %6399 = fmul fast float %6395, %6387
  %6400 = fmul fast float %6396, %6387
  %6401 = fadd fast float %6397, %6379
  %6402 = fadd fast float %6398, %6381
  %6403 = fadd fast float %6399, %6383
  %6404 = fadd fast float %6400, %6385
  %6405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6406 = extractvalue %dx.types.ResRet.i32 %6405, 0
  %6407 = and i32 %6406, 536870911
  %6408 = uitofp i32 %6407 to float
  %6409 = fmul fast float %6408, %6255
  %6410 = fmul fast float %6408, %6259
  %6411 = fptoui float %6409 to i32
  %6412 = fptoui float %6410 to i32
  %6413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6414 = extractvalue %dx.types.ResRet.i32 %6413, 0
  %6415 = and i32 %6414, 31
  %6416 = lshr i32 %6411, %6415
  %6417 = lshr i32 %6412, %6415
  %6418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6419 = extractvalue %dx.types.ResRet.i32 %6418, 0
  %6420 = and i32 %6419, 31
  %6421 = shl i32 1, %6420
  %6422 = call i32 @dx.op.binary.i32(i32 40, i32 %6421, i32 4)  ; UMin(a,b)
  %6423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6424 = extractvalue %dx.types.ResRet.i32 %6423, 0
  %6425 = extractvalue %dx.types.ResRet.i32 %6423, 1
  %6426 = icmp eq i32 %6422, 0
  br i1 %6426, label %6468, label %6427

; <label>:6427                                    ; preds = %6371
  br label %6428

; <label>:6428                                    ; preds = %6456, %6427
  %6429 = phi i32 [ %6459, %6456 ], [ 0, %6427 ]
  %6430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6431 = extractvalue %dx.types.ResRet.i32 %6430, 0
  %6432 = lshr i32 %6431, 16
  %6433 = and i32 %6432, 31
  %6434 = shl i32 %6417, %6433
  %6435 = add i32 %6434, %6416
  %6436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6437 = extractvalue %dx.types.ResRet.i32 %6436, 0
  %6438 = and i32 %6437, 31
  %6439 = shl i32 %6435, %6438
  %6440 = add i32 %6439, %6429
  %6441 = shl i32 %6440, 2
  %6442 = add i32 %6441, 32
  %6443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6442, i32 undef)  ; BufferLoad(srv,index,wot)
  %6444 = extractvalue %dx.types.ResRet.i32 %6443, 0
  %6445 = icmp slt i32 %6444, 0
  %6446 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6429
  %6447 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6429
  %6448 = bitcast float* %6446 to i32*
  %6449 = bitcast float* %6447 to i32*
  br i1 %6445, label %6450, label %6456

; <label>:6450                                    ; preds = %6428
  %6451 = and i32 %6444, 1073741823
  %6452 = add nuw nsw i32 %6451, 20
  %6453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6452, i32 undef)  ; BufferLoad(srv,index,wot)
  %6454 = extractvalue %dx.types.ResRet.i32 %6453, 0
  %6455 = extractvalue %dx.types.ResRet.i32 %6453, 1
  br label %6456

; <label>:6456                                    ; preds = %6450, %6428
  %6457 = phi i32 [ %6454, %6450 ], [ %6424, %6428 ]
  %6458 = phi i32 [ %6455, %6450 ], [ %6425, %6428 ]
  store i32 %6457, i32* %6448, align 4
  store i32 %6458, i32* %6449, align 4
  %6459 = add nuw i32 %6429, 1
  %6460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6461 = extractvalue %dx.types.CBufRet.i32 %6460, 2
  %6462 = icmp eq i32 %6461, 0
  %6463 = icmp ugt i32 %6444, -1073741825
  %6464 = and i1 %6463, %6462
  %6465 = icmp ult i32 %6459, %6422
  %6466 = and i1 %6464, %6465
  br i1 %6466, label %6428, label %6467

; <label>:6467                                    ; preds = %6456
  br label %6468

; <label>:6468                                    ; preds = %6467, %6371
  %6469 = phi i32 [ 0, %6371 ], [ %6459, %6467 ]
  %6470 = extractvalue %dx.types.CBufRet.f32 %6233, 2
  %6471 = fptoui float %6470 to i32
  %6472 = icmp eq i32 %6471, 0
  br i1 %6472, label %6524, label %6473

; <label>:6473                                    ; preds = %6468
  br label %6474

; <label>:6474                                    ; preds = %6519, %6473
  %6475 = phi i32 [ %6520, %6519 ], [ %6469, %6473 ]
  %6476 = phi i32 [ %6521, %6519 ], [ 0, %6473 ]
  %6477 = lshr i32 %6476, 2
  %6478 = and i32 %6476, 3
  %6479 = add nuw nsw i32 %6477, 83
  %6480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %6479)  ; CBufferLoadLegacy(handle,regIndex)
  %6481 = extractvalue %dx.types.CBufRet.i32 %6480, 0
  %6482 = extractvalue %dx.types.CBufRet.i32 %6480, 1
  %6483 = extractvalue %dx.types.CBufRet.i32 %6480, 2
  %6484 = extractvalue %dx.types.CBufRet.i32 %6480, 3
  %6485 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %6481, i32* %6485, align 4
  %6486 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %6482, i32* %6486, align 4
  %6487 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %6483, i32* %6487, align 4
  %6488 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %6484, i32* %6488, align 4
  %6489 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %6478
  %6490 = load i32, i32* %6489, align 4, !tbaa !96, !noalias !100
  %6491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6492 = extractvalue %dx.types.ResRet.i32 %6491, 0
  %6493 = lshr i32 %6492, 16
  %6494 = and i32 %6493, 31
  %6495 = shl i32 %6417, %6494
  %6496 = add i32 %6495, %6416
  %6497 = shl i32 %6496, 2
  %6498 = add i32 %6497, %6490
  %6499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6498, i32 undef)  ; BufferLoad(srv,index,wot)
  %6500 = extractvalue %dx.types.ResRet.i32 %6499, 0
  %6501 = icmp eq i32 %6500, 0
  br i1 %6501, label %6519, label %6502

; <label>:6502                                    ; preds = %6474
  %6503 = icmp slt i32 %6500, 0
  %6504 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6475
  %6505 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6475
  %6506 = bitcast float* %6504 to i32*
  %6507 = bitcast float* %6505 to i32*
  br i1 %6503, label %6508, label %6515

; <label>:6508                                    ; preds = %6502
  %6509 = and i32 %6500, 1073741823
  %6510 = add i32 %6490, 20
  %6511 = add i32 %6510, %6509
  %6512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6511, i32 undef)  ; BufferLoad(srv,index,wot)
  %6513 = extractvalue %dx.types.ResRet.i32 %6512, 0
  %6514 = extractvalue %dx.types.ResRet.i32 %6512, 1
  br label %6515

; <label>:6515                                    ; preds = %6508, %6502
  %6516 = phi i32 [ %6513, %6508 ], [ %6424, %6502 ]
  %6517 = phi i32 [ %6514, %6508 ], [ %6425, %6502 ]
  store i32 %6516, i32* %6506, align 4
  store i32 %6517, i32* %6507, align 4
  %6518 = add i32 %6475, 1
  br label %6519

; <label>:6519                                    ; preds = %6515, %6474
  %6520 = phi i32 [ %6475, %6474 ], [ %6518, %6515 ]
  %6521 = add nuw i32 %6476, 1
  %6522 = icmp eq i32 %6521, %6471
  br i1 %6522, label %6523, label %6474

; <label>:6523                                    ; preds = %6519
  br label %6524

; <label>:6524                                    ; preds = %6523, %6468
  %6525 = phi i32 [ %6469, %6468 ], [ %6520, %6523 ]
  %6526 = icmp eq i32 %6525, 1
  %6527 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %6528 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %6526, label %6529, label %6532

; <label>:6529                                    ; preds = %6524
  %6530 = load float, float* %6527, align 4
  %6531 = load float, float* %6528, align 4
  br label %6559

; <label>:6532                                    ; preds = %6524
  %6533 = load float, float* %6527, align 4
  %6534 = load float, float* %6528, align 4
  %6535 = fdiv fast float 1.000000e+00, %6534
  %6536 = fsub fast float %6533, %6535
  %6537 = icmp ugt i32 %6525, 1
  br i1 %6537, label %6538, label %6554

; <label>:6538                                    ; preds = %6532
  br label %6539

; <label>:6539                                    ; preds = %6539, %6538
  %6540 = phi float [ %6549, %6539 ], [ %6536, %6538 ]
  %6541 = phi float [ %6550, %6539 ], [ %6533, %6538 ]
  %6542 = phi i32 [ %6551, %6539 ], [ 1, %6538 ]
  %6543 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6542
  %6544 = load float, float* %6543, align 4
  %6545 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6542
  %6546 = load float, float* %6545, align 4
  %6547 = fdiv fast float 1.000000e+00, %6546
  %6548 = fsub fast float %6544, %6547
  %6549 = call float @dx.op.binary.f32(i32 36, float %6540, float %6548)  ; FMin(a,b)
  %6550 = call float @dx.op.binary.f32(i32 35, float %6541, float %6544)  ; FMax(a,b)
  %6551 = add nuw i32 %6542, 1
  %6552 = icmp eq i32 %6551, %6525
  br i1 %6552, label %6553, label %6539

; <label>:6553                                    ; preds = %6539
  br label %6554

; <label>:6554                                    ; preds = %6553, %6532
  %6555 = phi float [ %6536, %6532 ], [ %6549, %6553 ]
  %6556 = phi float [ %6533, %6532 ], [ %6550, %6553 ]
  %6557 = fsub fast float %6556, %6555
  %6558 = fdiv fast float 1.000000e+00, %6557
  br label %6559

; <label>:6559                                    ; preds = %6554, %6529
  %6560 = phi float [ %6530, %6529 ], [ %6556, %6554 ]
  %6561 = phi float [ %6531, %6529 ], [ %6558, %6554 ]
  %6562 = fadd fast float %6263, %6560
  %6563 = fmul fast float %6562, %6561
  %6564 = call float @dx.op.unary.f32(i32 7, float %6563)  ; Saturate(value)
  %6565 = fmul fast float %6564, 2.000000e+00
  %6566 = fsub fast float 1.000000e+00, %6565
  %6567 = fmul fast float %6401, %6401
  %6568 = fsub fast float %6402, %6567
  %6569 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6568)  ; FMax(a,b)
  %6570 = fdiv fast float 1.000000e+00, %6569
  %6571 = fmul fast float %6402, %6401
  %6572 = fsub fast float %6403, %6571
  %6573 = fsub fast float %6566, %6401
  %6574 = fmul fast float %6566, %6566
  %6575 = fsub fast float %6574, %6402
  %6576 = fmul fast float %6570, %6572
  %6577 = fmul fast float %6576, %6573
  %6578 = fsub fast float %6575, %6577
  %6579 = fmul fast float %6402, %6402
  %6580 = fsub fast float %6404, %6579
  %6581 = fmul fast float %6572, %6572
  %6582 = fmul fast float %6581, %6570
  %6583 = fsub fast float %6580, %6582
  %6584 = fdiv fast float %6578, %6583
  %6585 = fmul fast float %6584, %6572
  %6586 = fsub fast float %6573, %6585
  %6587 = fmul fast float %6586, %6570
  %6588 = fmul fast float %6587, %6401
  %6589 = fsub fast float 1.000000e+00, %6588
  %6590 = fmul fast float %6584, %6402
  %6591 = fsub fast float %6589, %6590
  %6592 = fmul fast float %6587, %6587
  %6593 = fmul fast float %6584, 4.000000e+00
  %6594 = fmul fast float %6593, %6591
  %6595 = fsub fast float %6592, %6594
  %6596 = call float @dx.op.unary.f32(i32 24, float %6595)  ; Sqrt(value)
  %6597 = fcmp fast oge float %6587, 0.000000e+00
  %6598 = fsub fast float -0.000000e+00, %6596
  %6599 = select i1 %6597, float %6598, float %6596
  %6600 = fsub fast float %6599, %6587
  %6601 = fdiv fast float %6600, %6584
  %6602 = fdiv fast float %6591, %6600
  %6603 = fmul fast float %6601, 5.000000e-01
  %6604 = fmul fast float %6602, 2.000000e+00
  %6605 = select i1 %6597, float %6603, float %6604
  %6606 = select i1 %6597, float %6604, float %6603
  %6607 = call float @dx.op.binary.f32(i32 35, float %6605, float %6606)  ; FMax(a,b)
  %6608 = call float @dx.op.binary.f32(i32 36, float %6605, float %6606)  ; FMin(a,b)
  %6609 = fcmp fast ogt float %6566, %6607
  %6610 = fsub fast float %6566, %6608
  %6611 = fsub fast float %6566, %6607
  %6612 = fsub fast float %6607, %6608
  %6613 = select i1 %6609, float %6611, float %6612
  %6614 = fmul float %6610, %6613
  %6615 = select i1 %6609, float %6608, float %6566
  %6616 = fcmp fast ogt float %6566, %6608
  %6617 = fmul fast float %6615, %6607
  %6618 = fadd fast float %6615, %6607
  %6619 = fmul fast float %6618, %6401
  %6620 = fadd fast float %6617, %6402
  %6621 = fsub fast float %6620, %6619
  %6622 = fdiv fast float %6621, %6614
  %6623 = select i1 %6616, float %6622, float 0.000000e+00
  %6624 = fsub fast float 1.000000e+00, %6623
  %6625 = select i1 %6609, float %6624, float %6623
  %6626 = call float @dx.op.unary.f32(i32 7, float %6625)  ; Saturate(value)
  %6627 = extractvalue %dx.types.CBufRet.f32 %6386, 3
  %6628 = fmul fast float %6627, %6626
  %6629 = fsub fast float 1.000000e+00, %6628
  br label %6630

; <label>:6630                                    ; preds = %6559, %6271, %6236, %6232, %6198
  %6631 = phi float [ 1.000000e+00, %6198 ], [ %6629, %6559 ], [ 1.000000e+00, %6236 ], [ 1.000000e+00, %6271 ], [ 1.000000e+00, %6232 ]
  %6632 = fcmp fast ogt float %6228, 0.000000e+00
  br i1 %6632, label %6633, label %6795, !dx.controlflow.hints !109

; <label>:6633                                    ; preds = %6630
  %6634 = fadd fast float %6141, %6115
  %6635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6636 = extractvalue %dx.types.CBufRet.f32 %6635, 2
  %6637 = extractvalue %dx.types.CBufRet.f32 %6635, 3
  %6638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6639 = extractvalue %dx.types.CBufRet.f32 %6638, 2
  %6640 = call float @dx.op.binary.f32(i32 35, float %6634, float 0.000000e+00)  ; FMax(a,b)
  %6641 = fadd fast float %6640, 0x3F10000000000000
  %6642 = fcmp fast oeq float %6639, 0.000000e+00
  br i1 %6642, label %6643, label %6710

; <label>:6643                                    ; preds = %6633
  %6644 = extractvalue %dx.types.CBufRet.f32 %6635, 1
  %6645 = extractvalue %dx.types.CBufRet.f32 %6635, 0
  %6646 = fmul fast float %6645, %6130
  %6647 = fmul fast float %6644, %6131
  %6648 = fadd fast float %6646, 5.000000e-01
  %6649 = call float @dx.op.unary.f32(i32 27, float %6648)  ; Round_ni(value)
  %6650 = fadd fast float %6647, 5.000000e-01
  %6651 = call float @dx.op.unary.f32(i32 27, float %6650)  ; Round_ni(value)
  %6652 = fsub fast float %6648, %6649
  %6653 = fsub fast float %6650, %6651
  %6654 = fadd fast float %6649, -5.000000e-01
  %6655 = fadd fast float %6651, -5.000000e-01
  %6656 = fmul fast float %6652, 2.000000e+00
  %6657 = fsub fast float 3.000000e+00, %6656
  %6658 = fadd fast float %6656, 1.000000e+00
  %6659 = fsub fast float 2.000000e+00, %6652
  %6660 = bitcast float %6657 to i32
  %6661 = sub nsw i32 2129859010, %6660
  %6662 = bitcast i32 %6661 to float
  %6663 = fmul fast float %6662, %6659
  %6664 = fadd fast float %6663, -1.000000e+00
  %6665 = bitcast float %6658 to i32
  %6666 = sub nsw i32 2129859010, %6665
  %6667 = bitcast i32 %6666 to float
  %6668 = fmul fast float %6667, %6652
  %6669 = fadd fast float %6668, 1.000000e+00
  %6670 = fmul fast float %6653, 2.000000e+00
  %6671 = fsub fast float 3.000000e+00, %6670
  %6672 = fadd fast float %6670, 1.000000e+00
  %6673 = fsub fast float 2.000000e+00, %6653
  %6674 = bitcast float %6671 to i32
  %6675 = sub nsw i32 2129859010, %6674
  %6676 = bitcast i32 %6675 to float
  %6677 = fmul fast float %6676, %6673
  %6678 = fadd fast float %6677, -1.000000e+00
  %6679 = bitcast float %6672 to i32
  %6680 = sub nsw i32 2129859010, %6679
  %6681 = bitcast i32 %6680 to float
  %6682 = fmul fast float %6681, %6653
  %6683 = fadd fast float %6682, 1.000000e+00
  %6684 = fadd fast float %6664, %6654
  %6685 = fmul fast float %6684, %6636
  %6686 = fadd fast float %6678, %6655
  %6687 = fmul fast float %6686, %6637
  %6688 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %6685, float %6687, float undef, float undef, i32 0, i32 0, i32 undef, float %6641)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6689 = extractvalue %dx.types.ResRet.f32 %6688, 0
  %6690 = fmul fast float %6689, %6657
  %6691 = fadd fast float %6669, %6654
  %6692 = fmul fast float %6691, %6636
  %6693 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %6692, float %6687, float undef, float undef, i32 0, i32 0, i32 undef, float %6641)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6694 = extractvalue %dx.types.ResRet.f32 %6693, 0
  %6695 = fmul fast float %6694, %6658
  %6696 = fadd fast float %6683, %6655
  %6697 = fmul fast float %6696, %6637
  %6698 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %6685, float %6697, float undef, float undef, i32 0, i32 0, i32 undef, float %6641)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6699 = extractvalue %dx.types.ResRet.f32 %6698, 0
  %6700 = fmul fast float %6699, %6657
  %6701 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %6692, float %6697, float undef, float undef, i32 0, i32 0, i32 undef, float %6641)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6702 = extractvalue %dx.types.ResRet.f32 %6701, 0
  %6703 = fmul fast float %6702, %6658
  %6704 = fadd fast float %6703, %6700
  %6705 = fmul fast float %6704, %6672
  %6706 = fadd fast float %6695, %6690
  %6707 = fmul fast float %6706, %6671
  %6708 = fadd fast float %6707, %6705
  %6709 = fmul fast float %6708, 6.250000e-02
  br label %6795

; <label>:6710                                    ; preds = %6633
  %6711 = fmul fast float %228, 0x401921FB60000000
  %6712 = call float @dx.op.unary.f32(i32 13, float %6711)  ; Sin(value)
  %6713 = call float @dx.op.unary.f32(i32 12, float %6711)  ; Cos(value)
  %6714 = fsub fast float -0.000000e+00, %6712
  br label %6715

; <label>:6715                                    ; preds = %6764, %6710
  %6716 = phi float [ 0.000000e+00, %6710 ], [ %6759, %6764 ]
  %6717 = phi float [ 0.000000e+00, %6710 ], [ %6761, %6764 ]
  %6718 = phi i32 [ 0, %6710 ], [ %6765, %6764 ]
  %6719 = mul i32 %6718, 2
  %6720 = add i32 0, %6719
  %6721 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6720
  %6722 = load float, float* %6721, align 4
  %6723 = mul i32 %6718, 2
  %6724 = add i32 1, %6723
  %6725 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6724
  %6726 = load float, float* %6725, align 4
  %6727 = fmul fast float %6722, %6713
  %6728 = call float @dx.op.tertiary.f32(i32 46, float %6726, float %6714, float %6727)  ; FMad(a,b,c)
  %6729 = fmul fast float %6722, %6712
  %6730 = call float @dx.op.tertiary.f32(i32 46, float %6726, float %6713, float %6729)  ; FMad(a,b,c)
  %6731 = fmul fast float %6728, %6639
  %6732 = fmul fast float %6730, %6639
  %6733 = fadd fast float %6731, %6130
  %6734 = fadd fast float %6732, %6131
  %6735 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %45, float %6733, float %6734, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6736 = extractvalue %dx.types.ResRet.f32 %6735, 0
  %6737 = extractvalue %dx.types.ResRet.f32 %6735, 1
  %6738 = extractvalue %dx.types.ResRet.f32 %6735, 2
  %6739 = extractvalue %dx.types.ResRet.f32 %6735, 3
  %6740 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %6736, float* %6740, align 4
  %6741 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %6737, float* %6741, align 4
  %6742 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %6738, float* %6742, align 4
  %6743 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %6739, float* %6743, align 4
  %6744 = fsub fast float %6736, %6641
  %6745 = fcmp fast olt float %6744, 0.000000e+00
  %6746 = select i1 %6745, float 0.000000e+00, float 1.000000e+00
  %6747 = fadd fast float %6746, %6716
  %6748 = fmul fast float %6746, %6744
  %6749 = fadd fast float %6748, %6717
  br label %6750

; <label>:6750                                    ; preds = %6750, %6715
  %6751 = phi i32 [ 1, %6715 ], [ %6762, %6750 ]
  %6752 = phi float [ %6749, %6715 ], [ %6761, %6750 ]
  %6753 = phi float [ %6747, %6715 ], [ %6759, %6750 ]
  %6754 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %6751
  %6755 = load float, float* %6754, align 4, !tbaa !110, !noalias !100
  %6756 = fsub fast float %6755, %6641
  %6757 = fcmp fast olt float %6756, 0.000000e+00
  %6758 = select i1 %6757, float 0.000000e+00, float 1.000000e+00
  %6759 = fadd fast float %6758, %6753
  %6760 = fmul fast float %6758, %6756
  %6761 = fadd fast float %6760, %6752
  %6762 = add nuw nsw i32 %6751, 1
  %6763 = icmp eq i32 %6762, 4
  br i1 %6763, label %6764, label %6750, !llvm.loop !112

; <label>:6764                                    ; preds = %6750
  %6765 = add nuw nsw i32 %6718, 1
  %6766 = icmp eq i32 %6765, 8
  br i1 %6766, label %6767, label %6715, !llvm.loop !113

; <label>:6767                                    ; preds = %6764
  %6768 = fdiv fast float 1.000000e+00, %6759
  %6769 = fmul fast float %6768, %6761
  %6770 = fdiv fast float 1.000000e+00, %6641
  %6771 = fmul fast float %6769, %6770
  %6772 = call float @dx.op.unary.f32(i32 7, float %6771)  ; Saturate(value)
  %6773 = call float @dx.op.binary.f32(i32 35, float %6772, float 0.000000e+00)  ; FMax(a,b)
  %6774 = fmul fast float %6759, 3.125000e-02
  %6775 = call float @dx.op.unary.f32(i32 7, float %6774)  ; Saturate(value)
  %6776 = fmul fast float %6775, 2.000000e+00
  %6777 = fadd fast float %6776, -1.000000e+00
  %6778 = fcmp fast ogt float %6777, 0.000000e+00
  %6779 = fcmp fast olt float %6777, 0.000000e+00
  %6780 = zext i1 %6778 to i32
  %6781 = zext i1 %6779 to i32
  %6782 = sub nsw i32 %6780, %6781
  %6783 = sitofp i32 %6782 to float
  %6784 = fmul fast float %6783, %6777
  %6785 = fsub fast float 1.000000e+00, %6784
  %6786 = fmul fast float %6785, %6785
  %6787 = fmul fast float %6786, %6785
  %6788 = fsub fast float %6785, %6787
  %6789 = fmul fast float %6788, %6773
  %6790 = fsub fast float 1.000000e+00, %6787
  %6791 = fsub fast float %6790, %6789
  %6792 = fmul fast float %6783, 5.000000e-01
  %6793 = fmul fast float %6792, %6791
  %6794 = fsub fast float 5.000000e-01, %6793
  br label %6795

; <label>:6795                                    ; preds = %6767, %6643, %6630
  %6796 = phi float [ 1.000000e+00, %6630 ], [ %6709, %6643 ], [ %6794, %6767 ]
  %6797 = fcmp fast ogt float %6226, 0.000000e+00
  br i1 %6797, label %6798, label %6962, !dx.controlflow.hints !114

; <label>:6798                                    ; preds = %6795
  %6799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6800 = extractvalue %dx.types.CBufRet.f32 %6799, 1
  %6801 = fadd fast float %6800, %6115
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 2
  %6804 = extractvalue %dx.types.CBufRet.f32 %6802, 3
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 1
  %6807 = call float @dx.op.binary.f32(i32 35, float %6801, float 0.000000e+00)  ; FMax(a,b)
  %6808 = fadd fast float %6807, 0x3F10000000000000
  %6809 = fcmp fast oeq float %6806, 0.000000e+00
  br i1 %6809, label %6810, label %6877

; <label>:6810                                    ; preds = %6798
  %6811 = extractvalue %dx.types.CBufRet.f32 %6802, 1
  %6812 = extractvalue %dx.types.CBufRet.f32 %6802, 0
  %6813 = fmul fast float %6812, %6122
  %6814 = fmul fast float %6811, %6123
  %6815 = fadd fast float %6813, 5.000000e-01
  %6816 = call float @dx.op.unary.f32(i32 27, float %6815)  ; Round_ni(value)
  %6817 = fadd fast float %6814, 5.000000e-01
  %6818 = call float @dx.op.unary.f32(i32 27, float %6817)  ; Round_ni(value)
  %6819 = fsub fast float %6815, %6816
  %6820 = fsub fast float %6817, %6818
  %6821 = fadd fast float %6816, -5.000000e-01
  %6822 = fadd fast float %6818, -5.000000e-01
  %6823 = fmul fast float %6819, 2.000000e+00
  %6824 = fsub fast float 3.000000e+00, %6823
  %6825 = fadd fast float %6823, 1.000000e+00
  %6826 = fsub fast float 2.000000e+00, %6819
  %6827 = bitcast float %6824 to i32
  %6828 = sub nsw i32 2129859010, %6827
  %6829 = bitcast i32 %6828 to float
  %6830 = fmul fast float %6829, %6826
  %6831 = fadd fast float %6830, -1.000000e+00
  %6832 = bitcast float %6825 to i32
  %6833 = sub nsw i32 2129859010, %6832
  %6834 = bitcast i32 %6833 to float
  %6835 = fmul fast float %6834, %6819
  %6836 = fadd fast float %6835, 1.000000e+00
  %6837 = fmul fast float %6820, 2.000000e+00
  %6838 = fsub fast float 3.000000e+00, %6837
  %6839 = fadd fast float %6837, 1.000000e+00
  %6840 = fsub fast float 2.000000e+00, %6820
  %6841 = bitcast float %6838 to i32
  %6842 = sub nsw i32 2129859010, %6841
  %6843 = bitcast i32 %6842 to float
  %6844 = fmul fast float %6843, %6840
  %6845 = fadd fast float %6844, -1.000000e+00
  %6846 = bitcast float %6839 to i32
  %6847 = sub nsw i32 2129859010, %6846
  %6848 = bitcast i32 %6847 to float
  %6849 = fmul fast float %6848, %6820
  %6850 = fadd fast float %6849, 1.000000e+00
  %6851 = fadd fast float %6831, %6821
  %6852 = fmul fast float %6851, %6803
  %6853 = fadd fast float %6845, %6822
  %6854 = fmul fast float %6853, %6804
  %6855 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %6852, float %6854, float undef, float undef, i32 0, i32 0, i32 undef, float %6808)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6856 = extractvalue %dx.types.ResRet.f32 %6855, 0
  %6857 = fmul fast float %6856, %6824
  %6858 = fadd fast float %6836, %6821
  %6859 = fmul fast float %6858, %6803
  %6860 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %6859, float %6854, float undef, float undef, i32 0, i32 0, i32 undef, float %6808)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6861 = extractvalue %dx.types.ResRet.f32 %6860, 0
  %6862 = fmul fast float %6861, %6825
  %6863 = fadd fast float %6850, %6822
  %6864 = fmul fast float %6863, %6804
  %6865 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %6852, float %6864, float undef, float undef, i32 0, i32 0, i32 undef, float %6808)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6866 = extractvalue %dx.types.ResRet.f32 %6865, 0
  %6867 = fmul fast float %6866, %6824
  %6868 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %6859, float %6864, float undef, float undef, i32 0, i32 0, i32 undef, float %6808)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6869 = extractvalue %dx.types.ResRet.f32 %6868, 0
  %6870 = fmul fast float %6869, %6825
  %6871 = fadd fast float %6870, %6867
  %6872 = fmul fast float %6871, %6839
  %6873 = fadd fast float %6862, %6857
  %6874 = fmul fast float %6873, %6838
  %6875 = fadd fast float %6874, %6872
  %6876 = fmul fast float %6875, 6.250000e-02
  br label %6962

; <label>:6877                                    ; preds = %6798
  %6878 = fmul fast float %228, 0x401921FB60000000
  %6879 = call float @dx.op.unary.f32(i32 13, float %6878)  ; Sin(value)
  %6880 = call float @dx.op.unary.f32(i32 12, float %6878)  ; Cos(value)
  %6881 = fsub fast float -0.000000e+00, %6879
  br label %6882

; <label>:6882                                    ; preds = %6931, %6877
  %6883 = phi float [ 0.000000e+00, %6877 ], [ %6926, %6931 ]
  %6884 = phi float [ 0.000000e+00, %6877 ], [ %6928, %6931 ]
  %6885 = phi i32 [ 0, %6877 ], [ %6932, %6931 ]
  %6886 = mul i32 %6885, 2
  %6887 = add i32 0, %6886
  %6888 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6887
  %6889 = load float, float* %6888, align 4
  %6890 = mul i32 %6885, 2
  %6891 = add i32 1, %6890
  %6892 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6891
  %6893 = load float, float* %6892, align 4
  %6894 = fmul fast float %6889, %6880
  %6895 = call float @dx.op.tertiary.f32(i32 46, float %6893, float %6881, float %6894)  ; FMad(a,b,c)
  %6896 = fmul fast float %6889, %6879
  %6897 = call float @dx.op.tertiary.f32(i32 46, float %6893, float %6880, float %6896)  ; FMad(a,b,c)
  %6898 = fmul fast float %6895, %6806
  %6899 = fmul fast float %6897, %6806
  %6900 = fadd fast float %6898, %6122
  %6901 = fadd fast float %6899, %6123
  %6902 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %45, float %6900, float %6901, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6903 = extractvalue %dx.types.ResRet.f32 %6902, 0
  %6904 = extractvalue %dx.types.ResRet.f32 %6902, 1
  %6905 = extractvalue %dx.types.ResRet.f32 %6902, 2
  %6906 = extractvalue %dx.types.ResRet.f32 %6902, 3
  %6907 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %6903, float* %6907, align 4
  %6908 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %6904, float* %6908, align 4
  %6909 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %6905, float* %6909, align 4
  %6910 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %6906, float* %6910, align 4
  %6911 = fsub fast float %6903, %6808
  %6912 = fcmp fast olt float %6911, 0.000000e+00
  %6913 = select i1 %6912, float 0.000000e+00, float 1.000000e+00
  %6914 = fadd fast float %6913, %6883
  %6915 = fmul fast float %6913, %6911
  %6916 = fadd fast float %6915, %6884
  br label %6917

; <label>:6917                                    ; preds = %6917, %6882
  %6918 = phi i32 [ 1, %6882 ], [ %6929, %6917 ]
  %6919 = phi float [ %6916, %6882 ], [ %6928, %6917 ]
  %6920 = phi float [ %6914, %6882 ], [ %6926, %6917 ]
  %6921 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %6918
  %6922 = load float, float* %6921, align 4, !tbaa !110, !noalias !100
  %6923 = fsub fast float %6922, %6808
  %6924 = fcmp fast olt float %6923, 0.000000e+00
  %6925 = select i1 %6924, float 0.000000e+00, float 1.000000e+00
  %6926 = fadd fast float %6925, %6920
  %6927 = fmul fast float %6925, %6923
  %6928 = fadd fast float %6927, %6919
  %6929 = add nuw nsw i32 %6918, 1
  %6930 = icmp eq i32 %6929, 4
  br i1 %6930, label %6931, label %6917, !llvm.loop !112

; <label>:6931                                    ; preds = %6917
  %6932 = add nuw nsw i32 %6885, 1
  %6933 = icmp eq i32 %6932, 8
  br i1 %6933, label %6934, label %6882, !llvm.loop !113

; <label>:6934                                    ; preds = %6931
  %6935 = fdiv fast float 1.000000e+00, %6926
  %6936 = fmul fast float %6935, %6928
  %6937 = fdiv fast float 1.000000e+00, %6808
  %6938 = fmul fast float %6936, %6937
  %6939 = call float @dx.op.unary.f32(i32 7, float %6938)  ; Saturate(value)
  %6940 = call float @dx.op.binary.f32(i32 35, float %6939, float 0.000000e+00)  ; FMax(a,b)
  %6941 = fmul fast float %6926, 3.125000e-02
  %6942 = call float @dx.op.unary.f32(i32 7, float %6941)  ; Saturate(value)
  %6943 = fmul fast float %6942, 2.000000e+00
  %6944 = fadd fast float %6943, -1.000000e+00
  %6945 = fcmp fast ogt float %6944, 0.000000e+00
  %6946 = fcmp fast olt float %6944, 0.000000e+00
  %6947 = zext i1 %6945 to i32
  %6948 = zext i1 %6946 to i32
  %6949 = sub nsw i32 %6947, %6948
  %6950 = sitofp i32 %6949 to float
  %6951 = fmul fast float %6950, %6944
  %6952 = fsub fast float 1.000000e+00, %6951
  %6953 = fmul fast float %6952, %6952
  %6954 = fmul fast float %6953, %6952
  %6955 = fsub fast float %6952, %6954
  %6956 = fmul fast float %6955, %6940
  %6957 = fsub fast float 1.000000e+00, %6954
  %6958 = fsub fast float %6957, %6956
  %6959 = fmul fast float %6950, 5.000000e-01
  %6960 = fmul fast float %6959, %6958
  %6961 = fsub fast float 5.000000e-01, %6960
  br label %6962

; <label>:6962                                    ; preds = %6934, %6810, %6795
  %6963 = phi float [ 1.000000e+00, %6795 ], [ %6876, %6810 ], [ %6961, %6934 ]
  %6964 = fcmp fast ogt float %6225, 0.000000e+00
  br i1 %6964, label %6965, label %7129, !dx.controlflow.hints !115

; <label>:6965                                    ; preds = %6962
  %6966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6967 = extractvalue %dx.types.CBufRet.f32 %6966, 0
  %6968 = fadd fast float %6967, %6115
  %6969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.f32 %6969, 2
  %6971 = extractvalue %dx.types.CBufRet.f32 %6969, 3
  %6972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6973 = extractvalue %dx.types.CBufRet.f32 %6972, 0
  %6974 = call float @dx.op.binary.f32(i32 35, float %6968, float 0.000000e+00)  ; FMax(a,b)
  %6975 = fadd fast float %6974, 0x3F10000000000000
  %6976 = fcmp fast oeq float %6973, 0.000000e+00
  br i1 %6976, label %6977, label %7044

; <label>:6977                                    ; preds = %6965
  %6978 = extractvalue %dx.types.CBufRet.f32 %6969, 1
  %6979 = extractvalue %dx.types.CBufRet.f32 %6969, 0
  %6980 = fmul fast float %6979, %6107
  %6981 = fmul fast float %6978, %6111
  %6982 = fadd fast float %6980, 5.000000e-01
  %6983 = call float @dx.op.unary.f32(i32 27, float %6982)  ; Round_ni(value)
  %6984 = fadd fast float %6981, 5.000000e-01
  %6985 = call float @dx.op.unary.f32(i32 27, float %6984)  ; Round_ni(value)
  %6986 = fsub fast float %6982, %6983
  %6987 = fsub fast float %6984, %6985
  %6988 = fadd fast float %6983, -5.000000e-01
  %6989 = fadd fast float %6985, -5.000000e-01
  %6990 = fmul fast float %6986, 2.000000e+00
  %6991 = fsub fast float 3.000000e+00, %6990
  %6992 = fadd fast float %6990, 1.000000e+00
  %6993 = fsub fast float 2.000000e+00, %6986
  %6994 = bitcast float %6991 to i32
  %6995 = sub nsw i32 2129859010, %6994
  %6996 = bitcast i32 %6995 to float
  %6997 = fmul fast float %6996, %6993
  %6998 = fadd fast float %6997, -1.000000e+00
  %6999 = bitcast float %6992 to i32
  %7000 = sub nsw i32 2129859010, %6999
  %7001 = bitcast i32 %7000 to float
  %7002 = fmul fast float %7001, %6986
  %7003 = fadd fast float %7002, 1.000000e+00
  %7004 = fmul fast float %6987, 2.000000e+00
  %7005 = fsub fast float 3.000000e+00, %7004
  %7006 = fadd fast float %7004, 1.000000e+00
  %7007 = fsub fast float 2.000000e+00, %6987
  %7008 = bitcast float %7005 to i32
  %7009 = sub nsw i32 2129859010, %7008
  %7010 = bitcast i32 %7009 to float
  %7011 = fmul fast float %7010, %7007
  %7012 = fadd fast float %7011, -1.000000e+00
  %7013 = bitcast float %7006 to i32
  %7014 = sub nsw i32 2129859010, %7013
  %7015 = bitcast i32 %7014 to float
  %7016 = fmul fast float %7015, %6987
  %7017 = fadd fast float %7016, 1.000000e+00
  %7018 = fadd fast float %6998, %6988
  %7019 = fmul fast float %7018, %6970
  %7020 = fadd fast float %7012, %6989
  %7021 = fmul fast float %7020, %6971
  %7022 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7019, float %7021, float undef, float undef, i32 0, i32 0, i32 undef, float %6975)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7023 = extractvalue %dx.types.ResRet.f32 %7022, 0
  %7024 = fmul fast float %7023, %6991
  %7025 = fadd fast float %7003, %6988
  %7026 = fmul fast float %7025, %6970
  %7027 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7026, float %7021, float undef, float undef, i32 0, i32 0, i32 undef, float %6975)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7028 = extractvalue %dx.types.ResRet.f32 %7027, 0
  %7029 = fmul fast float %7028, %6992
  %7030 = fadd fast float %7017, %6989
  %7031 = fmul fast float %7030, %6971
  %7032 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7019, float %7031, float undef, float undef, i32 0, i32 0, i32 undef, float %6975)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7033 = extractvalue %dx.types.ResRet.f32 %7032, 0
  %7034 = fmul fast float %7033, %6991
  %7035 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7026, float %7031, float undef, float undef, i32 0, i32 0, i32 undef, float %6975)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7036 = extractvalue %dx.types.ResRet.f32 %7035, 0
  %7037 = fmul fast float %7036, %6992
  %7038 = fadd fast float %7037, %7034
  %7039 = fmul fast float %7038, %7006
  %7040 = fadd fast float %7029, %7024
  %7041 = fmul fast float %7040, %7005
  %7042 = fadd fast float %7041, %7039
  %7043 = fmul fast float %7042, 6.250000e-02
  br label %7129

; <label>:7044                                    ; preds = %6965
  %7045 = fmul fast float %228, 0x401921FB60000000
  %7046 = call float @dx.op.unary.f32(i32 13, float %7045)  ; Sin(value)
  %7047 = call float @dx.op.unary.f32(i32 12, float %7045)  ; Cos(value)
  %7048 = fsub fast float -0.000000e+00, %7046
  br label %7049

; <label>:7049                                    ; preds = %7098, %7044
  %7050 = phi float [ 0.000000e+00, %7044 ], [ %7093, %7098 ]
  %7051 = phi float [ 0.000000e+00, %7044 ], [ %7095, %7098 ]
  %7052 = phi i32 [ 0, %7044 ], [ %7099, %7098 ]
  %7053 = mul i32 %7052, 2
  %7054 = add i32 0, %7053
  %7055 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7054
  %7056 = load float, float* %7055, align 4
  %7057 = mul i32 %7052, 2
  %7058 = add i32 1, %7057
  %7059 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7058
  %7060 = load float, float* %7059, align 4
  %7061 = fmul fast float %7056, %7047
  %7062 = call float @dx.op.tertiary.f32(i32 46, float %7060, float %7048, float %7061)  ; FMad(a,b,c)
  %7063 = fmul fast float %7056, %7046
  %7064 = call float @dx.op.tertiary.f32(i32 46, float %7060, float %7047, float %7063)  ; FMad(a,b,c)
  %7065 = fmul fast float %7062, %6973
  %7066 = fmul fast float %7064, %6973
  %7067 = fadd fast float %7065, %6107
  %7068 = fadd fast float %7066, %6111
  %7069 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %45, float %7067, float %7068, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7070 = extractvalue %dx.types.ResRet.f32 %7069, 0
  %7071 = extractvalue %dx.types.ResRet.f32 %7069, 1
  %7072 = extractvalue %dx.types.ResRet.f32 %7069, 2
  %7073 = extractvalue %dx.types.ResRet.f32 %7069, 3
  %7074 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %7070, float* %7074, align 4
  %7075 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %7071, float* %7075, align 4
  %7076 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %7072, float* %7076, align 4
  %7077 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %7073, float* %7077, align 4
  %7078 = fsub fast float %7070, %6975
  %7079 = fcmp fast olt float %7078, 0.000000e+00
  %7080 = select i1 %7079, float 0.000000e+00, float 1.000000e+00
  %7081 = fadd fast float %7080, %7050
  %7082 = fmul fast float %7080, %7078
  %7083 = fadd fast float %7082, %7051
  br label %7084

; <label>:7084                                    ; preds = %7084, %7049
  %7085 = phi i32 [ 1, %7049 ], [ %7096, %7084 ]
  %7086 = phi float [ %7083, %7049 ], [ %7095, %7084 ]
  %7087 = phi float [ %7081, %7049 ], [ %7093, %7084 ]
  %7088 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7085
  %7089 = load float, float* %7088, align 4, !tbaa !110, !noalias !100
  %7090 = fsub fast float %7089, %6975
  %7091 = fcmp fast olt float %7090, 0.000000e+00
  %7092 = select i1 %7091, float 0.000000e+00, float 1.000000e+00
  %7093 = fadd fast float %7092, %7087
  %7094 = fmul fast float %7092, %7090
  %7095 = fadd fast float %7094, %7086
  %7096 = add nuw nsw i32 %7085, 1
  %7097 = icmp eq i32 %7096, 4
  br i1 %7097, label %7098, label %7084, !llvm.loop !112

; <label>:7098                                    ; preds = %7084
  %7099 = add nuw nsw i32 %7052, 1
  %7100 = icmp eq i32 %7099, 8
  br i1 %7100, label %7101, label %7049, !llvm.loop !113

; <label>:7101                                    ; preds = %7098
  %7102 = fdiv fast float 1.000000e+00, %7093
  %7103 = fmul fast float %7102, %7095
  %7104 = fdiv fast float 1.000000e+00, %6975
  %7105 = fmul fast float %7103, %7104
  %7106 = call float @dx.op.unary.f32(i32 7, float %7105)  ; Saturate(value)
  %7107 = call float @dx.op.binary.f32(i32 35, float %7106, float 0.000000e+00)  ; FMax(a,b)
  %7108 = fmul fast float %7093, 3.125000e-02
  %7109 = call float @dx.op.unary.f32(i32 7, float %7108)  ; Saturate(value)
  %7110 = fmul fast float %7109, 2.000000e+00
  %7111 = fadd fast float %7110, -1.000000e+00
  %7112 = fcmp fast ogt float %7111, 0.000000e+00
  %7113 = fcmp fast olt float %7111, 0.000000e+00
  %7114 = zext i1 %7112 to i32
  %7115 = zext i1 %7113 to i32
  %7116 = sub nsw i32 %7114, %7115
  %7117 = sitofp i32 %7116 to float
  %7118 = fmul fast float %7117, %7111
  %7119 = fsub fast float 1.000000e+00, %7118
  %7120 = fmul fast float %7119, %7119
  %7121 = fmul fast float %7120, %7119
  %7122 = fsub fast float %7119, %7121
  %7123 = fmul fast float %7122, %7107
  %7124 = fsub fast float 1.000000e+00, %7121
  %7125 = fsub fast float %7124, %7123
  %7126 = fmul fast float %7117, 5.000000e-01
  %7127 = fmul fast float %7126, %7125
  %7128 = fsub fast float 5.000000e-01, %7127
  br label %7129

; <label>:7129                                    ; preds = %7101, %6977, %6962
  %7130 = phi float [ 1.000000e+00, %6962 ], [ %7043, %6977 ], [ %7128, %7101 ]
  %7131 = fsub fast float %6796, %6631
  %7132 = fmul fast float %7131, %6169
  %7133 = fadd fast float %7132, %6631
  %7134 = fsub fast float %6963, %7133
  %7135 = fmul fast float %7134, %6199
  %7136 = fadd fast float %7135, %7133
  %7137 = fsub fast float %7130, %7136
  %7138 = fmul fast float %7137, %6225
  %7139 = fadd fast float %7138, %7136
  %7140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7141 = extractvalue %dx.types.CBufRet.f32 %7140, 2
  %7142 = fcmp fast ogt float %7141, 0.000000e+00
  br i1 %7142, label %7143, label %7183, !dx.controlflow.hints !116

; <label>:7143                                    ; preds = %7129
  %7144 = fcmp fast ugt float %7141, 0.000000e+00
  br i1 %7144, label %7145, label %7180

; <label>:7145                                    ; preds = %7143
  %7146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7147 = extractvalue %dx.types.CBufRet.f32 %7146, 0
  %7148 = extractvalue %dx.types.CBufRet.f32 %7146, 1
  %7149 = extractvalue %dx.types.CBufRet.f32 %7146, 2
  %7150 = extractvalue %dx.types.CBufRet.f32 %7146, 3
  %7151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7152 = extractvalue %dx.types.CBufRet.f32 %7151, 0
  %7153 = extractvalue %dx.types.CBufRet.f32 %7151, 1
  %7154 = extractvalue %dx.types.CBufRet.f32 %7151, 2
  %7155 = extractvalue %dx.types.CBufRet.f32 %7151, 3
  %7156 = extractvalue %dx.types.CBufRet.f32 %7140, 0
  %7157 = extractvalue %dx.types.CBufRet.f32 %7140, 1
  %7158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7159 = extractvalue %dx.types.CBufRet.f32 %7158, 0
  %7160 = extractvalue %dx.types.CBufRet.f32 %7158, 1
  %7161 = extractvalue %dx.types.CBufRet.f32 %7158, 2
  %7162 = fadd fast float %7159, %6084
  %7163 = fadd fast float %7160, %6085
  %7164 = fadd fast float %7161, %6086
  %7165 = fmul fast float %7162, %7147
  %7166 = call float @dx.op.tertiary.f32(i32 46, float %7148, float %7163, float %7165)  ; FMad(a,b,c)
  %7167 = call float @dx.op.tertiary.f32(i32 46, float %7149, float %7164, float %7166)  ; FMad(a,b,c)
  %7168 = fadd fast float %7167, %7150
  %7169 = fmul fast float %7162, %7152
  %7170 = call float @dx.op.tertiary.f32(i32 46, float %7153, float %7163, float %7169)  ; FMad(a,b,c)
  %7171 = call float @dx.op.tertiary.f32(i32 46, float %7154, float %7164, float %7170)  ; FMad(a,b,c)
  %7172 = fadd fast float %7171, %7155
  %7173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %41, float %7168, float %7172, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7174 = extractvalue %dx.types.ResRet.f32 %7173, 0
  %7175 = fmul fast float %7174, %7157
  %7176 = fadd fast float %7175, %7156
  %7177 = call float @dx.op.unary.f32(i32 7, float %7176)  ; Saturate(value)
  %7178 = fmul fast float %7177, %7141
  %7179 = fsub fast float 1.000000e+00, %7178
  br label %7180

; <label>:7180                                    ; preds = %7145, %7143
  %7181 = phi float [ %7179, %7145 ], [ 1.000000e+00, %7143 ]
  %7182 = fmul fast float %7181, %7139
  br label %7183

; <label>:7183                                    ; preds = %7180, %7129, %6064
  %7184 = phi float [ 1.000000e+00, %6064 ], [ %7182, %7180 ], [ %7139, %7129 ]
  %7185 = call float @dx.op.binary.f32(i32 36, float %7184, float %7184)  ; FMin(a,b)
  %7186 = call float @dx.op.binary.f32(i32 36, float %7184, float %7185)  ; FMin(a,b)
  %7187 = fcmp fast ogt float %7186, 0.000000e+00
  br i1 %7187, label %7188, label %7354, !dx.controlflow.hints !117

; <label>:7188                                    ; preds = %7183
  %7189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7190 = extractvalue %dx.types.CBufRet.f32 %7189, 0
  %7191 = extractvalue %dx.types.CBufRet.f32 %7189, 1
  %7192 = extractvalue %dx.types.CBufRet.f32 %7189, 2
  %7193 = extractvalue %dx.types.CBufRet.f32 %7189, 3
  %7194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7195 = extractvalue %dx.types.CBufRet.f32 %7194, 0
  %7196 = extractvalue %dx.types.CBufRet.f32 %7194, 1
  %7197 = extractvalue %dx.types.CBufRet.f32 %7194, 2
  %7198 = extractvalue %dx.types.CBufRet.f32 %7194, 3
  %7199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7200 = extractvalue %dx.types.CBufRet.f32 %7199, 0
  %7201 = extractvalue %dx.types.CBufRet.f32 %7199, 1
  %7202 = extractvalue %dx.types.CBufRet.f32 %7199, 2
  %7203 = extractvalue %dx.types.CBufRet.f32 %7199, 3
  %7204 = fmul fast float %7190, %6084
  %7205 = call float @dx.op.tertiary.f32(i32 46, float %6085, float %7191, float %7204)  ; FMad(a,b,c)
  %7206 = call float @dx.op.tertiary.f32(i32 46, float %6086, float %7192, float %7205)  ; FMad(a,b,c)
  %7207 = fadd fast float %7206, %7193
  %7208 = fmul fast float %7195, %6084
  %7209 = call float @dx.op.tertiary.f32(i32 46, float %6085, float %7196, float %7208)  ; FMad(a,b,c)
  %7210 = call float @dx.op.tertiary.f32(i32 46, float %6086, float %7197, float %7209)  ; FMad(a,b,c)
  %7211 = fadd fast float %7210, %7198
  %7212 = fmul fast float %7200, %6084
  %7213 = call float @dx.op.tertiary.f32(i32 46, float %6085, float %7201, float %7212)  ; FMad(a,b,c)
  %7214 = call float @dx.op.tertiary.f32(i32 46, float %6086, float %7202, float %7213)  ; FMad(a,b,c)
  %7215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7216 = extractvalue %dx.types.CBufRet.f32 %7215, 0
  %7217 = extractvalue %dx.types.CBufRet.f32 %7215, 1
  %7218 = extractvalue %dx.types.CBufRet.f32 %7215, 3
  %7219 = fmul fast float %7218, %7207
  %7220 = fmul fast float %7218, %7211
  %7221 = fadd fast float %7219, %7216
  %7222 = fadd fast float %7220, %7217
  %7223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7224 = extractvalue %dx.types.CBufRet.f32 %7223, 0
  %7225 = extractvalue %dx.types.CBufRet.f32 %7223, 1
  %7226 = fsub fast float %7221, %7224
  %7227 = fsub fast float %7222, %7225
  %7228 = fcmp fast olt float %7226, 0.000000e+00
  %7229 = fcmp fast olt float %7227, 0.000000e+00
  %7230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7231 = extractvalue %dx.types.CBufRet.f32 %7230, 0
  %7232 = extractvalue %dx.types.CBufRet.f32 %7230, 1
  %7233 = extractvalue %dx.types.CBufRet.f32 %7230, 2
  %7234 = extractvalue %dx.types.CBufRet.f32 %7230, 3
  %7235 = select i1 %7228, float %7231, float %7233
  %7236 = select i1 %7229, float %7232, float %7234
  %7237 = fmul fast float %7235, %7226
  %7238 = fmul fast float %7236, %7227
  %7239 = call float @dx.op.unary.f32(i32 6, float %7237)  ; FAbs(value)
  %7240 = call float @dx.op.unary.f32(i32 6, float %7238)  ; FAbs(value)
  %7241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7242 = extractvalue %dx.types.CBufRet.f32 %7241, 0
  %7243 = call float @dx.op.binary.f32(i32 35, float %7239, float %7240)  ; FMax(a,b)
  %7244 = fsub fast float %7242, %7243
  %7245 = call float @dx.op.unary.f32(i32 7, float %7244)  ; Saturate(value)
  %7246 = fcmp fast ogt float %7245, 0.000000e+00
  br i1 %7246, label %7247, label %7288, !dx.controlflow.hints !118

; <label>:7247                                    ; preds = %7188
  %7248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %7221, float %7222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7249 = extractvalue %dx.types.ResRet.f32 %7248, 1
  %7250 = fcmp fast ogt float %7249, 0.000000e+00
  br i1 %7250, label %7251, label %7283

; <label>:7251                                    ; preds = %7247
  %7252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %7221, float %7222, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7253 = extractvalue %dx.types.ResRet.f32 %7252, 0
  %7254 = extractvalue %dx.types.ResRet.f32 %7252, 1
  %7255 = extractvalue %dx.types.ResRet.f32 %7252, 2
  %7256 = extractvalue %dx.types.ResRet.f32 %7252, 3
  %7257 = fsub fast float 1.000000e+00, %7203
  %7258 = fsub fast float %7257, %7214
  %7259 = fmul fast float %7258, 0x400921FB60000000
  %7260 = fadd fast float %7259, 0x3FF921FB60000000
  %7261 = call float @dx.op.unary.f32(i32 13, float %7260)  ; Sin(value)
  %7262 = fadd fast float %7261, -1.000000e+00
  %7263 = fmul fast float %7262, 0x3FD45F3060000000
  %7264 = fmul fast float %7258, 0x401921FB60000000
  %7265 = fadd fast float %7264, 0x400921FB60000000
  %7266 = call float @dx.op.unary.f32(i32 13, float %7265)  ; Sin(value)
  %7267 = fadd fast float %7266, 0x3E7777A5C0000000
  %7268 = fmul fast float %7267, 0x3FC45F3060000000
  %7269 = fmul fast float %7258, 0x4022D97C80000000
  %7270 = fadd fast float %7269, 0x4012D97C80000000
  %7271 = call float @dx.op.unary.f32(i32 13, float %7270)  ; Sin(value)
  %7272 = fadd fast float %7271, 1.000000e+00
  %7273 = fmul fast float %7272, 0x3FBB2995E0000000
  %7274 = fmul fast float %7258, 0x402921FB60000000
  %7275 = fadd fast float %7274, 0x401921FB60000000
  %7276 = call float @dx.op.unary.f32(i32 13, float %7275)  ; Sin(value)
  %7277 = fadd fast float %7276, 0xBE8777A5C0000000
  %7278 = fmul fast float %7277, 0x3FB45F3060000000
  %7279 = call float @dx.op.dot4.f32(i32 56, float %7253, float %7254, float %7255, float %7256, float %7263, float %7268, float %7273, float %7278)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7280 = fmul fast float %7279, 0xBFF7154760000000
  %7281 = call float @dx.op.unary.f32(i32 21, float %7280)  ; Exp(value)
  %7282 = call float @dx.op.unary.f32(i32 7, float %7281)  ; Saturate(value)
  br label %7283

; <label>:7283                                    ; preds = %7251, %7247
  %7284 = phi float [ %7282, %7251 ], [ 1.000000e+00, %7247 ]
  %7285 = fadd fast float %7284, -1.000000e+00
  %7286 = fmul fast float %7285, %7245
  %7287 = fadd fast float %7286, 1.000000e+00
  br label %7288

; <label>:7288                                    ; preds = %7283, %7188
  %7289 = phi float [ %7287, %7283 ], [ 1.000000e+00, %7188 ]
  %7290 = fmul fast float %7289, %7184
  %7291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7292 = extractvalue %dx.types.CBufRet.f32 %7291, 0
  %7293 = extractvalue %dx.types.CBufRet.f32 %7291, 1
  %7294 = extractvalue %dx.types.CBufRet.f32 %7291, 2
  %7295 = fadd fast float %7292, %154
  %7296 = fadd fast float %7293, %155
  %7297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7298 = extractvalue %dx.types.CBufRet.f32 %7297, 1
  %7299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7300 = extractvalue %dx.types.CBufRet.f32 %7299, 0
  %7301 = extractvalue %dx.types.CBufRet.f32 %7299, 1
  %7302 = extractvalue %dx.types.CBufRet.f32 %7299, 2
  %7303 = fsub fast float -0.000000e+00, %7295
  %7304 = fsub fast float -0.000000e+00, %7296
  %7305 = fsub fast float -0.000000e+00, %156
  %7306 = fsub fast float %7305, %7294
  %7307 = fadd fast float %7306, %7298
  %7308 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7303, float %7304, float %7307)  ; Dot3(ax,ay,az,bx,by,bz)
  %7309 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7300, float %7301, float %7302)  ; Dot3(ax,ay,az,bx,by,bz)
  %7310 = fdiv fast float 1.000000e+00, %7309
  %7311 = fmul fast float %7310, %7308
  %7312 = fmul fast float %7300, %7311
  %7313 = fmul fast float %7301, %7311
  %7314 = fadd fast float %7312, %7295
  %7315 = fadd fast float %7313, %7296
  %7316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7317 = extractvalue %dx.types.CBufRet.f32 %7316, 0
  %7318 = extractvalue %dx.types.CBufRet.f32 %7316, 1
  %7319 = fsub fast float %7314, %7317
  %7320 = fsub fast float %7315, %7318
  %7321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7322 = extractvalue %dx.types.CBufRet.f32 %7321, 2
  %7323 = extractvalue %dx.types.CBufRet.f32 %7321, 3
  %7324 = fmul fast float %7319, %7322
  %7325 = fmul fast float %7320, %7323
  %7326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7327 = extractvalue %dx.types.CBufRet.i32 %7326, 3
  %7328 = icmp eq i32 %7327, 0
  br i1 %7328, label %7334, label %7329

; <label>:7329                                    ; preds = %7288
  %7330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7324, float %7325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7331 = extractvalue %dx.types.ResRet.f32 %7330, 0
  %7332 = extractvalue %dx.types.ResRet.f32 %7330, 1
  %7333 = extractvalue %dx.types.ResRet.f32 %7330, 2
  br label %7339

; <label>:7334                                    ; preds = %7288
  %7335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %7324, float %7325, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7336 = extractvalue %dx.types.ResRet.f32 %7335, 0
  %7337 = extractvalue %dx.types.ResRet.f32 %7335, 1
  %7338 = extractvalue %dx.types.ResRet.f32 %7335, 2
  br label %7339

; <label>:7339                                    ; preds = %7334, %7329
  %7340 = phi float [ %7331, %7329 ], [ %7336, %7334 ]
  %7341 = phi float [ %7332, %7329 ], [ %7337, %7334 ]
  %7342 = phi float [ %7333, %7329 ], [ %7338, %7334 ]
  %7343 = extractvalue %dx.types.CBufRet.f32 %7297, 2
  %7344 = fmul fast float %7343, %7340
  %7345 = extractvalue %dx.types.CBufRet.f32 %7297, 0
  %7346 = fsub fast float %7311, %7345
  %7347 = fsub fast float %7346, %7344
  %7348 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7347)  ; FMax(a,b)
  %7349 = fmul fast float %7348, %7341
  %7350 = call float @dx.op.binary.f32(i32 36, float %7342, float %7349)  ; FMin(a,b)
  %7351 = fmul fast float %7350, 0xBFF7154760000000
  %7352 = call float @dx.op.unary.f32(i32 21, float %7351)  ; Exp(value)
  %7353 = fmul fast float %7290, %7352
  br label %7354

; <label>:7354                                    ; preds = %7339, %7183
  %7355 = phi float [ %7353, %7339 ], [ %7184, %7183 ]
  %7356 = call float @dx.op.binary.f32(i32 36, float %7355, float %7355)  ; FMin(a,b)
  %7357 = call float @dx.op.binary.f32(i32 36, float %7355, float %7356)  ; FMin(a,b)
  %7358 = fcmp fast ogt float %7357, 0.000000e+00
  br i1 %7358, label %7359, label %7585, !dx.controlflow.hints !119

; <label>:7359                                    ; preds = %7354
  %7360 = bitcast i32 %5086 to float
  %7361 = fmul fast float %7355, %6076
  %7362 = fmul fast float %7355, %6077
  %7363 = fmul fast float %7355, %6078
  %7364 = fsub fast float %6065, %5014
  %7365 = fsub fast float %6066, %5013
  %7366 = fsub fast float %6067, %5012
  %7367 = call float @dx.op.dot3.f32(i32 55, float %7364, float %7365, float %7366, float %7364, float %7365, float %7366)  ; Dot3(ax,ay,az,bx,by,bz)
  %7368 = call float @dx.op.unary.f32(i32 25, float %7367)  ; Rsqrt(value)
  %7369 = fmul fast float %7368, %7364
  %7370 = fmul fast float %7368, %7365
  %7371 = fmul fast float %7368, %7366
  %7372 = call float @dx.op.dot3.f32(i32 55, float %6065, float %6066, float %6067, float %5015, float %5016, float %5017)  ; Dot3(ax,ay,az,bx,by,bz)
  %7373 = call float @dx.op.dot3.f32(i32 55, float %5011, float %5010, float %5009, float %7369, float %7370, float %7371)  ; Dot3(ax,ay,az,bx,by,bz)
  %7374 = call float @dx.op.unary.f32(i32 7, float %7372)  ; Saturate(value)
  %7375 = fmul fast float %7374, %7374
  %7376 = fmul fast float %7375, %7360
  %7377 = call float @dx.op.unary.f32(i32 7, float %7376)  ; Saturate(value)
  %7378 = fmul fast float %7377, %7374
  %7379 = call float @dx.op.dot3.f32(i32 55, float %5015, float %5016, float %5017, float %7369, float %7370, float %7371)  ; Dot3(ax,ay,az,bx,by,bz)
  %7380 = fmul fast float %7379, %7379
  %7381 = call float @dx.op.unary.f32(i32 6, float %7372)  ; FAbs(value)
  %7382 = fsub fast float 1.000000e+00, %5080
  %7383 = fmul fast float %5062, %5062
  %7384 = fmul fast float %7383, %7382
  %7385 = fadd fast float %7384, %5080
  %7386 = bitcast float %7385 to i32
  %7387 = ashr i32 %7386, 1
  %7388 = add nsw i32 %7387, 532487669
  %7389 = bitcast i32 %7388 to float
  %7390 = fadd fast float %7389, %5062
  %7391 = fmul fast float %5080, %7380
  %7392 = fsub fast float 1.000000e+00, %7380
  %7393 = fadd fast float %7392, %7391
  %7394 = fmul fast float %7381, %7381
  %7395 = fmul fast float %7394, %7382
  %7396 = fadd fast float %7395, %5080
  %7397 = bitcast float %7396 to i32
  %7398 = ashr i32 %7397, 1
  %7399 = add nsw i32 %7398, 532487669
  %7400 = bitcast i32 %7399 to float
  %7401 = fadd fast float %7400, %7381
  %7402 = fmul fast float %7393, %7393
  %7403 = fmul fast float %7402, %7390
  %7404 = fmul fast float %7403, %7401
  %7405 = fdiv fast float 0x3FF0A00000000000, %7404
  %7406 = fmul fast float %7405, %5080
  %7407 = call float @dx.op.unary.f32(i32 6, float %7373)  ; FAbs(value)
  %7408 = fsub fast float 1.000000e+00, %7407
  %7409 = bitcast float %7408 to i32
  %7410 = sitofp i32 %7409 to float
  %7411 = fmul fast float %7410, 5.000000e+00
  %7412 = fadd fast float %7411, 0xC1EFBF8940000000
  %7413 = fptosi float %7412 to i32
  %7414 = bitcast i32 %7413 to float
  %7415 = fsub fast float 1.000000e+00, %5021
  %7416 = fsub fast float 1.000000e+00, %5022
  %7417 = fsub fast float 1.000000e+00, %5060
  %7418 = fmul fast float %7414, %7415
  %7419 = fmul fast float %7414, %7416
  %7420 = fmul fast float %7414, %7417
  %7421 = fadd fast float %7418, %5021
  %7422 = fadd fast float %7419, %5022
  %7423 = fadd fast float %7420, %5060
  br i1 %5334, label %7424, label %7447

; <label>:7424                                    ; preds = %7359
  %7425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %4634, float %7407, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7426 = extractvalue %dx.types.ResRet.f32 %7425, 0
  %7427 = extractvalue %dx.types.ResRet.f32 %7425, 1
  %7428 = extractvalue %dx.types.ResRet.f32 %7425, 2
  %7429 = fadd fast float %7426, -5.000000e-01
  %7430 = fadd fast float %7427, -5.000000e-01
  %7431 = fadd fast float %7428, -5.000000e-01
  %7432 = fmul fast float %5021, 4.000000e+00
  %7433 = fmul fast float %7432, %7415
  %7434 = fmul fast float %7433, %7429
  %7435 = fmul fast float %5022, 4.000000e+00
  %7436 = fmul fast float %7435, %7416
  %7437 = fmul fast float %7436, %7430
  %7438 = fmul fast float %5060, 4.000000e+00
  %7439 = fmul fast float %7438, %7417
  %7440 = fmul fast float %7439, %7431
  %7441 = fadd fast float %7434, %7421
  %7442 = fadd fast float %7437, %7422
  %7443 = fadd fast float %7440, %7423
  %7444 = call float @dx.op.unary.f32(i32 7, float %7441)  ; Saturate(value)
  %7445 = call float @dx.op.unary.f32(i32 7, float %7442)  ; Saturate(value)
  %7446 = call float @dx.op.unary.f32(i32 7, float %7443)  ; Saturate(value)
  br label %7447

; <label>:7447                                    ; preds = %7424, %7359
  %7448 = phi float [ %7444, %7424 ], [ %7421, %7359 ]
  %7449 = phi float [ %7445, %7424 ], [ %7422, %7359 ]
  %7450 = phi float [ %7446, %7424 ], [ %7423, %7359 ]
  %7451 = fmul fast float %7372, 9.843750e-01
  %7452 = fadd fast float %7451, 7.812500e-03
  %7453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %7452, float %5324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7454 = extractvalue %dx.types.ResRet.f32 %7453, 2
  %7455 = extractvalue %dx.types.ResRet.f32 %7453, 3
  %7456 = fmul fast float %7454, %5021
  %7457 = fmul fast float %7454, %5022
  %7458 = fmul fast float %7454, %5060
  %7459 = fadd fast float %7456, %7455
  %7460 = fadd fast float %7457, %7455
  %7461 = fadd fast float %7458, %7455
  br i1 %5334, label %7462, label %7485

; <label>:7462                                    ; preds = %7447
  %7463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %4634, float %7372, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7464 = extractvalue %dx.types.ResRet.f32 %7463, 0
  %7465 = extractvalue %dx.types.ResRet.f32 %7463, 1
  %7466 = extractvalue %dx.types.ResRet.f32 %7463, 2
  %7467 = fadd fast float %7464, -5.000000e-01
  %7468 = fadd fast float %7465, -5.000000e-01
  %7469 = fadd fast float %7466, -5.000000e-01
  %7470 = fmul fast float %5021, 4.000000e+00
  %7471 = fmul fast float %7470, %7415
  %7472 = fmul fast float %7471, %7467
  %7473 = fmul fast float %5022, 4.000000e+00
  %7474 = fmul fast float %7473, %7416
  %7475 = fmul fast float %7474, %7468
  %7476 = fmul fast float %5060, 4.000000e+00
  %7477 = fmul fast float %7476, %7417
  %7478 = fmul fast float %7477, %7469
  %7479 = fadd fast float %7472, %7459
  %7480 = fadd fast float %7475, %7460
  %7481 = fadd fast float %7478, %7461
  %7482 = call float @dx.op.unary.f32(i32 7, float %7479)  ; Saturate(value)
  %7483 = call float @dx.op.unary.f32(i32 7, float %7480)  ; Saturate(value)
  %7484 = call float @dx.op.unary.f32(i32 7, float %7481)  ; Saturate(value)
  br label %7485

; <label>:7485                                    ; preds = %7462, %7447
  %7486 = phi float [ %7482, %7462 ], [ %7459, %7447 ]
  %7487 = phi float [ %7483, %7462 ], [ %7460, %7447 ]
  %7488 = phi float [ %7484, %7462 ], [ %7461, %7447 ]
  %7489 = call float @dx.op.binary.f32(i32 35, float %7487, float %7488)  ; FMax(a,b)
  %7490 = call float @dx.op.binary.f32(i32 35, float %7486, float %7489)  ; FMax(a,b)
  %7491 = fsub fast float 1.000000e+00, %7490
  %7492 = fsub fast float -0.000000e+00, %5015
  %7493 = fsub fast float -0.000000e+00, %5016
  %7494 = fsub fast float -0.000000e+00, %5017
  %7495 = call float @dx.op.dot3.f32(i32 55, float %6065, float %6066, float %6067, float %7492, float %7493, float %7494)  ; Dot3(ax,ay,az,bx,by,bz)
  %7496 = call float @dx.op.unary.f32(i32 7, float %7495)  ; Saturate(value)
  %7497 = fmul fast float %7496, 9.843750e-01
  %7498 = fadd fast float %7497, 7.812500e-03
  %7499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %7498, float %5324, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7500 = extractvalue %dx.types.ResRet.f32 %7499, 2
  %7501 = extractvalue %dx.types.ResRet.f32 %7499, 3
  %7502 = fmul fast float %7500, %5021
  %7503 = fmul fast float %7500, %5022
  %7504 = fmul fast float %7500, %5060
  %7505 = fadd fast float %7502, %7501
  %7506 = fadd fast float %7503, %7501
  %7507 = fadd fast float %7504, %7501
  br i1 %5334, label %7508, label %7531

; <label>:7508                                    ; preds = %7485
  %7509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %4634, float %7496, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7510 = extractvalue %dx.types.ResRet.f32 %7509, 0
  %7511 = extractvalue %dx.types.ResRet.f32 %7509, 1
  %7512 = extractvalue %dx.types.ResRet.f32 %7509, 2
  %7513 = fadd fast float %7510, -5.000000e-01
  %7514 = fadd fast float %7511, -5.000000e-01
  %7515 = fadd fast float %7512, -5.000000e-01
  %7516 = fmul fast float %5021, 4.000000e+00
  %7517 = fmul fast float %7516, %7415
  %7518 = fmul fast float %7517, %7513
  %7519 = fmul fast float %5022, 4.000000e+00
  %7520 = fmul fast float %7519, %7416
  %7521 = fmul fast float %7520, %7514
  %7522 = fmul fast float %5060, 4.000000e+00
  %7523 = fmul fast float %7522, %7417
  %7524 = fmul fast float %7523, %7515
  %7525 = fadd fast float %7518, %7505
  %7526 = fadd fast float %7521, %7506
  %7527 = fadd fast float %7524, %7507
  %7528 = call float @dx.op.unary.f32(i32 7, float %7525)  ; Saturate(value)
  %7529 = call float @dx.op.unary.f32(i32 7, float %7526)  ; Saturate(value)
  %7530 = call float @dx.op.unary.f32(i32 7, float %7527)  ; Saturate(value)
  br label %7531

; <label>:7531                                    ; preds = %7508, %7485
  %7532 = phi float [ %7528, %7508 ], [ %7505, %7485 ]
  %7533 = phi float [ %7529, %7508 ], [ %7506, %7485 ]
  %7534 = phi float [ %7530, %7508 ], [ %7507, %7485 ]
  %7535 = call float @dx.op.binary.f32(i32 35, float %7533, float %7534)  ; FMax(a,b)
  %7536 = call float @dx.op.binary.f32(i32 35, float %7532, float %7535)  ; FMax(a,b)
  %7537 = fsub fast float 1.000000e+00, %7536
  %7538 = fmul fast float %7537, %7496
  %7539 = fmul fast float %7538, %4724
  %7540 = fmul fast float %7538, %4725
  %7541 = fmul fast float %7538, %4726
  %7542 = fmul fast float %7448, %7406
  %7543 = fmul fast float %7449, %7406
  %7544 = fmul fast float %7450, %7406
  %7545 = fsub fast float 1.000000e+00, %7373
  %7546 = bitcast float %7545 to i32
  %7547 = sitofp i32 %7546 to float
  %7548 = fmul fast float %7547, 5.000000e+00
  %7549 = fadd fast float %7548, 0xC1EFBF8940000000
  %7550 = fptosi float %7549 to i32
  %7551 = bitcast i32 %7550 to float
  %7552 = fmul fast float %7551, %4635
  %7553 = fmul fast float %7491, %7552
  %7554 = fmul fast float %7553, %5848
  %7555 = fmul fast float %7553, %5849
  %7556 = fmul fast float %7553, %5850
  %7557 = fmul fast float %7491, %7378
  %7558 = fadd fast float %7554, %7542
  %7559 = fadd fast float %7555, %7543
  %7560 = fadd fast float %7556, %7544
  %7561 = fadd fast float %7539, %7557
  %7562 = fadd fast float %7540, %7557
  %7563 = fadd fast float %7541, %7557
  %7564 = fmul fast float %7561, %7361
  %7565 = fmul fast float %7562, %7362
  %7566 = fmul fast float %7563, %7363
  %7567 = fmul fast float %7378, %7361
  %7568 = fmul fast float %7567, %7558
  %7569 = fmul fast float %7378, %7362
  %7570 = fmul fast float %7569, %7559
  %7571 = fmul fast float %7378, %7363
  %7572 = fmul fast float %7571, %7560
  %7573 = fadd fast float %7564, %5832
  %7574 = fmul fast float %7573, %4631
  %7575 = fadd fast float %7565, %5833
  %7576 = fmul fast float %7575, %4631
  %7577 = fadd fast float %7566, %5834
  %7578 = fmul fast float %7577, %4631
  %7579 = fadd fast float %7568, %6051
  %7580 = fmul fast float %7579, %4631
  %7581 = fadd fast float %7570, %6055
  %7582 = fmul fast float %7581, %4631
  %7583 = fadd fast float %7572, %6059
  %7584 = fmul fast float %7583, %4631
  br label %7585

; <label>:7585                                    ; preds = %7531, %7354, %6035
  %7586 = phi float [ %6052, %6035 ], [ %6052, %7354 ], [ %7580, %7531 ]
  %7587 = phi float [ %6056, %6035 ], [ %6056, %7354 ], [ %7582, %7531 ]
  %7588 = phi float [ %6060, %6035 ], [ %6060, %7354 ], [ %7584, %7531 ]
  %7589 = phi float [ %5924, %6035 ], [ %5924, %7354 ], [ %7574, %7531 ]
  %7590 = phi float [ %5925, %6035 ], [ %5925, %7354 ], [ %7576, %7531 ]
  %7591 = phi float [ %5926, %6035 ], [ %5926, %7354 ], [ %7578, %7531 ]
  %7592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7593 = extractvalue %dx.types.CBufRet.f32 %7592, 0
  %7594 = fmul fast float %7593, %5907
  %7595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7596 = extractvalue %dx.types.CBufRet.f32 %7595, 3
  %7597 = fsub fast float 1.000000e+00, %4638
  %7598 = call float @dx.op.unary.f32(i32 7, float %7597)  ; Saturate(value)
  %7599 = fadd fast float %7591, %4637
  %7600 = fmul fast float %7599, %4638
  %7601 = fmul fast float %7598, %7596
  %7602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7603 = extractvalue %dx.types.CBufRet.f32 %7602, 3
  %7604 = fmul fast float %7589, %5018
  %7605 = fmul fast float %7590, %5019
  %7606 = fmul fast float %7591, %5020
  %7607 = fcmp fast ogt float %87, %176
  %7608 = and i1 %7607, %4747
  %7609 = or i1 %4826, %7608
  %7610 = icmp eq i32 %4746, 2
  %7611 = fcmp fast ole float %87, %176
  %7612 = and i1 %7611, %7610
  %7613 = or i1 %7612, %7609
  br i1 %7608, label %7614, label %7868

; <label>:7614                                    ; preds = %7585
  %7615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7615, 2
  %7617 = extractvalue %dx.types.CBufRet.f32 %7615, 3
  %7618 = fmul fast float %7616, %99
  %7619 = fmul fast float %7617, %100
  %7620 = call float @dx.op.unary.f32(i32 7, float %7618)  ; Saturate(value)
  %7621 = call float @dx.op.unary.f32(i32 7, float %7619)  ; Saturate(value)
  %7622 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %7620, float %7621, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7623 = extractvalue %dx.types.ResRet.f32 %7622, 0
  %7624 = extractvalue %dx.types.ResRet.f32 %7622, 1
  %7625 = extractvalue %dx.types.ResRet.f32 %7622, 2
  %7626 = extractvalue %dx.types.ResRet.f32 %7622, 3
  %7627 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %7620, float %7621, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7628 = extractvalue %dx.types.ResRet.f32 %7627, 0
  %7629 = extractvalue %dx.types.ResRet.f32 %7627, 1
  %7630 = extractvalue %dx.types.ResRet.f32 %7627, 2
  %7631 = extractvalue %dx.types.ResRet.f32 %7627, 3
  %7632 = call float @dx.op.binary.f32(i32 35, float %7624, float %7625)  ; FMax(a,b)
  %7633 = call float @dx.op.binary.f32(i32 35, float %7623, float %7632)  ; FMax(a,b)
  %7634 = call float @dx.op.binary.f32(i32 35, float %7633, float %7626)  ; FMax(a,b)
  %7635 = call float @dx.op.binary.f32(i32 36, float %7629, float %7630)  ; FMin(a,b)
  %7636 = call float @dx.op.binary.f32(i32 36, float %7628, float %7635)  ; FMin(a,b)
  %7637 = call float @dx.op.binary.f32(i32 36, float %7636, float %7631)  ; FMin(a,b)
  %7638 = fmul fast float %7634, 2.550000e+02
  %7639 = fadd fast float %7638, 0x3F70101020000000
  %7640 = fptoui float %7639 to i32
  %7641 = fmul fast float %7637, 2.550000e+02
  %7642 = fadd fast float %7641, 0x3F70101020000000
  %7643 = fptoui float %7642 to i32
  %7644 = icmp ult i32 %7640, %7643
  br i1 %7644, label %7645, label %7813

; <label>:7645                                    ; preds = %7614
  %7646 = fcmp fast ogt float %86, 9.843750e-01
  %7647 = fadd fast float %87, -4.000000e+00
  %7648 = select i1 %7646, float -4.000000e+00, float %7647
  %7649 = call float @dx.op.binary.f32(i32 35, float %7648, float 0.000000e+00)  ; FMax(a,b)
  %7650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7651 = extractvalue %dx.types.CBufRet.f32 %7650, 0
  %7652 = fadd fast float %7651, %7649
  %7653 = extractvalue %dx.types.CBufRet.f32 %7650, 2
  %7654 = fmul fast float %7652, %7653
  %7655 = call float @dx.op.unary.f32(i32 23, float %7654)  ; Log(value)
  %7656 = extractvalue %dx.types.CBufRet.f32 %7650, 3
  %7657 = fmul fast float %7656, %7655
  %7658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7659 = extractvalue %dx.types.CBufRet.f32 %7658, 2
  %7660 = fmul fast float %7657, %7659
  %7661 = call float @dx.op.unary.f32(i32 7, float %7660)  ; Saturate(value)
  %7662 = uitofp i32 %7640 to float
  %7663 = uitofp i32 %7643 to float
  %7664 = fadd fast float %7662, 5.000000e-01
  %7665 = fadd fast float %7663, 5.000000e-01
  %7666 = fmul fast float %7659, %7664
  %7667 = fmul fast float %7659, %7665
  %7668 = fadd fast float %7666, 0x3F0FFB4800000000
  %7669 = fadd fast float %7667, 0xBF0FFB4800000000
  %7670 = call float @dx.op.binary.f32(i32 35, float %7661, float %7668)  ; FMax(a,b)
  %7671 = call float @dx.op.binary.f32(i32 36, float %7670, float %7669)  ; FMin(a,b)
  %7672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7673 = extractvalue %dx.types.CBufRet.f32 %7672, 1
  %7674 = extractvalue %dx.types.CBufRet.f32 %7672, 2
  %7675 = extractvalue %dx.types.CBufRet.f32 %7672, 0
  %7676 = fmul fast float %7673, %7671
  %7677 = fadd fast float %7675, %7676
  %7678 = fadd fast float %7675, %7674
  %7679 = fsub fast float %7673, %7674
  %7680 = fadd fast float %7679, %7675
  %7681 = call float @dx.op.binary.f32(i32 35, float %7677, float %7678)  ; FMax(a,b)
  %7682 = call float @dx.op.binary.f32(i32 36, float %7681, float %7680)  ; FMin(a,b)
  %7683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %7620, float %7621, float %7682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7684 = extractvalue %dx.types.ResRet.f32 %7683, 0
  %7685 = extractvalue %dx.types.ResRet.f32 %7683, 1
  %7686 = extractvalue %dx.types.ResRet.f32 %7683, 2
  %7687 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7688 = extractvalue %dx.types.CBufRet.i32 %7687, 0
  %7689 = extractvalue %dx.types.CBufRet.i32 %7687, 1
  %7690 = uitofp i32 %7688 to float
  %7691 = uitofp i32 %7689 to float
  %7692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7693 = extractvalue %dx.types.CBufRet.f32 %7692, 0
  %7694 = extractvalue %dx.types.CBufRet.f32 %7692, 1
  %7695 = fmul fast float %7690, %7620
  %7696 = fmul fast float %7691, %7621
  %7697 = fadd fast float %7695, -5.000000e-01
  %7698 = fadd fast float %7696, -5.000000e-01
  %7699 = call float @dx.op.unary.f32(i32 22, float %7697)  ; Frc(value)
  %7700 = call float @dx.op.unary.f32(i32 22, float %7698)  ; Frc(value)
  %7701 = fmul fast float %7699, %7699
  %7702 = fmul fast float %7701, %7699
  %7703 = fsub fast float 3.000000e+00, %7699
  %7704 = fmul fast float %7701, %7703
  %7705 = fmul fast float %7699, 3.000000e+00
  %7706 = fmul fast float %7702, 3.000000e+00
  %7707 = fmul fast float %7701, 6.000000e+00
  %7708 = fsub fast float %7706, %7707
  %7709 = fadd fast float %7708, 4.000000e+00
  %7710 = fmul fast float %7709, 0x3FC5555560000000
  %7711 = fmul fast float %7702, -3.000000e+00
  %7712 = fadd fast float %7701, %7699
  %7713 = fmul fast float %7712, 3.000000e+00
  %7714 = fadd fast float %7711, 1.000000e+00
  %7715 = fadd fast float %7714, %7713
  %7716 = fmul fast float %7702, 0x3FC5555560000000
  %7717 = fmul fast float %7700, %7700
  %7718 = fmul fast float %7717, %7700
  %7719 = fsub fast float 3.000000e+00, %7700
  %7720 = fmul fast float %7717, %7719
  %7721 = fmul fast float %7700, 3.000000e+00
  %7722 = fmul fast float %7718, 3.000000e+00
  %7723 = fmul fast float %7717, 6.000000e+00
  %7724 = fsub fast float %7722, %7723
  %7725 = fadd fast float %7724, 4.000000e+00
  %7726 = fmul fast float %7725, 0x3FC5555560000000
  %7727 = fmul fast float %7718, -3.000000e+00
  %7728 = fadd fast float %7717, %7700
  %7729 = fmul fast float %7728, 3.000000e+00
  %7730 = fadd fast float %7727, 1.000000e+00
  %7731 = fadd fast float %7730, %7729
  %7732 = fmul fast float %7718, 0x3FC5555560000000
  %7733 = fadd fast float %7699, 1.000000e+00
  %7734 = fsub fast float 1.000000e+00, %7705
  %7735 = fadd fast float %7734, %7704
  %7736 = fadd fast float %7735, %7709
  %7737 = fmul fast float %7736, 0x3FC5555560000000
  %7738 = fdiv fast float %7710, %7737
  %7739 = fsub fast float %7733, %7738
  %7740 = fsub fast float 1.000000e+00, %7699
  %7741 = fadd fast float %7715, %7702
  %7742 = fmul fast float %7741, 0x3FC5555560000000
  %7743 = fdiv fast float %7716, %7742
  %7744 = fadd fast float %7740, %7743
  %7745 = fadd fast float %7700, 1.000000e+00
  %7746 = fsub fast float 1.000000e+00, %7721
  %7747 = fadd fast float %7746, %7720
  %7748 = fadd fast float %7747, %7725
  %7749 = fmul fast float %7748, 0x3FC5555560000000
  %7750 = fdiv fast float %7726, %7749
  %7751 = fsub fast float %7745, %7750
  %7752 = fsub fast float 1.000000e+00, %7700
  %7753 = fadd fast float %7731, %7718
  %7754 = fmul fast float %7753, 0x3FC5555560000000
  %7755 = fdiv fast float %7732, %7754
  %7756 = fadd fast float %7755, %7752
  %7757 = fmul fast float %7739, %7693
  %7758 = fsub fast float %7620, %7757
  %7759 = fmul fast float %7744, %7693
  %7760 = fadd fast float %7759, %7620
  %7761 = fmul fast float %7756, %7694
  %7762 = fadd fast float %7761, %7621
  %7763 = fmul fast float %7751, %7694
  %7764 = fsub fast float %7621, %7763
  %7765 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %7758, float %7764, float %7682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7766 = extractvalue %dx.types.ResRet.f32 %7765, 0
  %7767 = extractvalue %dx.types.ResRet.f32 %7765, 1
  %7768 = extractvalue %dx.types.ResRet.f32 %7765, 2
  %7769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %7760, float %7764, float %7682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7770 = extractvalue %dx.types.ResRet.f32 %7769, 0
  %7771 = extractvalue %dx.types.ResRet.f32 %7769, 1
  %7772 = extractvalue %dx.types.ResRet.f32 %7769, 2
  %7773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %7758, float %7762, float %7682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7774 = extractvalue %dx.types.ResRet.f32 %7773, 0
  %7775 = extractvalue %dx.types.ResRet.f32 %7773, 1
  %7776 = extractvalue %dx.types.ResRet.f32 %7773, 2
  %7777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %7760, float %7762, float %7682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7778 = extractvalue %dx.types.ResRet.f32 %7777, 0
  %7779 = extractvalue %dx.types.ResRet.f32 %7777, 1
  %7780 = extractvalue %dx.types.ResRet.f32 %7777, 2
  %7781 = fsub fast float %7774, %7766
  %7782 = fsub fast float %7775, %7767
  %7783 = fsub fast float %7776, %7768
  %7784 = fmul fast float %7781, %7754
  %7785 = fmul fast float %7782, %7754
  %7786 = fmul fast float %7783, %7754
  %7787 = fadd fast float %7784, %7766
  %7788 = fadd fast float %7785, %7767
  %7789 = fadd fast float %7786, %7768
  %7790 = fsub fast float %7778, %7770
  %7791 = fsub fast float %7779, %7771
  %7792 = fsub fast float %7780, %7772
  %7793 = fmul fast float %7790, %7754
  %7794 = fmul fast float %7791, %7754
  %7795 = fmul fast float %7792, %7754
  %7796 = fsub fast float %7770, %7787
  %7797 = fadd fast float %7796, %7793
  %7798 = fsub fast float %7771, %7788
  %7799 = fadd fast float %7798, %7794
  %7800 = fsub fast float %7772, %7789
  %7801 = fadd fast float %7800, %7795
  %7802 = fmul fast float %7797, %7742
  %7803 = fmul fast float %7799, %7742
  %7804 = fmul fast float %7801, %7742
  %7805 = fadd fast float %7802, %7787
  %7806 = fadd fast float %7803, %7788
  %7807 = fadd fast float %7804, %7789
  %7808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7809 = extractvalue %dx.types.CBufRet.f32 %7808, 1
  %7810 = fmul fast float %7805, %7809
  %7811 = fmul fast float %7806, %7809
  %7812 = fmul fast float %7807, %7809
  br label %7813

; <label>:7813                                    ; preds = %7645, %7614
  %7814 = phi float [ %7684, %7645 ], [ 1.000000e+00, %7614 ]
  %7815 = phi float [ %7685, %7645 ], [ 1.000000e+00, %7614 ]
  %7816 = phi float [ %7686, %7645 ], [ 1.000000e+00, %7614 ]
  %7817 = phi float [ %7810, %7645 ], [ 0.000000e+00, %7614 ]
  %7818 = phi float [ %7811, %7645 ], [ 0.000000e+00, %7614 ]
  %7819 = phi float [ %7812, %7645 ], [ 0.000000e+00, %7614 ]
  %7820 = call float @dx.op.dot3.f32(i32 55, float %7814, float %7815, float %7816, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7821 = call float @dx.op.dot3.f32(i32 55, float %7817, float %7818, float %7819, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7822 = select i1 %215, float %7820, float %7814
  %7823 = select i1 %215, float %7820, float %7815
  %7824 = select i1 %215, float 1.000000e+00, float %7816
  %7825 = select i1 %215, float %7821, float %7817
  %7826 = select i1 %215, float 0.000000e+00, float %7818
  %7827 = select i1 %215, float 0.000000e+00, float %7819
  %7828 = fmul fast float %7822, %7604
  %7829 = fmul fast float %7823, %7605
  %7830 = fmul fast float %7824, %7606
  %7831 = fadd fast float %7828, %7825
  %7832 = fadd fast float %7829, %7826
  %7833 = fadd fast float %7827, %7830
  %7834 = fmul fast float %7822, %7586
  %7835 = fmul fast float %7823, %7587
  %7836 = fmul fast float %7824, %7588
  %7837 = fmul fast float %124, %7616
  %7838 = fmul fast float %126, %7617
  %7839 = fsub fast float 1.000000e+00, %7837
  %7840 = fsub fast float 1.000000e+00, %7838
  %7841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7842 = extractvalue %dx.types.CBufRet.f32 %7841, 0
  %7843 = extractvalue %dx.types.CBufRet.f32 %7841, 1
  %7844 = extractvalue %dx.types.CBufRet.f32 %7841, 2
  %7845 = fmul fast float %7839, %7842
  %7846 = fmul fast float %7839, %7843
  %7847 = fmul fast float %7839, %7844
  %7848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7849 = extractvalue %dx.types.CBufRet.f32 %7848, 0
  %7850 = extractvalue %dx.types.CBufRet.f32 %7848, 1
  %7851 = extractvalue %dx.types.CBufRet.f32 %7848, 2
  %7852 = fmul fast float %7840, %7849
  %7853 = fmul fast float %7840, %7850
  %7854 = fmul fast float %7840, %7851
  %7855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7856 = extractvalue %dx.types.CBufRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.CBufRet.f32 %7855, 1
  %7858 = extractvalue %dx.types.CBufRet.f32 %7855, 2
  %7859 = fadd fast float %7852, %7856
  %7860 = fadd fast float %7859, %7845
  %7861 = fadd fast float %7853, %7857
  %7862 = fadd fast float %7861, %7846
  %7863 = fadd fast float %7854, %7858
  %7864 = fadd fast float %7863, %7847
  %7865 = fmul fast float %7860, %176
  %7866 = fmul fast float %7862, %176
  %7867 = fmul fast float %7864, %176
  br label %7868

; <label>:7868                                    ; preds = %7813, %7585
  %7869 = phi float [ %7865, %7813 ], [ %154, %7585 ]
  %7870 = phi float [ %7866, %7813 ], [ %155, %7585 ]
  %7871 = phi float [ %7867, %7813 ], [ %156, %7585 ]
  %7872 = phi float [ %176, %7813 ], [ %87, %7585 ]
  %7873 = phi float [ %7831, %7813 ], [ %7604, %7585 ]
  %7874 = phi float [ %7832, %7813 ], [ %7605, %7585 ]
  %7875 = phi float [ %7833, %7813 ], [ %7606, %7585 ]
  %7876 = phi float [ %7834, %7813 ], [ %7586, %7585 ]
  %7877 = phi float [ %7835, %7813 ], [ %7587, %7585 ]
  %7878 = phi float [ %7836, %7813 ], [ %7588, %7585 ]
  %7879 = phi float [ %7814, %7813 ], [ 1.000000e+00, %7585 ]
  br i1 %7613, label %9028, label %7880

; <label>:7880                                    ; preds = %7868
  %7881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7882 = extractvalue %dx.types.CBufRet.f32 %7881, 0
  %7883 = extractvalue %dx.types.CBufRet.f32 %7881, 1
  %7884 = extractvalue %dx.types.CBufRet.f32 %7881, 2
  %7885 = extractvalue %dx.types.CBufRet.f32 %7881, 3
  %7886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7887 = extractvalue %dx.types.CBufRet.f32 %7886, 0
  %7888 = extractvalue %dx.types.CBufRet.f32 %7886, 1
  %7889 = extractvalue %dx.types.CBufRet.f32 %7886, 2
  %7890 = extractvalue %dx.types.CBufRet.f32 %7886, 3
  %7891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7892 = extractvalue %dx.types.CBufRet.f32 %7891, 0
  %7893 = extractvalue %dx.types.CBufRet.f32 %7891, 1
  %7894 = extractvalue %dx.types.CBufRet.f32 %7891, 2
  %7895 = extractvalue %dx.types.CBufRet.f32 %7891, 3
  %7896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7897 = extractvalue %dx.types.CBufRet.f32 %7896, 0
  %7898 = extractvalue %dx.types.CBufRet.f32 %7896, 1
  %7899 = extractvalue %dx.types.CBufRet.f32 %7896, 2
  %7900 = extractvalue %dx.types.CBufRet.f32 %7896, 3
  %7901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7901, 3
  %7903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7904 = extractvalue %dx.types.CBufRet.f32 %7903, 3
  %7905 = extractvalue %dx.types.CBufRet.f32 %7903, 0
  %7906 = extractvalue %dx.types.CBufRet.f32 %7903, 1
  %7907 = extractvalue %dx.types.CBufRet.f32 %7903, 2
  %7908 = fcmp fast olt float %7907, -5.000000e-01
  %7909 = call float @dx.op.dot3.f32(i32 55, float %7869, float %7870, float %7871, float %7869, float %7870, float %7871)  ; Dot3(ax,ay,az,bx,by,bz)
  %7910 = call float @dx.op.unary.f32(i32 25, float %7909)  ; Rsqrt(value)
  %7911 = fmul fast float %7910, %7909
  %7912 = fmul fast float %7910, %7869
  %7913 = fmul fast float %7910, %7870
  %7914 = fmul fast float %7910, %7871
  %7915 = fadd fast float %7911, %7885
  %7916 = call float @dx.op.dot3.f32(i32 55, float %7912, float %7913, float %7914, float %7882, float %7883, float %7884)  ; Dot3(ax,ay,az,bx,by,bz)
  %7917 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7918 = extractvalue %dx.types.CBufRet.i32 %7917, 1
  %7919 = and i32 %7918, 1
  %7920 = icmp ne i32 %7919, 0
  %7921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7922 = extractvalue %dx.types.CBufRet.f32 %7921, 2
  %7923 = fcmp fast ogt float %7922, 0.000000e+00
  %7924 = and i1 %7920, %7923
  br i1 %7924, label %7925, label %8331, !dx.controlflow.hints !120

; <label>:7925                                    ; preds = %7880
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 3
  %7928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7929 = extractvalue %dx.types.CBufRet.f32 %7928, 2
  %7930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7931 = extractvalue %dx.types.CBufRet.f32 %7930, 2
  %7932 = fsub fast float %7929, %7931
  %7933 = and i32 %7918, 2
  %7934 = extractvalue %dx.types.CBufRet.i32 %7917, 0
  %7935 = call i32 @dx.op.binary.i32(i32 40, i32 %7934, i32 3)  ; UMin(a,b)
  %7936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7937 = extractvalue %dx.types.CBufRet.f32 %7936, 0
  %7938 = extractvalue %dx.types.CBufRet.f32 %7936, 1
  %7939 = extractvalue %dx.types.CBufRet.f32 %7930, 0
  %7940 = extractvalue %dx.types.CBufRet.f32 %7930, 1
  %7941 = fsub fast float %7937, %7939
  %7942 = fsub fast float %7938, %7940
  %7943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7944 = extractvalue %dx.types.CBufRet.f32 %7943, 0
  %7945 = fcmp fast ogt float %7944, 0.000000e+00
  %7946 = fsub fast float -0.000000e+00, %7941
  %7947 = fsub fast float -0.000000e+00, %7942
  %7948 = call float @dx.op.dot2.f32(i32 54, float %7912, float %7913, float %7912, float %7913)  ; Dot2(ax,ay,bx,by)
  %7949 = call float @dx.op.dot2.f32(i32 54, float %7912, float %7913, float %7946, float %7947)  ; Dot2(ax,ay,bx,by)
  %7950 = fmul fast float %7949, 2.000000e+00
  %7951 = call float @dx.op.dot2.f32(i32 54, float %7946, float %7947, float %7946, float %7947)  ; Dot2(ax,ay,bx,by)
  %7952 = fmul fast float %7944, %7944
  %7953 = fsub fast float %7951, %7952
  %7954 = fmul fast float %7950, %7950
  %7955 = fmul fast float %7948, 4.000000e+00
  %7956 = fmul fast float %7955, %7953
  %7957 = fsub fast float %7954, %7956
  %7958 = fcmp fast ogt float %7957, 0.000000e+00
  br i1 %7958, label %7959, label %7974

; <label>:7959                                    ; preds = %7925
  %7960 = fcmp fast ogt float %7950, 0.000000e+00
  %7961 = call float @dx.op.unary.f32(i32 24, float %7957)  ; Sqrt(value)
  %7962 = fsub fast float -0.000000e+00, %7961
  %7963 = select i1 %7960, float %7961, float %7962
  %7964 = fadd fast float %7963, %7950
  %7965 = fmul float %7964, -5.000000e-01
  %7966 = fdiv fast float %7965, %7948
  %7967 = call float @dx.op.binary.f32(i32 35, float %7966, float 0.000000e+00)  ; FMax(a,b)
  %7968 = call float @dx.op.binary.f32(i32 36, float %7911, float %7967)  ; FMin(a,b)
  %7969 = fdiv fast float %7953, %7965
  %7970 = call float @dx.op.binary.f32(i32 35, float %7969, float 0.000000e+00)  ; FMax(a,b)
  %7971 = call float @dx.op.binary.f32(i32 36, float %7911, float %7970)  ; FMin(a,b)
  %7972 = call float @dx.op.binary.f32(i32 36, float %7968, float %7971)  ; FMin(a,b)
  %7973 = call float @dx.op.binary.f32(i32 35, float %7968, float %7971)  ; FMax(a,b)
  br label %7974

; <label>:7974                                    ; preds = %7959, %7925
  %7975 = phi float [ %7973, %7959 ], [ -1.000000e+00, %7925 ]
  %7976 = phi float [ %7972, %7959 ], [ -1.000000e+00, %7925 ]
  %7977 = phi i1 [ true, %7959 ], [ false, %7925 ]
  %7978 = and i1 %7945, %7977
  br i1 %7978, label %7979, label %7981

; <label>:7979                                    ; preds = %7974
  %7980 = fcmp fast oeq float %7976, %7975
  br i1 %7980, label %8284, label %7982

; <label>:7981                                    ; preds = %7974
  br i1 %7945, label %8284, label %7982

; <label>:7982                                    ; preds = %7981, %7979
  %7983 = phi float [ %7911, %7981 ], [ %7975, %7979 ]
  %7984 = phi float [ 0.000000e+00, %7981 ], [ %7976, %7979 ]
  %7985 = icmp ne i32 %7933, 0
  %7986 = fmul fast float %7983, %7914
  %7987 = fadd fast float %7986, %7927
  %7988 = fmul fast float %7987, %7983
  %7989 = select i1 %7985, float 0.000000e+00, float %7988
  %7990 = fcmp fast oeq float %7914, 0.000000e+00
  %7991 = fdiv fast float %7932, %7914
  %7992 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7991)  ; FMax(a,b)
  %7993 = select i1 %7990, float %7983, float %7992
  %7994 = call float @dx.op.binary.f32(i32 36, float %7983, float %7993)  ; FMin(a,b)
  %7995 = fcmp fast ogt float %7914, 0.000000e+00
  %7996 = fcmp fast olt float %7932, 0.000000e+00
  br i1 %7995, label %7997, label %8054

; <label>:7997                                    ; preds = %7982
  %7998 = icmp eq i32 %7933, 0
  br i1 %7996, label %7999, label %8043

; <label>:7999                                    ; preds = %7997
  %8000 = select i1 %7998, float %7983, float 0.000000e+00
  %8001 = fsub fast float -0.000000e+00, %8000
  %8002 = call float @dx.op.unary.f32(i32 6, float %8001)  ; FAbs(value)
  %8003 = fmul fast float %8000, %7914
  %8004 = fadd fast float %8003, %7927
  %8005 = fmul fast float %8002, %8004
  %8006 = fsub fast float %7989, %8005
  %8007 = fsub fast float %7983, %8002
  %8008 = select i1 %7998, float %8007, float 0.000000e+00
  %8009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8010 = extractvalue %dx.types.CBufRet.f32 %8009, 0
  %8011 = extractvalue %dx.types.CBufRet.f32 %8009, 1
  %8012 = extractvalue %dx.types.CBufRet.f32 %8009, 2
  %8013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8014 = extractvalue %dx.types.CBufRet.f32 %8013, 0
  %8015 = extractvalue %dx.types.CBufRet.f32 %8013, 1
  %8016 = extractvalue %dx.types.CBufRet.f32 %8013, 2
  %8017 = extractvalue %dx.types.CBufRet.f32 %8013, 3
  %8018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8019 = extractvalue %dx.types.CBufRet.f32 %8018, 3
  %8020 = call float @dx.op.binary.f32(i32 36, float %8006, float %8019)  ; FMin(a,b)
  %8021 = fmul fast float %8017, %8008
  %8022 = call float @dx.op.unary.f32(i32 7, float %8021)  ; Saturate(value)
  %8023 = fsub fast float %8014, %8010
  %8024 = fsub fast float %8015, %8011
  %8025 = fsub fast float %8016, %8012
  %8026 = fmul fast float %8022, %8023
  %8027 = fmul fast float %8022, %8024
  %8028 = fmul fast float %8022, %8025
  %8029 = fadd fast float %8026, %8010
  %8030 = fadd fast float %8027, %8011
  %8031 = fadd fast float %8028, %8012
  %8032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8033 = extractvalue %dx.types.CBufRet.f32 %8032, 0
  %8034 = extractvalue %dx.types.CBufRet.f32 %8032, 1
  %8035 = fadd fast float %8034, %8033
  %8036 = call float @dx.op.unary.f32(i32 7, float %8035)  ; Saturate(value)
  %8037 = extractvalue %dx.types.CBufRet.f32 %8032, 2
  %8038 = extractvalue %dx.types.CBufRet.f32 %8032, 3
  %8039 = fadd fast float %8038, %8037
  %8040 = call float @dx.op.unary.f32(i32 7, float %8039)  ; Saturate(value)
  %8041 = fmul fast float %8036, %8020
  %8042 = fmul fast float %8041, %8040
  br label %8284

; <label>:8043                                    ; preds = %7997
  br i1 %7998, label %8044, label %8065

; <label>:8044                                    ; preds = %8043
  %8045 = call float @dx.op.binary.f32(i32 36, float %7994, float %7984)  ; FMin(a,b)
  %8046 = fsub fast float %7994, %8045
  %8047 = fsub fast float %8046, %7983
  %8048 = call float @dx.op.unary.f32(i32 6, float %8047)  ; FAbs(value)
  %8049 = fadd fast float %8046, %7983
  %8050 = fmul fast float %8049, %7914
  %8051 = fadd fast float %8050, %7927
  %8052 = fmul fast float %8051, %8048
  %8053 = fsub fast float %7989, %8052
  br label %8065

; <label>:8054                                    ; preds = %7982
  br i1 %7996, label %8055, label %8065

; <label>:8055                                    ; preds = %8054
  %8056 = call float @dx.op.binary.f32(i32 35, float %7984, float %7994)  ; FMax(a,b)
  %8057 = icmp eq i32 %7933, 0
  %8058 = select i1 %8057, float %7994, float 0.000000e+00
  %8059 = fsub fast float -0.000000e+00, %8058
  %8060 = call float @dx.op.unary.f32(i32 6, float %8059)  ; FAbs(value)
  %8061 = fmul fast float %8058, %7914
  %8062 = fadd fast float %8061, %7927
  %8063 = fmul fast float %8060, %8062
  %8064 = fsub fast float %7989, %8063
  br label %8065

; <label>:8065                                    ; preds = %8055, %8054, %8044, %8043
  %8066 = phi float [ %7984, %8043 ], [ %7984, %8044 ], [ %8056, %8055 ], [ %7984, %8054 ]
  %8067 = phi float [ 0.000000e+00, %8043 ], [ %8048, %8044 ], [ %8060, %8055 ], [ 0.000000e+00, %8054 ]
  %8068 = phi float [ %7989, %8043 ], [ %8053, %8044 ], [ %8064, %8055 ], [ %7989, %8054 ]
  %8069 = phi float [ %7994, %8043 ], [ %7994, %8044 ], [ %7983, %8055 ], [ %7983, %8054 ]
  %8070 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %8070, align 4, !tbaa !110, !noalias !121
  %8071 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %8071, align 4, !tbaa !110, !noalias !121
  %8072 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %8072, align 4, !tbaa !110, !noalias !121
  %8073 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %8073, align 4, !tbaa !110, !noalias !121
  %8074 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %8074, align 4, !tbaa !110, !noalias !121
  %8075 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %8075, align 4, !tbaa !110, !noalias !121
  %8076 = icmp sgt i32 %7935, 0
  br i1 %8076, label %8077, label %8138

; <label>:8077                                    ; preds = %8065
  br label %8078

; <label>:8078                                    ; preds = %8127, %8077
  %8079 = phi i32 [ %8128, %8127 ], [ 0, %8077 ]
  %8080 = phi i32 [ %8129, %8127 ], [ 0, %8077 ]
  %8081 = add nuw i32 %8080, 171
  %8082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %8081)  ; CBufferLoadLegacy(handle,regIndex)
  %8083 = extractvalue %dx.types.CBufRet.f32 %8082, 0
  %8084 = extractvalue %dx.types.CBufRet.f32 %8082, 1
  %8085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8086 = extractvalue %dx.types.CBufRet.f32 %8085, 0
  %8087 = extractvalue %dx.types.CBufRet.f32 %8085, 1
  %8088 = fsub fast float %8083, %8086
  %8089 = fsub fast float %8084, %8087
  %8090 = extractvalue %dx.types.CBufRet.f32 %8082, 2
  %8091 = fsub fast float -0.000000e+00, %8088
  %8092 = fsub fast float -0.000000e+00, %8089
  %8093 = call float @dx.op.dot2.f32(i32 54, float %7912, float %7913, float %8091, float %8092)  ; Dot2(ax,ay,bx,by)
  %8094 = fmul fast float %8093, 2.000000e+00
  %8095 = call float @dx.op.dot2.f32(i32 54, float %8091, float %8092, float %8091, float %8092)  ; Dot2(ax,ay,bx,by)
  %8096 = fmul fast float %8090, %8090
  %8097 = fsub fast float %8095, %8096
  %8098 = fmul fast float %8094, %8094
  %8099 = fmul fast float %7955, %8097
  %8100 = fsub fast float %8098, %8099
  %8101 = fcmp fast ogt float %8100, 0.000000e+00
  br i1 %8101, label %8102, label %8117

; <label>:8102                                    ; preds = %8078
  %8103 = fcmp fast ogt float %8094, 0.000000e+00
  %8104 = call float @dx.op.unary.f32(i32 24, float %8100)  ; Sqrt(value)
  %8105 = fsub fast float -0.000000e+00, %8104
  %8106 = select i1 %8103, float %8104, float %8105
  %8107 = fadd fast float %8106, %8094
  %8108 = fmul float %8107, -5.000000e-01
  %8109 = fdiv fast float %8108, %7948
  %8110 = call float @dx.op.binary.f32(i32 35, float %8109, float 0.000000e+00)  ; FMax(a,b)
  %8111 = call float @dx.op.binary.f32(i32 36, float %7983, float %8110)  ; FMin(a,b)
  %8112 = fdiv fast float %8097, %8108
  %8113 = call float @dx.op.binary.f32(i32 35, float %8112, float 0.000000e+00)  ; FMax(a,b)
  %8114 = call float @dx.op.binary.f32(i32 36, float %7983, float %8113)  ; FMin(a,b)
  %8115 = call float @dx.op.binary.f32(i32 36, float %8111, float %8114)  ; FMin(a,b)
  %8116 = call float @dx.op.binary.f32(i32 35, float %8111, float %8114)  ; FMax(a,b)
  br label %8117

; <label>:8117                                    ; preds = %8102, %8078
  %8118 = phi float [ %8116, %8102 ], [ -1.000000e+00, %8078 ]
  %8119 = phi float [ %8115, %8102 ], [ -1.000000e+00, %8078 ]
  %8120 = phi i1 [ true, %8102 ], [ false, %8078 ]
  br i1 %8120, label %8121, label %8127

; <label>:8121                                    ; preds = %8117
  %8122 = call float @dx.op.binary.f32(i32 35, float %8066, float %8119)  ; FMax(a,b)
  %8123 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8080
  store float %8122, float* %8123, align 4, !tbaa !110, !noalias !121
  %8124 = call float @dx.op.binary.f32(i32 35, float %8066, float %8118)  ; FMax(a,b)
  %8125 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8080
  store float %8124, float* %8125, align 4, !tbaa !110, !noalias !121
  %8126 = add nsw i32 %8079, 1
  br label %8127

; <label>:8127                                    ; preds = %8121, %8117
  %8128 = phi i32 [ %8126, %8121 ], [ %8079, %8117 ]
  %8129 = add nuw nsw i32 %8080, 1
  %8130 = icmp eq i32 %8129, %7935
  br i1 %8130, label %8131, label %8078

; <label>:8131                                    ; preds = %8127
  %8132 = load float, float* %8072, align 4, !tbaa !110, !alias.scope !137, !noalias !140
  %8133 = load float, float* %8071, align 4, !tbaa !110, !alias.scope !143, !noalias !144
  %8134 = load float, float* %8070, align 4, !tbaa !110, !alias.scope !145, !noalias !146
  %8135 = load float, float* %8075, align 4, !tbaa !110, !alias.scope !147, !noalias !150
  %8136 = load float, float* %8074, align 4, !tbaa !110, !alias.scope !153, !noalias !154
  %8137 = load float, float* %8073, align 4, !tbaa !110, !alias.scope !155, !noalias !156
  br label %8138

; <label>:8138                                    ; preds = %8131, %8065
  %8139 = phi float [ -1.000000e+00, %8065 ], [ %8137, %8131 ]
  %8140 = phi float [ -1.000000e+00, %8065 ], [ %8136, %8131 ]
  %8141 = phi float [ -1.000000e+00, %8065 ], [ %8135, %8131 ]
  %8142 = phi float [ -1.000000e+00, %8065 ], [ %8134, %8131 ]
  %8143 = phi float [ -1.000000e+00, %8065 ], [ %8133, %8131 ]
  %8144 = phi float [ -1.000000e+00, %8065 ], [ %8132, %8131 ]
  %8145 = phi i32 [ 0, %8065 ], [ %8128, %8131 ]
  %8146 = call float @dx.op.binary.f32(i32 36, float %8143, float %8144)  ; FMin(a,b)
  %8147 = call float @dx.op.binary.f32(i32 36, float %8142, float %8146)  ; FMin(a,b)
  %8148 = call float @dx.op.binary.f32(i32 35, float %8142, float %8143)  ; FMax(a,b)
  %8149 = call float @dx.op.binary.f32(i32 36, float %8148, float %8144)  ; FMin(a,b)
  %8150 = call float @dx.op.binary.f32(i32 36, float %8142, float %8143)  ; FMin(a,b)
  %8151 = call float @dx.op.binary.f32(i32 35, float %8150, float %8149)  ; FMax(a,b)
  %8152 = call float @dx.op.binary.f32(i32 35, float %8143, float %8144)  ; FMax(a,b)
  %8153 = call float @dx.op.binary.f32(i32 35, float %8142, float %8152)  ; FMax(a,b)
  store float %8147, float* %8070, align 4, !tbaa !110, !alias.scope !145, !noalias !146
  store float %8151, float* %8071, align 4, !tbaa !110, !alias.scope !143, !noalias !144
  store float %8153, float* %8072, align 4, !tbaa !110, !alias.scope !137, !noalias !140
  %8154 = call float @dx.op.binary.f32(i32 36, float %8140, float %8141)  ; FMin(a,b)
  %8155 = call float @dx.op.binary.f32(i32 36, float %8139, float %8154)  ; FMin(a,b)
  %8156 = call float @dx.op.binary.f32(i32 35, float %8139, float %8140)  ; FMax(a,b)
  %8157 = call float @dx.op.binary.f32(i32 36, float %8156, float %8141)  ; FMin(a,b)
  %8158 = call float @dx.op.binary.f32(i32 36, float %8139, float %8140)  ; FMin(a,b)
  %8159 = call float @dx.op.binary.f32(i32 35, float %8158, float %8157)  ; FMax(a,b)
  %8160 = call float @dx.op.binary.f32(i32 35, float %8140, float %8141)  ; FMax(a,b)
  %8161 = call float @dx.op.binary.f32(i32 35, float %8139, float %8160)  ; FMax(a,b)
  store float %8155, float* %8073, align 4, !tbaa !110, !alias.scope !155, !noalias !156
  store float %8159, float* %8074, align 4, !tbaa !110, !alias.scope !153, !noalias !154
  store float %8161, float* %8075, align 4, !tbaa !110, !alias.scope !147, !noalias !150
  %8162 = sub nsw i32 3, %8145
  %8163 = icmp sgt i32 %8162, 2
  br i1 %8163, label %8164, label %8202

; <label>:8164                                    ; preds = %8138
  %8165 = icmp eq i32 %7933, 0
  %8166 = fsub fast float %7983, %8067
  %8167 = select i1 %8165, float %8166, float %8067
  %8168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8169 = extractvalue %dx.types.CBufRet.f32 %8168, 0
  %8170 = extractvalue %dx.types.CBufRet.f32 %8168, 1
  %8171 = extractvalue %dx.types.CBufRet.f32 %8168, 2
  %8172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8173 = extractvalue %dx.types.CBufRet.f32 %8172, 0
  %8174 = extractvalue %dx.types.CBufRet.f32 %8172, 1
  %8175 = extractvalue %dx.types.CBufRet.f32 %8172, 2
  %8176 = extractvalue %dx.types.CBufRet.f32 %8172, 3
  %8177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8178 = extractvalue %dx.types.CBufRet.f32 %8177, 3
  %8179 = call float @dx.op.binary.f32(i32 36, float %8068, float %8178)  ; FMin(a,b)
  %8180 = fmul fast float %8176, %8167
  %8181 = call float @dx.op.unary.f32(i32 7, float %8180)  ; Saturate(value)
  %8182 = fsub fast float %8173, %8169
  %8183 = fsub fast float %8174, %8170
  %8184 = fsub fast float %8175, %8171
  %8185 = fmul fast float %8181, %8182
  %8186 = fmul fast float %8181, %8183
  %8187 = fmul fast float %8181, %8184
  %8188 = fadd fast float %8185, %8169
  %8189 = fadd fast float %8186, %8170
  %8190 = fadd fast float %8187, %8171
  %8191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8192 = extractvalue %dx.types.CBufRet.f32 %8191, 0
  %8193 = extractvalue %dx.types.CBufRet.f32 %8191, 1
  %8194 = fadd fast float %8193, %8192
  %8195 = call float @dx.op.unary.f32(i32 7, float %8194)  ; Saturate(value)
  %8196 = extractvalue %dx.types.CBufRet.f32 %8191, 2
  %8197 = extractvalue %dx.types.CBufRet.f32 %8191, 3
  %8198 = fadd fast float %8197, %8196
  %8199 = call float @dx.op.unary.f32(i32 7, float %8198)  ; Saturate(value)
  %8200 = fmul fast float %8195, %8179
  %8201 = fmul fast float %8200, %8199
  br label %8284

; <label>:8202                                    ; preds = %8138
  %8203 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8162
  %8204 = load float, float* %8203, align 4, !tbaa !110, !noalias !121
  %8205 = fcmp fast olt float %8204, %8069
  %8206 = icmp sgt i32 %8145, 0
  %8207 = and i1 %8206, %8205
  br i1 %8207, label %8208, label %8245

; <label>:8208                                    ; preds = %8202
  br label %8209

; <label>:8209                                    ; preds = %8238, %8208
  %8210 = phi float [ %8239, %8238 ], [ %8067, %8208 ]
  %8211 = phi float [ %8240, %8238 ], [ %8068, %8208 ]
  %8212 = phi float [ %8220, %8238 ], [ %8204, %8208 ]
  %8213 = phi i32 [ %8217, %8238 ], [ %8162, %8208 ]
  %8214 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8213
  %8215 = load float, float* %8214, align 4, !tbaa !110, !noalias !121
  %8216 = icmp slt i32 %8213, 2
  %8217 = add nsw i32 %8213, 1
  %8218 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8217
  %8219 = load float, float* %8218, align 4, !tbaa !110, !noalias !121
  %8220 = select i1 %8216, float %8219, float %7983
  %8221 = call float @dx.op.binary.f32(i32 36, float %8220, float %8215)  ; FMin(a,b)
  %8222 = call float @dx.op.binary.f32(i32 36, float %8069, float %8221)  ; FMin(a,b)
  %8223 = icmp eq i32 %7933, 0
  %8224 = fadd fast float %8222, %8212
  %8225 = fmul fast float %8224, %7914
  %8226 = fadd fast float %8225, %7927
  br i1 %8223, label %8232, label %8227

; <label>:8227                                    ; preds = %8209
  %8228 = fsub fast float %8222, %8212
  %8229 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8228)  ; FMax(a,b)
  %8230 = fmul fast float %8229, %8226
  %8231 = fadd fast float %8230, %8211
  br label %8238

; <label>:8232                                    ; preds = %8209
  %8233 = fsub fast float %8212, %8222
  %8234 = call float @dx.op.unary.f32(i32 6, float %8233)  ; FAbs(value)
  %8235 = fadd fast float %8234, %8210
  %8236 = fmul fast float %8234, %8226
  %8237 = fsub fast float %8211, %8236
  br label %8238

; <label>:8238                                    ; preds = %8232, %8227
  %8239 = phi float [ %8229, %8227 ], [ %8235, %8232 ]
  %8240 = phi float [ %8231, %8227 ], [ %8237, %8232 ]
  %8241 = fcmp fast olt float %8220, %8069
  %8242 = icmp slt i32 %8217, 3
  %8243 = and i1 %8242, %8241
  br i1 %8243, label %8209, label %8244

; <label>:8244                                    ; preds = %8238
  br label %8245

; <label>:8245                                    ; preds = %8244, %8202
  %8246 = phi float [ %8067, %8202 ], [ %8239, %8244 ]
  %8247 = phi float [ %8068, %8202 ], [ %8240, %8244 ]
  %8248 = fsub fast float %7983, %8246
  %8249 = select i1 %7985, float %8246, float %8248
  %8250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8251 = extractvalue %dx.types.CBufRet.f32 %8250, 0
  %8252 = extractvalue %dx.types.CBufRet.f32 %8250, 1
  %8253 = extractvalue %dx.types.CBufRet.f32 %8250, 2
  %8254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8255 = extractvalue %dx.types.CBufRet.f32 %8254, 0
  %8256 = extractvalue %dx.types.CBufRet.f32 %8254, 1
  %8257 = extractvalue %dx.types.CBufRet.f32 %8254, 2
  %8258 = extractvalue %dx.types.CBufRet.f32 %8254, 3
  %8259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8260 = extractvalue %dx.types.CBufRet.f32 %8259, 3
  %8261 = call float @dx.op.binary.f32(i32 36, float %8247, float %8260)  ; FMin(a,b)
  %8262 = fmul fast float %8258, %8249
  %8263 = call float @dx.op.unary.f32(i32 7, float %8262)  ; Saturate(value)
  %8264 = fsub fast float %8255, %8251
  %8265 = fsub fast float %8256, %8252
  %8266 = fsub fast float %8257, %8253
  %8267 = fmul fast float %8263, %8264
  %8268 = fmul fast float %8263, %8265
  %8269 = fmul fast float %8263, %8266
  %8270 = fadd fast float %8267, %8251
  %8271 = fadd fast float %8268, %8252
  %8272 = fadd fast float %8269, %8253
  %8273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8274 = extractvalue %dx.types.CBufRet.f32 %8273, 0
  %8275 = extractvalue %dx.types.CBufRet.f32 %8273, 1
  %8276 = fadd fast float %8275, %8274
  %8277 = call float @dx.op.unary.f32(i32 7, float %8276)  ; Saturate(value)
  %8278 = extractvalue %dx.types.CBufRet.f32 %8273, 2
  %8279 = extractvalue %dx.types.CBufRet.f32 %8273, 3
  %8280 = fadd fast float %8279, %8278
  %8281 = call float @dx.op.unary.f32(i32 7, float %8280)  ; Saturate(value)
  %8282 = fmul fast float %8277, %8261
  %8283 = fmul fast float %8282, %8281
  br label %8284

; <label>:8284                                    ; preds = %8245, %8164, %7999, %7981, %7979
  %8285 = phi float [ %8008, %7999 ], [ %8167, %8164 ], [ %8249, %8245 ], [ 0.000000e+00, %7979 ], [ 0.000000e+00, %7981 ]
  %8286 = phi float [ %8042, %7999 ], [ %8201, %8164 ], [ %8283, %8245 ], [ 0.000000e+00, %7979 ], [ 0.000000e+00, %7981 ]
  %8287 = phi float [ %8029, %7999 ], [ %8188, %8164 ], [ %8270, %8245 ], [ 0.000000e+00, %7979 ], [ 0.000000e+00, %7981 ]
  %8288 = phi float [ %8030, %7999 ], [ %8189, %8164 ], [ %8271, %8245 ], [ 0.000000e+00, %7979 ], [ 0.000000e+00, %7981 ]
  %8289 = phi float [ %8031, %7999 ], [ %8190, %8164 ], [ %8272, %8245 ], [ 0.000000e+00, %7979 ], [ 0.000000e+00, %7981 ]
  %8290 = fmul fast float %7922, %8286
  %8291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8292 = extractvalue %dx.types.CBufRet.f32 %8291, 2
  %8293 = fsub fast float %7929, %8292
  %8294 = fcmp fast olt float %8290, -2.000000e+01
  %8295 = call float @dx.op.unary.f32(i32 21, float %8290)  ; Exp(value)
  %8296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8297 = extractvalue %dx.types.CBufRet.f32 %8296, 2
  %8298 = extractvalue %dx.types.CBufRet.f32 %8296, 3
  %8299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.f32 %8299, 2
  %8301 = fmul fast float %8298, %8293
  %8302 = call float @dx.op.unary.f32(i32 7, float %8301)  ; Saturate(value)
  %8303 = fsub fast float 1.000000e+00, %8302
  %8304 = fmul fast float %7914, 5.000000e-01
  %8305 = fadd fast float %8304, 5.000000e-01
  %8306 = call float @dx.op.unary.f32(i32 7, float %8305)  ; Saturate(value)
  %8307 = fsub fast float 1.000000e+00, %8306
  %8308 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8303)  ; FMax(a,b)
  %8309 = fdiv fast float %8307, %8308
  %8310 = fsub fast float %8293, %7871
  %8311 = call float @dx.op.unary.f32(i32 6, float %8310)  ; FAbs(value)
  %8312 = fmul fast float %8311, %8297
  %8313 = call float @dx.op.unary.f32(i32 7, float %8309)  ; Saturate(value)
  %8314 = fsub fast float 1.000000e+00, %8312
  %8315 = fmul fast float %8314, %8313
  %8316 = fadd fast float %8315, %8312
  %8317 = fmul fast float %8300, %8293
  %8318 = call float @dx.op.unary.f32(i32 7, float %8317)  ; Saturate(value)
  %8319 = fsub fast float 1.000000e+00, %8316
  %8320 = fmul fast float %8319, %8318
  %8321 = fadd fast float %8320, %8316
  %8322 = call float @dx.op.unary.f32(i32 7, float %8321)  ; Saturate(value)
  %8323 = fadd fast float %8295, -1.000000e+00
  %8324 = select i1 %8294, float -1.000000e+00, float %8323
  %8325 = fmul fast float %8322, %8324
  %8326 = fadd fast float %8325, 1.000000e+00
  %8327 = fsub fast float -0.000000e+00, %8325
  %8328 = fmul fast float %8287, %8327
  %8329 = fmul fast float %8288, %8327
  %8330 = fmul fast float %8289, %8327
  br label %8331

; <label>:8331                                    ; preds = %8284, %7880
  %8332 = phi float [ %8285, %8284 ], [ 0.000000e+00, %7880 ]
  %8333 = phi float [ %8326, %8284 ], [ 1.000000e+00, %7880 ]
  %8334 = phi float [ %8328, %8284 ], [ 0.000000e+00, %7880 ]
  %8335 = phi float [ %8329, %8284 ], [ 0.000000e+00, %7880 ]
  %8336 = phi float [ %8330, %8284 ], [ 0.000000e+00, %7880 ]
  %8337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8338 = extractvalue %dx.types.CBufRet.f32 %8337, 1
  %8339 = fsub fast float 1.000000e+00, %8333
  %8340 = fmul fast float %8339, %7915
  %8341 = fmul fast float %8340, %8338
  %8342 = fsub fast float %7915, %8341
  br i1 %7908, label %8343, label %8372, !dx.controlflow.hints !157

; <label>:8343                                    ; preds = %8331
  %8344 = fmul fast float %7916, %7905
  %8345 = fadd fast float %8344, %7906
  %8346 = call float @dx.op.unary.f32(i32 7, float %8345)  ; Saturate(value)
  %8347 = fmul fast float %7887, %8342
  %8348 = fsub fast float -0.000000e+00, %8347
  %8349 = fmul fast float %7888, %8342
  %8350 = fsub fast float -0.000000e+00, %8349
  %8351 = call float @dx.op.unary.f32(i32 21, float %8348)  ; Exp(value)
  %8352 = call float @dx.op.unary.f32(i32 21, float %8350)  ; Exp(value)
  %8353 = call float @dx.op.binary.f32(i32 35, float %7895, float %8351)  ; FMax(a,b)
  %8354 = call float @dx.op.binary.f32(i32 35, float %7895, float %8352)  ; FMax(a,b)
  %8355 = fsub fast float %8354, %8353
  %8356 = fmul fast float %8355, %8346
  %8357 = fadd fast float %8356, %8353
  %8358 = call float @dx.op.unary.f32(i32 7, float %8357)  ; Saturate(value)
  %8359 = fsub fast float %7892, %7897
  %8360 = fsub fast float %7893, %7898
  %8361 = fsub fast float %7894, %7899
  %8362 = fmul fast float %8346, %8359
  %8363 = fmul fast float %8346, %8360
  %8364 = fmul fast float %8346, %8361
  %8365 = fadd fast float %8362, %7897
  %8366 = fadd fast float %8363, %7898
  %8367 = fadd fast float %8364, %7899
  %8368 = fsub fast float 1.000000e+00, %8358
  %8369 = fmul fast float %8368, %8365
  %8370 = fmul fast float %8368, %8366
  %8371 = fmul fast float %8368, %8367
  br label %8431

; <label>:8372                                    ; preds = %8331
  %8373 = fmul fast float %8342, %7904
  %8374 = call float @dx.op.unary.f32(i32 7, float %8373)  ; Saturate(value)
  %8375 = fsub fast float 2.000000e+00, %8374
  %8376 = fmul fast float %8374, 9.921875e-01
  %8377 = fmul fast float %8376, %8375
  %8378 = fadd fast float %8377, 3.906250e-03
  %8379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8378, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8380 = extractvalue %dx.types.ResRet.f32 %8379, 0
  %8381 = fsub fast float %8374, %8380
  %8382 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8381)  ; FMax(a,b)
  %8383 = fmul fast float %7890, %7871
  %8384 = call float @dx.op.unary.f32(i32 6, float %8383)  ; FAbs(value)
  %8385 = fcmp fast ogt float %8384, 0x3EB0C6F7A0000000
  br i1 %8385, label %8386, label %8392, !dx.controlflow.hints !158

; <label>:8386                                    ; preds = %8372
  %8387 = fmul fast float %8383, 0xBFF7154760000000
  %8388 = call float @dx.op.unary.f32(i32 21, float %8387)  ; Exp(value)
  %8389 = fsub fast float 1.000000e+00, %8388
  %8390 = fdiv fast float %8389, %8383
  %8391 = fmul fast float %8390, %7900
  br label %8392

; <label>:8392                                    ; preds = %8386, %8372
  %8393 = phi float [ %8391, %8386 ], [ %7900, %8372 ]
  %8394 = fadd fast float %8393, %7902
  %8395 = fmul fast float %8394, %8382
  %8396 = fmul fast float %7887, %8395
  %8397 = fsub fast float -0.000000e+00, %8396
  %8398 = fmul fast float %7888, %8395
  %8399 = fsub fast float -0.000000e+00, %8398
  %8400 = fmul fast float %7889, %8395
  %8401 = fsub fast float -0.000000e+00, %8400
  %8402 = call float @dx.op.unary.f32(i32 21, float %8397)  ; Exp(value)
  %8403 = call float @dx.op.unary.f32(i32 21, float %8399)  ; Exp(value)
  %8404 = call float @dx.op.unary.f32(i32 21, float %8401)  ; Exp(value)
  %8405 = fmul fast float %7916, %7916
  %8406 = fadd fast float %8405, 1.000000e+00
  %8407 = fmul fast float %8406, 0x3FAE8EC8A0000000
  %8408 = fmul fast float %8407, %7897
  %8409 = fmul fast float %8407, %7898
  %8410 = fmul fast float %8407, %7899
  %8411 = fmul fast float %7916, %7895
  %8412 = fsub fast float 1.000000e+00, %8411
  %8413 = fmul fast float %7895, %7895
  %8414 = fsub fast float 1.000000e+00, %8413
  %8415 = fmul fast float %8414, 0x3FB45F3060000000
  %8416 = fmul fast float %8412, %8412
  %8417 = fdiv fast float 1.000000e+00, %8416
  %8418 = fmul fast float %8415, %8417
  %8419 = fmul fast float %8418, %7892
  %8420 = fmul fast float %8418, %7893
  %8421 = fmul fast float %8418, %7894
  %8422 = fadd fast float %8419, %8408
  %8423 = fadd fast float %8420, %8409
  %8424 = fadd fast float %8421, %8410
  %8425 = fsub fast float 1.000000e+00, %8402
  %8426 = fsub fast float 1.000000e+00, %8403
  %8427 = fsub fast float 1.000000e+00, %8404
  %8428 = fmul fast float %8422, %8425
  %8429 = fmul fast float %8423, %8426
  %8430 = fmul fast float %8424, %8427
  br label %8431

; <label>:8431                                    ; preds = %8392, %8343
  %8432 = phi float [ %8369, %8343 ], [ %8428, %8392 ]
  %8433 = phi float [ %8370, %8343 ], [ %8429, %8392 ]
  %8434 = phi float [ %8371, %8343 ], [ %8430, %8392 ]
  %8435 = phi float [ %8358, %8343 ], [ %8402, %8392 ]
  %8436 = phi float [ %8358, %8343 ], [ %8403, %8392 ]
  %8437 = phi float [ %8358, %8343 ], [ %8404, %8392 ]
  br i1 %7924, label %8438, label %8636, !dx.controlflow.hints !159

; <label>:8438                                    ; preds = %8431
  %8439 = extractvalue %dx.types.CBufRet.f32 %8337, 0
  %8440 = fmul fast float %8439, %8339
  %8441 = fsub fast float %8334, %8432
  %8442 = fsub fast float %8335, %8433
  %8443 = fsub fast float %8336, %8434
  %8444 = fmul fast float %8440, %8441
  %8445 = fmul fast float %8440, %8442
  %8446 = fmul fast float %8440, %8443
  %8447 = fadd fast float %8444, %8432
  %8448 = fadd fast float %8445, %8433
  %8449 = fadd fast float %8446, %8434
  %8450 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8435)  ; FMax(a,b)
  %8451 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8436)  ; FMax(a,b)
  %8452 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8437)  ; FMax(a,b)
  %8453 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8333)  ; FMax(a,b)
  %8454 = call float @dx.op.binary.f32(i32 35, float %8332, float %8342)  ; FMax(a,b)
  %8455 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8454)  ; FMax(a,b)
  %8456 = fdiv fast float %8332, %8455
  %8457 = call float @dx.op.unary.f32(i32 7, float %8456)  ; Saturate(value)
  %8458 = fdiv fast float %8342, %8455
  %8459 = call float @dx.op.unary.f32(i32 7, float %8458)  ; Saturate(value)
  %8460 = fcmp fast une float %8453, 1.000000e+00
  br i1 %8460, label %8461, label %8474, !dx.controlflow.hints !160

; <label>:8461                                    ; preds = %8438
  %8462 = call float @dx.op.unary.f32(i32 23, float %8453)  ; Log(value)
  %8463 = fmul fast float %8462, 0x3FE62E4300000000
  %8464 = fmul fast float %8334, %8463
  %8465 = fsub fast float -0.000000e+00, %8464
  %8466 = fmul fast float %8335, %8463
  %8467 = fsub fast float -0.000000e+00, %8466
  %8468 = fmul fast float %8336, %8463
  %8469 = fsub fast float -0.000000e+00, %8468
  %8470 = fsub fast float 1.000000e+00, %8453
  %8471 = fdiv fast float %8465, %8470
  %8472 = fdiv fast float %8467, %8470
  %8473 = fdiv fast float %8469, %8470
  br label %8474

; <label>:8474                                    ; preds = %8461, %8438
  %8475 = phi float [ %8471, %8461 ], [ %8334, %8438 ]
  %8476 = phi float [ %8472, %8461 ], [ %8335, %8438 ]
  %8477 = phi float [ %8473, %8461 ], [ %8336, %8438 ]
  %8478 = phi float [ %8463, %8461 ], [ 0.000000e+00, %8438 ]
  %8479 = fcmp fast une float %8450, 1.000000e+00
  br i1 %8479, label %8480, label %8487, !dx.controlflow.hints !161

; <label>:8480                                    ; preds = %8474
  %8481 = call float @dx.op.unary.f32(i32 23, float %8450)  ; Log(value)
  %8482 = fmul fast float %8481, 0x3FE62E4300000000
  %8483 = fmul fast float %8447, %8482
  %8484 = fsub fast float -0.000000e+00, %8483
  %8485 = fsub fast float 1.000000e+00, %8450
  %8486 = fdiv fast float %8484, %8485
  br label %8487

; <label>:8487                                    ; preds = %8480, %8474
  %8488 = phi float [ %8486, %8480 ], [ %8447, %8474 ]
  %8489 = phi float [ %8482, %8480 ], [ 0.000000e+00, %8474 ]
  %8490 = fcmp fast une float %8451, 1.000000e+00
  br i1 %8490, label %8491, label %8498, !dx.controlflow.hints !161

; <label>:8491                                    ; preds = %8487
  %8492 = call float @dx.op.unary.f32(i32 23, float %8451)  ; Log(value)
  %8493 = fmul fast float %8492, 0x3FE62E4300000000
  %8494 = fmul fast float %8448, %8493
  %8495 = fsub fast float -0.000000e+00, %8494
  %8496 = fsub fast float 1.000000e+00, %8451
  %8497 = fdiv fast float %8495, %8496
  br label %8498

; <label>:8498                                    ; preds = %8491, %8487
  %8499 = phi float [ %8497, %8491 ], [ %8448, %8487 ]
  %8500 = phi float [ %8493, %8491 ], [ 0.000000e+00, %8487 ]
  %8501 = fcmp fast une float %8452, 1.000000e+00
  br i1 %8501, label %8502, label %8509, !dx.controlflow.hints !161

; <label>:8502                                    ; preds = %8498
  %8503 = call float @dx.op.unary.f32(i32 23, float %8452)  ; Log(value)
  %8504 = fmul fast float %8503, 0x3FE62E4300000000
  %8505 = fmul fast float %8449, %8504
  %8506 = fsub fast float -0.000000e+00, %8505
  %8507 = fsub fast float 1.000000e+00, %8452
  %8508 = fdiv fast float %8506, %8507
  br label %8509

; <label>:8509                                    ; preds = %8502, %8498
  %8510 = phi float [ %8508, %8502 ], [ %8449, %8498 ]
  %8511 = phi float [ %8504, %8502 ], [ 0.000000e+00, %8498 ]
  %8512 = fmul fast float %8475, %8459
  %8513 = fmul fast float %8476, %8459
  %8514 = fmul fast float %8477, %8459
  %8515 = fmul fast float %8478, %8459
  %8516 = fmul fast float %8488, %8457
  %8517 = fmul fast float %8499, %8457
  %8518 = fmul fast float %8510, %8457
  %8519 = fmul fast float %8489, %8457
  %8520 = fmul fast float %8500, %8457
  %8521 = fmul fast float %8511, %8457
  %8522 = fadd fast float %8516, %8512
  %8523 = fadd fast float %8517, %8513
  %8524 = fadd fast float %8518, %8514
  %8525 = fadd fast float %8519, %8515
  %8526 = fadd fast float %8520, %8515
  %8527 = fadd fast float %8521, %8515
  %8528 = fcmp fast une float %8525, 0.000000e+00
  br i1 %8528, label %8529, label %8536, !dx.controlflow.hints !162

; <label>:8529                                    ; preds = %8509
  %8530 = fmul fast float %8525, 0x3FF7154760000000
  %8531 = call float @dx.op.unary.f32(i32 21, float %8530)  ; Exp(value)
  %8532 = fsub fast float 1.000000e+00, %8531
  %8533 = fmul fast float %8522, %8532
  %8534 = fsub fast float -0.000000e+00, %8533
  %8535 = fdiv fast float %8534, %8525
  br label %8536

; <label>:8536                                    ; preds = %8529, %8509
  %8537 = phi float [ %8531, %8529 ], [ 1.000000e+00, %8509 ]
  %8538 = phi float [ %8535, %8529 ], [ %8522, %8509 ]
  %8539 = fcmp fast une float %8526, 0.000000e+00
  br i1 %8539, label %8540, label %8547, !dx.controlflow.hints !162

; <label>:8540                                    ; preds = %8536
  %8541 = fmul fast float %8526, 0x3FF7154760000000
  %8542 = call float @dx.op.unary.f32(i32 21, float %8541)  ; Exp(value)
  %8543 = fsub fast float 1.000000e+00, %8542
  %8544 = fmul fast float %8523, %8543
  %8545 = fsub fast float -0.000000e+00, %8544
  %8546 = fdiv fast float %8545, %8526
  br label %8547

; <label>:8547                                    ; preds = %8540, %8536
  %8548 = phi float [ %8542, %8540 ], [ 1.000000e+00, %8536 ]
  %8549 = phi float [ %8546, %8540 ], [ %8523, %8536 ]
  %8550 = fcmp fast une float %8527, 0.000000e+00
  br i1 %8550, label %8551, label %8558, !dx.controlflow.hints !162

; <label>:8551                                    ; preds = %8547
  %8552 = fmul fast float %8527, 0x3FF7154760000000
  %8553 = call float @dx.op.unary.f32(i32 21, float %8552)  ; Exp(value)
  %8554 = fsub fast float 1.000000e+00, %8553
  %8555 = fmul fast float %8524, %8554
  %8556 = fsub fast float -0.000000e+00, %8555
  %8557 = fdiv fast float %8556, %8527
  br label %8558

; <label>:8558                                    ; preds = %8551, %8547
  %8559 = phi float [ %8553, %8551 ], [ 1.000000e+00, %8547 ]
  %8560 = phi float [ %8557, %8551 ], [ %8524, %8547 ]
  %8561 = fcmp fast ogt float %8457, %8459
  br i1 %8561, label %8562, label %8582

; <label>:8562                                    ; preds = %8558
  %8563 = fsub fast float 1.000000e+00, %8459
  %8564 = fmul fast float %8475, %8563
  %8565 = fmul fast float %8476, %8563
  %8566 = fmul fast float %8477, %8563
  %8567 = fmul fast float %8478, %8563
  %8568 = fcmp fast une float %8567, 0.000000e+00
  br i1 %8568, label %8569, label %8620, !dx.controlflow.hints !163

; <label>:8569                                    ; preds = %8562
  %8570 = fmul fast float %8567, 0x3FF7154760000000
  %8571 = call float @dx.op.unary.f32(i32 21, float %8570)  ; Exp(value)
  %8572 = fsub fast float 1.000000e+00, %8571
  %8573 = fmul fast float %8564, %8572
  %8574 = fsub fast float -0.000000e+00, %8573
  %8575 = fmul fast float %8565, %8572
  %8576 = fsub fast float -0.000000e+00, %8575
  %8577 = fmul fast float %8566, %8572
  %8578 = fsub fast float -0.000000e+00, %8577
  %8579 = fdiv fast float %8574, %8567
  %8580 = fdiv fast float %8576, %8567
  %8581 = fdiv fast float %8578, %8567
  br label %8620

; <label>:8582                                    ; preds = %8558
  %8583 = fsub fast float 1.000000e+00, %8457
  %8584 = fmul fast float %8488, %8583
  %8585 = fmul fast float %8499, %8583
  %8586 = fmul fast float %8510, %8583
  %8587 = fmul fast float %8489, %8583
  %8588 = fmul fast float %8500, %8583
  %8589 = fmul fast float %8511, %8583
  %8590 = fcmp fast une float %8587, 0.000000e+00
  br i1 %8590, label %8591, label %8598, !dx.controlflow.hints !162

; <label>:8591                                    ; preds = %8582
  %8592 = fmul fast float %8587, 0x3FF7154760000000
  %8593 = call float @dx.op.unary.f32(i32 21, float %8592)  ; Exp(value)
  %8594 = fsub fast float 1.000000e+00, %8593
  %8595 = fmul fast float %8584, %8594
  %8596 = fsub fast float -0.000000e+00, %8595
  %8597 = fdiv fast float %8596, %8587
  br label %8598

; <label>:8598                                    ; preds = %8591, %8582
  %8599 = phi float [ %8597, %8591 ], [ %8584, %8582 ]
  %8600 = phi float [ %8593, %8591 ], [ 1.000000e+00, %8582 ]
  %8601 = fcmp fast une float %8588, 0.000000e+00
  br i1 %8601, label %8602, label %8609, !dx.controlflow.hints !162

; <label>:8602                                    ; preds = %8598
  %8603 = fmul fast float %8588, 0x3FF7154760000000
  %8604 = call float @dx.op.unary.f32(i32 21, float %8603)  ; Exp(value)
  %8605 = fsub fast float 1.000000e+00, %8604
  %8606 = fmul fast float %8585, %8605
  %8607 = fsub fast float -0.000000e+00, %8606
  %8608 = fdiv fast float %8607, %8588
  br label %8609

; <label>:8609                                    ; preds = %8602, %8598
  %8610 = phi float [ %8608, %8602 ], [ %8585, %8598 ]
  %8611 = phi float [ %8604, %8602 ], [ 1.000000e+00, %8598 ]
  %8612 = fcmp fast une float %8589, 0.000000e+00
  br i1 %8612, label %8613, label %8620, !dx.controlflow.hints !162

; <label>:8613                                    ; preds = %8609
  %8614 = fmul fast float %8589, 0x3FF7154760000000
  %8615 = call float @dx.op.unary.f32(i32 21, float %8614)  ; Exp(value)
  %8616 = fsub fast float 1.000000e+00, %8615
  %8617 = fmul fast float %8586, %8616
  %8618 = fsub fast float -0.000000e+00, %8617
  %8619 = fdiv fast float %8618, %8589
  br label %8620

; <label>:8620                                    ; preds = %8613, %8609, %8569, %8562
  %8621 = phi float [ %8619, %8613 ], [ %8581, %8569 ], [ %8566, %8562 ], [ %8586, %8609 ]
  %8622 = phi float [ %8610, %8613 ], [ %8580, %8569 ], [ %8565, %8562 ], [ %8610, %8609 ]
  %8623 = phi float [ %8599, %8613 ], [ %8579, %8569 ], [ %8564, %8562 ], [ %8599, %8609 ]
  %8624 = phi float [ %8615, %8613 ], [ %8571, %8569 ], [ 1.000000e+00, %8562 ], [ 1.000000e+00, %8609 ]
  %8625 = phi float [ %8611, %8613 ], [ %8571, %8569 ], [ 1.000000e+00, %8562 ], [ %8611, %8609 ]
  %8626 = phi float [ %8600, %8613 ], [ %8571, %8569 ], [ 1.000000e+00, %8562 ], [ %8600, %8609 ]
  %8627 = fmul fast float %8626, %8538
  %8628 = fmul fast float %8625, %8549
  %8629 = fmul fast float %8624, %8560
  %8630 = fadd fast float %8627, %8623
  %8631 = fadd fast float %8628, %8622
  %8632 = fadd fast float %8629, %8621
  %8633 = fmul fast float %8626, %8537
  %8634 = fmul fast float %8625, %8548
  %8635 = fmul fast float %8624, %8559
  br label %8636

; <label>:8636                                    ; preds = %8620, %8431
  %8637 = phi float [ %8635, %8620 ], [ %8437, %8431 ]
  %8638 = phi float [ %8634, %8620 ], [ %8436, %8431 ]
  %8639 = phi float [ %8633, %8620 ], [ %8435, %8431 ]
  %8640 = phi float [ %8632, %8620 ], [ %8434, %8431 ]
  %8641 = phi float [ %8631, %8620 ], [ %8433, %8431 ]
  %8642 = phi float [ %8630, %8620 ], [ %8432, %8431 ]
  %8643 = fmul fast float %8639, %7879
  %8644 = call float @dx.op.dot3.f32(i32 55, float %8639, float %8638, float %8637, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8645 = call float @dx.op.dot3.f32(i32 55, float %8642, float %8641, float %8640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8646 = select i1 %215, float %8644, float %8639
  %8647 = select i1 %215, float %8644, float %8638
  %8648 = select i1 %215, float 1.000000e+00, float %8637
  %8649 = select i1 %215, float %8645, float %8642
  %8650 = select i1 %215, float 0.000000e+00, float %8641
  %8651 = select i1 %215, float 0.000000e+00, float %8640
  %8652 = fmul fast float %8646, %7873
  %8653 = fmul fast float %8647, %7874
  %8654 = fmul fast float %8648, %7875
  %8655 = fadd fast float %8652, %8649
  %8656 = fadd fast float %8653, %8650
  %8657 = fadd fast float %8651, %8654
  %8658 = fmul fast float %8646, %7876
  %8659 = fmul fast float %8647, %7877
  %8660 = fmul fast float %8648, %7878
  %8661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8662 = extractvalue %dx.types.CBufRet.i32 %8661, 0
  %8663 = icmp eq i32 %8662, 0
  br i1 %8663, label %9028, label %8664, !dx.controlflow.hints !164

; <label>:8664                                    ; preds = %8636
  %8665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8666 = extractvalue %dx.types.CBufRet.f32 %8665, 2
  %8667 = extractvalue %dx.types.CBufRet.f32 %8665, 3
  %8668 = fmul fast float %8666, %99
  %8669 = fmul fast float %8667, %100
  %8670 = fmul fast float %8668, 2.000000e+00
  %8671 = fmul fast float %8669, 2.000000e+00
  %8672 = fsub fast float 1.000000e+00, %8670
  %8673 = fsub fast float 1.000000e+00, %8671
  %8674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8675 = extractvalue %dx.types.CBufRet.f32 %8674, 0
  %8676 = extractvalue %dx.types.CBufRet.f32 %8674, 1
  %8677 = extractvalue %dx.types.CBufRet.f32 %8674, 2
  %8678 = fmul fast float %8672, %8675
  %8679 = fmul fast float %8672, %8676
  %8680 = fmul fast float %8672, %8677
  %8681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8682 = extractvalue %dx.types.CBufRet.f32 %8681, 0
  %8683 = extractvalue %dx.types.CBufRet.f32 %8681, 1
  %8684 = extractvalue %dx.types.CBufRet.f32 %8681, 2
  %8685 = fmul fast float %8673, %8682
  %8686 = fmul fast float %8673, %8683
  %8687 = fmul fast float %8673, %8684
  %8688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8689 = extractvalue %dx.types.CBufRet.f32 %8688, 0
  %8690 = extractvalue %dx.types.CBufRet.f32 %8688, 1
  %8691 = extractvalue %dx.types.CBufRet.f32 %8688, 2
  %8692 = fadd fast float %8685, %8689
  %8693 = fadd fast float %8692, %8678
  %8694 = fadd fast float %8686, %8690
  %8695 = fadd fast float %8694, %8679
  %8696 = fadd fast float %8687, %8691
  %8697 = fadd fast float %8696, %8680
  %8698 = fmul fast float %8693, %7872
  %8699 = fmul fast float %8695, %7872
  %8700 = fmul fast float %8697, %7872
  %8701 = fmul fast float %8698, %8698
  %8702 = fmul fast float %8699, %8699
  %8703 = fadd fast float %8701, %8702
  %8704 = fmul fast float %8700, %8700
  %8705 = fadd fast float %8703, %8704
  %8706 = call float @dx.op.unary.f32(i32 24, float %8705)  ; Sqrt(value)
  %8707 = extractvalue %dx.types.CBufRet.f32 %7602, 0
  %8708 = fsub fast float %8706, %8707
  %8709 = extractvalue %dx.types.CBufRet.f32 %7602, 2
  %8710 = fmul fast float %8708, %8709
  %8711 = call float @dx.op.unary.f32(i32 7, float %8710)  ; Saturate(value)
  %8712 = fadd fast float %8711, -5.000000e-01
  %8713 = fmul fast float %8712, 2.000000e+00
  %8714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8715 = extractvalue %dx.types.CBufRet.f32 %8714, 2
  %8716 = call float @dx.op.binary.f32(i32 36, float %8715, float %8713)  ; FMin(a,b)
  %8717 = fsub fast float -0.000000e+00, %8715
  %8718 = fcmp fast ogt float %8716, %8717
  br i1 %8718, label %8719, label %9028, !dx.controlflow.hints !165

; <label>:8719                                    ; preds = %8664
  %8720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8721 = extractvalue %dx.types.CBufRet.f32 %8720, 3
  %8722 = fcmp fast ogt float %8721, 0.000000e+00
  br i1 %8722, label %8723, label %8798, !dx.controlflow.hints !166

; <label>:8723                                    ; preds = %8719
  %8724 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %8725 = extractvalue %dx.types.Dimensions %8724, 0
  %8726 = sitofp i32 %8725 to float
  %8727 = extractvalue %dx.types.Dimensions %8724, 1
  %8728 = sitofp i32 %8727 to float
  %8729 = fmul fast float %8668, %8726
  %8730 = fmul fast float %8669, %8728
  %8731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8732 = extractvalue %dx.types.CBufRet.f32 %8731, 1
  %8733 = fsub fast float -0.000000e+00, %8732
  %8734 = fptoui float %8733 to i32
  %8735 = fptoui float %8729 to i32
  %8736 = fptoui float %8730 to i32
  %8737 = and i32 %8734, 31
  %8738 = lshr i32 %8735, %8737
  %8739 = lshr i32 %8736, %8737
  %8740 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %8734, i32 %8738, i32 %8739, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8741 = extractvalue %dx.types.ResRet.f32 %8740, 0
  %8742 = fcmp fast olt float %8741, -1.000000e+00
  %8743 = fcmp fast ogt float %8741, -1.000000e+00
  %8744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8745 = extractvalue %dx.types.CBufRet.f32 %8744, 1
  %8746 = select i1 %8743, float %8745, float 1.000000e+00
  %8747 = fadd fast float %8741, 1.000000e+00
  %8748 = fmul fast float %8746, %8747
  %8749 = call float @dx.op.unary.f32(i32 6, float %8748)  ; FAbs(value)
  %8750 = extractvalue %dx.types.CBufRet.f32 %8744, 3
  %8751 = fcmp fast oge float %8749, %8750
  %8752 = select i1 %8751, float 0x4197782600000000, float %8749
  %8753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8754 = extractvalue %dx.types.CBufRet.f32 %8753, 0
  %8755 = extractvalue %dx.types.CBufRet.f32 %8753, 1
  %8756 = extractvalue %dx.types.CBufRet.f32 %8753, 2
  %8757 = select i1 %8742, float %8754, float %8675
  %8758 = select i1 %8742, float %8755, float %8676
  %8759 = select i1 %8742, float %8756, float %8677
  %8760 = fmul fast float %8757, %8672
  %8761 = fmul fast float %8758, %8672
  %8762 = fmul fast float %8759, %8672
  %8763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8764 = extractvalue %dx.types.CBufRet.f32 %8763, 0
  %8765 = extractvalue %dx.types.CBufRet.f32 %8763, 1
  %8766 = extractvalue %dx.types.CBufRet.f32 %8763, 2
  %8767 = select i1 %8742, float %8764, float %8682
  %8768 = select i1 %8742, float %8765, float %8683
  %8769 = select i1 %8742, float %8766, float %8684
  %8770 = fmul fast float %8767, %8673
  %8771 = fmul fast float %8768, %8673
  %8772 = fmul fast float %8769, %8673
  %8773 = fadd fast float %8770, %8760
  %8774 = fadd fast float %8771, %8761
  %8775 = fadd fast float %8772, %8762
  %8776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8777 = extractvalue %dx.types.CBufRet.f32 %8776, 0
  %8778 = extractvalue %dx.types.CBufRet.f32 %8776, 1
  %8779 = extractvalue %dx.types.CBufRet.f32 %8776, 2
  %8780 = select i1 %8742, float %8777, float %8689
  %8781 = select i1 %8742, float %8778, float %8690
  %8782 = select i1 %8742, float %8779, float %8691
  %8783 = fadd fast float %8773, %8780
  %8784 = fadd fast float %8774, %8781
  %8785 = fadd fast float %8775, %8782
  %8786 = fmul fast float %8783, %8752
  %8787 = fmul fast float %8784, %8752
  %8788 = fmul fast float %8785, %8752
  %8789 = fmul fast float %8786, %8786
  %8790 = fmul fast float %8787, %8787
  %8791 = fadd fast float %8789, %8790
  %8792 = fmul fast float %8788, %8788
  %8793 = fadd fast float %8791, %8792
  %8794 = call float @dx.op.unary.f32(i32 24, float %8793)  ; Sqrt(value)
  %8795 = fsub fast float %8794, %8707
  %8796 = fmul fast float %8795, %8709
  %8797 = call float @dx.op.unary.f32(i32 7, float %8796)  ; Saturate(value)
  br label %8798

; <label>:8798                                    ; preds = %8723, %8719
  %8799 = phi float [ %8797, %8723 ], [ 1.000000e+00, %8719 ]
  %8800 = fmul fast float %8716, 5.000000e-01
  %8801 = fadd fast float %8800, 5.000000e-01
  %8802 = call float @dx.op.unary.f32(i32 22, float %8801)  ; Frc(value)
  %8803 = call float @dx.op.unary.f32(i32 27, float %8802)  ; Round_ni(value)
  %8804 = call float @dx.op.unary.f32(i32 22, float %8802)  ; Frc(value)
  %8805 = fmul fast float %8804, 2.000000e+00
  %8806 = fadd fast float %8805, -1.000000e+00
  %8807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %8668, float %8669, float %8803, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8808 = extractvalue %dx.types.ResRet.f32 %8807, 0
  %8809 = extractvalue %dx.types.ResRet.f32 %8807, 1
  %8810 = extractvalue %dx.types.ResRet.f32 %8807, 2
  %8811 = extractvalue %dx.types.ResRet.f32 %8807, 3
  %8812 = fadd fast float %8808, -5.000000e-01
  %8813 = fadd fast float %8810, -5.000000e-01
  %8814 = fmul fast float %8812, 0xBFD5555560000000
  %8815 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %8813, float %8814)  ; FMad(a,b,c)
  %8816 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %8809, float 0.000000e+00)  ; FMad(a,b,c)
  %8817 = fadd fast float %8816, %8811
  %8818 = fmul fast float %8812, -7.500000e-01
  %8819 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %8813, float %8818)  ; FMad(a,b,c)
  %8820 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %8809, float 0.000000e+00)  ; FMad(a,b,c)
  %8821 = fadd fast float %8820, %8811
  %8822 = call float @dx.op.binary.f32(i32 35, float %8815, float -1.000000e+00)  ; FMax(a,b)
  %8823 = call float @dx.op.binary.f32(i32 35, float %8817, float -1.000000e+00)  ; FMax(a,b)
  %8824 = call float @dx.op.binary.f32(i32 35, float %8819, float -1.000000e+00)  ; FMax(a,b)
  %8825 = call float @dx.op.binary.f32(i32 35, float %8821, float -1.000000e+00)  ; FMax(a,b)
  %8826 = call float @dx.op.binary.f32(i32 36, float %8822, float 1.000000e+00)  ; FMin(a,b)
  %8827 = call float @dx.op.binary.f32(i32 36, float %8823, float 1.000000e+00)  ; FMin(a,b)
  %8828 = call float @dx.op.binary.f32(i32 36, float %8824, float 1.000000e+00)  ; FMin(a,b)
  %8829 = call float @dx.op.binary.f32(i32 36, float %8825, float 1.000000e+00)  ; FMin(a,b)
  %8830 = fcmp fast olt float %8826, 0x3FEFFF8020000000
  br i1 %8830, label %8831, label %8946, !dx.controlflow.hints !167

; <label>:8831                                    ; preds = %8798
  %8832 = extractvalue %dx.types.CBufRet.f32 %8714, 3
  %8833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %8834 = extractvalue %dx.types.CBufRet.f32 %8833, 0
  %8835 = extractvalue %dx.types.CBufRet.f32 %8833, 1
  %8836 = extractvalue %dx.types.CBufRet.f32 %8833, 2
  %8837 = extractvalue %dx.types.CBufRet.f32 %8833, 3
  %8838 = fsub fast float %8834, %8826
  %8839 = fsub fast float %8835, %8827
  %8840 = fsub fast float %8836, %8828
  %8841 = fsub fast float %8837, %8829
  %8842 = fmul fast float %8838, %8832
  %8843 = fmul fast float %8839, %8832
  %8844 = fmul fast float %8840, %8832
  %8845 = fmul fast float %8841, %8832
  %8846 = fadd fast float %8842, %8826
  %8847 = fadd fast float %8843, %8827
  %8848 = fsub fast float -0.000000e+00, %8847
  %8849 = fadd fast float %8844, %8828
  %8850 = fadd fast float %8845, %8829
  %8851 = fmul fast float %8846, %8846
  %8852 = fsub fast float %8847, %8851
  %8853 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8852)  ; FMax(a,b)
  %8854 = fdiv fast float 1.000000e+00, %8853
  %8855 = fmul fast float %8847, %8846
  %8856 = fsub fast float %8849, %8855
  %8857 = fsub fast float %8806, %8846
  %8858 = fmul fast float %8806, %8806
  %8859 = fsub fast float %8858, %8847
  %8860 = fmul fast float %8857, %8854
  %8861 = fmul fast float %8860, %8856
  %8862 = fsub fast float %8859, %8861
  %8863 = fmul fast float %8847, %8847
  %8864 = fsub fast float %8850, %8863
  %8865 = fmul fast float %8856, %8856
  %8866 = fmul fast float %8865, %8854
  %8867 = fsub fast float %8864, %8866
  %8868 = fdiv fast float %8862, %8867
  %8869 = fmul fast float %8856, %8868
  %8870 = fsub fast float %8857, %8869
  %8871 = fmul fast float %8870, %8854
  %8872 = fmul fast float %8871, %8846
  %8873 = fsub fast float 1.000000e+00, %8872
  %8874 = fmul fast float %8847, %8868
  %8875 = fsub fast float %8873, %8874
  %8876 = fmul fast float %8871, %8871
  %8877 = fmul fast float %8868, 4.000000e+00
  %8878 = fmul fast float %8877, %8875
  %8879 = fsub fast float %8876, %8878
  %8880 = call float @dx.op.unary.f32(i32 24, float %8879)  ; Sqrt(value)
  %8881 = fcmp fast oge float %8871, 0.000000e+00
  %8882 = fsub fast float -0.000000e+00, %8880
  %8883 = select i1 %8881, float %8882, float %8880
  %8884 = fsub fast float %8883, %8871
  %8885 = fdiv fast float %8884, %8868
  %8886 = fdiv fast float %8875, %8884
  %8887 = fmul fast float %8885, 5.000000e-01
  %8888 = fmul fast float %8886, 2.000000e+00
  %8889 = select i1 %8881, float %8887, float %8888
  %8890 = select i1 %8881, float %8888, float %8887
  %8891 = call float @dx.op.binary.f32(i32 35, float %8889, float %8890)  ; FMax(a,b)
  %8892 = call float @dx.op.binary.f32(i32 36, float %8889, float %8890)  ; FMin(a,b)
  %8893 = fcmp fast ogt float %8806, %8892
  br i1 %8893, label %8894, label %8904

; <label>:8894                                    ; preds = %8831
  %8895 = fsub fast float %8806, %8892
  %8896 = fsub fast float %8891, %8892
  %8897 = fmul fast float %8895, %8896
  %8898 = fmul fast float %8891, %8806
  %8899 = fadd fast float %8891, %8806
  %8900 = fmul fast float %8899, %8846
  %8901 = fadd fast float %8898, %8847
  %8902 = fsub fast float %8901, %8900
  %8903 = fdiv fast float %8902, %8897
  br label %8904

; <label>:8904                                    ; preds = %8894, %8831
  %8905 = phi float [ %8903, %8894 ], [ 0.000000e+00, %8831 ]
  %8906 = fcmp fast ogt float %8806, %8891
  %8907 = fsub fast float %8806, %8891
  br i1 %8906, label %8908, label %8918

; <label>:8908                                    ; preds = %8904
  %8909 = fsub fast float %8891, %8892
  %8910 = fmul fast float %8909, %8907
  %8911 = fmul fast float %8892, %8806
  %8912 = fadd fast float %8892, %8806
  %8913 = fmul fast float %8912, %8846
  %8914 = fsub fast float %8848, %8911
  %8915 = fadd fast float %8914, %8913
  %8916 = fdiv fast float %8915, %8910
  %8917 = fadd fast float %8916, %8905
  br label %8918

; <label>:8918                                    ; preds = %8908, %8904
  %8919 = phi float [ %8917, %8908 ], [ %8905, %8904 ]
  %8920 = fsub fast float %8806, %8892
  %8921 = fmul fast float %8920, %8907
  %8922 = fmul fast float %8892, %8891
  %8923 = fadd fast float %8892, %8891
  %8924 = fmul fast float %8923, %8846
  %8925 = fadd fast float %8922, %8847
  %8926 = fsub fast float %8925, %8924
  %8927 = fdiv fast float %8926, %8921
  %8928 = call float @dx.op.unary.f32(i32 7, float %8919)  ; Saturate(value)
  %8929 = fcmp fast oeq float %7603, 0.000000e+00
  %8930 = extractvalue %dx.types.CBufRet.f32 %8714, 0
  %8931 = fcmp fast oeq float %8930, 0.000000e+00
  %8932 = or i1 %8929, %8931
  %8933 = fmul fast float %8930, 2.000000e+00
  %8934 = fadd fast float %8715, %8716
  %8935 = fdiv fast float %8934, %8933
  %8936 = call float @dx.op.unary.f32(i32 7, float %8935)  ; Saturate(value)
  %8937 = fmul fast float %8936, 2.000000e+00
  %8938 = fsub fast float 3.000000e+00, %8937
  %8939 = fmul fast float %8936, %8936
  %8940 = fmul fast float %8939, %8938
  %8941 = select i1 %8932, float 1.000000e+00, float %8940
  %8942 = fmul fast float %8927, %7603
  %8943 = fadd fast float %8928, %8942
  %8944 = call float @dx.op.unary.f32(i32 7, float %8943)  ; Saturate(value)
  %8945 = fmul fast float %8941, %8944
  br label %8946

; <label>:8946                                    ; preds = %8918, %8798
  %8947 = phi float [ %8945, %8918 ], [ 0.000000e+00, %8798 ]
  %8948 = fsub fast float 1.000000e+00, %8947
  %8949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %8668, float %8669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8950 = extractvalue %dx.types.ResRet.f32 %8949, 0
  %8951 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8952 = extractvalue %dx.types.CBufRet.i32 %8951, 2
  %8953 = icmp eq i32 %8952, 0
  br i1 %8953, label %8959, label %8954

; <label>:8954                                    ; preds = %8946
  %8955 = call float @dx.op.unary.f32(i32 7, float %8947)  ; Saturate(value)
  %8956 = fadd fast float %8950, -1.000000e+00
  %8957 = fmul fast float %8955, %8956
  %8958 = fadd fast float %8957, 1.000000e+00
  br label %8959

; <label>:8959                                    ; preds = %8954, %8946
  %8960 = phi float [ %8958, %8954 ], [ %8948, %8946 ]
  br i1 %8722, label %8961, label %8979

; <label>:8961                                    ; preds = %8959
  %8962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8963 = extractvalue %dx.types.CBufRet.f32 %8962, 1
  %8964 = fsub fast float %8799, %8963
  %8965 = call float @dx.op.unary.f32(i32 7, float %8964)  ; Saturate(value)
  %8966 = fsub fast float %8799, %8721
  %8967 = call float @dx.op.unary.f32(i32 7, float %8966)  ; Saturate(value)
  %8968 = fsub fast float %8965, %8967
  %8969 = fsub fast float %8801, %8967
  %8970 = fdiv fast float %8969, %8968
  %8971 = call float @dx.op.unary.f32(i32 7, float %8970)  ; Saturate(value)
  %8972 = fmul fast float %8971, 2.000000e+00
  %8973 = fsub fast float 3.000000e+00, %8972
  %8974 = fsub fast float %8950, %8960
  %8975 = fmul fast float %8971, %8971
  %8976 = fmul fast float %8975, %8974
  %8977 = fmul fast float %8976, %8973
  %8978 = fadd fast float %8977, %8960
  br label %8979

; <label>:8979                                    ; preds = %8961, %8959
  %8980 = phi float [ %8978, %8961 ], [ %8960, %8959 ]
  %8981 = call float @dx.op.binary.f32(i32 35, float %8950, float %8980)  ; FMax(a,b)
  %8982 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8983 = extractvalue %dx.types.CBufRet.i32 %8982, 2
  %8984 = and i32 %8983, 1
  %8985 = icmp eq i32 %8984, 0
  %8986 = fcmp fast une float %8981, 1.000000e+00
  %8987 = and i1 %8986, %8985
  br i1 %8987, label %8988, label %9007

; <label>:8988                                    ; preds = %8979
  %8989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %8668, float %8669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8990 = extractvalue %dx.types.ResRet.f32 %8989, 0
  %8991 = extractvalue %dx.types.ResRet.f32 %8989, 1
  %8992 = extractvalue %dx.types.ResRet.f32 %8989, 2
  %8993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8994 = extractvalue %dx.types.CBufRet.f32 %8993, 1
  %8995 = fmul fast float %8994, %8990
  %8996 = fmul fast float %8994, %8991
  %8997 = fmul fast float %8994, %8992
  %8998 = fcmp fast ogt float %8950, 0x3FEFFF2E40000000
  %8999 = fsub fast float 1.000000e+00, %8981
  %9000 = fsub fast float 1.000000e+00, %8950
  %9001 = fdiv fast float %8999, %9000
  %9002 = call float @dx.op.unary.f32(i32 7, float %9001)  ; Saturate(value)
  %9003 = select i1 %8998, float 0.000000e+00, float %9002
  %9004 = fmul fast float %8995, %9003
  %9005 = fmul fast float %8996, %9003
  %9006 = fmul fast float %8997, %9003
  br label %9007

; <label>:9007                                    ; preds = %8988, %8979
  %9008 = phi float [ 0.000000e+00, %8979 ], [ %9004, %8988 ]
  %9009 = phi float [ 0.000000e+00, %8979 ], [ %9005, %8988 ]
  %9010 = phi float [ 0.000000e+00, %8979 ], [ %9006, %8988 ]
  %9011 = fmul fast float %8981, %8643
  %9012 = call float @dx.op.dot3.f32(i32 55, float %8981, float %8981, float %8981, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9013 = call float @dx.op.dot3.f32(i32 55, float %9008, float %9009, float %9010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9014 = select i1 %215, float %9012, float %8981
  %9015 = select i1 %215, float 1.000000e+00, float %8981
  %9016 = select i1 %215, float %9013, float %9008
  %9017 = select i1 %215, float 0.000000e+00, float %9009
  %9018 = select i1 %215, float 0.000000e+00, float %9010
  %9019 = fmul fast float %9014, %8655
  %9020 = fmul fast float %9014, %8656
  %9021 = fmul fast float %9015, %8657
  %9022 = fadd fast float %9019, %9016
  %9023 = fadd fast float %9020, %9017
  %9024 = fadd fast float %9018, %9021
  %9025 = fmul fast float %9014, %8658
  %9026 = fmul fast float %9014, %8659
  %9027 = fmul fast float %9015, %8660
  br label %9028

; <label>:9028                                    ; preds = %9007, %8664, %8636, %7868
  %9029 = phi float [ %7873, %7868 ], [ %8655, %8636 ], [ %9022, %9007 ], [ %8655, %8664 ]
  %9030 = phi float [ %7874, %7868 ], [ %8656, %8636 ], [ %9023, %9007 ], [ %8656, %8664 ]
  %9031 = phi float [ %7875, %7868 ], [ %8657, %8636 ], [ %9024, %9007 ], [ %8657, %8664 ]
  %9032 = phi float [ %7876, %7868 ], [ %8658, %8636 ], [ %9025, %9007 ], [ %8658, %8664 ]
  %9033 = phi float [ %7877, %7868 ], [ %8659, %8636 ], [ %9026, %9007 ], [ %8659, %8664 ]
  %9034 = phi float [ %7878, %7868 ], [ %8660, %8636 ], [ %9027, %9007 ], [ %8660, %8664 ]
  %9035 = phi float [ %7879, %7868 ], [ %8643, %8636 ], [ %9011, %9007 ], [ %8643, %8664 ]
  %9036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9037 = extractvalue %dx.types.CBufRet.f32 %9036, 2
  %9038 = extractvalue %dx.types.CBufRet.f32 %9036, 3
  %9039 = fmul fast float %9037, %99
  %9040 = fmul fast float %9038, %100
  %9041 = call float @dx.op.unary.f32(i32 7, float %9039)  ; Saturate(value)
  %9042 = call float @dx.op.unary.f32(i32 7, float %9040)  ; Saturate(value)
  %9043 = select i1 %7613, i32 2, i32 0
  %9044 = or i32 %9043, 1
  %9045 = uitofp i32 %9044 to float
  %9046 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %9041, float %9042, float %9045, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9047 = extractvalue %dx.types.ResRet.f32 %9046, 0
  %9048 = extractvalue %dx.types.ResRet.f32 %9046, 1
  %9049 = extractvalue %dx.types.ResRet.f32 %9046, 2
  %9050 = extractvalue %dx.types.ResRet.f32 %9046, 3
  %9051 = add nuw nsw i32 %9043, 2
  %9052 = uitofp i32 %9051 to float
  %9053 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %9041, float %9042, float %9052, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9054 = extractvalue %dx.types.ResRet.f32 %9053, 0
  %9055 = extractvalue %dx.types.ResRet.f32 %9053, 1
  %9056 = extractvalue %dx.types.ResRet.f32 %9053, 2
  %9057 = extractvalue %dx.types.ResRet.f32 %9053, 3
  %9058 = call float @dx.op.binary.f32(i32 35, float %9048, float %9049)  ; FMax(a,b)
  %9059 = call float @dx.op.binary.f32(i32 35, float %9047, float %9058)  ; FMax(a,b)
  %9060 = call float @dx.op.binary.f32(i32 35, float %9059, float %9050)  ; FMax(a,b)
  %9061 = call float @dx.op.binary.f32(i32 36, float %9055, float %9056)  ; FMin(a,b)
  %9062 = call float @dx.op.binary.f32(i32 36, float %9054, float %9061)  ; FMin(a,b)
  %9063 = call float @dx.op.binary.f32(i32 36, float %9062, float %9057)  ; FMin(a,b)
  %9064 = fmul fast float %9060, 2.550000e+02
  %9065 = fadd fast float %9064, 0x3F70101020000000
  %9066 = fptoui float %9065 to i32
  %9067 = fmul fast float %9063, 2.550000e+02
  %9068 = fadd fast float %9067, 0x3F70101020000000
  %9069 = fptoui float %9068 to i32
  %9070 = icmp ult i32 %9066, %9069
  br i1 %9070, label %9071, label %9240

; <label>:9071                                    ; preds = %9028
  %9072 = fcmp fast ogt float %86, 9.843750e-01
  %9073 = fadd fast float %7872, -4.000000e+00
  %9074 = select i1 %9072, float -4.000000e+00, float %9073
  %9075 = call float @dx.op.binary.f32(i32 35, float %9074, float 0.000000e+00)  ; FMax(a,b)
  %9076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9077 = extractvalue %dx.types.CBufRet.f32 %9076, 0
  %9078 = fadd fast float %9077, %9075
  %9079 = extractvalue %dx.types.CBufRet.f32 %9076, 2
  %9080 = fmul fast float %9078, %9079
  %9081 = call float @dx.op.unary.f32(i32 23, float %9080)  ; Log(value)
  %9082 = extractvalue %dx.types.CBufRet.f32 %9076, 3
  %9083 = fmul fast float %9082, %9081
  %9084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.f32 %9084, 2
  %9086 = fmul fast float %9083, %9085
  %9087 = call float @dx.op.unary.f32(i32 7, float %9086)  ; Saturate(value)
  %9088 = uitofp i32 %9066 to float
  %9089 = uitofp i32 %9069 to float
  %9090 = fadd fast float %9088, 5.000000e-01
  %9091 = fadd fast float %9089, 5.000000e-01
  %9092 = fmul fast float %9085, %9090
  %9093 = fmul fast float %9085, %9091
  %9094 = fadd fast float %9092, 0x3F0FFB4800000000
  %9095 = fadd fast float %9093, 0xBF0FFB4800000000
  %9096 = call float @dx.op.binary.f32(i32 35, float %9087, float %9094)  ; FMax(a,b)
  %9097 = call float @dx.op.binary.f32(i32 36, float %9096, float %9095)  ; FMin(a,b)
  %9098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9099 = extractvalue %dx.types.CBufRet.f32 %9098, 1
  %9100 = extractvalue %dx.types.CBufRet.f32 %9098, 2
  %9101 = extractvalue %dx.types.CBufRet.f32 %9098, 0
  %9102 = select i1 %7613, float %9101, float 0.000000e+00
  %9103 = fmul fast float %9099, %9097
  %9104 = fadd fast float %9102, %9103
  %9105 = fadd fast float %9102, %9100
  %9106 = fsub fast float %9099, %9100
  %9107 = fadd fast float %9106, %9102
  %9108 = call float @dx.op.binary.f32(i32 35, float %9104, float %9105)  ; FMax(a,b)
  %9109 = call float @dx.op.binary.f32(i32 36, float %9108, float %9107)  ; FMin(a,b)
  %9110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %9041, float %9042, float %9109, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9111 = extractvalue %dx.types.ResRet.f32 %9110, 0
  %9112 = extractvalue %dx.types.ResRet.f32 %9110, 1
  %9113 = extractvalue %dx.types.ResRet.f32 %9110, 2
  %9114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9115 = extractvalue %dx.types.CBufRet.i32 %9114, 0
  %9116 = extractvalue %dx.types.CBufRet.i32 %9114, 1
  %9117 = uitofp i32 %9115 to float
  %9118 = uitofp i32 %9116 to float
  %9119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9120 = extractvalue %dx.types.CBufRet.f32 %9119, 0
  %9121 = extractvalue %dx.types.CBufRet.f32 %9119, 1
  %9122 = fmul fast float %9117, %9041
  %9123 = fmul fast float %9118, %9042
  %9124 = fadd fast float %9122, -5.000000e-01
  %9125 = fadd fast float %9123, -5.000000e-01
  %9126 = call float @dx.op.unary.f32(i32 22, float %9124)  ; Frc(value)
  %9127 = call float @dx.op.unary.f32(i32 22, float %9125)  ; Frc(value)
  %9128 = fmul fast float %9126, %9126
  %9129 = fmul fast float %9128, %9126
  %9130 = fsub fast float 3.000000e+00, %9126
  %9131 = fmul fast float %9128, %9130
  %9132 = fmul fast float %9126, 3.000000e+00
  %9133 = fmul fast float %9129, 3.000000e+00
  %9134 = fmul fast float %9128, 6.000000e+00
  %9135 = fsub fast float %9133, %9134
  %9136 = fadd fast float %9135, 4.000000e+00
  %9137 = fmul fast float %9136, 0x3FC5555560000000
  %9138 = fmul fast float %9129, -3.000000e+00
  %9139 = fadd fast float %9128, %9126
  %9140 = fmul fast float %9139, 3.000000e+00
  %9141 = fadd fast float %9138, 1.000000e+00
  %9142 = fadd fast float %9141, %9140
  %9143 = fmul fast float %9129, 0x3FC5555560000000
  %9144 = fmul fast float %9127, %9127
  %9145 = fmul fast float %9144, %9127
  %9146 = fsub fast float 3.000000e+00, %9127
  %9147 = fmul fast float %9144, %9146
  %9148 = fmul fast float %9127, 3.000000e+00
  %9149 = fmul fast float %9145, 3.000000e+00
  %9150 = fmul fast float %9144, 6.000000e+00
  %9151 = fsub fast float %9149, %9150
  %9152 = fadd fast float %9151, 4.000000e+00
  %9153 = fmul fast float %9152, 0x3FC5555560000000
  %9154 = fmul fast float %9145, -3.000000e+00
  %9155 = fadd fast float %9144, %9127
  %9156 = fmul fast float %9155, 3.000000e+00
  %9157 = fadd fast float %9154, 1.000000e+00
  %9158 = fadd fast float %9157, %9156
  %9159 = fmul fast float %9145, 0x3FC5555560000000
  %9160 = fadd fast float %9126, 1.000000e+00
  %9161 = fsub fast float 1.000000e+00, %9132
  %9162 = fadd fast float %9161, %9131
  %9163 = fadd fast float %9162, %9136
  %9164 = fmul fast float %9163, 0x3FC5555560000000
  %9165 = fdiv fast float %9137, %9164
  %9166 = fsub fast float %9160, %9165
  %9167 = fsub fast float 1.000000e+00, %9126
  %9168 = fadd fast float %9142, %9129
  %9169 = fmul fast float %9168, 0x3FC5555560000000
  %9170 = fdiv fast float %9143, %9169
  %9171 = fadd fast float %9167, %9170
  %9172 = fadd fast float %9127, 1.000000e+00
  %9173 = fsub fast float 1.000000e+00, %9148
  %9174 = fadd fast float %9173, %9147
  %9175 = fadd fast float %9174, %9152
  %9176 = fmul fast float %9175, 0x3FC5555560000000
  %9177 = fdiv fast float %9153, %9176
  %9178 = fsub fast float %9172, %9177
  %9179 = fsub fast float 1.000000e+00, %9127
  %9180 = fadd fast float %9158, %9145
  %9181 = fmul fast float %9180, 0x3FC5555560000000
  %9182 = fdiv fast float %9159, %9181
  %9183 = fadd fast float %9182, %9179
  %9184 = fmul fast float %9166, %9120
  %9185 = fsub fast float %9041, %9184
  %9186 = fmul fast float %9171, %9120
  %9187 = fadd fast float %9186, %9041
  %9188 = fmul fast float %9183, %9121
  %9189 = fadd fast float %9188, %9042
  %9190 = fmul fast float %9178, %9121
  %9191 = fsub fast float %9042, %9190
  %9192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9185, float %9191, float %9109, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9193 = extractvalue %dx.types.ResRet.f32 %9192, 0
  %9194 = extractvalue %dx.types.ResRet.f32 %9192, 1
  %9195 = extractvalue %dx.types.ResRet.f32 %9192, 2
  %9196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9187, float %9191, float %9109, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9197 = extractvalue %dx.types.ResRet.f32 %9196, 0
  %9198 = extractvalue %dx.types.ResRet.f32 %9196, 1
  %9199 = extractvalue %dx.types.ResRet.f32 %9196, 2
  %9200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9185, float %9189, float %9109, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9201 = extractvalue %dx.types.ResRet.f32 %9200, 0
  %9202 = extractvalue %dx.types.ResRet.f32 %9200, 1
  %9203 = extractvalue %dx.types.ResRet.f32 %9200, 2
  %9204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9187, float %9189, float %9109, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9205 = extractvalue %dx.types.ResRet.f32 %9204, 0
  %9206 = extractvalue %dx.types.ResRet.f32 %9204, 1
  %9207 = extractvalue %dx.types.ResRet.f32 %9204, 2
  %9208 = fsub fast float %9201, %9193
  %9209 = fsub fast float %9202, %9194
  %9210 = fsub fast float %9203, %9195
  %9211 = fmul fast float %9208, %9181
  %9212 = fmul fast float %9209, %9181
  %9213 = fmul fast float %9210, %9181
  %9214 = fadd fast float %9211, %9193
  %9215 = fadd fast float %9212, %9194
  %9216 = fadd fast float %9213, %9195
  %9217 = fsub fast float %9205, %9197
  %9218 = fsub fast float %9206, %9198
  %9219 = fsub fast float %9207, %9199
  %9220 = fmul fast float %9217, %9181
  %9221 = fmul fast float %9218, %9181
  %9222 = fmul fast float %9219, %9181
  %9223 = fsub fast float %9197, %9214
  %9224 = fadd fast float %9223, %9220
  %9225 = fsub fast float %9198, %9215
  %9226 = fadd fast float %9225, %9221
  %9227 = fsub fast float %9199, %9216
  %9228 = fadd fast float %9227, %9222
  %9229 = fmul fast float %9224, %9169
  %9230 = fmul fast float %9226, %9169
  %9231 = fmul fast float %9228, %9169
  %9232 = fadd fast float %9229, %9214
  %9233 = fadd fast float %9230, %9215
  %9234 = fadd fast float %9231, %9216
  %9235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9236 = extractvalue %dx.types.CBufRet.f32 %9235, 1
  %9237 = fmul fast float %9232, %9236
  %9238 = fmul fast float %9233, %9236
  %9239 = fmul fast float %9234, %9236
  br label %9240

; <label>:9240                                    ; preds = %9071, %9028
  %9241 = phi float [ %9111, %9071 ], [ 1.000000e+00, %9028 ]
  %9242 = phi float [ %9112, %9071 ], [ 1.000000e+00, %9028 ]
  %9243 = phi float [ %9113, %9071 ], [ 1.000000e+00, %9028 ]
  %9244 = phi float [ %9237, %9071 ], [ 0.000000e+00, %9028 ]
  %9245 = phi float [ %9238, %9071 ], [ 0.000000e+00, %9028 ]
  %9246 = phi float [ %9239, %9071 ], [ 0.000000e+00, %9028 ]
  %9247 = fmul fast float %9241, %9035
  %9248 = call float @dx.op.dot3.f32(i32 55, float %9241, float %9242, float %9243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9249 = call float @dx.op.dot3.f32(i32 55, float %9244, float %9245, float %9246, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9250 = select i1 %215, float %9248, float %9241
  %9251 = select i1 %215, float %9248, float %9242
  %9252 = select i1 %215, float 1.000000e+00, float %9243
  %9253 = select i1 %215, float %9249, float %9244
  %9254 = select i1 %215, float 0.000000e+00, float %9245
  %9255 = select i1 %215, float 0.000000e+00, float %9246
  %9256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9257 = extractvalue %dx.types.CBufRet.i32 %9256, 3
  %9258 = and i32 %9257, 3
  %9259 = icmp ne i32 %9258, 0
  %9260 = and i32 %9257, 4
  %9261 = icmp ne i32 %9260, 0
  %9262 = and i1 %9259, %9261
  %9263 = and i1 %215, %9262
  br i1 %9263, label %9264, label %9270

; <label>:9264                                    ; preds = %9240
  %9265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9266 = extractvalue %dx.types.CBufRet.f32 %9265, 1
  %9267 = fadd fast float %9247, -1.000000e+00
  %9268 = fmul fast float %9266, %9267
  %9269 = fadd fast float %9268, 1.000000e+00
  br label %9270

; <label>:9270                                    ; preds = %9264, %9240
  %9271 = phi float [ %9269, %9264 ], [ %9247, %9240 ]
  %9272 = fadd fast float %9032, %9029
  %9273 = fmul fast float %9250, %9272
  %9274 = fadd fast float %9273, %9253
  %9275 = fadd fast float %9033, %9030
  %9276 = fmul fast float %9251, %9275
  %9277 = fadd fast float %9276, %9254
  %9278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9279 = extractvalue %dx.types.CBufRet.f32 %9278, 0
  br i1 %215, label %9280, label %9295

; <label>:9280                                    ; preds = %9270
  %9281 = fadd fast float %9274, %9277
  %9282 = fmul fast float %9279, %9281
  %9283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9284 = extractvalue %dx.types.CBufRet.f32 %9283, 3
  %9285 = extractvalue %dx.types.CBufRet.f32 %7595, 1
  %9286 = fsub fast float %7600, %7594
  %9287 = fadd fast float %9286, %7601
  %9288 = fsub fast float %9287, %9285
  %9289 = extractvalue %dx.types.CBufRet.f32 %7595, 2
  %9290 = fmul fast float %9288, %9289
  %9291 = call float @dx.op.unary.f32(i32 7, float %9290)  ; Saturate(value)
  %9292 = fsub fast float %9291, %9284
  %9293 = fmul fast float %9292, %9271
  %9294 = fadd fast float %9293, %9284
  br label %9319

; <label>:9295                                    ; preds = %9270
  %9296 = fadd fast float %9034, %9031
  %9297 = fmul fast float %9252, %9296
  %9298 = fadd fast float %9297, %9255
  %9299 = fmul fast float %9279, %9274
  %9300 = fmul fast float %9279, %9277
  %9301 = fmul fast float %9279, %9298
  %9302 = call float @dx.op.binary.f32(i32 35, float %9300, float %9301)  ; FMax(a,b)
  %9303 = call float @dx.op.binary.f32(i32 35, float %9299, float %9302)  ; FMax(a,b)
  %9304 = call float @dx.op.binary.f32(i32 35, float %9303, float 1.000000e+00)  ; FMax(a,b)
  %9305 = fcmp fast ugt float %9304, 0x3F10000000000000
  br i1 %9305, label %9307, label %9306

; <label>:9306                                    ; preds = %9295
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9307

; <label>:9307                                    ; preds = %9306, %9295
  %9308 = add i32 %50, 356
  %9309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %9308, i32 undef)  ; BufferLoad(srv,index,wot)
  %9310 = extractvalue %dx.types.ResRet.i32 %9309, 0
  %9311 = and i32 %9310, 32
  %9312 = icmp eq i32 %9311, 0
  br i1 %9312, label %9319, label %9313

; <label>:9313                                    ; preds = %9307
  %9314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9315 = extractvalue %dx.types.CBufRet.f32 %9314, 0
  %9316 = fmul fast float %9315, 0x3FE99999A0000000
  %9317 = fadd fast float %9315, %9299
  %9318 = fadd fast float %9316, %9301
  br label %9319

; <label>:9319                                    ; preds = %9313, %9307, %9280
  %9320 = phi float [ %9282, %9280 ], [ %9317, %9313 ], [ %9299, %9307 ]
  %9321 = phi float [ %9294, %9280 ], [ %9300, %9313 ], [ %9300, %9307 ]
  %9322 = phi float [ 1.000000e+00, %9280 ], [ %9318, %9313 ], [ %9301, %9307 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9323 = call float @dx.op.binary.f32(i32 36, float %9320, float 3.225500e+04)  ; FMin(a,b)
  %9324 = call float @dx.op.binary.f32(i32 36, float %9321, float 3.225500e+04)  ; FMin(a,b)
  %9325 = call float @dx.op.binary.f32(i32 36, float %9322, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9323)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9324)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9325)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!63 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!64 = !{void ()* @ps_main, !"ps_main", !65, !4, !86}
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
!84 = !{!85}
!85 = !{i32 0, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 0, i8 0, !69}
!86 = !{i32 0, i64 16}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = !{!97, !97, i64 0}
!97 = !{!"int", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !{!101, !103, !105, !107}
!101 = distinct !{!101, !102, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!102 = distinct !{!102, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!103 = distinct !{!103, !104, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!104 = distinct !{!104, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!105 = distinct !{!105, !106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!106 = distinct !{!106, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!107 = distinct !{!107, !108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!108 = distinct !{!108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = !{!111, !111, i64 0}
!111 = !{!"float", !98, i64 0}
!112 = distinct !{!112, !89}
!113 = distinct !{!113, !89}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = distinct !{!115, !"dx.controlflow.hints", i32 1}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = !{!122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!122 = distinct !{!122, !123, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!123 = distinct !{!123, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!124 = distinct !{!124, !125, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!125 = distinct !{!125, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!126 = distinct !{!126, !125, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!127 = distinct !{!127, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %blendColor"}
!128 = distinct !{!128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z"}
!129 = distinct !{!129, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %addColor"}
!130 = distinct !{!130, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMM@Z: %thermalExtinction"}
!131 = distinct !{!131, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAMMIMM@Z: %thermalExtinction"}
!135 = distinct !{!135, !136, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!136 = distinct !{!136, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"\01?sort@@YAXAIAM00@Z: %c"}
!139 = distinct !{!139, !"\01?sort@@YAXAIAM00@Z"}
!140 = !{!141, !142, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!141 = distinct !{!141, !139, !"\01?sort@@YAXAIAM00@Z: %a"}
!142 = distinct !{!142, !139, !"\01?sort@@YAXAIAM00@Z: %b"}
!143 = !{!142}
!144 = !{!141, !138, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!145 = !{!141}
!146 = !{!142, !138, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!147 = !{!148}
!148 = distinct !{!148, !149, !"\01?sort@@YAXAIAM00@Z: %c"}
!149 = distinct !{!149, !"\01?sort@@YAXAIAM00@Z"}
!150 = !{!151, !152, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!151 = distinct !{!151, !149, !"\01?sort@@YAXAIAM00@Z: %a"}
!152 = distinct !{!152, !149, !"\01?sort@@YAXAIAM00@Z: %b"}
!153 = !{!152}
!154 = !{!151, !148, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!155 = !{!151}
!156 = !{!152, !148, !122, !124, !126, !127, !129, !130, !131, !133, !134, !135}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 2}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}

