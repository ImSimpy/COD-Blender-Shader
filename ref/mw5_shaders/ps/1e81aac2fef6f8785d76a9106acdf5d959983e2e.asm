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
; shader hash: d0edc2d7d194717071b8074b91713f65
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
  %412 = add i32 %50, 488
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
  br i1 %468, label %1229, label %469

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
  %1107 = and i32 %1106, 1024
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1139, label %1109

; <label>:1109                                    ; preds = %1101
  %1110 = add i32 %50, 152
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = fmul fast float %1114, 0x3F70101020000000
  %1116 = lshr i32 %1112, 8
  %1117 = and i32 %1116, 255
  %1118 = uitofp i32 %1117 to float
  %1119 = fmul fast float %1118, 0x3F70101020000000
  %1120 = lshr i32 %1112, 16
  %1121 = and i32 %1120, 255
  %1122 = uitofp i32 %1121 to float
  %1123 = fmul fast float %1122, 0x3F70101020000000
  %1124 = fmul fast float %1115, %1115
  %1125 = fmul fast float %1119, %1119
  %1126 = fmul fast float %1123, %1123
  %1127 = add i32 %50, 456
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = add i32 %1129, 0
  %1131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1131, %dx.types.Handle %96, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.ResRet.f32 %1132, 2
  %1136 = fmul fast float %1124, %1133
  %1137 = fmul fast float %1125, %1134
  %1138 = fmul fast float %1126, %1135
  br label %1139

; <label>:1139                                    ; preds = %1109, %1101
  %1140 = phi float [ %1136, %1109 ], [ 0.000000e+00, %1101 ]
  %1141 = phi float [ %1137, %1109 ], [ 0.000000e+00, %1101 ]
  %1142 = phi float [ %1138, %1109 ], [ 0.000000e+00, %1101 ]
  %1143 = fcmp fast ogt float %1140, 0.000000e+00
  %1144 = fcmp fast ogt float %1141, 0.000000e+00
  %1145 = fcmp fast ogt float %1142, 0.000000e+00
  %1146 = call float @dx.op.unary.f32(i32 23, float %1140)  ; Log(value)
  %1147 = call float @dx.op.unary.f32(i32 23, float %1141)  ; Log(value)
  %1148 = call float @dx.op.unary.f32(i32 23, float %1142)  ; Log(value)
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = lshr i32 %1150, 7
  %1152 = and i32 %1151, 32752
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = fmul fast float %1146, 0xBFE62E4300000000
  %1155 = fmul fast float %1154, %1153
  %1156 = fmul fast float %1147, 0xBFE62E4300000000
  %1157 = fmul fast float %1156, %1153
  %1158 = fmul fast float %1148, 0xBFE62E4300000000
  %1159 = fmul fast float %1158, %1153
  %1160 = select i1 %1143, float %1155, float 1.270000e+02
  %1161 = select i1 %1144, float %1157, float 1.270000e+02
  %1162 = select i1 %1145, float %1159, float 1.270000e+02
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = and i32 %1164, 10240
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1211, label %1167

; <label>:1167                                    ; preds = %1139
  %1168 = add i32 %50, 472
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = add i32 %1170, 0
  %1172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1172, %dx.types.Handle %96, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 1
  %1175 = extractvalue %dx.types.ResRet.f32 %1173, 3
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = and i32 %1177, 1048576
  %1179 = icmp ne i32 %1178, 0
  %1180 = and i32 %1177, 8192
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1197, label %1182

; <label>:1182                                    ; preds = %1167
  %1183 = extractvalue %dx.types.ResRet.f32 %1173, 2
  %1184 = select i1 %1179, float %1183, float %1174
  %1185 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1186 = select i1 %1179, float %1185, float %1174
  %1187 = add i32 %50, 96
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = lshr i32 %1189, 16
  %1191 = and i32 %1190, 255
  %1192 = uitofp i32 %1191 to float
  %1193 = fmul fast float %1192, 0x3F80101020000000
  %1194 = fmul fast float %1193, %1186
  %1195 = fmul fast float %1193, %1174
  %1196 = fmul fast float %1193, %1184
  br label %1197

; <label>:1197                                    ; preds = %1182, %1167
  %1198 = phi float [ %1194, %1182 ], [ 0.000000e+00, %1167 ]
  %1199 = phi float [ %1195, %1182 ], [ 0.000000e+00, %1167 ]
  %1200 = phi float [ %1196, %1182 ], [ 0.000000e+00, %1167 ]
  %1201 = and i32 %1177, 2048
  %1202 = icmp eq i32 %1201, 0
  br i1 %1202, label %1211, label %1203

; <label>:1203                                    ; preds = %1197
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = shl i32 %1205, 4
  %1207 = and i32 %1206, 32752
  %1208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1207)  ; LegacyF16ToF32(value)
  %1209 = fmul fast float %1208, %1175
  %1210 = call float @dx.op.binary.f32(i32 35, float %1209, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1211

; <label>:1211                                    ; preds = %1203, %1197, %1139
  %1212 = phi float [ %1198, %1203 ], [ %1198, %1197 ], [ 0.000000e+00, %1139 ]
  %1213 = phi float [ %1199, %1203 ], [ %1199, %1197 ], [ 0.000000e+00, %1139 ]
  %1214 = phi float [ %1200, %1203 ], [ %1200, %1197 ], [ 0.000000e+00, %1139 ]
  %1215 = phi float [ %1210, %1203 ], [ 0x3F70101020000000, %1197 ], [ 0x3F70101020000000, %1139 ]
  %1216 = add i32 %50, 96
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 255
  %1220 = uitofp i32 %1219 to float
  %1221 = lshr i32 %1218, 8
  %1222 = and i32 %1221, 255
  %1223 = uitofp i32 %1222 to float
  %1224 = call float @dx.op.dot3.f32(i32 55, float %974, float %975, float %976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1225 = fmul fast float %1223, %1224
  %1226 = fadd fast float %1225, %1220
  %1227 = fmul fast float %1226, 0x3F70101020000000
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  br label %1229

; <label>:1229                                    ; preds = %1211, %454
  %1230 = phi float [ 0.000000e+00, %454 ], [ %1055, %1211 ]
  %1231 = phi float [ 0.000000e+00, %454 ], [ %1056, %1211 ]
  %1232 = phi float [ 0.000000e+00, %454 ], [ %974, %1211 ]
  %1233 = phi float [ 0.000000e+00, %454 ], [ %975, %1211 ]
  %1234 = phi float [ 0.000000e+00, %454 ], [ %976, %1211 ]
  %1235 = phi float [ 0.000000e+00, %454 ], [ %1102, %1211 ]
  %1236 = phi float [ 0.000000e+00, %454 ], [ %1103, %1211 ]
  %1237 = phi float [ 0.000000e+00, %454 ], [ %1104, %1211 ]
  %1238 = phi float [ 0.000000e+00, %454 ], [ %1160, %1211 ]
  %1239 = phi float [ 0.000000e+00, %454 ], [ %1161, %1211 ]
  %1240 = phi float [ 0.000000e+00, %454 ], [ %1162, %1211 ]
  %1241 = phi float [ 0.000000e+00, %454 ], [ %1212, %1211 ]
  %1242 = phi float [ 0.000000e+00, %454 ], [ %1213, %1211 ]
  %1243 = phi float [ 0.000000e+00, %454 ], [ %1214, %1211 ]
  %1244 = phi float [ 0.000000e+00, %454 ], [ %960, %1211 ]
  %1245 = phi float [ 0.000000e+00, %454 ], [ %756, %1211 ]
  %1246 = phi float [ 0.000000e+00, %454 ], [ %1054, %1211 ]
  %1247 = phi float [ 0.000000e+00, %454 ], [ %1057, %1211 ]
  %1248 = phi float [ 0.000000e+00, %454 ], [ %1215, %1211 ]
  %1249 = phi float [ 0.000000e+00, %454 ], [ %1228, %1211 ]
  br i1 %402, label %2287, label %1250

; <label>:1250                                    ; preds = %1229
  %1251 = icmp ult i32 %460, 2
  %1252 = add i32 %50, 40
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = add i32 %50, 44
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = or i32 %1257, %1254
  %1259 = icmp eq i32 %1258, 0
  br i1 %1259, label %2287, label %1260

; <label>:1260                                    ; preds = %1250
  %1261 = and i32 %1254, 262144
  %1262 = icmp ne i32 %1261, 0
  %1263 = select i1 %1262, float %53, float 1.000000e+00
  %1264 = select i1 %1262, float %54, float 0.000000e+00
  %1265 = select i1 %1262, float %55, float 0.000000e+00
  %1266 = select i1 %1262, float %56, float 1.000000e+00
  %1267 = select i1 %1262, float %57, float %78
  %1268 = select i1 %1262, float %58, float %79
  %1269 = add i32 %50, 300
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = lshr i32 %1271, 16
  %1273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1272)  ; LegacyF16ToF32(value)
  %1274 = fmul fast float %1273, 0x3F50624DE0000000
  %1275 = add i32 %50, 104
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = lshr i32 %1277, 16
  %1279 = and i32 %1278, 255
  %1280 = lshr i32 %1277, 24
  %1281 = add i32 %50, 308
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = and i32 %1283, 65535
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = lshr i32 %1283, 16
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = add i32 %50, 48
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = lshr i32 %1290, 22
  %1292 = shl nuw nsw i32 %1291, 5
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = shl i32 %1290, 4
  %1295 = and i32 %1294, 32752
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = lshr i32 %1290, 7
  %1298 = and i32 %1297, 32752
  %1299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1298)  ; LegacyF16ToF32(value)
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 3
  %1302 = fmul fast float %1301, 1.000000e+03
  %1303 = fmul fast float %312, %1302
  %1304 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1305 = fadd fast float %1304, %302
  %1306 = fmul fast float %313, %1302
  %1307 = call float @dx.op.unary.f32(i32 22, float %1306)  ; Frc(value)
  %1308 = fadd fast float %1307, %304
  %1309 = fmul fast float %1274, %1302
  %1310 = call float @dx.op.unary.f32(i32 22, float %1309)  ; Frc(value)
  %1311 = fmul fast float %1310, 0x401921FB60000000
  %1312 = fadd fast float %1311, %1293
  %1313 = call float @dx.op.unary.f32(i32 13, float %1312)  ; Sin(value)
  %1314 = call float @dx.op.unary.f32(i32 12, float %1312)  ; Cos(value)
  %1315 = fsub fast float -0.000000e+00, %1313
  %1316 = fadd fast float %1267, -5.000000e-01
  %1317 = fadd fast float %1268, -5.000000e-01
  %1318 = fmul fast float %1285, %1316
  %1319 = fmul fast float %1287, %1317
  %1320 = fadd fast float %1318, 5.000000e-01
  %1321 = fadd fast float %1319, 5.000000e-01
  %1322 = fmul fast float %1296, %1320
  %1323 = fmul fast float %1299, %1321
  %1324 = fmul fast float %1314, %1322
  %1325 = call float @dx.op.tertiary.f32(i32 46, float %1315, float %1323, float %1324)  ; FMad(a,b,c)
  %1326 = fmul fast float %1313, %1322
  %1327 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %1323, float %1326)  ; FMad(a,b,c)
  %1328 = fadd fast float %1305, %1325
  %1329 = fadd fast float %1308, %1327
  %1330 = icmp ugt i32 %1279, 1
  %1331 = icmp ugt i32 %1277, 33554431
  %1332 = or i1 %1331, %1330
  br i1 %1332, label %1333, label %1358

; <label>:1333                                    ; preds = %1260
  %1334 = add i32 %50, 244
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = lshr i32 %1336, 16
  %1338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1337)  ; LegacyF16ToF32(value)
  %1339 = fmul fast float %1301, %1338
  %1340 = call float @dx.op.unary.f32(i32 22, float %1339)  ; Frc(value)
  %1341 = mul nuw nsw i32 %1279, %1280
  %1342 = uitofp i32 %1341 to float
  %1343 = fmul fast float %1340, %1342
  %1344 = call float @dx.op.unary.f32(i32 27, float %1343)  ; Round_ni(value)
  %1345 = fptoui float %1344 to i32
  %1346 = urem i32 %1345, %1279
  %1347 = udiv i32 %1345, %1280
  %1348 = call float @dx.op.unary.f32(i32 22, float %1328)  ; Frc(value)
  %1349 = call float @dx.op.unary.f32(i32 22, float %1329)  ; Frc(value)
  %1350 = uitofp i32 %1346 to float
  %1351 = uitofp i32 %1347 to float
  %1352 = fadd fast float %1348, %1350
  %1353 = fadd fast float %1349, %1351
  %1354 = uitofp i32 %1279 to float
  %1355 = uitofp i32 %1280 to float
  %1356 = fdiv fast float %1352, %1354
  %1357 = fdiv fast float %1353, %1355
  br label %1358

; <label>:1358                                    ; preds = %1333, %1260
  %1359 = phi float [ %1356, %1333 ], [ %1328, %1260 ]
  %1360 = phi float [ %1357, %1333 ], [ %1329, %1260 ]
  %1361 = and i32 %1254, 16777216
  %1362 = icmp eq i32 %1361, 0
  br i1 %1362, label %1472, label %1363

; <label>:1363                                    ; preds = %1358
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 0
  %1366 = extractvalue %dx.types.CBufRet.f32 %1364, 1
  %1367 = extractvalue %dx.types.CBufRet.f32 %1364, 2
  %1368 = fadd fast float %1365, %154
  %1369 = fadd fast float %1366, %155
  %1370 = fadd fast float %1367, %156
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 0
  %1373 = call float @dx.op.unary.f32(i32 7, float %1372)  ; Saturate(value)
  %1374 = icmp eq i32 %51, 65535
  br i1 %1374, label %1469, label %1375

; <label>:1375                                    ; preds = %1363
  %1376 = lshr i32 %51, 1
  %1377 = shl i32 %1376, 2
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = and i32 %51, 1
  %1381 = icmp ne i32 %1380, 0
  %1382 = lshr i32 %1379, 16
  %1383 = and i32 %1379, 65535
  %1384 = select i1 %1381, i32 %1382, i32 %1383
  %1385 = icmp eq i32 %1384, 65535
  br i1 %1385, label %1465, label %1386

; <label>:1386                                    ; preds = %1375
  %1387 = mul nuw nsw i32 %1384, 40
  %1388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.ResRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.ResRet.f32 %1388, 2
  %1392 = add nuw nsw i32 %1387, 12
  %1393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.ResRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.ResRet.f32 %1393, 2
  %1397 = add nuw nsw i32 %1387, 24
  %1398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.f32 %1398, 0
  %1400 = extractvalue %dx.types.ResRet.f32 %1398, 1
  %1401 = extractvalue %dx.types.ResRet.f32 %1398, 2
  %1402 = add nuw nsw i32 %1387, 36
  %1403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = fsub fast float %1368, %1389
  %1406 = fsub fast float %1369, %1390
  %1407 = fsub fast float %1370, %1391
  %1408 = fmul fast float %1404, %1405
  %1409 = fmul fast float %1404, %1406
  %1410 = fmul fast float %1404, %1407
  %1411 = call float @dx.op.unary.f32(i32 27, float %1408)  ; Round_ni(value)
  %1412 = call float @dx.op.unary.f32(i32 27, float %1409)  ; Round_ni(value)
  %1413 = call float @dx.op.unary.f32(i32 27, float %1410)  ; Round_ni(value)
  %1414 = fadd fast float %1411, 5.000000e-01
  %1415 = fadd fast float %1412, 5.000000e-01
  %1416 = fadd fast float %1413, 5.000000e-01
  %1417 = fmul fast float %1414, %1394
  %1418 = fmul fast float %1415, %1395
  %1419 = fmul fast float %1416, %1396
  %1420 = shl i32 %51, 2
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = add i32 %1422, 0
  %1424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1423, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1425 = call float @dx.op.unary.f32(i32 22, float %1417)  ; Frc(value)
  %1426 = call float @dx.op.unary.f32(i32 22, float %1418)  ; Frc(value)
  %1427 = call float @dx.op.unary.f32(i32 22, float %1419)  ; Frc(value)
  %1428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1424, %dx.types.Handle %45, float %1425, float %1426, float %1427, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1429 = extractvalue %dx.types.ResRet.f32 %1428, 0
  %1430 = extractvalue %dx.types.ResRet.f32 %1428, 1
  %1431 = extractvalue %dx.types.ResRet.f32 %1428, 2
  %1432 = fmul fast float %1429, 1.023000e+03
  %1433 = fmul fast float %1430, 1.023000e+03
  %1434 = fmul fast float %1431, 1.023000e+03
  %1435 = fadd fast float %1432, 5.000000e-01
  %1436 = fadd fast float %1433, 5.000000e-01
  %1437 = fadd fast float %1434, 5.000000e-01
  %1438 = call float @dx.op.unary.f32(i32 27, float %1435)  ; Round_ni(value)
  %1439 = call float @dx.op.unary.f32(i32 27, float %1436)  ; Round_ni(value)
  %1440 = call float @dx.op.unary.f32(i32 27, float %1437)  ; Round_ni(value)
  %1441 = fsub fast float %1408, %1411
  %1442 = fsub fast float %1409, %1412
  %1443 = fsub fast float %1410, %1413
  %1444 = fmul fast float %1441, 7.500000e-01
  %1445 = fmul fast float %1442, 7.500000e-01
  %1446 = fmul fast float %1443, 7.500000e-01
  %1447 = fadd fast float %1411, 1.250000e-01
  %1448 = fadd fast float %1447, %1444
  %1449 = fadd fast float %1448, %1438
  %1450 = fadd fast float %1412, 1.250000e-01
  %1451 = fadd fast float %1450, %1445
  %1452 = fadd fast float %1451, %1439
  %1453 = fadd fast float %1413, 1.250000e-01
  %1454 = fadd fast float %1453, %1446
  %1455 = fadd fast float %1454, %1440
  %1456 = fmul fast float %1449, %1399
  %1457 = fmul fast float %1452, %1400
  %1458 = fmul fast float %1455, %1401
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = add i32 %1460, 0
  %1462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1462, %dx.types.Handle %43, float %1456, float %1457, float %1458, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1464 = extractvalue %dx.types.ResRet.f32 %1463, 0
  br label %1465

; <label>:1465                                    ; preds = %1386, %1375
  %1466 = phi float [ %1464, %1386 ], [ -1.000000e+00, %1375 ]
  %1467 = fadd fast float %1466, %1373
  %1468 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  br label %1469

; <label>:1469                                    ; preds = %1465, %1363
  %1470 = phi float [ %1468, %1465 ], [ %1373, %1363 ]
  %1471 = fmul fast float %1470, %457
  br label %1472

; <label>:1472                                    ; preds = %1469, %1358
  %1473 = phi float [ %1471, %1469 ], [ %457, %1358 ]
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 256
  %1477 = icmp eq i32 %1476, 0
  br i1 %1477, label %1524, label %1478

; <label>:1478                                    ; preds = %1472
  %1479 = add i32 %50, 428
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = add i32 %1481, 0
  %1483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1484 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1483, %dx.types.Handle %96, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1485 = extractvalue %dx.types.ResRet.f32 %1484, 0
  %1486 = add i32 %50, 116
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = shl i32 %1488, 4
  %1490 = and i32 %1489, 32752
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = lshr i32 %1488, 7
  %1493 = and i32 %1492, 32752
  %1494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1493)  ; LegacyF16ToF32(value)
  %1495 = fsub fast float 1.000000e+00, %1473
  %1496 = call float @dx.op.binary.f32(i32 35, float %1495, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1497 = bitcast float %1473 to i32
  %1498 = sitofp i32 %1497 to float
  %1499 = fadd fast float %1498, 0xC1CFBF8940000000
  %1500 = fmul fast float %1494, %1499
  %1501 = fadd fast float %1500, 0x41CFBF8940000000
  %1502 = fptosi float %1501 to i32
  %1503 = bitcast i32 %1502 to float
  %1504 = bitcast float %1496 to i32
  %1505 = sitofp i32 %1504 to float
  %1506 = fadd fast float %1505, 0xC1CFBF8940000000
  %1507 = fmul fast float %1506, %1494
  %1508 = fadd fast float %1507, 0x41CFBF8940000000
  %1509 = fptosi float %1508 to i32
  %1510 = bitcast i32 %1509 to float
  %1511 = fmul fast float %1503, %1491
  %1512 = fmul fast float %1510, %1491
  %1513 = fsub fast float %1496, %1511
  %1514 = fadd fast float %1512, %1496
  %1515 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  %1516 = call float @dx.op.unary.f32(i32 7, float %1514)  ; Saturate(value)
  %1517 = fsub fast float %1485, %1515
  %1518 = fsub fast float %1516, %1515
  %1519 = bitcast float %1518 to i32
  %1520 = sub nsw i32 2129859010, %1519
  %1521 = bitcast i32 %1520 to float
  %1522 = fmul fast float %1521, %1517
  %1523 = call float @dx.op.unary.f32(i32 7, float %1522)  ; Saturate(value)
  br label %1524

; <label>:1524                                    ; preds = %1478, %1472
  %1525 = phi float [ %1523, %1478 ], [ %1473, %1472 ]
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = and i32 %1527, 128
  %1529 = icmp eq i32 %1528, 0
  br i1 %1529, label %1546, label %1530

; <label>:1530                                    ; preds = %1524
  %1531 = add i32 %50, 412
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = add i32 %1533, 0
  %1535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1535, %dx.types.Handle %96, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1537 = extractvalue %dx.types.ResRet.f32 %1536, 0
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = and i32 %1539, 524288
  %1541 = icmp ne i32 %1540, 0
  %1542 = fcmp fast ogt float %1537, 0x3FE0101020000000
  %1543 = select i1 %1542, float 1.000000e+00, float 0.000000e+00
  %1544 = select i1 %1541, float %1543, float %1537
  %1545 = fmul fast float %1544, %1525
  br label %1546

; <label>:1546                                    ; preds = %1530, %1524
  %1547 = phi float [ %1545, %1530 ], [ %1525, %1524 ]
  %1548 = fcmp fast ult float %1547, 0x3F70101020000000
  br i1 %1548, label %2287, label %1549

; <label>:1549                                    ; preds = %1546
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = and i32 %1551, 16
  %1553 = icmp eq i32 %1552, 0
  br i1 %1553, label %1752, label %1554

; <label>:1554                                    ; preds = %1549
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1275, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = add i32 %50, 364
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = add i32 %1559, 0
  %1561 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1560, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1562 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1561, %dx.types.Handle %95, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1563 = extractvalue %dx.types.ResRet.f32 %1562, 0
  %1564 = extractvalue %dx.types.ResRet.f32 %1562, 1
  %1565 = extractvalue %dx.types.ResRet.f32 %1562, 2
  %1566 = extractvalue %dx.types.ResRet.f32 %1562, 3
  %1567 = and i32 %1556, 255
  %1568 = uitofp i32 %1567 to float
  %1569 = lshr i32 %1556, 8
  %1570 = and i32 %1569, 255
  %1571 = uitofp i32 %1570 to float
  %1572 = fmul fast float %1566, %1568
  %1573 = fadd fast float %1572, %1571
  %1574 = fmul fast float %1573, 0x3F70101000000000
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = and i32 %1576, 512
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %1587, label %1579

; <label>:1579                                    ; preds = %1554
  %1580 = add i32 %50, 444
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = add i32 %1582, 0
  %1584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1584, %dx.types.Handle %96, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1586 = extractvalue %dx.types.ResRet.f32 %1585, 0
  br label %1587

; <label>:1587                                    ; preds = %1579, %1554
  %1588 = phi float [ %1586, %1579 ], [ 1.000000e+00, %1554 ]
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = and i32 %1590, 33554432
  %1592 = icmp eq i32 %1591, 0
  br i1 %1592, label %1699, label %1593

; <label>:1593                                    ; preds = %1587
  %1594 = add i32 %50, 240
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = and i32 %1596, 65535
  %1598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1597)  ; LegacyF16ToF32(value)
  %1599 = lshr i32 %1596, 16
  %1600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1599)  ; LegacyF16ToF32(value)
  %1601 = add i32 %50, 244
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 65535
  %1605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1604)  ; LegacyF16ToF32(value)
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = lshr i32 %1607, 24
  %1609 = uitofp i32 %1608 to float
  %1610 = fmul fast float %1609, 0x3F70101020000000
  %1611 = and i32 %1607, 255
  %1612 = uitofp i32 %1611 to float
  %1613 = fmul fast float %1612, 0x3F70101020000000
  %1614 = lshr i32 %1607, 8
  %1615 = and i32 %1614, 255
  %1616 = uitofp i32 %1615 to float
  %1617 = fmul fast float %1616, 0x3F70101020000000
  %1618 = lshr i32 %1607, 16
  %1619 = and i32 %1618, 255
  %1620 = uitofp i32 %1619 to float
  %1621 = fmul fast float %1620, 0x3F70101020000000
  %1622 = add i32 %50, 236
  %1623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1622, i32 undef)  ; BufferLoad(srv,index,wot)
  %1624 = extractvalue %dx.types.ResRet.i32 %1623, 0
  %1625 = lshr i32 %1624, 24
  %1626 = uitofp i32 %1625 to float
  %1627 = fmul fast float %1626, 0x3F70101020000000
  %1628 = and i32 %1624, 255
  %1629 = uitofp i32 %1628 to float
  %1630 = fmul fast float %1629, 0x3F70101020000000
  %1631 = lshr i32 %1624, 8
  %1632 = and i32 %1631, 255
  %1633 = uitofp i32 %1632 to float
  %1634 = fmul fast float %1633, 0x3F70101020000000
  %1635 = lshr i32 %1624, 16
  %1636 = and i32 %1635, 255
  %1637 = uitofp i32 %1636 to float
  %1638 = fmul fast float %1637, 0x3F70101020000000
  %1639 = bitcast float %1563 to i32
  %1640 = ashr i32 %1639, 1
  %1641 = sub nsw i32 1597463174, %1640
  %1642 = bitcast i32 %1641 to float
  %1643 = fmul fast float %1563, 5.000000e-01
  %1644 = fmul fast float %1642, %1642
  %1645 = fmul fast float %1644, %1643
  %1646 = fsub fast float 1.500000e+00, %1645
  %1647 = fmul fast float %1642, %1563
  %1648 = fmul fast float %1647, %1646
  %1649 = bitcast float %1564 to i32
  %1650 = ashr i32 %1649, 1
  %1651 = sub nsw i32 1597463174, %1650
  %1652 = bitcast i32 %1651 to float
  %1653 = fmul fast float %1564, 5.000000e-01
  %1654 = fmul fast float %1652, %1652
  %1655 = fmul fast float %1654, %1653
  %1656 = fsub fast float 1.500000e+00, %1655
  %1657 = fmul fast float %1652, %1564
  %1658 = fmul fast float %1657, %1656
  %1659 = bitcast float %1565 to i32
  %1660 = ashr i32 %1659, 1
  %1661 = sub nsw i32 1597463174, %1660
  %1662 = bitcast i32 %1661 to float
  %1663 = fmul fast float %1565, 5.000000e-01
  %1664 = fmul fast float %1662, %1662
  %1665 = fmul fast float %1664, %1663
  %1666 = fsub fast float 1.500000e+00, %1665
  %1667 = fmul fast float %1662, %1565
  %1668 = fmul fast float %1667, %1666
  %1669 = fsub fast float %1648, %1630
  %1670 = fsub fast float %1658, %1634
  %1671 = fsub fast float %1668, %1638
  %1672 = fmul fast float %1669, %1598
  %1673 = fmul fast float %1670, %1600
  %1674 = fmul fast float %1671, %1605
  %1675 = fadd fast float %1672, %1613
  %1676 = fadd fast float %1673, %1617
  %1677 = fadd fast float %1674, %1621
  %1678 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1679 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1680 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1681 = fmul fast float %1678, %1678
  %1682 = fmul fast float %1679, %1679
  %1683 = fmul fast float %1680, %1680
  %1684 = fsub fast float %1681, %1563
  %1685 = fsub fast float %1682, %1564
  %1686 = fsub fast float %1683, %1565
  %1687 = fmul fast float %1684, %1588
  %1688 = fmul fast float %1685, %1588
  %1689 = fmul fast float %1686, %1588
  %1690 = fadd fast float %1687, %1563
  %1691 = fadd fast float %1688, %1564
  %1692 = fadd fast float %1689, %1565
  %1693 = fadd fast float %1610, %1574
  %1694 = fsub fast float %1693, %1627
  %1695 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1696 = fsub fast float %1695, %1574
  %1697 = fmul fast float %1696, %1588
  %1698 = fadd fast float %1697, %1574
  br label %1752

; <label>:1699                                    ; preds = %1587
  %1700 = and i32 %1590, 134217728
  %1701 = icmp eq i32 %1700, 0
  br i1 %1701, label %1736, label %1702

; <label>:1702                                    ; preds = %1699
  %1703 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %1704 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1705 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %1706 = fadd fast float %1703, -5.000000e-01
  %1707 = fadd fast float %1704, -5.000000e-01
  %1708 = fadd fast float %1705, -5.000000e-01
  %1709 = fmul fast float %1706, %1588
  %1710 = fmul fast float %1707, %1588
  %1711 = fmul fast float %1708, %1588
  %1712 = fadd fast float %1709, 5.000000e-01
  %1713 = fadd fast float %1710, 5.000000e-01
  %1714 = fadd fast float %1711, 5.000000e-01
  %1715 = call float @dx.op.unary.f32(i32 24, float %1563)  ; Sqrt(value)
  %1716 = call float @dx.op.unary.f32(i32 24, float %1564)  ; Sqrt(value)
  %1717 = call float @dx.op.unary.f32(i32 24, float %1565)  ; Sqrt(value)
  %1718 = fmul fast float %1712, 2.000000e+00
  %1719 = fsub fast float 1.000000e+00, %1718
  %1720 = fmul fast float %1719, %1715
  %1721 = fadd fast float %1720, %1718
  %1722 = fmul fast float %1721, %1715
  %1723 = fmul fast float %1713, 2.000000e+00
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1724, %1716
  %1726 = fadd fast float %1725, %1723
  %1727 = fmul fast float %1726, %1716
  %1728 = fmul fast float %1714, 2.000000e+00
  %1729 = fsub fast float 1.000000e+00, %1728
  %1730 = fmul fast float %1729, %1717
  %1731 = fadd fast float %1730, %1728
  %1732 = fmul fast float %1731, %1717
  %1733 = fmul fast float %1722, %1722
  %1734 = fmul fast float %1727, %1727
  %1735 = fmul fast float %1732, %1732
  br label %1752

; <label>:1736                                    ; preds = %1699
  %1737 = fmul fast float %289, %289
  %1738 = fmul fast float %293, %293
  %1739 = fmul fast float %297, %297
  %1740 = fadd fast float %1737, -1.000000e+00
  %1741 = fadd fast float %1738, -1.000000e+00
  %1742 = fadd fast float %1739, -1.000000e+00
  %1743 = fmul fast float %1588, %1740
  %1744 = fmul fast float %1588, %1741
  %1745 = fmul fast float %1588, %1742
  %1746 = fadd fast float %1743, 1.000000e+00
  %1747 = fadd fast float %1744, 1.000000e+00
  %1748 = fadd fast float %1745, 1.000000e+00
  %1749 = fmul fast float %1746, %1563
  %1750 = fmul fast float %1747, %1564
  %1751 = fmul fast float %1748, %1565
  br label %1752

; <label>:1752                                    ; preds = %1736, %1702, %1593, %1549
  %1753 = phi float [ %1698, %1593 ], [ %1574, %1702 ], [ %1574, %1736 ], [ 0x3FA23C0BE0000000, %1549 ]
  %1754 = phi float [ %1690, %1593 ], [ %1733, %1702 ], [ %1749, %1736 ], [ 1.000000e+00, %1549 ]
  %1755 = phi float [ %1691, %1593 ], [ %1734, %1702 ], [ %1750, %1736 ], [ 1.000000e+00, %1549 ]
  %1756 = phi float [ %1692, %1593 ], [ %1735, %1702 ], [ %1751, %1736 ], [ 1.000000e+00, %1549 ]
  %1757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1758 = extractvalue %dx.types.CBufRet.i32 %1757, 1
  %1759 = and i32 %1758, 1
  %1760 = icmp ne i32 %1759, 0
  %1761 = add i32 %50, 356
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = and i32 %1763, 32
  %1765 = icmp ne i32 %1764, 0
  %1766 = and i1 %1760, %1765
  %1767 = select i1 %1766, float 1.000000e+00, float %1754
  %1768 = select i1 %1766, float 0x3FD3333340000000, float %1755
  %1769 = select i1 %1766, float 0x3FD3333340000000, float %1756
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = and i32 %1771, 32
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %1846, label %1774

; <label>:1774                                    ; preds = %1752
  %1775 = add i32 %50, 108
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = add i32 %50, 380
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = add i32 %1780, 0
  %1782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1782, %dx.types.Handle %95, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1784 = extractvalue %dx.types.ResRet.f32 %1783, 0
  %1785 = extractvalue %dx.types.ResRet.f32 %1783, 1
  %1786 = extractvalue %dx.types.ResRet.f32 %1783, 2
  %1787 = extractvalue %dx.types.ResRet.f32 %1783, 3
  %1788 = and i32 %1777, 255
  %1789 = uitofp i32 %1788 to float
  %1790 = lshr i32 %1777, 8
  %1791 = and i32 %1790, 255
  %1792 = uitofp i32 %1791 to float
  %1793 = lshr i32 %1777, 16
  %1794 = and i32 %1793, 255
  %1795 = uitofp i32 %1794 to float
  %1796 = fmul fast float %1795, 0x3F70101000000000
  %1797 = fmul fast float %1784, %1789
  %1798 = fadd fast float %1797, %1792
  %1799 = fmul fast float %1798, 0x3F70101000000000
  %1800 = fadd fast float %1785, -5.000000e-01
  %1801 = fadd fast float %1787, -5.000000e-01
  %1802 = fmul fast float %1800, %1796
  %1803 = fmul fast float %1801, %1796
  %1804 = fadd fast float %1802, 5.000000e-01
  %1805 = fadd fast float %1803, 5.000000e-01
  %1806 = fmul fast float %1804, 2.000000e+00
  %1807 = fadd fast float %1806, -1.000000e+00
  %1808 = fmul fast float %1805, 2.000000e+00
  %1809 = fadd fast float %1808, -1.000000e+00
  %1810 = fadd fast float %1807, %1809
  %1811 = fmul fast float %1810, 5.000000e-01
  %1812 = fsub fast float %1807, %1809
  %1813 = fmul fast float %1812, 5.000000e-01
  %1814 = call float @dx.op.unary.f32(i32 6, float %1811)  ; FAbs(value)
  %1815 = fsub fast float 1.000000e+00, %1814
  %1816 = call float @dx.op.unary.f32(i32 6, float %1813)  ; FAbs(value)
  %1817 = fsub fast float %1815, %1816
  %1818 = call float @dx.op.dot3.f32(i32 55, float %1811, float %1813, float %1817, float %1811, float %1813, float %1817)  ; Dot3(ax,ay,az,bx,by,bz)
  %1819 = call float @dx.op.unary.f32(i32 25, float %1818)  ; Rsqrt(value)
  %1820 = fmul fast float %1811, %1819
  %1821 = fmul fast float %1813, %1819
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = and i32 %1823, 67108864
  %1825 = icmp eq i32 %1824, 0
  br i1 %1825, label %1842, label %1826

; <label>:1826                                    ; preds = %1774
  %1827 = add i32 %50, 296
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1827, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = and i32 %1829, 65535
  %1831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1830)  ; LegacyF16ToF32(value)
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = and i32 %1833, 65535
  %1835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1834)  ; LegacyF16ToF32(value)
  %1836 = lshr i32 %1829, 16
  %1837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1836)  ; LegacyF16ToF32(value)
  %1838 = fsub fast float %1799, %1837
  %1839 = fmul fast float %1838, %1831
  %1840 = fadd fast float %1839, %1835
  %1841 = call float @dx.op.unary.f32(i32 7, float %1840)  ; Saturate(value)
  br label %1842

; <label>:1842                                    ; preds = %1826, %1774
  %1843 = phi float [ %1841, %1826 ], [ %1799, %1774 ]
  %1844 = call float @dx.op.dot2.f32(i32 54, float %1820, float %1821, float %1263, float %1264)  ; Dot2(ax,ay,bx,by)
  %1845 = call float @dx.op.dot2.f32(i32 54, float %1820, float %1821, float %1265, float %1266)  ; Dot2(ax,ay,bx,by)
  br label %1846

; <label>:1846                                    ; preds = %1842, %1752
  %1847 = phi float [ %1843, %1842 ], [ 0x3FD6666660000000, %1752 ]
  %1848 = phi float [ %1844, %1842 ], [ 0.000000e+00, %1752 ]
  %1849 = phi float [ %1845, %1842 ], [ 0.000000e+00, %1752 ]
  %1850 = phi float [ %1786, %1842 ], [ 1.000000e+00, %1752 ]
  %1851 = add i32 %50, 176
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = lshr i32 %1853, 22
  %1855 = shl nuw nsw i32 %1854, 5
  %1856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1855)  ; LegacyF16ToF32(value)
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = and i32 %1858, 64
  %1860 = icmp eq i32 %1859, 0
  br i1 %1860, label %1894, label %1861

; <label>:1861                                    ; preds = %1846
  %1862 = add i32 %50, 396
  %1863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1862, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.i32 %1863, 0
  %1865 = add i32 %1864, 0
  %1866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = and i32 %1868, 131072
  %1870 = icmp eq i32 %1869, 0
  %1871 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1866, %dx.types.Handle %95, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.ResRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.ResRet.f32 %1871, 2
  %1875 = fmul fast float %1872, %277
  %1876 = fmul fast float %1873, %280
  %1877 = fmul fast float %1874, %283
  br i1 %1870, label %1884, label %1878

; <label>:1878                                    ; preds = %1861
  %1879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1880 = extractvalue %dx.types.CBufRet.f32 %1879, 0
  %1881 = fmul fast float %1880, %1875
  %1882 = fmul fast float %1880, %1876
  %1883 = fmul fast float %1880, %1877
  br label %1884

; <label>:1884                                    ; preds = %1878, %1861
  %1885 = phi float [ %1881, %1878 ], [ %1875, %1861 ]
  %1886 = phi float [ %1882, %1878 ], [ %1876, %1861 ]
  %1887 = phi float [ %1883, %1878 ], [ %1877, %1861 ]
  %1888 = fmul fast float %1885, %1856
  %1889 = select i1 %215, float %1888, float %1885
  %1890 = call float @dx.op.dot3.f32(i32 55, float %1889, float %1886, float %1887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1891 = select i1 %215, float 0.000000e+00, float %1885
  %1892 = select i1 %215, float %1890, float %1886
  %1893 = select i1 %215, float 0.000000e+00, float %1887
  br label %1894

; <label>:1894                                    ; preds = %1884, %1846
  %1895 = phi float [ %1891, %1884 ], [ 0.000000e+00, %1846 ]
  %1896 = phi float [ %1892, %1884 ], [ 0.000000e+00, %1846 ]
  %1897 = phi float [ %1893, %1884 ], [ 0.000000e+00, %1846 ]
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = and i32 %1899, 1024
  %1901 = icmp eq i32 %1900, 0
  br i1 %1901, label %1932, label %1902

; <label>:1902                                    ; preds = %1894
  %1903 = add i32 %50, 168
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = and i32 %1905, 255
  %1907 = uitofp i32 %1906 to float
  %1908 = fmul fast float %1907, 0x3F70101020000000
  %1909 = lshr i32 %1905, 8
  %1910 = and i32 %1909, 255
  %1911 = uitofp i32 %1910 to float
  %1912 = fmul fast float %1911, 0x3F70101020000000
  %1913 = lshr i32 %1905, 16
  %1914 = and i32 %1913, 255
  %1915 = uitofp i32 %1914 to float
  %1916 = fmul fast float %1915, 0x3F70101020000000
  %1917 = fmul fast float %1908, %1908
  %1918 = fmul fast float %1912, %1912
  %1919 = fmul fast float %1916, %1916
  %1920 = add i32 %50, 460
  %1921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1920, i32 undef)  ; BufferLoad(srv,index,wot)
  %1922 = extractvalue %dx.types.ResRet.i32 %1921, 0
  %1923 = add i32 %1922, 0
  %1924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1924, %dx.types.Handle %96, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = extractvalue %dx.types.ResRet.f32 %1925, 1
  %1928 = extractvalue %dx.types.ResRet.f32 %1925, 2
  %1929 = fmul fast float %1917, %1926
  %1930 = fmul fast float %1918, %1927
  %1931 = fmul fast float %1919, %1928
  br label %1932

; <label>:1932                                    ; preds = %1902, %1894
  %1933 = phi float [ %1929, %1902 ], [ 0.000000e+00, %1894 ]
  %1934 = phi float [ %1930, %1902 ], [ 0.000000e+00, %1894 ]
  %1935 = phi float [ %1931, %1902 ], [ 0.000000e+00, %1894 ]
  %1936 = fcmp fast ogt float %1933, 0.000000e+00
  %1937 = fcmp fast ogt float %1934, 0.000000e+00
  %1938 = fcmp fast ogt float %1935, 0.000000e+00
  %1939 = call float @dx.op.unary.f32(i32 23, float %1933)  ; Log(value)
  %1940 = call float @dx.op.unary.f32(i32 23, float %1934)  ; Log(value)
  %1941 = call float @dx.op.unary.f32(i32 23, float %1935)  ; Log(value)
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = lshr i32 %1943, 7
  %1945 = and i32 %1944, 32752
  %1946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1945)  ; LegacyF16ToF32(value)
  %1947 = fmul fast float %1939, 0xBFE62E4300000000
  %1948 = fmul fast float %1947, %1946
  %1949 = fmul fast float %1940, 0xBFE62E4300000000
  %1950 = fmul fast float %1949, %1946
  %1951 = fmul fast float %1941, 0xBFE62E4300000000
  %1952 = fmul fast float %1951, %1946
  %1953 = select i1 %1936, float %1948, float 1.270000e+02
  %1954 = select i1 %1937, float %1950, float 1.270000e+02
  %1955 = select i1 %1938, float %1952, float 1.270000e+02
  %1956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.i32 %1956, 0
  %1958 = and i32 %1957, 10240
  %1959 = icmp eq i32 %1958, 0
  br i1 %1959, label %2004, label %1960

; <label>:1960                                    ; preds = %1932
  %1961 = add i32 %50, 476
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = add i32 %1963, 0
  %1965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1964, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1966 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1965, %dx.types.Handle %96, float %1359, float %1360, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 1
  %1968 = extractvalue %dx.types.ResRet.f32 %1966, 3
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = and i32 %1970, 1048576
  %1972 = icmp ne i32 %1971, 0
  %1973 = and i32 %1970, 8192
  %1974 = icmp eq i32 %1973, 0
  br i1 %1974, label %1990, label %1975

; <label>:1975                                    ; preds = %1960
  %1976 = extractvalue %dx.types.ResRet.f32 %1966, 2
  %1977 = select i1 %1972, float %1976, float %1967
  %1978 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %1979 = select i1 %1972, float %1978, float %1967
  %1980 = add i32 %50, 112
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = lshr i32 %1982, 16
  %1984 = and i32 %1983, 255
  %1985 = uitofp i32 %1984 to float
  %1986 = fmul fast float %1985, 0x3F80101020000000
  %1987 = fmul fast float %1986, %1979
  %1988 = fmul fast float %1986, %1967
  %1989 = fmul fast float %1986, %1977
  br label %1990

; <label>:1990                                    ; preds = %1975, %1960
  %1991 = phi float [ %1987, %1975 ], [ 0.000000e+00, %1960 ]
  %1992 = phi float [ %1988, %1975 ], [ 0.000000e+00, %1960 ]
  %1993 = phi float [ %1989, %1975 ], [ 0.000000e+00, %1960 ]
  %1994 = and i32 %1970, 2048
  %1995 = icmp eq i32 %1994, 0
  br i1 %1995, label %2004, label %1996

; <label>:1996                                    ; preds = %1990
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = shl i32 %1998, 4
  %2000 = and i32 %1999, 32752
  %2001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2000)  ; LegacyF16ToF32(value)
  %2002 = fmul fast float %2001, %1968
  %2003 = call float @dx.op.binary.f32(i32 35, float %2002, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2004

; <label>:2004                                    ; preds = %1996, %1990, %1932
  %2005 = phi float [ %1991, %1996 ], [ %1991, %1990 ], [ 0.000000e+00, %1932 ]
  %2006 = phi float [ %1992, %1996 ], [ %1992, %1990 ], [ 0.000000e+00, %1932 ]
  %2007 = phi float [ %1993, %1996 ], [ %1993, %1990 ], [ 0.000000e+00, %1932 ]
  %2008 = phi float [ %2003, %1996 ], [ 0x3F70101020000000, %1990 ], [ 0x3F70101020000000, %1932 ]
  %2009 = add i32 %50, 112
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = and i32 %2011, 255
  %2013 = uitofp i32 %2012 to float
  %2014 = lshr i32 %2011, 8
  %2015 = and i32 %2014, 255
  %2016 = uitofp i32 %2015 to float
  %2017 = call float @dx.op.dot3.f32(i32 55, float %1767, float %1768, float %1769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2018 = fmul fast float %2016, %2017
  %2019 = fadd fast float %2018, %2013
  %2020 = fmul fast float %2019, 0x3F70101020000000
  %2021 = call float @dx.op.unary.f32(i32 7, float %2020)  ; Saturate(value)
  br i1 %1251, label %2022, label %2057

; <label>:2022                                    ; preds = %2004
  %2023 = fmul fast float %2008, 2.000000e+00
  %2024 = fcmp fast olt float %1953, 1.270000e+02
  %2025 = fcmp fast olt float %1954, 1.270000e+02
  %2026 = fcmp fast olt float %1955, 1.270000e+02
  %2027 = fmul fast float %1953, 0xBFF7154760000000
  %2028 = fmul fast float %2027, %2023
  %2029 = fmul fast float %1954, 0xBFF7154760000000
  %2030 = fmul fast float %2029, %2023
  %2031 = fmul fast float %1955, 0xBFF7154760000000
  %2032 = fmul fast float %2031, %2023
  %2033 = call float @dx.op.unary.f32(i32 21, float %2028)  ; Exp(value)
  %2034 = call float @dx.op.unary.f32(i32 21, float %2030)  ; Exp(value)
  %2035 = call float @dx.op.unary.f32(i32 21, float %2032)  ; Exp(value)
  %2036 = call float @dx.op.unary.f32(i32 7, float %2033)  ; Saturate(value)
  %2037 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  %2038 = call float @dx.op.unary.f32(i32 7, float %2035)  ; Saturate(value)
  %2039 = fadd fast float %2036, -1.000000e+00
  %2040 = select i1 %2024, float %2039, float -1.000000e+00
  %2041 = fadd fast float %2037, -1.000000e+00
  %2042 = select i1 %2025, float %2041, float -1.000000e+00
  %2043 = fadd fast float %2038, -1.000000e+00
  %2044 = select i1 %2026, float %2043, float -1.000000e+00
  %2045 = fmul fast float %2040, %1547
  %2046 = fmul fast float %2042, %1547
  %2047 = fmul fast float %2044, %1547
  %2048 = fadd fast float %2045, 1.000000e+00
  %2049 = fadd fast float %2046, 1.000000e+00
  %2050 = fadd fast float %2047, 1.000000e+00
  %2051 = fmul fast float %2048, %1232
  %2052 = fmul fast float %2049, %1233
  %2053 = fmul fast float %2050, %1234
  %2054 = fmul fast float %2048, %1235
  %2055 = fmul fast float %2049, %1236
  %2056 = fmul fast float %2050, %1237
  br label %2057

; <label>:2057                                    ; preds = %2022, %2004
  %2058 = phi float [ %2051, %2022 ], [ %1232, %2004 ]
  %2059 = phi float [ %2052, %2022 ], [ %1233, %2004 ]
  %2060 = phi float [ %2053, %2022 ], [ %1234, %2004 ]
  %2061 = phi float [ %2054, %2022 ], [ %1235, %2004 ]
  %2062 = phi float [ %2055, %2022 ], [ %1236, %2004 ]
  %2063 = phi float [ %2056, %2022 ], [ %1237, %2004 ]
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = and i32 %2065, 3
  %2067 = icmp eq i32 %2066, 3
  br i1 %2067, label %2146, label %2068

; <label>:2068                                    ; preds = %2057
  %2069 = and i32 %2065, 16
  %2070 = icmp ne i32 %2069, 0
  %2071 = select i1 %2070, float %1547, float 0.000000e+00
  %2072 = icmp eq i32 %2066, 0
  br i1 %2072, label %2073, label %2101

; <label>:2073                                    ; preds = %2068
  %2074 = and i32 %2065, 64
  %2075 = icmp ne i32 %2074, 0
  %2076 = select i1 %2075, float %1547, float 0.000000e+00
  %2077 = fsub fast float %1767, %2058
  %2078 = fsub fast float %1768, %2059
  %2079 = fsub fast float %1769, %2060
  %2080 = fmul fast float %2071, %2077
  %2081 = fmul fast float %2071, %2078
  %2082 = fmul fast float %2071, %2079
  %2083 = fadd fast float %2080, %2058
  %2084 = fadd fast float %2081, %2059
  %2085 = fadd fast float %2082, %2060
  %2086 = fsub fast float %1753, %1244
  %2087 = fmul fast float %2071, %2086
  %2088 = fadd fast float %2087, %1244
  %2089 = fsub fast float %1895, %2061
  %2090 = fsub fast float %1896, %2062
  %2091 = fsub fast float %1897, %2063
  %2092 = fmul fast float %2076, %2089
  %2093 = fmul fast float %2076, %2090
  %2094 = fmul fast float %2076, %2091
  %2095 = fadd fast float %2092, %2061
  %2096 = fadd fast float %2093, %2062
  %2097 = fadd fast float %2094, %2063
  %2098 = fsub fast float %2021, %1249
  %2099 = fmul fast float %2071, %2098
  %2100 = fadd fast float %2099, %1249
  br label %2146

; <label>:2101                                    ; preds = %2068
  %2102 = icmp eq i32 %2066, 1
  br i1 %2102, label %2103, label %2116

; <label>:2103                                    ; preds = %2101
  %2104 = fadd fast float %1767, -1.000000e+00
  %2105 = fadd fast float %1768, -1.000000e+00
  %2106 = fadd fast float %1769, -1.000000e+00
  %2107 = fmul fast float %2071, %2104
  %2108 = fmul fast float %2071, %2105
  %2109 = fmul fast float %2071, %2106
  %2110 = fadd fast float %2107, 1.000000e+00
  %2111 = fadd fast float %2108, 1.000000e+00
  %2112 = fadd fast float %2109, 1.000000e+00
  %2113 = fmul fast float %2110, %2058
  %2114 = fmul fast float %2111, %2059
  %2115 = fmul fast float %2112, %2060
  br label %2146

; <label>:2116                                    ; preds = %2101
  %2117 = icmp eq i32 %2066, 2
  br i1 %2117, label %2118, label %2146

; <label>:2118                                    ; preds = %2116
  %2119 = call float @dx.op.unary.f32(i32 24, float %1767)  ; Sqrt(value)
  %2120 = call float @dx.op.unary.f32(i32 24, float %1768)  ; Sqrt(value)
  %2121 = call float @dx.op.unary.f32(i32 24, float %1769)  ; Sqrt(value)
  %2122 = fadd fast float %2119, -5.000000e-01
  %2123 = fadd fast float %2120, -5.000000e-01
  %2124 = fadd fast float %2121, -5.000000e-01
  %2125 = fmul fast float %2122, %2071
  %2126 = fmul fast float %2123, %2071
  %2127 = fmul fast float %2124, %2071
  %2128 = fadd fast float %2125, 5.000000e-01
  %2129 = fadd fast float %2126, 5.000000e-01
  %2130 = fadd fast float %2127, 5.000000e-01
  %2131 = fmul fast float %2128, 2.000000e+00
  %2132 = fsub fast float 1.000000e+00, %2131
  %2133 = fmul fast float %2132, %2058
  %2134 = fadd fast float %2133, %2131
  %2135 = fmul fast float %2134, %2058
  %2136 = fmul fast float %2129, 2.000000e+00
  %2137 = fsub fast float 1.000000e+00, %2136
  %2138 = fmul fast float %2137, %2059
  %2139 = fadd fast float %2138, %2136
  %2140 = fmul fast float %2139, %2059
  %2141 = fmul fast float %2130, 2.000000e+00
  %2142 = fsub fast float 1.000000e+00, %2141
  %2143 = fmul fast float %2142, %2060
  %2144 = fadd fast float %2143, %2141
  %2145 = fmul fast float %2144, %2060
  br label %2146

; <label>:2146                                    ; preds = %2118, %2116, %2103, %2073, %2057
  %2147 = phi float [ %2058, %2057 ], [ %2135, %2118 ], [ %2058, %2116 ], [ %2113, %2103 ], [ %2083, %2073 ]
  %2148 = phi float [ %2059, %2057 ], [ %2140, %2118 ], [ %2059, %2116 ], [ %2114, %2103 ], [ %2084, %2073 ]
  %2149 = phi float [ %2060, %2057 ], [ %2145, %2118 ], [ %2060, %2116 ], [ %2115, %2103 ], [ %2085, %2073 ]
  %2150 = phi float [ %2061, %2057 ], [ %2061, %2118 ], [ %2061, %2116 ], [ %2061, %2103 ], [ %2095, %2073 ]
  %2151 = phi float [ %2062, %2057 ], [ %2062, %2118 ], [ %2062, %2116 ], [ %2062, %2103 ], [ %2096, %2073 ]
  %2152 = phi float [ %2063, %2057 ], [ %2063, %2118 ], [ %2063, %2116 ], [ %2063, %2103 ], [ %2097, %2073 ]
  %2153 = phi float [ %1244, %2057 ], [ %1244, %2118 ], [ %1244, %2116 ], [ %1244, %2103 ], [ %2088, %2073 ]
  %2154 = phi float [ %1249, %2057 ], [ %1249, %2118 ], [ %1249, %2116 ], [ %1249, %2103 ], [ %2100, %2073 ]
  %2155 = and i32 %2065, 12
  %2156 = icmp eq i32 %2155, 12
  br i1 %2156, label %2287, label %2157

; <label>:2157                                    ; preds = %2146
  %2158 = and i32 %2065, 2097184
  %2159 = icmp eq i32 %2158, 2097184
  %2160 = select i1 %2159, float %1547, float 0.000000e+00
  %2161 = and i32 %2065, 4194336
  %2162 = icmp eq i32 %2161, 4194336
  %2163 = select i1 %2162, float %1547, float 0.000000e+00
  %2164 = and i32 %2065, 8388640
  %2165 = icmp eq i32 %2164, 8388640
  %2166 = select i1 %2165, float %1547, float 0.000000e+00
  %2167 = and i32 %2065, 1024
  %2168 = icmp ne i32 %2167, 0
  %2169 = select i1 %2168, float %1547, float 0.000000e+00
  %2170 = and i32 %2065, 2048
  %2171 = icmp ne i32 %2170, 0
  %2172 = select i1 %2171, float %1547, float 0.000000e+00
  %2173 = and i32 %2065, 8192
  %2174 = icmp ne i32 %2173, 0
  %2175 = select i1 %2174, float %1547, float 0.000000e+00
  %2176 = icmp eq i32 %2155, 0
  br i1 %2176, label %2177, label %2211

; <label>:2177                                    ; preds = %2157
  %2178 = fsub fast float %1848, %1230
  %2179 = fsub fast float %1849, %1231
  %2180 = fmul fast float %2160, %2178
  %2181 = fmul fast float %2160, %2179
  %2182 = fadd fast float %2180, %1230
  %2183 = fadd fast float %2181, %1231
  %2184 = fsub fast float %1850, %1247
  %2185 = fmul fast float %2163, %2184
  %2186 = fadd fast float %2185, %1247
  %2187 = fsub fast float %1847, %1246
  %2188 = fmul fast float %2166, %2187
  %2189 = fadd fast float %2188, %1246
  %2190 = fsub fast float %1953, %1238
  %2191 = fsub fast float %1954, %1239
  %2192 = fsub fast float %1955, %1240
  %2193 = fmul fast float %2169, %2190
  %2194 = fmul fast float %2169, %2191
  %2195 = fmul fast float %2169, %2192
  %2196 = fadd fast float %2193, %1238
  %2197 = fadd fast float %2194, %1239
  %2198 = fadd fast float %2195, %1240
  %2199 = fsub fast float %2008, %1248
  %2200 = fmul fast float %2172, %2199
  %2201 = fadd fast float %2200, %1248
  %2202 = fsub fast float %2005, %1241
  %2203 = fsub fast float %2006, %1242
  %2204 = fsub fast float %2007, %1243
  %2205 = fmul fast float %2175, %2202
  %2206 = fmul fast float %2175, %2203
  %2207 = fmul fast float %2175, %2204
  %2208 = fadd fast float %2205, %1241
  %2209 = fadd fast float %2206, %1242
  %2210 = fadd fast float %2207, %1243
  br label %2287

; <label>:2211                                    ; preds = %2157
  %2212 = icmp eq i32 %2155, 4
  br i1 %2212, label %2213, label %2259

; <label>:2213                                    ; preds = %2211
  %2214 = fmul fast float %2160, %1848
  %2215 = fmul fast float %2160, %1849
  %2216 = fadd fast float %2214, %1230
  %2217 = fadd fast float %2215, %1231
  %2218 = call float @dx.op.binary.f32(i32 36, float %1247, float %1850)  ; FMin(a,b)
  %2219 = fsub fast float %2218, %1247
  %2220 = fmul fast float %2219, %2163
  %2221 = fadd fast float %2220, %1247
  %2222 = fadd fast float %1847, %1246
  %2223 = fmul fast float %2222, 0x3FF337FAE0000000
  %2224 = fmul fast float %1246, %1246
  %2225 = fmul fast float %1847, %1847
  %2226 = fadd fast float %2225, %2224
  %2227 = fmul fast float %2226, 0x3FE5152B00000000
  %2228 = fmul fast float %1246, 0xBFCC1F85E0000000
  %2229 = fmul fast float %2228, %1847
  %2230 = fadd fast float %2229, 0xBFE1363700000000
  %2231 = fadd fast float %2230, %2223
  %2232 = fsub fast float %2231, %2227
  %2233 = fmul fast float %2222, 0x3FBA6F0D00000000
  %2234 = fmul fast float %2226, 0x3FD0432880000000
  %2235 = fmul fast float %1246, 0xBFEF110800000000
  %2236 = fmul fast float %2235, %1847
  %2237 = fadd fast float %2236, 1.000000e+00
  %2238 = fsub fast float %2237, %2233
  %2239 = fadd fast float %2238, %2234
  %2240 = fdiv fast float %2232, %2239
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2242 = fsub fast float %2241, %1246
  %2243 = fmul fast float %2242, %2166
  %2244 = fadd fast float %2243, %1246
  %2245 = fmul fast float %2169, %1953
  %2246 = fmul fast float %2169, %1954
  %2247 = fmul fast float %2169, %1955
  %2248 = fadd fast float %2245, %1238
  %2249 = fadd fast float %2246, %1239
  %2250 = fadd fast float %2247, %1240
  %2251 = fmul fast float %2172, %2008
  %2252 = fadd fast float %2251, %1248
  %2253 = fmul fast float %2175, %2005
  %2254 = fmul fast float %2175, %2006
  %2255 = fmul fast float %2175, %2007
  %2256 = fadd fast float %2253, %1241
  %2257 = fadd fast float %2254, %1242
  %2258 = fadd fast float %2255, %1243
  br label %2287

; <label>:2259                                    ; preds = %2211
  %2260 = icmp eq i32 %2155, 8
  br i1 %2260, label %2261, label %2287

; <label>:2261                                    ; preds = %2259
  %2262 = fmul fast float %2160, %1848
  %2263 = fmul fast float %2160, %1849
  %2264 = fadd fast float %2262, %1230
  %2265 = fadd fast float %2263, %1231
  %2266 = call float @dx.op.binary.f32(i32 36, float %1247, float %1850)  ; FMin(a,b)
  %2267 = fsub fast float %2266, %1247
  %2268 = fmul fast float %2267, %2163
  %2269 = fadd fast float %2268, %1247
  %2270 = fsub fast float %1847, %1246
  %2271 = fmul fast float %2166, %2270
  %2272 = fadd fast float %2271, %1246
  %2273 = fmul fast float %2169, %1953
  %2274 = fmul fast float %2169, %1954
  %2275 = fmul fast float %2169, %1955
  %2276 = fadd fast float %2273, %1238
  %2277 = fadd fast float %2274, %1239
  %2278 = fadd fast float %2275, %1240
  %2279 = fmul fast float %2172, %2008
  %2280 = fadd fast float %2279, %1248
  %2281 = fmul fast float %2175, %2005
  %2282 = fmul fast float %2175, %2006
  %2283 = fmul fast float %2175, %2007
  %2284 = fadd fast float %2281, %1241
  %2285 = fadd fast float %2282, %1242
  %2286 = fadd fast float %2283, %1243
  br label %2287

; <label>:2287                                    ; preds = %2261, %2259, %2213, %2177, %2146, %1546, %1250, %1229
  %2288 = phi float [ %1230, %2146 ], [ %1230, %1546 ], [ %1230, %1229 ], [ %2264, %2261 ], [ %1230, %2259 ], [ %2216, %2213 ], [ %2182, %2177 ], [ %1230, %1250 ]
  %2289 = phi float [ %1231, %2146 ], [ %1231, %1546 ], [ %1231, %1229 ], [ %2265, %2261 ], [ %1231, %2259 ], [ %2217, %2213 ], [ %2183, %2177 ], [ %1231, %1250 ]
  %2290 = phi float [ %2147, %2146 ], [ %1232, %1546 ], [ %1232, %1229 ], [ %2147, %2261 ], [ %2147, %2259 ], [ %2147, %2213 ], [ %2147, %2177 ], [ %1232, %1250 ]
  %2291 = phi float [ %2148, %2146 ], [ %1233, %1546 ], [ %1233, %1229 ], [ %2148, %2261 ], [ %2148, %2259 ], [ %2148, %2213 ], [ %2148, %2177 ], [ %1233, %1250 ]
  %2292 = phi float [ %2149, %2146 ], [ %1234, %1546 ], [ %1234, %1229 ], [ %2149, %2261 ], [ %2149, %2259 ], [ %2149, %2213 ], [ %2149, %2177 ], [ %1234, %1250 ]
  %2293 = phi float [ %2150, %2146 ], [ %1235, %1546 ], [ %1235, %1229 ], [ %2150, %2261 ], [ %2150, %2259 ], [ %2150, %2213 ], [ %2150, %2177 ], [ %1235, %1250 ]
  %2294 = phi float [ %2151, %2146 ], [ %1236, %1546 ], [ %1236, %1229 ], [ %2151, %2261 ], [ %2151, %2259 ], [ %2151, %2213 ], [ %2151, %2177 ], [ %1236, %1250 ]
  %2295 = phi float [ %2152, %2146 ], [ %1237, %1546 ], [ %1237, %1229 ], [ %2152, %2261 ], [ %2152, %2259 ], [ %2152, %2213 ], [ %2152, %2177 ], [ %1237, %1250 ]
  %2296 = phi float [ %1238, %2146 ], [ %1238, %1546 ], [ %1238, %1229 ], [ %2276, %2261 ], [ %1238, %2259 ], [ %2248, %2213 ], [ %2196, %2177 ], [ %1238, %1250 ]
  %2297 = phi float [ %1239, %2146 ], [ %1239, %1546 ], [ %1239, %1229 ], [ %2277, %2261 ], [ %1239, %2259 ], [ %2249, %2213 ], [ %2197, %2177 ], [ %1239, %1250 ]
  %2298 = phi float [ %1240, %2146 ], [ %1240, %1546 ], [ %1240, %1229 ], [ %2278, %2261 ], [ %1240, %2259 ], [ %2250, %2213 ], [ %2198, %2177 ], [ %1240, %1250 ]
  %2299 = phi float [ %1241, %2146 ], [ %1241, %1546 ], [ %1241, %1229 ], [ %2284, %2261 ], [ %1241, %2259 ], [ %2256, %2213 ], [ %2208, %2177 ], [ %1241, %1250 ]
  %2300 = phi float [ %1242, %2146 ], [ %1242, %1546 ], [ %1242, %1229 ], [ %2285, %2261 ], [ %1242, %2259 ], [ %2257, %2213 ], [ %2209, %2177 ], [ %1242, %1250 ]
  %2301 = phi float [ %1243, %2146 ], [ %1243, %1546 ], [ %1243, %1229 ], [ %2286, %2261 ], [ %1243, %2259 ], [ %2258, %2213 ], [ %2210, %2177 ], [ %1243, %1250 ]
  %2302 = phi float [ %2153, %2146 ], [ %1244, %1546 ], [ %1244, %1229 ], [ %2153, %2261 ], [ %2153, %2259 ], [ %2153, %2213 ], [ %2153, %2177 ], [ %1244, %1250 ]
  %2303 = phi float [ %1246, %2146 ], [ %1246, %1546 ], [ %1246, %1229 ], [ %2272, %2261 ], [ %1246, %2259 ], [ %2244, %2213 ], [ %2189, %2177 ], [ %1246, %1250 ]
  %2304 = phi float [ %1247, %2146 ], [ %1247, %1546 ], [ %1247, %1229 ], [ %2269, %2261 ], [ %1247, %2259 ], [ %2221, %2213 ], [ %2186, %2177 ], [ %1247, %1250 ]
  %2305 = phi float [ %1248, %2146 ], [ %1248, %1546 ], [ %1248, %1229 ], [ %2280, %2261 ], [ %1248, %2259 ], [ %2252, %2213 ], [ %2201, %2177 ], [ %1248, %1250 ]
  %2306 = phi float [ %2154, %2146 ], [ %1249, %1546 ], [ %1249, %1229 ], [ %2154, %2261 ], [ %2154, %2259 ], [ %2154, %2213 ], [ %2154, %2177 ], [ %1249, %1250 ]
  br i1 %404, label %3344, label %2307

; <label>:2307                                    ; preds = %2287
  %2308 = icmp ult i32 %460, 3
  %2309 = add i32 %50, 56
  %2310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2311 = extractvalue %dx.types.ResRet.i32 %2310, 0
  %2312 = add i32 %50, 60
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = or i32 %2314, %2311
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %3344, label %2317

; <label>:2317                                    ; preds = %2307
  %2318 = and i32 %2311, 262144
  %2319 = icmp ne i32 %2318, 0
  %2320 = select i1 %2319, float %53, float 1.000000e+00
  %2321 = select i1 %2319, float %54, float 0.000000e+00
  %2322 = select i1 %2319, float %55, float 0.000000e+00
  %2323 = select i1 %2319, float %56, float 1.000000e+00
  %2324 = select i1 %2319, float %57, float %78
  %2325 = select i1 %2319, float %58, float %79
  %2326 = add i32 %50, 316
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = lshr i32 %2328, 16
  %2330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2329)  ; LegacyF16ToF32(value)
  %2331 = fmul fast float %2330, 0x3F50624DE0000000
  %2332 = add i32 %50, 120
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = lshr i32 %2334, 16
  %2336 = and i32 %2335, 255
  %2337 = lshr i32 %2334, 24
  %2338 = add i32 %50, 324
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = and i32 %2340, 65535
  %2342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2341)  ; LegacyF16ToF32(value)
  %2343 = lshr i32 %2340, 16
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = add i32 %50, 64
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = lshr i32 %2347, 22
  %2349 = shl nuw nsw i32 %2348, 5
  %2350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2349)  ; LegacyF16ToF32(value)
  %2351 = shl i32 %2347, 4
  %2352 = and i32 %2351, 32752
  %2353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2352)  ; LegacyF16ToF32(value)
  %2354 = lshr i32 %2347, 7
  %2355 = and i32 %2354, 32752
  %2356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2355)  ; LegacyF16ToF32(value)
  %2357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2358 = extractvalue %dx.types.CBufRet.f32 %2357, 3
  %2359 = fmul fast float %2358, 1.000000e+03
  %2360 = fmul fast float %354, %2359
  %2361 = call float @dx.op.unary.f32(i32 22, float %2360)  ; Frc(value)
  %2362 = fadd fast float %2361, %344
  %2363 = fmul fast float %355, %2359
  %2364 = call float @dx.op.unary.f32(i32 22, float %2363)  ; Frc(value)
  %2365 = fadd fast float %2364, %346
  %2366 = fmul fast float %2331, %2359
  %2367 = call float @dx.op.unary.f32(i32 22, float %2366)  ; Frc(value)
  %2368 = fmul fast float %2367, 0x401921FB60000000
  %2369 = fadd fast float %2368, %2350
  %2370 = call float @dx.op.unary.f32(i32 13, float %2369)  ; Sin(value)
  %2371 = call float @dx.op.unary.f32(i32 12, float %2369)  ; Cos(value)
  %2372 = fsub fast float -0.000000e+00, %2370
  %2373 = fadd fast float %2324, -5.000000e-01
  %2374 = fadd fast float %2325, -5.000000e-01
  %2375 = fmul fast float %2342, %2373
  %2376 = fmul fast float %2344, %2374
  %2377 = fadd fast float %2375, 5.000000e-01
  %2378 = fadd fast float %2376, 5.000000e-01
  %2379 = fmul fast float %2353, %2377
  %2380 = fmul fast float %2356, %2378
  %2381 = fmul fast float %2371, %2379
  %2382 = call float @dx.op.tertiary.f32(i32 46, float %2372, float %2380, float %2381)  ; FMad(a,b,c)
  %2383 = fmul fast float %2370, %2379
  %2384 = call float @dx.op.tertiary.f32(i32 46, float %2371, float %2380, float %2383)  ; FMad(a,b,c)
  %2385 = fadd fast float %2362, %2382
  %2386 = fadd fast float %2365, %2384
  %2387 = icmp ugt i32 %2336, 1
  %2388 = icmp ugt i32 %2334, 33554431
  %2389 = or i1 %2388, %2387
  br i1 %2389, label %2390, label %2415

; <label>:2390                                    ; preds = %2317
  %2391 = add i32 %50, 260
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = lshr i32 %2393, 16
  %2395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2394)  ; LegacyF16ToF32(value)
  %2396 = fmul fast float %2358, %2395
  %2397 = call float @dx.op.unary.f32(i32 22, float %2396)  ; Frc(value)
  %2398 = mul nuw nsw i32 %2336, %2337
  %2399 = uitofp i32 %2398 to float
  %2400 = fmul fast float %2397, %2399
  %2401 = call float @dx.op.unary.f32(i32 27, float %2400)  ; Round_ni(value)
  %2402 = fptoui float %2401 to i32
  %2403 = urem i32 %2402, %2336
  %2404 = udiv i32 %2402, %2337
  %2405 = call float @dx.op.unary.f32(i32 22, float %2385)  ; Frc(value)
  %2406 = call float @dx.op.unary.f32(i32 22, float %2386)  ; Frc(value)
  %2407 = uitofp i32 %2403 to float
  %2408 = uitofp i32 %2404 to float
  %2409 = fadd fast float %2405, %2407
  %2410 = fadd fast float %2406, %2408
  %2411 = uitofp i32 %2336 to float
  %2412 = uitofp i32 %2337 to float
  %2413 = fdiv fast float %2409, %2411
  %2414 = fdiv fast float %2410, %2412
  br label %2415

; <label>:2415                                    ; preds = %2390, %2317
  %2416 = phi float [ %2413, %2390 ], [ %2385, %2317 ]
  %2417 = phi float [ %2414, %2390 ], [ %2386, %2317 ]
  %2418 = and i32 %2311, 16777216
  %2419 = icmp eq i32 %2418, 0
  br i1 %2419, label %2529, label %2420

; <label>:2420                                    ; preds = %2415
  %2421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2422 = extractvalue %dx.types.CBufRet.f32 %2421, 0
  %2423 = extractvalue %dx.types.CBufRet.f32 %2421, 1
  %2424 = extractvalue %dx.types.CBufRet.f32 %2421, 2
  %2425 = fadd fast float %2422, %154
  %2426 = fadd fast float %2423, %155
  %2427 = fadd fast float %2424, %156
  %2428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2429 = extractvalue %dx.types.CBufRet.f32 %2428, 0
  %2430 = call float @dx.op.unary.f32(i32 7, float %2429)  ; Saturate(value)
  %2431 = icmp eq i32 %51, 65535
  br i1 %2431, label %2526, label %2432

; <label>:2432                                    ; preds = %2420
  %2433 = lshr i32 %51, 1
  %2434 = shl i32 %2433, 2
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = and i32 %51, 1
  %2438 = icmp ne i32 %2437, 0
  %2439 = lshr i32 %2436, 16
  %2440 = and i32 %2436, 65535
  %2441 = select i1 %2438, i32 %2439, i32 %2440
  %2442 = icmp eq i32 %2441, 65535
  br i1 %2442, label %2522, label %2443

; <label>:2443                                    ; preds = %2432
  %2444 = mul nuw nsw i32 %2441, 40
  %2445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.f32 %2445, 0
  %2447 = extractvalue %dx.types.ResRet.f32 %2445, 1
  %2448 = extractvalue %dx.types.ResRet.f32 %2445, 2
  %2449 = add nuw nsw i32 %2444, 12
  %2450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2449, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.f32 %2450, 0
  %2452 = extractvalue %dx.types.ResRet.f32 %2450, 1
  %2453 = extractvalue %dx.types.ResRet.f32 %2450, 2
  %2454 = add nuw nsw i32 %2444, 24
  %2455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.ResRet.f32 %2455, 1
  %2458 = extractvalue %dx.types.ResRet.f32 %2455, 2
  %2459 = add nuw nsw i32 %2444, 36
  %2460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2459, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = fsub fast float %2425, %2446
  %2463 = fsub fast float %2426, %2447
  %2464 = fsub fast float %2427, %2448
  %2465 = fmul fast float %2461, %2462
  %2466 = fmul fast float %2461, %2463
  %2467 = fmul fast float %2461, %2464
  %2468 = call float @dx.op.unary.f32(i32 27, float %2465)  ; Round_ni(value)
  %2469 = call float @dx.op.unary.f32(i32 27, float %2466)  ; Round_ni(value)
  %2470 = call float @dx.op.unary.f32(i32 27, float %2467)  ; Round_ni(value)
  %2471 = fadd fast float %2468, 5.000000e-01
  %2472 = fadd fast float %2469, 5.000000e-01
  %2473 = fadd fast float %2470, 5.000000e-01
  %2474 = fmul fast float %2471, %2451
  %2475 = fmul fast float %2472, %2452
  %2476 = fmul fast float %2473, %2453
  %2477 = shl i32 %51, 2
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2477, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = add i32 %2479, 0
  %2481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2482 = call float @dx.op.unary.f32(i32 22, float %2474)  ; Frc(value)
  %2483 = call float @dx.op.unary.f32(i32 22, float %2475)  ; Frc(value)
  %2484 = call float @dx.op.unary.f32(i32 22, float %2476)  ; Frc(value)
  %2485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2481, %dx.types.Handle %45, float %2482, float %2483, float %2484, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2486 = extractvalue %dx.types.ResRet.f32 %2485, 0
  %2487 = extractvalue %dx.types.ResRet.f32 %2485, 1
  %2488 = extractvalue %dx.types.ResRet.f32 %2485, 2
  %2489 = fmul fast float %2486, 1.023000e+03
  %2490 = fmul fast float %2487, 1.023000e+03
  %2491 = fmul fast float %2488, 1.023000e+03
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2490, 5.000000e-01
  %2494 = fadd fast float %2491, 5.000000e-01
  %2495 = call float @dx.op.unary.f32(i32 27, float %2492)  ; Round_ni(value)
  %2496 = call float @dx.op.unary.f32(i32 27, float %2493)  ; Round_ni(value)
  %2497 = call float @dx.op.unary.f32(i32 27, float %2494)  ; Round_ni(value)
  %2498 = fsub fast float %2465, %2468
  %2499 = fsub fast float %2466, %2469
  %2500 = fsub fast float %2467, %2470
  %2501 = fmul fast float %2498, 7.500000e-01
  %2502 = fmul fast float %2499, 7.500000e-01
  %2503 = fmul fast float %2500, 7.500000e-01
  %2504 = fadd fast float %2468, 1.250000e-01
  %2505 = fadd fast float %2504, %2501
  %2506 = fadd fast float %2505, %2495
  %2507 = fadd fast float %2469, 1.250000e-01
  %2508 = fadd fast float %2507, %2502
  %2509 = fadd fast float %2508, %2496
  %2510 = fadd fast float %2470, 1.250000e-01
  %2511 = fadd fast float %2510, %2503
  %2512 = fadd fast float %2511, %2497
  %2513 = fmul fast float %2506, %2456
  %2514 = fmul fast float %2509, %2457
  %2515 = fmul fast float %2512, %2458
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2477, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = add i32 %2517, 0
  %2519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2518, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2519, %dx.types.Handle %43, float %2513, float %2514, float %2515, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2521 = extractvalue %dx.types.ResRet.f32 %2520, 0
  br label %2522

; <label>:2522                                    ; preds = %2443, %2432
  %2523 = phi float [ %2521, %2443 ], [ -1.000000e+00, %2432 ]
  %2524 = fadd fast float %2523, %2430
  %2525 = call float @dx.op.unary.f32(i32 7, float %2524)  ; Saturate(value)
  br label %2526

; <label>:2526                                    ; preds = %2522, %2420
  %2527 = phi float [ %2525, %2522 ], [ %2430, %2420 ]
  %2528 = fmul fast float %2527, %456
  br label %2529

; <label>:2529                                    ; preds = %2526, %2415
  %2530 = phi float [ %2528, %2526 ], [ %456, %2415 ]
  %2531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2532 = extractvalue %dx.types.ResRet.i32 %2531, 0
  %2533 = and i32 %2532, 256
  %2534 = icmp eq i32 %2533, 0
  br i1 %2534, label %2581, label %2535

; <label>:2535                                    ; preds = %2529
  %2536 = add i32 %50, 432
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2536, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = add i32 %2538, 0
  %2540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2540, %dx.types.Handle %96, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2542 = extractvalue %dx.types.ResRet.f32 %2541, 0
  %2543 = add i32 %50, 132
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2543, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = shl i32 %2545, 4
  %2547 = and i32 %2546, 32752
  %2548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2547)  ; LegacyF16ToF32(value)
  %2549 = lshr i32 %2545, 7
  %2550 = and i32 %2549, 32752
  %2551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2550)  ; LegacyF16ToF32(value)
  %2552 = fsub fast float 1.000000e+00, %2530
  %2553 = call float @dx.op.binary.f32(i32 35, float %2552, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2554 = bitcast float %2530 to i32
  %2555 = sitofp i32 %2554 to float
  %2556 = fadd fast float %2555, 0xC1CFBF8940000000
  %2557 = fmul fast float %2551, %2556
  %2558 = fadd fast float %2557, 0x41CFBF8940000000
  %2559 = fptosi float %2558 to i32
  %2560 = bitcast i32 %2559 to float
  %2561 = bitcast float %2553 to i32
  %2562 = sitofp i32 %2561 to float
  %2563 = fadd fast float %2562, 0xC1CFBF8940000000
  %2564 = fmul fast float %2563, %2551
  %2565 = fadd fast float %2564, 0x41CFBF8940000000
  %2566 = fptosi float %2565 to i32
  %2567 = bitcast i32 %2566 to float
  %2568 = fmul fast float %2560, %2548
  %2569 = fmul fast float %2567, %2548
  %2570 = fsub fast float %2553, %2568
  %2571 = fadd fast float %2569, %2553
  %2572 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  %2573 = call float @dx.op.unary.f32(i32 7, float %2571)  ; Saturate(value)
  %2574 = fsub fast float %2542, %2572
  %2575 = fsub fast float %2573, %2572
  %2576 = bitcast float %2575 to i32
  %2577 = sub nsw i32 2129859010, %2576
  %2578 = bitcast i32 %2577 to float
  %2579 = fmul fast float %2578, %2574
  %2580 = call float @dx.op.unary.f32(i32 7, float %2579)  ; Saturate(value)
  br label %2581

; <label>:2581                                    ; preds = %2535, %2529
  %2582 = phi float [ %2580, %2535 ], [ %2530, %2529 ]
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = and i32 %2584, 128
  %2586 = icmp eq i32 %2585, 0
  br i1 %2586, label %2603, label %2587

; <label>:2587                                    ; preds = %2581
  %2588 = add i32 %50, 416
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = add i32 %2590, 0
  %2592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2592, %dx.types.Handle %96, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2594 = extractvalue %dx.types.ResRet.f32 %2593, 0
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = and i32 %2596, 524288
  %2598 = icmp ne i32 %2597, 0
  %2599 = fcmp fast ogt float %2594, 0x3FE0101020000000
  %2600 = select i1 %2599, float 1.000000e+00, float 0.000000e+00
  %2601 = select i1 %2598, float %2600, float %2594
  %2602 = fmul fast float %2601, %2582
  br label %2603

; <label>:2603                                    ; preds = %2587, %2581
  %2604 = phi float [ %2602, %2587 ], [ %2582, %2581 ]
  %2605 = fcmp fast ult float %2604, 0x3F70101020000000
  br i1 %2605, label %3344, label %2606

; <label>:2606                                    ; preds = %2603
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = and i32 %2608, 16
  %2610 = icmp eq i32 %2609, 0
  br i1 %2610, label %2809, label %2611

; <label>:2611                                    ; preds = %2606
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2332, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = add i32 %50, 368
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = add i32 %2616, 0
  %2618 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2617, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2619 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2618, %dx.types.Handle %95, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2620 = extractvalue %dx.types.ResRet.f32 %2619, 0
  %2621 = extractvalue %dx.types.ResRet.f32 %2619, 1
  %2622 = extractvalue %dx.types.ResRet.f32 %2619, 2
  %2623 = extractvalue %dx.types.ResRet.f32 %2619, 3
  %2624 = and i32 %2613, 255
  %2625 = uitofp i32 %2624 to float
  %2626 = lshr i32 %2613, 8
  %2627 = and i32 %2626, 255
  %2628 = uitofp i32 %2627 to float
  %2629 = fmul fast float %2623, %2625
  %2630 = fadd fast float %2629, %2628
  %2631 = fmul fast float %2630, 0x3F70101000000000
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = and i32 %2633, 512
  %2635 = icmp eq i32 %2634, 0
  br i1 %2635, label %2644, label %2636

; <label>:2636                                    ; preds = %2611
  %2637 = add i32 %50, 448
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = add i32 %2639, 0
  %2641 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2640, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2642 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2641, %dx.types.Handle %96, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2643 = extractvalue %dx.types.ResRet.f32 %2642, 0
  br label %2644

; <label>:2644                                    ; preds = %2636, %2611
  %2645 = phi float [ %2643, %2636 ], [ 1.000000e+00, %2611 ]
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 33554432
  %2649 = icmp eq i32 %2648, 0
  br i1 %2649, label %2756, label %2650

; <label>:2650                                    ; preds = %2644
  %2651 = add i32 %50, 256
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = and i32 %2653, 65535
  %2655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2654)  ; LegacyF16ToF32(value)
  %2656 = lshr i32 %2653, 16
  %2657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2656)  ; LegacyF16ToF32(value)
  %2658 = add i32 %50, 260
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = and i32 %2660, 65535
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = lshr i32 %2664, 24
  %2666 = uitofp i32 %2665 to float
  %2667 = fmul fast float %2666, 0x3F70101020000000
  %2668 = and i32 %2664, 255
  %2669 = uitofp i32 %2668 to float
  %2670 = fmul fast float %2669, 0x3F70101020000000
  %2671 = lshr i32 %2664, 8
  %2672 = and i32 %2671, 255
  %2673 = uitofp i32 %2672 to float
  %2674 = fmul fast float %2673, 0x3F70101020000000
  %2675 = lshr i32 %2664, 16
  %2676 = and i32 %2675, 255
  %2677 = uitofp i32 %2676 to float
  %2678 = fmul fast float %2677, 0x3F70101020000000
  %2679 = add i32 %50, 252
  %2680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2679, i32 undef)  ; BufferLoad(srv,index,wot)
  %2681 = extractvalue %dx.types.ResRet.i32 %2680, 0
  %2682 = lshr i32 %2681, 24
  %2683 = uitofp i32 %2682 to float
  %2684 = fmul fast float %2683, 0x3F70101020000000
  %2685 = and i32 %2681, 255
  %2686 = uitofp i32 %2685 to float
  %2687 = fmul fast float %2686, 0x3F70101020000000
  %2688 = lshr i32 %2681, 8
  %2689 = and i32 %2688, 255
  %2690 = uitofp i32 %2689 to float
  %2691 = fmul fast float %2690, 0x3F70101020000000
  %2692 = lshr i32 %2681, 16
  %2693 = and i32 %2692, 255
  %2694 = uitofp i32 %2693 to float
  %2695 = fmul fast float %2694, 0x3F70101020000000
  %2696 = bitcast float %2620 to i32
  %2697 = ashr i32 %2696, 1
  %2698 = sub nsw i32 1597463174, %2697
  %2699 = bitcast i32 %2698 to float
  %2700 = fmul fast float %2620, 5.000000e-01
  %2701 = fmul fast float %2699, %2699
  %2702 = fmul fast float %2701, %2700
  %2703 = fsub fast float 1.500000e+00, %2702
  %2704 = fmul fast float %2699, %2620
  %2705 = fmul fast float %2704, %2703
  %2706 = bitcast float %2621 to i32
  %2707 = ashr i32 %2706, 1
  %2708 = sub nsw i32 1597463174, %2707
  %2709 = bitcast i32 %2708 to float
  %2710 = fmul fast float %2621, 5.000000e-01
  %2711 = fmul fast float %2709, %2709
  %2712 = fmul fast float %2711, %2710
  %2713 = fsub fast float 1.500000e+00, %2712
  %2714 = fmul fast float %2709, %2621
  %2715 = fmul fast float %2714, %2713
  %2716 = bitcast float %2622 to i32
  %2717 = ashr i32 %2716, 1
  %2718 = sub nsw i32 1597463174, %2717
  %2719 = bitcast i32 %2718 to float
  %2720 = fmul fast float %2622, 5.000000e-01
  %2721 = fmul fast float %2719, %2719
  %2722 = fmul fast float %2721, %2720
  %2723 = fsub fast float 1.500000e+00, %2722
  %2724 = fmul fast float %2719, %2622
  %2725 = fmul fast float %2724, %2723
  %2726 = fsub fast float %2705, %2687
  %2727 = fsub fast float %2715, %2691
  %2728 = fsub fast float %2725, %2695
  %2729 = fmul fast float %2726, %2655
  %2730 = fmul fast float %2727, %2657
  %2731 = fmul fast float %2728, %2662
  %2732 = fadd fast float %2729, %2670
  %2733 = fadd fast float %2730, %2674
  %2734 = fadd fast float %2731, %2678
  %2735 = call float @dx.op.unary.f32(i32 7, float %2732)  ; Saturate(value)
  %2736 = call float @dx.op.unary.f32(i32 7, float %2733)  ; Saturate(value)
  %2737 = call float @dx.op.unary.f32(i32 7, float %2734)  ; Saturate(value)
  %2738 = fmul fast float %2735, %2735
  %2739 = fmul fast float %2736, %2736
  %2740 = fmul fast float %2737, %2737
  %2741 = fsub fast float %2738, %2620
  %2742 = fsub fast float %2739, %2621
  %2743 = fsub fast float %2740, %2622
  %2744 = fmul fast float %2741, %2645
  %2745 = fmul fast float %2742, %2645
  %2746 = fmul fast float %2743, %2645
  %2747 = fadd fast float %2744, %2620
  %2748 = fadd fast float %2745, %2621
  %2749 = fadd fast float %2746, %2622
  %2750 = fadd fast float %2667, %2631
  %2751 = fsub fast float %2750, %2684
  %2752 = call float @dx.op.unary.f32(i32 7, float %2751)  ; Saturate(value)
  %2753 = fsub fast float %2752, %2631
  %2754 = fmul fast float %2753, %2645
  %2755 = fadd fast float %2754, %2631
  br label %2809

; <label>:2756                                    ; preds = %2644
  %2757 = and i32 %2647, 134217728
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2793, label %2759

; <label>:2759                                    ; preds = %2756
  %2760 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %2761 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %2762 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %2763 = fadd fast float %2760, -5.000000e-01
  %2764 = fadd fast float %2761, -5.000000e-01
  %2765 = fadd fast float %2762, -5.000000e-01
  %2766 = fmul fast float %2763, %2645
  %2767 = fmul fast float %2764, %2645
  %2768 = fmul fast float %2765, %2645
  %2769 = fadd fast float %2766, 5.000000e-01
  %2770 = fadd fast float %2767, 5.000000e-01
  %2771 = fadd fast float %2768, 5.000000e-01
  %2772 = call float @dx.op.unary.f32(i32 24, float %2620)  ; Sqrt(value)
  %2773 = call float @dx.op.unary.f32(i32 24, float %2621)  ; Sqrt(value)
  %2774 = call float @dx.op.unary.f32(i32 24, float %2622)  ; Sqrt(value)
  %2775 = fmul fast float %2769, 2.000000e+00
  %2776 = fsub fast float 1.000000e+00, %2775
  %2777 = fmul fast float %2776, %2772
  %2778 = fadd fast float %2777, %2775
  %2779 = fmul fast float %2778, %2772
  %2780 = fmul fast float %2770, 2.000000e+00
  %2781 = fsub fast float 1.000000e+00, %2780
  %2782 = fmul fast float %2781, %2773
  %2783 = fadd fast float %2782, %2780
  %2784 = fmul fast float %2783, %2773
  %2785 = fmul fast float %2771, 2.000000e+00
  %2786 = fsub fast float 1.000000e+00, %2785
  %2787 = fmul fast float %2786, %2774
  %2788 = fadd fast float %2787, %2785
  %2789 = fmul fast float %2788, %2774
  %2790 = fmul fast float %2779, %2779
  %2791 = fmul fast float %2784, %2784
  %2792 = fmul fast float %2789, %2789
  br label %2809

; <label>:2793                                    ; preds = %2756
  %2794 = fmul fast float %331, %331
  %2795 = fmul fast float %335, %335
  %2796 = fmul fast float %339, %339
  %2797 = fadd fast float %2794, -1.000000e+00
  %2798 = fadd fast float %2795, -1.000000e+00
  %2799 = fadd fast float %2796, -1.000000e+00
  %2800 = fmul fast float %2645, %2797
  %2801 = fmul fast float %2645, %2798
  %2802 = fmul fast float %2645, %2799
  %2803 = fadd fast float %2800, 1.000000e+00
  %2804 = fadd fast float %2801, 1.000000e+00
  %2805 = fadd fast float %2802, 1.000000e+00
  %2806 = fmul fast float %2803, %2620
  %2807 = fmul fast float %2804, %2621
  %2808 = fmul fast float %2805, %2622
  br label %2809

; <label>:2809                                    ; preds = %2793, %2759, %2650, %2606
  %2810 = phi float [ %2755, %2650 ], [ %2631, %2759 ], [ %2631, %2793 ], [ 0x3FA23C0BE0000000, %2606 ]
  %2811 = phi float [ %2747, %2650 ], [ %2790, %2759 ], [ %2806, %2793 ], [ 1.000000e+00, %2606 ]
  %2812 = phi float [ %2748, %2650 ], [ %2791, %2759 ], [ %2807, %2793 ], [ 1.000000e+00, %2606 ]
  %2813 = phi float [ %2749, %2650 ], [ %2792, %2759 ], [ %2808, %2793 ], [ 1.000000e+00, %2606 ]
  %2814 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.i32 %2814, 1
  %2816 = and i32 %2815, 1
  %2817 = icmp ne i32 %2816, 0
  %2818 = add i32 %50, 356
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = and i32 %2820, 32
  %2822 = icmp ne i32 %2821, 0
  %2823 = and i1 %2817, %2822
  %2824 = select i1 %2823, float 1.000000e+00, float %2811
  %2825 = select i1 %2823, float 0x3FD3333340000000, float %2812
  %2826 = select i1 %2823, float 0x3FD3333340000000, float %2813
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = and i32 %2828, 32
  %2830 = icmp eq i32 %2829, 0
  br i1 %2830, label %2903, label %2831

; <label>:2831                                    ; preds = %2809
  %2832 = add i32 %50, 124
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = add i32 %50, 384
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = add i32 %2837, 0
  %2839 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2838, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2840 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2839, %dx.types.Handle %95, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2841 = extractvalue %dx.types.ResRet.f32 %2840, 0
  %2842 = extractvalue %dx.types.ResRet.f32 %2840, 1
  %2843 = extractvalue %dx.types.ResRet.f32 %2840, 2
  %2844 = extractvalue %dx.types.ResRet.f32 %2840, 3
  %2845 = and i32 %2834, 255
  %2846 = uitofp i32 %2845 to float
  %2847 = lshr i32 %2834, 8
  %2848 = and i32 %2847, 255
  %2849 = uitofp i32 %2848 to float
  %2850 = lshr i32 %2834, 16
  %2851 = and i32 %2850, 255
  %2852 = uitofp i32 %2851 to float
  %2853 = fmul fast float %2852, 0x3F70101000000000
  %2854 = fmul fast float %2841, %2846
  %2855 = fadd fast float %2854, %2849
  %2856 = fmul fast float %2855, 0x3F70101000000000
  %2857 = fadd fast float %2842, -5.000000e-01
  %2858 = fadd fast float %2844, -5.000000e-01
  %2859 = fmul fast float %2857, %2853
  %2860 = fmul fast float %2858, %2853
  %2861 = fadd fast float %2859, 5.000000e-01
  %2862 = fadd fast float %2860, 5.000000e-01
  %2863 = fmul fast float %2861, 2.000000e+00
  %2864 = fadd fast float %2863, -1.000000e+00
  %2865 = fmul fast float %2862, 2.000000e+00
  %2866 = fadd fast float %2865, -1.000000e+00
  %2867 = fadd fast float %2864, %2866
  %2868 = fmul fast float %2867, 5.000000e-01
  %2869 = fsub fast float %2864, %2866
  %2870 = fmul fast float %2869, 5.000000e-01
  %2871 = call float @dx.op.unary.f32(i32 6, float %2868)  ; FAbs(value)
  %2872 = fsub fast float 1.000000e+00, %2871
  %2873 = call float @dx.op.unary.f32(i32 6, float %2870)  ; FAbs(value)
  %2874 = fsub fast float %2872, %2873
  %2875 = call float @dx.op.dot3.f32(i32 55, float %2868, float %2870, float %2874, float %2868, float %2870, float %2874)  ; Dot3(ax,ay,az,bx,by,bz)
  %2876 = call float @dx.op.unary.f32(i32 25, float %2875)  ; Rsqrt(value)
  %2877 = fmul fast float %2868, %2876
  %2878 = fmul fast float %2870, %2876
  %2879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2880 = extractvalue %dx.types.ResRet.i32 %2879, 0
  %2881 = and i32 %2880, 67108864
  %2882 = icmp eq i32 %2881, 0
  br i1 %2882, label %2899, label %2883

; <label>:2883                                    ; preds = %2831
  %2884 = add i32 %50, 312
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = and i32 %2886, 65535
  %2888 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2887)  ; LegacyF16ToF32(value)
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = and i32 %2890, 65535
  %2892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2891)  ; LegacyF16ToF32(value)
  %2893 = lshr i32 %2886, 16
  %2894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2893)  ; LegacyF16ToF32(value)
  %2895 = fsub fast float %2856, %2894
  %2896 = fmul fast float %2895, %2888
  %2897 = fadd fast float %2896, %2892
  %2898 = call float @dx.op.unary.f32(i32 7, float %2897)  ; Saturate(value)
  br label %2899

; <label>:2899                                    ; preds = %2883, %2831
  %2900 = phi float [ %2898, %2883 ], [ %2856, %2831 ]
  %2901 = call float @dx.op.dot2.f32(i32 54, float %2877, float %2878, float %2320, float %2321)  ; Dot2(ax,ay,bx,by)
  %2902 = call float @dx.op.dot2.f32(i32 54, float %2877, float %2878, float %2322, float %2323)  ; Dot2(ax,ay,bx,by)
  br label %2903

; <label>:2903                                    ; preds = %2899, %2809
  %2904 = phi float [ %2900, %2899 ], [ 0x3FD6666660000000, %2809 ]
  %2905 = phi float [ %2901, %2899 ], [ 0.000000e+00, %2809 ]
  %2906 = phi float [ %2902, %2899 ], [ 0.000000e+00, %2809 ]
  %2907 = phi float [ %2843, %2899 ], [ 1.000000e+00, %2809 ]
  %2908 = add i32 %50, 192
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = lshr i32 %2910, 22
  %2912 = shl nuw nsw i32 %2911, 5
  %2913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2912)  ; LegacyF16ToF32(value)
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = and i32 %2915, 64
  %2917 = icmp eq i32 %2916, 0
  br i1 %2917, label %2951, label %2918

; <label>:2918                                    ; preds = %2903
  %2919 = add i32 %50, 400
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = add i32 %2921, 0
  %2923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = and i32 %2925, 131072
  %2927 = icmp eq i32 %2926, 0
  %2928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2923, %dx.types.Handle %95, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2929 = extractvalue %dx.types.ResRet.f32 %2928, 0
  %2930 = extractvalue %dx.types.ResRet.f32 %2928, 1
  %2931 = extractvalue %dx.types.ResRet.f32 %2928, 2
  %2932 = fmul fast float %2929, %319
  %2933 = fmul fast float %2930, %322
  %2934 = fmul fast float %2931, %325
  br i1 %2927, label %2941, label %2935

; <label>:2935                                    ; preds = %2918
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 0
  %2938 = fmul fast float %2937, %2932
  %2939 = fmul fast float %2937, %2933
  %2940 = fmul fast float %2937, %2934
  br label %2941

; <label>:2941                                    ; preds = %2935, %2918
  %2942 = phi float [ %2938, %2935 ], [ %2932, %2918 ]
  %2943 = phi float [ %2939, %2935 ], [ %2933, %2918 ]
  %2944 = phi float [ %2940, %2935 ], [ %2934, %2918 ]
  %2945 = fmul fast float %2942, %2913
  %2946 = select i1 %215, float %2945, float %2942
  %2947 = call float @dx.op.dot3.f32(i32 55, float %2946, float %2943, float %2944, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2948 = select i1 %215, float 0.000000e+00, float %2942
  %2949 = select i1 %215, float %2947, float %2943
  %2950 = select i1 %215, float 0.000000e+00, float %2944
  br label %2951

; <label>:2951                                    ; preds = %2941, %2903
  %2952 = phi float [ %2948, %2941 ], [ 0.000000e+00, %2903 ]
  %2953 = phi float [ %2949, %2941 ], [ 0.000000e+00, %2903 ]
  %2954 = phi float [ %2950, %2941 ], [ 0.000000e+00, %2903 ]
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 1024
  %2958 = icmp eq i32 %2957, 0
  br i1 %2958, label %2989, label %2959

; <label>:2959                                    ; preds = %2951
  %2960 = add i32 %50, 184
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = fmul fast float %2964, 0x3F70101020000000
  %2966 = lshr i32 %2962, 8
  %2967 = and i32 %2966, 255
  %2968 = uitofp i32 %2967 to float
  %2969 = fmul fast float %2968, 0x3F70101020000000
  %2970 = lshr i32 %2962, 16
  %2971 = and i32 %2970, 255
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = fmul fast float %2965, %2965
  %2975 = fmul fast float %2969, %2969
  %2976 = fmul fast float %2973, %2973
  %2977 = add i32 %50, 464
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = add i32 %2979, 0
  %2981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2980, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2982 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2981, %dx.types.Handle %96, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 0
  %2984 = extractvalue %dx.types.ResRet.f32 %2982, 1
  %2985 = extractvalue %dx.types.ResRet.f32 %2982, 2
  %2986 = fmul fast float %2974, %2983
  %2987 = fmul fast float %2975, %2984
  %2988 = fmul fast float %2976, %2985
  br label %2989

; <label>:2989                                    ; preds = %2959, %2951
  %2990 = phi float [ %2986, %2959 ], [ 0.000000e+00, %2951 ]
  %2991 = phi float [ %2987, %2959 ], [ 0.000000e+00, %2951 ]
  %2992 = phi float [ %2988, %2959 ], [ 0.000000e+00, %2951 ]
  %2993 = fcmp fast ogt float %2990, 0.000000e+00
  %2994 = fcmp fast ogt float %2991, 0.000000e+00
  %2995 = fcmp fast ogt float %2992, 0.000000e+00
  %2996 = call float @dx.op.unary.f32(i32 23, float %2990)  ; Log(value)
  %2997 = call float @dx.op.unary.f32(i32 23, float %2991)  ; Log(value)
  %2998 = call float @dx.op.unary.f32(i32 23, float %2992)  ; Log(value)
  %2999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3000 = extractvalue %dx.types.ResRet.i32 %2999, 0
  %3001 = lshr i32 %3000, 7
  %3002 = and i32 %3001, 32752
  %3003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3002)  ; LegacyF16ToF32(value)
  %3004 = fmul fast float %2996, 0xBFE62E4300000000
  %3005 = fmul fast float %3004, %3003
  %3006 = fmul fast float %2997, 0xBFE62E4300000000
  %3007 = fmul fast float %3006, %3003
  %3008 = fmul fast float %2998, 0xBFE62E4300000000
  %3009 = fmul fast float %3008, %3003
  %3010 = select i1 %2993, float %3005, float 1.270000e+02
  %3011 = select i1 %2994, float %3007, float 1.270000e+02
  %3012 = select i1 %2995, float %3009, float 1.270000e+02
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = and i32 %3014, 10240
  %3016 = icmp eq i32 %3015, 0
  br i1 %3016, label %3061, label %3017

; <label>:3017                                    ; preds = %2989
  %3018 = add i32 %50, 480
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3018, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = add i32 %3020, 0
  %3022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3021, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3023 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3022, %dx.types.Handle %96, float %2416, float %2417, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3024 = extractvalue %dx.types.ResRet.f32 %3023, 1
  %3025 = extractvalue %dx.types.ResRet.f32 %3023, 3
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = and i32 %3027, 1048576
  %3029 = icmp ne i32 %3028, 0
  %3030 = and i32 %3027, 8192
  %3031 = icmp eq i32 %3030, 0
  br i1 %3031, label %3047, label %3032

; <label>:3032                                    ; preds = %3017
  %3033 = extractvalue %dx.types.ResRet.f32 %3023, 2
  %3034 = select i1 %3029, float %3033, float %3024
  %3035 = extractvalue %dx.types.ResRet.f32 %3023, 0
  %3036 = select i1 %3029, float %3035, float %3024
  %3037 = add i32 %50, 128
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3037, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = lshr i32 %3039, 16
  %3041 = and i32 %3040, 255
  %3042 = uitofp i32 %3041 to float
  %3043 = fmul fast float %3042, 0x3F80101020000000
  %3044 = fmul fast float %3043, %3036
  %3045 = fmul fast float %3043, %3024
  %3046 = fmul fast float %3043, %3034
  br label %3047

; <label>:3047                                    ; preds = %3032, %3017
  %3048 = phi float [ %3044, %3032 ], [ 0.000000e+00, %3017 ]
  %3049 = phi float [ %3045, %3032 ], [ 0.000000e+00, %3017 ]
  %3050 = phi float [ %3046, %3032 ], [ 0.000000e+00, %3017 ]
  %3051 = and i32 %3027, 2048
  %3052 = icmp eq i32 %3051, 0
  br i1 %3052, label %3061, label %3053

; <label>:3053                                    ; preds = %3047
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = shl i32 %3055, 4
  %3057 = and i32 %3056, 32752
  %3058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3057)  ; LegacyF16ToF32(value)
  %3059 = fmul fast float %3058, %3025
  %3060 = call float @dx.op.binary.f32(i32 35, float %3059, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3061

; <label>:3061                                    ; preds = %3053, %3047, %2989
  %3062 = phi float [ %3048, %3053 ], [ %3048, %3047 ], [ 0.000000e+00, %2989 ]
  %3063 = phi float [ %3049, %3053 ], [ %3049, %3047 ], [ 0.000000e+00, %2989 ]
  %3064 = phi float [ %3050, %3053 ], [ %3050, %3047 ], [ 0.000000e+00, %2989 ]
  %3065 = phi float [ %3060, %3053 ], [ 0x3F70101020000000, %3047 ], [ 0x3F70101020000000, %2989 ]
  %3066 = add i32 %50, 128
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3066, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = and i32 %3068, 255
  %3070 = uitofp i32 %3069 to float
  %3071 = lshr i32 %3068, 8
  %3072 = and i32 %3071, 255
  %3073 = uitofp i32 %3072 to float
  %3074 = call float @dx.op.dot3.f32(i32 55, float %2824, float %2825, float %2826, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3075 = fmul fast float %3073, %3074
  %3076 = fadd fast float %3075, %3070
  %3077 = fmul fast float %3076, 0x3F70101020000000
  %3078 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  br i1 %2308, label %3079, label %3114

; <label>:3079                                    ; preds = %3061
  %3080 = fmul fast float %3065, 2.000000e+00
  %3081 = fcmp fast olt float %3010, 1.270000e+02
  %3082 = fcmp fast olt float %3011, 1.270000e+02
  %3083 = fcmp fast olt float %3012, 1.270000e+02
  %3084 = fmul fast float %3010, 0xBFF7154760000000
  %3085 = fmul fast float %3084, %3080
  %3086 = fmul fast float %3011, 0xBFF7154760000000
  %3087 = fmul fast float %3086, %3080
  %3088 = fmul fast float %3012, 0xBFF7154760000000
  %3089 = fmul fast float %3088, %3080
  %3090 = call float @dx.op.unary.f32(i32 21, float %3085)  ; Exp(value)
  %3091 = call float @dx.op.unary.f32(i32 21, float %3087)  ; Exp(value)
  %3092 = call float @dx.op.unary.f32(i32 21, float %3089)  ; Exp(value)
  %3093 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3094 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  %3095 = call float @dx.op.unary.f32(i32 7, float %3092)  ; Saturate(value)
  %3096 = fadd fast float %3093, -1.000000e+00
  %3097 = select i1 %3081, float %3096, float -1.000000e+00
  %3098 = fadd fast float %3094, -1.000000e+00
  %3099 = select i1 %3082, float %3098, float -1.000000e+00
  %3100 = fadd fast float %3095, -1.000000e+00
  %3101 = select i1 %3083, float %3100, float -1.000000e+00
  %3102 = fmul fast float %3097, %2604
  %3103 = fmul fast float %3099, %2604
  %3104 = fmul fast float %3101, %2604
  %3105 = fadd fast float %3102, 1.000000e+00
  %3106 = fadd fast float %3103, 1.000000e+00
  %3107 = fadd fast float %3104, 1.000000e+00
  %3108 = fmul fast float %3105, %2290
  %3109 = fmul fast float %3106, %2291
  %3110 = fmul fast float %3107, %2292
  %3111 = fmul fast float %3105, %2293
  %3112 = fmul fast float %3106, %2294
  %3113 = fmul fast float %3107, %2295
  br label %3114

; <label>:3114                                    ; preds = %3079, %3061
  %3115 = phi float [ %3108, %3079 ], [ %2290, %3061 ]
  %3116 = phi float [ %3109, %3079 ], [ %2291, %3061 ]
  %3117 = phi float [ %3110, %3079 ], [ %2292, %3061 ]
  %3118 = phi float [ %3111, %3079 ], [ %2293, %3061 ]
  %3119 = phi float [ %3112, %3079 ], [ %2294, %3061 ]
  %3120 = phi float [ %3113, %3079 ], [ %2295, %3061 ]
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = and i32 %3122, 3
  %3124 = icmp eq i32 %3123, 3
  br i1 %3124, label %3203, label %3125

; <label>:3125                                    ; preds = %3114
  %3126 = and i32 %3122, 16
  %3127 = icmp ne i32 %3126, 0
  %3128 = select i1 %3127, float %2604, float 0.000000e+00
  %3129 = icmp eq i32 %3123, 0
  br i1 %3129, label %3130, label %3158

; <label>:3130                                    ; preds = %3125
  %3131 = and i32 %3122, 64
  %3132 = icmp ne i32 %3131, 0
  %3133 = select i1 %3132, float %2604, float 0.000000e+00
  %3134 = fsub fast float %2824, %3115
  %3135 = fsub fast float %2825, %3116
  %3136 = fsub fast float %2826, %3117
  %3137 = fmul fast float %3128, %3134
  %3138 = fmul fast float %3128, %3135
  %3139 = fmul fast float %3128, %3136
  %3140 = fadd fast float %3137, %3115
  %3141 = fadd fast float %3138, %3116
  %3142 = fadd fast float %3139, %3117
  %3143 = fsub fast float %2810, %2302
  %3144 = fmul fast float %3128, %3143
  %3145 = fadd fast float %3144, %2302
  %3146 = fsub fast float %2952, %3118
  %3147 = fsub fast float %2953, %3119
  %3148 = fsub fast float %2954, %3120
  %3149 = fmul fast float %3133, %3146
  %3150 = fmul fast float %3133, %3147
  %3151 = fmul fast float %3133, %3148
  %3152 = fadd fast float %3149, %3118
  %3153 = fadd fast float %3150, %3119
  %3154 = fadd fast float %3151, %3120
  %3155 = fsub fast float %3078, %2306
  %3156 = fmul fast float %3128, %3155
  %3157 = fadd fast float %3156, %2306
  br label %3203

; <label>:3158                                    ; preds = %3125
  %3159 = icmp eq i32 %3123, 1
  br i1 %3159, label %3160, label %3173

; <label>:3160                                    ; preds = %3158
  %3161 = fadd fast float %2824, -1.000000e+00
  %3162 = fadd fast float %2825, -1.000000e+00
  %3163 = fadd fast float %2826, -1.000000e+00
  %3164 = fmul fast float %3128, %3161
  %3165 = fmul fast float %3128, %3162
  %3166 = fmul fast float %3128, %3163
  %3167 = fadd fast float %3164, 1.000000e+00
  %3168 = fadd fast float %3165, 1.000000e+00
  %3169 = fadd fast float %3166, 1.000000e+00
  %3170 = fmul fast float %3167, %3115
  %3171 = fmul fast float %3168, %3116
  %3172 = fmul fast float %3169, %3117
  br label %3203

; <label>:3173                                    ; preds = %3158
  %3174 = icmp eq i32 %3123, 2
  br i1 %3174, label %3175, label %3203

; <label>:3175                                    ; preds = %3173
  %3176 = call float @dx.op.unary.f32(i32 24, float %2824)  ; Sqrt(value)
  %3177 = call float @dx.op.unary.f32(i32 24, float %2825)  ; Sqrt(value)
  %3178 = call float @dx.op.unary.f32(i32 24, float %2826)  ; Sqrt(value)
  %3179 = fadd fast float %3176, -5.000000e-01
  %3180 = fadd fast float %3177, -5.000000e-01
  %3181 = fadd fast float %3178, -5.000000e-01
  %3182 = fmul fast float %3179, %3128
  %3183 = fmul fast float %3180, %3128
  %3184 = fmul fast float %3181, %3128
  %3185 = fadd fast float %3182, 5.000000e-01
  %3186 = fadd fast float %3183, 5.000000e-01
  %3187 = fadd fast float %3184, 5.000000e-01
  %3188 = fmul fast float %3185, 2.000000e+00
  %3189 = fsub fast float 1.000000e+00, %3188
  %3190 = fmul fast float %3189, %3115
  %3191 = fadd fast float %3190, %3188
  %3192 = fmul fast float %3191, %3115
  %3193 = fmul fast float %3186, 2.000000e+00
  %3194 = fsub fast float 1.000000e+00, %3193
  %3195 = fmul fast float %3194, %3116
  %3196 = fadd fast float %3195, %3193
  %3197 = fmul fast float %3196, %3116
  %3198 = fmul fast float %3187, 2.000000e+00
  %3199 = fsub fast float 1.000000e+00, %3198
  %3200 = fmul fast float %3199, %3117
  %3201 = fadd fast float %3200, %3198
  %3202 = fmul fast float %3201, %3117
  br label %3203

; <label>:3203                                    ; preds = %3175, %3173, %3160, %3130, %3114
  %3204 = phi float [ %3115, %3114 ], [ %3192, %3175 ], [ %3115, %3173 ], [ %3170, %3160 ], [ %3140, %3130 ]
  %3205 = phi float [ %3116, %3114 ], [ %3197, %3175 ], [ %3116, %3173 ], [ %3171, %3160 ], [ %3141, %3130 ]
  %3206 = phi float [ %3117, %3114 ], [ %3202, %3175 ], [ %3117, %3173 ], [ %3172, %3160 ], [ %3142, %3130 ]
  %3207 = phi float [ %3118, %3114 ], [ %3118, %3175 ], [ %3118, %3173 ], [ %3118, %3160 ], [ %3152, %3130 ]
  %3208 = phi float [ %3119, %3114 ], [ %3119, %3175 ], [ %3119, %3173 ], [ %3119, %3160 ], [ %3153, %3130 ]
  %3209 = phi float [ %3120, %3114 ], [ %3120, %3175 ], [ %3120, %3173 ], [ %3120, %3160 ], [ %3154, %3130 ]
  %3210 = phi float [ %2302, %3114 ], [ %2302, %3175 ], [ %2302, %3173 ], [ %2302, %3160 ], [ %3145, %3130 ]
  %3211 = phi float [ %2306, %3114 ], [ %2306, %3175 ], [ %2306, %3173 ], [ %2306, %3160 ], [ %3157, %3130 ]
  %3212 = and i32 %3122, 12
  %3213 = icmp eq i32 %3212, 12
  br i1 %3213, label %3344, label %3214

; <label>:3214                                    ; preds = %3203
  %3215 = and i32 %3122, 2097184
  %3216 = icmp eq i32 %3215, 2097184
  %3217 = select i1 %3216, float %2604, float 0.000000e+00
  %3218 = and i32 %3122, 4194336
  %3219 = icmp eq i32 %3218, 4194336
  %3220 = select i1 %3219, float %2604, float 0.000000e+00
  %3221 = and i32 %3122, 8388640
  %3222 = icmp eq i32 %3221, 8388640
  %3223 = select i1 %3222, float %2604, float 0.000000e+00
  %3224 = and i32 %3122, 1024
  %3225 = icmp ne i32 %3224, 0
  %3226 = select i1 %3225, float %2604, float 0.000000e+00
  %3227 = and i32 %3122, 2048
  %3228 = icmp ne i32 %3227, 0
  %3229 = select i1 %3228, float %2604, float 0.000000e+00
  %3230 = and i32 %3122, 8192
  %3231 = icmp ne i32 %3230, 0
  %3232 = select i1 %3231, float %2604, float 0.000000e+00
  %3233 = icmp eq i32 %3212, 0
  br i1 %3233, label %3234, label %3268

; <label>:3234                                    ; preds = %3214
  %3235 = fsub fast float %2905, %2288
  %3236 = fsub fast float %2906, %2289
  %3237 = fmul fast float %3217, %3235
  %3238 = fmul fast float %3217, %3236
  %3239 = fadd fast float %3237, %2288
  %3240 = fadd fast float %3238, %2289
  %3241 = fsub fast float %2907, %2304
  %3242 = fmul fast float %3220, %3241
  %3243 = fadd fast float %3242, %2304
  %3244 = fsub fast float %2904, %2303
  %3245 = fmul fast float %3223, %3244
  %3246 = fadd fast float %3245, %2303
  %3247 = fsub fast float %3010, %2296
  %3248 = fsub fast float %3011, %2297
  %3249 = fsub fast float %3012, %2298
  %3250 = fmul fast float %3226, %3247
  %3251 = fmul fast float %3226, %3248
  %3252 = fmul fast float %3226, %3249
  %3253 = fadd fast float %3250, %2296
  %3254 = fadd fast float %3251, %2297
  %3255 = fadd fast float %3252, %2298
  %3256 = fsub fast float %3065, %2305
  %3257 = fmul fast float %3229, %3256
  %3258 = fadd fast float %3257, %2305
  %3259 = fsub fast float %3062, %2299
  %3260 = fsub fast float %3063, %2300
  %3261 = fsub fast float %3064, %2301
  %3262 = fmul fast float %3232, %3259
  %3263 = fmul fast float %3232, %3260
  %3264 = fmul fast float %3232, %3261
  %3265 = fadd fast float %3262, %2299
  %3266 = fadd fast float %3263, %2300
  %3267 = fadd fast float %3264, %2301
  br label %3344

; <label>:3268                                    ; preds = %3214
  %3269 = icmp eq i32 %3212, 4
  br i1 %3269, label %3270, label %3316

; <label>:3270                                    ; preds = %3268
  %3271 = fmul fast float %3217, %2905
  %3272 = fmul fast float %3217, %2906
  %3273 = fadd fast float %3271, %2288
  %3274 = fadd fast float %3272, %2289
  %3275 = call float @dx.op.binary.f32(i32 36, float %2304, float %2907)  ; FMin(a,b)
  %3276 = fsub fast float %3275, %2304
  %3277 = fmul fast float %3276, %3220
  %3278 = fadd fast float %3277, %2304
  %3279 = fadd fast float %2904, %2303
  %3280 = fmul fast float %3279, 0x3FF337FAE0000000
  %3281 = fmul fast float %2303, %2303
  %3282 = fmul fast float %2904, %2904
  %3283 = fadd fast float %3282, %3281
  %3284 = fmul fast float %3283, 0x3FE5152B00000000
  %3285 = fmul fast float %2303, 0xBFCC1F85E0000000
  %3286 = fmul fast float %3285, %2904
  %3287 = fadd fast float %3286, 0xBFE1363700000000
  %3288 = fadd fast float %3287, %3280
  %3289 = fsub fast float %3288, %3284
  %3290 = fmul fast float %3279, 0x3FBA6F0D00000000
  %3291 = fmul fast float %3283, 0x3FD0432880000000
  %3292 = fmul fast float %2303, 0xBFEF110800000000
  %3293 = fmul fast float %3292, %2904
  %3294 = fadd fast float %3293, 1.000000e+00
  %3295 = fsub fast float %3294, %3290
  %3296 = fadd fast float %3295, %3291
  %3297 = fdiv fast float %3289, %3296
  %3298 = call float @dx.op.unary.f32(i32 7, float %3297)  ; Saturate(value)
  %3299 = fsub fast float %3298, %2303
  %3300 = fmul fast float %3299, %3223
  %3301 = fadd fast float %3300, %2303
  %3302 = fmul fast float %3226, %3010
  %3303 = fmul fast float %3226, %3011
  %3304 = fmul fast float %3226, %3012
  %3305 = fadd fast float %3302, %2296
  %3306 = fadd fast float %3303, %2297
  %3307 = fadd fast float %3304, %2298
  %3308 = fmul fast float %3229, %3065
  %3309 = fadd fast float %3308, %2305
  %3310 = fmul fast float %3232, %3062
  %3311 = fmul fast float %3232, %3063
  %3312 = fmul fast float %3232, %3064
  %3313 = fadd fast float %3310, %2299
  %3314 = fadd fast float %3311, %2300
  %3315 = fadd fast float %3312, %2301
  br label %3344

; <label>:3316                                    ; preds = %3268
  %3317 = icmp eq i32 %3212, 8
  br i1 %3317, label %3318, label %3344

; <label>:3318                                    ; preds = %3316
  %3319 = fmul fast float %3217, %2905
  %3320 = fmul fast float %3217, %2906
  %3321 = fadd fast float %3319, %2288
  %3322 = fadd fast float %3320, %2289
  %3323 = call float @dx.op.binary.f32(i32 36, float %2304, float %2907)  ; FMin(a,b)
  %3324 = fsub fast float %3323, %2304
  %3325 = fmul fast float %3324, %3220
  %3326 = fadd fast float %3325, %2304
  %3327 = fsub fast float %2904, %2303
  %3328 = fmul fast float %3223, %3327
  %3329 = fadd fast float %3328, %2303
  %3330 = fmul fast float %3226, %3010
  %3331 = fmul fast float %3226, %3011
  %3332 = fmul fast float %3226, %3012
  %3333 = fadd fast float %3330, %2296
  %3334 = fadd fast float %3331, %2297
  %3335 = fadd fast float %3332, %2298
  %3336 = fmul fast float %3229, %3065
  %3337 = fadd fast float %3336, %2305
  %3338 = fmul fast float %3232, %3062
  %3339 = fmul fast float %3232, %3063
  %3340 = fmul fast float %3232, %3064
  %3341 = fadd fast float %3338, %2299
  %3342 = fadd fast float %3339, %2300
  %3343 = fadd fast float %3340, %2301
  br label %3344

; <label>:3344                                    ; preds = %3318, %3316, %3270, %3234, %3203, %2603, %2307, %2287
  %3345 = phi float [ %2288, %3203 ], [ %2288, %2603 ], [ %2288, %2287 ], [ %3321, %3318 ], [ %2288, %3316 ], [ %3273, %3270 ], [ %3239, %3234 ], [ %2288, %2307 ]
  %3346 = phi float [ %2289, %3203 ], [ %2289, %2603 ], [ %2289, %2287 ], [ %3322, %3318 ], [ %2289, %3316 ], [ %3274, %3270 ], [ %3240, %3234 ], [ %2289, %2307 ]
  %3347 = phi float [ %3204, %3203 ], [ %2290, %2603 ], [ %2290, %2287 ], [ %3204, %3318 ], [ %3204, %3316 ], [ %3204, %3270 ], [ %3204, %3234 ], [ %2290, %2307 ]
  %3348 = phi float [ %3205, %3203 ], [ %2291, %2603 ], [ %2291, %2287 ], [ %3205, %3318 ], [ %3205, %3316 ], [ %3205, %3270 ], [ %3205, %3234 ], [ %2291, %2307 ]
  %3349 = phi float [ %3206, %3203 ], [ %2292, %2603 ], [ %2292, %2287 ], [ %3206, %3318 ], [ %3206, %3316 ], [ %3206, %3270 ], [ %3206, %3234 ], [ %2292, %2307 ]
  %3350 = phi float [ %3207, %3203 ], [ %2293, %2603 ], [ %2293, %2287 ], [ %3207, %3318 ], [ %3207, %3316 ], [ %3207, %3270 ], [ %3207, %3234 ], [ %2293, %2307 ]
  %3351 = phi float [ %3208, %3203 ], [ %2294, %2603 ], [ %2294, %2287 ], [ %3208, %3318 ], [ %3208, %3316 ], [ %3208, %3270 ], [ %3208, %3234 ], [ %2294, %2307 ]
  %3352 = phi float [ %3209, %3203 ], [ %2295, %2603 ], [ %2295, %2287 ], [ %3209, %3318 ], [ %3209, %3316 ], [ %3209, %3270 ], [ %3209, %3234 ], [ %2295, %2307 ]
  %3353 = phi float [ %2296, %3203 ], [ %2296, %2603 ], [ %2296, %2287 ], [ %3333, %3318 ], [ %2296, %3316 ], [ %3305, %3270 ], [ %3253, %3234 ], [ %2296, %2307 ]
  %3354 = phi float [ %2297, %3203 ], [ %2297, %2603 ], [ %2297, %2287 ], [ %3334, %3318 ], [ %2297, %3316 ], [ %3306, %3270 ], [ %3254, %3234 ], [ %2297, %2307 ]
  %3355 = phi float [ %2298, %3203 ], [ %2298, %2603 ], [ %2298, %2287 ], [ %3335, %3318 ], [ %2298, %3316 ], [ %3307, %3270 ], [ %3255, %3234 ], [ %2298, %2307 ]
  %3356 = phi float [ %2299, %3203 ], [ %2299, %2603 ], [ %2299, %2287 ], [ %3341, %3318 ], [ %2299, %3316 ], [ %3313, %3270 ], [ %3265, %3234 ], [ %2299, %2307 ]
  %3357 = phi float [ %2300, %3203 ], [ %2300, %2603 ], [ %2300, %2287 ], [ %3342, %3318 ], [ %2300, %3316 ], [ %3314, %3270 ], [ %3266, %3234 ], [ %2300, %2307 ]
  %3358 = phi float [ %2301, %3203 ], [ %2301, %2603 ], [ %2301, %2287 ], [ %3343, %3318 ], [ %2301, %3316 ], [ %3315, %3270 ], [ %3267, %3234 ], [ %2301, %2307 ]
  %3359 = phi float [ %3210, %3203 ], [ %2302, %2603 ], [ %2302, %2287 ], [ %3210, %3318 ], [ %3210, %3316 ], [ %3210, %3270 ], [ %3210, %3234 ], [ %2302, %2307 ]
  %3360 = phi float [ %2303, %3203 ], [ %2303, %2603 ], [ %2303, %2287 ], [ %3329, %3318 ], [ %2303, %3316 ], [ %3301, %3270 ], [ %3246, %3234 ], [ %2303, %2307 ]
  %3361 = phi float [ %2304, %3203 ], [ %2304, %2603 ], [ %2304, %2287 ], [ %3326, %3318 ], [ %2304, %3316 ], [ %3278, %3270 ], [ %3243, %3234 ], [ %2304, %2307 ]
  %3362 = phi float [ %2305, %3203 ], [ %2305, %2603 ], [ %2305, %2287 ], [ %3337, %3318 ], [ %2305, %3316 ], [ %3309, %3270 ], [ %3258, %3234 ], [ %2305, %2307 ]
  %3363 = phi float [ %3211, %3203 ], [ %2306, %2603 ], [ %2306, %2287 ], [ %3211, %3318 ], [ %3211, %3316 ], [ %3211, %3270 ], [ %3211, %3234 ], [ %2306, %2307 ]
  br i1 %406, label %4401, label %3364

; <label>:3364                                    ; preds = %3344
  %3365 = icmp ult i32 %460, 4
  %3366 = add i32 %50, 72
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = add i32 %50, 76
  %3370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3369, i32 undef)  ; BufferLoad(srv,index,wot)
  %3371 = extractvalue %dx.types.ResRet.i32 %3370, 0
  %3372 = or i32 %3371, %3368
  %3373 = icmp eq i32 %3372, 0
  br i1 %3373, label %4401, label %3374

; <label>:3374                                    ; preds = %3364
  %3375 = and i32 %3368, 262144
  %3376 = icmp ne i32 %3375, 0
  %3377 = select i1 %3376, float %53, float 1.000000e+00
  %3378 = select i1 %3376, float %54, float 0.000000e+00
  %3379 = select i1 %3376, float %55, float 0.000000e+00
  %3380 = select i1 %3376, float %56, float 1.000000e+00
  %3381 = select i1 %3376, float %57, float %78
  %3382 = select i1 %3376, float %58, float %79
  %3383 = add i32 %50, 332
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = lshr i32 %3385, 16
  %3387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3386)  ; LegacyF16ToF32(value)
  %3388 = fmul fast float %3387, 0x3F50624DE0000000
  %3389 = add i32 %50, 136
  %3390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3391 = extractvalue %dx.types.ResRet.i32 %3390, 0
  %3392 = lshr i32 %3391, 16
  %3393 = and i32 %3392, 255
  %3394 = lshr i32 %3391, 24
  %3395 = add i32 %50, 340
  %3396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3395, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.i32 %3396, 0
  %3398 = and i32 %3397, 65535
  %3399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3398)  ; LegacyF16ToF32(value)
  %3400 = lshr i32 %3397, 16
  %3401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3400)  ; LegacyF16ToF32(value)
  %3402 = add i32 %50, 80
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = lshr i32 %3404, 22
  %3406 = shl nuw nsw i32 %3405, 5
  %3407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3406)  ; LegacyF16ToF32(value)
  %3408 = shl i32 %3404, 4
  %3409 = and i32 %3408, 32752
  %3410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3409)  ; LegacyF16ToF32(value)
  %3411 = lshr i32 %3404, 7
  %3412 = and i32 %3411, 32752
  %3413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3412)  ; LegacyF16ToF32(value)
  %3414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3415 = extractvalue %dx.types.CBufRet.f32 %3414, 3
  %3416 = fmul fast float %3415, 1.000000e+03
  %3417 = fmul fast float %396, %3416
  %3418 = call float @dx.op.unary.f32(i32 22, float %3417)  ; Frc(value)
  %3419 = fadd fast float %3418, %386
  %3420 = fmul fast float %397, %3416
  %3421 = call float @dx.op.unary.f32(i32 22, float %3420)  ; Frc(value)
  %3422 = fadd fast float %3421, %388
  %3423 = fmul fast float %3388, %3416
  %3424 = call float @dx.op.unary.f32(i32 22, float %3423)  ; Frc(value)
  %3425 = fmul fast float %3424, 0x401921FB60000000
  %3426 = fadd fast float %3425, %3407
  %3427 = call float @dx.op.unary.f32(i32 13, float %3426)  ; Sin(value)
  %3428 = call float @dx.op.unary.f32(i32 12, float %3426)  ; Cos(value)
  %3429 = fsub fast float -0.000000e+00, %3427
  %3430 = fadd fast float %3381, -5.000000e-01
  %3431 = fadd fast float %3382, -5.000000e-01
  %3432 = fmul fast float %3399, %3430
  %3433 = fmul fast float %3401, %3431
  %3434 = fadd fast float %3432, 5.000000e-01
  %3435 = fadd fast float %3433, 5.000000e-01
  %3436 = fmul fast float %3410, %3434
  %3437 = fmul fast float %3413, %3435
  %3438 = fmul fast float %3428, %3436
  %3439 = call float @dx.op.tertiary.f32(i32 46, float %3429, float %3437, float %3438)  ; FMad(a,b,c)
  %3440 = fmul fast float %3427, %3436
  %3441 = call float @dx.op.tertiary.f32(i32 46, float %3428, float %3437, float %3440)  ; FMad(a,b,c)
  %3442 = fadd fast float %3419, %3439
  %3443 = fadd fast float %3422, %3441
  %3444 = icmp ugt i32 %3393, 1
  %3445 = icmp ugt i32 %3391, 33554431
  %3446 = or i1 %3445, %3444
  br i1 %3446, label %3447, label %3472

; <label>:3447                                    ; preds = %3374
  %3448 = add i32 %50, 276
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3448, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = lshr i32 %3450, 16
  %3452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3451)  ; LegacyF16ToF32(value)
  %3453 = fmul fast float %3415, %3452
  %3454 = call float @dx.op.unary.f32(i32 22, float %3453)  ; Frc(value)
  %3455 = mul nuw nsw i32 %3393, %3394
  %3456 = uitofp i32 %3455 to float
  %3457 = fmul fast float %3454, %3456
  %3458 = call float @dx.op.unary.f32(i32 27, float %3457)  ; Round_ni(value)
  %3459 = fptoui float %3458 to i32
  %3460 = urem i32 %3459, %3393
  %3461 = udiv i32 %3459, %3394
  %3462 = call float @dx.op.unary.f32(i32 22, float %3442)  ; Frc(value)
  %3463 = call float @dx.op.unary.f32(i32 22, float %3443)  ; Frc(value)
  %3464 = uitofp i32 %3460 to float
  %3465 = uitofp i32 %3461 to float
  %3466 = fadd fast float %3462, %3464
  %3467 = fadd fast float %3463, %3465
  %3468 = uitofp i32 %3393 to float
  %3469 = uitofp i32 %3394 to float
  %3470 = fdiv fast float %3466, %3468
  %3471 = fdiv fast float %3467, %3469
  br label %3472

; <label>:3472                                    ; preds = %3447, %3374
  %3473 = phi float [ %3470, %3447 ], [ %3442, %3374 ]
  %3474 = phi float [ %3471, %3447 ], [ %3443, %3374 ]
  %3475 = and i32 %3368, 16777216
  %3476 = icmp eq i32 %3475, 0
  br i1 %3476, label %3586, label %3477

; <label>:3477                                    ; preds = %3472
  %3478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3479 = extractvalue %dx.types.CBufRet.f32 %3478, 0
  %3480 = extractvalue %dx.types.CBufRet.f32 %3478, 1
  %3481 = extractvalue %dx.types.CBufRet.f32 %3478, 2
  %3482 = fadd fast float %3479, %154
  %3483 = fadd fast float %3480, %155
  %3484 = fadd fast float %3481, %156
  %3485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.f32 %3485, 0
  %3487 = call float @dx.op.unary.f32(i32 7, float %3486)  ; Saturate(value)
  %3488 = icmp eq i32 %51, 65535
  br i1 %3488, label %3583, label %3489

; <label>:3489                                    ; preds = %3477
  %3490 = lshr i32 %51, 1
  %3491 = shl i32 %3490, 2
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = and i32 %51, 1
  %3495 = icmp ne i32 %3494, 0
  %3496 = lshr i32 %3493, 16
  %3497 = and i32 %3493, 65535
  %3498 = select i1 %3495, i32 %3496, i32 %3497
  %3499 = icmp eq i32 %3498, 65535
  br i1 %3499, label %3579, label %3500

; <label>:3500                                    ; preds = %3489
  %3501 = mul nuw nsw i32 %3498, 40
  %3502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.f32 %3502, 0
  %3504 = extractvalue %dx.types.ResRet.f32 %3502, 1
  %3505 = extractvalue %dx.types.ResRet.f32 %3502, 2
  %3506 = add nuw nsw i32 %3501, 12
  %3507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = add nuw nsw i32 %3501, 24
  %3512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3511, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.f32 %3512, 0
  %3514 = extractvalue %dx.types.ResRet.f32 %3512, 1
  %3515 = extractvalue %dx.types.ResRet.f32 %3512, 2
  %3516 = add nuw nsw i32 %3501, 36
  %3517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3516, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  %3519 = fsub fast float %3482, %3503
  %3520 = fsub fast float %3483, %3504
  %3521 = fsub fast float %3484, %3505
  %3522 = fmul fast float %3518, %3519
  %3523 = fmul fast float %3518, %3520
  %3524 = fmul fast float %3518, %3521
  %3525 = call float @dx.op.unary.f32(i32 27, float %3522)  ; Round_ni(value)
  %3526 = call float @dx.op.unary.f32(i32 27, float %3523)  ; Round_ni(value)
  %3527 = call float @dx.op.unary.f32(i32 27, float %3524)  ; Round_ni(value)
  %3528 = fadd fast float %3525, 5.000000e-01
  %3529 = fadd fast float %3526, 5.000000e-01
  %3530 = fadd fast float %3527, 5.000000e-01
  %3531 = fmul fast float %3528, %3508
  %3532 = fmul fast float %3529, %3509
  %3533 = fmul fast float %3530, %3510
  %3534 = shl i32 %51, 2
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = add i32 %3536, 0
  %3538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3539 = call float @dx.op.unary.f32(i32 22, float %3531)  ; Frc(value)
  %3540 = call float @dx.op.unary.f32(i32 22, float %3532)  ; Frc(value)
  %3541 = call float @dx.op.unary.f32(i32 22, float %3533)  ; Frc(value)
  %3542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3538, %dx.types.Handle %45, float %3539, float %3540, float %3541, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3543 = extractvalue %dx.types.ResRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.ResRet.f32 %3542, 1
  %3545 = extractvalue %dx.types.ResRet.f32 %3542, 2
  %3546 = fmul fast float %3543, 1.023000e+03
  %3547 = fmul fast float %3544, 1.023000e+03
  %3548 = fmul fast float %3545, 1.023000e+03
  %3549 = fadd fast float %3546, 5.000000e-01
  %3550 = fadd fast float %3547, 5.000000e-01
  %3551 = fadd fast float %3548, 5.000000e-01
  %3552 = call float @dx.op.unary.f32(i32 27, float %3549)  ; Round_ni(value)
  %3553 = call float @dx.op.unary.f32(i32 27, float %3550)  ; Round_ni(value)
  %3554 = call float @dx.op.unary.f32(i32 27, float %3551)  ; Round_ni(value)
  %3555 = fsub fast float %3522, %3525
  %3556 = fsub fast float %3523, %3526
  %3557 = fsub fast float %3524, %3527
  %3558 = fmul fast float %3555, 7.500000e-01
  %3559 = fmul fast float %3556, 7.500000e-01
  %3560 = fmul fast float %3557, 7.500000e-01
  %3561 = fadd fast float %3525, 1.250000e-01
  %3562 = fadd fast float %3561, %3558
  %3563 = fadd fast float %3562, %3552
  %3564 = fadd fast float %3526, 1.250000e-01
  %3565 = fadd fast float %3564, %3559
  %3566 = fadd fast float %3565, %3553
  %3567 = fadd fast float %3527, 1.250000e-01
  %3568 = fadd fast float %3567, %3560
  %3569 = fadd fast float %3568, %3554
  %3570 = fmul fast float %3563, %3513
  %3571 = fmul fast float %3566, %3514
  %3572 = fmul fast float %3569, %3515
  %3573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.i32 %3573, 0
  %3575 = add i32 %3574, 0
  %3576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3576, %dx.types.Handle %43, float %3570, float %3571, float %3572, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3578 = extractvalue %dx.types.ResRet.f32 %3577, 0
  br label %3579

; <label>:3579                                    ; preds = %3500, %3489
  %3580 = phi float [ %3578, %3500 ], [ -1.000000e+00, %3489 ]
  %3581 = fadd fast float %3580, %3487
  %3582 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  br label %3583

; <label>:3583                                    ; preds = %3579, %3477
  %3584 = phi float [ %3582, %3579 ], [ %3487, %3477 ]
  %3585 = fmul fast float %3584, %455
  br label %3586

; <label>:3586                                    ; preds = %3583, %3472
  %3587 = phi float [ %3585, %3583 ], [ %455, %3472 ]
  %3588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.i32 %3588, 0
  %3590 = and i32 %3589, 256
  %3591 = icmp eq i32 %3590, 0
  br i1 %3591, label %3638, label %3592

; <label>:3592                                    ; preds = %3586
  %3593 = add i32 %50, 436
  %3594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.i32 %3594, 0
  %3596 = add i32 %3595, 0
  %3597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3598 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3597, %dx.types.Handle %96, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = add i32 %50, 148
  %3601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.i32 %3601, 0
  %3603 = shl i32 %3602, 4
  %3604 = and i32 %3603, 32752
  %3605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3604)  ; LegacyF16ToF32(value)
  %3606 = lshr i32 %3602, 7
  %3607 = and i32 %3606, 32752
  %3608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3607)  ; LegacyF16ToF32(value)
  %3609 = fsub fast float 1.000000e+00, %3587
  %3610 = call float @dx.op.binary.f32(i32 35, float %3609, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3611 = bitcast float %3587 to i32
  %3612 = sitofp i32 %3611 to float
  %3613 = fadd fast float %3612, 0xC1CFBF8940000000
  %3614 = fmul fast float %3608, %3613
  %3615 = fadd fast float %3614, 0x41CFBF8940000000
  %3616 = fptosi float %3615 to i32
  %3617 = bitcast i32 %3616 to float
  %3618 = bitcast float %3610 to i32
  %3619 = sitofp i32 %3618 to float
  %3620 = fadd fast float %3619, 0xC1CFBF8940000000
  %3621 = fmul fast float %3620, %3608
  %3622 = fadd fast float %3621, 0x41CFBF8940000000
  %3623 = fptosi float %3622 to i32
  %3624 = bitcast i32 %3623 to float
  %3625 = fmul fast float %3617, %3605
  %3626 = fmul fast float %3624, %3605
  %3627 = fsub fast float %3610, %3625
  %3628 = fadd fast float %3626, %3610
  %3629 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  %3630 = call float @dx.op.unary.f32(i32 7, float %3628)  ; Saturate(value)
  %3631 = fsub fast float %3599, %3629
  %3632 = fsub fast float %3630, %3629
  %3633 = bitcast float %3632 to i32
  %3634 = sub nsw i32 2129859010, %3633
  %3635 = bitcast i32 %3634 to float
  %3636 = fmul fast float %3635, %3631
  %3637 = call float @dx.op.unary.f32(i32 7, float %3636)  ; Saturate(value)
  br label %3638

; <label>:3638                                    ; preds = %3592, %3586
  %3639 = phi float [ %3637, %3592 ], [ %3587, %3586 ]
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = and i32 %3641, 128
  %3643 = icmp eq i32 %3642, 0
  br i1 %3643, label %3660, label %3644

; <label>:3644                                    ; preds = %3638
  %3645 = add i32 %50, 420
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 0
  %3648 = add i32 %3647, 0
  %3649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3649, %dx.types.Handle %96, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.i32 %3652, 0
  %3654 = and i32 %3653, 524288
  %3655 = icmp ne i32 %3654, 0
  %3656 = fcmp fast ogt float %3651, 0x3FE0101020000000
  %3657 = select i1 %3656, float 1.000000e+00, float 0.000000e+00
  %3658 = select i1 %3655, float %3657, float %3651
  %3659 = fmul fast float %3658, %3639
  br label %3660

; <label>:3660                                    ; preds = %3644, %3638
  %3661 = phi float [ %3659, %3644 ], [ %3639, %3638 ]
  %3662 = fcmp fast ult float %3661, 0x3F70101020000000
  br i1 %3662, label %4401, label %3663

; <label>:3663                                    ; preds = %3660
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = and i32 %3665, 16
  %3667 = icmp eq i32 %3666, 0
  br i1 %3667, label %3866, label %3668

; <label>:3668                                    ; preds = %3663
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3389, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = add i32 %50, 372
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = add i32 %3673, 0
  %3675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3676 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3675, %dx.types.Handle %95, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3677 = extractvalue %dx.types.ResRet.f32 %3676, 0
  %3678 = extractvalue %dx.types.ResRet.f32 %3676, 1
  %3679 = extractvalue %dx.types.ResRet.f32 %3676, 2
  %3680 = extractvalue %dx.types.ResRet.f32 %3676, 3
  %3681 = and i32 %3670, 255
  %3682 = uitofp i32 %3681 to float
  %3683 = lshr i32 %3670, 8
  %3684 = and i32 %3683, 255
  %3685 = uitofp i32 %3684 to float
  %3686 = fmul fast float %3680, %3682
  %3687 = fadd fast float %3686, %3685
  %3688 = fmul fast float %3687, 0x3F70101000000000
  %3689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.i32 %3689, 0
  %3691 = and i32 %3690, 512
  %3692 = icmp eq i32 %3691, 0
  br i1 %3692, label %3701, label %3693

; <label>:3693                                    ; preds = %3668
  %3694 = add i32 %50, 452
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = add i32 %3696, 0
  %3698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3697, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3699 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3698, %dx.types.Handle %96, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  br label %3701

; <label>:3701                                    ; preds = %3693, %3668
  %3702 = phi float [ %3700, %3693 ], [ 1.000000e+00, %3668 ]
  %3703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.i32 %3703, 0
  %3705 = and i32 %3704, 33554432
  %3706 = icmp eq i32 %3705, 0
  br i1 %3706, label %3813, label %3707

; <label>:3707                                    ; preds = %3701
  %3708 = add i32 %50, 272
  %3709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.i32 %3709, 0
  %3711 = and i32 %3710, 65535
  %3712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3711)  ; LegacyF16ToF32(value)
  %3713 = lshr i32 %3710, 16
  %3714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3713)  ; LegacyF16ToF32(value)
  %3715 = add i32 %50, 276
  %3716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.i32 %3716, 0
  %3718 = and i32 %3717, 65535
  %3719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3718)  ; LegacyF16ToF32(value)
  %3720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.i32 %3720, 0
  %3722 = lshr i32 %3721, 24
  %3723 = uitofp i32 %3722 to float
  %3724 = fmul fast float %3723, 0x3F70101020000000
  %3725 = and i32 %3721, 255
  %3726 = uitofp i32 %3725 to float
  %3727 = fmul fast float %3726, 0x3F70101020000000
  %3728 = lshr i32 %3721, 8
  %3729 = and i32 %3728, 255
  %3730 = uitofp i32 %3729 to float
  %3731 = fmul fast float %3730, 0x3F70101020000000
  %3732 = lshr i32 %3721, 16
  %3733 = and i32 %3732, 255
  %3734 = uitofp i32 %3733 to float
  %3735 = fmul fast float %3734, 0x3F70101020000000
  %3736 = add i32 %50, 268
  %3737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.i32 %3737, 0
  %3739 = lshr i32 %3738, 24
  %3740 = uitofp i32 %3739 to float
  %3741 = fmul fast float %3740, 0x3F70101020000000
  %3742 = and i32 %3738, 255
  %3743 = uitofp i32 %3742 to float
  %3744 = fmul fast float %3743, 0x3F70101020000000
  %3745 = lshr i32 %3738, 8
  %3746 = and i32 %3745, 255
  %3747 = uitofp i32 %3746 to float
  %3748 = fmul fast float %3747, 0x3F70101020000000
  %3749 = lshr i32 %3738, 16
  %3750 = and i32 %3749, 255
  %3751 = uitofp i32 %3750 to float
  %3752 = fmul fast float %3751, 0x3F70101020000000
  %3753 = bitcast float %3677 to i32
  %3754 = ashr i32 %3753, 1
  %3755 = sub nsw i32 1597463174, %3754
  %3756 = bitcast i32 %3755 to float
  %3757 = fmul fast float %3677, 5.000000e-01
  %3758 = fmul fast float %3756, %3756
  %3759 = fmul fast float %3758, %3757
  %3760 = fsub fast float 1.500000e+00, %3759
  %3761 = fmul fast float %3756, %3677
  %3762 = fmul fast float %3761, %3760
  %3763 = bitcast float %3678 to i32
  %3764 = ashr i32 %3763, 1
  %3765 = sub nsw i32 1597463174, %3764
  %3766 = bitcast i32 %3765 to float
  %3767 = fmul fast float %3678, 5.000000e-01
  %3768 = fmul fast float %3766, %3766
  %3769 = fmul fast float %3768, %3767
  %3770 = fsub fast float 1.500000e+00, %3769
  %3771 = fmul fast float %3766, %3678
  %3772 = fmul fast float %3771, %3770
  %3773 = bitcast float %3679 to i32
  %3774 = ashr i32 %3773, 1
  %3775 = sub nsw i32 1597463174, %3774
  %3776 = bitcast i32 %3775 to float
  %3777 = fmul fast float %3679, 5.000000e-01
  %3778 = fmul fast float %3776, %3776
  %3779 = fmul fast float %3778, %3777
  %3780 = fsub fast float 1.500000e+00, %3779
  %3781 = fmul fast float %3776, %3679
  %3782 = fmul fast float %3781, %3780
  %3783 = fsub fast float %3762, %3744
  %3784 = fsub fast float %3772, %3748
  %3785 = fsub fast float %3782, %3752
  %3786 = fmul fast float %3783, %3712
  %3787 = fmul fast float %3784, %3714
  %3788 = fmul fast float %3785, %3719
  %3789 = fadd fast float %3786, %3727
  %3790 = fadd fast float %3787, %3731
  %3791 = fadd fast float %3788, %3735
  %3792 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3793 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3794 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  %3795 = fmul fast float %3792, %3792
  %3796 = fmul fast float %3793, %3793
  %3797 = fmul fast float %3794, %3794
  %3798 = fsub fast float %3795, %3677
  %3799 = fsub fast float %3796, %3678
  %3800 = fsub fast float %3797, %3679
  %3801 = fmul fast float %3798, %3702
  %3802 = fmul fast float %3799, %3702
  %3803 = fmul fast float %3800, %3702
  %3804 = fadd fast float %3801, %3677
  %3805 = fadd fast float %3802, %3678
  %3806 = fadd fast float %3803, %3679
  %3807 = fadd fast float %3724, %3688
  %3808 = fsub fast float %3807, %3741
  %3809 = call float @dx.op.unary.f32(i32 7, float %3808)  ; Saturate(value)
  %3810 = fsub fast float %3809, %3688
  %3811 = fmul fast float %3810, %3702
  %3812 = fadd fast float %3811, %3688
  br label %3866

; <label>:3813                                    ; preds = %3701
  %3814 = and i32 %3704, 134217728
  %3815 = icmp eq i32 %3814, 0
  br i1 %3815, label %3850, label %3816

; <label>:3816                                    ; preds = %3813
  %3817 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %3818 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %3819 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %3820 = fadd fast float %3817, -5.000000e-01
  %3821 = fadd fast float %3818, -5.000000e-01
  %3822 = fadd fast float %3819, -5.000000e-01
  %3823 = fmul fast float %3820, %3702
  %3824 = fmul fast float %3821, %3702
  %3825 = fmul fast float %3822, %3702
  %3826 = fadd fast float %3823, 5.000000e-01
  %3827 = fadd fast float %3824, 5.000000e-01
  %3828 = fadd fast float %3825, 5.000000e-01
  %3829 = call float @dx.op.unary.f32(i32 24, float %3677)  ; Sqrt(value)
  %3830 = call float @dx.op.unary.f32(i32 24, float %3678)  ; Sqrt(value)
  %3831 = call float @dx.op.unary.f32(i32 24, float %3679)  ; Sqrt(value)
  %3832 = fmul fast float %3826, 2.000000e+00
  %3833 = fsub fast float 1.000000e+00, %3832
  %3834 = fmul fast float %3833, %3829
  %3835 = fadd fast float %3834, %3832
  %3836 = fmul fast float %3835, %3829
  %3837 = fmul fast float %3827, 2.000000e+00
  %3838 = fsub fast float 1.000000e+00, %3837
  %3839 = fmul fast float %3838, %3830
  %3840 = fadd fast float %3839, %3837
  %3841 = fmul fast float %3840, %3830
  %3842 = fmul fast float %3828, 2.000000e+00
  %3843 = fsub fast float 1.000000e+00, %3842
  %3844 = fmul fast float %3843, %3831
  %3845 = fadd fast float %3844, %3842
  %3846 = fmul fast float %3845, %3831
  %3847 = fmul fast float %3836, %3836
  %3848 = fmul fast float %3841, %3841
  %3849 = fmul fast float %3846, %3846
  br label %3866

; <label>:3850                                    ; preds = %3813
  %3851 = fmul fast float %373, %373
  %3852 = fmul fast float %377, %377
  %3853 = fmul fast float %381, %381
  %3854 = fadd fast float %3851, -1.000000e+00
  %3855 = fadd fast float %3852, -1.000000e+00
  %3856 = fadd fast float %3853, -1.000000e+00
  %3857 = fmul fast float %3702, %3854
  %3858 = fmul fast float %3702, %3855
  %3859 = fmul fast float %3702, %3856
  %3860 = fadd fast float %3857, 1.000000e+00
  %3861 = fadd fast float %3858, 1.000000e+00
  %3862 = fadd fast float %3859, 1.000000e+00
  %3863 = fmul fast float %3860, %3677
  %3864 = fmul fast float %3861, %3678
  %3865 = fmul fast float %3862, %3679
  br label %3866

; <label>:3866                                    ; preds = %3850, %3816, %3707, %3663
  %3867 = phi float [ %3812, %3707 ], [ %3688, %3816 ], [ %3688, %3850 ], [ 0x3FA23C0BE0000000, %3663 ]
  %3868 = phi float [ %3804, %3707 ], [ %3847, %3816 ], [ %3863, %3850 ], [ 1.000000e+00, %3663 ]
  %3869 = phi float [ %3805, %3707 ], [ %3848, %3816 ], [ %3864, %3850 ], [ 1.000000e+00, %3663 ]
  %3870 = phi float [ %3806, %3707 ], [ %3849, %3816 ], [ %3865, %3850 ], [ 1.000000e+00, %3663 ]
  %3871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3872 = extractvalue %dx.types.CBufRet.i32 %3871, 1
  %3873 = and i32 %3872, 1
  %3874 = icmp ne i32 %3873, 0
  %3875 = add i32 %50, 356
  %3876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3875, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.i32 %3876, 0
  %3878 = and i32 %3877, 32
  %3879 = icmp ne i32 %3878, 0
  %3880 = and i1 %3874, %3879
  %3881 = select i1 %3880, float 1.000000e+00, float %3868
  %3882 = select i1 %3880, float 0x3FD3333340000000, float %3869
  %3883 = select i1 %3880, float 0x3FD3333340000000, float %3870
  %3884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.i32 %3884, 0
  %3886 = and i32 %3885, 32
  %3887 = icmp eq i32 %3886, 0
  br i1 %3887, label %3960, label %3888

; <label>:3888                                    ; preds = %3866
  %3889 = add i32 %50, 140
  %3890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.i32 %3890, 0
  %3892 = add i32 %50, 388
  %3893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3892, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.i32 %3893, 0
  %3895 = add i32 %3894, 0
  %3896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3895, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3896, %dx.types.Handle %95, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.ResRet.f32 %3897, 1
  %3900 = extractvalue %dx.types.ResRet.f32 %3897, 2
  %3901 = extractvalue %dx.types.ResRet.f32 %3897, 3
  %3902 = and i32 %3891, 255
  %3903 = uitofp i32 %3902 to float
  %3904 = lshr i32 %3891, 8
  %3905 = and i32 %3904, 255
  %3906 = uitofp i32 %3905 to float
  %3907 = lshr i32 %3891, 16
  %3908 = and i32 %3907, 255
  %3909 = uitofp i32 %3908 to float
  %3910 = fmul fast float %3909, 0x3F70101000000000
  %3911 = fmul fast float %3898, %3903
  %3912 = fadd fast float %3911, %3906
  %3913 = fmul fast float %3912, 0x3F70101000000000
  %3914 = fadd fast float %3899, -5.000000e-01
  %3915 = fadd fast float %3901, -5.000000e-01
  %3916 = fmul fast float %3914, %3910
  %3917 = fmul fast float %3915, %3910
  %3918 = fadd fast float %3916, 5.000000e-01
  %3919 = fadd fast float %3917, 5.000000e-01
  %3920 = fmul fast float %3918, 2.000000e+00
  %3921 = fadd fast float %3920, -1.000000e+00
  %3922 = fmul fast float %3919, 2.000000e+00
  %3923 = fadd fast float %3922, -1.000000e+00
  %3924 = fadd fast float %3921, %3923
  %3925 = fmul fast float %3924, 5.000000e-01
  %3926 = fsub fast float %3921, %3923
  %3927 = fmul fast float %3926, 5.000000e-01
  %3928 = call float @dx.op.unary.f32(i32 6, float %3925)  ; FAbs(value)
  %3929 = fsub fast float 1.000000e+00, %3928
  %3930 = call float @dx.op.unary.f32(i32 6, float %3927)  ; FAbs(value)
  %3931 = fsub fast float %3929, %3930
  %3932 = call float @dx.op.dot3.f32(i32 55, float %3925, float %3927, float %3931, float %3925, float %3927, float %3931)  ; Dot3(ax,ay,az,bx,by,bz)
  %3933 = call float @dx.op.unary.f32(i32 25, float %3932)  ; Rsqrt(value)
  %3934 = fmul fast float %3925, %3933
  %3935 = fmul fast float %3927, %3933
  %3936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.i32 %3936, 0
  %3938 = and i32 %3937, 67108864
  %3939 = icmp eq i32 %3938, 0
  br i1 %3939, label %3956, label %3940

; <label>:3940                                    ; preds = %3888
  %3941 = add i32 %50, 328
  %3942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.i32 %3942, 0
  %3944 = and i32 %3943, 65535
  %3945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3944)  ; LegacyF16ToF32(value)
  %3946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.i32 %3946, 0
  %3948 = and i32 %3947, 65535
  %3949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3948)  ; LegacyF16ToF32(value)
  %3950 = lshr i32 %3943, 16
  %3951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3950)  ; LegacyF16ToF32(value)
  %3952 = fsub fast float %3913, %3951
  %3953 = fmul fast float %3952, %3945
  %3954 = fadd fast float %3953, %3949
  %3955 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  br label %3956

; <label>:3956                                    ; preds = %3940, %3888
  %3957 = phi float [ %3955, %3940 ], [ %3913, %3888 ]
  %3958 = call float @dx.op.dot2.f32(i32 54, float %3934, float %3935, float %3377, float %3378)  ; Dot2(ax,ay,bx,by)
  %3959 = call float @dx.op.dot2.f32(i32 54, float %3934, float %3935, float %3379, float %3380)  ; Dot2(ax,ay,bx,by)
  br label %3960

; <label>:3960                                    ; preds = %3956, %3866
  %3961 = phi float [ %3957, %3956 ], [ 0x3FD6666660000000, %3866 ]
  %3962 = phi float [ %3958, %3956 ], [ 0.000000e+00, %3866 ]
  %3963 = phi float [ %3959, %3956 ], [ 0.000000e+00, %3866 ]
  %3964 = phi float [ %3900, %3956 ], [ 1.000000e+00, %3866 ]
  %3965 = add i32 %50, 208
  %3966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3967 = extractvalue %dx.types.ResRet.i32 %3966, 0
  %3968 = lshr i32 %3967, 22
  %3969 = shl nuw nsw i32 %3968, 5
  %3970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3969)  ; LegacyF16ToF32(value)
  %3971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3972 = extractvalue %dx.types.ResRet.i32 %3971, 0
  %3973 = and i32 %3972, 64
  %3974 = icmp eq i32 %3973, 0
  br i1 %3974, label %4008, label %3975

; <label>:3975                                    ; preds = %3960
  %3976 = add i32 %50, 404
  %3977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3976, i32 undef)  ; BufferLoad(srv,index,wot)
  %3978 = extractvalue %dx.types.ResRet.i32 %3977, 0
  %3979 = add i32 %3978, 0
  %3980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3982 = extractvalue %dx.types.ResRet.i32 %3981, 0
  %3983 = and i32 %3982, 131072
  %3984 = icmp eq i32 %3983, 0
  %3985 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3980, %dx.types.Handle %95, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3986 = extractvalue %dx.types.ResRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.ResRet.f32 %3985, 1
  %3988 = extractvalue %dx.types.ResRet.f32 %3985, 2
  %3989 = fmul fast float %3986, %361
  %3990 = fmul fast float %3987, %364
  %3991 = fmul fast float %3988, %367
  br i1 %3984, label %3998, label %3992

; <label>:3992                                    ; preds = %3975
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3995 = fmul fast float %3994, %3989
  %3996 = fmul fast float %3994, %3990
  %3997 = fmul fast float %3994, %3991
  br label %3998

; <label>:3998                                    ; preds = %3992, %3975
  %3999 = phi float [ %3995, %3992 ], [ %3989, %3975 ]
  %4000 = phi float [ %3996, %3992 ], [ %3990, %3975 ]
  %4001 = phi float [ %3997, %3992 ], [ %3991, %3975 ]
  %4002 = fmul fast float %3999, %3970
  %4003 = select i1 %215, float %4002, float %3999
  %4004 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4000, float %4001, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4005 = select i1 %215, float 0.000000e+00, float %3999
  %4006 = select i1 %215, float %4004, float %4000
  %4007 = select i1 %215, float 0.000000e+00, float %4001
  br label %4008

; <label>:4008                                    ; preds = %3998, %3960
  %4009 = phi float [ %4005, %3998 ], [ 0.000000e+00, %3960 ]
  %4010 = phi float [ %4006, %3998 ], [ 0.000000e+00, %3960 ]
  %4011 = phi float [ %4007, %3998 ], [ 0.000000e+00, %3960 ]
  %4012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4013 = extractvalue %dx.types.ResRet.i32 %4012, 0
  %4014 = and i32 %4013, 1024
  %4015 = icmp eq i32 %4014, 0
  br i1 %4015, label %4046, label %4016

; <label>:4016                                    ; preds = %4008
  %4017 = add i32 %50, 200
  %4018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4017, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.i32 %4018, 0
  %4020 = and i32 %4019, 255
  %4021 = uitofp i32 %4020 to float
  %4022 = fmul fast float %4021, 0x3F70101020000000
  %4023 = lshr i32 %4019, 8
  %4024 = and i32 %4023, 255
  %4025 = uitofp i32 %4024 to float
  %4026 = fmul fast float %4025, 0x3F70101020000000
  %4027 = lshr i32 %4019, 16
  %4028 = and i32 %4027, 255
  %4029 = uitofp i32 %4028 to float
  %4030 = fmul fast float %4029, 0x3F70101020000000
  %4031 = fmul fast float %4022, %4022
  %4032 = fmul fast float %4026, %4026
  %4033 = fmul fast float %4030, %4030
  %4034 = add i32 %50, 468
  %4035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.i32 %4035, 0
  %4037 = add i32 %4036, 0
  %4038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4039 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4038, %dx.types.Handle %96, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4040 = extractvalue %dx.types.ResRet.f32 %4039, 0
  %4041 = extractvalue %dx.types.ResRet.f32 %4039, 1
  %4042 = extractvalue %dx.types.ResRet.f32 %4039, 2
  %4043 = fmul fast float %4031, %4040
  %4044 = fmul fast float %4032, %4041
  %4045 = fmul fast float %4033, %4042
  br label %4046

; <label>:4046                                    ; preds = %4016, %4008
  %4047 = phi float [ %4043, %4016 ], [ 0.000000e+00, %4008 ]
  %4048 = phi float [ %4044, %4016 ], [ 0.000000e+00, %4008 ]
  %4049 = phi float [ %4045, %4016 ], [ 0.000000e+00, %4008 ]
  %4050 = fcmp fast ogt float %4047, 0.000000e+00
  %4051 = fcmp fast ogt float %4048, 0.000000e+00
  %4052 = fcmp fast ogt float %4049, 0.000000e+00
  %4053 = call float @dx.op.unary.f32(i32 23, float %4047)  ; Log(value)
  %4054 = call float @dx.op.unary.f32(i32 23, float %4048)  ; Log(value)
  %4055 = call float @dx.op.unary.f32(i32 23, float %4049)  ; Log(value)
  %4056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.i32 %4056, 0
  %4058 = lshr i32 %4057, 7
  %4059 = and i32 %4058, 32752
  %4060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4059)  ; LegacyF16ToF32(value)
  %4061 = fmul fast float %4053, 0xBFE62E4300000000
  %4062 = fmul fast float %4061, %4060
  %4063 = fmul fast float %4054, 0xBFE62E4300000000
  %4064 = fmul fast float %4063, %4060
  %4065 = fmul fast float %4055, 0xBFE62E4300000000
  %4066 = fmul fast float %4065, %4060
  %4067 = select i1 %4050, float %4062, float 1.270000e+02
  %4068 = select i1 %4051, float %4064, float 1.270000e+02
  %4069 = select i1 %4052, float %4066, float 1.270000e+02
  %4070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4071 = extractvalue %dx.types.ResRet.i32 %4070, 0
  %4072 = and i32 %4071, 10240
  %4073 = icmp eq i32 %4072, 0
  br i1 %4073, label %4118, label %4074

; <label>:4074                                    ; preds = %4046
  %4075 = add i32 %50, 484
  %4076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4075, i32 undef)  ; BufferLoad(srv,index,wot)
  %4077 = extractvalue %dx.types.ResRet.i32 %4076, 0
  %4078 = add i32 %4077, 0
  %4079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4079, %dx.types.Handle %96, float %3473, float %3474, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4081 = extractvalue %dx.types.ResRet.f32 %4080, 1
  %4082 = extractvalue %dx.types.ResRet.f32 %4080, 3
  %4083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4084 = extractvalue %dx.types.ResRet.i32 %4083, 0
  %4085 = and i32 %4084, 1048576
  %4086 = icmp ne i32 %4085, 0
  %4087 = and i32 %4084, 8192
  %4088 = icmp eq i32 %4087, 0
  br i1 %4088, label %4104, label %4089

; <label>:4089                                    ; preds = %4074
  %4090 = extractvalue %dx.types.ResRet.f32 %4080, 2
  %4091 = select i1 %4086, float %4090, float %4081
  %4092 = extractvalue %dx.types.ResRet.f32 %4080, 0
  %4093 = select i1 %4086, float %4092, float %4081
  %4094 = add i32 %50, 144
  %4095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.i32 %4095, 0
  %4097 = lshr i32 %4096, 16
  %4098 = and i32 %4097, 255
  %4099 = uitofp i32 %4098 to float
  %4100 = fmul fast float %4099, 0x3F80101020000000
  %4101 = fmul fast float %4100, %4093
  %4102 = fmul fast float %4100, %4081
  %4103 = fmul fast float %4100, %4091
  br label %4104

; <label>:4104                                    ; preds = %4089, %4074
  %4105 = phi float [ %4101, %4089 ], [ 0.000000e+00, %4074 ]
  %4106 = phi float [ %4102, %4089 ], [ 0.000000e+00, %4074 ]
  %4107 = phi float [ %4103, %4089 ], [ 0.000000e+00, %4074 ]
  %4108 = and i32 %4084, 2048
  %4109 = icmp eq i32 %4108, 0
  br i1 %4109, label %4118, label %4110

; <label>:4110                                    ; preds = %4104
  %4111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %4112 = extractvalue %dx.types.ResRet.i32 %4111, 0
  %4113 = shl i32 %4112, 4
  %4114 = and i32 %4113, 32752
  %4115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4114)  ; LegacyF16ToF32(value)
  %4116 = fmul fast float %4115, %4082
  %4117 = call float @dx.op.binary.f32(i32 35, float %4116, float 0x3F70101020000000)  ; FMax(a,b)
  br label %4118

; <label>:4118                                    ; preds = %4110, %4104, %4046
  %4119 = phi float [ %4105, %4110 ], [ %4105, %4104 ], [ 0.000000e+00, %4046 ]
  %4120 = phi float [ %4106, %4110 ], [ %4106, %4104 ], [ 0.000000e+00, %4046 ]
  %4121 = phi float [ %4107, %4110 ], [ %4107, %4104 ], [ 0.000000e+00, %4046 ]
  %4122 = phi float [ %4117, %4110 ], [ 0x3F70101020000000, %4104 ], [ 0x3F70101020000000, %4046 ]
  %4123 = add i32 %50, 144
  %4124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4123, i32 undef)  ; BufferLoad(srv,index,wot)
  %4125 = extractvalue %dx.types.ResRet.i32 %4124, 0
  %4126 = and i32 %4125, 255
  %4127 = uitofp i32 %4126 to float
  %4128 = lshr i32 %4125, 8
  %4129 = and i32 %4128, 255
  %4130 = uitofp i32 %4129 to float
  %4131 = call float @dx.op.dot3.f32(i32 55, float %3881, float %3882, float %3883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4132 = fmul fast float %4130, %4131
  %4133 = fadd fast float %4132, %4127
  %4134 = fmul fast float %4133, 0x3F70101020000000
  %4135 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  br i1 %3365, label %4136, label %4171

; <label>:4136                                    ; preds = %4118
  %4137 = fmul fast float %4122, 2.000000e+00
  %4138 = fcmp fast olt float %4067, 1.270000e+02
  %4139 = fcmp fast olt float %4068, 1.270000e+02
  %4140 = fcmp fast olt float %4069, 1.270000e+02
  %4141 = fmul fast float %4067, 0xBFF7154760000000
  %4142 = fmul fast float %4141, %4137
  %4143 = fmul fast float %4068, 0xBFF7154760000000
  %4144 = fmul fast float %4143, %4137
  %4145 = fmul fast float %4069, 0xBFF7154760000000
  %4146 = fmul fast float %4145, %4137
  %4147 = call float @dx.op.unary.f32(i32 21, float %4142)  ; Exp(value)
  %4148 = call float @dx.op.unary.f32(i32 21, float %4144)  ; Exp(value)
  %4149 = call float @dx.op.unary.f32(i32 21, float %4146)  ; Exp(value)
  %4150 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4151 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4152 = call float @dx.op.unary.f32(i32 7, float %4149)  ; Saturate(value)
  %4153 = fadd fast float %4150, -1.000000e+00
  %4154 = select i1 %4138, float %4153, float -1.000000e+00
  %4155 = fadd fast float %4151, -1.000000e+00
  %4156 = select i1 %4139, float %4155, float -1.000000e+00
  %4157 = fadd fast float %4152, -1.000000e+00
  %4158 = select i1 %4140, float %4157, float -1.000000e+00
  %4159 = fmul fast float %4154, %3661
  %4160 = fmul fast float %4156, %3661
  %4161 = fmul fast float %4158, %3661
  %4162 = fadd fast float %4159, 1.000000e+00
  %4163 = fadd fast float %4160, 1.000000e+00
  %4164 = fadd fast float %4161, 1.000000e+00
  %4165 = fmul fast float %4162, %3347
  %4166 = fmul fast float %4163, %3348
  %4167 = fmul fast float %4164, %3349
  %4168 = fmul fast float %4162, %3350
  %4169 = fmul fast float %4163, %3351
  %4170 = fmul fast float %4164, %3352
  br label %4171

; <label>:4171                                    ; preds = %4136, %4118
  %4172 = phi float [ %4165, %4136 ], [ %3347, %4118 ]
  %4173 = phi float [ %4166, %4136 ], [ %3348, %4118 ]
  %4174 = phi float [ %4167, %4136 ], [ %3349, %4118 ]
  %4175 = phi float [ %4168, %4136 ], [ %3350, %4118 ]
  %4176 = phi float [ %4169, %4136 ], [ %3351, %4118 ]
  %4177 = phi float [ %4170, %4136 ], [ %3352, %4118 ]
  %4178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4179 = extractvalue %dx.types.ResRet.i32 %4178, 0
  %4180 = and i32 %4179, 3
  %4181 = icmp eq i32 %4180, 3
  br i1 %4181, label %4260, label %4182

; <label>:4182                                    ; preds = %4171
  %4183 = and i32 %4179, 16
  %4184 = icmp ne i32 %4183, 0
  %4185 = select i1 %4184, float %3661, float 0.000000e+00
  %4186 = icmp eq i32 %4180, 0
  br i1 %4186, label %4187, label %4215

; <label>:4187                                    ; preds = %4182
  %4188 = and i32 %4179, 64
  %4189 = icmp ne i32 %4188, 0
  %4190 = select i1 %4189, float %3661, float 0.000000e+00
  %4191 = fsub fast float %3881, %4172
  %4192 = fsub fast float %3882, %4173
  %4193 = fsub fast float %3883, %4174
  %4194 = fmul fast float %4185, %4191
  %4195 = fmul fast float %4185, %4192
  %4196 = fmul fast float %4185, %4193
  %4197 = fadd fast float %4194, %4172
  %4198 = fadd fast float %4195, %4173
  %4199 = fadd fast float %4196, %4174
  %4200 = fsub fast float %3867, %3359
  %4201 = fmul fast float %4185, %4200
  %4202 = fadd fast float %4201, %3359
  %4203 = fsub fast float %4009, %4175
  %4204 = fsub fast float %4010, %4176
  %4205 = fsub fast float %4011, %4177
  %4206 = fmul fast float %4190, %4203
  %4207 = fmul fast float %4190, %4204
  %4208 = fmul fast float %4190, %4205
  %4209 = fadd fast float %4206, %4175
  %4210 = fadd fast float %4207, %4176
  %4211 = fadd fast float %4208, %4177
  %4212 = fsub fast float %4135, %3363
  %4213 = fmul fast float %4185, %4212
  %4214 = fadd fast float %4213, %3363
  br label %4260

; <label>:4215                                    ; preds = %4182
  %4216 = icmp eq i32 %4180, 1
  br i1 %4216, label %4217, label %4230

; <label>:4217                                    ; preds = %4215
  %4218 = fadd fast float %3881, -1.000000e+00
  %4219 = fadd fast float %3882, -1.000000e+00
  %4220 = fadd fast float %3883, -1.000000e+00
  %4221 = fmul fast float %4185, %4218
  %4222 = fmul fast float %4185, %4219
  %4223 = fmul fast float %4185, %4220
  %4224 = fadd fast float %4221, 1.000000e+00
  %4225 = fadd fast float %4222, 1.000000e+00
  %4226 = fadd fast float %4223, 1.000000e+00
  %4227 = fmul fast float %4224, %4172
  %4228 = fmul fast float %4225, %4173
  %4229 = fmul fast float %4226, %4174
  br label %4260

; <label>:4230                                    ; preds = %4215
  %4231 = icmp eq i32 %4180, 2
  br i1 %4231, label %4232, label %4260

; <label>:4232                                    ; preds = %4230
  %4233 = call float @dx.op.unary.f32(i32 24, float %3881)  ; Sqrt(value)
  %4234 = call float @dx.op.unary.f32(i32 24, float %3882)  ; Sqrt(value)
  %4235 = call float @dx.op.unary.f32(i32 24, float %3883)  ; Sqrt(value)
  %4236 = fadd fast float %4233, -5.000000e-01
  %4237 = fadd fast float %4234, -5.000000e-01
  %4238 = fadd fast float %4235, -5.000000e-01
  %4239 = fmul fast float %4236, %4185
  %4240 = fmul fast float %4237, %4185
  %4241 = fmul fast float %4238, %4185
  %4242 = fadd fast float %4239, 5.000000e-01
  %4243 = fadd fast float %4240, 5.000000e-01
  %4244 = fadd fast float %4241, 5.000000e-01
  %4245 = fmul fast float %4242, 2.000000e+00
  %4246 = fsub fast float 1.000000e+00, %4245
  %4247 = fmul fast float %4246, %4172
  %4248 = fadd fast float %4247, %4245
  %4249 = fmul fast float %4248, %4172
  %4250 = fmul fast float %4243, 2.000000e+00
  %4251 = fsub fast float 1.000000e+00, %4250
  %4252 = fmul fast float %4251, %4173
  %4253 = fadd fast float %4252, %4250
  %4254 = fmul fast float %4253, %4173
  %4255 = fmul fast float %4244, 2.000000e+00
  %4256 = fsub fast float 1.000000e+00, %4255
  %4257 = fmul fast float %4256, %4174
  %4258 = fadd fast float %4257, %4255
  %4259 = fmul fast float %4258, %4174
  br label %4260

; <label>:4260                                    ; preds = %4232, %4230, %4217, %4187, %4171
  %4261 = phi float [ %4172, %4171 ], [ %4249, %4232 ], [ %4172, %4230 ], [ %4227, %4217 ], [ %4197, %4187 ]
  %4262 = phi float [ %4173, %4171 ], [ %4254, %4232 ], [ %4173, %4230 ], [ %4228, %4217 ], [ %4198, %4187 ]
  %4263 = phi float [ %4174, %4171 ], [ %4259, %4232 ], [ %4174, %4230 ], [ %4229, %4217 ], [ %4199, %4187 ]
  %4264 = phi float [ %4175, %4171 ], [ %4175, %4232 ], [ %4175, %4230 ], [ %4175, %4217 ], [ %4209, %4187 ]
  %4265 = phi float [ %4176, %4171 ], [ %4176, %4232 ], [ %4176, %4230 ], [ %4176, %4217 ], [ %4210, %4187 ]
  %4266 = phi float [ %4177, %4171 ], [ %4177, %4232 ], [ %4177, %4230 ], [ %4177, %4217 ], [ %4211, %4187 ]
  %4267 = phi float [ %3359, %4171 ], [ %3359, %4232 ], [ %3359, %4230 ], [ %3359, %4217 ], [ %4202, %4187 ]
  %4268 = phi float [ %3363, %4171 ], [ %3363, %4232 ], [ %3363, %4230 ], [ %3363, %4217 ], [ %4214, %4187 ]
  %4269 = and i32 %4179, 12
  %4270 = icmp eq i32 %4269, 12
  br i1 %4270, label %4401, label %4271

; <label>:4271                                    ; preds = %4260
  %4272 = and i32 %4179, 2097184
  %4273 = icmp eq i32 %4272, 2097184
  %4274 = select i1 %4273, float %3661, float 0.000000e+00
  %4275 = and i32 %4179, 4194336
  %4276 = icmp eq i32 %4275, 4194336
  %4277 = select i1 %4276, float %3661, float 0.000000e+00
  %4278 = and i32 %4179, 8388640
  %4279 = icmp eq i32 %4278, 8388640
  %4280 = select i1 %4279, float %3661, float 0.000000e+00
  %4281 = and i32 %4179, 1024
  %4282 = icmp ne i32 %4281, 0
  %4283 = select i1 %4282, float %3661, float 0.000000e+00
  %4284 = and i32 %4179, 2048
  %4285 = icmp ne i32 %4284, 0
  %4286 = select i1 %4285, float %3661, float 0.000000e+00
  %4287 = and i32 %4179, 8192
  %4288 = icmp ne i32 %4287, 0
  %4289 = select i1 %4288, float %3661, float 0.000000e+00
  %4290 = icmp eq i32 %4269, 0
  br i1 %4290, label %4291, label %4325

; <label>:4291                                    ; preds = %4271
  %4292 = fsub fast float %3962, %3345
  %4293 = fsub fast float %3963, %3346
  %4294 = fmul fast float %4274, %4292
  %4295 = fmul fast float %4274, %4293
  %4296 = fadd fast float %4294, %3345
  %4297 = fadd fast float %4295, %3346
  %4298 = fsub fast float %3964, %3361
  %4299 = fmul fast float %4277, %4298
  %4300 = fadd fast float %4299, %3361
  %4301 = fsub fast float %3961, %3360
  %4302 = fmul fast float %4280, %4301
  %4303 = fadd fast float %4302, %3360
  %4304 = fsub fast float %4067, %3353
  %4305 = fsub fast float %4068, %3354
  %4306 = fsub fast float %4069, %3355
  %4307 = fmul fast float %4283, %4304
  %4308 = fmul fast float %4283, %4305
  %4309 = fmul fast float %4283, %4306
  %4310 = fadd fast float %4307, %3353
  %4311 = fadd fast float %4308, %3354
  %4312 = fadd fast float %4309, %3355
  %4313 = fsub fast float %4122, %3362
  %4314 = fmul fast float %4286, %4313
  %4315 = fadd fast float %4314, %3362
  %4316 = fsub fast float %4119, %3356
  %4317 = fsub fast float %4120, %3357
  %4318 = fsub fast float %4121, %3358
  %4319 = fmul fast float %4289, %4316
  %4320 = fmul fast float %4289, %4317
  %4321 = fmul fast float %4289, %4318
  %4322 = fadd fast float %4319, %3356
  %4323 = fadd fast float %4320, %3357
  %4324 = fadd fast float %4321, %3358
  br label %4401

; <label>:4325                                    ; preds = %4271
  %4326 = icmp eq i32 %4269, 4
  br i1 %4326, label %4327, label %4373

; <label>:4327                                    ; preds = %4325
  %4328 = fmul fast float %4274, %3962
  %4329 = fmul fast float %4274, %3963
  %4330 = fadd fast float %4328, %3345
  %4331 = fadd fast float %4329, %3346
  %4332 = call float @dx.op.binary.f32(i32 36, float %3361, float %3964)  ; FMin(a,b)
  %4333 = fsub fast float %4332, %3361
  %4334 = fmul fast float %4333, %4277
  %4335 = fadd fast float %4334, %3361
  %4336 = fadd fast float %3961, %3360
  %4337 = fmul fast float %4336, 0x3FF337FAE0000000
  %4338 = fmul fast float %3360, %3360
  %4339 = fmul fast float %3961, %3961
  %4340 = fadd fast float %4339, %4338
  %4341 = fmul fast float %4340, 0x3FE5152B00000000
  %4342 = fmul fast float %3360, 0xBFCC1F85E0000000
  %4343 = fmul fast float %4342, %3961
  %4344 = fadd fast float %4343, 0xBFE1363700000000
  %4345 = fadd fast float %4344, %4337
  %4346 = fsub fast float %4345, %4341
  %4347 = fmul fast float %4336, 0x3FBA6F0D00000000
  %4348 = fmul fast float %4340, 0x3FD0432880000000
  %4349 = fmul fast float %3360, 0xBFEF110800000000
  %4350 = fmul fast float %4349, %3961
  %4351 = fadd fast float %4350, 1.000000e+00
  %4352 = fsub fast float %4351, %4347
  %4353 = fadd fast float %4352, %4348
  %4354 = fdiv fast float %4346, %4353
  %4355 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4356 = fsub fast float %4355, %3360
  %4357 = fmul fast float %4356, %4280
  %4358 = fadd fast float %4357, %3360
  %4359 = fmul fast float %4283, %4067
  %4360 = fmul fast float %4283, %4068
  %4361 = fmul fast float %4283, %4069
  %4362 = fadd fast float %4359, %3353
  %4363 = fadd fast float %4360, %3354
  %4364 = fadd fast float %4361, %3355
  %4365 = fmul fast float %4286, %4122
  %4366 = fadd fast float %4365, %3362
  %4367 = fmul fast float %4289, %4119
  %4368 = fmul fast float %4289, %4120
  %4369 = fmul fast float %4289, %4121
  %4370 = fadd fast float %4367, %3356
  %4371 = fadd fast float %4368, %3357
  %4372 = fadd fast float %4369, %3358
  br label %4401

; <label>:4373                                    ; preds = %4325
  %4374 = icmp eq i32 %4269, 8
  br i1 %4374, label %4375, label %4401

; <label>:4375                                    ; preds = %4373
  %4376 = fmul fast float %4274, %3962
  %4377 = fmul fast float %4274, %3963
  %4378 = fadd fast float %4376, %3345
  %4379 = fadd fast float %4377, %3346
  %4380 = call float @dx.op.binary.f32(i32 36, float %3361, float %3964)  ; FMin(a,b)
  %4381 = fsub fast float %4380, %3361
  %4382 = fmul fast float %4381, %4277
  %4383 = fadd fast float %4382, %3361
  %4384 = fsub fast float %3961, %3360
  %4385 = fmul fast float %4280, %4384
  %4386 = fadd fast float %4385, %3360
  %4387 = fmul fast float %4283, %4067
  %4388 = fmul fast float %4283, %4068
  %4389 = fmul fast float %4283, %4069
  %4390 = fadd fast float %4387, %3353
  %4391 = fadd fast float %4388, %3354
  %4392 = fadd fast float %4389, %3355
  %4393 = fmul fast float %4286, %4122
  %4394 = fadd fast float %4393, %3362
  %4395 = fmul fast float %4289, %4119
  %4396 = fmul fast float %4289, %4120
  %4397 = fmul fast float %4289, %4121
  %4398 = fadd fast float %4395, %3356
  %4399 = fadd fast float %4396, %3357
  %4400 = fadd fast float %4397, %3358
  br label %4401

; <label>:4401                                    ; preds = %4375, %4373, %4327, %4291, %4260, %3660, %3364, %3344
  %4402 = phi float [ %3345, %4260 ], [ %3345, %3660 ], [ %3345, %3344 ], [ %3345, %3364 ], [ %4296, %4291 ], [ %4330, %4327 ], [ %3345, %4373 ], [ %4378, %4375 ]
  %4403 = phi float [ %3346, %4260 ], [ %3346, %3660 ], [ %3346, %3344 ], [ %3346, %3364 ], [ %4297, %4291 ], [ %4331, %4327 ], [ %3346, %4373 ], [ %4379, %4375 ]
  %4404 = phi float [ %4261, %4260 ], [ %3347, %3660 ], [ %3347, %3344 ], [ %3347, %3364 ], [ %4261, %4291 ], [ %4261, %4327 ], [ %4261, %4373 ], [ %4261, %4375 ]
  %4405 = phi float [ %4262, %4260 ], [ %3348, %3660 ], [ %3348, %3344 ], [ %3348, %3364 ], [ %4262, %4291 ], [ %4262, %4327 ], [ %4262, %4373 ], [ %4262, %4375 ]
  %4406 = phi float [ %4263, %4260 ], [ %3349, %3660 ], [ %3349, %3344 ], [ %3349, %3364 ], [ %4263, %4291 ], [ %4263, %4327 ], [ %4263, %4373 ], [ %4263, %4375 ]
  %4407 = phi float [ %4264, %4260 ], [ %3350, %3660 ], [ %3350, %3344 ], [ %3350, %3364 ], [ %4264, %4291 ], [ %4264, %4327 ], [ %4264, %4373 ], [ %4264, %4375 ]
  %4408 = phi float [ %4265, %4260 ], [ %3351, %3660 ], [ %3351, %3344 ], [ %3351, %3364 ], [ %4265, %4291 ], [ %4265, %4327 ], [ %4265, %4373 ], [ %4265, %4375 ]
  %4409 = phi float [ %4266, %4260 ], [ %3352, %3660 ], [ %3352, %3344 ], [ %3352, %3364 ], [ %4266, %4291 ], [ %4266, %4327 ], [ %4266, %4373 ], [ %4266, %4375 ]
  %4410 = phi float [ %3353, %4260 ], [ %3353, %3660 ], [ %3353, %3344 ], [ %3353, %3364 ], [ %4310, %4291 ], [ %4362, %4327 ], [ %3353, %4373 ], [ %4390, %4375 ]
  %4411 = phi float [ %3354, %4260 ], [ %3354, %3660 ], [ %3354, %3344 ], [ %3354, %3364 ], [ %4311, %4291 ], [ %4363, %4327 ], [ %3354, %4373 ], [ %4391, %4375 ]
  %4412 = phi float [ %3355, %4260 ], [ %3355, %3660 ], [ %3355, %3344 ], [ %3355, %3364 ], [ %4312, %4291 ], [ %4364, %4327 ], [ %3355, %4373 ], [ %4392, %4375 ]
  %4413 = phi float [ %3356, %4260 ], [ %3356, %3660 ], [ %3356, %3344 ], [ %3356, %3364 ], [ %4322, %4291 ], [ %4370, %4327 ], [ %3356, %4373 ], [ %4398, %4375 ]
  %4414 = phi float [ %3357, %4260 ], [ %3357, %3660 ], [ %3357, %3344 ], [ %3357, %3364 ], [ %4323, %4291 ], [ %4371, %4327 ], [ %3357, %4373 ], [ %4399, %4375 ]
  %4415 = phi float [ %3358, %4260 ], [ %3358, %3660 ], [ %3358, %3344 ], [ %3358, %3364 ], [ %4324, %4291 ], [ %4372, %4327 ], [ %3358, %4373 ], [ %4400, %4375 ]
  %4416 = phi float [ %4267, %4260 ], [ %3359, %3660 ], [ %3359, %3344 ], [ %3359, %3364 ], [ %4267, %4291 ], [ %4267, %4327 ], [ %4267, %4373 ], [ %4267, %4375 ]
  %4417 = phi float [ %3360, %4260 ], [ %3360, %3660 ], [ %3360, %3344 ], [ %3360, %3364 ], [ %4303, %4291 ], [ %4358, %4327 ], [ %3360, %4373 ], [ %4386, %4375 ]
  %4418 = phi float [ %3361, %4260 ], [ %3361, %3660 ], [ %3361, %3344 ], [ %3361, %3364 ], [ %4300, %4291 ], [ %4335, %4327 ], [ %3361, %4373 ], [ %4383, %4375 ]
  %4419 = phi float [ %3362, %4260 ], [ %3362, %3660 ], [ %3362, %3344 ], [ %3362, %3364 ], [ %4315, %4291 ], [ %4366, %4327 ], [ %3362, %4373 ], [ %4394, %4375 ]
  %4420 = phi float [ %4268, %4260 ], [ %3363, %3660 ], [ %3363, %3344 ], [ %3363, %3364 ], [ %4268, %4291 ], [ %4268, %4327 ], [ %4268, %4373 ], [ %4268, %4375 ]
  %4421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4422 = extractvalue %dx.types.CBufRet.f32 %4421, 0
  %4423 = call float @dx.op.dot2.f32(i32 54, float %4402, float %4403, float %4402, float %4403)  ; Dot2(ax,ay,bx,by)
  %4424 = fmul fast float %4423, 0x3FE3333340000000
  %4425 = fsub fast float 1.000000e+00, %4424
  %4426 = call float @dx.op.dot3.f32(i32 55, float %4402, float %4403, float %4425, float %4402, float %4403, float %4425)  ; Dot3(ax,ay,az,bx,by,bz)
  %4427 = call float @dx.op.unary.f32(i32 25, float %4426)  ; Rsqrt(value)
  %4428 = fmul fast float %4427, %4402
  %4429 = fmul fast float %4427, %4403
  %4430 = fmul fast float %4425, %4427
  %4431 = fmul fast float %4430, %106
  %4432 = fmul fast float %4430, %107
  %4433 = fmul fast float %4430, %108
  %4434 = fmul fast float %4428, %71
  %4435 = fmul fast float %4428, %72
  %4436 = fmul fast float %4428, %73
  %4437 = fadd fast float %4431, %4434
  %4438 = fadd fast float %4432, %4435
  %4439 = fadd fast float %4433, %4436
  %4440 = fmul fast float %118, %4429
  %4441 = fmul fast float %119, %4429
  %4442 = fmul fast float %120, %4429
  %4443 = fadd fast float %4437, %4440
  %4444 = fadd fast float %4438, %4441
  %4445 = fadd fast float %4439, %4442
  %4446 = call float @dx.op.dot3.f32(i32 55, float %4443, float %4444, float %4445, float %4443, float %4444, float %4445)  ; Dot3(ax,ay,az,bx,by,bz)
  %4447 = call float @dx.op.unary.f32(i32 25, float %4446)  ; Rsqrt(value)
  %4448 = fmul fast float %4443, %4447
  %4449 = fmul fast float %4444, %4447
  %4450 = fmul fast float %4445, %4447
  %4451 = and i32 %52, 1
  %4452 = icmp eq i32 %4451, 0
  br i1 %4452, label %4453, label %5049

; <label>:4453                                    ; preds = %4401
  %4454 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %4455 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %4456 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4457 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %4458 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %4459 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4460 = fadd fast float %4454, %154
  %4461 = fadd fast float %4455, %155
  %4462 = fadd fast float %4456, %156
  %4463 = fadd fast float %4457, %154
  %4464 = fadd fast float %4458, %155
  %4465 = fadd fast float %4459, %156
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4468 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4469 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4471 = extractvalue %dx.types.CBufRet.f32 %4470, 2
  %4472 = extractvalue %dx.types.CBufRet.f32 %4470, 3
  %4473 = fmul fast float %4467, %99
  %4474 = fmul fast float %4473, %4471
  %4475 = fmul fast float %4468, %100
  %4476 = fmul fast float %4475, %4472
  %4477 = fptoui float %4474 to i32
  %4478 = fptoui float %4476 to i32
  %4479 = fadd fast float %4467, -1.000000e+00
  %4480 = fadd fast float %4468, -1.000000e+00
  %4481 = fptoui float %4479 to i32
  %4482 = fptoui float %4480 to i32
  %4483 = call i32 @dx.op.binary.i32(i32 40, i32 %4477, i32 %4481)  ; UMin(a,b)
  %4484 = call i32 @dx.op.binary.i32(i32 40, i32 %4478, i32 %4482)  ; UMin(a,b)
  %4485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4486 = extractvalue %dx.types.CBufRet.f32 %4485, 2
  %4487 = extractvalue %dx.types.CBufRet.f32 %4485, 3
  %4488 = fmul fast float %4486, %87
  %4489 = fsub fast float %4488, %4487
  %4490 = fadd fast float %4469, -1.000000e+00
  %4491 = call float @dx.op.binary.f32(i32 36, float %4489, float %4490)  ; FMin(a,b)
  %4492 = fptoui float %4491 to i32
  %4493 = fptoui float %4467 to i32
  %4494 = fptoui float %4468 to i32
  %4495 = mul i32 %4492, %4494
  %4496 = add i32 %4495, %4484
  %4497 = mul i32 %4496, %4493
  %4498 = add i32 %4497, %4483
  %4499 = shl i32 %4498, 2
  %4500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4499, i32 undef)  ; BufferLoad(srv,index,wot)
  %4501 = extractvalue %dx.types.ResRet.i32 %4500, 0
  %4502 = and i32 %4501, 1023
  %4503 = lshr i32 %4501, 10
  %4504 = icmp eq i32 %4502, 0
  br i1 %4504, label %5011, label %4505

; <label>:4505                                    ; preds = %4453
  %4506 = and i32 %4501, 1023
  br label %4507

; <label>:4507                                    ; preds = %4640, %4505
  %4508 = phi i32 [ %4590, %4640 ], [ 0, %4505 ]
  %4509 = phi float [ %4641, %4640 ], [ 0.000000e+00, %4505 ]
  %4510 = phi float [ %4642, %4640 ], [ %1245, %4505 ]
  %4511 = phi float [ %4643, %4640 ], [ %4422, %4505 ]
  %4512 = phi float [ %4644, %4640 ], [ %4420, %4505 ]
  %4513 = phi float [ %4645, %4640 ], [ %4410, %4505 ]
  %4514 = phi float [ %4646, %4640 ], [ %4411, %4505 ]
  %4515 = phi float [ %4647, %4640 ], [ %4412, %4505 ]
  %4516 = phi float [ %4648, %4640 ], [ 0.000000e+00, %4505 ]
  %4517 = phi float [ %4649, %4640 ], [ 0.000000e+00, %4505 ]
  %4518 = phi float [ %4650, %4640 ], [ %4413, %4505 ]
  %4519 = phi float [ %4651, %4640 ], [ %4414, %4505 ]
  %4520 = phi float [ %4652, %4640 ], [ %4415, %4505 ]
  %4521 = phi float [ %4653, %4640 ], [ %4407, %4505 ]
  %4522 = phi float [ %4654, %4640 ], [ %4408, %4505 ]
  %4523 = phi float [ %4655, %4640 ], [ %4409, %4505 ]
  %4524 = phi float [ %4656, %4640 ], [ %4448, %4505 ]
  %4525 = phi float [ %4657, %4640 ], [ %4449, %4505 ]
  %4526 = phi float [ %4658, %4640 ], [ %4450, %4505 ]
  %4527 = phi float [ %4659, %4640 ], [ %4418, %4505 ]
  %4528 = phi float [ %4660, %4640 ], [ %4417, %4505 ]
  %4529 = phi float [ %4661, %4640 ], [ 0.000000e+00, %4505 ]
  %4530 = phi float [ %4662, %4640 ], [ %4416, %4505 ]
  %4531 = phi float [ %4663, %4640 ], [ %4404, %4505 ]
  %4532 = phi float [ %4664, %4640 ], [ %4405, %4505 ]
  %4533 = phi float [ %4665, %4640 ], [ %4406, %4505 ]
  %4534 = add nuw nsw i32 %4508, %4503
  %4535 = shl i32 %4534, 2
  %4536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4535, i32 undef)  ; BufferLoad(srv,index,wot)
  %4537 = extractvalue %dx.types.ResRet.i32 %4536, 0
  %4538 = shl i32 %4537, 8
  %4539 = or i32 %4538, 48
  %4540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = extractvalue %dx.types.ResRet.f32 %4540, 1
  %4543 = extractvalue %dx.types.ResRet.f32 %4540, 2
  %4544 = extractvalue %dx.types.ResRet.f32 %4540, 3
  %4545 = or i32 %4538, 64
  %4546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4545, i32 undef)  ; BufferLoad(srv,index,wot)
  %4547 = extractvalue %dx.types.ResRet.i32 %4546, 0
  %4548 = extractvalue %dx.types.ResRet.i32 %4546, 1
  %4549 = or i32 %4538, 80
  %4550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4549, i32 undef)  ; BufferLoad(srv,index,wot)
  %4551 = extractvalue %dx.types.ResRet.f32 %4550, 2
  %4552 = extractvalue %dx.types.ResRet.f32 %4550, 3
  %4553 = or i32 %4538, 96
  %4554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.f32 %4554, 0
  %4556 = extractvalue %dx.types.ResRet.f32 %4554, 1
  %4557 = extractvalue %dx.types.ResRet.f32 %4554, 2
  %4558 = extractvalue %dx.types.ResRet.f32 %4554, 3
  %4559 = or i32 %4538, 112
  %4560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4559, i32 undef)  ; BufferLoad(srv,index,wot)
  %4561 = extractvalue %dx.types.ResRet.f32 %4560, 2
  %4562 = or i32 %4538, 128
  %4563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4566 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4567 = extractvalue %dx.types.ResRet.f32 %4563, 3
  %4568 = or i32 %4538, 144
  %4569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4568, i32 undef)  ; BufferLoad(srv,index,wot)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4573 = extractvalue %dx.types.ResRet.f32 %4569, 3
  %4574 = or i32 %4538, 160
  %4575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4574, i32 undef)  ; BufferLoad(srv,index,wot)
  %4576 = extractvalue %dx.types.ResRet.f32 %4575, 0
  %4577 = extractvalue %dx.types.ResRet.f32 %4575, 1
  %4578 = extractvalue %dx.types.ResRet.f32 %4575, 2
  %4579 = extractvalue %dx.types.ResRet.f32 %4575, 3
  %4580 = or i32 %4538, 192
  %4581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4580, i32 undef)  ; BufferLoad(srv,index,wot)
  %4582 = extractvalue %dx.types.ResRet.i32 %4581, 0
  %4583 = or i32 %4538, 208
  %4584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = or i32 %4538, 248
  %4587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4586, i32 undef)  ; BufferLoad(srv,index,wot)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = extractvalue %dx.types.ResRet.f32 %4587, 1
  %4590 = add nuw nsw i32 %4508, 1
  %4591 = bitcast float %4544 to i32
  %4592 = and i32 %4591, 512
  %4593 = icmp eq i32 %4592, 0
  %4594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4538, i32 undef)  ; BufferLoad(srv,index,wot)
  %4595 = extractvalue %dx.types.ResRet.f32 %4594, 0
  %4596 = extractvalue %dx.types.ResRet.f32 %4594, 1
  %4597 = extractvalue %dx.types.ResRet.f32 %4594, 2
  %4598 = extractvalue %dx.types.ResRet.f32 %4594, 3
  %4599 = call float @dx.op.dot4.f32(i32 56, float %4595, float %4596, float %4597, float %4598, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4600 = or i32 %4538, 16
  %4601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4600, i32 undef)  ; BufferLoad(srv,index,wot)
  %4602 = extractvalue %dx.types.ResRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.ResRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.ResRet.f32 %4601, 2
  %4605 = extractvalue %dx.types.ResRet.f32 %4601, 3
  %4606 = call float @dx.op.dot4.f32(i32 56, float %4602, float %4603, float %4604, float %4605, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4607 = or i32 %4538, 32
  %4608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4607, i32 undef)  ; BufferLoad(srv,index,wot)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.ResRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.ResRet.f32 %4608, 2
  %4612 = extractvalue %dx.types.ResRet.f32 %4608, 3
  %4613 = call float @dx.op.dot4.f32(i32 56, float %4609, float %4610, float %4611, float %4612, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4614 = call float @dx.op.unary.f32(i32 27, float %4599)  ; Round_ni(value)
  %4615 = call float @dx.op.unary.f32(i32 6, float %4614)  ; FAbs(value)
  %4616 = call float @dx.op.unary.f32(i32 27, float %4606)  ; Round_ni(value)
  %4617 = call float @dx.op.unary.f32(i32 6, float %4616)  ; FAbs(value)
  %4618 = call float @dx.op.unary.f32(i32 6, float %4613)  ; FAbs(value)
  %4619 = call float @dx.op.unary.f32(i32 27, float %4618)  ; Round_ni(value)
  %4620 = fadd fast float %4617, %4615
  %4621 = fadd fast float %4620, %4619
  %4622 = fcmp fast oeq float %4621, 0.000000e+00
  %4623 = call float @dx.op.dot4.f32(i32 56, float %4595, float %4596, float %4597, float %4598, float %4460, float %4461, float %4462, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4624 = call float @dx.op.dot4.f32(i32 56, float %4602, float %4603, float %4604, float %4605, float %4460, float %4461, float %4462, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4625 = call float @dx.op.dot4.f32(i32 56, float %4595, float %4596, float %4597, float %4598, float %4463, float %4464, float %4465, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4626 = call float @dx.op.dot4.f32(i32 56, float %4602, float %4603, float %4604, float %4605, float %4463, float %4464, float %4465, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4627 = fsub fast float %4623, %4599
  %4628 = fsub fast float %4625, %4599
  %4629 = fsub fast float %4624, %4606
  %4630 = fsub fast float %4626, %4606
  %4631 = call float @dx.op.dot3.f32(i32 55, float %4541, float %4542, float %4543, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 2
  %4634 = fadd fast float %4633, %4631
  %4635 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4637 = fcmp fast ogt float %4635, %4636
  %4638 = and i1 %4622, %4637
  %4639 = and i1 %4593, %4638
  br i1 %4639, label %4667, label %4640

; <label>:4640                                    ; preds = %4997, %4748, %4667, %4507
  %4641 = phi float [ %4509, %4667 ], [ %4751, %4748 ], [ %4751, %4997 ], [ %4509, %4507 ]
  %4642 = phi float [ %4510, %4667 ], [ %4510, %4748 ], [ %4973, %4997 ], [ %4510, %4507 ]
  %4643 = phi float [ %4511, %4667 ], [ %4511, %4748 ], [ %4972, %4997 ], [ %4511, %4507 ]
  %4644 = phi float [ %4512, %4667 ], [ %4512, %4748 ], [ %4970, %4997 ], [ %4512, %4507 ]
  %4645 = phi float [ %4513, %4667 ], [ %4513, %4748 ], [ %4948, %4997 ], [ %4513, %4507 ]
  %4646 = phi float [ %4514, %4667 ], [ %4514, %4748 ], [ %4949, %4997 ], [ %4514, %4507 ]
  %4647 = phi float [ %4515, %4667 ], [ %4515, %4748 ], [ %4950, %4997 ], [ %4515, %4507 ]
  %4648 = phi float [ %4516, %4667 ], [ %4516, %4748 ], [ %4875, %4997 ], [ %4516, %4507 ]
  %4649 = phi float [ %4517, %4667 ], [ %4517, %4748 ], [ %4873, %4997 ], [ %4517, %4507 ]
  %4650 = phi float [ %4518, %4667 ], [ %4518, %4748 ], [ %4918, %4997 ], [ %4518, %4507 ]
  %4651 = phi float [ %4519, %4667 ], [ %4519, %4748 ], [ %4919, %4997 ], [ %4519, %4507 ]
  %4652 = phi float [ %4520, %4667 ], [ %4520, %4748 ], [ %4920, %4997 ], [ %4520, %4507 ]
  %4653 = phi float [ %4521, %4667 ], [ %4521, %4748 ], [ %5007, %4997 ], [ %4521, %4507 ]
  %4654 = phi float [ %4522, %4667 ], [ %4522, %4748 ], [ %5008, %4997 ], [ %4522, %4507 ]
  %4655 = phi float [ %4523, %4667 ], [ %4523, %4748 ], [ %5009, %4997 ], [ %4523, %4507 ]
  %4656 = phi float [ %4524, %4667 ], [ %4524, %4748 ], [ %4854, %4997 ], [ %4524, %4507 ]
  %4657 = phi float [ %4525, %4667 ], [ %4525, %4748 ], [ %4855, %4997 ], [ %4525, %4507 ]
  %4658 = phi float [ %4526, %4667 ], [ %4526, %4748 ], [ %4856, %4997 ], [ %4526, %4507 ]
  %4659 = phi float [ %4527, %4667 ], [ %4527, %4748 ], [ %4928, %4997 ], [ %4527, %4507 ]
  %4660 = phi float [ %4528, %4667 ], [ %4528, %4748 ], [ %4925, %4997 ], [ %4528, %4507 ]
  %4661 = phi float [ %4529, %4667 ], [ %4529, %4748 ], [ %4922, %4997 ], [ %4529, %4507 ]
  %4662 = phi float [ %4530, %4667 ], [ %4530, %4748 ], [ %4871, %4997 ], [ %4530, %4507 ]
  %4663 = phi float [ %4531, %4667 ], [ %4531, %4748 ], [ %4866, %4997 ], [ %4531, %4507 ]
  %4664 = phi float [ %4532, %4667 ], [ %4532, %4748 ], [ %4867, %4997 ], [ %4532, %4507 ]
  %4665 = phi float [ %4533, %4667 ], [ %4533, %4748 ], [ %4868, %4997 ], [ %4533, %4507 ]
  %4666 = icmp eq i32 %4590, %4506
  br i1 %4666, label %5010, label %4507

; <label>:4667                                    ; preds = %4507
  %4668 = extractvalue %dx.types.ResRet.f32 %4560, 3
  %4669 = extractvalue %dx.types.ResRet.f32 %4560, 1
  %4670 = extractvalue %dx.types.ResRet.f32 %4560, 0
  %4671 = extractvalue %dx.types.ResRet.f32 %4550, 1
  %4672 = extractvalue %dx.types.ResRet.f32 %4550, 0
  %4673 = extractvalue %dx.types.ResRet.i32 %4546, 3
  %4674 = extractvalue %dx.types.ResRet.i32 %4546, 2
  %4675 = add i32 %4673, 0
  %4676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4675, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4678 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4676, %dx.types.Handle %4677, float %4599, float %4606, float undef, float undef, i32 0, i32 0, i32 undef, float %4627, float %4629, float undef, float %4628, float %4630, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4679 = extractvalue %dx.types.ResRet.f32 %4678, 0
  %4680 = fmul fast float %4679, %4672
  %4681 = fadd fast float %4680, %4671
  %4682 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4683 = fmul fast float %4599, %4555
  %4684 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4606, float %4683)  ; FMad(a,b,c)
  %4685 = fadd fast float %4684, %4670
  %4686 = fmul fast float %4599, %4557
  %4687 = call float @dx.op.tertiary.f32(i32 46, float %4558, float %4606, float %4686)  ; FMad(a,b,c)
  %4688 = fadd fast float %4687, %4669
  %4689 = fmul fast float %4627, %4555
  %4690 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4629, float %4689)  ; FMad(a,b,c)
  %4691 = fmul fast float %4627, %4557
  %4692 = call float @dx.op.tertiary.f32(i32 46, float %4558, float %4629, float %4691)  ; FMad(a,b,c)
  %4693 = fmul fast float %4628, %4555
  %4694 = call float @dx.op.tertiary.f32(i32 46, float %4556, float %4630, float %4693)  ; FMad(a,b,c)
  %4695 = fmul fast float %4628, %4557
  %4696 = call float @dx.op.tertiary.f32(i32 46, float %4558, float %4630, float %4695)  ; FMad(a,b,c)
  %4697 = add i32 %4674, 0
  %4698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4697, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4699 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4698, %dx.types.Handle %4677, float %4685, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float %4690, float %4692, float undef, float %4694, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4700 = extractvalue %dx.types.ResRet.f32 %4699, 0
  %4701 = and i32 %4591, 1024
  %4702 = icmp ne i32 %4701, 0
  %4703 = fcmp fast ogt float %4700, 0x3FE0101020000000
  %4704 = uitofp i1 %4703 to float
  %4705 = select i1 %4702, float %4704, float %4700
  %4706 = and i32 %4591, 8192
  %4707 = icmp ne i32 %4706, 0
  %4708 = select i1 %4707, float %4668, float 1.000000e+00
  %4709 = fmul fast float %4599, 2.000000e+00
  %4710 = fadd fast float %4709, -1.000000e+00
  %4711 = call float @dx.op.unary.f32(i32 6, float %4710)  ; FAbs(value)
  %4712 = fmul fast float %4711, %4588
  %4713 = fsub fast float %4712, %4588
  %4714 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4715 = fmul fast float %4606, 2.000000e+00
  %4716 = fadd fast float %4715, -1.000000e+00
  %4717 = call float @dx.op.unary.f32(i32 6, float %4716)  ; FAbs(value)
  %4718 = fmul fast float %4717, %4589
  %4719 = fsub fast float %4718, %4589
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fmul fast float %4618, %4551
  %4722 = fsub fast float %4721, %4551
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fmul fast float %4682, %4708
  %4725 = fmul fast float %4724, %4679
  %4726 = fmul fast float %4725, %4714
  %4727 = fmul fast float %4726, %4705
  %4728 = fmul fast float %4727, %4720
  %4729 = fmul fast float %4728, %4723
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4730, 1
  %4732 = extractvalue %dx.types.CBufRet.f32 %4730, 0
  %4733 = fsub fast float %4635, %4732
  %4734 = fmul fast float %4733, %4731
  %4735 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  %4736 = fmul fast float %4729, %4552
  %4737 = fadd fast float %4729, %4552
  %4738 = fmul fast float %4737, %4561
  %4739 = fsub fast float %4738, %4561
  %4740 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4741 = and i32 %4591, 128
  %4742 = icmp ne i32 %4741, 0
  %4743 = select i1 %4742, float %4740, float %4736
  %4744 = fmul fast float %4743, %4735
  %4745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4745, 0
  %4747 = fcmp fast ugt float %4744, %4746
  br i1 %4747, label %4748, label %4640

; <label>:4748                                    ; preds = %4667
  %4749 = select i1 %4707, float %4744, float 0.000000e+00
  %4750 = fadd fast float %4749, %4509
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  br i1 %4707, label %4640, label %4752

; <label>:4752                                    ; preds = %4748
  %4753 = and i32 %4591, 4
  %4754 = and i32 %4591, 8
  %4755 = add i32 %4547, 0
  %4756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4755, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4758 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4756, %dx.types.Handle %4757, float %4685, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float %4690, float %4692, float undef, float %4694, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4759 = extractvalue %dx.types.ResRet.f32 %4758, 0
  %4760 = extractvalue %dx.types.ResRet.f32 %4758, 1
  %4761 = extractvalue %dx.types.ResRet.f32 %4758, 2
  %4762 = extractvalue %dx.types.ResRet.f32 %4758, 3
  %4763 = bitcast float %4573 to i32
  %4764 = and i32 %4763, 255
  %4765 = uitofp i32 %4764 to float
  %4766 = lshr i32 %4763, 8
  %4767 = and i32 %4766, 255
  %4768 = uitofp i32 %4767 to float
  %4769 = fmul fast float %4762, %4765
  %4770 = fadd fast float %4769, %4768
  %4771 = fmul fast float %4770, 0x3F70101000000000
  %4772 = add i32 %4548, 0
  %4773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4772, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4774 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4773, %dx.types.Handle %4757, float %4685, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float %4690, float %4692, float undef, float %4694, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4775 = extractvalue %dx.types.ResRet.f32 %4774, 0
  %4776 = extractvalue %dx.types.ResRet.f32 %4774, 1
  %4777 = extractvalue %dx.types.ResRet.f32 %4774, 2
  %4778 = extractvalue %dx.types.ResRet.f32 %4774, 3
  %4779 = bitcast float %4567 to i32
  %4780 = and i32 %4779, 255
  %4781 = uitofp i32 %4780 to float
  %4782 = lshr i32 %4779, 8
  %4783 = and i32 %4782, 255
  %4784 = uitofp i32 %4783 to float
  %4785 = lshr i32 %4779, 16
  %4786 = and i32 %4785, 255
  %4787 = uitofp i32 %4786 to float
  %4788 = fmul fast float %4787, 0x3F70101000000000
  %4789 = fmul fast float %4775, %4781
  %4790 = fadd fast float %4789, %4784
  %4791 = fmul fast float %4790, 0x3F70101000000000
  %4792 = fadd fast float %4776, -5.000000e-01
  %4793 = fadd fast float %4778, -5.000000e-01
  %4794 = fmul fast float %4792, %4788
  %4795 = fmul fast float %4793, %4788
  %4796 = fadd fast float %4794, 5.000000e-01
  %4797 = fadd fast float %4795, 5.000000e-01
  %4798 = fmul fast float %4759, %4576
  %4799 = fmul fast float %4760, %4577
  %4800 = fmul fast float %4761, %4578
  %4801 = fmul fast float %4796, 2.000000e+00
  %4802 = fadd fast float %4801, -1.000000e+00
  %4803 = fmul fast float %4797, 2.000000e+00
  %4804 = fadd fast float %4803, -1.000000e+00
  %4805 = fadd fast float %4802, %4804
  %4806 = fmul fast float %4805, 5.000000e-01
  %4807 = fsub fast float %4802, %4804
  %4808 = fmul fast float %4807, 5.000000e-01
  %4809 = call float @dx.op.unary.f32(i32 6, float %4806)  ; FAbs(value)
  %4810 = fsub fast float 1.000000e+00, %4809
  %4811 = call float @dx.op.unary.f32(i32 6, float %4808)  ; FAbs(value)
  %4812 = fsub fast float %4810, %4811
  %4813 = call float @dx.op.dot3.f32(i32 55, float %4806, float %4808, float %4812, float %4806, float %4808, float %4812)  ; Dot3(ax,ay,az,bx,by,bz)
  %4814 = call float @dx.op.unary.f32(i32 25, float %4813)  ; Rsqrt(value)
  %4815 = fmul fast float %4806, %4814
  %4816 = fmul fast float %4808, %4814
  %4817 = fmul fast float %4814, %4812
  %4818 = fmul fast float %4817, %4541
  %4819 = fmul fast float %4817, %4542
  %4820 = fmul fast float %4817, %4543
  %4821 = fmul fast float %4815, %4564
  %4822 = fmul fast float %4815, %4565
  %4823 = fmul fast float %4815, %4566
  %4824 = fadd fast float %4821, %4818
  %4825 = fadd fast float %4822, %4819
  %4826 = fadd fast float %4823, %4820
  %4827 = fmul fast float %4816, %4570
  %4828 = fmul fast float %4816, %4571
  %4829 = fmul fast float %4816, %4572
  %4830 = fadd fast float %4824, %4827
  %4831 = fadd fast float %4825, %4828
  %4832 = fadd fast float %4826, %4829
  %4833 = call float @dx.op.dot3.f32(i32 55, float %4830, float %4831, float %4832, float %4830, float %4831, float %4832)  ; Dot3(ax,ay,az,bx,by,bz)
  %4834 = call float @dx.op.unary.f32(i32 25, float %4833)  ; Rsqrt(value)
  %4835 = fmul fast float %4830, %4834
  %4836 = fmul fast float %4831, %4834
  %4837 = fmul fast float %4832, %4834
  %4838 = icmp ne i32 %4754, 0
  %4839 = select i1 %4838, float 1.000000e+00, float 0.000000e+00
  %4840 = fmul fast float %4744, %4839
  %4841 = and i32 %4591, 1
  %4842 = icmp eq i32 %4841, 0
  br i1 %4842, label %4843, label %4847

; <label>:4843                                    ; preds = %4752
  %4844 = fsub fast float %4835, %4524
  %4845 = fsub fast float %4836, %4525
  %4846 = fsub fast float %4837, %4526
  br label %4847

; <label>:4847                                    ; preds = %4843, %4752
  %4848 = phi float [ %4844, %4843 ], [ %4835, %4752 ]
  %4849 = phi float [ %4845, %4843 ], [ %4836, %4752 ]
  %4850 = phi float [ %4846, %4843 ], [ %4837, %4752 ]
  %4851 = fmul float %4850, %4840
  %4852 = fmul float %4849, %4840
  %4853 = fmul float %4848, %4840
  %4854 = fadd fast float %4853, %4524
  %4855 = fadd fast float %4852, %4525
  %4856 = fadd fast float %4851, %4526
  %4857 = icmp ne i32 %4753, 0
  %4858 = select i1 %4857, float 1.000000e+00, float 0.000000e+00
  %4859 = fmul fast float %4744, %4858
  %4860 = fsub fast float %4798, %4531
  %4861 = fsub fast float %4799, %4532
  %4862 = fsub fast float %4800, %4533
  %4863 = fmul fast float %4860, %4859
  %4864 = fmul fast float %4861, %4859
  %4865 = fmul fast float %4862, %4859
  %4866 = fadd fast float %4863, %4531
  %4867 = fadd fast float %4864, %4532
  %4868 = fadd fast float %4865, %4533
  %4869 = fsub fast float %4771, %4530
  %4870 = fmul fast float %4869, %4859
  %4871 = fadd fast float %4870, %4530
  %4872 = fmul fast float %4859, %4517
  %4873 = fsub fast float %4517, %4872
  %4874 = fmul fast float %4859, %4516
  %4875 = fsub fast float %4516, %4874
  %4876 = bitcast float %4585 to i32
  %4877 = lshr i32 %4876, 16
  %4878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4877)  ; LegacyF16ToF32(value)
  %4879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4880 = extractvalue %dx.types.ResRet.i32 %4879, 0
  %4881 = and i32 %4880, 1
  %4882 = icmp eq i32 %4881, 0
  br i1 %4882, label %4883, label %4908

; <label>:4883                                    ; preds = %4847
  %4884 = fadd fast float %4771, 0xBFB99999A0000000
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = fmul fast float %4885, 0x3FF1C71C80000000
  %4887 = fsub fast float 1.000000e+00, %4886
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = fmul fast float %4888, %4798
  %4890 = fmul fast float %4888, %4799
  %4891 = fmul fast float %4888, %4800
  %4892 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4893 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4894 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4895 = call float @dx.op.binary.f32(i32 35, float %4893, float %4894)  ; FMax(a,b)
  %4896 = call float @dx.op.binary.f32(i32 35, float %4892, float %4895)  ; FMax(a,b)
  %4897 = fcmp fast ogt float %4896, 0.000000e+00
  %4898 = bitcast float %4896 to i32
  %4899 = sub nsw i32 2129859010, %4898
  %4900 = bitcast i32 %4899 to float
  %4901 = select i1 %4897, float %4900, float 0.000000e+00
  %4902 = fmul fast float %4892, %4878
  %4903 = fmul fast float %4893, %4878
  %4904 = fmul fast float %4894, %4878
  %4905 = fmul fast float %4902, %4901
  %4906 = fmul fast float %4903, %4901
  %4907 = fmul fast float %4904, %4901
  br label %4908

; <label>:4908                                    ; preds = %4883, %4847
  %4909 = phi float [ %4878, %4847 ], [ %4905, %4883 ]
  %4910 = phi float [ %4878, %4847 ], [ %4906, %4883 ]
  %4911 = phi float [ %4878, %4847 ], [ %4907, %4883 ]
  %4912 = fsub fast float %4909, %4518
  %4913 = fsub fast float %4910, %4519
  %4914 = fsub fast float %4911, %4520
  %4915 = fmul fast float %4912, %4859
  %4916 = fmul fast float %4913, %4859
  %4917 = fmul fast float %4914, %4859
  %4918 = fadd fast float %4915, %4518
  %4919 = fadd fast float %4916, %4519
  %4920 = fadd fast float %4917, %4520
  %4921 = fadd fast float %4744, %4529
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fsub fast float %4791, %4528
  %4924 = fmul fast float %4923, %4840
  %4925 = fadd fast float %4924, %4528
  %4926 = fsub fast float %4777, %4527
  %4927 = fmul fast float %4926, %4840
  %4928 = fadd fast float %4927, %4527
  br i1 %4842, label %4937, label %4929

; <label>:4929                                    ; preds = %4908
  %4930 = and i32 %4591, 32768
  %4931 = icmp eq i32 %4930, 0
  br i1 %4931, label %4947, label %4932

; <label>:4932                                    ; preds = %4929
  %4933 = fmul fast float %4840, 1.270000e+02
  %4934 = fadd fast float %4933, %4513
  %4935 = fadd fast float %4933, %4514
  %4936 = fadd fast float %4933, %4515
  br label %4947

; <label>:4937                                    ; preds = %4908
  %4938 = fsub fast float 1.270000e+02, %4513
  %4939 = fsub fast float 1.270000e+02, %4514
  %4940 = fsub fast float 1.270000e+02, %4515
  %4941 = fmul fast float %4840, %4938
  %4942 = fmul fast float %4840, %4939
  %4943 = fmul fast float %4840, %4940
  %4944 = fadd fast float %4941, %4513
  %4945 = fadd fast float %4942, %4514
  %4946 = fadd fast float %4943, %4515
  br label %4947

; <label>:4947                                    ; preds = %4937, %4932, %4929
  %4948 = phi float [ %4934, %4932 ], [ %4513, %4929 ], [ %4944, %4937 ]
  %4949 = phi float [ %4935, %4932 ], [ %4514, %4929 ], [ %4945, %4937 ]
  %4950 = phi float [ %4936, %4932 ], [ %4515, %4929 ], [ %4946, %4937 ]
  %4951 = call float @dx.op.dot3.f32(i32 55, float %4798, float %4799, float %4800, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4953 = extractvalue %dx.types.CBufRet.f32 %4952, 0
  %4954 = extractvalue %dx.types.CBufRet.f32 %4952, 1
  %4955 = fmul fast float %4954, %4951
  %4956 = fadd fast float %4955, %4953
  %4957 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4958 = bitcast float %4579 to i32
  %4959 = and i32 %4958, 65535
  %4960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4959)  ; LegacyF16ToF32(value)
  %4961 = lshr i32 %4958, 16
  %4962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4961)  ; LegacyF16ToF32(value)
  %4963 = fcmp fast oge float %4960, 0.000000e+00
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %4966 = select i1 %4963, float %4960, float %4965
  %4967 = fadd fast float %4966, %4962
  %4968 = fsub fast float %4957, %4512
  %4969 = fmul fast float %4968, %4744
  %4970 = fadd fast float %4969, %4512
  %4971 = fmul fast float %4967, %4744
  %4972 = call float @dx.op.binary.f32(i32 35, float %4511, float %4971)  ; FMax(a,b)
  %4973 = call float @dx.op.binary.f32(i32 35, float %4510, float %4744)  ; FMax(a,b)
  %4974 = and i32 %4591, 16
  %4975 = icmp eq i32 %4974, 0
  br i1 %4975, label %4997, label %4976

; <label>:4976                                    ; preds = %4947
  %4977 = add i32 %4582, 0
  %4978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4977, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4979 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4978, %dx.types.Handle %4757, float %4685, float %4688, float undef, float undef, i32 0, i32 0, i32 undef, float %4690, float %4692, float undef, float %4694, float %4696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4980 = extractvalue %dx.types.ResRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.ResRet.f32 %4979, 1
  %4982 = extractvalue %dx.types.ResRet.f32 %4979, 2
  %4983 = and i32 %4876, 65535
  %4984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4983)  ; LegacyF16ToF32(value)
  %4985 = fmul fast float %4980, %4576
  %4986 = fmul fast float %4981, %4577
  %4987 = fmul fast float %4982, %4578
  %4988 = and i32 %4591, 16384
  %4989 = icmp ne i32 %4988, 0
  %4990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4990, 0
  %4992 = select i1 %4989, float %4991, float 1.000000e+00
  %4993 = fmul fast float %4992, %4984
  %4994 = fmul fast float %4985, %4993
  %4995 = fmul fast float %4986, %4993
  %4996 = fmul fast float %4987, %4993
  br label %4997

; <label>:4997                                    ; preds = %4976, %4947
  %4998 = phi float [ %4994, %4976 ], [ 0.000000e+00, %4947 ]
  %4999 = phi float [ %4995, %4976 ], [ 0.000000e+00, %4947 ]
  %5000 = phi float [ %4996, %4976 ], [ 0.000000e+00, %4947 ]
  %5001 = fsub fast float %4998, %4521
  %5002 = fsub fast float %4999, %4522
  %5003 = fsub fast float %5000, %4523
  %5004 = fmul fast float %5001, %4744
  %5005 = fmul fast float %5002, %4744
  %5006 = fmul fast float %5003, %4744
  %5007 = fadd fast float %5004, %4521
  %5008 = fadd fast float %5005, %4522
  %5009 = fadd fast float %5006, %4523
  br label %4640

; <label>:5010                                    ; preds = %4640
  br label %5011

; <label>:5011                                    ; preds = %5010, %4453
  %5012 = phi float [ 0.000000e+00, %4453 ], [ %4641, %5010 ]
  %5013 = phi float [ %1245, %4453 ], [ %4642, %5010 ]
  %5014 = phi float [ %4422, %4453 ], [ %4643, %5010 ]
  %5015 = phi float [ %4420, %4453 ], [ %4644, %5010 ]
  %5016 = phi float [ %4410, %4453 ], [ %4645, %5010 ]
  %5017 = phi float [ %4411, %4453 ], [ %4646, %5010 ]
  %5018 = phi float [ %4412, %4453 ], [ %4647, %5010 ]
  %5019 = phi float [ 0.000000e+00, %4453 ], [ %4648, %5010 ]
  %5020 = phi float [ 0.000000e+00, %4453 ], [ %4649, %5010 ]
  %5021 = phi float [ %4413, %4453 ], [ %4650, %5010 ]
  %5022 = phi float [ %4414, %4453 ], [ %4651, %5010 ]
  %5023 = phi float [ %4415, %4453 ], [ %4652, %5010 ]
  %5024 = phi float [ %4407, %4453 ], [ %4653, %5010 ]
  %5025 = phi float [ %4408, %4453 ], [ %4654, %5010 ]
  %5026 = phi float [ %4409, %4453 ], [ %4655, %5010 ]
  %5027 = phi float [ %4448, %4453 ], [ %4656, %5010 ]
  %5028 = phi float [ %4449, %4453 ], [ %4657, %5010 ]
  %5029 = phi float [ %4450, %4453 ], [ %4658, %5010 ]
  %5030 = phi float [ %4418, %4453 ], [ %4659, %5010 ]
  %5031 = phi float [ %4417, %4453 ], [ %4660, %5010 ]
  %5032 = phi float [ 0.000000e+00, %4453 ], [ %4661, %5010 ]
  %5033 = phi float [ %4416, %4453 ], [ %4662, %5010 ]
  %5034 = phi float [ %4404, %4453 ], [ %4663, %5010 ]
  %5035 = phi float [ %4405, %4453 ], [ %4664, %5010 ]
  %5036 = phi float [ %4406, %4453 ], [ %4665, %5010 ]
  %5037 = call float @dx.op.dot3.f32(i32 55, float %5027, float %5028, float %5029, float %5027, float %5028, float %5029)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = call float @dx.op.unary.f32(i32 25, float %5037)  ; Rsqrt(value)
  %5039 = fmul fast float %5038, %5027
  %5040 = fmul fast float %5038, %5028
  %5041 = fmul fast float %5038, %5029
  %5042 = fadd fast float %5032, %1245
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = call float @dx.op.dot3.f32(i32 55, float %5039, float %5040, float %5041, float %5039, float %5040, float %5041)  ; Dot3(ax,ay,az,bx,by,bz)
  %5045 = call float @dx.op.unary.f32(i32 25, float %5044)  ; Rsqrt(value)
  %5046 = fmul fast float %5045, %5039
  %5047 = fmul fast float %5045, %5040
  %5048 = fmul fast float %5045, %5041
  br label %5049

; <label>:5049                                    ; preds = %5011, %4401
  %5050 = phi float [ %5046, %5011 ], [ %4448, %4401 ]
  %5051 = phi float [ %5047, %5011 ], [ %4449, %4401 ]
  %5052 = phi float [ %5048, %5011 ], [ %4450, %4401 ]
  %5053 = phi float [ %5024, %5011 ], [ %4407, %4401 ]
  %5054 = phi float [ %5025, %5011 ], [ %4408, %4401 ]
  %5055 = phi float [ %5026, %5011 ], [ %4409, %4401 ]
  %5056 = phi float [ %5016, %5011 ], [ %4410, %4401 ]
  %5057 = phi float [ %5017, %5011 ], [ %4411, %4401 ]
  %5058 = phi float [ %5018, %5011 ], [ %4412, %4401 ]
  %5059 = phi float [ %5021, %5011 ], [ %4413, %4401 ]
  %5060 = phi float [ %5022, %5011 ], [ %4414, %4401 ]
  %5061 = phi float [ %5023, %5011 ], [ %4415, %4401 ]
  %5062 = phi float [ %5034, %5011 ], [ %4404, %4401 ]
  %5063 = phi float [ %5035, %5011 ], [ %4405, %4401 ]
  %5064 = phi float [ %5036, %5011 ], [ %4406, %4401 ]
  %5065 = phi float [ %5033, %5011 ], [ %4416, %4401 ]
  %5066 = phi float [ %5043, %5011 ], [ %1245, %4401 ]
  %5067 = phi float [ %5031, %5011 ], [ %4417, %4401 ]
  %5068 = phi float [ %5030, %5011 ], [ %4418, %4401 ]
  %5069 = phi float [ %5020, %5011 ], [ 0.000000e+00, %4401 ]
  %5070 = phi float [ %5019, %5011 ], [ 0.000000e+00, %4401 ]
  %5071 = phi float [ %5012, %5011 ], [ 0.000000e+00, %4401 ]
  %5072 = phi float [ %5014, %5011 ], [ %4422, %4401 ]
  %5073 = phi float [ %5013, %5011 ], [ %1245, %4401 ]
  %5074 = phi float [ %5015, %5011 ], [ %4420, %4401 ]
  %5075 = fadd fast float %5065, 0xBFB99999A0000000
  %5076 = call float @dx.op.unary.f32(i32 7, float %5075)  ; Saturate(value)
  %5077 = fmul fast float %5076, 0x3FF1C71C80000000
  %5078 = call float @dx.op.binary.f32(i32 36, float %5065, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5079 = fsub fast float 1.000000e+00, %5077
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fmul fast float %5080, %5062
  %5082 = fmul fast float %5080, %5063
  %5083 = fmul fast float %5080, %5064
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5086 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5087 = fmul fast float %5077, %5062
  %5088 = fmul fast float %5077, %5063
  %5089 = fmul fast float %5077, %5064
  %5090 = fadd fast float %5087, %5078
  %5091 = fadd fast float %5088, %5078
  %5092 = fadd fast float %5089, %5078
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5095 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5096 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %5098 = extractvalue %dx.types.ResRet.i32 %5097, 0
  %5099 = and i32 %5098, 1
  %5100 = icmp eq i32 %5099, 0
  br i1 %5100, label %5115, label %5101

; <label>:5101                                    ; preds = %5049
  %5102 = call float @dx.op.binary.f32(i32 35, float %5085, float %5086)  ; FMax(a,b)
  %5103 = call float @dx.op.binary.f32(i32 35, float %5084, float %5102)  ; FMax(a,b)
  %5104 = fcmp fast ogt float %5103, 0.000000e+00
  %5105 = bitcast float %5103 to i32
  %5106 = sub nsw i32 2129859010, %5105
  %5107 = bitcast i32 %5106 to float
  %5108 = select i1 %5104, float %5107, float 0.000000e+00
  %5109 = fmul fast float %5084, %5059
  %5110 = fmul fast float %5085, %5060
  %5111 = fmul fast float %5086, %5061
  %5112 = fmul fast float %5109, %5108
  %5113 = fmul fast float %5110, %5108
  %5114 = fmul fast float %5111, %5108
  br label %5115

; <label>:5115                                    ; preds = %5101, %5049
  %5116 = phi float [ %5112, %5101 ], [ %5059, %5049 ]
  %5117 = phi float [ %5113, %5101 ], [ %5060, %5049 ]
  %5118 = phi float [ %5114, %5101 ], [ %5061, %5049 ]
  %5119 = call float @dx.op.binary.f32(i32 36, float %5056, float 1.270000e+02)  ; FMin(a,b)
  %5120 = call float @dx.op.binary.f32(i32 36, float %5057, float 1.270000e+02)  ; FMin(a,b)
  %5121 = call float @dx.op.binary.f32(i32 36, float %5058, float 1.270000e+02)  ; FMin(a,b)
  %5122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.i32 %5122, 3
  %5124 = and i32 %5123, 8
  %5125 = icmp ne i32 %5124, 0
  %5126 = call float @dx.op.binary.f32(i32 35, float %5084, float %5062)  ; FMax(a,b)
  %5127 = call float @dx.op.binary.f32(i32 35, float %5085, float %5062)  ; FMax(a,b)
  %5128 = call float @dx.op.binary.f32(i32 35, float %5086, float %5062)  ; FMax(a,b)
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5084, float %5085, float %5086, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = select i1 %215, float %5062, float %5084
  %5131 = select i1 %215, float %5129, float %5085
  %5132 = select i1 %215, float 1.000000e+00, float %5086
  %5133 = select i1 %5125, float %5126, float %5130
  %5134 = select i1 %5125, float %5127, float %5131
  %5135 = select i1 %5125, float %5128, float %5132
  %5136 = call float @dx.op.dot3.f32(i32 55, float %5116, float %5117, float %5118, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = select i1 %215, float %5136, float %5116
  %5138 = select i1 %215, float %5136, float %5117
  %5139 = select i1 %215, float %5136, float %5118
  %5140 = and i32 %191, 3
  %5141 = select i1 %185, i32 %5140, i32 0
  %5142 = icmp eq i32 %5141, 1
  br i1 %5142, label %5143, label %5219

; <label>:5143                                    ; preds = %5115
  %5144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5144, 0
  %5146 = extractvalue %dx.types.CBufRet.f32 %5144, 1
  %5147 = fadd fast float %5145, %154
  %5148 = fadd fast float %5146, %155
  %5149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5150 = extractvalue %dx.types.CBufRet.f32 %5149, 0
  %5151 = extractvalue %dx.types.CBufRet.f32 %5149, 1
  %5152 = fsub fast float %5147, %5150
  %5153 = fsub fast float %5148, %5151
  %5154 = fmul fast float %5152, %5152
  %5155 = fmul fast float %5153, %5153
  %5156 = fadd fast float %5154, %5155
  %5157 = call float @dx.op.unary.f32(i32 24, float %5156)  ; Sqrt(value)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5149, 2
  %5159 = fcmp fast olt float %5157, %5158
  br i1 %5159, label %5160, label %5213

; <label>:5160                                    ; preds = %5143
  %5161 = extractvalue %dx.types.CBufRet.f32 %5144, 2
  %5162 = fadd fast float %5161, %156
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 0
  %5165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5166 = extractvalue %dx.types.CBufRet.f32 %5165, 0
  %5167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.f32 %5167, 0
  %5169 = extractvalue %dx.types.CBufRet.f32 %5163, 1
  %5170 = extractvalue %dx.types.CBufRet.f32 %5165, 1
  %5171 = extractvalue %dx.types.CBufRet.f32 %5167, 1
  %5172 = extractvalue %dx.types.CBufRet.f32 %5163, 3
  %5173 = extractvalue %dx.types.CBufRet.f32 %5165, 3
  %5174 = extractvalue %dx.types.CBufRet.f32 %5167, 3
  %5175 = fadd fast float %5172, %5147
  %5176 = fadd fast float %5173, %5148
  %5177 = fadd fast float %5162, %5174
  %5178 = fmul fast float %5175, %5164
  %5179 = call float @dx.op.tertiary.f32(i32 46, float %5176, float %5166, float %5178)  ; FMad(a,b,c)
  %5180 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5168, float %5179)  ; FMad(a,b,c)
  %5181 = fmul fast float %5175, %5169
  %5182 = call float @dx.op.tertiary.f32(i32 46, float %5176, float %5170, float %5181)  ; FMad(a,b,c)
  %5183 = call float @dx.op.tertiary.f32(i32 46, float %5177, float %5171, float %5182)  ; FMad(a,b,c)
  %5184 = fsub fast float %5180, %5172
  %5185 = fsub fast float %5183, %5173
  %5186 = fsub fast float %5184, %5150
  %5187 = fadd fast float %5186, %5158
  %5188 = fsub fast float %5185, %5151
  %5189 = fadd fast float %5188, %5158
  %5190 = extractvalue %dx.types.CBufRet.f32 %5149, 3
  %5191 = fmul fast float %5187, %5190
  %5192 = fmul fast float %5189, %5190
  %5193 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5194 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5195 = fsub fast float 1.000000e+00, %5193
  %5196 = fsub fast float 1.000000e+00, %5194
  %5197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %5195, float %5196, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5198 = extractvalue %dx.types.ResRet.f32 %5197, 0
  %5199 = fcmp fast ugt float %5198, 0.000000e+00
  br i1 %5199, label %5200, label %5213

; <label>:5200                                    ; preds = %5160
  %5201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5202 = extractvalue %dx.types.CBufRet.f32 %5201, 2
  %5203 = fmul fast float %5202, %5198
  %5204 = extractvalue %dx.types.CBufRet.f32 %5201, 3
  %5205 = fadd fast float %5204, %5203
  %5206 = extractvalue %dx.types.CBufRet.f32 %5167, 2
  %5207 = fadd fast float %5205, %5174
  %5208 = fmul fast float %5180, %5168
  %5209 = call float @dx.op.tertiary.f32(i32 46, float %5183, float %5171, float %5208)  ; FMad(a,b,c)
  %5210 = call float @dx.op.tertiary.f32(i32 46, float %5207, float %5206, float %5209)  ; FMad(a,b,c)
  %5211 = fsub fast float %5210, %5174
  %5212 = fsub fast float %5211, %5161
  br label %5213

; <label>:5213                                    ; preds = %5200, %5160, %5143
  %5214 = phi i1 [ true, %5200 ], [ false, %5160 ], [ false, %5143 ]
  %5215 = phi float [ %5212, %5200 ], [ -1.310720e+05, %5160 ], [ -1.310720e+05, %5143 ]
  %5216 = fsub fast float %5215, %156
  %5217 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5218 = select i1 %5214, float %5217, float 1.000000e+00
  br label %5219

; <label>:5219                                    ; preds = %5213, %5115
  %5220 = phi float [ %5218, %5213 ], [ 0.000000e+00, %5115 ]
  %5221 = icmp eq i32 %5141, 3
  %5222 = select i1 %5221, float 1.000000e+00, float %5220
  %5223 = call float @dx.op.binary.f32(i32 35, float %5071, float %5222)  ; FMax(a,b)
  %5224 = call float @dx.op.unary.f32(i32 7, float %5223)  ; Saturate(value)
  %5225 = fcmp fast une float %5224, 0.000000e+00
  %5226 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %5227 = call float @dx.op.unary.f32(i32 25, float %5226)  ; Rsqrt(value)
  br i1 %5225, label %5235, label %5228

; <label>:5228                                    ; preds = %5219
  %5229 = fmul fast float %5227, %154
  %5230 = fmul fast float %5227, %155
  %5231 = fmul fast float %5227, %156
  %5232 = fsub fast float -0.000000e+00, %5229
  %5233 = fsub fast float -0.000000e+00, %5230
  %5234 = fsub fast float -0.000000e+00, %5231
  br label %5403

; <label>:5235                                    ; preds = %5219
  %5236 = fmul fast float %154, %5227
  %5237 = fsub fast float -0.000000e+00, %5236
  %5238 = fmul fast float %155, %5227
  %5239 = fsub fast float -0.000000e+00, %5238
  %5240 = fmul fast float %156, %5227
  %5241 = fsub fast float -0.000000e+00, %5240
  %5242 = call float @dx.op.dot3.f32(i32 55, float %5237, float %5239, float %5241, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5243 = fmul fast float %5224, 2.500000e+00
  %5244 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5245 = fmul fast float %5224, 0x4013FFFFE0000000
  %5246 = fadd fast float %5245, 0xBFFFFFFFE0000000
  %5247 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5248 = fmul fast float %5224, 0x4004000020000000
  %5249 = fadd fast float %5248, 0xBFF8000040000000
  %5250 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  %5251 = call float @dx.op.unary.f32(i32 7, float %5244)  ; Saturate(value)
  %5252 = fmul fast float %5075, 1.000000e+01
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = fmul fast float %5253, 2.000000e+00
  %5255 = fsub fast float 3.000000e+00, %5254
  %5256 = fmul fast float %5253, %5253
  %5257 = fmul fast float %5256, %5255
  %5258 = fsub fast float 1.000000e+00, %5257
  %5259 = fsub fast float 0x3FE3333340000000, %5096
  %5260 = fmul fast float %5259, 0x400AAAAAA0000000
  %5261 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5262 = fmul fast float %5258, %5261
  %5263 = fmul fast float %5133, 0x3FEA2B8620000000
  %5264 = fmul fast float %5134, 0x3FEA2B8620000000
  %5265 = fmul fast float %5135, 0x3FEA2B8620000000
  %5266 = fadd fast float %5263, 0x3FC81DFBA0000000
  %5267 = fmul fast float %5266, %5133
  %5268 = fadd fast float %5267, 0x3F910E6020000000
  %5269 = fadd fast float %5264, 0x3FC81DFBA0000000
  %5270 = fmul fast float %5269, %5134
  %5271 = fadd fast float %5270, 0x3F910E6020000000
  %5272 = fadd fast float %5265, 0x3FC81DFBA0000000
  %5273 = fmul fast float %5272, %5135
  %5274 = fadd fast float %5273, 0x3F910E6020000000
  %5275 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5276 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5277 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5278 = fsub fast float %5275, %5133
  %5279 = fsub fast float %5276, %5134
  %5280 = fsub fast float %5277, %5135
  %5281 = fmul fast float %5278, %5251
  %5282 = fmul fast float %5281, %5262
  %5283 = fmul fast float %5279, %5251
  %5284 = fmul fast float %5283, %5262
  %5285 = fmul fast float %5280, %5251
  %5286 = fmul fast float %5285, %5262
  %5287 = fadd fast float %5282, %5133
  %5288 = fadd fast float %5284, %5134
  %5289 = fadd fast float %5286, %5135
  %5290 = fmul fast float %5068, %5068
  %5291 = fmul fast float %5290, %5290
  %5292 = fadd fast float %5247, 1.000000e+00
  %5293 = fsub fast float %5292, %5262
  %5294 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5295 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5296 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5297 = fsub fast float 1.000000e+00, %5291
  %5298 = call float @dx.op.binary.f32(i32 36, float %5294, float %5297)  ; FMin(a,b)
  %5299 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5300 = call float @dx.op.binary.f32(i32 35, float %5298, float %5299)  ; FMax(a,b)
  %5301 = fadd fast float %5296, 0xBFE4CCCCC0000000
  %5302 = fmul fast float %5301, 0x4006DB6DA0000000
  %5303 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5304 = fmul fast float %5303, 2.000000e+00
  %5305 = fsub fast float 3.000000e+00, %5304
  %5306 = bitcast float %5093 to i32
  %5307 = ashr i32 %5306, 1
  %5308 = add nsw i32 %5307, 532487669
  %5309 = bitcast i32 %5308 to float
  %5310 = fsub fast float 1.000000e+00, %5309
  %5311 = bitcast float %5310 to i32
  %5312 = sub nsw i32 2129859010, %5311
  %5313 = bitcast i32 %5312 to float
  %5314 = fmul fast float %5313, 2.000000e+00
  %5315 = bitcast float %5094 to i32
  %5316 = ashr i32 %5315, 1
  %5317 = add nsw i32 %5316, 532487669
  %5318 = bitcast i32 %5317 to float
  %5319 = fsub fast float 1.000000e+00, %5318
  %5320 = bitcast float %5319 to i32
  %5321 = sub nsw i32 2129859010, %5320
  %5322 = bitcast i32 %5321 to float
  %5323 = fmul fast float %5322, 2.000000e+00
  %5324 = bitcast float %5095 to i32
  %5325 = ashr i32 %5324, 1
  %5326 = add nsw i32 %5325, 532487669
  %5327 = bitcast i32 %5326 to float
  %5328 = fsub fast float 1.000000e+00, %5327
  %5329 = bitcast float %5328 to i32
  %5330 = sub nsw i32 2129859010, %5329
  %5331 = bitcast i32 %5330 to float
  %5332 = fmul fast float %5331, 2.000000e+00
  %5333 = fsub fast float 0x4002A9FBE0000000, %5314
  %5334 = fadd fast float %5314, 0x3FD54FDF00000000
  %5335 = bitcast float %5334 to i32
  %5336 = sub nsw i32 2129859010, %5335
  %5337 = bitcast i32 %5336 to float
  %5338 = fmul fast float %5337, %5333
  %5339 = fmul fast float %5338, %5338
  %5340 = fsub fast float 0x4002A9FBE0000000, %5323
  %5341 = fadd fast float %5323, 0x3FD54FDF00000000
  %5342 = bitcast float %5341 to i32
  %5343 = sub nsw i32 2129859010, %5342
  %5344 = bitcast i32 %5343 to float
  %5345 = fmul fast float %5344, %5340
  %5346 = fmul fast float %5345, %5345
  %5347 = fsub fast float 0x4002A9FBE0000000, %5332
  %5348 = fadd fast float %5332, 0x3FD54FDF00000000
  %5349 = bitcast float %5348 to i32
  %5350 = sub nsw i32 2129859010, %5349
  %5351 = bitcast i32 %5350 to float
  %5352 = fmul fast float %5351, %5347
  %5353 = fmul fast float %5352, %5352
  %5354 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5339)  ; FMax(a,b)
  %5355 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5346)  ; FMax(a,b)
  %5356 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5353)  ; FMax(a,b)
  %5357 = fsub fast float 1.000000e+00, %5242
  %5358 = fadd fast float %5357, %5258
  %5359 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5360 = fsub fast float 1.000000e+00, %5222
  %5361 = fmul fast float %5300, %5360
  %5362 = fmul fast float %5303, %5303
  %5363 = fmul fast float %5362, %5361
  %5364 = fmul fast float %5363, %5305
  %5365 = fmul fast float %5360, 0xBFE99999A0000000
  %5366 = fmul fast float %5365, %5251
  %5367 = fmul fast float %5366, %5262
  %5368 = fadd fast float %5367, 1.000000e+00
  %5369 = fadd fast float %5096, -1.000000e+00
  %5370 = fmul fast float %5368, %5369
  %5371 = fadd fast float %5370, 1.000000e+00
  %5372 = fsub fast float %5354, %5093
  %5373 = fsub fast float %5355, %5094
  %5374 = fsub fast float %5356, %5095
  %5375 = fmul fast float %5364, %5372
  %5376 = fmul fast float %5364, %5373
  %5377 = fmul fast float %5364, %5374
  %5378 = fadd fast float %5375, %5093
  %5379 = fadd fast float %5376, %5094
  %5380 = fadd fast float %5377, %5095
  %5381 = fsub fast float %106, %5050
  %5382 = fsub fast float %107, %5051
  %5383 = fsub fast float %108, %5052
  %5384 = fmul fast float %5364, %5381
  %5385 = fmul fast float %5364, %5382
  %5386 = fmul fast float %5364, %5383
  %5387 = fadd fast float %5384, %5050
  %5388 = fadd fast float %5385, %5051
  %5389 = fadd fast float %5386, %5052
  %5390 = fmul fast float %5364, %5359
  %5391 = call float @dx.op.unary.f32(i32 7, float %5371)  ; Saturate(value)
  %5392 = fsub fast float 1.000000e+00, %5391
  %5393 = fmul fast float %5390, %5392
  %5394 = fadd fast float %5393, %5391
  %5395 = fsub fast float 1.000000e+00, %5068
  %5396 = fmul fast float %5364, %5395
  %5397 = fadd fast float %5396, %5068
  %5398 = call float @dx.op.dot3.f32(i32 55, float %5387, float %5388, float %5389, float %5387, float %5388, float %5389)  ; Dot3(ax,ay,az,bx,by,bz)
  %5399 = call float @dx.op.unary.f32(i32 25, float %5398)  ; Rsqrt(value)
  %5400 = fmul fast float %5387, %5399
  %5401 = fmul fast float %5388, %5399
  %5402 = fmul fast float %5389, %5399
  br label %5403

; <label>:5403                                    ; preds = %5235, %5228
  %5404 = phi float [ %5234, %5228 ], [ %5241, %5235 ]
  %5405 = phi float [ %5233, %5228 ], [ %5239, %5235 ]
  %5406 = phi float [ %5232, %5228 ], [ %5237, %5235 ]
  %5407 = phi float [ %5231, %5228 ], [ %5240, %5235 ]
  %5408 = phi float [ %5230, %5228 ], [ %5238, %5235 ]
  %5409 = phi float [ %5229, %5228 ], [ %5236, %5235 ]
  %5410 = phi float [ %5093, %5228 ], [ %5378, %5235 ]
  %5411 = phi float [ %5094, %5228 ], [ %5379, %5235 ]
  %5412 = phi float [ %5095, %5228 ], [ %5380, %5235 ]
  %5413 = phi float [ %5050, %5228 ], [ %5400, %5235 ]
  %5414 = phi float [ %5051, %5228 ], [ %5401, %5235 ]
  %5415 = phi float [ %5052, %5228 ], [ %5402, %5235 ]
  %5416 = phi float [ %5133, %5228 ], [ %5287, %5235 ]
  %5417 = phi float [ %5134, %5228 ], [ %5288, %5235 ]
  %5418 = phi float [ %5135, %5228 ], [ %5289, %5235 ]
  %5419 = phi float [ %5096, %5228 ], [ %5394, %5235 ]
  %5420 = phi float [ %5068, %5228 ], [ %5397, %5235 ]
  %5421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5422 = extractvalue %dx.types.CBufRet.f32 %5421, 2
  %5423 = extractvalue %dx.types.CBufRet.f32 %5421, 3
  %5424 = fmul fast float %124, %5422
  %5425 = fmul fast float %126, %5423
  %5426 = fsub fast float 1.000000e+00, %5424
  %5427 = fsub fast float 1.000000e+00, %5425
  %5428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %5429 = extractvalue %dx.types.CBufRet.f32 %5428, 0
  %5430 = extractvalue %dx.types.CBufRet.f32 %5428, 1
  %5431 = extractvalue %dx.types.CBufRet.f32 %5428, 2
  %5432 = fmul fast float %5426, %5429
  %5433 = fmul fast float %5426, %5430
  %5434 = fmul fast float %5426, %5431
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.CBufRet.f32 %5435, 1
  %5438 = extractvalue %dx.types.CBufRet.f32 %5435, 2
  %5439 = fmul fast float %5427, %5436
  %5440 = fmul fast float %5427, %5437
  %5441 = fmul fast float %5427, %5438
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.CBufRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.CBufRet.f32 %5442, 2
  %5446 = fadd fast float %5439, %5443
  %5447 = fadd fast float %5446, %5432
  %5448 = fadd fast float %5440, %5444
  %5449 = fadd fast float %5448, %5433
  %5450 = fadd fast float %5441, %5445
  %5451 = fadd fast float %5450, %5434
  %5452 = fmul fast float %5447, %87
  %5453 = fmul fast float %5449, %87
  %5454 = fmul fast float %5451, %87
  %5455 = select i1 %215, float 0.000000e+00, float %5412
  %5456 = call float @dx.op.dot3.f32(i32 55, float %5413, float %5414, float %5415, float %5406, float %5405, float %5404)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = call float @dx.op.unary.f32(i32 7, float %5456)  ; Saturate(value)
  %5458 = call float @dx.op.dot3.f32(i32 55, float %5409, float %5408, float %5407, float %5413, float %5414, float %5415)  ; Dot3(ax,ay,az,bx,by,bz)
  %5459 = fmul fast float %5458, 2.000000e+00
  %5460 = fmul fast float %5459, %5413
  %5461 = fmul fast float %5459, %5414
  %5462 = fmul fast float %5459, %5415
  %5463 = fsub fast float %5409, %5460
  %5464 = fsub fast float %5408, %5461
  %5465 = fsub fast float %5407, %5462
  %5466 = call float @dx.op.binary.f32(i32 36, float %5420, float 1.000000e+00)  ; FMin(a,b)
  %5467 = fsub fast float 1.000000e+00, %5466
  %5468 = bitcast float %5467 to i32
  %5469 = ashr i32 %5468, 1
  %5470 = add nsw i32 %5469, 532487669
  %5471 = bitcast i32 %5470 to float
  %5472 = fsub fast float 1.000000e+00, %5419
  %5473 = call float @dx.op.binary.f32(i32 35, float %5472, float 0x3F847AE140000000)  ; FMax(a,b)
  %5474 = fmul fast float %5473, %5473
  %5475 = fmul fast float %5474, %5474
  %5476 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %44, float %5471, float %5475, float %5476, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5478 = extractvalue %dx.types.ResRet.f32 %5477, 0
  %5479 = fsub fast float 1.000000e+00, %5420
  %5480 = bitcast float %5479 to i32
  %5481 = sub nsw i32 2129859010, %5480
  %5482 = call float @dx.op.dot3.f32(i32 55, float %67, float %63, float %59, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = fmul fast float %5482, 0x3FD20DD760000000
  %5484 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %67)  ; FMax(a,b)
  %5485 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5486 = fcmp fast oeq float %5485, 0.000000e+00
  %5487 = fcmp fast oeq float %5484, 0.000000e+00
  %5488 = or i1 %5487, %5486
  br i1 %5488, label %5518, label %5489

; <label>:5489                                    ; preds = %5403
  %5490 = fsub fast float -0.000000e+00, %70
  %5491 = fsub fast float -0.000000e+00, %68
  %5492 = call float @dx.op.unary.f32(i32 24, float %5485)  ; Sqrt(value)
  %5493 = fdiv fast float %5492, %5484
  %5494 = fcmp fast ogt float %5493, 0x3FFB6F8900000000
  %5495 = select i1 %5494, float 0x3FFB6F8900000000, float %5493
  %5496 = fmul fast float %5495, 0x3FE8A23460000000
  %5497 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5498 = call float @dx.op.binary.f32(i32 35, float %5495, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5499 = fmul fast float %5497, %5484
  %5500 = fmul fast float %5498, 0x3FF279A740000000
  %5501 = fadd fast float %5500, -1.000000e+00
  %5502 = call float @dx.op.dot3.f32(i32 55, float %5490, float %5491, float %69, float %5490, float %5491, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = call float @dx.op.unary.f32(i32 25, float %5502)  ; Rsqrt(value)
  %5504 = fmul fast float %5503, %5490
  %5505 = fmul fast float %5503, %5491
  %5506 = fmul fast float %5503, %69
  %5507 = fmul fast float %5501, %5501
  %5508 = fsub fast float 1.000000e+00, %5507
  %5509 = fmul fast float %5498, 0x40005F8BE0000000
  %5510 = fsub fast float 0x400C5BF8A0000000, %5509
  %5511 = fdiv fast float %5499, %5510
  %5512 = fmul fast float %5511, 0x3FEE31C3C0000000
  %5513 = fmul fast float %5512, %5508
  %5514 = fmul fast float %5498, 0x3FDACB7480000000
  %5515 = fadd fast float %5514, 0xBFD7347680000000
  %5516 = fmul fast float %5515, %5511
  %5517 = fmul fast float %5516, %5508
  br label %5518

; <label>:5518                                    ; preds = %5489, %5403
  %5519 = phi float [ %5504, %5489 ], [ 0.000000e+00, %5403 ]
  %5520 = phi float [ %5505, %5489 ], [ 0.000000e+00, %5403 ]
  %5521 = phi float [ %5506, %5489 ], [ 0.000000e+00, %5403 ]
  %5522 = phi float [ %5513, %5489 ], [ 0.000000e+00, %5403 ]
  %5523 = phi float [ %5517, %5489 ], [ 0.000000e+00, %5403 ]
  %5524 = call float @dx.op.dot3.f32(i32 55, float %5519, float %5520, float %5521, float %5413, float %5414, float %5415)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = fmul fast float %5524, %5524
  %5526 = fmul fast float %5525, 0x3FEE471020000000
  %5527 = fadd fast float %5526, 0xBFD42F6020000000
  %5528 = fmul fast float %5484, 0x3FD20DD760000000
  %5529 = fmul fast float %5527, %5523
  %5530 = fmul fast float %5522, 0x3FDF454380000000
  %5531 = fmul fast float %5530, %5524
  %5532 = fadd fast float %5531, %5528
  %5533 = fadd fast float %5532, %5529
  %5534 = call float @dx.op.dot3.f32(i32 55, float %5519, float %5520, float %5521, float %5463, float %5464, float %5465)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = fmul fast float %5534, 0x3FDF454380000000
  %5536 = fmul fast float %5534, %5534
  %5537 = fmul fast float %5536, 0x3FEE471020000000
  %5538 = fadd fast float %5537, 0xBFD42F6020000000
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5484, float %5522, float %5523, float 0x3FD20DD760000000, float %5535, float %5538)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %5541 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %5542 = fcmp fast oeq float %5541, 0.000000e+00
  %5543 = fcmp fast oeq float %5540, 0.000000e+00
  %5544 = or i1 %5543, %5542
  br i1 %5544, label %5574, label %5545

; <label>:5545                                    ; preds = %5518
  %5546 = fsub fast float -0.000000e+00, %66
  %5547 = fsub fast float -0.000000e+00, %64
  %5548 = call float @dx.op.unary.f32(i32 24, float %5541)  ; Sqrt(value)
  %5549 = fdiv fast float %5548, %5540
  %5550 = fcmp fast ogt float %5549, 0x3FFB6F8900000000
  %5551 = select i1 %5550, float 0x3FFB6F8900000000, float %5549
  %5552 = fmul fast float %5551, 0x3FE8A23460000000
  %5553 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5554 = call float @dx.op.binary.f32(i32 35, float %5551, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5555 = fmul fast float %5553, %5540
  %5556 = fmul fast float %5554, 0x3FF279A740000000
  %5557 = fadd fast float %5556, -1.000000e+00
  %5558 = call float @dx.op.dot3.f32(i32 55, float %5546, float %5547, float %65, float %5546, float %5547, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5559 = call float @dx.op.unary.f32(i32 25, float %5558)  ; Rsqrt(value)
  %5560 = fmul fast float %5559, %5546
  %5561 = fmul fast float %5559, %5547
  %5562 = fmul fast float %5559, %65
  %5563 = fmul fast float %5557, %5557
  %5564 = fsub fast float 1.000000e+00, %5563
  %5565 = fmul fast float %5554, 0x40005F8BE0000000
  %5566 = fsub fast float 0x400C5BF8A0000000, %5565
  %5567 = fdiv fast float %5555, %5566
  %5568 = fmul fast float %5567, 0x3FEE31C3C0000000
  %5569 = fmul fast float %5568, %5564
  %5570 = fmul fast float %5554, 0x3FDACB7480000000
  %5571 = fadd fast float %5570, 0xBFD7347680000000
  %5572 = fmul fast float %5571, %5567
  %5573 = fmul fast float %5572, %5564
  br label %5574

; <label>:5574                                    ; preds = %5545, %5518
  %5575 = phi float [ %5560, %5545 ], [ 0.000000e+00, %5518 ]
  %5576 = phi float [ %5561, %5545 ], [ 0.000000e+00, %5518 ]
  %5577 = phi float [ %5562, %5545 ], [ 0.000000e+00, %5518 ]
  %5578 = phi float [ %5569, %5545 ], [ 0.000000e+00, %5518 ]
  %5579 = phi float [ %5573, %5545 ], [ 0.000000e+00, %5518 ]
  %5580 = call float @dx.op.dot3.f32(i32 55, float %5575, float %5576, float %5577, float %5413, float %5414, float %5415)  ; Dot3(ax,ay,az,bx,by,bz)
  %5581 = fmul fast float %5580, %5580
  %5582 = fmul fast float %5581, 0x3FEE471020000000
  %5583 = fadd fast float %5582, 0xBFD42F6020000000
  %5584 = fmul fast float %5540, 0x3FD20DD760000000
  %5585 = fmul fast float %5583, %5579
  %5586 = fmul fast float %5578, 0x3FDF454380000000
  %5587 = fmul fast float %5586, %5580
  %5588 = fadd fast float %5587, %5584
  %5589 = fadd fast float %5588, %5585
  %5590 = call float @dx.op.dot3.f32(i32 55, float %5575, float %5576, float %5577, float %5463, float %5464, float %5465)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = fmul fast float %5590, 0x3FDF454380000000
  %5592 = fmul fast float %5590, %5590
  %5593 = fmul fast float %5592, 0x3FEE471020000000
  %5594 = fadd fast float %5593, 0xBFD42F6020000000
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5540, float %5578, float %5579, float 0x3FD20DD760000000, float %5591, float %5594)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %59)  ; FMax(a,b)
  %5597 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %5598 = fcmp fast oeq float %5597, 0.000000e+00
  %5599 = fcmp fast oeq float %5596, 0.000000e+00
  %5600 = or i1 %5599, %5598
  br i1 %5600, label %5630, label %5601

; <label>:5601                                    ; preds = %5574
  %5602 = fsub fast float -0.000000e+00, %62
  %5603 = fsub fast float -0.000000e+00, %60
  %5604 = call float @dx.op.unary.f32(i32 24, float %5597)  ; Sqrt(value)
  %5605 = fdiv fast float %5604, %5596
  %5606 = fcmp fast ogt float %5605, 0x3FFB6F8900000000
  %5607 = select i1 %5606, float 0x3FFB6F8900000000, float %5605
  %5608 = fmul fast float %5607, 0x3FE8A23460000000
  %5609 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5610 = call float @dx.op.binary.f32(i32 35, float %5607, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5611 = fmul fast float %5609, %5596
  %5612 = fmul fast float %5610, 0x3FF279A740000000
  %5613 = fadd fast float %5612, -1.000000e+00
  %5614 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5603, float %61, float %5602, float %5603, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5615 = call float @dx.op.unary.f32(i32 25, float %5614)  ; Rsqrt(value)
  %5616 = fmul fast float %5615, %5602
  %5617 = fmul fast float %5615, %5603
  %5618 = fmul fast float %5615, %61
  %5619 = fmul fast float %5613, %5613
  %5620 = fsub fast float 1.000000e+00, %5619
  %5621 = fmul fast float %5610, 0x40005F8BE0000000
  %5622 = fsub fast float 0x400C5BF8A0000000, %5621
  %5623 = fdiv fast float %5611, %5622
  %5624 = fmul fast float %5623, 0x3FEE31C3C0000000
  %5625 = fmul fast float %5624, %5620
  %5626 = fmul fast float %5610, 0x3FDACB7480000000
  %5627 = fadd fast float %5626, 0xBFD7347680000000
  %5628 = fmul fast float %5627, %5623
  %5629 = fmul fast float %5628, %5620
  br label %5630

; <label>:5630                                    ; preds = %5601, %5574
  %5631 = phi float [ %5616, %5601 ], [ 0.000000e+00, %5574 ]
  %5632 = phi float [ %5617, %5601 ], [ 0.000000e+00, %5574 ]
  %5633 = phi float [ %5618, %5601 ], [ 0.000000e+00, %5574 ]
  %5634 = phi float [ %5625, %5601 ], [ 0.000000e+00, %5574 ]
  %5635 = phi float [ %5629, %5601 ], [ 0.000000e+00, %5574 ]
  %5636 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float %5413, float %5414, float %5415)  ; Dot3(ax,ay,az,bx,by,bz)
  %5637 = fmul fast float %5636, %5636
  %5638 = fmul fast float %5637, 0x3FEE471020000000
  %5639 = fadd fast float %5638, 0xBFD42F6020000000
  %5640 = fmul fast float %5596, 0x3FD20DD760000000
  %5641 = fmul fast float %5639, %5635
  %5642 = fmul fast float %5634, 0x3FDF454380000000
  %5643 = fmul fast float %5642, %5636
  %5644 = fadd fast float %5643, %5640
  %5645 = fadd fast float %5644, %5641
  %5646 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float %5463, float %5464, float %5465)  ; Dot3(ax,ay,az,bx,by,bz)
  %5647 = fmul fast float %5646, 0x3FDF454380000000
  %5648 = fmul fast float %5646, %5646
  %5649 = fmul fast float %5648, 0x3FEE471020000000
  %5650 = fadd fast float %5649, 0xBFD42F6020000000
  %5651 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5634, float %5635, float 0x3FD20DD760000000, float %5647, float %5650)  ; Dot3(ax,ay,az,bx,by,bz)
  %5652 = call float @dx.op.binary.f32(i32 35, float %5533, float 0.000000e+00)  ; FMax(a,b)
  %5653 = call float @dx.op.binary.f32(i32 35, float %5589, float 0.000000e+00)  ; FMax(a,b)
  %5654 = call float @dx.op.binary.f32(i32 35, float %5645, float 0.000000e+00)  ; FMax(a,b)
  %5655 = call float @dx.op.binary.f32(i32 35, float %5539, float 0.000000e+00)  ; FMax(a,b)
  %5656 = call float @dx.op.binary.f32(i32 35, float %5595, float 0.000000e+00)  ; FMax(a,b)
  %5657 = call float @dx.op.binary.f32(i32 35, float %5651, float 0.000000e+00)  ; FMax(a,b)
  %5658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5659 = extractvalue %dx.types.CBufRet.f32 %5658, 0
  %5660 = call float @dx.op.binary.f32(i32 36, float %5416, float %5659)  ; FMin(a,b)
  %5661 = fmul fast float %5660, %5467
  %5662 = fsub fast float 1.000000e+00, %5661
  %5663 = bitcast float %5662 to i32
  %5664 = sub nsw i32 2129859010, %5663
  %5665 = bitcast i32 %5664 to float
  %5666 = call float @dx.op.binary.f32(i32 36, float %5417, float %5659)  ; FMin(a,b)
  %5667 = fmul fast float %5666, %5467
  %5668 = fsub fast float 1.000000e+00, %5667
  %5669 = bitcast float %5668 to i32
  %5670 = sub nsw i32 2129859010, %5669
  %5671 = bitcast i32 %5670 to float
  %5672 = call float @dx.op.binary.f32(i32 36, float %5418, float %5659)  ; FMin(a,b)
  %5673 = fmul fast float %5672, %5467
  %5674 = fsub fast float 1.000000e+00, %5673
  %5675 = bitcast float %5674 to i32
  %5676 = sub nsw i32 2129859010, %5675
  %5677 = bitcast i32 %5676 to float
  %5678 = fmul fast float %5652, %5466
  %5679 = fmul fast float %5678, %5665
  %5680 = fmul fast float %5653, %5466
  %5681 = fmul fast float %5680, %5671
  %5682 = fmul fast float %5654, %5466
  %5683 = fmul fast float %5682, %5677
  %5684 = call float @dx.op.binary.f32(i32 36, float %5410, float %5659)  ; FMin(a,b)
  %5685 = fmul fast float %5684, %5467
  %5686 = fsub fast float 1.000000e+00, %5685
  %5687 = bitcast float %5686 to i32
  %5688 = sub nsw i32 2129859010, %5687
  %5689 = bitcast i32 %5688 to float
  %5690 = call float @dx.op.binary.f32(i32 36, float %5411, float %5659)  ; FMin(a,b)
  %5691 = fmul fast float %5690, %5467
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = bitcast float %5692 to i32
  %5694 = sub nsw i32 2129859010, %5693
  %5695 = bitcast i32 %5694 to float
  %5696 = call float @dx.op.binary.f32(i32 36, float %5455, float %5659)  ; FMin(a,b)
  %5697 = fmul fast float %5696, %5467
  %5698 = fsub fast float 1.000000e+00, %5697
  %5699 = bitcast float %5698 to i32
  %5700 = sub nsw i32 2129859010, %5699
  %5701 = bitcast i32 %5700 to float
  %5702 = fmul fast float %5655, %5466
  %5703 = fmul fast float %5702, %5689
  %5704 = fmul fast float %5656, %5466
  %5705 = fmul fast float %5704, %5695
  %5706 = fmul fast float %5657, %5466
  %5707 = fmul fast float %5706, %5701
  %5708 = call float @dx.op.dot3.f32(i32 55, float %5679, float %5681, float %5683, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5709 = select i1 %215, float 0.000000e+00, float %5679
  %5710 = select i1 %215, float %5708, float %5681
  %5711 = select i1 %215, float 0.000000e+00, float %5683
  %5712 = call float @dx.op.dot3.f32(i32 55, float %5703, float %5705, float %5707, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5713 = select i1 %215, float 0.000000e+00, float %5703
  %5714 = select i1 %215, float %5712, float %5705
  %5715 = select i1 %215, float 0.000000e+00, float %5707
  %5716 = fmul fast float %4419, %4419
  %5717 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5718 = fmul fast float %5457, 9.843750e-01
  %5719 = fmul fast float %5419, 9.843750e-01
  %5720 = fadd fast float %5718, 7.812500e-03
  %5721 = fadd fast float %5719, 7.812500e-03
  %5722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %5720, float %5721, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5723 = extractvalue %dx.types.ResRet.f32 %5722, 0
  %5724 = extractvalue %dx.types.ResRet.f32 %5722, 1
  %5725 = extractvalue %dx.types.ResRet.f32 %5722, 2
  %5726 = extractvalue %dx.types.ResRet.f32 %5722, 3
  %5727 = fsub fast float 1.000000e+00, %5717
  %5728 = fsub fast float %5725, %5723
  %5729 = fsub fast float %5726, %5724
  %5730 = fmul fast float %5728, %5727
  %5731 = fmul fast float %5729, %5727
  %5732 = fadd fast float %5730, %5723
  %5733 = fadd fast float %5731, %5724
  %5734 = fmul fast float %5732, %5410
  %5735 = fmul fast float %5732, %5411
  %5736 = fmul fast float %5732, %5455
  %5737 = fadd fast float %5734, %5733
  %5738 = fadd fast float %5735, %5733
  %5739 = fadd fast float %5736, %5733
  %5740 = fcmp fast ogt float %5069, 0.000000e+00
  br i1 %5740, label %5741, label %5767

; <label>:5741                                    ; preds = %5630
  %5742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5069, float %5457, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5743 = extractvalue %dx.types.ResRet.f32 %5742, 0
  %5744 = extractvalue %dx.types.ResRet.f32 %5742, 1
  %5745 = extractvalue %dx.types.ResRet.f32 %5742, 2
  %5746 = fadd fast float %5743, -5.000000e-01
  %5747 = fadd fast float %5744, -5.000000e-01
  %5748 = fadd fast float %5745, -5.000000e-01
  %5749 = fsub fast float 1.000000e+00, %5410
  %5750 = fsub fast float 1.000000e+00, %5411
  %5751 = fsub fast float 1.000000e+00, %5455
  %5752 = fmul fast float %5410, 4.000000e+00
  %5753 = fmul fast float %5752, %5749
  %5754 = fmul fast float %5753, %5746
  %5755 = fmul fast float %5411, 4.000000e+00
  %5756 = fmul fast float %5755, %5750
  %5757 = fmul fast float %5756, %5747
  %5758 = fmul fast float %5455, 4.000000e+00
  %5759 = fmul fast float %5758, %5751
  %5760 = fmul fast float %5759, %5748
  %5761 = fadd fast float %5754, %5737
  %5762 = fadd fast float %5757, %5738
  %5763 = fadd fast float %5760, %5739
  %5764 = call float @dx.op.unary.f32(i32 7, float %5761)  ; Saturate(value)
  %5765 = call float @dx.op.unary.f32(i32 7, float %5762)  ; Saturate(value)
  %5766 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  br label %5767

; <label>:5767                                    ; preds = %5741, %5630
  %5768 = phi float [ %5764, %5741 ], [ %5737, %5630 ]
  %5769 = phi float [ %5765, %5741 ], [ %5738, %5630 ]
  %5770 = phi float [ %5766, %5741 ], [ %5739, %5630 ]
  %5771 = call float @dx.op.binary.f32(i32 35, float %5769, float %5770)  ; FMax(a,b)
  %5772 = call float @dx.op.binary.f32(i32 35, float %5768, float %5771)  ; FMax(a,b)
  %5773 = fsub fast float 1.000000e+00, %5772
  %5774 = fmul fast float %5772, %5419
  %5775 = fadd fast float %5774, %5419
  %5776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5777 = extractvalue %dx.types.CBufRet.f32 %5776, 2
  %5778 = extractvalue %dx.types.CBufRet.f32 %5776, 3
  %5779 = fmul fast float %5775, %5777
  %5780 = fadd fast float %5779, %5778
  %5781 = call float @dx.op.unary.f32(i32 7, float %5780)  ; Saturate(value)
  %5782 = fsub fast float 1.000000e+00, %5478
  %5783 = fadd fast float %5782, %5781
  %5784 = call float @dx.op.unary.f32(i32 7, float %5783)  ; Saturate(value)
  %5785 = fcmp fast olt float %5784, 1.000000e+00
  br i1 %5785, label %5786, label %6234

; <label>:5786                                    ; preds = %5767
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 2
  %5789 = extractvalue %dx.types.CBufRet.f32 %5787, 3
  %5790 = fmul fast float %5788, %99
  %5791 = fmul fast float %5789, %100
  %5792 = fptoui float %5790 to i32
  %5793 = fptoui float %5791 to i32
  %5794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5795 = extractvalue %dx.types.CBufRet.f32 %5794, 0
  %5796 = extractvalue %dx.types.CBufRet.f32 %5794, 2
  %5797 = extractvalue %dx.types.CBufRet.f32 %5794, 3
  %5798 = fadd fast float %87, -4.000000e+00
  %5799 = call float @dx.op.binary.f32(i32 35, float %5798, float 0.000000e+00)  ; FMax(a,b)
  %5800 = fadd fast float %5799, %5795
  %5801 = fmul fast float %5800, %5796
  %5802 = call float @dx.op.unary.f32(i32 23, float %5801)  ; Log(value)
  %5803 = fmul fast float %5802, %5797
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 2
  %5806 = fmul fast float %5803, %5805
  %5807 = call float @dx.op.unary.f32(i32 7, float %5806)  ; Saturate(value)
  %5808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.i32 %5808, 1
  %5810 = add i32 %5809, -1
  %5811 = uitofp i32 %5809 to float
  %5812 = fmul fast float %5811, %5807
  %5813 = fptoui float %5812 to i32
  %5814 = call i32 @dx.op.binary.i32(i32 40, i32 %5813, i32 %5810)  ; UMin(a,b)
  %5815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.i32 %5815, 2
  %5817 = extractvalue %dx.types.CBufRet.i32 %5815, 3
  %5818 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5793, i32 %5816, i32 %5792)  ; UMad(a,b,c)
  %5819 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5814, i32 %5817, i32 %5818)  ; UMad(a,b,c)
  %5820 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %5821 = fptoui float %5820 to i32
  %5822 = lshr i32 %5821, 5
  %5823 = call i32 @dx.op.binary.i32(i32 40, i32 %5822, i32 8191)  ; UMin(a,b)
  br i1 false, label %5824, label %5831

; <label>:5824                                    ; preds = %5786
  %5825 = fadd fast float 0.000000e+00, %5465
  %5826 = call float @dx.op.dot3.f32(i32 55, float %5463, float %5464, float %5825, float %5463, float %5464, float %5825)  ; Dot3(ax,ay,az,bx,by,bz)
  %5827 = call float @dx.op.unary.f32(i32 25, float %5826)  ; Rsqrt(value)
  %5828 = fmul fast float %5827, %5463
  %5829 = fmul fast float %5827, %5464
  %5830 = fmul fast float %5825, %5827
  br label %5831

; <label>:5831                                    ; preds = %5824, %5786
  %5832 = phi float [ %5828, %5824 ], [ %5463, %5786 ]
  %5833 = phi float [ %5829, %5824 ], [ %5464, %5786 ]
  %5834 = phi float [ %5830, %5824 ], [ %5465, %5786 ]
  %5835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.i32 %5835, 2
  %5837 = add nsw i32 %5836, -1
  %5838 = call i32 @dx.op.binary.i32(i32 37, i32 %5837, i32 0)  ; IMax(a,b)
  %5839 = shl i32 %5823, 2
  %5840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5839, i32 undef)  ; BufferLoad(srv,index,wot)
  %5841 = extractvalue %dx.types.ResRet.i32 %5840, 0
  %5842 = lshr i32 %5841, 16
  %5843 = and i32 %5841, 65535
  %5844 = lshr i32 %5841, 21
  %5845 = lshr i32 %5843, 5
  %5846 = call i32 @dx.op.binary.i32(i32 40, i32 %5845, i32 %5838)  ; UMin(a,b)
  %5847 = icmp ugt i32 %5844, %5846
  br i1 %5847, label %6210, label %5848

; <label>:5848                                    ; preds = %5831
  br label %5849

; <label>:5849                                    ; preds = %6202, %5848
  %5850 = phi float [ %6203, %6202 ], [ 0.000000e+00, %5848 ]
  %5851 = phi float [ %6204, %6202 ], [ 0.000000e+00, %5848 ]
  %5852 = phi float [ %6205, %6202 ], [ 0.000000e+00, %5848 ]
  %5853 = phi float [ %6206, %6202 ], [ 1.000000e+00, %5848 ]
  %5854 = phi i32 [ %6207, %6202 ], [ %5844, %5848 ]
  %5855 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5856 = extractvalue %dx.types.CBufRet.i32 %5855, 2
  %5857 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5819, i32 %5856, i32 %5854)  ; UMad(a,b,c)
  %5858 = shl i32 %5857, 2
  %5859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5858, i32 undef)  ; BufferLoad(srv,index,wot)
  %5860 = extractvalue %dx.types.ResRet.i32 %5859, 0
  %5861 = shl i32 %5854, 5
  %5862 = sub nsw i32 %5842, %5861
  %5863 = call i32 @dx.op.binary.i32(i32 37, i32 %5862, i32 0)  ; IMax(a,b)
  %5864 = call i32 @dx.op.binary.i32(i32 38, i32 %5863, i32 31)  ; IMin(a,b)
  %5865 = sub nsw i32 1, %5842
  %5866 = add nsw i32 %5865, %5843
  %5867 = call i32 @dx.op.binary.i32(i32 37, i32 %5866, i32 0)  ; IMax(a,b)
  %5868 = call i32 @dx.op.binary.i32(i32 38, i32 %5867, i32 32)  ; IMin(a,b)
  %5869 = and i32 %5868, 31
  %5870 = shl i32 -1, %5869
  %5871 = xor i32 %5870, -1
  %5872 = and i32 %5864, 31
  %5873 = shl i32 %5871, %5872
  %5874 = icmp eq i32 %5868, 32
  %5875 = select i1 %5874, i32 -1, i32 %5873
  %5876 = and i32 %5875, %5860
  %5877 = icmp eq i32 %5876, 0
  br i1 %5877, label %6202, label %5878

; <label>:5878                                    ; preds = %5849
  br label %5879

; <label>:5879                                    ; preds = %5985, %5878
  %5880 = phi float [ %5986, %5985 ], [ %5850, %5878 ]
  %5881 = phi float [ %5987, %5985 ], [ %5851, %5878 ]
  %5882 = phi float [ %5988, %5985 ], [ %5852, %5878 ]
  %5883 = phi float [ %5989, %5985 ], [ %5853, %5878 ]
  %5884 = phi i32 [ %5889, %5985 ], [ %5876, %5878 ]
  %5885 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5884)  ; FirstbitLo(value)
  %5886 = add i32 %5885, %5861
  %5887 = and i32 %5885, 31
  %5888 = shl i32 1, %5887
  %5889 = xor i32 %5888, %5884
  %5890 = mul i32 %5886, 72
  %5891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5890, i32 undef)  ; BufferLoad(srv,index,wot)
  %5892 = extractvalue %dx.types.ResRet.f32 %5891, 0
  %5893 = extractvalue %dx.types.ResRet.f32 %5891, 1
  %5894 = extractvalue %dx.types.ResRet.f32 %5891, 2
  %5895 = add i32 %5890, 12
  %5896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %5895, i32 undef)  ; BufferLoad(srv,index,wot)
  %5897 = extractvalue %dx.types.ResRet.i32 %5896, 0
  %5898 = add i32 %5890, 16
  %5899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5898, i32 undef)  ; BufferLoad(srv,index,wot)
  %5900 = extractvalue %dx.types.ResRet.f32 %5899, 0
  %5901 = extractvalue %dx.types.ResRet.f32 %5899, 1
  %5902 = extractvalue %dx.types.ResRet.f32 %5899, 2
  %5903 = add i32 %5890, 28
  %5904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5903, i32 undef)  ; BufferLoad(srv,index,wot)
  %5905 = extractvalue %dx.types.ResRet.f32 %5904, 0
  %5906 = add i32 %5890, 32
  %5907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5906, i32 undef)  ; BufferLoad(srv,index,wot)
  %5908 = extractvalue %dx.types.ResRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.ResRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.ResRet.f32 %5907, 2
  %5911 = extractvalue %dx.types.ResRet.f32 %5907, 3
  %5912 = add i32 %5890, 48
  %5913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5912, i32 undef)  ; BufferLoad(srv,index,wot)
  %5914 = extractvalue %dx.types.ResRet.f32 %5913, 0
  %5915 = extractvalue %dx.types.ResRet.f32 %5913, 1
  %5916 = add i32 %5890, 56
  %5917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5916, i32 undef)  ; BufferLoad(srv,index,wot)
  %5918 = extractvalue %dx.types.ResRet.f32 %5917, 0
  %5919 = extractvalue %dx.types.ResRet.f32 %5917, 1
  %5920 = add i32 %5890, 64
  %5921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5920, i32 undef)  ; BufferLoad(srv,index,wot)
  %5922 = extractvalue %dx.types.ResRet.f32 %5921, 0
  %5923 = extractvalue %dx.types.ResRet.f32 %5921, 1
  %5924 = mul i32 %5886, 60
  %5925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5924, i32 undef)  ; BufferLoad(srv,index,wot)
  %5926 = extractvalue %dx.types.ResRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.ResRet.f32 %5925, 1
  %5928 = extractvalue %dx.types.ResRet.f32 %5925, 2
  %5929 = add i32 %5924, 12
  %5930 = add i32 %5924, 48
  %5931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5930, i32 undef)  ; BufferLoad(srv,index,wot)
  %5932 = extractvalue %dx.types.ResRet.f32 %5931, 0
  %5933 = extractvalue %dx.types.ResRet.f32 %5931, 1
  %5934 = extractvalue %dx.types.ResRet.f32 %5931, 2
  %5935 = and i32 %5897, 32767
  %5936 = bitcast float %5892 to i32
  %5937 = icmp eq i32 %5936, -1
  %5938 = bitcast float %5893 to i32
  %5939 = and i32 %5897, 32768
  %5940 = icmp ne i32 %5939, 0
  %5941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.f32 %5941, 0
  %5943 = extractvalue %dx.types.CBufRet.f32 %5941, 1
  %5944 = extractvalue %dx.types.CBufRet.f32 %5941, 2
  %5945 = fsub fast float %5926, %5942
  %5946 = fsub fast float %5927, %5943
  %5947 = fsub fast float %5928, %5944
  %5948 = fsub fast float %154, %5945
  %5949 = fsub fast float %155, %5946
  %5950 = fsub fast float %156, %5947
  %5951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5929, i32 undef)  ; BufferLoad(srv,index,wot)
  %5952 = extractvalue %dx.types.ResRet.f32 %5951, 0
  %5953 = extractvalue %dx.types.ResRet.f32 %5951, 1
  %5954 = extractvalue %dx.types.ResRet.f32 %5951, 2
  %5955 = call float @dx.op.dot3.f32(i32 55, float %5948, float %5949, float %5950, float %5952, float %5953, float %5954)  ; Dot3(ax,ay,az,bx,by,bz)
  %5956 = add i32 %5924, 24
  %5957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5956, i32 undef)  ; BufferLoad(srv,index,wot)
  %5958 = extractvalue %dx.types.ResRet.f32 %5957, 0
  %5959 = extractvalue %dx.types.ResRet.f32 %5957, 1
  %5960 = extractvalue %dx.types.ResRet.f32 %5957, 2
  %5961 = call float @dx.op.dot3.f32(i32 55, float %5948, float %5949, float %5950, float %5958, float %5959, float %5960)  ; Dot3(ax,ay,az,bx,by,bz)
  %5962 = add i32 %5924, 36
  %5963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5962, i32 undef)  ; BufferLoad(srv,index,wot)
  %5964 = extractvalue %dx.types.ResRet.f32 %5963, 0
  %5965 = extractvalue %dx.types.ResRet.f32 %5963, 1
  %5966 = extractvalue %dx.types.ResRet.f32 %5963, 2
  %5967 = call float @dx.op.dot3.f32(i32 55, float %5948, float %5949, float %5950, float %5964, float %5965, float %5966)  ; Dot3(ax,ay,az,bx,by,bz)
  %5968 = call float @dx.op.unary.f32(i32 6, float %5955)  ; FAbs(value)
  %5969 = call float @dx.op.unary.f32(i32 6, float %5961)  ; FAbs(value)
  %5970 = call float @dx.op.unary.f32(i32 6, float %5967)  ; FAbs(value)
  %5971 = fsub fast float %5932, %5968
  %5972 = fsub fast float %5933, %5969
  %5973 = fsub fast float %5934, %5970
  %5974 = fmul fast float %5971, %5900
  %5975 = fmul fast float %5972, %5901
  %5976 = fmul fast float %5973, %5902
  %5977 = call float @dx.op.binary.f32(i32 36, float %5975, float %5976)  ; FMin(a,b)
  %5978 = call float @dx.op.binary.f32(i32 36, float %5974, float %5977)  ; FMin(a,b)
  %5979 = call float @dx.op.unary.f32(i32 7, float %5978)  ; Saturate(value)
  %5980 = call float @dx.op.binary.f32(i32 36, float %5883, float %5979)  ; FMin(a,b)
  %5981 = uitofp i1 %5940 to float
  %5982 = fsub fast float 1.000000e+00, %5981
  %5983 = fmul fast float %5980, %5982
  %5984 = fcmp fast ogt float %5983, 0.000000e+00
  br i1 %5984, label %5991, label %5985

; <label>:5985                                    ; preds = %6133, %5879
  %5986 = phi float [ %6197, %6133 ], [ %5880, %5879 ]
  %5987 = phi float [ %6198, %6133 ], [ %5881, %5879 ]
  %5988 = phi float [ %6199, %6133 ], [ %5882, %5879 ]
  %5989 = phi float [ %6200, %6133 ], [ %5883, %5879 ]
  %5990 = icmp eq i32 %5884, %5888
  br i1 %5990, label %6201, label %5879

; <label>:5991                                    ; preds = %5879
  br i1 %5937, label %6049, label %5992

; <label>:5992                                    ; preds = %5991
  %5993 = fsub fast float -0.000000e+00, %5952
  %5994 = fsub fast float -0.000000e+00, %5953
  %5995 = fsub fast float -0.000000e+00, %5954
  %5996 = call float @dx.op.dot3.f32(i32 55, float %5832, float %5833, float %5834, float %5993, float %5994, float %5995)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = fsub fast float -0.000000e+00, %5996
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5948, float %5949, float %5950, float %5993, float %5994, float %5995)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = fadd fast float %5998, %5915
  %6000 = fadd fast float %5914, %5998
  %6001 = fsub fast float -0.000000e+00, %6000
  %6002 = fcmp ogt float %5996, -0.000000e+00
  %6003 = select i1 %6002, float %6001, float %5999
  %6004 = call float @dx.op.unary.f32(i32 6, float %5997)  ; FAbs(value)
  %6005 = fdiv fast float 1.000000e+00, %6004
  %6006 = fmul fast float %6003, %6005
  %6007 = call float @dx.op.binary.f32(i32 35, float %6006, float 0.000000e+00)  ; FMax(a,b)
  %6008 = fsub fast float -0.000000e+00, %5958
  %6009 = fsub fast float -0.000000e+00, %5959
  %6010 = fsub fast float -0.000000e+00, %5960
  %6011 = call float @dx.op.dot3.f32(i32 55, float %5832, float %5833, float %5834, float %6008, float %6009, float %6010)  ; Dot3(ax,ay,az,bx,by,bz)
  %6012 = fsub fast float -0.000000e+00, %6011
  %6013 = call float @dx.op.dot3.f32(i32 55, float %5948, float %5949, float %5950, float %6008, float %6009, float %6010)  ; Dot3(ax,ay,az,bx,by,bz)
  %6014 = fadd fast float %6013, %5919
  %6015 = fadd fast float %5918, %6013
  %6016 = fsub fast float -0.000000e+00, %6015
  %6017 = fcmp ogt float %6011, -0.000000e+00
  %6018 = select i1 %6017, float %6016, float %6014
  %6019 = call float @dx.op.unary.f32(i32 6, float %6012)  ; FAbs(value)
  %6020 = fdiv fast float 1.000000e+00, %6019
  %6021 = fmul fast float %6018, %6020
  %6022 = call float @dx.op.binary.f32(i32 35, float %6021, float 0.000000e+00)  ; FMax(a,b)
  %6023 = fsub fast float -0.000000e+00, %5964
  %6024 = fsub fast float -0.000000e+00, %5965
  %6025 = fsub fast float -0.000000e+00, %5966
  %6026 = call float @dx.op.dot3.f32(i32 55, float %5832, float %5833, float %5834, float %6023, float %6024, float %6025)  ; Dot3(ax,ay,az,bx,by,bz)
  %6027 = fsub fast float -0.000000e+00, %6026
  %6028 = call float @dx.op.dot3.f32(i32 55, float %5948, float %5949, float %5950, float %6023, float %6024, float %6025)  ; Dot3(ax,ay,az,bx,by,bz)
  %6029 = fadd fast float %6028, %5923
  %6030 = fadd fast float %5922, %6028
  %6031 = fsub fast float -0.000000e+00, %6030
  %6032 = fcmp ogt float %6026, -0.000000e+00
  %6033 = select i1 %6032, float %6031, float %6029
  %6034 = call float @dx.op.unary.f32(i32 6, float %6027)  ; FAbs(value)
  %6035 = fdiv fast float 1.000000e+00, %6034
  %6036 = fmul fast float %6033, %6035
  %6037 = call float @dx.op.binary.f32(i32 35, float %6036, float 0.000000e+00)  ; FMax(a,b)
  %6038 = call float @dx.op.binary.f32(i32 36, float %6022, float %6037)  ; FMin(a,b)
  %6039 = call float @dx.op.binary.f32(i32 36, float %6007, float %6038)  ; FMin(a,b)
  %6040 = fmul fast float %6039, %5832
  %6041 = fmul fast float %6039, %5833
  %6042 = fmul fast float %6039, %5834
  %6043 = fadd fast float %6040, %154
  %6044 = fadd fast float %6041, %155
  %6045 = fadd fast float %6042, %156
  %6046 = fsub fast float %6043, %5892
  %6047 = fsub fast float %6044, %5893
  %6048 = fsub fast float %6045, %5894
  br label %6056

; <label>:6049                                    ; preds = %5991
  %6050 = fmul fast float %5832, 8.096000e+03
  %6051 = fmul fast float %5833, 8.096000e+03
  %6052 = fmul fast float %5834, 8.096000e+03
  %6053 = fadd fast float %6050, %154
  %6054 = fadd fast float %6051, %155
  %6055 = fadd fast float %6052, %156
  br label %6056

; <label>:6056                                    ; preds = %6049, %5992
  %6057 = phi float [ %5832, %6049 ], [ %6046, %5992 ]
  %6058 = phi float [ %5833, %6049 ], [ %6047, %5992 ]
  %6059 = phi float [ %5834, %6049 ], [ %6048, %5992 ]
  %6060 = phi float [ %6053, %6049 ], [ %6043, %5992 ]
  %6061 = phi float [ %6054, %6049 ], [ %6044, %5992 ]
  %6062 = phi float [ %6055, %6049 ], [ %6045, %5992 ]
  %6063 = fcmp fast olt float %5911, 1.000000e+00
  br i1 %6063, label %6064, label %6095, !dx.controlflow.hints !87

; <label>:6064                                    ; preds = %6056
  %6065 = fmul fast float %6059, %5909
  %6066 = fmul fast float %6058, %5910
  %6067 = fsub fast float %6065, %6066
  %6068 = fmul fast float %6057, %5910
  %6069 = fmul fast float %6059, %5908
  %6070 = fsub fast float %6068, %6069
  %6071 = fmul fast float %6058, %5908
  %6072 = fmul fast float %6057, %5909
  %6073 = fsub fast float %6071, %6072
  %6074 = fmul fast float %6067, 2.000000e+00
  %6075 = fmul fast float %6070, 2.000000e+00
  %6076 = fmul fast float %6073, 2.000000e+00
  %6077 = fmul fast float %6074, %5911
  %6078 = fmul fast float %6075, %5911
  %6079 = fmul fast float %6076, %5911
  %6080 = fmul fast float %6076, %5909
  %6081 = fmul fast float %6075, %5910
  %6082 = fmul fast float %6074, %5910
  %6083 = fmul fast float %6076, %5908
  %6084 = fmul fast float %6075, %5908
  %6085 = fmul fast float %6074, %5909
  %6086 = fadd fast float %6080, %6057
  %6087 = fadd fast float %6086, %6077
  %6088 = fsub fast float %6087, %6081
  %6089 = fsub fast float %6058, %6083
  %6090 = fadd fast float %6089, %6078
  %6091 = fadd fast float %6090, %6082
  %6092 = fadd fast float %6079, %6059
  %6093 = fsub fast float %6092, %6085
  %6094 = fadd fast float %6093, %6084
  br label %6095

; <label>:6095                                    ; preds = %6064, %6056
  %6096 = phi float [ %6088, %6064 ], [ %6057, %6056 ]
  %6097 = phi float [ %6091, %6064 ], [ %6058, %6056 ]
  %6098 = phi float [ %6094, %6064 ], [ %6059, %6056 ]
  br i1 %5937, label %6130, label %6099

; <label>:6099                                    ; preds = %6095
  %6100 = fmul fast float %5419, 0x400187C840000000
  %6101 = fadd fast float %6100, 0xC00EFC2120000000
  %6102 = fmul fast float %6101, %5419
  %6103 = fadd fast float %6102, 0x3FE5D16340000000
  %6104 = fmul fast float %6103, %5419
  %6105 = fadd fast float %6104, 1.000000e+00
  %6106 = call float @dx.op.unary.f32(i32 7, float %6105)  ; Saturate(value)
  %6107 = fsub fast float %6060, %154
  %6108 = fsub fast float %6061, %155
  %6109 = fsub fast float %6062, %156
  %6110 = fsub fast float %6060, %5892
  %6111 = fsub fast float %6061, %5893
  %6112 = fsub fast float %6062, %5894
  %6113 = call float @dx.op.dot3.f32(i32 55, float %6107, float %6108, float %6109, float %6107, float %6108, float %6109)  ; Dot3(ax,ay,az,bx,by,bz)
  %6114 = call float @dx.op.dot3.f32(i32 55, float %6110, float %6111, float %6112, float %6110, float %6111, float %6112)  ; Dot3(ax,ay,az,bx,by,bz)
  %6115 = fadd fast float %6114, 0x3EE4F8B580000000
  %6116 = fdiv fast float %6113, %6115
  %6117 = bitcast float %6116 to i32
  %6118 = ashr i32 %6117, 1
  %6119 = add nsw i32 %6118, 532487669
  %6120 = bitcast i32 %6119 to float
  %6121 = fmul fast float %6120, %6106
  %6122 = call float @dx.op.unary.f32(i32 7, float %6121)  ; Saturate(value)
  %6123 = fmul fast float %6122, 0x4009981AE0000000
  %6124 = fsub fast float 0x40111BBD80000000, %6123
  %6125 = fmul fast float %6124, %6122
  %6126 = fadd fast float %6125, 0xC0009F6020000000
  %6127 = fmul fast float %6126, %6122
  %6128 = fadd fast float %6127, 1.000000e+00
  %6129 = call float @dx.op.unary.f32(i32 7, float %6128)  ; Saturate(value)
  br label %6133

; <label>:6130                                    ; preds = %6095
  %6131 = icmp ne i32 %5938, -1
  %6132 = zext i1 %6131 to i32
  br label %6133

; <label>:6133                                    ; preds = %6130, %6099
  %6134 = phi float [ %5419, %6130 ], [ %6129, %6099 ]
  %6135 = phi i32 [ %6132, %6130 ], [ 0, %6099 ]
  %6136 = fmul float %6134, 5.000000e+00
  %6137 = fsub float 5.000000e+00, %6136
  %6138 = icmp ne i32 %6135, 0
  %6139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6140 = extractvalue %dx.types.CBufRet.f32 %6139, 3
  %6141 = fadd fast float %6140, %6137
  %6142 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6141)  ; FMax(a,b)
  %6143 = call float @dx.op.unary.f32(i32 6, float %6096)  ; FAbs(value)
  %6144 = call float @dx.op.unary.f32(i32 6, float %6097)  ; FAbs(value)
  %6145 = fadd fast float %6144, %6143
  %6146 = call float @dx.op.unary.f32(i32 6, float %6098)  ; FAbs(value)
  %6147 = fadd fast float %6145, %6146
  %6148 = fcmp fast oeq float %6147, 0.000000e+00
  %6149 = fdiv fast float 1.000000e+00, %6147
  %6150 = select i1 %6148, float 1.000000e+00, float %6149
  %6151 = fmul fast float %6150, %6096
  %6152 = fmul fast float %6150, %6097
  %6153 = call float @dx.op.unary.f32(i32 6, float %6152)  ; FAbs(value)
  %6154 = call float @dx.op.unary.f32(i32 6, float %6151)  ; FAbs(value)
  %6155 = fsub fast float 1.000000e+00, %6153
  %6156 = fsub fast float 1.000000e+00, %6154
  %6157 = fcmp fast oge float %6151, 0.000000e+00
  %6158 = fcmp fast oge float %6152, 0.000000e+00
  %6159 = select i1 %6157, float 1.000000e+00, float -1.000000e+00
  %6160 = select i1 %6158, float 1.000000e+00, float -1.000000e+00
  %6161 = fcmp fast ole float %6098, 0.000000e+00
  %6162 = fmul fast float %6159, %6155
  %6163 = fmul fast float %6160, %6156
  %6164 = select i1 %6161, float %6162, float %6151
  %6165 = select i1 %6161, float %6163, float %6152
  %6166 = fmul fast float %6164, 5.000000e-01
  %6167 = fmul fast float %6165, 5.000000e-01
  %6168 = fadd fast float %6166, 5.000000e-01
  %6169 = fadd fast float %6167, 5.000000e-01
  %6170 = uitofp i32 %5935 to float
  %6171 = call float @dx.op.binary.f32(i32 36, float %6142, float 3.000000e+00)  ; FMin(a,b)
  %6172 = fadd fast float %6171, 2.000000e+00
  %6173 = call float @dx.op.unary.f32(i32 21, float %6172)  ; Exp(value)
  %6174 = extractvalue %dx.types.CBufRet.f32 %6139, 1
  %6175 = fmul fast float %6174, %6173
  %6176 = fmul fast float %6175, 2.000000e+00
  %6177 = fsub fast float 1.000000e+00, %6176
  %6178 = fmul fast float %6168, %6177
  %6179 = fmul fast float %6169, %6177
  %6180 = fadd fast float %6178, %6175
  %6181 = fadd fast float %6179, %6175
  %6182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %6180, float %6181, float %6170, float undef, i32 0, i32 0, i32 undef, float %6142)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6183 = extractvalue %dx.types.ResRet.f32 %6182, 0
  %6184 = extractvalue %dx.types.ResRet.f32 %6182, 1
  %6185 = extractvalue %dx.types.ResRet.f32 %6182, 2
  %6186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.f32 %6186, 3
  %6188 = fmul fast float %6187, %5905
  %6189 = call float @dx.op.binary.f32(i32 36, float %5483, float %6188)  ; FMin(a,b)
  %6190 = select i1 %6138, float %6189, float %6188
  %6191 = fmul fast float %6183, %5983
  %6192 = fmul fast float %6191, %6190
  %6193 = fmul fast float %6184, %5983
  %6194 = fmul fast float %6193, %6190
  %6195 = fmul fast float %6185, %5983
  %6196 = fmul fast float %6195, %6190
  %6197 = fadd fast float %6192, %5880
  %6198 = fadd fast float %6194, %5881
  %6199 = fadd fast float %6196, %5882
  %6200 = fsub fast float %5883, %5983
  br label %5985

; <label>:6201                                    ; preds = %5985
  br label %6202

; <label>:6202                                    ; preds = %6201, %5849
  %6203 = phi float [ %5850, %5849 ], [ %5986, %6201 ]
  %6204 = phi float [ %5851, %5849 ], [ %5987, %6201 ]
  %6205 = phi float [ %5852, %5849 ], [ %5988, %6201 ]
  %6206 = phi float [ %5853, %5849 ], [ %5989, %6201 ]
  %6207 = add i32 %5854, 1
  %6208 = icmp ugt i32 %6207, %5846
  br i1 %6208, label %6209, label %5849, !llvm.loop !88

; <label>:6209                                    ; preds = %6202
  br label %6210

; <label>:6210                                    ; preds = %6209, %5831
  %6211 = phi float [ 0.000000e+00, %5831 ], [ %6203, %6209 ]
  %6212 = phi float [ 0.000000e+00, %5831 ], [ %6204, %6209 ]
  %6213 = phi float [ 0.000000e+00, %5831 ], [ %6205, %6209 ]
  %6214 = call float @dx.op.dot3.f32(i32 55, float %6211, float %6212, float %6213, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6215 = select i1 %215, float 0.000000e+00, float %6211
  %6216 = select i1 %215, float %6214, float %6212
  %6217 = select i1 %215, float 0.000000e+00, float %6213
  %6218 = fcmp fast olt float %5784, 0.000000e+00
  %6219 = call float @dx.op.unary.f32(i32 6, float %5784)  ; FAbs(value)
  %6220 = fmul fast float %6219, %5713
  %6221 = fmul fast float %6219, %5714
  %6222 = fmul fast float %6219, %5715
  %6223 = select i1 %6218, float %5713, float %6220
  %6224 = select i1 %6218, float %5714, float %6221
  %6225 = select i1 %6218, float %5715, float %6222
  %6226 = fsub fast float 1.000000e+00, %6219
  %6227 = call float @dx.op.unary.f32(i32 7, float %6226)  ; Saturate(value)
  %6228 = fmul fast float %6227, %6215
  %6229 = fmul fast float %6227, %6216
  %6230 = fmul fast float %6227, %6217
  %6231 = fadd fast float %6223, %6228
  %6232 = fadd fast float %6224, %6229
  %6233 = fadd fast float %6225, %6230
  br label %6234

; <label>:6234                                    ; preds = %6210, %5767
  %6235 = phi float [ %5713, %5767 ], [ %6231, %6210 ]
  %6236 = phi float [ %5714, %5767 ], [ %6232, %6210 ]
  %6237 = phi float [ %5715, %5767 ], [ %6233, %6210 ]
  %6238 = fmul fast float %5773, %5709
  %6239 = fmul fast float %5773, %5710
  %6240 = fmul fast float %5773, %5711
  %6241 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5417, float %5418, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6242 = fcmp fast ogt float %6241, 0x3E7FF19E20000000
  %6243 = fdiv fast float 1.000000e+00, %6241
  %6244 = select i1 %6242, float %6243, float 0.000000e+00
  %6245 = fmul fast float %6244, %5416
  %6246 = fmul fast float %6244, %5417
  %6247 = fmul fast float %6244, %5418
  %6248 = fadd fast float %6245, -1.000000e+00
  %6249 = fadd fast float %6246, -1.000000e+00
  %6250 = fadd fast float %6247, -1.000000e+00
  %6251 = fmul fast float %6248, 5.000000e-01
  %6252 = fmul fast float %6249, 5.000000e-01
  %6253 = fmul fast float %6250, 5.000000e-01
  %6254 = fadd fast float %6251, 1.000000e+00
  %6255 = fadd fast float %6252, 1.000000e+00
  %6256 = fadd fast float %6253, 1.000000e+00
  %6257 = call float @dx.op.binary.f32(i32 35, float %5457, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6258 = fdiv fast float %4419, %6257
  %6259 = fcmp fast olt float %5119, 1.270000e+02
  %6260 = fcmp fast olt float %5120, 1.270000e+02
  %6261 = fcmp fast olt float %5121, 1.270000e+02
  %6262 = fmul fast float %5119, 0xBFF7154760000000
  %6263 = fmul fast float %6262, %6258
  %6264 = fmul fast float %5120, 0xBFF7154760000000
  %6265 = fmul fast float %6264, %6258
  %6266 = fmul fast float %5121, 0xBFF7154760000000
  %6267 = fmul fast float %6266, %6258
  %6268 = call float @dx.op.unary.f32(i32 21, float %6263)  ; Exp(value)
  %6269 = call float @dx.op.unary.f32(i32 21, float %6265)  ; Exp(value)
  %6270 = call float @dx.op.unary.f32(i32 21, float %6267)  ; Exp(value)
  %6271 = call float @dx.op.unary.f32(i32 7, float %6268)  ; Saturate(value)
  %6272 = call float @dx.op.unary.f32(i32 7, float %6269)  ; Saturate(value)
  %6273 = call float @dx.op.unary.f32(i32 7, float %6270)  ; Saturate(value)
  %6274 = select i1 %6259, float %6271, float 0.000000e+00
  %6275 = select i1 %6260, float %6272, float 0.000000e+00
  %6276 = select i1 %6261, float %6273, float 0.000000e+00
  %6277 = fmul fast float %6274, %5773
  %6278 = fmul fast float %6275, %5773
  %6279 = fmul fast float %6276, %5773
  %6280 = fadd fast float %6277, -1.000000e+00
  %6281 = fadd fast float %6278, -1.000000e+00
  %6282 = fadd fast float %6279, -1.000000e+00
  %6283 = fmul fast float %6280, %5066
  %6284 = fmul fast float %6281, %5066
  %6285 = fmul fast float %6282, %5066
  %6286 = fadd fast float %6283, 1.000000e+00
  %6287 = fadd fast float %6284, 1.000000e+00
  %6288 = fadd fast float %6285, 1.000000e+00
  %6289 = fmul fast float %5411, 0x401CF23780000000
  %6290 = fadd fast float %6289, 0x3FF32641C0000000
  %6291 = fdiv fast float 1.000000e+00, %6290
  %6292 = call float @dx.op.dot3.f32(i32 55, float %5406, float %5405, float %5404, float %5413, float %5414, float %5415)  ; Dot3(ax,ay,az,bx,by,bz)
  %6293 = fmul fast float %6291, %6291
  %6294 = fmul fast float %6292, %6292
  %6295 = fsub fast float 1.000000e+00, %6294
  %6296 = fmul fast float %6293, %6295
  %6297 = fsub fast float 1.000000e+00, %6296
  %6298 = fcmp fast oge float %6297, 0.000000e+00
  %6299 = fmul fast float %6291, %5406
  %6300 = fmul fast float %6291, %5405
  %6301 = fmul fast float %6291, %5404
  %6302 = call float @dx.op.unary.f32(i32 24, float %6297)  ; Sqrt(value)
  %6303 = fmul fast float %6292, %6291
  %6304 = fadd fast float %6303, %6302
  %6305 = fmul fast float %6304, %5413
  %6306 = fmul fast float %6304, %5414
  %6307 = fmul fast float %6304, %5415
  %6308 = fsub fast float %6299, %6305
  %6309 = fsub fast float %6300, %6306
  %6310 = fsub fast float %6301, %6307
  %6311 = select i1 %6298, float %6308, float 0.000000e+00
  %6312 = select i1 %6298, float %6309, float 0.000000e+00
  %6313 = select i1 %6298, float %6310, float 0.000000e+00
  %6314 = fmul fast float %6311, %4419
  %6315 = fmul fast float %6312, %4419
  %6316 = fmul fast float %6313, %4419
  %6317 = fadd fast float %6314, %5452
  %6318 = fadd fast float %6315, %5453
  %6319 = fadd fast float %6316, %5454
  %6320 = call float @dx.op.dot3.f32(i32 55, float %5137, float %5138, float %5139, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6321 = fmul fast float %5472, %5066
  %6322 = fsub fast float 1.000000e+00, %6321
  %6323 = call float @dx.op.unary.f32(i32 7, float %6322)  ; Saturate(value)
  %6324 = fsub fast float 1.000000e+00, %6323
  %6325 = fmul fast float %5411, 0x4012D0A400000000
  %6326 = fadd fast float %6325, 0x3FDB6377A0000000
  %6327 = fmul fast float %6324, %6326
  %6328 = fadd fast float %6327, %6320
  %6329 = call float @dx.op.unary.f32(i32 7, float %6328)  ; Saturate(value)
  %6330 = fmul fast float %6235, %5768
  %6331 = fmul fast float %6236, %5769
  %6332 = fmul fast float %6237, %5770
  %6333 = fsub fast float 1.000000e+00, %5457
  %6334 = bitcast float %6333 to i32
  %6335 = sitofp i32 %6334 to float
  %6336 = fmul fast float %6335, 5.000000e+00
  %6337 = fadd fast float %6336, 0xC1EFBF8940000000
  %6338 = fptosi float %6337 to i32
  %6339 = bitcast i32 %6338 to float
  %6340 = fmul fast float %6339, %5070
  %6341 = fmul fast float %5709, %6340
  %6342 = fmul fast float %6341, %5773
  %6343 = fmul fast float %6342, %6254
  %6344 = fmul fast float %5710, %6340
  %6345 = fmul fast float %6344, %5773
  %6346 = fmul fast float %6345, %6255
  %6347 = fmul fast float %5711, %6340
  %6348 = fmul fast float %6347, %5773
  %6349 = fmul fast float %6348, %6256
  %6350 = fmul fast float %6238, %5066
  %6351 = fmul fast float %6239, %5066
  %6352 = fmul fast float %6240, %5066
  %6353 = fsub fast float 1.000000e+00, %6329
  %6354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %6355 = extractvalue %dx.types.CBufRet.f32 %6354, 0
  %6356 = extractvalue %dx.types.CBufRet.f32 %6354, 1
  %6357 = extractvalue %dx.types.CBufRet.f32 %6354, 2
  %6358 = extractvalue %dx.types.CBufRet.f32 %6354, 3
  %6359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %6360 = extractvalue %dx.types.CBufRet.f32 %6359, 0
  %6361 = extractvalue %dx.types.CBufRet.f32 %6359, 1
  %6362 = extractvalue %dx.types.CBufRet.f32 %6359, 2
  %6363 = extractvalue %dx.types.CBufRet.f32 %6359, 3
  %6364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %6365 = extractvalue %dx.types.CBufRet.f32 %6364, 0
  %6366 = extractvalue %dx.types.CBufRet.f32 %6364, 1
  %6367 = extractvalue %dx.types.CBufRet.f32 %6364, 2
  %6368 = extractvalue %dx.types.CBufRet.f32 %6364, 3
  %6369 = fmul fast float %6317, %6355
  %6370 = call float @dx.op.tertiary.f32(i32 46, float %6318, float %6356, float %6369)  ; FMad(a,b,c)
  %6371 = call float @dx.op.tertiary.f32(i32 46, float %6319, float %6357, float %6370)  ; FMad(a,b,c)
  %6372 = fadd fast float %6371, %6358
  %6373 = fmul fast float %6317, %6360
  %6374 = call float @dx.op.tertiary.f32(i32 46, float %6318, float %6361, float %6373)  ; FMad(a,b,c)
  %6375 = call float @dx.op.tertiary.f32(i32 46, float %6319, float %6362, float %6374)  ; FMad(a,b,c)
  %6376 = fadd fast float %6375, %6363
  %6377 = fmul fast float %6317, %6365
  %6378 = call float @dx.op.tertiary.f32(i32 46, float %6318, float %6366, float %6377)  ; FMad(a,b,c)
  %6379 = call float @dx.op.tertiary.f32(i32 46, float %6319, float %6367, float %6378)  ; FMad(a,b,c)
  %6380 = fadd fast float %6379, %6368
  %6381 = fdiv fast float %6372, %6380
  %6382 = fdiv fast float %6376, %6380
  %6383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.f32 %6383, 0
  %6385 = extractvalue %dx.types.CBufRet.f32 %6383, 1
  %6386 = fmul fast float %6384, %6381
  %6387 = fmul fast float %6385, %6382
  %6388 = extractvalue %dx.types.CBufRet.f32 %6383, 2
  %6389 = extractvalue %dx.types.CBufRet.f32 %6383, 3
  %6390 = fadd fast float %6386, %6388
  %6391 = fadd fast float %6387, %6389
  %6392 = call float @dx.op.unary.f32(i32 7, float %6390)  ; Saturate(value)
  %6393 = call float @dx.op.unary.f32(i32 7, float %6391)  ; Saturate(value)
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6397 = fmul fast float %6395, %6392
  %6398 = fmul fast float %6396, %6393
  %6399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6400 = extractvalue %dx.types.CBufRet.f32 %6399, 1
  %6401 = extractvalue %dx.types.CBufRet.f32 %6399, 2
  %6402 = fsub fast float %6400, %6401
  %6403 = fmul fast float %6402, %6353
  %6404 = fadd fast float %6403, %6401
  %6405 = fmul fast float %228, 2.000000e+00
  %6406 = fmul fast float %229, 2.000000e+00
  %6407 = fadd fast float %6405, -1.000000e+00
  %6408 = fadd fast float %6406, -1.000000e+00
  %6409 = fmul fast float %6404, %6407
  %6410 = fmul fast float %6404, %6408
  %6411 = fadd fast float %6409, %6397
  %6412 = fadd fast float %6410, %6398
  %6413 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6414 = extractvalue %dx.types.CBufRet.f32 %6394, 3
  %6415 = fmul fast float %6411, %6413
  %6416 = fmul fast float %6412, %6414
  %6417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %45, float %6415, float %6416, float undef, float undef, i32 0, i32 0, i32 undef, float 2.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6418 = extractvalue %dx.types.ResRet.f32 %6417, 0
  %6419 = fcmp fast ogt float %6418, -1.000000e+00
  %6420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %6421 = extractvalue %dx.types.CBufRet.f32 %6420, 1
  %6422 = select i1 %6419, float %6421, float 1.000000e+00
  %6423 = fadd fast float %6418, 1.000000e+00
  %6424 = fmul fast float %6422, %6423
  %6425 = call float @dx.op.unary.f32(i32 6, float %6424)  ; FAbs(value)
  %6426 = fsub fast float %6425, %6380
  %6427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.f32 %6427, 2
  %6429 = fmul fast float %6428, %6425
  %6430 = fdiv fast float 1.600000e+02, %6429
  %6431 = fmul fast float %6329, %6329
  %6432 = fmul fast float %6431, 0xBFB5B17960000000
  %6433 = fmul fast float %6432, %6426
  %6434 = fmul fast float %6433, %6430
  %6435 = call float @dx.op.unary.f32(i32 21, float %6434)  ; Exp(value)
  %6436 = fmul fast float %6435, 0x3FF04B2960000000
  %6437 = fsub fast float 0x3FF04B2960000000, %6436
  %6438 = call float @dx.op.unary.f32(i32 7, float %6437)  ; Saturate(value)
  %6439 = fmul fast float %6438, 4.000000e+00
  %6440 = fadd fast float %228, -5.000000e-01
  %6441 = fadd fast float %229, -5.000000e-01
  %6442 = fmul fast float %6438, 0x3FBEB851E0000000
  %6443 = call float @dx.op.unary.f32(i32 7, float %6442)  ; Saturate(value)
  %6444 = fmul fast float %6443, %6440
  %6445 = fmul fast float %6443, %6441
  %6446 = fadd fast float %6444, %6390
  %6447 = fadd fast float %6445, %6391
  %6448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 212)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.i32 %6448, 0
  %6450 = icmp eq i32 %6449, 0
  br i1 %6450, label %6456, label %6451, !dx.controlflow.hints !90

; <label>:6451                                    ; preds = %6234
  %6452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %40, float %6446, float %6447, float undef, float undef, i32 0, i32 0, i32 undef, float %6439)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6453 = extractvalue %dx.types.ResRet.f32 %6452, 0
  %6454 = extractvalue %dx.types.ResRet.f32 %6452, 1
  %6455 = extractvalue %dx.types.ResRet.f32 %6452, 2
  br label %6461

; <label>:6456                                    ; preds = %6234
  %6457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %42, float %6446, float %6447, float undef, float undef, i32 0, i32 0, i32 undef, float %6439)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6458 = extractvalue %dx.types.ResRet.f32 %6457, 0
  %6459 = extractvalue %dx.types.ResRet.f32 %6457, 1
  %6460 = extractvalue %dx.types.ResRet.f32 %6457, 2
  br label %6461

; <label>:6461                                    ; preds = %6456, %6451
  %6462 = phi float [ %6453, %6451 ], [ %6458, %6456 ]
  %6463 = phi float [ %6454, %6451 ], [ %6459, %6456 ]
  %6464 = phi float [ %6455, %6451 ], [ %6460, %6456 ]
  %6465 = select i1 %215, float 0.000000e+00, float %6463
  %6466 = select i1 %215, float 0.000000e+00, float %6464
  %6467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6468 = extractvalue %dx.types.CBufRet.f32 %6467, 1
  %6469 = fmul fast float %6462, %6286
  %6470 = fmul fast float %6469, %6468
  %6471 = fmul fast float %6465, %6287
  %6472 = fmul fast float %6471, %6468
  %6473 = fmul fast float %6466, %6288
  %6474 = fmul fast float %6473, %6468
  %6475 = fadd fast float %6330, %5053
  %6476 = fadd fast float %6475, %6343
  %6477 = fadd fast float %6476, %6470
  %6478 = fmul fast float %6477, %5066
  %6479 = fadd fast float %6331, %5054
  %6480 = fadd fast float %6479, %6346
  %6481 = fadd fast float %6480, %6472
  %6482 = fmul fast float %6481, %5066
  %6483 = fadd fast float %6332, %5055
  %6484 = fadd fast float %6483, %6349
  %6485 = fadd fast float %6484, %6474
  %6486 = fmul fast float %6485, %5066
  %6487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6488 = extractvalue %dx.types.CBufRet.f32 %6487, 3
  %6489 = fcmp fast oeq float %6488, 0.000000e+00
  br i1 %6489, label %8093, label %6490

; <label>:6490                                    ; preds = %6461
  %6491 = extractvalue %dx.types.CBufRet.f32 %6487, 0
  %6492 = extractvalue %dx.types.CBufRet.f32 %6487, 1
  %6493 = extractvalue %dx.types.CBufRet.f32 %6487, 2
  %6494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6495 = extractvalue %dx.types.CBufRet.f32 %6494, 0
  %6496 = extractvalue %dx.types.CBufRet.f32 %6494, 1
  %6497 = extractvalue %dx.types.CBufRet.f32 %6494, 2
  %6498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6499 = extractvalue %dx.types.CBufRet.f32 %6498, 0
  %6500 = extractvalue %dx.types.CBufRet.f32 %6498, 1
  %6501 = call float @dx.op.dot3.f32(i32 55, float %6495, float %6496, float %6497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6502 = select i1 %215, float %6499, float %6495
  %6503 = select i1 %215, float %6501, float %6496
  %6504 = select i1 %215, float %6500, float %6497
  %6505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6505, 2
  %6507 = fmul fast float %6506, %106
  %6508 = fmul fast float %6506, %107
  %6509 = fmul fast float %6506, %108
  %6510 = fadd fast float %6507, %154
  %6511 = fadd fast float %6508, %155
  %6512 = fadd fast float %6509, %156
  %6513 = fcmp fast olt float %6488, 0.000000e+00
  br i1 %6513, label %7609, label %6514

; <label>:6514                                    ; preds = %6490
  %6515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6516 = extractvalue %dx.types.CBufRet.f32 %6515, 0
  %6517 = extractvalue %dx.types.CBufRet.f32 %6515, 1
  %6518 = extractvalue %dx.types.CBufRet.f32 %6515, 2
  %6519 = extractvalue %dx.types.CBufRet.f32 %6515, 3
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 0
  %6522 = extractvalue %dx.types.CBufRet.f32 %6520, 1
  %6523 = extractvalue %dx.types.CBufRet.f32 %6520, 2
  %6524 = extractvalue %dx.types.CBufRet.f32 %6520, 3
  %6525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6526 = extractvalue %dx.types.CBufRet.f32 %6525, 0
  %6527 = extractvalue %dx.types.CBufRet.f32 %6525, 1
  %6528 = extractvalue %dx.types.CBufRet.f32 %6525, 2
  %6529 = extractvalue %dx.types.CBufRet.f32 %6525, 3
  %6530 = fmul fast float %6516, %6510
  %6531 = call float @dx.op.tertiary.f32(i32 46, float %6511, float %6517, float %6530)  ; FMad(a,b,c)
  %6532 = call float @dx.op.tertiary.f32(i32 46, float %6512, float %6518, float %6531)  ; FMad(a,b,c)
  %6533 = fadd fast float %6532, %6519
  %6534 = fmul fast float %6521, %6510
  %6535 = call float @dx.op.tertiary.f32(i32 46, float %6511, float %6522, float %6534)  ; FMad(a,b,c)
  %6536 = call float @dx.op.tertiary.f32(i32 46, float %6512, float %6523, float %6535)  ; FMad(a,b,c)
  %6537 = fadd fast float %6536, %6524
  %6538 = fmul fast float %6526, %6510
  %6539 = call float @dx.op.tertiary.f32(i32 46, float %6511, float %6527, float %6538)  ; FMad(a,b,c)
  %6540 = call float @dx.op.tertiary.f32(i32 46, float %6512, float %6528, float %6539)  ; FMad(a,b,c)
  %6541 = fadd fast float %6540, %6529
  %6542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6543 = extractvalue %dx.types.CBufRet.f32 %6542, 0
  %6544 = extractvalue %dx.types.CBufRet.f32 %6542, 1
  %6545 = extractvalue %dx.types.CBufRet.f32 %6542, 3
  %6546 = fmul fast float %6545, %6533
  %6547 = fmul fast float %6545, %6537
  %6548 = fadd fast float %6546, %6543
  %6549 = fadd fast float %6547, %6544
  %6550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.f32 %6550, 0
  %6552 = extractvalue %dx.types.CBufRet.f32 %6550, 1
  %6553 = extractvalue %dx.types.CBufRet.f32 %6550, 3
  %6554 = fmul fast float %6553, %6533
  %6555 = fmul fast float %6553, %6537
  %6556 = fadd fast float %6554, %6551
  %6557 = fadd fast float %6555, %6552
  %6558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6559 = extractvalue %dx.types.CBufRet.f32 %6558, 1
  %6560 = fsub fast float %6559, %6541
  %6561 = extractvalue %dx.types.CBufRet.f32 %6558, 2
  %6562 = fmul fast float %6560, %6561
  %6563 = fsub fast float 1.000000e+00, %6562
  %6564 = call float @dx.op.unary.f32(i32 7, float %6563)  ; Saturate(value)
  %6565 = extractvalue %dx.types.CBufRet.f32 %6550, 2
  %6566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6567 = extractvalue %dx.types.CBufRet.f32 %6566, 2
  %6568 = fadd fast float %6567, %6565
  %6569 = fcmp fast ogt float %6568, 0.000000e+00
  br i1 %6569, label %6570, label %6594

; <label>:6570                                    ; preds = %6514
  %6571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6572 = extractvalue %dx.types.CBufRet.f32 %6571, 0
  %6573 = extractvalue %dx.types.CBufRet.f32 %6571, 1
  %6574 = fsub fast float %6556, %6572
  %6575 = fsub fast float %6557, %6573
  %6576 = fcmp fast olt float %6574, 0.000000e+00
  %6577 = fcmp fast olt float %6575, 0.000000e+00
  %6578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6579 = extractvalue %dx.types.CBufRet.f32 %6578, 0
  %6580 = extractvalue %dx.types.CBufRet.f32 %6578, 1
  %6581 = extractvalue %dx.types.CBufRet.f32 %6578, 2
  %6582 = extractvalue %dx.types.CBufRet.f32 %6578, 3
  %6583 = select i1 %6576, float %6579, float %6581
  %6584 = select i1 %6577, float %6580, float %6582
  %6585 = fmul fast float %6583, %6574
  %6586 = fmul fast float %6584, %6575
  %6587 = call float @dx.op.unary.f32(i32 6, float %6585)  ; FAbs(value)
  %6588 = call float @dx.op.unary.f32(i32 6, float %6586)  ; FAbs(value)
  %6589 = extractvalue %dx.types.CBufRet.f32 %6505, 0
  %6590 = call float @dx.op.binary.f32(i32 35, float %6587, float %6588)  ; FMax(a,b)
  %6591 = fsub fast float %6589, %6590
  %6592 = call float @dx.op.unary.f32(i32 7, float %6591)  ; Saturate(value)
  %6593 = fmul fast float %6592, %6564
  br label %6594

; <label>:6594                                    ; preds = %6570, %6514
  %6595 = phi float [ %6593, %6570 ], [ 0.000000e+00, %6514 ]
  %6596 = extractvalue %dx.types.CBufRet.f32 %6542, 2
  %6597 = extractvalue %dx.types.CBufRet.f32 %6566, 1
  %6598 = fadd fast float %6597, %6596
  %6599 = fcmp fast ogt float %6598, 0.000000e+00
  %6600 = extractvalue %dx.types.CBufRet.f32 %6505, 0
  br i1 %6599, label %6601, label %6624

; <label>:6601                                    ; preds = %6594
  %6602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6603 = extractvalue %dx.types.CBufRet.f32 %6602, 0
  %6604 = extractvalue %dx.types.CBufRet.f32 %6602, 1
  %6605 = fsub fast float %6548, %6603
  %6606 = fsub fast float %6549, %6604
  %6607 = fcmp fast olt float %6605, 0.000000e+00
  %6608 = fcmp fast olt float %6606, 0.000000e+00
  %6609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6610 = extractvalue %dx.types.CBufRet.f32 %6609, 0
  %6611 = extractvalue %dx.types.CBufRet.f32 %6609, 1
  %6612 = extractvalue %dx.types.CBufRet.f32 %6609, 2
  %6613 = extractvalue %dx.types.CBufRet.f32 %6609, 3
  %6614 = select i1 %6607, float %6610, float %6612
  %6615 = select i1 %6608, float %6611, float %6613
  %6616 = fmul fast float %6614, %6605
  %6617 = fmul fast float %6615, %6606
  %6618 = call float @dx.op.unary.f32(i32 6, float %6616)  ; FAbs(value)
  %6619 = call float @dx.op.unary.f32(i32 6, float %6617)  ; FAbs(value)
  %6620 = call float @dx.op.binary.f32(i32 35, float %6618, float %6619)  ; FMax(a,b)
  %6621 = fsub fast float %6600, %6620
  %6622 = call float @dx.op.unary.f32(i32 7, float %6621)  ; Saturate(value)
  %6623 = fmul fast float %6622, %6564
  br label %6624

; <label>:6624                                    ; preds = %6601, %6594
  %6625 = phi float [ %6623, %6601 ], [ 0.000000e+00, %6594 ]
  %6626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6627 = extractvalue %dx.types.CBufRet.f32 %6626, 1
  %6628 = call float @dx.op.unary.f32(i32 7, float %6627)  ; Saturate(value)
  %6629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6630 = extractvalue %dx.types.CBufRet.f32 %6629, 0
  %6631 = extractvalue %dx.types.CBufRet.f32 %6629, 1
  %6632 = fsub fast float %6533, %6630
  %6633 = fsub fast float %6537, %6631
  %6634 = fcmp fast olt float %6632, 0.000000e+00
  %6635 = fcmp fast olt float %6633, 0.000000e+00
  %6636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6637 = extractvalue %dx.types.CBufRet.f32 %6636, 0
  %6638 = extractvalue %dx.types.CBufRet.f32 %6636, 1
  %6639 = extractvalue %dx.types.CBufRet.f32 %6636, 2
  %6640 = extractvalue %dx.types.CBufRet.f32 %6636, 3
  %6641 = select i1 %6634, float %6637, float %6639
  %6642 = select i1 %6635, float %6638, float %6640
  %6643 = fmul fast float %6641, %6632
  %6644 = fmul fast float %6642, %6633
  %6645 = call float @dx.op.unary.f32(i32 6, float %6643)  ; FAbs(value)
  %6646 = call float @dx.op.unary.f32(i32 6, float %6644)  ; FAbs(value)
  %6647 = call float @dx.op.binary.f32(i32 35, float %6645, float %6646)  ; FMax(a,b)
  %6648 = fsub fast float %6600, %6647
  %6649 = call float @dx.op.unary.f32(i32 7, float %6648)  ; Saturate(value)
  %6650 = call float @dx.op.binary.f32(i32 36, float %6649, float %6628)  ; FMin(a,b)
  %6651 = fmul fast float %6650, %6564
  %6652 = fsub fast float %6625, %6651
  %6653 = fsub fast float %6595, %6625
  %6654 = fsub fast float %6653, %6651
  %6655 = call float @dx.op.binary.f32(i32 35, float %6625, float %6595)  ; FMax(a,b)
  %6656 = call float @dx.op.binary.f32(i32 35, float %6651, float %6655)  ; FMax(a,b)
  %6657 = fcmp fast olt float %6656, 1.000000e+00
  br i1 %6657, label %6658, label %7056, !dx.controlflow.hints !91

; <label>:6658                                    ; preds = %6624
  %6659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6660 = extractvalue %dx.types.CBufRet.f32 %6659, 0
  %6661 = fcmp fast une float %6660, 0.000000e+00
  br i1 %6661, label %6662, label %7056, !dx.controlflow.hints !92

; <label>:6662                                    ; preds = %6658
  %6663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6664 = extractvalue %dx.types.CBufRet.f32 %6663, 0
  %6665 = extractvalue %dx.types.CBufRet.f32 %6663, 1
  %6666 = extractvalue %dx.types.CBufRet.f32 %6663, 2
  %6667 = extractvalue %dx.types.CBufRet.f32 %6663, 3
  %6668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6669 = extractvalue %dx.types.CBufRet.f32 %6668, 0
  %6670 = extractvalue %dx.types.CBufRet.f32 %6668, 1
  %6671 = extractvalue %dx.types.CBufRet.f32 %6668, 2
  %6672 = extractvalue %dx.types.CBufRet.f32 %6668, 3
  %6673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6674 = extractvalue %dx.types.CBufRet.f32 %6673, 0
  %6675 = extractvalue %dx.types.CBufRet.f32 %6673, 1
  %6676 = extractvalue %dx.types.CBufRet.f32 %6673, 2
  %6677 = extractvalue %dx.types.CBufRet.f32 %6673, 3
  %6678 = fmul fast float %6664, %6510
  %6679 = call float @dx.op.tertiary.f32(i32 46, float %6511, float %6665, float %6678)  ; FMad(a,b,c)
  %6680 = call float @dx.op.tertiary.f32(i32 46, float %6512, float %6666, float %6679)  ; FMad(a,b,c)
  %6681 = fadd fast float %6680, %6667
  %6682 = fmul fast float %6669, %6510
  %6683 = call float @dx.op.tertiary.f32(i32 46, float %6511, float %6670, float %6682)  ; FMad(a,b,c)
  %6684 = call float @dx.op.tertiary.f32(i32 46, float %6512, float %6671, float %6683)  ; FMad(a,b,c)
  %6685 = fadd fast float %6684, %6672
  %6686 = fmul fast float %6674, %6510
  %6687 = call float @dx.op.tertiary.f32(i32 46, float %6511, float %6675, float %6686)  ; FMad(a,b,c)
  %6688 = call float @dx.op.tertiary.f32(i32 46, float %6512, float %6676, float %6687)  ; FMad(a,b,c)
  %6689 = fadd fast float %6688, %6677
  %6690 = fcmp fast oge float %6681, 1.000000e+00
  %6691 = fcmp fast oge float %6685, 1.000000e+00
  %6692 = or i1 %6690, %6691
  %6693 = fcmp fast olt float %6681, 0.000000e+00
  %6694 = fcmp fast olt float %6685, 0.000000e+00
  %6695 = or i1 %6693, %6694
  %6696 = or i1 %6692, %6695
  br i1 %6696, label %7056, label %6697, !dx.controlflow.hints !93

; <label>:6697                                    ; preds = %6662
  %6698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6699 = extractvalue %dx.types.CBufRet.f32 %6698, 0
  %6700 = extractvalue %dx.types.CBufRet.f32 %6698, 1
  %6701 = extractvalue %dx.types.CBufRet.f32 %6698, 2
  %6702 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6703 = extractvalue %dx.types.CBufRet.i32 %6702, 2
  %6704 = uitofp i32 %6703 to float
  %6705 = extractvalue %dx.types.CBufRet.i32 %6702, 3
  %6706 = uitofp i32 %6705 to float
  %6707 = extractvalue %dx.types.CBufRet.f32 %6698, 3
  %6708 = fmul fast float %6707, 2.000000e+00
  %6709 = fsub fast float %6681, %6699
  %6710 = fsub fast float %6685, %6700
  %6711 = fmul fast float %6708, %6709
  %6712 = fmul fast float %6708, %6710
  %6713 = fdiv fast float 1.000000e+00, %6493
  %6714 = fmul fast float %6712, %6713
  %6715 = call float @dx.op.unary.f32(i32 6, float %6714)  ; FAbs(value)
  %6716 = fmul fast float %6701, %6512
  %6717 = fmul fast float %6716, %6708
  %6718 = call float @dx.op.unary.f32(i32 6, float %6717)  ; FAbs(value)
  %6719 = call float @dx.op.unary.f32(i32 6, float %6711)  ; FAbs(value)
  %6720 = call float @dx.op.binary.f32(i32 35, float %6718, float %6715)  ; FMax(a,b)
  %6721 = call float @dx.op.binary.f32(i32 35, float %6719, float %6720)  ; FMax(a,b)
  %6722 = fmul fast float %6721, 2.000000e+00
  %6723 = call float @dx.op.unary.f32(i32 23, float %6722)  ; Log(value)
  %6724 = call float @dx.op.binary.f32(i32 35, float %6723, float %6704)  ; FMax(a,b)
  %6725 = call float @dx.op.unary.f32(i32 22, float %6724)  ; Frc(value)
  %6726 = fadd fast float %6725, 0xBFEA666660000000
  %6727 = fmul fast float %6726, 8.000000e+00
  %6728 = call float @dx.op.unary.f32(i32 7, float %6727)  ; Saturate(value)
  %6729 = call float @dx.op.unary.f32(i32 27, float %6724)  ; Round_ni(value)
  %6730 = fadd fast float %6729, %6728
  %6731 = call float @dx.op.binary.f32(i32 36, float %6730, float %6706)  ; FMin(a,b)
  %6732 = call float @dx.op.unary.f32(i32 27, float %6731)  ; Round_ni(value)
  %6733 = fsub fast float -0.000000e+00, %6732
  %6734 = call float @dx.op.unary.f32(i32 21, float %6733)  ; Exp(value)
  %6735 = fmul fast float %6734, %6708
  %6736 = fmul fast float %6735, %6681
  %6737 = fmul fast float %6735, %6685
  %6738 = fmul fast float %6736, 2.500000e-01
  %6739 = fmul fast float %6737, 2.500000e-01
  %6740 = fadd fast float %6738, 5.000000e-01
  %6741 = fadd fast float %6739, 5.000000e-01
  %6742 = fsub fast float %6706, %6704
  %6743 = fptoui float %6742 to i32
  %6744 = add i32 %6743, 320
  %6745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %6744)  ; CBufferLoadLegacy(handle,regIndex)
  %6746 = extractvalue %dx.types.CBufRet.f32 %6745, 0
  %6747 = extractvalue %dx.types.CBufRet.f32 %6745, 1
  %6748 = fcmp fast une float %6731, %6706
  %6749 = fsub fast float %6681, %6746
  %6750 = fsub fast float %6685, %6747
  %6751 = call float @dx.op.unary.f32(i32 6, float %6749)  ; FAbs(value)
  %6752 = call float @dx.op.unary.f32(i32 6, float %6750)  ; FAbs(value)
  %6753 = fmul fast float %6751, %6735
  %6754 = fmul fast float %6752, %6735
  %6755 = fcmp fast olt float %6753, 1.000000e+00
  %6756 = fcmp fast olt float %6754, 1.000000e+00
  %6757 = and i1 %6755, %6756
  %6758 = or i1 %6748, %6757
  br i1 %6758, label %6759, label %7056, !dx.controlflow.hints !94

; <label>:6759                                    ; preds = %6697
  %6760 = fmul fast float %6737, 5.000000e-01
  %6761 = fmul fast float %6736, 5.000000e-01
  %6762 = fadd fast float %6760, 5.000000e-01
  %6763 = fadd fast float %6761, 5.000000e-01
  %6764 = sitofp i32 %6703 to float
  %6765 = fsub fast float %6731, %6764
  %6766 = call float @dx.op.unary.f32(i32 27, float %6765)  ; Round_ni(value)
  %6767 = call float @dx.op.unary.f32(i32 22, float %6731)  ; Frc(value)
  %6768 = call float @dx.op.unary.f32(i32 22, float %6763)  ; Frc(value)
  %6769 = call float @dx.op.unary.f32(i32 22, float %6762)  ; Frc(value)
  %6770 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %6768, float %6769, float %6766, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6771 = extractvalue %dx.types.ResRet.f32 %6770, 0
  %6772 = extractvalue %dx.types.ResRet.f32 %6770, 1
  %6773 = extractvalue %dx.types.ResRet.f32 %6770, 2
  %6774 = extractvalue %dx.types.ResRet.f32 %6770, 3
  %6775 = fcmp fast ogt float %6767, 0.000000e+00
  br i1 %6775, label %6776, label %6797, !dx.controlflow.hints !95

; <label>:6776                                    ; preds = %6759
  %6777 = fadd fast float %6766, 1.000000e+00
  %6778 = call float @dx.op.unary.f32(i32 22, float %6740)  ; Frc(value)
  %6779 = call float @dx.op.unary.f32(i32 22, float %6741)  ; Frc(value)
  %6780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %6778, float %6779, float %6777, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6781 = extractvalue %dx.types.ResRet.f32 %6780, 0
  %6782 = extractvalue %dx.types.ResRet.f32 %6780, 1
  %6783 = extractvalue %dx.types.ResRet.f32 %6780, 2
  %6784 = extractvalue %dx.types.ResRet.f32 %6780, 3
  %6785 = fsub fast float %6781, %6771
  %6786 = fsub fast float %6782, %6772
  %6787 = fsub fast float %6783, %6773
  %6788 = fsub fast float %6784, %6774
  %6789 = fmul fast float %6785, %6767
  %6790 = fmul fast float %6786, %6767
  %6791 = fmul fast float %6787, %6767
  %6792 = fmul fast float %6788, %6767
  %6793 = fadd fast float %6789, %6771
  %6794 = fadd fast float %6790, %6772
  %6795 = fadd fast float %6791, %6773
  %6796 = fadd fast float %6792, %6774
  br label %6797

; <label>:6797                                    ; preds = %6776, %6759
  %6798 = phi float [ %6793, %6776 ], [ %6771, %6759 ]
  %6799 = phi float [ %6794, %6776 ], [ %6772, %6759 ]
  %6800 = phi float [ %6795, %6776 ], [ %6773, %6759 ]
  %6801 = phi float [ %6796, %6776 ], [ %6774, %6759 ]
  %6802 = fadd fast float %6798, -5.000000e-01
  %6803 = fadd fast float %6800, -5.000000e-01
  %6804 = fmul fast float %6802, 0xBFD5555560000000
  %6805 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6803, float %6804)  ; FMad(a,b,c)
  %6806 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6799, float 0.000000e+00)  ; FMad(a,b,c)
  %6807 = fadd fast float %6806, %6801
  %6808 = fmul fast float %6802, -7.500000e-01
  %6809 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6803, float %6808)  ; FMad(a,b,c)
  %6810 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6799, float 0.000000e+00)  ; FMad(a,b,c)
  %6811 = fadd fast float %6810, %6801
  %6812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6813 = extractvalue %dx.types.CBufRet.f32 %6812, 0
  %6814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6815 = extractvalue %dx.types.CBufRet.f32 %6814, 0
  %6816 = extractvalue %dx.types.CBufRet.f32 %6814, 1
  %6817 = extractvalue %dx.types.CBufRet.f32 %6814, 2
  %6818 = extractvalue %dx.types.CBufRet.f32 %6814, 3
  %6819 = fsub fast float %6815, %6805
  %6820 = fsub fast float %6816, %6807
  %6821 = fsub fast float %6817, %6809
  %6822 = fsub fast float %6818, %6811
  %6823 = fmul fast float %6819, %6813
  %6824 = fmul fast float %6820, %6813
  %6825 = fmul fast float %6821, %6813
  %6826 = fmul fast float %6822, %6813
  %6827 = fadd fast float %6823, %6805
  %6828 = fadd fast float %6824, %6807
  %6829 = fadd fast float %6825, %6809
  %6830 = fadd fast float %6826, %6811
  %6831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6832 = extractvalue %dx.types.ResRet.i32 %6831, 0
  %6833 = and i32 %6832, 536870911
  %6834 = uitofp i32 %6833 to float
  %6835 = fmul fast float %6834, %6681
  %6836 = fmul fast float %6834, %6685
  %6837 = fptoui float %6835 to i32
  %6838 = fptoui float %6836 to i32
  %6839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6840 = extractvalue %dx.types.ResRet.i32 %6839, 0
  %6841 = and i32 %6840, 31
  %6842 = lshr i32 %6837, %6841
  %6843 = lshr i32 %6838, %6841
  %6844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6845 = extractvalue %dx.types.ResRet.i32 %6844, 0
  %6846 = and i32 %6845, 31
  %6847 = shl i32 1, %6846
  %6848 = call i32 @dx.op.binary.i32(i32 40, i32 %6847, i32 4)  ; UMin(a,b)
  %6849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6850 = extractvalue %dx.types.ResRet.i32 %6849, 0
  %6851 = extractvalue %dx.types.ResRet.i32 %6849, 1
  %6852 = icmp eq i32 %6848, 0
  br i1 %6852, label %6894, label %6853

; <label>:6853                                    ; preds = %6797
  br label %6854

; <label>:6854                                    ; preds = %6882, %6853
  %6855 = phi i32 [ %6885, %6882 ], [ 0, %6853 ]
  %6856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6857 = extractvalue %dx.types.ResRet.i32 %6856, 0
  %6858 = lshr i32 %6857, 16
  %6859 = and i32 %6858, 31
  %6860 = shl i32 %6843, %6859
  %6861 = add i32 %6860, %6842
  %6862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6863 = extractvalue %dx.types.ResRet.i32 %6862, 0
  %6864 = and i32 %6863, 31
  %6865 = shl i32 %6861, %6864
  %6866 = add i32 %6865, %6855
  %6867 = shl i32 %6866, 2
  %6868 = add i32 %6867, 32
  %6869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6868, i32 undef)  ; BufferLoad(srv,index,wot)
  %6870 = extractvalue %dx.types.ResRet.i32 %6869, 0
  %6871 = icmp slt i32 %6870, 0
  %6872 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6855
  %6873 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6855
  %6874 = bitcast float* %6872 to i32*
  %6875 = bitcast float* %6873 to i32*
  br i1 %6871, label %6876, label %6882

; <label>:6876                                    ; preds = %6854
  %6877 = and i32 %6870, 1073741823
  %6878 = add nuw nsw i32 %6877, 20
  %6879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6878, i32 undef)  ; BufferLoad(srv,index,wot)
  %6880 = extractvalue %dx.types.ResRet.i32 %6879, 0
  %6881 = extractvalue %dx.types.ResRet.i32 %6879, 1
  br label %6882

; <label>:6882                                    ; preds = %6876, %6854
  %6883 = phi i32 [ %6880, %6876 ], [ %6850, %6854 ]
  %6884 = phi i32 [ %6881, %6876 ], [ %6851, %6854 ]
  store i32 %6883, i32* %6874, align 4
  store i32 %6884, i32* %6875, align 4
  %6885 = add nuw i32 %6855, 1
  %6886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.i32 %6886, 2
  %6888 = icmp eq i32 %6887, 0
  %6889 = icmp ugt i32 %6870, -1073741825
  %6890 = and i1 %6889, %6888
  %6891 = icmp ult i32 %6885, %6848
  %6892 = and i1 %6890, %6891
  br i1 %6892, label %6854, label %6893

; <label>:6893                                    ; preds = %6882
  br label %6894

; <label>:6894                                    ; preds = %6893, %6797
  %6895 = phi i32 [ 0, %6797 ], [ %6885, %6893 ]
  %6896 = extractvalue %dx.types.CBufRet.f32 %6659, 2
  %6897 = fptoui float %6896 to i32
  %6898 = icmp eq i32 %6897, 0
  br i1 %6898, label %6950, label %6899

; <label>:6899                                    ; preds = %6894
  br label %6900

; <label>:6900                                    ; preds = %6945, %6899
  %6901 = phi i32 [ %6946, %6945 ], [ %6895, %6899 ]
  %6902 = phi i32 [ %6947, %6945 ], [ 0, %6899 ]
  %6903 = lshr i32 %6902, 2
  %6904 = and i32 %6902, 3
  %6905 = add nuw nsw i32 %6903, 83
  %6906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %6905)  ; CBufferLoadLegacy(handle,regIndex)
  %6907 = extractvalue %dx.types.CBufRet.i32 %6906, 0
  %6908 = extractvalue %dx.types.CBufRet.i32 %6906, 1
  %6909 = extractvalue %dx.types.CBufRet.i32 %6906, 2
  %6910 = extractvalue %dx.types.CBufRet.i32 %6906, 3
  %6911 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %6907, i32* %6911, align 4
  %6912 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %6908, i32* %6912, align 4
  %6913 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %6909, i32* %6913, align 4
  %6914 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %6910, i32* %6914, align 4
  %6915 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %6904
  %6916 = load i32, i32* %6915, align 4, !tbaa !96, !noalias !100
  %6917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6918 = extractvalue %dx.types.ResRet.i32 %6917, 0
  %6919 = lshr i32 %6918, 16
  %6920 = and i32 %6919, 31
  %6921 = shl i32 %6843, %6920
  %6922 = add i32 %6921, %6842
  %6923 = shl i32 %6922, 2
  %6924 = add i32 %6923, %6916
  %6925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6924, i32 undef)  ; BufferLoad(srv,index,wot)
  %6926 = extractvalue %dx.types.ResRet.i32 %6925, 0
  %6927 = icmp eq i32 %6926, 0
  br i1 %6927, label %6945, label %6928

; <label>:6928                                    ; preds = %6900
  %6929 = icmp slt i32 %6926, 0
  %6930 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6901
  %6931 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6901
  %6932 = bitcast float* %6930 to i32*
  %6933 = bitcast float* %6931 to i32*
  br i1 %6929, label %6934, label %6941

; <label>:6934                                    ; preds = %6928
  %6935 = and i32 %6926, 1073741823
  %6936 = add i32 %6916, 20
  %6937 = add i32 %6936, %6935
  %6938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6937, i32 undef)  ; BufferLoad(srv,index,wot)
  %6939 = extractvalue %dx.types.ResRet.i32 %6938, 0
  %6940 = extractvalue %dx.types.ResRet.i32 %6938, 1
  br label %6941

; <label>:6941                                    ; preds = %6934, %6928
  %6942 = phi i32 [ %6939, %6934 ], [ %6850, %6928 ]
  %6943 = phi i32 [ %6940, %6934 ], [ %6851, %6928 ]
  store i32 %6942, i32* %6932, align 4
  store i32 %6943, i32* %6933, align 4
  %6944 = add i32 %6901, 1
  br label %6945

; <label>:6945                                    ; preds = %6941, %6900
  %6946 = phi i32 [ %6901, %6900 ], [ %6944, %6941 ]
  %6947 = add nuw i32 %6902, 1
  %6948 = icmp eq i32 %6947, %6897
  br i1 %6948, label %6949, label %6900

; <label>:6949                                    ; preds = %6945
  br label %6950

; <label>:6950                                    ; preds = %6949, %6894
  %6951 = phi i32 [ %6895, %6894 ], [ %6946, %6949 ]
  %6952 = icmp eq i32 %6951, 1
  %6953 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %6954 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %6952, label %6955, label %6958

; <label>:6955                                    ; preds = %6950
  %6956 = load float, float* %6953, align 4
  %6957 = load float, float* %6954, align 4
  br label %6985

; <label>:6958                                    ; preds = %6950
  %6959 = load float, float* %6953, align 4
  %6960 = load float, float* %6954, align 4
  %6961 = fdiv fast float 1.000000e+00, %6960
  %6962 = fsub fast float %6959, %6961
  %6963 = icmp ugt i32 %6951, 1
  br i1 %6963, label %6964, label %6980

; <label>:6964                                    ; preds = %6958
  br label %6965

; <label>:6965                                    ; preds = %6965, %6964
  %6966 = phi float [ %6975, %6965 ], [ %6962, %6964 ]
  %6967 = phi float [ %6976, %6965 ], [ %6959, %6964 ]
  %6968 = phi i32 [ %6977, %6965 ], [ 1, %6964 ]
  %6969 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6968
  %6970 = load float, float* %6969, align 4
  %6971 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6968
  %6972 = load float, float* %6971, align 4
  %6973 = fdiv fast float 1.000000e+00, %6972
  %6974 = fsub fast float %6970, %6973
  %6975 = call float @dx.op.binary.f32(i32 36, float %6966, float %6974)  ; FMin(a,b)
  %6976 = call float @dx.op.binary.f32(i32 35, float %6967, float %6970)  ; FMax(a,b)
  %6977 = add nuw i32 %6968, 1
  %6978 = icmp eq i32 %6977, %6951
  br i1 %6978, label %6979, label %6965

; <label>:6979                                    ; preds = %6965
  br label %6980

; <label>:6980                                    ; preds = %6979, %6958
  %6981 = phi float [ %6962, %6958 ], [ %6975, %6979 ]
  %6982 = phi float [ %6959, %6958 ], [ %6976, %6979 ]
  %6983 = fsub fast float %6982, %6981
  %6984 = fdiv fast float 1.000000e+00, %6983
  br label %6985

; <label>:6985                                    ; preds = %6980, %6955
  %6986 = phi float [ %6956, %6955 ], [ %6982, %6980 ]
  %6987 = phi float [ %6957, %6955 ], [ %6984, %6980 ]
  %6988 = fadd fast float %6689, %6986
  %6989 = fmul fast float %6988, %6987
  %6990 = call float @dx.op.unary.f32(i32 7, float %6989)  ; Saturate(value)
  %6991 = fmul fast float %6990, 2.000000e+00
  %6992 = fsub fast float 1.000000e+00, %6991
  %6993 = fmul fast float %6827, %6827
  %6994 = fsub fast float %6828, %6993
  %6995 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6994)  ; FMax(a,b)
  %6996 = fdiv fast float 1.000000e+00, %6995
  %6997 = fmul fast float %6828, %6827
  %6998 = fsub fast float %6829, %6997
  %6999 = fsub fast float %6992, %6827
  %7000 = fmul fast float %6992, %6992
  %7001 = fsub fast float %7000, %6828
  %7002 = fmul fast float %6996, %6998
  %7003 = fmul fast float %7002, %6999
  %7004 = fsub fast float %7001, %7003
  %7005 = fmul fast float %6828, %6828
  %7006 = fsub fast float %6830, %7005
  %7007 = fmul fast float %6998, %6998
  %7008 = fmul fast float %7007, %6996
  %7009 = fsub fast float %7006, %7008
  %7010 = fdiv fast float %7004, %7009
  %7011 = fmul fast float %7010, %6998
  %7012 = fsub fast float %6999, %7011
  %7013 = fmul fast float %7012, %6996
  %7014 = fmul fast float %7013, %6827
  %7015 = fsub fast float 1.000000e+00, %7014
  %7016 = fmul fast float %7010, %6828
  %7017 = fsub fast float %7015, %7016
  %7018 = fmul fast float %7013, %7013
  %7019 = fmul fast float %7010, 4.000000e+00
  %7020 = fmul fast float %7019, %7017
  %7021 = fsub fast float %7018, %7020
  %7022 = call float @dx.op.unary.f32(i32 24, float %7021)  ; Sqrt(value)
  %7023 = fcmp fast oge float %7013, 0.000000e+00
  %7024 = fsub fast float -0.000000e+00, %7022
  %7025 = select i1 %7023, float %7024, float %7022
  %7026 = fsub fast float %7025, %7013
  %7027 = fdiv fast float %7026, %7010
  %7028 = fdiv fast float %7017, %7026
  %7029 = fmul fast float %7027, 5.000000e-01
  %7030 = fmul fast float %7028, 2.000000e+00
  %7031 = select i1 %7023, float %7029, float %7030
  %7032 = select i1 %7023, float %7030, float %7029
  %7033 = call float @dx.op.binary.f32(i32 35, float %7031, float %7032)  ; FMax(a,b)
  %7034 = call float @dx.op.binary.f32(i32 36, float %7031, float %7032)  ; FMin(a,b)
  %7035 = fcmp fast ogt float %6992, %7033
  %7036 = fsub fast float %6992, %7034
  %7037 = fsub fast float %6992, %7033
  %7038 = fsub fast float %7033, %7034
  %7039 = select i1 %7035, float %7037, float %7038
  %7040 = fmul float %7036, %7039
  %7041 = select i1 %7035, float %7034, float %6992
  %7042 = fcmp fast ogt float %6992, %7034
  %7043 = fmul fast float %7041, %7033
  %7044 = fadd fast float %7041, %7033
  %7045 = fmul fast float %7044, %6827
  %7046 = fadd fast float %7043, %6828
  %7047 = fsub fast float %7046, %7045
  %7048 = fdiv fast float %7047, %7040
  %7049 = select i1 %7042, float %7048, float 0.000000e+00
  %7050 = fsub fast float 1.000000e+00, %7049
  %7051 = select i1 %7035, float %7050, float %7049
  %7052 = call float @dx.op.unary.f32(i32 7, float %7051)  ; Saturate(value)
  %7053 = extractvalue %dx.types.CBufRet.f32 %6812, 3
  %7054 = fmul fast float %7053, %7052
  %7055 = fsub fast float 1.000000e+00, %7054
  br label %7056

; <label>:7056                                    ; preds = %6985, %6697, %6662, %6658, %6624
  %7057 = phi float [ 1.000000e+00, %6624 ], [ %7055, %6985 ], [ 1.000000e+00, %6662 ], [ 1.000000e+00, %6697 ], [ 1.000000e+00, %6658 ]
  %7058 = fcmp fast ogt float %6654, 0.000000e+00
  br i1 %7058, label %7059, label %7221, !dx.controlflow.hints !109

; <label>:7059                                    ; preds = %7056
  %7060 = fadd fast float %6567, %6541
  %7061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7062 = extractvalue %dx.types.CBufRet.f32 %7061, 2
  %7063 = extractvalue %dx.types.CBufRet.f32 %7061, 3
  %7064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7065 = extractvalue %dx.types.CBufRet.f32 %7064, 2
  %7066 = call float @dx.op.binary.f32(i32 35, float %7060, float 0.000000e+00)  ; FMax(a,b)
  %7067 = fadd fast float %7066, 0x3F10000000000000
  %7068 = fcmp fast oeq float %7065, 0.000000e+00
  br i1 %7068, label %7069, label %7136

; <label>:7069                                    ; preds = %7059
  %7070 = extractvalue %dx.types.CBufRet.f32 %7061, 1
  %7071 = extractvalue %dx.types.CBufRet.f32 %7061, 0
  %7072 = fmul fast float %7071, %6556
  %7073 = fmul fast float %7070, %6557
  %7074 = fadd fast float %7072, 5.000000e-01
  %7075 = call float @dx.op.unary.f32(i32 27, float %7074)  ; Round_ni(value)
  %7076 = fadd fast float %7073, 5.000000e-01
  %7077 = call float @dx.op.unary.f32(i32 27, float %7076)  ; Round_ni(value)
  %7078 = fsub fast float %7074, %7075
  %7079 = fsub fast float %7076, %7077
  %7080 = fadd fast float %7075, -5.000000e-01
  %7081 = fadd fast float %7077, -5.000000e-01
  %7082 = fmul fast float %7078, 2.000000e+00
  %7083 = fsub fast float 3.000000e+00, %7082
  %7084 = fadd fast float %7082, 1.000000e+00
  %7085 = fsub fast float 2.000000e+00, %7078
  %7086 = bitcast float %7083 to i32
  %7087 = sub nsw i32 2129859010, %7086
  %7088 = bitcast i32 %7087 to float
  %7089 = fmul fast float %7088, %7085
  %7090 = fadd fast float %7089, -1.000000e+00
  %7091 = bitcast float %7084 to i32
  %7092 = sub nsw i32 2129859010, %7091
  %7093 = bitcast i32 %7092 to float
  %7094 = fmul fast float %7093, %7078
  %7095 = fadd fast float %7094, 1.000000e+00
  %7096 = fmul fast float %7079, 2.000000e+00
  %7097 = fsub fast float 3.000000e+00, %7096
  %7098 = fadd fast float %7096, 1.000000e+00
  %7099 = fsub fast float 2.000000e+00, %7079
  %7100 = bitcast float %7097 to i32
  %7101 = sub nsw i32 2129859010, %7100
  %7102 = bitcast i32 %7101 to float
  %7103 = fmul fast float %7102, %7099
  %7104 = fadd fast float %7103, -1.000000e+00
  %7105 = bitcast float %7098 to i32
  %7106 = sub nsw i32 2129859010, %7105
  %7107 = bitcast i32 %7106 to float
  %7108 = fmul fast float %7107, %7079
  %7109 = fadd fast float %7108, 1.000000e+00
  %7110 = fadd fast float %7090, %7080
  %7111 = fmul fast float %7110, %7062
  %7112 = fadd fast float %7104, %7081
  %7113 = fmul fast float %7112, %7063
  %7114 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7111, float %7113, float undef, float undef, i32 0, i32 0, i32 undef, float %7067)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7115 = extractvalue %dx.types.ResRet.f32 %7114, 0
  %7116 = fmul fast float %7115, %7083
  %7117 = fadd fast float %7095, %7080
  %7118 = fmul fast float %7117, %7062
  %7119 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7118, float %7113, float undef, float undef, i32 0, i32 0, i32 undef, float %7067)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7120 = extractvalue %dx.types.ResRet.f32 %7119, 0
  %7121 = fmul fast float %7120, %7084
  %7122 = fadd fast float %7109, %7081
  %7123 = fmul fast float %7122, %7063
  %7124 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7111, float %7123, float undef, float undef, i32 0, i32 0, i32 undef, float %7067)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7125 = extractvalue %dx.types.ResRet.f32 %7124, 0
  %7126 = fmul fast float %7125, %7083
  %7127 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7118, float %7123, float undef, float undef, i32 0, i32 0, i32 undef, float %7067)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7128 = extractvalue %dx.types.ResRet.f32 %7127, 0
  %7129 = fmul fast float %7128, %7084
  %7130 = fadd fast float %7129, %7126
  %7131 = fmul fast float %7130, %7098
  %7132 = fadd fast float %7121, %7116
  %7133 = fmul fast float %7132, %7097
  %7134 = fadd fast float %7133, %7131
  %7135 = fmul fast float %7134, 6.250000e-02
  br label %7221

; <label>:7136                                    ; preds = %7059
  %7137 = fmul fast float %228, 0x401921FB60000000
  %7138 = call float @dx.op.unary.f32(i32 13, float %7137)  ; Sin(value)
  %7139 = call float @dx.op.unary.f32(i32 12, float %7137)  ; Cos(value)
  %7140 = fsub fast float -0.000000e+00, %7138
  br label %7141

; <label>:7141                                    ; preds = %7190, %7136
  %7142 = phi float [ 0.000000e+00, %7136 ], [ %7185, %7190 ]
  %7143 = phi float [ 0.000000e+00, %7136 ], [ %7187, %7190 ]
  %7144 = phi i32 [ 0, %7136 ], [ %7191, %7190 ]
  %7145 = mul i32 %7144, 2
  %7146 = add i32 0, %7145
  %7147 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7146
  %7148 = load float, float* %7147, align 4
  %7149 = mul i32 %7144, 2
  %7150 = add i32 1, %7149
  %7151 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7150
  %7152 = load float, float* %7151, align 4
  %7153 = fmul fast float %7148, %7139
  %7154 = call float @dx.op.tertiary.f32(i32 46, float %7152, float %7140, float %7153)  ; FMad(a,b,c)
  %7155 = fmul fast float %7148, %7138
  %7156 = call float @dx.op.tertiary.f32(i32 46, float %7152, float %7139, float %7155)  ; FMad(a,b,c)
  %7157 = fmul fast float %7154, %7065
  %7158 = fmul fast float %7156, %7065
  %7159 = fadd fast float %7157, %6556
  %7160 = fadd fast float %7158, %6557
  %7161 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %45, float %7159, float %7160, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7162 = extractvalue %dx.types.ResRet.f32 %7161, 0
  %7163 = extractvalue %dx.types.ResRet.f32 %7161, 1
  %7164 = extractvalue %dx.types.ResRet.f32 %7161, 2
  %7165 = extractvalue %dx.types.ResRet.f32 %7161, 3
  %7166 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %7162, float* %7166, align 4
  %7167 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %7163, float* %7167, align 4
  %7168 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %7164, float* %7168, align 4
  %7169 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %7165, float* %7169, align 4
  %7170 = fsub fast float %7162, %7067
  %7171 = fcmp fast olt float %7170, 0.000000e+00
  %7172 = select i1 %7171, float 0.000000e+00, float 1.000000e+00
  %7173 = fadd fast float %7172, %7142
  %7174 = fmul fast float %7172, %7170
  %7175 = fadd fast float %7174, %7143
  br label %7176

; <label>:7176                                    ; preds = %7176, %7141
  %7177 = phi i32 [ 1, %7141 ], [ %7188, %7176 ]
  %7178 = phi float [ %7175, %7141 ], [ %7187, %7176 ]
  %7179 = phi float [ %7173, %7141 ], [ %7185, %7176 ]
  %7180 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %7177
  %7181 = load float, float* %7180, align 4, !tbaa !110, !noalias !100
  %7182 = fsub fast float %7181, %7067
  %7183 = fcmp fast olt float %7182, 0.000000e+00
  %7184 = select i1 %7183, float 0.000000e+00, float 1.000000e+00
  %7185 = fadd fast float %7184, %7179
  %7186 = fmul fast float %7184, %7182
  %7187 = fadd fast float %7186, %7178
  %7188 = add nuw nsw i32 %7177, 1
  %7189 = icmp eq i32 %7188, 4
  br i1 %7189, label %7190, label %7176, !llvm.loop !112

; <label>:7190                                    ; preds = %7176
  %7191 = add nuw nsw i32 %7144, 1
  %7192 = icmp eq i32 %7191, 8
  br i1 %7192, label %7193, label %7141, !llvm.loop !113

; <label>:7193                                    ; preds = %7190
  %7194 = fdiv fast float 1.000000e+00, %7185
  %7195 = fmul fast float %7194, %7187
  %7196 = fdiv fast float 1.000000e+00, %7067
  %7197 = fmul fast float %7195, %7196
  %7198 = call float @dx.op.unary.f32(i32 7, float %7197)  ; Saturate(value)
  %7199 = call float @dx.op.binary.f32(i32 35, float %7198, float 0.000000e+00)  ; FMax(a,b)
  %7200 = fmul fast float %7185, 3.125000e-02
  %7201 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  %7202 = fmul fast float %7201, 2.000000e+00
  %7203 = fadd fast float %7202, -1.000000e+00
  %7204 = fcmp fast ogt float %7203, 0.000000e+00
  %7205 = fcmp fast olt float %7203, 0.000000e+00
  %7206 = zext i1 %7204 to i32
  %7207 = zext i1 %7205 to i32
  %7208 = sub nsw i32 %7206, %7207
  %7209 = sitofp i32 %7208 to float
  %7210 = fmul fast float %7209, %7203
  %7211 = fsub fast float 1.000000e+00, %7210
  %7212 = fmul fast float %7211, %7211
  %7213 = fmul fast float %7212, %7211
  %7214 = fsub fast float %7211, %7213
  %7215 = fmul fast float %7214, %7199
  %7216 = fsub fast float 1.000000e+00, %7213
  %7217 = fsub fast float %7216, %7215
  %7218 = fmul fast float %7209, 5.000000e-01
  %7219 = fmul fast float %7218, %7217
  %7220 = fsub fast float 5.000000e-01, %7219
  br label %7221

; <label>:7221                                    ; preds = %7193, %7069, %7056
  %7222 = phi float [ 1.000000e+00, %7056 ], [ %7135, %7069 ], [ %7220, %7193 ]
  %7223 = fcmp fast ogt float %6652, 0.000000e+00
  br i1 %7223, label %7224, label %7388, !dx.controlflow.hints !114

; <label>:7224                                    ; preds = %7221
  %7225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7226 = extractvalue %dx.types.CBufRet.f32 %7225, 1
  %7227 = fadd fast float %7226, %6541
  %7228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7229 = extractvalue %dx.types.CBufRet.f32 %7228, 2
  %7230 = extractvalue %dx.types.CBufRet.f32 %7228, 3
  %7231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7232 = extractvalue %dx.types.CBufRet.f32 %7231, 1
  %7233 = call float @dx.op.binary.f32(i32 35, float %7227, float 0.000000e+00)  ; FMax(a,b)
  %7234 = fadd fast float %7233, 0x3F10000000000000
  %7235 = fcmp fast oeq float %7232, 0.000000e+00
  br i1 %7235, label %7236, label %7303

; <label>:7236                                    ; preds = %7224
  %7237 = extractvalue %dx.types.CBufRet.f32 %7228, 1
  %7238 = extractvalue %dx.types.CBufRet.f32 %7228, 0
  %7239 = fmul fast float %7238, %6548
  %7240 = fmul fast float %7237, %6549
  %7241 = fadd fast float %7239, 5.000000e-01
  %7242 = call float @dx.op.unary.f32(i32 27, float %7241)  ; Round_ni(value)
  %7243 = fadd fast float %7240, 5.000000e-01
  %7244 = call float @dx.op.unary.f32(i32 27, float %7243)  ; Round_ni(value)
  %7245 = fsub fast float %7241, %7242
  %7246 = fsub fast float %7243, %7244
  %7247 = fadd fast float %7242, -5.000000e-01
  %7248 = fadd fast float %7244, -5.000000e-01
  %7249 = fmul fast float %7245, 2.000000e+00
  %7250 = fsub fast float 3.000000e+00, %7249
  %7251 = fadd fast float %7249, 1.000000e+00
  %7252 = fsub fast float 2.000000e+00, %7245
  %7253 = bitcast float %7250 to i32
  %7254 = sub nsw i32 2129859010, %7253
  %7255 = bitcast i32 %7254 to float
  %7256 = fmul fast float %7255, %7252
  %7257 = fadd fast float %7256, -1.000000e+00
  %7258 = bitcast float %7251 to i32
  %7259 = sub nsw i32 2129859010, %7258
  %7260 = bitcast i32 %7259 to float
  %7261 = fmul fast float %7260, %7245
  %7262 = fadd fast float %7261, 1.000000e+00
  %7263 = fmul fast float %7246, 2.000000e+00
  %7264 = fsub fast float 3.000000e+00, %7263
  %7265 = fadd fast float %7263, 1.000000e+00
  %7266 = fsub fast float 2.000000e+00, %7246
  %7267 = bitcast float %7264 to i32
  %7268 = sub nsw i32 2129859010, %7267
  %7269 = bitcast i32 %7268 to float
  %7270 = fmul fast float %7269, %7266
  %7271 = fadd fast float %7270, -1.000000e+00
  %7272 = bitcast float %7265 to i32
  %7273 = sub nsw i32 2129859010, %7272
  %7274 = bitcast i32 %7273 to float
  %7275 = fmul fast float %7274, %7246
  %7276 = fadd fast float %7275, 1.000000e+00
  %7277 = fadd fast float %7257, %7247
  %7278 = fmul fast float %7277, %7229
  %7279 = fadd fast float %7271, %7248
  %7280 = fmul fast float %7279, %7230
  %7281 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7278, float %7280, float undef, float undef, i32 0, i32 0, i32 undef, float %7234)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7282 = extractvalue %dx.types.ResRet.f32 %7281, 0
  %7283 = fmul fast float %7282, %7250
  %7284 = fadd fast float %7262, %7247
  %7285 = fmul fast float %7284, %7229
  %7286 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7285, float %7280, float undef, float undef, i32 0, i32 0, i32 undef, float %7234)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7287 = extractvalue %dx.types.ResRet.f32 %7286, 0
  %7288 = fmul fast float %7287, %7251
  %7289 = fadd fast float %7276, %7248
  %7290 = fmul fast float %7289, %7230
  %7291 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7278, float %7290, float undef, float undef, i32 0, i32 0, i32 undef, float %7234)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7292 = extractvalue %dx.types.ResRet.f32 %7291, 0
  %7293 = fmul fast float %7292, %7250
  %7294 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7285, float %7290, float undef, float undef, i32 0, i32 0, i32 undef, float %7234)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7295 = extractvalue %dx.types.ResRet.f32 %7294, 0
  %7296 = fmul fast float %7295, %7251
  %7297 = fadd fast float %7296, %7293
  %7298 = fmul fast float %7297, %7265
  %7299 = fadd fast float %7288, %7283
  %7300 = fmul fast float %7299, %7264
  %7301 = fadd fast float %7300, %7298
  %7302 = fmul fast float %7301, 6.250000e-02
  br label %7388

; <label>:7303                                    ; preds = %7224
  %7304 = fmul fast float %228, 0x401921FB60000000
  %7305 = call float @dx.op.unary.f32(i32 13, float %7304)  ; Sin(value)
  %7306 = call float @dx.op.unary.f32(i32 12, float %7304)  ; Cos(value)
  %7307 = fsub fast float -0.000000e+00, %7305
  br label %7308

; <label>:7308                                    ; preds = %7357, %7303
  %7309 = phi float [ 0.000000e+00, %7303 ], [ %7352, %7357 ]
  %7310 = phi float [ 0.000000e+00, %7303 ], [ %7354, %7357 ]
  %7311 = phi i32 [ 0, %7303 ], [ %7358, %7357 ]
  %7312 = mul i32 %7311, 2
  %7313 = add i32 0, %7312
  %7314 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7313
  %7315 = load float, float* %7314, align 4
  %7316 = mul i32 %7311, 2
  %7317 = add i32 1, %7316
  %7318 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7317
  %7319 = load float, float* %7318, align 4
  %7320 = fmul fast float %7315, %7306
  %7321 = call float @dx.op.tertiary.f32(i32 46, float %7319, float %7307, float %7320)  ; FMad(a,b,c)
  %7322 = fmul fast float %7315, %7305
  %7323 = call float @dx.op.tertiary.f32(i32 46, float %7319, float %7306, float %7322)  ; FMad(a,b,c)
  %7324 = fmul fast float %7321, %7232
  %7325 = fmul fast float %7323, %7232
  %7326 = fadd fast float %7324, %6548
  %7327 = fadd fast float %7325, %6549
  %7328 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %45, float %7326, float %7327, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7329 = extractvalue %dx.types.ResRet.f32 %7328, 0
  %7330 = extractvalue %dx.types.ResRet.f32 %7328, 1
  %7331 = extractvalue %dx.types.ResRet.f32 %7328, 2
  %7332 = extractvalue %dx.types.ResRet.f32 %7328, 3
  %7333 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 0
  store float %7329, float* %7333, align 4
  %7334 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 1
  store float %7330, float* %7334, align 4
  %7335 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 2
  store float %7331, float* %7335, align 4
  %7336 = getelementptr inbounds [4 x float], [4 x float]* %91, i32 0, i32 3
  store float %7332, float* %7336, align 4
  %7337 = fsub fast float %7329, %7234
  %7338 = fcmp fast olt float %7337, 0.000000e+00
  %7339 = select i1 %7338, float 0.000000e+00, float 1.000000e+00
  %7340 = fadd fast float %7339, %7309
  %7341 = fmul fast float %7339, %7337
  %7342 = fadd fast float %7341, %7310
  br label %7343

; <label>:7343                                    ; preds = %7343, %7308
  %7344 = phi i32 [ 1, %7308 ], [ %7355, %7343 ]
  %7345 = phi float [ %7342, %7308 ], [ %7354, %7343 ]
  %7346 = phi float [ %7340, %7308 ], [ %7352, %7343 ]
  %7347 = getelementptr [4 x float], [4 x float]* %91, i32 0, i32 %7344
  %7348 = load float, float* %7347, align 4, !tbaa !110, !noalias !100
  %7349 = fsub fast float %7348, %7234
  %7350 = fcmp fast olt float %7349, 0.000000e+00
  %7351 = select i1 %7350, float 0.000000e+00, float 1.000000e+00
  %7352 = fadd fast float %7351, %7346
  %7353 = fmul fast float %7351, %7349
  %7354 = fadd fast float %7353, %7345
  %7355 = add nuw nsw i32 %7344, 1
  %7356 = icmp eq i32 %7355, 4
  br i1 %7356, label %7357, label %7343, !llvm.loop !112

; <label>:7357                                    ; preds = %7343
  %7358 = add nuw nsw i32 %7311, 1
  %7359 = icmp eq i32 %7358, 8
  br i1 %7359, label %7360, label %7308, !llvm.loop !113

; <label>:7360                                    ; preds = %7357
  %7361 = fdiv fast float 1.000000e+00, %7352
  %7362 = fmul fast float %7361, %7354
  %7363 = fdiv fast float 1.000000e+00, %7234
  %7364 = fmul fast float %7362, %7363
  %7365 = call float @dx.op.unary.f32(i32 7, float %7364)  ; Saturate(value)
  %7366 = call float @dx.op.binary.f32(i32 35, float %7365, float 0.000000e+00)  ; FMax(a,b)
  %7367 = fmul fast float %7352, 3.125000e-02
  %7368 = call float @dx.op.unary.f32(i32 7, float %7367)  ; Saturate(value)
  %7369 = fmul fast float %7368, 2.000000e+00
  %7370 = fadd fast float %7369, -1.000000e+00
  %7371 = fcmp fast ogt float %7370, 0.000000e+00
  %7372 = fcmp fast olt float %7370, 0.000000e+00
  %7373 = zext i1 %7371 to i32
  %7374 = zext i1 %7372 to i32
  %7375 = sub nsw i32 %7373, %7374
  %7376 = sitofp i32 %7375 to float
  %7377 = fmul fast float %7376, %7370
  %7378 = fsub fast float 1.000000e+00, %7377
  %7379 = fmul fast float %7378, %7378
  %7380 = fmul fast float %7379, %7378
  %7381 = fsub fast float %7378, %7380
  %7382 = fmul fast float %7381, %7366
  %7383 = fsub fast float 1.000000e+00, %7380
  %7384 = fsub fast float %7383, %7382
  %7385 = fmul fast float %7376, 5.000000e-01
  %7386 = fmul fast float %7385, %7384
  %7387 = fsub fast float 5.000000e-01, %7386
  br label %7388

; <label>:7388                                    ; preds = %7360, %7236, %7221
  %7389 = phi float [ 1.000000e+00, %7221 ], [ %7302, %7236 ], [ %7387, %7360 ]
  %7390 = fcmp fast ogt float %6651, 0.000000e+00
  br i1 %7390, label %7391, label %7555, !dx.controlflow.hints !115

; <label>:7391                                    ; preds = %7388
  %7392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7393 = extractvalue %dx.types.CBufRet.f32 %7392, 0
  %7394 = fadd fast float %7393, %6541
  %7395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7396 = extractvalue %dx.types.CBufRet.f32 %7395, 2
  %7397 = extractvalue %dx.types.CBufRet.f32 %7395, 3
  %7398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7399 = extractvalue %dx.types.CBufRet.f32 %7398, 0
  %7400 = call float @dx.op.binary.f32(i32 35, float %7394, float 0.000000e+00)  ; FMax(a,b)
  %7401 = fadd fast float %7400, 0x3F10000000000000
  %7402 = fcmp fast oeq float %7399, 0.000000e+00
  br i1 %7402, label %7403, label %7470

; <label>:7403                                    ; preds = %7391
  %7404 = extractvalue %dx.types.CBufRet.f32 %7395, 1
  %7405 = extractvalue %dx.types.CBufRet.f32 %7395, 0
  %7406 = fmul fast float %7405, %6533
  %7407 = fmul fast float %7404, %6537
  %7408 = fadd fast float %7406, 5.000000e-01
  %7409 = call float @dx.op.unary.f32(i32 27, float %7408)  ; Round_ni(value)
  %7410 = fadd fast float %7407, 5.000000e-01
  %7411 = call float @dx.op.unary.f32(i32 27, float %7410)  ; Round_ni(value)
  %7412 = fsub fast float %7408, %7409
  %7413 = fsub fast float %7410, %7411
  %7414 = fadd fast float %7409, -5.000000e-01
  %7415 = fadd fast float %7411, -5.000000e-01
  %7416 = fmul fast float %7412, 2.000000e+00
  %7417 = fsub fast float 3.000000e+00, %7416
  %7418 = fadd fast float %7416, 1.000000e+00
  %7419 = fsub fast float 2.000000e+00, %7412
  %7420 = bitcast float %7417 to i32
  %7421 = sub nsw i32 2129859010, %7420
  %7422 = bitcast i32 %7421 to float
  %7423 = fmul fast float %7422, %7419
  %7424 = fadd fast float %7423, -1.000000e+00
  %7425 = bitcast float %7418 to i32
  %7426 = sub nsw i32 2129859010, %7425
  %7427 = bitcast i32 %7426 to float
  %7428 = fmul fast float %7427, %7412
  %7429 = fadd fast float %7428, 1.000000e+00
  %7430 = fmul fast float %7413, 2.000000e+00
  %7431 = fsub fast float 3.000000e+00, %7430
  %7432 = fadd fast float %7430, 1.000000e+00
  %7433 = fsub fast float 2.000000e+00, %7413
  %7434 = bitcast float %7431 to i32
  %7435 = sub nsw i32 2129859010, %7434
  %7436 = bitcast i32 %7435 to float
  %7437 = fmul fast float %7436, %7433
  %7438 = fadd fast float %7437, -1.000000e+00
  %7439 = bitcast float %7432 to i32
  %7440 = sub nsw i32 2129859010, %7439
  %7441 = bitcast i32 %7440 to float
  %7442 = fmul fast float %7441, %7413
  %7443 = fadd fast float %7442, 1.000000e+00
  %7444 = fadd fast float %7424, %7414
  %7445 = fmul fast float %7444, %7396
  %7446 = fadd fast float %7438, %7415
  %7447 = fmul fast float %7446, %7397
  %7448 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7445, float %7447, float undef, float undef, i32 0, i32 0, i32 undef, float %7401)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7449 = extractvalue %dx.types.ResRet.f32 %7448, 0
  %7450 = fmul fast float %7449, %7417
  %7451 = fadd fast float %7429, %7414
  %7452 = fmul fast float %7451, %7396
  %7453 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7452, float %7447, float undef, float undef, i32 0, i32 0, i32 undef, float %7401)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7454 = extractvalue %dx.types.ResRet.f32 %7453, 0
  %7455 = fmul fast float %7454, %7418
  %7456 = fadd fast float %7443, %7415
  %7457 = fmul fast float %7456, %7397
  %7458 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7445, float %7457, float undef, float undef, i32 0, i32 0, i32 undef, float %7401)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7459 = extractvalue %dx.types.ResRet.f32 %7458, 0
  %7460 = fmul fast float %7459, %7417
  %7461 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7452, float %7457, float undef, float undef, i32 0, i32 0, i32 undef, float %7401)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7462 = extractvalue %dx.types.ResRet.f32 %7461, 0
  %7463 = fmul fast float %7462, %7418
  %7464 = fadd fast float %7463, %7460
  %7465 = fmul fast float %7464, %7432
  %7466 = fadd fast float %7455, %7450
  %7467 = fmul fast float %7466, %7431
  %7468 = fadd fast float %7467, %7465
  %7469 = fmul fast float %7468, 6.250000e-02
  br label %7555

; <label>:7470                                    ; preds = %7391
  %7471 = fmul fast float %228, 0x401921FB60000000
  %7472 = call float @dx.op.unary.f32(i32 13, float %7471)  ; Sin(value)
  %7473 = call float @dx.op.unary.f32(i32 12, float %7471)  ; Cos(value)
  %7474 = fsub fast float -0.000000e+00, %7472
  br label %7475

; <label>:7475                                    ; preds = %7524, %7470
  %7476 = phi float [ 0.000000e+00, %7470 ], [ %7519, %7524 ]
  %7477 = phi float [ 0.000000e+00, %7470 ], [ %7521, %7524 ]
  %7478 = phi i32 [ 0, %7470 ], [ %7525, %7524 ]
  %7479 = mul i32 %7478, 2
  %7480 = add i32 0, %7479
  %7481 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7480
  %7482 = load float, float* %7481, align 4
  %7483 = mul i32 %7478, 2
  %7484 = add i32 1, %7483
  %7485 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7484
  %7486 = load float, float* %7485, align 4
  %7487 = fmul fast float %7482, %7473
  %7488 = call float @dx.op.tertiary.f32(i32 46, float %7486, float %7474, float %7487)  ; FMad(a,b,c)
  %7489 = fmul fast float %7482, %7472
  %7490 = call float @dx.op.tertiary.f32(i32 46, float %7486, float %7473, float %7489)  ; FMad(a,b,c)
  %7491 = fmul fast float %7488, %7399
  %7492 = fmul fast float %7490, %7399
  %7493 = fadd fast float %7491, %6533
  %7494 = fadd fast float %7492, %6537
  %7495 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %45, float %7493, float %7494, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7496 = extractvalue %dx.types.ResRet.f32 %7495, 0
  %7497 = extractvalue %dx.types.ResRet.f32 %7495, 1
  %7498 = extractvalue %dx.types.ResRet.f32 %7495, 2
  %7499 = extractvalue %dx.types.ResRet.f32 %7495, 3
  %7500 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %7496, float* %7500, align 4
  %7501 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %7497, float* %7501, align 4
  %7502 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %7498, float* %7502, align 4
  %7503 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %7499, float* %7503, align 4
  %7504 = fsub fast float %7496, %7401
  %7505 = fcmp fast olt float %7504, 0.000000e+00
  %7506 = select i1 %7505, float 0.000000e+00, float 1.000000e+00
  %7507 = fadd fast float %7506, %7476
  %7508 = fmul fast float %7506, %7504
  %7509 = fadd fast float %7508, %7477
  br label %7510

; <label>:7510                                    ; preds = %7510, %7475
  %7511 = phi i32 [ 1, %7475 ], [ %7522, %7510 ]
  %7512 = phi float [ %7509, %7475 ], [ %7521, %7510 ]
  %7513 = phi float [ %7507, %7475 ], [ %7519, %7510 ]
  %7514 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %7511
  %7515 = load float, float* %7514, align 4, !tbaa !110, !noalias !100
  %7516 = fsub fast float %7515, %7401
  %7517 = fcmp fast olt float %7516, 0.000000e+00
  %7518 = select i1 %7517, float 0.000000e+00, float 1.000000e+00
  %7519 = fadd fast float %7518, %7513
  %7520 = fmul fast float %7518, %7516
  %7521 = fadd fast float %7520, %7512
  %7522 = add nuw nsw i32 %7511, 1
  %7523 = icmp eq i32 %7522, 4
  br i1 %7523, label %7524, label %7510, !llvm.loop !112

; <label>:7524                                    ; preds = %7510
  %7525 = add nuw nsw i32 %7478, 1
  %7526 = icmp eq i32 %7525, 8
  br i1 %7526, label %7527, label %7475, !llvm.loop !113

; <label>:7527                                    ; preds = %7524
  %7528 = fdiv fast float 1.000000e+00, %7519
  %7529 = fmul fast float %7528, %7521
  %7530 = fdiv fast float 1.000000e+00, %7401
  %7531 = fmul fast float %7529, %7530
  %7532 = call float @dx.op.unary.f32(i32 7, float %7531)  ; Saturate(value)
  %7533 = call float @dx.op.binary.f32(i32 35, float %7532, float 0.000000e+00)  ; FMax(a,b)
  %7534 = fmul fast float %7519, 3.125000e-02
  %7535 = call float @dx.op.unary.f32(i32 7, float %7534)  ; Saturate(value)
  %7536 = fmul fast float %7535, 2.000000e+00
  %7537 = fadd fast float %7536, -1.000000e+00
  %7538 = fcmp fast ogt float %7537, 0.000000e+00
  %7539 = fcmp fast olt float %7537, 0.000000e+00
  %7540 = zext i1 %7538 to i32
  %7541 = zext i1 %7539 to i32
  %7542 = sub nsw i32 %7540, %7541
  %7543 = sitofp i32 %7542 to float
  %7544 = fmul fast float %7543, %7537
  %7545 = fsub fast float 1.000000e+00, %7544
  %7546 = fmul fast float %7545, %7545
  %7547 = fmul fast float %7546, %7545
  %7548 = fsub fast float %7545, %7547
  %7549 = fmul fast float %7548, %7533
  %7550 = fsub fast float 1.000000e+00, %7547
  %7551 = fsub fast float %7550, %7549
  %7552 = fmul fast float %7543, 5.000000e-01
  %7553 = fmul fast float %7552, %7551
  %7554 = fsub fast float 5.000000e-01, %7553
  br label %7555

; <label>:7555                                    ; preds = %7527, %7403, %7388
  %7556 = phi float [ 1.000000e+00, %7388 ], [ %7469, %7403 ], [ %7554, %7527 ]
  %7557 = fsub fast float %7222, %7057
  %7558 = fmul fast float %7557, %6595
  %7559 = fadd fast float %7558, %7057
  %7560 = fsub fast float %7389, %7559
  %7561 = fmul fast float %7560, %6625
  %7562 = fadd fast float %7561, %7559
  %7563 = fsub fast float %7556, %7562
  %7564 = fmul fast float %7563, %6651
  %7565 = fadd fast float %7564, %7562
  %7566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7567 = extractvalue %dx.types.CBufRet.f32 %7566, 2
  %7568 = fcmp fast ogt float %7567, 0.000000e+00
  br i1 %7568, label %7569, label %7609, !dx.controlflow.hints !116

; <label>:7569                                    ; preds = %7555
  %7570 = fcmp fast ugt float %7567, 0.000000e+00
  br i1 %7570, label %7571, label %7606

; <label>:7571                                    ; preds = %7569
  %7572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7573 = extractvalue %dx.types.CBufRet.f32 %7572, 0
  %7574 = extractvalue %dx.types.CBufRet.f32 %7572, 1
  %7575 = extractvalue %dx.types.CBufRet.f32 %7572, 2
  %7576 = extractvalue %dx.types.CBufRet.f32 %7572, 3
  %7577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7578 = extractvalue %dx.types.CBufRet.f32 %7577, 0
  %7579 = extractvalue %dx.types.CBufRet.f32 %7577, 1
  %7580 = extractvalue %dx.types.CBufRet.f32 %7577, 2
  %7581 = extractvalue %dx.types.CBufRet.f32 %7577, 3
  %7582 = extractvalue %dx.types.CBufRet.f32 %7566, 0
  %7583 = extractvalue %dx.types.CBufRet.f32 %7566, 1
  %7584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7585 = extractvalue %dx.types.CBufRet.f32 %7584, 0
  %7586 = extractvalue %dx.types.CBufRet.f32 %7584, 1
  %7587 = extractvalue %dx.types.CBufRet.f32 %7584, 2
  %7588 = fadd fast float %7585, %6510
  %7589 = fadd fast float %7586, %6511
  %7590 = fadd fast float %7587, %6512
  %7591 = fmul fast float %7588, %7573
  %7592 = call float @dx.op.tertiary.f32(i32 46, float %7574, float %7589, float %7591)  ; FMad(a,b,c)
  %7593 = call float @dx.op.tertiary.f32(i32 46, float %7575, float %7590, float %7592)  ; FMad(a,b,c)
  %7594 = fadd fast float %7593, %7576
  %7595 = fmul fast float %7588, %7578
  %7596 = call float @dx.op.tertiary.f32(i32 46, float %7579, float %7589, float %7595)  ; FMad(a,b,c)
  %7597 = call float @dx.op.tertiary.f32(i32 46, float %7580, float %7590, float %7596)  ; FMad(a,b,c)
  %7598 = fadd fast float %7597, %7581
  %7599 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %41, float %7594, float %7598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7600 = extractvalue %dx.types.ResRet.f32 %7599, 0
  %7601 = fmul fast float %7600, %7583
  %7602 = fadd fast float %7601, %7582
  %7603 = call float @dx.op.unary.f32(i32 7, float %7602)  ; Saturate(value)
  %7604 = fmul fast float %7603, %7567
  %7605 = fsub fast float 1.000000e+00, %7604
  br label %7606

; <label>:7606                                    ; preds = %7571, %7569
  %7607 = phi float [ %7605, %7571 ], [ 1.000000e+00, %7569 ]
  %7608 = fmul fast float %7607, %7565
  br label %7609

; <label>:7609                                    ; preds = %7606, %7555, %6490
  %7610 = phi float [ 1.000000e+00, %6490 ], [ %7608, %7606 ], [ %7565, %7555 ]
  %7611 = call float @dx.op.binary.f32(i32 36, float %7610, float %7610)  ; FMin(a,b)
  %7612 = call float @dx.op.binary.f32(i32 36, float %7610, float %7611)  ; FMin(a,b)
  %7613 = fcmp fast ogt float %7612, 0.000000e+00
  br i1 %7613, label %7614, label %7780, !dx.controlflow.hints !117

; <label>:7614                                    ; preds = %7609
  %7615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7616 = extractvalue %dx.types.CBufRet.f32 %7615, 0
  %7617 = extractvalue %dx.types.CBufRet.f32 %7615, 1
  %7618 = extractvalue %dx.types.CBufRet.f32 %7615, 2
  %7619 = extractvalue %dx.types.CBufRet.f32 %7615, 3
  %7620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7621 = extractvalue %dx.types.CBufRet.f32 %7620, 0
  %7622 = extractvalue %dx.types.CBufRet.f32 %7620, 1
  %7623 = extractvalue %dx.types.CBufRet.f32 %7620, 2
  %7624 = extractvalue %dx.types.CBufRet.f32 %7620, 3
  %7625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7626 = extractvalue %dx.types.CBufRet.f32 %7625, 0
  %7627 = extractvalue %dx.types.CBufRet.f32 %7625, 1
  %7628 = extractvalue %dx.types.CBufRet.f32 %7625, 2
  %7629 = extractvalue %dx.types.CBufRet.f32 %7625, 3
  %7630 = fmul fast float %7616, %6510
  %7631 = call float @dx.op.tertiary.f32(i32 46, float %6511, float %7617, float %7630)  ; FMad(a,b,c)
  %7632 = call float @dx.op.tertiary.f32(i32 46, float %6512, float %7618, float %7631)  ; FMad(a,b,c)
  %7633 = fadd fast float %7632, %7619
  %7634 = fmul fast float %7621, %6510
  %7635 = call float @dx.op.tertiary.f32(i32 46, float %6511, float %7622, float %7634)  ; FMad(a,b,c)
  %7636 = call float @dx.op.tertiary.f32(i32 46, float %6512, float %7623, float %7635)  ; FMad(a,b,c)
  %7637 = fadd fast float %7636, %7624
  %7638 = fmul fast float %7626, %6510
  %7639 = call float @dx.op.tertiary.f32(i32 46, float %6511, float %7627, float %7638)  ; FMad(a,b,c)
  %7640 = call float @dx.op.tertiary.f32(i32 46, float %6512, float %7628, float %7639)  ; FMad(a,b,c)
  %7641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7642 = extractvalue %dx.types.CBufRet.f32 %7641, 0
  %7643 = extractvalue %dx.types.CBufRet.f32 %7641, 1
  %7644 = extractvalue %dx.types.CBufRet.f32 %7641, 3
  %7645 = fmul fast float %7644, %7633
  %7646 = fmul fast float %7644, %7637
  %7647 = fadd fast float %7645, %7642
  %7648 = fadd fast float %7646, %7643
  %7649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7650 = extractvalue %dx.types.CBufRet.f32 %7649, 0
  %7651 = extractvalue %dx.types.CBufRet.f32 %7649, 1
  %7652 = fsub fast float %7647, %7650
  %7653 = fsub fast float %7648, %7651
  %7654 = fcmp fast olt float %7652, 0.000000e+00
  %7655 = fcmp fast olt float %7653, 0.000000e+00
  %7656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7657 = extractvalue %dx.types.CBufRet.f32 %7656, 0
  %7658 = extractvalue %dx.types.CBufRet.f32 %7656, 1
  %7659 = extractvalue %dx.types.CBufRet.f32 %7656, 2
  %7660 = extractvalue %dx.types.CBufRet.f32 %7656, 3
  %7661 = select i1 %7654, float %7657, float %7659
  %7662 = select i1 %7655, float %7658, float %7660
  %7663 = fmul fast float %7661, %7652
  %7664 = fmul fast float %7662, %7653
  %7665 = call float @dx.op.unary.f32(i32 6, float %7663)  ; FAbs(value)
  %7666 = call float @dx.op.unary.f32(i32 6, float %7664)  ; FAbs(value)
  %7667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7668 = extractvalue %dx.types.CBufRet.f32 %7667, 0
  %7669 = call float @dx.op.binary.f32(i32 35, float %7665, float %7666)  ; FMax(a,b)
  %7670 = fsub fast float %7668, %7669
  %7671 = call float @dx.op.unary.f32(i32 7, float %7670)  ; Saturate(value)
  %7672 = fcmp fast ogt float %7671, 0.000000e+00
  br i1 %7672, label %7673, label %7714, !dx.controlflow.hints !118

; <label>:7673                                    ; preds = %7614
  %7674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %7647, float %7648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7675 = extractvalue %dx.types.ResRet.f32 %7674, 1
  %7676 = fcmp fast ogt float %7675, 0.000000e+00
  br i1 %7676, label %7677, label %7709

; <label>:7677                                    ; preds = %7673
  %7678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %7647, float %7648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7679 = extractvalue %dx.types.ResRet.f32 %7678, 0
  %7680 = extractvalue %dx.types.ResRet.f32 %7678, 1
  %7681 = extractvalue %dx.types.ResRet.f32 %7678, 2
  %7682 = extractvalue %dx.types.ResRet.f32 %7678, 3
  %7683 = fsub fast float 1.000000e+00, %7629
  %7684 = fsub fast float %7683, %7640
  %7685 = fmul fast float %7684, 0x400921FB60000000
  %7686 = fadd fast float %7685, 0x3FF921FB60000000
  %7687 = call float @dx.op.unary.f32(i32 13, float %7686)  ; Sin(value)
  %7688 = fadd fast float %7687, -1.000000e+00
  %7689 = fmul fast float %7688, 0x3FD45F3060000000
  %7690 = fmul fast float %7684, 0x401921FB60000000
  %7691 = fadd fast float %7690, 0x400921FB60000000
  %7692 = call float @dx.op.unary.f32(i32 13, float %7691)  ; Sin(value)
  %7693 = fadd fast float %7692, 0x3E7777A5C0000000
  %7694 = fmul fast float %7693, 0x3FC45F3060000000
  %7695 = fmul fast float %7684, 0x4022D97C80000000
  %7696 = fadd fast float %7695, 0x4012D97C80000000
  %7697 = call float @dx.op.unary.f32(i32 13, float %7696)  ; Sin(value)
  %7698 = fadd fast float %7697, 1.000000e+00
  %7699 = fmul fast float %7698, 0x3FBB2995E0000000
  %7700 = fmul fast float %7684, 0x402921FB60000000
  %7701 = fadd fast float %7700, 0x401921FB60000000
  %7702 = call float @dx.op.unary.f32(i32 13, float %7701)  ; Sin(value)
  %7703 = fadd fast float %7702, 0xBE8777A5C0000000
  %7704 = fmul fast float %7703, 0x3FB45F3060000000
  %7705 = call float @dx.op.dot4.f32(i32 56, float %7679, float %7680, float %7681, float %7682, float %7689, float %7694, float %7699, float %7704)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7706 = fmul fast float %7705, 0xBFF7154760000000
  %7707 = call float @dx.op.unary.f32(i32 21, float %7706)  ; Exp(value)
  %7708 = call float @dx.op.unary.f32(i32 7, float %7707)  ; Saturate(value)
  br label %7709

; <label>:7709                                    ; preds = %7677, %7673
  %7710 = phi float [ %7708, %7677 ], [ 1.000000e+00, %7673 ]
  %7711 = fadd fast float %7710, -1.000000e+00
  %7712 = fmul fast float %7711, %7671
  %7713 = fadd fast float %7712, 1.000000e+00
  br label %7714

; <label>:7714                                    ; preds = %7709, %7614
  %7715 = phi float [ %7713, %7709 ], [ 1.000000e+00, %7614 ]
  %7716 = fmul fast float %7715, %7610
  %7717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7718 = extractvalue %dx.types.CBufRet.f32 %7717, 0
  %7719 = extractvalue %dx.types.CBufRet.f32 %7717, 1
  %7720 = extractvalue %dx.types.CBufRet.f32 %7717, 2
  %7721 = fadd fast float %7718, %154
  %7722 = fadd fast float %7719, %155
  %7723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7724 = extractvalue %dx.types.CBufRet.f32 %7723, 1
  %7725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7726 = extractvalue %dx.types.CBufRet.f32 %7725, 0
  %7727 = extractvalue %dx.types.CBufRet.f32 %7725, 1
  %7728 = extractvalue %dx.types.CBufRet.f32 %7725, 2
  %7729 = fsub fast float -0.000000e+00, %7721
  %7730 = fsub fast float -0.000000e+00, %7722
  %7731 = fsub fast float -0.000000e+00, %156
  %7732 = fsub fast float %7731, %7720
  %7733 = fadd fast float %7732, %7724
  %7734 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7729, float %7730, float %7733)  ; Dot3(ax,ay,az,bx,by,bz)
  %7735 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7726, float %7727, float %7728)  ; Dot3(ax,ay,az,bx,by,bz)
  %7736 = fdiv fast float 1.000000e+00, %7735
  %7737 = fmul fast float %7736, %7734
  %7738 = fmul fast float %7726, %7737
  %7739 = fmul fast float %7727, %7737
  %7740 = fadd fast float %7738, %7721
  %7741 = fadd fast float %7739, %7722
  %7742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7743 = extractvalue %dx.types.CBufRet.f32 %7742, 0
  %7744 = extractvalue %dx.types.CBufRet.f32 %7742, 1
  %7745 = fsub fast float %7740, %7743
  %7746 = fsub fast float %7741, %7744
  %7747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7748 = extractvalue %dx.types.CBufRet.f32 %7747, 2
  %7749 = extractvalue %dx.types.CBufRet.f32 %7747, 3
  %7750 = fmul fast float %7745, %7748
  %7751 = fmul fast float %7746, %7749
  %7752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7753 = extractvalue %dx.types.CBufRet.i32 %7752, 3
  %7754 = icmp eq i32 %7753, 0
  br i1 %7754, label %7760, label %7755

; <label>:7755                                    ; preds = %7714
  %7756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7750, float %7751, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7757 = extractvalue %dx.types.ResRet.f32 %7756, 0
  %7758 = extractvalue %dx.types.ResRet.f32 %7756, 1
  %7759 = extractvalue %dx.types.ResRet.f32 %7756, 2
  br label %7765

; <label>:7760                                    ; preds = %7714
  %7761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %7750, float %7751, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7762 = extractvalue %dx.types.ResRet.f32 %7761, 0
  %7763 = extractvalue %dx.types.ResRet.f32 %7761, 1
  %7764 = extractvalue %dx.types.ResRet.f32 %7761, 2
  br label %7765

; <label>:7765                                    ; preds = %7760, %7755
  %7766 = phi float [ %7757, %7755 ], [ %7762, %7760 ]
  %7767 = phi float [ %7758, %7755 ], [ %7763, %7760 ]
  %7768 = phi float [ %7759, %7755 ], [ %7764, %7760 ]
  %7769 = extractvalue %dx.types.CBufRet.f32 %7723, 2
  %7770 = fmul fast float %7769, %7766
  %7771 = extractvalue %dx.types.CBufRet.f32 %7723, 0
  %7772 = fsub fast float %7737, %7771
  %7773 = fsub fast float %7772, %7770
  %7774 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7773)  ; FMax(a,b)
  %7775 = fmul fast float %7774, %7767
  %7776 = call float @dx.op.binary.f32(i32 36, float %7768, float %7775)  ; FMin(a,b)
  %7777 = fmul fast float %7776, 0xBFF7154760000000
  %7778 = call float @dx.op.unary.f32(i32 21, float %7777)  ; Exp(value)
  %7779 = fmul fast float %7716, %7778
  br label %7780

; <label>:7780                                    ; preds = %7765, %7609
  %7781 = phi float [ %7779, %7765 ], [ %7610, %7609 ]
  %7782 = call float @dx.op.binary.f32(i32 36, float %7781, float %7781)  ; FMin(a,b)
  %7783 = call float @dx.op.binary.f32(i32 36, float %7781, float %7782)  ; FMin(a,b)
  %7784 = fcmp fast ogt float %7783, 0.000000e+00
  br i1 %7784, label %7785, label %8093, !dx.controlflow.hints !119

; <label>:7785                                    ; preds = %7780
  %7786 = bitcast i32 %5481 to float
  %7787 = fmul fast float %7781, %6502
  %7788 = fmul fast float %7781, %6503
  %7789 = fmul fast float %7781, %6504
  %7790 = fsub fast float %6491, %5409
  %7791 = fsub fast float %6492, %5408
  %7792 = fsub fast float %6493, %5407
  %7793 = call float @dx.op.dot3.f32(i32 55, float %7790, float %7791, float %7792, float %7790, float %7791, float %7792)  ; Dot3(ax,ay,az,bx,by,bz)
  %7794 = call float @dx.op.unary.f32(i32 25, float %7793)  ; Rsqrt(value)
  %7795 = fmul fast float %7794, %7790
  %7796 = fmul fast float %7794, %7791
  %7797 = fmul fast float %7794, %7792
  %7798 = call float @dx.op.dot3.f32(i32 55, float %6491, float %6492, float %6493, float %5413, float %5414, float %5415)  ; Dot3(ax,ay,az,bx,by,bz)
  %7799 = call float @dx.op.dot3.f32(i32 55, float %5406, float %5405, float %5404, float %7795, float %7796, float %7797)  ; Dot3(ax,ay,az,bx,by,bz)
  %7800 = call float @dx.op.unary.f32(i32 7, float %7798)  ; Saturate(value)
  %7801 = fmul fast float %7800, %7800
  %7802 = fmul fast float %7801, %7786
  %7803 = call float @dx.op.unary.f32(i32 7, float %7802)  ; Saturate(value)
  %7804 = fmul fast float %7803, %7800
  %7805 = call float @dx.op.dot3.f32(i32 55, float %5413, float %5414, float %5415, float %7795, float %7796, float %7797)  ; Dot3(ax,ay,az,bx,by,bz)
  %7806 = fmul fast float %7805, %7805
  %7807 = call float @dx.op.unary.f32(i32 6, float %7798)  ; FAbs(value)
  %7808 = fsub fast float 1.000000e+00, %5475
  %7809 = fmul fast float %5457, %5457
  %7810 = fmul fast float %7809, %7808
  %7811 = fadd fast float %7810, %5475
  %7812 = bitcast float %7811 to i32
  %7813 = ashr i32 %7812, 1
  %7814 = add nsw i32 %7813, 532487669
  %7815 = bitcast i32 %7814 to float
  %7816 = fadd fast float %7815, %5457
  %7817 = fmul fast float %5475, %7806
  %7818 = fsub fast float 1.000000e+00, %7806
  %7819 = fadd fast float %7818, %7817
  %7820 = fmul fast float %7807, %7807
  %7821 = fmul fast float %7820, %7808
  %7822 = fadd fast float %7821, %5475
  %7823 = bitcast float %7822 to i32
  %7824 = ashr i32 %7823, 1
  %7825 = add nsw i32 %7824, 532487669
  %7826 = bitcast i32 %7825 to float
  %7827 = fadd fast float %7826, %7807
  %7828 = fmul fast float %7819, %7819
  %7829 = fmul fast float %7828, %7816
  %7830 = fmul fast float %7829, %7827
  %7831 = fdiv fast float 0x3FF0A00000000000, %7830
  %7832 = fmul fast float %7831, %5475
  %7833 = fmul fast float %5717, 0x3FF9999980000000
  %7834 = fsub fast float 5.000000e+00, %7833
  %7835 = call float @dx.op.unary.f32(i32 6, float %7799)  ; FAbs(value)
  %7836 = fsub fast float 1.000000e+00, %7835
  %7837 = fmul fast float %5717, 0x41D9660740000000
  %7838 = fadd fast float %7837, 0xC1EFBF8940000000
  %7839 = bitcast float %7836 to i32
  %7840 = sitofp i32 %7839 to float
  %7841 = fmul fast float %7840, %7834
  %7842 = fadd fast float %7838, %7841
  %7843 = fptosi float %7842 to i32
  %7844 = bitcast i32 %7843 to float
  %7845 = fsub fast float 1.000000e+00, %5410
  %7846 = fsub fast float 1.000000e+00, %5411
  %7847 = fsub fast float 1.000000e+00, %5455
  %7848 = fmul fast float %7844, %7845
  %7849 = fmul fast float %7844, %7846
  %7850 = fmul fast float %7844, %7847
  %7851 = fadd fast float %7848, %5410
  %7852 = fadd fast float %7849, %5411
  %7853 = fadd fast float %7850, %5455
  br i1 %5740, label %7854, label %7877

; <label>:7854                                    ; preds = %7785
  %7855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5069, float %7835, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7856 = extractvalue %dx.types.ResRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.ResRet.f32 %7855, 1
  %7858 = extractvalue %dx.types.ResRet.f32 %7855, 2
  %7859 = fadd fast float %7856, -5.000000e-01
  %7860 = fadd fast float %7857, -5.000000e-01
  %7861 = fadd fast float %7858, -5.000000e-01
  %7862 = fmul fast float %5410, 4.000000e+00
  %7863 = fmul fast float %7862, %7845
  %7864 = fmul fast float %7863, %7859
  %7865 = fmul fast float %5411, 4.000000e+00
  %7866 = fmul fast float %7865, %7846
  %7867 = fmul fast float %7866, %7860
  %7868 = fmul fast float %5455, 4.000000e+00
  %7869 = fmul fast float %7868, %7847
  %7870 = fmul fast float %7869, %7861
  %7871 = fadd fast float %7864, %7851
  %7872 = fadd fast float %7867, %7852
  %7873 = fadd fast float %7870, %7853
  %7874 = call float @dx.op.unary.f32(i32 7, float %7871)  ; Saturate(value)
  %7875 = call float @dx.op.unary.f32(i32 7, float %7872)  ; Saturate(value)
  %7876 = call float @dx.op.unary.f32(i32 7, float %7873)  ; Saturate(value)
  br label %7877

; <label>:7877                                    ; preds = %7854, %7785
  %7878 = phi float [ %7874, %7854 ], [ %7851, %7785 ]
  %7879 = phi float [ %7875, %7854 ], [ %7852, %7785 ]
  %7880 = phi float [ %7876, %7854 ], [ %7853, %7785 ]
  %7881 = fmul fast float %7798, 9.843750e-01
  %7882 = fadd fast float %7881, 7.812500e-03
  %7883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %7882, float %5721, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7884 = extractvalue %dx.types.ResRet.f32 %7883, 0
  %7885 = extractvalue %dx.types.ResRet.f32 %7883, 1
  %7886 = extractvalue %dx.types.ResRet.f32 %7883, 2
  %7887 = extractvalue %dx.types.ResRet.f32 %7883, 3
  %7888 = fsub fast float %7886, %7884
  %7889 = fsub fast float %7887, %7885
  %7890 = fmul fast float %7888, %5727
  %7891 = fmul fast float %7889, %5727
  %7892 = fadd fast float %7890, %7884
  %7893 = fadd fast float %7891, %7885
  %7894 = fmul fast float %7892, %5410
  %7895 = fmul fast float %7892, %5411
  %7896 = fmul fast float %7892, %5455
  %7897 = fadd fast float %7894, %7893
  %7898 = fadd fast float %7895, %7893
  %7899 = fadd fast float %7896, %7893
  br i1 %5740, label %7900, label %7923

; <label>:7900                                    ; preds = %7877
  %7901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5069, float %7798, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7902 = extractvalue %dx.types.ResRet.f32 %7901, 0
  %7903 = extractvalue %dx.types.ResRet.f32 %7901, 1
  %7904 = extractvalue %dx.types.ResRet.f32 %7901, 2
  %7905 = fadd fast float %7902, -5.000000e-01
  %7906 = fadd fast float %7903, -5.000000e-01
  %7907 = fadd fast float %7904, -5.000000e-01
  %7908 = fmul fast float %5410, 4.000000e+00
  %7909 = fmul fast float %7908, %7845
  %7910 = fmul fast float %7909, %7905
  %7911 = fmul fast float %5411, 4.000000e+00
  %7912 = fmul fast float %7911, %7846
  %7913 = fmul fast float %7912, %7906
  %7914 = fmul fast float %5455, 4.000000e+00
  %7915 = fmul fast float %7914, %7847
  %7916 = fmul fast float %7915, %7907
  %7917 = fadd fast float %7910, %7897
  %7918 = fadd fast float %7913, %7898
  %7919 = fadd fast float %7916, %7899
  %7920 = call float @dx.op.unary.f32(i32 7, float %7917)  ; Saturate(value)
  %7921 = call float @dx.op.unary.f32(i32 7, float %7918)  ; Saturate(value)
  %7922 = call float @dx.op.unary.f32(i32 7, float %7919)  ; Saturate(value)
  br label %7923

; <label>:7923                                    ; preds = %7900, %7877
  %7924 = phi float [ %7920, %7900 ], [ %7897, %7877 ]
  %7925 = phi float [ %7921, %7900 ], [ %7898, %7877 ]
  %7926 = phi float [ %7922, %7900 ], [ %7899, %7877 ]
  %7927 = call float @dx.op.binary.f32(i32 35, float %7925, float %7926)  ; FMax(a,b)
  %7928 = call float @dx.op.binary.f32(i32 35, float %7924, float %7927)  ; FMax(a,b)
  %7929 = fsub fast float 1.000000e+00, %7928
  %7930 = call float @dx.op.binary.f32(i32 35, float %7807, float 0x3F50624DE0000000)  ; FMax(a,b)
  %7931 = fdiv fast float %4419, %7930
  %7932 = fmul fast float %6262, %7931
  %7933 = fmul fast float %6264, %7931
  %7934 = fmul fast float %6266, %7931
  %7935 = call float @dx.op.unary.f32(i32 21, float %7932)  ; Exp(value)
  %7936 = call float @dx.op.unary.f32(i32 21, float %7933)  ; Exp(value)
  %7937 = call float @dx.op.unary.f32(i32 21, float %7934)  ; Exp(value)
  %7938 = call float @dx.op.unary.f32(i32 7, float %7935)  ; Saturate(value)
  %7939 = call float @dx.op.unary.f32(i32 7, float %7936)  ; Saturate(value)
  %7940 = call float @dx.op.unary.f32(i32 7, float %7937)  ; Saturate(value)
  %7941 = select i1 %6259, float %7938, float 0.000000e+00
  %7942 = select i1 %6260, float %7939, float 0.000000e+00
  %7943 = select i1 %6261, float %7940, float 0.000000e+00
  %7944 = fsub fast float -0.000000e+00, %5413
  %7945 = fsub fast float -0.000000e+00, %5414
  %7946 = fsub fast float -0.000000e+00, %5415
  %7947 = call float @dx.op.dot3.f32(i32 55, float %6491, float %6492, float %6493, float %7944, float %7945, float %7946)  ; Dot3(ax,ay,az,bx,by,bz)
  %7948 = call float @dx.op.unary.f32(i32 7, float %7947)  ; Saturate(value)
  %7949 = fmul fast float %7948, 9.843750e-01
  %7950 = fadd fast float %7949, 7.812500e-03
  %7951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %7950, float %5721, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7952 = extractvalue %dx.types.ResRet.f32 %7951, 0
  %7953 = extractvalue %dx.types.ResRet.f32 %7951, 1
  %7954 = extractvalue %dx.types.ResRet.f32 %7951, 2
  %7955 = extractvalue %dx.types.ResRet.f32 %7951, 3
  %7956 = fsub fast float %7954, %7952
  %7957 = fsub fast float %7955, %7953
  %7958 = fmul fast float %7956, %5727
  %7959 = fmul fast float %7957, %5727
  %7960 = fadd fast float %7958, %7952
  %7961 = fadd fast float %7959, %7953
  %7962 = fmul fast float %7960, %5410
  %7963 = fmul fast float %7960, %5411
  %7964 = fmul fast float %7960, %5455
  %7965 = fadd fast float %7962, %7961
  %7966 = fadd fast float %7963, %7961
  %7967 = fadd fast float %7964, %7961
  br i1 %5740, label %7968, label %7991

; <label>:7968                                    ; preds = %7923
  %7969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5069, float %7948, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7970 = extractvalue %dx.types.ResRet.f32 %7969, 0
  %7971 = extractvalue %dx.types.ResRet.f32 %7969, 1
  %7972 = extractvalue %dx.types.ResRet.f32 %7969, 2
  %7973 = fadd fast float %7970, -5.000000e-01
  %7974 = fadd fast float %7971, -5.000000e-01
  %7975 = fadd fast float %7972, -5.000000e-01
  %7976 = fmul fast float %5410, 4.000000e+00
  %7977 = fmul fast float %7976, %7845
  %7978 = fmul fast float %7977, %7973
  %7979 = fmul fast float %5411, 4.000000e+00
  %7980 = fmul fast float %7979, %7846
  %7981 = fmul fast float %7980, %7974
  %7982 = fmul fast float %5455, 4.000000e+00
  %7983 = fmul fast float %7982, %7847
  %7984 = fmul fast float %7983, %7975
  %7985 = fadd fast float %7978, %7965
  %7986 = fadd fast float %7981, %7966
  %7987 = fadd fast float %7984, %7967
  %7988 = call float @dx.op.unary.f32(i32 7, float %7985)  ; Saturate(value)
  %7989 = call float @dx.op.unary.f32(i32 7, float %7986)  ; Saturate(value)
  %7990 = call float @dx.op.unary.f32(i32 7, float %7987)  ; Saturate(value)
  br label %7991

; <label>:7991                                    ; preds = %7968, %7923
  %7992 = phi float [ %7988, %7968 ], [ %7965, %7923 ]
  %7993 = phi float [ %7989, %7968 ], [ %7966, %7923 ]
  %7994 = phi float [ %7990, %7968 ], [ %7967, %7923 ]
  %7995 = call float @dx.op.binary.f32(i32 35, float %7993, float %7994)  ; FMax(a,b)
  %7996 = call float @dx.op.binary.f32(i32 35, float %7992, float %7995)  ; FMax(a,b)
  %7997 = fsub fast float 1.000000e+00, %7996
  %7998 = fmul fast float %5472, %6326
  %7999 = fadd fast float %6320, %7998
  %8000 = call float @dx.op.unary.f32(i32 7, float %7999)  ; Saturate(value)
  %8001 = fsub fast float %6491, %5463
  %8002 = fsub fast float %6492, %5464
  %8003 = fsub fast float %6493, %5465
  %8004 = call float @dx.op.dot3.f32(i32 55, float %8001, float %8002, float %8003, float %8001, float %8002, float %8003)  ; Dot3(ax,ay,az,bx,by,bz)
  %8005 = call float @dx.op.unary.f32(i32 25, float %8004)  ; Rsqrt(value)
  %8006 = fmul fast float %8005, %8001
  %8007 = fmul fast float %8005, %8002
  %8008 = fmul fast float %8005, %8003
  %8009 = call float @dx.op.dot3.f32(i32 55, float %7944, float %7945, float %7946, float %8006, float %8007, float %8008)  ; Dot3(ax,ay,az,bx,by,bz)
  %8010 = fmul fast float %8009, %8009
  %8011 = call float @dx.op.unary.f32(i32 6, float %7948)  ; FAbs(value)
  %8012 = call float @dx.op.binary.f32(i32 35, float %8000, float 0x3F847AE140000000)  ; FMax(a,b)
  %8013 = fmul fast float %8012, %8012
  %8014 = fmul fast float %8013, %8013
  %8015 = fsub fast float 1.000000e+00, %8014
  %8016 = fmul fast float %7809, %8015
  %8017 = fadd fast float %8016, %8014
  %8018 = bitcast float %8017 to i32
  %8019 = ashr i32 %8018, 1
  %8020 = add nsw i32 %8019, 532487669
  %8021 = bitcast i32 %8020 to float
  %8022 = fadd fast float %8021, %5457
  %8023 = fmul fast float %8014, %8010
  %8024 = fsub fast float 1.000000e+00, %8010
  %8025 = fadd fast float %8024, %8023
  %8026 = fmul fast float %8011, %8011
  %8027 = fmul fast float %8026, %8015
  %8028 = fadd fast float %8027, %8014
  %8029 = bitcast float %8028 to i32
  %8030 = ashr i32 %8029, 1
  %8031 = add nsw i32 %8030, 532487669
  %8032 = bitcast i32 %8031 to float
  %8033 = fadd fast float %8032, %8011
  %8034 = fmul fast float %8025, %8025
  %8035 = fmul fast float %8034, %8022
  %8036 = fmul fast float %8035, %8033
  %8037 = fdiv fast float 0x3FF0A00000000000, %8036
  %8038 = fmul fast float %8037, %8014
  %8039 = fmul fast float %7948, %7941
  %8040 = fmul fast float %7948, %7942
  %8041 = fmul fast float %7948, %7943
  %8042 = fmul fast float %8039, %7997
  %8043 = fmul fast float %8042, %8038
  %8044 = fmul fast float %8040, %7997
  %8045 = fmul fast float %8044, %8038
  %8046 = fmul fast float %8041, %7997
  %8047 = fmul fast float %8046, %8038
  %8048 = fmul fast float %7878, %7832
  %8049 = fmul fast float %7879, %7832
  %8050 = fmul fast float %7880, %7832
  %8051 = fsub fast float 1.000000e+00, %7799
  %8052 = bitcast float %8051 to i32
  %8053 = sitofp i32 %8052 to float
  %8054 = fmul fast float %8053, 5.000000e+00
  %8055 = fadd fast float %8054, 0xC1EFBF8940000000
  %8056 = fptosi float %8055 to i32
  %8057 = bitcast i32 %8056 to float
  %8058 = fmul fast float %8057, %5070
  %8059 = fmul fast float %7929, %8058
  %8060 = fmul fast float %8059, %6254
  %8061 = fmul fast float %8059, %6255
  %8062 = fmul fast float %8059, %6256
  %8063 = fadd fast float %8060, %8048
  %8064 = fadd fast float %8061, %8049
  %8065 = fadd fast float %8062, %8050
  %8066 = fmul fast float %8063, %7804
  %8067 = fmul fast float %8064, %7804
  %8068 = fmul fast float %8065, %7804
  %8069 = fmul fast float %7804, %7787
  %8070 = fmul fast float %8069, %7929
  %8071 = fmul fast float %7804, %7788
  %8072 = fmul fast float %8071, %7929
  %8073 = fmul fast float %7804, %7789
  %8074 = fmul fast float %8073, %7929
  %8075 = fadd fast float %8066, %8043
  %8076 = fadd fast float %8067, %8045
  %8077 = fadd fast float %8068, %8047
  %8078 = fmul fast float %8075, %7787
  %8079 = fmul fast float %8076, %7788
  %8080 = fmul fast float %8077, %7789
  %8081 = fadd fast float %8070, %6238
  %8082 = fmul fast float %8081, %5066
  %8083 = fadd fast float %8072, %6239
  %8084 = fmul fast float %8083, %5066
  %8085 = fadd fast float %8074, %6240
  %8086 = fmul fast float %8085, %5066
  %8087 = fadd fast float %8078, %6477
  %8088 = fmul fast float %8087, %5066
  %8089 = fadd fast float %8079, %6481
  %8090 = fmul fast float %8089, %5066
  %8091 = fadd fast float %8080, %6485
  %8092 = fmul fast float %8091, %5066
  br label %8093

; <label>:8093                                    ; preds = %7991, %7780, %6461
  %8094 = phi float [ %6478, %6461 ], [ %6478, %7780 ], [ %8088, %7991 ]
  %8095 = phi float [ %6482, %6461 ], [ %6482, %7780 ], [ %8090, %7991 ]
  %8096 = phi float [ %6486, %6461 ], [ %6486, %7780 ], [ %8092, %7991 ]
  %8097 = phi float [ %6350, %6461 ], [ %6350, %7780 ], [ %8082, %7991 ]
  %8098 = phi float [ %6351, %6461 ], [ %6351, %7780 ], [ %8084, %7991 ]
  %8099 = phi float [ %6352, %6461 ], [ %6352, %7780 ], [ %8086, %7991 ]
  %8100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8101 = extractvalue %dx.types.CBufRet.f32 %8100, 0
  %8102 = fmul fast float %8101, %6333
  %8103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8104 = extractvalue %dx.types.CBufRet.f32 %8103, 3
  %8105 = fsub fast float 1.000000e+00, %5074
  %8106 = call float @dx.op.unary.f32(i32 7, float %8105)  ; Saturate(value)
  %8107 = fadd fast float %8099, %5072
  %8108 = fmul fast float %8107, %5074
  %8109 = fmul fast float %8106, %8104
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 3
  %8112 = fmul fast float %8097, %5416
  %8113 = fmul fast float %8098, %5417
  %8114 = fmul fast float %8099, %5418
  %8115 = fcmp fast ogt float %87, %176
  %8116 = and i1 %8115, %5142
  %8117 = or i1 %5221, %8116
  %8118 = icmp eq i32 %5141, 2
  %8119 = fcmp fast ole float %87, %176
  %8120 = and i1 %8119, %8118
  %8121 = or i1 %8120, %8117
  br i1 %8116, label %8122, label %8376

; <label>:8122                                    ; preds = %8093
  %8123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8124 = extractvalue %dx.types.CBufRet.f32 %8123, 2
  %8125 = extractvalue %dx.types.CBufRet.f32 %8123, 3
  %8126 = fmul fast float %8124, %99
  %8127 = fmul fast float %8125, %100
  %8128 = call float @dx.op.unary.f32(i32 7, float %8126)  ; Saturate(value)
  %8129 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  %8130 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8128, float %8129, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8131 = extractvalue %dx.types.ResRet.f32 %8130, 0
  %8132 = extractvalue %dx.types.ResRet.f32 %8130, 1
  %8133 = extractvalue %dx.types.ResRet.f32 %8130, 2
  %8134 = extractvalue %dx.types.ResRet.f32 %8130, 3
  %8135 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8128, float %8129, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8136 = extractvalue %dx.types.ResRet.f32 %8135, 0
  %8137 = extractvalue %dx.types.ResRet.f32 %8135, 1
  %8138 = extractvalue %dx.types.ResRet.f32 %8135, 2
  %8139 = extractvalue %dx.types.ResRet.f32 %8135, 3
  %8140 = call float @dx.op.binary.f32(i32 35, float %8132, float %8133)  ; FMax(a,b)
  %8141 = call float @dx.op.binary.f32(i32 35, float %8131, float %8140)  ; FMax(a,b)
  %8142 = call float @dx.op.binary.f32(i32 35, float %8141, float %8134)  ; FMax(a,b)
  %8143 = call float @dx.op.binary.f32(i32 36, float %8137, float %8138)  ; FMin(a,b)
  %8144 = call float @dx.op.binary.f32(i32 36, float %8136, float %8143)  ; FMin(a,b)
  %8145 = call float @dx.op.binary.f32(i32 36, float %8144, float %8139)  ; FMin(a,b)
  %8146 = fmul fast float %8142, 2.550000e+02
  %8147 = fadd fast float %8146, 0x3F70101020000000
  %8148 = fptoui float %8147 to i32
  %8149 = fmul fast float %8145, 2.550000e+02
  %8150 = fadd fast float %8149, 0x3F70101020000000
  %8151 = fptoui float %8150 to i32
  %8152 = icmp ult i32 %8148, %8151
  br i1 %8152, label %8153, label %8321

; <label>:8153                                    ; preds = %8122
  %8154 = fcmp fast ogt float %86, 9.843750e-01
  %8155 = fadd fast float %87, -4.000000e+00
  %8156 = select i1 %8154, float -4.000000e+00, float %8155
  %8157 = call float @dx.op.binary.f32(i32 35, float %8156, float 0.000000e+00)  ; FMax(a,b)
  %8158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8159 = extractvalue %dx.types.CBufRet.f32 %8158, 0
  %8160 = fadd fast float %8159, %8157
  %8161 = extractvalue %dx.types.CBufRet.f32 %8158, 2
  %8162 = fmul fast float %8160, %8161
  %8163 = call float @dx.op.unary.f32(i32 23, float %8162)  ; Log(value)
  %8164 = extractvalue %dx.types.CBufRet.f32 %8158, 3
  %8165 = fmul fast float %8164, %8163
  %8166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8167 = extractvalue %dx.types.CBufRet.f32 %8166, 2
  %8168 = fmul fast float %8165, %8167
  %8169 = call float @dx.op.unary.f32(i32 7, float %8168)  ; Saturate(value)
  %8170 = uitofp i32 %8148 to float
  %8171 = uitofp i32 %8151 to float
  %8172 = fadd fast float %8170, 5.000000e-01
  %8173 = fadd fast float %8171, 5.000000e-01
  %8174 = fmul fast float %8167, %8172
  %8175 = fmul fast float %8167, %8173
  %8176 = fadd fast float %8174, 0x3F0FFB4800000000
  %8177 = fadd fast float %8175, 0xBF0FFB4800000000
  %8178 = call float @dx.op.binary.f32(i32 35, float %8169, float %8176)  ; FMax(a,b)
  %8179 = call float @dx.op.binary.f32(i32 36, float %8178, float %8177)  ; FMin(a,b)
  %8180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8181 = extractvalue %dx.types.CBufRet.f32 %8180, 1
  %8182 = extractvalue %dx.types.CBufRet.f32 %8180, 2
  %8183 = extractvalue %dx.types.CBufRet.f32 %8180, 0
  %8184 = fmul fast float %8181, %8179
  %8185 = fadd fast float %8183, %8184
  %8186 = fadd fast float %8183, %8182
  %8187 = fsub fast float %8181, %8182
  %8188 = fadd fast float %8187, %8183
  %8189 = call float @dx.op.binary.f32(i32 35, float %8185, float %8186)  ; FMax(a,b)
  %8190 = call float @dx.op.binary.f32(i32 36, float %8189, float %8188)  ; FMin(a,b)
  %8191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %8128, float %8129, float %8190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8192 = extractvalue %dx.types.ResRet.f32 %8191, 0
  %8193 = extractvalue %dx.types.ResRet.f32 %8191, 1
  %8194 = extractvalue %dx.types.ResRet.f32 %8191, 2
  %8195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8196 = extractvalue %dx.types.CBufRet.i32 %8195, 0
  %8197 = extractvalue %dx.types.CBufRet.i32 %8195, 1
  %8198 = uitofp i32 %8196 to float
  %8199 = uitofp i32 %8197 to float
  %8200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8201 = extractvalue %dx.types.CBufRet.f32 %8200, 0
  %8202 = extractvalue %dx.types.CBufRet.f32 %8200, 1
  %8203 = fmul fast float %8198, %8128
  %8204 = fmul fast float %8199, %8129
  %8205 = fadd fast float %8203, -5.000000e-01
  %8206 = fadd fast float %8204, -5.000000e-01
  %8207 = call float @dx.op.unary.f32(i32 22, float %8205)  ; Frc(value)
  %8208 = call float @dx.op.unary.f32(i32 22, float %8206)  ; Frc(value)
  %8209 = fmul fast float %8207, %8207
  %8210 = fmul fast float %8209, %8207
  %8211 = fsub fast float 3.000000e+00, %8207
  %8212 = fmul fast float %8209, %8211
  %8213 = fmul fast float %8207, 3.000000e+00
  %8214 = fmul fast float %8210, 3.000000e+00
  %8215 = fmul fast float %8209, 6.000000e+00
  %8216 = fsub fast float %8214, %8215
  %8217 = fadd fast float %8216, 4.000000e+00
  %8218 = fmul fast float %8217, 0x3FC5555560000000
  %8219 = fmul fast float %8210, -3.000000e+00
  %8220 = fadd fast float %8209, %8207
  %8221 = fmul fast float %8220, 3.000000e+00
  %8222 = fadd fast float %8219, 1.000000e+00
  %8223 = fadd fast float %8222, %8221
  %8224 = fmul fast float %8210, 0x3FC5555560000000
  %8225 = fmul fast float %8208, %8208
  %8226 = fmul fast float %8225, %8208
  %8227 = fsub fast float 3.000000e+00, %8208
  %8228 = fmul fast float %8225, %8227
  %8229 = fmul fast float %8208, 3.000000e+00
  %8230 = fmul fast float %8226, 3.000000e+00
  %8231 = fmul fast float %8225, 6.000000e+00
  %8232 = fsub fast float %8230, %8231
  %8233 = fadd fast float %8232, 4.000000e+00
  %8234 = fmul fast float %8233, 0x3FC5555560000000
  %8235 = fmul fast float %8226, -3.000000e+00
  %8236 = fadd fast float %8225, %8208
  %8237 = fmul fast float %8236, 3.000000e+00
  %8238 = fadd fast float %8235, 1.000000e+00
  %8239 = fadd fast float %8238, %8237
  %8240 = fmul fast float %8226, 0x3FC5555560000000
  %8241 = fadd fast float %8207, 1.000000e+00
  %8242 = fsub fast float 1.000000e+00, %8213
  %8243 = fadd fast float %8242, %8212
  %8244 = fadd fast float %8243, %8217
  %8245 = fmul fast float %8244, 0x3FC5555560000000
  %8246 = fdiv fast float %8218, %8245
  %8247 = fsub fast float %8241, %8246
  %8248 = fsub fast float 1.000000e+00, %8207
  %8249 = fadd fast float %8223, %8210
  %8250 = fmul fast float %8249, 0x3FC5555560000000
  %8251 = fdiv fast float %8224, %8250
  %8252 = fadd fast float %8248, %8251
  %8253 = fadd fast float %8208, 1.000000e+00
  %8254 = fsub fast float 1.000000e+00, %8229
  %8255 = fadd fast float %8254, %8228
  %8256 = fadd fast float %8255, %8233
  %8257 = fmul fast float %8256, 0x3FC5555560000000
  %8258 = fdiv fast float %8234, %8257
  %8259 = fsub fast float %8253, %8258
  %8260 = fsub fast float 1.000000e+00, %8208
  %8261 = fadd fast float %8239, %8226
  %8262 = fmul fast float %8261, 0x3FC5555560000000
  %8263 = fdiv fast float %8240, %8262
  %8264 = fadd fast float %8263, %8260
  %8265 = fmul fast float %8247, %8201
  %8266 = fsub fast float %8128, %8265
  %8267 = fmul fast float %8252, %8201
  %8268 = fadd fast float %8267, %8128
  %8269 = fmul fast float %8264, %8202
  %8270 = fadd fast float %8269, %8129
  %8271 = fmul fast float %8259, %8202
  %8272 = fsub fast float %8129, %8271
  %8273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8266, float %8272, float %8190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8274 = extractvalue %dx.types.ResRet.f32 %8273, 0
  %8275 = extractvalue %dx.types.ResRet.f32 %8273, 1
  %8276 = extractvalue %dx.types.ResRet.f32 %8273, 2
  %8277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8268, float %8272, float %8190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8278 = extractvalue %dx.types.ResRet.f32 %8277, 0
  %8279 = extractvalue %dx.types.ResRet.f32 %8277, 1
  %8280 = extractvalue %dx.types.ResRet.f32 %8277, 2
  %8281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8266, float %8270, float %8190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8282 = extractvalue %dx.types.ResRet.f32 %8281, 0
  %8283 = extractvalue %dx.types.ResRet.f32 %8281, 1
  %8284 = extractvalue %dx.types.ResRet.f32 %8281, 2
  %8285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8268, float %8270, float %8190, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8286 = extractvalue %dx.types.ResRet.f32 %8285, 0
  %8287 = extractvalue %dx.types.ResRet.f32 %8285, 1
  %8288 = extractvalue %dx.types.ResRet.f32 %8285, 2
  %8289 = fsub fast float %8282, %8274
  %8290 = fsub fast float %8283, %8275
  %8291 = fsub fast float %8284, %8276
  %8292 = fmul fast float %8289, %8262
  %8293 = fmul fast float %8290, %8262
  %8294 = fmul fast float %8291, %8262
  %8295 = fadd fast float %8292, %8274
  %8296 = fadd fast float %8293, %8275
  %8297 = fadd fast float %8294, %8276
  %8298 = fsub fast float %8286, %8278
  %8299 = fsub fast float %8287, %8279
  %8300 = fsub fast float %8288, %8280
  %8301 = fmul fast float %8298, %8262
  %8302 = fmul fast float %8299, %8262
  %8303 = fmul fast float %8300, %8262
  %8304 = fsub fast float %8278, %8295
  %8305 = fadd fast float %8304, %8301
  %8306 = fsub fast float %8279, %8296
  %8307 = fadd fast float %8306, %8302
  %8308 = fsub fast float %8280, %8297
  %8309 = fadd fast float %8308, %8303
  %8310 = fmul fast float %8305, %8250
  %8311 = fmul fast float %8307, %8250
  %8312 = fmul fast float %8309, %8250
  %8313 = fadd fast float %8310, %8295
  %8314 = fadd fast float %8311, %8296
  %8315 = fadd fast float %8312, %8297
  %8316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8317 = extractvalue %dx.types.CBufRet.f32 %8316, 1
  %8318 = fmul fast float %8313, %8317
  %8319 = fmul fast float %8314, %8317
  %8320 = fmul fast float %8315, %8317
  br label %8321

; <label>:8321                                    ; preds = %8153, %8122
  %8322 = phi float [ %8192, %8153 ], [ 1.000000e+00, %8122 ]
  %8323 = phi float [ %8193, %8153 ], [ 1.000000e+00, %8122 ]
  %8324 = phi float [ %8194, %8153 ], [ 1.000000e+00, %8122 ]
  %8325 = phi float [ %8318, %8153 ], [ 0.000000e+00, %8122 ]
  %8326 = phi float [ %8319, %8153 ], [ 0.000000e+00, %8122 ]
  %8327 = phi float [ %8320, %8153 ], [ 0.000000e+00, %8122 ]
  %8328 = call float @dx.op.dot3.f32(i32 55, float %8322, float %8323, float %8324, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8329 = call float @dx.op.dot3.f32(i32 55, float %8325, float %8326, float %8327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8330 = select i1 %215, float %8328, float %8322
  %8331 = select i1 %215, float %8328, float %8323
  %8332 = select i1 %215, float 1.000000e+00, float %8324
  %8333 = select i1 %215, float %8329, float %8325
  %8334 = select i1 %215, float 0.000000e+00, float %8326
  %8335 = select i1 %215, float 0.000000e+00, float %8327
  %8336 = fmul fast float %8330, %8112
  %8337 = fmul fast float %8331, %8113
  %8338 = fmul fast float %8332, %8114
  %8339 = fadd fast float %8336, %8333
  %8340 = fadd fast float %8337, %8334
  %8341 = fadd fast float %8335, %8338
  %8342 = fmul fast float %8330, %8094
  %8343 = fmul fast float %8331, %8095
  %8344 = fmul fast float %8332, %8096
  %8345 = fmul fast float %124, %8124
  %8346 = fmul fast float %126, %8125
  %8347 = fsub fast float 1.000000e+00, %8345
  %8348 = fsub fast float 1.000000e+00, %8346
  %8349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8350 = extractvalue %dx.types.CBufRet.f32 %8349, 0
  %8351 = extractvalue %dx.types.CBufRet.f32 %8349, 1
  %8352 = extractvalue %dx.types.CBufRet.f32 %8349, 2
  %8353 = fmul fast float %8347, %8350
  %8354 = fmul fast float %8347, %8351
  %8355 = fmul fast float %8347, %8352
  %8356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8357 = extractvalue %dx.types.CBufRet.f32 %8356, 0
  %8358 = extractvalue %dx.types.CBufRet.f32 %8356, 1
  %8359 = extractvalue %dx.types.CBufRet.f32 %8356, 2
  %8360 = fmul fast float %8348, %8357
  %8361 = fmul fast float %8348, %8358
  %8362 = fmul fast float %8348, %8359
  %8363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8364 = extractvalue %dx.types.CBufRet.f32 %8363, 0
  %8365 = extractvalue %dx.types.CBufRet.f32 %8363, 1
  %8366 = extractvalue %dx.types.CBufRet.f32 %8363, 2
  %8367 = fadd fast float %8360, %8364
  %8368 = fadd fast float %8367, %8353
  %8369 = fadd fast float %8361, %8365
  %8370 = fadd fast float %8369, %8354
  %8371 = fadd fast float %8362, %8366
  %8372 = fadd fast float %8371, %8355
  %8373 = fmul fast float %8368, %176
  %8374 = fmul fast float %8370, %176
  %8375 = fmul fast float %8372, %176
  br label %8376

; <label>:8376                                    ; preds = %8321, %8093
  %8377 = phi float [ %8373, %8321 ], [ %154, %8093 ]
  %8378 = phi float [ %8374, %8321 ], [ %155, %8093 ]
  %8379 = phi float [ %8375, %8321 ], [ %156, %8093 ]
  %8380 = phi float [ %176, %8321 ], [ %87, %8093 ]
  %8381 = phi float [ %8339, %8321 ], [ %8112, %8093 ]
  %8382 = phi float [ %8340, %8321 ], [ %8113, %8093 ]
  %8383 = phi float [ %8341, %8321 ], [ %8114, %8093 ]
  %8384 = phi float [ %8342, %8321 ], [ %8094, %8093 ]
  %8385 = phi float [ %8343, %8321 ], [ %8095, %8093 ]
  %8386 = phi float [ %8344, %8321 ], [ %8096, %8093 ]
  %8387 = phi float [ %8322, %8321 ], [ 1.000000e+00, %8093 ]
  br i1 %8121, label %9536, label %8388

; <label>:8388                                    ; preds = %8376
  %8389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8390 = extractvalue %dx.types.CBufRet.f32 %8389, 0
  %8391 = extractvalue %dx.types.CBufRet.f32 %8389, 1
  %8392 = extractvalue %dx.types.CBufRet.f32 %8389, 2
  %8393 = extractvalue %dx.types.CBufRet.f32 %8389, 3
  %8394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8395 = extractvalue %dx.types.CBufRet.f32 %8394, 0
  %8396 = extractvalue %dx.types.CBufRet.f32 %8394, 1
  %8397 = extractvalue %dx.types.CBufRet.f32 %8394, 2
  %8398 = extractvalue %dx.types.CBufRet.f32 %8394, 3
  %8399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8400 = extractvalue %dx.types.CBufRet.f32 %8399, 0
  %8401 = extractvalue %dx.types.CBufRet.f32 %8399, 1
  %8402 = extractvalue %dx.types.CBufRet.f32 %8399, 2
  %8403 = extractvalue %dx.types.CBufRet.f32 %8399, 3
  %8404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8405 = extractvalue %dx.types.CBufRet.f32 %8404, 0
  %8406 = extractvalue %dx.types.CBufRet.f32 %8404, 1
  %8407 = extractvalue %dx.types.CBufRet.f32 %8404, 2
  %8408 = extractvalue %dx.types.CBufRet.f32 %8404, 3
  %8409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8410 = extractvalue %dx.types.CBufRet.f32 %8409, 3
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 3
  %8413 = extractvalue %dx.types.CBufRet.f32 %8411, 0
  %8414 = extractvalue %dx.types.CBufRet.f32 %8411, 1
  %8415 = extractvalue %dx.types.CBufRet.f32 %8411, 2
  %8416 = fcmp fast olt float %8415, -5.000000e-01
  %8417 = call float @dx.op.dot3.f32(i32 55, float %8377, float %8378, float %8379, float %8377, float %8378, float %8379)  ; Dot3(ax,ay,az,bx,by,bz)
  %8418 = call float @dx.op.unary.f32(i32 25, float %8417)  ; Rsqrt(value)
  %8419 = fmul fast float %8418, %8417
  %8420 = fmul fast float %8418, %8377
  %8421 = fmul fast float %8418, %8378
  %8422 = fmul fast float %8418, %8379
  %8423 = fadd fast float %8419, %8393
  %8424 = call float @dx.op.dot3.f32(i32 55, float %8420, float %8421, float %8422, float %8390, float %8391, float %8392)  ; Dot3(ax,ay,az,bx,by,bz)
  %8425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8426 = extractvalue %dx.types.CBufRet.i32 %8425, 1
  %8427 = and i32 %8426, 1
  %8428 = icmp ne i32 %8427, 0
  %8429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8430 = extractvalue %dx.types.CBufRet.f32 %8429, 2
  %8431 = fcmp fast ogt float %8430, 0.000000e+00
  %8432 = and i1 %8428, %8431
  br i1 %8432, label %8433, label %8839, !dx.controlflow.hints !120

; <label>:8433                                    ; preds = %8388
  %8434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8435 = extractvalue %dx.types.CBufRet.f32 %8434, 3
  %8436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8437 = extractvalue %dx.types.CBufRet.f32 %8436, 2
  %8438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8439 = extractvalue %dx.types.CBufRet.f32 %8438, 2
  %8440 = fsub fast float %8437, %8439
  %8441 = and i32 %8426, 2
  %8442 = extractvalue %dx.types.CBufRet.i32 %8425, 0
  %8443 = call i32 @dx.op.binary.i32(i32 40, i32 %8442, i32 3)  ; UMin(a,b)
  %8444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8445 = extractvalue %dx.types.CBufRet.f32 %8444, 0
  %8446 = extractvalue %dx.types.CBufRet.f32 %8444, 1
  %8447 = extractvalue %dx.types.CBufRet.f32 %8438, 0
  %8448 = extractvalue %dx.types.CBufRet.f32 %8438, 1
  %8449 = fsub fast float %8445, %8447
  %8450 = fsub fast float %8446, %8448
  %8451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.f32 %8451, 0
  %8453 = fcmp fast ogt float %8452, 0.000000e+00
  %8454 = fsub fast float -0.000000e+00, %8449
  %8455 = fsub fast float -0.000000e+00, %8450
  %8456 = call float @dx.op.dot2.f32(i32 54, float %8420, float %8421, float %8420, float %8421)  ; Dot2(ax,ay,bx,by)
  %8457 = call float @dx.op.dot2.f32(i32 54, float %8420, float %8421, float %8454, float %8455)  ; Dot2(ax,ay,bx,by)
  %8458 = fmul fast float %8457, 2.000000e+00
  %8459 = call float @dx.op.dot2.f32(i32 54, float %8454, float %8455, float %8454, float %8455)  ; Dot2(ax,ay,bx,by)
  %8460 = fmul fast float %8452, %8452
  %8461 = fsub fast float %8459, %8460
  %8462 = fmul fast float %8458, %8458
  %8463 = fmul fast float %8456, 4.000000e+00
  %8464 = fmul fast float %8463, %8461
  %8465 = fsub fast float %8462, %8464
  %8466 = fcmp fast ogt float %8465, 0.000000e+00
  br i1 %8466, label %8467, label %8482

; <label>:8467                                    ; preds = %8433
  %8468 = fcmp fast ogt float %8458, 0.000000e+00
  %8469 = call float @dx.op.unary.f32(i32 24, float %8465)  ; Sqrt(value)
  %8470 = fsub fast float -0.000000e+00, %8469
  %8471 = select i1 %8468, float %8469, float %8470
  %8472 = fadd fast float %8471, %8458
  %8473 = fmul float %8472, -5.000000e-01
  %8474 = fdiv fast float %8473, %8456
  %8475 = call float @dx.op.binary.f32(i32 35, float %8474, float 0.000000e+00)  ; FMax(a,b)
  %8476 = call float @dx.op.binary.f32(i32 36, float %8419, float %8475)  ; FMin(a,b)
  %8477 = fdiv fast float %8461, %8473
  %8478 = call float @dx.op.binary.f32(i32 35, float %8477, float 0.000000e+00)  ; FMax(a,b)
  %8479 = call float @dx.op.binary.f32(i32 36, float %8419, float %8478)  ; FMin(a,b)
  %8480 = call float @dx.op.binary.f32(i32 36, float %8476, float %8479)  ; FMin(a,b)
  %8481 = call float @dx.op.binary.f32(i32 35, float %8476, float %8479)  ; FMax(a,b)
  br label %8482

; <label>:8482                                    ; preds = %8467, %8433
  %8483 = phi float [ %8481, %8467 ], [ -1.000000e+00, %8433 ]
  %8484 = phi float [ %8480, %8467 ], [ -1.000000e+00, %8433 ]
  %8485 = phi i1 [ true, %8467 ], [ false, %8433 ]
  %8486 = and i1 %8453, %8485
  br i1 %8486, label %8487, label %8489

; <label>:8487                                    ; preds = %8482
  %8488 = fcmp fast oeq float %8484, %8483
  br i1 %8488, label %8792, label %8490

; <label>:8489                                    ; preds = %8482
  br i1 %8453, label %8792, label %8490

; <label>:8490                                    ; preds = %8489, %8487
  %8491 = phi float [ %8419, %8489 ], [ %8483, %8487 ]
  %8492 = phi float [ 0.000000e+00, %8489 ], [ %8484, %8487 ]
  %8493 = icmp ne i32 %8441, 0
  %8494 = fmul fast float %8491, %8422
  %8495 = fadd fast float %8494, %8435
  %8496 = fmul fast float %8495, %8491
  %8497 = select i1 %8493, float 0.000000e+00, float %8496
  %8498 = fcmp fast oeq float %8422, 0.000000e+00
  %8499 = fdiv fast float %8440, %8422
  %8500 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8499)  ; FMax(a,b)
  %8501 = select i1 %8498, float %8491, float %8500
  %8502 = call float @dx.op.binary.f32(i32 36, float %8491, float %8501)  ; FMin(a,b)
  %8503 = fcmp fast ogt float %8422, 0.000000e+00
  %8504 = fcmp fast olt float %8440, 0.000000e+00
  br i1 %8503, label %8505, label %8562

; <label>:8505                                    ; preds = %8490
  %8506 = icmp eq i32 %8441, 0
  br i1 %8504, label %8507, label %8551

; <label>:8507                                    ; preds = %8505
  %8508 = select i1 %8506, float %8491, float 0.000000e+00
  %8509 = fsub fast float -0.000000e+00, %8508
  %8510 = call float @dx.op.unary.f32(i32 6, float %8509)  ; FAbs(value)
  %8511 = fmul fast float %8508, %8422
  %8512 = fadd fast float %8511, %8435
  %8513 = fmul fast float %8510, %8512
  %8514 = fsub fast float %8497, %8513
  %8515 = fsub fast float %8491, %8510
  %8516 = select i1 %8506, float %8515, float 0.000000e+00
  %8517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8518 = extractvalue %dx.types.CBufRet.f32 %8517, 0
  %8519 = extractvalue %dx.types.CBufRet.f32 %8517, 1
  %8520 = extractvalue %dx.types.CBufRet.f32 %8517, 2
  %8521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8522 = extractvalue %dx.types.CBufRet.f32 %8521, 0
  %8523 = extractvalue %dx.types.CBufRet.f32 %8521, 1
  %8524 = extractvalue %dx.types.CBufRet.f32 %8521, 2
  %8525 = extractvalue %dx.types.CBufRet.f32 %8521, 3
  %8526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8527 = extractvalue %dx.types.CBufRet.f32 %8526, 3
  %8528 = call float @dx.op.binary.f32(i32 36, float %8514, float %8527)  ; FMin(a,b)
  %8529 = fmul fast float %8525, %8516
  %8530 = call float @dx.op.unary.f32(i32 7, float %8529)  ; Saturate(value)
  %8531 = fsub fast float %8522, %8518
  %8532 = fsub fast float %8523, %8519
  %8533 = fsub fast float %8524, %8520
  %8534 = fmul fast float %8530, %8531
  %8535 = fmul fast float %8530, %8532
  %8536 = fmul fast float %8530, %8533
  %8537 = fadd fast float %8534, %8518
  %8538 = fadd fast float %8535, %8519
  %8539 = fadd fast float %8536, %8520
  %8540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8541 = extractvalue %dx.types.CBufRet.f32 %8540, 0
  %8542 = extractvalue %dx.types.CBufRet.f32 %8540, 1
  %8543 = fadd fast float %8542, %8541
  %8544 = call float @dx.op.unary.f32(i32 7, float %8543)  ; Saturate(value)
  %8545 = extractvalue %dx.types.CBufRet.f32 %8540, 2
  %8546 = extractvalue %dx.types.CBufRet.f32 %8540, 3
  %8547 = fadd fast float %8546, %8545
  %8548 = call float @dx.op.unary.f32(i32 7, float %8547)  ; Saturate(value)
  %8549 = fmul fast float %8544, %8528
  %8550 = fmul fast float %8549, %8548
  br label %8792

; <label>:8551                                    ; preds = %8505
  br i1 %8506, label %8552, label %8573

; <label>:8552                                    ; preds = %8551
  %8553 = call float @dx.op.binary.f32(i32 36, float %8502, float %8492)  ; FMin(a,b)
  %8554 = fsub fast float %8502, %8553
  %8555 = fsub fast float %8554, %8491
  %8556 = call float @dx.op.unary.f32(i32 6, float %8555)  ; FAbs(value)
  %8557 = fadd fast float %8554, %8491
  %8558 = fmul fast float %8557, %8422
  %8559 = fadd fast float %8558, %8435
  %8560 = fmul fast float %8559, %8556
  %8561 = fsub fast float %8497, %8560
  br label %8573

; <label>:8562                                    ; preds = %8490
  br i1 %8504, label %8563, label %8573

; <label>:8563                                    ; preds = %8562
  %8564 = call float @dx.op.binary.f32(i32 35, float %8492, float %8502)  ; FMax(a,b)
  %8565 = icmp eq i32 %8441, 0
  %8566 = select i1 %8565, float %8502, float 0.000000e+00
  %8567 = fsub fast float -0.000000e+00, %8566
  %8568 = call float @dx.op.unary.f32(i32 6, float %8567)  ; FAbs(value)
  %8569 = fmul fast float %8566, %8422
  %8570 = fadd fast float %8569, %8435
  %8571 = fmul fast float %8568, %8570
  %8572 = fsub fast float %8497, %8571
  br label %8573

; <label>:8573                                    ; preds = %8563, %8562, %8552, %8551
  %8574 = phi float [ %8492, %8551 ], [ %8492, %8552 ], [ %8564, %8563 ], [ %8492, %8562 ]
  %8575 = phi float [ 0.000000e+00, %8551 ], [ %8556, %8552 ], [ %8568, %8563 ], [ 0.000000e+00, %8562 ]
  %8576 = phi float [ %8497, %8551 ], [ %8561, %8552 ], [ %8572, %8563 ], [ %8497, %8562 ]
  %8577 = phi float [ %8502, %8551 ], [ %8502, %8552 ], [ %8491, %8563 ], [ %8491, %8562 ]
  %8578 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %8578, align 4, !tbaa !110, !noalias !121
  %8579 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %8579, align 4, !tbaa !110, !noalias !121
  %8580 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %8580, align 4, !tbaa !110, !noalias !121
  %8581 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 0
  store float -1.000000e+00, float* %8581, align 4, !tbaa !110, !noalias !121
  %8582 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 1
  store float -1.000000e+00, float* %8582, align 4, !tbaa !110, !noalias !121
  %8583 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 2
  store float -1.000000e+00, float* %8583, align 4, !tbaa !110, !noalias !121
  %8584 = icmp sgt i32 %8443, 0
  br i1 %8584, label %8585, label %8646

; <label>:8585                                    ; preds = %8573
  br label %8586

; <label>:8586                                    ; preds = %8635, %8585
  %8587 = phi i32 [ %8636, %8635 ], [ 0, %8585 ]
  %8588 = phi i32 [ %8637, %8635 ], [ 0, %8585 ]
  %8589 = add nuw i32 %8588, 171
  %8590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %8589)  ; CBufferLoadLegacy(handle,regIndex)
  %8591 = extractvalue %dx.types.CBufRet.f32 %8590, 0
  %8592 = extractvalue %dx.types.CBufRet.f32 %8590, 1
  %8593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8594 = extractvalue %dx.types.CBufRet.f32 %8593, 0
  %8595 = extractvalue %dx.types.CBufRet.f32 %8593, 1
  %8596 = fsub fast float %8591, %8594
  %8597 = fsub fast float %8592, %8595
  %8598 = extractvalue %dx.types.CBufRet.f32 %8590, 2
  %8599 = fsub fast float -0.000000e+00, %8596
  %8600 = fsub fast float -0.000000e+00, %8597
  %8601 = call float @dx.op.dot2.f32(i32 54, float %8420, float %8421, float %8599, float %8600)  ; Dot2(ax,ay,bx,by)
  %8602 = fmul fast float %8601, 2.000000e+00
  %8603 = call float @dx.op.dot2.f32(i32 54, float %8599, float %8600, float %8599, float %8600)  ; Dot2(ax,ay,bx,by)
  %8604 = fmul fast float %8598, %8598
  %8605 = fsub fast float %8603, %8604
  %8606 = fmul fast float %8602, %8602
  %8607 = fmul fast float %8463, %8605
  %8608 = fsub fast float %8606, %8607
  %8609 = fcmp fast ogt float %8608, 0.000000e+00
  br i1 %8609, label %8610, label %8625

; <label>:8610                                    ; preds = %8586
  %8611 = fcmp fast ogt float %8602, 0.000000e+00
  %8612 = call float @dx.op.unary.f32(i32 24, float %8608)  ; Sqrt(value)
  %8613 = fsub fast float -0.000000e+00, %8612
  %8614 = select i1 %8611, float %8612, float %8613
  %8615 = fadd fast float %8614, %8602
  %8616 = fmul float %8615, -5.000000e-01
  %8617 = fdiv fast float %8616, %8456
  %8618 = call float @dx.op.binary.f32(i32 35, float %8617, float 0.000000e+00)  ; FMax(a,b)
  %8619 = call float @dx.op.binary.f32(i32 36, float %8491, float %8618)  ; FMin(a,b)
  %8620 = fdiv fast float %8605, %8616
  %8621 = call float @dx.op.binary.f32(i32 35, float %8620, float 0.000000e+00)  ; FMax(a,b)
  %8622 = call float @dx.op.binary.f32(i32 36, float %8491, float %8621)  ; FMin(a,b)
  %8623 = call float @dx.op.binary.f32(i32 36, float %8619, float %8622)  ; FMin(a,b)
  %8624 = call float @dx.op.binary.f32(i32 35, float %8619, float %8622)  ; FMax(a,b)
  br label %8625

; <label>:8625                                    ; preds = %8610, %8586
  %8626 = phi float [ %8624, %8610 ], [ -1.000000e+00, %8586 ]
  %8627 = phi float [ %8623, %8610 ], [ -1.000000e+00, %8586 ]
  %8628 = phi i1 [ true, %8610 ], [ false, %8586 ]
  br i1 %8628, label %8629, label %8635

; <label>:8629                                    ; preds = %8625
  %8630 = call float @dx.op.binary.f32(i32 35, float %8574, float %8627)  ; FMax(a,b)
  %8631 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8588
  store float %8630, float* %8631, align 4, !tbaa !110, !noalias !121
  %8632 = call float @dx.op.binary.f32(i32 35, float %8574, float %8626)  ; FMax(a,b)
  %8633 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8588
  store float %8632, float* %8633, align 4, !tbaa !110, !noalias !121
  %8634 = add nsw i32 %8587, 1
  br label %8635

; <label>:8635                                    ; preds = %8629, %8625
  %8636 = phi i32 [ %8634, %8629 ], [ %8587, %8625 ]
  %8637 = add nuw nsw i32 %8588, 1
  %8638 = icmp eq i32 %8637, %8443
  br i1 %8638, label %8639, label %8586

; <label>:8639                                    ; preds = %8635
  %8640 = load float, float* %8580, align 4, !tbaa !110, !alias.scope !137, !noalias !140
  %8641 = load float, float* %8579, align 4, !tbaa !110, !alias.scope !143, !noalias !144
  %8642 = load float, float* %8578, align 4, !tbaa !110, !alias.scope !145, !noalias !146
  %8643 = load float, float* %8583, align 4, !tbaa !110, !alias.scope !147, !noalias !150
  %8644 = load float, float* %8582, align 4, !tbaa !110, !alias.scope !153, !noalias !154
  %8645 = load float, float* %8581, align 4, !tbaa !110, !alias.scope !155, !noalias !156
  br label %8646

; <label>:8646                                    ; preds = %8639, %8573
  %8647 = phi float [ -1.000000e+00, %8573 ], [ %8645, %8639 ]
  %8648 = phi float [ -1.000000e+00, %8573 ], [ %8644, %8639 ]
  %8649 = phi float [ -1.000000e+00, %8573 ], [ %8643, %8639 ]
  %8650 = phi float [ -1.000000e+00, %8573 ], [ %8642, %8639 ]
  %8651 = phi float [ -1.000000e+00, %8573 ], [ %8641, %8639 ]
  %8652 = phi float [ -1.000000e+00, %8573 ], [ %8640, %8639 ]
  %8653 = phi i32 [ 0, %8573 ], [ %8636, %8639 ]
  %8654 = call float @dx.op.binary.f32(i32 36, float %8651, float %8652)  ; FMin(a,b)
  %8655 = call float @dx.op.binary.f32(i32 36, float %8650, float %8654)  ; FMin(a,b)
  %8656 = call float @dx.op.binary.f32(i32 35, float %8650, float %8651)  ; FMax(a,b)
  %8657 = call float @dx.op.binary.f32(i32 36, float %8656, float %8652)  ; FMin(a,b)
  %8658 = call float @dx.op.binary.f32(i32 36, float %8650, float %8651)  ; FMin(a,b)
  %8659 = call float @dx.op.binary.f32(i32 35, float %8658, float %8657)  ; FMax(a,b)
  %8660 = call float @dx.op.binary.f32(i32 35, float %8651, float %8652)  ; FMax(a,b)
  %8661 = call float @dx.op.binary.f32(i32 35, float %8650, float %8660)  ; FMax(a,b)
  store float %8655, float* %8578, align 4, !tbaa !110, !alias.scope !145, !noalias !146
  store float %8659, float* %8579, align 4, !tbaa !110, !alias.scope !143, !noalias !144
  store float %8661, float* %8580, align 4, !tbaa !110, !alias.scope !137, !noalias !140
  %8662 = call float @dx.op.binary.f32(i32 36, float %8648, float %8649)  ; FMin(a,b)
  %8663 = call float @dx.op.binary.f32(i32 36, float %8647, float %8662)  ; FMin(a,b)
  %8664 = call float @dx.op.binary.f32(i32 35, float %8647, float %8648)  ; FMax(a,b)
  %8665 = call float @dx.op.binary.f32(i32 36, float %8664, float %8649)  ; FMin(a,b)
  %8666 = call float @dx.op.binary.f32(i32 36, float %8647, float %8648)  ; FMin(a,b)
  %8667 = call float @dx.op.binary.f32(i32 35, float %8666, float %8665)  ; FMax(a,b)
  %8668 = call float @dx.op.binary.f32(i32 35, float %8648, float %8649)  ; FMax(a,b)
  %8669 = call float @dx.op.binary.f32(i32 35, float %8647, float %8668)  ; FMax(a,b)
  store float %8663, float* %8581, align 4, !tbaa !110, !alias.scope !155, !noalias !156
  store float %8667, float* %8582, align 4, !tbaa !110, !alias.scope !153, !noalias !154
  store float %8669, float* %8583, align 4, !tbaa !110, !alias.scope !147, !noalias !150
  %8670 = sub nsw i32 3, %8653
  %8671 = icmp sgt i32 %8670, 2
  br i1 %8671, label %8672, label %8710

; <label>:8672                                    ; preds = %8646
  %8673 = icmp eq i32 %8441, 0
  %8674 = fsub fast float %8491, %8575
  %8675 = select i1 %8673, float %8674, float %8575
  %8676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8677 = extractvalue %dx.types.CBufRet.f32 %8676, 0
  %8678 = extractvalue %dx.types.CBufRet.f32 %8676, 1
  %8679 = extractvalue %dx.types.CBufRet.f32 %8676, 2
  %8680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8681 = extractvalue %dx.types.CBufRet.f32 %8680, 0
  %8682 = extractvalue %dx.types.CBufRet.f32 %8680, 1
  %8683 = extractvalue %dx.types.CBufRet.f32 %8680, 2
  %8684 = extractvalue %dx.types.CBufRet.f32 %8680, 3
  %8685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8686 = extractvalue %dx.types.CBufRet.f32 %8685, 3
  %8687 = call float @dx.op.binary.f32(i32 36, float %8576, float %8686)  ; FMin(a,b)
  %8688 = fmul fast float %8684, %8675
  %8689 = call float @dx.op.unary.f32(i32 7, float %8688)  ; Saturate(value)
  %8690 = fsub fast float %8681, %8677
  %8691 = fsub fast float %8682, %8678
  %8692 = fsub fast float %8683, %8679
  %8693 = fmul fast float %8689, %8690
  %8694 = fmul fast float %8689, %8691
  %8695 = fmul fast float %8689, %8692
  %8696 = fadd fast float %8693, %8677
  %8697 = fadd fast float %8694, %8678
  %8698 = fadd fast float %8695, %8679
  %8699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8700 = extractvalue %dx.types.CBufRet.f32 %8699, 0
  %8701 = extractvalue %dx.types.CBufRet.f32 %8699, 1
  %8702 = fadd fast float %8701, %8700
  %8703 = call float @dx.op.unary.f32(i32 7, float %8702)  ; Saturate(value)
  %8704 = extractvalue %dx.types.CBufRet.f32 %8699, 2
  %8705 = extractvalue %dx.types.CBufRet.f32 %8699, 3
  %8706 = fadd fast float %8705, %8704
  %8707 = call float @dx.op.unary.f32(i32 7, float %8706)  ; Saturate(value)
  %8708 = fmul fast float %8703, %8687
  %8709 = fmul fast float %8708, %8707
  br label %8792

; <label>:8710                                    ; preds = %8646
  %8711 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8670
  %8712 = load float, float* %8711, align 4, !tbaa !110, !noalias !121
  %8713 = fcmp fast olt float %8712, %8577
  %8714 = icmp sgt i32 %8653, 0
  %8715 = and i1 %8714, %8713
  br i1 %8715, label %8716, label %8753

; <label>:8716                                    ; preds = %8710
  br label %8717

; <label>:8717                                    ; preds = %8746, %8716
  %8718 = phi float [ %8747, %8746 ], [ %8575, %8716 ]
  %8719 = phi float [ %8748, %8746 ], [ %8576, %8716 ]
  %8720 = phi float [ %8728, %8746 ], [ %8712, %8716 ]
  %8721 = phi i32 [ %8725, %8746 ], [ %8670, %8716 ]
  %8722 = getelementptr inbounds [3 x float], [3 x float]* %94, i32 0, i32 %8721
  %8723 = load float, float* %8722, align 4, !tbaa !110, !noalias !121
  %8724 = icmp slt i32 %8721, 2
  %8725 = add nsw i32 %8721, 1
  %8726 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %8725
  %8727 = load float, float* %8726, align 4, !tbaa !110, !noalias !121
  %8728 = select i1 %8724, float %8727, float %8491
  %8729 = call float @dx.op.binary.f32(i32 36, float %8728, float %8723)  ; FMin(a,b)
  %8730 = call float @dx.op.binary.f32(i32 36, float %8577, float %8729)  ; FMin(a,b)
  %8731 = icmp eq i32 %8441, 0
  %8732 = fadd fast float %8730, %8720
  %8733 = fmul fast float %8732, %8422
  %8734 = fadd fast float %8733, %8435
  br i1 %8731, label %8740, label %8735

; <label>:8735                                    ; preds = %8717
  %8736 = fsub fast float %8730, %8720
  %8737 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8736)  ; FMax(a,b)
  %8738 = fmul fast float %8737, %8734
  %8739 = fadd fast float %8738, %8719
  br label %8746

; <label>:8740                                    ; preds = %8717
  %8741 = fsub fast float %8720, %8730
  %8742 = call float @dx.op.unary.f32(i32 6, float %8741)  ; FAbs(value)
  %8743 = fadd fast float %8742, %8718
  %8744 = fmul fast float %8742, %8734
  %8745 = fsub fast float %8719, %8744
  br label %8746

; <label>:8746                                    ; preds = %8740, %8735
  %8747 = phi float [ %8737, %8735 ], [ %8743, %8740 ]
  %8748 = phi float [ %8739, %8735 ], [ %8745, %8740 ]
  %8749 = fcmp fast olt float %8728, %8577
  %8750 = icmp slt i32 %8725, 3
  %8751 = and i1 %8750, %8749
  br i1 %8751, label %8717, label %8752

; <label>:8752                                    ; preds = %8746
  br label %8753

; <label>:8753                                    ; preds = %8752, %8710
  %8754 = phi float [ %8575, %8710 ], [ %8747, %8752 ]
  %8755 = phi float [ %8576, %8710 ], [ %8748, %8752 ]
  %8756 = fsub fast float %8491, %8754
  %8757 = select i1 %8493, float %8754, float %8756
  %8758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8759 = extractvalue %dx.types.CBufRet.f32 %8758, 0
  %8760 = extractvalue %dx.types.CBufRet.f32 %8758, 1
  %8761 = extractvalue %dx.types.CBufRet.f32 %8758, 2
  %8762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8763 = extractvalue %dx.types.CBufRet.f32 %8762, 0
  %8764 = extractvalue %dx.types.CBufRet.f32 %8762, 1
  %8765 = extractvalue %dx.types.CBufRet.f32 %8762, 2
  %8766 = extractvalue %dx.types.CBufRet.f32 %8762, 3
  %8767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8768 = extractvalue %dx.types.CBufRet.f32 %8767, 3
  %8769 = call float @dx.op.binary.f32(i32 36, float %8755, float %8768)  ; FMin(a,b)
  %8770 = fmul fast float %8766, %8757
  %8771 = call float @dx.op.unary.f32(i32 7, float %8770)  ; Saturate(value)
  %8772 = fsub fast float %8763, %8759
  %8773 = fsub fast float %8764, %8760
  %8774 = fsub fast float %8765, %8761
  %8775 = fmul fast float %8771, %8772
  %8776 = fmul fast float %8771, %8773
  %8777 = fmul fast float %8771, %8774
  %8778 = fadd fast float %8775, %8759
  %8779 = fadd fast float %8776, %8760
  %8780 = fadd fast float %8777, %8761
  %8781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8782 = extractvalue %dx.types.CBufRet.f32 %8781, 0
  %8783 = extractvalue %dx.types.CBufRet.f32 %8781, 1
  %8784 = fadd fast float %8783, %8782
  %8785 = call float @dx.op.unary.f32(i32 7, float %8784)  ; Saturate(value)
  %8786 = extractvalue %dx.types.CBufRet.f32 %8781, 2
  %8787 = extractvalue %dx.types.CBufRet.f32 %8781, 3
  %8788 = fadd fast float %8787, %8786
  %8789 = call float @dx.op.unary.f32(i32 7, float %8788)  ; Saturate(value)
  %8790 = fmul fast float %8785, %8769
  %8791 = fmul fast float %8790, %8789
  br label %8792

; <label>:8792                                    ; preds = %8753, %8672, %8507, %8489, %8487
  %8793 = phi float [ %8516, %8507 ], [ %8675, %8672 ], [ %8757, %8753 ], [ 0.000000e+00, %8487 ], [ 0.000000e+00, %8489 ]
  %8794 = phi float [ %8550, %8507 ], [ %8709, %8672 ], [ %8791, %8753 ], [ 0.000000e+00, %8487 ], [ 0.000000e+00, %8489 ]
  %8795 = phi float [ %8537, %8507 ], [ %8696, %8672 ], [ %8778, %8753 ], [ 0.000000e+00, %8487 ], [ 0.000000e+00, %8489 ]
  %8796 = phi float [ %8538, %8507 ], [ %8697, %8672 ], [ %8779, %8753 ], [ 0.000000e+00, %8487 ], [ 0.000000e+00, %8489 ]
  %8797 = phi float [ %8539, %8507 ], [ %8698, %8672 ], [ %8780, %8753 ], [ 0.000000e+00, %8487 ], [ 0.000000e+00, %8489 ]
  %8798 = fmul fast float %8430, %8794
  %8799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8800 = extractvalue %dx.types.CBufRet.f32 %8799, 2
  %8801 = fsub fast float %8437, %8800
  %8802 = fcmp fast olt float %8798, -2.000000e+01
  %8803 = call float @dx.op.unary.f32(i32 21, float %8798)  ; Exp(value)
  %8804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8805 = extractvalue %dx.types.CBufRet.f32 %8804, 2
  %8806 = extractvalue %dx.types.CBufRet.f32 %8804, 3
  %8807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8808 = extractvalue %dx.types.CBufRet.f32 %8807, 2
  %8809 = fmul fast float %8806, %8801
  %8810 = call float @dx.op.unary.f32(i32 7, float %8809)  ; Saturate(value)
  %8811 = fsub fast float 1.000000e+00, %8810
  %8812 = fmul fast float %8422, 5.000000e-01
  %8813 = fadd fast float %8812, 5.000000e-01
  %8814 = call float @dx.op.unary.f32(i32 7, float %8813)  ; Saturate(value)
  %8815 = fsub fast float 1.000000e+00, %8814
  %8816 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8811)  ; FMax(a,b)
  %8817 = fdiv fast float %8815, %8816
  %8818 = fsub fast float %8801, %8379
  %8819 = call float @dx.op.unary.f32(i32 6, float %8818)  ; FAbs(value)
  %8820 = fmul fast float %8819, %8805
  %8821 = call float @dx.op.unary.f32(i32 7, float %8817)  ; Saturate(value)
  %8822 = fsub fast float 1.000000e+00, %8820
  %8823 = fmul fast float %8822, %8821
  %8824 = fadd fast float %8823, %8820
  %8825 = fmul fast float %8808, %8801
  %8826 = call float @dx.op.unary.f32(i32 7, float %8825)  ; Saturate(value)
  %8827 = fsub fast float 1.000000e+00, %8824
  %8828 = fmul fast float %8827, %8826
  %8829 = fadd fast float %8828, %8824
  %8830 = call float @dx.op.unary.f32(i32 7, float %8829)  ; Saturate(value)
  %8831 = fadd fast float %8803, -1.000000e+00
  %8832 = select i1 %8802, float -1.000000e+00, float %8831
  %8833 = fmul fast float %8830, %8832
  %8834 = fadd fast float %8833, 1.000000e+00
  %8835 = fsub fast float -0.000000e+00, %8833
  %8836 = fmul fast float %8795, %8835
  %8837 = fmul fast float %8796, %8835
  %8838 = fmul fast float %8797, %8835
  br label %8839

; <label>:8839                                    ; preds = %8792, %8388
  %8840 = phi float [ %8793, %8792 ], [ 0.000000e+00, %8388 ]
  %8841 = phi float [ %8834, %8792 ], [ 1.000000e+00, %8388 ]
  %8842 = phi float [ %8836, %8792 ], [ 0.000000e+00, %8388 ]
  %8843 = phi float [ %8837, %8792 ], [ 0.000000e+00, %8388 ]
  %8844 = phi float [ %8838, %8792 ], [ 0.000000e+00, %8388 ]
  %8845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8846 = extractvalue %dx.types.CBufRet.f32 %8845, 1
  %8847 = fsub fast float 1.000000e+00, %8841
  %8848 = fmul fast float %8847, %8423
  %8849 = fmul fast float %8848, %8846
  %8850 = fsub fast float %8423, %8849
  br i1 %8416, label %8851, label %8880, !dx.controlflow.hints !157

; <label>:8851                                    ; preds = %8839
  %8852 = fmul fast float %8424, %8413
  %8853 = fadd fast float %8852, %8414
  %8854 = call float @dx.op.unary.f32(i32 7, float %8853)  ; Saturate(value)
  %8855 = fmul fast float %8395, %8850
  %8856 = fsub fast float -0.000000e+00, %8855
  %8857 = fmul fast float %8396, %8850
  %8858 = fsub fast float -0.000000e+00, %8857
  %8859 = call float @dx.op.unary.f32(i32 21, float %8856)  ; Exp(value)
  %8860 = call float @dx.op.unary.f32(i32 21, float %8858)  ; Exp(value)
  %8861 = call float @dx.op.binary.f32(i32 35, float %8403, float %8859)  ; FMax(a,b)
  %8862 = call float @dx.op.binary.f32(i32 35, float %8403, float %8860)  ; FMax(a,b)
  %8863 = fsub fast float %8862, %8861
  %8864 = fmul fast float %8863, %8854
  %8865 = fadd fast float %8864, %8861
  %8866 = call float @dx.op.unary.f32(i32 7, float %8865)  ; Saturate(value)
  %8867 = fsub fast float %8400, %8405
  %8868 = fsub fast float %8401, %8406
  %8869 = fsub fast float %8402, %8407
  %8870 = fmul fast float %8854, %8867
  %8871 = fmul fast float %8854, %8868
  %8872 = fmul fast float %8854, %8869
  %8873 = fadd fast float %8870, %8405
  %8874 = fadd fast float %8871, %8406
  %8875 = fadd fast float %8872, %8407
  %8876 = fsub fast float 1.000000e+00, %8866
  %8877 = fmul fast float %8876, %8873
  %8878 = fmul fast float %8876, %8874
  %8879 = fmul fast float %8876, %8875
  br label %8939

; <label>:8880                                    ; preds = %8839
  %8881 = fmul fast float %8850, %8412
  %8882 = call float @dx.op.unary.f32(i32 7, float %8881)  ; Saturate(value)
  %8883 = fsub fast float 2.000000e+00, %8882
  %8884 = fmul fast float %8882, 9.921875e-01
  %8885 = fmul fast float %8884, %8883
  %8886 = fadd fast float %8885, 3.906250e-03
  %8887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %8886, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8888 = extractvalue %dx.types.ResRet.f32 %8887, 0
  %8889 = fsub fast float %8882, %8888
  %8890 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8889)  ; FMax(a,b)
  %8891 = fmul fast float %8398, %8379
  %8892 = call float @dx.op.unary.f32(i32 6, float %8891)  ; FAbs(value)
  %8893 = fcmp fast ogt float %8892, 0x3EB0C6F7A0000000
  br i1 %8893, label %8894, label %8900, !dx.controlflow.hints !158

; <label>:8894                                    ; preds = %8880
  %8895 = fmul fast float %8891, 0xBFF7154760000000
  %8896 = call float @dx.op.unary.f32(i32 21, float %8895)  ; Exp(value)
  %8897 = fsub fast float 1.000000e+00, %8896
  %8898 = fdiv fast float %8897, %8891
  %8899 = fmul fast float %8898, %8408
  br label %8900

; <label>:8900                                    ; preds = %8894, %8880
  %8901 = phi float [ %8899, %8894 ], [ %8408, %8880 ]
  %8902 = fadd fast float %8901, %8410
  %8903 = fmul fast float %8902, %8890
  %8904 = fmul fast float %8395, %8903
  %8905 = fsub fast float -0.000000e+00, %8904
  %8906 = fmul fast float %8396, %8903
  %8907 = fsub fast float -0.000000e+00, %8906
  %8908 = fmul fast float %8397, %8903
  %8909 = fsub fast float -0.000000e+00, %8908
  %8910 = call float @dx.op.unary.f32(i32 21, float %8905)  ; Exp(value)
  %8911 = call float @dx.op.unary.f32(i32 21, float %8907)  ; Exp(value)
  %8912 = call float @dx.op.unary.f32(i32 21, float %8909)  ; Exp(value)
  %8913 = fmul fast float %8424, %8424
  %8914 = fadd fast float %8913, 1.000000e+00
  %8915 = fmul fast float %8914, 0x3FAE8EC8A0000000
  %8916 = fmul fast float %8915, %8405
  %8917 = fmul fast float %8915, %8406
  %8918 = fmul fast float %8915, %8407
  %8919 = fmul fast float %8424, %8403
  %8920 = fsub fast float 1.000000e+00, %8919
  %8921 = fmul fast float %8403, %8403
  %8922 = fsub fast float 1.000000e+00, %8921
  %8923 = fmul fast float %8922, 0x3FB45F3060000000
  %8924 = fmul fast float %8920, %8920
  %8925 = fdiv fast float 1.000000e+00, %8924
  %8926 = fmul fast float %8923, %8925
  %8927 = fmul fast float %8926, %8400
  %8928 = fmul fast float %8926, %8401
  %8929 = fmul fast float %8926, %8402
  %8930 = fadd fast float %8927, %8916
  %8931 = fadd fast float %8928, %8917
  %8932 = fadd fast float %8929, %8918
  %8933 = fsub fast float 1.000000e+00, %8910
  %8934 = fsub fast float 1.000000e+00, %8911
  %8935 = fsub fast float 1.000000e+00, %8912
  %8936 = fmul fast float %8930, %8933
  %8937 = fmul fast float %8931, %8934
  %8938 = fmul fast float %8932, %8935
  br label %8939

; <label>:8939                                    ; preds = %8900, %8851
  %8940 = phi float [ %8877, %8851 ], [ %8936, %8900 ]
  %8941 = phi float [ %8878, %8851 ], [ %8937, %8900 ]
  %8942 = phi float [ %8879, %8851 ], [ %8938, %8900 ]
  %8943 = phi float [ %8866, %8851 ], [ %8910, %8900 ]
  %8944 = phi float [ %8866, %8851 ], [ %8911, %8900 ]
  %8945 = phi float [ %8866, %8851 ], [ %8912, %8900 ]
  br i1 %8432, label %8946, label %9144, !dx.controlflow.hints !159

; <label>:8946                                    ; preds = %8939
  %8947 = extractvalue %dx.types.CBufRet.f32 %8845, 0
  %8948 = fmul fast float %8947, %8847
  %8949 = fsub fast float %8842, %8940
  %8950 = fsub fast float %8843, %8941
  %8951 = fsub fast float %8844, %8942
  %8952 = fmul fast float %8948, %8949
  %8953 = fmul fast float %8948, %8950
  %8954 = fmul fast float %8948, %8951
  %8955 = fadd fast float %8952, %8940
  %8956 = fadd fast float %8953, %8941
  %8957 = fadd fast float %8954, %8942
  %8958 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8943)  ; FMax(a,b)
  %8959 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8944)  ; FMax(a,b)
  %8960 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8945)  ; FMax(a,b)
  %8961 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8841)  ; FMax(a,b)
  %8962 = call float @dx.op.binary.f32(i32 35, float %8840, float %8850)  ; FMax(a,b)
  %8963 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8962)  ; FMax(a,b)
  %8964 = fdiv fast float %8840, %8963
  %8965 = call float @dx.op.unary.f32(i32 7, float %8964)  ; Saturate(value)
  %8966 = fdiv fast float %8850, %8963
  %8967 = call float @dx.op.unary.f32(i32 7, float %8966)  ; Saturate(value)
  %8968 = fcmp fast une float %8961, 1.000000e+00
  br i1 %8968, label %8969, label %8982, !dx.controlflow.hints !160

; <label>:8969                                    ; preds = %8946
  %8970 = call float @dx.op.unary.f32(i32 23, float %8961)  ; Log(value)
  %8971 = fmul fast float %8970, 0x3FE62E4300000000
  %8972 = fmul fast float %8842, %8971
  %8973 = fsub fast float -0.000000e+00, %8972
  %8974 = fmul fast float %8843, %8971
  %8975 = fsub fast float -0.000000e+00, %8974
  %8976 = fmul fast float %8844, %8971
  %8977 = fsub fast float -0.000000e+00, %8976
  %8978 = fsub fast float 1.000000e+00, %8961
  %8979 = fdiv fast float %8973, %8978
  %8980 = fdiv fast float %8975, %8978
  %8981 = fdiv fast float %8977, %8978
  br label %8982

; <label>:8982                                    ; preds = %8969, %8946
  %8983 = phi float [ %8979, %8969 ], [ %8842, %8946 ]
  %8984 = phi float [ %8980, %8969 ], [ %8843, %8946 ]
  %8985 = phi float [ %8981, %8969 ], [ %8844, %8946 ]
  %8986 = phi float [ %8971, %8969 ], [ 0.000000e+00, %8946 ]
  %8987 = fcmp fast une float %8958, 1.000000e+00
  br i1 %8987, label %8988, label %8995, !dx.controlflow.hints !161

; <label>:8988                                    ; preds = %8982
  %8989 = call float @dx.op.unary.f32(i32 23, float %8958)  ; Log(value)
  %8990 = fmul fast float %8989, 0x3FE62E4300000000
  %8991 = fmul fast float %8955, %8990
  %8992 = fsub fast float -0.000000e+00, %8991
  %8993 = fsub fast float 1.000000e+00, %8958
  %8994 = fdiv fast float %8992, %8993
  br label %8995

; <label>:8995                                    ; preds = %8988, %8982
  %8996 = phi float [ %8994, %8988 ], [ %8955, %8982 ]
  %8997 = phi float [ %8990, %8988 ], [ 0.000000e+00, %8982 ]
  %8998 = fcmp fast une float %8959, 1.000000e+00
  br i1 %8998, label %8999, label %9006, !dx.controlflow.hints !161

; <label>:8999                                    ; preds = %8995
  %9000 = call float @dx.op.unary.f32(i32 23, float %8959)  ; Log(value)
  %9001 = fmul fast float %9000, 0x3FE62E4300000000
  %9002 = fmul fast float %8956, %9001
  %9003 = fsub fast float -0.000000e+00, %9002
  %9004 = fsub fast float 1.000000e+00, %8959
  %9005 = fdiv fast float %9003, %9004
  br label %9006

; <label>:9006                                    ; preds = %8999, %8995
  %9007 = phi float [ %9005, %8999 ], [ %8956, %8995 ]
  %9008 = phi float [ %9001, %8999 ], [ 0.000000e+00, %8995 ]
  %9009 = fcmp fast une float %8960, 1.000000e+00
  br i1 %9009, label %9010, label %9017, !dx.controlflow.hints !161

; <label>:9010                                    ; preds = %9006
  %9011 = call float @dx.op.unary.f32(i32 23, float %8960)  ; Log(value)
  %9012 = fmul fast float %9011, 0x3FE62E4300000000
  %9013 = fmul fast float %8957, %9012
  %9014 = fsub fast float -0.000000e+00, %9013
  %9015 = fsub fast float 1.000000e+00, %8960
  %9016 = fdiv fast float %9014, %9015
  br label %9017

; <label>:9017                                    ; preds = %9010, %9006
  %9018 = phi float [ %9016, %9010 ], [ %8957, %9006 ]
  %9019 = phi float [ %9012, %9010 ], [ 0.000000e+00, %9006 ]
  %9020 = fmul fast float %8983, %8967
  %9021 = fmul fast float %8984, %8967
  %9022 = fmul fast float %8985, %8967
  %9023 = fmul fast float %8986, %8967
  %9024 = fmul fast float %8996, %8965
  %9025 = fmul fast float %9007, %8965
  %9026 = fmul fast float %9018, %8965
  %9027 = fmul fast float %8997, %8965
  %9028 = fmul fast float %9008, %8965
  %9029 = fmul fast float %9019, %8965
  %9030 = fadd fast float %9024, %9020
  %9031 = fadd fast float %9025, %9021
  %9032 = fadd fast float %9026, %9022
  %9033 = fadd fast float %9027, %9023
  %9034 = fadd fast float %9028, %9023
  %9035 = fadd fast float %9029, %9023
  %9036 = fcmp fast une float %9033, 0.000000e+00
  br i1 %9036, label %9037, label %9044, !dx.controlflow.hints !162

; <label>:9037                                    ; preds = %9017
  %9038 = fmul fast float %9033, 0x3FF7154760000000
  %9039 = call float @dx.op.unary.f32(i32 21, float %9038)  ; Exp(value)
  %9040 = fsub fast float 1.000000e+00, %9039
  %9041 = fmul fast float %9030, %9040
  %9042 = fsub fast float -0.000000e+00, %9041
  %9043 = fdiv fast float %9042, %9033
  br label %9044

; <label>:9044                                    ; preds = %9037, %9017
  %9045 = phi float [ %9039, %9037 ], [ 1.000000e+00, %9017 ]
  %9046 = phi float [ %9043, %9037 ], [ %9030, %9017 ]
  %9047 = fcmp fast une float %9034, 0.000000e+00
  br i1 %9047, label %9048, label %9055, !dx.controlflow.hints !162

; <label>:9048                                    ; preds = %9044
  %9049 = fmul fast float %9034, 0x3FF7154760000000
  %9050 = call float @dx.op.unary.f32(i32 21, float %9049)  ; Exp(value)
  %9051 = fsub fast float 1.000000e+00, %9050
  %9052 = fmul fast float %9031, %9051
  %9053 = fsub fast float -0.000000e+00, %9052
  %9054 = fdiv fast float %9053, %9034
  br label %9055

; <label>:9055                                    ; preds = %9048, %9044
  %9056 = phi float [ %9050, %9048 ], [ 1.000000e+00, %9044 ]
  %9057 = phi float [ %9054, %9048 ], [ %9031, %9044 ]
  %9058 = fcmp fast une float %9035, 0.000000e+00
  br i1 %9058, label %9059, label %9066, !dx.controlflow.hints !162

; <label>:9059                                    ; preds = %9055
  %9060 = fmul fast float %9035, 0x3FF7154760000000
  %9061 = call float @dx.op.unary.f32(i32 21, float %9060)  ; Exp(value)
  %9062 = fsub fast float 1.000000e+00, %9061
  %9063 = fmul fast float %9032, %9062
  %9064 = fsub fast float -0.000000e+00, %9063
  %9065 = fdiv fast float %9064, %9035
  br label %9066

; <label>:9066                                    ; preds = %9059, %9055
  %9067 = phi float [ %9061, %9059 ], [ 1.000000e+00, %9055 ]
  %9068 = phi float [ %9065, %9059 ], [ %9032, %9055 ]
  %9069 = fcmp fast ogt float %8965, %8967
  br i1 %9069, label %9070, label %9090

; <label>:9070                                    ; preds = %9066
  %9071 = fsub fast float 1.000000e+00, %8967
  %9072 = fmul fast float %8983, %9071
  %9073 = fmul fast float %8984, %9071
  %9074 = fmul fast float %8985, %9071
  %9075 = fmul fast float %8986, %9071
  %9076 = fcmp fast une float %9075, 0.000000e+00
  br i1 %9076, label %9077, label %9128, !dx.controlflow.hints !163

; <label>:9077                                    ; preds = %9070
  %9078 = fmul fast float %9075, 0x3FF7154760000000
  %9079 = call float @dx.op.unary.f32(i32 21, float %9078)  ; Exp(value)
  %9080 = fsub fast float 1.000000e+00, %9079
  %9081 = fmul fast float %9072, %9080
  %9082 = fsub fast float -0.000000e+00, %9081
  %9083 = fmul fast float %9073, %9080
  %9084 = fsub fast float -0.000000e+00, %9083
  %9085 = fmul fast float %9074, %9080
  %9086 = fsub fast float -0.000000e+00, %9085
  %9087 = fdiv fast float %9082, %9075
  %9088 = fdiv fast float %9084, %9075
  %9089 = fdiv fast float %9086, %9075
  br label %9128

; <label>:9090                                    ; preds = %9066
  %9091 = fsub fast float 1.000000e+00, %8965
  %9092 = fmul fast float %8996, %9091
  %9093 = fmul fast float %9007, %9091
  %9094 = fmul fast float %9018, %9091
  %9095 = fmul fast float %8997, %9091
  %9096 = fmul fast float %9008, %9091
  %9097 = fmul fast float %9019, %9091
  %9098 = fcmp fast une float %9095, 0.000000e+00
  br i1 %9098, label %9099, label %9106, !dx.controlflow.hints !162

; <label>:9099                                    ; preds = %9090
  %9100 = fmul fast float %9095, 0x3FF7154760000000
  %9101 = call float @dx.op.unary.f32(i32 21, float %9100)  ; Exp(value)
  %9102 = fsub fast float 1.000000e+00, %9101
  %9103 = fmul fast float %9092, %9102
  %9104 = fsub fast float -0.000000e+00, %9103
  %9105 = fdiv fast float %9104, %9095
  br label %9106

; <label>:9106                                    ; preds = %9099, %9090
  %9107 = phi float [ %9105, %9099 ], [ %9092, %9090 ]
  %9108 = phi float [ %9101, %9099 ], [ 1.000000e+00, %9090 ]
  %9109 = fcmp fast une float %9096, 0.000000e+00
  br i1 %9109, label %9110, label %9117, !dx.controlflow.hints !162

; <label>:9110                                    ; preds = %9106
  %9111 = fmul fast float %9096, 0x3FF7154760000000
  %9112 = call float @dx.op.unary.f32(i32 21, float %9111)  ; Exp(value)
  %9113 = fsub fast float 1.000000e+00, %9112
  %9114 = fmul fast float %9093, %9113
  %9115 = fsub fast float -0.000000e+00, %9114
  %9116 = fdiv fast float %9115, %9096
  br label %9117

; <label>:9117                                    ; preds = %9110, %9106
  %9118 = phi float [ %9116, %9110 ], [ %9093, %9106 ]
  %9119 = phi float [ %9112, %9110 ], [ 1.000000e+00, %9106 ]
  %9120 = fcmp fast une float %9097, 0.000000e+00
  br i1 %9120, label %9121, label %9128, !dx.controlflow.hints !162

; <label>:9121                                    ; preds = %9117
  %9122 = fmul fast float %9097, 0x3FF7154760000000
  %9123 = call float @dx.op.unary.f32(i32 21, float %9122)  ; Exp(value)
  %9124 = fsub fast float 1.000000e+00, %9123
  %9125 = fmul fast float %9094, %9124
  %9126 = fsub fast float -0.000000e+00, %9125
  %9127 = fdiv fast float %9126, %9097
  br label %9128

; <label>:9128                                    ; preds = %9121, %9117, %9077, %9070
  %9129 = phi float [ %9127, %9121 ], [ %9089, %9077 ], [ %9074, %9070 ], [ %9094, %9117 ]
  %9130 = phi float [ %9118, %9121 ], [ %9088, %9077 ], [ %9073, %9070 ], [ %9118, %9117 ]
  %9131 = phi float [ %9107, %9121 ], [ %9087, %9077 ], [ %9072, %9070 ], [ %9107, %9117 ]
  %9132 = phi float [ %9123, %9121 ], [ %9079, %9077 ], [ 1.000000e+00, %9070 ], [ 1.000000e+00, %9117 ]
  %9133 = phi float [ %9119, %9121 ], [ %9079, %9077 ], [ 1.000000e+00, %9070 ], [ %9119, %9117 ]
  %9134 = phi float [ %9108, %9121 ], [ %9079, %9077 ], [ 1.000000e+00, %9070 ], [ %9108, %9117 ]
  %9135 = fmul fast float %9134, %9046
  %9136 = fmul fast float %9133, %9057
  %9137 = fmul fast float %9132, %9068
  %9138 = fadd fast float %9135, %9131
  %9139 = fadd fast float %9136, %9130
  %9140 = fadd fast float %9137, %9129
  %9141 = fmul fast float %9134, %9045
  %9142 = fmul fast float %9133, %9056
  %9143 = fmul fast float %9132, %9067
  br label %9144

; <label>:9144                                    ; preds = %9128, %8939
  %9145 = phi float [ %9143, %9128 ], [ %8945, %8939 ]
  %9146 = phi float [ %9142, %9128 ], [ %8944, %8939 ]
  %9147 = phi float [ %9141, %9128 ], [ %8943, %8939 ]
  %9148 = phi float [ %9140, %9128 ], [ %8942, %8939 ]
  %9149 = phi float [ %9139, %9128 ], [ %8941, %8939 ]
  %9150 = phi float [ %9138, %9128 ], [ %8940, %8939 ]
  %9151 = fmul fast float %9147, %8387
  %9152 = call float @dx.op.dot3.f32(i32 55, float %9147, float %9146, float %9145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9153 = call float @dx.op.dot3.f32(i32 55, float %9150, float %9149, float %9148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9154 = select i1 %215, float %9152, float %9147
  %9155 = select i1 %215, float %9152, float %9146
  %9156 = select i1 %215, float 1.000000e+00, float %9145
  %9157 = select i1 %215, float %9153, float %9150
  %9158 = select i1 %215, float 0.000000e+00, float %9149
  %9159 = select i1 %215, float 0.000000e+00, float %9148
  %9160 = fmul fast float %9154, %8381
  %9161 = fmul fast float %9155, %8382
  %9162 = fmul fast float %9156, %8383
  %9163 = fadd fast float %9160, %9157
  %9164 = fadd fast float %9161, %9158
  %9165 = fadd fast float %9159, %9162
  %9166 = fmul fast float %9154, %8384
  %9167 = fmul fast float %9155, %8385
  %9168 = fmul fast float %9156, %8386
  %9169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9170 = extractvalue %dx.types.CBufRet.i32 %9169, 0
  %9171 = icmp eq i32 %9170, 0
  br i1 %9171, label %9536, label %9172, !dx.controlflow.hints !164

; <label>:9172                                    ; preds = %9144
  %9173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9174 = extractvalue %dx.types.CBufRet.f32 %9173, 2
  %9175 = extractvalue %dx.types.CBufRet.f32 %9173, 3
  %9176 = fmul fast float %9174, %99
  %9177 = fmul fast float %9175, %100
  %9178 = fmul fast float %9176, 2.000000e+00
  %9179 = fmul fast float %9177, 2.000000e+00
  %9180 = fsub fast float 1.000000e+00, %9178
  %9181 = fsub fast float 1.000000e+00, %9179
  %9182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9183 = extractvalue %dx.types.CBufRet.f32 %9182, 0
  %9184 = extractvalue %dx.types.CBufRet.f32 %9182, 1
  %9185 = extractvalue %dx.types.CBufRet.f32 %9182, 2
  %9186 = fmul fast float %9180, %9183
  %9187 = fmul fast float %9180, %9184
  %9188 = fmul fast float %9180, %9185
  %9189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9190 = extractvalue %dx.types.CBufRet.f32 %9189, 0
  %9191 = extractvalue %dx.types.CBufRet.f32 %9189, 1
  %9192 = extractvalue %dx.types.CBufRet.f32 %9189, 2
  %9193 = fmul fast float %9181, %9190
  %9194 = fmul fast float %9181, %9191
  %9195 = fmul fast float %9181, %9192
  %9196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9197 = extractvalue %dx.types.CBufRet.f32 %9196, 0
  %9198 = extractvalue %dx.types.CBufRet.f32 %9196, 1
  %9199 = extractvalue %dx.types.CBufRet.f32 %9196, 2
  %9200 = fadd fast float %9193, %9197
  %9201 = fadd fast float %9200, %9186
  %9202 = fadd fast float %9194, %9198
  %9203 = fadd fast float %9202, %9187
  %9204 = fadd fast float %9195, %9199
  %9205 = fadd fast float %9204, %9188
  %9206 = fmul fast float %9201, %8380
  %9207 = fmul fast float %9203, %8380
  %9208 = fmul fast float %9205, %8380
  %9209 = fmul fast float %9206, %9206
  %9210 = fmul fast float %9207, %9207
  %9211 = fadd fast float %9209, %9210
  %9212 = fmul fast float %9208, %9208
  %9213 = fadd fast float %9211, %9212
  %9214 = call float @dx.op.unary.f32(i32 24, float %9213)  ; Sqrt(value)
  %9215 = extractvalue %dx.types.CBufRet.f32 %8110, 0
  %9216 = fsub fast float %9214, %9215
  %9217 = extractvalue %dx.types.CBufRet.f32 %8110, 2
  %9218 = fmul fast float %9216, %9217
  %9219 = call float @dx.op.unary.f32(i32 7, float %9218)  ; Saturate(value)
  %9220 = fadd fast float %9219, -5.000000e-01
  %9221 = fmul fast float %9220, 2.000000e+00
  %9222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9223 = extractvalue %dx.types.CBufRet.f32 %9222, 2
  %9224 = call float @dx.op.binary.f32(i32 36, float %9223, float %9221)  ; FMin(a,b)
  %9225 = fsub fast float -0.000000e+00, %9223
  %9226 = fcmp fast ogt float %9224, %9225
  br i1 %9226, label %9227, label %9536, !dx.controlflow.hints !165

; <label>:9227                                    ; preds = %9172
  %9228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9229 = extractvalue %dx.types.CBufRet.f32 %9228, 3
  %9230 = fcmp fast ogt float %9229, 0.000000e+00
  br i1 %9230, label %9231, label %9306, !dx.controlflow.hints !166

; <label>:9231                                    ; preds = %9227
  %9232 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9233 = extractvalue %dx.types.Dimensions %9232, 0
  %9234 = sitofp i32 %9233 to float
  %9235 = extractvalue %dx.types.Dimensions %9232, 1
  %9236 = sitofp i32 %9235 to float
  %9237 = fmul fast float %9176, %9234
  %9238 = fmul fast float %9177, %9236
  %9239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9240 = extractvalue %dx.types.CBufRet.f32 %9239, 1
  %9241 = fsub fast float -0.000000e+00, %9240
  %9242 = fptoui float %9241 to i32
  %9243 = fptoui float %9237 to i32
  %9244 = fptoui float %9238 to i32
  %9245 = and i32 %9242, 31
  %9246 = lshr i32 %9243, %9245
  %9247 = lshr i32 %9244, %9245
  %9248 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9242, i32 %9246, i32 %9247, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9249 = extractvalue %dx.types.ResRet.f32 %9248, 0
  %9250 = fcmp fast olt float %9249, -1.000000e+00
  %9251 = fcmp fast ogt float %9249, -1.000000e+00
  %9252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9253 = extractvalue %dx.types.CBufRet.f32 %9252, 1
  %9254 = select i1 %9251, float %9253, float 1.000000e+00
  %9255 = fadd fast float %9249, 1.000000e+00
  %9256 = fmul fast float %9254, %9255
  %9257 = call float @dx.op.unary.f32(i32 6, float %9256)  ; FAbs(value)
  %9258 = extractvalue %dx.types.CBufRet.f32 %9252, 3
  %9259 = fcmp fast oge float %9257, %9258
  %9260 = select i1 %9259, float 0x4197782600000000, float %9257
  %9261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9262 = extractvalue %dx.types.CBufRet.f32 %9261, 0
  %9263 = extractvalue %dx.types.CBufRet.f32 %9261, 1
  %9264 = extractvalue %dx.types.CBufRet.f32 %9261, 2
  %9265 = select i1 %9250, float %9262, float %9183
  %9266 = select i1 %9250, float %9263, float %9184
  %9267 = select i1 %9250, float %9264, float %9185
  %9268 = fmul fast float %9265, %9180
  %9269 = fmul fast float %9266, %9180
  %9270 = fmul fast float %9267, %9180
  %9271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9272 = extractvalue %dx.types.CBufRet.f32 %9271, 0
  %9273 = extractvalue %dx.types.CBufRet.f32 %9271, 1
  %9274 = extractvalue %dx.types.CBufRet.f32 %9271, 2
  %9275 = select i1 %9250, float %9272, float %9190
  %9276 = select i1 %9250, float %9273, float %9191
  %9277 = select i1 %9250, float %9274, float %9192
  %9278 = fmul fast float %9275, %9181
  %9279 = fmul fast float %9276, %9181
  %9280 = fmul fast float %9277, %9181
  %9281 = fadd fast float %9278, %9268
  %9282 = fadd fast float %9279, %9269
  %9283 = fadd fast float %9280, %9270
  %9284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9285 = extractvalue %dx.types.CBufRet.f32 %9284, 0
  %9286 = extractvalue %dx.types.CBufRet.f32 %9284, 1
  %9287 = extractvalue %dx.types.CBufRet.f32 %9284, 2
  %9288 = select i1 %9250, float %9285, float %9197
  %9289 = select i1 %9250, float %9286, float %9198
  %9290 = select i1 %9250, float %9287, float %9199
  %9291 = fadd fast float %9281, %9288
  %9292 = fadd fast float %9282, %9289
  %9293 = fadd fast float %9283, %9290
  %9294 = fmul fast float %9291, %9260
  %9295 = fmul fast float %9292, %9260
  %9296 = fmul fast float %9293, %9260
  %9297 = fmul fast float %9294, %9294
  %9298 = fmul fast float %9295, %9295
  %9299 = fadd fast float %9297, %9298
  %9300 = fmul fast float %9296, %9296
  %9301 = fadd fast float %9299, %9300
  %9302 = call float @dx.op.unary.f32(i32 24, float %9301)  ; Sqrt(value)
  %9303 = fsub fast float %9302, %9215
  %9304 = fmul fast float %9303, %9217
  %9305 = call float @dx.op.unary.f32(i32 7, float %9304)  ; Saturate(value)
  br label %9306

; <label>:9306                                    ; preds = %9231, %9227
  %9307 = phi float [ %9305, %9231 ], [ 1.000000e+00, %9227 ]
  %9308 = fmul fast float %9224, 5.000000e-01
  %9309 = fadd fast float %9308, 5.000000e-01
  %9310 = call float @dx.op.unary.f32(i32 22, float %9309)  ; Frc(value)
  %9311 = call float @dx.op.unary.f32(i32 27, float %9310)  ; Round_ni(value)
  %9312 = call float @dx.op.unary.f32(i32 22, float %9310)  ; Frc(value)
  %9313 = fmul fast float %9312, 2.000000e+00
  %9314 = fadd fast float %9313, -1.000000e+00
  %9315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %9176, float %9177, float %9311, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9316 = extractvalue %dx.types.ResRet.f32 %9315, 0
  %9317 = extractvalue %dx.types.ResRet.f32 %9315, 1
  %9318 = extractvalue %dx.types.ResRet.f32 %9315, 2
  %9319 = extractvalue %dx.types.ResRet.f32 %9315, 3
  %9320 = fadd fast float %9316, -5.000000e-01
  %9321 = fadd fast float %9318, -5.000000e-01
  %9322 = fmul fast float %9320, 0xBFD5555560000000
  %9323 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9321, float %9322)  ; FMad(a,b,c)
  %9324 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9317, float 0.000000e+00)  ; FMad(a,b,c)
  %9325 = fadd fast float %9324, %9319
  %9326 = fmul fast float %9320, -7.500000e-01
  %9327 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9321, float %9326)  ; FMad(a,b,c)
  %9328 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9317, float 0.000000e+00)  ; FMad(a,b,c)
  %9329 = fadd fast float %9328, %9319
  %9330 = call float @dx.op.binary.f32(i32 35, float %9323, float -1.000000e+00)  ; FMax(a,b)
  %9331 = call float @dx.op.binary.f32(i32 35, float %9325, float -1.000000e+00)  ; FMax(a,b)
  %9332 = call float @dx.op.binary.f32(i32 35, float %9327, float -1.000000e+00)  ; FMax(a,b)
  %9333 = call float @dx.op.binary.f32(i32 35, float %9329, float -1.000000e+00)  ; FMax(a,b)
  %9334 = call float @dx.op.binary.f32(i32 36, float %9330, float 1.000000e+00)  ; FMin(a,b)
  %9335 = call float @dx.op.binary.f32(i32 36, float %9331, float 1.000000e+00)  ; FMin(a,b)
  %9336 = call float @dx.op.binary.f32(i32 36, float %9332, float 1.000000e+00)  ; FMin(a,b)
  %9337 = call float @dx.op.binary.f32(i32 36, float %9333, float 1.000000e+00)  ; FMin(a,b)
  %9338 = fcmp fast olt float %9334, 0x3FEFFF8020000000
  br i1 %9338, label %9339, label %9454, !dx.controlflow.hints !167

; <label>:9339                                    ; preds = %9306
  %9340 = extractvalue %dx.types.CBufRet.f32 %9222, 3
  %9341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9342 = extractvalue %dx.types.CBufRet.f32 %9341, 0
  %9343 = extractvalue %dx.types.CBufRet.f32 %9341, 1
  %9344 = extractvalue %dx.types.CBufRet.f32 %9341, 2
  %9345 = extractvalue %dx.types.CBufRet.f32 %9341, 3
  %9346 = fsub fast float %9342, %9334
  %9347 = fsub fast float %9343, %9335
  %9348 = fsub fast float %9344, %9336
  %9349 = fsub fast float %9345, %9337
  %9350 = fmul fast float %9346, %9340
  %9351 = fmul fast float %9347, %9340
  %9352 = fmul fast float %9348, %9340
  %9353 = fmul fast float %9349, %9340
  %9354 = fadd fast float %9350, %9334
  %9355 = fadd fast float %9351, %9335
  %9356 = fsub fast float -0.000000e+00, %9355
  %9357 = fadd fast float %9352, %9336
  %9358 = fadd fast float %9353, %9337
  %9359 = fmul fast float %9354, %9354
  %9360 = fsub fast float %9355, %9359
  %9361 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9360)  ; FMax(a,b)
  %9362 = fdiv fast float 1.000000e+00, %9361
  %9363 = fmul fast float %9355, %9354
  %9364 = fsub fast float %9357, %9363
  %9365 = fsub fast float %9314, %9354
  %9366 = fmul fast float %9314, %9314
  %9367 = fsub fast float %9366, %9355
  %9368 = fmul fast float %9365, %9362
  %9369 = fmul fast float %9368, %9364
  %9370 = fsub fast float %9367, %9369
  %9371 = fmul fast float %9355, %9355
  %9372 = fsub fast float %9358, %9371
  %9373 = fmul fast float %9364, %9364
  %9374 = fmul fast float %9373, %9362
  %9375 = fsub fast float %9372, %9374
  %9376 = fdiv fast float %9370, %9375
  %9377 = fmul fast float %9364, %9376
  %9378 = fsub fast float %9365, %9377
  %9379 = fmul fast float %9378, %9362
  %9380 = fmul fast float %9379, %9354
  %9381 = fsub fast float 1.000000e+00, %9380
  %9382 = fmul fast float %9355, %9376
  %9383 = fsub fast float %9381, %9382
  %9384 = fmul fast float %9379, %9379
  %9385 = fmul fast float %9376, 4.000000e+00
  %9386 = fmul fast float %9385, %9383
  %9387 = fsub fast float %9384, %9386
  %9388 = call float @dx.op.unary.f32(i32 24, float %9387)  ; Sqrt(value)
  %9389 = fcmp fast oge float %9379, 0.000000e+00
  %9390 = fsub fast float -0.000000e+00, %9388
  %9391 = select i1 %9389, float %9390, float %9388
  %9392 = fsub fast float %9391, %9379
  %9393 = fdiv fast float %9392, %9376
  %9394 = fdiv fast float %9383, %9392
  %9395 = fmul fast float %9393, 5.000000e-01
  %9396 = fmul fast float %9394, 2.000000e+00
  %9397 = select i1 %9389, float %9395, float %9396
  %9398 = select i1 %9389, float %9396, float %9395
  %9399 = call float @dx.op.binary.f32(i32 35, float %9397, float %9398)  ; FMax(a,b)
  %9400 = call float @dx.op.binary.f32(i32 36, float %9397, float %9398)  ; FMin(a,b)
  %9401 = fcmp fast ogt float %9314, %9400
  br i1 %9401, label %9402, label %9412

; <label>:9402                                    ; preds = %9339
  %9403 = fsub fast float %9314, %9400
  %9404 = fsub fast float %9399, %9400
  %9405 = fmul fast float %9403, %9404
  %9406 = fmul fast float %9399, %9314
  %9407 = fadd fast float %9399, %9314
  %9408 = fmul fast float %9407, %9354
  %9409 = fadd fast float %9406, %9355
  %9410 = fsub fast float %9409, %9408
  %9411 = fdiv fast float %9410, %9405
  br label %9412

; <label>:9412                                    ; preds = %9402, %9339
  %9413 = phi float [ %9411, %9402 ], [ 0.000000e+00, %9339 ]
  %9414 = fcmp fast ogt float %9314, %9399
  %9415 = fsub fast float %9314, %9399
  br i1 %9414, label %9416, label %9426

; <label>:9416                                    ; preds = %9412
  %9417 = fsub fast float %9399, %9400
  %9418 = fmul fast float %9417, %9415
  %9419 = fmul fast float %9400, %9314
  %9420 = fadd fast float %9400, %9314
  %9421 = fmul fast float %9420, %9354
  %9422 = fsub fast float %9356, %9419
  %9423 = fadd fast float %9422, %9421
  %9424 = fdiv fast float %9423, %9418
  %9425 = fadd fast float %9424, %9413
  br label %9426

; <label>:9426                                    ; preds = %9416, %9412
  %9427 = phi float [ %9425, %9416 ], [ %9413, %9412 ]
  %9428 = fsub fast float %9314, %9400
  %9429 = fmul fast float %9428, %9415
  %9430 = fmul fast float %9400, %9399
  %9431 = fadd fast float %9400, %9399
  %9432 = fmul fast float %9431, %9354
  %9433 = fadd fast float %9430, %9355
  %9434 = fsub fast float %9433, %9432
  %9435 = fdiv fast float %9434, %9429
  %9436 = call float @dx.op.unary.f32(i32 7, float %9427)  ; Saturate(value)
  %9437 = fcmp fast oeq float %8111, 0.000000e+00
  %9438 = extractvalue %dx.types.CBufRet.f32 %9222, 0
  %9439 = fcmp fast oeq float %9438, 0.000000e+00
  %9440 = or i1 %9437, %9439
  %9441 = fmul fast float %9438, 2.000000e+00
  %9442 = fadd fast float %9223, %9224
  %9443 = fdiv fast float %9442, %9441
  %9444 = call float @dx.op.unary.f32(i32 7, float %9443)  ; Saturate(value)
  %9445 = fmul fast float %9444, 2.000000e+00
  %9446 = fsub fast float 3.000000e+00, %9445
  %9447 = fmul fast float %9444, %9444
  %9448 = fmul fast float %9447, %9446
  %9449 = select i1 %9440, float 1.000000e+00, float %9448
  %9450 = fmul fast float %9435, %8111
  %9451 = fadd fast float %9436, %9450
  %9452 = call float @dx.op.unary.f32(i32 7, float %9451)  ; Saturate(value)
  %9453 = fmul fast float %9449, %9452
  br label %9454

; <label>:9454                                    ; preds = %9426, %9306
  %9455 = phi float [ %9453, %9426 ], [ 0.000000e+00, %9306 ]
  %9456 = fsub fast float 1.000000e+00, %9455
  %9457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %9176, float %9177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9458 = extractvalue %dx.types.ResRet.f32 %9457, 0
  %9459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9460 = extractvalue %dx.types.CBufRet.i32 %9459, 2
  %9461 = icmp eq i32 %9460, 0
  br i1 %9461, label %9467, label %9462

; <label>:9462                                    ; preds = %9454
  %9463 = call float @dx.op.unary.f32(i32 7, float %9455)  ; Saturate(value)
  %9464 = fadd fast float %9458, -1.000000e+00
  %9465 = fmul fast float %9463, %9464
  %9466 = fadd fast float %9465, 1.000000e+00
  br label %9467

; <label>:9467                                    ; preds = %9462, %9454
  %9468 = phi float [ %9466, %9462 ], [ %9456, %9454 ]
  br i1 %9230, label %9469, label %9487

; <label>:9469                                    ; preds = %9467
  %9470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9471 = extractvalue %dx.types.CBufRet.f32 %9470, 1
  %9472 = fsub fast float %9307, %9471
  %9473 = call float @dx.op.unary.f32(i32 7, float %9472)  ; Saturate(value)
  %9474 = fsub fast float %9307, %9229
  %9475 = call float @dx.op.unary.f32(i32 7, float %9474)  ; Saturate(value)
  %9476 = fsub fast float %9473, %9475
  %9477 = fsub fast float %9309, %9475
  %9478 = fdiv fast float %9477, %9476
  %9479 = call float @dx.op.unary.f32(i32 7, float %9478)  ; Saturate(value)
  %9480 = fmul fast float %9479, 2.000000e+00
  %9481 = fsub fast float 3.000000e+00, %9480
  %9482 = fsub fast float %9458, %9468
  %9483 = fmul fast float %9479, %9479
  %9484 = fmul fast float %9483, %9482
  %9485 = fmul fast float %9484, %9481
  %9486 = fadd fast float %9485, %9468
  br label %9487

; <label>:9487                                    ; preds = %9469, %9467
  %9488 = phi float [ %9486, %9469 ], [ %9468, %9467 ]
  %9489 = call float @dx.op.binary.f32(i32 35, float %9458, float %9488)  ; FMax(a,b)
  %9490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9491 = extractvalue %dx.types.CBufRet.i32 %9490, 2
  %9492 = and i32 %9491, 1
  %9493 = icmp eq i32 %9492, 0
  %9494 = fcmp fast une float %9489, 1.000000e+00
  %9495 = and i1 %9494, %9493
  br i1 %9495, label %9496, label %9515

; <label>:9496                                    ; preds = %9487
  %9497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %9176, float %9177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9498 = extractvalue %dx.types.ResRet.f32 %9497, 0
  %9499 = extractvalue %dx.types.ResRet.f32 %9497, 1
  %9500 = extractvalue %dx.types.ResRet.f32 %9497, 2
  %9501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9502 = extractvalue %dx.types.CBufRet.f32 %9501, 1
  %9503 = fmul fast float %9502, %9498
  %9504 = fmul fast float %9502, %9499
  %9505 = fmul fast float %9502, %9500
  %9506 = fcmp fast ogt float %9458, 0x3FEFFF2E40000000
  %9507 = fsub fast float 1.000000e+00, %9489
  %9508 = fsub fast float 1.000000e+00, %9458
  %9509 = fdiv fast float %9507, %9508
  %9510 = call float @dx.op.unary.f32(i32 7, float %9509)  ; Saturate(value)
  %9511 = select i1 %9506, float 0.000000e+00, float %9510
  %9512 = fmul fast float %9503, %9511
  %9513 = fmul fast float %9504, %9511
  %9514 = fmul fast float %9505, %9511
  br label %9515

; <label>:9515                                    ; preds = %9496, %9487
  %9516 = phi float [ 0.000000e+00, %9487 ], [ %9512, %9496 ]
  %9517 = phi float [ 0.000000e+00, %9487 ], [ %9513, %9496 ]
  %9518 = phi float [ 0.000000e+00, %9487 ], [ %9514, %9496 ]
  %9519 = fmul fast float %9489, %9151
  %9520 = call float @dx.op.dot3.f32(i32 55, float %9489, float %9489, float %9489, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9521 = call float @dx.op.dot3.f32(i32 55, float %9516, float %9517, float %9518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9522 = select i1 %215, float %9520, float %9489
  %9523 = select i1 %215, float 1.000000e+00, float %9489
  %9524 = select i1 %215, float %9521, float %9516
  %9525 = select i1 %215, float 0.000000e+00, float %9517
  %9526 = select i1 %215, float 0.000000e+00, float %9518
  %9527 = fmul fast float %9522, %9163
  %9528 = fmul fast float %9522, %9164
  %9529 = fmul fast float %9523, %9165
  %9530 = fadd fast float %9527, %9524
  %9531 = fadd fast float %9528, %9525
  %9532 = fadd fast float %9526, %9529
  %9533 = fmul fast float %9522, %9166
  %9534 = fmul fast float %9522, %9167
  %9535 = fmul fast float %9523, %9168
  br label %9536

; <label>:9536                                    ; preds = %9515, %9172, %9144, %8376
  %9537 = phi float [ %8381, %8376 ], [ %9163, %9144 ], [ %9530, %9515 ], [ %9163, %9172 ]
  %9538 = phi float [ %8382, %8376 ], [ %9164, %9144 ], [ %9531, %9515 ], [ %9164, %9172 ]
  %9539 = phi float [ %8383, %8376 ], [ %9165, %9144 ], [ %9532, %9515 ], [ %9165, %9172 ]
  %9540 = phi float [ %8384, %8376 ], [ %9166, %9144 ], [ %9533, %9515 ], [ %9166, %9172 ]
  %9541 = phi float [ %8385, %8376 ], [ %9167, %9144 ], [ %9534, %9515 ], [ %9167, %9172 ]
  %9542 = phi float [ %8386, %8376 ], [ %9168, %9144 ], [ %9535, %9515 ], [ %9168, %9172 ]
  %9543 = phi float [ %8387, %8376 ], [ %9151, %9144 ], [ %9519, %9515 ], [ %9151, %9172 ]
  %9544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9545 = extractvalue %dx.types.CBufRet.f32 %9544, 2
  %9546 = extractvalue %dx.types.CBufRet.f32 %9544, 3
  %9547 = fmul fast float %9545, %99
  %9548 = fmul fast float %9546, %100
  %9549 = call float @dx.op.unary.f32(i32 7, float %9547)  ; Saturate(value)
  %9550 = call float @dx.op.unary.f32(i32 7, float %9548)  ; Saturate(value)
  %9551 = select i1 %8121, i32 2, i32 0
  %9552 = or i32 %9551, 1
  %9553 = uitofp i32 %9552 to float
  %9554 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %9549, float %9550, float %9553, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9555 = extractvalue %dx.types.ResRet.f32 %9554, 0
  %9556 = extractvalue %dx.types.ResRet.f32 %9554, 1
  %9557 = extractvalue %dx.types.ResRet.f32 %9554, 2
  %9558 = extractvalue %dx.types.ResRet.f32 %9554, 3
  %9559 = add nuw nsw i32 %9551, 2
  %9560 = uitofp i32 %9559 to float
  %9561 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %9549, float %9550, float %9560, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9562 = extractvalue %dx.types.ResRet.f32 %9561, 0
  %9563 = extractvalue %dx.types.ResRet.f32 %9561, 1
  %9564 = extractvalue %dx.types.ResRet.f32 %9561, 2
  %9565 = extractvalue %dx.types.ResRet.f32 %9561, 3
  %9566 = call float @dx.op.binary.f32(i32 35, float %9556, float %9557)  ; FMax(a,b)
  %9567 = call float @dx.op.binary.f32(i32 35, float %9555, float %9566)  ; FMax(a,b)
  %9568 = call float @dx.op.binary.f32(i32 35, float %9567, float %9558)  ; FMax(a,b)
  %9569 = call float @dx.op.binary.f32(i32 36, float %9563, float %9564)  ; FMin(a,b)
  %9570 = call float @dx.op.binary.f32(i32 36, float %9562, float %9569)  ; FMin(a,b)
  %9571 = call float @dx.op.binary.f32(i32 36, float %9570, float %9565)  ; FMin(a,b)
  %9572 = fmul fast float %9568, 2.550000e+02
  %9573 = fadd fast float %9572, 0x3F70101020000000
  %9574 = fptoui float %9573 to i32
  %9575 = fmul fast float %9571, 2.550000e+02
  %9576 = fadd fast float %9575, 0x3F70101020000000
  %9577 = fptoui float %9576 to i32
  %9578 = icmp ult i32 %9574, %9577
  br i1 %9578, label %9579, label %9748

; <label>:9579                                    ; preds = %9536
  %9580 = fcmp fast ogt float %86, 9.843750e-01
  %9581 = fadd fast float %8380, -4.000000e+00
  %9582 = select i1 %9580, float -4.000000e+00, float %9581
  %9583 = call float @dx.op.binary.f32(i32 35, float %9582, float 0.000000e+00)  ; FMax(a,b)
  %9584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9585 = extractvalue %dx.types.CBufRet.f32 %9584, 0
  %9586 = fadd fast float %9585, %9583
  %9587 = extractvalue %dx.types.CBufRet.f32 %9584, 2
  %9588 = fmul fast float %9586, %9587
  %9589 = call float @dx.op.unary.f32(i32 23, float %9588)  ; Log(value)
  %9590 = extractvalue %dx.types.CBufRet.f32 %9584, 3
  %9591 = fmul fast float %9590, %9589
  %9592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9593 = extractvalue %dx.types.CBufRet.f32 %9592, 2
  %9594 = fmul fast float %9591, %9593
  %9595 = call float @dx.op.unary.f32(i32 7, float %9594)  ; Saturate(value)
  %9596 = uitofp i32 %9574 to float
  %9597 = uitofp i32 %9577 to float
  %9598 = fadd fast float %9596, 5.000000e-01
  %9599 = fadd fast float %9597, 5.000000e-01
  %9600 = fmul fast float %9593, %9598
  %9601 = fmul fast float %9593, %9599
  %9602 = fadd fast float %9600, 0x3F0FFB4800000000
  %9603 = fadd fast float %9601, 0xBF0FFB4800000000
  %9604 = call float @dx.op.binary.f32(i32 35, float %9595, float %9602)  ; FMax(a,b)
  %9605 = call float @dx.op.binary.f32(i32 36, float %9604, float %9603)  ; FMin(a,b)
  %9606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9607 = extractvalue %dx.types.CBufRet.f32 %9606, 1
  %9608 = extractvalue %dx.types.CBufRet.f32 %9606, 2
  %9609 = extractvalue %dx.types.CBufRet.f32 %9606, 0
  %9610 = select i1 %8121, float %9609, float 0.000000e+00
  %9611 = fmul fast float %9607, %9605
  %9612 = fadd fast float %9610, %9611
  %9613 = fadd fast float %9610, %9608
  %9614 = fsub fast float %9607, %9608
  %9615 = fadd fast float %9614, %9610
  %9616 = call float @dx.op.binary.f32(i32 35, float %9612, float %9613)  ; FMax(a,b)
  %9617 = call float @dx.op.binary.f32(i32 36, float %9616, float %9615)  ; FMin(a,b)
  %9618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %9549, float %9550, float %9617, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9619 = extractvalue %dx.types.ResRet.f32 %9618, 0
  %9620 = extractvalue %dx.types.ResRet.f32 %9618, 1
  %9621 = extractvalue %dx.types.ResRet.f32 %9618, 2
  %9622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9623 = extractvalue %dx.types.CBufRet.i32 %9622, 0
  %9624 = extractvalue %dx.types.CBufRet.i32 %9622, 1
  %9625 = uitofp i32 %9623 to float
  %9626 = uitofp i32 %9624 to float
  %9627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9628 = extractvalue %dx.types.CBufRet.f32 %9627, 0
  %9629 = extractvalue %dx.types.CBufRet.f32 %9627, 1
  %9630 = fmul fast float %9625, %9549
  %9631 = fmul fast float %9626, %9550
  %9632 = fadd fast float %9630, -5.000000e-01
  %9633 = fadd fast float %9631, -5.000000e-01
  %9634 = call float @dx.op.unary.f32(i32 22, float %9632)  ; Frc(value)
  %9635 = call float @dx.op.unary.f32(i32 22, float %9633)  ; Frc(value)
  %9636 = fmul fast float %9634, %9634
  %9637 = fmul fast float %9636, %9634
  %9638 = fsub fast float 3.000000e+00, %9634
  %9639 = fmul fast float %9636, %9638
  %9640 = fmul fast float %9634, 3.000000e+00
  %9641 = fmul fast float %9637, 3.000000e+00
  %9642 = fmul fast float %9636, 6.000000e+00
  %9643 = fsub fast float %9641, %9642
  %9644 = fadd fast float %9643, 4.000000e+00
  %9645 = fmul fast float %9644, 0x3FC5555560000000
  %9646 = fmul fast float %9637, -3.000000e+00
  %9647 = fadd fast float %9636, %9634
  %9648 = fmul fast float %9647, 3.000000e+00
  %9649 = fadd fast float %9646, 1.000000e+00
  %9650 = fadd fast float %9649, %9648
  %9651 = fmul fast float %9637, 0x3FC5555560000000
  %9652 = fmul fast float %9635, %9635
  %9653 = fmul fast float %9652, %9635
  %9654 = fsub fast float 3.000000e+00, %9635
  %9655 = fmul fast float %9652, %9654
  %9656 = fmul fast float %9635, 3.000000e+00
  %9657 = fmul fast float %9653, 3.000000e+00
  %9658 = fmul fast float %9652, 6.000000e+00
  %9659 = fsub fast float %9657, %9658
  %9660 = fadd fast float %9659, 4.000000e+00
  %9661 = fmul fast float %9660, 0x3FC5555560000000
  %9662 = fmul fast float %9653, -3.000000e+00
  %9663 = fadd fast float %9652, %9635
  %9664 = fmul fast float %9663, 3.000000e+00
  %9665 = fadd fast float %9662, 1.000000e+00
  %9666 = fadd fast float %9665, %9664
  %9667 = fmul fast float %9653, 0x3FC5555560000000
  %9668 = fadd fast float %9634, 1.000000e+00
  %9669 = fsub fast float 1.000000e+00, %9640
  %9670 = fadd fast float %9669, %9639
  %9671 = fadd fast float %9670, %9644
  %9672 = fmul fast float %9671, 0x3FC5555560000000
  %9673 = fdiv fast float %9645, %9672
  %9674 = fsub fast float %9668, %9673
  %9675 = fsub fast float 1.000000e+00, %9634
  %9676 = fadd fast float %9650, %9637
  %9677 = fmul fast float %9676, 0x3FC5555560000000
  %9678 = fdiv fast float %9651, %9677
  %9679 = fadd fast float %9675, %9678
  %9680 = fadd fast float %9635, 1.000000e+00
  %9681 = fsub fast float 1.000000e+00, %9656
  %9682 = fadd fast float %9681, %9655
  %9683 = fadd fast float %9682, %9660
  %9684 = fmul fast float %9683, 0x3FC5555560000000
  %9685 = fdiv fast float %9661, %9684
  %9686 = fsub fast float %9680, %9685
  %9687 = fsub fast float 1.000000e+00, %9635
  %9688 = fadd fast float %9666, %9653
  %9689 = fmul fast float %9688, 0x3FC5555560000000
  %9690 = fdiv fast float %9667, %9689
  %9691 = fadd fast float %9690, %9687
  %9692 = fmul fast float %9674, %9628
  %9693 = fsub fast float %9549, %9692
  %9694 = fmul fast float %9679, %9628
  %9695 = fadd fast float %9694, %9549
  %9696 = fmul fast float %9691, %9629
  %9697 = fadd fast float %9696, %9550
  %9698 = fmul fast float %9686, %9629
  %9699 = fsub fast float %9550, %9698
  %9700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9693, float %9699, float %9617, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9701 = extractvalue %dx.types.ResRet.f32 %9700, 0
  %9702 = extractvalue %dx.types.ResRet.f32 %9700, 1
  %9703 = extractvalue %dx.types.ResRet.f32 %9700, 2
  %9704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9695, float %9699, float %9617, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9705 = extractvalue %dx.types.ResRet.f32 %9704, 0
  %9706 = extractvalue %dx.types.ResRet.f32 %9704, 1
  %9707 = extractvalue %dx.types.ResRet.f32 %9704, 2
  %9708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9693, float %9697, float %9617, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9709 = extractvalue %dx.types.ResRet.f32 %9708, 0
  %9710 = extractvalue %dx.types.ResRet.f32 %9708, 1
  %9711 = extractvalue %dx.types.ResRet.f32 %9708, 2
  %9712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %9695, float %9697, float %9617, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9713 = extractvalue %dx.types.ResRet.f32 %9712, 0
  %9714 = extractvalue %dx.types.ResRet.f32 %9712, 1
  %9715 = extractvalue %dx.types.ResRet.f32 %9712, 2
  %9716 = fsub fast float %9709, %9701
  %9717 = fsub fast float %9710, %9702
  %9718 = fsub fast float %9711, %9703
  %9719 = fmul fast float %9716, %9689
  %9720 = fmul fast float %9717, %9689
  %9721 = fmul fast float %9718, %9689
  %9722 = fadd fast float %9719, %9701
  %9723 = fadd fast float %9720, %9702
  %9724 = fadd fast float %9721, %9703
  %9725 = fsub fast float %9713, %9705
  %9726 = fsub fast float %9714, %9706
  %9727 = fsub fast float %9715, %9707
  %9728 = fmul fast float %9725, %9689
  %9729 = fmul fast float %9726, %9689
  %9730 = fmul fast float %9727, %9689
  %9731 = fsub fast float %9705, %9722
  %9732 = fadd fast float %9731, %9728
  %9733 = fsub fast float %9706, %9723
  %9734 = fadd fast float %9733, %9729
  %9735 = fsub fast float %9707, %9724
  %9736 = fadd fast float %9735, %9730
  %9737 = fmul fast float %9732, %9677
  %9738 = fmul fast float %9734, %9677
  %9739 = fmul fast float %9736, %9677
  %9740 = fadd fast float %9737, %9722
  %9741 = fadd fast float %9738, %9723
  %9742 = fadd fast float %9739, %9724
  %9743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9744 = extractvalue %dx.types.CBufRet.f32 %9743, 1
  %9745 = fmul fast float %9740, %9744
  %9746 = fmul fast float %9741, %9744
  %9747 = fmul fast float %9742, %9744
  br label %9748

; <label>:9748                                    ; preds = %9579, %9536
  %9749 = phi float [ %9619, %9579 ], [ 1.000000e+00, %9536 ]
  %9750 = phi float [ %9620, %9579 ], [ 1.000000e+00, %9536 ]
  %9751 = phi float [ %9621, %9579 ], [ 1.000000e+00, %9536 ]
  %9752 = phi float [ %9745, %9579 ], [ 0.000000e+00, %9536 ]
  %9753 = phi float [ %9746, %9579 ], [ 0.000000e+00, %9536 ]
  %9754 = phi float [ %9747, %9579 ], [ 0.000000e+00, %9536 ]
  %9755 = fmul fast float %9749, %9543
  %9756 = call float @dx.op.dot3.f32(i32 55, float %9749, float %9750, float %9751, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9757 = call float @dx.op.dot3.f32(i32 55, float %9752, float %9753, float %9754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9758 = select i1 %215, float %9756, float %9749
  %9759 = select i1 %215, float %9756, float %9750
  %9760 = select i1 %215, float 1.000000e+00, float %9751
  %9761 = select i1 %215, float %9757, float %9752
  %9762 = select i1 %215, float 0.000000e+00, float %9753
  %9763 = select i1 %215, float 0.000000e+00, float %9754
  %9764 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9765 = extractvalue %dx.types.CBufRet.i32 %9764, 3
  %9766 = and i32 %9765, 3
  %9767 = icmp ne i32 %9766, 0
  %9768 = and i32 %9765, 4
  %9769 = icmp ne i32 %9768, 0
  %9770 = and i1 %9767, %9769
  %9771 = and i1 %215, %9770
  br i1 %9771, label %9772, label %9778

; <label>:9772                                    ; preds = %9748
  %9773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9774 = extractvalue %dx.types.CBufRet.f32 %9773, 1
  %9775 = fadd fast float %9755, -1.000000e+00
  %9776 = fmul fast float %9774, %9775
  %9777 = fadd fast float %9776, 1.000000e+00
  br label %9778

; <label>:9778                                    ; preds = %9772, %9748
  %9779 = phi float [ %9777, %9772 ], [ %9755, %9748 ]
  %9780 = fadd fast float %9540, %9537
  %9781 = fmul fast float %9758, %9780
  %9782 = fadd fast float %9781, %9761
  %9783 = fadd fast float %9541, %9538
  %9784 = fmul fast float %9759, %9783
  %9785 = fadd fast float %9784, %9762
  %9786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9787 = extractvalue %dx.types.CBufRet.f32 %9786, 0
  br i1 %215, label %9788, label %9812

; <label>:9788                                    ; preds = %9778
  %9789 = fadd fast float %9782, %9785
  %9790 = fmul fast float %9787, %9789
  %9791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9792 = extractvalue %dx.types.CBufRet.f32 %9791, 3
  %9793 = extractvalue %dx.types.CBufRet.f32 %8103, 1
  %9794 = fsub fast float %8108, %8102
  %9795 = fadd fast float %9794, %8109
  %9796 = fsub fast float %9795, %9793
  %9797 = extractvalue %dx.types.CBufRet.f32 %8103, 2
  %9798 = fmul fast float %9796, %9797
  %9799 = call float @dx.op.unary.f32(i32 7, float %9798)  ; Saturate(value)
  %9800 = fsub fast float %9799, %9792
  %9801 = fmul fast float %9800, %9779
  %9802 = fadd fast float %9801, %9792
  %9803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9804 = extractvalue %dx.types.CBufRet.f32 %9803, 0
  %9805 = fsub fast float %9802, %9804
  %9806 = fmul fast float %9805, 1.000000e+01
  %9807 = call float @dx.op.unary.f32(i32 7, float %9806)  ; Saturate(value)
  %9808 = fadd fast float %5073, -1.000000e+00
  %9809 = fmul fast float %9807, %9808
  %9810 = fadd fast float %9809, 1.000000e+00
  %9811 = fmul fast float %9810, %9802
  br label %9836

; <label>:9812                                    ; preds = %9778
  %9813 = fadd fast float %9542, %9539
  %9814 = fmul fast float %9760, %9813
  %9815 = fadd fast float %9814, %9763
  %9816 = fmul fast float %9787, %9782
  %9817 = fmul fast float %9787, %9785
  %9818 = fmul fast float %9787, %9815
  %9819 = call float @dx.op.binary.f32(i32 35, float %9817, float %9818)  ; FMax(a,b)
  %9820 = call float @dx.op.binary.f32(i32 35, float %9816, float %9819)  ; FMax(a,b)
  %9821 = call float @dx.op.binary.f32(i32 35, float %9820, float 1.000000e+00)  ; FMax(a,b)
  %9822 = fcmp fast ugt float %9821, 0x3F10000000000000
  br i1 %9822, label %9824, label %9823

; <label>:9823                                    ; preds = %9812
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9824

; <label>:9824                                    ; preds = %9823, %9812
  %9825 = add i32 %50, 356
  %9826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %9825, i32 undef)  ; BufferLoad(srv,index,wot)
  %9827 = extractvalue %dx.types.ResRet.i32 %9826, 0
  %9828 = and i32 %9827, 32
  %9829 = icmp eq i32 %9828, 0
  br i1 %9829, label %9836, label %9830

; <label>:9830                                    ; preds = %9824
  %9831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9832 = extractvalue %dx.types.CBufRet.f32 %9831, 0
  %9833 = fmul fast float %9832, 0x3FE99999A0000000
  %9834 = fadd fast float %9832, %9816
  %9835 = fadd fast float %9833, %9818
  br label %9836

; <label>:9836                                    ; preds = %9830, %9824, %9788
  %9837 = phi float [ %9790, %9788 ], [ %9834, %9830 ], [ %9816, %9824 ]
  %9838 = phi float [ %9811, %9788 ], [ %9817, %9830 ], [ %9817, %9824 ]
  %9839 = phi float [ %9810, %9788 ], [ %9835, %9830 ], [ %9818, %9824 ]
  %9840 = phi float [ %9810, %9788 ], [ 1.000000e+00, %9830 ], [ 1.000000e+00, %9824 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9841 = call float @dx.op.binary.f32(i32 36, float %9837, float 3.225500e+04)  ; FMin(a,b)
  %9842 = call float @dx.op.binary.f32(i32 36, float %9838, float 3.225500e+04)  ; FMin(a,b)
  %9843 = call float @dx.op.binary.f32(i32 36, float %9839, float 3.225500e+04)  ; FMin(a,b)
  %9844 = call float @dx.op.binary.f32(i32 36, float %9840, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9841)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9842)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9843)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9844)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!63 = !{[46 x i32] [i32 44, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
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

