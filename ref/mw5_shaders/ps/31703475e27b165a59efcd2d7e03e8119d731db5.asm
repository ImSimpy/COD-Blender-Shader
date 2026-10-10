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
; shader hash: e47b7e048138fda2e28745d48e8839ce
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
  br i1 %3723, label %3724, label %4232

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
  br i1 %3775, label %4201, label %3776

; <label>:3776                                    ; preds = %3724
  %3777 = and i32 %3772, 1023
  br label %3778

; <label>:3778                                    ; preds = %3904, %3776
  %3779 = phi i32 [ %3854, %3904 ], [ 0, %3776 ]
  %3780 = phi float [ %3905, %3904 ], [ 0.000000e+00, %3776 ]
  %3781 = phi float [ %3906, %3904 ], [ %3693, %3776 ]
  %3782 = phi float [ %3907, %3904 ], [ %3691, %3776 ]
  %3783 = phi float [ %3908, %3904 ], [ 0.000000e+00, %3776 ]
  %3784 = phi float [ %3909, %3904 ], [ 0.000000e+00, %3776 ]
  %3785 = phi float [ %3910, %3904 ], [ %3685, %3776 ]
  %3786 = phi float [ %3911, %3904 ], [ %3686, %3776 ]
  %3787 = phi float [ %3912, %3904 ], [ %3687, %3776 ]
  %3788 = phi float [ %3913, %3904 ], [ %3719, %3776 ]
  %3789 = phi float [ %3914, %3904 ], [ %3720, %3776 ]
  %3790 = phi float [ %3915, %3904 ], [ %3721, %3776 ]
  %3791 = phi float [ %3916, %3904 ], [ %3690, %3776 ]
  %3792 = phi float [ %3917, %3904 ], [ %3689, %3776 ]
  %3793 = phi float [ %3918, %3904 ], [ 0.000000e+00, %3776 ]
  %3794 = phi float [ %3919, %3904 ], [ %3688, %3776 ]
  %3795 = phi float [ %3920, %3904 ], [ %3682, %3776 ]
  %3796 = phi float [ %3921, %3904 ], [ %3683, %3776 ]
  %3797 = phi float [ %3922, %3904 ], [ %3684, %3776 ]
  %3798 = add nuw nsw i32 %3779, %3774
  %3799 = shl i32 %3798, 2
  %3800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.i32 %3800, 0
  %3802 = shl i32 %3801, 8
  %3803 = or i32 %3802, 48
  %3804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3806 = extractvalue %dx.types.ResRet.f32 %3804, 1
  %3807 = extractvalue %dx.types.ResRet.f32 %3804, 2
  %3808 = extractvalue %dx.types.ResRet.f32 %3804, 3
  %3809 = or i32 %3802, 64
  %3810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.i32 %3810, 0
  %3812 = extractvalue %dx.types.ResRet.i32 %3810, 1
  %3813 = or i32 %3802, 80
  %3814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 2
  %3816 = extractvalue %dx.types.ResRet.f32 %3814, 3
  %3817 = or i32 %3802, 96
  %3818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3820 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3821 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3822 = extractvalue %dx.types.ResRet.f32 %3818, 3
  %3823 = or i32 %3802, 112
  %3824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 2
  %3826 = or i32 %3802, 128
  %3827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3829 = extractvalue %dx.types.ResRet.f32 %3827, 1
  %3830 = extractvalue %dx.types.ResRet.f32 %3827, 2
  %3831 = extractvalue %dx.types.ResRet.f32 %3827, 3
  %3832 = or i32 %3802, 144
  %3833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3836 = extractvalue %dx.types.ResRet.f32 %3833, 2
  %3837 = extractvalue %dx.types.ResRet.f32 %3833, 3
  %3838 = or i32 %3802, 160
  %3839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3841 = extractvalue %dx.types.ResRet.f32 %3839, 1
  %3842 = extractvalue %dx.types.ResRet.f32 %3839, 2
  %3843 = extractvalue %dx.types.ResRet.f32 %3839, 3
  %3844 = or i32 %3802, 192
  %3845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3846 = extractvalue %dx.types.ResRet.i32 %3845, 0
  %3847 = or i32 %3802, 208
  %3848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = or i32 %3802, 248
  %3851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.ResRet.f32 %3851, 1
  %3854 = add nuw nsw i32 %3779, 1
  %3855 = bitcast float %3808 to i32
  %3856 = and i32 %3855, 512
  %3857 = icmp eq i32 %3856, 0
  %3858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.ResRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.ResRet.f32 %3858, 2
  %3862 = extractvalue %dx.types.ResRet.f32 %3858, 3
  %3863 = call float @dx.op.dot4.f32(i32 56, float %3859, float %3860, float %3861, float %3862, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3864 = or i32 %3802, 16
  %3865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3866 = extractvalue %dx.types.ResRet.f32 %3865, 0
  %3867 = extractvalue %dx.types.ResRet.f32 %3865, 1
  %3868 = extractvalue %dx.types.ResRet.f32 %3865, 2
  %3869 = extractvalue %dx.types.ResRet.f32 %3865, 3
  %3870 = call float @dx.op.dot4.f32(i32 56, float %3866, float %3867, float %3868, float %3869, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3871 = or i32 %3802, 32
  %3872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.ResRet.f32 %3872, 1
  %3875 = extractvalue %dx.types.ResRet.f32 %3872, 2
  %3876 = extractvalue %dx.types.ResRet.f32 %3872, 3
  %3877 = call float @dx.op.dot4.f32(i32 56, float %3873, float %3874, float %3875, float %3876, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3878 = call float @dx.op.unary.f32(i32 27, float %3863)  ; Round_ni(value)
  %3879 = call float @dx.op.unary.f32(i32 6, float %3878)  ; FAbs(value)
  %3880 = call float @dx.op.unary.f32(i32 27, float %3870)  ; Round_ni(value)
  %3881 = call float @dx.op.unary.f32(i32 6, float %3880)  ; FAbs(value)
  %3882 = call float @dx.op.unary.f32(i32 6, float %3877)  ; FAbs(value)
  %3883 = call float @dx.op.unary.f32(i32 27, float %3882)  ; Round_ni(value)
  %3884 = fadd fast float %3881, %3879
  %3885 = fadd fast float %3884, %3883
  %3886 = fcmp fast oeq float %3885, 0.000000e+00
  %3887 = call float @dx.op.dot4.f32(i32 56, float %3859, float %3860, float %3861, float %3862, float %3731, float %3732, float %3733, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3888 = call float @dx.op.dot4.f32(i32 56, float %3866, float %3867, float %3868, float %3869, float %3731, float %3732, float %3733, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3889 = call float @dx.op.dot4.f32(i32 56, float %3859, float %3860, float %3861, float %3862, float %3734, float %3735, float %3736, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3890 = call float @dx.op.dot4.f32(i32 56, float %3866, float %3867, float %3868, float %3869, float %3734, float %3735, float %3736, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3891 = fsub fast float %3887, %3863
  %3892 = fsub fast float %3889, %3863
  %3893 = fsub fast float %3888, %3870
  %3894 = fsub fast float %3890, %3870
  %3895 = call float @dx.op.dot3.f32(i32 55, float %3805, float %3806, float %3807, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 2
  %3898 = fadd fast float %3897, %3895
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3896, 0
  %3901 = fcmp fast ogt float %3899, %3900
  %3902 = and i1 %3886, %3901
  %3903 = and i1 %3857, %3902
  br i1 %3903, label %3924, label %3904

; <label>:3904                                    ; preds = %4187, %4005, %3924, %3778
  %3905 = phi float [ %3780, %3924 ], [ %4008, %4005 ], [ %4008, %4187 ], [ %3780, %3778 ]
  %3906 = phi float [ %3781, %3924 ], [ %3781, %4005 ], [ %4162, %4187 ], [ %3781, %3778 ]
  %3907 = phi float [ %3782, %3924 ], [ %3782, %4005 ], [ %4160, %4187 ], [ %3782, %3778 ]
  %3908 = phi float [ %3783, %3924 ], [ %3783, %4005 ], [ %4132, %4187 ], [ %3783, %3778 ]
  %3909 = phi float [ %3784, %3924 ], [ %3784, %4005 ], [ %4130, %4187 ], [ %3784, %3778 ]
  %3910 = phi float [ %3785, %3924 ], [ %3785, %4005 ], [ %4197, %4187 ], [ %3785, %3778 ]
  %3911 = phi float [ %3786, %3924 ], [ %3786, %4005 ], [ %4198, %4187 ], [ %3786, %3778 ]
  %3912 = phi float [ %3787, %3924 ], [ %3787, %4005 ], [ %4199, %4187 ], [ %3787, %3778 ]
  %3913 = phi float [ %3788, %3924 ], [ %3788, %4005 ], [ %4111, %4187 ], [ %3788, %3778 ]
  %3914 = phi float [ %3789, %3924 ], [ %3789, %4005 ], [ %4112, %4187 ], [ %3789, %3778 ]
  %3915 = phi float [ %3790, %3924 ], [ %3790, %4005 ], [ %4113, %4187 ], [ %3790, %3778 ]
  %3916 = phi float [ %3791, %3924 ], [ %3791, %4005 ], [ %4140, %4187 ], [ %3791, %3778 ]
  %3917 = phi float [ %3792, %3924 ], [ %3792, %4005 ], [ %4137, %4187 ], [ %3792, %3778 ]
  %3918 = phi float [ %3793, %3924 ], [ %3793, %4005 ], [ %4134, %4187 ], [ %3793, %3778 ]
  %3919 = phi float [ %3794, %3924 ], [ %3794, %4005 ], [ %4128, %4187 ], [ %3794, %3778 ]
  %3920 = phi float [ %3795, %3924 ], [ %3795, %4005 ], [ %4123, %4187 ], [ %3795, %3778 ]
  %3921 = phi float [ %3796, %3924 ], [ %3796, %4005 ], [ %4124, %4187 ], [ %3796, %3778 ]
  %3922 = phi float [ %3797, %3924 ], [ %3797, %4005 ], [ %4125, %4187 ], [ %3797, %3778 ]
  %3923 = icmp eq i32 %3854, %3777
  br i1 %3923, label %4200, label %3778

; <label>:3924                                    ; preds = %3778
  %3925 = extractvalue %dx.types.ResRet.f32 %3824, 3
  %3926 = extractvalue %dx.types.ResRet.f32 %3824, 1
  %3927 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3928 = extractvalue %dx.types.ResRet.f32 %3814, 1
  %3929 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3930 = extractvalue %dx.types.ResRet.i32 %3810, 3
  %3931 = extractvalue %dx.types.ResRet.i32 %3810, 2
  %3932 = add i32 %3930, 0
  %3933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3932, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3935 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3933, %dx.types.Handle %3934, float %3863, float %3870, float undef, float undef, i32 0, i32 0, i32 undef, float %3891, float %3893, float undef, float %3892, float %3894, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3936 = extractvalue %dx.types.ResRet.f32 %3935, 0
  %3937 = fmul fast float %3936, %3929
  %3938 = fadd fast float %3937, %3928
  %3939 = call float @dx.op.unary.f32(i32 7, float %3938)  ; Saturate(value)
  %3940 = fmul fast float %3863, %3819
  %3941 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %3870, float %3940)  ; FMad(a,b,c)
  %3942 = fadd fast float %3941, %3927
  %3943 = fmul fast float %3863, %3821
  %3944 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %3870, float %3943)  ; FMad(a,b,c)
  %3945 = fadd fast float %3944, %3926
  %3946 = fmul fast float %3891, %3819
  %3947 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %3893, float %3946)  ; FMad(a,b,c)
  %3948 = fmul fast float %3891, %3821
  %3949 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %3893, float %3948)  ; FMad(a,b,c)
  %3950 = fmul fast float %3892, %3819
  %3951 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %3894, float %3950)  ; FMad(a,b,c)
  %3952 = fmul fast float %3892, %3821
  %3953 = call float @dx.op.tertiary.f32(i32 46, float %3822, float %3894, float %3952)  ; FMad(a,b,c)
  %3954 = add i32 %3931, 0
  %3955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3954, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3956 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3955, %dx.types.Handle %3934, float %3942, float %3945, float undef, float undef, i32 0, i32 0, i32 undef, float %3947, float %3949, float undef, float %3951, float %3953, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = and i32 %3855, 1024
  %3959 = icmp ne i32 %3958, 0
  %3960 = fcmp fast ogt float %3957, 0x3FE0101020000000
  %3961 = uitofp i1 %3960 to float
  %3962 = select i1 %3959, float %3961, float %3957
  %3963 = and i32 %3855, 8192
  %3964 = icmp ne i32 %3963, 0
  %3965 = select i1 %3964, float %3925, float 1.000000e+00
  %3966 = fmul fast float %3863, 2.000000e+00
  %3967 = fadd fast float %3966, -1.000000e+00
  %3968 = call float @dx.op.unary.f32(i32 6, float %3967)  ; FAbs(value)
  %3969 = fmul fast float %3968, %3852
  %3970 = fsub fast float %3969, %3852
  %3971 = call float @dx.op.unary.f32(i32 7, float %3970)  ; Saturate(value)
  %3972 = fmul fast float %3870, 2.000000e+00
  %3973 = fadd fast float %3972, -1.000000e+00
  %3974 = call float @dx.op.unary.f32(i32 6, float %3973)  ; FAbs(value)
  %3975 = fmul fast float %3974, %3853
  %3976 = fsub fast float %3975, %3853
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = fmul fast float %3882, %3815
  %3979 = fsub fast float %3978, %3815
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3981 = fmul fast float %3939, %3965
  %3982 = fmul fast float %3981, %3936
  %3983 = fmul fast float %3982, %3971
  %3984 = fmul fast float %3983, %3962
  %3985 = fmul fast float %3984, %3977
  %3986 = fmul fast float %3985, %3980
  %3987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3987, 1
  %3989 = extractvalue %dx.types.CBufRet.f32 %3987, 0
  %3990 = fsub fast float %3899, %3989
  %3991 = fmul fast float %3990, %3988
  %3992 = call float @dx.op.unary.f32(i32 7, float %3991)  ; Saturate(value)
  %3993 = fmul fast float %3986, %3816
  %3994 = fadd fast float %3986, %3816
  %3995 = fmul fast float %3994, %3825
  %3996 = fsub fast float %3995, %3825
  %3997 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %3998 = and i32 %3855, 128
  %3999 = icmp ne i32 %3998, 0
  %4000 = select i1 %3999, float %3997, float %3993
  %4001 = fmul fast float %4000, %3992
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 0
  %4004 = fcmp fast ugt float %4001, %4003
  br i1 %4004, label %4005, label %3904

; <label>:4005                                    ; preds = %3924
  %4006 = select i1 %3964, float %4001, float 0.000000e+00
  %4007 = fadd fast float %4006, %3780
  %4008 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  br i1 %3964, label %3904, label %4009

; <label>:4009                                    ; preds = %4005
  %4010 = and i32 %3855, 4
  %4011 = and i32 %3855, 8
  %4012 = add i32 %3811, 0
  %4013 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4012, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4015 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4013, %dx.types.Handle %4014, float %3942, float %3945, float undef, float undef, i32 0, i32 0, i32 undef, float %3947, float %3949, float undef, float %3951, float %3953, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4016 = extractvalue %dx.types.ResRet.f32 %4015, 0
  %4017 = extractvalue %dx.types.ResRet.f32 %4015, 1
  %4018 = extractvalue %dx.types.ResRet.f32 %4015, 2
  %4019 = extractvalue %dx.types.ResRet.f32 %4015, 3
  %4020 = bitcast float %3837 to i32
  %4021 = and i32 %4020, 255
  %4022 = uitofp i32 %4021 to float
  %4023 = lshr i32 %4020, 8
  %4024 = and i32 %4023, 255
  %4025 = uitofp i32 %4024 to float
  %4026 = fmul fast float %4019, %4022
  %4027 = fadd fast float %4026, %4025
  %4028 = fmul fast float %4027, 0x3F70101000000000
  %4029 = add i32 %3812, 0
  %4030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4029, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4031 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4030, %dx.types.Handle %4014, float %3942, float %3945, float undef, float undef, i32 0, i32 0, i32 undef, float %3947, float %3949, float undef, float %3951, float %3953, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4032 = extractvalue %dx.types.ResRet.f32 %4031, 0
  %4033 = extractvalue %dx.types.ResRet.f32 %4031, 1
  %4034 = extractvalue %dx.types.ResRet.f32 %4031, 2
  %4035 = extractvalue %dx.types.ResRet.f32 %4031, 3
  %4036 = bitcast float %3831 to i32
  %4037 = and i32 %4036, 255
  %4038 = uitofp i32 %4037 to float
  %4039 = lshr i32 %4036, 8
  %4040 = and i32 %4039, 255
  %4041 = uitofp i32 %4040 to float
  %4042 = lshr i32 %4036, 16
  %4043 = and i32 %4042, 255
  %4044 = uitofp i32 %4043 to float
  %4045 = fmul fast float %4044, 0x3F70101000000000
  %4046 = fmul fast float %4032, %4038
  %4047 = fadd fast float %4046, %4041
  %4048 = fmul fast float %4047, 0x3F70101000000000
  %4049 = fadd fast float %4033, -5.000000e-01
  %4050 = fadd fast float %4035, -5.000000e-01
  %4051 = fmul fast float %4049, %4045
  %4052 = fmul fast float %4050, %4045
  %4053 = fadd fast float %4051, 5.000000e-01
  %4054 = fadd fast float %4052, 5.000000e-01
  %4055 = fmul fast float %4016, %3840
  %4056 = fmul fast float %4017, %3841
  %4057 = fmul fast float %4018, %3842
  %4058 = fmul fast float %4053, 2.000000e+00
  %4059 = fadd fast float %4058, -1.000000e+00
  %4060 = fmul fast float %4054, 2.000000e+00
  %4061 = fadd fast float %4060, -1.000000e+00
  %4062 = fadd fast float %4059, %4061
  %4063 = fmul fast float %4062, 5.000000e-01
  %4064 = fsub fast float %4059, %4061
  %4065 = fmul fast float %4064, 5.000000e-01
  %4066 = call float @dx.op.unary.f32(i32 6, float %4063)  ; FAbs(value)
  %4067 = fsub fast float 1.000000e+00, %4066
  %4068 = call float @dx.op.unary.f32(i32 6, float %4065)  ; FAbs(value)
  %4069 = fsub fast float %4067, %4068
  %4070 = call float @dx.op.dot3.f32(i32 55, float %4063, float %4065, float %4069, float %4063, float %4065, float %4069)  ; Dot3(ax,ay,az,bx,by,bz)
  %4071 = call float @dx.op.unary.f32(i32 25, float %4070)  ; Rsqrt(value)
  %4072 = fmul fast float %4063, %4071
  %4073 = fmul fast float %4065, %4071
  %4074 = fmul fast float %4071, %4069
  %4075 = fmul fast float %4074, %3805
  %4076 = fmul fast float %4074, %3806
  %4077 = fmul fast float %4074, %3807
  %4078 = fmul fast float %4072, %3828
  %4079 = fmul fast float %4072, %3829
  %4080 = fmul fast float %4072, %3830
  %4081 = fadd fast float %4078, %4075
  %4082 = fadd fast float %4079, %4076
  %4083 = fadd fast float %4080, %4077
  %4084 = fmul fast float %4073, %3834
  %4085 = fmul fast float %4073, %3835
  %4086 = fmul fast float %4073, %3836
  %4087 = fadd fast float %4081, %4084
  %4088 = fadd fast float %4082, %4085
  %4089 = fadd fast float %4083, %4086
  %4090 = call float @dx.op.dot3.f32(i32 55, float %4087, float %4088, float %4089, float %4087, float %4088, float %4089)  ; Dot3(ax,ay,az,bx,by,bz)
  %4091 = call float @dx.op.unary.f32(i32 25, float %4090)  ; Rsqrt(value)
  %4092 = fmul fast float %4087, %4091
  %4093 = fmul fast float %4088, %4091
  %4094 = fmul fast float %4089, %4091
  %4095 = icmp ne i32 %4011, 0
  %4096 = select i1 %4095, float 1.000000e+00, float 0.000000e+00
  %4097 = fmul fast float %4001, %4096
  %4098 = and i32 %3855, 1
  %4099 = icmp eq i32 %4098, 0
  br i1 %4099, label %4100, label %4104

; <label>:4100                                    ; preds = %4009
  %4101 = fsub fast float %4092, %3788
  %4102 = fsub fast float %4093, %3789
  %4103 = fsub fast float %4094, %3790
  br label %4104

; <label>:4104                                    ; preds = %4100, %4009
  %4105 = phi float [ %4101, %4100 ], [ %4092, %4009 ]
  %4106 = phi float [ %4102, %4100 ], [ %4093, %4009 ]
  %4107 = phi float [ %4103, %4100 ], [ %4094, %4009 ]
  %4108 = fmul float %4107, %4097
  %4109 = fmul float %4106, %4097
  %4110 = fmul float %4105, %4097
  %4111 = fadd fast float %4110, %3788
  %4112 = fadd fast float %4109, %3789
  %4113 = fadd fast float %4108, %3790
  %4114 = icmp ne i32 %4010, 0
  %4115 = select i1 %4114, float 1.000000e+00, float 0.000000e+00
  %4116 = fmul fast float %4001, %4115
  %4117 = fsub fast float %4055, %3795
  %4118 = fsub fast float %4056, %3796
  %4119 = fsub fast float %4057, %3797
  %4120 = fmul fast float %4117, %4116
  %4121 = fmul fast float %4118, %4116
  %4122 = fmul fast float %4119, %4116
  %4123 = fadd fast float %4120, %3795
  %4124 = fadd fast float %4121, %3796
  %4125 = fadd fast float %4122, %3797
  %4126 = fsub fast float %4028, %3794
  %4127 = fmul fast float %4126, %4116
  %4128 = fadd fast float %4127, %3794
  %4129 = fmul fast float %4116, %3784
  %4130 = fsub fast float %3784, %4129
  %4131 = fmul fast float %4116, %3783
  %4132 = fsub fast float %3783, %4131
  %4133 = fadd fast float %4001, %3793
  %4134 = call float @dx.op.unary.f32(i32 7, float %4133)  ; Saturate(value)
  %4135 = fsub fast float %4048, %3792
  %4136 = fmul fast float %4135, %4097
  %4137 = fadd fast float %4136, %3792
  %4138 = fsub fast float %4034, %3791
  %4139 = fmul fast float %4138, %4097
  %4140 = fadd fast float %4139, %3791
  %4141 = call float @dx.op.dot3.f32(i32 55, float %4055, float %4056, float %4057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.CBufRet.f32 %4142, 1
  %4145 = fmul fast float %4144, %4141
  %4146 = fadd fast float %4145, %4143
  %4147 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4148 = bitcast float %3843 to i32
  %4149 = and i32 %4148, 65535
  %4150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4149)  ; LegacyF16ToF32(value)
  %4151 = lshr i32 %4148, 16
  %4152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4151)  ; LegacyF16ToF32(value)
  %4153 = fcmp fast oge float %4150, 0.000000e+00
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = select i1 %4153, float %4150, float %4155
  %4157 = fadd fast float %4156, %4152
  %4158 = fsub fast float %4147, %3782
  %4159 = fmul fast float %4158, %4001
  %4160 = fadd fast float %4159, %3782
  %4161 = fmul fast float %4157, %4001
  %4162 = call float @dx.op.binary.f32(i32 35, float %3781, float %4161)  ; FMax(a,b)
  %4163 = and i32 %3855, 16
  %4164 = icmp eq i32 %4163, 0
  br i1 %4164, label %4187, label %4165

; <label>:4165                                    ; preds = %4104
  %4166 = bitcast float %3849 to i32
  %4167 = add i32 %3846, 0
  %4168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4167, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4169 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4168, %dx.types.Handle %4014, float %3942, float %3945, float undef, float undef, i32 0, i32 0, i32 undef, float %3947, float %3949, float undef, float %3951, float %3953, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.ResRet.f32 %4169, 2
  %4173 = and i32 %4166, 65535
  %4174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4173)  ; LegacyF16ToF32(value)
  %4175 = fmul fast float %4170, %3840
  %4176 = fmul fast float %4171, %3841
  %4177 = fmul fast float %4172, %3842
  %4178 = and i32 %3855, 16384
  %4179 = icmp ne i32 %4178, 0
  %4180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4181 = extractvalue %dx.types.CBufRet.f32 %4180, 0
  %4182 = select i1 %4179, float %4181, float 1.000000e+00
  %4183 = fmul fast float %4182, %4174
  %4184 = fmul fast float %4175, %4183
  %4185 = fmul fast float %4176, %4183
  %4186 = fmul fast float %4177, %4183
  br label %4187

; <label>:4187                                    ; preds = %4165, %4104
  %4188 = phi float [ %4184, %4165 ], [ 0.000000e+00, %4104 ]
  %4189 = phi float [ %4185, %4165 ], [ 0.000000e+00, %4104 ]
  %4190 = phi float [ %4186, %4165 ], [ 0.000000e+00, %4104 ]
  %4191 = fsub fast float %4188, %3785
  %4192 = fsub fast float %4189, %3786
  %4193 = fsub fast float %4190, %3787
  %4194 = fmul fast float %4191, %4001
  %4195 = fmul fast float %4192, %4001
  %4196 = fmul fast float %4193, %4001
  %4197 = fadd fast float %4194, %3785
  %4198 = fadd fast float %4195, %3786
  %4199 = fadd fast float %4196, %3787
  br label %3904

; <label>:4200                                    ; preds = %3904
  br label %4201

; <label>:4201                                    ; preds = %4200, %3724
  %4202 = phi float [ 0.000000e+00, %3724 ], [ %3905, %4200 ]
  %4203 = phi float [ %3693, %3724 ], [ %3906, %4200 ]
  %4204 = phi float [ %3691, %3724 ], [ %3907, %4200 ]
  %4205 = phi float [ 0.000000e+00, %3724 ], [ %3908, %4200 ]
  %4206 = phi float [ 0.000000e+00, %3724 ], [ %3909, %4200 ]
  %4207 = phi float [ %3685, %3724 ], [ %3910, %4200 ]
  %4208 = phi float [ %3686, %3724 ], [ %3911, %4200 ]
  %4209 = phi float [ %3687, %3724 ], [ %3912, %4200 ]
  %4210 = phi float [ %3719, %3724 ], [ %3913, %4200 ]
  %4211 = phi float [ %3720, %3724 ], [ %3914, %4200 ]
  %4212 = phi float [ %3721, %3724 ], [ %3915, %4200 ]
  %4213 = phi float [ %3690, %3724 ], [ %3916, %4200 ]
  %4214 = phi float [ %3689, %3724 ], [ %3917, %4200 ]
  %4215 = phi float [ 0.000000e+00, %3724 ], [ %3918, %4200 ]
  %4216 = phi float [ %3688, %3724 ], [ %3919, %4200 ]
  %4217 = phi float [ %3682, %3724 ], [ %3920, %4200 ]
  %4218 = phi float [ %3683, %3724 ], [ %3921, %4200 ]
  %4219 = phi float [ %3684, %3724 ], [ %3922, %4200 ]
  %4220 = call float @dx.op.dot3.f32(i32 55, float %4210, float %4211, float %4212, float %4210, float %4211, float %4212)  ; Dot3(ax,ay,az,bx,by,bz)
  %4221 = call float @dx.op.unary.f32(i32 25, float %4220)  ; Rsqrt(value)
  %4222 = fmul fast float %4221, %4210
  %4223 = fmul fast float %4221, %4211
  %4224 = fmul fast float %4221, %4212
  %4225 = fadd fast float %4215, %1126
  %4226 = call float @dx.op.unary.f32(i32 7, float %4225)  ; Saturate(value)
  %4227 = call float @dx.op.dot3.f32(i32 55, float %4222, float %4223, float %4224, float %4222, float %4223, float %4224)  ; Dot3(ax,ay,az,bx,by,bz)
  %4228 = call float @dx.op.unary.f32(i32 25, float %4227)  ; Rsqrt(value)
  %4229 = fmul fast float %4228, %4222
  %4230 = fmul fast float %4228, %4223
  %4231 = fmul fast float %4228, %4224
  br label %4232

; <label>:4232                                    ; preds = %4201, %3679
  %4233 = phi float [ %4229, %4201 ], [ %3719, %3679 ]
  %4234 = phi float [ %4230, %4201 ], [ %3720, %3679 ]
  %4235 = phi float [ %4231, %4201 ], [ %3721, %3679 ]
  %4236 = phi float [ %4217, %4201 ], [ %3682, %3679 ]
  %4237 = phi float [ %4218, %4201 ], [ %3683, %3679 ]
  %4238 = phi float [ %4219, %4201 ], [ %3684, %3679 ]
  %4239 = phi float [ %4207, %4201 ], [ %3685, %3679 ]
  %4240 = phi float [ %4208, %4201 ], [ %3686, %3679 ]
  %4241 = phi float [ %4209, %4201 ], [ %3687, %3679 ]
  %4242 = phi float [ %4216, %4201 ], [ %3688, %3679 ]
  %4243 = phi float [ %4226, %4201 ], [ %1126, %3679 ]
  %4244 = phi float [ %4214, %4201 ], [ %3689, %3679 ]
  %4245 = phi float [ %4213, %4201 ], [ %3690, %3679 ]
  %4246 = phi float [ %4206, %4201 ], [ 0.000000e+00, %3679 ]
  %4247 = phi float [ %4205, %4201 ], [ 0.000000e+00, %3679 ]
  %4248 = phi float [ %4202, %4201 ], [ 0.000000e+00, %3679 ]
  %4249 = phi float [ %4203, %4201 ], [ %3693, %3679 ]
  %4250 = phi float [ %4204, %4201 ], [ %3691, %3679 ]
  %4251 = fadd fast float %4242, 0xBFB99999A0000000
  %4252 = call float @dx.op.unary.f32(i32 7, float %4251)  ; Saturate(value)
  %4253 = fmul fast float %4252, 0x3FF1C71C80000000
  %4254 = call float @dx.op.binary.f32(i32 36, float %4242, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4255 = fsub fast float 1.000000e+00, %4253
  %4256 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4257 = fmul fast float %4256, %4236
  %4258 = fmul fast float %4256, %4237
  %4259 = fmul fast float %4256, %4238
  %4260 = call float @dx.op.unary.f32(i32 7, float %4257)  ; Saturate(value)
  %4261 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4262 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4263 = fmul fast float %4253, %4236
  %4264 = fmul fast float %4253, %4237
  %4265 = fmul fast float %4253, %4238
  %4266 = fadd fast float %4263, %4254
  %4267 = fadd fast float %4264, %4254
  %4268 = fadd fast float %4265, %4254
  %4269 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4270 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4271 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4272 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.i32 %4273, 3
  %4275 = and i32 %4274, 8
  %4276 = icmp ne i32 %4275, 0
  %4277 = call float @dx.op.binary.f32(i32 35, float %4260, float %4236)  ; FMax(a,b)
  %4278 = call float @dx.op.binary.f32(i32 35, float %4261, float %4236)  ; FMax(a,b)
  %4279 = call float @dx.op.binary.f32(i32 35, float %4262, float %4236)  ; FMax(a,b)
  %4280 = call float @dx.op.dot3.f32(i32 55, float %4260, float %4261, float %4262, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4281 = select i1 %216, float %4236, float %4260
  %4282 = select i1 %216, float %4280, float %4261
  %4283 = select i1 %216, float 1.000000e+00, float %4262
  %4284 = select i1 %4276, float %4277, float %4281
  %4285 = select i1 %4276, float %4278, float %4282
  %4286 = select i1 %4276, float %4279, float %4283
  %4287 = and i32 %192, 3
  %4288 = select i1 %186, i32 %4287, i32 0
  %4289 = icmp eq i32 %4288, 1
  br i1 %4289, label %4290, label %4366

; <label>:4290                                    ; preds = %4232
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 0
  %4293 = extractvalue %dx.types.CBufRet.f32 %4291, 1
  %4294 = fadd fast float %4292, %155
  %4295 = fadd fast float %4293, %156
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 0
  %4298 = extractvalue %dx.types.CBufRet.f32 %4296, 1
  %4299 = fsub fast float %4294, %4297
  %4300 = fsub fast float %4295, %4298
  %4301 = fmul fast float %4299, %4299
  %4302 = fmul fast float %4300, %4300
  %4303 = fadd fast float %4301, %4302
  %4304 = call float @dx.op.unary.f32(i32 24, float %4303)  ; Sqrt(value)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4296, 2
  %4306 = fcmp fast olt float %4304, %4305
  br i1 %4306, label %4307, label %4360

; <label>:4307                                    ; preds = %4290
  %4308 = extractvalue %dx.types.CBufRet.f32 %4291, 2
  %4309 = fadd fast float %4308, %157
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 0
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 0
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 0
  %4316 = extractvalue %dx.types.CBufRet.f32 %4310, 1
  %4317 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4318 = extractvalue %dx.types.CBufRet.f32 %4314, 1
  %4319 = extractvalue %dx.types.CBufRet.f32 %4310, 3
  %4320 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4321 = extractvalue %dx.types.CBufRet.f32 %4314, 3
  %4322 = fadd fast float %4319, %4294
  %4323 = fadd fast float %4320, %4295
  %4324 = fadd fast float %4309, %4321
  %4325 = fmul fast float %4322, %4311
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4323, float %4313, float %4325)  ; FMad(a,b,c)
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4324, float %4315, float %4326)  ; FMad(a,b,c)
  %4328 = fmul fast float %4322, %4316
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4323, float %4317, float %4328)  ; FMad(a,b,c)
  %4330 = call float @dx.op.tertiary.f32(i32 46, float %4324, float %4318, float %4329)  ; FMad(a,b,c)
  %4331 = fsub fast float %4327, %4319
  %4332 = fsub fast float %4330, %4320
  %4333 = fsub fast float %4331, %4297
  %4334 = fadd fast float %4333, %4305
  %4335 = fsub fast float %4332, %4298
  %4336 = fadd fast float %4335, %4305
  %4337 = extractvalue %dx.types.CBufRet.f32 %4296, 3
  %4338 = fmul fast float %4334, %4337
  %4339 = fmul fast float %4336, %4337
  %4340 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4341 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4342 = fsub fast float 1.000000e+00, %4340
  %4343 = fsub fast float 1.000000e+00, %4341
  %4344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %42, float %4342, float %4343, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = fcmp fast ugt float %4345, 0.000000e+00
  br i1 %4346, label %4347, label %4360

; <label>:4347                                    ; preds = %4307
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 2
  %4350 = fmul fast float %4349, %4345
  %4351 = extractvalue %dx.types.CBufRet.f32 %4348, 3
  %4352 = fadd fast float %4351, %4350
  %4353 = extractvalue %dx.types.CBufRet.f32 %4314, 2
  %4354 = fadd fast float %4352, %4321
  %4355 = fmul fast float %4327, %4315
  %4356 = call float @dx.op.tertiary.f32(i32 46, float %4330, float %4318, float %4355)  ; FMad(a,b,c)
  %4357 = call float @dx.op.tertiary.f32(i32 46, float %4354, float %4353, float %4356)  ; FMad(a,b,c)
  %4358 = fsub fast float %4357, %4321
  %4359 = fsub fast float %4358, %4308
  br label %4360

; <label>:4360                                    ; preds = %4347, %4307, %4290
  %4361 = phi i1 [ true, %4347 ], [ false, %4307 ], [ false, %4290 ]
  %4362 = phi float [ %4359, %4347 ], [ -1.310720e+05, %4307 ], [ -1.310720e+05, %4290 ]
  %4363 = fsub fast float %4362, %157
  %4364 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4365 = select i1 %4361, float %4364, float 1.000000e+00
  br label %4366

; <label>:4366                                    ; preds = %4360, %4232
  %4367 = phi float [ %4365, %4360 ], [ 0.000000e+00, %4232 ]
  %4368 = icmp eq i32 %4288, 3
  %4369 = select i1 %4368, float 1.000000e+00, float %4367
  %4370 = call float @dx.op.binary.f32(i32 35, float %4248, float %4369)  ; FMax(a,b)
  %4371 = call float @dx.op.unary.f32(i32 7, float %4370)  ; Saturate(value)
  %4372 = fcmp fast une float %4371, 0.000000e+00
  %4373 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %4374 = call float @dx.op.unary.f32(i32 25, float %4373)  ; Rsqrt(value)
  br i1 %4372, label %4382, label %4375

; <label>:4375                                    ; preds = %4366
  %4376 = fmul fast float %4374, %155
  %4377 = fmul fast float %4374, %156
  %4378 = fmul fast float %4374, %157
  %4379 = fsub fast float -0.000000e+00, %4376
  %4380 = fsub fast float -0.000000e+00, %4377
  %4381 = fsub fast float -0.000000e+00, %4378
  br label %4550

