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
; shader hash: b4f345394348d2897f641bc4e3b4e89b
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
;   [208 x i8] (type annotation not present)
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %49 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = alloca [12 x float], align 4
  %83 = alloca [12 x float], align 4
  %84 = alloca [4 x float], align 4
  %85 = alloca [4 x float], align 4
  %86 = alloca [4 x float], align 4
  %87 = alloca [3 x float], align 4
  %88 = alloca [3 x float], align 4
  %89 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %90 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = fmul fast float %92, %78
  %94 = fmul fast float %92, %79
  %95 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %96 = bitcast float %95 to i32
  %97 = ashr i32 %96, 1
  %98 = sub nsw i32 1597250115, %97
  %99 = bitcast i32 %98 to float
  %100 = fmul fast float %99, %69
  %101 = fmul fast float %99, %70
  %102 = fmul fast float %99, %71
  %103 = fmul fast float %70, %67
  %104 = fmul fast float %71, %66
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %71, %65
  %107 = fmul fast float %69, %67
  %108 = fsub fast float %106, %107
  %109 = fmul fast float %69, %66
  %110 = fmul fast float %70, %65
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %105, %68
  %113 = fmul fast float %108, %68
  %114 = fmul fast float %111, %68
  %115 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %116 = bitcast float %115 to i32
  %117 = ashr i32 %116, 1
  %118 = sub nsw i32 1597250115, %117
  %119 = bitcast i32 %118 to float
  %120 = fmul fast float %119, %58
  %121 = fmul fast float %119, %59
  %122 = fmul fast float %119, %60
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 3
  %126 = fmul fast float %93, 2.000000e+00
  %127 = fmul fast float %126, %124
  %128 = fmul fast float %94, 2.000000e+00
  %129 = fmul fast float %128, %125
  %130 = fsub fast float 1.000000e+00, %127
  %131 = fsub fast float 1.000000e+00, %129
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %136 = fmul fast float %130, %133
  %137 = fmul fast float %130, %134
  %138 = fmul fast float %130, %135
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 0
  %141 = extractvalue %dx.types.CBufRet.f32 %139, 1
  %142 = extractvalue %dx.types.CBufRet.f32 %139, 2
  %143 = fmul fast float %131, %140
  %144 = fmul fast float %131, %141
  %145 = fmul fast float %131, %142
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %150 = fadd fast float %143, %147
  %151 = fadd fast float %150, %136
  %152 = fadd fast float %144, %148
  %153 = fadd fast float %152, %137
  %154 = fadd fast float %145, %149
  %155 = fadd fast float %154, %138
  %156 = fmul fast float %151, %81
  %157 = fmul fast float %153, %81
  %158 = fmul fast float %155, %81
  %159 = fmul fast float %93, 5.000000e-01
  %160 = fmul fast float %94, 5.000000e-01
  %161 = fptosi float %159 to i32
  %162 = fptosi float %160 to i32
  %163 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %161, i32 %162, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = lshr i32 %164, 18
  %166 = uitofp i32 %165 to float
  %167 = fmul fast float %166, 0x3F4C00EBA0000000
  %168 = call float @dx.op.unary.f32(i32 21, float %167)  ; Exp(value)
  %169 = fadd fast float %168, -1.000000e+00
  %170 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %20, i32 0)  ; GetDimensions(handle,mipLevel)
  %171 = extractvalue %dx.types.Dimensions %170, 0
  %172 = sitofp i32 %171 to float
  %173 = extractvalue %dx.types.Dimensions %170, 1
  %174 = sitofp i32 %173 to float
  %175 = fcmp fast oge float %159, %172
  %176 = fcmp fast oge float %160, %174
  %177 = or i1 %175, %176
  %178 = select i1 %177, float 0x4197782600000000, float %169
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 3
  %182 = fmul fast float %180, %93
  %183 = fmul fast float %181, %94
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = and i32 %185, 114688
  %187 = icmp ne i32 %186, 0
  %188 = select i1 %187, float %182, float 0.000000e+00
  %189 = select i1 %187, float %183, float 0.000000e+00
  %190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %44, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = fmul fast float %191, 2.550000e+02
  %193 = fptoui float %192 to i32
  %194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.i32 %195, 3
  %197 = and i32 %196, 3
  %198 = icmp ne i32 %197, 0
  %199 = and i32 %196, 4
  %200 = icmp ne i32 %199, 0
  %201 = and i1 %198, %200
  br i1 %201, label %202, label %213

; <label>:202                                     ; preds = %0
  %203 = extractvalue %dx.types.CBufRet.f32 %194, 3
  %204 = fmul fast float %203, %94
  %205 = extractvalue %dx.types.CBufRet.f32 %194, 2
  %206 = fmul fast float %205, %93
  %207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %43, float %206, float %204, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = fsub fast float 1.000000e+00, %208
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = fcmp fast olt float %209, %211
  br label %216

; <label>:213                                     ; preds = %0
  %214 = icmp eq i32 %199, 0
  %215 = and i1 %198, %214
  br label %216

; <label>:216                                     ; preds = %213, %202
  %217 = phi i1 [ %212, %202 ], [ %215, %213 ]
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %220 = fmul fast float %219, 0x3FE3C6EF40000000
  %221 = frem fast float %93, 2.560000e+02
  %222 = frem fast float %94, 2.560000e+02
  %223 = fptoui float %221 to i32
  %224 = fptoui float %222 to i32
  %225 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %223, i32 %224, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = extractvalue %dx.types.ResRet.f32 %225, 1
  %228 = fadd fast float %226, %220
  %229 = fadd fast float %227, %220
  %230 = call float @dx.op.unary.f32(i32 22, float %228)  ; Frc(value)
  %231 = call float @dx.op.unary.f32(i32 22, float %229)  ; Frc(value)
  %232 = add i32 %49, 156
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = shl i32 %234, 4
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %234, 7
  %239 = and i32 %238, 32752
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %234, 22
  %242 = shl nuw nsw i32 %241, 5
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = add i32 %49, 216
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 255
  %248 = uitofp i32 %247 to float
  %249 = fmul fast float %248, 0x3F70101020000000
  %250 = lshr i32 %246, 8
  %251 = and i32 %250, 255
  %252 = uitofp i32 %251 to float
  %253 = fmul fast float %252, 0x3F70101020000000
  %254 = lshr i32 %246, 16
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = add i32 %49, 36
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 65535
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %260, 16
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = add i32 %49, 288
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = and i32 %267, 65535
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %267, 16
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = fmul fast float %269, 0x3F50624DE0000000
  %273 = fmul fast float %271, 0x3F50624DE0000000
  %274 = add i32 %49, 172
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = shl i32 %276, 4
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %276, 7
  %281 = and i32 %280, 32752
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %276, 22
  %284 = shl nuw nsw i32 %283, 5
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = add i32 %49, 232
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 255
  %290 = uitofp i32 %289 to float
  %291 = fmul fast float %290, 0x3F70101020000000
  %292 = lshr i32 %288, 8
  %293 = and i32 %292, 255
  %294 = uitofp i32 %293 to float
  %295 = fmul fast float %294, 0x3F70101020000000
  %296 = lshr i32 %288, 16
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = add i32 %49, 52
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = add i32 %49, 304
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = fmul fast float %311, 0x3F50624DE0000000
  %315 = fmul fast float %313, 0x3F50624DE0000000
  %316 = add i32 %49, 188
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = shl i32 %318, 4
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %318, 7
  %323 = and i32 %322, 32752
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %318, 22
  %326 = shl nuw nsw i32 %325, 5
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = add i32 %49, 248
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 255
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = lshr i32 %330, 8
  %335 = and i32 %334, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %330, 16
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = add i32 %49, 68
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = add i32 %49, 320
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = fmul fast float %353, 0x3F50624DE0000000
  %357 = fmul fast float %355, 0x3F50624DE0000000
  %358 = add i32 %49, 204
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = shl i32 %360, 4
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %360, 7
  %365 = and i32 %364, 32752
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = lshr i32 %360, 22
  %368 = shl nuw nsw i32 %367, 5
  %369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %368)  ; LegacyF16ToF32(value)
  %370 = add i32 %49, 264
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 255
  %374 = uitofp i32 %373 to float
  %375 = fmul fast float %374, 0x3F70101020000000
  %376 = lshr i32 %372, 8
  %377 = and i32 %376, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = lshr i32 %372, 16
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = add i32 %49, 84
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = and i32 %386, 65535
  %388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %387)  ; LegacyF16ToF32(value)
  %389 = lshr i32 %386, 16
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = add i32 %49, 336
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = fmul fast float %395, 0x3F50624DE0000000
  %399 = fmul fast float %397, 0x3F50624DE0000000
  %400 = add i32 %49, 348
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 32
  %404 = icmp eq i32 %403, 0
  %405 = and i32 %402, 64
  %406 = icmp eq i32 %405, 0
  %407 = and i32 %402, 128
  %408 = icmp eq i32 %407, 0
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 2
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %428, label %413

; <label>:413                                     ; preds = %216
  %414 = add i32 %49, 488
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = add i32 %416, 0
  %418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %418, %dx.types.Handle %90, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = extractvalue %dx.types.ResRet.f32 %419, 2
  %423 = extractvalue %dx.types.ResRet.f32 %419, 3
  %424 = fmul fast float %423, %74
  %425 = fmul fast float %420, %75
  %426 = fmul fast float %421, %76
  %427 = fmul fast float %422, %77
  br label %428

; <label>:428                                     ; preds = %413, %216
  %429 = phi float [ %77, %216 ], [ %427, %413 ]
  %430 = phi float [ %76, %216 ], [ %426, %413 ]
  %431 = phi float [ %75, %216 ], [ %425, %413 ]
  %432 = phi float [ %74, %216 ], [ %424, %413 ]
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 2
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %456, label %437

; <label>:437                                     ; preds = %428
  %438 = add i32 %49, 44
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 1
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %442, float %431, float 1.000000e+00
  %444 = add i32 %49, 60
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, float %430, float 1.000000e+00
  %450 = add i32 %49, 76
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 1
  %454 = icmp ne i32 %453, 0
  %455 = select i1 %454, float %429, float 1.000000e+00
  br label %456

; <label>:456                                     ; preds = %437, %428
  %457 = phi float [ %429, %428 ], [ %455, %437 ]
  %458 = phi float [ %430, %428 ], [ %449, %437 ]
  %459 = phi float [ %431, %428 ], [ %443, %437 ]
  %460 = lshr i32 %434, 20
  %461 = and i32 %460, 3
  %462 = add nuw nsw i32 %461, 1
  %463 = add i32 %49, 24
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = add i32 %49, 28
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = or i32 %468, %465
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %1204, label %471

; <label>:471                                     ; preds = %456
  %472 = and i32 %465, 262144
  %473 = icmp ne i32 %472, 0
  %474 = select i1 %473, float %52, float 1.000000e+00
  %475 = select i1 %473, float %53, float 0.000000e+00
  %476 = select i1 %473, float %54, float 0.000000e+00
  %477 = select i1 %473, float %55, float 1.000000e+00
  %478 = select i1 %473, float %56, float %72
  %479 = select i1 %473, float %57, float %73
  %480 = add i32 %49, 284
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = lshr i32 %482, 16
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = fmul fast float %484, 0x3F50624DE0000000
  %486 = add i32 %49, 88
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = lshr i32 %488, 16
  %490 = and i32 %489, 255
  %491 = lshr i32 %488, 24
  %492 = add i32 %49, 292
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = and i32 %494, 65535
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = lshr i32 %494, 16
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = add i32 %49, 32
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = lshr i32 %501, 22
  %503 = shl nuw nsw i32 %502, 5
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = shl i32 %501, 4
  %506 = and i32 %505, 32752
  %507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %506)  ; LegacyF16ToF32(value)
  %508 = lshr i32 %501, 7
  %509 = and i32 %508, 32752
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 3
  %513 = fmul fast float %512, 1.000000e+03
  %514 = fmul fast float %272, %513
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fadd fast float %515, %262
  %517 = fmul fast float %273, %513
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = fadd fast float %518, %264
  %520 = fmul fast float %485, %513
  %521 = call float @dx.op.unary.f32(i32 22, float %520)  ; Frc(value)
  %522 = fmul fast float %521, 0x401921FB60000000
  %523 = fadd fast float %522, %504
  %524 = call float @dx.op.unary.f32(i32 13, float %523)  ; Sin(value)
  %525 = call float @dx.op.unary.f32(i32 12, float %523)  ; Cos(value)
  %526 = fsub fast float -0.000000e+00, %524
  %527 = fadd fast float %478, -5.000000e-01
  %528 = fadd fast float %479, -5.000000e-01
  %529 = fmul fast float %496, %527
  %530 = fmul fast float %498, %528
  %531 = fadd fast float %529, 5.000000e-01
  %532 = fadd fast float %530, 5.000000e-01
  %533 = fmul fast float %507, %531
  %534 = fmul fast float %510, %532
  %535 = fmul fast float %525, %533
  %536 = call float @dx.op.tertiary.f32(i32 46, float %526, float %534, float %535)  ; FMad(a,b,c)
  %537 = fmul fast float %524, %533
  %538 = call float @dx.op.tertiary.f32(i32 46, float %525, float %534, float %537)  ; FMad(a,b,c)
  %539 = fadd fast float %516, %536
  %540 = fadd fast float %519, %538
  %541 = icmp ugt i32 %490, 1
  %542 = icmp ugt i32 %488, 33554431
  %543 = or i1 %542, %541
  br i1 %543, label %544, label %569

; <label>:544                                     ; preds = %471
  %545 = add i32 %49, 228
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = lshr i32 %547, 16
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = fmul fast float %512, %549
  %551 = call float @dx.op.unary.f32(i32 22, float %550)  ; Frc(value)
  %552 = mul nuw nsw i32 %490, %491
  %553 = uitofp i32 %552 to float
  %554 = fmul fast float %551, %553
  %555 = call float @dx.op.unary.f32(i32 27, float %554)  ; Round_ni(value)
  %556 = fptoui float %555 to i32
  %557 = urem i32 %556, %490
  %558 = udiv i32 %556, %491
  %559 = call float @dx.op.unary.f32(i32 22, float %539)  ; Frc(value)
  %560 = call float @dx.op.unary.f32(i32 22, float %540)  ; Frc(value)
  %561 = uitofp i32 %557 to float
  %562 = uitofp i32 %558 to float
  %563 = fadd fast float %559, %561
  %564 = fadd fast float %560, %562
  %565 = uitofp i32 %490 to float
  %566 = uitofp i32 %491 to float
  %567 = fdiv fast float %563, %565
  %568 = fdiv fast float %564, %566
  br label %569

; <label>:569                                     ; preds = %544, %471
  %570 = phi float [ %567, %544 ], [ %539, %471 ]
  %571 = phi float [ %568, %544 ], [ %540, %471 ]
  %572 = and i32 %465, 16777216
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %683, label %574

; <label>:574                                     ; preds = %569
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %577 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %578 = extractvalue %dx.types.CBufRet.f32 %575, 2
  %579 = fadd fast float %576, %156
  %580 = fadd fast float %577, %157
  %581 = fadd fast float %578, %158
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 0
  %584 = call float @dx.op.unary.f32(i32 7, float %583)  ; Saturate(value)
  %585 = icmp eq i32 %50, 65535
  br i1 %585, label %680, label %586

; <label>:586                                     ; preds = %574
  %587 = lshr i32 %50, 1
  %588 = shl i32 %587, 2
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %50, 1
  %592 = icmp ne i32 %591, 0
  %593 = lshr i32 %590, 16
  %594 = and i32 %590, 65535
  %595 = select i1 %592, i32 %593, i32 %594
  %596 = icmp eq i32 %595, 65535
  br i1 %596, label %676, label %597

; <label>:597                                     ; preds = %586
  %598 = mul nuw nsw i32 %595, 40
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = extractvalue %dx.types.ResRet.f32 %599, 1
  %602 = extractvalue %dx.types.ResRet.f32 %599, 2
  %603 = add nuw nsw i32 %598, 12
  %604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = add nuw nsw i32 %598, 24
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = extractvalue %dx.types.ResRet.f32 %609, 1
  %612 = extractvalue %dx.types.ResRet.f32 %609, 2
  %613 = add nuw nsw i32 %598, 36
  %614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.f32 %614, 0
  %616 = fsub fast float %579, %600
  %617 = fsub fast float %580, %601
  %618 = fsub fast float %581, %602
  %619 = fmul fast float %615, %616
  %620 = fmul fast float %615, %617
  %621 = fmul fast float %615, %618
  %622 = call float @dx.op.unary.f32(i32 27, float %619)  ; Round_ni(value)
  %623 = call float @dx.op.unary.f32(i32 27, float %620)  ; Round_ni(value)
  %624 = call float @dx.op.unary.f32(i32 27, float %621)  ; Round_ni(value)
  %625 = fadd fast float %622, 5.000000e-01
  %626 = fadd fast float %623, 5.000000e-01
  %627 = fadd fast float %624, 5.000000e-01
  %628 = fmul fast float %625, %605
  %629 = fmul fast float %626, %606
  %630 = fmul fast float %627, %607
  %631 = shl i32 %50, 2
  %632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %633 = extractvalue %dx.types.ResRet.i32 %632, 0
  %634 = add i32 %633, 0
  %635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %634, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %636 = call float @dx.op.unary.f32(i32 22, float %628)  ; Frc(value)
  %637 = call float @dx.op.unary.f32(i32 22, float %629)  ; Frc(value)
  %638 = call float @dx.op.unary.f32(i32 22, float %630)  ; Frc(value)
  %639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %635, %dx.types.Handle %44, float %636, float %637, float %638, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = extractvalue %dx.types.ResRet.f32 %639, 1
  %642 = extractvalue %dx.types.ResRet.f32 %639, 2
  %643 = fmul fast float %640, 1.023000e+03
  %644 = fmul fast float %641, 1.023000e+03
  %645 = fmul fast float %642, 1.023000e+03
  %646 = fadd fast float %643, 5.000000e-01
  %647 = fadd fast float %644, 5.000000e-01
  %648 = fadd fast float %645, 5.000000e-01
  %649 = call float @dx.op.unary.f32(i32 27, float %646)  ; Round_ni(value)
  %650 = call float @dx.op.unary.f32(i32 27, float %647)  ; Round_ni(value)
  %651 = call float @dx.op.unary.f32(i32 27, float %648)  ; Round_ni(value)
  %652 = fsub fast float %619, %622
  %653 = fsub fast float %620, %623
  %654 = fsub fast float %621, %624
  %655 = fmul fast float %652, 7.500000e-01
  %656 = fmul fast float %653, 7.500000e-01
  %657 = fmul fast float %654, 7.500000e-01
  %658 = fadd fast float %622, 1.250000e-01
  %659 = fadd fast float %658, %655
  %660 = fadd fast float %659, %649
  %661 = fadd fast float %623, 1.250000e-01
  %662 = fadd fast float %661, %656
  %663 = fadd fast float %662, %650
  %664 = fadd fast float %624, 1.250000e-01
  %665 = fadd fast float %664, %657
  %666 = fadd fast float %665, %651
  %667 = fmul fast float %660, %610
  %668 = fmul fast float %663, %611
  %669 = fmul fast float %666, %612
  %670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %631, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.i32 %670, 0
  %672 = add i32 %671, 0
  %673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %673, %dx.types.Handle %42, float %667, float %668, float %669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %675 = extractvalue %dx.types.ResRet.f32 %674, 0
  br label %676

; <label>:676                                     ; preds = %597, %586
  %677 = phi float [ %675, %597 ], [ -1.000000e+00, %586 ]
  %678 = fadd fast float %677, %584
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  br label %680

; <label>:680                                     ; preds = %676, %574
  %681 = phi float [ %679, %676 ], [ %584, %574 ]
  %682 = fmul fast float %681, %432
  br label %683

; <label>:683                                     ; preds = %680, %569
  %684 = phi float [ %682, %680 ], [ %432, %569 ]
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 256
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %735, label %689

; <label>:689                                     ; preds = %683
  %690 = add i32 %49, 424
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = add i32 %692, 0
  %694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %694, %dx.types.Handle %90, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %696 = extractvalue %dx.types.ResRet.f32 %695, 0
  %697 = add i32 %49, 100
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %697, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = shl i32 %699, 4
  %701 = and i32 %700, 32752
  %702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %701)  ; LegacyF16ToF32(value)
  %703 = lshr i32 %699, 7
  %704 = and i32 %703, 32752
  %705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %704)  ; LegacyF16ToF32(value)
  %706 = fsub fast float 1.000000e+00, %684
  %707 = call float @dx.op.binary.f32(i32 35, float %706, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %708 = bitcast float %684 to i32
  %709 = sitofp i32 %708 to float
  %710 = fadd fast float %709, 0xC1CFBF8940000000
  %711 = fmul fast float %705, %710
  %712 = fadd fast float %711, 0x41CFBF8940000000
  %713 = fptosi float %712 to i32
  %714 = bitcast i32 %713 to float
  %715 = bitcast float %707 to i32
  %716 = sitofp i32 %715 to float
  %717 = fadd fast float %716, 0xC1CFBF8940000000
  %718 = fmul fast float %717, %705
  %719 = fadd fast float %718, 0x41CFBF8940000000
  %720 = fptosi float %719 to i32
  %721 = bitcast i32 %720 to float
  %722 = fmul fast float %714, %702
  %723 = fmul fast float %721, %702
  %724 = fsub fast float %707, %722
  %725 = fadd fast float %723, %707
  %726 = call float @dx.op.unary.f32(i32 7, float %724)  ; Saturate(value)
  %727 = call float @dx.op.unary.f32(i32 7, float %725)  ; Saturate(value)
  %728 = fsub fast float %696, %726
  %729 = fsub fast float %727, %726
  %730 = bitcast float %729 to i32
  %731 = sub nsw i32 2129859010, %730
  %732 = bitcast i32 %731 to float
  %733 = fmul fast float %732, %728
  %734 = call float @dx.op.unary.f32(i32 7, float %733)  ; Saturate(value)
  br label %735

; <label>:735                                     ; preds = %689, %683
  %736 = phi float [ %734, %689 ], [ %684, %683 ]
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = and i32 %738, 128
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %757, label %741

; <label>:741                                     ; preds = %735
  %742 = add i32 %49, 408
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = add i32 %744, 0
  %746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %746, %dx.types.Handle %90, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 524288
  %752 = icmp ne i32 %751, 0
  %753 = fcmp fast ogt float %748, 0x3FE0101020000000
  %754 = select i1 %753, float 1.000000e+00, float 0.000000e+00
  %755 = select i1 %752, float %754, float %748
  %756 = fmul fast float %755, %736
  br label %757

; <label>:757                                     ; preds = %741, %735
  %758 = phi float [ %756, %741 ], [ %736, %735 ]
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = and i32 %760, 16
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %961, label %763

; <label>:763                                     ; preds = %757
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %49, 360
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %766, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = add i32 %768, 0
  %770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %769, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %771 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %770, %dx.types.Handle %89, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %772 = extractvalue %dx.types.ResRet.f32 %771, 0
  %773 = extractvalue %dx.types.ResRet.f32 %771, 1
  %774 = extractvalue %dx.types.ResRet.f32 %771, 2
  %775 = extractvalue %dx.types.ResRet.f32 %771, 3
  %776 = and i32 %765, 255
  %777 = uitofp i32 %776 to float
  %778 = lshr i32 %765, 8
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %775, %777
  %782 = fadd fast float %781, %780
  %783 = fmul fast float %782, 0x3F70101000000000
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = and i32 %785, 512
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %796, label %788

; <label>:788                                     ; preds = %763
  %789 = add i32 %49, 440
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %789, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = add i32 %791, 0
  %793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %792, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %794 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %793, %dx.types.Handle %90, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %795 = extractvalue %dx.types.ResRet.f32 %794, 0
  br label %796

; <label>:796                                     ; preds = %788, %763
  %797 = phi float [ %795, %788 ], [ 1.000000e+00, %763 ]
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 33554432
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %908, label %802

; <label>:802                                     ; preds = %796
  %803 = add i32 %49, 224
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 65535
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = lshr i32 %805, 16
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = add i32 %49, 228
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = lshr i32 %816, 24
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = and i32 %816, 255
  %821 = uitofp i32 %820 to float
  %822 = fmul fast float %821, 0x3F70101020000000
  %823 = lshr i32 %816, 8
  %824 = and i32 %823, 255
  %825 = uitofp i32 %824 to float
  %826 = fmul fast float %825, 0x3F70101020000000
  %827 = lshr i32 %816, 16
  %828 = and i32 %827, 255
  %829 = uitofp i32 %828 to float
  %830 = fmul fast float %829, 0x3F70101020000000
  %831 = add i32 %49, 220
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %831, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = lshr i32 %833, 24
  %835 = uitofp i32 %834 to float
  %836 = fmul fast float %835, 0x3F70101020000000
  %837 = and i32 %833, 255
  %838 = uitofp i32 %837 to float
  %839 = fmul fast float %838, 0x3F70101020000000
  %840 = lshr i32 %833, 8
  %841 = and i32 %840, 255
  %842 = uitofp i32 %841 to float
  %843 = fmul fast float %842, 0x3F70101020000000
  %844 = lshr i32 %833, 16
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = bitcast float %772 to i32
  %849 = ashr i32 %848, 1
  %850 = sub nsw i32 1597463174, %849
  %851 = bitcast i32 %850 to float
  %852 = fmul fast float %772, 5.000000e-01
  %853 = fmul fast float %851, %851
  %854 = fmul fast float %853, %852
  %855 = fsub fast float 1.500000e+00, %854
  %856 = fmul fast float %851, %772
  %857 = fmul fast float %856, %855
  %858 = bitcast float %773 to i32
  %859 = ashr i32 %858, 1
  %860 = sub nsw i32 1597463174, %859
  %861 = bitcast i32 %860 to float
  %862 = fmul fast float %773, 5.000000e-01
  %863 = fmul fast float %861, %861
  %864 = fmul fast float %863, %862
  %865 = fsub fast float 1.500000e+00, %864
  %866 = fmul fast float %861, %773
  %867 = fmul fast float %866, %865
  %868 = bitcast float %774 to i32
  %869 = ashr i32 %868, 1
  %870 = sub nsw i32 1597463174, %869
  %871 = bitcast i32 %870 to float
  %872 = fmul fast float %774, 5.000000e-01
  %873 = fmul fast float %871, %871
  %874 = fmul fast float %873, %872
  %875 = fsub fast float 1.500000e+00, %874
  %876 = fmul fast float %871, %774
  %877 = fmul fast float %876, %875
  %878 = fsub fast float %857, %839
  %879 = fsub fast float %867, %843
  %880 = fsub fast float %877, %847
  %881 = fmul fast float %878, %807
  %882 = fmul fast float %879, %809
  %883 = fmul fast float %880, %814
  %884 = fadd fast float %881, %822
  %885 = fadd fast float %882, %826
  %886 = fadd fast float %883, %830
  %887 = call float @dx.op.unary.f32(i32 7, float %884)  ; Saturate(value)
  %888 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  %889 = call float @dx.op.unary.f32(i32 7, float %886)  ; Saturate(value)
  %890 = fmul fast float %887, %887
  %891 = fmul fast float %888, %888
  %892 = fmul fast float %889, %889
  %893 = fsub fast float %890, %772
  %894 = fsub fast float %891, %773
  %895 = fsub fast float %892, %774
  %896 = fmul fast float %893, %797
  %897 = fmul fast float %894, %797
  %898 = fmul fast float %895, %797
  %899 = fadd fast float %896, %772
  %900 = fadd fast float %897, %773
  %901 = fadd fast float %898, %774
  %902 = fadd fast float %819, %783
  %903 = fsub fast float %902, %836
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  %905 = fsub fast float %904, %783
  %906 = fmul fast float %905, %797
  %907 = fadd fast float %906, %783
  br label %961

; <label>:908                                     ; preds = %796
  %909 = and i32 %799, 134217728
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %945, label %911

; <label>:911                                     ; preds = %908
  %912 = call float @dx.op.unary.f32(i32 24, float %249)  ; Sqrt(value)
  %913 = call float @dx.op.unary.f32(i32 24, float %253)  ; Sqrt(value)
  %914 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %915 = fadd fast float %912, -5.000000e-01
  %916 = fadd fast float %913, -5.000000e-01
  %917 = fadd fast float %914, -5.000000e-01
  %918 = fmul fast float %915, %797
  %919 = fmul fast float %916, %797
  %920 = fmul fast float %917, %797
  %921 = fadd fast float %918, 5.000000e-01
  %922 = fadd fast float %919, 5.000000e-01
  %923 = fadd fast float %920, 5.000000e-01
  %924 = call float @dx.op.unary.f32(i32 24, float %772)  ; Sqrt(value)
  %925 = call float @dx.op.unary.f32(i32 24, float %773)  ; Sqrt(value)
  %926 = call float @dx.op.unary.f32(i32 24, float %774)  ; Sqrt(value)
  %927 = fmul fast float %921, 2.000000e+00
  %928 = fsub fast float 1.000000e+00, %927
  %929 = fmul fast float %928, %924
  %930 = fadd fast float %929, %927
  %931 = fmul fast float %930, %924
  %932 = fmul fast float %922, 2.000000e+00
  %933 = fsub fast float 1.000000e+00, %932
  %934 = fmul fast float %933, %925
  %935 = fadd fast float %934, %932
  %936 = fmul fast float %935, %925
  %937 = fmul fast float %923, 2.000000e+00
  %938 = fsub fast float 1.000000e+00, %937
  %939 = fmul fast float %938, %926
  %940 = fadd fast float %939, %937
  %941 = fmul fast float %940, %926
  %942 = fmul fast float %931, %931
  %943 = fmul fast float %936, %936
  %944 = fmul fast float %941, %941
  br label %961

; <label>:945                                     ; preds = %908
  %946 = fmul fast float %249, %249
  %947 = fmul fast float %253, %253
  %948 = fmul fast float %257, %257
  %949 = fadd fast float %946, -1.000000e+00
  %950 = fadd fast float %947, -1.000000e+00
  %951 = fadd fast float %948, -1.000000e+00
  %952 = fmul fast float %797, %949
  %953 = fmul fast float %797, %950
  %954 = fmul fast float %797, %951
  %955 = fadd fast float %952, 1.000000e+00
  %956 = fadd fast float %953, 1.000000e+00
  %957 = fadd fast float %954, 1.000000e+00
  %958 = fmul fast float %955, %772
  %959 = fmul fast float %956, %773
  %960 = fmul fast float %957, %774
  br label %961

; <label>:961                                     ; preds = %945, %911, %802, %757
  %962 = phi float [ %907, %802 ], [ %783, %911 ], [ %783, %945 ], [ 0x3FA23C0BE0000000, %757 ]
  %963 = phi float [ %899, %802 ], [ %942, %911 ], [ %958, %945 ], [ 1.000000e+00, %757 ]
  %964 = phi float [ %900, %802 ], [ %943, %911 ], [ %959, %945 ], [ 1.000000e+00, %757 ]
  %965 = phi float [ %901, %802 ], [ %944, %911 ], [ %960, %945 ], [ 1.000000e+00, %757 ]
  %966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %967 = extractvalue %dx.types.CBufRet.i32 %966, 1
  %968 = and i32 %967, 1
  %969 = icmp ne i32 %968, 0
  %970 = add i32 %49, 356
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 32
  %974 = icmp ne i32 %973, 0
  %975 = and i1 %969, %974
  %976 = select i1 %975, float 1.000000e+00, float %963
  %977 = select i1 %975, float 0x3FD3333340000000, float %964
  %978 = select i1 %975, float 0x3FD3333340000000, float %965
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = and i32 %980, 32
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %1055, label %983

; <label>:983                                     ; preds = %961
  %984 = add i32 %49, 92
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = add i32 %49, 376
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = add i32 %989, 0
  %991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %990, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %992 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %991, %dx.types.Handle %89, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = extractvalue %dx.types.ResRet.f32 %992, 3
  %997 = and i32 %986, 255
  %998 = uitofp i32 %997 to float
  %999 = lshr i32 %986, 8
  %1000 = and i32 %999, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = lshr i32 %986, 16
  %1003 = and i32 %1002, 255
  %1004 = uitofp i32 %1003 to float
  %1005 = fmul fast float %1004, 0x3F70101000000000
  %1006 = fmul fast float %993, %998
  %1007 = fadd fast float %1006, %1001
  %1008 = fmul fast float %1007, 0x3F70101000000000
  %1009 = fadd fast float %994, -5.000000e-01
  %1010 = fadd fast float %996, -5.000000e-01
  %1011 = fmul fast float %1009, %1005
  %1012 = fmul fast float %1010, %1005
  %1013 = fadd fast float %1011, 5.000000e-01
  %1014 = fadd fast float %1012, 5.000000e-01
  %1015 = fmul fast float %1013, 2.000000e+00
  %1016 = fadd fast float %1015, -1.000000e+00
  %1017 = fmul fast float %1014, 2.000000e+00
  %1018 = fadd fast float %1017, -1.000000e+00
  %1019 = fadd fast float %1016, %1018
  %1020 = fmul fast float %1019, 5.000000e-01
  %1021 = fsub fast float %1016, %1018
  %1022 = fmul fast float %1021, 5.000000e-01
  %1023 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1024 = fsub fast float 1.000000e+00, %1023
  %1025 = call float @dx.op.unary.f32(i32 6, float %1022)  ; FAbs(value)
  %1026 = fsub fast float %1024, %1025
  %1027 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1022, float %1026, float %1020, float %1022, float %1026)  ; Dot3(ax,ay,az,bx,by,bz)
  %1028 = call float @dx.op.unary.f32(i32 25, float %1027)  ; Rsqrt(value)
  %1029 = fmul fast float %1020, %1028
  %1030 = fmul fast float %1022, %1028
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = and i32 %1032, 67108864
  %1034 = icmp eq i32 %1033, 0
  br i1 %1034, label %1051, label %1035

; <label>:1035                                    ; preds = %983
  %1036 = add i32 %49, 280
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %1038, 65535
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = and i32 %1042, 65535
  %1044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1043)  ; LegacyF16ToF32(value)
  %1045 = lshr i32 %1038, 16
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = fsub fast float %1008, %1046
  %1048 = fmul fast float %1047, %1040
  %1049 = fadd fast float %1048, %1044
  %1050 = call float @dx.op.unary.f32(i32 7, float %1049)  ; Saturate(value)
  br label %1051

; <label>:1051                                    ; preds = %1035, %983
  %1052 = phi float [ %1050, %1035 ], [ %1008, %983 ]
  %1053 = call float @dx.op.dot2.f32(i32 54, float %1029, float %1030, float %474, float %475)  ; Dot2(ax,ay,bx,by)
  %1054 = call float @dx.op.dot2.f32(i32 54, float %1029, float %1030, float %476, float %477)  ; Dot2(ax,ay,bx,by)
  br label %1055

; <label>:1055                                    ; preds = %1051, %961
  %1056 = phi float [ %1052, %1051 ], [ 0x3FD6666660000000, %961 ]
  %1057 = phi float [ %1053, %1051 ], [ 0.000000e+00, %961 ]
  %1058 = phi float [ %1054, %1051 ], [ 0.000000e+00, %961 ]
  %1059 = phi float [ %995, %1051 ], [ 1.000000e+00, %961 ]
  %1060 = add i32 %49, 160
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = lshr i32 %1062, 22
  %1064 = shl nuw nsw i32 %1063, 5
  %1065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1064)  ; LegacyF16ToF32(value)
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 64
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1103, label %1070

; <label>:1070                                    ; preds = %1055
  %1071 = add i32 %49, 392
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = add i32 %1073, 0
  %1075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = and i32 %1077, 131072
  %1079 = icmp eq i32 %1078, 0
  %1080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1075, %dx.types.Handle %89, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.ResRet.f32 %1080, 1
  %1083 = extractvalue %dx.types.ResRet.f32 %1080, 2
  %1084 = fmul fast float %1081, %237
  %1085 = fmul fast float %1082, %240
  %1086 = fmul fast float %1083, %243
  br i1 %1079, label %1093, label %1087

; <label>:1087                                    ; preds = %1070
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 0
  %1090 = fmul fast float %1089, %1084
  %1091 = fmul fast float %1089, %1085
  %1092 = fmul fast float %1089, %1086
  br label %1093

; <label>:1093                                    ; preds = %1087, %1070
  %1094 = phi float [ %1090, %1087 ], [ %1084, %1070 ]
  %1095 = phi float [ %1091, %1087 ], [ %1085, %1070 ]
  %1096 = phi float [ %1092, %1087 ], [ %1086, %1070 ]
  %1097 = fmul fast float %1094, %1065
  %1098 = select i1 %217, float %1097, float %1094
  %1099 = call float @dx.op.dot3.f32(i32 55, float %1098, float %1095, float %1096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1100 = select i1 %217, float 0.000000e+00, float %1094
  %1101 = select i1 %217, float %1099, float %1095
  %1102 = select i1 %217, float 0.000000e+00, float %1096
  br label %1103

; <label>:1103                                    ; preds = %1093, %1055
  %1104 = phi float [ %1100, %1093 ], [ 0.000000e+00, %1055 ]
  %1105 = phi float [ %1101, %1093 ], [ 0.000000e+00, %1055 ]
  %1106 = phi float [ %1102, %1093 ], [ 0.000000e+00, %1055 ]
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 1024
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1141, label %1111

; <label>:1111                                    ; preds = %1103
  %1112 = add i32 %49, 152
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = and i32 %1114, 255
  %1116 = uitofp i32 %1115 to float
  %1117 = fmul fast float %1116, 0x3F70101020000000
  %1118 = lshr i32 %1114, 8
  %1119 = and i32 %1118, 255
  %1120 = uitofp i32 %1119 to float
  %1121 = fmul fast float %1120, 0x3F70101020000000
  %1122 = lshr i32 %1114, 16
  %1123 = and i32 %1122, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = fmul fast float %1124, 0x3F70101020000000
  %1126 = fmul fast float %1117, %1117
  %1127 = fmul fast float %1121, %1121
  %1128 = fmul fast float %1125, %1125
  %1129 = add i32 %49, 456
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1129, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = add i32 %1131, 0
  %1133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1133, %dx.types.Handle %90, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = extractvalue %dx.types.ResRet.f32 %1134, 1
  %1137 = extractvalue %dx.types.ResRet.f32 %1134, 2
  %1138 = fmul fast float %1126, %1135
  %1139 = fmul fast float %1127, %1136
  %1140 = fmul fast float %1128, %1137
  br label %1141

; <label>:1141                                    ; preds = %1111, %1103
  %1142 = phi float [ %1138, %1111 ], [ 0.000000e+00, %1103 ]
  %1143 = phi float [ %1139, %1111 ], [ 0.000000e+00, %1103 ]
  %1144 = phi float [ %1140, %1111 ], [ 0.000000e+00, %1103 ]
  %1145 = fcmp fast ogt float %1142, 0.000000e+00
  %1146 = fcmp fast ogt float %1143, 0.000000e+00
  %1147 = fcmp fast ogt float %1144, 0.000000e+00
  %1148 = call float @dx.op.unary.f32(i32 23, float %1142)  ; Log(value)
  %1149 = call float @dx.op.unary.f32(i32 23, float %1143)  ; Log(value)
  %1150 = call float @dx.op.unary.f32(i32 23, float %1144)  ; Log(value)
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = lshr i32 %1152, 7
  %1154 = and i32 %1153, 32752
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = fmul fast float %1148, 0xBFE62E4300000000
  %1157 = fmul fast float %1156, %1155
  %1158 = fmul fast float %1149, 0xBFE62E4300000000
  %1159 = fmul fast float %1158, %1155
  %1160 = fmul fast float %1150, 0xBFE62E4300000000
  %1161 = fmul fast float %1160, %1155
  %1162 = select i1 %1145, float %1157, float 1.270000e+02
  %1163 = select i1 %1146, float %1159, float 1.270000e+02
  %1164 = select i1 %1147, float %1161, float 1.270000e+02
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 10240
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1189, label %1169

; <label>:1169                                    ; preds = %1141
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = and i32 %1171, 2048
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1189, label %1174

; <label>:1174                                    ; preds = %1169
  %1175 = add i32 %49, 472
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = add i32 %1177, 0
  %1179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1178, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1180 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1179, %dx.types.Handle %90, float %570, float %571, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1181 = extractvalue %dx.types.ResRet.f32 %1180, 3
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = shl i32 %1183, 4
  %1185 = and i32 %1184, 32752
  %1186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1185)  ; LegacyF16ToF32(value)
  %1187 = fmul fast float %1186, %1181
  %1188 = call float @dx.op.binary.f32(i32 35, float %1187, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1189

; <label>:1189                                    ; preds = %1174, %1169, %1141
  %1190 = phi float [ %1188, %1174 ], [ 0x3F70101020000000, %1169 ], [ 0x3F70101020000000, %1141 ]
  %1191 = add i32 %49, 96
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = and i32 %1193, 255
  %1195 = uitofp i32 %1194 to float
  %1196 = lshr i32 %1193, 8
  %1197 = and i32 %1196, 255
  %1198 = uitofp i32 %1197 to float
  %1199 = call float @dx.op.dot3.f32(i32 55, float %976, float %977, float %978, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1200 = fmul fast float %1198, %1199
  %1201 = fadd fast float %1200, %1195
  %1202 = fmul fast float %1201, 0x3F70101020000000
  %1203 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  br label %1204

; <label>:1204                                    ; preds = %1189, %456
  %1205 = phi float [ 0.000000e+00, %456 ], [ %1057, %1189 ]
  %1206 = phi float [ 0.000000e+00, %456 ], [ %1058, %1189 ]
  %1207 = phi float [ 0.000000e+00, %456 ], [ %976, %1189 ]
  %1208 = phi float [ 0.000000e+00, %456 ], [ %977, %1189 ]
  %1209 = phi float [ 0.000000e+00, %456 ], [ %978, %1189 ]
  %1210 = phi float [ 0.000000e+00, %456 ], [ %1104, %1189 ]
  %1211 = phi float [ 0.000000e+00, %456 ], [ %1105, %1189 ]
  %1212 = phi float [ 0.000000e+00, %456 ], [ %1106, %1189 ]
  %1213 = phi float [ 0.000000e+00, %456 ], [ %1162, %1189 ]
  %1214 = phi float [ 0.000000e+00, %456 ], [ %1163, %1189 ]
  %1215 = phi float [ 0.000000e+00, %456 ], [ %1164, %1189 ]
  %1216 = phi float [ 0.000000e+00, %456 ], [ %962, %1189 ]
  %1217 = phi float [ 0.000000e+00, %456 ], [ %758, %1189 ]
  %1218 = phi float [ 0.000000e+00, %456 ], [ %1056, %1189 ]
  %1219 = phi float [ 0.000000e+00, %456 ], [ %1059, %1189 ]
  %1220 = phi float [ 0.000000e+00, %456 ], [ %1190, %1189 ]
  %1221 = phi float [ 0.000000e+00, %456 ], [ %1203, %1189 ]
  br i1 %404, label %2208, label %1222

; <label>:1222                                    ; preds = %1204
  %1223 = icmp ult i32 %462, 2
  %1224 = add i32 %49, 40
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = add i32 %49, 44
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = or i32 %1229, %1226
  %1231 = icmp eq i32 %1230, 0
  br i1 %1231, label %2208, label %1232

; <label>:1232                                    ; preds = %1222
  %1233 = and i32 %1226, 262144
  %1234 = icmp ne i32 %1233, 0
  %1235 = select i1 %1234, float %52, float 1.000000e+00
  %1236 = select i1 %1234, float %53, float 0.000000e+00
  %1237 = select i1 %1234, float %54, float 0.000000e+00
  %1238 = select i1 %1234, float %55, float 1.000000e+00
  %1239 = select i1 %1234, float %56, float %72
  %1240 = select i1 %1234, float %57, float %73
  %1241 = add i32 %49, 300
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = lshr i32 %1243, 16
  %1245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1244)  ; LegacyF16ToF32(value)
  %1246 = fmul fast float %1245, 0x3F50624DE0000000
  %1247 = add i32 %49, 104
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = lshr i32 %1249, 16
  %1251 = and i32 %1250, 255
  %1252 = lshr i32 %1249, 24
  %1253 = add i32 %49, 308
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = and i32 %1255, 65535
  %1257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1256)  ; LegacyF16ToF32(value)
  %1258 = lshr i32 %1255, 16
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = add i32 %49, 48
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = lshr i32 %1262, 22
  %1264 = shl nuw nsw i32 %1263, 5
  %1265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1264)  ; LegacyF16ToF32(value)
  %1266 = shl i32 %1262, 4
  %1267 = and i32 %1266, 32752
  %1268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1267)  ; LegacyF16ToF32(value)
  %1269 = lshr i32 %1262, 7
  %1270 = and i32 %1269, 32752
  %1271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1270)  ; LegacyF16ToF32(value)
  %1272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1273 = extractvalue %dx.types.CBufRet.f32 %1272, 3
  %1274 = fmul fast float %1273, 1.000000e+03
  %1275 = fmul fast float %314, %1274
  %1276 = call float @dx.op.unary.f32(i32 22, float %1275)  ; Frc(value)
  %1277 = fadd fast float %1276, %304
  %1278 = fmul fast float %315, %1274
  %1279 = call float @dx.op.unary.f32(i32 22, float %1278)  ; Frc(value)
  %1280 = fadd fast float %1279, %306
  %1281 = fmul fast float %1246, %1274
  %1282 = call float @dx.op.unary.f32(i32 22, float %1281)  ; Frc(value)
  %1283 = fmul fast float %1282, 0x401921FB60000000
  %1284 = fadd fast float %1283, %1265
  %1285 = call float @dx.op.unary.f32(i32 13, float %1284)  ; Sin(value)
  %1286 = call float @dx.op.unary.f32(i32 12, float %1284)  ; Cos(value)
  %1287 = fsub fast float -0.000000e+00, %1285
  %1288 = fadd fast float %1239, -5.000000e-01
  %1289 = fadd fast float %1240, -5.000000e-01
  %1290 = fmul fast float %1257, %1288
  %1291 = fmul fast float %1259, %1289
  %1292 = fadd fast float %1290, 5.000000e-01
  %1293 = fadd fast float %1291, 5.000000e-01
  %1294 = fmul fast float %1268, %1292
  %1295 = fmul fast float %1271, %1293
  %1296 = fmul fast float %1286, %1294
  %1297 = call float @dx.op.tertiary.f32(i32 46, float %1287, float %1295, float %1296)  ; FMad(a,b,c)
  %1298 = fmul fast float %1285, %1294
  %1299 = call float @dx.op.tertiary.f32(i32 46, float %1286, float %1295, float %1298)  ; FMad(a,b,c)
  %1300 = fadd fast float %1277, %1297
  %1301 = fadd fast float %1280, %1299
  %1302 = icmp ugt i32 %1251, 1
  %1303 = icmp ugt i32 %1249, 33554431
  %1304 = or i1 %1303, %1302
  br i1 %1304, label %1305, label %1330

; <label>:1305                                    ; preds = %1232
  %1306 = add i32 %49, 244
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = lshr i32 %1308, 16
  %1310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1309)  ; LegacyF16ToF32(value)
  %1311 = fmul fast float %1273, %1310
  %1312 = call float @dx.op.unary.f32(i32 22, float %1311)  ; Frc(value)
  %1313 = mul nuw nsw i32 %1251, %1252
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1312, %1314
  %1316 = call float @dx.op.unary.f32(i32 27, float %1315)  ; Round_ni(value)
  %1317 = fptoui float %1316 to i32
  %1318 = urem i32 %1317, %1251
  %1319 = udiv i32 %1317, %1252
  %1320 = call float @dx.op.unary.f32(i32 22, float %1300)  ; Frc(value)
  %1321 = call float @dx.op.unary.f32(i32 22, float %1301)  ; Frc(value)
  %1322 = uitofp i32 %1318 to float
  %1323 = uitofp i32 %1319 to float
  %1324 = fadd fast float %1320, %1322
  %1325 = fadd fast float %1321, %1323
  %1326 = uitofp i32 %1251 to float
  %1327 = uitofp i32 %1252 to float
  %1328 = fdiv fast float %1324, %1326
  %1329 = fdiv fast float %1325, %1327
  br label %1330

; <label>:1330                                    ; preds = %1305, %1232
  %1331 = phi float [ %1328, %1305 ], [ %1300, %1232 ]
  %1332 = phi float [ %1329, %1305 ], [ %1301, %1232 ]
  %1333 = and i32 %1226, 16777216
  %1334 = icmp eq i32 %1333, 0
  br i1 %1334, label %1444, label %1335

; <label>:1335                                    ; preds = %1330
  %1336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1337 = extractvalue %dx.types.CBufRet.f32 %1336, 0
  %1338 = extractvalue %dx.types.CBufRet.f32 %1336, 1
  %1339 = extractvalue %dx.types.CBufRet.f32 %1336, 2
  %1340 = fadd fast float %1337, %156
  %1341 = fadd fast float %1338, %157
  %1342 = fadd fast float %1339, %158
  %1343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1344 = extractvalue %dx.types.CBufRet.f32 %1343, 0
  %1345 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1346 = icmp eq i32 %50, 65535
  br i1 %1346, label %1441, label %1347

; <label>:1347                                    ; preds = %1335
  %1348 = lshr i32 %50, 1
  %1349 = shl i32 %1348, 2
  %1350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1349, i32 undef)  ; BufferLoad(srv,index,wot)
  %1351 = extractvalue %dx.types.ResRet.i32 %1350, 0
  %1352 = and i32 %50, 1
  %1353 = icmp ne i32 %1352, 0
  %1354 = lshr i32 %1351, 16
  %1355 = and i32 %1351, 65535
  %1356 = select i1 %1353, i32 %1354, i32 %1355
  %1357 = icmp eq i32 %1356, 65535
  br i1 %1357, label %1437, label %1358

; <label>:1358                                    ; preds = %1347
  %1359 = mul nuw nsw i32 %1356, 40
  %1360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = extractvalue %dx.types.ResRet.f32 %1360, 1
  %1363 = extractvalue %dx.types.ResRet.f32 %1360, 2
  %1364 = add nuw nsw i32 %1359, 12
  %1365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1364, i32 undef)  ; BufferLoad(srv,index,wot)
  %1366 = extractvalue %dx.types.ResRet.f32 %1365, 0
  %1367 = extractvalue %dx.types.ResRet.f32 %1365, 1
  %1368 = extractvalue %dx.types.ResRet.f32 %1365, 2
  %1369 = add nuw nsw i32 %1359, 24
  %1370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = extractvalue %dx.types.ResRet.f32 %1370, 1
  %1373 = extractvalue %dx.types.ResRet.f32 %1370, 2
  %1374 = add nuw nsw i32 %1359, 36
  %1375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %1374, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.f32 %1375, 0
  %1377 = fsub fast float %1340, %1361
  %1378 = fsub fast float %1341, %1362
  %1379 = fsub fast float %1342, %1363
  %1380 = fmul fast float %1376, %1377
  %1381 = fmul fast float %1376, %1378
  %1382 = fmul fast float %1376, %1379
  %1383 = call float @dx.op.unary.f32(i32 27, float %1380)  ; Round_ni(value)
  %1384 = call float @dx.op.unary.f32(i32 27, float %1381)  ; Round_ni(value)
  %1385 = call float @dx.op.unary.f32(i32 27, float %1382)  ; Round_ni(value)
  %1386 = fadd fast float %1383, 5.000000e-01
  %1387 = fadd fast float %1384, 5.000000e-01
  %1388 = fadd fast float %1385, 5.000000e-01
  %1389 = fmul fast float %1386, %1366
  %1390 = fmul fast float %1387, %1367
  %1391 = fmul fast float %1388, %1368
  %1392 = shl i32 %50, 2
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = add i32 %1394, 0
  %1396 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1395, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1397 = call float @dx.op.unary.f32(i32 22, float %1389)  ; Frc(value)
  %1398 = call float @dx.op.unary.f32(i32 22, float %1390)  ; Frc(value)
  %1399 = call float @dx.op.unary.f32(i32 22, float %1391)  ; Frc(value)
  %1400 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1396, %dx.types.Handle %44, float %1397, float %1398, float %1399, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.ResRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.ResRet.f32 %1400, 2
  %1404 = fmul fast float %1401, 1.023000e+03
  %1405 = fmul fast float %1402, 1.023000e+03
  %1406 = fmul fast float %1403, 1.023000e+03
  %1407 = fadd fast float %1404, 5.000000e-01
  %1408 = fadd fast float %1405, 5.000000e-01
  %1409 = fadd fast float %1406, 5.000000e-01
  %1410 = call float @dx.op.unary.f32(i32 27, float %1407)  ; Round_ni(value)
  %1411 = call float @dx.op.unary.f32(i32 27, float %1408)  ; Round_ni(value)
  %1412 = call float @dx.op.unary.f32(i32 27, float %1409)  ; Round_ni(value)
  %1413 = fsub fast float %1380, %1383
  %1414 = fsub fast float %1381, %1384
  %1415 = fsub fast float %1382, %1385
  %1416 = fmul fast float %1413, 7.500000e-01
  %1417 = fmul fast float %1414, 7.500000e-01
  %1418 = fmul fast float %1415, 7.500000e-01
  %1419 = fadd fast float %1383, 1.250000e-01
  %1420 = fadd fast float %1419, %1416
  %1421 = fadd fast float %1420, %1410
  %1422 = fadd fast float %1384, 1.250000e-01
  %1423 = fadd fast float %1422, %1417
  %1424 = fadd fast float %1423, %1411
  %1425 = fadd fast float %1385, 1.250000e-01
  %1426 = fadd fast float %1425, %1418
  %1427 = fadd fast float %1426, %1412
  %1428 = fmul fast float %1421, %1371
  %1429 = fmul fast float %1424, %1372
  %1430 = fmul fast float %1427, %1373
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = add i32 %1432, 0
  %1434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1433, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1434, %dx.types.Handle %42, float %1428, float %1429, float %1430, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1436 = extractvalue %dx.types.ResRet.f32 %1435, 0
  br label %1437

; <label>:1437                                    ; preds = %1358, %1347
  %1438 = phi float [ %1436, %1358 ], [ -1.000000e+00, %1347 ]
  %1439 = fadd fast float %1438, %1345
  %1440 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  br label %1441

; <label>:1441                                    ; preds = %1437, %1335
  %1442 = phi float [ %1440, %1437 ], [ %1345, %1335 ]
  %1443 = fmul fast float %1442, %459
  br label %1444

; <label>:1444                                    ; preds = %1441, %1330
  %1445 = phi float [ %1443, %1441 ], [ %459, %1330 ]
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = and i32 %1447, 256
  %1449 = icmp eq i32 %1448, 0
  br i1 %1449, label %1496, label %1450

; <label>:1450                                    ; preds = %1444
  %1451 = add i32 %49, 428
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1451, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = add i32 %1453, 0
  %1455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1456 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1455, %dx.types.Handle %90, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1457 = extractvalue %dx.types.ResRet.f32 %1456, 0
  %1458 = add i32 %49, 116
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = shl i32 %1460, 4
  %1462 = and i32 %1461, 32752
  %1463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1462)  ; LegacyF16ToF32(value)
  %1464 = lshr i32 %1460, 7
  %1465 = and i32 %1464, 32752
  %1466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1465)  ; LegacyF16ToF32(value)
  %1467 = fsub fast float 1.000000e+00, %1445
  %1468 = call float @dx.op.binary.f32(i32 35, float %1467, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1469 = bitcast float %1445 to i32
  %1470 = sitofp i32 %1469 to float
  %1471 = fadd fast float %1470, 0xC1CFBF8940000000
  %1472 = fmul fast float %1466, %1471
  %1473 = fadd fast float %1472, 0x41CFBF8940000000
  %1474 = fptosi float %1473 to i32
  %1475 = bitcast i32 %1474 to float
  %1476 = bitcast float %1468 to i32
  %1477 = sitofp i32 %1476 to float
  %1478 = fadd fast float %1477, 0xC1CFBF8940000000
  %1479 = fmul fast float %1478, %1466
  %1480 = fadd fast float %1479, 0x41CFBF8940000000
  %1481 = fptosi float %1480 to i32
  %1482 = bitcast i32 %1481 to float
  %1483 = fmul fast float %1475, %1463
  %1484 = fmul fast float %1482, %1463
  %1485 = fsub fast float %1468, %1483
  %1486 = fadd fast float %1484, %1468
  %1487 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  %1488 = call float @dx.op.unary.f32(i32 7, float %1486)  ; Saturate(value)
  %1489 = fsub fast float %1457, %1487
  %1490 = fsub fast float %1488, %1487
  %1491 = bitcast float %1490 to i32
  %1492 = sub nsw i32 2129859010, %1491
  %1493 = bitcast i32 %1492 to float
  %1494 = fmul fast float %1493, %1489
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  br label %1496

; <label>:1496                                    ; preds = %1450, %1444
  %1497 = phi float [ %1495, %1450 ], [ %1445, %1444 ]
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = and i32 %1499, 128
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1518, label %1502

; <label>:1502                                    ; preds = %1496
  %1503 = add i32 %49, 412
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = add i32 %1505, 0
  %1507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1508 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1507, %dx.types.Handle %90, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1509 = extractvalue %dx.types.ResRet.f32 %1508, 0
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = and i32 %1511, 524288
  %1513 = icmp ne i32 %1512, 0
  %1514 = fcmp fast ogt float %1509, 0x3FE0101020000000
  %1515 = select i1 %1514, float 1.000000e+00, float 0.000000e+00
  %1516 = select i1 %1513, float %1515, float %1509
  %1517 = fmul fast float %1516, %1497
  br label %1518

; <label>:1518                                    ; preds = %1502, %1496
  %1519 = phi float [ %1517, %1502 ], [ %1497, %1496 ]
  %1520 = fcmp fast ult float %1519, 0x3F70101020000000
  br i1 %1520, label %2208, label %1521

; <label>:1521                                    ; preds = %1518
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 16
  %1525 = icmp eq i32 %1524, 0
  br i1 %1525, label %1724, label %1526

; <label>:1526                                    ; preds = %1521
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = add i32 %49, 364
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = add i32 %1531, 0
  %1533 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1532, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1534 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1533, %dx.types.Handle %89, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1535 = extractvalue %dx.types.ResRet.f32 %1534, 0
  %1536 = extractvalue %dx.types.ResRet.f32 %1534, 1
  %1537 = extractvalue %dx.types.ResRet.f32 %1534, 2
  %1538 = extractvalue %dx.types.ResRet.f32 %1534, 3
  %1539 = and i32 %1528, 255
  %1540 = uitofp i32 %1539 to float
  %1541 = lshr i32 %1528, 8
  %1542 = and i32 %1541, 255
  %1543 = uitofp i32 %1542 to float
  %1544 = fmul fast float %1538, %1540
  %1545 = fadd fast float %1544, %1543
  %1546 = fmul fast float %1545, 0x3F70101000000000
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = and i32 %1548, 512
  %1550 = icmp eq i32 %1549, 0
  br i1 %1550, label %1559, label %1551

; <label>:1551                                    ; preds = %1526
  %1552 = add i32 %49, 444
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = add i32 %1554, 0
  %1556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1556, %dx.types.Handle %90, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  br label %1559

; <label>:1559                                    ; preds = %1551, %1526
  %1560 = phi float [ %1558, %1551 ], [ 1.000000e+00, %1526 ]
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = and i32 %1562, 33554432
  %1564 = icmp eq i32 %1563, 0
  br i1 %1564, label %1671, label %1565

; <label>:1565                                    ; preds = %1559
  %1566 = add i32 %49, 240
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = and i32 %1568, 65535
  %1570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1569)  ; LegacyF16ToF32(value)
  %1571 = lshr i32 %1568, 16
  %1572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1571)  ; LegacyF16ToF32(value)
  %1573 = add i32 %49, 244
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1573, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 65535
  %1577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1576)  ; LegacyF16ToF32(value)
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = lshr i32 %1579, 24
  %1581 = uitofp i32 %1580 to float
  %1582 = fmul fast float %1581, 0x3F70101020000000
  %1583 = and i32 %1579, 255
  %1584 = uitofp i32 %1583 to float
  %1585 = fmul fast float %1584, 0x3F70101020000000
  %1586 = lshr i32 %1579, 8
  %1587 = and i32 %1586, 255
  %1588 = uitofp i32 %1587 to float
  %1589 = fmul fast float %1588, 0x3F70101020000000
  %1590 = lshr i32 %1579, 16
  %1591 = and i32 %1590, 255
  %1592 = uitofp i32 %1591 to float
  %1593 = fmul fast float %1592, 0x3F70101020000000
  %1594 = add i32 %49, 236
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = lshr i32 %1596, 24
  %1598 = uitofp i32 %1597 to float
  %1599 = fmul fast float %1598, 0x3F70101020000000
  %1600 = and i32 %1596, 255
  %1601 = uitofp i32 %1600 to float
  %1602 = fmul fast float %1601, 0x3F70101020000000
  %1603 = lshr i32 %1596, 8
  %1604 = and i32 %1603, 255
  %1605 = uitofp i32 %1604 to float
  %1606 = fmul fast float %1605, 0x3F70101020000000
  %1607 = lshr i32 %1596, 16
  %1608 = and i32 %1607, 255
  %1609 = uitofp i32 %1608 to float
  %1610 = fmul fast float %1609, 0x3F70101020000000
  %1611 = bitcast float %1535 to i32
  %1612 = ashr i32 %1611, 1
  %1613 = sub nsw i32 1597463174, %1612
  %1614 = bitcast i32 %1613 to float
  %1615 = fmul fast float %1535, 5.000000e-01
  %1616 = fmul fast float %1614, %1614
  %1617 = fmul fast float %1616, %1615
  %1618 = fsub fast float 1.500000e+00, %1617
  %1619 = fmul fast float %1614, %1535
  %1620 = fmul fast float %1619, %1618
  %1621 = bitcast float %1536 to i32
  %1622 = ashr i32 %1621, 1
  %1623 = sub nsw i32 1597463174, %1622
  %1624 = bitcast i32 %1623 to float
  %1625 = fmul fast float %1536, 5.000000e-01
  %1626 = fmul fast float %1624, %1624
  %1627 = fmul fast float %1626, %1625
  %1628 = fsub fast float 1.500000e+00, %1627
  %1629 = fmul fast float %1624, %1536
  %1630 = fmul fast float %1629, %1628
  %1631 = bitcast float %1537 to i32
  %1632 = ashr i32 %1631, 1
  %1633 = sub nsw i32 1597463174, %1632
  %1634 = bitcast i32 %1633 to float
  %1635 = fmul fast float %1537, 5.000000e-01
  %1636 = fmul fast float %1634, %1634
  %1637 = fmul fast float %1636, %1635
  %1638 = fsub fast float 1.500000e+00, %1637
  %1639 = fmul fast float %1634, %1537
  %1640 = fmul fast float %1639, %1638
  %1641 = fsub fast float %1620, %1602
  %1642 = fsub fast float %1630, %1606
  %1643 = fsub fast float %1640, %1610
  %1644 = fmul fast float %1641, %1570
  %1645 = fmul fast float %1642, %1572
  %1646 = fmul fast float %1643, %1577
  %1647 = fadd fast float %1644, %1585
  %1648 = fadd fast float %1645, %1589
  %1649 = fadd fast float %1646, %1593
  %1650 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1651 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  %1652 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  %1653 = fmul fast float %1650, %1650
  %1654 = fmul fast float %1651, %1651
  %1655 = fmul fast float %1652, %1652
  %1656 = fsub fast float %1653, %1535
  %1657 = fsub fast float %1654, %1536
  %1658 = fsub fast float %1655, %1537
  %1659 = fmul fast float %1656, %1560
  %1660 = fmul fast float %1657, %1560
  %1661 = fmul fast float %1658, %1560
  %1662 = fadd fast float %1659, %1535
  %1663 = fadd fast float %1660, %1536
  %1664 = fadd fast float %1661, %1537
  %1665 = fadd fast float %1582, %1546
  %1666 = fsub fast float %1665, %1599
  %1667 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  %1668 = fsub fast float %1667, %1546
  %1669 = fmul fast float %1668, %1560
  %1670 = fadd fast float %1669, %1546
  br label %1724

; <label>:1671                                    ; preds = %1559
  %1672 = and i32 %1562, 134217728
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1708, label %1674

; <label>:1674                                    ; preds = %1671
  %1675 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1676 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1677 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %1678 = fadd fast float %1675, -5.000000e-01
  %1679 = fadd fast float %1676, -5.000000e-01
  %1680 = fadd fast float %1677, -5.000000e-01
  %1681 = fmul fast float %1678, %1560
  %1682 = fmul fast float %1679, %1560
  %1683 = fmul fast float %1680, %1560
  %1684 = fadd fast float %1681, 5.000000e-01
  %1685 = fadd fast float %1682, 5.000000e-01
  %1686 = fadd fast float %1683, 5.000000e-01
  %1687 = call float @dx.op.unary.f32(i32 24, float %1535)  ; Sqrt(value)
  %1688 = call float @dx.op.unary.f32(i32 24, float %1536)  ; Sqrt(value)
  %1689 = call float @dx.op.unary.f32(i32 24, float %1537)  ; Sqrt(value)
  %1690 = fmul fast float %1684, 2.000000e+00
  %1691 = fsub fast float 1.000000e+00, %1690
  %1692 = fmul fast float %1691, %1687
  %1693 = fadd fast float %1692, %1690
  %1694 = fmul fast float %1693, %1687
  %1695 = fmul fast float %1685, 2.000000e+00
  %1696 = fsub fast float 1.000000e+00, %1695
  %1697 = fmul fast float %1696, %1688
  %1698 = fadd fast float %1697, %1695
  %1699 = fmul fast float %1698, %1688
  %1700 = fmul fast float %1686, 2.000000e+00
  %1701 = fsub fast float 1.000000e+00, %1700
  %1702 = fmul fast float %1701, %1689
  %1703 = fadd fast float %1702, %1700
  %1704 = fmul fast float %1703, %1689
  %1705 = fmul fast float %1694, %1694
  %1706 = fmul fast float %1699, %1699
  %1707 = fmul fast float %1704, %1704
  br label %1724

; <label>:1708                                    ; preds = %1671
  %1709 = fmul fast float %291, %291
  %1710 = fmul fast float %295, %295
  %1711 = fmul fast float %299, %299
  %1712 = fadd fast float %1709, -1.000000e+00
  %1713 = fadd fast float %1710, -1.000000e+00
  %1714 = fadd fast float %1711, -1.000000e+00
  %1715 = fmul fast float %1560, %1712
  %1716 = fmul fast float %1560, %1713
  %1717 = fmul fast float %1560, %1714
  %1718 = fadd fast float %1715, 1.000000e+00
  %1719 = fadd fast float %1716, 1.000000e+00
  %1720 = fadd fast float %1717, 1.000000e+00
  %1721 = fmul fast float %1718, %1535
  %1722 = fmul fast float %1719, %1536
  %1723 = fmul fast float %1720, %1537
  br label %1724

; <label>:1724                                    ; preds = %1708, %1674, %1565, %1521
  %1725 = phi float [ %1670, %1565 ], [ %1546, %1674 ], [ %1546, %1708 ], [ 0x3FA23C0BE0000000, %1521 ]
  %1726 = phi float [ %1662, %1565 ], [ %1705, %1674 ], [ %1721, %1708 ], [ 1.000000e+00, %1521 ]
  %1727 = phi float [ %1663, %1565 ], [ %1706, %1674 ], [ %1722, %1708 ], [ 1.000000e+00, %1521 ]
  %1728 = phi float [ %1664, %1565 ], [ %1707, %1674 ], [ %1723, %1708 ], [ 1.000000e+00, %1521 ]
  %1729 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1730 = extractvalue %dx.types.CBufRet.i32 %1729, 1
  %1731 = and i32 %1730, 1
  %1732 = icmp ne i32 %1731, 0
  %1733 = add i32 %49, 356
  %1734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.i32 %1734, 0
  %1736 = and i32 %1735, 32
  %1737 = icmp ne i32 %1736, 0
  %1738 = and i1 %1732, %1737
  %1739 = select i1 %1738, float 1.000000e+00, float %1726
  %1740 = select i1 %1738, float 0x3FD3333340000000, float %1727
  %1741 = select i1 %1738, float 0x3FD3333340000000, float %1728
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = and i32 %1743, 32
  %1745 = icmp eq i32 %1744, 0
  br i1 %1745, label %1818, label %1746

; <label>:1746                                    ; preds = %1724
  %1747 = add i32 %49, 108
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = add i32 %49, 380
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = add i32 %1752, 0
  %1754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1755 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1754, %dx.types.Handle %89, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1756 = extractvalue %dx.types.ResRet.f32 %1755, 0
  %1757 = extractvalue %dx.types.ResRet.f32 %1755, 1
  %1758 = extractvalue %dx.types.ResRet.f32 %1755, 2
  %1759 = extractvalue %dx.types.ResRet.f32 %1755, 3
  %1760 = and i32 %1749, 255
  %1761 = uitofp i32 %1760 to float
  %1762 = lshr i32 %1749, 8
  %1763 = and i32 %1762, 255
  %1764 = uitofp i32 %1763 to float
  %1765 = lshr i32 %1749, 16
  %1766 = and i32 %1765, 255
  %1767 = uitofp i32 %1766 to float
  %1768 = fmul fast float %1767, 0x3F70101000000000
  %1769 = fmul fast float %1756, %1761
  %1770 = fadd fast float %1769, %1764
  %1771 = fmul fast float %1770, 0x3F70101000000000
  %1772 = fadd fast float %1757, -5.000000e-01
  %1773 = fadd fast float %1759, -5.000000e-01
  %1774 = fmul fast float %1772, %1768
  %1775 = fmul fast float %1773, %1768
  %1776 = fadd fast float %1774, 5.000000e-01
  %1777 = fadd fast float %1775, 5.000000e-01
  %1778 = fmul fast float %1776, 2.000000e+00
  %1779 = fadd fast float %1778, -1.000000e+00
  %1780 = fmul fast float %1777, 2.000000e+00
  %1781 = fadd fast float %1780, -1.000000e+00
  %1782 = fadd fast float %1779, %1781
  %1783 = fmul fast float %1782, 5.000000e-01
  %1784 = fsub fast float %1779, %1781
  %1785 = fmul fast float %1784, 5.000000e-01
  %1786 = call float @dx.op.unary.f32(i32 6, float %1783)  ; FAbs(value)
  %1787 = fsub fast float 1.000000e+00, %1786
  %1788 = call float @dx.op.unary.f32(i32 6, float %1785)  ; FAbs(value)
  %1789 = fsub fast float %1787, %1788
  %1790 = call float @dx.op.dot3.f32(i32 55, float %1783, float %1785, float %1789, float %1783, float %1785, float %1789)  ; Dot3(ax,ay,az,bx,by,bz)
  %1791 = call float @dx.op.unary.f32(i32 25, float %1790)  ; Rsqrt(value)
  %1792 = fmul fast float %1783, %1791
  %1793 = fmul fast float %1785, %1791
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = and i32 %1795, 67108864
  %1797 = icmp eq i32 %1796, 0
  br i1 %1797, label %1814, label %1798

; <label>:1798                                    ; preds = %1746
  %1799 = add i32 %49, 296
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = and i32 %1801, 65535
  %1803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1802)  ; LegacyF16ToF32(value)
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = and i32 %1805, 65535
  %1807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1806)  ; LegacyF16ToF32(value)
  %1808 = lshr i32 %1801, 16
  %1809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1808)  ; LegacyF16ToF32(value)
  %1810 = fsub fast float %1771, %1809
  %1811 = fmul fast float %1810, %1803
  %1812 = fadd fast float %1811, %1807
  %1813 = call float @dx.op.unary.f32(i32 7, float %1812)  ; Saturate(value)
  br label %1814

; <label>:1814                                    ; preds = %1798, %1746
  %1815 = phi float [ %1813, %1798 ], [ %1771, %1746 ]
  %1816 = call float @dx.op.dot2.f32(i32 54, float %1792, float %1793, float %1235, float %1236)  ; Dot2(ax,ay,bx,by)
  %1817 = call float @dx.op.dot2.f32(i32 54, float %1792, float %1793, float %1237, float %1238)  ; Dot2(ax,ay,bx,by)
  br label %1818

; <label>:1818                                    ; preds = %1814, %1724
  %1819 = phi float [ %1815, %1814 ], [ 0x3FD6666660000000, %1724 ]
  %1820 = phi float [ %1816, %1814 ], [ 0.000000e+00, %1724 ]
  %1821 = phi float [ %1817, %1814 ], [ 0.000000e+00, %1724 ]
  %1822 = phi float [ %1758, %1814 ], [ 1.000000e+00, %1724 ]
  %1823 = add i32 %49, 176
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = lshr i32 %1825, 22
  %1827 = shl nuw nsw i32 %1826, 5
  %1828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1827)  ; LegacyF16ToF32(value)
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = and i32 %1830, 64
  %1832 = icmp eq i32 %1831, 0
  br i1 %1832, label %1866, label %1833

; <label>:1833                                    ; preds = %1818
  %1834 = add i32 %49, 396
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = add i32 %1836, 0
  %1838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1837, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.i32 %1839, 0
  %1841 = and i32 %1840, 131072
  %1842 = icmp eq i32 %1841, 0
  %1843 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1838, %dx.types.Handle %89, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1844 = extractvalue %dx.types.ResRet.f32 %1843, 0
  %1845 = extractvalue %dx.types.ResRet.f32 %1843, 1
  %1846 = extractvalue %dx.types.ResRet.f32 %1843, 2
  %1847 = fmul fast float %1844, %279
  %1848 = fmul fast float %1845, %282
  %1849 = fmul fast float %1846, %285
  br i1 %1842, label %1856, label %1850

; <label>:1850                                    ; preds = %1833
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 0
  %1853 = fmul fast float %1852, %1847
  %1854 = fmul fast float %1852, %1848
  %1855 = fmul fast float %1852, %1849
  br label %1856

; <label>:1856                                    ; preds = %1850, %1833
  %1857 = phi float [ %1853, %1850 ], [ %1847, %1833 ]
  %1858 = phi float [ %1854, %1850 ], [ %1848, %1833 ]
  %1859 = phi float [ %1855, %1850 ], [ %1849, %1833 ]
  %1860 = fmul fast float %1857, %1828
  %1861 = select i1 %217, float %1860, float %1857
  %1862 = call float @dx.op.dot3.f32(i32 55, float %1861, float %1858, float %1859, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1863 = select i1 %217, float 0.000000e+00, float %1857
  %1864 = select i1 %217, float %1862, float %1858
  %1865 = select i1 %217, float 0.000000e+00, float %1859
  br label %1866

; <label>:1866                                    ; preds = %1856, %1818
  %1867 = phi float [ %1863, %1856 ], [ 0.000000e+00, %1818 ]
  %1868 = phi float [ %1864, %1856 ], [ 0.000000e+00, %1818 ]
  %1869 = phi float [ %1865, %1856 ], [ 0.000000e+00, %1818 ]
  %1870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.i32 %1870, 0
  %1872 = and i32 %1871, 1024
  %1873 = icmp eq i32 %1872, 0
  br i1 %1873, label %1904, label %1874

; <label>:1874                                    ; preds = %1866
  %1875 = add i32 %49, 168
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = and i32 %1877, 255
  %1879 = uitofp i32 %1878 to float
  %1880 = fmul fast float %1879, 0x3F70101020000000
  %1881 = lshr i32 %1877, 8
  %1882 = and i32 %1881, 255
  %1883 = uitofp i32 %1882 to float
  %1884 = fmul fast float %1883, 0x3F70101020000000
  %1885 = lshr i32 %1877, 16
  %1886 = and i32 %1885, 255
  %1887 = uitofp i32 %1886 to float
  %1888 = fmul fast float %1887, 0x3F70101020000000
  %1889 = fmul fast float %1880, %1880
  %1890 = fmul fast float %1884, %1884
  %1891 = fmul fast float %1888, %1888
  %1892 = add i32 %49, 460
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = add i32 %1894, 0
  %1896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1895, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1896, %dx.types.Handle %90, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1898 = extractvalue %dx.types.ResRet.f32 %1897, 0
  %1899 = extractvalue %dx.types.ResRet.f32 %1897, 1
  %1900 = extractvalue %dx.types.ResRet.f32 %1897, 2
  %1901 = fmul fast float %1889, %1898
  %1902 = fmul fast float %1890, %1899
  %1903 = fmul fast float %1891, %1900
  br label %1904

; <label>:1904                                    ; preds = %1874, %1866
  %1905 = phi float [ %1901, %1874 ], [ 0.000000e+00, %1866 ]
  %1906 = phi float [ %1902, %1874 ], [ 0.000000e+00, %1866 ]
  %1907 = phi float [ %1903, %1874 ], [ 0.000000e+00, %1866 ]
  %1908 = fcmp fast ogt float %1905, 0.000000e+00
  %1909 = fcmp fast ogt float %1906, 0.000000e+00
  %1910 = fcmp fast ogt float %1907, 0.000000e+00
  %1911 = call float @dx.op.unary.f32(i32 23, float %1905)  ; Log(value)
  %1912 = call float @dx.op.unary.f32(i32 23, float %1906)  ; Log(value)
  %1913 = call float @dx.op.unary.f32(i32 23, float %1907)  ; Log(value)
  %1914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.i32 %1914, 0
  %1916 = lshr i32 %1915, 7
  %1917 = and i32 %1916, 32752
  %1918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1917)  ; LegacyF16ToF32(value)
  %1919 = fmul fast float %1911, 0xBFE62E4300000000
  %1920 = fmul fast float %1919, %1918
  %1921 = fmul fast float %1912, 0xBFE62E4300000000
  %1922 = fmul fast float %1921, %1918
  %1923 = fmul fast float %1913, 0xBFE62E4300000000
  %1924 = fmul fast float %1923, %1918
  %1925 = select i1 %1908, float %1920, float 1.270000e+02
  %1926 = select i1 %1909, float %1922, float 1.270000e+02
  %1927 = select i1 %1910, float %1924, float 1.270000e+02
  %1928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.i32 %1928, 0
  %1930 = and i32 %1929, 10240
  %1931 = icmp eq i32 %1930, 0
  br i1 %1931, label %1952, label %1932

; <label>:1932                                    ; preds = %1904
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = and i32 %1934, 2048
  %1936 = icmp eq i32 %1935, 0
  br i1 %1936, label %1952, label %1937

; <label>:1937                                    ; preds = %1932
  %1938 = add i32 %49, 476
  %1939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.i32 %1939, 0
  %1941 = add i32 %1940, 0
  %1942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1943 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1942, %dx.types.Handle %90, float %1331, float %1332, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1944 = extractvalue %dx.types.ResRet.f32 %1943, 3
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = shl i32 %1946, 4
  %1948 = and i32 %1947, 32752
  %1949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1948)  ; LegacyF16ToF32(value)
  %1950 = fmul fast float %1949, %1944
  %1951 = call float @dx.op.binary.f32(i32 35, float %1950, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1952

; <label>:1952                                    ; preds = %1937, %1932, %1904
  %1953 = phi float [ %1951, %1937 ], [ 0x3F70101020000000, %1932 ], [ 0x3F70101020000000, %1904 ]
  %1954 = add i32 %49, 112
  %1955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1956 = extractvalue %dx.types.ResRet.i32 %1955, 0
  %1957 = and i32 %1956, 255
  %1958 = uitofp i32 %1957 to float
  %1959 = lshr i32 %1956, 8
  %1960 = and i32 %1959, 255
  %1961 = uitofp i32 %1960 to float
  %1962 = call float @dx.op.dot3.f32(i32 55, float %1739, float %1740, float %1741, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1963 = fmul fast float %1961, %1962
  %1964 = fadd fast float %1963, %1958
  %1965 = fmul fast float %1964, 0x3F70101020000000
  %1966 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  br i1 %1223, label %1967, label %2002

; <label>:1967                                    ; preds = %1952
  %1968 = fmul fast float %1953, 2.000000e+00
  %1969 = fcmp fast olt float %1925, 1.270000e+02
  %1970 = fcmp fast olt float %1926, 1.270000e+02
  %1971 = fcmp fast olt float %1927, 1.270000e+02
  %1972 = fmul fast float %1925, 0xBFF7154760000000
  %1973 = fmul fast float %1972, %1968
  %1974 = fmul fast float %1926, 0xBFF7154760000000
  %1975 = fmul fast float %1974, %1968
  %1976 = fmul fast float %1927, 0xBFF7154760000000
  %1977 = fmul fast float %1976, %1968
  %1978 = call float @dx.op.unary.f32(i32 21, float %1973)  ; Exp(value)
  %1979 = call float @dx.op.unary.f32(i32 21, float %1975)  ; Exp(value)
  %1980 = call float @dx.op.unary.f32(i32 21, float %1977)  ; Exp(value)
  %1981 = call float @dx.op.unary.f32(i32 7, float %1978)  ; Saturate(value)
  %1982 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1983 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  %1984 = fadd fast float %1981, -1.000000e+00
  %1985 = select i1 %1969, float %1984, float -1.000000e+00
  %1986 = fadd fast float %1982, -1.000000e+00
  %1987 = select i1 %1970, float %1986, float -1.000000e+00
  %1988 = fadd fast float %1983, -1.000000e+00
  %1989 = select i1 %1971, float %1988, float -1.000000e+00
  %1990 = fmul fast float %1985, %1519
  %1991 = fmul fast float %1987, %1519
  %1992 = fmul fast float %1989, %1519
  %1993 = fadd fast float %1990, 1.000000e+00
  %1994 = fadd fast float %1991, 1.000000e+00
  %1995 = fadd fast float %1992, 1.000000e+00
  %1996 = fmul fast float %1993, %1207
  %1997 = fmul fast float %1994, %1208
  %1998 = fmul fast float %1995, %1209
  %1999 = fmul fast float %1993, %1210
  %2000 = fmul fast float %1994, %1211
  %2001 = fmul fast float %1995, %1212
  br label %2002

; <label>:2002                                    ; preds = %1967, %1952
  %2003 = phi float [ %1996, %1967 ], [ %1207, %1952 ]
  %2004 = phi float [ %1997, %1967 ], [ %1208, %1952 ]
  %2005 = phi float [ %1998, %1967 ], [ %1209, %1952 ]
  %2006 = phi float [ %1999, %1967 ], [ %1210, %1952 ]
  %2007 = phi float [ %2000, %1967 ], [ %1211, %1952 ]
  %2008 = phi float [ %2001, %1967 ], [ %1212, %1952 ]
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = and i32 %2010, 3
  %2012 = icmp eq i32 %2011, 3
  br i1 %2012, label %2091, label %2013

; <label>:2013                                    ; preds = %2002
  %2014 = and i32 %2010, 16
  %2015 = icmp ne i32 %2014, 0
  %2016 = select i1 %2015, float %1519, float 0.000000e+00
  %2017 = icmp eq i32 %2011, 0
  br i1 %2017, label %2018, label %2046

; <label>:2018                                    ; preds = %2013
  %2019 = and i32 %2010, 64
  %2020 = icmp ne i32 %2019, 0
  %2021 = select i1 %2020, float %1519, float 0.000000e+00
  %2022 = fsub fast float %1739, %2003
  %2023 = fsub fast float %1740, %2004
  %2024 = fsub fast float %1741, %2005
  %2025 = fmul fast float %2016, %2022
  %2026 = fmul fast float %2016, %2023
  %2027 = fmul fast float %2016, %2024
  %2028 = fadd fast float %2025, %2003
  %2029 = fadd fast float %2026, %2004
  %2030 = fadd fast float %2027, %2005
  %2031 = fsub fast float %1725, %1216
  %2032 = fmul fast float %2016, %2031
  %2033 = fadd fast float %2032, %1216
  %2034 = fsub fast float %1867, %2006
  %2035 = fsub fast float %1868, %2007
  %2036 = fsub fast float %1869, %2008
  %2037 = fmul fast float %2021, %2034
  %2038 = fmul fast float %2021, %2035
  %2039 = fmul fast float %2021, %2036
  %2040 = fadd fast float %2037, %2006
  %2041 = fadd fast float %2038, %2007
  %2042 = fadd fast float %2039, %2008
  %2043 = fsub fast float %1966, %1221
  %2044 = fmul fast float %2016, %2043
  %2045 = fadd fast float %2044, %1221
  br label %2091

; <label>:2046                                    ; preds = %2013
  %2047 = icmp eq i32 %2011, 1
  br i1 %2047, label %2048, label %2061

; <label>:2048                                    ; preds = %2046
  %2049 = fadd fast float %1739, -1.000000e+00
  %2050 = fadd fast float %1740, -1.000000e+00
  %2051 = fadd fast float %1741, -1.000000e+00
  %2052 = fmul fast float %2016, %2049
  %2053 = fmul fast float %2016, %2050
  %2054 = fmul fast float %2016, %2051
  %2055 = fadd fast float %2052, 1.000000e+00
  %2056 = fadd fast float %2053, 1.000000e+00
  %2057 = fadd fast float %2054, 1.000000e+00
  %2058 = fmul fast float %2055, %2003
  %2059 = fmul fast float %2056, %2004
  %2060 = fmul fast float %2057, %2005
  br label %2091

; <label>:2061                                    ; preds = %2046
  %2062 = icmp eq i32 %2011, 2
  br i1 %2062, label %2063, label %2091

; <label>:2063                                    ; preds = %2061
  %2064 = call float @dx.op.unary.f32(i32 24, float %1739)  ; Sqrt(value)
  %2065 = call float @dx.op.unary.f32(i32 24, float %1740)  ; Sqrt(value)
  %2066 = call float @dx.op.unary.f32(i32 24, float %1741)  ; Sqrt(value)
  %2067 = fadd fast float %2064, -5.000000e-01
  %2068 = fadd fast float %2065, -5.000000e-01
  %2069 = fadd fast float %2066, -5.000000e-01
  %2070 = fmul fast float %2067, %2016
  %2071 = fmul fast float %2068, %2016
  %2072 = fmul fast float %2069, %2016
  %2073 = fadd fast float %2070, 5.000000e-01
  %2074 = fadd fast float %2071, 5.000000e-01
  %2075 = fadd fast float %2072, 5.000000e-01
  %2076 = fmul fast float %2073, 2.000000e+00
  %2077 = fsub fast float 1.000000e+00, %2076
  %2078 = fmul fast float %2077, %2003
  %2079 = fadd fast float %2078, %2076
  %2080 = fmul fast float %2079, %2003
  %2081 = fmul fast float %2074, 2.000000e+00
  %2082 = fsub fast float 1.000000e+00, %2081
  %2083 = fmul fast float %2082, %2004
  %2084 = fadd fast float %2083, %2081
  %2085 = fmul fast float %2084, %2004
  %2086 = fmul fast float %2075, 2.000000e+00
  %2087 = fsub fast float 1.000000e+00, %2086
  %2088 = fmul fast float %2087, %2005
  %2089 = fadd fast float %2088, %2086
  %2090 = fmul fast float %2089, %2005
  br label %2091

; <label>:2091                                    ; preds = %2063, %2061, %2048, %2018, %2002
  %2092 = phi float [ %2003, %2002 ], [ %2080, %2063 ], [ %2003, %2061 ], [ %2058, %2048 ], [ %2028, %2018 ]
  %2093 = phi float [ %2004, %2002 ], [ %2085, %2063 ], [ %2004, %2061 ], [ %2059, %2048 ], [ %2029, %2018 ]
  %2094 = phi float [ %2005, %2002 ], [ %2090, %2063 ], [ %2005, %2061 ], [ %2060, %2048 ], [ %2030, %2018 ]
  %2095 = phi float [ %2006, %2002 ], [ %2006, %2063 ], [ %2006, %2061 ], [ %2006, %2048 ], [ %2040, %2018 ]
  %2096 = phi float [ %2007, %2002 ], [ %2007, %2063 ], [ %2007, %2061 ], [ %2007, %2048 ], [ %2041, %2018 ]
  %2097 = phi float [ %2008, %2002 ], [ %2008, %2063 ], [ %2008, %2061 ], [ %2008, %2048 ], [ %2042, %2018 ]
  %2098 = phi float [ %1216, %2002 ], [ %1216, %2063 ], [ %1216, %2061 ], [ %1216, %2048 ], [ %2033, %2018 ]
  %2099 = phi float [ %1221, %2002 ], [ %1221, %2063 ], [ %1221, %2061 ], [ %1221, %2048 ], [ %2045, %2018 ]
  %2100 = and i32 %2010, 12
  %2101 = icmp eq i32 %2100, 12
  br i1 %2101, label %2208, label %2102

; <label>:2102                                    ; preds = %2091
  %2103 = and i32 %2010, 2097184
  %2104 = icmp eq i32 %2103, 2097184
  %2105 = select i1 %2104, float %1519, float 0.000000e+00
  %2106 = and i32 %2010, 4194336
  %2107 = icmp eq i32 %2106, 4194336
  %2108 = select i1 %2107, float %1519, float 0.000000e+00
  %2109 = and i32 %2010, 8388640
  %2110 = icmp eq i32 %2109, 8388640
  %2111 = select i1 %2110, float %1519, float 0.000000e+00
  %2112 = and i32 %2010, 1024
  %2113 = icmp ne i32 %2112, 0
  %2114 = select i1 %2113, float %1519, float 0.000000e+00
  %2115 = and i32 %2010, 2048
  %2116 = icmp ne i32 %2115, 0
  %2117 = select i1 %2116, float %1519, float 0.000000e+00
  %2118 = icmp eq i32 %2100, 0
  br i1 %2118, label %2119, label %2144

; <label>:2119                                    ; preds = %2102
  %2120 = fsub fast float %1820, %1205
  %2121 = fsub fast float %1821, %1206
  %2122 = fmul fast float %2105, %2120
  %2123 = fmul fast float %2105, %2121
  %2124 = fadd fast float %2122, %1205
  %2125 = fadd fast float %2123, %1206
  %2126 = fsub fast float %1822, %1219
  %2127 = fmul fast float %2108, %2126
  %2128 = fadd fast float %2127, %1219
  %2129 = fsub fast float %1819, %1218
  %2130 = fmul fast float %2111, %2129
  %2131 = fadd fast float %2130, %1218
  %2132 = fsub fast float %1925, %1213
  %2133 = fsub fast float %1926, %1214
  %2134 = fsub fast float %1927, %1215
  %2135 = fmul fast float %2114, %2132
  %2136 = fmul fast float %2114, %2133
  %2137 = fmul fast float %2114, %2134
  %2138 = fadd fast float %2135, %1213
  %2139 = fadd fast float %2136, %1214
  %2140 = fadd fast float %2137, %1215
  %2141 = fsub fast float %1953, %1220
  %2142 = fmul fast float %2117, %2141
  %2143 = fadd fast float %2142, %1220
  br label %2208

; <label>:2144                                    ; preds = %2102
  %2145 = icmp eq i32 %2100, 4
  br i1 %2145, label %2146, label %2186

; <label>:2146                                    ; preds = %2144
  %2147 = fmul fast float %2105, %1820
  %2148 = fmul fast float %2105, %1821
  %2149 = fadd fast float %2147, %1205
  %2150 = fadd fast float %2148, %1206
  %2151 = call float @dx.op.binary.f32(i32 36, float %1219, float %1822)  ; FMin(a,b)
  %2152 = fsub fast float %2151, %1219
  %2153 = fmul fast float %2152, %2108
  %2154 = fadd fast float %2153, %1219
  %2155 = fadd fast float %1819, %1218
  %2156 = fmul fast float %2155, 0x3FF337FAE0000000
  %2157 = fmul fast float %1218, %1218
  %2158 = fmul fast float %1819, %1819
  %2159 = fadd fast float %2158, %2157
  %2160 = fmul fast float %2159, 0x3FE5152B00000000
  %2161 = fmul fast float %1218, 0xBFCC1F85E0000000
  %2162 = fmul fast float %2161, %1819
  %2163 = fadd fast float %2162, 0xBFE1363700000000
  %2164 = fadd fast float %2163, %2156
  %2165 = fsub fast float %2164, %2160
  %2166 = fmul fast float %2155, 0x3FBA6F0D00000000
  %2167 = fmul fast float %2159, 0x3FD0432880000000
  %2168 = fmul fast float %1218, 0xBFEF110800000000
  %2169 = fmul fast float %2168, %1819
  %2170 = fadd fast float %2169, 1.000000e+00
  %2171 = fsub fast float %2170, %2166
  %2172 = fadd fast float %2171, %2167
  %2173 = fdiv fast float %2165, %2172
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = fsub fast float %2174, %1218
  %2176 = fmul fast float %2175, %2111
  %2177 = fadd fast float %2176, %1218
  %2178 = fmul fast float %2114, %1925
  %2179 = fmul fast float %2114, %1926
  %2180 = fmul fast float %2114, %1927
  %2181 = fadd fast float %2178, %1213
  %2182 = fadd fast float %2179, %1214
  %2183 = fadd fast float %2180, %1215
  %2184 = fmul fast float %2117, %1953
  %2185 = fadd fast float %2184, %1220
  br label %2208

; <label>:2186                                    ; preds = %2144
  %2187 = icmp eq i32 %2100, 8
  br i1 %2187, label %2188, label %2208

; <label>:2188                                    ; preds = %2186
  %2189 = fmul fast float %2105, %1820
  %2190 = fmul fast float %2105, %1821
  %2191 = fadd fast float %2189, %1205
  %2192 = fadd fast float %2190, %1206
  %2193 = call float @dx.op.binary.f32(i32 36, float %1219, float %1822)  ; FMin(a,b)
  %2194 = fsub fast float %2193, %1219
  %2195 = fmul fast float %2194, %2108
  %2196 = fadd fast float %2195, %1219
  %2197 = fsub fast float %1819, %1218
  %2198 = fmul fast float %2111, %2197
  %2199 = fadd fast float %2198, %1218
  %2200 = fmul fast float %2114, %1925
  %2201 = fmul fast float %2114, %1926
  %2202 = fmul fast float %2114, %1927
  %2203 = fadd fast float %2200, %1213
  %2204 = fadd fast float %2201, %1214
  %2205 = fadd fast float %2202, %1215
  %2206 = fmul fast float %2117, %1953
  %2207 = fadd fast float %2206, %1220
  br label %2208

; <label>:2208                                    ; preds = %2188, %2186, %2146, %2119, %2091, %1518, %1222, %1204
  %2209 = phi float [ %1205, %2091 ], [ %1205, %1518 ], [ %1205, %1204 ], [ %2191, %2188 ], [ %1205, %2186 ], [ %2149, %2146 ], [ %2124, %2119 ], [ %1205, %1222 ]
  %2210 = phi float [ %1206, %2091 ], [ %1206, %1518 ], [ %1206, %1204 ], [ %2192, %2188 ], [ %1206, %2186 ], [ %2150, %2146 ], [ %2125, %2119 ], [ %1206, %1222 ]
  %2211 = phi float [ %2092, %2091 ], [ %1207, %1518 ], [ %1207, %1204 ], [ %2092, %2188 ], [ %2092, %2186 ], [ %2092, %2146 ], [ %2092, %2119 ], [ %1207, %1222 ]
  %2212 = phi float [ %2093, %2091 ], [ %1208, %1518 ], [ %1208, %1204 ], [ %2093, %2188 ], [ %2093, %2186 ], [ %2093, %2146 ], [ %2093, %2119 ], [ %1208, %1222 ]
  %2213 = phi float [ %2094, %2091 ], [ %1209, %1518 ], [ %1209, %1204 ], [ %2094, %2188 ], [ %2094, %2186 ], [ %2094, %2146 ], [ %2094, %2119 ], [ %1209, %1222 ]
  %2214 = phi float [ %2095, %2091 ], [ %1210, %1518 ], [ %1210, %1204 ], [ %2095, %2188 ], [ %2095, %2186 ], [ %2095, %2146 ], [ %2095, %2119 ], [ %1210, %1222 ]
  %2215 = phi float [ %2096, %2091 ], [ %1211, %1518 ], [ %1211, %1204 ], [ %2096, %2188 ], [ %2096, %2186 ], [ %2096, %2146 ], [ %2096, %2119 ], [ %1211, %1222 ]
  %2216 = phi float [ %2097, %2091 ], [ %1212, %1518 ], [ %1212, %1204 ], [ %2097, %2188 ], [ %2097, %2186 ], [ %2097, %2146 ], [ %2097, %2119 ], [ %1212, %1222 ]
  %2217 = phi float [ %1213, %2091 ], [ %1213, %1518 ], [ %1213, %1204 ], [ %2203, %2188 ], [ %1213, %2186 ], [ %2181, %2146 ], [ %2138, %2119 ], [ %1213, %1222 ]
  %2218 = phi float [ %1214, %2091 ], [ %1214, %1518 ], [ %1214, %1204 ], [ %2204, %2188 ], [ %1214, %2186 ], [ %2182, %2146 ], [ %2139, %2119 ], [ %1214, %1222 ]
  %2219 = phi float [ %1215, %2091 ], [ %1215, %1518 ], [ %1215, %1204 ], [ %2205, %2188 ], [ %1215, %2186 ], [ %2183, %2146 ], [ %2140, %2119 ], [ %1215, %1222 ]
  %2220 = phi float [ %2098, %2091 ], [ %1216, %1518 ], [ %1216, %1204 ], [ %2098, %2188 ], [ %2098, %2186 ], [ %2098, %2146 ], [ %2098, %2119 ], [ %1216, %1222 ]
  %2221 = phi float [ %1218, %2091 ], [ %1218, %1518 ], [ %1218, %1204 ], [ %2199, %2188 ], [ %1218, %2186 ], [ %2177, %2146 ], [ %2131, %2119 ], [ %1218, %1222 ]
  %2222 = phi float [ %1219, %2091 ], [ %1219, %1518 ], [ %1219, %1204 ], [ %2196, %2188 ], [ %1219, %2186 ], [ %2154, %2146 ], [ %2128, %2119 ], [ %1219, %1222 ]
  %2223 = phi float [ %1220, %2091 ], [ %1220, %1518 ], [ %1220, %1204 ], [ %2207, %2188 ], [ %1220, %2186 ], [ %2185, %2146 ], [ %2143, %2119 ], [ %1220, %1222 ]
  %2224 = phi float [ %2099, %2091 ], [ %1221, %1518 ], [ %1221, %1204 ], [ %2099, %2188 ], [ %2099, %2186 ], [ %2099, %2146 ], [ %2099, %2119 ], [ %1221, %1222 ]
  br i1 %406, label %3211, label %2225

; <label>:2225                                    ; preds = %2208
  %2226 = icmp ult i32 %462, 3
  %2227 = add i32 %49, 56
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = add i32 %49, 60
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = or i32 %2232, %2229
  %2234 = icmp eq i32 %2233, 0
  br i1 %2234, label %3211, label %2235

; <label>:2235                                    ; preds = %2225
  %2236 = and i32 %2229, 262144
  %2237 = icmp ne i32 %2236, 0
  %2238 = select i1 %2237, float %52, float 1.000000e+00
  %2239 = select i1 %2237, float %53, float 0.000000e+00
  %2240 = select i1 %2237, float %54, float 0.000000e+00
  %2241 = select i1 %2237, float %55, float 1.000000e+00
  %2242 = select i1 %2237, float %56, float %72
  %2243 = select i1 %2237, float %57, float %73
  %2244 = add i32 %49, 316
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = lshr i32 %2246, 16
  %2248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2247)  ; LegacyF16ToF32(value)
  %2249 = fmul fast float %2248, 0x3F50624DE0000000
  %2250 = add i32 %49, 120
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = lshr i32 %2252, 16
  %2254 = and i32 %2253, 255
  %2255 = lshr i32 %2252, 24
  %2256 = add i32 %49, 324
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = and i32 %2258, 65535
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = lshr i32 %2258, 16
  %2262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2261)  ; LegacyF16ToF32(value)
  %2263 = add i32 %49, 64
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2263, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = lshr i32 %2265, 22
  %2267 = shl nuw nsw i32 %2266, 5
  %2268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2267)  ; LegacyF16ToF32(value)
  %2269 = shl i32 %2265, 4
  %2270 = and i32 %2269, 32752
  %2271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2270)  ; LegacyF16ToF32(value)
  %2272 = lshr i32 %2265, 7
  %2273 = and i32 %2272, 32752
  %2274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2273)  ; LegacyF16ToF32(value)
  %2275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2276 = extractvalue %dx.types.CBufRet.f32 %2275, 3
  %2277 = fmul fast float %2276, 1.000000e+03
  %2278 = fmul fast float %356, %2277
  %2279 = call float @dx.op.unary.f32(i32 22, float %2278)  ; Frc(value)
  %2280 = fadd fast float %2279, %346
  %2281 = fmul fast float %357, %2277
  %2282 = call float @dx.op.unary.f32(i32 22, float %2281)  ; Frc(value)
  %2283 = fadd fast float %2282, %348
  %2284 = fmul fast float %2249, %2277
  %2285 = call float @dx.op.unary.f32(i32 22, float %2284)  ; Frc(value)
  %2286 = fmul fast float %2285, 0x401921FB60000000
  %2287 = fadd fast float %2286, %2268
  %2288 = call float @dx.op.unary.f32(i32 13, float %2287)  ; Sin(value)
  %2289 = call float @dx.op.unary.f32(i32 12, float %2287)  ; Cos(value)
  %2290 = fsub fast float -0.000000e+00, %2288
  %2291 = fadd fast float %2242, -5.000000e-01
  %2292 = fadd fast float %2243, -5.000000e-01
  %2293 = fmul fast float %2260, %2291
  %2294 = fmul fast float %2262, %2292
  %2295 = fadd fast float %2293, 5.000000e-01
  %2296 = fadd fast float %2294, 5.000000e-01
  %2297 = fmul fast float %2271, %2295
  %2298 = fmul fast float %2274, %2296
  %2299 = fmul fast float %2289, %2297
  %2300 = call float @dx.op.tertiary.f32(i32 46, float %2290, float %2298, float %2299)  ; FMad(a,b,c)
  %2301 = fmul fast float %2288, %2297
  %2302 = call float @dx.op.tertiary.f32(i32 46, float %2289, float %2298, float %2301)  ; FMad(a,b,c)
  %2303 = fadd fast float %2280, %2300
  %2304 = fadd fast float %2283, %2302
  %2305 = icmp ugt i32 %2254, 1
  %2306 = icmp ugt i32 %2252, 33554431
  %2307 = or i1 %2306, %2305
  br i1 %2307, label %2308, label %2333

; <label>:2308                                    ; preds = %2235
  %2309 = add i32 %49, 260
  %2310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2309, i32 undef)  ; BufferLoad(srv,index,wot)
  %2311 = extractvalue %dx.types.ResRet.i32 %2310, 0
  %2312 = lshr i32 %2311, 16
  %2313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2312)  ; LegacyF16ToF32(value)
  %2314 = fmul fast float %2276, %2313
  %2315 = call float @dx.op.unary.f32(i32 22, float %2314)  ; Frc(value)
  %2316 = mul nuw nsw i32 %2254, %2255
  %2317 = uitofp i32 %2316 to float
  %2318 = fmul fast float %2315, %2317
  %2319 = call float @dx.op.unary.f32(i32 27, float %2318)  ; Round_ni(value)
  %2320 = fptoui float %2319 to i32
  %2321 = urem i32 %2320, %2254
  %2322 = udiv i32 %2320, %2255
  %2323 = call float @dx.op.unary.f32(i32 22, float %2303)  ; Frc(value)
  %2324 = call float @dx.op.unary.f32(i32 22, float %2304)  ; Frc(value)
  %2325 = uitofp i32 %2321 to float
  %2326 = uitofp i32 %2322 to float
  %2327 = fadd fast float %2323, %2325
  %2328 = fadd fast float %2324, %2326
  %2329 = uitofp i32 %2254 to float
  %2330 = uitofp i32 %2255 to float
  %2331 = fdiv fast float %2327, %2329
  %2332 = fdiv fast float %2328, %2330
  br label %2333

; <label>:2333                                    ; preds = %2308, %2235
  %2334 = phi float [ %2331, %2308 ], [ %2303, %2235 ]
  %2335 = phi float [ %2332, %2308 ], [ %2304, %2235 ]
  %2336 = and i32 %2229, 16777216
  %2337 = icmp eq i32 %2336, 0
  br i1 %2337, label %2447, label %2338

; <label>:2338                                    ; preds = %2333
  %2339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2340 = extractvalue %dx.types.CBufRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.CBufRet.f32 %2339, 1
  %2342 = extractvalue %dx.types.CBufRet.f32 %2339, 2
  %2343 = fadd fast float %2340, %156
  %2344 = fadd fast float %2341, %157
  %2345 = fadd fast float %2342, %158
  %2346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2347 = extractvalue %dx.types.CBufRet.f32 %2346, 0
  %2348 = call float @dx.op.unary.f32(i32 7, float %2347)  ; Saturate(value)
  %2349 = icmp eq i32 %50, 65535
  br i1 %2349, label %2444, label %2350

; <label>:2350                                    ; preds = %2338
  %2351 = lshr i32 %50, 1
  %2352 = shl i32 %2351, 2
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %50, 1
  %2356 = icmp ne i32 %2355, 0
  %2357 = lshr i32 %2354, 16
  %2358 = and i32 %2354, 65535
  %2359 = select i1 %2356, i32 %2357, i32 %2358
  %2360 = icmp eq i32 %2359, 65535
  br i1 %2360, label %2440, label %2361

; <label>:2361                                    ; preds = %2350
  %2362 = mul nuw nsw i32 %2359, 40
  %2363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.ResRet.f32 %2363, 1
  %2366 = extractvalue %dx.types.ResRet.f32 %2363, 2
  %2367 = add nuw nsw i32 %2362, 12
  %2368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.f32 %2368, 0
  %2370 = extractvalue %dx.types.ResRet.f32 %2368, 1
  %2371 = extractvalue %dx.types.ResRet.f32 %2368, 2
  %2372 = add nuw nsw i32 %2362, 24
  %2373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.f32 %2373, 0
  %2375 = extractvalue %dx.types.ResRet.f32 %2373, 1
  %2376 = extractvalue %dx.types.ResRet.f32 %2373, 2
  %2377 = add nuw nsw i32 %2362, 36
  %2378 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %2377, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.f32 %2378, 0
  %2380 = fsub fast float %2343, %2364
  %2381 = fsub fast float %2344, %2365
  %2382 = fsub fast float %2345, %2366
  %2383 = fmul fast float %2379, %2380
  %2384 = fmul fast float %2379, %2381
  %2385 = fmul fast float %2379, %2382
  %2386 = call float @dx.op.unary.f32(i32 27, float %2383)  ; Round_ni(value)
  %2387 = call float @dx.op.unary.f32(i32 27, float %2384)  ; Round_ni(value)
  %2388 = call float @dx.op.unary.f32(i32 27, float %2385)  ; Round_ni(value)
  %2389 = fadd fast float %2386, 5.000000e-01
  %2390 = fadd fast float %2387, 5.000000e-01
  %2391 = fadd fast float %2388, 5.000000e-01
  %2392 = fmul fast float %2389, %2369
  %2393 = fmul fast float %2390, %2370
  %2394 = fmul fast float %2391, %2371
  %2395 = shl i32 %50, 2
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = add i32 %2397, 0
  %2399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2398, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2400 = call float @dx.op.unary.f32(i32 22, float %2392)  ; Frc(value)
  %2401 = call float @dx.op.unary.f32(i32 22, float %2393)  ; Frc(value)
  %2402 = call float @dx.op.unary.f32(i32 22, float %2394)  ; Frc(value)
  %2403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2399, %dx.types.Handle %44, float %2400, float %2401, float %2402, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2404 = extractvalue %dx.types.ResRet.f32 %2403, 0
  %2405 = extractvalue %dx.types.ResRet.f32 %2403, 1
  %2406 = extractvalue %dx.types.ResRet.f32 %2403, 2
  %2407 = fmul fast float %2404, 1.023000e+03
  %2408 = fmul fast float %2405, 1.023000e+03
  %2409 = fmul fast float %2406, 1.023000e+03
  %2410 = fadd fast float %2407, 5.000000e-01
  %2411 = fadd fast float %2408, 5.000000e-01
  %2412 = fadd fast float %2409, 5.000000e-01
  %2413 = call float @dx.op.unary.f32(i32 27, float %2410)  ; Round_ni(value)
  %2414 = call float @dx.op.unary.f32(i32 27, float %2411)  ; Round_ni(value)
  %2415 = call float @dx.op.unary.f32(i32 27, float %2412)  ; Round_ni(value)
  %2416 = fsub fast float %2383, %2386
  %2417 = fsub fast float %2384, %2387
  %2418 = fsub fast float %2385, %2388
  %2419 = fmul fast float %2416, 7.500000e-01
  %2420 = fmul fast float %2417, 7.500000e-01
  %2421 = fmul fast float %2418, 7.500000e-01
  %2422 = fadd fast float %2386, 1.250000e-01
  %2423 = fadd fast float %2422, %2419
  %2424 = fadd fast float %2423, %2413
  %2425 = fadd fast float %2387, 1.250000e-01
  %2426 = fadd fast float %2425, %2420
  %2427 = fadd fast float %2426, %2414
  %2428 = fadd fast float %2388, 1.250000e-01
  %2429 = fadd fast float %2428, %2421
  %2430 = fadd fast float %2429, %2415
  %2431 = fmul fast float %2424, %2374
  %2432 = fmul fast float %2427, %2375
  %2433 = fmul fast float %2430, %2376
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = add i32 %2435, 0
  %2437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2437, %dx.types.Handle %42, float %2431, float %2432, float %2433, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2439 = extractvalue %dx.types.ResRet.f32 %2438, 0
  br label %2440

; <label>:2440                                    ; preds = %2361, %2350
  %2441 = phi float [ %2439, %2361 ], [ -1.000000e+00, %2350 ]
  %2442 = fadd fast float %2441, %2348
  %2443 = call float @dx.op.unary.f32(i32 7, float %2442)  ; Saturate(value)
  br label %2444

; <label>:2444                                    ; preds = %2440, %2338
  %2445 = phi float [ %2443, %2440 ], [ %2348, %2338 ]
  %2446 = fmul fast float %2445, %458
  br label %2447

; <label>:2447                                    ; preds = %2444, %2333
  %2448 = phi float [ %2446, %2444 ], [ %458, %2333 ]
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 256
  %2452 = icmp eq i32 %2451, 0
  br i1 %2452, label %2499, label %2453

; <label>:2453                                    ; preds = %2447
  %2454 = add i32 %49, 432
  %2455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.i32 %2455, 0
  %2457 = add i32 %2456, 0
  %2458 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2457, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2458, %dx.types.Handle %90, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2460 = extractvalue %dx.types.ResRet.f32 %2459, 0
  %2461 = add i32 %49, 132
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2461, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = shl i32 %2463, 4
  %2465 = and i32 %2464, 32752
  %2466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2465)  ; LegacyF16ToF32(value)
  %2467 = lshr i32 %2463, 7
  %2468 = and i32 %2467, 32752
  %2469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2468)  ; LegacyF16ToF32(value)
  %2470 = fsub fast float 1.000000e+00, %2448
  %2471 = call float @dx.op.binary.f32(i32 35, float %2470, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2472 = bitcast float %2448 to i32
  %2473 = sitofp i32 %2472 to float
  %2474 = fadd fast float %2473, 0xC1CFBF8940000000
  %2475 = fmul fast float %2469, %2474
  %2476 = fadd fast float %2475, 0x41CFBF8940000000
  %2477 = fptosi float %2476 to i32
  %2478 = bitcast i32 %2477 to float
  %2479 = bitcast float %2471 to i32
  %2480 = sitofp i32 %2479 to float
  %2481 = fadd fast float %2480, 0xC1CFBF8940000000
  %2482 = fmul fast float %2481, %2469
  %2483 = fadd fast float %2482, 0x41CFBF8940000000
  %2484 = fptosi float %2483 to i32
  %2485 = bitcast i32 %2484 to float
  %2486 = fmul fast float %2478, %2466
  %2487 = fmul fast float %2485, %2466
  %2488 = fsub fast float %2471, %2486
  %2489 = fadd fast float %2487, %2471
  %2490 = call float @dx.op.unary.f32(i32 7, float %2488)  ; Saturate(value)
  %2491 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  %2492 = fsub fast float %2460, %2490
  %2493 = fsub fast float %2491, %2490
  %2494 = bitcast float %2493 to i32
  %2495 = sub nsw i32 2129859010, %2494
  %2496 = bitcast i32 %2495 to float
  %2497 = fmul fast float %2496, %2492
  %2498 = call float @dx.op.unary.f32(i32 7, float %2497)  ; Saturate(value)
  br label %2499

; <label>:2499                                    ; preds = %2453, %2447
  %2500 = phi float [ %2498, %2453 ], [ %2448, %2447 ]
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = and i32 %2502, 128
  %2504 = icmp eq i32 %2503, 0
  br i1 %2504, label %2521, label %2505

; <label>:2505                                    ; preds = %2499
  %2506 = add i32 %49, 416
  %2507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2506, i32 undef)  ; BufferLoad(srv,index,wot)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = add i32 %2508, 0
  %2510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2509, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2511 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2510, %dx.types.Handle %90, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2512 = extractvalue %dx.types.ResRet.f32 %2511, 0
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 524288
  %2516 = icmp ne i32 %2515, 0
  %2517 = fcmp fast ogt float %2512, 0x3FE0101020000000
  %2518 = select i1 %2517, float 1.000000e+00, float 0.000000e+00
  %2519 = select i1 %2516, float %2518, float %2512
  %2520 = fmul fast float %2519, %2500
  br label %2521

; <label>:2521                                    ; preds = %2505, %2499
  %2522 = phi float [ %2520, %2505 ], [ %2500, %2499 ]
  %2523 = fcmp fast ult float %2522, 0x3F70101020000000
  br i1 %2523, label %3211, label %2524

; <label>:2524                                    ; preds = %2521
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = and i32 %2526, 16
  %2528 = icmp eq i32 %2527, 0
  br i1 %2528, label %2727, label %2529

; <label>:2529                                    ; preds = %2524
  %2530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2531 = extractvalue %dx.types.ResRet.i32 %2530, 0
  %2532 = add i32 %49, 368
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = add i32 %2534, 0
  %2536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2535, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2537 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2536, %dx.types.Handle %89, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2538 = extractvalue %dx.types.ResRet.f32 %2537, 0
  %2539 = extractvalue %dx.types.ResRet.f32 %2537, 1
  %2540 = extractvalue %dx.types.ResRet.f32 %2537, 2
  %2541 = extractvalue %dx.types.ResRet.f32 %2537, 3
  %2542 = and i32 %2531, 255
  %2543 = uitofp i32 %2542 to float
  %2544 = lshr i32 %2531, 8
  %2545 = and i32 %2544, 255
  %2546 = uitofp i32 %2545 to float
  %2547 = fmul fast float %2541, %2543
  %2548 = fadd fast float %2547, %2546
  %2549 = fmul fast float %2548, 0x3F70101000000000
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = and i32 %2551, 512
  %2553 = icmp eq i32 %2552, 0
  br i1 %2553, label %2562, label %2554

; <label>:2554                                    ; preds = %2529
  %2555 = add i32 %49, 448
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2555, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = add i32 %2557, 0
  %2559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2558, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2559, %dx.types.Handle %90, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2561 = extractvalue %dx.types.ResRet.f32 %2560, 0
  br label %2562

; <label>:2562                                    ; preds = %2554, %2529
  %2563 = phi float [ %2561, %2554 ], [ 1.000000e+00, %2529 ]
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = and i32 %2565, 33554432
  %2567 = icmp eq i32 %2566, 0
  br i1 %2567, label %2674, label %2568

; <label>:2568                                    ; preds = %2562
  %2569 = add i32 %49, 256
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 65535
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = lshr i32 %2571, 16
  %2575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2574)  ; LegacyF16ToF32(value)
  %2576 = add i32 %49, 260
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = and i32 %2578, 65535
  %2580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2579)  ; LegacyF16ToF32(value)
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = lshr i32 %2582, 24
  %2584 = uitofp i32 %2583 to float
  %2585 = fmul fast float %2584, 0x3F70101020000000
  %2586 = and i32 %2582, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = fmul fast float %2587, 0x3F70101020000000
  %2589 = lshr i32 %2582, 8
  %2590 = and i32 %2589, 255
  %2591 = uitofp i32 %2590 to float
  %2592 = fmul fast float %2591, 0x3F70101020000000
  %2593 = lshr i32 %2582, 16
  %2594 = and i32 %2593, 255
  %2595 = uitofp i32 %2594 to float
  %2596 = fmul fast float %2595, 0x3F70101020000000
  %2597 = add i32 %49, 252
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = lshr i32 %2599, 24
  %2601 = uitofp i32 %2600 to float
  %2602 = fmul fast float %2601, 0x3F70101020000000
  %2603 = and i32 %2599, 255
  %2604 = uitofp i32 %2603 to float
  %2605 = fmul fast float %2604, 0x3F70101020000000
  %2606 = lshr i32 %2599, 8
  %2607 = and i32 %2606, 255
  %2608 = uitofp i32 %2607 to float
  %2609 = fmul fast float %2608, 0x3F70101020000000
  %2610 = lshr i32 %2599, 16
  %2611 = and i32 %2610, 255
  %2612 = uitofp i32 %2611 to float
  %2613 = fmul fast float %2612, 0x3F70101020000000
  %2614 = bitcast float %2538 to i32
  %2615 = ashr i32 %2614, 1
  %2616 = sub nsw i32 1597463174, %2615
  %2617 = bitcast i32 %2616 to float
  %2618 = fmul fast float %2538, 5.000000e-01
  %2619 = fmul fast float %2617, %2617
  %2620 = fmul fast float %2619, %2618
  %2621 = fsub fast float 1.500000e+00, %2620
  %2622 = fmul fast float %2617, %2538
  %2623 = fmul fast float %2622, %2621
  %2624 = bitcast float %2539 to i32
  %2625 = ashr i32 %2624, 1
  %2626 = sub nsw i32 1597463174, %2625
  %2627 = bitcast i32 %2626 to float
  %2628 = fmul fast float %2539, 5.000000e-01
  %2629 = fmul fast float %2627, %2627
  %2630 = fmul fast float %2629, %2628
  %2631 = fsub fast float 1.500000e+00, %2630
  %2632 = fmul fast float %2627, %2539
  %2633 = fmul fast float %2632, %2631
  %2634 = bitcast float %2540 to i32
  %2635 = ashr i32 %2634, 1
  %2636 = sub nsw i32 1597463174, %2635
  %2637 = bitcast i32 %2636 to float
  %2638 = fmul fast float %2540, 5.000000e-01
  %2639 = fmul fast float %2637, %2637
  %2640 = fmul fast float %2639, %2638
  %2641 = fsub fast float 1.500000e+00, %2640
  %2642 = fmul fast float %2637, %2540
  %2643 = fmul fast float %2642, %2641
  %2644 = fsub fast float %2623, %2605
  %2645 = fsub fast float %2633, %2609
  %2646 = fsub fast float %2643, %2613
  %2647 = fmul fast float %2644, %2573
  %2648 = fmul fast float %2645, %2575
  %2649 = fmul fast float %2646, %2580
  %2650 = fadd fast float %2647, %2588
  %2651 = fadd fast float %2648, %2592
  %2652 = fadd fast float %2649, %2596
  %2653 = call float @dx.op.unary.f32(i32 7, float %2650)  ; Saturate(value)
  %2654 = call float @dx.op.unary.f32(i32 7, float %2651)  ; Saturate(value)
  %2655 = call float @dx.op.unary.f32(i32 7, float %2652)  ; Saturate(value)
  %2656 = fmul fast float %2653, %2653
  %2657 = fmul fast float %2654, %2654
  %2658 = fmul fast float %2655, %2655
  %2659 = fsub fast float %2656, %2538
  %2660 = fsub fast float %2657, %2539
  %2661 = fsub fast float %2658, %2540
  %2662 = fmul fast float %2659, %2563
  %2663 = fmul fast float %2660, %2563
  %2664 = fmul fast float %2661, %2563
  %2665 = fadd fast float %2662, %2538
  %2666 = fadd fast float %2663, %2539
  %2667 = fadd fast float %2664, %2540
  %2668 = fadd fast float %2585, %2549
  %2669 = fsub fast float %2668, %2602
  %2670 = call float @dx.op.unary.f32(i32 7, float %2669)  ; Saturate(value)
  %2671 = fsub fast float %2670, %2549
  %2672 = fmul fast float %2671, %2563
  %2673 = fadd fast float %2672, %2549
  br label %2727

; <label>:2674                                    ; preds = %2562
  %2675 = and i32 %2565, 134217728
  %2676 = icmp eq i32 %2675, 0
  br i1 %2676, label %2711, label %2677

; <label>:2677                                    ; preds = %2674
  %2678 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %2679 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %2680 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %2681 = fadd fast float %2678, -5.000000e-01
  %2682 = fadd fast float %2679, -5.000000e-01
  %2683 = fadd fast float %2680, -5.000000e-01
  %2684 = fmul fast float %2681, %2563
  %2685 = fmul fast float %2682, %2563
  %2686 = fmul fast float %2683, %2563
  %2687 = fadd fast float %2684, 5.000000e-01
  %2688 = fadd fast float %2685, 5.000000e-01
  %2689 = fadd fast float %2686, 5.000000e-01
  %2690 = call float @dx.op.unary.f32(i32 24, float %2538)  ; Sqrt(value)
  %2691 = call float @dx.op.unary.f32(i32 24, float %2539)  ; Sqrt(value)
  %2692 = call float @dx.op.unary.f32(i32 24, float %2540)  ; Sqrt(value)
  %2693 = fmul fast float %2687, 2.000000e+00
  %2694 = fsub fast float 1.000000e+00, %2693
  %2695 = fmul fast float %2694, %2690
  %2696 = fadd fast float %2695, %2693
  %2697 = fmul fast float %2696, %2690
  %2698 = fmul fast float %2688, 2.000000e+00
  %2699 = fsub fast float 1.000000e+00, %2698
  %2700 = fmul fast float %2699, %2691
  %2701 = fadd fast float %2700, %2698
  %2702 = fmul fast float %2701, %2691
  %2703 = fmul fast float %2689, 2.000000e+00
  %2704 = fsub fast float 1.000000e+00, %2703
  %2705 = fmul fast float %2704, %2692
  %2706 = fadd fast float %2705, %2703
  %2707 = fmul fast float %2706, %2692
  %2708 = fmul fast float %2697, %2697
  %2709 = fmul fast float %2702, %2702
  %2710 = fmul fast float %2707, %2707
  br label %2727

; <label>:2711                                    ; preds = %2674
  %2712 = fmul fast float %333, %333
  %2713 = fmul fast float %337, %337
  %2714 = fmul fast float %341, %341
  %2715 = fadd fast float %2712, -1.000000e+00
  %2716 = fadd fast float %2713, -1.000000e+00
  %2717 = fadd fast float %2714, -1.000000e+00
  %2718 = fmul fast float %2563, %2715
  %2719 = fmul fast float %2563, %2716
  %2720 = fmul fast float %2563, %2717
  %2721 = fadd fast float %2718, 1.000000e+00
  %2722 = fadd fast float %2719, 1.000000e+00
  %2723 = fadd fast float %2720, 1.000000e+00
  %2724 = fmul fast float %2721, %2538
  %2725 = fmul fast float %2722, %2539
  %2726 = fmul fast float %2723, %2540
  br label %2727

; <label>:2727                                    ; preds = %2711, %2677, %2568, %2524
  %2728 = phi float [ %2673, %2568 ], [ %2549, %2677 ], [ %2549, %2711 ], [ 0x3FA23C0BE0000000, %2524 ]
  %2729 = phi float [ %2665, %2568 ], [ %2708, %2677 ], [ %2724, %2711 ], [ 1.000000e+00, %2524 ]
  %2730 = phi float [ %2666, %2568 ], [ %2709, %2677 ], [ %2725, %2711 ], [ 1.000000e+00, %2524 ]
  %2731 = phi float [ %2667, %2568 ], [ %2710, %2677 ], [ %2726, %2711 ], [ 1.000000e+00, %2524 ]
  %2732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2733 = extractvalue %dx.types.CBufRet.i32 %2732, 1
  %2734 = and i32 %2733, 1
  %2735 = icmp ne i32 %2734, 0
  %2736 = add i32 %49, 356
  %2737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.i32 %2737, 0
  %2739 = and i32 %2738, 32
  %2740 = icmp ne i32 %2739, 0
  %2741 = and i1 %2735, %2740
  %2742 = select i1 %2741, float 1.000000e+00, float %2729
  %2743 = select i1 %2741, float 0x3FD3333340000000, float %2730
  %2744 = select i1 %2741, float 0x3FD3333340000000, float %2731
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = and i32 %2746, 32
  %2748 = icmp eq i32 %2747, 0
  br i1 %2748, label %2821, label %2749

; <label>:2749                                    ; preds = %2727
  %2750 = add i32 %49, 124
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = add i32 %49, 384
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = add i32 %2755, 0
  %2757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2756, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2758 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2757, %dx.types.Handle %89, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2759 = extractvalue %dx.types.ResRet.f32 %2758, 0
  %2760 = extractvalue %dx.types.ResRet.f32 %2758, 1
  %2761 = extractvalue %dx.types.ResRet.f32 %2758, 2
  %2762 = extractvalue %dx.types.ResRet.f32 %2758, 3
  %2763 = and i32 %2752, 255
  %2764 = uitofp i32 %2763 to float
  %2765 = lshr i32 %2752, 8
  %2766 = and i32 %2765, 255
  %2767 = uitofp i32 %2766 to float
  %2768 = lshr i32 %2752, 16
  %2769 = and i32 %2768, 255
  %2770 = uitofp i32 %2769 to float
  %2771 = fmul fast float %2770, 0x3F70101000000000
  %2772 = fmul fast float %2759, %2764
  %2773 = fadd fast float %2772, %2767
  %2774 = fmul fast float %2773, 0x3F70101000000000
  %2775 = fadd fast float %2760, -5.000000e-01
  %2776 = fadd fast float %2762, -5.000000e-01
  %2777 = fmul fast float %2775, %2771
  %2778 = fmul fast float %2776, %2771
  %2779 = fadd fast float %2777, 5.000000e-01
  %2780 = fadd fast float %2778, 5.000000e-01
  %2781 = fmul fast float %2779, 2.000000e+00
  %2782 = fadd fast float %2781, -1.000000e+00
  %2783 = fmul fast float %2780, 2.000000e+00
  %2784 = fadd fast float %2783, -1.000000e+00
  %2785 = fadd fast float %2782, %2784
  %2786 = fmul fast float %2785, 5.000000e-01
  %2787 = fsub fast float %2782, %2784
  %2788 = fmul fast float %2787, 5.000000e-01
  %2789 = call float @dx.op.unary.f32(i32 6, float %2786)  ; FAbs(value)
  %2790 = fsub fast float 1.000000e+00, %2789
  %2791 = call float @dx.op.unary.f32(i32 6, float %2788)  ; FAbs(value)
  %2792 = fsub fast float %2790, %2791
  %2793 = call float @dx.op.dot3.f32(i32 55, float %2786, float %2788, float %2792, float %2786, float %2788, float %2792)  ; Dot3(ax,ay,az,bx,by,bz)
  %2794 = call float @dx.op.unary.f32(i32 25, float %2793)  ; Rsqrt(value)
  %2795 = fmul fast float %2786, %2794
  %2796 = fmul fast float %2788, %2794
  %2797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2798 = extractvalue %dx.types.ResRet.i32 %2797, 0
  %2799 = and i32 %2798, 67108864
  %2800 = icmp eq i32 %2799, 0
  br i1 %2800, label %2817, label %2801

; <label>:2801                                    ; preds = %2749
  %2802 = add i32 %49, 312
  %2803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2802, i32 undef)  ; BufferLoad(srv,index,wot)
  %2804 = extractvalue %dx.types.ResRet.i32 %2803, 0
  %2805 = and i32 %2804, 65535
  %2806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2805)  ; LegacyF16ToF32(value)
  %2807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2808 = extractvalue %dx.types.ResRet.i32 %2807, 0
  %2809 = and i32 %2808, 65535
  %2810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2809)  ; LegacyF16ToF32(value)
  %2811 = lshr i32 %2804, 16
  %2812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2811)  ; LegacyF16ToF32(value)
  %2813 = fsub fast float %2774, %2812
  %2814 = fmul fast float %2813, %2806
  %2815 = fadd fast float %2814, %2810
  %2816 = call float @dx.op.unary.f32(i32 7, float %2815)  ; Saturate(value)
  br label %2817

; <label>:2817                                    ; preds = %2801, %2749
  %2818 = phi float [ %2816, %2801 ], [ %2774, %2749 ]
  %2819 = call float @dx.op.dot2.f32(i32 54, float %2795, float %2796, float %2238, float %2239)  ; Dot2(ax,ay,bx,by)
  %2820 = call float @dx.op.dot2.f32(i32 54, float %2795, float %2796, float %2240, float %2241)  ; Dot2(ax,ay,bx,by)
  br label %2821

; <label>:2821                                    ; preds = %2817, %2727
  %2822 = phi float [ %2818, %2817 ], [ 0x3FD6666660000000, %2727 ]
  %2823 = phi float [ %2819, %2817 ], [ 0.000000e+00, %2727 ]
  %2824 = phi float [ %2820, %2817 ], [ 0.000000e+00, %2727 ]
  %2825 = phi float [ %2761, %2817 ], [ 1.000000e+00, %2727 ]
  %2826 = add i32 %49, 192
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = lshr i32 %2828, 22
  %2830 = shl nuw nsw i32 %2829, 5
  %2831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2830)  ; LegacyF16ToF32(value)
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = and i32 %2833, 64
  %2835 = icmp eq i32 %2834, 0
  br i1 %2835, label %2869, label %2836

; <label>:2836                                    ; preds = %2821
  %2837 = add i32 %49, 400
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = add i32 %2839, 0
  %2841 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2840, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = and i32 %2843, 131072
  %2845 = icmp eq i32 %2844, 0
  %2846 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2841, %dx.types.Handle %89, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 0
  %2848 = extractvalue %dx.types.ResRet.f32 %2846, 1
  %2849 = extractvalue %dx.types.ResRet.f32 %2846, 2
  %2850 = fmul fast float %2847, %321
  %2851 = fmul fast float %2848, %324
  %2852 = fmul fast float %2849, %327
  br i1 %2845, label %2859, label %2853

; <label>:2853                                    ; preds = %2836
  %2854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2855 = extractvalue %dx.types.CBufRet.f32 %2854, 0
  %2856 = fmul fast float %2855, %2850
  %2857 = fmul fast float %2855, %2851
  %2858 = fmul fast float %2855, %2852
  br label %2859

; <label>:2859                                    ; preds = %2853, %2836
  %2860 = phi float [ %2856, %2853 ], [ %2850, %2836 ]
  %2861 = phi float [ %2857, %2853 ], [ %2851, %2836 ]
  %2862 = phi float [ %2858, %2853 ], [ %2852, %2836 ]
  %2863 = fmul fast float %2860, %2831
  %2864 = select i1 %217, float %2863, float %2860
  %2865 = call float @dx.op.dot3.f32(i32 55, float %2864, float %2861, float %2862, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2866 = select i1 %217, float 0.000000e+00, float %2860
  %2867 = select i1 %217, float %2865, float %2861
  %2868 = select i1 %217, float 0.000000e+00, float %2862
  br label %2869

; <label>:2869                                    ; preds = %2859, %2821
  %2870 = phi float [ %2866, %2859 ], [ 0.000000e+00, %2821 ]
  %2871 = phi float [ %2867, %2859 ], [ 0.000000e+00, %2821 ]
  %2872 = phi float [ %2868, %2859 ], [ 0.000000e+00, %2821 ]
  %2873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.i32 %2873, 0
  %2875 = and i32 %2874, 1024
  %2876 = icmp eq i32 %2875, 0
  br i1 %2876, label %2907, label %2877

; <label>:2877                                    ; preds = %2869
  %2878 = add i32 %49, 184
  %2879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2878, i32 undef)  ; BufferLoad(srv,index,wot)
  %2880 = extractvalue %dx.types.ResRet.i32 %2879, 0
  %2881 = and i32 %2880, 255
  %2882 = uitofp i32 %2881 to float
  %2883 = fmul fast float %2882, 0x3F70101020000000
  %2884 = lshr i32 %2880, 8
  %2885 = and i32 %2884, 255
  %2886 = uitofp i32 %2885 to float
  %2887 = fmul fast float %2886, 0x3F70101020000000
  %2888 = lshr i32 %2880, 16
  %2889 = and i32 %2888, 255
  %2890 = uitofp i32 %2889 to float
  %2891 = fmul fast float %2890, 0x3F70101020000000
  %2892 = fmul fast float %2883, %2883
  %2893 = fmul fast float %2887, %2887
  %2894 = fmul fast float %2891, %2891
  %2895 = add i32 %49, 464
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = add i32 %2897, 0
  %2899 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2898, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2900 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2899, %dx.types.Handle %90, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2901 = extractvalue %dx.types.ResRet.f32 %2900, 0
  %2902 = extractvalue %dx.types.ResRet.f32 %2900, 1
  %2903 = extractvalue %dx.types.ResRet.f32 %2900, 2
  %2904 = fmul fast float %2892, %2901
  %2905 = fmul fast float %2893, %2902
  %2906 = fmul fast float %2894, %2903
  br label %2907

; <label>:2907                                    ; preds = %2877, %2869
  %2908 = phi float [ %2904, %2877 ], [ 0.000000e+00, %2869 ]
  %2909 = phi float [ %2905, %2877 ], [ 0.000000e+00, %2869 ]
  %2910 = phi float [ %2906, %2877 ], [ 0.000000e+00, %2869 ]
  %2911 = fcmp fast ogt float %2908, 0.000000e+00
  %2912 = fcmp fast ogt float %2909, 0.000000e+00
  %2913 = fcmp fast ogt float %2910, 0.000000e+00
  %2914 = call float @dx.op.unary.f32(i32 23, float %2908)  ; Log(value)
  %2915 = call float @dx.op.unary.f32(i32 23, float %2909)  ; Log(value)
  %2916 = call float @dx.op.unary.f32(i32 23, float %2910)  ; Log(value)
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = lshr i32 %2918, 7
  %2920 = and i32 %2919, 32752
  %2921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2920)  ; LegacyF16ToF32(value)
  %2922 = fmul fast float %2914, 0xBFE62E4300000000
  %2923 = fmul fast float %2922, %2921
  %2924 = fmul fast float %2915, 0xBFE62E4300000000
  %2925 = fmul fast float %2924, %2921
  %2926 = fmul fast float %2916, 0xBFE62E4300000000
  %2927 = fmul fast float %2926, %2921
  %2928 = select i1 %2911, float %2923, float 1.270000e+02
  %2929 = select i1 %2912, float %2925, float 1.270000e+02
  %2930 = select i1 %2913, float %2927, float 1.270000e+02
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = and i32 %2932, 10240
  %2934 = icmp eq i32 %2933, 0
  br i1 %2934, label %2955, label %2935

; <label>:2935                                    ; preds = %2907
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = and i32 %2937, 2048
  %2939 = icmp eq i32 %2938, 0
  br i1 %2939, label %2955, label %2940

; <label>:2940                                    ; preds = %2935
  %2941 = add i32 %49, 480
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2941, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = add i32 %2943, 0
  %2945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2944, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2946 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2945, %dx.types.Handle %90, float %2334, float %2335, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2947 = extractvalue %dx.types.ResRet.f32 %2946, 3
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = shl i32 %2949, 4
  %2951 = and i32 %2950, 32752
  %2952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2951)  ; LegacyF16ToF32(value)
  %2953 = fmul fast float %2952, %2947
  %2954 = call float @dx.op.binary.f32(i32 35, float %2953, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2955

; <label>:2955                                    ; preds = %2940, %2935, %2907
  %2956 = phi float [ %2954, %2940 ], [ 0x3F70101020000000, %2935 ], [ 0x3F70101020000000, %2907 ]
  %2957 = add i32 %49, 128
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = and i32 %2959, 255
  %2961 = uitofp i32 %2960 to float
  %2962 = lshr i32 %2959, 8
  %2963 = and i32 %2962, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = call float @dx.op.dot3.f32(i32 55, float %2742, float %2743, float %2744, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2966 = fmul fast float %2964, %2965
  %2967 = fadd fast float %2966, %2961
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = call float @dx.op.unary.f32(i32 7, float %2968)  ; Saturate(value)
  br i1 %2226, label %2970, label %3005

; <label>:2970                                    ; preds = %2955
  %2971 = fmul fast float %2956, 2.000000e+00
  %2972 = fcmp fast olt float %2928, 1.270000e+02
  %2973 = fcmp fast olt float %2929, 1.270000e+02
  %2974 = fcmp fast olt float %2930, 1.270000e+02
  %2975 = fmul fast float %2928, 0xBFF7154760000000
  %2976 = fmul fast float %2975, %2971
  %2977 = fmul fast float %2929, 0xBFF7154760000000
  %2978 = fmul fast float %2977, %2971
  %2979 = fmul fast float %2930, 0xBFF7154760000000
  %2980 = fmul fast float %2979, %2971
  %2981 = call float @dx.op.unary.f32(i32 21, float %2976)  ; Exp(value)
  %2982 = call float @dx.op.unary.f32(i32 21, float %2978)  ; Exp(value)
  %2983 = call float @dx.op.unary.f32(i32 21, float %2980)  ; Exp(value)
  %2984 = call float @dx.op.unary.f32(i32 7, float %2981)  ; Saturate(value)
  %2985 = call float @dx.op.unary.f32(i32 7, float %2982)  ; Saturate(value)
  %2986 = call float @dx.op.unary.f32(i32 7, float %2983)  ; Saturate(value)
  %2987 = fadd fast float %2984, -1.000000e+00
  %2988 = select i1 %2972, float %2987, float -1.000000e+00
  %2989 = fadd fast float %2985, -1.000000e+00
  %2990 = select i1 %2973, float %2989, float -1.000000e+00
  %2991 = fadd fast float %2986, -1.000000e+00
  %2992 = select i1 %2974, float %2991, float -1.000000e+00
  %2993 = fmul fast float %2988, %2522
  %2994 = fmul fast float %2990, %2522
  %2995 = fmul fast float %2992, %2522
  %2996 = fadd fast float %2993, 1.000000e+00
  %2997 = fadd fast float %2994, 1.000000e+00
  %2998 = fadd fast float %2995, 1.000000e+00
  %2999 = fmul fast float %2996, %2211
  %3000 = fmul fast float %2997, %2212
  %3001 = fmul fast float %2998, %2213
  %3002 = fmul fast float %2996, %2214
  %3003 = fmul fast float %2997, %2215
  %3004 = fmul fast float %2998, %2216
  br label %3005

; <label>:3005                                    ; preds = %2970, %2955
  %3006 = phi float [ %2999, %2970 ], [ %2211, %2955 ]
  %3007 = phi float [ %3000, %2970 ], [ %2212, %2955 ]
  %3008 = phi float [ %3001, %2970 ], [ %2213, %2955 ]
  %3009 = phi float [ %3002, %2970 ], [ %2214, %2955 ]
  %3010 = phi float [ %3003, %2970 ], [ %2215, %2955 ]
  %3011 = phi float [ %3004, %2970 ], [ %2216, %2955 ]
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = and i32 %3013, 3
  %3015 = icmp eq i32 %3014, 3
  br i1 %3015, label %3094, label %3016

; <label>:3016                                    ; preds = %3005
  %3017 = and i32 %3013, 16
  %3018 = icmp ne i32 %3017, 0
  %3019 = select i1 %3018, float %2522, float 0.000000e+00
  %3020 = icmp eq i32 %3014, 0
  br i1 %3020, label %3021, label %3049

; <label>:3021                                    ; preds = %3016
  %3022 = and i32 %3013, 64
  %3023 = icmp ne i32 %3022, 0
  %3024 = select i1 %3023, float %2522, float 0.000000e+00
  %3025 = fsub fast float %2742, %3006
  %3026 = fsub fast float %2743, %3007
  %3027 = fsub fast float %2744, %3008
  %3028 = fmul fast float %3019, %3025
  %3029 = fmul fast float %3019, %3026
  %3030 = fmul fast float %3019, %3027
  %3031 = fadd fast float %3028, %3006
  %3032 = fadd fast float %3029, %3007
  %3033 = fadd fast float %3030, %3008
  %3034 = fsub fast float %2728, %2220
  %3035 = fmul fast float %3019, %3034
  %3036 = fadd fast float %3035, %2220
  %3037 = fsub fast float %2870, %3009
  %3038 = fsub fast float %2871, %3010
  %3039 = fsub fast float %2872, %3011
  %3040 = fmul fast float %3024, %3037
  %3041 = fmul fast float %3024, %3038
  %3042 = fmul fast float %3024, %3039
  %3043 = fadd fast float %3040, %3009
  %3044 = fadd fast float %3041, %3010
  %3045 = fadd fast float %3042, %3011
  %3046 = fsub fast float %2969, %2224
  %3047 = fmul fast float %3019, %3046
  %3048 = fadd fast float %3047, %2224
  br label %3094

; <label>:3049                                    ; preds = %3016
  %3050 = icmp eq i32 %3014, 1
  br i1 %3050, label %3051, label %3064

; <label>:3051                                    ; preds = %3049
  %3052 = fadd fast float %2742, -1.000000e+00
  %3053 = fadd fast float %2743, -1.000000e+00
  %3054 = fadd fast float %2744, -1.000000e+00
  %3055 = fmul fast float %3019, %3052
  %3056 = fmul fast float %3019, %3053
  %3057 = fmul fast float %3019, %3054
  %3058 = fadd fast float %3055, 1.000000e+00
  %3059 = fadd fast float %3056, 1.000000e+00
  %3060 = fadd fast float %3057, 1.000000e+00
  %3061 = fmul fast float %3058, %3006
  %3062 = fmul fast float %3059, %3007
  %3063 = fmul fast float %3060, %3008
  br label %3094

; <label>:3064                                    ; preds = %3049
  %3065 = icmp eq i32 %3014, 2
  br i1 %3065, label %3066, label %3094

; <label>:3066                                    ; preds = %3064
  %3067 = call float @dx.op.unary.f32(i32 24, float %2742)  ; Sqrt(value)
  %3068 = call float @dx.op.unary.f32(i32 24, float %2743)  ; Sqrt(value)
  %3069 = call float @dx.op.unary.f32(i32 24, float %2744)  ; Sqrt(value)
  %3070 = fadd fast float %3067, -5.000000e-01
  %3071 = fadd fast float %3068, -5.000000e-01
  %3072 = fadd fast float %3069, -5.000000e-01
  %3073 = fmul fast float %3070, %3019
  %3074 = fmul fast float %3071, %3019
  %3075 = fmul fast float %3072, %3019
  %3076 = fadd fast float %3073, 5.000000e-01
  %3077 = fadd fast float %3074, 5.000000e-01
  %3078 = fadd fast float %3075, 5.000000e-01
  %3079 = fmul fast float %3076, 2.000000e+00
  %3080 = fsub fast float 1.000000e+00, %3079
  %3081 = fmul fast float %3080, %3006
  %3082 = fadd fast float %3081, %3079
  %3083 = fmul fast float %3082, %3006
  %3084 = fmul fast float %3077, 2.000000e+00
  %3085 = fsub fast float 1.000000e+00, %3084
  %3086 = fmul fast float %3085, %3007
  %3087 = fadd fast float %3086, %3084
  %3088 = fmul fast float %3087, %3007
  %3089 = fmul fast float %3078, 2.000000e+00
  %3090 = fsub fast float 1.000000e+00, %3089
  %3091 = fmul fast float %3090, %3008
  %3092 = fadd fast float %3091, %3089
  %3093 = fmul fast float %3092, %3008
  br label %3094

; <label>:3094                                    ; preds = %3066, %3064, %3051, %3021, %3005
  %3095 = phi float [ %3006, %3005 ], [ %3083, %3066 ], [ %3006, %3064 ], [ %3061, %3051 ], [ %3031, %3021 ]
  %3096 = phi float [ %3007, %3005 ], [ %3088, %3066 ], [ %3007, %3064 ], [ %3062, %3051 ], [ %3032, %3021 ]
  %3097 = phi float [ %3008, %3005 ], [ %3093, %3066 ], [ %3008, %3064 ], [ %3063, %3051 ], [ %3033, %3021 ]
  %3098 = phi float [ %3009, %3005 ], [ %3009, %3066 ], [ %3009, %3064 ], [ %3009, %3051 ], [ %3043, %3021 ]
  %3099 = phi float [ %3010, %3005 ], [ %3010, %3066 ], [ %3010, %3064 ], [ %3010, %3051 ], [ %3044, %3021 ]
  %3100 = phi float [ %3011, %3005 ], [ %3011, %3066 ], [ %3011, %3064 ], [ %3011, %3051 ], [ %3045, %3021 ]
  %3101 = phi float [ %2220, %3005 ], [ %2220, %3066 ], [ %2220, %3064 ], [ %2220, %3051 ], [ %3036, %3021 ]
  %3102 = phi float [ %2224, %3005 ], [ %2224, %3066 ], [ %2224, %3064 ], [ %2224, %3051 ], [ %3048, %3021 ]
  %3103 = and i32 %3013, 12
  %3104 = icmp eq i32 %3103, 12
  br i1 %3104, label %3211, label %3105

; <label>:3105                                    ; preds = %3094
  %3106 = and i32 %3013, 2097184
  %3107 = icmp eq i32 %3106, 2097184
  %3108 = select i1 %3107, float %2522, float 0.000000e+00
  %3109 = and i32 %3013, 4194336
  %3110 = icmp eq i32 %3109, 4194336
  %3111 = select i1 %3110, float %2522, float 0.000000e+00
  %3112 = and i32 %3013, 8388640
  %3113 = icmp eq i32 %3112, 8388640
  %3114 = select i1 %3113, float %2522, float 0.000000e+00
  %3115 = and i32 %3013, 1024
  %3116 = icmp ne i32 %3115, 0
  %3117 = select i1 %3116, float %2522, float 0.000000e+00
  %3118 = and i32 %3013, 2048
  %3119 = icmp ne i32 %3118, 0
  %3120 = select i1 %3119, float %2522, float 0.000000e+00
  %3121 = icmp eq i32 %3103, 0
  br i1 %3121, label %3122, label %3147

; <label>:3122                                    ; preds = %3105
  %3123 = fsub fast float %2823, %2209
  %3124 = fsub fast float %2824, %2210
  %3125 = fmul fast float %3108, %3123
  %3126 = fmul fast float %3108, %3124
  %3127 = fadd fast float %3125, %2209
  %3128 = fadd fast float %3126, %2210
  %3129 = fsub fast float %2825, %2222
  %3130 = fmul fast float %3111, %3129
  %3131 = fadd fast float %3130, %2222
  %3132 = fsub fast float %2822, %2221
  %3133 = fmul fast float %3114, %3132
  %3134 = fadd fast float %3133, %2221
  %3135 = fsub fast float %2928, %2217
  %3136 = fsub fast float %2929, %2218
  %3137 = fsub fast float %2930, %2219
  %3138 = fmul fast float %3117, %3135
  %3139 = fmul fast float %3117, %3136
  %3140 = fmul fast float %3117, %3137
  %3141 = fadd fast float %3138, %2217
  %3142 = fadd fast float %3139, %2218
  %3143 = fadd fast float %3140, %2219
  %3144 = fsub fast float %2956, %2223
  %3145 = fmul fast float %3120, %3144
  %3146 = fadd fast float %3145, %2223
  br label %3211

; <label>:3147                                    ; preds = %3105
  %3148 = icmp eq i32 %3103, 4
  br i1 %3148, label %3149, label %3189

; <label>:3149                                    ; preds = %3147
  %3150 = fmul fast float %3108, %2823
  %3151 = fmul fast float %3108, %2824
  %3152 = fadd fast float %3150, %2209
  %3153 = fadd fast float %3151, %2210
  %3154 = call float @dx.op.binary.f32(i32 36, float %2222, float %2825)  ; FMin(a,b)
  %3155 = fsub fast float %3154, %2222
  %3156 = fmul fast float %3155, %3111
  %3157 = fadd fast float %3156, %2222
  %3158 = fadd fast float %2822, %2221
  %3159 = fmul fast float %3158, 0x3FF337FAE0000000
  %3160 = fmul fast float %2221, %2221
  %3161 = fmul fast float %2822, %2822
  %3162 = fadd fast float %3161, %3160
  %3163 = fmul fast float %3162, 0x3FE5152B00000000
  %3164 = fmul fast float %2221, 0xBFCC1F85E0000000
  %3165 = fmul fast float %3164, %2822
  %3166 = fadd fast float %3165, 0xBFE1363700000000
  %3167 = fadd fast float %3166, %3159
  %3168 = fsub fast float %3167, %3163
  %3169 = fmul fast float %3158, 0x3FBA6F0D00000000
  %3170 = fmul fast float %3162, 0x3FD0432880000000
  %3171 = fmul fast float %2221, 0xBFEF110800000000
  %3172 = fmul fast float %3171, %2822
  %3173 = fadd fast float %3172, 1.000000e+00
  %3174 = fsub fast float %3173, %3169
  %3175 = fadd fast float %3174, %3170
  %3176 = fdiv fast float %3168, %3175
  %3177 = call float @dx.op.unary.f32(i32 7, float %3176)  ; Saturate(value)
  %3178 = fsub fast float %3177, %2221
  %3179 = fmul fast float %3178, %3114
  %3180 = fadd fast float %3179, %2221
  %3181 = fmul fast float %3117, %2928
  %3182 = fmul fast float %3117, %2929
  %3183 = fmul fast float %3117, %2930
  %3184 = fadd fast float %3181, %2217
  %3185 = fadd fast float %3182, %2218
  %3186 = fadd fast float %3183, %2219
  %3187 = fmul fast float %3120, %2956
  %3188 = fadd fast float %3187, %2223
  br label %3211

; <label>:3189                                    ; preds = %3147
  %3190 = icmp eq i32 %3103, 8
  br i1 %3190, label %3191, label %3211

; <label>:3191                                    ; preds = %3189
  %3192 = fmul fast float %3108, %2823
  %3193 = fmul fast float %3108, %2824
  %3194 = fadd fast float %3192, %2209
  %3195 = fadd fast float %3193, %2210
  %3196 = call float @dx.op.binary.f32(i32 36, float %2222, float %2825)  ; FMin(a,b)
  %3197 = fsub fast float %3196, %2222
  %3198 = fmul fast float %3197, %3111
  %3199 = fadd fast float %3198, %2222
  %3200 = fsub fast float %2822, %2221
  %3201 = fmul fast float %3114, %3200
  %3202 = fadd fast float %3201, %2221
  %3203 = fmul fast float %3117, %2928
  %3204 = fmul fast float %3117, %2929
  %3205 = fmul fast float %3117, %2930
  %3206 = fadd fast float %3203, %2217
  %3207 = fadd fast float %3204, %2218
  %3208 = fadd fast float %3205, %2219
  %3209 = fmul fast float %3120, %2956
  %3210 = fadd fast float %3209, %2223
  br label %3211

; <label>:3211                                    ; preds = %3191, %3189, %3149, %3122, %3094, %2521, %2225, %2208
  %3212 = phi float [ %2209, %3094 ], [ %2209, %2521 ], [ %2209, %2208 ], [ %3194, %3191 ], [ %2209, %3189 ], [ %3152, %3149 ], [ %3127, %3122 ], [ %2209, %2225 ]
  %3213 = phi float [ %2210, %3094 ], [ %2210, %2521 ], [ %2210, %2208 ], [ %3195, %3191 ], [ %2210, %3189 ], [ %3153, %3149 ], [ %3128, %3122 ], [ %2210, %2225 ]
  %3214 = phi float [ %3095, %3094 ], [ %2211, %2521 ], [ %2211, %2208 ], [ %3095, %3191 ], [ %3095, %3189 ], [ %3095, %3149 ], [ %3095, %3122 ], [ %2211, %2225 ]
  %3215 = phi float [ %3096, %3094 ], [ %2212, %2521 ], [ %2212, %2208 ], [ %3096, %3191 ], [ %3096, %3189 ], [ %3096, %3149 ], [ %3096, %3122 ], [ %2212, %2225 ]
  %3216 = phi float [ %3097, %3094 ], [ %2213, %2521 ], [ %2213, %2208 ], [ %3097, %3191 ], [ %3097, %3189 ], [ %3097, %3149 ], [ %3097, %3122 ], [ %2213, %2225 ]
  %3217 = phi float [ %3098, %3094 ], [ %2214, %2521 ], [ %2214, %2208 ], [ %3098, %3191 ], [ %3098, %3189 ], [ %3098, %3149 ], [ %3098, %3122 ], [ %2214, %2225 ]
  %3218 = phi float [ %3099, %3094 ], [ %2215, %2521 ], [ %2215, %2208 ], [ %3099, %3191 ], [ %3099, %3189 ], [ %3099, %3149 ], [ %3099, %3122 ], [ %2215, %2225 ]
  %3219 = phi float [ %3100, %3094 ], [ %2216, %2521 ], [ %2216, %2208 ], [ %3100, %3191 ], [ %3100, %3189 ], [ %3100, %3149 ], [ %3100, %3122 ], [ %2216, %2225 ]
  %3220 = phi float [ %2217, %3094 ], [ %2217, %2521 ], [ %2217, %2208 ], [ %3206, %3191 ], [ %2217, %3189 ], [ %3184, %3149 ], [ %3141, %3122 ], [ %2217, %2225 ]
  %3221 = phi float [ %2218, %3094 ], [ %2218, %2521 ], [ %2218, %2208 ], [ %3207, %3191 ], [ %2218, %3189 ], [ %3185, %3149 ], [ %3142, %3122 ], [ %2218, %2225 ]
  %3222 = phi float [ %2219, %3094 ], [ %2219, %2521 ], [ %2219, %2208 ], [ %3208, %3191 ], [ %2219, %3189 ], [ %3186, %3149 ], [ %3143, %3122 ], [ %2219, %2225 ]
  %3223 = phi float [ %3101, %3094 ], [ %2220, %2521 ], [ %2220, %2208 ], [ %3101, %3191 ], [ %3101, %3189 ], [ %3101, %3149 ], [ %3101, %3122 ], [ %2220, %2225 ]
  %3224 = phi float [ %2221, %3094 ], [ %2221, %2521 ], [ %2221, %2208 ], [ %3202, %3191 ], [ %2221, %3189 ], [ %3180, %3149 ], [ %3134, %3122 ], [ %2221, %2225 ]
  %3225 = phi float [ %2222, %3094 ], [ %2222, %2521 ], [ %2222, %2208 ], [ %3199, %3191 ], [ %2222, %3189 ], [ %3157, %3149 ], [ %3131, %3122 ], [ %2222, %2225 ]
  %3226 = phi float [ %2223, %3094 ], [ %2223, %2521 ], [ %2223, %2208 ], [ %3210, %3191 ], [ %2223, %3189 ], [ %3188, %3149 ], [ %3146, %3122 ], [ %2223, %2225 ]
  %3227 = phi float [ %3102, %3094 ], [ %2224, %2521 ], [ %2224, %2208 ], [ %3102, %3191 ], [ %3102, %3189 ], [ %3102, %3149 ], [ %3102, %3122 ], [ %2224, %2225 ]
  br i1 %408, label %4214, label %3228

; <label>:3228                                    ; preds = %3211
  %3229 = icmp ult i32 %462, 4
  %3230 = add i32 %49, 72
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = add i32 %49, 76
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = or i32 %3235, %3232
  %3237 = icmp eq i32 %3236, 0
  br i1 %3237, label %4214, label %3238

; <label>:3238                                    ; preds = %3228
  %3239 = and i32 %3232, 262144
  %3240 = icmp ne i32 %3239, 0
  %3241 = select i1 %3240, float %52, float 1.000000e+00
  %3242 = select i1 %3240, float %53, float 0.000000e+00
  %3243 = select i1 %3240, float %54, float 0.000000e+00
  %3244 = select i1 %3240, float %55, float 1.000000e+00
  %3245 = select i1 %3240, float %56, float %72
  %3246 = select i1 %3240, float %57, float %73
  %3247 = add i32 %49, 332
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3247, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = lshr i32 %3249, 16
  %3251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3250)  ; LegacyF16ToF32(value)
  %3252 = fmul fast float %3251, 0x3F50624DE0000000
  %3253 = add i32 %49, 136
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = lshr i32 %3255, 16
  %3257 = and i32 %3256, 255
  %3258 = lshr i32 %3255, 24
  %3259 = add i32 %49, 340
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = and i32 %3261, 65535
  %3263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3262)  ; LegacyF16ToF32(value)
  %3264 = lshr i32 %3261, 16
  %3265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3264)  ; LegacyF16ToF32(value)
  %3266 = add i32 %49, 80
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = lshr i32 %3268, 22
  %3270 = shl nuw nsw i32 %3269, 5
  %3271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3270)  ; LegacyF16ToF32(value)
  %3272 = shl i32 %3268, 4
  %3273 = and i32 %3272, 32752
  %3274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3273)  ; LegacyF16ToF32(value)
  %3275 = lshr i32 %3268, 7
  %3276 = and i32 %3275, 32752
  %3277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3276)  ; LegacyF16ToF32(value)
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 3
  %3280 = fmul fast float %3279, 1.000000e+03
  %3281 = fmul fast float %398, %3280
  %3282 = call float @dx.op.unary.f32(i32 22, float %3281)  ; Frc(value)
  %3283 = fadd fast float %3282, %388
  %3284 = fmul fast float %399, %3280
  %3285 = call float @dx.op.unary.f32(i32 22, float %3284)  ; Frc(value)
  %3286 = fadd fast float %3285, %390
  %3287 = fmul fast float %3252, %3280
  %3288 = call float @dx.op.unary.f32(i32 22, float %3287)  ; Frc(value)
  %3289 = fmul fast float %3288, 0x401921FB60000000
  %3290 = fadd fast float %3289, %3271
  %3291 = call float @dx.op.unary.f32(i32 13, float %3290)  ; Sin(value)
  %3292 = call float @dx.op.unary.f32(i32 12, float %3290)  ; Cos(value)
  %3293 = fsub fast float -0.000000e+00, %3291
  %3294 = fadd fast float %3245, -5.000000e-01
  %3295 = fadd fast float %3246, -5.000000e-01
  %3296 = fmul fast float %3263, %3294
  %3297 = fmul fast float %3265, %3295
  %3298 = fadd fast float %3296, 5.000000e-01
  %3299 = fadd fast float %3297, 5.000000e-01
  %3300 = fmul fast float %3274, %3298
  %3301 = fmul fast float %3277, %3299
  %3302 = fmul fast float %3292, %3300
  %3303 = call float @dx.op.tertiary.f32(i32 46, float %3293, float %3301, float %3302)  ; FMad(a,b,c)
  %3304 = fmul fast float %3291, %3300
  %3305 = call float @dx.op.tertiary.f32(i32 46, float %3292, float %3301, float %3304)  ; FMad(a,b,c)
  %3306 = fadd fast float %3283, %3303
  %3307 = fadd fast float %3286, %3305
  %3308 = icmp ugt i32 %3257, 1
  %3309 = icmp ugt i32 %3255, 33554431
  %3310 = or i1 %3309, %3308
  br i1 %3310, label %3311, label %3336

; <label>:3311                                    ; preds = %3238
  %3312 = add i32 %49, 276
  %3313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.i32 %3313, 0
  %3315 = lshr i32 %3314, 16
  %3316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3315)  ; LegacyF16ToF32(value)
  %3317 = fmul fast float %3279, %3316
  %3318 = call float @dx.op.unary.f32(i32 22, float %3317)  ; Frc(value)
  %3319 = mul nuw nsw i32 %3257, %3258
  %3320 = uitofp i32 %3319 to float
  %3321 = fmul fast float %3318, %3320
  %3322 = call float @dx.op.unary.f32(i32 27, float %3321)  ; Round_ni(value)
  %3323 = fptoui float %3322 to i32
  %3324 = urem i32 %3323, %3257
  %3325 = udiv i32 %3323, %3258
  %3326 = call float @dx.op.unary.f32(i32 22, float %3306)  ; Frc(value)
  %3327 = call float @dx.op.unary.f32(i32 22, float %3307)  ; Frc(value)
  %3328 = uitofp i32 %3324 to float
  %3329 = uitofp i32 %3325 to float
  %3330 = fadd fast float %3326, %3328
  %3331 = fadd fast float %3327, %3329
  %3332 = uitofp i32 %3257 to float
  %3333 = uitofp i32 %3258 to float
  %3334 = fdiv fast float %3330, %3332
  %3335 = fdiv fast float %3331, %3333
  br label %3336

; <label>:3336                                    ; preds = %3311, %3238
  %3337 = phi float [ %3334, %3311 ], [ %3306, %3238 ]
  %3338 = phi float [ %3335, %3311 ], [ %3307, %3238 ]
  %3339 = and i32 %3232, 16777216
  %3340 = icmp eq i32 %3339, 0
  br i1 %3340, label %3450, label %3341

; <label>:3341                                    ; preds = %3336
  %3342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3343 = extractvalue %dx.types.CBufRet.f32 %3342, 0
  %3344 = extractvalue %dx.types.CBufRet.f32 %3342, 1
  %3345 = extractvalue %dx.types.CBufRet.f32 %3342, 2
  %3346 = fadd fast float %3343, %156
  %3347 = fadd fast float %3344, %157
  %3348 = fadd fast float %3345, %158
  %3349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3350 = extractvalue %dx.types.CBufRet.f32 %3349, 0
  %3351 = call float @dx.op.unary.f32(i32 7, float %3350)  ; Saturate(value)
  %3352 = icmp eq i32 %50, 65535
  br i1 %3352, label %3447, label %3353

; <label>:3353                                    ; preds = %3341
  %3354 = lshr i32 %50, 1
  %3355 = shl i32 %3354, 2
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3355, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = and i32 %50, 1
  %3359 = icmp ne i32 %3358, 0
  %3360 = lshr i32 %3357, 16
  %3361 = and i32 %3357, 65535
  %3362 = select i1 %3359, i32 %3360, i32 %3361
  %3363 = icmp eq i32 %3362, 65535
  br i1 %3363, label %3443, label %3364

; <label>:3364                                    ; preds = %3353
  %3365 = mul nuw nsw i32 %3362, 40
  %3366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.f32 %3366, 0
  %3368 = extractvalue %dx.types.ResRet.f32 %3366, 1
  %3369 = extractvalue %dx.types.ResRet.f32 %3366, 2
  %3370 = add nuw nsw i32 %3365, 12
  %3371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 0
  %3373 = extractvalue %dx.types.ResRet.f32 %3371, 1
  %3374 = extractvalue %dx.types.ResRet.f32 %3371, 2
  %3375 = add nuw nsw i32 %3365, 24
  %3376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.f32 %3376, 0
  %3378 = extractvalue %dx.types.ResRet.f32 %3376, 1
  %3379 = extractvalue %dx.types.ResRet.f32 %3376, 2
  %3380 = add nuw nsw i32 %3365, 36
  %3381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.f32 %3381, 0
  %3383 = fsub fast float %3346, %3367
  %3384 = fsub fast float %3347, %3368
  %3385 = fsub fast float %3348, %3369
  %3386 = fmul fast float %3382, %3383
  %3387 = fmul fast float %3382, %3384
  %3388 = fmul fast float %3382, %3385
  %3389 = call float @dx.op.unary.f32(i32 27, float %3386)  ; Round_ni(value)
  %3390 = call float @dx.op.unary.f32(i32 27, float %3387)  ; Round_ni(value)
  %3391 = call float @dx.op.unary.f32(i32 27, float %3388)  ; Round_ni(value)
  %3392 = fadd fast float %3389, 5.000000e-01
  %3393 = fadd fast float %3390, 5.000000e-01
  %3394 = fadd fast float %3391, 5.000000e-01
  %3395 = fmul fast float %3392, %3372
  %3396 = fmul fast float %3393, %3373
  %3397 = fmul fast float %3394, %3374
  %3398 = shl i32 %50, 2
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = add i32 %3400, 0
  %3402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3401, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3403 = call float @dx.op.unary.f32(i32 22, float %3395)  ; Frc(value)
  %3404 = call float @dx.op.unary.f32(i32 22, float %3396)  ; Frc(value)
  %3405 = call float @dx.op.unary.f32(i32 22, float %3397)  ; Frc(value)
  %3406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3402, %dx.types.Handle %44, float %3403, float %3404, float %3405, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3407 = extractvalue %dx.types.ResRet.f32 %3406, 0
  %3408 = extractvalue %dx.types.ResRet.f32 %3406, 1
  %3409 = extractvalue %dx.types.ResRet.f32 %3406, 2
  %3410 = fmul fast float %3407, 1.023000e+03
  %3411 = fmul fast float %3408, 1.023000e+03
  %3412 = fmul fast float %3409, 1.023000e+03
  %3413 = fadd fast float %3410, 5.000000e-01
  %3414 = fadd fast float %3411, 5.000000e-01
  %3415 = fadd fast float %3412, 5.000000e-01
  %3416 = call float @dx.op.unary.f32(i32 27, float %3413)  ; Round_ni(value)
  %3417 = call float @dx.op.unary.f32(i32 27, float %3414)  ; Round_ni(value)
  %3418 = call float @dx.op.unary.f32(i32 27, float %3415)  ; Round_ni(value)
  %3419 = fsub fast float %3386, %3389
  %3420 = fsub fast float %3387, %3390
  %3421 = fsub fast float %3388, %3391
  %3422 = fmul fast float %3419, 7.500000e-01
  %3423 = fmul fast float %3420, 7.500000e-01
  %3424 = fmul fast float %3421, 7.500000e-01
  %3425 = fadd fast float %3389, 1.250000e-01
  %3426 = fadd fast float %3425, %3422
  %3427 = fadd fast float %3426, %3416
  %3428 = fadd fast float %3390, 1.250000e-01
  %3429 = fadd fast float %3428, %3423
  %3430 = fadd fast float %3429, %3417
  %3431 = fadd fast float %3391, 1.250000e-01
  %3432 = fadd fast float %3431, %3424
  %3433 = fadd fast float %3432, %3418
  %3434 = fmul fast float %3427, %3377
  %3435 = fmul fast float %3430, %3378
  %3436 = fmul fast float %3433, %3379
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = add i32 %3438, 0
  %3440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3440, %dx.types.Handle %42, float %3434, float %3435, float %3436, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3442 = extractvalue %dx.types.ResRet.f32 %3441, 0
  br label %3443

; <label>:3443                                    ; preds = %3364, %3353
  %3444 = phi float [ %3442, %3364 ], [ -1.000000e+00, %3353 ]
  %3445 = fadd fast float %3444, %3351
  %3446 = call float @dx.op.unary.f32(i32 7, float %3445)  ; Saturate(value)
  br label %3447

; <label>:3447                                    ; preds = %3443, %3341
  %3448 = phi float [ %3446, %3443 ], [ %3351, %3341 ]
  %3449 = fmul fast float %3448, %457
  br label %3450

; <label>:3450                                    ; preds = %3447, %3336
  %3451 = phi float [ %3449, %3447 ], [ %457, %3336 ]
  %3452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3453 = extractvalue %dx.types.ResRet.i32 %3452, 0
  %3454 = and i32 %3453, 256
  %3455 = icmp eq i32 %3454, 0
  br i1 %3455, label %3502, label %3456

; <label>:3456                                    ; preds = %3450
  %3457 = add i32 %49, 436
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = add i32 %3459, 0
  %3461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3461, %dx.types.Handle %90, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3463 = extractvalue %dx.types.ResRet.f32 %3462, 0
  %3464 = add i32 %49, 148
  %3465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3464, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.i32 %3465, 0
  %3467 = shl i32 %3466, 4
  %3468 = and i32 %3467, 32752
  %3469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3468)  ; LegacyF16ToF32(value)
  %3470 = lshr i32 %3466, 7
  %3471 = and i32 %3470, 32752
  %3472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3471)  ; LegacyF16ToF32(value)
  %3473 = fsub fast float 1.000000e+00, %3451
  %3474 = call float @dx.op.binary.f32(i32 35, float %3473, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3475 = bitcast float %3451 to i32
  %3476 = sitofp i32 %3475 to float
  %3477 = fadd fast float %3476, 0xC1CFBF8940000000
  %3478 = fmul fast float %3472, %3477
  %3479 = fadd fast float %3478, 0x41CFBF8940000000
  %3480 = fptosi float %3479 to i32
  %3481 = bitcast i32 %3480 to float
  %3482 = bitcast float %3474 to i32
  %3483 = sitofp i32 %3482 to float
  %3484 = fadd fast float %3483, 0xC1CFBF8940000000
  %3485 = fmul fast float %3484, %3472
  %3486 = fadd fast float %3485, 0x41CFBF8940000000
  %3487 = fptosi float %3486 to i32
  %3488 = bitcast i32 %3487 to float
  %3489 = fmul fast float %3481, %3469
  %3490 = fmul fast float %3488, %3469
  %3491 = fsub fast float %3474, %3489
  %3492 = fadd fast float %3490, %3474
  %3493 = call float @dx.op.unary.f32(i32 7, float %3491)  ; Saturate(value)
  %3494 = call float @dx.op.unary.f32(i32 7, float %3492)  ; Saturate(value)
  %3495 = fsub fast float %3463, %3493
  %3496 = fsub fast float %3494, %3493
  %3497 = bitcast float %3496 to i32
  %3498 = sub nsw i32 2129859010, %3497
  %3499 = bitcast i32 %3498 to float
  %3500 = fmul fast float %3499, %3495
  %3501 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  br label %3502

; <label>:3502                                    ; preds = %3456, %3450
  %3503 = phi float [ %3501, %3456 ], [ %3451, %3450 ]
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = and i32 %3505, 128
  %3507 = icmp eq i32 %3506, 0
  br i1 %3507, label %3524, label %3508

; <label>:3508                                    ; preds = %3502
  %3509 = add i32 %49, 420
  %3510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3509, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.i32 %3510, 0
  %3512 = add i32 %3511, 0
  %3513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3513, %dx.types.Handle %90, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3515 = extractvalue %dx.types.ResRet.f32 %3514, 0
  %3516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.i32 %3516, 0
  %3518 = and i32 %3517, 524288
  %3519 = icmp ne i32 %3518, 0
  %3520 = fcmp fast ogt float %3515, 0x3FE0101020000000
  %3521 = select i1 %3520, float 1.000000e+00, float 0.000000e+00
  %3522 = select i1 %3519, float %3521, float %3515
  %3523 = fmul fast float %3522, %3503
  br label %3524

; <label>:3524                                    ; preds = %3508, %3502
  %3525 = phi float [ %3523, %3508 ], [ %3503, %3502 ]
  %3526 = fcmp fast ult float %3525, 0x3F70101020000000
  br i1 %3526, label %4214, label %3527

; <label>:3527                                    ; preds = %3524
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = and i32 %3529, 16
  %3531 = icmp eq i32 %3530, 0
  br i1 %3531, label %3730, label %3532

; <label>:3532                                    ; preds = %3527
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = add i32 %49, 372
  %3536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3535, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.i32 %3536, 0
  %3538 = add i32 %3537, 0
  %3539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3540 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3539, %dx.types.Handle %89, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3541 = extractvalue %dx.types.ResRet.f32 %3540, 0
  %3542 = extractvalue %dx.types.ResRet.f32 %3540, 1
  %3543 = extractvalue %dx.types.ResRet.f32 %3540, 2
  %3544 = extractvalue %dx.types.ResRet.f32 %3540, 3
  %3545 = and i32 %3534, 255
  %3546 = uitofp i32 %3545 to float
  %3547 = lshr i32 %3534, 8
  %3548 = and i32 %3547, 255
  %3549 = uitofp i32 %3548 to float
  %3550 = fmul fast float %3544, %3546
  %3551 = fadd fast float %3550, %3549
  %3552 = fmul fast float %3551, 0x3F70101000000000
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = and i32 %3554, 512
  %3556 = icmp eq i32 %3555, 0
  br i1 %3556, label %3565, label %3557

; <label>:3557                                    ; preds = %3532
  %3558 = add i32 %49, 452
  %3559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3558, i32 undef)  ; BufferLoad(srv,index,wot)
  %3560 = extractvalue %dx.types.ResRet.i32 %3559, 0
  %3561 = add i32 %3560, 0
  %3562 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3561, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3563 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3562, %dx.types.Handle %90, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3564 = extractvalue %dx.types.ResRet.f32 %3563, 0
  br label %3565

; <label>:3565                                    ; preds = %3557, %3532
  %3566 = phi float [ %3564, %3557 ], [ 1.000000e+00, %3532 ]
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = and i32 %3568, 33554432
  %3570 = icmp eq i32 %3569, 0
  br i1 %3570, label %3677, label %3571

; <label>:3571                                    ; preds = %3565
  %3572 = add i32 %49, 272
  %3573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3572, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.i32 %3573, 0
  %3575 = and i32 %3574, 65535
  %3576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3575)  ; LegacyF16ToF32(value)
  %3577 = lshr i32 %3574, 16
  %3578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3577)  ; LegacyF16ToF32(value)
  %3579 = add i32 %49, 276
  %3580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.i32 %3580, 0
  %3582 = and i32 %3581, 65535
  %3583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3582)  ; LegacyF16ToF32(value)
  %3584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.i32 %3584, 0
  %3586 = lshr i32 %3585, 24
  %3587 = uitofp i32 %3586 to float
  %3588 = fmul fast float %3587, 0x3F70101020000000
  %3589 = and i32 %3585, 255
  %3590 = uitofp i32 %3589 to float
  %3591 = fmul fast float %3590, 0x3F70101020000000
  %3592 = lshr i32 %3585, 8
  %3593 = and i32 %3592, 255
  %3594 = uitofp i32 %3593 to float
  %3595 = fmul fast float %3594, 0x3F70101020000000
  %3596 = lshr i32 %3585, 16
  %3597 = and i32 %3596, 255
  %3598 = uitofp i32 %3597 to float
  %3599 = fmul fast float %3598, 0x3F70101020000000
  %3600 = add i32 %49, 268
  %3601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.i32 %3601, 0
  %3603 = lshr i32 %3602, 24
  %3604 = uitofp i32 %3603 to float
  %3605 = fmul fast float %3604, 0x3F70101020000000
  %3606 = and i32 %3602, 255
  %3607 = uitofp i32 %3606 to float
  %3608 = fmul fast float %3607, 0x3F70101020000000
  %3609 = lshr i32 %3602, 8
  %3610 = and i32 %3609, 255
  %3611 = uitofp i32 %3610 to float
  %3612 = fmul fast float %3611, 0x3F70101020000000
  %3613 = lshr i32 %3602, 16
  %3614 = and i32 %3613, 255
  %3615 = uitofp i32 %3614 to float
  %3616 = fmul fast float %3615, 0x3F70101020000000
  %3617 = bitcast float %3541 to i32
  %3618 = ashr i32 %3617, 1
  %3619 = sub nsw i32 1597463174, %3618
  %3620 = bitcast i32 %3619 to float
  %3621 = fmul fast float %3541, 5.000000e-01
  %3622 = fmul fast float %3620, %3620
  %3623 = fmul fast float %3622, %3621
  %3624 = fsub fast float 1.500000e+00, %3623
  %3625 = fmul fast float %3620, %3541
  %3626 = fmul fast float %3625, %3624
  %3627 = bitcast float %3542 to i32
  %3628 = ashr i32 %3627, 1
  %3629 = sub nsw i32 1597463174, %3628
  %3630 = bitcast i32 %3629 to float
  %3631 = fmul fast float %3542, 5.000000e-01
  %3632 = fmul fast float %3630, %3630
  %3633 = fmul fast float %3632, %3631
  %3634 = fsub fast float 1.500000e+00, %3633
  %3635 = fmul fast float %3630, %3542
  %3636 = fmul fast float %3635, %3634
  %3637 = bitcast float %3543 to i32
  %3638 = ashr i32 %3637, 1
  %3639 = sub nsw i32 1597463174, %3638
  %3640 = bitcast i32 %3639 to float
  %3641 = fmul fast float %3543, 5.000000e-01
  %3642 = fmul fast float %3640, %3640
  %3643 = fmul fast float %3642, %3641
  %3644 = fsub fast float 1.500000e+00, %3643
  %3645 = fmul fast float %3640, %3543
  %3646 = fmul fast float %3645, %3644
  %3647 = fsub fast float %3626, %3608
  %3648 = fsub fast float %3636, %3612
  %3649 = fsub fast float %3646, %3616
  %3650 = fmul fast float %3647, %3576
  %3651 = fmul fast float %3648, %3578
  %3652 = fmul fast float %3649, %3583
  %3653 = fadd fast float %3650, %3591
  %3654 = fadd fast float %3651, %3595
  %3655 = fadd fast float %3652, %3599
  %3656 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3657 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3658 = call float @dx.op.unary.f32(i32 7, float %3655)  ; Saturate(value)
  %3659 = fmul fast float %3656, %3656
  %3660 = fmul fast float %3657, %3657
  %3661 = fmul fast float %3658, %3658
  %3662 = fsub fast float %3659, %3541
  %3663 = fsub fast float %3660, %3542
  %3664 = fsub fast float %3661, %3543
  %3665 = fmul fast float %3662, %3566
  %3666 = fmul fast float %3663, %3566
  %3667 = fmul fast float %3664, %3566
  %3668 = fadd fast float %3665, %3541
  %3669 = fadd fast float %3666, %3542
  %3670 = fadd fast float %3667, %3543
  %3671 = fadd fast float %3588, %3552
  %3672 = fsub fast float %3671, %3605
  %3673 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3674 = fsub fast float %3673, %3552
  %3675 = fmul fast float %3674, %3566
  %3676 = fadd fast float %3675, %3552
  br label %3730

; <label>:3677                                    ; preds = %3565
  %3678 = and i32 %3568, 134217728
  %3679 = icmp eq i32 %3678, 0
  br i1 %3679, label %3714, label %3680

; <label>:3680                                    ; preds = %3677
  %3681 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %3682 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %3683 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %3684 = fadd fast float %3681, -5.000000e-01
  %3685 = fadd fast float %3682, -5.000000e-01
  %3686 = fadd fast float %3683, -5.000000e-01
  %3687 = fmul fast float %3684, %3566
  %3688 = fmul fast float %3685, %3566
  %3689 = fmul fast float %3686, %3566
  %3690 = fadd fast float %3687, 5.000000e-01
  %3691 = fadd fast float %3688, 5.000000e-01
  %3692 = fadd fast float %3689, 5.000000e-01
  %3693 = call float @dx.op.unary.f32(i32 24, float %3541)  ; Sqrt(value)
  %3694 = call float @dx.op.unary.f32(i32 24, float %3542)  ; Sqrt(value)
  %3695 = call float @dx.op.unary.f32(i32 24, float %3543)  ; Sqrt(value)
  %3696 = fmul fast float %3690, 2.000000e+00
  %3697 = fsub fast float 1.000000e+00, %3696
  %3698 = fmul fast float %3697, %3693
  %3699 = fadd fast float %3698, %3696
  %3700 = fmul fast float %3699, %3693
  %3701 = fmul fast float %3691, 2.000000e+00
  %3702 = fsub fast float 1.000000e+00, %3701
  %3703 = fmul fast float %3702, %3694
  %3704 = fadd fast float %3703, %3701
  %3705 = fmul fast float %3704, %3694
  %3706 = fmul fast float %3692, 2.000000e+00
  %3707 = fsub fast float 1.000000e+00, %3706
  %3708 = fmul fast float %3707, %3695
  %3709 = fadd fast float %3708, %3706
  %3710 = fmul fast float %3709, %3695
  %3711 = fmul fast float %3700, %3700
  %3712 = fmul fast float %3705, %3705
  %3713 = fmul fast float %3710, %3710
  br label %3730

; <label>:3714                                    ; preds = %3677
  %3715 = fmul fast float %375, %375
  %3716 = fmul fast float %379, %379
  %3717 = fmul fast float %383, %383
  %3718 = fadd fast float %3715, -1.000000e+00
  %3719 = fadd fast float %3716, -1.000000e+00
  %3720 = fadd fast float %3717, -1.000000e+00
  %3721 = fmul fast float %3566, %3718
  %3722 = fmul fast float %3566, %3719
  %3723 = fmul fast float %3566, %3720
  %3724 = fadd fast float %3721, 1.000000e+00
  %3725 = fadd fast float %3722, 1.000000e+00
  %3726 = fadd fast float %3723, 1.000000e+00
  %3727 = fmul fast float %3724, %3541
  %3728 = fmul fast float %3725, %3542
  %3729 = fmul fast float %3726, %3543
  br label %3730

; <label>:3730                                    ; preds = %3714, %3680, %3571, %3527
  %3731 = phi float [ %3676, %3571 ], [ %3552, %3680 ], [ %3552, %3714 ], [ 0x3FA23C0BE0000000, %3527 ]
  %3732 = phi float [ %3668, %3571 ], [ %3711, %3680 ], [ %3727, %3714 ], [ 1.000000e+00, %3527 ]
  %3733 = phi float [ %3669, %3571 ], [ %3712, %3680 ], [ %3728, %3714 ], [ 1.000000e+00, %3527 ]
  %3734 = phi float [ %3670, %3571 ], [ %3713, %3680 ], [ %3729, %3714 ], [ 1.000000e+00, %3527 ]
  %3735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3736 = extractvalue %dx.types.CBufRet.i32 %3735, 1
  %3737 = and i32 %3736, 1
  %3738 = icmp ne i32 %3737, 0
  %3739 = add i32 %49, 356
  %3740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.i32 %3740, 0
  %3742 = and i32 %3741, 32
  %3743 = icmp ne i32 %3742, 0
  %3744 = and i1 %3738, %3743
  %3745 = select i1 %3744, float 1.000000e+00, float %3732
  %3746 = select i1 %3744, float 0x3FD3333340000000, float %3733
  %3747 = select i1 %3744, float 0x3FD3333340000000, float %3734
  %3748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.i32 %3748, 0
  %3750 = and i32 %3749, 32
  %3751 = icmp eq i32 %3750, 0
  br i1 %3751, label %3824, label %3752

; <label>:3752                                    ; preds = %3730
  %3753 = add i32 %49, 140
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = add i32 %49, 388
  %3757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3756, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.i32 %3757, 0
  %3759 = add i32 %3758, 0
  %3760 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3759, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3761 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3760, %dx.types.Handle %89, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3762 = extractvalue %dx.types.ResRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.ResRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.ResRet.f32 %3761, 2
  %3765 = extractvalue %dx.types.ResRet.f32 %3761, 3
  %3766 = and i32 %3755, 255
  %3767 = uitofp i32 %3766 to float
  %3768 = lshr i32 %3755, 8
  %3769 = and i32 %3768, 255
  %3770 = uitofp i32 %3769 to float
  %3771 = lshr i32 %3755, 16
  %3772 = and i32 %3771, 255
  %3773 = uitofp i32 %3772 to float
  %3774 = fmul fast float %3773, 0x3F70101000000000
  %3775 = fmul fast float %3762, %3767
  %3776 = fadd fast float %3775, %3770
  %3777 = fmul fast float %3776, 0x3F70101000000000
  %3778 = fadd fast float %3763, -5.000000e-01
  %3779 = fadd fast float %3765, -5.000000e-01
  %3780 = fmul fast float %3778, %3774
  %3781 = fmul fast float %3779, %3774
  %3782 = fadd fast float %3780, 5.000000e-01
  %3783 = fadd fast float %3781, 5.000000e-01
  %3784 = fmul fast float %3782, 2.000000e+00
  %3785 = fadd fast float %3784, -1.000000e+00
  %3786 = fmul fast float %3783, 2.000000e+00
  %3787 = fadd fast float %3786, -1.000000e+00
  %3788 = fadd fast float %3785, %3787
  %3789 = fmul fast float %3788, 5.000000e-01
  %3790 = fsub fast float %3785, %3787
  %3791 = fmul fast float %3790, 5.000000e-01
  %3792 = call float @dx.op.unary.f32(i32 6, float %3789)  ; FAbs(value)
  %3793 = fsub fast float 1.000000e+00, %3792
  %3794 = call float @dx.op.unary.f32(i32 6, float %3791)  ; FAbs(value)
  %3795 = fsub fast float %3793, %3794
  %3796 = call float @dx.op.dot3.f32(i32 55, float %3789, float %3791, float %3795, float %3789, float %3791, float %3795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3797 = call float @dx.op.unary.f32(i32 25, float %3796)  ; Rsqrt(value)
  %3798 = fmul fast float %3789, %3797
  %3799 = fmul fast float %3791, %3797
  %3800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.i32 %3800, 0
  %3802 = and i32 %3801, 67108864
  %3803 = icmp eq i32 %3802, 0
  br i1 %3803, label %3820, label %3804

; <label>:3804                                    ; preds = %3752
  %3805 = add i32 %49, 328
  %3806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3807 = extractvalue %dx.types.ResRet.i32 %3806, 0
  %3808 = and i32 %3807, 65535
  %3809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3808)  ; LegacyF16ToF32(value)
  %3810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3247, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.i32 %3810, 0
  %3812 = and i32 %3811, 65535
  %3813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3812)  ; LegacyF16ToF32(value)
  %3814 = lshr i32 %3807, 16
  %3815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3814)  ; LegacyF16ToF32(value)
  %3816 = fsub fast float %3777, %3815
  %3817 = fmul fast float %3816, %3809
  %3818 = fadd fast float %3817, %3813
  %3819 = call float @dx.op.unary.f32(i32 7, float %3818)  ; Saturate(value)
  br label %3820

; <label>:3820                                    ; preds = %3804, %3752
  %3821 = phi float [ %3819, %3804 ], [ %3777, %3752 ]
  %3822 = call float @dx.op.dot2.f32(i32 54, float %3798, float %3799, float %3241, float %3242)  ; Dot2(ax,ay,bx,by)
  %3823 = call float @dx.op.dot2.f32(i32 54, float %3798, float %3799, float %3243, float %3244)  ; Dot2(ax,ay,bx,by)
  br label %3824

; <label>:3824                                    ; preds = %3820, %3730
  %3825 = phi float [ %3821, %3820 ], [ 0x3FD6666660000000, %3730 ]
  %3826 = phi float [ %3822, %3820 ], [ 0.000000e+00, %3730 ]
  %3827 = phi float [ %3823, %3820 ], [ 0.000000e+00, %3730 ]
  %3828 = phi float [ %3764, %3820 ], [ 1.000000e+00, %3730 ]
  %3829 = add i32 %49, 208
  %3830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.i32 %3830, 0
  %3832 = lshr i32 %3831, 22
  %3833 = shl nuw nsw i32 %3832, 5
  %3834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3833)  ; LegacyF16ToF32(value)
  %3835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3836 = extractvalue %dx.types.ResRet.i32 %3835, 0
  %3837 = and i32 %3836, 64
  %3838 = icmp eq i32 %3837, 0
  br i1 %3838, label %3872, label %3839

; <label>:3839                                    ; preds = %3824
  %3840 = add i32 %49, 404
  %3841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.i32 %3841, 0
  %3843 = add i32 %3842, 0
  %3844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3843, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3846 = extractvalue %dx.types.ResRet.i32 %3845, 0
  %3847 = and i32 %3846, 131072
  %3848 = icmp eq i32 %3847, 0
  %3849 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3844, %dx.types.Handle %89, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3850 = extractvalue %dx.types.ResRet.f32 %3849, 0
  %3851 = extractvalue %dx.types.ResRet.f32 %3849, 1
  %3852 = extractvalue %dx.types.ResRet.f32 %3849, 2
  %3853 = fmul fast float %3850, %363
  %3854 = fmul fast float %3851, %366
  %3855 = fmul fast float %3852, %369
  br i1 %3848, label %3862, label %3856

; <label>:3856                                    ; preds = %3839
  %3857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.f32 %3857, 0
  %3859 = fmul fast float %3858, %3853
  %3860 = fmul fast float %3858, %3854
  %3861 = fmul fast float %3858, %3855
  br label %3862

; <label>:3862                                    ; preds = %3856, %3839
  %3863 = phi float [ %3859, %3856 ], [ %3853, %3839 ]
  %3864 = phi float [ %3860, %3856 ], [ %3854, %3839 ]
  %3865 = phi float [ %3861, %3856 ], [ %3855, %3839 ]
  %3866 = fmul fast float %3863, %3834
  %3867 = select i1 %217, float %3866, float %3863
  %3868 = call float @dx.op.dot3.f32(i32 55, float %3867, float %3864, float %3865, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3869 = select i1 %217, float 0.000000e+00, float %3863
  %3870 = select i1 %217, float %3868, float %3864
  %3871 = select i1 %217, float 0.000000e+00, float %3865
  br label %3872

; <label>:3872                                    ; preds = %3862, %3824
  %3873 = phi float [ %3869, %3862 ], [ 0.000000e+00, %3824 ]
  %3874 = phi float [ %3870, %3862 ], [ 0.000000e+00, %3824 ]
  %3875 = phi float [ %3871, %3862 ], [ 0.000000e+00, %3824 ]
  %3876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3877 = extractvalue %dx.types.ResRet.i32 %3876, 0
  %3878 = and i32 %3877, 1024
  %3879 = icmp eq i32 %3878, 0
  br i1 %3879, label %3910, label %3880

; <label>:3880                                    ; preds = %3872
  %3881 = add i32 %49, 200
  %3882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.i32 %3882, 0
  %3884 = and i32 %3883, 255
  %3885 = uitofp i32 %3884 to float
  %3886 = fmul fast float %3885, 0x3F70101020000000
  %3887 = lshr i32 %3883, 8
  %3888 = and i32 %3887, 255
  %3889 = uitofp i32 %3888 to float
  %3890 = fmul fast float %3889, 0x3F70101020000000
  %3891 = lshr i32 %3883, 16
  %3892 = and i32 %3891, 255
  %3893 = uitofp i32 %3892 to float
  %3894 = fmul fast float %3893, 0x3F70101020000000
  %3895 = fmul fast float %3886, %3886
  %3896 = fmul fast float %3890, %3890
  %3897 = fmul fast float %3894, %3894
  %3898 = add i32 %49, 468
  %3899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3898, i32 undef)  ; BufferLoad(srv,index,wot)
  %3900 = extractvalue %dx.types.ResRet.i32 %3899, 0
  %3901 = add i32 %3900, 0
  %3902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3903 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3902, %dx.types.Handle %90, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3904 = extractvalue %dx.types.ResRet.f32 %3903, 0
  %3905 = extractvalue %dx.types.ResRet.f32 %3903, 1
  %3906 = extractvalue %dx.types.ResRet.f32 %3903, 2
  %3907 = fmul fast float %3895, %3904
  %3908 = fmul fast float %3896, %3905
  %3909 = fmul fast float %3897, %3906
  br label %3910

; <label>:3910                                    ; preds = %3880, %3872
  %3911 = phi float [ %3907, %3880 ], [ 0.000000e+00, %3872 ]
  %3912 = phi float [ %3908, %3880 ], [ 0.000000e+00, %3872 ]
  %3913 = phi float [ %3909, %3880 ], [ 0.000000e+00, %3872 ]
  %3914 = fcmp fast ogt float %3911, 0.000000e+00
  %3915 = fcmp fast ogt float %3912, 0.000000e+00
  %3916 = fcmp fast ogt float %3913, 0.000000e+00
  %3917 = call float @dx.op.unary.f32(i32 23, float %3911)  ; Log(value)
  %3918 = call float @dx.op.unary.f32(i32 23, float %3912)  ; Log(value)
  %3919 = call float @dx.op.unary.f32(i32 23, float %3913)  ; Log(value)
  %3920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.i32 %3920, 0
  %3922 = lshr i32 %3921, 7
  %3923 = and i32 %3922, 32752
  %3924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3923)  ; LegacyF16ToF32(value)
  %3925 = fmul fast float %3917, 0xBFE62E4300000000
  %3926 = fmul fast float %3925, %3924
  %3927 = fmul fast float %3918, 0xBFE62E4300000000
  %3928 = fmul fast float %3927, %3924
  %3929 = fmul fast float %3919, 0xBFE62E4300000000
  %3930 = fmul fast float %3929, %3924
  %3931 = select i1 %3914, float %3926, float 1.270000e+02
  %3932 = select i1 %3915, float %3928, float 1.270000e+02
  %3933 = select i1 %3916, float %3930, float 1.270000e+02
  %3934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.i32 %3934, 0
  %3936 = and i32 %3935, 10240
  %3937 = icmp eq i32 %3936, 0
  br i1 %3937, label %3958, label %3938

; <label>:3938                                    ; preds = %3910
  %3939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.i32 %3939, 0
  %3941 = and i32 %3940, 2048
  %3942 = icmp eq i32 %3941, 0
  br i1 %3942, label %3958, label %3943

; <label>:3943                                    ; preds = %3938
  %3944 = add i32 %49, 484
  %3945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.i32 %3945, 0
  %3947 = add i32 %3946, 0
  %3948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3948, %dx.types.Handle %90, float %3337, float %3338, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 3
  %3951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3952 = extractvalue %dx.types.ResRet.i32 %3951, 0
  %3953 = shl i32 %3952, 4
  %3954 = and i32 %3953, 32752
  %3955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3954)  ; LegacyF16ToF32(value)
  %3956 = fmul fast float %3955, %3950
  %3957 = call float @dx.op.binary.f32(i32 35, float %3956, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3958

; <label>:3958                                    ; preds = %3943, %3938, %3910
  %3959 = phi float [ %3957, %3943 ], [ 0x3F70101020000000, %3938 ], [ 0x3F70101020000000, %3910 ]
  %3960 = add i32 %49, 144
  %3961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3960, i32 undef)  ; BufferLoad(srv,index,wot)
  %3962 = extractvalue %dx.types.ResRet.i32 %3961, 0
  %3963 = and i32 %3962, 255
  %3964 = uitofp i32 %3963 to float
  %3965 = lshr i32 %3962, 8
  %3966 = and i32 %3965, 255
  %3967 = uitofp i32 %3966 to float
  %3968 = call float @dx.op.dot3.f32(i32 55, float %3745, float %3746, float %3747, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3969 = fmul fast float %3967, %3968
  %3970 = fadd fast float %3969, %3964
  %3971 = fmul fast float %3970, 0x3F70101020000000
  %3972 = call float @dx.op.unary.f32(i32 7, float %3971)  ; Saturate(value)
  br i1 %3229, label %3973, label %4008

; <label>:3973                                    ; preds = %3958
  %3974 = fmul fast float %3959, 2.000000e+00
  %3975 = fcmp fast olt float %3931, 1.270000e+02
  %3976 = fcmp fast olt float %3932, 1.270000e+02
  %3977 = fcmp fast olt float %3933, 1.270000e+02
  %3978 = fmul fast float %3931, 0xBFF7154760000000
  %3979 = fmul fast float %3978, %3974
  %3980 = fmul fast float %3932, 0xBFF7154760000000
  %3981 = fmul fast float %3980, %3974
  %3982 = fmul fast float %3933, 0xBFF7154760000000
  %3983 = fmul fast float %3982, %3974
  %3984 = call float @dx.op.unary.f32(i32 21, float %3979)  ; Exp(value)
  %3985 = call float @dx.op.unary.f32(i32 21, float %3981)  ; Exp(value)
  %3986 = call float @dx.op.unary.f32(i32 21, float %3983)  ; Exp(value)
  %3987 = call float @dx.op.unary.f32(i32 7, float %3984)  ; Saturate(value)
  %3988 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3989 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3990 = fadd fast float %3987, -1.000000e+00
  %3991 = select i1 %3975, float %3990, float -1.000000e+00
  %3992 = fadd fast float %3988, -1.000000e+00
  %3993 = select i1 %3976, float %3992, float -1.000000e+00
  %3994 = fadd fast float %3989, -1.000000e+00
  %3995 = select i1 %3977, float %3994, float -1.000000e+00
  %3996 = fmul fast float %3991, %3525
  %3997 = fmul fast float %3993, %3525
  %3998 = fmul fast float %3995, %3525
  %3999 = fadd fast float %3996, 1.000000e+00
  %4000 = fadd fast float %3997, 1.000000e+00
  %4001 = fadd fast float %3998, 1.000000e+00
  %4002 = fmul fast float %3999, %3214
  %4003 = fmul fast float %4000, %3215
  %4004 = fmul fast float %4001, %3216
  %4005 = fmul fast float %3999, %3217
  %4006 = fmul fast float %4000, %3218
  %4007 = fmul fast float %4001, %3219
  br label %4008

; <label>:4008                                    ; preds = %3973, %3958
  %4009 = phi float [ %4002, %3973 ], [ %3214, %3958 ]
  %4010 = phi float [ %4003, %3973 ], [ %3215, %3958 ]
  %4011 = phi float [ %4004, %3973 ], [ %3216, %3958 ]
  %4012 = phi float [ %4005, %3973 ], [ %3217, %3958 ]
  %4013 = phi float [ %4006, %3973 ], [ %3218, %3958 ]
  %4014 = phi float [ %4007, %3973 ], [ %3219, %3958 ]
  %4015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4016 = extractvalue %dx.types.ResRet.i32 %4015, 0
  %4017 = and i32 %4016, 3
  %4018 = icmp eq i32 %4017, 3
  br i1 %4018, label %4097, label %4019

; <label>:4019                                    ; preds = %4008
  %4020 = and i32 %4016, 16
  %4021 = icmp ne i32 %4020, 0
  %4022 = select i1 %4021, float %3525, float 0.000000e+00
  %4023 = icmp eq i32 %4017, 0
  br i1 %4023, label %4024, label %4052

; <label>:4024                                    ; preds = %4019
  %4025 = and i32 %4016, 64
  %4026 = icmp ne i32 %4025, 0
  %4027 = select i1 %4026, float %3525, float 0.000000e+00
  %4028 = fsub fast float %3745, %4009
  %4029 = fsub fast float %3746, %4010
  %4030 = fsub fast float %3747, %4011
  %4031 = fmul fast float %4022, %4028
  %4032 = fmul fast float %4022, %4029
  %4033 = fmul fast float %4022, %4030
  %4034 = fadd fast float %4031, %4009
  %4035 = fadd fast float %4032, %4010
  %4036 = fadd fast float %4033, %4011
  %4037 = fsub fast float %3731, %3223
  %4038 = fmul fast float %4022, %4037
  %4039 = fadd fast float %4038, %3223
  %4040 = fsub fast float %3873, %4012
  %4041 = fsub fast float %3874, %4013
  %4042 = fsub fast float %3875, %4014
  %4043 = fmul fast float %4027, %4040
  %4044 = fmul fast float %4027, %4041
  %4045 = fmul fast float %4027, %4042
  %4046 = fadd fast float %4043, %4012
  %4047 = fadd fast float %4044, %4013
  %4048 = fadd fast float %4045, %4014
  %4049 = fsub fast float %3972, %3227
  %4050 = fmul fast float %4022, %4049
  %4051 = fadd fast float %4050, %3227
  br label %4097

; <label>:4052                                    ; preds = %4019
  %4053 = icmp eq i32 %4017, 1
  br i1 %4053, label %4054, label %4067

; <label>:4054                                    ; preds = %4052
  %4055 = fadd fast float %3745, -1.000000e+00
  %4056 = fadd fast float %3746, -1.000000e+00
  %4057 = fadd fast float %3747, -1.000000e+00
  %4058 = fmul fast float %4022, %4055
  %4059 = fmul fast float %4022, %4056
  %4060 = fmul fast float %4022, %4057
  %4061 = fadd fast float %4058, 1.000000e+00
  %4062 = fadd fast float %4059, 1.000000e+00
  %4063 = fadd fast float %4060, 1.000000e+00
  %4064 = fmul fast float %4061, %4009
  %4065 = fmul fast float %4062, %4010
  %4066 = fmul fast float %4063, %4011
  br label %4097

; <label>:4067                                    ; preds = %4052
  %4068 = icmp eq i32 %4017, 2
  br i1 %4068, label %4069, label %4097

; <label>:4069                                    ; preds = %4067
  %4070 = call float @dx.op.unary.f32(i32 24, float %3745)  ; Sqrt(value)
  %4071 = call float @dx.op.unary.f32(i32 24, float %3746)  ; Sqrt(value)
  %4072 = call float @dx.op.unary.f32(i32 24, float %3747)  ; Sqrt(value)
  %4073 = fadd fast float %4070, -5.000000e-01
  %4074 = fadd fast float %4071, -5.000000e-01
  %4075 = fadd fast float %4072, -5.000000e-01
  %4076 = fmul fast float %4073, %4022
  %4077 = fmul fast float %4074, %4022
  %4078 = fmul fast float %4075, %4022
  %4079 = fadd fast float %4076, 5.000000e-01
  %4080 = fadd fast float %4077, 5.000000e-01
  %4081 = fadd fast float %4078, 5.000000e-01
  %4082 = fmul fast float %4079, 2.000000e+00
  %4083 = fsub fast float 1.000000e+00, %4082
  %4084 = fmul fast float %4083, %4009
  %4085 = fadd fast float %4084, %4082
  %4086 = fmul fast float %4085, %4009
  %4087 = fmul fast float %4080, 2.000000e+00
  %4088 = fsub fast float 1.000000e+00, %4087
  %4089 = fmul fast float %4088, %4010
  %4090 = fadd fast float %4089, %4087
  %4091 = fmul fast float %4090, %4010
  %4092 = fmul fast float %4081, 2.000000e+00
  %4093 = fsub fast float 1.000000e+00, %4092
  %4094 = fmul fast float %4093, %4011
  %4095 = fadd fast float %4094, %4092
  %4096 = fmul fast float %4095, %4011
  br label %4097

; <label>:4097                                    ; preds = %4069, %4067, %4054, %4024, %4008
  %4098 = phi float [ %4009, %4008 ], [ %4086, %4069 ], [ %4009, %4067 ], [ %4064, %4054 ], [ %4034, %4024 ]
  %4099 = phi float [ %4010, %4008 ], [ %4091, %4069 ], [ %4010, %4067 ], [ %4065, %4054 ], [ %4035, %4024 ]
  %4100 = phi float [ %4011, %4008 ], [ %4096, %4069 ], [ %4011, %4067 ], [ %4066, %4054 ], [ %4036, %4024 ]
  %4101 = phi float [ %4012, %4008 ], [ %4012, %4069 ], [ %4012, %4067 ], [ %4012, %4054 ], [ %4046, %4024 ]
  %4102 = phi float [ %4013, %4008 ], [ %4013, %4069 ], [ %4013, %4067 ], [ %4013, %4054 ], [ %4047, %4024 ]
  %4103 = phi float [ %4014, %4008 ], [ %4014, %4069 ], [ %4014, %4067 ], [ %4014, %4054 ], [ %4048, %4024 ]
  %4104 = phi float [ %3223, %4008 ], [ %3223, %4069 ], [ %3223, %4067 ], [ %3223, %4054 ], [ %4039, %4024 ]
  %4105 = phi float [ %3227, %4008 ], [ %3227, %4069 ], [ %3227, %4067 ], [ %3227, %4054 ], [ %4051, %4024 ]
  %4106 = and i32 %4016, 12
  %4107 = icmp eq i32 %4106, 12
  br i1 %4107, label %4214, label %4108

; <label>:4108                                    ; preds = %4097
  %4109 = and i32 %4016, 2097184
  %4110 = icmp eq i32 %4109, 2097184
  %4111 = select i1 %4110, float %3525, float 0.000000e+00
  %4112 = and i32 %4016, 4194336
  %4113 = icmp eq i32 %4112, 4194336
  %4114 = select i1 %4113, float %3525, float 0.000000e+00
  %4115 = and i32 %4016, 8388640
  %4116 = icmp eq i32 %4115, 8388640
  %4117 = select i1 %4116, float %3525, float 0.000000e+00
  %4118 = and i32 %4016, 1024
  %4119 = icmp ne i32 %4118, 0
  %4120 = select i1 %4119, float %3525, float 0.000000e+00
  %4121 = and i32 %4016, 2048
  %4122 = icmp ne i32 %4121, 0
  %4123 = select i1 %4122, float %3525, float 0.000000e+00
  %4124 = icmp eq i32 %4106, 0
  br i1 %4124, label %4125, label %4150

; <label>:4125                                    ; preds = %4108
  %4126 = fsub fast float %3826, %3212
  %4127 = fsub fast float %3827, %3213
  %4128 = fmul fast float %4111, %4126
  %4129 = fmul fast float %4111, %4127
  %4130 = fadd fast float %4128, %3212
  %4131 = fadd fast float %4129, %3213
  %4132 = fsub fast float %3828, %3225
  %4133 = fmul fast float %4114, %4132
  %4134 = fadd fast float %4133, %3225
  %4135 = fsub fast float %3825, %3224
  %4136 = fmul fast float %4117, %4135
  %4137 = fadd fast float %4136, %3224
  %4138 = fsub fast float %3931, %3220
  %4139 = fsub fast float %3932, %3221
  %4140 = fsub fast float %3933, %3222
  %4141 = fmul fast float %4120, %4138
  %4142 = fmul fast float %4120, %4139
  %4143 = fmul fast float %4120, %4140
  %4144 = fadd fast float %4141, %3220
  %4145 = fadd fast float %4142, %3221
  %4146 = fadd fast float %4143, %3222
  %4147 = fsub fast float %3959, %3226
  %4148 = fmul fast float %4123, %4147
  %4149 = fadd fast float %4148, %3226
  br label %4214

; <label>:4150                                    ; preds = %4108
  %4151 = icmp eq i32 %4106, 4
  br i1 %4151, label %4152, label %4192

; <label>:4152                                    ; preds = %4150
  %4153 = fmul fast float %4111, %3826
  %4154 = fmul fast float %4111, %3827
  %4155 = fadd fast float %4153, %3212
  %4156 = fadd fast float %4154, %3213
  %4157 = call float @dx.op.binary.f32(i32 36, float %3225, float %3828)  ; FMin(a,b)
  %4158 = fsub fast float %4157, %3225
  %4159 = fmul fast float %4158, %4114
  %4160 = fadd fast float %4159, %3225
  %4161 = fadd fast float %3825, %3224
  %4162 = fmul fast float %4161, 0x3FF337FAE0000000
  %4163 = fmul fast float %3224, %3224
  %4164 = fmul fast float %3825, %3825
  %4165 = fadd fast float %4164, %4163
  %4166 = fmul fast float %4165, 0x3FE5152B00000000
  %4167 = fmul fast float %3224, 0xBFCC1F85E0000000
  %4168 = fmul fast float %4167, %3825
  %4169 = fadd fast float %4168, 0xBFE1363700000000
  %4170 = fadd fast float %4169, %4162
  %4171 = fsub fast float %4170, %4166
  %4172 = fmul fast float %4161, 0x3FBA6F0D00000000
  %4173 = fmul fast float %4165, 0x3FD0432880000000
  %4174 = fmul fast float %3224, 0xBFEF110800000000
  %4175 = fmul fast float %4174, %3825
  %4176 = fadd fast float %4175, 1.000000e+00
  %4177 = fsub fast float %4176, %4172
  %4178 = fadd fast float %4177, %4173
  %4179 = fdiv fast float %4171, %4178
  %4180 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4181 = fsub fast float %4180, %3224
  %4182 = fmul fast float %4181, %4117
  %4183 = fadd fast float %4182, %3224
  %4184 = fmul fast float %4120, %3931
  %4185 = fmul fast float %4120, %3932
  %4186 = fmul fast float %4120, %3933
  %4187 = fadd fast float %4184, %3220
  %4188 = fadd fast float %4185, %3221
  %4189 = fadd fast float %4186, %3222
  %4190 = fmul fast float %4123, %3959
  %4191 = fadd fast float %4190, %3226
  br label %4214

; <label>:4192                                    ; preds = %4150
  %4193 = icmp eq i32 %4106, 8
  br i1 %4193, label %4194, label %4214

; <label>:4194                                    ; preds = %4192
  %4195 = fmul fast float %4111, %3826
  %4196 = fmul fast float %4111, %3827
  %4197 = fadd fast float %4195, %3212
  %4198 = fadd fast float %4196, %3213
  %4199 = call float @dx.op.binary.f32(i32 36, float %3225, float %3828)  ; FMin(a,b)
  %4200 = fsub fast float %4199, %3225
  %4201 = fmul fast float %4200, %4114
  %4202 = fadd fast float %4201, %3225
  %4203 = fsub fast float %3825, %3224
  %4204 = fmul fast float %4117, %4203
  %4205 = fadd fast float %4204, %3224
  %4206 = fmul fast float %4120, %3931
  %4207 = fmul fast float %4120, %3932
  %4208 = fmul fast float %4120, %3933
  %4209 = fadd fast float %4206, %3220
  %4210 = fadd fast float %4207, %3221
  %4211 = fadd fast float %4208, %3222
  %4212 = fmul fast float %4123, %3959
  %4213 = fadd fast float %4212, %3226
  br label %4214

; <label>:4214                                    ; preds = %4194, %4192, %4152, %4125, %4097, %3524, %3228, %3211
  %4215 = phi float [ %3212, %4097 ], [ %3212, %3524 ], [ %3212, %3211 ], [ %3212, %3228 ], [ %4130, %4125 ], [ %4155, %4152 ], [ %3212, %4192 ], [ %4197, %4194 ]
  %4216 = phi float [ %3213, %4097 ], [ %3213, %3524 ], [ %3213, %3211 ], [ %3213, %3228 ], [ %4131, %4125 ], [ %4156, %4152 ], [ %3213, %4192 ], [ %4198, %4194 ]
  %4217 = phi float [ %4098, %4097 ], [ %3214, %3524 ], [ %3214, %3211 ], [ %3214, %3228 ], [ %4098, %4125 ], [ %4098, %4152 ], [ %4098, %4192 ], [ %4098, %4194 ]
  %4218 = phi float [ %4099, %4097 ], [ %3215, %3524 ], [ %3215, %3211 ], [ %3215, %3228 ], [ %4099, %4125 ], [ %4099, %4152 ], [ %4099, %4192 ], [ %4099, %4194 ]
  %4219 = phi float [ %4100, %4097 ], [ %3216, %3524 ], [ %3216, %3211 ], [ %3216, %3228 ], [ %4100, %4125 ], [ %4100, %4152 ], [ %4100, %4192 ], [ %4100, %4194 ]
  %4220 = phi float [ %4101, %4097 ], [ %3217, %3524 ], [ %3217, %3211 ], [ %3217, %3228 ], [ %4101, %4125 ], [ %4101, %4152 ], [ %4101, %4192 ], [ %4101, %4194 ]
  %4221 = phi float [ %4102, %4097 ], [ %3218, %3524 ], [ %3218, %3211 ], [ %3218, %3228 ], [ %4102, %4125 ], [ %4102, %4152 ], [ %4102, %4192 ], [ %4102, %4194 ]
  %4222 = phi float [ %4103, %4097 ], [ %3219, %3524 ], [ %3219, %3211 ], [ %3219, %3228 ], [ %4103, %4125 ], [ %4103, %4152 ], [ %4103, %4192 ], [ %4103, %4194 ]
  %4223 = phi float [ %3220, %4097 ], [ %3220, %3524 ], [ %3220, %3211 ], [ %3220, %3228 ], [ %4144, %4125 ], [ %4187, %4152 ], [ %3220, %4192 ], [ %4209, %4194 ]
  %4224 = phi float [ %3221, %4097 ], [ %3221, %3524 ], [ %3221, %3211 ], [ %3221, %3228 ], [ %4145, %4125 ], [ %4188, %4152 ], [ %3221, %4192 ], [ %4210, %4194 ]
  %4225 = phi float [ %3222, %4097 ], [ %3222, %3524 ], [ %3222, %3211 ], [ %3222, %3228 ], [ %4146, %4125 ], [ %4189, %4152 ], [ %3222, %4192 ], [ %4211, %4194 ]
  %4226 = phi float [ %4104, %4097 ], [ %3223, %3524 ], [ %3223, %3211 ], [ %3223, %3228 ], [ %4104, %4125 ], [ %4104, %4152 ], [ %4104, %4192 ], [ %4104, %4194 ]
  %4227 = phi float [ %3224, %4097 ], [ %3224, %3524 ], [ %3224, %3211 ], [ %3224, %3228 ], [ %4137, %4125 ], [ %4183, %4152 ], [ %3224, %4192 ], [ %4205, %4194 ]
  %4228 = phi float [ %3225, %4097 ], [ %3225, %3524 ], [ %3225, %3211 ], [ %3225, %3228 ], [ %4134, %4125 ], [ %4160, %4152 ], [ %3225, %4192 ], [ %4202, %4194 ]
  %4229 = phi float [ %3226, %4097 ], [ %3226, %3524 ], [ %3226, %3211 ], [ %3226, %3228 ], [ %4149, %4125 ], [ %4191, %4152 ], [ %3226, %4192 ], [ %4213, %4194 ]
  %4230 = phi float [ %4105, %4097 ], [ %3227, %3524 ], [ %3227, %3211 ], [ %3227, %3228 ], [ %4105, %4125 ], [ %4105, %4152 ], [ %4105, %4192 ], [ %4105, %4194 ]
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 0
  %4233 = call float @dx.op.dot2.f32(i32 54, float %4215, float %4216, float %4215, float %4216)  ; Dot2(ax,ay,bx,by)
  %4234 = fmul fast float %4233, 0x3FE3333340000000
  %4235 = fsub fast float 1.000000e+00, %4234
  %4236 = call float @dx.op.dot3.f32(i32 55, float %4215, float %4216, float %4235, float %4215, float %4216, float %4235)  ; Dot3(ax,ay,az,bx,by,bz)
  %4237 = call float @dx.op.unary.f32(i32 25, float %4236)  ; Rsqrt(value)
  %4238 = fmul fast float %4237, %4215
  %4239 = fmul fast float %4237, %4216
  %4240 = fmul fast float %4235, %4237
  %4241 = fmul fast float %4240, %100
  %4242 = fmul fast float %4240, %101
  %4243 = fmul fast float %4240, %102
  %4244 = fmul fast float %4238, %65
  %4245 = fmul fast float %4238, %66
  %4246 = fmul fast float %4238, %67
  %4247 = fadd fast float %4241, %4244
  %4248 = fadd fast float %4242, %4245
  %4249 = fadd fast float %4243, %4246
  %4250 = fmul fast float %112, %4239
  %4251 = fmul fast float %113, %4239
  %4252 = fmul fast float %114, %4239
  %4253 = fadd fast float %4247, %4250
  %4254 = fadd fast float %4248, %4251
  %4255 = fadd fast float %4249, %4252
  %4256 = call float @dx.op.dot3.f32(i32 55, float %4253, float %4254, float %4255, float %4253, float %4254, float %4255)  ; Dot3(ax,ay,az,bx,by,bz)
  %4257 = call float @dx.op.unary.f32(i32 25, float %4256)  ; Rsqrt(value)
  %4258 = fmul fast float %4253, %4257
  %4259 = fmul fast float %4254, %4257
  %4260 = fmul fast float %4255, %4257
  %4261 = and i32 %51, 1
  %4262 = icmp eq i32 %4261, 0
  br i1 %4262, label %4263, label %4802

; <label>:4263                                    ; preds = %4214
  %4264 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %4265 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %4266 = call float @dx.op.unary.f32(i32 83, float %158)  ; DerivCoarseX(value)
  %4267 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %4268 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %4269 = call float @dx.op.unary.f32(i32 84, float %158)  ; DerivCoarseY(value)
  %4270 = fadd fast float %4264, %156
  %4271 = fadd fast float %4265, %157
  %4272 = fadd fast float %4266, %158
  %4273 = fadd fast float %4267, %156
  %4274 = fadd fast float %4268, %157
  %4275 = fadd fast float %4269, %158
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 0
  %4278 = extractvalue %dx.types.CBufRet.f32 %4276, 1
  %4279 = extractvalue %dx.types.CBufRet.f32 %4276, 2
  %4280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4280, 2
  %4282 = extractvalue %dx.types.CBufRet.f32 %4280, 3
  %4283 = fmul fast float %4277, %93
  %4284 = fmul fast float %4283, %4281
  %4285 = fmul fast float %4278, %94
  %4286 = fmul fast float %4285, %4282
  %4287 = fptoui float %4284 to i32
  %4288 = fptoui float %4286 to i32
  %4289 = fadd fast float %4277, -1.000000e+00
  %4290 = fadd fast float %4278, -1.000000e+00
  %4291 = fptoui float %4289 to i32
  %4292 = fptoui float %4290 to i32
  %4293 = call i32 @dx.op.binary.i32(i32 40, i32 %4287, i32 %4291)  ; UMin(a,b)
  %4294 = call i32 @dx.op.binary.i32(i32 40, i32 %4288, i32 %4292)  ; UMin(a,b)
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 2
  %4297 = extractvalue %dx.types.CBufRet.f32 %4295, 3
  %4298 = fmul fast float %4296, %81
  %4299 = fsub fast float %4298, %4297
  %4300 = fadd fast float %4279, -1.000000e+00
  %4301 = call float @dx.op.binary.f32(i32 36, float %4299, float %4300)  ; FMin(a,b)
  %4302 = fptoui float %4301 to i32
  %4303 = fptoui float %4277 to i32
  %4304 = fptoui float %4278 to i32
  %4305 = mul i32 %4302, %4304
  %4306 = add i32 %4305, %4294
  %4307 = mul i32 %4306, %4303
  %4308 = add i32 %4307, %4293
  %4309 = shl i32 %4308, 2
  %4310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4309, i32 undef)  ; BufferLoad(srv,index,wot)
  %4311 = extractvalue %dx.types.ResRet.i32 %4310, 0
  %4312 = and i32 %4311, 1023
  %4313 = lshr i32 %4311, 10
  %4314 = icmp eq i32 %4312, 0
  br i1 %4314, label %4768, label %4315

; <label>:4315                                    ; preds = %4263
  %4316 = and i32 %4311, 1023
  br label %4317

; <label>:4317                                    ; preds = %4446, %4315
  %4318 = phi i32 [ %4396, %4446 ], [ 0, %4315 ]
  %4319 = phi float [ %4447, %4446 ], [ 0.000000e+00, %4315 ]
  %4320 = phi float [ %4448, %4446 ], [ %4232, %4315 ]
  %4321 = phi float [ %4449, %4446 ], [ %4230, %4315 ]
  %4322 = phi float [ %4450, %4446 ], [ %4223, %4315 ]
  %4323 = phi float [ %4451, %4446 ], [ %4224, %4315 ]
  %4324 = phi float [ %4452, %4446 ], [ %4225, %4315 ]
  %4325 = phi float [ %4453, %4446 ], [ 0.000000e+00, %4315 ]
  %4326 = phi float [ %4454, %4446 ], [ 0.000000e+00, %4315 ]
  %4327 = phi float [ %4455, %4446 ], [ %4220, %4315 ]
  %4328 = phi float [ %4456, %4446 ], [ %4221, %4315 ]
  %4329 = phi float [ %4457, %4446 ], [ %4222, %4315 ]
  %4330 = phi float [ %4458, %4446 ], [ %4258, %4315 ]
  %4331 = phi float [ %4459, %4446 ], [ %4259, %4315 ]
  %4332 = phi float [ %4460, %4446 ], [ %4260, %4315 ]
  %4333 = phi float [ %4461, %4446 ], [ %4228, %4315 ]
  %4334 = phi float [ %4462, %4446 ], [ %4227, %4315 ]
  %4335 = phi float [ %4463, %4446 ], [ 0.000000e+00, %4315 ]
  %4336 = phi float [ %4464, %4446 ], [ %4226, %4315 ]
  %4337 = phi float [ %4465, %4446 ], [ %4217, %4315 ]
  %4338 = phi float [ %4466, %4446 ], [ %4218, %4315 ]
  %4339 = phi float [ %4467, %4446 ], [ %4219, %4315 ]
  %4340 = add nuw nsw i32 %4318, %4313
  %4341 = shl i32 %4340, 2
  %4342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4341, i32 undef)  ; BufferLoad(srv,index,wot)
  %4343 = extractvalue %dx.types.ResRet.i32 %4342, 0
  %4344 = shl i32 %4343, 8
  %4345 = or i32 %4344, 48
  %4346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = extractvalue %dx.types.ResRet.f32 %4346, 1
  %4349 = extractvalue %dx.types.ResRet.f32 %4346, 2
  %4350 = extractvalue %dx.types.ResRet.f32 %4346, 3
  %4351 = or i32 %4344, 64
  %4352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4353 = extractvalue %dx.types.ResRet.i32 %4352, 0
  %4354 = extractvalue %dx.types.ResRet.i32 %4352, 1
  %4355 = or i32 %4344, 80
  %4356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4355, i32 undef)  ; BufferLoad(srv,index,wot)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 2
  %4358 = extractvalue %dx.types.ResRet.f32 %4356, 3
  %4359 = or i32 %4344, 96
  %4360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4359, i32 undef)  ; BufferLoad(srv,index,wot)
  %4361 = extractvalue %dx.types.ResRet.f32 %4360, 0
  %4362 = extractvalue %dx.types.ResRet.f32 %4360, 1
  %4363 = extractvalue %dx.types.ResRet.f32 %4360, 2
  %4364 = extractvalue %dx.types.ResRet.f32 %4360, 3
  %4365 = or i32 %4344, 112
  %4366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 2
  %4368 = or i32 %4344, 128
  %4369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4370 = extractvalue %dx.types.ResRet.f32 %4369, 0
  %4371 = extractvalue %dx.types.ResRet.f32 %4369, 1
  %4372 = extractvalue %dx.types.ResRet.f32 %4369, 2
  %4373 = extractvalue %dx.types.ResRet.f32 %4369, 3
  %4374 = or i32 %4344, 144
  %4375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.ResRet.f32 %4375, 1
  %4378 = extractvalue %dx.types.ResRet.f32 %4375, 2
  %4379 = extractvalue %dx.types.ResRet.f32 %4375, 3
  %4380 = or i32 %4344, 160
  %4381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4382 = extractvalue %dx.types.ResRet.f32 %4381, 0
  %4383 = extractvalue %dx.types.ResRet.f32 %4381, 1
  %4384 = extractvalue %dx.types.ResRet.f32 %4381, 2
  %4385 = extractvalue %dx.types.ResRet.f32 %4381, 3
  %4386 = or i32 %4344, 192
  %4387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4386, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.i32 %4387, 0
  %4389 = or i32 %4344, 208
  %4390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = or i32 %4344, 248
  %4393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4392, i32 undef)  ; BufferLoad(srv,index,wot)
  %4394 = extractvalue %dx.types.ResRet.f32 %4393, 0
  %4395 = extractvalue %dx.types.ResRet.f32 %4393, 1
  %4396 = add nuw nsw i32 %4318, 1
  %4397 = bitcast float %4350 to i32
  %4398 = and i32 %4397, 512
  %4399 = icmp eq i32 %4398, 0
  %4400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4401 = extractvalue %dx.types.ResRet.f32 %4400, 0
  %4402 = extractvalue %dx.types.ResRet.f32 %4400, 1
  %4403 = extractvalue %dx.types.ResRet.f32 %4400, 2
  %4404 = extractvalue %dx.types.ResRet.f32 %4400, 3
  %4405 = call float @dx.op.dot4.f32(i32 56, float %4401, float %4402, float %4403, float %4404, float %156, float %157, float %158, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4406 = or i32 %4344, 16
  %4407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4406, i32 undef)  ; BufferLoad(srv,index,wot)
  %4408 = extractvalue %dx.types.ResRet.f32 %4407, 0
  %4409 = extractvalue %dx.types.ResRet.f32 %4407, 1
  %4410 = extractvalue %dx.types.ResRet.f32 %4407, 2
  %4411 = extractvalue %dx.types.ResRet.f32 %4407, 3
  %4412 = call float @dx.op.dot4.f32(i32 56, float %4408, float %4409, float %4410, float %4411, float %156, float %157, float %158, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4413 = or i32 %4344, 32
  %4414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %4413, i32 undef)  ; BufferLoad(srv,index,wot)
  %4415 = extractvalue %dx.types.ResRet.f32 %4414, 0
  %4416 = extractvalue %dx.types.ResRet.f32 %4414, 1
  %4417 = extractvalue %dx.types.ResRet.f32 %4414, 2
  %4418 = extractvalue %dx.types.ResRet.f32 %4414, 3
  %4419 = call float @dx.op.dot4.f32(i32 56, float %4415, float %4416, float %4417, float %4418, float %156, float %157, float %158, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4420 = call float @dx.op.unary.f32(i32 27, float %4405)  ; Round_ni(value)
  %4421 = call float @dx.op.unary.f32(i32 6, float %4420)  ; FAbs(value)
  %4422 = call float @dx.op.unary.f32(i32 27, float %4412)  ; Round_ni(value)
  %4423 = call float @dx.op.unary.f32(i32 6, float %4422)  ; FAbs(value)
  %4424 = call float @dx.op.unary.f32(i32 6, float %4419)  ; FAbs(value)
  %4425 = call float @dx.op.unary.f32(i32 27, float %4424)  ; Round_ni(value)
  %4426 = fadd fast float %4423, %4421
  %4427 = fadd fast float %4426, %4425
  %4428 = fcmp fast oeq float %4427, 0.000000e+00
  %4429 = call float @dx.op.dot4.f32(i32 56, float %4401, float %4402, float %4403, float %4404, float %4270, float %4271, float %4272, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4430 = call float @dx.op.dot4.f32(i32 56, float %4408, float %4409, float %4410, float %4411, float %4270, float %4271, float %4272, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4431 = call float @dx.op.dot4.f32(i32 56, float %4401, float %4402, float %4403, float %4404, float %4273, float %4274, float %4275, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4432 = call float @dx.op.dot4.f32(i32 56, float %4408, float %4409, float %4410, float %4411, float %4273, float %4274, float %4275, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4433 = fsub fast float %4429, %4405
  %4434 = fsub fast float %4431, %4405
  %4435 = fsub fast float %4430, %4412
  %4436 = fsub fast float %4432, %4412
  %4437 = call float @dx.op.dot3.f32(i32 55, float %4347, float %4348, float %4349, float %100, float %101, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 2
  %4440 = fadd fast float %4439, %4437
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = extractvalue %dx.types.CBufRet.f32 %4438, 0
  %4443 = fcmp fast ogt float %4441, %4442
  %4444 = and i1 %4428, %4443
  %4445 = and i1 %4399, %4444
  br i1 %4445, label %4469, label %4446

; <label>:4446                                    ; preds = %4754, %4550, %4469, %4317
  %4447 = phi float [ %4319, %4469 ], [ %4553, %4550 ], [ %4553, %4754 ], [ %4319, %4317 ]
  %4448 = phi float [ %4320, %4469 ], [ %4320, %4550 ], [ %4730, %4754 ], [ %4320, %4317 ]
  %4449 = phi float [ %4321, %4469 ], [ %4321, %4550 ], [ %4728, %4754 ], [ %4321, %4317 ]
  %4450 = phi float [ %4322, %4469 ], [ %4322, %4550 ], [ %4706, %4754 ], [ %4322, %4317 ]
  %4451 = phi float [ %4323, %4469 ], [ %4323, %4550 ], [ %4707, %4754 ], [ %4323, %4317 ]
  %4452 = phi float [ %4324, %4469 ], [ %4324, %4550 ], [ %4708, %4754 ], [ %4324, %4317 ]
  %4453 = phi float [ %4325, %4469 ], [ %4325, %4550 ], [ %4677, %4754 ], [ %4325, %4317 ]
  %4454 = phi float [ %4326, %4469 ], [ %4326, %4550 ], [ %4675, %4754 ], [ %4326, %4317 ]
  %4455 = phi float [ %4327, %4469 ], [ %4327, %4550 ], [ %4764, %4754 ], [ %4327, %4317 ]
  %4456 = phi float [ %4328, %4469 ], [ %4328, %4550 ], [ %4765, %4754 ], [ %4328, %4317 ]
  %4457 = phi float [ %4329, %4469 ], [ %4329, %4550 ], [ %4766, %4754 ], [ %4329, %4317 ]
  %4458 = phi float [ %4330, %4469 ], [ %4330, %4550 ], [ %4656, %4754 ], [ %4330, %4317 ]
  %4459 = phi float [ %4331, %4469 ], [ %4331, %4550 ], [ %4657, %4754 ], [ %4331, %4317 ]
  %4460 = phi float [ %4332, %4469 ], [ %4332, %4550 ], [ %4658, %4754 ], [ %4332, %4317 ]
  %4461 = phi float [ %4333, %4469 ], [ %4333, %4550 ], [ %4686, %4754 ], [ %4333, %4317 ]
  %4462 = phi float [ %4334, %4469 ], [ %4334, %4550 ], [ %4683, %4754 ], [ %4334, %4317 ]
  %4463 = phi float [ %4335, %4469 ], [ %4335, %4550 ], [ %4680, %4754 ], [ %4335, %4317 ]
  %4464 = phi float [ %4336, %4469 ], [ %4336, %4550 ], [ %4673, %4754 ], [ %4336, %4317 ]
  %4465 = phi float [ %4337, %4469 ], [ %4337, %4550 ], [ %4668, %4754 ], [ %4337, %4317 ]
  %4466 = phi float [ %4338, %4469 ], [ %4338, %4550 ], [ %4669, %4754 ], [ %4338, %4317 ]
  %4467 = phi float [ %4339, %4469 ], [ %4339, %4550 ], [ %4670, %4754 ], [ %4339, %4317 ]
  %4468 = icmp eq i32 %4396, %4316
  br i1 %4468, label %4767, label %4317

; <label>:4469                                    ; preds = %4317
  %4470 = extractvalue %dx.types.ResRet.f32 %4366, 3
  %4471 = extractvalue %dx.types.ResRet.f32 %4366, 1
  %4472 = extractvalue %dx.types.ResRet.f32 %4366, 0
  %4473 = extractvalue %dx.types.ResRet.f32 %4356, 1
  %4474 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4475 = extractvalue %dx.types.ResRet.i32 %4352, 3
  %4476 = extractvalue %dx.types.ResRet.i32 %4352, 2
  %4477 = add i32 %4475, 0
  %4478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4477, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4479 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4480 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4478, %dx.types.Handle %4479, float %4405, float %4412, float undef, float undef, i32 0, i32 0, i32 undef, float %4433, float %4435, float undef, float %4434, float %4436, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4481 = extractvalue %dx.types.ResRet.f32 %4480, 0
  %4482 = fmul fast float %4481, %4474
  %4483 = fadd fast float %4482, %4473
  %4484 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4485 = fmul fast float %4405, %4361
  %4486 = call float @dx.op.tertiary.f32(i32 46, float %4362, float %4412, float %4485)  ; FMad(a,b,c)
  %4487 = fadd fast float %4486, %4472
  %4488 = fmul fast float %4405, %4363
  %4489 = call float @dx.op.tertiary.f32(i32 46, float %4364, float %4412, float %4488)  ; FMad(a,b,c)
  %4490 = fadd fast float %4489, %4471
  %4491 = fmul fast float %4433, %4361
  %4492 = call float @dx.op.tertiary.f32(i32 46, float %4362, float %4435, float %4491)  ; FMad(a,b,c)
  %4493 = fmul fast float %4433, %4363
  %4494 = call float @dx.op.tertiary.f32(i32 46, float %4364, float %4435, float %4493)  ; FMad(a,b,c)
  %4495 = fmul fast float %4434, %4361
  %4496 = call float @dx.op.tertiary.f32(i32 46, float %4362, float %4436, float %4495)  ; FMad(a,b,c)
  %4497 = fmul fast float %4434, %4363
  %4498 = call float @dx.op.tertiary.f32(i32 46, float %4364, float %4436, float %4497)  ; FMad(a,b,c)
  %4499 = add i32 %4476, 0
  %4500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4499, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4501 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4500, %dx.types.Handle %4479, float %4487, float %4490, float undef, float undef, i32 0, i32 0, i32 undef, float %4492, float %4494, float undef, float %4496, float %4498, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = and i32 %4397, 1024
  %4504 = icmp ne i32 %4503, 0
  %4505 = fcmp fast ogt float %4502, 0x3FE0101020000000
  %4506 = uitofp i1 %4505 to float
  %4507 = select i1 %4504, float %4506, float %4502
  %4508 = and i32 %4397, 8192
  %4509 = icmp ne i32 %4508, 0
  %4510 = select i1 %4509, float %4470, float 1.000000e+00
  %4511 = fmul fast float %4405, 2.000000e+00
  %4512 = fadd fast float %4511, -1.000000e+00
  %4513 = call float @dx.op.unary.f32(i32 6, float %4512)  ; FAbs(value)
  %4514 = fmul fast float %4513, %4394
  %4515 = fsub fast float %4514, %4394
  %4516 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4517 = fmul fast float %4412, 2.000000e+00
  %4518 = fadd fast float %4517, -1.000000e+00
  %4519 = call float @dx.op.unary.f32(i32 6, float %4518)  ; FAbs(value)
  %4520 = fmul fast float %4519, %4395
  %4521 = fsub fast float %4520, %4395
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = fmul fast float %4424, %4357
  %4524 = fsub fast float %4523, %4357
  %4525 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4526 = fmul fast float %4484, %4510
  %4527 = fmul fast float %4526, %4481
  %4528 = fmul fast float %4527, %4516
  %4529 = fmul fast float %4528, %4507
  %4530 = fmul fast float %4529, %4522
  %4531 = fmul fast float %4530, %4525
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 1
  %4534 = extractvalue %dx.types.CBufRet.f32 %4532, 0
  %4535 = fsub fast float %4441, %4534
  %4536 = fmul fast float %4535, %4533
  %4537 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4538 = fmul fast float %4531, %4358
  %4539 = fadd fast float %4531, %4358
  %4540 = fmul fast float %4539, %4367
  %4541 = fsub fast float %4540, %4367
  %4542 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4543 = and i32 %4397, 128
  %4544 = icmp ne i32 %4543, 0
  %4545 = select i1 %4544, float %4542, float %4538
  %4546 = fmul fast float %4545, %4537
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 0
  %4549 = fcmp fast ugt float %4546, %4548
  br i1 %4549, label %4550, label %4446

; <label>:4550                                    ; preds = %4469
  %4551 = select i1 %4509, float %4546, float 0.000000e+00
  %4552 = fadd fast float %4551, %4319
  %4553 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  br i1 %4509, label %4446, label %4554

; <label>:4554                                    ; preds = %4550
  %4555 = and i32 %4397, 4
  %4556 = and i32 %4397, 8
  %4557 = add i32 %4353, 0
  %4558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4557, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4559 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4560 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4558, %dx.types.Handle %4559, float %4487, float %4490, float undef, float undef, i32 0, i32 0, i32 undef, float %4492, float %4494, float undef, float %4496, float %4498, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4561 = extractvalue %dx.types.ResRet.f32 %4560, 0
  %4562 = extractvalue %dx.types.ResRet.f32 %4560, 1
  %4563 = extractvalue %dx.types.ResRet.f32 %4560, 2
  %4564 = extractvalue %dx.types.ResRet.f32 %4560, 3
  %4565 = bitcast float %4379 to i32
  %4566 = and i32 %4565, 255
  %4567 = uitofp i32 %4566 to float
  %4568 = lshr i32 %4565, 8
  %4569 = and i32 %4568, 255
  %4570 = uitofp i32 %4569 to float
  %4571 = fmul fast float %4564, %4567
  %4572 = fadd fast float %4571, %4570
  %4573 = fmul fast float %4572, 0x3F70101000000000
  %4574 = add i32 %4354, 0
  %4575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4574, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4576 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4575, %dx.types.Handle %4559, float %4487, float %4490, float undef, float undef, i32 0, i32 0, i32 undef, float %4492, float %4494, float undef, float %4496, float %4498, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = extractvalue %dx.types.ResRet.f32 %4576, 1
  %4579 = extractvalue %dx.types.ResRet.f32 %4576, 2
  %4580 = extractvalue %dx.types.ResRet.f32 %4576, 3
  %4581 = bitcast float %4373 to i32
  %4582 = and i32 %4581, 255
  %4583 = uitofp i32 %4582 to float
  %4584 = lshr i32 %4581, 8
  %4585 = and i32 %4584, 255
  %4586 = uitofp i32 %4585 to float
  %4587 = lshr i32 %4581, 16
  %4588 = and i32 %4587, 255
  %4589 = uitofp i32 %4588 to float
  %4590 = fmul fast float %4589, 0x3F70101000000000
  %4591 = fmul fast float %4577, %4583
  %4592 = fadd fast float %4591, %4586
  %4593 = fmul fast float %4592, 0x3F70101000000000
  %4594 = fadd fast float %4578, -5.000000e-01
  %4595 = fadd fast float %4580, -5.000000e-01
  %4596 = fmul fast float %4594, %4590
  %4597 = fmul fast float %4595, %4590
  %4598 = fadd fast float %4596, 5.000000e-01
  %4599 = fadd fast float %4597, 5.000000e-01
  %4600 = fmul fast float %4561, %4382
  %4601 = fmul fast float %4562, %4383
  %4602 = fmul fast float %4563, %4384
  %4603 = fmul fast float %4598, 2.000000e+00
  %4604 = fadd fast float %4603, -1.000000e+00
  %4605 = fmul fast float %4599, 2.000000e+00
  %4606 = fadd fast float %4605, -1.000000e+00
  %4607 = fadd fast float %4604, %4606
  %4608 = fmul fast float %4607, 5.000000e-01
  %4609 = fsub fast float %4604, %4606
  %4610 = fmul fast float %4609, 5.000000e-01
  %4611 = call float @dx.op.unary.f32(i32 6, float %4608)  ; FAbs(value)
  %4612 = fsub fast float 1.000000e+00, %4611
  %4613 = call float @dx.op.unary.f32(i32 6, float %4610)  ; FAbs(value)
  %4614 = fsub fast float %4612, %4613
  %4615 = call float @dx.op.dot3.f32(i32 55, float %4608, float %4610, float %4614, float %4608, float %4610, float %4614)  ; Dot3(ax,ay,az,bx,by,bz)
  %4616 = call float @dx.op.unary.f32(i32 25, float %4615)  ; Rsqrt(value)
  %4617 = fmul fast float %4608, %4616
  %4618 = fmul fast float %4610, %4616
  %4619 = fmul fast float %4616, %4614
  %4620 = fmul fast float %4619, %4347
  %4621 = fmul fast float %4619, %4348
  %4622 = fmul fast float %4619, %4349
  %4623 = fmul fast float %4617, %4370
  %4624 = fmul fast float %4617, %4371
  %4625 = fmul fast float %4617, %4372
  %4626 = fadd fast float %4623, %4620
  %4627 = fadd fast float %4624, %4621
  %4628 = fadd fast float %4625, %4622
  %4629 = fmul fast float %4618, %4376
  %4630 = fmul fast float %4618, %4377
  %4631 = fmul fast float %4618, %4378
  %4632 = fadd fast float %4626, %4629
  %4633 = fadd fast float %4627, %4630
  %4634 = fadd fast float %4628, %4631
  %4635 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4633, float %4634, float %4632, float %4633, float %4634)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = call float @dx.op.unary.f32(i32 25, float %4635)  ; Rsqrt(value)
  %4637 = fmul fast float %4632, %4636
  %4638 = fmul fast float %4633, %4636
  %4639 = fmul fast float %4634, %4636
  %4640 = icmp ne i32 %4556, 0
  %4641 = select i1 %4640, float 1.000000e+00, float 0.000000e+00
  %4642 = fmul fast float %4546, %4641
  %4643 = and i32 %4397, 1
  %4644 = icmp eq i32 %4643, 0
  br i1 %4644, label %4645, label %4649

; <label>:4645                                    ; preds = %4554
  %4646 = fsub fast float %4637, %4330
  %4647 = fsub fast float %4638, %4331
  %4648 = fsub fast float %4639, %4332
  br label %4649

; <label>:4649                                    ; preds = %4645, %4554
  %4650 = phi float [ %4646, %4645 ], [ %4637, %4554 ]
  %4651 = phi float [ %4647, %4645 ], [ %4638, %4554 ]
  %4652 = phi float [ %4648, %4645 ], [ %4639, %4554 ]
  %4653 = fmul float %4652, %4642
  %4654 = fmul float %4651, %4642
  %4655 = fmul float %4650, %4642
  %4656 = fadd fast float %4655, %4330
  %4657 = fadd fast float %4654, %4331
  %4658 = fadd fast float %4653, %4332
  %4659 = icmp ne i32 %4555, 0
  %4660 = select i1 %4659, float 1.000000e+00, float 0.000000e+00
  %4661 = fmul fast float %4546, %4660
  %4662 = fsub fast float %4600, %4337
  %4663 = fsub fast float %4601, %4338
  %4664 = fsub fast float %4602, %4339
  %4665 = fmul fast float %4662, %4661
  %4666 = fmul fast float %4663, %4661
  %4667 = fmul fast float %4664, %4661
  %4668 = fadd fast float %4665, %4337
  %4669 = fadd fast float %4666, %4338
  %4670 = fadd fast float %4667, %4339
  %4671 = fsub fast float %4573, %4336
  %4672 = fmul fast float %4671, %4661
  %4673 = fadd fast float %4672, %4336
  %4674 = fmul fast float %4661, %4326
  %4675 = fsub fast float %4326, %4674
  %4676 = fmul fast float %4661, %4325
  %4677 = fsub fast float %4325, %4676
  %4678 = bitcast float %4391 to i32
  %4679 = fadd fast float %4546, %4335
  %4680 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4681 = fsub fast float %4593, %4334
  %4682 = fmul fast float %4681, %4642
  %4683 = fadd fast float %4682, %4334
  %4684 = fsub fast float %4579, %4333
  %4685 = fmul fast float %4684, %4642
  %4686 = fadd fast float %4685, %4333
  br i1 %4644, label %4695, label %4687

; <label>:4687                                    ; preds = %4649
  %4688 = and i32 %4397, 32768
  %4689 = icmp eq i32 %4688, 0
  br i1 %4689, label %4705, label %4690

; <label>:4690                                    ; preds = %4687
  %4691 = fmul fast float %4642, 1.270000e+02
  %4692 = fadd fast float %4691, %4322
  %4693 = fadd fast float %4691, %4323
  %4694 = fadd fast float %4691, %4324
  br label %4705

; <label>:4695                                    ; preds = %4649
  %4696 = fsub fast float 1.270000e+02, %4322
  %4697 = fsub fast float 1.270000e+02, %4323
  %4698 = fsub fast float 1.270000e+02, %4324
  %4699 = fmul fast float %4642, %4696
  %4700 = fmul fast float %4642, %4697
  %4701 = fmul fast float %4642, %4698
  %4702 = fadd fast float %4699, %4322
  %4703 = fadd fast float %4700, %4323
  %4704 = fadd fast float %4701, %4324
  br label %4705

; <label>:4705                                    ; preds = %4695, %4690, %4687
  %4706 = phi float [ %4692, %4690 ], [ %4322, %4687 ], [ %4702, %4695 ]
  %4707 = phi float [ %4693, %4690 ], [ %4323, %4687 ], [ %4703, %4695 ]
  %4708 = phi float [ %4694, %4690 ], [ %4324, %4687 ], [ %4704, %4695 ]
  %4709 = call float @dx.op.dot3.f32(i32 55, float %4600, float %4601, float %4602, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4711 = extractvalue %dx.types.CBufRet.f32 %4710, 0
  %4712 = extractvalue %dx.types.CBufRet.f32 %4710, 1
  %4713 = fmul fast float %4712, %4709
  %4714 = fadd fast float %4713, %4711
  %4715 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4716 = bitcast float %4385 to i32
  %4717 = and i32 %4716, 65535
  %4718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4717)  ; LegacyF16ToF32(value)
  %4719 = lshr i32 %4716, 16
  %4720 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4719)  ; LegacyF16ToF32(value)
  %4721 = fcmp fast oge float %4718, 0.000000e+00
  %4722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.f32 %4722, 0
  %4724 = select i1 %4721, float %4718, float %4723
  %4725 = fadd fast float %4724, %4720
  %4726 = fsub fast float %4715, %4321
  %4727 = fmul fast float %4726, %4546
  %4728 = fadd fast float %4727, %4321
  %4729 = fmul fast float %4725, %4546
  %4730 = call float @dx.op.binary.f32(i32 35, float %4320, float %4729)  ; FMax(a,b)
  %4731 = and i32 %4397, 16
  %4732 = icmp eq i32 %4731, 0
  br i1 %4732, label %4754, label %4733

; <label>:4733                                    ; preds = %4705
  %4734 = add i32 %4388, 0
  %4735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4734, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4736 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4735, %dx.types.Handle %4559, float %4487, float %4490, float undef, float undef, i32 0, i32 0, i32 undef, float %4492, float %4494, float undef, float %4496, float %4498, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4737 = extractvalue %dx.types.ResRet.f32 %4736, 0
  %4738 = extractvalue %dx.types.ResRet.f32 %4736, 1
  %4739 = extractvalue %dx.types.ResRet.f32 %4736, 2
  %4740 = and i32 %4678, 65535
  %4741 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4740)  ; LegacyF16ToF32(value)
  %4742 = fmul fast float %4737, %4382
  %4743 = fmul fast float %4738, %4383
  %4744 = fmul fast float %4739, %4384
  %4745 = and i32 %4397, 16384
  %4746 = icmp ne i32 %4745, 0
  %4747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.f32 %4747, 0
  %4749 = select i1 %4746, float %4748, float 1.000000e+00
  %4750 = fmul fast float %4749, %4741
  %4751 = fmul fast float %4742, %4750
  %4752 = fmul fast float %4743, %4750
  %4753 = fmul fast float %4744, %4750
  br label %4754

; <label>:4754                                    ; preds = %4733, %4705
  %4755 = phi float [ %4751, %4733 ], [ 0.000000e+00, %4705 ]
  %4756 = phi float [ %4752, %4733 ], [ 0.000000e+00, %4705 ]
  %4757 = phi float [ %4753, %4733 ], [ 0.000000e+00, %4705 ]
  %4758 = fsub fast float %4755, %4327
  %4759 = fsub fast float %4756, %4328
  %4760 = fsub fast float %4757, %4329
  %4761 = fmul fast float %4758, %4546
  %4762 = fmul fast float %4759, %4546
  %4763 = fmul fast float %4760, %4546
  %4764 = fadd fast float %4761, %4327
  %4765 = fadd fast float %4762, %4328
  %4766 = fadd fast float %4763, %4329
  br label %4446

; <label>:4767                                    ; preds = %4446
  br label %4768

; <label>:4768                                    ; preds = %4767, %4263
  %4769 = phi float [ 0.000000e+00, %4263 ], [ %4447, %4767 ]
  %4770 = phi float [ %4232, %4263 ], [ %4448, %4767 ]
  %4771 = phi float [ %4230, %4263 ], [ %4449, %4767 ]
  %4772 = phi float [ %4223, %4263 ], [ %4450, %4767 ]
  %4773 = phi float [ %4224, %4263 ], [ %4451, %4767 ]
  %4774 = phi float [ %4225, %4263 ], [ %4452, %4767 ]
  %4775 = phi float [ 0.000000e+00, %4263 ], [ %4453, %4767 ]
  %4776 = phi float [ 0.000000e+00, %4263 ], [ %4454, %4767 ]
  %4777 = phi float [ %4220, %4263 ], [ %4455, %4767 ]
  %4778 = phi float [ %4221, %4263 ], [ %4456, %4767 ]
  %4779 = phi float [ %4222, %4263 ], [ %4457, %4767 ]
  %4780 = phi float [ %4258, %4263 ], [ %4458, %4767 ]
  %4781 = phi float [ %4259, %4263 ], [ %4459, %4767 ]
  %4782 = phi float [ %4260, %4263 ], [ %4460, %4767 ]
  %4783 = phi float [ %4228, %4263 ], [ %4461, %4767 ]
  %4784 = phi float [ %4227, %4263 ], [ %4462, %4767 ]
  %4785 = phi float [ 0.000000e+00, %4263 ], [ %4463, %4767 ]
  %4786 = phi float [ %4226, %4263 ], [ %4464, %4767 ]
  %4787 = phi float [ %4217, %4263 ], [ %4465, %4767 ]
  %4788 = phi float [ %4218, %4263 ], [ %4466, %4767 ]
  %4789 = phi float [ %4219, %4263 ], [ %4467, %4767 ]
  %4790 = call float @dx.op.dot3.f32(i32 55, float %4780, float %4781, float %4782, float %4780, float %4781, float %4782)  ; Dot3(ax,ay,az,bx,by,bz)
  %4791 = call float @dx.op.unary.f32(i32 25, float %4790)  ; Rsqrt(value)
  %4792 = fmul fast float %4791, %4780
  %4793 = fmul fast float %4791, %4781
  %4794 = fmul fast float %4791, %4782
  %4795 = fadd fast float %4785, %1217
  %4796 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4797 = call float @dx.op.dot3.f32(i32 55, float %4792, float %4793, float %4794, float %4792, float %4793, float %4794)  ; Dot3(ax,ay,az,bx,by,bz)
  %4798 = call float @dx.op.unary.f32(i32 25, float %4797)  ; Rsqrt(value)
  %4799 = fmul fast float %4798, %4792
  %4800 = fmul fast float %4798, %4793
  %4801 = fmul fast float %4798, %4794
  br label %4802

; <label>:4802                                    ; preds = %4768, %4214
  %4803 = phi float [ %4799, %4768 ], [ %4258, %4214 ]
  %4804 = phi float [ %4800, %4768 ], [ %4259, %4214 ]
  %4805 = phi float [ %4801, %4768 ], [ %4260, %4214 ]
  %4806 = phi float [ %4787, %4768 ], [ %4217, %4214 ]
  %4807 = phi float [ %4788, %4768 ], [ %4218, %4214 ]
  %4808 = phi float [ %4789, %4768 ], [ %4219, %4214 ]
  %4809 = phi float [ %4777, %4768 ], [ %4220, %4214 ]
  %4810 = phi float [ %4778, %4768 ], [ %4221, %4214 ]
  %4811 = phi float [ %4779, %4768 ], [ %4222, %4214 ]
  %4812 = phi float [ %4772, %4768 ], [ %4223, %4214 ]
  %4813 = phi float [ %4773, %4768 ], [ %4224, %4214 ]
  %4814 = phi float [ %4774, %4768 ], [ %4225, %4214 ]
  %4815 = phi float [ %4786, %4768 ], [ %4226, %4214 ]
  %4816 = phi float [ %4796, %4768 ], [ %1217, %4214 ]
  %4817 = phi float [ %4784, %4768 ], [ %4227, %4214 ]
  %4818 = phi float [ %4783, %4768 ], [ %4228, %4214 ]
  %4819 = phi float [ %4776, %4768 ], [ 0.000000e+00, %4214 ]
  %4820 = phi float [ %4775, %4768 ], [ 0.000000e+00, %4214 ]
  %4821 = phi float [ %4769, %4768 ], [ 0.000000e+00, %4214 ]
  %4822 = phi float [ %4770, %4768 ], [ %4232, %4214 ]
  %4823 = phi float [ %4771, %4768 ], [ %4230, %4214 ]
  %4824 = fadd fast float %4815, 0xBFB99999A0000000
  %4825 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4826 = fmul fast float %4825, 0x3FF1C71C80000000
  %4827 = call float @dx.op.binary.f32(i32 36, float %4815, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4828 = fsub fast float 1.000000e+00, %4826
  %4829 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4830 = fmul fast float %4829, %4806
  %4831 = fmul fast float %4829, %4807
  %4832 = fmul fast float %4829, %4808
  %4833 = call float @dx.op.unary.f32(i32 7, float %4830)  ; Saturate(value)
  %4834 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4835 = call float @dx.op.unary.f32(i32 7, float %4832)  ; Saturate(value)
  %4836 = fmul fast float %4826, %4806
  %4837 = fmul fast float %4826, %4807
  %4838 = fmul fast float %4826, %4808
  %4839 = fadd fast float %4836, %4827
  %4840 = fadd fast float %4837, %4827
  %4841 = fadd fast float %4838, %4827
  %4842 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4843 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4844 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4845 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4846 = call float @dx.op.binary.f32(i32 36, float %4812, float 1.270000e+02)  ; FMin(a,b)
  %4847 = call float @dx.op.binary.f32(i32 36, float %4813, float 1.270000e+02)  ; FMin(a,b)
  %4848 = call float @dx.op.binary.f32(i32 36, float %4814, float 1.270000e+02)  ; FMin(a,b)
  %4849 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.i32 %4849, 3
  %4851 = and i32 %4850, 8
  %4852 = icmp ne i32 %4851, 0
  %4853 = call float @dx.op.binary.f32(i32 35, float %4833, float %4806)  ; FMax(a,b)
  %4854 = call float @dx.op.binary.f32(i32 35, float %4834, float %4806)  ; FMax(a,b)
  %4855 = call float @dx.op.binary.f32(i32 35, float %4835, float %4806)  ; FMax(a,b)
  %4856 = call float @dx.op.dot3.f32(i32 55, float %4833, float %4834, float %4835, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4857 = select i1 %217, float %4806, float %4833
  %4858 = select i1 %217, float %4856, float %4834
  %4859 = select i1 %217, float 1.000000e+00, float %4835
  %4860 = select i1 %4852, float %4853, float %4857
  %4861 = select i1 %4852, float %4854, float %4858
  %4862 = select i1 %4852, float %4855, float %4859
  %4863 = and i32 %193, 3
  %4864 = select i1 %187, i32 %4863, i32 0
  %4865 = icmp eq i32 %4864, 1
  br i1 %4865, label %4866, label %4942

; <label>:4866                                    ; preds = %4802
  %4867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.f32 %4867, 0
  %4869 = extractvalue %dx.types.CBufRet.f32 %4867, 1
  %4870 = fadd fast float %4868, %156
  %4871 = fadd fast float %4869, %157
  %4872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.CBufRet.f32 %4872, 1
  %4875 = fsub fast float %4870, %4873
  %4876 = fsub fast float %4871, %4874
  %4877 = fmul fast float %4875, %4875
  %4878 = fmul fast float %4876, %4876
  %4879 = fadd fast float %4877, %4878
  %4880 = call float @dx.op.unary.f32(i32 24, float %4879)  ; Sqrt(value)
  %4881 = extractvalue %dx.types.CBufRet.f32 %4872, 2
  %4882 = fcmp fast olt float %4880, %4881
  br i1 %4882, label %4883, label %4936

; <label>:4883                                    ; preds = %4866
  %4884 = extractvalue %dx.types.CBufRet.f32 %4867, 2
  %4885 = fadd fast float %4884, %158
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 0
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 0
  %4890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4891 = extractvalue %dx.types.CBufRet.f32 %4890, 0
  %4892 = extractvalue %dx.types.CBufRet.f32 %4886, 1
  %4893 = extractvalue %dx.types.CBufRet.f32 %4888, 1
  %4894 = extractvalue %dx.types.CBufRet.f32 %4890, 1
  %4895 = extractvalue %dx.types.CBufRet.f32 %4886, 3
  %4896 = extractvalue %dx.types.CBufRet.f32 %4888, 3
  %4897 = extractvalue %dx.types.CBufRet.f32 %4890, 3
  %4898 = fadd fast float %4895, %4870
  %4899 = fadd fast float %4896, %4871
  %4900 = fadd fast float %4885, %4897
  %4901 = fmul fast float %4898, %4887
  %4902 = call float @dx.op.tertiary.f32(i32 46, float %4899, float %4889, float %4901)  ; FMad(a,b,c)
  %4903 = call float @dx.op.tertiary.f32(i32 46, float %4900, float %4891, float %4902)  ; FMad(a,b,c)
  %4904 = fmul fast float %4898, %4892
  %4905 = call float @dx.op.tertiary.f32(i32 46, float %4899, float %4893, float %4904)  ; FMad(a,b,c)
  %4906 = call float @dx.op.tertiary.f32(i32 46, float %4900, float %4894, float %4905)  ; FMad(a,b,c)
  %4907 = fsub fast float %4903, %4895
  %4908 = fsub fast float %4906, %4896
  %4909 = fsub fast float %4907, %4873
  %4910 = fadd fast float %4909, %4881
  %4911 = fsub fast float %4908, %4874
  %4912 = fadd fast float %4911, %4881
  %4913 = extractvalue %dx.types.CBufRet.f32 %4872, 3
  %4914 = fmul fast float %4910, %4913
  %4915 = fmul fast float %4912, %4913
  %4916 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4917 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4918 = fsub fast float 1.000000e+00, %4916
  %4919 = fsub fast float 1.000000e+00, %4917
  %4920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %43, float %4918, float %4919, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4921 = extractvalue %dx.types.ResRet.f32 %4920, 0
  %4922 = fcmp fast ugt float %4921, 0.000000e+00
  br i1 %4922, label %4923, label %4936

; <label>:4923                                    ; preds = %4883
  %4924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4925 = extractvalue %dx.types.CBufRet.f32 %4924, 2
  %4926 = fmul fast float %4925, %4921
  %4927 = extractvalue %dx.types.CBufRet.f32 %4924, 3
  %4928 = fadd fast float %4927, %4926
  %4929 = extractvalue %dx.types.CBufRet.f32 %4890, 2
  %4930 = fadd fast float %4928, %4897
  %4931 = fmul fast float %4903, %4891
  %4932 = call float @dx.op.tertiary.f32(i32 46, float %4906, float %4894, float %4931)  ; FMad(a,b,c)
  %4933 = call float @dx.op.tertiary.f32(i32 46, float %4930, float %4929, float %4932)  ; FMad(a,b,c)
  %4934 = fsub fast float %4933, %4897
  %4935 = fsub fast float %4934, %4884
  br label %4936

; <label>:4936                                    ; preds = %4923, %4883, %4866
  %4937 = phi i1 [ true, %4923 ], [ false, %4883 ], [ false, %4866 ]
  %4938 = phi float [ %4935, %4923 ], [ -1.310720e+05, %4883 ], [ -1.310720e+05, %4866 ]
  %4939 = fsub fast float %4938, %158
  %4940 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4941 = select i1 %4937, float %4940, float 1.000000e+00
  br label %4942

; <label>:4942                                    ; preds = %4936, %4802
  %4943 = phi float [ %4941, %4936 ], [ 0.000000e+00, %4802 ]
  %4944 = icmp eq i32 %4864, 3
  %4945 = select i1 %4944, float 1.000000e+00, float %4943
  %4946 = call float @dx.op.binary.f32(i32 35, float %4821, float %4945)  ; FMax(a,b)
  %4947 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4948 = fcmp fast une float %4947, 0.000000e+00
  br i1 %4948, label %4949, label %5119

; <label>:4949                                    ; preds = %4942
  %4950 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %4951 = call float @dx.op.unary.f32(i32 25, float %4950)  ; Rsqrt(value)
  %4952 = fmul fast float %156, %4951
  %4953 = fsub fast float -0.000000e+00, %4952
  %4954 = fmul fast float %157, %4951
  %4955 = fsub fast float -0.000000e+00, %4954
  %4956 = fmul fast float %158, %4951
  %4957 = fsub fast float -0.000000e+00, %4956
  %4958 = call float @dx.op.dot3.f32(i32 55, float %4953, float %4955, float %4957, float %100, float %101, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = fmul fast float %4947, 2.500000e+00
  %4960 = call float @dx.op.unary.f32(i32 7, float %4959)  ; Saturate(value)
  %4961 = fmul fast float %4947, 0x4013FFFFE0000000
  %4962 = fadd fast float %4961, 0xBFFFFFFFE0000000
  %4963 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  %4964 = fmul fast float %4947, 0x4004000020000000
  %4965 = fadd fast float %4964, 0xBFF8000040000000
  %4966 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4967 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4968 = fmul fast float %4824, 1.000000e+01
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = fmul fast float %4969, 2.000000e+00
  %4971 = fsub fast float 3.000000e+00, %4970
  %4972 = fmul fast float %4969, %4969
  %4973 = fmul fast float %4972, %4971
  %4974 = fsub fast float 1.000000e+00, %4973
  %4975 = fsub fast float 0x3FE3333340000000, %4845
  %4976 = fmul fast float %4975, 0x400AAAAAA0000000
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = fmul fast float %4974, %4977
  %4979 = fmul fast float %4860, 0x3FEA2B8620000000
  %4980 = fmul fast float %4861, 0x3FEA2B8620000000
  %4981 = fmul fast float %4862, 0x3FEA2B8620000000
  %4982 = fadd fast float %4979, 0x3FC81DFBA0000000
  %4983 = fmul fast float %4982, %4860
  %4984 = fadd fast float %4983, 0x3F910E6020000000
  %4985 = fadd fast float %4980, 0x3FC81DFBA0000000
  %4986 = fmul fast float %4985, %4861
  %4987 = fadd fast float %4986, 0x3F910E6020000000
  %4988 = fadd fast float %4981, 0x3FC81DFBA0000000
  %4989 = fmul fast float %4988, %4862
  %4990 = fadd fast float %4989, 0x3F910E6020000000
  %4991 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4992 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4994 = fsub fast float %4991, %4860
  %4995 = fsub fast float %4992, %4861
  %4996 = fsub fast float %4993, %4862
  %4997 = fmul fast float %4994, %4967
  %4998 = fmul fast float %4997, %4978
  %4999 = fmul fast float %4995, %4967
  %5000 = fmul fast float %4999, %4978
  %5001 = fmul fast float %4996, %4967
  %5002 = fmul fast float %5001, %4978
  %5003 = fadd fast float %4998, %4860
  %5004 = fadd fast float %5000, %4861
  %5005 = fadd fast float %5002, %4862
  %5006 = fmul fast float %4818, %4818
  %5007 = fmul fast float %5006, %5006
  %5008 = fadd fast float %4963, 1.000000e+00
  %5009 = fsub fast float %5008, %4978
  %5010 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5011 = call float @dx.op.dot3.f32(i32 55, float %100, float %101, float %102, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5012 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5013 = fsub fast float 1.000000e+00, %5007
  %5014 = call float @dx.op.binary.f32(i32 36, float %5010, float %5013)  ; FMin(a,b)
  %5015 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %5016 = call float @dx.op.binary.f32(i32 35, float %5014, float %5015)  ; FMax(a,b)
  %5017 = fadd fast float %5012, 0xBFE4CCCCC0000000
  %5018 = fmul fast float %5017, 0x4006DB6DA0000000
  %5019 = call float @dx.op.unary.f32(i32 7, float %5018)  ; Saturate(value)
  %5020 = fmul fast float %5019, 2.000000e+00
  %5021 = fsub fast float 3.000000e+00, %5020
  %5022 = bitcast float %4842 to i32
  %5023 = ashr i32 %5022, 1
  %5024 = add nsw i32 %5023, 532487669
  %5025 = bitcast i32 %5024 to float
  %5026 = fsub fast float 1.000000e+00, %5025
  %5027 = bitcast float %5026 to i32
  %5028 = sub nsw i32 2129859010, %5027
  %5029 = bitcast i32 %5028 to float
  %5030 = fmul fast float %5029, 2.000000e+00
  %5031 = bitcast float %4843 to i32
  %5032 = ashr i32 %5031, 1
  %5033 = add nsw i32 %5032, 532487669
  %5034 = bitcast i32 %5033 to float
  %5035 = fsub fast float 1.000000e+00, %5034
  %5036 = bitcast float %5035 to i32
  %5037 = sub nsw i32 2129859010, %5036
  %5038 = bitcast i32 %5037 to float
  %5039 = fmul fast float %5038, 2.000000e+00
  %5040 = bitcast float %4844 to i32
  %5041 = ashr i32 %5040, 1
  %5042 = add nsw i32 %5041, 532487669
  %5043 = bitcast i32 %5042 to float
  %5044 = fsub fast float 1.000000e+00, %5043
  %5045 = bitcast float %5044 to i32
  %5046 = sub nsw i32 2129859010, %5045
  %5047 = bitcast i32 %5046 to float
  %5048 = fmul fast float %5047, 2.000000e+00
  %5049 = fsub fast float 0x4002A9FBE0000000, %5030
  %5050 = fadd fast float %5030, 0x3FD54FDF00000000
  %5051 = bitcast float %5050 to i32
  %5052 = sub nsw i32 2129859010, %5051
  %5053 = bitcast i32 %5052 to float
  %5054 = fmul fast float %5053, %5049
  %5055 = fmul fast float %5054, %5054
  %5056 = fsub fast float 0x4002A9FBE0000000, %5039
  %5057 = fadd fast float %5039, 0x3FD54FDF00000000
  %5058 = bitcast float %5057 to i32
  %5059 = sub nsw i32 2129859010, %5058
  %5060 = bitcast i32 %5059 to float
  %5061 = fmul fast float %5060, %5056
  %5062 = fmul fast float %5061, %5061
  %5063 = fsub fast float 0x4002A9FBE0000000, %5048
  %5064 = fadd fast float %5048, 0x3FD54FDF00000000
  %5065 = bitcast float %5064 to i32
  %5066 = sub nsw i32 2129859010, %5065
  %5067 = bitcast i32 %5066 to float
  %5068 = fmul fast float %5067, %5063
  %5069 = fmul fast float %5068, %5068
  %5070 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5055)  ; FMax(a,b)
  %5071 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5062)  ; FMax(a,b)
  %5072 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5069)  ; FMax(a,b)
  %5073 = fsub fast float 1.000000e+00, %4958
  %5074 = fadd fast float %5073, %4974
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fsub fast float 1.000000e+00, %4945
  %5077 = fmul fast float %5016, %5076
  %5078 = fmul fast float %5019, %5019
  %5079 = fmul fast float %5078, %5077
  %5080 = fmul fast float %5079, %5021
  %5081 = fmul fast float %5076, 0xBFE99999A0000000
  %5082 = fmul fast float %5081, %4967
  %5083 = fmul fast float %5082, %4978
  %5084 = fadd fast float %5083, 1.000000e+00
  %5085 = fadd fast float %4845, -1.000000e+00
  %5086 = fmul fast float %5084, %5085
  %5087 = fadd fast float %5086, 1.000000e+00
  %5088 = fsub fast float %5070, %4842
  %5089 = fsub fast float %5071, %4843
  %5090 = fsub fast float %5072, %4844
  %5091 = fmul fast float %5080, %5088
  %5092 = fmul fast float %5080, %5089
  %5093 = fmul fast float %5080, %5090
  %5094 = fadd fast float %5091, %4842
  %5095 = fadd fast float %5092, %4843
  %5096 = fadd fast float %5093, %4844
  %5097 = fsub fast float %100, %4803
  %5098 = fsub fast float %101, %4804
  %5099 = fsub fast float %102, %4805
  %5100 = fmul fast float %5080, %5097
  %5101 = fmul fast float %5080, %5098
  %5102 = fmul fast float %5080, %5099
  %5103 = fadd fast float %5100, %4803
  %5104 = fadd fast float %5101, %4804
  %5105 = fadd fast float %5102, %4805
  %5106 = fmul fast float %5080, %5075
  %5107 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5108 = fsub fast float 1.000000e+00, %5107
  %5109 = fmul fast float %5106, %5108
  %5110 = fadd fast float %5109, %5107
  %5111 = fsub fast float 1.000000e+00, %4818
  %5112 = fmul fast float %5080, %5111
  %5113 = fadd fast float %5112, %4818
  %5114 = call float @dx.op.dot3.f32(i32 55, float %5103, float %5104, float %5105, float %5103, float %5104, float %5105)  ; Dot3(ax,ay,az,bx,by,bz)
  %5115 = call float @dx.op.unary.f32(i32 25, float %5114)  ; Rsqrt(value)
  %5116 = fmul fast float %5103, %5115
  %5117 = fmul fast float %5104, %5115
  %5118 = fmul fast float %5105, %5115
  br label %5119

; <label>:5119                                    ; preds = %4949, %4942
  %5120 = phi float [ %5003, %4949 ], [ %4860, %4942 ]
  %5121 = phi float [ %5004, %4949 ], [ %4861, %4942 ]
  %5122 = phi float [ %5005, %4949 ], [ %4862, %4942 ]
  %5123 = phi float [ %5094, %4949 ], [ %4842, %4942 ]
  %5124 = phi float [ %5095, %4949 ], [ %4843, %4942 ]
  %5125 = phi float [ %5096, %4949 ], [ %4844, %4942 ]
  %5126 = phi float [ %5116, %4949 ], [ %4803, %4942 ]
  %5127 = phi float [ %5117, %4949 ], [ %4804, %4942 ]
  %5128 = phi float [ %5118, %4949 ], [ %4805, %4942 ]
  %5129 = phi float [ %5110, %4949 ], [ %4845, %4942 ]
  %5130 = phi float [ %5113, %4949 ], [ %4818, %4942 ]
  %5131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.f32 %5131, 0
  %5133 = extractvalue %dx.types.CBufRet.f32 %5131, 1
  %5134 = fmul fast float %5132, 5.000000e-01
  %5135 = fmul fast float %5133, 5.000000e-01
  %5136 = extractvalue %dx.types.CBufRet.f32 %5131, 2
  %5137 = extractvalue %dx.types.CBufRet.f32 %5131, 3
  %5138 = fmul fast float %5136, 2.000000e+00
  %5139 = fmul fast float %5137, 2.000000e+00
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5143 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5144, 0
  %5146 = extractvalue %dx.types.CBufRet.f32 %5144, 1
  %5147 = extractvalue %dx.types.CBufRet.f32 %5144, 2
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 0
  %5150 = extractvalue %dx.types.CBufRet.f32 %5148, 1
  %5151 = extractvalue %dx.types.CBufRet.f32 %5148, 2
  %5152 = fmul fast float %5141, %100
  %5153 = call float @dx.op.tertiary.f32(i32 46, float %101, float %5142, float %5152)  ; FMad(a,b,c)
  %5154 = call float @dx.op.tertiary.f32(i32 46, float %102, float %5143, float %5153)  ; FMad(a,b,c)
  %5155 = fmul fast float %5145, %100
  %5156 = call float @dx.op.tertiary.f32(i32 46, float %101, float %5146, float %5155)  ; FMad(a,b,c)
  %5157 = call float @dx.op.tertiary.f32(i32 46, float %102, float %5147, float %5156)  ; FMad(a,b,c)
  %5158 = fmul fast float %5149, %100
  %5159 = call float @dx.op.tertiary.f32(i32 46, float %101, float %5150, float %5158)  ; FMad(a,b,c)
  %5160 = call float @dx.op.tertiary.f32(i32 46, float %102, float %5151, float %5159)  ; FMad(a,b,c)
  %5161 = fmul fast float %231, 5.000000e+00
  %5162 = call float @dx.op.unary.f32(i32 22, float %5161)  ; Frc(value)
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 2
  %5165 = extractvalue %dx.types.CBufRet.f32 %5163, 3
  %5166 = fmul fast float %5164, 5.120000e+02
  %5167 = fmul fast float %5165, 5.120000e+02
  %5168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.f32 %5168, 0
  %5170 = extractvalue %dx.types.CBufRet.f32 %5168, 1
  %5171 = extractvalue %dx.types.CBufRet.f32 %5168, 2
  %5172 = extractvalue %dx.types.CBufRet.f32 %5168, 3
  %5173 = fmul fast float %5136, %93
  %5174 = fmul fast float %5137, %94
  %5175 = call float @dx.op.unary.f32(i32 6, float %81)  ; FAbs(value)
  %5176 = fmul fast float %5166, %5136
  %5177 = fmul fast float %5167, %5137
  %5178 = fmul fast float %5175, %5171
  %5179 = fmul fast float %5172, %5175
  %5180 = fsub fast float -0.000000e+00, %5179
  %5181 = fdiv fast float 3.000000e+00, %5178
  %5182 = fdiv fast float 3.000000e+00, %5180
  %5183 = call float @dx.op.binary.f32(i32 36, float %5176, float %5181)  ; FMin(a,b)
  %5184 = call float @dx.op.binary.f32(i32 36, float %5177, float %5182)  ; FMin(a,b)
  %5185 = fmul fast float %5173, %5169
  %5186 = fmul fast float %5174, %5170
  %5187 = fsub fast float %5185, %5171
  %5188 = fsub fast float %5186, %5172
  %5189 = fmul fast float %5187, %5175
  %5190 = fmul fast float %5188, %5175
  %5191 = fsub fast float -0.000000e+00, %5189
  %5192 = fsub fast float -0.000000e+00, %5190
  %5193 = fsub fast float -0.000000e+00, %5175
  %5194 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5192, float %5193, float %5191, float %5192, float %5193)  ; Dot3(ax,ay,az,bx,by,bz)
  %5195 = call float @dx.op.unary.f32(i32 25, float %5194)  ; Rsqrt(value)
  %5196 = fmul fast float %5195, %5191
  %5197 = fmul fast float %5195, %5192
  %5198 = fmul fast float %5195, %5193
  %5199 = fmul fast float %5175, 0x3FEFEB8520000000
  %5200 = fmul fast float %5134, %5183
  %5201 = fmul fast float %5135, %5184
  %5202 = fmul fast float %5200, %5200
  %5203 = fmul fast float %5201, %5201
  %5204 = fadd fast float %5203, %5202
  %5205 = call float @dx.op.unary.f32(i32 24, float %5204)  ; Sqrt(value)
  %5206 = fmul fast float %5205, 3.125000e-02
  br label %5207

; <label>:5207                                    ; preds = %5394, %5119
  %5208 = phi i32 [ 0, %5119 ], [ %5497, %5394 ]
  %5209 = phi float [ 0.000000e+00, %5119 ], [ %5496, %5394 ]
  %5210 = sitofp i32 %5208 to float
  %5211 = fadd fast float %5210, %230
  %5212 = fmul fast float %5211, 0x3FF921FB60000000
  %5213 = call float @dx.op.unary.f32(i32 12, float %5212)  ; Cos(value)
  %5214 = call float @dx.op.unary.f32(i32 13, float %5212)  ; Sin(value)
  %5215 = fsub fast float -0.000000e+00, %5214
  %5216 = call float @dx.op.dot3.f32(i32 55, float %5196, float %5197, float %5198, float %5154, float %5157, float %5160)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = call float @dx.op.unary.f32(i32 6, float %5216)  ; FAbs(value)
  %5218 = call float @dx.op.unary.f32(i32 6, float %5217)  ; FAbs(value)
  %5219 = fcmp fast ogt float %5218, 0x3EB0C6F7A0000000
  %5220 = call float @dx.op.dot3.f32(i32 55, float %5213, float %5215, float 0.000000e+00, float %5154, float %5157, float %5160)  ; Dot3(ax,ay,az,bx,by,bz)
  %5221 = fsub fast float -0.000000e+00, %5220
  %5222 = fdiv fast float %5221, %5217
  %5223 = select i1 %5219, float %5222, float 0.000000e+00
  %5224 = fmul fast float %5223, %5223
  %5225 = fadd fast float %5224, 1.000000e+00
  %5226 = call float @dx.op.unary.f32(i32 25, float %5225)  ; Rsqrt(value)
  %5227 = fmul fast float %5223, %5226
  br label %5228

; <label>:5228                                    ; preds = %5228, %5207
  %5229 = phi float [ %5227, %5207 ], [ %5307, %5228 ]
  %5230 = phi float [ 6.000000e+00, %5207 ], [ %5295, %5228 ]
  %5231 = phi i32 [ 0, %5207 ], [ %5308, %5228 ]
  %5232 = sitofp i32 %5231 to float
  %5233 = fadd fast float %5232, %5162
  %5234 = fmul fast float %5233, 5.000000e-01
  %5235 = fmul fast float %5234, %5234
  %5236 = fmul fast float %5235, %5206
  %5237 = call float @dx.op.binary.f32(i32 36, float %5236, float 3.000000e+00)  ; FMin(a,b)
  %5238 = fadd fast float %5237, 1.000000e+00
  %5239 = fmul fast float %5235, %5183
  %5240 = fmul fast float %5235, %5184
  %5241 = fadd fast float %5239, %5138
  %5242 = fmul fast float %5241, %5213
  %5243 = fadd fast float %5242, %5173
  %5244 = fadd fast float %5240, %5139
  %5245 = fmul fast float %5244, %5214
  %5246 = fadd fast float %5245, %5174
  %5247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %5243, float %5246, float undef, float undef, i32 0, i32 0, i32 undef, float %5238)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5248 = extractvalue %dx.types.ResRet.f32 %5247, 0
  %5249 = fcmp fast ogt float %5248, -1.000000e+00
  %5250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5251 = extractvalue %dx.types.CBufRet.f32 %5250, 1
  %5252 = select i1 %5249, float %5251, float 1.000000e+00
  %5253 = fadd fast float %5248, 1.000000e+00
  %5254 = fmul fast float %5252, %5253
  %5255 = call float @dx.op.unary.f32(i32 6, float %5254)  ; FAbs(value)
  %5256 = call float @dx.op.unary.f32(i32 6, float %5255)  ; FAbs(value)
  %5257 = fmul fast float %5243, %5169
  %5258 = fmul fast float %5246, %5170
  %5259 = fsub fast float %5257, %5171
  %5260 = fsub fast float %5258, %5172
  %5261 = fmul fast float %5259, %5256
  %5262 = fmul fast float %5260, %5256
  %5263 = fsub fast float %5261, %5189
  %5264 = fsub fast float %5262, %5190
  %5265 = fsub fast float %5256, %5199
  %5266 = call float @dx.op.dot3.f32(i32 55, float %5263, float %5264, float %5265, float %5263, float %5264, float %5265)  ; Dot3(ax,ay,az,bx,by,bz)
  %5267 = call float @dx.op.dot3.f32(i32 55, float %5263, float %5264, float %5265, float %5154, float %5157, float %5160)  ; Dot3(ax,ay,az,bx,by,bz)
  %5268 = fsub fast float -0.000000e+00, %5267
  %5269 = call float @dx.op.dot3.f32(i32 55, float %5263, float %5264, float %5265, float %5196, float %5197, float %5198)  ; Dot3(ax,ay,az,bx,by,bz)
  %5270 = call float @dx.op.unary.f32(i32 25, float %5266)  ; Rsqrt(value)
  %5271 = fmul fast float %5270, %5269
  %5272 = bitcast float %5266 to i32
  %5273 = ashr i32 %5272, 1
  %5274 = add nsw i32 %5273, 532487669
  %5275 = bitcast i32 %5274 to float
  %5276 = fmul fast float %5275, 0x3FE5555640000000
  %5277 = fsub fast float 0x40000000C0000000, %5276
  %5278 = call float @dx.op.unary.f32(i32 7, float %5277)  ; Saturate(value)
  %5279 = fmul fast float %5275, 0x3FCC71C780000000
  %5280 = fsub fast float 0x3FF55555A0000000, %5279
  %5281 = call float @dx.op.unary.f32(i32 7, float %5280)  ; Saturate(value)
  %5282 = fmul fast float %5256, 0x3F947AE140000000
  %5283 = fadd fast float %5282, -1.000000e+00
  %5284 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5285 = fsub fast float %5281, %5278
  %5286 = fmul fast float %5284, %5285
  %5287 = fadd fast float %5286, %5278
  %5288 = fmul fast float %5255, %81
  %5289 = fcmp fast ogt float %5288, 0.000000e+00
  %5290 = select i1 %5289, float %5287, float 0.000000e+00
  %5291 = fadd fast float %5271, 1.000000e+00
  %5292 = fmul fast float %5290, %5291
  %5293 = fadd fast float %5292, -1.000000e+00
  %5294 = fcmp fast ogt float %5293, %5229
  %5295 = select i1 %5294, float %5268, float %5230
  %5296 = fsub fast float %5268, %5295
  %5297 = fmul fast float %5296, 0x400AAAA4C0000000
  %5298 = fadd fast float %5297, 0xBFDFFFF900000000
  %5299 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5300 = fmul fast float %5267, 0x401AAAB640000000
  %5301 = fadd fast float %5300, 0x3FF0000700000000
  %5302 = call float @dx.op.unary.f32(i32 7, float %5301)  ; Saturate(value)
  %5303 = fmul fast float %5299, 2.000000e+00
  %5304 = fmul fast float %5303, %5302
  %5305 = fsub fast float %5229, %5304
  %5306 = fcmp ole float %5293, %5305
  %5307 = select i1 %5306, float %5305, float %5293
  %5308 = add nuw nsw i32 %5231, 1
  %5309 = icmp eq i32 %5308, 2
  br i1 %5309, label %5310, label %5228

; <label>:5310                                    ; preds = %5228
  %5311 = fsub fast float -0.000000e+00, %5227
  br label %5312

; <label>:5312                                    ; preds = %5312, %5310
  %5313 = phi float [ %5311, %5310 ], [ %5391, %5312 ]
  %5314 = phi float [ 6.000000e+00, %5310 ], [ %5379, %5312 ]
  %5315 = phi i32 [ 0, %5310 ], [ %5392, %5312 ]
  %5316 = sitofp i32 %5315 to float
  %5317 = fadd fast float %5316, %5162
  %5318 = fmul fast float %5317, 5.000000e-01
  %5319 = fmul fast float %5318, %5318
  %5320 = fmul fast float %5319, %5206
  %5321 = call float @dx.op.binary.f32(i32 36, float %5320, float 3.000000e+00)  ; FMin(a,b)
  %5322 = fadd fast float %5321, 1.000000e+00
  %5323 = fmul fast float %5319, %5183
  %5324 = fmul fast float %5319, %5184
  %5325 = fadd fast float %5323, %5138
  %5326 = fmul fast float %5213, %5325
  %5327 = fsub fast float %5173, %5326
  %5328 = fadd fast float %5324, %5139
  %5329 = fmul fast float %5214, %5328
  %5330 = fsub fast float %5174, %5329
  %5331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %44, float %5327, float %5330, float undef, float undef, i32 0, i32 0, i32 undef, float %5322)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5332 = extractvalue %dx.types.ResRet.f32 %5331, 0
  %5333 = fcmp fast ogt float %5332, -1.000000e+00
  %5334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5335 = extractvalue %dx.types.CBufRet.f32 %5334, 1
  %5336 = select i1 %5333, float %5335, float 1.000000e+00
  %5337 = fadd fast float %5332, 1.000000e+00
  %5338 = fmul fast float %5336, %5337
  %5339 = call float @dx.op.unary.f32(i32 6, float %5338)  ; FAbs(value)
  %5340 = call float @dx.op.unary.f32(i32 6, float %5339)  ; FAbs(value)
  %5341 = fmul fast float %5327, %5169
  %5342 = fmul fast float %5330, %5170
  %5343 = fsub fast float %5341, %5171
  %5344 = fsub fast float %5342, %5172
  %5345 = fmul fast float %5343, %5340
  %5346 = fmul fast float %5344, %5340
  %5347 = fsub fast float %5345, %5189
  %5348 = fsub fast float %5346, %5190
  %5349 = fsub fast float %5340, %5199
  %5350 = call float @dx.op.dot3.f32(i32 55, float %5347, float %5348, float %5349, float %5347, float %5348, float %5349)  ; Dot3(ax,ay,az,bx,by,bz)
  %5351 = call float @dx.op.dot3.f32(i32 55, float %5347, float %5348, float %5349, float %5154, float %5157, float %5160)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = fsub fast float -0.000000e+00, %5351
  %5353 = call float @dx.op.dot3.f32(i32 55, float %5347, float %5348, float %5349, float %5196, float %5197, float %5198)  ; Dot3(ax,ay,az,bx,by,bz)
  %5354 = call float @dx.op.unary.f32(i32 25, float %5350)  ; Rsqrt(value)
  %5355 = fmul fast float %5354, %5353
  %5356 = bitcast float %5350 to i32
  %5357 = ashr i32 %5356, 1
  %5358 = add nsw i32 %5357, 532487669
  %5359 = bitcast i32 %5358 to float
  %5360 = fmul fast float %5359, 0x3FE5555640000000
  %5361 = fsub fast float 0x40000000C0000000, %5360
  %5362 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5363 = fmul fast float %5359, 0x3FCC71C780000000
  %5364 = fsub fast float 0x3FF55555A0000000, %5363
  %5365 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5366 = fmul fast float %5340, 0x3F947AE140000000
  %5367 = fadd fast float %5366, -1.000000e+00
  %5368 = call float @dx.op.unary.f32(i32 7, float %5367)  ; Saturate(value)
  %5369 = fsub fast float %5365, %5362
  %5370 = fmul fast float %5368, %5369
  %5371 = fadd fast float %5370, %5362
  %5372 = fmul fast float %5339, %81
  %5373 = fcmp fast ogt float %5372, 0.000000e+00
  %5374 = select i1 %5373, float %5371, float 0.000000e+00
  %5375 = fadd fast float %5355, 1.000000e+00
  %5376 = fmul fast float %5374, %5375
  %5377 = fadd fast float %5376, -1.000000e+00
  %5378 = fcmp fast ogt float %5377, %5313
  %5379 = select i1 %5378, float %5352, float %5314
  %5380 = fsub fast float %5352, %5379
  %5381 = fmul fast float %5380, 0x400AAAA4C0000000
  %5382 = fadd fast float %5381, 0xBFDFFFF900000000
  %5383 = call float @dx.op.unary.f32(i32 7, float %5382)  ; Saturate(value)
  %5384 = fmul fast float %5351, 0x401AAAB640000000
  %5385 = fadd fast float %5384, 0x3FF0000700000000
  %5386 = call float @dx.op.unary.f32(i32 7, float %5385)  ; Saturate(value)
  %5387 = fmul fast float %5383, 2.000000e+00
  %5388 = fmul fast float %5387, %5386
  %5389 = fsub fast float %5313, %5388
  %5390 = fcmp ole float %5377, %5389
  %5391 = select i1 %5390, float %5389, float %5377
  %5392 = add nuw nsw i32 %5315, 1
  %5393 = icmp eq i32 %5392, 2
  br i1 %5393, label %5394, label %5312

; <label>:5394                                    ; preds = %5312
  %5395 = fmul fast float %5198, %5215
  %5396 = fmul fast float %5198, %5213
  %5397 = fsub fast float -0.000000e+00, %5396
  %5398 = fmul fast float %5213, %5197
  %5399 = fmul fast float %5196, %5215
  %5400 = fsub fast float %5398, %5399
  %5401 = call float @dx.op.dot3.f32(i32 55, float %5154, float %5157, float %5160, float %5395, float %5397, float %5400)  ; Dot3(ax,ay,az,bx,by,bz)
  %5402 = fmul fast float %5401, %5395
  %5403 = fmul fast float %5401, %5397
  %5404 = fmul fast float %5401, %5400
  %5405 = fsub fast float %5154, %5402
  %5406 = fsub fast float %5157, %5403
  %5407 = fsub fast float %5160, %5404
  %5408 = fmul fast float %5405, %5405
  %5409 = fmul fast float %5406, %5406
  %5410 = fadd fast float %5408, %5409
  %5411 = fmul fast float %5407, %5407
  %5412 = fadd fast float %5410, %5411
  %5413 = call float @dx.op.unary.f32(i32 24, float %5412)  ; Sqrt(value)
  %5414 = call float @dx.op.dot3.f32(i32 55, float %5213, float %5215, float 0.000000e+00, float %5405, float %5406, float %5407)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = call float @dx.op.dot3.f32(i32 55, float %5213, float %5215, float 0.000000e+00, float %5196, float %5197, float %5198)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = fmul fast float %5415, %5196
  %5417 = fmul fast float %5415, %5197
  %5418 = fmul fast float %5415, %5198
  %5419 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5417, float %5418, float %5405, float %5406, float %5407)  ; Dot3(ax,ay,az,bx,by,bz)
  %5420 = fcmp fast oge float %5414, %5419
  %5421 = fdiv fast float 1.000000e+00, %5413
  %5422 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %5407, float %5196, float %5197, float %5198)  ; Dot3(ax,ay,az,bx,by,bz)
  %5423 = fmul fast float %5422, %5421
  %5424 = call float @dx.op.unary.f32(i32 7, float %5423)  ; Saturate(value)
  %5425 = fmul fast float %5424, %5424
  %5426 = fsub fast float 1.000000e+00, %5425
  %5427 = bitcast float %5426 to i32
  %5428 = ashr i32 %5427, 1
  %5429 = add nsw i32 %5428, 532487669
  %5430 = bitcast i32 %5429 to float
  %5431 = call float @dx.op.unary.f32(i32 6, float %5424)  ; FAbs(value)
  %5432 = fmul fast float %5431, 0x3FC40AE960000000
  %5433 = fsub fast float 0x3FF921FB60000000, %5432
  %5434 = fsub fast float 1.000000e+00, %5431
  %5435 = bitcast float %5434 to i32
  %5436 = ashr i32 %5435, 1
  %5437 = add nsw i32 %5436, 532487669
  %5438 = bitcast i32 %5437 to float
  %5439 = fmul fast float %5438, %5433
  %5440 = fcmp fast oge float %5424, 0.000000e+00
  %5441 = fsub fast float 0x400921FB60000000, %5439
  %5442 = select i1 %5440, float %5439, float %5441
  %5443 = fsub fast float -0.000000e+00, %5430
  %5444 = select i1 %5420, float %5443, float %5430
  %5445 = fsub fast float -0.000000e+00, %5442
  %5446 = select i1 %5420, float %5445, float %5442
  %5447 = call float @dx.op.unary.f32(i32 6, float %5307)  ; FAbs(value)
  %5448 = fmul fast float %5447, 0x3FC40AE960000000
  %5449 = fsub fast float 0x3FF921FB60000000, %5448
  %5450 = fsub fast float 1.000000e+00, %5447
  %5451 = bitcast float %5450 to i32
  %5452 = ashr i32 %5451, 1
  %5453 = add nsw i32 %5452, 532487669
  %5454 = bitcast i32 %5453 to float
  %5455 = fmul fast float %5454, %5449
  %5456 = fcmp fast oge float %5307, 0.000000e+00
  %5457 = fsub fast float 0x400921FB60000000, %5455
  %5458 = select i1 %5456, float %5455, float %5457
  %5459 = call float @dx.op.unary.f32(i32 6, float %5391)  ; FAbs(value)
  %5460 = fmul fast float %5459, 0x3FC40AE960000000
  %5461 = fsub fast float 0x3FF921FB60000000, %5460
  %5462 = fsub fast float 1.000000e+00, %5459
  %5463 = bitcast float %5462 to i32
  %5464 = ashr i32 %5463, 1
  %5465 = add nsw i32 %5464, 532487669
  %5466 = bitcast i32 %5465 to float
  %5467 = fmul fast float %5466, %5461
  %5468 = fcmp fast oge float %5391, 0.000000e+00
  %5469 = fsub fast float 0x400921FB60000000, %5467
  %5470 = select i1 %5468, float %5467, float %5469
  %5471 = fsub fast float -0.000000e+00, %5446
  %5472 = fsub fast float %5471, %5458
  %5473 = call float @dx.op.binary.f32(i32 35, float %5472, float 0xBFF921FB60000000)  ; FMax(a,b)
  %5474 = call float @dx.op.binary.f32(i32 36, float %5473, float 0x3FF921FB60000000)  ; FMin(a,b)
  %5475 = fadd fast float %5446, %5474
  %5476 = fsub fast float %5470, %5446
  %5477 = call float @dx.op.binary.f32(i32 35, float %5476, float 0xBFF921FB60000000)  ; FMax(a,b)
  %5478 = call float @dx.op.binary.f32(i32 36, float %5477, float 0x3FF921FB60000000)  ; FMin(a,b)
  %5479 = fadd fast float %5446, %5478
  %5480 = fmul fast float %5475, 2.000000e+00
  %5481 = fsub fast float %5480, %5446
  %5482 = call float @dx.op.unary.f32(i32 12, float %5481)  ; Cos(value)
  %5483 = fsub fast float -0.000000e+00, %5482
  %5484 = fmul fast float %5479, 2.000000e+00
  %5485 = fsub fast float %5484, %5446
  %5486 = call float @dx.op.unary.f32(i32 12, float %5485)  ; Cos(value)
  %5487 = fmul fast float %5424, 2.000000e+00
  %5488 = fadd fast float %5479, %5475
  %5489 = fmul fast float %5444, %5488
  %5490 = fmul fast float %5489, 2.000000e+00
  %5491 = fsub fast float %5483, %5486
  %5492 = fadd fast float %5491, %5487
  %5493 = fadd fast float %5492, %5490
  %5494 = fmul fast float %5413, 2.500000e-01
  %5495 = fmul fast float %5494, %5493
  %5496 = fadd fast float %5495, %5209
  %5497 = add nuw nsw i32 %5208, 1
  %5498 = icmp eq i32 %5497, 2
  br i1 %5498, label %5499, label %5207

; <label>:5499                                    ; preds = %5394
  %5500 = fmul fast float %5496, 5.000000e-01
  %5501 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %156, float %157, float %158)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = call float @dx.op.unary.f32(i32 25, float %5501)  ; Rsqrt(value)
  %5503 = fmul fast float %5502, %156
  %5504 = fmul fast float %5502, %157
  %5505 = fmul fast float %5502, %158
  %5506 = fsub fast float -0.000000e+00, %5503
  %5507 = fsub fast float -0.000000e+00, %5504
  %5508 = fsub fast float -0.000000e+00, %5505
  %5509 = select i1 %217, float 0.000000e+00, float %5125
  %5510 = call float @dx.op.dot3.f32(i32 55, float %5126, float %5127, float %5128, float %5506, float %5507, float %5508)  ; Dot3(ax,ay,az,bx,by,bz)
  %5511 = call float @dx.op.unary.f32(i32 7, float %5510)  ; Saturate(value)
  %5512 = call float @dx.op.dot3.f32(i32 55, float %5503, float %5504, float %5505, float %5126, float %5127, float %5128)  ; Dot3(ax,ay,az,bx,by,bz)
  %5513 = fmul fast float %5512, 2.000000e+00
  %5514 = fmul fast float %5513, %5126
  %5515 = fmul fast float %5513, %5127
  %5516 = fmul fast float %5513, %5128
  %5517 = fsub fast float %5503, %5514
  %5518 = fsub fast float %5504, %5515
  %5519 = fsub fast float %5505, %5516
  %5520 = call float @dx.op.binary.f32(i32 36, float %5130, float %5500)  ; FMin(a,b)
  %5521 = fsub fast float 1.000000e+00, %5520
  %5522 = bitcast float %5521 to i32
  %5523 = ashr i32 %5522, 1
  %5524 = add nsw i32 %5523, 532487669
  %5525 = bitcast i32 %5524 to float
  %5526 = fsub fast float 1.000000e+00, %5129
  %5527 = call float @dx.op.binary.f32(i32 35, float %5526, float 0x3F847AE140000000)  ; FMax(a,b)
  %5528 = fmul fast float %5527, %5527
  %5529 = fmul fast float %5528, %5528
  %5530 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %43, float %5525, float %5529, float %5530, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5532 = extractvalue %dx.types.ResRet.f32 %5531, 0
  %5533 = fsub fast float 1.000000e+00, %5130
  %5534 = bitcast float %5533 to i32
  %5535 = sub nsw i32 2129859010, %5534
  %5536 = fsub fast float 1.000000e+00, %61
  %5537 = call float @dx.op.dot3.f32(i32 55, float %120, float %121, float %122, float %100, float %101, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = call float @dx.op.binary.f32(i32 35, float %5537, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5539 = fdiv fast float %5536, %5538
  %5540 = call float @dx.op.dot3.f32(i32 55, float %5126, float %5127, float %5128, float %100, float %101, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5541 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5542 = fmul fast float %5541, 5.000000e-01
  %5543 = fadd fast float %5542, 5.000000e-01
  %5544 = fmul fast float %5543, %61
  %5545 = call float @dx.op.dot3.f32(i32 55, float %5126, float %5127, float %5128, float %120, float %121, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = fmul fast float %5546, %5539
  %5548 = fadd fast float %5544, %5547
  %5549 = fsub fast float 5.000000e-01, %5542
  %5550 = fmul fast float %5549, %5120
  %5551 = fmul fast float %5549, %5121
  %5552 = fmul fast float %5549, %5122
  %5553 = fadd fast float %5548, %5550
  %5554 = fadd fast float %5548, %5551
  %5555 = fadd fast float %5548, %5552
  %5556 = call float @dx.op.dot3.f32(i32 55, float %5517, float %5518, float %5519, float %100, float %101, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5557 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5558 = fmul fast float %5557, 5.000000e-01
  %5559 = fadd fast float %5558, 5.000000e-01
  %5560 = fmul fast float %5559, %61
  %5561 = call float @dx.op.dot3.f32(i32 55, float %5517, float %5518, float %5519, float %120, float %121, float %122)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5563 = fmul fast float %5562, %5539
  %5564 = fadd fast float %5560, %5563
  %5565 = fsub fast float 5.000000e-01, %5558
  %5566 = fmul fast float %5565, %5120
  %5567 = fmul fast float %5565, %5121
  %5568 = fmul fast float %5565, %5122
  %5569 = fadd fast float %5564, %5566
  %5570 = fadd fast float %5564, %5567
  %5571 = fadd fast float %5564, %5568
  %5572 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5574 = extractvalue %dx.types.CBufRet.f32 %5573, 0
  %5575 = call float @dx.op.binary.f32(i32 36, float %5120, float %5574)  ; FMin(a,b)
  %5576 = fmul fast float %5575, %5521
  %5577 = fsub fast float 1.000000e+00, %5576
  %5578 = bitcast float %5577 to i32
  %5579 = sub nsw i32 2129859010, %5578
  %5580 = bitcast i32 %5579 to float
  %5581 = call float @dx.op.binary.f32(i32 36, float %5121, float %5574)  ; FMin(a,b)
  %5582 = fmul fast float %5581, %5521
  %5583 = fsub fast float 1.000000e+00, %5582
  %5584 = bitcast float %5583 to i32
  %5585 = sub nsw i32 2129859010, %5584
  %5586 = bitcast i32 %5585 to float
  %5587 = call float @dx.op.binary.f32(i32 36, float %5122, float %5574)  ; FMin(a,b)
  %5588 = fmul fast float %5587, %5521
  %5589 = fsub fast float 1.000000e+00, %5588
  %5590 = bitcast float %5589 to i32
  %5591 = sub nsw i32 2129859010, %5590
  %5592 = bitcast i32 %5591 to float
  %5593 = fmul fast float %5520, %62
  %5594 = fmul fast float %5593, %5553
  %5595 = fmul fast float %5594, %5580
  %5596 = fmul fast float %5520, %63
  %5597 = fmul fast float %5596, %5554
  %5598 = fmul fast float %5597, %5586
  %5599 = fmul fast float %5520, %64
  %5600 = fmul fast float %5599, %5555
  %5601 = fmul fast float %5600, %5592
  %5602 = call float @dx.op.binary.f32(i32 36, float %5123, float %5574)  ; FMin(a,b)
  %5603 = fmul fast float %5602, %5521
  %5604 = fsub fast float 1.000000e+00, %5603
  %5605 = bitcast float %5604 to i32
  %5606 = sub nsw i32 2129859010, %5605
  %5607 = bitcast i32 %5606 to float
  %5608 = call float @dx.op.binary.f32(i32 36, float %5124, float %5574)  ; FMin(a,b)
  %5609 = fmul fast float %5608, %5521
  %5610 = fsub fast float 1.000000e+00, %5609
  %5611 = bitcast float %5610 to i32
  %5612 = sub nsw i32 2129859010, %5611
  %5613 = bitcast i32 %5612 to float
  %5614 = call float @dx.op.binary.f32(i32 36, float %5509, float %5574)  ; FMin(a,b)
  %5615 = fmul fast float %5614, %5521
  %5616 = fsub fast float 1.000000e+00, %5615
  %5617 = bitcast float %5616 to i32
  %5618 = sub nsw i32 2129859010, %5617
  %5619 = bitcast i32 %5618 to float
  %5620 = fmul fast float %5593, %5569
  %5621 = fmul fast float %5620, %5607
  %5622 = fmul fast float %5596, %5570
  %5623 = fmul fast float %5622, %5613
  %5624 = fmul fast float %5599, %5571
  %5625 = fmul fast float %5624, %5619
  %5626 = call float @dx.op.dot3.f32(i32 55, float %5595, float %5598, float %5601, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5627 = select i1 %217, float 0.000000e+00, float %5595
  %5628 = select i1 %217, float %5626, float %5598
  %5629 = select i1 %217, float 0.000000e+00, float %5601
  %5630 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5623, float %5625, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5631 = select i1 %217, float 0.000000e+00, float %5621
  %5632 = select i1 %217, float %5630, float %5623
  %5633 = select i1 %217, float 0.000000e+00, float %5625
  %5634 = fmul fast float %4229, %4229
  %5635 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  %5636 = fmul fast float %5511, 9.843750e-01
  %5637 = fmul fast float %5129, 9.843750e-01
  %5638 = fadd fast float %5636, 7.812500e-03
  %5639 = fadd fast float %5637, 7.812500e-03
  %5640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %5638, float %5639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5641 = extractvalue %dx.types.ResRet.f32 %5640, 0
  %5642 = extractvalue %dx.types.ResRet.f32 %5640, 1
  %5643 = extractvalue %dx.types.ResRet.f32 %5640, 2
  %5644 = extractvalue %dx.types.ResRet.f32 %5640, 3
  %5645 = fsub fast float 1.000000e+00, %5635
  %5646 = fsub fast float %5643, %5641
  %5647 = fsub fast float %5644, %5642
  %5648 = fmul fast float %5646, %5645
  %5649 = fmul fast float %5647, %5645
  %5650 = fadd fast float %5648, %5641
  %5651 = fadd fast float %5649, %5642
  %5652 = fmul fast float %5650, %5123
  %5653 = fmul fast float %5650, %5124
  %5654 = fmul fast float %5650, %5509
  %5655 = fadd fast float %5652, %5651
  %5656 = fadd fast float %5653, %5651
  %5657 = fadd fast float %5654, %5651
  %5658 = fcmp fast ogt float %4819, 0.000000e+00
  br i1 %5658, label %5659, label %5685

; <label>:5659                                    ; preds = %5499
  %5660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %4819, float %5511, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5661 = extractvalue %dx.types.ResRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.ResRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.ResRet.f32 %5660, 2
  %5664 = fadd fast float %5661, -5.000000e-01
  %5665 = fadd fast float %5662, -5.000000e-01
  %5666 = fadd fast float %5663, -5.000000e-01
  %5667 = fsub fast float 1.000000e+00, %5123
  %5668 = fsub fast float 1.000000e+00, %5124
  %5669 = fsub fast float 1.000000e+00, %5509
  %5670 = fmul fast float %5123, 4.000000e+00
  %5671 = fmul fast float %5670, %5667
  %5672 = fmul fast float %5671, %5664
  %5673 = fmul fast float %5124, 4.000000e+00
  %5674 = fmul fast float %5673, %5668
  %5675 = fmul fast float %5674, %5665
  %5676 = fmul fast float %5509, 4.000000e+00
  %5677 = fmul fast float %5676, %5669
  %5678 = fmul fast float %5677, %5666
  %5679 = fadd fast float %5672, %5655
  %5680 = fadd fast float %5675, %5656
  %5681 = fadd fast float %5678, %5657
  %5682 = call float @dx.op.unary.f32(i32 7, float %5679)  ; Saturate(value)
  %5683 = call float @dx.op.unary.f32(i32 7, float %5680)  ; Saturate(value)
  %5684 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  br label %5685

; <label>:5685                                    ; preds = %5659, %5499
  %5686 = phi float [ %5682, %5659 ], [ %5655, %5499 ]
  %5687 = phi float [ %5683, %5659 ], [ %5656, %5499 ]
  %5688 = phi float [ %5684, %5659 ], [ %5657, %5499 ]
  %5689 = call float @dx.op.binary.f32(i32 35, float %5687, float %5688)  ; FMax(a,b)
  %5690 = call float @dx.op.binary.f32(i32 35, float %5686, float %5689)  ; FMax(a,b)
  %5691 = fsub fast float 1.000000e+00, %5690
  %5692 = fmul fast float %5690, %5129
  %5693 = fadd fast float %5692, %5129
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 2
  %5696 = extractvalue %dx.types.CBufRet.f32 %5694, 3
  %5697 = fmul fast float %5693, %5695
  %5698 = fadd fast float %5697, %5696
  %5699 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  %5700 = fsub fast float 1.000000e+00, %5532
  %5701 = fadd fast float %5700, %5699
  %5702 = call float @dx.op.unary.f32(i32 7, float %5701)  ; Saturate(value)
  %5703 = fcmp fast olt float %5702, 1.000000e+00
  br i1 %5703, label %5704, label %6258

; <label>:5704                                    ; preds = %5685
  %5705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.f32 %5705, 2
  %5707 = extractvalue %dx.types.CBufRet.f32 %5705, 3
  %5708 = fmul fast float %5706, %93
  %5709 = fmul fast float %5707, %94
  %5710 = fptoui float %5708 to i32
  %5711 = fptoui float %5709 to i32
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  %5714 = extractvalue %dx.types.CBufRet.f32 %5712, 2
  %5715 = extractvalue %dx.types.CBufRet.f32 %5712, 3
  %5716 = fadd fast float %81, -4.000000e+00
  %5717 = call float @dx.op.binary.f32(i32 35, float %5716, float 0.000000e+00)  ; FMax(a,b)
  %5718 = fadd fast float %5717, %5713
  %5719 = fmul fast float %5718, %5714
  %5720 = call float @dx.op.unary.f32(i32 23, float %5719)  ; Log(value)
  %5721 = fmul fast float %5720, %5715
  %5722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.f32 %5722, 2
  %5724 = fmul fast float %5721, %5723
  %5725 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.i32 %5726, 1
  %5728 = add i32 %5727, -1
  %5729 = uitofp i32 %5727 to float
  %5730 = fmul fast float %5729, %5725
  %5731 = fptoui float %5730 to i32
  %5732 = call i32 @dx.op.binary.i32(i32 40, i32 %5731, i32 %5728)  ; UMin(a,b)
  %5733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.i32 %5733, 2
  %5735 = extractvalue %dx.types.CBufRet.i32 %5733, 3
  %5736 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5711, i32 %5734, i32 %5710)  ; UMad(a,b,c)
  %5737 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5732, i32 %5735, i32 %5736)  ; UMad(a,b,c)
  %5738 = call float @dx.op.binary.f32(i32 35, float %81, float 0.000000e+00)  ; FMax(a,b)
  %5739 = fptoui float %5738 to i32
  %5740 = lshr i32 %5739, 5
  %5741 = call i32 @dx.op.binary.i32(i32 40, i32 %5740, i32 8191)  ; UMin(a,b)
  br i1 false, label %5742, label %5749

; <label>:5742                                    ; preds = %5704
  %5743 = fadd fast float 0.000000e+00, %5519
  %5744 = call float @dx.op.dot3.f32(i32 55, float %5517, float %5518, float %5743, float %5517, float %5518, float %5743)  ; Dot3(ax,ay,az,bx,by,bz)
  %5745 = call float @dx.op.unary.f32(i32 25, float %5744)  ; Rsqrt(value)
  %5746 = fmul fast float %5745, %5517
  %5747 = fmul fast float %5745, %5518
  %5748 = fmul fast float %5743, %5745
  br label %5749

; <label>:5749                                    ; preds = %5742, %5704
  %5750 = phi float [ %5746, %5742 ], [ %5517, %5704 ]
  %5751 = phi float [ %5747, %5742 ], [ %5518, %5704 ]
  %5752 = phi float [ %5748, %5742 ], [ %5519, %5704 ]
  %5753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5754 = extractvalue %dx.types.CBufRet.i32 %5753, 2
  %5755 = add nsw i32 %5754, -1
  %5756 = call i32 @dx.op.binary.i32(i32 37, i32 %5755, i32 0)  ; IMax(a,b)
  %5757 = shl i32 %5741, 2
  %5758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5757, i32 undef)  ; BufferLoad(srv,index,wot)
  %5759 = extractvalue %dx.types.ResRet.i32 %5758, 0
  %5760 = lshr i32 %5759, 16
  %5761 = and i32 %5759, 65535
  %5762 = lshr i32 %5759, 21
  %5763 = lshr i32 %5761, 5
  %5764 = call i32 @dx.op.binary.i32(i32 40, i32 %5763, i32 %5756)  ; UMin(a,b)
  %5765 = icmp ugt i32 %5762, %5764
  br i1 %5765, label %6146, label %5766

; <label>:5766                                    ; preds = %5749
  br label %5767

; <label>:5767                                    ; preds = %6135, %5766
  %5768 = phi float [ %6136, %6135 ], [ 0.000000e+00, %5766 ]
  %5769 = phi float [ %6137, %6135 ], [ 0.000000e+00, %5766 ]
  %5770 = phi float [ %6138, %6135 ], [ 0.000000e+00, %5766 ]
  %5771 = phi float [ %6139, %6135 ], [ 1.000000e+00, %5766 ]
  %5772 = phi i32 [ %6143, %6135 ], [ %5762, %5766 ]
  %5773 = phi float [ %6140, %6135 ], [ 0.000000e+00, %5766 ]
  %5774 = phi float [ %6141, %6135 ], [ 0.000000e+00, %5766 ]
  %5775 = phi float [ %6142, %6135 ], [ 0.000000e+00, %5766 ]
  %5776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5777 = extractvalue %dx.types.CBufRet.i32 %5776, 2
  %5778 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5737, i32 %5777, i32 %5772)  ; UMad(a,b,c)
  %5779 = shl i32 %5778, 2
  %5780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5779, i32 undef)  ; BufferLoad(srv,index,wot)
  %5781 = extractvalue %dx.types.ResRet.i32 %5780, 0
  %5782 = shl i32 %5772, 5
  %5783 = sub nsw i32 %5760, %5782
  %5784 = call i32 @dx.op.binary.i32(i32 37, i32 %5783, i32 0)  ; IMax(a,b)
  %5785 = call i32 @dx.op.binary.i32(i32 38, i32 %5784, i32 31)  ; IMin(a,b)
  %5786 = sub nsw i32 1, %5760
  %5787 = add nsw i32 %5786, %5761
  %5788 = call i32 @dx.op.binary.i32(i32 37, i32 %5787, i32 0)  ; IMax(a,b)
  %5789 = call i32 @dx.op.binary.i32(i32 38, i32 %5788, i32 32)  ; IMin(a,b)
  %5790 = and i32 %5789, 31
  %5791 = shl i32 -1, %5790
  %5792 = xor i32 %5791, -1
  %5793 = and i32 %5785, 31
  %5794 = shl i32 %5792, %5793
  %5795 = icmp eq i32 %5789, 32
  %5796 = select i1 %5795, i32 -1, i32 %5794
  %5797 = and i32 %5796, %5781
  %5798 = icmp eq i32 %5797, 0
  br i1 %5798, label %6135, label %5799

; <label>:5799                                    ; preds = %5767
  br label %5800

; <label>:5800                                    ; preds = %5909, %5799
  %5801 = phi float [ %5910, %5909 ], [ %5768, %5799 ]
  %5802 = phi float [ %5911, %5909 ], [ %5769, %5799 ]
  %5803 = phi float [ %5912, %5909 ], [ %5770, %5799 ]
  %5804 = phi float [ %5913, %5909 ], [ %5771, %5799 ]
  %5805 = phi i32 [ %5813, %5909 ], [ %5797, %5799 ]
  %5806 = phi float [ %5914, %5909 ], [ %5773, %5799 ]
  %5807 = phi float [ %5915, %5909 ], [ %5774, %5799 ]
  %5808 = phi float [ %5916, %5909 ], [ %5775, %5799 ]
  %5809 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5805)  ; FirstbitLo(value)
  %5810 = add i32 %5809, %5782
  %5811 = and i32 %5809, 31
  %5812 = shl i32 1, %5811
  %5813 = xor i32 %5812, %5805
  %5814 = mul i32 %5810, 72
  %5815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5814, i32 undef)  ; BufferLoad(srv,index,wot)
  %5816 = extractvalue %dx.types.ResRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.ResRet.f32 %5815, 1
  %5818 = extractvalue %dx.types.ResRet.f32 %5815, 2
  %5819 = add i32 %5814, 12
  %5820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %5819, i32 undef)  ; BufferLoad(srv,index,wot)
  %5821 = extractvalue %dx.types.ResRet.i32 %5820, 0
  %5822 = add i32 %5814, 16
  %5823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5822, i32 undef)  ; BufferLoad(srv,index,wot)
  %5824 = extractvalue %dx.types.ResRet.f32 %5823, 0
  %5825 = extractvalue %dx.types.ResRet.f32 %5823, 1
  %5826 = extractvalue %dx.types.ResRet.f32 %5823, 2
  %5827 = add i32 %5814, 28
  %5828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5827, i32 undef)  ; BufferLoad(srv,index,wot)
  %5829 = extractvalue %dx.types.ResRet.f32 %5828, 0
  %5830 = add i32 %5814, 32
  %5831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5830, i32 undef)  ; BufferLoad(srv,index,wot)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.ResRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.ResRet.f32 %5831, 2
  %5835 = extractvalue %dx.types.ResRet.f32 %5831, 3
  %5836 = add i32 %5814, 48
  %5837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5836, i32 undef)  ; BufferLoad(srv,index,wot)
  %5838 = extractvalue %dx.types.ResRet.f32 %5837, 0
  %5839 = extractvalue %dx.types.ResRet.f32 %5837, 1
  %5840 = add i32 %5814, 56
  %5841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5840, i32 undef)  ; BufferLoad(srv,index,wot)
  %5842 = extractvalue %dx.types.ResRet.f32 %5841, 0
  %5843 = extractvalue %dx.types.ResRet.f32 %5841, 1
  %5844 = add i32 %5814, 64
  %5845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %5844, i32 undef)  ; BufferLoad(srv,index,wot)
  %5846 = extractvalue %dx.types.ResRet.f32 %5845, 0
  %5847 = extractvalue %dx.types.ResRet.f32 %5845, 1
  %5848 = mul i32 %5810, 60
  %5849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5848, i32 undef)  ; BufferLoad(srv,index,wot)
  %5850 = extractvalue %dx.types.ResRet.f32 %5849, 0
  %5851 = extractvalue %dx.types.ResRet.f32 %5849, 1
  %5852 = extractvalue %dx.types.ResRet.f32 %5849, 2
  %5853 = add i32 %5848, 12
  %5854 = add i32 %5848, 48
  %5855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5854, i32 undef)  ; BufferLoad(srv,index,wot)
  %5856 = extractvalue %dx.types.ResRet.f32 %5855, 0
  %5857 = extractvalue %dx.types.ResRet.f32 %5855, 1
  %5858 = extractvalue %dx.types.ResRet.f32 %5855, 2
  %5859 = and i32 %5821, 32767
  %5860 = bitcast float %5816 to i32
  %5861 = icmp eq i32 %5860, -1
  %5862 = bitcast float %5817 to i32
  %5863 = and i32 %5821, 32768
  %5864 = icmp ne i32 %5863, 0
  %5865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5866 = extractvalue %dx.types.CBufRet.f32 %5865, 0
  %5867 = extractvalue %dx.types.CBufRet.f32 %5865, 1
  %5868 = extractvalue %dx.types.CBufRet.f32 %5865, 2
  %5869 = fsub fast float %5850, %5866
  %5870 = fsub fast float %5851, %5867
  %5871 = fsub fast float %5852, %5868
  %5872 = fsub fast float %156, %5869
  %5873 = fsub fast float %157, %5870
  %5874 = fsub fast float %158, %5871
  %5875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5853, i32 undef)  ; BufferLoad(srv,index,wot)
  %5876 = extractvalue %dx.types.ResRet.f32 %5875, 0
  %5877 = extractvalue %dx.types.ResRet.f32 %5875, 1
  %5878 = extractvalue %dx.types.ResRet.f32 %5875, 2
  %5879 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %5874, float %5876, float %5877, float %5878)  ; Dot3(ax,ay,az,bx,by,bz)
  %5880 = add i32 %5848, 24
  %5881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5880, i32 undef)  ; BufferLoad(srv,index,wot)
  %5882 = extractvalue %dx.types.ResRet.f32 %5881, 0
  %5883 = extractvalue %dx.types.ResRet.f32 %5881, 1
  %5884 = extractvalue %dx.types.ResRet.f32 %5881, 2
  %5885 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %5874, float %5882, float %5883, float %5884)  ; Dot3(ax,ay,az,bx,by,bz)
  %5886 = add i32 %5848, 36
  %5887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %5886, i32 undef)  ; BufferLoad(srv,index,wot)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.ResRet.f32 %5887, 2
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %5874, float %5888, float %5889, float %5890)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = call float @dx.op.unary.f32(i32 6, float %5879)  ; FAbs(value)
  %5893 = call float @dx.op.unary.f32(i32 6, float %5885)  ; FAbs(value)
  %5894 = call float @dx.op.unary.f32(i32 6, float %5891)  ; FAbs(value)
  %5895 = fsub fast float %5856, %5892
  %5896 = fsub fast float %5857, %5893
  %5897 = fsub fast float %5858, %5894
  %5898 = fmul fast float %5895, %5824
  %5899 = fmul fast float %5896, %5825
  %5900 = fmul fast float %5897, %5826
  %5901 = call float @dx.op.binary.f32(i32 36, float %5899, float %5900)  ; FMin(a,b)
  %5902 = call float @dx.op.binary.f32(i32 36, float %5898, float %5901)  ; FMin(a,b)
  %5903 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5904 = call float @dx.op.binary.f32(i32 36, float %5804, float %5903)  ; FMin(a,b)
  %5905 = uitofp i1 %5864 to float
  %5906 = fsub fast float 1.000000e+00, %5905
  %5907 = fmul fast float %5904, %5906
  %5908 = fcmp fast ogt float %5907, 0.000000e+00
  br i1 %5908, label %5918, label %5909

; <label>:5909                                    ; preds = %6060, %5800
  %5910 = phi float [ %6124, %6060 ], [ %5801, %5800 ]
  %5911 = phi float [ %6125, %6060 ], [ %5802, %5800 ]
  %5912 = phi float [ %6126, %6060 ], [ %5803, %5800 ]
  %5913 = phi float [ %6133, %6060 ], [ %5804, %5800 ]
  %5914 = phi float [ %6130, %6060 ], [ %5806, %5800 ]
  %5915 = phi float [ %6131, %6060 ], [ %5807, %5800 ]
  %5916 = phi float [ %6132, %6060 ], [ %5808, %5800 ]
  %5917 = icmp eq i32 %5805, %5812
  br i1 %5917, label %6134, label %5800

; <label>:5918                                    ; preds = %5800
  br i1 %5861, label %5976, label %5919

; <label>:5919                                    ; preds = %5918
  %5920 = fsub fast float -0.000000e+00, %5876
  %5921 = fsub fast float -0.000000e+00, %5877
  %5922 = fsub fast float -0.000000e+00, %5878
  %5923 = call float @dx.op.dot3.f32(i32 55, float %5750, float %5751, float %5752, float %5920, float %5921, float %5922)  ; Dot3(ax,ay,az,bx,by,bz)
  %5924 = fsub fast float -0.000000e+00, %5923
  %5925 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %5874, float %5920, float %5921, float %5922)  ; Dot3(ax,ay,az,bx,by,bz)
  %5926 = fadd fast float %5925, %5839
  %5927 = fadd fast float %5838, %5925
  %5928 = fsub fast float -0.000000e+00, %5927
  %5929 = fcmp ogt float %5923, -0.000000e+00
  %5930 = select i1 %5929, float %5928, float %5926
  %5931 = call float @dx.op.unary.f32(i32 6, float %5924)  ; FAbs(value)
  %5932 = fdiv fast float 1.000000e+00, %5931
  %5933 = fmul fast float %5930, %5932
  %5934 = call float @dx.op.binary.f32(i32 35, float %5933, float 0.000000e+00)  ; FMax(a,b)
  %5935 = fsub fast float -0.000000e+00, %5882
  %5936 = fsub fast float -0.000000e+00, %5883
  %5937 = fsub fast float -0.000000e+00, %5884
  %5938 = call float @dx.op.dot3.f32(i32 55, float %5750, float %5751, float %5752, float %5935, float %5936, float %5937)  ; Dot3(ax,ay,az,bx,by,bz)
  %5939 = fsub fast float -0.000000e+00, %5938
  %5940 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %5874, float %5935, float %5936, float %5937)  ; Dot3(ax,ay,az,bx,by,bz)
  %5941 = fadd fast float %5940, %5843
  %5942 = fadd fast float %5842, %5940
  %5943 = fsub fast float -0.000000e+00, %5942
  %5944 = fcmp ogt float %5938, -0.000000e+00
  %5945 = select i1 %5944, float %5943, float %5941
  %5946 = call float @dx.op.unary.f32(i32 6, float %5939)  ; FAbs(value)
  %5947 = fdiv fast float 1.000000e+00, %5946
  %5948 = fmul fast float %5945, %5947
  %5949 = call float @dx.op.binary.f32(i32 35, float %5948, float 0.000000e+00)  ; FMax(a,b)
  %5950 = fsub fast float -0.000000e+00, %5888
  %5951 = fsub fast float -0.000000e+00, %5889
  %5952 = fsub fast float -0.000000e+00, %5890
  %5953 = call float @dx.op.dot3.f32(i32 55, float %5750, float %5751, float %5752, float %5950, float %5951, float %5952)  ; Dot3(ax,ay,az,bx,by,bz)
  %5954 = fsub fast float -0.000000e+00, %5953
  %5955 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %5874, float %5950, float %5951, float %5952)  ; Dot3(ax,ay,az,bx,by,bz)
  %5956 = fadd fast float %5955, %5847
  %5957 = fadd fast float %5846, %5955
  %5958 = fsub fast float -0.000000e+00, %5957
  %5959 = fcmp ogt float %5953, -0.000000e+00
  %5960 = select i1 %5959, float %5958, float %5956
  %5961 = call float @dx.op.unary.f32(i32 6, float %5954)  ; FAbs(value)
  %5962 = fdiv fast float 1.000000e+00, %5961
  %5963 = fmul fast float %5960, %5962
  %5964 = call float @dx.op.binary.f32(i32 35, float %5963, float 0.000000e+00)  ; FMax(a,b)
  %5965 = call float @dx.op.binary.f32(i32 36, float %5949, float %5964)  ; FMin(a,b)
  %5966 = call float @dx.op.binary.f32(i32 36, float %5934, float %5965)  ; FMin(a,b)
  %5967 = fmul fast float %5966, %5750
  %5968 = fmul fast float %5966, %5751
  %5969 = fmul fast float %5966, %5752
  %5970 = fadd fast float %5967, %156
  %5971 = fadd fast float %5968, %157
  %5972 = fadd fast float %5969, %158
  %5973 = fsub fast float %5970, %5816
  %5974 = fsub fast float %5971, %5817
  %5975 = fsub fast float %5972, %5818
  br label %5983

; <label>:5976                                    ; preds = %5918
  %5977 = fmul fast float %5750, 8.096000e+03
  %5978 = fmul fast float %5751, 8.096000e+03
  %5979 = fmul fast float %5752, 8.096000e+03
  %5980 = fadd fast float %5977, %156
  %5981 = fadd fast float %5978, %157
  %5982 = fadd fast float %5979, %158
  br label %5983

; <label>:5983                                    ; preds = %5976, %5919
  %5984 = phi float [ %5750, %5976 ], [ %5973, %5919 ]
  %5985 = phi float [ %5751, %5976 ], [ %5974, %5919 ]
  %5986 = phi float [ %5752, %5976 ], [ %5975, %5919 ]
  %5987 = phi float [ %5980, %5976 ], [ %5970, %5919 ]
  %5988 = phi float [ %5981, %5976 ], [ %5971, %5919 ]
  %5989 = phi float [ %5982, %5976 ], [ %5972, %5919 ]
  %5990 = fcmp fast olt float %5835, 1.000000e+00
  br i1 %5990, label %5991, label %6022, !dx.controlflow.hints !85

; <label>:5991                                    ; preds = %5983
  %5992 = fmul fast float %5986, %5833
  %5993 = fmul fast float %5985, %5834
  %5994 = fsub fast float %5992, %5993
  %5995 = fmul fast float %5984, %5834
  %5996 = fmul fast float %5986, %5832
  %5997 = fsub fast float %5995, %5996
  %5998 = fmul fast float %5985, %5832
  %5999 = fmul fast float %5984, %5833
  %6000 = fsub fast float %5998, %5999
  %6001 = fmul fast float %5994, 2.000000e+00
  %6002 = fmul fast float %5997, 2.000000e+00
  %6003 = fmul fast float %6000, 2.000000e+00
  %6004 = fmul fast float %6001, %5835
  %6005 = fmul fast float %6002, %5835
  %6006 = fmul fast float %6003, %5835
  %6007 = fmul fast float %6003, %5833
  %6008 = fmul fast float %6002, %5834
  %6009 = fmul fast float %6001, %5834
  %6010 = fmul fast float %6003, %5832
  %6011 = fmul fast float %6002, %5832
  %6012 = fmul fast float %6001, %5833
  %6013 = fadd fast float %6007, %5984
  %6014 = fadd fast float %6013, %6004
  %6015 = fsub fast float %6014, %6008
  %6016 = fsub fast float %5985, %6010
  %6017 = fadd fast float %6016, %6005
  %6018 = fadd fast float %6017, %6009
  %6019 = fadd fast float %6006, %5986
  %6020 = fsub fast float %6019, %6012
  %6021 = fadd fast float %6020, %6011
  br label %6022

; <label>:6022                                    ; preds = %5991, %5983
  %6023 = phi float [ %6015, %5991 ], [ %5984, %5983 ]
  %6024 = phi float [ %6018, %5991 ], [ %5985, %5983 ]
  %6025 = phi float [ %6021, %5991 ], [ %5986, %5983 ]
  br i1 %5861, label %6057, label %6026

; <label>:6026                                    ; preds = %6022
  %6027 = fmul fast float %5129, 0x400187C840000000
  %6028 = fadd fast float %6027, 0xC00EFC2120000000
  %6029 = fmul fast float %6028, %5129
  %6030 = fadd fast float %6029, 0x3FE5D16340000000
  %6031 = fmul fast float %6030, %5129
  %6032 = fadd fast float %6031, 1.000000e+00
  %6033 = call float @dx.op.unary.f32(i32 7, float %6032)  ; Saturate(value)
  %6034 = fsub fast float %5987, %156
  %6035 = fsub fast float %5988, %157
  %6036 = fsub fast float %5989, %158
  %6037 = fsub fast float %5987, %5816
  %6038 = fsub fast float %5988, %5817
  %6039 = fsub fast float %5989, %5818
  %6040 = call float @dx.op.dot3.f32(i32 55, float %6034, float %6035, float %6036, float %6034, float %6035, float %6036)  ; Dot3(ax,ay,az,bx,by,bz)
  %6041 = call float @dx.op.dot3.f32(i32 55, float %6037, float %6038, float %6039, float %6037, float %6038, float %6039)  ; Dot3(ax,ay,az,bx,by,bz)
  %6042 = fadd fast float %6041, 0x3EE4F8B580000000
  %6043 = fdiv fast float %6040, %6042
  %6044 = bitcast float %6043 to i32
  %6045 = ashr i32 %6044, 1
  %6046 = add nsw i32 %6045, 532487669
  %6047 = bitcast i32 %6046 to float
  %6048 = fmul fast float %6047, %6033
  %6049 = call float @dx.op.unary.f32(i32 7, float %6048)  ; Saturate(value)
  %6050 = fmul fast float %6049, 0x4009981AE0000000
  %6051 = fsub fast float 0x40111BBD80000000, %6050
  %6052 = fmul fast float %6051, %6049
  %6053 = fadd fast float %6052, 0xC0009F6020000000
  %6054 = fmul fast float %6053, %6049
  %6055 = fadd fast float %6054, 1.000000e+00
  %6056 = call float @dx.op.unary.f32(i32 7, float %6055)  ; Saturate(value)
  br label %6060

; <label>:6057                                    ; preds = %6022
  %6058 = icmp ne i32 %5862, -1
  %6059 = zext i1 %6058 to i32
  br label %6060

; <label>:6060                                    ; preds = %6057, %6026
  %6061 = phi float [ %5129, %6057 ], [ %6056, %6026 ]
  %6062 = phi i32 [ %6059, %6057 ], [ 0, %6026 ]
  %6063 = fmul float %6061, 5.000000e+00
  %6064 = fsub float 5.000000e+00, %6063
  %6065 = icmp ne i32 %6062, 0
  %6066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6067 = extractvalue %dx.types.CBufRet.f32 %6066, 3
  %6068 = fadd fast float %6067, %6064
  %6069 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6068)  ; FMax(a,b)
  %6070 = call float @dx.op.unary.f32(i32 6, float %6023)  ; FAbs(value)
  %6071 = call float @dx.op.unary.f32(i32 6, float %6024)  ; FAbs(value)
  %6072 = fadd fast float %6071, %6070
  %6073 = call float @dx.op.unary.f32(i32 6, float %6025)  ; FAbs(value)
  %6074 = fadd fast float %6072, %6073
  %6075 = fcmp fast oeq float %6074, 0.000000e+00
  %6076 = fdiv fast float 1.000000e+00, %6074
  %6077 = select i1 %6075, float 1.000000e+00, float %6076
  %6078 = fmul fast float %6077, %6023
  %6079 = fmul fast float %6077, %6024
  %6080 = call float @dx.op.unary.f32(i32 6, float %6079)  ; FAbs(value)
  %6081 = call float @dx.op.unary.f32(i32 6, float %6078)  ; FAbs(value)
  %6082 = fsub fast float 1.000000e+00, %6080
  %6083 = fsub fast float 1.000000e+00, %6081
  %6084 = fcmp fast oge float %6078, 0.000000e+00
  %6085 = fcmp fast oge float %6079, 0.000000e+00
  %6086 = select i1 %6084, float 1.000000e+00, float -1.000000e+00
  %6087 = select i1 %6085, float 1.000000e+00, float -1.000000e+00
  %6088 = fcmp fast ole float %6025, 0.000000e+00
  %6089 = fmul fast float %6086, %6082
  %6090 = fmul fast float %6087, %6083
  %6091 = select i1 %6088, float %6089, float %6078
  %6092 = select i1 %6088, float %6090, float %6079
  %6093 = fmul fast float %6091, 5.000000e-01
  %6094 = fmul fast float %6092, 5.000000e-01
  %6095 = fadd fast float %6093, 5.000000e-01
  %6096 = fadd fast float %6094, 5.000000e-01
  %6097 = uitofp i32 %5859 to float
  %6098 = call float @dx.op.binary.f32(i32 36, float %6069, float 3.000000e+00)  ; FMin(a,b)
  %6099 = fadd fast float %6098, 2.000000e+00
  %6100 = call float @dx.op.unary.f32(i32 21, float %6099)  ; Exp(value)
  %6101 = extractvalue %dx.types.CBufRet.f32 %6066, 1
  %6102 = fmul fast float %6101, %6100
  %6103 = fmul fast float %6102, 2.000000e+00
  %6104 = fsub fast float 1.000000e+00, %6103
  %6105 = fmul fast float %6095, %6104
  %6106 = fmul fast float %6096, %6104
  %6107 = fadd fast float %6105, %6102
  %6108 = fadd fast float %6106, %6102
  %6109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %41, float %6107, float %6108, float %6097, float undef, i32 0, i32 0, i32 undef, float %6069)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6110 = extractvalue %dx.types.ResRet.f32 %6109, 0
  %6111 = extractvalue %dx.types.ResRet.f32 %6109, 1
  %6112 = extractvalue %dx.types.ResRet.f32 %6109, 2
  %6113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6114 = extractvalue %dx.types.CBufRet.f32 %6113, 3
  %6115 = fmul fast float %6114, %5829
  %6116 = call float @dx.op.binary.f32(i32 36, float %5572, float %6115)  ; FMin(a,b)
  %6117 = select i1 %6065, float %6116, float %6115
  %6118 = fmul fast float %6110, %5907
  %6119 = fmul fast float %6118, %6117
  %6120 = fmul fast float %6111, %5907
  %6121 = fmul fast float %6120, %6117
  %6122 = fmul fast float %6112, %5907
  %6123 = fmul fast float %6122, %6117
  %6124 = fadd fast float %6119, %5801
  %6125 = fadd fast float %6121, %5802
  %6126 = fadd fast float %6123, %5803
  %6127 = fmul fast float %5987, %5907
  %6128 = fmul fast float %5988, %5907
  %6129 = fmul fast float %5989, %5907
  %6130 = fadd fast float %6127, %5806
  %6131 = fadd fast float %6128, %5807
  %6132 = fadd fast float %6129, %5808
  %6133 = fsub fast float %5804, %5907
  br label %5909

; <label>:6134                                    ; preds = %5909
  br label %6135

; <label>:6135                                    ; preds = %6134, %5767
  %6136 = phi float [ %5768, %5767 ], [ %5910, %6134 ]
  %6137 = phi float [ %5769, %5767 ], [ %5911, %6134 ]
  %6138 = phi float [ %5770, %5767 ], [ %5912, %6134 ]
  %6139 = phi float [ %5771, %5767 ], [ %5913, %6134 ]
  %6140 = phi float [ %5773, %5767 ], [ %5914, %6134 ]
  %6141 = phi float [ %5774, %5767 ], [ %5915, %6134 ]
  %6142 = phi float [ %5775, %5767 ], [ %5916, %6134 ]
  %6143 = add i32 %5772, 1
  %6144 = icmp ugt i32 %6143, %5764
  br i1 %6144, label %6145, label %5767, !llvm.loop !86

; <label>:6145                                    ; preds = %6135
  br label %6146

; <label>:6146                                    ; preds = %6145, %5749
  %6147 = phi float [ 0.000000e+00, %5749 ], [ %6136, %6145 ]
  %6148 = phi float [ 0.000000e+00, %5749 ], [ %6137, %6145 ]
  %6149 = phi float [ 0.000000e+00, %5749 ], [ %6138, %6145 ]
  %6150 = phi float [ 0.000000e+00, %5749 ], [ %6140, %6145 ]
  %6151 = phi float [ 0.000000e+00, %5749 ], [ %6141, %6145 ]
  %6152 = phi float [ 0.000000e+00, %5749 ], [ %6142, %6145 ]
  %6153 = call float @dx.op.dot3.f32(i32 55, float %6147, float %6148, float %6149, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6154 = select i1 %217, float 0.000000e+00, float %6147
  %6155 = select i1 %217, float %6153, float %6148
  %6156 = select i1 %217, float 0.000000e+00, float %6149
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  %6159 = extractvalue %dx.types.CBufRet.f32 %6157, 1
  %6160 = extractvalue %dx.types.CBufRet.f32 %6157, 2
  %6161 = extractvalue %dx.types.CBufRet.f32 %6157, 3
  %6162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %6163 = extractvalue %dx.types.CBufRet.f32 %6162, 0
  %6164 = extractvalue %dx.types.CBufRet.f32 %6162, 1
  %6165 = extractvalue %dx.types.CBufRet.f32 %6162, 2
  %6166 = extractvalue %dx.types.CBufRet.f32 %6162, 3
  %6167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %6168 = extractvalue %dx.types.CBufRet.f32 %6167, 0
  %6169 = extractvalue %dx.types.CBufRet.f32 %6167, 1
  %6170 = extractvalue %dx.types.CBufRet.f32 %6167, 2
  %6171 = extractvalue %dx.types.CBufRet.f32 %6167, 3
  %6172 = call float @dx.op.dot3.f32(i32 55, float %6168, float %6169, float %6170, float %5517, float %5518, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %6173 = call float @dx.op.dot3.f32(i32 55, float %6150, float %6151, float %6152, float %6168, float %6169, float %6170)  ; Dot3(ax,ay,az,bx,by,bz)
  %6174 = call float @dx.op.dot3.f32(i32 55, float %156, float %157, float %158, float %6168, float %6169, float %6170)  ; Dot3(ax,ay,az,bx,by,bz)
  %6175 = fadd fast float %5129, -1.000000e+00
  %6176 = fsub fast float %6173, %6174
  %6177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6178 = extractvalue %dx.types.CBufRet.f32 %6177, 2
  %6179 = fmul fast float %6178, %6173
  %6180 = fdiv fast float 1.600000e+02, %6179
  %6181 = fmul fast float %6175, %6175
  %6182 = fmul fast float %6181, 0xBFB5B17960000000
  %6183 = fmul fast float %6182, %6176
  %6184 = fmul fast float %6183, %6180
  %6185 = call float @dx.op.unary.f32(i32 21, float %6184)  ; Exp(value)
  %6186 = fmul fast float %6185, 0x3FF04B2960000000
  %6187 = fsub fast float 0x3FF04B2960000000, %6186
  %6188 = call float @dx.op.unary.f32(i32 7, float %6187)  ; Saturate(value)
  %6189 = fmul fast float %6188, 4.000000e+00
  %6190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6190, 0
  %6192 = extractvalue %dx.types.CBufRet.f32 %6190, 1
  %6193 = extractvalue %dx.types.CBufRet.f32 %6190, 2
  %6194 = fadd fast float %6191, %6150
  %6195 = fadd fast float %6192, %6151
  %6196 = fadd fast float %6193, %6152
  %6197 = fmul fast float %6194, %6158
  %6198 = call float @dx.op.tertiary.f32(i32 46, float %6195, float %6159, float %6197)  ; FMad(a,b,c)
  %6199 = call float @dx.op.tertiary.f32(i32 46, float %6196, float %6160, float %6198)  ; FMad(a,b,c)
  %6200 = fadd fast float %6199, %6161
  %6201 = fmul fast float %6194, %6163
  %6202 = call float @dx.op.tertiary.f32(i32 46, float %6195, float %6164, float %6201)  ; FMad(a,b,c)
  %6203 = call float @dx.op.tertiary.f32(i32 46, float %6196, float %6165, float %6202)  ; FMad(a,b,c)
  %6204 = fadd fast float %6203, %6166
  %6205 = fmul fast float %6194, %6168
  %6206 = call float @dx.op.tertiary.f32(i32 46, float %6195, float %6169, float %6205)  ; FMad(a,b,c)
  %6207 = call float @dx.op.tertiary.f32(i32 46, float %6196, float %6170, float %6206)  ; FMad(a,b,c)
  %6208 = fadd fast float %6207, %6171
  %6209 = fdiv fast float %6200, %6208
  %6210 = fdiv fast float %6204, %6208
  %6211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %6212 = extractvalue %dx.types.CBufRet.f32 %6211, 0
  %6213 = extractvalue %dx.types.CBufRet.f32 %6211, 1
  %6214 = fmul fast float %6212, %6209
  %6215 = fmul fast float %6213, %6210
  %6216 = extractvalue %dx.types.CBufRet.f32 %6211, 2
  %6217 = extractvalue %dx.types.CBufRet.f32 %6211, 3
  %6218 = fadd fast float %6214, %6216
  %6219 = fadd fast float %6215, %6217
  %6220 = fmul fast float %6172, 8.000000e+00
  %6221 = call float @dx.op.unary.f32(i32 7, float %6220)  ; Saturate(value)
  %6222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %6223 = extractvalue %dx.types.CBufRet.f32 %6222, 0
  %6224 = fmul fast float %6218, 2.000000e+00
  %6225 = fmul fast float %6219, 2.000000e+00
  %6226 = fadd fast float %6224, -1.000000e+00
  %6227 = fadd fast float %6225, -1.000000e+00
  %6228 = fmul fast float %6226, %6226
  %6229 = fsub fast float 1.000000e+00, %6228
  %6230 = call float @dx.op.unary.f32(i32 7, float %6229)  ; Saturate(value)
  %6231 = fmul fast float %6227, %6227
  %6232 = fsub fast float 1.000000e+00, %6231
  %6233 = call float @dx.op.unary.f32(i32 7, float %6232)  ; Saturate(value)
  %6234 = fmul fast float %6223, %6230
  %6235 = fmul fast float %6234, %6233
  %6236 = call float @dx.op.unary.f32(i32 7, float %6235)  ; Saturate(value)
  %6237 = fmul fast float %6236, %6221
  %6238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %6218, float %6219, float undef, float undef, i32 0, i32 0, i32 undef, float %6189)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6239 = extractvalue %dx.types.ResRet.f32 %6238, 0
  %6240 = extractvalue %dx.types.ResRet.f32 %6238, 1
  %6241 = extractvalue %dx.types.ResRet.f32 %6238, 2
  %6242 = select i1 %217, float 0.000000e+00, float %6240
  %6243 = select i1 %217, float 0.000000e+00, float %6241
  %6244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6245 = extractvalue %dx.types.CBufRet.f32 %6244, 2
  %6246 = fmul fast float %6245, %6239
  %6247 = fmul fast float %6242, %6245
  %6248 = fmul fast float %6243, %6245
  %6249 = fsub fast float %6246, %6154
  %6250 = fsub fast float %6247, %6155
  %6251 = fsub fast float %6248, %6156
  %6252 = fmul fast float %6249, %6237
  %6253 = fmul fast float %6250, %6237
  %6254 = fmul fast float %6251, %6237
  %6255 = fadd fast float %6252, %6154
  %6256 = fadd fast float %6253, %6155
  %6257 = fadd fast float %6254, %6156
  br label %6258

; <label>:6258                                    ; preds = %6146, %5685
  %6259 = phi float [ %5631, %5685 ], [ %6255, %6146 ]
  %6260 = phi float [ %5632, %5685 ], [ %6256, %6146 ]
  %6261 = phi float [ %5633, %5685 ], [ %6257, %6146 ]
  %6262 = fmul fast float %5691, %5627
  %6263 = fmul fast float %5691, %5628
  %6264 = fmul fast float %5691, %5629
  %6265 = call float @dx.op.dot3.f32(i32 55, float %5120, float %5121, float %5122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6266 = fcmp fast ogt float %6265, 0x3E7FF19E20000000
  %6267 = fdiv fast float 1.000000e+00, %6265
  %6268 = select i1 %6266, float %6267, float 0.000000e+00
  %6269 = fmul fast float %6268, %5120
  %6270 = fmul fast float %6268, %5121
  %6271 = fmul fast float %6268, %5122
  %6272 = fadd fast float %6269, -1.000000e+00
  %6273 = fadd fast float %6270, -1.000000e+00
  %6274 = fadd fast float %6271, -1.000000e+00
  %6275 = fmul fast float %6272, 5.000000e-01
  %6276 = fmul fast float %6273, 5.000000e-01
  %6277 = fmul fast float %6274, 5.000000e-01
  %6278 = fadd fast float %6275, 1.000000e+00
  %6279 = fadd fast float %6276, 1.000000e+00
  %6280 = fadd fast float %6277, 1.000000e+00
  %6281 = call float @dx.op.binary.f32(i32 35, float %5511, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6282 = fdiv fast float %4229, %6281
  %6283 = fcmp fast olt float %4846, 1.270000e+02
  %6284 = fcmp fast olt float %4847, 1.270000e+02
  %6285 = fcmp fast olt float %4848, 1.270000e+02
  %6286 = fmul fast float %4846, 0xBFF7154760000000
  %6287 = fmul fast float %6286, %6282
  %6288 = fmul fast float %4847, 0xBFF7154760000000
  %6289 = fmul fast float %6288, %6282
  %6290 = fmul fast float %4848, 0xBFF7154760000000
  %6291 = fmul fast float %6290, %6282
  %6292 = call float @dx.op.unary.f32(i32 21, float %6287)  ; Exp(value)
  %6293 = call float @dx.op.unary.f32(i32 21, float %6289)  ; Exp(value)
  %6294 = call float @dx.op.unary.f32(i32 21, float %6291)  ; Exp(value)
  %6295 = call float @dx.op.unary.f32(i32 7, float %6292)  ; Saturate(value)
  %6296 = call float @dx.op.unary.f32(i32 7, float %6293)  ; Saturate(value)
  %6297 = call float @dx.op.unary.f32(i32 7, float %6294)  ; Saturate(value)
  %6298 = select i1 %6283, float %6295, float 0.000000e+00
  %6299 = select i1 %6284, float %6296, float 0.000000e+00
  %6300 = select i1 %6285, float %6297, float 0.000000e+00
  %6301 = fmul fast float %6298, %5691
  %6302 = fmul fast float %6299, %5691
  %6303 = fmul fast float %6300, %5691
  %6304 = fadd fast float %6301, -1.000000e+00
  %6305 = fadd fast float %6302, -1.000000e+00
  %6306 = fadd fast float %6303, -1.000000e+00
  %6307 = fmul fast float %6259, %5686
  %6308 = fmul fast float %6260, %5687
  %6309 = fmul fast float %6261, %5688
  %6310 = fsub fast float 1.000000e+00, %5511
  %6311 = bitcast float %6310 to i32
  %6312 = sitofp i32 %6311 to float
  %6313 = fmul fast float %6312, 5.000000e+00
  %6314 = fadd fast float %6313, 0xC1EFBF8940000000
  %6315 = fptosi float %6314 to i32
  %6316 = bitcast i32 %6315 to float
  %6317 = fmul fast float %6316, %4820
  %6318 = fmul fast float %5627, %6317
  %6319 = fmul fast float %6318, %5691
  %6320 = fmul fast float %6319, %6278
  %6321 = fmul fast float %5628, %6317
  %6322 = fmul fast float %6321, %5691
  %6323 = fmul fast float %6322, %6279
  %6324 = fmul fast float %5629, %6317
  %6325 = fmul fast float %6324, %5691
  %6326 = fmul fast float %6325, %6280
  %6327 = fmul fast float %6262, %4816
  %6328 = fmul fast float %6263, %4816
  %6329 = fmul fast float %6264, %4816
  %6330 = fadd fast float %6307, %4809
  %6331 = fadd fast float %6330, %6320
  %6332 = fmul fast float %6331, %4816
  %6333 = fadd fast float %6308, %4810
  %6334 = fadd fast float %6333, %6323
  %6335 = fmul fast float %6334, %4816
  %6336 = fadd fast float %6309, %4811
  %6337 = fadd fast float %6336, %6326
  %6338 = fmul fast float %6337, %4816
  %6339 = bitcast i32 %5535 to float
  %6340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6341 = extractvalue %dx.types.CBufRet.f32 %6340, 3
  %6342 = fcmp fast oeq float %6341, 0.000000e+00
  br i1 %6342, label %7821, label %6343

; <label>:6343                                    ; preds = %6258
  %6344 = extractvalue %dx.types.CBufRet.f32 %6340, 0
  %6345 = extractvalue %dx.types.CBufRet.f32 %6340, 1
  %6346 = extractvalue %dx.types.CBufRet.f32 %6340, 2
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 0
  %6349 = extractvalue %dx.types.CBufRet.f32 %6347, 1
  %6350 = extractvalue %dx.types.CBufRet.f32 %6347, 2
  %6351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6352 = extractvalue %dx.types.CBufRet.f32 %6351, 0
  %6353 = extractvalue %dx.types.CBufRet.f32 %6351, 1
  %6354 = call float @dx.op.dot3.f32(i32 55, float %6348, float %6349, float %6350, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6355 = select i1 %217, float %6352, float %6348
  %6356 = select i1 %217, float %6354, float %6349
  %6357 = select i1 %217, float %6353, float %6350
  %6358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.f32 %6358, 2
  %6360 = fmul fast float %6359, %100
  %6361 = fmul fast float %6359, %101
  %6362 = fmul fast float %6359, %102
  %6363 = fadd fast float %6360, %156
  %6364 = fadd fast float %6361, %157
  %6365 = fadd fast float %6362, %158
  %6366 = fcmp fast olt float %6341, 0.000000e+00
  br i1 %6366, label %7462, label %6367

; <label>:6367                                    ; preds = %6343
  %6368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6369 = extractvalue %dx.types.CBufRet.f32 %6368, 0
  %6370 = extractvalue %dx.types.CBufRet.f32 %6368, 1
  %6371 = extractvalue %dx.types.CBufRet.f32 %6368, 2
  %6372 = extractvalue %dx.types.CBufRet.f32 %6368, 3
  %6373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6374 = extractvalue %dx.types.CBufRet.f32 %6373, 0
  %6375 = extractvalue %dx.types.CBufRet.f32 %6373, 1
  %6376 = extractvalue %dx.types.CBufRet.f32 %6373, 2
  %6377 = extractvalue %dx.types.CBufRet.f32 %6373, 3
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 0
  %6380 = extractvalue %dx.types.CBufRet.f32 %6378, 1
  %6381 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6382 = extractvalue %dx.types.CBufRet.f32 %6378, 3
  %6383 = fmul fast float %6369, %6363
  %6384 = call float @dx.op.tertiary.f32(i32 46, float %6364, float %6370, float %6383)  ; FMad(a,b,c)
  %6385 = call float @dx.op.tertiary.f32(i32 46, float %6365, float %6371, float %6384)  ; FMad(a,b,c)
  %6386 = fadd fast float %6385, %6372
  %6387 = fmul fast float %6374, %6363
  %6388 = call float @dx.op.tertiary.f32(i32 46, float %6364, float %6375, float %6387)  ; FMad(a,b,c)
  %6389 = call float @dx.op.tertiary.f32(i32 46, float %6365, float %6376, float %6388)  ; FMad(a,b,c)
  %6390 = fadd fast float %6389, %6377
  %6391 = fmul fast float %6379, %6363
  %6392 = call float @dx.op.tertiary.f32(i32 46, float %6364, float %6380, float %6391)  ; FMad(a,b,c)
  %6393 = call float @dx.op.tertiary.f32(i32 46, float %6365, float %6381, float %6392)  ; FMad(a,b,c)
  %6394 = fadd fast float %6393, %6382
  %6395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6396 = extractvalue %dx.types.CBufRet.f32 %6395, 0
  %6397 = extractvalue %dx.types.CBufRet.f32 %6395, 1
  %6398 = extractvalue %dx.types.CBufRet.f32 %6395, 3
  %6399 = fmul fast float %6398, %6386
  %6400 = fmul fast float %6398, %6390
  %6401 = fadd fast float %6399, %6396
  %6402 = fadd fast float %6400, %6397
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.CBufRet.f32 %6403, 3
  %6407 = fmul fast float %6406, %6386
  %6408 = fmul fast float %6406, %6390
  %6409 = fadd fast float %6407, %6404
  %6410 = fadd fast float %6408, %6405
  %6411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6411, 1
  %6413 = fsub fast float %6412, %6394
  %6414 = extractvalue %dx.types.CBufRet.f32 %6411, 2
  %6415 = fmul fast float %6413, %6414
  %6416 = fsub fast float 1.000000e+00, %6415
  %6417 = call float @dx.op.unary.f32(i32 7, float %6416)  ; Saturate(value)
  %6418 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6420 = extractvalue %dx.types.CBufRet.f32 %6419, 2
  %6421 = fadd fast float %6420, %6418
  %6422 = fcmp fast ogt float %6421, 0.000000e+00
  br i1 %6422, label %6423, label %6447

; <label>:6423                                    ; preds = %6367
  %6424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6424, 0
  %6426 = extractvalue %dx.types.CBufRet.f32 %6424, 1
  %6427 = fsub fast float %6409, %6425
  %6428 = fsub fast float %6410, %6426
  %6429 = fcmp fast olt float %6427, 0.000000e+00
  %6430 = fcmp fast olt float %6428, 0.000000e+00
  %6431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6432 = extractvalue %dx.types.CBufRet.f32 %6431, 0
  %6433 = extractvalue %dx.types.CBufRet.f32 %6431, 1
  %6434 = extractvalue %dx.types.CBufRet.f32 %6431, 2
  %6435 = extractvalue %dx.types.CBufRet.f32 %6431, 3
  %6436 = select i1 %6429, float %6432, float %6434
  %6437 = select i1 %6430, float %6433, float %6435
  %6438 = fmul fast float %6436, %6427
  %6439 = fmul fast float %6437, %6428
  %6440 = call float @dx.op.unary.f32(i32 6, float %6438)  ; FAbs(value)
  %6441 = call float @dx.op.unary.f32(i32 6, float %6439)  ; FAbs(value)
  %6442 = extractvalue %dx.types.CBufRet.f32 %6358, 0
  %6443 = call float @dx.op.binary.f32(i32 35, float %6440, float %6441)  ; FMax(a,b)
  %6444 = fsub fast float %6442, %6443
  %6445 = call float @dx.op.unary.f32(i32 7, float %6444)  ; Saturate(value)
  %6446 = fmul fast float %6445, %6417
  br label %6447

; <label>:6447                                    ; preds = %6423, %6367
  %6448 = phi float [ %6446, %6423 ], [ 0.000000e+00, %6367 ]
  %6449 = extractvalue %dx.types.CBufRet.f32 %6395, 2
  %6450 = extractvalue %dx.types.CBufRet.f32 %6419, 1
  %6451 = fadd fast float %6450, %6449
  %6452 = fcmp fast ogt float %6451, 0.000000e+00
  %6453 = extractvalue %dx.types.CBufRet.f32 %6358, 0
  br i1 %6452, label %6454, label %6477

; <label>:6454                                    ; preds = %6447
  %6455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6456 = extractvalue %dx.types.CBufRet.f32 %6455, 0
  %6457 = extractvalue %dx.types.CBufRet.f32 %6455, 1
  %6458 = fsub fast float %6401, %6456
  %6459 = fsub fast float %6402, %6457
  %6460 = fcmp fast olt float %6458, 0.000000e+00
  %6461 = fcmp fast olt float %6459, 0.000000e+00
  %6462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6463 = extractvalue %dx.types.CBufRet.f32 %6462, 0
  %6464 = extractvalue %dx.types.CBufRet.f32 %6462, 1
  %6465 = extractvalue %dx.types.CBufRet.f32 %6462, 2
  %6466 = extractvalue %dx.types.CBufRet.f32 %6462, 3
  %6467 = select i1 %6460, float %6463, float %6465
  %6468 = select i1 %6461, float %6464, float %6466
  %6469 = fmul fast float %6467, %6458
  %6470 = fmul fast float %6468, %6459
  %6471 = call float @dx.op.unary.f32(i32 6, float %6469)  ; FAbs(value)
  %6472 = call float @dx.op.unary.f32(i32 6, float %6470)  ; FAbs(value)
  %6473 = call float @dx.op.binary.f32(i32 35, float %6471, float %6472)  ; FMax(a,b)
  %6474 = fsub fast float %6453, %6473
  %6475 = call float @dx.op.unary.f32(i32 7, float %6474)  ; Saturate(value)
  %6476 = fmul fast float %6475, %6417
  br label %6477

; <label>:6477                                    ; preds = %6454, %6447
  %6478 = phi float [ %6476, %6454 ], [ 0.000000e+00, %6447 ]
  %6479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6480 = extractvalue %dx.types.CBufRet.f32 %6479, 1
  %6481 = call float @dx.op.unary.f32(i32 7, float %6480)  ; Saturate(value)
  %6482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.f32 %6482, 0
  %6484 = extractvalue %dx.types.CBufRet.f32 %6482, 1
  %6485 = fsub fast float %6386, %6483
  %6486 = fsub fast float %6390, %6484
  %6487 = fcmp fast olt float %6485, 0.000000e+00
  %6488 = fcmp fast olt float %6486, 0.000000e+00
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 0
  %6491 = extractvalue %dx.types.CBufRet.f32 %6489, 1
  %6492 = extractvalue %dx.types.CBufRet.f32 %6489, 2
  %6493 = extractvalue %dx.types.CBufRet.f32 %6489, 3
  %6494 = select i1 %6487, float %6490, float %6492
  %6495 = select i1 %6488, float %6491, float %6493
  %6496 = fmul fast float %6494, %6485
  %6497 = fmul fast float %6495, %6486
  %6498 = call float @dx.op.unary.f32(i32 6, float %6496)  ; FAbs(value)
  %6499 = call float @dx.op.unary.f32(i32 6, float %6497)  ; FAbs(value)
  %6500 = call float @dx.op.binary.f32(i32 35, float %6498, float %6499)  ; FMax(a,b)
  %6501 = fsub fast float %6453, %6500
  %6502 = call float @dx.op.unary.f32(i32 7, float %6501)  ; Saturate(value)
  %6503 = call float @dx.op.binary.f32(i32 36, float %6502, float %6481)  ; FMin(a,b)
  %6504 = fmul fast float %6503, %6417
  %6505 = fsub fast float %6478, %6504
  %6506 = fsub fast float %6448, %6478
  %6507 = fsub fast float %6506, %6504
  %6508 = call float @dx.op.binary.f32(i32 35, float %6504, float %6478)  ; FMax(a,b)
  %6509 = call float @dx.op.binary.f32(i32 35, float %6508, float %6448)  ; FMax(a,b)
  %6510 = fcmp fast olt float %6509, 1.000000e+00
  br i1 %6510, label %6511, label %6909, !dx.controlflow.hints !88

; <label>:6511                                    ; preds = %6477
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 0
  %6514 = fcmp fast une float %6513, 0.000000e+00
  br i1 %6514, label %6515, label %6909, !dx.controlflow.hints !89

; <label>:6515                                    ; preds = %6511
  %6516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6517 = extractvalue %dx.types.CBufRet.f32 %6516, 0
  %6518 = extractvalue %dx.types.CBufRet.f32 %6516, 1
  %6519 = extractvalue %dx.types.CBufRet.f32 %6516, 2
  %6520 = extractvalue %dx.types.CBufRet.f32 %6516, 3
  %6521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6522 = extractvalue %dx.types.CBufRet.f32 %6521, 0
  %6523 = extractvalue %dx.types.CBufRet.f32 %6521, 1
  %6524 = extractvalue %dx.types.CBufRet.f32 %6521, 2
  %6525 = extractvalue %dx.types.CBufRet.f32 %6521, 3
  %6526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6527 = extractvalue %dx.types.CBufRet.f32 %6526, 0
  %6528 = extractvalue %dx.types.CBufRet.f32 %6526, 1
  %6529 = extractvalue %dx.types.CBufRet.f32 %6526, 2
  %6530 = extractvalue %dx.types.CBufRet.f32 %6526, 3
  %6531 = fmul fast float %6517, %6363
  %6532 = call float @dx.op.tertiary.f32(i32 46, float %6364, float %6518, float %6531)  ; FMad(a,b,c)
  %6533 = call float @dx.op.tertiary.f32(i32 46, float %6365, float %6519, float %6532)  ; FMad(a,b,c)
  %6534 = fadd fast float %6533, %6520
  %6535 = fmul fast float %6522, %6363
  %6536 = call float @dx.op.tertiary.f32(i32 46, float %6364, float %6523, float %6535)  ; FMad(a,b,c)
  %6537 = call float @dx.op.tertiary.f32(i32 46, float %6365, float %6524, float %6536)  ; FMad(a,b,c)
  %6538 = fadd fast float %6537, %6525
  %6539 = fmul fast float %6527, %6363
  %6540 = call float @dx.op.tertiary.f32(i32 46, float %6364, float %6528, float %6539)  ; FMad(a,b,c)
  %6541 = call float @dx.op.tertiary.f32(i32 46, float %6365, float %6529, float %6540)  ; FMad(a,b,c)
  %6542 = fadd fast float %6541, %6530
  %6543 = fcmp fast oge float %6534, 1.000000e+00
  %6544 = fcmp fast oge float %6538, 1.000000e+00
  %6545 = or i1 %6543, %6544
  %6546 = fcmp fast olt float %6534, 0.000000e+00
  %6547 = fcmp fast olt float %6538, 0.000000e+00
  %6548 = or i1 %6546, %6547
  %6549 = or i1 %6545, %6548
  br i1 %6549, label %6909, label %6550, !dx.controlflow.hints !90

; <label>:6550                                    ; preds = %6515
  %6551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6552 = extractvalue %dx.types.CBufRet.f32 %6551, 0
  %6553 = extractvalue %dx.types.CBufRet.f32 %6551, 1
  %6554 = extractvalue %dx.types.CBufRet.f32 %6551, 2
  %6555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6556 = extractvalue %dx.types.CBufRet.i32 %6555, 2
  %6557 = uitofp i32 %6556 to float
  %6558 = extractvalue %dx.types.CBufRet.i32 %6555, 3
  %6559 = uitofp i32 %6558 to float
  %6560 = extractvalue %dx.types.CBufRet.f32 %6551, 3
  %6561 = fmul fast float %6560, 2.000000e+00
  %6562 = fsub fast float %6534, %6552
  %6563 = fsub fast float %6538, %6553
  %6564 = fmul fast float %6561, %6562
  %6565 = fmul fast float %6561, %6563
  %6566 = fdiv fast float 1.000000e+00, %6346
  %6567 = fmul fast float %6565, %6566
  %6568 = call float @dx.op.unary.f32(i32 6, float %6567)  ; FAbs(value)
  %6569 = fmul fast float %6554, %6365
  %6570 = fmul fast float %6569, %6561
  %6571 = call float @dx.op.unary.f32(i32 6, float %6570)  ; FAbs(value)
  %6572 = call float @dx.op.unary.f32(i32 6, float %6564)  ; FAbs(value)
  %6573 = call float @dx.op.binary.f32(i32 35, float %6572, float %6571)  ; FMax(a,b)
  %6574 = call float @dx.op.binary.f32(i32 35, float %6573, float %6568)  ; FMax(a,b)
  %6575 = fmul fast float %6574, 2.000000e+00
  %6576 = call float @dx.op.unary.f32(i32 23, float %6575)  ; Log(value)
  %6577 = call float @dx.op.binary.f32(i32 35, float %6576, float %6557)  ; FMax(a,b)
  %6578 = call float @dx.op.unary.f32(i32 22, float %6577)  ; Frc(value)
  %6579 = fadd fast float %6578, 0xBFEA666660000000
  %6580 = fmul fast float %6579, 8.000000e+00
  %6581 = call float @dx.op.unary.f32(i32 7, float %6580)  ; Saturate(value)
  %6582 = call float @dx.op.unary.f32(i32 27, float %6577)  ; Round_ni(value)
  %6583 = fadd fast float %6582, %6581
  %6584 = call float @dx.op.binary.f32(i32 36, float %6583, float %6559)  ; FMin(a,b)
  %6585 = call float @dx.op.unary.f32(i32 27, float %6584)  ; Round_ni(value)
  %6586 = fsub fast float -0.000000e+00, %6585
  %6587 = call float @dx.op.unary.f32(i32 21, float %6586)  ; Exp(value)
  %6588 = fmul fast float %6587, %6561
  %6589 = fmul fast float %6588, %6534
  %6590 = fmul fast float %6588, %6538
  %6591 = fmul fast float %6589, 2.500000e-01
  %6592 = fmul fast float %6590, 2.500000e-01
  %6593 = fadd fast float %6591, 5.000000e-01
  %6594 = fadd fast float %6592, 5.000000e-01
  %6595 = fsub fast float %6559, %6557
  %6596 = fptoui float %6595 to i32
  %6597 = add i32 %6596, 320
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %6597)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 0
  %6600 = extractvalue %dx.types.CBufRet.f32 %6598, 1
  %6601 = fcmp fast une float %6584, %6559
  %6602 = fsub fast float %6534, %6599
  %6603 = fsub fast float %6538, %6600
  %6604 = call float @dx.op.unary.f32(i32 6, float %6602)  ; FAbs(value)
  %6605 = call float @dx.op.unary.f32(i32 6, float %6603)  ; FAbs(value)
  %6606 = fmul fast float %6604, %6588
  %6607 = fmul fast float %6605, %6588
  %6608 = fcmp fast olt float %6606, 1.000000e+00
  %6609 = fcmp fast olt float %6607, 1.000000e+00
  %6610 = and i1 %6608, %6609
  %6611 = or i1 %6601, %6610
  br i1 %6611, label %6612, label %6909, !dx.controlflow.hints !91

; <label>:6612                                    ; preds = %6550
  %6613 = fmul fast float %6590, 5.000000e-01
  %6614 = fmul fast float %6589, 5.000000e-01
  %6615 = fadd fast float %6613, 5.000000e-01
  %6616 = fadd fast float %6614, 5.000000e-01
  %6617 = sitofp i32 %6556 to float
  %6618 = fsub fast float %6584, %6617
  %6619 = call float @dx.op.unary.f32(i32 27, float %6618)  ; Round_ni(value)
  %6620 = call float @dx.op.unary.f32(i32 22, float %6584)  ; Frc(value)
  %6621 = call float @dx.op.unary.f32(i32 22, float %6616)  ; Frc(value)
  %6622 = call float @dx.op.unary.f32(i32 22, float %6615)  ; Frc(value)
  %6623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6621, float %6622, float %6619, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6624 = extractvalue %dx.types.ResRet.f32 %6623, 0
  %6625 = extractvalue %dx.types.ResRet.f32 %6623, 1
  %6626 = extractvalue %dx.types.ResRet.f32 %6623, 2
  %6627 = extractvalue %dx.types.ResRet.f32 %6623, 3
  %6628 = fcmp fast ogt float %6620, 0.000000e+00
  br i1 %6628, label %6629, label %6650, !dx.controlflow.hints !92

; <label>:6629                                    ; preds = %6612
  %6630 = fadd fast float %6619, 1.000000e+00
  %6631 = call float @dx.op.unary.f32(i32 22, float %6593)  ; Frc(value)
  %6632 = call float @dx.op.unary.f32(i32 22, float %6594)  ; Frc(value)
  %6633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6631, float %6632, float %6630, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6634 = extractvalue %dx.types.ResRet.f32 %6633, 0
  %6635 = extractvalue %dx.types.ResRet.f32 %6633, 1
  %6636 = extractvalue %dx.types.ResRet.f32 %6633, 2
  %6637 = extractvalue %dx.types.ResRet.f32 %6633, 3
  %6638 = fsub fast float %6634, %6624
  %6639 = fsub fast float %6635, %6625
  %6640 = fsub fast float %6636, %6626
  %6641 = fsub fast float %6637, %6627
  %6642 = fmul fast float %6638, %6620
  %6643 = fmul fast float %6639, %6620
  %6644 = fmul fast float %6640, %6620
  %6645 = fmul fast float %6641, %6620
  %6646 = fadd fast float %6642, %6624
  %6647 = fadd fast float %6643, %6625
  %6648 = fadd fast float %6644, %6626
  %6649 = fadd fast float %6645, %6627
  br label %6650

; <label>:6650                                    ; preds = %6629, %6612
  %6651 = phi float [ %6646, %6629 ], [ %6624, %6612 ]
  %6652 = phi float [ %6647, %6629 ], [ %6625, %6612 ]
  %6653 = phi float [ %6648, %6629 ], [ %6626, %6612 ]
  %6654 = phi float [ %6649, %6629 ], [ %6627, %6612 ]
  %6655 = fadd fast float %6651, -5.000000e-01
  %6656 = fadd fast float %6653, -5.000000e-01
  %6657 = fmul fast float %6655, 0xBFD5555560000000
  %6658 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6656, float %6657)  ; FMad(a,b,c)
  %6659 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6652, float 0.000000e+00)  ; FMad(a,b,c)
  %6660 = fadd fast float %6659, %6654
  %6661 = fmul fast float %6655, -7.500000e-01
  %6662 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6656, float %6661)  ; FMad(a,b,c)
  %6663 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6652, float 0.000000e+00)  ; FMad(a,b,c)
  %6664 = fadd fast float %6663, %6654
  %6665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6666 = extractvalue %dx.types.CBufRet.f32 %6665, 0
  %6667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6668 = extractvalue %dx.types.CBufRet.f32 %6667, 0
  %6669 = extractvalue %dx.types.CBufRet.f32 %6667, 1
  %6670 = extractvalue %dx.types.CBufRet.f32 %6667, 2
  %6671 = extractvalue %dx.types.CBufRet.f32 %6667, 3
  %6672 = fsub fast float %6668, %6658
  %6673 = fsub fast float %6669, %6660
  %6674 = fsub fast float %6670, %6662
  %6675 = fsub fast float %6671, %6664
  %6676 = fmul fast float %6672, %6666
  %6677 = fmul fast float %6673, %6666
  %6678 = fmul fast float %6674, %6666
  %6679 = fmul fast float %6675, %6666
  %6680 = fadd fast float %6676, %6658
  %6681 = fadd fast float %6677, %6660
  %6682 = fadd fast float %6678, %6662
  %6683 = fadd fast float %6679, %6664
  %6684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6685 = extractvalue %dx.types.ResRet.i32 %6684, 0
  %6686 = and i32 %6685, 536870911
  %6687 = uitofp i32 %6686 to float
  %6688 = fmul fast float %6687, %6534
  %6689 = fmul fast float %6687, %6538
  %6690 = fptoui float %6688 to i32
  %6691 = fptoui float %6689 to i32
  %6692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6693 = extractvalue %dx.types.ResRet.i32 %6692, 0
  %6694 = and i32 %6693, 31
  %6695 = lshr i32 %6690, %6694
  %6696 = lshr i32 %6691, %6694
  %6697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6698 = extractvalue %dx.types.ResRet.i32 %6697, 0
  %6699 = and i32 %6698, 31
  %6700 = shl i32 1, %6699
  %6701 = call i32 @dx.op.binary.i32(i32 40, i32 %6700, i32 4)  ; UMin(a,b)
  %6702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6703 = extractvalue %dx.types.ResRet.i32 %6702, 0
  %6704 = extractvalue %dx.types.ResRet.i32 %6702, 1
  %6705 = icmp eq i32 %6701, 0
  br i1 %6705, label %6747, label %6706

; <label>:6706                                    ; preds = %6650
  br label %6707

; <label>:6707                                    ; preds = %6735, %6706
  %6708 = phi i32 [ %6738, %6735 ], [ 0, %6706 ]
  %6709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6710 = extractvalue %dx.types.ResRet.i32 %6709, 0
  %6711 = lshr i32 %6710, 16
  %6712 = and i32 %6711, 31
  %6713 = shl i32 %6696, %6712
  %6714 = add i32 %6713, %6695
  %6715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6716 = extractvalue %dx.types.ResRet.i32 %6715, 0
  %6717 = and i32 %6716, 31
  %6718 = shl i32 %6714, %6717
  %6719 = add i32 %6718, %6708
  %6720 = shl i32 %6719, 2
  %6721 = add i32 %6720, 32
  %6722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6721, i32 undef)  ; BufferLoad(srv,index,wot)
  %6723 = extractvalue %dx.types.ResRet.i32 %6722, 0
  %6724 = icmp slt i32 %6723, 0
  %6725 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6708
  %6726 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %6708
  %6727 = bitcast float* %6725 to i32*
  %6728 = bitcast float* %6726 to i32*
  br i1 %6724, label %6729, label %6735

; <label>:6729                                    ; preds = %6707
  %6730 = and i32 %6723, 1073741823
  %6731 = add nuw nsw i32 %6730, 20
  %6732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6731, i32 undef)  ; BufferLoad(srv,index,wot)
  %6733 = extractvalue %dx.types.ResRet.i32 %6732, 0
  %6734 = extractvalue %dx.types.ResRet.i32 %6732, 1
  br label %6735

; <label>:6735                                    ; preds = %6729, %6707
  %6736 = phi i32 [ %6733, %6729 ], [ %6703, %6707 ]
  %6737 = phi i32 [ %6734, %6729 ], [ %6704, %6707 ]
  store i32 %6736, i32* %6727, align 4
  store i32 %6737, i32* %6728, align 4
  %6738 = add nuw i32 %6708, 1
  %6739 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.i32 %6739, 2
  %6741 = icmp eq i32 %6740, 0
  %6742 = icmp ugt i32 %6723, -1073741825
  %6743 = and i1 %6742, %6741
  %6744 = icmp ult i32 %6738, %6701
  %6745 = and i1 %6743, %6744
  br i1 %6745, label %6707, label %6746

; <label>:6746                                    ; preds = %6735
  br label %6747

; <label>:6747                                    ; preds = %6746, %6650
  %6748 = phi i32 [ 0, %6650 ], [ %6738, %6746 ]
  %6749 = extractvalue %dx.types.CBufRet.f32 %6512, 2
  %6750 = fptoui float %6749 to i32
  %6751 = icmp eq i32 %6750, 0
  br i1 %6751, label %6803, label %6752

; <label>:6752                                    ; preds = %6747
  br label %6753

; <label>:6753                                    ; preds = %6798, %6752
  %6754 = phi i32 [ %6799, %6798 ], [ %6748, %6752 ]
  %6755 = phi i32 [ %6800, %6798 ], [ 0, %6752 ]
  %6756 = lshr i32 %6755, 2
  %6757 = and i32 %6755, 3
  %6758 = add nuw nsw i32 %6756, 83
  %6759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 %6758)  ; CBufferLoadLegacy(handle,regIndex)
  %6760 = extractvalue %dx.types.CBufRet.i32 %6759, 0
  %6761 = extractvalue %dx.types.CBufRet.i32 %6759, 1
  %6762 = extractvalue %dx.types.CBufRet.i32 %6759, 2
  %6763 = extractvalue %dx.types.CBufRet.i32 %6759, 3
  %6764 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 0
  store i32 %6760, i32* %6764, align 4
  %6765 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 1
  store i32 %6761, i32* %6765, align 4
  %6766 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 2
  store i32 %6762, i32* %6766, align 4
  %6767 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 3
  store i32 %6763, i32* %6767, align 4
  %6768 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 %6757
  %6769 = load i32, i32* %6768, align 4, !tbaa !93, !noalias !97
  %6770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6771 = extractvalue %dx.types.ResRet.i32 %6770, 0
  %6772 = lshr i32 %6771, 16
  %6773 = and i32 %6772, 31
  %6774 = shl i32 %6696, %6773
  %6775 = add i32 %6774, %6695
  %6776 = shl i32 %6775, 2
  %6777 = add i32 %6776, %6769
  %6778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6777, i32 undef)  ; BufferLoad(srv,index,wot)
  %6779 = extractvalue %dx.types.ResRet.i32 %6778, 0
  %6780 = icmp eq i32 %6779, 0
  br i1 %6780, label %6798, label %6781

; <label>:6781                                    ; preds = %6753
  %6782 = icmp slt i32 %6779, 0
  %6783 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6754
  %6784 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %6754
  %6785 = bitcast float* %6783 to i32*
  %6786 = bitcast float* %6784 to i32*
  br i1 %6782, label %6787, label %6794

; <label>:6787                                    ; preds = %6781
  %6788 = and i32 %6779, 1073741823
  %6789 = add i32 %6769, 20
  %6790 = add i32 %6789, %6788
  %6791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6790, i32 undef)  ; BufferLoad(srv,index,wot)
  %6792 = extractvalue %dx.types.ResRet.i32 %6791, 0
  %6793 = extractvalue %dx.types.ResRet.i32 %6791, 1
  br label %6794

; <label>:6794                                    ; preds = %6787, %6781
  %6795 = phi i32 [ %6792, %6787 ], [ %6703, %6781 ]
  %6796 = phi i32 [ %6793, %6787 ], [ %6704, %6781 ]
  store i32 %6795, i32* %6785, align 4
  store i32 %6796, i32* %6786, align 4
  %6797 = add i32 %6754, 1
  br label %6798

; <label>:6798                                    ; preds = %6794, %6753
  %6799 = phi i32 [ %6754, %6753 ], [ %6797, %6794 ]
  %6800 = add nuw i32 %6755, 1
  %6801 = icmp eq i32 %6800, %6750
  br i1 %6801, label %6802, label %6753

; <label>:6802                                    ; preds = %6798
  br label %6803

; <label>:6803                                    ; preds = %6802, %6747
  %6804 = phi i32 [ %6748, %6747 ], [ %6799, %6802 ]
  %6805 = icmp eq i32 %6804, 1
  %6806 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  %6807 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  br i1 %6805, label %6808, label %6811

; <label>:6808                                    ; preds = %6803
  %6809 = load float, float* %6806, align 4
  %6810 = load float, float* %6807, align 4
  br label %6838

; <label>:6811                                    ; preds = %6803
  %6812 = load float, float* %6806, align 4
  %6813 = load float, float* %6807, align 4
  %6814 = fdiv fast float 1.000000e+00, %6813
  %6815 = fsub fast float %6812, %6814
  %6816 = icmp ugt i32 %6804, 1
  br i1 %6816, label %6817, label %6833

; <label>:6817                                    ; preds = %6811
  br label %6818

; <label>:6818                                    ; preds = %6818, %6817
  %6819 = phi float [ %6828, %6818 ], [ %6815, %6817 ]
  %6820 = phi float [ %6829, %6818 ], [ %6812, %6817 ]
  %6821 = phi i32 [ %6830, %6818 ], [ 1, %6817 ]
  %6822 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6821
  %6823 = load float, float* %6822, align 4
  %6824 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %6821
  %6825 = load float, float* %6824, align 4
  %6826 = fdiv fast float 1.000000e+00, %6825
  %6827 = fsub fast float %6823, %6826
  %6828 = call float @dx.op.binary.f32(i32 36, float %6819, float %6827)  ; FMin(a,b)
  %6829 = call float @dx.op.binary.f32(i32 35, float %6820, float %6823)  ; FMax(a,b)
  %6830 = add nuw i32 %6821, 1
  %6831 = icmp eq i32 %6830, %6804
  br i1 %6831, label %6832, label %6818

; <label>:6832                                    ; preds = %6818
  br label %6833

; <label>:6833                                    ; preds = %6832, %6811
  %6834 = phi float [ %6815, %6811 ], [ %6828, %6832 ]
  %6835 = phi float [ %6812, %6811 ], [ %6829, %6832 ]
  %6836 = fsub fast float %6835, %6834
  %6837 = fdiv fast float 1.000000e+00, %6836
  br label %6838

; <label>:6838                                    ; preds = %6833, %6808
  %6839 = phi float [ %6809, %6808 ], [ %6835, %6833 ]
  %6840 = phi float [ %6810, %6808 ], [ %6837, %6833 ]
  %6841 = fadd fast float %6542, %6839
  %6842 = fmul fast float %6841, %6840
  %6843 = call float @dx.op.unary.f32(i32 7, float %6842)  ; Saturate(value)
  %6844 = fmul fast float %6843, 2.000000e+00
  %6845 = fsub fast float 1.000000e+00, %6844
  %6846 = fmul fast float %6680, %6680
  %6847 = fsub fast float %6681, %6846
  %6848 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6847)  ; FMax(a,b)
  %6849 = fdiv fast float 1.000000e+00, %6848
  %6850 = fmul fast float %6681, %6680
  %6851 = fsub fast float %6682, %6850
  %6852 = fsub fast float %6845, %6680
  %6853 = fmul fast float %6845, %6845
  %6854 = fsub fast float %6853, %6681
  %6855 = fmul fast float %6849, %6851
  %6856 = fmul fast float %6855, %6852
  %6857 = fsub fast float %6854, %6856
  %6858 = fmul fast float %6681, %6681
  %6859 = fsub fast float %6683, %6858
  %6860 = fmul fast float %6851, %6851
  %6861 = fmul fast float %6860, %6849
  %6862 = fsub fast float %6859, %6861
  %6863 = fdiv fast float %6857, %6862
  %6864 = fmul fast float %6863, %6851
  %6865 = fsub fast float %6852, %6864
  %6866 = fmul fast float %6865, %6849
  %6867 = fmul fast float %6866, %6680
  %6868 = fsub fast float 1.000000e+00, %6867
  %6869 = fmul fast float %6863, %6681
  %6870 = fsub fast float %6868, %6869
  %6871 = fmul fast float %6866, %6866
  %6872 = fmul fast float %6863, 4.000000e+00
  %6873 = fmul fast float %6872, %6870
  %6874 = fsub fast float %6871, %6873
  %6875 = call float @dx.op.unary.f32(i32 24, float %6874)  ; Sqrt(value)
  %6876 = fcmp fast oge float %6866, 0.000000e+00
  %6877 = fsub fast float -0.000000e+00, %6875
  %6878 = select i1 %6876, float %6877, float %6875
  %6879 = fsub fast float %6878, %6866
  %6880 = fdiv fast float %6879, %6863
  %6881 = fdiv fast float %6870, %6879
  %6882 = fmul fast float %6880, 5.000000e-01
  %6883 = fmul fast float %6881, 2.000000e+00
  %6884 = select i1 %6876, float %6882, float %6883
  %6885 = select i1 %6876, float %6883, float %6882
  %6886 = call float @dx.op.binary.f32(i32 35, float %6884, float %6885)  ; FMax(a,b)
  %6887 = call float @dx.op.binary.f32(i32 36, float %6884, float %6885)  ; FMin(a,b)
  %6888 = fcmp fast ogt float %6845, %6886
  %6889 = fsub fast float %6845, %6887
  %6890 = fsub fast float %6845, %6886
  %6891 = fsub fast float %6886, %6887
  %6892 = select i1 %6888, float %6890, float %6891
  %6893 = fmul float %6889, %6892
  %6894 = select i1 %6888, float %6887, float %6845
  %6895 = fcmp fast ogt float %6845, %6887
  %6896 = fmul fast float %6894, %6886
  %6897 = fadd fast float %6894, %6886
  %6898 = fmul fast float %6897, %6680
  %6899 = fadd fast float %6896, %6681
  %6900 = fsub fast float %6899, %6898
  %6901 = fdiv fast float %6900, %6893
  %6902 = select i1 %6895, float %6901, float 0.000000e+00
  %6903 = fsub fast float 1.000000e+00, %6902
  %6904 = select i1 %6888, float %6903, float %6902
  %6905 = call float @dx.op.unary.f32(i32 7, float %6904)  ; Saturate(value)
  %6906 = extractvalue %dx.types.CBufRet.f32 %6665, 3
  %6907 = fmul fast float %6906, %6905
  %6908 = fsub fast float 1.000000e+00, %6907
  br label %6909

; <label>:6909                                    ; preds = %6838, %6550, %6515, %6511, %6477
  %6910 = phi float [ 1.000000e+00, %6477 ], [ %6908, %6838 ], [ 1.000000e+00, %6515 ], [ 1.000000e+00, %6550 ], [ 1.000000e+00, %6511 ]
  %6911 = fcmp fast ogt float %6507, 0.000000e+00
  br i1 %6911, label %6912, label %7074, !dx.controlflow.hints !106

; <label>:6912                                    ; preds = %6909
  %6913 = fadd fast float %6420, %6394
  %6914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6915 = extractvalue %dx.types.CBufRet.f32 %6914, 2
  %6916 = extractvalue %dx.types.CBufRet.f32 %6914, 3
  %6917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.f32 %6917, 2
  %6919 = call float @dx.op.binary.f32(i32 35, float %6913, float 0.000000e+00)  ; FMax(a,b)
  %6920 = fadd fast float %6919, 0x3F10000000000000
  %6921 = fcmp fast oeq float %6918, 0.000000e+00
  br i1 %6921, label %6922, label %6989

; <label>:6922                                    ; preds = %6912
  %6923 = extractvalue %dx.types.CBufRet.f32 %6914, 1
  %6924 = extractvalue %dx.types.CBufRet.f32 %6914, 0
  %6925 = fmul fast float %6924, %6409
  %6926 = fmul fast float %6923, %6410
  %6927 = fadd fast float %6925, 5.000000e-01
  %6928 = call float @dx.op.unary.f32(i32 27, float %6927)  ; Round_ni(value)
  %6929 = fadd fast float %6926, 5.000000e-01
  %6930 = call float @dx.op.unary.f32(i32 27, float %6929)  ; Round_ni(value)
  %6931 = fsub fast float %6927, %6928
  %6932 = fsub fast float %6929, %6930
  %6933 = fadd fast float %6928, -5.000000e-01
  %6934 = fadd fast float %6930, -5.000000e-01
  %6935 = fmul fast float %6931, 2.000000e+00
  %6936 = fsub fast float 3.000000e+00, %6935
  %6937 = fadd fast float %6935, 1.000000e+00
  %6938 = fsub fast float 2.000000e+00, %6931
  %6939 = bitcast float %6936 to i32
  %6940 = sub nsw i32 2129859010, %6939
  %6941 = bitcast i32 %6940 to float
  %6942 = fmul fast float %6941, %6938
  %6943 = fadd fast float %6942, -1.000000e+00
  %6944 = bitcast float %6937 to i32
  %6945 = sub nsw i32 2129859010, %6944
  %6946 = bitcast i32 %6945 to float
  %6947 = fmul fast float %6946, %6931
  %6948 = fadd fast float %6947, 1.000000e+00
  %6949 = fmul fast float %6932, 2.000000e+00
  %6950 = fsub fast float 3.000000e+00, %6949
  %6951 = fadd fast float %6949, 1.000000e+00
  %6952 = fsub fast float 2.000000e+00, %6932
  %6953 = bitcast float %6950 to i32
  %6954 = sub nsw i32 2129859010, %6953
  %6955 = bitcast i32 %6954 to float
  %6956 = fmul fast float %6955, %6952
  %6957 = fadd fast float %6956, -1.000000e+00
  %6958 = bitcast float %6951 to i32
  %6959 = sub nsw i32 2129859010, %6958
  %6960 = bitcast i32 %6959 to float
  %6961 = fmul fast float %6960, %6932
  %6962 = fadd fast float %6961, 1.000000e+00
  %6963 = fadd fast float %6943, %6933
  %6964 = fmul fast float %6963, %6915
  %6965 = fadd fast float %6957, %6934
  %6966 = fmul fast float %6965, %6916
  %6967 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6964, float %6966, float undef, float undef, i32 0, i32 0, i32 undef, float %6920)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6968 = extractvalue %dx.types.ResRet.f32 %6967, 0
  %6969 = fmul fast float %6968, %6936
  %6970 = fadd fast float %6948, %6933
  %6971 = fmul fast float %6970, %6915
  %6972 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6971, float %6966, float undef, float undef, i32 0, i32 0, i32 undef, float %6920)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6973 = extractvalue %dx.types.ResRet.f32 %6972, 0
  %6974 = fmul fast float %6973, %6937
  %6975 = fadd fast float %6962, %6934
  %6976 = fmul fast float %6975, %6916
  %6977 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6964, float %6976, float undef, float undef, i32 0, i32 0, i32 undef, float %6920)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6978 = extractvalue %dx.types.ResRet.f32 %6977, 0
  %6979 = fmul fast float %6978, %6936
  %6980 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6971, float %6976, float undef, float undef, i32 0, i32 0, i32 undef, float %6920)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6981 = extractvalue %dx.types.ResRet.f32 %6980, 0
  %6982 = fmul fast float %6981, %6937
  %6983 = fadd fast float %6982, %6979
  %6984 = fmul fast float %6983, %6951
  %6985 = fadd fast float %6974, %6969
  %6986 = fmul fast float %6985, %6950
  %6987 = fadd fast float %6986, %6984
  %6988 = fmul fast float %6987, 6.250000e-02
  br label %7074

; <label>:6989                                    ; preds = %6912
  %6990 = fmul fast float %230, 0x401921FB60000000
  %6991 = call float @dx.op.unary.f32(i32 13, float %6990)  ; Sin(value)
  %6992 = call float @dx.op.unary.f32(i32 12, float %6990)  ; Cos(value)
  %6993 = fsub fast float -0.000000e+00, %6991
  br label %6994

; <label>:6994                                    ; preds = %7043, %6989
  %6995 = phi float [ 0.000000e+00, %6989 ], [ %7038, %7043 ]
  %6996 = phi float [ 0.000000e+00, %6989 ], [ %7040, %7043 ]
  %6997 = phi i32 [ 0, %6989 ], [ %7044, %7043 ]
  %6998 = mul i32 %6997, 2
  %6999 = add i32 0, %6998
  %7000 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6999
  %7001 = load float, float* %7000, align 4
  %7002 = mul i32 %6997, 2
  %7003 = add i32 1, %7002
  %7004 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7003
  %7005 = load float, float* %7004, align 4
  %7006 = fmul fast float %7001, %6992
  %7007 = call float @dx.op.tertiary.f32(i32 46, float %7005, float %6993, float %7006)  ; FMad(a,b,c)
  %7008 = fmul fast float %7001, %6991
  %7009 = call float @dx.op.tertiary.f32(i32 46, float %7005, float %6992, float %7008)  ; FMad(a,b,c)
  %7010 = fmul fast float %7007, %6918
  %7011 = fmul fast float %7009, %6918
  %7012 = fadd fast float %7010, %6409
  %7013 = fadd fast float %7011, %6410
  %7014 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %44, float %7012, float %7013, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7015 = extractvalue %dx.types.ResRet.f32 %7014, 0
  %7016 = extractvalue %dx.types.ResRet.f32 %7014, 1
  %7017 = extractvalue %dx.types.ResRet.f32 %7014, 2
  %7018 = extractvalue %dx.types.ResRet.f32 %7014, 3
  %7019 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 0
  store float %7015, float* %7019, align 4
  %7020 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 1
  store float %7016, float* %7020, align 4
  %7021 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 2
  store float %7017, float* %7021, align 4
  %7022 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 3
  store float %7018, float* %7022, align 4
  %7023 = fsub fast float %7015, %6920
  %7024 = fcmp fast olt float %7023, 0.000000e+00
  %7025 = select i1 %7024, float 0.000000e+00, float 1.000000e+00
  %7026 = fadd fast float %7025, %6995
  %7027 = fmul fast float %7025, %7023
  %7028 = fadd fast float %7027, %6996
  br label %7029

; <label>:7029                                    ; preds = %7029, %6994
  %7030 = phi i32 [ 1, %6994 ], [ %7041, %7029 ]
  %7031 = phi float [ %7028, %6994 ], [ %7040, %7029 ]
  %7032 = phi float [ %7026, %6994 ], [ %7038, %7029 ]
  %7033 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 %7030
  %7034 = load float, float* %7033, align 4, !tbaa !107, !noalias !97
  %7035 = fsub fast float %7034, %6920
  %7036 = fcmp fast olt float %7035, 0.000000e+00
  %7037 = select i1 %7036, float 0.000000e+00, float 1.000000e+00
  %7038 = fadd fast float %7037, %7032
  %7039 = fmul fast float %7037, %7035
  %7040 = fadd fast float %7039, %7031
  %7041 = add nuw nsw i32 %7030, 1
  %7042 = icmp eq i32 %7041, 4
  br i1 %7042, label %7043, label %7029, !llvm.loop !109

; <label>:7043                                    ; preds = %7029
  %7044 = add nuw nsw i32 %6997, 1
  %7045 = icmp eq i32 %7044, 8
  br i1 %7045, label %7046, label %6994, !llvm.loop !110

; <label>:7046                                    ; preds = %7043
  %7047 = fdiv fast float 1.000000e+00, %7038
  %7048 = fmul fast float %7047, %7040
  %7049 = fdiv fast float 1.000000e+00, %6920
  %7050 = fmul fast float %7048, %7049
  %7051 = call float @dx.op.unary.f32(i32 7, float %7050)  ; Saturate(value)
  %7052 = call float @dx.op.binary.f32(i32 35, float %7051, float 0.000000e+00)  ; FMax(a,b)
  %7053 = fmul fast float %7038, 3.125000e-02
  %7054 = call float @dx.op.unary.f32(i32 7, float %7053)  ; Saturate(value)
  %7055 = fmul fast float %7054, 2.000000e+00
  %7056 = fadd fast float %7055, -1.000000e+00
  %7057 = fcmp fast ogt float %7056, 0.000000e+00
  %7058 = fcmp fast olt float %7056, 0.000000e+00
  %7059 = zext i1 %7057 to i32
  %7060 = zext i1 %7058 to i32
  %7061 = sub nsw i32 %7059, %7060
  %7062 = sitofp i32 %7061 to float
  %7063 = fmul fast float %7062, %7056
  %7064 = fsub fast float 1.000000e+00, %7063
  %7065 = fmul fast float %7064, %7064
  %7066 = fmul fast float %7065, %7064
  %7067 = fsub fast float %7064, %7066
  %7068 = fmul fast float %7067, %7052
  %7069 = fsub fast float 1.000000e+00, %7066
  %7070 = fsub fast float %7069, %7068
  %7071 = fmul fast float %7062, 5.000000e-01
  %7072 = fmul fast float %7071, %7070
  %7073 = fsub fast float 5.000000e-01, %7072
  br label %7074

; <label>:7074                                    ; preds = %7046, %6922, %6909
  %7075 = phi float [ 1.000000e+00, %6909 ], [ %6988, %6922 ], [ %7073, %7046 ]
  %7076 = fcmp fast ogt float %6505, 0.000000e+00
  br i1 %7076, label %7077, label %7241, !dx.controlflow.hints !111

; <label>:7077                                    ; preds = %7074
  %7078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7079 = extractvalue %dx.types.CBufRet.f32 %7078, 1
  %7080 = fadd fast float %7079, %6394
  %7081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7082 = extractvalue %dx.types.CBufRet.f32 %7081, 2
  %7083 = extractvalue %dx.types.CBufRet.f32 %7081, 3
  %7084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7085 = extractvalue %dx.types.CBufRet.f32 %7084, 1
  %7086 = call float @dx.op.binary.f32(i32 35, float %7080, float 0.000000e+00)  ; FMax(a,b)
  %7087 = fadd fast float %7086, 0x3F10000000000000
  %7088 = fcmp fast oeq float %7085, 0.000000e+00
  br i1 %7088, label %7089, label %7156

; <label>:7089                                    ; preds = %7077
  %7090 = extractvalue %dx.types.CBufRet.f32 %7081, 1
  %7091 = extractvalue %dx.types.CBufRet.f32 %7081, 0
  %7092 = fmul fast float %7091, %6401
  %7093 = fmul fast float %7090, %6402
  %7094 = fadd fast float %7092, 5.000000e-01
  %7095 = call float @dx.op.unary.f32(i32 27, float %7094)  ; Round_ni(value)
  %7096 = fadd fast float %7093, 5.000000e-01
  %7097 = call float @dx.op.unary.f32(i32 27, float %7096)  ; Round_ni(value)
  %7098 = fsub fast float %7094, %7095
  %7099 = fsub fast float %7096, %7097
  %7100 = fadd fast float %7095, -5.000000e-01
  %7101 = fadd fast float %7097, -5.000000e-01
  %7102 = fmul fast float %7098, 2.000000e+00
  %7103 = fsub fast float 3.000000e+00, %7102
  %7104 = fadd fast float %7102, 1.000000e+00
  %7105 = fsub fast float 2.000000e+00, %7098
  %7106 = bitcast float %7103 to i32
  %7107 = sub nsw i32 2129859010, %7106
  %7108 = bitcast i32 %7107 to float
  %7109 = fmul fast float %7108, %7105
  %7110 = fadd fast float %7109, -1.000000e+00
  %7111 = bitcast float %7104 to i32
  %7112 = sub nsw i32 2129859010, %7111
  %7113 = bitcast i32 %7112 to float
  %7114 = fmul fast float %7113, %7098
  %7115 = fadd fast float %7114, 1.000000e+00
  %7116 = fmul fast float %7099, 2.000000e+00
  %7117 = fsub fast float 3.000000e+00, %7116
  %7118 = fadd fast float %7116, 1.000000e+00
  %7119 = fsub fast float 2.000000e+00, %7099
  %7120 = bitcast float %7117 to i32
  %7121 = sub nsw i32 2129859010, %7120
  %7122 = bitcast i32 %7121 to float
  %7123 = fmul fast float %7122, %7119
  %7124 = fadd fast float %7123, -1.000000e+00
  %7125 = bitcast float %7118 to i32
  %7126 = sub nsw i32 2129859010, %7125
  %7127 = bitcast i32 %7126 to float
  %7128 = fmul fast float %7127, %7099
  %7129 = fadd fast float %7128, 1.000000e+00
  %7130 = fadd fast float %7110, %7100
  %7131 = fmul fast float %7130, %7082
  %7132 = fadd fast float %7124, %7101
  %7133 = fmul fast float %7132, %7083
  %7134 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7131, float %7133, float undef, float undef, i32 0, i32 0, i32 undef, float %7087)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7135 = extractvalue %dx.types.ResRet.f32 %7134, 0
  %7136 = fmul fast float %7135, %7103
  %7137 = fadd fast float %7115, %7100
  %7138 = fmul fast float %7137, %7082
  %7139 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7138, float %7133, float undef, float undef, i32 0, i32 0, i32 undef, float %7087)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7140 = extractvalue %dx.types.ResRet.f32 %7139, 0
  %7141 = fmul fast float %7140, %7104
  %7142 = fadd fast float %7129, %7101
  %7143 = fmul fast float %7142, %7083
  %7144 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7131, float %7143, float undef, float undef, i32 0, i32 0, i32 undef, float %7087)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7145 = extractvalue %dx.types.ResRet.f32 %7144, 0
  %7146 = fmul fast float %7145, %7103
  %7147 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7138, float %7143, float undef, float undef, i32 0, i32 0, i32 undef, float %7087)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7148 = extractvalue %dx.types.ResRet.f32 %7147, 0
  %7149 = fmul fast float %7148, %7104
  %7150 = fadd fast float %7149, %7146
  %7151 = fmul fast float %7150, %7118
  %7152 = fadd fast float %7141, %7136
  %7153 = fmul fast float %7152, %7117
  %7154 = fadd fast float %7153, %7151
  %7155 = fmul fast float %7154, 6.250000e-02
  br label %7241

; <label>:7156                                    ; preds = %7077
  %7157 = fmul fast float %230, 0x401921FB60000000
  %7158 = call float @dx.op.unary.f32(i32 13, float %7157)  ; Sin(value)
  %7159 = call float @dx.op.unary.f32(i32 12, float %7157)  ; Cos(value)
  %7160 = fsub fast float -0.000000e+00, %7158
  br label %7161

; <label>:7161                                    ; preds = %7210, %7156
  %7162 = phi float [ 0.000000e+00, %7156 ], [ %7205, %7210 ]
  %7163 = phi float [ 0.000000e+00, %7156 ], [ %7207, %7210 ]
  %7164 = phi i32 [ 0, %7156 ], [ %7211, %7210 ]
  %7165 = mul i32 %7164, 2
  %7166 = add i32 0, %7165
  %7167 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7166
  %7168 = load float, float* %7167, align 4
  %7169 = mul i32 %7164, 2
  %7170 = add i32 1, %7169
  %7171 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7170
  %7172 = load float, float* %7171, align 4
  %7173 = fmul fast float %7168, %7159
  %7174 = call float @dx.op.tertiary.f32(i32 46, float %7172, float %7160, float %7173)  ; FMad(a,b,c)
  %7175 = fmul fast float %7168, %7158
  %7176 = call float @dx.op.tertiary.f32(i32 46, float %7172, float %7159, float %7175)  ; FMad(a,b,c)
  %7177 = fmul fast float %7174, %7085
  %7178 = fmul fast float %7176, %7085
  %7179 = fadd fast float %7177, %6401
  %7180 = fadd fast float %7178, %6402
  %7181 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %44, float %7179, float %7180, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7182 = extractvalue %dx.types.ResRet.f32 %7181, 0
  %7183 = extractvalue %dx.types.ResRet.f32 %7181, 1
  %7184 = extractvalue %dx.types.ResRet.f32 %7181, 2
  %7185 = extractvalue %dx.types.ResRet.f32 %7181, 3
  %7186 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %7182, float* %7186, align 4
  %7187 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %7183, float* %7187, align 4
  %7188 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %7184, float* %7188, align 4
  %7189 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %7185, float* %7189, align 4
  %7190 = fsub fast float %7182, %7087
  %7191 = fcmp fast olt float %7190, 0.000000e+00
  %7192 = select i1 %7191, float 0.000000e+00, float 1.000000e+00
  %7193 = fadd fast float %7192, %7162
  %7194 = fmul fast float %7192, %7190
  %7195 = fadd fast float %7194, %7163
  br label %7196

; <label>:7196                                    ; preds = %7196, %7161
  %7197 = phi i32 [ 1, %7161 ], [ %7208, %7196 ]
  %7198 = phi float [ %7195, %7161 ], [ %7207, %7196 ]
  %7199 = phi float [ %7193, %7161 ], [ %7205, %7196 ]
  %7200 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %7197
  %7201 = load float, float* %7200, align 4, !tbaa !107, !noalias !97
  %7202 = fsub fast float %7201, %7087
  %7203 = fcmp fast olt float %7202, 0.000000e+00
  %7204 = select i1 %7203, float 0.000000e+00, float 1.000000e+00
  %7205 = fadd fast float %7204, %7199
  %7206 = fmul fast float %7204, %7202
  %7207 = fadd fast float %7206, %7198
  %7208 = add nuw nsw i32 %7197, 1
  %7209 = icmp eq i32 %7208, 4
  br i1 %7209, label %7210, label %7196, !llvm.loop !109

; <label>:7210                                    ; preds = %7196
  %7211 = add nuw nsw i32 %7164, 1
  %7212 = icmp eq i32 %7211, 8
  br i1 %7212, label %7213, label %7161, !llvm.loop !110

; <label>:7213                                    ; preds = %7210
  %7214 = fdiv fast float 1.000000e+00, %7205
  %7215 = fmul fast float %7214, %7207
  %7216 = fdiv fast float 1.000000e+00, %7087
  %7217 = fmul fast float %7215, %7216
  %7218 = call float @dx.op.unary.f32(i32 7, float %7217)  ; Saturate(value)
  %7219 = call float @dx.op.binary.f32(i32 35, float %7218, float 0.000000e+00)  ; FMax(a,b)
  %7220 = fmul fast float %7205, 3.125000e-02
  %7221 = call float @dx.op.unary.f32(i32 7, float %7220)  ; Saturate(value)
  %7222 = fmul fast float %7221, 2.000000e+00
  %7223 = fadd fast float %7222, -1.000000e+00
  %7224 = fcmp fast ogt float %7223, 0.000000e+00
  %7225 = fcmp fast olt float %7223, 0.000000e+00
  %7226 = zext i1 %7224 to i32
  %7227 = zext i1 %7225 to i32
  %7228 = sub nsw i32 %7226, %7227
  %7229 = sitofp i32 %7228 to float
  %7230 = fmul fast float %7229, %7223
  %7231 = fsub fast float 1.000000e+00, %7230
  %7232 = fmul fast float %7231, %7231
  %7233 = fmul fast float %7232, %7231
  %7234 = fsub fast float %7231, %7233
  %7235 = fmul fast float %7234, %7219
  %7236 = fsub fast float 1.000000e+00, %7233
  %7237 = fsub fast float %7236, %7235
  %7238 = fmul fast float %7229, 5.000000e-01
  %7239 = fmul fast float %7238, %7237
  %7240 = fsub fast float 5.000000e-01, %7239
  br label %7241

; <label>:7241                                    ; preds = %7213, %7089, %7074
  %7242 = phi float [ 1.000000e+00, %7074 ], [ %7155, %7089 ], [ %7240, %7213 ]
  %7243 = fcmp fast ogt float %6504, 0.000000e+00
  br i1 %7243, label %7244, label %7408, !dx.controlflow.hints !112

; <label>:7244                                    ; preds = %7241
  %7245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7246 = extractvalue %dx.types.CBufRet.f32 %7245, 0
  %7247 = fadd fast float %7246, %6394
  %7248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7249 = extractvalue %dx.types.CBufRet.f32 %7248, 2
  %7250 = extractvalue %dx.types.CBufRet.f32 %7248, 3
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 0
  %7253 = call float @dx.op.binary.f32(i32 35, float %7247, float 0.000000e+00)  ; FMax(a,b)
  %7254 = fadd fast float %7253, 0x3F10000000000000
  %7255 = fcmp fast oeq float %7252, 0.000000e+00
  br i1 %7255, label %7256, label %7323

; <label>:7256                                    ; preds = %7244
  %7257 = extractvalue %dx.types.CBufRet.f32 %7248, 1
  %7258 = extractvalue %dx.types.CBufRet.f32 %7248, 0
  %7259 = fmul fast float %7258, %6386
  %7260 = fmul fast float %7257, %6390
  %7261 = fadd fast float %7259, 5.000000e-01
  %7262 = call float @dx.op.unary.f32(i32 27, float %7261)  ; Round_ni(value)
  %7263 = fadd fast float %7260, 5.000000e-01
  %7264 = call float @dx.op.unary.f32(i32 27, float %7263)  ; Round_ni(value)
  %7265 = fsub fast float %7261, %7262
  %7266 = fsub fast float %7263, %7264
  %7267 = fadd fast float %7262, -5.000000e-01
  %7268 = fadd fast float %7264, -5.000000e-01
  %7269 = fmul fast float %7265, 2.000000e+00
  %7270 = fsub fast float 3.000000e+00, %7269
  %7271 = fadd fast float %7269, 1.000000e+00
  %7272 = fsub fast float 2.000000e+00, %7265
  %7273 = bitcast float %7270 to i32
  %7274 = sub nsw i32 2129859010, %7273
  %7275 = bitcast i32 %7274 to float
  %7276 = fmul fast float %7275, %7272
  %7277 = fadd fast float %7276, -1.000000e+00
  %7278 = bitcast float %7271 to i32
  %7279 = sub nsw i32 2129859010, %7278
  %7280 = bitcast i32 %7279 to float
  %7281 = fmul fast float %7280, %7265
  %7282 = fadd fast float %7281, 1.000000e+00
  %7283 = fmul fast float %7266, 2.000000e+00
  %7284 = fsub fast float 3.000000e+00, %7283
  %7285 = fadd fast float %7283, 1.000000e+00
  %7286 = fsub fast float 2.000000e+00, %7266
  %7287 = bitcast float %7284 to i32
  %7288 = sub nsw i32 2129859010, %7287
  %7289 = bitcast i32 %7288 to float
  %7290 = fmul fast float %7289, %7286
  %7291 = fadd fast float %7290, -1.000000e+00
  %7292 = bitcast float %7285 to i32
  %7293 = sub nsw i32 2129859010, %7292
  %7294 = bitcast i32 %7293 to float
  %7295 = fmul fast float %7294, %7266
  %7296 = fadd fast float %7295, 1.000000e+00
  %7297 = fadd fast float %7277, %7267
  %7298 = fmul fast float %7297, %7249
  %7299 = fadd fast float %7291, %7268
  %7300 = fmul fast float %7299, %7250
  %7301 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7298, float %7300, float undef, float undef, i32 0, i32 0, i32 undef, float %7254)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7302 = extractvalue %dx.types.ResRet.f32 %7301, 0
  %7303 = fmul fast float %7302, %7270
  %7304 = fadd fast float %7282, %7267
  %7305 = fmul fast float %7304, %7249
  %7306 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7305, float %7300, float undef, float undef, i32 0, i32 0, i32 undef, float %7254)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7307 = extractvalue %dx.types.ResRet.f32 %7306, 0
  %7308 = fmul fast float %7307, %7271
  %7309 = fadd fast float %7296, %7268
  %7310 = fmul fast float %7309, %7250
  %7311 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7298, float %7310, float undef, float undef, i32 0, i32 0, i32 undef, float %7254)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7312 = extractvalue %dx.types.ResRet.f32 %7311, 0
  %7313 = fmul fast float %7312, %7270
  %7314 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7305, float %7310, float undef, float undef, i32 0, i32 0, i32 undef, float %7254)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7315 = extractvalue %dx.types.ResRet.f32 %7314, 0
  %7316 = fmul fast float %7315, %7271
  %7317 = fadd fast float %7316, %7313
  %7318 = fmul fast float %7317, %7285
  %7319 = fadd fast float %7308, %7303
  %7320 = fmul fast float %7319, %7284
  %7321 = fadd fast float %7320, %7318
  %7322 = fmul fast float %7321, 6.250000e-02
  br label %7408

; <label>:7323                                    ; preds = %7244
  %7324 = fmul fast float %230, 0x401921FB60000000
  %7325 = call float @dx.op.unary.f32(i32 13, float %7324)  ; Sin(value)
  %7326 = call float @dx.op.unary.f32(i32 12, float %7324)  ; Cos(value)
  %7327 = fsub fast float -0.000000e+00, %7325
  br label %7328

; <label>:7328                                    ; preds = %7377, %7323
  %7329 = phi float [ 0.000000e+00, %7323 ], [ %7372, %7377 ]
  %7330 = phi float [ 0.000000e+00, %7323 ], [ %7374, %7377 ]
  %7331 = phi i32 [ 0, %7323 ], [ %7378, %7377 ]
  %7332 = mul i32 %7331, 2
  %7333 = add i32 0, %7332
  %7334 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7333
  %7335 = load float, float* %7334, align 4
  %7336 = mul i32 %7331, 2
  %7337 = add i32 1, %7336
  %7338 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7337
  %7339 = load float, float* %7338, align 4
  %7340 = fmul fast float %7335, %7326
  %7341 = call float @dx.op.tertiary.f32(i32 46, float %7339, float %7327, float %7340)  ; FMad(a,b,c)
  %7342 = fmul fast float %7335, %7325
  %7343 = call float @dx.op.tertiary.f32(i32 46, float %7339, float %7326, float %7342)  ; FMad(a,b,c)
  %7344 = fmul fast float %7341, %7252
  %7345 = fmul fast float %7343, %7252
  %7346 = fadd fast float %7344, %6386
  %7347 = fadd fast float %7345, %6390
  %7348 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %44, float %7346, float %7347, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7349 = extractvalue %dx.types.ResRet.f32 %7348, 0
  %7350 = extractvalue %dx.types.ResRet.f32 %7348, 1
  %7351 = extractvalue %dx.types.ResRet.f32 %7348, 2
  %7352 = extractvalue %dx.types.ResRet.f32 %7348, 3
  %7353 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 0
  store float %7349, float* %7353, align 4
  %7354 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 1
  store float %7350, float* %7354, align 4
  %7355 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 2
  store float %7351, float* %7355, align 4
  %7356 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 3
  store float %7352, float* %7356, align 4
  %7357 = fsub fast float %7349, %7254
  %7358 = fcmp fast olt float %7357, 0.000000e+00
  %7359 = select i1 %7358, float 0.000000e+00, float 1.000000e+00
  %7360 = fadd fast float %7359, %7329
  %7361 = fmul fast float %7359, %7357
  %7362 = fadd fast float %7361, %7330
  br label %7363

; <label>:7363                                    ; preds = %7363, %7328
  %7364 = phi i32 [ 1, %7328 ], [ %7375, %7363 ]
  %7365 = phi float [ %7362, %7328 ], [ %7374, %7363 ]
  %7366 = phi float [ %7360, %7328 ], [ %7372, %7363 ]
  %7367 = getelementptr [4 x float], [4 x float]* %84, i32 0, i32 %7364
  %7368 = load float, float* %7367, align 4, !tbaa !107, !noalias !97
  %7369 = fsub fast float %7368, %7254
  %7370 = fcmp fast olt float %7369, 0.000000e+00
  %7371 = select i1 %7370, float 0.000000e+00, float 1.000000e+00
  %7372 = fadd fast float %7371, %7366
  %7373 = fmul fast float %7371, %7369
  %7374 = fadd fast float %7373, %7365
  %7375 = add nuw nsw i32 %7364, 1
  %7376 = icmp eq i32 %7375, 4
  br i1 %7376, label %7377, label %7363, !llvm.loop !109

; <label>:7377                                    ; preds = %7363
  %7378 = add nuw nsw i32 %7331, 1
  %7379 = icmp eq i32 %7378, 8
  br i1 %7379, label %7380, label %7328, !llvm.loop !110

; <label>:7380                                    ; preds = %7377
  %7381 = fdiv fast float 1.000000e+00, %7372
  %7382 = fmul fast float %7381, %7374
  %7383 = fdiv fast float 1.000000e+00, %7254
  %7384 = fmul fast float %7382, %7383
  %7385 = call float @dx.op.unary.f32(i32 7, float %7384)  ; Saturate(value)
  %7386 = call float @dx.op.binary.f32(i32 35, float %7385, float 0.000000e+00)  ; FMax(a,b)
  %7387 = fmul fast float %7372, 3.125000e-02
  %7388 = call float @dx.op.unary.f32(i32 7, float %7387)  ; Saturate(value)
  %7389 = fmul fast float %7388, 2.000000e+00
  %7390 = fadd fast float %7389, -1.000000e+00
  %7391 = fcmp fast ogt float %7390, 0.000000e+00
  %7392 = fcmp fast olt float %7390, 0.000000e+00
  %7393 = zext i1 %7391 to i32
  %7394 = zext i1 %7392 to i32
  %7395 = sub nsw i32 %7393, %7394
  %7396 = sitofp i32 %7395 to float
  %7397 = fmul fast float %7396, %7390
  %7398 = fsub fast float 1.000000e+00, %7397
  %7399 = fmul fast float %7398, %7398
  %7400 = fmul fast float %7399, %7398
  %7401 = fsub fast float %7398, %7400
  %7402 = fmul fast float %7401, %7386
  %7403 = fsub fast float 1.000000e+00, %7400
  %7404 = fsub fast float %7403, %7402
  %7405 = fmul fast float %7396, 5.000000e-01
  %7406 = fmul fast float %7405, %7404
  %7407 = fsub fast float 5.000000e-01, %7406
  br label %7408

; <label>:7408                                    ; preds = %7380, %7256, %7241
  %7409 = phi float [ 1.000000e+00, %7241 ], [ %7322, %7256 ], [ %7407, %7380 ]
  %7410 = fsub fast float %7075, %6910
  %7411 = fmul fast float %7410, %6448
  %7412 = fadd fast float %7411, %6910
  %7413 = fsub fast float %7242, %7412
  %7414 = fmul fast float %7413, %6478
  %7415 = fadd fast float %7414, %7412
  %7416 = fsub fast float %7409, %7415
  %7417 = fmul fast float %7416, %6504
  %7418 = fadd fast float %7417, %7415
  %7419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7420 = extractvalue %dx.types.CBufRet.f32 %7419, 2
  %7421 = fcmp fast ogt float %7420, 0.000000e+00
  br i1 %7421, label %7422, label %7462, !dx.controlflow.hints !113

; <label>:7422                                    ; preds = %7408
  %7423 = fcmp fast ugt float %7420, 0.000000e+00
  br i1 %7423, label %7424, label %7459

; <label>:7424                                    ; preds = %7422
  %7425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7426 = extractvalue %dx.types.CBufRet.f32 %7425, 0
  %7427 = extractvalue %dx.types.CBufRet.f32 %7425, 1
  %7428 = extractvalue %dx.types.CBufRet.f32 %7425, 2
  %7429 = extractvalue %dx.types.CBufRet.f32 %7425, 3
  %7430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7431 = extractvalue %dx.types.CBufRet.f32 %7430, 0
  %7432 = extractvalue %dx.types.CBufRet.f32 %7430, 1
  %7433 = extractvalue %dx.types.CBufRet.f32 %7430, 2
  %7434 = extractvalue %dx.types.CBufRet.f32 %7430, 3
  %7435 = extractvalue %dx.types.CBufRet.f32 %7419, 0
  %7436 = extractvalue %dx.types.CBufRet.f32 %7419, 1
  %7437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %7438 = extractvalue %dx.types.CBufRet.f32 %7437, 0
  %7439 = extractvalue %dx.types.CBufRet.f32 %7437, 1
  %7440 = extractvalue %dx.types.CBufRet.f32 %7437, 2
  %7441 = fadd fast float %7438, %6363
  %7442 = fadd fast float %7439, %6364
  %7443 = fadd fast float %7440, %6365
  %7444 = fmul fast float %7441, %7426
  %7445 = call float @dx.op.tertiary.f32(i32 46, float %7427, float %7442, float %7444)  ; FMad(a,b,c)
  %7446 = call float @dx.op.tertiary.f32(i32 46, float %7428, float %7443, float %7445)  ; FMad(a,b,c)
  %7447 = fadd fast float %7446, %7429
  %7448 = fmul fast float %7441, %7431
  %7449 = call float @dx.op.tertiary.f32(i32 46, float %7432, float %7442, float %7448)  ; FMad(a,b,c)
  %7450 = call float @dx.op.tertiary.f32(i32 46, float %7433, float %7443, float %7449)  ; FMad(a,b,c)
  %7451 = fadd fast float %7450, %7434
  %7452 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %40, float %7447, float %7451, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7453 = extractvalue %dx.types.ResRet.f32 %7452, 0
  %7454 = fmul fast float %7453, %7436
  %7455 = fadd fast float %7454, %7435
  %7456 = call float @dx.op.unary.f32(i32 7, float %7455)  ; Saturate(value)
  %7457 = fmul fast float %7456, %7420
  %7458 = fsub fast float 1.000000e+00, %7457
  br label %7459

; <label>:7459                                    ; preds = %7424, %7422
  %7460 = phi float [ %7458, %7424 ], [ 1.000000e+00, %7422 ]
  %7461 = fmul fast float %7460, %7418
  br label %7462

; <label>:7462                                    ; preds = %7459, %7408, %6343
  %7463 = phi float [ 1.000000e+00, %6343 ], [ %7461, %7459 ], [ %7418, %7408 ]
  %7464 = call float @dx.op.binary.f32(i32 36, float %7463, float %7463)  ; FMin(a,b)
  %7465 = call float @dx.op.binary.f32(i32 36, float %7463, float %7464)  ; FMin(a,b)
  %7466 = fcmp fast ogt float %7465, 0.000000e+00
  br i1 %7466, label %7467, label %7633, !dx.controlflow.hints !114

; <label>:7467                                    ; preds = %7462
  %7468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7469 = extractvalue %dx.types.CBufRet.f32 %7468, 0
  %7470 = extractvalue %dx.types.CBufRet.f32 %7468, 1
  %7471 = extractvalue %dx.types.CBufRet.f32 %7468, 2
  %7472 = extractvalue %dx.types.CBufRet.f32 %7468, 3
  %7473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7474 = extractvalue %dx.types.CBufRet.f32 %7473, 0
  %7475 = extractvalue %dx.types.CBufRet.f32 %7473, 1
  %7476 = extractvalue %dx.types.CBufRet.f32 %7473, 2
  %7477 = extractvalue %dx.types.CBufRet.f32 %7473, 3
  %7478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7479 = extractvalue %dx.types.CBufRet.f32 %7478, 0
  %7480 = extractvalue %dx.types.CBufRet.f32 %7478, 1
  %7481 = extractvalue %dx.types.CBufRet.f32 %7478, 2
  %7482 = extractvalue %dx.types.CBufRet.f32 %7478, 3
  %7483 = fmul fast float %7469, %6363
  %7484 = call float @dx.op.tertiary.f32(i32 46, float %6364, float %7470, float %7483)  ; FMad(a,b,c)
  %7485 = call float @dx.op.tertiary.f32(i32 46, float %6365, float %7471, float %7484)  ; FMad(a,b,c)
  %7486 = fadd fast float %7485, %7472
  %7487 = fmul fast float %7474, %6363
  %7488 = call float @dx.op.tertiary.f32(i32 46, float %6364, float %7475, float %7487)  ; FMad(a,b,c)
  %7489 = call float @dx.op.tertiary.f32(i32 46, float %6365, float %7476, float %7488)  ; FMad(a,b,c)
  %7490 = fadd fast float %7489, %7477
  %7491 = fmul fast float %7479, %6363
  %7492 = call float @dx.op.tertiary.f32(i32 46, float %6364, float %7480, float %7491)  ; FMad(a,b,c)
  %7493 = call float @dx.op.tertiary.f32(i32 46, float %6365, float %7481, float %7492)  ; FMad(a,b,c)
  %7494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7495 = extractvalue %dx.types.CBufRet.f32 %7494, 0
  %7496 = extractvalue %dx.types.CBufRet.f32 %7494, 1
  %7497 = extractvalue %dx.types.CBufRet.f32 %7494, 3
  %7498 = fmul fast float %7497, %7486
  %7499 = fmul fast float %7497, %7490
  %7500 = fadd fast float %7498, %7495
  %7501 = fadd fast float %7499, %7496
  %7502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7503 = extractvalue %dx.types.CBufRet.f32 %7502, 0
  %7504 = extractvalue %dx.types.CBufRet.f32 %7502, 1
  %7505 = fsub fast float %7500, %7503
  %7506 = fsub fast float %7501, %7504
  %7507 = fcmp fast olt float %7505, 0.000000e+00
  %7508 = fcmp fast olt float %7506, 0.000000e+00
  %7509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7510 = extractvalue %dx.types.CBufRet.f32 %7509, 0
  %7511 = extractvalue %dx.types.CBufRet.f32 %7509, 1
  %7512 = extractvalue %dx.types.CBufRet.f32 %7509, 2
  %7513 = extractvalue %dx.types.CBufRet.f32 %7509, 3
  %7514 = select i1 %7507, float %7510, float %7512
  %7515 = select i1 %7508, float %7511, float %7513
  %7516 = fmul fast float %7514, %7505
  %7517 = fmul fast float %7515, %7506
  %7518 = call float @dx.op.unary.f32(i32 6, float %7516)  ; FAbs(value)
  %7519 = call float @dx.op.unary.f32(i32 6, float %7517)  ; FAbs(value)
  %7520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7521 = extractvalue %dx.types.CBufRet.f32 %7520, 0
  %7522 = call float @dx.op.binary.f32(i32 35, float %7518, float %7519)  ; FMax(a,b)
  %7523 = fsub fast float %7521, %7522
  %7524 = call float @dx.op.unary.f32(i32 7, float %7523)  ; Saturate(value)
  %7525 = fcmp fast ogt float %7524, 0.000000e+00
  br i1 %7525, label %7526, label %7567, !dx.controlflow.hints !115

; <label>:7526                                    ; preds = %7467
  %7527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %7500, float %7501, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7528 = extractvalue %dx.types.ResRet.f32 %7527, 1
  %7529 = fcmp fast ogt float %7528, 0.000000e+00
  br i1 %7529, label %7530, label %7562

; <label>:7530                                    ; preds = %7526
  %7531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %43, float %7500, float %7501, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7532 = extractvalue %dx.types.ResRet.f32 %7531, 0
  %7533 = extractvalue %dx.types.ResRet.f32 %7531, 1
  %7534 = extractvalue %dx.types.ResRet.f32 %7531, 2
  %7535 = extractvalue %dx.types.ResRet.f32 %7531, 3
  %7536 = fsub fast float 1.000000e+00, %7482
  %7537 = fsub fast float %7536, %7493
  %7538 = fmul fast float %7537, 0x400921FB60000000
  %7539 = fadd fast float %7538, 0x3FF921FB60000000
  %7540 = call float @dx.op.unary.f32(i32 13, float %7539)  ; Sin(value)
  %7541 = fadd fast float %7540, -1.000000e+00
  %7542 = fmul fast float %7541, 0x3FD45F3060000000
  %7543 = fmul fast float %7537, 0x401921FB60000000
  %7544 = fadd fast float %7543, 0x400921FB60000000
  %7545 = call float @dx.op.unary.f32(i32 13, float %7544)  ; Sin(value)
  %7546 = fadd fast float %7545, 0x3E7777A5C0000000
  %7547 = fmul fast float %7546, 0x3FC45F3060000000
  %7548 = fmul fast float %7537, 0x4022D97C80000000
  %7549 = fadd fast float %7548, 0x4012D97C80000000
  %7550 = call float @dx.op.unary.f32(i32 13, float %7549)  ; Sin(value)
  %7551 = fadd fast float %7550, 1.000000e+00
  %7552 = fmul fast float %7551, 0x3FBB2995E0000000
  %7553 = fmul fast float %7537, 0x402921FB60000000
  %7554 = fadd fast float %7553, 0x401921FB60000000
  %7555 = call float @dx.op.unary.f32(i32 13, float %7554)  ; Sin(value)
  %7556 = fadd fast float %7555, 0xBE8777A5C0000000
  %7557 = fmul fast float %7556, 0x3FB45F3060000000
  %7558 = call float @dx.op.dot4.f32(i32 56, float %7532, float %7533, float %7534, float %7535, float %7542, float %7547, float %7552, float %7557)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7559 = fmul fast float %7558, 0xBFF7154760000000
  %7560 = call float @dx.op.unary.f32(i32 21, float %7559)  ; Exp(value)
  %7561 = call float @dx.op.unary.f32(i32 7, float %7560)  ; Saturate(value)
  br label %7562

; <label>:7562                                    ; preds = %7530, %7526
  %7563 = phi float [ %7561, %7530 ], [ 1.000000e+00, %7526 ]
  %7564 = fadd fast float %7563, -1.000000e+00
  %7565 = fmul fast float %7564, %7524
  %7566 = fadd fast float %7565, 1.000000e+00
  br label %7567

; <label>:7567                                    ; preds = %7562, %7467
  %7568 = phi float [ %7566, %7562 ], [ 1.000000e+00, %7467 ]
  %7569 = fmul fast float %7568, %7463
  %7570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %7571 = extractvalue %dx.types.CBufRet.f32 %7570, 0
  %7572 = extractvalue %dx.types.CBufRet.f32 %7570, 1
  %7573 = extractvalue %dx.types.CBufRet.f32 %7570, 2
  %7574 = fadd fast float %7571, %156
  %7575 = fadd fast float %7572, %157
  %7576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7577 = extractvalue %dx.types.CBufRet.f32 %7576, 1
  %7578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7579 = extractvalue %dx.types.CBufRet.f32 %7578, 0
  %7580 = extractvalue %dx.types.CBufRet.f32 %7578, 1
  %7581 = extractvalue %dx.types.CBufRet.f32 %7578, 2
  %7582 = fsub fast float -0.000000e+00, %7574
  %7583 = fsub fast float -0.000000e+00, %7575
  %7584 = fsub fast float -0.000000e+00, %158
  %7585 = fsub fast float %7584, %7573
  %7586 = fadd fast float %7585, %7577
  %7587 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7582, float %7583, float %7586)  ; Dot3(ax,ay,az,bx,by,bz)
  %7588 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7579, float %7580, float %7581)  ; Dot3(ax,ay,az,bx,by,bz)
  %7589 = fdiv fast float 1.000000e+00, %7588
  %7590 = fmul fast float %7589, %7587
  %7591 = fmul fast float %7579, %7590
  %7592 = fmul fast float %7580, %7590
  %7593 = fadd fast float %7591, %7574
  %7594 = fadd fast float %7592, %7575
  %7595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7596 = extractvalue %dx.types.CBufRet.f32 %7595, 0
  %7597 = extractvalue %dx.types.CBufRet.f32 %7595, 1
  %7598 = fsub fast float %7593, %7596
  %7599 = fsub fast float %7594, %7597
  %7600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7601 = extractvalue %dx.types.CBufRet.f32 %7600, 2
  %7602 = extractvalue %dx.types.CBufRet.f32 %7600, 3
  %7603 = fmul fast float %7598, %7601
  %7604 = fmul fast float %7599, %7602
  %7605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7606 = extractvalue %dx.types.CBufRet.i32 %7605, 3
  %7607 = icmp eq i32 %7606, 0
  br i1 %7607, label %7613, label %7608

; <label>:7608                                    ; preds = %7567
  %7609 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7603, float %7604, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7610 = extractvalue %dx.types.ResRet.f32 %7609, 0
  %7611 = extractvalue %dx.types.ResRet.f32 %7609, 1
  %7612 = extractvalue %dx.types.ResRet.f32 %7609, 2
  br label %7618

; <label>:7613                                    ; preds = %7567
  %7614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7603, float %7604, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7615 = extractvalue %dx.types.ResRet.f32 %7614, 0
  %7616 = extractvalue %dx.types.ResRet.f32 %7614, 1
  %7617 = extractvalue %dx.types.ResRet.f32 %7614, 2
  br label %7618

; <label>:7618                                    ; preds = %7613, %7608
  %7619 = phi float [ %7610, %7608 ], [ %7615, %7613 ]
  %7620 = phi float [ %7611, %7608 ], [ %7616, %7613 ]
  %7621 = phi float [ %7612, %7608 ], [ %7617, %7613 ]
  %7622 = extractvalue %dx.types.CBufRet.f32 %7576, 2
  %7623 = fmul fast float %7622, %7619
  %7624 = extractvalue %dx.types.CBufRet.f32 %7576, 0
  %7625 = fsub fast float %7590, %7624
  %7626 = fsub fast float %7625, %7623
  %7627 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7626)  ; FMax(a,b)
  %7628 = fmul fast float %7627, %7620
  %7629 = call float @dx.op.binary.f32(i32 36, float %7621, float %7628)  ; FMin(a,b)
  %7630 = fmul fast float %7629, 0xBFF7154760000000
  %7631 = call float @dx.op.unary.f32(i32 21, float %7630)  ; Exp(value)
  %7632 = fmul fast float %7569, %7631
  br label %7633

; <label>:7633                                    ; preds = %7618, %7462
  %7634 = phi float [ %7632, %7618 ], [ %7463, %7462 ]
  %7635 = call float @dx.op.binary.f32(i32 36, float %7634, float %7634)  ; FMin(a,b)
  %7636 = call float @dx.op.binary.f32(i32 36, float %7634, float %7635)  ; FMin(a,b)
  %7637 = fcmp fast ogt float %7636, 0.000000e+00
  br i1 %7637, label %7638, label %7821, !dx.controlflow.hints !116

; <label>:7638                                    ; preds = %7633
  %7639 = fmul fast float %7634, %6355
  %7640 = fmul fast float %7634, %6356
  %7641 = fmul fast float %7634, %6357
  %7642 = fsub fast float %6344, %5503
  %7643 = fsub fast float %6345, %5504
  %7644 = fsub fast float %6346, %5505
  %7645 = call float @dx.op.dot3.f32(i32 55, float %7642, float %7643, float %7644, float %7642, float %7643, float %7644)  ; Dot3(ax,ay,az,bx,by,bz)
  %7646 = call float @dx.op.unary.f32(i32 25, float %7645)  ; Rsqrt(value)
  %7647 = fmul fast float %7646, %7642
  %7648 = fmul fast float %7646, %7643
  %7649 = fmul fast float %7646, %7644
  %7650 = call float @dx.op.dot3.f32(i32 55, float %6344, float %6345, float %6346, float %5126, float %5127, float %5128)  ; Dot3(ax,ay,az,bx,by,bz)
  %7651 = call float @dx.op.dot3.f32(i32 55, float %5506, float %5507, float %5508, float %7647, float %7648, float %7649)  ; Dot3(ax,ay,az,bx,by,bz)
  %7652 = call float @dx.op.unary.f32(i32 7, float %7650)  ; Saturate(value)
  %7653 = fmul fast float %7652, %7652
  %7654 = fmul fast float %7653, %6339
  %7655 = call float @dx.op.unary.f32(i32 7, float %7654)  ; Saturate(value)
  %7656 = fmul fast float %7655, %7652
  %7657 = call float @dx.op.dot3.f32(i32 55, float %5126, float %5127, float %5128, float %7647, float %7648, float %7649)  ; Dot3(ax,ay,az,bx,by,bz)
  %7658 = fmul fast float %7657, %7657
  %7659 = call float @dx.op.unary.f32(i32 6, float %7650)  ; FAbs(value)
  %7660 = fsub fast float 1.000000e+00, %5529
  %7661 = fmul fast float %5511, %5511
  %7662 = fmul fast float %7661, %7660
  %7663 = fadd fast float %7662, %5529
  %7664 = bitcast float %7663 to i32
  %7665 = ashr i32 %7664, 1
  %7666 = add nsw i32 %7665, 532487669
  %7667 = bitcast i32 %7666 to float
  %7668 = fadd fast float %7667, %5511
  %7669 = fmul fast float %5529, %7658
  %7670 = fsub fast float 1.000000e+00, %7658
  %7671 = fadd fast float %7670, %7669
  %7672 = fmul fast float %7659, %7659
  %7673 = fmul fast float %7672, %7660
  %7674 = fadd fast float %7673, %5529
  %7675 = bitcast float %7674 to i32
  %7676 = ashr i32 %7675, 1
  %7677 = add nsw i32 %7676, 532487669
  %7678 = bitcast i32 %7677 to float
  %7679 = fadd fast float %7678, %7659
  %7680 = fmul fast float %7671, %7671
  %7681 = fmul fast float %7680, %7668
  %7682 = fmul fast float %7681, %7679
  %7683 = fdiv fast float 0x3FF0A00000000000, %7682
  %7684 = fmul fast float %7683, %5529
  %7685 = fmul fast float %5635, 0x3FF9999980000000
  %7686 = fsub fast float 5.000000e+00, %7685
  %7687 = call float @dx.op.unary.f32(i32 6, float %7651)  ; FAbs(value)
  %7688 = fsub fast float 1.000000e+00, %7687
  %7689 = fmul fast float %5635, 0x41D9660740000000
  %7690 = fadd fast float %7689, 0xC1EFBF8940000000
  %7691 = bitcast float %7688 to i32
  %7692 = sitofp i32 %7691 to float
  %7693 = fmul fast float %7692, %7686
  %7694 = fadd fast float %7690, %7693
  %7695 = fptosi float %7694 to i32
  %7696 = bitcast i32 %7695 to float
  %7697 = fsub fast float 1.000000e+00, %5123
  %7698 = fsub fast float 1.000000e+00, %5124
  %7699 = fsub fast float 1.000000e+00, %5509
  %7700 = fmul fast float %7696, %7697
  %7701 = fmul fast float %7696, %7698
  %7702 = fmul fast float %7696, %7699
  %7703 = fadd fast float %7700, %5123
  %7704 = fadd fast float %7701, %5124
  %7705 = fadd fast float %7702, %5509
  br i1 %5658, label %7706, label %7729

; <label>:7706                                    ; preds = %7638
  %7707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %4819, float %7687, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7708 = extractvalue %dx.types.ResRet.f32 %7707, 0
  %7709 = extractvalue %dx.types.ResRet.f32 %7707, 1
  %7710 = extractvalue %dx.types.ResRet.f32 %7707, 2
  %7711 = fadd fast float %7708, -5.000000e-01
  %7712 = fadd fast float %7709, -5.000000e-01
  %7713 = fadd fast float %7710, -5.000000e-01
  %7714 = fmul fast float %5123, 4.000000e+00
  %7715 = fmul fast float %7714, %7697
  %7716 = fmul fast float %7715, %7711
  %7717 = fmul fast float %5124, 4.000000e+00
  %7718 = fmul fast float %7717, %7698
  %7719 = fmul fast float %7718, %7712
  %7720 = fmul fast float %5509, 4.000000e+00
  %7721 = fmul fast float %7720, %7699
  %7722 = fmul fast float %7721, %7713
  %7723 = fadd fast float %7716, %7703
  %7724 = fadd fast float %7719, %7704
  %7725 = fadd fast float %7722, %7705
  %7726 = call float @dx.op.unary.f32(i32 7, float %7723)  ; Saturate(value)
  %7727 = call float @dx.op.unary.f32(i32 7, float %7724)  ; Saturate(value)
  %7728 = call float @dx.op.unary.f32(i32 7, float %7725)  ; Saturate(value)
  br label %7729

; <label>:7729                                    ; preds = %7706, %7638
  %7730 = phi float [ %7726, %7706 ], [ %7703, %7638 ]
  %7731 = phi float [ %7727, %7706 ], [ %7704, %7638 ]
  %7732 = phi float [ %7728, %7706 ], [ %7705, %7638 ]
  %7733 = fmul fast float %7650, 9.843750e-01
  %7734 = fadd fast float %7733, 7.812500e-03
  %7735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %43, float %7734, float %5639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7736 = extractvalue %dx.types.ResRet.f32 %7735, 0
  %7737 = extractvalue %dx.types.ResRet.f32 %7735, 1
  %7738 = extractvalue %dx.types.ResRet.f32 %7735, 2
  %7739 = extractvalue %dx.types.ResRet.f32 %7735, 3
  %7740 = fsub fast float %7738, %7736
  %7741 = fsub fast float %7739, %7737
  %7742 = fmul fast float %7740, %5645
  %7743 = fmul fast float %7741, %5645
  %7744 = fadd fast float %7742, %7736
  %7745 = fadd fast float %7743, %7737
  %7746 = fmul fast float %7744, %5123
  %7747 = fmul fast float %7744, %5124
  %7748 = fmul fast float %7744, %5509
  %7749 = fadd fast float %7746, %7745
  %7750 = fadd fast float %7747, %7745
  %7751 = fadd fast float %7748, %7745
  br i1 %5658, label %7752, label %7775

; <label>:7752                                    ; preds = %7729
  %7753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %4819, float %7650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7754 = extractvalue %dx.types.ResRet.f32 %7753, 0
  %7755 = extractvalue %dx.types.ResRet.f32 %7753, 1
  %7756 = extractvalue %dx.types.ResRet.f32 %7753, 2
  %7757 = fadd fast float %7754, -5.000000e-01
  %7758 = fadd fast float %7755, -5.000000e-01
  %7759 = fadd fast float %7756, -5.000000e-01
  %7760 = fmul fast float %5123, 4.000000e+00
  %7761 = fmul fast float %7760, %7697
  %7762 = fmul fast float %7761, %7757
  %7763 = fmul fast float %5124, 4.000000e+00
  %7764 = fmul fast float %7763, %7698
  %7765 = fmul fast float %7764, %7758
  %7766 = fmul fast float %5509, 4.000000e+00
  %7767 = fmul fast float %7766, %7699
  %7768 = fmul fast float %7767, %7759
  %7769 = fadd fast float %7762, %7749
  %7770 = fadd fast float %7765, %7750
  %7771 = fadd fast float %7768, %7751
  %7772 = call float @dx.op.unary.f32(i32 7, float %7769)  ; Saturate(value)
  %7773 = call float @dx.op.unary.f32(i32 7, float %7770)  ; Saturate(value)
  %7774 = call float @dx.op.unary.f32(i32 7, float %7771)  ; Saturate(value)
  br label %7775

; <label>:7775                                    ; preds = %7752, %7729
  %7776 = phi float [ %7772, %7752 ], [ %7749, %7729 ]
  %7777 = phi float [ %7773, %7752 ], [ %7750, %7729 ]
  %7778 = phi float [ %7774, %7752 ], [ %7751, %7729 ]
  %7779 = call float @dx.op.binary.f32(i32 35, float %7777, float %7778)  ; FMax(a,b)
  %7780 = call float @dx.op.binary.f32(i32 35, float %7776, float %7779)  ; FMax(a,b)
  %7781 = fsub fast float 1.000000e+00, %7780
  %7782 = fmul fast float %7730, %7684
  %7783 = fmul fast float %7731, %7684
  %7784 = fmul fast float %7732, %7684
  %7785 = fsub fast float 1.000000e+00, %7651
  %7786 = bitcast float %7785 to i32
  %7787 = sitofp i32 %7786 to float
  %7788 = fmul fast float %7787, 5.000000e+00
  %7789 = fadd fast float %7788, 0xC1EFBF8940000000
  %7790 = fptosi float %7789 to i32
  %7791 = bitcast i32 %7790 to float
  %7792 = fmul fast float %7791, %4820
  %7793 = fmul fast float %7781, %7792
  %7794 = fmul fast float %7793, %6278
  %7795 = fmul fast float %7793, %6279
  %7796 = fmul fast float %7793, %6280
  %7797 = fadd fast float %7794, %7782
  %7798 = fadd fast float %7795, %7783
  %7799 = fadd fast float %7796, %7784
  %7800 = fmul fast float %7656, %7639
  %7801 = fmul fast float %7800, %7781
  %7802 = fmul fast float %7656, %7640
  %7803 = fmul fast float %7802, %7781
  %7804 = fmul fast float %7656, %7641
  %7805 = fmul fast float %7804, %7781
  %7806 = fmul fast float %7800, %7797
  %7807 = fmul fast float %7802, %7798
  %7808 = fmul fast float %7804, %7799
  %7809 = fadd fast float %7801, %6262
  %7810 = fmul fast float %7809, %4816
  %7811 = fadd fast float %7803, %6263
  %7812 = fmul fast float %7811, %4816
  %7813 = fadd fast float %7805, %6264
  %7814 = fmul fast float %7813, %4816
  %7815 = fadd fast float %7806, %6331
  %7816 = fmul fast float %7815, %4816
  %7817 = fadd fast float %7807, %6334
  %7818 = fmul fast float %7817, %4816
  %7819 = fadd fast float %7808, %6337
  %7820 = fmul fast float %7819, %4816
  br label %7821

; <label>:7821                                    ; preds = %7775, %7633, %6258
  %7822 = phi float [ %6332, %6258 ], [ %6332, %7633 ], [ %7816, %7775 ]
  %7823 = phi float [ %6335, %6258 ], [ %6335, %7633 ], [ %7818, %7775 ]
  %7824 = phi float [ %6338, %6258 ], [ %6338, %7633 ], [ %7820, %7775 ]
  %7825 = phi float [ %6327, %6258 ], [ %6327, %7633 ], [ %7810, %7775 ]
  %7826 = phi float [ %6328, %6258 ], [ %6328, %7633 ], [ %7812, %7775 ]
  %7827 = phi float [ %6329, %6258 ], [ %6329, %7633 ], [ %7814, %7775 ]
  %7828 = fmul fast float %4816, %4816
  %7829 = fmul fast float %7828, %6304
  %7830 = fmul fast float %7828, %6305
  %7831 = fmul fast float %7828, %6306
  %7832 = fadd fast float %7829, 1.000000e+00
  %7833 = fadd fast float %7830, 1.000000e+00
  %7834 = fadd fast float %7831, 1.000000e+00
  %7835 = call float @dx.op.dot3.f32(i32 55, float %7832, float %7833, float %7834, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7836 = fsub fast float 1.000000e+00, %7835
  %7837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7838 = extractvalue %dx.types.CBufRet.f32 %7837, 0
  %7839 = fmul fast float %7838, %6310
  %7840 = fsub fast float 1.000000e+00, %5500
  %7841 = extractvalue %dx.types.CBufRet.f32 %7837, 2
  %7842 = fmul fast float %7841, %7840
  %7843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7844 = extractvalue %dx.types.CBufRet.f32 %7843, 3
  %7845 = fsub fast float 1.000000e+00, %4823
  %7846 = call float @dx.op.unary.f32(i32 7, float %7845)  ; Saturate(value)
  %7847 = fadd fast float %7827, %4822
  %7848 = fmul fast float %7847, %4823
  %7849 = fmul fast float %7846, %7844
  %7850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7851 = extractvalue %dx.types.CBufRet.f32 %7850, 3
  %7852 = fmul fast float %7825, %5120
  %7853 = fmul fast float %7826, %5121
  %7854 = fmul fast float %7827, %5122
  %7855 = fcmp fast ogt float %81, %178
  %7856 = and i1 %7855, %4865
  %7857 = or i1 %4944, %7856
  %7858 = icmp eq i32 %4864, 2
  %7859 = fcmp fast ole float %81, %178
  %7860 = and i1 %7859, %7858
  %7861 = or i1 %7860, %7857
  br i1 %7856, label %7862, label %8119

; <label>:7862                                    ; preds = %7821
  %7863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7864 = extractvalue %dx.types.CBufRet.f32 %7863, 2
  %7865 = extractvalue %dx.types.CBufRet.f32 %7863, 3
  %7866 = fmul fast float %7864, %93
  %7867 = fmul fast float %7865, %94
  %7868 = call float @dx.op.unary.f32(i32 7, float %7866)  ; Saturate(value)
  %7869 = call float @dx.op.unary.f32(i32 7, float %7867)  ; Saturate(value)
  %7870 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %7868, float %7869, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7871 = extractvalue %dx.types.ResRet.f32 %7870, 0
  %7872 = extractvalue %dx.types.ResRet.f32 %7870, 1
  %7873 = extractvalue %dx.types.ResRet.f32 %7870, 2
  %7874 = extractvalue %dx.types.ResRet.f32 %7870, 3
  %7875 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %7868, float %7869, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7876 = extractvalue %dx.types.ResRet.f32 %7875, 0
  %7877 = extractvalue %dx.types.ResRet.f32 %7875, 1
  %7878 = extractvalue %dx.types.ResRet.f32 %7875, 2
  %7879 = extractvalue %dx.types.ResRet.f32 %7875, 3
  %7880 = call float @dx.op.binary.f32(i32 35, float %7872, float %7873)  ; FMax(a,b)
  %7881 = call float @dx.op.binary.f32(i32 35, float %7871, float %7880)  ; FMax(a,b)
  %7882 = call float @dx.op.binary.f32(i32 35, float %7881, float %7874)  ; FMax(a,b)
  %7883 = call float @dx.op.binary.f32(i32 36, float %7877, float %7878)  ; FMin(a,b)
  %7884 = call float @dx.op.binary.f32(i32 36, float %7876, float %7883)  ; FMin(a,b)
  %7885 = call float @dx.op.binary.f32(i32 36, float %7884, float %7879)  ; FMin(a,b)
  %7886 = fmul fast float %7882, 2.550000e+02
  %7887 = fadd fast float %7886, 0x3F70101020000000
  %7888 = fptoui float %7887 to i32
  %7889 = fmul fast float %7885, 2.550000e+02
  %7890 = fadd fast float %7889, 0x3F70101020000000
  %7891 = fptoui float %7890 to i32
  %7892 = icmp ult i32 %7888, %7891
  br i1 %7892, label %7893, label %8061

; <label>:7893                                    ; preds = %7862
  %7894 = fcmp fast ogt float %80, 9.843750e-01
  %7895 = fadd fast float %81, -4.000000e+00
  %7896 = select i1 %7894, float -4.000000e+00, float %7895
  %7897 = call float @dx.op.binary.f32(i32 35, float %7896, float 0.000000e+00)  ; FMax(a,b)
  %7898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7899 = extractvalue %dx.types.CBufRet.f32 %7898, 0
  %7900 = fadd fast float %7899, %7897
  %7901 = extractvalue %dx.types.CBufRet.f32 %7898, 2
  %7902 = fmul fast float %7900, %7901
  %7903 = call float @dx.op.unary.f32(i32 23, float %7902)  ; Log(value)
  %7904 = extractvalue %dx.types.CBufRet.f32 %7898, 3
  %7905 = fmul fast float %7904, %7903
  %7906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7907 = extractvalue %dx.types.CBufRet.f32 %7906, 2
  %7908 = fmul fast float %7905, %7907
  %7909 = call float @dx.op.unary.f32(i32 7, float %7908)  ; Saturate(value)
  %7910 = uitofp i32 %7888 to float
  %7911 = uitofp i32 %7891 to float
  %7912 = fadd fast float %7910, 5.000000e-01
  %7913 = fadd fast float %7911, 5.000000e-01
  %7914 = fmul fast float %7907, %7912
  %7915 = fmul fast float %7907, %7913
  %7916 = fadd fast float %7914, 0x3F0FFB4800000000
  %7917 = fadd fast float %7915, 0xBF0FFB4800000000
  %7918 = call float @dx.op.binary.f32(i32 35, float %7909, float %7916)  ; FMax(a,b)
  %7919 = call float @dx.op.binary.f32(i32 36, float %7918, float %7917)  ; FMin(a,b)
  %7920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7921 = extractvalue %dx.types.CBufRet.f32 %7920, 1
  %7922 = extractvalue %dx.types.CBufRet.f32 %7920, 2
  %7923 = extractvalue %dx.types.CBufRet.f32 %7920, 0
  %7924 = fmul fast float %7921, %7919
  %7925 = fadd fast float %7923, %7924
  %7926 = fadd fast float %7923, %7922
  %7927 = fsub fast float %7921, %7922
  %7928 = fadd fast float %7927, %7923
  %7929 = call float @dx.op.binary.f32(i32 35, float %7925, float %7926)  ; FMax(a,b)
  %7930 = call float @dx.op.binary.f32(i32 36, float %7929, float %7928)  ; FMin(a,b)
  %7931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %7868, float %7869, float %7930, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7932 = extractvalue %dx.types.ResRet.f32 %7931, 0
  %7933 = extractvalue %dx.types.ResRet.f32 %7931, 1
  %7934 = extractvalue %dx.types.ResRet.f32 %7931, 2
  %7935 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7936 = extractvalue %dx.types.CBufRet.i32 %7935, 0
  %7937 = extractvalue %dx.types.CBufRet.i32 %7935, 1
  %7938 = uitofp i32 %7936 to float
  %7939 = uitofp i32 %7937 to float
  %7940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7941 = extractvalue %dx.types.CBufRet.f32 %7940, 0
  %7942 = extractvalue %dx.types.CBufRet.f32 %7940, 1
  %7943 = fmul fast float %7938, %7868
  %7944 = fmul fast float %7939, %7869
  %7945 = fadd fast float %7943, -5.000000e-01
  %7946 = fadd fast float %7944, -5.000000e-01
  %7947 = call float @dx.op.unary.f32(i32 22, float %7945)  ; Frc(value)
  %7948 = call float @dx.op.unary.f32(i32 22, float %7946)  ; Frc(value)
  %7949 = fmul fast float %7947, %7947
  %7950 = fmul fast float %7949, %7947
  %7951 = fsub fast float 3.000000e+00, %7947
  %7952 = fmul fast float %7949, %7951
  %7953 = fmul fast float %7947, 3.000000e+00
  %7954 = fmul fast float %7950, 3.000000e+00
  %7955 = fmul fast float %7949, 6.000000e+00
  %7956 = fsub fast float %7954, %7955
  %7957 = fadd fast float %7956, 4.000000e+00
  %7958 = fmul fast float %7957, 0x3FC5555560000000
  %7959 = fmul fast float %7950, -3.000000e+00
  %7960 = fadd fast float %7949, %7947
  %7961 = fmul fast float %7960, 3.000000e+00
  %7962 = fadd fast float %7959, 1.000000e+00
  %7963 = fadd fast float %7962, %7961
  %7964 = fmul fast float %7950, 0x3FC5555560000000
  %7965 = fmul fast float %7948, %7948
  %7966 = fmul fast float %7965, %7948
  %7967 = fsub fast float 3.000000e+00, %7948
  %7968 = fmul fast float %7965, %7967
  %7969 = fmul fast float %7948, 3.000000e+00
  %7970 = fmul fast float %7966, 3.000000e+00
  %7971 = fmul fast float %7965, 6.000000e+00
  %7972 = fsub fast float %7970, %7971
  %7973 = fadd fast float %7972, 4.000000e+00
  %7974 = fmul fast float %7973, 0x3FC5555560000000
  %7975 = fmul fast float %7966, -3.000000e+00
  %7976 = fadd fast float %7965, %7948
  %7977 = fmul fast float %7976, 3.000000e+00
  %7978 = fadd fast float %7975, 1.000000e+00
  %7979 = fadd fast float %7978, %7977
  %7980 = fmul fast float %7966, 0x3FC5555560000000
  %7981 = fadd fast float %7947, 1.000000e+00
  %7982 = fsub fast float 1.000000e+00, %7953
  %7983 = fadd fast float %7982, %7952
  %7984 = fadd fast float %7983, %7957
  %7985 = fmul fast float %7984, 0x3FC5555560000000
  %7986 = fdiv fast float %7958, %7985
  %7987 = fsub fast float %7981, %7986
  %7988 = fsub fast float 1.000000e+00, %7947
  %7989 = fadd fast float %7963, %7950
  %7990 = fmul fast float %7989, 0x3FC5555560000000
  %7991 = fdiv fast float %7964, %7990
  %7992 = fadd fast float %7988, %7991
  %7993 = fadd fast float %7948, 1.000000e+00
  %7994 = fsub fast float 1.000000e+00, %7969
  %7995 = fadd fast float %7994, %7968
  %7996 = fadd fast float %7995, %7973
  %7997 = fmul fast float %7996, 0x3FC5555560000000
  %7998 = fdiv fast float %7974, %7997
  %7999 = fsub fast float %7993, %7998
  %8000 = fsub fast float 1.000000e+00, %7948
  %8001 = fadd fast float %7979, %7966
  %8002 = fmul fast float %8001, 0x3FC5555560000000
  %8003 = fdiv fast float %7980, %8002
  %8004 = fadd fast float %8003, %8000
  %8005 = fmul fast float %7987, %7941
  %8006 = fsub fast float %7868, %8005
  %8007 = fmul fast float %7992, %7941
  %8008 = fadd fast float %8007, %7868
  %8009 = fmul fast float %8004, %7942
  %8010 = fadd fast float %8009, %7869
  %8011 = fmul fast float %7999, %7942
  %8012 = fsub fast float %7869, %8011
  %8013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8006, float %8012, float %7930, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8014 = extractvalue %dx.types.ResRet.f32 %8013, 0
  %8015 = extractvalue %dx.types.ResRet.f32 %8013, 1
  %8016 = extractvalue %dx.types.ResRet.f32 %8013, 2
  %8017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8008, float %8012, float %7930, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8018 = extractvalue %dx.types.ResRet.f32 %8017, 0
  %8019 = extractvalue %dx.types.ResRet.f32 %8017, 1
  %8020 = extractvalue %dx.types.ResRet.f32 %8017, 2
  %8021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8006, float %8010, float %7930, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8022 = extractvalue %dx.types.ResRet.f32 %8021, 0
  %8023 = extractvalue %dx.types.ResRet.f32 %8021, 1
  %8024 = extractvalue %dx.types.ResRet.f32 %8021, 2
  %8025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8008, float %8010, float %7930, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8026 = extractvalue %dx.types.ResRet.f32 %8025, 0
  %8027 = extractvalue %dx.types.ResRet.f32 %8025, 1
  %8028 = extractvalue %dx.types.ResRet.f32 %8025, 2
  %8029 = fsub fast float %8022, %8014
  %8030 = fsub fast float %8023, %8015
  %8031 = fsub fast float %8024, %8016
  %8032 = fmul fast float %8029, %8002
  %8033 = fmul fast float %8030, %8002
  %8034 = fmul fast float %8031, %8002
  %8035 = fadd fast float %8032, %8014
  %8036 = fadd fast float %8033, %8015
  %8037 = fadd fast float %8034, %8016
  %8038 = fsub fast float %8026, %8018
  %8039 = fsub fast float %8027, %8019
  %8040 = fsub fast float %8028, %8020
  %8041 = fmul fast float %8038, %8002
  %8042 = fmul fast float %8039, %8002
  %8043 = fmul fast float %8040, %8002
  %8044 = fsub fast float %8018, %8035
  %8045 = fadd fast float %8044, %8041
  %8046 = fsub fast float %8019, %8036
  %8047 = fadd fast float %8046, %8042
  %8048 = fsub fast float %8020, %8037
  %8049 = fadd fast float %8048, %8043
  %8050 = fmul fast float %8045, %7990
  %8051 = fmul fast float %8047, %7990
  %8052 = fmul fast float %8049, %7990
  %8053 = fadd fast float %8050, %8035
  %8054 = fadd fast float %8051, %8036
  %8055 = fadd fast float %8052, %8037
  %8056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8057 = extractvalue %dx.types.CBufRet.f32 %8056, 1
  %8058 = fmul fast float %8053, %8057
  %8059 = fmul fast float %8054, %8057
  %8060 = fmul fast float %8055, %8057
  br label %8061

; <label>:8061                                    ; preds = %7893, %7862
  %8062 = phi float [ %7932, %7893 ], [ 1.000000e+00, %7862 ]
  %8063 = phi float [ %7933, %7893 ], [ 1.000000e+00, %7862 ]
  %8064 = phi float [ %7934, %7893 ], [ 1.000000e+00, %7862 ]
  %8065 = phi float [ %8058, %7893 ], [ 0.000000e+00, %7862 ]
  %8066 = phi float [ %8059, %7893 ], [ 0.000000e+00, %7862 ]
  %8067 = phi float [ %8060, %7893 ], [ 0.000000e+00, %7862 ]
  %8068 = fmul fast float %8065, %7836
  %8069 = fmul fast float %8066, %7836
  %8070 = fmul fast float %8067, %7836
  %8071 = call float @dx.op.dot3.f32(i32 55, float %8062, float %8063, float %8064, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8072 = call float @dx.op.dot3.f32(i32 55, float %8068, float %8069, float %8070, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8073 = select i1 %217, float %8071, float %8062
  %8074 = select i1 %217, float %8071, float %8063
  %8075 = select i1 %217, float 1.000000e+00, float %8064
  %8076 = select i1 %217, float %8072, float %8068
  %8077 = select i1 %217, float 0.000000e+00, float %8069
  %8078 = select i1 %217, float 0.000000e+00, float %8070
  %8079 = fmul fast float %8073, %7852
  %8080 = fmul fast float %8074, %7853
  %8081 = fmul fast float %8075, %7854
  %8082 = fadd fast float %8079, %8076
  %8083 = fadd fast float %8080, %8077
  %8084 = fadd fast float %8078, %8081
  %8085 = fmul fast float %8073, %7822
  %8086 = fmul fast float %8074, %7823
  %8087 = fmul fast float %8075, %7824
  %8088 = fmul fast float %126, %7864
  %8089 = fmul fast float %128, %7865
  %8090 = fsub fast float 1.000000e+00, %8088
  %8091 = fsub fast float 1.000000e+00, %8089
  %8092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8093 = extractvalue %dx.types.CBufRet.f32 %8092, 0
  %8094 = extractvalue %dx.types.CBufRet.f32 %8092, 1
  %8095 = extractvalue %dx.types.CBufRet.f32 %8092, 2
  %8096 = fmul fast float %8090, %8093
  %8097 = fmul fast float %8090, %8094
  %8098 = fmul fast float %8090, %8095
  %8099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.f32 %8099, 0
  %8101 = extractvalue %dx.types.CBufRet.f32 %8099, 1
  %8102 = extractvalue %dx.types.CBufRet.f32 %8099, 2
  %8103 = fmul fast float %8091, %8100
  %8104 = fmul fast float %8091, %8101
  %8105 = fmul fast float %8091, %8102
  %8106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8107 = extractvalue %dx.types.CBufRet.f32 %8106, 0
  %8108 = extractvalue %dx.types.CBufRet.f32 %8106, 1
  %8109 = extractvalue %dx.types.CBufRet.f32 %8106, 2
  %8110 = fadd fast float %8103, %8107
  %8111 = fadd fast float %8110, %8096
  %8112 = fadd fast float %8104, %8108
  %8113 = fadd fast float %8112, %8097
  %8114 = fadd fast float %8105, %8109
  %8115 = fadd fast float %8114, %8098
  %8116 = fmul fast float %8111, %178
  %8117 = fmul fast float %8113, %178
  %8118 = fmul fast float %8115, %178
  br label %8119

; <label>:8119                                    ; preds = %8061, %7821
  %8120 = phi float [ %8116, %8061 ], [ %156, %7821 ]
  %8121 = phi float [ %8117, %8061 ], [ %157, %7821 ]
  %8122 = phi float [ %8118, %8061 ], [ %158, %7821 ]
  %8123 = phi float [ %178, %8061 ], [ %81, %7821 ]
  %8124 = phi float [ %8082, %8061 ], [ %7852, %7821 ]
  %8125 = phi float [ %8083, %8061 ], [ %7853, %7821 ]
  %8126 = phi float [ %8084, %8061 ], [ %7854, %7821 ]
  %8127 = phi float [ %8085, %8061 ], [ %7822, %7821 ]
  %8128 = phi float [ %8086, %8061 ], [ %7823, %7821 ]
  %8129 = phi float [ %8087, %8061 ], [ %7824, %7821 ]
  %8130 = phi float [ %8062, %8061 ], [ 1.000000e+00, %7821 ]
  br i1 %7861, label %9281, label %8131

; <label>:8131                                    ; preds = %8119
  %8132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8133 = extractvalue %dx.types.CBufRet.f32 %8132, 0
  %8134 = extractvalue %dx.types.CBufRet.f32 %8132, 1
  %8135 = extractvalue %dx.types.CBufRet.f32 %8132, 2
  %8136 = extractvalue %dx.types.CBufRet.f32 %8132, 3
  %8137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.f32 %8137, 0
  %8139 = extractvalue %dx.types.CBufRet.f32 %8137, 1
  %8140 = extractvalue %dx.types.CBufRet.f32 %8137, 2
  %8141 = extractvalue %dx.types.CBufRet.f32 %8137, 3
  %8142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8143 = extractvalue %dx.types.CBufRet.f32 %8142, 0
  %8144 = extractvalue %dx.types.CBufRet.f32 %8142, 1
  %8145 = extractvalue %dx.types.CBufRet.f32 %8142, 2
  %8146 = extractvalue %dx.types.CBufRet.f32 %8142, 3
  %8147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8148 = extractvalue %dx.types.CBufRet.f32 %8147, 0
  %8149 = extractvalue %dx.types.CBufRet.f32 %8147, 1
  %8150 = extractvalue %dx.types.CBufRet.f32 %8147, 2
  %8151 = extractvalue %dx.types.CBufRet.f32 %8147, 3
  %8152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8153 = extractvalue %dx.types.CBufRet.f32 %8152, 3
  %8154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8155 = extractvalue %dx.types.CBufRet.f32 %8154, 3
  %8156 = extractvalue %dx.types.CBufRet.f32 %8154, 0
  %8157 = extractvalue %dx.types.CBufRet.f32 %8154, 1
  %8158 = extractvalue %dx.types.CBufRet.f32 %8154, 2
  %8159 = fcmp fast olt float %8158, -5.000000e-01
  %8160 = call float @dx.op.dot3.f32(i32 55, float %8120, float %8121, float %8122, float %8120, float %8121, float %8122)  ; Dot3(ax,ay,az,bx,by,bz)
  %8161 = call float @dx.op.unary.f32(i32 25, float %8160)  ; Rsqrt(value)
  %8162 = fmul fast float %8161, %8160
  %8163 = fmul fast float %8161, %8120
  %8164 = fmul fast float %8161, %8121
  %8165 = fmul fast float %8161, %8122
  %8166 = fadd fast float %8162, %8136
  %8167 = call float @dx.op.dot3.f32(i32 55, float %8163, float %8164, float %8165, float %8133, float %8134, float %8135)  ; Dot3(ax,ay,az,bx,by,bz)
  %8168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8169 = extractvalue %dx.types.CBufRet.i32 %8168, 1
  %8170 = and i32 %8169, 1
  %8171 = icmp ne i32 %8170, 0
  %8172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8173 = extractvalue %dx.types.CBufRet.f32 %8172, 2
  %8174 = fcmp fast ogt float %8173, 0.000000e+00
  %8175 = and i1 %8171, %8174
  br i1 %8175, label %8176, label %8578, !dx.controlflow.hints !117

; <label>:8176                                    ; preds = %8131
  %8177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8178 = extractvalue %dx.types.CBufRet.f32 %8177, 3
  %8179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8180 = extractvalue %dx.types.CBufRet.f32 %8179, 2
  %8181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8182 = extractvalue %dx.types.CBufRet.f32 %8181, 2
  %8183 = fsub fast float %8180, %8182
  %8184 = and i32 %8169, 2
  %8185 = extractvalue %dx.types.CBufRet.i32 %8168, 0
  %8186 = call i32 @dx.op.binary.i32(i32 40, i32 %8185, i32 3)  ; UMin(a,b)
  %8187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8188 = extractvalue %dx.types.CBufRet.f32 %8187, 0
  %8189 = extractvalue %dx.types.CBufRet.f32 %8187, 1
  %8190 = extractvalue %dx.types.CBufRet.f32 %8181, 0
  %8191 = extractvalue %dx.types.CBufRet.f32 %8181, 1
  %8192 = fsub fast float %8188, %8190
  %8193 = fsub fast float %8189, %8191
  %8194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8195 = extractvalue %dx.types.CBufRet.f32 %8194, 0
  %8196 = fcmp fast ogt float %8195, 0.000000e+00
  %8197 = fsub fast float -0.000000e+00, %8192
  %8198 = fsub fast float -0.000000e+00, %8193
  %8199 = call float @dx.op.dot2.f32(i32 54, float %8163, float %8164, float %8163, float %8164)  ; Dot2(ax,ay,bx,by)
  %8200 = call float @dx.op.dot2.f32(i32 54, float %8163, float %8164, float %8197, float %8198)  ; Dot2(ax,ay,bx,by)
  %8201 = fmul fast float %8200, 2.000000e+00
  %8202 = call float @dx.op.dot2.f32(i32 54, float %8197, float %8198, float %8197, float %8198)  ; Dot2(ax,ay,bx,by)
  %8203 = fmul fast float %8195, %8195
  %8204 = fsub fast float %8202, %8203
  %8205 = fmul fast float %8201, %8201
  %8206 = fmul fast float %8199, 4.000000e+00
  %8207 = fmul fast float %8206, %8204
  %8208 = fsub fast float %8205, %8207
  %8209 = fcmp fast ogt float %8208, 0.000000e+00
  br i1 %8209, label %8210, label %8225

; <label>:8210                                    ; preds = %8176
  %8211 = fcmp fast ogt float %8201, 0.000000e+00
  %8212 = call float @dx.op.unary.f32(i32 24, float %8208)  ; Sqrt(value)
  %8213 = fsub fast float -0.000000e+00, %8212
  %8214 = select i1 %8211, float %8212, float %8213
  %8215 = fadd fast float %8214, %8201
  %8216 = fmul float %8215, -5.000000e-01
  %8217 = fdiv fast float %8216, %8199
  %8218 = call float @dx.op.binary.f32(i32 35, float %8217, float 0.000000e+00)  ; FMax(a,b)
  %8219 = call float @dx.op.binary.f32(i32 36, float %8162, float %8218)  ; FMin(a,b)
  %8220 = fdiv fast float %8204, %8216
  %8221 = call float @dx.op.binary.f32(i32 35, float %8220, float 0.000000e+00)  ; FMax(a,b)
  %8222 = call float @dx.op.binary.f32(i32 36, float %8162, float %8221)  ; FMin(a,b)
  %8223 = call float @dx.op.binary.f32(i32 36, float %8219, float %8222)  ; FMin(a,b)
  %8224 = call float @dx.op.binary.f32(i32 35, float %8219, float %8222)  ; FMax(a,b)
  br label %8225

; <label>:8225                                    ; preds = %8210, %8176
  %8226 = phi float [ %8224, %8210 ], [ -1.000000e+00, %8176 ]
  %8227 = phi float [ %8223, %8210 ], [ -1.000000e+00, %8176 ]
  %8228 = phi i1 [ true, %8210 ], [ false, %8176 ]
  %8229 = and i1 %8196, %8228
  br i1 %8229, label %8230, label %8232

; <label>:8230                                    ; preds = %8225
  %8231 = fcmp fast oeq float %8227, %8226
  br i1 %8231, label %8531, label %8233

; <label>:8232                                    ; preds = %8225
  br i1 %8196, label %8531, label %8233

; <label>:8233                                    ; preds = %8232, %8230
  %8234 = phi float [ %8162, %8232 ], [ %8226, %8230 ]
  %8235 = phi float [ 0.000000e+00, %8232 ], [ %8227, %8230 ]
  %8236 = icmp ne i32 %8184, 0
  %8237 = fmul fast float %8234, %8165
  %8238 = fadd fast float %8237, %8178
  %8239 = fmul fast float %8238, %8234
  %8240 = select i1 %8236, float 0.000000e+00, float %8239
  %8241 = fcmp fast oeq float %8165, 0.000000e+00
  %8242 = fdiv fast float %8183, %8165
  %8243 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8242)  ; FMax(a,b)
  %8244 = select i1 %8241, float %8234, float %8243
  %8245 = call float @dx.op.binary.f32(i32 36, float %8234, float %8244)  ; FMin(a,b)
  %8246 = fcmp fast ogt float %8165, 0.000000e+00
  %8247 = fcmp fast olt float %8183, 0.000000e+00
  br i1 %8246, label %8248, label %8305

; <label>:8248                                    ; preds = %8233
  %8249 = icmp eq i32 %8184, 0
  br i1 %8247, label %8250, label %8294

; <label>:8250                                    ; preds = %8248
  %8251 = select i1 %8249, float %8234, float 0.000000e+00
  %8252 = fsub fast float -0.000000e+00, %8251
  %8253 = call float @dx.op.unary.f32(i32 6, float %8252)  ; FAbs(value)
  %8254 = fmul fast float %8251, %8165
  %8255 = fadd fast float %8254, %8178
  %8256 = fmul fast float %8253, %8255
  %8257 = fsub fast float %8240, %8256
  %8258 = fsub fast float %8234, %8253
  %8259 = select i1 %8249, float %8258, float 0.000000e+00
  %8260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8261 = extractvalue %dx.types.CBufRet.f32 %8260, 0
  %8262 = extractvalue %dx.types.CBufRet.f32 %8260, 1
  %8263 = extractvalue %dx.types.CBufRet.f32 %8260, 2
  %8264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8265 = extractvalue %dx.types.CBufRet.f32 %8264, 0
  %8266 = extractvalue %dx.types.CBufRet.f32 %8264, 1
  %8267 = extractvalue %dx.types.CBufRet.f32 %8264, 2
  %8268 = extractvalue %dx.types.CBufRet.f32 %8264, 3
  %8269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.f32 %8269, 3
  %8271 = call float @dx.op.binary.f32(i32 36, float %8257, float %8270)  ; FMin(a,b)
  %8272 = fmul fast float %8268, %8259
  %8273 = call float @dx.op.unary.f32(i32 7, float %8272)  ; Saturate(value)
  %8274 = fsub fast float %8265, %8261
  %8275 = fsub fast float %8266, %8262
  %8276 = fsub fast float %8267, %8263
  %8277 = fmul fast float %8273, %8274
  %8278 = fmul fast float %8273, %8275
  %8279 = fmul fast float %8273, %8276
  %8280 = fadd fast float %8277, %8261
  %8281 = fadd fast float %8278, %8262
  %8282 = fadd fast float %8279, %8263
  %8283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8284 = extractvalue %dx.types.CBufRet.f32 %8283, 0
  %8285 = extractvalue %dx.types.CBufRet.f32 %8283, 1
  %8286 = fadd fast float %8285, %8284
  %8287 = call float @dx.op.unary.f32(i32 7, float %8286)  ; Saturate(value)
  %8288 = extractvalue %dx.types.CBufRet.f32 %8283, 2
  %8289 = extractvalue %dx.types.CBufRet.f32 %8283, 3
  %8290 = fadd fast float %8289, %8288
  %8291 = call float @dx.op.unary.f32(i32 7, float %8290)  ; Saturate(value)
  %8292 = fmul fast float %8287, %8271
  %8293 = fmul fast float %8292, %8291
  br label %8531

; <label>:8294                                    ; preds = %8248
  br i1 %8249, label %8295, label %8316

; <label>:8295                                    ; preds = %8294
  %8296 = call float @dx.op.binary.f32(i32 36, float %8245, float %8235)  ; FMin(a,b)
  %8297 = fsub fast float %8245, %8296
  %8298 = fsub fast float %8297, %8234
  %8299 = call float @dx.op.unary.f32(i32 6, float %8298)  ; FAbs(value)
  %8300 = fadd fast float %8297, %8234
  %8301 = fmul fast float %8300, %8165
  %8302 = fadd fast float %8301, %8178
  %8303 = fmul fast float %8302, %8299
  %8304 = fsub fast float %8240, %8303
  br label %8316

; <label>:8305                                    ; preds = %8233
  br i1 %8247, label %8306, label %8316

; <label>:8306                                    ; preds = %8305
  %8307 = call float @dx.op.binary.f32(i32 35, float %8235, float %8245)  ; FMax(a,b)
  %8308 = icmp eq i32 %8184, 0
  %8309 = select i1 %8308, float %8245, float 0.000000e+00
  %8310 = fsub fast float -0.000000e+00, %8309
  %8311 = call float @dx.op.unary.f32(i32 6, float %8310)  ; FAbs(value)
  %8312 = fmul fast float %8309, %8165
  %8313 = fadd fast float %8312, %8178
  %8314 = fmul fast float %8311, %8313
  %8315 = fsub fast float %8240, %8314
  br label %8316

; <label>:8316                                    ; preds = %8306, %8305, %8295, %8294
  %8317 = phi float [ %8235, %8294 ], [ %8235, %8295 ], [ %8307, %8306 ], [ %8235, %8305 ]
  %8318 = phi float [ 0.000000e+00, %8294 ], [ %8299, %8295 ], [ %8311, %8306 ], [ 0.000000e+00, %8305 ]
  %8319 = phi float [ %8240, %8294 ], [ %8304, %8295 ], [ %8315, %8306 ], [ %8240, %8305 ]
  %8320 = phi float [ %8245, %8294 ], [ %8245, %8295 ], [ %8234, %8306 ], [ %8234, %8305 ]
  %8321 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 0
  store float -1.000000e+00, float* %8321, align 4, !tbaa !107, !noalias !118
  %8322 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 1
  store float -1.000000e+00, float* %8322, align 4, !tbaa !107, !noalias !118
  %8323 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 2
  store float -1.000000e+00, float* %8323, align 4, !tbaa !107, !noalias !118
  %8324 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 0
  store float -1.000000e+00, float* %8324, align 4, !tbaa !107, !noalias !118
  %8325 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 1
  store float -1.000000e+00, float* %8325, align 4, !tbaa !107, !noalias !118
  %8326 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 2
  store float -1.000000e+00, float* %8326, align 4, !tbaa !107, !noalias !118
  %8327 = icmp sgt i32 %8186, 0
  br i1 %8327, label %8328, label %8389

; <label>:8328                                    ; preds = %8316
  br label %8329

; <label>:8329                                    ; preds = %8378, %8328
  %8330 = phi i32 [ %8379, %8378 ], [ 0, %8328 ]
  %8331 = phi i32 [ %8380, %8378 ], [ 0, %8328 ]
  %8332 = add nuw i32 %8331, 171
  %8333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %8332)  ; CBufferLoadLegacy(handle,regIndex)
  %8334 = extractvalue %dx.types.CBufRet.f32 %8333, 0
  %8335 = extractvalue %dx.types.CBufRet.f32 %8333, 1
  %8336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8337 = extractvalue %dx.types.CBufRet.f32 %8336, 0
  %8338 = extractvalue %dx.types.CBufRet.f32 %8336, 1
  %8339 = fsub fast float %8334, %8337
  %8340 = fsub fast float %8335, %8338
  %8341 = extractvalue %dx.types.CBufRet.f32 %8333, 2
  %8342 = fsub fast float -0.000000e+00, %8339
  %8343 = fsub fast float -0.000000e+00, %8340
  %8344 = call float @dx.op.dot2.f32(i32 54, float %8163, float %8164, float %8342, float %8343)  ; Dot2(ax,ay,bx,by)
  %8345 = fmul fast float %8344, 2.000000e+00
  %8346 = call float @dx.op.dot2.f32(i32 54, float %8342, float %8343, float %8342, float %8343)  ; Dot2(ax,ay,bx,by)
  %8347 = fmul fast float %8341, %8341
  %8348 = fsub fast float %8346, %8347
  %8349 = fmul fast float %8345, %8345
  %8350 = fmul fast float %8206, %8348
  %8351 = fsub fast float %8349, %8350
  %8352 = fcmp fast ogt float %8351, 0.000000e+00
  br i1 %8352, label %8353, label %8368

; <label>:8353                                    ; preds = %8329
  %8354 = fcmp fast ogt float %8345, 0.000000e+00
  %8355 = call float @dx.op.unary.f32(i32 24, float %8351)  ; Sqrt(value)
  %8356 = fsub fast float -0.000000e+00, %8355
  %8357 = select i1 %8354, float %8355, float %8356
  %8358 = fadd fast float %8357, %8345
  %8359 = fmul float %8358, -5.000000e-01
  %8360 = fdiv fast float %8359, %8199
  %8361 = call float @dx.op.binary.f32(i32 35, float %8360, float 0.000000e+00)  ; FMax(a,b)
  %8362 = call float @dx.op.binary.f32(i32 36, float %8234, float %8361)  ; FMin(a,b)
  %8363 = fdiv fast float %8348, %8359
  %8364 = call float @dx.op.binary.f32(i32 35, float %8363, float 0.000000e+00)  ; FMax(a,b)
  %8365 = call float @dx.op.binary.f32(i32 36, float %8234, float %8364)  ; FMin(a,b)
  %8366 = call float @dx.op.binary.f32(i32 36, float %8362, float %8365)  ; FMin(a,b)
  %8367 = call float @dx.op.binary.f32(i32 35, float %8362, float %8365)  ; FMax(a,b)
  br label %8368

; <label>:8368                                    ; preds = %8353, %8329
  %8369 = phi float [ %8367, %8353 ], [ -1.000000e+00, %8329 ]
  %8370 = phi float [ %8366, %8353 ], [ -1.000000e+00, %8329 ]
  %8371 = phi i1 [ true, %8353 ], [ false, %8329 ]
  br i1 %8371, label %8372, label %8378

; <label>:8372                                    ; preds = %8368
  %8373 = call float @dx.op.binary.f32(i32 35, float %8317, float %8370)  ; FMax(a,b)
  %8374 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %8331
  store float %8373, float* %8374, align 4, !tbaa !107, !noalias !118
  %8375 = call float @dx.op.binary.f32(i32 35, float %8317, float %8369)  ; FMax(a,b)
  %8376 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %8331
  store float %8375, float* %8376, align 4, !tbaa !107, !noalias !118
  %8377 = add nsw i32 %8330, 1
  br label %8378

; <label>:8378                                    ; preds = %8372, %8368
  %8379 = phi i32 [ %8377, %8372 ], [ %8330, %8368 ]
  %8380 = add nuw nsw i32 %8331, 1
  %8381 = icmp eq i32 %8380, %8186
  br i1 %8381, label %8382, label %8329

; <label>:8382                                    ; preds = %8378
  %8383 = load float, float* %8323, align 4, !tbaa !107, !alias.scope !134, !noalias !137
  %8384 = load float, float* %8322, align 4, !tbaa !107, !alias.scope !140, !noalias !141
  %8385 = load float, float* %8321, align 4, !tbaa !107, !alias.scope !142, !noalias !143
  %8386 = load float, float* %8326, align 4, !tbaa !107, !alias.scope !144, !noalias !147
  %8387 = load float, float* %8325, align 4, !tbaa !107, !alias.scope !150, !noalias !151
  %8388 = load float, float* %8324, align 4, !tbaa !107, !alias.scope !152, !noalias !153
  br label %8389

; <label>:8389                                    ; preds = %8382, %8316
  %8390 = phi float [ -1.000000e+00, %8316 ], [ %8388, %8382 ]
  %8391 = phi float [ -1.000000e+00, %8316 ], [ %8387, %8382 ]
  %8392 = phi float [ -1.000000e+00, %8316 ], [ %8386, %8382 ]
  %8393 = phi float [ -1.000000e+00, %8316 ], [ %8385, %8382 ]
  %8394 = phi float [ -1.000000e+00, %8316 ], [ %8384, %8382 ]
  %8395 = phi float [ -1.000000e+00, %8316 ], [ %8383, %8382 ]
  %8396 = phi i32 [ 0, %8316 ], [ %8379, %8382 ]
  %8397 = call float @dx.op.binary.f32(i32 36, float %8393, float %8394)  ; FMin(a,b)
  %8398 = call float @dx.op.binary.f32(i32 36, float %8397, float %8395)  ; FMin(a,b)
  %8399 = call float @dx.op.binary.f32(i32 35, float %8393, float %8394)  ; FMax(a,b)
  %8400 = call float @dx.op.binary.f32(i32 36, float %8399, float %8395)  ; FMin(a,b)
  %8401 = call float @dx.op.binary.f32(i32 35, float %8397, float %8400)  ; FMax(a,b)
  %8402 = call float @dx.op.binary.f32(i32 35, float %8399, float %8395)  ; FMax(a,b)
  store float %8398, float* %8321, align 4, !tbaa !107, !alias.scope !142, !noalias !143
  store float %8401, float* %8322, align 4, !tbaa !107, !alias.scope !140, !noalias !141
  store float %8402, float* %8323, align 4, !tbaa !107, !alias.scope !134, !noalias !137
  %8403 = call float @dx.op.binary.f32(i32 36, float %8390, float %8391)  ; FMin(a,b)
  %8404 = call float @dx.op.binary.f32(i32 36, float %8403, float %8392)  ; FMin(a,b)
  %8405 = call float @dx.op.binary.f32(i32 35, float %8390, float %8391)  ; FMax(a,b)
  %8406 = call float @dx.op.binary.f32(i32 36, float %8405, float %8392)  ; FMin(a,b)
  %8407 = call float @dx.op.binary.f32(i32 35, float %8403, float %8406)  ; FMax(a,b)
  %8408 = call float @dx.op.binary.f32(i32 35, float %8405, float %8392)  ; FMax(a,b)
  store float %8404, float* %8324, align 4, !tbaa !107, !alias.scope !152, !noalias !153
  store float %8407, float* %8325, align 4, !tbaa !107, !alias.scope !150, !noalias !151
  store float %8408, float* %8326, align 4, !tbaa !107, !alias.scope !144, !noalias !147
  %8409 = sub nsw i32 3, %8396
  %8410 = icmp sgt i32 %8409, 2
  br i1 %8410, label %8411, label %8449

; <label>:8411                                    ; preds = %8389
  %8412 = icmp eq i32 %8184, 0
  %8413 = fsub fast float %8234, %8318
  %8414 = select i1 %8412, float %8413, float %8318
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.CBufRet.f32 %8415, 1
  %8418 = extractvalue %dx.types.CBufRet.f32 %8415, 2
  %8419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8420 = extractvalue %dx.types.CBufRet.f32 %8419, 0
  %8421 = extractvalue %dx.types.CBufRet.f32 %8419, 1
  %8422 = extractvalue %dx.types.CBufRet.f32 %8419, 2
  %8423 = extractvalue %dx.types.CBufRet.f32 %8419, 3
  %8424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8425 = extractvalue %dx.types.CBufRet.f32 %8424, 3
  %8426 = call float @dx.op.binary.f32(i32 36, float %8319, float %8425)  ; FMin(a,b)
  %8427 = fmul fast float %8423, %8414
  %8428 = call float @dx.op.unary.f32(i32 7, float %8427)  ; Saturate(value)
  %8429 = fsub fast float %8420, %8416
  %8430 = fsub fast float %8421, %8417
  %8431 = fsub fast float %8422, %8418
  %8432 = fmul fast float %8428, %8429
  %8433 = fmul fast float %8428, %8430
  %8434 = fmul fast float %8428, %8431
  %8435 = fadd fast float %8432, %8416
  %8436 = fadd fast float %8433, %8417
  %8437 = fadd fast float %8434, %8418
  %8438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8439 = extractvalue %dx.types.CBufRet.f32 %8438, 0
  %8440 = extractvalue %dx.types.CBufRet.f32 %8438, 1
  %8441 = fadd fast float %8440, %8439
  %8442 = call float @dx.op.unary.f32(i32 7, float %8441)  ; Saturate(value)
  %8443 = extractvalue %dx.types.CBufRet.f32 %8438, 2
  %8444 = extractvalue %dx.types.CBufRet.f32 %8438, 3
  %8445 = fadd fast float %8444, %8443
  %8446 = call float @dx.op.unary.f32(i32 7, float %8445)  ; Saturate(value)
  %8447 = fmul fast float %8442, %8426
  %8448 = fmul fast float %8447, %8446
  br label %8531

; <label>:8449                                    ; preds = %8389
  %8450 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %8409
  %8451 = load float, float* %8450, align 4, !tbaa !107, !noalias !118
  %8452 = fcmp fast olt float %8451, %8320
  %8453 = icmp sgt i32 %8396, 0
  %8454 = and i1 %8453, %8452
  br i1 %8454, label %8455, label %8492

; <label>:8455                                    ; preds = %8449
  br label %8456

; <label>:8456                                    ; preds = %8485, %8455
  %8457 = phi float [ %8486, %8485 ], [ %8318, %8455 ]
  %8458 = phi float [ %8487, %8485 ], [ %8319, %8455 ]
  %8459 = phi float [ %8467, %8485 ], [ %8451, %8455 ]
  %8460 = phi i32 [ %8464, %8485 ], [ %8409, %8455 ]
  %8461 = getelementptr inbounds [3 x float], [3 x float]* %88, i32 0, i32 %8460
  %8462 = load float, float* %8461, align 4, !tbaa !107, !noalias !118
  %8463 = icmp slt i32 %8460, 2
  %8464 = add nsw i32 %8460, 1
  %8465 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %8464
  %8466 = load float, float* %8465, align 4, !tbaa !107, !noalias !118
  %8467 = select i1 %8463, float %8466, float %8234
  %8468 = call float @dx.op.binary.f32(i32 36, float %8467, float %8462)  ; FMin(a,b)
  %8469 = call float @dx.op.binary.f32(i32 36, float %8320, float %8468)  ; FMin(a,b)
  %8470 = icmp eq i32 %8184, 0
  %8471 = fadd fast float %8469, %8459
  %8472 = fmul fast float %8471, %8165
  %8473 = fadd fast float %8472, %8178
  br i1 %8470, label %8479, label %8474

; <label>:8474                                    ; preds = %8456
  %8475 = fsub fast float %8469, %8459
  %8476 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8475)  ; FMax(a,b)
  %8477 = fmul fast float %8476, %8473
  %8478 = fadd fast float %8477, %8458
  br label %8485

; <label>:8479                                    ; preds = %8456
  %8480 = fsub fast float %8459, %8469
  %8481 = call float @dx.op.unary.f32(i32 6, float %8480)  ; FAbs(value)
  %8482 = fadd fast float %8481, %8457
  %8483 = fmul fast float %8481, %8473
  %8484 = fsub fast float %8458, %8483
  br label %8485

; <label>:8485                                    ; preds = %8479, %8474
  %8486 = phi float [ %8476, %8474 ], [ %8482, %8479 ]
  %8487 = phi float [ %8478, %8474 ], [ %8484, %8479 ]
  %8488 = fcmp fast olt float %8467, %8320
  %8489 = icmp slt i32 %8464, 3
  %8490 = and i1 %8489, %8488
  br i1 %8490, label %8456, label %8491

; <label>:8491                                    ; preds = %8485
  br label %8492

; <label>:8492                                    ; preds = %8491, %8449
  %8493 = phi float [ %8318, %8449 ], [ %8486, %8491 ]
  %8494 = phi float [ %8319, %8449 ], [ %8487, %8491 ]
  %8495 = fsub fast float %8234, %8493
  %8496 = select i1 %8236, float %8493, float %8495
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 0
  %8499 = extractvalue %dx.types.CBufRet.f32 %8497, 1
  %8500 = extractvalue %dx.types.CBufRet.f32 %8497, 2
  %8501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8502 = extractvalue %dx.types.CBufRet.f32 %8501, 0
  %8503 = extractvalue %dx.types.CBufRet.f32 %8501, 1
  %8504 = extractvalue %dx.types.CBufRet.f32 %8501, 2
  %8505 = extractvalue %dx.types.CBufRet.f32 %8501, 3
  %8506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8507 = extractvalue %dx.types.CBufRet.f32 %8506, 3
  %8508 = call float @dx.op.binary.f32(i32 36, float %8494, float %8507)  ; FMin(a,b)
  %8509 = fmul fast float %8505, %8496
  %8510 = call float @dx.op.unary.f32(i32 7, float %8509)  ; Saturate(value)
  %8511 = fsub fast float %8502, %8498
  %8512 = fsub fast float %8503, %8499
  %8513 = fsub fast float %8504, %8500
  %8514 = fmul fast float %8510, %8511
  %8515 = fmul fast float %8510, %8512
  %8516 = fmul fast float %8510, %8513
  %8517 = fadd fast float %8514, %8498
  %8518 = fadd fast float %8515, %8499
  %8519 = fadd fast float %8516, %8500
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 0
  %8522 = extractvalue %dx.types.CBufRet.f32 %8520, 1
  %8523 = fadd fast float %8522, %8521
  %8524 = call float @dx.op.unary.f32(i32 7, float %8523)  ; Saturate(value)
  %8525 = extractvalue %dx.types.CBufRet.f32 %8520, 2
  %8526 = extractvalue %dx.types.CBufRet.f32 %8520, 3
  %8527 = fadd fast float %8526, %8525
  %8528 = call float @dx.op.unary.f32(i32 7, float %8527)  ; Saturate(value)
  %8529 = fmul fast float %8524, %8508
  %8530 = fmul fast float %8529, %8528
  br label %8531

; <label>:8531                                    ; preds = %8492, %8411, %8250, %8232, %8230
  %8532 = phi float [ %8259, %8250 ], [ %8414, %8411 ], [ %8496, %8492 ], [ 0.000000e+00, %8230 ], [ 0.000000e+00, %8232 ]
  %8533 = phi float [ %8293, %8250 ], [ %8448, %8411 ], [ %8530, %8492 ], [ 0.000000e+00, %8230 ], [ 0.000000e+00, %8232 ]
  %8534 = phi float [ %8280, %8250 ], [ %8435, %8411 ], [ %8517, %8492 ], [ 0.000000e+00, %8230 ], [ 0.000000e+00, %8232 ]
  %8535 = phi float [ %8281, %8250 ], [ %8436, %8411 ], [ %8518, %8492 ], [ 0.000000e+00, %8230 ], [ 0.000000e+00, %8232 ]
  %8536 = phi float [ %8282, %8250 ], [ %8437, %8411 ], [ %8519, %8492 ], [ 0.000000e+00, %8230 ], [ 0.000000e+00, %8232 ]
  %8537 = fmul fast float %8173, %8533
  %8538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8539 = extractvalue %dx.types.CBufRet.f32 %8538, 2
  %8540 = fsub fast float %8180, %8539
  %8541 = fcmp fast olt float %8537, -2.000000e+01
  %8542 = call float @dx.op.unary.f32(i32 21, float %8537)  ; Exp(value)
  %8543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8544 = extractvalue %dx.types.CBufRet.f32 %8543, 2
  %8545 = extractvalue %dx.types.CBufRet.f32 %8543, 3
  %8546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8547 = extractvalue %dx.types.CBufRet.f32 %8546, 2
  %8548 = fmul fast float %8545, %8540
  %8549 = call float @dx.op.unary.f32(i32 7, float %8548)  ; Saturate(value)
  %8550 = fsub fast float 1.000000e+00, %8549
  %8551 = fmul fast float %8165, 5.000000e-01
  %8552 = fadd fast float %8551, 5.000000e-01
  %8553 = call float @dx.op.unary.f32(i32 7, float %8552)  ; Saturate(value)
  %8554 = fsub fast float 1.000000e+00, %8553
  %8555 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8550)  ; FMax(a,b)
  %8556 = fdiv fast float %8554, %8555
  %8557 = fsub fast float %8540, %8122
  %8558 = call float @dx.op.unary.f32(i32 6, float %8557)  ; FAbs(value)
  %8559 = fmul fast float %8558, %8544
  %8560 = call float @dx.op.unary.f32(i32 7, float %8556)  ; Saturate(value)
  %8561 = fsub fast float 1.000000e+00, %8559
  %8562 = fmul fast float %8561, %8560
  %8563 = fadd fast float %8562, %8559
  %8564 = fmul fast float %8547, %8540
  %8565 = call float @dx.op.unary.f32(i32 7, float %8564)  ; Saturate(value)
  %8566 = fsub fast float 1.000000e+00, %8563
  %8567 = fmul fast float %8566, %8565
  %8568 = fadd fast float %8567, %8563
  %8569 = call float @dx.op.unary.f32(i32 7, float %8568)  ; Saturate(value)
  %8570 = fadd fast float %8542, -1.000000e+00
  %8571 = select i1 %8541, float -1.000000e+00, float %8570
  %8572 = fmul fast float %8569, %8571
  %8573 = fadd fast float %8572, 1.000000e+00
  %8574 = fsub fast float -0.000000e+00, %8572
  %8575 = fmul fast float %8534, %8574
  %8576 = fmul fast float %8535, %8574
  %8577 = fmul fast float %8536, %8574
  br label %8578

; <label>:8578                                    ; preds = %8531, %8131
  %8579 = phi float [ %8532, %8531 ], [ 0.000000e+00, %8131 ]
  %8580 = phi float [ %8573, %8531 ], [ 1.000000e+00, %8131 ]
  %8581 = phi float [ %8575, %8531 ], [ 0.000000e+00, %8131 ]
  %8582 = phi float [ %8576, %8531 ], [ 0.000000e+00, %8131 ]
  %8583 = phi float [ %8577, %8531 ], [ 0.000000e+00, %8131 ]
  %8584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8585 = extractvalue %dx.types.CBufRet.f32 %8584, 1
  %8586 = fsub fast float 1.000000e+00, %8580
  %8587 = fmul fast float %8586, %8166
  %8588 = fmul fast float %8587, %8585
  %8589 = fsub fast float %8166, %8588
  br i1 %8159, label %8590, label %8619, !dx.controlflow.hints !154

; <label>:8590                                    ; preds = %8578
  %8591 = fmul fast float %8167, %8156
  %8592 = fadd fast float %8591, %8157
  %8593 = call float @dx.op.unary.f32(i32 7, float %8592)  ; Saturate(value)
  %8594 = fmul fast float %8138, %8589
  %8595 = fsub fast float -0.000000e+00, %8594
  %8596 = fmul fast float %8139, %8589
  %8597 = fsub fast float -0.000000e+00, %8596
  %8598 = call float @dx.op.unary.f32(i32 21, float %8595)  ; Exp(value)
  %8599 = call float @dx.op.unary.f32(i32 21, float %8597)  ; Exp(value)
  %8600 = call float @dx.op.binary.f32(i32 35, float %8146, float %8598)  ; FMax(a,b)
  %8601 = call float @dx.op.binary.f32(i32 35, float %8146, float %8599)  ; FMax(a,b)
  %8602 = fsub fast float %8601, %8600
  %8603 = fmul fast float %8602, %8593
  %8604 = fadd fast float %8603, %8600
  %8605 = call float @dx.op.unary.f32(i32 7, float %8604)  ; Saturate(value)
  %8606 = fsub fast float %8143, %8148
  %8607 = fsub fast float %8144, %8149
  %8608 = fsub fast float %8145, %8150
  %8609 = fmul fast float %8593, %8606
  %8610 = fmul fast float %8593, %8607
  %8611 = fmul fast float %8593, %8608
  %8612 = fadd fast float %8609, %8148
  %8613 = fadd fast float %8610, %8149
  %8614 = fadd fast float %8611, %8150
  %8615 = fsub fast float 1.000000e+00, %8605
  %8616 = fmul fast float %8615, %8612
  %8617 = fmul fast float %8615, %8613
  %8618 = fmul fast float %8615, %8614
  br label %8678

; <label>:8619                                    ; preds = %8578
  %8620 = fmul fast float %8589, %8155
  %8621 = call float @dx.op.unary.f32(i32 7, float %8620)  ; Saturate(value)
  %8622 = fsub fast float 2.000000e+00, %8621
  %8623 = fmul fast float %8621, 9.921875e-01
  %8624 = fmul fast float %8623, %8622
  %8625 = fadd fast float %8624, 3.906250e-03
  %8626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %8625, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8627 = extractvalue %dx.types.ResRet.f32 %8626, 0
  %8628 = fsub fast float %8621, %8627
  %8629 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8628)  ; FMax(a,b)
  %8630 = fmul fast float %8141, %8122
  %8631 = call float @dx.op.unary.f32(i32 6, float %8630)  ; FAbs(value)
  %8632 = fcmp fast ogt float %8631, 0x3EB0C6F7A0000000
  br i1 %8632, label %8633, label %8639, !dx.controlflow.hints !155

; <label>:8633                                    ; preds = %8619
  %8634 = fmul fast float %8630, 0xBFF7154760000000
  %8635 = call float @dx.op.unary.f32(i32 21, float %8634)  ; Exp(value)
  %8636 = fsub fast float 1.000000e+00, %8635
  %8637 = fdiv fast float %8636, %8630
  %8638 = fmul fast float %8637, %8151
  br label %8639

; <label>:8639                                    ; preds = %8633, %8619
  %8640 = phi float [ %8638, %8633 ], [ %8151, %8619 ]
  %8641 = fadd fast float %8640, %8153
  %8642 = fmul fast float %8641, %8629
  %8643 = fmul fast float %8138, %8642
  %8644 = fsub fast float -0.000000e+00, %8643
  %8645 = fmul fast float %8139, %8642
  %8646 = fsub fast float -0.000000e+00, %8645
  %8647 = fmul fast float %8140, %8642
  %8648 = fsub fast float -0.000000e+00, %8647
  %8649 = call float @dx.op.unary.f32(i32 21, float %8644)  ; Exp(value)
  %8650 = call float @dx.op.unary.f32(i32 21, float %8646)  ; Exp(value)
  %8651 = call float @dx.op.unary.f32(i32 21, float %8648)  ; Exp(value)
  %8652 = fmul fast float %8167, %8167
  %8653 = fadd fast float %8652, 1.000000e+00
  %8654 = fmul fast float %8653, 0x3FAE8EC8A0000000
  %8655 = fmul fast float %8654, %8148
  %8656 = fmul fast float %8654, %8149
  %8657 = fmul fast float %8654, %8150
  %8658 = fmul fast float %8167, %8146
  %8659 = fsub fast float 1.000000e+00, %8658
  %8660 = fmul fast float %8146, %8146
  %8661 = fsub fast float 1.000000e+00, %8660
  %8662 = fmul fast float %8661, 0x3FB45F3060000000
  %8663 = fmul fast float %8659, %8659
  %8664 = fdiv fast float 1.000000e+00, %8663
  %8665 = fmul fast float %8662, %8664
  %8666 = fmul fast float %8665, %8143
  %8667 = fmul fast float %8665, %8144
  %8668 = fmul fast float %8665, %8145
  %8669 = fadd fast float %8666, %8655
  %8670 = fadd fast float %8667, %8656
  %8671 = fadd fast float %8668, %8657
  %8672 = fsub fast float 1.000000e+00, %8649
  %8673 = fsub fast float 1.000000e+00, %8650
  %8674 = fsub fast float 1.000000e+00, %8651
  %8675 = fmul fast float %8669, %8672
  %8676 = fmul fast float %8670, %8673
  %8677 = fmul fast float %8671, %8674
  br label %8678

; <label>:8678                                    ; preds = %8639, %8590
  %8679 = phi float [ %8616, %8590 ], [ %8675, %8639 ]
  %8680 = phi float [ %8617, %8590 ], [ %8676, %8639 ]
  %8681 = phi float [ %8618, %8590 ], [ %8677, %8639 ]
  %8682 = phi float [ %8605, %8590 ], [ %8649, %8639 ]
  %8683 = phi float [ %8605, %8590 ], [ %8650, %8639 ]
  %8684 = phi float [ %8605, %8590 ], [ %8651, %8639 ]
  br i1 %8175, label %8685, label %8883, !dx.controlflow.hints !156

; <label>:8685                                    ; preds = %8678
  %8686 = extractvalue %dx.types.CBufRet.f32 %8584, 0
  %8687 = fmul fast float %8686, %8586
  %8688 = fsub fast float %8581, %8679
  %8689 = fsub fast float %8582, %8680
  %8690 = fsub fast float %8583, %8681
  %8691 = fmul fast float %8687, %8688
  %8692 = fmul fast float %8687, %8689
  %8693 = fmul fast float %8687, %8690
  %8694 = fadd fast float %8691, %8679
  %8695 = fadd fast float %8692, %8680
  %8696 = fadd fast float %8693, %8681
  %8697 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8682)  ; FMax(a,b)
  %8698 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8683)  ; FMax(a,b)
  %8699 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8684)  ; FMax(a,b)
  %8700 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8580)  ; FMax(a,b)
  %8701 = call float @dx.op.binary.f32(i32 35, float %8579, float %8589)  ; FMax(a,b)
  %8702 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8701)  ; FMax(a,b)
  %8703 = fdiv fast float %8579, %8702
  %8704 = call float @dx.op.unary.f32(i32 7, float %8703)  ; Saturate(value)
  %8705 = fdiv fast float %8589, %8702
  %8706 = call float @dx.op.unary.f32(i32 7, float %8705)  ; Saturate(value)
  %8707 = fcmp fast une float %8700, 1.000000e+00
  br i1 %8707, label %8708, label %8721, !dx.controlflow.hints !157

; <label>:8708                                    ; preds = %8685
  %8709 = call float @dx.op.unary.f32(i32 23, float %8700)  ; Log(value)
  %8710 = fmul fast float %8709, 0x3FE62E4300000000
  %8711 = fmul fast float %8581, %8710
  %8712 = fsub fast float -0.000000e+00, %8711
  %8713 = fmul fast float %8582, %8710
  %8714 = fsub fast float -0.000000e+00, %8713
  %8715 = fmul fast float %8583, %8710
  %8716 = fsub fast float -0.000000e+00, %8715
  %8717 = fsub fast float 1.000000e+00, %8700
  %8718 = fdiv fast float %8712, %8717
  %8719 = fdiv fast float %8714, %8717
  %8720 = fdiv fast float %8716, %8717
  br label %8721

; <label>:8721                                    ; preds = %8708, %8685
  %8722 = phi float [ %8718, %8708 ], [ %8581, %8685 ]
  %8723 = phi float [ %8719, %8708 ], [ %8582, %8685 ]
  %8724 = phi float [ %8720, %8708 ], [ %8583, %8685 ]
  %8725 = phi float [ %8710, %8708 ], [ 0.000000e+00, %8685 ]
  %8726 = fcmp fast une float %8697, 1.000000e+00
  br i1 %8726, label %8727, label %8734, !dx.controlflow.hints !158

; <label>:8727                                    ; preds = %8721
  %8728 = call float @dx.op.unary.f32(i32 23, float %8697)  ; Log(value)
  %8729 = fmul fast float %8728, 0x3FE62E4300000000
  %8730 = fmul fast float %8694, %8729
  %8731 = fsub fast float -0.000000e+00, %8730
  %8732 = fsub fast float 1.000000e+00, %8697
  %8733 = fdiv fast float %8731, %8732
  br label %8734

; <label>:8734                                    ; preds = %8727, %8721
  %8735 = phi float [ %8733, %8727 ], [ %8694, %8721 ]
  %8736 = phi float [ %8729, %8727 ], [ 0.000000e+00, %8721 ]
  %8737 = fcmp fast une float %8698, 1.000000e+00
  br i1 %8737, label %8738, label %8745, !dx.controlflow.hints !158

; <label>:8738                                    ; preds = %8734
  %8739 = call float @dx.op.unary.f32(i32 23, float %8698)  ; Log(value)
  %8740 = fmul fast float %8739, 0x3FE62E4300000000
  %8741 = fmul fast float %8695, %8740
  %8742 = fsub fast float -0.000000e+00, %8741
  %8743 = fsub fast float 1.000000e+00, %8698
  %8744 = fdiv fast float %8742, %8743
  br label %8745

; <label>:8745                                    ; preds = %8738, %8734
  %8746 = phi float [ %8744, %8738 ], [ %8695, %8734 ]
  %8747 = phi float [ %8740, %8738 ], [ 0.000000e+00, %8734 ]
  %8748 = fcmp fast une float %8699, 1.000000e+00
  br i1 %8748, label %8749, label %8756, !dx.controlflow.hints !158

; <label>:8749                                    ; preds = %8745
  %8750 = call float @dx.op.unary.f32(i32 23, float %8699)  ; Log(value)
  %8751 = fmul fast float %8750, 0x3FE62E4300000000
  %8752 = fmul fast float %8696, %8751
  %8753 = fsub fast float -0.000000e+00, %8752
  %8754 = fsub fast float 1.000000e+00, %8699
  %8755 = fdiv fast float %8753, %8754
  br label %8756

; <label>:8756                                    ; preds = %8749, %8745
  %8757 = phi float [ %8755, %8749 ], [ %8696, %8745 ]
  %8758 = phi float [ %8751, %8749 ], [ 0.000000e+00, %8745 ]
  %8759 = fmul fast float %8722, %8706
  %8760 = fmul fast float %8723, %8706
  %8761 = fmul fast float %8724, %8706
  %8762 = fmul fast float %8725, %8706
  %8763 = fmul fast float %8735, %8704
  %8764 = fmul fast float %8746, %8704
  %8765 = fmul fast float %8757, %8704
  %8766 = fmul fast float %8736, %8704
  %8767 = fmul fast float %8747, %8704
  %8768 = fmul fast float %8758, %8704
  %8769 = fadd fast float %8763, %8759
  %8770 = fadd fast float %8764, %8760
  %8771 = fadd fast float %8765, %8761
  %8772 = fadd fast float %8766, %8762
  %8773 = fadd fast float %8767, %8762
  %8774 = fadd fast float %8768, %8762
  %8775 = fcmp fast une float %8772, 0.000000e+00
  br i1 %8775, label %8776, label %8783, !dx.controlflow.hints !159

; <label>:8776                                    ; preds = %8756
  %8777 = fmul fast float %8772, 0x3FF7154760000000
  %8778 = call float @dx.op.unary.f32(i32 21, float %8777)  ; Exp(value)
  %8779 = fsub fast float 1.000000e+00, %8778
  %8780 = fmul fast float %8769, %8779
  %8781 = fsub fast float -0.000000e+00, %8780
  %8782 = fdiv fast float %8781, %8772
  br label %8783

; <label>:8783                                    ; preds = %8776, %8756
  %8784 = phi float [ %8778, %8776 ], [ 1.000000e+00, %8756 ]
  %8785 = phi float [ %8782, %8776 ], [ %8769, %8756 ]
  %8786 = fcmp fast une float %8773, 0.000000e+00
  br i1 %8786, label %8787, label %8794, !dx.controlflow.hints !159

; <label>:8787                                    ; preds = %8783
  %8788 = fmul fast float %8773, 0x3FF7154760000000
  %8789 = call float @dx.op.unary.f32(i32 21, float %8788)  ; Exp(value)
  %8790 = fsub fast float 1.000000e+00, %8789
  %8791 = fmul fast float %8770, %8790
  %8792 = fsub fast float -0.000000e+00, %8791
  %8793 = fdiv fast float %8792, %8773
  br label %8794

; <label>:8794                                    ; preds = %8787, %8783
  %8795 = phi float [ %8789, %8787 ], [ 1.000000e+00, %8783 ]
  %8796 = phi float [ %8793, %8787 ], [ %8770, %8783 ]
  %8797 = fcmp fast une float %8774, 0.000000e+00
  br i1 %8797, label %8798, label %8805, !dx.controlflow.hints !159

; <label>:8798                                    ; preds = %8794
  %8799 = fmul fast float %8774, 0x3FF7154760000000
  %8800 = call float @dx.op.unary.f32(i32 21, float %8799)  ; Exp(value)
  %8801 = fsub fast float 1.000000e+00, %8800
  %8802 = fmul fast float %8771, %8801
  %8803 = fsub fast float -0.000000e+00, %8802
  %8804 = fdiv fast float %8803, %8774
  br label %8805

; <label>:8805                                    ; preds = %8798, %8794
  %8806 = phi float [ %8800, %8798 ], [ 1.000000e+00, %8794 ]
  %8807 = phi float [ %8804, %8798 ], [ %8771, %8794 ]
  %8808 = fcmp fast ogt float %8704, %8706
  br i1 %8808, label %8809, label %8829

; <label>:8809                                    ; preds = %8805
  %8810 = fsub fast float 1.000000e+00, %8706
  %8811 = fmul fast float %8722, %8810
  %8812 = fmul fast float %8723, %8810
  %8813 = fmul fast float %8724, %8810
  %8814 = fmul fast float %8725, %8810
  %8815 = fcmp fast une float %8814, 0.000000e+00
  br i1 %8815, label %8816, label %8867, !dx.controlflow.hints !160

; <label>:8816                                    ; preds = %8809
  %8817 = fmul fast float %8814, 0x3FF7154760000000
  %8818 = call float @dx.op.unary.f32(i32 21, float %8817)  ; Exp(value)
  %8819 = fsub fast float 1.000000e+00, %8818
  %8820 = fmul fast float %8811, %8819
  %8821 = fsub fast float -0.000000e+00, %8820
  %8822 = fmul fast float %8812, %8819
  %8823 = fsub fast float -0.000000e+00, %8822
  %8824 = fmul fast float %8813, %8819
  %8825 = fsub fast float -0.000000e+00, %8824
  %8826 = fdiv fast float %8821, %8814
  %8827 = fdiv fast float %8823, %8814
  %8828 = fdiv fast float %8825, %8814
  br label %8867

; <label>:8829                                    ; preds = %8805
  %8830 = fsub fast float 1.000000e+00, %8704
  %8831 = fmul fast float %8735, %8830
  %8832 = fmul fast float %8746, %8830
  %8833 = fmul fast float %8757, %8830
  %8834 = fmul fast float %8736, %8830
  %8835 = fmul fast float %8747, %8830
  %8836 = fmul fast float %8758, %8830
  %8837 = fcmp fast une float %8834, 0.000000e+00
  br i1 %8837, label %8838, label %8845, !dx.controlflow.hints !159

; <label>:8838                                    ; preds = %8829
  %8839 = fmul fast float %8834, 0x3FF7154760000000
  %8840 = call float @dx.op.unary.f32(i32 21, float %8839)  ; Exp(value)
  %8841 = fsub fast float 1.000000e+00, %8840
  %8842 = fmul fast float %8831, %8841
  %8843 = fsub fast float -0.000000e+00, %8842
  %8844 = fdiv fast float %8843, %8834
  br label %8845

; <label>:8845                                    ; preds = %8838, %8829
  %8846 = phi float [ %8844, %8838 ], [ %8831, %8829 ]
  %8847 = phi float [ %8840, %8838 ], [ 1.000000e+00, %8829 ]
  %8848 = fcmp fast une float %8835, 0.000000e+00
  br i1 %8848, label %8849, label %8856, !dx.controlflow.hints !159

; <label>:8849                                    ; preds = %8845
  %8850 = fmul fast float %8835, 0x3FF7154760000000
  %8851 = call float @dx.op.unary.f32(i32 21, float %8850)  ; Exp(value)
  %8852 = fsub fast float 1.000000e+00, %8851
  %8853 = fmul fast float %8832, %8852
  %8854 = fsub fast float -0.000000e+00, %8853
  %8855 = fdiv fast float %8854, %8835
  br label %8856

; <label>:8856                                    ; preds = %8849, %8845
  %8857 = phi float [ %8855, %8849 ], [ %8832, %8845 ]
  %8858 = phi float [ %8851, %8849 ], [ 1.000000e+00, %8845 ]
  %8859 = fcmp fast une float %8836, 0.000000e+00
  br i1 %8859, label %8860, label %8867, !dx.controlflow.hints !159

; <label>:8860                                    ; preds = %8856
  %8861 = fmul fast float %8836, 0x3FF7154760000000
  %8862 = call float @dx.op.unary.f32(i32 21, float %8861)  ; Exp(value)
  %8863 = fsub fast float 1.000000e+00, %8862
  %8864 = fmul fast float %8833, %8863
  %8865 = fsub fast float -0.000000e+00, %8864
  %8866 = fdiv fast float %8865, %8836
  br label %8867

; <label>:8867                                    ; preds = %8860, %8856, %8816, %8809
  %8868 = phi float [ %8866, %8860 ], [ %8828, %8816 ], [ %8813, %8809 ], [ %8833, %8856 ]
  %8869 = phi float [ %8857, %8860 ], [ %8827, %8816 ], [ %8812, %8809 ], [ %8857, %8856 ]
  %8870 = phi float [ %8846, %8860 ], [ %8826, %8816 ], [ %8811, %8809 ], [ %8846, %8856 ]
  %8871 = phi float [ %8862, %8860 ], [ %8818, %8816 ], [ 1.000000e+00, %8809 ], [ 1.000000e+00, %8856 ]
  %8872 = phi float [ %8858, %8860 ], [ %8818, %8816 ], [ 1.000000e+00, %8809 ], [ %8858, %8856 ]
  %8873 = phi float [ %8847, %8860 ], [ %8818, %8816 ], [ 1.000000e+00, %8809 ], [ %8847, %8856 ]
  %8874 = fmul fast float %8873, %8785
  %8875 = fmul fast float %8872, %8796
  %8876 = fmul fast float %8871, %8807
  %8877 = fadd fast float %8874, %8870
  %8878 = fadd fast float %8875, %8869
  %8879 = fadd fast float %8876, %8868
  %8880 = fmul fast float %8873, %8784
  %8881 = fmul fast float %8872, %8795
  %8882 = fmul fast float %8871, %8806
  br label %8883

; <label>:8883                                    ; preds = %8867, %8678
  %8884 = phi float [ %8882, %8867 ], [ %8684, %8678 ]
  %8885 = phi float [ %8881, %8867 ], [ %8683, %8678 ]
  %8886 = phi float [ %8880, %8867 ], [ %8682, %8678 ]
  %8887 = phi float [ %8879, %8867 ], [ %8681, %8678 ]
  %8888 = phi float [ %8878, %8867 ], [ %8680, %8678 ]
  %8889 = phi float [ %8877, %8867 ], [ %8679, %8678 ]
  %8890 = fmul fast float %8889, %7836
  %8891 = fmul fast float %8888, %7836
  %8892 = fmul fast float %8887, %7836
  %8893 = fmul fast float %8886, %8130
  %8894 = call float @dx.op.dot3.f32(i32 55, float %8886, float %8885, float %8884, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8895 = call float @dx.op.dot3.f32(i32 55, float %8890, float %8891, float %8892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8896 = select i1 %217, float %8894, float %8886
  %8897 = select i1 %217, float %8894, float %8885
  %8898 = select i1 %217, float 1.000000e+00, float %8884
  %8899 = select i1 %217, float %8895, float %8890
  %8900 = select i1 %217, float 0.000000e+00, float %8891
  %8901 = select i1 %217, float 0.000000e+00, float %8892
  %8902 = fmul fast float %8896, %8124
  %8903 = fmul fast float %8897, %8125
  %8904 = fmul fast float %8898, %8126
  %8905 = fadd fast float %8902, %8899
  %8906 = fadd fast float %8903, %8900
  %8907 = fadd fast float %8901, %8904
  %8908 = fmul fast float %8896, %8127
  %8909 = fmul fast float %8897, %8128
  %8910 = fmul fast float %8898, %8129
  %8911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8912 = extractvalue %dx.types.CBufRet.i32 %8911, 0
  %8913 = icmp eq i32 %8912, 0
  br i1 %8913, label %9281, label %8914, !dx.controlflow.hints !161

; <label>:8914                                    ; preds = %8883
  %8915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8916 = extractvalue %dx.types.CBufRet.f32 %8915, 2
  %8917 = extractvalue %dx.types.CBufRet.f32 %8915, 3
  %8918 = fmul fast float %8916, %93
  %8919 = fmul fast float %8917, %94
  %8920 = fmul fast float %8918, 2.000000e+00
  %8921 = fmul fast float %8919, 2.000000e+00
  %8922 = fsub fast float 1.000000e+00, %8920
  %8923 = fsub fast float 1.000000e+00, %8921
  %8924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8925 = extractvalue %dx.types.CBufRet.f32 %8924, 0
  %8926 = extractvalue %dx.types.CBufRet.f32 %8924, 1
  %8927 = extractvalue %dx.types.CBufRet.f32 %8924, 2
  %8928 = fmul fast float %8922, %8925
  %8929 = fmul fast float %8922, %8926
  %8930 = fmul fast float %8922, %8927
  %8931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8932 = extractvalue %dx.types.CBufRet.f32 %8931, 0
  %8933 = extractvalue %dx.types.CBufRet.f32 %8931, 1
  %8934 = extractvalue %dx.types.CBufRet.f32 %8931, 2
  %8935 = fmul fast float %8923, %8932
  %8936 = fmul fast float %8923, %8933
  %8937 = fmul fast float %8923, %8934
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 0
  %8940 = extractvalue %dx.types.CBufRet.f32 %8938, 1
  %8941 = extractvalue %dx.types.CBufRet.f32 %8938, 2
  %8942 = fadd fast float %8935, %8939
  %8943 = fadd fast float %8942, %8928
  %8944 = fadd fast float %8936, %8940
  %8945 = fadd fast float %8944, %8929
  %8946 = fadd fast float %8937, %8941
  %8947 = fadd fast float %8946, %8930
  %8948 = fmul fast float %8943, %8123
  %8949 = fmul fast float %8945, %8123
  %8950 = fmul fast float %8947, %8123
  %8951 = fmul fast float %8948, %8948
  %8952 = fmul fast float %8949, %8949
  %8953 = fadd fast float %8951, %8952
  %8954 = fmul fast float %8950, %8950
  %8955 = fadd fast float %8953, %8954
  %8956 = call float @dx.op.unary.f32(i32 24, float %8955)  ; Sqrt(value)
  %8957 = extractvalue %dx.types.CBufRet.f32 %7850, 0
  %8958 = fsub fast float %8956, %8957
  %8959 = extractvalue %dx.types.CBufRet.f32 %7850, 2
  %8960 = fmul fast float %8958, %8959
  %8961 = call float @dx.op.unary.f32(i32 7, float %8960)  ; Saturate(value)
  %8962 = fadd fast float %8961, -5.000000e-01
  %8963 = fmul fast float %8962, 2.000000e+00
  %8964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8965 = extractvalue %dx.types.CBufRet.f32 %8964, 2
  %8966 = call float @dx.op.binary.f32(i32 36, float %8965, float %8963)  ; FMin(a,b)
  %8967 = fsub fast float -0.000000e+00, %8965
  %8968 = fcmp fast ogt float %8966, %8967
  br i1 %8968, label %8969, label %9281, !dx.controlflow.hints !162

; <label>:8969                                    ; preds = %8914
  %8970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8971 = extractvalue %dx.types.CBufRet.f32 %8970, 3
  %8972 = fcmp fast ogt float %8971, 0.000000e+00
  br i1 %8972, label %8973, label %9048, !dx.controlflow.hints !163

; <label>:8973                                    ; preds = %8969
  %8974 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %8975 = extractvalue %dx.types.Dimensions %8974, 0
  %8976 = sitofp i32 %8975 to float
  %8977 = extractvalue %dx.types.Dimensions %8974, 1
  %8978 = sitofp i32 %8977 to float
  %8979 = fmul fast float %8918, %8976
  %8980 = fmul fast float %8919, %8978
  %8981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8982 = extractvalue %dx.types.CBufRet.f32 %8981, 1
  %8983 = fsub fast float -0.000000e+00, %8982
  %8984 = fptoui float %8983 to i32
  %8985 = fptoui float %8979 to i32
  %8986 = fptoui float %8980 to i32
  %8987 = and i32 %8984, 31
  %8988 = lshr i32 %8985, %8987
  %8989 = lshr i32 %8986, %8987
  %8990 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %8984, i32 %8988, i32 %8989, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8991 = extractvalue %dx.types.ResRet.f32 %8990, 0
  %8992 = fcmp fast olt float %8991, -1.000000e+00
  %8993 = fcmp fast ogt float %8991, -1.000000e+00
  %8994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8995 = extractvalue %dx.types.CBufRet.f32 %8994, 1
  %8996 = select i1 %8993, float %8995, float 1.000000e+00
  %8997 = fadd fast float %8991, 1.000000e+00
  %8998 = fmul fast float %8996, %8997
  %8999 = call float @dx.op.unary.f32(i32 6, float %8998)  ; FAbs(value)
  %9000 = extractvalue %dx.types.CBufRet.f32 %8994, 3
  %9001 = fcmp fast oge float %8999, %9000
  %9002 = select i1 %9001, float 0x4197782600000000, float %8999
  %9003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9004 = extractvalue %dx.types.CBufRet.f32 %9003, 0
  %9005 = extractvalue %dx.types.CBufRet.f32 %9003, 1
  %9006 = extractvalue %dx.types.CBufRet.f32 %9003, 2
  %9007 = select i1 %8992, float %9004, float %8925
  %9008 = select i1 %8992, float %9005, float %8926
  %9009 = select i1 %8992, float %9006, float %8927
  %9010 = fmul fast float %9007, %8922
  %9011 = fmul fast float %9008, %8922
  %9012 = fmul fast float %9009, %8922
  %9013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.f32 %9013, 0
  %9015 = extractvalue %dx.types.CBufRet.f32 %9013, 1
  %9016 = extractvalue %dx.types.CBufRet.f32 %9013, 2
  %9017 = select i1 %8992, float %9014, float %8932
  %9018 = select i1 %8992, float %9015, float %8933
  %9019 = select i1 %8992, float %9016, float %8934
  %9020 = fmul fast float %9017, %8923
  %9021 = fmul fast float %9018, %8923
  %9022 = fmul fast float %9019, %8923
  %9023 = fadd fast float %9020, %9010
  %9024 = fadd fast float %9021, %9011
  %9025 = fadd fast float %9022, %9012
  %9026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9027 = extractvalue %dx.types.CBufRet.f32 %9026, 0
  %9028 = extractvalue %dx.types.CBufRet.f32 %9026, 1
  %9029 = extractvalue %dx.types.CBufRet.f32 %9026, 2
  %9030 = select i1 %8992, float %9027, float %8939
  %9031 = select i1 %8992, float %9028, float %8940
  %9032 = select i1 %8992, float %9029, float %8941
  %9033 = fadd fast float %9023, %9030
  %9034 = fadd fast float %9024, %9031
  %9035 = fadd fast float %9025, %9032
  %9036 = fmul fast float %9033, %9002
  %9037 = fmul fast float %9034, %9002
  %9038 = fmul fast float %9035, %9002
  %9039 = fmul fast float %9036, %9036
  %9040 = fmul fast float %9037, %9037
  %9041 = fadd fast float %9039, %9040
  %9042 = fmul fast float %9038, %9038
  %9043 = fadd fast float %9041, %9042
  %9044 = call float @dx.op.unary.f32(i32 24, float %9043)  ; Sqrt(value)
  %9045 = fsub fast float %9044, %8957
  %9046 = fmul fast float %9045, %8959
  %9047 = call float @dx.op.unary.f32(i32 7, float %9046)  ; Saturate(value)
  br label %9048

; <label>:9048                                    ; preds = %8973, %8969
  %9049 = phi float [ %9047, %8973 ], [ 1.000000e+00, %8969 ]
  %9050 = fmul fast float %8966, 5.000000e-01
  %9051 = fadd fast float %9050, 5.000000e-01
  %9052 = call float @dx.op.unary.f32(i32 22, float %9051)  ; Frc(value)
  %9053 = call float @dx.op.unary.f32(i32 27, float %9052)  ; Round_ni(value)
  %9054 = call float @dx.op.unary.f32(i32 22, float %9052)  ; Frc(value)
  %9055 = fmul fast float %9054, 2.000000e+00
  %9056 = fadd fast float %9055, -1.000000e+00
  %9057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %8918, float %8919, float %9053, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9058 = extractvalue %dx.types.ResRet.f32 %9057, 0
  %9059 = extractvalue %dx.types.ResRet.f32 %9057, 1
  %9060 = extractvalue %dx.types.ResRet.f32 %9057, 2
  %9061 = extractvalue %dx.types.ResRet.f32 %9057, 3
  %9062 = fadd fast float %9058, -5.000000e-01
  %9063 = fadd fast float %9060, -5.000000e-01
  %9064 = fmul fast float %9062, 0xBFD5555560000000
  %9065 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9063, float %9064)  ; FMad(a,b,c)
  %9066 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9059, float 0.000000e+00)  ; FMad(a,b,c)
  %9067 = fadd fast float %9066, %9061
  %9068 = fmul fast float %9062, -7.500000e-01
  %9069 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9063, float %9068)  ; FMad(a,b,c)
  %9070 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9059, float 0.000000e+00)  ; FMad(a,b,c)
  %9071 = fadd fast float %9070, %9061
  %9072 = call float @dx.op.binary.f32(i32 35, float %9065, float -1.000000e+00)  ; FMax(a,b)
  %9073 = call float @dx.op.binary.f32(i32 35, float %9067, float -1.000000e+00)  ; FMax(a,b)
  %9074 = call float @dx.op.binary.f32(i32 35, float %9069, float -1.000000e+00)  ; FMax(a,b)
  %9075 = call float @dx.op.binary.f32(i32 35, float %9071, float -1.000000e+00)  ; FMax(a,b)
  %9076 = call float @dx.op.binary.f32(i32 36, float %9072, float 1.000000e+00)  ; FMin(a,b)
  %9077 = call float @dx.op.binary.f32(i32 36, float %9073, float 1.000000e+00)  ; FMin(a,b)
  %9078 = call float @dx.op.binary.f32(i32 36, float %9074, float 1.000000e+00)  ; FMin(a,b)
  %9079 = call float @dx.op.binary.f32(i32 36, float %9075, float 1.000000e+00)  ; FMin(a,b)
  %9080 = fcmp fast olt float %9076, 0x3FEFFF8020000000
  br i1 %9080, label %9081, label %9196, !dx.controlflow.hints !164

; <label>:9081                                    ; preds = %9048
  %9082 = extractvalue %dx.types.CBufRet.f32 %8964, 3
  %9083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9084 = extractvalue %dx.types.CBufRet.f32 %9083, 0
  %9085 = extractvalue %dx.types.CBufRet.f32 %9083, 1
  %9086 = extractvalue %dx.types.CBufRet.f32 %9083, 2
  %9087 = extractvalue %dx.types.CBufRet.f32 %9083, 3
  %9088 = fsub fast float %9084, %9076
  %9089 = fsub fast float %9085, %9077
  %9090 = fsub fast float %9086, %9078
  %9091 = fsub fast float %9087, %9079
  %9092 = fmul fast float %9088, %9082
  %9093 = fmul fast float %9089, %9082
  %9094 = fmul fast float %9090, %9082
  %9095 = fmul fast float %9091, %9082
  %9096 = fadd fast float %9092, %9076
  %9097 = fadd fast float %9093, %9077
  %9098 = fsub fast float -0.000000e+00, %9097
  %9099 = fadd fast float %9094, %9078
  %9100 = fadd fast float %9095, %9079
  %9101 = fmul fast float %9096, %9096
  %9102 = fsub fast float %9097, %9101
  %9103 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9102)  ; FMax(a,b)
  %9104 = fdiv fast float 1.000000e+00, %9103
  %9105 = fmul fast float %9097, %9096
  %9106 = fsub fast float %9099, %9105
  %9107 = fsub fast float %9056, %9096
  %9108 = fmul fast float %9056, %9056
  %9109 = fsub fast float %9108, %9097
  %9110 = fmul fast float %9107, %9104
  %9111 = fmul fast float %9110, %9106
  %9112 = fsub fast float %9109, %9111
  %9113 = fmul fast float %9097, %9097
  %9114 = fsub fast float %9100, %9113
  %9115 = fmul fast float %9106, %9106
  %9116 = fmul fast float %9115, %9104
  %9117 = fsub fast float %9114, %9116
  %9118 = fdiv fast float %9112, %9117
  %9119 = fmul fast float %9106, %9118
  %9120 = fsub fast float %9107, %9119
  %9121 = fmul fast float %9120, %9104
  %9122 = fmul fast float %9121, %9096
  %9123 = fsub fast float 1.000000e+00, %9122
  %9124 = fmul fast float %9097, %9118
  %9125 = fsub fast float %9123, %9124
  %9126 = fmul fast float %9121, %9121
  %9127 = fmul fast float %9118, 4.000000e+00
  %9128 = fmul fast float %9127, %9125
  %9129 = fsub fast float %9126, %9128
  %9130 = call float @dx.op.unary.f32(i32 24, float %9129)  ; Sqrt(value)
  %9131 = fcmp fast oge float %9121, 0.000000e+00
  %9132 = fsub fast float -0.000000e+00, %9130
  %9133 = select i1 %9131, float %9132, float %9130
  %9134 = fsub fast float %9133, %9121
  %9135 = fdiv fast float %9134, %9118
  %9136 = fdiv fast float %9125, %9134
  %9137 = fmul fast float %9135, 5.000000e-01
  %9138 = fmul fast float %9136, 2.000000e+00
  %9139 = select i1 %9131, float %9137, float %9138
  %9140 = select i1 %9131, float %9138, float %9137
  %9141 = call float @dx.op.binary.f32(i32 35, float %9139, float %9140)  ; FMax(a,b)
  %9142 = call float @dx.op.binary.f32(i32 36, float %9139, float %9140)  ; FMin(a,b)
  %9143 = fcmp fast ogt float %9056, %9142
  br i1 %9143, label %9144, label %9154

; <label>:9144                                    ; preds = %9081
  %9145 = fsub fast float %9056, %9142
  %9146 = fsub fast float %9141, %9142
  %9147 = fmul fast float %9145, %9146
  %9148 = fmul fast float %9141, %9056
  %9149 = fadd fast float %9141, %9056
  %9150 = fmul fast float %9149, %9096
  %9151 = fadd fast float %9148, %9097
  %9152 = fsub fast float %9151, %9150
  %9153 = fdiv fast float %9152, %9147
  br label %9154

; <label>:9154                                    ; preds = %9144, %9081
  %9155 = phi float [ %9153, %9144 ], [ 0.000000e+00, %9081 ]
  %9156 = fcmp fast ogt float %9056, %9141
  %9157 = fsub fast float %9056, %9141
  br i1 %9156, label %9158, label %9168

; <label>:9158                                    ; preds = %9154
  %9159 = fsub fast float %9141, %9142
  %9160 = fmul fast float %9159, %9157
  %9161 = fmul fast float %9142, %9056
  %9162 = fadd fast float %9142, %9056
  %9163 = fmul fast float %9162, %9096
  %9164 = fsub fast float %9098, %9161
  %9165 = fadd fast float %9164, %9163
  %9166 = fdiv fast float %9165, %9160
  %9167 = fadd fast float %9166, %9155
  br label %9168

; <label>:9168                                    ; preds = %9158, %9154
  %9169 = phi float [ %9167, %9158 ], [ %9155, %9154 ]
  %9170 = fsub fast float %9056, %9142
  %9171 = fmul fast float %9170, %9157
  %9172 = fmul fast float %9142, %9141
  %9173 = fadd fast float %9142, %9141
  %9174 = fmul fast float %9173, %9096
  %9175 = fadd fast float %9172, %9097
  %9176 = fsub fast float %9175, %9174
  %9177 = fdiv fast float %9176, %9171
  %9178 = call float @dx.op.unary.f32(i32 7, float %9169)  ; Saturate(value)
  %9179 = fcmp fast oeq float %7851, 0.000000e+00
  %9180 = extractvalue %dx.types.CBufRet.f32 %8964, 0
  %9181 = fcmp fast oeq float %9180, 0.000000e+00
  %9182 = or i1 %9179, %9181
  %9183 = fmul fast float %9180, 2.000000e+00
  %9184 = fadd fast float %8965, %8966
  %9185 = fdiv fast float %9184, %9183
  %9186 = call float @dx.op.unary.f32(i32 7, float %9185)  ; Saturate(value)
  %9187 = fmul fast float %9186, 2.000000e+00
  %9188 = fsub fast float 3.000000e+00, %9187
  %9189 = fmul fast float %9186, %9186
  %9190 = fmul fast float %9189, %9188
  %9191 = select i1 %9182, float 1.000000e+00, float %9190
  %9192 = fmul fast float %9177, %7851
  %9193 = fadd fast float %9178, %9192
  %9194 = call float @dx.op.unary.f32(i32 7, float %9193)  ; Saturate(value)
  %9195 = fmul fast float %9191, %9194
  br label %9196

; <label>:9196                                    ; preds = %9168, %9048
  %9197 = phi float [ %9195, %9168 ], [ 0.000000e+00, %9048 ]
  %9198 = fsub fast float 1.000000e+00, %9197
  %9199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %43, float %8918, float %8919, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9200 = extractvalue %dx.types.ResRet.f32 %9199, 0
  %9201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9202 = extractvalue %dx.types.CBufRet.i32 %9201, 2
  %9203 = icmp eq i32 %9202, 0
  br i1 %9203, label %9209, label %9204

; <label>:9204                                    ; preds = %9196
  %9205 = call float @dx.op.unary.f32(i32 7, float %9197)  ; Saturate(value)
  %9206 = fadd fast float %9200, -1.000000e+00
  %9207 = fmul fast float %9205, %9206
  %9208 = fadd fast float %9207, 1.000000e+00
  br label %9209

; <label>:9209                                    ; preds = %9204, %9196
  %9210 = phi float [ %9208, %9204 ], [ %9198, %9196 ]
  br i1 %8972, label %9211, label %9229

; <label>:9211                                    ; preds = %9209
  %9212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9213 = extractvalue %dx.types.CBufRet.f32 %9212, 1
  %9214 = fsub fast float %9049, %9213
  %9215 = call float @dx.op.unary.f32(i32 7, float %9214)  ; Saturate(value)
  %9216 = fsub fast float %9049, %8971
  %9217 = call float @dx.op.unary.f32(i32 7, float %9216)  ; Saturate(value)
  %9218 = fsub fast float %9215, %9217
  %9219 = fsub fast float %9051, %9217
  %9220 = fdiv fast float %9219, %9218
  %9221 = call float @dx.op.unary.f32(i32 7, float %9220)  ; Saturate(value)
  %9222 = fmul fast float %9221, 2.000000e+00
  %9223 = fsub fast float 3.000000e+00, %9222
  %9224 = fsub fast float %9200, %9210
  %9225 = fmul fast float %9221, %9221
  %9226 = fmul fast float %9225, %9224
  %9227 = fmul fast float %9226, %9223
  %9228 = fadd fast float %9227, %9210
  br label %9229

; <label>:9229                                    ; preds = %9211, %9209
  %9230 = phi float [ %9228, %9211 ], [ %9210, %9209 ]
  %9231 = call float @dx.op.binary.f32(i32 35, float %9200, float %9230)  ; FMax(a,b)
  %9232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9233 = extractvalue %dx.types.CBufRet.i32 %9232, 2
  %9234 = and i32 %9233, 1
  %9235 = icmp eq i32 %9234, 0
  %9236 = fcmp fast une float %9231, 1.000000e+00
  %9237 = and i1 %9236, %9235
  br i1 %9237, label %9238, label %9257

; <label>:9238                                    ; preds = %9229
  %9239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %8918, float %8919, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9240 = extractvalue %dx.types.ResRet.f32 %9239, 0
  %9241 = extractvalue %dx.types.ResRet.f32 %9239, 1
  %9242 = extractvalue %dx.types.ResRet.f32 %9239, 2
  %9243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9244 = extractvalue %dx.types.CBufRet.f32 %9243, 1
  %9245 = fmul fast float %9244, %9240
  %9246 = fmul fast float %9244, %9241
  %9247 = fmul fast float %9244, %9242
  %9248 = fcmp fast ogt float %9200, 0x3FEFFF2E40000000
  %9249 = fsub fast float 1.000000e+00, %9231
  %9250 = fsub fast float 1.000000e+00, %9200
  %9251 = fdiv fast float %9249, %9250
  %9252 = call float @dx.op.unary.f32(i32 7, float %9251)  ; Saturate(value)
  %9253 = select i1 %9248, float 0.000000e+00, float %9252
  %9254 = fmul fast float %9245, %9253
  %9255 = fmul fast float %9246, %9253
  %9256 = fmul fast float %9247, %9253
  br label %9257

; <label>:9257                                    ; preds = %9238, %9229
  %9258 = phi float [ 0.000000e+00, %9229 ], [ %9254, %9238 ]
  %9259 = phi float [ 0.000000e+00, %9229 ], [ %9255, %9238 ]
  %9260 = phi float [ 0.000000e+00, %9229 ], [ %9256, %9238 ]
  %9261 = fmul fast float %9258, %7836
  %9262 = fmul fast float %9259, %7836
  %9263 = fmul fast float %9260, %7836
  %9264 = fmul fast float %9231, %8893
  %9265 = call float @dx.op.dot3.f32(i32 55, float %9231, float %9231, float %9231, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9266 = call float @dx.op.dot3.f32(i32 55, float %9261, float %9262, float %9263, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9267 = select i1 %217, float %9265, float %9231
  %9268 = select i1 %217, float 1.000000e+00, float %9231
  %9269 = select i1 %217, float %9266, float %9261
  %9270 = select i1 %217, float 0.000000e+00, float %9262
  %9271 = select i1 %217, float 0.000000e+00, float %9263
  %9272 = fmul fast float %9267, %8905
  %9273 = fmul fast float %9267, %8906
  %9274 = fmul fast float %9268, %8907
  %9275 = fadd fast float %9272, %9269
  %9276 = fadd fast float %9273, %9270
  %9277 = fadd fast float %9271, %9274
  %9278 = fmul fast float %9267, %8908
  %9279 = fmul fast float %9267, %8909
  %9280 = fmul fast float %9268, %8910
  br label %9281

; <label>:9281                                    ; preds = %9257, %8914, %8883, %8119
  %9282 = phi float [ %8124, %8119 ], [ %8905, %8883 ], [ %9275, %9257 ], [ %8905, %8914 ]
  %9283 = phi float [ %8125, %8119 ], [ %8906, %8883 ], [ %9276, %9257 ], [ %8906, %8914 ]
  %9284 = phi float [ %8126, %8119 ], [ %8907, %8883 ], [ %9277, %9257 ], [ %8907, %8914 ]
  %9285 = phi float [ %8127, %8119 ], [ %8908, %8883 ], [ %9278, %9257 ], [ %8908, %8914 ]
  %9286 = phi float [ %8128, %8119 ], [ %8909, %8883 ], [ %9279, %9257 ], [ %8909, %8914 ]
  %9287 = phi float [ %8129, %8119 ], [ %8910, %8883 ], [ %9280, %9257 ], [ %8910, %8914 ]
  %9288 = phi float [ %8130, %8119 ], [ %8893, %8883 ], [ %9264, %9257 ], [ %8893, %8914 ]
  %9289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9290 = extractvalue %dx.types.CBufRet.f32 %9289, 2
  %9291 = extractvalue %dx.types.CBufRet.f32 %9289, 3
  %9292 = fmul fast float %9290, %93
  %9293 = fmul fast float %9291, %94
  %9294 = call float @dx.op.unary.f32(i32 7, float %9292)  ; Saturate(value)
  %9295 = call float @dx.op.unary.f32(i32 7, float %9293)  ; Saturate(value)
  %9296 = select i1 %7861, i32 2, i32 0
  %9297 = or i32 %9296, 1
  %9298 = uitofp i32 %9297 to float
  %9299 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9294, float %9295, float %9298, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9300 = extractvalue %dx.types.ResRet.f32 %9299, 0
  %9301 = extractvalue %dx.types.ResRet.f32 %9299, 1
  %9302 = extractvalue %dx.types.ResRet.f32 %9299, 2
  %9303 = extractvalue %dx.types.ResRet.f32 %9299, 3
  %9304 = add nuw nsw i32 %9296, 2
  %9305 = uitofp i32 %9304 to float
  %9306 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9294, float %9295, float %9305, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9307 = extractvalue %dx.types.ResRet.f32 %9306, 0
  %9308 = extractvalue %dx.types.ResRet.f32 %9306, 1
  %9309 = extractvalue %dx.types.ResRet.f32 %9306, 2
  %9310 = extractvalue %dx.types.ResRet.f32 %9306, 3
  %9311 = call float @dx.op.binary.f32(i32 35, float %9301, float %9302)  ; FMax(a,b)
  %9312 = call float @dx.op.binary.f32(i32 35, float %9300, float %9311)  ; FMax(a,b)
  %9313 = call float @dx.op.binary.f32(i32 35, float %9312, float %9303)  ; FMax(a,b)
  %9314 = call float @dx.op.binary.f32(i32 36, float %9308, float %9309)  ; FMin(a,b)
  %9315 = call float @dx.op.binary.f32(i32 36, float %9307, float %9314)  ; FMin(a,b)
  %9316 = call float @dx.op.binary.f32(i32 36, float %9315, float %9310)  ; FMin(a,b)
  %9317 = fmul fast float %9313, 2.550000e+02
  %9318 = fadd fast float %9317, 0x3F70101020000000
  %9319 = fptoui float %9318 to i32
  %9320 = fmul fast float %9316, 2.550000e+02
  %9321 = fadd fast float %9320, 0x3F70101020000000
  %9322 = fptoui float %9321 to i32
  %9323 = icmp ult i32 %9319, %9322
  br i1 %9323, label %9324, label %9493

; <label>:9324                                    ; preds = %9281
  %9325 = fcmp fast ogt float %80, 9.843750e-01
  %9326 = fadd fast float %8123, -4.000000e+00
  %9327 = select i1 %9325, float -4.000000e+00, float %9326
  %9328 = call float @dx.op.binary.f32(i32 35, float %9327, float 0.000000e+00)  ; FMax(a,b)
  %9329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9330 = extractvalue %dx.types.CBufRet.f32 %9329, 0
  %9331 = fadd fast float %9330, %9328
  %9332 = extractvalue %dx.types.CBufRet.f32 %9329, 2
  %9333 = fmul fast float %9331, %9332
  %9334 = call float @dx.op.unary.f32(i32 23, float %9333)  ; Log(value)
  %9335 = extractvalue %dx.types.CBufRet.f32 %9329, 3
  %9336 = fmul fast float %9335, %9334
  %9337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9338 = extractvalue %dx.types.CBufRet.f32 %9337, 2
  %9339 = fmul fast float %9336, %9338
  %9340 = call float @dx.op.unary.f32(i32 7, float %9339)  ; Saturate(value)
  %9341 = uitofp i32 %9319 to float
  %9342 = uitofp i32 %9322 to float
  %9343 = fadd fast float %9341, 5.000000e-01
  %9344 = fadd fast float %9342, 5.000000e-01
  %9345 = fmul fast float %9338, %9343
  %9346 = fmul fast float %9338, %9344
  %9347 = fadd fast float %9345, 0x3F0FFB4800000000
  %9348 = fadd fast float %9346, 0xBF0FFB4800000000
  %9349 = call float @dx.op.binary.f32(i32 35, float %9340, float %9347)  ; FMax(a,b)
  %9350 = call float @dx.op.binary.f32(i32 36, float %9349, float %9348)  ; FMin(a,b)
  %9351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9352 = extractvalue %dx.types.CBufRet.f32 %9351, 1
  %9353 = extractvalue %dx.types.CBufRet.f32 %9351, 2
  %9354 = extractvalue %dx.types.CBufRet.f32 %9351, 0
  %9355 = select i1 %7861, float %9354, float 0.000000e+00
  %9356 = fmul fast float %9352, %9350
  %9357 = fadd fast float %9355, %9356
  %9358 = fadd fast float %9355, %9353
  %9359 = fsub fast float %9352, %9353
  %9360 = fadd fast float %9359, %9355
  %9361 = call float @dx.op.binary.f32(i32 35, float %9357, float %9358)  ; FMax(a,b)
  %9362 = call float @dx.op.binary.f32(i32 36, float %9361, float %9360)  ; FMin(a,b)
  %9363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %9294, float %9295, float %9362, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9364 = extractvalue %dx.types.ResRet.f32 %9363, 0
  %9365 = extractvalue %dx.types.ResRet.f32 %9363, 1
  %9366 = extractvalue %dx.types.ResRet.f32 %9363, 2
  %9367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9368 = extractvalue %dx.types.CBufRet.i32 %9367, 0
  %9369 = extractvalue %dx.types.CBufRet.i32 %9367, 1
  %9370 = uitofp i32 %9368 to float
  %9371 = uitofp i32 %9369 to float
  %9372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9373 = extractvalue %dx.types.CBufRet.f32 %9372, 0
  %9374 = extractvalue %dx.types.CBufRet.f32 %9372, 1
  %9375 = fmul fast float %9370, %9294
  %9376 = fmul fast float %9371, %9295
  %9377 = fadd fast float %9375, -5.000000e-01
  %9378 = fadd fast float %9376, -5.000000e-01
  %9379 = call float @dx.op.unary.f32(i32 22, float %9377)  ; Frc(value)
  %9380 = call float @dx.op.unary.f32(i32 22, float %9378)  ; Frc(value)
  %9381 = fmul fast float %9379, %9379
  %9382 = fmul fast float %9381, %9379
  %9383 = fsub fast float 3.000000e+00, %9379
  %9384 = fmul fast float %9381, %9383
  %9385 = fmul fast float %9379, 3.000000e+00
  %9386 = fmul fast float %9382, 3.000000e+00
  %9387 = fmul fast float %9381, 6.000000e+00
  %9388 = fsub fast float %9386, %9387
  %9389 = fadd fast float %9388, 4.000000e+00
  %9390 = fmul fast float %9389, 0x3FC5555560000000
  %9391 = fmul fast float %9382, -3.000000e+00
  %9392 = fadd fast float %9381, %9379
  %9393 = fmul fast float %9392, 3.000000e+00
  %9394 = fadd fast float %9391, 1.000000e+00
  %9395 = fadd fast float %9394, %9393
  %9396 = fmul fast float %9382, 0x3FC5555560000000
  %9397 = fmul fast float %9380, %9380
  %9398 = fmul fast float %9397, %9380
  %9399 = fsub fast float 3.000000e+00, %9380
  %9400 = fmul fast float %9397, %9399
  %9401 = fmul fast float %9380, 3.000000e+00
  %9402 = fmul fast float %9398, 3.000000e+00
  %9403 = fmul fast float %9397, 6.000000e+00
  %9404 = fsub fast float %9402, %9403
  %9405 = fadd fast float %9404, 4.000000e+00
  %9406 = fmul fast float %9405, 0x3FC5555560000000
  %9407 = fmul fast float %9398, -3.000000e+00
  %9408 = fadd fast float %9397, %9380
  %9409 = fmul fast float %9408, 3.000000e+00
  %9410 = fadd fast float %9407, 1.000000e+00
  %9411 = fadd fast float %9410, %9409
  %9412 = fmul fast float %9398, 0x3FC5555560000000
  %9413 = fadd fast float %9379, 1.000000e+00
  %9414 = fsub fast float 1.000000e+00, %9385
  %9415 = fadd fast float %9414, %9384
  %9416 = fadd fast float %9415, %9389
  %9417 = fmul fast float %9416, 0x3FC5555560000000
  %9418 = fdiv fast float %9390, %9417
  %9419 = fsub fast float %9413, %9418
  %9420 = fsub fast float 1.000000e+00, %9379
  %9421 = fadd fast float %9395, %9382
  %9422 = fmul fast float %9421, 0x3FC5555560000000
  %9423 = fdiv fast float %9396, %9422
  %9424 = fadd fast float %9420, %9423
  %9425 = fadd fast float %9380, 1.000000e+00
  %9426 = fsub fast float 1.000000e+00, %9401
  %9427 = fadd fast float %9426, %9400
  %9428 = fadd fast float %9427, %9405
  %9429 = fmul fast float %9428, 0x3FC5555560000000
  %9430 = fdiv fast float %9406, %9429
  %9431 = fsub fast float %9425, %9430
  %9432 = fsub fast float 1.000000e+00, %9380
  %9433 = fadd fast float %9411, %9398
  %9434 = fmul fast float %9433, 0x3FC5555560000000
  %9435 = fdiv fast float %9412, %9434
  %9436 = fadd fast float %9435, %9432
  %9437 = fmul fast float %9419, %9373
  %9438 = fsub fast float %9294, %9437
  %9439 = fmul fast float %9424, %9373
  %9440 = fadd fast float %9439, %9294
  %9441 = fmul fast float %9436, %9374
  %9442 = fadd fast float %9441, %9295
  %9443 = fmul fast float %9431, %9374
  %9444 = fsub fast float %9295, %9443
  %9445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9438, float %9444, float %9362, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9446 = extractvalue %dx.types.ResRet.f32 %9445, 0
  %9447 = extractvalue %dx.types.ResRet.f32 %9445, 1
  %9448 = extractvalue %dx.types.ResRet.f32 %9445, 2
  %9449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9440, float %9444, float %9362, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9450 = extractvalue %dx.types.ResRet.f32 %9449, 0
  %9451 = extractvalue %dx.types.ResRet.f32 %9449, 1
  %9452 = extractvalue %dx.types.ResRet.f32 %9449, 2
  %9453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9438, float %9442, float %9362, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9454 = extractvalue %dx.types.ResRet.f32 %9453, 0
  %9455 = extractvalue %dx.types.ResRet.f32 %9453, 1
  %9456 = extractvalue %dx.types.ResRet.f32 %9453, 2
  %9457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9440, float %9442, float %9362, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9458 = extractvalue %dx.types.ResRet.f32 %9457, 0
  %9459 = extractvalue %dx.types.ResRet.f32 %9457, 1
  %9460 = extractvalue %dx.types.ResRet.f32 %9457, 2
  %9461 = fsub fast float %9454, %9446
  %9462 = fsub fast float %9455, %9447
  %9463 = fsub fast float %9456, %9448
  %9464 = fmul fast float %9461, %9434
  %9465 = fmul fast float %9462, %9434
  %9466 = fmul fast float %9463, %9434
  %9467 = fadd fast float %9464, %9446
  %9468 = fadd fast float %9465, %9447
  %9469 = fadd fast float %9466, %9448
  %9470 = fsub fast float %9458, %9450
  %9471 = fsub fast float %9459, %9451
  %9472 = fsub fast float %9460, %9452
  %9473 = fmul fast float %9470, %9434
  %9474 = fmul fast float %9471, %9434
  %9475 = fmul fast float %9472, %9434
  %9476 = fsub fast float %9450, %9467
  %9477 = fadd fast float %9476, %9473
  %9478 = fsub fast float %9451, %9468
  %9479 = fadd fast float %9478, %9474
  %9480 = fsub fast float %9452, %9469
  %9481 = fadd fast float %9480, %9475
  %9482 = fmul fast float %9477, %9422
  %9483 = fmul fast float %9479, %9422
  %9484 = fmul fast float %9481, %9422
  %9485 = fadd fast float %9482, %9467
  %9486 = fadd fast float %9483, %9468
  %9487 = fadd fast float %9484, %9469
  %9488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9489 = extractvalue %dx.types.CBufRet.f32 %9488, 1
  %9490 = fmul fast float %9485, %9489
  %9491 = fmul fast float %9486, %9489
  %9492 = fmul fast float %9487, %9489
  br label %9493

; <label>:9493                                    ; preds = %9324, %9281
  %9494 = phi float [ %9364, %9324 ], [ 1.000000e+00, %9281 ]
  %9495 = phi float [ %9365, %9324 ], [ 1.000000e+00, %9281 ]
  %9496 = phi float [ %9366, %9324 ], [ 1.000000e+00, %9281 ]
  %9497 = phi float [ %9490, %9324 ], [ 0.000000e+00, %9281 ]
  %9498 = phi float [ %9491, %9324 ], [ 0.000000e+00, %9281 ]
  %9499 = phi float [ %9492, %9324 ], [ 0.000000e+00, %9281 ]
  %9500 = fmul fast float %9497, %7836
  %9501 = fmul fast float %9498, %7836
  %9502 = fmul fast float %9499, %7836
  %9503 = fmul fast float %9494, %9288
  %9504 = call float @dx.op.dot3.f32(i32 55, float %9494, float %9495, float %9496, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9505 = call float @dx.op.dot3.f32(i32 55, float %9500, float %9501, float %9502, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9506 = select i1 %217, float %9504, float %9494
  %9507 = select i1 %217, float %9504, float %9495
  %9508 = select i1 %217, float 1.000000e+00, float %9496
  %9509 = select i1 %217, float %9505, float %9500
  %9510 = select i1 %217, float 0.000000e+00, float %9501
  %9511 = select i1 %217, float 0.000000e+00, float %9502
  %9512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9513 = extractvalue %dx.types.CBufRet.i32 %9512, 3
  %9514 = and i32 %9513, 3
  %9515 = icmp ne i32 %9514, 0
  %9516 = and i32 %9513, 4
  %9517 = icmp ne i32 %9516, 0
  %9518 = and i1 %9515, %9517
  %9519 = and i1 %217, %9518
  br i1 %9519, label %9520, label %9526

; <label>:9520                                    ; preds = %9493
  %9521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9522 = extractvalue %dx.types.CBufRet.f32 %9521, 1
  %9523 = fadd fast float %9503, -1.000000e+00
  %9524 = fmul fast float %9522, %9523
  %9525 = fadd fast float %9524, 1.000000e+00
  br label %9526

; <label>:9526                                    ; preds = %9520, %9493
  %9527 = phi float [ %9525, %9520 ], [ %9503, %9493 ]
  %9528 = fadd fast float %9285, %9282
  %9529 = fmul fast float %9506, %9528
  %9530 = fadd fast float %9529, %9509
  %9531 = fadd fast float %9286, %9283
  %9532 = fmul fast float %9507, %9531
  %9533 = fadd fast float %9532, %9510
  %9534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9535 = extractvalue %dx.types.CBufRet.f32 %9534, 0
  br i1 %217, label %9536, label %9560

; <label>:9536                                    ; preds = %9526
  %9537 = fadd fast float %9530, %9533
  %9538 = fmul fast float %9535, %9537
  %9539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9540 = extractvalue %dx.types.CBufRet.f32 %9539, 3
  %9541 = extractvalue %dx.types.CBufRet.f32 %7843, 1
  %9542 = fsub fast float %7848, %7839
  %9543 = fsub fast float %9542, %7842
  %9544 = fadd fast float %9543, %7849
  %9545 = fsub fast float %9544, %9541
  %9546 = extractvalue %dx.types.CBufRet.f32 %7843, 2
  %9547 = fmul fast float %9545, %9546
  %9548 = call float @dx.op.unary.f32(i32 7, float %9547)  ; Saturate(value)
  %9549 = fsub fast float %9548, %9540
  %9550 = fmul fast float %9549, %9527
  %9551 = fadd fast float %9550, %9540
  %9552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9553 = extractvalue %dx.types.CBufRet.f32 %9552, 0
  %9554 = fsub fast float %9551, %9553
  %9555 = fmul fast float %9554, 1.000000e+01
  %9556 = call float @dx.op.unary.f32(i32 7, float %9555)  ; Saturate(value)
  %9557 = fmul fast float %9556, %7835
  %9558 = fadd fast float %9557, %7836
  %9559 = fmul fast float %9558, %9551
  br label %9584

; <label>:9560                                    ; preds = %9526
  %9561 = fadd fast float %9287, %9284
  %9562 = fmul fast float %9508, %9561
  %9563 = fadd fast float %9562, %9511
  %9564 = fmul fast float %9535, %9530
  %9565 = fmul fast float %9535, %9533
  %9566 = fmul fast float %9535, %9563
  %9567 = call float @dx.op.binary.f32(i32 35, float %9564, float %9565)  ; FMax(a,b)
  %9568 = call float @dx.op.binary.f32(i32 35, float %9567, float %9566)  ; FMax(a,b)
  %9569 = call float @dx.op.binary.f32(i32 35, float %9568, float %7836)  ; FMax(a,b)
  %9570 = fcmp fast ugt float %9569, 0x3F10000000000000
  br i1 %9570, label %9572, label %9571

; <label>:9571                                    ; preds = %9560
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9572

; <label>:9572                                    ; preds = %9571, %9560
  %9573 = add i32 %49, 356
  %9574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %9573, i32 undef)  ; BufferLoad(srv,index,wot)
  %9575 = extractvalue %dx.types.ResRet.i32 %9574, 0
  %9576 = and i32 %9575, 32
  %9577 = icmp eq i32 %9576, 0
  br i1 %9577, label %9584, label %9578

; <label>:9578                                    ; preds = %9572
  %9579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9580 = extractvalue %dx.types.CBufRet.f32 %9579, 0
  %9581 = fmul fast float %9580, 0x3FE99999A0000000
  %9582 = fadd fast float %9580, %9564
  %9583 = fadd fast float %9581, %9566
  br label %9584

; <label>:9584                                    ; preds = %9578, %9572, %9536
  %9585 = phi float [ %9538, %9536 ], [ %9582, %9578 ], [ %9564, %9572 ]
  %9586 = phi float [ %9559, %9536 ], [ %9565, %9578 ], [ %9565, %9572 ]
  %9587 = phi float [ %9558, %9536 ], [ %9583, %9578 ], [ %9566, %9572 ]
  %9588 = phi float [ %9558, %9536 ], [ %7836, %9578 ], [ %7836, %9572 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9589 = call float @dx.op.binary.f32(i32 36, float %9585, float 3.225500e+04)  ; FMin(a,b)
  %9590 = call float @dx.op.binary.f32(i32 36, float %9586, float 3.225500e+04)  ; FMin(a,b)
  %9591 = call float @dx.op.binary.f32(i32 36, float %9587, float 3.225500e+04)  ; FMin(a,b)
  %9592 = call float @dx.op.binary.f32(i32 36, float %9588, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9589)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9590)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9591)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9592)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!53 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!56 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!57 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!58 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!59 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!60 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!61 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!62 = !{[42 x i32] [i32 40, i32 4, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 7, i32 7, i32 15, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 0, i32 15, i32 15, i32 15, i32 15, i32 15, i32 0, i32 15, i32 15]}
!63 = !{void ()* @ps_main, !"ps_main", !64, !4, !84}
!64 = !{!65, !82, null}
!65 = !{!66, !69, !70, !72, !74, !75, !76, !77, !78, !79, !81}
!66 = !{i32 0, !"SV_Position", i8 9, i8 3, !67, i8 4, i32 1, i8 4, i32 0, i8 0, !68}
!67 = !{i32 0}
!68 = !{i32 3, i32 15}
!69 = !{i32 1, !"COLOR", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 1, i8 0, !68}
!70 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 2, i8 0, !71}
!71 = !{i32 3, i32 3}
!72 = !{i32 3, !"NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 3, i8 0, !73}
!73 = !{i32 3, i32 7}
!74 = !{i32 4, !"TANGENT", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 4, i8 0, !68}
!75 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 5, i8 0, !73}
!76 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 6, i8 0, !68}
!77 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 2, i32 7, i8 0, !71}
!78 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 8, i8 0, !68}
!79 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !67, i8 1, i32 1, i8 4, i32 9, i8 0, !80}
!80 = !{i32 3, i32 13}
!81 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !67, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!82 = !{!83}
!83 = !{i32 0, !"SV_Target", i8 9, i8 16, !67, i8 0, i32 1, i8 4, i32 0, i8 0, !68}
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

