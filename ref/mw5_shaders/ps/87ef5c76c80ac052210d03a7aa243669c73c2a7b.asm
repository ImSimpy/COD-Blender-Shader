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
; shader hash: 0a35eefa87f5700538374ee161543336
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
  %408 = add i32 %49, 504
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
  %684 = add i32 %49, 440
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
  %736 = add i32 %49, 424
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
  %760 = add i32 %49, 376
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
  %783 = add i32 %49, 456
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
  %981 = add i32 %49, 392
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
  %1065 = add i32 %49, 408
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
  %1123 = add i32 %49, 472
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
  %1164 = add i32 %49, 488
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
  %1231 = phi float [ 0.000000e+00, %450 ], [ %1208, %1207 ]
  %1232 = phi float [ 0.000000e+00, %450 ], [ %1209, %1207 ]
  %1233 = phi float [ 0.000000e+00, %450 ], [ %1210, %1207 ]
  %1234 = phi float [ 0.000000e+00, %450 ], [ %1098, %1207 ]
  %1235 = phi float [ 0.000000e+00, %450 ], [ %1099, %1207 ]
  %1236 = phi float [ 0.000000e+00, %450 ], [ %1100, %1207 ]
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
  %1475 = add i32 %49, 444
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
  %1527 = add i32 %49, 428
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
  %1553 = add i32 %49, 380
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
  %1576 = add i32 %49, 460
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
  %1774 = add i32 %49, 396
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
  %1858 = add i32 %49, 412
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
  %1916 = add i32 %49, 476
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
  %1957 = add i32 %49, 492
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
  %2050 = fmul fast float %2044, %1234
  %2051 = fmul fast float %2045, %1235
  %2052 = fmul fast float %2046, %1236
  br label %2053

; <label>:2053                                    ; preds = %2018, %2000
  %2054 = phi float [ %2047, %2018 ], [ %1228, %2000 ]
  %2055 = phi float [ %2048, %2018 ], [ %1229, %2000 ]
  %2056 = phi float [ %2049, %2018 ], [ %1230, %2000 ]
  %2057 = phi float [ %2050, %2018 ], [ %1234, %2000 ]
  %2058 = phi float [ %2051, %2018 ], [ %1235, %2000 ]
  %2059 = phi float [ %2052, %2018 ], [ %1236, %2000 ]
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
  %2198 = fsub fast float %2001, %1231
  %2199 = fsub fast float %2002, %1232
  %2200 = fsub fast float %2003, %1233
  %2201 = fmul fast float %2171, %2198
  %2202 = fmul fast float %2171, %2199
  %2203 = fmul fast float %2171, %2200
  %2204 = fadd fast float %2201, %1231
  %2205 = fadd fast float %2202, %1232
  %2206 = fadd fast float %2203, %1233
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
  %2252 = fadd fast float %2249, %1231
  %2253 = fadd fast float %2250, %1232
  %2254 = fadd fast float %2251, %1233
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
  %2280 = fadd fast float %2277, %1231
  %2281 = fadd fast float %2278, %1232
  %2282 = fadd fast float %2279, %1233
  br label %2283

; <label>:2283                                    ; preds = %2257, %2255, %2209, %2173, %2142, %1542, %1246, %1225
  %2284 = phi float [ %1226, %2142 ], [ %1226, %1542 ], [ %1226, %1225 ], [ %2260, %2257 ], [ %1226, %2255 ], [ %2212, %2209 ], [ %2178, %2173 ], [ %1226, %1246 ]
  %2285 = phi float [ %1227, %2142 ], [ %1227, %1542 ], [ %1227, %1225 ], [ %2261, %2257 ], [ %1227, %2255 ], [ %2213, %2209 ], [ %2179, %2173 ], [ %1227, %1246 ]
  %2286 = phi float [ %2143, %2142 ], [ %1228, %1542 ], [ %1228, %1225 ], [ %2143, %2257 ], [ %2143, %2255 ], [ %2143, %2209 ], [ %2143, %2173 ], [ %1228, %1246 ]
  %2287 = phi float [ %2144, %2142 ], [ %1229, %1542 ], [ %1229, %1225 ], [ %2144, %2257 ], [ %2144, %2255 ], [ %2144, %2209 ], [ %2144, %2173 ], [ %1229, %1246 ]
  %2288 = phi float [ %2145, %2142 ], [ %1230, %1542 ], [ %1230, %1225 ], [ %2145, %2257 ], [ %2145, %2255 ], [ %2145, %2209 ], [ %2145, %2173 ], [ %1230, %1246 ]
  %2289 = phi float [ %1231, %2142 ], [ %1231, %1542 ], [ %1231, %1225 ], [ %2280, %2257 ], [ %1231, %2255 ], [ %2252, %2209 ], [ %2204, %2173 ], [ %1231, %1246 ]
  %2290 = phi float [ %1232, %2142 ], [ %1232, %1542 ], [ %1232, %1225 ], [ %2281, %2257 ], [ %1232, %2255 ], [ %2253, %2209 ], [ %2205, %2173 ], [ %1232, %1246 ]
  %2291 = phi float [ %1233, %2142 ], [ %1233, %1542 ], [ %1233, %1225 ], [ %2282, %2257 ], [ %1233, %2255 ], [ %2254, %2209 ], [ %2206, %2173 ], [ %1233, %1246 ]
  %2292 = phi float [ %2146, %2142 ], [ %1234, %1542 ], [ %1234, %1225 ], [ %2146, %2257 ], [ %2146, %2255 ], [ %2146, %2209 ], [ %2146, %2173 ], [ %1234, %1246 ]
  %2293 = phi float [ %2147, %2142 ], [ %1235, %1542 ], [ %1235, %1225 ], [ %2147, %2257 ], [ %2147, %2255 ], [ %2147, %2209 ], [ %2147, %2173 ], [ %1235, %1246 ]
  %2294 = phi float [ %2148, %2142 ], [ %1236, %1542 ], [ %1236, %1225 ], [ %2148, %2257 ], [ %2148, %2255 ], [ %2148, %2209 ], [ %2148, %2173 ], [ %1236, %1246 ]
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
  %2532 = add i32 %49, 448
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
  %2584 = add i32 %49, 432
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
  %2610 = add i32 %49, 384
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
  %2633 = add i32 %49, 464
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
  %2831 = add i32 %49, 400
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
  %2915 = add i32 %49, 416
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
  %2973 = add i32 %49, 480
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
  %3014 = add i32 %49, 496
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
  %3107 = fmul fast float %3101, %2292
  %3108 = fmul fast float %3102, %2293
  %3109 = fmul fast float %3103, %2294
  br label %3110

; <label>:3110                                    ; preds = %3075, %3057
  %3111 = phi float [ %3104, %3075 ], [ %2286, %3057 ]
  %3112 = phi float [ %3105, %3075 ], [ %2287, %3057 ]
  %3113 = phi float [ %3106, %3075 ], [ %2288, %3057 ]
  %3114 = phi float [ %3107, %3075 ], [ %2292, %3057 ]
  %3115 = phi float [ %3108, %3075 ], [ %2293, %3057 ]
  %3116 = phi float [ %3109, %3075 ], [ %2294, %3057 ]
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
  %3255 = fsub fast float %3058, %2289
  %3256 = fsub fast float %3059, %2290
  %3257 = fsub fast float %3060, %2291
  %3258 = fmul fast float %3228, %3255
  %3259 = fmul fast float %3228, %3256
  %3260 = fmul fast float %3228, %3257
  %3261 = fadd fast float %3258, %2289
  %3262 = fadd fast float %3259, %2290
  %3263 = fadd fast float %3260, %2291
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
  %3309 = fadd fast float %3306, %2289
  %3310 = fadd fast float %3307, %2290
  %3311 = fadd fast float %3308, %2291
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
  %3337 = fadd fast float %3334, %2289
  %3338 = fadd fast float %3335, %2290
  %3339 = fadd fast float %3336, %2291
  br label %3340

; <label>:3340                                    ; preds = %3314, %3312, %3266, %3230, %3199, %2599, %2303, %2283
  %3341 = phi float [ %2284, %3199 ], [ %2284, %2599 ], [ %2284, %2283 ], [ %3317, %3314 ], [ %2284, %3312 ], [ %3269, %3266 ], [ %3235, %3230 ], [ %2284, %2303 ]
  %3342 = phi float [ %2285, %3199 ], [ %2285, %2599 ], [ %2285, %2283 ], [ %3318, %3314 ], [ %2285, %3312 ], [ %3270, %3266 ], [ %3236, %3230 ], [ %2285, %2303 ]
  %3343 = phi float [ %3200, %3199 ], [ %2286, %2599 ], [ %2286, %2283 ], [ %3200, %3314 ], [ %3200, %3312 ], [ %3200, %3266 ], [ %3200, %3230 ], [ %2286, %2303 ]
  %3344 = phi float [ %3201, %3199 ], [ %2287, %2599 ], [ %2287, %2283 ], [ %3201, %3314 ], [ %3201, %3312 ], [ %3201, %3266 ], [ %3201, %3230 ], [ %2287, %2303 ]
  %3345 = phi float [ %3202, %3199 ], [ %2288, %2599 ], [ %2288, %2283 ], [ %3202, %3314 ], [ %3202, %3312 ], [ %3202, %3266 ], [ %3202, %3230 ], [ %2288, %2303 ]
  %3346 = phi float [ %2289, %3199 ], [ %2289, %2599 ], [ %2289, %2283 ], [ %3337, %3314 ], [ %2289, %3312 ], [ %3309, %3266 ], [ %3261, %3230 ], [ %2289, %2303 ]
  %3347 = phi float [ %2290, %3199 ], [ %2290, %2599 ], [ %2290, %2283 ], [ %3338, %3314 ], [ %2290, %3312 ], [ %3310, %3266 ], [ %3262, %3230 ], [ %2290, %2303 ]
  %3348 = phi float [ %2291, %3199 ], [ %2291, %2599 ], [ %2291, %2283 ], [ %3339, %3314 ], [ %2291, %3312 ], [ %3311, %3266 ], [ %3263, %3230 ], [ %2291, %2303 ]
  %3349 = phi float [ %3203, %3199 ], [ %2292, %2599 ], [ %2292, %2283 ], [ %3203, %3314 ], [ %3203, %3312 ], [ %3203, %3266 ], [ %3203, %3230 ], [ %2292, %2303 ]
  %3350 = phi float [ %3204, %3199 ], [ %2293, %2599 ], [ %2293, %2283 ], [ %3204, %3314 ], [ %3204, %3312 ], [ %3204, %3266 ], [ %3204, %3230 ], [ %2293, %2303 ]
  %3351 = phi float [ %3205, %3199 ], [ %2294, %2599 ], [ %2294, %2283 ], [ %3205, %3314 ], [ %3205, %3312 ], [ %3205, %3266 ], [ %3205, %3230 ], [ %2294, %2303 ]
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
  %3589 = add i32 %49, 452
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
  %3641 = add i32 %49, 436
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
  %3667 = add i32 %49, 388
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
  %3690 = add i32 %49, 468
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
  %3888 = add i32 %49, 404
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
  %3972 = add i32 %49, 420
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
  %4030 = add i32 %49, 484
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
  %4071 = add i32 %49, 500
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
  %4164 = fmul fast float %4158, %3349
  %4165 = fmul fast float %4159, %3350
  %4166 = fmul fast float %4160, %3351
  br label %4167

; <label>:4167                                    ; preds = %4132, %4114
  %4168 = phi float [ %4161, %4132 ], [ %3343, %4114 ]
  %4169 = phi float [ %4162, %4132 ], [ %3344, %4114 ]
  %4170 = phi float [ %4163, %4132 ], [ %3345, %4114 ]
  %4171 = phi float [ %4164, %4132 ], [ %3349, %4114 ]
  %4172 = phi float [ %4165, %4132 ], [ %3350, %4114 ]
  %4173 = phi float [ %4166, %4132 ], [ %3351, %4114 ]
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
  %4312 = fsub fast float %4115, %3346
  %4313 = fsub fast float %4116, %3347
  %4314 = fsub fast float %4117, %3348
  %4315 = fmul fast float %4285, %4312
  %4316 = fmul fast float %4285, %4313
  %4317 = fmul fast float %4285, %4314
  %4318 = fadd fast float %4315, %3346
  %4319 = fadd fast float %4316, %3347
  %4320 = fadd fast float %4317, %3348
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
  %4366 = fadd fast float %4363, %3346
  %4367 = fadd fast float %4364, %3347
  %4368 = fadd fast float %4365, %3348
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
  %4394 = fadd fast float %4391, %3346
  %4395 = fadd fast float %4392, %3347
  %4396 = fadd fast float %4393, %3348
  br label %4397

; <label>:4397                                    ; preds = %4371, %4369, %4323, %4287, %4256, %3656, %3360, %3340
  %4398 = phi float [ %3341, %4256 ], [ %3341, %3656 ], [ %3341, %3340 ], [ %3341, %3360 ], [ %4292, %4287 ], [ %4326, %4323 ], [ %3341, %4369 ], [ %4374, %4371 ]
  %4399 = phi float [ %3342, %4256 ], [ %3342, %3656 ], [ %3342, %3340 ], [ %3342, %3360 ], [ %4293, %4287 ], [ %4327, %4323 ], [ %3342, %4369 ], [ %4375, %4371 ]
  %4400 = phi float [ %4257, %4256 ], [ %3343, %3656 ], [ %3343, %3340 ], [ %3343, %3360 ], [ %4257, %4287 ], [ %4257, %4323 ], [ %4257, %4369 ], [ %4257, %4371 ]
  %4401 = phi float [ %4258, %4256 ], [ %3344, %3656 ], [ %3344, %3340 ], [ %3344, %3360 ], [ %4258, %4287 ], [ %4258, %4323 ], [ %4258, %4369 ], [ %4258, %4371 ]
  %4402 = phi float [ %4259, %4256 ], [ %3345, %3656 ], [ %3345, %3340 ], [ %3345, %3360 ], [ %4259, %4287 ], [ %4259, %4323 ], [ %4259, %4369 ], [ %4259, %4371 ]
  %4403 = phi float [ %3346, %4256 ], [ %3346, %3656 ], [ %3346, %3340 ], [ %3346, %3360 ], [ %4318, %4287 ], [ %4366, %4323 ], [ %3346, %4369 ], [ %4394, %4371 ]
  %4404 = phi float [ %3347, %4256 ], [ %3347, %3656 ], [ %3347, %3340 ], [ %3347, %3360 ], [ %4319, %4287 ], [ %4367, %4323 ], [ %3347, %4369 ], [ %4395, %4371 ]
  %4405 = phi float [ %3348, %4256 ], [ %3348, %3656 ], [ %3348, %3340 ], [ %3348, %3360 ], [ %4320, %4287 ], [ %4368, %4323 ], [ %3348, %4369 ], [ %4396, %4371 ]
  %4406 = phi float [ %4260, %4256 ], [ %3349, %3656 ], [ %3349, %3340 ], [ %3349, %3360 ], [ %4260, %4287 ], [ %4260, %4323 ], [ %4260, %4369 ], [ %4260, %4371 ]
  %4407 = phi float [ %4261, %4256 ], [ %3350, %3656 ], [ %3350, %3340 ], [ %3350, %3360 ], [ %4261, %4287 ], [ %4261, %4323 ], [ %4261, %4369 ], [ %4261, %4371 ]
  %4408 = phi float [ %4262, %4256 ], [ %3351, %3656 ], [ %3351, %3340 ], [ %3351, %3360 ], [ %4262, %4287 ], [ %4262, %4323 ], [ %4262, %4369 ], [ %4262, %4371 ]
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
  %4436 = fmul fast float %4425, %117
  %4437 = fmul fast float %4425, %118
  %4438 = fmul fast float %4425, %119
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
  %4513 = phi float [ %4644, %4635 ], [ %4403, %4501 ]
  %4514 = phi float [ %4645, %4635 ], [ %4404, %4501 ]
  %4515 = phi float [ %4646, %4635 ], [ %4405, %4501 ]
  %4516 = phi float [ %4647, %4635 ], [ %4406, %4501 ]
  %4517 = phi float [ %4648, %4635 ], [ %4407, %4501 ]
  %4518 = phi float [ %4649, %4635 ], [ %4408, %4501 ]
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
  %5013 = phi float [ %4403, %4449 ], [ %4644, %5003 ]
  %5014 = phi float [ %4404, %4449 ], [ %4645, %5003 ]
  %5015 = phi float [ %4405, %4449 ], [ %4646, %5003 ]
  %5016 = phi float [ %4406, %4449 ], [ %4647, %5003 ]
  %5017 = phi float [ %4407, %4449 ], [ %4648, %5003 ]
  %5018 = phi float [ %4408, %4449 ], [ %4649, %5003 ]
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
  %5048 = phi float [ %5016, %5004 ], [ %4406, %4397 ]
  %5049 = phi float [ %5017, %5004 ], [ %4407, %4397 ]
  %5050 = phi float [ %5018, %5004 ], [ %4408, %4397 ]
  %5051 = phi float [ %5013, %5004 ], [ %4403, %4397 ]
  %5052 = phi float [ %5014, %5004 ], [ %4404, %4397 ]
  %5053 = phi float [ %5015, %5004 ], [ %4405, %4397 ]
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
  %5131 = add i32 %49, 508
  %5132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %5131, i32 undef)  ; BufferLoad(srv,index,wot)
  %5133 = extractvalue %dx.types.ResRet.i32 %5132, 0
  %5134 = add i32 %5133, 0
  %5135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %5134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5135, %dx.types.Handle %95, float %77, float %78, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5137 = extractvalue %dx.types.ResRet.f32 %5136, 0
  %5138 = extractvalue %dx.types.ResRet.f32 %5136, 1
  %5139 = extractvalue %dx.types.ResRet.f32 %5136, 2
  %5140 = extractvalue %dx.types.ResRet.f32 %5136, 3
  %5141 = fmul fast float %5137, 2.000000e+00
  %5142 = fadd fast float %5141, -1.000000e+00
  %5143 = fmul fast float %5138, 2.000000e+00
  %5144 = fadd fast float %5143, -1.000000e+00
  %5145 = fmul fast float %5142, %70
  %5146 = fmul fast float %5142, %71
  %5147 = fmul fast float %5142, %72
  %5148 = fmul fast float %5144, %117
  %5149 = fmul fast float %5144, %118
  %5150 = fmul fast float %5144, %119
  %5151 = fadd fast float %5145, %5148
  %5152 = fadd fast float %5146, %5149
  %5153 = fadd fast float %5147, %5150
  %5154 = call float @dx.op.dot3.f32(i32 55, float %5151, float %5152, float %5153, float %5151, float %5152, float %5153)  ; Dot3(ax,ay,az,bx,by,bz)
  %5155 = call float @dx.op.unary.f32(i32 25, float %5154)  ; Rsqrt(value)
  %5156 = fmul fast float %5151, %5155
  %5157 = fmul fast float %5152, %5155
  %5158 = fmul fast float %5153, %5155
  %5159 = add i32 %49, 360
  %5160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %5159, i32 undef)  ; BufferLoad(srv,index,wot)
  %5161 = extractvalue %dx.types.ResRet.i32 %5160, 0
  %5162 = bitcast i32 %5161 to float
  %5163 = fmul fast float %5162, %5139
  %5164 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5165 = extractvalue %dx.types.ResRet.i32 %5160, 1
  %5166 = bitcast i32 %5165 to float
  %5167 = fmul fast float %5166, %5140
  %5168 = fmul fast float %5167, %5042
  %5169 = fmul fast float %5167, %5043
  %5170 = fmul fast float %5167, %5044
  %5171 = fadd fast float %5168, %5156
  %5172 = fadd fast float %5169, %5157
  %5173 = fadd fast float %5170, %5158
  %5174 = call float @dx.op.dot3.f32(i32 55, float %5171, float %5172, float %5173, float %5171, float %5172, float %5173)  ; Dot3(ax,ay,az,bx,by,bz)
  %5175 = call float @dx.op.unary.f32(i32 25, float %5174)  ; Rsqrt(value)
  %5176 = fmul fast float %5171, %5175
  %5177 = fmul fast float %5172, %5175
  %5178 = fmul fast float %5173, %5175
  %5179 = and i32 %190, 3
  %5180 = select i1 %184, i32 %5179, i32 0
  %5181 = icmp eq i32 %5180, 1
  br i1 %5181, label %5182, label %5258

; <label>:5182                                    ; preds = %5106
  %5183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5184 = extractvalue %dx.types.CBufRet.f32 %5183, 0
  %5185 = extractvalue %dx.types.CBufRet.f32 %5183, 1
  %5186 = fadd fast float %5184, %153
  %5187 = fadd fast float %5185, %154
  %5188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5189 = extractvalue %dx.types.CBufRet.f32 %5188, 0
  %5190 = extractvalue %dx.types.CBufRet.f32 %5188, 1
  %5191 = fsub fast float %5186, %5189
  %5192 = fsub fast float %5187, %5190
  %5193 = fmul fast float %5191, %5191
  %5194 = fmul fast float %5192, %5192
  %5195 = fadd fast float %5193, %5194
  %5196 = call float @dx.op.unary.f32(i32 24, float %5195)  ; Sqrt(value)
  %5197 = extractvalue %dx.types.CBufRet.f32 %5188, 2
  %5198 = fcmp fast olt float %5196, %5197
  br i1 %5198, label %5199, label %5252

; <label>:5199                                    ; preds = %5182
  %5200 = extractvalue %dx.types.CBufRet.f32 %5183, 2
  %5201 = fadd fast float %5200, %155
  %5202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5203 = extractvalue %dx.types.CBufRet.f32 %5202, 0
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 0
  %5206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.f32 %5206, 0
  %5208 = extractvalue %dx.types.CBufRet.f32 %5202, 1
  %5209 = extractvalue %dx.types.CBufRet.f32 %5204, 1
  %5210 = extractvalue %dx.types.CBufRet.f32 %5206, 1
  %5211 = extractvalue %dx.types.CBufRet.f32 %5202, 3
  %5212 = extractvalue %dx.types.CBufRet.f32 %5204, 3
  %5213 = extractvalue %dx.types.CBufRet.f32 %5206, 3
  %5214 = fadd fast float %5211, %5186
  %5215 = fadd fast float %5212, %5187
  %5216 = fadd fast float %5201, %5213
  %5217 = fmul fast float %5214, %5203
  %5218 = call float @dx.op.tertiary.f32(i32 46, float %5215, float %5205, float %5217)  ; FMad(a,b,c)
  %5219 = call float @dx.op.tertiary.f32(i32 46, float %5216, float %5207, float %5218)  ; FMad(a,b,c)
  %5220 = fmul fast float %5214, %5208
  %5221 = call float @dx.op.tertiary.f32(i32 46, float %5215, float %5209, float %5220)  ; FMad(a,b,c)
  %5222 = call float @dx.op.tertiary.f32(i32 46, float %5216, float %5210, float %5221)  ; FMad(a,b,c)
  %5223 = fsub fast float %5219, %5211
  %5224 = fsub fast float %5222, %5212
  %5225 = fsub fast float %5223, %5189
  %5226 = fadd fast float %5225, %5197
  %5227 = fsub fast float %5224, %5190
  %5228 = fadd fast float %5227, %5197
  %5229 = extractvalue %dx.types.CBufRet.f32 %5188, 3
  %5230 = fmul fast float %5226, %5229
  %5231 = fmul fast float %5228, %5229
  %5232 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5233 = call float @dx.op.unary.f32(i32 7, float %5231)  ; Saturate(value)
  %5234 = fsub fast float 1.000000e+00, %5232
  %5235 = fsub fast float 1.000000e+00, %5233
  %5236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %43, float %5234, float %5235, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5237 = extractvalue %dx.types.ResRet.f32 %5236, 0
  %5238 = fcmp fast ugt float %5237, 0.000000e+00
  br i1 %5238, label %5239, label %5252

; <label>:5239                                    ; preds = %5199
  %5240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.f32 %5240, 2
  %5242 = fmul fast float %5241, %5237
  %5243 = extractvalue %dx.types.CBufRet.f32 %5240, 3
  %5244 = fadd fast float %5243, %5242
  %5245 = extractvalue %dx.types.CBufRet.f32 %5206, 2
  %5246 = fadd fast float %5244, %5213
  %5247 = fmul fast float %5219, %5207
  %5248 = call float @dx.op.tertiary.f32(i32 46, float %5222, float %5210, float %5247)  ; FMad(a,b,c)
  %5249 = call float @dx.op.tertiary.f32(i32 46, float %5246, float %5245, float %5248)  ; FMad(a,b,c)
  %5250 = fsub fast float %5249, %5213
  %5251 = fsub fast float %5250, %5200
  br label %5252

; <label>:5252                                    ; preds = %5239, %5199, %5182
  %5253 = phi i1 [ true, %5239 ], [ false, %5199 ], [ false, %5182 ]
  %5254 = phi float [ %5251, %5239 ], [ -1.310720e+05, %5199 ], [ -1.310720e+05, %5182 ]
  %5255 = fsub fast float %5254, %155
  %5256 = call float @dx.op.unary.f32(i32 7, float %5255)  ; Saturate(value)
  %5257 = select i1 %5253, float %5256, float 1.000000e+00
  br label %5258

; <label>:5258                                    ; preds = %5252, %5106
  %5259 = phi float [ %5257, %5252 ], [ 0.000000e+00, %5106 ]
  %5260 = icmp eq i32 %5180, 3
  %5261 = select i1 %5260, float 1.000000e+00, float %5259
  %5262 = call float @dx.op.binary.f32(i32 35, float %5063, float %5261)  ; FMax(a,b)
  %5263 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5264 = fcmp fast une float %5263, 0.000000e+00
  %5265 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = call float @dx.op.unary.f32(i32 25, float %5265)  ; Rsqrt(value)
  br i1 %5264, label %5274, label %5267

; <label>:5267                                    ; preds = %5258
  %5268 = fmul fast float %5266, %153
  %5269 = fmul fast float %5266, %154
  %5270 = fmul fast float %5266, %155
  %5271 = fsub fast float -0.000000e+00, %5268
  %5272 = fsub fast float -0.000000e+00, %5269
  %5273 = fsub fast float -0.000000e+00, %5270
  br label %5442

; <label>:5274                                    ; preds = %5258
  %5275 = fmul fast float %153, %5266
  %5276 = fsub fast float -0.000000e+00, %5275
  %5277 = fmul fast float %154, %5266
  %5278 = fsub fast float -0.000000e+00, %5277
  %5279 = fmul fast float %155, %5266
  %5280 = fsub fast float -0.000000e+00, %5279
  %5281 = call float @dx.op.dot3.f32(i32 55, float %5276, float %5278, float %5280, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = fmul fast float %5263, 2.500000e+00
  %5283 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5284 = fmul fast float %5263, 0x4013FFFFE0000000
  %5285 = fadd fast float %5284, 0xBFFFFFFFE0000000
  %5286 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5287 = fmul fast float %5263, 0x4004000020000000
  %5288 = fadd fast float %5287, 0xBFF8000040000000
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5291 = fmul fast float %5066, 1.000000e+01
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = fmul fast float %5292, 2.000000e+00
  %5294 = fsub fast float 3.000000e+00, %5293
  %5295 = fmul fast float %5292, %5292
  %5296 = fmul fast float %5295, %5294
  %5297 = fsub fast float 1.000000e+00, %5296
  %5298 = fsub fast float 0x3FE3333340000000, %5087
  %5299 = fmul fast float %5298, 0x400AAAAAA0000000
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = fmul fast float %5297, %5300
  %5302 = fmul fast float %5124, 0x3FEA2B8620000000
  %5303 = fmul fast float %5125, 0x3FEA2B8620000000
  %5304 = fmul fast float %5126, 0x3FEA2B8620000000
  %5305 = fadd fast float %5302, 0x3FC81DFBA0000000
  %5306 = fmul fast float %5305, %5124
  %5307 = fadd fast float %5306, 0x3F910E6020000000
  %5308 = fadd fast float %5303, 0x3FC81DFBA0000000
  %5309 = fmul fast float %5308, %5125
  %5310 = fadd fast float %5309, 0x3F910E6020000000
  %5311 = fadd fast float %5304, 0x3FC81DFBA0000000
  %5312 = fmul fast float %5311, %5126
  %5313 = fadd fast float %5312, 0x3F910E6020000000
  %5314 = call float @dx.op.unary.f32(i32 7, float %5307)  ; Saturate(value)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5316 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5317 = fsub fast float %5314, %5124
  %5318 = fsub fast float %5315, %5125
  %5319 = fsub fast float %5316, %5126
  %5320 = fmul fast float %5317, %5290
  %5321 = fmul fast float %5320, %5301
  %5322 = fmul fast float %5318, %5290
  %5323 = fmul fast float %5322, %5301
  %5324 = fmul fast float %5319, %5290
  %5325 = fmul fast float %5324, %5301
  %5326 = fadd fast float %5321, %5124
  %5327 = fadd fast float %5323, %5125
  %5328 = fadd fast float %5325, %5126
  %5329 = fmul fast float %5060, %5060
  %5330 = fmul fast float %5329, %5329
  %5331 = fadd fast float %5286, 1.000000e+00
  %5332 = fsub fast float %5331, %5301
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5334 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5336 = fsub fast float 1.000000e+00, %5330
  %5337 = call float @dx.op.binary.f32(i32 36, float %5333, float %5336)  ; FMin(a,b)
  %5338 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5339 = call float @dx.op.binary.f32(i32 35, float %5337, float %5338)  ; FMax(a,b)
  %5340 = fadd fast float %5335, 0xBFE4CCCCC0000000
  %5341 = fmul fast float %5340, 0x4006DB6DA0000000
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = fmul fast float %5342, 2.000000e+00
  %5344 = fsub fast float 3.000000e+00, %5343
  %5345 = bitcast float %5084 to i32
  %5346 = ashr i32 %5345, 1
  %5347 = add nsw i32 %5346, 532487669
  %5348 = bitcast i32 %5347 to float
  %5349 = fsub fast float 1.000000e+00, %5348
  %5350 = bitcast float %5349 to i32
  %5351 = sub nsw i32 2129859010, %5350
  %5352 = bitcast i32 %5351 to float
  %5353 = fmul fast float %5352, 2.000000e+00
  %5354 = bitcast float %5085 to i32
  %5355 = ashr i32 %5354, 1
  %5356 = add nsw i32 %5355, 532487669
  %5357 = bitcast i32 %5356 to float
  %5358 = fsub fast float 1.000000e+00, %5357
  %5359 = bitcast float %5358 to i32
  %5360 = sub nsw i32 2129859010, %5359
  %5361 = bitcast i32 %5360 to float
  %5362 = fmul fast float %5361, 2.000000e+00
  %5363 = bitcast float %5086 to i32
  %5364 = ashr i32 %5363, 1
  %5365 = add nsw i32 %5364, 532487669
  %5366 = bitcast i32 %5365 to float
  %5367 = fsub fast float 1.000000e+00, %5366
  %5368 = bitcast float %5367 to i32
  %5369 = sub nsw i32 2129859010, %5368
  %5370 = bitcast i32 %5369 to float
  %5371 = fmul fast float %5370, 2.000000e+00
  %5372 = fsub fast float 0x4002A9FBE0000000, %5353
  %5373 = fadd fast float %5353, 0x3FD54FDF00000000
  %5374 = bitcast float %5373 to i32
  %5375 = sub nsw i32 2129859010, %5374
  %5376 = bitcast i32 %5375 to float
  %5377 = fmul fast float %5376, %5372
  %5378 = fmul fast float %5377, %5377
  %5379 = fsub fast float 0x4002A9FBE0000000, %5362
  %5380 = fadd fast float %5362, 0x3FD54FDF00000000
  %5381 = bitcast float %5380 to i32
  %5382 = sub nsw i32 2129859010, %5381
  %5383 = bitcast i32 %5382 to float
  %5384 = fmul fast float %5383, %5379
  %5385 = fmul fast float %5384, %5384
  %5386 = fsub fast float 0x4002A9FBE0000000, %5371
  %5387 = fadd fast float %5371, 0x3FD54FDF00000000
  %5388 = bitcast float %5387 to i32
  %5389 = sub nsw i32 2129859010, %5388
  %5390 = bitcast i32 %5389 to float
  %5391 = fmul fast float %5390, %5386
  %5392 = fmul fast float %5391, %5391
  %5393 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5378)  ; FMax(a,b)
  %5394 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5385)  ; FMax(a,b)
  %5395 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5392)  ; FMax(a,b)
  %5396 = fsub fast float 1.000000e+00, %5281
  %5397 = fadd fast float %5396, %5297
  %5398 = call float @dx.op.unary.f32(i32 7, float %5397)  ; Saturate(value)
  %5399 = fsub fast float 1.000000e+00, %5261
  %5400 = fmul fast float %5339, %5399
  %5401 = fmul fast float %5342, %5342
  %5402 = fmul fast float %5401, %5400
  %5403 = fmul fast float %5402, %5344
  %5404 = fmul fast float %5399, 0xBFE99999A0000000
  %5405 = fmul fast float %5404, %5290
  %5406 = fmul fast float %5405, %5301
  %5407 = fadd fast float %5406, 1.000000e+00
  %5408 = fadd fast float %5087, -1.000000e+00
  %5409 = fmul fast float %5407, %5408
  %5410 = fadd fast float %5409, 1.000000e+00
  %5411 = fsub fast float %5393, %5084
  %5412 = fsub fast float %5394, %5085
  %5413 = fsub fast float %5395, %5086
  %5414 = fmul fast float %5403, %5411
  %5415 = fmul fast float %5403, %5412
  %5416 = fmul fast float %5403, %5413
  %5417 = fadd fast float %5414, %5084
  %5418 = fadd fast float %5415, %5085
  %5419 = fadd fast float %5416, %5086
  %5420 = fsub fast float %105, %5042
  %5421 = fsub fast float %106, %5043
  %5422 = fsub fast float %107, %5044
  %5423 = fmul fast float %5403, %5420
  %5424 = fmul fast float %5403, %5421
  %5425 = fmul fast float %5403, %5422
  %5426 = fadd fast float %5423, %5042
  %5427 = fadd fast float %5424, %5043
  %5428 = fadd fast float %5425, %5044
  %5429 = fmul fast float %5403, %5398
  %5430 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5431 = fsub fast float 1.000000e+00, %5430
  %5432 = fmul fast float %5429, %5431
  %5433 = fadd fast float %5432, %5430
  %5434 = fsub fast float 1.000000e+00, %5060
  %5435 = fmul fast float %5403, %5434
  %5436 = fadd fast float %5435, %5060
  %5437 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5426, float %5427, float %5428)  ; Dot3(ax,ay,az,bx,by,bz)
  %5438 = call float @dx.op.unary.f32(i32 25, float %5437)  ; Rsqrt(value)
  %5439 = fmul fast float %5426, %5438
  %5440 = fmul fast float %5427, %5438
  %5441 = fmul fast float %5428, %5438
  br label %5442

; <label>:5442                                    ; preds = %5274, %5267
  %5443 = phi float [ %5273, %5267 ], [ %5280, %5274 ]
  %5444 = phi float [ %5272, %5267 ], [ %5278, %5274 ]
  %5445 = phi float [ %5271, %5267 ], [ %5276, %5274 ]
  %5446 = phi float [ %5270, %5267 ], [ %5279, %5274 ]
  %5447 = phi float [ %5269, %5267 ], [ %5277, %5274 ]
  %5448 = phi float [ %5268, %5267 ], [ %5275, %5274 ]
  %5449 = phi float [ %5124, %5267 ], [ %5326, %5274 ]
  %5450 = phi float [ %5125, %5267 ], [ %5327, %5274 ]
  %5451 = phi float [ %5126, %5267 ], [ %5328, %5274 ]
  %5452 = phi float [ %5084, %5267 ], [ %5417, %5274 ]
  %5453 = phi float [ %5085, %5267 ], [ %5418, %5274 ]
  %5454 = phi float [ %5086, %5267 ], [ %5419, %5274 ]
  %5455 = phi float [ %5042, %5267 ], [ %5439, %5274 ]
  %5456 = phi float [ %5043, %5267 ], [ %5440, %5274 ]
  %5457 = phi float [ %5044, %5267 ], [ %5441, %5274 ]
  %5458 = phi float [ %5087, %5267 ], [ %5433, %5274 ]
  %5459 = phi float [ %5060, %5267 ], [ %5436, %5274 ]
  %5460 = fsub fast float -0.000000e+00, %5457
  %5461 = fsub fast float -0.000000e+00, %5456
  %5462 = fsub fast float -0.000000e+00, %5455
  %5463 = select i1 %214, float 0.000000e+00, float %5454
  %5464 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5445, float %5444, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5465 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5447, float %5446, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = fmul fast float %5466, 2.000000e+00
  %5468 = fmul fast float %5467, %5455
  %5469 = fmul fast float %5467, %5456
  %5470 = fmul fast float %5467, %5457
  %5471 = fsub fast float %5448, %5468
  %5472 = fsub fast float %5447, %5469
  %5473 = fsub fast float %5446, %5470
  %5474 = fmul fast float %5447, %5178
  %5475 = fmul fast float %5446, %5177
  %5476 = fsub fast float %5474, %5475
  %5477 = fmul fast float %5446, %5176
  %5478 = fmul fast float %5448, %5178
  %5479 = fsub fast float %5477, %5478
  %5480 = fmul fast float %5448, %5177
  %5481 = fmul fast float %5447, %5176
  %5482 = fsub fast float %5480, %5481
  %5483 = fmul fast float %5479, %5178
  %5484 = fmul fast float %5482, %5177
  %5485 = fmul fast float %5482, %5176
  %5486 = fmul fast float %5476, %5178
  %5487 = fmul fast float %5476, %5177
  %5488 = fmul fast float %5479, %5176
  %5489 = fsub fast float %5462, %5484
  %5490 = fadd fast float %5489, %5483
  %5491 = fsub fast float %5461, %5486
  %5492 = fadd fast float %5491, %5485
  %5493 = fsub fast float %5460, %5488
  %5494 = fadd fast float %5493, %5487
  %5495 = fmul fast float %5490, %5164
  %5496 = fmul fast float %5492, %5164
  %5497 = fmul fast float %5494, %5164
  %5498 = fadd fast float %5495, %5455
  %5499 = fadd fast float %5496, %5456
  %5500 = fadd fast float %5497, %5457
  %5501 = call float @dx.op.dot3.f32(i32 55, float %5498, float %5499, float %5500, float %5498, float %5499, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = call float @dx.op.unary.f32(i32 25, float %5501)  ; Rsqrt(value)
  %5503 = fmul fast float %5498, %5502
  %5504 = fmul fast float %5499, %5502
  %5505 = fmul fast float %5500, %5502
  %5506 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5447, float %5446, float %5503, float %5504, float %5505)  ; Dot3(ax,ay,az,bx,by,bz)
  %5507 = fmul fast float %5506, 2.000000e+00
  %5508 = fmul fast float %5503, %5507
  %5509 = fmul fast float %5504, %5507
  %5510 = fmul fast float %5505, %5507
  %5511 = fsub fast float %5448, %5508
  %5512 = fsub fast float %5447, %5509
  %5513 = fsub fast float %5446, %5510
  %5514 = call float @dx.op.binary.f32(i32 36, float %5459, float 1.000000e+00)  ; FMin(a,b)
  %5515 = fsub fast float 1.000000e+00, %5514
  %5516 = bitcast float %5515 to i32
  %5517 = ashr i32 %5516, 1
  %5518 = add nsw i32 %5517, 532487669
  %5519 = bitcast i32 %5518 to float
  %5520 = fsub fast float 1.000000e+00, %5458
  %5521 = call float @dx.op.binary.f32(i32 35, float %5520, float 0x3F847AE140000000)  ; FMax(a,b)
  %5522 = fmul fast float %5521, %5521
  %5523 = fmul fast float %5522, %5522
  %5524 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %43, float %5519, float %5523, float %5524, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5526 = extractvalue %dx.types.ResRet.f32 %5525, 0
  %5527 = fsub fast float 1.000000e+00, %5459
  %5528 = bitcast float %5527 to i32
  %5529 = sub nsw i32 2129859010, %5528
  %5530 = call float @dx.op.dot3.f32(i32 55, float %66, float %62, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fmul fast float %5530, 0x3FD20DD760000000
  %5532 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %5533 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = fcmp fast oeq float %5533, 0.000000e+00
  %5535 = fcmp fast oeq float %5532, 0.000000e+00
  %5536 = or i1 %5535, %5534
  br i1 %5536, label %5566, label %5537

; <label>:5537                                    ; preds = %5442
  %5538 = fsub fast float -0.000000e+00, %69
  %5539 = fsub fast float -0.000000e+00, %67
  %5540 = call float @dx.op.unary.f32(i32 24, float %5533)  ; Sqrt(value)
  %5541 = fdiv fast float %5540, %5532
  %5542 = fcmp fast ogt float %5541, 0x3FFB6F8900000000
  %5543 = select i1 %5542, float 0x3FFB6F8900000000, float %5541
  %5544 = fmul fast float %5543, 0x3FE8A23460000000
  %5545 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  %5546 = call float @dx.op.binary.f32(i32 35, float %5543, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5547 = fmul fast float %5545, %5532
  %5548 = fmul fast float %5546, 0x3FF279A740000000
  %5549 = fadd fast float %5548, -1.000000e+00
  %5550 = call float @dx.op.dot3.f32(i32 55, float %5538, float %5539, float %68, float %5538, float %5539, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5551 = call float @dx.op.unary.f32(i32 25, float %5550)  ; Rsqrt(value)
  %5552 = fmul fast float %5551, %5538
  %5553 = fmul fast float %5551, %5539
  %5554 = fmul fast float %5551, %68
  %5555 = fmul fast float %5549, %5549
  %5556 = fsub fast float 1.000000e+00, %5555
  %5557 = fmul fast float %5546, 0x40005F8BE0000000
  %5558 = fsub fast float 0x400C5BF8A0000000, %5557
  %5559 = fdiv fast float %5547, %5558
  %5560 = fmul fast float %5559, 0x3FEE31C3C0000000
  %5561 = fmul fast float %5560, %5556
  %5562 = fmul fast float %5546, 0x3FDACB7480000000
  %5563 = fadd fast float %5562, 0xBFD7347680000000
  %5564 = fmul fast float %5563, %5559
  %5565 = fmul fast float %5564, %5556
  br label %5566

; <label>:5566                                    ; preds = %5537, %5442
  %5567 = phi float [ %5552, %5537 ], [ 0.000000e+00, %5442 ]
  %5568 = phi float [ %5553, %5537 ], [ 0.000000e+00, %5442 ]
  %5569 = phi float [ %5554, %5537 ], [ 0.000000e+00, %5442 ]
  %5570 = phi float [ %5561, %5537 ], [ 0.000000e+00, %5442 ]
  %5571 = phi float [ %5565, %5537 ], [ 0.000000e+00, %5442 ]
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5567, float %5568, float %5569, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = fmul fast float %5572, 0x3FDF454380000000
  %5574 = fmul fast float %5572, %5572
  %5575 = fmul fast float %5574, 0x3FEE471020000000
  %5576 = fadd fast float %5575, 0xBFD42F6020000000
  %5577 = fmul fast float %5532, 0x3FD20DD760000000
  %5578 = fmul fast float %5576, %5571
  %5579 = fadd fast float %5578, %5577
  %5580 = fmul fast float %5573, %5570
  %5581 = fadd fast float %5579, %5580
  %5582 = fsub fast float %5579, %5580
  %5583 = call float @dx.op.dot3.f32(i32 55, float %5567, float %5568, float %5569, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5584 = fmul fast float %5583, 0x3FDF454380000000
  %5585 = fmul fast float %5583, %5583
  %5586 = fmul fast float %5585, 0x3FEE471020000000
  %5587 = fadd fast float %5586, 0xBFD42F6020000000
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5532, float %5570, float %5571, float 0x3FD20DD760000000, float %5584, float %5587)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %5590 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = fcmp fast oeq float %5590, 0.000000e+00
  %5592 = fcmp fast oeq float %5589, 0.000000e+00
  %5593 = or i1 %5592, %5591
  br i1 %5593, label %5623, label %5594

; <label>:5594                                    ; preds = %5566
  %5595 = fsub fast float -0.000000e+00, %65
  %5596 = fsub fast float -0.000000e+00, %63
  %5597 = call float @dx.op.unary.f32(i32 24, float %5590)  ; Sqrt(value)
  %5598 = fdiv fast float %5597, %5589
  %5599 = fcmp fast ogt float %5598, 0x3FFB6F8900000000
  %5600 = select i1 %5599, float 0x3FFB6F8900000000, float %5598
  %5601 = fmul fast float %5600, 0x3FE8A23460000000
  %5602 = call float @dx.op.unary.f32(i32 7, float %5601)  ; Saturate(value)
  %5603 = call float @dx.op.binary.f32(i32 35, float %5600, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5604 = fmul fast float %5602, %5589
  %5605 = fmul fast float %5603, 0x3FF279A740000000
  %5606 = fadd fast float %5605, -1.000000e+00
  %5607 = call float @dx.op.dot3.f32(i32 55, float %5595, float %5596, float %64, float %5595, float %5596, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = call float @dx.op.unary.f32(i32 25, float %5607)  ; Rsqrt(value)
  %5609 = fmul fast float %5608, %5595
  %5610 = fmul fast float %5608, %5596
  %5611 = fmul fast float %5608, %64
  %5612 = fmul fast float %5606, %5606
  %5613 = fsub fast float 1.000000e+00, %5612
  %5614 = fmul fast float %5603, 0x40005F8BE0000000
  %5615 = fsub fast float 0x400C5BF8A0000000, %5614
  %5616 = fdiv fast float %5604, %5615
  %5617 = fmul fast float %5616, 0x3FEE31C3C0000000
  %5618 = fmul fast float %5617, %5613
  %5619 = fmul fast float %5603, 0x3FDACB7480000000
  %5620 = fadd fast float %5619, 0xBFD7347680000000
  %5621 = fmul fast float %5620, %5616
  %5622 = fmul fast float %5621, %5613
  br label %5623

; <label>:5623                                    ; preds = %5594, %5566
  %5624 = phi float [ %5609, %5594 ], [ 0.000000e+00, %5566 ]
  %5625 = phi float [ %5610, %5594 ], [ 0.000000e+00, %5566 ]
  %5626 = phi float [ %5611, %5594 ], [ 0.000000e+00, %5566 ]
  %5627 = phi float [ %5618, %5594 ], [ 0.000000e+00, %5566 ]
  %5628 = phi float [ %5622, %5594 ], [ 0.000000e+00, %5566 ]
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5625, float %5626, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = fmul fast float %5629, 0x3FDF454380000000
  %5631 = fmul fast float %5629, %5629
  %5632 = fmul fast float %5631, 0x3FEE471020000000
  %5633 = fadd fast float %5632, 0xBFD42F6020000000
  %5634 = fmul fast float %5589, 0x3FD20DD760000000
  %5635 = fmul fast float %5633, %5628
  %5636 = fadd fast float %5635, %5634
  %5637 = fmul fast float %5630, %5627
  %5638 = fadd fast float %5636, %5637
  %5639 = fsub fast float %5636, %5637
  %5640 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5625, float %5626, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5641 = fmul fast float %5640, 0x3FDF454380000000
  %5642 = fmul fast float %5640, %5640
  %5643 = fmul fast float %5642, 0x3FEE471020000000
  %5644 = fadd fast float %5643, 0xBFD42F6020000000
  %5645 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5627, float %5628, float 0x3FD20DD760000000, float %5641, float %5644)  ; Dot3(ax,ay,az,bx,by,bz)
  %5646 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5647 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = fcmp fast oeq float %5647, 0.000000e+00
  %5649 = fcmp fast oeq float %5646, 0.000000e+00
  %5650 = or i1 %5649, %5648
  br i1 %5650, label %5680, label %5651

; <label>:5651                                    ; preds = %5623
  %5652 = fsub fast float -0.000000e+00, %61
  %5653 = fsub fast float -0.000000e+00, %59
  %5654 = call float @dx.op.unary.f32(i32 24, float %5647)  ; Sqrt(value)
  %5655 = fdiv fast float %5654, %5646
  %5656 = fcmp fast ogt float %5655, 0x3FFB6F8900000000
  %5657 = select i1 %5656, float 0x3FFB6F8900000000, float %5655
  %5658 = fmul fast float %5657, 0x3FE8A23460000000
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = call float @dx.op.binary.f32(i32 35, float %5657, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5661 = fmul fast float %5659, %5646
  %5662 = fmul fast float %5660, 0x3FF279A740000000
  %5663 = fadd fast float %5662, -1.000000e+00
  %5664 = call float @dx.op.dot3.f32(i32 55, float %5652, float %5653, float %60, float %5652, float %5653, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5665 = call float @dx.op.unary.f32(i32 25, float %5664)  ; Rsqrt(value)
  %5666 = fmul fast float %5665, %5652
  %5667 = fmul fast float %5665, %5653
  %5668 = fmul fast float %5665, %60
  %5669 = fmul fast float %5663, %5663
  %5670 = fsub fast float 1.000000e+00, %5669
  %5671 = fmul fast float %5660, 0x40005F8BE0000000
  %5672 = fsub fast float 0x400C5BF8A0000000, %5671
  %5673 = fdiv fast float %5661, %5672
  %5674 = fmul fast float %5673, 0x3FEE31C3C0000000
  %5675 = fmul fast float %5674, %5670
  %5676 = fmul fast float %5660, 0x3FDACB7480000000
  %5677 = fadd fast float %5676, 0xBFD7347680000000
  %5678 = fmul fast float %5677, %5673
  %5679 = fmul fast float %5678, %5670
  br label %5680

; <label>:5680                                    ; preds = %5651, %5623
  %5681 = phi float [ %5666, %5651 ], [ 0.000000e+00, %5623 ]
  %5682 = phi float [ %5667, %5651 ], [ 0.000000e+00, %5623 ]
  %5683 = phi float [ %5668, %5651 ], [ 0.000000e+00, %5623 ]
  %5684 = phi float [ %5675, %5651 ], [ 0.000000e+00, %5623 ]
  %5685 = phi float [ %5679, %5651 ], [ 0.000000e+00, %5623 ]
  %5686 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5682, float %5683, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5687 = fmul fast float %5686, 0x3FDF454380000000
  %5688 = fmul fast float %5686, %5686
  %5689 = fmul fast float %5688, 0x3FEE471020000000
  %5690 = fadd fast float %5689, 0xBFD42F6020000000
  %5691 = fmul fast float %5646, 0x3FD20DD760000000
  %5692 = fmul fast float %5690, %5685
  %5693 = fadd fast float %5692, %5691
  %5694 = fmul fast float %5687, %5684
  %5695 = fadd fast float %5693, %5694
  %5696 = fsub fast float %5693, %5694
  %5697 = call float @dx.op.dot3.f32(i32 55, float %5681, float %5682, float %5683, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = fmul fast float %5697, 0x3FDF454380000000
  %5699 = fmul fast float %5697, %5697
  %5700 = fmul fast float %5699, 0x3FEE471020000000
  %5701 = fadd fast float %5700, 0xBFD42F6020000000
  %5702 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5684, float %5685, float 0x3FD20DD760000000, float %5698, float %5701)  ; Dot3(ax,ay,az,bx,by,bz)
  %5703 = call float @dx.op.binary.f32(i32 35, float %5581, float 0.000000e+00)  ; FMax(a,b)
  %5704 = call float @dx.op.binary.f32(i32 35, float %5638, float 0.000000e+00)  ; FMax(a,b)
  %5705 = call float @dx.op.binary.f32(i32 35, float %5695, float 0.000000e+00)  ; FMax(a,b)
  %5706 = call float @dx.op.binary.f32(i32 35, float %5582, float 0.000000e+00)  ; FMax(a,b)
  %5707 = call float @dx.op.binary.f32(i32 35, float %5639, float 0.000000e+00)  ; FMax(a,b)
  %5708 = call float @dx.op.binary.f32(i32 35, float %5696, float 0.000000e+00)  ; FMax(a,b)
  %5709 = call float @dx.op.binary.f32(i32 35, float %5588, float 0.000000e+00)  ; FMax(a,b)
  %5710 = call float @dx.op.binary.f32(i32 35, float %5645, float 0.000000e+00)  ; FMax(a,b)
  %5711 = call float @dx.op.binary.f32(i32 35, float %5702, float 0.000000e+00)  ; FMax(a,b)
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  %5714 = call float @dx.op.binary.f32(i32 36, float %5449, float %5713)  ; FMin(a,b)
  %5715 = fmul fast float %5714, %5515
  %5716 = fsub fast float 1.000000e+00, %5715
  %5717 = bitcast float %5716 to i32
  %5718 = sub nsw i32 2129859010, %5717
  %5719 = bitcast i32 %5718 to float
  %5720 = call float @dx.op.binary.f32(i32 36, float %5450, float %5713)  ; FMin(a,b)
  %5721 = fmul fast float %5720, %5515
  %5722 = fsub fast float 1.000000e+00, %5721
  %5723 = bitcast float %5722 to i32
  %5724 = sub nsw i32 2129859010, %5723
  %5725 = bitcast i32 %5724 to float
  %5726 = call float @dx.op.binary.f32(i32 36, float %5451, float %5713)  ; FMin(a,b)
  %5727 = fmul fast float %5726, %5515
  %5728 = fsub fast float 1.000000e+00, %5727
  %5729 = bitcast float %5728 to i32
  %5730 = sub nsw i32 2129859010, %5729
  %5731 = bitcast i32 %5730 to float
  %5732 = fmul fast float %5703, %5514
  %5733 = fmul fast float %5732, %5719
  %5734 = fmul fast float %5704, %5514
  %5735 = fmul fast float %5734, %5725
  %5736 = fmul fast float %5705, %5514
  %5737 = fmul fast float %5736, %5731
  %5738 = call float @dx.op.binary.f32(i32 36, float %5452, float %5713)  ; FMin(a,b)
  %5739 = fmul fast float %5738, %5515
  %5740 = fsub fast float 1.000000e+00, %5739
  %5741 = bitcast float %5740 to i32
  %5742 = sub nsw i32 2129859010, %5741
  %5743 = bitcast i32 %5742 to float
  %5744 = call float @dx.op.binary.f32(i32 36, float %5453, float %5713)  ; FMin(a,b)
  %5745 = fmul fast float %5744, %5515
  %5746 = fsub fast float 1.000000e+00, %5745
  %5747 = bitcast float %5746 to i32
  %5748 = sub nsw i32 2129859010, %5747
  %5749 = bitcast i32 %5748 to float
  %5750 = call float @dx.op.binary.f32(i32 36, float %5463, float %5713)  ; FMin(a,b)
  %5751 = fmul fast float %5750, %5515
  %5752 = fsub fast float 1.000000e+00, %5751
  %5753 = bitcast float %5752 to i32
  %5754 = sub nsw i32 2129859010, %5753
  %5755 = bitcast i32 %5754 to float
  %5756 = fmul fast float %5709, %5514
  %5757 = fmul fast float %5756, %5743
  %5758 = fmul fast float %5710, %5514
  %5759 = fmul fast float %5758, %5749
  %5760 = fmul fast float %5711, %5514
  %5761 = fmul fast float %5760, %5755
  %5762 = call float @dx.op.dot3.f32(i32 55, float %5733, float %5735, float %5737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = select i1 %214, float 0.000000e+00, float %5733
  %5764 = select i1 %214, float %5762, float %5735
  %5765 = select i1 %214, float 0.000000e+00, float %5737
  %5766 = call float @dx.op.dot3.f32(i32 55, float %5706, float %5707, float %5708, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5767 = select i1 %214, float 0.000000e+00, float %5706
  %5768 = select i1 %214, float %5766, float %5707
  %5769 = select i1 %214, float 0.000000e+00, float %5708
  %5770 = call float @dx.op.dot3.f32(i32 55, float %5757, float %5759, float %5761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = select i1 %214, float 0.000000e+00, float %5757
  %5772 = select i1 %214, float %5770, float %5759
  %5773 = select i1 %214, float 0.000000e+00, float %5761
  %5774 = fmul fast float %4415, %4415
  %5775 = call float @dx.op.unary.f32(i32 7, float %5774)  ; Saturate(value)
  %5776 = fmul fast float %5465, 9.843750e-01
  %5777 = fmul fast float %5458, 9.843750e-01
  %5778 = fadd fast float %5776, 7.812500e-03
  %5779 = fadd fast float %5777, 7.812500e-03
  %5780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %5778, float %5779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5781 = extractvalue %dx.types.ResRet.f32 %5780, 0
  %5782 = extractvalue %dx.types.ResRet.f32 %5780, 1
  %5783 = extractvalue %dx.types.ResRet.f32 %5780, 2
  %5784 = extractvalue %dx.types.ResRet.f32 %5780, 3
  %5785 = fsub fast float 1.000000e+00, %5775
  %5786 = fsub fast float %5783, %5781
  %5787 = fsub fast float %5784, %5782
  %5788 = fmul fast float %5786, %5785
  %5789 = fmul fast float %5787, %5785
  %5790 = fadd fast float %5788, %5781
  %5791 = fadd fast float %5789, %5782
  %5792 = fmul fast float %5790, %5452
  %5793 = fmul fast float %5790, %5453
  %5794 = fmul fast float %5790, %5463
  %5795 = fadd fast float %5792, %5791
  %5796 = fadd fast float %5793, %5791
  %5797 = fadd fast float %5794, %5791
  %5798 = fcmp fast ogt float %5061, 0.000000e+00
  br i1 %5798, label %5799, label %5825

; <label>:5799                                    ; preds = %5680
  %5800 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5061, float %5465, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5801 = extractvalue %dx.types.ResRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.ResRet.f32 %5800, 1
  %5803 = extractvalue %dx.types.ResRet.f32 %5800, 2
  %5804 = fadd fast float %5801, -5.000000e-01
  %5805 = fadd fast float %5802, -5.000000e-01
  %5806 = fadd fast float %5803, -5.000000e-01
  %5807 = fsub fast float 1.000000e+00, %5452
  %5808 = fsub fast float 1.000000e+00, %5453
  %5809 = fsub fast float 1.000000e+00, %5463
  %5810 = fmul fast float %5452, 4.000000e+00
  %5811 = fmul fast float %5810, %5807
  %5812 = fmul fast float %5811, %5804
  %5813 = fmul fast float %5453, 4.000000e+00
  %5814 = fmul fast float %5813, %5808
  %5815 = fmul fast float %5814, %5805
  %5816 = fmul fast float %5463, 4.000000e+00
  %5817 = fmul fast float %5816, %5809
  %5818 = fmul fast float %5817, %5806
  %5819 = fadd fast float %5812, %5795
  %5820 = fadd fast float %5815, %5796
  %5821 = fadd fast float %5818, %5797
  %5822 = call float @dx.op.unary.f32(i32 7, float %5819)  ; Saturate(value)
  %5823 = call float @dx.op.unary.f32(i32 7, float %5820)  ; Saturate(value)
  %5824 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  br label %5825

; <label>:5825                                    ; preds = %5799, %5680
  %5826 = phi float [ %5822, %5799 ], [ %5795, %5680 ]
  %5827 = phi float [ %5823, %5799 ], [ %5796, %5680 ]
  %5828 = phi float [ %5824, %5799 ], [ %5797, %5680 ]
  %5829 = call float @dx.op.binary.f32(i32 35, float %5827, float %5828)  ; FMax(a,b)
  %5830 = call float @dx.op.binary.f32(i32 35, float %5826, float %5829)  ; FMax(a,b)
  %5831 = fsub fast float 1.000000e+00, %5830
  %5832 = fmul fast float %5830, %5458
  %5833 = fadd fast float %5832, %5458
  %5834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5835 = extractvalue %dx.types.CBufRet.f32 %5834, 2
  %5836 = extractvalue %dx.types.CBufRet.f32 %5834, 3
  %5837 = fmul fast float %5833, %5835
  %5838 = fadd fast float %5837, %5836
  %5839 = call float @dx.op.unary.f32(i32 7, float %5838)  ; Saturate(value)
  %5840 = fsub fast float 1.000000e+00, %5526
  %5841 = fadd fast float %5840, %5839
  %5842 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5843 = fcmp fast olt float %5842, 1.000000e+00
  br i1 %5843, label %5844, label %6398

; <label>:5844                                    ; preds = %5825
  %5845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5846 = extractvalue %dx.types.CBufRet.f32 %5845, 2
  %5847 = extractvalue %dx.types.CBufRet.f32 %5845, 3
  %5848 = fmul fast float %5846, %98
  %5849 = fmul fast float %5847, %99
  %5850 = fptoui float %5848 to i32
  %5851 = fptoui float %5849 to i32
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = extractvalue %dx.types.CBufRet.f32 %5852, 2
  %5855 = extractvalue %dx.types.CBufRet.f32 %5852, 3
  %5856 = fadd fast float %86, -4.000000e+00
  %5857 = call float @dx.op.binary.f32(i32 35, float %5856, float 0.000000e+00)  ; FMax(a,b)
  %5858 = fadd fast float %5857, %5853
  %5859 = fmul fast float %5858, %5854
  %5860 = call float @dx.op.unary.f32(i32 23, float %5859)  ; Log(value)
  %5861 = fmul fast float %5860, %5855
  %5862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5863 = extractvalue %dx.types.CBufRet.f32 %5862, 2
  %5864 = fmul fast float %5861, %5863
  %5865 = call float @dx.op.unary.f32(i32 7, float %5864)  ; Saturate(value)
  %5866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.i32 %5866, 1
  %5868 = add i32 %5867, -1
  %5869 = uitofp i32 %5867 to float
  %5870 = fmul fast float %5869, %5865
  %5871 = fptoui float %5870 to i32
  %5872 = call i32 @dx.op.binary.i32(i32 40, i32 %5871, i32 %5868)  ; UMin(a,b)
  %5873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.i32 %5873, 2
  %5875 = extractvalue %dx.types.CBufRet.i32 %5873, 3
  %5876 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5851, i32 %5874, i32 %5850)  ; UMad(a,b,c)
  %5877 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5872, i32 %5875, i32 %5876)  ; UMad(a,b,c)
  %5878 = call float @dx.op.binary.f32(i32 35, float %86, float 0.000000e+00)  ; FMax(a,b)
  %5879 = fptoui float %5878 to i32
  %5880 = lshr i32 %5879, 5
  %5881 = call i32 @dx.op.binary.i32(i32 40, i32 %5880, i32 8191)  ; UMin(a,b)
  br i1 false, label %5882, label %5889

; <label>:5882                                    ; preds = %5844
  %5883 = fadd fast float 0.000000e+00, %5513
  %5884 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5883, float %5511, float %5512, float %5883)  ; Dot3(ax,ay,az,bx,by,bz)
  %5885 = call float @dx.op.unary.f32(i32 25, float %5884)  ; Rsqrt(value)
  %5886 = fmul fast float %5885, %5511
  %5887 = fmul fast float %5885, %5512
  %5888 = fmul fast float %5883, %5885
  br label %5889

; <label>:5889                                    ; preds = %5882, %5844
  %5890 = phi float [ %5886, %5882 ], [ %5511, %5844 ]
  %5891 = phi float [ %5887, %5882 ], [ %5512, %5844 ]
  %5892 = phi float [ %5888, %5882 ], [ %5513, %5844 ]
  %5893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.i32 %5893, 2
  %5895 = add nsw i32 %5894, -1
  %5896 = call i32 @dx.op.binary.i32(i32 37, i32 %5895, i32 0)  ; IMax(a,b)
  %5897 = shl i32 %5881, 2
  %5898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5897, i32 undef)  ; BufferLoad(srv,index,wot)
  %5899 = extractvalue %dx.types.ResRet.i32 %5898, 0
  %5900 = lshr i32 %5899, 16
  %5901 = and i32 %5899, 65535
  %5902 = lshr i32 %5899, 21
  %5903 = lshr i32 %5901, 5
  %5904 = call i32 @dx.op.binary.i32(i32 40, i32 %5903, i32 %5896)  ; UMin(a,b)
  %5905 = icmp ugt i32 %5902, %5904
  br i1 %5905, label %6286, label %5906

; <label>:5906                                    ; preds = %5889
  br label %5907

; <label>:5907                                    ; preds = %6275, %5906
  %5908 = phi float [ %6276, %6275 ], [ 0.000000e+00, %5906 ]
  %5909 = phi float [ %6277, %6275 ], [ 0.000000e+00, %5906 ]
  %5910 = phi float [ %6278, %6275 ], [ 0.000000e+00, %5906 ]
  %5911 = phi float [ %6279, %6275 ], [ 1.000000e+00, %5906 ]
  %5912 = phi i32 [ %6283, %6275 ], [ %5902, %5906 ]
  %5913 = phi float [ %6280, %6275 ], [ 0.000000e+00, %5906 ]
  %5914 = phi float [ %6281, %6275 ], [ 0.000000e+00, %5906 ]
  %5915 = phi float [ %6282, %6275 ], [ 0.000000e+00, %5906 ]
  %5916 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5917 = extractvalue %dx.types.CBufRet.i32 %5916, 2
  %5918 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5877, i32 %5917, i32 %5912)  ; UMad(a,b,c)
  %5919 = shl i32 %5918, 2
  %5920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5919, i32 undef)  ; BufferLoad(srv,index,wot)
  %5921 = extractvalue %dx.types.ResRet.i32 %5920, 0
  %5922 = shl i32 %5912, 5
  %5923 = sub nsw i32 %5900, %5922
  %5924 = call i32 @dx.op.binary.i32(i32 37, i32 %5923, i32 0)  ; IMax(a,b)
  %5925 = call i32 @dx.op.binary.i32(i32 38, i32 %5924, i32 31)  ; IMin(a,b)
  %5926 = sub nsw i32 1, %5900
  %5927 = add nsw i32 %5926, %5901
  %5928 = call i32 @dx.op.binary.i32(i32 37, i32 %5927, i32 0)  ; IMax(a,b)
  %5929 = call i32 @dx.op.binary.i32(i32 38, i32 %5928, i32 32)  ; IMin(a,b)
  %5930 = and i32 %5929, 31
  %5931 = shl i32 -1, %5930
  %5932 = xor i32 %5931, -1
  %5933 = and i32 %5925, 31
  %5934 = shl i32 %5932, %5933
  %5935 = icmp eq i32 %5929, 32
  %5936 = select i1 %5935, i32 -1, i32 %5934
  %5937 = and i32 %5936, %5921
  %5938 = icmp eq i32 %5937, 0
  br i1 %5938, label %6275, label %5939

; <label>:5939                                    ; preds = %5907
  br label %5940

; <label>:5940                                    ; preds = %6049, %5939
  %5941 = phi float [ %6050, %6049 ], [ %5908, %5939 ]
  %5942 = phi float [ %6051, %6049 ], [ %5909, %5939 ]
  %5943 = phi float [ %6052, %6049 ], [ %5910, %5939 ]
  %5944 = phi float [ %6053, %6049 ], [ %5911, %5939 ]
  %5945 = phi i32 [ %5953, %6049 ], [ %5937, %5939 ]
  %5946 = phi float [ %6054, %6049 ], [ %5913, %5939 ]
  %5947 = phi float [ %6055, %6049 ], [ %5914, %5939 ]
  %5948 = phi float [ %6056, %6049 ], [ %5915, %5939 ]
  %5949 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5945)  ; FirstbitLo(value)
  %5950 = add i32 %5949, %5922
  %5951 = and i32 %5949, 31
  %5952 = shl i32 1, %5951
  %5953 = xor i32 %5952, %5945
  %5954 = mul i32 %5950, 72
  %5955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5954, i32 undef)  ; BufferLoad(srv,index,wot)
  %5956 = extractvalue %dx.types.ResRet.f32 %5955, 0
  %5957 = extractvalue %dx.types.ResRet.f32 %5955, 1
  %5958 = extractvalue %dx.types.ResRet.f32 %5955, 2
  %5959 = add i32 %5954, 12
  %5960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %5959, i32 undef)  ; BufferLoad(srv,index,wot)
  %5961 = extractvalue %dx.types.ResRet.i32 %5960, 0
  %5962 = add i32 %5954, 16
  %5963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5962, i32 undef)  ; BufferLoad(srv,index,wot)
  %5964 = extractvalue %dx.types.ResRet.f32 %5963, 0
  %5965 = extractvalue %dx.types.ResRet.f32 %5963, 1
  %5966 = extractvalue %dx.types.ResRet.f32 %5963, 2
  %5967 = add i32 %5954, 28
  %5968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5967, i32 undef)  ; BufferLoad(srv,index,wot)
  %5969 = extractvalue %dx.types.ResRet.f32 %5968, 0
  %5970 = add i32 %5954, 32
  %5971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5970, i32 undef)  ; BufferLoad(srv,index,wot)
  %5972 = extractvalue %dx.types.ResRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.ResRet.f32 %5971, 1
  %5974 = extractvalue %dx.types.ResRet.f32 %5971, 2
  %5975 = extractvalue %dx.types.ResRet.f32 %5971, 3
  %5976 = add i32 %5954, 48
  %5977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5976, i32 undef)  ; BufferLoad(srv,index,wot)
  %5978 = extractvalue %dx.types.ResRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.ResRet.f32 %5977, 1
  %5980 = add i32 %5954, 56
  %5981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5980, i32 undef)  ; BufferLoad(srv,index,wot)
  %5982 = extractvalue %dx.types.ResRet.f32 %5981, 0
  %5983 = extractvalue %dx.types.ResRet.f32 %5981, 1
  %5984 = add i32 %5954, 64
  %5985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5984, i32 undef)  ; BufferLoad(srv,index,wot)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.ResRet.f32 %5985, 1
  %5988 = mul i32 %5950, 60
  %5989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5988, i32 undef)  ; BufferLoad(srv,index,wot)
  %5990 = extractvalue %dx.types.ResRet.f32 %5989, 0
  %5991 = extractvalue %dx.types.ResRet.f32 %5989, 1
  %5992 = extractvalue %dx.types.ResRet.f32 %5989, 2
  %5993 = add i32 %5988, 12
  %5994 = add i32 %5988, 48
  %5995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5994, i32 undef)  ; BufferLoad(srv,index,wot)
  %5996 = extractvalue %dx.types.ResRet.f32 %5995, 0
  %5997 = extractvalue %dx.types.ResRet.f32 %5995, 1
  %5998 = extractvalue %dx.types.ResRet.f32 %5995, 2
  %5999 = and i32 %5961, 32767
  %6000 = bitcast float %5956 to i32
  %6001 = icmp eq i32 %6000, -1
  %6002 = bitcast float %5957 to i32
  %6003 = and i32 %5961, 32768
  %6004 = icmp ne i32 %6003, 0
  %6005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6006 = extractvalue %dx.types.CBufRet.f32 %6005, 0
  %6007 = extractvalue %dx.types.CBufRet.f32 %6005, 1
  %6008 = extractvalue %dx.types.CBufRet.f32 %6005, 2
  %6009 = fsub fast float %5990, %6006
  %6010 = fsub fast float %5991, %6007
  %6011 = fsub fast float %5992, %6008
  %6012 = fsub fast float %153, %6009
  %6013 = fsub fast float %154, %6010
  %6014 = fsub fast float %155, %6011
  %6015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5993, i32 undef)  ; BufferLoad(srv,index,wot)
  %6016 = extractvalue %dx.types.ResRet.f32 %6015, 0
  %6017 = extractvalue %dx.types.ResRet.f32 %6015, 1
  %6018 = extractvalue %dx.types.ResRet.f32 %6015, 2
  %6019 = call float @dx.op.dot3.f32(i32 55, float %6012, float %6013, float %6014, float %6016, float %6017, float %6018)  ; Dot3(ax,ay,az,bx,by,bz)
  %6020 = add i32 %5988, 24
  %6021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6020, i32 undef)  ; BufferLoad(srv,index,wot)
  %6022 = extractvalue %dx.types.ResRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.ResRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.ResRet.f32 %6021, 2
  %6025 = call float @dx.op.dot3.f32(i32 55, float %6012, float %6013, float %6014, float %6022, float %6023, float %6024)  ; Dot3(ax,ay,az,bx,by,bz)
  %6026 = add i32 %5988, 36
  %6027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6026, i32 undef)  ; BufferLoad(srv,index,wot)
  %6028 = extractvalue %dx.types.ResRet.f32 %6027, 0
  %6029 = extractvalue %dx.types.ResRet.f32 %6027, 1
  %6030 = extractvalue %dx.types.ResRet.f32 %6027, 2
  %6031 = call float @dx.op.dot3.f32(i32 55, float %6012, float %6013, float %6014, float %6028, float %6029, float %6030)  ; Dot3(ax,ay,az,bx,by,bz)
  %6032 = call float @dx.op.unary.f32(i32 6, float %6019)  ; FAbs(value)
  %6033 = call float @dx.op.unary.f32(i32 6, float %6025)  ; FAbs(value)
  %6034 = call float @dx.op.unary.f32(i32 6, float %6031)  ; FAbs(value)
  %6035 = fsub fast float %5996, %6032
  %6036 = fsub fast float %5997, %6033
  %6037 = fsub fast float %5998, %6034
  %6038 = fmul fast float %6035, %5964
  %6039 = fmul fast float %6036, %5965
  %6040 = fmul fast float %6037, %5966
  %6041 = call float @dx.op.binary.f32(i32 36, float %6039, float %6040)  ; FMin(a,b)
  %6042 = call float @dx.op.binary.f32(i32 36, float %6038, float %6041)  ; FMin(a,b)
  %6043 = call float @dx.op.unary.f32(i32 7, float %6042)  ; Saturate(value)
  %6044 = call float @dx.op.binary.f32(i32 36, float %5944, float %6043)  ; FMin(a,b)
  %6045 = uitofp i1 %6004 to float
  %6046 = fsub fast float 1.000000e+00, %6045
  %6047 = fmul fast float %6044, %6046
  %6048 = fcmp fast ogt float %6047, 0.000000e+00
  br i1 %6048, label %6058, label %6049

; <label>:6049                                    ; preds = %6200, %5940
  %6050 = phi float [ %6264, %6200 ], [ %5941, %5940 ]
  %6051 = phi float [ %6265, %6200 ], [ %5942, %5940 ]
  %6052 = phi float [ %6266, %6200 ], [ %5943, %5940 ]
  %6053 = phi float [ %6273, %6200 ], [ %5944, %5940 ]
  %6054 = phi float [ %6270, %6200 ], [ %5946, %5940 ]
  %6055 = phi float [ %6271, %6200 ], [ %5947, %5940 ]
  %6056 = phi float [ %6272, %6200 ], [ %5948, %5940 ]
  %6057 = icmp eq i32 %5945, %5952
  br i1 %6057, label %6274, label %5940

; <label>:6058                                    ; preds = %5940
  br i1 %6001, label %6116, label %6059

; <label>:6059                                    ; preds = %6058
  %6060 = fsub fast float -0.000000e+00, %6016
  %6061 = fsub fast float -0.000000e+00, %6017
  %6062 = fsub fast float -0.000000e+00, %6018
  %6063 = call float @dx.op.dot3.f32(i32 55, float %5890, float %5891, float %5892, float %6060, float %6061, float %6062)  ; Dot3(ax,ay,az,bx,by,bz)
  %6064 = fsub fast float -0.000000e+00, %6063
  %6065 = call float @dx.op.dot3.f32(i32 55, float %6012, float %6013, float %6014, float %6060, float %6061, float %6062)  ; Dot3(ax,ay,az,bx,by,bz)
  %6066 = fadd fast float %6065, %5979
  %6067 = fadd fast float %5978, %6065
  %6068 = fsub fast float -0.000000e+00, %6067
  %6069 = fcmp ogt float %6063, -0.000000e+00
  %6070 = select i1 %6069, float %6068, float %6066
  %6071 = call float @dx.op.unary.f32(i32 6, float %6064)  ; FAbs(value)
  %6072 = fdiv fast float 1.000000e+00, %6071
  %6073 = fmul fast float %6070, %6072
  %6074 = call float @dx.op.binary.f32(i32 35, float %6073, float 0.000000e+00)  ; FMax(a,b)
  %6075 = fsub fast float -0.000000e+00, %6022
  %6076 = fsub fast float -0.000000e+00, %6023
  %6077 = fsub fast float -0.000000e+00, %6024
  %6078 = call float @dx.op.dot3.f32(i32 55, float %5890, float %5891, float %5892, float %6075, float %6076, float %6077)  ; Dot3(ax,ay,az,bx,by,bz)
  %6079 = fsub fast float -0.000000e+00, %6078
  %6080 = call float @dx.op.dot3.f32(i32 55, float %6012, float %6013, float %6014, float %6075, float %6076, float %6077)  ; Dot3(ax,ay,az,bx,by,bz)
  %6081 = fadd fast float %6080, %5983
  %6082 = fadd fast float %5982, %6080
  %6083 = fsub fast float -0.000000e+00, %6082
  %6084 = fcmp ogt float %6078, -0.000000e+00
  %6085 = select i1 %6084, float %6083, float %6081
  %6086 = call float @dx.op.unary.f32(i32 6, float %6079)  ; FAbs(value)
  %6087 = fdiv fast float 1.000000e+00, %6086
  %6088 = fmul fast float %6085, %6087
  %6089 = call float @dx.op.binary.f32(i32 35, float %6088, float 0.000000e+00)  ; FMax(a,b)
  %6090 = fsub fast float -0.000000e+00, %6028
  %6091 = fsub fast float -0.000000e+00, %6029
  %6092 = fsub fast float -0.000000e+00, %6030
  %6093 = call float @dx.op.dot3.f32(i32 55, float %5890, float %5891, float %5892, float %6090, float %6091, float %6092)  ; Dot3(ax,ay,az,bx,by,bz)
  %6094 = fsub fast float -0.000000e+00, %6093
  %6095 = call float @dx.op.dot3.f32(i32 55, float %6012, float %6013, float %6014, float %6090, float %6091, float %6092)  ; Dot3(ax,ay,az,bx,by,bz)
  %6096 = fadd fast float %6095, %5987
  %6097 = fadd fast float %5986, %6095
  %6098 = fsub fast float -0.000000e+00, %6097
  %6099 = fcmp ogt float %6093, -0.000000e+00
  %6100 = select i1 %6099, float %6098, float %6096
  %6101 = call float @dx.op.unary.f32(i32 6, float %6094)  ; FAbs(value)
  %6102 = fdiv fast float 1.000000e+00, %6101
  %6103 = fmul fast float %6100, %6102
  %6104 = call float @dx.op.binary.f32(i32 35, float %6103, float 0.000000e+00)  ; FMax(a,b)
  %6105 = call float @dx.op.binary.f32(i32 36, float %6089, float %6104)  ; FMin(a,b)
  %6106 = call float @dx.op.binary.f32(i32 36, float %6074, float %6105)  ; FMin(a,b)
  %6107 = fmul fast float %6106, %5890
  %6108 = fmul fast float %6106, %5891
  %6109 = fmul fast float %6106, %5892
  %6110 = fadd fast float %6107, %153
  %6111 = fadd fast float %6108, %154
  %6112 = fadd fast float %6109, %155
  %6113 = fsub fast float %6110, %5956
  %6114 = fsub fast float %6111, %5957
  %6115 = fsub fast float %6112, %5958
  br label %6123

; <label>:6116                                    ; preds = %6058
  %6117 = fmul fast float %5890, 8.096000e+03
  %6118 = fmul fast float %5891, 8.096000e+03
  %6119 = fmul fast float %5892, 8.096000e+03
  %6120 = fadd fast float %6117, %153
  %6121 = fadd fast float %6118, %154
  %6122 = fadd fast float %6119, %155
  br label %6123

; <label>:6123                                    ; preds = %6116, %6059
  %6124 = phi float [ %5890, %6116 ], [ %6113, %6059 ]
  %6125 = phi float [ %5891, %6116 ], [ %6114, %6059 ]
  %6126 = phi float [ %5892, %6116 ], [ %6115, %6059 ]
  %6127 = phi float [ %6120, %6116 ], [ %6110, %6059 ]
  %6128 = phi float [ %6121, %6116 ], [ %6111, %6059 ]
  %6129 = phi float [ %6122, %6116 ], [ %6112, %6059 ]
  %6130 = fcmp fast olt float %5975, 1.000000e+00
  br i1 %6130, label %6131, label %6162, !dx.controlflow.hints !88

; <label>:6131                                    ; preds = %6123
  %6132 = fmul fast float %6126, %5973
  %6133 = fmul fast float %6125, %5974
  %6134 = fsub fast float %6132, %6133
  %6135 = fmul fast float %6124, %5974
  %6136 = fmul fast float %6126, %5972
  %6137 = fsub fast float %6135, %6136
  %6138 = fmul fast float %6125, %5972
  %6139 = fmul fast float %6124, %5973
  %6140 = fsub fast float %6138, %6139
  %6141 = fmul fast float %6134, 2.000000e+00
  %6142 = fmul fast float %6137, 2.000000e+00
  %6143 = fmul fast float %6140, 2.000000e+00
  %6144 = fmul fast float %6141, %5975
  %6145 = fmul fast float %6142, %5975
  %6146 = fmul fast float %6143, %5975
  %6147 = fmul fast float %6143, %5973
  %6148 = fmul fast float %6142, %5974
  %6149 = fmul fast float %6141, %5974
  %6150 = fmul fast float %6143, %5972
  %6151 = fmul fast float %6142, %5972
  %6152 = fmul fast float %6141, %5973
  %6153 = fadd fast float %6147, %6124
  %6154 = fadd fast float %6153, %6144
  %6155 = fsub fast float %6154, %6148
  %6156 = fsub fast float %6125, %6150
  %6157 = fadd fast float %6156, %6145
  %6158 = fadd fast float %6157, %6149
  %6159 = fadd fast float %6146, %6126
  %6160 = fsub fast float %6159, %6152
  %6161 = fadd fast float %6160, %6151
  br label %6162

; <label>:6162                                    ; preds = %6131, %6123
  %6163 = phi float [ %6155, %6131 ], [ %6124, %6123 ]
  %6164 = phi float [ %6158, %6131 ], [ %6125, %6123 ]
  %6165 = phi float [ %6161, %6131 ], [ %6126, %6123 ]
  br i1 %6001, label %6197, label %6166

; <label>:6166                                    ; preds = %6162
  %6167 = fmul fast float %5458, 0x400187C840000000
  %6168 = fadd fast float %6167, 0xC00EFC2120000000
  %6169 = fmul fast float %6168, %5458
  %6170 = fadd fast float %6169, 0x3FE5D16340000000
  %6171 = fmul fast float %6170, %5458
  %6172 = fadd fast float %6171, 1.000000e+00
  %6173 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6174 = fsub fast float %6127, %153
  %6175 = fsub fast float %6128, %154
  %6176 = fsub fast float %6129, %155
  %6177 = fsub fast float %6127, %5956
  %6178 = fsub fast float %6128, %5957
  %6179 = fsub fast float %6129, %5958
  %6180 = call float @dx.op.dot3.f32(i32 55, float %6174, float %6175, float %6176, float %6174, float %6175, float %6176)  ; Dot3(ax,ay,az,bx,by,bz)
  %6181 = call float @dx.op.dot3.f32(i32 55, float %6177, float %6178, float %6179, float %6177, float %6178, float %6179)  ; Dot3(ax,ay,az,bx,by,bz)
  %6182 = fadd fast float %6181, 0x3EE4F8B580000000
  %6183 = fdiv fast float %6180, %6182
  %6184 = bitcast float %6183 to i32
  %6185 = ashr i32 %6184, 1
  %6186 = add nsw i32 %6185, 532487669
  %6187 = bitcast i32 %6186 to float
  %6188 = fmul fast float %6187, %6173
  %6189 = call float @dx.op.unary.f32(i32 7, float %6188)  ; Saturate(value)
  %6190 = fmul fast float %6189, 0x4009981AE0000000
  %6191 = fsub fast float 0x40111BBD80000000, %6190
  %6192 = fmul fast float %6191, %6189
  %6193 = fadd fast float %6192, 0xC0009F6020000000
  %6194 = fmul fast float %6193, %6189
  %6195 = fadd fast float %6194, 1.000000e+00
  %6196 = call float @dx.op.unary.f32(i32 7, float %6195)  ; Saturate(value)
  br label %6200

; <label>:6197                                    ; preds = %6162
  %6198 = icmp ne i32 %6002, -1
  %6199 = zext i1 %6198 to i32
  br label %6200

; <label>:6200                                    ; preds = %6197, %6166
  %6201 = phi float [ %5458, %6197 ], [ %6196, %6166 ]
  %6202 = phi i32 [ %6199, %6197 ], [ 0, %6166 ]
  %6203 = fmul float %6201, 5.000000e+00
  %6204 = fsub float 5.000000e+00, %6203
  %6205 = icmp ne i32 %6202, 0
  %6206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6207 = extractvalue %dx.types.CBufRet.f32 %6206, 3
  %6208 = fadd fast float %6207, %6204
  %6209 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6208)  ; FMax(a,b)
  %6210 = call float @dx.op.unary.f32(i32 6, float %6163)  ; FAbs(value)
  %6211 = call float @dx.op.unary.f32(i32 6, float %6164)  ; FAbs(value)
  %6212 = fadd fast float %6211, %6210
  %6213 = call float @dx.op.unary.f32(i32 6, float %6165)  ; FAbs(value)
  %6214 = fadd fast float %6212, %6213
  %6215 = fcmp fast oeq float %6214, 0.000000e+00
  %6216 = fdiv fast float 1.000000e+00, %6214
  %6217 = select i1 %6215, float 1.000000e+00, float %6216
  %6218 = fmul fast float %6217, %6163
  %6219 = fmul fast float %6217, %6164
  %6220 = call float @dx.op.unary.f32(i32 6, float %6219)  ; FAbs(value)
  %6221 = call float @dx.op.unary.f32(i32 6, float %6218)  ; FAbs(value)
  %6222 = fsub fast float 1.000000e+00, %6220
  %6223 = fsub fast float 1.000000e+00, %6221
  %6224 = fcmp fast oge float %6218, 0.000000e+00
  %6225 = fcmp fast oge float %6219, 0.000000e+00
  %6226 = select i1 %6224, float 1.000000e+00, float -1.000000e+00
  %6227 = select i1 %6225, float 1.000000e+00, float -1.000000e+00
  %6228 = fcmp fast ole float %6165, 0.000000e+00
  %6229 = fmul fast float %6226, %6222
  %6230 = fmul fast float %6227, %6223
  %6231 = select i1 %6228, float %6229, float %6218
  %6232 = select i1 %6228, float %6230, float %6219
  %6233 = fmul fast float %6231, 5.000000e-01
  %6234 = fmul fast float %6232, 5.000000e-01
  %6235 = fadd fast float %6233, 5.000000e-01
  %6236 = fadd fast float %6234, 5.000000e-01
  %6237 = uitofp i32 %5999 to float
  %6238 = call float @dx.op.binary.f32(i32 36, float %6209, float 3.000000e+00)  ; FMin(a,b)
  %6239 = fadd fast float %6238, 2.000000e+00
  %6240 = call float @dx.op.unary.f32(i32 21, float %6239)  ; Exp(value)
  %6241 = extractvalue %dx.types.CBufRet.f32 %6206, 1
  %6242 = fmul fast float %6241, %6240
  %6243 = fmul fast float %6242, 2.000000e+00
  %6244 = fsub fast float 1.000000e+00, %6243
  %6245 = fmul fast float %6235, %6244
  %6246 = fmul fast float %6236, %6244
  %6247 = fadd fast float %6245, %6242
  %6248 = fadd fast float %6246, %6242
  %6249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %41, float %6247, float %6248, float %6237, float undef, i32 0, i32 0, i32 undef, float %6209)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6250 = extractvalue %dx.types.ResRet.f32 %6249, 0
  %6251 = extractvalue %dx.types.ResRet.f32 %6249, 1
  %6252 = extractvalue %dx.types.ResRet.f32 %6249, 2
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 3
  %6255 = fmul fast float %6254, %5969
  %6256 = call float @dx.op.binary.f32(i32 36, float %5531, float %6255)  ; FMin(a,b)
  %6257 = select i1 %6205, float %6256, float %6255
  %6258 = fmul fast float %6250, %6047
  %6259 = fmul fast float %6258, %6257
  %6260 = fmul fast float %6251, %6047
  %6261 = fmul fast float %6260, %6257
  %6262 = fmul fast float %6252, %6047
  %6263 = fmul fast float %6262, %6257
  %6264 = fadd fast float %6259, %5941
  %6265 = fadd fast float %6261, %5942
  %6266 = fadd fast float %6263, %5943
  %6267 = fmul fast float %6127, %6047
  %6268 = fmul fast float %6128, %6047
  %6269 = fmul fast float %6129, %6047
  %6270 = fadd fast float %6267, %5946
  %6271 = fadd fast float %6268, %5947
  %6272 = fadd fast float %6269, %5948
  %6273 = fsub fast float %5944, %6047
  br label %6049

; <label>:6274                                    ; preds = %6049
  br label %6275

; <label>:6275                                    ; preds = %6274, %5907
  %6276 = phi float [ %5908, %5907 ], [ %6050, %6274 ]
  %6277 = phi float [ %5909, %5907 ], [ %6051, %6274 ]
  %6278 = phi float [ %5910, %5907 ], [ %6052, %6274 ]
  %6279 = phi float [ %5911, %5907 ], [ %6053, %6274 ]
  %6280 = phi float [ %5913, %5907 ], [ %6054, %6274 ]
  %6281 = phi float [ %5914, %5907 ], [ %6055, %6274 ]
  %6282 = phi float [ %5915, %5907 ], [ %6056, %6274 ]
  %6283 = add i32 %5912, 1
  %6284 = icmp ugt i32 %6283, %5904
  br i1 %6284, label %6285, label %5907, !llvm.loop !89

; <label>:6285                                    ; preds = %6275
  br label %6286

; <label>:6286                                    ; preds = %6285, %5889
  %6287 = phi float [ 0.000000e+00, %5889 ], [ %6276, %6285 ]
  %6288 = phi float [ 0.000000e+00, %5889 ], [ %6277, %6285 ]
  %6289 = phi float [ 0.000000e+00, %5889 ], [ %6278, %6285 ]
  %6290 = phi float [ 0.000000e+00, %5889 ], [ %6280, %6285 ]
  %6291 = phi float [ 0.000000e+00, %5889 ], [ %6281, %6285 ]
  %6292 = phi float [ 0.000000e+00, %5889 ], [ %6282, %6285 ]
  %6293 = call float @dx.op.dot3.f32(i32 55, float %6287, float %6288, float %6289, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6294 = select i1 %214, float 0.000000e+00, float %6287
  %6295 = select i1 %214, float %6293, float %6288
  %6296 = select i1 %214, float 0.000000e+00, float %6289
  %6297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.CBufRet.f32 %6297, 1
  %6300 = extractvalue %dx.types.CBufRet.f32 %6297, 2
  %6301 = extractvalue %dx.types.CBufRet.f32 %6297, 3
  %6302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6302, 0
  %6304 = extractvalue %dx.types.CBufRet.f32 %6302, 1
  %6305 = extractvalue %dx.types.CBufRet.f32 %6302, 2
  %6306 = extractvalue %dx.types.CBufRet.f32 %6302, 3
  %6307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %6308 = extractvalue %dx.types.CBufRet.f32 %6307, 0
  %6309 = extractvalue %dx.types.CBufRet.f32 %6307, 1
  %6310 = extractvalue %dx.types.CBufRet.f32 %6307, 2
  %6311 = extractvalue %dx.types.CBufRet.f32 %6307, 3
  %6312 = call float @dx.op.dot3.f32(i32 55, float %6308, float %6309, float %6310, float %5471, float %5472, float %5473)  ; Dot3(ax,ay,az,bx,by,bz)
  %6313 = call float @dx.op.dot3.f32(i32 55, float %6290, float %6291, float %6292, float %6308, float %6309, float %6310)  ; Dot3(ax,ay,az,bx,by,bz)
  %6314 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %6308, float %6309, float %6310)  ; Dot3(ax,ay,az,bx,by,bz)
  %6315 = fadd fast float %5458, -1.000000e+00
  %6316 = fsub fast float %6313, %6314
  %6317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.f32 %6317, 2
  %6319 = fmul fast float %6318, %6313
  %6320 = fdiv fast float 1.600000e+02, %6319
  %6321 = fmul fast float %6315, %6315
  %6322 = fmul fast float %6321, 0xBFB5B17960000000
  %6323 = fmul fast float %6322, %6316
  %6324 = fmul fast float %6323, %6320
  %6325 = call float @dx.op.unary.f32(i32 21, float %6324)  ; Exp(value)
  %6326 = fmul fast float %6325, 0x3FF04B2960000000
  %6327 = fsub fast float 0x3FF04B2960000000, %6326
  %6328 = call float @dx.op.unary.f32(i32 7, float %6327)  ; Saturate(value)
  %6329 = fmul fast float %6328, 4.000000e+00
  %6330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.f32 %6330, 0
  %6332 = extractvalue %dx.types.CBufRet.f32 %6330, 1
  %6333 = extractvalue %dx.types.CBufRet.f32 %6330, 2
  %6334 = fadd fast float %6331, %6290
  %6335 = fadd fast float %6332, %6291
  %6336 = fadd fast float %6333, %6292
  %6337 = fmul fast float %6334, %6298
  %6338 = call float @dx.op.tertiary.f32(i32 46, float %6335, float %6299, float %6337)  ; FMad(a,b,c)
  %6339 = call float @dx.op.tertiary.f32(i32 46, float %6336, float %6300, float %6338)  ; FMad(a,b,c)
  %6340 = fadd fast float %6339, %6301
  %6341 = fmul fast float %6334, %6303
  %6342 = call float @dx.op.tertiary.f32(i32 46, float %6335, float %6304, float %6341)  ; FMad(a,b,c)
  %6343 = call float @dx.op.tertiary.f32(i32 46, float %6336, float %6305, float %6342)  ; FMad(a,b,c)
  %6344 = fadd fast float %6343, %6306
  %6345 = fmul fast float %6334, %6308
  %6346 = call float @dx.op.tertiary.f32(i32 46, float %6335, float %6309, float %6345)  ; FMad(a,b,c)
  %6347 = call float @dx.op.tertiary.f32(i32 46, float %6336, float %6310, float %6346)  ; FMad(a,b,c)
  %6348 = fadd fast float %6347, %6311
  %6349 = fdiv fast float %6340, %6348
  %6350 = fdiv fast float %6344, %6348
  %6351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6352 = extractvalue %dx.types.CBufRet.f32 %6351, 0
  %6353 = extractvalue %dx.types.CBufRet.f32 %6351, 1
  %6354 = fmul fast float %6352, %6349
  %6355 = fmul fast float %6353, %6350
  %6356 = extractvalue %dx.types.CBufRet.f32 %6351, 2
  %6357 = extractvalue %dx.types.CBufRet.f32 %6351, 3
  %6358 = fadd fast float %6354, %6356
  %6359 = fadd fast float %6355, %6357
  %6360 = fmul fast float %6312, 8.000000e+00
  %6361 = call float @dx.op.unary.f32(i32 7, float %6360)  ; Saturate(value)
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.f32 %6362, 0
  %6364 = fmul fast float %6358, 2.000000e+00
  %6365 = fmul fast float %6359, 2.000000e+00
  %6366 = fadd fast float %6364, -1.000000e+00
  %6367 = fadd fast float %6365, -1.000000e+00
  %6368 = fmul fast float %6366, %6366
  %6369 = fsub fast float 1.000000e+00, %6368
  %6370 = call float @dx.op.unary.f32(i32 7, float %6369)  ; Saturate(value)
  %6371 = fmul fast float %6367, %6367
  %6372 = fsub fast float 1.000000e+00, %6371
  %6373 = call float @dx.op.unary.f32(i32 7, float %6372)  ; Saturate(value)
  %6374 = fmul fast float %6363, %6370
  %6375 = fmul fast float %6374, %6373
  %6376 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  %6377 = fmul fast float %6376, %6361
  %6378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %6358, float %6359, float undef, float undef, i32 0, i32 0, i32 undef, float %6329)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6379 = extractvalue %dx.types.ResRet.f32 %6378, 0
  %6380 = extractvalue %dx.types.ResRet.f32 %6378, 1
  %6381 = extractvalue %dx.types.ResRet.f32 %6378, 2
  %6382 = select i1 %214, float 0.000000e+00, float %6380
  %6383 = select i1 %214, float 0.000000e+00, float %6381
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 2
  %6386 = fmul fast float %6385, %6379
  %6387 = fmul fast float %6382, %6385
  %6388 = fmul fast float %6383, %6385
  %6389 = fsub fast float %6386, %6294
  %6390 = fsub fast float %6387, %6295
  %6391 = fsub fast float %6388, %6296
  %6392 = fmul fast float %6389, %6377
  %6393 = fmul fast float %6390, %6377
  %6394 = fmul fast float %6391, %6377
  %6395 = fadd fast float %6392, %6294
  %6396 = fadd fast float %6393, %6295
  %6397 = fadd fast float %6394, %6296
  br label %6398

; <label>:6398                                    ; preds = %6286, %5825
  %6399 = phi float [ %5771, %5825 ], [ %6395, %6286 ]
  %6400 = phi float [ %5772, %5825 ], [ %6396, %6286 ]
  %6401 = phi float [ %5773, %5825 ], [ %6397, %6286 ]
  %6402 = call float @dx.op.dot3.f32(i32 55, float %5449, float %5450, float %5451, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6403 = fcmp fast ogt float %6402, 0x3E7FF19E20000000
  %6404 = fdiv fast float 1.000000e+00, %6402
  %6405 = select i1 %6403, float %6404, float 0.000000e+00
  %6406 = fmul fast float %6405, %5449
  %6407 = fmul fast float %6405, %5450
  %6408 = fmul fast float %6405, %5451
  %6409 = fadd fast float %6406, -1.000000e+00
  %6410 = fadd fast float %6407, -1.000000e+00
  %6411 = fadd fast float %6408, -1.000000e+00
  %6412 = fmul fast float %6409, 5.000000e-01
  %6413 = fmul fast float %6410, 5.000000e-01
  %6414 = fmul fast float %6411, 5.000000e-01
  %6415 = fadd fast float %6412, 1.000000e+00
  %6416 = fadd fast float %6413, 1.000000e+00
  %6417 = fadd fast float %6414, 1.000000e+00
  %6418 = call float @dx.op.binary.f32(i32 35, float %5465, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6419 = fdiv fast float %4415, %6418
  %6420 = fcmp fast olt float %5110, 1.270000e+02
  %6421 = fcmp fast olt float %5111, 1.270000e+02
  %6422 = fcmp fast olt float %5112, 1.270000e+02
  %6423 = fmul fast float %5110, 0xBFF7154760000000
  %6424 = fmul fast float %6423, %6419
  %6425 = fmul fast float %5111, 0xBFF7154760000000
  %6426 = fmul fast float %6425, %6419
  %6427 = fmul fast float %5112, 0xBFF7154760000000
  %6428 = fmul fast float %6427, %6419
  %6429 = call float @dx.op.unary.f32(i32 21, float %6424)  ; Exp(value)
  %6430 = call float @dx.op.unary.f32(i32 21, float %6426)  ; Exp(value)
  %6431 = call float @dx.op.unary.f32(i32 21, float %6428)  ; Exp(value)
  %6432 = call float @dx.op.unary.f32(i32 7, float %6429)  ; Saturate(value)
  %6433 = call float @dx.op.unary.f32(i32 7, float %6430)  ; Saturate(value)
  %6434 = call float @dx.op.unary.f32(i32 7, float %6431)  ; Saturate(value)
  %6435 = select i1 %6420, float %6432, float 0.000000e+00
  %6436 = select i1 %6421, float %6433, float 0.000000e+00
  %6437 = select i1 %6422, float %6434, float 0.000000e+00
  %6438 = fmul fast float %6435, %5831
  %6439 = fmul fast float %6436, %5831
  %6440 = fmul fast float %6437, %5831
  %6441 = fadd fast float %6438, -1.000000e+00
  %6442 = fadd fast float %6439, -1.000000e+00
  %6443 = fadd fast float %6440, -1.000000e+00
  %6444 = fmul fast float %6441, %5058
  %6445 = fmul fast float %6442, %5058
  %6446 = fmul fast float %6443, %5058
  %6447 = fmul fast float %6399, %5826
  %6448 = fmul fast float %6400, %5827
  %6449 = fmul fast float %6401, %5828
  %6450 = fsub fast float 1.000000e+00, %5465
  %6451 = bitcast float %6450 to i32
  %6452 = sitofp i32 %6451 to float
  %6453 = fmul fast float %6452, 5.000000e+00
  %6454 = fadd fast float %6453, 0xC1EFBF8940000000
  %6455 = fptosi float %6454 to i32
  %6456 = bitcast i32 %6455 to float
  %6457 = fmul fast float %6456, %5062
  %6458 = fmul fast float %5763, %6457
  %6459 = fmul fast float %6458, %5831
  %6460 = fmul fast float %6459, %6415
  %6461 = fmul fast float %5764, %6457
  %6462 = fmul fast float %6461, %5831
  %6463 = fmul fast float %6462, %6416
  %6464 = fmul fast float %5765, %6457
  %6465 = fmul fast float %6464, %5831
  %6466 = fmul fast float %6465, %6417
  %6467 = fadd fast float %6447, %5048
  %6468 = fadd fast float %6467, %6460
  %6469 = fmul fast float %6468, %5058
  %6470 = fadd fast float %6448, %5049
  %6471 = fadd fast float %6470, %6463
  %6472 = fmul fast float %6471, %5058
  %6473 = fadd fast float %6449, %5050
  %6474 = fadd fast float %6473, %6466
  %6475 = fmul fast float %6474, %5058
  %6476 = fmul fast float %5453, 0x4012D0A400000000
  %6477 = fadd fast float %6446, 1.000000e+00
  %6478 = fadd fast float %6445, 1.000000e+00
  %6479 = fadd fast float %6444, 1.000000e+00
  %6480 = fmul fast float %5831, %5765
  %6481 = fmul fast float %5831, %5764
  %6482 = fmul fast float %5831, %5763
  %6483 = fmul fast float %5520, %5058
  %6484 = fsub fast float 1.000000e+00, %6483
  %6485 = call float @dx.op.unary.f32(i32 7, float %6484)  ; Saturate(value)
  %6486 = fsub fast float 1.000000e+00, %6485
  %6487 = fadd fast float %6476, 0x3FDB6377A0000000
  %6488 = fmul fast float %6486, %6487
  %6489 = call float @dx.op.dot3.f32(i32 55, float %5128, float %5129, float %5130, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6490 = fadd fast float %6488, %6489
  %6491 = call float @dx.op.unary.f32(i32 7, float %6490)  ; Saturate(value)
  %6492 = call float @dx.op.binary.f32(i32 35, float %6491, float 0x3F847AE140000000)  ; FMax(a,b)
  %6493 = fmul fast float %6492, %6492
  %6494 = fmul fast float %6493, %6493
  %6495 = fmul fast float %6494, 0xC00A935000000000
  %6496 = call float @dx.op.unary.f32(i32 21, float %6495)  ; Exp(value)
  %6497 = fsub fast float 1.000000e+00, %6496
  %6498 = fmul fast float %6479, %5767
  %6499 = fmul fast float %6498, %6497
  %6500 = fmul fast float %6478, %5768
  %6501 = fmul fast float %6500, %6497
  %6502 = fmul fast float %6477, %5769
  %6503 = fmul fast float %6502, %6497
  %6504 = fadd fast float %6499, %6482
  %6505 = fmul fast float %6504, %5058
  %6506 = fadd fast float %6501, %6481
  %6507 = fmul fast float %6506, %5058
  %6508 = fadd fast float %6503, %6480
  %6509 = fmul fast float %6508, %5058
  %6510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6511 = extractvalue %dx.types.CBufRet.f32 %6510, 3
  %6512 = fcmp fast oeq float %6511, 0.000000e+00
  br i1 %6512, label %8130, label %6513

; <label>:6513                                    ; preds = %6398
  %6514 = extractvalue %dx.types.CBufRet.f32 %6510, 0
  %6515 = extractvalue %dx.types.CBufRet.f32 %6510, 1
  %6516 = extractvalue %dx.types.CBufRet.f32 %6510, 2
  %6517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6518 = extractvalue %dx.types.CBufRet.f32 %6517, 0
  %6519 = extractvalue %dx.types.CBufRet.f32 %6517, 1
  %6520 = extractvalue %dx.types.CBufRet.f32 %6517, 2
  %6521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6522 = extractvalue %dx.types.CBufRet.f32 %6521, 0
  %6523 = extractvalue %dx.types.CBufRet.f32 %6521, 1
  %6524 = call float @dx.op.dot3.f32(i32 55, float %6518, float %6519, float %6520, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6525 = select i1 %214, float %6522, float %6518
  %6526 = select i1 %214, float %6524, float %6519
  %6527 = select i1 %214, float %6523, float %6520
  %6528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6529 = extractvalue %dx.types.CBufRet.f32 %6528, 2
  %6530 = fmul fast float %6529, %105
  %6531 = fmul fast float %6529, %106
  %6532 = fmul fast float %6529, %107
  %6533 = fadd fast float %6530, %153
  %6534 = fadd fast float %6531, %154
  %6535 = fadd fast float %6532, %155
  %6536 = fcmp fast olt float %6511, 0.000000e+00
  br i1 %6536, label %7632, label %6537

; <label>:6537                                    ; preds = %6513
  %6538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6539 = extractvalue %dx.types.CBufRet.f32 %6538, 0
  %6540 = extractvalue %dx.types.CBufRet.f32 %6538, 1
  %6541 = extractvalue %dx.types.CBufRet.f32 %6538, 2
  %6542 = extractvalue %dx.types.CBufRet.f32 %6538, 3
  %6543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6544 = extractvalue %dx.types.CBufRet.f32 %6543, 0
  %6545 = extractvalue %dx.types.CBufRet.f32 %6543, 1
  %6546 = extractvalue %dx.types.CBufRet.f32 %6543, 2
  %6547 = extractvalue %dx.types.CBufRet.f32 %6543, 3
  %6548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6549 = extractvalue %dx.types.CBufRet.f32 %6548, 0
  %6550 = extractvalue %dx.types.CBufRet.f32 %6548, 1
  %6551 = extractvalue %dx.types.CBufRet.f32 %6548, 2
  %6552 = extractvalue %dx.types.CBufRet.f32 %6548, 3
  %6553 = fmul fast float %6539, %6533
  %6554 = call float @dx.op.tertiary.f32(i32 46, float %6534, float %6540, float %6553)  ; FMad(a,b,c)
  %6555 = call float @dx.op.tertiary.f32(i32 46, float %6535, float %6541, float %6554)  ; FMad(a,b,c)
  %6556 = fadd fast float %6555, %6542
  %6557 = fmul fast float %6544, %6533
  %6558 = call float @dx.op.tertiary.f32(i32 46, float %6534, float %6545, float %6557)  ; FMad(a,b,c)
  %6559 = call float @dx.op.tertiary.f32(i32 46, float %6535, float %6546, float %6558)  ; FMad(a,b,c)
  %6560 = fadd fast float %6559, %6547
  %6561 = fmul fast float %6549, %6533
  %6562 = call float @dx.op.tertiary.f32(i32 46, float %6534, float %6550, float %6561)  ; FMad(a,b,c)
  %6563 = call float @dx.op.tertiary.f32(i32 46, float %6535, float %6551, float %6562)  ; FMad(a,b,c)
  %6564 = fadd fast float %6563, %6552
  %6565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6566 = extractvalue %dx.types.CBufRet.f32 %6565, 0
  %6567 = extractvalue %dx.types.CBufRet.f32 %6565, 1
  %6568 = extractvalue %dx.types.CBufRet.f32 %6565, 3
  %6569 = fmul fast float %6568, %6556
  %6570 = fmul fast float %6568, %6560
  %6571 = fadd fast float %6569, %6566
  %6572 = fadd fast float %6570, %6567
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6575 = extractvalue %dx.types.CBufRet.f32 %6573, 1
  %6576 = extractvalue %dx.types.CBufRet.f32 %6573, 3
  %6577 = fmul fast float %6576, %6556
  %6578 = fmul fast float %6576, %6560
  %6579 = fadd fast float %6577, %6574
  %6580 = fadd fast float %6578, %6575
  %6581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6582 = extractvalue %dx.types.CBufRet.f32 %6581, 1
  %6583 = fsub fast float %6582, %6564
  %6584 = extractvalue %dx.types.CBufRet.f32 %6581, 2
  %6585 = fmul fast float %6583, %6584
  %6586 = fsub fast float 1.000000e+00, %6585
  %6587 = call float @dx.op.unary.f32(i32 7, float %6586)  ; Saturate(value)
  %6588 = extractvalue %dx.types.CBufRet.f32 %6573, 2
  %6589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6590 = extractvalue %dx.types.CBufRet.f32 %6589, 2
  %6591 = fadd fast float %6590, %6588
  %6592 = fcmp fast ogt float %6591, 0.000000e+00
  br i1 %6592, label %6593, label %6617

; <label>:6593                                    ; preds = %6537
  %6594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6595 = extractvalue %dx.types.CBufRet.f32 %6594, 0
  %6596 = extractvalue %dx.types.CBufRet.f32 %6594, 1
  %6597 = fsub fast float %6579, %6595
  %6598 = fsub fast float %6580, %6596
  %6599 = fcmp fast olt float %6597, 0.000000e+00
  %6600 = fcmp fast olt float %6598, 0.000000e+00
  %6601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6602 = extractvalue %dx.types.CBufRet.f32 %6601, 0
  %6603 = extractvalue %dx.types.CBufRet.f32 %6601, 1
  %6604 = extractvalue %dx.types.CBufRet.f32 %6601, 2
  %6605 = extractvalue %dx.types.CBufRet.f32 %6601, 3
  %6606 = select i1 %6599, float %6602, float %6604
  %6607 = select i1 %6600, float %6603, float %6605
  %6608 = fmul fast float %6606, %6597
  %6609 = fmul fast float %6607, %6598
  %6610 = call float @dx.op.unary.f32(i32 6, float %6608)  ; FAbs(value)
  %6611 = call float @dx.op.unary.f32(i32 6, float %6609)  ; FAbs(value)
  %6612 = extractvalue %dx.types.CBufRet.f32 %6528, 0
  %6613 = call float @dx.op.binary.f32(i32 35, float %6610, float %6611)  ; FMax(a,b)
  %6614 = fsub fast float %6612, %6613
  %6615 = call float @dx.op.unary.f32(i32 7, float %6614)  ; Saturate(value)
  %6616 = fmul fast float %6615, %6587
  br label %6617

; <label>:6617                                    ; preds = %6593, %6537
  %6618 = phi float [ %6616, %6593 ], [ 0.000000e+00, %6537 ]
  %6619 = extractvalue %dx.types.CBufRet.f32 %6565, 2
  %6620 = extractvalue %dx.types.CBufRet.f32 %6589, 1
  %6621 = fadd fast float %6620, %6619
  %6622 = fcmp fast ogt float %6621, 0.000000e+00
  %6623 = extractvalue %dx.types.CBufRet.f32 %6528, 0
  br i1 %6622, label %6624, label %6647

; <label>:6624                                    ; preds = %6617
  %6625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6626 = extractvalue %dx.types.CBufRet.f32 %6625, 0
  %6627 = extractvalue %dx.types.CBufRet.f32 %6625, 1
  %6628 = fsub fast float %6571, %6626
  %6629 = fsub fast float %6572, %6627
  %6630 = fcmp fast olt float %6628, 0.000000e+00
  %6631 = fcmp fast olt float %6629, 0.000000e+00
  %6632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6633 = extractvalue %dx.types.CBufRet.f32 %6632, 0
  %6634 = extractvalue %dx.types.CBufRet.f32 %6632, 1
  %6635 = extractvalue %dx.types.CBufRet.f32 %6632, 2
  %6636 = extractvalue %dx.types.CBufRet.f32 %6632, 3
  %6637 = select i1 %6630, float %6633, float %6635
  %6638 = select i1 %6631, float %6634, float %6636
  %6639 = fmul fast float %6637, %6628
  %6640 = fmul fast float %6638, %6629
  %6641 = call float @dx.op.unary.f32(i32 6, float %6639)  ; FAbs(value)
  %6642 = call float @dx.op.unary.f32(i32 6, float %6640)  ; FAbs(value)
  %6643 = call float @dx.op.binary.f32(i32 35, float %6641, float %6642)  ; FMax(a,b)
  %6644 = fsub fast float %6623, %6643
  %6645 = call float @dx.op.unary.f32(i32 7, float %6644)  ; Saturate(value)
  %6646 = fmul fast float %6645, %6587
  br label %6647

; <label>:6647                                    ; preds = %6624, %6617
  %6648 = phi float [ %6646, %6624 ], [ 0.000000e+00, %6617 ]
  %6649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6650 = extractvalue %dx.types.CBufRet.f32 %6649, 1
  %6651 = call float @dx.op.unary.f32(i32 7, float %6650)  ; Saturate(value)
  %6652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6653 = extractvalue %dx.types.CBufRet.f32 %6652, 0
  %6654 = extractvalue %dx.types.CBufRet.f32 %6652, 1
  %6655 = fsub fast float %6556, %6653
  %6656 = fsub fast float %6560, %6654
  %6657 = fcmp fast olt float %6655, 0.000000e+00
  %6658 = fcmp fast olt float %6656, 0.000000e+00
  %6659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6660 = extractvalue %dx.types.CBufRet.f32 %6659, 0
  %6661 = extractvalue %dx.types.CBufRet.f32 %6659, 1
  %6662 = extractvalue %dx.types.CBufRet.f32 %6659, 2
  %6663 = extractvalue %dx.types.CBufRet.f32 %6659, 3
  %6664 = select i1 %6657, float %6660, float %6662
  %6665 = select i1 %6658, float %6661, float %6663
  %6666 = fmul fast float %6664, %6655
  %6667 = fmul fast float %6665, %6656
  %6668 = call float @dx.op.unary.f32(i32 6, float %6666)  ; FAbs(value)
  %6669 = call float @dx.op.unary.f32(i32 6, float %6667)  ; FAbs(value)
  %6670 = call float @dx.op.binary.f32(i32 35, float %6668, float %6669)  ; FMax(a,b)
  %6671 = fsub fast float %6623, %6670
  %6672 = call float @dx.op.unary.f32(i32 7, float %6671)  ; Saturate(value)
  %6673 = call float @dx.op.binary.f32(i32 36, float %6672, float %6651)  ; FMin(a,b)
  %6674 = fmul fast float %6673, %6587
  %6675 = fsub fast float %6648, %6674
  %6676 = fsub fast float %6618, %6648
  %6677 = fsub fast float %6676, %6674
  %6678 = call float @dx.op.binary.f32(i32 35, float %6648, float %6618)  ; FMax(a,b)
  %6679 = call float @dx.op.binary.f32(i32 35, float %6674, float %6678)  ; FMax(a,b)
  %6680 = fcmp fast olt float %6679, 1.000000e+00
  br i1 %6680, label %6681, label %7079, !dx.controlflow.hints !91

; <label>:6681                                    ; preds = %6647
  %6682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6683 = extractvalue %dx.types.CBufRet.f32 %6682, 0
  %6684 = fcmp fast une float %6683, 0.000000e+00
  br i1 %6684, label %6685, label %7079, !dx.controlflow.hints !92

; <label>:6685                                    ; preds = %6681
  %6686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6687 = extractvalue %dx.types.CBufRet.f32 %6686, 0
  %6688 = extractvalue %dx.types.CBufRet.f32 %6686, 1
  %6689 = extractvalue %dx.types.CBufRet.f32 %6686, 2
  %6690 = extractvalue %dx.types.CBufRet.f32 %6686, 3
  %6691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6692 = extractvalue %dx.types.CBufRet.f32 %6691, 0
  %6693 = extractvalue %dx.types.CBufRet.f32 %6691, 1
  %6694 = extractvalue %dx.types.CBufRet.f32 %6691, 2
  %6695 = extractvalue %dx.types.CBufRet.f32 %6691, 3
  %6696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6697 = extractvalue %dx.types.CBufRet.f32 %6696, 0
  %6698 = extractvalue %dx.types.CBufRet.f32 %6696, 1
  %6699 = extractvalue %dx.types.CBufRet.f32 %6696, 2
  %6700 = extractvalue %dx.types.CBufRet.f32 %6696, 3
  %6701 = fmul fast float %6687, %6533
  %6702 = call float @dx.op.tertiary.f32(i32 46, float %6534, float %6688, float %6701)  ; FMad(a,b,c)
  %6703 = call float @dx.op.tertiary.f32(i32 46, float %6535, float %6689, float %6702)  ; FMad(a,b,c)
  %6704 = fadd fast float %6703, %6690
  %6705 = fmul fast float %6692, %6533
  %6706 = call float @dx.op.tertiary.f32(i32 46, float %6534, float %6693, float %6705)  ; FMad(a,b,c)
  %6707 = call float @dx.op.tertiary.f32(i32 46, float %6535, float %6694, float %6706)  ; FMad(a,b,c)
  %6708 = fadd fast float %6707, %6695
  %6709 = fmul fast float %6697, %6533
  %6710 = call float @dx.op.tertiary.f32(i32 46, float %6534, float %6698, float %6709)  ; FMad(a,b,c)
  %6711 = call float @dx.op.tertiary.f32(i32 46, float %6535, float %6699, float %6710)  ; FMad(a,b,c)
  %6712 = fadd fast float %6711, %6700
  %6713 = fcmp fast oge float %6704, 1.000000e+00
  %6714 = fcmp fast oge float %6708, 1.000000e+00
  %6715 = or i1 %6713, %6714
  %6716 = fcmp fast olt float %6704, 0.000000e+00
  %6717 = fcmp fast olt float %6708, 0.000000e+00
  %6718 = or i1 %6716, %6717
  %6719 = or i1 %6715, %6718
  br i1 %6719, label %7079, label %6720, !dx.controlflow.hints !93

; <label>:6720                                    ; preds = %6685
  %6721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6722 = extractvalue %dx.types.CBufRet.f32 %6721, 0
  %6723 = extractvalue %dx.types.CBufRet.f32 %6721, 1
  %6724 = extractvalue %dx.types.CBufRet.f32 %6721, 2
  %6725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6726 = extractvalue %dx.types.CBufRet.i32 %6725, 2
  %6727 = uitofp i32 %6726 to float
  %6728 = extractvalue %dx.types.CBufRet.i32 %6725, 3
  %6729 = uitofp i32 %6728 to float
  %6730 = extractvalue %dx.types.CBufRet.f32 %6721, 3
  %6731 = fmul fast float %6730, 2.000000e+00
  %6732 = fsub fast float %6704, %6722
  %6733 = fsub fast float %6708, %6723
  %6734 = fmul fast float %6731, %6732
  %6735 = fmul fast float %6731, %6733
  %6736 = fdiv fast float 1.000000e+00, %6516
  %6737 = fmul fast float %6735, %6736
  %6738 = call float @dx.op.unary.f32(i32 6, float %6737)  ; FAbs(value)
  %6739 = fmul fast float %6724, %6535
  %6740 = fmul fast float %6739, %6731
  %6741 = call float @dx.op.unary.f32(i32 6, float %6740)  ; FAbs(value)
  %6742 = call float @dx.op.unary.f32(i32 6, float %6734)  ; FAbs(value)
  %6743 = call float @dx.op.binary.f32(i32 35, float %6741, float %6738)  ; FMax(a,b)
  %6744 = call float @dx.op.binary.f32(i32 35, float %6742, float %6743)  ; FMax(a,b)
  %6745 = fmul fast float %6744, 2.000000e+00
  %6746 = call float @dx.op.unary.f32(i32 23, float %6745)  ; Log(value)
  %6747 = call float @dx.op.binary.f32(i32 35, float %6746, float %6727)  ; FMax(a,b)
  %6748 = call float @dx.op.unary.f32(i32 22, float %6747)  ; Frc(value)
  %6749 = fadd fast float %6748, 0xBFEA666660000000
  %6750 = fmul fast float %6749, 8.000000e+00
  %6751 = call float @dx.op.unary.f32(i32 7, float %6750)  ; Saturate(value)
  %6752 = call float @dx.op.unary.f32(i32 27, float %6747)  ; Round_ni(value)
  %6753 = fadd fast float %6752, %6751
  %6754 = call float @dx.op.binary.f32(i32 36, float %6753, float %6729)  ; FMin(a,b)
  %6755 = call float @dx.op.unary.f32(i32 27, float %6754)  ; Round_ni(value)
  %6756 = fsub fast float -0.000000e+00, %6755
  %6757 = call float @dx.op.unary.f32(i32 21, float %6756)  ; Exp(value)
  %6758 = fmul fast float %6757, %6731
  %6759 = fmul fast float %6758, %6704
  %6760 = fmul fast float %6758, %6708
  %6761 = fmul fast float %6759, 2.500000e-01
  %6762 = fmul fast float %6760, 2.500000e-01
  %6763 = fadd fast float %6761, 5.000000e-01
  %6764 = fadd fast float %6762, 5.000000e-01
  %6765 = fsub fast float %6729, %6727
  %6766 = fptoui float %6765 to i32
  %6767 = add i32 %6766, 320
  %6768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %6767)  ; CBufferLoadLegacy(handle,regIndex)
  %6769 = extractvalue %dx.types.CBufRet.f32 %6768, 0
  %6770 = extractvalue %dx.types.CBufRet.f32 %6768, 1
  %6771 = fcmp fast une float %6754, %6729
  %6772 = fsub fast float %6704, %6769
  %6773 = fsub fast float %6708, %6770
  %6774 = call float @dx.op.unary.f32(i32 6, float %6772)  ; FAbs(value)
  %6775 = call float @dx.op.unary.f32(i32 6, float %6773)  ; FAbs(value)
  %6776 = fmul fast float %6774, %6758
  %6777 = fmul fast float %6775, %6758
  %6778 = fcmp fast olt float %6776, 1.000000e+00
  %6779 = fcmp fast olt float %6777, 1.000000e+00
  %6780 = and i1 %6778, %6779
  %6781 = or i1 %6771, %6780
  br i1 %6781, label %6782, label %7079, !dx.controlflow.hints !94

; <label>:6782                                    ; preds = %6720
  %6783 = fmul fast float %6760, 5.000000e-01
  %6784 = fmul fast float %6759, 5.000000e-01
  %6785 = fadd fast float %6783, 5.000000e-01
  %6786 = fadd fast float %6784, 5.000000e-01
  %6787 = sitofp i32 %6726 to float
  %6788 = fsub fast float %6754, %6787
  %6789 = call float @dx.op.unary.f32(i32 27, float %6788)  ; Round_ni(value)
  %6790 = call float @dx.op.unary.f32(i32 22, float %6754)  ; Frc(value)
  %6791 = call float @dx.op.unary.f32(i32 22, float %6786)  ; Frc(value)
  %6792 = call float @dx.op.unary.f32(i32 22, float %6785)  ; Frc(value)
  %6793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6791, float %6792, float %6789, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6794 = extractvalue %dx.types.ResRet.f32 %6793, 0
  %6795 = extractvalue %dx.types.ResRet.f32 %6793, 1
  %6796 = extractvalue %dx.types.ResRet.f32 %6793, 2
  %6797 = extractvalue %dx.types.ResRet.f32 %6793, 3
  %6798 = fcmp fast ogt float %6790, 0.000000e+00
  br i1 %6798, label %6799, label %6820, !dx.controlflow.hints !95

; <label>:6799                                    ; preds = %6782
  %6800 = fadd fast float %6789, 1.000000e+00
  %6801 = call float @dx.op.unary.f32(i32 22, float %6763)  ; Frc(value)
  %6802 = call float @dx.op.unary.f32(i32 22, float %6764)  ; Frc(value)
  %6803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6801, float %6802, float %6800, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6804 = extractvalue %dx.types.ResRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.ResRet.f32 %6803, 1
  %6806 = extractvalue %dx.types.ResRet.f32 %6803, 2
  %6807 = extractvalue %dx.types.ResRet.f32 %6803, 3
  %6808 = fsub fast float %6804, %6794
  %6809 = fsub fast float %6805, %6795
  %6810 = fsub fast float %6806, %6796
  %6811 = fsub fast float %6807, %6797
  %6812 = fmul fast float %6808, %6790
  %6813 = fmul fast float %6809, %6790
  %6814 = fmul fast float %6810, %6790
  %6815 = fmul fast float %6811, %6790
  %6816 = fadd fast float %6812, %6794
  %6817 = fadd fast float %6813, %6795
  %6818 = fadd fast float %6814, %6796
  %6819 = fadd fast float %6815, %6797
  br label %6820

; <label>:6820                                    ; preds = %6799, %6782
  %6821 = phi float [ %6816, %6799 ], [ %6794, %6782 ]
  %6822 = phi float [ %6817, %6799 ], [ %6795, %6782 ]
  %6823 = phi float [ %6818, %6799 ], [ %6796, %6782 ]
  %6824 = phi float [ %6819, %6799 ], [ %6797, %6782 ]
  %6825 = fadd fast float %6821, -5.000000e-01
  %6826 = fadd fast float %6823, -5.000000e-01
  %6827 = fmul fast float %6825, 0xBFD5555560000000
  %6828 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6826, float %6827)  ; FMad(a,b,c)
  %6829 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6822, float 0.000000e+00)  ; FMad(a,b,c)
  %6830 = fadd fast float %6829, %6824
  %6831 = fmul fast float %6825, -7.500000e-01
  %6832 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6826, float %6831)  ; FMad(a,b,c)
  %6833 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6822, float 0.000000e+00)  ; FMad(a,b,c)
  %6834 = fadd fast float %6833, %6824
  %6835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6836 = extractvalue %dx.types.CBufRet.f32 %6835, 0
  %6837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6838 = extractvalue %dx.types.CBufRet.f32 %6837, 0
  %6839 = extractvalue %dx.types.CBufRet.f32 %6837, 1
  %6840 = extractvalue %dx.types.CBufRet.f32 %6837, 2
  %6841 = extractvalue %dx.types.CBufRet.f32 %6837, 3
  %6842 = fsub fast float %6838, %6828
  %6843 = fsub fast float %6839, %6830
  %6844 = fsub fast float %6840, %6832
  %6845 = fsub fast float %6841, %6834
  %6846 = fmul fast float %6842, %6836
  %6847 = fmul fast float %6843, %6836
  %6848 = fmul fast float %6844, %6836
  %6849 = fmul fast float %6845, %6836
  %6850 = fadd fast float %6846, %6828
  %6851 = fadd fast float %6847, %6830
  %6852 = fadd fast float %6848, %6832
  %6853 = fadd fast float %6849, %6834
  %6854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6855 = extractvalue %dx.types.ResRet.i32 %6854, 0
  %6856 = and i32 %6855, 536870911
  %6857 = uitofp i32 %6856 to float
  %6858 = fmul fast float %6857, %6704
  %6859 = fmul fast float %6857, %6708
  %6860 = fptoui float %6858 to i32
  %6861 = fptoui float %6859 to i32
  %6862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6863 = extractvalue %dx.types.ResRet.i32 %6862, 0
  %6864 = and i32 %6863, 31
  %6865 = lshr i32 %6860, %6864
  %6866 = lshr i32 %6861, %6864
  %6867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6868 = extractvalue %dx.types.ResRet.i32 %6867, 0
  %6869 = and i32 %6868, 31
  %6870 = shl i32 1, %6869
  %6871 = call i32 @dx.op.binary.i32(i32 40, i32 %6870, i32 4)  ; UMin(a,b)
  %6872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6873 = extractvalue %dx.types.ResRet.i32 %6872, 0
  %6874 = extractvalue %dx.types.ResRet.i32 %6872, 1
  %6875 = icmp eq i32 %6871, 0
  br i1 %6875, label %6917, label %6876

; <label>:6876                                    ; preds = %6820
  br label %6877

; <label>:6877                                    ; preds = %6905, %6876
  %6878 = phi i32 [ %6908, %6905 ], [ 0, %6876 ]
  %6879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6880 = extractvalue %dx.types.ResRet.i32 %6879, 0
  %6881 = lshr i32 %6880, 16
  %6882 = and i32 %6881, 31
  %6883 = shl i32 %6866, %6882
  %6884 = add i32 %6883, %6865
  %6885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6886 = extractvalue %dx.types.ResRet.i32 %6885, 0
  %6887 = and i32 %6886, 31
  %6888 = shl i32 %6884, %6887
  %6889 = add i32 %6888, %6878
  %6890 = shl i32 %6889, 2
  %6891 = add i32 %6890, 32
  %6892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6891, i32 undef)  ; BufferLoad(srv,index,wot)
  %6893 = extractvalue %dx.types.ResRet.i32 %6892, 0
  %6894 = icmp slt i32 %6893, 0
  %6895 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6878
  %6896 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6878
  %6897 = bitcast float* %6895 to i32*
  %6898 = bitcast float* %6896 to i32*
  br i1 %6894, label %6899, label %6905

; <label>:6899                                    ; preds = %6877
  %6900 = and i32 %6893, 1073741823
  %6901 = add nuw nsw i32 %6900, 20
  %6902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6901, i32 undef)  ; BufferLoad(srv,index,wot)
  %6903 = extractvalue %dx.types.ResRet.i32 %6902, 0
  %6904 = extractvalue %dx.types.ResRet.i32 %6902, 1
  br label %6905

; <label>:6905                                    ; preds = %6899, %6877
  %6906 = phi i32 [ %6903, %6899 ], [ %6873, %6877 ]
  %6907 = phi i32 [ %6904, %6899 ], [ %6874, %6877 ]
  store i32 %6906, i32* %6897, align 4
  store i32 %6907, i32* %6898, align 4
  %6908 = add nuw i32 %6878, 1
  %6909 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6910 = extractvalue %dx.types.CBufRet.i32 %6909, 2
  %6911 = icmp eq i32 %6910, 0
  %6912 = icmp ugt i32 %6893, -1073741825
  %6913 = and i1 %6912, %6911
  %6914 = icmp ult i32 %6908, %6871
  %6915 = and i1 %6913, %6914
  br i1 %6915, label %6877, label %6916

; <label>:6916                                    ; preds = %6905
  br label %6917

; <label>:6917                                    ; preds = %6916, %6820
  %6918 = phi i32 [ 0, %6820 ], [ %6908, %6916 ]
  %6919 = extractvalue %dx.types.CBufRet.f32 %6682, 2
  %6920 = fptoui float %6919 to i32
  %6921 = icmp eq i32 %6920, 0
  br i1 %6921, label %6973, label %6922

; <label>:6922                                    ; preds = %6917
  br label %6923

; <label>:6923                                    ; preds = %6968, %6922
  %6924 = phi i32 [ %6969, %6968 ], [ %6918, %6922 ]
  %6925 = phi i32 [ %6970, %6968 ], [ 0, %6922 ]
  %6926 = lshr i32 %6925, 2
  %6927 = and i32 %6925, 3
  %6928 = add nuw nsw i32 %6926, 83
  %6929 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 %6928)  ; CBufferLoadLegacy(handle,regIndex)
  %6930 = extractvalue %dx.types.CBufRet.i32 %6929, 0
  %6931 = extractvalue %dx.types.CBufRet.i32 %6929, 1
  %6932 = extractvalue %dx.types.CBufRet.i32 %6929, 2
  %6933 = extractvalue %dx.types.CBufRet.i32 %6929, 3
  %6934 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 0
  store i32 %6930, i32* %6934, align 4
  %6935 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 1
  store i32 %6931, i32* %6935, align 4
  %6936 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 2
  store i32 %6932, i32* %6936, align 4
  %6937 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 3
  store i32 %6933, i32* %6937, align 4
  %6938 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 %6927
  %6939 = load i32, i32* %6938, align 4, !tbaa !96, !noalias !100
  %6940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6941 = extractvalue %dx.types.ResRet.i32 %6940, 0
  %6942 = lshr i32 %6941, 16
  %6943 = and i32 %6942, 31
  %6944 = shl i32 %6866, %6943
  %6945 = add i32 %6944, %6865
  %6946 = shl i32 %6945, 2
  %6947 = add i32 %6946, %6939
  %6948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6947, i32 undef)  ; BufferLoad(srv,index,wot)
  %6949 = extractvalue %dx.types.ResRet.i32 %6948, 0
  %6950 = icmp eq i32 %6949, 0
  br i1 %6950, label %6968, label %6951

; <label>:6951                                    ; preds = %6923
  %6952 = icmp slt i32 %6949, 0
  %6953 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6924
  %6954 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6924
  %6955 = bitcast float* %6953 to i32*
  %6956 = bitcast float* %6954 to i32*
  br i1 %6952, label %6957, label %6964

; <label>:6957                                    ; preds = %6951
  %6958 = and i32 %6949, 1073741823
  %6959 = add i32 %6939, 20
  %6960 = add i32 %6959, %6958
  %6961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6960, i32 undef)  ; BufferLoad(srv,index,wot)
  %6962 = extractvalue %dx.types.ResRet.i32 %6961, 0
  %6963 = extractvalue %dx.types.ResRet.i32 %6961, 1
  br label %6964

; <label>:6964                                    ; preds = %6957, %6951
  %6965 = phi i32 [ %6962, %6957 ], [ %6873, %6951 ]
  %6966 = phi i32 [ %6963, %6957 ], [ %6874, %6951 ]
  store i32 %6965, i32* %6955, align 4
  store i32 %6966, i32* %6956, align 4
  %6967 = add i32 %6924, 1
  br label %6968

; <label>:6968                                    ; preds = %6964, %6923
  %6969 = phi i32 [ %6924, %6923 ], [ %6967, %6964 ]
  %6970 = add nuw i32 %6925, 1
  %6971 = icmp eq i32 %6970, %6920
  br i1 %6971, label %6972, label %6923

; <label>:6972                                    ; preds = %6968
  br label %6973

; <label>:6973                                    ; preds = %6972, %6917
  %6974 = phi i32 [ %6918, %6917 ], [ %6969, %6972 ]
  %6975 = icmp eq i32 %6974, 1
  %6976 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 0
  %6977 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  br i1 %6975, label %6978, label %6981

; <label>:6978                                    ; preds = %6973
  %6979 = load float, float* %6976, align 4
  %6980 = load float, float* %6977, align 4
  br label %7008

; <label>:6981                                    ; preds = %6973
  %6982 = load float, float* %6976, align 4
  %6983 = load float, float* %6977, align 4
  %6984 = fdiv fast float 1.000000e+00, %6983
  %6985 = fsub fast float %6982, %6984
  %6986 = icmp ugt i32 %6974, 1
  br i1 %6986, label %6987, label %7003

; <label>:6987                                    ; preds = %6981
  br label %6988

; <label>:6988                                    ; preds = %6988, %6987
  %6989 = phi float [ %6998, %6988 ], [ %6985, %6987 ]
  %6990 = phi float [ %6999, %6988 ], [ %6982, %6987 ]
  %6991 = phi i32 [ %7000, %6988 ], [ 1, %6987 ]
  %6992 = getelementptr [12 x float], [12 x float]* %87, i32 0, i32 %6991
  %6993 = load float, float* %6992, align 4
  %6994 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6991
  %6995 = load float, float* %6994, align 4
  %6996 = fdiv fast float 1.000000e+00, %6995
  %6997 = fsub fast float %6993, %6996
  %6998 = call float @dx.op.binary.f32(i32 36, float %6989, float %6997)  ; FMin(a,b)
  %6999 = call float @dx.op.binary.f32(i32 35, float %6990, float %6993)  ; FMax(a,b)
  %7000 = add nuw i32 %6991, 1
  %7001 = icmp eq i32 %7000, %6974
  br i1 %7001, label %7002, label %6988

; <label>:7002                                    ; preds = %6988
  br label %7003

; <label>:7003                                    ; preds = %7002, %6981
  %7004 = phi float [ %6985, %6981 ], [ %6998, %7002 ]
  %7005 = phi float [ %6982, %6981 ], [ %6999, %7002 ]
  %7006 = fsub fast float %7005, %7004
  %7007 = fdiv fast float 1.000000e+00, %7006
  br label %7008

; <label>:7008                                    ; preds = %7003, %6978
  %7009 = phi float [ %6979, %6978 ], [ %7005, %7003 ]
  %7010 = phi float [ %6980, %6978 ], [ %7007, %7003 ]
  %7011 = fadd fast float %6712, %7009
  %7012 = fmul fast float %7011, %7010
  %7013 = call float @dx.op.unary.f32(i32 7, float %7012)  ; Saturate(value)
  %7014 = fmul fast float %7013, 2.000000e+00
  %7015 = fsub fast float 1.000000e+00, %7014
  %7016 = fmul fast float %6850, %6850
  %7017 = fsub fast float %6851, %7016
  %7018 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7017)  ; FMax(a,b)
  %7019 = fdiv fast float 1.000000e+00, %7018
  %7020 = fmul fast float %6851, %6850
  %7021 = fsub fast float %6852, %7020
  %7022 = fsub fast float %7015, %6850
  %7023 = fmul fast float %7015, %7015
  %7024 = fsub fast float %7023, %6851
  %7025 = fmul fast float %7019, %7021
  %7026 = fmul fast float %7025, %7022
  %7027 = fsub fast float %7024, %7026
  %7028 = fmul fast float %6851, %6851
  %7029 = fsub fast float %6853, %7028
  %7030 = fmul fast float %7021, %7021
  %7031 = fmul fast float %7030, %7019
  %7032 = fsub fast float %7029, %7031
  %7033 = fdiv fast float %7027, %7032
  %7034 = fmul fast float %7033, %7021
  %7035 = fsub fast float %7022, %7034
  %7036 = fmul fast float %7035, %7019
  %7037 = fmul fast float %7036, %6850
  %7038 = fsub fast float 1.000000e+00, %7037
  %7039 = fmul fast float %7033, %6851
  %7040 = fsub fast float %7038, %7039
  %7041 = fmul fast float %7036, %7036
  %7042 = fmul fast float %7033, 4.000000e+00
  %7043 = fmul fast float %7042, %7040
  %7044 = fsub fast float %7041, %7043
  %7045 = call float @dx.op.unary.f32(i32 24, float %7044)  ; Sqrt(value)
  %7046 = fcmp fast oge float %7036, 0.000000e+00
  %7047 = fsub fast float -0.000000e+00, %7045
  %7048 = select i1 %7046, float %7047, float %7045
  %7049 = fsub fast float %7048, %7036
  %7050 = fdiv fast float %7049, %7033
  %7051 = fdiv fast float %7040, %7049
  %7052 = fmul fast float %7050, 5.000000e-01
  %7053 = fmul fast float %7051, 2.000000e+00
  %7054 = select i1 %7046, float %7052, float %7053
  %7055 = select i1 %7046, float %7053, float %7052
  %7056 = call float @dx.op.binary.f32(i32 35, float %7054, float %7055)  ; FMax(a,b)
  %7057 = call float @dx.op.binary.f32(i32 36, float %7054, float %7055)  ; FMin(a,b)
  %7058 = fcmp fast ogt float %7015, %7056
  %7059 = fsub fast float %7015, %7057
  %7060 = fsub fast float %7015, %7056
  %7061 = fsub fast float %7056, %7057
  %7062 = select i1 %7058, float %7060, float %7061
  %7063 = fmul float %7059, %7062
  %7064 = select i1 %7058, float %7057, float %7015
  %7065 = fcmp fast ogt float %7015, %7057
  %7066 = fmul fast float %7064, %7056
  %7067 = fadd fast float %7064, %7056
  %7068 = fmul fast float %7067, %6850
  %7069 = fadd fast float %7066, %6851
  %7070 = fsub fast float %7069, %7068
  %7071 = fdiv fast float %7070, %7063
  %7072 = select i1 %7065, float %7071, float 0.000000e+00
  %7073 = fsub fast float 1.000000e+00, %7072
  %7074 = select i1 %7058, float %7073, float %7072
  %7075 = call float @dx.op.unary.f32(i32 7, float %7074)  ; Saturate(value)
  %7076 = extractvalue %dx.types.CBufRet.f32 %6835, 3
  %7077 = fmul fast float %7076, %7075
  %7078 = fsub fast float 1.000000e+00, %7077
  br label %7079

; <label>:7079                                    ; preds = %7008, %6720, %6685, %6681, %6647
  %7080 = phi float [ 1.000000e+00, %6647 ], [ %7078, %7008 ], [ 1.000000e+00, %6685 ], [ 1.000000e+00, %6720 ], [ 1.000000e+00, %6681 ]
  %7081 = fcmp fast ogt float %6677, 0.000000e+00
  br i1 %7081, label %7082, label %7244, !dx.controlflow.hints !109

; <label>:7082                                    ; preds = %7079
  %7083 = fadd fast float %6590, %6564
  %7084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7085 = extractvalue %dx.types.CBufRet.f32 %7084, 2
  %7086 = extractvalue %dx.types.CBufRet.f32 %7084, 3
  %7087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7088 = extractvalue %dx.types.CBufRet.f32 %7087, 2
  %7089 = call float @dx.op.binary.f32(i32 35, float %7083, float 0.000000e+00)  ; FMax(a,b)
  %7090 = fadd fast float %7089, 0x3F10000000000000
  %7091 = fcmp fast oeq float %7088, 0.000000e+00
  br i1 %7091, label %7092, label %7159

; <label>:7092                                    ; preds = %7082
  %7093 = extractvalue %dx.types.CBufRet.f32 %7084, 1
  %7094 = extractvalue %dx.types.CBufRet.f32 %7084, 0
  %7095 = fmul fast float %7094, %6579
  %7096 = fmul fast float %7093, %6580
  %7097 = fadd fast float %7095, 5.000000e-01
  %7098 = call float @dx.op.unary.f32(i32 27, float %7097)  ; Round_ni(value)
  %7099 = fadd fast float %7096, 5.000000e-01
  %7100 = call float @dx.op.unary.f32(i32 27, float %7099)  ; Round_ni(value)
  %7101 = fsub fast float %7097, %7098
  %7102 = fsub fast float %7099, %7100
  %7103 = fadd fast float %7098, -5.000000e-01
  %7104 = fadd fast float %7100, -5.000000e-01
  %7105 = fmul fast float %7101, 2.000000e+00
  %7106 = fsub fast float 3.000000e+00, %7105
  %7107 = fadd fast float %7105, 1.000000e+00
  %7108 = fsub fast float 2.000000e+00, %7101
  %7109 = bitcast float %7106 to i32
  %7110 = sub nsw i32 2129859010, %7109
  %7111 = bitcast i32 %7110 to float
  %7112 = fmul fast float %7111, %7108
  %7113 = fadd fast float %7112, -1.000000e+00
  %7114 = bitcast float %7107 to i32
  %7115 = sub nsw i32 2129859010, %7114
  %7116 = bitcast i32 %7115 to float
  %7117 = fmul fast float %7116, %7101
  %7118 = fadd fast float %7117, 1.000000e+00
  %7119 = fmul fast float %7102, 2.000000e+00
  %7120 = fsub fast float 3.000000e+00, %7119
  %7121 = fadd fast float %7119, 1.000000e+00
  %7122 = fsub fast float 2.000000e+00, %7102
  %7123 = bitcast float %7120 to i32
  %7124 = sub nsw i32 2129859010, %7123
  %7125 = bitcast i32 %7124 to float
  %7126 = fmul fast float %7125, %7122
  %7127 = fadd fast float %7126, -1.000000e+00
  %7128 = bitcast float %7121 to i32
  %7129 = sub nsw i32 2129859010, %7128
  %7130 = bitcast i32 %7129 to float
  %7131 = fmul fast float %7130, %7102
  %7132 = fadd fast float %7131, 1.000000e+00
  %7133 = fadd fast float %7113, %7103
  %7134 = fmul fast float %7133, %7085
  %7135 = fadd fast float %7127, %7104
  %7136 = fmul fast float %7135, %7086
  %7137 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7134, float %7136, float undef, float undef, i32 0, i32 0, i32 undef, float %7090)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7138 = extractvalue %dx.types.ResRet.f32 %7137, 0
  %7139 = fmul fast float %7138, %7106
  %7140 = fadd fast float %7118, %7103
  %7141 = fmul fast float %7140, %7085
  %7142 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7141, float %7136, float undef, float undef, i32 0, i32 0, i32 undef, float %7090)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7143 = extractvalue %dx.types.ResRet.f32 %7142, 0
  %7144 = fmul fast float %7143, %7107
  %7145 = fadd fast float %7132, %7104
  %7146 = fmul fast float %7145, %7086
  %7147 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7134, float %7146, float undef, float undef, i32 0, i32 0, i32 undef, float %7090)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7148 = extractvalue %dx.types.ResRet.f32 %7147, 0
  %7149 = fmul fast float %7148, %7106
  %7150 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7141, float %7146, float undef, float undef, i32 0, i32 0, i32 undef, float %7090)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7151 = extractvalue %dx.types.ResRet.f32 %7150, 0
  %7152 = fmul fast float %7151, %7107
  %7153 = fadd fast float %7152, %7149
  %7154 = fmul fast float %7153, %7121
  %7155 = fadd fast float %7144, %7139
  %7156 = fmul fast float %7155, %7120
  %7157 = fadd fast float %7156, %7154
  %7158 = fmul fast float %7157, 6.250000e-02
  br label %7244

; <label>:7159                                    ; preds = %7082
  %7160 = fmul fast float %225, 0x401921FB60000000
  %7161 = call float @dx.op.unary.f32(i32 13, float %7160)  ; Sin(value)
  %7162 = call float @dx.op.unary.f32(i32 12, float %7160)  ; Cos(value)
  %7163 = fsub fast float -0.000000e+00, %7161
  br label %7164

; <label>:7164                                    ; preds = %7213, %7159
  %7165 = phi float [ 0.000000e+00, %7159 ], [ %7208, %7213 ]
  %7166 = phi float [ 0.000000e+00, %7159 ], [ %7210, %7213 ]
  %7167 = phi i32 [ 0, %7159 ], [ %7214, %7213 ]
  %7168 = mul i32 %7167, 2
  %7169 = add i32 0, %7168
  %7170 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7169
  %7171 = load float, float* %7170, align 4
  %7172 = mul i32 %7167, 2
  %7173 = add i32 1, %7172
  %7174 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7173
  %7175 = load float, float* %7174, align 4
  %7176 = fmul fast float %7171, %7162
  %7177 = call float @dx.op.tertiary.f32(i32 46, float %7175, float %7163, float %7176)  ; FMad(a,b,c)
  %7178 = fmul fast float %7171, %7161
  %7179 = call float @dx.op.tertiary.f32(i32 46, float %7175, float %7162, float %7178)  ; FMad(a,b,c)
  %7180 = fmul fast float %7177, %7088
  %7181 = fmul fast float %7179, %7088
  %7182 = fadd fast float %7180, %6579
  %7183 = fadd fast float %7181, %6580
  %7184 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %44, float %7182, float %7183, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7185 = extractvalue %dx.types.ResRet.f32 %7184, 0
  %7186 = extractvalue %dx.types.ResRet.f32 %7184, 1
  %7187 = extractvalue %dx.types.ResRet.f32 %7184, 2
  %7188 = extractvalue %dx.types.ResRet.f32 %7184, 3
  %7189 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %7185, float* %7189, align 4
  %7190 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %7186, float* %7190, align 4
  %7191 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %7187, float* %7191, align 4
  %7192 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %7188, float* %7192, align 4
  %7193 = fsub fast float %7185, %7090
  %7194 = fcmp fast olt float %7193, 0.000000e+00
  %7195 = select i1 %7194, float 0.000000e+00, float 1.000000e+00
  %7196 = fadd fast float %7195, %7165
  %7197 = fmul fast float %7195, %7193
  %7198 = fadd fast float %7197, %7166
  br label %7199

; <label>:7199                                    ; preds = %7199, %7164
  %7200 = phi i32 [ 1, %7164 ], [ %7211, %7199 ]
  %7201 = phi float [ %7198, %7164 ], [ %7210, %7199 ]
  %7202 = phi float [ %7196, %7164 ], [ %7208, %7199 ]
  %7203 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %7200
  %7204 = load float, float* %7203, align 4, !tbaa !110, !noalias !100
  %7205 = fsub fast float %7204, %7090
  %7206 = fcmp fast olt float %7205, 0.000000e+00
  %7207 = select i1 %7206, float 0.000000e+00, float 1.000000e+00
  %7208 = fadd fast float %7207, %7202
  %7209 = fmul fast float %7207, %7205
  %7210 = fadd fast float %7209, %7201
  %7211 = add nuw nsw i32 %7200, 1
  %7212 = icmp eq i32 %7211, 4
  br i1 %7212, label %7213, label %7199, !llvm.loop !112

; <label>:7213                                    ; preds = %7199
  %7214 = add nuw nsw i32 %7167, 1
  %7215 = icmp eq i32 %7214, 8
  br i1 %7215, label %7216, label %7164, !llvm.loop !113

; <label>:7216                                    ; preds = %7213
  %7217 = fdiv fast float 1.000000e+00, %7208
  %7218 = fmul fast float %7217, %7210
  %7219 = fdiv fast float 1.000000e+00, %7090
  %7220 = fmul fast float %7218, %7219
  %7221 = call float @dx.op.unary.f32(i32 7, float %7220)  ; Saturate(value)
  %7222 = call float @dx.op.binary.f32(i32 35, float %7221, float 0.000000e+00)  ; FMax(a,b)
  %7223 = fmul fast float %7208, 3.125000e-02
  %7224 = call float @dx.op.unary.f32(i32 7, float %7223)  ; Saturate(value)
  %7225 = fmul fast float %7224, 2.000000e+00
  %7226 = fadd fast float %7225, -1.000000e+00
  %7227 = fcmp fast ogt float %7226, 0.000000e+00
  %7228 = fcmp fast olt float %7226, 0.000000e+00
  %7229 = zext i1 %7227 to i32
  %7230 = zext i1 %7228 to i32
  %7231 = sub nsw i32 %7229, %7230
  %7232 = sitofp i32 %7231 to float
  %7233 = fmul fast float %7232, %7226
  %7234 = fsub fast float 1.000000e+00, %7233
  %7235 = fmul fast float %7234, %7234
  %7236 = fmul fast float %7235, %7234
  %7237 = fsub fast float %7234, %7236
  %7238 = fmul fast float %7237, %7222
  %7239 = fsub fast float 1.000000e+00, %7236
  %7240 = fsub fast float %7239, %7238
  %7241 = fmul fast float %7232, 5.000000e-01
  %7242 = fmul fast float %7241, %7240
  %7243 = fsub fast float 5.000000e-01, %7242
  br label %7244

; <label>:7244                                    ; preds = %7216, %7092, %7079
  %7245 = phi float [ 1.000000e+00, %7079 ], [ %7158, %7092 ], [ %7243, %7216 ]
  %7246 = fcmp fast ogt float %6675, 0.000000e+00
  br i1 %7246, label %7247, label %7411, !dx.controlflow.hints !114

; <label>:7247                                    ; preds = %7244
  %7248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7249 = extractvalue %dx.types.CBufRet.f32 %7248, 1
  %7250 = fadd fast float %7249, %6564
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 2
  %7253 = extractvalue %dx.types.CBufRet.f32 %7251, 3
  %7254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7255 = extractvalue %dx.types.CBufRet.f32 %7254, 1
  %7256 = call float @dx.op.binary.f32(i32 35, float %7250, float 0.000000e+00)  ; FMax(a,b)
  %7257 = fadd fast float %7256, 0x3F10000000000000
  %7258 = fcmp fast oeq float %7255, 0.000000e+00
  br i1 %7258, label %7259, label %7326

; <label>:7259                                    ; preds = %7247
  %7260 = extractvalue %dx.types.CBufRet.f32 %7251, 1
  %7261 = extractvalue %dx.types.CBufRet.f32 %7251, 0
  %7262 = fmul fast float %7261, %6571
  %7263 = fmul fast float %7260, %6572
  %7264 = fadd fast float %7262, 5.000000e-01
  %7265 = call float @dx.op.unary.f32(i32 27, float %7264)  ; Round_ni(value)
  %7266 = fadd fast float %7263, 5.000000e-01
  %7267 = call float @dx.op.unary.f32(i32 27, float %7266)  ; Round_ni(value)
  %7268 = fsub fast float %7264, %7265
  %7269 = fsub fast float %7266, %7267
  %7270 = fadd fast float %7265, -5.000000e-01
  %7271 = fadd fast float %7267, -5.000000e-01
  %7272 = fmul fast float %7268, 2.000000e+00
  %7273 = fsub fast float 3.000000e+00, %7272
  %7274 = fadd fast float %7272, 1.000000e+00
  %7275 = fsub fast float 2.000000e+00, %7268
  %7276 = bitcast float %7273 to i32
  %7277 = sub nsw i32 2129859010, %7276
  %7278 = bitcast i32 %7277 to float
  %7279 = fmul fast float %7278, %7275
  %7280 = fadd fast float %7279, -1.000000e+00
  %7281 = bitcast float %7274 to i32
  %7282 = sub nsw i32 2129859010, %7281
  %7283 = bitcast i32 %7282 to float
  %7284 = fmul fast float %7283, %7268
  %7285 = fadd fast float %7284, 1.000000e+00
  %7286 = fmul fast float %7269, 2.000000e+00
  %7287 = fsub fast float 3.000000e+00, %7286
  %7288 = fadd fast float %7286, 1.000000e+00
  %7289 = fsub fast float 2.000000e+00, %7269
  %7290 = bitcast float %7287 to i32
  %7291 = sub nsw i32 2129859010, %7290
  %7292 = bitcast i32 %7291 to float
  %7293 = fmul fast float %7292, %7289
  %7294 = fadd fast float %7293, -1.000000e+00
  %7295 = bitcast float %7288 to i32
  %7296 = sub nsw i32 2129859010, %7295
  %7297 = bitcast i32 %7296 to float
  %7298 = fmul fast float %7297, %7269
  %7299 = fadd fast float %7298, 1.000000e+00
  %7300 = fadd fast float %7280, %7270
  %7301 = fmul fast float %7300, %7252
  %7302 = fadd fast float %7294, %7271
  %7303 = fmul fast float %7302, %7253
  %7304 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7301, float %7303, float undef, float undef, i32 0, i32 0, i32 undef, float %7257)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7305 = extractvalue %dx.types.ResRet.f32 %7304, 0
  %7306 = fmul fast float %7305, %7273
  %7307 = fadd fast float %7285, %7270
  %7308 = fmul fast float %7307, %7252
  %7309 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7308, float %7303, float undef, float undef, i32 0, i32 0, i32 undef, float %7257)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7310 = extractvalue %dx.types.ResRet.f32 %7309, 0
  %7311 = fmul fast float %7310, %7274
  %7312 = fadd fast float %7299, %7271
  %7313 = fmul fast float %7312, %7253
  %7314 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7301, float %7313, float undef, float undef, i32 0, i32 0, i32 undef, float %7257)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7315 = extractvalue %dx.types.ResRet.f32 %7314, 0
  %7316 = fmul fast float %7315, %7273
  %7317 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7308, float %7313, float undef, float undef, i32 0, i32 0, i32 undef, float %7257)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7318 = extractvalue %dx.types.ResRet.f32 %7317, 0
  %7319 = fmul fast float %7318, %7274
  %7320 = fadd fast float %7319, %7316
  %7321 = fmul fast float %7320, %7288
  %7322 = fadd fast float %7311, %7306
  %7323 = fmul fast float %7322, %7287
  %7324 = fadd fast float %7323, %7321
  %7325 = fmul fast float %7324, 6.250000e-02
  br label %7411

; <label>:7326                                    ; preds = %7247
  %7327 = fmul fast float %225, 0x401921FB60000000
  %7328 = call float @dx.op.unary.f32(i32 13, float %7327)  ; Sin(value)
  %7329 = call float @dx.op.unary.f32(i32 12, float %7327)  ; Cos(value)
  %7330 = fsub fast float -0.000000e+00, %7328
  br label %7331

; <label>:7331                                    ; preds = %7380, %7326
  %7332 = phi float [ 0.000000e+00, %7326 ], [ %7375, %7380 ]
  %7333 = phi float [ 0.000000e+00, %7326 ], [ %7377, %7380 ]
  %7334 = phi i32 [ 0, %7326 ], [ %7381, %7380 ]
  %7335 = mul i32 %7334, 2
  %7336 = add i32 0, %7335
  %7337 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7336
  %7338 = load float, float* %7337, align 4
  %7339 = mul i32 %7334, 2
  %7340 = add i32 1, %7339
  %7341 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7340
  %7342 = load float, float* %7341, align 4
  %7343 = fmul fast float %7338, %7329
  %7344 = call float @dx.op.tertiary.f32(i32 46, float %7342, float %7330, float %7343)  ; FMad(a,b,c)
  %7345 = fmul fast float %7338, %7328
  %7346 = call float @dx.op.tertiary.f32(i32 46, float %7342, float %7329, float %7345)  ; FMad(a,b,c)
  %7347 = fmul fast float %7344, %7255
  %7348 = fmul fast float %7346, %7255
  %7349 = fadd fast float %7347, %6571
  %7350 = fadd fast float %7348, %6572
  %7351 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %44, float %7349, float %7350, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7352 = extractvalue %dx.types.ResRet.f32 %7351, 0
  %7353 = extractvalue %dx.types.ResRet.f32 %7351, 1
  %7354 = extractvalue %dx.types.ResRet.f32 %7351, 2
  %7355 = extractvalue %dx.types.ResRet.f32 %7351, 3
  %7356 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %7352, float* %7356, align 4
  %7357 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %7353, float* %7357, align 4
  %7358 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %7354, float* %7358, align 4
  %7359 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %7355, float* %7359, align 4
  %7360 = fsub fast float %7352, %7257
  %7361 = fcmp fast olt float %7360, 0.000000e+00
  %7362 = select i1 %7361, float 0.000000e+00, float 1.000000e+00
  %7363 = fadd fast float %7362, %7332
  %7364 = fmul fast float %7362, %7360
  %7365 = fadd fast float %7364, %7333
  br label %7366

; <label>:7366                                    ; preds = %7366, %7331
  %7367 = phi i32 [ 1, %7331 ], [ %7378, %7366 ]
  %7368 = phi float [ %7365, %7331 ], [ %7377, %7366 ]
  %7369 = phi float [ %7363, %7331 ], [ %7375, %7366 ]
  %7370 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7367
  %7371 = load float, float* %7370, align 4, !tbaa !110, !noalias !100
  %7372 = fsub fast float %7371, %7257
  %7373 = fcmp fast olt float %7372, 0.000000e+00
  %7374 = select i1 %7373, float 0.000000e+00, float 1.000000e+00
  %7375 = fadd fast float %7374, %7369
  %7376 = fmul fast float %7374, %7372
  %7377 = fadd fast float %7376, %7368
  %7378 = add nuw nsw i32 %7367, 1
  %7379 = icmp eq i32 %7378, 4
  br i1 %7379, label %7380, label %7366, !llvm.loop !112

; <label>:7380                                    ; preds = %7366
  %7381 = add nuw nsw i32 %7334, 1
  %7382 = icmp eq i32 %7381, 8
  br i1 %7382, label %7383, label %7331, !llvm.loop !113

; <label>:7383                                    ; preds = %7380
  %7384 = fdiv fast float 1.000000e+00, %7375
  %7385 = fmul fast float %7384, %7377
  %7386 = fdiv fast float 1.000000e+00, %7257
  %7387 = fmul fast float %7385, %7386
  %7388 = call float @dx.op.unary.f32(i32 7, float %7387)  ; Saturate(value)
  %7389 = call float @dx.op.binary.f32(i32 35, float %7388, float 0.000000e+00)  ; FMax(a,b)
  %7390 = fmul fast float %7375, 3.125000e-02
  %7391 = call float @dx.op.unary.f32(i32 7, float %7390)  ; Saturate(value)
  %7392 = fmul fast float %7391, 2.000000e+00
  %7393 = fadd fast float %7392, -1.000000e+00
  %7394 = fcmp fast ogt float %7393, 0.000000e+00
  %7395 = fcmp fast olt float %7393, 0.000000e+00
  %7396 = zext i1 %7394 to i32
  %7397 = zext i1 %7395 to i32
  %7398 = sub nsw i32 %7396, %7397
  %7399 = sitofp i32 %7398 to float
  %7400 = fmul fast float %7399, %7393
  %7401 = fsub fast float 1.000000e+00, %7400
  %7402 = fmul fast float %7401, %7401
  %7403 = fmul fast float %7402, %7401
  %7404 = fsub fast float %7401, %7403
  %7405 = fmul fast float %7404, %7389
  %7406 = fsub fast float 1.000000e+00, %7403
  %7407 = fsub fast float %7406, %7405
  %7408 = fmul fast float %7399, 5.000000e-01
  %7409 = fmul fast float %7408, %7407
  %7410 = fsub fast float 5.000000e-01, %7409
  br label %7411

; <label>:7411                                    ; preds = %7383, %7259, %7244
  %7412 = phi float [ 1.000000e+00, %7244 ], [ %7325, %7259 ], [ %7410, %7383 ]
  %7413 = fcmp fast ogt float %6674, 0.000000e+00
  br i1 %7413, label %7414, label %7578, !dx.controlflow.hints !115

; <label>:7414                                    ; preds = %7411
  %7415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7416 = extractvalue %dx.types.CBufRet.f32 %7415, 0
  %7417 = fadd fast float %7416, %6564
  %7418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7419 = extractvalue %dx.types.CBufRet.f32 %7418, 2
  %7420 = extractvalue %dx.types.CBufRet.f32 %7418, 3
  %7421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7422 = extractvalue %dx.types.CBufRet.f32 %7421, 0
  %7423 = call float @dx.op.binary.f32(i32 35, float %7417, float 0.000000e+00)  ; FMax(a,b)
  %7424 = fadd fast float %7423, 0x3F10000000000000
  %7425 = fcmp fast oeq float %7422, 0.000000e+00
  br i1 %7425, label %7426, label %7493

; <label>:7426                                    ; preds = %7414
  %7427 = extractvalue %dx.types.CBufRet.f32 %7418, 1
  %7428 = extractvalue %dx.types.CBufRet.f32 %7418, 0
  %7429 = fmul fast float %7428, %6556
  %7430 = fmul fast float %7427, %6560
  %7431 = fadd fast float %7429, 5.000000e-01
  %7432 = call float @dx.op.unary.f32(i32 27, float %7431)  ; Round_ni(value)
  %7433 = fadd fast float %7430, 5.000000e-01
  %7434 = call float @dx.op.unary.f32(i32 27, float %7433)  ; Round_ni(value)
  %7435 = fsub fast float %7431, %7432
  %7436 = fsub fast float %7433, %7434
  %7437 = fadd fast float %7432, -5.000000e-01
  %7438 = fadd fast float %7434, -5.000000e-01
  %7439 = fmul fast float %7435, 2.000000e+00
  %7440 = fsub fast float 3.000000e+00, %7439
  %7441 = fadd fast float %7439, 1.000000e+00
  %7442 = fsub fast float 2.000000e+00, %7435
  %7443 = bitcast float %7440 to i32
  %7444 = sub nsw i32 2129859010, %7443
  %7445 = bitcast i32 %7444 to float
  %7446 = fmul fast float %7445, %7442
  %7447 = fadd fast float %7446, -1.000000e+00
  %7448 = bitcast float %7441 to i32
  %7449 = sub nsw i32 2129859010, %7448
  %7450 = bitcast i32 %7449 to float
  %7451 = fmul fast float %7450, %7435
  %7452 = fadd fast float %7451, 1.000000e+00
  %7453 = fmul fast float %7436, 2.000000e+00
  %7454 = fsub fast float 3.000000e+00, %7453
  %7455 = fadd fast float %7453, 1.000000e+00
  %7456 = fsub fast float 2.000000e+00, %7436
  %7457 = bitcast float %7454 to i32
  %7458 = sub nsw i32 2129859010, %7457
  %7459 = bitcast i32 %7458 to float
  %7460 = fmul fast float %7459, %7456
  %7461 = fadd fast float %7460, -1.000000e+00
  %7462 = bitcast float %7455 to i32
  %7463 = sub nsw i32 2129859010, %7462
  %7464 = bitcast i32 %7463 to float
  %7465 = fmul fast float %7464, %7436
  %7466 = fadd fast float %7465, 1.000000e+00
  %7467 = fadd fast float %7447, %7437
  %7468 = fmul fast float %7467, %7419
  %7469 = fadd fast float %7461, %7438
  %7470 = fmul fast float %7469, %7420
  %7471 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7468, float %7470, float undef, float undef, i32 0, i32 0, i32 undef, float %7424)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7472 = extractvalue %dx.types.ResRet.f32 %7471, 0
  %7473 = fmul fast float %7472, %7440
  %7474 = fadd fast float %7452, %7437
  %7475 = fmul fast float %7474, %7419
  %7476 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7475, float %7470, float undef, float undef, i32 0, i32 0, i32 undef, float %7424)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7477 = extractvalue %dx.types.ResRet.f32 %7476, 0
  %7478 = fmul fast float %7477, %7441
  %7479 = fadd fast float %7466, %7438
  %7480 = fmul fast float %7479, %7420
  %7481 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7468, float %7480, float undef, float undef, i32 0, i32 0, i32 undef, float %7424)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7482 = extractvalue %dx.types.ResRet.f32 %7481, 0
  %7483 = fmul fast float %7482, %7440
  %7484 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7475, float %7480, float undef, float undef, i32 0, i32 0, i32 undef, float %7424)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7485 = extractvalue %dx.types.ResRet.f32 %7484, 0
  %7486 = fmul fast float %7485, %7441
  %7487 = fadd fast float %7486, %7483
  %7488 = fmul fast float %7487, %7455
  %7489 = fadd fast float %7478, %7473
  %7490 = fmul fast float %7489, %7454
  %7491 = fadd fast float %7490, %7488
  %7492 = fmul fast float %7491, 6.250000e-02
  br label %7578

; <label>:7493                                    ; preds = %7414
  %7494 = fmul fast float %225, 0x401921FB60000000
  %7495 = call float @dx.op.unary.f32(i32 13, float %7494)  ; Sin(value)
  %7496 = call float @dx.op.unary.f32(i32 12, float %7494)  ; Cos(value)
  %7497 = fsub fast float -0.000000e+00, %7495
  br label %7498

; <label>:7498                                    ; preds = %7547, %7493
  %7499 = phi float [ 0.000000e+00, %7493 ], [ %7542, %7547 ]
  %7500 = phi float [ 0.000000e+00, %7493 ], [ %7544, %7547 ]
  %7501 = phi i32 [ 0, %7493 ], [ %7548, %7547 ]
  %7502 = mul i32 %7501, 2
  %7503 = add i32 0, %7502
  %7504 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7503
  %7505 = load float, float* %7504, align 4
  %7506 = mul i32 %7501, 2
  %7507 = add i32 1, %7506
  %7508 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7507
  %7509 = load float, float* %7508, align 4
  %7510 = fmul fast float %7505, %7496
  %7511 = call float @dx.op.tertiary.f32(i32 46, float %7509, float %7497, float %7510)  ; FMad(a,b,c)
  %7512 = fmul fast float %7505, %7495
  %7513 = call float @dx.op.tertiary.f32(i32 46, float %7509, float %7496, float %7512)  ; FMad(a,b,c)
  %7514 = fmul fast float %7511, %7422
  %7515 = fmul fast float %7513, %7422
  %7516 = fadd fast float %7514, %6556
  %7517 = fadd fast float %7515, %6560
  %7518 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %44, float %7516, float %7517, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7519 = extractvalue %dx.types.ResRet.f32 %7518, 0
  %7520 = extractvalue %dx.types.ResRet.f32 %7518, 1
  %7521 = extractvalue %dx.types.ResRet.f32 %7518, 2
  %7522 = extractvalue %dx.types.ResRet.f32 %7518, 3
  %7523 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 0
  store float %7519, float* %7523, align 4
  %7524 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 1
  store float %7520, float* %7524, align 4
  %7525 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 2
  store float %7521, float* %7525, align 4
  %7526 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 3
  store float %7522, float* %7526, align 4
  %7527 = fsub fast float %7519, %7424
  %7528 = fcmp fast olt float %7527, 0.000000e+00
  %7529 = select i1 %7528, float 0.000000e+00, float 1.000000e+00
  %7530 = fadd fast float %7529, %7499
  %7531 = fmul fast float %7529, %7527
  %7532 = fadd fast float %7531, %7500
  br label %7533

; <label>:7533                                    ; preds = %7533, %7498
  %7534 = phi i32 [ 1, %7498 ], [ %7545, %7533 ]
  %7535 = phi float [ %7532, %7498 ], [ %7544, %7533 ]
  %7536 = phi float [ %7530, %7498 ], [ %7542, %7533 ]
  %7537 = getelementptr [4 x float], [4 x float]* %89, i32 0, i32 %7534
  %7538 = load float, float* %7537, align 4, !tbaa !110, !noalias !100
  %7539 = fsub fast float %7538, %7424
  %7540 = fcmp fast olt float %7539, 0.000000e+00
  %7541 = select i1 %7540, float 0.000000e+00, float 1.000000e+00
  %7542 = fadd fast float %7541, %7536
  %7543 = fmul fast float %7541, %7539
  %7544 = fadd fast float %7543, %7535
  %7545 = add nuw nsw i32 %7534, 1
  %7546 = icmp eq i32 %7545, 4
  br i1 %7546, label %7547, label %7533, !llvm.loop !112

; <label>:7547                                    ; preds = %7533
  %7548 = add nuw nsw i32 %7501, 1
  %7549 = icmp eq i32 %7548, 8
  br i1 %7549, label %7550, label %7498, !llvm.loop !113

; <label>:7550                                    ; preds = %7547
  %7551 = fdiv fast float 1.000000e+00, %7542
  %7552 = fmul fast float %7551, %7544
  %7553 = fdiv fast float 1.000000e+00, %7424
  %7554 = fmul fast float %7552, %7553
  %7555 = call float @dx.op.unary.f32(i32 7, float %7554)  ; Saturate(value)
  %7556 = call float @dx.op.binary.f32(i32 35, float %7555, float 0.000000e+00)  ; FMax(a,b)
  %7557 = fmul fast float %7542, 3.125000e-02
  %7558 = call float @dx.op.unary.f32(i32 7, float %7557)  ; Saturate(value)
  %7559 = fmul fast float %7558, 2.000000e+00
  %7560 = fadd fast float %7559, -1.000000e+00
  %7561 = fcmp fast ogt float %7560, 0.000000e+00
  %7562 = fcmp fast olt float %7560, 0.000000e+00
  %7563 = zext i1 %7561 to i32
  %7564 = zext i1 %7562 to i32
  %7565 = sub nsw i32 %7563, %7564
  %7566 = sitofp i32 %7565 to float
  %7567 = fmul fast float %7566, %7560
  %7568 = fsub fast float 1.000000e+00, %7567
  %7569 = fmul fast float %7568, %7568
  %7570 = fmul fast float %7569, %7568
  %7571 = fsub fast float %7568, %7570
  %7572 = fmul fast float %7571, %7556
  %7573 = fsub fast float 1.000000e+00, %7570
  %7574 = fsub fast float %7573, %7572
  %7575 = fmul fast float %7566, 5.000000e-01
  %7576 = fmul fast float %7575, %7574
  %7577 = fsub fast float 5.000000e-01, %7576
  br label %7578

; <label>:7578                                    ; preds = %7550, %7426, %7411
  %7579 = phi float [ 1.000000e+00, %7411 ], [ %7492, %7426 ], [ %7577, %7550 ]
  %7580 = fsub fast float %7245, %7080
  %7581 = fmul fast float %7580, %6618
  %7582 = fadd fast float %7581, %7080
  %7583 = fsub fast float %7412, %7582
  %7584 = fmul fast float %7583, %6648
  %7585 = fadd fast float %7584, %7582
  %7586 = fsub fast float %7579, %7585
  %7587 = fmul fast float %7586, %6674
  %7588 = fadd fast float %7587, %7585
  %7589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7590 = extractvalue %dx.types.CBufRet.f32 %7589, 2
  %7591 = fcmp fast ogt float %7590, 0.000000e+00
  br i1 %7591, label %7592, label %7632, !dx.controlflow.hints !116

; <label>:7592                                    ; preds = %7578
  %7593 = fcmp fast ugt float %7590, 0.000000e+00
  br i1 %7593, label %7594, label %7629

; <label>:7594                                    ; preds = %7592
  %7595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7596 = extractvalue %dx.types.CBufRet.f32 %7595, 0
  %7597 = extractvalue %dx.types.CBufRet.f32 %7595, 1
  %7598 = extractvalue %dx.types.CBufRet.f32 %7595, 2
  %7599 = extractvalue %dx.types.CBufRet.f32 %7595, 3
  %7600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7601 = extractvalue %dx.types.CBufRet.f32 %7600, 0
  %7602 = extractvalue %dx.types.CBufRet.f32 %7600, 1
  %7603 = extractvalue %dx.types.CBufRet.f32 %7600, 2
  %7604 = extractvalue %dx.types.CBufRet.f32 %7600, 3
  %7605 = extractvalue %dx.types.CBufRet.f32 %7589, 0
  %7606 = extractvalue %dx.types.CBufRet.f32 %7589, 1
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 0
  %7609 = extractvalue %dx.types.CBufRet.f32 %7607, 1
  %7610 = extractvalue %dx.types.CBufRet.f32 %7607, 2
  %7611 = fadd fast float %7608, %6533
  %7612 = fadd fast float %7609, %6534
  %7613 = fadd fast float %7610, %6535
  %7614 = fmul fast float %7611, %7596
  %7615 = call float @dx.op.tertiary.f32(i32 46, float %7597, float %7612, float %7614)  ; FMad(a,b,c)
  %7616 = call float @dx.op.tertiary.f32(i32 46, float %7598, float %7613, float %7615)  ; FMad(a,b,c)
  %7617 = fadd fast float %7616, %7599
  %7618 = fmul fast float %7611, %7601
  %7619 = call float @dx.op.tertiary.f32(i32 46, float %7602, float %7612, float %7618)  ; FMad(a,b,c)
  %7620 = call float @dx.op.tertiary.f32(i32 46, float %7603, float %7613, float %7619)  ; FMad(a,b,c)
  %7621 = fadd fast float %7620, %7604
  %7622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %40, float %7617, float %7621, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7623 = extractvalue %dx.types.ResRet.f32 %7622, 0
  %7624 = fmul fast float %7623, %7606
  %7625 = fadd fast float %7624, %7605
  %7626 = call float @dx.op.unary.f32(i32 7, float %7625)  ; Saturate(value)
  %7627 = fmul fast float %7626, %7590
  %7628 = fsub fast float 1.000000e+00, %7627
  br label %7629

; <label>:7629                                    ; preds = %7594, %7592
  %7630 = phi float [ %7628, %7594 ], [ 1.000000e+00, %7592 ]
  %7631 = fmul fast float %7630, %7588
  br label %7632

; <label>:7632                                    ; preds = %7629, %7578, %6513
  %7633 = phi float [ 1.000000e+00, %6513 ], [ %7631, %7629 ], [ %7588, %7578 ]
  %7634 = call float @dx.op.binary.f32(i32 36, float %7633, float %7633)  ; FMin(a,b)
  %7635 = call float @dx.op.binary.f32(i32 36, float %7633, float %7634)  ; FMin(a,b)
  %7636 = fcmp fast ogt float %7635, 0.000000e+00
  br i1 %7636, label %7637, label %7803, !dx.controlflow.hints !117

; <label>:7637                                    ; preds = %7632
  %7638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7639 = extractvalue %dx.types.CBufRet.f32 %7638, 0
  %7640 = extractvalue %dx.types.CBufRet.f32 %7638, 1
  %7641 = extractvalue %dx.types.CBufRet.f32 %7638, 2
  %7642 = extractvalue %dx.types.CBufRet.f32 %7638, 3
  %7643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7644 = extractvalue %dx.types.CBufRet.f32 %7643, 0
  %7645 = extractvalue %dx.types.CBufRet.f32 %7643, 1
  %7646 = extractvalue %dx.types.CBufRet.f32 %7643, 2
  %7647 = extractvalue %dx.types.CBufRet.f32 %7643, 3
  %7648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7649 = extractvalue %dx.types.CBufRet.f32 %7648, 0
  %7650 = extractvalue %dx.types.CBufRet.f32 %7648, 1
  %7651 = extractvalue %dx.types.CBufRet.f32 %7648, 2
  %7652 = extractvalue %dx.types.CBufRet.f32 %7648, 3
  %7653 = fmul fast float %7639, %6533
  %7654 = call float @dx.op.tertiary.f32(i32 46, float %6534, float %7640, float %7653)  ; FMad(a,b,c)
  %7655 = call float @dx.op.tertiary.f32(i32 46, float %6535, float %7641, float %7654)  ; FMad(a,b,c)
  %7656 = fadd fast float %7655, %7642
  %7657 = fmul fast float %7644, %6533
  %7658 = call float @dx.op.tertiary.f32(i32 46, float %6534, float %7645, float %7657)  ; FMad(a,b,c)
  %7659 = call float @dx.op.tertiary.f32(i32 46, float %6535, float %7646, float %7658)  ; FMad(a,b,c)
  %7660 = fadd fast float %7659, %7647
  %7661 = fmul fast float %7649, %6533
  %7662 = call float @dx.op.tertiary.f32(i32 46, float %6534, float %7650, float %7661)  ; FMad(a,b,c)
  %7663 = call float @dx.op.tertiary.f32(i32 46, float %6535, float %7651, float %7662)  ; FMad(a,b,c)
  %7664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7665 = extractvalue %dx.types.CBufRet.f32 %7664, 0
  %7666 = extractvalue %dx.types.CBufRet.f32 %7664, 1
  %7667 = extractvalue %dx.types.CBufRet.f32 %7664, 3
  %7668 = fmul fast float %7667, %7656
  %7669 = fmul fast float %7667, %7660
  %7670 = fadd fast float %7668, %7665
  %7671 = fadd fast float %7669, %7666
  %7672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7673 = extractvalue %dx.types.CBufRet.f32 %7672, 0
  %7674 = extractvalue %dx.types.CBufRet.f32 %7672, 1
  %7675 = fsub fast float %7670, %7673
  %7676 = fsub fast float %7671, %7674
  %7677 = fcmp fast olt float %7675, 0.000000e+00
  %7678 = fcmp fast olt float %7676, 0.000000e+00
  %7679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7680 = extractvalue %dx.types.CBufRet.f32 %7679, 0
  %7681 = extractvalue %dx.types.CBufRet.f32 %7679, 1
  %7682 = extractvalue %dx.types.CBufRet.f32 %7679, 2
  %7683 = extractvalue %dx.types.CBufRet.f32 %7679, 3
  %7684 = select i1 %7677, float %7680, float %7682
  %7685 = select i1 %7678, float %7681, float %7683
  %7686 = fmul fast float %7684, %7675
  %7687 = fmul fast float %7685, %7676
  %7688 = call float @dx.op.unary.f32(i32 6, float %7686)  ; FAbs(value)
  %7689 = call float @dx.op.unary.f32(i32 6, float %7687)  ; FAbs(value)
  %7690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7691 = extractvalue %dx.types.CBufRet.f32 %7690, 0
  %7692 = call float @dx.op.binary.f32(i32 35, float %7688, float %7689)  ; FMax(a,b)
  %7693 = fsub fast float %7691, %7692
  %7694 = call float @dx.op.unary.f32(i32 7, float %7693)  ; Saturate(value)
  %7695 = fcmp fast ogt float %7694, 0.000000e+00
  br i1 %7695, label %7696, label %7737, !dx.controlflow.hints !118

; <label>:7696                                    ; preds = %7637
  %7697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %7670, float %7671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7698 = extractvalue %dx.types.ResRet.f32 %7697, 1
  %7699 = fcmp fast ogt float %7698, 0.000000e+00
  br i1 %7699, label %7700, label %7732

; <label>:7700                                    ; preds = %7696
  %7701 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %43, float %7670, float %7671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7702 = extractvalue %dx.types.ResRet.f32 %7701, 0
  %7703 = extractvalue %dx.types.ResRet.f32 %7701, 1
  %7704 = extractvalue %dx.types.ResRet.f32 %7701, 2
  %7705 = extractvalue %dx.types.ResRet.f32 %7701, 3
  %7706 = fsub fast float 1.000000e+00, %7652
  %7707 = fsub fast float %7706, %7663
  %7708 = fmul fast float %7707, 0x400921FB60000000
  %7709 = fadd fast float %7708, 0x3FF921FB60000000
  %7710 = call float @dx.op.unary.f32(i32 13, float %7709)  ; Sin(value)
  %7711 = fadd fast float %7710, -1.000000e+00
  %7712 = fmul fast float %7711, 0x3FD45F3060000000
  %7713 = fmul fast float %7707, 0x401921FB60000000
  %7714 = fadd fast float %7713, 0x400921FB60000000
  %7715 = call float @dx.op.unary.f32(i32 13, float %7714)  ; Sin(value)
  %7716 = fadd fast float %7715, 0x3E7777A5C0000000
  %7717 = fmul fast float %7716, 0x3FC45F3060000000
  %7718 = fmul fast float %7707, 0x4022D97C80000000
  %7719 = fadd fast float %7718, 0x4012D97C80000000
  %7720 = call float @dx.op.unary.f32(i32 13, float %7719)  ; Sin(value)
  %7721 = fadd fast float %7720, 1.000000e+00
  %7722 = fmul fast float %7721, 0x3FBB2995E0000000
  %7723 = fmul fast float %7707, 0x402921FB60000000
  %7724 = fadd fast float %7723, 0x401921FB60000000
  %7725 = call float @dx.op.unary.f32(i32 13, float %7724)  ; Sin(value)
  %7726 = fadd fast float %7725, 0xBE8777A5C0000000
  %7727 = fmul fast float %7726, 0x3FB45F3060000000
  %7728 = call float @dx.op.dot4.f32(i32 56, float %7702, float %7703, float %7704, float %7705, float %7712, float %7717, float %7722, float %7727)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7729 = fmul fast float %7728, 0xBFF7154760000000
  %7730 = call float @dx.op.unary.f32(i32 21, float %7729)  ; Exp(value)
  %7731 = call float @dx.op.unary.f32(i32 7, float %7730)  ; Saturate(value)
  br label %7732

; <label>:7732                                    ; preds = %7700, %7696
  %7733 = phi float [ %7731, %7700 ], [ 1.000000e+00, %7696 ]
  %7734 = fadd fast float %7733, -1.000000e+00
  %7735 = fmul fast float %7734, %7694
  %7736 = fadd fast float %7735, 1.000000e+00
  br label %7737

; <label>:7737                                    ; preds = %7732, %7637
  %7738 = phi float [ %7736, %7732 ], [ 1.000000e+00, %7637 ]
  %7739 = fmul fast float %7738, %7633
  %7740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7741 = extractvalue %dx.types.CBufRet.f32 %7740, 0
  %7742 = extractvalue %dx.types.CBufRet.f32 %7740, 1
  %7743 = extractvalue %dx.types.CBufRet.f32 %7740, 2
  %7744 = fadd fast float %7741, %153
  %7745 = fadd fast float %7742, %154
  %7746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7747 = extractvalue %dx.types.CBufRet.f32 %7746, 1
  %7748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7749 = extractvalue %dx.types.CBufRet.f32 %7748, 0
  %7750 = extractvalue %dx.types.CBufRet.f32 %7748, 1
  %7751 = extractvalue %dx.types.CBufRet.f32 %7748, 2
  %7752 = fsub fast float -0.000000e+00, %7744
  %7753 = fsub fast float -0.000000e+00, %7745
  %7754 = fsub fast float -0.000000e+00, %155
  %7755 = fsub fast float %7754, %7743
  %7756 = fadd fast float %7755, %7747
  %7757 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7752, float %7753, float %7756)  ; Dot3(ax,ay,az,bx,by,bz)
  %7758 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7749, float %7750, float %7751)  ; Dot3(ax,ay,az,bx,by,bz)
  %7759 = fdiv fast float 1.000000e+00, %7758
  %7760 = fmul fast float %7759, %7757
  %7761 = fmul fast float %7749, %7760
  %7762 = fmul fast float %7750, %7760
  %7763 = fadd fast float %7761, %7744
  %7764 = fadd fast float %7762, %7745
  %7765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7766 = extractvalue %dx.types.CBufRet.f32 %7765, 0
  %7767 = extractvalue %dx.types.CBufRet.f32 %7765, 1
  %7768 = fsub fast float %7763, %7766
  %7769 = fsub fast float %7764, %7767
  %7770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7771 = extractvalue %dx.types.CBufRet.f32 %7770, 2
  %7772 = extractvalue %dx.types.CBufRet.f32 %7770, 3
  %7773 = fmul fast float %7768, %7771
  %7774 = fmul fast float %7769, %7772
  %7775 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7776 = extractvalue %dx.types.CBufRet.i32 %7775, 3
  %7777 = icmp eq i32 %7776, 0
  br i1 %7777, label %7783, label %7778

; <label>:7778                                    ; preds = %7737
  %7779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7773, float %7774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7780 = extractvalue %dx.types.ResRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.ResRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.ResRet.f32 %7779, 2
  br label %7788

; <label>:7783                                    ; preds = %7737
  %7784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7773, float %7774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7785 = extractvalue %dx.types.ResRet.f32 %7784, 0
  %7786 = extractvalue %dx.types.ResRet.f32 %7784, 1
  %7787 = extractvalue %dx.types.ResRet.f32 %7784, 2
  br label %7788

; <label>:7788                                    ; preds = %7783, %7778
  %7789 = phi float [ %7780, %7778 ], [ %7785, %7783 ]
  %7790 = phi float [ %7781, %7778 ], [ %7786, %7783 ]
  %7791 = phi float [ %7782, %7778 ], [ %7787, %7783 ]
  %7792 = extractvalue %dx.types.CBufRet.f32 %7746, 2
  %7793 = fmul fast float %7792, %7789
  %7794 = extractvalue %dx.types.CBufRet.f32 %7746, 0
  %7795 = fsub fast float %7760, %7794
  %7796 = fsub fast float %7795, %7793
  %7797 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7796)  ; FMax(a,b)
  %7798 = fmul fast float %7797, %7790
  %7799 = call float @dx.op.binary.f32(i32 36, float %7791, float %7798)  ; FMin(a,b)
  %7800 = fmul fast float %7799, 0xBFF7154760000000
  %7801 = call float @dx.op.unary.f32(i32 21, float %7800)  ; Exp(value)
  %7802 = fmul fast float %7739, %7801
  br label %7803

; <label>:7803                                    ; preds = %7788, %7632
  %7804 = phi float [ %7802, %7788 ], [ %7633, %7632 ]
  %7805 = call float @dx.op.binary.f32(i32 36, float %7804, float %7804)  ; FMin(a,b)
  %7806 = call float @dx.op.binary.f32(i32 36, float %7804, float %7805)  ; FMin(a,b)
  %7807 = fcmp fast ogt float %7806, 0.000000e+00
  br i1 %7807, label %7808, label %8130, !dx.controlflow.hints !119

; <label>:7808                                    ; preds = %7803
  %7809 = bitcast i32 %5529 to float
  %7810 = fmul fast float %7804, %6525
  %7811 = fmul fast float %7804, %6526
  %7812 = fmul fast float %7804, %6527
  %7813 = fsub fast float %6514, %5448
  %7814 = fsub fast float %6515, %5447
  %7815 = fsub fast float %6516, %5446
  %7816 = call float @dx.op.dot3.f32(i32 55, float %7813, float %7814, float %7815, float %7813, float %7814, float %7815)  ; Dot3(ax,ay,az,bx,by,bz)
  %7817 = call float @dx.op.unary.f32(i32 25, float %7816)  ; Rsqrt(value)
  %7818 = fmul fast float %7817, %7813
  %7819 = fmul fast float %7817, %7814
  %7820 = fmul fast float %7817, %7815
  %7821 = call float @dx.op.dot3.f32(i32 55, float %6514, float %6515, float %6516, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %7822 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5444, float %5443, float %7818, float %7819, float %7820)  ; Dot3(ax,ay,az,bx,by,bz)
  %7823 = call float @dx.op.unary.f32(i32 7, float %7821)  ; Saturate(value)
  %7824 = fmul fast float %7823, %7823
  %7825 = fmul fast float %7824, %7809
  %7826 = call float @dx.op.unary.f32(i32 7, float %7825)  ; Saturate(value)
  %7827 = fmul fast float %7826, %7823
  %7828 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %7818, float %7819, float %7820)  ; Dot3(ax,ay,az,bx,by,bz)
  %7829 = fmul fast float %7828, %7828
  %7830 = call float @dx.op.unary.f32(i32 6, float %7821)  ; FAbs(value)
  %7831 = fsub fast float 1.000000e+00, %5523
  %7832 = fmul fast float %5465, %5465
  %7833 = fmul fast float %7832, %7831
  %7834 = fadd fast float %7833, %5523
  %7835 = bitcast float %7834 to i32
  %7836 = ashr i32 %7835, 1
  %7837 = add nsw i32 %7836, 532487669
  %7838 = bitcast i32 %7837 to float
  %7839 = fadd fast float %7838, %5465
  %7840 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5177, float %5178, float %7818, float %7819, float %7820)  ; Dot3(ax,ay,az,bx,by,bz)
  %7841 = fsub fast float 1.000000e+00, %5164
  %7842 = call float @dx.op.binary.f32(i32 35, float %7841, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7843 = fmul fast float %7842, %7842
  %7844 = fmul fast float %7843, %5523
  %7845 = fmul fast float %7840, %7840
  %7846 = fsub fast float 1.000000e+00, %7829
  %7847 = fsub fast float %7846, %7845
  %7848 = fdiv fast float %7845, %7844
  %7849 = fadd fast float %7848, %7829
  %7850 = fdiv fast float %7847, %5523
  %7851 = fadd fast float %7849, %7850
  %7852 = fmul fast float %7830, %7830
  %7853 = fmul fast float %7852, %7831
  %7854 = fadd fast float %7853, %5523
  %7855 = bitcast float %7854 to i32
  %7856 = ashr i32 %7855, 1
  %7857 = add nsw i32 %7856, 532487669
  %7858 = bitcast i32 %7857 to float
  %7859 = fadd fast float %7858, %7830
  %7860 = fmul fast float %5523, %7842
  %7861 = fmul fast float %7851, %7851
  %7862 = fmul fast float %7861, %7860
  %7863 = fmul fast float %7862, %7839
  %7864 = fmul fast float %7863, %7859
  %7865 = fdiv fast float 0x3FF0A00000000000, %7864
  %7866 = fmul fast float %5775, 0x3FF9999980000000
  %7867 = fsub fast float 5.000000e+00, %7866
  %7868 = call float @dx.op.unary.f32(i32 6, float %7822)  ; FAbs(value)
  %7869 = fsub fast float 1.000000e+00, %7868
  %7870 = fmul fast float %5775, 0x41D9660740000000
  %7871 = fadd fast float %7870, 0xC1EFBF8940000000
  %7872 = bitcast float %7869 to i32
  %7873 = sitofp i32 %7872 to float
  %7874 = fmul fast float %7873, %7867
  %7875 = fadd fast float %7871, %7874
  %7876 = fptosi float %7875 to i32
  %7877 = bitcast i32 %7876 to float
  %7878 = fsub fast float 1.000000e+00, %5452
  %7879 = fsub fast float 1.000000e+00, %5453
  %7880 = fsub fast float 1.000000e+00, %5463
  %7881 = fmul fast float %7877, %7878
  %7882 = fmul fast float %7877, %7879
  %7883 = fmul fast float %7877, %7880
  %7884 = fadd fast float %7881, %5452
  %7885 = fadd fast float %7882, %5453
  %7886 = fadd fast float %7883, %5463
  br i1 %5798, label %7887, label %7910

; <label>:7887                                    ; preds = %7808
  %7888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5061, float %7868, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7889 = extractvalue %dx.types.ResRet.f32 %7888, 0
  %7890 = extractvalue %dx.types.ResRet.f32 %7888, 1
  %7891 = extractvalue %dx.types.ResRet.f32 %7888, 2
  %7892 = fadd fast float %7889, -5.000000e-01
  %7893 = fadd fast float %7890, -5.000000e-01
  %7894 = fadd fast float %7891, -5.000000e-01
  %7895 = fmul fast float %5452, 4.000000e+00
  %7896 = fmul fast float %7895, %7878
  %7897 = fmul fast float %7896, %7892
  %7898 = fmul fast float %5453, 4.000000e+00
  %7899 = fmul fast float %7898, %7879
  %7900 = fmul fast float %7899, %7893
  %7901 = fmul fast float %5463, 4.000000e+00
  %7902 = fmul fast float %7901, %7880
  %7903 = fmul fast float %7902, %7894
  %7904 = fadd fast float %7897, %7884
  %7905 = fadd fast float %7900, %7885
  %7906 = fadd fast float %7903, %7886
  %7907 = call float @dx.op.unary.f32(i32 7, float %7904)  ; Saturate(value)
  %7908 = call float @dx.op.unary.f32(i32 7, float %7905)  ; Saturate(value)
  %7909 = call float @dx.op.unary.f32(i32 7, float %7906)  ; Saturate(value)
  br label %7910

; <label>:7910                                    ; preds = %7887, %7808
  %7911 = phi float [ %7907, %7887 ], [ %7884, %7808 ]
  %7912 = phi float [ %7908, %7887 ], [ %7885, %7808 ]
  %7913 = phi float [ %7909, %7887 ], [ %7886, %7808 ]
  %7914 = fmul fast float %7821, 9.843750e-01
  %7915 = fadd fast float %7914, 7.812500e-03
  %7916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %7915, float %5779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7917 = extractvalue %dx.types.ResRet.f32 %7916, 0
  %7918 = extractvalue %dx.types.ResRet.f32 %7916, 1
  %7919 = extractvalue %dx.types.ResRet.f32 %7916, 2
  %7920 = extractvalue %dx.types.ResRet.f32 %7916, 3
  %7921 = fsub fast float %7919, %7917
  %7922 = fsub fast float %7920, %7918
  %7923 = fmul fast float %7921, %5785
  %7924 = fmul fast float %7922, %5785
  %7925 = fadd fast float %7923, %7917
  %7926 = fadd fast float %7924, %7918
  %7927 = fmul fast float %7925, %5452
  %7928 = fmul fast float %7925, %5453
  %7929 = fmul fast float %7925, %5463
  %7930 = fadd fast float %7927, %7926
  %7931 = fadd fast float %7928, %7926
  %7932 = fadd fast float %7929, %7926
  br i1 %5798, label %7933, label %7956

; <label>:7933                                    ; preds = %7910
  %7934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5061, float %7821, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7935 = extractvalue %dx.types.ResRet.f32 %7934, 0
  %7936 = extractvalue %dx.types.ResRet.f32 %7934, 1
  %7937 = extractvalue %dx.types.ResRet.f32 %7934, 2
  %7938 = fadd fast float %7935, -5.000000e-01
  %7939 = fadd fast float %7936, -5.000000e-01
  %7940 = fadd fast float %7937, -5.000000e-01
  %7941 = fmul fast float %5452, 4.000000e+00
  %7942 = fmul fast float %7941, %7878
  %7943 = fmul fast float %7942, %7938
  %7944 = fmul fast float %5453, 4.000000e+00
  %7945 = fmul fast float %7944, %7879
  %7946 = fmul fast float %7945, %7939
  %7947 = fmul fast float %5463, 4.000000e+00
  %7948 = fmul fast float %7947, %7880
  %7949 = fmul fast float %7948, %7940
  %7950 = fadd fast float %7943, %7930
  %7951 = fadd fast float %7946, %7931
  %7952 = fadd fast float %7949, %7932
  %7953 = call float @dx.op.unary.f32(i32 7, float %7950)  ; Saturate(value)
  %7954 = call float @dx.op.unary.f32(i32 7, float %7951)  ; Saturate(value)
  %7955 = call float @dx.op.unary.f32(i32 7, float %7952)  ; Saturate(value)
  br label %7956

; <label>:7956                                    ; preds = %7933, %7910
  %7957 = phi float [ %7953, %7933 ], [ %7930, %7910 ]
  %7958 = phi float [ %7954, %7933 ], [ %7931, %7910 ]
  %7959 = phi float [ %7955, %7933 ], [ %7932, %7910 ]
  %7960 = call float @dx.op.binary.f32(i32 35, float %7958, float %7959)  ; FMax(a,b)
  %7961 = call float @dx.op.binary.f32(i32 35, float %7957, float %7960)  ; FMax(a,b)
  %7962 = fsub fast float 1.000000e+00, %7961
  %7963 = call float @dx.op.binary.f32(i32 35, float %7830, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7964 = fdiv fast float %4415, %7963
  %7965 = fmul fast float %6423, %7964
  %7966 = fmul fast float %6425, %7964
  %7967 = fmul fast float %6427, %7964
  %7968 = call float @dx.op.unary.f32(i32 21, float %7965)  ; Exp(value)
  %7969 = call float @dx.op.unary.f32(i32 21, float %7966)  ; Exp(value)
  %7970 = call float @dx.op.unary.f32(i32 21, float %7967)  ; Exp(value)
  %7971 = call float @dx.op.unary.f32(i32 7, float %7968)  ; Saturate(value)
  %7972 = call float @dx.op.unary.f32(i32 7, float %7969)  ; Saturate(value)
  %7973 = call float @dx.op.unary.f32(i32 7, float %7970)  ; Saturate(value)
  %7974 = select i1 %6420, float %7971, float 0.000000e+00
  %7975 = select i1 %6421, float %7972, float 0.000000e+00
  %7976 = select i1 %6422, float %7973, float 0.000000e+00
  %7977 = call float @dx.op.dot3.f32(i32 55, float %6514, float %6515, float %6516, float %5462, float %5461, float %5460)  ; Dot3(ax,ay,az,bx,by,bz)
  %7978 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  %7979 = fmul fast float %7978, 9.843750e-01
  %7980 = fadd fast float %7979, 7.812500e-03
  %7981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %7980, float %5779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7982 = extractvalue %dx.types.ResRet.f32 %7981, 0
  %7983 = extractvalue %dx.types.ResRet.f32 %7981, 1
  %7984 = extractvalue %dx.types.ResRet.f32 %7981, 2
  %7985 = extractvalue %dx.types.ResRet.f32 %7981, 3
  %7986 = fsub fast float %7984, %7982
  %7987 = fsub fast float %7985, %7983
  %7988 = fmul fast float %7986, %5785
  %7989 = fmul fast float %7987, %5785
  %7990 = fadd fast float %7988, %7982
  %7991 = fadd fast float %7989, %7983
  %7992 = fmul fast float %7990, %5452
  %7993 = fmul fast float %7990, %5453
  %7994 = fmul fast float %7990, %5463
  %7995 = fadd fast float %7992, %7991
  %7996 = fadd fast float %7993, %7991
  %7997 = fadd fast float %7994, %7991
  br i1 %5798, label %7998, label %8021

; <label>:7998                                    ; preds = %7956
  %7999 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5061, float %7978, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8000 = extractvalue %dx.types.ResRet.f32 %7999, 0
  %8001 = extractvalue %dx.types.ResRet.f32 %7999, 1
  %8002 = extractvalue %dx.types.ResRet.f32 %7999, 2
  %8003 = fadd fast float %8000, -5.000000e-01
  %8004 = fadd fast float %8001, -5.000000e-01
  %8005 = fadd fast float %8002, -5.000000e-01
  %8006 = fmul fast float %5452, 4.000000e+00
  %8007 = fmul fast float %8006, %7878
  %8008 = fmul fast float %8007, %8003
  %8009 = fmul fast float %5453, 4.000000e+00
  %8010 = fmul fast float %8009, %7879
  %8011 = fmul fast float %8010, %8004
  %8012 = fmul fast float %5463, 4.000000e+00
  %8013 = fmul fast float %8012, %7880
  %8014 = fmul fast float %8013, %8005
  %8015 = fadd fast float %8008, %7995
  %8016 = fadd fast float %8011, %7996
  %8017 = fadd fast float %8014, %7997
  %8018 = call float @dx.op.unary.f32(i32 7, float %8015)  ; Saturate(value)
  %8019 = call float @dx.op.unary.f32(i32 7, float %8016)  ; Saturate(value)
  %8020 = call float @dx.op.unary.f32(i32 7, float %8017)  ; Saturate(value)
  br label %8021

; <label>:8021                                    ; preds = %7998, %7956
  %8022 = phi float [ %8018, %7998 ], [ %7995, %7956 ]
  %8023 = phi float [ %8019, %7998 ], [ %7996, %7956 ]
  %8024 = phi float [ %8020, %7998 ], [ %7997, %7956 ]
  %8025 = call float @dx.op.binary.f32(i32 35, float %8023, float %8024)  ; FMax(a,b)
  %8026 = call float @dx.op.binary.f32(i32 35, float %8022, float %8025)  ; FMax(a,b)
  %8027 = fsub fast float 1.000000e+00, %8026
  %8028 = fmul fast float %5520, %6487
  %8029 = fadd fast float %6489, %8028
  %8030 = call float @dx.op.unary.f32(i32 7, float %8029)  ; Saturate(value)
  %8031 = fsub fast float %6514, %5471
  %8032 = fsub fast float %6515, %5472
  %8033 = fsub fast float %6516, %5473
  %8034 = call float @dx.op.dot3.f32(i32 55, float %8031, float %8032, float %8033, float %8031, float %8032, float %8033)  ; Dot3(ax,ay,az,bx,by,bz)
  %8035 = call float @dx.op.unary.f32(i32 25, float %8034)  ; Rsqrt(value)
  %8036 = fmul fast float %8035, %8031
  %8037 = fmul fast float %8035, %8032
  %8038 = fmul fast float %8035, %8033
  %8039 = call float @dx.op.dot3.f32(i32 55, float %5462, float %5461, float %5460, float %8036, float %8037, float %8038)  ; Dot3(ax,ay,az,bx,by,bz)
  %8040 = fmul fast float %8039, %8039
  %8041 = call float @dx.op.unary.f32(i32 6, float %7978)  ; FAbs(value)
  %8042 = call float @dx.op.binary.f32(i32 35, float %8030, float 0x3F847AE140000000)  ; FMax(a,b)
  %8043 = fmul fast float %8042, %8042
  %8044 = fmul fast float %8043, %8043
  %8045 = fsub fast float 1.000000e+00, %8044
  %8046 = fmul fast float %7832, %8045
  %8047 = fadd fast float %8046, %8044
  %8048 = bitcast float %8047 to i32
  %8049 = ashr i32 %8048, 1
  %8050 = add nsw i32 %8049, 532487669
  %8051 = bitcast i32 %8050 to float
  %8052 = fadd fast float %8051, %5465
  %8053 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5177, float %5178, float %8036, float %8037, float %8038)  ; Dot3(ax,ay,az,bx,by,bz)
  %8054 = fmul fast float %7843, %8044
  %8055 = fmul fast float %8053, %8053
  %8056 = fsub fast float 1.000000e+00, %8040
  %8057 = fsub fast float %8056, %8055
  %8058 = fdiv fast float %8055, %8054
  %8059 = fadd fast float %8058, %8040
  %8060 = fdiv fast float %8057, %8044
  %8061 = fadd fast float %8059, %8060
  %8062 = fmul fast float %8041, %8041
  %8063 = fmul fast float %8062, %8045
  %8064 = fadd fast float %8063, %8044
  %8065 = bitcast float %8064 to i32
  %8066 = ashr i32 %8065, 1
  %8067 = add nsw i32 %8066, 532487669
  %8068 = bitcast i32 %8067 to float
  %8069 = fadd fast float %8068, %8041
  %8070 = fmul fast float %8044, %7842
  %8071 = fmul fast float %8061, %8061
  %8072 = fmul fast float %8071, %8070
  %8073 = fmul fast float %8072, %8052
  %8074 = fmul fast float %8073, %8069
  %8075 = fdiv fast float 0x3FF0A00000000000, %8074
  %8076 = fmul fast float %7978, %7974
  %8077 = fmul fast float %7978, %7975
  %8078 = fmul fast float %7978, %7976
  %8079 = fmul fast float %8076, %8027
  %8080 = fmul fast float %8079, %8075
  %8081 = fmul fast float %8077, %8027
  %8082 = fmul fast float %8081, %8075
  %8083 = fmul fast float %8078, %8027
  %8084 = fmul fast float %8083, %8075
  %8085 = fmul fast float %7911, %7865
  %8086 = fmul fast float %7912, %7865
  %8087 = fmul fast float %7913, %7865
  %8088 = fsub fast float 1.000000e+00, %7822
  %8089 = bitcast float %8088 to i32
  %8090 = sitofp i32 %8089 to float
  %8091 = fmul fast float %8090, 5.000000e+00
  %8092 = fadd fast float %8091, 0xC1EFBF8940000000
  %8093 = fptosi float %8092 to i32
  %8094 = bitcast i32 %8093 to float
  %8095 = fmul fast float %8094, %5062
  %8096 = fmul fast float %7962, %8095
  %8097 = fmul fast float %8096, %6415
  %8098 = fmul fast float %8096, %6416
  %8099 = fmul fast float %8096, %6417
  %8100 = fadd fast float %8097, %8085
  %8101 = fadd fast float %8098, %8086
  %8102 = fadd fast float %8099, %8087
  %8103 = fmul fast float %8100, %7827
  %8104 = fmul fast float %8101, %7827
  %8105 = fmul fast float %8102, %7827
  %8106 = fmul fast float %7827, %7810
  %8107 = fmul fast float %8106, %7962
  %8108 = fmul fast float %7827, %7811
  %8109 = fmul fast float %8108, %7962
  %8110 = fmul fast float %7827, %7812
  %8111 = fmul fast float %8110, %7962
  %8112 = fadd fast float %8103, %8080
  %8113 = fadd fast float %8104, %8082
  %8114 = fadd fast float %8105, %8084
  %8115 = fmul fast float %8112, %7810
  %8116 = fmul fast float %8113, %7811
  %8117 = fmul fast float %8114, %7812
  %8118 = fadd fast float %8107, %6504
  %8119 = fmul fast float %8118, %5058
  %8120 = fadd fast float %8109, %6506
  %8121 = fmul fast float %8120, %5058
  %8122 = fadd fast float %8111, %6508
  %8123 = fmul fast float %8122, %5058
  %8124 = fadd fast float %8115, %6468
  %8125 = fmul fast float %8124, %5058
  %8126 = fadd fast float %8116, %6471
  %8127 = fmul fast float %8126, %5058
  %8128 = fadd fast float %8117, %6474
  %8129 = fmul fast float %8128, %5058
  br label %8130

; <label>:8130                                    ; preds = %8021, %7803, %6398
  %8131 = phi float [ %6469, %6398 ], [ %6469, %7803 ], [ %8125, %8021 ]
  %8132 = phi float [ %6472, %6398 ], [ %6472, %7803 ], [ %8127, %8021 ]
  %8133 = phi float [ %6475, %6398 ], [ %6475, %7803 ], [ %8129, %8021 ]
  %8134 = phi float [ %6505, %6398 ], [ %6505, %7803 ], [ %8119, %8021 ]
  %8135 = phi float [ %6507, %6398 ], [ %6507, %7803 ], [ %8121, %8021 ]
  %8136 = phi float [ %6509, %6398 ], [ %6509, %7803 ], [ %8123, %8021 ]
  %8137 = fmul fast float %5058, %6444
  %8138 = fsub fast float -0.000000e+00, %8137
  %8139 = fmul fast float %5058, %6445
  %8140 = fsub fast float -0.000000e+00, %8139
  %8141 = fmul fast float %5058, %6446
  %8142 = fsub fast float -0.000000e+00, %8141
  %8143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8144 = extractvalue %dx.types.CBufRet.f32 %8143, 0
  %8145 = fmul fast float %8144, %6450
  %8146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8147 = extractvalue %dx.types.CBufRet.f32 %8146, 3
  %8148 = fsub fast float 1.000000e+00, %5065
  %8149 = call float @dx.op.unary.f32(i32 7, float %8148)  ; Saturate(value)
  %8150 = fadd fast float %8136, %5064
  %8151 = fmul fast float %8150, %5065
  %8152 = fmul fast float %8149, %8147
  %8153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8154 = extractvalue %dx.types.CBufRet.f32 %8153, 3
  %8155 = fmul fast float %8134, %5449
  %8156 = fmul fast float %8135, %5450
  %8157 = fmul fast float %8136, %5451
  %8158 = fcmp fast ogt float %86, %175
  %8159 = and i1 %8158, %5181
  %8160 = or i1 %5260, %8159
  %8161 = icmp eq i32 %5180, 2
  %8162 = fcmp fast ole float %86, %175
  %8163 = and i1 %8162, %8161
  %8164 = or i1 %8163, %8160
  br i1 %8159, label %8165, label %8422

; <label>:8165                                    ; preds = %8130
  %8166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8167 = extractvalue %dx.types.CBufRet.f32 %8166, 2
  %8168 = extractvalue %dx.types.CBufRet.f32 %8166, 3
  %8169 = fmul fast float %8167, %98
  %8170 = fmul fast float %8168, %99
  %8171 = call float @dx.op.unary.f32(i32 7, float %8169)  ; Saturate(value)
  %8172 = call float @dx.op.unary.f32(i32 7, float %8170)  ; Saturate(value)
  %8173 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8171, float %8172, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8174 = extractvalue %dx.types.ResRet.f32 %8173, 0
  %8175 = extractvalue %dx.types.ResRet.f32 %8173, 1
  %8176 = extractvalue %dx.types.ResRet.f32 %8173, 2
  %8177 = extractvalue %dx.types.ResRet.f32 %8173, 3
  %8178 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8171, float %8172, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8179 = extractvalue %dx.types.ResRet.f32 %8178, 0
  %8180 = extractvalue %dx.types.ResRet.f32 %8178, 1
  %8181 = extractvalue %dx.types.ResRet.f32 %8178, 2
  %8182 = extractvalue %dx.types.ResRet.f32 %8178, 3
  %8183 = call float @dx.op.binary.f32(i32 35, float %8175, float %8176)  ; FMax(a,b)
  %8184 = call float @dx.op.binary.f32(i32 35, float %8174, float %8183)  ; FMax(a,b)
  %8185 = call float @dx.op.binary.f32(i32 35, float %8184, float %8177)  ; FMax(a,b)
  %8186 = call float @dx.op.binary.f32(i32 36, float %8180, float %8181)  ; FMin(a,b)
  %8187 = call float @dx.op.binary.f32(i32 36, float %8179, float %8186)  ; FMin(a,b)
  %8188 = call float @dx.op.binary.f32(i32 36, float %8187, float %8182)  ; FMin(a,b)
  %8189 = fmul fast float %8185, 2.550000e+02
  %8190 = fadd fast float %8189, 0x3F70101020000000
  %8191 = fptoui float %8190 to i32
  %8192 = fmul fast float %8188, 2.550000e+02
  %8193 = fadd fast float %8192, 0x3F70101020000000
  %8194 = fptoui float %8193 to i32
  %8195 = icmp ult i32 %8191, %8194
  br i1 %8195, label %8196, label %8364

; <label>:8196                                    ; preds = %8165
  %8197 = fcmp fast ogt float %85, 9.843750e-01
  %8198 = fadd fast float %86, -4.000000e+00
  %8199 = select i1 %8197, float -4.000000e+00, float %8198
  %8200 = call float @dx.op.binary.f32(i32 35, float %8199, float 0.000000e+00)  ; FMax(a,b)
  %8201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8202 = extractvalue %dx.types.CBufRet.f32 %8201, 0
  %8203 = fadd fast float %8202, %8200
  %8204 = extractvalue %dx.types.CBufRet.f32 %8201, 2
  %8205 = fmul fast float %8203, %8204
  %8206 = call float @dx.op.unary.f32(i32 23, float %8205)  ; Log(value)
  %8207 = extractvalue %dx.types.CBufRet.f32 %8201, 3
  %8208 = fmul fast float %8207, %8206
  %8209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8210 = extractvalue %dx.types.CBufRet.f32 %8209, 2
  %8211 = fmul fast float %8208, %8210
  %8212 = call float @dx.op.unary.f32(i32 7, float %8211)  ; Saturate(value)
  %8213 = uitofp i32 %8191 to float
  %8214 = uitofp i32 %8194 to float
  %8215 = fadd fast float %8213, 5.000000e-01
  %8216 = fadd fast float %8214, 5.000000e-01
  %8217 = fmul fast float %8210, %8215
  %8218 = fmul fast float %8210, %8216
  %8219 = fadd fast float %8217, 0x3F0FFB4800000000
  %8220 = fadd fast float %8218, 0xBF0FFB4800000000
  %8221 = call float @dx.op.binary.f32(i32 35, float %8212, float %8219)  ; FMax(a,b)
  %8222 = call float @dx.op.binary.f32(i32 36, float %8221, float %8220)  ; FMin(a,b)
  %8223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8224 = extractvalue %dx.types.CBufRet.f32 %8223, 1
  %8225 = extractvalue %dx.types.CBufRet.f32 %8223, 2
  %8226 = extractvalue %dx.types.CBufRet.f32 %8223, 0
  %8227 = fmul fast float %8224, %8222
  %8228 = fadd fast float %8226, %8227
  %8229 = fadd fast float %8226, %8225
  %8230 = fsub fast float %8224, %8225
  %8231 = fadd fast float %8230, %8226
  %8232 = call float @dx.op.binary.f32(i32 35, float %8228, float %8229)  ; FMax(a,b)
  %8233 = call float @dx.op.binary.f32(i32 36, float %8232, float %8231)  ; FMin(a,b)
  %8234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %8171, float %8172, float %8233, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8235 = extractvalue %dx.types.ResRet.f32 %8234, 0
  %8236 = extractvalue %dx.types.ResRet.f32 %8234, 1
  %8237 = extractvalue %dx.types.ResRet.f32 %8234, 2
  %8238 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8239 = extractvalue %dx.types.CBufRet.i32 %8238, 0
  %8240 = extractvalue %dx.types.CBufRet.i32 %8238, 1
  %8241 = uitofp i32 %8239 to float
  %8242 = uitofp i32 %8240 to float
  %8243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8244 = extractvalue %dx.types.CBufRet.f32 %8243, 0
  %8245 = extractvalue %dx.types.CBufRet.f32 %8243, 1
  %8246 = fmul fast float %8241, %8171
  %8247 = fmul fast float %8242, %8172
  %8248 = fadd fast float %8246, -5.000000e-01
  %8249 = fadd fast float %8247, -5.000000e-01
  %8250 = call float @dx.op.unary.f32(i32 22, float %8248)  ; Frc(value)
  %8251 = call float @dx.op.unary.f32(i32 22, float %8249)  ; Frc(value)
  %8252 = fmul fast float %8250, %8250
  %8253 = fmul fast float %8252, %8250
  %8254 = fsub fast float 3.000000e+00, %8250
  %8255 = fmul fast float %8252, %8254
  %8256 = fmul fast float %8250, 3.000000e+00
  %8257 = fmul fast float %8253, 3.000000e+00
  %8258 = fmul fast float %8252, 6.000000e+00
  %8259 = fsub fast float %8257, %8258
  %8260 = fadd fast float %8259, 4.000000e+00
  %8261 = fmul fast float %8260, 0x3FC5555560000000
  %8262 = fmul fast float %8253, -3.000000e+00
  %8263 = fadd fast float %8252, %8250
  %8264 = fmul fast float %8263, 3.000000e+00
  %8265 = fadd fast float %8262, 1.000000e+00
  %8266 = fadd fast float %8265, %8264
  %8267 = fmul fast float %8253, 0x3FC5555560000000
  %8268 = fmul fast float %8251, %8251
  %8269 = fmul fast float %8268, %8251
  %8270 = fsub fast float 3.000000e+00, %8251
  %8271 = fmul fast float %8268, %8270
  %8272 = fmul fast float %8251, 3.000000e+00
  %8273 = fmul fast float %8269, 3.000000e+00
  %8274 = fmul fast float %8268, 6.000000e+00
  %8275 = fsub fast float %8273, %8274
  %8276 = fadd fast float %8275, 4.000000e+00
  %8277 = fmul fast float %8276, 0x3FC5555560000000
  %8278 = fmul fast float %8269, -3.000000e+00
  %8279 = fadd fast float %8268, %8251
  %8280 = fmul fast float %8279, 3.000000e+00
  %8281 = fadd fast float %8278, 1.000000e+00
  %8282 = fadd fast float %8281, %8280
  %8283 = fmul fast float %8269, 0x3FC5555560000000
  %8284 = fadd fast float %8250, 1.000000e+00
  %8285 = fsub fast float 1.000000e+00, %8256
  %8286 = fadd fast float %8285, %8255
  %8287 = fadd fast float %8286, %8260
  %8288 = fmul fast float %8287, 0x3FC5555560000000
  %8289 = fdiv fast float %8261, %8288
  %8290 = fsub fast float %8284, %8289
  %8291 = fsub fast float 1.000000e+00, %8250
  %8292 = fadd fast float %8266, %8253
  %8293 = fmul fast float %8292, 0x3FC5555560000000
  %8294 = fdiv fast float %8267, %8293
  %8295 = fadd fast float %8291, %8294
  %8296 = fadd fast float %8251, 1.000000e+00
  %8297 = fsub fast float 1.000000e+00, %8272
  %8298 = fadd fast float %8297, %8271
  %8299 = fadd fast float %8298, %8276
  %8300 = fmul fast float %8299, 0x3FC5555560000000
  %8301 = fdiv fast float %8277, %8300
  %8302 = fsub fast float %8296, %8301
  %8303 = fsub fast float 1.000000e+00, %8251
  %8304 = fadd fast float %8282, %8269
  %8305 = fmul fast float %8304, 0x3FC5555560000000
  %8306 = fdiv fast float %8283, %8305
  %8307 = fadd fast float %8306, %8303
  %8308 = fmul fast float %8290, %8244
  %8309 = fsub fast float %8171, %8308
  %8310 = fmul fast float %8295, %8244
  %8311 = fadd fast float %8310, %8171
  %8312 = fmul fast float %8307, %8245
  %8313 = fadd fast float %8312, %8172
  %8314 = fmul fast float %8302, %8245
  %8315 = fsub fast float %8172, %8314
  %8316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8309, float %8315, float %8233, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8317 = extractvalue %dx.types.ResRet.f32 %8316, 0
  %8318 = extractvalue %dx.types.ResRet.f32 %8316, 1
  %8319 = extractvalue %dx.types.ResRet.f32 %8316, 2
  %8320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8311, float %8315, float %8233, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8321 = extractvalue %dx.types.ResRet.f32 %8320, 0
  %8322 = extractvalue %dx.types.ResRet.f32 %8320, 1
  %8323 = extractvalue %dx.types.ResRet.f32 %8320, 2
  %8324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8309, float %8313, float %8233, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8325 = extractvalue %dx.types.ResRet.f32 %8324, 0
  %8326 = extractvalue %dx.types.ResRet.f32 %8324, 1
  %8327 = extractvalue %dx.types.ResRet.f32 %8324, 2
  %8328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8311, float %8313, float %8233, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8329 = extractvalue %dx.types.ResRet.f32 %8328, 0
  %8330 = extractvalue %dx.types.ResRet.f32 %8328, 1
  %8331 = extractvalue %dx.types.ResRet.f32 %8328, 2
  %8332 = fsub fast float %8325, %8317
  %8333 = fsub fast float %8326, %8318
  %8334 = fsub fast float %8327, %8319
  %8335 = fmul fast float %8332, %8305
  %8336 = fmul fast float %8333, %8305
  %8337 = fmul fast float %8334, %8305
  %8338 = fadd fast float %8335, %8317
  %8339 = fadd fast float %8336, %8318
  %8340 = fadd fast float %8337, %8319
  %8341 = fsub fast float %8329, %8321
  %8342 = fsub fast float %8330, %8322
  %8343 = fsub fast float %8331, %8323
  %8344 = fmul fast float %8341, %8305
  %8345 = fmul fast float %8342, %8305
  %8346 = fmul fast float %8343, %8305
  %8347 = fsub fast float %8321, %8338
  %8348 = fadd fast float %8347, %8344
  %8349 = fsub fast float %8322, %8339
  %8350 = fadd fast float %8349, %8345
  %8351 = fsub fast float %8323, %8340
  %8352 = fadd fast float %8351, %8346
  %8353 = fmul fast float %8348, %8293
  %8354 = fmul fast float %8350, %8293
  %8355 = fmul fast float %8352, %8293
  %8356 = fadd fast float %8353, %8338
  %8357 = fadd fast float %8354, %8339
  %8358 = fadd fast float %8355, %8340
  %8359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8360 = extractvalue %dx.types.CBufRet.f32 %8359, 1
  %8361 = fmul fast float %8356, %8360
  %8362 = fmul fast float %8357, %8360
  %8363 = fmul fast float %8358, %8360
  br label %8364

; <label>:8364                                    ; preds = %8196, %8165
  %8365 = phi float [ %8235, %8196 ], [ 1.000000e+00, %8165 ]
  %8366 = phi float [ %8236, %8196 ], [ 1.000000e+00, %8165 ]
  %8367 = phi float [ %8237, %8196 ], [ 1.000000e+00, %8165 ]
  %8368 = phi float [ %8361, %8196 ], [ 0.000000e+00, %8165 ]
  %8369 = phi float [ %8362, %8196 ], [ 0.000000e+00, %8165 ]
  %8370 = phi float [ %8363, %8196 ], [ 0.000000e+00, %8165 ]
  %8371 = fmul fast float %8368, %8138
  %8372 = fmul fast float %8369, %8140
  %8373 = fmul fast float %8370, %8142
  %8374 = call float @dx.op.dot3.f32(i32 55, float %8365, float %8366, float %8367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8375 = call float @dx.op.dot3.f32(i32 55, float %8371, float %8372, float %8373, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8376 = select i1 %214, float %8374, float %8365
  %8377 = select i1 %214, float %8374, float %8366
  %8378 = select i1 %214, float 1.000000e+00, float %8367
  %8379 = select i1 %214, float %8375, float %8371
  %8380 = select i1 %214, float 0.000000e+00, float %8372
  %8381 = select i1 %214, float 0.000000e+00, float %8373
  %8382 = fmul fast float %8376, %8155
  %8383 = fmul fast float %8377, %8156
  %8384 = fmul fast float %8378, %8157
  %8385 = fadd fast float %8382, %8379
  %8386 = fadd fast float %8383, %8380
  %8387 = fadd fast float %8381, %8384
  %8388 = fmul fast float %8376, %8131
  %8389 = fmul fast float %8377, %8132
  %8390 = fmul fast float %8378, %8133
  %8391 = fmul fast float %123, %8167
  %8392 = fmul fast float %125, %8168
  %8393 = fsub fast float 1.000000e+00, %8391
  %8394 = fsub fast float 1.000000e+00, %8392
  %8395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8396 = extractvalue %dx.types.CBufRet.f32 %8395, 0
  %8397 = extractvalue %dx.types.CBufRet.f32 %8395, 1
  %8398 = extractvalue %dx.types.CBufRet.f32 %8395, 2
  %8399 = fmul fast float %8393, %8396
  %8400 = fmul fast float %8393, %8397
  %8401 = fmul fast float %8393, %8398
  %8402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.f32 %8402, 0
  %8404 = extractvalue %dx.types.CBufRet.f32 %8402, 1
  %8405 = extractvalue %dx.types.CBufRet.f32 %8402, 2
  %8406 = fmul fast float %8394, %8403
  %8407 = fmul fast float %8394, %8404
  %8408 = fmul fast float %8394, %8405
  %8409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8410 = extractvalue %dx.types.CBufRet.f32 %8409, 0
  %8411 = extractvalue %dx.types.CBufRet.f32 %8409, 1
  %8412 = extractvalue %dx.types.CBufRet.f32 %8409, 2
  %8413 = fadd fast float %8406, %8410
  %8414 = fadd fast float %8413, %8399
  %8415 = fadd fast float %8407, %8411
  %8416 = fadd fast float %8415, %8400
  %8417 = fadd fast float %8408, %8412
  %8418 = fadd fast float %8417, %8401
  %8419 = fmul fast float %8414, %175
  %8420 = fmul fast float %8416, %175
  %8421 = fmul fast float %8418, %175
  br label %8422

; <label>:8422                                    ; preds = %8364, %8130
  %8423 = phi float [ %8419, %8364 ], [ %153, %8130 ]
  %8424 = phi float [ %8420, %8364 ], [ %154, %8130 ]
  %8425 = phi float [ %8421, %8364 ], [ %155, %8130 ]
  %8426 = phi float [ %175, %8364 ], [ %86, %8130 ]
  %8427 = phi float [ %8385, %8364 ], [ %8155, %8130 ]
  %8428 = phi float [ %8386, %8364 ], [ %8156, %8130 ]
  %8429 = phi float [ %8387, %8364 ], [ %8157, %8130 ]
  %8430 = phi float [ %8388, %8364 ], [ %8131, %8130 ]
  %8431 = phi float [ %8389, %8364 ], [ %8132, %8130 ]
  %8432 = phi float [ %8390, %8364 ], [ %8133, %8130 ]
  %8433 = phi float [ %8365, %8364 ], [ 1.000000e+00, %8130 ]
  br i1 %8164, label %9588, label %8434

; <label>:8434                                    ; preds = %8422
  %8435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8436 = extractvalue %dx.types.CBufRet.f32 %8435, 0
  %8437 = extractvalue %dx.types.CBufRet.f32 %8435, 1
  %8438 = extractvalue %dx.types.CBufRet.f32 %8435, 2
  %8439 = extractvalue %dx.types.CBufRet.f32 %8435, 3
  %8440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8441 = extractvalue %dx.types.CBufRet.f32 %8440, 0
  %8442 = extractvalue %dx.types.CBufRet.f32 %8440, 1
  %8443 = extractvalue %dx.types.CBufRet.f32 %8440, 2
  %8444 = extractvalue %dx.types.CBufRet.f32 %8440, 3
  %8445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8446 = extractvalue %dx.types.CBufRet.f32 %8445, 0
  %8447 = extractvalue %dx.types.CBufRet.f32 %8445, 1
  %8448 = extractvalue %dx.types.CBufRet.f32 %8445, 2
  %8449 = extractvalue %dx.types.CBufRet.f32 %8445, 3
  %8450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8451 = extractvalue %dx.types.CBufRet.f32 %8450, 0
  %8452 = extractvalue %dx.types.CBufRet.f32 %8450, 1
  %8453 = extractvalue %dx.types.CBufRet.f32 %8450, 2
  %8454 = extractvalue %dx.types.CBufRet.f32 %8450, 3
  %8455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8456 = extractvalue %dx.types.CBufRet.f32 %8455, 3
  %8457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8458 = extractvalue %dx.types.CBufRet.f32 %8457, 3
  %8459 = extractvalue %dx.types.CBufRet.f32 %8457, 0
  %8460 = extractvalue %dx.types.CBufRet.f32 %8457, 1
  %8461 = extractvalue %dx.types.CBufRet.f32 %8457, 2
  %8462 = fcmp fast olt float %8461, -5.000000e-01
  %8463 = call float @dx.op.dot3.f32(i32 55, float %8423, float %8424, float %8425, float %8423, float %8424, float %8425)  ; Dot3(ax,ay,az,bx,by,bz)
  %8464 = call float @dx.op.unary.f32(i32 25, float %8463)  ; Rsqrt(value)
  %8465 = fmul fast float %8464, %8463
  %8466 = fmul fast float %8464, %8423
  %8467 = fmul fast float %8464, %8424
  %8468 = fmul fast float %8464, %8425
  %8469 = fadd fast float %8465, %8439
  %8470 = call float @dx.op.dot3.f32(i32 55, float %8466, float %8467, float %8468, float %8436, float %8437, float %8438)  ; Dot3(ax,ay,az,bx,by,bz)
  %8471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8472 = extractvalue %dx.types.CBufRet.i32 %8471, 1
  %8473 = and i32 %8472, 1
  %8474 = icmp ne i32 %8473, 0
  %8475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8476 = extractvalue %dx.types.CBufRet.f32 %8475, 2
  %8477 = fcmp fast ogt float %8476, 0.000000e+00
  %8478 = and i1 %8474, %8477
  br i1 %8478, label %8479, label %8885, !dx.controlflow.hints !120

; <label>:8479                                    ; preds = %8434
  %8480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8481 = extractvalue %dx.types.CBufRet.f32 %8480, 3
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 2
  %8484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8485 = extractvalue %dx.types.CBufRet.f32 %8484, 2
  %8486 = fsub fast float %8483, %8485
  %8487 = and i32 %8472, 2
  %8488 = extractvalue %dx.types.CBufRet.i32 %8471, 0
  %8489 = call i32 @dx.op.binary.i32(i32 40, i32 %8488, i32 3)  ; UMin(a,b)
  %8490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8491 = extractvalue %dx.types.CBufRet.f32 %8490, 0
  %8492 = extractvalue %dx.types.CBufRet.f32 %8490, 1
  %8493 = extractvalue %dx.types.CBufRet.f32 %8484, 0
  %8494 = extractvalue %dx.types.CBufRet.f32 %8484, 1
  %8495 = fsub fast float %8491, %8493
  %8496 = fsub fast float %8492, %8494
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 0
  %8499 = fcmp fast ogt float %8498, 0.000000e+00
  %8500 = fsub fast float -0.000000e+00, %8495
  %8501 = fsub fast float -0.000000e+00, %8496
  %8502 = call float @dx.op.dot2.f32(i32 54, float %8466, float %8467, float %8466, float %8467)  ; Dot2(ax,ay,bx,by)
  %8503 = call float @dx.op.dot2.f32(i32 54, float %8466, float %8467, float %8500, float %8501)  ; Dot2(ax,ay,bx,by)
  %8504 = fmul fast float %8503, 2.000000e+00
  %8505 = call float @dx.op.dot2.f32(i32 54, float %8500, float %8501, float %8500, float %8501)  ; Dot2(ax,ay,bx,by)
  %8506 = fmul fast float %8498, %8498
  %8507 = fsub fast float %8505, %8506
  %8508 = fmul fast float %8504, %8504
  %8509 = fmul fast float %8502, 4.000000e+00
  %8510 = fmul fast float %8509, %8507
  %8511 = fsub fast float %8508, %8510
  %8512 = fcmp fast ogt float %8511, 0.000000e+00
  br i1 %8512, label %8513, label %8528

; <label>:8513                                    ; preds = %8479
  %8514 = fcmp fast ogt float %8504, 0.000000e+00
  %8515 = call float @dx.op.unary.f32(i32 24, float %8511)  ; Sqrt(value)
  %8516 = fsub fast float -0.000000e+00, %8515
  %8517 = select i1 %8514, float %8515, float %8516
  %8518 = fadd fast float %8517, %8504
  %8519 = fmul float %8518, -5.000000e-01
  %8520 = fdiv fast float %8519, %8502
  %8521 = call float @dx.op.binary.f32(i32 35, float %8520, float 0.000000e+00)  ; FMax(a,b)
  %8522 = call float @dx.op.binary.f32(i32 36, float %8465, float %8521)  ; FMin(a,b)
  %8523 = fdiv fast float %8507, %8519
  %8524 = call float @dx.op.binary.f32(i32 35, float %8523, float 0.000000e+00)  ; FMax(a,b)
  %8525 = call float @dx.op.binary.f32(i32 36, float %8465, float %8524)  ; FMin(a,b)
  %8526 = call float @dx.op.binary.f32(i32 36, float %8522, float %8525)  ; FMin(a,b)
  %8527 = call float @dx.op.binary.f32(i32 35, float %8522, float %8525)  ; FMax(a,b)
  br label %8528

; <label>:8528                                    ; preds = %8513, %8479
  %8529 = phi float [ %8527, %8513 ], [ -1.000000e+00, %8479 ]
  %8530 = phi float [ %8526, %8513 ], [ -1.000000e+00, %8479 ]
  %8531 = phi i1 [ true, %8513 ], [ false, %8479 ]
  %8532 = and i1 %8499, %8531
  br i1 %8532, label %8533, label %8535

; <label>:8533                                    ; preds = %8528
  %8534 = fcmp fast oeq float %8530, %8529
  br i1 %8534, label %8838, label %8536

; <label>:8535                                    ; preds = %8528
  br i1 %8499, label %8838, label %8536

; <label>:8536                                    ; preds = %8535, %8533
  %8537 = phi float [ %8465, %8535 ], [ %8529, %8533 ]
  %8538 = phi float [ 0.000000e+00, %8535 ], [ %8530, %8533 ]
  %8539 = icmp ne i32 %8487, 0
  %8540 = fmul fast float %8537, %8468
  %8541 = fadd fast float %8540, %8481
  %8542 = fmul fast float %8541, %8537
  %8543 = select i1 %8539, float 0.000000e+00, float %8542
  %8544 = fcmp fast oeq float %8468, 0.000000e+00
  %8545 = fdiv fast float %8486, %8468
  %8546 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8545)  ; FMax(a,b)
  %8547 = select i1 %8544, float %8537, float %8546
  %8548 = call float @dx.op.binary.f32(i32 36, float %8537, float %8547)  ; FMin(a,b)
  %8549 = fcmp fast ogt float %8468, 0.000000e+00
  %8550 = fcmp fast olt float %8486, 0.000000e+00
  br i1 %8549, label %8551, label %8608

; <label>:8551                                    ; preds = %8536
  %8552 = icmp eq i32 %8487, 0
  br i1 %8550, label %8553, label %8597

; <label>:8553                                    ; preds = %8551
  %8554 = select i1 %8552, float %8537, float 0.000000e+00
  %8555 = fsub fast float -0.000000e+00, %8554
  %8556 = call float @dx.op.unary.f32(i32 6, float %8555)  ; FAbs(value)
  %8557 = fmul fast float %8554, %8468
  %8558 = fadd fast float %8557, %8481
  %8559 = fmul fast float %8556, %8558
  %8560 = fsub fast float %8543, %8559
  %8561 = fsub fast float %8537, %8556
  %8562 = select i1 %8552, float %8561, float 0.000000e+00
  %8563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8564 = extractvalue %dx.types.CBufRet.f32 %8563, 0
  %8565 = extractvalue %dx.types.CBufRet.f32 %8563, 1
  %8566 = extractvalue %dx.types.CBufRet.f32 %8563, 2
  %8567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8568 = extractvalue %dx.types.CBufRet.f32 %8567, 0
  %8569 = extractvalue %dx.types.CBufRet.f32 %8567, 1
  %8570 = extractvalue %dx.types.CBufRet.f32 %8567, 2
  %8571 = extractvalue %dx.types.CBufRet.f32 %8567, 3
  %8572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8573 = extractvalue %dx.types.CBufRet.f32 %8572, 3
  %8574 = call float @dx.op.binary.f32(i32 36, float %8560, float %8573)  ; FMin(a,b)
  %8575 = fmul fast float %8571, %8562
  %8576 = call float @dx.op.unary.f32(i32 7, float %8575)  ; Saturate(value)
  %8577 = fsub fast float %8568, %8564
  %8578 = fsub fast float %8569, %8565
  %8579 = fsub fast float %8570, %8566
  %8580 = fmul fast float %8576, %8577
  %8581 = fmul fast float %8576, %8578
  %8582 = fmul fast float %8576, %8579
  %8583 = fadd fast float %8580, %8564
  %8584 = fadd fast float %8581, %8565
  %8585 = fadd fast float %8582, %8566
  %8586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8587 = extractvalue %dx.types.CBufRet.f32 %8586, 0
  %8588 = extractvalue %dx.types.CBufRet.f32 %8586, 1
  %8589 = fadd fast float %8588, %8587
  %8590 = call float @dx.op.unary.f32(i32 7, float %8589)  ; Saturate(value)
  %8591 = extractvalue %dx.types.CBufRet.f32 %8586, 2
  %8592 = extractvalue %dx.types.CBufRet.f32 %8586, 3
  %8593 = fadd fast float %8592, %8591
  %8594 = call float @dx.op.unary.f32(i32 7, float %8593)  ; Saturate(value)
  %8595 = fmul fast float %8590, %8574
  %8596 = fmul fast float %8595, %8594
  br label %8838

; <label>:8597                                    ; preds = %8551
  br i1 %8552, label %8598, label %8619

; <label>:8598                                    ; preds = %8597
  %8599 = call float @dx.op.binary.f32(i32 36, float %8548, float %8538)  ; FMin(a,b)
  %8600 = fsub fast float %8548, %8599
  %8601 = fsub fast float %8600, %8537
  %8602 = call float @dx.op.unary.f32(i32 6, float %8601)  ; FAbs(value)
  %8603 = fadd fast float %8600, %8537
  %8604 = fmul fast float %8603, %8468
  %8605 = fadd fast float %8604, %8481
  %8606 = fmul fast float %8605, %8602
  %8607 = fsub fast float %8543, %8606
  br label %8619

; <label>:8608                                    ; preds = %8536
  br i1 %8550, label %8609, label %8619

; <label>:8609                                    ; preds = %8608
  %8610 = call float @dx.op.binary.f32(i32 35, float %8538, float %8548)  ; FMax(a,b)
  %8611 = icmp eq i32 %8487, 0
  %8612 = select i1 %8611, float %8548, float 0.000000e+00
  %8613 = fsub fast float -0.000000e+00, %8612
  %8614 = call float @dx.op.unary.f32(i32 6, float %8613)  ; FAbs(value)
  %8615 = fmul fast float %8612, %8468
  %8616 = fadd fast float %8615, %8481
  %8617 = fmul fast float %8614, %8616
  %8618 = fsub fast float %8543, %8617
  br label %8619

; <label>:8619                                    ; preds = %8609, %8608, %8598, %8597
  %8620 = phi float [ %8538, %8597 ], [ %8538, %8598 ], [ %8610, %8609 ], [ %8538, %8608 ]
  %8621 = phi float [ 0.000000e+00, %8597 ], [ %8602, %8598 ], [ %8614, %8609 ], [ 0.000000e+00, %8608 ]
  %8622 = phi float [ %8543, %8597 ], [ %8607, %8598 ], [ %8618, %8609 ], [ %8543, %8608 ]
  %8623 = phi float [ %8548, %8597 ], [ %8548, %8598 ], [ %8537, %8609 ], [ %8537, %8608 ]
  %8624 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %8624, align 4, !tbaa !110, !noalias !121
  %8625 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %8625, align 4, !tbaa !110, !noalias !121
  %8626 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %8626, align 4, !tbaa !110, !noalias !121
  %8627 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %8627, align 4, !tbaa !110, !noalias !121
  %8628 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %8628, align 4, !tbaa !110, !noalias !121
  %8629 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %8629, align 4, !tbaa !110, !noalias !121
  %8630 = icmp sgt i32 %8489, 0
  br i1 %8630, label %8631, label %8692

; <label>:8631                                    ; preds = %8619
  br label %8632

; <label>:8632                                    ; preds = %8681, %8631
  %8633 = phi i32 [ %8682, %8681 ], [ 0, %8631 ]
  %8634 = phi i32 [ %8683, %8681 ], [ 0, %8631 ]
  %8635 = add nuw i32 %8634, 171
  %8636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %8635)  ; CBufferLoadLegacy(handle,regIndex)
  %8637 = extractvalue %dx.types.CBufRet.f32 %8636, 0
  %8638 = extractvalue %dx.types.CBufRet.f32 %8636, 1
  %8639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8640 = extractvalue %dx.types.CBufRet.f32 %8639, 0
  %8641 = extractvalue %dx.types.CBufRet.f32 %8639, 1
  %8642 = fsub fast float %8637, %8640
  %8643 = fsub fast float %8638, %8641
  %8644 = extractvalue %dx.types.CBufRet.f32 %8636, 2
  %8645 = fsub fast float -0.000000e+00, %8642
  %8646 = fsub fast float -0.000000e+00, %8643
  %8647 = call float @dx.op.dot2.f32(i32 54, float %8466, float %8467, float %8645, float %8646)  ; Dot2(ax,ay,bx,by)
  %8648 = fmul fast float %8647, 2.000000e+00
  %8649 = call float @dx.op.dot2.f32(i32 54, float %8645, float %8646, float %8645, float %8646)  ; Dot2(ax,ay,bx,by)
  %8650 = fmul fast float %8644, %8644
  %8651 = fsub fast float %8649, %8650
  %8652 = fmul fast float %8648, %8648
  %8653 = fmul fast float %8509, %8651
  %8654 = fsub fast float %8652, %8653
  %8655 = fcmp fast ogt float %8654, 0.000000e+00
  br i1 %8655, label %8656, label %8671

; <label>:8656                                    ; preds = %8632
  %8657 = fcmp fast ogt float %8648, 0.000000e+00
  %8658 = call float @dx.op.unary.f32(i32 24, float %8654)  ; Sqrt(value)
  %8659 = fsub fast float -0.000000e+00, %8658
  %8660 = select i1 %8657, float %8658, float %8659
  %8661 = fadd fast float %8660, %8648
  %8662 = fmul float %8661, -5.000000e-01
  %8663 = fdiv fast float %8662, %8502
  %8664 = call float @dx.op.binary.f32(i32 35, float %8663, float 0.000000e+00)  ; FMax(a,b)
  %8665 = call float @dx.op.binary.f32(i32 36, float %8537, float %8664)  ; FMin(a,b)
  %8666 = fdiv fast float %8651, %8662
  %8667 = call float @dx.op.binary.f32(i32 35, float %8666, float 0.000000e+00)  ; FMax(a,b)
  %8668 = call float @dx.op.binary.f32(i32 36, float %8537, float %8667)  ; FMin(a,b)
  %8669 = call float @dx.op.binary.f32(i32 36, float %8665, float %8668)  ; FMin(a,b)
  %8670 = call float @dx.op.binary.f32(i32 35, float %8665, float %8668)  ; FMax(a,b)
  br label %8671

; <label>:8671                                    ; preds = %8656, %8632
  %8672 = phi float [ %8670, %8656 ], [ -1.000000e+00, %8632 ]
  %8673 = phi float [ %8669, %8656 ], [ -1.000000e+00, %8632 ]
  %8674 = phi i1 [ true, %8656 ], [ false, %8632 ]
  br i1 %8674, label %8675, label %8681

; <label>:8675                                    ; preds = %8671
  %8676 = call float @dx.op.binary.f32(i32 35, float %8620, float %8673)  ; FMax(a,b)
  %8677 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8634
  store float %8676, float* %8677, align 4, !tbaa !110, !noalias !121
  %8678 = call float @dx.op.binary.f32(i32 35, float %8620, float %8672)  ; FMax(a,b)
  %8679 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8634
  store float %8678, float* %8679, align 4, !tbaa !110, !noalias !121
  %8680 = add nsw i32 %8633, 1
  br label %8681

; <label>:8681                                    ; preds = %8675, %8671
  %8682 = phi i32 [ %8680, %8675 ], [ %8633, %8671 ]
  %8683 = add nuw nsw i32 %8634, 1
  %8684 = icmp eq i32 %8683, %8489
  br i1 %8684, label %8685, label %8632

; <label>:8685                                    ; preds = %8681
  %8686 = load float, float* %8626, align 4, !tbaa !110, !alias.scope !137, !noalias !140
  %8687 = load float, float* %8625, align 4, !tbaa !110, !alias.scope !143, !noalias !144
  %8688 = load float, float* %8624, align 4, !tbaa !110, !alias.scope !145, !noalias !146
  %8689 = load float, float* %8629, align 4, !tbaa !110, !alias.scope !147, !noalias !150
  %8690 = load float, float* %8628, align 4, !tbaa !110, !alias.scope !153, !noalias !154
  %8691 = load float, float* %8627, align 4, !tbaa !110, !alias.scope !155, !noalias !156
  br label %8692

; <label>:8692                                    ; preds = %8685, %8619
  %8693 = phi float [ -1.000000e+00, %8619 ], [ %8691, %8685 ]
  %8694 = phi float [ -1.000000e+00, %8619 ], [ %8690, %8685 ]
  %8695 = phi float [ -1.000000e+00, %8619 ], [ %8689, %8685 ]
  %8696 = phi float [ -1.000000e+00, %8619 ], [ %8688, %8685 ]
  %8697 = phi float [ -1.000000e+00, %8619 ], [ %8687, %8685 ]
  %8698 = phi float [ -1.000000e+00, %8619 ], [ %8686, %8685 ]
  %8699 = phi i32 [ 0, %8619 ], [ %8682, %8685 ]
  %8700 = call float @dx.op.binary.f32(i32 36, float %8697, float %8698)  ; FMin(a,b)
  %8701 = call float @dx.op.binary.f32(i32 36, float %8696, float %8700)  ; FMin(a,b)
  %8702 = call float @dx.op.binary.f32(i32 35, float %8696, float %8697)  ; FMax(a,b)
  %8703 = call float @dx.op.binary.f32(i32 36, float %8702, float %8698)  ; FMin(a,b)
  %8704 = call float @dx.op.binary.f32(i32 36, float %8696, float %8697)  ; FMin(a,b)
  %8705 = call float @dx.op.binary.f32(i32 35, float %8704, float %8703)  ; FMax(a,b)
  %8706 = call float @dx.op.binary.f32(i32 35, float %8697, float %8698)  ; FMax(a,b)
  %8707 = call float @dx.op.binary.f32(i32 35, float %8696, float %8706)  ; FMax(a,b)
  store float %8701, float* %8624, align 4, !tbaa !110, !alias.scope !145, !noalias !146
  store float %8705, float* %8625, align 4, !tbaa !110, !alias.scope !143, !noalias !144
  store float %8707, float* %8626, align 4, !tbaa !110, !alias.scope !137, !noalias !140
  %8708 = call float @dx.op.binary.f32(i32 36, float %8694, float %8695)  ; FMin(a,b)
  %8709 = call float @dx.op.binary.f32(i32 36, float %8693, float %8708)  ; FMin(a,b)
  %8710 = call float @dx.op.binary.f32(i32 35, float %8693, float %8694)  ; FMax(a,b)
  %8711 = call float @dx.op.binary.f32(i32 36, float %8710, float %8695)  ; FMin(a,b)
  %8712 = call float @dx.op.binary.f32(i32 36, float %8693, float %8694)  ; FMin(a,b)
  %8713 = call float @dx.op.binary.f32(i32 35, float %8712, float %8711)  ; FMax(a,b)
  %8714 = call float @dx.op.binary.f32(i32 35, float %8694, float %8695)  ; FMax(a,b)
  %8715 = call float @dx.op.binary.f32(i32 35, float %8693, float %8714)  ; FMax(a,b)
  store float %8709, float* %8627, align 4, !tbaa !110, !alias.scope !155, !noalias !156
  store float %8713, float* %8628, align 4, !tbaa !110, !alias.scope !153, !noalias !154
  store float %8715, float* %8629, align 4, !tbaa !110, !alias.scope !147, !noalias !150
  %8716 = sub nsw i32 3, %8699
  %8717 = icmp sgt i32 %8716, 2
  br i1 %8717, label %8718, label %8756

; <label>:8718                                    ; preds = %8692
  %8719 = icmp eq i32 %8487, 0
  %8720 = fsub fast float %8537, %8621
  %8721 = select i1 %8719, float %8720, float %8621
  %8722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8723 = extractvalue %dx.types.CBufRet.f32 %8722, 0
  %8724 = extractvalue %dx.types.CBufRet.f32 %8722, 1
  %8725 = extractvalue %dx.types.CBufRet.f32 %8722, 2
  %8726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8727 = extractvalue %dx.types.CBufRet.f32 %8726, 0
  %8728 = extractvalue %dx.types.CBufRet.f32 %8726, 1
  %8729 = extractvalue %dx.types.CBufRet.f32 %8726, 2
  %8730 = extractvalue %dx.types.CBufRet.f32 %8726, 3
  %8731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8732 = extractvalue %dx.types.CBufRet.f32 %8731, 3
  %8733 = call float @dx.op.binary.f32(i32 36, float %8622, float %8732)  ; FMin(a,b)
  %8734 = fmul fast float %8730, %8721
  %8735 = call float @dx.op.unary.f32(i32 7, float %8734)  ; Saturate(value)
  %8736 = fsub fast float %8727, %8723
  %8737 = fsub fast float %8728, %8724
  %8738 = fsub fast float %8729, %8725
  %8739 = fmul fast float %8735, %8736
  %8740 = fmul fast float %8735, %8737
  %8741 = fmul fast float %8735, %8738
  %8742 = fadd fast float %8739, %8723
  %8743 = fadd fast float %8740, %8724
  %8744 = fadd fast float %8741, %8725
  %8745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8746 = extractvalue %dx.types.CBufRet.f32 %8745, 0
  %8747 = extractvalue %dx.types.CBufRet.f32 %8745, 1
  %8748 = fadd fast float %8747, %8746
  %8749 = call float @dx.op.unary.f32(i32 7, float %8748)  ; Saturate(value)
  %8750 = extractvalue %dx.types.CBufRet.f32 %8745, 2
  %8751 = extractvalue %dx.types.CBufRet.f32 %8745, 3
  %8752 = fadd fast float %8751, %8750
  %8753 = call float @dx.op.unary.f32(i32 7, float %8752)  ; Saturate(value)
  %8754 = fmul fast float %8749, %8733
  %8755 = fmul fast float %8754, %8753
  br label %8838

; <label>:8756                                    ; preds = %8692
  %8757 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8716
  %8758 = load float, float* %8757, align 4, !tbaa !110, !noalias !121
  %8759 = fcmp fast olt float %8758, %8623
  %8760 = icmp sgt i32 %8699, 0
  %8761 = and i1 %8760, %8759
  br i1 %8761, label %8762, label %8799

; <label>:8762                                    ; preds = %8756
  br label %8763

; <label>:8763                                    ; preds = %8792, %8762
  %8764 = phi float [ %8793, %8792 ], [ %8621, %8762 ]
  %8765 = phi float [ %8794, %8792 ], [ %8622, %8762 ]
  %8766 = phi float [ %8774, %8792 ], [ %8758, %8762 ]
  %8767 = phi i32 [ %8771, %8792 ], [ %8716, %8762 ]
  %8768 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8767
  %8769 = load float, float* %8768, align 4, !tbaa !110, !noalias !121
  %8770 = icmp slt i32 %8767, 2
  %8771 = add nsw i32 %8767, 1
  %8772 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8771
  %8773 = load float, float* %8772, align 4, !tbaa !110, !noalias !121
  %8774 = select i1 %8770, float %8773, float %8537
  %8775 = call float @dx.op.binary.f32(i32 36, float %8774, float %8769)  ; FMin(a,b)
  %8776 = call float @dx.op.binary.f32(i32 36, float %8623, float %8775)  ; FMin(a,b)
  %8777 = icmp eq i32 %8487, 0
  %8778 = fadd fast float %8776, %8766
  %8779 = fmul fast float %8778, %8468
  %8780 = fadd fast float %8779, %8481
  br i1 %8777, label %8786, label %8781

; <label>:8781                                    ; preds = %8763
  %8782 = fsub fast float %8776, %8766
  %8783 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8782)  ; FMax(a,b)
  %8784 = fmul fast float %8783, %8780
  %8785 = fadd fast float %8784, %8765
  br label %8792

; <label>:8786                                    ; preds = %8763
  %8787 = fsub fast float %8766, %8776
  %8788 = call float @dx.op.unary.f32(i32 6, float %8787)  ; FAbs(value)
  %8789 = fadd fast float %8788, %8764
  %8790 = fmul fast float %8788, %8780
  %8791 = fsub fast float %8765, %8790
  br label %8792

; <label>:8792                                    ; preds = %8786, %8781
  %8793 = phi float [ %8783, %8781 ], [ %8789, %8786 ]
  %8794 = phi float [ %8785, %8781 ], [ %8791, %8786 ]
  %8795 = fcmp fast olt float %8774, %8623
  %8796 = icmp slt i32 %8771, 3
  %8797 = and i1 %8796, %8795
  br i1 %8797, label %8763, label %8798

; <label>:8798                                    ; preds = %8792
  br label %8799

; <label>:8799                                    ; preds = %8798, %8756
  %8800 = phi float [ %8621, %8756 ], [ %8793, %8798 ]
  %8801 = phi float [ %8622, %8756 ], [ %8794, %8798 ]
  %8802 = fsub fast float %8537, %8800
  %8803 = select i1 %8539, float %8800, float %8802
  %8804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8805 = extractvalue %dx.types.CBufRet.f32 %8804, 0
  %8806 = extractvalue %dx.types.CBufRet.f32 %8804, 1
  %8807 = extractvalue %dx.types.CBufRet.f32 %8804, 2
  %8808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8809 = extractvalue %dx.types.CBufRet.f32 %8808, 0
  %8810 = extractvalue %dx.types.CBufRet.f32 %8808, 1
  %8811 = extractvalue %dx.types.CBufRet.f32 %8808, 2
  %8812 = extractvalue %dx.types.CBufRet.f32 %8808, 3
  %8813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8814 = extractvalue %dx.types.CBufRet.f32 %8813, 3
  %8815 = call float @dx.op.binary.f32(i32 36, float %8801, float %8814)  ; FMin(a,b)
  %8816 = fmul fast float %8812, %8803
  %8817 = call float @dx.op.unary.f32(i32 7, float %8816)  ; Saturate(value)
  %8818 = fsub fast float %8809, %8805
  %8819 = fsub fast float %8810, %8806
  %8820 = fsub fast float %8811, %8807
  %8821 = fmul fast float %8817, %8818
  %8822 = fmul fast float %8817, %8819
  %8823 = fmul fast float %8817, %8820
  %8824 = fadd fast float %8821, %8805
  %8825 = fadd fast float %8822, %8806
  %8826 = fadd fast float %8823, %8807
  %8827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8828 = extractvalue %dx.types.CBufRet.f32 %8827, 0
  %8829 = extractvalue %dx.types.CBufRet.f32 %8827, 1
  %8830 = fadd fast float %8829, %8828
  %8831 = call float @dx.op.unary.f32(i32 7, float %8830)  ; Saturate(value)
  %8832 = extractvalue %dx.types.CBufRet.f32 %8827, 2
  %8833 = extractvalue %dx.types.CBufRet.f32 %8827, 3
  %8834 = fadd fast float %8833, %8832
  %8835 = call float @dx.op.unary.f32(i32 7, float %8834)  ; Saturate(value)
  %8836 = fmul fast float %8831, %8815
  %8837 = fmul fast float %8836, %8835
  br label %8838

; <label>:8838                                    ; preds = %8799, %8718, %8553, %8535, %8533
  %8839 = phi float [ %8562, %8553 ], [ %8721, %8718 ], [ %8803, %8799 ], [ 0.000000e+00, %8533 ], [ 0.000000e+00, %8535 ]
  %8840 = phi float [ %8596, %8553 ], [ %8755, %8718 ], [ %8837, %8799 ], [ 0.000000e+00, %8533 ], [ 0.000000e+00, %8535 ]
  %8841 = phi float [ %8583, %8553 ], [ %8742, %8718 ], [ %8824, %8799 ], [ 0.000000e+00, %8533 ], [ 0.000000e+00, %8535 ]
  %8842 = phi float [ %8584, %8553 ], [ %8743, %8718 ], [ %8825, %8799 ], [ 0.000000e+00, %8533 ], [ 0.000000e+00, %8535 ]
  %8843 = phi float [ %8585, %8553 ], [ %8744, %8718 ], [ %8826, %8799 ], [ 0.000000e+00, %8533 ], [ 0.000000e+00, %8535 ]
  %8844 = fmul fast float %8476, %8840
  %8845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8846 = extractvalue %dx.types.CBufRet.f32 %8845, 2
  %8847 = fsub fast float %8483, %8846
  %8848 = fcmp fast olt float %8844, -2.000000e+01
  %8849 = call float @dx.op.unary.f32(i32 21, float %8844)  ; Exp(value)
  %8850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8851 = extractvalue %dx.types.CBufRet.f32 %8850, 2
  %8852 = extractvalue %dx.types.CBufRet.f32 %8850, 3
  %8853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8854 = extractvalue %dx.types.CBufRet.f32 %8853, 2
  %8855 = fmul fast float %8852, %8847
  %8856 = call float @dx.op.unary.f32(i32 7, float %8855)  ; Saturate(value)
  %8857 = fsub fast float 1.000000e+00, %8856
  %8858 = fmul fast float %8468, 5.000000e-01
  %8859 = fadd fast float %8858, 5.000000e-01
  %8860 = call float @dx.op.unary.f32(i32 7, float %8859)  ; Saturate(value)
  %8861 = fsub fast float 1.000000e+00, %8860
  %8862 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8857)  ; FMax(a,b)
  %8863 = fdiv fast float %8861, %8862
  %8864 = fsub fast float %8847, %8425
  %8865 = call float @dx.op.unary.f32(i32 6, float %8864)  ; FAbs(value)
  %8866 = fmul fast float %8865, %8851
  %8867 = call float @dx.op.unary.f32(i32 7, float %8863)  ; Saturate(value)
  %8868 = fsub fast float 1.000000e+00, %8866
  %8869 = fmul fast float %8868, %8867
  %8870 = fadd fast float %8869, %8866
  %8871 = fmul fast float %8854, %8847
  %8872 = call float @dx.op.unary.f32(i32 7, float %8871)  ; Saturate(value)
  %8873 = fsub fast float 1.000000e+00, %8870
  %8874 = fmul fast float %8873, %8872
  %8875 = fadd fast float %8874, %8870
  %8876 = call float @dx.op.unary.f32(i32 7, float %8875)  ; Saturate(value)
  %8877 = fadd fast float %8849, -1.000000e+00
  %8878 = select i1 %8848, float -1.000000e+00, float %8877
  %8879 = fmul fast float %8876, %8878
  %8880 = fadd fast float %8879, 1.000000e+00
  %8881 = fsub fast float -0.000000e+00, %8879
  %8882 = fmul fast float %8841, %8881
  %8883 = fmul fast float %8842, %8881
  %8884 = fmul fast float %8843, %8881
  br label %8885

; <label>:8885                                    ; preds = %8838, %8434
  %8886 = phi float [ %8839, %8838 ], [ 0.000000e+00, %8434 ]
  %8887 = phi float [ %8880, %8838 ], [ 1.000000e+00, %8434 ]
  %8888 = phi float [ %8882, %8838 ], [ 0.000000e+00, %8434 ]
  %8889 = phi float [ %8883, %8838 ], [ 0.000000e+00, %8434 ]
  %8890 = phi float [ %8884, %8838 ], [ 0.000000e+00, %8434 ]
  %8891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8892 = extractvalue %dx.types.CBufRet.f32 %8891, 1
  %8893 = fsub fast float 1.000000e+00, %8887
  %8894 = fmul fast float %8893, %8469
  %8895 = fmul fast float %8894, %8892
  %8896 = fsub fast float %8469, %8895
  br i1 %8462, label %8897, label %8926, !dx.controlflow.hints !157

; <label>:8897                                    ; preds = %8885
  %8898 = fmul fast float %8470, %8459
  %8899 = fadd fast float %8898, %8460
  %8900 = call float @dx.op.unary.f32(i32 7, float %8899)  ; Saturate(value)
  %8901 = fmul fast float %8441, %8896
  %8902 = fsub fast float -0.000000e+00, %8901
  %8903 = fmul fast float %8442, %8896
  %8904 = fsub fast float -0.000000e+00, %8903
  %8905 = call float @dx.op.unary.f32(i32 21, float %8902)  ; Exp(value)
  %8906 = call float @dx.op.unary.f32(i32 21, float %8904)  ; Exp(value)
  %8907 = call float @dx.op.binary.f32(i32 35, float %8449, float %8905)  ; FMax(a,b)
  %8908 = call float @dx.op.binary.f32(i32 35, float %8449, float %8906)  ; FMax(a,b)
  %8909 = fsub fast float %8908, %8907
  %8910 = fmul fast float %8909, %8900
  %8911 = fadd fast float %8910, %8907
  %8912 = call float @dx.op.unary.f32(i32 7, float %8911)  ; Saturate(value)
  %8913 = fsub fast float %8446, %8451
  %8914 = fsub fast float %8447, %8452
  %8915 = fsub fast float %8448, %8453
  %8916 = fmul fast float %8900, %8913
  %8917 = fmul fast float %8900, %8914
  %8918 = fmul fast float %8900, %8915
  %8919 = fadd fast float %8916, %8451
  %8920 = fadd fast float %8917, %8452
  %8921 = fadd fast float %8918, %8453
  %8922 = fsub fast float 1.000000e+00, %8912
  %8923 = fmul fast float %8922, %8919
  %8924 = fmul fast float %8922, %8920
  %8925 = fmul fast float %8922, %8921
  br label %8985

; <label>:8926                                    ; preds = %8885
  %8927 = fmul fast float %8896, %8458
  %8928 = call float @dx.op.unary.f32(i32 7, float %8927)  ; Saturate(value)
  %8929 = fsub fast float 2.000000e+00, %8928
  %8930 = fmul fast float %8928, 9.921875e-01
  %8931 = fmul fast float %8930, %8929
  %8932 = fadd fast float %8931, 3.906250e-03
  %8933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %8932, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8934 = extractvalue %dx.types.ResRet.f32 %8933, 0
  %8935 = fsub fast float %8928, %8934
  %8936 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8935)  ; FMax(a,b)
  %8937 = fmul fast float %8444, %8425
  %8938 = call float @dx.op.unary.f32(i32 6, float %8937)  ; FAbs(value)
  %8939 = fcmp fast ogt float %8938, 0x3EB0C6F7A0000000
  br i1 %8939, label %8940, label %8946, !dx.controlflow.hints !158

; <label>:8940                                    ; preds = %8926
  %8941 = fmul fast float %8937, 0xBFF7154760000000
  %8942 = call float @dx.op.unary.f32(i32 21, float %8941)  ; Exp(value)
  %8943 = fsub fast float 1.000000e+00, %8942
  %8944 = fdiv fast float %8943, %8937
  %8945 = fmul fast float %8944, %8454
  br label %8946

; <label>:8946                                    ; preds = %8940, %8926
  %8947 = phi float [ %8945, %8940 ], [ %8454, %8926 ]
  %8948 = fadd fast float %8947, %8456
  %8949 = fmul fast float %8948, %8936
  %8950 = fmul fast float %8441, %8949
  %8951 = fsub fast float -0.000000e+00, %8950
  %8952 = fmul fast float %8442, %8949
  %8953 = fsub fast float -0.000000e+00, %8952
  %8954 = fmul fast float %8443, %8949
  %8955 = fsub fast float -0.000000e+00, %8954
  %8956 = call float @dx.op.unary.f32(i32 21, float %8951)  ; Exp(value)
  %8957 = call float @dx.op.unary.f32(i32 21, float %8953)  ; Exp(value)
  %8958 = call float @dx.op.unary.f32(i32 21, float %8955)  ; Exp(value)
  %8959 = fmul fast float %8470, %8470
  %8960 = fadd fast float %8959, 1.000000e+00
  %8961 = fmul fast float %8960, 0x3FAE8EC8A0000000
  %8962 = fmul fast float %8961, %8451
  %8963 = fmul fast float %8961, %8452
  %8964 = fmul fast float %8961, %8453
  %8965 = fmul fast float %8470, %8449
  %8966 = fsub fast float 1.000000e+00, %8965
  %8967 = fmul fast float %8449, %8449
  %8968 = fsub fast float 1.000000e+00, %8967
  %8969 = fmul fast float %8968, 0x3FB45F3060000000
  %8970 = fmul fast float %8966, %8966
  %8971 = fdiv fast float 1.000000e+00, %8970
  %8972 = fmul fast float %8969, %8971
  %8973 = fmul fast float %8972, %8446
  %8974 = fmul fast float %8972, %8447
  %8975 = fmul fast float %8972, %8448
  %8976 = fadd fast float %8973, %8962
  %8977 = fadd fast float %8974, %8963
  %8978 = fadd fast float %8975, %8964
  %8979 = fsub fast float 1.000000e+00, %8956
  %8980 = fsub fast float 1.000000e+00, %8957
  %8981 = fsub fast float 1.000000e+00, %8958
  %8982 = fmul fast float %8976, %8979
  %8983 = fmul fast float %8977, %8980
  %8984 = fmul fast float %8978, %8981
  br label %8985

; <label>:8985                                    ; preds = %8946, %8897
  %8986 = phi float [ %8923, %8897 ], [ %8982, %8946 ]
  %8987 = phi float [ %8924, %8897 ], [ %8983, %8946 ]
  %8988 = phi float [ %8925, %8897 ], [ %8984, %8946 ]
  %8989 = phi float [ %8912, %8897 ], [ %8956, %8946 ]
  %8990 = phi float [ %8912, %8897 ], [ %8957, %8946 ]
  %8991 = phi float [ %8912, %8897 ], [ %8958, %8946 ]
  br i1 %8478, label %8992, label %9190, !dx.controlflow.hints !159

; <label>:8992                                    ; preds = %8985
  %8993 = extractvalue %dx.types.CBufRet.f32 %8891, 0
  %8994 = fmul fast float %8993, %8893
  %8995 = fsub fast float %8888, %8986
  %8996 = fsub fast float %8889, %8987
  %8997 = fsub fast float %8890, %8988
  %8998 = fmul fast float %8994, %8995
  %8999 = fmul fast float %8994, %8996
  %9000 = fmul fast float %8994, %8997
  %9001 = fadd fast float %8998, %8986
  %9002 = fadd fast float %8999, %8987
  %9003 = fadd fast float %9000, %8988
  %9004 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8989)  ; FMax(a,b)
  %9005 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8990)  ; FMax(a,b)
  %9006 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8991)  ; FMax(a,b)
  %9007 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8887)  ; FMax(a,b)
  %9008 = call float @dx.op.binary.f32(i32 35, float %8886, float %8896)  ; FMax(a,b)
  %9009 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9008)  ; FMax(a,b)
  %9010 = fdiv fast float %8886, %9009
  %9011 = call float @dx.op.unary.f32(i32 7, float %9010)  ; Saturate(value)
  %9012 = fdiv fast float %8896, %9009
  %9013 = call float @dx.op.unary.f32(i32 7, float %9012)  ; Saturate(value)
  %9014 = fcmp fast une float %9007, 1.000000e+00
  br i1 %9014, label %9015, label %9028, !dx.controlflow.hints !160

; <label>:9015                                    ; preds = %8992
  %9016 = call float @dx.op.unary.f32(i32 23, float %9007)  ; Log(value)
  %9017 = fmul fast float %9016, 0x3FE62E4300000000
  %9018 = fmul fast float %8888, %9017
  %9019 = fsub fast float -0.000000e+00, %9018
  %9020 = fmul fast float %8889, %9017
  %9021 = fsub fast float -0.000000e+00, %9020
  %9022 = fmul fast float %8890, %9017
  %9023 = fsub fast float -0.000000e+00, %9022
  %9024 = fsub fast float 1.000000e+00, %9007
  %9025 = fdiv fast float %9019, %9024
  %9026 = fdiv fast float %9021, %9024
  %9027 = fdiv fast float %9023, %9024
  br label %9028

; <label>:9028                                    ; preds = %9015, %8992
  %9029 = phi float [ %9025, %9015 ], [ %8888, %8992 ]
  %9030 = phi float [ %9026, %9015 ], [ %8889, %8992 ]
  %9031 = phi float [ %9027, %9015 ], [ %8890, %8992 ]
  %9032 = phi float [ %9017, %9015 ], [ 0.000000e+00, %8992 ]
  %9033 = fcmp fast une float %9004, 1.000000e+00
  br i1 %9033, label %9034, label %9041, !dx.controlflow.hints !161

; <label>:9034                                    ; preds = %9028
  %9035 = call float @dx.op.unary.f32(i32 23, float %9004)  ; Log(value)
  %9036 = fmul fast float %9035, 0x3FE62E4300000000
  %9037 = fmul fast float %9001, %9036
  %9038 = fsub fast float -0.000000e+00, %9037
  %9039 = fsub fast float 1.000000e+00, %9004
  %9040 = fdiv fast float %9038, %9039
  br label %9041

; <label>:9041                                    ; preds = %9034, %9028
  %9042 = phi float [ %9040, %9034 ], [ %9001, %9028 ]
  %9043 = phi float [ %9036, %9034 ], [ 0.000000e+00, %9028 ]
  %9044 = fcmp fast une float %9005, 1.000000e+00
  br i1 %9044, label %9045, label %9052, !dx.controlflow.hints !161

; <label>:9045                                    ; preds = %9041
  %9046 = call float @dx.op.unary.f32(i32 23, float %9005)  ; Log(value)
  %9047 = fmul fast float %9046, 0x3FE62E4300000000
  %9048 = fmul fast float %9002, %9047
  %9049 = fsub fast float -0.000000e+00, %9048
  %9050 = fsub fast float 1.000000e+00, %9005
  %9051 = fdiv fast float %9049, %9050
  br label %9052

; <label>:9052                                    ; preds = %9045, %9041
  %9053 = phi float [ %9051, %9045 ], [ %9002, %9041 ]
  %9054 = phi float [ %9047, %9045 ], [ 0.000000e+00, %9041 ]
  %9055 = fcmp fast une float %9006, 1.000000e+00
  br i1 %9055, label %9056, label %9063, !dx.controlflow.hints !161

; <label>:9056                                    ; preds = %9052
  %9057 = call float @dx.op.unary.f32(i32 23, float %9006)  ; Log(value)
  %9058 = fmul fast float %9057, 0x3FE62E4300000000
  %9059 = fmul fast float %9003, %9058
  %9060 = fsub fast float -0.000000e+00, %9059
  %9061 = fsub fast float 1.000000e+00, %9006
  %9062 = fdiv fast float %9060, %9061
  br label %9063

; <label>:9063                                    ; preds = %9056, %9052
  %9064 = phi float [ %9062, %9056 ], [ %9003, %9052 ]
  %9065 = phi float [ %9058, %9056 ], [ 0.000000e+00, %9052 ]
  %9066 = fmul fast float %9029, %9013
  %9067 = fmul fast float %9030, %9013
  %9068 = fmul fast float %9031, %9013
  %9069 = fmul fast float %9032, %9013
  %9070 = fmul fast float %9042, %9011
  %9071 = fmul fast float %9053, %9011
  %9072 = fmul fast float %9064, %9011
  %9073 = fmul fast float %9043, %9011
  %9074 = fmul fast float %9054, %9011
  %9075 = fmul fast float %9065, %9011
  %9076 = fadd fast float %9070, %9066
  %9077 = fadd fast float %9071, %9067
  %9078 = fadd fast float %9072, %9068
  %9079 = fadd fast float %9073, %9069
  %9080 = fadd fast float %9074, %9069
  %9081 = fadd fast float %9075, %9069
  %9082 = fcmp fast une float %9079, 0.000000e+00
  br i1 %9082, label %9083, label %9090, !dx.controlflow.hints !162

; <label>:9083                                    ; preds = %9063
  %9084 = fmul fast float %9079, 0x3FF7154760000000
  %9085 = call float @dx.op.unary.f32(i32 21, float %9084)  ; Exp(value)
  %9086 = fsub fast float 1.000000e+00, %9085
  %9087 = fmul fast float %9076, %9086
  %9088 = fsub fast float -0.000000e+00, %9087
  %9089 = fdiv fast float %9088, %9079
  br label %9090

; <label>:9090                                    ; preds = %9083, %9063
  %9091 = phi float [ %9085, %9083 ], [ 1.000000e+00, %9063 ]
  %9092 = phi float [ %9089, %9083 ], [ %9076, %9063 ]
  %9093 = fcmp fast une float %9080, 0.000000e+00
  br i1 %9093, label %9094, label %9101, !dx.controlflow.hints !162

; <label>:9094                                    ; preds = %9090
  %9095 = fmul fast float %9080, 0x3FF7154760000000
  %9096 = call float @dx.op.unary.f32(i32 21, float %9095)  ; Exp(value)
  %9097 = fsub fast float 1.000000e+00, %9096
  %9098 = fmul fast float %9077, %9097
  %9099 = fsub fast float -0.000000e+00, %9098
  %9100 = fdiv fast float %9099, %9080
  br label %9101

; <label>:9101                                    ; preds = %9094, %9090
  %9102 = phi float [ %9096, %9094 ], [ 1.000000e+00, %9090 ]
  %9103 = phi float [ %9100, %9094 ], [ %9077, %9090 ]
  %9104 = fcmp fast une float %9081, 0.000000e+00
  br i1 %9104, label %9105, label %9112, !dx.controlflow.hints !162

; <label>:9105                                    ; preds = %9101
  %9106 = fmul fast float %9081, 0x3FF7154760000000
  %9107 = call float @dx.op.unary.f32(i32 21, float %9106)  ; Exp(value)
  %9108 = fsub fast float 1.000000e+00, %9107
  %9109 = fmul fast float %9078, %9108
  %9110 = fsub fast float -0.000000e+00, %9109
  %9111 = fdiv fast float %9110, %9081
  br label %9112

; <label>:9112                                    ; preds = %9105, %9101
  %9113 = phi float [ %9107, %9105 ], [ 1.000000e+00, %9101 ]
  %9114 = phi float [ %9111, %9105 ], [ %9078, %9101 ]
  %9115 = fcmp fast ogt float %9011, %9013
  br i1 %9115, label %9116, label %9136

; <label>:9116                                    ; preds = %9112
  %9117 = fsub fast float 1.000000e+00, %9013
  %9118 = fmul fast float %9029, %9117
  %9119 = fmul fast float %9030, %9117
  %9120 = fmul fast float %9031, %9117
  %9121 = fmul fast float %9032, %9117
  %9122 = fcmp fast une float %9121, 0.000000e+00
  br i1 %9122, label %9123, label %9174, !dx.controlflow.hints !163

; <label>:9123                                    ; preds = %9116
  %9124 = fmul fast float %9121, 0x3FF7154760000000
  %9125 = call float @dx.op.unary.f32(i32 21, float %9124)  ; Exp(value)
  %9126 = fsub fast float 1.000000e+00, %9125
  %9127 = fmul fast float %9118, %9126
  %9128 = fsub fast float -0.000000e+00, %9127
  %9129 = fmul fast float %9119, %9126
  %9130 = fsub fast float -0.000000e+00, %9129
  %9131 = fmul fast float %9120, %9126
  %9132 = fsub fast float -0.000000e+00, %9131
  %9133 = fdiv fast float %9128, %9121
  %9134 = fdiv fast float %9130, %9121
  %9135 = fdiv fast float %9132, %9121
  br label %9174

; <label>:9136                                    ; preds = %9112
  %9137 = fsub fast float 1.000000e+00, %9011
  %9138 = fmul fast float %9042, %9137
  %9139 = fmul fast float %9053, %9137
  %9140 = fmul fast float %9064, %9137
  %9141 = fmul fast float %9043, %9137
  %9142 = fmul fast float %9054, %9137
  %9143 = fmul fast float %9065, %9137
  %9144 = fcmp fast une float %9141, 0.000000e+00
  br i1 %9144, label %9145, label %9152, !dx.controlflow.hints !162

; <label>:9145                                    ; preds = %9136
  %9146 = fmul fast float %9141, 0x3FF7154760000000
  %9147 = call float @dx.op.unary.f32(i32 21, float %9146)  ; Exp(value)
  %9148 = fsub fast float 1.000000e+00, %9147
  %9149 = fmul fast float %9138, %9148
  %9150 = fsub fast float -0.000000e+00, %9149
  %9151 = fdiv fast float %9150, %9141
  br label %9152

; <label>:9152                                    ; preds = %9145, %9136
  %9153 = phi float [ %9151, %9145 ], [ %9138, %9136 ]
  %9154 = phi float [ %9147, %9145 ], [ 1.000000e+00, %9136 ]
  %9155 = fcmp fast une float %9142, 0.000000e+00
  br i1 %9155, label %9156, label %9163, !dx.controlflow.hints !162

; <label>:9156                                    ; preds = %9152
  %9157 = fmul fast float %9142, 0x3FF7154760000000
  %9158 = call float @dx.op.unary.f32(i32 21, float %9157)  ; Exp(value)
  %9159 = fsub fast float 1.000000e+00, %9158
  %9160 = fmul fast float %9139, %9159
  %9161 = fsub fast float -0.000000e+00, %9160
  %9162 = fdiv fast float %9161, %9142
  br label %9163

; <label>:9163                                    ; preds = %9156, %9152
  %9164 = phi float [ %9162, %9156 ], [ %9139, %9152 ]
  %9165 = phi float [ %9158, %9156 ], [ 1.000000e+00, %9152 ]
  %9166 = fcmp fast une float %9143, 0.000000e+00
  br i1 %9166, label %9167, label %9174, !dx.controlflow.hints !162

; <label>:9167                                    ; preds = %9163
  %9168 = fmul fast float %9143, 0x3FF7154760000000
  %9169 = call float @dx.op.unary.f32(i32 21, float %9168)  ; Exp(value)
  %9170 = fsub fast float 1.000000e+00, %9169
  %9171 = fmul fast float %9140, %9170
  %9172 = fsub fast float -0.000000e+00, %9171
  %9173 = fdiv fast float %9172, %9143
  br label %9174

; <label>:9174                                    ; preds = %9167, %9163, %9123, %9116
  %9175 = phi float [ %9173, %9167 ], [ %9135, %9123 ], [ %9120, %9116 ], [ %9140, %9163 ]
  %9176 = phi float [ %9164, %9167 ], [ %9134, %9123 ], [ %9119, %9116 ], [ %9164, %9163 ]
  %9177 = phi float [ %9153, %9167 ], [ %9133, %9123 ], [ %9118, %9116 ], [ %9153, %9163 ]
  %9178 = phi float [ %9169, %9167 ], [ %9125, %9123 ], [ 1.000000e+00, %9116 ], [ 1.000000e+00, %9163 ]
  %9179 = phi float [ %9165, %9167 ], [ %9125, %9123 ], [ 1.000000e+00, %9116 ], [ %9165, %9163 ]
  %9180 = phi float [ %9154, %9167 ], [ %9125, %9123 ], [ 1.000000e+00, %9116 ], [ %9154, %9163 ]
  %9181 = fmul fast float %9180, %9092
  %9182 = fmul fast float %9179, %9103
  %9183 = fmul fast float %9178, %9114
  %9184 = fadd fast float %9181, %9177
  %9185 = fadd fast float %9182, %9176
  %9186 = fadd fast float %9183, %9175
  %9187 = fmul fast float %9180, %9091
  %9188 = fmul fast float %9179, %9102
  %9189 = fmul fast float %9178, %9113
  br label %9190

; <label>:9190                                    ; preds = %9174, %8985
  %9191 = phi float [ %9189, %9174 ], [ %8991, %8985 ]
  %9192 = phi float [ %9188, %9174 ], [ %8990, %8985 ]
  %9193 = phi float [ %9187, %9174 ], [ %8989, %8985 ]
  %9194 = phi float [ %9186, %9174 ], [ %8988, %8985 ]
  %9195 = phi float [ %9185, %9174 ], [ %8987, %8985 ]
  %9196 = phi float [ %9184, %9174 ], [ %8986, %8985 ]
  %9197 = fmul fast float %9196, %8138
  %9198 = fmul fast float %9195, %8140
  %9199 = fmul fast float %9194, %8142
  %9200 = fmul fast float %9193, %8433
  %9201 = call float @dx.op.dot3.f32(i32 55, float %9193, float %9192, float %9191, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9202 = call float @dx.op.dot3.f32(i32 55, float %9197, float %9198, float %9199, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9203 = select i1 %214, float %9201, float %9193
  %9204 = select i1 %214, float %9201, float %9192
  %9205 = select i1 %214, float 1.000000e+00, float %9191
  %9206 = select i1 %214, float %9202, float %9197
  %9207 = select i1 %214, float 0.000000e+00, float %9198
  %9208 = select i1 %214, float 0.000000e+00, float %9199
  %9209 = fmul fast float %9203, %8427
  %9210 = fmul fast float %9204, %8428
  %9211 = fmul fast float %9205, %8429
  %9212 = fadd fast float %9209, %9206
  %9213 = fadd fast float %9210, %9207
  %9214 = fadd fast float %9208, %9211
  %9215 = fmul fast float %9203, %8430
  %9216 = fmul fast float %9204, %8431
  %9217 = fmul fast float %9205, %8432
  %9218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9219 = extractvalue %dx.types.CBufRet.i32 %9218, 0
  %9220 = icmp eq i32 %9219, 0
  br i1 %9220, label %9588, label %9221, !dx.controlflow.hints !164

; <label>:9221                                    ; preds = %9190
  %9222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9223 = extractvalue %dx.types.CBufRet.f32 %9222, 2
  %9224 = extractvalue %dx.types.CBufRet.f32 %9222, 3
  %9225 = fmul fast float %9223, %98
  %9226 = fmul fast float %9224, %99
  %9227 = fmul fast float %9225, 2.000000e+00
  %9228 = fmul fast float %9226, 2.000000e+00
  %9229 = fsub fast float 1.000000e+00, %9227
  %9230 = fsub fast float 1.000000e+00, %9228
  %9231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9232 = extractvalue %dx.types.CBufRet.f32 %9231, 0
  %9233 = extractvalue %dx.types.CBufRet.f32 %9231, 1
  %9234 = extractvalue %dx.types.CBufRet.f32 %9231, 2
  %9235 = fmul fast float %9229, %9232
  %9236 = fmul fast float %9229, %9233
  %9237 = fmul fast float %9229, %9234
  %9238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9239 = extractvalue %dx.types.CBufRet.f32 %9238, 0
  %9240 = extractvalue %dx.types.CBufRet.f32 %9238, 1
  %9241 = extractvalue %dx.types.CBufRet.f32 %9238, 2
  %9242 = fmul fast float %9230, %9239
  %9243 = fmul fast float %9230, %9240
  %9244 = fmul fast float %9230, %9241
  %9245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9246 = extractvalue %dx.types.CBufRet.f32 %9245, 0
  %9247 = extractvalue %dx.types.CBufRet.f32 %9245, 1
  %9248 = extractvalue %dx.types.CBufRet.f32 %9245, 2
  %9249 = fadd fast float %9242, %9246
  %9250 = fadd fast float %9249, %9235
  %9251 = fadd fast float %9243, %9247
  %9252 = fadd fast float %9251, %9236
  %9253 = fadd fast float %9244, %9248
  %9254 = fadd fast float %9253, %9237
  %9255 = fmul fast float %9250, %8426
  %9256 = fmul fast float %9252, %8426
  %9257 = fmul fast float %9254, %8426
  %9258 = fmul fast float %9255, %9255
  %9259 = fmul fast float %9256, %9256
  %9260 = fadd fast float %9258, %9259
  %9261 = fmul fast float %9257, %9257
  %9262 = fadd fast float %9260, %9261
  %9263 = call float @dx.op.unary.f32(i32 24, float %9262)  ; Sqrt(value)
  %9264 = extractvalue %dx.types.CBufRet.f32 %8153, 0
  %9265 = fsub fast float %9263, %9264
  %9266 = extractvalue %dx.types.CBufRet.f32 %8153, 2
  %9267 = fmul fast float %9265, %9266
  %9268 = call float @dx.op.unary.f32(i32 7, float %9267)  ; Saturate(value)
  %9269 = fadd fast float %9268, -5.000000e-01
  %9270 = fmul fast float %9269, 2.000000e+00
  %9271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9272 = extractvalue %dx.types.CBufRet.f32 %9271, 2
  %9273 = call float @dx.op.binary.f32(i32 36, float %9272, float %9270)  ; FMin(a,b)
  %9274 = fsub fast float -0.000000e+00, %9272
  %9275 = fcmp fast ogt float %9273, %9274
  br i1 %9275, label %9276, label %9588, !dx.controlflow.hints !165

; <label>:9276                                    ; preds = %9221
  %9277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9278 = extractvalue %dx.types.CBufRet.f32 %9277, 3
  %9279 = fcmp fast ogt float %9278, 0.000000e+00
  br i1 %9279, label %9280, label %9355, !dx.controlflow.hints !166

; <label>:9280                                    ; preds = %9276
  %9281 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9282 = extractvalue %dx.types.Dimensions %9281, 0
  %9283 = sitofp i32 %9282 to float
  %9284 = extractvalue %dx.types.Dimensions %9281, 1
  %9285 = sitofp i32 %9284 to float
  %9286 = fmul fast float %9225, %9283
  %9287 = fmul fast float %9226, %9285
  %9288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9289 = extractvalue %dx.types.CBufRet.f32 %9288, 1
  %9290 = fsub fast float -0.000000e+00, %9289
  %9291 = fptoui float %9290 to i32
  %9292 = fptoui float %9286 to i32
  %9293 = fptoui float %9287 to i32
  %9294 = and i32 %9291, 31
  %9295 = lshr i32 %9292, %9294
  %9296 = lshr i32 %9293, %9294
  %9297 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9291, i32 %9295, i32 %9296, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9298 = extractvalue %dx.types.ResRet.f32 %9297, 0
  %9299 = fcmp fast olt float %9298, -1.000000e+00
  %9300 = fcmp fast ogt float %9298, -1.000000e+00
  %9301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9302 = extractvalue %dx.types.CBufRet.f32 %9301, 1
  %9303 = select i1 %9300, float %9302, float 1.000000e+00
  %9304 = fadd fast float %9298, 1.000000e+00
  %9305 = fmul fast float %9303, %9304
  %9306 = call float @dx.op.unary.f32(i32 6, float %9305)  ; FAbs(value)
  %9307 = extractvalue %dx.types.CBufRet.f32 %9301, 3
  %9308 = fcmp fast oge float %9306, %9307
  %9309 = select i1 %9308, float 0x4197782600000000, float %9306
  %9310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9311 = extractvalue %dx.types.CBufRet.f32 %9310, 0
  %9312 = extractvalue %dx.types.CBufRet.f32 %9310, 1
  %9313 = extractvalue %dx.types.CBufRet.f32 %9310, 2
  %9314 = select i1 %9299, float %9311, float %9232
  %9315 = select i1 %9299, float %9312, float %9233
  %9316 = select i1 %9299, float %9313, float %9234
  %9317 = fmul fast float %9314, %9229
  %9318 = fmul fast float %9315, %9229
  %9319 = fmul fast float %9316, %9229
  %9320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9321 = extractvalue %dx.types.CBufRet.f32 %9320, 0
  %9322 = extractvalue %dx.types.CBufRet.f32 %9320, 1
  %9323 = extractvalue %dx.types.CBufRet.f32 %9320, 2
  %9324 = select i1 %9299, float %9321, float %9239
  %9325 = select i1 %9299, float %9322, float %9240
  %9326 = select i1 %9299, float %9323, float %9241
  %9327 = fmul fast float %9324, %9230
  %9328 = fmul fast float %9325, %9230
  %9329 = fmul fast float %9326, %9230
  %9330 = fadd fast float %9327, %9317
  %9331 = fadd fast float %9328, %9318
  %9332 = fadd fast float %9329, %9319
  %9333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9334 = extractvalue %dx.types.CBufRet.f32 %9333, 0
  %9335 = extractvalue %dx.types.CBufRet.f32 %9333, 1
  %9336 = extractvalue %dx.types.CBufRet.f32 %9333, 2
  %9337 = select i1 %9299, float %9334, float %9246
  %9338 = select i1 %9299, float %9335, float %9247
  %9339 = select i1 %9299, float %9336, float %9248
  %9340 = fadd fast float %9330, %9337
  %9341 = fadd fast float %9331, %9338
  %9342 = fadd fast float %9332, %9339
  %9343 = fmul fast float %9340, %9309
  %9344 = fmul fast float %9341, %9309
  %9345 = fmul fast float %9342, %9309
  %9346 = fmul fast float %9343, %9343
  %9347 = fmul fast float %9344, %9344
  %9348 = fadd fast float %9346, %9347
  %9349 = fmul fast float %9345, %9345
  %9350 = fadd fast float %9348, %9349
  %9351 = call float @dx.op.unary.f32(i32 24, float %9350)  ; Sqrt(value)
  %9352 = fsub fast float %9351, %9264
  %9353 = fmul fast float %9352, %9266
  %9354 = call float @dx.op.unary.f32(i32 7, float %9353)  ; Saturate(value)
  br label %9355

; <label>:9355                                    ; preds = %9280, %9276
  %9356 = phi float [ %9354, %9280 ], [ 1.000000e+00, %9276 ]
  %9357 = fmul fast float %9273, 5.000000e-01
  %9358 = fadd fast float %9357, 5.000000e-01
  %9359 = call float @dx.op.unary.f32(i32 22, float %9358)  ; Frc(value)
  %9360 = call float @dx.op.unary.f32(i32 27, float %9359)  ; Round_ni(value)
  %9361 = call float @dx.op.unary.f32(i32 22, float %9359)  ; Frc(value)
  %9362 = fmul fast float %9361, 2.000000e+00
  %9363 = fadd fast float %9362, -1.000000e+00
  %9364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %9225, float %9226, float %9360, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9365 = extractvalue %dx.types.ResRet.f32 %9364, 0
  %9366 = extractvalue %dx.types.ResRet.f32 %9364, 1
  %9367 = extractvalue %dx.types.ResRet.f32 %9364, 2
  %9368 = extractvalue %dx.types.ResRet.f32 %9364, 3
  %9369 = fadd fast float %9365, -5.000000e-01
  %9370 = fadd fast float %9367, -5.000000e-01
  %9371 = fmul fast float %9369, 0xBFD5555560000000
  %9372 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9370, float %9371)  ; FMad(a,b,c)
  %9373 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9366, float 0.000000e+00)  ; FMad(a,b,c)
  %9374 = fadd fast float %9373, %9368
  %9375 = fmul fast float %9369, -7.500000e-01
  %9376 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9370, float %9375)  ; FMad(a,b,c)
  %9377 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9366, float 0.000000e+00)  ; FMad(a,b,c)
  %9378 = fadd fast float %9377, %9368
  %9379 = call float @dx.op.binary.f32(i32 35, float %9372, float -1.000000e+00)  ; FMax(a,b)
  %9380 = call float @dx.op.binary.f32(i32 35, float %9374, float -1.000000e+00)  ; FMax(a,b)
  %9381 = call float @dx.op.binary.f32(i32 35, float %9376, float -1.000000e+00)  ; FMax(a,b)
  %9382 = call float @dx.op.binary.f32(i32 35, float %9378, float -1.000000e+00)  ; FMax(a,b)
  %9383 = call float @dx.op.binary.f32(i32 36, float %9379, float 1.000000e+00)  ; FMin(a,b)
  %9384 = call float @dx.op.binary.f32(i32 36, float %9380, float 1.000000e+00)  ; FMin(a,b)
  %9385 = call float @dx.op.binary.f32(i32 36, float %9381, float 1.000000e+00)  ; FMin(a,b)
  %9386 = call float @dx.op.binary.f32(i32 36, float %9382, float 1.000000e+00)  ; FMin(a,b)
  %9387 = fcmp fast olt float %9383, 0x3FEFFF8020000000
  br i1 %9387, label %9388, label %9503, !dx.controlflow.hints !167

; <label>:9388                                    ; preds = %9355
  %9389 = extractvalue %dx.types.CBufRet.f32 %9271, 3
  %9390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9391 = extractvalue %dx.types.CBufRet.f32 %9390, 0
  %9392 = extractvalue %dx.types.CBufRet.f32 %9390, 1
  %9393 = extractvalue %dx.types.CBufRet.f32 %9390, 2
  %9394 = extractvalue %dx.types.CBufRet.f32 %9390, 3
  %9395 = fsub fast float %9391, %9383
  %9396 = fsub fast float %9392, %9384
  %9397 = fsub fast float %9393, %9385
  %9398 = fsub fast float %9394, %9386
  %9399 = fmul fast float %9395, %9389
  %9400 = fmul fast float %9396, %9389
  %9401 = fmul fast float %9397, %9389
  %9402 = fmul fast float %9398, %9389
  %9403 = fadd fast float %9399, %9383
  %9404 = fadd fast float %9400, %9384
  %9405 = fsub fast float -0.000000e+00, %9404
  %9406 = fadd fast float %9401, %9385
  %9407 = fadd fast float %9402, %9386
  %9408 = fmul fast float %9403, %9403
  %9409 = fsub fast float %9404, %9408
  %9410 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9409)  ; FMax(a,b)
  %9411 = fdiv fast float 1.000000e+00, %9410
  %9412 = fmul fast float %9404, %9403
  %9413 = fsub fast float %9406, %9412
  %9414 = fsub fast float %9363, %9403
  %9415 = fmul fast float %9363, %9363
  %9416 = fsub fast float %9415, %9404
  %9417 = fmul fast float %9414, %9411
  %9418 = fmul fast float %9417, %9413
  %9419 = fsub fast float %9416, %9418
  %9420 = fmul fast float %9404, %9404
  %9421 = fsub fast float %9407, %9420
  %9422 = fmul fast float %9413, %9413
  %9423 = fmul fast float %9422, %9411
  %9424 = fsub fast float %9421, %9423
  %9425 = fdiv fast float %9419, %9424
  %9426 = fmul fast float %9413, %9425
  %9427 = fsub fast float %9414, %9426
  %9428 = fmul fast float %9427, %9411
  %9429 = fmul fast float %9428, %9403
  %9430 = fsub fast float 1.000000e+00, %9429
  %9431 = fmul fast float %9404, %9425
  %9432 = fsub fast float %9430, %9431
  %9433 = fmul fast float %9428, %9428
  %9434 = fmul fast float %9425, 4.000000e+00
  %9435 = fmul fast float %9434, %9432
  %9436 = fsub fast float %9433, %9435
  %9437 = call float @dx.op.unary.f32(i32 24, float %9436)  ; Sqrt(value)
  %9438 = fcmp fast oge float %9428, 0.000000e+00
  %9439 = fsub fast float -0.000000e+00, %9437
  %9440 = select i1 %9438, float %9439, float %9437
  %9441 = fsub fast float %9440, %9428
  %9442 = fdiv fast float %9441, %9425
  %9443 = fdiv fast float %9432, %9441
  %9444 = fmul fast float %9442, 5.000000e-01
  %9445 = fmul fast float %9443, 2.000000e+00
  %9446 = select i1 %9438, float %9444, float %9445
  %9447 = select i1 %9438, float %9445, float %9444
  %9448 = call float @dx.op.binary.f32(i32 35, float %9446, float %9447)  ; FMax(a,b)
  %9449 = call float @dx.op.binary.f32(i32 36, float %9446, float %9447)  ; FMin(a,b)
  %9450 = fcmp fast ogt float %9363, %9449
  br i1 %9450, label %9451, label %9461

; <label>:9451                                    ; preds = %9388
  %9452 = fsub fast float %9363, %9449
  %9453 = fsub fast float %9448, %9449
  %9454 = fmul fast float %9452, %9453
  %9455 = fmul fast float %9448, %9363
  %9456 = fadd fast float %9448, %9363
  %9457 = fmul fast float %9456, %9403
  %9458 = fadd fast float %9455, %9404
  %9459 = fsub fast float %9458, %9457
  %9460 = fdiv fast float %9459, %9454
  br label %9461

; <label>:9461                                    ; preds = %9451, %9388
  %9462 = phi float [ %9460, %9451 ], [ 0.000000e+00, %9388 ]
  %9463 = fcmp fast ogt float %9363, %9448
  %9464 = fsub fast float %9363, %9448
  br i1 %9463, label %9465, label %9475

; <label>:9465                                    ; preds = %9461
  %9466 = fsub fast float %9448, %9449
  %9467 = fmul fast float %9466, %9464
  %9468 = fmul fast float %9449, %9363
  %9469 = fadd fast float %9449, %9363
  %9470 = fmul fast float %9469, %9403
  %9471 = fsub fast float %9405, %9468
  %9472 = fadd fast float %9471, %9470
  %9473 = fdiv fast float %9472, %9467
  %9474 = fadd fast float %9473, %9462
  br label %9475

; <label>:9475                                    ; preds = %9465, %9461
  %9476 = phi float [ %9474, %9465 ], [ %9462, %9461 ]
  %9477 = fsub fast float %9363, %9449
  %9478 = fmul fast float %9477, %9464
  %9479 = fmul fast float %9449, %9448
  %9480 = fadd fast float %9449, %9448
  %9481 = fmul fast float %9480, %9403
  %9482 = fadd fast float %9479, %9404
  %9483 = fsub fast float %9482, %9481
  %9484 = fdiv fast float %9483, %9478
  %9485 = call float @dx.op.unary.f32(i32 7, float %9476)  ; Saturate(value)
  %9486 = fcmp fast oeq float %8154, 0.000000e+00
  %9487 = extractvalue %dx.types.CBufRet.f32 %9271, 0
  %9488 = fcmp fast oeq float %9487, 0.000000e+00
  %9489 = or i1 %9486, %9488
  %9490 = fmul fast float %9487, 2.000000e+00
  %9491 = fadd fast float %9272, %9273
  %9492 = fdiv fast float %9491, %9490
  %9493 = call float @dx.op.unary.f32(i32 7, float %9492)  ; Saturate(value)
  %9494 = fmul fast float %9493, 2.000000e+00
  %9495 = fsub fast float 3.000000e+00, %9494
  %9496 = fmul fast float %9493, %9493
  %9497 = fmul fast float %9496, %9495
  %9498 = select i1 %9489, float 1.000000e+00, float %9497
  %9499 = fmul fast float %9484, %8154
  %9500 = fadd fast float %9485, %9499
  %9501 = call float @dx.op.unary.f32(i32 7, float %9500)  ; Saturate(value)
  %9502 = fmul fast float %9498, %9501
  br label %9503

; <label>:9503                                    ; preds = %9475, %9355
  %9504 = phi float [ %9502, %9475 ], [ 0.000000e+00, %9355 ]
  %9505 = fsub fast float 1.000000e+00, %9504
  %9506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %43, float %9225, float %9226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9507 = extractvalue %dx.types.ResRet.f32 %9506, 0
  %9508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9509 = extractvalue %dx.types.CBufRet.i32 %9508, 2
  %9510 = icmp eq i32 %9509, 0
  br i1 %9510, label %9516, label %9511

; <label>:9511                                    ; preds = %9503
  %9512 = call float @dx.op.unary.f32(i32 7, float %9504)  ; Saturate(value)
  %9513 = fadd fast float %9507, -1.000000e+00
  %9514 = fmul fast float %9512, %9513
  %9515 = fadd fast float %9514, 1.000000e+00
  br label %9516

; <label>:9516                                    ; preds = %9511, %9503
  %9517 = phi float [ %9515, %9511 ], [ %9505, %9503 ]
  br i1 %9279, label %9518, label %9536

; <label>:9518                                    ; preds = %9516
  %9519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9520 = extractvalue %dx.types.CBufRet.f32 %9519, 1
  %9521 = fsub fast float %9356, %9520
  %9522 = call float @dx.op.unary.f32(i32 7, float %9521)  ; Saturate(value)
  %9523 = fsub fast float %9356, %9278
  %9524 = call float @dx.op.unary.f32(i32 7, float %9523)  ; Saturate(value)
  %9525 = fsub fast float %9522, %9524
  %9526 = fsub fast float %9358, %9524
  %9527 = fdiv fast float %9526, %9525
  %9528 = call float @dx.op.unary.f32(i32 7, float %9527)  ; Saturate(value)
  %9529 = fmul fast float %9528, 2.000000e+00
  %9530 = fsub fast float 3.000000e+00, %9529
  %9531 = fsub fast float %9507, %9517
  %9532 = fmul fast float %9528, %9528
  %9533 = fmul fast float %9532, %9531
  %9534 = fmul fast float %9533, %9530
  %9535 = fadd fast float %9534, %9517
  br label %9536

; <label>:9536                                    ; preds = %9518, %9516
  %9537 = phi float [ %9535, %9518 ], [ %9517, %9516 ]
  %9538 = call float @dx.op.binary.f32(i32 35, float %9507, float %9537)  ; FMax(a,b)
  %9539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9540 = extractvalue %dx.types.CBufRet.i32 %9539, 2
  %9541 = and i32 %9540, 1
  %9542 = icmp eq i32 %9541, 0
  %9543 = fcmp fast une float %9538, 1.000000e+00
  %9544 = and i1 %9543, %9542
  br i1 %9544, label %9545, label %9564

; <label>:9545                                    ; preds = %9536
  %9546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %9225, float %9226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9547 = extractvalue %dx.types.ResRet.f32 %9546, 0
  %9548 = extractvalue %dx.types.ResRet.f32 %9546, 1
  %9549 = extractvalue %dx.types.ResRet.f32 %9546, 2
  %9550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9551 = extractvalue %dx.types.CBufRet.f32 %9550, 1
  %9552 = fmul fast float %9551, %9547
  %9553 = fmul fast float %9551, %9548
  %9554 = fmul fast float %9551, %9549
  %9555 = fcmp fast ogt float %9507, 0x3FEFFF2E40000000
  %9556 = fsub fast float 1.000000e+00, %9538
  %9557 = fsub fast float 1.000000e+00, %9507
  %9558 = fdiv fast float %9556, %9557
  %9559 = call float @dx.op.unary.f32(i32 7, float %9558)  ; Saturate(value)
  %9560 = select i1 %9555, float 0.000000e+00, float %9559
  %9561 = fmul fast float %9552, %9560
  %9562 = fmul fast float %9553, %9560
  %9563 = fmul fast float %9554, %9560
  br label %9564

; <label>:9564                                    ; preds = %9545, %9536
  %9565 = phi float [ 0.000000e+00, %9536 ], [ %9561, %9545 ]
  %9566 = phi float [ 0.000000e+00, %9536 ], [ %9562, %9545 ]
  %9567 = phi float [ 0.000000e+00, %9536 ], [ %9563, %9545 ]
  %9568 = fmul fast float %9565, %8138
  %9569 = fmul fast float %9566, %8140
  %9570 = fmul fast float %9567, %8142
  %9571 = fmul fast float %9538, %9200
  %9572 = call float @dx.op.dot3.f32(i32 55, float %9538, float %9538, float %9538, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9573 = call float @dx.op.dot3.f32(i32 55, float %9568, float %9569, float %9570, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9574 = select i1 %214, float %9572, float %9538
  %9575 = select i1 %214, float 1.000000e+00, float %9538
  %9576 = select i1 %214, float %9573, float %9568
  %9577 = select i1 %214, float 0.000000e+00, float %9569
  %9578 = select i1 %214, float 0.000000e+00, float %9570
  %9579 = fmul fast float %9574, %9212
  %9580 = fmul fast float %9574, %9213
  %9581 = fmul fast float %9575, %9214
  %9582 = fadd fast float %9579, %9576
  %9583 = fadd fast float %9580, %9577
  %9584 = fadd fast float %9578, %9581
  %9585 = fmul fast float %9574, %9215
  %9586 = fmul fast float %9574, %9216
  %9587 = fmul fast float %9575, %9217
  br label %9588

; <label>:9588                                    ; preds = %9564, %9221, %9190, %8422
  %9589 = phi float [ %8427, %8422 ], [ %9212, %9190 ], [ %9582, %9564 ], [ %9212, %9221 ]
  %9590 = phi float [ %8428, %8422 ], [ %9213, %9190 ], [ %9583, %9564 ], [ %9213, %9221 ]
  %9591 = phi float [ %8429, %8422 ], [ %9214, %9190 ], [ %9584, %9564 ], [ %9214, %9221 ]
  %9592 = phi float [ %8430, %8422 ], [ %9215, %9190 ], [ %9585, %9564 ], [ %9215, %9221 ]
  %9593 = phi float [ %8431, %8422 ], [ %9216, %9190 ], [ %9586, %9564 ], [ %9216, %9221 ]
  %9594 = phi float [ %8432, %8422 ], [ %9217, %9190 ], [ %9587, %9564 ], [ %9217, %9221 ]
  %9595 = phi float [ %8433, %8422 ], [ %9200, %9190 ], [ %9571, %9564 ], [ %9200, %9221 ]
  %9596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9597 = extractvalue %dx.types.CBufRet.f32 %9596, 2
  %9598 = extractvalue %dx.types.CBufRet.f32 %9596, 3
  %9599 = fmul fast float %9597, %98
  %9600 = fmul fast float %9598, %99
  %9601 = call float @dx.op.unary.f32(i32 7, float %9599)  ; Saturate(value)
  %9602 = call float @dx.op.unary.f32(i32 7, float %9600)  ; Saturate(value)
  %9603 = select i1 %8164, i32 2, i32 0
  %9604 = or i32 %9603, 1
  %9605 = uitofp i32 %9604 to float
  %9606 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9601, float %9602, float %9605, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9607 = extractvalue %dx.types.ResRet.f32 %9606, 0
  %9608 = extractvalue %dx.types.ResRet.f32 %9606, 1
  %9609 = extractvalue %dx.types.ResRet.f32 %9606, 2
  %9610 = extractvalue %dx.types.ResRet.f32 %9606, 3
  %9611 = add nuw nsw i32 %9603, 2
  %9612 = uitofp i32 %9611 to float
  %9613 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9601, float %9602, float %9612, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9614 = extractvalue %dx.types.ResRet.f32 %9613, 0
  %9615 = extractvalue %dx.types.ResRet.f32 %9613, 1
  %9616 = extractvalue %dx.types.ResRet.f32 %9613, 2
  %9617 = extractvalue %dx.types.ResRet.f32 %9613, 3
  %9618 = call float @dx.op.binary.f32(i32 35, float %9608, float %9609)  ; FMax(a,b)
  %9619 = call float @dx.op.binary.f32(i32 35, float %9607, float %9618)  ; FMax(a,b)
  %9620 = call float @dx.op.binary.f32(i32 35, float %9619, float %9610)  ; FMax(a,b)
  %9621 = call float @dx.op.binary.f32(i32 36, float %9615, float %9616)  ; FMin(a,b)
  %9622 = call float @dx.op.binary.f32(i32 36, float %9614, float %9621)  ; FMin(a,b)
  %9623 = call float @dx.op.binary.f32(i32 36, float %9622, float %9617)  ; FMin(a,b)
  %9624 = fmul fast float %9620, 2.550000e+02
  %9625 = fadd fast float %9624, 0x3F70101020000000
  %9626 = fptoui float %9625 to i32
  %9627 = fmul fast float %9623, 2.550000e+02
  %9628 = fadd fast float %9627, 0x3F70101020000000
  %9629 = fptoui float %9628 to i32
  %9630 = icmp ult i32 %9626, %9629
  br i1 %9630, label %9631, label %9800

; <label>:9631                                    ; preds = %9588
  %9632 = fcmp fast ogt float %85, 9.843750e-01
  %9633 = fadd fast float %8426, -4.000000e+00
  %9634 = select i1 %9632, float -4.000000e+00, float %9633
  %9635 = call float @dx.op.binary.f32(i32 35, float %9634, float 0.000000e+00)  ; FMax(a,b)
  %9636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9637 = extractvalue %dx.types.CBufRet.f32 %9636, 0
  %9638 = fadd fast float %9637, %9635
  %9639 = extractvalue %dx.types.CBufRet.f32 %9636, 2
  %9640 = fmul fast float %9638, %9639
  %9641 = call float @dx.op.unary.f32(i32 23, float %9640)  ; Log(value)
  %9642 = extractvalue %dx.types.CBufRet.f32 %9636, 3
  %9643 = fmul fast float %9642, %9641
  %9644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9645 = extractvalue %dx.types.CBufRet.f32 %9644, 2
  %9646 = fmul fast float %9643, %9645
  %9647 = call float @dx.op.unary.f32(i32 7, float %9646)  ; Saturate(value)
  %9648 = uitofp i32 %9626 to float
  %9649 = uitofp i32 %9629 to float
  %9650 = fadd fast float %9648, 5.000000e-01
  %9651 = fadd fast float %9649, 5.000000e-01
  %9652 = fmul fast float %9645, %9650
  %9653 = fmul fast float %9645, %9651
  %9654 = fadd fast float %9652, 0x3F0FFB4800000000
  %9655 = fadd fast float %9653, 0xBF0FFB4800000000
  %9656 = call float @dx.op.binary.f32(i32 35, float %9647, float %9654)  ; FMax(a,b)
  %9657 = call float @dx.op.binary.f32(i32 36, float %9656, float %9655)  ; FMin(a,b)
  %9658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9659 = extractvalue %dx.types.CBufRet.f32 %9658, 1
  %9660 = extractvalue %dx.types.CBufRet.f32 %9658, 2
  %9661 = extractvalue %dx.types.CBufRet.f32 %9658, 0
  %9662 = select i1 %8164, float %9661, float 0.000000e+00
  %9663 = fmul fast float %9659, %9657
  %9664 = fadd fast float %9662, %9663
  %9665 = fadd fast float %9662, %9660
  %9666 = fsub fast float %9659, %9660
  %9667 = fadd fast float %9666, %9662
  %9668 = call float @dx.op.binary.f32(i32 35, float %9664, float %9665)  ; FMax(a,b)
  %9669 = call float @dx.op.binary.f32(i32 36, float %9668, float %9667)  ; FMin(a,b)
  %9670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %9601, float %9602, float %9669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9671 = extractvalue %dx.types.ResRet.f32 %9670, 0
  %9672 = extractvalue %dx.types.ResRet.f32 %9670, 1
  %9673 = extractvalue %dx.types.ResRet.f32 %9670, 2
  %9674 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9675 = extractvalue %dx.types.CBufRet.i32 %9674, 0
  %9676 = extractvalue %dx.types.CBufRet.i32 %9674, 1
  %9677 = uitofp i32 %9675 to float
  %9678 = uitofp i32 %9676 to float
  %9679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9680 = extractvalue %dx.types.CBufRet.f32 %9679, 0
  %9681 = extractvalue %dx.types.CBufRet.f32 %9679, 1
  %9682 = fmul fast float %9677, %9601
  %9683 = fmul fast float %9678, %9602
  %9684 = fadd fast float %9682, -5.000000e-01
  %9685 = fadd fast float %9683, -5.000000e-01
  %9686 = call float @dx.op.unary.f32(i32 22, float %9684)  ; Frc(value)
  %9687 = call float @dx.op.unary.f32(i32 22, float %9685)  ; Frc(value)
  %9688 = fmul fast float %9686, %9686
  %9689 = fmul fast float %9688, %9686
  %9690 = fsub fast float 3.000000e+00, %9686
  %9691 = fmul fast float %9688, %9690
  %9692 = fmul fast float %9686, 3.000000e+00
  %9693 = fmul fast float %9689, 3.000000e+00
  %9694 = fmul fast float %9688, 6.000000e+00
  %9695 = fsub fast float %9693, %9694
  %9696 = fadd fast float %9695, 4.000000e+00
  %9697 = fmul fast float %9696, 0x3FC5555560000000
  %9698 = fmul fast float %9689, -3.000000e+00
  %9699 = fadd fast float %9688, %9686
  %9700 = fmul fast float %9699, 3.000000e+00
  %9701 = fadd fast float %9698, 1.000000e+00
  %9702 = fadd fast float %9701, %9700
  %9703 = fmul fast float %9689, 0x3FC5555560000000
  %9704 = fmul fast float %9687, %9687
  %9705 = fmul fast float %9704, %9687
  %9706 = fsub fast float 3.000000e+00, %9687
  %9707 = fmul fast float %9704, %9706
  %9708 = fmul fast float %9687, 3.000000e+00
  %9709 = fmul fast float %9705, 3.000000e+00
  %9710 = fmul fast float %9704, 6.000000e+00
  %9711 = fsub fast float %9709, %9710
  %9712 = fadd fast float %9711, 4.000000e+00
  %9713 = fmul fast float %9712, 0x3FC5555560000000
  %9714 = fmul fast float %9705, -3.000000e+00
  %9715 = fadd fast float %9704, %9687
  %9716 = fmul fast float %9715, 3.000000e+00
  %9717 = fadd fast float %9714, 1.000000e+00
  %9718 = fadd fast float %9717, %9716
  %9719 = fmul fast float %9705, 0x3FC5555560000000
  %9720 = fadd fast float %9686, 1.000000e+00
  %9721 = fsub fast float 1.000000e+00, %9692
  %9722 = fadd fast float %9721, %9691
  %9723 = fadd fast float %9722, %9696
  %9724 = fmul fast float %9723, 0x3FC5555560000000
  %9725 = fdiv fast float %9697, %9724
  %9726 = fsub fast float %9720, %9725
  %9727 = fsub fast float 1.000000e+00, %9686
  %9728 = fadd fast float %9702, %9689
  %9729 = fmul fast float %9728, 0x3FC5555560000000
  %9730 = fdiv fast float %9703, %9729
  %9731 = fadd fast float %9727, %9730
  %9732 = fadd fast float %9687, 1.000000e+00
  %9733 = fsub fast float 1.000000e+00, %9708
  %9734 = fadd fast float %9733, %9707
  %9735 = fadd fast float %9734, %9712
  %9736 = fmul fast float %9735, 0x3FC5555560000000
  %9737 = fdiv fast float %9713, %9736
  %9738 = fsub fast float %9732, %9737
  %9739 = fsub fast float 1.000000e+00, %9687
  %9740 = fadd fast float %9718, %9705
  %9741 = fmul fast float %9740, 0x3FC5555560000000
  %9742 = fdiv fast float %9719, %9741
  %9743 = fadd fast float %9742, %9739
  %9744 = fmul fast float %9726, %9680
  %9745 = fsub fast float %9601, %9744
  %9746 = fmul fast float %9731, %9680
  %9747 = fadd fast float %9746, %9601
  %9748 = fmul fast float %9743, %9681
  %9749 = fadd fast float %9748, %9602
  %9750 = fmul fast float %9738, %9681
  %9751 = fsub fast float %9602, %9750
  %9752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9745, float %9751, float %9669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9753 = extractvalue %dx.types.ResRet.f32 %9752, 0
  %9754 = extractvalue %dx.types.ResRet.f32 %9752, 1
  %9755 = extractvalue %dx.types.ResRet.f32 %9752, 2
  %9756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9747, float %9751, float %9669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9757 = extractvalue %dx.types.ResRet.f32 %9756, 0
  %9758 = extractvalue %dx.types.ResRet.f32 %9756, 1
  %9759 = extractvalue %dx.types.ResRet.f32 %9756, 2
  %9760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9745, float %9749, float %9669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9761 = extractvalue %dx.types.ResRet.f32 %9760, 0
  %9762 = extractvalue %dx.types.ResRet.f32 %9760, 1
  %9763 = extractvalue %dx.types.ResRet.f32 %9760, 2
  %9764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9747, float %9749, float %9669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9765 = extractvalue %dx.types.ResRet.f32 %9764, 0
  %9766 = extractvalue %dx.types.ResRet.f32 %9764, 1
  %9767 = extractvalue %dx.types.ResRet.f32 %9764, 2
  %9768 = fsub fast float %9761, %9753
  %9769 = fsub fast float %9762, %9754
  %9770 = fsub fast float %9763, %9755
  %9771 = fmul fast float %9768, %9741
  %9772 = fmul fast float %9769, %9741
  %9773 = fmul fast float %9770, %9741
  %9774 = fadd fast float %9771, %9753
  %9775 = fadd fast float %9772, %9754
  %9776 = fadd fast float %9773, %9755
  %9777 = fsub fast float %9765, %9757
  %9778 = fsub fast float %9766, %9758
  %9779 = fsub fast float %9767, %9759
  %9780 = fmul fast float %9777, %9741
  %9781 = fmul fast float %9778, %9741
  %9782 = fmul fast float %9779, %9741
  %9783 = fsub fast float %9757, %9774
  %9784 = fadd fast float %9783, %9780
  %9785 = fsub fast float %9758, %9775
  %9786 = fadd fast float %9785, %9781
  %9787 = fsub fast float %9759, %9776
  %9788 = fadd fast float %9787, %9782
  %9789 = fmul fast float %9784, %9729
  %9790 = fmul fast float %9786, %9729
  %9791 = fmul fast float %9788, %9729
  %9792 = fadd fast float %9789, %9774
  %9793 = fadd fast float %9790, %9775
  %9794 = fadd fast float %9791, %9776
  %9795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9796 = extractvalue %dx.types.CBufRet.f32 %9795, 1
  %9797 = fmul fast float %9792, %9796
  %9798 = fmul fast float %9793, %9796
  %9799 = fmul fast float %9794, %9796
  br label %9800

; <label>:9800                                    ; preds = %9631, %9588
  %9801 = phi float [ %9671, %9631 ], [ 1.000000e+00, %9588 ]
  %9802 = phi float [ %9672, %9631 ], [ 1.000000e+00, %9588 ]
  %9803 = phi float [ %9673, %9631 ], [ 1.000000e+00, %9588 ]
  %9804 = phi float [ %9797, %9631 ], [ 0.000000e+00, %9588 ]
  %9805 = phi float [ %9798, %9631 ], [ 0.000000e+00, %9588 ]
  %9806 = phi float [ %9799, %9631 ], [ 0.000000e+00, %9588 ]
  %9807 = fmul fast float %9804, %8138
  %9808 = fmul fast float %9805, %8140
  %9809 = fmul fast float %9806, %8142
  %9810 = fmul fast float %9801, %9595
  %9811 = call float @dx.op.dot3.f32(i32 55, float %9801, float %9802, float %9803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9812 = call float @dx.op.dot3.f32(i32 55, float %9807, float %9808, float %9809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9813 = select i1 %214, float %9811, float %9801
  %9814 = select i1 %214, float %9811, float %9802
  %9815 = select i1 %214, float 1.000000e+00, float %9803
  %9816 = select i1 %214, float %9812, float %9807
  %9817 = select i1 %214, float 0.000000e+00, float %9808
  %9818 = select i1 %214, float 0.000000e+00, float %9809
  %9819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9820 = extractvalue %dx.types.CBufRet.i32 %9819, 3
  %9821 = and i32 %9820, 3
  %9822 = icmp ne i32 %9821, 0
  %9823 = and i32 %9820, 4
  %9824 = icmp ne i32 %9823, 0
  %9825 = and i1 %9822, %9824
  %9826 = and i1 %214, %9825
  br i1 %9826, label %9827, label %9833

; <label>:9827                                    ; preds = %9800
  %9828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9829 = extractvalue %dx.types.CBufRet.f32 %9828, 1
  %9830 = fadd fast float %9810, -1.000000e+00
  %9831 = fmul fast float %9829, %9830
  %9832 = fadd fast float %9831, 1.000000e+00
  br label %9833

; <label>:9833                                    ; preds = %9827, %9800
  %9834 = phi float [ %9832, %9827 ], [ %9810, %9800 ]
  %9835 = fadd fast float %9592, %9589
  %9836 = fmul fast float %9813, %9835
  %9837 = fadd fast float %9836, %9816
  %9838 = fadd fast float %9593, %9590
  %9839 = fmul fast float %9814, %9838
  %9840 = fadd fast float %9839, %9817
  %9841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9842 = extractvalue %dx.types.CBufRet.f32 %9841, 0
  br i1 %214, label %9843, label %9858

; <label>:9843                                    ; preds = %9833
  %9844 = fadd fast float %9837, %9840
  %9845 = fmul fast float %9842, %9844
  %9846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9847 = extractvalue %dx.types.CBufRet.f32 %9846, 3
  %9848 = extractvalue %dx.types.CBufRet.f32 %8146, 1
  %9849 = fsub fast float %8151, %8145
  %9850 = fadd fast float %9849, %8152
  %9851 = fsub fast float %9850, %9848
  %9852 = extractvalue %dx.types.CBufRet.f32 %8146, 2
  %9853 = fmul fast float %9851, %9852
  %9854 = call float @dx.op.unary.f32(i32 7, float %9853)  ; Saturate(value)
  %9855 = fsub fast float %9854, %9847
  %9856 = fmul fast float %9855, %9834
  %9857 = fadd fast float %9856, %9847
  br label %9884

; <label>:9858                                    ; preds = %9833
  %9859 = fadd fast float %9594, %9591
  %9860 = fmul fast float %9815, %9859
  %9861 = fadd fast float %9860, %9818
  %9862 = fmul fast float %9842, %9837
  %9863 = fmul fast float %9842, %9840
  %9864 = fmul fast float %9842, %9861
  %9865 = call float @dx.op.binary.f32(i32 35, float %9863, float %9864)  ; FMax(a,b)
  %9866 = call float @dx.op.binary.f32(i32 35, float %9862, float %9865)  ; FMax(a,b)
  %9867 = call float @dx.op.binary.f32(i32 35, float %8140, float %8142)  ; FMax(a,b)
  %9868 = call float @dx.op.binary.f32(i32 35, float %8138, float %9867)  ; FMax(a,b)
  %9869 = call float @dx.op.binary.f32(i32 35, float %9866, float %9868)  ; FMax(a,b)
  %9870 = fcmp fast ugt float %9869, 0x3F10000000000000
  br i1 %9870, label %9872, label %9871

; <label>:9871                                    ; preds = %9858
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9872

; <label>:9872                                    ; preds = %9871, %9858
  %9873 = add i32 %49, 356
  %9874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %9873, i32 undef)  ; BufferLoad(srv,index,wot)
  %9875 = extractvalue %dx.types.ResRet.i32 %9874, 0
  %9876 = and i32 %9875, 32
  %9877 = icmp eq i32 %9876, 0
  br i1 %9877, label %9884, label %9878

; <label>:9878                                    ; preds = %9872
  %9879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9880 = extractvalue %dx.types.CBufRet.f32 %9879, 0
  %9881 = fmul fast float %9880, 0x3FE99999A0000000
  %9882 = fadd fast float %9880, %9862
  %9883 = fadd fast float %9881, %9864
  br label %9884

; <label>:9884                                    ; preds = %9878, %9872, %9843
  %9885 = phi float [ 1.000000e+00, %9843 ], [ %8140, %9878 ], [ %8140, %9872 ]
  %9886 = phi float [ 1.000000e+00, %9843 ], [ %8142, %9878 ], [ %8142, %9872 ]
  %9887 = phi float [ %9845, %9843 ], [ %9882, %9878 ], [ %9862, %9872 ]
  %9888 = phi float [ %9857, %9843 ], [ %9863, %9878 ], [ %9863, %9872 ]
  %9889 = phi float [ 1.000000e+00, %9843 ], [ %9883, %9878 ], [ %9864, %9872 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9890 = call float @dx.op.binary.f32(i32 36, float %9887, float 3.225500e+04)  ; FMin(a,b)
  %9891 = call float @dx.op.binary.f32(i32 36, float %9888, float 3.225500e+04)  ; FMin(a,b)
  %9892 = call float @dx.op.binary.f32(i32 36, float %9889, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9890)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9891)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9892)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9893 = call float @dx.op.binary.f32(i32 36, float %8138, float 3.225500e+04)  ; FMin(a,b)
  %9894 = call float @dx.op.binary.f32(i32 36, float %9885, float 3.225500e+04)  ; FMin(a,b)
  %9895 = call float @dx.op.binary.f32(i32 36, float %9886, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9893)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9894)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9895)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!62 = !{[46 x i32] [i32 44, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119]}
!63 = !{void ()* @ps_main, !"ps_main", !64, !4, !87}
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
!83 = !{!84, !85}
!84 = !{i32 0, !"SV_Target", i8 9, i8 16, !67, i8 0, i32 1, i8 4, i32 0, i8 0, !68}
!85 = !{i32 1, !"SV_Target", i8 9, i8 16, !86, i8 0, i32 1, i8 4, i32 1, i8 0, !68}
!86 = !{i32 1}
!87 = !{i32 0, i64 16}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.unroll.disable"}
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
!112 = distinct !{!112, !90}
!113 = distinct !{!113, !90}
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
!127 = distinct !{!127, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!128 = distinct !{!128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!129 = distinct !{!129, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!130 = distinct !{!130, !128, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!131 = distinct !{!131, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!132 = distinct !{!132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!133 = distinct !{!133, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!134 = distinct !{!134, !132, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