; <label>:4382                                    ; preds = %4366
  %4383 = fmul fast float %155, %4374
  %4384 = fsub fast float -0.000000e+00, %4383
  %4385 = fmul fast float %156, %4374
  %4386 = fsub fast float -0.000000e+00, %4385
  %4387 = fmul fast float %157, %4374
  %4388 = fsub fast float -0.000000e+00, %4387
  %4389 = call float @dx.op.dot3.f32(i32 55, float %4384, float %4386, float %4388, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4390 = fmul fast float %4371, 2.500000e+00
  %4391 = call float @dx.op.unary.f32(i32 7, float %4390)  ; Saturate(value)
  %4392 = fmul fast float %4371, 0x4013FFFFE0000000
  %4393 = fadd fast float %4392, 0xBFFFFFFFE0000000
  %4394 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4395 = fmul fast float %4371, 0x4004000020000000
  %4396 = fadd fast float %4395, 0xBFF8000040000000
  %4397 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4398 = call float @dx.op.unary.f32(i32 7, float %4391)  ; Saturate(value)
  %4399 = fmul fast float %4251, 1.000000e+01
  %4400 = call float @dx.op.unary.f32(i32 7, float %4399)  ; Saturate(value)
  %4401 = fmul fast float %4400, 2.000000e+00
  %4402 = fsub fast float 3.000000e+00, %4401
  %4403 = fmul fast float %4400, %4400
  %4404 = fmul fast float %4403, %4402
  %4405 = fsub fast float 1.000000e+00, %4404
  %4406 = fsub fast float 0x3FE3333340000000, %4272
  %4407 = fmul fast float %4406, 0x400AAAAAA0000000
  %4408 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4409 = fmul fast float %4405, %4408
  %4410 = fmul fast float %4284, 0x3FEA2B8620000000
  %4411 = fmul fast float %4285, 0x3FEA2B8620000000
  %4412 = fmul fast float %4286, 0x3FEA2B8620000000
  %4413 = fadd fast float %4410, 0x3FC81DFBA0000000
  %4414 = fmul fast float %4413, %4284
  %4415 = fadd fast float %4414, 0x3F910E6020000000
  %4416 = fadd fast float %4411, 0x3FC81DFBA0000000
  %4417 = fmul fast float %4416, %4285
  %4418 = fadd fast float %4417, 0x3F910E6020000000
  %4419 = fadd fast float %4412, 0x3FC81DFBA0000000
  %4420 = fmul fast float %4419, %4286
  %4421 = fadd fast float %4420, 0x3F910E6020000000
  %4422 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4423 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4424 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4425 = fsub fast float %4422, %4284
  %4426 = fsub fast float %4423, %4285
  %4427 = fsub fast float %4424, %4286
  %4428 = fmul fast float %4425, %4398
  %4429 = fmul fast float %4428, %4409
  %4430 = fmul fast float %4426, %4398
  %4431 = fmul fast float %4430, %4409
  %4432 = fmul fast float %4427, %4398
  %4433 = fmul fast float %4432, %4409
  %4434 = fadd fast float %4429, %4284
  %4435 = fadd fast float %4431, %4285
  %4436 = fadd fast float %4433, %4286
  %4437 = fmul fast float %4245, %4245
  %4438 = fmul fast float %4437, %4437
  %4439 = fadd fast float %4394, 1.000000e+00
  %4440 = fsub fast float %4439, %4409
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = fsub fast float 1.000000e+00, %4438
  %4445 = call float @dx.op.binary.f32(i32 36, float %4441, float %4444)  ; FMin(a,b)
  %4446 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4447 = call float @dx.op.binary.f32(i32 35, float %4445, float %4446)  ; FMax(a,b)
  %4448 = fadd fast float %4443, 0xBFE4CCCCC0000000
  %4449 = fmul fast float %4448, 0x4006DB6DA0000000
  %4450 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4451 = fmul fast float %4450, 2.000000e+00
  %4452 = fsub fast float 3.000000e+00, %4451
  %4453 = bitcast float %4269 to i32
  %4454 = ashr i32 %4453, 1
  %4455 = add nsw i32 %4454, 532487669
  %4456 = bitcast i32 %4455 to float
  %4457 = fsub fast float 1.000000e+00, %4456
  %4458 = bitcast float %4457 to i32
  %4459 = sub nsw i32 2129859010, %4458
  %4460 = bitcast i32 %4459 to float
  %4461 = fmul fast float %4460, 2.000000e+00
  %4462 = bitcast float %4270 to i32
  %4463 = ashr i32 %4462, 1
  %4464 = add nsw i32 %4463, 532487669
  %4465 = bitcast i32 %4464 to float
  %4466 = fsub fast float 1.000000e+00, %4465
  %4467 = bitcast float %4466 to i32
  %4468 = sub nsw i32 2129859010, %4467
  %4469 = bitcast i32 %4468 to float
  %4470 = fmul fast float %4469, 2.000000e+00
  %4471 = bitcast float %4271 to i32
  %4472 = ashr i32 %4471, 1
  %4473 = add nsw i32 %4472, 532487669
  %4474 = bitcast i32 %4473 to float
  %4475 = fsub fast float 1.000000e+00, %4474
  %4476 = bitcast float %4475 to i32
  %4477 = sub nsw i32 2129859010, %4476
  %4478 = bitcast i32 %4477 to float
  %4479 = fmul fast float %4478, 2.000000e+00
  %4480 = fsub fast float 0x4002A9FBE0000000, %4461
  %4481 = fadd fast float %4461, 0x3FD54FDF00000000
  %4482 = bitcast float %4481 to i32
  %4483 = sub nsw i32 2129859010, %4482
  %4484 = bitcast i32 %4483 to float
  %4485 = fmul fast float %4484, %4480
  %4486 = fmul fast float %4485, %4485
  %4487 = fsub fast float 0x4002A9FBE0000000, %4470
  %4488 = fadd fast float %4470, 0x3FD54FDF00000000
  %4489 = bitcast float %4488 to i32
  %4490 = sub nsw i32 2129859010, %4489
  %4491 = bitcast i32 %4490 to float
  %4492 = fmul fast float %4491, %4487
  %4493 = fmul fast float %4492, %4492
  %4494 = fsub fast float 0x4002A9FBE0000000, %4479
  %4495 = fadd fast float %4479, 0x3FD54FDF00000000
  %4496 = bitcast float %4495 to i32
  %4497 = sub nsw i32 2129859010, %4496
  %4498 = bitcast i32 %4497 to float
  %4499 = fmul fast float %4498, %4494
  %4500 = fmul fast float %4499, %4499
  %4501 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4486)  ; FMax(a,b)
  %4502 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4493)  ; FMax(a,b)
  %4503 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4500)  ; FMax(a,b)
  %4504 = fsub fast float 1.000000e+00, %4389
  %4505 = fadd fast float %4504, %4405
  %4506 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4507 = fsub fast float 1.000000e+00, %4369
  %4508 = fmul fast float %4447, %4507
  %4509 = fmul fast float %4450, %4450
  %4510 = fmul fast float %4509, %4508
  %4511 = fmul fast float %4510, %4452
  %4512 = fmul fast float %4507, 0xBFE99999A0000000
  %4513 = fmul fast float %4512, %4398
  %4514 = fmul fast float %4513, %4409
  %4515 = fadd fast float %4514, 1.000000e+00
  %4516 = fadd fast float %4272, -1.000000e+00
  %4517 = fmul fast float %4515, %4516
  %4518 = fadd fast float %4517, 1.000000e+00
  %4519 = fsub fast float %4501, %4269
  %4520 = fsub fast float %4502, %4270
  %4521 = fsub fast float %4503, %4271
  %4522 = fmul fast float %4511, %4519
  %4523 = fmul fast float %4511, %4520
  %4524 = fmul fast float %4511, %4521
  %4525 = fadd fast float %4522, %4269
  %4526 = fadd fast float %4523, %4270
  %4527 = fadd fast float %4524, %4271
  %4528 = fsub fast float %99, %4233
  %4529 = fsub fast float %100, %4234
  %4530 = fsub fast float %101, %4235
  %4531 = fmul fast float %4511, %4528
  %4532 = fmul fast float %4511, %4529
  %4533 = fmul fast float %4511, %4530
  %4534 = fadd fast float %4531, %4233
  %4535 = fadd fast float %4532, %4234
  %4536 = fadd fast float %4533, %4235
  %4537 = fmul fast float %4511, %4506
  %4538 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4539 = fsub fast float 1.000000e+00, %4538
  %4540 = fmul fast float %4537, %4539
  %4541 = fadd fast float %4540, %4538
  %4542 = fsub fast float 1.000000e+00, %4245
  %4543 = fmul fast float %4511, %4542
  %4544 = fadd fast float %4543, %4245
  %4545 = call float @dx.op.dot3.f32(i32 55, float %4534, float %4535, float %4536, float %4534, float %4535, float %4536)  ; Dot3(ax,ay,az,bx,by,bz)
  %4546 = call float @dx.op.unary.f32(i32 25, float %4545)  ; Rsqrt(value)
  %4547 = fmul fast float %4534, %4546
  %4548 = fmul fast float %4535, %4546
  %4549 = fmul fast float %4536, %4546
  br label %4550

; <label>:4550                                    ; preds = %4382, %4375
  %4551 = phi float [ %4381, %4375 ], [ %4388, %4382 ]
  %4552 = phi float [ %4380, %4375 ], [ %4386, %4382 ]
  %4553 = phi float [ %4379, %4375 ], [ %4384, %4382 ]
  %4554 = phi float [ %4378, %4375 ], [ %4387, %4382 ]
  %4555 = phi float [ %4377, %4375 ], [ %4385, %4382 ]
  %4556 = phi float [ %4376, %4375 ], [ %4383, %4382 ]
  %4557 = phi float [ %4284, %4375 ], [ %4434, %4382 ]
  %4558 = phi float [ %4285, %4375 ], [ %4435, %4382 ]
  %4559 = phi float [ %4286, %4375 ], [ %4436, %4382 ]
  %4560 = phi float [ %4269, %4375 ], [ %4525, %4382 ]
  %4561 = phi float [ %4270, %4375 ], [ %4526, %4382 ]
  %4562 = phi float [ %4271, %4375 ], [ %4527, %4382 ]
  %4563 = phi float [ %4233, %4375 ], [ %4547, %4382 ]
  %4564 = phi float [ %4234, %4375 ], [ %4548, %4382 ]
  %4565 = phi float [ %4235, %4375 ], [ %4549, %4382 ]
  %4566 = phi float [ %4272, %4375 ], [ %4541, %4382 ]
  %4567 = phi float [ %4245, %4375 ], [ %4544, %4382 ]
  %4568 = select i1 %216, float 0.000000e+00, float %4562
  %4569 = call float @dx.op.dot3.f32(i32 55, float %4563, float %4564, float %4565, float %4553, float %4552, float %4551)  ; Dot3(ax,ay,az,bx,by,bz)
  %4570 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4571 = call float @dx.op.dot3.f32(i32 55, float %4556, float %4555, float %4554, float %4563, float %4564, float %4565)  ; Dot3(ax,ay,az,bx,by,bz)
  %4572 = fmul fast float %4571, 2.000000e+00
  %4573 = fmul fast float %4572, %4563
  %4574 = fmul fast float %4572, %4564
  %4575 = fmul fast float %4572, %4565
  %4576 = fsub fast float %4556, %4573
  %4577 = fsub fast float %4555, %4574
  %4578 = fsub fast float %4554, %4575
  %4579 = call float @dx.op.binary.f32(i32 36, float %4567, float 1.000000e+00)  ; FMin(a,b)
  %4580 = fsub fast float 1.000000e+00, %4579
  %4581 = bitcast float %4580 to i32
  %4582 = ashr i32 %4581, 1
  %4583 = add nsw i32 %4582, 532487669
  %4584 = bitcast i32 %4583 to float
  %4585 = fsub fast float 1.000000e+00, %4566
  %4586 = call float @dx.op.binary.f32(i32 35, float %4585, float 0x3F847AE140000000)  ; FMax(a,b)
  %4587 = fmul fast float %4586, %4586
  %4588 = fmul fast float %4587, %4587
  %4589 = call float @dx.op.unary.f32(i32 7, float %4570)  ; Saturate(value)
  %4590 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %42, float %4584, float %4588, float %4589, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4591 = extractvalue %dx.types.ResRet.f32 %4590, 0
  %4592 = fsub fast float 1.000000e+00, %4567
  %4593 = bitcast float %4592 to i32
  %4594 = sub nsw i32 2129859010, %4593
  %4595 = fsub fast float 1.000000e+00, %60
  %4596 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4597 = call float @dx.op.binary.f32(i32 35, float %4596, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4598 = fdiv fast float %4595, %4597
  %4599 = call float @dx.op.dot3.f32(i32 55, float %4563, float %4564, float %4565, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4600 = call float @dx.op.unary.f32(i32 7, float %4599)  ; Saturate(value)
  %4601 = fmul fast float %4600, 5.000000e-01
  %4602 = fadd fast float %4601, 5.000000e-01
  %4603 = fmul fast float %4602, %60
  %4604 = call float @dx.op.dot3.f32(i32 55, float %4563, float %4564, float %4565, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4606 = fmul fast float %4605, %4598
  %4607 = fadd fast float %4603, %4606
  %4608 = fsub fast float 5.000000e-01, %4601
  %4609 = fmul fast float %4608, %4557
  %4610 = fmul fast float %4608, %4558
  %4611 = fmul fast float %4608, %4559
  %4612 = fadd fast float %4607, %4609
  %4613 = fadd fast float %4607, %4610
  %4614 = fadd fast float %4607, %4611
  %4615 = call float @dx.op.dot3.f32(i32 55, float %4576, float %4577, float %4578, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4616 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4617 = fmul fast float %4616, 5.000000e-01
  %4618 = fadd fast float %4617, 5.000000e-01
  %4619 = fmul fast float %4618, %60
  %4620 = call float @dx.op.dot3.f32(i32 55, float %4576, float %4577, float %4578, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = fmul fast float %4621, %4598
  %4623 = fadd fast float %4619, %4622
  %4624 = fsub fast float 5.000000e-01, %4617
  %4625 = fmul fast float %4624, %4557
  %4626 = fmul fast float %4624, %4558
  %4627 = fmul fast float %4624, %4559
  %4628 = fadd fast float %4623, %4625
  %4629 = fadd fast float %4623, %4626
  %4630 = fadd fast float %4623, %4627
  %4631 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4634 = call float @dx.op.binary.f32(i32 36, float %4557, float %4633)  ; FMin(a,b)
  %4635 = fmul fast float %4634, %4580
  %4636 = fsub fast float 1.000000e+00, %4635
  %4637 = bitcast float %4636 to i32
  %4638 = sub nsw i32 2129859010, %4637
  %4639 = bitcast i32 %4638 to float
  %4640 = call float @dx.op.binary.f32(i32 36, float %4558, float %4633)  ; FMin(a,b)
  %4641 = fmul fast float %4640, %4580
  %4642 = fsub fast float 1.000000e+00, %4641
  %4643 = bitcast float %4642 to i32
  %4644 = sub nsw i32 2129859010, %4643
  %4645 = bitcast i32 %4644 to float
  %4646 = call float @dx.op.binary.f32(i32 36, float %4559, float %4633)  ; FMin(a,b)
  %4647 = fmul fast float %4646, %4580
  %4648 = fsub fast float 1.000000e+00, %4647
  %4649 = bitcast float %4648 to i32
  %4650 = sub nsw i32 2129859010, %4649
  %4651 = bitcast i32 %4650 to float
  %4652 = fmul fast float %4579, %61
  %4653 = fmul fast float %4652, %4612
  %4654 = fmul fast float %4653, %4639
  %4655 = fmul fast float %4579, %62
  %4656 = fmul fast float %4655, %4613
  %4657 = fmul fast float %4656, %4645
  %4658 = fmul fast float %4579, %63
  %4659 = fmul fast float %4658, %4614
  %4660 = fmul fast float %4659, %4651
  %4661 = call float @dx.op.binary.f32(i32 36, float %4560, float %4633)  ; FMin(a,b)
  %4662 = fmul fast float %4661, %4580
  %4663 = fsub fast float 1.000000e+00, %4662
  %4664 = bitcast float %4663 to i32
  %4665 = sub nsw i32 2129859010, %4664
  %4666 = bitcast i32 %4665 to float
  %4667 = call float @dx.op.binary.f32(i32 36, float %4561, float %4633)  ; FMin(a,b)
  %4668 = fmul fast float %4667, %4580
  %4669 = fsub fast float 1.000000e+00, %4668
  %4670 = bitcast float %4669 to i32
  %4671 = sub nsw i32 2129859010, %4670
  %4672 = bitcast i32 %4671 to float
  %4673 = call float @dx.op.binary.f32(i32 36, float %4568, float %4633)  ; FMin(a,b)
  %4674 = fmul fast float %4673, %4580
  %4675 = fsub fast float 1.000000e+00, %4674
  %4676 = bitcast float %4675 to i32
  %4677 = sub nsw i32 2129859010, %4676
  %4678 = bitcast i32 %4677 to float
  %4679 = fmul fast float %4652, %4628
  %4680 = fmul fast float %4679, %4666
  %4681 = fmul fast float %4655, %4629
  %4682 = fmul fast float %4681, %4672
  %4683 = fmul fast float %4658, %4630
  %4684 = fmul fast float %4683, %4678
  %4685 = call float @dx.op.dot3.f32(i32 55, float %4654, float %4657, float %4660, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4686 = select i1 %216, float 0.000000e+00, float %4654
  %4687 = select i1 %216, float %4685, float %4657
  %4688 = select i1 %216, float 0.000000e+00, float %4660
  %4689 = call float @dx.op.dot3.f32(i32 55, float %4680, float %4682, float %4684, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4690 = select i1 %216, float 0.000000e+00, float %4680
  %4691 = select i1 %216, float %4689, float %4682
  %4692 = select i1 %216, float 0.000000e+00, float %4684
  %4693 = fmul fast float %4570, 9.843750e-01
  %4694 = fmul fast float %4566, 9.843750e-01
  %4695 = fadd fast float %4693, 7.812500e-03
  %4696 = fadd fast float %4694, 7.812500e-03
  %4697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %4695, float %4696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4698 = extractvalue %dx.types.ResRet.f32 %4697, 2
  %4699 = extractvalue %dx.types.ResRet.f32 %4697, 3
  %4700 = fmul fast float %4698, %4560
  %4701 = fmul fast float %4698, %4561
  %4702 = fmul fast float %4698, %4568
  %4703 = fadd fast float %4700, %4699
  %4704 = fadd fast float %4701, %4699
  %4705 = fadd fast float %4702, %4699
  %4706 = fcmp fast ogt float %4246, 0.000000e+00
  br i1 %4706, label %4707, label %4733

; <label>:4707                                    ; preds = %4550
  %4708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %4246, float %4570, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4709 = extractvalue %dx.types.ResRet.f32 %4708, 0
  %4710 = extractvalue %dx.types.ResRet.f32 %4708, 1
  %4711 = extractvalue %dx.types.ResRet.f32 %4708, 2
  %4712 = fadd fast float %4709, -5.000000e-01
  %4713 = fadd fast float %4710, -5.000000e-01
  %4714 = fadd fast float %4711, -5.000000e-01
  %4715 = fsub fast float 1.000000e+00, %4560
  %4716 = fsub fast float 1.000000e+00, %4561
  %4717 = fsub fast float 1.000000e+00, %4568
  %4718 = fmul fast float %4560, 4.000000e+00
  %4719 = fmul fast float %4718, %4715
  %4720 = fmul fast float %4719, %4712
  %4721 = fmul fast float %4561, 4.000000e+00
  %4722 = fmul fast float %4721, %4716
  %4723 = fmul fast float %4722, %4713
  %4724 = fmul fast float %4568, 4.000000e+00
  %4725 = fmul fast float %4724, %4717
  %4726 = fmul fast float %4725, %4714
  %4727 = fadd fast float %4720, %4703
  %4728 = fadd fast float %4723, %4704
  %4729 = fadd fast float %4726, %4705
  %4730 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4731 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4732 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  br label %4733

; <label>:4733                                    ; preds = %4707, %4550
  %4734 = phi float [ %4730, %4707 ], [ %4703, %4550 ]
  %4735 = phi float [ %4731, %4707 ], [ %4704, %4550 ]
  %4736 = phi float [ %4732, %4707 ], [ %4705, %4550 ]
  %4737 = call float @dx.op.binary.f32(i32 35, float %4735, float %4736)  ; FMax(a,b)
  %4738 = call float @dx.op.binary.f32(i32 35, float %4734, float %4737)  ; FMax(a,b)
  %4739 = fsub fast float 1.000000e+00, %4738
  %4740 = fmul fast float %4738, %4566
  %4741 = fadd fast float %4740, %4566
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 2
  %4744 = extractvalue %dx.types.CBufRet.f32 %4742, 3
  %4745 = fmul fast float %4741, %4743
  %4746 = fadd fast float %4745, %4744
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = fsub fast float 1.000000e+00, %4591
  %4749 = fadd fast float %4748, %4747
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4751 = fcmp fast olt float %4750, 1.000000e+00
  br i1 %4751, label %4752, label %5200

; <label>:4752                                    ; preds = %4733
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 2
  %4755 = extractvalue %dx.types.CBufRet.f32 %4753, 3
  %4756 = fmul fast float %4754, %92
  %4757 = fmul fast float %4755, %93
  %4758 = fptoui float %4756 to i32
  %4759 = fptoui float %4757 to i32
  %4760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4761 = extractvalue %dx.types.CBufRet.f32 %4760, 0
  %4762 = extractvalue %dx.types.CBufRet.f32 %4760, 2
  %4763 = extractvalue %dx.types.CBufRet.f32 %4760, 3
  %4764 = fadd fast float %80, -4.000000e+00
  %4765 = call float @dx.op.binary.f32(i32 35, float %4764, float 0.000000e+00)  ; FMax(a,b)
  %4766 = fadd fast float %4765, %4761
  %4767 = fmul fast float %4766, %4762
  %4768 = call float @dx.op.unary.f32(i32 23, float %4767)  ; Log(value)
  %4769 = fmul fast float %4768, %4763
  %4770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4770, 2
  %4772 = fmul fast float %4769, %4771
  %4773 = call float @dx.op.unary.f32(i32 7, float %4772)  ; Saturate(value)
  %4774 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4775 = extractvalue %dx.types.CBufRet.i32 %4774, 1
  %4776 = add i32 %4775, -1
  %4777 = uitofp i32 %4775 to float
  %4778 = fmul fast float %4777, %4773
  %4779 = fptoui float %4778 to i32
  %4780 = call i32 @dx.op.binary.i32(i32 40, i32 %4779, i32 %4776)  ; UMin(a,b)
  %4781 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4782 = extractvalue %dx.types.CBufRet.i32 %4781, 2
  %4783 = extractvalue %dx.types.CBufRet.i32 %4781, 3
  %4784 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4759, i32 %4782, i32 %4758)  ; UMad(a,b,c)
  %4785 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4780, i32 %4783, i32 %4784)  ; UMad(a,b,c)
  %4786 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %4787 = fptoui float %4786 to i32
  %4788 = lshr i32 %4787, 5
  %4789 = call i32 @dx.op.binary.i32(i32 40, i32 %4788, i32 8191)  ; UMin(a,b)
  br i1 false, label %4790, label %4797

; <label>:4790                                    ; preds = %4752
  %4791 = fadd fast float 0.000000e+00, %4578
  %4792 = call float @dx.op.dot3.f32(i32 55, float %4576, float %4577, float %4791, float %4576, float %4577, float %4791)  ; Dot3(ax,ay,az,bx,by,bz)
  %4793 = call float @dx.op.unary.f32(i32 25, float %4792)  ; Rsqrt(value)
  %4794 = fmul fast float %4793, %4576
  %4795 = fmul fast float %4793, %4577
  %4796 = fmul fast float %4791, %4793
  br label %4797

; <label>:4797                                    ; preds = %4790, %4752
  %4798 = phi float [ %4794, %4790 ], [ %4576, %4752 ]
  %4799 = phi float [ %4795, %4790 ], [ %4577, %4752 ]
  %4800 = phi float [ %4796, %4790 ], [ %4578, %4752 ]
  %4801 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4802 = extractvalue %dx.types.CBufRet.i32 %4801, 2
  %4803 = add nsw i32 %4802, -1
  %4804 = call i32 @dx.op.binary.i32(i32 37, i32 %4803, i32 0)  ; IMax(a,b)
  %4805 = shl i32 %4789, 2
  %4806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4805, i32 undef)  ; BufferLoad(srv,index,wot)
  %4807 = extractvalue %dx.types.ResRet.i32 %4806, 0
  %4808 = lshr i32 %4807, 16
  %4809 = and i32 %4807, 65535
  %4810 = lshr i32 %4807, 21
  %4811 = lshr i32 %4809, 5
  %4812 = call i32 @dx.op.binary.i32(i32 40, i32 %4811, i32 %4804)  ; UMin(a,b)
  %4813 = icmp ugt i32 %4810, %4812
  br i1 %4813, label %5176, label %4814

; <label>:4814                                    ; preds = %4797
  br label %4815

; <label>:4815                                    ; preds = %5168, %4814
  %4816 = phi float [ %5169, %5168 ], [ 0.000000e+00, %4814 ]
  %4817 = phi float [ %5170, %5168 ], [ 0.000000e+00, %4814 ]
  %4818 = phi float [ %5171, %5168 ], [ 0.000000e+00, %4814 ]
  %4819 = phi float [ %5172, %5168 ], [ 1.000000e+00, %4814 ]
  %4820 = phi i32 [ %5173, %5168 ], [ %4810, %4814 ]
  %4821 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.i32 %4821, 2
  %4823 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4785, i32 %4822, i32 %4820)  ; UMad(a,b,c)
  %4824 = shl i32 %4823, 2
  %4825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %4824, i32 undef)  ; BufferLoad(srv,index,wot)
  %4826 = extractvalue %dx.types.ResRet.i32 %4825, 0
  %4827 = shl i32 %4820, 5
  %4828 = sub nsw i32 %4808, %4827
  %4829 = call i32 @dx.op.binary.i32(i32 37, i32 %4828, i32 0)  ; IMax(a,b)
  %4830 = call i32 @dx.op.binary.i32(i32 38, i32 %4829, i32 31)  ; IMin(a,b)
  %4831 = sub nsw i32 1, %4808
  %4832 = add nsw i32 %4831, %4809
  %4833 = call i32 @dx.op.binary.i32(i32 37, i32 %4832, i32 0)  ; IMax(a,b)
  %4834 = call i32 @dx.op.binary.i32(i32 38, i32 %4833, i32 32)  ; IMin(a,b)
  %4835 = and i32 %4834, 31
  %4836 = shl i32 -1, %4835
  %4837 = xor i32 %4836, -1
  %4838 = and i32 %4830, 31
  %4839 = shl i32 %4837, %4838
  %4840 = icmp eq i32 %4834, 32
  %4841 = select i1 %4840, i32 -1, i32 %4839
  %4842 = and i32 %4841, %4826
  %4843 = icmp eq i32 %4842, 0
  br i1 %4843, label %5168, label %4844

; <label>:4844                                    ; preds = %4815
  br label %4845

; <label>:4845                                    ; preds = %4951, %4844
  %4846 = phi float [ %4952, %4951 ], [ %4816, %4844 ]
  %4847 = phi float [ %4953, %4951 ], [ %4817, %4844 ]
  %4848 = phi float [ %4954, %4951 ], [ %4818, %4844 ]
  %4849 = phi float [ %4955, %4951 ], [ %4819, %4844 ]
  %4850 = phi i32 [ %4855, %4951 ], [ %4842, %4844 ]
  %4851 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4850)  ; FirstbitLo(value)
  %4852 = add i32 %4851, %4827
  %4853 = and i32 %4851, 31
  %4854 = shl i32 1, %4853
  %4855 = xor i32 %4854, %4850
  %4856 = mul i32 %4852, 72
  %4857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %4856, i32 undef)  ; BufferLoad(srv,index,wot)
  %4858 = extractvalue %dx.types.ResRet.f32 %4857, 0
  %4859 = extractvalue %dx.types.ResRet.f32 %4857, 1
  %4860 = extractvalue %dx.types.ResRet.f32 %4857, 2
  %4861 = add i32 %4856, 12
  %4862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4861, i32 undef)  ; BufferLoad(srv,index,wot)
  %4863 = extractvalue %dx.types.ResRet.i32 %4862, 0
  %4864 = add i32 %4856, 16
  %4865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %4864, i32 undef)  ; BufferLoad(srv,index,wot)
  %4866 = extractvalue %dx.types.ResRet.f32 %4865, 0
  %4867 = extractvalue %dx.types.ResRet.f32 %4865, 1
  %4868 = extractvalue %dx.types.ResRet.f32 %4865, 2
  %4869 = add i32 %4856, 28
  %4870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %4869, i32 undef)  ; BufferLoad(srv,index,wot)
  %4871 = extractvalue %dx.types.ResRet.f32 %4870, 0
  %4872 = add i32 %4856, 32
  %4873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %4872, i32 undef)  ; BufferLoad(srv,index,wot)
  %4874 = extractvalue %dx.types.ResRet.f32 %4873, 0
  %4875 = extractvalue %dx.types.ResRet.f32 %4873, 1
  %4876 = extractvalue %dx.types.ResRet.f32 %4873, 2
  %4877 = extractvalue %dx.types.ResRet.f32 %4873, 3
  %4878 = add i32 %4856, 48
  %4879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %4878, i32 undef)  ; BufferLoad(srv,index,wot)
  %4880 = extractvalue %dx.types.ResRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.ResRet.f32 %4879, 1
  %4882 = add i32 %4856, 56
  %4883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %4882, i32 undef)  ; BufferLoad(srv,index,wot)
  %4884 = extractvalue %dx.types.ResRet.f32 %4883, 0
  %4885 = extractvalue %dx.types.ResRet.f32 %4883, 1
  %4886 = add i32 %4856, 64
  %4887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %4886, i32 undef)  ; BufferLoad(srv,index,wot)
  %4888 = extractvalue %dx.types.ResRet.f32 %4887, 0
  %4889 = extractvalue %dx.types.ResRet.f32 %4887, 1
  %4890 = mul i32 %4852, 60
  %4891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %4890, i32 undef)  ; BufferLoad(srv,index,wot)
  %4892 = extractvalue %dx.types.ResRet.f32 %4891, 0
  %4893 = extractvalue %dx.types.ResRet.f32 %4891, 1
  %4894 = extractvalue %dx.types.ResRet.f32 %4891, 2
  %4895 = add i32 %4890, 12
  %4896 = add i32 %4890, 48
  %4897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %4896, i32 undef)  ; BufferLoad(srv,index,wot)
  %4898 = extractvalue %dx.types.ResRet.f32 %4897, 0
  %4899 = extractvalue %dx.types.ResRet.f32 %4897, 1
  %4900 = extractvalue %dx.types.ResRet.f32 %4897, 2
  %4901 = and i32 %4863, 32767
  %4902 = bitcast float %4858 to i32
  %4903 = icmp eq i32 %4902, -1
  %4904 = bitcast float %4859 to i32
  %4905 = and i32 %4863, 32768
  %4906 = icmp ne i32 %4905, 0
  %4907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4908 = extractvalue %dx.types.CBufRet.f32 %4907, 0
  %4909 = extractvalue %dx.types.CBufRet.f32 %4907, 1
  %4910 = extractvalue %dx.types.CBufRet.f32 %4907, 2
  %4911 = fsub fast float %4892, %4908
  %4912 = fsub fast float %4893, %4909
  %4913 = fsub fast float %4894, %4910
  %4914 = fsub fast float %155, %4911
  %4915 = fsub fast float %156, %4912
  %4916 = fsub fast float %157, %4913
  %4917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %4895, i32 undef)  ; BufferLoad(srv,index,wot)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 0
  %4919 = extractvalue %dx.types.ResRet.f32 %4917, 1
  %4920 = extractvalue %dx.types.ResRet.f32 %4917, 2
  %4921 = call float @dx.op.dot3.f32(i32 55, float %4914, float %4915, float %4916, float %4918, float %4919, float %4920)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = add i32 %4890, 24
  %4923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %4922, i32 undef)  ; BufferLoad(srv,index,wot)
  %4924 = extractvalue %dx.types.ResRet.f32 %4923, 0
  %4925 = extractvalue %dx.types.ResRet.f32 %4923, 1
  %4926 = extractvalue %dx.types.ResRet.f32 %4923, 2
  %4927 = call float @dx.op.dot3.f32(i32 55, float %4914, float %4915, float %4916, float %4924, float %4925, float %4926)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = add i32 %4890, 36
  %4929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %4928, i32 undef)  ; BufferLoad(srv,index,wot)
  %4930 = extractvalue %dx.types.ResRet.f32 %4929, 0
  %4931 = extractvalue %dx.types.ResRet.f32 %4929, 1
  %4932 = extractvalue %dx.types.ResRet.f32 %4929, 2
  %4933 = call float @dx.op.dot3.f32(i32 55, float %4914, float %4915, float %4916, float %4930, float %4931, float %4932)  ; Dot3(ax,ay,az,bx,by,bz)
  %4934 = call float @dx.op.unary.f32(i32 6, float %4921)  ; FAbs(value)
  %4935 = call float @dx.op.unary.f32(i32 6, float %4927)  ; FAbs(value)
  %4936 = call float @dx.op.unary.f32(i32 6, float %4933)  ; FAbs(value)
  %4937 = fsub fast float %4898, %4934
  %4938 = fsub fast float %4899, %4935
  %4939 = fsub fast float %4900, %4936
  %4940 = fmul fast float %4937, %4866
  %4941 = fmul fast float %4938, %4867
  %4942 = fmul fast float %4939, %4868
  %4943 = call float @dx.op.binary.f32(i32 36, float %4941, float %4942)  ; FMin(a,b)
  %4944 = call float @dx.op.binary.f32(i32 36, float %4940, float %4943)  ; FMin(a,b)
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = call float @dx.op.binary.f32(i32 36, float %4849, float %4945)  ; FMin(a,b)
  %4947 = uitofp i1 %4906 to float
  %4948 = fsub fast float 1.000000e+00, %4947
  %4949 = fmul fast float %4946, %4948
  %4950 = fcmp fast ogt float %4949, 0.000000e+00
  br i1 %4950, label %4957, label %4951

; <label>:4951                                    ; preds = %5099, %4845
  %4952 = phi float [ %5163, %5099 ], [ %4846, %4845 ]
  %4953 = phi float [ %5164, %5099 ], [ %4847, %4845 ]
  %4954 = phi float [ %5165, %5099 ], [ %4848, %4845 ]
  %4955 = phi float [ %5166, %5099 ], [ %4849, %4845 ]
  %4956 = icmp eq i32 %4850, %4854
  br i1 %4956, label %5167, label %4845

; <label>:4957                                    ; preds = %4845
  br i1 %4903, label %5015, label %4958

; <label>:4958                                    ; preds = %4957
  %4959 = fsub fast float -0.000000e+00, %4918
  %4960 = fsub fast float -0.000000e+00, %4919
  %4961 = fsub fast float -0.000000e+00, %4920
  %4962 = call float @dx.op.dot3.f32(i32 55, float %4798, float %4799, float %4800, float %4959, float %4960, float %4961)  ; Dot3(ax,ay,az,bx,by,bz)
  %4963 = fsub fast float -0.000000e+00, %4962
  %4964 = call float @dx.op.dot3.f32(i32 55, float %4914, float %4915, float %4916, float %4959, float %4960, float %4961)  ; Dot3(ax,ay,az,bx,by,bz)
  %4965 = fadd fast float %4964, %4881
  %4966 = fadd fast float %4880, %4964
  %4967 = fsub fast float -0.000000e+00, %4966
  %4968 = fcmp ogt float %4962, -0.000000e+00
  %4969 = select i1 %4968, float %4967, float %4965
  %4970 = call float @dx.op.unary.f32(i32 6, float %4963)  ; FAbs(value)
  %4971 = fdiv fast float 1.000000e+00, %4970
  %4972 = fmul fast float %4969, %4971
  %4973 = call float @dx.op.binary.f32(i32 35, float %4972, float 0.000000e+00)  ; FMax(a,b)
  %4974 = fsub fast float -0.000000e+00, %4924
  %4975 = fsub fast float -0.000000e+00, %4925
  %4976 = fsub fast float -0.000000e+00, %4926
  %4977 = call float @dx.op.dot3.f32(i32 55, float %4798, float %4799, float %4800, float %4974, float %4975, float %4976)  ; Dot3(ax,ay,az,bx,by,bz)
  %4978 = fsub fast float -0.000000e+00, %4977
  %4979 = call float @dx.op.dot3.f32(i32 55, float %4914, float %4915, float %4916, float %4974, float %4975, float %4976)  ; Dot3(ax,ay,az,bx,by,bz)
  %4980 = fadd fast float %4979, %4885
  %4981 = fadd fast float %4884, %4979
  %4982 = fsub fast float -0.000000e+00, %4981
  %4983 = fcmp ogt float %4977, -0.000000e+00
  %4984 = select i1 %4983, float %4982, float %4980
  %4985 = call float @dx.op.unary.f32(i32 6, float %4978)  ; FAbs(value)
  %4986 = fdiv fast float 1.000000e+00, %4985
  %4987 = fmul fast float %4984, %4986
  %4988 = call float @dx.op.binary.f32(i32 35, float %4987, float 0.000000e+00)  ; FMax(a,b)
  %4989 = fsub fast float -0.000000e+00, %4930
  %4990 = fsub fast float -0.000000e+00, %4931
  %4991 = fsub fast float -0.000000e+00, %4932
  %4992 = call float @dx.op.dot3.f32(i32 55, float %4798, float %4799, float %4800, float %4989, float %4990, float %4991)  ; Dot3(ax,ay,az,bx,by,bz)
  %4993 = fsub fast float -0.000000e+00, %4992
  %4994 = call float @dx.op.dot3.f32(i32 55, float %4914, float %4915, float %4916, float %4989, float %4990, float %4991)  ; Dot3(ax,ay,az,bx,by,bz)
  %4995 = fadd fast float %4994, %4889
  %4996 = fadd fast float %4888, %4994
  %4997 = fsub fast float -0.000000e+00, %4996
  %4998 = fcmp ogt float %4992, -0.000000e+00
  %4999 = select i1 %4998, float %4997, float %4995
  %5000 = call float @dx.op.unary.f32(i32 6, float %4993)  ; FAbs(value)
  %5001 = fdiv fast float 1.000000e+00, %5000
  %5002 = fmul fast float %4999, %5001
  %5003 = call float @dx.op.binary.f32(i32 35, float %5002, float 0.000000e+00)  ; FMax(a,b)
  %5004 = call float @dx.op.binary.f32(i32 36, float %4988, float %5003)  ; FMin(a,b)
  %5005 = call float @dx.op.binary.f32(i32 36, float %4973, float %5004)  ; FMin(a,b)
  %5006 = fmul fast float %5005, %4798
  %5007 = fmul fast float %5005, %4799
  %5008 = fmul fast float %5005, %4800
  %5009 = fadd fast float %5006, %155
  %5010 = fadd fast float %5007, %156
  %5011 = fadd fast float %5008, %157
  %5012 = fsub fast float %5009, %4858
  %5013 = fsub fast float %5010, %4859
  %5014 = fsub fast float %5011, %4860
  br label %5022

