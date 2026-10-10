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
; SV_Target                1   xyzw        1   TARGET   float   xyzw
;
; shader hash: 116fc9b64cd27f0c74cada2344c4bc39
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
; Number of inputs: 40, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 8, 9, 12, 13, 14, 28, 29, 36, 38, 39 }
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
  %410 = add i32 %48, 472
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
  br i1 %466, label %1116, label %467

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
  %1103 = add i32 %48, 96
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = and i32 %1105, 255
  %1107 = uitofp i32 %1106 to float
  %1108 = lshr i32 %1105, 8
  %1109 = and i32 %1108, 255
  %1110 = uitofp i32 %1109 to float
  %1111 = call float @dx.op.dot3.f32(i32 55, float %972, float %973, float %974, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1112 = fmul fast float %1110, %1111
  %1113 = fadd fast float %1112, %1107
  %1114 = fmul fast float %1113, 0x3F70101020000000
  %1115 = call float @dx.op.unary.f32(i32 7, float %1114)  ; Saturate(value)
  br label %1116

; <label>:1116                                    ; preds = %1099, %452
  %1117 = phi float [ 0.000000e+00, %452 ], [ %1053, %1099 ]
  %1118 = phi float [ 0.000000e+00, %452 ], [ %1054, %1099 ]
  %1119 = phi float [ 0.000000e+00, %452 ], [ %972, %1099 ]
  %1120 = phi float [ 0.000000e+00, %452 ], [ %973, %1099 ]
  %1121 = phi float [ 0.000000e+00, %452 ], [ %974, %1099 ]
  %1122 = phi float [ 0.000000e+00, %452 ], [ %1100, %1099 ]
  %1123 = phi float [ 0.000000e+00, %452 ], [ %1101, %1099 ]
  %1124 = phi float [ 0.000000e+00, %452 ], [ %1102, %1099 ]
  %1125 = phi float [ 0.000000e+00, %452 ], [ %958, %1099 ]
  %1126 = phi float [ 0.000000e+00, %452 ], [ %754, %1099 ]
  %1127 = phi float [ 0.000000e+00, %452 ], [ %1052, %1099 ]
  %1128 = phi float [ 0.000000e+00, %452 ], [ %1055, %1099 ]
  %1129 = phi float [ 0.000000e+00, %452 ], [ %1115, %1099 ]
  br i1 %400, label %1971, label %1130

; <label>:1130                                    ; preds = %1116
  %1131 = icmp ult i32 %458, 2
  %1132 = add i32 %48, 40
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = add i32 %48, 44
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = or i32 %1137, %1134
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1971, label %1140

; <label>:1140                                    ; preds = %1130
  %1141 = and i32 %1134, 262144
  %1142 = icmp ne i32 %1141, 0
  %1143 = select i1 %1142, float %51, float 1.000000e+00
  %1144 = select i1 %1142, float %52, float 0.000000e+00
  %1145 = select i1 %1142, float %53, float 0.000000e+00
  %1146 = select i1 %1142, float %54, float 1.000000e+00
  %1147 = select i1 %1142, float %55, float %71
  %1148 = select i1 %1142, float %56, float %72
  %1149 = add i32 %48, 300
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = lshr i32 %1151, 16
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = fmul fast float %1153, 0x3F50624DE0000000
  %1155 = add i32 %48, 104
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = lshr i32 %1157, 16
  %1159 = and i32 %1158, 255
  %1160 = lshr i32 %1157, 24
  %1161 = add i32 %48, 308
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = and i32 %1163, 65535
  %1165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1164)  ; LegacyF16ToF32(value)
  %1166 = lshr i32 %1163, 16
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = add i32 %48, 48
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = lshr i32 %1170, 22
  %1172 = shl nuw nsw i32 %1171, 5
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = shl i32 %1170, 4
  %1175 = and i32 %1174, 32752
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = lshr i32 %1170, 7
  %1178 = and i32 %1177, 32752
  %1179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1178)  ; LegacyF16ToF32(value)
  %1180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1181 = extractvalue %dx.types.CBufRet.f32 %1180, 3
  %1182 = fmul fast float %1181, 1.000000e+03
  %1183 = fmul fast float %310, %1182
  %1184 = call float @dx.op.unary.f32(i32 22, float %1183)  ; Frc(value)
  %1185 = fadd fast float %1184, %300
  %1186 = fmul fast float %311, %1182
  %1187 = call float @dx.op.unary.f32(i32 22, float %1186)  ; Frc(value)
  %1188 = fadd fast float %1187, %302
  %1189 = fmul fast float %1154, %1182
  %1190 = call float @dx.op.unary.f32(i32 22, float %1189)  ; Frc(value)
  %1191 = fmul fast float %1190, 0x401921FB60000000
  %1192 = fadd fast float %1191, %1173
  %1193 = call float @dx.op.unary.f32(i32 13, float %1192)  ; Sin(value)
  %1194 = call float @dx.op.unary.f32(i32 12, float %1192)  ; Cos(value)
  %1195 = fsub fast float -0.000000e+00, %1193
  %1196 = fadd fast float %1147, -5.000000e-01
  %1197 = fadd fast float %1148, -5.000000e-01
  %1198 = fmul fast float %1165, %1196
  %1199 = fmul fast float %1167, %1197
  %1200 = fadd fast float %1198, 5.000000e-01
  %1201 = fadd fast float %1199, 5.000000e-01
  %1202 = fmul fast float %1176, %1200
  %1203 = fmul fast float %1179, %1201
  %1204 = fmul fast float %1194, %1202
  %1205 = call float @dx.op.tertiary.f32(i32 46, float %1195, float %1203, float %1204)  ; FMad(a,b,c)
  %1206 = fmul fast float %1193, %1202
  %1207 = call float @dx.op.tertiary.f32(i32 46, float %1194, float %1203, float %1206)  ; FMad(a,b,c)
  %1208 = fadd fast float %1185, %1205
  %1209 = fadd fast float %1188, %1207
  %1210 = icmp ugt i32 %1159, 1
  %1211 = icmp ugt i32 %1157, 33554431
  %1212 = or i1 %1211, %1210
  br i1 %1212, label %1213, label %1238

; <label>:1213                                    ; preds = %1140
  %1214 = add i32 %48, 244
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = lshr i32 %1216, 16
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = fmul fast float %1181, %1218
  %1220 = call float @dx.op.unary.f32(i32 22, float %1219)  ; Frc(value)
  %1221 = mul nuw nsw i32 %1159, %1160
  %1222 = uitofp i32 %1221 to float
  %1223 = fmul fast float %1220, %1222
  %1224 = call float @dx.op.unary.f32(i32 27, float %1223)  ; Round_ni(value)
  %1225 = fptoui float %1224 to i32
  %1226 = urem i32 %1225, %1159
  %1227 = udiv i32 %1225, %1160
  %1228 = call float @dx.op.unary.f32(i32 22, float %1208)  ; Frc(value)
  %1229 = call float @dx.op.unary.f32(i32 22, float %1209)  ; Frc(value)
  %1230 = uitofp i32 %1226 to float
  %1231 = uitofp i32 %1227 to float
  %1232 = fadd fast float %1228, %1230
  %1233 = fadd fast float %1229, %1231
  %1234 = uitofp i32 %1159 to float
  %1235 = uitofp i32 %1160 to float
  %1236 = fdiv fast float %1232, %1234
  %1237 = fdiv fast float %1233, %1235
  br label %1238

; <label>:1238                                    ; preds = %1213, %1140
  %1239 = phi float [ %1236, %1213 ], [ %1208, %1140 ]
  %1240 = phi float [ %1237, %1213 ], [ %1209, %1140 ]
  %1241 = and i32 %1134, 16777216
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1352, label %1243

; <label>:1243                                    ; preds = %1238
  %1244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1245 = extractvalue %dx.types.CBufRet.f32 %1244, 0
  %1246 = extractvalue %dx.types.CBufRet.f32 %1244, 1
  %1247 = extractvalue %dx.types.CBufRet.f32 %1244, 2
  %1248 = fadd fast float %1245, %155
  %1249 = fadd fast float %1246, %156
  %1250 = fadd fast float %1247, %157
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  %1253 = call float @dx.op.unary.f32(i32 7, float %1252)  ; Saturate(value)
  %1254 = icmp eq i32 %49, 65535
  br i1 %1254, label %1349, label %1255

; <label>:1255                                    ; preds = %1243
  %1256 = lshr i32 %49, 1
  %1257 = shl i32 %1256, 2
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = and i32 %49, 1
  %1261 = icmp ne i32 %1260, 0
  %1262 = lshr i32 %1259, 16
  %1263 = and i32 %1259, 65535
  %1264 = select i1 %1261, i32 %1262, i32 %1263
  %1265 = icmp eq i32 %1264, 65535
  br i1 %1265, label %1345, label %1266

; <label>:1266                                    ; preds = %1255
  %1267 = mul nuw nsw i32 %1264, 40
  %1268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  %1270 = extractvalue %dx.types.ResRet.f32 %1268, 1
  %1271 = extractvalue %dx.types.ResRet.f32 %1268, 2
  %1272 = add nuw nsw i32 %1267, 12
  %1273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  %1275 = extractvalue %dx.types.ResRet.f32 %1273, 1
  %1276 = extractvalue %dx.types.ResRet.f32 %1273, 2
  %1277 = add nuw nsw i32 %1267, 24
  %1278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.ResRet.f32 %1278, 1
  %1281 = extractvalue %dx.types.ResRet.f32 %1278, 2
  %1282 = add nuw nsw i32 %1267, 36
  %1283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = fsub fast float %1248, %1269
  %1286 = fsub fast float %1249, %1270
  %1287 = fsub fast float %1250, %1271
  %1288 = fmul fast float %1284, %1285
  %1289 = fmul fast float %1284, %1286
  %1290 = fmul fast float %1284, %1287
  %1291 = call float @dx.op.unary.f32(i32 27, float %1288)  ; Round_ni(value)
  %1292 = call float @dx.op.unary.f32(i32 27, float %1289)  ; Round_ni(value)
  %1293 = call float @dx.op.unary.f32(i32 27, float %1290)  ; Round_ni(value)
  %1294 = fadd fast float %1291, 5.000000e-01
  %1295 = fadd fast float %1292, 5.000000e-01
  %1296 = fadd fast float %1293, 5.000000e-01
  %1297 = fmul fast float %1294, %1274
  %1298 = fmul fast float %1295, %1275
  %1299 = fmul fast float %1296, %1276
  %1300 = shl i32 %49, 2
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = add i32 %1302, 0
  %1304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1303, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1305 = call float @dx.op.unary.f32(i32 22, float %1297)  ; Frc(value)
  %1306 = call float @dx.op.unary.f32(i32 22, float %1298)  ; Frc(value)
  %1307 = call float @dx.op.unary.f32(i32 22, float %1299)  ; Frc(value)
  %1308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1304, %dx.types.Handle %43, float %1305, float %1306, float %1307, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 0
  %1310 = extractvalue %dx.types.ResRet.f32 %1308, 1
  %1311 = extractvalue %dx.types.ResRet.f32 %1308, 2
  %1312 = fmul fast float %1309, 1.023000e+03
  %1313 = fmul fast float %1310, 1.023000e+03
  %1314 = fmul fast float %1311, 1.023000e+03
  %1315 = fadd fast float %1312, 5.000000e-01
  %1316 = fadd fast float %1313, 5.000000e-01
  %1317 = fadd fast float %1314, 5.000000e-01
  %1318 = call float @dx.op.unary.f32(i32 27, float %1315)  ; Round_ni(value)
  %1319 = call float @dx.op.unary.f32(i32 27, float %1316)  ; Round_ni(value)
  %1320 = call float @dx.op.unary.f32(i32 27, float %1317)  ; Round_ni(value)
  %1321 = fsub fast float %1288, %1291
  %1322 = fsub fast float %1289, %1292
  %1323 = fsub fast float %1290, %1293
  %1324 = fmul fast float %1321, 7.500000e-01
  %1325 = fmul fast float %1322, 7.500000e-01
  %1326 = fmul fast float %1323, 7.500000e-01
  %1327 = fadd fast float %1291, 1.250000e-01
  %1328 = fadd fast float %1327, %1324
  %1329 = fadd fast float %1328, %1318
  %1330 = fadd fast float %1292, 1.250000e-01
  %1331 = fadd fast float %1330, %1325
  %1332 = fadd fast float %1331, %1319
  %1333 = fadd fast float %1293, 1.250000e-01
  %1334 = fadd fast float %1333, %1326
  %1335 = fadd fast float %1334, %1320
  %1336 = fmul fast float %1329, %1279
  %1337 = fmul fast float %1332, %1280
  %1338 = fmul fast float %1335, %1281
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = add i32 %1340, 0
  %1342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1341, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1342, %dx.types.Handle %41, float %1336, float %1337, float %1338, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1344 = extractvalue %dx.types.ResRet.f32 %1343, 0
  br label %1345

; <label>:1345                                    ; preds = %1266, %1255
  %1346 = phi float [ %1344, %1266 ], [ -1.000000e+00, %1255 ]
  %1347 = fadd fast float %1346, %1253
  %1348 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  br label %1349

; <label>:1349                                    ; preds = %1345, %1243
  %1350 = phi float [ %1348, %1345 ], [ %1253, %1243 ]
  %1351 = fmul fast float %1350, %455
  br label %1352

; <label>:1352                                    ; preds = %1349, %1238
  %1353 = phi float [ %1351, %1349 ], [ %455, %1238 ]
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = and i32 %1355, 256
  %1357 = icmp eq i32 %1356, 0
  br i1 %1357, label %1404, label %1358

; <label>:1358                                    ; preds = %1352
  %1359 = add i32 %48, 428
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = add i32 %1361, 0
  %1363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1363, %dx.types.Handle %89, float %1239, float %1240, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1365 = extractvalue %dx.types.ResRet.f32 %1364, 0
  %1366 = add i32 %48, 116
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = shl i32 %1368, 4
  %1370 = and i32 %1369, 32752
  %1371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1370)  ; LegacyF16ToF32(value)
  %1372 = lshr i32 %1368, 7
  %1373 = and i32 %1372, 32752
  %1374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1373)  ; LegacyF16ToF32(value)
  %1375 = fsub fast float 1.000000e+00, %1353
  %1376 = call float @dx.op.binary.f32(i32 35, float %1375, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1377 = bitcast float %1353 to i32
  %1378 = sitofp i32 %1377 to float
  %1379 = fadd fast float %1378, 0xC1CFBF8940000000
  %1380 = fmul fast float %1374, %1379
  %1381 = fadd fast float %1380, 0x41CFBF8940000000
  %1382 = fptosi float %1381 to i32
  %1383 = bitcast i32 %1382 to float
  %1384 = bitcast float %1376 to i32
  %1385 = sitofp i32 %1384 to float
  %1386 = fadd fast float %1385, 0xC1CFBF8940000000
  %1387 = fmul fast float %1386, %1374
  %1388 = fadd fast float %1387, 0x41CFBF8940000000
  %1389 = fptosi float %1388 to i32
  %1390 = bitcast i32 %1389 to float
  %1391 = fmul fast float %1383, %1371
  %1392 = fmul fast float %1390, %1371
  %1393 = fsub fast float %1376, %1391
  %1394 = fadd fast float %1392, %1376
  %1395 = call float @dx.op.unary.f32(i32 7, float %1393)  ; Saturate(value)
  %1396 = call float @dx.op.unary.f32(i32 7, float %1394)  ; Saturate(value)
  %1397 = fsub fast float %1365, %1395
  %1398 = fsub fast float %1396, %1395
  %1399 = bitcast float %1398 to i32
  %1400 = sub nsw i32 2129859010, %1399
  %1401 = bitcast i32 %1400 to float
  %1402 = fmul fast float %1401, %1397
  %1403 = call float @dx.op.unary.f32(i32 7, float %1402)  ; Saturate(value)
  br label %1404

; <label>:1404                                    ; preds = %1358, %1352
  %1405 = phi float [ %1403, %1358 ], [ %1353, %1352 ]
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = and i32 %1407, 128
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %1426, label %1410

; <label>:1410                                    ; preds = %1404
  %1411 = add i32 %48, 412
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = add i32 %1413, 0
  %1415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1415, %dx.types.Handle %89, float %1239, float %1240, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = and i32 %1419, 524288
  %1421 = icmp ne i32 %1420, 0
  %1422 = fcmp fast ogt float %1417, 0x3FE0101020000000
  %1423 = select i1 %1422, float 1.000000e+00, float 0.000000e+00
  %1424 = select i1 %1421, float %1423, float %1417
  %1425 = fmul fast float %1424, %1405
  br label %1426

; <label>:1426                                    ; preds = %1410, %1404
  %1427 = phi float [ %1425, %1410 ], [ %1405, %1404 ]
  %1428 = fcmp fast ult float %1427, 0x3F70101020000000
  br i1 %1428, label %1971, label %1429

; <label>:1429                                    ; preds = %1426
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = and i32 %1431, 16
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %1632, label %1434

; <label>:1434                                    ; preds = %1429
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = add i32 %48, 364
  %1438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.i32 %1438, 0
  %1440 = add i32 %1439, 0
  %1441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1440, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1442 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1441, %dx.types.Handle %88, float %1239, float %1240, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = extractvalue %dx.types.ResRet.f32 %1442, 1
  %1445 = extractvalue %dx.types.ResRet.f32 %1442, 2
  %1446 = extractvalue %dx.types.ResRet.f32 %1442, 3
  %1447 = and i32 %1436, 255
  %1448 = uitofp i32 %1447 to float
  %1449 = lshr i32 %1436, 8
  %1450 = and i32 %1449, 255
  %1451 = uitofp i32 %1450 to float
  %1452 = fmul fast float %1446, %1448
  %1453 = fadd fast float %1452, %1451
  %1454 = fmul fast float %1453, 0x3F70101000000000
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 512
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1467, label %1459

; <label>:1459                                    ; preds = %1434
  %1460 = add i32 %48, 444
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = add i32 %1462, 0
  %1464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1465 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1464, %dx.types.Handle %89, float %1239, float %1240, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1466 = extractvalue %dx.types.ResRet.f32 %1465, 0
  br label %1467

; <label>:1467                                    ; preds = %1459, %1434
  %1468 = phi float [ %1466, %1459 ], [ 1.000000e+00, %1434 ]
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 33554432
  %1472 = icmp eq i32 %1471, 0
  br i1 %1472, label %1579, label %1473

; <label>:1473                                    ; preds = %1467
  %1474 = add i32 %48, 240
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 65535
  %1478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1477)  ; LegacyF16ToF32(value)
  %1479 = lshr i32 %1476, 16
  %1480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1479)  ; LegacyF16ToF32(value)
  %1481 = add i32 %48, 244
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = and i32 %1483, 65535
  %1485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1484)  ; LegacyF16ToF32(value)
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = lshr i32 %1487, 24
  %1489 = uitofp i32 %1488 to float
  %1490 = fmul fast float %1489, 0x3F70101020000000
  %1491 = and i32 %1487, 255
  %1492 = uitofp i32 %1491 to float
  %1493 = fmul fast float %1492, 0x3F70101020000000
  %1494 = lshr i32 %1487, 8
  %1495 = and i32 %1494, 255
  %1496 = uitofp i32 %1495 to float
  %1497 = fmul fast float %1496, 0x3F70101020000000
  %1498 = lshr i32 %1487, 16
  %1499 = and i32 %1498, 255
  %1500 = uitofp i32 %1499 to float
  %1501 = fmul fast float %1500, 0x3F70101020000000
  %1502 = add i32 %48, 236
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = lshr i32 %1504, 24
  %1506 = uitofp i32 %1505 to float
  %1507 = fmul fast float %1506, 0x3F70101020000000
  %1508 = and i32 %1504, 255
  %1509 = uitofp i32 %1508 to float
  %1510 = fmul fast float %1509, 0x3F70101020000000
  %1511 = lshr i32 %1504, 8
  %1512 = and i32 %1511, 255
  %1513 = uitofp i32 %1512 to float
  %1514 = fmul fast float %1513, 0x3F70101020000000
  %1515 = lshr i32 %1504, 16
  %1516 = and i32 %1515, 255
  %1517 = uitofp i32 %1516 to float
  %1518 = fmul fast float %1517, 0x3F70101020000000
  %1519 = bitcast float %1443 to i32
  %1520 = ashr i32 %1519, 1
  %1521 = sub nsw i32 1597463174, %1520
  %1522 = bitcast i32 %1521 to float
  %1523 = fmul fast float %1443, 5.000000e-01
  %1524 = fmul fast float %1522, %1522
  %1525 = fmul fast float %1524, %1523
  %1526 = fsub fast float 1.500000e+00, %1525
  %1527 = fmul fast float %1522, %1443
  %1528 = fmul fast float %1527, %1526
  %1529 = bitcast float %1444 to i32
  %1530 = ashr i32 %1529, 1
  %1531 = sub nsw i32 1597463174, %1530
  %1532 = bitcast i32 %1531 to float
  %1533 = fmul fast float %1444, 5.000000e-01
  %1534 = fmul fast float %1532, %1532
  %1535 = fmul fast float %1534, %1533
  %1536 = fsub fast float 1.500000e+00, %1535
  %1537 = fmul fast float %1532, %1444
  %1538 = fmul fast float %1537, %1536
  %1539 = bitcast float %1445 to i32
  %1540 = ashr i32 %1539, 1
  %1541 = sub nsw i32 1597463174, %1540
  %1542 = bitcast i32 %1541 to float
  %1543 = fmul fast float %1445, 5.000000e-01
  %1544 = fmul fast float %1542, %1542
  %1545 = fmul fast float %1544, %1543
  %1546 = fsub fast float 1.500000e+00, %1545
  %1547 = fmul fast float %1542, %1445
  %1548 = fmul fast float %1547, %1546
  %1549 = fsub fast float %1528, %1510
  %1550 = fsub fast float %1538, %1514
  %1551 = fsub fast float %1548, %1518
  %1552 = fmul fast float %1549, %1478
  %1553 = fmul fast float %1550, %1480
  %1554 = fmul fast float %1551, %1485
  %1555 = fadd fast float %1552, %1493
  %1556 = fadd fast float %1553, %1497
  %1557 = fadd fast float %1554, %1501
  %1558 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1559 = call float @dx.op.unary.f32(i32 7, float %1556)  ; Saturate(value)
  %1560 = call float @dx.op.unary.f32(i32 7, float %1557)  ; Saturate(value)
  %1561 = fmul fast float %1558, %1558
  %1562 = fmul fast float %1559, %1559
  %1563 = fmul fast float %1560, %1560
  %1564 = fsub fast float %1561, %1443
  %1565 = fsub fast float %1562, %1444
  %1566 = fsub fast float %1563, %1445
  %1567 = fmul fast float %1564, %1468
  %1568 = fmul fast float %1565, %1468
  %1569 = fmul fast float %1566, %1468
  %1570 = fadd fast float %1567, %1443
  %1571 = fadd fast float %1568, %1444
  %1572 = fadd fast float %1569, %1445
  %1573 = fadd fast float %1490, %1454
  %1574 = fsub fast float %1573, %1507
  %1575 = call float @dx.op.unary.f32(i32 7, float %1574)  ; Saturate(value)
  %1576 = fsub fast float %1575, %1454
  %1577 = fmul fast float %1576, %1468
  %1578 = fadd fast float %1577, %1454
  br label %1632

; <label>:1579                                    ; preds = %1467
  %1580 = and i32 %1470, 134217728
  %1581 = icmp eq i32 %1580, 0
  br i1 %1581, label %1616, label %1582

; <label>:1582                                    ; preds = %1579
  %1583 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %1584 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %1585 = call float @dx.op.unary.f32(i32 24, float %295)  ; Sqrt(value)
  %1586 = fadd fast float %1583, -5.000000e-01
  %1587 = fadd fast float %1584, -5.000000e-01
  %1588 = fadd fast float %1585, -5.000000e-01
  %1589 = fmul fast float %1586, %1468
  %1590 = fmul fast float %1587, %1468
  %1591 = fmul fast float %1588, %1468
  %1592 = fadd fast float %1589, 5.000000e-01
  %1593 = fadd fast float %1590, 5.000000e-01
  %1594 = fadd fast float %1591, 5.000000e-01
  %1595 = call float @dx.op.unary.f32(i32 24, float %1443)  ; Sqrt(value)
  %1596 = call float @dx.op.unary.f32(i32 24, float %1444)  ; Sqrt(value)
  %1597 = call float @dx.op.unary.f32(i32 24, float %1445)  ; Sqrt(value)
  %1598 = fmul fast float %1592, 2.000000e+00
  %1599 = fsub fast float 1.000000e+00, %1598
  %1600 = fmul fast float %1599, %1595
  %1601 = fadd fast float %1600, %1598
  %1602 = fmul fast float %1601, %1595
  %1603 = fmul fast float %1593, 2.000000e+00
  %1604 = fsub fast float 1.000000e+00, %1603
  %1605 = fmul fast float %1604, %1596
  %1606 = fadd fast float %1605, %1603
  %1607 = fmul fast float %1606, %1596
  %1608 = fmul fast float %1594, 2.000000e+00
  %1609 = fsub fast float 1.000000e+00, %1608
  %1610 = fmul fast float %1609, %1597
  %1611 = fadd fast float %1610, %1608
  %1612 = fmul fast float %1611, %1597
  %1613 = fmul fast float %1602, %1602
  %1614 = fmul fast float %1607, %1607
  %1615 = fmul fast float %1612, %1612
  br label %1632

; <label>:1616                                    ; preds = %1579
  %1617 = fmul fast float %287, %287
  %1618 = fmul fast float %291, %291
  %1619 = fmul fast float %295, %295
  %1620 = fadd fast float %1617, -1.000000e+00
  %1621 = fadd fast float %1618, -1.000000e+00
  %1622 = fadd fast float %1619, -1.000000e+00
  %1623 = fmul fast float %1468, %1620
  %1624 = fmul fast float %1468, %1621
  %1625 = fmul fast float %1468, %1622
  %1626 = fadd fast float %1623, 1.000000e+00
  %1627 = fadd fast float %1624, 1.000000e+00
  %1628 = fadd fast float %1625, 1.000000e+00
  %1629 = fmul fast float %1626, %1443
  %1630 = fmul fast float %1627, %1444
  %1631 = fmul fast float %1628, %1445
  br label %1632

; <label>:1632                                    ; preds = %1616, %1582, %1473, %1429
  %1633 = phi float [ %1578, %1473 ], [ %1454, %1582 ], [ %1454, %1616 ], [ 0x3FA23C0BE0000000, %1429 ]
  %1634 = phi float [ %1570, %1473 ], [ %1613, %1582 ], [ %1629, %1616 ], [ 1.000000e+00, %1429 ]
  %1635 = phi float [ %1571, %1473 ], [ %1614, %1582 ], [ %1630, %1616 ], [ 1.000000e+00, %1429 ]
  %1636 = phi float [ %1572, %1473 ], [ %1615, %1582 ], [ %1631, %1616 ], [ 1.000000e+00, %1429 ]
  %1637 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.i32 %1637, 1
  %1639 = and i32 %1638, 1
  %1640 = icmp ne i32 %1639, 0
  %1641 = add i32 %48, 356
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1641, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = and i32 %1643, 32
  %1645 = icmp ne i32 %1644, 0
  %1646 = and i1 %1640, %1645
  %1647 = select i1 %1646, float 1.000000e+00, float %1634
  %1648 = select i1 %1646, float 0x3FD3333340000000, float %1635
  %1649 = select i1 %1646, float 0x3FD3333340000000, float %1636
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = and i32 %1651, 32
  %1653 = icmp eq i32 %1652, 0
  br i1 %1653, label %1726, label %1654

; <label>:1654                                    ; preds = %1632
  %1655 = add i32 %48, 108
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1655, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = add i32 %48, 380
  %1659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1658, i32 undef)  ; BufferLoad(srv,index,wot)
  %1660 = extractvalue %dx.types.ResRet.i32 %1659, 0
  %1661 = add i32 %1660, 0
  %1662 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1661, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1663 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1662, %dx.types.Handle %88, float %1239, float %1240, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1664 = extractvalue %dx.types.ResRet.f32 %1663, 0
  %1665 = extractvalue %dx.types.ResRet.f32 %1663, 1
  %1666 = extractvalue %dx.types.ResRet.f32 %1663, 2
  %1667 = extractvalue %dx.types.ResRet.f32 %1663, 3
  %1668 = and i32 %1657, 255
  %1669 = uitofp i32 %1668 to float
  %1670 = lshr i32 %1657, 8
  %1671 = and i32 %1670, 255
  %1672 = uitofp i32 %1671 to float
  %1673 = lshr i32 %1657, 16
  %1674 = and i32 %1673, 255
  %1675 = uitofp i32 %1674 to float
  %1676 = fmul fast float %1675, 0x3F70101000000000
  %1677 = fmul fast float %1664, %1669
  %1678 = fadd fast float %1677, %1672
  %1679 = fmul fast float %1678, 0x3F70101000000000
  %1680 = fadd fast float %1665, -5.000000e-01
  %1681 = fadd fast float %1667, -5.000000e-01
  %1682 = fmul fast float %1680, %1676
  %1683 = fmul fast float %1681, %1676
  %1684 = fadd fast float %1682, 5.000000e-01
  %1685 = fadd fast float %1683, 5.000000e-01
  %1686 = fmul fast float %1684, 2.000000e+00
  %1687 = fadd fast float %1686, -1.000000e+00
  %1688 = fmul fast float %1685, 2.000000e+00
  %1689 = fadd fast float %1688, -1.000000e+00
  %1690 = fadd fast float %1687, %1689
  %1691 = fmul fast float %1690, 5.000000e-01
  %1692 = fsub fast float %1687, %1689
  %1693 = fmul fast float %1692, 5.000000e-01
  %1694 = call float @dx.op.unary.f32(i32 6, float %1691)  ; FAbs(value)
  %1695 = fsub fast float 1.000000e+00, %1694
  %1696 = call float @dx.op.unary.f32(i32 6, float %1693)  ; FAbs(value)
  %1697 = fsub fast float %1695, %1696
  %1698 = call float @dx.op.dot3.f32(i32 55, float %1691, float %1693, float %1697, float %1691, float %1693, float %1697)  ; Dot3(ax,ay,az,bx,by,bz)
  %1699 = call float @dx.op.unary.f32(i32 25, float %1698)  ; Rsqrt(value)
  %1700 = fmul fast float %1691, %1699
  %1701 = fmul fast float %1693, %1699
  %1702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1703 = extractvalue %dx.types.ResRet.i32 %1702, 0
  %1704 = and i32 %1703, 67108864
  %1705 = icmp eq i32 %1704, 0
  br i1 %1705, label %1722, label %1706

; <label>:1706                                    ; preds = %1654
  %1707 = add i32 %48, 296
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 65535
  %1711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1710)  ; LegacyF16ToF32(value)
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = and i32 %1713, 65535
  %1715 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1714)  ; LegacyF16ToF32(value)
  %1716 = lshr i32 %1709, 16
  %1717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1716)  ; LegacyF16ToF32(value)
  %1718 = fsub fast float %1679, %1717
  %1719 = fmul fast float %1718, %1711
  %1720 = fadd fast float %1719, %1715
  %1721 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  br label %1722

; <label>:1722                                    ; preds = %1706, %1654
  %1723 = phi float [ %1721, %1706 ], [ %1679, %1654 ]
  %1724 = call float @dx.op.dot2.f32(i32 54, float %1700, float %1701, float %1143, float %1144)  ; Dot2(ax,ay,bx,by)
  %1725 = call float @dx.op.dot2.f32(i32 54, float %1700, float %1701, float %1145, float %1146)  ; Dot2(ax,ay,bx,by)
  br label %1726

; <label>:1726                                    ; preds = %1722, %1632
  %1727 = phi float [ %1723, %1722 ], [ 0x3FD6666660000000, %1632 ]
  %1728 = phi float [ %1724, %1722 ], [ 0.000000e+00, %1632 ]
  %1729 = phi float [ %1725, %1722 ], [ 0.000000e+00, %1632 ]
  %1730 = phi float [ %1666, %1722 ], [ 1.000000e+00, %1632 ]
  %1731 = add i32 %48, 176
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = lshr i32 %1733, 22
  %1735 = shl nuw nsw i32 %1734, 5
  %1736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1735)  ; LegacyF16ToF32(value)
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = and i32 %1738, 64
  %1740 = icmp eq i32 %1739, 0
  br i1 %1740, label %1774, label %1741

; <label>:1741                                    ; preds = %1726
  %1742 = add i32 %48, 396
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = add i32 %1744, 0
  %1746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = and i32 %1748, 131072
  %1750 = icmp eq i32 %1749, 0
  %1751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1746, %dx.types.Handle %88, float %1239, float %1240, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1752 = extractvalue %dx.types.ResRet.f32 %1751, 0
  %1753 = extractvalue %dx.types.ResRet.f32 %1751, 1
  %1754 = extractvalue %dx.types.ResRet.f32 %1751, 2
  %1755 = fmul fast float %1752, %275
  %1756 = fmul fast float %1753, %278
  %1757 = fmul fast float %1754, %281
  br i1 %1750, label %1764, label %1758

; <label>:1758                                    ; preds = %1741
  %1759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1760 = extractvalue %dx.types.CBufRet.f32 %1759, 0
  %1761 = fmul fast float %1760, %1755
  %1762 = fmul fast float %1760, %1756
  %1763 = fmul fast float %1760, %1757
  br label %1764

; <label>:1764                                    ; preds = %1758, %1741
  %1765 = phi float [ %1761, %1758 ], [ %1755, %1741 ]
  %1766 = phi float [ %1762, %1758 ], [ %1756, %1741 ]
  %1767 = phi float [ %1763, %1758 ], [ %1757, %1741 ]
  %1768 = fmul fast float %1765, %1736
  %1769 = select i1 %216, float %1768, float %1765
  %1770 = call float @dx.op.dot3.f32(i32 55, float %1769, float %1766, float %1767, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1771 = select i1 %216, float 0.000000e+00, float %1765
  %1772 = select i1 %216, float %1770, float %1766
  %1773 = select i1 %216, float 0.000000e+00, float %1767
  br label %1774

; <label>:1774                                    ; preds = %1764, %1726
  %1775 = phi float [ %1771, %1764 ], [ 0.000000e+00, %1726 ]
  %1776 = phi float [ %1772, %1764 ], [ 0.000000e+00, %1726 ]
  %1777 = phi float [ %1773, %1764 ], [ 0.000000e+00, %1726 ]
  %1778 = add i32 %48, 112
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = and i32 %1780, 255
  %1782 = uitofp i32 %1781 to float
  %1783 = lshr i32 %1780, 8
  %1784 = and i32 %1783, 255
  %1785 = uitofp i32 %1784 to float
  %1786 = call float @dx.op.dot3.f32(i32 55, float %1647, float %1648, float %1649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1787 = fmul fast float %1785, %1786
  %1788 = fadd fast float %1787, %1782
  %1789 = fmul fast float %1788, 0x3F70101020000000
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  br i1 %1131, label %1791, label %1799

; <label>:1791                                    ; preds = %1774
  %1792 = fsub fast float 1.000000e+00, %1427
  %1793 = fmul fast float %1792, %1119
  %1794 = fmul fast float %1792, %1120
  %1795 = fmul fast float %1792, %1121
  %1796 = fmul fast float %1792, %1122
  %1797 = fmul fast float %1792, %1123
  %1798 = fmul fast float %1792, %1124
  br label %1799

; <label>:1799                                    ; preds = %1791, %1774
  %1800 = phi float [ %1793, %1791 ], [ %1119, %1774 ]
  %1801 = phi float [ %1794, %1791 ], [ %1120, %1774 ]
  %1802 = phi float [ %1795, %1791 ], [ %1121, %1774 ]
  %1803 = phi float [ %1796, %1791 ], [ %1122, %1774 ]
  %1804 = phi float [ %1797, %1791 ], [ %1123, %1774 ]
  %1805 = phi float [ %1798, %1791 ], [ %1124, %1774 ]
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = and i32 %1807, 3
  %1809 = icmp eq i32 %1808, 3
  br i1 %1809, label %1888, label %1810

; <label>:1810                                    ; preds = %1799
  %1811 = and i32 %1807, 16
  %1812 = icmp ne i32 %1811, 0
  %1813 = select i1 %1812, float %1427, float 0.000000e+00
  %1814 = icmp eq i32 %1808, 0
  br i1 %1814, label %1815, label %1843

; <label>:1815                                    ; preds = %1810
  %1816 = and i32 %1807, 64
  %1817 = icmp ne i32 %1816, 0
  %1818 = select i1 %1817, float %1427, float 0.000000e+00
  %1819 = fsub fast float %1647, %1800
  %1820 = fsub fast float %1648, %1801
  %1821 = fsub fast float %1649, %1802
  %1822 = fmul fast float %1813, %1819
  %1823 = fmul fast float %1813, %1820
  %1824 = fmul fast float %1813, %1821
  %1825 = fadd fast float %1822, %1800
  %1826 = fadd fast float %1823, %1801
  %1827 = fadd fast float %1824, %1802
  %1828 = fsub fast float %1633, %1125
  %1829 = fmul fast float %1813, %1828
  %1830 = fadd fast float %1829, %1125
  %1831 = fsub fast float %1775, %1803
  %1832 = fsub fast float %1776, %1804
  %1833 = fsub fast float %1777, %1805
  %1834 = fmul fast float %1818, %1831
  %1835 = fmul fast float %1818, %1832
  %1836 = fmul fast float %1818, %1833
  %1837 = fadd fast float %1834, %1803
  %1838 = fadd fast float %1835, %1804
  %1839 = fadd fast float %1836, %1805
  %1840 = fsub fast float %1790, %1129
  %1841 = fmul fast float %1813, %1840
  %1842 = fadd fast float %1841, %1129
  br label %1888

; <label>:1843                                    ; preds = %1810
  %1844 = icmp eq i32 %1808, 1
  br i1 %1844, label %1845, label %1858

; <label>:1845                                    ; preds = %1843
  %1846 = fadd fast float %1647, -1.000000e+00
  %1847 = fadd fast float %1648, -1.000000e+00
  %1848 = fadd fast float %1649, -1.000000e+00
  %1849 = fmul fast float %1813, %1846
  %1850 = fmul fast float %1813, %1847
  %1851 = fmul fast float %1813, %1848
  %1852 = fadd fast float %1849, 1.000000e+00
  %1853 = fadd fast float %1850, 1.000000e+00
  %1854 = fadd fast float %1851, 1.000000e+00
  %1855 = fmul fast float %1852, %1800
  %1856 = fmul fast float %1853, %1801
  %1857 = fmul fast float %1854, %1802
  br label %1888

; <label>:1858                                    ; preds = %1843
  %1859 = icmp eq i32 %1808, 2
  br i1 %1859, label %1860, label %1888

; <label>:1860                                    ; preds = %1858
  %1861 = call float @dx.op.unary.f32(i32 24, float %1647)  ; Sqrt(value)
  %1862 = call float @dx.op.unary.f32(i32 24, float %1648)  ; Sqrt(value)
  %1863 = call float @dx.op.unary.f32(i32 24, float %1649)  ; Sqrt(value)
  %1864 = fadd fast float %1861, -5.000000e-01
  %1865 = fadd fast float %1862, -5.000000e-01
  %1866 = fadd fast float %1863, -5.000000e-01
  %1867 = fmul fast float %1864, %1813
  %1868 = fmul fast float %1865, %1813
  %1869 = fmul fast float %1866, %1813
  %1870 = fadd fast float %1867, 5.000000e-01
  %1871 = fadd fast float %1868, 5.000000e-01
  %1872 = fadd fast float %1869, 5.000000e-01
  %1873 = fmul fast float %1870, 2.000000e+00
  %1874 = fsub fast float 1.000000e+00, %1873
  %1875 = fmul fast float %1874, %1800
  %1876 = fadd fast float %1875, %1873
  %1877 = fmul fast float %1876, %1800
  %1878 = fmul fast float %1871, 2.000000e+00
  %1879 = fsub fast float 1.000000e+00, %1878
  %1880 = fmul fast float %1879, %1801
  %1881 = fadd fast float %1880, %1878
  %1882 = fmul fast float %1881, %1801
  %1883 = fmul fast float %1872, 2.000000e+00
  %1884 = fsub fast float 1.000000e+00, %1883
  %1885 = fmul fast float %1884, %1802
  %1886 = fadd fast float %1885, %1883
  %1887 = fmul fast float %1886, %1802
  br label %1888

; <label>:1888                                    ; preds = %1860, %1858, %1845, %1815, %1799
  %1889 = phi float [ %1800, %1799 ], [ %1877, %1860 ], [ %1800, %1858 ], [ %1855, %1845 ], [ %1825, %1815 ]
  %1890 = phi float [ %1801, %1799 ], [ %1882, %1860 ], [ %1801, %1858 ], [ %1856, %1845 ], [ %1826, %1815 ]
  %1891 = phi float [ %1802, %1799 ], [ %1887, %1860 ], [ %1802, %1858 ], [ %1857, %1845 ], [ %1827, %1815 ]
  %1892 = phi float [ %1803, %1799 ], [ %1803, %1860 ], [ %1803, %1858 ], [ %1803, %1845 ], [ %1837, %1815 ]
  %1893 = phi float [ %1804, %1799 ], [ %1804, %1860 ], [ %1804, %1858 ], [ %1804, %1845 ], [ %1838, %1815 ]
  %1894 = phi float [ %1805, %1799 ], [ %1805, %1860 ], [ %1805, %1858 ], [ %1805, %1845 ], [ %1839, %1815 ]
  %1895 = phi float [ %1125, %1799 ], [ %1125, %1860 ], [ %1125, %1858 ], [ %1125, %1845 ], [ %1830, %1815 ]
  %1896 = phi float [ %1129, %1799 ], [ %1129, %1860 ], [ %1129, %1858 ], [ %1129, %1845 ], [ %1842, %1815 ]
  %1897 = and i32 %1807, 12
  %1898 = icmp eq i32 %1897, 12
  br i1 %1898, label %1971, label %1899

; <label>:1899                                    ; preds = %1888
  %1900 = and i32 %1807, 2097184
  %1901 = icmp eq i32 %1900, 2097184
  %1902 = select i1 %1901, float %1427, float 0.000000e+00
  %1903 = and i32 %1807, 4194336
  %1904 = icmp eq i32 %1903, 4194336
  %1905 = select i1 %1904, float %1427, float 0.000000e+00
  %1906 = and i32 %1807, 8388640
  %1907 = icmp eq i32 %1906, 8388640
  %1908 = select i1 %1907, float %1427, float 0.000000e+00
  %1909 = icmp eq i32 %1897, 0
  br i1 %1909, label %1910, label %1923

; <label>:1910                                    ; preds = %1899
  %1911 = fsub fast float %1728, %1117
  %1912 = fsub fast float %1729, %1118
  %1913 = fmul fast float %1902, %1911
  %1914 = fmul fast float %1902, %1912
  %1915 = fadd fast float %1913, %1117
  %1916 = fadd fast float %1914, %1118
  %1917 = fsub fast float %1730, %1128
  %1918 = fmul fast float %1905, %1917
  %1919 = fadd fast float %1918, %1128
  %1920 = fsub fast float %1727, %1127
  %1921 = fmul fast float %1908, %1920
  %1922 = fadd fast float %1921, %1127
  br label %1971

; <label>:1923                                    ; preds = %1899
  %1924 = icmp eq i32 %1897, 4
  br i1 %1924, label %1925, label %1957

; <label>:1925                                    ; preds = %1923
  %1926 = fmul fast float %1902, %1728
  %1927 = fmul fast float %1902, %1729
  %1928 = fadd fast float %1926, %1117
  %1929 = fadd fast float %1927, %1118
  %1930 = call float @dx.op.binary.f32(i32 36, float %1128, float %1730)  ; FMin(a,b)
  %1931 = fsub fast float %1930, %1128
  %1932 = fmul fast float %1931, %1905
  %1933 = fadd fast float %1932, %1128
  %1934 = fadd fast float %1727, %1127
  %1935 = fmul fast float %1934, 0x3FF337FAE0000000
  %1936 = fmul fast float %1127, %1127
  %1937 = fmul fast float %1727, %1727
  %1938 = fadd fast float %1937, %1936
  %1939 = fmul fast float %1938, 0x3FE5152B00000000
  %1940 = fmul fast float %1127, 0xBFCC1F85E0000000
  %1941 = fmul fast float %1940, %1727
  %1942 = fadd fast float %1941, 0xBFE1363700000000
  %1943 = fadd fast float %1942, %1935
  %1944 = fsub fast float %1943, %1939
  %1945 = fmul fast float %1934, 0x3FBA6F0D00000000
  %1946 = fmul fast float %1938, 0x3FD0432880000000
  %1947 = fmul fast float %1127, 0xBFEF110800000000
  %1948 = fmul fast float %1947, %1727
  %1949 = fadd fast float %1948, 1.000000e+00
  %1950 = fsub fast float %1949, %1945
  %1951 = fadd fast float %1950, %1946
  %1952 = fdiv fast float %1944, %1951
  %1953 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  %1954 = fsub fast float %1953, %1127
  %1955 = fmul fast float %1954, %1908
  %1956 = fadd fast float %1955, %1127
  br label %1971

; <label>:1957                                    ; preds = %1923
  %1958 = icmp eq i32 %1897, 8
  br i1 %1958, label %1959, label %1971

; <label>:1959                                    ; preds = %1957
  %1960 = fmul fast float %1902, %1728
  %1961 = fmul fast float %1902, %1729
  %1962 = fadd fast float %1960, %1117
  %1963 = fadd fast float %1961, %1118
  %1964 = call float @dx.op.binary.f32(i32 36, float %1128, float %1730)  ; FMin(a,b)
  %1965 = fsub fast float %1964, %1128
  %1966 = fmul fast float %1965, %1905
  %1967 = fadd fast float %1966, %1128
  %1968 = fsub fast float %1727, %1127
  %1969 = fmul fast float %1908, %1968
  %1970 = fadd fast float %1969, %1127
  br label %1971

; <label>:1971                                    ; preds = %1959, %1957, %1925, %1910, %1888, %1426, %1130, %1116
  %1972 = phi float [ %1117, %1888 ], [ %1117, %1426 ], [ %1117, %1116 ], [ %1962, %1959 ], [ %1117, %1957 ], [ %1928, %1925 ], [ %1915, %1910 ], [ %1117, %1130 ]
  %1973 = phi float [ %1118, %1888 ], [ %1118, %1426 ], [ %1118, %1116 ], [ %1963, %1959 ], [ %1118, %1957 ], [ %1929, %1925 ], [ %1916, %1910 ], [ %1118, %1130 ]
  %1974 = phi float [ %1889, %1888 ], [ %1119, %1426 ], [ %1119, %1116 ], [ %1889, %1959 ], [ %1889, %1957 ], [ %1889, %1925 ], [ %1889, %1910 ], [ %1119, %1130 ]
  %1975 = phi float [ %1890, %1888 ], [ %1120, %1426 ], [ %1120, %1116 ], [ %1890, %1959 ], [ %1890, %1957 ], [ %1890, %1925 ], [ %1890, %1910 ], [ %1120, %1130 ]
  %1976 = phi float [ %1891, %1888 ], [ %1121, %1426 ], [ %1121, %1116 ], [ %1891, %1959 ], [ %1891, %1957 ], [ %1891, %1925 ], [ %1891, %1910 ], [ %1121, %1130 ]
  %1977 = phi float [ %1892, %1888 ], [ %1122, %1426 ], [ %1122, %1116 ], [ %1892, %1959 ], [ %1892, %1957 ], [ %1892, %1925 ], [ %1892, %1910 ], [ %1122, %1130 ]
  %1978 = phi float [ %1893, %1888 ], [ %1123, %1426 ], [ %1123, %1116 ], [ %1893, %1959 ], [ %1893, %1957 ], [ %1893, %1925 ], [ %1893, %1910 ], [ %1123, %1130 ]
  %1979 = phi float [ %1894, %1888 ], [ %1124, %1426 ], [ %1124, %1116 ], [ %1894, %1959 ], [ %1894, %1957 ], [ %1894, %1925 ], [ %1894, %1910 ], [ %1124, %1130 ]
  %1980 = phi float [ %1895, %1888 ], [ %1125, %1426 ], [ %1125, %1116 ], [ %1895, %1959 ], [ %1895, %1957 ], [ %1895, %1925 ], [ %1895, %1910 ], [ %1125, %1130 ]
  %1981 = phi float [ %1127, %1888 ], [ %1127, %1426 ], [ %1127, %1116 ], [ %1970, %1959 ], [ %1127, %1957 ], [ %1956, %1925 ], [ %1922, %1910 ], [ %1127, %1130 ]
  %1982 = phi float [ %1128, %1888 ], [ %1128, %1426 ], [ %1128, %1116 ], [ %1967, %1959 ], [ %1128, %1957 ], [ %1933, %1925 ], [ %1919, %1910 ], [ %1128, %1130 ]
  %1983 = phi float [ %1896, %1888 ], [ %1129, %1426 ], [ %1129, %1116 ], [ %1896, %1959 ], [ %1896, %1957 ], [ %1896, %1925 ], [ %1896, %1910 ], [ %1129, %1130 ]
  br i1 %402, label %2825, label %1984

; <label>:1984                                    ; preds = %1971
  %1985 = icmp ult i32 %458, 3
  %1986 = add i32 %48, 56
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = add i32 %48, 60
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = or i32 %1991, %1988
  %1993 = icmp eq i32 %1992, 0
  br i1 %1993, label %2825, label %1994

; <label>:1994                                    ; preds = %1984
  %1995 = and i32 %1988, 262144
  %1996 = icmp ne i32 %1995, 0
  %1997 = select i1 %1996, float %51, float 1.000000e+00
  %1998 = select i1 %1996, float %52, float 0.000000e+00
  %1999 = select i1 %1996, float %53, float 0.000000e+00
  %2000 = select i1 %1996, float %54, float 1.000000e+00
  %2001 = select i1 %1996, float %55, float %71
  %2002 = select i1 %1996, float %56, float %72
  %2003 = add i32 %48, 316
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = lshr i32 %2005, 16
  %2007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2006)  ; LegacyF16ToF32(value)
  %2008 = fmul fast float %2007, 0x3F50624DE0000000
  %2009 = add i32 %48, 120
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = lshr i32 %2011, 16
  %2013 = and i32 %2012, 255
  %2014 = lshr i32 %2011, 24
  %2015 = add i32 %48, 324
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = and i32 %2017, 65535
  %2019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2018)  ; LegacyF16ToF32(value)
  %2020 = lshr i32 %2017, 16
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = add i32 %48, 64
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = lshr i32 %2024, 22
  %2026 = shl nuw nsw i32 %2025, 5
  %2027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2026)  ; LegacyF16ToF32(value)
  %2028 = shl i32 %2024, 4
  %2029 = and i32 %2028, 32752
  %2030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2029)  ; LegacyF16ToF32(value)
  %2031 = lshr i32 %2024, 7
  %2032 = and i32 %2031, 32752
  %2033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2032)  ; LegacyF16ToF32(value)
  %2034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2035 = extractvalue %dx.types.CBufRet.f32 %2034, 3
  %2036 = fmul fast float %2035, 1.000000e+03
  %2037 = fmul fast float %352, %2036
  %2038 = call float @dx.op.unary.f32(i32 22, float %2037)  ; Frc(value)
  %2039 = fadd fast float %2038, %342
  %2040 = fmul fast float %353, %2036
  %2041 = call float @dx.op.unary.f32(i32 22, float %2040)  ; Frc(value)
  %2042 = fadd fast float %2041, %344
  %2043 = fmul fast float %2008, %2036
  %2044 = call float @dx.op.unary.f32(i32 22, float %2043)  ; Frc(value)
  %2045 = fmul fast float %2044, 0x401921FB60000000
  %2046 = fadd fast float %2045, %2027
  %2047 = call float @dx.op.unary.f32(i32 13, float %2046)  ; Sin(value)
  %2048 = call float @dx.op.unary.f32(i32 12, float %2046)  ; Cos(value)
  %2049 = fsub fast float -0.000000e+00, %2047
  %2050 = fadd fast float %2001, -5.000000e-01
  %2051 = fadd fast float %2002, -5.000000e-01
  %2052 = fmul fast float %2019, %2050
  %2053 = fmul fast float %2021, %2051
  %2054 = fadd fast float %2052, 5.000000e-01
  %2055 = fadd fast float %2053, 5.000000e-01
  %2056 = fmul fast float %2030, %2054
  %2057 = fmul fast float %2033, %2055
  %2058 = fmul fast float %2048, %2056
  %2059 = call float @dx.op.tertiary.f32(i32 46, float %2049, float %2057, float %2058)  ; FMad(a,b,c)
  %2060 = fmul fast float %2047, %2056
  %2061 = call float @dx.op.tertiary.f32(i32 46, float %2048, float %2057, float %2060)  ; FMad(a,b,c)
  %2062 = fadd fast float %2039, %2059
  %2063 = fadd fast float %2042, %2061
  %2064 = icmp ugt i32 %2013, 1
  %2065 = icmp ugt i32 %2011, 33554431
  %2066 = or i1 %2065, %2064
  br i1 %2066, label %2067, label %2092

; <label>:2067                                    ; preds = %1994
  %2068 = add i32 %48, 260
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = lshr i32 %2070, 16
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = fmul fast float %2035, %2072
  %2074 = call float @dx.op.unary.f32(i32 22, float %2073)  ; Frc(value)
  %2075 = mul nuw nsw i32 %2013, %2014
  %2076 = uitofp i32 %2075 to float
  %2077 = fmul fast float %2074, %2076
  %2078 = call float @dx.op.unary.f32(i32 27, float %2077)  ; Round_ni(value)
  %2079 = fptoui float %2078 to i32
  %2080 = urem i32 %2079, %2013
  %2081 = udiv i32 %2079, %2014
  %2082 = call float @dx.op.unary.f32(i32 22, float %2062)  ; Frc(value)
  %2083 = call float @dx.op.unary.f32(i32 22, float %2063)  ; Frc(value)
  %2084 = uitofp i32 %2080 to float
  %2085 = uitofp i32 %2081 to float
  %2086 = fadd fast float %2082, %2084
  %2087 = fadd fast float %2083, %2085
  %2088 = uitofp i32 %2013 to float
  %2089 = uitofp i32 %2014 to float
  %2090 = fdiv fast float %2086, %2088
  %2091 = fdiv fast float %2087, %2089
  br label %2092

; <label>:2092                                    ; preds = %2067, %1994
  %2093 = phi float [ %2090, %2067 ], [ %2062, %1994 ]
  %2094 = phi float [ %2091, %2067 ], [ %2063, %1994 ]
  %2095 = and i32 %1988, 16777216
  %2096 = icmp eq i32 %2095, 0
  br i1 %2096, label %2206, label %2097

; <label>:2097                                    ; preds = %2092
  %2098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2099 = extractvalue %dx.types.CBufRet.f32 %2098, 0
  %2100 = extractvalue %dx.types.CBufRet.f32 %2098, 1
  %2101 = extractvalue %dx.types.CBufRet.f32 %2098, 2
  %2102 = fadd fast float %2099, %155
  %2103 = fadd fast float %2100, %156
  %2104 = fadd fast float %2101, %157
  %2105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2106 = extractvalue %dx.types.CBufRet.f32 %2105, 0
  %2107 = call float @dx.op.unary.f32(i32 7, float %2106)  ; Saturate(value)
  %2108 = icmp eq i32 %49, 65535
  br i1 %2108, label %2203, label %2109

; <label>:2109                                    ; preds = %2097
  %2110 = lshr i32 %49, 1
  %2111 = shl i32 %2110, 2
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = and i32 %49, 1
  %2115 = icmp ne i32 %2114, 0
  %2116 = lshr i32 %2113, 16
  %2117 = and i32 %2113, 65535
  %2118 = select i1 %2115, i32 %2116, i32 %2117
  %2119 = icmp eq i32 %2118, 65535
  br i1 %2119, label %2199, label %2120

; <label>:2120                                    ; preds = %2109
  %2121 = mul nuw nsw i32 %2118, 40
  %2122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2121, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.f32 %2122, 0
  %2124 = extractvalue %dx.types.ResRet.f32 %2122, 1
  %2125 = extractvalue %dx.types.ResRet.f32 %2122, 2
  %2126 = add nuw nsw i32 %2121, 12
  %2127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.f32 %2127, 0
  %2129 = extractvalue %dx.types.ResRet.f32 %2127, 1
  %2130 = extractvalue %dx.types.ResRet.f32 %2127, 2
  %2131 = add nuw nsw i32 %2121, 24
  %2132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.f32 %2132, 0
  %2134 = extractvalue %dx.types.ResRet.f32 %2132, 1
  %2135 = extractvalue %dx.types.ResRet.f32 %2132, 2
  %2136 = add nuw nsw i32 %2121, 36
  %2137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.f32 %2137, 0
  %2139 = fsub fast float %2102, %2123
  %2140 = fsub fast float %2103, %2124
  %2141 = fsub fast float %2104, %2125
  %2142 = fmul fast float %2138, %2139
  %2143 = fmul fast float %2138, %2140
  %2144 = fmul fast float %2138, %2141
  %2145 = call float @dx.op.unary.f32(i32 27, float %2142)  ; Round_ni(value)
  %2146 = call float @dx.op.unary.f32(i32 27, float %2143)  ; Round_ni(value)
  %2147 = call float @dx.op.unary.f32(i32 27, float %2144)  ; Round_ni(value)
  %2148 = fadd fast float %2145, 5.000000e-01
  %2149 = fadd fast float %2146, 5.000000e-01
  %2150 = fadd fast float %2147, 5.000000e-01
  %2151 = fmul fast float %2148, %2128
  %2152 = fmul fast float %2149, %2129
  %2153 = fmul fast float %2150, %2130
  %2154 = shl i32 %49, 2
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = add i32 %2156, 0
  %2158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2159 = call float @dx.op.unary.f32(i32 22, float %2151)  ; Frc(value)
  %2160 = call float @dx.op.unary.f32(i32 22, float %2152)  ; Frc(value)
  %2161 = call float @dx.op.unary.f32(i32 22, float %2153)  ; Frc(value)
  %2162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2158, %dx.types.Handle %43, float %2159, float %2160, float %2161, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2163 = extractvalue %dx.types.ResRet.f32 %2162, 0
  %2164 = extractvalue %dx.types.ResRet.f32 %2162, 1
  %2165 = extractvalue %dx.types.ResRet.f32 %2162, 2
  %2166 = fmul fast float %2163, 1.023000e+03
  %2167 = fmul fast float %2164, 1.023000e+03
  %2168 = fmul fast float %2165, 1.023000e+03
  %2169 = fadd fast float %2166, 5.000000e-01
  %2170 = fadd fast float %2167, 5.000000e-01
  %2171 = fadd fast float %2168, 5.000000e-01
  %2172 = call float @dx.op.unary.f32(i32 27, float %2169)  ; Round_ni(value)
  %2173 = call float @dx.op.unary.f32(i32 27, float %2170)  ; Round_ni(value)
  %2174 = call float @dx.op.unary.f32(i32 27, float %2171)  ; Round_ni(value)
  %2175 = fsub fast float %2142, %2145
  %2176 = fsub fast float %2143, %2146
  %2177 = fsub fast float %2144, %2147
  %2178 = fmul fast float %2175, 7.500000e-01
  %2179 = fmul fast float %2176, 7.500000e-01
  %2180 = fmul fast float %2177, 7.500000e-01
  %2181 = fadd fast float %2145, 1.250000e-01
  %2182 = fadd fast float %2181, %2178
  %2183 = fadd fast float %2182, %2172
  %2184 = fadd fast float %2146, 1.250000e-01
  %2185 = fadd fast float %2184, %2179
  %2186 = fadd fast float %2185, %2173
  %2187 = fadd fast float %2147, 1.250000e-01
  %2188 = fadd fast float %2187, %2180
  %2189 = fadd fast float %2188, %2174
  %2190 = fmul fast float %2183, %2133
  %2191 = fmul fast float %2186, %2134
  %2192 = fmul fast float %2189, %2135
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = add i32 %2194, 0
  %2196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2197 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2196, %dx.types.Handle %41, float %2190, float %2191, float %2192, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2198 = extractvalue %dx.types.ResRet.f32 %2197, 0
  br label %2199

; <label>:2199                                    ; preds = %2120, %2109
  %2200 = phi float [ %2198, %2120 ], [ -1.000000e+00, %2109 ]
  %2201 = fadd fast float %2200, %2107
  %2202 = call float @dx.op.unary.f32(i32 7, float %2201)  ; Saturate(value)
  br label %2203

; <label>:2203                                    ; preds = %2199, %2097
  %2204 = phi float [ %2202, %2199 ], [ %2107, %2097 ]
  %2205 = fmul fast float %2204, %454
  br label %2206

; <label>:2206                                    ; preds = %2203, %2092
  %2207 = phi float [ %2205, %2203 ], [ %454, %2092 ]
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = and i32 %2209, 256
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2258, label %2212

; <label>:2212                                    ; preds = %2206
  %2213 = add i32 %48, 432
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = add i32 %2215, 0
  %2217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2217, %dx.types.Handle %89, float %2093, float %2094, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2219 = extractvalue %dx.types.ResRet.f32 %2218, 0
  %2220 = add i32 %48, 132
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = shl i32 %2222, 4
  %2224 = and i32 %2223, 32752
  %2225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2224)  ; LegacyF16ToF32(value)
  %2226 = lshr i32 %2222, 7
  %2227 = and i32 %2226, 32752
  %2228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2227)  ; LegacyF16ToF32(value)
  %2229 = fsub fast float 1.000000e+00, %2207
  %2230 = call float @dx.op.binary.f32(i32 35, float %2229, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2231 = bitcast float %2207 to i32
  %2232 = sitofp i32 %2231 to float
  %2233 = fadd fast float %2232, 0xC1CFBF8940000000
  %2234 = fmul fast float %2228, %2233
  %2235 = fadd fast float %2234, 0x41CFBF8940000000
  %2236 = fptosi float %2235 to i32
  %2237 = bitcast i32 %2236 to float
  %2238 = bitcast float %2230 to i32
  %2239 = sitofp i32 %2238 to float
  %2240 = fadd fast float %2239, 0xC1CFBF8940000000
  %2241 = fmul fast float %2240, %2228
  %2242 = fadd fast float %2241, 0x41CFBF8940000000
  %2243 = fptosi float %2242 to i32
  %2244 = bitcast i32 %2243 to float
  %2245 = fmul fast float %2237, %2225
  %2246 = fmul fast float %2244, %2225
  %2247 = fsub fast float %2230, %2245
  %2248 = fadd fast float %2246, %2230
  %2249 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  %2250 = call float @dx.op.unary.f32(i32 7, float %2248)  ; Saturate(value)
  %2251 = fsub fast float %2219, %2249
  %2252 = fsub fast float %2250, %2249
  %2253 = bitcast float %2252 to i32
  %2254 = sub nsw i32 2129859010, %2253
  %2255 = bitcast i32 %2254 to float
  %2256 = fmul fast float %2255, %2251
  %2257 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  br label %2258

; <label>:2258                                    ; preds = %2212, %2206
  %2259 = phi float [ %2257, %2212 ], [ %2207, %2206 ]
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = and i32 %2261, 128
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2280, label %2264

; <label>:2264                                    ; preds = %2258
  %2265 = add i32 %48, 416
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = add i32 %2267, 0
  %2269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2269, %dx.types.Handle %89, float %2093, float %2094, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2271 = extractvalue %dx.types.ResRet.f32 %2270, 0
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 524288
  %2275 = icmp ne i32 %2274, 0
  %2276 = fcmp fast ogt float %2271, 0x3FE0101020000000
  %2277 = select i1 %2276, float 1.000000e+00, float 0.000000e+00
  %2278 = select i1 %2275, float %2277, float %2271
  %2279 = fmul fast float %2278, %2259
  br label %2280

; <label>:2280                                    ; preds = %2264, %2258
  %2281 = phi float [ %2279, %2264 ], [ %2259, %2258 ]
  %2282 = fcmp fast ult float %2281, 0x3F70101020000000
  br i1 %2282, label %2825, label %2283

; <label>:2283                                    ; preds = %2280
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 16
  %2287 = icmp eq i32 %2286, 0
  br i1 %2287, label %2486, label %2288

; <label>:2288                                    ; preds = %2283
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = add i32 %48, 368
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = add i32 %2293, 0
  %2295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2294, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2296 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2295, %dx.types.Handle %88, float %2093, float %2094, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2297 = extractvalue %dx.types.ResRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.ResRet.f32 %2296, 1
  %2299 = extractvalue %dx.types.ResRet.f32 %2296, 2
  %2300 = extractvalue %dx.types.ResRet.f32 %2296, 3
  %2301 = and i32 %2290, 255
  %2302 = uitofp i32 %2301 to float
  %2303 = lshr i32 %2290, 8
  %2304 = and i32 %2303, 255
  %2305 = uitofp i32 %2304 to float
  %2306 = fmul fast float %2300, %2302
  %2307 = fadd fast float %2306, %2305
  %2308 = fmul fast float %2307, 0x3F70101000000000
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = and i32 %2310, 512
  %2312 = icmp eq i32 %2311, 0
  br i1 %2312, label %2321, label %2313

; <label>:2313                                    ; preds = %2288
  %2314 = add i32 %48, 448
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2314, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = add i32 %2316, 0
  %2318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2317, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2319 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2318, %dx.types.Handle %89, float %2093, float %2094, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2320 = extractvalue %dx.types.ResRet.f32 %2319, 0
  br label %2321

; <label>:2321                                    ; preds = %2313, %2288
  %2322 = phi float [ %2320, %2313 ], [ 1.000000e+00, %2288 ]
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = and i32 %2324, 33554432
  %2326 = icmp eq i32 %2325, 0
  br i1 %2326, label %2433, label %2327

; <label>:2327                                    ; preds = %2321
  %2328 = add i32 %48, 256
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = and i32 %2330, 65535
  %2332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2331)  ; LegacyF16ToF32(value)
  %2333 = lshr i32 %2330, 16
  %2334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2333)  ; LegacyF16ToF32(value)
  %2335 = add i32 %48, 260
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 65535
  %2339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2338)  ; LegacyF16ToF32(value)
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = lshr i32 %2341, 24
  %2343 = uitofp i32 %2342 to float
  %2344 = fmul fast float %2343, 0x3F70101020000000
  %2345 = and i32 %2341, 255
  %2346 = uitofp i32 %2345 to float
  %2347 = fmul fast float %2346, 0x3F70101020000000
  %2348 = lshr i32 %2341, 8
  %2349 = and i32 %2348, 255
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2350, 0x3F70101020000000
  %2352 = lshr i32 %2341, 16
  %2353 = and i32 %2352, 255
  %2354 = uitofp i32 %2353 to float
  %2355 = fmul fast float %2354, 0x3F70101020000000
  %2356 = add i32 %48, 252
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2356, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = lshr i32 %2358, 24
  %2360 = uitofp i32 %2359 to float
  %2361 = fmul fast float %2360, 0x3F70101020000000
  %2362 = and i32 %2358, 255
  %2363 = uitofp i32 %2362 to float
  %2364 = fmul fast float %2363, 0x3F70101020000000
  %2365 = lshr i32 %2358, 8
  %2366 = and i32 %2365, 255
  %2367 = uitofp i32 %2366 to float
  %2368 = fmul fast float %2367, 0x3F70101020000000
  %2369 = lshr i32 %2358, 16
  %2370 = and i32 %2369, 255
  %2371 = uitofp i32 %2370 to float
  %2372 = fmul fast float %2371, 0x3F70101020000000
  %2373 = bitcast float %2297 to i32
  %2374 = ashr i32 %2373, 1
  %2375 = sub nsw i32 1597463174, %2374
  %2376 = bitcast i32 %2375 to float
  %2377 = fmul fast float %2297, 5.000000e-01
  %2378 = fmul fast float %2376, %2376
  %2379 = fmul fast float %2378, %2377
  %2380 = fsub fast float 1.500000e+00, %2379
  %2381 = fmul fast float %2376, %2297
  %2382 = fmul fast float %2381, %2380
  %2383 = bitcast float %2298 to i32
  %2384 = ashr i32 %2383, 1
  %2385 = sub nsw i32 1597463174, %2384
  %2386 = bitcast i32 %2385 to float
  %2387 = fmul fast float %2298, 5.000000e-01
  %2388 = fmul fast float %2386, %2386
  %2389 = fmul fast float %2388, %2387
  %2390 = fsub fast float 1.500000e+00, %2389
  %2391 = fmul fast float %2386, %2298
  %2392 = fmul fast float %2391, %2390
  %2393 = bitcast float %2299 to i32
  %2394 = ashr i32 %2393, 1
  %2395 = sub nsw i32 1597463174, %2394
  %2396 = bitcast i32 %2395 to float
  %2397 = fmul fast float %2299, 5.000000e-01
  %2398 = fmul fast float %2396, %2396
  %2399 = fmul fast float %2398, %2397
  %2400 = fsub fast float 1.500000e+00, %2399
  %2401 = fmul fast float %2396, %2299
  %2402 = fmul fast float %2401, %2400
  %2403 = fsub fast float %2382, %2364
  %2404 = fsub fast float %2392, %2368
  %2405 = fsub fast float %2402, %2372
  %2406 = fmul fast float %2403, %2332
  %2407 = fmul fast float %2404, %2334
  %2408 = fmul fast float %2405, %2339
  %2409 = fadd fast float %2406, %2347
  %2410 = fadd fast float %2407, %2351
  %2411 = fadd fast float %2408, %2355
  %2412 = call float @dx.op.unary.f32(i32 7, float %2409)  ; Saturate(value)
  %2413 = call float @dx.op.unary.f32(i32 7, float %2410)  ; Saturate(value)
  %2414 = call float @dx.op.unary.f32(i32 7, float %2411)  ; Saturate(value)
  %2415 = fmul fast float %2412, %2412
  %2416 = fmul fast float %2413, %2413
  %2417 = fmul fast float %2414, %2414
  %2418 = fsub fast float %2415, %2297
  %2419 = fsub fast float %2416, %2298
  %2420 = fsub fast float %2417, %2299
  %2421 = fmul fast float %2418, %2322
  %2422 = fmul fast float %2419, %2322
  %2423 = fmul fast float %2420, %2322
  %2424 = fadd fast float %2421, %2297
  %2425 = fadd fast float %2422, %2298
  %2426 = fadd fast float %2423, %2299
  %2427 = fadd fast float %2344, %2308
  %2428 = fsub fast float %2427, %2361
  %2429 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2430 = fsub fast float %2429, %2308
  %2431 = fmul fast float %2430, %2322
  %2432 = fadd fast float %2431, %2308
  br label %2486

; <label>:2433                                    ; preds = %2321
  %2434 = and i32 %2324, 134217728
  %2435 = icmp eq i32 %2434, 0
  br i1 %2435, label %2470, label %2436

; <label>:2436                                    ; preds = %2433
  %2437 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %2438 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %2439 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %2440 = fadd fast float %2437, -5.000000e-01
  %2441 = fadd fast float %2438, -5.000000e-01
  %2442 = fadd fast float %2439, -5.000000e-01
  %2443 = fmul fast float %2440, %2322
  %2444 = fmul fast float %2441, %2322
  %2445 = fmul fast float %2442, %2322
  %2446 = fadd fast float %2443, 5.000000e-01
  %2447 = fadd fast float %2444, 5.000000e-01
  %2448 = fadd fast float %2445, 5.000000e-01
  %2449 = call float @dx.op.unary.f32(i32 24, float %2297)  ; Sqrt(value)
  %2450 = call float @dx.op.unary.f32(i32 24, float %2298)  ; Sqrt(value)
  %2451 = call float @dx.op.unary.f32(i32 24, float %2299)  ; Sqrt(value)
  %2452 = fmul fast float %2446, 2.000000e+00
  %2453 = fsub fast float 1.000000e+00, %2452
  %2454 = fmul fast float %2453, %2449
  %2455 = fadd fast float %2454, %2452
  %2456 = fmul fast float %2455, %2449
  %2457 = fmul fast float %2447, 2.000000e+00
  %2458 = fsub fast float 1.000000e+00, %2457
  %2459 = fmul fast float %2458, %2450
  %2460 = fadd fast float %2459, %2457
  %2461 = fmul fast float %2460, %2450
  %2462 = fmul fast float %2448, 2.000000e+00
  %2463 = fsub fast float 1.000000e+00, %2462
  %2464 = fmul fast float %2463, %2451
  %2465 = fadd fast float %2464, %2462
  %2466 = fmul fast float %2465, %2451
  %2467 = fmul fast float %2456, %2456
  %2468 = fmul fast float %2461, %2461
  %2469 = fmul fast float %2466, %2466
  br label %2486

; <label>:2470                                    ; preds = %2433
  %2471 = fmul fast float %329, %329
  %2472 = fmul fast float %333, %333
  %2473 = fmul fast float %337, %337
  %2474 = fadd fast float %2471, -1.000000e+00
  %2475 = fadd fast float %2472, -1.000000e+00
  %2476 = fadd fast float %2473, -1.000000e+00
  %2477 = fmul fast float %2322, %2474
  %2478 = fmul fast float %2322, %2475
  %2479 = fmul fast float %2322, %2476
  %2480 = fadd fast float %2477, 1.000000e+00
  %2481 = fadd fast float %2478, 1.000000e+00
  %2482 = fadd fast float %2479, 1.000000e+00
  %2483 = fmul fast float %2480, %2297
  %2484 = fmul fast float %2481, %2298
  %2485 = fmul fast float %2482, %2299
  br label %2486

; <label>:2486                                    ; preds = %2470, %2436, %2327, %2283
  %2487 = phi float [ %2432, %2327 ], [ %2308, %2436 ], [ %2308, %2470 ], [ 0x3FA23C0BE0000000, %2283 ]
  %2488 = phi float [ %2424, %2327 ], [ %2467, %2436 ], [ %2483, %2470 ], [ 1.000000e+00, %2283 ]
  %2489 = phi float [ %2425, %2327 ], [ %2468, %2436 ], [ %2484, %2470 ], [ 1.000000e+00, %2283 ]
  %2490 = phi float [ %2426, %2327 ], [ %2469, %2436 ], [ %2485, %2470 ], [ 1.000000e+00, %2283 ]
  %2491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2492 = extractvalue %dx.types.CBufRet.i32 %2491, 1
  %2493 = and i32 %2492, 1
  %2494 = icmp ne i32 %2493, 0
  %2495 = add i32 %48, 356
  %2496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2495, i32 undef)  ; BufferLoad(srv,index,wot)
  %2497 = extractvalue %dx.types.ResRet.i32 %2496, 0
  %2498 = and i32 %2497, 32
  %2499 = icmp ne i32 %2498, 0
  %2500 = and i1 %2494, %2499
  %2501 = select i1 %2500, float 1.000000e+00, float %2488
  %2502 = select i1 %2500, float 0x3FD3333340000000, float %2489
  %2503 = select i1 %2500, float 0x3FD3333340000000, float %2490
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = and i32 %2505, 32
  %2507 = icmp eq i32 %2506, 0
  br i1 %2507, label %2580, label %2508

; <label>:2508                                    ; preds = %2486
  %2509 = add i32 %48, 124
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = add i32 %48, 384
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2512, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = add i32 %2514, 0
  %2516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2515, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2517 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2516, %dx.types.Handle %88, float %2093, float %2094, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2518 = extractvalue %dx.types.ResRet.f32 %2517, 0
  %2519 = extractvalue %dx.types.ResRet.f32 %2517, 1
  %2520 = extractvalue %dx.types.ResRet.f32 %2517, 2
  %2521 = extractvalue %dx.types.ResRet.f32 %2517, 3
  %2522 = and i32 %2511, 255
  %2523 = uitofp i32 %2522 to float
  %2524 = lshr i32 %2511, 8
  %2525 = and i32 %2524, 255
  %2526 = uitofp i32 %2525 to float
  %2527 = lshr i32 %2511, 16
  %2528 = and i32 %2527, 255
  %2529 = uitofp i32 %2528 to float
  %2530 = fmul fast float %2529, 0x3F70101000000000
  %2531 = fmul fast float %2518, %2523
  %2532 = fadd fast float %2531, %2526
  %2533 = fmul fast float %2532, 0x3F70101000000000
  %2534 = fadd fast float %2519, -5.000000e-01
  %2535 = fadd fast float %2521, -5.000000e-01
  %2536 = fmul fast float %2534, %2530
  %2537 = fmul fast float %2535, %2530
  %2538 = fadd fast float %2536, 5.000000e-01
  %2539 = fadd fast float %2537, 5.000000e-01
  %2540 = fmul fast float %2538, 2.000000e+00
  %2541 = fadd fast float %2540, -1.000000e+00
  %2542 = fmul fast float %2539, 2.000000e+00
  %2543 = fadd fast float %2542, -1.000000e+00
  %2544 = fadd fast float %2541, %2543
  %2545 = fmul fast float %2544, 5.000000e-01
  %2546 = fsub fast float %2541, %2543
  %2547 = fmul fast float %2546, 5.000000e-01
  %2548 = call float @dx.op.unary.f32(i32 6, float %2545)  ; FAbs(value)
  %2549 = fsub fast float 1.000000e+00, %2548
  %2550 = call float @dx.op.unary.f32(i32 6, float %2547)  ; FAbs(value)
  %2551 = fsub fast float %2549, %2550
  %2552 = call float @dx.op.dot3.f32(i32 55, float %2545, float %2547, float %2551, float %2545, float %2547, float %2551)  ; Dot3(ax,ay,az,bx,by,bz)
  %2553 = call float @dx.op.unary.f32(i32 25, float %2552)  ; Rsqrt(value)
  %2554 = fmul fast float %2545, %2553
  %2555 = fmul fast float %2547, %2553
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = and i32 %2557, 67108864
  %2559 = icmp eq i32 %2558, 0
  br i1 %2559, label %2576, label %2560

; <label>:2560                                    ; preds = %2508
  %2561 = add i32 %48, 312
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 65535
  %2565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2564)  ; LegacyF16ToF32(value)
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = and i32 %2567, 65535
  %2569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2568)  ; LegacyF16ToF32(value)
  %2570 = lshr i32 %2563, 16
  %2571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2570)  ; LegacyF16ToF32(value)
  %2572 = fsub fast float %2533, %2571
  %2573 = fmul fast float %2572, %2565
  %2574 = fadd fast float %2573, %2569
  %2575 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  br label %2576

; <label>:2576                                    ; preds = %2560, %2508
  %2577 = phi float [ %2575, %2560 ], [ %2533, %2508 ]
  %2578 = call float @dx.op.dot2.f32(i32 54, float %2554, float %2555, float %1997, float %1998)  ; Dot2(ax,ay,bx,by)
  %2579 = call float @dx.op.dot2.f32(i32 54, float %2554, float %2555, float %1999, float %2000)  ; Dot2(ax,ay,bx,by)
  br label %2580

; <label>:2580                                    ; preds = %2576, %2486
  %2581 = phi float [ %2577, %2576 ], [ 0x3FD6666660000000, %2486 ]
  %2582 = phi float [ %2578, %2576 ], [ 0.000000e+00, %2486 ]
  %2583 = phi float [ %2579, %2576 ], [ 0.000000e+00, %2486 ]
  %2584 = phi float [ %2520, %2576 ], [ 1.000000e+00, %2486 ]
  %2585 = add i32 %48, 192
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = lshr i32 %2587, 22
  %2589 = shl nuw nsw i32 %2588, 5
  %2590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2589)  ; LegacyF16ToF32(value)
  %2591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2592 = extractvalue %dx.types.ResRet.i32 %2591, 0
  %2593 = and i32 %2592, 64
  %2594 = icmp eq i32 %2593, 0
  br i1 %2594, label %2628, label %2595

; <label>:2595                                    ; preds = %2580
  %2596 = add i32 %48, 400
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = add i32 %2598, 0
  %2600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2599, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = and i32 %2602, 131072
  %2604 = icmp eq i32 %2603, 0
  %2605 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2600, %dx.types.Handle %88, float %2093, float %2094, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2606 = extractvalue %dx.types.ResRet.f32 %2605, 0
  %2607 = extractvalue %dx.types.ResRet.f32 %2605, 1
  %2608 = extractvalue %dx.types.ResRet.f32 %2605, 2
  %2609 = fmul fast float %2606, %317
  %2610 = fmul fast float %2607, %320
  %2611 = fmul fast float %2608, %323
  br i1 %2604, label %2618, label %2612

; <label>:2612                                    ; preds = %2595
  %2613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2614 = extractvalue %dx.types.CBufRet.f32 %2613, 0
  %2615 = fmul fast float %2614, %2609
  %2616 = fmul fast float %2614, %2610
  %2617 = fmul fast float %2614, %2611
  br label %2618

; <label>:2618                                    ; preds = %2612, %2595
  %2619 = phi float [ %2615, %2612 ], [ %2609, %2595 ]
  %2620 = phi float [ %2616, %2612 ], [ %2610, %2595 ]
  %2621 = phi float [ %2617, %2612 ], [ %2611, %2595 ]
  %2622 = fmul fast float %2619, %2590
  %2623 = select i1 %216, float %2622, float %2619
  %2624 = call float @dx.op.dot3.f32(i32 55, float %2623, float %2620, float %2621, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2625 = select i1 %216, float 0.000000e+00, float %2619
  %2626 = select i1 %216, float %2624, float %2620
  %2627 = select i1 %216, float 0.000000e+00, float %2621
  br label %2628

; <label>:2628                                    ; preds = %2618, %2580
  %2629 = phi float [ %2625, %2618 ], [ 0.000000e+00, %2580 ]
  %2630 = phi float [ %2626, %2618 ], [ 0.000000e+00, %2580 ]
  %2631 = phi float [ %2627, %2618 ], [ 0.000000e+00, %2580 ]
  %2632 = add i32 %48, 128
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = and i32 %2634, 255
  %2636 = uitofp i32 %2635 to float
  %2637 = lshr i32 %2634, 8
  %2638 = and i32 %2637, 255
  %2639 = uitofp i32 %2638 to float
  %2640 = call float @dx.op.dot3.f32(i32 55, float %2501, float %2502, float %2503, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2641 = fmul fast float %2639, %2640
  %2642 = fadd fast float %2641, %2636
  %2643 = fmul fast float %2642, 0x3F70101020000000
  %2644 = call float @dx.op.unary.f32(i32 7, float %2643)  ; Saturate(value)
  br i1 %1985, label %2645, label %2653

; <label>:2645                                    ; preds = %2628
  %2646 = fsub fast float 1.000000e+00, %2281
  %2647 = fmul fast float %2646, %1974
  %2648 = fmul fast float %2646, %1975
  %2649 = fmul fast float %2646, %1976
  %2650 = fmul fast float %2646, %1977
  %2651 = fmul fast float %2646, %1978
  %2652 = fmul fast float %2646, %1979
  br label %2653

; <label>:2653                                    ; preds = %2645, %2628
  %2654 = phi float [ %2647, %2645 ], [ %1974, %2628 ]
  %2655 = phi float [ %2648, %2645 ], [ %1975, %2628 ]
  %2656 = phi float [ %2649, %2645 ], [ %1976, %2628 ]
  %2657 = phi float [ %2650, %2645 ], [ %1977, %2628 ]
  %2658 = phi float [ %2651, %2645 ], [ %1978, %2628 ]
  %2659 = phi float [ %2652, %2645 ], [ %1979, %2628 ]
  %2660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2661 = extractvalue %dx.types.ResRet.i32 %2660, 0
  %2662 = and i32 %2661, 3
  %2663 = icmp eq i32 %2662, 3
  br i1 %2663, label %2742, label %2664

; <label>:2664                                    ; preds = %2653
  %2665 = and i32 %2661, 16
  %2666 = icmp ne i32 %2665, 0
  %2667 = select i1 %2666, float %2281, float 0.000000e+00
  %2668 = icmp eq i32 %2662, 0
  br i1 %2668, label %2669, label %2697

; <label>:2669                                    ; preds = %2664
  %2670 = and i32 %2661, 64
  %2671 = icmp ne i32 %2670, 0
  %2672 = select i1 %2671, float %2281, float 0.000000e+00
  %2673 = fsub fast float %2501, %2654
  %2674 = fsub fast float %2502, %2655
  %2675 = fsub fast float %2503, %2656
  %2676 = fmul fast float %2667, %2673
  %2677 = fmul fast float %2667, %2674
  %2678 = fmul fast float %2667, %2675
  %2679 = fadd fast float %2676, %2654
  %2680 = fadd fast float %2677, %2655
  %2681 = fadd fast float %2678, %2656
  %2682 = fsub fast float %2487, %1980
  %2683 = fmul fast float %2667, %2682
  %2684 = fadd fast float %2683, %1980
  %2685 = fsub fast float %2629, %2657
  %2686 = fsub fast float %2630, %2658
  %2687 = fsub fast float %2631, %2659
  %2688 = fmul fast float %2672, %2685
  %2689 = fmul fast float %2672, %2686
  %2690 = fmul fast float %2672, %2687
  %2691 = fadd fast float %2688, %2657
  %2692 = fadd fast float %2689, %2658
  %2693 = fadd fast float %2690, %2659
  %2694 = fsub fast float %2644, %1983
  %2695 = fmul fast float %2667, %2694
  %2696 = fadd fast float %2695, %1983
  br label %2742

; <label>:2697                                    ; preds = %2664
  %2698 = icmp eq i32 %2662, 1
  br i1 %2698, label %2699, label %2712

; <label>:2699                                    ; preds = %2697
  %2700 = fadd fast float %2501, -1.000000e+00
  %2701 = fadd fast float %2502, -1.000000e+00
  %2702 = fadd fast float %2503, -1.000000e+00
  %2703 = fmul fast float %2667, %2700
  %2704 = fmul fast float %2667, %2701
  %2705 = fmul fast float %2667, %2702
  %2706 = fadd fast float %2703, 1.000000e+00
  %2707 = fadd fast float %2704, 1.000000e+00
  %2708 = fadd fast float %2705, 1.000000e+00
  %2709 = fmul fast float %2706, %2654
  %2710 = fmul fast float %2707, %2655
  %2711 = fmul fast float %2708, %2656
  br label %2742

; <label>:2712                                    ; preds = %2697
  %2713 = icmp eq i32 %2662, 2
  br i1 %2713, label %2714, label %2742

; <label>:2714                                    ; preds = %2712
  %2715 = call float @dx.op.unary.f32(i32 24, float %2501)  ; Sqrt(value)
  %2716 = call float @dx.op.unary.f32(i32 24, float %2502)  ; Sqrt(value)
  %2717 = call float @dx.op.unary.f32(i32 24, float %2503)  ; Sqrt(value)
  %2718 = fadd fast float %2715, -5.000000e-01
  %2719 = fadd fast float %2716, -5.000000e-01
  %2720 = fadd fast float %2717, -5.000000e-01
  %2721 = fmul fast float %2718, %2667
  %2722 = fmul fast float %2719, %2667
  %2723 = fmul fast float %2720, %2667
  %2724 = fadd fast float %2721, 5.000000e-01
  %2725 = fadd fast float %2722, 5.000000e-01
  %2726 = fadd fast float %2723, 5.000000e-01
  %2727 = fmul fast float %2724, 2.000000e+00
  %2728 = fsub fast float 1.000000e+00, %2727
  %2729 = fmul fast float %2728, %2654
  %2730 = fadd fast float %2729, %2727
  %2731 = fmul fast float %2730, %2654
  %2732 = fmul fast float %2725, 2.000000e+00
  %2733 = fsub fast float 1.000000e+00, %2732
  %2734 = fmul fast float %2733, %2655
  %2735 = fadd fast float %2734, %2732
  %2736 = fmul fast float %2735, %2655
  %2737 = fmul fast float %2726, 2.000000e+00
  %2738 = fsub fast float 1.000000e+00, %2737
  %2739 = fmul fast float %2738, %2656
  %2740 = fadd fast float %2739, %2737
  %2741 = fmul fast float %2740, %2656
  br label %2742

; <label>:2742                                    ; preds = %2714, %2712, %2699, %2669, %2653
  %2743 = phi float [ %2654, %2653 ], [ %2731, %2714 ], [ %2654, %2712 ], [ %2709, %2699 ], [ %2679, %2669 ]
  %2744 = phi float [ %2655, %2653 ], [ %2736, %2714 ], [ %2655, %2712 ], [ %2710, %2699 ], [ %2680, %2669 ]
  %2745 = phi float [ %2656, %2653 ], [ %2741, %2714 ], [ %2656, %2712 ], [ %2711, %2699 ], [ %2681, %2669 ]
  %2746 = phi float [ %2657, %2653 ], [ %2657, %2714 ], [ %2657, %2712 ], [ %2657, %2699 ], [ %2691, %2669 ]
  %2747 = phi float [ %2658, %2653 ], [ %2658, %2714 ], [ %2658, %2712 ], [ %2658, %2699 ], [ %2692, %2669 ]
  %2748 = phi float [ %2659, %2653 ], [ %2659, %2714 ], [ %2659, %2712 ], [ %2659, %2699 ], [ %2693, %2669 ]
  %2749 = phi float [ %1980, %2653 ], [ %1980, %2714 ], [ %1980, %2712 ], [ %1980, %2699 ], [ %2684, %2669 ]
  %2750 = phi float [ %1983, %2653 ], [ %1983, %2714 ], [ %1983, %2712 ], [ %1983, %2699 ], [ %2696, %2669 ]
  %2751 = and i32 %2661, 12
  %2752 = icmp eq i32 %2751, 12
  br i1 %2752, label %2825, label %2753

; <label>:2753                                    ; preds = %2742
  %2754 = and i32 %2661, 2097184
  %2755 = icmp eq i32 %2754, 2097184
  %2756 = select i1 %2755, float %2281, float 0.000000e+00
  %2757 = and i32 %2661, 4194336
  %2758 = icmp eq i32 %2757, 4194336
  %2759 = select i1 %2758, float %2281, float 0.000000e+00
  %2760 = and i32 %2661, 8388640
  %2761 = icmp eq i32 %2760, 8388640
  %2762 = select i1 %2761, float %2281, float 0.000000e+00
  %2763 = icmp eq i32 %2751, 0
  br i1 %2763, label %2764, label %2777

; <label>:2764                                    ; preds = %2753
  %2765 = fsub fast float %2582, %1972
  %2766 = fsub fast float %2583, %1973
  %2767 = fmul fast float %2756, %2765
  %2768 = fmul fast float %2756, %2766
  %2769 = fadd fast float %2767, %1972
  %2770 = fadd fast float %2768, %1973
  %2771 = fsub fast float %2584, %1982
  %2772 = fmul fast float %2759, %2771
  %2773 = fadd fast float %2772, %1982
  %2774 = fsub fast float %2581, %1981
  %2775 = fmul fast float %2762, %2774
  %2776 = fadd fast float %2775, %1981
  br label %2825

; <label>:2777                                    ; preds = %2753
  %2778 = icmp eq i32 %2751, 4
  br i1 %2778, label %2779, label %2811

; <label>:2779                                    ; preds = %2777
  %2780 = fmul fast float %2756, %2582
  %2781 = fmul fast float %2756, %2583
  %2782 = fadd fast float %2780, %1972
  %2783 = fadd fast float %2781, %1973
  %2784 = call float @dx.op.binary.f32(i32 36, float %1982, float %2584)  ; FMin(a,b)
  %2785 = fsub fast float %2784, %1982
  %2786 = fmul fast float %2785, %2759
  %2787 = fadd fast float %2786, %1982
  %2788 = fadd fast float %2581, %1981
  %2789 = fmul fast float %2788, 0x3FF337FAE0000000
  %2790 = fmul fast float %1981, %1981
  %2791 = fmul fast float %2581, %2581
  %2792 = fadd fast float %2791, %2790
  %2793 = fmul fast float %2792, 0x3FE5152B00000000
  %2794 = fmul fast float %1981, 0xBFCC1F85E0000000
  %2795 = fmul fast float %2794, %2581
  %2796 = fadd fast float %2795, 0xBFE1363700000000
  %2797 = fadd fast float %2796, %2789
  %2798 = fsub fast float %2797, %2793
  %2799 = fmul fast float %2788, 0x3FBA6F0D00000000
  %2800 = fmul fast float %2792, 0x3FD0432880000000
  %2801 = fmul fast float %1981, 0xBFEF110800000000
  %2802 = fmul fast float %2801, %2581
  %2803 = fadd fast float %2802, 1.000000e+00
  %2804 = fsub fast float %2803, %2799
  %2805 = fadd fast float %2804, %2800
  %2806 = fdiv fast float %2798, %2805
  %2807 = call float @dx.op.unary.f32(i32 7, float %2806)  ; Saturate(value)
  %2808 = fsub fast float %2807, %1981
  %2809 = fmul fast float %2808, %2762
  %2810 = fadd fast float %2809, %1981
  br label %2825

; <label>:2811                                    ; preds = %2777
  %2812 = icmp eq i32 %2751, 8
  br i1 %2812, label %2813, label %2825

; <label>:2813                                    ; preds = %2811
  %2814 = fmul fast float %2756, %2582
  %2815 = fmul fast float %2756, %2583
  %2816 = fadd fast float %2814, %1972
  %2817 = fadd fast float %2815, %1973
  %2818 = call float @dx.op.binary.f32(i32 36, float %1982, float %2584)  ; FMin(a,b)
  %2819 = fsub fast float %2818, %1982
  %2820 = fmul fast float %2819, %2759
  %2821 = fadd fast float %2820, %1982
  %2822 = fsub fast float %2581, %1981
  %2823 = fmul fast float %2762, %2822
  %2824 = fadd fast float %2823, %1981
  br label %2825

; <label>:2825                                    ; preds = %2813, %2811, %2779, %2764, %2742, %2280, %1984, %1971
  %2826 = phi float [ %1972, %2742 ], [ %1972, %2280 ], [ %1972, %1971 ], [ %2816, %2813 ], [ %1972, %2811 ], [ %2782, %2779 ], [ %2769, %2764 ], [ %1972, %1984 ]
  %2827 = phi float [ %1973, %2742 ], [ %1973, %2280 ], [ %1973, %1971 ], [ %2817, %2813 ], [ %1973, %2811 ], [ %2783, %2779 ], [ %2770, %2764 ], [ %1973, %1984 ]
  %2828 = phi float [ %2743, %2742 ], [ %1974, %2280 ], [ %1974, %1971 ], [ %2743, %2813 ], [ %2743, %2811 ], [ %2743, %2779 ], [ %2743, %2764 ], [ %1974, %1984 ]
  %2829 = phi float [ %2744, %2742 ], [ %1975, %2280 ], [ %1975, %1971 ], [ %2744, %2813 ], [ %2744, %2811 ], [ %2744, %2779 ], [ %2744, %2764 ], [ %1975, %1984 ]
  %2830 = phi float [ %2745, %2742 ], [ %1976, %2280 ], [ %1976, %1971 ], [ %2745, %2813 ], [ %2745, %2811 ], [ %2745, %2779 ], [ %2745, %2764 ], [ %1976, %1984 ]
  %2831 = phi float [ %2746, %2742 ], [ %1977, %2280 ], [ %1977, %1971 ], [ %2746, %2813 ], [ %2746, %2811 ], [ %2746, %2779 ], [ %2746, %2764 ], [ %1977, %1984 ]
  %2832 = phi float [ %2747, %2742 ], [ %1978, %2280 ], [ %1978, %1971 ], [ %2747, %2813 ], [ %2747, %2811 ], [ %2747, %2779 ], [ %2747, %2764 ], [ %1978, %1984 ]
  %2833 = phi float [ %2748, %2742 ], [ %1979, %2280 ], [ %1979, %1971 ], [ %2748, %2813 ], [ %2748, %2811 ], [ %2748, %2779 ], [ %2748, %2764 ], [ %1979, %1984 ]
  %2834 = phi float [ %2749, %2742 ], [ %1980, %2280 ], [ %1980, %1971 ], [ %2749, %2813 ], [ %2749, %2811 ], [ %2749, %2779 ], [ %2749, %2764 ], [ %1980, %1984 ]
  %2835 = phi float [ %1981, %2742 ], [ %1981, %2280 ], [ %1981, %1971 ], [ %2824, %2813 ], [ %1981, %2811 ], [ %2810, %2779 ], [ %2776, %2764 ], [ %1981, %1984 ]
  %2836 = phi float [ %1982, %2742 ], [ %1982, %2280 ], [ %1982, %1971 ], [ %2821, %2813 ], [ %1982, %2811 ], [ %2787, %2779 ], [ %2773, %2764 ], [ %1982, %1984 ]
  %2837 = phi float [ %2750, %2742 ], [ %1983, %2280 ], [ %1983, %1971 ], [ %2750, %2813 ], [ %2750, %2811 ], [ %2750, %2779 ], [ %2750, %2764 ], [ %1983, %1984 ]
  br i1 %404, label %3679, label %2838

; <label>:2838                                    ; preds = %2825
  %2839 = icmp ult i32 %458, 4
  %2840 = add i32 %48, 72
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = add i32 %48, 76
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = or i32 %2845, %2842
  %2847 = icmp eq i32 %2846, 0
  br i1 %2847, label %3679, label %2848

; <label>:2848                                    ; preds = %2838
  %2849 = and i32 %2842, 262144
  %2850 = icmp ne i32 %2849, 0
  %2851 = select i1 %2850, float %51, float 1.000000e+00
  %2852 = select i1 %2850, float %52, float 0.000000e+00
  %2853 = select i1 %2850, float %53, float 0.000000e+00
  %2854 = select i1 %2850, float %54, float 1.000000e+00
  %2855 = select i1 %2850, float %55, float %71
  %2856 = select i1 %2850, float %56, float %72
  %2857 = add i32 %48, 332
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = lshr i32 %2859, 16
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = fmul fast float %2861, 0x3F50624DE0000000
  %2863 = add i32 %48, 136
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = lshr i32 %2865, 16
  %2867 = and i32 %2866, 255
  %2868 = lshr i32 %2865, 24
  %2869 = add i32 %48, 340
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = and i32 %2871, 65535
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = lshr i32 %2871, 16
  %2875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2874)  ; LegacyF16ToF32(value)
  %2876 = add i32 %48, 80
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = lshr i32 %2878, 22
  %2880 = shl nuw nsw i32 %2879, 5
  %2881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2880)  ; LegacyF16ToF32(value)
  %2882 = shl i32 %2878, 4
  %2883 = and i32 %2882, 32752
  %2884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2883)  ; LegacyF16ToF32(value)
  %2885 = lshr i32 %2878, 7
  %2886 = and i32 %2885, 32752
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2889 = extractvalue %dx.types.CBufRet.f32 %2888, 3
  %2890 = fmul fast float %2889, 1.000000e+03
  %2891 = fmul fast float %394, %2890
  %2892 = call float @dx.op.unary.f32(i32 22, float %2891)  ; Frc(value)
  %2893 = fadd fast float %2892, %384
  %2894 = fmul fast float %395, %2890
  %2895 = call float @dx.op.unary.f32(i32 22, float %2894)  ; Frc(value)
  %2896 = fadd fast float %2895, %386
  %2897 = fmul fast float %2862, %2890
  %2898 = call float @dx.op.unary.f32(i32 22, float %2897)  ; Frc(value)
  %2899 = fmul fast float %2898, 0x401921FB60000000
  %2900 = fadd fast float %2899, %2881
  %2901 = call float @dx.op.unary.f32(i32 13, float %2900)  ; Sin(value)
  %2902 = call float @dx.op.unary.f32(i32 12, float %2900)  ; Cos(value)
  %2903 = fsub fast float -0.000000e+00, %2901
  %2904 = fadd fast float %2855, -5.000000e-01
  %2905 = fadd fast float %2856, -5.000000e-01
  %2906 = fmul fast float %2873, %2904
  %2907 = fmul fast float %2875, %2905
  %2908 = fadd fast float %2906, 5.000000e-01
  %2909 = fadd fast float %2907, 5.000000e-01
  %2910 = fmul fast float %2884, %2908
  %2911 = fmul fast float %2887, %2909
  %2912 = fmul fast float %2902, %2910
  %2913 = call float @dx.op.tertiary.f32(i32 46, float %2903, float %2911, float %2912)  ; FMad(a,b,c)
  %2914 = fmul fast float %2901, %2910
  %2915 = call float @dx.op.tertiary.f32(i32 46, float %2902, float %2911, float %2914)  ; FMad(a,b,c)
  %2916 = fadd fast float %2893, %2913
  %2917 = fadd fast float %2896, %2915
  %2918 = icmp ugt i32 %2867, 1
  %2919 = icmp ugt i32 %2865, 33554431
  %2920 = or i1 %2919, %2918
  br i1 %2920, label %2921, label %2946

; <label>:2921                                    ; preds = %2848
  %2922 = add i32 %48, 276
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = lshr i32 %2924, 16
  %2926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2925)  ; LegacyF16ToF32(value)
  %2927 = fmul fast float %2889, %2926
  %2928 = call float @dx.op.unary.f32(i32 22, float %2927)  ; Frc(value)
  %2929 = mul nuw nsw i32 %2867, %2868
  %2930 = uitofp i32 %2929 to float
  %2931 = fmul fast float %2928, %2930
  %2932 = call float @dx.op.unary.f32(i32 27, float %2931)  ; Round_ni(value)
  %2933 = fptoui float %2932 to i32
  %2934 = urem i32 %2933, %2867
  %2935 = udiv i32 %2933, %2868
  %2936 = call float @dx.op.unary.f32(i32 22, float %2916)  ; Frc(value)
  %2937 = call float @dx.op.unary.f32(i32 22, float %2917)  ; Frc(value)
  %2938 = uitofp i32 %2934 to float
  %2939 = uitofp i32 %2935 to float
  %2940 = fadd fast float %2936, %2938
  %2941 = fadd fast float %2937, %2939
  %2942 = uitofp i32 %2867 to float
  %2943 = uitofp i32 %2868 to float
  %2944 = fdiv fast float %2940, %2942
  %2945 = fdiv fast float %2941, %2943
  br label %2946

; <label>:2946                                    ; preds = %2921, %2848
  %2947 = phi float [ %2944, %2921 ], [ %2916, %2848 ]
  %2948 = phi float [ %2945, %2921 ], [ %2917, %2848 ]
  %2949 = and i32 %2842, 16777216
  %2950 = icmp eq i32 %2949, 0
  br i1 %2950, label %3060, label %2951

; <label>:2951                                    ; preds = %2946
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 0
  %2954 = extractvalue %dx.types.CBufRet.f32 %2952, 1
  %2955 = extractvalue %dx.types.CBufRet.f32 %2952, 2
  %2956 = fadd fast float %2953, %155
  %2957 = fadd fast float %2954, %156
  %2958 = fadd fast float %2955, %157
  %2959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2960 = extractvalue %dx.types.CBufRet.f32 %2959, 0
  %2961 = call float @dx.op.unary.f32(i32 7, float %2960)  ; Saturate(value)
  %2962 = icmp eq i32 %49, 65535
  br i1 %2962, label %3057, label %2963

; <label>:2963                                    ; preds = %2951
  %2964 = lshr i32 %49, 1
  %2965 = shl i32 %2964, 2
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = and i32 %49, 1
  %2969 = icmp ne i32 %2968, 0
  %2970 = lshr i32 %2967, 16
  %2971 = and i32 %2967, 65535
  %2972 = select i1 %2969, i32 %2970, i32 %2971
  %2973 = icmp eq i32 %2972, 65535
  br i1 %2973, label %3053, label %2974

; <label>:2974                                    ; preds = %2963
  %2975 = mul nuw nsw i32 %2972, 40
  %2976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.f32 %2976, 0
  %2978 = extractvalue %dx.types.ResRet.f32 %2976, 1
  %2979 = extractvalue %dx.types.ResRet.f32 %2976, 2
  %2980 = add nuw nsw i32 %2975, 12
  %2981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = extractvalue %dx.types.ResRet.f32 %2981, 1
  %2984 = extractvalue %dx.types.ResRet.f32 %2981, 2
  %2985 = add nuw nsw i32 %2975, 24
  %2986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.f32 %2986, 0
  %2988 = extractvalue %dx.types.ResRet.f32 %2986, 1
  %2989 = extractvalue %dx.types.ResRet.f32 %2986, 2
  %2990 = add nuw nsw i32 %2975, 36
  %2991 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.f32 %2991, 0
  %2993 = fsub fast float %2956, %2977
  %2994 = fsub fast float %2957, %2978
  %2995 = fsub fast float %2958, %2979
  %2996 = fmul fast float %2992, %2993
  %2997 = fmul fast float %2992, %2994
  %2998 = fmul fast float %2992, %2995
  %2999 = call float @dx.op.unary.f32(i32 27, float %2996)  ; Round_ni(value)
  %3000 = call float @dx.op.unary.f32(i32 27, float %2997)  ; Round_ni(value)
  %3001 = call float @dx.op.unary.f32(i32 27, float %2998)  ; Round_ni(value)
  %3002 = fadd fast float %2999, 5.000000e-01
  %3003 = fadd fast float %3000, 5.000000e-01
  %3004 = fadd fast float %3001, 5.000000e-01
  %3005 = fmul fast float %3002, %2982
  %3006 = fmul fast float %3003, %2983
  %3007 = fmul fast float %3004, %2984
  %3008 = shl i32 %49, 2
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3008, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = add i32 %3010, 0
  %3012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3013 = call float @dx.op.unary.f32(i32 22, float %3005)  ; Frc(value)
  %3014 = call float @dx.op.unary.f32(i32 22, float %3006)  ; Frc(value)
  %3015 = call float @dx.op.unary.f32(i32 22, float %3007)  ; Frc(value)
  %3016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3012, %dx.types.Handle %43, float %3013, float %3014, float %3015, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3017 = extractvalue %dx.types.ResRet.f32 %3016, 0
  %3018 = extractvalue %dx.types.ResRet.f32 %3016, 1
  %3019 = extractvalue %dx.types.ResRet.f32 %3016, 2
  %3020 = fmul fast float %3017, 1.023000e+03
  %3021 = fmul fast float %3018, 1.023000e+03
  %3022 = fmul fast float %3019, 1.023000e+03
  %3023 = fadd fast float %3020, 5.000000e-01
  %3024 = fadd fast float %3021, 5.000000e-01
  %3025 = fadd fast float %3022, 5.000000e-01
  %3026 = call float @dx.op.unary.f32(i32 27, float %3023)  ; Round_ni(value)
  %3027 = call float @dx.op.unary.f32(i32 27, float %3024)  ; Round_ni(value)
  %3028 = call float @dx.op.unary.f32(i32 27, float %3025)  ; Round_ni(value)
  %3029 = fsub fast float %2996, %2999
  %3030 = fsub fast float %2997, %3000
  %3031 = fsub fast float %2998, %3001
  %3032 = fmul fast float %3029, 7.500000e-01
  %3033 = fmul fast float %3030, 7.500000e-01
  %3034 = fmul fast float %3031, 7.500000e-01
  %3035 = fadd fast float %2999, 1.250000e-01
  %3036 = fadd fast float %3035, %3032
  %3037 = fadd fast float %3036, %3026
  %3038 = fadd fast float %3000, 1.250000e-01
  %3039 = fadd fast float %3038, %3033
  %3040 = fadd fast float %3039, %3027
  %3041 = fadd fast float %3001, 1.250000e-01
  %3042 = fadd fast float %3041, %3034
  %3043 = fadd fast float %3042, %3028
  %3044 = fmul fast float %3037, %2987
  %3045 = fmul fast float %3040, %2988
  %3046 = fmul fast float %3043, %2989
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3008, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = add i32 %3048, 0
  %3050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3049, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3050, %dx.types.Handle %41, float %3044, float %3045, float %3046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3052 = extractvalue %dx.types.ResRet.f32 %3051, 0
  br label %3053

; <label>:3053                                    ; preds = %2974, %2963
  %3054 = phi float [ %3052, %2974 ], [ -1.000000e+00, %2963 ]
  %3055 = fadd fast float %3054, %2961
  %3056 = call float @dx.op.unary.f32(i32 7, float %3055)  ; Saturate(value)
  br label %3057

; <label>:3057                                    ; preds = %3053, %2951
  %3058 = phi float [ %3056, %3053 ], [ %2961, %2951 ]
  %3059 = fmul fast float %3058, %453
  br label %3060

; <label>:3060                                    ; preds = %3057, %2946
  %3061 = phi float [ %3059, %3057 ], [ %453, %2946 ]
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = and i32 %3063, 256
  %3065 = icmp eq i32 %3064, 0
  br i1 %3065, label %3112, label %3066

; <label>:3066                                    ; preds = %3060
  %3067 = add i32 %48, 436
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = add i32 %3069, 0
  %3071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3071, %dx.types.Handle %89, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3073 = extractvalue %dx.types.ResRet.f32 %3072, 0
  %3074 = add i32 %48, 148
  %3075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3074, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.i32 %3075, 0
  %3077 = shl i32 %3076, 4
  %3078 = and i32 %3077, 32752
  %3079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3078)  ; LegacyF16ToF32(value)
  %3080 = lshr i32 %3076, 7
  %3081 = and i32 %3080, 32752
  %3082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3081)  ; LegacyF16ToF32(value)
  %3083 = fsub fast float 1.000000e+00, %3061
  %3084 = call float @dx.op.binary.f32(i32 35, float %3083, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3085 = bitcast float %3061 to i32
  %3086 = sitofp i32 %3085 to float
  %3087 = fadd fast float %3086, 0xC1CFBF8940000000
  %3088 = fmul fast float %3082, %3087
  %3089 = fadd fast float %3088, 0x41CFBF8940000000
  %3090 = fptosi float %3089 to i32
  %3091 = bitcast i32 %3090 to float
  %3092 = bitcast float %3084 to i32
  %3093 = sitofp i32 %3092 to float
  %3094 = fadd fast float %3093, 0xC1CFBF8940000000
  %3095 = fmul fast float %3094, %3082
  %3096 = fadd fast float %3095, 0x41CFBF8940000000
  %3097 = fptosi float %3096 to i32
  %3098 = bitcast i32 %3097 to float
  %3099 = fmul fast float %3091, %3079
  %3100 = fmul fast float %3098, %3079
  %3101 = fsub fast float %3084, %3099
  %3102 = fadd fast float %3100, %3084
  %3103 = call float @dx.op.unary.f32(i32 7, float %3101)  ; Saturate(value)
  %3104 = call float @dx.op.unary.f32(i32 7, float %3102)  ; Saturate(value)
  %3105 = fsub fast float %3073, %3103
  %3106 = fsub fast float %3104, %3103
  %3107 = bitcast float %3106 to i32
  %3108 = sub nsw i32 2129859010, %3107
  %3109 = bitcast i32 %3108 to float
  %3110 = fmul fast float %3109, %3105
  %3111 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  br label %3112

; <label>:3112                                    ; preds = %3066, %3060
  %3113 = phi float [ %3111, %3066 ], [ %3061, %3060 ]
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = and i32 %3115, 128
  %3117 = icmp eq i32 %3116, 0
  br i1 %3117, label %3134, label %3118

; <label>:3118                                    ; preds = %3112
  %3119 = add i32 %48, 420
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = add i32 %3121, 0
  %3123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3122, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3124 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3123, %dx.types.Handle %89, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3125 = extractvalue %dx.types.ResRet.f32 %3124, 0
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = and i32 %3127, 524288
  %3129 = icmp ne i32 %3128, 0
  %3130 = fcmp fast ogt float %3125, 0x3FE0101020000000
  %3131 = select i1 %3130, float 1.000000e+00, float 0.000000e+00
  %3132 = select i1 %3129, float %3131, float %3125
  %3133 = fmul fast float %3132, %3113
  br label %3134

; <label>:3134                                    ; preds = %3118, %3112
  %3135 = phi float [ %3133, %3118 ], [ %3113, %3112 ]
  %3136 = fcmp fast ult float %3135, 0x3F70101020000000
  br i1 %3136, label %3679, label %3137

; <label>:3137                                    ; preds = %3134
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = and i32 %3139, 16
  %3141 = icmp eq i32 %3140, 0
  br i1 %3141, label %3340, label %3142

; <label>:3142                                    ; preds = %3137
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = add i32 %48, 372
  %3146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3145, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.i32 %3146, 0
  %3148 = add i32 %3147, 0
  %3149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3148, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3150 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3149, %dx.types.Handle %88, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3151 = extractvalue %dx.types.ResRet.f32 %3150, 0
  %3152 = extractvalue %dx.types.ResRet.f32 %3150, 1
  %3153 = extractvalue %dx.types.ResRet.f32 %3150, 2
  %3154 = extractvalue %dx.types.ResRet.f32 %3150, 3
  %3155 = and i32 %3144, 255
  %3156 = uitofp i32 %3155 to float
  %3157 = lshr i32 %3144, 8
  %3158 = and i32 %3157, 255
  %3159 = uitofp i32 %3158 to float
  %3160 = fmul fast float %3154, %3156
  %3161 = fadd fast float %3160, %3159
  %3162 = fmul fast float %3161, 0x3F70101000000000
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = and i32 %3164, 512
  %3166 = icmp eq i32 %3165, 0
  br i1 %3166, label %3175, label %3167

; <label>:3167                                    ; preds = %3142
  %3168 = add i32 %48, 452
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3168, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = add i32 %3170, 0
  %3172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3172, %dx.types.Handle %89, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3174 = extractvalue %dx.types.ResRet.f32 %3173, 0
  br label %3175

; <label>:3175                                    ; preds = %3167, %3142
  %3176 = phi float [ %3174, %3167 ], [ 1.000000e+00, %3142 ]
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = and i32 %3178, 33554432
  %3180 = icmp eq i32 %3179, 0
  br i1 %3180, label %3287, label %3181

; <label>:3181                                    ; preds = %3175
  %3182 = add i32 %48, 272
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = and i32 %3184, 65535
  %3186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3185)  ; LegacyF16ToF32(value)
  %3187 = lshr i32 %3184, 16
  %3188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3187)  ; LegacyF16ToF32(value)
  %3189 = add i32 %48, 276
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 65535
  %3193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3192)  ; LegacyF16ToF32(value)
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = lshr i32 %3195, 24
  %3197 = uitofp i32 %3196 to float
  %3198 = fmul fast float %3197, 0x3F70101020000000
  %3199 = and i32 %3195, 255
  %3200 = uitofp i32 %3199 to float
  %3201 = fmul fast float %3200, 0x3F70101020000000
  %3202 = lshr i32 %3195, 8
  %3203 = and i32 %3202, 255
  %3204 = uitofp i32 %3203 to float
  %3205 = fmul fast float %3204, 0x3F70101020000000
  %3206 = lshr i32 %3195, 16
  %3207 = and i32 %3206, 255
  %3208 = uitofp i32 %3207 to float
  %3209 = fmul fast float %3208, 0x3F70101020000000
  %3210 = add i32 %48, 268
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = lshr i32 %3212, 24
  %3214 = uitofp i32 %3213 to float
  %3215 = fmul fast float %3214, 0x3F70101020000000
  %3216 = and i32 %3212, 255
  %3217 = uitofp i32 %3216 to float
  %3218 = fmul fast float %3217, 0x3F70101020000000
  %3219 = lshr i32 %3212, 8
  %3220 = and i32 %3219, 255
  %3221 = uitofp i32 %3220 to float
  %3222 = fmul fast float %3221, 0x3F70101020000000
  %3223 = lshr i32 %3212, 16
  %3224 = and i32 %3223, 255
  %3225 = uitofp i32 %3224 to float
  %3226 = fmul fast float %3225, 0x3F70101020000000
  %3227 = bitcast float %3151 to i32
  %3228 = ashr i32 %3227, 1
  %3229 = sub nsw i32 1597463174, %3228
  %3230 = bitcast i32 %3229 to float
  %3231 = fmul fast float %3151, 5.000000e-01
  %3232 = fmul fast float %3230, %3230
  %3233 = fmul fast float %3232, %3231
  %3234 = fsub fast float 1.500000e+00, %3233
  %3235 = fmul fast float %3230, %3151
  %3236 = fmul fast float %3235, %3234
  %3237 = bitcast float %3152 to i32
  %3238 = ashr i32 %3237, 1
  %3239 = sub nsw i32 1597463174, %3238
  %3240 = bitcast i32 %3239 to float
  %3241 = fmul fast float %3152, 5.000000e-01
  %3242 = fmul fast float %3240, %3240
  %3243 = fmul fast float %3242, %3241
  %3244 = fsub fast float 1.500000e+00, %3243
  %3245 = fmul fast float %3240, %3152
  %3246 = fmul fast float %3245, %3244
  %3247 = bitcast float %3153 to i32
  %3248 = ashr i32 %3247, 1
  %3249 = sub nsw i32 1597463174, %3248
  %3250 = bitcast i32 %3249 to float
  %3251 = fmul fast float %3153, 5.000000e-01
  %3252 = fmul fast float %3250, %3250
  %3253 = fmul fast float %3252, %3251
  %3254 = fsub fast float 1.500000e+00, %3253
  %3255 = fmul fast float %3250, %3153
  %3256 = fmul fast float %3255, %3254
  %3257 = fsub fast float %3236, %3218
  %3258 = fsub fast float %3246, %3222
  %3259 = fsub fast float %3256, %3226
  %3260 = fmul fast float %3257, %3186
  %3261 = fmul fast float %3258, %3188
  %3262 = fmul fast float %3259, %3193
  %3263 = fadd fast float %3260, %3201
  %3264 = fadd fast float %3261, %3205
  %3265 = fadd fast float %3262, %3209
  %3266 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3267 = call float @dx.op.unary.f32(i32 7, float %3264)  ; Saturate(value)
  %3268 = call float @dx.op.unary.f32(i32 7, float %3265)  ; Saturate(value)
  %3269 = fmul fast float %3266, %3266
  %3270 = fmul fast float %3267, %3267
  %3271 = fmul fast float %3268, %3268
  %3272 = fsub fast float %3269, %3151
  %3273 = fsub fast float %3270, %3152
  %3274 = fsub fast float %3271, %3153
  %3275 = fmul fast float %3272, %3176
  %3276 = fmul fast float %3273, %3176
  %3277 = fmul fast float %3274, %3176
  %3278 = fadd fast float %3275, %3151
  %3279 = fadd fast float %3276, %3152
  %3280 = fadd fast float %3277, %3153
  %3281 = fadd fast float %3198, %3162
  %3282 = fsub fast float %3281, %3215
  %3283 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3284 = fsub fast float %3283, %3162
  %3285 = fmul fast float %3284, %3176
  %3286 = fadd fast float %3285, %3162
  br label %3340

; <label>:3287                                    ; preds = %3175
  %3288 = and i32 %3178, 134217728
  %3289 = icmp eq i32 %3288, 0
  br i1 %3289, label %3324, label %3290

; <label>:3290                                    ; preds = %3287
  %3291 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %3292 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %3293 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %3294 = fadd fast float %3291, -5.000000e-01
  %3295 = fadd fast float %3292, -5.000000e-01
  %3296 = fadd fast float %3293, -5.000000e-01
  %3297 = fmul fast float %3294, %3176
  %3298 = fmul fast float %3295, %3176
  %3299 = fmul fast float %3296, %3176
  %3300 = fadd fast float %3297, 5.000000e-01
  %3301 = fadd fast float %3298, 5.000000e-01
  %3302 = fadd fast float %3299, 5.000000e-01
  %3303 = call float @dx.op.unary.f32(i32 24, float %3151)  ; Sqrt(value)
  %3304 = call float @dx.op.unary.f32(i32 24, float %3152)  ; Sqrt(value)
  %3305 = call float @dx.op.unary.f32(i32 24, float %3153)  ; Sqrt(value)
  %3306 = fmul fast float %3300, 2.000000e+00
  %3307 = fsub fast float 1.000000e+00, %3306
  %3308 = fmul fast float %3307, %3303
  %3309 = fadd fast float %3308, %3306
  %3310 = fmul fast float %3309, %3303
  %3311 = fmul fast float %3301, 2.000000e+00
  %3312 = fsub fast float 1.000000e+00, %3311
  %3313 = fmul fast float %3312, %3304
  %3314 = fadd fast float %3313, %3311
  %3315 = fmul fast float %3314, %3304
  %3316 = fmul fast float %3302, 2.000000e+00
  %3317 = fsub fast float 1.000000e+00, %3316
  %3318 = fmul fast float %3317, %3305
  %3319 = fadd fast float %3318, %3316
  %3320 = fmul fast float %3319, %3305
  %3321 = fmul fast float %3310, %3310
  %3322 = fmul fast float %3315, %3315
  %3323 = fmul fast float %3320, %3320
  br label %3340

; <label>:3324                                    ; preds = %3287
  %3325 = fmul fast float %371, %371
  %3326 = fmul fast float %375, %375
  %3327 = fmul fast float %379, %379
  %3328 = fadd fast float %3325, -1.000000e+00
  %3329 = fadd fast float %3326, -1.000000e+00
  %3330 = fadd fast float %3327, -1.000000e+00
  %3331 = fmul fast float %3176, %3328
  %3332 = fmul fast float %3176, %3329
  %3333 = fmul fast float %3176, %3330
  %3334 = fadd fast float %3331, 1.000000e+00
  %3335 = fadd fast float %3332, 1.000000e+00
  %3336 = fadd fast float %3333, 1.000000e+00
  %3337 = fmul fast float %3334, %3151
  %3338 = fmul fast float %3335, %3152
  %3339 = fmul fast float %3336, %3153
  br label %3340

; <label>:3340                                    ; preds = %3324, %3290, %3181, %3137
  %3341 = phi float [ %3286, %3181 ], [ %3162, %3290 ], [ %3162, %3324 ], [ 0x3FA23C0BE0000000, %3137 ]
  %3342 = phi float [ %3278, %3181 ], [ %3321, %3290 ], [ %3337, %3324 ], [ 1.000000e+00, %3137 ]
  %3343 = phi float [ %3279, %3181 ], [ %3322, %3290 ], [ %3338, %3324 ], [ 1.000000e+00, %3137 ]
  %3344 = phi float [ %3280, %3181 ], [ %3323, %3290 ], [ %3339, %3324 ], [ 1.000000e+00, %3137 ]
  %3345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3346 = extractvalue %dx.types.CBufRet.i32 %3345, 1
  %3347 = and i32 %3346, 1
  %3348 = icmp ne i32 %3347, 0
  %3349 = add i32 %48, 356
  %3350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3349, i32 undef)  ; BufferLoad(srv,index,wot)
  %3351 = extractvalue %dx.types.ResRet.i32 %3350, 0
  %3352 = and i32 %3351, 32
  %3353 = icmp ne i32 %3352, 0
  %3354 = and i1 %3348, %3353
  %3355 = select i1 %3354, float 1.000000e+00, float %3342
  %3356 = select i1 %3354, float 0x3FD3333340000000, float %3343
  %3357 = select i1 %3354, float 0x3FD3333340000000, float %3344
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = and i32 %3359, 32
  %3361 = icmp eq i32 %3360, 0
  br i1 %3361, label %3434, label %3362

; <label>:3362                                    ; preds = %3340
  %3363 = add i32 %48, 140
  %3364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3365 = extractvalue %dx.types.ResRet.i32 %3364, 0
  %3366 = add i32 %48, 388
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = add i32 %3368, 0
  %3370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3371 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3370, %dx.types.Handle %88, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3372 = extractvalue %dx.types.ResRet.f32 %3371, 0
  %3373 = extractvalue %dx.types.ResRet.f32 %3371, 1
  %3374 = extractvalue %dx.types.ResRet.f32 %3371, 2
  %3375 = extractvalue %dx.types.ResRet.f32 %3371, 3
  %3376 = and i32 %3365, 255
  %3377 = uitofp i32 %3376 to float
  %3378 = lshr i32 %3365, 8
  %3379 = and i32 %3378, 255
  %3380 = uitofp i32 %3379 to float
  %3381 = lshr i32 %3365, 16
  %3382 = and i32 %3381, 255
  %3383 = uitofp i32 %3382 to float
  %3384 = fmul fast float %3383, 0x3F70101000000000
  %3385 = fmul fast float %3372, %3377
  %3386 = fadd fast float %3385, %3380
  %3387 = fmul fast float %3386, 0x3F70101000000000
  %3388 = fadd fast float %3373, -5.000000e-01
  %3389 = fadd fast float %3375, -5.000000e-01
  %3390 = fmul fast float %3388, %3384
  %3391 = fmul fast float %3389, %3384
  %3392 = fadd fast float %3390, 5.000000e-01
  %3393 = fadd fast float %3391, 5.000000e-01
  %3394 = fmul fast float %3392, 2.000000e+00
  %3395 = fadd fast float %3394, -1.000000e+00
  %3396 = fmul fast float %3393, 2.000000e+00
  %3397 = fadd fast float %3396, -1.000000e+00
  %3398 = fadd fast float %3395, %3397
  %3399 = fmul fast float %3398, 5.000000e-01
  %3400 = fsub fast float %3395, %3397
  %3401 = fmul fast float %3400, 5.000000e-01
  %3402 = call float @dx.op.unary.f32(i32 6, float %3399)  ; FAbs(value)
  %3403 = fsub fast float 1.000000e+00, %3402
  %3404 = call float @dx.op.unary.f32(i32 6, float %3401)  ; FAbs(value)
  %3405 = fsub fast float %3403, %3404
  %3406 = call float @dx.op.dot3.f32(i32 55, float %3399, float %3401, float %3405, float %3399, float %3401, float %3405)  ; Dot3(ax,ay,az,bx,by,bz)
  %3407 = call float @dx.op.unary.f32(i32 25, float %3406)  ; Rsqrt(value)
  %3408 = fmul fast float %3399, %3407
  %3409 = fmul fast float %3401, %3407
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = and i32 %3411, 67108864
  %3413 = icmp eq i32 %3412, 0
  br i1 %3413, label %3430, label %3414

; <label>:3414                                    ; preds = %3362
  %3415 = add i32 %48, 328
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3415, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = and i32 %3417, 65535
  %3419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3418)  ; LegacyF16ToF32(value)
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = and i32 %3421, 65535
  %3423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3422)  ; LegacyF16ToF32(value)
  %3424 = lshr i32 %3417, 16
  %3425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3424)  ; LegacyF16ToF32(value)
  %3426 = fsub fast float %3387, %3425
  %3427 = fmul fast float %3426, %3419
  %3428 = fadd fast float %3427, %3423
  %3429 = call float @dx.op.unary.f32(i32 7, float %3428)  ; Saturate(value)
  br label %3430

; <label>:3430                                    ; preds = %3414, %3362
  %3431 = phi float [ %3429, %3414 ], [ %3387, %3362 ]
  %3432 = call float @dx.op.dot2.f32(i32 54, float %3408, float %3409, float %2851, float %2852)  ; Dot2(ax,ay,bx,by)
  %3433 = call float @dx.op.dot2.f32(i32 54, float %3408, float %3409, float %2853, float %2854)  ; Dot2(ax,ay,bx,by)
  br label %3434

; <label>:3434                                    ; preds = %3430, %3340
  %3435 = phi float [ %3431, %3430 ], [ 0x3FD6666660000000, %3340 ]
  %3436 = phi float [ %3432, %3430 ], [ 0.000000e+00, %3340 ]
  %3437 = phi float [ %3433, %3430 ], [ 0.000000e+00, %3340 ]
  %3438 = phi float [ %3374, %3430 ], [ 1.000000e+00, %3340 ]
  %3439 = add i32 %48, 208
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3439, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = lshr i32 %3441, 22
  %3443 = shl nuw nsw i32 %3442, 5
  %3444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3443)  ; LegacyF16ToF32(value)
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = and i32 %3446, 64
  %3448 = icmp eq i32 %3447, 0
  br i1 %3448, label %3482, label %3449

; <label>:3449                                    ; preds = %3434
  %3450 = add i32 %48, 404
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = add i32 %3452, 0
  %3454 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3453, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = and i32 %3456, 131072
  %3458 = icmp eq i32 %3457, 0
  %3459 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3454, %dx.types.Handle %88, float %2947, float %2948, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3460 = extractvalue %dx.types.ResRet.f32 %3459, 0
  %3461 = extractvalue %dx.types.ResRet.f32 %3459, 1
  %3462 = extractvalue %dx.types.ResRet.f32 %3459, 2
  %3463 = fmul fast float %3460, %359
  %3464 = fmul fast float %3461, %362
  %3465 = fmul fast float %3462, %365
  br i1 %3458, label %3472, label %3466

; <label>:3466                                    ; preds = %3449
  %3467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3468 = extractvalue %dx.types.CBufRet.f32 %3467, 0
  %3469 = fmul fast float %3468, %3463
  %3470 = fmul fast float %3468, %3464
  %3471 = fmul fast float %3468, %3465
  br label %3472

; <label>:3472                                    ; preds = %3466, %3449
  %3473 = phi float [ %3469, %3466 ], [ %3463, %3449 ]
  %3474 = phi float [ %3470, %3466 ], [ %3464, %3449 ]
  %3475 = phi float [ %3471, %3466 ], [ %3465, %3449 ]
  %3476 = fmul fast float %3473, %3444
  %3477 = select i1 %216, float %3476, float %3473
  %3478 = call float @dx.op.dot3.f32(i32 55, float %3477, float %3474, float %3475, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3479 = select i1 %216, float 0.000000e+00, float %3473
  %3480 = select i1 %216, float %3478, float %3474
  %3481 = select i1 %216, float 0.000000e+00, float %3475
  br label %3482

; <label>:3482                                    ; preds = %3472, %3434
  %3483 = phi float [ %3479, %3472 ], [ 0.000000e+00, %3434 ]
  %3484 = phi float [ %3480, %3472 ], [ 0.000000e+00, %3434 ]
  %3485 = phi float [ %3481, %3472 ], [ 0.000000e+00, %3434 ]
  %3486 = add i32 %48, 144
  %3487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3486, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.i32 %3487, 0
  %3489 = and i32 %3488, 255
  %3490 = uitofp i32 %3489 to float
  %3491 = lshr i32 %3488, 8
  %3492 = and i32 %3491, 255
  %3493 = uitofp i32 %3492 to float
  %3494 = call float @dx.op.dot3.f32(i32 55, float %3355, float %3356, float %3357, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3495 = fmul fast float %3493, %3494
  %3496 = fadd fast float %3495, %3490
  %3497 = fmul fast float %3496, 0x3F70101020000000
  %3498 = call float @dx.op.unary.f32(i32 7, float %3497)  ; Saturate(value)
  br i1 %2839, label %3499, label %3507

; <label>:3499                                    ; preds = %3482
  %3500 = fsub fast float 1.000000e+00, %3135
  %3501 = fmul fast float %3500, %2828
  %3502 = fmul fast float %3500, %2829
  %3503 = fmul fast float %3500, %2830
  %3504 = fmul fast float %3500, %2831
  %3505 = fmul fast float %3500, %2832
  %3506 = fmul fast float %3500, %2833
  br label %3507

; <label>:3507                                    ; preds = %3499, %3482
  %3508 = phi float [ %3501, %3499 ], [ %2828, %3482 ]
  %3509 = phi float [ %3502, %3499 ], [ %2829, %3482 ]
  %3510 = phi float [ %3503, %3499 ], [ %2830, %3482 ]
  %3511 = phi float [ %3504, %3499 ], [ %2831, %3482 ]
  %3512 = phi float [ %3505, %3499 ], [ %2832, %3482 ]
  %3513 = phi float [ %3506, %3499 ], [ %2833, %3482 ]
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = and i32 %3515, 3
  %3517 = icmp eq i32 %3516, 3
  br i1 %3517, label %3596, label %3518

; <label>:3518                                    ; preds = %3507
  %3519 = and i32 %3515, 16
  %3520 = icmp ne i32 %3519, 0
  %3521 = select i1 %3520, float %3135, float 0.000000e+00
  %3522 = icmp eq i32 %3516, 0
  br i1 %3522, label %3523, label %3551

; <label>:3523                                    ; preds = %3518
  %3524 = and i32 %3515, 64
  %3525 = icmp ne i32 %3524, 0
  %3526 = select i1 %3525, float %3135, float 0.000000e+00
  %3527 = fsub fast float %3355, %3508
  %3528 = fsub fast float %3356, %3509
  %3529 = fsub fast float %3357, %3510
  %3530 = fmul fast float %3521, %3527
  %3531 = fmul fast float %3521, %3528
  %3532 = fmul fast float %3521, %3529
  %3533 = fadd fast float %3530, %3508
  %3534 = fadd fast float %3531, %3509
  %3535 = fadd fast float %3532, %3510
  %3536 = fsub fast float %3341, %2834
  %3537 = fmul fast float %3521, %3536
  %3538 = fadd fast float %3537, %2834
  %3539 = fsub fast float %3483, %3511
  %3540 = fsub fast float %3484, %3512
  %3541 = fsub fast float %3485, %3513
  %3542 = fmul fast float %3526, %3539
  %3543 = fmul fast float %3526, %3540
  %3544 = fmul fast float %3526, %3541
  %3545 = fadd fast float %3542, %3511
  %3546 = fadd fast float %3543, %3512
  %3547 = fadd fast float %3544, %3513
  %3548 = fsub fast float %3498, %2837
  %3549 = fmul fast float %3521, %3548
  %3550 = fadd fast float %3549, %2837
  br label %3596

; <label>:3551                                    ; preds = %3518
  %3552 = icmp eq i32 %3516, 1
  br i1 %3552, label %3553, label %3566

; <label>:3553                                    ; preds = %3551
  %3554 = fadd fast float %3355, -1.000000e+00
  %3555 = fadd fast float %3356, -1.000000e+00
  %3556 = fadd fast float %3357, -1.000000e+00
  %3557 = fmul fast float %3521, %3554
  %3558 = fmul fast float %3521, %3555
  %3559 = fmul fast float %3521, %3556
  %3560 = fadd fast float %3557, 1.000000e+00
  %3561 = fadd fast float %3558, 1.000000e+00
  %3562 = fadd fast float %3559, 1.000000e+00
  %3563 = fmul fast float %3560, %3508
  %3564 = fmul fast float %3561, %3509
  %3565 = fmul fast float %3562, %3510
  br label %3596

; <label>:3566                                    ; preds = %3551
  %3567 = icmp eq i32 %3516, 2
  br i1 %3567, label %3568, label %3596

; <label>:3568                                    ; preds = %3566
  %3569 = call float @dx.op.unary.f32(i32 24, float %3355)  ; Sqrt(value)
  %3570 = call float @dx.op.unary.f32(i32 24, float %3356)  ; Sqrt(value)
  %3571 = call float @dx.op.unary.f32(i32 24, float %3357)  ; Sqrt(value)
  %3572 = fadd fast float %3569, -5.000000e-01
  %3573 = fadd fast float %3570, -5.000000e-01
  %3574 = fadd fast float %3571, -5.000000e-01
  %3575 = fmul fast float %3572, %3521
  %3576 = fmul fast float %3573, %3521
  %3577 = fmul fast float %3574, %3521
  %3578 = fadd fast float %3575, 5.000000e-01
  %3579 = fadd fast float %3576, 5.000000e-01
  %3580 = fadd fast float %3577, 5.000000e-01
  %3581 = fmul fast float %3578, 2.000000e+00
  %3582 = fsub fast float 1.000000e+00, %3581
  %3583 = fmul fast float %3582, %3508
  %3584 = fadd fast float %3583, %3581
  %3585 = fmul fast float %3584, %3508
  %3586 = fmul fast float %3579, 2.000000e+00
  %3587 = fsub fast float 1.000000e+00, %3586
  %3588 = fmul fast float %3587, %3509
  %3589 = fadd fast float %3588, %3586
  %3590 = fmul fast float %3589, %3509
  %3591 = fmul fast float %3580, 2.000000e+00
  %3592 = fsub fast float 1.000000e+00, %3591
  %3593 = fmul fast float %3592, %3510
  %3594 = fadd fast float %3593, %3591
  %3595 = fmul fast float %3594, %3510
  br label %3596

; <label>:3596                                    ; preds = %3568, %3566, %3553, %3523, %3507
  %3597 = phi float [ %3508, %3507 ], [ %3585, %3568 ], [ %3508, %3566 ], [ %3563, %3553 ], [ %3533, %3523 ]
  %3598 = phi float [ %3509, %3507 ], [ %3590, %3568 ], [ %3509, %3566 ], [ %3564, %3553 ], [ %3534, %3523 ]
  %3599 = phi float [ %3510, %3507 ], [ %3595, %3568 ], [ %3510, %3566 ], [ %3565, %3553 ], [ %3535, %3523 ]
  %3600 = phi float [ %3511, %3507 ], [ %3511, %3568 ], [ %3511, %3566 ], [ %3511, %3553 ], [ %3545, %3523 ]
  %3601 = phi float [ %3512, %3507 ], [ %3512, %3568 ], [ %3512, %3566 ], [ %3512, %3553 ], [ %3546, %3523 ]
  %3602 = phi float [ %3513, %3507 ], [ %3513, %3568 ], [ %3513, %3566 ], [ %3513, %3553 ], [ %3547, %3523 ]
  %3603 = phi float [ %2834, %3507 ], [ %2834, %3568 ], [ %2834, %3566 ], [ %2834, %3553 ], [ %3538, %3523 ]
  %3604 = phi float [ %2837, %3507 ], [ %2837, %3568 ], [ %2837, %3566 ], [ %2837, %3553 ], [ %3550, %3523 ]
  %3605 = and i32 %3515, 12
  %3606 = icmp eq i32 %3605, 12
  br i1 %3606, label %3679, label %3607

; <label>:3607                                    ; preds = %3596
  %3608 = and i32 %3515, 2097184
  %3609 = icmp eq i32 %3608, 2097184
  %3610 = select i1 %3609, float %3135, float 0.000000e+00
  %3611 = and i32 %3515, 4194336
  %3612 = icmp eq i32 %3611, 4194336
  %3613 = select i1 %3612, float %3135, float 0.000000e+00
  %3614 = and i32 %3515, 8388640
  %3615 = icmp eq i32 %3614, 8388640
  %3616 = select i1 %3615, float %3135, float 0.000000e+00
  %3617 = icmp eq i32 %3605, 0
  br i1 %3617, label %3618, label %3631

; <label>:3618                                    ; preds = %3607
  %3619 = fsub fast float %3436, %2826
  %3620 = fsub fast float %3437, %2827
  %3621 = fmul fast float %3610, %3619
  %3622 = fmul fast float %3610, %3620
  %3623 = fadd fast float %3621, %2826
  %3624 = fadd fast float %3622, %2827
  %3625 = fsub fast float %3438, %2836
  %3626 = fmul fast float %3613, %3625
  %3627 = fadd fast float %3626, %2836
  %3628 = fsub fast float %3435, %2835
  %3629 = fmul fast float %3616, %3628
  %3630 = fadd fast float %3629, %2835
  br label %3679

; <label>:3631                                    ; preds = %3607
  %3632 = icmp eq i32 %3605, 4
  br i1 %3632, label %3633, label %3665

; <label>:3633                                    ; preds = %3631
  %3634 = fmul fast float %3610, %3436
  %3635 = fmul fast float %3610, %3437
  %3636 = fadd fast float %3634, %2826
  %3637 = fadd fast float %3635, %2827
  %3638 = call float @dx.op.binary.f32(i32 36, float %2836, float %3438)  ; FMin(a,b)
  %3639 = fsub fast float %3638, %2836
  %3640 = fmul fast float %3639, %3613
  %3641 = fadd fast float %3640, %2836
  %3642 = fadd fast float %3435, %2835
  %3643 = fmul fast float %3642, 0x3FF337FAE0000000
  %3644 = fmul fast float %2835, %2835
  %3645 = fmul fast float %3435, %3435
  %3646 = fadd fast float %3645, %3644
  %3647 = fmul fast float %3646, 0x3FE5152B00000000
  %3648 = fmul fast float %2835, 0xBFCC1F85E0000000
  %3649 = fmul fast float %3648, %3435
  %3650 = fadd fast float %3649, 0xBFE1363700000000
  %3651 = fadd fast float %3650, %3643
  %3652 = fsub fast float %3651, %3647
  %3653 = fmul fast float %3642, 0x3FBA6F0D00000000
  %3654 = fmul fast float %3646, 0x3FD0432880000000
  %3655 = fmul fast float %2835, 0xBFEF110800000000
  %3656 = fmul fast float %3655, %3435
  %3657 = fadd fast float %3656, 1.000000e+00
  %3658 = fsub fast float %3657, %3653
  %3659 = fadd fast float %3658, %3654
  %3660 = fdiv fast float %3652, %3659
  %3661 = call float @dx.op.unary.f32(i32 7, float %3660)  ; Saturate(value)
  %3662 = fsub fast float %3661, %2835
  %3663 = fmul fast float %3662, %3616
  %3664 = fadd fast float %3663, %2835
  br label %3679

; <label>:3665                                    ; preds = %3631
  %3666 = icmp eq i32 %3605, 8
  br i1 %3666, label %3667, label %3679

; <label>:3667                                    ; preds = %3665
  %3668 = fmul fast float %3610, %3436
  %3669 = fmul fast float %3610, %3437
  %3670 = fadd fast float %3668, %2826
  %3671 = fadd fast float %3669, %2827
  %3672 = call float @dx.op.binary.f32(i32 36, float %2836, float %3438)  ; FMin(a,b)
  %3673 = fsub fast float %3672, %2836
  %3674 = fmul fast float %3673, %3613
  %3675 = fadd fast float %3674, %2836
  %3676 = fsub fast float %3435, %2835
  %3677 = fmul fast float %3616, %3676
  %3678 = fadd fast float %3677, %2835
  br label %3679

; <label>:3679                                    ; preds = %3667, %3665, %3633, %3618, %3596, %3134, %2838, %2825
  %3680 = phi float [ %2826, %3596 ], [ %2826, %3134 ], [ %2826, %2825 ], [ %2826, %2838 ], [ %3623, %3618 ], [ %3636, %3633 ], [ %2826, %3665 ], [ %3670, %3667 ]
  %3681 = phi float [ %2827, %3596 ], [ %2827, %3134 ], [ %2827, %2825 ], [ %2827, %2838 ], [ %3624, %3618 ], [ %3637, %3633 ], [ %2827, %3665 ], [ %3671, %3667 ]
  %3682 = phi float [ %3597, %3596 ], [ %2828, %3134 ], [ %2828, %2825 ], [ %2828, %2838 ], [ %3597, %3618 ], [ %3597, %3633 ], [ %3597, %3665 ], [ %3597, %3667 ]
  %3683 = phi float [ %3598, %3596 ], [ %2829, %3134 ], [ %2829, %2825 ], [ %2829, %2838 ], [ %3598, %3618 ], [ %3598, %3633 ], [ %3598, %3665 ], [ %3598, %3667 ]
  %3684 = phi float [ %3599, %3596 ], [ %2830, %3134 ], [ %2830, %2825 ], [ %2830, %2838 ], [ %3599, %3618 ], [ %3599, %3633 ], [ %3599, %3665 ], [ %3599, %3667 ]
  %3685 = phi float [ %3600, %3596 ], [ %2831, %3134 ], [ %2831, %2825 ], [ %2831, %2838 ], [ %3600, %3618 ], [ %3600, %3633 ], [ %3600, %3665 ], [ %3600, %3667 ]
  %3686 = phi float [ %3601, %3596 ], [ %2832, %3134 ], [ %2832, %2825 ], [ %2832, %2838 ], [ %3601, %3618 ], [ %3601, %3633 ], [ %3601, %3665 ], [ %3601, %3667 ]
  %3687 = phi float [ %3602, %3596 ], [ %2833, %3134 ], [ %2833, %2825 ], [ %2833, %2838 ], [ %3602, %3618 ], [ %3602, %3633 ], [ %3602, %3665 ], [ %3602, %3667 ]
  %3688 = phi float [ %3603, %3596 ], [ %2834, %3134 ], [ %2834, %2825 ], [ %2834, %2838 ], [ %3603, %3618 ], [ %3603, %3633 ], [ %3603, %3665 ], [ %3603, %3667 ]
  %3689 = phi float [ %2835, %3596 ], [ %2835, %3134 ], [ %2835, %2825 ], [ %2835, %2838 ], [ %3630, %3618 ], [ %3664, %3633 ], [ %2835, %3665 ], [ %3678, %3667 ]
  %3690 = phi float [ %2836, %3596 ], [ %2836, %3134 ], [ %2836, %2825 ], [ %2836, %2838 ], [ %3627, %3618 ], [ %3641, %3633 ], [ %2836, %3665 ], [ %3675, %3667 ]
  %3691 = phi float [ %3604, %3596 ], [ %2837, %3134 ], [ %2837, %2825 ], [ %2837, %2838 ], [ %3604, %3618 ], [ %3604, %3633 ], [ %3604, %3665 ], [ %3604, %3667 ]
  %3692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3693 = extractvalue %dx.types.CBufRet.f32 %3692, 0
  %3694 = call float @dx.op.dot2.f32(i32 54, float %3680, float %3681, float %3680, float %3681)  ; Dot2(ax,ay,bx,by)
  %3695 = fmul fast float %3694, 0x3FE3333340000000
  %3696 = fsub fast float 1.000000e+00, %3695
  %3697 = call float @dx.op.dot3.f32(i32 55, float %3680, float %3681, float %3696, float %3680, float %3681, float %3696)  ; Dot3(ax,ay,az,bx,by,bz)
  %3698 = call float @dx.op.unary.f32(i32 25, float %3697)  ; Rsqrt(value)
  %3699 = fmul fast float %3698, %3680
  %3700 = fmul fast float %3698, %3681
  %3701 = fmul fast float %3696, %3698
  %3702 = fmul fast float %3701, %99
  %3703 = fmul fast float %3701, %100
  %3704 = fmul fast float %3701, %101
  %3705 = fmul fast float %3699, %64
  %3706 = fmul fast float %3699, %65
  %3707 = fmul fast float %3699, %66
  %3708 = fadd fast float %3702, %3705
  %3709 = fadd fast float %3703, %3706
  %3710 = fadd fast float %3704, %3707
  %3711 = fmul fast float %111, %3700
  %3712 = fmul fast float %112, %3700
  %3713 = fmul fast float %113, %3700
  %3714 = fadd fast float %3708, %3711
  %3715 = fadd fast float %3709, %3712
  %3716 = fadd fast float %3710, %3713
  %3717 = call float @dx.op.dot3.f32(i32 55, float %3714, float %3715, float %3716, float %3714, float %3715, float %3716)  ; Dot3(ax,ay,az,bx,by,bz)
  %3718 = call float @dx.op.unary.f32(i32 25, float %3717)  ; Rsqrt(value)
  %3719 = fmul fast float %3714, %3718
  %3720 = fmul fast float %3715, %3718
  %3721 = fmul fast float %3716, %3718
  %3722 = and i32 %50, 1
  %3723 = icmp eq i32 %3722, 0
  br i1 %3723, label %3724, label %4236

; <label>:3724                                    ; preds = %3679
  %3725 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %3726 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %3727 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %3728 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %3729 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %3730 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %3731 = fadd fast float %3725, %155
  %3732 = fadd fast float %3726, %156
  %3733 = fadd fast float %3727, %157
  %3734 = fadd fast float %3728, %155
  %3735 = fadd fast float %3729, %156
  %3736 = fadd fast float %3730, %157
  %3737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.f32 %3737, 0
  %3739 = extractvalue %dx.types.CBufRet.f32 %3737, 1
  %3740 = extractvalue %dx.types.CBufRet.f32 %3737, 2
  %3741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3742 = extractvalue %dx.types.CBufRet.f32 %3741, 2
  %3743 = extractvalue %dx.types.CBufRet.f32 %3741, 3
  %3744 = fmul fast float %3738, %92
  %3745 = fmul fast float %3744, %3742
  %3746 = fmul fast float %3739, %93
  %3747 = fmul fast float %3746, %3743
  %3748 = fptoui float %3745 to i32
  %3749 = fptoui float %3747 to i32
  %3750 = fadd fast float %3738, -1.000000e+00
  %3751 = fadd fast float %3739, -1.000000e+00
  %3752 = fptoui float %3750 to i32
  %3753 = fptoui float %3751 to i32
  %3754 = call i32 @dx.op.binary.i32(i32 40, i32 %3748, i32 %3752)  ; UMin(a,b)
  %3755 = call i32 @dx.op.binary.i32(i32 40, i32 %3749, i32 %3753)  ; UMin(a,b)
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 2
  %3758 = extractvalue %dx.types.CBufRet.f32 %3756, 3
  %3759 = fmul fast float %3757, %80
  %3760 = fsub fast float %3759, %3758
  %3761 = fadd fast float %3740, -1.000000e+00
  %3762 = call float @dx.op.binary.f32(i32 36, float %3760, float %3761)  ; FMin(a,b)
  %3763 = fptoui float %3762 to i32
  %3764 = fptoui float %3738 to i32
  %3765 = fptoui float %3739 to i32
  %3766 = mul i32 %3763, %3765
  %3767 = add i32 %3766, %3755
  %3768 = mul i32 %3767, %3764
  %3769 = add i32 %3768, %3754
  %3770 = shl i32 %3769, 2
  %3771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3772 = extractvalue %dx.types.ResRet.i32 %3771, 0
  %3773 = and i32 %3772, 1023
  %3774 = lshr i32 %3772, 10
  %3775 = icmp eq i32 %3773, 0
  br i1 %3775, label %4204, label %3776

; <label>:3776                                    ; preds = %3724
  %3777 = and i32 %3772, 1023
  br label %3778

; <label>:3778                                    ; preds = %3905, %3776
  %3779 = phi i32 [ %3855, %3905 ], [ 0, %3776 ]
  %3780 = phi float [ %3906, %3905 ], [ 0.000000e+00, %3776 ]
  %3781 = phi float [ %3907, %3905 ], [ %1126, %3776 ]
  %3782 = phi float [ %3908, %3905 ], [ %3693, %3776 ]
  %3783 = phi float [ %3909, %3905 ], [ %3691, %3776 ]
  %3784 = phi float [ %3910, %3905 ], [ 0.000000e+00, %3776 ]
  %3785 = phi float [ %3911, %3905 ], [ 0.000000e+00, %3776 ]
  %3786 = phi float [ %3912, %3905 ], [ %3685, %3776 ]
  %3787 = phi float [ %3913, %3905 ], [ %3686, %3776 ]
  %3788 = phi float [ %3914, %3905 ], [ %3687, %3776 ]
  %3789 = phi float [ %3915, %3905 ], [ %3719, %3776 ]
  %3790 = phi float [ %3916, %3905 ], [ %3720, %3776 ]
  %3791 = phi float [ %3917, %3905 ], [ %3721, %3776 ]
  %3792 = phi float [ %3918, %3905 ], [ %3690, %3776 ]
  %3793 = phi float [ %3919, %3905 ], [ %3689, %3776 ]
  %3794 = phi float [ %3920, %3905 ], [ 0.000000e+00, %3776 ]
  %3795 = phi float [ %3921, %3905 ], [ %3688, %3776 ]
  %3796 = phi float [ %3922, %3905 ], [ %3682, %3776 ]
  %3797 = phi float [ %3923, %3905 ], [ %3683, %3776 ]
  %3798 = phi float [ %3924, %3905 ], [ %3684, %3776 ]
  %3799 = add nuw nsw i32 %3779, %3774
  %3800 = shl i32 %3799, 2
  %3801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3802 = extractvalue %dx.types.ResRet.i32 %3801, 0
  %3803 = shl i32 %3802, 8
  %3804 = or i32 %3803, 48
  %3805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = extractvalue %dx.types.ResRet.f32 %3805, 1
  %3808 = extractvalue %dx.types.ResRet.f32 %3805, 2
  %3809 = extractvalue %dx.types.ResRet.f32 %3805, 3
  %3810 = or i32 %3803, 64
  %3811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3812 = extractvalue %dx.types.ResRet.i32 %3811, 0
  %3813 = extractvalue %dx.types.ResRet.i32 %3811, 1
  %3814 = or i32 %3803, 80
  %3815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3814, i32 undef)  ; BufferLoad(srv,index,wot)
  %3816 = extractvalue %dx.types.ResRet.f32 %3815, 2
  %3817 = extractvalue %dx.types.ResRet.f32 %3815, 3
  %3818 = or i32 %3803, 96
  %3819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3822 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3823 = extractvalue %dx.types.ResRet.f32 %3819, 3
  %3824 = or i32 %3803, 112
  %3825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3824, i32 undef)  ; BufferLoad(srv,index,wot)
  %3826 = extractvalue %dx.types.ResRet.f32 %3825, 2
  %3827 = or i32 %3803, 128
  %3828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3830 = extractvalue %dx.types.ResRet.f32 %3828, 1
  %3831 = extractvalue %dx.types.ResRet.f32 %3828, 2
  %3832 = extractvalue %dx.types.ResRet.f32 %3828, 3
  %3833 = or i32 %3803, 144
  %3834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3835 = extractvalue %dx.types.ResRet.f32 %3834, 0
  %3836 = extractvalue %dx.types.ResRet.f32 %3834, 1
  %3837 = extractvalue %dx.types.ResRet.f32 %3834, 2
  %3838 = extractvalue %dx.types.ResRet.f32 %3834, 3
  %3839 = or i32 %3803, 160
  %3840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3841 = extractvalue %dx.types.ResRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.ResRet.f32 %3840, 1
  %3843 = extractvalue %dx.types.ResRet.f32 %3840, 2
  %3844 = extractvalue %dx.types.ResRet.f32 %3840, 3
  %3845 = or i32 %3803, 192
  %3846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.i32 %3846, 0
  %3848 = or i32 %3803, 208
  %3849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.f32 %3849, 0
  %3851 = or i32 %3803, 248
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.ResRet.f32 %3852, 1
  %3855 = add nuw nsw i32 %3779, 1
  %3856 = bitcast float %3809 to i32
  %3857 = and i32 %3856, 512
  %3858 = icmp eq i32 %3857, 0
  %3859 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.f32 %3859, 0
  %3861 = extractvalue %dx.types.ResRet.f32 %3859, 1
  %3862 = extractvalue %dx.types.ResRet.f32 %3859, 2
  %3863 = extractvalue %dx.types.ResRet.f32 %3859, 3
  %3864 = call float @dx.op.dot4.f32(i32 56, float %3860, float %3861, float %3862, float %3863, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3865 = or i32 %3803, 16
  %3866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3865, i32 undef)  ; BufferLoad(srv,index,wot)
  %3867 = extractvalue %dx.types.ResRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.ResRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.ResRet.f32 %3866, 2
  %3870 = extractvalue %dx.types.ResRet.f32 %3866, 3
  %3871 = call float @dx.op.dot4.f32(i32 56, float %3867, float %3868, float %3869, float %3870, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3872 = or i32 %3803, 32
  %3873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.ResRet.f32 %3873, 1
  %3876 = extractvalue %dx.types.ResRet.f32 %3873, 2
  %3877 = extractvalue %dx.types.ResRet.f32 %3873, 3
  %3878 = call float @dx.op.dot4.f32(i32 56, float %3874, float %3875, float %3876, float %3877, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3879 = call float @dx.op.unary.f32(i32 27, float %3864)  ; Round_ni(value)
  %3880 = call float @dx.op.unary.f32(i32 6, float %3879)  ; FAbs(value)
  %3881 = call float @dx.op.unary.f32(i32 27, float %3871)  ; Round_ni(value)
  %3882 = call float @dx.op.unary.f32(i32 6, float %3881)  ; FAbs(value)
  %3883 = call float @dx.op.unary.f32(i32 6, float %3878)  ; FAbs(value)
  %3884 = call float @dx.op.unary.f32(i32 27, float %3883)  ; Round_ni(value)
  %3885 = fadd fast float %3882, %3880
  %3886 = fadd fast float %3885, %3884
  %3887 = fcmp fast oeq float %3886, 0.000000e+00
  %3888 = call float @dx.op.dot4.f32(i32 56, float %3860, float %3861, float %3862, float %3863, float %3731, float %3732, float %3733, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3889 = call float @dx.op.dot4.f32(i32 56, float %3867, float %3868, float %3869, float %3870, float %3731, float %3732, float %3733, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3890 = call float @dx.op.dot4.f32(i32 56, float %3860, float %3861, float %3862, float %3863, float %3734, float %3735, float %3736, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3891 = call float @dx.op.dot4.f32(i32 56, float %3867, float %3868, float %3869, float %3870, float %3734, float %3735, float %3736, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3892 = fsub fast float %3888, %3864
  %3893 = fsub fast float %3890, %3864
  %3894 = fsub fast float %3889, %3871
  %3895 = fsub fast float %3891, %3871
  %3896 = call float @dx.op.dot3.f32(i32 55, float %3806, float %3807, float %3808, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %3897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.f32 %3897, 2
  %3899 = fadd fast float %3898, %3896
  %3900 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3897, 0
  %3902 = fcmp fast ogt float %3900, %3901
  %3903 = and i1 %3887, %3902
  %3904 = and i1 %3858, %3903
  br i1 %3904, label %3926, label %3905

; <label>:3905                                    ; preds = %4190, %4007, %3926, %3778
  %3906 = phi float [ %3780, %3926 ], [ %4010, %4007 ], [ %4010, %4190 ], [ %3780, %3778 ]
  %3907 = phi float [ %3781, %3926 ], [ %3781, %4007 ], [ %4165, %4190 ], [ %3781, %3778 ]
  %3908 = phi float [ %3782, %3926 ], [ %3782, %4007 ], [ %4164, %4190 ], [ %3782, %3778 ]
  %3909 = phi float [ %3783, %3926 ], [ %3783, %4007 ], [ %4162, %4190 ], [ %3783, %3778 ]
  %3910 = phi float [ %3784, %3926 ], [ %3784, %4007 ], [ %4134, %4190 ], [ %3784, %3778 ]
  %3911 = phi float [ %3785, %3926 ], [ %3785, %4007 ], [ %4132, %4190 ], [ %3785, %3778 ]
  %3912 = phi float [ %3786, %3926 ], [ %3786, %4007 ], [ %4200, %4190 ], [ %3786, %3778 ]
  %3913 = phi float [ %3787, %3926 ], [ %3787, %4007 ], [ %4201, %4190 ], [ %3787, %3778 ]
  %3914 = phi float [ %3788, %3926 ], [ %3788, %4007 ], [ %4202, %4190 ], [ %3788, %3778 ]
  %3915 = phi float [ %3789, %3926 ], [ %3789, %4007 ], [ %4113, %4190 ], [ %3789, %3778 ]
  %3916 = phi float [ %3790, %3926 ], [ %3790, %4007 ], [ %4114, %4190 ], [ %3790, %3778 ]
  %3917 = phi float [ %3791, %3926 ], [ %3791, %4007 ], [ %4115, %4190 ], [ %3791, %3778 ]
  %3918 = phi float [ %3792, %3926 ], [ %3792, %4007 ], [ %4142, %4190 ], [ %3792, %3778 ]
  %3919 = phi float [ %3793, %3926 ], [ %3793, %4007 ], [ %4139, %4190 ], [ %3793, %3778 ]
  %3920 = phi float [ %3794, %3926 ], [ %3794, %4007 ], [ %4136, %4190 ], [ %3794, %3778 ]
  %3921 = phi float [ %3795, %3926 ], [ %3795, %4007 ], [ %4130, %4190 ], [ %3795, %3778 ]
  %3922 = phi float [ %3796, %3926 ], [ %3796, %4007 ], [ %4125, %4190 ], [ %3796, %3778 ]
  %3923 = phi float [ %3797, %3926 ], [ %3797, %4007 ], [ %4126, %4190 ], [ %3797, %3778 ]
  %3924 = phi float [ %3798, %3926 ], [ %3798, %4007 ], [ %4127, %4190 ], [ %3798, %3778 ]
  %3925 = icmp eq i32 %3855, %3777
  br i1 %3925, label %4203, label %3778

; <label>:3926                                    ; preds = %3778
  %3927 = extractvalue %dx.types.ResRet.f32 %3825, 3
  %3928 = extractvalue %dx.types.ResRet.f32 %3825, 1
  %3929 = extractvalue %dx.types.ResRet.f32 %3825, 0
  %3930 = extractvalue %dx.types.ResRet.f32 %3815, 1
  %3931 = extractvalue %dx.types.ResRet.f32 %3815, 0
  %3932 = extractvalue %dx.types.ResRet.i32 %3811, 3
  %3933 = extractvalue %dx.types.ResRet.i32 %3811, 2
  %3934 = add i32 %3932, 0
  %3935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3934, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3937 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3935, %dx.types.Handle %3936, float %3864, float %3871, float undef, float undef, i32 0, i32 0, i32 undef, float %3892, float %3894, float undef, float %3893, float %3895, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = fmul fast float %3938, %3931
  %3940 = fadd fast float %3939, %3930
  %3941 = call float @dx.op.unary.f32(i32 7, float %3940)  ; Saturate(value)
  %3942 = fmul fast float %3864, %3820
  %3943 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %3871, float %3942)  ; FMad(a,b,c)
  %3944 = fadd fast float %3943, %3929
  %3945 = fmul fast float %3864, %3822
  %3946 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %3871, float %3945)  ; FMad(a,b,c)
  %3947 = fadd fast float %3946, %3928
  %3948 = fmul fast float %3892, %3820
  %3949 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %3894, float %3948)  ; FMad(a,b,c)
  %3950 = fmul fast float %3892, %3822
  %3951 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %3894, float %3950)  ; FMad(a,b,c)
  %3952 = fmul fast float %3893, %3820
  %3953 = call float @dx.op.tertiary.f32(i32 46, float %3821, float %3895, float %3952)  ; FMad(a,b,c)
  %3954 = fmul fast float %3893, %3822
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3823, float %3895, float %3954)  ; FMad(a,b,c)
  %3956 = add i32 %3933, 0
  %3957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3956, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3958 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3957, %dx.types.Handle %3936, float %3944, float %3947, float undef, float undef, i32 0, i32 0, i32 undef, float %3949, float %3951, float undef, float %3953, float %3955, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3959 = extractvalue %dx.types.ResRet.f32 %3958, 0
  %3960 = and i32 %3856, 1024
  %3961 = icmp ne i32 %3960, 0
  %3962 = fcmp fast ogt float %3959, 0x3FE0101020000000
  %3963 = uitofp i1 %3962 to float
  %3964 = select i1 %3961, float %3963, float %3959
  %3965 = and i32 %3856, 8192
  %3966 = icmp ne i32 %3965, 0
  %3967 = select i1 %3966, float %3927, float 1.000000e+00
  %3968 = fmul fast float %3864, 2.000000e+00
  %3969 = fadd fast float %3968, -1.000000e+00
  %3970 = call float @dx.op.unary.f32(i32 6, float %3969)  ; FAbs(value)
  %3971 = fmul fast float %3970, %3853
  %3972 = fsub fast float %3971, %3853
  %3973 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3974 = fmul fast float %3871, 2.000000e+00
  %3975 = fadd fast float %3974, -1.000000e+00
  %3976 = call float @dx.op.unary.f32(i32 6, float %3975)  ; FAbs(value)
  %3977 = fmul fast float %3976, %3854
  %3978 = fsub fast float %3977, %3854
  %3979 = call float @dx.op.unary.f32(i32 7, float %3978)  ; Saturate(value)
  %3980 = fmul fast float %3883, %3816
  %3981 = fsub fast float %3980, %3816
  %3982 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3983 = fmul fast float %3941, %3967
  %3984 = fmul fast float %3983, %3938
  %3985 = fmul fast float %3984, %3973
  %3986 = fmul fast float %3985, %3964
  %3987 = fmul fast float %3986, %3979
  %3988 = fmul fast float %3987, %3982
  %3989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3990 = extractvalue %dx.types.CBufRet.f32 %3989, 1
  %3991 = extractvalue %dx.types.CBufRet.f32 %3989, 0
  %3992 = fsub fast float %3900, %3991
  %3993 = fmul fast float %3992, %3990
  %3994 = call float @dx.op.unary.f32(i32 7, float %3993)  ; Saturate(value)
  %3995 = fmul fast float %3988, %3817
  %3996 = fadd fast float %3988, %3817
  %3997 = fmul fast float %3996, %3826
  %3998 = fsub fast float %3997, %3826
  %3999 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4000 = and i32 %3856, 128
  %4001 = icmp ne i32 %4000, 0
  %4002 = select i1 %4001, float %3999, float %3995
  %4003 = fmul fast float %4002, %3994
  %4004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.f32 %4004, 0
  %4006 = fcmp fast ugt float %4003, %4005
  br i1 %4006, label %4007, label %3905

; <label>:4007                                    ; preds = %3926
  %4008 = select i1 %3966, float %4003, float 0.000000e+00
  %4009 = fadd fast float %4008, %3780
  %4010 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  br i1 %3966, label %3905, label %4011

; <label>:4011                                    ; preds = %4007
  %4012 = and i32 %3856, 4
  %4013 = and i32 %3856, 8
  %4014 = add i32 %3812, 0
  %4015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4014, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4017 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4015, %dx.types.Handle %4016, float %3944, float %3947, float undef, float undef, i32 0, i32 0, i32 undef, float %3949, float %3951, float undef, float %3953, float %3955, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4018 = extractvalue %dx.types.ResRet.f32 %4017, 0
  %4019 = extractvalue %dx.types.ResRet.f32 %4017, 1
  %4020 = extractvalue %dx.types.ResRet.f32 %4017, 2
  %4021 = extractvalue %dx.types.ResRet.f32 %4017, 3
  %4022 = bitcast float %3838 to i32
  %4023 = and i32 %4022, 255
  %4024 = uitofp i32 %4023 to float
  %4025 = lshr i32 %4022, 8
  %4026 = and i32 %4025, 255
  %4027 = uitofp i32 %4026 to float
  %4028 = fmul fast float %4021, %4024
  %4029 = fadd fast float %4028, %4027
  %4030 = fmul fast float %4029, 0x3F70101000000000
  %4031 = add i32 %3813, 0
  %4032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4031, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4033 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4032, %dx.types.Handle %4016, float %3944, float %3947, float undef, float undef, i32 0, i32 0, i32 undef, float %3949, float %3951, float undef, float %3953, float %3955, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4034 = extractvalue %dx.types.ResRet.f32 %4033, 0
  %4035 = extractvalue %dx.types.ResRet.f32 %4033, 1
  %4036 = extractvalue %dx.types.ResRet.f32 %4033, 2
  %4037 = extractvalue %dx.types.ResRet.f32 %4033, 3
  %4038 = bitcast float %3832 to i32
  %4039 = and i32 %4038, 255
  %4040 = uitofp i32 %4039 to float
  %4041 = lshr i32 %4038, 8
  %4042 = and i32 %4041, 255
  %4043 = uitofp i32 %4042 to float
  %4044 = lshr i32 %4038, 16
  %4045 = and i32 %4044, 255
  %4046 = uitofp i32 %4045 to float
  %4047 = fmul fast float %4046, 0x3F70101000000000
  %4048 = fmul fast float %4034, %4040
  %4049 = fadd fast float %4048, %4043
  %4050 = fmul fast float %4049, 0x3F70101000000000
  %4051 = fadd fast float %4035, -5.000000e-01
  %4052 = fadd fast float %4037, -5.000000e-01
  %4053 = fmul fast float %4051, %4047
  %4054 = fmul fast float %4052, %4047
  %4055 = fadd fast float %4053, 5.000000e-01
  %4056 = fadd fast float %4054, 5.000000e-01
  %4057 = fmul fast float %4018, %3841
  %4058 = fmul fast float %4019, %3842
  %4059 = fmul fast float %4020, %3843
  %4060 = fmul fast float %4055, 2.000000e+00
  %4061 = fadd fast float %4060, -1.000000e+00
  %4062 = fmul fast float %4056, 2.000000e+00
  %4063 = fadd fast float %4062, -1.000000e+00
  %4064 = fadd fast float %4061, %4063
  %4065 = fmul fast float %4064, 5.000000e-01
  %4066 = fsub fast float %4061, %4063
  %4067 = fmul fast float %4066, 5.000000e-01
  %4068 = call float @dx.op.unary.f32(i32 6, float %4065)  ; FAbs(value)
  %4069 = fsub fast float 1.000000e+00, %4068
  %4070 = call float @dx.op.unary.f32(i32 6, float %4067)  ; FAbs(value)
  %4071 = fsub fast float %4069, %4070
  %4072 = call float @dx.op.dot3.f32(i32 55, float %4065, float %4067, float %4071, float %4065, float %4067, float %4071)  ; Dot3(ax,ay,az,bx,by,bz)
  %4073 = call float @dx.op.unary.f32(i32 25, float %4072)  ; Rsqrt(value)
  %4074 = fmul fast float %4065, %4073
  %4075 = fmul fast float %4067, %4073
  %4076 = fmul fast float %4073, %4071
  %4077 = fmul fast float %4076, %3806
  %4078 = fmul fast float %4076, %3807
  %4079 = fmul fast float %4076, %3808
  %4080 = fmul fast float %4074, %3829
  %4081 = fmul fast float %4074, %3830
  %4082 = fmul fast float %4074, %3831
  %4083 = fadd fast float %4080, %4077
  %4084 = fadd fast float %4081, %4078
  %4085 = fadd fast float %4082, %4079
  %4086 = fmul fast float %4075, %3835
  %4087 = fmul fast float %4075, %3836
  %4088 = fmul fast float %4075, %3837
  %4089 = fadd fast float %4083, %4086
  %4090 = fadd fast float %4084, %4087
  %4091 = fadd fast float %4085, %4088
  %4092 = call float @dx.op.dot3.f32(i32 55, float %4089, float %4090, float %4091, float %4089, float %4090, float %4091)  ; Dot3(ax,ay,az,bx,by,bz)
  %4093 = call float @dx.op.unary.f32(i32 25, float %4092)  ; Rsqrt(value)
  %4094 = fmul fast float %4089, %4093
  %4095 = fmul fast float %4090, %4093
  %4096 = fmul fast float %4091, %4093
  %4097 = icmp ne i32 %4013, 0
  %4098 = select i1 %4097, float 1.000000e+00, float 0.000000e+00
  %4099 = fmul fast float %4003, %4098
  %4100 = and i32 %3856, 1
  %4101 = icmp eq i32 %4100, 0
  br i1 %4101, label %4102, label %4106

; <label>:4102                                    ; preds = %4011
  %4103 = fsub fast float %4094, %3789
  %4104 = fsub fast float %4095, %3790
  %4105 = fsub fast float %4096, %3791
  br label %4106

; <label>:4106                                    ; preds = %4102, %4011
  %4107 = phi float [ %4103, %4102 ], [ %4094, %4011 ]
  %4108 = phi float [ %4104, %4102 ], [ %4095, %4011 ]
  %4109 = phi float [ %4105, %4102 ], [ %4096, %4011 ]
  %4110 = fmul float %4109, %4099
  %4111 = fmul float %4108, %4099
  %4112 = fmul float %4107, %4099
  %4113 = fadd fast float %4112, %3789
  %4114 = fadd fast float %4111, %3790
  %4115 = fadd fast float %4110, %3791
  %4116 = icmp ne i32 %4012, 0
  %4117 = select i1 %4116, float 1.000000e+00, float 0.000000e+00
  %4118 = fmul fast float %4003, %4117
  %4119 = fsub fast float %4057, %3796
  %4120 = fsub fast float %4058, %3797
  %4121 = fsub fast float %4059, %3798
  %4122 = fmul fast float %4119, %4118
  %4123 = fmul fast float %4120, %4118
  %4124 = fmul fast float %4121, %4118
  %4125 = fadd fast float %4122, %3796
  %4126 = fadd fast float %4123, %3797
  %4127 = fadd fast float %4124, %3798
  %4128 = fsub fast float %4030, %3795
  %4129 = fmul fast float %4128, %4118
  %4130 = fadd fast float %4129, %3795
  %4131 = fmul fast float %4118, %3785
  %4132 = fsub fast float %3785, %4131
  %4133 = fmul fast float %4118, %3784
  %4134 = fsub fast float %3784, %4133
  %4135 = fadd fast float %4003, %3794
  %4136 = call float @dx.op.unary.f32(i32 7, float %4135)  ; Saturate(value)
  %4137 = fsub fast float %4050, %3793
  %4138 = fmul fast float %4137, %4099
  %4139 = fadd fast float %4138, %3793
  %4140 = fsub fast float %4036, %3792
  %4141 = fmul fast float %4140, %4099
  %4142 = fadd fast float %4141, %3792
  %4143 = call float @dx.op.dot3.f32(i32 55, float %4057, float %4058, float %4059, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.f32 %4144, 0
  %4146 = extractvalue %dx.types.CBufRet.f32 %4144, 1
  %4147 = fmul fast float %4146, %4143
  %4148 = fadd fast float %4147, %4145
  %4149 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4150 = bitcast float %3844 to i32
  %4151 = and i32 %4150, 65535
  %4152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4151)  ; LegacyF16ToF32(value)
  %4153 = lshr i32 %4150, 16
  %4154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4153)  ; LegacyF16ToF32(value)
  %4155 = fcmp fast oge float %4152, 0.000000e+00
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4158 = select i1 %4155, float %4152, float %4157
  %4159 = fadd fast float %4158, %4154
  %4160 = fsub fast float %4149, %3783
  %4161 = fmul fast float %4160, %4003
  %4162 = fadd fast float %4161, %3783
  %4163 = fmul fast float %4159, %4003
  %4164 = call float @dx.op.binary.f32(i32 35, float %3782, float %4163)  ; FMax(a,b)
  %4165 = call float @dx.op.binary.f32(i32 35, float %3781, float %4003)  ; FMax(a,b)
  %4166 = and i32 %3856, 16
  %4167 = icmp eq i32 %4166, 0
  br i1 %4167, label %4190, label %4168

; <label>:4168                                    ; preds = %4106
  %4169 = bitcast float %3850 to i32
  %4170 = add i32 %3847, 0
  %4171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4170, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4172 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4171, %dx.types.Handle %4016, float %3944, float %3947, float undef, float undef, i32 0, i32 0, i32 undef, float %3949, float %3951, float undef, float %3953, float %3955, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.ResRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.ResRet.f32 %4172, 2
  %4176 = and i32 %4169, 65535
  %4177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4176)  ; LegacyF16ToF32(value)
  %4178 = fmul fast float %4173, %3841
  %4179 = fmul fast float %4174, %3842
  %4180 = fmul fast float %4175, %3843
  %4181 = and i32 %3856, 16384
  %4182 = icmp ne i32 %4181, 0
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 0
  %4185 = select i1 %4182, float %4184, float 1.000000e+00
  %4186 = fmul fast float %4185, %4177
  %4187 = fmul fast float %4178, %4186
  %4188 = fmul fast float %4179, %4186
  %4189 = fmul fast float %4180, %4186
  br label %4190

; <label>:4190                                    ; preds = %4168, %4106
  %4191 = phi float [ %4187, %4168 ], [ 0.000000e+00, %4106 ]
  %4192 = phi float [ %4188, %4168 ], [ 0.000000e+00, %4106 ]
  %4193 = phi float [ %4189, %4168 ], [ 0.000000e+00, %4106 ]
  %4194 = fsub fast float %4191, %3786
  %4195 = fsub fast float %4192, %3787
  %4196 = fsub fast float %4193, %3788
  %4197 = fmul fast float %4194, %4003
  %4198 = fmul fast float %4195, %4003
  %4199 = fmul fast float %4196, %4003
  %4200 = fadd fast float %4197, %3786
  %4201 = fadd fast float %4198, %3787
  %4202 = fadd fast float %4199, %3788
  br label %3905

; <label>:4203                                    ; preds = %3905
  br label %4204

; <label>:4204                                    ; preds = %4203, %3724
  %4205 = phi float [ 0.000000e+00, %3724 ], [ %3906, %4203 ]
  %4206 = phi float [ %1126, %3724 ], [ %3907, %4203 ]
  %4207 = phi float [ %3693, %3724 ], [ %3908, %4203 ]
  %4208 = phi float [ %3691, %3724 ], [ %3909, %4203 ]
  %4209 = phi float [ 0.000000e+00, %3724 ], [ %3910, %4203 ]
  %4210 = phi float [ 0.000000e+00, %3724 ], [ %3911, %4203 ]
  %4211 = phi float [ %3685, %3724 ], [ %3912, %4203 ]
  %4212 = phi float [ %3686, %3724 ], [ %3913, %4203 ]
  %4213 = phi float [ %3687, %3724 ], [ %3914, %4203 ]
  %4214 = phi float [ %3719, %3724 ], [ %3915, %4203 ]
  %4215 = phi float [ %3720, %3724 ], [ %3916, %4203 ]
  %4216 = phi float [ %3721, %3724 ], [ %3917, %4203 ]
  %4217 = phi float [ %3690, %3724 ], [ %3918, %4203 ]
  %4218 = phi float [ %3689, %3724 ], [ %3919, %4203 ]
  %4219 = phi float [ 0.000000e+00, %3724 ], [ %3920, %4203 ]
  %4220 = phi float [ %3688, %3724 ], [ %3921, %4203 ]
  %4221 = phi float [ %3682, %3724 ], [ %3922, %4203 ]
  %4222 = phi float [ %3683, %3724 ], [ %3923, %4203 ]
  %4223 = phi float [ %3684, %3724 ], [ %3924, %4203 ]
  %4224 = call float @dx.op.dot3.f32(i32 55, float %4214, float %4215, float %4216, float %4214, float %4215, float %4216)  ; Dot3(ax,ay,az,bx,by,bz)
  %4225 = call float @dx.op.unary.f32(i32 25, float %4224)  ; Rsqrt(value)
  %4226 = fmul fast float %4225, %4214
  %4227 = fmul fast float %4225, %4215
  %4228 = fmul fast float %4225, %4216
  %4229 = fadd fast float %4219, %1126
  %4230 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4231 = call float @dx.op.dot3.f32(i32 55, float %4226, float %4227, float %4228, float %4226, float %4227, float %4228)  ; Dot3(ax,ay,az,bx,by,bz)
  %4232 = call float @dx.op.unary.f32(i32 25, float %4231)  ; Rsqrt(value)
  %4233 = fmul fast float %4232, %4226
  %4234 = fmul fast float %4232, %4227
  %4235 = fmul fast float %4232, %4228
  br label %4236

; <label>:4236                                    ; preds = %4204, %3679
  %4237 = phi float [ %4233, %4204 ], [ %3719, %3679 ]
  %4238 = phi float [ %4234, %4204 ], [ %3720, %3679 ]
  %4239 = phi float [ %4235, %4204 ], [ %3721, %3679 ]
  %4240 = phi float [ %4221, %4204 ], [ %3682, %3679 ]
  %4241 = phi float [ %4222, %4204 ], [ %3683, %3679 ]
  %4242 = phi float [ %4223, %4204 ], [ %3684, %3679 ]
  %4243 = phi float [ %4211, %4204 ], [ %3685, %3679 ]
  %4244 = phi float [ %4212, %4204 ], [ %3686, %3679 ]
  %4245 = phi float [ %4213, %4204 ], [ %3687, %3679 ]
  %4246 = phi float [ %4220, %4204 ], [ %3688, %3679 ]
  %4247 = phi float [ %4230, %4204 ], [ %1126, %3679 ]
  %4248 = phi float [ %4218, %4204 ], [ %3689, %3679 ]
  %4249 = phi float [ %4217, %4204 ], [ %3690, %3679 ]
  %4250 = phi float [ %4210, %4204 ], [ 0.000000e+00, %3679 ]
  %4251 = phi float [ %4209, %4204 ], [ 0.000000e+00, %3679 ]
  %4252 = phi float [ %4205, %4204 ], [ 0.000000e+00, %3679 ]
  %4253 = phi float [ %4207, %4204 ], [ %3693, %3679 ]
  %4254 = phi float [ %4206, %4204 ], [ %1126, %3679 ]
  %4255 = phi float [ %4208, %4204 ], [ %3691, %3679 ]
  %4256 = fadd fast float %4246, 0xBFB99999A0000000
  %4257 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4258 = fmul fast float %4257, 0x3FF1C71C80000000
  %4259 = call float @dx.op.binary.f32(i32 36, float %4246, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4260 = fsub fast float 1.000000e+00, %4258
  %4261 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4262 = fmul fast float %4261, %4240
  %4263 = fmul fast float %4261, %4241
  %4264 = fmul fast float %4261, %4242
  %4265 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4266 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4267 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4268 = fmul fast float %4258, %4240
  %4269 = fmul fast float %4258, %4241
  %4270 = fmul fast float %4258, %4242
  %4271 = fadd fast float %4268, %4259
  %4272 = fadd fast float %4269, %4259
  %4273 = fadd fast float %4270, %4259
  %4274 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4275 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4276 = call float @dx.op.unary.f32(i32 7, float %4273)  ; Saturate(value)
  %4277 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.i32 %4278, 3
  %4280 = and i32 %4279, 8
  %4281 = icmp ne i32 %4280, 0
  %4282 = call float @dx.op.binary.f32(i32 35, float %4265, float %4240)  ; FMax(a,b)
  %4283 = call float @dx.op.binary.f32(i32 35, float %4266, float %4240)  ; FMax(a,b)
  %4284 = call float @dx.op.binary.f32(i32 35, float %4267, float %4240)  ; FMax(a,b)
  %4285 = call float @dx.op.dot3.f32(i32 55, float %4265, float %4266, float %4267, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4286 = select i1 %216, float %4240, float %4265
  %4287 = select i1 %216, float %4285, float %4266
  %4288 = select i1 %216, float 1.000000e+00, float %4267
  %4289 = select i1 %4281, float %4282, float %4286
  %4290 = select i1 %4281, float %4283, float %4287
  %4291 = select i1 %4281, float %4284, float %4288
  %4292 = and i32 %192, 3
  %4293 = select i1 %186, i32 %4292, i32 0
  %4294 = icmp eq i32 %4293, 1
  br i1 %4294, label %4295, label %4371

; <label>:4295                                    ; preds = %4236
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 0
  %4298 = extractvalue %dx.types.CBufRet.f32 %4296, 1
  %4299 = fadd fast float %4297, %155
  %4300 = fadd fast float %4298, %156
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.CBufRet.f32 %4301, 1
  %4304 = fsub fast float %4299, %4302
  %4305 = fsub fast float %4300, %4303
  %4306 = fmul fast float %4304, %4304
  %4307 = fmul fast float %4305, %4305
  %4308 = fadd fast float %4306, %4307
  %4309 = call float @dx.op.unary.f32(i32 24, float %4308)  ; Sqrt(value)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4301, 2
  %4311 = fcmp fast olt float %4309, %4310
  br i1 %4311, label %4312, label %4365

; <label>:4312                                    ; preds = %4295
  %4313 = extractvalue %dx.types.CBufRet.f32 %4296, 2
  %4314 = fadd fast float %4313, %157
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 0
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 0
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 0
  %4321 = extractvalue %dx.types.CBufRet.f32 %4315, 1
  %4322 = extractvalue %dx.types.CBufRet.f32 %4317, 1
  %4323 = extractvalue %dx.types.CBufRet.f32 %4319, 1
  %4324 = extractvalue %dx.types.CBufRet.f32 %4315, 3
  %4325 = extractvalue %dx.types.CBufRet.f32 %4317, 3
  %4326 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4327 = fadd fast float %4324, %4299
  %4328 = fadd fast float %4325, %4300
  %4329 = fadd fast float %4314, %4326
  %4330 = fmul fast float %4327, %4316
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4328, float %4318, float %4330)  ; FMad(a,b,c)
  %4332 = call float @dx.op.tertiary.f32(i32 46, float %4329, float %4320, float %4331)  ; FMad(a,b,c)
  %4333 = fmul fast float %4327, %4321
  %4334 = call float @dx.op.tertiary.f32(i32 46, float %4328, float %4322, float %4333)  ; FMad(a,b,c)
  %4335 = call float @dx.op.tertiary.f32(i32 46, float %4329, float %4323, float %4334)  ; FMad(a,b,c)
  %4336 = fsub fast float %4332, %4324
  %4337 = fsub fast float %4335, %4325
  %4338 = fsub fast float %4336, %4302
  %4339 = fadd fast float %4338, %4310
  %4340 = fsub fast float %4337, %4303
  %4341 = fadd fast float %4340, %4310
  %4342 = extractvalue %dx.types.CBufRet.f32 %4301, 3
  %4343 = fmul fast float %4339, %4342
  %4344 = fmul fast float %4341, %4342
  %4345 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4346 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4347 = fsub fast float 1.000000e+00, %4345
  %4348 = fsub fast float 1.000000e+00, %4346
  %4349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %42, float %4347, float %4348, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = fcmp fast ugt float %4350, 0.000000e+00
  br i1 %4351, label %4352, label %4365

; <label>:4352                                    ; preds = %4312
  %4353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4354 = extractvalue %dx.types.CBufRet.f32 %4353, 2
  %4355 = fmul fast float %4354, %4350
  %4356 = extractvalue %dx.types.CBufRet.f32 %4353, 3
  %4357 = fadd fast float %4356, %4355
  %4358 = extractvalue %dx.types.CBufRet.f32 %4319, 2
  %4359 = fadd fast float %4357, %4326
  %4360 = fmul fast float %4332, %4320
  %4361 = call float @dx.op.tertiary.f32(i32 46, float %4335, float %4323, float %4360)  ; FMad(a,b,c)
  %4362 = call float @dx.op.tertiary.f32(i32 46, float %4359, float %4358, float %4361)  ; FMad(a,b,c)
  %4363 = fsub fast float %4362, %4326
  %4364 = fsub fast float %4363, %4313
  br label %4365

; <label>:4365                                    ; preds = %4352, %4312, %4295
  %4366 = phi i1 [ true, %4352 ], [ false, %4312 ], [ false, %4295 ]
  %4367 = phi float [ %4364, %4352 ], [ -1.310720e+05, %4312 ], [ -1.310720e+05, %4295 ]
  %4368 = fsub fast float %4367, %157
  %4369 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4370 = select i1 %4366, float %4369, float 1.000000e+00
  br label %4371

; <label>:4371                                    ; preds = %4365, %4236
  %4372 = phi float [ %4370, %4365 ], [ 0.000000e+00, %4236 ]
  %4373 = icmp eq i32 %4293, 3
  %4374 = select i1 %4373, float 1.000000e+00, float %4372
  %4375 = call float @dx.op.binary.f32(i32 35, float %4252, float %4374)  ; FMax(a,b)
  %4376 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4377 = fcmp fast une float %4376, 0.000000e+00
  %4378 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %4379 = call float @dx.op.unary.f32(i32 25, float %4378)  ; Rsqrt(value)
  br i1 %4377, label %4387, label %4380

; <label>:4380                                    ; preds = %4371
  %4381 = fmul fast float %4379, %155
  %4382 = fmul fast float %4379, %156
  %4383 = fmul fast float %4379, %157
  %4384 = fsub fast float -0.000000e+00, %4381
  %4385 = fsub fast float -0.000000e+00, %4382
  %4386 = fsub fast float -0.000000e+00, %4383
  br label %4555

; <label>:4387                                    ; preds = %4371
  %4388 = fmul fast float %155, %4379
  %4389 = fsub fast float -0.000000e+00, %4388
  %4390 = fmul fast float %156, %4379
  %4391 = fsub fast float -0.000000e+00, %4390
  %4392 = fmul fast float %157, %4379
  %4393 = fsub fast float -0.000000e+00, %4392
  %4394 = call float @dx.op.dot3.f32(i32 55, float %4389, float %4391, float %4393, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4395 = fmul fast float %4376, 2.500000e+00
  %4396 = call float @dx.op.unary.f32(i32 7, float %4395)  ; Saturate(value)
  %4397 = fmul fast float %4376, 0x4013FFFFE0000000
  %4398 = fadd fast float %4397, 0xBFFFFFFFE0000000
  %4399 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4400 = fmul fast float %4376, 0x4004000020000000
  %4401 = fadd fast float %4400, 0xBFF8000040000000
  %4402 = call float @dx.op.unary.f32(i32 7, float %4401)  ; Saturate(value)
  %4403 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4404 = fmul fast float %4256, 1.000000e+01
  %4405 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4406 = fmul fast float %4405, 2.000000e+00
  %4407 = fsub fast float 3.000000e+00, %4406
  %4408 = fmul fast float %4405, %4405
  %4409 = fmul fast float %4408, %4407
  %4410 = fsub fast float 1.000000e+00, %4409
  %4411 = fsub fast float 0x3FE3333340000000, %4277
  %4412 = fmul fast float %4411, 0x400AAAAAA0000000
  %4413 = call float @dx.op.unary.f32(i32 7, float %4412)  ; Saturate(value)
  %4414 = fmul fast float %4410, %4413
  %4415 = fmul fast float %4289, 0x3FEA2B8620000000
  %4416 = fmul fast float %4290, 0x3FEA2B8620000000
  %4417 = fmul fast float %4291, 0x3FEA2B8620000000
  %4418 = fadd fast float %4415, 0x3FC81DFBA0000000
  %4419 = fmul fast float %4418, %4289
  %4420 = fadd fast float %4419, 0x3F910E6020000000
  %4421 = fadd fast float %4416, 0x3FC81DFBA0000000
  %4422 = fmul fast float %4421, %4290
  %4423 = fadd fast float %4422, 0x3F910E6020000000
  %4424 = fadd fast float %4417, 0x3FC81DFBA0000000
  %4425 = fmul fast float %4424, %4291
  %4426 = fadd fast float %4425, 0x3F910E6020000000
  %4427 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4428 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4429 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4430 = fsub fast float %4427, %4289
  %4431 = fsub fast float %4428, %4290
  %4432 = fsub fast float %4429, %4291
  %4433 = fmul fast float %4430, %4403
  %4434 = fmul fast float %4433, %4414
  %4435 = fmul fast float %4431, %4403
  %4436 = fmul fast float %4435, %4414
  %4437 = fmul fast float %4432, %4403
  %4438 = fmul fast float %4437, %4414
  %4439 = fadd fast float %4434, %4289
  %4440 = fadd fast float %4436, %4290
  %4441 = fadd fast float %4438, %4291
  %4442 = fmul fast float %4249, %4249
  %4443 = fmul fast float %4442, %4442
  %4444 = fadd fast float %4399, 1.000000e+00
  %4445 = fsub fast float %4444, %4414
  %4446 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4447 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4448 = call float @dx.op.unary.f32(i32 7, float %4447)  ; Saturate(value)
  %4449 = fsub fast float 1.000000e+00, %4443
  %4450 = call float @dx.op.binary.f32(i32 36, float %4446, float %4449)  ; FMin(a,b)
  %4451 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4452 = call float @dx.op.binary.f32(i32 35, float %4450, float %4451)  ; FMax(a,b)
  %4453 = fadd fast float %4448, 0xBFE4CCCCC0000000
  %4454 = fmul fast float %4453, 0x4006DB6DA0000000
  %4455 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4456 = fmul fast float %4455, 2.000000e+00
  %4457 = fsub fast float 3.000000e+00, %4456
  %4458 = bitcast float %4274 to i32
  %4459 = ashr i32 %4458, 1
  %4460 = add nsw i32 %4459, 532487669
  %4461 = bitcast i32 %4460 to float
  %4462 = fsub fast float 1.000000e+00, %4461
  %4463 = bitcast float %4462 to i32
  %4464 = sub nsw i32 2129859010, %4463
  %4465 = bitcast i32 %4464 to float
  %4466 = fmul fast float %4465, 2.000000e+00
  %4467 = bitcast float %4275 to i32
  %4468 = ashr i32 %4467, 1
  %4469 = add nsw i32 %4468, 532487669
  %4470 = bitcast i32 %4469 to float
  %4471 = fsub fast float 1.000000e+00, %4470
  %4472 = bitcast float %4471 to i32
  %4473 = sub nsw i32 2129859010, %4472
  %4474 = bitcast i32 %4473 to float
  %4475 = fmul fast float %4474, 2.000000e+00
  %4476 = bitcast float %4276 to i32
  %4477 = ashr i32 %4476, 1
  %4478 = add nsw i32 %4477, 532487669
  %4479 = bitcast i32 %4478 to float
  %4480 = fsub fast float 1.000000e+00, %4479
  %4481 = bitcast float %4480 to i32
  %4482 = sub nsw i32 2129859010, %4481
  %4483 = bitcast i32 %4482 to float
  %4484 = fmul fast float %4483, 2.000000e+00
  %4485 = fsub fast float 0x4002A9FBE0000000, %4466
  %4486 = fadd fast float %4466, 0x3FD54FDF00000000
  %4487 = bitcast float %4486 to i32
  %4488 = sub nsw i32 2129859010, %4487
  %4489 = bitcast i32 %4488 to float
  %4490 = fmul fast float %4489, %4485
  %4491 = fmul fast float %4490, %4490
  %4492 = fsub fast float 0x4002A9FBE0000000, %4475
  %4493 = fadd fast float %4475, 0x3FD54FDF00000000
  %4494 = bitcast float %4493 to i32
  %4495 = sub nsw i32 2129859010, %4494
  %4496 = bitcast i32 %4495 to float
  %4497 = fmul fast float %4496, %4492
  %4498 = fmul fast float %4497, %4497
  %4499 = fsub fast float 0x4002A9FBE0000000, %4484
  %4500 = fadd fast float %4484, 0x3FD54FDF00000000
  %4501 = bitcast float %4500 to i32
  %4502 = sub nsw i32 2129859010, %4501
  %4503 = bitcast i32 %4502 to float
  %4504 = fmul fast float %4503, %4499
  %4505 = fmul fast float %4504, %4504
  %4506 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4491)  ; FMax(a,b)
  %4507 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4498)  ; FMax(a,b)
  %4508 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4505)  ; FMax(a,b)
  %4509 = fsub fast float 1.000000e+00, %4394
  %4510 = fadd fast float %4509, %4410
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = fsub fast float 1.000000e+00, %4374
  %4513 = fmul fast float %4452, %4512
  %4514 = fmul fast float %4455, %4455
  %4515 = fmul fast float %4514, %4513
  %4516 = fmul fast float %4515, %4457
  %4517 = fmul fast float %4512, 0xBFE99999A0000000
  %4518 = fmul fast float %4517, %4403
  %4519 = fmul fast float %4518, %4414
  %4520 = fadd fast float %4519, 1.000000e+00
  %4521 = fadd fast float %4277, -1.000000e+00
  %4522 = fmul fast float %4520, %4521
  %4523 = fadd fast float %4522, 1.000000e+00
  %4524 = fsub fast float %4506, %4274
  %4525 = fsub fast float %4507, %4275
  %4526 = fsub fast float %4508, %4276
  %4527 = fmul fast float %4516, %4524
  %4528 = fmul fast float %4516, %4525
  %4529 = fmul fast float %4516, %4526
  %4530 = fadd fast float %4527, %4274
  %4531 = fadd fast float %4528, %4275
  %4532 = fadd fast float %4529, %4276
  %4533 = fsub fast float %99, %4237
  %4534 = fsub fast float %100, %4238
  %4535 = fsub fast float %101, %4239
  %4536 = fmul fast float %4516, %4533
  %4537 = fmul fast float %4516, %4534
  %4538 = fmul fast float %4516, %4535
  %4539 = fadd fast float %4536, %4237
  %4540 = fadd fast float %4537, %4238
  %4541 = fadd fast float %4538, %4239
  %4542 = fmul fast float %4516, %4511
  %4543 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4544 = fsub fast float 1.000000e+00, %4543
  %4545 = fmul fast float %4542, %4544
  %4546 = fadd fast float %4545, %4543
  %4547 = fsub fast float 1.000000e+00, %4249
  %4548 = fmul fast float %4516, %4547
  %4549 = fadd fast float %4548, %4249
  %4550 = call float @dx.op.dot3.f32(i32 55, float %4539, float %4540, float %4541, float %4539, float %4540, float %4541)  ; Dot3(ax,ay,az,bx,by,bz)
  %4551 = call float @dx.op.unary.f32(i32 25, float %4550)  ; Rsqrt(value)
  %4552 = fmul fast float %4539, %4551
  %4553 = fmul fast float %4540, %4551
  %4554 = fmul fast float %4541, %4551
  br label %4555

; <label>:4555                                    ; preds = %4387, %4380
  %4556 = phi float [ %4386, %4380 ], [ %4393, %4387 ]
  %4557 = phi float [ %4385, %4380 ], [ %4391, %4387 ]
  %4558 = phi float [ %4384, %4380 ], [ %4389, %4387 ]
  %4559 = phi float [ %4383, %4380 ], [ %4392, %4387 ]
  %4560 = phi float [ %4382, %4380 ], [ %4390, %4387 ]
  %4561 = phi float [ %4381, %4380 ], [ %4388, %4387 ]
  %4562 = phi float [ %4274, %4380 ], [ %4530, %4387 ]
  %4563 = phi float [ %4275, %4380 ], [ %4531, %4387 ]
  %4564 = phi float [ %4276, %4380 ], [ %4532, %4387 ]
  %4565 = phi float [ %4237, %4380 ], [ %4552, %4387 ]
  %4566 = phi float [ %4238, %4380 ], [ %4553, %4387 ]
  %4567 = phi float [ %4239, %4380 ], [ %4554, %4387 ]
  %4568 = phi float [ %4289, %4380 ], [ %4439, %4387 ]
  %4569 = phi float [ %4290, %4380 ], [ %4440, %4387 ]
  %4570 = phi float [ %4291, %4380 ], [ %4441, %4387 ]
  %4571 = phi float [ %4277, %4380 ], [ %4546, %4387 ]
  %4572 = phi float [ %4249, %4380 ], [ %4549, %4387 ]
  %4573 = select i1 %216, float 0.000000e+00, float %4564
  %4574 = call float @dx.op.dot3.f32(i32 55, float %4565, float %4566, float %4567, float %4558, float %4557, float %4556)  ; Dot3(ax,ay,az,bx,by,bz)
  %4575 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4576 = call float @dx.op.dot3.f32(i32 55, float %4561, float %4560, float %4559, float %4565, float %4566, float %4567)  ; Dot3(ax,ay,az,bx,by,bz)
  %4577 = fmul fast float %4576, 2.000000e+00
  %4578 = fmul fast float %4577, %4565
  %4579 = fmul fast float %4577, %4566
  %4580 = fmul fast float %4577, %4567
  %4581 = fsub fast float %4561, %4578
  %4582 = fsub fast float %4560, %4579
  %4583 = fsub fast float %4559, %4580
  %4584 = call float @dx.op.binary.f32(i32 36, float %4572, float 1.000000e+00)  ; FMin(a,b)
  %4585 = fsub fast float 1.000000e+00, %4584
  %4586 = bitcast float %4585 to i32
  %4587 = ashr i32 %4586, 1
  %4588 = add nsw i32 %4587, 532487669
  %4589 = bitcast i32 %4588 to float
  %4590 = fsub fast float 1.000000e+00, %4571
  %4591 = call float @dx.op.binary.f32(i32 35, float %4590, float 0x3F847AE140000000)  ; FMax(a,b)
  %4592 = fmul fast float %4591, %4591
  %4593 = fmul fast float %4592, %4592
  %4594 = call float @dx.op.unary.f32(i32 7, float %4575)  ; Saturate(value)
  %4595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %42, float %4589, float %4593, float %4594, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4596 = extractvalue %dx.types.ResRet.f32 %4595, 0
  %4597 = fsub fast float 1.000000e+00, %4572
  %4598 = bitcast float %4597 to i32
  %4599 = sub nsw i32 2129859010, %4598
  %4600 = fsub fast float 1.000000e+00, %60
  %4601 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4602 = call float @dx.op.binary.f32(i32 35, float %4601, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4603 = fdiv fast float %4600, %4602
  %4604 = call float @dx.op.dot3.f32(i32 55, float %4565, float %4566, float %4567, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4606 = fmul fast float %4605, 5.000000e-01
  %4607 = fadd fast float %4606, 5.000000e-01
  %4608 = fmul fast float %4607, %60
  %4609 = call float @dx.op.dot3.f32(i32 55, float %4565, float %4566, float %4567, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %4610 = call float @dx.op.unary.f32(i32 7, float %4609)  ; Saturate(value)
  %4611 = fmul fast float %4610, %4603
  %4612 = fadd fast float %4608, %4611
  %4613 = fsub fast float 5.000000e-01, %4606
  %4614 = fmul fast float %4613, %4568
  %4615 = fmul fast float %4613, %4569
  %4616 = fmul fast float %4613, %4570
  %4617 = fadd fast float %4612, %4614
  %4618 = fadd fast float %4612, %4615
  %4619 = fadd fast float %4612, %4616
  %4620 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4583, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = fmul fast float %4621, 5.000000e-01
  %4623 = fadd fast float %4622, 5.000000e-01
  %4624 = fmul fast float %4623, %60
  %4625 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4583, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = fmul fast float %4626, %4603
  %4628 = fadd fast float %4624, %4627
  %4629 = fsub fast float 5.000000e-01, %4622
  %4630 = fmul fast float %4629, %4568
  %4631 = fmul fast float %4629, %4569
  %4632 = fmul fast float %4629, %4570
  %4633 = fadd fast float %4628, %4630
  %4634 = fadd fast float %4628, %4631
  %4635 = fadd fast float %4628, %4632
  %4636 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4638 = extractvalue %dx.types.CBufRet.f32 %4637, 0
  %4639 = call float @dx.op.binary.f32(i32 36, float %4568, float %4638)  ; FMin(a,b)
  %4640 = fmul fast float %4639, %4585
  %4641 = fsub fast float 1.000000e+00, %4640
  %4642 = bitcast float %4641 to i32
  %4643 = sub nsw i32 2129859010, %4642
  %4644 = bitcast i32 %4643 to float
  %4645 = call float @dx.op.binary.f32(i32 36, float %4569, float %4638)  ; FMin(a,b)
  %4646 = fmul fast float %4645, %4585
  %4647 = fsub fast float 1.000000e+00, %4646
  %4648 = bitcast float %4647 to i32
  %4649 = sub nsw i32 2129859010, %4648
  %4650 = bitcast i32 %4649 to float
  %4651 = call float @dx.op.binary.f32(i32 36, float %4570, float %4638)  ; FMin(a,b)
  %4652 = fmul fast float %4651, %4585
  %4653 = fsub fast float 1.000000e+00, %4652
  %4654 = bitcast float %4653 to i32
  %4655 = sub nsw i32 2129859010, %4654
  %4656 = bitcast i32 %4655 to float
  %4657 = fmul fast float %4584, %61
  %4658 = fmul fast float %4657, %4617
  %4659 = fmul fast float %4658, %4644
  %4660 = fmul fast float %4584, %62
  %4661 = fmul fast float %4660, %4618
  %4662 = fmul fast float %4661, %4650
  %4663 = fmul fast float %4584, %63
  %4664 = fmul fast float %4663, %4619
  %4665 = fmul fast float %4664, %4656
  %4666 = call float @dx.op.binary.f32(i32 36, float %4562, float %4638)  ; FMin(a,b)
  %4667 = fmul fast float %4666, %4585
  %4668 = fsub fast float 1.000000e+00, %4667
  %4669 = bitcast float %4668 to i32
  %4670 = sub nsw i32 2129859010, %4669
  %4671 = bitcast i32 %4670 to float
  %4672 = call float @dx.op.binary.f32(i32 36, float %4563, float %4638)  ; FMin(a,b)
  %4673 = fmul fast float %4672, %4585
  %4674 = fsub fast float 1.000000e+00, %4673
  %4675 = bitcast float %4674 to i32
  %4676 = sub nsw i32 2129859010, %4675
  %4677 = bitcast i32 %4676 to float
  %4678 = call float @dx.op.binary.f32(i32 36, float %4573, float %4638)  ; FMin(a,b)
  %4679 = fmul fast float %4678, %4585
  %4680 = fsub fast float 1.000000e+00, %4679
  %4681 = bitcast float %4680 to i32
  %4682 = sub nsw i32 2129859010, %4681
  %4683 = bitcast i32 %4682 to float
  %4684 = fmul fast float %4657, %4633
  %4685 = fmul fast float %4684, %4671
  %4686 = fmul fast float %4660, %4634
  %4687 = fmul fast float %4686, %4677
  %4688 = fmul fast float %4663, %4635
  %4689 = fmul fast float %4688, %4683
  %4690 = call float @dx.op.dot3.f32(i32 55, float %4659, float %4662, float %4665, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = select i1 %216, float 0.000000e+00, float %4659
  %4692 = select i1 %216, float %4690, float %4662
  %4693 = select i1 %216, float 0.000000e+00, float %4665
  %4694 = call float @dx.op.dot3.f32(i32 55, float %4685, float %4687, float %4689, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4695 = select i1 %216, float 0.000000e+00, float %4685
  %4696 = select i1 %216, float %4694, float %4687
  %4697 = select i1 %216, float 0.000000e+00, float %4689
  %4698 = fmul fast float %4575, 9.843750e-01
  %4699 = fmul fast float %4571, 9.843750e-01
  %4700 = fadd fast float %4698, 7.812500e-03
  %4701 = fadd fast float %4699, 7.812500e-03
  %4702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %4700, float %4701, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4703 = extractvalue %dx.types.ResRet.f32 %4702, 2
  %4704 = extractvalue %dx.types.ResRet.f32 %4702, 3
  %4705 = fmul fast float %4703, %4562
  %4706 = fmul fast float %4703, %4563
  %4707 = fmul fast float %4703, %4573
  %4708 = fadd fast float %4705, %4704
  %4709 = fadd fast float %4706, %4704
  %4710 = fadd fast float %4707, %4704
  %4711 = fcmp fast ogt float %4250, 0.000000e+00
  br i1 %4711, label %4712, label %4738

; <label>:4712                                    ; preds = %4555
  %4713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %4250, float %4575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4714 = extractvalue %dx.types.ResRet.f32 %4713, 0
  %4715 = extractvalue %dx.types.ResRet.f32 %4713, 1
  %4716 = extractvalue %dx.types.ResRet.f32 %4713, 2
  %4717 = fadd fast float %4714, -5.000000e-01
  %4718 = fadd fast float %4715, -5.000000e-01
  %4719 = fadd fast float %4716, -5.000000e-01
  %4720 = fsub fast float 1.000000e+00, %4562
  %4721 = fsub fast float 1.000000e+00, %4563
  %4722 = fsub fast float 1.000000e+00, %4573
  %4723 = fmul fast float %4562, 4.000000e+00
  %4724 = fmul fast float %4723, %4720
  %4725 = fmul fast float %4724, %4717
  %4726 = fmul fast float %4563, 4.000000e+00
  %4727 = fmul fast float %4726, %4721
  %4728 = fmul fast float %4727, %4718
  %4729 = fmul fast float %4573, 4.000000e+00
  %4730 = fmul fast float %4729, %4722
  %4731 = fmul fast float %4730, %4719
  %4732 = fadd fast float %4725, %4708
  %4733 = fadd fast float %4728, %4709
  %4734 = fadd fast float %4731, %4710
  %4735 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4736 = call float @dx.op.unary.f32(i32 7, float %4733)  ; Saturate(value)
  %4737 = call float @dx.op.unary.f32(i32 7, float %4734)  ; Saturate(value)
  br label %4738

; <label>:4738                                    ; preds = %4712, %4555
  %4739 = phi float [ %4735, %4712 ], [ %4708, %4555 ]
  %4740 = phi float [ %4736, %4712 ], [ %4709, %4555 ]
  %4741 = phi float [ %4737, %4712 ], [ %4710, %4555 ]
  %4742 = call float @dx.op.binary.f32(i32 35, float %4740, float %4741)  ; FMax(a,b)
  %4743 = call float @dx.op.binary.f32(i32 35, float %4739, float %4742)  ; FMax(a,b)
  %4744 = fsub fast float 1.000000e+00, %4743
  %4745 = fmul fast float %4743, %4571
  %4746 = fadd fast float %4745, %4571
  %4747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.f32 %4747, 2
  %4749 = extractvalue %dx.types.CBufRet.f32 %4747, 3
  %4750 = fmul fast float %4746, %4748
  %4751 = fadd fast float %4750, %4749
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fsub fast float 1.000000e+00, %4596
  %4754 = fadd fast float %4753, %4752
  %4755 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4756 = fcmp fast olt float %4755, 1.000000e+00
  br i1 %4756, label %4757, label %5205

; <label>:4757                                    ; preds = %4738
  %4758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.f32 %4758, 2
  %4760 = extractvalue %dx.types.CBufRet.f32 %4758, 3
  %4761 = fmul fast float %4759, %92
  %4762 = fmul fast float %4760, %93
  %4763 = fptoui float %4761 to i32
  %4764 = fptoui float %4762 to i32
  %4765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4766 = extractvalue %dx.types.CBufRet.f32 %4765, 0
  %4767 = extractvalue %dx.types.CBufRet.f32 %4765, 2
  %4768 = extractvalue %dx.types.CBufRet.f32 %4765, 3
  %4769 = fadd fast float %80, -4.000000e+00
  %4770 = call float @dx.op.binary.f32(i32 35, float %4769, float 0.000000e+00)  ; FMax(a,b)
  %4771 = fadd fast float %4770, %4766
  %4772 = fmul fast float %4771, %4767
  %4773 = call float @dx.op.unary.f32(i32 23, float %4772)  ; Log(value)
  %4774 = fmul fast float %4773, %4768
  %4775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4776 = extractvalue %dx.types.CBufRet.f32 %4775, 2
  %4777 = fmul fast float %4774, %4776
  %4778 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4779 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4780 = extractvalue %dx.types.CBufRet.i32 %4779, 1
  %4781 = add i32 %4780, -1
  %4782 = uitofp i32 %4780 to float
  %4783 = fmul fast float %4782, %4778
  %4784 = fptoui float %4783 to i32
  %4785 = call i32 @dx.op.binary.i32(i32 40, i32 %4784, i32 %4781)  ; UMin(a,b)
  %4786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.i32 %4786, 2
  %4788 = extractvalue %dx.types.CBufRet.i32 %4786, 3
  %4789 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4764, i32 %4787, i32 %4763)  ; UMad(a,b,c)
  %4790 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4785, i32 %4788, i32 %4789)  ; UMad(a,b,c)
  %4791 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %4792 = fptoui float %4791 to i32
  %4793 = lshr i32 %4792, 5
  %4794 = call i32 @dx.op.binary.i32(i32 40, i32 %4793, i32 8191)  ; UMin(a,b)
  br i1 false, label %4795, label %4802

; <label>:4795                                    ; preds = %4757
  %4796 = fadd fast float 0.000000e+00, %4583
  %4797 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4796, float %4581, float %4582, float %4796)  ; Dot3(ax,ay,az,bx,by,bz)
  %4798 = call float @dx.op.unary.f32(i32 25, float %4797)  ; Rsqrt(value)
  %4799 = fmul fast float %4798, %4581
  %4800 = fmul fast float %4798, %4582
  %4801 = fmul fast float %4796, %4798
  br label %4802

; <label>:4802                                    ; preds = %4795, %4757
  %4803 = phi float [ %4799, %4795 ], [ %4581, %4757 ]
  %4804 = phi float [ %4800, %4795 ], [ %4582, %4757 ]
  %4805 = phi float [ %4801, %4795 ], [ %4583, %4757 ]
  %4806 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4807 = extractvalue %dx.types.CBufRet.i32 %4806, 2
  %4808 = add nsw i32 %4807, -1
  %4809 = call i32 @dx.op.binary.i32(i32 37, i32 %4808, i32 0)  ; IMax(a,b)
  %4810 = shl i32 %4794, 2
  %4811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4810, i32 undef)  ; BufferLoad(srv,index,wot)
  %4812 = extractvalue %dx.types.ResRet.i32 %4811, 0
  %4813 = lshr i32 %4812, 16
  %4814 = and i32 %4812, 65535
  %4815 = lshr i32 %4812, 21
  %4816 = lshr i32 %4814, 5
  %4817 = call i32 @dx.op.binary.i32(i32 40, i32 %4816, i32 %4809)  ; UMin(a,b)
  %4818 = icmp ugt i32 %4815, %4817
  br i1 %4818, label %5181, label %4819

; <label>:4819                                    ; preds = %4802
  br label %4820

; <label>:4820                                    ; preds = %5173, %4819
  %4821 = phi float [ %5174, %5173 ], [ 0.000000e+00, %4819 ]
  %4822 = phi float [ %5175, %5173 ], [ 0.000000e+00, %4819 ]
  %4823 = phi float [ %5176, %5173 ], [ 0.000000e+00, %4819 ]
  %4824 = phi float [ %5177, %5173 ], [ 1.000000e+00, %4819 ]
  %4825 = phi i32 [ %5178, %5173 ], [ %4815, %4819 ]
  %4826 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.i32 %4826, 2
  %4828 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4790, i32 %4827, i32 %4825)  ; UMad(a,b,c)
  %4829 = shl i32 %4828, 2
  %4830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %4829, i32 undef)  ; BufferLoad(srv,index,wot)
  %4831 = extractvalue %dx.types.ResRet.i32 %4830, 0
  %4832 = shl i32 %4825, 5
  %4833 = sub nsw i32 %4813, %4832
  %4834 = call i32 @dx.op.binary.i32(i32 37, i32 %4833, i32 0)  ; IMax(a,b)
  %4835 = call i32 @dx.op.binary.i32(i32 38, i32 %4834, i32 31)  ; IMin(a,b)
  %4836 = sub nsw i32 1, %4813
  %4837 = add nsw i32 %4836, %4814
  %4838 = call i32 @dx.op.binary.i32(i32 37, i32 %4837, i32 0)  ; IMax(a,b)
  %4839 = call i32 @dx.op.binary.i32(i32 38, i32 %4838, i32 32)  ; IMin(a,b)
  %4840 = and i32 %4839, 31
  %4841 = shl i32 -1, %4840
  %4842 = xor i32 %4841, -1
  %4843 = and i32 %4835, 31
  %4844 = shl i32 %4842, %4843
  %4845 = icmp eq i32 %4839, 32
  %4846 = select i1 %4845, i32 -1, i32 %4844
  %4847 = and i32 %4846, %4831
  %4848 = icmp eq i32 %4847, 0
  br i1 %4848, label %5173, label %4849

; <label>:4849                                    ; preds = %4820
  br label %4850

; <label>:4850                                    ; preds = %4956, %4849
  %4851 = phi float [ %4957, %4956 ], [ %4821, %4849 ]
  %4852 = phi float [ %4958, %4956 ], [ %4822, %4849 ]
  %4853 = phi float [ %4959, %4956 ], [ %4823, %4849 ]
  %4854 = phi float [ %4960, %4956 ], [ %4824, %4849 ]
  %4855 = phi i32 [ %4860, %4956 ], [ %4847, %4849 ]
  %4856 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4855)  ; FirstbitLo(value)
  %4857 = add i32 %4856, %4832
  %4858 = and i32 %4856, 31
  %4859 = shl i32 1, %4858
  %4860 = xor i32 %4859, %4855
  %4861 = mul i32 %4857, 72
  %4862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %4861, i32 undef)  ; BufferLoad(srv,index,wot)
  %4863 = extractvalue %dx.types.ResRet.f32 %4862, 0
  %4864 = extractvalue %dx.types.ResRet.f32 %4862, 1
  %4865 = extractvalue %dx.types.ResRet.f32 %4862, 2
  %4866 = add i32 %4861, 12
  %4867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4866, i32 undef)  ; BufferLoad(srv,index,wot)
  %4868 = extractvalue %dx.types.ResRet.i32 %4867, 0
  %4869 = add i32 %4861, 16
  %4870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %4869, i32 undef)  ; BufferLoad(srv,index,wot)
  %4871 = extractvalue %dx.types.ResRet.f32 %4870, 0
  %4872 = extractvalue %dx.types.ResRet.f32 %4870, 1
  %4873 = extractvalue %dx.types.ResRet.f32 %4870, 2
  %4874 = add i32 %4861, 28
  %4875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %4874, i32 undef)  ; BufferLoad(srv,index,wot)
  %4876 = extractvalue %dx.types.ResRet.f32 %4875, 0
  %4877 = add i32 %4861, 32
  %4878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %4877, i32 undef)  ; BufferLoad(srv,index,wot)
  %4879 = extractvalue %dx.types.ResRet.f32 %4878, 0
  %4880 = extractvalue %dx.types.ResRet.f32 %4878, 1
  %4881 = extractvalue %dx.types.ResRet.f32 %4878, 2
  %4882 = extractvalue %dx.types.ResRet.f32 %4878, 3
  %4883 = add i32 %4861, 48
  %4884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %4883, i32 undef)  ; BufferLoad(srv,index,wot)
  %4885 = extractvalue %dx.types.ResRet.f32 %4884, 0
  %4886 = extractvalue %dx.types.ResRet.f32 %4884, 1
  %4887 = add i32 %4861, 56
  %4888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %4887, i32 undef)  ; BufferLoad(srv,index,wot)
  %4889 = extractvalue %dx.types.ResRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.ResRet.f32 %4888, 1
  %4891 = add i32 %4861, 64
  %4892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %4891, i32 undef)  ; BufferLoad(srv,index,wot)
  %4893 = extractvalue %dx.types.ResRet.f32 %4892, 0
  %4894 = extractvalue %dx.types.ResRet.f32 %4892, 1
  %4895 = mul i32 %4857, 60
  %4896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %4895, i32 undef)  ; BufferLoad(srv,index,wot)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.ResRet.f32 %4896, 1
  %4899 = extractvalue %dx.types.ResRet.f32 %4896, 2
  %4900 = add i32 %4895, 12
  %4901 = add i32 %4895, 48
  %4902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %4901, i32 undef)  ; BufferLoad(srv,index,wot)
  %4903 = extractvalue %dx.types.ResRet.f32 %4902, 0
  %4904 = extractvalue %dx.types.ResRet.f32 %4902, 1
  %4905 = extractvalue %dx.types.ResRet.f32 %4902, 2
  %4906 = and i32 %4868, 32767
  %4907 = bitcast float %4863 to i32
  %4908 = icmp eq i32 %4907, -1
  %4909 = bitcast float %4864 to i32
  %4910 = and i32 %4868, 32768
  %4911 = icmp ne i32 %4910, 0
  %4912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.f32 %4912, 0
  %4914 = extractvalue %dx.types.CBufRet.f32 %4912, 1
  %4915 = extractvalue %dx.types.CBufRet.f32 %4912, 2
  %4916 = fsub fast float %4897, %4913
  %4917 = fsub fast float %4898, %4914
  %4918 = fsub fast float %4899, %4915
  %4919 = fsub fast float %155, %4916
  %4920 = fsub fast float %156, %4917
  %4921 = fsub fast float %157, %4918
  %4922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %4900, i32 undef)  ; BufferLoad(srv,index,wot)
  %4923 = extractvalue %dx.types.ResRet.f32 %4922, 0
  %4924 = extractvalue %dx.types.ResRet.f32 %4922, 1
  %4925 = extractvalue %dx.types.ResRet.f32 %4922, 2
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4919, float %4920, float %4921, float %4923, float %4924, float %4925)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = add i32 %4895, 24
  %4928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %4927, i32 undef)  ; BufferLoad(srv,index,wot)
  %4929 = extractvalue %dx.types.ResRet.f32 %4928, 0
  %4930 = extractvalue %dx.types.ResRet.f32 %4928, 1
  %4931 = extractvalue %dx.types.ResRet.f32 %4928, 2
  %4932 = call float @dx.op.dot3.f32(i32 55, float %4919, float %4920, float %4921, float %4929, float %4930, float %4931)  ; Dot3(ax,ay,az,bx,by,bz)
  %4933 = add i32 %4895, 36
  %4934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %4933, i32 undef)  ; BufferLoad(srv,index,wot)
  %4935 = extractvalue %dx.types.ResRet.f32 %4934, 0
  %4936 = extractvalue %dx.types.ResRet.f32 %4934, 1
  %4937 = extractvalue %dx.types.ResRet.f32 %4934, 2
  %4938 = call float @dx.op.dot3.f32(i32 55, float %4919, float %4920, float %4921, float %4935, float %4936, float %4937)  ; Dot3(ax,ay,az,bx,by,bz)
  %4939 = call float @dx.op.unary.f32(i32 6, float %4926)  ; FAbs(value)
  %4940 = call float @dx.op.unary.f32(i32 6, float %4932)  ; FAbs(value)
  %4941 = call float @dx.op.unary.f32(i32 6, float %4938)  ; FAbs(value)
  %4942 = fsub fast float %4903, %4939
  %4943 = fsub fast float %4904, %4940
  %4944 = fsub fast float %4905, %4941
  %4945 = fmul fast float %4942, %4871
  %4946 = fmul fast float %4943, %4872
  %4947 = fmul fast float %4944, %4873
  %4948 = call float @dx.op.binary.f32(i32 36, float %4946, float %4947)  ; FMin(a,b)
  %4949 = call float @dx.op.binary.f32(i32 36, float %4945, float %4948)  ; FMin(a,b)
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = call float @dx.op.binary.f32(i32 36, float %4854, float %4950)  ; FMin(a,b)
  %4952 = uitofp i1 %4911 to float
  %4953 = fsub fast float 1.000000e+00, %4952
  %4954 = fmul fast float %4951, %4953
  %4955 = fcmp fast ogt float %4954, 0.000000e+00
  br i1 %4955, label %4962, label %4956

; <label>:4956                                    ; preds = %5104, %4850
  %4957 = phi float [ %5168, %5104 ], [ %4851, %4850 ]
  %4958 = phi float [ %5169, %5104 ], [ %4852, %4850 ]
  %4959 = phi float [ %5170, %5104 ], [ %4853, %4850 ]
  %4960 = phi float [ %5171, %5104 ], [ %4854, %4850 ]
  %4961 = icmp eq i32 %4855, %4859
  br i1 %4961, label %5172, label %4850

; <label>:4962                                    ; preds = %4850
  br i1 %4908, label %5020, label %4963

; <label>:4963                                    ; preds = %4962
  %4964 = fsub fast float -0.000000e+00, %4923
  %4965 = fsub fast float -0.000000e+00, %4924
  %4966 = fsub fast float -0.000000e+00, %4925
  %4967 = call float @dx.op.dot3.f32(i32 55, float %4803, float %4804, float %4805, float %4964, float %4965, float %4966)  ; Dot3(ax,ay,az,bx,by,bz)
  %4968 = fsub fast float -0.000000e+00, %4967
  %4969 = call float @dx.op.dot3.f32(i32 55, float %4919, float %4920, float %4921, float %4964, float %4965, float %4966)  ; Dot3(ax,ay,az,bx,by,bz)
  %4970 = fadd fast float %4969, %4886
  %4971 = fadd fast float %4885, %4969
  %4972 = fsub fast float -0.000000e+00, %4971
  %4973 = fcmp ogt float %4967, -0.000000e+00
  %4974 = select i1 %4973, float %4972, float %4970
  %4975 = call float @dx.op.unary.f32(i32 6, float %4968)  ; FAbs(value)
  %4976 = fdiv fast float 1.000000e+00, %4975
  %4977 = fmul fast float %4974, %4976
  %4978 = call float @dx.op.binary.f32(i32 35, float %4977, float 0.000000e+00)  ; FMax(a,b)
  %4979 = fsub fast float -0.000000e+00, %4929
  %4980 = fsub fast float -0.000000e+00, %4930
  %4981 = fsub fast float -0.000000e+00, %4931
  %4982 = call float @dx.op.dot3.f32(i32 55, float %4803, float %4804, float %4805, float %4979, float %4980, float %4981)  ; Dot3(ax,ay,az,bx,by,bz)
  %4983 = fsub fast float -0.000000e+00, %4982
  %4984 = call float @dx.op.dot3.f32(i32 55, float %4919, float %4920, float %4921, float %4979, float %4980, float %4981)  ; Dot3(ax,ay,az,bx,by,bz)
  %4985 = fadd fast float %4984, %4890
  %4986 = fadd fast float %4889, %4984
  %4987 = fsub fast float -0.000000e+00, %4986
  %4988 = fcmp ogt float %4982, -0.000000e+00
  %4989 = select i1 %4988, float %4987, float %4985
  %4990 = call float @dx.op.unary.f32(i32 6, float %4983)  ; FAbs(value)
  %4991 = fdiv fast float 1.000000e+00, %4990
  %4992 = fmul fast float %4989, %4991
  %4993 = call float @dx.op.binary.f32(i32 35, float %4992, float 0.000000e+00)  ; FMax(a,b)
  %4994 = fsub fast float -0.000000e+00, %4935
  %4995 = fsub fast float -0.000000e+00, %4936
  %4996 = fsub fast float -0.000000e+00, %4937
  %4997 = call float @dx.op.dot3.f32(i32 55, float %4803, float %4804, float %4805, float %4994, float %4995, float %4996)  ; Dot3(ax,ay,az,bx,by,bz)
  %4998 = fsub fast float -0.000000e+00, %4997
  %4999 = call float @dx.op.dot3.f32(i32 55, float %4919, float %4920, float %4921, float %4994, float %4995, float %4996)  ; Dot3(ax,ay,az,bx,by,bz)
  %5000 = fadd fast float %4999, %4894
  %5001 = fadd fast float %4893, %4999
  %5002 = fsub fast float -0.000000e+00, %5001
  %5003 = fcmp ogt float %4997, -0.000000e+00
  %5004 = select i1 %5003, float %5002, float %5000
  %5005 = call float @dx.op.unary.f32(i32 6, float %4998)  ; FAbs(value)
  %5006 = fdiv fast float 1.000000e+00, %5005
  %5007 = fmul fast float %5004, %5006
  %5008 = call float @dx.op.binary.f32(i32 35, float %5007, float 0.000000e+00)  ; FMax(a,b)
  %5009 = call float @dx.op.binary.f32(i32 36, float %4993, float %5008)  ; FMin(a,b)
  %5010 = call float @dx.op.binary.f32(i32 36, float %4978, float %5009)  ; FMin(a,b)
  %5011 = fmul fast float %5010, %4803
  %5012 = fmul fast float %5010, %4804
  %5013 = fmul fast float %5010, %4805
  %5014 = fadd fast float %5011, %155
  %5015 = fadd fast float %5012, %156
  %5016 = fadd fast float %5013, %157
  %5017 = fsub fast float %5014, %4863
  %5018 = fsub fast float %5015, %4864
  %5019 = fsub fast float %5016, %4865
  br label %5027

; <label>:5020                                    ; preds = %4962
  %5021 = fmul fast float %4803, 8.096000e+03
  %5022 = fmul fast float %4804, 8.096000e+03
  %5023 = fmul fast float %4805, 8.096000e+03
  %5024 = fadd fast float %5021, %155
  %5025 = fadd fast float %5022, %156
  %5026 = fadd fast float %5023, %157
  br label %5027

; <label>:5027                                    ; preds = %5020, %4963
  %5028 = phi float [ %4803, %5020 ], [ %5017, %4963 ]
  %5029 = phi float [ %4804, %5020 ], [ %5018, %4963 ]
  %5030 = phi float [ %4805, %5020 ], [ %5019, %4963 ]
  %5031 = phi float [ %5024, %5020 ], [ %5014, %4963 ]
  %5032 = phi float [ %5025, %5020 ], [ %5015, %4963 ]
  %5033 = phi float [ %5026, %5020 ], [ %5016, %4963 ]
  %5034 = fcmp fast olt float %4882, 1.000000e+00
  br i1 %5034, label %5035, label %5066, !dx.controlflow.hints !86

; <label>:5035                                    ; preds = %5027
  %5036 = fmul fast float %5030, %4880
  %5037 = fmul fast float %5029, %4881
  %5038 = fsub fast float %5036, %5037
  %5039 = fmul fast float %5028, %4881
  %5040 = fmul fast float %5030, %4879
  %5041 = fsub fast float %5039, %5040
  %5042 = fmul fast float %5029, %4879
  %5043 = fmul fast float %5028, %4880
  %5044 = fsub fast float %5042, %5043
  %5045 = fmul fast float %5038, 2.000000e+00
  %5046 = fmul fast float %5041, 2.000000e+00
  %5047 = fmul fast float %5044, 2.000000e+00
  %5048 = fmul fast float %5045, %4882
  %5049 = fmul fast float %5046, %4882
  %5050 = fmul fast float %5047, %4882
  %5051 = fmul fast float %5047, %4880
  %5052 = fmul fast float %5046, %4881
  %5053 = fmul fast float %5045, %4881
  %5054 = fmul fast float %5047, %4879
  %5055 = fmul fast float %5046, %4879
  %5056 = fmul fast float %5045, %4880
  %5057 = fadd fast float %5051, %5028
  %5058 = fadd fast float %5057, %5048
  %5059 = fsub fast float %5058, %5052
  %5060 = fsub fast float %5029, %5054
  %5061 = fadd fast float %5060, %5049
  %5062 = fadd fast float %5061, %5053
  %5063 = fadd fast float %5050, %5030
  %5064 = fsub fast float %5063, %5056
  %5065 = fadd fast float %5064, %5055
  br label %5066

; <label>:5066                                    ; preds = %5035, %5027
  %5067 = phi float [ %5059, %5035 ], [ %5028, %5027 ]
  %5068 = phi float [ %5062, %5035 ], [ %5029, %5027 ]
  %5069 = phi float [ %5065, %5035 ], [ %5030, %5027 ]
  br i1 %4908, label %5101, label %5070

; <label>:5070                                    ; preds = %5066
  %5071 = fmul fast float %4571, 0x400187C840000000
  %5072 = fadd fast float %5071, 0xC00EFC2120000000
  %5073 = fmul fast float %5072, %4571
  %5074 = fadd fast float %5073, 0x3FE5D16340000000
  %5075 = fmul fast float %5074, %4571
  %5076 = fadd fast float %5075, 1.000000e+00
  %5077 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5078 = fsub fast float %5031, %155
  %5079 = fsub fast float %5032, %156
  %5080 = fsub fast float %5033, %157
  %5081 = fsub fast float %5031, %4863
  %5082 = fsub fast float %5032, %4864
  %5083 = fsub fast float %5033, %4865
  %5084 = call float @dx.op.dot3.f32(i32 55, float %5078, float %5079, float %5080, float %5078, float %5079, float %5080)  ; Dot3(ax,ay,az,bx,by,bz)
  %5085 = call float @dx.op.dot3.f32(i32 55, float %5081, float %5082, float %5083, float %5081, float %5082, float %5083)  ; Dot3(ax,ay,az,bx,by,bz)
  %5086 = fadd fast float %5085, 0x3EE4F8B580000000
  %5087 = fdiv fast float %5084, %5086
  %5088 = bitcast float %5087 to i32
  %5089 = ashr i32 %5088, 1
  %5090 = add nsw i32 %5089, 532487669
  %5091 = bitcast i32 %5090 to float
  %5092 = fmul fast float %5091, %5077
  %5093 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5094 = fmul fast float %5093, 0x4009981AE0000000
  %5095 = fsub fast float 0x40111BBD80000000, %5094
  %5096 = fmul fast float %5095, %5093
  %5097 = fadd fast float %5096, 0xC0009F6020000000
  %5098 = fmul fast float %5097, %5093
  %5099 = fadd fast float %5098, 1.000000e+00
  %5100 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  br label %5104

; <label>:5101                                    ; preds = %5066
  %5102 = icmp ne i32 %4909, -1
  %5103 = zext i1 %5102 to i32
  br label %5104

; <label>:5104                                    ; preds = %5101, %5070
  %5105 = phi float [ %4571, %5101 ], [ %5100, %5070 ]
  %5106 = phi i32 [ %5103, %5101 ], [ 0, %5070 ]
  %5107 = fmul float %5105, 5.000000e+00
  %5108 = fsub float 5.000000e+00, %5107
  %5109 = icmp ne i32 %5106, 0
  %5110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5111 = extractvalue %dx.types.CBufRet.f32 %5110, 3
  %5112 = fadd fast float %5111, %5108
  %5113 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5112)  ; FMax(a,b)
  %5114 = call float @dx.op.unary.f32(i32 6, float %5067)  ; FAbs(value)
  %5115 = call float @dx.op.unary.f32(i32 6, float %5068)  ; FAbs(value)
  %5116 = fadd fast float %5115, %5114
  %5117 = call float @dx.op.unary.f32(i32 6, float %5069)  ; FAbs(value)
  %5118 = fadd fast float %5116, %5117
  %5119 = fcmp fast oeq float %5118, 0.000000e+00
  %5120 = fdiv fast float 1.000000e+00, %5118
  %5121 = select i1 %5119, float 1.000000e+00, float %5120
  %5122 = fmul fast float %5121, %5067
  %5123 = fmul fast float %5121, %5068
  %5124 = call float @dx.op.unary.f32(i32 6, float %5123)  ; FAbs(value)
  %5125 = call float @dx.op.unary.f32(i32 6, float %5122)  ; FAbs(value)
  %5126 = fsub fast float 1.000000e+00, %5124
  %5127 = fsub fast float 1.000000e+00, %5125
  %5128 = fcmp fast oge float %5122, 0.000000e+00
  %5129 = fcmp fast oge float %5123, 0.000000e+00
  %5130 = select i1 %5128, float 1.000000e+00, float -1.000000e+00
  %5131 = select i1 %5129, float 1.000000e+00, float -1.000000e+00
  %5132 = fcmp fast ole float %5069, 0.000000e+00
  %5133 = fmul fast float %5130, %5126
  %5134 = fmul fast float %5131, %5127
  %5135 = select i1 %5132, float %5133, float %5122
  %5136 = select i1 %5132, float %5134, float %5123
  %5137 = fmul fast float %5135, 5.000000e-01
  %5138 = fmul fast float %5136, 5.000000e-01
  %5139 = fadd fast float %5137, 5.000000e-01
  %5140 = fadd fast float %5138, 5.000000e-01
  %5141 = uitofp i32 %4906 to float
  %5142 = call float @dx.op.binary.f32(i32 36, float %5113, float 3.000000e+00)  ; FMin(a,b)
  %5143 = fadd fast float %5142, 2.000000e+00
  %5144 = call float @dx.op.unary.f32(i32 21, float %5143)  ; Exp(value)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5110, 1
  %5146 = fmul fast float %5145, %5144
  %5147 = fmul fast float %5146, 2.000000e+00
  %5148 = fsub fast float 1.000000e+00, %5147
  %5149 = fmul fast float %5139, %5148
  %5150 = fmul fast float %5140, %5148
  %5151 = fadd fast float %5149, %5146
  %5152 = fadd fast float %5150, %5146
  %5153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5151, float %5152, float %5141, float undef, i32 0, i32 0, i32 undef, float %5113)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5154 = extractvalue %dx.types.ResRet.f32 %5153, 0
  %5155 = extractvalue %dx.types.ResRet.f32 %5153, 1
  %5156 = extractvalue %dx.types.ResRet.f32 %5153, 2
  %5157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5157, 3
  %5159 = fmul fast float %5158, %4876
  %5160 = call float @dx.op.binary.f32(i32 36, float %4636, float %5159)  ; FMin(a,b)
  %5161 = select i1 %5109, float %5160, float %5159
  %5162 = fmul fast float %5154, %4954
  %5163 = fmul fast float %5162, %5161
  %5164 = fmul fast float %5155, %4954
  %5165 = fmul fast float %5164, %5161
  %5166 = fmul fast float %5156, %4954
  %5167 = fmul fast float %5166, %5161
  %5168 = fadd fast float %5163, %4851
  %5169 = fadd fast float %5165, %4852
  %5170 = fadd fast float %5167, %4853
  %5171 = fsub fast float %4854, %4954
  br label %4956

; <label>:5172                                    ; preds = %4956
  br label %5173

; <label>:5173                                    ; preds = %5172, %4820
  %5174 = phi float [ %4821, %4820 ], [ %4957, %5172 ]
  %5175 = phi float [ %4822, %4820 ], [ %4958, %5172 ]
  %5176 = phi float [ %4823, %4820 ], [ %4959, %5172 ]
  %5177 = phi float [ %4824, %4820 ], [ %4960, %5172 ]
  %5178 = add i32 %4825, 1
  %5179 = icmp ugt i32 %5178, %4817
  br i1 %5179, label %5180, label %4820, !llvm.loop !87

; <label>:5180                                    ; preds = %5173
  br label %5181

; <label>:5181                                    ; preds = %5180, %4802
  %5182 = phi float [ 0.000000e+00, %4802 ], [ %5174, %5180 ]
  %5183 = phi float [ 0.000000e+00, %4802 ], [ %5175, %5180 ]
  %5184 = phi float [ 0.000000e+00, %4802 ], [ %5176, %5180 ]
  %5185 = call float @dx.op.dot3.f32(i32 55, float %5182, float %5183, float %5184, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = select i1 %216, float 0.000000e+00, float %5182
  %5187 = select i1 %216, float %5185, float %5183
  %5188 = select i1 %216, float 0.000000e+00, float %5184
  %5189 = fcmp fast olt float %4755, 0.000000e+00
  %5190 = call float @dx.op.unary.f32(i32 6, float %4755)  ; FAbs(value)
  %5191 = fmul fast float %5190, %4695
  %5192 = fmul fast float %5190, %4696
  %5193 = fmul fast float %5190, %4697
  %5194 = select i1 %5189, float %4695, float %5191
  %5195 = select i1 %5189, float %4696, float %5192
  %5196 = select i1 %5189, float %4697, float %5193
  %5197 = fsub fast float 1.000000e+00, %5190
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = fmul fast float %5198, %5186
  %5200 = fmul fast float %5198, %5187
  %5201 = fmul fast float %5198, %5188
  %5202 = fadd fast float %5194, %5199
  %5203 = fadd fast float %5195, %5200
  %5204 = fadd fast float %5196, %5201
  br label %5205

; <label>:5205                                    ; preds = %5181, %4738
  %5206 = phi float [ %4695, %4738 ], [ %5202, %5181 ]
  %5207 = phi float [ %4696, %4738 ], [ %5203, %5181 ]
  %5208 = phi float [ %4697, %4738 ], [ %5204, %5181 ]
  %5209 = fmul fast float %4744, %4691
  %5210 = fmul fast float %4744, %4692
  %5211 = fmul fast float %4744, %4693
  %5212 = call float @dx.op.dot3.f32(i32 55, float %4568, float %4569, float %4570, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5213 = fcmp fast ogt float %5212, 0x3E7FF19E20000000
  %5214 = fdiv fast float 1.000000e+00, %5212
  %5215 = select i1 %5213, float %5214, float 0.000000e+00
  %5216 = fmul fast float %5215, %4568
  %5217 = fmul fast float %5215, %4569
  %5218 = fmul fast float %5215, %4570
  %5219 = fadd fast float %5216, -1.000000e+00
  %5220 = fadd fast float %5217, -1.000000e+00
  %5221 = fadd fast float %5218, -1.000000e+00
  %5222 = fmul fast float %5219, 5.000000e-01
  %5223 = fmul fast float %5220, 5.000000e-01
  %5224 = fmul fast float %5221, 5.000000e-01
  %5225 = fadd fast float %5222, 1.000000e+00
  %5226 = fadd fast float %5223, 1.000000e+00
  %5227 = fadd fast float %5224, 1.000000e+00
  %5228 = fmul fast float %5206, %4739
  %5229 = fmul fast float %5207, %4740
  %5230 = fmul fast float %5208, %4741
  %5231 = fsub fast float 1.000000e+00, %4575
  %5232 = bitcast float %5231 to i32
  %5233 = sitofp i32 %5232 to float
  %5234 = fmul fast float %5233, 5.000000e+00
  %5235 = fadd fast float %5234, 0xC1EFBF8940000000
  %5236 = fptosi float %5235 to i32
  %5237 = bitcast i32 %5236 to float
  %5238 = fmul fast float %5237, %4251
  %5239 = fmul fast float %4691, %5238
  %5240 = fmul fast float %5239, %4744
  %5241 = fmul fast float %5240, %5225
  %5242 = fmul fast float %4692, %5238
  %5243 = fmul fast float %5242, %4744
  %5244 = fmul fast float %5243, %5226
  %5245 = fmul fast float %4693, %5238
  %5246 = fmul fast float %5245, %4744
  %5247 = fmul fast float %5246, %5227
  %5248 = fmul fast float %5209, %4247
  %5249 = fmul fast float %5210, %4247
  %5250 = fmul fast float %5211, %4247
  %5251 = fadd fast float %5228, %4243
  %5252 = fadd fast float %5251, %5241
  %5253 = fmul fast float %5252, %4247
  %5254 = fadd fast float %5229, %4244
  %5255 = fadd fast float %5254, %5244
  %5256 = fmul fast float %5255, %4247
  %5257 = fadd fast float %5230, %4245
  %5258 = fadd fast float %5257, %5247
  %5259 = fmul fast float %5258, %4247
  %5260 = bitcast i32 %4599 to float
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 3
  %5263 = fcmp fast oeq float %5262, 0.000000e+00
  br i1 %5263, label %6730, label %5264

; <label>:5264                                    ; preds = %5205
  %5265 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5266 = extractvalue %dx.types.CBufRet.f32 %5261, 1
  %5267 = extractvalue %dx.types.CBufRet.f32 %5261, 2
  %5268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5269 = extractvalue %dx.types.CBufRet.f32 %5268, 0
  %5270 = extractvalue %dx.types.CBufRet.f32 %5268, 1
  %5271 = extractvalue %dx.types.CBufRet.f32 %5268, 2
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 0
  %5274 = extractvalue %dx.types.CBufRet.f32 %5272, 1
  %5275 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5276 = select i1 %216, float %5273, float %5269
  %5277 = select i1 %216, float %5275, float %5270
  %5278 = select i1 %216, float %5274, float %5271
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 2
  %5281 = fmul fast float %5280, %99
  %5282 = fmul fast float %5280, %100
  %5283 = fmul fast float %5280, %101
  %5284 = fadd fast float %5281, %155
  %5285 = fadd fast float %5282, %156
  %5286 = fadd fast float %5283, %157
  %5287 = fcmp fast olt float %5262, 0.000000e+00
  br i1 %5287, label %6383, label %5288

; <label>:5288                                    ; preds = %5264
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 0
  %5291 = extractvalue %dx.types.CBufRet.f32 %5289, 1
  %5292 = extractvalue %dx.types.CBufRet.f32 %5289, 2
  %5293 = extractvalue %dx.types.CBufRet.f32 %5289, 3
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.CBufRet.f32 %5294, 1
  %5297 = extractvalue %dx.types.CBufRet.f32 %5294, 2
  %5298 = extractvalue %dx.types.CBufRet.f32 %5294, 3
  %5299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = extractvalue %dx.types.CBufRet.f32 %5299, 0
  %5301 = extractvalue %dx.types.CBufRet.f32 %5299, 1
  %5302 = extractvalue %dx.types.CBufRet.f32 %5299, 2
  %5303 = extractvalue %dx.types.CBufRet.f32 %5299, 3
  %5304 = fmul fast float %5290, %5284
  %5305 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %5291, float %5304)  ; FMad(a,b,c)
  %5306 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5292, float %5305)  ; FMad(a,b,c)
  %5307 = fadd fast float %5306, %5293
  %5308 = fmul fast float %5295, %5284
  %5309 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %5296, float %5308)  ; FMad(a,b,c)
  %5310 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5297, float %5309)  ; FMad(a,b,c)
  %5311 = fadd fast float %5310, %5298
  %5312 = fmul fast float %5300, %5284
  %5313 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %5301, float %5312)  ; FMad(a,b,c)
  %5314 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5302, float %5313)  ; FMad(a,b,c)
  %5315 = fadd fast float %5314, %5303
  %5316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5317 = extractvalue %dx.types.CBufRet.f32 %5316, 0
  %5318 = extractvalue %dx.types.CBufRet.f32 %5316, 1
  %5319 = extractvalue %dx.types.CBufRet.f32 %5316, 3
  %5320 = fmul fast float %5319, %5307
  %5321 = fmul fast float %5319, %5311
  %5322 = fadd fast float %5320, %5317
  %5323 = fadd fast float %5321, %5318
  %5324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5325 = extractvalue %dx.types.CBufRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.CBufRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.CBufRet.f32 %5324, 3
  %5328 = fmul fast float %5327, %5307
  %5329 = fmul fast float %5327, %5311
  %5330 = fadd fast float %5328, %5325
  %5331 = fadd fast float %5329, %5326
  %5332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5333 = extractvalue %dx.types.CBufRet.f32 %5332, 1
  %5334 = fsub fast float %5333, %5315
  %5335 = extractvalue %dx.types.CBufRet.f32 %5332, 2
  %5336 = fmul fast float %5334, %5335
  %5337 = fsub fast float 1.000000e+00, %5336
  %5338 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5339 = extractvalue %dx.types.CBufRet.f32 %5324, 2
  %5340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.f32 %5340, 2
  %5342 = fadd fast float %5341, %5339
  %5343 = fcmp fast ogt float %5342, 0.000000e+00
  br i1 %5343, label %5344, label %5368

; <label>:5344                                    ; preds = %5288
  %5345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5346 = extractvalue %dx.types.CBufRet.f32 %5345, 0
  %5347 = extractvalue %dx.types.CBufRet.f32 %5345, 1
  %5348 = fsub fast float %5330, %5346
  %5349 = fsub fast float %5331, %5347
  %5350 = fcmp fast olt float %5348, 0.000000e+00
  %5351 = fcmp fast olt float %5349, 0.000000e+00
  %5352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.f32 %5352, 0
  %5354 = extractvalue %dx.types.CBufRet.f32 %5352, 1
  %5355 = extractvalue %dx.types.CBufRet.f32 %5352, 2
  %5356 = extractvalue %dx.types.CBufRet.f32 %5352, 3
  %5357 = select i1 %5350, float %5353, float %5355
  %5358 = select i1 %5351, float %5354, float %5356
  %5359 = fmul fast float %5357, %5348
  %5360 = fmul fast float %5358, %5349
  %5361 = call float @dx.op.unary.f32(i32 6, float %5359)  ; FAbs(value)
  %5362 = call float @dx.op.unary.f32(i32 6, float %5360)  ; FAbs(value)
  %5363 = extractvalue %dx.types.CBufRet.f32 %5279, 0
  %5364 = call float @dx.op.binary.f32(i32 35, float %5361, float %5362)  ; FMax(a,b)
  %5365 = fsub fast float %5363, %5364
  %5366 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5367 = fmul fast float %5366, %5338
  br label %5368

; <label>:5368                                    ; preds = %5344, %5288
  %5369 = phi float [ %5367, %5344 ], [ 0.000000e+00, %5288 ]
  %5370 = extractvalue %dx.types.CBufRet.f32 %5316, 2
  %5371 = extractvalue %dx.types.CBufRet.f32 %5340, 1
  %5372 = fadd fast float %5371, %5370
  %5373 = fcmp fast ogt float %5372, 0.000000e+00
  %5374 = extractvalue %dx.types.CBufRet.f32 %5279, 0
  br i1 %5373, label %5375, label %5398

; <label>:5375                                    ; preds = %5368
  %5376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.f32 %5376, 0
  %5378 = extractvalue %dx.types.CBufRet.f32 %5376, 1
  %5379 = fsub fast float %5322, %5377
  %5380 = fsub fast float %5323, %5378
  %5381 = fcmp fast olt float %5379, 0.000000e+00
  %5382 = fcmp fast olt float %5380, 0.000000e+00
  %5383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5383, 0
  %5385 = extractvalue %dx.types.CBufRet.f32 %5383, 1
  %5386 = extractvalue %dx.types.CBufRet.f32 %5383, 2
  %5387 = extractvalue %dx.types.CBufRet.f32 %5383, 3
  %5388 = select i1 %5381, float %5384, float %5386
  %5389 = select i1 %5382, float %5385, float %5387
  %5390 = fmul fast float %5388, %5379
  %5391 = fmul fast float %5389, %5380
  %5392 = call float @dx.op.unary.f32(i32 6, float %5390)  ; FAbs(value)
  %5393 = call float @dx.op.unary.f32(i32 6, float %5391)  ; FAbs(value)
  %5394 = call float @dx.op.binary.f32(i32 35, float %5392, float %5393)  ; FMax(a,b)
  %5395 = fsub fast float %5374, %5394
  %5396 = call float @dx.op.unary.f32(i32 7, float %5395)  ; Saturate(value)
  %5397 = fmul fast float %5396, %5338
  br label %5398

; <label>:5398                                    ; preds = %5375, %5368
  %5399 = phi float [ %5397, %5375 ], [ 0.000000e+00, %5368 ]
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 1
  %5402 = call float @dx.op.unary.f32(i32 7, float %5401)  ; Saturate(value)
  %5403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5404 = extractvalue %dx.types.CBufRet.f32 %5403, 0
  %5405 = extractvalue %dx.types.CBufRet.f32 %5403, 1
  %5406 = fsub fast float %5307, %5404
  %5407 = fsub fast float %5311, %5405
  %5408 = fcmp fast olt float %5406, 0.000000e+00
  %5409 = fcmp fast olt float %5407, 0.000000e+00
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 0
  %5412 = extractvalue %dx.types.CBufRet.f32 %5410, 1
  %5413 = extractvalue %dx.types.CBufRet.f32 %5410, 2
  %5414 = extractvalue %dx.types.CBufRet.f32 %5410, 3
  %5415 = select i1 %5408, float %5411, float %5413
  %5416 = select i1 %5409, float %5412, float %5414
  %5417 = fmul fast float %5415, %5406
  %5418 = fmul fast float %5416, %5407
  %5419 = call float @dx.op.unary.f32(i32 6, float %5417)  ; FAbs(value)
  %5420 = call float @dx.op.unary.f32(i32 6, float %5418)  ; FAbs(value)
  %5421 = call float @dx.op.binary.f32(i32 35, float %5419, float %5420)  ; FMax(a,b)
  %5422 = fsub fast float %5374, %5421
  %5423 = call float @dx.op.unary.f32(i32 7, float %5422)  ; Saturate(value)
  %5424 = call float @dx.op.binary.f32(i32 36, float %5423, float %5402)  ; FMin(a,b)
  %5425 = fmul fast float %5424, %5338
  %5426 = fsub fast float %5399, %5425
  %5427 = fsub fast float %5369, %5399
  %5428 = fsub fast float %5427, %5425
  %5429 = call float @dx.op.binary.f32(i32 35, float %5399, float %5369)  ; FMax(a,b)
  %5430 = call float @dx.op.binary.f32(i32 35, float %5425, float %5429)  ; FMax(a,b)
  %5431 = fcmp fast olt float %5430, 1.000000e+00
  br i1 %5431, label %5432, label %5830, !dx.controlflow.hints !89

; <label>:5432                                    ; preds = %5398
  %5433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5434 = extractvalue %dx.types.CBufRet.f32 %5433, 0
  %5435 = fcmp fast une float %5434, 0.000000e+00
  br i1 %5435, label %5436, label %5830, !dx.controlflow.hints !90

; <label>:5436                                    ; preds = %5432
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 0
  %5439 = extractvalue %dx.types.CBufRet.f32 %5437, 1
  %5440 = extractvalue %dx.types.CBufRet.f32 %5437, 2
  %5441 = extractvalue %dx.types.CBufRet.f32 %5437, 3
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.CBufRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.CBufRet.f32 %5442, 2
  %5446 = extractvalue %dx.types.CBufRet.f32 %5442, 3
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.CBufRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.CBufRet.f32 %5447, 2
  %5451 = extractvalue %dx.types.CBufRet.f32 %5447, 3
  %5452 = fmul fast float %5438, %5284
  %5453 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %5439, float %5452)  ; FMad(a,b,c)
  %5454 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5440, float %5453)  ; FMad(a,b,c)
  %5455 = fadd fast float %5454, %5441
  %5456 = fmul fast float %5443, %5284
  %5457 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %5444, float %5456)  ; FMad(a,b,c)
  %5458 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5445, float %5457)  ; FMad(a,b,c)
  %5459 = fadd fast float %5458, %5446
  %5460 = fmul fast float %5448, %5284
  %5461 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %5449, float %5460)  ; FMad(a,b,c)
  %5462 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %5450, float %5461)  ; FMad(a,b,c)
  %5463 = fadd fast float %5462, %5451
  %5464 = fcmp fast oge float %5455, 1.000000e+00
  %5465 = fcmp fast oge float %5459, 1.000000e+00
  %5466 = or i1 %5464, %5465
  %5467 = fcmp fast olt float %5455, 0.000000e+00
  %5468 = fcmp fast olt float %5459, 0.000000e+00
  %5469 = or i1 %5467, %5468
  %5470 = or i1 %5466, %5469
  br i1 %5470, label %5830, label %5471, !dx.controlflow.hints !91

; <label>:5471                                    ; preds = %5436
  %5472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5473 = extractvalue %dx.types.CBufRet.f32 %5472, 0
  %5474 = extractvalue %dx.types.CBufRet.f32 %5472, 1
  %5475 = extractvalue %dx.types.CBufRet.f32 %5472, 2
  %5476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5477 = extractvalue %dx.types.CBufRet.i32 %5476, 2
  %5478 = uitofp i32 %5477 to float
  %5479 = extractvalue %dx.types.CBufRet.i32 %5476, 3
  %5480 = uitofp i32 %5479 to float
  %5481 = extractvalue %dx.types.CBufRet.f32 %5472, 3
  %5482 = fmul fast float %5481, 2.000000e+00
  %5483 = fsub fast float %5455, %5473
  %5484 = fsub fast float %5459, %5474
  %5485 = fmul fast float %5482, %5483
  %5486 = fmul fast float %5482, %5484
  %5487 = fdiv fast float 1.000000e+00, %5267
  %5488 = fmul fast float %5486, %5487
  %5489 = call float @dx.op.unary.f32(i32 6, float %5488)  ; FAbs(value)
  %5490 = fmul fast float %5475, %5286
  %5491 = fmul fast float %5490, %5482
  %5492 = call float @dx.op.unary.f32(i32 6, float %5491)  ; FAbs(value)
  %5493 = call float @dx.op.unary.f32(i32 6, float %5485)  ; FAbs(value)
  %5494 = call float @dx.op.binary.f32(i32 35, float %5492, float %5489)  ; FMax(a,b)
  %5495 = call float @dx.op.binary.f32(i32 35, float %5493, float %5494)  ; FMax(a,b)
  %5496 = fmul fast float %5495, 2.000000e+00
  %5497 = call float @dx.op.unary.f32(i32 23, float %5496)  ; Log(value)
  %5498 = call float @dx.op.binary.f32(i32 35, float %5497, float %5478)  ; FMax(a,b)
  %5499 = call float @dx.op.unary.f32(i32 22, float %5498)  ; Frc(value)
  %5500 = fadd fast float %5499, 0xBFEA666660000000
  %5501 = fmul fast float %5500, 8.000000e+00
  %5502 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5503 = call float @dx.op.unary.f32(i32 27, float %5498)  ; Round_ni(value)
  %5504 = fadd fast float %5503, %5502
  %5505 = call float @dx.op.binary.f32(i32 36, float %5504, float %5480)  ; FMin(a,b)
  %5506 = call float @dx.op.unary.f32(i32 27, float %5505)  ; Round_ni(value)
  %5507 = fsub fast float -0.000000e+00, %5506
  %5508 = call float @dx.op.unary.f32(i32 21, float %5507)  ; Exp(value)
  %5509 = fmul fast float %5508, %5482
  %5510 = fmul fast float %5509, %5455
  %5511 = fmul fast float %5509, %5459
  %5512 = fmul fast float %5510, 2.500000e-01
  %5513 = fmul fast float %5511, 2.500000e-01
  %5514 = fadd fast float %5512, 5.000000e-01
  %5515 = fadd fast float %5513, 5.000000e-01
  %5516 = fsub fast float %5480, %5478
  %5517 = fptoui float %5516 to i32
  %5518 = add i32 %5517, 320
  %5519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %5518)  ; CBufferLoadLegacy(handle,regIndex)
  %5520 = extractvalue %dx.types.CBufRet.f32 %5519, 0
  %5521 = extractvalue %dx.types.CBufRet.f32 %5519, 1
  %5522 = fcmp fast une float %5505, %5480
  %5523 = fsub fast float %5455, %5520
  %5524 = fsub fast float %5459, %5521
  %5525 = call float @dx.op.unary.f32(i32 6, float %5523)  ; FAbs(value)
  %5526 = call float @dx.op.unary.f32(i32 6, float %5524)  ; FAbs(value)
  %5527 = fmul fast float %5525, %5509
  %5528 = fmul fast float %5526, %5509
  %5529 = fcmp fast olt float %5527, 1.000000e+00
  %5530 = fcmp fast olt float %5528, 1.000000e+00
  %5531 = and i1 %5529, %5530
  %5532 = or i1 %5522, %5531
  br i1 %5532, label %5533, label %5830, !dx.controlflow.hints !92

; <label>:5533                                    ; preds = %5471
  %5534 = fmul fast float %5511, 5.000000e-01
  %5535 = fmul fast float %5510, 5.000000e-01
  %5536 = fadd fast float %5534, 5.000000e-01
  %5537 = fadd fast float %5535, 5.000000e-01
  %5538 = sitofp i32 %5477 to float
  %5539 = fsub fast float %5505, %5538
  %5540 = call float @dx.op.unary.f32(i32 27, float %5539)  ; Round_ni(value)
  %5541 = call float @dx.op.unary.f32(i32 22, float %5505)  ; Frc(value)
  %5542 = call float @dx.op.unary.f32(i32 22, float %5537)  ; Frc(value)
  %5543 = call float @dx.op.unary.f32(i32 22, float %5536)  ; Frc(value)
  %5544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %5542, float %5543, float %5540, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5545 = extractvalue %dx.types.ResRet.f32 %5544, 0
  %5546 = extractvalue %dx.types.ResRet.f32 %5544, 1
  %5547 = extractvalue %dx.types.ResRet.f32 %5544, 2
  %5548 = extractvalue %dx.types.ResRet.f32 %5544, 3
  %5549 = fcmp fast ogt float %5541, 0.000000e+00
  br i1 %5549, label %5550, label %5571, !dx.controlflow.hints !93

; <label>:5550                                    ; preds = %5533
  %5551 = fadd fast float %5540, 1.000000e+00
  %5552 = call float @dx.op.unary.f32(i32 22, float %5514)  ; Frc(value)
  %5553 = call float @dx.op.unary.f32(i32 22, float %5515)  ; Frc(value)
  %5554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %5552, float %5553, float %5551, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5555 = extractvalue %dx.types.ResRet.f32 %5554, 0
  %5556 = extractvalue %dx.types.ResRet.f32 %5554, 1
  %5557 = extractvalue %dx.types.ResRet.f32 %5554, 2
  %5558 = extractvalue %dx.types.ResRet.f32 %5554, 3
  %5559 = fsub fast float %5555, %5545
  %5560 = fsub fast float %5556, %5546
  %5561 = fsub fast float %5557, %5547
  %5562 = fsub fast float %5558, %5548
  %5563 = fmul fast float %5559, %5541
  %5564 = fmul fast float %5560, %5541
  %5565 = fmul fast float %5561, %5541
  %5566 = fmul fast float %5562, %5541
  %5567 = fadd fast float %5563, %5545
  %5568 = fadd fast float %5564, %5546
  %5569 = fadd fast float %5565, %5547
  %5570 = fadd fast float %5566, %5548
  br label %5571

; <label>:5571                                    ; preds = %5550, %5533
  %5572 = phi float [ %5567, %5550 ], [ %5545, %5533 ]
  %5573 = phi float [ %5568, %5550 ], [ %5546, %5533 ]
  %5574 = phi float [ %5569, %5550 ], [ %5547, %5533 ]
  %5575 = phi float [ %5570, %5550 ], [ %5548, %5533 ]
  %5576 = fadd fast float %5572, -5.000000e-01
  %5577 = fadd fast float %5574, -5.000000e-01
  %5578 = fmul fast float %5576, 0xBFD5555560000000
  %5579 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5577, float %5578)  ; FMad(a,b,c)
  %5580 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5573, float 0.000000e+00)  ; FMad(a,b,c)
  %5581 = fadd fast float %5580, %5575
  %5582 = fmul fast float %5576, -7.500000e-01
  %5583 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5577, float %5582)  ; FMad(a,b,c)
  %5584 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5573, float 0.000000e+00)  ; FMad(a,b,c)
  %5585 = fadd fast float %5584, %5575
  %5586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5587 = extractvalue %dx.types.CBufRet.f32 %5586, 0
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 0
  %5590 = extractvalue %dx.types.CBufRet.f32 %5588, 1
  %5591 = extractvalue %dx.types.CBufRet.f32 %5588, 2
  %5592 = extractvalue %dx.types.CBufRet.f32 %5588, 3
  %5593 = fsub fast float %5589, %5579
  %5594 = fsub fast float %5590, %5581
  %5595 = fsub fast float %5591, %5583
  %5596 = fsub fast float %5592, %5585
  %5597 = fmul fast float %5593, %5587
  %5598 = fmul fast float %5594, %5587
  %5599 = fmul fast float %5595, %5587
  %5600 = fmul fast float %5596, %5587
  %5601 = fadd fast float %5597, %5579
  %5602 = fadd fast float %5598, %5581
  %5603 = fadd fast float %5599, %5583
  %5604 = fadd fast float %5600, %5585
  %5605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5606 = extractvalue %dx.types.ResRet.i32 %5605, 0
  %5607 = and i32 %5606, 536870911
  %5608 = uitofp i32 %5607 to float
  %5609 = fmul fast float %5608, %5455
  %5610 = fmul fast float %5608, %5459
  %5611 = fptoui float %5609 to i32
  %5612 = fptoui float %5610 to i32
  %5613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5614 = extractvalue %dx.types.ResRet.i32 %5613, 0
  %5615 = and i32 %5614, 31
  %5616 = lshr i32 %5611, %5615
  %5617 = lshr i32 %5612, %5615
  %5618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5619 = extractvalue %dx.types.ResRet.i32 %5618, 0
  %5620 = and i32 %5619, 31
  %5621 = shl i32 1, %5620
  %5622 = call i32 @dx.op.binary.i32(i32 40, i32 %5621, i32 4)  ; UMin(a,b)
  %5623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5624 = extractvalue %dx.types.ResRet.i32 %5623, 0
  %5625 = extractvalue %dx.types.ResRet.i32 %5623, 1
  %5626 = icmp eq i32 %5622, 0
  br i1 %5626, label %5668, label %5627

; <label>:5627                                    ; preds = %5571
  br label %5628

; <label>:5628                                    ; preds = %5656, %5627
  %5629 = phi i32 [ %5659, %5656 ], [ 0, %5627 ]
  %5630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5631 = extractvalue %dx.types.ResRet.i32 %5630, 0
  %5632 = lshr i32 %5631, 16
  %5633 = and i32 %5632, 31
  %5634 = shl i32 %5617, %5633
  %5635 = add i32 %5634, %5616
  %5636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5637 = extractvalue %dx.types.ResRet.i32 %5636, 0
  %5638 = and i32 %5637, 31
  %5639 = shl i32 %5635, %5638
  %5640 = add i32 %5639, %5629
  %5641 = shl i32 %5640, 2
  %5642 = add i32 %5641, 32
  %5643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5642, i32 undef)  ; BufferLoad(srv,index,wot)
  %5644 = extractvalue %dx.types.ResRet.i32 %5643, 0
  %5645 = icmp slt i32 %5644, 0
  %5646 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %5629
  %5647 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %5629
  %5648 = bitcast float* %5646 to i32*
  %5649 = bitcast float* %5647 to i32*
  br i1 %5645, label %5650, label %5656

; <label>:5650                                    ; preds = %5628
  %5651 = and i32 %5644, 1073741823
  %5652 = add nuw nsw i32 %5651, 20
  %5653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5652, i32 undef)  ; BufferLoad(srv,index,wot)
  %5654 = extractvalue %dx.types.ResRet.i32 %5653, 0
  %5655 = extractvalue %dx.types.ResRet.i32 %5653, 1
  br label %5656

; <label>:5656                                    ; preds = %5650, %5628
  %5657 = phi i32 [ %5654, %5650 ], [ %5624, %5628 ]
  %5658 = phi i32 [ %5655, %5650 ], [ %5625, %5628 ]
  store i32 %5657, i32* %5648, align 4
  store i32 %5658, i32* %5649, align 4
  %5659 = add nuw i32 %5629, 1
  %5660 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.i32 %5660, 2
  %5662 = icmp eq i32 %5661, 0
  %5663 = icmp ugt i32 %5644, -1073741825
  %5664 = and i1 %5663, %5662
  %5665 = icmp ult i32 %5659, %5622
  %5666 = and i1 %5664, %5665
  br i1 %5666, label %5628, label %5667

; <label>:5667                                    ; preds = %5656
  br label %5668

; <label>:5668                                    ; preds = %5667, %5571
  %5669 = phi i32 [ 0, %5571 ], [ %5659, %5667 ]
  %5670 = extractvalue %dx.types.CBufRet.f32 %5433, 2
  %5671 = fptoui float %5670 to i32
  %5672 = icmp eq i32 %5671, 0
  br i1 %5672, label %5724, label %5673

; <label>:5673                                    ; preds = %5668
  br label %5674

; <label>:5674                                    ; preds = %5719, %5673
  %5675 = phi i32 [ %5720, %5719 ], [ %5669, %5673 ]
  %5676 = phi i32 [ %5721, %5719 ], [ 0, %5673 ]
  %5677 = lshr i32 %5676, 2
  %5678 = and i32 %5676, 3
  %5679 = add nuw nsw i32 %5677, 83
  %5680 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %5679)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.i32 %5680, 0
  %5682 = extractvalue %dx.types.CBufRet.i32 %5680, 1
  %5683 = extractvalue %dx.types.CBufRet.i32 %5680, 2
  %5684 = extractvalue %dx.types.CBufRet.i32 %5680, 3
  %5685 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %5681, i32* %5685, align 4
  %5686 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %5682, i32* %5686, align 4
  %5687 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %5683, i32* %5687, align 4
  %5688 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %5684, i32* %5688, align 4
  %5689 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %5678
  %5690 = load i32, i32* %5689, align 4, !tbaa !94, !noalias !98
  %5691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5692 = extractvalue %dx.types.ResRet.i32 %5691, 0
  %5693 = lshr i32 %5692, 16
  %5694 = and i32 %5693, 31
  %5695 = shl i32 %5617, %5694
  %5696 = add i32 %5695, %5616
  %5697 = shl i32 %5696, 2
  %5698 = add i32 %5697, %5690
  %5699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5698, i32 undef)  ; BufferLoad(srv,index,wot)
  %5700 = extractvalue %dx.types.ResRet.i32 %5699, 0
  %5701 = icmp eq i32 %5700, 0
  br i1 %5701, label %5719, label %5702

; <label>:5702                                    ; preds = %5674
  %5703 = icmp slt i32 %5700, 0
  %5704 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %5675
  %5705 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %5675
  %5706 = bitcast float* %5704 to i32*
  %5707 = bitcast float* %5705 to i32*
  br i1 %5703, label %5708, label %5715

; <label>:5708                                    ; preds = %5702
  %5709 = and i32 %5700, 1073741823
  %5710 = add i32 %5690, 20
  %5711 = add i32 %5710, %5709
  %5712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5711, i32 undef)  ; BufferLoad(srv,index,wot)
  %5713 = extractvalue %dx.types.ResRet.i32 %5712, 0
  %5714 = extractvalue %dx.types.ResRet.i32 %5712, 1
  br label %5715

; <label>:5715                                    ; preds = %5708, %5702
  %5716 = phi i32 [ %5713, %5708 ], [ %5624, %5702 ]
  %5717 = phi i32 [ %5714, %5708 ], [ %5625, %5702 ]
  store i32 %5716, i32* %5706, align 4
  store i32 %5717, i32* %5707, align 4
  %5718 = add i32 %5675, 1
  br label %5719

; <label>:5719                                    ; preds = %5715, %5674
  %5720 = phi i32 [ %5675, %5674 ], [ %5718, %5715 ]
  %5721 = add nuw i32 %5676, 1
  %5722 = icmp eq i32 %5721, %5671
  br i1 %5722, label %5723, label %5674

; <label>:5723                                    ; preds = %5719
  br label %5724

; <label>:5724                                    ; preds = %5723, %5668
  %5725 = phi i32 [ %5669, %5668 ], [ %5720, %5723 ]
  %5726 = icmp eq i32 %5725, 1
  %5727 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 0
  %5728 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  br i1 %5726, label %5729, label %5732

; <label>:5729                                    ; preds = %5724
  %5730 = load float, float* %5727, align 4
  %5731 = load float, float* %5728, align 4
  br label %5759

; <label>:5732                                    ; preds = %5724
  %5733 = load float, float* %5727, align 4
  %5734 = load float, float* %5728, align 4
  %5735 = fdiv fast float 1.000000e+00, %5734
  %5736 = fsub fast float %5733, %5735
  %5737 = icmp ugt i32 %5725, 1
  br i1 %5737, label %5738, label %5754

; <label>:5738                                    ; preds = %5732
  br label %5739

; <label>:5739                                    ; preds = %5739, %5738
  %5740 = phi float [ %5749, %5739 ], [ %5736, %5738 ]
  %5741 = phi float [ %5750, %5739 ], [ %5733, %5738 ]
  %5742 = phi i32 [ %5751, %5739 ], [ 1, %5738 ]
  %5743 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %5742
  %5744 = load float, float* %5743, align 4
  %5745 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %5742
  %5746 = load float, float* %5745, align 4
  %5747 = fdiv fast float 1.000000e+00, %5746
  %5748 = fsub fast float %5744, %5747
  %5749 = call float @dx.op.binary.f32(i32 36, float %5740, float %5748)  ; FMin(a,b)
  %5750 = call float @dx.op.binary.f32(i32 35, float %5741, float %5744)  ; FMax(a,b)
  %5751 = add nuw i32 %5742, 1
  %5752 = icmp eq i32 %5751, %5725
  br i1 %5752, label %5753, label %5739

; <label>:5753                                    ; preds = %5739
  br label %5754

; <label>:5754                                    ; preds = %5753, %5732
  %5755 = phi float [ %5736, %5732 ], [ %5749, %5753 ]
  %5756 = phi float [ %5733, %5732 ], [ %5750, %5753 ]
  %5757 = fsub fast float %5756, %5755
  %5758 = fdiv fast float 1.000000e+00, %5757
  br label %5759

; <label>:5759                                    ; preds = %5754, %5729
  %5760 = phi float [ %5730, %5729 ], [ %5756, %5754 ]
  %5761 = phi float [ %5731, %5729 ], [ %5758, %5754 ]
  %5762 = fadd fast float %5463, %5760
  %5763 = fmul fast float %5762, %5761
  %5764 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  %5765 = fmul fast float %5764, 2.000000e+00
  %5766 = fsub fast float 1.000000e+00, %5765
  %5767 = fmul fast float %5601, %5601
  %5768 = fsub fast float %5602, %5767
  %5769 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5768)  ; FMax(a,b)
  %5770 = fdiv fast float 1.000000e+00, %5769
  %5771 = fmul fast float %5602, %5601
  %5772 = fsub fast float %5603, %5771
  %5773 = fsub fast float %5766, %5601
  %5774 = fmul fast float %5766, %5766
  %5775 = fsub fast float %5774, %5602
  %5776 = fmul fast float %5770, %5772
  %5777 = fmul fast float %5776, %5773
  %5778 = fsub fast float %5775, %5777
  %5779 = fmul fast float %5602, %5602
  %5780 = fsub fast float %5604, %5779
  %5781 = fmul fast float %5772, %5772
  %5782 = fmul fast float %5781, %5770
  %5783 = fsub fast float %5780, %5782
  %5784 = fdiv fast float %5778, %5783
  %5785 = fmul fast float %5784, %5772
  %5786 = fsub fast float %5773, %5785
  %5787 = fmul fast float %5786, %5770
  %5788 = fmul fast float %5787, %5601
  %5789 = fsub fast float 1.000000e+00, %5788
  %5790 = fmul fast float %5784, %5602
  %5791 = fsub fast float %5789, %5790
  %5792 = fmul fast float %5787, %5787
  %5793 = fmul fast float %5784, 4.000000e+00
  %5794 = fmul fast float %5793, %5791
  %5795 = fsub fast float %5792, %5794
  %5796 = call float @dx.op.unary.f32(i32 24, float %5795)  ; Sqrt(value)
  %5797 = fcmp fast oge float %5787, 0.000000e+00
  %5798 = fsub fast float -0.000000e+00, %5796
  %5799 = select i1 %5797, float %5798, float %5796
  %5800 = fsub fast float %5799, %5787
  %5801 = fdiv fast float %5800, %5784
  %5802 = fdiv fast float %5791, %5800
  %5803 = fmul fast float %5801, 5.000000e-01
  %5804 = fmul fast float %5802, 2.000000e+00
  %5805 = select i1 %5797, float %5803, float %5804
  %5806 = select i1 %5797, float %5804, float %5803
  %5807 = call float @dx.op.binary.f32(i32 35, float %5805, float %5806)  ; FMax(a,b)
  %5808 = call float @dx.op.binary.f32(i32 36, float %5805, float %5806)  ; FMin(a,b)
  %5809 = fcmp fast ogt float %5766, %5807
  %5810 = fsub fast float %5766, %5808
  %5811 = fsub fast float %5766, %5807
  %5812 = fsub fast float %5807, %5808
  %5813 = select i1 %5809, float %5811, float %5812
  %5814 = fmul float %5810, %5813
  %5815 = select i1 %5809, float %5808, float %5766
  %5816 = fcmp fast ogt float %5766, %5808
  %5817 = fmul fast float %5815, %5807
  %5818 = fadd fast float %5815, %5807
  %5819 = fmul fast float %5818, %5601
  %5820 = fadd fast float %5817, %5602
  %5821 = fsub fast float %5820, %5819
  %5822 = fdiv fast float %5821, %5814
  %5823 = select i1 %5816, float %5822, float 0.000000e+00
  %5824 = fsub fast float 1.000000e+00, %5823
  %5825 = select i1 %5809, float %5824, float %5823
  %5826 = call float @dx.op.unary.f32(i32 7, float %5825)  ; Saturate(value)
  %5827 = extractvalue %dx.types.CBufRet.f32 %5586, 3
  %5828 = fmul fast float %5827, %5826
  %5829 = fsub fast float 1.000000e+00, %5828
  br label %5830

; <label>:5830                                    ; preds = %5759, %5471, %5436, %5432, %5398
  %5831 = phi float [ 1.000000e+00, %5398 ], [ %5829, %5759 ], [ 1.000000e+00, %5436 ], [ 1.000000e+00, %5471 ], [ 1.000000e+00, %5432 ]
  %5832 = fcmp fast ogt float %5428, 0.000000e+00
  br i1 %5832, label %5833, label %5995, !dx.controlflow.hints !107

; <label>:5833                                    ; preds = %5830
  %5834 = fadd fast float %5341, %5315
  %5835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.f32 %5835, 2
  %5837 = extractvalue %dx.types.CBufRet.f32 %5835, 3
  %5838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5838, 2
  %5840 = call float @dx.op.binary.f32(i32 35, float %5834, float 0.000000e+00)  ; FMax(a,b)
  %5841 = fadd fast float %5840, 0x3F10000000000000
  %5842 = fcmp fast oeq float %5839, 0.000000e+00
  br i1 %5842, label %5843, label %5910

; <label>:5843                                    ; preds = %5833
  %5844 = extractvalue %dx.types.CBufRet.f32 %5835, 1
  %5845 = extractvalue %dx.types.CBufRet.f32 %5835, 0
  %5846 = fmul fast float %5845, %5330
  %5847 = fmul fast float %5844, %5331
  %5848 = fadd fast float %5846, 5.000000e-01
  %5849 = call float @dx.op.unary.f32(i32 27, float %5848)  ; Round_ni(value)
  %5850 = fadd fast float %5847, 5.000000e-01
  %5851 = call float @dx.op.unary.f32(i32 27, float %5850)  ; Round_ni(value)
  %5852 = fsub fast float %5848, %5849
  %5853 = fsub fast float %5850, %5851
  %5854 = fadd fast float %5849, -5.000000e-01
  %5855 = fadd fast float %5851, -5.000000e-01
  %5856 = fmul fast float %5852, 2.000000e+00
  %5857 = fsub fast float 3.000000e+00, %5856
  %5858 = fadd fast float %5856, 1.000000e+00
  %5859 = fsub fast float 2.000000e+00, %5852
  %5860 = bitcast float %5857 to i32
  %5861 = sub nsw i32 2129859010, %5860
  %5862 = bitcast i32 %5861 to float
  %5863 = fmul fast float %5862, %5859
  %5864 = fadd fast float %5863, -1.000000e+00
  %5865 = bitcast float %5858 to i32
  %5866 = sub nsw i32 2129859010, %5865
  %5867 = bitcast i32 %5866 to float
  %5868 = fmul fast float %5867, %5852
  %5869 = fadd fast float %5868, 1.000000e+00
  %5870 = fmul fast float %5853, 2.000000e+00
  %5871 = fsub fast float 3.000000e+00, %5870
  %5872 = fadd fast float %5870, 1.000000e+00
  %5873 = fsub fast float 2.000000e+00, %5853
  %5874 = bitcast float %5871 to i32
  %5875 = sub nsw i32 2129859010, %5874
  %5876 = bitcast i32 %5875 to float
  %5877 = fmul fast float %5876, %5873
  %5878 = fadd fast float %5877, -1.000000e+00
  %5879 = bitcast float %5872 to i32
  %5880 = sub nsw i32 2129859010, %5879
  %5881 = bitcast i32 %5880 to float
  %5882 = fmul fast float %5881, %5853
  %5883 = fadd fast float %5882, 1.000000e+00
  %5884 = fadd fast float %5864, %5854
  %5885 = fmul fast float %5884, %5836
  %5886 = fadd fast float %5878, %5855
  %5887 = fmul fast float %5886, %5837
  %5888 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %5885, float %5887, float undef, float undef, i32 0, i32 0, i32 undef, float %5841)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5889 = extractvalue %dx.types.ResRet.f32 %5888, 0
  %5890 = fmul fast float %5889, %5857
  %5891 = fadd fast float %5869, %5854
  %5892 = fmul fast float %5891, %5836
  %5893 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %5892, float %5887, float undef, float undef, i32 0, i32 0, i32 undef, float %5841)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5894 = extractvalue %dx.types.ResRet.f32 %5893, 0
  %5895 = fmul fast float %5894, %5858
  %5896 = fadd fast float %5883, %5855
  %5897 = fmul fast float %5896, %5837
  %5898 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %5885, float %5897, float undef, float undef, i32 0, i32 0, i32 undef, float %5841)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5899 = extractvalue %dx.types.ResRet.f32 %5898, 0
  %5900 = fmul fast float %5899, %5857
  %5901 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %5892, float %5897, float undef, float undef, i32 0, i32 0, i32 undef, float %5841)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5902 = extractvalue %dx.types.ResRet.f32 %5901, 0
  %5903 = fmul fast float %5902, %5858
  %5904 = fadd fast float %5903, %5900
  %5905 = fmul fast float %5904, %5872
  %5906 = fadd fast float %5895, %5890
  %5907 = fmul fast float %5906, %5871
  %5908 = fadd fast float %5907, %5905
  %5909 = fmul fast float %5908, 6.250000e-02
  br label %5995

; <label>:5910                                    ; preds = %5833
  %5911 = fmul fast float %227, 0x401921FB60000000
  %5912 = call float @dx.op.unary.f32(i32 13, float %5911)  ; Sin(value)
  %5913 = call float @dx.op.unary.f32(i32 12, float %5911)  ; Cos(value)
  %5914 = fsub fast float -0.000000e+00, %5912
  br label %5915

; <label>:5915                                    ; preds = %5964, %5910
  %5916 = phi float [ 0.000000e+00, %5910 ], [ %5959, %5964 ]
  %5917 = phi float [ 0.000000e+00, %5910 ], [ %5961, %5964 ]
  %5918 = phi i32 [ 0, %5910 ], [ %5965, %5964 ]
  %5919 = mul i32 %5918, 2
  %5920 = add i32 0, %5919
  %5921 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5920
  %5922 = load float, float* %5921, align 4
  %5923 = mul i32 %5918, 2
  %5924 = add i32 1, %5923
  %5925 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5924
  %5926 = load float, float* %5925, align 4
  %5927 = fmul fast float %5922, %5913
  %5928 = call float @dx.op.tertiary.f32(i32 46, float %5926, float %5914, float %5927)  ; FMad(a,b,c)
  %5929 = fmul fast float %5922, %5912
  %5930 = call float @dx.op.tertiary.f32(i32 46, float %5926, float %5913, float %5929)  ; FMad(a,b,c)
  %5931 = fmul fast float %5928, %5839
  %5932 = fmul fast float %5930, %5839
  %5933 = fadd fast float %5931, %5330
  %5934 = fadd fast float %5932, %5331
  %5935 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %5933, float %5934, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5936 = extractvalue %dx.types.ResRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.ResRet.f32 %5935, 1
  %5938 = extractvalue %dx.types.ResRet.f32 %5935, 2
  %5939 = extractvalue %dx.types.ResRet.f32 %5935, 3
  %5940 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %5936, float* %5940, align 4
  %5941 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %5937, float* %5941, align 4
  %5942 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %5938, float* %5942, align 4
  %5943 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %5939, float* %5943, align 4
  %5944 = fsub fast float %5936, %5841
  %5945 = fcmp fast olt float %5944, 0.000000e+00
  %5946 = select i1 %5945, float 0.000000e+00, float 1.000000e+00
  %5947 = fadd fast float %5946, %5916
  %5948 = fmul fast float %5946, %5944
  %5949 = fadd fast float %5948, %5917
  br label %5950

; <label>:5950                                    ; preds = %5950, %5915
  %5951 = phi i32 [ 1, %5915 ], [ %5962, %5950 ]
  %5952 = phi float [ %5949, %5915 ], [ %5961, %5950 ]
  %5953 = phi float [ %5947, %5915 ], [ %5959, %5950 ]
  %5954 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %5951
  %5955 = load float, float* %5954, align 4, !tbaa !108, !noalias !98
  %5956 = fsub fast float %5955, %5841
  %5957 = fcmp fast olt float %5956, 0.000000e+00
  %5958 = select i1 %5957, float 0.000000e+00, float 1.000000e+00
  %5959 = fadd fast float %5958, %5953
  %5960 = fmul fast float %5958, %5956
  %5961 = fadd fast float %5960, %5952
  %5962 = add nuw nsw i32 %5951, 1
  %5963 = icmp eq i32 %5962, 4
  br i1 %5963, label %5964, label %5950, !llvm.loop !110

; <label>:5964                                    ; preds = %5950
  %5965 = add nuw nsw i32 %5918, 1
  %5966 = icmp eq i32 %5965, 8
  br i1 %5966, label %5967, label %5915, !llvm.loop !111

; <label>:5967                                    ; preds = %5964
  %5968 = fdiv fast float 1.000000e+00, %5959
  %5969 = fmul fast float %5968, %5961
  %5970 = fdiv fast float 1.000000e+00, %5841
  %5971 = fmul fast float %5969, %5970
  %5972 = call float @dx.op.unary.f32(i32 7, float %5971)  ; Saturate(value)
  %5973 = call float @dx.op.binary.f32(i32 35, float %5972, float 0.000000e+00)  ; FMax(a,b)
  %5974 = fmul fast float %5959, 3.125000e-02
  %5975 = call float @dx.op.unary.f32(i32 7, float %5974)  ; Saturate(value)
  %5976 = fmul fast float %5975, 2.000000e+00
  %5977 = fadd fast float %5976, -1.000000e+00
  %5978 = fcmp fast ogt float %5977, 0.000000e+00
  %5979 = fcmp fast olt float %5977, 0.000000e+00
  %5980 = zext i1 %5978 to i32
  %5981 = zext i1 %5979 to i32
  %5982 = sub nsw i32 %5980, %5981
  %5983 = sitofp i32 %5982 to float
  %5984 = fmul fast float %5983, %5977
  %5985 = fsub fast float 1.000000e+00, %5984
  %5986 = fmul fast float %5985, %5985
  %5987 = fmul fast float %5986, %5985
  %5988 = fsub fast float %5985, %5987
  %5989 = fmul fast float %5988, %5973
  %5990 = fsub fast float 1.000000e+00, %5987
  %5991 = fsub fast float %5990, %5989
  %5992 = fmul fast float %5983, 5.000000e-01
  %5993 = fmul fast float %5992, %5991
  %5994 = fsub fast float 5.000000e-01, %5993
  br label %5995

; <label>:5995                                    ; preds = %5967, %5843, %5830
  %5996 = phi float [ 1.000000e+00, %5830 ], [ %5909, %5843 ], [ %5994, %5967 ]
  %5997 = fcmp fast ogt float %5426, 0.000000e+00
  br i1 %5997, label %5998, label %6162, !dx.controlflow.hints !112

; <label>:5998                                    ; preds = %5995
  %5999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6000 = extractvalue %dx.types.CBufRet.f32 %5999, 1
  %6001 = fadd fast float %6000, %5315
  %6002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6003 = extractvalue %dx.types.CBufRet.f32 %6002, 2
  %6004 = extractvalue %dx.types.CBufRet.f32 %6002, 3
  %6005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6006 = extractvalue %dx.types.CBufRet.f32 %6005, 1
  %6007 = call float @dx.op.binary.f32(i32 35, float %6001, float 0.000000e+00)  ; FMax(a,b)
  %6008 = fadd fast float %6007, 0x3F10000000000000
  %6009 = fcmp fast oeq float %6006, 0.000000e+00
  br i1 %6009, label %6010, label %6077

; <label>:6010                                    ; preds = %5998
  %6011 = extractvalue %dx.types.CBufRet.f32 %6002, 1
  %6012 = extractvalue %dx.types.CBufRet.f32 %6002, 0
  %6013 = fmul fast float %6012, %5322
  %6014 = fmul fast float %6011, %5323
  %6015 = fadd fast float %6013, 5.000000e-01
  %6016 = call float @dx.op.unary.f32(i32 27, float %6015)  ; Round_ni(value)
  %6017 = fadd fast float %6014, 5.000000e-01
  %6018 = call float @dx.op.unary.f32(i32 27, float %6017)  ; Round_ni(value)
  %6019 = fsub fast float %6015, %6016
  %6020 = fsub fast float %6017, %6018
  %6021 = fadd fast float %6016, -5.000000e-01
  %6022 = fadd fast float %6018, -5.000000e-01
  %6023 = fmul fast float %6019, 2.000000e+00
  %6024 = fsub fast float 3.000000e+00, %6023
  %6025 = fadd fast float %6023, 1.000000e+00
  %6026 = fsub fast float 2.000000e+00, %6019
  %6027 = bitcast float %6024 to i32
  %6028 = sub nsw i32 2129859010, %6027
  %6029 = bitcast i32 %6028 to float
  %6030 = fmul fast float %6029, %6026
  %6031 = fadd fast float %6030, -1.000000e+00
  %6032 = bitcast float %6025 to i32
  %6033 = sub nsw i32 2129859010, %6032
  %6034 = bitcast i32 %6033 to float
  %6035 = fmul fast float %6034, %6019
  %6036 = fadd fast float %6035, 1.000000e+00
  %6037 = fmul fast float %6020, 2.000000e+00
  %6038 = fsub fast float 3.000000e+00, %6037
  %6039 = fadd fast float %6037, 1.000000e+00
  %6040 = fsub fast float 2.000000e+00, %6020
  %6041 = bitcast float %6038 to i32
  %6042 = sub nsw i32 2129859010, %6041
  %6043 = bitcast i32 %6042 to float
  %6044 = fmul fast float %6043, %6040
  %6045 = fadd fast float %6044, -1.000000e+00
  %6046 = bitcast float %6039 to i32
  %6047 = sub nsw i32 2129859010, %6046
  %6048 = bitcast i32 %6047 to float
  %6049 = fmul fast float %6048, %6020
  %6050 = fadd fast float %6049, 1.000000e+00
  %6051 = fadd fast float %6031, %6021
  %6052 = fmul fast float %6051, %6003
  %6053 = fadd fast float %6045, %6022
  %6054 = fmul fast float %6053, %6004
  %6055 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6052, float %6054, float undef, float undef, i32 0, i32 0, i32 undef, float %6008)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6056 = extractvalue %dx.types.ResRet.f32 %6055, 0
  %6057 = fmul fast float %6056, %6024
  %6058 = fadd fast float %6036, %6021
  %6059 = fmul fast float %6058, %6003
  %6060 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6059, float %6054, float undef, float undef, i32 0, i32 0, i32 undef, float %6008)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6061 = extractvalue %dx.types.ResRet.f32 %6060, 0
  %6062 = fmul fast float %6061, %6025
  %6063 = fadd fast float %6050, %6022
  %6064 = fmul fast float %6063, %6004
  %6065 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6052, float %6064, float undef, float undef, i32 0, i32 0, i32 undef, float %6008)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6066 = extractvalue %dx.types.ResRet.f32 %6065, 0
  %6067 = fmul fast float %6066, %6024
  %6068 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6059, float %6064, float undef, float undef, i32 0, i32 0, i32 undef, float %6008)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6069 = extractvalue %dx.types.ResRet.f32 %6068, 0
  %6070 = fmul fast float %6069, %6025
  %6071 = fadd fast float %6070, %6067
  %6072 = fmul fast float %6071, %6039
  %6073 = fadd fast float %6062, %6057
  %6074 = fmul fast float %6073, %6038
  %6075 = fadd fast float %6074, %6072
  %6076 = fmul fast float %6075, 6.250000e-02
  br label %6162

; <label>:6077                                    ; preds = %5998
  %6078 = fmul fast float %227, 0x401921FB60000000
  %6079 = call float @dx.op.unary.f32(i32 13, float %6078)  ; Sin(value)
  %6080 = call float @dx.op.unary.f32(i32 12, float %6078)  ; Cos(value)
  %6081 = fsub fast float -0.000000e+00, %6079
  br label %6082

; <label>:6082                                    ; preds = %6131, %6077
  %6083 = phi float [ 0.000000e+00, %6077 ], [ %6126, %6131 ]
  %6084 = phi float [ 0.000000e+00, %6077 ], [ %6128, %6131 ]
  %6085 = phi i32 [ 0, %6077 ], [ %6132, %6131 ]
  %6086 = mul i32 %6085, 2
  %6087 = add i32 0, %6086
  %6088 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6087
  %6089 = load float, float* %6088, align 4
  %6090 = mul i32 %6085, 2
  %6091 = add i32 1, %6090
  %6092 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6091
  %6093 = load float, float* %6092, align 4
  %6094 = fmul fast float %6089, %6080
  %6095 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %6081, float %6094)  ; FMad(a,b,c)
  %6096 = fmul fast float %6089, %6079
  %6097 = call float @dx.op.tertiary.f32(i32 46, float %6093, float %6080, float %6096)  ; FMad(a,b,c)
  %6098 = fmul fast float %6095, %6006
  %6099 = fmul fast float %6097, %6006
  %6100 = fadd fast float %6098, %5322
  %6101 = fadd fast float %6099, %5323
  %6102 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %6100, float %6101, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6103 = extractvalue %dx.types.ResRet.f32 %6102, 0
  %6104 = extractvalue %dx.types.ResRet.f32 %6102, 1
  %6105 = extractvalue %dx.types.ResRet.f32 %6102, 2
  %6106 = extractvalue %dx.types.ResRet.f32 %6102, 3
  %6107 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 0
  store float %6103, float* %6107, align 4
  %6108 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 1
  store float %6104, float* %6108, align 4
  %6109 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 2
  store float %6105, float* %6109, align 4
  %6110 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 3
  store float %6106, float* %6110, align 4
  %6111 = fsub fast float %6103, %6008
  %6112 = fcmp fast olt float %6111, 0.000000e+00
  %6113 = select i1 %6112, float 0.000000e+00, float 1.000000e+00
  %6114 = fadd fast float %6113, %6083
  %6115 = fmul fast float %6113, %6111
  %6116 = fadd fast float %6115, %6084
  br label %6117

; <label>:6117                                    ; preds = %6117, %6082
  %6118 = phi i32 [ 1, %6082 ], [ %6129, %6117 ]
  %6119 = phi float [ %6116, %6082 ], [ %6128, %6117 ]
  %6120 = phi float [ %6114, %6082 ], [ %6126, %6117 ]
  %6121 = getelementptr [4 x float], [4 x float]* %84, i32 0, i32 %6118
  %6122 = load float, float* %6121, align 4, !tbaa !108, !noalias !98
  %6123 = fsub fast float %6122, %6008
  %6124 = fcmp fast olt float %6123, 0.000000e+00
  %6125 = select i1 %6124, float 0.000000e+00, float 1.000000e+00
  %6126 = fadd fast float %6125, %6120
  %6127 = fmul fast float %6125, %6123
  %6128 = fadd fast float %6127, %6119
  %6129 = add nuw nsw i32 %6118, 1
  %6130 = icmp eq i32 %6129, 4
  br i1 %6130, label %6131, label %6117, !llvm.loop !110

; <label>:6131                                    ; preds = %6117
  %6132 = add nuw nsw i32 %6085, 1
  %6133 = icmp eq i32 %6132, 8
  br i1 %6133, label %6134, label %6082, !llvm.loop !111

; <label>:6134                                    ; preds = %6131
  %6135 = fdiv fast float 1.000000e+00, %6126
  %6136 = fmul fast float %6135, %6128
  %6137 = fdiv fast float 1.000000e+00, %6008
  %6138 = fmul fast float %6136, %6137
  %6139 = call float @dx.op.unary.f32(i32 7, float %6138)  ; Saturate(value)
  %6140 = call float @dx.op.binary.f32(i32 35, float %6139, float 0.000000e+00)  ; FMax(a,b)
  %6141 = fmul fast float %6126, 3.125000e-02
  %6142 = call float @dx.op.unary.f32(i32 7, float %6141)  ; Saturate(value)
  %6143 = fmul fast float %6142, 2.000000e+00
  %6144 = fadd fast float %6143, -1.000000e+00
  %6145 = fcmp fast ogt float %6144, 0.000000e+00
  %6146 = fcmp fast olt float %6144, 0.000000e+00
  %6147 = zext i1 %6145 to i32
  %6148 = zext i1 %6146 to i32
  %6149 = sub nsw i32 %6147, %6148
  %6150 = sitofp i32 %6149 to float
  %6151 = fmul fast float %6150, %6144
  %6152 = fsub fast float 1.000000e+00, %6151
  %6153 = fmul fast float %6152, %6152
  %6154 = fmul fast float %6153, %6152
  %6155 = fsub fast float %6152, %6154
  %6156 = fmul fast float %6155, %6140
  %6157 = fsub fast float 1.000000e+00, %6154
  %6158 = fsub fast float %6157, %6156
  %6159 = fmul fast float %6150, 5.000000e-01
  %6160 = fmul fast float %6159, %6158
  %6161 = fsub fast float 5.000000e-01, %6160
  br label %6162

; <label>:6162                                    ; preds = %6134, %6010, %5995
  %6163 = phi float [ 1.000000e+00, %5995 ], [ %6076, %6010 ], [ %6161, %6134 ]
  %6164 = fcmp fast ogt float %5425, 0.000000e+00
  br i1 %6164, label %6165, label %6329, !dx.controlflow.hints !113

; <label>:6165                                    ; preds = %6162
  %6166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6167 = extractvalue %dx.types.CBufRet.f32 %6166, 0
  %6168 = fadd fast float %6167, %5315
  %6169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.f32 %6169, 2
  %6171 = extractvalue %dx.types.CBufRet.f32 %6169, 3
  %6172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6173 = extractvalue %dx.types.CBufRet.f32 %6172, 0
  %6174 = call float @dx.op.binary.f32(i32 35, float %6168, float 0.000000e+00)  ; FMax(a,b)
  %6175 = fadd fast float %6174, 0x3F10000000000000
  %6176 = fcmp fast oeq float %6173, 0.000000e+00
  br i1 %6176, label %6177, label %6244

; <label>:6177                                    ; preds = %6165
  %6178 = extractvalue %dx.types.CBufRet.f32 %6169, 1
  %6179 = extractvalue %dx.types.CBufRet.f32 %6169, 0
  %6180 = fmul fast float %6179, %5307
  %6181 = fmul fast float %6178, %5311
  %6182 = fadd fast float %6180, 5.000000e-01
  %6183 = call float @dx.op.unary.f32(i32 27, float %6182)  ; Round_ni(value)
  %6184 = fadd fast float %6181, 5.000000e-01
  %6185 = call float @dx.op.unary.f32(i32 27, float %6184)  ; Round_ni(value)
  %6186 = fsub fast float %6182, %6183
  %6187 = fsub fast float %6184, %6185
  %6188 = fadd fast float %6183, -5.000000e-01
  %6189 = fadd fast float %6185, -5.000000e-01
  %6190 = fmul fast float %6186, 2.000000e+00
  %6191 = fsub fast float 3.000000e+00, %6190
  %6192 = fadd fast float %6190, 1.000000e+00
  %6193 = fsub fast float 2.000000e+00, %6186
  %6194 = bitcast float %6191 to i32
  %6195 = sub nsw i32 2129859010, %6194
  %6196 = bitcast i32 %6195 to float
  %6197 = fmul fast float %6196, %6193
  %6198 = fadd fast float %6197, -1.000000e+00
  %6199 = bitcast float %6192 to i32
  %6200 = sub nsw i32 2129859010, %6199
  %6201 = bitcast i32 %6200 to float
  %6202 = fmul fast float %6201, %6186
  %6203 = fadd fast float %6202, 1.000000e+00
  %6204 = fmul fast float %6187, 2.000000e+00
  %6205 = fsub fast float 3.000000e+00, %6204
  %6206 = fadd fast float %6204, 1.000000e+00
  %6207 = fsub fast float 2.000000e+00, %6187
  %6208 = bitcast float %6205 to i32
  %6209 = sub nsw i32 2129859010, %6208
  %6210 = bitcast i32 %6209 to float
  %6211 = fmul fast float %6210, %6207
  %6212 = fadd fast float %6211, -1.000000e+00
  %6213 = bitcast float %6206 to i32
  %6214 = sub nsw i32 2129859010, %6213
  %6215 = bitcast i32 %6214 to float
  %6216 = fmul fast float %6215, %6187
  %6217 = fadd fast float %6216, 1.000000e+00
  %6218 = fadd fast float %6198, %6188
  %6219 = fmul fast float %6218, %6170
  %6220 = fadd fast float %6212, %6189
  %6221 = fmul fast float %6220, %6171
  %6222 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6219, float %6221, float undef, float undef, i32 0, i32 0, i32 undef, float %6175)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6223 = extractvalue %dx.types.ResRet.f32 %6222, 0
  %6224 = fmul fast float %6223, %6191
  %6225 = fadd fast float %6203, %6188
  %6226 = fmul fast float %6225, %6170
  %6227 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6226, float %6221, float undef, float undef, i32 0, i32 0, i32 undef, float %6175)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6228 = extractvalue %dx.types.ResRet.f32 %6227, 0
  %6229 = fmul fast float %6228, %6192
  %6230 = fadd fast float %6217, %6189
  %6231 = fmul fast float %6230, %6171
  %6232 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6219, float %6231, float undef, float undef, i32 0, i32 0, i32 undef, float %6175)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6233 = extractvalue %dx.types.ResRet.f32 %6232, 0
  %6234 = fmul fast float %6233, %6191
  %6235 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6226, float %6231, float undef, float undef, i32 0, i32 0, i32 undef, float %6175)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6236 = extractvalue %dx.types.ResRet.f32 %6235, 0
  %6237 = fmul fast float %6236, %6192
  %6238 = fadd fast float %6237, %6234
  %6239 = fmul fast float %6238, %6206
  %6240 = fadd fast float %6229, %6224
  %6241 = fmul fast float %6240, %6205
  %6242 = fadd fast float %6241, %6239
  %6243 = fmul fast float %6242, 6.250000e-02
  br label %6329

; <label>:6244                                    ; preds = %6165
  %6245 = fmul fast float %227, 0x401921FB60000000
  %6246 = call float @dx.op.unary.f32(i32 13, float %6245)  ; Sin(value)
  %6247 = call float @dx.op.unary.f32(i32 12, float %6245)  ; Cos(value)
  %6248 = fsub fast float -0.000000e+00, %6246
  br label %6249

; <label>:6249                                    ; preds = %6298, %6244
  %6250 = phi float [ 0.000000e+00, %6244 ], [ %6293, %6298 ]
  %6251 = phi float [ 0.000000e+00, %6244 ], [ %6295, %6298 ]
  %6252 = phi i32 [ 0, %6244 ], [ %6299, %6298 ]
  %6253 = mul i32 %6252, 2
  %6254 = add i32 0, %6253
  %6255 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6254
  %6256 = load float, float* %6255, align 4
  %6257 = mul i32 %6252, 2
  %6258 = add i32 1, %6257
  %6259 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6258
  %6260 = load float, float* %6259, align 4
  %6261 = fmul fast float %6256, %6247
  %6262 = call float @dx.op.tertiary.f32(i32 46, float %6260, float %6248, float %6261)  ; FMad(a,b,c)
  %6263 = fmul fast float %6256, %6246
  %6264 = call float @dx.op.tertiary.f32(i32 46, float %6260, float %6247, float %6263)  ; FMad(a,b,c)
  %6265 = fmul fast float %6262, %6173
  %6266 = fmul fast float %6264, %6173
  %6267 = fadd fast float %6265, %5307
  %6268 = fadd fast float %6266, %5311
  %6269 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %6267, float %6268, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6270 = extractvalue %dx.types.ResRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.ResRet.f32 %6269, 1
  %6272 = extractvalue %dx.types.ResRet.f32 %6269, 2
  %6273 = extractvalue %dx.types.ResRet.f32 %6269, 3
  %6274 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 0
  store float %6270, float* %6274, align 4
  %6275 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 1
  store float %6271, float* %6275, align 4
  %6276 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 2
  store float %6272, float* %6276, align 4
  %6277 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 3
  store float %6273, float* %6277, align 4
  %6278 = fsub fast float %6270, %6175
  %6279 = fcmp fast olt float %6278, 0.000000e+00
  %6280 = select i1 %6279, float 0.000000e+00, float 1.000000e+00
  %6281 = fadd fast float %6280, %6250
  %6282 = fmul fast float %6280, %6278
  %6283 = fadd fast float %6282, %6251
  br label %6284

; <label>:6284                                    ; preds = %6284, %6249
  %6285 = phi i32 [ 1, %6249 ], [ %6296, %6284 ]
  %6286 = phi float [ %6283, %6249 ], [ %6295, %6284 ]
  %6287 = phi float [ %6281, %6249 ], [ %6293, %6284 ]
  %6288 = getelementptr [4 x float], [4 x float]* %83, i32 0, i32 %6285
  %6289 = load float, float* %6288, align 4, !tbaa !108, !noalias !98
  %6290 = fsub fast float %6289, %6175
  %6291 = fcmp fast olt float %6290, 0.000000e+00
  %6292 = select i1 %6291, float 0.000000e+00, float 1.000000e+00
  %6293 = fadd fast float %6292, %6287
  %6294 = fmul fast float %6292, %6290
  %6295 = fadd fast float %6294, %6286
  %6296 = add nuw nsw i32 %6285, 1
  %6297 = icmp eq i32 %6296, 4
  br i1 %6297, label %6298, label %6284, !llvm.loop !110

; <label>:6298                                    ; preds = %6284
  %6299 = add nuw nsw i32 %6252, 1
  %6300 = icmp eq i32 %6299, 8
  br i1 %6300, label %6301, label %6249, !llvm.loop !111

; <label>:6301                                    ; preds = %6298
  %6302 = fdiv fast float 1.000000e+00, %6293
  %6303 = fmul fast float %6302, %6295
  %6304 = fdiv fast float 1.000000e+00, %6175
  %6305 = fmul fast float %6303, %6304
  %6306 = call float @dx.op.unary.f32(i32 7, float %6305)  ; Saturate(value)
  %6307 = call float @dx.op.binary.f32(i32 35, float %6306, float 0.000000e+00)  ; FMax(a,b)
  %6308 = fmul fast float %6293, 3.125000e-02
  %6309 = call float @dx.op.unary.f32(i32 7, float %6308)  ; Saturate(value)
  %6310 = fmul fast float %6309, 2.000000e+00
  %6311 = fadd fast float %6310, -1.000000e+00
  %6312 = fcmp fast ogt float %6311, 0.000000e+00
  %6313 = fcmp fast olt float %6311, 0.000000e+00
  %6314 = zext i1 %6312 to i32
  %6315 = zext i1 %6313 to i32
  %6316 = sub nsw i32 %6314, %6315
  %6317 = sitofp i32 %6316 to float
  %6318 = fmul fast float %6317, %6311
  %6319 = fsub fast float 1.000000e+00, %6318
  %6320 = fmul fast float %6319, %6319
  %6321 = fmul fast float %6320, %6319
  %6322 = fsub fast float %6319, %6321
  %6323 = fmul fast float %6322, %6307
  %6324 = fsub fast float 1.000000e+00, %6321
  %6325 = fsub fast float %6324, %6323
  %6326 = fmul fast float %6317, 5.000000e-01
  %6327 = fmul fast float %6326, %6325
  %6328 = fsub fast float 5.000000e-01, %6327
  br label %6329

; <label>:6329                                    ; preds = %6301, %6177, %6162
  %6330 = phi float [ 1.000000e+00, %6162 ], [ %6243, %6177 ], [ %6328, %6301 ]
  %6331 = fsub fast float %5996, %5831
  %6332 = fmul fast float %6331, %5369
  %6333 = fadd fast float %6332, %5831
  %6334 = fsub fast float %6163, %6333
  %6335 = fmul fast float %6334, %5399
  %6336 = fadd fast float %6335, %6333
  %6337 = fsub fast float %6330, %6336
  %6338 = fmul fast float %6337, %5425
  %6339 = fadd fast float %6338, %6336
  %6340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6341 = extractvalue %dx.types.CBufRet.f32 %6340, 2
  %6342 = fcmp fast ogt float %6341, 0.000000e+00
  br i1 %6342, label %6343, label %6383, !dx.controlflow.hints !114

; <label>:6343                                    ; preds = %6329
  %6344 = fcmp fast ugt float %6341, 0.000000e+00
  br i1 %6344, label %6345, label %6380

; <label>:6345                                    ; preds = %6343
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 0
  %6348 = extractvalue %dx.types.CBufRet.f32 %6346, 1
  %6349 = extractvalue %dx.types.CBufRet.f32 %6346, 2
  %6350 = extractvalue %dx.types.CBufRet.f32 %6346, 3
  %6351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6352 = extractvalue %dx.types.CBufRet.f32 %6351, 0
  %6353 = extractvalue %dx.types.CBufRet.f32 %6351, 1
  %6354 = extractvalue %dx.types.CBufRet.f32 %6351, 2
  %6355 = extractvalue %dx.types.CBufRet.f32 %6351, 3
  %6356 = extractvalue %dx.types.CBufRet.f32 %6340, 0
  %6357 = extractvalue %dx.types.CBufRet.f32 %6340, 1
  %6358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.f32 %6358, 0
  %6360 = extractvalue %dx.types.CBufRet.f32 %6358, 1
  %6361 = extractvalue %dx.types.CBufRet.f32 %6358, 2
  %6362 = fadd fast float %6359, %5284
  %6363 = fadd fast float %6360, %5285
  %6364 = fadd fast float %6361, %5286
  %6365 = fmul fast float %6362, %6347
  %6366 = call float @dx.op.tertiary.f32(i32 46, float %6348, float %6363, float %6365)  ; FMad(a,b,c)
  %6367 = call float @dx.op.tertiary.f32(i32 46, float %6349, float %6364, float %6366)  ; FMad(a,b,c)
  %6368 = fadd fast float %6367, %6350
  %6369 = fmul fast float %6362, %6352
  %6370 = call float @dx.op.tertiary.f32(i32 46, float %6353, float %6363, float %6369)  ; FMad(a,b,c)
  %6371 = call float @dx.op.tertiary.f32(i32 46, float %6354, float %6364, float %6370)  ; FMad(a,b,c)
  %6372 = fadd fast float %6371, %6355
  %6373 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %6368, float %6372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6374 = extractvalue %dx.types.ResRet.f32 %6373, 0
  %6375 = fmul fast float %6374, %6357
  %6376 = fadd fast float %6375, %6356
  %6377 = call float @dx.op.unary.f32(i32 7, float %6376)  ; Saturate(value)
  %6378 = fmul fast float %6377, %6341
  %6379 = fsub fast float 1.000000e+00, %6378
  br label %6380

; <label>:6380                                    ; preds = %6345, %6343
  %6381 = phi float [ %6379, %6345 ], [ 1.000000e+00, %6343 ]
  %6382 = fmul fast float %6381, %6339
  br label %6383

; <label>:6383                                    ; preds = %6380, %6329, %5264
  %6384 = phi float [ 1.000000e+00, %5264 ], [ %6382, %6380 ], [ %6339, %6329 ]
  %6385 = call float @dx.op.binary.f32(i32 36, float %6384, float %6384)  ; FMin(a,b)
  %6386 = call float @dx.op.binary.f32(i32 36, float %6384, float %6385)  ; FMin(a,b)
  %6387 = fcmp fast ogt float %6386, 0.000000e+00
  br i1 %6387, label %6388, label %6554, !dx.controlflow.hints !115

; <label>:6388                                    ; preds = %6383
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6391 = extractvalue %dx.types.CBufRet.f32 %6389, 1
  %6392 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6393 = extractvalue %dx.types.CBufRet.f32 %6389, 3
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6397 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6398 = extractvalue %dx.types.CBufRet.f32 %6394, 3
  %6399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6400 = extractvalue %dx.types.CBufRet.f32 %6399, 0
  %6401 = extractvalue %dx.types.CBufRet.f32 %6399, 1
  %6402 = extractvalue %dx.types.CBufRet.f32 %6399, 2
  %6403 = extractvalue %dx.types.CBufRet.f32 %6399, 3
  %6404 = fmul fast float %6390, %5284
  %6405 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %6391, float %6404)  ; FMad(a,b,c)
  %6406 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %6392, float %6405)  ; FMad(a,b,c)
  %6407 = fadd fast float %6406, %6393
  %6408 = fmul fast float %6395, %5284
  %6409 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %6396, float %6408)  ; FMad(a,b,c)
  %6410 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %6397, float %6409)  ; FMad(a,b,c)
  %6411 = fadd fast float %6410, %6398
  %6412 = fmul fast float %6400, %5284
  %6413 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %6401, float %6412)  ; FMad(a,b,c)
  %6414 = call float @dx.op.tertiary.f32(i32 46, float %5286, float %6402, float %6413)  ; FMad(a,b,c)
  %6415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6416 = extractvalue %dx.types.CBufRet.f32 %6415, 0
  %6417 = extractvalue %dx.types.CBufRet.f32 %6415, 1
  %6418 = extractvalue %dx.types.CBufRet.f32 %6415, 3
  %6419 = fmul fast float %6418, %6407
  %6420 = fmul fast float %6418, %6411
  %6421 = fadd fast float %6419, %6416
  %6422 = fadd fast float %6420, %6417
  %6423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6424 = extractvalue %dx.types.CBufRet.f32 %6423, 0
  %6425 = extractvalue %dx.types.CBufRet.f32 %6423, 1
  %6426 = fsub fast float %6421, %6424
  %6427 = fsub fast float %6422, %6425
  %6428 = fcmp fast olt float %6426, 0.000000e+00
  %6429 = fcmp fast olt float %6427, 0.000000e+00
  %6430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6431 = extractvalue %dx.types.CBufRet.f32 %6430, 0
  %6432 = extractvalue %dx.types.CBufRet.f32 %6430, 1
  %6433 = extractvalue %dx.types.CBufRet.f32 %6430, 2
  %6434 = extractvalue %dx.types.CBufRet.f32 %6430, 3
  %6435 = select i1 %6428, float %6431, float %6433
  %6436 = select i1 %6429, float %6432, float %6434
  %6437 = fmul fast float %6435, %6426
  %6438 = fmul fast float %6436, %6427
  %6439 = call float @dx.op.unary.f32(i32 6, float %6437)  ; FAbs(value)
  %6440 = call float @dx.op.unary.f32(i32 6, float %6438)  ; FAbs(value)
  %6441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6442 = extractvalue %dx.types.CBufRet.f32 %6441, 0
  %6443 = call float @dx.op.binary.f32(i32 35, float %6439, float %6440)  ; FMax(a,b)
  %6444 = fsub fast float %6442, %6443
  %6445 = call float @dx.op.unary.f32(i32 7, float %6444)  ; Saturate(value)
  %6446 = fcmp fast ogt float %6445, 0.000000e+00
  br i1 %6446, label %6447, label %6488, !dx.controlflow.hints !116

; <label>:6447                                    ; preds = %6388
  %6448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %6421, float %6422, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6449 = extractvalue %dx.types.ResRet.f32 %6448, 1
  %6450 = fcmp fast ogt float %6449, 0.000000e+00
  br i1 %6450, label %6451, label %6483

; <label>:6451                                    ; preds = %6447
  %6452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %6421, float %6422, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6453 = extractvalue %dx.types.ResRet.f32 %6452, 0
  %6454 = extractvalue %dx.types.ResRet.f32 %6452, 1
  %6455 = extractvalue %dx.types.ResRet.f32 %6452, 2
  %6456 = extractvalue %dx.types.ResRet.f32 %6452, 3
  %6457 = fsub fast float 1.000000e+00, %6403
  %6458 = fsub fast float %6457, %6414
  %6459 = fmul fast float %6458, 0x400921FB60000000
  %6460 = fadd fast float %6459, 0x3FF921FB60000000
  %6461 = call float @dx.op.unary.f32(i32 13, float %6460)  ; Sin(value)
  %6462 = fadd fast float %6461, -1.000000e+00
  %6463 = fmul fast float %6462, 0x3FD45F3060000000
  %6464 = fmul fast float %6458, 0x401921FB60000000
  %6465 = fadd fast float %6464, 0x400921FB60000000
  %6466 = call float @dx.op.unary.f32(i32 13, float %6465)  ; Sin(value)
  %6467 = fadd fast float %6466, 0x3E7777A5C0000000
  %6468 = fmul fast float %6467, 0x3FC45F3060000000
  %6469 = fmul fast float %6458, 0x4022D97C80000000
  %6470 = fadd fast float %6469, 0x4012D97C80000000
  %6471 = call float @dx.op.unary.f32(i32 13, float %6470)  ; Sin(value)
  %6472 = fadd fast float %6471, 1.000000e+00
  %6473 = fmul fast float %6472, 0x3FBB2995E0000000
  %6474 = fmul fast float %6458, 0x402921FB60000000
  %6475 = fadd fast float %6474, 0x401921FB60000000
  %6476 = call float @dx.op.unary.f32(i32 13, float %6475)  ; Sin(value)
  %6477 = fadd fast float %6476, 0xBE8777A5C0000000
  %6478 = fmul fast float %6477, 0x3FB45F3060000000
  %6479 = call float @dx.op.dot4.f32(i32 56, float %6453, float %6454, float %6455, float %6456, float %6463, float %6468, float %6473, float %6478)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6480 = fmul fast float %6479, 0xBFF7154760000000
  %6481 = call float @dx.op.unary.f32(i32 21, float %6480)  ; Exp(value)
  %6482 = call float @dx.op.unary.f32(i32 7, float %6481)  ; Saturate(value)
  br label %6483

; <label>:6483                                    ; preds = %6451, %6447
  %6484 = phi float [ %6482, %6451 ], [ 1.000000e+00, %6447 ]
  %6485 = fadd fast float %6484, -1.000000e+00
  %6486 = fmul fast float %6485, %6445
  %6487 = fadd fast float %6486, 1.000000e+00
  br label %6488

; <label>:6488                                    ; preds = %6483, %6388
  %6489 = phi float [ %6487, %6483 ], [ 1.000000e+00, %6388 ]
  %6490 = fmul fast float %6489, %6384
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.CBufRet.f32 %6491, 1
  %6494 = extractvalue %dx.types.CBufRet.f32 %6491, 2
  %6495 = fadd fast float %6492, %155
  %6496 = fadd fast float %6493, %156
  %6497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6498 = extractvalue %dx.types.CBufRet.f32 %6497, 1
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 0
  %6501 = extractvalue %dx.types.CBufRet.f32 %6499, 1
  %6502 = extractvalue %dx.types.CBufRet.f32 %6499, 2
  %6503 = fsub fast float -0.000000e+00, %6495
  %6504 = fsub fast float -0.000000e+00, %6496
  %6505 = fsub fast float -0.000000e+00, %157
  %6506 = fsub fast float %6505, %6494
  %6507 = fadd fast float %6506, %6498
  %6508 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6503, float %6504, float %6507)  ; Dot3(ax,ay,az,bx,by,bz)
  %6509 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6500, float %6501, float %6502)  ; Dot3(ax,ay,az,bx,by,bz)
  %6510 = fdiv fast float 1.000000e+00, %6509
  %6511 = fmul fast float %6510, %6508
  %6512 = fmul fast float %6500, %6511
  %6513 = fmul fast float %6501, %6511
  %6514 = fadd fast float %6512, %6495
  %6515 = fadd fast float %6513, %6496
  %6516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6517 = extractvalue %dx.types.CBufRet.f32 %6516, 0
  %6518 = extractvalue %dx.types.CBufRet.f32 %6516, 1
  %6519 = fsub fast float %6514, %6517
  %6520 = fsub fast float %6515, %6518
  %6521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6522 = extractvalue %dx.types.CBufRet.f32 %6521, 2
  %6523 = extractvalue %dx.types.CBufRet.f32 %6521, 3
  %6524 = fmul fast float %6519, %6522
  %6525 = fmul fast float %6520, %6523
  %6526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6527 = extractvalue %dx.types.CBufRet.i32 %6526, 3
  %6528 = icmp eq i32 %6527, 0
  br i1 %6528, label %6534, label %6529

; <label>:6529                                    ; preds = %6488
  %6530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %6524, float %6525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6531 = extractvalue %dx.types.ResRet.f32 %6530, 0
  %6532 = extractvalue %dx.types.ResRet.f32 %6530, 1
  %6533 = extractvalue %dx.types.ResRet.f32 %6530, 2
  br label %6539

; <label>:6534                                    ; preds = %6488
  %6535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %6524, float %6525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6536 = extractvalue %dx.types.ResRet.f32 %6535, 0
  %6537 = extractvalue %dx.types.ResRet.f32 %6535, 1
  %6538 = extractvalue %dx.types.ResRet.f32 %6535, 2
  br label %6539

; <label>:6539                                    ; preds = %6534, %6529
  %6540 = phi float [ %6531, %6529 ], [ %6536, %6534 ]
  %6541 = phi float [ %6532, %6529 ], [ %6537, %6534 ]
  %6542 = phi float [ %6533, %6529 ], [ %6538, %6534 ]
  %6543 = extractvalue %dx.types.CBufRet.f32 %6497, 2
  %6544 = fmul fast float %6543, %6540
  %6545 = extractvalue %dx.types.CBufRet.f32 %6497, 0
  %6546 = fsub fast float %6511, %6545
  %6547 = fsub fast float %6546, %6544
  %6548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6547)  ; FMax(a,b)
  %6549 = fmul fast float %6548, %6541
  %6550 = call float @dx.op.binary.f32(i32 36, float %6542, float %6549)  ; FMin(a,b)
  %6551 = fmul fast float %6550, 0xBFF7154760000000
  %6552 = call float @dx.op.unary.f32(i32 21, float %6551)  ; Exp(value)
  %6553 = fmul fast float %6490, %6552
  br label %6554

; <label>:6554                                    ; preds = %6539, %6383
  %6555 = phi float [ %6553, %6539 ], [ %6384, %6383 ]
  %6556 = call float @dx.op.binary.f32(i32 36, float %6555, float %6555)  ; FMin(a,b)
  %6557 = call float @dx.op.binary.f32(i32 36, float %6555, float %6556)  ; FMin(a,b)
  %6558 = fcmp fast ogt float %6557, 0.000000e+00
  br i1 %6558, label %6559, label %6730, !dx.controlflow.hints !117

; <label>:6559                                    ; preds = %6554
  %6560 = fmul fast float %6555, %5276
  %6561 = fmul fast float %6555, %5277
  %6562 = fmul fast float %6555, %5278
  %6563 = fsub fast float %5265, %4561
  %6564 = fsub fast float %5266, %4560
  %6565 = fsub fast float %5267, %4559
  %6566 = call float @dx.op.dot3.f32(i32 55, float %6563, float %6564, float %6565, float %6563, float %6564, float %6565)  ; Dot3(ax,ay,az,bx,by,bz)
  %6567 = call float @dx.op.unary.f32(i32 25, float %6566)  ; Rsqrt(value)
  %6568 = fmul fast float %6567, %6563
  %6569 = fmul fast float %6567, %6564
  %6570 = fmul fast float %6567, %6565
  %6571 = call float @dx.op.dot3.f32(i32 55, float %5265, float %5266, float %5267, float %4565, float %4566, float %4567)  ; Dot3(ax,ay,az,bx,by,bz)
  %6572 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4557, float %4556, float %6568, float %6569, float %6570)  ; Dot3(ax,ay,az,bx,by,bz)
  %6573 = call float @dx.op.unary.f32(i32 7, float %6571)  ; Saturate(value)
  %6574 = fmul fast float %6573, %6573
  %6575 = fmul fast float %6574, %5260
  %6576 = call float @dx.op.unary.f32(i32 7, float %6575)  ; Saturate(value)
  %6577 = fmul fast float %6576, %6573
  %6578 = call float @dx.op.dot3.f32(i32 55, float %4565, float %4566, float %4567, float %6568, float %6569, float %6570)  ; Dot3(ax,ay,az,bx,by,bz)
  %6579 = fmul fast float %6578, %6578
  %6580 = call float @dx.op.unary.f32(i32 6, float %6571)  ; FAbs(value)
  %6581 = fsub fast float 1.000000e+00, %4593
  %6582 = fmul fast float %4575, %4575
  %6583 = fmul fast float %6582, %6581
  %6584 = fadd fast float %6583, %4593
  %6585 = bitcast float %6584 to i32
  %6586 = ashr i32 %6585, 1
  %6587 = add nsw i32 %6586, 532487669
  %6588 = bitcast i32 %6587 to float
  %6589 = fadd fast float %6588, %4575
  %6590 = fmul fast float %4593, %6579
  %6591 = fsub fast float 1.000000e+00, %6579
  %6592 = fadd fast float %6591, %6590
  %6593 = fmul fast float %6580, %6580
  %6594 = fmul fast float %6593, %6581
  %6595 = fadd fast float %6594, %4593
  %6596 = bitcast float %6595 to i32
  %6597 = ashr i32 %6596, 1
  %6598 = add nsw i32 %6597, 532487669
  %6599 = bitcast i32 %6598 to float
  %6600 = fadd fast float %6599, %6580
  %6601 = fmul fast float %6592, %6592
  %6602 = fmul fast float %6601, %6589
  %6603 = fmul fast float %6602, %6600
  %6604 = fdiv fast float 0x3FF0A00000000000, %6603
  %6605 = fmul fast float %6604, %4593
  %6606 = call float @dx.op.unary.f32(i32 6, float %6572)  ; FAbs(value)
  %6607 = fsub fast float 1.000000e+00, %6606
  %6608 = bitcast float %6607 to i32
  %6609 = sitofp i32 %6608 to float
  %6610 = fmul fast float %6609, 5.000000e+00
  %6611 = fadd fast float %6610, 0xC1EFBF8940000000
  %6612 = fptosi float %6611 to i32
  %6613 = bitcast i32 %6612 to float
  %6614 = fsub fast float 1.000000e+00, %4562
  %6615 = fsub fast float 1.000000e+00, %4563
  %6616 = fsub fast float 1.000000e+00, %4573
  %6617 = fmul fast float %6613, %6614
  %6618 = fmul fast float %6613, %6615
  %6619 = fmul fast float %6613, %6616
  %6620 = fadd fast float %6617, %4562
  %6621 = fadd fast float %6618, %4563
  %6622 = fadd fast float %6619, %4573
  br i1 %4711, label %6623, label %6646

; <label>:6623                                    ; preds = %6559
  %6624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %4250, float %6606, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6625 = extractvalue %dx.types.ResRet.f32 %6624, 0
  %6626 = extractvalue %dx.types.ResRet.f32 %6624, 1
  %6627 = extractvalue %dx.types.ResRet.f32 %6624, 2
  %6628 = fadd fast float %6625, -5.000000e-01
  %6629 = fadd fast float %6626, -5.000000e-01
  %6630 = fadd fast float %6627, -5.000000e-01
  %6631 = fmul fast float %4562, 4.000000e+00
  %6632 = fmul fast float %6631, %6614
  %6633 = fmul fast float %6632, %6628
  %6634 = fmul fast float %4563, 4.000000e+00
  %6635 = fmul fast float %6634, %6615
  %6636 = fmul fast float %6635, %6629
  %6637 = fmul fast float %4573, 4.000000e+00
  %6638 = fmul fast float %6637, %6616
  %6639 = fmul fast float %6638, %6630
  %6640 = fadd fast float %6633, %6620
  %6641 = fadd fast float %6636, %6621
  %6642 = fadd fast float %6639, %6622
  %6643 = call float @dx.op.unary.f32(i32 7, float %6640)  ; Saturate(value)
  %6644 = call float @dx.op.unary.f32(i32 7, float %6641)  ; Saturate(value)
  %6645 = call float @dx.op.unary.f32(i32 7, float %6642)  ; Saturate(value)
  br label %6646

; <label>:6646                                    ; preds = %6623, %6559
  %6647 = phi float [ %6643, %6623 ], [ %6620, %6559 ]
  %6648 = phi float [ %6644, %6623 ], [ %6621, %6559 ]
  %6649 = phi float [ %6645, %6623 ], [ %6622, %6559 ]
  %6650 = fmul fast float %6571, 9.843750e-01
  %6651 = fadd fast float %6650, 7.812500e-03
  %6652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %6651, float %4701, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6653 = extractvalue %dx.types.ResRet.f32 %6652, 2
  %6654 = extractvalue %dx.types.ResRet.f32 %6652, 3
  %6655 = fmul fast float %6653, %4562
  %6656 = fmul fast float %6653, %4563
  %6657 = fmul fast float %6653, %4573
  %6658 = fadd fast float %6655, %6654
  %6659 = fadd fast float %6656, %6654
  %6660 = fadd fast float %6657, %6654
  br i1 %4711, label %6661, label %6684

; <label>:6661                                    ; preds = %6646
  %6662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %4250, float %6571, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6663 = extractvalue %dx.types.ResRet.f32 %6662, 0
  %6664 = extractvalue %dx.types.ResRet.f32 %6662, 1
  %6665 = extractvalue %dx.types.ResRet.f32 %6662, 2
  %6666 = fadd fast float %6663, -5.000000e-01
  %6667 = fadd fast float %6664, -5.000000e-01
  %6668 = fadd fast float %6665, -5.000000e-01
  %6669 = fmul fast float %4562, 4.000000e+00
  %6670 = fmul fast float %6669, %6614
  %6671 = fmul fast float %6670, %6666
  %6672 = fmul fast float %4563, 4.000000e+00
  %6673 = fmul fast float %6672, %6615
  %6674 = fmul fast float %6673, %6667
  %6675 = fmul fast float %4573, 4.000000e+00
  %6676 = fmul fast float %6675, %6616
  %6677 = fmul fast float %6676, %6668
  %6678 = fadd fast float %6671, %6658
  %6679 = fadd fast float %6674, %6659
  %6680 = fadd fast float %6677, %6660
  %6681 = call float @dx.op.unary.f32(i32 7, float %6678)  ; Saturate(value)
  %6682 = call float @dx.op.unary.f32(i32 7, float %6679)  ; Saturate(value)
  %6683 = call float @dx.op.unary.f32(i32 7, float %6680)  ; Saturate(value)
  br label %6684

; <label>:6684                                    ; preds = %6661, %6646
  %6685 = phi float [ %6681, %6661 ], [ %6658, %6646 ]
  %6686 = phi float [ %6682, %6661 ], [ %6659, %6646 ]
  %6687 = phi float [ %6683, %6661 ], [ %6660, %6646 ]
  %6688 = call float @dx.op.binary.f32(i32 35, float %6686, float %6687)  ; FMax(a,b)
  %6689 = call float @dx.op.binary.f32(i32 35, float %6685, float %6688)  ; FMax(a,b)
  %6690 = fsub fast float 1.000000e+00, %6689
  %6691 = fmul fast float %6647, %6605
  %6692 = fmul fast float %6648, %6605
  %6693 = fmul fast float %6649, %6605
  %6694 = fsub fast float 1.000000e+00, %6572
  %6695 = bitcast float %6694 to i32
  %6696 = sitofp i32 %6695 to float
  %6697 = fmul fast float %6696, 5.000000e+00
  %6698 = fadd fast float %6697, 0xC1EFBF8940000000
  %6699 = fptosi float %6698 to i32
  %6700 = bitcast i32 %6699 to float
  %6701 = fmul fast float %6700, %4251
  %6702 = fmul fast float %6690, %6701
  %6703 = fmul fast float %6702, %5225
  %6704 = fmul fast float %6702, %5226
  %6705 = fmul fast float %6702, %5227
  %6706 = fadd fast float %6703, %6691
  %6707 = fadd fast float %6704, %6692
  %6708 = fadd fast float %6705, %6693
  %6709 = fmul fast float %6577, %6560
  %6710 = fmul fast float %6709, %6690
  %6711 = fmul fast float %6577, %6561
  %6712 = fmul fast float %6711, %6690
  %6713 = fmul fast float %6577, %6562
  %6714 = fmul fast float %6713, %6690
  %6715 = fmul fast float %6709, %6706
  %6716 = fmul fast float %6711, %6707
  %6717 = fmul fast float %6713, %6708
  %6718 = fadd fast float %6710, %5209
  %6719 = fmul fast float %6718, %4247
  %6720 = fadd fast float %6712, %5210
  %6721 = fmul fast float %6720, %4247
  %6722 = fadd fast float %6714, %5211
  %6723 = fmul fast float %6722, %4247
  %6724 = fadd fast float %6715, %5252
  %6725 = fmul fast float %6724, %4247
  %6726 = fadd fast float %6716, %5255
  %6727 = fmul fast float %6726, %4247
  %6728 = fadd fast float %6717, %5258
  %6729 = fmul fast float %6728, %4247
  br label %6730

; <label>:6730                                    ; preds = %6684, %6554, %5205
  %6731 = phi float [ %5253, %5205 ], [ %5253, %6554 ], [ %6725, %6684 ]
  %6732 = phi float [ %5256, %5205 ], [ %5256, %6554 ], [ %6727, %6684 ]
  %6733 = phi float [ %5259, %5205 ], [ %5259, %6554 ], [ %6729, %6684 ]
  %6734 = phi float [ %5248, %5205 ], [ %5248, %6554 ], [ %6719, %6684 ]
  %6735 = phi float [ %5249, %5205 ], [ %5249, %6554 ], [ %6721, %6684 ]
  %6736 = phi float [ %5250, %5205 ], [ %5250, %6554 ], [ %6723, %6684 ]
  %6737 = fmul fast float %4247, %4247
  %6738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6739 = extractvalue %dx.types.CBufRet.f32 %6738, 0
  %6740 = fmul fast float %6739, %5231
  %6741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6742 = extractvalue %dx.types.CBufRet.f32 %6741, 3
  %6743 = fsub fast float 1.000000e+00, %4255
  %6744 = call float @dx.op.unary.f32(i32 7, float %6743)  ; Saturate(value)
  %6745 = fadd fast float %6736, %4253
  %6746 = fmul fast float %6745, %4255
  %6747 = fmul fast float %6744, %6742
  %6748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6749 = extractvalue %dx.types.CBufRet.f32 %6748, 3
  %6750 = fmul fast float %6734, %4568
  %6751 = fmul fast float %6735, %4569
  %6752 = fmul fast float %6736, %4570
  %6753 = fcmp fast ogt float %80, %177
  %6754 = and i1 %6753, %4294
  %6755 = or i1 %4373, %6754
  %6756 = icmp eq i32 %4293, 2
  %6757 = fcmp fast ole float %80, %177
  %6758 = and i1 %6757, %6756
  %6759 = or i1 %6758, %6755
  br i1 %6754, label %6760, label %7017

; <label>:6760                                    ; preds = %6730
  %6761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6762 = extractvalue %dx.types.CBufRet.f32 %6761, 2
  %6763 = extractvalue %dx.types.CBufRet.f32 %6761, 3
  %6764 = fmul fast float %6762, %92
  %6765 = fmul fast float %6763, %93
  %6766 = call float @dx.op.unary.f32(i32 7, float %6764)  ; Saturate(value)
  %6767 = call float @dx.op.unary.f32(i32 7, float %6765)  ; Saturate(value)
  %6768 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %6766, float %6767, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6769 = extractvalue %dx.types.ResRet.f32 %6768, 0
  %6770 = extractvalue %dx.types.ResRet.f32 %6768, 1
  %6771 = extractvalue %dx.types.ResRet.f32 %6768, 2
  %6772 = extractvalue %dx.types.ResRet.f32 %6768, 3
  %6773 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %6766, float %6767, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6774 = extractvalue %dx.types.ResRet.f32 %6773, 0
  %6775 = extractvalue %dx.types.ResRet.f32 %6773, 1
  %6776 = extractvalue %dx.types.ResRet.f32 %6773, 2
  %6777 = extractvalue %dx.types.ResRet.f32 %6773, 3
  %6778 = call float @dx.op.binary.f32(i32 35, float %6770, float %6771)  ; FMax(a,b)
  %6779 = call float @dx.op.binary.f32(i32 35, float %6769, float %6778)  ; FMax(a,b)
  %6780 = call float @dx.op.binary.f32(i32 35, float %6779, float %6772)  ; FMax(a,b)
  %6781 = call float @dx.op.binary.f32(i32 36, float %6775, float %6776)  ; FMin(a,b)
  %6782 = call float @dx.op.binary.f32(i32 36, float %6774, float %6781)  ; FMin(a,b)
  %6783 = call float @dx.op.binary.f32(i32 36, float %6782, float %6777)  ; FMin(a,b)
  %6784 = fmul fast float %6780, 2.550000e+02
  %6785 = fadd fast float %6784, 0x3F70101020000000
  %6786 = fptoui float %6785 to i32
  %6787 = fmul fast float %6783, 2.550000e+02
  %6788 = fadd fast float %6787, 0x3F70101020000000
  %6789 = fptoui float %6788 to i32
  %6790 = icmp ult i32 %6786, %6789
  br i1 %6790, label %6791, label %6959

; <label>:6791                                    ; preds = %6760
  %6792 = fcmp fast ogt float %79, 9.843750e-01
  %6793 = fadd fast float %80, -4.000000e+00
  %6794 = select i1 %6792, float -4.000000e+00, float %6793
  %6795 = call float @dx.op.binary.f32(i32 35, float %6794, float 0.000000e+00)  ; FMax(a,b)
  %6796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6797 = extractvalue %dx.types.CBufRet.f32 %6796, 0
  %6798 = fadd fast float %6797, %6795
  %6799 = extractvalue %dx.types.CBufRet.f32 %6796, 2
  %6800 = fmul fast float %6798, %6799
  %6801 = call float @dx.op.unary.f32(i32 23, float %6800)  ; Log(value)
  %6802 = extractvalue %dx.types.CBufRet.f32 %6796, 3
  %6803 = fmul fast float %6802, %6801
  %6804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6805 = extractvalue %dx.types.CBufRet.f32 %6804, 2
  %6806 = fmul fast float %6803, %6805
  %6807 = call float @dx.op.unary.f32(i32 7, float %6806)  ; Saturate(value)
  %6808 = uitofp i32 %6786 to float
  %6809 = uitofp i32 %6789 to float
  %6810 = fadd fast float %6808, 5.000000e-01
  %6811 = fadd fast float %6809, 5.000000e-01
  %6812 = fmul fast float %6805, %6810
  %6813 = fmul fast float %6805, %6811
  %6814 = fadd fast float %6812, 0x3F0FFB4800000000
  %6815 = fadd fast float %6813, 0xBF0FFB4800000000
  %6816 = call float @dx.op.binary.f32(i32 35, float %6807, float %6814)  ; FMax(a,b)
  %6817 = call float @dx.op.binary.f32(i32 36, float %6816, float %6815)  ; FMin(a,b)
  %6818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6819 = extractvalue %dx.types.CBufRet.f32 %6818, 1
  %6820 = extractvalue %dx.types.CBufRet.f32 %6818, 2
  %6821 = extractvalue %dx.types.CBufRet.f32 %6818, 0
  %6822 = fmul fast float %6819, %6817
  %6823 = fadd fast float %6821, %6822
  %6824 = fadd fast float %6821, %6820
  %6825 = fsub fast float %6819, %6820
  %6826 = fadd fast float %6825, %6821
  %6827 = call float @dx.op.binary.f32(i32 35, float %6823, float %6824)  ; FMax(a,b)
  %6828 = call float @dx.op.binary.f32(i32 36, float %6827, float %6826)  ; FMin(a,b)
  %6829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %6766, float %6767, float %6828, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6830 = extractvalue %dx.types.ResRet.f32 %6829, 0
  %6831 = extractvalue %dx.types.ResRet.f32 %6829, 1
  %6832 = extractvalue %dx.types.ResRet.f32 %6829, 2
  %6833 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.i32 %6833, 0
  %6835 = extractvalue %dx.types.CBufRet.i32 %6833, 1
  %6836 = uitofp i32 %6834 to float
  %6837 = uitofp i32 %6835 to float
  %6838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.f32 %6838, 0
  %6840 = extractvalue %dx.types.CBufRet.f32 %6838, 1
  %6841 = fmul fast float %6836, %6766
  %6842 = fmul fast float %6837, %6767
  %6843 = fadd fast float %6841, -5.000000e-01
  %6844 = fadd fast float %6842, -5.000000e-01
  %6845 = call float @dx.op.unary.f32(i32 22, float %6843)  ; Frc(value)
  %6846 = call float @dx.op.unary.f32(i32 22, float %6844)  ; Frc(value)
  %6847 = fmul fast float %6845, %6845
  %6848 = fmul fast float %6847, %6845
  %6849 = fsub fast float 3.000000e+00, %6845
  %6850 = fmul fast float %6847, %6849
  %6851 = fmul fast float %6845, 3.000000e+00
  %6852 = fmul fast float %6848, 3.000000e+00
  %6853 = fmul fast float %6847, 6.000000e+00
  %6854 = fsub fast float %6852, %6853
  %6855 = fadd fast float %6854, 4.000000e+00
  %6856 = fmul fast float %6855, 0x3FC5555560000000
  %6857 = fmul fast float %6848, -3.000000e+00
  %6858 = fadd fast float %6847, %6845
  %6859 = fmul fast float %6858, 3.000000e+00
  %6860 = fadd fast float %6857, 1.000000e+00
  %6861 = fadd fast float %6860, %6859
  %6862 = fmul fast float %6848, 0x3FC5555560000000
  %6863 = fmul fast float %6846, %6846
  %6864 = fmul fast float %6863, %6846
  %6865 = fsub fast float 3.000000e+00, %6846
  %6866 = fmul fast float %6863, %6865
  %6867 = fmul fast float %6846, 3.000000e+00
  %6868 = fmul fast float %6864, 3.000000e+00
  %6869 = fmul fast float %6863, 6.000000e+00
  %6870 = fsub fast float %6868, %6869
  %6871 = fadd fast float %6870, 4.000000e+00
  %6872 = fmul fast float %6871, 0x3FC5555560000000
  %6873 = fmul fast float %6864, -3.000000e+00
  %6874 = fadd fast float %6863, %6846
  %6875 = fmul fast float %6874, 3.000000e+00
  %6876 = fadd fast float %6873, 1.000000e+00
  %6877 = fadd fast float %6876, %6875
  %6878 = fmul fast float %6864, 0x3FC5555560000000
  %6879 = fadd fast float %6845, 1.000000e+00
  %6880 = fsub fast float 1.000000e+00, %6851
  %6881 = fadd fast float %6880, %6850
  %6882 = fadd fast float %6881, %6855
  %6883 = fmul fast float %6882, 0x3FC5555560000000
  %6884 = fdiv fast float %6856, %6883
  %6885 = fsub fast float %6879, %6884
  %6886 = fsub fast float 1.000000e+00, %6845
  %6887 = fadd fast float %6861, %6848
  %6888 = fmul fast float %6887, 0x3FC5555560000000
  %6889 = fdiv fast float %6862, %6888
  %6890 = fadd fast float %6886, %6889
  %6891 = fadd fast float %6846, 1.000000e+00
  %6892 = fsub fast float 1.000000e+00, %6867
  %6893 = fadd fast float %6892, %6866
  %6894 = fadd fast float %6893, %6871
  %6895 = fmul fast float %6894, 0x3FC5555560000000
  %6896 = fdiv fast float %6872, %6895
  %6897 = fsub fast float %6891, %6896
  %6898 = fsub fast float 1.000000e+00, %6846
  %6899 = fadd fast float %6877, %6864
  %6900 = fmul fast float %6899, 0x3FC5555560000000
  %6901 = fdiv fast float %6878, %6900
  %6902 = fadd fast float %6901, %6898
  %6903 = fmul fast float %6885, %6839
  %6904 = fsub fast float %6766, %6903
  %6905 = fmul fast float %6890, %6839
  %6906 = fadd fast float %6905, %6766
  %6907 = fmul fast float %6902, %6840
  %6908 = fadd fast float %6907, %6767
  %6909 = fmul fast float %6897, %6840
  %6910 = fsub fast float %6767, %6909
  %6911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %6904, float %6910, float %6828, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6912 = extractvalue %dx.types.ResRet.f32 %6911, 0
  %6913 = extractvalue %dx.types.ResRet.f32 %6911, 1
  %6914 = extractvalue %dx.types.ResRet.f32 %6911, 2
  %6915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %6906, float %6910, float %6828, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6916 = extractvalue %dx.types.ResRet.f32 %6915, 0
  %6917 = extractvalue %dx.types.ResRet.f32 %6915, 1
  %6918 = extractvalue %dx.types.ResRet.f32 %6915, 2
  %6919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %6904, float %6908, float %6828, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6920 = extractvalue %dx.types.ResRet.f32 %6919, 0
  %6921 = extractvalue %dx.types.ResRet.f32 %6919, 1
  %6922 = extractvalue %dx.types.ResRet.f32 %6919, 2
  %6923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %6906, float %6908, float %6828, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6924 = extractvalue %dx.types.ResRet.f32 %6923, 0
  %6925 = extractvalue %dx.types.ResRet.f32 %6923, 1
  %6926 = extractvalue %dx.types.ResRet.f32 %6923, 2
  %6927 = fsub fast float %6920, %6912
  %6928 = fsub fast float %6921, %6913
  %6929 = fsub fast float %6922, %6914
  %6930 = fmul fast float %6927, %6900
  %6931 = fmul fast float %6928, %6900
  %6932 = fmul fast float %6929, %6900
  %6933 = fadd fast float %6930, %6912
  %6934 = fadd fast float %6931, %6913
  %6935 = fadd fast float %6932, %6914
  %6936 = fsub fast float %6924, %6916
  %6937 = fsub fast float %6925, %6917
  %6938 = fsub fast float %6926, %6918
  %6939 = fmul fast float %6936, %6900
  %6940 = fmul fast float %6937, %6900
  %6941 = fmul fast float %6938, %6900
  %6942 = fsub fast float %6916, %6933
  %6943 = fadd fast float %6942, %6939
  %6944 = fsub fast float %6917, %6934
  %6945 = fadd fast float %6944, %6940
  %6946 = fsub fast float %6918, %6935
  %6947 = fadd fast float %6946, %6941
  %6948 = fmul fast float %6943, %6888
  %6949 = fmul fast float %6945, %6888
  %6950 = fmul fast float %6947, %6888
  %6951 = fadd fast float %6948, %6933
  %6952 = fadd fast float %6949, %6934
  %6953 = fadd fast float %6950, %6935
  %6954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.f32 %6954, 1
  %6956 = fmul fast float %6951, %6955
  %6957 = fmul fast float %6952, %6955
  %6958 = fmul fast float %6953, %6955
  br label %6959

; <label>:6959                                    ; preds = %6791, %6760
  %6960 = phi float [ %6830, %6791 ], [ 1.000000e+00, %6760 ]
  %6961 = phi float [ %6831, %6791 ], [ 1.000000e+00, %6760 ]
  %6962 = phi float [ %6832, %6791 ], [ 1.000000e+00, %6760 ]
  %6963 = phi float [ %6956, %6791 ], [ 0.000000e+00, %6760 ]
  %6964 = phi float [ %6957, %6791 ], [ 0.000000e+00, %6760 ]
  %6965 = phi float [ %6958, %6791 ], [ 0.000000e+00, %6760 ]
  %6966 = fmul fast float %6963, %6737
  %6967 = fmul fast float %6964, %6737
  %6968 = fmul fast float %6965, %6737
  %6969 = call float @dx.op.dot3.f32(i32 55, float %6960, float %6961, float %6962, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6970 = call float @dx.op.dot3.f32(i32 55, float %6966, float %6967, float %6968, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6971 = select i1 %216, float %6969, float %6960
  %6972 = select i1 %216, float %6969, float %6961
  %6973 = select i1 %216, float 1.000000e+00, float %6962
  %6974 = select i1 %216, float %6970, float %6966
  %6975 = select i1 %216, float 0.000000e+00, float %6967
  %6976 = select i1 %216, float 0.000000e+00, float %6968
  %6977 = fmul fast float %6971, %6750
  %6978 = fmul fast float %6972, %6751
  %6979 = fmul fast float %6973, %6752
  %6980 = fadd fast float %6977, %6974
  %6981 = fadd fast float %6978, %6975
  %6982 = fadd fast float %6976, %6979
  %6983 = fmul fast float %6971, %6731
  %6984 = fmul fast float %6972, %6732
  %6985 = fmul fast float %6973, %6733
  %6986 = fmul fast float %125, %6762
  %6987 = fmul fast float %127, %6763
  %6988 = fsub fast float 1.000000e+00, %6986
  %6989 = fsub fast float 1.000000e+00, %6987
  %6990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6991 = extractvalue %dx.types.CBufRet.f32 %6990, 0
  %6992 = extractvalue %dx.types.CBufRet.f32 %6990, 1
  %6993 = extractvalue %dx.types.CBufRet.f32 %6990, 2
  %6994 = fmul fast float %6988, %6991
  %6995 = fmul fast float %6988, %6992
  %6996 = fmul fast float %6988, %6993
  %6997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6998 = extractvalue %dx.types.CBufRet.f32 %6997, 0
  %6999 = extractvalue %dx.types.CBufRet.f32 %6997, 1
  %7000 = extractvalue %dx.types.CBufRet.f32 %6997, 2
  %7001 = fmul fast float %6989, %6998
  %7002 = fmul fast float %6989, %6999
  %7003 = fmul fast float %6989, %7000
  %7004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7005 = extractvalue %dx.types.CBufRet.f32 %7004, 0
  %7006 = extractvalue %dx.types.CBufRet.f32 %7004, 1
  %7007 = extractvalue %dx.types.CBufRet.f32 %7004, 2
  %7008 = fadd fast float %7001, %7005
  %7009 = fadd fast float %7008, %6994
  %7010 = fadd fast float %7002, %7006
  %7011 = fadd fast float %7010, %6995
  %7012 = fadd fast float %7003, %7007
  %7013 = fadd fast float %7012, %6996
  %7014 = fmul fast float %7009, %177
  %7015 = fmul fast float %7011, %177
  %7016 = fmul fast float %7013, %177
  br label %7017

; <label>:7017                                    ; preds = %6959, %6730
  %7018 = phi float [ %7014, %6959 ], [ %155, %6730 ]
  %7019 = phi float [ %7015, %6959 ], [ %156, %6730 ]
  %7020 = phi float [ %7016, %6959 ], [ %157, %6730 ]
  %7021 = phi float [ %177, %6959 ], [ %80, %6730 ]
  %7022 = phi float [ %6980, %6959 ], [ %6750, %6730 ]
  %7023 = phi float [ %6981, %6959 ], [ %6751, %6730 ]
  %7024 = phi float [ %6982, %6959 ], [ %6752, %6730 ]
  %7025 = phi float [ %6983, %6959 ], [ %6731, %6730 ]
  %7026 = phi float [ %6984, %6959 ], [ %6732, %6730 ]
  %7027 = phi float [ %6985, %6959 ], [ %6733, %6730 ]
  %7028 = phi float [ %6960, %6959 ], [ 1.000000e+00, %6730 ]
  br i1 %6759, label %8183, label %7029

; <label>:7029                                    ; preds = %7017
  %7030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7031 = extractvalue %dx.types.CBufRet.f32 %7030, 0
  %7032 = extractvalue %dx.types.CBufRet.f32 %7030, 1
  %7033 = extractvalue %dx.types.CBufRet.f32 %7030, 2
  %7034 = extractvalue %dx.types.CBufRet.f32 %7030, 3
  %7035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7036 = extractvalue %dx.types.CBufRet.f32 %7035, 0
  %7037 = extractvalue %dx.types.CBufRet.f32 %7035, 1
  %7038 = extractvalue %dx.types.CBufRet.f32 %7035, 2
  %7039 = extractvalue %dx.types.CBufRet.f32 %7035, 3
  %7040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7041 = extractvalue %dx.types.CBufRet.f32 %7040, 0
  %7042 = extractvalue %dx.types.CBufRet.f32 %7040, 1
  %7043 = extractvalue %dx.types.CBufRet.f32 %7040, 2
  %7044 = extractvalue %dx.types.CBufRet.f32 %7040, 3
  %7045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7046 = extractvalue %dx.types.CBufRet.f32 %7045, 0
  %7047 = extractvalue %dx.types.CBufRet.f32 %7045, 1
  %7048 = extractvalue %dx.types.CBufRet.f32 %7045, 2
  %7049 = extractvalue %dx.types.CBufRet.f32 %7045, 3
  %7050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7051 = extractvalue %dx.types.CBufRet.f32 %7050, 3
  %7052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7053 = extractvalue %dx.types.CBufRet.f32 %7052, 3
  %7054 = extractvalue %dx.types.CBufRet.f32 %7052, 0
  %7055 = extractvalue %dx.types.CBufRet.f32 %7052, 1
  %7056 = extractvalue %dx.types.CBufRet.f32 %7052, 2
  %7057 = fcmp fast olt float %7056, -5.000000e-01
  %7058 = call float @dx.op.dot3.f32(i32 55, float %7018, float %7019, float %7020, float %7018, float %7019, float %7020)  ; Dot3(ax,ay,az,bx,by,bz)
  %7059 = call float @dx.op.unary.f32(i32 25, float %7058)  ; Rsqrt(value)
  %7060 = fmul fast float %7059, %7058
  %7061 = fmul fast float %7059, %7018
  %7062 = fmul fast float %7059, %7019
  %7063 = fmul fast float %7059, %7020
  %7064 = fadd fast float %7060, %7034
  %7065 = call float @dx.op.dot3.f32(i32 55, float %7061, float %7062, float %7063, float %7031, float %7032, float %7033)  ; Dot3(ax,ay,az,bx,by,bz)
  %7066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7067 = extractvalue %dx.types.CBufRet.i32 %7066, 1
  %7068 = and i32 %7067, 1
  %7069 = icmp ne i32 %7068, 0
  %7070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7071 = extractvalue %dx.types.CBufRet.f32 %7070, 2
  %7072 = fcmp fast ogt float %7071, 0.000000e+00
  %7073 = and i1 %7069, %7072
  br i1 %7073, label %7074, label %7480, !dx.controlflow.hints !118

; <label>:7074                                    ; preds = %7029
  %7075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7076 = extractvalue %dx.types.CBufRet.f32 %7075, 3
  %7077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7078 = extractvalue %dx.types.CBufRet.f32 %7077, 2
  %7079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7080 = extractvalue %dx.types.CBufRet.f32 %7079, 2
  %7081 = fsub fast float %7078, %7080
  %7082 = and i32 %7067, 2
  %7083 = extractvalue %dx.types.CBufRet.i32 %7066, 0
  %7084 = call i32 @dx.op.binary.i32(i32 40, i32 %7083, i32 3)  ; UMin(a,b)
  %7085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7086 = extractvalue %dx.types.CBufRet.f32 %7085, 0
  %7087 = extractvalue %dx.types.CBufRet.f32 %7085, 1
  %7088 = extractvalue %dx.types.CBufRet.f32 %7079, 0
  %7089 = extractvalue %dx.types.CBufRet.f32 %7079, 1
  %7090 = fsub fast float %7086, %7088
  %7091 = fsub fast float %7087, %7089
  %7092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7093 = extractvalue %dx.types.CBufRet.f32 %7092, 0
  %7094 = fcmp fast ogt float %7093, 0.000000e+00
  %7095 = fsub fast float -0.000000e+00, %7090
  %7096 = fsub fast float -0.000000e+00, %7091
  %7097 = call float @dx.op.dot2.f32(i32 54, float %7061, float %7062, float %7061, float %7062)  ; Dot2(ax,ay,bx,by)
  %7098 = call float @dx.op.dot2.f32(i32 54, float %7061, float %7062, float %7095, float %7096)  ; Dot2(ax,ay,bx,by)
  %7099 = fmul fast float %7098, 2.000000e+00
  %7100 = call float @dx.op.dot2.f32(i32 54, float %7095, float %7096, float %7095, float %7096)  ; Dot2(ax,ay,bx,by)
  %7101 = fmul fast float %7093, %7093
  %7102 = fsub fast float %7100, %7101
  %7103 = fmul fast float %7099, %7099
  %7104 = fmul fast float %7097, 4.000000e+00
  %7105 = fmul fast float %7104, %7102
  %7106 = fsub fast float %7103, %7105
  %7107 = fcmp fast ogt float %7106, 0.000000e+00
  br i1 %7107, label %7108, label %7123

; <label>:7108                                    ; preds = %7074
  %7109 = fcmp fast ogt float %7099, 0.000000e+00
  %7110 = call float @dx.op.unary.f32(i32 24, float %7106)  ; Sqrt(value)
  %7111 = fsub fast float -0.000000e+00, %7110
  %7112 = select i1 %7109, float %7110, float %7111
  %7113 = fadd fast float %7112, %7099
  %7114 = fmul float %7113, -5.000000e-01
  %7115 = fdiv fast float %7114, %7097
  %7116 = call float @dx.op.binary.f32(i32 35, float %7115, float 0.000000e+00)  ; FMax(a,b)
  %7117 = call float @dx.op.binary.f32(i32 36, float %7060, float %7116)  ; FMin(a,b)
  %7118 = fdiv fast float %7102, %7114
  %7119 = call float @dx.op.binary.f32(i32 35, float %7118, float 0.000000e+00)  ; FMax(a,b)
  %7120 = call float @dx.op.binary.f32(i32 36, float %7060, float %7119)  ; FMin(a,b)
  %7121 = call float @dx.op.binary.f32(i32 36, float %7117, float %7120)  ; FMin(a,b)
  %7122 = call float @dx.op.binary.f32(i32 35, float %7117, float %7120)  ; FMax(a,b)
  br label %7123

; <label>:7123                                    ; preds = %7108, %7074
  %7124 = phi float [ %7122, %7108 ], [ -1.000000e+00, %7074 ]
  %7125 = phi float [ %7121, %7108 ], [ -1.000000e+00, %7074 ]
  %7126 = phi i1 [ true, %7108 ], [ false, %7074 ]
  %7127 = and i1 %7094, %7126
  br i1 %7127, label %7128, label %7130

; <label>:7128                                    ; preds = %7123
  %7129 = fcmp fast oeq float %7125, %7124
  br i1 %7129, label %7433, label %7131

; <label>:7130                                    ; preds = %7123
  br i1 %7094, label %7433, label %7131

; <label>:7131                                    ; preds = %7130, %7128
  %7132 = phi float [ %7060, %7130 ], [ %7124, %7128 ]
  %7133 = phi float [ 0.000000e+00, %7130 ], [ %7125, %7128 ]
  %7134 = icmp ne i32 %7082, 0
  %7135 = fmul fast float %7132, %7063
  %7136 = fadd fast float %7135, %7076
  %7137 = fmul fast float %7136, %7132
  %7138 = select i1 %7134, float 0.000000e+00, float %7137
  %7139 = fcmp fast oeq float %7063, 0.000000e+00
  %7140 = fdiv fast float %7081, %7063
  %7141 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7140)  ; FMax(a,b)
  %7142 = select i1 %7139, float %7132, float %7141
  %7143 = call float @dx.op.binary.f32(i32 36, float %7132, float %7142)  ; FMin(a,b)
  %7144 = fcmp fast ogt float %7063, 0.000000e+00
  %7145 = fcmp fast olt float %7081, 0.000000e+00
  br i1 %7144, label %7146, label %7203

; <label>:7146                                    ; preds = %7131
  %7147 = icmp eq i32 %7082, 0
  br i1 %7145, label %7148, label %7192

; <label>:7148                                    ; preds = %7146
  %7149 = select i1 %7147, float %7132, float 0.000000e+00
  %7150 = fsub fast float -0.000000e+00, %7149
  %7151 = call float @dx.op.unary.f32(i32 6, float %7150)  ; FAbs(value)
  %7152 = fmul fast float %7149, %7063
  %7153 = fadd fast float %7152, %7076
  %7154 = fmul fast float %7151, %7153
  %7155 = fsub fast float %7138, %7154
  %7156 = fsub fast float %7132, %7151
  %7157 = select i1 %7147, float %7156, float 0.000000e+00
  %7158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7159 = extractvalue %dx.types.CBufRet.f32 %7158, 0
  %7160 = extractvalue %dx.types.CBufRet.f32 %7158, 1
  %7161 = extractvalue %dx.types.CBufRet.f32 %7158, 2
  %7162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7163 = extractvalue %dx.types.CBufRet.f32 %7162, 0
  %7164 = extractvalue %dx.types.CBufRet.f32 %7162, 1
  %7165 = extractvalue %dx.types.CBufRet.f32 %7162, 2
  %7166 = extractvalue %dx.types.CBufRet.f32 %7162, 3
  %7167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7168 = extractvalue %dx.types.CBufRet.f32 %7167, 3
  %7169 = call float @dx.op.binary.f32(i32 36, float %7155, float %7168)  ; FMin(a,b)
  %7170 = fmul fast float %7166, %7157
  %7171 = call float @dx.op.unary.f32(i32 7, float %7170)  ; Saturate(value)
  %7172 = fsub fast float %7163, %7159
  %7173 = fsub fast float %7164, %7160
  %7174 = fsub fast float %7165, %7161
  %7175 = fmul fast float %7171, %7172
  %7176 = fmul fast float %7171, %7173
  %7177 = fmul fast float %7171, %7174
  %7178 = fadd fast float %7175, %7159
  %7179 = fadd fast float %7176, %7160
  %7180 = fadd fast float %7177, %7161
  %7181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7182 = extractvalue %dx.types.CBufRet.f32 %7181, 0
  %7183 = extractvalue %dx.types.CBufRet.f32 %7181, 1
  %7184 = fadd fast float %7183, %7182
  %7185 = call float @dx.op.unary.f32(i32 7, float %7184)  ; Saturate(value)
  %7186 = extractvalue %dx.types.CBufRet.f32 %7181, 2
  %7187 = extractvalue %dx.types.CBufRet.f32 %7181, 3
  %7188 = fadd fast float %7187, %7186
  %7189 = call float @dx.op.unary.f32(i32 7, float %7188)  ; Saturate(value)
  %7190 = fmul fast float %7185, %7169
  %7191 = fmul fast float %7190, %7189
  br label %7433

; <label>:7192                                    ; preds = %7146
  br i1 %7147, label %7193, label %7214

; <label>:7193                                    ; preds = %7192
  %7194 = call float @dx.op.binary.f32(i32 36, float %7143, float %7133)  ; FMin(a,b)
  %7195 = fsub fast float %7143, %7194
  %7196 = fsub fast float %7195, %7132
  %7197 = call float @dx.op.unary.f32(i32 6, float %7196)  ; FAbs(value)
  %7198 = fadd fast float %7195, %7132
  %7199 = fmul fast float %7198, %7063
  %7200 = fadd fast float %7199, %7076
  %7201 = fmul fast float %7200, %7197
  %7202 = fsub fast float %7138, %7201
  br label %7214

; <label>:7203                                    ; preds = %7131
  br i1 %7145, label %7204, label %7214

; <label>:7204                                    ; preds = %7203
  %7205 = call float @dx.op.binary.f32(i32 35, float %7133, float %7143)  ; FMax(a,b)
  %7206 = icmp eq i32 %7082, 0
  %7207 = select i1 %7206, float %7143, float 0.000000e+00
  %7208 = fsub fast float -0.000000e+00, %7207
  %7209 = call float @dx.op.unary.f32(i32 6, float %7208)  ; FAbs(value)
  %7210 = fmul fast float %7207, %7063
  %7211 = fadd fast float %7210, %7076
  %7212 = fmul fast float %7209, %7211
  %7213 = fsub fast float %7138, %7212
  br label %7214

; <label>:7214                                    ; preds = %7204, %7203, %7193, %7192
  %7215 = phi float [ %7133, %7192 ], [ %7133, %7193 ], [ %7205, %7204 ], [ %7133, %7203 ]
  %7216 = phi float [ 0.000000e+00, %7192 ], [ %7197, %7193 ], [ %7209, %7204 ], [ 0.000000e+00, %7203 ]
  %7217 = phi float [ %7138, %7192 ], [ %7202, %7193 ], [ %7213, %7204 ], [ %7138, %7203 ]
  %7218 = phi float [ %7143, %7192 ], [ %7143, %7193 ], [ %7132, %7204 ], [ %7132, %7203 ]
  %7219 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 0
  store float -1.000000e+00, float* %7219, align 4, !tbaa !108, !noalias !119
  %7220 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 1
  store float -1.000000e+00, float* %7220, align 4, !tbaa !108, !noalias !119
  %7221 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 2
  store float -1.000000e+00, float* %7221, align 4, !tbaa !108, !noalias !119
  %7222 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 0
  store float -1.000000e+00, float* %7222, align 4, !tbaa !108, !noalias !119
  %7223 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 1
  store float -1.000000e+00, float* %7223, align 4, !tbaa !108, !noalias !119
  %7224 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 2
  store float -1.000000e+00, float* %7224, align 4, !tbaa !108, !noalias !119
  %7225 = icmp sgt i32 %7084, 0
  br i1 %7225, label %7226, label %7287

; <label>:7226                                    ; preds = %7214
  br label %7227

; <label>:7227                                    ; preds = %7276, %7226
  %7228 = phi i32 [ %7277, %7276 ], [ 0, %7226 ]
  %7229 = phi i32 [ %7278, %7276 ], [ 0, %7226 ]
  %7230 = add nuw i32 %7229, 171
  %7231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %7230)  ; CBufferLoadLegacy(handle,regIndex)
  %7232 = extractvalue %dx.types.CBufRet.f32 %7231, 0
  %7233 = extractvalue %dx.types.CBufRet.f32 %7231, 1
  %7234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7235 = extractvalue %dx.types.CBufRet.f32 %7234, 0
  %7236 = extractvalue %dx.types.CBufRet.f32 %7234, 1
  %7237 = fsub fast float %7232, %7235
  %7238 = fsub fast float %7233, %7236
  %7239 = extractvalue %dx.types.CBufRet.f32 %7231, 2
  %7240 = fsub fast float -0.000000e+00, %7237
  %7241 = fsub fast float -0.000000e+00, %7238
  %7242 = call float @dx.op.dot2.f32(i32 54, float %7061, float %7062, float %7240, float %7241)  ; Dot2(ax,ay,bx,by)
  %7243 = fmul fast float %7242, 2.000000e+00
  %7244 = call float @dx.op.dot2.f32(i32 54, float %7240, float %7241, float %7240, float %7241)  ; Dot2(ax,ay,bx,by)
  %7245 = fmul fast float %7239, %7239
  %7246 = fsub fast float %7244, %7245
  %7247 = fmul fast float %7243, %7243
  %7248 = fmul fast float %7104, %7246
  %7249 = fsub fast float %7247, %7248
  %7250 = fcmp fast ogt float %7249, 0.000000e+00
  br i1 %7250, label %7251, label %7266

; <label>:7251                                    ; preds = %7227
  %7252 = fcmp fast ogt float %7243, 0.000000e+00
  %7253 = call float @dx.op.unary.f32(i32 24, float %7249)  ; Sqrt(value)
  %7254 = fsub fast float -0.000000e+00, %7253
  %7255 = select i1 %7252, float %7253, float %7254
  %7256 = fadd fast float %7255, %7243
  %7257 = fmul float %7256, -5.000000e-01
  %7258 = fdiv fast float %7257, %7097
  %7259 = call float @dx.op.binary.f32(i32 35, float %7258, float 0.000000e+00)  ; FMax(a,b)
  %7260 = call float @dx.op.binary.f32(i32 36, float %7132, float %7259)  ; FMin(a,b)
  %7261 = fdiv fast float %7246, %7257
  %7262 = call float @dx.op.binary.f32(i32 35, float %7261, float 0.000000e+00)  ; FMax(a,b)
  %7263 = call float @dx.op.binary.f32(i32 36, float %7132, float %7262)  ; FMin(a,b)
  %7264 = call float @dx.op.binary.f32(i32 36, float %7260, float %7263)  ; FMin(a,b)
  %7265 = call float @dx.op.binary.f32(i32 35, float %7260, float %7263)  ; FMax(a,b)
  br label %7266

; <label>:7266                                    ; preds = %7251, %7227
  %7267 = phi float [ %7265, %7251 ], [ -1.000000e+00, %7227 ]
  %7268 = phi float [ %7264, %7251 ], [ -1.000000e+00, %7227 ]
  %7269 = phi i1 [ true, %7251 ], [ false, %7227 ]
  br i1 %7269, label %7270, label %7276

; <label>:7270                                    ; preds = %7266
  %7271 = call float @dx.op.binary.f32(i32 35, float %7215, float %7268)  ; FMax(a,b)
  %7272 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %7229
  store float %7271, float* %7272, align 4, !tbaa !108, !noalias !119
  %7273 = call float @dx.op.binary.f32(i32 35, float %7215, float %7267)  ; FMax(a,b)
  %7274 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %7229
  store float %7273, float* %7274, align 4, !tbaa !108, !noalias !119
  %7275 = add nsw i32 %7228, 1
  br label %7276

; <label>:7276                                    ; preds = %7270, %7266
  %7277 = phi i32 [ %7275, %7270 ], [ %7228, %7266 ]
  %7278 = add nuw nsw i32 %7229, 1
  %7279 = icmp eq i32 %7278, %7084
  br i1 %7279, label %7280, label %7227

; <label>:7280                                    ; preds = %7276
  %7281 = load float, float* %7221, align 4, !tbaa !108, !alias.scope !135, !noalias !138
  %7282 = load float, float* %7220, align 4, !tbaa !108, !alias.scope !141, !noalias !142
  %7283 = load float, float* %7219, align 4, !tbaa !108, !alias.scope !143, !noalias !144
  %7284 = load float, float* %7224, align 4, !tbaa !108, !alias.scope !145, !noalias !148
  %7285 = load float, float* %7223, align 4, !tbaa !108, !alias.scope !151, !noalias !152
  %7286 = load float, float* %7222, align 4, !tbaa !108, !alias.scope !153, !noalias !154
  br label %7287

; <label>:7287                                    ; preds = %7280, %7214
  %7288 = phi float [ -1.000000e+00, %7214 ], [ %7286, %7280 ]
  %7289 = phi float [ -1.000000e+00, %7214 ], [ %7285, %7280 ]
  %7290 = phi float [ -1.000000e+00, %7214 ], [ %7284, %7280 ]
  %7291 = phi float [ -1.000000e+00, %7214 ], [ %7283, %7280 ]
  %7292 = phi float [ -1.000000e+00, %7214 ], [ %7282, %7280 ]
  %7293 = phi float [ -1.000000e+00, %7214 ], [ %7281, %7280 ]
  %7294 = phi i32 [ 0, %7214 ], [ %7277, %7280 ]
  %7295 = call float @dx.op.binary.f32(i32 36, float %7292, float %7293)  ; FMin(a,b)
  %7296 = call float @dx.op.binary.f32(i32 36, float %7291, float %7295)  ; FMin(a,b)
  %7297 = call float @dx.op.binary.f32(i32 35, float %7291, float %7292)  ; FMax(a,b)
  %7298 = call float @dx.op.binary.f32(i32 36, float %7297, float %7293)  ; FMin(a,b)
  %7299 = call float @dx.op.binary.f32(i32 36, float %7291, float %7292)  ; FMin(a,b)
  %7300 = call float @dx.op.binary.f32(i32 35, float %7299, float %7298)  ; FMax(a,b)
  %7301 = call float @dx.op.binary.f32(i32 35, float %7292, float %7293)  ; FMax(a,b)
  %7302 = call float @dx.op.binary.f32(i32 35, float %7291, float %7301)  ; FMax(a,b)
  store float %7296, float* %7219, align 4, !tbaa !108, !alias.scope !143, !noalias !144
  store float %7300, float* %7220, align 4, !tbaa !108, !alias.scope !141, !noalias !142
  store float %7302, float* %7221, align 4, !tbaa !108, !alias.scope !135, !noalias !138
  %7303 = call float @dx.op.binary.f32(i32 36, float %7289, float %7290)  ; FMin(a,b)
  %7304 = call float @dx.op.binary.f32(i32 36, float %7288, float %7303)  ; FMin(a,b)
  %7305 = call float @dx.op.binary.f32(i32 35, float %7288, float %7289)  ; FMax(a,b)
  %7306 = call float @dx.op.binary.f32(i32 36, float %7305, float %7290)  ; FMin(a,b)
  %7307 = call float @dx.op.binary.f32(i32 36, float %7288, float %7289)  ; FMin(a,b)
  %7308 = call float @dx.op.binary.f32(i32 35, float %7307, float %7306)  ; FMax(a,b)
  %7309 = call float @dx.op.binary.f32(i32 35, float %7289, float %7290)  ; FMax(a,b)
  %7310 = call float @dx.op.binary.f32(i32 35, float %7288, float %7309)  ; FMax(a,b)
  store float %7304, float* %7222, align 4, !tbaa !108, !alias.scope !153, !noalias !154
  store float %7308, float* %7223, align 4, !tbaa !108, !alias.scope !151, !noalias !152
  store float %7310, float* %7224, align 4, !tbaa !108, !alias.scope !145, !noalias !148
  %7311 = sub nsw i32 3, %7294
  %7312 = icmp sgt i32 %7311, 2
  br i1 %7312, label %7313, label %7351

; <label>:7313                                    ; preds = %7287
  %7314 = icmp eq i32 %7082, 0
  %7315 = fsub fast float %7132, %7216
  %7316 = select i1 %7314, float %7315, float %7216
  %7317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7318 = extractvalue %dx.types.CBufRet.f32 %7317, 0
  %7319 = extractvalue %dx.types.CBufRet.f32 %7317, 1
  %7320 = extractvalue %dx.types.CBufRet.f32 %7317, 2
  %7321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7322 = extractvalue %dx.types.CBufRet.f32 %7321, 0
  %7323 = extractvalue %dx.types.CBufRet.f32 %7321, 1
  %7324 = extractvalue %dx.types.CBufRet.f32 %7321, 2
  %7325 = extractvalue %dx.types.CBufRet.f32 %7321, 3
  %7326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7327 = extractvalue %dx.types.CBufRet.f32 %7326, 3
  %7328 = call float @dx.op.binary.f32(i32 36, float %7217, float %7327)  ; FMin(a,b)
  %7329 = fmul fast float %7325, %7316
  %7330 = call float @dx.op.unary.f32(i32 7, float %7329)  ; Saturate(value)
  %7331 = fsub fast float %7322, %7318
  %7332 = fsub fast float %7323, %7319
  %7333 = fsub fast float %7324, %7320
  %7334 = fmul fast float %7330, %7331
  %7335 = fmul fast float %7330, %7332
  %7336 = fmul fast float %7330, %7333
  %7337 = fadd fast float %7334, %7318
  %7338 = fadd fast float %7335, %7319
  %7339 = fadd fast float %7336, %7320
  %7340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7341 = extractvalue %dx.types.CBufRet.f32 %7340, 0
  %7342 = extractvalue %dx.types.CBufRet.f32 %7340, 1
  %7343 = fadd fast float %7342, %7341
  %7344 = call float @dx.op.unary.f32(i32 7, float %7343)  ; Saturate(value)
  %7345 = extractvalue %dx.types.CBufRet.f32 %7340, 2
  %7346 = extractvalue %dx.types.CBufRet.f32 %7340, 3
  %7347 = fadd fast float %7346, %7345
  %7348 = call float @dx.op.unary.f32(i32 7, float %7347)  ; Saturate(value)
  %7349 = fmul fast float %7344, %7328
  %7350 = fmul fast float %7349, %7348
  br label %7433

; <label>:7351                                    ; preds = %7287
  %7352 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %7311
  %7353 = load float, float* %7352, align 4, !tbaa !108, !noalias !119
  %7354 = fcmp fast olt float %7353, %7218
  %7355 = icmp sgt i32 %7294, 0
  %7356 = and i1 %7355, %7354
  br i1 %7356, label %7357, label %7394

; <label>:7357                                    ; preds = %7351
  br label %7358

; <label>:7358                                    ; preds = %7387, %7357
  %7359 = phi float [ %7388, %7387 ], [ %7216, %7357 ]
  %7360 = phi float [ %7389, %7387 ], [ %7217, %7357 ]
  %7361 = phi float [ %7369, %7387 ], [ %7353, %7357 ]
  %7362 = phi i32 [ %7366, %7387 ], [ %7311, %7357 ]
  %7363 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %7362
  %7364 = load float, float* %7363, align 4, !tbaa !108, !noalias !119
  %7365 = icmp slt i32 %7362, 2
  %7366 = add nsw i32 %7362, 1
  %7367 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %7366
  %7368 = load float, float* %7367, align 4, !tbaa !108, !noalias !119
  %7369 = select i1 %7365, float %7368, float %7132
  %7370 = call float @dx.op.binary.f32(i32 36, float %7369, float %7364)  ; FMin(a,b)
  %7371 = call float @dx.op.binary.f32(i32 36, float %7218, float %7370)  ; FMin(a,b)
  %7372 = icmp eq i32 %7082, 0
  %7373 = fadd fast float %7371, %7361
  %7374 = fmul fast float %7373, %7063
  %7375 = fadd fast float %7374, %7076
  br i1 %7372, label %7381, label %7376

; <label>:7376                                    ; preds = %7358
  %7377 = fsub fast float %7371, %7361
  %7378 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7377)  ; FMax(a,b)
  %7379 = fmul fast float %7378, %7375
  %7380 = fadd fast float %7379, %7360
  br label %7387

; <label>:7381                                    ; preds = %7358
  %7382 = fsub fast float %7361, %7371
  %7383 = call float @dx.op.unary.f32(i32 6, float %7382)  ; FAbs(value)
  %7384 = fadd fast float %7383, %7359
  %7385 = fmul fast float %7383, %7375
  %7386 = fsub fast float %7360, %7385
  br label %7387

; <label>:7387                                    ; preds = %7381, %7376
  %7388 = phi float [ %7378, %7376 ], [ %7384, %7381 ]
  %7389 = phi float [ %7380, %7376 ], [ %7386, %7381 ]
  %7390 = fcmp fast olt float %7369, %7218
  %7391 = icmp slt i32 %7366, 3
  %7392 = and i1 %7391, %7390
  br i1 %7392, label %7358, label %7393

; <label>:7393                                    ; preds = %7387
  br label %7394

; <label>:7394                                    ; preds = %7393, %7351
  %7395 = phi float [ %7216, %7351 ], [ %7388, %7393 ]
  %7396 = phi float [ %7217, %7351 ], [ %7389, %7393 ]
  %7397 = fsub fast float %7132, %7395
  %7398 = select i1 %7134, float %7395, float %7397
  %7399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7400 = extractvalue %dx.types.CBufRet.f32 %7399, 0
  %7401 = extractvalue %dx.types.CBufRet.f32 %7399, 1
  %7402 = extractvalue %dx.types.CBufRet.f32 %7399, 2
  %7403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7404 = extractvalue %dx.types.CBufRet.f32 %7403, 0
  %7405 = extractvalue %dx.types.CBufRet.f32 %7403, 1
  %7406 = extractvalue %dx.types.CBufRet.f32 %7403, 2
  %7407 = extractvalue %dx.types.CBufRet.f32 %7403, 3
  %7408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7409 = extractvalue %dx.types.CBufRet.f32 %7408, 3
  %7410 = call float @dx.op.binary.f32(i32 36, float %7396, float %7409)  ; FMin(a,b)
  %7411 = fmul fast float %7407, %7398
  %7412 = call float @dx.op.unary.f32(i32 7, float %7411)  ; Saturate(value)
  %7413 = fsub fast float %7404, %7400
  %7414 = fsub fast float %7405, %7401
  %7415 = fsub fast float %7406, %7402
  %7416 = fmul fast float %7412, %7413
  %7417 = fmul fast float %7412, %7414
  %7418 = fmul fast float %7412, %7415
  %7419 = fadd fast float %7416, %7400
  %7420 = fadd fast float %7417, %7401
  %7421 = fadd fast float %7418, %7402
  %7422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7423 = extractvalue %dx.types.CBufRet.f32 %7422, 0
  %7424 = extractvalue %dx.types.CBufRet.f32 %7422, 1
  %7425 = fadd fast float %7424, %7423
  %7426 = call float @dx.op.unary.f32(i32 7, float %7425)  ; Saturate(value)
  %7427 = extractvalue %dx.types.CBufRet.f32 %7422, 2
  %7428 = extractvalue %dx.types.CBufRet.f32 %7422, 3
  %7429 = fadd fast float %7428, %7427
  %7430 = call float @dx.op.unary.f32(i32 7, float %7429)  ; Saturate(value)
  %7431 = fmul fast float %7426, %7410
  %7432 = fmul fast float %7431, %7430
  br label %7433

; <label>:7433                                    ; preds = %7394, %7313, %7148, %7130, %7128
  %7434 = phi float [ %7157, %7148 ], [ %7316, %7313 ], [ %7398, %7394 ], [ 0.000000e+00, %7128 ], [ 0.000000e+00, %7130 ]
  %7435 = phi float [ %7191, %7148 ], [ %7350, %7313 ], [ %7432, %7394 ], [ 0.000000e+00, %7128 ], [ 0.000000e+00, %7130 ]
  %7436 = phi float [ %7178, %7148 ], [ %7337, %7313 ], [ %7419, %7394 ], [ 0.000000e+00, %7128 ], [ 0.000000e+00, %7130 ]
  %7437 = phi float [ %7179, %7148 ], [ %7338, %7313 ], [ %7420, %7394 ], [ 0.000000e+00, %7128 ], [ 0.000000e+00, %7130 ]
  %7438 = phi float [ %7180, %7148 ], [ %7339, %7313 ], [ %7421, %7394 ], [ 0.000000e+00, %7128 ], [ 0.000000e+00, %7130 ]
  %7439 = fmul fast float %7071, %7435
  %7440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7441 = extractvalue %dx.types.CBufRet.f32 %7440, 2
  %7442 = fsub fast float %7078, %7441
  %7443 = fcmp fast olt float %7439, -2.000000e+01
  %7444 = call float @dx.op.unary.f32(i32 21, float %7439)  ; Exp(value)
  %7445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7446 = extractvalue %dx.types.CBufRet.f32 %7445, 2
  %7447 = extractvalue %dx.types.CBufRet.f32 %7445, 3
  %7448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7449 = extractvalue %dx.types.CBufRet.f32 %7448, 2
  %7450 = fmul fast float %7447, %7442
  %7451 = call float @dx.op.unary.f32(i32 7, float %7450)  ; Saturate(value)
  %7452 = fsub fast float 1.000000e+00, %7451
  %7453 = fmul fast float %7063, 5.000000e-01
  %7454 = fadd fast float %7453, 5.000000e-01
  %7455 = call float @dx.op.unary.f32(i32 7, float %7454)  ; Saturate(value)
  %7456 = fsub fast float 1.000000e+00, %7455
  %7457 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7452)  ; FMax(a,b)
  %7458 = fdiv fast float %7456, %7457
  %7459 = fsub fast float %7442, %7020
  %7460 = call float @dx.op.unary.f32(i32 6, float %7459)  ; FAbs(value)
  %7461 = fmul fast float %7460, %7446
  %7462 = call float @dx.op.unary.f32(i32 7, float %7458)  ; Saturate(value)
  %7463 = fsub fast float 1.000000e+00, %7461
  %7464 = fmul fast float %7463, %7462
  %7465 = fadd fast float %7464, %7461
  %7466 = fmul fast float %7449, %7442
  %7467 = call float @dx.op.unary.f32(i32 7, float %7466)  ; Saturate(value)
  %7468 = fsub fast float 1.000000e+00, %7465
  %7469 = fmul fast float %7468, %7467
  %7470 = fadd fast float %7469, %7465
  %7471 = call float @dx.op.unary.f32(i32 7, float %7470)  ; Saturate(value)
  %7472 = fadd fast float %7444, -1.000000e+00
  %7473 = select i1 %7443, float -1.000000e+00, float %7472
  %7474 = fmul fast float %7471, %7473
  %7475 = fadd fast float %7474, 1.000000e+00
  %7476 = fsub fast float -0.000000e+00, %7474
  %7477 = fmul fast float %7436, %7476
  %7478 = fmul fast float %7437, %7476
  %7479 = fmul fast float %7438, %7476
  br label %7480

; <label>:7480                                    ; preds = %7433, %7029
  %7481 = phi float [ %7434, %7433 ], [ 0.000000e+00, %7029 ]
  %7482 = phi float [ %7475, %7433 ], [ 1.000000e+00, %7029 ]
  %7483 = phi float [ %7477, %7433 ], [ 0.000000e+00, %7029 ]
  %7484 = phi float [ %7478, %7433 ], [ 0.000000e+00, %7029 ]
  %7485 = phi float [ %7479, %7433 ], [ 0.000000e+00, %7029 ]
  %7486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7487 = extractvalue %dx.types.CBufRet.f32 %7486, 1
  %7488 = fsub fast float 1.000000e+00, %7482
  %7489 = fmul fast float %7488, %7064
  %7490 = fmul fast float %7489, %7487
  %7491 = fsub fast float %7064, %7490
  br i1 %7057, label %7492, label %7521, !dx.controlflow.hints !155

; <label>:7492                                    ; preds = %7480
  %7493 = fmul fast float %7065, %7054
  %7494 = fadd fast float %7493, %7055
  %7495 = call float @dx.op.unary.f32(i32 7, float %7494)  ; Saturate(value)
  %7496 = fmul fast float %7036, %7491
  %7497 = fsub fast float -0.000000e+00, %7496
  %7498 = fmul fast float %7037, %7491
  %7499 = fsub fast float -0.000000e+00, %7498
  %7500 = call float @dx.op.unary.f32(i32 21, float %7497)  ; Exp(value)
  %7501 = call float @dx.op.unary.f32(i32 21, float %7499)  ; Exp(value)
  %7502 = call float @dx.op.binary.f32(i32 35, float %7044, float %7500)  ; FMax(a,b)
  %7503 = call float @dx.op.binary.f32(i32 35, float %7044, float %7501)  ; FMax(a,b)
  %7504 = fsub fast float %7503, %7502
  %7505 = fmul fast float %7504, %7495
  %7506 = fadd fast float %7505, %7502
  %7507 = call float @dx.op.unary.f32(i32 7, float %7506)  ; Saturate(value)
  %7508 = fsub fast float %7041, %7046
  %7509 = fsub fast float %7042, %7047
  %7510 = fsub fast float %7043, %7048
  %7511 = fmul fast float %7495, %7508
  %7512 = fmul fast float %7495, %7509
  %7513 = fmul fast float %7495, %7510
  %7514 = fadd fast float %7511, %7046
  %7515 = fadd fast float %7512, %7047
  %7516 = fadd fast float %7513, %7048
  %7517 = fsub fast float 1.000000e+00, %7507
  %7518 = fmul fast float %7517, %7514
  %7519 = fmul fast float %7517, %7515
  %7520 = fmul fast float %7517, %7516
  br label %7580

; <label>:7521                                    ; preds = %7480
  %7522 = fmul fast float %7491, %7053
  %7523 = call float @dx.op.unary.f32(i32 7, float %7522)  ; Saturate(value)
  %7524 = fsub fast float 2.000000e+00, %7523
  %7525 = fmul fast float %7523, 9.921875e-01
  %7526 = fmul fast float %7525, %7524
  %7527 = fadd fast float %7526, 3.906250e-03
  %7528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %7527, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7529 = extractvalue %dx.types.ResRet.f32 %7528, 0
  %7530 = fsub fast float %7523, %7529
  %7531 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7530)  ; FMax(a,b)
  %7532 = fmul fast float %7039, %7020
  %7533 = call float @dx.op.unary.f32(i32 6, float %7532)  ; FAbs(value)
  %7534 = fcmp fast ogt float %7533, 0x3EB0C6F7A0000000
  br i1 %7534, label %7535, label %7541, !dx.controlflow.hints !156

; <label>:7535                                    ; preds = %7521
  %7536 = fmul fast float %7532, 0xBFF7154760000000
  %7537 = call float @dx.op.unary.f32(i32 21, float %7536)  ; Exp(value)
  %7538 = fsub fast float 1.000000e+00, %7537
  %7539 = fdiv fast float %7538, %7532
  %7540 = fmul fast float %7539, %7049
  br label %7541

; <label>:7541                                    ; preds = %7535, %7521
  %7542 = phi float [ %7540, %7535 ], [ %7049, %7521 ]
  %7543 = fadd fast float %7542, %7051
  %7544 = fmul fast float %7543, %7531
  %7545 = fmul fast float %7036, %7544
  %7546 = fsub fast float -0.000000e+00, %7545
  %7547 = fmul fast float %7037, %7544
  %7548 = fsub fast float -0.000000e+00, %7547
  %7549 = fmul fast float %7038, %7544
  %7550 = fsub fast float -0.000000e+00, %7549
  %7551 = call float @dx.op.unary.f32(i32 21, float %7546)  ; Exp(value)
  %7552 = call float @dx.op.unary.f32(i32 21, float %7548)  ; Exp(value)
  %7553 = call float @dx.op.unary.f32(i32 21, float %7550)  ; Exp(value)
  %7554 = fmul fast float %7065, %7065
  %7555 = fadd fast float %7554, 1.000000e+00
  %7556 = fmul fast float %7555, 0x3FAE8EC8A0000000
  %7557 = fmul fast float %7556, %7046
  %7558 = fmul fast float %7556, %7047
  %7559 = fmul fast float %7556, %7048
  %7560 = fmul fast float %7065, %7044
  %7561 = fsub fast float 1.000000e+00, %7560
  %7562 = fmul fast float %7044, %7044
  %7563 = fsub fast float 1.000000e+00, %7562
  %7564 = fmul fast float %7563, 0x3FB45F3060000000
  %7565 = fmul fast float %7561, %7561
  %7566 = fdiv fast float 1.000000e+00, %7565
  %7567 = fmul fast float %7564, %7566
  %7568 = fmul fast float %7567, %7041
  %7569 = fmul fast float %7567, %7042
  %7570 = fmul fast float %7567, %7043
  %7571 = fadd fast float %7568, %7557
  %7572 = fadd fast float %7569, %7558
  %7573 = fadd fast float %7570, %7559
  %7574 = fsub fast float 1.000000e+00, %7551
  %7575 = fsub fast float 1.000000e+00, %7552
  %7576 = fsub fast float 1.000000e+00, %7553
  %7577 = fmul fast float %7571, %7574
  %7578 = fmul fast float %7572, %7575
  %7579 = fmul fast float %7573, %7576
  br label %7580

; <label>:7580                                    ; preds = %7541, %7492
  %7581 = phi float [ %7518, %7492 ], [ %7577, %7541 ]
  %7582 = phi float [ %7519, %7492 ], [ %7578, %7541 ]
  %7583 = phi float [ %7520, %7492 ], [ %7579, %7541 ]
  %7584 = phi float [ %7507, %7492 ], [ %7551, %7541 ]
  %7585 = phi float [ %7507, %7492 ], [ %7552, %7541 ]
  %7586 = phi float [ %7507, %7492 ], [ %7553, %7541 ]
  br i1 %7073, label %7587, label %7785, !dx.controlflow.hints !157

; <label>:7587                                    ; preds = %7580
  %7588 = extractvalue %dx.types.CBufRet.f32 %7486, 0
  %7589 = fmul fast float %7588, %7488
  %7590 = fsub fast float %7483, %7581
  %7591 = fsub fast float %7484, %7582
  %7592 = fsub fast float %7485, %7583
  %7593 = fmul fast float %7589, %7590
  %7594 = fmul fast float %7589, %7591
  %7595 = fmul fast float %7589, %7592
  %7596 = fadd fast float %7593, %7581
  %7597 = fadd fast float %7594, %7582
  %7598 = fadd fast float %7595, %7583
  %7599 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7584)  ; FMax(a,b)
  %7600 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7585)  ; FMax(a,b)
  %7601 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7586)  ; FMax(a,b)
  %7602 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7482)  ; FMax(a,b)
  %7603 = call float @dx.op.binary.f32(i32 35, float %7481, float %7491)  ; FMax(a,b)
  %7604 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7603)  ; FMax(a,b)
  %7605 = fdiv fast float %7481, %7604
  %7606 = call float @dx.op.unary.f32(i32 7, float %7605)  ; Saturate(value)
  %7607 = fdiv fast float %7491, %7604
  %7608 = call float @dx.op.unary.f32(i32 7, float %7607)  ; Saturate(value)
  %7609 = fcmp fast une float %7602, 1.000000e+00
  br i1 %7609, label %7610, label %7623, !dx.controlflow.hints !158

; <label>:7610                                    ; preds = %7587
  %7611 = call float @dx.op.unary.f32(i32 23, float %7602)  ; Log(value)
  %7612 = fmul fast float %7611, 0x3FE62E4300000000
  %7613 = fmul fast float %7483, %7612
  %7614 = fsub fast float -0.000000e+00, %7613
  %7615 = fmul fast float %7484, %7612
  %7616 = fsub fast float -0.000000e+00, %7615
  %7617 = fmul fast float %7485, %7612
  %7618 = fsub fast float -0.000000e+00, %7617
  %7619 = fsub fast float 1.000000e+00, %7602
  %7620 = fdiv fast float %7614, %7619
  %7621 = fdiv fast float %7616, %7619
  %7622 = fdiv fast float %7618, %7619
  br label %7623

; <label>:7623                                    ; preds = %7610, %7587
  %7624 = phi float [ %7620, %7610 ], [ %7483, %7587 ]
  %7625 = phi float [ %7621, %7610 ], [ %7484, %7587 ]
  %7626 = phi float [ %7622, %7610 ], [ %7485, %7587 ]
  %7627 = phi float [ %7612, %7610 ], [ 0.000000e+00, %7587 ]
  %7628 = fcmp fast une float %7599, 1.000000e+00
  br i1 %7628, label %7629, label %7636, !dx.controlflow.hints !159

; <label>:7629                                    ; preds = %7623
  %7630 = call float @dx.op.unary.f32(i32 23, float %7599)  ; Log(value)
  %7631 = fmul fast float %7630, 0x3FE62E4300000000
  %7632 = fmul fast float %7596, %7631
  %7633 = fsub fast float -0.000000e+00, %7632
  %7634 = fsub fast float 1.000000e+00, %7599
  %7635 = fdiv fast float %7633, %7634
  br label %7636

; <label>:7636                                    ; preds = %7629, %7623
  %7637 = phi float [ %7635, %7629 ], [ %7596, %7623 ]
  %7638 = phi float [ %7631, %7629 ], [ 0.000000e+00, %7623 ]
  %7639 = fcmp fast une float %7600, 1.000000e+00
  br i1 %7639, label %7640, label %7647, !dx.controlflow.hints !159

; <label>:7640                                    ; preds = %7636
  %7641 = call float @dx.op.unary.f32(i32 23, float %7600)  ; Log(value)
  %7642 = fmul fast float %7641, 0x3FE62E4300000000
  %7643 = fmul fast float %7597, %7642
  %7644 = fsub fast float -0.000000e+00, %7643
  %7645 = fsub fast float 1.000000e+00, %7600
  %7646 = fdiv fast float %7644, %7645
  br label %7647

; <label>:7647                                    ; preds = %7640, %7636
  %7648 = phi float [ %7646, %7640 ], [ %7597, %7636 ]
  %7649 = phi float [ %7642, %7640 ], [ 0.000000e+00, %7636 ]
  %7650 = fcmp fast une float %7601, 1.000000e+00
  br i1 %7650, label %7651, label %7658, !dx.controlflow.hints !159

; <label>:7651                                    ; preds = %7647
  %7652 = call float @dx.op.unary.f32(i32 23, float %7601)  ; Log(value)
  %7653 = fmul fast float %7652, 0x3FE62E4300000000
  %7654 = fmul fast float %7598, %7653
  %7655 = fsub fast float -0.000000e+00, %7654
  %7656 = fsub fast float 1.000000e+00, %7601
  %7657 = fdiv fast float %7655, %7656
  br label %7658

; <label>:7658                                    ; preds = %7651, %7647
  %7659 = phi float [ %7657, %7651 ], [ %7598, %7647 ]
  %7660 = phi float [ %7653, %7651 ], [ 0.000000e+00, %7647 ]
  %7661 = fmul fast float %7624, %7608
  %7662 = fmul fast float %7625, %7608
  %7663 = fmul fast float %7626, %7608
  %7664 = fmul fast float %7627, %7608
  %7665 = fmul fast float %7637, %7606
  %7666 = fmul fast float %7648, %7606
  %7667 = fmul fast float %7659, %7606
  %7668 = fmul fast float %7638, %7606
  %7669 = fmul fast float %7649, %7606
  %7670 = fmul fast float %7660, %7606
  %7671 = fadd fast float %7665, %7661
  %7672 = fadd fast float %7666, %7662
  %7673 = fadd fast float %7667, %7663
  %7674 = fadd fast float %7668, %7664
  %7675 = fadd fast float %7669, %7664
  %7676 = fadd fast float %7670, %7664
  %7677 = fcmp fast une float %7674, 0.000000e+00
  br i1 %7677, label %7678, label %7685, !dx.controlflow.hints !160

; <label>:7678                                    ; preds = %7658
  %7679 = fmul fast float %7674, 0x3FF7154760000000
  %7680 = call float @dx.op.unary.f32(i32 21, float %7679)  ; Exp(value)
  %7681 = fsub fast float 1.000000e+00, %7680
  %7682 = fmul fast float %7671, %7681
  %7683 = fsub fast float -0.000000e+00, %7682
  %7684 = fdiv fast float %7683, %7674
  br label %7685

; <label>:7685                                    ; preds = %7678, %7658
  %7686 = phi float [ %7680, %7678 ], [ 1.000000e+00, %7658 ]
  %7687 = phi float [ %7684, %7678 ], [ %7671, %7658 ]
  %7688 = fcmp fast une float %7675, 0.000000e+00
  br i1 %7688, label %7689, label %7696, !dx.controlflow.hints !160

; <label>:7689                                    ; preds = %7685
  %7690 = fmul fast float %7675, 0x3FF7154760000000
  %7691 = call float @dx.op.unary.f32(i32 21, float %7690)  ; Exp(value)
  %7692 = fsub fast float 1.000000e+00, %7691
  %7693 = fmul fast float %7672, %7692
  %7694 = fsub fast float -0.000000e+00, %7693
  %7695 = fdiv fast float %7694, %7675
  br label %7696

; <label>:7696                                    ; preds = %7689, %7685
  %7697 = phi float [ %7691, %7689 ], [ 1.000000e+00, %7685 ]
  %7698 = phi float [ %7695, %7689 ], [ %7672, %7685 ]
  %7699 = fcmp fast une float %7676, 0.000000e+00
  br i1 %7699, label %7700, label %7707, !dx.controlflow.hints !160

; <label>:7700                                    ; preds = %7696
  %7701 = fmul fast float %7676, 0x3FF7154760000000
  %7702 = call float @dx.op.unary.f32(i32 21, float %7701)  ; Exp(value)
  %7703 = fsub fast float 1.000000e+00, %7702
  %7704 = fmul fast float %7673, %7703
  %7705 = fsub fast float -0.000000e+00, %7704
  %7706 = fdiv fast float %7705, %7676
  br label %7707

; <label>:7707                                    ; preds = %7700, %7696
  %7708 = phi float [ %7702, %7700 ], [ 1.000000e+00, %7696 ]
  %7709 = phi float [ %7706, %7700 ], [ %7673, %7696 ]
  %7710 = fcmp fast ogt float %7606, %7608
  br i1 %7710, label %7711, label %7731

; <label>:7711                                    ; preds = %7707
  %7712 = fsub fast float 1.000000e+00, %7608
  %7713 = fmul fast float %7624, %7712
  %7714 = fmul fast float %7625, %7712
  %7715 = fmul fast float %7626, %7712
  %7716 = fmul fast float %7627, %7712
  %7717 = fcmp fast une float %7716, 0.000000e+00
  br i1 %7717, label %7718, label %7769, !dx.controlflow.hints !161

; <label>:7718                                    ; preds = %7711
  %7719 = fmul fast float %7716, 0x3FF7154760000000
  %7720 = call float @dx.op.unary.f32(i32 21, float %7719)  ; Exp(value)
  %7721 = fsub fast float 1.000000e+00, %7720
  %7722 = fmul fast float %7713, %7721
  %7723 = fsub fast float -0.000000e+00, %7722
  %7724 = fmul fast float %7714, %7721
  %7725 = fsub fast float -0.000000e+00, %7724
  %7726 = fmul fast float %7715, %7721
  %7727 = fsub fast float -0.000000e+00, %7726
  %7728 = fdiv fast float %7723, %7716
  %7729 = fdiv fast float %7725, %7716
  %7730 = fdiv fast float %7727, %7716
  br label %7769

; <label>:7731                                    ; preds = %7707
  %7732 = fsub fast float 1.000000e+00, %7606
  %7733 = fmul fast float %7637, %7732
  %7734 = fmul fast float %7648, %7732
  %7735 = fmul fast float %7659, %7732
  %7736 = fmul fast float %7638, %7732
  %7737 = fmul fast float %7649, %7732
  %7738 = fmul fast float %7660, %7732
  %7739 = fcmp fast une float %7736, 0.000000e+00
  br i1 %7739, label %7740, label %7747, !dx.controlflow.hints !160

; <label>:7740                                    ; preds = %7731
  %7741 = fmul fast float %7736, 0x3FF7154760000000
  %7742 = call float @dx.op.unary.f32(i32 21, float %7741)  ; Exp(value)
  %7743 = fsub fast float 1.000000e+00, %7742
  %7744 = fmul fast float %7733, %7743
  %7745 = fsub fast float -0.000000e+00, %7744
  %7746 = fdiv fast float %7745, %7736
  br label %7747

; <label>:7747                                    ; preds = %7740, %7731
  %7748 = phi float [ %7746, %7740 ], [ %7733, %7731 ]
  %7749 = phi float [ %7742, %7740 ], [ 1.000000e+00, %7731 ]
  %7750 = fcmp fast une float %7737, 0.000000e+00
  br i1 %7750, label %7751, label %7758, !dx.controlflow.hints !160

; <label>:7751                                    ; preds = %7747
  %7752 = fmul fast float %7737, 0x3FF7154760000000
  %7753 = call float @dx.op.unary.f32(i32 21, float %7752)  ; Exp(value)
  %7754 = fsub fast float 1.000000e+00, %7753
  %7755 = fmul fast float %7734, %7754
  %7756 = fsub fast float -0.000000e+00, %7755
  %7757 = fdiv fast float %7756, %7737
  br label %7758

; <label>:7758                                    ; preds = %7751, %7747
  %7759 = phi float [ %7757, %7751 ], [ %7734, %7747 ]
  %7760 = phi float [ %7753, %7751 ], [ 1.000000e+00, %7747 ]
  %7761 = fcmp fast une float %7738, 0.000000e+00
  br i1 %7761, label %7762, label %7769, !dx.controlflow.hints !160

; <label>:7762                                    ; preds = %7758
  %7763 = fmul fast float %7738, 0x3FF7154760000000
  %7764 = call float @dx.op.unary.f32(i32 21, float %7763)  ; Exp(value)
  %7765 = fsub fast float 1.000000e+00, %7764
  %7766 = fmul fast float %7735, %7765
  %7767 = fsub fast float -0.000000e+00, %7766
  %7768 = fdiv fast float %7767, %7738
  br label %7769

; <label>:7769                                    ; preds = %7762, %7758, %7718, %7711
  %7770 = phi float [ %7768, %7762 ], [ %7730, %7718 ], [ %7715, %7711 ], [ %7735, %7758 ]
  %7771 = phi float [ %7759, %7762 ], [ %7729, %7718 ], [ %7714, %7711 ], [ %7759, %7758 ]
  %7772 = phi float [ %7748, %7762 ], [ %7728, %7718 ], [ %7713, %7711 ], [ %7748, %7758 ]
  %7773 = phi float [ %7764, %7762 ], [ %7720, %7718 ], [ 1.000000e+00, %7711 ], [ 1.000000e+00, %7758 ]
  %7774 = phi float [ %7760, %7762 ], [ %7720, %7718 ], [ 1.000000e+00, %7711 ], [ %7760, %7758 ]
  %7775 = phi float [ %7749, %7762 ], [ %7720, %7718 ], [ 1.000000e+00, %7711 ], [ %7749, %7758 ]
  %7776 = fmul fast float %7775, %7687
  %7777 = fmul fast float %7774, %7698
  %7778 = fmul fast float %7773, %7709
  %7779 = fadd fast float %7776, %7772
  %7780 = fadd fast float %7777, %7771
  %7781 = fadd fast float %7778, %7770
  %7782 = fmul fast float %7775, %7686
  %7783 = fmul fast float %7774, %7697
  %7784 = fmul fast float %7773, %7708
  br label %7785

; <label>:7785                                    ; preds = %7769, %7580
  %7786 = phi float [ %7784, %7769 ], [ %7586, %7580 ]
  %7787 = phi float [ %7783, %7769 ], [ %7585, %7580 ]
  %7788 = phi float [ %7782, %7769 ], [ %7584, %7580 ]
  %7789 = phi float [ %7781, %7769 ], [ %7583, %7580 ]
  %7790 = phi float [ %7780, %7769 ], [ %7582, %7580 ]
  %7791 = phi float [ %7779, %7769 ], [ %7581, %7580 ]
  %7792 = fmul fast float %7791, %6737
  %7793 = fmul fast float %7790, %6737
  %7794 = fmul fast float %7789, %6737
  %7795 = fmul fast float %7788, %7028
  %7796 = call float @dx.op.dot3.f32(i32 55, float %7788, float %7787, float %7786, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7797 = call float @dx.op.dot3.f32(i32 55, float %7792, float %7793, float %7794, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7798 = select i1 %216, float %7796, float %7788
  %7799 = select i1 %216, float %7796, float %7787
  %7800 = select i1 %216, float 1.000000e+00, float %7786
  %7801 = select i1 %216, float %7797, float %7792
  %7802 = select i1 %216, float 0.000000e+00, float %7793
  %7803 = select i1 %216, float 0.000000e+00, float %7794
  %7804 = fmul fast float %7798, %7022
  %7805 = fmul fast float %7799, %7023
  %7806 = fmul fast float %7800, %7024
  %7807 = fadd fast float %7804, %7801
  %7808 = fadd fast float %7805, %7802
  %7809 = fadd fast float %7803, %7806
  %7810 = fmul fast float %7798, %7025
  %7811 = fmul fast float %7799, %7026
  %7812 = fmul fast float %7800, %7027
  %7813 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7814 = extractvalue %dx.types.CBufRet.i32 %7813, 0
  %7815 = icmp eq i32 %7814, 0
  br i1 %7815, label %8183, label %7816, !dx.controlflow.hints !162

; <label>:7816                                    ; preds = %7785
  %7817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7818 = extractvalue %dx.types.CBufRet.f32 %7817, 2
  %7819 = extractvalue %dx.types.CBufRet.f32 %7817, 3
  %7820 = fmul fast float %7818, %92
  %7821 = fmul fast float %7819, %93
  %7822 = fmul fast float %7820, 2.000000e+00
  %7823 = fmul fast float %7821, 2.000000e+00
  %7824 = fsub fast float 1.000000e+00, %7822
  %7825 = fsub fast float 1.000000e+00, %7823
  %7826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7827 = extractvalue %dx.types.CBufRet.f32 %7826, 0
  %7828 = extractvalue %dx.types.CBufRet.f32 %7826, 1
  %7829 = extractvalue %dx.types.CBufRet.f32 %7826, 2
  %7830 = fmul fast float %7824, %7827
  %7831 = fmul fast float %7824, %7828
  %7832 = fmul fast float %7824, %7829
  %7833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7834 = extractvalue %dx.types.CBufRet.f32 %7833, 0
  %7835 = extractvalue %dx.types.CBufRet.f32 %7833, 1
  %7836 = extractvalue %dx.types.CBufRet.f32 %7833, 2
  %7837 = fmul fast float %7825, %7834
  %7838 = fmul fast float %7825, %7835
  %7839 = fmul fast float %7825, %7836
  %7840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7841 = extractvalue %dx.types.CBufRet.f32 %7840, 0
  %7842 = extractvalue %dx.types.CBufRet.f32 %7840, 1
  %7843 = extractvalue %dx.types.CBufRet.f32 %7840, 2
  %7844 = fadd fast float %7837, %7841
  %7845 = fadd fast float %7844, %7830
  %7846 = fadd fast float %7838, %7842
  %7847 = fadd fast float %7846, %7831
  %7848 = fadd fast float %7839, %7843
  %7849 = fadd fast float %7848, %7832
  %7850 = fmul fast float %7845, %7021
  %7851 = fmul fast float %7847, %7021
  %7852 = fmul fast float %7849, %7021
  %7853 = fmul fast float %7850, %7850
  %7854 = fmul fast float %7851, %7851
  %7855 = fadd fast float %7853, %7854
  %7856 = fmul fast float %7852, %7852
  %7857 = fadd fast float %7855, %7856
  %7858 = call float @dx.op.unary.f32(i32 24, float %7857)  ; Sqrt(value)
  %7859 = extractvalue %dx.types.CBufRet.f32 %6748, 0
  %7860 = fsub fast float %7858, %7859
  %7861 = extractvalue %dx.types.CBufRet.f32 %6748, 2
  %7862 = fmul fast float %7860, %7861
  %7863 = call float @dx.op.unary.f32(i32 7, float %7862)  ; Saturate(value)
  %7864 = fadd fast float %7863, -5.000000e-01
  %7865 = fmul fast float %7864, 2.000000e+00
  %7866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7867 = extractvalue %dx.types.CBufRet.f32 %7866, 2
  %7868 = call float @dx.op.binary.f32(i32 36, float %7867, float %7865)  ; FMin(a,b)
  %7869 = fsub fast float -0.000000e+00, %7867
  %7870 = fcmp fast ogt float %7868, %7869
  br i1 %7870, label %7871, label %8183, !dx.controlflow.hints !163

; <label>:7871                                    ; preds = %7816
  %7872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7873 = extractvalue %dx.types.CBufRet.f32 %7872, 3
  %7874 = fcmp fast ogt float %7873, 0.000000e+00
  br i1 %7874, label %7875, label %7950, !dx.controlflow.hints !164

; <label>:7875                                    ; preds = %7871
  %7876 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %7877 = extractvalue %dx.types.Dimensions %7876, 0
  %7878 = sitofp i32 %7877 to float
  %7879 = extractvalue %dx.types.Dimensions %7876, 1
  %7880 = sitofp i32 %7879 to float
  %7881 = fmul fast float %7820, %7878
  %7882 = fmul fast float %7821, %7880
  %7883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7884 = extractvalue %dx.types.CBufRet.f32 %7883, 1
  %7885 = fsub fast float -0.000000e+00, %7884
  %7886 = fptoui float %7885 to i32
  %7887 = fptoui float %7881 to i32
  %7888 = fptoui float %7882 to i32
  %7889 = and i32 %7886, 31
  %7890 = lshr i32 %7887, %7889
  %7891 = lshr i32 %7888, %7889
  %7892 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %7886, i32 %7890, i32 %7891, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7893 = extractvalue %dx.types.ResRet.f32 %7892, 0
  %7894 = fcmp fast olt float %7893, -1.000000e+00
  %7895 = fcmp fast ogt float %7893, -1.000000e+00
  %7896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7897 = extractvalue %dx.types.CBufRet.f32 %7896, 1
  %7898 = select i1 %7895, float %7897, float 1.000000e+00
  %7899 = fadd fast float %7893, 1.000000e+00
  %7900 = fmul fast float %7898, %7899
  %7901 = call float @dx.op.unary.f32(i32 6, float %7900)  ; FAbs(value)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7896, 3
  %7903 = fcmp fast oge float %7901, %7902
  %7904 = select i1 %7903, float 0x4197782600000000, float %7901
  %7905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7906 = extractvalue %dx.types.CBufRet.f32 %7905, 0
  %7907 = extractvalue %dx.types.CBufRet.f32 %7905, 1
  %7908 = extractvalue %dx.types.CBufRet.f32 %7905, 2
  %7909 = select i1 %7894, float %7906, float %7827
  %7910 = select i1 %7894, float %7907, float %7828
  %7911 = select i1 %7894, float %7908, float %7829
  %7912 = fmul fast float %7909, %7824
  %7913 = fmul fast float %7910, %7824
  %7914 = fmul fast float %7911, %7824
  %7915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7916 = extractvalue %dx.types.CBufRet.f32 %7915, 0
  %7917 = extractvalue %dx.types.CBufRet.f32 %7915, 1
  %7918 = extractvalue %dx.types.CBufRet.f32 %7915, 2
  %7919 = select i1 %7894, float %7916, float %7834
  %7920 = select i1 %7894, float %7917, float %7835
  %7921 = select i1 %7894, float %7918, float %7836
  %7922 = fmul fast float %7919, %7825
  %7923 = fmul fast float %7920, %7825
  %7924 = fmul fast float %7921, %7825
  %7925 = fadd fast float %7922, %7912
  %7926 = fadd fast float %7923, %7913
  %7927 = fadd fast float %7924, %7914
  %7928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7929 = extractvalue %dx.types.CBufRet.f32 %7928, 0
  %7930 = extractvalue %dx.types.CBufRet.f32 %7928, 1
  %7931 = extractvalue %dx.types.CBufRet.f32 %7928, 2
  %7932 = select i1 %7894, float %7929, float %7841
  %7933 = select i1 %7894, float %7930, float %7842
  %7934 = select i1 %7894, float %7931, float %7843
  %7935 = fadd fast float %7925, %7932
  %7936 = fadd fast float %7926, %7933
  %7937 = fadd fast float %7927, %7934
  %7938 = fmul fast float %7935, %7904
  %7939 = fmul fast float %7936, %7904
  %7940 = fmul fast float %7937, %7904
  %7941 = fmul fast float %7938, %7938
  %7942 = fmul fast float %7939, %7939
  %7943 = fadd fast float %7941, %7942
  %7944 = fmul fast float %7940, %7940
  %7945 = fadd fast float %7943, %7944
  %7946 = call float @dx.op.unary.f32(i32 24, float %7945)  ; Sqrt(value)
  %7947 = fsub fast float %7946, %7859
  %7948 = fmul fast float %7947, %7861
  %7949 = call float @dx.op.unary.f32(i32 7, float %7948)  ; Saturate(value)
  br label %7950

; <label>:7950                                    ; preds = %7875, %7871
  %7951 = phi float [ %7949, %7875 ], [ 1.000000e+00, %7871 ]
  %7952 = fmul fast float %7868, 5.000000e-01
  %7953 = fadd fast float %7952, 5.000000e-01
  %7954 = call float @dx.op.unary.f32(i32 22, float %7953)  ; Frc(value)
  %7955 = call float @dx.op.unary.f32(i32 27, float %7954)  ; Round_ni(value)
  %7956 = call float @dx.op.unary.f32(i32 22, float %7954)  ; Frc(value)
  %7957 = fmul fast float %7956, 2.000000e+00
  %7958 = fadd fast float %7957, -1.000000e+00
  %7959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %7820, float %7821, float %7955, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7960 = extractvalue %dx.types.ResRet.f32 %7959, 0
  %7961 = extractvalue %dx.types.ResRet.f32 %7959, 1
  %7962 = extractvalue %dx.types.ResRet.f32 %7959, 2
  %7963 = extractvalue %dx.types.ResRet.f32 %7959, 3
  %7964 = fadd fast float %7960, -5.000000e-01
  %7965 = fadd fast float %7962, -5.000000e-01
  %7966 = fmul fast float %7964, 0xBFD5555560000000
  %7967 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7965, float %7966)  ; FMad(a,b,c)
  %7968 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7961, float 0.000000e+00)  ; FMad(a,b,c)
  %7969 = fadd fast float %7968, %7963
  %7970 = fmul fast float %7964, -7.500000e-01
  %7971 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7965, float %7970)  ; FMad(a,b,c)
  %7972 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7961, float 0.000000e+00)  ; FMad(a,b,c)
  %7973 = fadd fast float %7972, %7963
  %7974 = call float @dx.op.binary.f32(i32 35, float %7967, float -1.000000e+00)  ; FMax(a,b)
  %7975 = call float @dx.op.binary.f32(i32 35, float %7969, float -1.000000e+00)  ; FMax(a,b)
  %7976 = call float @dx.op.binary.f32(i32 35, float %7971, float -1.000000e+00)  ; FMax(a,b)
  %7977 = call float @dx.op.binary.f32(i32 35, float %7973, float -1.000000e+00)  ; FMax(a,b)
  %7978 = call float @dx.op.binary.f32(i32 36, float %7974, float 1.000000e+00)  ; FMin(a,b)
  %7979 = call float @dx.op.binary.f32(i32 36, float %7975, float 1.000000e+00)  ; FMin(a,b)
  %7980 = call float @dx.op.binary.f32(i32 36, float %7976, float 1.000000e+00)  ; FMin(a,b)
  %7981 = call float @dx.op.binary.f32(i32 36, float %7977, float 1.000000e+00)  ; FMin(a,b)
  %7982 = fcmp fast olt float %7978, 0x3FEFFF8020000000
  br i1 %7982, label %7983, label %8098, !dx.controlflow.hints !165

; <label>:7983                                    ; preds = %7950
  %7984 = extractvalue %dx.types.CBufRet.f32 %7866, 3
  %7985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7986 = extractvalue %dx.types.CBufRet.f32 %7985, 0
  %7987 = extractvalue %dx.types.CBufRet.f32 %7985, 1
  %7988 = extractvalue %dx.types.CBufRet.f32 %7985, 2
  %7989 = extractvalue %dx.types.CBufRet.f32 %7985, 3
  %7990 = fsub fast float %7986, %7978
  %7991 = fsub fast float %7987, %7979
  %7992 = fsub fast float %7988, %7980
  %7993 = fsub fast float %7989, %7981
  %7994 = fmul fast float %7990, %7984
  %7995 = fmul fast float %7991, %7984
  %7996 = fmul fast float %7992, %7984
  %7997 = fmul fast float %7993, %7984
  %7998 = fadd fast float %7994, %7978
  %7999 = fadd fast float %7995, %7979
  %8000 = fsub fast float -0.000000e+00, %7999
  %8001 = fadd fast float %7996, %7980
  %8002 = fadd fast float %7997, %7981
  %8003 = fmul fast float %7998, %7998
  %8004 = fsub fast float %7999, %8003
  %8005 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8004)  ; FMax(a,b)
  %8006 = fdiv fast float 1.000000e+00, %8005
  %8007 = fmul fast float %7999, %7998
  %8008 = fsub fast float %8001, %8007
  %8009 = fsub fast float %7958, %7998
  %8010 = fmul fast float %7958, %7958
  %8011 = fsub fast float %8010, %7999
  %8012 = fmul fast float %8009, %8006
  %8013 = fmul fast float %8012, %8008
  %8014 = fsub fast float %8011, %8013
  %8015 = fmul fast float %7999, %7999
  %8016 = fsub fast float %8002, %8015
  %8017 = fmul fast float %8008, %8008
  %8018 = fmul fast float %8017, %8006
  %8019 = fsub fast float %8016, %8018
  %8020 = fdiv fast float %8014, %8019
  %8021 = fmul fast float %8008, %8020
  %8022 = fsub fast float %8009, %8021
  %8023 = fmul fast float %8022, %8006
  %8024 = fmul fast float %8023, %7998
  %8025 = fsub fast float 1.000000e+00, %8024
  %8026 = fmul fast float %7999, %8020
  %8027 = fsub fast float %8025, %8026
  %8028 = fmul fast float %8023, %8023
  %8029 = fmul fast float %8020, 4.000000e+00
  %8030 = fmul fast float %8029, %8027
  %8031 = fsub fast float %8028, %8030
  %8032 = call float @dx.op.unary.f32(i32 24, float %8031)  ; Sqrt(value)
  %8033 = fcmp fast oge float %8023, 0.000000e+00
  %8034 = fsub fast float -0.000000e+00, %8032
  %8035 = select i1 %8033, float %8034, float %8032
  %8036 = fsub fast float %8035, %8023
  %8037 = fdiv fast float %8036, %8020
  %8038 = fdiv fast float %8027, %8036
  %8039 = fmul fast float %8037, 5.000000e-01
  %8040 = fmul fast float %8038, 2.000000e+00
  %8041 = select i1 %8033, float %8039, float %8040
  %8042 = select i1 %8033, float %8040, float %8039
  %8043 = call float @dx.op.binary.f32(i32 35, float %8041, float %8042)  ; FMax(a,b)
  %8044 = call float @dx.op.binary.f32(i32 36, float %8041, float %8042)  ; FMin(a,b)
  %8045 = fcmp fast ogt float %7958, %8044
  br i1 %8045, label %8046, label %8056

; <label>:8046                                    ; preds = %7983
  %8047 = fsub fast float %7958, %8044
  %8048 = fsub fast float %8043, %8044
  %8049 = fmul fast float %8047, %8048
  %8050 = fmul fast float %8043, %7958
  %8051 = fadd fast float %8043, %7958
  %8052 = fmul fast float %8051, %7998
  %8053 = fadd fast float %8050, %7999
  %8054 = fsub fast float %8053, %8052
  %8055 = fdiv fast float %8054, %8049
  br label %8056

; <label>:8056                                    ; preds = %8046, %7983
  %8057 = phi float [ %8055, %8046 ], [ 0.000000e+00, %7983 ]
  %8058 = fcmp fast ogt float %7958, %8043
  %8059 = fsub fast float %7958, %8043
  br i1 %8058, label %8060, label %8070

; <label>:8060                                    ; preds = %8056
  %8061 = fsub fast float %8043, %8044
  %8062 = fmul fast float %8061, %8059
  %8063 = fmul fast float %8044, %7958
  %8064 = fadd fast float %8044, %7958
  %8065 = fmul fast float %8064, %7998
  %8066 = fsub fast float %8000, %8063
  %8067 = fadd fast float %8066, %8065
  %8068 = fdiv fast float %8067, %8062
  %8069 = fadd fast float %8068, %8057
  br label %8070

; <label>:8070                                    ; preds = %8060, %8056
  %8071 = phi float [ %8069, %8060 ], [ %8057, %8056 ]
  %8072 = fsub fast float %7958, %8044
  %8073 = fmul fast float %8072, %8059
  %8074 = fmul fast float %8044, %8043
  %8075 = fadd fast float %8044, %8043
  %8076 = fmul fast float %8075, %7998
  %8077 = fadd fast float %8074, %7999
  %8078 = fsub fast float %8077, %8076
  %8079 = fdiv fast float %8078, %8073
  %8080 = call float @dx.op.unary.f32(i32 7, float %8071)  ; Saturate(value)
  %8081 = fcmp fast oeq float %6749, 0.000000e+00
  %8082 = extractvalue %dx.types.CBufRet.f32 %7866, 0
  %8083 = fcmp fast oeq float %8082, 0.000000e+00
  %8084 = or i1 %8081, %8083
  %8085 = fmul fast float %8082, 2.000000e+00
  %8086 = fadd fast float %7867, %7868
  %8087 = fdiv fast float %8086, %8085
  %8088 = call float @dx.op.unary.f32(i32 7, float %8087)  ; Saturate(value)
  %8089 = fmul fast float %8088, 2.000000e+00
  %8090 = fsub fast float 3.000000e+00, %8089
  %8091 = fmul fast float %8088, %8088
  %8092 = fmul fast float %8091, %8090
  %8093 = select i1 %8084, float 1.000000e+00, float %8092
  %8094 = fmul fast float %8079, %6749
  %8095 = fadd fast float %8080, %8094
  %8096 = call float @dx.op.unary.f32(i32 7, float %8095)  ; Saturate(value)
  %8097 = fmul fast float %8093, %8096
  br label %8098

; <label>:8098                                    ; preds = %8070, %7950
  %8099 = phi float [ %8097, %8070 ], [ 0.000000e+00, %7950 ]
  %8100 = fsub fast float 1.000000e+00, %8099
  %8101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %7820, float %7821, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8102 = extractvalue %dx.types.ResRet.f32 %8101, 0
  %8103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8104 = extractvalue %dx.types.CBufRet.i32 %8103, 2
  %8105 = icmp eq i32 %8104, 0
  br i1 %8105, label %8111, label %8106

; <label>:8106                                    ; preds = %8098
  %8107 = call float @dx.op.unary.f32(i32 7, float %8099)  ; Saturate(value)
  %8108 = fadd fast float %8102, -1.000000e+00
  %8109 = fmul fast float %8107, %8108
  %8110 = fadd fast float %8109, 1.000000e+00
  br label %8111

; <label>:8111                                    ; preds = %8106, %8098
  %8112 = phi float [ %8110, %8106 ], [ %8100, %8098 ]
  br i1 %7874, label %8113, label %8131

; <label>:8113                                    ; preds = %8111
  %8114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8115 = extractvalue %dx.types.CBufRet.f32 %8114, 1
  %8116 = fsub fast float %7951, %8115
  %8117 = call float @dx.op.unary.f32(i32 7, float %8116)  ; Saturate(value)
  %8118 = fsub fast float %7951, %7873
  %8119 = call float @dx.op.unary.f32(i32 7, float %8118)  ; Saturate(value)
  %8120 = fsub fast float %8117, %8119
  %8121 = fsub fast float %7953, %8119
  %8122 = fdiv fast float %8121, %8120
  %8123 = call float @dx.op.unary.f32(i32 7, float %8122)  ; Saturate(value)
  %8124 = fmul fast float %8123, 2.000000e+00
  %8125 = fsub fast float 3.000000e+00, %8124
  %8126 = fsub fast float %8102, %8112
  %8127 = fmul fast float %8123, %8123
  %8128 = fmul fast float %8127, %8126
  %8129 = fmul fast float %8128, %8125
  %8130 = fadd fast float %8129, %8112
  br label %8131

; <label>:8131                                    ; preds = %8113, %8111
  %8132 = phi float [ %8130, %8113 ], [ %8112, %8111 ]
  %8133 = call float @dx.op.binary.f32(i32 35, float %8102, float %8132)  ; FMax(a,b)
  %8134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8135 = extractvalue %dx.types.CBufRet.i32 %8134, 2
  %8136 = and i32 %8135, 1
  %8137 = icmp eq i32 %8136, 0
  %8138 = fcmp fast une float %8133, 1.000000e+00
  %8139 = and i1 %8138, %8137
  br i1 %8139, label %8140, label %8159

; <label>:8140                                    ; preds = %8131
  %8141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %7820, float %7821, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8142 = extractvalue %dx.types.ResRet.f32 %8141, 0
  %8143 = extractvalue %dx.types.ResRet.f32 %8141, 1
  %8144 = extractvalue %dx.types.ResRet.f32 %8141, 2
  %8145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8146 = extractvalue %dx.types.CBufRet.f32 %8145, 1
  %8147 = fmul fast float %8146, %8142
  %8148 = fmul fast float %8146, %8143
  %8149 = fmul fast float %8146, %8144
  %8150 = fcmp fast ogt float %8102, 0x3FEFFF2E40000000
  %8151 = fsub fast float 1.000000e+00, %8133
  %8152 = fsub fast float 1.000000e+00, %8102
  %8153 = fdiv fast float %8151, %8152
  %8154 = call float @dx.op.unary.f32(i32 7, float %8153)  ; Saturate(value)
  %8155 = select i1 %8150, float 0.000000e+00, float %8154
  %8156 = fmul fast float %8147, %8155
  %8157 = fmul fast float %8148, %8155
  %8158 = fmul fast float %8149, %8155
  br label %8159

; <label>:8159                                    ; preds = %8140, %8131
  %8160 = phi float [ 0.000000e+00, %8131 ], [ %8156, %8140 ]
  %8161 = phi float [ 0.000000e+00, %8131 ], [ %8157, %8140 ]
  %8162 = phi float [ 0.000000e+00, %8131 ], [ %8158, %8140 ]
  %8163 = fmul fast float %8160, %6737
  %8164 = fmul fast float %8161, %6737
  %8165 = fmul fast float %8162, %6737
  %8166 = fmul fast float %8133, %7795
  %8167 = call float @dx.op.dot3.f32(i32 55, float %8133, float %8133, float %8133, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8168 = call float @dx.op.dot3.f32(i32 55, float %8163, float %8164, float %8165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8169 = select i1 %216, float %8167, float %8133
  %8170 = select i1 %216, float 1.000000e+00, float %8133
  %8171 = select i1 %216, float %8168, float %8163
  %8172 = select i1 %216, float 0.000000e+00, float %8164
  %8173 = select i1 %216, float 0.000000e+00, float %8165
  %8174 = fmul fast float %8169, %7807
  %8175 = fmul fast float %8169, %7808
  %8176 = fmul fast float %8170, %7809
  %8177 = fadd fast float %8174, %8171
  %8178 = fadd fast float %8175, %8172
  %8179 = fadd fast float %8173, %8176
  %8180 = fmul fast float %8169, %7810
  %8181 = fmul fast float %8169, %7811
  %8182 = fmul fast float %8170, %7812
  br label %8183

; <label>:8183                                    ; preds = %8159, %7816, %7785, %7017
  %8184 = phi float [ %7022, %7017 ], [ %7807, %7785 ], [ %8177, %8159 ], [ %7807, %7816 ]
  %8185 = phi float [ %7023, %7017 ], [ %7808, %7785 ], [ %8178, %8159 ], [ %7808, %7816 ]
  %8186 = phi float [ %7024, %7017 ], [ %7809, %7785 ], [ %8179, %8159 ], [ %7809, %7816 ]
  %8187 = phi float [ %7025, %7017 ], [ %7810, %7785 ], [ %8180, %8159 ], [ %7810, %7816 ]
  %8188 = phi float [ %7026, %7017 ], [ %7811, %7785 ], [ %8181, %8159 ], [ %7811, %7816 ]
  %8189 = phi float [ %7027, %7017 ], [ %7812, %7785 ], [ %8182, %8159 ], [ %7812, %7816 ]
  %8190 = phi float [ %7028, %7017 ], [ %7795, %7785 ], [ %8166, %8159 ], [ %7795, %7816 ]
  %8191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8192 = extractvalue %dx.types.CBufRet.f32 %8191, 2
  %8193 = extractvalue %dx.types.CBufRet.f32 %8191, 3
  %8194 = fmul fast float %8192, %92
  %8195 = fmul fast float %8193, %93
  %8196 = call float @dx.op.unary.f32(i32 7, float %8194)  ; Saturate(value)
  %8197 = call float @dx.op.unary.f32(i32 7, float %8195)  ; Saturate(value)
  %8198 = select i1 %6759, i32 2, i32 0
  %8199 = or i32 %8198, 1
  %8200 = uitofp i32 %8199 to float
  %8201 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8196, float %8197, float %8200, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8202 = extractvalue %dx.types.ResRet.f32 %8201, 0
  %8203 = extractvalue %dx.types.ResRet.f32 %8201, 1
  %8204 = extractvalue %dx.types.ResRet.f32 %8201, 2
  %8205 = extractvalue %dx.types.ResRet.f32 %8201, 3
  %8206 = add nuw nsw i32 %8198, 2
  %8207 = uitofp i32 %8206 to float
  %8208 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8196, float %8197, float %8207, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8209 = extractvalue %dx.types.ResRet.f32 %8208, 0
  %8210 = extractvalue %dx.types.ResRet.f32 %8208, 1
  %8211 = extractvalue %dx.types.ResRet.f32 %8208, 2
  %8212 = extractvalue %dx.types.ResRet.f32 %8208, 3
  %8213 = call float @dx.op.binary.f32(i32 35, float %8203, float %8204)  ; FMax(a,b)
  %8214 = call float @dx.op.binary.f32(i32 35, float %8202, float %8213)  ; FMax(a,b)
  %8215 = call float @dx.op.binary.f32(i32 35, float %8214, float %8205)  ; FMax(a,b)
  %8216 = call float @dx.op.binary.f32(i32 36, float %8210, float %8211)  ; FMin(a,b)
  %8217 = call float @dx.op.binary.f32(i32 36, float %8209, float %8216)  ; FMin(a,b)
  %8218 = call float @dx.op.binary.f32(i32 36, float %8217, float %8212)  ; FMin(a,b)
  %8219 = fmul fast float %8215, 2.550000e+02
  %8220 = fadd fast float %8219, 0x3F70101020000000
  %8221 = fptoui float %8220 to i32
  %8222 = fmul fast float %8218, 2.550000e+02
  %8223 = fadd fast float %8222, 0x3F70101020000000
  %8224 = fptoui float %8223 to i32
  %8225 = icmp ult i32 %8221, %8224
  br i1 %8225, label %8226, label %8395

; <label>:8226                                    ; preds = %8183
  %8227 = fcmp fast ogt float %79, 9.843750e-01
  %8228 = fadd fast float %7021, -4.000000e+00
  %8229 = select i1 %8227, float -4.000000e+00, float %8228
  %8230 = call float @dx.op.binary.f32(i32 35, float %8229, float 0.000000e+00)  ; FMax(a,b)
  %8231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8232 = extractvalue %dx.types.CBufRet.f32 %8231, 0
  %8233 = fadd fast float %8232, %8230
  %8234 = extractvalue %dx.types.CBufRet.f32 %8231, 2
  %8235 = fmul fast float %8233, %8234
  %8236 = call float @dx.op.unary.f32(i32 23, float %8235)  ; Log(value)
  %8237 = extractvalue %dx.types.CBufRet.f32 %8231, 3
  %8238 = fmul fast float %8237, %8236
  %8239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8240 = extractvalue %dx.types.CBufRet.f32 %8239, 2
  %8241 = fmul fast float %8238, %8240
  %8242 = call float @dx.op.unary.f32(i32 7, float %8241)  ; Saturate(value)
  %8243 = uitofp i32 %8221 to float
  %8244 = uitofp i32 %8224 to float
  %8245 = fadd fast float %8243, 5.000000e-01
  %8246 = fadd fast float %8244, 5.000000e-01
  %8247 = fmul fast float %8240, %8245
  %8248 = fmul fast float %8240, %8246
  %8249 = fadd fast float %8247, 0x3F0FFB4800000000
  %8250 = fadd fast float %8248, 0xBF0FFB4800000000
  %8251 = call float @dx.op.binary.f32(i32 35, float %8242, float %8249)  ; FMax(a,b)
  %8252 = call float @dx.op.binary.f32(i32 36, float %8251, float %8250)  ; FMin(a,b)
  %8253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8254 = extractvalue %dx.types.CBufRet.f32 %8253, 1
  %8255 = extractvalue %dx.types.CBufRet.f32 %8253, 2
  %8256 = extractvalue %dx.types.CBufRet.f32 %8253, 0
  %8257 = select i1 %6759, float %8256, float 0.000000e+00
  %8258 = fmul fast float %8254, %8252
  %8259 = fadd fast float %8257, %8258
  %8260 = fadd fast float %8257, %8255
  %8261 = fsub fast float %8254, %8255
  %8262 = fadd fast float %8261, %8257
  %8263 = call float @dx.op.binary.f32(i32 35, float %8259, float %8260)  ; FMax(a,b)
  %8264 = call float @dx.op.binary.f32(i32 36, float %8263, float %8262)  ; FMin(a,b)
  %8265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %8196, float %8197, float %8264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8266 = extractvalue %dx.types.ResRet.f32 %8265, 0
  %8267 = extractvalue %dx.types.ResRet.f32 %8265, 1
  %8268 = extractvalue %dx.types.ResRet.f32 %8265, 2
  %8269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8270 = extractvalue %dx.types.CBufRet.i32 %8269, 0
  %8271 = extractvalue %dx.types.CBufRet.i32 %8269, 1
  %8272 = uitofp i32 %8270 to float
  %8273 = uitofp i32 %8271 to float
  %8274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8275 = extractvalue %dx.types.CBufRet.f32 %8274, 0
  %8276 = extractvalue %dx.types.CBufRet.f32 %8274, 1
  %8277 = fmul fast float %8272, %8196
  %8278 = fmul fast float %8273, %8197
  %8279 = fadd fast float %8277, -5.000000e-01
  %8280 = fadd fast float %8278, -5.000000e-01
  %8281 = call float @dx.op.unary.f32(i32 22, float %8279)  ; Frc(value)
  %8282 = call float @dx.op.unary.f32(i32 22, float %8280)  ; Frc(value)
  %8283 = fmul fast float %8281, %8281
  %8284 = fmul fast float %8283, %8281
  %8285 = fsub fast float 3.000000e+00, %8281
  %8286 = fmul fast float %8283, %8285
  %8287 = fmul fast float %8281, 3.000000e+00
  %8288 = fmul fast float %8284, 3.000000e+00
  %8289 = fmul fast float %8283, 6.000000e+00
  %8290 = fsub fast float %8288, %8289
  %8291 = fadd fast float %8290, 4.000000e+00
  %8292 = fmul fast float %8291, 0x3FC5555560000000
  %8293 = fmul fast float %8284, -3.000000e+00
  %8294 = fadd fast float %8283, %8281
  %8295 = fmul fast float %8294, 3.000000e+00
  %8296 = fadd fast float %8293, 1.000000e+00
  %8297 = fadd fast float %8296, %8295
  %8298 = fmul fast float %8284, 0x3FC5555560000000
  %8299 = fmul fast float %8282, %8282
  %8300 = fmul fast float %8299, %8282
  %8301 = fsub fast float 3.000000e+00, %8282
  %8302 = fmul fast float %8299, %8301
  %8303 = fmul fast float %8282, 3.000000e+00
  %8304 = fmul fast float %8300, 3.000000e+00
  %8305 = fmul fast float %8299, 6.000000e+00
  %8306 = fsub fast float %8304, %8305
  %8307 = fadd fast float %8306, 4.000000e+00
  %8308 = fmul fast float %8307, 0x3FC5555560000000
  %8309 = fmul fast float %8300, -3.000000e+00
  %8310 = fadd fast float %8299, %8282
  %8311 = fmul fast float %8310, 3.000000e+00
  %8312 = fadd fast float %8309, 1.000000e+00
  %8313 = fadd fast float %8312, %8311
  %8314 = fmul fast float %8300, 0x3FC5555560000000
  %8315 = fadd fast float %8281, 1.000000e+00
  %8316 = fsub fast float 1.000000e+00, %8287
  %8317 = fadd fast float %8316, %8286
  %8318 = fadd fast float %8317, %8291
  %8319 = fmul fast float %8318, 0x3FC5555560000000
  %8320 = fdiv fast float %8292, %8319
  %8321 = fsub fast float %8315, %8320
  %8322 = fsub fast float 1.000000e+00, %8281
  %8323 = fadd fast float %8297, %8284
  %8324 = fmul fast float %8323, 0x3FC5555560000000
  %8325 = fdiv fast float %8298, %8324
  %8326 = fadd fast float %8322, %8325
  %8327 = fadd fast float %8282, 1.000000e+00
  %8328 = fsub fast float 1.000000e+00, %8303
  %8329 = fadd fast float %8328, %8302
  %8330 = fadd fast float %8329, %8307
  %8331 = fmul fast float %8330, 0x3FC5555560000000
  %8332 = fdiv fast float %8308, %8331
  %8333 = fsub fast float %8327, %8332
  %8334 = fsub fast float 1.000000e+00, %8282
  %8335 = fadd fast float %8313, %8300
  %8336 = fmul fast float %8335, 0x3FC5555560000000
  %8337 = fdiv fast float %8314, %8336
  %8338 = fadd fast float %8337, %8334
  %8339 = fmul fast float %8321, %8275
  %8340 = fsub fast float %8196, %8339
  %8341 = fmul fast float %8326, %8275
  %8342 = fadd fast float %8341, %8196
  %8343 = fmul fast float %8338, %8276
  %8344 = fadd fast float %8343, %8197
  %8345 = fmul fast float %8333, %8276
  %8346 = fsub fast float %8197, %8345
  %8347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8340, float %8346, float %8264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8348 = extractvalue %dx.types.ResRet.f32 %8347, 0
  %8349 = extractvalue %dx.types.ResRet.f32 %8347, 1
  %8350 = extractvalue %dx.types.ResRet.f32 %8347, 2
  %8351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8342, float %8346, float %8264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8352 = extractvalue %dx.types.ResRet.f32 %8351, 0
  %8353 = extractvalue %dx.types.ResRet.f32 %8351, 1
  %8354 = extractvalue %dx.types.ResRet.f32 %8351, 2
  %8355 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8340, float %8344, float %8264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8356 = extractvalue %dx.types.ResRet.f32 %8355, 0
  %8357 = extractvalue %dx.types.ResRet.f32 %8355, 1
  %8358 = extractvalue %dx.types.ResRet.f32 %8355, 2
  %8359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8342, float %8344, float %8264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8360 = extractvalue %dx.types.ResRet.f32 %8359, 0
  %8361 = extractvalue %dx.types.ResRet.f32 %8359, 1
  %8362 = extractvalue %dx.types.ResRet.f32 %8359, 2
  %8363 = fsub fast float %8356, %8348
  %8364 = fsub fast float %8357, %8349
  %8365 = fsub fast float %8358, %8350
  %8366 = fmul fast float %8363, %8336
  %8367 = fmul fast float %8364, %8336
  %8368 = fmul fast float %8365, %8336
  %8369 = fadd fast float %8366, %8348
  %8370 = fadd fast float %8367, %8349
  %8371 = fadd fast float %8368, %8350
  %8372 = fsub fast float %8360, %8352
  %8373 = fsub fast float %8361, %8353
  %8374 = fsub fast float %8362, %8354
  %8375 = fmul fast float %8372, %8336
  %8376 = fmul fast float %8373, %8336
  %8377 = fmul fast float %8374, %8336
  %8378 = fsub fast float %8352, %8369
  %8379 = fadd fast float %8378, %8375
  %8380 = fsub fast float %8353, %8370
  %8381 = fadd fast float %8380, %8376
  %8382 = fsub fast float %8354, %8371
  %8383 = fadd fast float %8382, %8377
  %8384 = fmul fast float %8379, %8324
  %8385 = fmul fast float %8381, %8324
  %8386 = fmul fast float %8383, %8324
  %8387 = fadd fast float %8384, %8369
  %8388 = fadd fast float %8385, %8370
  %8389 = fadd fast float %8386, %8371
  %8390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8391 = extractvalue %dx.types.CBufRet.f32 %8390, 1
  %8392 = fmul fast float %8387, %8391
  %8393 = fmul fast float %8388, %8391
  %8394 = fmul fast float %8389, %8391
  br label %8395

; <label>:8395                                    ; preds = %8226, %8183
  %8396 = phi float [ %8266, %8226 ], [ 1.000000e+00, %8183 ]
  %8397 = phi float [ %8267, %8226 ], [ 1.000000e+00, %8183 ]
  %8398 = phi float [ %8268, %8226 ], [ 1.000000e+00, %8183 ]
  %8399 = phi float [ %8392, %8226 ], [ 0.000000e+00, %8183 ]
  %8400 = phi float [ %8393, %8226 ], [ 0.000000e+00, %8183 ]
  %8401 = phi float [ %8394, %8226 ], [ 0.000000e+00, %8183 ]
  %8402 = fmul fast float %8399, %6737
  %8403 = fmul fast float %8400, %6737
  %8404 = fmul fast float %8401, %6737
  %8405 = fmul fast float %8396, %8190
  %8406 = call float @dx.op.dot3.f32(i32 55, float %8396, float %8397, float %8398, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8407 = call float @dx.op.dot3.f32(i32 55, float %8402, float %8403, float %8404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8408 = select i1 %216, float %8406, float %8396
  %8409 = select i1 %216, float %8406, float %8397
  %8410 = select i1 %216, float 1.000000e+00, float %8398
  %8411 = select i1 %216, float %8407, float %8402
  %8412 = select i1 %216, float 0.000000e+00, float %8403
  %8413 = select i1 %216, float 0.000000e+00, float %8404
  %8414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8415 = extractvalue %dx.types.CBufRet.i32 %8414, 3
  %8416 = and i32 %8415, 3
  %8417 = icmp ne i32 %8416, 0
  %8418 = and i32 %8415, 4
  %8419 = icmp ne i32 %8418, 0
  %8420 = and i1 %8417, %8419
  %8421 = and i1 %216, %8420
  br i1 %8421, label %8422, label %8428

; <label>:8422                                    ; preds = %8395
  %8423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8424 = extractvalue %dx.types.CBufRet.f32 %8423, 1
  %8425 = fadd fast float %8405, -1.000000e+00
  %8426 = fmul fast float %8424, %8425
  %8427 = fadd fast float %8426, 1.000000e+00
  br label %8428

; <label>:8428                                    ; preds = %8422, %8395
  %8429 = phi float [ %8427, %8422 ], [ %8405, %8395 ]
  %8430 = fadd fast float %8187, %8184
  %8431 = fmul fast float %8408, %8430
  %8432 = fadd fast float %8431, %8411
  %8433 = fadd fast float %8188, %8185
  %8434 = fmul fast float %8409, %8433
  %8435 = fadd fast float %8434, %8412
  %8436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8437 = extractvalue %dx.types.CBufRet.f32 %8436, 0
  br i1 %216, label %8438, label %8454

; <label>:8438                                    ; preds = %8428
  %8439 = fadd fast float %8432, %8435
  %8440 = fmul fast float %8437, %8439
  %8441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8442 = extractvalue %dx.types.CBufRet.f32 %8441, 3
  %8443 = extractvalue %dx.types.CBufRet.f32 %6741, 1
  %8444 = fsub fast float %6746, %6740
  %8445 = fadd fast float %8444, %6747
  %8446 = fsub fast float %8445, %8443
  %8447 = extractvalue %dx.types.CBufRet.f32 %6741, 2
  %8448 = fmul fast float %8446, %8447
  %8449 = call float @dx.op.unary.f32(i32 7, float %8448)  ; Saturate(value)
  %8450 = fsub fast float %8449, %8442
  %8451 = fmul fast float %8450, %8429
  %8452 = fadd fast float %8451, %8442
  %8453 = fmul fast float %8452, %4254
  br label %8480

; <label>:8454                                    ; preds = %8428
  %8455 = fadd fast float %8189, %8186
  %8456 = fmul fast float %8410, %8455
  %8457 = fadd fast float %8456, %8413
  %8458 = fmul fast float %8437, %8432
  %8459 = fmul fast float %8437, %8435
  %8460 = fmul fast float %8437, %8457
  %8461 = call float @dx.op.binary.f32(i32 35, float %8459, float %8460)  ; FMax(a,b)
  %8462 = call float @dx.op.binary.f32(i32 35, float %8458, float %8461)  ; FMax(a,b)
  %8463 = call float @dx.op.binary.f32(i32 35, float %6737, float %6737)  ; FMax(a,b)
  %8464 = call float @dx.op.binary.f32(i32 35, float %6737, float %8463)  ; FMax(a,b)
  %8465 = call float @dx.op.binary.f32(i32 35, float %8462, float %8464)  ; FMax(a,b)
  %8466 = fcmp fast ugt float %8465, 0x3F10000000000000
  br i1 %8466, label %8468, label %8467

; <label>:8467                                    ; preds = %8454
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8468

; <label>:8468                                    ; preds = %8467, %8454
  %8469 = add i32 %48, 356
  %8470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %8469, i32 undef)  ; BufferLoad(srv,index,wot)
  %8471 = extractvalue %dx.types.ResRet.i32 %8470, 0
  %8472 = and i32 %8471, 32
  %8473 = icmp eq i32 %8472, 0
  br i1 %8473, label %8480, label %8474

; <label>:8474                                    ; preds = %8468
  %8475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8476 = extractvalue %dx.types.CBufRet.f32 %8475, 0
  %8477 = fmul fast float %8476, 0x3FE99999A0000000
  %8478 = fadd fast float %8476, %8458
  %8479 = fadd fast float %8477, %8460
  br label %8480

; <label>:8480                                    ; preds = %8474, %8468, %8438
  %8481 = phi float [ %4254, %8438 ], [ %6737, %8474 ], [ %6737, %8468 ]
  %8482 = phi float [ %8440, %8438 ], [ %8478, %8474 ], [ %8458, %8468 ]
  %8483 = phi float [ %8453, %8438 ], [ %8459, %8474 ], [ %8459, %8468 ]
  %8484 = phi float [ %4254, %8438 ], [ %8479, %8474 ], [ %8460, %8468 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8485 = call float @dx.op.binary.f32(i32 36, float %8482, float 3.225500e+04)  ; FMin(a,b)
  %8486 = call float @dx.op.binary.f32(i32 36, float %8483, float 3.225500e+04)  ; FMin(a,b)
  %8487 = call float @dx.op.binary.f32(i32 36, float %8484, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8485)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8486)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8487)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8488 = call float @dx.op.binary.f32(i32 36, float %6737, float 3.225500e+04)  ; FMin(a,b)
  %8489 = call float @dx.op.binary.f32(i32 36, float %8481, float 3.225500e+04)  ; FMin(a,b)
  %8490 = call float @dx.op.binary.f32(i32 36, float %8481, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8488)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8489)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8490)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!61 = !{[42 x i32] [i32 40, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 119, i32 0, i32 119, i32 119]}
!62 = !{void ()* @ps_main, !"ps_main", !63, !4, !85}
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
!81 = !{!82, !83}
!82 = !{i32 0, !"SV_Target", i8 9, i8 16, !66, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!83 = !{i32 1, !"SV_Target", i8 9, i8 16, !84, i8 0, i32 1, i8 4, i32 1, i8 0, !67}
!84 = !{i32 1}
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
!125 = distinct !{!125, !126, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!126 = distinct !{!126, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!127 = distinct !{!127, !126, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!128 = distinct !{!128, !126, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!129 = distinct !{!129, !130, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!130 = distinct !{!130, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!131 = distinct !{!131, !130, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!132 = distinct !{!132, !130, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