; <label>:5015                                    ; preds = %4957
  %5016 = fmul fast float %4798, 8.096000e+03
  %5017 = fmul fast float %4799, 8.096000e+03
  %5018 = fmul fast float %4800, 8.096000e+03
  %5019 = fadd fast float %5016, %155
  %5020 = fadd fast float %5017, %156
  %5021 = fadd fast float %5018, %157
  br label %5022

; <label>:5022                                    ; preds = %5015, %4958
  %5023 = phi float [ %4798, %5015 ], [ %5012, %4958 ]
  %5024 = phi float [ %4799, %5015 ], [ %5013, %4958 ]
  %5025 = phi float [ %4800, %5015 ], [ %5014, %4958 ]
  %5026 = phi float [ %5019, %5015 ], [ %5009, %4958 ]
  %5027 = phi float [ %5020, %5015 ], [ %5010, %4958 ]
  %5028 = phi float [ %5021, %5015 ], [ %5011, %4958 ]
  %5029 = fcmp fast olt float %4877, 1.000000e+00
  br i1 %5029, label %5030, label %5061, !dx.controlflow.hints !84

; <label>:5030                                    ; preds = %5022
  %5031 = fmul fast float %5025, %4875
  %5032 = fmul fast float %5024, %4876
  %5033 = fsub fast float %5031, %5032
  %5034 = fmul fast float %5023, %4876
  %5035 = fmul fast float %5025, %4874
  %5036 = fsub fast float %5034, %5035
  %5037 = fmul fast float %5024, %4874
  %5038 = fmul fast float %5023, %4875
  %5039 = fsub fast float %5037, %5038
  %5040 = fmul fast float %5033, 2.000000e+00
  %5041 = fmul fast float %5036, 2.000000e+00
  %5042 = fmul fast float %5039, 2.000000e+00
  %5043 = fmul fast float %5040, %4877
  %5044 = fmul fast float %5041, %4877
  %5045 = fmul fast float %5042, %4877
  %5046 = fmul fast float %5042, %4875
  %5047 = fmul fast float %5041, %4876
  %5048 = fmul fast float %5040, %4876
  %5049 = fmul fast float %5042, %4874
  %5050 = fmul fast float %5041, %4874
  %5051 = fmul fast float %5040, %4875
  %5052 = fadd fast float %5046, %5023
  %5053 = fadd fast float %5052, %5043
  %5054 = fsub fast float %5053, %5047
  %5055 = fsub fast float %5024, %5049
  %5056 = fadd fast float %5055, %5044
  %5057 = fadd fast float %5056, %5048
  %5058 = fadd fast float %5045, %5025
  %5059 = fsub fast float %5058, %5051
  %5060 = fadd fast float %5059, %5050
  br label %5061

; <label>:5061                                    ; preds = %5030, %5022
  %5062 = phi float [ %5054, %5030 ], [ %5023, %5022 ]
  %5063 = phi float [ %5057, %5030 ], [ %5024, %5022 ]
  %5064 = phi float [ %5060, %5030 ], [ %5025, %5022 ]
  br i1 %4903, label %5096, label %5065

; <label>:5065                                    ; preds = %5061
  %5066 = fmul fast float %4566, 0x400187C840000000
  %5067 = fadd fast float %5066, 0xC00EFC2120000000
  %5068 = fmul fast float %5067, %4566
  %5069 = fadd fast float %5068, 0x3FE5D16340000000
  %5070 = fmul fast float %5069, %4566
  %5071 = fadd fast float %5070, 1.000000e+00
  %5072 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  %5073 = fsub fast float %5026, %155
  %5074 = fsub fast float %5027, %156
  %5075 = fsub fast float %5028, %157
  %5076 = fsub fast float %5026, %4858
  %5077 = fsub fast float %5027, %4859
  %5078 = fsub fast float %5028, %4860
  %5079 = call float @dx.op.dot3.f32(i32 55, float %5073, float %5074, float %5075, float %5073, float %5074, float %5075)  ; Dot3(ax,ay,az,bx,by,bz)
  %5080 = call float @dx.op.dot3.f32(i32 55, float %5076, float %5077, float %5078, float %5076, float %5077, float %5078)  ; Dot3(ax,ay,az,bx,by,bz)
  %5081 = fadd fast float %5080, 0x3EE4F8B580000000
  %5082 = fdiv fast float %5079, %5081
  %5083 = bitcast float %5082 to i32
  %5084 = ashr i32 %5083, 1
  %5085 = add nsw i32 %5084, 532487669
  %5086 = bitcast i32 %5085 to float
  %5087 = fmul fast float %5086, %5072
  %5088 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5089 = fmul fast float %5088, 0x4009981AE0000000
  %5090 = fsub fast float 0x40111BBD80000000, %5089
  %5091 = fmul fast float %5090, %5088
  %5092 = fadd fast float %5091, 0xC0009F6020000000
  %5093 = fmul fast float %5092, %5088
  %5094 = fadd fast float %5093, 1.000000e+00
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  br label %5099

; <label>:5096                                    ; preds = %5061
  %5097 = icmp ne i32 %4904, -1
  %5098 = zext i1 %5097 to i32
  br label %5099

; <label>:5099                                    ; preds = %5096, %5065
  %5100 = phi float [ %4566, %5096 ], [ %5095, %5065 ]
  %5101 = phi i32 [ %5098, %5096 ], [ 0, %5065 ]
  %5102 = fmul float %5100, 5.000000e+00
  %5103 = fsub float 5.000000e+00, %5102
  %5104 = icmp ne i32 %5101, 0
  %5105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5106 = extractvalue %dx.types.CBufRet.f32 %5105, 3
  %5107 = fadd fast float %5106, %5103
  %5108 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5107)  ; FMax(a,b)
  %5109 = call float @dx.op.unary.f32(i32 6, float %5062)  ; FAbs(value)
  %5110 = call float @dx.op.unary.f32(i32 6, float %5063)  ; FAbs(value)
  %5111 = fadd fast float %5110, %5109
  %5112 = call float @dx.op.unary.f32(i32 6, float %5064)  ; FAbs(value)
  %5113 = fadd fast float %5111, %5112
  %5114 = fcmp fast oeq float %5113, 0.000000e+00
  %5115 = fdiv fast float 1.000000e+00, %5113
  %5116 = select i1 %5114, float 1.000000e+00, float %5115
  %5117 = fmul fast float %5116, %5062
  %5118 = fmul fast float %5116, %5063
  %5119 = call float @dx.op.unary.f32(i32 6, float %5118)  ; FAbs(value)
  %5120 = call float @dx.op.unary.f32(i32 6, float %5117)  ; FAbs(value)
  %5121 = fsub fast float 1.000000e+00, %5119
  %5122 = fsub fast float 1.000000e+00, %5120
  %5123 = fcmp fast oge float %5117, 0.000000e+00
  %5124 = fcmp fast oge float %5118, 0.000000e+00
  %5125 = select i1 %5123, float 1.000000e+00, float -1.000000e+00
  %5126 = select i1 %5124, float 1.000000e+00, float -1.000000e+00
  %5127 = fcmp fast ole float %5064, 0.000000e+00
  %5128 = fmul fast float %5125, %5121
  %5129 = fmul fast float %5126, %5122
  %5130 = select i1 %5127, float %5128, float %5117
  %5131 = select i1 %5127, float %5129, float %5118
  %5132 = fmul fast float %5130, 5.000000e-01
  %5133 = fmul fast float %5131, 5.000000e-01
  %5134 = fadd fast float %5132, 5.000000e-01
  %5135 = fadd fast float %5133, 5.000000e-01
  %5136 = uitofp i32 %4901 to float
  %5137 = call float @dx.op.binary.f32(i32 36, float %5108, float 3.000000e+00)  ; FMin(a,b)
  %5138 = fadd fast float %5137, 2.000000e+00
  %5139 = call float @dx.op.unary.f32(i32 21, float %5138)  ; Exp(value)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5105, 1
  %5141 = fmul fast float %5140, %5139
  %5142 = fmul fast float %5141, 2.000000e+00
  %5143 = fsub fast float 1.000000e+00, %5142
  %5144 = fmul fast float %5134, %5143
  %5145 = fmul fast float %5135, %5143
  %5146 = fadd fast float %5144, %5141
  %5147 = fadd fast float %5145, %5141
  %5148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5146, float %5147, float %5136, float undef, i32 0, i32 0, i32 undef, float %5108)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5149 = extractvalue %dx.types.ResRet.f32 %5148, 0
  %5150 = extractvalue %dx.types.ResRet.f32 %5148, 1
  %5151 = extractvalue %dx.types.ResRet.f32 %5148, 2
  %5152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5152, 3
  %5154 = fmul fast float %5153, %4871
  %5155 = call float @dx.op.binary.f32(i32 36, float %4631, float %5154)  ; FMin(a,b)
  %5156 = select i1 %5104, float %5155, float %5154
  %5157 = fmul fast float %5149, %4949
  %5158 = fmul fast float %5157, %5156
  %5159 = fmul fast float %5150, %4949
  %5160 = fmul fast float %5159, %5156
  %5161 = fmul fast float %5151, %4949
  %5162 = fmul fast float %5161, %5156
  %5163 = fadd fast float %5158, %4846
  %5164 = fadd fast float %5160, %4847
  %5165 = fadd fast float %5162, %4848
  %5166 = fsub fast float %4849, %4949
  br label %4951

; <label>:5167                                    ; preds = %4951
  br label %5168

; <label>:5168                                    ; preds = %5167, %4815
  %5169 = phi float [ %4816, %4815 ], [ %4952, %5167 ]
  %5170 = phi float [ %4817, %4815 ], [ %4953, %5167 ]
  %5171 = phi float [ %4818, %4815 ], [ %4954, %5167 ]
  %5172 = phi float [ %4819, %4815 ], [ %4955, %5167 ]
  %5173 = add i32 %4820, 1
  %5174 = icmp ugt i32 %5173, %4812
  br i1 %5174, label %5175, label %4815, !llvm.loop !85

; <label>:5175                                    ; preds = %5168
  br label %5176

; <label>:5176                                    ; preds = %5175, %4797
  %5177 = phi float [ 0.000000e+00, %4797 ], [ %5169, %5175 ]
  %5178 = phi float [ 0.000000e+00, %4797 ], [ %5170, %5175 ]
  %5179 = phi float [ 0.000000e+00, %4797 ], [ %5171, %5175 ]
  %5180 = call float @dx.op.dot3.f32(i32 55, float %5177, float %5178, float %5179, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5181 = select i1 %216, float 0.000000e+00, float %5177
  %5182 = select i1 %216, float %5180, float %5178
  %5183 = select i1 %216, float 0.000000e+00, float %5179
  %5184 = fcmp fast olt float %4750, 0.000000e+00
  %5185 = call float @dx.op.unary.f32(i32 6, float %4750)  ; FAbs(value)
  %5186 = fmul fast float %5185, %4690
  %5187 = fmul fast float %5185, %4691
  %5188 = fmul fast float %5185, %4692
  %5189 = select i1 %5184, float %4690, float %5186
  %5190 = select i1 %5184, float %4691, float %5187
  %5191 = select i1 %5184, float %4692, float %5188
  %5192 = fsub fast float 1.000000e+00, %5185
  %5193 = call float @dx.op.unary.f32(i32 7, float %5192)  ; Saturate(value)
  %5194 = fmul fast float %5193, %5181
  %5195 = fmul fast float %5193, %5182
  %5196 = fmul fast float %5193, %5183
  %5197 = fadd fast float %5189, %5194
  %5198 = fadd fast float %5190, %5195
  %5199 = fadd fast float %5191, %5196
  br label %5200

; <label>:5200                                    ; preds = %5176, %4733
  %5201 = phi float [ %4690, %4733 ], [ %5197, %5176 ]
  %5202 = phi float [ %4691, %4733 ], [ %5198, %5176 ]
  %5203 = phi float [ %4692, %4733 ], [ %5199, %5176 ]
  %5204 = fmul fast float %4739, %4686
  %5205 = fmul fast float %4739, %4687
  %5206 = fmul fast float %4739, %4688
  %5207 = call float @dx.op.dot3.f32(i32 55, float %4557, float %4558, float %4559, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5208 = fcmp fast ogt float %5207, 0x3E7FF19E20000000
  %5209 = fdiv fast float 1.000000e+00, %5207
  %5210 = select i1 %5208, float %5209, float 0.000000e+00
  %5211 = fmul fast float %5210, %4557
  %5212 = fmul fast float %5210, %4558
  %5213 = fmul fast float %5210, %4559
  %5214 = fadd fast float %5211, -1.000000e+00
  %5215 = fadd fast float %5212, -1.000000e+00
  %5216 = fadd fast float %5213, -1.000000e+00
  %5217 = fmul fast float %5214, 5.000000e-01
  %5218 = fmul fast float %5215, 5.000000e-01
  %5219 = fmul fast float %5216, 5.000000e-01
  %5220 = fadd fast float %5217, 1.000000e+00
  %5221 = fadd fast float %5218, 1.000000e+00
  %5222 = fadd fast float %5219, 1.000000e+00
  %5223 = fmul fast float %5201, %4734
  %5224 = fmul fast float %5202, %4735
  %5225 = fmul fast float %5203, %4736
  %5226 = fsub fast float 1.000000e+00, %4570
  %5227 = bitcast float %5226 to i32
  %5228 = sitofp i32 %5227 to float
  %5229 = fmul fast float %5228, 5.000000e+00
  %5230 = fadd fast float %5229, 0xC1EFBF8940000000
  %5231 = fptosi float %5230 to i32
  %5232 = bitcast i32 %5231 to float
  %5233 = fmul fast float %5232, %4247
  %5234 = fmul fast float %4686, %5233
  %5235 = fmul fast float %5234, %4739
  %5236 = fmul fast float %5235, %5220
  %5237 = fmul fast float %4687, %5233
  %5238 = fmul fast float %5237, %4739
  %5239 = fmul fast float %5238, %5221
  %5240 = fmul fast float %4688, %5233
  %5241 = fmul fast float %5240, %4739
  %5242 = fmul fast float %5241, %5222
  %5243 = fmul fast float %5204, %4243
  %5244 = fmul fast float %5205, %4243
  %5245 = fmul fast float %5206, %4243
  %5246 = fadd fast float %5223, %4239
  %5247 = fadd fast float %5246, %5236
  %5248 = fmul fast float %5247, %4243
  %5249 = fadd fast float %5224, %4240
  %5250 = fadd fast float %5249, %5239
  %5251 = fmul fast float %5250, %4243
  %5252 = fadd fast float %5225, %4241
  %5253 = fadd fast float %5252, %5242
  %5254 = fmul fast float %5253, %4243
  %5255 = bitcast i32 %4594 to float
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 3
  %5258 = fcmp fast oeq float %5257, 0.000000e+00
  br i1 %5258, label %6725, label %5259

; <label>:5259                                    ; preds = %5200
  %5260 = extractvalue %dx.types.CBufRet.f32 %5256, 0
  %5261 = extractvalue %dx.types.CBufRet.f32 %5256, 1
  %5262 = extractvalue %dx.types.CBufRet.f32 %5256, 2
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.CBufRet.f32 %5263, 1
  %5266 = extractvalue %dx.types.CBufRet.f32 %5263, 2
  %5267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5268 = extractvalue %dx.types.CBufRet.f32 %5267, 0
  %5269 = extractvalue %dx.types.CBufRet.f32 %5267, 1
  %5270 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5271 = select i1 %216, float %5268, float %5264
  %5272 = select i1 %216, float %5270, float %5265
  %5273 = select i1 %216, float %5269, float %5266
  %5274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5275 = extractvalue %dx.types.CBufRet.f32 %5274, 2
  %5276 = fmul fast float %5275, %99
  %5277 = fmul fast float %5275, %100
  %5278 = fmul fast float %5275, %101
  %5279 = fadd fast float %5276, %155
  %5280 = fadd fast float %5277, %156
  %5281 = fadd fast float %5278, %157
  %5282 = fcmp fast olt float %5257, 0.000000e+00
  br i1 %5282, label %6378, label %5283

; <label>:5283                                    ; preds = %5259
  %5284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.CBufRet.f32 %5284, 1
  %5287 = extractvalue %dx.types.CBufRet.f32 %5284, 2
  %5288 = extractvalue %dx.types.CBufRet.f32 %5284, 3
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 0
  %5291 = extractvalue %dx.types.CBufRet.f32 %5289, 1
  %5292 = extractvalue %dx.types.CBufRet.f32 %5289, 2
  %5293 = extractvalue %dx.types.CBufRet.f32 %5289, 3
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.CBufRet.f32 %5294, 1
  %5297 = extractvalue %dx.types.CBufRet.f32 %5294, 2
  %5298 = extractvalue %dx.types.CBufRet.f32 %5294, 3
  %5299 = fmul fast float %5285, %5279
  %5300 = call float @dx.op.tertiary.f32(i32 46, float %5280, float %5286, float %5299)  ; FMad(a,b,c)
  %5301 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %5287, float %5300)  ; FMad(a,b,c)
  %5302 = fadd fast float %5301, %5288
  %5303 = fmul fast float %5290, %5279
  %5304 = call float @dx.op.tertiary.f32(i32 46, float %5280, float %5291, float %5303)  ; FMad(a,b,c)
  %5305 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %5292, float %5304)  ; FMad(a,b,c)
  %5306 = fadd fast float %5305, %5293
  %5307 = fmul fast float %5295, %5279
  %5308 = call float @dx.op.tertiary.f32(i32 46, float %5280, float %5296, float %5307)  ; FMad(a,b,c)
  %5309 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %5297, float %5308)  ; FMad(a,b,c)
  %5310 = fadd fast float %5309, %5298
  %5311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5312 = extractvalue %dx.types.CBufRet.f32 %5311, 0
  %5313 = extractvalue %dx.types.CBufRet.f32 %5311, 1
  %5314 = extractvalue %dx.types.CBufRet.f32 %5311, 3
  %5315 = fmul fast float %5314, %5302
  %5316 = fmul fast float %5314, %5306
  %5317 = fadd fast float %5315, %5312
  %5318 = fadd fast float %5316, %5313
  %5319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5319, 0
  %5321 = extractvalue %dx.types.CBufRet.f32 %5319, 1
  %5322 = extractvalue %dx.types.CBufRet.f32 %5319, 3
  %5323 = fmul fast float %5322, %5302
  %5324 = fmul fast float %5322, %5306
  %5325 = fadd fast float %5323, %5320
  %5326 = fadd fast float %5324, %5321
  %5327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.f32 %5327, 1
  %5329 = fsub fast float %5328, %5310
  %5330 = extractvalue %dx.types.CBufRet.f32 %5327, 2
  %5331 = fmul fast float %5329, %5330
  %5332 = fsub fast float 1.000000e+00, %5331
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5334 = extractvalue %dx.types.CBufRet.f32 %5319, 2
  %5335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.f32 %5335, 2
  %5337 = fadd fast float %5336, %5334
  %5338 = fcmp fast ogt float %5337, 0.000000e+00
  br i1 %5338, label %5339, label %5363

; <label>:5339                                    ; preds = %5283
  %5340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.f32 %5340, 0
  %5342 = extractvalue %dx.types.CBufRet.f32 %5340, 1
  %5343 = fsub fast float %5325, %5341
  %5344 = fsub fast float %5326, %5342
  %5345 = fcmp fast olt float %5343, 0.000000e+00
  %5346 = fcmp fast olt float %5344, 0.000000e+00
  %5347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5348 = extractvalue %dx.types.CBufRet.f32 %5347, 0
  %5349 = extractvalue %dx.types.CBufRet.f32 %5347, 1
  %5350 = extractvalue %dx.types.CBufRet.f32 %5347, 2
  %5351 = extractvalue %dx.types.CBufRet.f32 %5347, 3
  %5352 = select i1 %5345, float %5348, float %5350
  %5353 = select i1 %5346, float %5349, float %5351
  %5354 = fmul fast float %5352, %5343
  %5355 = fmul fast float %5353, %5344
  %5356 = call float @dx.op.unary.f32(i32 6, float %5354)  ; FAbs(value)
  %5357 = call float @dx.op.unary.f32(i32 6, float %5355)  ; FAbs(value)
  %5358 = extractvalue %dx.types.CBufRet.f32 %5274, 0
  %5359 = call float @dx.op.binary.f32(i32 35, float %5356, float %5357)  ; FMax(a,b)
  %5360 = fsub fast float %5358, %5359
  %5361 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5362 = fmul fast float %5361, %5333
  br label %5363

; <label>:5363                                    ; preds = %5339, %5283
  %5364 = phi float [ %5362, %5339 ], [ 0.000000e+00, %5283 ]
  %5365 = extractvalue %dx.types.CBufRet.f32 %5311, 2
  %5366 = extractvalue %dx.types.CBufRet.f32 %5335, 1
  %5367 = fadd fast float %5366, %5365
  %5368 = fcmp fast ogt float %5367, 0.000000e+00
  %5369 = extractvalue %dx.types.CBufRet.f32 %5274, 0
  br i1 %5368, label %5370, label %5393

; <label>:5370                                    ; preds = %5363
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 0
  %5373 = extractvalue %dx.types.CBufRet.f32 %5371, 1
  %5374 = fsub fast float %5317, %5372
  %5375 = fsub fast float %5318, %5373
  %5376 = fcmp fast olt float %5374, 0.000000e+00
  %5377 = fcmp fast olt float %5375, 0.000000e+00
  %5378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5379 = extractvalue %dx.types.CBufRet.f32 %5378, 0
  %5380 = extractvalue %dx.types.CBufRet.f32 %5378, 1
  %5381 = extractvalue %dx.types.CBufRet.f32 %5378, 2
  %5382 = extractvalue %dx.types.CBufRet.f32 %5378, 3
  %5383 = select i1 %5376, float %5379, float %5381
  %5384 = select i1 %5377, float %5380, float %5382
  %5385 = fmul fast float %5383, %5374
  %5386 = fmul fast float %5384, %5375
  %5387 = call float @dx.op.unary.f32(i32 6, float %5385)  ; FAbs(value)
  %5388 = call float @dx.op.unary.f32(i32 6, float %5386)  ; FAbs(value)
  %5389 = call float @dx.op.binary.f32(i32 35, float %5387, float %5388)  ; FMax(a,b)
  %5390 = fsub fast float %5369, %5389
  %5391 = call float @dx.op.unary.f32(i32 7, float %5390)  ; Saturate(value)
  %5392 = fmul fast float %5391, %5333
  br label %5393

; <label>:5393                                    ; preds = %5370, %5363
  %5394 = phi float [ %5392, %5370 ], [ 0.000000e+00, %5363 ]
  %5395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5396 = extractvalue %dx.types.CBufRet.f32 %5395, 1
  %5397 = call float @dx.op.unary.f32(i32 7, float %5396)  ; Saturate(value)
  %5398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5399 = extractvalue %dx.types.CBufRet.f32 %5398, 0
  %5400 = extractvalue %dx.types.CBufRet.f32 %5398, 1
  %5401 = fsub fast float %5302, %5399
  %5402 = fsub fast float %5306, %5400
  %5403 = fcmp fast olt float %5401, 0.000000e+00
  %5404 = fcmp fast olt float %5402, 0.000000e+00
  %5405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.f32 %5405, 0
  %5407 = extractvalue %dx.types.CBufRet.f32 %5405, 1
  %5408 = extractvalue %dx.types.CBufRet.f32 %5405, 2
  %5409 = extractvalue %dx.types.CBufRet.f32 %5405, 3
  %5410 = select i1 %5403, float %5406, float %5408
  %5411 = select i1 %5404, float %5407, float %5409
  %5412 = fmul fast float %5410, %5401
  %5413 = fmul fast float %5411, %5402
  %5414 = call float @dx.op.unary.f32(i32 6, float %5412)  ; FAbs(value)
  %5415 = call float @dx.op.unary.f32(i32 6, float %5413)  ; FAbs(value)
  %5416 = call float @dx.op.binary.f32(i32 35, float %5414, float %5415)  ; FMax(a,b)
  %5417 = fsub fast float %5369, %5416
  %5418 = call float @dx.op.unary.f32(i32 7, float %5417)  ; Saturate(value)
  %5419 = call float @dx.op.binary.f32(i32 36, float %5418, float %5397)  ; FMin(a,b)
  %5420 = fmul fast float %5419, %5333
  %5421 = fsub fast float %5394, %5420
  %5422 = fsub fast float %5364, %5394
  %5423 = fsub fast float %5422, %5420
  %5424 = call float @dx.op.binary.f32(i32 35, float %5394, float %5364)  ; FMax(a,b)
  %5425 = call float @dx.op.binary.f32(i32 35, float %5420, float %5424)  ; FMax(a,b)
  %5426 = fcmp fast olt float %5425, 1.000000e+00
  br i1 %5426, label %5427, label %5825, !dx.controlflow.hints !87

; <label>:5427                                    ; preds = %5393
  %5428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5429 = extractvalue %dx.types.CBufRet.f32 %5428, 0
  %5430 = fcmp fast une float %5429, 0.000000e+00
  br i1 %5430, label %5431, label %5825, !dx.controlflow.hints !88

; <label>:5431                                    ; preds = %5427
  %5432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.f32 %5432, 0
  %5434 = extractvalue %dx.types.CBufRet.f32 %5432, 1
  %5435 = extractvalue %dx.types.CBufRet.f32 %5432, 2
  %5436 = extractvalue %dx.types.CBufRet.f32 %5432, 3
  %5437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5438 = extractvalue %dx.types.CBufRet.f32 %5437, 0
  %5439 = extractvalue %dx.types.CBufRet.f32 %5437, 1
  %5440 = extractvalue %dx.types.CBufRet.f32 %5437, 2
  %5441 = extractvalue %dx.types.CBufRet.f32 %5437, 3
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.CBufRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.CBufRet.f32 %5442, 2
  %5446 = extractvalue %dx.types.CBufRet.f32 %5442, 3
  %5447 = fmul fast float %5433, %5279
  %5448 = call float @dx.op.tertiary.f32(i32 46, float %5280, float %5434, float %5447)  ; FMad(a,b,c)
  %5449 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %5435, float %5448)  ; FMad(a,b,c)
  %5450 = fadd fast float %5449, %5436
  %5451 = fmul fast float %5438, %5279
  %5452 = call float @dx.op.tertiary.f32(i32 46, float %5280, float %5439, float %5451)  ; FMad(a,b,c)
  %5453 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %5440, float %5452)  ; FMad(a,b,c)
  %5454 = fadd fast float %5453, %5441
  %5455 = fmul fast float %5443, %5279
  %5456 = call float @dx.op.tertiary.f32(i32 46, float %5280, float %5444, float %5455)  ; FMad(a,b,c)
  %5457 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %5445, float %5456)  ; FMad(a,b,c)
  %5458 = fadd fast float %5457, %5446
  %5459 = fcmp fast oge float %5450, 1.000000e+00
  %5460 = fcmp fast oge float %5454, 1.000000e+00
  %5461 = or i1 %5459, %5460
  %5462 = fcmp fast olt float %5450, 0.000000e+00
  %5463 = fcmp fast olt float %5454, 0.000000e+00
  %5464 = or i1 %5462, %5463
  %5465 = or i1 %5461, %5464
  br i1 %5465, label %5825, label %5466, !dx.controlflow.hints !89

; <label>:5466                                    ; preds = %5431
  %5467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5468 = extractvalue %dx.types.CBufRet.f32 %5467, 0
  %5469 = extractvalue %dx.types.CBufRet.f32 %5467, 1
  %5470 = extractvalue %dx.types.CBufRet.f32 %5467, 2
  %5471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5472 = extractvalue %dx.types.CBufRet.i32 %5471, 2
  %5473 = uitofp i32 %5472 to float
  %5474 = extractvalue %dx.types.CBufRet.i32 %5471, 3
  %5475 = uitofp i32 %5474 to float
  %5476 = extractvalue %dx.types.CBufRet.f32 %5467, 3
  %5477 = fmul fast float %5476, 2.000000e+00
  %5478 = fsub fast float %5450, %5468
  %5479 = fsub fast float %5454, %5469
  %5480 = fmul fast float %5477, %5478
  %5481 = fmul fast float %5477, %5479
  %5482 = fdiv fast float 1.000000e+00, %5262
  %5483 = fmul fast float %5481, %5482
  %5484 = call float @dx.op.unary.f32(i32 6, float %5483)  ; FAbs(value)
  %5485 = fmul fast float %5470, %5281
  %5486 = fmul fast float %5485, %5477
  %5487 = call float @dx.op.unary.f32(i32 6, float %5486)  ; FAbs(value)
  %5488 = call float @dx.op.unary.f32(i32 6, float %5480)  ; FAbs(value)
  %5489 = call float @dx.op.binary.f32(i32 35, float %5487, float %5484)  ; FMax(a,b)
  %5490 = call float @dx.op.binary.f32(i32 35, float %5488, float %5489)  ; FMax(a,b)
  %5491 = fmul fast float %5490, 2.000000e+00
  %5492 = call float @dx.op.unary.f32(i32 23, float %5491)  ; Log(value)
  %5493 = call float @dx.op.binary.f32(i32 35, float %5492, float %5473)  ; FMax(a,b)
  %5494 = call float @dx.op.unary.f32(i32 22, float %5493)  ; Frc(value)
  %5495 = fadd fast float %5494, 0xBFEA666660000000
  %5496 = fmul fast float %5495, 8.000000e+00
  %5497 = call float @dx.op.unary.f32(i32 7, float %5496)  ; Saturate(value)
  %5498 = call float @dx.op.unary.f32(i32 27, float %5493)  ; Round_ni(value)
  %5499 = fadd fast float %5498, %5497
  %5500 = call float @dx.op.binary.f32(i32 36, float %5499, float %5475)  ; FMin(a,b)
  %5501 = call float @dx.op.unary.f32(i32 27, float %5500)  ; Round_ni(value)
  %5502 = fsub fast float -0.000000e+00, %5501
  %5503 = call float @dx.op.unary.f32(i32 21, float %5502)  ; Exp(value)
  %5504 = fmul fast float %5503, %5477
  %5505 = fmul fast float %5504, %5450
  %5506 = fmul fast float %5504, %5454
  %5507 = fmul fast float %5505, 2.500000e-01
  %5508 = fmul fast float %5506, 2.500000e-01
  %5509 = fadd fast float %5507, 5.000000e-01
  %5510 = fadd fast float %5508, 5.000000e-01
  %5511 = fsub fast float %5475, %5473
  %5512 = fptoui float %5511 to i32
  %5513 = add i32 %5512, 320
  %5514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %5513)  ; CBufferLoadLegacy(handle,regIndex)
  %5515 = extractvalue %dx.types.CBufRet.f32 %5514, 0
  %5516 = extractvalue %dx.types.CBufRet.f32 %5514, 1
  %5517 = fcmp fast une float %5500, %5475
  %5518 = fsub fast float %5450, %5515
  %5519 = fsub fast float %5454, %5516
  %5520 = call float @dx.op.unary.f32(i32 6, float %5518)  ; FAbs(value)
  %5521 = call float @dx.op.unary.f32(i32 6, float %5519)  ; FAbs(value)
  %5522 = fmul fast float %5520, %5504
  %5523 = fmul fast float %5521, %5504
  %5524 = fcmp fast olt float %5522, 1.000000e+00
  %5525 = fcmp fast olt float %5523, 1.000000e+00
  %5526 = and i1 %5524, %5525
  %5527 = or i1 %5517, %5526
  br i1 %5527, label %5528, label %5825, !dx.controlflow.hints !90

; <label>:5528                                    ; preds = %5466
  %5529 = fmul fast float %5506, 5.000000e-01
  %5530 = fmul fast float %5505, 5.000000e-01
  %5531 = fadd fast float %5529, 5.000000e-01
  %5532 = fadd fast float %5530, 5.000000e-01
  %5533 = sitofp i32 %5472 to float
  %5534 = fsub fast float %5500, %5533
  %5535 = call float @dx.op.unary.f32(i32 27, float %5534)  ; Round_ni(value)
  %5536 = call float @dx.op.unary.f32(i32 22, float %5500)  ; Frc(value)
  %5537 = call float @dx.op.unary.f32(i32 22, float %5532)  ; Frc(value)
  %5538 = call float @dx.op.unary.f32(i32 22, float %5531)  ; Frc(value)
  %5539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %5537, float %5538, float %5535, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5540 = extractvalue %dx.types.ResRet.f32 %5539, 0
  %5541 = extractvalue %dx.types.ResRet.f32 %5539, 1
  %5542 = extractvalue %dx.types.ResRet.f32 %5539, 2
  %5543 = extractvalue %dx.types.ResRet.f32 %5539, 3
  %5544 = fcmp fast ogt float %5536, 0.000000e+00
  br i1 %5544, label %5545, label %5566, !dx.controlflow.hints !91

; <label>:5545                                    ; preds = %5528
  %5546 = fadd fast float %5535, 1.000000e+00
  %5547 = call float @dx.op.unary.f32(i32 22, float %5509)  ; Frc(value)
  %5548 = call float @dx.op.unary.f32(i32 22, float %5510)  ; Frc(value)
  %5549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %5547, float %5548, float %5546, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5550 = extractvalue %dx.types.ResRet.f32 %5549, 0
  %5551 = extractvalue %dx.types.ResRet.f32 %5549, 1
  %5552 = extractvalue %dx.types.ResRet.f32 %5549, 2
  %5553 = extractvalue %dx.types.ResRet.f32 %5549, 3
  %5554 = fsub fast float %5550, %5540
  %5555 = fsub fast float %5551, %5541
  %5556 = fsub fast float %5552, %5542
  %5557 = fsub fast float %5553, %5543
  %5558 = fmul fast float %5554, %5536
  %5559 = fmul fast float %5555, %5536
  %5560 = fmul fast float %5556, %5536
  %5561 = fmul fast float %5557, %5536
  %5562 = fadd fast float %5558, %5540
  %5563 = fadd fast float %5559, %5541
  %5564 = fadd fast float %5560, %5542
  %5565 = fadd fast float %5561, %5543
  br label %5566

; <label>:5566                                    ; preds = %5545, %5528
  %5567 = phi float [ %5562, %5545 ], [ %5540, %5528 ]
  %5568 = phi float [ %5563, %5545 ], [ %5541, %5528 ]
  %5569 = phi float [ %5564, %5545 ], [ %5542, %5528 ]
  %5570 = phi float [ %5565, %5545 ], [ %5543, %5528 ]
  %5571 = fadd fast float %5567, -5.000000e-01
  %5572 = fadd fast float %5569, -5.000000e-01
  %5573 = fmul fast float %5571, 0xBFD5555560000000
  %5574 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5572, float %5573)  ; FMad(a,b,c)
  %5575 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5568, float 0.000000e+00)  ; FMad(a,b,c)
  %5576 = fadd fast float %5575, %5570
  %5577 = fmul fast float %5571, -7.500000e-01
  %5578 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5572, float %5577)  ; FMad(a,b,c)
  %5579 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5568, float 0.000000e+00)  ; FMad(a,b,c)
  %5580 = fadd fast float %5579, %5570
  %5581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5582 = extractvalue %dx.types.CBufRet.f32 %5581, 0
  %5583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5584 = extractvalue %dx.types.CBufRet.f32 %5583, 0
  %5585 = extractvalue %dx.types.CBufRet.f32 %5583, 1
  %5586 = extractvalue %dx.types.CBufRet.f32 %5583, 2
  %5587 = extractvalue %dx.types.CBufRet.f32 %5583, 3
  %5588 = fsub fast float %5584, %5574
  %5589 = fsub fast float %5585, %5576
  %5590 = fsub fast float %5586, %5578
  %5591 = fsub fast float %5587, %5580
  %5592 = fmul fast float %5588, %5582
  %5593 = fmul fast float %5589, %5582
  %5594 = fmul fast float %5590, %5582
  %5595 = fmul fast float %5591, %5582
  %5596 = fadd fast float %5592, %5574
  %5597 = fadd fast float %5593, %5576
  %5598 = fadd fast float %5594, %5578
  %5599 = fadd fast float %5595, %5580
  %5600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5601 = extractvalue %dx.types.ResRet.i32 %5600, 0
  %5602 = and i32 %5601, 536870911
  %5603 = uitofp i32 %5602 to float
  %5604 = fmul fast float %5603, %5450
  %5605 = fmul fast float %5603, %5454
  %5606 = fptoui float %5604 to i32
  %5607 = fptoui float %5605 to i32
  %5608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5609 = extractvalue %dx.types.ResRet.i32 %5608, 0
  %5610 = and i32 %5609, 31
  %5611 = lshr i32 %5606, %5610
  %5612 = lshr i32 %5607, %5610
  %5613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5614 = extractvalue %dx.types.ResRet.i32 %5613, 0
  %5615 = and i32 %5614, 31
  %5616 = shl i32 1, %5615
  %5617 = call i32 @dx.op.binary.i32(i32 40, i32 %5616, i32 4)  ; UMin(a,b)
  %5618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5619 = extractvalue %dx.types.ResRet.i32 %5618, 0
  %5620 = extractvalue %dx.types.ResRet.i32 %5618, 1
  %5621 = icmp eq i32 %5617, 0
  br i1 %5621, label %5663, label %5622

; <label>:5622                                    ; preds = %5566
  br label %5623

; <label>:5623                                    ; preds = %5651, %5622
  %5624 = phi i32 [ %5654, %5651 ], [ 0, %5622 ]
  %5625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5626 = extractvalue %dx.types.ResRet.i32 %5625, 0
  %5627 = lshr i32 %5626, 16
  %5628 = and i32 %5627, 31
  %5629 = shl i32 %5612, %5628
  %5630 = add i32 %5629, %5611
  %5631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5632 = extractvalue %dx.types.ResRet.i32 %5631, 0
  %5633 = and i32 %5632, 31
  %5634 = shl i32 %5630, %5633
  %5635 = add i32 %5634, %5624
  %5636 = shl i32 %5635, 2
  %5637 = add i32 %5636, 32
  %5638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5637, i32 undef)  ; BufferLoad(srv,index,wot)
  %5639 = extractvalue %dx.types.ResRet.i32 %5638, 0
  %5640 = icmp slt i32 %5639, 0
  %5641 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %5624
  %5642 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %5624
  %5643 = bitcast float* %5641 to i32*
  %5644 = bitcast float* %5642 to i32*
  br i1 %5640, label %5645, label %5651

; <label>:5645                                    ; preds = %5623
  %5646 = and i32 %5639, 1073741823
  %5647 = add nuw nsw i32 %5646, 20
  %5648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5647, i32 undef)  ; BufferLoad(srv,index,wot)
  %5649 = extractvalue %dx.types.ResRet.i32 %5648, 0
  %5650 = extractvalue %dx.types.ResRet.i32 %5648, 1
  br label %5651

; <label>:5651                                    ; preds = %5645, %5623
  %5652 = phi i32 [ %5649, %5645 ], [ %5619, %5623 ]
  %5653 = phi i32 [ %5650, %5645 ], [ %5620, %5623 ]
  store i32 %5652, i32* %5643, align 4
  store i32 %5653, i32* %5644, align 4
  %5654 = add nuw i32 %5624, 1
  %5655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5656 = extractvalue %dx.types.CBufRet.i32 %5655, 2
  %5657 = icmp eq i32 %5656, 0
  %5658 = icmp ugt i32 %5639, -1073741825
  %5659 = and i1 %5658, %5657
  %5660 = icmp ult i32 %5654, %5617
  %5661 = and i1 %5659, %5660
  br i1 %5661, label %5623, label %5662

; <label>:5662                                    ; preds = %5651
  br label %5663

; <label>:5663                                    ; preds = %5662, %5566
  %5664 = phi i32 [ 0, %5566 ], [ %5654, %5662 ]
  %5665 = extractvalue %dx.types.CBufRet.f32 %5428, 2
  %5666 = fptoui float %5665 to i32
  %5667 = icmp eq i32 %5666, 0
  br i1 %5667, label %5719, label %5668

; <label>:5668                                    ; preds = %5663
  br label %5669

; <label>:5669                                    ; preds = %5714, %5668
  %5670 = phi i32 [ %5715, %5714 ], [ %5664, %5668 ]
  %5671 = phi i32 [ %5716, %5714 ], [ 0, %5668 ]
  %5672 = lshr i32 %5671, 2
  %5673 = and i32 %5671, 3
  %5674 = add nuw nsw i32 %5672, 83
  %5675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %5674)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.i32 %5675, 0
  %5677 = extractvalue %dx.types.CBufRet.i32 %5675, 1
  %5678 = extractvalue %dx.types.CBufRet.i32 %5675, 2
  %5679 = extractvalue %dx.types.CBufRet.i32 %5675, 3
  %5680 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %5676, i32* %5680, align 4
  %5681 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %5677, i32* %5681, align 4
  %5682 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %5678, i32* %5682, align 4
  %5683 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %5679, i32* %5683, align 4
  %5684 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %5673
  %5685 = load i32, i32* %5684, align 4, !tbaa !92, !noalias !96
  %5686 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5687 = extractvalue %dx.types.ResRet.i32 %5686, 0
  %5688 = lshr i32 %5687, 16
  %5689 = and i32 %5688, 31
  %5690 = shl i32 %5612, %5689
  %5691 = add i32 %5690, %5611
  %5692 = shl i32 %5691, 2
  %5693 = add i32 %5692, %5685
  %5694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5693, i32 undef)  ; BufferLoad(srv,index,wot)
  %5695 = extractvalue %dx.types.ResRet.i32 %5694, 0
  %5696 = icmp eq i32 %5695, 0
  br i1 %5696, label %5714, label %5697

; <label>:5697                                    ; preds = %5669
  %5698 = icmp slt i32 %5695, 0
  %5699 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %5670
  %5700 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %5670
  %5701 = bitcast float* %5699 to i32*
  %5702 = bitcast float* %5700 to i32*
  br i1 %5698, label %5703, label %5710

; <label>:5703                                    ; preds = %5697
  %5704 = and i32 %5695, 1073741823
  %5705 = add i32 %5685, 20
  %5706 = add i32 %5705, %5704
  %5707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %5706, i32 undef)  ; BufferLoad(srv,index,wot)
  %5708 = extractvalue %dx.types.ResRet.i32 %5707, 0
  %5709 = extractvalue %dx.types.ResRet.i32 %5707, 1
  br label %5710

; <label>:5710                                    ; preds = %5703, %5697
  %5711 = phi i32 [ %5708, %5703 ], [ %5619, %5697 ]
  %5712 = phi i32 [ %5709, %5703 ], [ %5620, %5697 ]
  store i32 %5711, i32* %5701, align 4
  store i32 %5712, i32* %5702, align 4
  %5713 = add i32 %5670, 1
  br label %5714

; <label>:5714                                    ; preds = %5710, %5669
  %5715 = phi i32 [ %5670, %5669 ], [ %5713, %5710 ]
  %5716 = add nuw i32 %5671, 1
  %5717 = icmp eq i32 %5716, %5666
  br i1 %5717, label %5718, label %5669

; <label>:5718                                    ; preds = %5714
  br label %5719

; <label>:5719                                    ; preds = %5718, %5663
  %5720 = phi i32 [ %5664, %5663 ], [ %5715, %5718 ]
  %5721 = icmp eq i32 %5720, 1
  %5722 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 0
  %5723 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  br i1 %5721, label %5724, label %5727

; <label>:5724                                    ; preds = %5719
  %5725 = load float, float* %5722, align 4
  %5726 = load float, float* %5723, align 4
  br label %5754

; <label>:5727                                    ; preds = %5719
  %5728 = load float, float* %5722, align 4
  %5729 = load float, float* %5723, align 4
  %5730 = fdiv fast float 1.000000e+00, %5729
  %5731 = fsub fast float %5728, %5730
  %5732 = icmp ugt i32 %5720, 1
  br i1 %5732, label %5733, label %5749

; <label>:5733                                    ; preds = %5727
  br label %5734

; <label>:5734                                    ; preds = %5734, %5733
  %5735 = phi float [ %5744, %5734 ], [ %5731, %5733 ]
  %5736 = phi float [ %5745, %5734 ], [ %5728, %5733 ]
  %5737 = phi i32 [ %5746, %5734 ], [ 1, %5733 ]
  %5738 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %5737
  %5739 = load float, float* %5738, align 4
  %5740 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %5737
  %5741 = load float, float* %5740, align 4
  %5742 = fdiv fast float 1.000000e+00, %5741
  %5743 = fsub fast float %5739, %5742
  %5744 = call float @dx.op.binary.f32(i32 36, float %5735, float %5743)  ; FMin(a,b)
  %5745 = call float @dx.op.binary.f32(i32 35, float %5736, float %5739)  ; FMax(a,b)
  %5746 = add nuw i32 %5737, 1
  %5747 = icmp eq i32 %5746, %5720
  br i1 %5747, label %5748, label %5734

; <label>:5748                                    ; preds = %5734
  br label %5749

; <label>:5749                                    ; preds = %5748, %5727
  %5750 = phi float [ %5731, %5727 ], [ %5744, %5748 ]
  %5751 = phi float [ %5728, %5727 ], [ %5745, %5748 ]
  %5752 = fsub fast float %5751, %5750
  %5753 = fdiv fast float 1.000000e+00, %5752
  br label %5754

; <label>:5754                                    ; preds = %5749, %5724
  %5755 = phi float [ %5725, %5724 ], [ %5751, %5749 ]
  %5756 = phi float [ %5726, %5724 ], [ %5753, %5749 ]
  %5757 = fadd fast float %5458, %5755
  %5758 = fmul fast float %5757, %5756
  %5759 = call float @dx.op.unary.f32(i32 7, float %5758)  ; Saturate(value)
  %5760 = fmul fast float %5759, 2.000000e+00
  %5761 = fsub fast float 1.000000e+00, %5760
  %5762 = fmul fast float %5596, %5596
  %5763 = fsub fast float %5597, %5762
  %5764 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5763)  ; FMax(a,b)
  %5765 = fdiv fast float 1.000000e+00, %5764
  %5766 = fmul fast float %5597, %5596
  %5767 = fsub fast float %5598, %5766
  %5768 = fsub fast float %5761, %5596
  %5769 = fmul fast float %5761, %5761
  %5770 = fsub fast float %5769, %5597
  %5771 = fmul fast float %5765, %5767
  %5772 = fmul fast float %5771, %5768
  %5773 = fsub fast float %5770, %5772
  %5774 = fmul fast float %5597, %5597
  %5775 = fsub fast float %5599, %5774
  %5776 = fmul fast float %5767, %5767
  %5777 = fmul fast float %5776, %5765
  %5778 = fsub fast float %5775, %5777
  %5779 = fdiv fast float %5773, %5778
  %5780 = fmul fast float %5779, %5767
  %5781 = fsub fast float %5768, %5780
  %5782 = fmul fast float %5781, %5765
  %5783 = fmul fast float %5782, %5596
  %5784 = fsub fast float 1.000000e+00, %5783
  %5785 = fmul fast float %5779, %5597
  %5786 = fsub fast float %5784, %5785
  %5787 = fmul fast float %5782, %5782
  %5788 = fmul fast float %5779, 4.000000e+00
  %5789 = fmul fast float %5788, %5786
  %5790 = fsub fast float %5787, %5789
  %5791 = call float @dx.op.unary.f32(i32 24, float %5790)  ; Sqrt(value)
  %5792 = fcmp fast oge float %5782, 0.000000e+00
  %5793 = fsub fast float -0.000000e+00, %5791
  %5794 = select i1 %5792, float %5793, float %5791
  %5795 = fsub fast float %5794, %5782
  %5796 = fdiv fast float %5795, %5779
  %5797 = fdiv fast float %5786, %5795
  %5798 = fmul fast float %5796, 5.000000e-01
  %5799 = fmul fast float %5797, 2.000000e+00
  %5800 = select i1 %5792, float %5798, float %5799
  %5801 = select i1 %5792, float %5799, float %5798
  %5802 = call float @dx.op.binary.f32(i32 35, float %5800, float %5801)  ; FMax(a,b)
  %5803 = call float @dx.op.binary.f32(i32 36, float %5800, float %5801)  ; FMin(a,b)
  %5804 = fcmp fast ogt float %5761, %5802
  %5805 = fsub fast float %5761, %5803
  %5806 = fsub fast float %5761, %5802
  %5807 = fsub fast float %5802, %5803
  %5808 = select i1 %5804, float %5806, float %5807
  %5809 = fmul float %5805, %5808
  %5810 = select i1 %5804, float %5803, float %5761
  %5811 = fcmp fast ogt float %5761, %5803
  %5812 = fmul fast float %5810, %5802
  %5813 = fadd fast float %5810, %5802
  %5814 = fmul fast float %5813, %5596
  %5815 = fadd fast float %5812, %5597
  %5816 = fsub fast float %5815, %5814
  %5817 = fdiv fast float %5816, %5809
  %5818 = select i1 %5811, float %5817, float 0.000000e+00
  %5819 = fsub fast float 1.000000e+00, %5818
  %5820 = select i1 %5804, float %5819, float %5818
  %5821 = call float @dx.op.unary.f32(i32 7, float %5820)  ; Saturate(value)
  %5822 = extractvalue %dx.types.CBufRet.f32 %5581, 3
  %5823 = fmul fast float %5822, %5821
  %5824 = fsub fast float 1.000000e+00, %5823
  br label %5825

; <label>:5825                                    ; preds = %5754, %5466, %5431, %5427, %5393
  %5826 = phi float [ 1.000000e+00, %5393 ], [ %5824, %5754 ], [ 1.000000e+00, %5431 ], [ 1.000000e+00, %5466 ], [ 1.000000e+00, %5427 ]
  %5827 = fcmp fast ogt float %5423, 0.000000e+00
  br i1 %5827, label %5828, label %5990, !dx.controlflow.hints !105

; <label>:5828                                    ; preds = %5825
  %5829 = fadd fast float %5336, %5310
  %5830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.f32 %5830, 2
  %5832 = extractvalue %dx.types.CBufRet.f32 %5830, 3
  %5833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5834 = extractvalue %dx.types.CBufRet.f32 %5833, 2
  %5835 = call float @dx.op.binary.f32(i32 35, float %5829, float 0.000000e+00)  ; FMax(a,b)
  %5836 = fadd fast float %5835, 0x3F10000000000000
  %5837 = fcmp fast oeq float %5834, 0.000000e+00
  br i1 %5837, label %5838, label %5905

; <label>:5838                                    ; preds = %5828
  %5839 = extractvalue %dx.types.CBufRet.f32 %5830, 1
  %5840 = extractvalue %dx.types.CBufRet.f32 %5830, 0
  %5841 = fmul fast float %5840, %5325
  %5842 = fmul fast float %5839, %5326
  %5843 = fadd fast float %5841, 5.000000e-01
  %5844 = call float @dx.op.unary.f32(i32 27, float %5843)  ; Round_ni(value)
  %5845 = fadd fast float %5842, 5.000000e-01
  %5846 = call float @dx.op.unary.f32(i32 27, float %5845)  ; Round_ni(value)
  %5847 = fsub fast float %5843, %5844
  %5848 = fsub fast float %5845, %5846
  %5849 = fadd fast float %5844, -5.000000e-01
  %5850 = fadd fast float %5846, -5.000000e-01
  %5851 = fmul fast float %5847, 2.000000e+00
  %5852 = fsub fast float 3.000000e+00, %5851
  %5853 = fadd fast float %5851, 1.000000e+00
  %5854 = fsub fast float 2.000000e+00, %5847
  %5855 = bitcast float %5852 to i32
  %5856 = sub nsw i32 2129859010, %5855
  %5857 = bitcast i32 %5856 to float
  %5858 = fmul fast float %5857, %5854
  %5859 = fadd fast float %5858, -1.000000e+00
  %5860 = bitcast float %5853 to i32
  %5861 = sub nsw i32 2129859010, %5860
  %5862 = bitcast i32 %5861 to float
  %5863 = fmul fast float %5862, %5847
  %5864 = fadd fast float %5863, 1.000000e+00
  %5865 = fmul fast float %5848, 2.000000e+00
  %5866 = fsub fast float 3.000000e+00, %5865
  %5867 = fadd fast float %5865, 1.000000e+00
  %5868 = fsub fast float 2.000000e+00, %5848
  %5869 = bitcast float %5866 to i32
  %5870 = sub nsw i32 2129859010, %5869
  %5871 = bitcast i32 %5870 to float
  %5872 = fmul fast float %5871, %5868
  %5873 = fadd fast float %5872, -1.000000e+00
  %5874 = bitcast float %5867 to i32
  %5875 = sub nsw i32 2129859010, %5874
  %5876 = bitcast i32 %5875 to float
  %5877 = fmul fast float %5876, %5848
  %5878 = fadd fast float %5877, 1.000000e+00
  %5879 = fadd fast float %5859, %5849
  %5880 = fmul fast float %5879, %5831
  %5881 = fadd fast float %5873, %5850
  %5882 = fmul fast float %5881, %5832
  %5883 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %5880, float %5882, float undef, float undef, i32 0, i32 0, i32 undef, float %5836)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5884 = extractvalue %dx.types.ResRet.f32 %5883, 0
  %5885 = fmul fast float %5884, %5852
  %5886 = fadd fast float %5864, %5849
  %5887 = fmul fast float %5886, %5831
  %5888 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %5887, float %5882, float undef, float undef, i32 0, i32 0, i32 undef, float %5836)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5889 = extractvalue %dx.types.ResRet.f32 %5888, 0
  %5890 = fmul fast float %5889, %5853
  %5891 = fadd fast float %5878, %5850
  %5892 = fmul fast float %5891, %5832
  %5893 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %5880, float %5892, float undef, float undef, i32 0, i32 0, i32 undef, float %5836)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5894 = extractvalue %dx.types.ResRet.f32 %5893, 0
  %5895 = fmul fast float %5894, %5852
  %5896 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %5887, float %5892, float undef, float undef, i32 0, i32 0, i32 undef, float %5836)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5897 = extractvalue %dx.types.ResRet.f32 %5896, 0
  %5898 = fmul fast float %5897, %5853
  %5899 = fadd fast float %5898, %5895
  %5900 = fmul fast float %5899, %5867
  %5901 = fadd fast float %5890, %5885
  %5902 = fmul fast float %5901, %5866
  %5903 = fadd fast float %5902, %5900
  %5904 = fmul fast float %5903, 6.250000e-02
  br label %5990

; <label>:5905                                    ; preds = %5828
  %5906 = fmul fast float %227, 0x401921FB60000000
  %5907 = call float @dx.op.unary.f32(i32 13, float %5906)  ; Sin(value)
  %5908 = call float @dx.op.unary.f32(i32 12, float %5906)  ; Cos(value)
  %5909 = fsub fast float -0.000000e+00, %5907
  br label %5910

; <label>:5910                                    ; preds = %5959, %5905
  %5911 = phi float [ 0.000000e+00, %5905 ], [ %5954, %5959 ]
  %5912 = phi float [ 0.000000e+00, %5905 ], [ %5956, %5959 ]
  %5913 = phi i32 [ 0, %5905 ], [ %5960, %5959 ]
  %5914 = mul i32 %5913, 2
  %5915 = add i32 0, %5914
  %5916 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5915
  %5917 = load float, float* %5916, align 4
  %5918 = mul i32 %5913, 2
  %5919 = add i32 1, %5918
  %5920 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5919
  %5921 = load float, float* %5920, align 4
  %5922 = fmul fast float %5917, %5908
  %5923 = call float @dx.op.tertiary.f32(i32 46, float %5921, float %5909, float %5922)  ; FMad(a,b,c)
  %5924 = fmul fast float %5917, %5907
  %5925 = call float @dx.op.tertiary.f32(i32 46, float %5921, float %5908, float %5924)  ; FMad(a,b,c)
  %5926 = fmul fast float %5923, %5834
  %5927 = fmul fast float %5925, %5834
  %5928 = fadd fast float %5926, %5325
  %5929 = fadd fast float %5927, %5326
  %5930 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %5928, float %5929, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5931 = extractvalue %dx.types.ResRet.f32 %5930, 0
  %5932 = extractvalue %dx.types.ResRet.f32 %5930, 1
  %5933 = extractvalue %dx.types.ResRet.f32 %5930, 2
  %5934 = extractvalue %dx.types.ResRet.f32 %5930, 3
  %5935 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %5931, float* %5935, align 4
  %5936 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %5932, float* %5936, align 4
  %5937 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %5933, float* %5937, align 4
  %5938 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  store float %5934, float* %5938, align 4
  %5939 = fsub fast float %5931, %5836
  %5940 = fcmp fast olt float %5939, 0.000000e+00
  %5941 = select i1 %5940, float 0.000000e+00, float 1.000000e+00
  %5942 = fadd fast float %5941, %5911
  %5943 = fmul fast float %5941, %5939
  %5944 = fadd fast float %5943, %5912
  br label %5945

; <label>:5945                                    ; preds = %5945, %5910
  %5946 = phi i32 [ 1, %5910 ], [ %5957, %5945 ]
  %5947 = phi float [ %5944, %5910 ], [ %5956, %5945 ]
  %5948 = phi float [ %5942, %5910 ], [ %5954, %5945 ]
  %5949 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %5946
  %5950 = load float, float* %5949, align 4, !tbaa !106, !noalias !96
  %5951 = fsub fast float %5950, %5836
  %5952 = fcmp fast olt float %5951, 0.000000e+00
  %5953 = select i1 %5952, float 0.000000e+00, float 1.000000e+00
  %5954 = fadd fast float %5953, %5948
  %5955 = fmul fast float %5953, %5951
  %5956 = fadd fast float %5955, %5947
  %5957 = add nuw nsw i32 %5946, 1
  %5958 = icmp eq i32 %5957, 4
  br i1 %5958, label %5959, label %5945, !llvm.loop !108

; <label>:5959                                    ; preds = %5945
  %5960 = add nuw nsw i32 %5913, 1
  %5961 = icmp eq i32 %5960, 8
  br i1 %5961, label %5962, label %5910, !llvm.loop !109

; <label>:5962                                    ; preds = %5959
  %5963 = fdiv fast float 1.000000e+00, %5954
  %5964 = fmul fast float %5963, %5956
  %5965 = fdiv fast float 1.000000e+00, %5836
  %5966 = fmul fast float %5964, %5965
  %5967 = call float @dx.op.unary.f32(i32 7, float %5966)  ; Saturate(value)
  %5968 = call float @dx.op.binary.f32(i32 35, float %5967, float 0.000000e+00)  ; FMax(a,b)
  %5969 = fmul fast float %5954, 3.125000e-02
  %5970 = call float @dx.op.unary.f32(i32 7, float %5969)  ; Saturate(value)
  %5971 = fmul fast float %5970, 2.000000e+00
  %5972 = fadd fast float %5971, -1.000000e+00
  %5973 = fcmp fast ogt float %5972, 0.000000e+00
  %5974 = fcmp fast olt float %5972, 0.000000e+00
  %5975 = zext i1 %5973 to i32
  %5976 = zext i1 %5974 to i32
  %5977 = sub nsw i32 %5975, %5976
  %5978 = sitofp i32 %5977 to float
  %5979 = fmul fast float %5978, %5972
  %5980 = fsub fast float 1.000000e+00, %5979
  %5981 = fmul fast float %5980, %5980
  %5982 = fmul fast float %5981, %5980
  %5983 = fsub fast float %5980, %5982
  %5984 = fmul fast float %5983, %5968
  %5985 = fsub fast float 1.000000e+00, %5982
  %5986 = fsub fast float %5985, %5984
  %5987 = fmul fast float %5978, 5.000000e-01
  %5988 = fmul fast float %5987, %5986
  %5989 = fsub fast float 5.000000e-01, %5988
  br label %5990

; <label>:5990                                    ; preds = %5962, %5838, %5825
  %5991 = phi float [ 1.000000e+00, %5825 ], [ %5904, %5838 ], [ %5989, %5962 ]
  %5992 = fcmp fast ogt float %5421, 0.000000e+00
  br i1 %5992, label %5993, label %6157, !dx.controlflow.hints !110

; <label>:5993                                    ; preds = %5990
  %5994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5995 = extractvalue %dx.types.CBufRet.f32 %5994, 1
  %5996 = fadd fast float %5995, %5310
  %5997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5997, 2
  %5999 = extractvalue %dx.types.CBufRet.f32 %5997, 3
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 1
  %6002 = call float @dx.op.binary.f32(i32 35, float %5996, float 0.000000e+00)  ; FMax(a,b)
  %6003 = fadd fast float %6002, 0x3F10000000000000
  %6004 = fcmp fast oeq float %6001, 0.000000e+00
  br i1 %6004, label %6005, label %6072

; <label>:6005                                    ; preds = %5993
  %6006 = extractvalue %dx.types.CBufRet.f32 %5997, 1
  %6007 = extractvalue %dx.types.CBufRet.f32 %5997, 0
  %6008 = fmul fast float %6007, %5317
  %6009 = fmul fast float %6006, %5318
  %6010 = fadd fast float %6008, 5.000000e-01
  %6011 = call float @dx.op.unary.f32(i32 27, float %6010)  ; Round_ni(value)
  %6012 = fadd fast float %6009, 5.000000e-01
  %6013 = call float @dx.op.unary.f32(i32 27, float %6012)  ; Round_ni(value)
  %6014 = fsub fast float %6010, %6011
  %6015 = fsub fast float %6012, %6013
  %6016 = fadd fast float %6011, -5.000000e-01
  %6017 = fadd fast float %6013, -5.000000e-01
  %6018 = fmul fast float %6014, 2.000000e+00
  %6019 = fsub fast float 3.000000e+00, %6018
  %6020 = fadd fast float %6018, 1.000000e+00
  %6021 = fsub fast float 2.000000e+00, %6014
  %6022 = bitcast float %6019 to i32
  %6023 = sub nsw i32 2129859010, %6022
  %6024 = bitcast i32 %6023 to float
  %6025 = fmul fast float %6024, %6021
  %6026 = fadd fast float %6025, -1.000000e+00
  %6027 = bitcast float %6020 to i32
  %6028 = sub nsw i32 2129859010, %6027
  %6029 = bitcast i32 %6028 to float
  %6030 = fmul fast float %6029, %6014
  %6031 = fadd fast float %6030, 1.000000e+00
  %6032 = fmul fast float %6015, 2.000000e+00
  %6033 = fsub fast float 3.000000e+00, %6032
  %6034 = fadd fast float %6032, 1.000000e+00
  %6035 = fsub fast float 2.000000e+00, %6015
  %6036 = bitcast float %6033 to i32
  %6037 = sub nsw i32 2129859010, %6036
  %6038 = bitcast i32 %6037 to float
  %6039 = fmul fast float %6038, %6035
  %6040 = fadd fast float %6039, -1.000000e+00
  %6041 = bitcast float %6034 to i32
  %6042 = sub nsw i32 2129859010, %6041
  %6043 = bitcast i32 %6042 to float
  %6044 = fmul fast float %6043, %6015
  %6045 = fadd fast float %6044, 1.000000e+00
  %6046 = fadd fast float %6026, %6016
  %6047 = fmul fast float %6046, %5998
  %6048 = fadd fast float %6040, %6017
  %6049 = fmul fast float %6048, %5999
  %6050 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6047, float %6049, float undef, float undef, i32 0, i32 0, i32 undef, float %6003)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6051 = extractvalue %dx.types.ResRet.f32 %6050, 0
  %6052 = fmul fast float %6051, %6019
  %6053 = fadd fast float %6031, %6016
  %6054 = fmul fast float %6053, %5998
  %6055 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6054, float %6049, float undef, float undef, i32 0, i32 0, i32 undef, float %6003)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6056 = extractvalue %dx.types.ResRet.f32 %6055, 0
  %6057 = fmul fast float %6056, %6020
  %6058 = fadd fast float %6045, %6017
  %6059 = fmul fast float %6058, %5999
  %6060 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6047, float %6059, float undef, float undef, i32 0, i32 0, i32 undef, float %6003)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6061 = extractvalue %dx.types.ResRet.f32 %6060, 0
  %6062 = fmul fast float %6061, %6019
  %6063 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %6054, float %6059, float undef, float undef, i32 0, i32 0, i32 undef, float %6003)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6064 = extractvalue %dx.types.ResRet.f32 %6063, 0
  %6065 = fmul fast float %6064, %6020
  %6066 = fadd fast float %6065, %6062
  %6067 = fmul fast float %6066, %6034
  %6068 = fadd fast float %6057, %6052
  %6069 = fmul fast float %6068, %6033
  %6070 = fadd fast float %6069, %6067
  %6071 = fmul fast float %6070, 6.250000e-02
  br label %6157

; <label>:6072                                    ; preds = %5993
  %6073 = fmul fast float %227, 0x401921FB60000000
  %6074 = call float @dx.op.unary.f32(i32 13, float %6073)  ; Sin(value)
  %6075 = call float @dx.op.unary.f32(i32 12, float %6073)  ; Cos(value)
  %6076 = fsub fast float -0.000000e+00, %6074
  br label %6077

; <label>:6077                                    ; preds = %6126, %6072
  %6078 = phi float [ 0.000000e+00, %6072 ], [ %6121, %6126 ]
  %6079 = phi float [ 0.000000e+00, %6072 ], [ %6123, %6126 ]
  %6080 = phi i32 [ 0, %6072 ], [ %6127, %6126 ]
  %6081 = mul i32 %6080, 2
  %6082 = add i32 0, %6081
  %6083 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6082
  %6084 = load float, float* %6083, align 4
  %6085 = mul i32 %6080, 2
  %6086 = add i32 1, %6085
  %6087 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6086
  %6088 = load float, float* %6087, align 4
  %6089 = fmul fast float %6084, %6075
  %6090 = call float @dx.op.tertiary.f32(i32 46, float %6088, float %6076, float %6089)  ; FMad(a,b,c)
  %6091 = fmul fast float %6084, %6074
  %6092 = call float @dx.op.tertiary.f32(i32 46, float %6088, float %6075, float %6091)  ; FMad(a,b,c)
  %6093 = fmul fast float %6090, %6001
  %6094 = fmul fast float %6092, %6001
  %6095 = fadd fast float %6093, %5317
  %6096 = fadd fast float %6094, %5318
  %6097 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %6095, float %6096, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6098 = extractvalue %dx.types.ResRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.ResRet.f32 %6097, 1
  %6100 = extractvalue %dx.types.ResRet.f32 %6097, 2
  %6101 = extractvalue %dx.types.ResRet.f32 %6097, 3
  %6102 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 0
  store float %6098, float* %6102, align 4
  %6103 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 1
  store float %6099, float* %6103, align 4
  %6104 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 2
  store float %6100, float* %6104, align 4
  %6105 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 3
  store float %6101, float* %6105, align 4
  %6106 = fsub fast float %6098, %6003
  %6107 = fcmp fast olt float %6106, 0.000000e+00
  %6108 = select i1 %6107, float 0.000000e+00, float 1.000000e+00
  %6109 = fadd fast float %6108, %6078
  %6110 = fmul fast float %6108, %6106
  %6111 = fadd fast float %6110, %6079
  br label %6112

; <label>:6112                                    ; preds = %6112, %6077
  %6113 = phi i32 [ 1, %6077 ], [ %6124, %6112 ]
  %6114 = phi float [ %6111, %6077 ], [ %6123, %6112 ]
  %6115 = phi float [ %6109, %6077 ], [ %6121, %6112 ]
  %6116 = getelementptr [4 x float], [4 x float]* %84, i32 0, i32 %6113
  %6117 = load float, float* %6116, align 4, !tbaa !106, !noalias !96
  %6118 = fsub fast float %6117, %6003
  %6119 = fcmp fast olt float %6118, 0.000000e+00
  %6120 = select i1 %6119, float 0.000000e+00, float 1.000000e+00
  %6121 = fadd fast float %6120, %6115
  %6122 = fmul fast float %6120, %6118
  %6123 = fadd fast float %6122, %6114
  %6124 = add nuw nsw i32 %6113, 1
  %6125 = icmp eq i32 %6124, 4
  br i1 %6125, label %6126, label %6112, !llvm.loop !108

; <label>:6126                                    ; preds = %6112
  %6127 = add nuw nsw i32 %6080, 1
  %6128 = icmp eq i32 %6127, 8
  br i1 %6128, label %6129, label %6077, !llvm.loop !109

; <label>:6129                                    ; preds = %6126
  %6130 = fdiv fast float 1.000000e+00, %6121
  %6131 = fmul fast float %6130, %6123
  %6132 = fdiv fast float 1.000000e+00, %6003
  %6133 = fmul fast float %6131, %6132
  %6134 = call float @dx.op.unary.f32(i32 7, float %6133)  ; Saturate(value)
  %6135 = call float @dx.op.binary.f32(i32 35, float %6134, float 0.000000e+00)  ; FMax(a,b)
  %6136 = fmul fast float %6121, 3.125000e-02
  %6137 = call float @dx.op.unary.f32(i32 7, float %6136)  ; Saturate(value)
  %6138 = fmul fast float %6137, 2.000000e+00
  %6139 = fadd fast float %6138, -1.000000e+00
  %6140 = fcmp fast ogt float %6139, 0.000000e+00
  %6141 = fcmp fast olt float %6139, 0.000000e+00
  %6142 = zext i1 %6140 to i32
  %6143 = zext i1 %6141 to i32
  %6144 = sub nsw i32 %6142, %6143
  %6145 = sitofp i32 %6144 to float
  %6146 = fmul fast float %6145, %6139
  %6147 = fsub fast float 1.000000e+00, %6146
  %6148 = fmul fast float %6147, %6147
  %6149 = fmul fast float %6148, %6147
  %6150 = fsub fast float %6147, %6149
  %6151 = fmul fast float %6150, %6135
  %6152 = fsub fast float 1.000000e+00, %6149
  %6153 = fsub fast float %6152, %6151
  %6154 = fmul fast float %6145, 5.000000e-01
  %6155 = fmul fast float %6154, %6153
  %6156 = fsub fast float 5.000000e-01, %6155
  br label %6157

; <label>:6157                                    ; preds = %6129, %6005, %5990
  %6158 = phi float [ 1.000000e+00, %5990 ], [ %6071, %6005 ], [ %6156, %6129 ]
  %6159 = fcmp fast ogt float %5420, 0.000000e+00
  br i1 %6159, label %6160, label %6324, !dx.controlflow.hints !111

; <label>:6160                                    ; preds = %6157
  %6161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6162 = extractvalue %dx.types.CBufRet.f32 %6161, 0
  %6163 = fadd fast float %6162, %5310
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.f32 %6164, 2
  %6166 = extractvalue %dx.types.CBufRet.f32 %6164, 3
  %6167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6168 = extractvalue %dx.types.CBufRet.f32 %6167, 0
  %6169 = call float @dx.op.binary.f32(i32 35, float %6163, float 0.000000e+00)  ; FMax(a,b)
  %6170 = fadd fast float %6169, 0x3F10000000000000
  %6171 = fcmp fast oeq float %6168, 0.000000e+00
  br i1 %6171, label %6172, label %6239

; <label>:6172                                    ; preds = %6160
  %6173 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %6174 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6175 = fmul fast float %6174, %5302
  %6176 = fmul fast float %6173, %5306
  %6177 = fadd fast float %6175, 5.000000e-01
  %6178 = call float @dx.op.unary.f32(i32 27, float %6177)  ; Round_ni(value)
  %6179 = fadd fast float %6176, 5.000000e-01
  %6180 = call float @dx.op.unary.f32(i32 27, float %6179)  ; Round_ni(value)
  %6181 = fsub fast float %6177, %6178
  %6182 = fsub fast float %6179, %6180
  %6183 = fadd fast float %6178, -5.000000e-01
  %6184 = fadd fast float %6180, -5.000000e-01
  %6185 = fmul fast float %6181, 2.000000e+00
  %6186 = fsub fast float 3.000000e+00, %6185
  %6187 = fadd fast float %6185, 1.000000e+00
  %6188 = fsub fast float 2.000000e+00, %6181
  %6189 = bitcast float %6186 to i32
  %6190 = sub nsw i32 2129859010, %6189
  %6191 = bitcast i32 %6190 to float
  %6192 = fmul fast float %6191, %6188
  %6193 = fadd fast float %6192, -1.000000e+00
  %6194 = bitcast float %6187 to i32
  %6195 = sub nsw i32 2129859010, %6194
  %6196 = bitcast i32 %6195 to float
  %6197 = fmul fast float %6196, %6181
  %6198 = fadd fast float %6197, 1.000000e+00
  %6199 = fmul fast float %6182, 2.000000e+00
  %6200 = fsub fast float 3.000000e+00, %6199
  %6201 = fadd fast float %6199, 1.000000e+00
  %6202 = fsub fast float 2.000000e+00, %6182
  %6203 = bitcast float %6200 to i32
  %6204 = sub nsw i32 2129859010, %6203
  %6205 = bitcast i32 %6204 to float
  %6206 = fmul fast float %6205, %6202
  %6207 = fadd fast float %6206, -1.000000e+00
  %6208 = bitcast float %6201 to i32
  %6209 = sub nsw i32 2129859010, %6208
  %6210 = bitcast i32 %6209 to float
  %6211 = fmul fast float %6210, %6182
  %6212 = fadd fast float %6211, 1.000000e+00
  %6213 = fadd fast float %6193, %6183
  %6214 = fmul fast float %6213, %6165
  %6215 = fadd fast float %6207, %6184
  %6216 = fmul fast float %6215, %6166
  %6217 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6214, float %6216, float undef, float undef, i32 0, i32 0, i32 undef, float %6170)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6218 = extractvalue %dx.types.ResRet.f32 %6217, 0
  %6219 = fmul fast float %6218, %6186
  %6220 = fadd fast float %6198, %6183
  %6221 = fmul fast float %6220, %6165
  %6222 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6221, float %6216, float undef, float undef, i32 0, i32 0, i32 undef, float %6170)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6223 = extractvalue %dx.types.ResRet.f32 %6222, 0
  %6224 = fmul fast float %6223, %6187
  %6225 = fadd fast float %6212, %6184
  %6226 = fmul fast float %6225, %6166
  %6227 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6214, float %6226, float undef, float undef, i32 0, i32 0, i32 undef, float %6170)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6228 = extractvalue %dx.types.ResRet.f32 %6227, 0
  %6229 = fmul fast float %6228, %6186
  %6230 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %6221, float %6226, float undef, float undef, i32 0, i32 0, i32 undef, float %6170)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6231 = extractvalue %dx.types.ResRet.f32 %6230, 0
  %6232 = fmul fast float %6231, %6187
  %6233 = fadd fast float %6232, %6229
  %6234 = fmul fast float %6233, %6201
  %6235 = fadd fast float %6224, %6219
  %6236 = fmul fast float %6235, %6200
  %6237 = fadd fast float %6236, %6234
  %6238 = fmul fast float %6237, 6.250000e-02
  br label %6324

; <label>:6239                                    ; preds = %6160
  %6240 = fmul fast float %227, 0x401921FB60000000
  %6241 = call float @dx.op.unary.f32(i32 13, float %6240)  ; Sin(value)
  %6242 = call float @dx.op.unary.f32(i32 12, float %6240)  ; Cos(value)
  %6243 = fsub fast float -0.000000e+00, %6241
  br label %6244

; <label>:6244                                    ; preds = %6293, %6239
  %6245 = phi float [ 0.000000e+00, %6239 ], [ %6288, %6293 ]
  %6246 = phi float [ 0.000000e+00, %6239 ], [ %6290, %6293 ]
  %6247 = phi i32 [ 0, %6239 ], [ %6294, %6293 ]
  %6248 = mul i32 %6247, 2
  %6249 = add i32 0, %6248
  %6250 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6249
  %6251 = load float, float* %6250, align 4
  %6252 = mul i32 %6247, 2
  %6253 = add i32 1, %6252
  %6254 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6253
  %6255 = load float, float* %6254, align 4
  %6256 = fmul fast float %6251, %6242
  %6257 = call float @dx.op.tertiary.f32(i32 46, float %6255, float %6243, float %6256)  ; FMad(a,b,c)
  %6258 = fmul fast float %6251, %6241
  %6259 = call float @dx.op.tertiary.f32(i32 46, float %6255, float %6242, float %6258)  ; FMad(a,b,c)
  %6260 = fmul fast float %6257, %6168
  %6261 = fmul fast float %6259, %6168
  %6262 = fadd fast float %6260, %5302
  %6263 = fadd fast float %6261, %5306
  %6264 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %6262, float %6263, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6265 = extractvalue %dx.types.ResRet.f32 %6264, 0
  %6266 = extractvalue %dx.types.ResRet.f32 %6264, 1
  %6267 = extractvalue %dx.types.ResRet.f32 %6264, 2
  %6268 = extractvalue %dx.types.ResRet.f32 %6264, 3
  %6269 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 0
  store float %6265, float* %6269, align 4
  %6270 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 1
  store float %6266, float* %6270, align 4
  %6271 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 2
  store float %6267, float* %6271, align 4
  %6272 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 3
  store float %6268, float* %6272, align 4
  %6273 = fsub fast float %6265, %6170
  %6274 = fcmp fast olt float %6273, 0.000000e+00
  %6275 = select i1 %6274, float 0.000000e+00, float 1.000000e+00
  %6276 = fadd fast float %6275, %6245
  %6277 = fmul fast float %6275, %6273
  %6278 = fadd fast float %6277, %6246
  br label %6279

; <label>:6279                                    ; preds = %6279, %6244
  %6280 = phi i32 [ 1, %6244 ], [ %6291, %6279 ]
  %6281 = phi float [ %6278, %6244 ], [ %6290, %6279 ]
  %6282 = phi float [ %6276, %6244 ], [ %6288, %6279 ]
  %6283 = getelementptr [4 x float], [4 x float]* %83, i32 0, i32 %6280
  %6284 = load float, float* %6283, align 4, !tbaa !106, !noalias !96
  %6285 = fsub fast float %6284, %6170
  %6286 = fcmp fast olt float %6285, 0.000000e+00
  %6287 = select i1 %6286, float 0.000000e+00, float 1.000000e+00
  %6288 = fadd fast float %6287, %6282
  %6289 = fmul fast float %6287, %6285
  %6290 = fadd fast float %6289, %6281
  %6291 = add nuw nsw i32 %6280, 1
  %6292 = icmp eq i32 %6291, 4
  br i1 %6292, label %6293, label %6279, !llvm.loop !108

; <label>:6293                                    ; preds = %6279
  %6294 = add nuw nsw i32 %6247, 1
  %6295 = icmp eq i32 %6294, 8
  br i1 %6295, label %6296, label %6244, !llvm.loop !109

; <label>:6296                                    ; preds = %6293
  %6297 = fdiv fast float 1.000000e+00, %6288
  %6298 = fmul fast float %6297, %6290
  %6299 = fdiv fast float 1.000000e+00, %6170
  %6300 = fmul fast float %6298, %6299
  %6301 = call float @dx.op.unary.f32(i32 7, float %6300)  ; Saturate(value)
  %6302 = call float @dx.op.binary.f32(i32 35, float %6301, float 0.000000e+00)  ; FMax(a,b)
  %6303 = fmul fast float %6288, 3.125000e-02
  %6304 = call float @dx.op.unary.f32(i32 7, float %6303)  ; Saturate(value)
  %6305 = fmul fast float %6304, 2.000000e+00
  %6306 = fadd fast float %6305, -1.000000e+00
  %6307 = fcmp fast ogt float %6306, 0.000000e+00
  %6308 = fcmp fast olt float %6306, 0.000000e+00
  %6309 = zext i1 %6307 to i32
  %6310 = zext i1 %6308 to i32
  %6311 = sub nsw i32 %6309, %6310
  %6312 = sitofp i32 %6311 to float
  %6313 = fmul fast float %6312, %6306
  %6314 = fsub fast float 1.000000e+00, %6313
  %6315 = fmul fast float %6314, %6314
  %6316 = fmul fast float %6315, %6314
  %6317 = fsub fast float %6314, %6316
  %6318 = fmul fast float %6317, %6302
  %6319 = fsub fast float 1.000000e+00, %6316
  %6320 = fsub fast float %6319, %6318
  %6321 = fmul fast float %6312, 5.000000e-01
  %6322 = fmul fast float %6321, %6320
  %6323 = fsub fast float 5.000000e-01, %6322
  br label %6324

; <label>:6324                                    ; preds = %6296, %6172, %6157
  %6325 = phi float [ 1.000000e+00, %6157 ], [ %6238, %6172 ], [ %6323, %6296 ]
  %6326 = fsub fast float %5991, %5826
  %6327 = fmul fast float %6326, %5364
  %6328 = fadd fast float %6327, %5826
  %6329 = fsub fast float %6158, %6328
  %6330 = fmul fast float %6329, %5394
  %6331 = fadd fast float %6330, %6328
  %6332 = fsub fast float %6325, %6331
  %6333 = fmul fast float %6332, %5420
  %6334 = fadd fast float %6333, %6331
  %6335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6336 = extractvalue %dx.types.CBufRet.f32 %6335, 2
  %6337 = fcmp fast ogt float %6336, 0.000000e+00
  br i1 %6337, label %6338, label %6378, !dx.controlflow.hints !112

; <label>:6338                                    ; preds = %6324
  %6339 = fcmp fast ugt float %6336, 0.000000e+00
  br i1 %6339, label %6340, label %6375

; <label>:6340                                    ; preds = %6338
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 0
  %6343 = extractvalue %dx.types.CBufRet.f32 %6341, 1
  %6344 = extractvalue %dx.types.CBufRet.f32 %6341, 2
  %6345 = extractvalue %dx.types.CBufRet.f32 %6341, 3
  %6346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6347 = extractvalue %dx.types.CBufRet.f32 %6346, 0
  %6348 = extractvalue %dx.types.CBufRet.f32 %6346, 1
  %6349 = extractvalue %dx.types.CBufRet.f32 %6346, 2
  %6350 = extractvalue %dx.types.CBufRet.f32 %6346, 3
  %6351 = extractvalue %dx.types.CBufRet.f32 %6335, 0
  %6352 = extractvalue %dx.types.CBufRet.f32 %6335, 1
  %6353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.f32 %6353, 0
  %6355 = extractvalue %dx.types.CBufRet.f32 %6353, 1
  %6356 = extractvalue %dx.types.CBufRet.f32 %6353, 2
  %6357 = fadd fast float %6354, %5279
  %6358 = fadd fast float %6355, %5280
  %6359 = fadd fast float %6356, %5281
  %6360 = fmul fast float %6357, %6342
  %6361 = call float @dx.op.tertiary.f32(i32 46, float %6343, float %6358, float %6360)  ; FMad(a,b,c)
  %6362 = call float @dx.op.tertiary.f32(i32 46, float %6344, float %6359, float %6361)  ; FMad(a,b,c)
  %6363 = fadd fast float %6362, %6345
  %6364 = fmul fast float %6357, %6347
  %6365 = call float @dx.op.tertiary.f32(i32 46, float %6348, float %6358, float %6364)  ; FMad(a,b,c)
  %6366 = call float @dx.op.tertiary.f32(i32 46, float %6349, float %6359, float %6365)  ; FMad(a,b,c)
  %6367 = fadd fast float %6366, %6350
  %6368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %6363, float %6367, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6369 = extractvalue %dx.types.ResRet.f32 %6368, 0
  %6370 = fmul fast float %6369, %6352
  %6371 = fadd fast float %6370, %6351
  %6372 = call float @dx.op.unary.f32(i32 7, float %6371)  ; Saturate(value)
  %6373 = fmul fast float %6372, %6336
  %6374 = fsub fast float 1.000000e+00, %6373
  br label %6375

; <label>:6375                                    ; preds = %6340, %6338
  %6376 = phi float [ %6374, %6340 ], [ 1.000000e+00, %6338 ]
  %6377 = fmul fast float %6376, %6334
  br label %6378

; <label>:6378                                    ; preds = %6375, %6324, %5259
  %6379 = phi float [ 1.000000e+00, %5259 ], [ %6377, %6375 ], [ %6334, %6324 ]
  %6380 = call float @dx.op.binary.f32(i32 36, float %6379, float %6379)  ; FMin(a,b)
  %6381 = call float @dx.op.binary.f32(i32 36, float %6379, float %6380)  ; FMin(a,b)
  %6382 = fcmp fast ogt float %6381, 0.000000e+00
  br i1 %6382, label %6383, label %6549, !dx.controlflow.hints !113

; <label>:6383                                    ; preds = %6378
  %6384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.f32 %6384, 0
  %6386 = extractvalue %dx.types.CBufRet.f32 %6384, 1
  %6387 = extractvalue %dx.types.CBufRet.f32 %6384, 2
  %6388 = extractvalue %dx.types.CBufRet.f32 %6384, 3
  %6389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6390 = extractvalue %dx.types.CBufRet.f32 %6389, 0
  %6391 = extractvalue %dx.types.CBufRet.f32 %6389, 1
  %6392 = extractvalue %dx.types.CBufRet.f32 %6389, 2
  %6393 = extractvalue %dx.types.CBufRet.f32 %6389, 3
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6397 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6398 = extractvalue %dx.types.CBufRet.f32 %6394, 3
  %6399 = fmul fast float %6385, %5279
  %6400 = call float @dx.op.tertiary.f32(i32 46, float %5280, float %6386, float %6399)  ; FMad(a,b,c)
  %6401 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %6387, float %6400)  ; FMad(a,b,c)
  %6402 = fadd fast float %6401, %6388
  %6403 = fmul fast float %6390, %5279
  %6404 = call float @dx.op.tertiary.f32(i32 46, float %5280, float %6391, float %6403)  ; FMad(a,b,c)
  %6405 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %6392, float %6404)  ; FMad(a,b,c)
  %6406 = fadd fast float %6405, %6393
  %6407 = fmul fast float %6395, %5279
  %6408 = call float @dx.op.tertiary.f32(i32 46, float %5280, float %6396, float %6407)  ; FMad(a,b,c)
  %6409 = call float @dx.op.tertiary.f32(i32 46, float %5281, float %6397, float %6408)  ; FMad(a,b,c)
  %6410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.f32 %6410, 0
  %6412 = extractvalue %dx.types.CBufRet.f32 %6410, 1
  %6413 = extractvalue %dx.types.CBufRet.f32 %6410, 3
  %6414 = fmul fast float %6413, %6402
  %6415 = fmul fast float %6413, %6406
  %6416 = fadd fast float %6414, %6411
  %6417 = fadd fast float %6415, %6412
  %6418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6419 = extractvalue %dx.types.CBufRet.f32 %6418, 0
  %6420 = extractvalue %dx.types.CBufRet.f32 %6418, 1
  %6421 = fsub fast float %6416, %6419
  %6422 = fsub fast float %6417, %6420
  %6423 = fcmp fast olt float %6421, 0.000000e+00
  %6424 = fcmp fast olt float %6422, 0.000000e+00
  %6425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6426 = extractvalue %dx.types.CBufRet.f32 %6425, 0
  %6427 = extractvalue %dx.types.CBufRet.f32 %6425, 1
  %6428 = extractvalue %dx.types.CBufRet.f32 %6425, 2
  %6429 = extractvalue %dx.types.CBufRet.f32 %6425, 3
  %6430 = select i1 %6423, float %6426, float %6428
  %6431 = select i1 %6424, float %6427, float %6429
  %6432 = fmul fast float %6430, %6421
  %6433 = fmul fast float %6431, %6422
  %6434 = call float @dx.op.unary.f32(i32 6, float %6432)  ; FAbs(value)
  %6435 = call float @dx.op.unary.f32(i32 6, float %6433)  ; FAbs(value)
  %6436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6437 = extractvalue %dx.types.CBufRet.f32 %6436, 0
  %6438 = call float @dx.op.binary.f32(i32 35, float %6434, float %6435)  ; FMax(a,b)
  %6439 = fsub fast float %6437, %6438
  %6440 = call float @dx.op.unary.f32(i32 7, float %6439)  ; Saturate(value)
  %6441 = fcmp fast ogt float %6440, 0.000000e+00
  br i1 %6441, label %6442, label %6483, !dx.controlflow.hints !114

; <label>:6442                                    ; preds = %6383
  %6443 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %6416, float %6417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6444 = extractvalue %dx.types.ResRet.f32 %6443, 1
  %6445 = fcmp fast ogt float %6444, 0.000000e+00
  br i1 %6445, label %6446, label %6478

; <label>:6446                                    ; preds = %6442
  %6447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %6416, float %6417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6448 = extractvalue %dx.types.ResRet.f32 %6447, 0
  %6449 = extractvalue %dx.types.ResRet.f32 %6447, 1
  %6450 = extractvalue %dx.types.ResRet.f32 %6447, 2
  %6451 = extractvalue %dx.types.ResRet.f32 %6447, 3
  %6452 = fsub fast float 1.000000e+00, %6398
  %6453 = fsub fast float %6452, %6409
  %6454 = fmul fast float %6453, 0x400921FB60000000
  %6455 = fadd fast float %6454, 0x3FF921FB60000000
  %6456 = call float @dx.op.unary.f32(i32 13, float %6455)  ; Sin(value)
  %6457 = fadd fast float %6456, -1.000000e+00
  %6458 = fmul fast float %6457, 0x3FD45F3060000000
  %6459 = fmul fast float %6453, 0x401921FB60000000
  %6460 = fadd fast float %6459, 0x400921FB60000000
  %6461 = call float @dx.op.unary.f32(i32 13, float %6460)  ; Sin(value)
  %6462 = fadd fast float %6461, 0x3E7777A5C0000000
  %6463 = fmul fast float %6462, 0x3FC45F3060000000
  %6464 = fmul fast float %6453, 0x4022D97C80000000
  %6465 = fadd fast float %6464, 0x4012D97C80000000
  %6466 = call float @dx.op.unary.f32(i32 13, float %6465)  ; Sin(value)
  %6467 = fadd fast float %6466, 1.000000e+00
  %6468 = fmul fast float %6467, 0x3FBB2995E0000000
  %6469 = fmul fast float %6453, 0x402921FB60000000
  %6470 = fadd fast float %6469, 0x401921FB60000000
  %6471 = call float @dx.op.unary.f32(i32 13, float %6470)  ; Sin(value)
  %6472 = fadd fast float %6471, 0xBE8777A5C0000000
  %6473 = fmul fast float %6472, 0x3FB45F3060000000
  %6474 = call float @dx.op.dot4.f32(i32 56, float %6448, float %6449, float %6450, float %6451, float %6458, float %6463, float %6468, float %6473)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6475 = fmul fast float %6474, 0xBFF7154760000000
  %6476 = call float @dx.op.unary.f32(i32 21, float %6475)  ; Exp(value)
  %6477 = call float @dx.op.unary.f32(i32 7, float %6476)  ; Saturate(value)
  br label %6478

; <label>:6478                                    ; preds = %6446, %6442
  %6479 = phi float [ %6477, %6446 ], [ 1.000000e+00, %6442 ]
  %6480 = fadd fast float %6479, -1.000000e+00
  %6481 = fmul fast float %6480, %6440
  %6482 = fadd fast float %6481, 1.000000e+00
  br label %6483

; <label>:6483                                    ; preds = %6478, %6383
  %6484 = phi float [ %6482, %6478 ], [ 1.000000e+00, %6383 ]
  %6485 = fmul fast float %6484, %6379
  %6486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6487 = extractvalue %dx.types.CBufRet.f32 %6486, 0
  %6488 = extractvalue %dx.types.CBufRet.f32 %6486, 1
  %6489 = extractvalue %dx.types.CBufRet.f32 %6486, 2
  %6490 = fadd fast float %6487, %155
  %6491 = fadd fast float %6488, %156
  %6492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6493 = extractvalue %dx.types.CBufRet.f32 %6492, 1
  %6494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6495 = extractvalue %dx.types.CBufRet.f32 %6494, 0
  %6496 = extractvalue %dx.types.CBufRet.f32 %6494, 1
  %6497 = extractvalue %dx.types.CBufRet.f32 %6494, 2
  %6498 = fsub fast float -0.000000e+00, %6490
  %6499 = fsub fast float -0.000000e+00, %6491
  %6500 = fsub fast float -0.000000e+00, %157
  %6501 = fsub fast float %6500, %6489
  %6502 = fadd fast float %6501, %6493
  %6503 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6498, float %6499, float %6502)  ; Dot3(ax,ay,az,bx,by,bz)
  %6504 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6495, float %6496, float %6497)  ; Dot3(ax,ay,az,bx,by,bz)
  %6505 = fdiv fast float 1.000000e+00, %6504
  %6506 = fmul fast float %6505, %6503
  %6507 = fmul fast float %6495, %6506
  %6508 = fmul fast float %6496, %6506
  %6509 = fadd fast float %6507, %6490
  %6510 = fadd fast float %6508, %6491
  %6511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6512 = extractvalue %dx.types.CBufRet.f32 %6511, 0
  %6513 = extractvalue %dx.types.CBufRet.f32 %6511, 1
  %6514 = fsub fast float %6509, %6512
  %6515 = fsub fast float %6510, %6513
  %6516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6517 = extractvalue %dx.types.CBufRet.f32 %6516, 2
  %6518 = extractvalue %dx.types.CBufRet.f32 %6516, 3
  %6519 = fmul fast float %6514, %6517
  %6520 = fmul fast float %6515, %6518
  %6521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6522 = extractvalue %dx.types.CBufRet.i32 %6521, 3
  %6523 = icmp eq i32 %6522, 0
  br i1 %6523, label %6529, label %6524

; <label>:6524                                    ; preds = %6483
  %6525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %6519, float %6520, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6526 = extractvalue %dx.types.ResRet.f32 %6525, 0
  %6527 = extractvalue %dx.types.ResRet.f32 %6525, 1
  %6528 = extractvalue %dx.types.ResRet.f32 %6525, 2
  br label %6534

; <label>:6529                                    ; preds = %6483
  %6530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %6519, float %6520, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6531 = extractvalue %dx.types.ResRet.f32 %6530, 0
  %6532 = extractvalue %dx.types.ResRet.f32 %6530, 1
  %6533 = extractvalue %dx.types.ResRet.f32 %6530, 2
  br label %6534

; <label>:6534                                    ; preds = %6529, %6524
  %6535 = phi float [ %6526, %6524 ], [ %6531, %6529 ]
  %6536 = phi float [ %6527, %6524 ], [ %6532, %6529 ]
  %6537 = phi float [ %6528, %6524 ], [ %6533, %6529 ]
  %6538 = extractvalue %dx.types.CBufRet.f32 %6492, 2
  %6539 = fmul fast float %6538, %6535
  %6540 = extractvalue %dx.types.CBufRet.f32 %6492, 0
  %6541 = fsub fast float %6506, %6540
  %6542 = fsub fast float %6541, %6539
  %6543 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6542)  ; FMax(a,b)
  %6544 = fmul fast float %6543, %6536
  %6545 = call float @dx.op.binary.f32(i32 36, float %6537, float %6544)  ; FMin(a,b)
  %6546 = fmul fast float %6545, 0xBFF7154760000000
  %6547 = call float @dx.op.unary.f32(i32 21, float %6546)  ; Exp(value)
  %6548 = fmul fast float %6485, %6547
  br label %6549

; <label>:6549                                    ; preds = %6534, %6378
  %6550 = phi float [ %6548, %6534 ], [ %6379, %6378 ]
  %6551 = call float @dx.op.binary.f32(i32 36, float %6550, float %6550)  ; FMin(a,b)
  %6552 = call float @dx.op.binary.f32(i32 36, float %6550, float %6551)  ; FMin(a,b)
  %6553 = fcmp fast ogt float %6552, 0.000000e+00
  br i1 %6553, label %6554, label %6725, !dx.controlflow.hints !115

; <label>:6554                                    ; preds = %6549
  %6555 = fmul fast float %6550, %5271
  %6556 = fmul fast float %6550, %5272
  %6557 = fmul fast float %6550, %5273
  %6558 = fsub fast float %5260, %4556
  %6559 = fsub fast float %5261, %4555
  %6560 = fsub fast float %5262, %4554
  %6561 = call float @dx.op.dot3.f32(i32 55, float %6558, float %6559, float %6560, float %6558, float %6559, float %6560)  ; Dot3(ax,ay,az,bx,by,bz)
  %6562 = call float @dx.op.unary.f32(i32 25, float %6561)  ; Rsqrt(value)
  %6563 = fmul fast float %6562, %6558
  %6564 = fmul fast float %6562, %6559
  %6565 = fmul fast float %6562, %6560
  %6566 = call float @dx.op.dot3.f32(i32 55, float %5260, float %5261, float %5262, float %4563, float %4564, float %4565)  ; Dot3(ax,ay,az,bx,by,bz)
  %6567 = call float @dx.op.dot3.f32(i32 55, float %4553, float %4552, float %4551, float %6563, float %6564, float %6565)  ; Dot3(ax,ay,az,bx,by,bz)
  %6568 = call float @dx.op.unary.f32(i32 7, float %6566)  ; Saturate(value)
  %6569 = fmul fast float %6568, %6568
  %6570 = fmul fast float %6569, %5255
  %6571 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  %6572 = fmul fast float %6571, %6568
  %6573 = call float @dx.op.dot3.f32(i32 55, float %4563, float %4564, float %4565, float %6563, float %6564, float %6565)  ; Dot3(ax,ay,az,bx,by,bz)
  %6574 = fmul fast float %6573, %6573
  %6575 = call float @dx.op.unary.f32(i32 6, float %6566)  ; FAbs(value)
  %6576 = fsub fast float 1.000000e+00, %4588
  %6577 = fmul fast float %4570, %4570
  %6578 = fmul fast float %6577, %6576
  %6579 = fadd fast float %6578, %4588
  %6580 = bitcast float %6579 to i32
  %6581 = ashr i32 %6580, 1
  %6582 = add nsw i32 %6581, 532487669
  %6583 = bitcast i32 %6582 to float
  %6584 = fadd fast float %6583, %4570
  %6585 = fmul fast float %4588, %6574
  %6586 = fsub fast float 1.000000e+00, %6574
  %6587 = fadd fast float %6586, %6585
  %6588 = fmul fast float %6575, %6575
  %6589 = fmul fast float %6588, %6576
  %6590 = fadd fast float %6589, %4588
  %6591 = bitcast float %6590 to i32
  %6592 = ashr i32 %6591, 1
  %6593 = add nsw i32 %6592, 532487669
  %6594 = bitcast i32 %6593 to float
  %6595 = fadd fast float %6594, %6575
  %6596 = fmul fast float %6587, %6587
  %6597 = fmul fast float %6596, %6584
  %6598 = fmul fast float %6597, %6595
  %6599 = fdiv fast float 0x3FF0A00000000000, %6598
  %6600 = fmul fast float %6599, %4588
  %6601 = call float @dx.op.unary.f32(i32 6, float %6567)  ; FAbs(value)
  %6602 = fsub fast float 1.000000e+00, %6601
  %6603 = bitcast float %6602 to i32
  %6604 = sitofp i32 %6603 to float
  %6605 = fmul fast float %6604, 5.000000e+00
  %6606 = fadd fast float %6605, 0xC1EFBF8940000000
  %6607 = fptosi float %6606 to i32
  %6608 = bitcast i32 %6607 to float
  %6609 = fsub fast float 1.000000e+00, %4560
  %6610 = fsub fast float 1.000000e+00, %4561
  %6611 = fsub fast float 1.000000e+00, %4568
  %6612 = fmul fast float %6608, %6609
  %6613 = fmul fast float %6608, %6610
  %6614 = fmul fast float %6608, %6611
  %6615 = fadd fast float %6612, %4560
  %6616 = fadd fast float %6613, %4561
  %6617 = fadd fast float %6614, %4568
  br i1 %4706, label %6618, label %6641

; <label>:6618                                    ; preds = %6554
  %6619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %4246, float %6601, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6620 = extractvalue %dx.types.ResRet.f32 %6619, 0
  %6621 = extractvalue %dx.types.ResRet.f32 %6619, 1
  %6622 = extractvalue %dx.types.ResRet.f32 %6619, 2
  %6623 = fadd fast float %6620, -5.000000e-01
  %6624 = fadd fast float %6621, -5.000000e-01
  %6625 = fadd fast float %6622, -5.000000e-01
  %6626 = fmul fast float %4560, 4.000000e+00
  %6627 = fmul fast float %6626, %6609
  %6628 = fmul fast float %6627, %6623
  %6629 = fmul fast float %4561, 4.000000e+00
  %6630 = fmul fast float %6629, %6610
  %6631 = fmul fast float %6630, %6624
  %6632 = fmul fast float %4568, 4.000000e+00
  %6633 = fmul fast float %6632, %6611
  %6634 = fmul fast float %6633, %6625
  %6635 = fadd fast float %6628, %6615
  %6636 = fadd fast float %6631, %6616
  %6637 = fadd fast float %6634, %6617
  %6638 = call float @dx.op.unary.f32(i32 7, float %6635)  ; Saturate(value)
  %6639 = call float @dx.op.unary.f32(i32 7, float %6636)  ; Saturate(value)
  %6640 = call float @dx.op.unary.f32(i32 7, float %6637)  ; Saturate(value)
  br label %6641

; <label>:6641                                    ; preds = %6618, %6554
  %6642 = phi float [ %6638, %6618 ], [ %6615, %6554 ]
  %6643 = phi float [ %6639, %6618 ], [ %6616, %6554 ]
  %6644 = phi float [ %6640, %6618 ], [ %6617, %6554 ]
  %6645 = fmul fast float %6566, 9.843750e-01
  %6646 = fadd fast float %6645, 7.812500e-03
  %6647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %6646, float %4696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6648 = extractvalue %dx.types.ResRet.f32 %6647, 2
  %6649 = extractvalue %dx.types.ResRet.f32 %6647, 3
  %6650 = fmul fast float %6648, %4560
  %6651 = fmul fast float %6648, %4561
  %6652 = fmul fast float %6648, %4568
  %6653 = fadd fast float %6650, %6649
  %6654 = fadd fast float %6651, %6649
  %6655 = fadd fast float %6652, %6649
  br i1 %4706, label %6656, label %6679

; <label>:6656                                    ; preds = %6641
  %6657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %4246, float %6566, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6658 = extractvalue %dx.types.ResRet.f32 %6657, 0
  %6659 = extractvalue %dx.types.ResRet.f32 %6657, 1
  %6660 = extractvalue %dx.types.ResRet.f32 %6657, 2
  %6661 = fadd fast float %6658, -5.000000e-01
  %6662 = fadd fast float %6659, -5.000000e-01
  %6663 = fadd fast float %6660, -5.000000e-01
  %6664 = fmul fast float %4560, 4.000000e+00
  %6665 = fmul fast float %6664, %6609
  %6666 = fmul fast float %6665, %6661
  %6667 = fmul fast float %4561, 4.000000e+00
  %6668 = fmul fast float %6667, %6610
  %6669 = fmul fast float %6668, %6662
  %6670 = fmul fast float %4568, 4.000000e+00
  %6671 = fmul fast float %6670, %6611
  %6672 = fmul fast float %6671, %6663
  %6673 = fadd fast float %6666, %6653
  %6674 = fadd fast float %6669, %6654
  %6675 = fadd fast float %6672, %6655
  %6676 = call float @dx.op.unary.f32(i32 7, float %6673)  ; Saturate(value)
  %6677 = call float @dx.op.unary.f32(i32 7, float %6674)  ; Saturate(value)
  %6678 = call float @dx.op.unary.f32(i32 7, float %6675)  ; Saturate(value)
  br label %6679

; <label>:6679                                    ; preds = %6656, %6641
  %6680 = phi float [ %6676, %6656 ], [ %6653, %6641 ]
  %6681 = phi float [ %6677, %6656 ], [ %6654, %6641 ]
  %6682 = phi float [ %6678, %6656 ], [ %6655, %6641 ]
  %6683 = call float @dx.op.binary.f32(i32 35, float %6681, float %6682)  ; FMax(a,b)
  %6684 = call float @dx.op.binary.f32(i32 35, float %6680, float %6683)  ; FMax(a,b)
  %6685 = fsub fast float 1.000000e+00, %6684
  %6686 = fmul fast float %6642, %6600
  %6687 = fmul fast float %6643, %6600
  %6688 = fmul fast float %6644, %6600
  %6689 = fsub fast float 1.000000e+00, %6567
  %6690 = bitcast float %6689 to i32
  %6691 = sitofp i32 %6690 to float
  %6692 = fmul fast float %6691, 5.000000e+00
  %6693 = fadd fast float %6692, 0xC1EFBF8940000000
  %6694 = fptosi float %6693 to i32
  %6695 = bitcast i32 %6694 to float
  %6696 = fmul fast float %6695, %4247
  %6697 = fmul fast float %6685, %6696
  %6698 = fmul fast float %6697, %5220
  %6699 = fmul fast float %6697, %5221
  %6700 = fmul fast float %6697, %5222
  %6701 = fadd fast float %6698, %6686
  %6702 = fadd fast float %6699, %6687
  %6703 = fadd fast float %6700, %6688
  %6704 = fmul fast float %6572, %6555
  %6705 = fmul fast float %6704, %6685
  %6706 = fmul fast float %6572, %6556
  %6707 = fmul fast float %6706, %6685
  %6708 = fmul fast float %6572, %6557
  %6709 = fmul fast float %6708, %6685
  %6710 = fmul fast float %6704, %6701
  %6711 = fmul fast float %6706, %6702
  %6712 = fmul fast float %6708, %6703
  %6713 = fadd fast float %6705, %5204
  %6714 = fmul fast float %6713, %4243
  %6715 = fadd fast float %6707, %5205
  %6716 = fmul fast float %6715, %4243
  %6717 = fadd fast float %6709, %5206
  %6718 = fmul fast float %6717, %4243
  %6719 = fadd fast float %6710, %5247
  %6720 = fmul fast float %6719, %4243
  %6721 = fadd fast float %6711, %5250
  %6722 = fmul fast float %6721, %4243
  %6723 = fadd fast float %6712, %5253
  %6724 = fmul fast float %6723, %4243
  br label %6725

; <label>:6725                                    ; preds = %6679, %6549, %5200
  %6726 = phi float [ %5248, %5200 ], [ %5248, %6549 ], [ %6720, %6679 ]
  %6727 = phi float [ %5251, %5200 ], [ %5251, %6549 ], [ %6722, %6679 ]
  %6728 = phi float [ %5254, %5200 ], [ %5254, %6549 ], [ %6724, %6679 ]
  %6729 = phi float [ %5243, %5200 ], [ %5243, %6549 ], [ %6714, %6679 ]
  %6730 = phi float [ %5244, %5200 ], [ %5244, %6549 ], [ %6716, %6679 ]
  %6731 = phi float [ %5245, %5200 ], [ %5245, %6549 ], [ %6718, %6679 ]
  %6732 = fmul fast float %4243, %4243
  %6733 = fsub fast float 1.000000e+00, %6732
  %6734 = call float @dx.op.dot3.f32(i32 55, float %6733, float %6733, float %6733, float 0x3FD5555560000000, float 0x3FD5555560000000, float 0x3FD5555560000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6735 = fsub fast float 1.000000e+00, %6734
  %6736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6737 = extractvalue %dx.types.CBufRet.f32 %6736, 0
  %6738 = fmul fast float %6737, %5226
  %6739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6740 = extractvalue %dx.types.CBufRet.f32 %6739, 3
  %6741 = fsub fast float 1.000000e+00, %4250
  %6742 = call float @dx.op.unary.f32(i32 7, float %6741)  ; Saturate(value)
  %6743 = fadd fast float %6731, %4249
  %6744 = fmul fast float %6743, %4250
  %6745 = fmul fast float %6742, %6740
  %6746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %6747 = extractvalue %dx.types.CBufRet.f32 %6746, 3
  %6748 = fmul fast float %6729, %4557
  %6749 = fmul fast float %6730, %4558
  %6750 = fmul fast float %6731, %4559
  %6751 = fcmp fast ogt float %80, %177
  %6752 = and i1 %6751, %4289
  %6753 = or i1 %4368, %6752
  %6754 = icmp eq i32 %4288, 2
  %6755 = fcmp fast ole float %80, %177
  %6756 = and i1 %6755, %6754
  %6757 = or i1 %6756, %6753
  br i1 %6752, label %6758, label %7015

; <label>:6758                                    ; preds = %6725
  %6759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %6760 = extractvalue %dx.types.CBufRet.f32 %6759, 2
  %6761 = extractvalue %dx.types.CBufRet.f32 %6759, 3
  %6762 = fmul fast float %6760, %92
  %6763 = fmul fast float %6761, %93
  %6764 = call float @dx.op.unary.f32(i32 7, float %6762)  ; Saturate(value)
  %6765 = call float @dx.op.unary.f32(i32 7, float %6763)  ; Saturate(value)
  %6766 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %6764, float %6765, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6767 = extractvalue %dx.types.ResRet.f32 %6766, 0
  %6768 = extractvalue %dx.types.ResRet.f32 %6766, 1
  %6769 = extractvalue %dx.types.ResRet.f32 %6766, 2
  %6770 = extractvalue %dx.types.ResRet.f32 %6766, 3
  %6771 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %6764, float %6765, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6772 = extractvalue %dx.types.ResRet.f32 %6771, 0
  %6773 = extractvalue %dx.types.ResRet.f32 %6771, 1
  %6774 = extractvalue %dx.types.ResRet.f32 %6771, 2
  %6775 = extractvalue %dx.types.ResRet.f32 %6771, 3
  %6776 = call float @dx.op.binary.f32(i32 35, float %6768, float %6769)  ; FMax(a,b)
  %6777 = call float @dx.op.binary.f32(i32 35, float %6767, float %6776)  ; FMax(a,b)
  %6778 = call float @dx.op.binary.f32(i32 35, float %6777, float %6770)  ; FMax(a,b)
  %6779 = call float @dx.op.binary.f32(i32 36, float %6773, float %6774)  ; FMin(a,b)
  %6780 = call float @dx.op.binary.f32(i32 36, float %6772, float %6779)  ; FMin(a,b)
  %6781 = call float @dx.op.binary.f32(i32 36, float %6780, float %6775)  ; FMin(a,b)
  %6782 = fmul fast float %6778, 2.550000e+02
  %6783 = fadd fast float %6782, 0x3F70101020000000
  %6784 = fptoui float %6783 to i32
  %6785 = fmul fast float %6781, 2.550000e+02
  %6786 = fadd fast float %6785, 0x3F70101020000000
  %6787 = fptoui float %6786 to i32
  %6788 = icmp ult i32 %6784, %6787
  br i1 %6788, label %6789, label %6957

; <label>:6789                                    ; preds = %6758
  %6790 = fcmp fast ogt float %79, 9.843750e-01
  %6791 = fadd fast float %80, -4.000000e+00
  %6792 = select i1 %6790, float -4.000000e+00, float %6791
  %6793 = call float @dx.op.binary.f32(i32 35, float %6792, float 0.000000e+00)  ; FMax(a,b)
  %6794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6795 = extractvalue %dx.types.CBufRet.f32 %6794, 0
  %6796 = fadd fast float %6795, %6793
  %6797 = extractvalue %dx.types.CBufRet.f32 %6794, 2
  %6798 = fmul fast float %6796, %6797
  %6799 = call float @dx.op.unary.f32(i32 23, float %6798)  ; Log(value)
  %6800 = extractvalue %dx.types.CBufRet.f32 %6794, 3
  %6801 = fmul fast float %6800, %6799
  %6802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6803 = extractvalue %dx.types.CBufRet.f32 %6802, 2
  %6804 = fmul fast float %6801, %6803
  %6805 = call float @dx.op.unary.f32(i32 7, float %6804)  ; Saturate(value)
  %6806 = uitofp i32 %6784 to float
  %6807 = uitofp i32 %6787 to float
  %6808 = fadd fast float %6806, 5.000000e-01
  %6809 = fadd fast float %6807, 5.000000e-01
  %6810 = fmul fast float %6803, %6808
  %6811 = fmul fast float %6803, %6809
  %6812 = fadd fast float %6810, 0x3F0FFB4800000000
  %6813 = fadd fast float %6811, 0xBF0FFB4800000000
  %6814 = call float @dx.op.binary.f32(i32 35, float %6805, float %6812)  ; FMax(a,b)
  %6815 = call float @dx.op.binary.f32(i32 36, float %6814, float %6813)  ; FMin(a,b)
  %6816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %6817 = extractvalue %dx.types.CBufRet.f32 %6816, 1
  %6818 = extractvalue %dx.types.CBufRet.f32 %6816, 2
  %6819 = extractvalue %dx.types.CBufRet.f32 %6816, 0
  %6820 = fmul fast float %6817, %6815
  %6821 = fadd fast float %6819, %6820
  %6822 = fadd fast float %6819, %6818
  %6823 = fsub fast float %6817, %6818
  %6824 = fadd fast float %6823, %6819
  %6825 = call float @dx.op.binary.f32(i32 35, float %6821, float %6822)  ; FMax(a,b)
  %6826 = call float @dx.op.binary.f32(i32 36, float %6825, float %6824)  ; FMin(a,b)
  %6827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %6764, float %6765, float %6826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6828 = extractvalue %dx.types.ResRet.f32 %6827, 0
  %6829 = extractvalue %dx.types.ResRet.f32 %6827, 1
  %6830 = extractvalue %dx.types.ResRet.f32 %6827, 2
  %6831 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %6832 = extractvalue %dx.types.CBufRet.i32 %6831, 0
  %6833 = extractvalue %dx.types.CBufRet.i32 %6831, 1
  %6834 = uitofp i32 %6832 to float
  %6835 = uitofp i32 %6833 to float
  %6836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %6837 = extractvalue %dx.types.CBufRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.CBufRet.f32 %6836, 1
  %6839 = fmul fast float %6834, %6764
  %6840 = fmul fast float %6835, %6765
  %6841 = fadd fast float %6839, -5.000000e-01
  %6842 = fadd fast float %6840, -5.000000e-01
  %6843 = call float @dx.op.unary.f32(i32 22, float %6841)  ; Frc(value)
  %6844 = call float @dx.op.unary.f32(i32 22, float %6842)  ; Frc(value)
  %6845 = fmul fast float %6843, %6843
  %6846 = fmul fast float %6845, %6843
  %6847 = fsub fast float 3.000000e+00, %6843
  %6848 = fmul fast float %6845, %6847
  %6849 = fmul fast float %6843, 3.000000e+00
  %6850 = fmul fast float %6846, 3.000000e+00
  %6851 = fmul fast float %6845, 6.000000e+00
  %6852 = fsub fast float %6850, %6851
  %6853 = fadd fast float %6852, 4.000000e+00
  %6854 = fmul fast float %6853, 0x3FC5555560000000
  %6855 = fmul fast float %6846, -3.000000e+00
  %6856 = fadd fast float %6845, %6843
  %6857 = fmul fast float %6856, 3.000000e+00
  %6858 = fadd fast float %6855, 1.000000e+00
  %6859 = fadd fast float %6858, %6857
  %6860 = fmul fast float %6846, 0x3FC5555560000000
  %6861 = fmul fast float %6844, %6844
  %6862 = fmul fast float %6861, %6844
  %6863 = fsub fast float 3.000000e+00, %6844
  %6864 = fmul fast float %6861, %6863
  %6865 = fmul fast float %6844, 3.000000e+00
  %6866 = fmul fast float %6862, 3.000000e+00
  %6867 = fmul fast float %6861, 6.000000e+00
  %6868 = fsub fast float %6866, %6867
  %6869 = fadd fast float %6868, 4.000000e+00
  %6870 = fmul fast float %6869, 0x3FC5555560000000
  %6871 = fmul fast float %6862, -3.000000e+00
  %6872 = fadd fast float %6861, %6844
  %6873 = fmul fast float %6872, 3.000000e+00
  %6874 = fadd fast float %6871, 1.000000e+00
  %6875 = fadd fast float %6874, %6873
  %6876 = fmul fast float %6862, 0x3FC5555560000000
  %6877 = fadd fast float %6843, 1.000000e+00
  %6878 = fsub fast float 1.000000e+00, %6849
  %6879 = fadd fast float %6878, %6848
  %6880 = fadd fast float %6879, %6853
  %6881 = fmul fast float %6880, 0x3FC5555560000000
  %6882 = fdiv fast float %6854, %6881
  %6883 = fsub fast float %6877, %6882
  %6884 = fsub fast float 1.000000e+00, %6843
  %6885 = fadd fast float %6859, %6846
  %6886 = fmul fast float %6885, 0x3FC5555560000000
  %6887 = fdiv fast float %6860, %6886
  %6888 = fadd fast float %6884, %6887
  %6889 = fadd fast float %6844, 1.000000e+00
  %6890 = fsub fast float 1.000000e+00, %6865
  %6891 = fadd fast float %6890, %6864
  %6892 = fadd fast float %6891, %6869
  %6893 = fmul fast float %6892, 0x3FC5555560000000
  %6894 = fdiv fast float %6870, %6893
  %6895 = fsub fast float %6889, %6894
  %6896 = fsub fast float 1.000000e+00, %6844
  %6897 = fadd fast float %6875, %6862
  %6898 = fmul fast float %6897, 0x3FC5555560000000
  %6899 = fdiv fast float %6876, %6898
  %6900 = fadd fast float %6899, %6896
  %6901 = fmul fast float %6883, %6837
  %6902 = fsub fast float %6764, %6901
  %6903 = fmul fast float %6888, %6837
  %6904 = fadd fast float %6903, %6764
  %6905 = fmul fast float %6900, %6838
  %6906 = fadd fast float %6905, %6765
  %6907 = fmul fast float %6895, %6838
  %6908 = fsub fast float %6765, %6907
  %6909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %6902, float %6908, float %6826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6910 = extractvalue %dx.types.ResRet.f32 %6909, 0
  %6911 = extractvalue %dx.types.ResRet.f32 %6909, 1
  %6912 = extractvalue %dx.types.ResRet.f32 %6909, 2
  %6913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %6904, float %6908, float %6826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6914 = extractvalue %dx.types.ResRet.f32 %6913, 0
  %6915 = extractvalue %dx.types.ResRet.f32 %6913, 1
  %6916 = extractvalue %dx.types.ResRet.f32 %6913, 2
  %6917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %6902, float %6906, float %6826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6918 = extractvalue %dx.types.ResRet.f32 %6917, 0
  %6919 = extractvalue %dx.types.ResRet.f32 %6917, 1
  %6920 = extractvalue %dx.types.ResRet.f32 %6917, 2
  %6921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %6904, float %6906, float %6826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6922 = extractvalue %dx.types.ResRet.f32 %6921, 0
  %6923 = extractvalue %dx.types.ResRet.f32 %6921, 1
  %6924 = extractvalue %dx.types.ResRet.f32 %6921, 2
  %6925 = fsub fast float %6918, %6910
  %6926 = fsub fast float %6919, %6911
  %6927 = fsub fast float %6920, %6912
  %6928 = fmul fast float %6925, %6898
  %6929 = fmul fast float %6926, %6898
  %6930 = fmul fast float %6927, %6898
  %6931 = fadd fast float %6928, %6910
  %6932 = fadd fast float %6929, %6911
  %6933 = fadd fast float %6930, %6912
  %6934 = fsub fast float %6922, %6914
  %6935 = fsub fast float %6923, %6915
  %6936 = fsub fast float %6924, %6916
  %6937 = fmul fast float %6934, %6898
  %6938 = fmul fast float %6935, %6898
  %6939 = fmul fast float %6936, %6898
  %6940 = fsub fast float %6914, %6931
  %6941 = fadd fast float %6940, %6937
  %6942 = fsub fast float %6915, %6932
  %6943 = fadd fast float %6942, %6938
  %6944 = fsub fast float %6916, %6933
  %6945 = fadd fast float %6944, %6939
  %6946 = fmul fast float %6941, %6886
  %6947 = fmul fast float %6943, %6886
  %6948 = fmul fast float %6945, %6886
  %6949 = fadd fast float %6946, %6931
  %6950 = fadd fast float %6947, %6932
  %6951 = fadd fast float %6948, %6933
  %6952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6953 = extractvalue %dx.types.CBufRet.f32 %6952, 1
  %6954 = fmul fast float %6949, %6953
  %6955 = fmul fast float %6950, %6953
  %6956 = fmul fast float %6951, %6953
  br label %6957

; <label>:6957                                    ; preds = %6789, %6758
  %6958 = phi float [ %6828, %6789 ], [ 1.000000e+00, %6758 ]
  %6959 = phi float [ %6829, %6789 ], [ 1.000000e+00, %6758 ]
  %6960 = phi float [ %6830, %6789 ], [ 1.000000e+00, %6758 ]
  %6961 = phi float [ %6954, %6789 ], [ 0.000000e+00, %6758 ]
  %6962 = phi float [ %6955, %6789 ], [ 0.000000e+00, %6758 ]
  %6963 = phi float [ %6956, %6789 ], [ 0.000000e+00, %6758 ]
  %6964 = fmul fast float %6961, %6735
  %6965 = fmul fast float %6962, %6735
  %6966 = fmul fast float %6963, %6735
  %6967 = call float @dx.op.dot3.f32(i32 55, float %6958, float %6959, float %6960, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6968 = call float @dx.op.dot3.f32(i32 55, float %6964, float %6965, float %6966, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6969 = select i1 %216, float %6967, float %6958
  %6970 = select i1 %216, float %6967, float %6959
  %6971 = select i1 %216, float 1.000000e+00, float %6960
  %6972 = select i1 %216, float %6968, float %6964
  %6973 = select i1 %216, float 0.000000e+00, float %6965
  %6974 = select i1 %216, float 0.000000e+00, float %6966
  %6975 = fmul fast float %6969, %6748
  %6976 = fmul fast float %6970, %6749
  %6977 = fmul fast float %6971, %6750
  %6978 = fadd fast float %6975, %6972
  %6979 = fadd fast float %6976, %6973
  %6980 = fadd fast float %6974, %6977
  %6981 = fmul fast float %6969, %6726
  %6982 = fmul fast float %6970, %6727
  %6983 = fmul fast float %6971, %6728
  %6984 = fmul fast float %125, %6760
  %6985 = fmul fast float %127, %6761
  %6986 = fsub fast float 1.000000e+00, %6984
  %6987 = fsub fast float 1.000000e+00, %6985
  %6988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %6989 = extractvalue %dx.types.CBufRet.f32 %6988, 0
  %6990 = extractvalue %dx.types.CBufRet.f32 %6988, 1
  %6991 = extractvalue %dx.types.CBufRet.f32 %6988, 2
  %6992 = fmul fast float %6986, %6989
  %6993 = fmul fast float %6986, %6990
  %6994 = fmul fast float %6986, %6991
  %6995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %6996 = extractvalue %dx.types.CBufRet.f32 %6995, 0
  %6997 = extractvalue %dx.types.CBufRet.f32 %6995, 1
  %6998 = extractvalue %dx.types.CBufRet.f32 %6995, 2
  %6999 = fmul fast float %6987, %6996
  %7000 = fmul fast float %6987, %6997
  %7001 = fmul fast float %6987, %6998
  %7002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7003 = extractvalue %dx.types.CBufRet.f32 %7002, 0
  %7004 = extractvalue %dx.types.CBufRet.f32 %7002, 1
  %7005 = extractvalue %dx.types.CBufRet.f32 %7002, 2
  %7006 = fadd fast float %6999, %7003
  %7007 = fadd fast float %7006, %6992
  %7008 = fadd fast float %7000, %7004
  %7009 = fadd fast float %7008, %6993
  %7010 = fadd fast float %7001, %7005
  %7011 = fadd fast float %7010, %6994
  %7012 = fmul fast float %7007, %177
  %7013 = fmul fast float %7009, %177
  %7014 = fmul fast float %7011, %177
  br label %7015

; <label>:7015                                    ; preds = %6957, %6725
  %7016 = phi float [ %7012, %6957 ], [ %155, %6725 ]
  %7017 = phi float [ %7013, %6957 ], [ %156, %6725 ]
  %7018 = phi float [ %7014, %6957 ], [ %157, %6725 ]
  %7019 = phi float [ %177, %6957 ], [ %80, %6725 ]
  %7020 = phi float [ %6978, %6957 ], [ %6748, %6725 ]
  %7021 = phi float [ %6979, %6957 ], [ %6749, %6725 ]
  %7022 = phi float [ %6980, %6957 ], [ %6750, %6725 ]
  %7023 = phi float [ %6981, %6957 ], [ %6726, %6725 ]
  %7024 = phi float [ %6982, %6957 ], [ %6727, %6725 ]
  %7025 = phi float [ %6983, %6957 ], [ %6728, %6725 ]
  %7026 = phi float [ %6958, %6957 ], [ 1.000000e+00, %6725 ]
  br i1 %6757, label %8181, label %7027

; <label>:7027                                    ; preds = %7015
  %7028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %7029 = extractvalue %dx.types.CBufRet.f32 %7028, 0
  %7030 = extractvalue %dx.types.CBufRet.f32 %7028, 1
  %7031 = extractvalue %dx.types.CBufRet.f32 %7028, 2
  %7032 = extractvalue %dx.types.CBufRet.f32 %7028, 3
  %7033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %7034 = extractvalue %dx.types.CBufRet.f32 %7033, 0
  %7035 = extractvalue %dx.types.CBufRet.f32 %7033, 1
  %7036 = extractvalue %dx.types.CBufRet.f32 %7033, 2
  %7037 = extractvalue %dx.types.CBufRet.f32 %7033, 3
  %7038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %7039 = extractvalue %dx.types.CBufRet.f32 %7038, 0
  %7040 = extractvalue %dx.types.CBufRet.f32 %7038, 1
  %7041 = extractvalue %dx.types.CBufRet.f32 %7038, 2
  %7042 = extractvalue %dx.types.CBufRet.f32 %7038, 3
  %7043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %7044 = extractvalue %dx.types.CBufRet.f32 %7043, 0
  %7045 = extractvalue %dx.types.CBufRet.f32 %7043, 1
  %7046 = extractvalue %dx.types.CBufRet.f32 %7043, 2
  %7047 = extractvalue %dx.types.CBufRet.f32 %7043, 3
  %7048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %7049 = extractvalue %dx.types.CBufRet.f32 %7048, 3
  %7050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %7051 = extractvalue %dx.types.CBufRet.f32 %7050, 3
  %7052 = extractvalue %dx.types.CBufRet.f32 %7050, 0
  %7053 = extractvalue %dx.types.CBufRet.f32 %7050, 1
  %7054 = extractvalue %dx.types.CBufRet.f32 %7050, 2
  %7055 = fcmp fast olt float %7054, -5.000000e-01
  %7056 = call float @dx.op.dot3.f32(i32 55, float %7016, float %7017, float %7018, float %7016, float %7017, float %7018)  ; Dot3(ax,ay,az,bx,by,bz)
  %7057 = call float @dx.op.unary.f32(i32 25, float %7056)  ; Rsqrt(value)
  %7058 = fmul fast float %7057, %7056
  %7059 = fmul fast float %7057, %7016
  %7060 = fmul fast float %7057, %7017
  %7061 = fmul fast float %7057, %7018
  %7062 = fadd fast float %7058, %7032
  %7063 = call float @dx.op.dot3.f32(i32 55, float %7059, float %7060, float %7061, float %7029, float %7030, float %7031)  ; Dot3(ax,ay,az,bx,by,bz)
  %7064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7065 = extractvalue %dx.types.CBufRet.i32 %7064, 1
  %7066 = and i32 %7065, 1
  %7067 = icmp ne i32 %7066, 0
  %7068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %7069 = extractvalue %dx.types.CBufRet.f32 %7068, 2
  %7070 = fcmp fast ogt float %7069, 0.000000e+00
  %7071 = and i1 %7067, %7070
  br i1 %7071, label %7072, label %7478, !dx.controlflow.hints !116

; <label>:7072                                    ; preds = %7027
  %7073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %7074 = extractvalue %dx.types.CBufRet.f32 %7073, 3
  %7075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %7076 = extractvalue %dx.types.CBufRet.f32 %7075, 2
  %7077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7078 = extractvalue %dx.types.CBufRet.f32 %7077, 2
  %7079 = fsub fast float %7076, %7078
  %7080 = and i32 %7065, 2
  %7081 = extractvalue %dx.types.CBufRet.i32 %7064, 0
  %7082 = call i32 @dx.op.binary.i32(i32 40, i32 %7081, i32 3)  ; UMin(a,b)
  %7083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %7084 = extractvalue %dx.types.CBufRet.f32 %7083, 0
  %7085 = extractvalue %dx.types.CBufRet.f32 %7083, 1
  %7086 = extractvalue %dx.types.CBufRet.f32 %7077, 0
  %7087 = extractvalue %dx.types.CBufRet.f32 %7077, 1
  %7088 = fsub fast float %7084, %7086
  %7089 = fsub fast float %7085, %7087
  %7090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %7091 = extractvalue %dx.types.CBufRet.f32 %7090, 0
  %7092 = fcmp fast ogt float %7091, 0.000000e+00
  %7093 = fsub fast float -0.000000e+00, %7088
  %7094 = fsub fast float -0.000000e+00, %7089
  %7095 = call float @dx.op.dot2.f32(i32 54, float %7059, float %7060, float %7059, float %7060)  ; Dot2(ax,ay,bx,by)
  %7096 = call float @dx.op.dot2.f32(i32 54, float %7059, float %7060, float %7093, float %7094)  ; Dot2(ax,ay,bx,by)
  %7097 = fmul fast float %7096, 2.000000e+00
  %7098 = call float @dx.op.dot2.f32(i32 54, float %7093, float %7094, float %7093, float %7094)  ; Dot2(ax,ay,bx,by)
  %7099 = fmul fast float %7091, %7091
  %7100 = fsub fast float %7098, %7099
  %7101 = fmul fast float %7097, %7097
  %7102 = fmul fast float %7095, 4.000000e+00
  %7103 = fmul fast float %7102, %7100
  %7104 = fsub fast float %7101, %7103
  %7105 = fcmp fast ogt float %7104, 0.000000e+00
  br i1 %7105, label %7106, label %7121

; <label>:7106                                    ; preds = %7072
  %7107 = fcmp fast ogt float %7097, 0.000000e+00
  %7108 = call float @dx.op.unary.f32(i32 24, float %7104)  ; Sqrt(value)
  %7109 = fsub fast float -0.000000e+00, %7108
  %7110 = select i1 %7107, float %7108, float %7109
  %7111 = fadd fast float %7110, %7097
  %7112 = fmul float %7111, -5.000000e-01
  %7113 = fdiv fast float %7112, %7095
  %7114 = call float @dx.op.binary.f32(i32 35, float %7113, float 0.000000e+00)  ; FMax(a,b)
  %7115 = call float @dx.op.binary.f32(i32 36, float %7058, float %7114)  ; FMin(a,b)
  %7116 = fdiv fast float %7100, %7112
  %7117 = call float @dx.op.binary.f32(i32 35, float %7116, float 0.000000e+00)  ; FMax(a,b)
  %7118 = call float @dx.op.binary.f32(i32 36, float %7058, float %7117)  ; FMin(a,b)
  %7119 = call float @dx.op.binary.f32(i32 36, float %7115, float %7118)  ; FMin(a,b)
  %7120 = call float @dx.op.binary.f32(i32 35, float %7115, float %7118)  ; FMax(a,b)
  br label %7121

; <label>:7121                                    ; preds = %7106, %7072
  %7122 = phi float [ %7120, %7106 ], [ -1.000000e+00, %7072 ]
  %7123 = phi float [ %7119, %7106 ], [ -1.000000e+00, %7072 ]
  %7124 = phi i1 [ true, %7106 ], [ false, %7072 ]
  %7125 = and i1 %7092, %7124
  br i1 %7125, label %7126, label %7128

; <label>:7126                                    ; preds = %7121
  %7127 = fcmp fast oeq float %7123, %7122
  br i1 %7127, label %7431, label %7129

; <label>:7128                                    ; preds = %7121
  br i1 %7092, label %7431, label %7129

; <label>:7129                                    ; preds = %7128, %7126
  %7130 = phi float [ %7058, %7128 ], [ %7122, %7126 ]
  %7131 = phi float [ 0.000000e+00, %7128 ], [ %7123, %7126 ]
  %7132 = icmp ne i32 %7080, 0
  %7133 = fmul fast float %7130, %7061
  %7134 = fadd fast float %7133, %7074
  %7135 = fmul fast float %7134, %7130
  %7136 = select i1 %7132, float 0.000000e+00, float %7135
  %7137 = fcmp fast oeq float %7061, 0.000000e+00
  %7138 = fdiv fast float %7079, %7061
  %7139 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7138)  ; FMax(a,b)
  %7140 = select i1 %7137, float %7130, float %7139
  %7141 = call float @dx.op.binary.f32(i32 36, float %7130, float %7140)  ; FMin(a,b)
  %7142 = fcmp fast ogt float %7061, 0.000000e+00
  %7143 = fcmp fast olt float %7079, 0.000000e+00
  br i1 %7142, label %7144, label %7201

; <label>:7144                                    ; preds = %7129
  %7145 = icmp eq i32 %7080, 0
  br i1 %7143, label %7146, label %7190

; <label>:7146                                    ; preds = %7144
  %7147 = select i1 %7145, float %7130, float 0.000000e+00
  %7148 = fsub fast float -0.000000e+00, %7147
  %7149 = call float @dx.op.unary.f32(i32 6, float %7148)  ; FAbs(value)
  %7150 = fmul fast float %7147, %7061
  %7151 = fadd fast float %7150, %7074
  %7152 = fmul fast float %7149, %7151
  %7153 = fsub fast float %7136, %7152
  %7154 = fsub fast float %7130, %7149
  %7155 = select i1 %7145, float %7154, float 0.000000e+00
  %7156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7157 = extractvalue %dx.types.CBufRet.f32 %7156, 0
  %7158 = extractvalue %dx.types.CBufRet.f32 %7156, 1
  %7159 = extractvalue %dx.types.CBufRet.f32 %7156, 2
  %7160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7161 = extractvalue %dx.types.CBufRet.f32 %7160, 0
  %7162 = extractvalue %dx.types.CBufRet.f32 %7160, 1
  %7163 = extractvalue %dx.types.CBufRet.f32 %7160, 2
  %7164 = extractvalue %dx.types.CBufRet.f32 %7160, 3
  %7165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7166 = extractvalue %dx.types.CBufRet.f32 %7165, 3
  %7167 = call float @dx.op.binary.f32(i32 36, float %7153, float %7166)  ; FMin(a,b)
  %7168 = fmul fast float %7164, %7155
  %7169 = call float @dx.op.unary.f32(i32 7, float %7168)  ; Saturate(value)
  %7170 = fsub fast float %7161, %7157
  %7171 = fsub fast float %7162, %7158
  %7172 = fsub fast float %7163, %7159
  %7173 = fmul fast float %7169, %7170
  %7174 = fmul fast float %7169, %7171
  %7175 = fmul fast float %7169, %7172
  %7176 = fadd fast float %7173, %7157
  %7177 = fadd fast float %7174, %7158
  %7178 = fadd fast float %7175, %7159
  %7179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7180 = extractvalue %dx.types.CBufRet.f32 %7179, 0
  %7181 = extractvalue %dx.types.CBufRet.f32 %7179, 1
  %7182 = fadd fast float %7181, %7180
  %7183 = call float @dx.op.unary.f32(i32 7, float %7182)  ; Saturate(value)
  %7184 = extractvalue %dx.types.CBufRet.f32 %7179, 2
  %7185 = extractvalue %dx.types.CBufRet.f32 %7179, 3
  %7186 = fadd fast float %7185, %7184
  %7187 = call float @dx.op.unary.f32(i32 7, float %7186)  ; Saturate(value)
  %7188 = fmul fast float %7183, %7167
  %7189 = fmul fast float %7188, %7187
  br label %7431

; <label>:7190                                    ; preds = %7144
  br i1 %7145, label %7191, label %7212

; <label>:7191                                    ; preds = %7190
  %7192 = call float @dx.op.binary.f32(i32 36, float %7141, float %7131)  ; FMin(a,b)
  %7193 = fsub fast float %7141, %7192
  %7194 = fsub fast float %7193, %7130
  %7195 = call float @dx.op.unary.f32(i32 6, float %7194)  ; FAbs(value)
  %7196 = fadd fast float %7193, %7130
  %7197 = fmul fast float %7196, %7061
  %7198 = fadd fast float %7197, %7074
  %7199 = fmul fast float %7198, %7195
  %7200 = fsub fast float %7136, %7199
  br label %7212

; <label>:7201                                    ; preds = %7129
  br i1 %7143, label %7202, label %7212

; <label>:7202                                    ; preds = %7201
  %7203 = call float @dx.op.binary.f32(i32 35, float %7131, float %7141)  ; FMax(a,b)
  %7204 = icmp eq i32 %7080, 0
  %7205 = select i1 %7204, float %7141, float 0.000000e+00
  %7206 = fsub fast float -0.000000e+00, %7205
  %7207 = call float @dx.op.unary.f32(i32 6, float %7206)  ; FAbs(value)
  %7208 = fmul fast float %7205, %7061
  %7209 = fadd fast float %7208, %7074
  %7210 = fmul fast float %7207, %7209
  %7211 = fsub fast float %7136, %7210
  br label %7212

; <label>:7212                                    ; preds = %7202, %7201, %7191, %7190
  %7213 = phi float [ %7131, %7190 ], [ %7131, %7191 ], [ %7203, %7202 ], [ %7131, %7201 ]
  %7214 = phi float [ 0.000000e+00, %7190 ], [ %7195, %7191 ], [ %7207, %7202 ], [ 0.000000e+00, %7201 ]
  %7215 = phi float [ %7136, %7190 ], [ %7200, %7191 ], [ %7211, %7202 ], [ %7136, %7201 ]
  %7216 = phi float [ %7141, %7190 ], [ %7141, %7191 ], [ %7130, %7202 ], [ %7130, %7201 ]
  %7217 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 0
  store float -1.000000e+00, float* %7217, align 4, !tbaa !106, !noalias !117
  %7218 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 1
  store float -1.000000e+00, float* %7218, align 4, !tbaa !106, !noalias !117
  %7219 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 2
  store float -1.000000e+00, float* %7219, align 4, !tbaa !106, !noalias !117
  %7220 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 0
  store float -1.000000e+00, float* %7220, align 4, !tbaa !106, !noalias !117
  %7221 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 1
  store float -1.000000e+00, float* %7221, align 4, !tbaa !106, !noalias !117
  %7222 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 2
  store float -1.000000e+00, float* %7222, align 4, !tbaa !106, !noalias !117
  %7223 = icmp sgt i32 %7082, 0
  br i1 %7223, label %7224, label %7285

; <label>:7224                                    ; preds = %7212
  br label %7225

; <label>:7225                                    ; preds = %7274, %7224
  %7226 = phi i32 [ %7275, %7274 ], [ 0, %7224 ]
  %7227 = phi i32 [ %7276, %7274 ], [ 0, %7224 ]
  %7228 = add nuw i32 %7227, 171
  %7229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %7228)  ; CBufferLoadLegacy(handle,regIndex)
  %7230 = extractvalue %dx.types.CBufRet.f32 %7229, 0
  %7231 = extractvalue %dx.types.CBufRet.f32 %7229, 1
  %7232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7233 = extractvalue %dx.types.CBufRet.f32 %7232, 0
  %7234 = extractvalue %dx.types.CBufRet.f32 %7232, 1
  %7235 = fsub fast float %7230, %7233
  %7236 = fsub fast float %7231, %7234
  %7237 = extractvalue %dx.types.CBufRet.f32 %7229, 2
  %7238 = fsub fast float -0.000000e+00, %7235
  %7239 = fsub fast float -0.000000e+00, %7236
  %7240 = call float @dx.op.dot2.f32(i32 54, float %7059, float %7060, float %7238, float %7239)  ; Dot2(ax,ay,bx,by)
  %7241 = fmul fast float %7240, 2.000000e+00
  %7242 = call float @dx.op.dot2.f32(i32 54, float %7238, float %7239, float %7238, float %7239)  ; Dot2(ax,ay,bx,by)
  %7243 = fmul fast float %7237, %7237
  %7244 = fsub fast float %7242, %7243
  %7245 = fmul fast float %7241, %7241
  %7246 = fmul fast float %7102, %7244
  %7247 = fsub fast float %7245, %7246
  %7248 = fcmp fast ogt float %7247, 0.000000e+00
  br i1 %7248, label %7249, label %7264

; <label>:7249                                    ; preds = %7225
  %7250 = fcmp fast ogt float %7241, 0.000000e+00
  %7251 = call float @dx.op.unary.f32(i32 24, float %7247)  ; Sqrt(value)
  %7252 = fsub fast float -0.000000e+00, %7251
  %7253 = select i1 %7250, float %7251, float %7252
  %7254 = fadd fast float %7253, %7241
  %7255 = fmul float %7254, -5.000000e-01
  %7256 = fdiv fast float %7255, %7095
  %7257 = call float @dx.op.binary.f32(i32 35, float %7256, float 0.000000e+00)  ; FMax(a,b)
  %7258 = call float @dx.op.binary.f32(i32 36, float %7130, float %7257)  ; FMin(a,b)
  %7259 = fdiv fast float %7244, %7255
  %7260 = call float @dx.op.binary.f32(i32 35, float %7259, float 0.000000e+00)  ; FMax(a,b)
  %7261 = call float @dx.op.binary.f32(i32 36, float %7130, float %7260)  ; FMin(a,b)
  %7262 = call float @dx.op.binary.f32(i32 36, float %7258, float %7261)  ; FMin(a,b)
  %7263 = call float @dx.op.binary.f32(i32 35, float %7258, float %7261)  ; FMax(a,b)
  br label %7264

; <label>:7264                                    ; preds = %7249, %7225
  %7265 = phi float [ %7263, %7249 ], [ -1.000000e+00, %7225 ]
  %7266 = phi float [ %7262, %7249 ], [ -1.000000e+00, %7225 ]
  %7267 = phi i1 [ true, %7249 ], [ false, %7225 ]
  br i1 %7267, label %7268, label %7274

; <label>:7268                                    ; preds = %7264
  %7269 = call float @dx.op.binary.f32(i32 35, float %7213, float %7266)  ; FMax(a,b)
  %7270 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %7227
  store float %7269, float* %7270, align 4, !tbaa !106, !noalias !117
  %7271 = call float @dx.op.binary.f32(i32 35, float %7213, float %7265)  ; FMax(a,b)
  %7272 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %7227
  store float %7271, float* %7272, align 4, !tbaa !106, !noalias !117
  %7273 = add nsw i32 %7226, 1
  br label %7274

; <label>:7274                                    ; preds = %7268, %7264
  %7275 = phi i32 [ %7273, %7268 ], [ %7226, %7264 ]
  %7276 = add nuw nsw i32 %7227, 1
  %7277 = icmp eq i32 %7276, %7082
  br i1 %7277, label %7278, label %7225

; <label>:7278                                    ; preds = %7274
  %7279 = load float, float* %7219, align 4, !tbaa !106, !alias.scope !133, !noalias !136
  %7280 = load float, float* %7218, align 4, !tbaa !106, !alias.scope !139, !noalias !140
  %7281 = load float, float* %7217, align 4, !tbaa !106, !alias.scope !141, !noalias !142
  %7282 = load float, float* %7222, align 4, !tbaa !106, !alias.scope !143, !noalias !146
  %7283 = load float, float* %7221, align 4, !tbaa !106, !alias.scope !149, !noalias !150
  %7284 = load float, float* %7220, align 4, !tbaa !106, !alias.scope !151, !noalias !152
  br label %7285

; <label>:7285                                    ; preds = %7278, %7212
  %7286 = phi float [ -1.000000e+00, %7212 ], [ %7284, %7278 ]
  %7287 = phi float [ -1.000000e+00, %7212 ], [ %7283, %7278 ]
  %7288 = phi float [ -1.000000e+00, %7212 ], [ %7282, %7278 ]
  %7289 = phi float [ -1.000000e+00, %7212 ], [ %7281, %7278 ]
  %7290 = phi float [ -1.000000e+00, %7212 ], [ %7280, %7278 ]
  %7291 = phi float [ -1.000000e+00, %7212 ], [ %7279, %7278 ]
  %7292 = phi i32 [ 0, %7212 ], [ %7275, %7278 ]
  %7293 = call float @dx.op.binary.f32(i32 36, float %7290, float %7291)  ; FMin(a,b)
  %7294 = call float @dx.op.binary.f32(i32 36, float %7289, float %7293)  ; FMin(a,b)
  %7295 = call float @dx.op.binary.f32(i32 35, float %7289, float %7290)  ; FMax(a,b)
  %7296 = call float @dx.op.binary.f32(i32 36, float %7295, float %7291)  ; FMin(a,b)
  %7297 = call float @dx.op.binary.f32(i32 36, float %7289, float %7290)  ; FMin(a,b)
  %7298 = call float @dx.op.binary.f32(i32 35, float %7297, float %7296)  ; FMax(a,b)
  %7299 = call float @dx.op.binary.f32(i32 35, float %7290, float %7291)  ; FMax(a,b)
  %7300 = call float @dx.op.binary.f32(i32 35, float %7289, float %7299)  ; FMax(a,b)
  store float %7294, float* %7217, align 4, !tbaa !106, !alias.scope !141, !noalias !142
  store float %7298, float* %7218, align 4, !tbaa !106, !alias.scope !139, !noalias !140
  store float %7300, float* %7219, align 4, !tbaa !106, !alias.scope !133, !noalias !136
  %7301 = call float @dx.op.binary.f32(i32 36, float %7287, float %7288)  ; FMin(a,b)
  %7302 = call float @dx.op.binary.f32(i32 36, float %7286, float %7301)  ; FMin(a,b)
  %7303 = call float @dx.op.binary.f32(i32 35, float %7286, float %7287)  ; FMax(a,b)
  %7304 = call float @dx.op.binary.f32(i32 36, float %7303, float %7288)  ; FMin(a,b)
  %7305 = call float @dx.op.binary.f32(i32 36, float %7286, float %7287)  ; FMin(a,b)
  %7306 = call float @dx.op.binary.f32(i32 35, float %7305, float %7304)  ; FMax(a,b)
  %7307 = call float @dx.op.binary.f32(i32 35, float %7287, float %7288)  ; FMax(a,b)
  %7308 = call float @dx.op.binary.f32(i32 35, float %7286, float %7307)  ; FMax(a,b)
  store float %7302, float* %7220, align 4, !tbaa !106, !alias.scope !151, !noalias !152
  store float %7306, float* %7221, align 4, !tbaa !106, !alias.scope !149, !noalias !150
  store float %7308, float* %7222, align 4, !tbaa !106, !alias.scope !143, !noalias !146
  %7309 = sub nsw i32 3, %7292
  %7310 = icmp sgt i32 %7309, 2
  br i1 %7310, label %7311, label %7349

; <label>:7311                                    ; preds = %7285
  %7312 = icmp eq i32 %7080, 0
  %7313 = fsub fast float %7130, %7214
  %7314 = select i1 %7312, float %7313, float %7214
  %7315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7316 = extractvalue %dx.types.CBufRet.f32 %7315, 0
  %7317 = extractvalue %dx.types.CBufRet.f32 %7315, 1
  %7318 = extractvalue %dx.types.CBufRet.f32 %7315, 2
  %7319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7320 = extractvalue %dx.types.CBufRet.f32 %7319, 0
  %7321 = extractvalue %dx.types.CBufRet.f32 %7319, 1
  %7322 = extractvalue %dx.types.CBufRet.f32 %7319, 2
  %7323 = extractvalue %dx.types.CBufRet.f32 %7319, 3
  %7324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7325 = extractvalue %dx.types.CBufRet.f32 %7324, 3
  %7326 = call float @dx.op.binary.f32(i32 36, float %7215, float %7325)  ; FMin(a,b)
  %7327 = fmul fast float %7323, %7314
  %7328 = call float @dx.op.unary.f32(i32 7, float %7327)  ; Saturate(value)
  %7329 = fsub fast float %7320, %7316
  %7330 = fsub fast float %7321, %7317
  %7331 = fsub fast float %7322, %7318
  %7332 = fmul fast float %7328, %7329
  %7333 = fmul fast float %7328, %7330
  %7334 = fmul fast float %7328, %7331
  %7335 = fadd fast float %7332, %7316
  %7336 = fadd fast float %7333, %7317
  %7337 = fadd fast float %7334, %7318
  %7338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7339 = extractvalue %dx.types.CBufRet.f32 %7338, 0
  %7340 = extractvalue %dx.types.CBufRet.f32 %7338, 1
  %7341 = fadd fast float %7340, %7339
  %7342 = call float @dx.op.unary.f32(i32 7, float %7341)  ; Saturate(value)
  %7343 = extractvalue %dx.types.CBufRet.f32 %7338, 2
  %7344 = extractvalue %dx.types.CBufRet.f32 %7338, 3
  %7345 = fadd fast float %7344, %7343
  %7346 = call float @dx.op.unary.f32(i32 7, float %7345)  ; Saturate(value)
  %7347 = fmul fast float %7342, %7326
  %7348 = fmul fast float %7347, %7346
  br label %7431

; <label>:7349                                    ; preds = %7285
  %7350 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %7309
  %7351 = load float, float* %7350, align 4, !tbaa !106, !noalias !117
  %7352 = fcmp fast olt float %7351, %7216
  %7353 = icmp sgt i32 %7292, 0
  %7354 = and i1 %7353, %7352
  br i1 %7354, label %7355, label %7392

; <label>:7355                                    ; preds = %7349
  br label %7356

; <label>:7356                                    ; preds = %7385, %7355
  %7357 = phi float [ %7386, %7385 ], [ %7214, %7355 ]
  %7358 = phi float [ %7387, %7385 ], [ %7215, %7355 ]
  %7359 = phi float [ %7367, %7385 ], [ %7351, %7355 ]
  %7360 = phi i32 [ %7364, %7385 ], [ %7309, %7355 ]
  %7361 = getelementptr inbounds [3 x float], [3 x float]* %87, i32 0, i32 %7360
  %7362 = load float, float* %7361, align 4, !tbaa !106, !noalias !117
  %7363 = icmp slt i32 %7360, 2
  %7364 = add nsw i32 %7360, 1
  %7365 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %7364
  %7366 = load float, float* %7365, align 4, !tbaa !106, !noalias !117
  %7367 = select i1 %7363, float %7366, float %7130
  %7368 = call float @dx.op.binary.f32(i32 36, float %7367, float %7362)  ; FMin(a,b)
  %7369 = call float @dx.op.binary.f32(i32 36, float %7216, float %7368)  ; FMin(a,b)
  %7370 = icmp eq i32 %7080, 0
  %7371 = fadd fast float %7369, %7359
  %7372 = fmul fast float %7371, %7061
  %7373 = fadd fast float %7372, %7074
  br i1 %7370, label %7379, label %7374

; <label>:7374                                    ; preds = %7356
  %7375 = fsub fast float %7369, %7359
  %7376 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7375)  ; FMax(a,b)
  %7377 = fmul fast float %7376, %7373
  %7378 = fadd fast float %7377, %7358
  br label %7385

; <label>:7379                                    ; preds = %7356
  %7380 = fsub fast float %7359, %7369
  %7381 = call float @dx.op.unary.f32(i32 6, float %7380)  ; FAbs(value)
  %7382 = fadd fast float %7381, %7357
  %7383 = fmul fast float %7381, %7373
  %7384 = fsub fast float %7358, %7383
  br label %7385

; <label>:7385                                    ; preds = %7379, %7374
  %7386 = phi float [ %7376, %7374 ], [ %7382, %7379 ]
  %7387 = phi float [ %7378, %7374 ], [ %7384, %7379 ]
  %7388 = fcmp fast olt float %7367, %7216
  %7389 = icmp slt i32 %7364, 3
  %7390 = and i1 %7389, %7388
  br i1 %7390, label %7356, label %7391

; <label>:7391                                    ; preds = %7385
  br label %7392

; <label>:7392                                    ; preds = %7391, %7349
  %7393 = phi float [ %7214, %7349 ], [ %7386, %7391 ]
  %7394 = phi float [ %7215, %7349 ], [ %7387, %7391 ]
  %7395 = fsub fast float %7130, %7393
  %7396 = select i1 %7132, float %7393, float %7395
  %7397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %7398 = extractvalue %dx.types.CBufRet.f32 %7397, 0
  %7399 = extractvalue %dx.types.CBufRet.f32 %7397, 1
  %7400 = extractvalue %dx.types.CBufRet.f32 %7397, 2
  %7401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %7402 = extractvalue %dx.types.CBufRet.f32 %7401, 0
  %7403 = extractvalue %dx.types.CBufRet.f32 %7401, 1
  %7404 = extractvalue %dx.types.CBufRet.f32 %7401, 2
  %7405 = extractvalue %dx.types.CBufRet.f32 %7401, 3
  %7406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %7407 = extractvalue %dx.types.CBufRet.f32 %7406, 3
  %7408 = call float @dx.op.binary.f32(i32 36, float %7394, float %7407)  ; FMin(a,b)
  %7409 = fmul fast float %7405, %7396
  %7410 = call float @dx.op.unary.f32(i32 7, float %7409)  ; Saturate(value)
  %7411 = fsub fast float %7402, %7398
  %7412 = fsub fast float %7403, %7399
  %7413 = fsub fast float %7404, %7400
  %7414 = fmul fast float %7410, %7411
  %7415 = fmul fast float %7410, %7412
  %7416 = fmul fast float %7410, %7413
  %7417 = fadd fast float %7414, %7398
  %7418 = fadd fast float %7415, %7399
  %7419 = fadd fast float %7416, %7400
  %7420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %7421 = extractvalue %dx.types.CBufRet.f32 %7420, 0
  %7422 = extractvalue %dx.types.CBufRet.f32 %7420, 1
  %7423 = fadd fast float %7422, %7421
  %7424 = call float @dx.op.unary.f32(i32 7, float %7423)  ; Saturate(value)
  %7425 = extractvalue %dx.types.CBufRet.f32 %7420, 2
  %7426 = extractvalue %dx.types.CBufRet.f32 %7420, 3
  %7427 = fadd fast float %7426, %7425
  %7428 = call float @dx.op.unary.f32(i32 7, float %7427)  ; Saturate(value)
  %7429 = fmul fast float %7424, %7408
  %7430 = fmul fast float %7429, %7428
  br label %7431

; <label>:7431                                    ; preds = %7392, %7311, %7146, %7128, %7126
  %7432 = phi float [ %7155, %7146 ], [ %7314, %7311 ], [ %7396, %7392 ], [ 0.000000e+00, %7126 ], [ 0.000000e+00, %7128 ]
  %7433 = phi float [ %7189, %7146 ], [ %7348, %7311 ], [ %7430, %7392 ], [ 0.000000e+00, %7126 ], [ 0.000000e+00, %7128 ]
  %7434 = phi float [ %7176, %7146 ], [ %7335, %7311 ], [ %7417, %7392 ], [ 0.000000e+00, %7126 ], [ 0.000000e+00, %7128 ]
  %7435 = phi float [ %7177, %7146 ], [ %7336, %7311 ], [ %7418, %7392 ], [ 0.000000e+00, %7126 ], [ 0.000000e+00, %7128 ]
  %7436 = phi float [ %7178, %7146 ], [ %7337, %7311 ], [ %7419, %7392 ], [ 0.000000e+00, %7126 ], [ 0.000000e+00, %7128 ]
  %7437 = fmul fast float %7069, %7433
  %7438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7439 = extractvalue %dx.types.CBufRet.f32 %7438, 2
  %7440 = fsub fast float %7076, %7439
  %7441 = fcmp fast olt float %7437, -2.000000e+01
  %7442 = call float @dx.op.unary.f32(i32 21, float %7437)  ; Exp(value)
  %7443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7444 = extractvalue %dx.types.CBufRet.f32 %7443, 2
  %7445 = extractvalue %dx.types.CBufRet.f32 %7443, 3
  %7446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7447 = extractvalue %dx.types.CBufRet.f32 %7446, 2
  %7448 = fmul fast float %7445, %7440
  %7449 = call float @dx.op.unary.f32(i32 7, float %7448)  ; Saturate(value)
  %7450 = fsub fast float 1.000000e+00, %7449
  %7451 = fmul fast float %7061, 5.000000e-01
  %7452 = fadd fast float %7451, 5.000000e-01
  %7453 = call float @dx.op.unary.f32(i32 7, float %7452)  ; Saturate(value)
  %7454 = fsub fast float 1.000000e+00, %7453
  %7455 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7450)  ; FMax(a,b)
  %7456 = fdiv fast float %7454, %7455
  %7457 = fsub fast float %7440, %7018
  %7458 = call float @dx.op.unary.f32(i32 6, float %7457)  ; FAbs(value)
  %7459 = fmul fast float %7458, %7444
  %7460 = call float @dx.op.unary.f32(i32 7, float %7456)  ; Saturate(value)
  %7461 = fsub fast float 1.000000e+00, %7459
  %7462 = fmul fast float %7461, %7460
  %7463 = fadd fast float %7462, %7459
  %7464 = fmul fast float %7447, %7440
  %7465 = call float @dx.op.unary.f32(i32 7, float %7464)  ; Saturate(value)
  %7466 = fsub fast float 1.000000e+00, %7463
  %7467 = fmul fast float %7466, %7465
  %7468 = fadd fast float %7467, %7463
  %7469 = call float @dx.op.unary.f32(i32 7, float %7468)  ; Saturate(value)
  %7470 = fadd fast float %7442, -1.000000e+00
  %7471 = select i1 %7441, float -1.000000e+00, float %7470
  %7472 = fmul fast float %7469, %7471
  %7473 = fadd fast float %7472, 1.000000e+00
  %7474 = fsub fast float -0.000000e+00, %7472
  %7475 = fmul fast float %7434, %7474
  %7476 = fmul fast float %7435, %7474
  %7477 = fmul fast float %7436, %7474
  br label %7478

; <label>:7478                                    ; preds = %7431, %7027
  %7479 = phi float [ %7432, %7431 ], [ 0.000000e+00, %7027 ]
  %7480 = phi float [ %7473, %7431 ], [ 1.000000e+00, %7027 ]
  %7481 = phi float [ %7475, %7431 ], [ 0.000000e+00, %7027 ]
  %7482 = phi float [ %7476, %7431 ], [ 0.000000e+00, %7027 ]
  %7483 = phi float [ %7477, %7431 ], [ 0.000000e+00, %7027 ]
  %7484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %7485 = extractvalue %dx.types.CBufRet.f32 %7484, 1
  %7486 = fsub fast float 1.000000e+00, %7480
  %7487 = fmul fast float %7486, %7062
  %7488 = fmul fast float %7487, %7485
  %7489 = fsub fast float %7062, %7488
  br i1 %7055, label %7490, label %7519, !dx.controlflow.hints !153

; <label>:7490                                    ; preds = %7478
  %7491 = fmul fast float %7063, %7052
  %7492 = fadd fast float %7491, %7053
  %7493 = call float @dx.op.unary.f32(i32 7, float %7492)  ; Saturate(value)
  %7494 = fmul fast float %7034, %7489
  %7495 = fsub fast float -0.000000e+00, %7494
  %7496 = fmul fast float %7035, %7489
  %7497 = fsub fast float -0.000000e+00, %7496
  %7498 = call float @dx.op.unary.f32(i32 21, float %7495)  ; Exp(value)
  %7499 = call float @dx.op.unary.f32(i32 21, float %7497)  ; Exp(value)
  %7500 = call float @dx.op.binary.f32(i32 35, float %7042, float %7498)  ; FMax(a,b)
  %7501 = call float @dx.op.binary.f32(i32 35, float %7042, float %7499)  ; FMax(a,b)
  %7502 = fsub fast float %7501, %7500
  %7503 = fmul fast float %7502, %7493
  %7504 = fadd fast float %7503, %7500
  %7505 = call float @dx.op.unary.f32(i32 7, float %7504)  ; Saturate(value)
  %7506 = fsub fast float %7039, %7044
  %7507 = fsub fast float %7040, %7045
  %7508 = fsub fast float %7041, %7046
  %7509 = fmul fast float %7493, %7506
  %7510 = fmul fast float %7493, %7507
  %7511 = fmul fast float %7493, %7508
  %7512 = fadd fast float %7509, %7044
  %7513 = fadd fast float %7510, %7045
  %7514 = fadd fast float %7511, %7046
  %7515 = fsub fast float 1.000000e+00, %7505
  %7516 = fmul fast float %7515, %7512
  %7517 = fmul fast float %7515, %7513
  %7518 = fmul fast float %7515, %7514
  br label %7578

; <label>:7519                                    ; preds = %7478
  %7520 = fmul fast float %7489, %7051
  %7521 = call float @dx.op.unary.f32(i32 7, float %7520)  ; Saturate(value)
  %7522 = fsub fast float 2.000000e+00, %7521
  %7523 = fmul fast float %7521, 9.921875e-01
  %7524 = fmul fast float %7523, %7522
  %7525 = fadd fast float %7524, 3.906250e-03
  %7526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %7525, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7527 = extractvalue %dx.types.ResRet.f32 %7526, 0
  %7528 = fsub fast float %7521, %7527
  %7529 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7528)  ; FMax(a,b)
  %7530 = fmul fast float %7037, %7018
  %7531 = call float @dx.op.unary.f32(i32 6, float %7530)  ; FAbs(value)
  %7532 = fcmp fast ogt float %7531, 0x3EB0C6F7A0000000
  br i1 %7532, label %7533, label %7539, !dx.controlflow.hints !154

; <label>:7533                                    ; preds = %7519
  %7534 = fmul fast float %7530, 0xBFF7154760000000
  %7535 = call float @dx.op.unary.f32(i32 21, float %7534)  ; Exp(value)
  %7536 = fsub fast float 1.000000e+00, %7535
  %7537 = fdiv fast float %7536, %7530
  %7538 = fmul fast float %7537, %7047
  br label %7539

; <label>:7539                                    ; preds = %7533, %7519
  %7540 = phi float [ %7538, %7533 ], [ %7047, %7519 ]
  %7541 = fadd fast float %7540, %7049
  %7542 = fmul fast float %7541, %7529
  %7543 = fmul fast float %7034, %7542
  %7544 = fsub fast float -0.000000e+00, %7543
  %7545 = fmul fast float %7035, %7542
  %7546 = fsub fast float -0.000000e+00, %7545
  %7547 = fmul fast float %7036, %7542
  %7548 = fsub fast float -0.000000e+00, %7547
  %7549 = call float @dx.op.unary.f32(i32 21, float %7544)  ; Exp(value)
  %7550 = call float @dx.op.unary.f32(i32 21, float %7546)  ; Exp(value)
  %7551 = call float @dx.op.unary.f32(i32 21, float %7548)  ; Exp(value)
  %7552 = fmul fast float %7063, %7063
  %7553 = fadd fast float %7552, 1.000000e+00
  %7554 = fmul fast float %7553, 0x3FAE8EC8A0000000
  %7555 = fmul fast float %7554, %7044
  %7556 = fmul fast float %7554, %7045
  %7557 = fmul fast float %7554, %7046
  %7558 = fmul fast float %7063, %7042
  %7559 = fsub fast float 1.000000e+00, %7558
  %7560 = fmul fast float %7042, %7042
  %7561 = fsub fast float 1.000000e+00, %7560
  %7562 = fmul fast float %7561, 0x3FB45F3060000000
  %7563 = fmul fast float %7559, %7559
  %7564 = fdiv fast float 1.000000e+00, %7563
  %7565 = fmul fast float %7562, %7564
  %7566 = fmul fast float %7565, %7039
  %7567 = fmul fast float %7565, %7040
  %7568 = fmul fast float %7565, %7041
  %7569 = fadd fast float %7566, %7555
  %7570 = fadd fast float %7567, %7556
  %7571 = fadd fast float %7568, %7557
  %7572 = fsub fast float 1.000000e+00, %7549
  %7573 = fsub fast float 1.000000e+00, %7550
  %7574 = fsub fast float 1.000000e+00, %7551
  %7575 = fmul fast float %7569, %7572
  %7576 = fmul fast float %7570, %7573
  %7577 = fmul fast float %7571, %7574
  br label %7578

; <label>:7578                                    ; preds = %7539, %7490
  %7579 = phi float [ %7516, %7490 ], [ %7575, %7539 ]
  %7580 = phi float [ %7517, %7490 ], [ %7576, %7539 ]
  %7581 = phi float [ %7518, %7490 ], [ %7577, %7539 ]
  %7582 = phi float [ %7505, %7490 ], [ %7549, %7539 ]
  %7583 = phi float [ %7505, %7490 ], [ %7550, %7539 ]
  %7584 = phi float [ %7505, %7490 ], [ %7551, %7539 ]
  br i1 %7071, label %7585, label %7783, !dx.controlflow.hints !155

; <label>:7585                                    ; preds = %7578
  %7586 = extractvalue %dx.types.CBufRet.f32 %7484, 0
  %7587 = fmul fast float %7586, %7486
  %7588 = fsub fast float %7481, %7579
  %7589 = fsub fast float %7482, %7580
  %7590 = fsub fast float %7483, %7581
  %7591 = fmul fast float %7587, %7588
  %7592 = fmul fast float %7587, %7589
  %7593 = fmul fast float %7587, %7590
  %7594 = fadd fast float %7591, %7579
  %7595 = fadd fast float %7592, %7580
  %7596 = fadd fast float %7593, %7581
  %7597 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7582)  ; FMax(a,b)
  %7598 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7583)  ; FMax(a,b)
  %7599 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7584)  ; FMax(a,b)
  %7600 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %7480)  ; FMax(a,b)
  %7601 = call float @dx.op.binary.f32(i32 35, float %7479, float %7489)  ; FMax(a,b)
  %7602 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %7601)  ; FMax(a,b)
  %7603 = fdiv fast float %7479, %7602
  %7604 = call float @dx.op.unary.f32(i32 7, float %7603)  ; Saturate(value)
  %7605 = fdiv fast float %7489, %7602
  %7606 = call float @dx.op.unary.f32(i32 7, float %7605)  ; Saturate(value)
  %7607 = fcmp fast une float %7600, 1.000000e+00
  br i1 %7607, label %7608, label %7621, !dx.controlflow.hints !156

; <label>:7608                                    ; preds = %7585
  %7609 = call float @dx.op.unary.f32(i32 23, float %7600)  ; Log(value)
  %7610 = fmul fast float %7609, 0x3FE62E4300000000
  %7611 = fmul fast float %7481, %7610
  %7612 = fsub fast float -0.000000e+00, %7611
  %7613 = fmul fast float %7482, %7610
  %7614 = fsub fast float -0.000000e+00, %7613
  %7615 = fmul fast float %7483, %7610
  %7616 = fsub fast float -0.000000e+00, %7615
  %7617 = fsub fast float 1.000000e+00, %7600
  %7618 = fdiv fast float %7612, %7617
  %7619 = fdiv fast float %7614, %7617
  %7620 = fdiv fast float %7616, %7617
  br label %7621

; <label>:7621                                    ; preds = %7608, %7585
  %7622 = phi float [ %7618, %7608 ], [ %7481, %7585 ]
  %7623 = phi float [ %7619, %7608 ], [ %7482, %7585 ]
  %7624 = phi float [ %7620, %7608 ], [ %7483, %7585 ]
  %7625 = phi float [ %7610, %7608 ], [ 0.000000e+00, %7585 ]
  %7626 = fcmp fast une float %7597, 1.000000e+00
  br i1 %7626, label %7627, label %7634, !dx.controlflow.hints !157

; <label>:7627                                    ; preds = %7621
  %7628 = call float @dx.op.unary.f32(i32 23, float %7597)  ; Log(value)
  %7629 = fmul fast float %7628, 0x3FE62E4300000000
  %7630 = fmul fast float %7594, %7629
  %7631 = fsub fast float -0.000000e+00, %7630
  %7632 = fsub fast float 1.000000e+00, %7597
  %7633 = fdiv fast float %7631, %7632
  br label %7634

; <label>:7634                                    ; preds = %7627, %7621
  %7635 = phi float [ %7633, %7627 ], [ %7594, %7621 ]
  %7636 = phi float [ %7629, %7627 ], [ 0.000000e+00, %7621 ]
  %7637 = fcmp fast une float %7598, 1.000000e+00
  br i1 %7637, label %7638, label %7645, !dx.controlflow.hints !157

; <label>:7638                                    ; preds = %7634
  %7639 = call float @dx.op.unary.f32(i32 23, float %7598)  ; Log(value)
  %7640 = fmul fast float %7639, 0x3FE62E4300000000
  %7641 = fmul fast float %7595, %7640
  %7642 = fsub fast float -0.000000e+00, %7641
  %7643 = fsub fast float 1.000000e+00, %7598
  %7644 = fdiv fast float %7642, %7643
  br label %7645

; <label>:7645                                    ; preds = %7638, %7634
  %7646 = phi float [ %7644, %7638 ], [ %7595, %7634 ]
  %7647 = phi float [ %7640, %7638 ], [ 0.000000e+00, %7634 ]
  %7648 = fcmp fast une float %7599, 1.000000e+00
  br i1 %7648, label %7649, label %7656, !dx.controlflow.hints !157

; <label>:7649                                    ; preds = %7645
  %7650 = call float @dx.op.unary.f32(i32 23, float %7599)  ; Log(value)
  %7651 = fmul fast float %7650, 0x3FE62E4300000000
  %7652 = fmul fast float %7596, %7651
  %7653 = fsub fast float -0.000000e+00, %7652
  %7654 = fsub fast float 1.000000e+00, %7599
  %7655 = fdiv fast float %7653, %7654
  br label %7656

; <label>:7656                                    ; preds = %7649, %7645
  %7657 = phi float [ %7655, %7649 ], [ %7596, %7645 ]
  %7658 = phi float [ %7651, %7649 ], [ 0.000000e+00, %7645 ]
  %7659 = fmul fast float %7622, %7606
  %7660 = fmul fast float %7623, %7606
  %7661 = fmul fast float %7624, %7606
  %7662 = fmul fast float %7625, %7606
  %7663 = fmul fast float %7635, %7604
  %7664 = fmul fast float %7646, %7604
  %7665 = fmul fast float %7657, %7604
  %7666 = fmul fast float %7636, %7604
  %7667 = fmul fast float %7647, %7604
  %7668 = fmul fast float %7658, %7604
  %7669 = fadd fast float %7663, %7659
  %7670 = fadd fast float %7664, %7660
  %7671 = fadd fast float %7665, %7661
  %7672 = fadd fast float %7666, %7662
  %7673 = fadd fast float %7667, %7662
  %7674 = fadd fast float %7668, %7662
  %7675 = fcmp fast une float %7672, 0.000000e+00
  br i1 %7675, label %7676, label %7683, !dx.controlflow.hints !158

; <label>:7676                                    ; preds = %7656
  %7677 = fmul fast float %7672, 0x3FF7154760000000
  %7678 = call float @dx.op.unary.f32(i32 21, float %7677)  ; Exp(value)
  %7679 = fsub fast float 1.000000e+00, %7678
  %7680 = fmul fast float %7669, %7679
  %7681 = fsub fast float -0.000000e+00, %7680
  %7682 = fdiv fast float %7681, %7672
  br label %7683

; <label>:7683                                    ; preds = %7676, %7656
  %7684 = phi float [ %7678, %7676 ], [ 1.000000e+00, %7656 ]
  %7685 = phi float [ %7682, %7676 ], [ %7669, %7656 ]
  %7686 = fcmp fast une float %7673, 0.000000e+00
  br i1 %7686, label %7687, label %7694, !dx.controlflow.hints !158

; <label>:7687                                    ; preds = %7683
  %7688 = fmul fast float %7673, 0x3FF7154760000000
  %7689 = call float @dx.op.unary.f32(i32 21, float %7688)  ; Exp(value)
  %7690 = fsub fast float 1.000000e+00, %7689
  %7691 = fmul fast float %7670, %7690
  %7692 = fsub fast float -0.000000e+00, %7691
  %7693 = fdiv fast float %7692, %7673
  br label %7694

; <label>:7694                                    ; preds = %7687, %7683
  %7695 = phi float [ %7689, %7687 ], [ 1.000000e+00, %7683 ]
  %7696 = phi float [ %7693, %7687 ], [ %7670, %7683 ]
  %7697 = fcmp fast une float %7674, 0.000000e+00
  br i1 %7697, label %7698, label %7705, !dx.controlflow.hints !158

; <label>:7698                                    ; preds = %7694
  %7699 = fmul fast float %7674, 0x3FF7154760000000
  %7700 = call float @dx.op.unary.f32(i32 21, float %7699)  ; Exp(value)
  %7701 = fsub fast float 1.000000e+00, %7700
  %7702 = fmul fast float %7671, %7701
  %7703 = fsub fast float -0.000000e+00, %7702
  %7704 = fdiv fast float %7703, %7674
  br label %7705

; <label>:7705                                    ; preds = %7698, %7694
  %7706 = phi float [ %7700, %7698 ], [ 1.000000e+00, %7694 ]
  %7707 = phi float [ %7704, %7698 ], [ %7671, %7694 ]
  %7708 = fcmp fast ogt float %7604, %7606
  br i1 %7708, label %7709, label %7729

; <label>:7709                                    ; preds = %7705
  %7710 = fsub fast float 1.000000e+00, %7606
  %7711 = fmul fast float %7622, %7710
  %7712 = fmul fast float %7623, %7710
  %7713 = fmul fast float %7624, %7710
  %7714 = fmul fast float %7625, %7710
  %7715 = fcmp fast une float %7714, 0.000000e+00
  br i1 %7715, label %7716, label %7767, !dx.controlflow.hints !159

; <label>:7716                                    ; preds = %7709
  %7717 = fmul fast float %7714, 0x3FF7154760000000
  %7718 = call float @dx.op.unary.f32(i32 21, float %7717)  ; Exp(value)
  %7719 = fsub fast float 1.000000e+00, %7718
  %7720 = fmul fast float %7711, %7719
  %7721 = fsub fast float -0.000000e+00, %7720
  %7722 = fmul fast float %7712, %7719
  %7723 = fsub fast float -0.000000e+00, %7722
  %7724 = fmul fast float %7713, %7719
  %7725 = fsub fast float -0.000000e+00, %7724
  %7726 = fdiv fast float %7721, %7714
  %7727 = fdiv fast float %7723, %7714
  %7728 = fdiv fast float %7725, %7714
  br label %7767

; <label>:7729                                    ; preds = %7705
  %7730 = fsub fast float 1.000000e+00, %7604
  %7731 = fmul fast float %7635, %7730
  %7732 = fmul fast float %7646, %7730
  %7733 = fmul fast float %7657, %7730
  %7734 = fmul fast float %7636, %7730
  %7735 = fmul fast float %7647, %7730
  %7736 = fmul fast float %7658, %7730
  %7737 = fcmp fast une float %7734, 0.000000e+00
  br i1 %7737, label %7738, label %7745, !dx.controlflow.hints !158

; <label>:7738                                    ; preds = %7729
  %7739 = fmul fast float %7734, 0x3FF7154760000000
  %7740 = call float @dx.op.unary.f32(i32 21, float %7739)  ; Exp(value)
  %7741 = fsub fast float 1.000000e+00, %7740
  %7742 = fmul fast float %7731, %7741
  %7743 = fsub fast float -0.000000e+00, %7742
  %7744 = fdiv fast float %7743, %7734
  br label %7745

; <label>:7745                                    ; preds = %7738, %7729
  %7746 = phi float [ %7744, %7738 ], [ %7731, %7729 ]
  %7747 = phi float [ %7740, %7738 ], [ 1.000000e+00, %7729 ]
  %7748 = fcmp fast une float %7735, 0.000000e+00
  br i1 %7748, label %7749, label %7756, !dx.controlflow.hints !158

; <label>:7749                                    ; preds = %7745
  %7750 = fmul fast float %7735, 0x3FF7154760000000
  %7751 = call float @dx.op.unary.f32(i32 21, float %7750)  ; Exp(value)
  %7752 = fsub fast float 1.000000e+00, %7751
  %7753 = fmul fast float %7732, %7752
  %7754 = fsub fast float -0.000000e+00, %7753
  %7755 = fdiv fast float %7754, %7735
  br label %7756

; <label>:7756                                    ; preds = %7749, %7745
  %7757 = phi float [ %7755, %7749 ], [ %7732, %7745 ]
  %7758 = phi float [ %7751, %7749 ], [ 1.000000e+00, %7745 ]
  %7759 = fcmp fast une float %7736, 0.000000e+00
  br i1 %7759, label %7760, label %7767, !dx.controlflow.hints !158

; <label>:7760                                    ; preds = %7756
  %7761 = fmul fast float %7736, 0x3FF7154760000000
  %7762 = call float @dx.op.unary.f32(i32 21, float %7761)  ; Exp(value)
  %7763 = fsub fast float 1.000000e+00, %7762
  %7764 = fmul fast float %7733, %7763
  %7765 = fsub fast float -0.000000e+00, %7764
  %7766 = fdiv fast float %7765, %7736
  br label %7767

; <label>:7767                                    ; preds = %7760, %7756, %7716, %7709
  %7768 = phi float [ %7766, %7760 ], [ %7728, %7716 ], [ %7713, %7709 ], [ %7733, %7756 ]
  %7769 = phi float [ %7757, %7760 ], [ %7727, %7716 ], [ %7712, %7709 ], [ %7757, %7756 ]
  %7770 = phi float [ %7746, %7760 ], [ %7726, %7716 ], [ %7711, %7709 ], [ %7746, %7756 ]
  %7771 = phi float [ %7762, %7760 ], [ %7718, %7716 ], [ 1.000000e+00, %7709 ], [ 1.000000e+00, %7756 ]
  %7772 = phi float [ %7758, %7760 ], [ %7718, %7716 ], [ 1.000000e+00, %7709 ], [ %7758, %7756 ]
  %7773 = phi float [ %7747, %7760 ], [ %7718, %7716 ], [ 1.000000e+00, %7709 ], [ %7747, %7756 ]
  %7774 = fmul fast float %7773, %7685
  %7775 = fmul fast float %7772, %7696
  %7776 = fmul fast float %7771, %7707
  %7777 = fadd fast float %7774, %7770
  %7778 = fadd fast float %7775, %7769
  %7779 = fadd fast float %7776, %7768
  %7780 = fmul fast float %7773, %7684
  %7781 = fmul fast float %7772, %7695
  %7782 = fmul fast float %7771, %7706
  br label %7783

; <label>:7783                                    ; preds = %7767, %7578
  %7784 = phi float [ %7782, %7767 ], [ %7584, %7578 ]
  %7785 = phi float [ %7781, %7767 ], [ %7583, %7578 ]
  %7786 = phi float [ %7780, %7767 ], [ %7582, %7578 ]
  %7787 = phi float [ %7779, %7767 ], [ %7581, %7578 ]
  %7788 = phi float [ %7778, %7767 ], [ %7580, %7578 ]
  %7789 = phi float [ %7777, %7767 ], [ %7579, %7578 ]
  %7790 = fmul fast float %7789, %6735
  %7791 = fmul fast float %7788, %6735
  %7792 = fmul fast float %7787, %6735
  %7793 = fmul fast float %7786, %7026
  %7794 = call float @dx.op.dot3.f32(i32 55, float %7786, float %7785, float %7784, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7795 = call float @dx.op.dot3.f32(i32 55, float %7790, float %7791, float %7792, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7796 = select i1 %216, float %7794, float %7786
  %7797 = select i1 %216, float %7794, float %7785
  %7798 = select i1 %216, float 1.000000e+00, float %7784
  %7799 = select i1 %216, float %7795, float %7790
  %7800 = select i1 %216, float 0.000000e+00, float %7791
  %7801 = select i1 %216, float 0.000000e+00, float %7792
  %7802 = fmul fast float %7796, %7020
  %7803 = fmul fast float %7797, %7021
  %7804 = fmul fast float %7798, %7022
  %7805 = fadd fast float %7802, %7799
  %7806 = fadd fast float %7803, %7800
  %7807 = fadd fast float %7801, %7804
  %7808 = fmul fast float %7796, %7023
  %7809 = fmul fast float %7797, %7024
  %7810 = fmul fast float %7798, %7025
  %7811 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %7812 = extractvalue %dx.types.CBufRet.i32 %7811, 0
  %7813 = icmp eq i32 %7812, 0
  br i1 %7813, label %8181, label %7814, !dx.controlflow.hints !160

; <label>:7814                                    ; preds = %7783
  %7815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %7816 = extractvalue %dx.types.CBufRet.f32 %7815, 2
  %7817 = extractvalue %dx.types.CBufRet.f32 %7815, 3
  %7818 = fmul fast float %7816, %92
  %7819 = fmul fast float %7817, %93
  %7820 = fmul fast float %7818, 2.000000e+00
  %7821 = fmul fast float %7819, 2.000000e+00
  %7822 = fsub fast float 1.000000e+00, %7820
  %7823 = fsub fast float 1.000000e+00, %7821
  %7824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7825 = extractvalue %dx.types.CBufRet.f32 %7824, 0
  %7826 = extractvalue %dx.types.CBufRet.f32 %7824, 1
  %7827 = extractvalue %dx.types.CBufRet.f32 %7824, 2
  %7828 = fmul fast float %7822, %7825
  %7829 = fmul fast float %7822, %7826
  %7830 = fmul fast float %7822, %7827
  %7831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7832 = extractvalue %dx.types.CBufRet.f32 %7831, 0
  %7833 = extractvalue %dx.types.CBufRet.f32 %7831, 1
  %7834 = extractvalue %dx.types.CBufRet.f32 %7831, 2
  %7835 = fmul fast float %7823, %7832
  %7836 = fmul fast float %7823, %7833
  %7837 = fmul fast float %7823, %7834
  %7838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7839 = extractvalue %dx.types.CBufRet.f32 %7838, 0
  %7840 = extractvalue %dx.types.CBufRet.f32 %7838, 1
  %7841 = extractvalue %dx.types.CBufRet.f32 %7838, 2
  %7842 = fadd fast float %7835, %7839
  %7843 = fadd fast float %7842, %7828
  %7844 = fadd fast float %7836, %7840
  %7845 = fadd fast float %7844, %7829
  %7846 = fadd fast float %7837, %7841
  %7847 = fadd fast float %7846, %7830
  %7848 = fmul fast float %7843, %7019
  %7849 = fmul fast float %7845, %7019
  %7850 = fmul fast float %7847, %7019
  %7851 = fmul fast float %7848, %7848
  %7852 = fmul fast float %7849, %7849
  %7853 = fadd fast float %7851, %7852
  %7854 = fmul fast float %7850, %7850
  %7855 = fadd fast float %7853, %7854
  %7856 = call float @dx.op.unary.f32(i32 24, float %7855)  ; Sqrt(value)
  %7857 = extractvalue %dx.types.CBufRet.f32 %6746, 0
  %7858 = fsub fast float %7856, %7857
  %7859 = extractvalue %dx.types.CBufRet.f32 %6746, 2
  %7860 = fmul fast float %7858, %7859
  %7861 = call float @dx.op.unary.f32(i32 7, float %7860)  ; Saturate(value)
  %7862 = fadd fast float %7861, -5.000000e-01
  %7863 = fmul fast float %7862, 2.000000e+00
  %7864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %7865 = extractvalue %dx.types.CBufRet.f32 %7864, 2
  %7866 = call float @dx.op.binary.f32(i32 36, float %7865, float %7863)  ; FMin(a,b)
  %7867 = fsub fast float -0.000000e+00, %7865
  %7868 = fcmp fast ogt float %7866, %7867
  br i1 %7868, label %7869, label %8181, !dx.controlflow.hints !161

; <label>:7869                                    ; preds = %7814
  %7870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %7871 = extractvalue %dx.types.CBufRet.f32 %7870, 3
  %7872 = fcmp fast ogt float %7871, 0.000000e+00
  br i1 %7872, label %7873, label %7948, !dx.controlflow.hints !162

; <label>:7873                                    ; preds = %7869
  %7874 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %24, i32 0)  ; GetDimensions(handle,mipLevel)
  %7875 = extractvalue %dx.types.Dimensions %7874, 0
  %7876 = sitofp i32 %7875 to float
  %7877 = extractvalue %dx.types.Dimensions %7874, 1
  %7878 = sitofp i32 %7877 to float
  %7879 = fmul fast float %7818, %7876
  %7880 = fmul fast float %7819, %7878
  %7881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7882 = extractvalue %dx.types.CBufRet.f32 %7881, 1
  %7883 = fsub fast float -0.000000e+00, %7882
  %7884 = fptoui float %7883 to i32
  %7885 = fptoui float %7879 to i32
  %7886 = fptoui float %7880 to i32
  %7887 = and i32 %7884, 31
  %7888 = lshr i32 %7885, %7887
  %7889 = lshr i32 %7886, %7887
  %7890 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %24, i32 %7884, i32 %7888, i32 %7889, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7891 = extractvalue %dx.types.ResRet.f32 %7890, 0
  %7892 = fcmp fast olt float %7891, -1.000000e+00
  %7893 = fcmp fast ogt float %7891, -1.000000e+00
  %7894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7895 = extractvalue %dx.types.CBufRet.f32 %7894, 1
  %7896 = select i1 %7893, float %7895, float 1.000000e+00
  %7897 = fadd fast float %7891, 1.000000e+00
  %7898 = fmul fast float %7896, %7897
  %7899 = call float @dx.op.unary.f32(i32 6, float %7898)  ; FAbs(value)
  %7900 = extractvalue %dx.types.CBufRet.f32 %7894, 3
  %7901 = fcmp fast oge float %7899, %7900
  %7902 = select i1 %7901, float 0x4197782600000000, float %7899
  %7903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %7904 = extractvalue %dx.types.CBufRet.f32 %7903, 0
  %7905 = extractvalue %dx.types.CBufRet.f32 %7903, 1
  %7906 = extractvalue %dx.types.CBufRet.f32 %7903, 2
  %7907 = select i1 %7892, float %7904, float %7825
  %7908 = select i1 %7892, float %7905, float %7826
  %7909 = select i1 %7892, float %7906, float %7827
  %7910 = fmul fast float %7907, %7822
  %7911 = fmul fast float %7908, %7822
  %7912 = fmul fast float %7909, %7822
  %7913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %7914 = extractvalue %dx.types.CBufRet.f32 %7913, 0
  %7915 = extractvalue %dx.types.CBufRet.f32 %7913, 1
  %7916 = extractvalue %dx.types.CBufRet.f32 %7913, 2
  %7917 = select i1 %7892, float %7914, float %7832
  %7918 = select i1 %7892, float %7915, float %7833
  %7919 = select i1 %7892, float %7916, float %7834
  %7920 = fmul fast float %7917, %7823
  %7921 = fmul fast float %7918, %7823
  %7922 = fmul fast float %7919, %7823
  %7923 = fadd fast float %7920, %7910
  %7924 = fadd fast float %7921, %7911
  %7925 = fadd fast float %7922, %7912
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 0
  %7928 = extractvalue %dx.types.CBufRet.f32 %7926, 1
  %7929 = extractvalue %dx.types.CBufRet.f32 %7926, 2
  %7930 = select i1 %7892, float %7927, float %7839
  %7931 = select i1 %7892, float %7928, float %7840
  %7932 = select i1 %7892, float %7929, float %7841
  %7933 = fadd fast float %7923, %7930
  %7934 = fadd fast float %7924, %7931
  %7935 = fadd fast float %7925, %7932
  %7936 = fmul fast float %7933, %7902
  %7937 = fmul fast float %7934, %7902
  %7938 = fmul fast float %7935, %7902
  %7939 = fmul fast float %7936, %7936
  %7940 = fmul fast float %7937, %7937
  %7941 = fadd fast float %7939, %7940
  %7942 = fmul fast float %7938, %7938
  %7943 = fadd fast float %7941, %7942
  %7944 = call float @dx.op.unary.f32(i32 24, float %7943)  ; Sqrt(value)
  %7945 = fsub fast float %7944, %7857
  %7946 = fmul fast float %7945, %7859
  %7947 = call float @dx.op.unary.f32(i32 7, float %7946)  ; Saturate(value)
  br label %7948

; <label>:7948                                    ; preds = %7873, %7869
  %7949 = phi float [ %7947, %7873 ], [ 1.000000e+00, %7869 ]
  %7950 = fmul fast float %7866, 5.000000e-01
  %7951 = fadd fast float %7950, 5.000000e-01
  %7952 = call float @dx.op.unary.f32(i32 22, float %7951)  ; Frc(value)
  %7953 = call float @dx.op.unary.f32(i32 27, float %7952)  ; Round_ni(value)
  %7954 = call float @dx.op.unary.f32(i32 22, float %7952)  ; Frc(value)
  %7955 = fmul fast float %7954, 2.000000e+00
  %7956 = fadd fast float %7955, -1.000000e+00
  %7957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %7818, float %7819, float %7953, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7958 = extractvalue %dx.types.ResRet.f32 %7957, 0
  %7959 = extractvalue %dx.types.ResRet.f32 %7957, 1
  %7960 = extractvalue %dx.types.ResRet.f32 %7957, 2
  %7961 = extractvalue %dx.types.ResRet.f32 %7957, 3
  %7962 = fadd fast float %7958, -5.000000e-01
  %7963 = fadd fast float %7960, -5.000000e-01
  %7964 = fmul fast float %7962, 0xBFD5555560000000
  %7965 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7963, float %7964)  ; FMad(a,b,c)
  %7966 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7959, float 0.000000e+00)  ; FMad(a,b,c)
  %7967 = fadd fast float %7966, %7961
  %7968 = fmul fast float %7962, -7.500000e-01
  %7969 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7963, float %7968)  ; FMad(a,b,c)
  %7970 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7959, float 0.000000e+00)  ; FMad(a,b,c)
  %7971 = fadd fast float %7970, %7961
  %7972 = call float @dx.op.binary.f32(i32 35, float %7965, float -1.000000e+00)  ; FMax(a,b)
  %7973 = call float @dx.op.binary.f32(i32 35, float %7967, float -1.000000e+00)  ; FMax(a,b)
  %7974 = call float @dx.op.binary.f32(i32 35, float %7969, float -1.000000e+00)  ; FMax(a,b)
  %7975 = call float @dx.op.binary.f32(i32 35, float %7971, float -1.000000e+00)  ; FMax(a,b)
  %7976 = call float @dx.op.binary.f32(i32 36, float %7972, float 1.000000e+00)  ; FMin(a,b)
  %7977 = call float @dx.op.binary.f32(i32 36, float %7973, float 1.000000e+00)  ; FMin(a,b)
  %7978 = call float @dx.op.binary.f32(i32 36, float %7974, float 1.000000e+00)  ; FMin(a,b)
  %7979 = call float @dx.op.binary.f32(i32 36, float %7975, float 1.000000e+00)  ; FMin(a,b)
  %7980 = fcmp fast olt float %7976, 0x3FEFFF8020000000
  br i1 %7980, label %7981, label %8096, !dx.controlflow.hints !163

; <label>:7981                                    ; preds = %7948
  %7982 = extractvalue %dx.types.CBufRet.f32 %7864, 3
  %7983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %7984 = extractvalue %dx.types.CBufRet.f32 %7983, 0
  %7985 = extractvalue %dx.types.CBufRet.f32 %7983, 1
  %7986 = extractvalue %dx.types.CBufRet.f32 %7983, 2
  %7987 = extractvalue %dx.types.CBufRet.f32 %7983, 3
  %7988 = fsub fast float %7984, %7976
  %7989 = fsub fast float %7985, %7977
  %7990 = fsub fast float %7986, %7978
  %7991 = fsub fast float %7987, %7979
  %7992 = fmul fast float %7988, %7982
  %7993 = fmul fast float %7989, %7982
  %7994 = fmul fast float %7990, %7982
  %7995 = fmul fast float %7991, %7982
  %7996 = fadd fast float %7992, %7976
  %7997 = fadd fast float %7993, %7977
  %7998 = fsub fast float -0.000000e+00, %7997
  %7999 = fadd fast float %7994, %7978
  %8000 = fadd fast float %7995, %7979
  %8001 = fmul fast float %7996, %7996
  %8002 = fsub fast float %7997, %8001
  %8003 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %8002)  ; FMax(a,b)
  %8004 = fdiv fast float 1.000000e+00, %8003
  %8005 = fmul fast float %7997, %7996
  %8006 = fsub fast float %7999, %8005
  %8007 = fsub fast float %7956, %7996
  %8008 = fmul fast float %7956, %7956
  %8009 = fsub fast float %8008, %7997
  %8010 = fmul fast float %8007, %8004
  %8011 = fmul fast float %8010, %8006
  %8012 = fsub fast float %8009, %8011
  %8013 = fmul fast float %7997, %7997
  %8014 = fsub fast float %8000, %8013
  %8015 = fmul fast float %8006, %8006
  %8016 = fmul fast float %8015, %8004
  %8017 = fsub fast float %8014, %8016
  %8018 = fdiv fast float %8012, %8017
  %8019 = fmul fast float %8006, %8018
  %8020 = fsub fast float %8007, %8019
  %8021 = fmul fast float %8020, %8004
  %8022 = fmul fast float %8021, %7996
  %8023 = fsub fast float 1.000000e+00, %8022
  %8024 = fmul fast float %7997, %8018
  %8025 = fsub fast float %8023, %8024
  %8026 = fmul fast float %8021, %8021
  %8027 = fmul fast float %8018, 4.000000e+00
  %8028 = fmul fast float %8027, %8025
  %8029 = fsub fast float %8026, %8028
  %8030 = call float @dx.op.unary.f32(i32 24, float %8029)  ; Sqrt(value)
  %8031 = fcmp fast oge float %8021, 0.000000e+00
  %8032 = fsub fast float -0.000000e+00, %8030
  %8033 = select i1 %8031, float %8032, float %8030
  %8034 = fsub fast float %8033, %8021
  %8035 = fdiv fast float %8034, %8018
  %8036 = fdiv fast float %8025, %8034
  %8037 = fmul fast float %8035, 5.000000e-01
  %8038 = fmul fast float %8036, 2.000000e+00
  %8039 = select i1 %8031, float %8037, float %8038
  %8040 = select i1 %8031, float %8038, float %8037
  %8041 = call float @dx.op.binary.f32(i32 35, float %8039, float %8040)  ; FMax(a,b)
  %8042 = call float @dx.op.binary.f32(i32 36, float %8039, float %8040)  ; FMin(a,b)
  %8043 = fcmp fast ogt float %7956, %8042
  br i1 %8043, label %8044, label %8054

; <label>:8044                                    ; preds = %7981
  %8045 = fsub fast float %7956, %8042
  %8046 = fsub fast float %8041, %8042
  %8047 = fmul fast float %8045, %8046
  %8048 = fmul fast float %8041, %7956
  %8049 = fadd fast float %8041, %7956
  %8050 = fmul fast float %8049, %7996
  %8051 = fadd fast float %8048, %7997
  %8052 = fsub fast float %8051, %8050
  %8053 = fdiv fast float %8052, %8047
  br label %8054

; <label>:8054                                    ; preds = %8044, %7981
  %8055 = phi float [ %8053, %8044 ], [ 0.000000e+00, %7981 ]
  %8056 = fcmp fast ogt float %7956, %8041
  %8057 = fsub fast float %7956, %8041
  br i1 %8056, label %8058, label %8068

; <label>:8058                                    ; preds = %8054
  %8059 = fsub fast float %8041, %8042
  %8060 = fmul fast float %8059, %8057
  %8061 = fmul fast float %8042, %7956
  %8062 = fadd fast float %8042, %7956
  %8063 = fmul fast float %8062, %7996
  %8064 = fsub fast float %7998, %8061
  %8065 = fadd fast float %8064, %8063
  %8066 = fdiv fast float %8065, %8060
  %8067 = fadd fast float %8066, %8055
  br label %8068

; <label>:8068                                    ; preds = %8058, %8054
  %8069 = phi float [ %8067, %8058 ], [ %8055, %8054 ]
  %8070 = fsub fast float %7956, %8042
  %8071 = fmul fast float %8070, %8057
  %8072 = fmul fast float %8042, %8041
  %8073 = fadd fast float %8042, %8041
  %8074 = fmul fast float %8073, %7996
  %8075 = fadd fast float %8072, %7997
  %8076 = fsub fast float %8075, %8074
  %8077 = fdiv fast float %8076, %8071
  %8078 = call float @dx.op.unary.f32(i32 7, float %8069)  ; Saturate(value)
  %8079 = fcmp fast oeq float %6747, 0.000000e+00
  %8080 = extractvalue %dx.types.CBufRet.f32 %7864, 0
  %8081 = fcmp fast oeq float %8080, 0.000000e+00
  %8082 = or i1 %8079, %8081
  %8083 = fmul fast float %8080, 2.000000e+00
  %8084 = fadd fast float %7865, %7866
  %8085 = fdiv fast float %8084, %8083
  %8086 = call float @dx.op.unary.f32(i32 7, float %8085)  ; Saturate(value)
  %8087 = fmul fast float %8086, 2.000000e+00
  %8088 = fsub fast float 3.000000e+00, %8087
  %8089 = fmul fast float %8086, %8086
  %8090 = fmul fast float %8089, %8088
  %8091 = select i1 %8082, float 1.000000e+00, float %8090
  %8092 = fmul fast float %8077, %6747
  %8093 = fadd fast float %8078, %8092
  %8094 = call float @dx.op.unary.f32(i32 7, float %8093)  ; Saturate(value)
  %8095 = fmul fast float %8091, %8094
  br label %8096

; <label>:8096                                    ; preds = %8068, %7948
  %8097 = phi float [ %8095, %8068 ], [ 0.000000e+00, %7948 ]
  %8098 = fsub fast float 1.000000e+00, %8097
  %8099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %7818, float %7819, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8100 = extractvalue %dx.types.ResRet.f32 %8099, 0
  %8101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %8102 = extractvalue %dx.types.CBufRet.i32 %8101, 2
  %8103 = icmp eq i32 %8102, 0
  br i1 %8103, label %8109, label %8104

; <label>:8104                                    ; preds = %8096
  %8105 = call float @dx.op.unary.f32(i32 7, float %8097)  ; Saturate(value)
  %8106 = fadd fast float %8100, -1.000000e+00
  %8107 = fmul fast float %8105, %8106
  %8108 = fadd fast float %8107, 1.000000e+00
  br label %8109

; <label>:8109                                    ; preds = %8104, %8096
  %8110 = phi float [ %8108, %8104 ], [ %8098, %8096 ]
  br i1 %7872, label %8111, label %8129

; <label>:8111                                    ; preds = %8109
  %8112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8113 = extractvalue %dx.types.CBufRet.f32 %8112, 1
  %8114 = fsub fast float %7949, %8113
  %8115 = call float @dx.op.unary.f32(i32 7, float %8114)  ; Saturate(value)
  %8116 = fsub fast float %7949, %7871
  %8117 = call float @dx.op.unary.f32(i32 7, float %8116)  ; Saturate(value)
  %8118 = fsub fast float %8115, %8117
  %8119 = fsub fast float %7951, %8117
  %8120 = fdiv fast float %8119, %8118
  %8121 = call float @dx.op.unary.f32(i32 7, float %8120)  ; Saturate(value)
  %8122 = fmul fast float %8121, 2.000000e+00
  %8123 = fsub fast float 3.000000e+00, %8122
  %8124 = fsub fast float %8100, %8110
  %8125 = fmul fast float %8121, %8121
  %8126 = fmul fast float %8125, %8124
  %8127 = fmul fast float %8126, %8123
  %8128 = fadd fast float %8127, %8110
  br label %8129

; <label>:8129                                    ; preds = %8111, %8109
  %8130 = phi float [ %8128, %8111 ], [ %8110, %8109 ]
  %8131 = call float @dx.op.binary.f32(i32 35, float %8100, float %8130)  ; FMax(a,b)
  %8132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %8133 = extractvalue %dx.types.CBufRet.i32 %8132, 2
  %8134 = and i32 %8133, 1
  %8135 = icmp eq i32 %8134, 0
  %8136 = fcmp fast une float %8131, 1.000000e+00
  %8137 = and i1 %8136, %8135
  br i1 %8137, label %8138, label %8157

; <label>:8138                                    ; preds = %8129
  %8139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %7818, float %7819, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8140 = extractvalue %dx.types.ResRet.f32 %8139, 0
  %8141 = extractvalue %dx.types.ResRet.f32 %8139, 1
  %8142 = extractvalue %dx.types.ResRet.f32 %8139, 2
  %8143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8144 = extractvalue %dx.types.CBufRet.f32 %8143, 1
  %8145 = fmul fast float %8144, %8140
  %8146 = fmul fast float %8144, %8141
  %8147 = fmul fast float %8144, %8142
  %8148 = fcmp fast ogt float %8100, 0x3FEFFF2E40000000
  %8149 = fsub fast float 1.000000e+00, %8131
  %8150 = fsub fast float 1.000000e+00, %8100
  %8151 = fdiv fast float %8149, %8150
  %8152 = call float @dx.op.unary.f32(i32 7, float %8151)  ; Saturate(value)
  %8153 = select i1 %8148, float 0.000000e+00, float %8152
  %8154 = fmul fast float %8145, %8153
  %8155 = fmul fast float %8146, %8153
  %8156 = fmul fast float %8147, %8153
  br label %8157

; <label>:8157                                    ; preds = %8138, %8129
  %8158 = phi float [ 0.000000e+00, %8129 ], [ %8154, %8138 ]
  %8159 = phi float [ 0.000000e+00, %8129 ], [ %8155, %8138 ]
  %8160 = phi float [ 0.000000e+00, %8129 ], [ %8156, %8138 ]
  %8161 = fmul fast float %8158, %6735
  %8162 = fmul fast float %8159, %6735
  %8163 = fmul fast float %8160, %6735
  %8164 = fmul fast float %8131, %7793
  %8165 = call float @dx.op.dot3.f32(i32 55, float %8131, float %8131, float %8131, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8166 = call float @dx.op.dot3.f32(i32 55, float %8161, float %8162, float %8163, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8167 = select i1 %216, float %8165, float %8131
  %8168 = select i1 %216, float 1.000000e+00, float %8131
  %8169 = select i1 %216, float %8166, float %8161
  %8170 = select i1 %216, float 0.000000e+00, float %8162
  %8171 = select i1 %216, float 0.000000e+00, float %8163
  %8172 = fmul fast float %8167, %7805
  %8173 = fmul fast float %8167, %7806
  %8174 = fmul fast float %8168, %7807
  %8175 = fadd fast float %8172, %8169
  %8176 = fadd fast float %8173, %8170
  %8177 = fadd fast float %8171, %8174
  %8178 = fmul fast float %8167, %7808
  %8179 = fmul fast float %8167, %7809
  %8180 = fmul fast float %8168, %7810
  br label %8181

; <label>:8181                                    ; preds = %8157, %7814, %7783, %7015
  %8182 = phi float [ %7020, %7015 ], [ %7805, %7783 ], [ %8175, %8157 ], [ %7805, %7814 ]
  %8183 = phi float [ %7021, %7015 ], [ %7806, %7783 ], [ %8176, %8157 ], [ %7806, %7814 ]
  %8184 = phi float [ %7022, %7015 ], [ %7807, %7783 ], [ %8177, %8157 ], [ %7807, %7814 ]
  %8185 = phi float [ %7023, %7015 ], [ %7808, %7783 ], [ %8178, %8157 ], [ %7808, %7814 ]
  %8186 = phi float [ %7024, %7015 ], [ %7809, %7783 ], [ %8179, %8157 ], [ %7809, %7814 ]
  %8187 = phi float [ %7025, %7015 ], [ %7810, %7783 ], [ %8180, %8157 ], [ %7810, %7814 ]
  %8188 = phi float [ %7026, %7015 ], [ %7793, %7783 ], [ %8164, %8157 ], [ %7793, %7814 ]
  %8189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %8190 = extractvalue %dx.types.CBufRet.f32 %8189, 2
  %8191 = extractvalue %dx.types.CBufRet.f32 %8189, 3
  %8192 = fmul fast float %8190, %92
  %8193 = fmul fast float %8191, %93
  %8194 = call float @dx.op.unary.f32(i32 7, float %8192)  ; Saturate(value)
  %8195 = call float @dx.op.unary.f32(i32 7, float %8193)  ; Saturate(value)
  %8196 = select i1 %6757, i32 2, i32 0
  %8197 = or i32 %8196, 1
  %8198 = uitofp i32 %8197 to float
  %8199 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8194, float %8195, float %8198, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8200 = extractvalue %dx.types.ResRet.f32 %8199, 0
  %8201 = extractvalue %dx.types.ResRet.f32 %8199, 1
  %8202 = extractvalue %dx.types.ResRet.f32 %8199, 2
  %8203 = extractvalue %dx.types.ResRet.f32 %8199, 3
  %8204 = add nuw nsw i32 %8196, 2
  %8205 = uitofp i32 %8204 to float
  %8206 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8194, float %8195, float %8205, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8207 = extractvalue %dx.types.ResRet.f32 %8206, 0
  %8208 = extractvalue %dx.types.ResRet.f32 %8206, 1
  %8209 = extractvalue %dx.types.ResRet.f32 %8206, 2
  %8210 = extractvalue %dx.types.ResRet.f32 %8206, 3
  %8211 = call float @dx.op.binary.f32(i32 35, float %8201, float %8202)  ; FMax(a,b)
  %8212 = call float @dx.op.binary.f32(i32 35, float %8200, float %8211)  ; FMax(a,b)
  %8213 = call float @dx.op.binary.f32(i32 35, float %8212, float %8203)  ; FMax(a,b)
  %8214 = call float @dx.op.binary.f32(i32 36, float %8208, float %8209)  ; FMin(a,b)
  %8215 = call float @dx.op.binary.f32(i32 36, float %8207, float %8214)  ; FMin(a,b)
  %8216 = call float @dx.op.binary.f32(i32 36, float %8215, float %8210)  ; FMin(a,b)
  %8217 = fmul fast float %8213, 2.550000e+02
  %8218 = fadd fast float %8217, 0x3F70101020000000
  %8219 = fptoui float %8218 to i32
  %8220 = fmul fast float %8216, 2.550000e+02
  %8221 = fadd fast float %8220, 0x3F70101020000000
  %8222 = fptoui float %8221 to i32
  %8223 = icmp ult i32 %8219, %8222
  br i1 %8223, label %8224, label %8393

; <label>:8224                                    ; preds = %8181
  %8225 = fcmp fast ogt float %79, 9.843750e-01
  %8226 = fadd fast float %7019, -4.000000e+00
  %8227 = select i1 %8225, float -4.000000e+00, float %8226
  %8228 = call float @dx.op.binary.f32(i32 35, float %8227, float 0.000000e+00)  ; FMax(a,b)
  %8229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8230 = extractvalue %dx.types.CBufRet.f32 %8229, 0
  %8231 = fadd fast float %8230, %8228
  %8232 = extractvalue %dx.types.CBufRet.f32 %8229, 2
  %8233 = fmul fast float %8231, %8232
  %8234 = call float @dx.op.unary.f32(i32 23, float %8233)  ; Log(value)
  %8235 = extractvalue %dx.types.CBufRet.f32 %8229, 3
  %8236 = fmul fast float %8235, %8234
  %8237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8238 = extractvalue %dx.types.CBufRet.f32 %8237, 2
  %8239 = fmul fast float %8236, %8238
  %8240 = call float @dx.op.unary.f32(i32 7, float %8239)  ; Saturate(value)
  %8241 = uitofp i32 %8219 to float
  %8242 = uitofp i32 %8222 to float
  %8243 = fadd fast float %8241, 5.000000e-01
  %8244 = fadd fast float %8242, 5.000000e-01
  %8245 = fmul fast float %8238, %8243
  %8246 = fmul fast float %8238, %8244
  %8247 = fadd fast float %8245, 0x3F0FFB4800000000
  %8248 = fadd fast float %8246, 0xBF0FFB4800000000
  %8249 = call float @dx.op.binary.f32(i32 35, float %8240, float %8247)  ; FMax(a,b)
  %8250 = call float @dx.op.binary.f32(i32 36, float %8249, float %8248)  ; FMin(a,b)
  %8251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8252 = extractvalue %dx.types.CBufRet.f32 %8251, 1
  %8253 = extractvalue %dx.types.CBufRet.f32 %8251, 2
  %8254 = extractvalue %dx.types.CBufRet.f32 %8251, 0
  %8255 = select i1 %6757, float %8254, float 0.000000e+00
  %8256 = fmul fast float %8252, %8250
  %8257 = fadd fast float %8255, %8256
  %8258 = fadd fast float %8255, %8253
  %8259 = fsub fast float %8252, %8253
  %8260 = fadd fast float %8259, %8255
  %8261 = call float @dx.op.binary.f32(i32 35, float %8257, float %8258)  ; FMax(a,b)
  %8262 = call float @dx.op.binary.f32(i32 36, float %8261, float %8260)  ; FMin(a,b)
  %8263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %8194, float %8195, float %8262, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8264 = extractvalue %dx.types.ResRet.f32 %8263, 0
  %8265 = extractvalue %dx.types.ResRet.f32 %8263, 1
  %8266 = extractvalue %dx.types.ResRet.f32 %8263, 2
  %8267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8268 = extractvalue %dx.types.CBufRet.i32 %8267, 0
  %8269 = extractvalue %dx.types.CBufRet.i32 %8267, 1
  %8270 = uitofp i32 %8268 to float
  %8271 = uitofp i32 %8269 to float
  %8272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8273 = extractvalue %dx.types.CBufRet.f32 %8272, 0
  %8274 = extractvalue %dx.types.CBufRet.f32 %8272, 1
  %8275 = fmul fast float %8270, %8194
  %8276 = fmul fast float %8271, %8195
  %8277 = fadd fast float %8275, -5.000000e-01
  %8278 = fadd fast float %8276, -5.000000e-01
  %8279 = call float @dx.op.unary.f32(i32 22, float %8277)  ; Frc(value)
  %8280 = call float @dx.op.unary.f32(i32 22, float %8278)  ; Frc(value)
  %8281 = fmul fast float %8279, %8279
  %8282 = fmul fast float %8281, %8279
  %8283 = fsub fast float 3.000000e+00, %8279
  %8284 = fmul fast float %8281, %8283
  %8285 = fmul fast float %8279, 3.000000e+00
  %8286 = fmul fast float %8282, 3.000000e+00
  %8287 = fmul fast float %8281, 6.000000e+00
  %8288 = fsub fast float %8286, %8287
  %8289 = fadd fast float %8288, 4.000000e+00
  %8290 = fmul fast float %8289, 0x3FC5555560000000
  %8291 = fmul fast float %8282, -3.000000e+00
  %8292 = fadd fast float %8281, %8279
  %8293 = fmul fast float %8292, 3.000000e+00
  %8294 = fadd fast float %8291, 1.000000e+00
  %8295 = fadd fast float %8294, %8293
  %8296 = fmul fast float %8282, 0x3FC5555560000000
  %8297 = fmul fast float %8280, %8280
  %8298 = fmul fast float %8297, %8280
  %8299 = fsub fast float 3.000000e+00, %8280
  %8300 = fmul fast float %8297, %8299
  %8301 = fmul fast float %8280, 3.000000e+00
  %8302 = fmul fast float %8298, 3.000000e+00
  %8303 = fmul fast float %8297, 6.000000e+00
  %8304 = fsub fast float %8302, %8303
  %8305 = fadd fast float %8304, 4.000000e+00
  %8306 = fmul fast float %8305, 0x3FC5555560000000
  %8307 = fmul fast float %8298, -3.000000e+00
  %8308 = fadd fast float %8297, %8280
  %8309 = fmul fast float %8308, 3.000000e+00
  %8310 = fadd fast float %8307, 1.000000e+00
  %8311 = fadd fast float %8310, %8309
  %8312 = fmul fast float %8298, 0x3FC5555560000000
  %8313 = fadd fast float %8279, 1.000000e+00
  %8314 = fsub fast float 1.000000e+00, %8285
  %8315 = fadd fast float %8314, %8284
  %8316 = fadd fast float %8315, %8289
  %8317 = fmul fast float %8316, 0x3FC5555560000000
  %8318 = fdiv fast float %8290, %8317
  %8319 = fsub fast float %8313, %8318
  %8320 = fsub fast float 1.000000e+00, %8279
  %8321 = fadd fast float %8295, %8282
  %8322 = fmul fast float %8321, 0x3FC5555560000000
  %8323 = fdiv fast float %8296, %8322
  %8324 = fadd fast float %8320, %8323
  %8325 = fadd fast float %8280, 1.000000e+00
  %8326 = fsub fast float 1.000000e+00, %8301
  %8327 = fadd fast float %8326, %8300
  %8328 = fadd fast float %8327, %8305
  %8329 = fmul fast float %8328, 0x3FC5555560000000
  %8330 = fdiv fast float %8306, %8329
  %8331 = fsub fast float %8325, %8330
  %8332 = fsub fast float 1.000000e+00, %8280
  %8333 = fadd fast float %8311, %8298
  %8334 = fmul fast float %8333, 0x3FC5555560000000
  %8335 = fdiv fast float %8312, %8334
  %8336 = fadd fast float %8335, %8332
  %8337 = fmul fast float %8319, %8273
  %8338 = fsub fast float %8194, %8337
  %8339 = fmul fast float %8324, %8273
  %8340 = fadd fast float %8339, %8194
  %8341 = fmul fast float %8336, %8274
  %8342 = fadd fast float %8341, %8195
  %8343 = fmul fast float %8331, %8274
  %8344 = fsub fast float %8195, %8343
  %8345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8338, float %8344, float %8262, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8346 = extractvalue %dx.types.ResRet.f32 %8345, 0
  %8347 = extractvalue %dx.types.ResRet.f32 %8345, 1
  %8348 = extractvalue %dx.types.ResRet.f32 %8345, 2
  %8349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8340, float %8344, float %8262, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8350 = extractvalue %dx.types.ResRet.f32 %8349, 0
  %8351 = extractvalue %dx.types.ResRet.f32 %8349, 1
  %8352 = extractvalue %dx.types.ResRet.f32 %8349, 2
  %8353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8338, float %8342, float %8262, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8354 = extractvalue %dx.types.ResRet.f32 %8353, 0
  %8355 = extractvalue %dx.types.ResRet.f32 %8353, 1
  %8356 = extractvalue %dx.types.ResRet.f32 %8353, 2
  %8357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8340, float %8342, float %8262, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8358 = extractvalue %dx.types.ResRet.f32 %8357, 0
  %8359 = extractvalue %dx.types.ResRet.f32 %8357, 1
  %8360 = extractvalue %dx.types.ResRet.f32 %8357, 2
  %8361 = fsub fast float %8354, %8346
  %8362 = fsub fast float %8355, %8347
  %8363 = fsub fast float %8356, %8348
  %8364 = fmul fast float %8361, %8334
  %8365 = fmul fast float %8362, %8334
  %8366 = fmul fast float %8363, %8334
  %8367 = fadd fast float %8364, %8346
  %8368 = fadd fast float %8365, %8347
  %8369 = fadd fast float %8366, %8348
  %8370 = fsub fast float %8358, %8350
  %8371 = fsub fast float %8359, %8351
  %8372 = fsub fast float %8360, %8352
  %8373 = fmul fast float %8370, %8334
  %8374 = fmul fast float %8371, %8334
  %8375 = fmul fast float %8372, %8334
  %8376 = fsub fast float %8350, %8367
  %8377 = fadd fast float %8376, %8373
  %8378 = fsub fast float %8351, %8368
  %8379 = fadd fast float %8378, %8374
  %8380 = fsub fast float %8352, %8369
  %8381 = fadd fast float %8380, %8375
  %8382 = fmul fast float %8377, %8322
  %8383 = fmul fast float %8379, %8322
  %8384 = fmul fast float %8381, %8322
  %8385 = fadd fast float %8382, %8367
  %8386 = fadd fast float %8383, %8368
  %8387 = fadd fast float %8384, %8369
  %8388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8389 = extractvalue %dx.types.CBufRet.f32 %8388, 1
  %8390 = fmul fast float %8385, %8389
  %8391 = fmul fast float %8386, %8389
  %8392 = fmul fast float %8387, %8389
  br label %8393

; <label>:8393                                    ; preds = %8224, %8181
  %8394 = phi float [ %8264, %8224 ], [ 1.000000e+00, %8181 ]
  %8395 = phi float [ %8265, %8224 ], [ 1.000000e+00, %8181 ]
  %8396 = phi float [ %8266, %8224 ], [ 1.000000e+00, %8181 ]
  %8397 = phi float [ %8390, %8224 ], [ 0.000000e+00, %8181 ]
  %8398 = phi float [ %8391, %8224 ], [ 0.000000e+00, %8181 ]
  %8399 = phi float [ %8392, %8224 ], [ 0.000000e+00, %8181 ]
  %8400 = fmul fast float %8397, %6735
  %8401 = fmul fast float %8398, %6735
  %8402 = fmul fast float %8399, %6735
  %8403 = fmul fast float %8394, %8188
  %8404 = call float @dx.op.dot3.f32(i32 55, float %8394, float %8395, float %8396, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8405 = call float @dx.op.dot3.f32(i32 55, float %8400, float %8401, float %8402, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8406 = select i1 %216, float %8404, float %8394
  %8407 = select i1 %216, float %8404, float %8395
  %8408 = select i1 %216, float 1.000000e+00, float %8396
  %8409 = select i1 %216, float %8405, float %8400
  %8410 = select i1 %216, float 0.000000e+00, float %8401
  %8411 = select i1 %216, float 0.000000e+00, float %8402
  %8412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8413 = extractvalue %dx.types.CBufRet.i32 %8412, 3
  %8414 = and i32 %8413, 3
  %8415 = icmp ne i32 %8414, 0
  %8416 = and i32 %8413, 4
  %8417 = icmp ne i32 %8416, 0
  %8418 = and i1 %8415, %8417
  %8419 = and i1 %216, %8418
  br i1 %8419, label %8420, label %8426

; <label>:8420                                    ; preds = %8393
  %8421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8422 = extractvalue %dx.types.CBufRet.f32 %8421, 1
  %8423 = fadd fast float %8403, -1.000000e+00
  %8424 = fmul fast float %8422, %8423
  %8425 = fadd fast float %8424, 1.000000e+00
  br label %8426

; <label>:8426                                    ; preds = %8420, %8393
  %8427 = phi float [ %8425, %8420 ], [ %8403, %8393 ]
  %8428 = fadd fast float %8185, %8182
  %8429 = fmul fast float %8406, %8428
  %8430 = fadd fast float %8429, %8409
  %8431 = fadd fast float %8186, %8183
  %8432 = fmul fast float %8407, %8431
  %8433 = fadd fast float %8432, %8410
  %8434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8435 = extractvalue %dx.types.CBufRet.f32 %8434, 0
  br i1 %216, label %8436, label %8459

; <label>:8436                                    ; preds = %8426
  %8437 = fadd fast float %8430, %8433
  %8438 = fmul fast float %8435, %8437
  %8439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %8440 = extractvalue %dx.types.CBufRet.f32 %8439, 3
  %8441 = extractvalue %dx.types.CBufRet.f32 %6739, 1
  %8442 = fsub fast float %6744, %6738
  %8443 = fadd fast float %8442, %6745
  %8444 = fsub fast float %8443, %8441
  %8445 = extractvalue %dx.types.CBufRet.f32 %6739, 2
  %8446 = fmul fast float %8444, %8445
  %8447 = call float @dx.op.unary.f32(i32 7, float %8446)  ; Saturate(value)
  %8448 = fsub fast float %8447, %8440
  %8449 = fmul fast float %8448, %8427
  %8450 = fadd fast float %8449, %8440
  %8451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %8452 = extractvalue %dx.types.CBufRet.f32 %8451, 0
  %8453 = fsub fast float %8450, %8452
  %8454 = fmul fast float %8453, 1.000000e+01
  %8455 = call float @dx.op.unary.f32(i32 7, float %8454)  ; Saturate(value)
  %8456 = fmul fast float %8455, %6734
  %8457 = fadd fast float %8456, %6735
  %8458 = fmul fast float %8457, %8450
  br label %8483

; <label>:8459                                    ; preds = %8426
  %8460 = fadd fast float %8187, %8184
  %8461 = fmul fast float %8408, %8460
  %8462 = fadd fast float %8461, %8411
  %8463 = fmul fast float %8435, %8430
  %8464 = fmul fast float %8435, %8433
  %8465 = fmul fast float %8435, %8462
  %8466 = call float @dx.op.binary.f32(i32 35, float %8464, float %8465)  ; FMax(a,b)
  %8467 = call float @dx.op.binary.f32(i32 35, float %8463, float %8466)  ; FMax(a,b)
  %8468 = call float @dx.op.binary.f32(i32 35, float %8467, float %6735)  ; FMax(a,b)
  %8469 = fcmp fast ugt float %8468, 0x3F10000000000000
  br i1 %8469, label %8471, label %8470

; <label>:8470                                    ; preds = %8459
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %8471

; <label>:8471                                    ; preds = %8470, %8459
  %8472 = add i32 %48, 356
  %8473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %8472, i32 undef)  ; BufferLoad(srv,index,wot)
  %8474 = extractvalue %dx.types.ResRet.i32 %8473, 0
  %8475 = and i32 %8474, 32
  %8476 = icmp eq i32 %8475, 0
  br i1 %8476, label %8483, label %8477

; <label>:8477                                    ; preds = %8471
  %8478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %8479 = extractvalue %dx.types.CBufRet.f32 %8478, 0
  %8480 = fmul fast float %8479, 0x3FE99999A0000000
  %8481 = fadd fast float %8479, %8463
  %8482 = fadd fast float %8480, %8465
  br label %8483

; <label>:8483                                    ; preds = %8477, %8471, %8436
  %8484 = phi float [ %8438, %8436 ], [ %8481, %8477 ], [ %8463, %8471 ]
  %8485 = phi float [ %8458, %8436 ], [ %8464, %8477 ], [ %8464, %8471 ]
  %8486 = phi float [ %8457, %8436 ], [ %8482, %8477 ], [ %8465, %8471 ]
  %8487 = phi float [ %8457, %8436 ], [ %6735, %8477 ], [ %6735, %8471 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8488 = call float @dx.op.binary.f32(i32 36, float %8484, float 3.225500e+04)  ; FMin(a,b)
  %8489 = call float @dx.op.binary.f32(i32 36, float %8485, float 3.225500e+04)  ; FMin(a,b)
  %8490 = call float @dx.op.binary.f32(i32 36, float %8486, float 3.225500e+04)  ; FMin(a,b)
  %8491 = call float @dx.op.binary.f32(i32 36, float %8487, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8488)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8489)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8490)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8491)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

